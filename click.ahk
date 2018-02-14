CoordMode, Mouse, Screen
SetControlDelay, 60

stat = True

f1::
While, stat == True 
{
MouseGetPos, X1, Y1
Click, L, X1, Y1
}
return

^1::
stat = False
return