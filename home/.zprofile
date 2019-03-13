[[ -z $DISPLAY && $XDG_VTNR -lt 3 ]] && exec startx
PATH=$PATH:~/.cabal/bin
PATH=$PATH:~/.local/bin
VIMRUNTIME=/usr/bin
export EDITOR=/usr/bin/vim

# nix
if [ -e /home/joneshf/.nix-profile/etc/profile.d/nix.sh ]; then . /home/joneshf/.nix-profile/etc/profile.d/nix.sh; fi
source /usr/share/chruby/chruby.sh
