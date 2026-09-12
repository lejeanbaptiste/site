---
title: Basic features
menu: Basic features
visible: false
template: guide-detail
guide_portrait: guide-basic.png
guide_intro: "From installation to your first saved and validated XML document."
guide_toc:
  - { id: installer, label: Install }
  - { id: mises-a-jour, label: Updates }
  - { id: projet, label: Project }
  - { id: document, label: Open a document }
  - { id: visuel, label: Visual view }
  - { id: traduction, label: Translation }
  - { id: balisage, label: Markup }
  - { id: desambiguïser, label: Disambiguate }
  - { id: pourquoi-faire, label: Why use it? }
---

<p><a class="text-link" href="/guide">← Back to the guide</a></p>

<a id="installer"></a>
## 1. Install the application

From the [Download](/download) page, download the version for your system, then install Grognard with the graphical installer.

When you open the application for the first time, Grognard asks for three pieces of information:

- **Your full name:** the name you want recorded in the data you produce.
- **The location of your personal data:** choose another folder if you do not want to use the location suggested by the system.
- **Enable advanced features:** this option primarily concerns direct XML editing. If you leave it disabled, Grognard hides the following tools:
  - switching to **Source** mode (raw XML);
  - the **Validation** panel (the schema error report);
  - the validation-error indicator in the bottom bar.

  The rest of the workflow—transcription in **Visual** mode, translation, markup, and disambiguation—remains available. You can re-enable XML editing later: open **Settings** from the menu (**Grognard → Settings** on Mac, or **Settings** in the application menu on Windows and Linux; shortcut <kbd>⌘</kbd>/<kbd>Ctrl</kbd> + <kbd>,</kbd>), open the **Safeguards** tab, and enable **Allow direct editing of XML code**. For a first session, leaving this option disabled is reasonable.

Grognard is a desktop application: your files and data remain on your computer. Normal editing does not require an account, and Grognard does not collect your data. For more information, see the [privacy policy](/privacy).

<a id="mises-a-jour"></a>
## 2. Updates

On Windows and macOS, Grognard receives and applies updates automatically while you use it. On Linux, download the updated `.deb` package from the [Download](/download) page (Debian and Ubuntu). The contents of these updates are documented in the [release notes](https://github.com/grognard/grognard/releases).

<a id="projet"></a>
## 3. Create or open a project

To begin editing documents, first create a project or open an existing one. Use <kbd>⌘</kbd>/<kbd>Ctrl</kbd> + <kbd>O</kbd>, or choose **File → Open project**.

A project is not just an XML file: it is a folder on your computer containing the texts, schema, translations, and entity database. Opening this folder as a project allows Grognard to maintain the links between these elements.

<figure class="guide-screenshot-thumb">
  <a href="/images/screenshot_disambiguation_schema_select.png"><img src="/images/screenshot_disambiguation_schema_select.png" alt="Schema-selection dialog, showing TEI All"></a>
  <figcaption>Choose the project schema</figcaption>
</figure>

When you create a new project, Grognard asks you to choose a schema. Unless you plan to work extensively with CBETA Buddhist texts, or have another specific reason to choose a particular configuration, select the default schema: `TEI-ALL`.

A schema is the grammar of your document: it defines the permitted tags and attributes, and how they may be organized. `TEI-ALL` is the general-purpose schema offered by default and is suitable for most projects.

<figure class="guide-screenshot-thumb">
  <a href="/images/screenshot_disambiguation_project_settings.png"><img src="/images/screenshot_disambiguation_project_settings.png" alt="Project settings: source language, entity database, translation"></a>
  <figcaption>Language, entities, translation</figcaption>
</figure>

Grognard then asks you to define the project corpus settings. The most important are:

- **Langue source** : la langue de vos documents.
- **Sync entities with the central database:** disable this only if you are working on a project corpus shared with other users.
- **Translation** (alignment unit): the unit into which you want to divide the text for translation. Choose **Paragraph (1:1)** or, for texts structured only by pages, **Ab (anonymous block, e.g. folio)**.
- **Langues** : les langues vers lesquelles vous traduirez vos textes, dans la section **Traduction**.

Remember to save your settings with the button at the bottom of the page.

The first time you create or open a project in a given language, Grognard offers to install the resource packs and plugins intended for that language. You can later access them through **Settings → Resource packs** and **Settings → Plugins**.

<a id="document"></a>
## 4. Open a document

When you open an existing project, open the **file navigation panel** <img class="guide-ui-icon" src="/user/themes/lejeanbaptiste/images/ui-icons/tab_explorer.png" alt="File explorer"> to browse your corpus. A left click opens a file. A right click opens a context menu that lets you rename, move, or delete it.

<figure class="guide-screenshot-thumb">
  <a href="/images/screenshot_disambiguation_new_doc.png"><img src="/images/screenshot_disambiguation_new_doc.png" alt="Creating a new document in Grognard"></a>
  <figcaption>Create a new document</figcaption>
</figure>

To create a new file in the current project, use <kbd>⌘</kbd>/<kbd>Ctrl</kbd> + <kbd>N</kbd>, or choose **File → New file**. Grognard creates the document from the template corresponding to the project schema. When you save it for the first time, choose its name and location within the project folder.

You can import local files as well as online digital editions from different sources and in different formats. For more information, see the [Files](/guide/fichiers) page.

For a first session, open only a few paragraphs. This lets you check the result before importing or modifying an entire corpus.

To save a document, use the **Save** button <img class="guide-ui-icon" src="/user/themes/lejeanbaptiste/images/ui-icons/save.png" alt="Save"> or <kbd>⌘</kbd>/<kbd>Ctrl</kbd> + <kbd>S</kbd>. Save regularly, especially after changing markup or attributes, so that your changes are preserved in the project file.

<a id="visuel"></a>
## 5. Write in the visual view

Use the visual view to create or edit the transcription of your main source. Unlike a word processor, Grognard does not aim to give you complete freedom over how text is entered and formatted. Its features are deliberately restrained, favoring simplicity, consistency, and machine readability.

You can switch at any time between **Visual** and **Source** mode. The former lets you work on the text without looking at XML; the latter shows the structure as it will be saved. You do not need to edit XML by hand at first, but it is useful to know where to inspect it when you want to understand or control the document. For advanced XML editing, see [Monaco and the XML editor](/guide/fonctions-avancees#editeur-xml).

### Structure paragraphs

To create a new paragraph, place the cursor where you want it, press <kbd>Enter</kbd>, select `p`, then press <kbd>Enter</kbd> again. When you copy and paste text, Grognard automatically encodes paragraph breaks.

### Mark editorial changes

To add, remove, or correct a passage as part of a critical edition, click **Mark editorial changes** <img class="guide-ui-icon" src="/user/themes/lejeanbaptiste/images/ui-icons/tool_correction.png" alt="Mark editorial changes">. A panel opens where you can record the relationship between the original and corrected forms.

In a text containing editorial corrections, use the correction-display button to cycle through **Show original only** <img class="guide-ui-icon" src="/user/themes/lejeanbaptiste/images/ui-icons/history.png" alt="Show original only">, **Show correction only** <img class="guide-ui-icon" src="/user/themes/lejeanbaptiste/images/ui-icons/auto-fix.png" alt="Show correction only">, and **Show original and correction** <img class="guide-ui-icon" src="/user/themes/lejeanbaptiste/images/ui-icons/layers.png" alt="Show original and correction">. This lets you review the source reading, edited reading, and side-by-side presentation separately.

### Lock the main source

As your work progresses, you may no longer need to enter or modify the main source. Keeping the text in an editable field can then become a risk: an accidental keystroke or a “find and replace” operation could alter its wording.

To protect the source, click **Lock text** <img class="guide-ui-icon" src="/user/themes/lejeanbaptiste/images/ui-icons/lock-open.png" alt="Lock text">. The text can no longer be edited or deleted, while markup operations remain available. The icon changes to a closed padlock <img class="guide-ui-icon" src="/user/themes/lejeanbaptiste/images/ui-icons/lock.png" alt="Text locked">. You can unlock it when you need to resume the transcription.

<a id="traduction"></a>
## 6. Translate in the translation pane

<figure class="guide-screenshot-thumb">
  <a href="/images/screenshot_translation.png"><img src="/images/screenshot_translation.png" alt="Translation pane beside the source text"></a>
  <figcaption>The translation pane</figcaption>
</figure>

Click the **translation pane** icon <img class="guide-ui-icon" src="/user/themes/lejeanbaptiste/images/ui-icons/translate.png" alt="Translation"> to open it.

Grognard keeps translations separate from the main source while attaching them to the same source text. You can therefore write several parallel translations in different languages without duplicating or modifying the source.

The translation pane includes spelling and grammar checking powered by LanguageTool. Grammar checking requires Java. For more about language assistance, see [Advanced features](/guide/fonctions-avancees#traduction).

It also provides the essential word-processing features needed for a scholarly translation: formatting, footnotes, and Zotero integration.

If you have an API key, the translation pane can also generate a translation suggestion using an AI service. This feature is optional; its operation and safeguards are described in [Advanced features](/guide/fonctions-avancees#ia).

<a id="balisage"></a>
## 7. Mark up the text

<figure class="guide-screenshot-thumb">
  <a href="/images/screenshot_tagging_manual.png"><img src="/images/screenshot_tagging_manual.png" alt="Selecting a passage and choosing a tag in Grognard"></a>
  <figcaption>Manual markup</figcaption>
</figure>

Grognard is first and foremost an XML markup tool for extracting and analyzing data in the digital humanities. It automates the tedious parts of this work and makes the tags you add immediately useful.

Even if you do not intend to turn your text into structured data, identifying its main entities is useful: people, places, works, dates, organizations, and official titles. Do this manually by selecting a word, pressing <kbd>Enter</kbd>, and choosing the relevant category. You can also automate the process with **Automatic markup** <img class="guide-ui-icon" src="/user/themes/lejeanbaptiste/images/ui-icons/tag-plus.png" alt="Automatic markup">, which offers to process the entire text.

### The “tag bomb”

<figure class="guide-screenshot-thumb">
  <a href="/images/screenshot_tagging_bomb.png"><img src="/images/screenshot_tagging_bomb.png" alt="Configuration window for list-based automatic markup"></a>
  <figcaption>List-based markup</figcaption>
</figure>

The first automatic-markup mode, the “tag bomb,” mechanically searches the text for every occurrence of words found in your personal database, Grognard’s built-in tables, and language-resource packs. These lists may contain thousands of entries. The packs are assembled from open authority databases: Wikidata, BnF/NDL, CBDB, DILA, CHGIS, VIAF, BDRC, and Norbert.

### AI suggestions

The second mode, **AI suggestions**, sends your source to a language model so it can suggest markup. The model sees the source text but never modifies it directly. It returns a map or list of correspondences that Grognard uses to place tags mechanically, without changing the document’s words, punctuation, or segmentation.

### Review suggestions

<figure class="guide-screenshot-thumb">
  <a href="/images/screenshot_tagging_validation.png"><img src="/images/screenshot_tagging_validation.png" alt="Panneau de validation des suggestions de balisage"></a>
  <figcaption>Review suggestions</figcaption>
</figure>

After automatic markup, Grognard asks you to review the results and discard false positives. The review is designed to be quick: press <kbd>Enter</kbd> to accept, <kbd>Backspace</kbd> to reject, <kbd>Shift</kbd> + <kbd>Enter</kbd> to accept all occurrences, or <kbd>Shift</kbd> + <kbd>Backspace</kbd> to reject them all.

<figure class="guide-screenshot-thumb">
  <a href="/images/screenshot_highlighting.png"><img src="/images/screenshot_highlighting.png" alt="Panel for adjusting tag colors"></a>
  <figcaption>Read tags visually</figcaption>
</figure>

Once the basic elements have been identified, open the **CSS panel** <img class="guide-ui-icon" src="/user/themes/lejeanbaptiste/images/ui-icons/tab_highlight.png" alt="CSS">. You can choose text and highlight colors there to distinguish the different entity categories visually.

<a id="desambiguïser"></a>
## 8. Disambiguate entities

Markup indicates that a passage refers to a person, place, work, or another type of entity. **Disambiguation** specifies which entity it is by associating it with a stable identifier. This distinguishes a surface form—the words present in the document—from the thing those words refer to.

This distinction is essential for producing structured data. The same character may be mentioned under several names, while several people may share the same name. Without an identifier, a machine can count only character strings; with one, it can group mentions that refer to the same entity, distinguish them from namesakes, and link them to additional information.

Doing this properly would require building and maintaining a relational database: defining its structure, assigning unique identifiers, grouping variants, creating concordances between authorities, correcting duplicates, and preserving consistency across projects. That is a considerable investment, generally disproportionate for a person or team that simply wants to edit a corpus.

That is precisely what Grognard does for you. The application creates a local entity database for your project, ready to use offline. It assigns identifiers, preserves the different surface forms of an entity, and can build concordances with the authorities you have chosen. No authority is complete, so you can also create a record when the entity you need does not yet exist, or add to a record for the particular needs of your corpus.

### Make the link

<figure class="guide-screenshot-thumb">
  <a href="/images/screenshot_disambiguation.png"><img src="/images/screenshot_disambiguation.png" alt="Disambiguation panel with candidates to compare"></a>
  <figcaption>Compare candidates</figcaption>
</figure>

After marking up a mention, click **Disambiguate** <img class="guide-ui-icon" src="/user/themes/lejeanbaptiste/images/ui-icons/disambiguate.png" alt="Disambiguation">. For each marked-up form, Grognard suggests matching entities from the authorities enabled in your settings. Review the suggestions—especially where namesakes exist—then choose the correct entity. If none is suitable, create a new entity in your database.

<figure class="guide-screenshot-thumb">
  <a href="/images/screenshot_lookup.png"><img src="/images/screenshot_lookup.png" alt="Search for an entity in the authorities"></a>
  <figcaption>Search the authorities</figcaption>
</figure>

You can also perform this search from the **Attributes** panel <img class="guide-ui-icon" src="/user/themes/lejeanbaptiste/images/ui-icons/label.png" alt="Attributes">. The link is saved in the document as an identification attribute, while the entity’s full record remains in the project database.

<figure class="guide-screenshot-thumb">
  <a href="/images/screenshot_disambiguation_map.png"><img src="/images/screenshot_disambiguation_map.png" alt="Place-disambiguation map"></a>
  <figcaption>Compare places on the map</figcaption>
</figure>

Nearby places can also be compared on a map when the entity type supports it.

<a id="pourquoi-faire"></a>
## 9. Why use it?

### 1. A database for everything else

<figure class="guide-screenshot-thumb">
  <a href="/images/screenshot_db_viewer.png"><img src="/images/screenshot_db_viewer.png" alt="Entity database window"></a>
  <figcaption>Browse your records</figcaption>
</figure>

Once a tag has been disambiguated, you no longer need to return to Google to find information about a person, work, place name, or other entity. Basic data, variants, and authority links are centralized in your own database, which you can consult offline. The **Entity database** panel <img class="guide-ui-icon" src="/user/themes/lejeanbaptiste/images/ui-icons/database.png" alt="Entity database"> also lets you add notes to each record, much like Zotero—but not only for books.

### 2. An extension for word processors

<figure class="guide-screenshot-thumb">
  <a href="/images/screenshot_word_plugin.png"><img src="/images/screenshot_word_plugin.png" alt="Grognard extension in a word processor"></a>
  <figcaption>Reuse your entities in Word</figcaption>
</figure>

When writing an article, retyping and formatting the names, Chinese characters, translations, and dates for each entity can be as tedious as bibliographies once were. The Grognard extension for **Word** (desktop version, still experimental) automates this work from your entity database, “Zotero-style.” **LibreOffice** and **OnlyOffice** integrations are planned but are not yet distributed.

### 3. More controlled AI translation

AI tools are increasingly good at translating historical texts. They often handle the data most valuable to us superficially or misleadingly, however: the identification, understanding, exact translation, and formatting of dates, proper names, and titles. Once the text has been marked up and disambiguated, Grognard replaces entities with variables in the text sent to the AI. The AI translates the surrounding text, and Grognard then re-inserts the entities as fields. You can therefore define translation and formatting consistently across your corpus without allowing the model to rewrite sensitive data.

For Chinese and Japanese texts, dates can be handled with particular precision using a local version of [Sanmiao](https://github.com/PotatoSinology/sanmiao) (Daniel Patrick Morgan), a converter designed for the scholarly requirements of the history of astronomy.

Official titles receive similar treatment. Grognard does not redistribute Hucker’s dictionary or its translations. When sinological packs draw on data they can legally access, that data is used locally to produce working resources. **HuckBot5000** (English) and **MaxiRicci7000** (French) are models and algorithms trained to extend this “Hucker-style” translation method; they are not a redistribution of the dictionary itself. Once titles are marked up and disambiguated, they can be translated consistently throughout the corpus.

A correctly identified entity is therefore not only easier to find; it becomes reusable data for your translations, articles, and analyses.

### 4. Your digital-humanities project

Structured data lies at the heart of every digital-humanities project. Working with Grognard, you produce it as you read, transcribe, and translate: the data is marked up, disambiguated, and checked by a human, even if your ultimate goal remains a traditional project.

Disambiguation enables several uses:

- find every mention of the same person, place, or work, even when its form changes;
- centralize information, variants, authority links, and notes in your entity database;
- reuse this data in your translations, articles, and word-processing documents;
- prepare searches, lists, tables, timelines, or maps from the corpus.

The questions you ask, the analyses you conduct, and the forms your results take are yours. They may require code specific to your project. But you will already have completed the longest and hardest part: turning your work on primary sources into data that is readable, verifiable, and reusable.

To understand where these entities live and how to maintain them, see the [Database](/guide/base-de-donnees) page.
