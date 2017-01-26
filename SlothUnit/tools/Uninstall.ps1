param($installPath, $toolsPath, $package, $project)

$projectFile = $project.FullName
$projectPath = (Get-Item $projectFile).Directory

if (Test-Path "$projectPath\__Generated__")
{
    Remove-Item "$projectPath\__Generated__" -Recurse -Force    
}

Remove-Item "$projectPath\SlothUnit" -Recurse -Force
