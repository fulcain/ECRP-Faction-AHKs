#NoEnv
SetKeyDelay, 1
#SingleInstance Force

;============================
; Broken Bone Procedure
;============================
BorkenBoneOpenFracture() {
    SendCommand("/me grabs trauma scissors from the ALS bag and carefully cuts clothing away from the fracture site.")
    PauseBetweenCommands()

    SendCommand("/me retrieves a sterile bandage from the ALS bag and loosely wraps it over the open wound to prevent further contamination.")
    PauseBetweenCommands()

    SendCommand("/me takes three splints from the ALS bag, positioning one above, one below, and one directly over the fracture to fully immobilize the injured area.")
    PauseBetweenCommands()

    SendCommand("/me grabs several ice packs and a large towel from the ALS bag.")
    PauseBetweenCommands()

    SendCommand("/me activates the ice packs, wraps them securely in the towel, and prepares it for application.")
    PauseBetweenCommands()

    SendCommand("/me gently places the cold towel over the fracture site to help reduce pain and swelling.")
    PauseBetweenCommands()

    SendCommand("/do Would this treatment help control bleeding and stabilize the fracture?")
}

BorkenBoneOClosedFractureArmLegCollarBone() {
    SendCommand("/me retrieves a splint from the ALS bag and carefully immobilizes the fracture by securing it above and below the injured area.")
    PauseBetweenCommands()

    TakingIcePacksAndWrappingTowelAround()
    PauseBetweenCommands()

    SendCommand("/me gently places the cold towel over the fracture site and applies light pressure to minimize swelling.")
    PauseBetweenCommands()

    SendCommand("/do Would this treatment help stabilize the fracture and control the swelling?")
}

BorkenBoneOClosedFractureHip() {
    SendCommand("/me retrieves a pelvic binder and a backboard from the ambulance.")
    PauseBetweenCommands()

    SendCommand("/me carefully applies the pelvic binder, securing the velcro straps snugly to stabilize the pelvis.")
    PauseBetweenCommands()

    SendCommand("/me assists the patient onto the backboard using gentle movements to prevent further injury.")
    PauseBetweenCommands()

    TakingIcePacksAndWrappingTowelAround()
    PauseBetweenCommands()

    SendCommand("/me places the cold towel over the hip area to reduce swelling and discomfort.")
    PauseBetweenCommands()

    SendCommand("/do Would this treatment help stabilize the pelvic fracture and ease the patient's pain?")
}

BorkenBoneOClosedFractureRibs() {
    TakingIcePacksAndWrappingTowelAround()
    PauseBetweenCommands()

    SendCommand("/me gently places the cold towel against the fractured rib area, providing comfort and reducing swelling.")
    PauseBetweenCommands()

    SendCommand("/do Would this method help alleviate the patient's rib pain and swelling?")
}

BorkenBoneOSpinalFracture() {
    SendCommand("/me manually stabilizes the patient's head and neck in the position found, using both hands to maintain in-line stabilization.")
    PauseBetweenCommands()

    SendCommand("/me prepares the cervical collar from the ALS bag.")
    PauseBetweenCommands()

    SendCommand("/me carefully applies the cervical collar to maintain neck stability.")
    PauseBetweenCommands()

    SendCommand("/me retrieves a backboard and long straps from the ambulance.")
    PauseBetweenCommands()

    SendCommand("/me performs a gentle log roll, maintaining spinal alignment throughout the movement.")
    PauseBetweenCommands()

    SendCommand("/me gently positions the patient onto the backboard and secures them using head blocks and straps to prevent movement.")
    PauseBetweenCommands()

    SendCommand("/do Would this spinal precaution help prevent further injury to the patient's back or spine?")
}
