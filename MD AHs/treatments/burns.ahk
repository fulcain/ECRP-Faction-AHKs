#NoEnv
SetKeyDelay, 1
#SingleInstance Force

;============================
; Burns
;============================
FirstDegreeBurn() {
    SendCommand("/me retrieves trauma scissors from the ALS bag and carefully removes clothing and jewelry around the burn site")
    PauseBetweenCommands()

    SendCommand("/me lightly wets a sterile gauze pad with saline and gently applies it to the burn site to cool the area.")
    PauseBetweenCommands()

    SendCommand("/me removes the wet gauze and wraps the burn with a dry sterile rolled gauze to protect it from infection.")
    PauseBetweenCommands()


    SendCommand("/do Would this help manage the minor burn appropriately?")
}

SecondAndThirdDegreeBurn() {
    SendCommand("/me leans down near the patient's mouth and nose, checking for breathing.")
    PauseBetweenCommands()

    SendCommand("/do Is the patient breathing?")

    answer := InputBox("Check for breathing", "Is the patient breathing? (yes or no)")

    if (answer == "")
        return

    StringLower, answer, answer

    if (answer = "yes" || answer = "y") {
        SendCommand("/me retrieves trauma scissors from the ALS bag and carefully removes any clothing and jewelry around the burn site.")
        PauseBetweenCommands()

        SendCommand("/do Approximately what percentage of the patient's body is burned?")
        burnPercent := InputBox("Burn Percentage", "Enter approximate body burn percentage (numeric only):")

        if (burnPercent = "")
            return

        if (burnPercent != "" && burnPercent is "digit") {
            burnPercent := burnPercent + 0 ; Convert to number

            if (burnPercent < 10) {
                SendCommand("/me lightly wets a sterile gauze pad with saline and gently applies it momentarily to the burn site to cool the area.")
                PauseBetweenCommands()

                SendCommand("/me removes the wet gauze and covers the burn area with a dry sterile dressing, avoiding any heavy pressure.")
                PauseBetweenCommands()
            } else {
                SendCommand("/me covers the burn areas directly with dry sterile dressings, avoiding any heavy pressure.")
                PauseBetweenCommands()
            }
        } else {
            return
        }

        SendCommand("/me wraps the patient in a thermal blanket to prevent shock.")
        PauseBetweenCommands()

        SendCommand("/me elevates the burned limb slightly if possible to reduce swelling.")
        PauseBetweenCommands()

        SendCommand("/do Would this stabilize the patient for transport?")
    }
    else if (answer = "no" || answer = "n") {
        SendCommand("/me immediately places an oxygen mask over the patient's face to assist breathing.")
        PauseBetweenCommands()

        SendCommand("/me prepares an oxygen hand pump and manually ventilates the patient to support oxygenation.")
        PauseBetweenCommands()

        SendCommand("/me retrieves trauma scissors and carefully removes any clothing and jewelry around the burn site.")
        PauseBetweenCommands()

        SendCommand("/me covers the burn areas with dry sterile dressings, avoiding any heavy pressure.")
        PauseBetweenCommands()

        SendCommand("/me wraps the patient in a thermal blanket to prevent shock.")
        PauseBetweenCommands()


        SendCommand("/do Would these actions help stabilize the patient for emergency transport?")
    }
    else {
        return
    }
}

