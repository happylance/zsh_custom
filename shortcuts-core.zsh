shortcuts_file="$ZSH_CUSTOM/shortcuts/shortcuts.zsh"
sc_help="$shortcuts_file does not exist. Please add a shortcut using 'sc [alias] [command]'. Example: sc wh which"
alias lz="less $shortcuts_file"
alias sc="$ZSH_CUSTOM/addShortcut.sh"
ez () { [ -e "$shortcuts_file" ] || {echo "$sc_help"; return 1; };  vim "$shortcuts_file" }
rz () { exec zsh }
sz () { . ~/.zshrc }

[ -e "$shortcuts_file" ] && . "$shortcuts_file"
