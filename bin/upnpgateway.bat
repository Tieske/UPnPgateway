@ECHO OFF
setlocal ENABLEDELAYEDEXPANSION 

:RestartGateway
lua.exe -v %~dp0\upnpgateway_bootstrap %*
if !ERRORLEVEL! == 999 GOTO RestartGateway
exit /B !ERRORLEVEL!
