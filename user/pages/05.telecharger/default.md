---
title: Télécharger
menu: Télécharger
slug: download
body_classes: downloads
---

<div class="download-page" data-release-repo="grognard/grognard">
  <p class="download-meta" aria-live="polite">Télécharger Grognard <span aria-hidden="true">·</span> <strong data-release-version>Recherche de la version…</strong></p>
  <p class="download-meta">Logiciel libre distribué sous licence <a href="https://www.gnu.org/licenses/agpl-3.0.html">AGPL-3</a>.</p>
  <p class="download-notice"><strong>Version bêta.</strong> Grognard est encore en développement et certaines fonctions peuvent évoluer. <a href="https://github.com/grognard/grognard/issues">Signaler un problème sur GitHub</a>.</p>
  <p class="download-notice">Le classement est facultatif ; vos textes et vos fichiers restent sur votre ordinateur.</p>
  <p class="download-skip"><a href="#configuration">Configuration, espace disque et pourquoi l’installeur est volumineux</a></p>

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

  <section class="requirements-section" id="configuration" aria-labelledby="requirements-title">
    <div class="requirements-heading">
      <p class="eyebrow">Après le téléchargement</p>
      <h2 id="requirements-title">Ce que l’installeur<br><em>emporte avec lui.</em></h2>
    </div>
    <div class="requirements-body">
      <p class="requirements-lede">Grognard pèse plusieurs centaines de mégaoctets parce qu’il refuse le modèle du navigateur branché sur un serveur. Le travail reste sur votre machine&nbsp;: vos textes, votre base d’entités, vos identifiants. Rien n’est envoyé «&nbsp;dans le nuage&nbsp;» pour éditer, valider ou désambiguïser. Pour que cela tienne, l’application embarque son propre navigateur, un interprète Python, un serveur XML, et elle peut ensuite télécharger des bases savantes entières afin de les consulter hors ligne.</p>

      <h3>Configuration minimale</h3>
      <dl class="requirements-facts">
        <div>
          <dt>macOS</dt>
          <dd>macOS&nbsp;12 Monterey ou plus récent, puce Apple ou Intel, 64&nbsp;bits. Installeur signé et notarisé, environ 345&nbsp;Mo.</dd>
        </div>
        <div>
          <dt>Windows</dt>
          <dd>Windows&nbsp;10 ou plus récent, 64&nbsp;bits uniquement (Intel/AMD ou ARM). Installeur d’environ 280–295&nbsp;Mo. Il n’est pas encore signé par une autorité commerciale&nbsp;: SmartScreen peut demander «&nbsp;Plus d’infos → Exécuter quand même&nbsp;».</dd>
        </div>
        <div>
          <dt>Linux</dt>
          <dd>Debian ou Ubuntu, paquets <code>.deb</code> amd64 ou arm64, environ 390–420&nbsp;Mo. Bibliothèques GTK&nbsp;3 habituelles. Pas de dépôt Flathub ni AUR sur cette page.</dd>
        </div>
        <div>
          <dt>Mémoire</dt>
          <dd>8&nbsp;Go de RAM recommandés. 4&nbsp;Go suffisent pour ouvrir un fichier, mais le balisage automatique sur de gros paquets d’autorités devient pénible.</dd>
        </div>
        <div>
          <dt>Disque, au départ</dt>
          <dd>Comptez moins d’un gigaoctet une fois le programme installé. Les bases optionnelles s’ajoutent ensuite, seulement si vous les acceptez.</dd>
        </div>
        <div>
          <dt>Java et GitHub</dt>
          <dd>Java n’est pas requis pour Grognard. Il ne sert qu’à LanguageTool (grammaire du volet de traduction). Un compte GitHub n’est pas requis non plus&nbsp;: il n’intervient que pour les mises à jour hébergées sur GitHub, le classement facultatif, ou si vous versionnez vous-même un projet.</dd>
        </div>
      </dl>

      <h3>Pourquoi c’est lourd&nbsp;: l’inventaire de l’installeur</h3>
      <p>Les chiffres ci-dessous décrivent la version 0.1.0-beta.13. Ils expliquent le poids du <em>programme</em>, pas encore celui des corpus que vous pourrez ajouter.</p>
      <ul class="requirements-inventory">
        <li><strong>Un navigateur complet (Electron / Chromium).</strong> Grognard n’est pas une page web distante. L’éditeur visuel, le mode source et les fenêtres d’interface tournent dans une copie de Chromium livrée avec l’application. C’est la plus grosse part de l’installeur, et c’est ce qui permet de travailler sans serveur distant.</li>
        <li><strong>Python embarqué.</strong> Les greffons savants (Sanmiao pour les dates est-asiatiques, imports Kanripo, CBETA, Daozang, etc.) s’exécutent en local. Plutôt que d’exiger «&nbsp;installez Python 3 et des bibliothèques&nbsp;», Grognard transporte son propre interprète.</li>
        <li><strong>LemMinX, le serveur de langage XML.</strong> La validation du schéma et l’assistance en mode source tournent sur votre disque, pas sur un service LINCS ou un API dans le nuage.</li>
        <li><strong>Un petit serveur local «&nbsp;Commons&nbsp;».</strong> Il relie l’éditeur, la base d’entités et, plus tard, le complément Word — toujours en <code>localhost</code>, jamais comme un compte distant obligatoire.</li>
        <li><strong>Schémas TEI et catalogue.</strong> Les contrats d’édition voyagent avec l’application, pour qu’un projet s’ouvre même sans réseau.</li>
        <li><strong>Passerelle d’extension de navigateur.</strong> L’import depuis Wikisource, Kanripo ou BDRC parle à Grognard sur la machine, pas via un site intermédiaire.</li>
        <li><strong>Outil de tuiles cartographiques (pmtiles).</strong> Lorsque vous acceptez une carte hors ligne, l’extraction se fait ici, sans clé d’API cartographique.</li>
        <li><strong>Ressources de l’avatar et du «&nbsp;jeu&nbsp;» (~63&nbsp;Mo).</strong> Graphismes locaux pour le classement et l’avatar, afin de ne pas les retélécharger à chaque lancement.</li>
      </ul>
      <p>Rien de tout cela n’est de la «&nbsp;graisse marketing&nbsp;». C’est le prix d’un atelier privé&nbsp;: les mêmes fonctions qu’un écosystème web, sans devoir confier le manuscrit à une machine que vous ne contrôlez pas.</p>

      <h3>Ce que vous pouvez ajouter ensuite (toujours local)</h3>
      <p>Au premier projet, Grognard propose des paquets d’autorités selon la langue. Vous pouvez refuser. S’ils sont acceptés, ils restent sur le disque et servent hors ligne. Licences et sources&nbsp;: <a href="/ressources">Ressources</a>.</p>
      <dl class="requirements-facts">
        <div>
          <dt>CBDB</dt>
          <dd>Base biographique de la Chine, environ 600&nbsp;Mo. C’est le plus gros fichier optionnel pour un projet chinois.</dd>
        </div>
        <div>
          <dt>DILA</dt>
          <dd>Autorités bouddhiques (personnes, lieux), environ 85&nbsp;Mo.</dd>
        </div>
        <div>
          <dt>CHGIS</dt>
          <dd>Lieux administratifs historiques, compilés dans le pack chinois (pas les shapefiles SIG d’origine). Usage académique ; voir <a href="/ressources">Ressources</a>.</dd>
        </div>
        <div>
          <dt>Wikidata, NDL, concordances</dt>
          <dd>Paquets de désambiguïsation selon la langue (chinois, japonais, tibétain…). Taille variable&nbsp;: ce sont des extraits savants, pas un appel live à Wikidata à chaque clic.</dd>
        </div>
        <div>
          <dt>Tuiles de carte</dt>
          <dd>Jusqu’à 500&nbsp;Mo pour afficher les lieux hors ligne, plafonné volontairement.</dd>
        </div>
        <div>
          <dt>Corpus Daozang (greffon)</dt>
          <dd>Environ 77&nbsp;Mo de textes ponctués, si vous installez ce greffon.</dd>
        </div>
        <div>
          <dt>LanguageTool</dt>
          <dd>Environ 220&nbsp;Mo, plus Java&nbsp;17 (~40&nbsp;Mo). Sur macOS et Windows, Grognard peut télécharger ce Java pour vous. Sous Linux, il faut un Java&nbsp;17+ système. Les n-grammes anglais optionnels pèsent plusieurs gigaoctets&nbsp;: ce sont les seuls à dépasser vraiment le giga.</dd>
        </div>
      </dl>
      <p>Un projet chinois qui prend CBDB, DILA et la carte ajoute donc environ 1,2&nbsp;Go — de la donnée, pas du programme. L’historique local «&nbsp;Grognard Time Machine&nbsp;» est ensuite plafonné à 500&nbsp;Mo.</p>

      <h3>Réseau, mises à jour, premier lancement</h3>
      <p>Une fois installé, Grognard édite sans Internet. Le réseau n’est utile que pour télécharger l’application, accepter des paquets d’autorités, LanguageTool, ou une mise à jour. Sur macOS et Windows, les mises à jour sont proposées automatiquement depuis GitHub. Le paquet Linux <code>.deb</code> de cette page ne passe pas par ce mécanisme intégré.</p>
      <p>Au premier lancement, l’application peut enregistrer la passerelle du navigateur et vous demander quels paquets installer. Vous pouvez tout reporter. Les fichiers du projet et la base d’entités restent des fichiers ordinaires sur votre disque.</p>
    </div>
  </section>
</div>
