os: mac
app: slack
-

tag(): user.emoji()

# https://slack.com/help/articles/201374536-Slack-keyboard-shortcuts

(slack | lack) (jump | switch):
    key(cmd-k)

(slack | lack) search:
    key(cmd-f)
    
    
(slack | lack) status:
    key(cmd-shift-y)

((slack | lack) (upload | attach))|insert image:
    key(cmd-u)

([sidebar] close thread | [sidebar] thread close| sidebar close):
    user.mouse_helper_position_save()
    user.mouse_helper_move_image_relative("2023-07-11_16.33.40.211427.png", 0)
    sleep(0.05)
    mouse_click(0)
    sleep(0.05)
    user.mouse_helper_position_restore()

markdown:
    key(cmd-shift-f)

code block:
    key(cmd-alt-shift-c)

[insert] [hyper] link:
    key(cmd-shift-u)

bold:
    key(cmd-b)

(italic | italics):
    key(cmd-i)
    
monospace:
    key(cmd-shift-c)

block quote:
    key(cmd-shift-9)

bullets:
    key(cmd-shift-8)

(ordered | numbered) list:
    key(cmd-shift-7)

message send:
    key(enter)

activity:
    key(cmd-shift-m)

later:
    user.mouse_helper_position_save()
    user.mouse_helper_move_image_relative("2023-10-22_11.22.30.190394.png", 0)
    sleep(0.05)
    mouse_click(0)
    sleep(0.05)
    user.mouse_helper_position_restore()

direct messages:
    key(cmd-shift-k)

home:
    user.mouse_helper_position_save()
    user.mouse_helper_move_image_relative("2023-10-22_10.14.07.937530.png", 0)
    sleep(0.05)
    mouse_click(0)
    sleep(0.05)
    user.mouse_helper_position_restore()

threads:
    key(cmd-shift-t)

copy message link:
    tracking.zoom_cancel()    
    mouse_click(1)
    sleep(300ms)
    key(l)

copy link:
    tracking.zoom_cancel()    
    mouse_click(1)
    sleep(200ms)
    insert("copy link")
    sleep(200ms)
    key(enter)

(get (notified|notifications) about [new] replies)|(get reply notifications):
    tracking.zoom_cancel()   
    mouse_click(1)
    sleep(300ms)
    edit.up()
    sleep(150ms)
    edit.right()
    sleep(150ms)
    edit.down()
    sleep(1000ms)
    key(enter)

remind me about this:
    tracking.zoom_cancel()   
    mouse_click(1)
    sleep(300ms)
    edit.up()
    edit.up()
    edit.up()
    sleep(150ms)
    edit.right()