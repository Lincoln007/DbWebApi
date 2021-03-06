@ECHO OFF
CD /D %~dp0

IF NOT EXIST nupkg\Net45 MKDIR nupkg\Net45
COPY Oracle\ODP.NET.Managed\DataBooster.DbWebApi.nuspec ..\DataBooster.DbWebApi\DataBooster.DbWebApi.Oracle.Managed.nuspec /Y
..\..\.nuget\NuGet.exe pack ..\DataBooster.DbWebApi\DataBooster.DbWebApi.Oracle.Managed.csproj -IncludeReferencedProjects -Symbols -Properties Configuration=Release;Platform=AnyCPU -OutputDirectory nupkg\Net45

IF NOT EXIST nupkg\Net40 MKDIR nupkg\Net40
COPY Oracle\ODP.NET.Managed\DataBooster.DbWebApi.nuspec ..\DataBooster.DbWebApi\DataBooster.DbWebApi.Net40.Oracle.Managed.nuspec /Y
..\..\.nuget\NuGet.exe pack ..\DataBooster.DbWebApi\DataBooster.DbWebApi.Net40.Oracle.Managed.csproj -IncludeReferencedProjects -Symbols -Properties Configuration=Release;Platform=AnyCPU -OutputDirectory nupkg\Net40
