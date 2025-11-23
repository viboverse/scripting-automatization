param(
    [string]$foldername,
    [string]$filename
)

if (Test-Path $foldername) {
    $filePath = Join-Path -Path $foldername -ChildPath $filename
    
    if (Test-Path $filePath) {
        Write-Host "File $filename exists in folder $foldername"
    } else {
        Write-Host "Sorry, $filename in the $foldername does not exist."
    }
} else {
    Write-Host "Sorry, folder $foldername does not exist."
}