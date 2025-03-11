# prevent gtk programs to start very slow for non-root users
# https://unix.stackexchange.com/questions/594541/gtk-apps-slow-if-not-root
dbus-update-activation-environment --systemd DBUS_SESSION_BUS_ADDRESS DISPLAY XAUTHORITY

slstatus &

# update Xresources at startup
xrdb -load ~/.config/Xresources

# setup monitors the way I like them.
xrandr --output HDMI-1 --mode 1920x1080 --right-of HDMI-2 --output HDMI-2 --primary --mode 1920x1080 &

# setup redshift
#redshift &
# setup redshift
redshift -l 51.32:4.94 -t 6500:5000 -g 0.8 -m randr &

# polkit
/usr/lib/policykit-1-gnome/polkit-gnome-authentication-agent-1 &

# restore current wallpaper
feh --bg-scale "$(cat "${XDG_CACHE_HOME}/wall" )" &

# compositor
# picom --animations -b &
picom -b &

# sxhkd
# (re)load sxhkd for keybinds
if hash sxhkd >/dev/null 2>&1; then
	pkill sxhkd
	sleep 0.5
	sxhkd -c "$HOME/.config/sxhkd/sxhkdrc" &
fi

# Notifications
dunst &

# start emacs daemon
#/usr/bin/emacs --daemon &

# lock screen when suspended
#xss-lock -- slock &
