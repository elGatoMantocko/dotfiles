fco() {
  git branch -vv | fzf +m | awk "{print $1}" | sed "s/.* //" | xargs git checkout
}

alias ping='prettyping --nolegend'
alias du='ncdu --color dark -x --exclude .git --exclude node_modules'

alias mk='minikube'
source <(mk completion zsh)

alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'
