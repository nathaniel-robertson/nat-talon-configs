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

(slack | lack) (upload | attach):
    key(cmd-u)

(cursor | mouse) sidebar:
    user.mouse_helper_move_image_relative("2022-05-1_14.29.05.469137.png", 0, -60, 74)
    sleep(0.05)
    sleep(0.05)


([sidebar] close thread | [sidebar] thread close| sidebar close):
    user.mouse_helper_position_save()
    user.mouse_helper_move_image_relative("2022-05-31_14.29.05.469137.png", 0)
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