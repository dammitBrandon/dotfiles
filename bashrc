source /usr/local/etc/bash_completion.d/git-prompt.sh
source /usr/local/etc/bash_completion.d/git-completion.bash

export GIT_PS1_SHOWDIRTYSTATE=true
# export PS1='\u@\h \[\033[0;34m\]\w\[\033[0m\]$(__git_ps1)$ '
# export PS1='\n\[\e[1;32m\]\u\[\e[0;37m\]@\[\e[1;36m\]\h\[\e[0;37m\]:\[\e[0;37m\]\W\[\e[0;39m\]\[\e[1;31m\]$(__git_ps1 "(%s)")\[\e[0;37m\]$ '
export PS1='\[\e[4;44m\]\T\[\e[0;34m\] \u\[\e[1;37m\]\[\e[0;33m\]:\[\e[0;36m\]\W\[\e[0;39m\]\[\e[1;31m\]$(__git_ps1 "(%s)")\[\e[0;33m\] >> \[\033[0;37m\]'