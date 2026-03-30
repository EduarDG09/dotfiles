# if [ -z "$WAYLAND_DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
#     exec sway
# fi
export PATH=$PATH:/usr/local/go/bin
export PATH=$HOME/.local/bin:$PATH
export GTK_IM_MODULE=ibus
export QT_IM_MODULE=ibus
export XMODIFIERS=@im=ibus

if [[ -z $DISPLAY && $(tty) == /dev/tty1 ]]; then
  exec niri-session -l
fi
