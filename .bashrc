#
# ~/.bashrc
#
stty -ixon # Disable ctrl-s and ctrl-q.
shopt -s autocd #Allows you to cd into directory merely by typing the directory name.


[ -f "$HOME/.config/shortcutrc" ] && source "$HOME/.config/shortcutrc" # Load shortcut aliases
[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"
[ -f "$HOME/.config/fzfrc" ] && source "$HOME/.config/fzfrc" # Load FZF Commands.

# Import pywal colors to be used by apps.
. "${HOME}/.cache/wal/colors.sh"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
