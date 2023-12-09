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

tab restore:
    tab_reopen()

tab search:
    key(cmd-shift-a)

tab move left:
    key(ctrl-shift-p)

tab move right:
    key(ctrl-shift-s)

# Command for opening link under cursor in new tab
blank:
    tracking.zoom_cancel()    
    key(cmd:down)
    mouse_click(0)
    key(cmd:up)
    sleep(500ms)
    app.tab_next()

# Command for opening link under cursor in new tab
stash:
    tracking.zoom_cancel()    
    key(cmd:down)
    mouse_click(0)
    key(cmd:up)

# Command for copying link under cursor
copy link:
    tracking.zoom_cancel()    
    mouse_click(1)
    sleep(300ms)
    insert("copy link address")
    sleep(300ms)
    key(enter)

# Command for copying link text under cursor
copy text$:
    tracking.zoom_cancel()    
    mouse_click(1)
    sleep(300ms)
    insert("copy")
    sleep(300ms)
    key(enter)