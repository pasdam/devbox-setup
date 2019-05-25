#!/bin/sh

installApps() {
    brew bundle
}

showHiddenFiles() {
    defaults write com.apple.Finder AppleShowAllFiles true
    killall Finder
}

installApps
showHiddenFiles
