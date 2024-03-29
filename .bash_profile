export EMAIL=djoume@taket.org
export EDITOR=nvim
export LANG=en_CA.UTF-8
alias vi=nvim
alias ls='ls -G'


export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

export DENO_INSTALL="/home/djoume/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

export FLYCTL_INSTALL="/home/djoume/.fly"
export PATH="$FLYCTL_INSTALL/bin:$PATH"


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
if [ -d $PYENV_ROOT ]; then
  export PATH="$PYENV_ROOT/bin:$PATH"
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
fi

if [ -f "$HOME/.profile" ]; then
  source "$HOME/.profile"
fi
