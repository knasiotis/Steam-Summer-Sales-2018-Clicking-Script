#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#MaxThreadsPerHotkey 3
x:=630
y:=355
F1::pause, toggle
F2::
Loop
{
	Loop{
	SendInput {Numpad1}
	SendInput {Numpad2}
	SendInput {Numpad3}
	MouseClick, left, x, y
	y:=y+5
	if (y>820){
		y:=355
		break
	}
	}
	x:=x+20
	if(x>1590){
		x:=630
	}
	Sleep 1 ; Make this number higher for slower clicks, lower for faster.
}
return
Esc::ExitApp