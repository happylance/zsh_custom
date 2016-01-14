shortcuts_file="$ZSH_CUSTOM/shortcuts/shortcuts.zsh"
alias lz="less $shortcuts_file"
alias sc="$ZSH_CUSTOM/addShortcut.sh"
ez () { vim "$shortcuts_file" }
rz () { exec zsh }
sz () { . ~/.zshrc }

[ -e "$shortcuts_file" ] && . "$shortcuts_file"
