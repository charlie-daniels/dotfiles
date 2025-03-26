#!/bin/bash

# Array of folders/files to update to Github
declare -a needUpdate=(".config/waybar" "images/backgrounds" ".config/hypr" ".config/kitty" ".config/theme" ".local/bin" ".zshrc")

# Local dotfiles folder
dotfilesPath="$HOME/documents/configs/dotfiles"

# Iterate through each file/folder and replace to the dotfiles folder
for f in "${needUpdate[@]}"; do
	rm -rf "${dotfilesPath}/${f}"
	mkdir -p "$(dirname "${dotfilesPath}/${f}")" && cp -r "$HOME/${f}" "${dotfilesPath}/${f}"
done


# List all installed packages
pacman -Qe > "${dotfilesPath}/packages.txt"
