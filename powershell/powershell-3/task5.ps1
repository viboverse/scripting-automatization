param(
    $fromfolder,
    $tofolder
)

if(Test-Path $fromfolder){
    $files = Get-ChildItem -Path $fromfolder

    Copy-Item -Path ($fromfolder + "\*") -Destination $tofolder

    $fileCount = $files.Count
    Write-Host "Backup completed successfully!"
    Write-Host "$fileCount files moved from $fromfolder to $tofolder"
    Write-Host "Number of files backed up: $fileCount"
    Write-Host ""
    Write-Host "Files backed up:"
    
    foreach($file in $files){
        Write-Host $file.Name
    }
    
} else {
    Write-Host "Error: Source folder $fromfolder does not exist."
}