export PATH=$PATH:$HOME/.local/bin
export EDITOR=vim
export VISUAL=vim

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=50
SAVEHIST=500
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/charlie/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

autoload -Uz promptinit
promptinit
PROMPT='%n@%m %~ %# '

# Aliases

# Todo list and update todo list
alias td="vim ~/.todo/todo.md"
alias uptd="~/.local/bin/update-todos.sh"

# Update dotfiles
alias updf="~/.local/bin/update-dotfiles.sh"
