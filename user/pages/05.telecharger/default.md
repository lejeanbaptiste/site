---
title: Télécharger
menu: Télécharger
slug: download
body_classes: downloads
---

<div class="download-page" data-release-repo="lejeanbaptiste/lejeanbaptiste">
  <p class="download-meta" aria-live="polite">Télécharger Grognard <span aria-hidden="true">·</span> <strong data-release-version>Recherche de la version…</strong></p>

  <section class="download-grid" aria-label="Téléchargements par système">
    <article class="download-card" data-platform="mac">
      <div class="download-card__top"><span>01</span><span>macOS</span></div>
      <h2>Mac</h2>
      <p class="download-card__note">Installeur signé et notarisé pour macOS.</p>
      <div class="download-card__actions">
        <a class="download-button" data-asset="mac-arm64" href="https://github.com/grognard/grognard/releases/latest">Télécharger pour Apple silicon <span>→</span></a>
        <a class="download-link" data-asset="mac-x64" href="https://github.com/grognard/grognard/releases/latest">Mac Intel</a>
      </div>
    </article>

    <article class="download-card" data-platform="windows">
      <div class="download-card__top"><span>02</span><span>Windows</span></div>
      <h2>Windows</h2>
      <p class="download-card__note">Installeur Windows pour PC 64 bits.</p>
      <div class="download-card__actions">
        <a class="download-button" data-asset="windows-x64" href="https://github.com/grognard/grognard/releases/latest">Télécharger pour Windows <span>→</span></a>
        <a class="download-link" data-asset="windows-arm64" href="https://github.com/grognard/grognard/releases/latest">Windows ARM</a>
      </div>
    </article>

    <article class="download-card" data-platform="linux">
      <div class="download-card__top"><span>03</span><span>Linux</span></div>
      <h2>Linux</h2>
      <p class="download-card__note">Paquet <code>.deb</code> pour Debian et Ubuntu.</p>
      <div class="download-card__actions">
        <a class="download-button" data-asset="linux-amd64" href="https://github.com/grognard/grognard/releases/latest">Télécharger pour Linux <span>→</span></a>
        <a class="download-link" data-asset="linux-arm64" href="https://github.com/grognard/grognard/releases/latest">Linux ARM64</a>
      </div>
    </article>
  </section>

  <section class="integrations-section" aria-labelledby="integrations-title">
    <div class="integrations-heading">
      <p class="eyebrow">Autour de Grognard</p>
      <h2 id="integrations-title">Prolongez<br><em>votre travail.</em></h2>
      <p>Les extensions font entrer vos sources dans Grognard. Le complément Word fait ressortir vos entités directement dans le manuscrit.</p>
    </div>

    <div class="integration-list">
      <article class="integration-card">
        <div class="integration-card__top"><span>04</span><span>Navigateurs</span></div>
        <h3>Importer depuis le web</h3>
        <p>L’extension Grognard envoie une page Wikisource, Kanripo ou BDRC vers l’application pour l’importer en TEI.</p>
        <div class="integration-tabs" data-tabs>
          <div class="integration-tablist" role="tablist" aria-label="Choisir un navigateur">
            <button id="tab-chromium" role="tab" aria-selected="true" aria-controls="panel-chromium" data-tab="panel-chromium">Chromium</button>
            <button id="tab-firefox" role="tab" aria-selected="false" aria-controls="panel-firefox" data-tab="panel-firefox" tabindex="-1">Firefox</button>
          </div>
          <div id="panel-chromium" role="tabpanel" aria-labelledby="tab-chromium" data-tab-panel>
            <div class="integration-card__links"><a href="https://github.com/grognard/grognard/releases/latest">Télécharger l’extension Chromium <span aria-hidden="true">↗</span></a></div>
            <ol>
              <li>Téléchargez <code>grognard-browser-extension-chromium-…zip</code> dans la dernière version, puis décompressez l’archive.</li>
              <li>Démarrez Grognard une fois pour enregistrer la passerelle de messagerie native.</li>
              <li>Ouvrez <code>chrome://extensions</code> (ou <code>brave://extensions</code>), activez le mode développeur et choisissez <strong>Charger l’extension non empaquetée</strong>.</li>
            </ol>
          </div>
          <div id="panel-firefox" role="tabpanel" aria-labelledby="tab-firefox" data-tab-panel hidden>
            <div class="integration-card__links"><a href="https://github.com/grognard/grognard/releases/latest">Télécharger l’extension Firefox <span aria-hidden="true">↗</span></a></div>
            <ol>
              <li>Téléchargez <code>grognard-browser-extension-firefox-…zip</code> dans la dernière version, puis décompressez l’archive.</li>
              <li>Démarrez Grognard une fois pour enregistrer la passerelle de messagerie native.</li>
              <li>Ouvrez <code>about:debugging#/runtime/this-firefox</code>, choisissez <strong>Charger un module temporaire</strong> et sélectionnez <code>manifest.json</code>.</li>
            </ol>
            <p class="integration-status">Le chargement temporaire est retiré au redémarrage de Firefox.</p>
          </div>
        </div>
        <a class="integration-more" href="https://github.com/grognard/grognard/blob/main/README.md#browser-extension-corpus-import">Lire les instructions détaillées <span aria-hidden="true">↗</span></a>
      </article>

      <article class="integration-card">
        <div class="integration-card__top"><span>05</span><span>Traitements de texte</span></div>
        <h3>Annoter dans le manuscrit</h3>
        <p>Le complément Word recherche les personnes, lieux et œuvres dans Grognard, puis les insère comme champs réactualisables dans votre document.</p>
        <div class="integration-tabs" data-tabs>
          <div class="integration-tablist" role="tablist" aria-label="Choisir un traitement de texte">
            <button id="tab-word" role="tab" aria-selected="true" aria-controls="panel-word" data-tab="panel-word">Word</button>
            <button id="tab-libreoffice" role="tab" aria-selected="false" aria-controls="panel-libreoffice" data-tab="panel-libreoffice" tabindex="-1">LibreOffice</button>
            <button id="tab-onlyoffice" role="tab" aria-selected="false" aria-controls="panel-onlyoffice" data-tab="panel-onlyoffice" tabindex="-1">OnlyOffice</button>
          </div>
          <div id="panel-word" role="tabpanel" aria-labelledby="tab-word" data-tab-panel>
            <div class="integration-card__links">
              <a href="https://github.com/grognard/wordprocessor">Projet Word <span aria-hidden="true">↗</span></a>
              <a href="https://github.com/grognard/wordprocessor/blob/main/README.md">Documentation <span aria-hidden="true">↗</span></a>
            </div>
            <ol>
              <li>Démarrez Grognard avec un projet contenant une base d’entités.</li>
              <li>Dans le dossier du complément, lancez <code>npm install</code>, puis <code>npm run dev</code>.</li>
              <li>Dans un autre terminal, lancez <code>npm run sideload</code> pour charger le complément dans Word desktop.</li>
              <li>Ouvrez <strong>Grognard Entities</strong>, puis configurez la connexion avec <code>https://localhost:3848</code> et le jeton d’association de Grognard.</li>
            </ol>
            <p class="integration-status">Complément expérimental · Word desktop</p>
          </div>
          <div id="panel-libreoffice" role="tabpanel" aria-labelledby="tab-libreoffice" data-tab-panel hidden>
            <p class="integration-unavailable">L’intégration LibreOffice n’est pas encore distribuée.</p>
            <p class="integration-status">À venir</p>
          </div>
          <div id="panel-onlyoffice" role="tabpanel" aria-labelledby="tab-onlyoffice" data-tab-panel hidden>
            <p class="integration-unavailable">L’intégration OnlyOffice n’est pas encore distribuée.</p>
            <p class="integration-status">À venir</p>
          </div>
        </div>
      </article>
    </div>
  </section>
</div>
