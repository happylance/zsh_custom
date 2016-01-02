alias dfh="df -h"
alias du1="du -hd1"
alias gau="git add -u"
alias gcfd="git clean -fd"
alias gcnd="git clean -nd"
alias gd="git difftool -y"
alias gdc="git diff --cached"
alias gdco="git difftool -y --cached"
alias gdd="git diff"
alias hg='history | grep'
alias lz="less $ZSH_CUSTOM/shortcuts.zsh"
alias sc="$ZSH_CUSTOM/addShortcut.sh"
alias scgl='DIR="$(pwd)"; cd "$ZSH_CUSTOM"; git pull; cd "$DIR";'
alias scgp='DIR="$(pwd)"; cd "$ZSH_CUSTOM"; git push; cd "$DIR";'
alias sdr="screen -dR"
ez () { vim "$ZSH_CUSTOM/shortcuts.zsh" }
rz () { exec zsh }
sz () { . ~/.zshrc }
