tag: terminal
title: /vim/
-

quit:
    key(escape)
    key(escape)
    key(:)
    insert("q")
    key(enter)

(save | write) [and] quit:
    key(escape)
    key(escape)
    key(:)
    insert("wq")
    key(enter)

(save | write):
    key(escape)
    key(escape)
    key(:)
    insert("w")
    key(enter)

quit [and] discard:
    key(escape)
    key(escape)
    key(:)
    insert("q!")
    key(enter)

(refresh|reload):
    key(escape)
    key(escape)
    key(:)
    insert("e")
    key(enter)

line numbers on:
    key(escape)
    key(escape)
    key(:)
    insert("set number")
    key(enter)

line numbers off:
    key(escape)
    key(escape)
    key(:)
    insert("set nonumber")
    key(enter)

insert:
    key(escape)
    key(escape)
    key(i)

poke:
    key(right)
    key(backspace)

normal:
    key(escape)
    key(escape)

page down:
    key(ctrl-f)

page up:
    key(ctrl-u)
    key(ctrl-u)

pop:
    key(escape)
    key(escape)
    key(0)

push:
    key(escape)
    key(escape)
    key($)

go [line] <number>:
    # key(escape)
    # key(escape)
    key(enter)
    sleep(200ms)
    insert("{number}")
    key(shift-g)

delete character:
    key(escape)
    key(escape)
    key(x)

change character:
    key(escape)
    key(escape)
    key(r)

change word:
    key(escape)
    key(escape)
    key(c e)

change past end of line:
    key(escape)
    key(escape)
    key(c $)

undo:
    key(escape)
    key(escape)
    key(u)

redo:
    key(escape)
    key(escape)
    key(ctrl-r)

clear word next:
    key(escape)
    key(escape)
    key(d w)

clear line:
    key(escape)
    key(escape)
    key(d d)

step:
    key(escape)
    key(escape)
    key(w)

stone:
    key(escape)
    key(escape)
    key(b)

forward:
    key(escape)
    key(escape)
    key(f)

backward:
    key(escape)
    key(escape)
    key(shift-f)

pre file:
    key(escape)
    key(escape)
    key(g g)

post file:
    key(escape)
    key(escape)
    key(shift-g)

search page:
    key(escape)
    key(escape)
    key(/)

match next:
    key(escape)
    key(escape)
    key(n)

match previous:
    key(escape)
    key(escape)
    key(shift-n)