#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SetKeyDelay, 1
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance Force

SendCommand(command) {
    Send, t
    Sleep, 50
    Send, %command%
    Send, {Enter}
}

F10:: ; EDIT THIS KEY TO ANYTHING YOU LIKE
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
Menu, FullMenu, Add, Duty clothes on, DutyClothesOn
Menu, FullMenu, Add, Duty clothes off, DutyClothesOff
Menu, FullMenu, Add, Start watch radio + create unit, StartWatchRadio
Menu, FullMenu, Add, End watch radio + disband unit, EndWatchRadio
Menu, FullMenu, Add, Bodycam on, BodycamOn
Menu, FullMenu, Add, Bodycam off, Bodycamoff
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
CoordMode, Menu, Screen
Menu, FullMenu, Show, % A_ScreenWidth/2, % A_ScreenHeight/2
return

DutyClothesOn:
    SendCommand("/melow Opens the clothing locker and grabs their uniform, putting it on")
    Sleep, 1000
    SendCommand("/melow Grabs their equipment from their locker, putting everything on their duty belt")
Return

DutyClothesOff:
    SendCommand("/melow Opens the clothing locker and takes their uniform off, putting it back in the clothing locker")
    Sleep, 1000
    SendCommand("/melow Takes all the equipment of their duty belt, putting it back in the locker")
Return

StartWatchRadio:
    SendCommand("/r RANK LASTNAME starting watch under UNITNAME")
    Sleep, 500
    SendCommand("/Createunit UNITNAME")
Return

EndWatchRadio:
    SendCommand("/r CALLSIGNNR ending watch, disbanding unit")
    Sleep, 500
    SendCommand("/Disbandunit")
Return

BodycamOn:
    SendCommand("/me Grabs their bodycam from the locker and attaches the bodycam on their chest mount after turning it on")
    Sleep, 500
    SendCommand("/time")
Return

BodycamOff:
    SendCommand("/me Grabs their bodycam from the chest mount, turns it off and safely stores it in their locker")
    Sleep, 500
    SendCommand("/time")
Return
