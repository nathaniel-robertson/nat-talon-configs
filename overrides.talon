os: mac
-

# knausj: keys.py
# caret sounds too much like "go right"
caret:
    edit.right()
rabbit:
    key(^)
    
# knausj: screenshot.talon
# for some reason this command in kausj put screenshot on clipboard instead of saving to file. This fixes the issue.
^grab selection$:
    key(cmd-shift-4)