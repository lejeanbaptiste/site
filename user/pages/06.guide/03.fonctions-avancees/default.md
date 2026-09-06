---
title: Fonctions avancées
menu: Fonctions avancées
visible: false
template: guide-detail
---

# Aller plus loin avec Grognard.

Les fonctions avancées donnent davantage de prise sur la structure du document et sur les opérations répétitives. Elles deviennent utiles lorsque vous commencez à comprendre le schéma et que vous souhaitez travailler directement avec le XML.

<a id="editeur-xml"></a>

## L’éditeur XML Monaco

La **vue Source** repose sur Monaco Editor, le même éditeur de code que celui qui équipe Visual Studio Code. Elle affiche le XML du document avec une coloration syntaxique, une indentation lisible et des repères qui permettent de suivre l’arbre des éléments.

### L’autocomplétion

Lorsque vous saisissez une balise, un attribut ou une valeur, Monaco propose les possibilités compatibles avec le contexte du curseur. Les suggestions tiennent compte du schéma actif : elles vous aident à choisir une structure valide sans vous obliger à mémoriser toutes les balises TEI disponibles.

Vous pouvez accepter une proposition avec <kbd>Entrée</kbd> ou la parcourir avec les touches fléchées. L’autocomplétion est une aide à la saisie, pas une décision éditoriale : relisez toujours le résultat et vérifiez qu’il correspond à ce que vous voulez exprimer.

### L’édition liée

Dans le mode Source, Grognard relie les balises ouvrantes et fermantes d’un même élément. Lorsque vous modifiez le nom d’une balise, son élément correspondant est mis à jour avec elle ; le document ne reste donc pas accidentellement ouvert par une balise qui ne trouverait plus sa fermeture.

Cette édition liée est particulièrement pratique pour déplacer ou préciser une structure existante. Elle ne remplace pas la validation : après une modification importante, enregistrez le document et consultez le panneau de validation.

### Quand utiliser la vue Source

Utilisez la vue visuelle pour la transcription courante, le balisage guidé et les corrections qui peuvent être exprimées par les outils de Grognard. Passez à la vue Source lorsque vous devez inspecter des métadonnées, corriger une structure précise, contrôler un attribut ou comprendre pourquoi un document ne se valide pas.

La vue Source donne plus de liberté et demande donc plus d’attention. Si vous débutez avec XML, observez d’abord le document sans le modifier ; revenez ensuite à la vue visuelle pour les opérations que l’interface peut effectuer à votre place.
