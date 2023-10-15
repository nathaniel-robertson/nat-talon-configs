os: mac
app: finder
-

open with:
    key(shift-cmd-/)
    key(backspace)
    insert("open with ")

(file open | folder open):
    key(cmd-down)

(file parent | dir climb):
    key(cmd-up)

move item [here]:
    key(alt-cmd-v)