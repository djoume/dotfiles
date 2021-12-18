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

if [ -x /opt/homebrew/bin/brew ]; then
  eval $(/opt/homebrew/bin/brew shellenv)

  if [ -d $(/opt/homebrew/bin/brew --prefix)/etc/bash_completion.d ]; then
    for f in $(/opt/homebrew/bin/brew --prefix)/etc/bash_completion.d/*; do
      source "$f"
    done
  fi
fi

export GIT_PS1_SHOWDIRTYSTATE=1 GIT_PS1_SHOWSTASHSTATE=1 GIT_PS1_SHOWUNTRACKEDFILES=1
export PROMPT_COMMAND='__git_ps1 "\t \u@\h:\w" " \\\$ "'
export PROMPT_COMMAND='__git_ps1 "\t \w" " \\\$ "'
export GIT_PS1_SHOWCOLORHINTS=1

[ -f /opt/dev/dev.sh ] && source /opt/dev/dev.sh
if [ -e /Users/djoume/.nix-profile/etc/profile.d/nix.sh ]; then . /Users/djoume/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
