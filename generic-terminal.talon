tag: terminal
-

# dig:
#     insert("dig")
#     key(space)

# reverse-i-search
reverse eye [search]:
    key(ctrl-r)

clear line:
    key(ctrl-e)
    key(ctrl-u)

lisa list:
    insert("ls -laht")
    key(enter)

[print] working directory:
    insert("pwd")
    key(enter)

(dir | directory) climb:
    insert("cd ..")
    key(enter)

[close] frozen ssh:
    key(enter ~ .)

signal interrupt:
    key(ctrl-c)

# Override of defaults knausj. This does not work right now. Manually pressing the keys definitely does work. Saying "alt delete" does work so I'm not sure what's going on here.
clear word:
    key(alt-backspace)

logout:
    insert("exit")
    key(enter)

history [all]:
    insert("history")
    key(enter)

history <number>:
    insert("history | tail -n{number}")
    key(enter)

history (run | rerun) <number>:
    insert("!{number}")
    key(enter)    

make directory:
    insert("mkdir -p ")