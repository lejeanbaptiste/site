---
title: Files
menu: Files
visible: false
template: guide-detail
guide_portrait: guide-files.png
guide_intro: "Understand what belongs in a project, import sources, and protect your work."
guide_toc:
  - { id: projet, label: Project contents }
  - { id: operations, label: Common operations }
  - { id: locaux, label: Local files }
  - { id: web, label: Web sources }
  - { id: plugins, label: Plugins }
  - { id: sauvegarder, label: Back up }
  - { id: exporter, label: Export }
  - { id: continuer, label: Continue }
---

<a id="projet"></a>
## 1. What a project contains

 A Grognard project is a folder, not an isolated file. It brings together the elements that must remain linked so the edition stays readable and reusable:

```text
mon-projet/
  my-project.project.json    project manifest
  documents/                 corpus XML texts
  schema/                    project schema, CSS, and settings
  translation.en.xml         companion file for a source
  .grognard/                 local history and hidden metadata
```

- **Your texts:** XML TEI files—or files conforming to another schema—in the folders you choose.
- **`schema/`:** the project grammar, its RNG and CSS files, and certain settings. It is installed when the project is created; do not casually replace it with the schema from another project.
- **Translations:** companion files separate from the source but linked to its units. They must travel with it.
- **Entity data:** a local database containing `entities.sqlite`, `entities.xml`, and related files, or project data linked to the central database chosen on first launch. The central database itself is outside the project folder.
- **History:** Grognard snapshots and recovery files, generally stored in a hidden project folder. Do not edit them directly.

Do not choose the entity-database folder as the project, and do not remove a single XML file from its folder expecting to preserve its translations, schema, and identifiers. To move, compress, copy to a USB drive, or version a corpus with Git, always move the entire folder.

Translation companion files follow the source when it is renamed or moved in the Explorer. Deleting a source may also offer to delete its companions; check the confirmation before continuing.

<a id="operations"></a>
## 2. Common operations

In the **file navigation panel**, a left click opens a document. A right click opens a context menu that lets you rename, move, or delete it.

To create a document, choose **File → New file** or press <kbd>⌘</kbd>/<kbd>Ctrl</kbd> + <kbd>N</kbd>. Grognard starts from the template matching the active schema; when you save for the first time, choose a name and location within the project.

The shortcut <kbd>⌘</kbd>/<kbd>Ctrl</kbd> + <kbd>S</kbd> saves the current document. Several documents can remain open in tabs: closing a tab does not close the project or delete the file.

<a id="locaux"></a>
## 3. Import local files

Choose **File → Import documents** to import one file, several files, or a folder. Grognard can convert TXT, Markdown, RTF, Word (`.docx`), ODT, and XML files into the project structure.

The conversion recognizes paragraphs and some basic structures. It does not replace editorial work: it does not decide the precise markup, entity identifiers, or source corrections for you.

If you import XML from another project, foreign `@key` identifiers are kept separate rather than reused blindly. Then check the links and entities in the target project.

After any import, open at least one result in Visual view and check the paragraphs, characters, metadata, and Source structure before operating on the entire corpus.

> **Check before scaling up.** A successful import proves only that a file was produced. Open a sample, compare it with the source, verify its provenance and validation, and only then import or transform the rest of the corpus.

<a id="web"></a>
## 4. Import from the web

### Wikisource

The **File → Import from Wikisource…** command lets you choose or paste a page and write a TEI version of it into the project. It works without a browser extension.

The Grognard browser extension is a convenient shortcut for sending Wikisource, Kanripo, or BDRC pages to the application. To install it, follow the instructions on the [Download](/download) page. Start Grognard at least once so that native messaging can be registered.

In Chromium, load the unzipped extension from the extensions page with Developer mode enabled. In Firefox, temporarily load `manifest.json` from `about:debugging`; it will be removed when the browser restarts.

<a id="plugins"></a>
## 5. Import plugins

Corpus commands appear in the **File** menu only after you enable the corresponding plugin under **Settings → Plugins**. Grognard may suggest suitable packs and plugins when you first open a project in Chinese, Classical Chinese, or Tibetan.

| Plugin | What is it for? | Result |
| --- | --- | --- |
| **Kanripo** | Premodern Chinese texts from the Kanseki Repository | A work is retrieved, and each *juan* becomes a TEI file in the project. Segmentation and punctuation tools can then be applied. |
| **CBETA** | Chinese Buddhist canon | The corpus is retrieved and divided by *juan*; CBETA P5 is converted to the project’s TEI. The schema may then belong to the CBETA family rather than `TEI-ALL`. |
| **Daozang** | Taoist texts from the Fang Tongzi corpus | The locally supplied corpus is converted without downloading from a third-party service. |
| **BDRC** | Tibetan texts from BUDA | A volume is retrieved online and converted to TEI in the project. |

These imports do not work in the same way: Kanripo, CBETA, and BDRC use or synchronize online resources, while Daozang can work from a locally supplied corpus. Retrieving a canon may take time and produce many files; check one *juan* or volume before scaling up. Preserve the source’s provenance and identifiers in the edition: Grognard facilitates import but does not become the original edition.

Manage other plugins, including those for authorities and East Asian dates, under **Settings → Plugins**. They are not required to understand how files are organized.

<a id="sauvegarder"></a>
## 6. Back up and recover your work

### Save often

Save after a coherent series of decisions, before a global find-and-replace, before changing the schema, and before an automated operation across multiple files.

### Use Grognard history

Grognard’s **Time Machine** menu keeps snapshots and lets you restore a file or project state. This is Grognard’s own history, not Apple’s Time Machine application. Restoring a project and restoring a file affect different scopes.

Snapshots are created after a successful save when a file has actually changed; saving identical content does not fill the history. **File → History…** restores a file, while **Project → Restore…** restores several files to a given state. History is local, deduplicated, and subject to retention limits: it complements Git or an external copy but does not replace them.

If the central entity database is outside the project, restoring the texts does not automatically restore that database—and vice versa. A document may then contain keys that no longer match the database state: leave the files intact and restore the correct database copy separately.

### Keep an independent copy

Also keep a copy of the folder on another disk, using macOS’s actual Time Machine, or on external media. If you use Git, version the project folder and carefully document any generated files you choose to exclude.

Avoid having two people write simultaneously to the same live folder, especially an SQLite database synchronized through Dropbox or another cloud service. The cloud is a backup or synchronization option; it is not a merge mechanism for two writing sessions.

After a serious error, stop. Note the affected file and operation, restore a known state, and then resume work. Do not try to correct the entire corpus blindly before understanding the first case.

<a id="exporter"></a>
## 7. Export and share

The **File → Export document…** command produces an exported view of the document in the formats offered by the installed version. It does not replace the project folder: translations, the schema, entities, and history may not be included.

To share a project with a colleague, compress its entire folder and include a note specifying the schema used, the Grognard version, and, if necessary, how to access the entity database. The Word, LibreOffice, or OnlyOffice add-in is a writing tool, not an export method; see [Basic features](/guide/fonctions-de-base) for more information.

To understand the entity catalog and its relationship to XML files, see the [Database](/guide/base-de-donnees) page.

<a id="continuer"></a>
## 8. Before continuing

- The project folder has a clear name and is stored in a backed-up location.
- An imported sample has been opened and reviewed in Visual view, then in Source view if necessary.
- You know where to find **Time Machine** and have at least one independent copy outside the computer.
