#!/bin/bash

# Converts Adobe Captivate .mp4 --> .wmv for use in PowerPoint 2010

for i in *.mp4
do
	ffmpeg -i "$i" -r 15 -b:v 450k "${i%mp4}wmv"
done
