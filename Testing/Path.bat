@echo off
Set filename=%0
For %%A in ("%filename%") do (
    Set Folder=%%~dpA
    Set Name=%%~nxA
)
echo.Folder is: %Folder%
echo.Name is: %Name%
pause
exit