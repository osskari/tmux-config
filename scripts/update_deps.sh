#!/usr/bin/env bash

PLUGINS_DIR="$TMUX_HOME/plugins"

# cpu widget
CPU_DIR="$PLUGINS_DIR/cpu"

if [ ! -d "$CPU_DIR/.git" ]; then
  echo 'cpu widget not installed, run ensure_deps.sh to install it'
else
  echo 'Updating theme'
  cd "$CPU_DIR" || exit

  git pull

  cd "$TMUX_HOME" || exit
  echo 'Cpu widget updated'
fi
