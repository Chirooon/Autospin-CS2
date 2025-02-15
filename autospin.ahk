global mode := 0  ; Variable to control the mode

F1::
if (mode = 1) {
    mode := 0
    SoundBeep, 900, 300
    ToolTip, F1 mode stopped
    Sleep 1000
    ToolTip
    return
}
mode := 1
SoundBeep, 400, 300
ToolTip, F1 mode started
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
    Sleep 500  ; Small pause between ESC key presses
    Send {Esc}
}
return

F2::
if (mode = 2) {
    mode := 0
    SoundBeep, 500, 300
    ToolTip, F2 mode stopped
    Sleep 1000
    ToolTip
    return
}
mode := 2
SoundBeep, 400, 300
ToolTip, F2 mode started
Sleep 1000
ToolTip
Loop
{
    if (mode != 2) {
        break
    }
    Click 262, 303      ; Case
    Sleep 100           ; Wait
    Click 387, 314      ; Open case
    Sleep 100           ; Wait
    Click 275, 350      ; Key
    Sleep 400           ; Wait
    Click 1713, 1382    ; Open
    Sleep 8800          ; Wait for animation
    Click 1875, 1391    ; Close opened weapon
}
return

Space::
mode := 0
SoundBeep, 600, 300
ToolTip, Script stopped
Sleep 1000
ToolTip
return
