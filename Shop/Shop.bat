@echo off
mode 1000
color 70
set gold=1000
set GoldenGunStatus=Unactive
set AKStatus=Unactive
set SteelSwordStatus=Unactive
set exp=5

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
echo                                                                      Gold: %gold%G %exp%
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
if /I %shopoption% == "goto" goto DevGoto
if /I %shopoption% == GOLD set /p gold= & goto Shop
if /I %shopoption% == GGSTATUS set /p GoldenGunStatus= & goto Shop
if /I %shopoption% == AKSTATUS set /p AKStatus= & goto Shop
if /I %shopoption% == xp set /p exp= & goto Shop
if /I %shopoption% == "exit" exit

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
echo.
echo                                                                          Level 1:
echo                                                             __________   _________   ___________
echo                                                            [GOLDEN GUN] [  AK-47  ] [STEEL SWORD]
echo                                                            [Press  (G)] [Press (A)] [ Press (T) ]
echo                                                            [   200G   ] [  400G   ] [   500G    ]
echo                                                            [__________] [_________] [___________]
echo.
echo                                                                          Level 3:
echo.
if %exp% GEQ 3 (
	echo                                                             __________   _________   ___________
	echo                                                            [GOLDEN GUN] [  AK-47  ] [STEEL SWORD]
	echo                                                            [Press  (G)] [Press (A)] [ Press (T) ]
	echo                                                            [   200G   ] [  400G   ] [   500G    ]
	echo                                                            [__________] [_________] [___________]
)
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
if /I %wshopoption% == B goto WeaponsShop

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
rem ChangeColor 14 7
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
rem ChangeColor 0 7
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
call :Typing "Here's your gun! It's gold, don't worry... ;)"
rem ChangeColor 14 7
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
rem ChangeColor 0 7
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


:Typing <Message>
setlocal
set "Message=%~1"

:TypingLoop
ping 0.0.0.0 -n 1.5 > NUL
if "%Message:~1,1%"==" " ( <nul set /p "=%Message:~0,2%" ) else ( <nul set /p "=%Message:~0,1%" )
set "Message=%Message:~1%"
if defined Message goto TypingLoop