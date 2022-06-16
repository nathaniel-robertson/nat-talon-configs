os: mac
-

# knausj: screenshot.talon
# for some reason this command in kausj put screenshot on clipboard instead of saving to file. This fixes the issue.
^grab selection$:
    key(cmd-shift-4)