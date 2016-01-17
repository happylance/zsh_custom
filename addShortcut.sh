#!/usr/bin/env zsh
previous_dir=$PWD
[ -e "$HOME/.zshrc" ] || { echo "$HOME/.zshrc does not exist."; exit 2; } 
eval $(grep ZSH_CUSTOM "$HOME/.zshrc")
[ -z "$ZSH_CUSTOM" ] && { echo "\$ZSH_CUSTOM is not defined."; exit 1; } 

DIR="$ZSH_CUSTOM"

self=$0
_echo_usage () {
    cat << EOF
usage: $self [alias] ["command"]
Example: $self tpc "top -o cpu"
EOF
}

[ -z "$1" ] && { _echo_usage ; exit 2; }
[ -z "$2" ] && { _echo_usage ; exit 2; }

shortcut_file=shortcuts.zsh
shortcut_folder=shortcuts
[ -d "$DIR/$shortcut_folder" ] || mkdir "$DIR/$shortcut_folder"
[ -d "$DIR/$shortcut_folder/.git" ] || {
  cd "$DIR/$shortcut_folder"
  git init; }

. "$HOME/.zshrc"

set -e

which $1 1>/dev/null && { echo "$1 is already defined as follows."; which $1; exit 1; }

cd "$DIR/$shortcut_folder"

# If command inlcudes single quotes, use "$command". Otherwise, use '$command'
command="$2"
if [ "${command/'}" = "$command" ]; then
    echo alias $1=\'$command\' >> "$shortcut_file"
    comments="Added alias $1='$command'"
else
    echo alias $1=\"$command\" >> "$shortcut_file"
    comments="Added alias $1=\"$command\""
fi
sort "$shortcut_file" -o "$shortcut_file"

git add "$shortcut_file"
git --no-pager diff --cached
git commit -m "$comments"

git ls-remote --exit-code origin && git push
cd "$previous_dir"
exec zsh
