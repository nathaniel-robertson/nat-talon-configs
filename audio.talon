os: mac
-

audio up: key(volup)
audio down: key(voldown)

# Commands to change audio outputs
# These are enabled by a command line utility called switchaudio-osx
# It DOES support changing audio inputs so I may add commands for input changes in the future
# The syntax for input changes is switchaudiosource -t input -s "Input Device Name"
# https://github.com/deweller/switchaudio-osx

^audio (out|output) external headphones:
    user.system_command_nb('/usr/local/bin/switchaudiosource -s "External Headphones"')
    app.notify("Audio output changed to External Headphones")

^audio (out|output) scarlet:
    user.system_command_nb('/usr/local/bin/switchaudiosource -s "Scarlett 2i4 USB"')
    app.notify("Audio output changed to Scarlett 2i4 USB")

^audio (out|output) macbook pro speakers:
    user.system_command_nb('/usr/local/bin/switchaudiosource -s "MacBook Pro Speakers"')
    app.notify("Audio output changed to MacBook Pro Speakers")

^audio (out|output) sound blaster:
    user.system_command_nb('/usr/local/bin/switchaudiosource -s "Sound Blaster Play! 3"')
    app.notify("Audio output changed to Sound Blaster Play! 3")

#^audio (out|output) airpods:
    user.system_command('/usr/local/bin/BluetoothConnector -c 20-78-CD-12-B3-B6 --notify')
    sleep(5000ms)
    user.system_command_nb('/usr/local/bin/switchaudiosource -t input -s "Scarlett 2i4 USB [STEREO]"')

^audio (in|input) macbook pro [microphone]:
    user.system_command_nb('/usr/local/bin/switchaudiosource -t input -s "MacBook Pro Microphone"')
    app.notify("Audio input changed to MacBook Pro Microphone")

^audio (in|input) behringer:
    user.system_command_nb('/usr/local/bin/switchaudiosource -t input -s "Behringer XM8500"')
    app.notify("Audio input changed to Behringer XM8500")

^audio (in|input) audio technica [pro hex]:
    user.system_command_nb('/usr/local/bin/switchaudiosource -t input -s "Audio Technica PRO HEx"')
    app.notify("Audio input changed to Audio Technica PRO HEx")