param(
    $foldername,
    $newname
)

if(Test-Path $foldername ){
    $files = Get-ChildItem -Path $foldername
    
    $fileCount = $files.Count
    
    $response = Read-Host "All $fileCount files will be renamed with name $newname. Yes/No"
    
    if($response -eq "Yes"){
        $counter = 1
        foreach($file in $files){
            $current = $file.FullName
            $new = "$newname($counter).txt"
            Rename-Item -Path $current -NewName $new
            $counter++
        }
        Write-Host "All files renamed successfully."
    } else {
        Write-Host "Rename operation cancelled."
    }

}else{
    Write-Host "Sorry, folde $foldername does NOT exisit"
    exit
}