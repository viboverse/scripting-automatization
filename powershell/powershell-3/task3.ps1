param(
    $foldername,
    $filename
)

if(Test-Path $foldername){
    $filePath = Join-Path -Path $foldername -ChildPath $filename

    if(Test-Path $filePath){
        Write-Host "File $filename exist in the $foldername"

    }else{
        $response = Read-Host "Create the file $filename? Yes/No"

        if($response -eq "yes"){
            New-Item -Path $filePath -ItemType File
              Write-Host "File $filename created in folder $foldername"
        } else {
            Write-Host "File creation cancelled."
        }
    }
}else{
    Write-Host "Sorry, folder $foldername does not exist."
}