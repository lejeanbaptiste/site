(function () {
  'use strict';

  var root = document.querySelector('.download-page');
  if (!root) return;

  var repo = root.getAttribute('data-release-repo');
  var version = root.querySelector('[data-release-version]');
  var releasePage = root.querySelector('[data-release-page]');

  function recommendedPlatform() {
    var platform = (navigator.userAgentData && navigator.userAgentData.platform) || navigator.platform || '';
    if (/mac/i.test(platform)) return 'mac';
    if (/win/i.test(platform)) return 'windows';
    if (/linux/i.test(platform)) return 'linux';
    return null;
  }

  var recommended = recommendedPlatform();
  if (recommended) {
    var recommendedCard = root.querySelector('[data-platform="' + recommended + '"]');
    if (recommendedCard) recommendedCard.classList.add('is-recommended');
  }

  root.querySelectorAll('[data-tabs]').forEach(function (tabs) {
    var buttons = Array.from(tabs.querySelectorAll('[role="tab"]'));
    var panels = Array.from(tabs.querySelectorAll('[data-tab-panel]'));

    function selectTab(button) {
      var target = button.getAttribute('data-tab');
      buttons.forEach(function (item) {
        var selected = item === button;
        item.setAttribute('aria-selected', String(selected));
        item.tabIndex = selected ? 0 : -1;
      });
      panels.forEach(function (panel) {
        panel.hidden = panel.id !== target;
      });
    }

    buttons.forEach(function (button, index) {
      button.addEventListener('click', function () { selectTab(button); });
      button.addEventListener('keydown', function (event) {
        if (event.key !== 'ArrowRight' && event.key !== 'ArrowLeft') return;
        event.preventDefault();
        var nextIndex = event.key === 'ArrowRight' ? (index + 1) % buttons.length : (index - 1 + buttons.length) % buttons.length;
        buttons[nextIndex].focus();
        selectTab(buttons[nextIndex]);
      });
    });
  });

  function assetFor(assets, key) {
    var patterns = {
      'mac-arm64': /mac-.*arm64\.pkg$/i,
      'mac-x64': /mac-.*(x64|intel64)\.pkg$/i,
      'windows-x64': /win-Setup-.*x64\.exe$/i,
      'windows-arm64': /win-Setup-.*arm64\.exe$/i,
      'linux-amd64': /linux-.*(amd64|x64)\.deb$/i,
      'linux-arm64': /linux-.*arm64\.deb$/i
    };
    return assets.find(function (asset) { return patterns[key].test(asset.name); });
  }

  function wireAsset(key, asset) {
    var link = root.querySelector('[data-asset="' + key + '"]');
    if (!link || !asset) return;
    link.href = asset.browser_download_url;
    link.hidden = false;
  }

  function formatReleaseDate(value) {
    if (!value) return '';
    var date = new Date(value);
    if (Number.isNaN(date.getTime())) return '';
    return new Intl.DateTimeFormat('fr-FR', {
      day: 'numeric',
      month: 'long',
      year: 'numeric'
    }).format(date);
  }

  fetch('https://api.github.com/repos/' + repo + '/releases/latest', { headers: { Accept: 'application/vnd.github+json' } })
    .then(function (response) {
      if (!response.ok) throw new Error('release unavailable');
      return response.json();
    })
    .then(function (release) {
      var assets = release.assets || [];
      ['mac-arm64', 'mac-x64', 'windows-x64', 'windows-arm64', 'linux-amd64', 'linux-arm64'].forEach(function (key) {
        wireAsset(key, assetFor(assets, key));
      });
      if (version) {
        var releaseDate = formatReleaseDate(release.published_at);
        version.textContent = 'version ' + release.tag_name + (releaseDate ? ' (' + releaseDate + ')' : '');
      }
      releasePage.href = release.html_url;
    })
    .catch(function () {
      if (version) version.textContent = 'version indisponible';
      releasePage.textContent = 'Voir les versions sur GitHub ↗';
    });
}());
