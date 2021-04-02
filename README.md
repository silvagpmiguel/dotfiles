# `dotfiles` - My Bash Functions/Commands/Aliases

`dotfiles` is a special place where all **bash functions/commands/aliases** should reside. All you need to do is to run the install script and your custom scripts inside of the `~/.dotfiles` folder are ready to be used in the terminal!

## Add Your Custom Bash Functions
To add a new custom functions file, move it to the `~/.dotfiles/functions` folder, with a filename that must end with `_functions`. Also, you can attach any custom function to any `_functions` file present in it. 

## Add Your Custom Bash Aliases
To add a new custom aliases file, move it to the `~/.dotfiles/aliases` folder, with a filename that must end with `_aliases`. Also, you can attach any custom alias to any `_aliases` file present in it. 

## Add Your Custom Bash Commands
To add a new bash command, move the command's folder/script into the `~/.dotfiles` folder, create a symbolic link of the executable and place it inside `~/.dotfiles/bin` folder.

## Install

```bash
curl -sL https://raw.githubusercontent.com/silvagpmiguel/dotfiles/main/install | bash && . ~/.profile && . ~/.bashrc
```

## Uninstall
```bash
bash ~/.dotfiles/uninstall
```