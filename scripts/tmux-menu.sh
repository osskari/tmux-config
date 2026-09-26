#!/usr/bin/env bash

entries() {
  tmux list-windows -a -F '#{session_name}:#{window_index}	#{session_name}›#{window_name}'
}

selection="$(entries | fzf \
  --delimiter=$'\t' \
  --with-nth=2 \
  --no-multi \
  --reverse \
  --prompt='  ' \
  --pointer='▸' \
  --info=inline)"

# Escape / no match — leave the client exactly where it was.
[[ -z "$selection" ]] && exit 0

target="${selection%%$'\t'*}"

tmux switch-client -t "${target%%:*}"
tmux select-window -t "$target"
