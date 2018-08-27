fco() {
  git branch -vv | fzf +m | awk "{print $1}" | sed "s/.* //" | xargs git checkout
}

alias ls='gls --color=auto'
alias la='gls --color=auto -alFh'
alias ll='gls --color=auto -lFh'

alias ping='prettyping --nolegend'
