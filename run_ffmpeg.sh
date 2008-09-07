#ffmpeg.exe -i 1_%04d.jpg -r 25 -qscale 2 -mbd rd -flags +4mv+trell+aic 
#-cmp 2 -subcmp 2 -g 300 -an striscia1.flv
#or
#ffmpeg -i 1_%04d.jpg -an -r 25 -vcodec mpeg4 -qscale 2 -mbd 2 -flags 
#+4mv+trell -aic 2 -cmp 2 -subcmp 2 striscia1.mp4
#or as well with mencoder:
#mencoder mf://*.jpg -mf w=720:h=576:fps=25:type=jpg -ovc copy -oac copy 
#-o mjpeg.avi

ffmpeg -i seq%d.png test.mov