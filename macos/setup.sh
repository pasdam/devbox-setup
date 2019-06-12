#!/bin/sh

installApps() {
    xcode-select --install
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    brew bundle
}

showHiddenFiles() {
    defaults write com.apple.Finder AppleShowAllFiles true
    killall Finder
}

installApps
showHiddenFiles
