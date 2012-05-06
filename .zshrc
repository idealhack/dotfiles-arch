# oh-my-zsh
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(archlinux gem git git-flow heroku node npm pip python ruby vundle)
source $ZSH/oh-my-zsh.sh
unsetopt correct_all

# varables
export EDITOR="vim"
export BROWSER=/usr/bin/chromium
export PATH=$PATH:$HOME/bin
export PATH=$PATH:$HOME/.gem/ruby/1.9.1/bin
export NODE_PATH=/usr/lib/node_modules

# ailases
alias open="xdg-open"
alias ssh="TERM=linux ssh"

# keys
bindkey "\e[7~" beginning-of-line
bindkey "\e[8~" end-of-line
