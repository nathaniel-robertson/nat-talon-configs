#browser.host: meet.google.com
app.bundle: com.google.Chrome.app.kjgfgldnnfoeklkmfkjfagphfepbbdan
mode: all
-

(muting [my microphone|microphone|my mic|myself] [now]|going on mute [now]|[thanks] that's all [thanks]|mute [me|mic|microphone|my microphone]):
    key(cmd-d)
    speech.enable()
    app.notify("🔵 TALON IS LISTENING")

(unmute [me|mic|microphone|my microphone]|unmuting [now]|speak|let me speak|speaking):
    key(cmd-d)
    speech.disable()
    app.notify("🩶 Talon is no longer listening")

[raise|lower] [my] hand:
    key(ctrl-cmd-h)

[turn] [my] (camera|webcam|video) (on|off):
    key(cmd-e)

^(talon wake)+$:
    app.notify("Wake phrase disabled while Google Meet is focused")

^kinsta [talon] wake$:
    app.notify("Wake phrase disabled while Google Meet is focused")

^personal [talon] wake$:
    app.notify("Wake phrase disabled while Google Meet is focused")

^(wake up)+$:
    app.notify("Wake phrase disabled while Google Meet is focused")

^go to sleep [<phrase>]$:
    speech.disable()
    app.notify("🩶 Talon is no longer listening but this does not automatically unmute the microphone in Google Meet")

^talon sleep [<phrase>]$:
    speech.disable()
    app.notify("🩶 Talon is no longer listening but this does not automatically unmute the microphone in Google Meet")

# Ideas for more enhancements:
    # Globally scoped command to bring up Google Meet or Zoom meeting window
    # Overrides to disable normal Talon wake words
    # Possibly a command that's very hard to trigger accidentally that will wake up talon?