if [ -f ~/Projects/posh-git-sh/git-prompt.sh ]; then
  source ~/Projects/posh-git-sh/git-prompt.sh
fi

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

export PROMPT_COMMAND='__posh_git_ps1 "$(opt_newline_and_exit_code)$(current_java_version)$(bg_job_count)$(y_file_count)" "\n\[\033[0m\]╰─$(sw_colored_wd)\$ \[\033[0;32m\]";'$PROMPT_COMMAND
export PS2='\[\033[0m\]  │\[\033[0;32m\]'

case $- in
    *i*) ;;
      *) return;;
esac

HISTCONTROL=ignoreboth
HISTSIZE=10000
HISTFILESIZE=20000

shopt -s histappend
shopt -s checkwinsize
shopt -s globstar

if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

declare -A JAVA_VERSIONS=(
    [17]=/usr/bin/java
    [21]=/usr/lib/jvm/temurin-21-jdk-amd64
)
ACTIVE_JAVA_VERSION=21

export JAVA_HOME="${JAVA_VERSIONS[$ACTIVE_JAVA_VERSION]}"
export PATH="${JAVA_HOME}/bin:${PATH}"

trap 'echo -ne "\033[0m"' DEBUG

export LESS="-R"

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
