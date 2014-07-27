@ECHO OFF
REM ########################################################################################################
REM USER CONFIGURATION REQUIRED FOR AUTOMATIC IMPORT OF DATA - PLEASE UPDATE THIS DATA FOR YOUR INSTALLATION
REM ########################################################################################################
SET Mangos="C:\CMangos"
SET SD2="C:\CMangos\src\bindings\ScriptDev2"
SET ACID="C:\CMangos\ACID\acid_tbc"
SET User="mangos"
SET Password="mangos"
SET MangosDB="mangos"
SET CharactersDB="characters"
SET RealmdDB="realmd"
SET ScriptDev2DB="scriptdev2"
REM ##################################################################################################
REM DO NOT EDIT ANYTHING BELOW THIS LINE - ALL CONFIGURATION REQUIRED LOCATED IN INSTALL_SCRIPT_Config
REM ##################################################################################################
SET CurrentVersion="1.4.3"
SET StableVersion="1.4.2"
CLS
ECHO =====================================================================
ECHO TBC-DB INSTALLATION HELPER SCRIPT - SIMPLIFIED MANAGEMENT FOR USERS
ECHO (MYSQL INSTALL MUST SUPPORT BIN PATH FOR COMMAND PROMPT FUNCTIONS)
ECHO =====================================================================
ECHO.
:MENU
ECHO ...........................................................................
ECHO Choose Preferred Installation Option - (If Updating Option #1 Is Suggested)
ECHO ...........................................................................
ECHO.
ECHO 1 - TBC-DB Full Database Install with Newest Data and Latest SD2 and ACID
ECHO 2 - TBC-DB Full Database From Older Stable Release and Latest SD2 and ACID
ECHO 3 - Database Reset (%MangosDB%/%CharactersDB%/%ScriptDev2DB%) - DB WIPE
ECHO 4 - BRAND NEW INSTALLATION - Create New Databases and Newest Data Import
ECHO 5 - INSTALLATION REMOVAL - Remove and Delete All Default Databases
ECHO 6 - EXIT (No Changes)
ECHO.
ECHO ----------------------------------------------------------------------------
ECHO (MAKE SURE YOUR CMaNGOS-TBC / SD2-TBC / ACID-TBC REPOS ARE UP TO DATE FIRST)
ECHO ----------------------------------------------------------------------------
SET /P M=Type 1, 2, 3, 4, 5 or 6 then press ENTER:
IF %M%==1 GOTO OPTION1
IF %M%==2 GOTO OPTION2
IF %M%==3 GOTO OPTION3
IF %M%==4 GOTO OPTION4
IF %M%==5 GOTO OPTION5
IF %M%==6 GOTO EOF

:OPTION1
CLS
ECHO =====================================================================
ECHO TBC-DB Full Database Install with Newest Data and Latest SD2 and ACID
ECHO =====================================================================
ECHO.
ECHO .......................................
ECHO Please Confirm Your Installation Option 
ECHO .......................................
ECHO.
ECHO 1 - Yes, I Am Sure! Lets Get The Show On The Road!
ECHO 2 - Pressed Wrong Button, Return To Main Menu
ECHO.
SET /P M=Type 1 or 2 then press ENTER:
IF %M%==1 GOTO LATEST
IF %M%==2 GOTO MENU


:OPTION2
CLS
ECHO ======================================================================
ECHO TBC-DB Full Database From Older Stable Release and Latest SD2 and ACID
ECHO ======================================================================
ECHO.
ECHO .......................................
ECHO Please Confirm Your Installation Option 
ECHO .......................................
ECHO.
ECHO 1 - Yes, I Am Sure! Lets Get The Show On The Road!
ECHO 2 - Pressed Wrong Button, Return To Main Menu
ECHO.
SET /P M=Type 1 or 2 then press ENTER:
IF %M%==1 GOTO STABLE
IF %M%==2 GOTO MENU


:OPTION3
CLS
ECHO ===========================================================================
ECHO Database Reset (%MangosDB%/%CharactersDB%/%ScriptDev2DB%) - NO GAME CONTENT
ECHO ===========================================================================
ECHO.
ECHO .......................................
ECHO Please Confirm Your Installation Option 
ECHO .......................................
ECHO.
ECHO 1 - Yes, I Am Sure! Lets Get The Show On The Road!
ECHO 2 - Pressed Wrong Button, Return To Main Menu
ECHO.
SET /P M=Type 1 or 2 then press ENTER:
IF %M%==1 GOTO RESET
IF %M%==2 GOTO MENU


:OPTION4
CLS
ECHO ====================================================================
ECHO BRAND NEW INSTALLATION - Create New Databases and Newest Data Import
ECHO ====================================================================
ECHO.
ECHO .......................................
ECHO Please Confirm Your Installation Option 
ECHO .......................................
ECHO.
ECHO 1 - Yes, I Am Sure! Lets Get The Show On The Road!
ECHO 2 - Pressed Wrong Button, Return To Main Menu
ECHO.
SET /P M=Type 1 or 2 then press ENTER:
IF %M%==1 GOTO NEWSETUP
IF %M%==2 GOTO MENU


:OPTION5
CLS
ECHO ==============================================================
ECHO INSTALLATION REMOVAL - Remove and Delete All Default Databases
ECHO ==============================================================
ECHO.
ECHO .......................................
ECHO Please Confirm Your Installation Option 
ECHO .......................................
ECHO.
ECHO 1 - Yes, I Am Sure! Lets Get The Show On The Road!
ECHO 2 - Pressed Wrong Button, Return To Main Menu
ECHO.
SET /P M=Type 1 or 2 then press ENTER:
IF %M%==1 GOTO DELETE
IF %M%==2 GOTO MENU


:LATEST
ECHO.
ECHO --------------------
ECHO REMOVE OLD SQL FILES
ECHO --------------------
RD /S /Q Temp_Created_Files
MD Temp_Created_Files
ECHO.
ECHO ---------------------------------------------------------------
ECHO BUILD COMPLETE NEW FULL DB FROM NEWEST TBC-DB / SD2 / ACID DATA
ECHO ---------------------------------------------------------------
copy /a Current_Release\Full_DB\*.sql /b Temp_Created_Files\000_TBCDB_Full.sql
copy /a Current_Release\Updates\1.4.1_corepatch_mangos_*.sql /b Temp_Created_Files\001_TBCDB_Updates.sql
copy /a Current_Release\Updates\1.4.1_updatepack.sql /b Temp_Created_Files\002_TBCDB_Updates.sql
copy /a Current_Release\Updates\1.4.2_corepatch_mangos_*.sql /b Temp_Created_Files\003_TBCDB_Updates.sql
copy /a Current_Release\Updates\1.4.2_updatepack.sql /b Temp_Created_Files\004_TBCDB_Updates.sql
copy /a Updates\*.sql /b Temp_Created_Files\010_TBCDB_NewData.sql
copy /a %SD2%\sql\mangos_scriptname_clear.sql /b Temp_Created_Files\011_SD2_Clear.sql
copy /a %SD2%\sql\mangos_scriptname_full.sql /b Temp_Created_Files\012_SD2_Full.sql
copy /a %ACID%\acid_tbc.sql /b Temp_Created_Files\013_ACID_TBC.sql
copy /a Temp_Created_Files\*.sql /b %CurrentVersion%_FULL.sql
RD /S /Q Temp_Created_Files
ECHO.
ECHO --------------------------------------------------------------
ECHO PLEASE BE PATIENT WHILE NEW DATA IS IMPORTING TO THE DATABASES
ECHO --------------------------------------------------------------
mysql.exe --user=%User% --password=%Password% %MangosDB% < %CurrentVersion%_FULL.sql
mysql.exe --user=%User% --password=%Password% %ScriptDev2DB% < %SD2%\sql\scriptdev2_script_full.sql
ECHO.
ECHO --------------------
ECHO REMOVE OLD SQL FILES
ECHO --------------------
del /s %CurrentVersion%_FULL.sql
ECHO.
ECHO -------------------------------------------------------------------
ECHO DATABASE UPDATES ARE COMPLETE - PRESS ANY KEY TO RETURN TO THE MENU
ECHO -------------------------------------------------------------------
ECHO.
PAUSE
CLS
GOTO MENU


:STABLE
ECHO.
ECHO --------------------
ECHO REMOVE OLD SQL FILES
ECHO --------------------
RD /S /Q Temp_Created_Files
MD Temp_Created_Files
ECHO.
ECHO ---------------------------------------------------------------------------------
ECHO BUILD FULL DB FROM MOST RECENT STABLE RELEASE OF TBC-DB AND CURRENT SD2/ACID DATA
ECHO ---------------------------------------------------------------------------------
copy /a Current_Release\Full_DB\*.sql /b Temp_Created_Files\000_TBCDB_Full.sql
copy /a Current_Release\Updates\1.4.1_corepatch_mangos_*.sql /b Temp_Created_Files\001_TBCDB_Updates.sql
copy /a Current_Release\Updates\1.4.1_updatepack_*.sql /b Temp_Created_Files\002_TBCDB_Updates.sql
copy /a Current_Release\Updates\1.4.2_corepatch_mangos_*.sql /b Temp_Created_Files\003_TBCDB_Updates.sql
copy /a Current_Release\Updates\1.4.2_updatepack.sql /b Temp_Created_Files\004_TBCDB_Updates.sql
copy /a %SD2%\sql\mangos_scriptname_clear.sql /b Temp_Created_Files\011_SD2_Clear.sql
copy /a %SD2%\sql\mangos_scriptname_full.sql /b Temp_Created_Files\012_SD2_Full.sql
copy /a %ACID%\acid_tbc.sql /b Temp_Created_Files\013_ACID_TBC.sql
copy /a Temp_Created_Files\*.sql /b %StableVersion%_FULL_STABLE.sql
RD /S /Q Temp_Created_Files
ECHO.
ECHO --------------------------------------------------------------
ECHO PLEASE BE PATIENT WHILE NEW DATA IS IMPORTING TO THE DATABASES
ECHO --------------------------------------------------------------
mysql.exe --user=%User% --password=%Password% %MangosDB% < %StableVersion%_FULL_STABLE.sql
mysql.exe --user=%User% --password=%Password% %ScriptDev2DB% < %SD2%\sql\scriptdev2_script_full.sql
ECHO.
ECHO --------------------
ECHO REMOVE OLD SQL FILES
ECHO --------------------
del /s %StableVersion%_FULL_STABLE.sql
ECHO.
ECHO -------------------------------------------------------------------
ECHO DATABASE UPDATES ARE COMPLETE - PRESS ANY KEY TO RETURN TO THE MENU
ECHO -------------------------------------------------------------------
ECHO.
PAUSE
CLS
GOTO MENU


:RESET
ECHO.
ECHO --------------------
ECHO REMOVE OLD SQL FILES
ECHO --------------------
RD /S /Q Temp_Created_Files
MD Temp_Created_Files
ECHO.
ECHO -------------------------------------------------------------------
ECHO DELETE GAME DATABASES AND THEN RE-CREATE THEM TO IMPORT PROPER DATA
ECHO -------------------------------------------------------------------
mysqladmin.exe --user=%User% --password=%Password% -f DROP %MangosDB%
mysqladmin.exe --user=%User% --password=%Password% -f DROP %CharactersDB%
mysqladmin.exe --user=%User% --password=%Password% -f DROP %ScriptDev2DB%
ECHO.
ECHO --------------------
ECHO CREATE NEW DATABASES
ECHO --------------------
mysqladmin.exe --user=%User% --password=%Password% CREATE %MangosDB%
mysqladmin.exe --user=%User% --password=%Password% CREATE %CharactersDB%
mysqladmin.exe --user=%User% --password=%Password% CREATE %ScriptDev2DB%
ECHO.
ECHO -----------------------------------------------------
ECHO IMPORT BASE DATA INTO DATABASES - NO CONTENT INCLUDED
ECHO -----------------------------------------------------
mysql.exe --user=%User% --password=%Password% %MangosDB% < %Mangos%\sql\mangos.sql
mysql.exe --user=%User% --password=%Password% %CharactersDB% < %Mangos%\sql\characters.sql
mysql.exe --user=%User% --password=%Password% %ScriptDev2DB% < %SD2%\sql\scriptdev2_create_structure_mysql.sql
ECHO.
ECHO --------------------
ECHO REMOVE OLD SQL FILES
ECHO --------------------
RD /S /Q Temp_Created_Files
ECHO.
ECHO ------------------------------------------------------------------------
ECHO DATABASES HAVE BEEN RESTORED TO ORIGINAL EMPTY STATE - READY FOR CONTENT
ECHO (PRESS ANY KEY TO RETURN TO THE MAIN MENU)
ECHO ------------------------------------------------------------------------
ECHO.
PAUSE
CLS
GOTO MENU


:NEWSETUP
ECHO.
ECHO --------------------
ECHO REMOVE OLD SQL FILES
ECHO --------------------
RD /S /Q Temp_Created_Files
MD Temp_Created_Files
ECHO.
ECHO -----------------------------------------
ECHO DELETE EXISTING GAME DATA FOR FRESH SETUP
ECHO -----------------------------------------
mysql.exe --user=%User% --password=%Password% < Tools\Install_Script_Helpers\TBC-DB_Drop_Mysql.sql
ECHO.
ECHO -------------------------------------------------
ECHO CREATE MYSQL USER AND NEW REQUIRED GAME DATABASES
ECHO -------------------------------------------------
mysql.exe --user=%User% --password=%Password% < %Mangos%\sql\create_mysql.sql
mysql.exe --user=%User% --password=%Password% < %SD2%\sql\scriptdev2_create_database.sql
ECHO.
ECHO -----------------------------
ECHO LOAD DATABASE TABLE STRUCTURE 
ECHO -----------------------------
mysql.exe --user=%User% --password=%Password% %MangosDB% < %Mangos%\sql\mangos.sql
mysql.exe --user=%User% --password=%Password% %CharactersDB% < %Mangos%\sql\characters.sql
mysql.exe --user=%User% --password=%Password% %RealmdDB% < %Mangos%\sql\realmd.sql
mysql.exe --user=%User% --password=%Password% %ScriptDev2DB% < %SD2%\sql\scriptdev2_create_structure_mysql.sql
ECHO.
ECHO ---------------------------------------------------------------
ECHO BUILD COMPLETE NEW FULL DB FROM NEWEST TBC-DB / SD2 / ACID DATA
ECHO ---------------------------------------------------------------
copy /a Current_Release\Full_DB\*.sql /b Temp_Created_Files\000_TBCDB_Full.sql
copy /a Current_Release\Updates\1.4.1_corepatch_mangos_*.sql /b Temp_Created_Files\001_TBCDB_Updates.sql
copy /a Current_Release\Updates\1.4.1_updatepack.sql /b Temp_Created_Files\002_TBCDB_Updates.sql
copy /a Current_Release\Updates\1.4.2_corepatch_mangos_*.sql /b Temp_Created_Files\003_TBCDB_Updates.sql
copy /a Current_Release\Updates\1.4.2_updatepack.sql /b Temp_Created_Files\004_TBCDB_Updates.sql
copy /a Updates\*.sql /b Temp_Created_Files\010_TBCDB_NewData.sql
copy /a %SD2%\sql\mangos_scriptname_clear.sql /b Temp_Created_Files\011_SD2_Clear.sql
copy /a %SD2%\sql\mangos_scriptname_full.sql /b Temp_Created_Files\012_SD2_Full.sql
copy /a %ACID%\acid_tbc.sql /b Temp_Created_Files\013_ACID_TBC.sql
copy /a Temp_Created_Files\*.sql /b %CurrentVersion%_FULL.sql
RD /S /Q Temp_Created_Files
ECHO.
ECHO --------------------------------------------------------------
ECHO PLEASE BE PATIENT WHILE NEW DATA IS IMPORTING TO THE DATABASES
ECHO --------------------------------------------------------------
mysql.exe --user=%User% --password=%Password% %MangosDB% < %CurrentVersion%_FULL.sql
mysql.exe --user=%User% --password=%Password% %ScriptDev2DB% < %SD2%\sql\scriptdev2_script_full.sql
ECHO.
ECHO --------------------
ECHO REMOVE OLD SQL FILES
ECHO --------------------
del /s %CurrentVersion%_FULL.sql
RD /S /Q Temp_Created_Files
ECHO.
ECHO -------------------------------------------------------------------
ECHO CONGRATULATIONS - BRAND NEW INSTALLATION IS NOW COMPLETE USING 
ECHO THE DEFAULT DATABASE NAMES AND DATABASE USERNAMES. MAKE SURE YOU
ECHO COMPILE CMANGOS AND SCRIPTDEV2 AND CONFIGURE YOUR REALMD DATABASE
ECHO AND SETUP YOUR SERVER CONFIG FILES AS PER NORMAL INSTALL GUIDES
ECHO -------------------------------------------------------------------
PAUSE
CLS
GOTO MENU


:DELETE
ECHO.
ECHO --------------------
ECHO REMOVE OLD SQL FILES
ECHO --------------------
RD /S /Q Temp_Created_Files
MD Temp_Created_Files
ECHO.
ECHO -----------------------------------------------------------
ECHO DELETE EXISTING CMANGOS / SD2 GAME DATABASES AND MYSQL USER
ECHO -----------------------------------------------------------
mysql.exe --user=%User% --password=%Password% < Tools\Install_Script_Helpers\TBC-DB_Drop_Mysql.sql
ECHO.
ECHO -------------------------------------------------------------
ECHO ALL DEFAULT DATABASES HAVE BEEN DELETED AND USERS CLEANED OUT 
ECHO -------------------------------------------------------------
PAUSE
CLS
GOTO MENU


:EOF
ECHO.
ECHO --------------------------------
ECHO REMOVE OLD SQL FILES AND FOLDERS
ECHO --------------------------------
RD /S /Q Temp_Created_Files
CLS
ECHO.
ECHO -------------------------------------------------------
ECHO IF YOU HAVE UPDATED YOUR TBC-DB DATABASE MAKE SURE THAT
ECHO YOU REMEMBER TO COMPILE YOUR UPDATED CMANGOS AND SD2
ECHO CODE TO COMPLETE THE UPGRADE, FAILURE TO DO SO WILL
ECHO CAUSE YOU MORE HEADACHES THEN IT IS WORTH AND FAILURE!
ECHO YOU MUST ALSO MANUALLY IMPORT ANY REALMD AND CHARACTERS
ECHO DB UPDATES (ONLY YOUR MANGOS/WORLD DB WAS UPDATED!!!
ECHO.
ECHO -------------------------------------------------------
ECHO THANK YOU FOR FLYING WITH US AND HOPE TO SEE YOU AGAIN
ECHO -------------------------------------------------------
ECHO.
PAUSE
ECHO.






