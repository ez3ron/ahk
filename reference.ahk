;Simple ahk to sort reference files in File Comander

CoordMode, Mouse, Screen

;Basic Controls
F1::startup()
F2::closevlc()
F3::startlisten()
F4::endit()

;Keys zum Verschieben in Orte
^Numpad1::movinter(555, 184)
^Numpad2::movinter(555, 201)
^Numpad3::movinter(555, 219)
^Numpad4::movinter(555, 234)
^Numpad5::movinter(555, 249)
^Numpad6::movinter(555, 271)
^Numpad7::movinter(555, 288)
^Numpad8::movinter(555, 300)
^Numpad9::movinter(555, 318)

^Numpad0::deletesomething()

;Optimiert für Linke Bildschirmhälfte
;startet oder wechselt zum file comader
startup()
{
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
        startup()
    }
    Sleep, 120
    MouseMove, catx1, caty1, 10
}

;Dopelklick auf Derzeitige pos um vlc zu starten
startlisten()
{
    MouseGetPos, catx1, caty1
    Click, 2, catx1, caty1
    Return, catx1, caty1
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