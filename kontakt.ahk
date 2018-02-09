;Script Um Einfache Neue Kontakt Files Hinzuzufügen
CoordMode, Mouse, Screen
SetControlDelay, 1


F1::fun_endlod()
F2::fun_dragandD()
F3::fun_opvolQ()
F4::fun_chngwnd()
F6::fun_strt()

;Funktion1
fun_opvolQ(){
    ;Click 1 auf das Laufwerk
    Click, 844, 756
    Sleep, 60
    Click, 863, 794
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
    ;Bewegt Datei von Derzeitiger Pos zu Angegebener
    MouseGetPos, X1, Y1,
    MouseClickDrag, L, X1, Y1, 344, 219, 15
    ;Linksclick von derzeitigerposition drag zu x y und speed
}

;Funktion4
fun_endlod(){
    Click, 1616, 1016
    
}

;Funkiton5
fun_strt(){
    WinActivate, Kontakt 5
    ;Zu Kontakt Fenster Offnen
    Click, 108, 170
    ;Click auf Add Library
    Sleep, 120
    fun_opvolQ()
    ;Kann gleich mitangewendet werden
}