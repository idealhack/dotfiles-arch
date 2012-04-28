#!/bin/bash
# fork from https://github.com/mathiasbynens/dotfiles/blob/fdd4/bootstrap.sh

cd "$(dirname "$0")"

git pull

function doIt() {
    rsync --exclude ".git/" --exclude "rsync.sh" -av . ~
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
    doIt
else
    read -p "This may overwrite existing files. Are you sure? (y/N) " -n 1
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        doIt
    fi
fi

unset doIt
