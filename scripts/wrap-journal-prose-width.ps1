param(
  [int]$Width = 92
)

$ErrorActionPreference = "Stop"

$projectRoot = Split-Path -Parent $PSScriptRoot
$journalPath = Join-Path $projectRoot "The Art of Uncertain Topoplots\journal.typ"

if (-not (Test-Path -LiteralPath $journalPath -PathType Leaf)) {
  throw "journal.typ was not found at: $journalPath"
}

$original = [System.IO.File]::ReadAllText($journalPath)
$newline = if ($original.Contains("`r`n")) { "`r`n" } else { "`n" }
$hadFinalNewline = $original.EndsWith("`n")
$lines = $original -split "`r?`n"

if ($hadFinalNewline -and $lines.Count -gt 0 -and $lines[-1] -eq "") {
  $lines = $lines[0..($lines.Count - 2)]
}

$formatted = [System.Collections.Generic.List[string]]::new()

foreach ($line in $lines) {
  # Only reflow top-level manuscript prose. Indented lines and Typst directives are
  # deliberately left untouched so tables, function arguments, and other code retain
  # their authored structure.
  if (
    $line.Length -le $Width -or
    $line -match '^\s' -or
    $line -match '^(#|//|=|\+|-\s|\d+\.\s)' -or
    $line -notmatch '\s'
  ) {
    $formatted.Add($line)
    continue
  }

  $remaining = $line.TrimEnd()
  while ($remaining.Length -gt $Width) {
    $breakAt = $remaining.LastIndexOf(' ', $Width)
    if ($breakAt -lt 1) {
      $breakAt = $remaining.IndexOf(' ', $Width)
    }
    if ($breakAt -lt 1) {
      break
    }

    $formatted.Add($remaining.Substring(0, $breakAt).TrimEnd())
    $remaining = $remaining.Substring($breakAt + 1).TrimStart()
  }
  $formatted.Add($remaining)
}

$updated = [string]::Join($newline, $formatted)
if ($hadFinalNewline) {
  $updated += $newline
}

if ($updated -ne $original) {
  # Do not overwrite an edit saved while this formatter was processing the file.
  if ([System.IO.File]::ReadAllText($journalPath) -ne $original) {
    Write-Warning "journal.typ changed during formatting; this run was skipped."
    exit 0
  }

  $utf8WithoutBom = [System.Text.UTF8Encoding]::new($false)
  [System.IO.File]::WriteAllText($journalPath, $updated, $utf8WithoutBom)
  Write-Output "Wrapped long prose lines in journal.typ to at most $Width characters."
}
