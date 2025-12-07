param(
    $filename
)

if (Test-Path $filename) {
    $users = Import-Csv -Path $filename
    
    $accountCount = 0
    
    foreach ($user in $users) {
        # Get first 4 characters of lastname (lowercase)
        $lastnamePart = $user.Lastname.Substring(0, 4).ToLower()
        
        # Get first 2 characters of firstname (lowercase)
        $firstnamePart = $user.Firstname.Substring(0, 2).ToLower()
        
        $account = $lastnamePart + $firstnamePart
        
        Write-Host "Hello my colleague $($user.Firstname) $($user.Lastname), this is your new account:"
        Write-Host $account -ForegroundColor Green
        
        $accountCount++
    }
    
    Write-Host "$accountCount new accounts created successfully" 
    
} else {
    Write-Host "Error: File $filename does not exist."
}