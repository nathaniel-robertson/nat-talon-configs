os: mac
app.bundle: com.microsoft.Outlook
-

[next] (section | zone): key(ctrl-shift-])
(previous | last) (section | zone): key(ctrl-shift-[)

archive: key(ctrl-e)
new email: key(cmd-n)
Reply: key(cmd-r)
Reply all: key(cmd-shift-r)
Forward: key(cmd-j)

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