@echo off
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
