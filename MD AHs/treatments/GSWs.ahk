#NoEnv
SetKeyDelay, 1
#SingleInstance Force

;============================
; GSW
;============================
GSWArmOrLeg() {
    SendCommand("/me quickly retrieves gauze pads from the ALS bag.")
    PauseBetweenCommands()

    SendCommand("/me locates the visible GSW wounds and firmly applies gauze pads over them, applying direct pressure.")
    PauseBetweenCommands()

    SendCommand("/me checks for any exit wounds and applies gauze pads to those as well.")
    PauseBetweenCommands()

    SendCommand("/me grabs pressure bandages from the ALS bag.")
    PauseBetweenCommands()

    SendCommand("/me wraps the pressure bandages tightly around the gauze to secure them in place.")
    PauseBetweenCommands()

    SendCommand("/me continues applying steady pressure to control bleeding.")
    PauseBetweenCommands()

    SendCommand("/do Would the bleeding be controlled after applying pressure bandages?")
}

GSWStomach() {
    SendCommand("/me quickly pulls gauze pads from the ALS bag.")
    PauseBetweenCommands()

    SendCommand("/me gently places gauze pads over the abdominal GSW without applying pressure, preventing further internal damage.")
    PauseBetweenCommands()

    SendCommand("/me checks for any exit wounds on the back and covers them with gauze pads as well.")
    PauseBetweenCommands()

    SendCommand("/me retrieves rolled gauze bandages from the ALS bag.")
    PauseBetweenCommands()

    SendCommand("/me loosely wraps the rolled gauze around the applied pads to hold them in place without adding pressure.")
    PauseBetweenCommands()

    SendCommand("/do Would the bleeding be slowed or controlled after applying loose bandages?")
}

GSWChest() {
    SendCommand("/me quickly removes gauze pads from the ALS bag.")
    PauseBetweenCommands()

    SendCommand("/me carefully places gauze pads over the chest GSW without applying pressure, being cautious of potential tension pneumothorax.")
    PauseBetweenCommands()

    SendCommand("/me checks for exit wounds on the patient's back and applies gauze pads to those as well.")
    PauseBetweenCommands()

    SendCommand("/me retrieves rolled gauze bandages from the ALS bag.")
    PauseBetweenCommands()

    SendCommand("/me gently wraps the gauze bandage around the wounds to secure the pads without restricting chest movement.")
    PauseBetweenCommands()

    SendCommand("/me monitors the patient's breathing and prepares equipment for possible chest decompression if needed.")
    PauseBetweenCommands()

    SendCommand("/do Would the bleeding be controlled and the patient's breathing remain stable after treatment?")
}


GSWHead() {
    SendCommand("/me quickly grabs gauze pads from the ALS bag and applies them firmly over the open GSW, exerting heavy pressure.")
    PauseBetweenCommands()

    SendCommand("/me maintains constant, heavy pressure on the wound to control the bleeding, closely monitoring the patient's response.")
    PauseBetweenCommands()

    SendCommand("/me prepares a pressure bandage after several minutes of continuous pressure as bleeding persists.")
    PauseBetweenCommands()

    SendCommand("/me carefully wraps the pressure bandage around the patient's head, securing the initial gauze pads in place.")
    PauseBetweenCommands()

    SendCommand("/me applies a hemostatic pad with Chitosan directly over the wound to assist with clotting after continued bleeding.")
    PauseBetweenCommands()

    SendCommand("/do Would the combination of heavy pressure, pressure bandage, and hemostatic agent successfully control the bleeding?")
}


