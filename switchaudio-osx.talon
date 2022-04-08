os: mac
-

# https://github.com/deweller/switchaudio-osx

audio output (desk speakers | headphones):
    user.system_command_nb('/usr/local/bin/switchaudiosource -s "External Headphones"')

audio output desk headphones:
    user.system_command_nb('/usr/local/bin/switchaudiosource -s "Scarlett 2i4 USB"')

audio output laptop speakers:
    user.system_command_nb('/usr/local/bin/switchaudiosource -s "MacBook Pro Speakers"')