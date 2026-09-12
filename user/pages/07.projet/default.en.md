---
title: The project
menu: Project
body_classes: comparison-page
template: project
project_kicker: "Open-source software for scholarly editing"
project_intro: "Grognard is developed by [Daniel Patrick Morgan](https://www.crcao.fr/membre/daniel-patrick-morgan/) (CNRS-CRCAO). Source code: [GitHub](https://github.com/grognard/grognard). Open-source software licensed under [AGPL-3](https://www.gnu.org/licenses/agpl-3.0.html), Grognard is a desktop fork of [LEAF-Writer](https://leaf-writer.leaf-vre.org/) (also AGPL-3)."
---

<h2 id="equipe">Team</h2>

The first versions are being tested with [Alexis Lycas](https://www.crcao.fr/membre/alexis-lycas/), [Jean-Baptiste Georges-Picot](https://www.crcao.fr/membre/jean-baptiste-georges-picot/), [Chandra Chiara Ehm](https://www.crcao.fr/membre/chandra-chiara-ehm/), and [Garance Chao-Zhang](https://www.crcao.fr/membre/garance-chao-zhang/).

Scholarly data (CBDB, DILA, CHGIS, etc.): [Resources](/ressources). Site information: [Legal notice](/legal).

## Reused software

Embedded or adapted components. npm’s transitive dependencies are listed in [THIRD_PARTY_NOTICES.md](https://github.com/grognard/grognard/blob/main/THIRD_PARTY_NOTICES.md).

<div class="comparison-matrix-wrap">
<table>
  <thead>
    <tr>
      <th scope="col">Project</th>
      <th scope="col">Role in Grognard</th>
      <th scope="col">License</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row"><a href="https://leaf-writer.leaf-vre.org/">LEAF-Writer</a> / CWRC-Writer</th>
      <td>Editor core (visual markup, entities, schema). Grognard is an Electron fork.</td>
      <td>AGPL-3.0</td>
    </tr>
    <tr>
      <th scope="row"><a href="https://www.tiny.cloud/">TinyMCE</a></th>
      <td>Visual editor, extensively adapted in LEAF-Writer.</td>
      <td>GPL-2.0 (embedded open-source version)</td>
    </tr>
    <tr>
      <th scope="row"><a href="https://github.com/microsoft/monaco-editor">Monaco Editor</a></th>
      <td>Source-mode XML editing.</td>
      <td>MIT</td>
    </tr>
    <tr>
      <th scope="row"><a href="https://www.electronjs.org/">Electron</a></th>
      <td>Desktop application (Chromium + Node).</td>
      <td>MIT</td>
    </tr>
    <tr>
      <th scope="row"><a href="https://github.com/PotatoSinology/sanmiao">Sanmiao</a></th>
      <td>Chinese, Japanese, and Korean dates, by Daniel Patrick Morgan.</td>
      <td>MIT</td>
    </tr>
    <tr>
      <th scope="row"><a href="https://github.com/grognard/plugins">Grognard plugins</a></th>
      <td>Norbert, dates, and Kanripo / CBETA / Daozang / BDRC imports. AGPL-3 code; corpora: [Resources](/ressources).</td>
      <td>AGPL-3.0 (code)</td>
    </tr>
    <tr>
      <th scope="row">JSZip, Mammoth, @xmldom/xmldom</th>
      <td>Archives, Word conversion, XML DOM.</td>
      <td>MIT / BSD-2-Clause, depending on the package</td>
    </tr>
    <tr>
      <th scope="row"><a href="https://fontawesome.com/license/free">Font Awesome Free</a></th>
      <td>Interface icons.</td>
      <td>CC BY 4.0 icons · SIL OFL 1.1 fonts · MIT code</td>
    </tr>
    <tr>
      <th scope="row">Lato</th>
      <td>Interface font.</td>
      <td>SIL Open Font License 1.1</td>
    </tr>
    <tr>
      <th scope="row"><a href="https://www.dicebear.com/styles/adventurer">Adventurer</a> (Lisa Wischofsky)</th>
      <td>Leaderboard avatar layers. Cropped and occasionally recolored.</td>
      <td><a href="https://creativecommons.org/licenses/by/4.0/">CC BY 4.0</a></td>
    </tr>
  </tbody>
</table>
</div>

Python: [PSF License](https://docs.python.org/3/license.html). LemMinX: Eclipse Public License. LanguageTool (optional): LGPL. Workshops: [Workshop CRCAO](https://github.com/lejeanbaptiste/workshop_CRCAO).
