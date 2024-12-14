##############
### Prompt ###
##############

autoload -U colors && colors
PS1="$(whoami)$fg[blue]% ~%f> "

###############
### Sources ###
###############

# Plugins:
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
source /usr/share/zsh/plugins/fzf-tab/fzf-tab.plugin.zsh

# Aliases:
source $HOME/.config/shell/aliasrc


##################
### Completion ###
##################

autoload -U compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'


###############
### History ###
###############

HISTSIZE=400
SAVEHIST=$HISTSIZE
HISTFILE="$HOME/.local/share/zsh_history"
HISTDUP=erase
setopt appendhistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups


##########################
### Shell Integrations ###
##########################

eval "$(fzf --zsh)"
