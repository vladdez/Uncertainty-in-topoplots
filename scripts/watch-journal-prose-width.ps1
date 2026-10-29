$ErrorActionPreference = "Stop"

$formatterPath = Join-Path $PSScriptRoot "wrap-journal-prose-width.ps1"
$projectRoot = Split-Path -Parent $PSScriptRoot
$journalPath = Join-Path $projectRoot "The Art of Uncertain Topoplots\journal.typ"
$journalDirectory = Split-Path -Parent $journalPath
$journalName = Split-Path -Leaf $journalPath

if (-not (Test-Path -LiteralPath $formatterPath -PathType Leaf)) {
  throw "Formatter was not found at: $formatterPath"
}

if (-not (Test-Path -LiteralPath $journalPath -PathType Leaf)) {
  throw "journal.typ was not found at: $journalPath"
}

$watcher = [System.IO.FileSystemWatcher]::new($journalDirectory, $journalName)
$watcher.NotifyFilter = [System.IO.NotifyFilters]::LastWrite -bor
  [System.IO.NotifyFilters]::Size -bor
  [System.IO.NotifyFilters]::FileName
$watcher.EnableRaisingEvents = $true

try {
  while ($true) {
    # Wait indefinitely without polling. Windows wakes this process only after an edit.
    $null = $watcher.WaitForChanged([System.IO.WatcherChangeTypes]::All)

    # Debounce save operations that produce several file-system events.
    Start-Sleep -Milliseconds 500
    while (-not $watcher.WaitForChanged(
      [System.IO.WatcherChangeTypes]::All,
      200
    ).TimedOut) {
    }

    # Some editors replace a file rather than updating it in place. Retry briefly while
    # the replacement file becomes available, then wait for the next real edit.
    for ($attempt = 1; $attempt -le 5; $attempt++) {
      try {
        if (Test-Path -LiteralPath $journalPath -PathType Leaf) {
          & $formatterPath -Width 92
        }
        break
      }
      catch {
        if ($attempt -eq 5) {
          Write-Warning $_
          break
        }
        Start-Sleep -Milliseconds 500
      }
    }
  }
}
finally {
  $watcher.Dispose()
}
