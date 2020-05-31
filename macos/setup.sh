#!/bin/sh

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

installApps() {
    xcode-select --install
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    brew bundle

    brew install https://raw.githubusercontent.com/Homebrew/homebrew-core/c3a105c41a8f8be942bf97554466af236c2fac72/Formula/kubernetes-helm.rb
    brew pin kubernetes-helm
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
