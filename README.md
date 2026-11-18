<div align="center">

# 🎨 Infographic Storytelling

**Transformez un cours en une histoire visuelle mémorable.**

`v1.0.0` · `Agent Skill` · `COLOR / MINIMAL` · `4 chapitres`

[Guide d'installation](PLAYBOOK.md) · [Skill](skills/infographic-storytelling/SKILL.md) · [ChatGPT](https://chatgpt.com/plugins/plugins_6afdb349f2d48191bc61f65e9da016e1)

<img src="docs/workflow.svg" alt="Infographie : du cours à l'histoire, en quatre étapes" width="100%">

</div>

## Deux styles. Une seule méthode.

| 🎨 COLOR | ✏️ MINIMAL |
|---|---|
| Bande dessinée pédagogique en couleurs naturelles | Croquis au trait noir, quatre cercles colorés |
| Palette fixe bleu, violet, vert, ocre | Minimum de distractions visuelles |
| [Prompt maître COLOR](skills/infographic-storytelling/references/color.md) | [Prompt maître MINIMAL](skills/infographic-storytelling/references/minimal.md) |

Chaque mode conserve une structure verticale 4:5, quatre chapitres, un protagoniste récurrent, des dialogues courts et une résolution narrative. Les termes requis doivent rester présents ; si la leçon est trop dense, le skill propose une série plutôt qu'une affiche illisible.

## ⚡ Démarrage rapide

Dans ChatGPT, Claude ou votre agent de code compatible, sélectionnez le skill et utilisez une demande comme :

```text
Infographic Storytelling — COLOR
CHARACTER_COUNT: 3
EXPLANATION_LANGUAGE: French
DIALOGUE_LANGUAGE_AND_LEVEL: English, A2
SOURCE_CONTENT: Explain before, after, behind, in front of, under, on.
```

Remplacez COLOR par MINIMAL pour un rendu au trait. Vous pouvez également préciser les personnages, les termes obligatoires et l'objectif pédagogique.

## Installation

| Environnement | Méthode |
|---|---|
| ChatGPT Web / Windows | Plugin privé pour son propriétaire ou adaptation du package |
| Claude Web / Desktop | Importer le dossier skill compressé |
| Claude Code / VS Code | Copier le skill dans `~/.claude/skills/` |
| Codex / VS Code | Copier le skill dans `~/.agents/skills/` |

Voir le [playbook](PLAYBOOK.md) pour les commandes et les prérequis. La disponibilité dépend du compte et du client. GitHub héberge les sources, mais ne déploie pas automatiquement un plugin cloud. Un générateur d'images compatible est nécessaire au rendu.

## Organisation

```
plugin.json
.codex-plugin/plugin.json
README.md
PLAYBOOK.md
install-windows.ps1
docs/workflow.svg
skills/infographic-storytelling/
  SKILL.md
  references/color.md
  references/minimal.md
```

**Références visuelles :** les deux PNG originaux accompagnent le plugin privé. Si les PNG ne sont pas présents dans ce dépôt, joindre manuellement l'image correspondante à la génération.

## Qualité pédagogique

- Vérifier l'exactitude des termes et la lisibilité.
- Maintenir le nombre de personnages et les quatre chapitres.
- Ne jamais remplacer la vérification par une promesse de fidélité pixel à pixel.
- Si aucun outil d'image n'est disponible, produire un prompt complet et indiquer la référence.

---

<div align="center">Conçu pour apprendre par l'action, pas par la mémorisation mécanique.</div>
