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
    sleep(100ms)
    user.mouse_drag(0)
    
search page:
    key(cmd-f)
search page <user.text>:
    key(cmd-f)
    sleep(200ms)
    insert(user.formatted_text(user.text, "ALL_LOWERCASE"))
search page (clipboard | paste):
    key(cmd-f)
    edit.paste()

# half:
#     user.mouse_scroll_down(2)

reminder mark complete:
    user.click_spot("notification menu")
    sleep(500ms)
    edit.down()  
    sleep(500ms)
    key(enter)

notification (close | hide):
    user.mouse_helper_position_save()
    user.move_to_spot("notification clothes")
    sleep(300ms)
    mouse_click(0)
    user.mouse_helper_position_restore()

notification menu:
    user.click_spot("notification menu")

talon restart:
    user.system_command_nb("killall Talon; sleep 0.5; open /Applications/Talon\ Beta.app/")

talon kill:
    user.system_command_nb("killall Talon")

scrape:
    key(escape)