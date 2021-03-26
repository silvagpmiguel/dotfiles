# `dotfiles` - My Bash Functions/Commands/Aliases

`dotfiles` is a special place where all **bash functions/commands/aliases** should reside. All you need to do is to run the install script and your custom scripts inside of the `~/.dotfiles` folder are ready to be used in the terminal!

## Add Your Custom Bash Functions
Append your bash functions in `~/.dotfiles/.bash_functions`

## Add Your Custom Bash Aliases
Append your bash aliases in `~/.dotfiles/.bash_aliases`

## Add Your Custom Bash Commands
To add a bash command, move the command's folder/script into the `~/.dotfiles` folder, create a symbolic link of the executable and place it inside `~/.dotfiles/bin` folder.

## Install

```bash
curl -sL https://raw.githubusercontent.com/silvagpmiguel/dotfiles/main/install | bash && source ~/.profile ~/.bashrc
```

## Uninstall
```bash
bash ~/.dotfiles/uninstall
```