#!/usr/bin/env zsh
# install homebrew on mac if it isn't already installed
[[ "$(uname -s)" == "Darwin" ]] && [[ "$(which brew)" == "brew not found" ]] && /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
[[ "$(uname -s)" == "Darwin" ]] && brew update && brew install vim git

for dir (*/); do
  ins_script=$(echo $(dirname $0:a)/$dir | sed 's/\/$/\/install.sh/g');
  [ -x $ins_script ]; echo "Installing $dir" && zsh $ins_script;
done
