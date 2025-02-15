@echo off

:: To Add a new task to this script:
    :: (01) Add the task name to the echoList array
    :: (02) Add the path to the task to the pathList array
    :: (03) Add the command to run the task to the commandList array
    :: (04) Increment the length variable by 1

:: Display menu for task selection
setlocal enabledelayedexpansion

:: (01)Define the list of tasks
set echoList[1]=Start Dev Server of codeprojekt
set echoList[2]=Crowdfunding Smart Contract

:: (02)Define the appropriate paths for the tasks
set pathList[1]=D:\Learnings\Client Projects\codeprojekt
set pathList[2]=D:\Learnings\Blockchain\Projects\From Feb\Crowdfunding-Smart_Contract

:: (03)Define the commands to run for the tasks
set commandList[1]=npm run dev
set commandList[2]=wsl 

:: (04) Current lenght of the list
set length=2

echo Select a task to run:
for /L %%i in (1,1,%length%) do (
    echo %%i. !echoList[%%i]!
)
echo.

set /p choice="Enter number (1-%length%): "

:: Select and move to the project directory
set currentPath=!pathList[%choice%]!
cd /d "!currentPath!"

:: Set the current Command to run
set currentCommand=!commandList[%choice%]!



:: Main start of the script :::::::::::::::::::::::::::::::::::::::::::

:: Open file explorer
start "" .

:: Launch VS Code 
start "" code .

:: Wait for 5 seconds
timeout /t 5 /nobreak > nul

:: Launch the terminal and run the command
echo Launching AutoHotkey script...
start "" "C:\Program Files\AutoHotkey\v1.1.37.02\AutoHotkeyU64.exe" "C:\Users\debna\Documents\AutoHotkey\vscode-openVscodeTerminal_RunCodePassed.ahk" "!currentCommand!"



	