#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Colors is simple
GREY="\[\e[0m\]"
CYAN="\[\e[0;36m\]"
YELLOW="\[\e[0;33m\]"
GREEN="\[\e[0;32m\]"
RED="\[\e[0;31m\]"

# Git stuff in your PS1
GIT_PROMPT="/usr/share/git/completion/git-prompt.sh"
if [ -f "$GIT_PROMPT" ]
then
	source "$GIT_PROMPT"
  PS1_BRANCH="[ -z \$(__git_ps1 %s) ] && echo -n '' || __git_ps1 ':$CYAN[%s]$GREY'"
else
	PS1_BRANCH=""
fi

# Customize your PS1
PS1_STAT="[ \$? = '0' ] && echo -n '$GREEN✔' || echo -n '$RED✘' && echo -n $GREY"
PS1_USER="[ \${USER} = 'root' ] && echo -n '$RED\u' || echo -n '$GREEN\u' && echo -n $GREY"
PS1_HOST="$GREEN\h$GREY"
PS1_PATH="$YELLOW\w$GREY"
PS1="\`$PS1_STAT\` \`$PS1_USER\`@$PS1_HOST:$PS1_PATH\`$PS1_BRANCH\`> "

# Aliases
alias ls='ls --color=auto'
alias cfg='/usr/bin/git --git-dir=/home/piotr/.cfg/ --work-tree=/home/piotr'
