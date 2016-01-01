rz () { exec zsh }
sz () { . ~/.zshrc }
ez () { vim "$ZSH_CUSTOM/shortcuts.zsh" }
tp() { top -stats pid,command,cpu,csw,time,threads,rsize,vsize,faults,state -o rsize }
sdre() { ssh ec2 -t "screen -dR" }
nexta() { ssh ec2 -t "tail /var/log/apache2/next/access.log" }
nexte() { ssh ec2 -t "tail /var/log/apache2/next/error.log" }
gau () { git add -u }
gdco() { git difftool -y --cached "$@" }
gdd() { git diff "$@" }
crone() { crontab -e }
syslt() { tail /var/log/system.log }
sysl() { less /var/log/system.log }
psh() { php -S 192.168.1.6:8888 }

alias tp5="top -u -s5"
alias gd="git difftool -y"
alias sdr="screen -dR"
alias nb="$HOME/Developer/scripts/nextBus/toOffice.sh"
alias ctags="`brew --prefix`/bin/ctags"
alias glgl="glg --author=Liang"
alias gcnd="git clean -nd"
alias gcfd="git clean -fd"
alias sc="$ZSH_CUSTOM/addShortcut.sh"
alias dfh="df -h"
alias gdc="git diff --cached"
alias tml="tmutil listbackups"
alias du1="du -hd1"
alias lz="less $ZSH_CUSTOM/shortcuts.zsh"
alias scgp='DIR="$(pwd)"; cd "$ZSH_CUSTOM"; git push; cd "$DIR";'
alias hg='history | grep'
