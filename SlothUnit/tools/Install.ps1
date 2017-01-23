param($installPath, $toolsPath, $package, $project)

$projectFile = $project.FullName
$projectPath = (Get-Item $projectFile).Directory
$packagesPath = (Get-Item $toolsPath).Parent.Parent.FullName
$clangSharpPath = "$packagesPath\ClangSharp.3.8.0"

Copy-Item "$clangSharpPath\lib\net40\ClangSharp.dll" -Destination "$projectPath\SlothUnit\x64\ClangSharp.dll"
Copy-Item "$clangSharpPath\lib\net40\ClangSharp.dll" -Destination "$projectPath\SlothUnit\x86\ClangSharp.dll"
Copy-Item "$clangSharpPath\content\x64\libclang.dll" -Destination "$projectPath\SlothUnit\x64\libclang.dll"
Copy-Item "$clangSharpPath\content\x86\libclang.dll" -Destination "$projectPath\SlothUnit\x86\libclang.dll"
