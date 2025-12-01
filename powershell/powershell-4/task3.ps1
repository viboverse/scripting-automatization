param()

$fileNames = @()


do {
    $userInput = Read-Host "Give a file name, press Enter to quit"
    
    if ($userInput -ne "") {
        $fileNames += $userInput
    }
} while ($userInput -ne "")

$currentDateTime = Get-Date -Format "d.M.yyyy HH.mm"

$createdCount = 0
foreach ($fileName in $fileNames) {
        $filePath = Join-Path -Path $HOME -ChildPath $fileName
        
        $currentDateTime | Out-File -FilePath $filePath
        
        $createdCount++
}

Write-Host "$createdCount files were created successfully."