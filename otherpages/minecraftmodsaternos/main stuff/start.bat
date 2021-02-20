@echo %off
echo Setting up

xcopy /s /i "%appdata%\.minecraft\launcher_profiles.json" "%appdata%\setupbackup\profilebackup"
echo Copied profiles to %appdata%\setupbackup\profilebackup

DEL /F /A "%appdata%\.minecraft\launcher_profiles.json"
echo Deleted profiles

xcopy /s /i "setups/1.12.2" "%appdata%\.minecraft\versions\"

color b
timeout /t 1 /nobreak
color a

echo Done! 
exit