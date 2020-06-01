#!/usr/bin/env bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# install dotfiles
mv $HOME/.zshrc $HOME/.zshrc.bkp
ln -sf $SCRIPT_DIR/.zshrc $HOME/.zshrc

$SCRIPT_DIR/oh-my-zsh/setup.sh
