os: mac
app.bundle: com.microsoft.Outlook
-

(section | zone) [next]: key(ctrl-shift-])
(section | zone) (previous | last): key(ctrl-shift-[)

archive: key(ctrl-e)
flag: key(ctrl-5)
(clear flag | unflag): key(alt-cmd-')
mark read: key(cmd-t)
mark unread: key(cmd-shift-t)
new email: key(cmd-n)
Reply: key(cmd-r)
Reply all: key(cmd-shift-r)
Forward: key(cmd-j)
search email: key(cmd-f)
search messages: key(alt-cmd-f)
send email: key(cmd-enter)

# Calendar
# I'm considering splitting this into two files in the future and filtering by window title

next week:
    key(alt-cmd-right)

last week:
    key(alt-cmd-left)

# I'm guessing there is a better way inside of Talon to directly target a menu item. Applescript if nothing else.
new (event | meeting):
    key(shift-cmd-/)
    key(backspace)
    insert("New > Meeting")
    edit.down()
    key(enter)