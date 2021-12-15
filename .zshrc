export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="gallois"

HYPHEN_INSENSITIVE="true"

COMPLETION_WAITING_DOTS="true"

HIST_STAMPS="yyyy-mm-dd"

plugins=(git brew macos)

source $ZSH/oh-my-zsh.sh

[[ -r ~/.zsh_aliases ]] && . ~/.zsh_aliases

if [[ $1 == eval ]]; then
    $@
    set --
fi

PATH="/Users/phoebegoldman/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/Users/phoebegoldman/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/Users/phoebegoldman/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/Users/phoebegoldman/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/phoebegoldman/perl5"; export PERL_MM_OPT;

eval "$(/opt/homebrew/bin/brew shellenv)"
