;Simple ahk to sort reference files in File Comander

F1::startup()
^Numpad1::movinter(1063, 237)
^Numpad0::deletesomething()


startup(){
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
}

;Funktion Klick auf Position und Bewege zu pos a/b
movinter(a, b){
    MouseGetPos, X1, Y1
    MouseClickDrag, L, X1, Y1, a, b , 15
}

;Klick auf Maus Pos, Del, Links, Enter (->papirkorb)
deletesomething(){
    MouseGetPos, X1, Y1
    Click, X1, Y1
    Send, {Del}
    Sleep, 90
    Send, {Left}
    Sleep, 60
    Send, {Enter}
}
