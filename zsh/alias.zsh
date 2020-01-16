fco() {
  git branch -vv | fzf +m | awk "{print $1}" | sed "s/.* //" | xargs git checkout
}

alias ping='prettyping --nolegend'
alias du='ncdu --color dark -x --exclude .git --exclude node_modules'

alias mk='minikube'
source <(mk completion zsh)

sgp() {
    #do things with parameters like $1 such as
    cd ~/Projects/Egencia
    git clone https://github.expedia.biz/Egencia/$1.git
    cd $1
    mvn clean
    idea .
}
