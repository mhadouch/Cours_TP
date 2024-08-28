@echo off

for /F "tokens=1,2,3 delims=; skip=1" %%i IN (LISTE.txt) DO echo %%i %%j %%k

pause