# This is meant to be an alternate word for the command key but it's not working yet.
# comrade:
#     key(cmd)

key(f5): 
    speech.toggle()

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

clipboard:
    key(cmd-shift-p)

