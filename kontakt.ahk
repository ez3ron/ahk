;Script Um Einfache Neue Kontakt Files Hinzuzufügen

CoordMode, Mouse, Screen
SetControlDelay, 0.1

F3::fun_opvolQ()

F4::fun_chngwnd()

F2::fun_dragandD()

;Funktion1
fun_opvolQ(){
    Click, 843, 755
    Click, 863, 718
}

;Funktion2
fun_chngwnd(){
IfWinExist, Q:\[Kontakt Q] 
    {
    WinActivate
    WinMaximize
    }
    Else {
        Run, explore "Q:\[Kontakt Q]" 
        ;starts explorer @ location
        WinMaximize
        ;max window das zuvor gewählt wurde(das selbe)
    }
}

;Funktion3
fun_dragandD(){
    fun_chngwnd()
    MouseGetPos, X1, Y1,
    MouseClickDrag, L, X1, Y1, 333, 221, 30
}
