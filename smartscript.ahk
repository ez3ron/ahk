;Importierter Teil shoutouts an terman van herman
#NoEnv  
; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  
; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  
; Ensures a consistent starting directory.
Menu, Tray, Icon, shell32.dll, 16 
;this changes the icon into a little laptop thingy.
;just useful for making it distinct from the others.
#singleinstance force 
;so you can only run 1 script at a time and it doens't bother you about it.
#IfWinActive 
;"Voreinstellungen"

;ExplorerSteuerung, Öffnet Explorer, Switched Explorer, Schließt ihn
F1::
IfWinNotExist, ahk_class CabinetWClass
	Run, explorer.exe
GroupAdd, alxexplorrers, ahk_class CabinetWClass 
;You have to make a new group for each application
;don't use the same one for all of them!
if WinActive("ahk_exe explorer.exe")
	GroupActivate, alxexplorrers, r
else
	WinActivate ahk_class CabinetWClass 
;you have to use WinActivatebottom if you didn't create a window group.
Return
;strg + f1 schließt explorer wieder
^F1::
IfWinExist, ahk_class CabinetWClass
	WinClose, ahk_class CabinetWClass
Return
;F1 WORKS FINE!

;F2 ist rename daher ausgelassen

;Chromesteuerung, opens shrome, switshes tabs, closes chrome
F3::
IfWinNotExist, ahk_exe chrome.exe
	Run, chrome.exe
if WinActive("ahk_exe chrome.exe")
	Send ^{tab}
else
	WinActivate,  ahk_exe chrome.exe
Return
;Close Chrome
^F3::
IfWinExist, ahk_exe chrome.exe
	WinClose, ahk_exe chrome.exe
Return
;F3 Working!

;Shell Control, switches shells, closes shell
F4::
IfWinNotExist, ahk_class ConsoleWindowClass
	Run, C:\Windows\System32\cmd.exe /K "cd C:\Users\alzudemX\Desktop\"
GroupAdd, alxshells, ahk_class ConsoleWindowClass
if WinActive("ahk_class ConsoleWindowClass")
	GroupActivate, alxshells
else
	WinActivate ahk_class ConsoleWindowClass 
Return
^F4::
IfWinExist, ahk_exe cmd.exe
	WinClose, ahk_exe cmd.exe
Return
;F4 Works Fine!

;Super Googlefunktion!!!
#g::
clipboard = 
SendInput {CTRLDOWN}c{CTRLUP}
ClipWait
Run http://www.google.com/search?hl=en&q=%clipboard%,, UseErrorLevel
Return