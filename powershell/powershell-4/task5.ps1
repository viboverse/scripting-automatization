param(
    $directory
)

if (Test-Path $directory) {
    $files = Get-ChildItem -Path $directory
    
    $summary = @()
    
    $extensionGroups = $files | Group-Object Extension
    
    foreach ($group in $extensionGroups) {
        $extension = $group.Name
        $count = $group.Count
        
        Write-Host "Extension: $extension, Count: $count"
        
        $summary += "Extension: $extension, Count: $count"
    }
    
    $filePath = Join-Path -Path $HOME -ChildPath "summary.txt"
    
    "Summary of files in directory: $directory" | Out-File -FilePath $filePath
    $summary | Out-File -FilePath $filePath -Append
    
    Write-Host "The result has been written to $filePath"
    
} else {
    Write-Host "Sorry, directory $directory does not exist."
}