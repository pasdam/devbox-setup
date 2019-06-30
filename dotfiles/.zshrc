# History
# ==============
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=2000

# Theme
# ==============
ZSH_THEME="robbyrussell"

# Load files
# ==============
SETUP_PROJECT_PATH=$HOME/workspace/github/pasdam/devbox-setup

# Load environment variables
source $SETUP_PROJECT_PATH/dotfiles/.env
if [ -f "$SETUP_PROJECT_PATH/dotfiles/.env.local" ]; then
    source $SETUP_PROJECT_PATH/dotfiles/.env.local
fi

# Load oh-my-zsh
source $SETUP_PROJECT_PATH/dotfiles/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Load aliases files from ./aliases
for file in $SETUP_PROJECT_PATH/dotfiles/aliases/*; do
  source $file
done
