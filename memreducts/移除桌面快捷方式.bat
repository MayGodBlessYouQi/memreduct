@echo off
title 软件缘 桌面快捷方式移除工具！

>nul 2>&1 REG.exe query "HKU\S-1-5-19" || (
    ECHO SET UAC = CreateObject^("Shell.Application"^) > "%TEMP%\Getadmin.vbs"
    ECHO UAC.ShellExecute "%~f0", "%1", "", "runas", 1 >> "%TEMP%\Getadmin.vbs"
    "%TEMP%\Getadmin.vbs"
    DEL /f /q "%TEMP%\Getadmin.vbs" 2>nul
    Exit /b
)

ping -n 2 127.1>nul
del /f /q "%userprofile%"\Desktop\"Mem Reduct.lnk"
del /f /q "%userprofile%"\桌面\"Mem Reduct.lnk"
exit