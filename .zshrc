# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# font
export LANG=en_US.UTF-8
export LC_CTYPE="en_US.UTF-8"

# set starship theme
ZSH_THEME=""
# ZSH_THEME="spaceship"
# SPACESHIP_TIME_SHOW="true"
# SPACESHIP_USER_SHOW="always"
# SPACESHIP_USER_COLOR="212"
# SPACESHIP_CONDA_SHOW="true"
# SPACESHIP_GIT_SHOW="true"
eval "$(starship init zsh)"

# oh-my-zsh plugins
plugins=(git fast-syntax-highlighting zsh-autosuggestions autojump zfm)
source $ZSH/oh-my-zsh.sh

# >>> fzf >>>
export FZF_DEFAULT_OPTS="--style full --preview 'fzf-preview.sh {}' --bind 'focus:transform-header:file --brief {}' --color=fg:#CDD6F4,header:#F38BA8,info:#CBA6F7,pointer:#F5E0DC,marker:#B4BEFE,fg+:#CDD6F4,prompt:#CBA6F7,hl+:#F38BA8,border:#313244,label:#CDD6F4"
export FZF_COMPLETION_TRIGGER='\'

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"

# init zoxide
eval "$(zoxide init zsh)"

# Added by Windsurf
export PATH="/Users/xiaoxin/.codeium/windsurf/bin:$PATH"

. "$HOME/.local/bin/env"

source ~/fzf.zsh

# alias
alias cl='clear'
alias yy='yazi'
alias nv='nvim'
alias ls='eza'
alias lz='lazygit'
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'     # git bare repository

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export GOOGLE_CLOUD_PROJECT="caramel-day-466107-n1 "
export GEMINI_API_KEY="AIzaSyDGupySB7o1u88mo2Mq36OfbjLEsblGpBE"

[[ "$TERM_PROGRAM" == "kiro" ]] && . "$(kiro --locate-shell-integration-path zsh)"
