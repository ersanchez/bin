#! /bin/bash

# This script installs the animated gif creator, gifine, staring with all of its depedencies.

# Gifine installation

# First install the dependencies for `gifine` and for dependencies of `gifine`'s dependencies:

sudo apt install \
ffmpeg \
graphicsmagick \
gifsicle \
luarocks \
git \
libxext-dev \
libimlib2 \
mesa-utils \
libxrender-dev \
glew-utils \
libglm-dev \
cmake \
compiz \
gengetopt \
libglu1-mesa-dev \
libglew-dev \
libxrandr-dev \
libgirepository1.0-dev && \
echo "*****************************" && \
echo "dependencies installed" && \
echo "*****************************" && \
# Install `slop` using the instructions in the `slop` README.md file.
# https://github.com/naelstrof/slop
cd /opt && \
sudo git clone https://github.com/naelstrof/slop.git && \
echo "*****************************" && \
echo "git installed" && \
echo "*****************************" && \
cd slop && \
sudo cmake -DCMAKE_OPENGL_SUPPORT=true ./ && \
sudo make && sudo make install && \
echo "*****************************" && \
echo "slop installed" && \
echo "*****************************" && \
# Install LGI:
sudo luarocks install.lgi && \
echo "*****************************" && \
echo "LGI installed" && \
echo "*****************************" && \
# Install `gifine`.
sudo luarocks install --server=http://luarocks.org/dev gifine
