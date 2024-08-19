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
)

alias mutt="neomutt"

source $ZSH/oh-my-zsh.sh
unset zle_bracketed_paste

if [ "$TMUX" = "" ]; then exec tmux; fi

