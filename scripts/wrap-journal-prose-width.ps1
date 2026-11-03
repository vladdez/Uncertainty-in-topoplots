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

function Test-IsStructuralLine {
  param([string]$Line)

  if ($Line -match '^\s') {
    return $true
  }

  # Keep Typst directives, headings, equations, labels, lists, and delimiter lines in
  # their authored layout. Only ordinary top-level manuscript prose is reflowed.
  return $Line -match '^(#|//|=|\$|```|\(|\)|\[|\]|\{|\}|<|\+\s|-\s|\*\s|\d+\.\s)'
}

function ConvertTo-WrappedLines {
  param(
    [string[]]$ParagraphLines,
    [int]$MaximumWidth
  )

  $text = (($ParagraphLines | ForEach-Object { $_.Trim() }) -join ' ').Trim()
  $wrapped = [System.Collections.Generic.List[string]]::new()

  while ($text.Length -gt $MaximumWidth) {
    $breakAt = $text.LastIndexOf(' ', $MaximumWidth)
    if ($breakAt -lt 1) {
      $breakAt = $text.IndexOf(' ', $MaximumWidth)
    }
    if ($breakAt -lt 1) {
      break
    }

    $wrapped.Add($text.Substring(0, $breakAt).TrimEnd())
    $text = $text.Substring($breakAt + 1).TrimStart()
  }

  $wrapped.Add($text)
  return $wrapped.ToArray()
}

$formatted = [System.Collections.Generic.List[string]]::new()
$paragraph = [System.Collections.Generic.List[string]]::new()

foreach ($line in $lines) {
  $isBlank = [string]::IsNullOrWhiteSpace($line)
  $isStructural = if ($isBlank) { $false } else { Test-IsStructuralLine $line }

  if ($isBlank -or $isStructural) {
    if ($paragraph.Count -gt 0) {
      foreach ($wrappedLine in (ConvertTo-WrappedLines $paragraph.ToArray() $Width)) {
        $formatted.Add($wrappedLine)
      }
      $paragraph.Clear()
    }

    $formatted.Add($line)
    continue
  }

  $paragraph.Add($line)
}

if ($paragraph.Count -gt 0) {
  foreach ($wrappedLine in (ConvertTo-WrappedLines $paragraph.ToArray() $Width)) {
    $formatted.Add($wrappedLine)
  }
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
  Write-Output "Reflowed journal.typ prose paragraphs to at most $Width characters."
}
