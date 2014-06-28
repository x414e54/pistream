#! /bin/bash
STREAM_KEY=$(cat ~/.twitch_key)
 
raspvid -w 640 -h -t -fps 25 -o - | avconv -i - -vcodec copy -r 25 -an -f flv "rtmp://live.justin.tv/app/$STREAM_KEY"
