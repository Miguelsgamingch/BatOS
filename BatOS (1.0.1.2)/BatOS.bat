@echo off
title BatOS (Booting)
::color
set red=n
set green=n
set black=n


echo Booting BatOS
ping localhost -n 2 >nul
cls
echo Starting Boot in 5 seconds...
ping localhost -n 5 >nul
cls
echo Booting.
ping localhost -n 2 >nul
cls
echo Booting..
ping localhost -n 2 >nul
cls
echo Booting...
ping localhost -n 2 >nul
cls
echo Booting....
ping localhost -n 2 >nul
cls
echo Done booting...
pause
goto login

:login
cls
title BatOS (LOGIN)
echo 1) Login 
set /p input=Choice: 

if %input% == 1 goto Login
goto login



:Login
cls
echo Enter password to access account (default is 0000)
set/p "pass=>"
if NOT %pass%== 0000 goto FAIL
echo Right Password
::Replace "0000" with your password (do not use any letters, just numbers)!
pause
goto login2
:FAIL
cls
echo Invalid password
pause
goto Login

:login2
set Name= User (Change Name In Options)
goto login3

:login3
(
set /p Name=
set /p d1=
set /p d2=
set /p d3=
set /p red=
set /p green=
set /p black=
)<BatOSsave.dlb
goto menu

:save
(
echo %Name%
echo %d1%
echo %d2%
echo %d3%
echo %red%
echo %green%
echo %black%
)>BatOSsave.dlb
goto menu

:menu
title BatOS
if %red% EQU y color 47
if %green% EQU y color 2f
if %black% EQU y color 07
cls
echo --Welcome %Name% to BatOS--
echo 1) Clock
echo 2) Power Down 
echo 3) Calculator
echo 4) BatOS Notepad
echo 5) Videos
echo 6) Options 
echo.
set /p input=Choice: 

if %input% == 1 goto clock
if %input% == 2 goto power
if %input% == 3 goto cal
if %input% == 4 goto TXTpad
if %input% == 5 goto Video
if %input% == 6 goto options
goto menu



:Video
color 70
cls
echo Videos
echo.
echo 1) Bat walks on air! (0:09)
echo E) Exit
echo.
set /p input=

if %input% == e goto menu
if %input% == 1 goto video1

:video1
color 10
cls
echo .
ping localhost -n 1 >nul
cls
echo  .
ping localhost -n 1 >nul
cls
echo   .
ping localhost -n 1 >nul
cls
echo    .
ping localhost -n 1 >nul
cls
echo     .
ping localhost -n 1 >nul
cls
echo      .
ping localhost -n 1 >nul
cls
echo       .
ping localhost -n 1 >nul
cls
echo        .
ping localhost -n 1 >nul
cls
echo         .
pause
goto Video



:cal
title BatOS (CALCULATOR)
cls
echo *=mutiplcation
echo -=subtraction
echo +=addation
echo /=divsion
echo enter=equals
pause >nul
goto cal1

:cal1
cls
set /p MATH=Equation?

set /a RESULT=%MATH%

echo Answer:%RESULT%
pause >nul
goto menu






:options
title BatOS (OPTIONS)
cls
echo 1) Change color
echo 2) Change name
echo 3) Password Change Intructions
echo E) exit to menu
set /p input=Choice: 

if %input% == 1 goto cc
if %input% == 2 goto cn
if %input% == 3 goto password-change
if %input% == e goto menu
if %input% == E goto menu

:password-change
echo First, Right Click on the BatOS batch file in the BatOS folder and press Edit
echo Second, Scroll down till you find the section Login
echo Finnaly, Replace 0000 with your password! (do not use any letters, just numbers)!
pause
goto options


:cc
cls
echo 1) Red
echo 2) Green
echo 3) Black
echo E) exit to menu
set /p input=Choice: 

if %input% == 1 goto red
if %input% == 2 goto green
if %input% == 3 goto black
if %input% == e goto menu
if %input% == E goto menu

:red
color 47
set red=y
set green=n
set black=n
goto save

:green
color 2f
set green=y
set red=n
set black=n
goto save

:black
color 07
set green=n
set red=n
set black=y
goto save


:cn
cls 
echo Are you sure you want to change your name? (y/n)
set /p input=Choice: 

if %input% == y goto change-name
if %input% == n goto menu


:change-name
cls
set /p Name=
goto save


:clock
title BatOS (CLOCK)
cls
echo Clock
echo ----------------------
echo Time:%time% Date:%date%
pause >nul
goto menu

:power
cls
echo Are you sure to power down BatOS? (y/n)
set /p input=Choice: 

if %input% == y goto powerd
if %input% == n goto menu

:powerd
(
echo %Name%
echo %d1%
echo %d2%
echo %d3%
echo %red%
echo %green%
echo %black%
)>BatOSsave.dlb
cls
echo Powering Down BatOS
ping localhost -n 4 >nul
exit

:TXTpad
title BatOS (NOTEPAD)
cls
echo 1) view ...
echo 2) replace/make TXT...
echo E) exit to menu
set /p input=Choice: 


if %input% == 1 goto view
if %input% == 2 goto makeTXT
if %input% == e goto menu
if %input% == E goto menu
goto TXTpad



:view
cls
echo 1) TXT-1
echo 2) TXT-2
echo 3) TXT-3
set /p input=Choice: 

if %input% == 1 goto view1
if %input% == 2 goto view2
if %input% == 3 goto view3

:makeTXT
cls
echo 1) TXT-1
echo 2) TXT-2
echo 3) TXT-3
set /p input=Choice: 

if %input% == 1 goto make1
if %input% == 2 goto make2
if %input% == 3 goto make3



:make2
cls
echo ----TXT-2----
set /p d2=
pause >nul
goto save

:make3
cls
echo ----TXT-3----
set /p d3=
pause >nul
goto save


:make1 
cls
echo ----TXT-1----
set /p d1=
pause >nul
goto save

:view1
cls
echo ----TXT-1---- (viewing)
echo %d1%
pause >nul
goto TXTpad

:view2
cls
echo ----TXT-2---- (viewing)
echo %d2%
pause >nul
goto TXTpad

:view3
cls
echo ----TXT-3---- (viewing)
echo %d3%
pause >nul
goto TXTpad







