---
title: Ressources
menu: Ressources
slug: ressources
body_classes: comparison-page
---

## Données, packs et greffons

Grognard lui-même est un logiciel [AGPL-3](https://www.gnu.org/licenses/agpl-3.0.html). Les bases savantes **ne sont pas** dans l’installeur : elles s’ajoutent à la demande, restent sur votre disque, et **conservent la licence de leur source**. C’est la page à lire avant d’accepter environ 600&nbsp;Mo de CBDB.

Deux étages, pour les autorités :

1. **Packs de balisage** (fichiers NDJSON) — ce que le balisage automatique et la désambiguïsation consultent.
2. **Bases de référence** (sqlite ou XML) — fiches plus riches au moment de lier une personne, pas pour parcourir tout le corpus.

Les mentions ci-dessous reprennent les manifestes du projet (`upstream/pins.json`, packs compilés, greffons). Elles ne remplacent pas les conditions officielles des producteurs. Les licences évoluent.

## Packs d’autorité

<div class="comparison-matrix-wrap">
<table>
  <thead>
    <tr>
      <th scope="col">Source</th>
      <th scope="col">Rôle dans Grognard</th>
      <th scope="col">Licence déclarée</th>
      <th scope="col">Ce que cela implique</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row"><a href="https://projects.iq.harvard.edu/cbdb">CBDB</a></th>
      <td>Personnes et offices chinois ; pack de balisage plus, en option, une sqlite «&nbsp;personne&nbsp;» allégée pour enrichir les fiches (~600&nbsp;Mo pour le dump amont ; Grognard ne redistribue pas le dump HuggingFace complet).</td>
      <td><a href="https://creativecommons.org/licenses/by-nc-sa/4.0/">CC BY-NC-SA 4.0</a></td>
      <td>Attribuez CBDB (Harvard FAS, Academia Sinica, Université de Pékin). Usage <strong>non commercial</strong> ; les dérivés doivent rester sous la même licence. Les traductions d’offices marquées «&nbsp;(Hucker)&nbsp;» dans CBDB <em>ne sont pas</em> recopiées dans les packs publiés.</td>
    </tr>
    <tr>
      <th scope="row"><a href="https://authority.dila.edu.tw/">DILA</a></th>
      <td>Personnes et lieux des études bouddhiques ; XML de référence (~85&nbsp;Mo).</td>
      <td>CC BY-SA 3.0</td>
      <td>Attribuez le Dharma Drum Institute of Liberal Arts. Le partage à l’identique s’applique aux dérivés.</td>
    </tr>
    <tr>
      <th scope="row"><a href="https://dataverse.harvard.edu/dataverse/chgis_v6">CHGIS v6</a></th>
      <td>Lieux administratifs historiques (points), compilés dans le pack chinois avec CBDB, DILA et Wikidata. Ce n’est pas une couche SIG autonome : Grognard s’en sert pour le balisage et la désambiguïsation des toponymes.</td>
      <td>Usage académique (EULA CHGIS)</td>
      <td>Les shapefiles Dataverse ne sont pas redistribués tels quels. Un extrait compilé (lieux) <strong>est</strong> dans le pack chinois. Attribution obligatoire : Fairbank Center (Harvard) et Centre de géographie historique de Fudan, 2016.</td>
    </tr>
    <tr>
      <th scope="row">Norbert</th>
      <td>Personnes, offices, titres nobiliaires, indices contextuels (dynastie + poste + lieu). Packs plus sqlite de référence.</td>
      <td>Export d’autorité réduit (personnes, offices, titres), compilé pour Grognard</td>
      <td>Attribuez <strong>Daniel Patrick Morgan</strong> (auteur de Norbert). Une instance web peut être hébergée chez Huma-Num ; ce n’est pas la paternité du projet. Grognard n’embarque pas un dump «&nbsp;tout le laboratoire&nbsp;», seulement l’extrait d’autorité compilé.</td>
    </tr>
    <tr>
      <th scope="row"><a href="https://www.wikidata.org/">Wikidata</a></th>
      <td>Personnes, lieux, organisations, œuvres (chinois, japonais, tibétain) ; concordances VIAF, parfois BDRC via les identifiants déjà dans Wikidata.</td>
      <td>CC0</td>
      <td>Données du graphe Wikidata. Les textes de Wikipédia, s’ils apparaissent en description, relèvent d’autres licences : Grognard s’appuie d’abord sur les entités structurées.</td>
    </tr>
    <tr>
      <th scope="row"><a href="https://id.ndl.go.jp/information/termsofuse_en/">Web NDL Authorities</a></th>
      <td>Personnes, lieux, organisations, œuvres pour les projets japonais.</td>
      <td>Conditions NDL (réutilisation avec attribution)</td>
      <td>La Bibliothèque nationale de la Diète autorise la réutilisation, y compris commerciale, <strong>à condition de citer</strong> Web NDL Authorities / 国立国会図書館.</td>
    </tr>
    <tr>
      <th scope="row">HuckBot5000</th>
      <td>Gloses anglaises d’offices chinois là où CBDB n’a pas de traduction redistribuable.</td>
      <td>Interne / dérivé (pas le dictionnaire de Hucker)</td>
      <td>Grognard <strong>ne redistribue pas</strong> Charles O. Hucker, <em>A Dictionary of Official Titles in Imperial China</em>. Les gloses expédiées sont générées (règles ou modèle) puis filtrées pour ne pas recopier le libellé Hucker connu.</td>
    </tr>
    <tr>
      <th scope="row">MaxiRicci7000</th>
      <td>Gloses françaises d’offices, même logique.</td>
      <td>Gloses générées, traitées comme redistribuables par le projet</td>
      <td>Ce n’est pas le <em>Grand Ricci</em>. Provenance indiquée sur les fiches (<code>MaxiRicci7000</code>). Décision de risque du projet, distincte de l’archive «&nbsp;collision Hucker&nbsp;» qui, elle, n’est pas publiée.</td>
    </tr>
  </tbody>
</table>
</div>

Les identifiants BDRC que vous voyez en désambiguïsation viennent en pratique de **Wikidata** (propriété P2477), pas d’un dump BDRC redistribué. Un fichier d’autorités BDRC privé existe pour la recherche interne ; il **n’est pas** un pack utilisateur.

## Greffons

Le *code* des greffons est AGPL-3, comme Grognard. Les **corpus** qu’ils touchent ont leur propre régime.

<div class="comparison-matrix-wrap">
<table>
  <thead>
    <tr>
      <th scope="col">Greffon</th>
      <th scope="col">Fonction</th>
      <th scope="col">Données</th>
      <th scope="col">Licence / conditions</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">Dates est-asiatiques (Sanmiao)</th>
      <td>Repérer et convertir ères, règnes, dates sexagésimales (Chine, Japon, Corée).</td>
      <td>Moteur <a href="https://github.com/PotatoSinology/sanmiao">Sanmiao</a> (calendriers), par Daniel Patrick Morgan ; pas un corpus de textes.</td>
      <td>Sanmiao : MIT. Greffon : AGPL-3. Huma-Num peut héberger une démo web ; l’auteur reste D. P. Morgan.</td>
    </tr>
    <tr>
      <th scope="row">Norbert</th>
      <td>Balisage contextuel des personnes (dynastie, office, origine) et packs d’autorité associés.</td>
      <td>Voir le pack Norbert ci-dessus.</td>
      <td>Code AGPL-3 ; données : attribuez Daniel Patrick Morgan (Norbert).</td>
    </tr>
    <tr>
      <th scope="row">Import Kanripo</th>
      <td>Cloner une œuvre du Kanseki Repository et la convertir en TEI (un juan par fichier), ponctuation parallèle, gaiji.</td>
      <td>Les textes viennent des dépôts Git Kanripo au moment de l’import, plus des tables locales (index, concordances).</td>
      <td>Respectez la licence de <em>chaque</em> dépôt Kanripo (souvent Creative Commons, à vérifier sur l’œuvre). Grognard ne vous absout pas de cette obligation.</td>
    </tr>
    <tr>
      <th scope="row">Import CBETA</th>
      <td>Importer la P5 CBETA (漢文電子佛典), découper par juan, traduire le schéma vers le TEI du projet.</td>
      <td>Le corpus xml-p5 est cloné depuis GitHub à l’installation s’il n’est pas déjà là.</td>
      <td>Les textes restent sous les <a href="https://www.cbeta.org/">conditions CBETA</a> (association 中華電子佛典). Usage savant, attribution, pas une licence «&nbsp;faites-en un produit commercial&nbsp;» implicite.</td>
    </tr>
    <tr>
      <th scope="row">Import Daozang</th>
      <td>Chercher et importer ~1&nbsp;500 textes du canon taoïste ponctués, corpus local (~77&nbsp;Mo).</td>
      <td>Transcriptions <strong>方瞳子源 (Fang Tongzi)</strong>, archive amont <code>DaoCanon_txt_chm.rar</code>.</td>
      <td>Le greffon ne télécharge rien chez un tiers à l’usage. La transcription n’est pas du domaine public par magie : citez Fang Tongzi ; ne redistribuez pas le corpus hors des termes de l’amont.</td>
    </tr>
    <tr>
      <th scope="row">Import BDRC</th>
      <td>Importer un volume d’etext depuis le lecteur BUDA vers le TEI du projet.</td>
      <td>Fetch live sur l’interface publique BDRC ; <strong>aucun</strong> corpus bundlé.</td>
      <td>BDRC interdit le moissonnage sauvage de son catalogue. L’import suit l’interface publique prévue. Respectez les conditions d’utilisation BDRC / BUDA pour le texte obtenu.</td>
    </tr>
  </tbody>
</table>
</div>

Wikisource, Kanripo et BDRC peuvent aussi passer par l’**extension de navigateur** : ce sont les mêmes corpus, donc les mêmes devoirs de citation.

## Autres téléchargements optionnels

<div class="comparison-matrix-wrap">
<table>
  <thead>
    <tr>
      <th scope="col">Ressource</th>
      <th scope="col">Rôle</th>
      <th scope="col">Licence</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">Tuiles de carte hors ligne</th>
      <td>Fond de carte pour les lieux, jusqu’à 500&nbsp;Mo, via Protomaps / données OpenStreetMap.</td>
      <td>Données © contributeurs OpenStreetMap, <a href="https://opendatacommons.org/licenses/odbl/">ODbL</a>. Attribution dans l’application.</td>
    </tr>
    <tr>
      <th scope="row">LanguageTool</th>
      <td>Grammaire du volet de traduction (~220&nbsp;Mo), plus Java&nbsp;17 (~40&nbsp;Mo) sur macOS/Windows.</td>
      <td>LanguageTool : LGPL. Java Temurin : licence Oracle/Eclipse Temurin habituelle. Indépendant de Grognard : vous pouvez ne jamais l’installer.</td>
    </tr>
    <tr>
      <th scope="row">N-grammes anglais LanguageTool</th>
      <td>Améliore certaines confusions ; plusieurs gigaoctets.</td>
      <td>Pack LanguageTool ; même famille que l’outil. Facultatif et gourmand.</td>
    </tr>
  </tbody>
</table>
</div>

Le poids de l’installeur et de ces ajouts est détaillé sur [Télécharger](/download#configuration).

## Comment citer, en pratique

- **Le logiciel :** Grognard, logiciel libre AGPL-3, fork de bureau de LEAF-Writer. Voir aussi [Mentions légales](/legal) et [THIRD_PARTY_NOTICES.md](https://github.com/grognard/grognard/blob/main/THIRD_PARTY_NOTICES.md) pour Chromium, TinyMCE, etc.
- **Une personne ou un office identifié via CBDB :** citez CBDB (et la licence NC-SA si vous republiez un extrait structuré).
- **Un lieu DILA ou CHGIS :** citez DILA ou CHGIS v6 selon la fiche.
- **Un titre d’office glosé par HuckBot / MaxiRicci :** ce n’est pas une citation de Hucker. Indiquez le système (HuckBot5000 / MaxiRicci7000) si vous publiez la glose.
- **Un juan Kanripo, CBETA, Daozang, BDRC ou Wikisource :** citez l’édition numérique amont, pas seulement Grognard.

Les ateliers et carnets du [Workshop CRCAO](https://github.com/lejeanbaptiste/workshop_CRCAO) montrent le geste sur des textes ; ils n’autorisent pas à ignorer les licences des packs.
