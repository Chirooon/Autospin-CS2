global mode := 0  ; Variable zur Steuerung des Modus

F1::
if (mode = 1) {
    mode := 0
    SoundBeep, 900, 300
    ToolTip, F1 Modus gestoppt
    Sleep 1000
    ToolTip
    return
}
mode := 1
SoundBeep, 400, 300
ToolTip, F1 Modus gestartet
Sleep 1000
ToolTip
Loop
{
    if (mode != 1) {
        break
    }
    Click 256, 308
    Sleep 100
    Click 354, 313
    Sleep 100
    Click 290, 323
    Sleep 300
    Click 1729, 1377
    Sleep 1000
    Send {Esc}
    Sleep 500  ; Kleine Pause zwischen den ESC-Tastenanschlägen
    Send {Esc}
}
return

F2::
if (mode = 2) {
    mode := 0
    SoundBeep, 500, 300
    ToolTip, F2 Modus gestoppt
    Sleep 1000
    ToolTip
    return
}
mode := 2
SoundBeep, 400, 300
ToolTip, F2 Modus gestartet
Sleep 1000
ToolTip
Loop
{
    if (mode != 2) {
        break
    }
    Click 262, 303      ; Kiste
    Sleep 100           ; Warten
    Click 387, 314      ; Kiste öffen
    Sleep 100           ; Warten
    Click 275, 350      ; Key
    Sleep 400           ; Warten
    Click 1713, 1382    ; Öffnen
    Sleep 8800          ; Warten animation
    Click 1875, 1391    ; Geöffnete waffe schließen
}
return

Space::
mode := 0
SoundBeep, 600, 300
ToolTip, Script gestoppt
Sleep 1000
ToolTip
return
