
source ./defines.sh

# low/high frequency affects
export PIV_REQ=600

export FT="acompressor=level_in=2.0,haas,$REVERB_SMALL,channelmap=FR-FL|FR-FR,volume=2"

#$FFINPUT | ffmpeg -fflags nobuffer -f avi -i - -af $FT -f avi -  | ffplay -fflags nobuffer  - 



$FFINPUT3 -af $FT -f alsa default

#$FFINPUT | ffmpeg -fflags nobuffer -f avi -i - -filter_complex "[a:0]lowpass=f=$PIV_REQ,$FLANGER_1,acompressor=level_in=1.5[e1];[a:0]highpass=f=$PIV_REQ,$CHORUS_1[e2];[a:0][e1][e2]amix=inputs=3,channelmap=FR-FL|FR-FR,volume=2[out]" -map "[out]"   -f avi -  | ffplay -fflags nobuffer  - 

stty echo


