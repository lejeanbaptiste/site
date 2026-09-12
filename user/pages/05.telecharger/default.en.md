---
title: Download
menu: Download
slug: download
body_classes: downloads
---

<div class="download-page" data-release-repo="grognard-xml/grognard">
  <p class="download-meta" aria-live="polite">Download Grognard <span aria-hidden="true">·</span> <strong data-release-version>Checking latest version…</strong> <span aria-hidden="true"></span></p>
  <p class="download-meta">Open-source software distributed under the <a href="https://www.gnu.org/licenses/agpl-3.0.html">AGPL-3</a> license.</p>
  <p class="download-notice">Grognard is still in development, and some features may change. <a href="https://github.com/grognard-xml/grognard/issues">Report a problem on GitHub</a>.</p>
  <p class="download-skip"><a href="#configuration">System requirements, disk space, and why the installer is so large</a></p>

  <section class="download-grid" aria-label="Downloads by operating system">
    <article class="download-card" data-platform="mac">
      <div class="download-card__top"><span>01</span><span>macOS</span></div>
      <h2><img class="download-card__os download-card__os--paper download-card__os--apple" src="/user/themes/lejeanbaptiste/images/os/apple-burgundy@2x.png" srcset="/user/themes/lejeanbaptiste/images/os/apple-burgundy@2x.png 2x, /user/themes/lejeanbaptiste/images/os/apple-burgundy@3x.png 3x" width="51" height="64" alt=""><img class="download-card__os download-card__os--crimson download-card__os--apple" src="/user/themes/lejeanbaptiste/images/os/apple-cream@2x.png" srcset="/user/themes/lejeanbaptiste/images/os/apple-cream@2x.png 2x, /user/themes/lejeanbaptiste/images/os/apple-cream@3x.png 3x" width="51" height="64" alt=""><span class="visually-hidden">Mac</span></h2>
      <p class="download-card__note">Signed and notarized installer for macOS.</p>
      <div class="download-card__actions">
        <a class="download-button" data-asset="mac-arm64" href="https://github.com/grognard-xml/grognard/releases/latest">Download for Apple silicon <span>→</span></a>
        <a class="download-link" data-asset="mac-x64" href="https://github.com/grognard-xml/grognard/releases/latest">Intel Mac</a>
      </div>
    </article>

    <article class="download-card" data-platform="windows">
      <div class="download-card__top"><span>02</span><span>Windows</span></div>
      <h2><img class="download-card__os download-card__os--paper download-card__os--windows" src="/user/themes/lejeanbaptiste/images/os/windows-burgundy@2x.png" srcset="/user/themes/lejeanbaptiste/images/os/windows-burgundy@2x.png 2x, /user/themes/lejeanbaptiste/images/os/windows-burgundy@3x.png 3x" width="64" height="64" alt=""><img class="download-card__os download-card__os--crimson download-card__os--windows" src="/user/themes/lejeanbaptiste/images/os/windows-cream@2x.png" srcset="/user/themes/lejeanbaptiste/images/os/windows-cream@2x.png 2x, /user/themes/lejeanbaptiste/images/os/windows-cream@3x.png 3x" width="64" height="64" alt=""><span class="visually-hidden">Windows</span></h2>
      <p class="download-card__note">Windows installer for 64-bit PCs.</p>
      <div class="download-card__actions">
        <a class="download-button" data-asset="windows-x64" href="https://github.com/grognard-xml/grognard/releases/latest">Download for Windows <span>→</span></a>
        <a class="download-link" data-asset="windows-arm64" href="https://github.com/grognard-xml/grognard/releases/latest">Windows ARM</a>
      </div>
    </article>

    <article class="download-card" data-platform="linux">
      <div class="download-card__top"><span>03</span><span>Linux</span></div>
      <h2><img class="download-card__os download-card__os--paper download-card__os--linux" src="/user/themes/lejeanbaptiste/images/os/linux-burgundy@2x.png" srcset="/user/themes/lejeanbaptiste/images/os/linux-burgundy@2x.png 2x, /user/themes/lejeanbaptiste/images/os/linux-burgundy@3x.png 3x" width="70" height="70" alt=""><img class="download-card__os download-card__os--crimson download-card__os--linux" src="/user/themes/lejeanbaptiste/images/os/linux-cream@2x.png" srcset="/user/themes/lejeanbaptiste/images/os/linux-cream@2x.png 2x, /user/themes/lejeanbaptiste/images/os/linux-cream@3x.png 3x" width="70" height="70" alt=""><span class="visually-hidden">Linux</span></h2>
      <p class="download-card__note"><code>.deb</code> package for Debian and Ubuntu.</p>
      <div class="download-card__actions">
        <a class="download-button" data-asset="linux-amd64" href="https://github.com/grognard-xml/grognard/releases/latest">Download for Linux <span>→</span></a>
        <a class="download-link" data-asset="linux-arm64" href="https://github.com/grognard-xml/grognard/releases/latest">Linux ARM64</a>
      </div>
    </article>
  </section>

  <section class="integrations-section" aria-labelledby="integrations-title">
    <div class="integrations-heading">
      <p class="eyebrow">Around Grognard</p>
      <h2 id="integrations-title">Extend<br><em>your work.</em></h2>
      <p>Extensions bring your sources into Grognard. The Word add-in surfaces your entities directly in the manuscript.</p>
    </div>

    <div class="integration-list">
      <article class="integration-card">
        <div class="integration-card__top"><span>04</span><span>Browsers</span></div>
        <h3>Import from the web</h3>
        <p>The Grognard extension sends a Wikisource, Kanripo, or BDRC page to the app for import as TEI.</p>
        <div class="integration-tabs" data-tabs>
          <div class="integration-tablist" role="tablist" aria-label="Choose a browser">
            <button id="tab-chromium" role="tab" aria-selected="true" aria-controls="panel-chromium" data-tab="panel-chromium">Chromium</button>
            <button id="tab-firefox" role="tab" aria-selected="false" aria-controls="panel-firefox" data-tab="panel-firefox" tabindex="-1">Firefox</button>
          </div>
          <div id="panel-chromium" role="tabpanel" aria-labelledby="tab-chromium" data-tab-panel>
            <div class="integration-card__links"><a href="https://github.com/grognard-xml/grognard/releases/latest">Download the Chromium extension <span aria-hidden="true">↗</span></a></div>
            <ol>
              <li>Download <code>grognard-browser-extension-chromium-…zip</code> from the latest release, then unzip the archive.</li>
              <li>Start Grognard once to register the native messaging bridge.</li>
              <li>Open <code>chrome://extensions</code> (or <code>brave://extensions</code>), enable Developer mode, and choose <strong>Load unpacked</strong>.</li>
            </ol>
          </div>
          <div id="panel-firefox" role="tabpanel" aria-labelledby="tab-firefox" data-tab-panel hidden>
            <div class="integration-card__links"><a href="https://github.com/grognard-xml/grognard/releases/latest">Download the Firefox extension <span aria-hidden="true">↗</span></a></div>
            <ol>
              <li>Download <code>grognard-browser-extension-firefox-…zip</code> from the latest release, then unzip the archive.</li>
              <li>Start Grognard once to register the native messaging bridge.</li>
              <li>Open <code>about:debugging#/runtime/this-firefox</code>, choose <strong>Load Temporary Add-on</strong>, and select <code>manifest.json</code>.</li>
            </ol>
            <p class="integration-status">The temporary add-on is removed when Firefox restarts.</p>
          </div>
        </div>
        <a class="integration-more" href="https://github.com/grognard-xml/grognard/blob/main/README.md#browser-extension-corpus-import">Read the detailed instructions <span aria-hidden="true">↗</span></a>
      </article>

      <article class="integration-card">
        <div class="integration-card__top"><span>05</span><span>Word processors</span></div>
        <h3>Annotate in the manuscript</h3>
        <p>The Word add-in searches Grognard for people, places, and works, then inserts them into your document as refreshable fields.</p>
        <div class="integration-tabs" data-tabs>
          <div class="integration-tablist" role="tablist" aria-label="Choose a word processor">
            <button id="tab-word" role="tab" aria-selected="true" aria-controls="panel-word" data-tab="panel-word">Word</button>
            <button id="tab-libreoffice" role="tab" aria-selected="false" aria-controls="panel-libreoffice" data-tab="panel-libreoffice" tabindex="-1">LibreOffice</button>
            <button id="tab-onlyoffice" role="tab" aria-selected="false" aria-controls="panel-onlyoffice" data-tab="panel-onlyoffice" tabindex="-1">OnlyOffice</button>
          </div>
          <div id="panel-word" role="tabpanel" aria-labelledby="tab-word" data-tab-panel>
            <div class="integration-card__links">
              <a href="https://github.com/grognard-xml/wordprocessor">Word project <span aria-hidden="true">↗</span></a>
              <a href="https://github.com/grognard-xml/wordprocessor/blob/main/README.md">Documentation <span aria-hidden="true">↗</span></a>
            </div>
            <ol>
              <li>Start Grognard with a project containing an entity database.</li>
              <li>In the add-in directory, run <code>npm install</code>, then <code>npm run dev</code>.</li>
              <li>In another terminal, run <code>npm run sideload</code> to load the add-in in Word for desktop.</li>
              <li>Open <strong>Grognard Entities</strong>, then configure the connection with <code>https://localhost:3848</code> and Grognard’s pairing token.</li>
            </ol>
            <p class="integration-status">Experimental add-in · Word for desktop</p>
          </div>
          <div id="panel-libreoffice" role="tabpanel" aria-labelledby="tab-libreoffice" data-tab-panel hidden>
            <p class="integration-unavailable">LibreOffice integration is not yet available.</p>
            <p class="integration-status">Coming soon</p>
          </div>
          <div id="panel-onlyoffice" role="tabpanel" aria-labelledby="tab-onlyoffice" data-tab-panel hidden>
            <p class="integration-unavailable">OnlyOffice integration is not yet available.</p>
            <p class="integration-status">Coming soon</p>
          </div>
        </div>
      </article>
    </div>
  </section>

  <section class="requirements-section" id="configuration" aria-labelledby="requirements-title">
    <div class="requirements-heading">
      <p class="eyebrow">After downloading</p>
      <h2 id="requirements-title">What the installer<br><em>brings with it.</em></h2>
    </div>
    <div class="requirements-body">
      <p class="requirements-lede">Grognard weighs several hundred megabytes because it rejects the model of a browser connected to a server. The work stays on your machine: your texts, entity database, and credentials. Nothing is sent “to the cloud” for editing, validation, or disambiguation. To make that possible, the application bundles its own browser, a Python interpreter, and an XML server; it can also download complete scholarly databases for offline use.</p>

      <h3>Minimum requirements</h3>
      <dl class="requirements-facts">
        <div>
          <dt>macOS</dt>
          <dd>macOS&nbsp;12 Monterey or later, Apple or Intel chip, 64-bit. Signed and notarized installer, approximately 345&nbsp;MB.</dd>
        </div>
        <div>
          <dt>Windows</dt>
          <dd>Windows&nbsp;10 or later, 64-bit only (Intel/AMD or ARM). Installer approximately 280–295&nbsp;MB. It is not yet signed by a commercial certificate authority, so SmartScreen may ask you to choose “More info → Run anyway.”</dd>
        </div>
        <div>
          <dt>Linux</dt>
          <dd>Debian or Ubuntu, amd64 or arm64 <code>.deb</code> packages, approximately 390–420&nbsp;MB. Standard GTK&nbsp;3 libraries. No Flathub or AUR package is provided here.</dd>
        </div>
        <div>
          <dt>Memory</dt>
          <dd>8&nbsp;GB of RAM recommended. 4&nbsp;GB is enough to open a file, but automatic markup on large authority packs becomes uncomfortable.</dd>
        </div>
        <div>
          <dt>Initial disk space</dt>
          <dd>Allow less than one gigabyte once the application is installed. Optional databases are added later, only if you accept them.</dd>
        </div>
        <div>
          <dt>Java and GitHub</dt>
          <dd>Java is not required for Grognard. It is only used by LanguageTool (for grammar checking in the translation pane). A GitHub account is not required either; it is used only for updates hosted on GitHub, the optional leaderboard, or if you manage a project with version control yourself.</dd>
        </div>
      </dl>

      <h3>Why it is so large: what the installer contains</h3>
      <p>The figures below describe version 0.1.0-beta.13. They explain the size of the <em>application</em>, not the corpora you may add later.</p>
      <ul class="requirements-inventory">
        <li><strong>A full browser (Electron / Chromium).</strong> Grognard is not a remote web page. The visual editor, source mode, and interface windows run in a copy of Chromium bundled with the application. This is the largest part of the installer, and it is what allows you to work without a remote server.</li>
        <li><strong>Bundled Python.</strong> Scholarly plugins (Sanmiao for East Asian dates, Kanripo, CBETA, and Daozang imports, etc.) run locally. Rather than requiring you to “install Python 3 and some libraries,” Grognard includes its own interpreter.</li>
        <li><strong>LemMinX, the XML language server.</strong> Schema validation and source-mode assistance run on your disk, not through a LINCS service or a cloud API.</li>
        <li><strong>A small local “Commons” server.</strong> It connects the editor, entity database, and eventually the Word add-in—always through <code>localhost</code>, never through a required remote account.</li>
        <li><strong>TEI schemas and catalog.</strong> The editorial rules travel with the application, so a project can open even without a network connection.</li>
        <li><strong>Browser-extension bridge.</strong> Imports from Wikisource, Kanripo, or BDRC communicate with Grognard on your machine, not through an intermediary website.</li>
        <li><strong>Map-tile tool (pmtiles).</strong> When you accept an offline map, extraction happens here, without a map API key.</li>
        <li><strong>Avatar and “game” assets (~63&nbsp;MB).</strong> Local graphics for the leaderboard and avatar, so they do not need to be downloaded again at every launch.</li>
      </ul>
      <p>None of this is “marketing bloat.” It is the cost of a private workshop: the same capabilities as a web ecosystem, without handing your manuscript to a machine you do not control.</p>

      <h3>What you can add later (still locally)</h3>
      <p>When you create your first project, Grognard offers authority packs based on the language. You can decline them. If accepted, they remain on your disk and work offline. Licenses and sources: <a href="/ressources">Resources</a>.</p>
      <dl class="requirements-facts">
        <div>
          <dt>CBDB</dt>
          <dd>Biographical database of China, approximately 600&nbsp;MB. This is the largest optional file for a Chinese-language project.</dd>
        </div>
        <div>
          <dt>DILA</dt>
          <dd>Buddhist authorities (people and places), approximately 85&nbsp;MB.</dd>
        </div>
        <div>
          <dt>CHGIS</dt>
          <dd>Historical administrative places, compiled into the Chinese pack (not the original GIS shapefiles). For academic use; see <a href="/ressources">Resources</a>.</dd>
        </div>
        <div>
          <dt>Wikidata, NDL, concordances</dt>
          <dd>Language-specific disambiguation packs (Chinese, Japanese, Tibetan, and more). Size varies; these are scholarly extracts, not a live Wikidata request on every click.</dd>
        </div>
        <div>
          <dt>Map tiles</dt>
          <dd>Up to 500&nbsp;MB for displaying places offline, deliberately capped.</dd>
        </div>
        <div>
          <dt>Corpus Daozang (greffon)</dt>
          <dd>Approximately 77&nbsp;MB of punctuated texts, if you install this plugin.</dd>
        </div>
        <div>
          <dt>LanguageTool</dt>
          <dd>Approximately 220&nbsp;MB, plus Java&nbsp;17 (~40&nbsp;MB). On macOS and Windows, Grognard can download Java for you. On Linux, a system installation of Java&nbsp;17+ is required. Optional English n-grams weigh several gigabytes; they are the only additions that substantially exceed one gigabyte.</dd>
        </div>
      </dl>
      <p>A Chinese-language project using CBDB, DILA, and the map therefore adds about 1.2&nbsp;GB—data, not application code. The local “Grognard Time Machine” history is then capped at 500&nbsp;MB.</p>

      <h3>Network access, updates, and first launch</h3>
      <p>Once installed, Grognard edits without an internet connection. Network access is only needed to download the application, accept authority packs or LanguageTool, or install an update. On macOS and Windows, updates are offered automatically through GitHub. The Linux <code>.deb</code> package on this page does not use that built-in mechanism.</p>
      <p>On first launch, the application may register the browser bridge and ask which packs to install. You can defer everything. Project files and the entity database remain ordinary files on your disk.</p>
    </div>
  </section>
</div>
