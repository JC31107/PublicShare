@echo off
for /f "tokens=2-8 delims=.:/ " %%a in ("%date% %time%") do set DateNtime=%%c-%%a-%%b_%%d-%%e-%%f
java -jar KSJavaAPI.jar org.keysupport.tests.CHUIDTest | tee LogFile-%DateNtime%.txt
pause