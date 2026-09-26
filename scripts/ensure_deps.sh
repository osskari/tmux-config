#!/usr/bin/env bash

# setup tmux home env variable
if [ -z ${TMUX_HOME+x} ]; then
  echo 'TMUX_HOME variable not set. Add it to your environment and run again'
  echo 'bash & zsh: export TMUX_HOME=<path to tmux config>'
  echo "fish: set -gx TMUX_HOME '<path to tmux config>'"

  exit 1
fi

PLUGINS_DIR="$TMUX_HOME/plugins"

# cpu widget
CPU_DIR="$PLUGINS_DIR/cpu"

if [ ! -d "$CPU_DIR/.git" ]; then
  echo 'Installing cpu widget'

  mkdir -p "$CPU_DIR"
  git clone https://github.com/tmux-plugins/tmux-cpu "$CPU_DIR"

  echo 'Cpu widget installed'
else
  echo 'Cpu widget already installed'
fi
