#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# We need to have the cabal bin path available for xmonad.
export PATH=$PATH:$HOME/.cabal/bin
export PATH=$PATH:$HOME/.local/bin
xsetroot -cursor_name left_ptr
feh --bg-scale ~/.xmonad/swahili.png
trayer --edge top --align right --SetDockType true --SetPartialStrut true --expand true --width 10 --transparent true --tint 0x191970 --height 22 &
nm-applet &
pasystray &
xcompmgr -c &
numlockx on
redshift-gtk &
xscreensaver -no-splash &
xmonad
