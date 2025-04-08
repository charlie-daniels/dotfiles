# Charlie's Dotfiles

## Overview

These are my WIP dotfiles for Arch Linux!

> [!NOTE]
> These configs were created specifically for my laptop and file system so may not work properly on another system, especially a desktop.

Login manager: `[ly](https://github.com/fairyglade/ly)`

Window manager: `[hyprland](https://github.com/hyprwm/Hyprland)`

Menu: `[tofi](https://github.com/philj56/tofi)`

Terminal: `[kitty](https://github.com/kovidgoyal/kitty)`

Shell: `[zsh](https://www.zsh.org/)`

Bar: `[waybar](https://github.com/Alexays/Waybar)`

Editors: `[vim](https://www.vim.org/)` `[vscode](https://code.visualstudio.com/)`

Notification manager: `[dunst](https://github.com/dunst-project/dunst)`

File manager: I just use `[fzf](https://github.com/junegunn/fzf)`

## Details

### Theme

`[Gruvbox Dark](https://github.com/morhetz/gruvbox)`, mixed with a few other highlight colors throughout. Pastel tones to match it found in the colors dir.

Some themes are external add-ons:

- `[Firefox](https://addons.mozilla.org/en-GB/firefox/addon/gruvbox-dark-theme/)`

### Fonts

I use `[getnf](https://github.com/getnf/getnf)` to easily install `[Nerd Fonts](https://www.nerdfonts.com/)`

- `FiraMono`
- `NerdFontsSymbolsOnly`

## Keybinds and Shortcuts

### Hyprland

- Most keybinds are hyprland defaults.
- `prtscr` = executes `[hyprshot](https://github.com/Gustash/Hyprshot)`
- `super + f` = executes `tofi-run`

### Zsh

- `gs` = `git status`
- `zrc` = `vim ~/.zshrc`
- `fzfp` = `vim $(fzf --preview="bat --color=always {}")`
- `ls` = `ls --color`
- `td` = edits todo list.
- `updf` = updates these dotfiles.
- `uptd` = updates todo list and pushes to GH.
