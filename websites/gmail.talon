browser.host: mail.google.com
-

inbox next:
    key(`)

inbox last:
    key(~)

go inbox:
    key(g i)

page next:
    key(g n)

page last:
    key(g p)

[message] delete:
    key(#)

archive:
    key(e)

(flag | star | clear flag | unflag | unstar):
    key(s)

label:
    key(l)

move:
    key(v)

mark read:
    key(shift-i)

mark unread:
    key(shift-u)

new email:
    key(c)

Reply:
    key(r)

Reply all:
    key(a)

Forward:
    key(f)

(search messages | search [all] conversations):
    key(/)

send email:
    key(cmd-enter)

toolbar:
    key(,)

select down:
    key(j)
    sleep(200ms)
    key(x)

select up:
    key(k)
    sleep(200ms)
    key(x)

undo [that]:
    key(z)