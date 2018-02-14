;Script Um Einfache Neue Kontakt Files Hinzuzufügen
CoordMode, Mouse, Screen
SetControlDelay, 60


F1::schritt1()
F3::schritt2()
F4::schritt3()
;F4::schritt4()
;F6::schritt5()

;Kontakt Aktiviren
schritt1()
{
    ;Aktivire Kontakt, Click Library Fensterabhängig
    IfWinActive, ahk_exe Kontakt 5.exe
    {
    CoordMode, Mouse, Relative
    Click, 103, 136
    WinActivate, Ordner suchen
    Sleep, 60
    Click, 90, 420
    Send, {Down 2} {Right}
    }
    Else {
        WinActivate, ahk_exe Kontakt 5.exe
        schritt1()
    }
}

;Explorer an richtiger Stelle
schritt2()
{
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

;Verschieben in Lost Ordner !!Unfertig!!
schritt3()
{
    MouseGetPos, X1, Y1
    Click, X1, Y1
    MouseClickDrag, L, X1, Y1, 363, 224 ,15
}
;schritt4()
;schritt5()