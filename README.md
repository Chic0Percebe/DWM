# GUÍA DE INSTALACIÓN DWM(Gentoo)
En primer lugar instalamos las dependencias necesarias, empezando por las de DWM. Para facilitar la instalación de dependencias de picom, instalamos la versión base **x11-misc/picom** y luego compilamos e instalamos la version de jonaburg, que sustituirá la version base.
## Dependencias en Arch
### Dependencias para DWM base
* git
* fontconfig
* xorgproto
* libx11
* libxft
* libxinerama
### Dependencias específicas para mi DWM
* alacritty
* ttf-jetbrains-mono
* ttf-font-awesome
* feh
* xorg-xsetroot
* xorg-setxkbmap
* otf-takao(AUR)
* volctl(AUR)
* network-manager-applet


En resumen, la instalación de dependencias sería:
```
sudo pacman -S git fontconfig xorgproto libx11 lixft libxinerama alacritty ttf-jetbrains-mono ttf-font-awesome feh xorg-xsetroot xorg-setxkbmap network-manager-applet
yay -S otf-takao volctl
```
## Dependencias en Gentoo
### Dependencias para DWM base
* dev-vcs/git
* media-libs/fontconfig
* x11-base/xorg-proto
* x11-libs/libX11
* x11-libs/libXft
* x11-libs/libXinerama
### Dependencias específicas para mi DWM
* x11-terms/alacritty
* media-fonts/jetbrains-mono
* jonaburg/picom(Su instalacion se detalla en otro documento)
* media-fonts/fontawesome
* media-gfx/feh
* x11-apps/xsetroot
* x11-apps/setxkbmap
* media-fonts/kochi-substitute o media-fonts/takao-fonts
* media-sound/pnmixer
* gnome-extra/nm-applet
### Dependencias para jonaburg/picom
* sys-devel/gcc
* app-text/asciidoc				
* dev-lang/python				
* dev-libs/libconfig				
* dev-libs/libev				
* dev-libs/libpcre				
* dev-libs/uthash				
* dev-python/xcffib				
* dev-util/meson				
* dev-util/meson-format-array				
* dev-util/ninja				
* dev-vcs/git				
* sys-apps/dbus				
* virtual/opengl				
* virtual/pkgconfig				
* x11-apps/xhost				
* x11-base/xorg-proto				
* x11-base/xorg-server				
* x11-libs/libX11				
* x11-libs/libXext				
* x11-libs/libdrm				
* x11-libs/libxcb				
* x11-libs/pixman				
* x11-libs/xcb-util-image				
* x11-libs/xcb-util-renderutil


En resumen, la instalación de dependencias sería:
```
sudo emerge --ask dev-vcs/git media-libs/fontconfig x11-base/xorg-proto x11-libs/libX11 x11-libs/libXft x11-libs/libXinerama x11-terms/alacritty media-fonts/jetbrains-mono media-fonts/fontawesome media-gfx/feh x11-apps/xsetroot x11-apps/setxkbmap media-fonts/kochi-substitute(o media-fonts/takao-fonts) media-sound/pnmixer gnome-extra/nm-applet sys-devel/gcc app-text/asciidoc dev-lang/python dev-libs/libconfig	dev-libs/libev dev-libs/libpcre dev-libs/uthash	dev-python/xcffib	dev-util/meson dev-util/meson-format-array dev-util/ninja dev-vcs/git sys-apps/dbus virtual/opengl virtual/pkgconfig			x11-apps/xhost x11-base/xorg-server x11-libs/libXext x11-libs/libdrm x11-libs/libxcb x11-libs/pixman x11-libs/xcb-util-image x11-libs/xcb-util-renderutil
```
## Compilación DWM, DMENU y ST
Para poder compilar correctamente, habremos de eliminar los ficheros objeto presentes(.o) en cada directorio(dwm, dmenu, y st) y los posibles ejecutables. Tras esto, podremos proceder con la compilación e instalación. Para hacerlo, ejecutaremos:
```
sudo make clean install
```
Este comando compilará el codigo y posteriormente lo movera a **/usr/local/bin**. Una vez obtenidos los ejecutables, sólo queda mover el script de inicialización(dwmstart) a una ruta del PATH(preferiblemente **/usr/local/bin**) y añadir la entrada .desktop a **/usr/share/xsessions**, para que sea reconocido por el GDM(en mi caso):
```
sudo cp dwmstart /usr/local/bin
sudo cp dwm.desktop /usr/share/xsessions
sudo reboot
```
