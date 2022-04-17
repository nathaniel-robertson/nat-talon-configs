os: mac
-

audio up: key(volup)
audio down: key(voldown)

# Commands to change audio outputs
# These are enabled by a command line utility called switchaudio-osx
# It DOES support changing audio inputs so I may add commands for input changes in the future
# The syntax for input changes is switchaudiosource -t input -s "Input Device Name"
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

audio output airpods:
    user.system_command('/usr/local/bin/BluetoothConnector -c 20-78-CD-12-B3-B6 --notify')
    sleep(5000ms)
    user.system_command_nb('/usr/local/bin/switchaudiosource -t input -s "Scarlett 2i4 USB [STEREO]"')
