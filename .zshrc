######################### antigen #########################
source $HOME/.antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the repo.
# antigen bundle git
# antigen bundle tmux
# antigen bundle command-not-found
antigen bundle z
antigen bundle brew
antigen bundle aliases
antigen bundle alias-finder
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme spaceship-prompt/spaceship-prompt

# Apply the antigen.
antigen apply

######################### alias #########################

alias a='antigen'

alias f='fnm'

alias v='nvim'

alias t='tmux'
alias tl='tmux ls'
alias ta='tmux at'
alias tk='tmux kill-server'

alias g='git'
alias gcc='git rm -r --cached'

alias c='clear'

alias zz='cd ~'

alias sd='ssh devcloud'

######################### other #########################
export LANG=en_US.UTF-8

eval "$(fnm env --use-on-cd)"

source <(fzf --zsh)

zstyle ':omz:plugins:alias-finder' autoload yes # disabled by default
zstyle ':omz:plugins:alias-finder' longer yes # disabled by default
zstyle ':omz:plugins:alias-finder' exact yes # disabled by default
zstyle ':omz:plugins:alias-finder' cheaper yes # disabled by default
