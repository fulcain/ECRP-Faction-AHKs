#NoEnv
SetKeyDelay, 1
SetWorkingDir %A_ScriptDir%
#SingleInstance Force

#Include lib\utils.ahk
#Include treatments\broken_bones.ahk
#Include treatments\bruises.ahk
#Include treatments\burns.ahk
#Include treatments\GSWs.ahk
#Include treatments\concussion.ahk
#Include treatments\cuts.ahk

#Include components\stretcher.ahk
#Include components\als_bag_items.ahk

;============================
; Main Menu Hotkey (Numpad9)
;============================

Numpad9::
if (MenuCreated) {
    Menu, FullMenu, Delete
    Menu, StretcherMenu, Delete
    Menu, FracturesMenu, Delete
    Menu, BurnsMenu, Delete
    Menu, GSWMenu, Delete
}

MenuCreated := true

;============================
; Create Submenus
;============================

; -- Stretcher Actions Submenu
Menu, StretcherMenu, Add, Take stretcher and put patient into it, TakeStretcherFromAmboAndBack
Menu, StretcherMenu, Add, Take out one Stretcher, TakeOneStretcher
Menu, StretcherMenu, Add, Put down one Stretcher, PutDownOneStretcher
Menu, StretcherMenu, Add, Take Stretcher(s), PromptForStretcherAmount
Menu, StretcherMenu, Add, Put down Stretcher(s), PromptPutDownStretcherAmount
Menu, StretcherMenu, Add, Help patient into Stretcher, HelpPatientIntoStretcher

; -- Fractures Submenu
Menu, FracturesMenu, Add, OPEN Fracture - broken bone, BorkenBoneOpenFracture
Menu, FracturesMenu, Add, CLOSED Fracture - Arm/Leg/CollarBone, BorkenBoneOClosedFractureArmLegCollarBone
Menu, FracturesMenu, Add, CLOSED Fracture - Hip, BorkenBoneOClosedFractureHip
Menu, FracturesMenu, Add, CLOSED Fracture - Ribs, BorkenBoneOClosedFractureRibs
Menu, FracturesMenu, Add, CLOSED Fracture - Spine/Back, BorkenBoneOSpinalFracture

; -- Burns Submenu
Menu, BurnsMenu, Add, First degree burn, FirstDegreeBurn
Menu, BurnsMenu, Add, Second and third degree burn, SecondAndThirdDegreeBurn

; -- GSW Submenu
Menu, GSWMenu, Add, GSW - Arm Or Leg, GSWArmOrLeg
Menu, GSWMenu, Add, GSW - Stomach, GSWStomach
Menu, GSWMenu, Add, GSW - Chest, GSWChest
Menu, GSWMenu, Add, GSW - Head, GSWHead

;============================
; Main menu
;============================

Menu, FullMenu, Add, EMS TREATMENTS MENU, CloseMenu
Menu, FullMenu, Add

Menu, FullMenu, Add, Check for injuries, CheckingPatient

Menu, FullMenu, Add
Menu, FullMenu, Add, Stretcher Actions, :StretcherMenu

Menu, FullMenu, Add
Menu, FullMenu, Add, Ice Pack, TakingIcePacksAndWrappingTowelAround

Menu, FullMenu, Add
Menu, FullMenu, Add, Fractures, :FracturesMenu

Menu, FullMenu, Add
Menu, FullMenu, Add, Bruises, Bruises

Menu, FullMenu, Add
Menu, FullMenu, Add, Burns, :BurnsMenu

Menu, FullMenu, Add
Menu, FullMenu, Add, GSWs, :GSWMenu

Menu, FullMenu, Add
Menu, FullMenu, Add, Concussion, Concussion

Menu, FullMenu, Add
Menu, FullMenu, Add, Cuts, Cuts

Menu, FullMenu, Add
Menu, FullMenu, Add, [X] Close Menu, CloseMenu

;============================
; Show the Main Menu
;============================
CoordMode, Menu, Screen
Menu, FullMenu, Show, % A_ScreenWidth / 2, % A_ScreenHeight / 2
return

;============================
; Actions
;============================

CheckingPatient() {
    SendCommand("/me puts their ALS Bag down and looks over patient for injuries")
    PauseBetweenCommands()
    SendCommand("/anim medic")
    PauseBetweenCommands()
    SendCommand("/do what do I see/find?")
    PauseBetweenCommands()
    Send t
    Sleep 500
    Send /stabilize
}

CloseMenu:
Return

;============================
; PAUSE / STOP HOTKEY (Ctrl + Numpad9)
;============================
^Numpad9::Pause, Toggle
