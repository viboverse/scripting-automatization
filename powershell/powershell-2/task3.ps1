param(
    [string]$string1,
    [string]$string2,
    [string]$string3
)


$strings = @($string1, $string2, $string3)

$sortedStrings = $strings | Sort-Object Length

Write-Host "Strings sorted by length: $sortedStrings"
