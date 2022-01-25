# This is meant to be an alternate word for the command key but it's not working yet.
# comrade:
#     key(cmd)

key(f5): 
    speech.toggle()

mac lock screen:
    key(ctrl-cmd-q)

search menus:
    key(shift-cmd-/)

# type ellipses
ominous:
    key(alt-;)

# "shift" is hard to say!
(shit tab | back tab):
    key(shift-tab)

# this ended up being a bad idea because it collides with phrases like go right or go left
# go:
#     key(enter)

bullet:
    key(enter)
    key(-)
    key(space)
    
# triggers TextSniper
sniper:
    key(cmd-shift-2)
    
# half:
#     user.mouse_scroll_down(2)

    
# Paste

(clipboard | clippy):
    key(cmd-shift-p)

