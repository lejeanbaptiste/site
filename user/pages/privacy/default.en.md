---
title: Privacy
slug: privacy
visible: false
lastUpdated: September 6, 2026
---

*Last updated: September 6, 2026.*

## A desktop app, designed to stay local

Grognard is a desktop application. There is no web version of the app, and normal use does not require an account or an internet connection.

Your files, XML projects, entity databases, offline packs, and most settings stay on your computer. Grognard does not automatically upload your corpus.

The username entered in Settings may be written into your documents as project or document metadata. In that case, it travels with the file because it is part of the file itself.

## The website

The Grognard website currently collects no personal data. It uses no accounts, forms, analytics, or tracking cookies. Browsing the site does not transmit your corpus or application data.

## GitHub sign-in

GitHub sign-in acts as an identity key for several user-initiated features:

- submitting a service record to the leaderboard;
- authenticating a cloud backup or entity-database sync, when that feature is configured;
- potentially storing a corpus in a GitHub repository chosen by the user in a future version.

Grognard uses GitHub’s OAuth Device Flow. The token is stored locally in the app’s data and is sent to a service only when you explicitly use a feature that requires it. The token is used to verify the account’s identity; it does not give Grognard general access to your repositories.

## Data sent to the leaderboard

Submitting data to the leaderboard is optional. If you choose to participate, Grognard sends its service the information needed to associate your progress with your verified GitHub identity and display a leaderboard entry. The exact metrics may change as the project evolves.

The leaderboard does not receive the contents of your text, XML files, or entity database. An avatar may be sent separately if you choose to use one.

## Backups, synchronization, and external services

Cloud backups and synchronization are optional features. When configured, the data required for them is sent to the service you selected. Grognard provides the interface and connection; the availability, hosting, retention, and privacy practices of these third-party services are outside Grognard’s control.

Authority searches likewise use the external services selected in the app. A query may leave your computer and be sent to the relevant authority service. Review that service’s terms and privacy policy before using it.

## AI features

AI features are optional. When you enable one, Grognard sends the processed passage, your custom instructions, the target language, and the context needed for the task—especially entity and date markers—to the endpoint you configured.

With an online service, this data leaves your computer and is subject to the terms and privacy policy of the provider you chose. With a local model, it is sent to the local server you configured and does not leave your computer unless that server forwards it to another service. Grognard does not choose the provider for you and does not receive a separate copy of these requests.

## Error reports

Grognard does not automatically send error or crash reports. To report a problem, use the project’s [GitHub Issues](https://github.com/grognard/grognard/issues) and, if possible, include the steps to reproduce it along with any relevant technical details.

## Changes to this notice

This notice may change as Grognard’s features evolve. The update date and any significant changes will be noted here.

For questions, visit the project’s [GitHub repository](https://github.com/grognard/grognard) and issue tracker.
