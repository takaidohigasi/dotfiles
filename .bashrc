source ~/.git-prompt.sh
source ~/.git-completion.bash

GIT_PS1_SHOWDIRTYSTATE=true
export PS1='[\t \W$(__git_ps1 " (%s)")]\$ '
