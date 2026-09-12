---
title: Resources
menu: Resources
slug: ressources
body_classes: comparison-page
template: resources
resources_kicker: "Data, packs, and plugins"
resources_intro: "Grognard itself is [AGPL-3](https://www.gnu.org/licenses/agpl-3.0.html) software. Scholarly databases are not included in the installer: they are added on request, remain on your disk, and retain their source licenses. Read this page before accepting approximately 600&nbsp;MB of CBDB data."
---

There are two layers to the authority data:

1. **Markup packs** (NDJSON files)—the data consulted by automatic markup and disambiguation.
2. **Reference databases** (SQLite or XML)—richer records used when linking a person, not for browsing the entire corpus.

The information below is drawn from the project manifests (`upstream/pins.json`, compiled packs, and plugins). It does not replace the producers’ official terms. Licenses may change.

## Authority packs

<div class="comparison-matrix-wrap">
<table>
  <thead>
    <tr>
      <th scope="col">Source</th>
      <th scope="col">Role in Grognard</th>
      <th scope="col">Stated license</th>
      <th scope="col">What this means</th>
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

The BDRC identifiers you see during disambiguation come in practice from **Wikidata** (property P2477), not from a redistributed BDRC dump. A private BDRC authority file exists for internal research; it is **not** a user pack.

## Plugins

The *code* for the plugins is AGPL-3, like Grognard. The **corpora** they access are governed by their own terms.

<div class="comparison-matrix-wrap">
<table>
  <thead>
    <tr>
      <th scope="col">Plugin</th>
      <th scope="col">Function</th>
      <th scope="col">Data</th>
      <th scope="col">License / terms</th>
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

Wikisource, Kanripo, and BDRC can also be accessed through the **browser extension**: the corpora are the same, and so are the citation obligations.

## Other optional downloads

<div class="comparison-matrix-wrap">
<table>
  <thead>
    <tr>
      <th scope="col">Resource</th>
      <th scope="col">Role</th>
      <th scope="col">License</th>
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

The size of the installer and these additions is detailed on the [Download](/download#configuration) page.

## How to cite in practice

- **The software:** Grognard, AGPL-3 open-source software and a desktop fork of LEAF-Writer. See also the [Legal notice](/legal) and [THIRD_PARTY_NOTICES.md](https://github.com/grognard/grognard/blob/main/THIRD_PARTY_NOTICES.md) for Chromium, TinyMCE, and other components.
- **A person or office identified through CBDB:** cite CBDB (and the NC-SA license if you republish a structured extract).
- **A DILA or CHGIS place:** cite DILA or CHGIS v6, as appropriate for the record.
- **An office title glossed by HuckBot / MaxiRicci:** this is not a citation of Hucker. Name the system (HuckBot5000 / MaxiRicci7000) if you publish the gloss.
- **A Kanripo, CBETA, Daozang, BDRC, or Wikisource juan:** cite the upstream digital edition, not Grognard alone.

The workshops and notebooks in the [CRCAO Workshop](https://github.com/lejeanbaptiste/workshop_CRCAO) demonstrate the workflow on texts; they do not waive the licenses governing the packs.
