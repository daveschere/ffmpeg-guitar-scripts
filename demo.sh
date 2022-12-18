#!/usr/bin/env bash 

# Goal:
#      Two affects pipelines one for sound below the A4 note (440) and the other above

source ./defines.sh

# low/high frequency affects
export PIV_REQ=600


#ffmpeg -y -f alsa -ac 2 -i default -f v4l2 -i /dev/video0  -vcodec libx264 record.mp4



$FFINPUT3 -filter_complex "[a:0]lowpass=f=$PIV_REQ[e1];[a:0]highpass=f=$PIV_REQ,$ECHO_2,$REVERB_LARGE[e2];[a:0][e1][e2]amix=inputs=3,channelmap=FR-FL|FR-FR,acompressor=level_in=2,volume=5,asplit[out][out2]" -map "[out]" -f alsa default -c:a aac -map "[out2]" -f avi -  -f avi dry.avi |  ffmpeg -y -analyzeduration 1 -fflags nobuffer  -vsync 1  -f avi -i - -f v4l2 -i /dev/video0 -r 30 -vcodec libx264 record.mp4
 
stty echo






