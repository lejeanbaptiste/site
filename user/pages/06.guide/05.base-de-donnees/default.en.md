---
title: Database
menu: Database
visible: false
template: guide-detail
guide_portrait: guide-database.png
guide_intro: "A local catalog for entities, their variants, authorities, and your edition’s decisions."
guide_toc:
  - { id: distinguer, label: Two things to distinguish }
  - { id: emplacement, label: Location }
  - { id: consulter, label: Browse }
  - { id: autorites, label: Authorities }
  - { id: nettoyer, label: Clean up }
  - { id: synchroniser, label: Synchronize }
  - { id: sauvegarder, label: Back up }
  - { id: reutiliser, label: Reuse }
  - { id: continuer, label: Continue }
---

<a id="distinguer"></a>
## 1. Two things not to confuse

| In the document | In the database |
| --- | --- |
| A surface form, such as `張衡` or `Chang Heng` | A record and identifier for a single entity |
| `@key` on the tag | The entry to which this identifier points |
| May appear many times and in several forms | Should exist only once for each real-world entity |

Without a record, you have only character strings. With one, Grognard can group mentions, reuse your decisions in translations and word-processor extensions, and make the corpus searchable.

Par exemple :

```xml
<persName key="person-000020">張衡</persName>
```

The visible text remains `張衡`. The `@key` attribute points to the record; the record can contain variants, dates, notes, and links to authorities.

**Authority packs**—Wikidata, VIAF, BnF/NDL, CBDB, DILA, CHGIS, BDRC (via Wikidata), Norbert, and others—are reference data used during searches. They are not your catalog: your database preserves the decisions, additions, and notes specific to your project.

<a id="emplacement"></a>
## 2. Where is the database?

For individual work, Grognard generally uses a central folder chosen on first launch, or an application-data folder. Projects that enable **Sync entities with the central database** can reuse the same identifications across corpora.

A project can also keep a local database, especially for a shared, teaching, or experimental corpus. This separation prevents local identifiers from colliding with those in another database or a particular project from overwriting a shared central database.

The central database is outside the project folder: do not open it as a Grognard project. The local database travels with the project. This distinction matters when moving, sharing, or backing up files.

In the entity folder, the working database is `entities.sqlite`. `entities.xml` and the other associated files accompany it for import, compatibility, and recovery. To back up or move a database, copy the entire folder—SQLite database, XML, authority packs, and any supplementary files—rather than a single file.

Under **Settings → Entity database**, you can view the database location, reveal it, choose another location, or move it. A move is a real file operation: make a copy first and move the entity folder as a whole.

<a id="consulter"></a>
## 3. Open and browse the catalog

<figure class="guide-screenshot-thumb">
  <a href="/images/screenshot_db_viewer.png"><img src="/images/screenshot_db_viewer.png" alt="Grognard entity-database browsing window"></a>
  <figcaption>The catalog beside the corpus</figcaption>
</figure>

The **Entity database** panel gives you access to records associated with the project. The database window lets you search for a record, filter entities by type, and, when both exist, distinguish **Project** data from **Central** data.

Open a record to view its primary name, variants—Chinese name, transliteration, translation, or another form—type, dates, authority links, and description. You can also add notes specific to the entity, much like Zotero, but for the people, places, and works in your corpus.

<figure class="guide-screenshot-thumb">
  <a href="/images/screenshot_db_cart.png"><img src="/images/screenshot_db_cart.png" alt="Entity record in the database"></a>
  <figcaption>Edit an entity record</figcaption>
</figure>

You can create a record when no authority matches, or complete an existing record for the specific needs of your edition. Avoid creating a second record for the same person, however: if two records refer to the same entity, use the merge operation offered by the database window.

The **Attributes** panel shows the identifier carried by the tag; the full record is in the database. Changing one without checking the other is a common cause of orphaned keys.

<a id="autorites"></a>
## 4. Link authorities

A record may contain several authority links. Concordances between Wikidata, VIAF, BnF, CBDB, DILA, CHGIS, BDRC, and other catalogs are normal: no source is complete, and each has its own identifier system.

Install resource packs through **Settings → Resource packs**. They power searches, list-based markup, and disambiguation suggestions. The database panel can also fill some records with names or information from installed packs. This is optional; review imported data before keeping it as project information.

<a id="nettoyer"></a>
## 5. Clean up the catalog

The database window provides maintenance tools. **Automatic cleanup** normalizes certain names and detects obvious duplicates; **Run analyses** looks for empty records, incomplete names, missing authority links, and problematic primary names.

Treat these results as a review queue, not as automatic truth. Depending on the case, you can **Accept**, **Skip**, **Merge**, **Link**, or **Mark as intentional**. **Harvest** adds facts encountered in person records from the currently open document; it is not a blind harvest of the entire corpus.

Before a significant cleanup, create a snapshot. Review one problem category at a time, save, then check the documents that use the modified records. Do not run a global operation on a database with thousands of entries without first examining its report.

<a id="synchroniser"></a>
## 6. Synchronize and collaborate

Enabling synchronization pushes project entities to the central database and lets you reuse records in other projects. If a link is missing or there is a conflict or discrepancy, the **Central database bridge** lets you examine the situation and choose what to do.

An **orphaned key** is an identifier present on a tag but absent from the corresponding database. This can happen after a partial restore, manual edit, or interrupted synchronization. Grognard may offer to create a minimal record from the tagged name, remove the key while keeping the tag, or leave the situation unchanged so you can restore the correct database.

Do not have two computers write simultaneously to the same entity folder synchronized by Dropbox or a similar service. For a project shared via USB drive or Git, decide from the outset whether each person will use a project-local database or everyone will access the same central database.

<a id="sauvegarder"></a>
## 7. Back up the database

The entity database is a second patient, separate from the XML files. Use Grognard’s **Time Machine** snapshots when available for the database concerned, and keep an independent copy of the entity folder—XML, SQLite, and associated files—on another medium.

Restoring an old XML with a newer database, or an old database with newer texts, can produce orphaned keys. Restoration must therefore cover both sides of the link: the texts and the corresponding database.

Cloud backup can be useful when enabled and configured, but it should not become a working folder with two simultaneous writers. For details on backing up the entire project, see the [Files](/guide/fichiers) page.

<a id="reutiliser"></a>
## 8. Reuse records

The Grognard **Word** add-in reads this database to insert fields, names, Chinese characters, translations, and dates into an article. An incomplete record naturally produces an incomplete citation, so time spent enriching the catalog is reused when writing.

LibreOffice and OnlyOffice integrations are described on the [Download](/download) page according to their availability. AI translation, entity variables, and specialized tools are described in [Basic features](/guide/fonctions-de-base) and [Advanced features](/guide/fonctions-avancees).

<a id="continuer"></a>
## 9. Before continuing

- You can open the entity database and find the record corresponding to a mention in your document.
- You know whether your project uses a local database or the central database.
- You know where the entity folder is located and do not confuse it with a project folder.
- You have distinguished your catalog from the authority packs and arranged a backup copy.
