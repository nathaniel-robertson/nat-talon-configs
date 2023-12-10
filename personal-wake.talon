mode: all
and not hostname: /^KINSTA-NR-MBP-2021/
-

^personal [talon] sleep [<phrase>]$: speech.disable()
^personal [talon] wake$: speech.enable()

^personal go to sleep [<phrase>]$: speech.disable()
^personal (wake up)+$: speech.enable()