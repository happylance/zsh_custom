alias gau="git add -u"
alias gcfd="git clean -fd"
alias gcnd="git clean -nd"
alias gd="git diff"
alias gdh1="git diff HEAD^!"
alias gdc="git diff --cached"
alias gdco="git difftool -y --cached"
alias gdd="git difftool"
alias gmy='git mergetool -y'
alias scgl='DIR="$(pwd)"; cd "$ZSH_CUSTOM"; git pull; cd "$DIR";'
alias scgp='DIR="$(pwd)"; cd "$ZSH_CUSTOM"; git push; cd "$DIR";'
gaud() { git add -u "$@"; git diff --cached; }
gd1() { git diff "$1"^! }
