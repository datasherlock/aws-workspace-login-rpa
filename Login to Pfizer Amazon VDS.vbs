Dim fso
Set fso = CreateObject("Scripting.FileSystemObject")
Dim fullpath
fullpath = fso.GetAbsolutePathName(".")
Set fso = Nothing


Set oShell = CreateObject("WScript.Shell")
filename = fullpath & "\Code\Main.xaml"

oShell.Run(filename)
WScript.Sleep 3000
oShell.AppActivate "Main"
WScript.Sleep 8000
oShell.SendKeys "%{F4}"
WScript.Sleep 3000
oShell.SendKeys "{F5}"

FileName = "Code\complete"
Set FSO = CreateObject("Scripting.FileSystemObject")
Do
   If FSO.FileExists(FileName) Then 
       FSO.DeleteFile FileName
	   oShell.SendKeys "%{F4}"
	   Exit Do
   End If
   WScript.Sleep 1000
Loop