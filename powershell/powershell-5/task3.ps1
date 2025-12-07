# Task 3
param(
    $filename
)

if (Test-Path $filename) {
    $users = Import-Csv -Path $filename
    
    $accountCount = 0
    
    foreach ($user in $users) {
        $lastnamePart = $user.Lastname.Substring(0, 4).ToLower()
        
        $firstnamePart = $user.Firstname.Substring(0, 2).ToLower()
        
        $accountName = $lastnamePart + $firstnamePart
        
        $response = Read-Host "A new local account $accountName will be created for $($user.Firstname) $($user.Lastname), [Yes]/No"
        
        if ($response -eq "y") {

                New-LocalUser -Name $accountName -NoPassword -Description "Account for $($user.Firstname) $($user.Lastname)"
                
                Write-Host "Account $accountName created successfully" -ForegroundColor Green
                $accountCount++
           
        } else {
            Write-Host "Account creation cancelled for $accountName"
        }
    }
    
    Write-Host "$accountCount new accounts were created successfully" -ForegroundColor Yellow
    
} else {
    # File doesn't exist
    Write-Host "Error: File $filename does not exist." -ForegroundColor Red
}