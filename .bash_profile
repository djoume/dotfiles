export EMAIL=djoume.salvetti@shopify.com
export EDITOR=vim
alias vi=vim
alias ls='ls -G'

export PATH="$HOME/.tmuxifier/bin:$PATH"

export GOPATH=$HOME
export PATH=$GOPATH/bin:$PATH


export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

while read -r _completion; do
  source $_completion
done < <(
  for path in ${PATH//:/ }; do
    find $(dirname $path)/etc/bash_completion.d -not -type d 2>/dev/null
  done | tail -r
)
unset _completion

export GIT_PS1_SHOWDIRTYSTATE=1 GIT_PS1_SHOWSTASHSTATE=1 GIT_PS1_SHOWUNTRACKEDFILES=1
export PROMPT_COMMAND='__git_ps1 "\t \u@\h:\w" " \\\$ "'
export PROMPT_COMMAND='__git_ps1 "\t \w" " \\\$ "'
export GIT_PS1_SHOWCOLORHINTS=1
