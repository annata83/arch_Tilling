# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export ZPLUG_HOME=$HOME/.zplug

ZSH_THEME="af-magic"

# jrnl History Erase
#setopt HIST_IGNORE_SPACE
#alias jrnl=" jrnl"

# Plugins
plugins=(git archlinux sudo)

source ~/.zplug/init.zsh
# Supports oh-my-zsh plugins and the like
#zplug "plugins/git",   from:oh-my-zsh
# Clear packages
zplug clear
###########################################################
# Packages

zplug "zsh-users/zsh-syntax-highlighting", defer:2
# Install packages that have not been installed yet
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    else
        echo
    fi
fi

zplug load

###########################################################
# External files

source $ZSH/oh-my-zsh.sh
source $HOME/.config/aliasrc
source $HOME/.config/fzfrc # Load FZF Commands.
#source "`ueberzug library`"
# Import pywal colors to be used by apps.
. "${HOME}/.cache/wal/colors.sh"



# FZF Integration
#zsh-interactive-cd.plugin.zsh


