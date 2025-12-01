function Get-FiluInfo {
    param (
        $extension
    )
    
       $files = Get-ChildItem -Path $HOME | Where-Object { $_.Extension -eq $extension }
    
    $files | Format-Table Name, Length, LastWriteTime
}
