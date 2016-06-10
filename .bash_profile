alias ls='ls -G'

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export EMAIL=djoume.salvetti@shopify.com

if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

export EDITOR=vim
alias vi=vim

export GIT_PS1_SHOWDIRTYSTATE=1 GIT_PS1_SHOWSTASHSTATE=1 GIT_PS1_SHOWUNTRACKEDFILES=1
export PROMPT_COMMAND='__git_ps1 "\t \u@\h:\w" " \\\$ "'
export GIT_PS1_SHOWCOLORHINTS=1
export PATH="$HOME/.tmuxifier/bin:$PATH"

# added by Anaconda2 2.5.0 installer
export PATH="/Users/djoume/anaconda/bin:$PATH"
if [[ -f /opt/dev/dev.sh ]]; then source /opt/dev/dev.sh; fi
