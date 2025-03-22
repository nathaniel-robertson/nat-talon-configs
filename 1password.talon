os: mac
and app.bundle: com.1password.1password
-

settings():
    key_wait = 5.0

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

    