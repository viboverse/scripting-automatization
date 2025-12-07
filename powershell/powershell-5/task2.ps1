param(
    $filename
)

if(Test-Path $filename){
        $urls = Get-Content -Path $filename
    
    
    foreach ($url in $urls) {
        if ($url -ne "") {
            Start-Process $url
            Write-Host "Opening: $url"
        }
    }
    
    Write-Host "$urlCount URLs opened successfully" -ForegroundColor Green
    
} else {
    # File doesn't exist
    Write-Host "Error: File $filename does not exist." 
}