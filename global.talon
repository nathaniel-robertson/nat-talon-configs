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
    sleep(300ms)
    user.mouse_drag(0)
    
search page:
    key(cmd-f)
search page <user.text>:
    key(cmd-f)
    sleep(500ms)
    insert(user.formatted_text(user.text, "ALL_LOWERCASE"))
search page (clip|clipboard|paste):
    key(cmd-f)
    sleep(500ms)
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
    user.system_command_nb("killall Talon; sleep 1; open /Applications/Talon\ Beta.app/")

talon kill:
    user.system_command_nb("killall Talon")

scrape:
    key(escape)

whale downer: user.mouse_scroll_down_continuous()

whale downer here:
    user.mouse_move_center_active_window()
    user.mouse_scroll_down_continuous()

whale upper: user.mouse_scroll_up_continuous()

whale upper here:
    user.mouse_move_center_active_window()
    user.mouse_scroll_up_continuous()

gaze: user.mouse_gaze_scroll()

gaze off: user.mouse_scroll_stop()

# Makes Talon Siri safe!
# May still cause some trouble if Siri speaking causes Talon to do things
hey siri [<phrase>]$: app.notify("Siri command ignored")

# The idea here is that I can insert a pause or multiple pauses in a string of commands. My hope is this will be helpful for applications which are a little bit laggy.
beat:
    sleep(500ms)

clip save:
    edit.copy()

clip load:
    edit.paste()

# Espanso
snippet search:
    key(alt-space)

screenshot (edit|annotate):
    user.system_command_nb("ls -dt /Users/nat/kinsta/inbox/* | grep -iE \"\.png$\" | head -n1 | xargs -I {{}} open \"{{}}\"")
    user.mouse_toggle_zoom_mouse()
    user.mouse_toggle_control_mouse()
    # Open most recent PNG file in inbox in preview
    # Disable Zoom mouse and enable control mouse

brightness fix:
    user.mouse_move_center_active_window()
    user.system_command("osascript -e 'tell application \"System Events\"' -e 'key code 145' -e ' end tell'")
    user.system_command("osascript -e 'tell application \"System Events\"' -e 'key code 144' -e ' end tell'")

brightness maximum:
    user.mouse_move_center_active_window()
    user.system_command("osascript -e 'tell application \"System Events\"' -e 'key code 145' -e ' end tell'")
    user.system_command("osascript -e 'tell application \"System Events\"' -e 'key code 144' -e ' end tell'")
    repeat(15)

brightness down:
    user.mouse_move_center_active_window()
    user.system_command("osascript -e 'tell application \"System Events\"' -e 'key code 145' -e ' end tell'")

brightness up:
    user.mouse_move_center_active_window()
    user.system_command("osascript -e 'tell application \"System Events\"' -e 'key code 144' -e ' end tell'")