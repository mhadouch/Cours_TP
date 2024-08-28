set /p ext=Type d'extension (ex: jpg,pdf,bmp,etc....)? 
set /p disque=Dans quel disque ?
set /p dossier=Dans quel dossier ?
set /p file= Quel fichier result ? 

dir %disque%:\%dossier%\*.%ext% /s > %file%.txt

pause