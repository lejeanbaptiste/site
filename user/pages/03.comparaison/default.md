---
title: Comparer les outils
menu: Comparer les outils
slug: comparaison
body_classes: comparison-page
---

## Cinq constats, un atelier

Il n’existe pas un seul bon outil pour les humanités numériques. Grognard n’est pas « le meilleur » pour tout le monde : il occupe un **croisement** que les autres laissent vide. L’argument tient en cinq points. Le tableau plus bas dit ensuite comment s’en servir *avec* oXygen, Word, MARKUS, LEAF-Writer ou un site d’édition.

<ol class="comparison-pillars">
  <li>
    <strong>L’éditeur XML ne fait pas le travail savant</strong>
    <span>oXygen est remarquable pour écrire, valider et transformer du XML. Ce n’est pas un reproche : c’est son métier. En édition de sources, surtout est-asiatiques, on a pourtant besoin d’autre chose en plus : balisage automatique, autorités (CBDB, DILA, CHGIS, Wikidata, NDL…), calendriers historiques, une base d’entités. Ces gestes ne sont pas des greffons optionnels autour d’un IDE ; ils sont le quotidien de la lecture.</span>
  </li>
  <li>
    <strong>Ce geste-là, on le trouve surtout en ligne — avec un prix</strong>
    <span>Les plateformes qui livrent le taggage et les autorités « tout faits » (MARKUS, DocuSky, CATMA, LEAF-Writer dans un navigateur, etc.) vivent en général sur un serveur. On peut parfois les auto-héberger ; le cas le plus courant reste un service distant. Les fichiers ne sont alors plus un dossier sur le disque : on ne peut pas, en parallèle, lancer un script Python, une regex dans un éditeur de texte, un grep, un carnet Jupyter. On dépend du réseau. L’interface est celle du prestataire, donc moins souple. Et beaucoup de chercheuses et chercheurs ne veulent tout simplement pas déposer un corpus inédit — parfois sensible, parfois simplement pas encore publiable — sur la machine de quelqu’un d’autre.</span>
  </li>
  <li>
    <strong>Peu d’ateliers prennent les documents d’Asie orientale comme le cas normal</strong>
    <span>LEAF-Writer, CATMA, oXygen sont d’excellents outils généralistes. Pour un texte chinois, japonais, coréen ou tibétain, les références concrètes — concordances, calendriers, corpus Kanripo ou CBETA, autorités biographiques — se trouvaient surtout du côté de MARKUS, de DocuSky, et d’écosystèmes voisins. Grognard reprend ce centre de gravité, mais en le ramenant sur le bureau, dans du TEI que l’on possède.</span>
  </li>
  <li>
    <strong>Sans base à soi, le taggage ne capitalise pas</strong>
    <span>Annoter dans une plateforme reste utile pour explorer. Cela ne devient un savoir cumulatif que si chaque décision d’identification entre dans <em>votre</em> base, revient dans le prochain fichier, et peut être corrigée, exportée, relue. Un appareil de taggage sans cette boucle vous fait recommencer. Grognard traite le document et la base d’entités comme les deux faces du même travail.</span>
  </li>
  <li>
    <strong>Le TEI doit servir la journée de travail, pas seulement le fichier</strong>
    <span>Les autres outils répondent à une tâche : éditer du XML, annoter un corpus, publier une édition. Ils ne vous donnent pas, en retour, une base de personnes avec dates et graphies que l’on insère dans Word — mise en forme et dates comprises — au moment d’écrire un article. Ils ne conservent pas vos traductions de titres officiels chinois pour les retrouver ensuite. Ils n’offrent pas un lieu pour une traduction savante complète, critique, assistée par l’IA, liée à votre bibliothèque Zotero. Grognard est fait pour cette boucle : le balisage nourrit la base, la base nourrit l’article et la traduction. (Le complément Word est encore expérimental ; LibreOffice et OnlyOffice ne sont pas distribués.)</span>
  </li>
</ol>

C’est la combinaison, pas chaque pièce isolée, qui justifie un logiciel de plusieurs centaines de mégaoctets. Le détail du poids est sur [Télécharger](/download#configuration).

## S’en servir avec les autres

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

Les catégories sont larges. Un outil peut s’installer en local, s’étendre par greffons ou se relier à d’autres services.

## Les questions à poser avant de choisir

- **Où doivent vivre les fichiers ?** Sur votre ordinateur, dans un dépôt Git, ou dans un service web partagé ?
- **Qui possède l’outil ?** Logiciel libre installé chez vous, licence commerciale, ou plateforme hébergée dont les conditions peuvent changer ?
- **Quel est le résultat attendu ?** Une transcription, un ensemble d’annotations, une base interrogeable, une édition publiée, ou plusieurs de ces résultats ?
- **Qui doit valider les décisions ?** Une seule personne, une équipe, ou une communauté autour d’un service en ligne ?
- **Quel degré de contrôle faut-il ?** Une interface guidée, un éditeur XML généraliste, ou la possibilité de modifier directement la structure ?

Grognard produit des fichiers XML-TEI ouverts : on peut les relire dans oXygen, les versionner dans Git, les donner à EVT ou TEI Publisher.

## Documentation des projets

Pour aller plus loin : [oXygen XML Editor](https://www.oxygenxml.com/features.html), [Transkribus](https://www.transkribus.org/), [LEAF-Writer](https://leaf-writer.leaf-vre.org/), [X-MARKUS](https://xmarkus.xmarkus.org/XmarkusPlatform-Introduction.html), [DocuSky](https://docusky.org.tw/DocuSky/home/v5/?l=en), [CATMA](https://catma.de/), [EVT](https://evt-project.github.io/start.html), [TEI Publisher](https://teipublisher.com/). Les logiciels évoluent ; vérifiez versions, licences et hébergement avant de lancer un nouveau projet.
