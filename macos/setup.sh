#!/usr/bin/env bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

installApps() {
    xcode-select --install
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    brew bundle
    sudo brew services start stubby
}

showHiddenFiles() {
    defaults write com.apple.Finder AppleShowAllFiles true
    killall Finder
}

installApps
showHiddenFiles

if [ -f "$SCRIPT_DIR/.local.sh" ]; then
    echo "Running private script"
    sh "$SCRIPT_DIR/.local.sh"
fi
