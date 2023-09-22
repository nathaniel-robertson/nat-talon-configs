browser.host: docs.google.com
-
# Eventually I can separate this out into docs and sheets by including the window title as well, I think

sheet menu:
    key(alt-shift-s)

sheet rename:
    key(alt-shift-s)
    sleep(200ms)
    edit.down()
    repeat(3)
    key(enter)

sheet delete:
    key(alt-shift-s)
    sleep(200ms)
    edit.down()
    key(enter)
    sleep(200ms)
    key(enter)

sheet duplicate:
    key(alt-shift-s)
    sleep(200ms)
    edit.down()
    repeat(1)
    key(enter)

sheet list:
    key(shift-alt-k)

sheet next:
    key(cmd-shift-pagedown)

sheet last:
    key(cmd-shift-pageup)

sheet search menus:
    key(alt-/)

fill down:
    key(cmd-d)

(bullet clear)|(clear bullet):
    edit.delete_line()
    repeat(3)

bold:
    key(cmd-b)

italic:
    key(cmd-i)

[insert] comment:
    key(cmd-alt-m)