param(
    $foldername
)

if (Test-Path $foldername) {
    $files = Get-ChildItem -Path $foldername
    
    $fileNames = @()
    
    foreach ($file in $files) {
        $fileNames += $file.Name
    }
    
    $filePath = Join-Path -Path $HOME -ChildPath "files.txt"
    
    $fileNames | Out-File -FilePath $filePath
    
    $fileCount = $fileNames.Count
    Write-Host "$fileCount filenames were written to file $filePath"
    
} else {
    Write-Host "Sorry, $foldername does not exist."
}