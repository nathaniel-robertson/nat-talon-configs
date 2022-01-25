app: chrome
-
# Turns on caret browsing mode
# https://support.google.com/chrome/answer/10129654?hl=en
chrome caret:
    key(f7)

# future enhancement: get user input within same command
search page:
    key(cmd-f)

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
    key(y)
    key(f)

tab duplicate:
    key(d)

tab restore:
    tab_reopen()

tab search:
    key(cmd-shift-a)