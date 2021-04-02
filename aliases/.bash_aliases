#!/usr/bin/env bash

alias rm='trash' # replace rm with trash to recover deleted files (apt install trash-cli)
alias diff='colordiff' # use diff with colors (apt install colordiff)
alias pcinfo='neofetch' # display OS/software/hardware info (apt install neofetch)

alias ls='ls -lC --color=auto' # Files list
alias l.='ls -A' # Hidden files list
alias ll='ls -lh' # Long files list
alias ll.='ls -Alh' # Long hidden files list
alias llt='ls -lht' # Long files list sorted by time desc
alias llt.='ls -Alht' # Long hidden files list sorted by time desc
alias lfs='du -sh * | sort -h' # Filesize list sorted by size asc
alias llfs='du -ach | sort -h' # Long filesize list sorted by size asc
alias c='clear' # clear
alias cls='clear && ls' # clear and ls
alias ..='cd ..' # go back
alias ...='cd ../..' # go 2 steps back
alias ....='cd ../../..' # go 3 steps back
alias wget='wget -c' # continue download in case of problems
alias reload='. ~/.profile && . ~/.bashrc' # reload profile & bashrc

alias mount='mount | column -t' # readable mount
alias h='history' # short history alias
alias gh='history|grep' # grep history
alias h10='history 10' # short 10 recent history alias
alias h20='history 20' # short 20 recent history alias
alias h30='history 30' # short 30 recent history alias

alias pstr='ps auxf' # tree process list
alias psmem='ps auxf | sort -nr -k 4' # get top process eating memory 
alias psmem10='ps auxf | sort -nr -k 4 | head -10' # get 10 top process eating memory
alias pscpu='ps auxf | sort -nr -k 3' # get top process eating cpu
alias pscpu10='ps auxf | sort -nr -k 3 | head -10' # get 10 top process eating cpu
alias meminfo='free -mlt' # memory info
alias cpuinfo='lscpu' # cpu info
alias diskinfo='df -hT --total' # readable disk usage info 
alias diskinfol='df -ahT --total' # Long readable disk usage info

alias ports='netstat -tulanp' # list TCP/UDP ports
alias route='netstat -rn' # route table
alias myip='hostname -I' # local machine ip address

alias logt-='tail -F' # tail and wait for output
alias logl='less +F' # tail, wait for output and display in the default editor