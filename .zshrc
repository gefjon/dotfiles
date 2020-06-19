export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="gallois"

HYPHEN_INSENSITIVE="true"

COMPLETION_WAITING_DOTS="true"

HIST_STAMPS="yyyy-mm-dd"

plugins=(git brew osx)

source $ZSH/oh-my-zsh.sh

[[ -r ~/.zsh_aliases ]] && . ~/.zsh_aliases

if [[ $1 == eval ]]; then
    $@
    set --
fi
