browser.host: pdx.freshdesk.com
-

# tickets Nat:
    
ticket close:
    key(~)

# ticket type:
#     key(p)
#     sleep(500ms)
#     key(shift-tab)
#     sleep(500ms)
#     key(shift-tab)

ticket priority:
    key(p)

ticket expand:
    key(])

ticket reply:
    key(r)
    sleep(1000ms)
    key(up)
    key(up)
    
ticket next:
    key(j)

ticket last:
    key(k)

ticket note:
    key(n)

# this doesn't work right now and I'm not sure why. I tried the key combo directly in Freshdesk and it did not work so something to do with Freshdesk not talon
ticket send menu:
    key(alt-ctrl-enter)