# ffmpeg-guitar-scripts
bash scripts for turning your computer into a guitar affects processor using ffmpeg (no jack server needed)

# Overview
I am running on Linux.
After wasting time with rakarrak + jack + alsa and the result is no audio, I realized that all I needed was ffmpeg.

# Setup.
These scripts assume you have a guitar a2d converter, I am using the M-Track SOLO a cheap converter for about $50
that allows me to plug my guitar into me computer. On Linux my input to ffmpeg is hw:1. You can discover
what it is on your system if its Linux by running this command `arecord -l`

These scripts read from the usb, apply affects and send to the default out of alsa which are your speakers (or HDMI or whatever you want to configure in pulseaudio).

| Script   |  Description                                                      |
| -------- | ----------------------------------------------------------------- |
| space.sh |  echo,reverb applied to >440hz frequencies + compressor           |      
| glass.sh |  reverb, crystalizer applied to  >600hz frequencies + compressor  |
| sharp.sh |  compressor, haas filter, small room reverb                       |
| demo.sh  |  webcam recording with audio from affects, also record dry signal |






