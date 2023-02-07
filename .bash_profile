export EMAIL=djoume@taket.org
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
export PROMPT_COMMAND='__git_ps1 "\t \[\033[01;34m\]\w\[\033[00m\]" " \\\$ "'

export GIT_PS1_SHOWCOLORHINTS=1

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null && export PATH="$PYENV_ROOT/bin:$PATH"
command -v pyenv >/dev/null && eval "$(pyenv init -)"
