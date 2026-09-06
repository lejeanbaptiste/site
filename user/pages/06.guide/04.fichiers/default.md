---
title: Fichiers
menu: Fichiers
visible: false
template: guide-detail
---

# Travailler avec vos fichiers.

Vous savez maintenant ouvrir un projet et un document. Cette page explique ce qui entre dans un projet Grognard, comment importer des sources et comment protéger votre travail contre les mauvaises manipulations.

Un principe suffit à retenir : un import réussi signifie seulement qu’un fichier a été écrit. Ouvrez toujours un résultat, vérifiez-le, puis élargissez l’opération au reste du corpus.

## 1. Ce que contient un projet

Un projet Grognard est un dossier, et non un fichier isolé. Il rassemble les éléments qui doivent rester liés pour que l’édition reste lisible et réutilisable :

```text
mon-projet/
  mon-projet.project.json    manifeste du projet
  documents/                 textes XML du corpus
  schema/                    schéma, CSS et réglages du projet
  traduction.fr.xml          fichier compagnon d’une source
  .grognard/                 historique local et métadonnées cachées
```

- **Vos textes** : les fichiers XML TEI — ou conformes à un autre schéma — dans les dossiers que vous choisissez.
- **`schema/`** : la grammaire du projet, ses fichiers RNG et CSS, ainsi que certains réglages. Elle est installée lors de la création du projet ; ne la remplacez pas machinalement par celle d’un autre projet.
- **Les traductions** : des fichiers compagnons séparés de la source, mais reliés à ses unités. Ils doivent voyager avec elle.
- **Les données d’entités** : une base locale comprenant `entities.sqlite`, `entities.xml` et les fichiers associés, ou les données du projet liées à la base centrale choisie lors du premier lancement. La base centrale, elle, se trouve en dehors du dossier du projet.
- **L’historique** : les instantanés et fichiers de récupération de Grognard, généralement conservés dans un dossier caché du projet. Ne les modifiez pas directement.

Ne choisissez pas le dossier de base d’entités comme projet et ne sortez pas un XML seul de son dossier en espérant conserver ses traductions, son schéma et ses identifiants. Pour déplacer un corpus, le compresser, le copier sur une clé USB ou le versionner avec Git, déplacez toujours le dossier entier.

Les fichiers compagnons de traduction suivent la source lorsqu’elle est renommée ou déplacée dans l’Explorateur. La suppression d’une source peut également proposer la suppression de ses compagnons : vérifiez la confirmation avant de poursuivre.

## 2. Les opérations courantes

Dans le **panneau de navigation des fichiers**, un clic gauche ouvre un document. Un clic droit ouvre un menu contextuel qui permet de le renommer, de le déplacer ou de le supprimer.

Pour créer un document, utilisez **Fichier → Nouveau fichier** ou <kbd>⌘</kbd>/<kbd>Ctrl</kbd> + <kbd>N</kbd>. Grognard part du squelette correspondant au schéma actif ; lors du premier enregistrement, choisissez un nom et un emplacement à l’intérieur du projet.

Le raccourci <kbd>⌘</kbd>/<kbd>Ctrl</kbd> + <kbd>S</kbd> enregistre le document courant. Plusieurs documents peuvent rester ouverts dans des onglets : fermer un onglet ne ferme pas le projet et ne supprime pas le fichier.

## 3. Importer des fichiers locaux

Choisissez **Fichier → Importer des documents** pour importer un fichier, plusieurs fichiers ou un dossier. Grognard peut convertir notamment des fichiers TXT, Markdown, RTF, Word (`.docx`), ODT et XML vers la structure du projet.

La conversion reconnaît les paragraphes et certaines structures élémentaires. Elle ne remplace pas le travail éditorial : elle ne décide pas à votre place du balisage précis, des identifiants d’entités ou des corrections de la source.

Si vous importez un XML provenant d’un autre projet, les identifiants `@key` étrangers sont conservés à l’écart plutôt que réutilisés aveuglément. Vérifiez ensuite les liens et les entités dans le projet cible.

Après tout import, ouvrez au moins un résultat en vue visuelle et contrôlez les paragraphes, les caractères, les métadonnées et la structure Source avant de lancer une opération sur l’ensemble du corpus.

> **À vérifier avant de généraliser.** Un import qui réussit prouve seulement qu’un fichier a été produit. Ouvrez un échantillon, comparez-le à la source, vérifiez sa provenance et sa validation, puis seulement importez ou transformez le reste du corpus.

## 4. Importer depuis le Web

### Wikisource

La commande **Fichier → Importer depuis Wikisource…** permet de choisir ou de coller une page et d’en écrire une version TEI dans le projet. Elle fonctionne sans extension de navigateur.

L’extension Grognard pour navigateur est un raccourci pratique pour envoyer des pages Wikisource, Kanripo ou BDRC vers l’application. Pour l’installer, consultez les instructions de la page [Télécharger](/download). Démarrez Grognard au moins une fois afin que la messagerie native soit enregistrée.

Dans Chromium, chargez l’extension décompressée depuis la page des extensions en activant le mode développeur. Dans Firefox, chargez temporairement `manifest.json` depuis `about:debugging` ; ce chargement est retiré au redémarrage du navigateur.

## 5. Les plugins d’importation

Les commandes de corpus apparaissent dans le menu **Fichier** seulement après l’activation du plugin correspondant dans **Paramètres → Plugins**. Grognard peut proposer les packs et plugins adaptés lorsque vous ouvrez pour la première fois un projet en chinois, en chinois classique ou en tibétain.

| Plugin | Pour quel usage ? | Résultat |
| --- | --- | --- |
| **Kanripo** | Textes chinois prémodernes de la Kanseki Repository | Une œuvre est récupérée puis chaque *juan* devient un fichier TEI du projet. Les outils de segmentation et de ponctuation viennent ensuite. |
| **CBETA** | Canon bouddhique chinois | Le corpus est récupéré et découpé par *juan* ; le CBETA P5 est converti vers le TEI du projet. Le schéma peut alors appartenir à la famille CBETA plutôt qu’à `TEI-ALL`. |
| **Daozang** | Textes taoïstes du corpus Fang Tongzi | Le corpus fourni localement est converti sans téléchargement depuis un service tiers. |
| **BDRC** | Textes tibétains de BUDA | Un volume est récupéré en ligne puis converti en TEI dans le projet. |

Ces imports n’ont pas le même fonctionnement : Kanripo, CBETA et BDRC utilisent des ressources en ligne ou les synchronisent, tandis que Daozang peut fonctionner à partir d’un corpus fourni localement. Récupérer un canon peut prendre du temps et produire de nombreux fichiers ; vérifiez un *juan* ou un volume avant de généraliser. Conservez la provenance et les identifiants de la source dans l’édition : Grognard facilite l’import, mais ne devient pas l’édition originale.

Les autres plugins, notamment ceux qui concernent les autorités et les dates est-asiatiques, se gèrent depuis **Paramètres → Plugins**. Ils ne sont pas nécessaires pour comprendre l’organisation des fichiers.

## 6. Sauvegarder et récupérer son travail

### Enregistrer souvent

Enregistrez après une série de décisions cohérentes, avant une recherche-remplacement globale, avant une modification de schéma et avant une opération automatique sur plusieurs fichiers.

### Utiliser l’historique de Grognard

Le menu **Time Machine** de Grognard conserve des instantanés et permet de restaurer un fichier ou un état du projet. Il s’agit de l’historique de Grognard, pas de l’application Time Machine d’Apple. Une restauration de projet et une restauration de fichier ne portent pas sur le même périmètre.

Les instantanés sont créés après un enregistrement réussi lorsqu’un fichier a réellement changé ; les réenregistrements identiques ne remplissent donc pas l’historique. **Fichier → Historique…** restaure un fichier, tandis que **Projet → Restaurer…** restaure plusieurs fichiers à un état donné. L’historique est local, dédoublonné et soumis à des limites de rétention : il complète Git ou une copie externe, mais ne les remplace pas.

Si la base d’entités centrale se trouve en dehors du projet, restaurer les textes ne restaure pas automatiquement cette base — et inversement. Un document peut alors contenir des clés qui ne correspondent plus à l’état de la base : laissez les fichiers intacts et restaurez la bonne copie de la base séparément.

### Garder une copie indépendante

Conservez aussi une copie du dossier sur un autre disque, avec la véritable Time Machine de macOS, ou sur un support externe. Si vous utilisez Git, versionnez le dossier du projet et documentez soigneusement les fichiers générés que vous choisissez d’exclure.

Évitez de faire écrire simultanément deux personnes dans un même dossier vivant, en particulier dans une base SQLite synchronisée par Dropbox ou un autre service cloud. Le cloud est une option de sauvegarde ou de synchronisation ; ce n’est pas un mécanisme de fusion entre deux sessions d’écriture.

Après une erreur sérieuse, arrêtez-vous. Notez le fichier et l’opération concernés, restaurez un état connu, puis reprenez le travail. N’essayez pas de corriger à l’aveugle l’ensemble du corpus avant d’avoir compris le premier cas.

## 7. Exporter et partager

La commande **Fichier → Exporter le document…** produit une vue exportée du document selon les formats proposés par la version installée. Elle ne remplace pas le dossier du projet : les traductions, le schéma, les entités et l’historique n’y sont pas nécessairement inclus.

Pour partager un projet avec un collègue, compressez son dossier entier et joignez une note indiquant le schéma utilisé, la version de Grognard et, si nécessaire, la manière d’accéder à la base d’entités. Le complément pour Word, LibreOffice ou OnlyOffice est un outil de rédaction et non une méthode d’export ; consultez à ce sujet les [fonctions de base](/guide/fonctions-de-base).

Pour comprendre le catalogue d’entités et sa relation avec les fichiers XML, consultez la page [Base de données](/guide/base-de-donnees).

## 8. Avant de continuer

- Le dossier du projet porte un nom clair et se trouve dans un emplacement sauvegardé.
- Un échantillon importé a été ouvert et relu en vue visuelle, puis en vue Source si nécessaire.
- Vous savez où trouver **Time Machine** et vous disposez d’au moins une copie indépendante de l’ordinateur.
