#NoEnv
SetKeyDelay, 1
#SingleInstance Force

#Include lib\utils.ahk

;============================
; Taking items from ALS bag
;============================

TakingIcePacksAndWrappingTowelAround() {
	SendCommand("/me takes an icepack and a towel from ALS bag")
	PauseBetweenCommands()
	SendCommand("/me pops the icepack and put it inside the towel and wraps the towel around icepack")
}