export ALIAS_HOME="$HOME/Projects/bash-aliases"
export ALIAS_FILES="$ALIAS_HOME/simple_aliases.sh $ALIAS_HOME/functions.sh $ALIAS_HOME/config.sh"

for ALIAS_FILE in $ALIAS_FILES; do
    source "$ALIAS_FILE"
done

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
