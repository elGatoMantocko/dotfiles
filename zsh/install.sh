#!/usr/bin/env zsh
[ ! -e $HOME/.oh-my-zsh ] && sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

ln -sf $(dirname $0:a)/.zshrc ~/.zshrc
ln -sf $(dirname $0:a)/.alias.zsh ~/.alias.zsh
ln -sf $(dirname $0:a)/.fzf.zsh ~/.fzf.zsh
