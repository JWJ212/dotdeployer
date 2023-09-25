#!/bin/sh



export USER=$(whoami)
[ -z $TERM ] && export TERM=linux
[ -z $LOGNAME ] && export LOGNAME=$USER
[ -z $HOME ] && export HOME=/home/$USER
[ -z $LANG ] && export LANG=en_US.UTF-8
[ -z $PATH ] && export PATH=/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl
[ -z $XDG_SEAT ] && export XDG_SEAT=seat0
[ -z $XDG_SESSION_TYPE ]  && export XDG_SESSION_TYPE=tty
[ -z $XDG_SESSION_CLASS ] && export XDG_SESSION_CLASS=user
[ -z $XDG_VTNR ] && export XDG_VTNR=1
[ -z $XDG_RUNTIME_DIR ] && export XDG_RUNTIME_DIR=/run/user/1000
[ -z $DBUS_SESSION_BUS_ADDRESS ] && export DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus


export WLR_NO_HARDWARE_CURSORS=1
export WLR_RENDERER_ALLOW_SOFTWARE=1
# change the theme here


exec Hyprland > .hyprland.log.txt 2> .hyprland.err.txt
