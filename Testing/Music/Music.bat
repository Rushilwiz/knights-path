@echo off
set filename=%0
for %%A in ("%filename%") do (
    Set Folder=%%~dpA
    Set Name=%%~nxA
)
echo "%Folder%KP Music.mp3"
pause