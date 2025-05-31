#NoEnv
SetKeyDelay, 1
#SingleInstance Force

;============================
; Cuts
;============================
Cuts() {
    SendCommand("/me quickly retrieves sterile saline and gauze pads from the ALS bag.")
    PauseBetweenCommands()

    SendCommand("/me carefully pours sterile saline over the wound to clean it and visualize the cut.")
    PauseBetweenCommands()

    SendCommand("/me firmly applies gauze pads directly onto the cut, applying consistent pressure.")
    PauseBetweenCommands()

    SendCommand("/me wraps rolled gauze tightly around the wound to secure the gauze pads in place.")
    PauseBetweenCommands()

    SendCommand("/do would the patient feel better after this treatment?")
}
