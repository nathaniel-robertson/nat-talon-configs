# This is meant to be an alternate word for the command key but it's not working yet.
# comrade:
#     key(cmd)

key(f5): 
    speech.toggle()

mac lock screen:
    key(ctrl-cmd-q)

search menus:
    key(shift-cmd-/)

stick:
    user.mouse_cancel_zoom_mouse()

shenter:
    key(shift-enter)

# play on words of mashing "pause" and "enter" together
# presses "enter" with a brief pause before and after
# useful for interacting with certain web apps, especially if you repeat the command
punter:
    sleep(300ms)
    key(enter)
    sleep(300ms)

# sort of a play on words of mashing "alt" and "enter" together
antler:
     key(alt-enter)

# type ellipses
ominous:
    key(alt-;)

secure address:
    insert("https://")

# this is a common separator I use in titles
dasher:
    insert(" - ")

# "shift" is hard to say!
(shit tab | back tab):
    key(shift-tab)

# this ended up being a bad idea because it collides with phrases like go right or go left
# go:
#     key(enter)

# bullet:
#     key(enter)
#     key(-)
#     key(space)
    
# triggers TextSniper
sniper:
    key(cmd-shift-2)
    
search page:
    key(cmd-f)
search page <user.text>:
    key(cmd-f)
    insert(user.formatted_text(user.text, "ALL_LOWERCASE"))    
# half:
#     user.mouse_scroll_down(2)

    
# Paste

(clipboard | clippy):
    key(cmd-shift-p)

