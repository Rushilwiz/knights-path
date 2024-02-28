@echo off 
setlocal EnableDelayedExpansion
title Knight's Path
color 70
mode 1000

::Stats
set hp=100
set monhp=100
set exp=1
set monexp=1
set gold=1000
set lives=5
set powerModifier=0
set monPowerModifier=0
set goldRecievedLost=0
set xpRecievedLost=0

::Area
set area=1

::Uses/Wear/MagSize
set pistolMag=8
set pistolMagMax=8
set GoldenGunMag=10
set GoldenGunMagMax=10
set GoldenGunStatus=Unactive
set AKStatus=Unactive
set SteelSwordStatus=Unactive

::Admin Checker
:-------------------------------------
REM  --> Check for permissions
    IF "%PROCESSOR_ARCHITECTURE%" EQU "amd64" (
>nul 2>&1 "%SYSTEMROOT%\SysWOW64\cacls.exe" "%SYSTEMROOT%\SysWOW64\config\system"
) ELSE (
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
)

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params = %*:"=""
    echo UAC.ShellExecute "cmd.exe", "/c ""%~s0"" %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
	exit /b

:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"
:--------------------------------------    
goto Start
rem DisableQuickEdit
:Start
title Knight's Path
cls
echo            ___________________________________________________________________________________________________________________________________________________
echo           ^|                                                                                                                                                   ^|
echo           ^|    _____        _____ ________  ______  ___________________  ______      ______  ___________________  __  _____________                           ^|
echo           ^|    \    \      /    /         \ \     \ \                  \ \     \     \     \ \                  \ \ \ \            \          ^|\              ^|
echo           ^|     \    \    /    /    __     \ \     \ \       ___________\ \     \     \     \ \                  \ \ \ \      ______\         ^< \         _   ^|
echo           ^|  ____\    \  /    /\    \_\     \_\     \_\      \_____________\     \     \     \_\______      ______\_\_\_\     \_______________ / \       //   ^|
echo           ^| /     \    \/     \ \    \ \     \ \     \ \      \             \     \_____\     \       \     \            \     \______        ^|{o}______/^|    ^|
echo           ^| ^<------\           \-\    \-\     \-\     \-\      \   ________  \                 \-------\     \------------\           \-------^|-----------]   ^|
echo           ^| \_______\     __    \_\    \_\     \_\     \_\      \__\___     \_\      ______     \ ______\     \____________\______     \______^|{o}~~~~~~\^|    ^|
echo           ^|          \    \ \    \ \    \ \     \ \     \ \      \     \     \ \     \     \     \       \     \                  \     \      \ /       \\   ^|
echo           ^|           \    \ \    \ \    \ \     \ \     \ \      \_____\     \ \     \     \     \       \     \            ______\     \    ^< /         ~   ^|
echo           ^|            \    \ \    \ \    \ \     \ \     \ \                  \ \     \     \     \       \     \           \            \   ^|/              ^|
echo           ^|             \____\ \____\ \____\ \_____\ \_____\ \__________________\ \_____\     \_____\       \_____\           \____________\                  ^|
echo           ^|                                                                                                                                                   ^|
echo           ^|                                                                                                                                                   ^|
echo           ^|                                                 ___________________   ____ ___________________  ______      ______                                ^|
echo           ^|              /^|                                /   __________     /  /    \                  / /     /     /     /                                ^|
echo           ^|   _         / ^>                               /   /          /    / /  __  \                / /     /     /     /                                 ^|
echo           ^|   \\       / \ ______________________________/   /          /    /_/  /  \  \__      ______/_/     /_____/     /________________________________  ^|
echo           ^|    ^|\______{o}^|                             /   /_________ /   _/ /  /    \  \/     /       /     /_____/     /                                 \ ^|
echo           ^|   [-----------^|----------------------------/     _____________/--/  /______\  \    /-------/                 /----------------------------------^> ^|
echo           ^|    ^|/~~~~~~{o}^|___________________________/     /_______________/              \  /_______/     ______      /___________________________________/ ^|
echo           ^|   //       \ /                           /     /               /     ______     \/       /     /     /     /                                      ^|
echo           ^|   ~         \ ^>                         /     /               /     /      \     \      /     /     /     /                                       ^|
echo           ^|              \^|                        /     /               /     /        \     \    /     /     /     /                                        ^|
echo           ^|                                       /_____/               /_____/          \_____\  /_____/     /_____/                                         ^|
echo           ^|___________________________________________________________________________________________________________________________________________________^|
echo.
echo                                                                               By: Rushil Umaretiya
echo.
echo                                                                          _________  _________  _________
echo                                                                         [NEW  GAME][  LOAD   ][ CREDITS ]
echo                                                                         [Press (N)][Press (L)][Press (C)]
echo                                                                         [_________][_________][_________]
set /p startoption= 
if /I %startoption% == N goto New
if /I %startoption% == L goto Load Menu
if /I %startoption% == C goto Credits
if /I %startoption% == DEV goto DebugMode
goto Start

:Credits
mode 65
for /L %%z in (1,1,55) do echo(
for %%a in (
"Credits:"
"Game Director:             Rushil Umaretiya"
"Art Director:              Rushil Umamretya"
"Storywriter:               Rushil Umaretiya"
"Engineering:               Rushil Umaretiya"
"Music and Sound Effects:   Rushil Umaretiya"
"Advertising:               Rushil Umaretiya"
"                   ...                     "
"    You get the gist. -Rushil Umaretiya"
"                   ...                     "
"In beloved memory of the time it took to"
"              make this game"
) do (
echo              %%~a
ping -n 2 localhost>nul
echo.
)
for /L %%i in (1,1,55) do echo( &ping -n 2 localhost>nul
for /L %%z in (1,1,55) do echo(
for %%a in (
"   But seriously,"
"Thanks for playing!"
"     -Rushil"
) do (
echo              %%~a
ping -n 2 localhost>nul
echo.
)
for /L %%i in (1,1,20) do echo( &ping -n 2 localhost>nul
pause
mode 1000
goto Start

:DebugMode
set hp=9999
set exp=9999
set gold=9999
set lives=9999
set name=DebugMode
goto Battle

:Save Menu
cls
echo.
echo    Save Menu:
echo.
echo  ___________________________
echo ^|                           ^|
echo ^|          SLOT 1           ^|
echo ^|                           ^|
if exist slot1.dlb echo ^|          -IN USE-         ^|
if not exist slot1.dlb echo ^|         -EMPTY-           ^|
echo ^|                           ^|
echo ^|___________________________^|
echo.
echo.
echo  ___________________________
echo ^|                           ^|
echo ^|          SLOT 2           ^|
echo ^|                           ^|
if exist slot2.dlb echo ^|          -IN USE-         ^|
if not exist slot2.dlb echo ^|         -EMPTY-           ^|
echo ^|                           ^|
echo ^|___________________________^|
echo.
echo.
echo  ___________________________
echo ^|                           ^|
echo ^|          SLOT 3           ^|
echo ^|                           ^|
if exist slot3.dlb echo ^|          -IN USE-         ^|
if not exist slot3.dlb echo ^|         -EMPTY-           ^|
echo ^|                           ^|
echo ^|___________________________^|
echo.
echo.
echo  ___________________________
echo ^|                           ^|
echo ^|          SLOT 4           ^|
echo ^|                           ^|
if exist slot4.dlb echo ^|          -IN USE-         ^|
if not exist slot4.dlb echo ^|         -EMPTY-           ^|
echo ^|                           ^|
echo ^|___________________________^|
echo.
echo.
echo  ___________________________
echo ^|                           ^|
echo ^|          SLOT 5           ^|
echo ^|                           ^|
if exist slot5.dlb echo ^|          -IN USE-         ^|
if not exist slot5.dlb echo ^|         -EMPTY-           ^|
echo ^|                           ^|
echo ^|___________________________^|
echo.
echo.
echo Type the number of the slot:
set /p SaveOption=
if %SaveOption% == 1 goto Slot1Save
if %SaveOption% == 2 goto Slot2Save
if %SaveOption% == 3 goto Slot3Save
if %SaveOption% == 4 goto Slot4Save
if %SaveOption% == 5 goto Slot5Save
goto Save Menu


:Load Menu
cls
echo  ___________________________
echo ^|                           ^|
echo ^|          SLOT 1           ^|
echo ^|                           ^|
if exist slot1.dlb echo ^|          -IN USE-         ^|
if not exist slot1.dlb echo ^|         -EMPTY-           ^|
echo ^|                           ^|
echo ^|___________________________^|
echo.
echo.
echo  ___________________________
echo ^|                           ^|
echo ^|          SLOT 2           ^|
echo ^|                           ^|
if exist slot2.dlb echo ^|          -IN USE-         ^|
if not exist slot2.dlb echo ^|         -EMPTY-           ^|
echo ^|                           ^|
echo ^|___________________________^|
echo.
echo.
echo  ___________________________
echo ^|                           ^|
echo ^|          SLOT 3           ^|
echo ^|                           ^|
if exist slot3.dlb echo ^|          -IN USE-         ^|
if not exist slot3.dlb echo ^|         -EMPTY-           ^|
echo ^|                           ^|
echo ^|___________________________^|
echo.
echo.
echo  ___________________________
echo ^|                           ^|
echo ^|          SLOT 4           ^|
echo ^|                           ^|
if exist slot4.dlb echo ^|          -IN USE-         ^|
if not exist slot4.dlb echo ^|         -EMPTY-           ^|
echo ^|                           ^|
echo ^|___________________________^|
echo.
echo.
echo  ___________________________
echo ^|                           ^|
echo ^|          SLOT 5           ^|
echo ^|                           ^|
if exist slot5.dlb echo ^|          -IN USE-         ^|
if not exist slot5.dlb echo ^|         -EMPTY-           ^|
echo ^|                           ^|
echo ^|___________________________^|
echo.
echo.
echo Type the number of the slot:
set /p LoadOption=
if %LoadOption% == 1 goto Slot1Load
if %LoadOption% == 2 goto Slot2Load
if %LoadOption% == 3 goto Slot3Load
if %LoadOption% == 4 goto Slot4Load
if %LoadOption% == 5 goto Slot5Load
goto Load Menu


:Slot1Save
if exist slot1.dlb goto OverwriteSlot1
(
echo %area%
echo %name%
echo %exp%
echo %monexp%
echo %gold%
echo %lives%
echo %pistolMag%
echo %pistolMagMax%
echo %GoldenGunMag%
echo %GoldenGunMagMax%
echo %GoldenGunStatus%
)>slot1.dlb
goto Battle

:Slot1Load
if not exist slot1.dlb goto LoadFail
(
set /p area=
set /p name=
set /p exp=
set /p monexp=
set /p gold=
set /p lives=
set /p pistolMag=
set /p pistolMagMax=
set /p GoldenGunMag=
set /p GoldenGunMagMax=
set /p GoldenGunStatus=
)<slot1.dlb
goto Battle

:Slot2Save
if exist slot2.dlb goto OverwriteSlot2
(
echo %area%
echo %name%
echo %exp%
echo %monexp%
echo %gold%
echo %lives%
echo %pistolMag%
echo %pistolMagMax%
echo %GoldenGunMag%
echo %GoldenGunMagMax%
echo %GoldenGunStatus%
)>slot2.dlb
goto Battle

:Slot2Load
if not exist slot2.dlb goto LoadFail
(
set /p area=
set /p name=
set /p exp=
set /p monexp=
set /p gold=
set /p lives=
set /p pistolMag=
set /p pistolMagMax=
set /p GoldenGunMag=
set /p GoldenGunMagMax=
set /p GoldenGunStatus=
)<slot2.dlb
goto Battle

:Slot3Save
if exist slot3.dlb goto OverwriteSlot3
(
echo %area%
echo %name%
echo %exp%
echo %monexp%
echo %gold%
echo %lives%
echo %pistolMag%
echo %pistolMagMax%
echo %GoldenGunMag%
echo %GoldenGunMagMax%
echo %GoldenGunStatus%
)>slot3.dlb
goto Battle

:Slot3Load
if not exist slot3.dlb goto LoadFail
(
set /p area=
set /p name=
set /p exp=
set /p monexp=
set /p gold=
set /p lives=
set /p pistolMag=
set /p pistolMagMax=
set /p GoldenGunMag=
set /p GoldenGunMagMax=
set /p GoldenGunStatus=
)<slot3.dlb
goto Battle

:Slot4Save
if exist slot4.dlb goto OverwriteSlot4
(
echo %area%
echo %name%
echo %exp%
echo %monexp%
echo %gold%
echo %lives%
echo %pistolMag%
echo %pistolMagMax%
echo %GoldenGunMag%
echo %GoldenGunMagMax%
echo %GoldenGunStatus%
)>slot4.dlb
goto Battle

:Slot4Load
if not exist slot4.dlb goto LoadFail
(
set /p area=
set /p name=
set /p exp=
set /p monexp=
set /p gold=
set /p lives=
set /p pistolMag=
set /p pistolMagMax=
set /p GoldenGunMag=
set /p GoldenGunMagMax=
set /p GoldenGunStatus=
)<slot4.dlb
goto Battle

:Slot5Save
if exist slot5.dlb goto OverwriteSlot5
(
echo %area%
echo %name%
echo %exp%
echo %monexp%
echo %gold%
echo %lives%
echo %pistolMag%
echo %pistolMagMax%
echo %GoldenGunMag%
echo %GoldenGunMagMax%
echo %GoldenGunStatus%
)>slot5dlb
goto Battle

:Slot5Load
if not exist slot5.dlb goto LoadFail
(
set /p area=
set /p name=
set /p exp=
set /p monexp=
set /p gold=
set /p lives=
set /p pistolMag=
set /p pistolMagMax=
set /p GoldenGunMag=
set /p GoldenGunMagMax=
set /p GoldenGunStatus=
)<slot5.dlb
goto Battle

:LoadFail
cls
call :Typing "This slot is empty."
echo.
call :Typing "Why would you try and load an empty slot?"
echo.
call :Typing "I mean seriously..."
echo.
call :Typing "Well, once you get your head back in the game..."
echo.
call :Typing "You can choose to save or load."
echo.
call :Typing "Just click S to Save"
echo.
call :Typing "Or L to load."
echo.
call :Typing "You can also go back to the Main Menu with M, if your not up to it."
echo.
call :Typing "If you can even manage that..."
echo.
set /p loadfailoption= 
if /I %loadfailoption% == S goto Save Menu
if /I %loadfailoption% == L goto Load Menu
if /I %loadfailoption% == M goto Start
cls
call :Typing "Wow, seriously."
echo.
call :Typing "You just couldn't handle it."
echo.
call :Typing "The great choice..."
echo.
call :Typing "Should I save?"
echo.
call :Typing "Or maybe load."
echo.
call :Typing "But the main menu sounds nice..."
echo.
call :Typing "Please, go to a mental therapist to find out what in the blue blazes is wrong with you."
echo.
pause
cls
call :Typing "Oh, good."
echo.
call :Typing "You're back I assume."
echo.
call :Typing "Now please,"
echo.
call :Typing "Make your choice."
echo.
set /p startoption= 
if /I %loadfailoption% == S goto Save Menu
if /I %loadfailoption% == L goto Load Menu
if /I %loadfailoption% == M goto Start
cls
call :Typing "Heh Heh..."
echo.
call :Typing "Inhale."
echo.
call :Typing "Exhale."
echo.
call :Typing "WHAT IS WRONG WITH YOU."
echo.
call :Typing "You just couldn't click a simple BUTTON?"
echo.
call :Typing "Well then."
echo.
call :Typing "Have you heard what we do with rebellious spirits."
echo.
call :Typing "We kick them out."
echo.
call :Typing "But since I'm nice you can have one more chance."
echo.
call :Typing "Just pick one."
echo.
call :Typing "L for Load,"
echo.
call :Typing "S for Save,"
echo.
call :Typing "And M for Main Menu"
echo.
call :Typing "Last Chance:"
echo.
set /p startoption= 
if /I %loadfailoption% == S goto Save Menu
if /I %loadfailoption% == L goto Load Menu
if /I %loadfailoption% == M goto Start
cls
call :Typing "Alright that's it."
echo.
call :Typing "You have no respect for me."
echo.
call :Typing "Therefore you do not get to play my game."
echo.
call :Typing "Goodbye."
echo.
pause
exit

:OverwriteSlot1
call :Typing "Would You like to overwrite this slot? (Y/N)"
set /p startoption= 
if /I %loadfailoption% == N goto Save Menu
if /I %loadfailoption% == Y echo YesOverwrite1

:YesOverwrite1
(
echo %name%
echo %exp%
echo %monexp%
echo %gold%
echo %lives%
echo %pistolMag%
echo %pistolMagMax%
echo %GoldenGunMag%
echo %GoldenGunMagMax%
echo %GoldenGunStatus%
)>slot1.dlb
goto Battle

:OverwriteSlot2
call :Typing "Would You like to overwrite this slot? (Y/N)"
set /p startoption= 
if /I %loadfailoption% == N goto Save Menu
if /I %loadfailoption% == Y echo YesOverwrite2

:YesOverwrite2
(
echo %name%
echo %exp%
echo %monexp%
echo %gold%
echo %lives%
echo %pistolMag%
echo %pistolMagMax%
echo %GoldenGunMag%
echo %GoldenGunMagMax%
echo %GoldenGunStatus%
)>slot2.dlb
goto Battle

:OverwriteSlot3
call :Typing "Would You like to overwrite this slot? (Y/N)"
set /p startoption= 
if /I %loadfailoption% == N goto Save Menu
if /I %loadfailoption% == Y echo YesOverwrite3

:YesOverwrite3
(
echo %name%
echo %exp%
echo %monexp%
echo %gold%
echo %lives%
echo %pistolMag%
echo %pistolMagMax%
echo %GoldenGunMag%
echo %GoldenGunMagMax%
echo %GoldenGunStatus%
)>slot3.dlb
goto Battle

:OverwriteSlot4
call :Typing "Would You like to overwrite this slot? (Y/N)"
set /p startoption= 
if /I %loadfailoption% == N goto Save Menu
if /I %loadfailoption% == Y echo YesOverwrite4

:YesOverwrite4
(
echo %name%
echo %exp%
echo %monexp%
echo %gold%
echo %lives%
echo %pistolMag%
echo %pistolMagMax%
echo %GoldenGunMag%
echo %GoldenGunMagMax%
echo %GoldenGunStatus%
)>slot4.dlb
goto Battle

:OverwriteSlot5
call :Typing "Would You like to overwrite this slot? (Y/N)"
set /p startoption= 
if /I %loadfailoption% == N goto Save Menu
if /I %loadfailoption% == Y echo YesOverwrite5

:YesOverwrite5
(
echo %name%
echo %exp%
echo %monexp%
echo %gold%
echo %lives%
echo %pistolMag%
echo %pistolMagMax%
echo %GoldenGunMag%
echo %GoldenGunMagMax%
echo %GoldenGunStatus%
)>slot5.dlb
goto Battle

:Shop
cls
echo.
echo.
echo                                                                      Gold: %gold%G
echo.
echo.
echo                                                _________________________________________________________
echo                                               /                                                         \
echo                                              /                                                           \
echo                                             ^|      ^|       ^|       ^|       ^|       ^|       ^|       ^|      ^|
echo                                             ^|      ^|       ^|       ^|       ^|       ^|       ^|       ^|      ^|
echo                                              \____/ \_____/ \_____/ \_____/ \_____/ \_____/ \_____/ \____/
echo                                                    ^|                                               ^|
echo                                                    ^|                 ___________                   ^|
echo                                                    ^|                ^| _       _ ^|                  ^|
echo                                                    ^|                ^|^|_^|     ^|_^|^|                  ^|
echo                                                    ^|                ^|           ^|                  ^|
echo                                                    ^|                ^|   ^|___^|   ^|                  ^|
echo                                                    ^|                ^|___________^| /                ^|
echo                                                    ^|                      ^|      /                 ^|
echo                                                    ^|                 _____^|_____/                  ^|
echo                                                    ^|                /     ^|                        ^|
echo                                                    ^|               /      ^|                        ^|
echo                                                    ^|              /       ^|                        ^|
echo                                                  __^|_______________________________________________^|__
echo                                                 /                                                     \
echo                                                ^|                      Bob's Shops                      ^|
echo                                                 \_____________________________________________________/
echo.
echo.
echo  __________________________________
echo   _
echo  ^|_^|
echo  \^|/
echo  / \
echo Bob:
call :Typing "Hi, my name's Bob. Proud owner of Bob's Shops. Welcome to my shop. We sell a variety of things here such as literally anything to help you with your journey. My primary existance is mainly for that one reason. Please help me..."
echo.
echo  __________________________________
echo.
pause
cls
echo.
echo.
echo                                                                      Gold: %gold%G
echo.
echo.
echo                                                _________________________________________________________
echo                                               /                                                         \
echo                                              /                                                           \
echo                                             ^|      ^|       ^|       ^|       ^|       ^|       ^|       ^|      ^|
echo                                             ^|      ^|       ^|       ^|       ^|       ^|       ^|       ^|      ^|
echo                                              \____/ \_____/ \_____/ \_____/ \_____/ \_____/ \_____/ \____/
echo                                                    ^|                                               ^|
echo                                                    ^|                 ___________                   ^|
echo                                                    ^|                ^| _       _ ^|                  ^|
echo                                                    ^|                ^|^|_^|     ^|_^|^|                  ^|
echo                                                    ^|                ^|           ^|                  ^|
echo                                                    ^|                ^|   ^|___^|   ^|                  ^|
echo                                                    ^|                ^|___________^| /                ^|
echo                                                    ^|                      ^|      /                 ^|
echo                                                    ^|                 _____^|_____/                  ^|
echo                                                    ^|                /     ^|                        ^|
echo                                                    ^|               /      ^|                        ^|
echo                                                    ^|              /       ^|                        ^|
echo                                                  __^|_______________________________________________^|__
echo                                                 /                                                     \
echo                                                ^|                      Bob's Shops                      ^|
echo                                                 \_____________________________________________________/
echo.
echo.
echo  __________________________________
echo   _
echo  ^|_^|
echo  \^|/
echo  / \
echo Bob:
call :Typing "What would you like?"
echo.
echo                                                             _________   _________   _________
echo                                                            [ WEAPONS ] [  MAGIC  ] [UPGRADES ]
echo                                                            [Press (W)] [Press (M)] [Press (U)]
echo                                                            [_________] [_________] [_________]
echo.
echo  __________________________________
echo.
echo Enter your choice:
set /p shopoption= 
if /I %shopoption% == W goto WeaponsShop
if /I %shopoption% == M goto MagicShop
if /I %shopoption% == U goto UpgradesShop
if /I %shopoption% == "goto" goto DevMode
if /I %shopoption% == GOLD set /p gold= & goto Shop
if /I %shopoption% == GGSTATUS set /p GoldenGunStatus= & goto Shop

:DevGoto
echo Enter Label:
set /p DevGoto=
goto %DevGoto%
goto DevGoto

:WeaponsShop
cls
echo.
echo.
echo                                                                      Gold: %gold%G
echo.
echo.
echo                                                _________________________________________________________
echo                                               /                                                         \
echo                                              /                                                           \
echo                                             ^|      ^|       ^|       ^|       ^|       ^|       ^|       ^|      ^|
echo                                             ^|      ^|       ^|       ^|       ^|       ^|       ^|       ^|      ^|
echo                                              \____/ \_____/ \_____/ \_____/ \_____/ \_____/ \_____/ \____/
echo                                                    ^|                                               ^|
echo                                                    ^|                 ___________            /^|     ^|
echo                                                    ^|                ^| _       _ ^|          / ^|     ^|
echo                                                    ^|                ^|^|_^|     ^|_^|^|         /  ^|     ^|
echo                                                    ^|                ^|           ^|        /   ^|     ^|
echo                                                    ^|                ^|   ^|___^|   ^|       /    ^|     ^|
echo                                                    ^|                ^|___________^| /    /    /      ^|
echo                                                    ^|                      ^|      /    /    /       ^|
echo                                                    ^|                 _____^|_____/    /____/        ^|
echo                                                    ^|                /     ^|            /     /\    ^|
echo                                                    ^|               /      ^|           /     ^|__^|   ^|
echo                                                    ^|              /       ^|          /             ^|
echo                                                  __^|_______________________________________________^|__
echo                                                 /                                                     \
echo                                                ^|                      Bob's Shops                      ^|
echo                                                 \_____________________________________________________/
echo.
echo.
echo.
echo  __________________________________
echo   _
echo  ^|_^|
echo  \^|/
echo  / \
echo Bob:
call :Typing "Here at Bob's Shops we have a vast variety of Weapons from all shapes and sizes. But here's the catch, I can only give you certain weapons if you're at a certain XP    Level! So you must work hard killing everything you see for even more items to kill everything you see. Fun! Right?"
echo.
echo  __________________________________
echo.
pause
cls
echo.
echo.
echo                                                                      Gold: %gold%G
echo.
echo.
echo                                                _________________________________________________________
echo                                               /                                                         \
echo                                              /                                                           \
echo                                             ^|      ^|       ^|       ^|       ^|       ^|       ^|       ^|      ^|
echo                                             ^|      ^|       ^|       ^|       ^|       ^|       ^|       ^|      ^|
echo                                              \____/ \_____/ \_____/ \_____/ \_____/ \_____/ \_____/ \____/
echo                                                    ^|                                               ^|
echo                                                    ^|                 ___________            /^|     ^|
echo                                                    ^|                ^| _       _ ^|          / ^|     ^|
echo                                                    ^|                ^|^|_^|     ^|_^|^|         /  ^|     ^|
echo                                                    ^|                ^|           ^|        /   ^|     ^|
echo                                                    ^|                ^|   ^|___^|   ^|       /    ^|     ^|
echo                                                    ^|                ^|___________^| /    /    /      ^|
echo                                                    ^|                      ^|      /    /    /       ^|
echo                                                    ^|                 _____^|_____/    /____/        ^|
echo                                                    ^|                /     ^|            /     /\    ^|
echo                                                    ^|               /      ^|           /     ^|__^|   ^|
echo                                                    ^|              /       ^|          /             ^|
echo                                                  __^|_______________________________________________^|__
echo                                                 /                                                     \
echo                                                ^|                      Bob's Shops                      ^|
echo                                                 \_____________________________________________________/
echo.
echo.
echo.
echo  __________________________________
echo   _
echo  ^|_^|
echo  \^|/
echo  / \
echo Bob:
call :Typing "What would you like?"
echo.
echo                                                                          _________
echo                                                                         [  BACK   ]
echo                                                                         [Press (B)]
echo                                                                         [_________]
echo                                                             __________   _________   ___________
echo                                                            [GOLDEN GUN] [  AK-47  ] [STEEL SWORD]
echo                                                            [Press  (G)] [Press (A)] [ Press (T) ]
echo                                                            [   200G   ] [  400G   ] [   500G    ]
echo                                                            [__________] [_________] [___________]
echo.
echo                                                                          Level 3:
echo.
echo                                                                          Level 5:
echo.
echo                                                                          Level 10:
echo.
echo                                                                          Level 20:
echo.
echo                                                                          Level 50
echo.
echo  __________________________________
echo.
echo Enter your choice:
set /p wshopoption=
if /I %wshopoption% == G goto Golden Gun Shop
if /I %wshopoption% == A goto AK-47 Shop
if /I %wshopoption% == T goto Steel Sword Shop
if /I %wshopoption% == B goto Shop

:MagicShop
pause
goto Shop

:UpgradesShop
pause
goto Shop


:Golden Gun Shop
cls
echo.
echo.
echo                                                                      Gold: %gold%G
echo.
echo.
echo                                                _________________________________________________________
echo                                               /                                                         \
echo                                              /                                                           \
echo                                             ^|      ^|       ^|       ^|       ^|       ^|       ^|       ^|      ^|
echo                                             ^|      ^|       ^|       ^|       ^|       ^|       ^|       ^|      ^|
echo                                              \____/ \_____/ \_____/ \_____/ \_____/ \_____/ \_____/ \____/
echo                                                    ^|                                               ^|
echo                                                    ^|                 ___________            /^|     ^|
echo                                                    ^|                ^| _       _ ^|          / ^|     ^|
echo                                                    ^|                ^|^|_^|     ^|_^|^|         /  ^|     ^|
echo                                                    ^|                ^|           ^|        /   ^|     ^|
echo                                                    ^|                ^|   ^|___^|   ^|       /    ^|     ^|
echo                                                    ^|                ^|___________^| /    /    /      ^|
echo                                                    ^|                      ^|      /    /    /       ^|
echo                                                    ^|                 _____^|_____/    /____/        ^|
echo                                                    ^|                /     ^|            /     /\    ^|
echo                                                    ^|               /      ^|           /     ^|__^|   ^|
echo                                                    ^|              /       ^|          /             ^|
echo                                                  __^|_______________________________________________^|__
echo                                                 /                                                     \
echo                                                ^|                      Bob's Shops                      ^|
echo                                                 \_____________________________________________________/
echo.
echo.
echo.
echo  __________________________________
echo   _
echo  ^|_^|
echo  \^|/
echo  / \
echo Bob:
call :Typing "The GOLDEN GUN is mostly like your hangun except it's made of something that resembles gold, and is slightly stronger than your own pistol. The secret, is that it looks cooler when you shoot it."
echo.
echo                                                             _________   _________   _________
echo                                                            [  STATS  ] [  BACK   ] [   BUY   ]
echo                                                            [Press (S)] [Press (B)] [Press (Y)]
echo                                                            [_________] [_________] [_________]
echo.
echo  __________________________________
echo.
echo Enter your choice:
set /p ggshopoption=
if /I %ggshopoption% == S goto GoldenGunStats
if /I %ggshopoption% == B goto WeaponsShop
if /I %ggshopoption% == Y goto BuyGoldenGun
goto Golden Gun Shop

:GoldenGunStats
cls
echo.
echo.
echo                                                                      Gold: %gold%G
echo.
echo.
echo                                                _________________________________________________________
echo                                               /                                                         \
echo                                              /                                                           \
echo                                             ^|      ^|       ^|       ^|       ^|       ^|       ^|       ^|      ^|
echo                                             ^|      ^|       ^|       ^|       ^|       ^|       ^|       ^|      ^|
echo                                              \____/ \_____/ \_____/ \_____/ \_____/ \_____/ \_____/ \____/
echo                                                    ^|                                               ^|
echo                                                    ^|                 ___________            /^|     ^|
echo                                                    ^|                ^| _       _ ^|          / ^|     ^|
echo                                                    ^|                ^|^|_^|     ^|_^|^|         /  ^|     ^|
echo                                                    ^|                ^|           ^|        /   ^|     ^|
echo                                                    ^|                ^|   ^|___^|   ^|       /    ^|     ^|
echo                                                    ^|                ^|___________^| /    /    /      ^|
echo                                                    ^|                      ^|      /    /    /       ^|
echo                                                    ^|                 _____^|_____/    /____/        ^|
echo                                                    ^|                /     ^|            /     /\    ^|
echo                                                    ^|               /      ^|           /     ^|__^|   ^|
echo                                                    ^|              /       ^|          /             ^|
echo                                                  __^|_______________________________________________^|__
echo                                                 /                                                     \
echo                                                ^|                      Bob's Shops                      ^|
echo                                                 \_____________________________________________________/
echo.
echo.
echo.
echo  __________________________________
echo   _
echo  ^|_^|
echo  \^|/
echo  / \
echo Bob:
call :Typing "Here are some stats:"
echo.
echo  _____________________________________
echo [    ,-.______________,=========,     ]
echo [   [^|  )_____________)#######((_    ]
echo [    /===============.-.___,--" _\    ]
echo [   "-._,__,__[GG]____\########/      ]
echo [             \ (  )) )####O##(       ]
echo [              \ \___/,.#######\      ]
echo [               `===="  \#######\     ]
echo [                        \#######\    ]
echo [                         )##O####^|  ]
echo [    GOLDEN               )####__,"   ]
echo [     GUN                 `--""       ]
echo [_____________________________________]
echo.
echo.
echo.              Stats:
echo         Magizine Size: 10
echo         Power Range: 0-35
echo         Average Damage: 23
echo.
echo            Probablity:
echo         Missed:        7.5%
echo         Bad Shot:      15%
echo         Good Shot:     47.5%
echo         Great Shot:    30.5%
echo         CRITICAL Shot: 4%
echo.
echo             Damage:
echo         Missed:        0
echo         Bad Shot:      15
echo         Good Shot:     25
echo         Great Shot:    30
echo         CRITICAL Shot: 45
echo.
echo  __________________________________
echo.
pause
goto GoldenGunStats

:BuyGoldenGun
cls
echo.
echo.
echo                                                                      Gold: %gold%G
echo.
echo.
echo                                                _________________________________________________________
echo                                               /                                                         \
echo                                              /                                                           \
echo                                             ^|      ^|       ^|       ^|       ^|       ^|       ^|       ^|      ^|
echo                                             ^|      ^|       ^|       ^|       ^|       ^|       ^|       ^|      ^|
echo                                              \____/ \_____/ \_____/ \_____/ \_____/ \_____/ \_____/ \____/
echo                                                    ^|                                               ^|
echo                                                    ^|                 ___________            /^|     ^|
echo                                                    ^|                ^| _       _ ^|          / ^|     ^|
echo                                                    ^|                ^|^|_^|     ^|_^|^|         /  ^|     ^|
echo                                                    ^|                ^|           ^|        /   ^|     ^|
echo                                                    ^|                ^|   ^|___^|   ^|       /    ^|     ^|
echo                                                    ^|                ^|___________^| /    /    /      ^|
echo                                                    ^|                      ^|      /    /    /       ^|
echo                                                    ^|                 _____^|_____/    /____/        ^|
echo                                                    ^|                /     ^|            /     /\    ^|
echo                                                    ^|               /      ^|           /     ^|__^|   ^|
echo                                                    ^|              /       ^|          /             ^|
echo                                                  __^|_______________________________________________^|__
echo                                                 /                                                     \
echo                                                ^|                      Bob's Shops                      ^|
echo                                                 \_____________________________________________________/
echo.
echo.
echo.
echo  __________________________________
echo   _
echo  ^|_^|
echo  \^|/
echo  / \
echo Bob:
call :Typing "Are you sure you'd like to buy this item? Plese do..."
echo.
echo                                                             _________   _________   _________
echo                                                            [   YES   ] [  BACK   ] [   NO    ]
echo                                                            [Press (Y)] [Press (B)] [Press (N)]
echo                                                            [_________] [_________] [_________]
echo.
echo  __________________________________
echo.
echo Enter your choice:
set /p shopoption= 
if /I %shopoption% == Y goto BoughtGoldenGun
if /I %shopoption% == N goto WeaponsShop
if /I %shopoption% == B goto WeaponsShop

:BoughtGoldenGun
if %gold% LSS 200 (
	cls
	echo                                      You do not have enough gold for this item.
	echo                                      You need 200G to purchase this item.
	echo                                      You currently have %gold%G
	echo.
	pause
	goto WeaponsShop
)

if /I %GoldenGunStatus% == Active (
	cls
	echo                                     You already have a Golden Gun!
	echo                                     Although two guns sound cool
	echo.
	pause
	goto WeaponsShop
)

set GoldenGunStatus=Active
set gold = %gold% - 200

cls
echo.
echo.
echo                                                                      Gold: %gold%G
echo.
echo.
echo                                                _________________________________________________________
echo                                               /                                                         \
echo                                              /                                                           \
echo                                             ^|      ^|       ^|       ^|       ^|       ^|       ^|       ^|      ^|
echo                                             ^|      ^|       ^|       ^|       ^|       ^|       ^|       ^|      ^|
echo                                              \____/ \_____/ \_____/ \_____/ \_____/ \_____/ \_____/ \____/
echo                                                    ^|                                               ^|
echo                                                    ^|                 ___________            /^|     ^|
echo                                                    ^|                ^| _       _ ^|          / ^|     ^|
echo                                                    ^|                ^|^|_^|     ^|_^|^|         /  ^|     ^|
echo                                                    ^|                ^|           ^|        /   ^|     ^|
echo                                                    ^|                ^|   ^|___^|   ^|       /    ^|     ^|
echo                                                    ^|                ^|___________^| /    /    /      ^|
echo                                                    ^|                      ^|      /    /    /       ^|
echo                                                    ^|                 _____^|_____/    /____/        ^|
echo                                                    ^|                /     ^|            /     /\    ^|
echo                                                    ^|               /      ^|           /     ^|__^|   ^|
echo                                                    ^|              /       ^|          /             ^|
echo                                                  __^|_______________________________________________^|__
echo                                                 /                                                     \
echo                                                ^|                      Bob's Shops                      ^|
echo                                                 \_____________________________________________________/
echo.
echo.
echo.
echo  __________________________________
echo   _
echo  ^|_^|
echo  \^|/
echo  / \
echo Bob:
call :Typing "Here's your gun! It's gold, don't worry..."
echo.
echo   ,-.______________,=========,
echo  [^|  )_____________)#######((_
echo   /===============.-.___,--" _\
echo  "-._,__,__[GG]____\########/
echo            \ (  )) )####O##(
echo             \ \___/,.#######\
echo              `===="  \#######\
echo                       \#######\
echo                        )##O####^|
echo                        )####__,"
echo                        `--""
echo  __________________________________
echo.
pause
goto Shop

:AK-47 Shop
pause
goto WeaponsShop

:Steel Sword Shop
pause
goto WeaponsShop

:BuySteelSword
pause
goto WeaponsShop

:BuyAK-47
pause
goto WeaponsShop

:New
cls
echo.
echo                                        /\
echo                                       /`:\
echo                                      /`'`:\
echo                                     /`'`'`:\
echo                                    /`'`'`'`:\
echo                                   /`'`'`'`'`:\
echo                                    ^|`'`'`'`:^|
echo      _ _  _  _  _                  ^|] ,-.  :^|_  _  _  _
echo     ^|^|^| ^|^| ^|^| ^|^| ^|                 ^|  ^|_^| ^|^|^| ^|^| ^|^| ^|^| ^|
echo     ^|`' `' `' `'.^|                 ^| _'=' ^|`' `' `' `'.^|
echo     :          .:;                 ^|'-'   :          .:;
echo      \-..____..:/  _  _  _  _  _  _^| _  _'-\-..____..:/
echo       :--------:_,' ^|^| ^|^| ^|^| ^|^| ^|^| ^|^| ^|^| `.::--------:
echo       ^|]     .:^|:.  `' `'_`' `' `' `' `'    ^| '-'  .:^|
echo       ^|  ,-. .[^|:._     '-' ____     ___    ^|   ,-.'-^|
echo       ^|  ^| ^| .:^|'--'_     ,'____`.  '---'   ^|   ^| ^|.:^|
echo       ^|  ^|_^| .:^|:.'--' ()/,^| ^|`^|`.\()   __  ^|   ^|_^|.:^|
echo       ^|  '=' .:^|:.     ^|::_^|_^|_^|\^|::   '--' ^|  _'='.:^|
echo       ^| __   .:^|:.     ;^|^|-,-,-,-,^|;        ^| '--' .:^|
echo       ^|'--'  .:^|:. _  ; ^|^|       ^|:^|        ^|      .:^|
echo       ^|      .:^|:.'-':  ^|^|       ^|;^|     _  ^|]     _:^|
echo       ^|      '-^|:.   ;  ^|^|       :^|^|    '-' ^|     '--^|
echo       ^|  _   .:^|].  ;   ^|^|       ;^|^|]       ^|   _  .:^|
echo       ^| '-'  .:^|:. :   [^|^|      ;^|^|^|        ^|  '-' .:^|
echo   ,', ;._____.::-- ;----^>'-,--,:-'^<'--------;._____.::.`.
echo  ((  (          )_;___,' ,' ,  ; //________(          ) ))
echo   `. _`--------' : -,' ' , ' '; //-       _ `--------' ,'
echo        __  .--'  ;,' ,'  ,  ': //    -.._    __  _.-  -
echo    `-   --    _ ;',' ,'  ,' ,;/_  -.       ---    _,
echo        _,.   /-:,_,_,_,_,_,_(/:-\   ,     ,.    _
echo      -'   `-'--'-'-'-'-'-'-'-''--'-' `-'`'  `'`' `
echo.
echo.
echo  __________________________________
echo.
echo.
echo ?:
call :Typing "I am sad to see you go..."
echo.
echo  __________________________________
pause

cls
echo.
echo                                        /\
echo                                       /`:\
echo                                      /`'`:\
echo                                     /`'`'`:\
echo                                    /`'`'`'`:\
echo                                   /`'`'`'`'`:\
echo                                    ^|`'`'`'`:^|
echo      _ _  _  _  _                  ^|] ,-.  :^|_  _  _  _
echo     ^|^|^| ^|^| ^|^| ^|^| ^|                 ^|  ^|_^| ^|^|^| ^|^| ^|^| ^|^| ^|
echo     ^|`' `' `' `'.^|                 ^| _'=' ^|`' `' `' `'.^|
echo     :          .:;                 ^|'-'   :          .:;
echo      \-..____..:/  _  _  _  _  _  _^| _  _'-\-..____..:/
echo       :--------:_,' ^|^| ^|^| ^|^| ^|^| ^|^| ^|^| ^|^| `.::--------:
echo       ^|]     .:^|:.  `' `'_`' `' `' `' `'    ^| '-'  .:^|
echo       ^|  ,-. .[^|:._     '-' ____     ___    ^|   ,-.'-^|
echo       ^|  ^| ^| .:^|'--'_     ,'____`.  '---'   ^|   ^| ^|.:^|
echo       ^|  ^|_^| .:^|:.'--' ()/,^| ^|`^|`.\()   __  ^|   ^|_^|.:^|
echo       ^|  '=' .:^|:.     ^|::_^|_^|_^|\^|::   '--' ^|  _'='.:^|
echo       ^| __   .:^|:.     ;^|^|-,-,-,-,^|;        ^| '--' .:^|
echo       ^|'--'  .:^|:. _  ; ^|^|       ^|:^|        ^|      .:^|
echo       ^|      .:^|:.'-':  ^|^|       ^|;^|     _  ^|]     _:^|
echo       ^|      '-^|:.   ;  ^|^|       :^|^|    '-' ^|     '--^|
echo       ^|  _   .:^|].  ;   ^|^|       ;^|^|]       ^|   _  .:^|
echo       ^| '-'  .:^|:. :   [^|^|      ;^|^|^|        ^|  '-' .:^|
echo   ,', ;._____.::-- ;----^>'-,--,:-'^<'--------;._____.::.`.
echo  ((  (          )_;___,' ,' ,  ; //________(          ) ))
echo   `. _`--------' : -,' ' , ' '; //-       _ `--------' ,'
echo        __  .--'  ;,' ,'  ,  ': //    -.._    __  _.-  -
echo    `-   --    _ ;',' ,'  ,' ,;/_  -.       ---    _,
echo        _,.   /-:,_,_,_,_,_,_(/:-\   ,     ,.    _
echo      -'   `-'--'-'-'-'-'-'-'-''--'-' `-'`'  `'`' `
echo.
echo.
echo  __________________________________
echo.
echo.
echo ?:
call :Typing "But I must. It is my destiny."
echo.
echo  __________________________________
pause

cls
echo.
echo                  ,_
echo             ()  /(.\
echo            /\__/_/\,)
echo        _,-((-'` /
echo       /(   d    )
echo       ` \ /`'--\\
echo          ))     ))
echo         //      ^
echo         ^
echo.
echo.
echo   ________________________
echo.
echo.
echo You:
call :Typing "Until next time old friend..."
echo.
echo   ________________________
pause

cls
echo What is your name, brave knight?
set /p name=
cls
echo Welcome to Knight's Path, %name%
pause
goto Save Menu

:Battle
if %lives% EQU 0 goto GameOver
if %monhp% LEQ 0 goto Win
if %hp% LEQ 0 goto Dead
cls
echo    %name% HP:%hp% XP:%exp% Gold:%gold% Lives:%lives%
echo                         VS
echo           Monster HP:%monhp% XP:%monexp%
echo.
echo.
echo.
echo.
echo.
echo       _________  _________  __________
echo      [ ATTACK  ][ DEFENSE ][   FLEE   ]
echo      [Press (A)][Press (D)][Press (F) ]
echo      [_________][_________][__________]
echo                  _________
echo                 [  SAVE   ]
echo                 [Press (S)]
echo                 [_________]
echo.
echo.
echo Please choose your option:
set /p option=
if /I %option% == MONEXP set /p monexp= & goto Battle
if /I %option% == MONHP set /p monhp= & goto Battle
if /I %option% == HP set /p hp= & goto Battle
if /I %option% == GOLD set /p gold= & goto Battle
if /I %option% == EXP set /p exp= & goto Battle
if /I %option% == LIVES set /p lives= & goto Battle
if /I %option% == S goto Save Menu
if /I %option% == A goto Attack
if /I %option% == D goto Defense
if /I %option% == F goto Flee
goto Battle

:Attack
cls
echo    %name% HP:%hp% XP:%exp% Gold:%gold%
echo               VS
echo      Monster HP:%monhp% XP:%monexp%
echo.
echo.
echo.
echo.
echo.
echo       _________  _________  _________
echo      [  SWORD  ][  PUNCH  ][   GUNS  ]
echo      [Press (S)][Press (P)][Press (G)]
echo      [_________][_________][_________]
echo                  _________
echo                 [  Back   ]
echo                 [Press (B)]
echo                 [_________]
echo.
echo.
echo Please choose your option:
set /p optiona=
if /I %optiona% == S goto Sword
if /I %optiona% == P goto Punch
if /I %optiona% == G goto Guns
if /I %optiona% == B goto Battle
goto Attack

:Defense
pause
goto Battle

:Guns
cls
echo    %name% HP:%hp% XP:%exp% Gold:%gold%
echo               VS
echo      Monster HP:%monhp% XP:%monexp%
echo.
echo.
echo.
echo.
echo.
echo       _________  _________  _________
echo      [  PISTOL ][   BACK  ][NEXT PAGE]
echo      [Press (P)][Press (B)][Press (N)]
echo      [_________][_________][_________]
echo.
echo.
echo Please choose your option:
set /p optiong=
if /I %optiong% == P goto Pistol
if /I %optiong% == B goto Attack
if /I %optiong% == N goto Guns2
goto Guns

:Guns2
cls
echo    %name% HP:%hp% XP:%exp% Gold:%gold%
echo               VS
echo      Monster HP:%monhp% XP:%monexp%
echo.
echo.
echo.
echo.
echo.
if %GoldenGunStatus% == Unactive (
	if %AKStatus% == Unactive (
		echo       __________  _________  _________
		echo      [  LOCKED  ][NEXT PAGE][  LOCKED  ]
		echo      [  LOCKED  ][Press (N)][  LOCKED  ]
		echo      [__________][_________][__________]
	)
)
if %GoldenGunStatus% == Active (
	if %AKStatus% == Active (
		echo       __________  _________  _________
		echo      [GOLDEN GUN][NEXT PAGE][  AK-47  ]
		echo      [Press  (P)][Press (N)][Press (A)]
		echo      [__________][_________][_________]
	)
)
if %GoldenGunStatus% == Active (
	echo       __________  _________  __________
	echo      [GOLDEN GUN][NEXT PAGE][  LOCKED  ]
	echo      [Press  (P)][Press (N)][  LOCKED  ]
	echo      [__________][_________][__________]
)
if %AKStatus% == Active (
	echo       __________  _________  _________
	echo      [  LOCKED  ][NEXT PAGE][  AK-47  ]
	echo      [  LOCKED  ][Press (N)][Press (A)]
	echo      [__________][_________][_________]
)
echo.
echo.
echo Please choose your option:
set /p optiong=
if /I %optiong% == P goto GoldenGun
if /I %optiong% == B goto Attack
if /I %optiong% == N goto Guns2
goto Guns2


:Flee
cls
if %monhp% GEQ 75 goto NoFlee
echo    %name% HP:%hp% XP:%exp% Gold:%gold%
echo               VS
echo      Monster HP:%monhp% XP:%monexp%
echo.
echo.
echo.
echo.
echo.
echo       _________  _________  _________
echo      [   Yes   ][ Are you ][    No   ]
echo      [Press (Y)][  sure?  ][Press (N)]
echo      [_________][_________][_________]
echo.
echo.
echo Please choose your option:
set /p optionf=
if /I %optionf% == N goto Battle
if /I %optionf% == Y goto Fled
goto Flee

:NoFlee
cls
echo The monster was too strong for you to flee!
echo It has to be under 75 HP
pause
goto Battle

:Sword
pause
goto Attack

:Punch
cls
set /a powerModifier = %RANDOM% * 21 / 32768 + 1
if %powerModifier% == 1 echo You Missed^^! & goto monAttack
if %powerModifier% == 2 echo That was a bad hit^^! & set /a monhp = %monhp% - 5 & goto monAttack
if %powerModifier% == 3 echo That was a bad hit^^! & set /a monhp = %monhp% - 5 & goto monAttack
if %powerModifier% == 4 echo That was a good hit^^! & set /a monhp = %monhp% - 10 & goto monAttack
if %powerModifier% == 5 echo That was a good hit^^! & set /a monhp = %monhp% - 10 & goto monAttack
if %powerModifier% == 6 echo That was a good hit^^! & set /a monhp = %monhp% - 10 & goto monAttack
if %powerModifier% == 7 echo That was a good hit^^! & set /a monhp = %monhp% - 10 & goto monAttack
if %powerModifier% == 8 echo That was a great hit^^! & set /a monhp = %monhp% - 20 & goto monAttack
if %powerModifier% == 9 echo That was a great hit^^! & set /a monhp = %monhp% - 20 & goto monAttack
if %powerModifier% == 10 echo That was a great hit^^! & set /a monhp = %monhp% - 20 & goto monAttack
if %powerModifier% == 11 echo CRITICAL HIT^^! & set /a monhp = %monhp% - 25 & goto monAttack
if %powerModifier% == 12 echo That was a great hit^^! & set /a monhp = %monhp% - 20 & goto monAttack
if %powerModifier% == 13 echo That was a great hit^^! & set /a monhp = %monhp% - 20 & goto monAttack
if %powerModifier% == 14 echo That was a great hit^^! & set /a monhp = %monhp% - 20 & goto monAttack
if %powerModifier% == 15 echo That was a good hit^^! & set /a monhp = %monhp% - 10 & goto monAttack
if %powerModifier% == 16 echo That was a good hit^^! & set /a monhp = %monhp% - 10 & goto monAttack
if %powerModifier% == 17 echo That was a good hit^^! & set /a monhp = %monhp% - 10 & goto monAttack
if %powerModifier% == 18 echo That was a good hit^^! & set /a monhp = %monhp% - 10 & goto monAttack
if %powerModifier% == 19 echo That was a bad hit^^! & set /a monhp = %monhp% - 5 & goto monAttack
if %powerModifier% == 20 echo That was a bad hit^^! & set /a monhp = %monhp% - 5 & goto monAttack
if %powerModifier% == 21 echo You Missed^^! & goto monAttack

:Pistol
if %pistolMag% LEQ 0 echo You're out of bullets^^! & goto Battle
cls
set /a pistolMag = %pistolMag% - 1
set /a powerModifier = %RANDOM% * 21 / 32768 + 1
echo You have %pistolMag% bullets remaining.
if %powerModifier% == 1 echo You Missed^^! & goto monAttack
if %powerModifier% == 2 echo That was a bad shot^^! & set /a monhp = %monhp% - 10 & goto monAttack
if %powerModifier% == 3 echo That was a bad shot^^! & set /a monhp = %monhp% - 10 & goto monAttack
if %powerModifier% == 4 echo That was a good shot^^! & set /a monhp = %monhp% - 20 & goto monAttack
if %powerModifier% == 5 echo That was a good shot^^! & set /a monhp = %monhp% - 20 & goto monAttack
if %powerModifier% == 6 echo That was a good shot^^! & set /a monhp = %monhp% - 20 & goto monAttack
if %powerModifier% == 7 echo That was a good shot^^! & set /a monhp = %monhp% - 20 & goto monAttack
if %powerModifier% == 8 echo That was a great shot^^! & set /a monhp = %monhp% - 25 & goto monAttack
if %powerModifier% == 9 echo That was a great shot^^! & set /a monhp = %monhp% - 25 & goto monAttack
if %powerModifier% == 20 echo That was a great shot^^! & set /a monhp = %monhp% - 25 & goto monAttack
if %powerModifier% == 11 echo CRITICAL SHOT^^! & set /a monhp = %monhp% - 35 & goto monAttack
if %powerModifier% == 12 echo That was a great shot^^! & set /a monhp = %monhp% - 25 & goto monAttack
if %powerModifier% == 13 echo That was a great shot^^! & set /a monhp = %monhp% - 25 & goto monAttack
if %powerModifier% == 14 echo That was a great shot^^! & set /a monhp = %monhp% - 25 & goto monAttack
if %powerModifier% == 15 echo That was a good shot^^! & set /a monhp = %monhp% - 20 & goto monAttack
if %powerModifier% == 16 echo That was a good shot^^! & set /a monhp = %monhp% - 20 & goto monAttack
if %powerModifier% == 17 echo That was a good shot^^! & set /a monhp = %monhp% - 20 & goto monAttack
if %powerModifier% == 18 echo That was a good shot^^! & set /a monhp = %monhp% - 20 & goto monAttack
if %powerModifier% == 19 echo That was a bad shot^^! & set /a monhp = %monhp% - 10 & goto monAttack
if %powerModifier% == 20 echo That was a bad shot^^! & set /a monhp = %monhp% - 10 & goto monAttack
if %powerModifier% == 21 echo You Missed^^! & goto monAttack
goto Pistol

:GoldenGun
if %GoldenGunMag% LEQ 0 echo You're out of bullets^^! & goto Battle
cls
set /a pistolMag = %GoldenGunMag% - 1
set /a powerModifier = %RANDOM% * 21 / 32768 + 1
echo You have %GoldenGunMag% bullets remaining.
if %powerModifier% == 1 echo You Missed^^! & goto monAttack
if %powerModifier% == 2 echo That was a bad shot^^! & set /a monhp = %monhp% - 15 & goto monAttack
if %powerModifier% == 3 echo That was a bad shot^^! & set /a monhp = %monhp% - 15 & goto monAttack
if %powerModifier% == 4 echo That was a good shot^^! & set /a monhp = %monhp% - 25 & goto monAttack
if %powerModifier% == 5 echo That was a good shot^^! & set /a monhp = %monhp% - 25 & goto monAttack
if %powerModifier% == 6 echo That was a good shot^^! & set /a monhp = %monhp% - 25 & goto monAttack
if %powerModifier% == 8 echo That was a good shot^^! & set /a monhp = %monhp% - 25 & goto monAttack
if %powerModifier% == 9 echo That was a good shot^^! & set /a monhp = %monhp% - 25 & goto monAttack
if %powerModifier% == 10 echo That was a great shot^^! & set /a monhp = %monhp% - 30 & goto monAttack
if %powerModifier% == 11 echo That was a great shot^^! & set /a monhp = %monhp% - 30 & goto monAttack
if %powerModifier% == 12 echo That was a great shot^^! & set /a monhp = %monhp% - 30 & goto monAttack
if %powerModifier% == 13 echo That was a great shot^^! & set /a monhp = %monhp% - 30 & goto monAttack
if %powerModifier% == 14 echo CRITICAL SHOT^^! & set /a monhp = %monhp% - 45 & goto monAttack
if %powerModifier% == 15 echo That was a great shot^^! & set /a monhp = %monhp% - 30 & goto monAttack
if %powerModifier% == 16 echo That was a great shot^^! & set /a monhp = %monhp% - 30 & goto monAttack
if %powerModifier% == 17 echo That was a great shot^^! & set /a monhp = %monhp% - 30 & goto monAttack
if %powerModifier% == 18 echo That was a great shot^^! & set /a monhp = %monhp% - 30 & goto monAttack
if %powerModifier% == 19 echo That was a good shot^^! & set /a monhp = %monhp% - 25 & goto monAttack
if %powerModifier% == 20 echo That was a good shot^^! & set /a monhp = %monhp% - 25 & goto monAttack
if %powerModifier% == 21 echo That was a good shot^^! & set /a monhp = %monhp% - 25 & goto monAttack
if %powerModifier% == 22 echo That was a good shot^^! & set /a monhp = %monhp% - 25 & goto monAttack
if %powerModifier% == 23 echo That was a good shot^^! & set /a monhp = %monhp% - 25 & goto monAttack
if %powerModifier% == 24 echo That was a bad shot^^! & set /a monhp = %monhp% - 15 & goto monAttack
if %powerModifier% == 26 echo That was a bad shot^^! & set /a monhp = %monhp% - 15 & goto monAttack
if %powerModifier% == 27 echo You Missed^^! & goto monAttack
goto Pistol

:monAttack
pause
set /a powerModifier = %RANDOM% * 21 / 32768 + 1
if %powerModifier% == 1 goto Battle
if %powerModifier% == 2 set /a hp = %hp% - 5 & goto Battle
if %powerModifier% == 3 set /a hp = %hp% - 5 & goto Battle
if %powerModifier% == 4 set /a hp = %hp% - 10 & goto Battle
if %powerModifier% == 5 set /a hp = %hp% - 10 & goto Battle
if %powerModifier% == 6 set /a hp = %hp% - 10 & goto Battle
if %powerModifier% == 7 set /a hp = %hp% - 10 & goto Battle
if %powerModifier% == 8 set /a hp = %hp% - 20 & goto Battle
if %powerModifier% == 9 set /a hp = %hp% - 20 & goto Battle
if %powerModifier% == 10 set /a hp = %hp% - 20 & goto Battle
if %powerModifier% == 11 set /a hp = %hp% - 40 & goto Battle
if %powerModifier% == 12 set /a hp = %hp% - 20 & goto Battle
if %powerModifier% == 13 set /a hp = %hp% - 20 & goto Battle
if %powerModifier% == 14 set /a hp = %hp% - 20 & goto Battle
if %powerModifier% == 15 set /a hp = %hp% - 10 & goto Battle
if %powerModifier% == 16 set /a hp = %hp% - 10 & goto Battle
if %powerModifier% == 17 set /a hp = %hp% - 10 & goto Battle
if %powerModifier% == 18 set /a hp = %hp% - 10 & goto Battle
if %powerModifier% == 19 set /a hp = %hp% - 5 & goto Battle
if %powerModifier% == 20 set /a hp = %hp% - 5 & goto Battle
if %powerModifier% == 21 goto Battle
goto monAttack

:Win
cls
set /a goldRecievedLost = %RANDOM% * 100 / 32768 + 1
set /a gold = %gold% + %goldRecievedLost%
set /a xpRecievedLost = %RANDOM% * 10 / 32768 + 1
set /a exp = %exp% + %xpRecievedLost%
echo                   You Won that Battle^^!
echo.
echo                              ^|\                            
echo                              ^|K\                         
echo                               \P\                         
echo                                \_\                         
echo                                  \  
echo.
echo     You recieved %goldRecievedLost% gold and %xpRecievedLost% xp^^!
echo.
echo.
echo                     Battle Again(Y,N)?
set /p optionw=
if /I %optionw% == Y goto Reset
if /I %optionw% == N exit
goto Win


:Dead
cls
set /a goldRecievedLost = %RANDOM% * 100 / 32768 + 1
set /a gold = %gold% + %goldRecievedLost%
set /a xpRecievedLost = %RANDOM% * 10 / 32768 + 1
set /a exp = %exp% + %xpRecievedLost%
set /a lives = %lives% - 1
echo                            You Died^^!
echo.
echo                              ^|\                            
echo                              ^|K\                         
echo                               \P\                         
echo                                \_\                         
echo                                  \  
echo.
echo     You lost %goldRecievedLost% gold and %xpRecievedLost% xp^^!
echo                  You have %lives% lives remaining^^!
echo.
echo.
echo                     Battle Again(Y,N)?
set /p optionl=
if /I %optionl% == Y goto Reset
if /I %optionl% == N exit
goto Dead

:Fled
cls
echo                           You Fled^^!
echo.
echo.
echo                              ^|\                            
echo                              ^|K\                         
echo                               \P\                         
echo                                \_\                         
echo                                  \                             
echo.    
echo.
echo                   You lost 0 gold and 0 xp^^!
echo.
echo.
echo                     Battle Again(Y,N)?
set /p optionf=
if /I %optionf% == Y goto Reset
if /I %optionf% == N exit
goto Fled

:Reset
set /a hp=100
set /a monhp=100
goto Battle

:GameOver
cls
echo                           Game Over^^!
echo.
echo.
echo                              ^|\                            
echo                              ^|K\                         
echo                               \P\                         
echo                                \_\                         
echo                                  \                             
echo.    
echo.
echo                   You have 0 lives remaining^^!
echo.
echo.
echo                     Please start a new game.
pause
exit
goto GameOver

:Typing <Message>

setlocal

set "Message=%~1"

:TypingLoop

ping 10.x.x.x -n 1 -w 500 >nul

if "%Message:~1,1%"==" " ( <nul set /p "=%Message:~0,2%" ) else ( <nul set /p "=%Message:~0,1%" )

set "Message=%Message:~1%"

if defined Message goto TypingLoop
