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

;============================
; Main Menu Hotkey (F10)
;============================

F10::
if (MenuCreated) {
    Menu, FullMenu, Delete
}

MenuCreated := true

;============================
Menu, FullMenu, Add, Duty clothes on, DutyClothesOn
Menu, FullMenu, Add, Duty clothes off, DutyClothesOff
Menu, FullMenu, Add, Start services radio + create unit, StartServiceRadio
Menu, FullMenu, Add, Bodycam on, BodycamOn
Menu, FullMenu, Add, Bodycam off, Bodycamoff
Menu, FullMenu, Add  ; <-- Separator line
Menu, FullMenu, Add, [X] Close Menu, CloseMenu
;============================

CoordMode, Menu, Screen
Menu, FullMenu, Show, % A_ScreenWidth/2, % A_ScreenHeight/2
return

DutyClothesOn:
    SendCommand("/me opens the clothing locker and grabs their uniform, putting it on")
    Sleep, 1000
Return

DutyClothesOff:
    SendCommand("/me opens the clothing locker and takes their uniform off, putting it back in the clothing locker")
Return

StartServiceRadio:
    SendCommand("/r EMT Petrov is creating CHANGE and starting services, 10-8 lower pillbox. ")
    Sleep, 500
    SendCommand("/Createunit CHANGE")
Return

BodycamOn:
    SendCommand("/me Grabs their bodycam from the locker and attaches the bodycam on their chest mount after turning it on")
    Sleep, 500
    SendCommand("/do the camera would turn on indicating that it's recording")
    Sleep, 500
    SendCommand("/time")
Return

BodycamOff:
    SendCommand("/me grabs their bodycam from the chest mount, turns it off and safely stores it in their locker")
    Sleep, 500
    SendCommand("/time")
Return

CloseMenu:
; This will do nothing and just return, closing the menu
Return

;============================
; PAUSE / STOP HOTKEY (Ctrl + F11)
;============================
^F11::Pause, Toggle
