
# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# set PATH so it includes user's private bin if it exists
[ -d "$HOME/bin" ] && PATH="$HOME/bin:$PATH"

# set path so it includes user's private bin if it exists
[ -d "$HOME/.local/bin" ] && PATH="$HOME/.local/bin:$PATH"

# set path so it includes user's private scripts if it exists
[ -d "$HOME/.local/scripts" ] && PATH="$HOME/.local/scripts:$PATH"

export PATH

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
      . "$HOME/.bashrc"
    fi
fi

export QT_QPA_PLATFORMTHEME="qt5ct"

# start dwm
if [ "$(tty)" = "/dev/tty1" ] && ! pidof -s Xorg >/dev/null 2>&1; then
  export XDG_SESSION_TYPE="x11"
  # startx "$XDG_CONFIG_HOME/X11/xinitrc"
  startx
  logout
fi

if [ -e /home/jvh/.nix-profile/etc/profile.d/nix.sh ]; then
    . /home/jvh/.nix-profile/etc/profile.d/nix.sh;
fi # added by Nix installer

