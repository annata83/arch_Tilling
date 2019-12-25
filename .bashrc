#
# ~/.bashrc
#
stty -ixon # Disable ctrl-s and ctrl-q.
[ -f "$HOME/.config/shortcutrc" ] && source "$HOME/.config/shortcutrc"
[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"
[ -f "$HOME/.config/fzfrc" ] && source "$HOME/.config/fzfrc"
# Kitty Autocompleate
source <(kitty + complete setup bash)
# Import pywal colors to be used by apps.
. "${HOME}/.cache/wal/colors.sh"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
