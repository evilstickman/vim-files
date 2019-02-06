PATH=/usr/local/bin:$PATH; export PATH

# export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

# todo list manager
export TODO=~/Dropbox/todo
function todo() { if [ $# == "0" ]; then cat $TODO; else echo "* $@" >> $TODO; fi }
function todone() { sed -i -e "/$*/d" $TODO; }

source ~/.git-completion.bash

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function
[[ -s "$HOME/.tmuxinator/scripts/tumuxinator" ]] && source $HOME/.tmuxinator/scripts/tmuxinator


for file in ~/vim-files/bash/{bash_prompt,exports,functions,aliases}; do
	[ -r "$file" ] && source "$file"
done
unset file

function set_virtualenv () {
  if test -z "$VIRTUAL_ENV" ; then
      PYTHON_VIRTUALENV=""
  else
      PYTHON_VIRTUALENV="${BLUE}[`basename \"$VIRTUAL_ENV\"`]${COLOR_NONE} "
  fi
}

function __git_branch_name {
  set_virtualenv
  branch=""
  if [ $(git rev-parse --is-inside-work-tree 2>/dev/null) ]; then
    branch=" (branch: $(git branch | grep \* | cut -d ' ' -f2)) "
  fi
  export PS1="$PYTHON_VIRTUALENV\t \u \$branch \w > "
}

PROMPT_COMMAND=__git_branch_name
