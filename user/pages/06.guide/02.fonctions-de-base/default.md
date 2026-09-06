---
title: Fonctions de base
menu: Fonctions de base
visible: false
template: guide-detail
---

# Commencer avec Grognard.

<figure class="guide-inline-visual">
  <img src="/user/themes/lejeanbaptiste/images/screenshot-workspace.png" alt="Vue de travail de Grognard avec un document ouvert">
  <figcaption><span>01</span> Le projet et le document au même endroit</figcaption>
</figure>

<p><a class="text-link" href="/guide">← Retour au guide</a></p>

## 1. Installer l’application

Depuis la page [Télécharger](/download), téléchargez la version correspondant à votre système, puis installez Grognard à l’aide de l’installeur graphique.

Lorsque vous ouvrez l’application pour la première fois, Grognard vous demande trois informations :

- **Votre nom complet** : le nom que vous souhaitez voir inscrit dans les données que vous produisez.
- **L’emplacement de vos données personnelles** : choisissez un autre dossier si vous ne souhaitez pas utiliser l’emplacement proposé par le système.
- **Activer les fonctions avancées** : cette option porte surtout sur l’édition directe du XML. Si vous la laissez désactivée, Grognard masque les outils suivants :
  - le passage en mode **Source** (le XML brut) ;
  - le panneau **Validation** (le rapport d’erreurs par rapport au schéma) ;
  - l’indicateur d’erreurs de validation dans la barre inférieure.

  Le reste du travail — transcription en mode **Visuel**, traduction, balisage, désambiguïsation — reste disponible. Vous pourrez réactiver l’édition XML plus tard : ouvrez **Paramètres** depuis le menu (**Grognard → Paramètres** sur Mac, ou l’entrée **Paramètres** du menu de l’application sous Windows et Linux ; raccourci <kbd>⌘</kbd>/<kbd>Ctrl</kbd> + <kbd>,</kbd>), puis l’onglet **Garde-fous**, et activez **Autoriser l’édition directe du code XML**. Pour une première prise en main, il est raisonnable de laisser l’option désactivée.

Grognard est une application de bureau : vos fichiers et vos données restent sur votre ordinateur. L’édition normale ne nécessite pas de compte et Grognard ne collecte pas vos données. Pour plus d’informations, consultez la [politique de confidentialité](/privacy).

## 2. Mises à jour

Sous Windows et macOS, l’application Grognard reçoit et applique automatiquement les mises à jour pendant son utilisation. Sous Linux, téléchargez le paquet `.deb` mis à jour depuis la page [Télécharger](/download) (Debian et Ubuntu). Le contenu de ces mises à jour est documenté dans les [notes de version](https://github.com/lejeanbaptiste/lejeanbaptiste/releases).

## 3. Créer ou ouvrir un projet

Pour commencer à éditer des documents, vous devez d’abord créer un projet ou ouvrir un projet existant. Pour cela, utilisez le raccourci <kbd>⌘</kbd>/<kbd>Ctrl</kbd> + <kbd>O</kbd>, ou allez dans **Fichier → Ouvrir un projet**.

Un projet n’est pas un simple fichier XML : c’est un dossier sur votre ordinateur qui rassemble les textes, le schéma, les traductions et la base de données des entités. C’est en ouvrant ce dossier comme projet que Grognard peut maintenir les liens entre ces différents éléments.

Lorsque vous créez un nouveau projet, Grognard vous demande de choisir un schéma. Sauf si vous prévoyez de travailler de manière approfondie sur des textes bouddhiques de CBETA, ou si vous avez une autre raison précise de choisir une configuration particulière, sélectionnez le schéma par défaut : `TEI-ALL`.

Un schéma est la grammaire de votre document : il définit les balises et les attributs autorisés, ainsi que la manière dont ils peuvent s’organiser. `TEI-ALL` est le schéma général proposé par défaut ; il convient à la plupart des projets.

Grognard vous demande ensuite de définir les paramètres du corpus du projet. Les plus importants sont les suivants :

- **Langue source** : la langue de vos documents.
- **Synchroniser les entités avec la base de données centrale** : désactivez cette option uniquement si vous travaillez sur un corpus de projet partagé avec d’autres utilisateurs.
- **Traduction** (unité d’alignement) : l’unité dans laquelle vous souhaitez découper le texte pour la traduction. Choisissez **Paragraphe (1:1)** ou, pour les textes structurés uniquement par pages, **Ab (bloc anonyme, p. ex. folio)**.
- **Langues** : les langues vers lesquelles vous traduirez vos textes, dans la section **Traduction**.

N’oubliez pas d’enregistrer vos paramètres avec le bouton situé en bas de la page.

La première fois que vous créez ou ouvrez un projet dans une langue donnée, Grognard vous proposera d’installer les packs de ressources et les plugins prévus pour cette langue. Vous pourrez ensuite y accéder depuis **Paramètres → Packs de ressources** et **Paramètres → Plugins**.

## 4. Ouvrir un document

Lorsque vous ouvrez un projet existant, ouvrez le **panneau de navigation des fichiers** <img class="guide-ui-icon" src="/user/themes/lejeanbaptiste/images/ui-icons/tab_explorer.png" alt="Explorateur de fichiers"> pour parcourir votre corpus. Un clic gauche ouvre un fichier. Un clic droit ouvre un menu contextuel qui permet de le renommer, de le déplacer ou de le supprimer.

Pour créer un nouveau fichier dans le projet courant, utilisez le raccourci <kbd>⌘</kbd>/<kbd>Ctrl</kbd> + <kbd>N</kbd>, ou choisissez **Fichier → Nouveau fichier**. Grognard crée le document à partir du squelette correspondant au schéma du projet. Lors du premier enregistrement, choisissez son nom et son emplacement dans le dossier du projet.

Vous pouvez importer des fichiers locaux ainsi que des éditions numériques en ligne provenant de différentes sources et dans différents formats. Pour plus d’informations, consultez la section [Fichiers](/guide#importer).

Pour une première prise en main, ouvrez seulement quelques paragraphes. Vous pourrez ainsi vérifier le résultat avant d’importer ou de modifier un corpus entier.

Pour enregistrer un document, utilisez le bouton **Enregistrer** <img class="guide-ui-icon" src="/user/themes/lejeanbaptiste/images/ui-icons/save.png" alt="Enregistrer"> ou le raccourci <kbd>⌘</kbd>/<kbd>Ctrl</kbd> + <kbd>S</kbd>. Enregistrez régulièrement, notamment après une modification du balisage ou des attributs, afin de conserver les changements dans le fichier du projet.

## 5. Écrire dans la vue visuelle

Vous pouvez écrire dans la vue visuelle pour créer ou modifier la transcription de votre source principale. À la différence d’un traitement de texte, Grognard ne cherche pas à vous laisser une liberté complète sur la manière de saisir et de mettre en forme vos textes. Ses fonctions sont volontairement sobres : l’objectif est de favoriser la simplicité, l’homogénéité et la lisibilité par la machine.

Vous pouvez passer à tout moment du mode **Visuel** au mode **Source**. Le premier vous permet de travailler sur le texte sans devoir regarder le XML ; le second affiche la structure telle qu’elle sera enregistrée. Vous n’avez pas besoin de modifier le XML à la main au début, mais il est utile de savoir où le consulter lorsque vous voulez comprendre ou contrôler le document. Pour l’édition XML avancée, consultez la section [Monaco et l’éditeur XML](/guide/fonctions-avancees#editeur-xml).

### Structurer les paragraphes

Pour créer un nouveau paragraphe, placez le curseur à l’endroit voulu, appuyez sur <kbd>Entrée</kbd>, sélectionnez `p`, puis appuyez à nouveau sur <kbd>Entrée</kbd>. Lorsque vous copiez-collez du texte, Grognard encode automatiquement les séparations entre paragraphes.

### Signaler les changements éditoriaux

Pour ajouter, supprimer ou corriger un passage dans le cadre d’une édition critique, cliquez sur le bouton **Marquer des changements éditoriaux** <img class="guide-ui-icon" src="/user/themes/lejeanbaptiste/images/ui-icons/tool_correction.png" alt="Marquer des changements éditoriaux">. Un panneau s’ouvre pour vous permettre d’enregistrer la relation entre la forme originale et la forme corrigée.

Dans un texte comportant des corrections éditoriales, utilisez le bouton d’affichage des corrections pour faire défiler **Afficher l’original uniquement** <img class="guide-ui-icon" src="/user/themes/lejeanbaptiste/images/ui-icons/history.png" alt="Afficher l’original uniquement">, **Afficher la correction uniquement** <img class="guide-ui-icon" src="/user/themes/lejeanbaptiste/images/ui-icons/auto-fix.png" alt="Afficher la correction uniquement"> et **Afficher l’original et la correction** <img class="guide-ui-icon" src="/user/themes/lejeanbaptiste/images/ui-icons/layers.png" alt="Afficher l’original et la correction">. Vous pouvez ainsi contrôler séparément la lecture de la source, la lecture éditée et leur présentation côte à côte.

### Verrouiller la source principale

À mesure que votre travail avance, vous n’aurez plus besoin de saisir ou de modifier la source principale. La présence du texte dans un éditeur libre peut alors devenir un risque : une saisie accidentelle ou une opération « rechercher et remplacer » pourrait modifier sa formulation.

Pour protéger la source, cliquez sur le bouton **Verrouiller le texte** <img class="guide-ui-icon" src="/user/themes/lejeanbaptiste/images/ui-icons/lock-open.png" alt="Verrouiller le texte">. Le texte ne peut alors plus être saisi ni supprimé, tandis que les opérations de balisage restent disponibles. L’icône devient un cadenas fermé <img class="guide-ui-icon" src="/user/themes/lejeanbaptiste/images/ui-icons/lock.png" alt="Texte verrouillé">. Vous pourrez le déverrouiller lorsque vous devrez reprendre la transcription.

<figure class="guide-inline-visual">
  <img src="/user/themes/lejeanbaptiste/images/screenshot-entities.png" alt="Panneau de recherche et d’identification des entités dans Grognard">
  <figcaption><span>02</span> Distinguer le texte et ses entités</figcaption>
</figure>

## 6. Traduire dans le panneau de traduction

Cliquez sur l’icône du **panneau de traduction** <img class="guide-ui-icon" src="/user/themes/lejeanbaptiste/images/ui-icons/translate.png" alt="Traduction"> pour l’ouvrir.

Grognard conserve les traductions séparément de la source principale, tout en les attachant au même texte source. Vous pouvez ainsi rédiger plusieurs traductions parallèles, dans plusieurs langues, sans dupliquer ni modifier la source.

Le panneau de traduction intègre un correcteur orthographique et grammatical fourni par LanguageTool. La vérification grammaticale nécessite l’installation de Java. Pour en savoir plus sur les aides linguistiques, consultez la partie consacrée aux [fonctions avancées](/guide#traduire).

Vous y trouverez également les fonctions essentielles d’un traitement de texte pour produire une traduction savante : mise en forme, notes de bas de page et intégration avec Zotero.

Si vous disposez d’une clé d’API, le panneau de traduction peut aussi générer une proposition de traduction à l’aide d’un service d’IA. Cette fonction est facultative ; son fonctionnement et ses précautions sont présentés dans les [fonctions avancées](/guide#traduire).

## 7. Baliser le texte

Grognard est avant tout un outil de balisage XML destiné à l’extraction et à l’analyse des données en humanités numériques. Il automatise toutefois les opérations fastidieuses de ce travail et rend immédiatement utiles les balises que vous ajoutez.

Même si votre objectif n’est pas de transformer votre texte en données structurées, il est utile d’en identifier les principales entités : personnes, lieux, œuvres, dates, organisations et titres officiels. Vous pouvez le faire manuellement en sélectionnant un mot, en appuyant sur <kbd>Entrée</kbd>, puis en choisissant la catégorie correspondante. Vous pouvez également automatiser l’opération avec le bouton **Balisage automatique** <img class="guide-ui-icon" src="/user/themes/lejeanbaptiste/images/ui-icons/tag-plus.png" alt="Balisage automatique">, qui propose de traiter l’ensemble du texte.

### Le « tag bomb »

Le premier mode d’auto-balisage, le « tag bomb », recherche mécaniquement dans le texte toutes les occurrences des mots présents dans votre base personnelle, dans les tables fournies par Grognard et dans les packs de ressources linguistiques. Ces listes peuvent contenir des milliers d’entrées. Les packs sont constitués à partir de bases d’autorités ouvertes : Wikidata, la BnF/NDL, CBDB, DILA, CHGIS, VIAF, BDRC et Norbert.

### Les suggestions par IA

Le second mode, **Suggestions par IA**, transmet votre source à un modèle de langage afin qu’il en propose le balisage. Le modèle voit le texte source, mais ne le modifie jamais directement. Il fournit une carte ou une liste de correspondances que Grognard utilise ensuite pour poser mécaniquement les balises, sans changer les mots, la ponctuation ni la segmentation du document.

### Valider les propositions

Après l’auto-balisage, Grognard vous demande de valider les résultats afin d’écarter les faux positifs. La vérification est conçue pour rester rapide : appuyez sur <kbd>Entrée</kbd> pour accepter, sur <kbd>Retour arrière</kbd> pour refuser, sur <kbd>Maj</kbd> + <kbd>Entrée</kbd> pour accepter toutes les occurrences et sur <kbd>Maj</kbd> + <kbd>Retour arrière</kbd> pour les refuser toutes.

Une fois les éléments de base identifiés, ouvrez le **panneau CSS** <img class="guide-ui-icon" src="/user/themes/lejeanbaptiste/images/ui-icons/tab_highlight.png" alt="CSS">. Vous pourrez y choisir les couleurs du texte et des surlignages afin de distinguer visuellement les différentes catégories d’entités.

## 8. Désambiguïser les entités

Le balisage indique qu’un passage désigne une personne, un lieu, une œuvre ou une autre catégorie d’entité. La **désambiguïsation** consiste à préciser de quelle entité il s’agit en lui associant un identifiant stable. Elle distingue ainsi une forme de surface — les mots présents dans le document — de la chose à laquelle ces mots renvoient.

Cette distinction est essentielle pour produire des données structurées. Un même personnage peut être mentionné sous plusieurs noms, tandis que plusieurs personnes peuvent porter le même nom. Sans identifiant, une machine ne peut compter que des chaînes de caractères ; avec un identifiant, elle peut regrouper les mentions qui renvoient à la même entité, les distinguer de leurs homonymes et les relier à des informations complémentaires.

Pour faire cela correctement, il faudrait construire et maintenir une base de données relationnelle : définir sa structure, attribuer des identifiants uniques, regrouper les variantes, établir les concordances entre autorités, corriger les doublons et préserver la cohérence de l’ensemble au fil des projets. C’est un investissement considérable, généralement disproportionné pour une personne ou une équipe qui souhaite simplement éditer un corpus.

C’est précisément ce que Grognard fait pour vous. L’application crée une base d’entités locale pour votre projet, prête à être utilisée hors connexion. Elle attribue les identifiants, conserve les différentes formes de surface d’une même entité et peut établir des concordances avec les autorités que vous avez choisies. Aucune autorité n’étant complète, vous pouvez également créer une fiche lorsque l’entité recherchée n’existe pas encore, ou compléter une fiche pour les besoins particuliers de votre corpus.

### Faire le lien

Après avoir balisé une mention, cliquez sur **Désambiguïser** <img class="guide-ui-icon" src="/user/themes/lejeanbaptiste/images/ui-icons/disambiguate.png" alt="Désambiguïsation">. Pour chaque forme balisée, Grognard vous propose les entités correspondantes dans les autorités activées dans vos paramètres. Examinez les propositions — notamment lorsqu’il existe des homonymes — puis choisissez la bonne entité. Si aucune proposition ne convient, créez une nouvelle entité dans votre base.

Vous pouvez aussi effectuer cette recherche depuis le panneau **Attributs** <img class="guide-ui-icon" src="/user/themes/lejeanbaptiste/images/ui-icons/label.png" alt="Attributs">. Le lien est enregistré dans le document sous la forme d’un attribut d’identification, tandis que la fiche complète de l’entité reste dans la base du projet.

## 9. Pourquoi faire ?

### 1. Une base de données pour le reste

<figure class="guide-inline-visual">
  <img src="/user/themes/lejeanbaptiste/images/11_database_viewer.png" alt="Base de données des entités dans Grognard">
  <figcaption><span>04</span> Consulter et enrichir vos entités</figcaption>
</figure>

Une fois une balise désambiguïsée, il n’est plus nécessaire de repartir de Google pour retrouver les informations sur une personne, un ouvrage, un toponyme ou une autre entité. Les données de base, les variantes et les liens vers les autorités sont centralisés dans votre propre base, consultable hors connexion. Le panneau **Base d’entités** <img class="guide-ui-icon" src="/user/themes/lejeanbaptiste/images/ui-icons/database.png" alt="Base d’entités"> vous permet également d’ajouter des notes à chaque fiche, à l'instar de Zotero — mais pas juste pour les ouvrages.

### 2. Une extension pour les traitements de texte

<figure class="guide-inline-visual">
  <img src="/user/themes/lejeanbaptiste/images/12_word_plugin.png" alt="Extension Grognard pour un traitement de texte">
  <figcaption><span>05</span> Réutiliser vos entités dans vos articles</figcaption>
</figure>

Lorsque vous rédigez un article, ressaisir et mettre en forme les noms, les sinogrammes, les traductions et les dates de chaque entité peut être aussi fastidieux que l’étaient autrefois les bibliographies. L’extension Grognard pour **Word** (version de bureau, encore expérimentale) automatise ce travail à partir de votre base d’entités, « à la Zotero ». Les intégrations **LibreOffice** et **OnlyOffice** sont prévues, mais ne sont pas encore distribuées.

### 3. Une traduction IA mieux maîtrisée

Les outils d’IA traduisent de mieux en mieux les textes historiques. Ils traitent cependant souvent de manière superficielle, voire trompeuse, les données qui nous sont les plus précieuses : l’identification, la compréhension, la traduction exacte et la mise en forme des dates, des noms propres et des titres. Une fois le texte balisé et désambiguïsé, Grognard remplace les entités par des variables dans le texte soumis à l’IA. Celle-ci traduit le texte autour de ces variables, puis Grognard réinsère les entités sous forme de champs. Vous pouvez ainsi définir la traduction et la mise en forme à appliquer à l’ensemble de votre corpus, sans laisser le modèle réécrire vos données sensibles.

Pour les textes chinois et japonais, les dates peuvent être traitées avec une précision particulière grâce à une version locale de [Sanmiao](https://norbert.huma-num.fr/app/sanmiao/index.html?lang=fr), convertisseur conçu pour les exigences scientifiques de l’histoire de l’astronomie.

Les titres officiels bénéficient d’un traitement comparable. Grognard ne redistribue pas le dictionnaire de Hucker ni ses traductions. Lorsque les packs sinologiques s’appuient sur des données auxquelles ils peuvent légalement accéder, celles-ci sont exploitées localement pour produire des ressources de travail. Les systèmes **HuckBot5000** (anglais) et **MaxiRicci7000** (français) sont des modèles et des algorithmes entraînés pour prolonger cette méthode de traduction « à la Hucker » ; ils ne sont pas une redistribution du dictionnaire lui-même. Une fois les titres balisés et désambiguïsés, ils peuvent donc être traduits de manière homogène à l’échelle du corpus.

Une entité correctement identifiée n’est donc pas seulement plus facile à retrouver : elle devient une donnée réutilisable dans vos traductions, vos articles et vos analyses.

### 4. Votre projet d'humanités numériques

Au cœur de tout projet d’humanités numériques se trouvent des données structurées. En travaillant avec Grognard, vous les produisez au fil de votre lecture, de votre transcription et de vos traductions : elles sont balisées, désambiguïsées et contrôlées par un être humain, même si votre objectif reste celui d’un projet traditionnel.

La désambiguïsation débloque plusieurs usages :

- retrouver toutes les mentions d’une même personne, d’un lieu ou d’une œuvre, même lorsque sa forme change ;
- centraliser des informations, des variantes, des liens d’autorité et des notes dans votre base d’entités ;
- réutiliser ces données dans vos traductions, vos articles et vos traitements de texte ;
- préparer des recherches, des listes, des tableaux, des chronologies ou des cartes à partir du corpus.

Les questions que vous poserez, les analyses que vous conduirez et les formes que prendra votre résultat vous appartiennent. Elles demanderont peut-être du code propre à votre projet. Mais vous aurez déjà accompli la partie la plus longue et la plus difficile : transformer votre travail sur les sources en un ensemble de données lisible, vérifiable et réutilisable.
