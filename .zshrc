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
    tmuxinator
)

alias mutt="neomutt"

source $ZSH/oh-my-zsh.sh
unset zle_bracketed_paste

# if [ "$TMUX" = "" ]; then exec tmux; fi

# [ -f /opt/miniconda3/etc/profile.d/conda.sh ] && source /opt/miniconda3/etc/profile.d/conda.sh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('$HOME/.local/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "$HOME/.local/miniconda3/etc/profile.d/conda.sh" ]; then
        . "$HOME/.local/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="$HOME/.local/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


## [Completion]
## Completion scripts setup. Remove the following line to uninstall
[[ -f /home/thomas/.dart-cli-completion/zsh-config.zsh ]] && . /home/thomas/.dart-cli-completion/zsh-config.zsh || true
## [/Completion]


# pnpm
export PNPM_HOME="/home/thomas/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
function zshaddhistory() {
    # Prevent commands starting with "sha256sum" or "passGen" from being added to history
    [[ $1 == sha256sum* || $1 == passGen* ]] && return 1
    return 0
}
passGen() {
  echo -n "$1" | sha256sum | awk '{print $1}' | xxd -r -p | base64
}

neofetch
