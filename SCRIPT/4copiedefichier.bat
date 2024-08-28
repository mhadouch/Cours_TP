set /p file=Dans quel dossier ?

MKDIR C:\%file%
MKDIR C:\%file%\TEXTE
MKDIR C:\%file%\COMMANDES

xcopy C:\WINDOWS\SYSTEM32\*.txt /s  C:\%file%\TEXTE
xcopy C:\WINDOWS\SYSTEM32\*.bat /s  C:\%file%\COMMANDES