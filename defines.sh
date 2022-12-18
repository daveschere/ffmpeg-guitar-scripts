#!/usr/bin/env bash


# mono to stero
#ffmpeg -i dry.mp3  -filter_complex "channelmap=FR-FL|FR-FR[out]" -map "[out]"  -f mp3 dry-s.mp3

export FFINPUT="ffmpeg -analyzeduration 1 -fflags nobuffer -y -re -f alsa -i hw:1 -f mp3 dry.mp3 -f avi - "

export FFINPUT_2="ffmpeg -analyzeduration 1  -fflags nobuffer -f avi -i "

export FFINPUT3="ffmpeg -analyzeduration 1 -fflags nobuffer -y -re -f alsa -i hw:1 "

export ECHO_2="aecho=0.5:0.5:500|1000:0.4|0.2"

export ECHO_1="aecho"

#export DISTORTION_1="asoftclip=type=hard"

export REVERB_LARGE="ladspa=file=tap_reverb:tap_reverb:controls=c0=5000"

export REVERB_SMALL="ladspa=file=tap_reverb:tap_reverb:controls=c0=1000"

export CHORUS_1="chorus=in_gain=0.5:out_gain=0.9:delays=' 50':decays='  0.4':speeds='  0.25':depths='  2'"

export PHASER_1="aphaser=type=t:speed=1:decay=0.6"
export FLANGER_1="flanger=delay=0:depth=2:regen=0:width=71:shape=sinusoidal:phase=50:interp=linear"
