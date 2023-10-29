#!/bin/sh

echo "make sure you installed package  xorg-dev"
git submodule init
git submodule update
cd herbstluftwm
rm -Rf build
mkdir build
cd build
cmake ..
make -j6

ln -s config $HOME/config/herbstluftwm
ln -s herbstluftwm/build/herbstclient $HOME/bin/
ln -s herbstluftwm/build/herbstluftwm $HOME/bin/
