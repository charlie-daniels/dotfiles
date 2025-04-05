#!/bin/bash

# Folders and files must be setup prior to avoid annoying git initialisation

# Location of list of todos
todoPath="$HOME/.todo"
todoFile="todo.md"

# Push changes to github
cd "$todoPath"
git add "$todoFile"
git commit -m "$(date '+%d/%m/%Y %H:%M')"
git push
