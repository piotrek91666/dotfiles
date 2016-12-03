#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Import something
. /usr/share/git/completion/git-prompt.sh

# Colors is simple
GREY="\[\e[0m\]"
CYAN="\[\e[0;36m\]"
YELLOW="\[\e[0;33m\]"
GREEN="\[\e[0;32m\]"
RED="\[\e[0;31m\]"

# Customize your PS1
PS1_STAT="[ \$? = '0' ] && echo -n '$GREEN✔' || echo -n '$RED✘' && echo -n $GREY"
PS1_USER="[ \${USER} = 'root' ] && echo -n '$RED\u' || echo -n '$GREEN\u' && echo -n $GREY"
PS1_HOST="$GREEN\h$GREY"
PS1_PATH="$YELLOW\w$GREY"
PS1_BRANCH="[ -z \$(__git_ps1 %s) ] && echo -n '' || __git_ps1 ':$CYAN[%s]$GREY'"
PS1="\`$PS1_STAT\` \`$PS1_USER\`@$PS1_HOST:$PS1_PATH\`$PS1_BRANCH\`> "

# Aliases
alias ls='ls --color=auto'
alias cfg='/usr/bin/git --git-dir=/home/piotr/.cfg/ --work-tree=/home/piotr'
