#NoEnv
SetTitleMatchMode, 2  ; Allow partial matching of window titles
; Activate the VS Code window (make sure its title contains "Visual Studio Code")
WinActivate, Visual Studio Code
Sleep, 500
; Simulate Ctrl+J to toggle the panel (which usually shows the terminal)
Send, ^~
Sleep, 1000
; Type the command and press Enter
Send, %1%{Enter}
