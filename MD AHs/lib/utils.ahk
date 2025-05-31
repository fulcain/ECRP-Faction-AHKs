#NoEnv
SetKeyDelay, 1
SetWorkingDir %A_ScriptDir%
#SingleInstance Force

;============================
; Utility Functions
;============================
SendCommand(command) {
    Send, t
    Sleep, 50
    Send, %command%
    Send, {Enter}
}

PauseBetweenCommands(){
	Sleep, 2000
}

InputBox(title, prompt) {
    InputBox, value, %title%, %prompt%, , 200, 150
	
    if (ErrorLevel || value == "")
        return ""  ; Return empty string on cancel or empty input

    return value
}

