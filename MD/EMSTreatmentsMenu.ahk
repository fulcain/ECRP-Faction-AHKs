#NoEnv
SetKeyDelay, 1
SetWorkingDir %A_ScriptDir%
#SingleInstance Force

;============================
; Main Menu Hotkey (F11)
;============================

F11::
if (MenuCreated) {
    Menu, FullMenu, Delete
}

MenuCreated := true

;============================
Menu, FullMenu, Add, Check for injuries, CheckingPatient
Menu, FullMenu, Add, Take Stretcher(s), PromptForStretcherAmount
Menu, FullMenu, Add, Put down Stretcher(s), PromptPutDownStretcherAmount
Menu, FullMenu, Add, Help patient into Stretcher, HelpPatientIntoStretcher
Menu, FullMenu, Add, OPEN Fracture - broken bone, BorkenBoneOpenFracture
Menu, FullMenu, Add  ; <-- Separator line
Menu, FullMenu, Add, [X] Close Menu, CloseMenu
;============================

CoordMode, Menu, Screen
Menu, FullMenu, Show, % A_ScreenWidth / 2, % A_ScreenHeight / 2
return


;============================
; Utility Functions
;============================
SendCommand(command) {
    Send, t
    Sleep, 50
    Send, %command%
    Send, {Enter}
}

;============================
; Patient Actions
;============================
CheckingPatient() {
    SendCommand("/me puts his ALS Bag down and looks over patient for injuries")
    Sleep, 500
    SendCommand("/do what do I see/find?")
}

HelpPatientIntoStretcher() {
    SendCommand("/me assists the patient gently into the stretcher")
}

;============================
; Stretcher Prompts
;============================
PromptForStretcherAmount() {
    InputBox, amount, Take Stretchers, How many stretchers do you want to take?, , 200, 150
    if (ErrorLevel)
        return

    if (amount == 1)
        SendCommand("/me takes " . amount . " stretcher from the back of the ambulance")
    else if (amount > 1)
        SendCommand("/me takes " . amount . " stretchers from the back of the ambulance")
    else
        MsgBox, 48, Invalid Input, Ello, How are you gonna take 0 stretchers?
}

PromptPutDownStretcherAmount() {
    InputBox, amount, Put Down Stretchers, How many stretchers do you have?, , 200, 150
    if (ErrorLevel)
        return

    if (amount == 1)
        SendCommand("/me puts down 1 stretcher onto the ground and opens it")
    else if (amount > 1)
        SendCommand("/me puts down " . amount . " stretchers onto the ground and opens them")
    else
        MsgBox, 48, Invalid Input, Ello, How are you gonna put down 0 stretchers?

    Sleep, 500
}

;============================
; Broken Bone Procedure
;============================
BorkenBoneOpenFracture() {
    SendCommand("/me takes scissors out of ALS bag to cut clothing around the fracture")
    Sleep, 2000

    SendCommand("/me takes a bandage from ALS bag and loosely wraps the open wound with the bandage")
    Sleep, 2000

    SendCommand("/me takes 3 splints from ALS bag and puts one above the fracture, one below, and the third one on top of it to immobilize around the broken area")
    Sleep, 2000

    SendCommand("/me takes some ice packs and a large towel from ALS, pops the ice packs open and puts them inside the large towel and wraps the towel around the ice packs")
    Sleep, 2000

    SendCommand("/me takes the towel and puts it on the fracture to ease down the pain")
    Sleep, 2000

    SendCommand("/do would this help?")
}

CloseMenu:
; This will do nothing and just return, closing the menu
Return

;============================
; PAUSE / STOP HOTKEY (Ctrl + F11)
;============================
^F11::Pause, Toggle