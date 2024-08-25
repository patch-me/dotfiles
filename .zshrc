export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="cat"
plugins=(
    git
    zsh-autopair
    zsh-autosuggestions
    zsh-syntax-highlighting
    you-should-use
    fzf-zsh-plugin
    fzf
    colorize
    command-not-found
    colored-man-pages
    cp
    docker
    emoji-clock
    emoji
    sudo
    zoxide
    navi

    zsh-lsd
    rust
    conda-zsh-completion
)

alias mutt="neomutt"

source $ZSH/oh-my-zsh.sh
unset zle_bracketed_paste

if [ "$TMUX" = "" ]; then exec tmux; fi

# [ -f /opt/miniconda3/etc/profile.d/conda.sh ] && source /opt/miniconda3/etc/profile.d/conda.sh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/ripitchip/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/ripitchip/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/ripitchip/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/ripitchip/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

