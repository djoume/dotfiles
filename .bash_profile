export EMAIL=djoume.salvetti@shopify.com
export EDITOR=vim
alias vi=vim
alias ls='ls -G'

BASH_COMPLETION_PATH=
for f in `brew --prefix`/etc/bash_completion.d/*
do
    source $f
done

export GIT_PS1_SHOWDIRTYSTATE=1 GIT_PS1_SHOWSTASHSTATE=1 GIT_PS1_SHOWUNTRACKEDFILES=1
export PROMPT_COMMAND='__git_ps1 "\t \u@\h:\w" " \\\$ "'
export PROMPT_COMMAND='__git_ps1 "\t \w" " \\\$ "'
export GIT_PS1_SHOWCOLORHINTS=1
export PATH="$HOME/.tmuxifier/bin:$PATH"

export GOPATH=$HOME
export PATH=$GOPATH/bin:$PATH
