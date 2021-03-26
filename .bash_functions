#!/usr/bin/env bash

### Place your functions here ###
# Extract any archive `$1`
extract() {
 if [[ -f $1 ]]; then
    # display usage if no parameters given
    echo "Usage: extract <FILENAME>.<zip|rar|bz2|gz|tar|tbz2|tgz|Z|7z|xz|ex|tar.bz2|tar.gz|tar.xz>"
  else
    case $1 in
      *.tar.bz2)   tar xvjf ./$1    ;;
      *.tar.gz)    tar xvzf ./$1    ;;
      *.tar.xz)    tar xvJf ./$1    ;;
      *.lzma)      unlzma ./$1      ;;
      *.bz2)       bunzip2 ./$1     ;;
      *.rar)       unrar x -ad ./$1 ;;
      *.gz)        gunzip ./$1      ;;
      *.tar)       tar xvf ./$1     ;;
      *.tbz2)      tar xvjf ./$1    ;;
      *.tgz)       tar xvzf ./$1    ;;
      *.zip)       unzip ./$1       ;;
      *.Z)         uncompress ./$1  ;;
      *.7z)        7z x ./$1        ;;
      *.xz)        unxz ./$1        ;;
      *.exe)       cabextract ./$1  ;;
      *)           echo "extract: '$1' - unknown archive method" ;;
    esac
  fi
}

# git commit with description `$1` and push to branch `$2` (if exists)
gcp() {
  if [[ -z "$1" ]]; then
    echo "Usage: gcp <DESCRIPTION> [BRANCH]"
  else
    [[ -z "$2" ]] && branch="" || branch="origin $2"
    git commit -m "$1" && git push "$branch"
  fi
}

# git add `$1` (if exists), commit with description `$2` and push to branch `$3` (if exists)
gacp() {
  case $# in
    1)
      git add "." && git commit -m "$1" && git push
    ;;
    2)
      git add "$1" && git commit -m "$2" && git push
    ;;
    3)
      git add "$1" && git commit -m "$2" && git push origin "$3"
    ;;
    *)
      echo "Usage: gacp [PATH] <DESCRIPTION> [BRANCH]"
    ;;
  esac
}

# get process name `$1` info
proc() {
    [[ -z "$1" ]] && echo "Usage: proc <PROCESS_NAME>" || ps aux | grep "$1"
}

# who is port `$1`
port() {
  [[ -z "$1" ]] && echo "Usage: port <PORT_NUM>" || lsof -Pi ":$1" -sTCP:LISTEN
}

# make folder in `$1` and go into it
mkcd() {
  mkdir -p $1; cd $1
}

# converts and saves youtube video `$1` to mp3
youtmp3() {
  [[ -z "$1" ]] && echo "Usage: youtube_to_mp3 <URL>" || youtube-dl --extract-audio --audio-format mp3 "$1"
}

# Find paths in a folder `$1` that contains a filename `$2` and a specific content `$3` (if exists)
findwith() {
  if [[ ! -d $1 || -z "$2" ]]; then
    echo "Usage: findwith <FOLDER_PATH> <FILENAME> [FILECONTENT]"
  else
    if [[ -z "$3" ]]; then
      find "$1" -name *"$2"* 2> /dev/null
    else
      find "$1" -name *"$2"* -exec grep -li "$3" {} \; 2> /dev/null
    fi
  fi
}