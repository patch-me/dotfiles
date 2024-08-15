export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="cat"
plugins=(
    git
    zsh-autopair
    zsh-autosuggestions
    zsh-syntax-highlighting
    you-should-use
    zsh-bat
    fzf-zsh-plugin
    fzf
    zsh-interactive-cd
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


export PATH=/home/ripitchip/bin:$PATH
# configuration go and rust
export PATH="$HOME/.cargo/bin:$PATH"
export GOPATH=$HOME/.local/app/go
export ZSH_CUSTOM=$HOME/.config/zsh/

# fzf plugin
export FZF_PATH=$HOME/.config/fzf

# colorize plugin
export ZSH_COLORIZE_TOOL=chroma
export ZSH_COLORIZE_CHROMA_FORMATTER=terminal256

export DOCKER_HOST=unix:///run/user/1000/docker.sock
export ZSH_COMPDUMP=$ZSH/cache/.zcompdump-$HOST



source $ZSH/oh-my-zsh.sh
unset zle_bracketed_paste

if [ "$TMUX" = "" ]; then exec tmux; fi

