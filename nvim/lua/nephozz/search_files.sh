#!/bin/zsh

selected_file=$(find / -type f 2>/dev/null | fzf)
[ -n "$selected_file" ] && nvim "$selected_file"
