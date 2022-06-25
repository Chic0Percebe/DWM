# GUÍA DE INSTALACIÓN DWM(Gentoo)
En primer lugar instalamos las dependencias necesarias, empezando por las de DWM. Para facilitar la instalación de dependencias de picom, instalamos la versión base **x11-misc/picom** y luego compilamos e instalamos la version de jonaburg, que sustituirá la version base.
## Dependencias para DWM
* dev-vcs/git
* media-libs/fontconfig
* x11-base/xorg-proto
* x11-libs/libX11
* x11-libs/libXft
* x11-libs/libXinerama
## Dependencias específicas para mi DWM
* x11-terms/alacritty
* media-fonts/jetbrains-mono
* jonaburg/picom(Su instalacion se detalla en otro documento)
* media-fonts/fontawesome
* media-gfx/feh
* x11-apps/xsetroot
* x11-apps/setxkbmap
## Dependencias para jonaburg/picom
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
## Compilación DWM, DMENU y ST
Para poder compilar correctamente, habremos de eliminar los ficheros objeto presentes(.o) en cada directorio(dwm, dmenu, y st) y los posibles ejecutables. Tras esto, podremos proceder con la compilación e instalación. Para hacerlo, ejecutaremos:
```
make && sudo make install
```
Este comando compilará el codigo y posteriormente lo movera a **/usr/local/bin**. Una vez obtenidos los ejecutables, sólo queda mover el script de inicialización(dwmstart) a una ruta del PATH(preferiblemente **/usr/local/bin**) y anadir la entrada .desktop a **/etc/X11/xsessions**, para que sea reconocido por el GDM(en mi caso).
