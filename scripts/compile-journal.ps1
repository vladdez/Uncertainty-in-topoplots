param(
  [string]$OutputPath
)

$ErrorActionPreference = "Stop"

$projectRoot = Split-Path -Parent $PSScriptRoot
$journalDirectory = Join-Path $projectRoot "The Art of Uncertain Topoplots"
$journalPath = Join-Path $journalDirectory "journal.typ"
$formatterPath = Join-Path $PSScriptRoot "wrap-journal-prose-width.ps1"

if (-not (Test-Path -LiteralPath $journalPath -PathType Leaf)) {
  throw "journal.typ was not found at: $journalPath"
}

if (-not (Test-Path -LiteralPath $formatterPath -PathType Leaf)) {
  throw "Journal formatter was not found at: $formatterPath"
}

if ([string]::IsNullOrWhiteSpace($OutputPath)) {
  $OutputPath = Join-Path $journalDirectory "journal.pdf"
}
elseif (-not [System.IO.Path]::IsPathRooted($OutputPath)) {
  $OutputPath = Join-Path $journalDirectory $OutputPath
}

& $formatterPath -Width 92

$quartoCommand = Get-Command quarto.exe -ErrorAction SilentlyContinue
if ($null -ne $quartoCommand) {
  $quartoPath = $quartoCommand.Source
}
else {
  $quartoPath = "C:\Program Files\RStudio\resources\app\bin\quarto\bin\quarto.exe"
}

if (-not (Test-Path -LiteralPath $quartoPath -PathType Leaf)) {
  throw "Quarto was not found. Install Quarto or update its path in this script."
}

& $quartoPath typst compile $journalPath $OutputPath --root $journalDirectory
if ($LASTEXITCODE -ne 0) {
  exit $LASTEXITCODE
}

Write-Output "Compiled journal: $OutputPath"
