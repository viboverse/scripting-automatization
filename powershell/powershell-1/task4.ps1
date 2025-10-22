$names = @('Vahab', "Ivan", "Lin", "Jakko", "Babak", 'Masoud', "Manuel")

$length = $names.Count

Write-Host "There are $length brothers:"
$names

Write-Host "The oldest is $($names[1]) and the youngest is $($names[4]) "