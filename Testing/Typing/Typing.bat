@echo off

call :Typing "This is a "
echo GOLDEN GUN
call :Typing ". Great! Right?"

pause
 

:: Use a known invalid reserved IP address because it should always timeout.

:: http://en.wikipedia.org/wiki/Reserved_IP_addresses

:: 127.0.0.1 will never timeout and will always return each tick in 1 second.

:Typing <Message>

setlocal

set "Message=%~1"

:TypingLoop

ping 192.0.2.0 -n 1 -w 500 >nul

if "%Message:~1,1%"==" " ( <nul set /p "=%Message:~0,2%" ) else ( <nul set /p "=%Message:~0,1%" )

set "Message=%Message:~1%"

if defined Message goto TypingLoop