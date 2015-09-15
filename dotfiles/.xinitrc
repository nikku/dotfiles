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

# load terminal settings
[[ -f ~/.Xresources ]] && xrdb -merge $HOME/.Xresources

# start terminal daemon (improves start time)
urxvtd -q -o -f

# fix clip boards
autocutsel -fork &

# screen lock integration
xss-lock -- i3lock &

# touchpad fix
if type synclient >/dev/null 2>&1; then
  synclient HorizTwoFingerScroll=1 &
  synclient TapButton2=3 &
fi


# remove mouse on no activity
unclutter -noevents &

# exec window manager (i3)
exec i3 -V -d all > ~/.i3/log/debug.log 2>&1
