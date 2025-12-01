param(
    $filename
)

$names = @()

Write-Host "Give a workstation name, or press enter to quit"

do {
    $userInput = Read-Host "Workstation name"
    
    if ($userInput -ne "") {
        $names += $userInput
    }
} while ($userInput -ne "")

$filePath = Join-Path -Path $HOME -ChildPath $filename

$names | Out-File -FilePath $filePath

Write-Host "File created successfully at: $filePath"