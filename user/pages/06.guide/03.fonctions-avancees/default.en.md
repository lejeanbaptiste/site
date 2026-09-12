---
title: Advanced features
menu: Advanced features
visible: false
template: guide-detail
guide_portrait: guide-advanced.png
guide_intro: "Tools that give you more control over structure, corpora, and connected services."
guide_toc:
  - { id: editeur-xml, label: XML editor }
  - { id: valider-remplacer, label: Validate and replace }
  - { id: grande-echelle, label: Work at scale }
  - { id: carte-parametres, label: Settings }
  - { id: garde-fous, label: Safeguards }
  - { id: traduction, label: Translation }
  - { id: ia, label: AI }
  - { id: plugins, label: Plugins }
  - { id: github-confidentialite, label: GitHub and privacy }
  - { id: operation-sensible, label: Sensitive operations }
---

To open Settings, choose **Settings** or use the shortcut <kbd>⌘</kbd> + <kbd>,</kbd>. The **Project** tab applies to the open folder; the other tabs generally apply to this machine, this user, or the application.

<a id="editeur-xml"></a>

## 1. The Monaco XML editor

<figure class="guide-screenshot-thumb">
  <a href="/images/screenshot_disambiguation_monaco.png"><img src="/images/screenshot_disambiguation_monaco.png" alt="Monaco XML editor in Grognard"></a>
  <figcaption>Edit XML in Monaco</figcaption>
</figure>

The **Source view** is built on Monaco Editor, the same code editor used by Visual Studio Code. It displays the document’s XML with syntax highlighting, readable indentation, and markers that help you follow the element tree.

### Autocompletion

<figure class="guide-screenshot-thumb">
  <a href="/images/screenshot_disambiguation_xml_autofill.png"><img src="/images/screenshot_disambiguation_xml_autofill.png" alt="XML autocompletion suggestions in Monaco"></a>
  <figcaption>Complete the XML structure</figcaption>
</figure>

When you enter a tag, attribute, or value, Monaco suggests options compatible with the cursor’s context. Suggestions take the active schema into account, helping you choose a valid structure without requiring you to memorize every available TEI tag.

Accept a suggestion with <kbd>Enter</kbd>, or browse suggestions with the arrow keys. Autocompletion assists with input; it does not make editorial decisions, so always review the result.

### Linked editing

In Source mode, Grognard links the opening and closing tags of an element. When you change a tag name, its corresponding tag is updated as well. This prevents an edit from accidentally leaving a tag unclosed.

Linked editing does not automatically make the document valid against the schema. After an edit, save the document and check **Validation**. Direct XML editing must be enabled under **Settings → Safeguards → Allow direct editing of XML code**.

<a id="valider-remplacer"></a>
## 2. Validate and replace

<figure class="guide-screenshot-thumb">
  <a href="/images/screenshot_disambiguation_xml_validation.png"><img src="/images/screenshot_disambiguation_xml_validation.png" alt="Rapport de validation XML dans Grognard"></a>
  <figcaption>Read validation errors</figcaption>
</figure>

**Well-formed** XML follows the minimum syntax rules: tags are correctly nested and closed. **Valid** XML also follows the grammar of the project schema. A document can therefore be well formed while still containing a structure the schema forbids.

The **Validation** panel displays document errors. Start with the first one: later errors may be cascading errors caused by the same mistake. The visual view prevents many invalid structures; Source view gives you more freedom, but also more responsibility.

Find and replace with <kbd>⌘</kbd>/<kbd>Ctrl</kbd> + <kbd>F</kbd> can target visible text or, in Source mode, the markup itself. In **Settings → Safeguards**, leave **Require well-formed XML for Find and Replace** enabled. Before a global replacement, create a snapshot and test the operation on a single document.

<figure class="guide-screenshot-thumb">
  <a href="/images/screenshot_find_replace.png"><img src="/images/screenshot_find_replace.png" alt="Find and replace window in Grognard"></a>
  <figcaption>Find and replace carefully</figcaption>
</figure>

<a id="grande-echelle"></a>
## 3. Work at scale

<figure class="guide-screenshot-thumb">
  <a href="/images/screenshot_transformation.png"><img src="/images/screenshot_transformation.png" alt="Advanced tag transformation panel"></a>
  <figcaption>Transform the XML structure</figcaption>
</figure>

The **Advanced tag transformation** button lets you find and replace elements or attributes within an XML structure. This is an editorial operation on the structure, not a simple word search.

List-based markup and AI suggestions can also run across several files. Enable **Allow automated changes across multiple files** only when you understand the scope of the operation. Create a **Time Machine** snapshot immediately beforehand; then review a sample and check validation.

<figure class="guide-screenshot-thumb">
  <a href="/images/screenshot_xpath.png"><img src="/images/screenshot_xpath.png" alt="Panneau XPath dans Grognard"></a>
  <figcaption>Query the document with XPath</figcaption>
</figure>

The **XPath** panel lets you ask questions about the structure—for example, “which `persName` tags have no key?”—rather than search for a simple character string. Interface tools for displaying tags, page breaks, and notes help you read the result without modifying the XML.

<a id="carte-parametres"></a>
## 4. The settings map

| Tab | Open it when you want to… | See also |
| --- | --- | --- |
| **Project** | configure the schema, language, translation units, or central synchronization | [Basic features](/guide/fonctions-de-base), [Files](/guide/fichiers) |
| **Profile** | change the name that may be written into your documents | Installation |
| **Interface** | change the language, theme, fonts, zoom, or tag display | This page |
| **Safeguards** | allow direct XML editing or bulk operations | This page, §5 |
| **Authorities** | choose search sources and their matching options | [Database](/guide/base-de-donnees) |
| **Resource packs** | install lists and language resources | [Database](/guide/base-de-donnees) |
| **Plugins** | enable Kanripo, CBETA, Norbert, dates, and other tools | [Files](/guide/fichiers), §8 |
| **Entity database** | choose, move, or back up the entity folder | [Database](/guide/base-de-donnees) |
| **AI** | manage a key, endpoint, LanguageTool, or request profiles | This page, §7 |
| **Translation policy** | configure how names, dates, and titles are displayed | This page, §6 |
| **Privacy** | review what stays local and what may be sent | [Privacy](/privacy) |

<a id="garde-fous"></a>
## 5. Safeguards

Safeguards exist because a global replacement or poorly targeted automation can damage a corpus in seconds.

- **Allow direct editing of XML code:** required to modify the document in Monaco; disable it if you want to restrict work to the visual view.
- **Allow saving and leaving Source mode despite schema violations:** lets you continue with an invalid document. Use it only when you understand why validation fails.
- **Require well-formed XML for Find and Replace:** protects replacements that affect markup.
- **Allow automated changes across multiple files:** unlocks global operations. In **Automatically save a snapshot before**, select at least multi-file and whole-corpus operations.
- **Validate changes to other files only after validation:** useful for spotting the consequences of a bulk operation, but it does not replace review.
- **Disable the AI disambiguation cache:** reserve this for cases where you need to regenerate a suggestion with new context.

Keep enabled the warnings that require confirmation before deleting or detaching an authority. One extra confirmation costs less than a record or folder deleted by mistake.

<a id="traduction"></a>

## 6. Configure translation

In **Settings → Translation policy**, language-specific presets determine how Grognard displays entities in the translation pane. They can control the order of transliteration and title translations, the presentation of birth and death dates, approximate dates and eras, and the use of brackets.

These settings are precisely why disambiguation is useful: a correctly identified record can be rendered consistently throughout the corpus, without manual re-entry at every occurrence. The original text remains unchanged; the policy controls how it appears in translation.

<figure class="guide-screenshot-thumb">
  <a href="/images/screenshot_sanmiao.png"><img src="/images/screenshot_sanmiao.png" alt="Outil de conversion des dates Sanmiao"></a>
  <figcaption>Convert dates with Sanmiao</figcaption>
</figure>

For East Asian dates, Sanmiao and its associated plugin help preserve a traceable conversion. They do not replace the source’s original wording. Notes and Zotero integration remain features of the translation pane; use them according to the version you have installed.

LanguageTool is an optional aid, configured under **Settings → AI → LanguageTool**. Grognard can install a managed local copy, which requires [Java 17 or later](https://adoptium.net/temurin/releases/), or use the address of a server you administer. **On demand** checks the text when you request it; **Live** highlights issues as you type. N-gram data is optional and can be large. A remote server receives the text being checked: read the [privacy policy](/privacy) and choose a service you trust.

<a id="ia"></a>

## 7. AI: what it sees

The **AI** tab lets you configure a key, an endpoint, and, depending on the version, an always-on behavior. Request profiles and audit features may still change between versions; do not treat them as a stable contract of the application. These settings change the service and instructions sent; they do not turn AI into a direct XML editor.

Assisted translation, markup suggestions, and disambiguation are three different operations. Depending on the tool, Grognard sends the source text, a selection, or the mentions needed for the task. A local model or endpoint processes the data on your computer; an online service receives the data sent by the feature and processes it under its own terms. Do not assume that an entire personal database is sent: always check the selected mode and configured provider.

For translation, Grognard can replace entities with variables, have the text around those variables translated, and then reinsert the corresponding records. The model therefore does not directly change the source’s words, punctuation, or segmentation. An API key is entirely optional: local editing, manual markup, imports, entity databases, and hand-written translations work without one.

Instruction profiles can adapt the role requested of the model—suggestion, checking, or disambiguation—but every AI suggestion must be reviewed and approved by you.

<a id="plugins"></a>
## 8. Plugins that do not import a corpus

Install plugins from **Settings → Plugins**; Grognard may suggest resources matching the language of a new project.

- **Norbert** provides context-aware searches for people, titles, and certain specialized resources. The resulting records should still be checked in your entity database.
- **East Asian dates** supports the identification of eras and calendars with Sanmiao. It preserves the option to return to the source wording.
- Other plugins may add commands to the toolbar or project menu. Their availability and scope depend on the installed pack; read their documentation before running a global operation.

The Kanripo, CBETA, Daozang, and BDRC import plugins are described on the [Files](/guide/fichiers) page, which also explains their provenance and network requirements.

<a id="github-confidentialite"></a>
## 9. Interface, GitHub, and privacy

The **Interface** tab lets you choose the application language, theme, font, zoom, display of tag names, and handling of certain CJK spaces. These preferences change your working environment, not data that has already been encoded.

GitHub sign-in is optional. It acts as a key for the leaderboard and certain cloud features; a future version may also allow a corpus to be stored on GitHub. It is not needed for normal offline editing.

Grognard works locally by default. AI services, authority searches, cloud backups, central synchronization, and remote LanguageTool are separate features enabled according to your choices. For details on what stays on your machine and what may be sent, see the [Privacy](/privacy) page.

<a id="operation-sensible"></a>
## 10. Before a sensitive operation

1. Identify the files and data the operation will affect.
2. Create a snapshot or an independent copy.
3. Test it on one document or a small selection.
4. Save, validate, and review the result.
5. Expand the operation only if the initial result matches your intention.
