os: mac
and app.bundle: com.1password.1password
-

search (passwords|items):
    key(cmd-f)

copy username:
    key(cmd-c)

copy password:
    key(shift-cmd-c)

copy (one time password|two factor [authentication|code]):
    key(alt-cmd-c)

open and fill:
    key(shift-cmd-f)

edit (item|password):
    key(cmd-e)

    