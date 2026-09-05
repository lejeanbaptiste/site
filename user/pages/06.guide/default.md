---
title: Guide
menu: Guide
template: guide
---

<section class="guide-section" id="premiers-pas">
  <div class="guide-section__heading"><span>01</span><div><p class="eyebrow">La première séance</p><h2>Préparer<br>le terrain.</h2></div></div>
  <div class="guide-section__body">
    <p class="guide-lede">Commencez par le projet, pas par le fichier. C’est lui qui rassemble votre schéma, vos réglages et vos documents.</p>
    <ol class="guide-steps">
      <li><strong>Installez Grognard</strong><span>Téléchargez l’installeur correspondant à votre système, puis lancez l’application une première fois.</span></li>
      <li><strong>Ouvrez un projet</strong><span>Choisissez un dossier existant ou créez-en un. Le projet devient la maison de vos textes, de votre schéma et de leurs métadonnées.</span></li>
      <li><strong>Choisissez un schéma</strong><span>Pour un nouveau projet, l’assistant propose les catalogues disponibles. Le schéma détermine les éléments et attributs que l’édition peut employer.</span></li>
      <li><strong>Ouvrez un document</strong><span>L’Explorateur présente les fichiers XML du projet. Plusieurs documents peuvent rester ouverts dans la même fenêtre.</span></li>
    </ol>
    <div class="guide-note"><span>Le bon premier test</span><p>Ouvrez trois paragraphes seulement. Vérifiez le balisage et la validation avant d’importer ou de modifier un corpus entier.</p></div>
  </div>
</section>

<section class="guide-section guide-section--dark" id="projet">
  <div class="guide-section__heading"><span>02</span><div><p class="eyebrow">Le cadre du travail</p><h2>Un projet,<br>une règle du jeu.</h2></div></div>
  <div class="guide-section__body">
    <p class="guide-lede">Un projet Grognard n’est pas un simple dossier de fichiers. Il porte les conditions qui rendent votre édition compréhensible et durable.</p>
    <ol class="guide-steps">
      <li><strong>Renseignez l’édition</strong><span>Dans <em>Project → Edition metadata…</em>, indiquez le titre, la langue, les responsables et les informations communes à l’ensemble du projet.</span></li>
      <li><strong>Créez un document</strong><span><kbd>⌘</kbd>/<kbd>Ctrl</kbd> + <kbd>N</kbd> ouvre un nouveau fichier à partir du squelette correspondant au schéma actif. Le premier enregistrement vous propose un emplacement.</span></li>
      <li><strong>Complétez le fichier</strong><span>Les métadonnées d’édition servent de valeurs par défaut ; le panneau de métadonnées du fichier permet de préciser son titre et sa source.</span></li>
      <li><strong>Gardez les éléments liés ensemble</strong><span>Les fichiers source, traductions, schéma et données d’entités forment un ensemble. Organisez et sauvegardez le projet comme tel.</span></li>
    </ol>
    <div class="guide-note"><span>À retenir</span><p>Le schéma est un contrat partagé : entre l’éditeur, votre équipe, vos scripts et la future publication.</p></div>
  </div>
</section>

<section class="guide-section" id="editer">
  <div class="guide-section__heading"><span>03</span><div><p class="eyebrow">Le geste éditorial</p><h2>Transcrire<br>et structurer.</h2></div></div>
  <div class="guide-section__body">
    <p class="guide-lede">Écrivez dans la vue visuelle comme dans un traitement de texte, puis employez le balisage lorsque sa précision devient nécessaire.</p>
    <div class="guide-note"><span>Le réflexe à garder</span><p>Sélectionnez le passage concerné avant d’ouvrir une commande de balisage : le contexte de votre geste reste ainsi parfaitement clair.</p></div>
    <ol class="guide-steps">
      <li><strong>Travaillez en mode visuel</strong><span>La vue visuelle vous permet de vous concentrer sur le texte tout en respectant les possibilités du schéma actif.</span></li>
      <li><strong>Ouvrez le balisage</strong><span>Appuyez sur <kbd>Entrée</kbd> au point d’insertion ou autour d’une sélection. Grognard propose les éléments valides à cet endroit.</span></li>
      <li><strong>Ajoutez les attributs</strong><span><kbd>⌥</kbd> + <kbd>Entrée</kbd> sur Mac, ou <kbd>Alt</kbd> + <kbd>Entrée</kbd> ailleurs, ouvre la saisie des attributs du passage courant.</span></li>
      <li><strong>Changez de niveau quand il le faut</strong><span>Le mode Source donne accès au XML tel qu’il sera enregistré. Utilisez-le pour les corrections précises, les métadonnées et les structures difficiles à atteindre visuellement.</span></li>
      <li><strong>Enregistrez</strong><span><kbd>⌘</kbd>/<kbd>Ctrl</kbd> + <kbd>S</kbd> écrit le document sur disque et alimente l’historique local.</span></li>
    </ol>
  </div>
</section>

<section class="guide-section guide-section--dark" id="entites">
  <div class="guide-section__heading"><span>04</span><div><p class="eyebrow">Noms, lieux, œuvres</p><h2>Identifier<br>sans deviner.</h2></div></div>
  <div class="guide-section__body">
    <p class="guide-lede">Un nom balisé n’est pas encore une personne identifiée. Grognard sépare la forme présente dans le texte de l’entité historique à laquelle elle renvoie.</p>
    <ol class="guide-steps">
      <li><strong>Balisez la mention</strong><span>Employez le type adapté — par exemple <code>persName</code>, <code>placeName</code>, <code>orgName</code> ou <code>title</code>.</span></li>
      <li><strong>Ouvrez la recherche d’entité</strong><span>Utilisez les outils d’autorité et de recherche pour comparer les formes, les dates, les lieux et les identifiants disponibles.</span></li>
      <li><strong>Désambiguïsez</strong><span>Choisissez un candidat, vérifiez ses informations et conservez votre décision dans le lien d’autorité plutôt que dans une note informelle.</span></li>
      <li><strong>Contrôlez les cas incertains</strong><span>Une suggestion automatique est une proposition. Acceptez, rejetez ou laissez indécise chaque mention qui demande une lecture historique.</span></li>
    </ol>
    <div class="guide-note"><span>Le XML reste lisible</span><p>Une mention peut conserver sa forme originale tout en portant une clé d’identification : <code>&lt;persName key="…"&gt;…&lt;/persName&gt;</code>.</p></div>
  </div>
</section>

<section class="guide-section" id="dates">
  <div class="guide-section__heading"><span>05</span><div><p class="eyebrow">Chronologies historiques</p><h2>Rendre les dates<br>interrogeables.</h2></div></div>
  <div class="guide-section__body">
    <p class="guide-lede">Les dates historiques ne se comportent pas toujours comme des dates modernes. Grognard peut les conserver dans leur forme textuelle tout en leur donnant une structure exploitable.</p>
    <ol class="guide-steps">
      <li><strong>Conservez la formulation</strong><span>Ne remplacez pas automatiquement une date d’ère, de règne ou de cycle par une date occidentale qui effacerait l’information originale.</span></li>
      <li><strong>Utilisez le module de dates</strong><span>Le plugin de dates CJK et Sanmiao accompagne l’identification des ères, règnes et calendriers lorsque le projet est configuré pour cela.</span></li>
      <li><strong>Vérifiez le résultat</strong><span>Les propositions de date doivent être relues comme les propositions d’entité. Une conversion utile doit rester traçable et réversible.</span></li>
      <li><strong>Interrogez ensuite</strong><span>Une date structurée peut soutenir les recherches et les contrôles chronologiques de l’édition.</span></li>
    </ol>
  </div>
</section>

<section class="guide-section guide-section--dark" id="traduire">
  <div class="guide-section__heading"><span>06</span><div><p class="eyebrow">Texte et traduction</p><h2>Traduire<br>sans dédoubler.</h2></div></div>
  <div class="guide-section__body">
    <p class="guide-lede">La traduction vit dans un fichier compagnon séparé, mais reste alignée sur les unités du document source.</p>
    <ol class="guide-steps">
      <li><strong>Configurez une langue</strong><span>Dans les réglages de traduction du projet, choisissez la langue et l’unité d’alignement : paragraphe ou section.</span></li>
      <li><strong>Démarrez la traduction</strong><span>Depuis le document source, activez le mode Traduction. Grognard crée ou ouvre le compagnon correspondant.</span></li>
      <li><strong>Suivez les unités</strong><span>Chaque carte de traduction correspond à une unité du texte source. Le déplacement dans la source sélectionne l’unité correspondante.</span></li>
      <li><strong>Enregistrez séparément</strong><span>La traduction peut être mise à jour sans remplacer le texte source. Les liens entre fichiers sont conservés par les identifiants d’alignement.</span></li>
      <li><strong>Recherchez dans le bon périmètre</strong><span>Les outils peuvent cibler la source, une traduction précise ou l’ensemble des documents liés.</span></li>
    </ol>
    <div class="guide-note"><span>Avant la première traduction</span><p>Si les unités source n’ont pas encore d’identifiants, Grognard vous demandera de confirmer leur création.</p></div>
  </div>
</section>

<section class="guide-section" id="importer">
  <div class="guide-section__heading"><span>07</span><div><p class="eyebrow">Faire entrer les sources</p><h2>Importer,<br>puis relire.</h2></div></div>
  <div class="guide-section__body">
    <p class="guide-lede">L’import accélère la préparation ; il ne remplace pas le travail éditorial. Chaque fichier importé doit être inspecté et validé.</p>
    <ol class="guide-steps">
      <li><strong>Importez depuis une source web</strong><span>Pour Wikisource, utilisez <em>File → Import from Wikisource…</em>. L’extension de navigateur est un raccourci ; l’import intégré reste disponible.</span></li>
      <li><strong>Importez un fichier local</strong><span><em>File → Import…</em> accepte notamment des fichiers texte et des documents XML de la même famille que le projet.</span></li>
      <li><strong>Choisissez le périmètre</strong><span>Vous pouvez importer un fichier, plusieurs fichiers ou un dossier. Les sorties sont écrites dans le projet cible et portent leur provenance.</span></li>
      <li><strong>Inspectez avant de généraliser</strong><span>Ouvrez un résultat, vérifiez les paragraphes, les métadonnées, les balises et les caractères spéciaux avant de traiter le reste du corpus.</span></li>
    </ol>
    <div class="guide-note"><span>Une règle de prudence</span><p>Un import réussi signifie que le fichier a été produit. Il ne signifie pas que chaque décision éditoriale est juste.</p></div>
  </div>
</section>

<section class="guide-section guide-section--dark" id="controler">
  <div class="guide-section__heading"><span>08</span><div><p class="eyebrow">Lire ce que contient l’édition</p><h2>Rechercher,<br>interroger, valider.</h2></div></div>
  <div class="guide-section__body">
    <p class="guide-lede">Grognard propose plusieurs façons de poser une question au corpus. Elles ne répondent pas au même besoin.</p>
    <ol class="guide-steps">
      <li><strong>Recherchez une forme</strong><span><kbd>⌘</kbd>/<kbd>Ctrl</kbd> + <kbd>F</kbd> trouve une chaîne, avec options de casse, d’expression régulière et de remplacement.</span></li>
      <li><strong>Interrogez la structure</strong><span>Le panneau XPath répond aux questions qui portent sur les balises, attributs, relations et métadonnées plutôt que sur la seule apparence du texte.</span></li>
      <li><strong>Lisez la validation</strong><span>Le XML peut être bien formé tout en étant invalide au regard du schéma. Commencez par le premier message : les suivants peuvent être des erreurs en cascade.</span></li>
      <li><strong>Inspectez l’arbre</strong><span>Le panneau de balisage et l’arbre XML montrent où se trouve le passage et comment il s’insère dans la structure complète.</span></li>
      <li><strong>Corrigez dans le bon mode</strong><span>La vue visuelle protège contre de nombreuses structures invalides. La vue Source donne la liberté nécessaire, mais demande un contrôle immédiat.</span></li>
    </ol>
  </div>
</section>

<section class="guide-section" id="sauvegarder">
  <div class="guide-section__heading"><span>09</span><div><p class="eyebrow">Continuité du travail</p><h2>Enregistrer<br>et récupérer.</h2></div></div>
  <div class="guide-section__body">
    <p class="guide-lede">La sauvegarde n’est pas la dernière étape. Elle accompagne chaque décision et doit pouvoir réparer une mauvaise manipulation.</p>
    <ol class="guide-steps">
      <li><strong>Enregistrez souvent</strong><span>Les fichiers restent dans votre projet local. Enregistrez après une série de décisions cohérentes, avant une opération globale et avant une modification de schéma.</span></li>
      <li><strong>Utilisez l’historique</strong><span><em>File → History…</em> permet de retrouver des états antérieurs d’un fichier ; <em>Project → Rollback…</em> restaure un état du projet.</span></li>
      <li><strong>Ajoutez une vraie sauvegarde</strong><span>Time Machine est un filet de sécurité local. Il ne remplace ni une copie externe, ni Git, ni une politique de sauvegarde d’équipe.</span></li>
      <li><strong>Transportez l’ensemble</strong><span>Les traductions, schémas, fichiers XML et données d’entités qui se référencent mutuellement doivent voyager ensemble.</span></li>
    </ol>
    <div class="guide-note"><span>Après une erreur importante</span><p>Arrêtez-vous avant de propager la correction. Notez le fichier et l’opération concernés, puis revenez à un état connu.</p></div>
  </div>
</section>

<section class="guide-map" id="panneaux">
  <div><p class="eyebrow">La carte de l’interface</p><h2>Un panneau pour<br>chaque question.</h2></div>
  <dl>
    <div><dt>Explorateur</dt><dd>Où sont mes documents&nbsp;?</dd></div>
    <div><dt>Texte / Source</dt><dd>Que suis-je en train d’écrire&nbsp;?</dd></div>
    <div><dt>Balisage et arbre</dt><dd>Quelle est la structure de ce passage&nbsp;?</dd></div>
    <div><dt>Entités et autorités</dt><dd>À qui ou à quoi ce nom renvoie-t-il&nbsp;?</dd></div>
    <div><dt>Traduction</dt><dd>Quelle unité source suis-je en train de traduire&nbsp;?</dd></div>
    <div><dt>Recherche et XPath</dt><dd>Où ce motif ou cette structure apparaît-il&nbsp;?</dd></div>
    <div><dt>Validation</dt><dd>Mon document respecte-t-il le schéma&nbsp;?</dd></div>
    <div><dt>Historique</dt><dd>Quel état puis-je restaurer&nbsp;?</dd></div>
  </dl>
</section>

<section class="shortcut-section" id="raccourcis">
  <div class="shortcut-section__heading"><p class="eyebrow">À garder sous la main</p><h2>Les raccourcis<br>essentiels.</h2><p>Sur Mac, utilisez <kbd>⌘</kbd>. Sur Windows et Linux, remplacez-le par <kbd>Ctrl</kbd>.</p></div>
  <div class="shortcut-groups">
    <section><h3>Projet &amp; fichiers</h3><dl class="shortcut-list"><div><dt><kbd>⌘</kbd>/<kbd>Ctrl</kbd> <kbd>N</kbd></dt><dd>Nouveau fichier</dd></div><div><dt><kbd>⌘</kbd>/<kbd>Ctrl</kbd> <kbd>O</kbd></dt><dd>Ouvrir un projet</dd></div><div><dt><kbd>⌘</kbd>/<kbd>Ctrl</kbd> <kbd>S</kbd></dt><dd>Enregistrer</dd></div><div><dt><kbd>⌘</kbd>/<kbd>Ctrl</kbd> <kbd>⇧</kbd> <kbd>S</kbd></dt><dd>Enregistrer sous</dd></div><div><dt><kbd>⌘</kbd>/<kbd>Ctrl</kbd> <kbd>W</kbd></dt><dd>Fermer l’onglet</dd></div></dl></section>
    <section><h3>Édition</h3><dl class="shortcut-list"><div><dt><kbd>⌘</kbd>/<kbd>Ctrl</kbd> <kbd>Z</kbd></dt><dd>Annuler</dd></div><div><dt><kbd>⌘</kbd>/<kbd>Ctrl</kbd> <kbd>⇧</kbd> <kbd>Z</kbd></dt><dd>Rétablir</dd></div><div><dt><kbd>⌘</kbd>/<kbd>Ctrl</kbd> <kbd>F</kbd></dt><dd>Rechercher</dd></div><div><dt><kbd>F2</kbd></dt><dd>Renommer l’élément courant</dd></div><div><dt><kbd>⇧</kbd> <kbd>Entrée</kbd></dt><dd>Insérer un saut de ligne XML</dd></div></dl></section>
    <section><h3>Balisage</h3><dl class="shortcut-list"><div><dt><kbd>Entrée</kbd></dt><dd>Ouvrir ou confirmer la commande de balisage</dd></div><div><dt><kbd>⌥</kbd>/<kbd>Alt</kbd> <kbd>Entrée</kbd></dt><dd>Éditer les attributs</dd></div><div><dt><kbd>⇧</kbd> <kbd>Entrée</kbd></dt><dd>Propager le balisage proposé</dd></div><div><dt><kbd>⌥</kbd>/<kbd>Alt</kbd> <kbd>Entrée</kbd></dt><dd>Ajouter les attributs au passage courant</dd></div></dl></section>
    <section><h3>Suggestions</h3><dl class="shortcut-list"><div><dt><kbd>J</kbd>/<kbd>K</kbd></dt><dd>Suggestion suivante / précédente</dd></div><div><dt><kbd>Espace</kbd></dt><dd>Parcourir les candidats</dd></div><div><dt><kbd>Entrée</kbd></dt><dd>Accepter la suggestion</dd></div><div><dt><kbd>R</kbd>/<kbd>X</kbd></dt><dd>Rejeter la suggestion</dd></div></dl></section>
  </div>
</section>

<section class="guide-coda"><p class="eyebrow">La suite vous appartient</p><p>Commencez petit, vérifiez souvent, puis laissez le texte vous résister.</p><a class="button button--gold" href="/download">Télécharger Grognard <span aria-hidden="true">→</span></a></section>
