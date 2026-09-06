---
title: Confidentialité
slug: privacy
visible: false
lastUpdated: 6 septembre 2026
---

*Dernière mise à jour : 6 septembre 2026.*

## Une application de bureau, d’abord locale

Grognard est une application de bureau. Il n’existe pas de version web de l’application, et l’édition normale ne nécessite pas de compte ni de connexion réseau.

Vos fichiers, vos projets XML, vos bases d’entités, vos packs hors ligne et la plupart de vos paramètres restent sur votre ordinateur. Grognard ne téléverse pas automatiquement votre corpus.

Le nom d’utilisateur saisi dans les paramètres peut être écrit dans vos documents comme métadonnée de projet ou de document. Il voyage alors avec le fichier parce qu’il en fait partie.

## Le site web

Le site de Grognard ne collecte actuellement aucune donnée personnelle. Il n’utilise ni compte, ni formulaire, ni outil de mesure d’audience, ni cookie de suivi. La navigation sur le site ne transmet pas votre corpus ni les données de l’application.

## Connexion à GitHub

La connexion à GitHub sert de clé d’identité pour plusieurs fonctions choisies par l’utilisateur :

- envoyer une fiche de service au classement ;
- authentifier une sauvegarde cloud ou une synchronisation de base d’entités, lorsque cette fonction est configurée ;
- permettre, dans une version future, de stocker un corpus dans un dépôt GitHub choisi par l’utilisateur.

Grognard utilise le flux OAuth Device Flow de GitHub. Le jeton est conservé localement dans les données de l’application et n’est transmis à un service que lorsqu’une fonction qui en a besoin est explicitement utilisée. Le jeton sert à prouver l’identité du compte ; il ne donne pas à Grognard un accès général aux dépôts de l’utilisateur.

## Données envoyées au classement

L’envoi au classement est volontaire. Lorsque vous choisissez d’y participer, Grognard transmet à son service les informations nécessaires pour associer votre progression à votre identité GitHub vérifiée et afficher une fiche de classement. La nature exacte des indicateurs peut évoluer avec le projet.

Le classement ne reçoit pas le contenu de vos textes, de vos fichiers XML ou de votre base d’entités. Un avatar peut être transmis séparément si vous choisissez de l’utiliser.

## Sauvegardes, synchronisation et services externes

Les sauvegardes cloud et la synchronisation sont des fonctions facultatives. Lorsqu’elles sont configurées, les données nécessaires sont envoyées au service choisi pour cette fonction. Grognard fournit l’interface et la connexion ; la disponibilité, l’hébergement, la conservation et les règles de confidentialité de ces services tiers ne sont pas sous le contrôle de Grognard.

De même, les recherches d’autorité utilisent les services externes sélectionnés dans l’application. Une requête peut alors quitter votre ordinateur pour atteindre le service d’autorité concerné. Consultez les conditions et la politique de confidentialité de ce service avant de l’utiliser.

## Fonctions d’intelligence artificielle

Les fonctions d’IA sont facultatives. Lorsque vous en activez une, Grognard envoie au point de terminaison que vous avez configuré le passage traité, vos consignes personnalisées, la langue cible et le contexte nécessaire à la tâche — notamment les marqueurs d’entités et de dates.

Avec un service en ligne, ces données quittent votre ordinateur et sont soumises aux conditions et à la politique de confidentialité du fournisseur que vous avez choisi. Avec un modèle local, elles sont envoyées au serveur local que vous avez configuré ; elles ne quittent pas votre ordinateur, sauf si ce serveur les transmet lui-même à un autre service. Grognard ne choisit pas ce fournisseur à votre place et ne reçoit pas une copie indépendante de ces requêtes.

## Rapports d’erreur

Grognard n’envoie pas automatiquement de rapports d’erreur ou de plantage. Pour signaler un problème, utilisez les [Issues du projet sur GitHub](https://github.com/grognard/grognard/issues) et fournissez, si possible, les étapes permettant de reproduire le problème ainsi que les informations techniques pertinentes.

## Modification de cette notice

Cette notice peut évoluer avec les fonctions de Grognard. La date de mise à jour et les changements importants seront indiqués ici.

Pour toute question, consultez le [dépôt du projet sur GitHub](https://github.com/grognard/grognard) et son système de suivi.
