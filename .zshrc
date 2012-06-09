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

# linux console
if [ "$TERM" = "linux" ]; then
    echo -en "\e]P0222222" #black
    echo -en "\e]P8222222" #darkgrey
    echo -en "\e]P1803232" #darkred
    echo -en "\e]P9982b2b" #red
    echo -en "\e]P25b762f" #darkgreen
    echo -en "\e]PA89b83f" #green
    echo -en "\e]P3aa9943" #brown
    echo -en "\e]PBefef60" #yellow
    echo -en "\e]P4324c80" #darkblue
    echo -en "\e]PC2b4f98" #blue
    echo -en "\e]P5706c9a" #darkmagenta
    echo -en "\e]PD826ab1" #magenta
    echo -en "\e]P692b19e" #darkcyan
    echo -en "\e]PEa1cdcd" #cyan
    echo -en "\e]P7ffffff" #lightgrey
    echo -en "\e]PFdedede" #white
    clear #for background artifacting
fi
