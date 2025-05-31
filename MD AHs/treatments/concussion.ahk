#NoEnv
SetKeyDelay, 1
#SingleInstance Force

;============================
; GSW
;============================
Concussion() {
    SendCommand("/me quickly assesses the patient for signs of a concussion.")
    PauseBetweenCommands()

    SendCommand("/me palpates the patient's head gently, feeling for any lumps or indentations that could indicate trauma.")
    PauseBetweenCommands()

    SendCommand("/me instructs the patient to look straight ahead while preparing a penlight.")
    PauseBetweenCommands()

    SendCommand("/me shines the penlight quickly into the patient's eyes to check for pupil reaction, observing for any uneven or slow response.")
    PauseBetweenCommands()

    SendCommand("/me notes any signs of concussion, such as dizziness, ear ringing, headache, or loss of consciousness.")
    PauseBetweenCommands()

    SendCommand("/do Would these actions help stabilize the patient?")
}
