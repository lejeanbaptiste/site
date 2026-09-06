---
title: Fonctions avancées
menu: Fonctions avancées
visible: false
template: guide-detail
---

# Aller plus loin avec Grognard.

Les fonctions avancées ne concernent pas seulement le XML. Elles donnent accès aux outils capables de modifier une structure entière, de travailler sur plusieurs fichiers ou d’envoyer du texte à un service extérieur. Les pages [Fonctions de base](/guide/fonctions-de-base), [Fichiers](/guide/fichiers) et [Base de données](/guide/base-de-donnees) expliquent les gestes quotidiens ; cette page décrit les outils qui demandent davantage de contrôle.

Pour ouvrir les réglages, utilisez **Paramètres** ou le raccourci <kbd>⌘</kbd> + <kbd>,</kbd>. L’onglet **Projet** concerne le dossier ouvert ; les autres onglets concernent généralement cette machine, cet utilisateur ou l’application.

## 1. L’éditeur XML Monaco

La **vue Source** repose sur Monaco Editor, le même éditeur de code que celui qui équipe Visual Studio Code. Elle affiche le XML du document avec une coloration syntaxique, une indentation lisible et des repères qui permettent de suivre l’arbre des éléments.

### L’autocomplétion

Lorsque vous saisissez une balise, un attribut ou une valeur, Monaco propose les possibilités compatibles avec le contexte du curseur. Les suggestions tiennent compte du schéma actif : elles vous aident à choisir une structure valide sans vous obliger à mémoriser toutes les balises TEI disponibles.

Vous pouvez accepter une proposition avec <kbd>Entrée</kbd> ou la parcourir avec les touches fléchées. L’autocomplétion est une aide à la saisie, pas une décision éditoriale : relisez toujours le résultat.

### L’édition liée

Dans le mode Source, Grognard relie les balises ouvrantes et fermantes d’un même élément. Lorsque vous modifiez le nom d’une balise, son élément correspondant est mis à jour avec elle. Cela évite qu’une modification laisse accidentellement une balise sans fermeture.

Cette édition liée ne rend pas automatiquement le document valide au regard du schéma. Après une modification, enregistrez puis consultez **Validation**. L’édition directe du code XML doit être activée dans **Paramètres → Garde-fous → Autoriser l’édition directe du code XML**.

## 2. Valider et remplacer

Un XML **bien formé** respecte les règles syntaxiques minimales : les balises sont correctement imbriquées et fermées. Un XML **valide** respecte en plus la grammaire du schéma du projet. Un document peut donc être bien formé tout en contenant une structure que le schéma interdit.

Le panneau **Validation** affiche les erreurs du document. Commencez par la première : les suivantes peuvent être des erreurs en cascade causées par la même faute. La vue visuelle empêche de nombreuses structures invalides ; la vue Source vous donne davantage de liberté, mais aussi davantage de responsabilités.

La recherche et le remplacement <kbd>⌘</kbd>/<kbd>Ctrl</kbd> + <kbd>F</kbd> peuvent viser le texte visible ou, en mode Source, le balisage lui-même. Dans **Paramètres → Garde-fous**, laissez activé **Exiger un XML bien formé pour Rechercher et remplacer**. Avant un remplacement global, faites un instantané et testez l’opération sur un seul document.

## 3. Travailler à grande échelle

Le bouton **Transformation avancée des balises** permet de rechercher et de remplacer des éléments ou des attributs dans une structure XML. Il s’agit d’une opération éditoriale sur la structure, pas d’une simple recherche de mots.

Le balisage par liste et les suggestions par IA peuvent également être lancés sur plusieurs fichiers. Activez **Autoriser les modifications automatisées sur plusieurs fichiers** uniquement lorsque vous comprenez le périmètre de l’opération. Créez un instantané **Time Machine** juste avant ; relisez ensuite un échantillon et consultez la validation.

Le panneau **XPath** sert à poser des questions sur la structure — par exemple « quelles balises `persName` n’ont pas de clé ? » — plutôt qu’à rechercher une simple chaîne de caractères. Les outils d’interface pour afficher les balises, les sauts de page et les notes aident à lire le résultat sans modifier le XML.

## 4. La carte des paramètres

| Onglet | Ouvrez-le lorsque vous voulez… | Voir aussi |
| --- | --- | --- |
| **Projet** | régler le schéma, la langue, les unités de traduction ou la synchronisation centrale | [Fonctions de base](/guide/fonctions-de-base), [Fichiers](/guide/fichiers) |
| **Profil** | modifier le nom qui peut être inscrit dans vos documents | Installation |
| **Interface** | changer la langue, le thème, les polices, le zoom ou l’affichage des balises | Cette page |
| **Garde-fous** | autoriser le XML direct ou les opérations en masse | Cette page, §5 |
| **Autorités** | choisir les sources de recherche et leurs options de correspondance | [Base de données](/guide/base-de-donnees) |
| **Packs de ressources** | installer des listes et ressources linguistiques | [Base de données](/guide/base-de-donnees) |
| **Plugins** | activer Kanripo, CBETA, Norbert, les dates et d’autres outils | [Fichiers](/guide/fichiers), §8 |
| **Base d’entités** | choisir, déplacer ou sauvegarder le dossier des entités | [Base de données](/guide/base-de-donnees) |
| **IA** | gérer une clé, un endpoint, LanguageTool ou les profils de requête | Cette page, §7 |
| **Politique de traduction** | régler la présentation des noms, dates et titres | Cette page, §6 |
| **Confidentialité** | relire ce qui reste local et ce qui peut être envoyé | [Confidentialité](/privacy) |

## 5. Les garde-fous

Les garde-fous existent parce qu’un remplacement global ou une automatisation mal ciblée peut endommager un corpus en quelques secondes.

- **Autoriser l’édition directe du code XML** : nécessaire pour modifier le document dans Monaco ; désactivez-la si vous voulez réserver le travail à la vue visuelle.
- **Autoriser l’enregistrement et la sortie du mode Source malgré des violations du schéma** : permet de continuer malgré un document invalide. Ne l’utilisez que si vous savez pourquoi la validation échoue.
- **Exiger un XML bien formé pour Rechercher et remplacer** : protège les remplacements qui touchent au balisage.
- **Autoriser les modifications automatisées sur plusieurs fichiers** : déverrouille les opérations globales. Dans le réglage **Enregistrer automatiquement un instantané avant**, choisissez au minimum les opérations sur plusieurs fichiers et sur tout le corpus.
- **Ne valider les modifications des autres fichiers qu’après validation** : utile pour repérer les conséquences d’une opération en masse, mais ne remplace pas la relecture.
- **Désactiver le cache de désambiguïsation IA** : à réserver aux cas où vous devez refaire une proposition avec un nouveau contexte.

Laissez désactivés les avertissements qui suppriment les confirmations de suppression ou de détachement d’une autorité. Une confirmation de plus coûte moins cher qu’une fiche ou qu’un dossier supprimé par erreur.

## 6. Régler la traduction

Dans **Paramètres → Politique de traduction**, les préréglages par langue déterminent la manière dont Grognard affiche les entités dans le panneau de traduction. Ils peuvent régler l’ordre de la translittération et de la traduction des titres, la présentation des dates de naissance, de décès, des dates approximatives et des ères, ainsi que l’usage des crochets.

Ces réglages sont précisément la raison pour laquelle la désambiguïsation est utile : une fiche correctement identifiée peut être rendue de manière homogène dans tout le corpus, sans ressaisie manuelle à chaque occurrence. Le texte original reste conservé ; la politique règle sa présentation dans la traduction.

Pour les dates est-asiatiques, les outils de Sanmiao et le plugin correspondant aident à conserver une conversion traçable. Ils ne remplacent pas la formulation originale de la source. Les notes et l’intégration Zotero restent des fonctions du panneau de traduction ; utilisez-les selon l’état de votre version installée.

LanguageTool est une aide facultative, réglable dans **Paramètres → IA → LanguageTool**. Grognard peut installer une copie locale gérée, qui nécessite [Java 17 ou une version ultérieure](https://adoptium.net/temurin/releases/), ou utiliser l’adresse d’un serveur que vous administrez. Le mode **À la demande** vérifie le texte lorsque vous le demandez ; le mode **Direct** souligne les problèmes pendant la saisie. Les données n-grammes sont optionnelles et peuvent être volumineuses. Un serveur distant reçoit le texte vérifié : consultez la [politique de confidentialité](/privacy) et choisissez un service auquel vous faites confiance.

## 7. L’IA : ce qu’elle voit

L’onglet **IA** permet de configurer une clé, un endpoint et, selon la version, un comportement toujours actif. Les profils de requête et les fonctions d’audit sont encore susceptibles d’évoluer selon la version installée : ne les considérez pas comme un contrat stable de l’application. Ces réglages changent le service et les consignes envoyées ; ils ne transforment pas l’IA en éditeur direct du XML.

La traduction assistée, la suggestion de balisage et la désambiguïsation sont trois opérations différentes. Selon l’outil utilisé, Grognard envoie le texte source, une sélection ou les mentions nécessaires à la tâche. Un modèle local ou un endpoint local traite ces données sur votre ordinateur ; un service en ligne reçoit les données transmises par la fonction et les traite selon ses propres conditions. Il ne faut pas supposer qu’une base personnelle entière est envoyée : vérifiez toujours le mode choisi et le fournisseur configuré.

Pour la traduction, Grognard peut remplacer les entités par des variables, faire traduire le texte autour de ces variables, puis réinsérer les fiches correspondantes. Le modèle ne modifie donc pas directement les mots, la ponctuation ou la segmentation de la source. Une clé d’API est entièrement facultative : l’édition locale, le balisage manuel, les imports, les bases d’entités et les traductions écrites à la main fonctionnent sans elle.

Les profils de consignes peuvent adapter le rôle demandé au modèle — suggestion, contrôle ou proposition de désambiguïsation — mais toute proposition IA doit être relue et validée par vous.

## 8. Les plugins qui ne servent pas à importer un corpus

Les plugins s’installent depuis **Paramètres → Plugins** ; Grognard peut vous proposer les ressources correspondant à la langue d’un nouveau projet.

- **Norbert** fournit des recherches contextuelles sur les personnes, les titres et certaines ressources spécialisées. Les fiches produites restent à vérifier dans votre base d’entités.
- **Dates est-asiatiques** accompagne l’identification des ères et des calendriers avec Sanmiao. Il conserve la possibilité de revenir à la formulation de la source.
- D’autres plugins peuvent ajouter des commandes à la barre d’outils ou au menu du projet. Leur présence et leur périmètre dépendent du pack installé ; consultez leur documentation avant une opération globale.

Les plugins d’importation Kanripo, CBETA, Daozang et BDRC sont décrits sur la page [Fichiers](/guide/fichiers), qui explique aussi leur provenance et leurs exigences réseau.

## 9. Interface, GitHub et confidentialité

L’onglet **Interface** permet notamment de choisir la langue de l’application, le thème, la police, le zoom, l’affichage des noms de balises et le traitement de certains espaces CJK. Ces préférences changent votre environnement de travail, pas les données déjà encodées.

La connexion GitHub est facultative. Elle sert de clé pour le classement et certaines fonctions cloud ; une évolution future pourra également permettre de conserver un corpus sur GitHub. Elle n’est pas nécessaire à l’édition normale hors connexion.

Grognard fonctionne localement par défaut. Les services d’IA, les recherches d’autorité, les sauvegardes cloud, la synchronisation centrale et LanguageTool distant sont des fonctions distinctes, activées selon vos choix. Pour le détail de ce qui reste sur la machine et de ce qui peut être transmis, consultez la page [Confidentialité](/privacy).

## 10. Avant une opération sensible

1. Identifiez les fichiers et les données que l’opération va toucher.
2. Faites un instantané ou une copie indépendante.
3. Testez sur un seul document ou une petite sélection.
4. Enregistrez, validez et relisez le résultat.
5. Élargissez seulement si le premier résultat correspond à votre intention.
