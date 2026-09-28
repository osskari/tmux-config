#!/usr/bin/env bash

PLUGINS_DIR="$TMUX_HOME/plugins"

# cpu widget
CPU_DIR="$PLUGINS_DIR/cpu"

if [ ! -d "$CPU_DIR/.git" ]; then
  echo 'cpu widget not installed, run ensure_deps.sh to install it'
else
  echo 'updating cpu widget'
  cd "$CPU_DIR" || exit

  git pull

  cd "$TMUX_HOME" || exit
  echo 'Cpu widget updated'
fi

UPTIME_DIR="$PLUGINS_DIR/uptime"
if [ ! -d "$UPTIME_DIR/.git" ]; then
  echo 'uptime widget not installed, run ensure_deps.sh to install it'
else
  echo 'updating uptime widget'
  cd "$UPTIME_DIR" || exit

  git pull

  cd "$TMUX_HOME" || exit
  echo 'uptime widget updated'
fi
