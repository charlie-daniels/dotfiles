export PATH=$PATH:$HOME/.local/bin
export EDITOR=vim
export VISUAL=vim

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=50
SAVEHIST=500
unsetopt beep
bindkey -v
zstyle :compinstall filename '/home/charlie/.zshrc'

autoload -Uz compinit && compinit
autoload -Uz promptinit && promptinit
# Load VCS into prompt
autoload -Uz vcs_info
precmd() { vcs_info }
# And format branch details
zstyle ':vcs_info:git:*' formats '%b '

setopt PROMPT_SUBST
PROMPT='%F{green}%T%f %F{yellow}%~%f %F{red}${vcs_info_msg_0_}%f%F{white}$%f '

# Aliases

# Colors
alias ls="ls --color"

# Todo list and update todo list
alias td="vim ~/.todo/todo.md"
alias uptd="~/.local/bin/update-todos.sh"

# Update dotfiles
alias updf="~/.local/bin/update-dotfiles.sh"
