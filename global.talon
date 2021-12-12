# This is meant to be an alternate word for the command key but it's not working yet.
comrade:
    key(cmd)

key(f5): 
    speech.toggle()

# this ended up being a bad idea because it collides with phrases like go right or go left
# go:
#     key(enter)

bullet:
    key(enter)
    key(-)
    key(space)

# maximizes window. triggers a better touch tool shortcut
snap max:
    key(ctrl-alt-cmd-up)

snap restore:
    key(ctrl-alt-cmd-down)

snap top left:
    key(fn-ctrl-alt-cmd-/)
snap top right:
    key(fn-ctrl-alt-cmd-up)
snap bottom left:
    key(fn-ctrl-alt-cmd-left)
snap bottom right:
    key(fn-ctrl-alt-cmd-right)
    
# triggers TextSniper
sniper:
    key(cmd-shift-2)
    
# half:
#     user.mouse_scroll_down(2)

    
# Paste

clipboard:
    key(cmd-shift-p)

