#!/bin/sh

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
VSCODE_CONFIG_DIR="$HOME/Library/Application Support/VSCodium/User"

if [ -f "$SCRIPT_DIR/keybindings.json" ]; then
    echo "$SCRIPT_DIR/keybindings.json already exists, the setup won't override it"

else 
    ln -sf  "$VSCODE_CONFIG_DIR/keybindings.json"
fi

if [ -f "$SCRIPT_DIR/settings.json" ]; then
    echo "$SCRIPT_DIR/settings.json already exists, the setup won't override it"
else 
    ln -sf $SCRIPT_DIR/settings.json "$VSCODE_CONFIG_DIR/settings.json"
fi

if [ -d "$SCRIPT_DIR/snippets" ]; then
    echo "$SCRIPT_DIR/snippets already exists, the setup won't override it"
else 
    ln -sf $SCRIPT_DIR/snippets "$VSCODE_CONFIG_DIR/snippets"
fi
