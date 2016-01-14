#!/bin/zsh

previous_dir=$(pwd)
. "$HOME/.zshrc"
[ -z "$ZSH_CUSTOM" ] && { echo "\$ZSH_CUSTOM is not defined."; exit 1; }

DIR="$ZSH_CUSTOM"
shortcut_file=shortcuts.zsh
shortcut_folder=shortcuts
[ -d "$DIR/$shortcut_folder" ] || mkdir "$DIR/$shortcut_folder"
[ -d "$DIR/$shortcut_folder/.git" ] || {
  cd "$DIR/$shortcut_folder"
  git init; }

_echo_usage () {
    cat << EOF
usage: $0 [alias] ["command"]
Example: $0 tpc "top -o cpu"
EOF
    exit 2
}

[ -z "$1" ] && _echo_usage
[ -z "$2" ] && _echo_usage

. "$HOME/.zshrc"

set -e

which $1 1>/dev/null && { echo "$1 is already defined as follows."; which $1; exit 1; }

#echo "$1() { $2 }" >> "$DIR/shortcuts.zsh"
cd "$DIR/$shortcut_folder"
echo alias $1=\'"$2"\' >> "$shortcut_file"
sort "$shortcut_file" -o "$shortcut_file"

git add "$shortcut_file"
git --no-pager diff --cached
git commit -m "Added alias $1='$2'"

git ls-remote --exit-code origin && git push
cd "$previous_dir"
exec zsh
