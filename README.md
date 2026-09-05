# Grognard — website

Marketing / documentation site for **Grognard**, authored in [Grav](https://getgrav.org)
and published as a **static site** on GitHub Pages. No PHP runs in production.

Live: <https://lejeanbaptiste.github.io/site/>
(moves to `grognard.github.io/site/` after the org rename; a custom domain may follow.)

## What's in this repo

This is a *slim* repo. Only the site's own sources are tracked:

| Path | What |
|------|------|
| `user/pages/` | page content (Markdown + front-matter) |
| `user/themes/lejeanbaptiste/` | the theme (Twig templates, CSS, JS, images) |
| `user/config/` | site + system config |
| `scripts/build-static.sh` | the static build |
| `grav-version` | pinned Grav core release |
| `.github/workflows/build.yml` | CI: build + deploy to Pages |

Grav core, `vendor/`, `system/`, cache and logs are **not** committed — the build
downloads Grav fresh each time.

## Editing locally

This checkout sits inside a full local Grav install (everything outside the table
above is git-ignored). To preview edits:

```bash
php -S 127.0.0.1:8000 system/router.php
# open http://127.0.0.1:8000
```

Edit pages under `user/pages/` and the theme under
`user/themes/lejeanbaptiste/`, then commit. Pushing to `main` rebuilds and
redeploys.

## Building the static site locally (optional)

Needs `wget` (`brew install wget`):

```bash
bash scripts/build-static.sh
cd public && php -S 127.0.0.1:8001    # preview the built output
```

Output lands in `public/` (git-ignored). `--convert-links` makes every link
relative, so the same output works at any URL prefix without a rebuild.

## Deployment

Push to `main` → GitHub Actions downloads Grav `grav-version`, overlays `user/`,
crawls the running site, and publishes `public/` to Pages.
Push to a `ci-test` branch to build without deploying.

**One-time setup:** repo **Settings → Pages → Source → "GitHub Actions"**.

Bump Grav: edit `grav-version`, open a PR.

## Static-site limitations

- **No server-side forms.** Use a third-party endpoint (Formspree, etc.).
- **No built-in search.** Add a client-side index if search is needed.
- Page URLs are `…/projet.html` (from `wget --adjust-extension`), not `…/projet/`.
