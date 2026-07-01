@echo off
set DEV_BUILD=true

:parse
if "%~1"=="" goto run
if /i "%~1"=="dev_build=false" set DEV_BUILD=false
if /i "%~1"=="dev_build=true"  set DEV_BUILD=true
shift
goto parse

:run
echo scons platform=windows vsproj=yes dev_build=%DEV_BUILD% winrt=no accesskit=no angle=no
scons platform=windows vsproj=yes dev_build=%DEV_BUILD% winrt=no accesskit=no angle=no
