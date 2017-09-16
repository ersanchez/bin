#!/bin/bash

# Takes the clipboard contents, strips out "new line" breaks
# and puts results back in the clipboard

xsel -o | tr '\n' ' ' | xsel -b
