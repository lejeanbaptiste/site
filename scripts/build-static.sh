#!/usr/bin/env bash
#
# Build a static copy of the Grognard site.
#
#   1. download the pinned Grav core (see ../grav-version)
#   2. overlay this repo's user/ (pages, config, lejeanbaptiste theme)
#   3. serve it with PHP's built-in server
#   4. crawl it with wget into ./public as a self-contained static site
#
# Output (./public) is what GitHub Pages publishes. Requires: php, curl, unzip,
# rsync, wget. Run from anywhere: paths are resolved relative to the repo root.

set -euo pipefail

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$REPO_ROOT"

GRAV_VERSION="$(tr -d '[:space:]' < grav-version)"
BUILD_DIR="$REPO_ROOT/build"
GRAV_DIR="$BUILD_DIR/grav"
OUT_DIR="$REPO_ROOT/public"
HOST=127.0.0.1
PORT=8000
BASE="http://$HOST:$PORT"

echo ">> Grav $GRAV_VERSION -> $OUT_DIR"
rm -rf "$BUILD_DIR" "$OUT_DIR"
mkdir -p "$BUILD_DIR" "$OUT_DIR"

# 1. Fetch Grav core. The -admin zip ships its vendor/ dir, so no composer step.
ZIP="grav-admin-v${GRAV_VERSION}.zip"
URL="https://github.com/getgrav/grav/releases/download/${GRAV_VERSION}/${ZIP}"
echo ">> downloading $URL"
curl -fsSL -o "$BUILD_DIR/$ZIP" "$URL"
unzip -q "$BUILD_DIR/$ZIP" -d "$BUILD_DIR"
mv "$BUILD_DIR/grav-admin" "$GRAV_DIR"

# The -admin bundle 302-redirects / -> /admin until an admin account exists, so a
# headless crawl never reaches the site. We only publish the public pages -> drop
# the admin plugins entirely (frontend renders fine without them).
rm -rf "$GRAV_DIR"/user/plugins/admin \
       "$GRAV_DIR"/user/plugins/admin2 \
       "$GRAV_DIR"/user/plugins/login

# 2. Overlay our sources. pages/ and themes/ must *replace* the skeleton's demo
#    content (else stray pages like /typography leak into the crawl); config/,
#    plugins/, accounts/ from the skeleton are kept.
rm -rf "$GRAV_DIR/user/pages" "$GRAV_DIR/user/themes"
rsync -a --exclude='.DS_Store' user/ "$GRAV_DIR/user/"

# 3. Build-time config. Written into the throwaway build tree only - the
#    committed user/config/*.yaml are never modified.
mkdir -p "$GRAV_DIR/user/config"
cat > "$GRAV_DIR/user/config/system.yaml" <<'YAML'
home:
  alias: '/home'
pages:
  theme: lejeanbaptiste
  redirect_default_route: true
  redirect_trailing_slash: true
cache:
  enabled: false
twig:
  cache: false
  debug: false
  auto_reload: true
  undefined_functions: true
  undefined_filters: true
assets:
  css_pipeline: true
  js_pipeline: true
errors:
  display: false
  log: true
absolute_urls: false
languages:
  session_store_active: false
YAML

# 4. Boot Grav on the PHP built-in server.
echo ">> starting Grav at $BASE"
( cd "$GRAV_DIR" && exec php -S "$HOST:$PORT" system/router.php ) \
  > "$BUILD_DIR/php-server.log" 2>&1 &
PHP_PID=$!
cleanup() { kill "$PHP_PID" 2>/dev/null || true; }
trap cleanup EXIT

for i in $(seq 1 30); do
  if curl -fsS "$BASE/" -o /dev/null 2>/dev/null; then break; fi
  if ! kill -0 "$PHP_PID" 2>/dev/null; then
    echo "!! PHP server died:"; cat "$BUILD_DIR/php-server.log"; exit 1
  fi
  sleep 1
  if [ "$i" -eq 30 ]; then
    echo "!! Grav did not answer after 30s:"; cat "$BUILD_DIR/php-server.log"; exit 1
  fi
done

# 5. Crawl to a self-contained static tree.
#    --convert-links -> every href/src becomes relative, so the output works
#    unchanged at grognard.github.io/site/, at a bare domain, or behind a CNAME.
echo ">> crawling"
set +e
wget --mirror --page-requisites --convert-links --adjust-extension \
     --no-parent --no-host-directories -e robots=off \
     --directory-prefix="$OUT_DIR" \
     "$BASE/"
WGET_RC=$?
set -e
# 0 = ok, 8 = server issued some 4xx/5xx (e.g. a missing optional asset). Anything
# else (network, fatal) fails the build.
if [ "$WGET_RC" -ne 0 ] && [ "$WGET_RC" -ne 8 ]; then
  echo "!! wget exited $WGET_RC"; exit "$WGET_RC"
fi

cleanup
trap - EXIT

# 6. GitHub Pages hygiene: keep _-prefixed asset dirs (Grav pipelines) from being
#    stripped by Jekyll.
touch "$OUT_DIR/.nojekyll"

# 7. Sanity checks.
fail=0
[ -f "$OUT_DIR/index.html" ] || { echo "!! no index.html generated"; fail=1; }

# one HTML file per page folder under user/pages/ (home renders as index.html)
want=$(find user/pages -mindepth 1 -maxdepth 1 -type d | wc -l | tr -d ' ')
got=$(find "$OUT_DIR" -maxdepth 2 -name '*.html' | wc -l | tr -d ' ')
if [ "$got" -lt "$want" ]; then
  echo "!! expected >= $want HTML pages, got $got"; fail=1
fi

# no half-rendered pages
while IFS= read -r html; do
  if [ "$(wc -c < "$html")" -lt 300 ]; then echo "!! suspiciously small page: $html"; fail=1; fi
done < <(find "$OUT_DIR" -name '*.html')

# every link must have been rewritten to a relative path
if grep -rlF "$BASE" "$OUT_DIR" >/dev/null 2>&1; then
  echo "!! absolute dev URLs left in output:"; grep -rlF "$BASE" "$OUT_DIR"; fail=1
fi
[ "$fail" -eq 0 ] || { echo "!! build failed sanity checks"; exit 1; }

echo ">> done: $got HTML pages in $OUT_DIR"
