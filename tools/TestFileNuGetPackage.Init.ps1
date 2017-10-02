param(
    $installPath, 
    $toolsPath, 
    $package, 
    $project)

$rootPath = (Get-Item $installPath).Parent.Parent.FullName
$sourcePath = "$installPath\deploy"

Get-ChildItem -Path $sourcePath -Filter "*.zip" | 
    ForEach-Object {
        $fullName = $_.FullName
        $name = [System.IO.Path].GetFileNameWithoutExtension($_.FullName)

        Expand-Archive -Path $fullName -DestinationPath "$sourcePath\$name"
    }