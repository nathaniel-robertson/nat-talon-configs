os: mac
app: iterm2
-

copy mode [on]:
    key(cmd-shift-c)

term copy character:
    key(v)

term copy line:
    key(shift-v)

term copy rectangle:
    key(ctrl-v)

term end selection:
    key(ctrl-space)

term (copy|yank) selection:
    key(y)

term [copy] [move] to top:
    key(shift-h)

term [copy] [move] to middle:
    key(shift-m)

term [copy] [move] to bottom:
    key(shift-l)

copy mode off:
    key(q)

