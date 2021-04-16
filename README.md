# `dotfiles` - My Bash Functions/Commands/Aliases

`dotfiles` is a special place where all your **bash functions/commands/aliases/completions/env_vars** should reside. All you need to do is to run the install script and your custom scripts inside of the `~/.dotfiles` folder are ready to be used in the terminal!

## Bash Aliases
To add a new custom aliases file, move it to the `~/.dotfiles/aliases` folder, with a filename that must end with `_aliases`. Also, you can attach any custom alias to any `_aliases` file present in it. 

## Bash Commands
To add a new bash command, move the command's folder/script into the `~/.dotfiles` folder, create a symbolic link of the executable and place it inside `~/.dotfiles/bin` folder.

## Bash Completions
To add a new custom completions file, move it to the `~/.dotfiles/completions` folder, with a filename that must end with `_completions`. Also, you can attach any custom completion to any `_completions` file present in it. 

## Bash Environment Variables
To add a new custom bash environment file, move it to the `~/.dotfiles/env` folder, with a filename that must end with `_env`. Also, you can attach any custom environment variable to any `_env` file present in it. 

## Bash Functions
To add a new custom functions file, move it to the `~/.dotfiles/functions` folder, with a filename that must end with `_functions`. Also, you can attach any custom function to any `_functions` file present in it. 

## Install

```bash
curl -sL https://raw.githubusercontent.com/silvagpmiguel/dotfiles/main/install | bash && . ~/.profile && . ~/.bashrc
```

## Uninstall
```bash
bash ~/.dotfiles/uninstall
```