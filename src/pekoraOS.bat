:: Commenting And Documentation
:: Was Done By Miguel Rafael Guevarra (me!) And Kobo Kanaeru's Live Streams
:: Quak

@echo off
title Pekora-OS
mode 100,30
setlocal enabledelayedexpansion

:: ===========================
::  FILE INTEGRITY CHECK
:: ===========================

call :CenterText "##############################################"
call :CenterText "#    PEKORA OS KAELA FILE INTEGRITY CHECK    #"
call :CenterText "##############################################"
echo.

<nul set /p="[Pekora_KAELA-FMSIC]: Checking if p:\ (root=\) Exists"
for /l %%i in (1,1,20) do (
    <nul set /p="."
    timeout /t 0 >nul
)
if exist root (
    echo FOUND
    echo.
    call :CenterText "############################################"
    call :CenterText "#    PROCEEDING TO p:\ FOLDER INT CHECK    #"
    call :CenterText "############################################"
    echo.
    goto RootFolderChecking
) else (
    echo NOT FOUND
    echo.
    call :CenterText "############################################"
    call :CenterText "#    PROCEEDING TO FIRST-TIME RUN SETUP    #"
    call :CenterText "############################################"
    timeout /t 5 >nul
    goto Setup
)

:: If root exists, check if setup is completed
:RootFolderChecking
<nul set /p="[Pekora_KAELA-FMSIC]: Checking if p:\system\setup.done exists"
for /l %%i in (1,1,20) do (
    <nul set /p="."
    timeout /t 0 >nul
)
if exist root/system/setup.done (
    echo FOUND
    echo.
    call :CenterText "#############################################"
    call :CenterText "#    PROCEEDING TO KORONE BOOTLOADER SEQ    #"
    call :CenterText "#############################################"
    timeout /t 4 >nul
    goto Boot
) else (
    echo NOT FOUND
    echo.
    call :CenterText "##############################################"
    call :CenterText "#    ROOT DIRECTORY MISSING / CORRUPTED!      #"
    call :CenterText "#  CLEANING BROKEN ROOT AND RESTARTING SETUP #"
    call :CenterText "##############################################"
    echo.

    :: Delete broken root folder (if partially created)
    <nul set /p="[Pekora_KAELA-FMSIC]: Removing invalid root directory"
    for /l %%i in (1,1,20) do (
        <nul set /p="."
        timeout /t 0 >nul
    )
    if exist root (
        echo DONE
        echo.
        rmdir /s /q root
        call :CenterText "########################################"
        call :CenterText "#    PROCEEDING TO FIRST TIME SETUP    #"
        call :CenterText "########################################"
        timeout /t 4 >nul
    )
    :: Continue to setup
    goto Setup
)

:: ===========================
::  SETUP WIZARD (FIRST RUN)
:: ===========================
:Setup
cls
call :CenterText "###############################################"
call :CenterText "#           PEKORA OS FIRST SETUP             #"
call :CenterText "###############################################"
echo.
echo Initializing system directories...
echo.

<nul set /p="[Pekora_Kernel-Core]: Formating Drive P:\ As pekoFS (Pekora File System)"
for /l %%i in (1,1,20) do (
    <nul set /p="."
    timeout /t 0 >nul
)
echo DONE!
echo.

<nul set /p="[Pekora_KAELA-FM]: Creating Root Directory"
for /l %%i in (1,1,20) do (
    <nul set /p="."
    timeout /t 0 >nul
)
echo DONE!
mkdir root

<nul set /p="[Pekora_KAELA-FM]: Creating root\config"
for /l %%i in (1,1,20) do (
    <nul set /p="."
    timeout /t 0 >nul
)
echo DONE!
mkdir root\config

<nul set /p="[Pekora_KAELA-FM]: Creating root\users"
for /l %%i in (1,1,20) do (
    <nul set /p="."
    timeout /t 0 >nul
)
echo DONE!
mkdir root\users

<nul set /p="[Pekora_KAELA-FM]: Creating root\home"
for /l %%i in (1,1,20) do (
    <nul set /p="."
    timeout /t 0 >nul
)
echo DONE!
mkdir root\home

<nul set /p="[Pekora_KAELA-FM]: Creating root\system"
for /l %%i in (1,1,20) do (
    <nul set /p="."
    timeout /t 0 >nul
)
echo DONE!
mkdir root\system

<nul set /p="[Pekora_KAELA-FM]: Creating root\bin"
for /l %%i in (1,1,20) do (
    <nul set /p="."
    timeout /t 0 >nul
)
echo DONE!
mkdir root\bin

echo.
call :CenterText "#########################################"
call :CenterText "#    PRE-INSTALLING EXTERNAL SCRIPTS    #"
call :CenterText "#########################################"
echo.

<nul set /p="[Pekora_KAELA-FM]: Installing root\bin\about.bat"
for /l %%i in (1,1,20) do (
    <nul set /p="."
    timeout /t 0 >nul
)
echo DONE!
if not exist "root/bin" mkdir "root/bin"
> "root/bin/about.bat" echo @echo off
>> "root/bin/about.bat" echo setlocal enabledelayedexpansion
>> "root/bin/about.bat" echo.
>> "root/bin/about.bat" echo echo =========================================
>> "root/bin/about.bat" echo echo ABOUT SYSTEM - PEKORA OPERATING SYSTEM
>> "root/bin/about.bat" echo echo =========================================
>> "root/bin/about.bat" echo echo.
>> "root/bin/about.bat" echo echo Lead Programer And Developer: Raiden Rafael ^(Miguel Rafael Guevarra^)
>> "root/bin/about.bat" echo echo.
>> "root/bin/about.bat" echo echo Pekora Operating System ^(PekoraOS or PekOs^) Is Created From Being a Fan And
>> "root/bin/about.bat" echo echo Inspiration From A Virtual Youtuber ^(Vtuber^) From Hololive ^(Cover Corp^)
>> "root/bin/about.bat" echo echo Named Usada Pekora From Hololive JP ^(Japan^) GEN ^(GENERATION^) 3
>> "root/bin/about.bat" echo echo.
>> "root/bin/about.bat" echo echo Pekora Operating System Is Desinged Towards Os Simulation Within Batch Script
>> "root/bin/about.bat" echo echo And Following The Style Of a Linux Like System But Modified And Filled With
>> "root/bin/about.bat" echo echo Hololive Names and References Within The System Simulator Itself And A Way
>> "root/bin/about.bat" echo echo To Test The Limits Of A Batch Scripting And Go Beyond What Simplicity You
>> "root/bin/about.bat" echo echo Can Do Inside a Simple Single Batch Script File
>> "root/bin/about.bat" echo echo.
>> "root/bin/about.bat" echo echo But This Was Also My Trial Coding For Ongoing Real Pekora OS OSDEV
>> "root/bin/about.bat" echo echo Yes OsDev From Scratch ^(ie: ASSEMBLY, C^# And C^+^+^) So This is Technically
>> "root/bin/about.bat" echo echo What The Real Pekora OS Would Look Like.
>> "root/bin/about.bat" echo.
>> "root/bin/about.bat" echo echo Credits For All Mentioned Hololive Members And Inspiration


<nul set /p="[Pekora_KAELA-FM]: Installing root\bin\credits.bat"
for /l %%i in (1,1,20) do (
    <nul set /p="."
    timeout /t 0 >nul
)
echo DONE!
if not exist "root/bin" mkdir "root/bin"
> "root/bin/credits.bat" echo @echo off
>> "root/bin/credits.bat" echo setlocal enabledelayedexpansion
>> "root/bin/credits.bat" echo.
>> "root/bin/credits.bat" echo echo ===================================
>> "root/bin/credits.bat" echo echo  CREDITS TO THE GROUP DEVELOPMENT   
>> "root/bin/credits.bat" echo echo ===================================
>> "root/bin/credits.bat" echo echo.
>> "root/bin/credits.bat" echo.
>> "root/bin/credits.bat" echo echo A BSIT-2E Group Project, Created By BlueHouse Studio
>> "root/bin/credits.bat" echo echo A Hololive Themed Project, The "Pekora Project"
>> "root/bin/credits.bat" echo echo.
>> "root/bin/credits.bat" echo echo Group Project Leader: Angeljhay Dava
>> "root/bin/credits.bat" echo echo Group Member 1: Miguel Rafael Guevarra
>> "root/bin/credits.bat" echo echo Group Member 2: Angel Clarence Opinga Gado
>> "root/bin/credits.bat" echo echo Group Member 3: James Maverick Alberto
>> "root/bin/credits.bat" echo echo.

<nul set /p="[Pekora_KAELA-FM]: Installing root\bin\netping.bat"
for /l %%i in (1,1,20) do (
    <nul set /p="."
    timeout /t 0 >nul
)
echo DONE!
if not exist "root/bin" mkdir "root/bin"
> "root/bin/netping.bat" echo @echo off
>> "root/bin/netping.bat" echo if "%%1"=="" ^(
>> "root/bin/netping.bat" echo ^    echo Usage: ping "^<address^>"
>> "root/bin/netping.bat" echo ^    exit /b
>> "root/bin/netping.bat" echo ^)
>> "root/bin/netping.bat" echo ping %%1

IF NOT EXIST root\system\setup.done (
    :: CREATE USER
    echo.
    call :CenterText "###############################################"
    call :CenterText "#           PEKOACCOUNT USER SETUP            #"
    call :CenterText "###############################################"
    echo.
    set /p PEKO_USERNAME=Enter PekoAccount Username: 
    set /p PEKO_PASSWORD=Enter PekoAccount Password: 

    <nul set /p="[Pekora_KAELA-FM]: Creating User Profile"
    for /l %%i in (1,1,10) do (
        <nul set /p="."
        timeout /t 0 >nul
    )
    echo  DONE!
    if not exist "root/users" mkdir "root/users"
    > "root/users/!PEKO_USERNAME!.conf" echo username=!PEKO_USERNAME!
    >> "root/users/!PEKO_USERNAME!.conf" echo password=!PEKO_PASSWORD!
    >> "root/users/!PEKO_USERNAME!.conf" echo permission=admin
    >> "root/users/!PEKO_USERNAME!.conf" echo created=%DATE% %TIME%

    :: Create user home directory And its Content
    echo .
    <nul set /p="[Pekora_KAELA-FM]: Creating Home Folder root\home\!PEKO_USERNAME!"
    for /l %%i in (1,1,5) do (
        <nul set /p="."
        timeout /t 0 >nul
    )
    echo  DONE!
    mkdir "root/home/!PEKO_USERNAME!"
    <nul set /p="[Pekora_KAELA-FM]: Creating Folder root\home\!PEKO_USERNAME!\Public"
    for /l %%i in (1,1,5) do (
        <nul set /p="."
        timeout /t 0 >nul
    )
    echo  DONE!
    mkdir "root/home/!PEKO_USERNAME!/Public"
    <nul set /p="[Pekora_KAELA-FM]: Creating Folder root\home\!PEKO_USERNAME!\Downloads"
    for /l %%i in (1,1,5) do (
        <nul set /p="."
        timeout /t 0 >nul
    )
    echo  DONE!
    mkdir "root/home/!PEKO_USERNAME!/Downloads"
    <nul set /p="[Pekora_KAELA-FM]: Creating Folder root\home\!PEKO_USERNAME!\Documents"
    for /l %%i in (1,1,5) do (
        <nul set /p="."
        timeout /t 0 >nul
    )
    echo  DONE!
    mkdir "root/home/!PEKO_USERNAME!/Documents"
    <nul set /p="[Pekora_KAELA-FM]: Creating Folder root\home\!PEKO_USERNAME!\Videos"
    for /l %%i in (1,1,5) do (
        <nul set /p="."
        timeout /t 0 >nul
    )
    echo  DONE!
    mkdir "root/home/!PEKO_USERNAME!/Videos"
    <nul set /p="[Pekora_KAELA-FM]: Creating Folder root\home\!PEKO_USERNAME!\Music"
    for /l %%i in (1,1,5) do (
        <nul set /p="."
        timeout /t 0 >nul
    )
    echo  DONE!
    mkdir "root/home/!PEKO_USERNAME!/Music"
    <nul set /p="[Pekora_KAELA-FM]: Creating Folder root\home\!PEKO_USERNAME!\Pictures"
    for /l %%i in (1,1,5) do (
        <nul set /p="."
        timeout /t 0 >nul
    )
    echo  DONE!
    mkdir "root/home/!PEKO_USERNAME!/Pictures"

    REM Create marker so system never re-runs setup again
    echo setup_completed=true > root/system/setup.done
)

echo.
call :CenterText "###############################################"
call :CenterText "#   SETUP COMPLETE | STARTING UP PEKORA OS    #"
call :CenterText "###############################################"
timeout /t 5 >nul
GOTO Boot

:: ===========================
::  BOOT SEQUENCE
:: ===========================
:FormatDrive
setlocal
set LETTER=%~1
set SIZE=%~2

REM Skip zero or empty
if "%LETTER%"=="" goto :eof
if "%SIZE%"=="0" goto :eof

REM Convert bytes → GB (trim last 9 digits)
set SIZEGB=%SIZE:~0,-9%

REM Disk Printout
echo STORAGE: %LETTER% - %SIZEGB% GB  
endlocal
goto :eof

:Boot
cls
echo.
call :CenterText "###############################################"
call :CenterText "#    PEKORA_OS - KORONE BOOTLOADER VER 1.0    #"
call :CenterText "###############################################"
echo.

REM === GET SYSTEM INFO ===

REM --- RAM Detection ---
for /f "tokens=2 delims==" %%a in ('wmic computersystem get TotalPhysicalMemory /value') do (
    set RAM=%%a
)

REM --- CPU Name ---
for /f "skip=1 tokens=*" %%a in ('wmic cpu get Name') do (
    if not "%%a"=="" set CPU=%%a & goto GotCPU
)
:GotCPU

REM Read Manufacturer
for /f "tokens=2,*" %%a in ('reg query "HKLM\HARDWARE\DESCRIPTION\System\BIOS" /v BaseBoardManufacturer 2^>nul ^| find "REG_SZ"') do (
    set "MB_Manu=%%b"
)

REM Read Model
for /f "tokens=2,*" %%a in ('reg query "HKLM\HARDWARE\DESCRIPTION\System\BIOS" /v BaseBoardProduct 2^>nul ^| find "REG_SZ"') do (
    set "MB_Model=%%b"
)

REM Fallback if empty
if "%MB_Manu%"=="" set "MB_Manu=Unknown"
if "%MB_Model%"=="" set "MB_Model=Unknown"

REM --- Display Width ---
for /f "tokens=2 delims=: " %%a in ('mode con ^| findstr /i "Columns"') do set WIDTH=%%a

echo ###########################################
echo #   KORONE BOOTLOADER - SYSTEM CHECKING   #
echo ###########################################
echo.

<nul set /p="Motherboard Model: %MB_Model%"
for /l %%i in (1,1,20) do (
    <nul set /p="."
    timeout /t 0 >nul
)
echo OK

echo Motherboard Manufacturer: %MB_Manu%

echo.

<nul set /p="CPU: %CPU%"
for /l %%i in (1,1,20) do (
    <nul set /p="."
    timeout /t 0 >nul
)
echo OK

<nul set /p="Memory DETECTED: %RAM% KB"
for /l %%i in (1,1,20) do (
    <nul set /p="."
    timeout /t 0 >nul
)
echo OK

echo Display Width: %WIDTH% characters

echo.
for /f "skip=1 tokens=*" %%G in ('wmic path win32_videocontroller get name') do (
    set "gpu=%%G"
    REM Remove any spaces or carriage returns
    set "gpu=!gpu:~0,-1!"
    if not "!gpu!"=="" (
        <nul set /p="GPU: !gpu!"
        for /l %%i in (1,1,20) do (
            <nul set /p="."
            timeout /t 0 >nul
        )
        echo OK
    )
)

echo.
for /f "skip=1 tokens=1,2" %%a in ('wmic logicaldisk get DeviceID^,Size') do (
    if not "%%a"=="" if not "%%b"=="" (
        call :FormatDrive "%%a" "%%b"
    )
)

echo.
for /f "skip=1 tokens=*" %%N in ('wmic nic where "NetEnabled=true" get Name') do (
    set "line=%%N"
    rem Remove spaces to check if it's actually empty
    set "check=!line: =!"
    if not "!check!"=="" echo Network Adapter: %%N
)

echo.
call :CenterText "##############################################"
call :CenterText "#    KORONE BOOTLOADER - BOOT UP COMPLETE    #"
call :CenterText "##############################################"
timeout /t 8 >nul
goto Login

:: ===========================
::  LOGIN SCREEN
:: ===========================
:Login
cls

echo.
call :CenterText "============================"
call :CenterText "||    PEKORA OS LOGIN     ||"
call :CenterText "============================"
echo.

:: Load Last Login info
if exist root\config\lastlogin.conf (
    for /f "tokens=1,2 delims==" %%A in (root\config\lastlogin.conf) do (
        if /i "%%A"=="LastUser" set LASTUSER=%%B
        if /i "%%A"=="LastLogin" set LASTLOGIN=%%B
    )
) else (
    set LASTUSER=No previous user
    set LASTLOGIN=No recorded login
)

echo.
call :CenterText "LAST LOGGED IN PEKORA ACCOUNT : %LASTUSER%"
call :CenterText "LAST LOGGED IN DATE & TIME : %LASTLOGIN%"
echo.

echo.
echo.
call :CenterInput "PekoAccount Username: " USERINPUT
call :CenterInput "PekoAccount Password: " PASSINPUT

:: Build user file path
set "USERFILE=root\users\%USERINPUT%.conf"

:: If user file doesn't exist, fail without telling which part failed
if not exist "%USERFILE%" goto LoginFail

:: Load the stored password
for /f "tokens=2 delims==" %%A in ('findstr "password" "%USERFILE%"') do set "FILEPASS=%%A"

set "CORRECTUSER=%USERINPUT%"

:: Compare password
if "%PASSINPUT%"=="%FILEPASS%" goto LoggedIn

:: If password doesn't match → generic fail
goto LoginFail


:LoginFail
echo.
call :CenterText "####################################################"
call :CenterText "#    INCORRECT PEKOACCOUNT USERNAME OR PASSWORD    #"
call :CenterText "####################################################"
timeout /t 5 >nul
goto Login

:: ===========================
::  SUCCESSFUL LOGIN
:: ===========================
:LoggedIn
(
    echo LastUser=%USERINPUT%
    echo LastLogin=%date% %time%
) > root\config\lastlogin.conf

cls
call :CenterText "################################################"
call :CenterText "#    PEKORA_OS - SHIROGANE STARTUP SEQUENCE    #"
call :CenterText "################################################"
echo.

echo [Pekora_Kernel-SHIROGANE_STARTUP]: Welcome User %CORRECTUSER%!
echo.

<nul set /p="[Pekora_Kernel-SHIROGANE_STARTUP]: Launching Kronii Task Scheduler"
for /l %%i in (1,1,10) do (
    <nul set /p="."
    timeout /t 0 >nul
)
echo LAUNCHED

<nul set /p="[Pekora_Kernel-SHIROGANE_STARTUP]: Launching Mori Task Killer"
for /l %%i in (1,1,10) do (
    <nul set /p="."
    timeout /t 0 >nul
)
echo LAUNCHED

<nul set /p="[Pekora_Kernel-SHIROGANE_STARTUP]: Launching INTERNAL KAELA FILE MANAGER SYSTEM"
for /l %%i in (1,1,10) do (
    <nul set /p="."
    timeout /t 0 >nul
)
echo LAUNCHED

<nul set /p="[Pekora_Kernel-SHIROGANE_STARTUP]: (IKFMS) Mounting p:/ Drive pekoFS"
for /l %%i in (1,1,10) do (
    <nul set /p="."
    timeout /t 0 >nul
)
echo OK

<nul set /p="[Pekora_Kernel-SHIROGANE_STARTUP]: (IKFMS) mounting root\home to Pekora_Shell"
for /l %%i in (1,1,10) do (
    <nul set /p="."
    timeout /t 0 >nul
)
echo DONE

<nul set /p="[Pekora_Kernel-SHIROGANE_STARTUP]: (IKFMS) Pre-loading root\bin commands"
for /l %%i in (1,1,10) do (
    <nul set /p="."
    timeout /t 0 >nul
)
echo DONE

<nul set /p="[Pekora_Kernel-SHIROGANE_STARTUP]: (IKFMS) Accessing root\system Loading to RAM"
for /l %%i in (1,1,10) do (
    <nul set /p="."
    timeout /t 0 >nul
)
echo DONE

<nul set /p="[Pekora_Kernel-SHIROGANE_STARTUP]: (IKFMS) Configuring all root\config"
for /l %%i in (1,1,10) do (
    <nul set /p="."
    timeout /t 0 >nul
)
echo DONE

<nul set /p="[Pekora_Kernel-SHIROGANE_STARTUP]: Launching Pekora_OS Bash Shell Window"
for /l %%i in (1,1,10) do (
    <nul set /p="."
    timeout /t 0 >nul
)
echo LAUNCHED
echo.

call :CenterText "#############################################"
call :CenterText "#    ENTERING PEKORA OS - PEKOBASH SHELL    #"
call :CenterText "#############################################"
timeout /t 5 >nul
goto Shell

:: ===========================
::  MAIN BASH TERMINAL SIMULATION
:: ===========================
:Shell
cls
call :CenterText "##############################################"
call :CenterText "#    PEKORA_OS / PEKOTERMINAL VERSION 1.0    #"
call :CenterText "##############################################"
echo.
echo Type help, For More INFORMATION And COMMAND Listing
echo.

:ShellLoop
set "CMD="
set /p "CMD=%CORRECTUSER%@PekoraOs:~$ "

:: Empty input → ignore
if "%CMD%"=="" goto ShellLoop

:: Split CMD into command + arguments
for /f "tokens=1,*" %%a in ("%CMD%") do (
    set "cmd=%%a"
    set "args=%%b"
)

:: Built-in commands
if /i "%cmd%"=="help" goto BuiltinHelp
if /i "%cmd%"=="shutdown" goto ExitOS
if /i "%cmd%"=="clear" goto cleanbash
if /i "%cmd%"=="sysinfo" goto SystemInformationCommand
if /i "%cmd%"=="logout" goto logout

:: External commands in root\bin
if exist "root\bin\%cmd%.bat" (
    (
        cmd /c "root\bin\%cmd%.bat" %args%
    ) || (
        echo Command "%cmd%" exited with an error, returning to Pekora shell...
    )
    goto ShellLoop
)

:: Command not found
echo Unknown command: %CMD%
goto ShellLoop

:: ===========================
:: Built In Help Command
:: ===========================
:BuiltinHelp
echo Available Internal commands:
echo.
echo   help   - Show this help menu
echo   shutdown   - Shutdown Pekora OS
echo   clear   - Clears Previous Text's
echo   sysinfo   - Shows System Specifications
echo   logout   - Logs User Out Of PekoTerminal
echo.
echo External commands located in root\bin:
for %%F in (root\bin\*.bat) do echo   %%~nF
echo.
goto ShellLoop

:: ===========================
:: Clear Command
:: ===========================
:cleanbash
cls
goto Shell

:: ===========================
:: Sysinfo Command
:: ===========================
:SystemInformationCommand
echo ###################################
echo #   PEKORA - SYSTEM INFORMATION   #
echo ###################################
echo.

echo Motherboard Model: %MB_Model%
echo Motherboard Manufacturer: %MB_Manu%
echo.
echo CPU: %CPU%
echo Memory DETECTED: %RAM% KB
echo Display Width: %WIDTH% characters
echo.
for /f "skip=1 tokens=*" %%G in ('wmic path win32_videocontroller get name') do (
    set "gpu=%%G"
    REM Remove any spaces or carriage returns
    set "gpu=!gpu:~0,-1!"
    if not "!gpu!"=="" echo GPU: !gpu!
)
echo.
for /f "skip=1 tokens=1,2" %%a in ('wmic logicaldisk get DeviceID^,Size') do (
    if not "%%a"=="" if not "%%b"=="" (
        call :FormatDrive "%%a" "%%b"
    )
)
echo.
for /f "skip=1 tokens=*" %%N in ('wmic nic where "NetEnabled=true" get Name') do (
    set "line=%%N"
    rem Remove spaces to check if it's actually empty
    set "check=!line: =!"
    if not "!check!"=="" echo Network Adapter: %%N
)
echo.
goto ShellLoop

:: ===========================
:: LOGOUT COMMAND
:: ===========================
:logout
echo.
call :CenterText "###################################################"
call :CenterText "#    PEKORA_OS / PEKOTERMINAL USER LOGGING OUT    #"
call :CenterText "###################################################"
timeout /t 3 >nul
goto Login

:: ===========================
:: Shutdown Command
:: ===========================
:ExitOS
cls
call :CenterText "################################################"
call :CenterText "#    PEKORA_OS - CALLIOPE SHUTDOWN SEQUENCE    #"
call :CenterText "################################################"
echo.

<nul set /p="[Pekora_Kernel-SHINIGAMI_TASKEND]: Killing Task Kronii Task Scheduler"
for /l %%i in (1,1,5) do (
    <nul set /p="."
    timeout /t 0 >nul
)
echo TASK-KILLED

<nul set /p="[Pekora_Kernel-SHINIGAMI_TASKEND]: Killing Task Mori Task Killer"
for /l %%i in (1,1,5) do (
    <nul set /p="."
    timeout /t 0 >nul
)
echo TASK-KILLED

<nul set /p="[Pekora_Kernel-SHINIGAMI_TASKEND]: (IKFMS) Unmounting root\home to Pekora_Shell"
for /l %%i in (1,1,5) do (
    <nul set /p="."
    timeout /t 0 >nul
)
echo UNMOUNTED

<nul set /p="[Pekora_Kernel-SHINIGAMI_TASKEND]: (IKFMS) Unloading root\bin commands"
for /l %%i in (1,1,5) do (
    <nul set /p="."
    timeout /t 0 >nul
)
echo UNLOADED

<nul set /p="[Pekora_Kernel-SHINIGAMI_TASKEND]: (IKFMS) Clearing root\system from RAM"
for /l %%i in (1,1,5) do (
    <nul set /p="."
    timeout /t 0 >nul
)
echo CLEARED

<nul set /p="[Pekora_Kernel-SHINIGAMI_TASKEND]: (IKFMS) Saving all root\config"
for /l %%i in (1,1,5) do (
    <nul set /p="."
    timeout /t 0 >nul
)
echo SAVED

<nul set /p="[Pekora_Kernel-SHINIGAMI_TASKEND]: Killing DAEMON Pekora_OS Bash Shell Window"
for /l %%i in (1,1,5) do (
    <nul set /p="."
    timeout /t 0 >nul
)
echo TASK-KILLED

<nul set /p="[Pekora_Kernel-SHINIGAMI_TASKEND]: (IKFMS) Unmounting p:/ Drive pekoFS"
for /l %%i in (1,1,5) do (
    <nul set /p="."
    timeout /t 0 >nul
)
echo EJECTED

<nul set /p="[Pekora_Kernel-SHINIGAMI_TASKEND]: Killing Task INTERNAL KAELA FILE MANAGER SYSTEM"
for /l %%i in (1,1,5) do (
    <nul set /p="."
    timeout /t 0 >nul
)
echo TASK-KILLED

echo.
call :CenterText "#################################################"
call :CenterText "#    GOOD BYE! - PEKORA OS SHUT DOWN COMPLETE    #"
call :CenterText "#################################################"
timeout /t 5 >nul
exit

:: ===========================
::  HELPER FUNCTIONS
:: ===========================
:CenterText
:: %~1 = Text to display
set "text=%~1"
:: Get console width
for /f "tokens=2 delims=:" %%A in ('mode con ^| find "Columns"') do set COLS=%%A
:: Calculate text length
set /a LEN=0
:countLoop
if "!text:~%LEN%,1!"=="" goto doneLen
set /a LEN+=1
goto countLoop
:doneLen
:: Calculate padding
set /a PAD=(COLS - LEN)/2
set "SPACES="
for /l %%i in (1,1,!PAD!) do set "SPACES=!SPACES! "
:: Print centered text
echo !SPACES!!text!
exit /b

:CenterInput
:: %~1 = Prompt text, %2 = variable name
set "PROMPT=%~1"
set /a LEN=0
set "text=%PROMPT%"
:countLoop2
if "!text:~%LEN%,1!"=="" goto doneLen2
set /a LEN+=1
goto countLoop2
:doneLen2
for /f "tokens=2 delims=:" %%A in ('mode con ^| find "Columns"') do set COLS=%%A
set /a PAD=(COLS - LEN)/2
set "SPACES="
for /l %%i in (1,1,!PAD!) do set "SPACES=!SPACES! "
set /p %2="!SPACES!!PROMPT!"
exit /b