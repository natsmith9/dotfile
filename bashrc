# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
#export PS1="\u@\h\w$ "

alias ll='ls -la'


## pass options to free ##
alias meminfo='free -m -l -t'

## get top processes eating memory ##
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'

## get top processes eating CPU ##
alias pscpu='ps auxf | sort -nr -k 3'
alias pscup10='ps auxf | sort -nr -k 3 | head -10'

## get server CPU info ##
alias cpuinfo='lscpu'
