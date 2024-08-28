@ECHO OFF
set /a debile = 0
:retry

set /p chiffrecar= Donnez moi un nombre entre 50 et 100 : 
 
IF %chiffrecar% GTR 50 GOTO continue

	set /a debile = %debile% + 1 
	IF %debile% EQU 3 GOTO dehors
	ECHO NOMBRE TROP PETIT !!!
	GOTO retry

:continue

IF %chiffrecar% LSS 100 GOTO comptearebours

	set /a debile = %debile% + 1
	IF %debile% EQU 3 GOTO dehors
	ECHO NOMBRE TROP GRAND !!!
	GOTO retry

:comptearebours

ECHO C'est partit !!

:CDMOINSUN

IF %chiffrecar% EQU 0 GOTO lafin
	
	cls
	ECHO %chiffrecar%
	set /a chiffrecar = %chiffrecar% - 1
	timeout 1 /nobreak > nul
	GOTO CDMOINSUN

:lafin
ECHO C'EST FINI !!!

:dehors
ECHO ALLEZ DEGAGE LE DEBILE !!!! 

PAUSE
