; doing a frequent bed leveling is preferred, but if at each startup is too frequent for you, you can just load the mesh with :
; M420 L1 V1 S1 ; load abl mesh from eeprom, print it and enable bed leveling

; do a bed leveling
G28 ; home (needed before abl)
@BEDLEVELVISUALIZER
G29 ; auto bed level (firmware heats nozzle and bed. i've set it to 160/60)
M420 V ; print abl mesh (v for matrix, t only says if bed leveling is on or off)
G90 ; absolute coordinates
M104 S0 ; cool hotend
M140 S0 ; cool bed

; present bed
G1 X0 Y235 Z50

; beep the printer is ready
M300 P500
G4 P250
M300 P500