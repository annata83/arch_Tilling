source $HOME/.config/aliasrc
source $HOME/.config/fzfrc # Load FZF Commands.

# Zsh append all zshTerminals seessions to $HISTFILE "I think"
#set history size
export HISTSIZE=10000
#save history after logout
export SAVEHIST=10000
#history file
export HISTFILE=~/.zhistory
#append into history file
setopt INC_APPEND_HISTORY
#save only one command if 2 common are same and consistent
setopt HIST_IGNORE_DUPS
#add timestamp for each entry
setopt EXTENDED_HISTORY   


# Kitty
autoload -Uz compinit
compinit
# Completion for kitty
kitty + complete setup zsh | source /dev/stdin

## Pure theme Settings
# optionally define some options
PURE_CMD_MAX_EXEC_TIME=1
# change the color for both `prompt:success` and `prompt:error`
zstyle ':prompt:pure:prompt:success' color 028
zstyle ':prompt:pure:prompt:error' color 124
zstyle ':prompt:pure:prompt:execution_time' color 154 
zstyle ':prompt:pure:prompt:PURE_GIT_UP_ARROW' color 033
zstyle ':prompt:pure:prompt:PURE_GIT_DOWN_ARROW' color 045
zstyle ':prompt:pure:prompt:git:branch:cached' color 092
zstyle ':prompt:pure:prompt:git:action' color 094
#zstyle ':prompt:pure:prompt:
#zstyle ':prompt:pure:prompt:
#zstyle ':prompt:pure:prompt:


### Added by Zplugin's installer
source "$HOME/.zplugin/bin/zplugin.zsh"
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin
### End of Zplugin installer's chunk

# Load the pure theme, with zsh-async library that's bundled with it.
zplugin ice pick"async.zsh" src"pure.zsh"
zplugin light sindresorhus/pure

