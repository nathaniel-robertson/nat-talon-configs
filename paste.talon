os: mac
-

# Paste clipboard manager
# https://pasteapp.io/

# I don't think this is going to work until I register paste as an app with talon
# Even then there could be some weirdness with window focus due to how paste works
# 2022-09-28 Using the talon context command I was able to see that there is an available context for paste when the window is open. But some of these commands still need to be global, so I may split this to two files

# In cases where paste gets laggy or weird
paste restart:
    user.system_command_nb("killall Paste; sleep 1; open /Applications/Paste.app/")

paste plain|clip load unformatted|clip load plain:
    key(cmd-shift-p)
    sleep(150ms)
    key(shift-enter)

# The syntax on this command is probably wrong. The idea is to be able to toggle the one through nine shortcuts in paste to paste a specific item.
paste <number>|load <number>:
    key("cmd-{number}")

clipboard|clippy|clip history|clip [load] list:
    key(cmd-shift-p)

(clipboard | clippy | clip history|clip [load] list) [search] <user.text>:
    key(cmd-shift-p)
    sleep(100ms)
    insert(user.formatted_text(user.text, "ALL_LOWERCASE"))

(clipboard toggle sound | clippy toggle sound | clip history toggle sound):
    key(cmd-shift-p)
    sleep(500ms)
    key(cmd-,)
    key(tab)
    repeat(2)
    sleep(500ms)
    key(space)
    # sleep(2000ms)
    key(escape)
    key(cmd-tab)
    key(cmd-tab)