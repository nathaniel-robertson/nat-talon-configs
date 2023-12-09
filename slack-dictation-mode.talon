os: mac
app: slack
mode: dictation
-

tag(): user.emoji()

# The default key presses for a new paragraph in dictation mode will send the message in Slack. This fixes that.
new paragraph:
    key(shift-enter)
    key(shift-enter)