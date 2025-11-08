$folderPath = Read-Host "Enter The Folder Path"

$allItems = Get-ChildItem $folderPath 

$allItemsCount = ($allItems | Measure-Object).Count

Write-Host "$allItemsCount found at $folderPath"