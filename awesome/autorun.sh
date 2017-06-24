#!/usr/bin/env bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

# put autorun programs down here in format
# run <program> [args]
run pulseaudio --start
run discord
run steam
run spotify
run skypeforlinux
run chromium
