os: mac
-

audio up: key(volup)
audio down: key(voldown)

# Commands to change audio outputs
# These are enabled by a command line utility called switchaudio-osx
# It does not support changing audio inputs so I'll need to look at another solution for that, although that is a less common need
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