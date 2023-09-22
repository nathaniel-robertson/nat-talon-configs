app: vscode
os:  mac
-

# enables knausj_talon emoji
tag(): user.emoji

# like the Slack channel picker
channel [<user.text>]:
    user.vscode("workbench.action.quickOpen")
    sleep(50ms)
    insert(text or "")