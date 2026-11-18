param(
    [ValidateSet('Claude','Codex')][string]$Agent = 'Claude',
    [string]$ProjectPath,
    [switch]$Replace
)
$ErrorActionPreference = 'Stop'
$root = if ($ProjectPath) { (Resolve-Path -LiteralPath $ProjectPath).Path } else { $HOME }
$rel = if ($Agent -eq 'Claude') { '.claude\skills' } else { '.agents\skills' }
$base = Join-Path $root $rel
$source = Join-Path $PSScriptRoot 'skills\infographic-storytelling'
$dest = Join-Path $base 'infographic-storytelling'
if (!(Test-Path -LiteralPath (Join-Path $source 'SKILL.md'))) { throw 'Source du skill introuvable.' }
if (Test-Path -LiteralPath $dest) {
    if (!$Replace) { throw "Skill existant : $dest. Utilisez -Replace pour sauvegarder et remplacer." }
    $backupRoot = Join-Path $HOME 'infographic-storytelling-backups'
    New-Item -ItemType Directory -Force -Path $backupRoot | Out-Null
    $backup = Join-Path $backupRoot ("$Agent-" + (Get-Date -Format 'yyyyMMdd-HHmmss-fff'))
    Move-Item -LiteralPath $dest -Destination $backup
    Write-Host "Sauvegarde : $backup"
}
New-Item -ItemType Directory -Force -Path $base | Out-Null
Copy-Item -LiteralPath $source -Destination $dest -Recurse
if (!(Test-Path -LiteralPath (Join-Path $dest 'SKILL.md'))) { throw 'Installation non vérifiée.' }
Write-Host "Skill installé : $dest. Relancez votre session agent."
