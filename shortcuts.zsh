rz () { . ~/.zshrc }
ez () { vim ~/.oh-my-zsh/custom/shortcuts.zsh }
tp() { top -stats pid,command,cpu,csw,time,threads,rsize,vsize,faults,state -o rsize }
sdre() { ssh ec2 -t "screen -dR" }
nexta() { ssh ec2 -t "tail /var/log/apache2/next/access.log" }
nexte() { ssh ec2 -t "tail /var/log/apache2/next/error.log" }
gau () { git add -u }
gdco() { git difftool -y --cached "$@" }
gdd() { git diff "$@" }
crone() {crontab -e }
syslt() { tail /var/log/system.log }
sysl() { less /var/log/system.log }
psh() { php -S 192.168.1.6:8888 }
