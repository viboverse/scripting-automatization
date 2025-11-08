param(
    [string]$address = '192.168.1.1',
    [int]$times = 1
)

$permission = Read-Host "I will ping address $address $times time, Okay? [Y/n]"



if($permission -eq "Y"){
    for ($i = 1; $i -le $times; $i++) {
        Write-Host "try $i to ping: $address"
    }
} else {
    Write-Host "Ping cancelled."
}