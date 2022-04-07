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