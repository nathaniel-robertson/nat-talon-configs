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
expose (app | application):
    key(ctrl-down)

# Mission Control - all apps
expose [all]:
    key(ctrl-up)

window minimize:
    key(cmd-m)

application quit:
    key(cmd-q)

application hide:
    key(cmd-h)

application hide others:
    key(cmd-alt-h)

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

slacker [<phrase>]$:
    user.switcher_focus("Slack")
    sleep(200ms)
    user.parse_phrase(phrase or "")

portal [<phrase>]$:
    user.switcher_focus("Google Chrome")
    sleep(200ms)
    user.parse_phrase(phrase or "")

^terminal [<phrase>]$:
    user.switcher_launch("/Applications/iTerm.app")
    sleep(200ms)
    user.parse_phrase(phrase or "")

^coder [<phrase>]$:
    user.switcher_launch("/Applications/Visual Studio Code.app")
    sleep(200ms)
    user.parse_phrase(phrase or "")

# snap top left:
#     key(function_key-ctrl-alt-cmd-/)
# snap top right:
#     key(function_key-ctrl-alt-cmd-up)
# snap bottom left:
#     key(function_key-ctrl-alt-cmd-left)
# snap bottom right:
#     key(function_key-ctrl-alt-cmd-right)