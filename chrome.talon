app: chrome
-

tag(): user.emoji

# Turns on caret browsing mode
# https://support.google.com/chrome/answer/10129654?hl=en
chrome caret:
    key(f7)

wordpress go admin:
    key(cmd-l)
    key(cmd-right)
    insert("/wp-admin")
    key(enter)

# Show TLS/SSL certificate. I'm sure this is really dumb with the repeating lines, but I do not know what the proper syntax is
(certificate | cert) show:
    browser.focus_address()
    key(shift-tab)
    key(space)
    key(tab)
    key(tab)
    key(enter)
    key(tab)
    repeat(2)
    key(enter)

tab new (clipboard | paste):
    app.tab_open()
    sleep(200ms)
    edit.paste()
    sleep(200ms)
    key(enter)

tab this (clipboard | paste):
    browser.focus_address()
    sleep(200ms)
    edit.paste()
    sleep(200ms)
    key(enter)

(tab link rich copy | pretty page link):
    key(ctrl-shift-p)
    sleep(500ms)
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