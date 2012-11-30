#!/bin/sh

# x
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
xset +fp /usr/share/fonts/local/

# silence
/usr/bin/xset b off

# wm
exec awesome

# ime
export XMODIFIERS=@im=fcitx
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
fcitx &

# dropbox
dropboxd &
