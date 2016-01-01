#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
_echo_usage () {
    cat << EOF
usage: $0 [alias] ["command"]
Example: $0 tpc "top -o cpu"
EOF
    exit 2
}

[ -z "$1" ] && _echo_usage
[ -z "$2" ] && _echo_usage

which $1 && exit 1

#echo "$1() { $2 }" >> "$DIR/shortcuts.zsh"
echo alias $1=\""$2"\" >> "$DIR/shortcuts.zsh"
exec zsh
