---
title: Compare tools
menu: Compare tools
slug: comparaison
body_classes: comparison-page
page_splash: /images/tool_splash.png
page_splash_alt: "Mapping and measuring instruments on a worktable"
template: comparison
comparison_kicker: "Five observations, one workshop"
comparison_intro: "There is no single best tool for the digital humanities. Grognard is not “the best” for everyone: it occupies an intersection the others leave open. The case rests on five points. The table below then explains how to use it alongside oXygen, Word, MARKUS, LEAF-Writer, or a publishing site."
---

<ol class="comparison-pillars">
  <li>
    <strong>An XML editor does not do the scholarly work</strong>
    <span>oXygen is excellent for writing, validating, and transforming XML. That is not a criticism: it is what it is built for. Source editing, especially for East Asian materials, also requires automatic markup, authority data (CBDB, DILA, CHGIS, Wikidata, NDL…), historical calendars, and an entity database. These are not optional add-ons around an IDE; they are part of the daily work of reading.</span>
  </li>
  <li>
    <strong>You usually find this workflow online—with a cost</strong>
    <span>Platforms that provide ready-made tagging and authorities (MARKUS, DocuSky, CATMA, LEAF-Writer in a browser, and others) generally run on a server. They can sometimes be self-hosted, but the usual case is a remote service. Files are no longer simply a folder on your disk: you cannot easily run a Python script, a regular expression in a text editor, grep, or a Jupyter notebook alongside them. You depend on the network, and the provider’s interface is less flexible. Many researchers also simply do not want to place an unpublished corpus—sometimes sensitive, sometimes merely not ready for publication—on someone else’s machine.</span>
  </li>
  <li>
    <strong>Few workshops treat East Asian documents as the normal case</strong>
    <span>LEAF-Writer, CATMA, and oXygen are excellent general-purpose tools. For Chinese, Japanese, Korean, or Tibetan texts, practical references—concordances, historical calendars, Kanripo or CBETA corpora, and biographical authorities—have mostly been found in MARKUS, DocuSky, and neighboring ecosystems. Grognard brings that center of gravity to the desktop, in TEI that you own.</span>
  </li>
  <li>
    <strong>Without your own database, tagging does not accumulate</strong>
    <span>Annotating in a platform is still useful for exploration. It becomes cumulative knowledge only when each identification decision enters <em>your</em> database, reappears in the next file, and can be corrected, exported, and reviewed. A tagging system without this loop makes you start over. Grognard treats the document and the entity database as two sides of the same work.</span>
  </li>
  <li>
    <strong>TEI should serve the working day, not just the file</strong>
    <span>Les autres outils répondent à une tâche : éditer du XML, annoter un corpus, publier une édition. Ils ne vous donnent pas, en retour, une base de personnes avec dates et graphies que l’on insère dans Word — mise en forme et dates comprises — au moment d’écrire un article. Ils ne conservent pas vos traductions de titres officiels chinois pour les retrouver ensuite. Ils n’offrent pas un lieu pour une traduction savante complète, critique, assistée par l’IA, liée à votre bibliothèque Zotero. Grognard est fait pour cette boucle : le balisage nourrit la base, la base nourrit l’article et la traduction. (Le complément Word est encore expérimental ; LibreOffice et OnlyOffice ne sont pas distribués.)</span>
  </li>
</ol>

It is the combination, not any one component in isolation, that justifies software weighing several hundred megabytes. The full breakdown is on the [Download](/download#configuration) page.

## Using it with other tools

Grognard est un **fork de bureau** de [LEAF-Writer](https://leaf-writer.leaf-vre.org/) (écosystème [LEAF](https://www.leaf-vre.org/)). Le geste d’identifier noms, dates et lieux dans un corpus chinois doit beaucoup à [MARKUS](https://xmarkus.xmarkus.org/XmarkusPlatform-Introduction.html). Le tableau ne dit pas qui « gagne » : il dit à quel moment un autre outil reste le bon, et comment Grognard s’y articule.

<div class="comparison-matrix-wrap">
<table>
  <thead>
    <tr>
      <th scope="col">Outil</th>
      <th scope="col">Centre de gravité</th>
      <th scope="col">Où ça vit</th>
      <th scope="col">Ce qu’il apporte surtout</th>
      <th scope="col">Avec Grognard</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row"><a href="https://www.oxygenxml.com/xml_editor.html">oXygen XML Editor</a></th>
      <td>Édition et développement XML</td>
      <td>Application de bureau · licence commerciale</td>
      <td>Modes texte, grille et visuel, validation, XPath, XSLT, schémas, publication</td>
      <td><strong>En parallèle ou ensuite</strong>. Gardez oXygen pour les transformations et le XML « dur ». Grognard produit du TEI ouvert qu’oXygen relit sans conversion.</td>
    </tr>
    <tr>
      <th scope="row">Microsoft Word</th>
      <td>Rédaction du manuscrit</td>
      <td>Application de bureau · licence commerciale</td>
      <td>Le traitement de texte du quotidien éditorial</td>
      <td><strong>En amont et à côté</strong>. Le complément Word expérimental insère depuis la base Grognard des champs réactualisables : noms, sinogrammes, traductions, dates. Ce n’est pas un export mort, c’est la même fiche que dans l’édition. LibreOffice et OnlyOffice ne sont pas distribués.</td>
    </tr>
    <tr>
      <th scope="row"><a href="https://www.transkribus.org/">Transkribus</a></th>
      <td>Reconnaissance de l’écriture (HTR)</td>
      <td>Plateforme (souvent en ligne) · offre avec crédits de reconnaissance</td>
      <td>Passer de l’image du manuscrit à un texte, avec modèles et correction</td>
      <td><strong>En amont</strong>. Grognard n’est pas un outil d’HTR. On y apporte une transcription déjà obtenue, pour l’encoder et l’identifier.</td>
    </tr>
    <tr>
      <th scope="row"><a href="https://leaf-writer.leaf-vre.org/">LEAF-Writer</a></th>
      <td>Édition XML et RDF dans le navigateur</td>
      <td>Éditeur web, individuel ou collaboratif · logiciel libre</td>
      <td>Balisage XML, entités, annotations web et données liées, sans installer d’application</td>
      <td><strong>Même famille</strong>. Choisissez LEAF-Writer pour le navigateur, un serveur LEAF ou un dépôt Git déjà branché. Grognard reprend le geste d’édition en local, hors ligne, avec autorités et base à soi.</td>
    </tr>
    <tr>
      <th scope="row"><a href="https://xmarkus.xmarkus.org/XmarkusPlatform-Introduction.html">MARKUS / X-MARKUS</a></th>
      <td>Annotation et recherche dans des corpus (souvent chinois)</td>
      <td>Outils web d’annotation · plateforme de recherche</td>
      <td>Repérer noms, dates et lieux ; relier les occurrences aux autorités et les explorer dans le corpus</td>
      <td><strong>Inspiration</strong>. MARKUS a montré le geste. Grognard le reprend lorsque l’on a besoin d’aller plus vite sur de longs textes, d’adapter le parcours, et de tenir une base d’entités sur le disque — tout en pouvant continuer d’explorer ailleurs.</td>
    </tr>
    <tr>
      <th scope="row"><a href="https://docusky.org.tw/DocuSky/home/v5/?l=en">DocuSky</a></th>
      <td>Plateforme de recherche en humanités numériques</td>
      <td>Environnement web orienté corpus · hébergé</td>
      <td>Réunir des textes, les traiter et les explorer dans un atelier de recherche en ligne</td>
      <td><strong>En aval ou à côté</strong>. Préparez la source TEI hors ligne dans Grognard, puis emportez-la dans DocuSky lorsque l’analyse de corpus est le but.</td>
    </tr>
    <tr>
      <th scope="row"><a href="https://catma.de/">CATMA</a></th>
      <td>Annotation et analyse de textes</td>
      <td>Plateforme web par projets · logiciel libre, souvent hébergé</td>
      <td>Inventer ses propres jeux de balises, annoter, compter, travailler en équipe</td>
      <td><strong>À côté</strong> lorsque le tagset <em>est</em> la recherche. Grognard suppose plutôt un schéma TEI et une édition à transmettre ; rien n’interdit d’annoter autrement un autre état du texte.</td>
    </tr>
    <tr>
      <th scope="row"><a href="https://evt-project.github.io/start.html">EVT</a> · <a href="https://teipublisher.com/">TEI Publisher</a></th>
      <td>Publication d’éditions numériques</td>
      <td>Projets web à partir de fichiers TEI déjà préparés · logiciels libres</td>
      <td>Rendre une édition consultable : fac-similé, texte, navigation, recherche</td>
      <td><strong>En aval</strong>. Grognard ne remplace pas un site d’édition. Il peut préparer les fichiers que ces outils affichent.</td>
    </tr>
    <tr class="is-grognard">
      <th scope="row"><a href="/">Grognard</a></th>
      <td>Atelier d’édition savante, surtout textes d’Asie orientale</td>
      <td>Application de bureau · fichiers locaux · AGPL-3</td>
      <td>Transcrire et baliser en TEI, désambiguïser avec des autorités locales, traduire en fichiers compagnons, valider, tenir une base d’entités</td>
      <td>Le moment où l’on lit, encode et identifie sur sa machine, dans un dossier que l’on peut aussi ouvrir ailleurs.</td>
    </tr>
  </tbody>
</table>
</div>

These categories are broad. A tool may be installed locally, extended through plugins, or connected to other services.

## Questions to ask before choosing

- **Where should the files live?** On your computer, in a Git repository, or in a shared web service?
- **Who controls the tool?** Open-source software installed locally, a commercial license, or a hosted platform whose terms may change?
- **What result do you need?** A transcription, a set of annotations, a searchable database, a published edition, or several of these?
- **Who needs to validate the decisions?** One person, a team, or a community gathered around an online service?
- **How much control do you need?** A guided interface, a general-purpose XML editor, or the ability to edit the structure directly?

Grognard produces open XML-TEI files: you can review them in oXygen, version them in Git, or pass them to EVT or TEI Publisher.

## Project documentation

For more information: [oXygen XML Editor](https://www.oxygenxml.com/features.html), [Transkribus](https://www.transkribus.org/), [LEAF-Writer](https://leaf-writer.leaf-vre.org/), [X-MARKUS](https://xmarkus.xmarkus.org/XmarkusPlatform-Introduction.html), [DocuSky](https://docusky.org.tw/DocuSky/home/v5/?l=en), [CATMA](https://catma.de/), [EVT](https://evt-project.github.io/start.html), and [TEI Publisher](https://teipublisher.com/). Software changes over time; check versions, licenses, and hosting arrangements before starting a new project.
