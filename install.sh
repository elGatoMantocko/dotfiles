#!/usr/bin/env zsh
for dir (*/); do
  ins_script=$(echo $(dirname $0:a)/$dir | sed 's/\/$/\/install.sh/g');
  [ -x $ins_script ]; echo "Installing $dir" && zsh $ins_script;
done
