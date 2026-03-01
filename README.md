herbstluftwm setup
==================

One of the window managers I am currently using, and the configuration I use.
Including a setup script to install it on new machines.

Supposed to be checked out at ~/.herbstluftwm .


Notes
=====

Installation
------------

see ./setup.sh

Useful helper tools
-------------------

* xprop -- property displayer for X
* xwininfo -- window information utility for X
 - xwininfo -root -children
* xlsclients -- list client applications running on display

Custom polybar
--------------

CURRENTLY NOT USED!

installing custom polybar:

* `libcairo2-dev`
* `libuv1-dev`
* `libxcb-randr0-dev`
* `libxcb-composite0-dev`
* `libxcb-icccm4-dev`
* `libxcb-util-dev`
* `libxcb-ewmh-dev`
* `libxcb-image0-dev`
* `libpulse-dev`
* `xcb-proto`

init submodules

run `build.sh` and use defaults (N) except for:

* pulseaudio: YES
* polybar-msg: YES
* parallel make: YES
