source $HOME/.zsh/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles
antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions

# Load the theme
antigen theme https://github.com/denysdovhan/spaceship-zsh-theme spaceship

# Tell antigen that you're done.
antigen apply

# Configure the spaceship theme
SPACESHIP_GIT_BRANCH_PREFIX="⎇  "
SPACESHIP_DOCKER_SHOW=false
SPACESHIP_DIR_TRUNC=0
