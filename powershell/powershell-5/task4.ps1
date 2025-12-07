# Task 4
param(
    $filename
)

$localUsers = Get-LocalUser

$userInfo = @()

foreach ($user in $localUsers) {
    $userObject = [PSCustomObject]@{
        Name = $user.Name
        FullName = $user.FullName
        SID = $user.SID
        LastLogon = $user.LastLogon
    }
    
    $userInfo += $userObject
}

$userInfo | Export-Csv -Path $filename -NoTypeInformation

Write-Host "User information exported successfully to $filename" -ForegroundColor Green
Write-Host "Total users exported: $($userInfo.Count)"

$userInfo