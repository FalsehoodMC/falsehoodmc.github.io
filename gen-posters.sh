#!/bin/bash
for f in *.mp4; do
	poster=$(basename "$f" .mp4)-poster.jpg
	if [ ! -f "$poster" ]; then
		ffmpeg -i "$f" -frames 1 "$poster" &
	fi
done
wait
