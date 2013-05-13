@ECHO OFF
setlocal ENABLEDELAYEDEXPANSION 

:RestartGateway
lua.exe -v "%~dp0\upnpgateway_bootstrap" %*
if !ERRORLEVEL! == 255 GOTO RestartGateway
exit /B !ERRORLEVEL!
