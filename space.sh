#!/usr/bin/env bash 

# Goal:
#      Two affects pipelines one for sound below the A4 note (440) and the other above

source ./defines.sh

# low/high frequency affects
export PIV_REQ=440

$FFINPUT3 -filter_complex "[a:0]lowpass=f=$PIV_REQ[e1];[a:0]highpass=f=$PIV_REQ,$ECHO_2,$REVERB_LARGE[e2];[a:0][e1][e2]amix=inputs=3,channelmap=FR-FL|FR-FR,acompressor=level_in=2,volume=5[out]" -map "[out]"  -f alsa default 

stty echo






