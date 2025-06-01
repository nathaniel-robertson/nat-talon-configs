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

grep [for] files:
    insert("gre --color=always -ril \"\" .")
    edit.left()
    repeat(2)

grep [for] files [with] context:
    insert("grep --color=always -rin -C 3 \"\" .")
    edit.left()
    repeat(2)

grep:
    insert("grep --color=always -iE \"\"")
    edit.left()

less:
    insert("less -R ")

date stamp:
    insert("date -u +\"%a %d %b %T %Z\"")
    key(enter)

again:
    edit.up()
    sleep(300ms)
    key(enter)
    sleep(300ms)

find file [by name]:
    insert("find . -type f -name \"\"")
    edit.left()

find directory [by name]:
    insert("find . -type d -name \"\"")
    edit.left()

find (file|files) modified in last <number> minutes:
    insert("find . -type f -mmin -{number}") 

find (file|files) modified in last <number> days:
    insert("find . -type f -mtime -{number}")

find directories modified in last <number> minutes:
    insert("find . -type d -mmin -{number}")

find directories modified in last <number> days:
    insert("find . -type d -mtime -{number}")


file sizes:
    insert("( shopt -s dotglob && find . -maxdepth 1 -type f -name \"*\" ) | xargs du -bh | sort -hr | head -n50")
    key(enter)

change mode user execute:
    insert("chmod u+x ")