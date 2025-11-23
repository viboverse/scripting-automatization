param(
    [string]$foldername
)

if(Test-Path $foldername -PathType Container){
      $files = Get-ChildItem $foldername | Where-Object { $_.PsIsContainer -ne $True }

    Write-Host "Files in the folder:"
    foreach ($file in $files) {
        Write-Host $file.Name
    }
      
}else {
    # Folder doesn't exist
    Write-Host "Sorry, $foldername does not exist."
}