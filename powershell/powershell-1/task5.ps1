$applications = Get-Command -CommandType Application

$count = $applications.Count


Write-Host "There is $count application in powershell"