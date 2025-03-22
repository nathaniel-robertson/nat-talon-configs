mode: all
and not hostname: /^KINSTA-NR-MBP/
-

^personal [talon] sleep [<phrase>]$: speech.disable()
^personal [talon] wake$: speech.enable()

^personal go to sleep [<phrase>]$: speech.disable()
^personal (wake up)+$: speech.enable()