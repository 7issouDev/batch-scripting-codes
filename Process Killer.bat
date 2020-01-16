@ECHO OFF
TITLE Process Killer
COLOR 0A


:menu
    SET var=0
    ECHO Menu and choices
    ECHO 1 - Delete Unwanted Processes
    ECHO 2 - Uknown Task Part
    ECHO 0 - Exit Program
    SET /p var= "select command =>"


IF %var% == 1 (
    GOTO :task1
)

IF %var% == 2 (
    GOTO :mainTask
)

IF %var% == 0 (
    EXIT
)


:task1
    CLS
    TASKKILL /f /im YourPhone.exe >nul 2>&1
    TASKKILL /f /im vmware-hostd.exe >nul 2>&1
    TASKKILL /f /im vmware-authd.exe >nul 2>&1
    TASKKILL /f /im mshta.exe >nul 2>&1
    TASKKILL /f /im mshta.exe >nul 2>&1
    TASKKILL /f /im lockApp.exe >nul 2>&1
    TASKKILL /f /im jswtrayutil.exe >nul 2>&1
    TASKKILL /f /im IDMan.exe >nul 2>&1
    TASKKILL /f /im HPMSGSVC.exe >nul 2>&1
    TASKKILL /f /im hkcmd.exe >nul 2>&1
    TASKKILL /f /im GameBar.exe >nul 2>&1
    TASKKILL /f /im GameBarFT.exe >nul 2>&1
    TASKKILL /f /im fdm.exe >nul 2>&1
    TASKKILL /f /im EEventManager.exe >nul 2>&1
    TASKKILL /f /im CoreSync.exe >nul 2>&1
    TASKKILL /f /im "Creative Cloud.exe" >nul 2>&1
    TASKKILL /f /im CCXProcess.exe >nul 2>&1
    TASKKILL /f /im CCLibrary.exe >nul 2>&1
    TASKKILL /f /im "Adobe CEF Helper.exe" >nul 2>&1
    TASKKILL /f /im "Adobe Desktop Service.exe" >nul 2>&1
    TASKKILL /f /im AdobeIPCBroker.exe >nul 2>&1
    TASKKILL /f /im AdobeNotificationClient.exe >nul 2>&1
    TASKKILL /f /im Nexus.exe >nul 2>&1
    TASKKILL /f /im OneDrive.exe >nul 2>&1
    TASKKILL /f /im IEMonitor.exe >nul 2>&1
    TASKKILL /f /im igfxtray.exe >nul 2>&1
    TASKKILL /f /im igfxpers.exe >nul 2>&1
    TASKKILL /f /im OfficeClickToRun.exe >nul 2>&1
    TASKKILL /f /im vmware-usbarbitrator64.exe >nul 2>&1
    TASKKILL /f /im smartscreen.exe >nul 2>&1
    TASKKILL /f /im spoolsv.exe >nul 2>&1
    TASKKILL /f /im StartMenuExperienceHost.exe >nul 2>&1
    TASKKILL /f /im AdobeNotificationClient.exe >nul 2>&1
    TASKKILL /f /im AdobeNotificationClient.exe >nul 2>&1
    ECHO -------------------------------------
    ECHO FINISHED KILLING TASKS
    ECHO PRESS ENTER KEY TO RETURN BACK
    PAUSE > nul
    CLS
GOTO :menu


:mainTask
    CLS
    ECHO ======================================================
    CD data
    IF EXIST %cd% (
        ECHO The Folder Still exist.
        ECHO %cd%
        FOR %%G IN (*.txt) DO MOVE %%G Notes\
        FOR %%G IN (*.mp4) DO (
        	MOVE %%G Videos\
        )
        FOR %%G IN (*.png *.jpg) DO MOVE %%G Pictures\
        ECHO Everything is done.
        ECHO ======================================================
        PAUSE > nul
    )
    CLS
GOTO :menu