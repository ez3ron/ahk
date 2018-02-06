;Systemstart Prototyp

CoordMode, Mouse, Screen
SetControlDelay, 1

Sleep, 20000
Click, 466, 1065
Sleep, 60

;Starte Erstmal Grundlegenedes
Run, C:\Windows\System32\cmd.exe /K "cd C:\Users\alzudemX\Desktop\", Hide
Run, C:\Program Files (x86)\Google\Chrome\Application\chrome.exe, 
Run, C:\Windows\System32\Taskmgr.exe, Hide
Sleep, 60
Run, C:\Users\alzudemX\Desktop\ahk\smartscript.exe
