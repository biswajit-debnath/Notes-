
# Automating VSCode Processes

This script automates the process of opening a project in VSCode, launching a terminal, and running a specified command.

## Instructions

1. **Add a new task to the script:**
    - Add the task name to the `echoList` array.
    - Add the path to the task to the `pathList` array.
    - Add the command to run the task to the `commandList` array.
    - Increment the `length` variable by 1.

2. **Run the script:**
    - Execute the batch file `Automation_VSCode_Open_Run_Command.bat`.
    - Select the task number from the displayed menu.
    - The script will navigate to the project directory, open VSCode, and run the specified command in the terminal.

## Example

To add a new task:
```bat
:: Define the list of tasks
set echoList[3]=New Task Name

:: Define the appropriate paths for the tasks
set pathList[3]=D:\Path\To\New\Task

:: Define the commands to run for the tasks
set commandList[3]=new-command

:: Increment the length of the list
set length=3
```
