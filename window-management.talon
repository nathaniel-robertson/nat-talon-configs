os: mac
-

# Quick app switch. Found this somewhere, maybe in old community repository
swick:
    key(cmd-tab)

# Quick window switch. Found this somewhere, maybe in old community repository
gibby:
    key(cmd-`)

gabbard:
    key(cmd-shift-`)

# Mission Control - current app
expose app:
    key(ctrl-down)

# Mission Control - all apps
expose [all]:
    key(ctrl-up)

window minimize:
    key(cmd-m)

app quit:
    key(cmd-q)

app hide:
    key(cmd-h)

# maximizes window. triggers a better touch tool shortcut
snap max:
    key(ctrl-alt-cmd-up)
    
# restores window. triggers a better touch tool shortcut
snap restore:
    key(ctrl-alt-cmd-down)

# triggers a better touch tool shortcut
snap left:
    key(ctrl-alt-cmd-left)
    
# triggers a better touch tool shortcut
snap right:
    key(ctrl-alt-cmd-right)
    
# triggers a better touch tool shortcut
# window management built into talon does not seem to be able to move some windows across monitors
snap screen better:
    key(ctrl-alt-cmd-])
    

# snap top left:
#     key(function_key-ctrl-alt-cmd-/)
# snap top right:
#     key(function_key-ctrl-alt-cmd-up)
# snap bottom left:
#     key(function_key-ctrl-alt-cmd-left)
# snap bottom right:
#     key(function_key-ctrl-alt-cmd-right)