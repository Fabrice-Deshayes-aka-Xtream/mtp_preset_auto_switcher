; --------------------------------------------------
; Bome Midi Translator Pro automatic profile switcher
; detect window focus change and apply the 
; corresponding preset on MTP
; created for my friend Didier Martini
; @author Fabrice DESHAYES - 11/2018
; --------------------------------------------------

; window are found if title contains the provided string (no need to provide the entire title)
SetTitleMatchMode, 2

; this variable is used to know which profile is currently applied (to avoid to apply several time the same profile)
profileApplied := 0

; infinite loop permanently monitor windows
while(true) { 
    ; MTPisLaunched will be true if the Bome Midi Translator Pro windows is found
    MTPisLaunched := WinExist("MIDI Translator Pro")

    if (MTPisLaunched) {
        ; if MTP is lauched, search if current active window chas changed to apply dedicated MTP profile
        if (WinActive("Cubase") and profileApplied<>1) {
            ; cubase just get focus, send [²] to switch to cubase preset on MTP (cubase ignore CTRL and ALT!)
            SendInput ²
            profileApplied := 1 ; don't apply cubase profile each 10 ms when cubase has focus!!!
        } else if (WinActive("VEGAS") and profileApplied<>2) {
            ; vegas just get focus, send [ALT] + [CTRL] + [F2] to switch to vegas preset on MTP
            SendInput !^{F2}
            profileApplied := 2 ; don't apply vegas profile each 10 ms when vegas has focus!!!
        } else if (WinActive("FastStone") and profileApplied<>3) {
            ; FastStone just get focus, send [ALT] + [CTRL] + [F3] to switch to FastStone preset on MTP
            SendInput !^{F3}
            profileApplied := 3 ; don't apply fastStone profile each 10 ms when fastStone has focus!!!
        } 
    }

    ; wait 100 ms between every loop, to prevent CPU consuming
    Sleep, 100
}