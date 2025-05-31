#NoEnv
SetKeyDelay, 1
#SingleInstance Force

;============================
; Stretcher related
;============================
PromptForStretcherAmount() {
 amount := InputBox("Take Stretchers", "HHow many stretchers do you want to take?")
    if (amount == "")
        return

    if (amount == 1)
        SendCommand("/me takes " . amount . " stretcher from the back of the ambulance")
    else if (amount > 1)
        SendCommand("/me takes " . amount . " stretchers from the back of the ambulance")
    else
        MsgBox, 48, Invalid Input, Ello, How are you gonna take 0 stretchers?
}


PromptPutDownStretcherAmount() {
    amount := InputBox("Put Down Stretchers", "How many stretchers do you wanna put down?")
    if (amount == "")
        return

    if (amount == 1)
        SendCommand("/me puts down 1 stretcher on the ground and opens it")
    else if (amount > 1)
        SendCommand("/me puts down " . amount . " stretchers on the ground and opens them")
    else
        MsgBox, 48, Invalid Input, Ello, How are you gonna put down 0 stretchers?

    PauseBetweenCommands()
}

TakeStretcherFromAmboAndBack() {
    SendCommand("/me takes a stretcher from back of the ambulance, opens it and locks it in place.")
    PauseBetweenCommands()
	
	SendCommand("/me gently helps the patient onto the stretcher and secures them in place")
    PauseBetweenCommands()
	
	SendCommand("/me takes the stretcher and puts it in the back of ambulance")
    PauseBetweenCommands()
	
	SendCommand("/do is he able to do so?")
}


HelpPatientIntoStretcher() {
    SendCommand("/me assists the patient gently onto the stretcher")
	PauseBetweenCommands()
	
	SendCommand("/do is he able to put the patient onto the stretcher?")
}

TakeOneStretcher() {
	SendCommand("/me takes 1 stretcher from the back of the ambulance")
}

PutDownOneStretcher() {
	SendCommand("/me puts down 1 stretcher on the ground and opens it")
}