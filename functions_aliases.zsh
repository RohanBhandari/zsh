# General functions/aliases

function cdl() { cd "$@"; ls; }
function count() { ls "$@" | wc -l ; }
function e() { emacs -nw "$@" ;}
function ero() { emacs -nw "$@" --eval '(setq buffer-read-only t)' ;}
function gr() { grep --color -r -i "$@" *; }

alias cdp='cd -P'
alias cp='cp -i'
alias cpf='cp -f'
alias custom='emacs -nw ~/.oh-my-zsh/custom/functions_aliases.zsh'
alias dua='du -hs *'
alias grep='grep --color'
alias hgrep='history | grep '
alias icat='imgcat'
alias la='ls -A'
alias ld='ls -d -- */'
alias ll='ls -lh'
alias mkdir='mkdir -p'
alias pwdp='pwd -P'
