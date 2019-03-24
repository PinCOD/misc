; homex.g
; called to home the X axis
;
; generated by RepRapFirmware Configuration Tool v2 on Sun Mar 17 2019 11:56:27 GMT-0700 (Pacific Daylight Time)
M913 X50         ; X motors to 50% current

G91              ; relative positioning

G1 Z5 F6000 S2   ; lift Z relative to current position

G1 S1 X-320 F3600 ; move quickly to X axis endstop and stop there (first pass only)

G1 X5 F6000     ; go back a few mm

G1 Z-5 F6000 S2  ; lower Z again
M913 X100        ; X motors to 100% current
G90              ; absolute positioning
