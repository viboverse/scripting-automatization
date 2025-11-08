$homeFolder = $env:USERPROFILE

$files = Get-ChildItem $homeFolder -File

$fileCount = $files.Count

Write-Host "$fileCount found at $homeFolder"