#!/bin/sh
OUTPUT="$(PROXY_TYPE=TVH DEBUG=0 ./proxy.py $1)"
if [ $? -eq 0 ]; then
    ffmpeg $OUTPUT
else
    echo $OUTPUT
fi