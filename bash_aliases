# dotfiles - my extra aliases

alias tmux='tmux -2'

alias cls='clear'
alias df='df -h'
alias ll='ls -la'
alias l.='ls -lad .*'
alias cd..='cd ..'
alias ports='echo [netstat -tulanp] && netstat -tulanp'




export PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w\[\033[01;33m\]\
$(__git_ps1)\[\033[01;34m\] \$\[\033[00m\] '




