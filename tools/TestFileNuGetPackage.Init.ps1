param(
    $installPath, 
    $toolsPath, 
    $package, 
    $project)

$rootPath = (Get-Item $installPath).Parent.Parent.FullName
$sourcePath = "$installPath\deploy"
$destinationPath = Split-Path -Path $project.FullName

Write-Host "DestinationPath: $destinationPath"

Get-ChildItem -Path $sourcePath -Filter "*.zip" | 
    ForEach-Object {
        $fullName = $_.FullName
        $name = $_.BaseName
        
        Expand-Archive -Path $fullName -DestinationPath "$sourcePath\$name"
        
    }