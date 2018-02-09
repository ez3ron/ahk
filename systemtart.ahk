;Systemstart Prototyp

CoordMode, Mouse, Screen
SetControlDelay, 1

Sleep, 20000
Click, 466, 1065
Sleep, 60
IfWinActive, ahk_exe ApplicationFrameHost.exe
    WinHide,
 
;Starte Erstmal Grundlegenedes
Run, C:\Windows\System32\cmd.exe /K "cd C:\Users\alzudemX\Desktop\", Hide
Run, C:\Program Files (x86)\Google\Chrome\Application\chrome.exe,
Run, C:\Windows\System32\Taskmgr.exe, Hide
    WinHide, ahk_exe Taskmgr.exe
Sleep, 60
Run, C:\Users\alzudemX\Desktop\ahk\smartscript.exe
Sleep, 20000
WinMaximize, ahk_exe chrome.exe
Sleep, 60
Click, 137, 75
Sleep, 60
Click, M, 136, 77
Sleep, 60
Click, 1756, 11
Click, 1625, 284
