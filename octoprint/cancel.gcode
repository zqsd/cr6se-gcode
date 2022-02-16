M300 P2000
G4 P250
M300 P2000


; disable motors
M84

;disable all heaters
{% snippet 'disable_hotends' %}
{% snippet 'disable_bed' %}
;disable fan
M106 S0