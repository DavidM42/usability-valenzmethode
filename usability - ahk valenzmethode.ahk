#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


WinName := "Feedback"

F4::
SendInput {F2}
Sleep 0.2
SetTimer, WinMoveMsgBox, 50
MsgBox, 4096, %WinName%, +++Positive+++, 0.7
return 

F3::
SendInput {F2}
Sleep 0.2
SetTimer, WinMoveMsgBox, 50
MsgBox, 4096, %WinName%, ---Negative---, 0.7
return

ExitApp
Return

WinMoveMsgBox:
  If WinExist(WinName)
    SetTimer, WinMoveMsgBox, OFF
  WinMove, %WinName%, , 1700, 830
Return
