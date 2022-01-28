app: chrome
-
# Turns on caret browsing mode
# https://support.google.com/chrome/answer/10129654?hl=en
chrome caret:
    key(f7)

wordpress go admin:
    key(cmd-l)
    key(cmd-right)
    insert("/wp-admin")
    key(enter)

# function provided by Vimium custom configuration

links:
    key(f)

links tab:
    key(shift-f)

links copy:
    key(y f)

# a lot faster than selecting the address bar, selecting all, and copying that
tab (link | links | URL) copy:
    key(t l c)

tab duplicate:
    key(d)

tab restore:
    tab_reopen()

tab search:
    key(cmd-shift-a)

tab move left:
    key(m l)

tab move right:
    key(m r)