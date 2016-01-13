alias dl='diskutil list'
alias tml="tmutil listbackups"
alias tp5="top -u -s5"
gdy() { git difftool -t opendiff "$@" -y 2>&1 | grep -v "Failed to connect" }
sysl() { less /var/log/system.log }
syslt() { tail /var/log/system.log }
sysltf() { tail -f /var/log/system.log }
tp() { top -stats pid,command,cpu,csw,time,threads,rsize,vsize,faults,state -o rsize }
is_display_on() {
    display_state=$(ioreg -r -d 1 -n IODisplayWrangler | grep -i IOPowerManagement | sed 's/.*DevicePowerState"=\([0-9]\).*/\1/g')
    [ $display_state -eq 4 ] && return 0
    return 1
}
