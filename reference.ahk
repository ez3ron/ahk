;Simple ahk to sort reference files in File Comander

CoordMode, Mouse, Screen

;Basic Controls
F1::startup()
F2::closevlc()
F3::startlisten()
F4::endit()
^F2::
Send, {F2}
return

;Keys zum Verschieben in Orte
^Numpad1::movinter(555, 192)
^Numpad2::movinter(555, 209)
^Numpad3::movinter(555, 226)
^Numpad4::movinter(555, 241)
^Numpad5::movinter(555, 261)
^Numpad6::movinter(555, 276)
^Numpad7::movinter(555, 294)
^Numpad8::movinter(555, 310)
^Numpad9::movinter(555, 329)
;Verbesserungen Der Koordinaten für Linke Bildhälfte

^Numpad0::deletesomething()

;Optimiert für Linke Bildschirmhälfte
;startet oder wechselt zum file comader
startup()
{
    MouseGetPos, X1, Y1
    IfWinExist, [Reference]
    {
        WinActivate,
        WinMaximize,
    }
    Else{
        Run,"C:\Program Files (x86)\FreeCommander XE\FreeCommander.exe", max
        Sleep, 60
        ;WinMaximize, [Reference]
    }
    MouseClickDrag, L, 990, 13, 0, 321, 4
    MouseMove, X1, Y1
    Return
}

;Funktion Klick auf Position und Bewege zu pos a/b
movinter(a, b)
{
    closevlc()
    Sleep, 60
    MouseGetPos, X1, Y1
    MouseClickDrag, L, X1, Y1, a, b , 15
    Sleep, 60
    MouseMove, X1, Y1
}

;Klick auf Maus Pos, Del, Links, Enter (->papirkorb)
deletesomething()
{
    MouseGetPos, X1, Y1
    Click, X1, Y1
    Send, {Del}
    Sleep, 90
    Send, {Left}
    Sleep, 60
    Send, {Enter}
}

;Schließe vlc und wechsle zu explorer commander
closevlc()
{
    MouseGetPos, catx1, caty1
    IfWinExist, ahk_exe vlc.exe
    {
        WinClose
        WinActivate, ahk_exe FreeCommander.exe
    }
    Sleep, 120
    MouseMove, catx1, caty1, 10
}

;Dopelklick auf Derzeitige pos um vlc zu starten
startlisten()
{
    MouseGetPos, catx1, caty1
    Click, 2, catx1, caty1
    Sleep, 60   
    IfWinExist, ahk_exe vlc.exe
    {
        WinActivate, ahk_exe vlc.exe
    }
}

;Schließe den ganzen scheiß
endit()
{
    IfWinExist, ahk_exe vlc.exe
        WinClose
    IfWinExist, ahk_exe FreeCommander.exe
        WinClose
}