#!/bin/bash -xe

echo "make sure you installed packages:"
echo " - xorg-dev"
echo " - asciidoc"
echo " - stterm"
echo " - polybar"
echo " - suckless-tools (for dmenu_run)"

git submodule foreach git submodule init
git submodule foreach git submodule update
git submodule foreach git clean -dfx
git submodule foreach git reset HEAD --hard

pushd herbstluftwm
rm -Rf build
mkdir build
cd build
cmake ..
make -j$(nproc)
popd

rm -rf $HOME/.config/herbstluftwm
mkdir -p $HOME/.config/herbstluftwm
ln -s $(pwd)/config/autostart $HOME/.config/herbstluftwm/autostart

rm -rf $HOME/.config/polybar
mkdir -p $HOME/.config/polybar
ln -s $(pwd)/config/polybar.ini $HOME/.config/polybar/config.ini

for BINARY in $(pwd)/bin/*; do
	NAME=$(basename "$BINARY")
	TARGET="$HOME/bin/$NAME"
	rm -f "$TARGET"
	ln -s "$BINARY" "$TARGET"
done;

for L in ~/.xsession ~/.xinitrc; do
	rm -f $L
	ln -s $(pwd)/config/xsession $L
done;
