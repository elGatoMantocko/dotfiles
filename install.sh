#!/bin/bash

#install fonts
mkdir -p $HOME/.local/share/fonts
[ ! -e $HOME/.local/share/fonts/Droid\ Sans\ Mono\ for\ Powerline.otf ] && wget -P $HOME/.local/share/fonts https://github.com/powerline/fonts/raw/master/DroidSansMono/Droid%20Sans%20Mono%20for%20Powerline.otf
[ ! -e $HOME/.local/share/fonts/FontAwesome.otf ] && wget -P $HOME/.local/share/fonts https://github.com/FortAwesome/Font-Awesome/blob/master/fonts/FontAwesome.otf
fc-cache

#intsall terminalrc
mkdir -p $HOME/.config/xfce4/terminal
ln -s $HOME/.dotfiles/xfce4-terminal/terminalrc $HOME/.config/xfce4/terminal/terminalrc

# install vim
mkdir $HOME/.dotfiles/vim/bundle
[ ! -e $HOME/.dotfiles/vim/bundle/Vundle.vim ] && git clone https://github.com/VundleVim/Vundle.vim $HOME/.dotfiles/vim/bundle/Vundle.vim
ln -s $HOME/.dotfiles/vim/.vimrc $HOME/.vimrc
vim +PluginInstall +qall

# install compton 
ln -s $HOME/.dotfiles/compton/compton.conf $HOME/.compton.conf

# install conky
ln -s $HOME/.dotfiles/conky/conkyrc $HOME/.conkyrc

# install dunst
ln -s $HOME/.dotfiles/dunst/dunstrc $HOME/.dunstrc

# install feh
ln -s $HOME/.dotfiles/feh/fehbg $HOME/.fehbg

# install i3
ln -s $HOME/.dotfiles/i3/config $HOME/.config/i3/config

# install X
ln -s $HOME/.dotfiles/X/xinitrc $HOME/.xinitrc

# install zsh
ln -s $HOME/.dotfiles/zsh/.zshrc $HOME/.zshrc
