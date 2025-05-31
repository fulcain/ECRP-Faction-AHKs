#NoEnv
SetKeyDelay, 1
#SingleInstance Force

;============================
; Bruises
;============================
Bruises() {
    SendCommand("/me gently cleans the bruised area with sterile gauze to remove any dirt or debris.")
    PauseBetweenCommands()

    SendCommand("/me takes out ice packs from the ALS bag and wraps them in a large towel to prevent direct contact with the skin.")
    PauseBetweenCommands()

    SendCommand("/me places the wrapped ice pack on the bruise and applies gentle pressure to reduce swelling.")
    PauseBetweenCommands()
	
    SendCommand("/do Would this help with the bruise and swelling?")
}
