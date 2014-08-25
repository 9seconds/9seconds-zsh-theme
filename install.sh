#!/usr/bin/env bash

set -e

repo="git://github.com/9seconds/9seconds-zsh-theme.git"
target="$HOME/.oh-my-zsh-themes/9seconds"

if [ -d "$target" ]; then
    if [ -d "$target/.git" ]; then
        (cd $target && git pull --ff-only origin master)
    fi
else
    git clone $repo $target
fi

ln -sf $target/9seconds.zsh-theme $HOME/.oh-my-zsh/themes/9seconds.zsh-theme
