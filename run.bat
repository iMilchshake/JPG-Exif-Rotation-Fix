@echo off
:: BatchGotAdmin
rem -----------[Checking for Admin Permissions]---------------------
    IF "%PROCESSOR_ARCHITECTURE%" EQU "amd64" (
>nul 2>&1 "%SYSTEMROOT%\SysWOW64\cacls.exe" "%SYSTEMROOT%\SysWOW64\config\system"
) ELSE (
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
)

if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params= %*
    echo UAC.ShellExecute "cmd.exe", "/c ""%~s0"" %params:"=""%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"
rem ---------------------------------------------------------------------
	
echo Make Files readable..
rem attrib -s -h -r "H:\Programme\jhead\*.JPG" /s /d 
attrib -s -h -r /s /d "AddFilesHere\*" 
echo done!
echo Rotating Images:
jhead.exe -autorot AddFilesHere\*.JPG
jhead.exe -autorot AddFilesHere\*.JPEG
echo.
echo ---------------------------------------
echo "Jpg Exif Rotation Fix" by iMilchshake
echo ---------------------------------------
echo.
pause