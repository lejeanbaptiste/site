---
title: Le projet
menu: Projet
body_classes: comparison-page
---

Grognard est développé par [Daniel Patrick Morgan](https://www.crcao.fr/membre/daniel-patrick-morgan/) (CNRS-CRCAO). Code source : [GitHub](https://github.com/grognard/grognard). Logiciel libre, [GPL-2](https://www.gnu.org/licenses/old-licenses/gpl-2.0.html), fork de bureau de [LEAF-Writer](https://leaf-writer.leaf-vre.org/) (également GPL-2).

<h2 id="equipe">Équipe</h2>

Les premières versions sont éprouvées avec [Alexis Lycas](https://www.crcao.fr/membre/alexis-lycas/), [Jean-Baptiste Georges-Picot](https://www.crcao.fr/membre/jean-baptiste-georges-picot/), [Chandra Chiara Ehm](https://www.crcao.fr/membre/chandra-chiara-ehm/) et [Garance Chao-Zhang](https://www.crcao.fr/membre/garance-chao-zhang/).

Données savantes (CBDB, DILA, CHGIS, etc.) : [Ressources](/ressources). Mentions du site : [Mentions légales](/legal).

## Logiciels réutilisés

Composants embarqués ou adaptés. Les dépendances transitives d’npm sont dans [THIRD_PARTY_NOTICES.md](https://github.com/grognard/grognard/blob/main/THIRD_PARTY_NOTICES.md).

<div class="comparison-matrix-wrap">
<table>
  <thead>
    <tr>
      <th scope="col">Projet</th>
      <th scope="col">Rôle dans Grognard</th>
      <th scope="col">Licence</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row"><a href="https://leaf-writer.leaf-vre.org/">LEAF-Writer</a> / CWRC-Writer</th>
      <td>Cœur de l’éditeur (balisage visuel, entités, schéma). Grognard en est un fork Electron.</td>
      <td>GPL-2.0</td>
    </tr>
    <tr>
      <th scope="row"><a href="https://www.tiny.cloud/">TinyMCE</a></th>
      <td>Éditeur visuel, fortement adapté dans LEAF-Writer.</td>
      <td>GPL-2.0 (version open source embarquée)</td>
    </tr>
    <tr>
      <th scope="row"><a href="https://github.com/microsoft/monaco-editor">Monaco Editor</a></th>
      <td>Édition XML en mode Source.</td>
      <td>MIT</td>
    </tr>
    <tr>
      <th scope="row"><a href="https://www.electronjs.org/">Electron</a></th>
      <td>Application de bureau (Chromium + Node).</td>
      <td>MIT</td>
    </tr>
    <tr>
      <th scope="row"><a href="https://github.com/PotatoSinology/sanmiao">Sanmiao</a></th>
      <td>Dates chinoises, japonaises et coréennes, par Daniel Patrick Morgan.</td>
      <td>MIT</td>
    </tr>
    <tr>
      <th scope="row"><a href="https://github.com/grognard/plugins">Greffons Grognard</a></th>
      <td>Norbert, dates, imports Kanripo / CBETA / Daozang / BDRC. Code GPL-2 ; corpus : [Ressources](/ressources).</td>
      <td>GPL-2.0 (code)</td>
    </tr>
    <tr>
      <th scope="row">JSZip, Mammoth, @xmldom/xmldom</th>
      <td>Archives, conversion Word, DOM XML.</td>
      <td>MIT / BSD-2-Clause selon le paquet</td>
    </tr>
    <tr>
      <th scope="row"><a href="https://fontawesome.com/license/free">Font Awesome Free</a></th>
      <td>Icônes de l’interface.</td>
      <td>Icônes CC BY 4.0 · polices SIL OFL 1.1 · code MIT</td>
    </tr>
    <tr>
      <th scope="row">Lato</th>
      <td>Police de l’interface.</td>
      <td>SIL Open Font License 1.1</td>
    </tr>
    <tr>
      <th scope="row"><a href="https://www.dicebear.com/styles/adventurer">Adventurer</a> (Lisa Wischofsky)</th>
      <td>Calques de l’avatar du classement. Découpés et parfois recolorés.</td>
      <td><a href="https://creativecommons.org/licenses/by/4.0/">CC BY 4.0</a></td>
    </tr>
  </tbody>
</table>
</div>

Python : [PSF License](https://docs.python.org/3/license.html). LemMinX : Eclipse Public License. LanguageTool (optionnel) : LGPL. Ateliers : [Workshop CRCAO](https://github.com/lejeanbaptiste/workshop_CRCAO).
