param($installPath, $toolsPath, $package)

$rootPath = (Get-Item $installPath).Parent.Parent.FullName
$sourcePath = "$installPath\deploy"
$targetPath = "$rootPath\"

Write-Host "InstallPath: $installPath"
Write-Host "ToolsPath: $toolsPath"
Write-Host "SourcePath: $sourcePath" 
Write-Host "TargetPath: $targetPath"
