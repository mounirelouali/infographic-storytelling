# Playbook — Infographic Storytelling v1.0.0

## 1. Récupérer les sources

```powershell
git clone https://github.com/mounirelouali/infographic-storytelling.git
cd infographic-storytelling
```

## 2. ChatGPT Web / Windows

Le propriétaire du plugin peut ouvrir https://chatgpt.com/plugins/plugins_6afdb349f2d48191bc61f65e9da016e1. Activer le plugin dans le compte compatible, sélectionner COLOR ou MINIMAL et transmettre le contenu. Si le générateur ne reçoit pas la référence automatiquement, joindre le PNG correspondant. La disponibilité dépend du client.

## 3. Claude Web / Desktop

Compresser le dossier `skills/infographic-storytelling` (dossier racine contenant SKILL.md et references/). Dans Claude, activer les capacités de création/édition de fichiers si nécessaires, puis importer le ZIP via Customize > Skills si disponible. Activer le skill. Les deux PNG originaux sont inclus dans le dossier assets/ ; conserver ce dossier lors de la compression.

## 4. VS Code / Claude Code / Codex

Depuis PowerShell dans la racine du dépôt :

```powershell
.\install-windows.ps1 -Agent Claude
.\install-windows.ps1 -Agent Codex
```

Relancer l'agent. Claude Code : `/infographic-storytelling MINIMAL, 3 personnages, voici le cours : ...`. Codex : sélectionner le skill ou le demander par son nom. Pour un environnement distant, installer dans son système de fichiers, pas uniquement sur Windows.

## 5. Paramètres

STYLE : COLOR ou MINIMAL. CHARACTER_COUNT : 3 par défaut. CHARACTERS : description facultative. EXPLANATION_LANGUAGE : French. DIALOGUE_LANGUAGE_AND_LEVEL : English, A2. REQUIRED_TERMS et LEARNING_OBJECTIVE : inférés sauf indication. SOURCE_CONTENT : leçon obligatoire.

Sans outil d'image, le skill fournit un prompt complet et identifie la référence ; utiliser ensuite ChatGPT Images ou un générateur compatible. Ne pas prétendre qu'une image a été générée si ce n'est pas le cas.

## 6. Tests

COLOR : palette et 4 chapitres. MINIMAL : seules les pastilles sont colorées. Vérifier le nombre de personnages, les dialogues, la lisibilité, la couverture des termes, la chronologie, la résolution. Si contenu trop dense, demander un découpage avant rendu. Les tests de rendu sur chaque plateforme restent à effectuer.

## 7. Maintenance

Modifier les prompts dans references/, garder SKILL.md cohérent et versionner les changements. Commit et push dans GitHub, puis reconstruire/réimporter les packages sur les clients concernés. Le dépôt public ne contient pas les secrets ni ne met automatiquement à jour les plugins cloud.
