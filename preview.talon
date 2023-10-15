os: mac
app: preview
-

rectangle|square|box:
    key(ctrl-cmd-r)

oval|circle:
    key(ctrl-cmd-o)

(zero|arrow):
    key(ctrl-cmd-a)

text [box]:
    key(ctrl-cmd-t)

crop:
    user.mouse_drag(0)
    sleep(2000ms)
    user.mouse_drag_end()
    key(cmd-k)