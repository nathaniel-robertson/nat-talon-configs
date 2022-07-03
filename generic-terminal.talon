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

close frozen ssh:
    key(enter ~ .)

# Override of defaults knausj. This does not work right now. Manually pressing the keys definitely does work. Saying "alt delete" does work so I'm not sure what's going on here.
clear word:
    key(alt-backspace)

query a:
    insert("dig a ")

query name server:
    insert("dig ns ")

query text [record]:
    insert("dig txt ")

query mail [record]:
    insert("dig mx ")

query authoritative:
    insert("query_authoritative_nameserver ")

logout:
    insert("exit")
    key(enter)

history [all]:
    insert("history")
    key(enter)

history <number>:
    insert("history | tail -n{number}")
    key(enter)

(run | rerun) [history] <number>:
    insert("!{number}")
    key(enter)    