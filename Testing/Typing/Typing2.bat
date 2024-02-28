@echo off
:: %len_% holds the value of the length of the string input

setlocal enabledelayedexpansion
call :Write "Testing this is only a string to see how fast my script really works to count the length and write the full string value"
pause && goto :eof

:Write
set string=%1
call :GetLength %string%
set string=%string:"=%
set /a length=%len_%
for /l %%A in (1,1,%length%) do (
cls
echo !string:~0,%%A!
ping localhost -n 1 -w 500 -l 5000 > nul
)

goto :eof

:GetLength
set str=%1
set /a len=1
:loop
set /a len_=%len% - 1
if "!str:~0,%len%!"=="!str:~0,%len_%!" goto done
set /a len+=1
goto loop

:done
set /a len_-=2
goto :eof