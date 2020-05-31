#!/bin/sh

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# install dotfiles
ln -sf $SCRIPT_DIR/.zshrc $HOME/.zshrc

$SCRIPT_DIR/oh-my-zsh/setup.sh
