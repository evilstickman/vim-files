PATH=/usr/local/bin:$PATH; export PATH

# export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

# todo list manager
export TODO=~/Dropbox/todo
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

function todo() { if [ $# == "0" ]; then cat $TODO; else echo "* $@" >> $TODO; fi }
function todone() { sed -i -e "/$*/d" $TODO; }

source ~/.git-completion.bash

alias pgstart='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias pgstop='pg_ctl -D /usr/local/var/postgres stop -s -m fast'
alias pgstatus='ps auxwww | grep postgres'

alias sshxen='ssh -x cnuapp@trey.dev.cashnetusa.com'

# basic aliases
alias get='git'
alias ll='ls -al'
alias sshtestdev='ssh -x cnuapp@192.168.56.2'
alias sshtestdevhead='ssh -Y cnuapp@192.168.56.2'
alias starttestdev='VBoxManage startvm cnuapp --type headless'
alias shutdowntestdev='VBoxManage controlvm cnuapp acpipowerbutton'
alias ecats='cd ~/Developer/CATS/CATSv04/'
#alias ack='ack-grep -a'
alias df='df -h'
function cs () {
        cd "$@" && ls
				}
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function
