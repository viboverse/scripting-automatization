$num1 = Read-Host "Enter the first integer"
$num2 = Read-Host "Enter the second integer"

$num1 = [int]$num1
$num2 = [int]$num2

$sum = $num1 + $num2
$subtraction = $num1 - $num2
$multuply = $num1 * $num2
$division = $num1 / $num2

Write-Host ""
Write-Host "Sum is ${sum}"
Write-Host "Subtraction is $subtraction"
Write-Host "Multiplicaiton is $multuply"
Write-Host "Division is $division"



