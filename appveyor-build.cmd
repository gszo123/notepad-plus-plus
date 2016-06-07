@echo off

cd PowerEditor\visual.net                                                               || exit
cov-build --dir cov-int msbuild notepadPlus.vcxproj /p:configuration="Unicode Debug" /p:platform=Win32          || exit

7z a cov.zip cov-int\*  || exit
dir || exit

