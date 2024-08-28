
for /F "tokens=1,2,3,4 delims=; skip=1" %%A in (AD.csv) DO (

	dsadd OU "ou=%%C, dc=DIGITECH, dc=LAN"

	dsadd group "cn=%%D, ou=%%C, dc=DIGITECH, dc=LAN"

	dsadd user "cn=%%A %%B, ou=%%C, dc=DIGITECH, dc=LAN" -samid %%A.%%B -upn %%A.%%B@DIGITECH.LAN -pwd RL@789_srv -mustchpwd no -pwdneverexpires yes -canchpwd no

	dsmod group "cn=%%D, ou=%%C, dc=DIGITECH, dc=LAN" -addmbr "cn=%%A %%B, ou=%%C, dc=DIGITECH, dc=LAN"

	mkdir C:\PERSO\%%A_%%B

	net share PERSO=C:\PERSO /GRANT:utilisateurs,CHANGE

	dsmod user cn=%%A %%B, ou=%%C, dc=DIGITECH, dc=LAN" -hmdir \\%computername%\PERSO\%%A_%%B -hmdrv "J:"

)

for /F "tokens=1,2,3,4 delims=; skip=1" %%A in (AD.csv) DO icacls C:\PERSO\%%A_%%B /grant %%A %%B:(F) /inheritance:r	

Pause