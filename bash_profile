PATH=/usr/local/bin/:$PATH; export PATH

# export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

# todo list manager
export TODO=~/Dropbox/todo
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

function todo() { if [ $# == "0" ]; then cat $TODO; else echo "* $@" >> $TODO; fi }
function todone() { sed -i -e "/$*/d" $TODO; }

# basic aliases
alias get='git'
alias ll='ls -al'
alias sshtestdev='ssh -x cnuapp@192.168.56.2'
alias starttestdev='VBoxManage startvm cnuapp --type headless'
alias shutdowntestdev='VBoxManage controlvm cnuapp acpipowerbutton'
alias ack='ack-grep -a'
alias df='df -h'
function cs () {
        cd "$@" && ls
				}
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function
