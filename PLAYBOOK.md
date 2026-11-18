# Playbook — Infographic Storytelling v1.1.0 — Universal Edition

## 1. Récupérer les sources

```powershell
git clone https://github.com/mounirelouali/infographic-storytelling.git
cd infographic-storytelling
```

## 2. ChatGPT Web / Windows

Le propriétaire du plugin peut ouvrir https://chatgpt.com/plugins/plugins_6afdb349f2d48191bc61f65e9da016e1. Activer le plugin dans le compte compatible, indiquer COLOR ou MINIMAL et transmettre le contenu sans autre paramètre. Si le générateur ne reçoit pas la référence automatiquement, joindre le PNG correspondant. La disponibilité dépend du client.

## 3. Claude Web / Desktop

Compresser le dossier `skills/infographic-storytelling` (dossier racine contenant SKILL.md et references/). Dans Claude, activer les capacités de création/édition de fichiers si nécessaires, puis importer le ZIP via Customize > Skills si disponible. Activer le skill. Les deux PNG originaux sont inclus dans le dossier assets/ ; conserver ce dossier lors de la compression.

## 4. VS Code / Claude Code / Codex

Depuis PowerShell dans la racine du dépôt :

```powershell
.\install-windows.ps1 -Agent Claude
.\install-windows.ps1 -Agent Codex
```

Relancer l'agent. Claude Code : `/infographic-storytelling MINIMAL — Explique le fonctionnement d'une API REST.`. Codex : sélectionner le skill ou le demander par son nom. Pour un environnement distant, installer dans son système de fichiers, pas uniquement sur Windows.

## 5. Utilisation universelle

Une demande naturelle suffit : `COLOR — Explique le cycle de l'eau` ou `MINIMAL — Résume le PDF joint`. Sans style, COLOR est automatique. Aucun paramètre obligatoire : le skill déduit les personnages utiles, la langue de sortie, le public, le niveau, l'objectif et les concepts. Toute préférence explicite prime. Par défaut, l'affiche est dans la langue du contenu, ou de la demande lorsque le contenu est absent ou mixte. Ne jamais imposer un contexte d'apprentissage de l'anglais.

Sans outil d'image, le skill fournit un prompt complet et identifie la référence ; utiliser ensuite un générateur compatible. Ne pas prétendre qu'une image a été générée si ce n'est pas le cas.

## 6. Tests

COLOR : palette et 4 chapitres. MINIMAL : seules les pastilles sont colorées. Vérifier le nombre de personnages, les dialogues, la lisibilité, la couverture des termes, la chronologie, la résolution. Si contenu trop dense, demander un découpage avant rendu. Les tests de rendu sur chaque plateforme restent à effectuer.

## 7. Maintenance

Modifier les prompts dans references/, garder SKILL.md cohérent et versionner les changements. Commit et push dans GitHub, puis reconstruire/réimporter les packages sur les clients concernés. Le dépôt public ne contient pas les secrets ni ne met automatiquement à jour les plugins cloud.
