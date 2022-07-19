#!/bin/bash
sudo emerge --ask dev-vcs/git media-libs/fontconfig x11-base/xorg-proto x11-libs/libX11 x11-libs/libXft x11-libs/libXinerama x11-terms/alacritty media-fonts/jetbrains-mono media-fonts/fontawesome media-gfx/feh x11-apps/xsetroot x11-apps/setxkbmap media-fonts/takao-fonts media-sound/pnmixer gnome-extra/nm-applet sys-devel/gcc app-text/asciidoc dev-lang/python dev-libs/libconfig dev-libs/libev dev-libs/libpcre dev-libs/uthash dev-python/xcffib dev-util/meson dev-util/meson-format-array dev-util/ninja sys-apps/dbus virtual/opengl virtual/pkgconfig x11-apps/xhost x11-base/xorg-server x11-libs/libXext x11-libs/libdrm x11-libs/libxcb x11-libs/pixman x11-libs/xcb-util-image x11-libs/xcb-util-renderutil
cd myDwm
sudo make clean install
cd ../myDmenu
sudo make clean install
cd ..
sudo cp dwmstart /usr/local/bin
sudo cp dwm.desktop /usr/share/xsessions
mkdir /home/alc111/.config/picom
cp picom.conf /home/alc111/.config/picom
