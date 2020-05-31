# History
# ==============
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=2000
ZSH_AUTOSUGGEST_STRATEGY=(match_prev_cmd history completion)

# Theme
# ==============
if [[ -n $SSH_CONNECTION ]]; then
  ZSH_THEME="robbyrussell_mod"
else
  ZSH_THEME="robbyrussell"
fi

# Load files
# ==============
SETUP_PROJECT_PATH=$HOME/workspace/github/pasdam/devbox-setup

# Load environment variables
source $SETUP_PROJECT_PATH/zsh/.env
if [ -f "$SETUP_PROJECT_PATH/zsh/.env.local" ]; then
    source $SETUP_PROJECT_PATH/zsh/.env.local
fi

# # Load oh-my-zsh
source $SETUP_PROJECT_PATH/zsh/oh-my-zsh/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Load aliases files from ./aliases
for file in $SETUP_PROJECT_PATH/zsh/aliases/*; do
  source $file
done
if [ -f "$SETUP_PROJECT_PATH/zsh/aliases/.local" ]; then
    source $SETUP_PROJECT_PATH/zsh/aliases/.local
fi
