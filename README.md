# GUIA INSTALACION DWM(Gentoo)
En primer lugar instalamos las dependencias necesarias, empezando por las de DWM. Para facilitar la instalacion de dependencias de picom, instalamos la version base x11-misc/picom y luego compilamos e instalamos al version de jonaburg, que sustituira la version base.
## Dependencias para DWM
-dev-vcs/git
-media-libs/fontconfig
-x11-base/xorg-proto
-x11-libs/libX11
-x11-libs/libXft
-x11-libs/libXinerama
## Dependencias especificas para mi DWM
-alacritty
-JetBrainsMono font
-jonaburg/picom(Su instalacion se detalla en otro documento)
-awesomefonts
-feh
-x11-apps/xsetroot
## Dependencias para jonaburg/picom
-sys-devel/gcc
-app-text/asciidoc				
-dev-lang/python				
-dev-libs/libconfig				
-dev-libs/libev				
-dev-libs/libpcre				
-dev-libs/uthash				
-dev-python/xcffib				
-dev-util/meson				
-dev-util/meson-format-array				
-dev-util/ninja				
-dev-vcs/git				
-sys-apps/dbus				
-virtual/opengl				
-virtual/pkgconfig				
-x11-apps/xhost				
-x11-base/xorg-proto				
-x11-base/xorg-server				
-x11-libs/libX11				
-x11-libs/libXext				
-x11-libs/libdrm				
-x11-libs/libxcb				
-x11-libs/pixman				
-x11-libs/xcb-util-image				
-x11-libs/xcb-util-renderutil
## Compilacion DWM, DMENU y ST
Para poder compilar correctamente, habremos de eliminar los ficheros objeto presentes(.o) en cada directorio(dwm, dmenu, y st) y, tras esto, podremos proceder con la instalacion. Para hacerlo, ejecutaremos
```
make && sudo make install
```
Este comando compilara el codigo y posteriormente lo movera a /usr/local/bin. Una vez obtenidos los ejecutables, solo queda mover el script de inicializacion(dwmstart) a una ruta del PATH(preferiblemente /usr/local/bin) y anadir la entrada .desktop a /etc/X11/xsessions, para que sea reconocido por el GDM(en mi caso).
