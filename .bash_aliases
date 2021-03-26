#!/usr/bin/env bash

### Place your aliases here ###
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
alias reload='source ~/.profile ~/.bashrc' # reload profile & bashrc

alias mount='mount |column -t' # readable mount
alias h='history' # short history alias
alias gh='history|grep' # grep history
alias h10='history 10' # short 10 recent history alias
alias h20='history 20' # short 20 recent history alias
alias h30='history 30' # short 30 recent history alias

alias remove='sudo apt remove' # apt remove
alias removey='sudo apt -y remove' # apt remove yes
alias purge='sudo apt purge' # apt purge 
alias purgey='sudo apt -y purge' # apt purge yes
alias install='sudo apt install' # apt install
alias instally='sudo apt -y install' # apt install yes
alias updatey='sudo apt -y update' # apt update yes
alias upgradey='sudo apt -y upgrade' # apt upgrade yes
alias upgradable='sudo apt list --upgradable' # list apt upgradable
alias autoremovey='sudo apt -y autoremove' # apt autoremove
alias update='updatey && upgradable && upgradey && autoremovey' # full apt update cycle

alias pstree='ps auxf' # tree process list
alias psmem='ps auxf | sort -nr -k 4' # get top process eating memory 
alias psmem10='ps auxf | sort -nr -k 4 | head -10' # get 10 top process eating memory
alias pscpu='ps auxf | sort -nr -k 3' # get top process eating cpu
alias pscpu10='ps auxf | sort -nr -k 3 | head -10' # get 10 top process eating cpu
alias meminfo='free -mlt' # memory info
alias cpuinfo='lscpu' # cpu info
alias diskinfo='df -hT --total' # readable disk usage info 
alias diskinfol='df -ahT --total' # Long readable disk usage info

alias ports='netstat -tulanp' # list TCP/UDP ports
alias myip='hostname -I' # local machine ip address
alias route='netstat -rn' # route table

alias tailf='tail -F' # tail and wait for output
alias taile='less +F' # tail, wait for output and display in the default editor

alias ga='git add' # git add file
alias ga.='git add .' # git add all files in current folder
alias gac='git add . && git commit -m' # git add all files in current folder and commit
alias gamend='git commit --amend -m' # git amend without prompt
alias gb='git branch' # git branch (can be used to add new branch)
alias gdelb='git branch -D' # git delete branch
alias gc='git commit -m' # git add all files in current folder and commit
alias gch='git checkout' # git checkout
alias gchf='git checkout -f' # git checkout force
alias gcb='git checkout -b' # create branch and checkout into it
alias gcl='git clone' # git clone
alias gd='git diff' # git diff
alias gconfl='git config --list' # git list config
alias gconfg='git config --global' # git config global
alias gconfgu='git config --global --unset' # git config global unset
alias gl='git log --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit' # pretty git log
alias gp='git push' # git push
alias gpf='git push -f' # git push -f
alias gpull='git pull' # git push -f
alias gr='git reset' # git reset
alias gs='git status' # git status
alias gstash='git stash' # git stash
alias gstashp='git stash pop' # git stash pop
alias gundo='git reset --soft HEAD~1' # git undo last commit
alias gundoh='git reset --hard HEAD~1' # git undo last commit (hard)