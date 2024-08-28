mkdir D:\PERSONNEL

:retry
set /p choix=Voulez vous creer ou supprimer le partage ? (c ou s) 

if %choix% EQU c GOTO creation
if %choix% EQU s GOTO suppression 
GOTO retry


:creation
if %choix% EQU c ECHO Vous avez choisi creer
	net share D_PERSO=D:\PERSONNEL /grant:Users,CHANGE
	icacls D:\PERSONNEL /grant Administrator:(F) Users:(M) /inheritance:r
	icacls D:\PERSONNEL
	GOTO fin

:suppression
if %choix% EQU s ECHO Vous avez choisi supprimer

	net share D_PERSO /delete
	icacls D:\PERSONNEL /reset 
	icacls D:\PERSONNEL
	GOTO fin

:fin


pause