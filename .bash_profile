export EMAIL=djoume.salvetti@shopify.com
export EDITOR=vim
export LANG=en_CA.UTF-8
alias vi=vim
alias ls='ls -G'


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

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

