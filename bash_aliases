# dotfiles - my extra aliases

alias tmux='tmux -2'

alias cls='clear'
alias df='df -h'
alias ll='ls -la'
alias l.='ls -lad .*'
alias cd..='cd ..'
alias ports='echo [netstat -tulanp] && netstat -tulanp'


alias t-start='sudo service transmission-daemon start'
alias t-stop='sudo service transmission-daemon stop'
alias t-reload='sudo service transmission-daemon reload'

alias tsm-basicstats='transmission-remote -n 'transmission:transmission' -st'
alias tsm-fullstats='transmission-remote -n 'transmission:transmission' -si'

tsm() { transmission-remote -n 'transmission:transmission' -l ;}

tsm-add() { transmission-remote -n 'transmission:transmission' -a $1 ;}

tsm-info() { transmission-remote -n 'transmission:transmission' -t $1 --info ;}
tsm-files() { transmission-remote -n 'transmission:transmission' -t $1 --files ;}
tsm-stop() { transmission-remote -n 'transmission:transmission' -t $1 --stop ;}
tsm-start() { transmission-remote -n 'transmission:transmission' -t $1 --start ;}
tsm-remove() { transmission-remote -n 'transmission:transmission' -t $1 --remove ;}
tsm-verify() { transmission-remote -n 'transmission:transmission' -t $1 --verify ;}
tsm-peers() { transmission-remote -n 'transmission:transmission' -t $1 --peer-info ;}


export PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w\[\033[01;33m\]\
$(__git_ps1)\[\033[01;34m\] \$\[\033[00m\] '




