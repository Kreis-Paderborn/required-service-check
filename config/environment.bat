
REM Zentrale Definition der Endungen von Log-Files
@for /F "tokens=1,2" %%d in ('date /T') do set xdate=%%d
@for /F "tokens=1,2" %%e in ('time /T') do set xtime=%%e
SET ENV_LOGDATE=%xDATE:~6,4%-%xDATE:~3,2%-%xDATE:~0,2%
SET ENV_LOGDATETIME=%xDATE:~6,4%-%xDATE:~3,2%-%xDATE:~0,2%_%xtime:~0,2%-%xtime:~3,2%

REM Vorbelegung von Variablen mit dummy-Werten
SET AGS_SERVER_TOKEN=[PATH-TO-WEBAPP-BUILDER-SERVER-APPS-WIDGETS-FOLDER]

REM Überladen von Variablen durch spezifischen Festlegungen
IF EXIST "%~dp0environment_custom.bat" CALL "%~dp0environment_custom.bat"