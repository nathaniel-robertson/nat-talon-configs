os: mac
-

# https://github.com/deweller/switchaudio-osx

audio output (desk speakers | headphones):
    user.system_command_nb('/usr/local/bin/switchaudiosource -s "External Headphones"')
    app.notify("Audio output changed to desk speakers or headphones plugged into laptop")

audio output desk headphones:
    user.system_command_nb('/usr/local/bin/switchaudiosource -s "Scarlett 2i4 USB"')
    app.notify("Audio output changed to headphones plugged into USB audio interface")

audio output laptop speakers:
    user.system_command_nb('/usr/local/bin/switchaudiosource -s "MacBook Pro Speakers"')
    app.notify("Audio output changed to MacBook Pro speakers")