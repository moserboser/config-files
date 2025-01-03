# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
  PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
  for rc in ~/.bashrc.d/*; do
    if [ -f "$rc" ]; then
      . "$rc"
    fi
  done
fi
unset rc
. "$HOME/.cargo/env"

# adding nord syntax to terminal
test -r ~/.dir_colors && eval $(dircolors ~/.dir_colors)

export QT_QPA_PLATFORMTHEME=qt6ct

export PATH=$PATH:~/.local/bin

export WLR_DRM_NO_MODIFIERS=1
export WLR_NO_HARDWARE_CURSORS=1

zsh
