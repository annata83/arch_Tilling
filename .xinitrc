#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

userresources=$HOME/.Xresources
sysresources=/etc/X11/xinit/.Xresources

# merge in defaults

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

exec /usr/bin/i3

# Disable screen saver blanking
xset s off
# Disable DPMS and prevent screen from blanking
xset s off -dpms

xset +fp /usr/share/fonts/          # Prepend a custom font path to Xorg's list of known font paths
xset -fp /usr/share/fonts/misc      # Remove the specified font path from Xorg's list of known font paths
xset -fp /usr/share/fonts/Type1     # Remove the specified font path from Xorg's list of known font paths
xset -fp /usr/share/fonts/100dpi    # Remove the specified font path from Xorg's list of known font paths
xset -fp /usr/share/fonts/75dpi     # Remove the specified font path from Xorg's list of known font paths


