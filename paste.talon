os: mac
-

# Paste clipboard manager
# https://pasteapp.io/

# I don't think this is going to work until I register paste as an app with talon
# Even then there could be some weirdness with window focus due to how paste works

paste plain:
    key(shift-enter)

# The syntax on this command is probably wrong. The idea is to be able to toggle the one through nine shortcuts in paste to paste a specific item.
paste <number>:
    key("cmd-{number}")

(clipboard | clippy):
    key(cmd-shift-p)

(clipboard | clippy) [search] <user.text>:
    key(cmd-shift-p)
    sleep(100ms)
    insert(user.formatted_text(user.text, "ALL_LOWERCASE"))