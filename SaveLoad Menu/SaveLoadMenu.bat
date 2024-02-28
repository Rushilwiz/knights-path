:Save Menu

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
goto


:Load Menu

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
goto


:Slot1Save
(
echo %name%
echo %exp%
echo %monexp%
echo %gold%
echo %lives%
)>slot1.dlb
goto Battle

:Slot1Load
(
set /p name=
set /p exp=
set /p monexp=
set /p gold=
set /p lives=
)<slot1.dlb
goto Battle

:Slot2Save
(
echo %name%
echo %exp%
echo %monexp%
echo %gold%
echo %lives%
)>slot2.dlb
goto Battle

:Slot2Load
(
set /p name=
set /p exp=
set /p monexp=
set /p gold=
set /p lives=
)<slot2.dlb
goto Battle

:Slot3Save
(
echo %name%
echo %exp%
echo %monexp%
echo %gold%
echo %lives%
)>slot3.dlb
goto Battle

:Slot3Load
(
set /p name=
set /p exp=
set /p monexp=
set /p gold=
set /p lives=
)<slot3.dlb
goto Battle

:Slot4Save
(
echo %name%
echo %exp%
echo %monexp%
echo %gold%
echo %lives%
)>slot4.dlb
goto Battle

:Slot4Load
(
set /p name=
set /p exp=
set /p monexp=
set /p gold=
set /p lives=
)<slot4.dlb
goto Battle

:Slot5Save
(
echo %name%
echo %exp%
echo %monexp%
echo %gold%
echo %lives%
)>slot5dlb
goto Battle

:Slot5Load
(
set /p name=
set /p exp=
set /p monexp=
set /p gold=
set /p lives=
)<slot5.dlb
goto Battle
