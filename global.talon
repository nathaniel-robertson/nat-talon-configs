# This is meant to be an alternate word for the command key but it's not working yet.
# comrade:
#     key(cmd)

key(f5): 
    speech.toggle()

mac lock screen:
    speech.disable()
    key(ctrl-cmd-q)

search menus:
    key(shift-cmd-/)

(stick|zoom cancel):
    tracking.zoom_cancel()

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
search page [for] <user.text>:
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
    user.system_command_nb("killall Talon; sleep 1; open /Applications/Talon.app/")

talon kill:
    user.system_command_nb("killall Talon")

# scrape:
#     key(escape)

gaze: user.mouse_gaze_scroll()

gaze off: user.mouse_scroll_stop()

# Makes Talon Siri safe!
# May still cause some trouble if Siri speaking causes Talon to do things
hey siri [<phrase>]$:
    speech.disable()
    app.notify("Siri command ignored, Talon in sleep mode")

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
    tracking.control_zoom_toggle()
    tracking.control_toggle()
    # Open most recent PNG file in inbox in preview
    # Disable Zoom mouse and enable control mouse

screen brightness fix:
    user.mouse_move_center_active_window()
    user.system_command("osascript -e 'tell application \"System Events\"' -e 'key code 145' -e ' end tell'")
    user.system_command("osascript -e 'tell application \"System Events\"' -e 'key code 144' -e ' end tell'")

screen brightness maximum:
    user.mouse_move_center_active_window()
    user.system_command("osascript -e 'tell application \"System Events\"' -e 'key code 145' -e ' end tell'")
    user.system_command("osascript -e 'tell application \"System Events\"' -e 'key code 144' -e ' end tell'")
    repeat(15)

screen brightness down:
    user.mouse_move_center_active_window()
    user.system_command("osascript -e 'tell application \"System Events\"' -e 'key code 145' -e ' end tell'")

screen brightness up:
    user.mouse_move_center_active_window()
    user.system_command("osascript -e 'tell application \"System Events\"' -e 'key code 144' -e ' end tell'")

# "cancel cancel" is frequently misheard as "cancer cancel"
cancer cancel$: skip()

# Thanks Phil Cohen
# Defeating crappy login fields:
    ^(type | insert) the clipboard$:
        text = clip.text()
        insert(text)

^sorry one sec [<phrase>]$: speech.disable()

finder open <user.system_path>: 
    app.notify(system_path)
    user.system_command("open {system_path}")

code open <user.system_path>: 
    app.notify(system_path)
    user.system_command("/usr/local/bin/code {system_path}")

# This makes it easier to input numbers with a decimal in the middle
# The syntax is interesting because I haven't seen this with just double quotes before instead of the insert function
numb <number> point <number>:
    "{number_1}.{number_2}"

numb <number> point <number> point <number>:
    "{number_1}.{number_2}.{number_3}"

numb <number> point <number> point <number> point <number>:
    "{number_1}.{number_2}.{number_3}.{number_4}"   

numb <number> slash <number>:
    "{number_1}/{number_2}" 

^grab selection quick$:
    key(cmd-shift-4)
    sleep(200ms)
    user.mouse_drag(0)