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

PauseBetweenCommands(){
	Sleep, 2000
}

;============================
; Main Menu Hotkey (F10)
;============================

Numpad4::
if (MenuCreated) {
    Menu, FullMenu, Delete
}

MenuCreated := true

;============================
Menu, FullMenu, Add, EMS DUTY MENU, CloseMenu
Menu, FullMenu, Add  ; <-- Separator line

Menu, FullMenu, Add, Start services radio + create unit, StartServiceRadio
Menu, FullMenu, Add, End services radio + disband unit, EndServiceRadio
Menu, FullMenu, Add  ; <-- Separator line
Menu, FullMenu, Add, UNIFORMS -  Casual Attire, ChooseAttireClothes
Menu, FullMenu, Add, UNIFORMS -  Sweater, ChooseSweaterClothes
Menu, FullMenu, Add, UNIFORMS -  Fire, ChooseFireClothes
Menu, FullMenu, Add, UNIFORMS -  Mountain Rescue, ChooseRescueClothes
Menu, FullMenu, Add  ; <-- Separator line
Menu, FullMenu, Add, Bodycam on, BodycamOn

Menu, FullMenu, Add  ; <-- Separator line
Menu, FullMenu, Add, [X] Close Menu, CloseMenu
;============================

CoordMode, Menu, Screen
Menu, FullMenu, Show, % A_ScreenWidth/2, % A_ScreenHeight/2
return
StartServiceRadio:
    SendCommand("/r EMT Petrov to dispatch, show me forming FIRE-27E and starting services, 10-8 lower pillbox. ")
    Sleep, 500
    SendCommand("/createunit E-27")
Return

EndServiceRadio:
    SendCommand("/r EMT Petrov to dispatch show me disbanding FIRE-27E and 10-9 ending services, stay safe out there! ")
    Sleep, 500
    SendCommand("/disbandunit")
Return

BodycamOn:
    SendCommand("/me grabs their bodycam from the locker and attaches the bodycam on their chest mount after turning it on")
    Sleep, 500
    SendCommand("/do the camera would turn on indicating that it's recording")
    Sleep, 500
    SendCommand("/time")
Return

ChooseAttireClothes() {
	SendCommand("/fl")
	Sleep, 500
	
	SendInput {Enter}
	Sleep, 500
	
	SendInput {Up}
	Sleep, 500
	
	SendInput {Enter}
	Sleep, 500
	
	Loop, 8  ;
    {
        SendInput {Down}
        Sleep, 200
    }
	
	SendInput {Enter}
	Sleep, 200
	
	SendInput {Esc}
}

ChooseFireClothes:
	SendCommand("/fl")
	
	Sleep, 500
	
	SendInput {Enter}
	Sleep, 500
	
	SendInput {Up}
	Sleep, 500
	
	SendInput {Enter}
	Sleep, 500
	
	SendInput {Up}
	Sleep, 500
	
	Loop, 4  ;
    {
        SendInput {Up}
        Sleep, 200
    }
	Sleep, 200
	
	SendInput {Enter}
	Sleep, 200
return

ChooseRescueClothes:
	SendCommand("/fl")
	
	Sleep, 500
	
	SendInput {Enter}
	Sleep, 500
	
	SendInput {Up}
	Sleep, 500
	
	SendInput {Enter}
	Sleep, 500
	
	SendInput {Up}
	Sleep, 500
	
	Loop, 13  ;
    {
        SendInput {Up}
        Sleep, 200
    }
	
	SendInput {Enter}
	Sleep, 200
	
	SendInput {Esc}
return

ChooseSweaterClothes() {
	SendCommand("/fl")
	Sleep, 500
	
	SendInput {Enter}
	Sleep, 500
	
	SendInput {Up}
	Sleep, 500
	
	SendInput {Enter}
	Sleep, 500
	
	Loop, 10  ;
    {
        SendInput {Down}
        Sleep, 200
    }
	
	SendInput {Enter}
	Sleep, 200
	
	SendInput {Esc}
}


CloseMenu:
; This will do nothing and just return, closing the menu
Return

;============================
; PAUSE / STOP HOTKEY (Ctrl + Numpad4)
;============================
^Numpad4::Pause, Toggle
