;Simple ahk to sort reference files in File Comander

F1::startup()

startup(){
    IfWinExist, [Reference]*
    {
        WinMaximize,
    }
    Else{
        RunWait,"C:\Program Files (x86)\FreeCommander XE\FreeCommander.exe", max
        WinMaximize
    }
}

