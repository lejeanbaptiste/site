---
title: Base de données
menu: Base de données
visible: false
template: guide-detail
guide_portrait: guide-database.png
guide_intro: "Un catalogue local pour les entités, leurs variantes, leurs autorités et les décisions de votre édition."
guide_toc:
  - { id: distinguer, label: Deux choses à distinguer }
  - { id: emplacement, label: Emplacement }
  - { id: consulter, label: Consulter }
  - { id: autorites, label: Autorités }
  - { id: nettoyer, label: Nettoyer }
  - { id: synchroniser, label: Synchroniser }
  - { id: sauvegarder, label: Sauvegarder }
  - { id: reutiliser, label: Réutiliser }
  - { id: continuer, label: Continuer }
---

<a id="distinguer"></a>
## 1. Deux choses à ne pas confondre

| Dans le document | Dans la base de données |
| --- | --- |
| Une forme de surface, comme `張衡` ou `Chang Heng` | Une fiche et un identifiant pour une seule entité |
| `@key` sur la balise | L’entrée vers laquelle cet identifiant renvoie |
| Peut apparaître de nombreuses fois et sous plusieurs formes | Devrait exister une seule fois par entité réelle |

Sans fiche, vous n’avez que des chaînes de caractères. Avec une fiche, Grognard peut regrouper les mentions, réutiliser vos décisions dans les traductions et les extensions de traitement de texte, et rendre le corpus interrogeable.

Par exemple :

```xml
<persName key="person-000020">張衡</persName>
```

Le texte visible reste `張衡`. L’attribut `@key` indique la fiche à consulter ; celle-ci peut contenir ses variantes, ses dates, ses notes et ses liens vers des autorités.

Les **packs d’autorités** — Wikidata, VIAF, BnF/NDL, CBDB, DILA, CHGIS, BDRC (via Wikidata), Norbert et d’autres — sont des données de référence utilisées lors des recherches. Ils ne constituent pas votre catalogue : votre base conserve les décisions, les compléments et les notes propres à votre projet.

<a id="emplacement"></a>
## 2. Où se trouve la base ?

Pour un travail individuel, Grognard utilise généralement un dossier central choisi au premier lancement, ou un dossier de données de l’application. Les projets qui ont activé **Synchroniser les entités avec la base de données centrale** peuvent y réutiliser les mêmes identifications d’un corpus à l’autre.

Un projet peut aussi conserver une base locale, notamment pour un corpus partagé, pédagogique ou expérimental. Cette séparation évite que des identifiants locaux entrent en collision avec ceux d’une autre base ou qu’un travail particulier écrase une base centrale commune.

La base centrale se trouve en dehors du dossier du projet : ne l’ouvrez pas comme un projet Grognard. La base locale, elle, accompagne le projet. La différence est importante lorsque vous déplacez, partagez ou sauvegardez vos fichiers.

Dans le dossier d’entités, la base de travail est `entities.sqlite`. `entities.xml` et les autres fichiers associés l’accompagnent pour l’import, la compatibilité et la récupération. Pour sauvegarder ou déplacer une base, copiez le dossier entier — base SQLite, XML, packs d’autorités et éventuels fichiers annexes — plutôt que l’un de ces fichiers seul.

Dans **Paramètres → Base d’entités**, vous pouvez consulter l’emplacement de la base, l’afficher, en choisir un autre ou la déplacer. Un déplacement est une véritable opération sur les fichiers : faites une copie avant de l’effectuer et déplacez le dossier d’entités comme un ensemble.

<a id="consulter"></a>
## 3. Ouvrir et consulter le catalogue

Le panneau **Base d’entités** donne accès aux fiches associées au projet. La fenêtre de base de données permet de rechercher une fiche, de filtrer les entités par type et, lorsque les deux existent, de distinguer les données **Projet** des données **Centrale**.

Ouvrez une fiche pour consulter son nom principal, ses variantes — nom chinois, translittération, traduction ou autre forme —, son type, ses dates, ses liens d’autorité et sa description. Vous pouvez également ajouter des notes propres à cette entité, à la manière de Zotero, mais pour les personnes, les lieux et les œuvres de votre corpus.

Vous pouvez créer une fiche lorsqu’aucune autorité ne correspond, ou compléter une fiche existante pour les besoins précis de votre édition. Évitez en revanche de créer une deuxième fiche pour la même personne : si deux fiches désignent la même entité, utilisez l’opération de fusion proposée par la fenêtre de base de données.

Le panneau **Attributs** montre l’identifiant porté par la balise ; la fiche complète se trouve dans la base. Modifier l’un sans vérifier l’autre est une cause fréquente de clés orphelines.

<figure class="guide-inline-visual">
  <img src="/user/themes/lejeanbaptiste/images/11_database_viewer.png" alt="Fenêtre de consultation de la base d’entités de Grognard">
  <figcaption><span>01</span> Le catalogue à côté du corpus</figcaption>
</figure>

<a id="autorites"></a>
## 4. Relier les autorités

Une fiche peut porter plusieurs liens d’autorité. Les concordances entre Wikidata, VIAF, BnF, CBDB, DILA, CHGIS, BDRC ou d’autres catalogues sont normales : aucune source n’est complète et chacune possède son propre système d’identifiants.

Les packs de ressources s’installent depuis **Paramètres → Packs de ressources**. Ils alimentent les recherches, le balisage par liste et les propositions de désambiguïsation. Le panneau de base de données peut aussi rétro-remplir certaines fiches avec des noms ou des informations disponibles dans les packs installés. Cette opération est facultative : relisez les données rapportées avant de les conserver comme informations de votre projet.

<a id="nettoyer"></a>
## 5. Nettoyer le catalogue

La fenêtre de base de données propose des outils de maintenance. **Nettoyage automatique** normalise certains noms et repère des doublons évidents ; **Lancer les analyses** recherche notamment les fiches vides, les noms incomplets, les liens d’autorité manquants ou les noms principaux problématiques.

Traitez ces résultats comme une file de lecture, pas comme une vérité automatique. Selon le cas, vous pouvez **Accepter**, **Passer**, **Fusionner**, **Lier** ou **Marquer comme intentionnel**. **Récolter** ajoute les faits rencontrés dans les fiches de personnes du document actuellement ouvert ; ce n’est pas une récolte aveugle de tout le corpus.

Avant un nettoyage important, créez un instantané. Examinez une catégorie de problème à la fois, enregistrez, puis vérifiez les documents qui utilisent les fiches modifiées. Ne lancez pas une opération globale sur une base de plusieurs milliers d’entrées sans avoir d’abord observé son rapport.

<a id="synchroniser"></a>
## 6. Synchroniser et collaborer

Activer la synchronisation permet de faire remonter les entités du projet dans la base centrale et de réutiliser les fiches dans d’autres projets. En cas de lien manquant, de conflit ou de divergence, le **Pont vers la base centrale** permet d’examiner la situation et de choisir la marche à suivre.

Une **clé orpheline** est un identifiant présent sur une balise mais absent de la base correspondante. Cela peut arriver après une restauration partielle, une modification manuelle ou une synchronisation interrompue. Grognard peut proposer de créer une fiche minimale à partir du nom balisé, de retirer la clé tout en conservant la balise, ou de laisser la situation intacte afin de restaurer la bonne base.

Ne faites pas écrire simultanément deux ordinateurs dans le même dossier d’entités synchronisé par Dropbox ou un service équivalent. Pour un projet partagé sur clé USB ou avec Git, décidez dès le départ si chacun utilise une base locale au projet ou si tous les utilisateurs ont accès à la même base centrale.

<a id="sauvegarder"></a>
## 7. Sauvegarder la base

La base d’entités est un deuxième patient, distinct des fichiers XML. Utilisez les instantanés **Time Machine** de Grognard lorsque la fonction est disponible pour la base concernée, et conservez une copie indépendante du dossier d’entités — XML, SQLite et fichiers associés — sur un autre support.

Restaurer un ancien XML avec une base plus récente, ou une base ancienne avec des textes plus récents, peut produire des clés orphelines. La restauration doit donc porter sur les deux côtés du lien : les textes et la base qui leur correspond.

La sauvegarde cloud peut constituer une copie utile si elle est activée et configurée, mais elle ne doit pas devenir un dossier de travail à deux écritures simultanées. Pour les détails sur la sauvegarde de l’ensemble du projet, consultez la page [Fichiers](/guide/fichiers).

<a id="reutiliser"></a>
## 8. Réutiliser les fiches

Le complément Grognard pour **Word** lit cette base pour insérer des champs, des noms, des sinogrammes, des traductions et des dates dans un article. Une fiche incomplète produit naturellement une citation incomplète : le temps passé à enrichir le catalogue est donc réutilisé au moment de la rédaction.

Les intégrations LibreOffice et OnlyOffice sont présentées sur la page [Télécharger](/download) selon leur état de distribution. La traduction IA, les variables d’entités et les outils spécialisés sont décrits dans les [fonctions de base](/guide/fonctions-de-base) et les [fonctions avancées](/guide/fonctions-avancees).

<a id="continuer"></a>
## 9. Avant de continuer

- Vous pouvez ouvrir la base d’entités et retrouver la fiche correspondant à une mention de votre document.
- Vous savez si votre projet utilise une base locale ou la base centrale.
- Vous connaissez l’emplacement du dossier d’entités et vous ne le confondez pas avec un dossier de projet.
- Vous avez distingué votre catalogue des packs d’autorités et prévu une copie de sauvegarde.
