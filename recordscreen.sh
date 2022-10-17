ffmpeg -y -video_size 2560x1440 -framerate 24 -f x11grab -i :1+2560,0 -f pulse -ac 10 -i alsa_output.pci-0000_09_00.4.analog-stereo.monitor -crf 30 gameplay.mp4
