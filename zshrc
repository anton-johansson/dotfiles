source ~/.dotfiles/zsh/antigen.zsh
source ~/.dotfiles/zsh/aliases.zsh
source ~/.dotfiles/zsh/functions.zsh
source ~/.privaterc

# Include binaries
N_PREFIX="/opt/n"
NPM_PACKAGES="${HOME}/.npm-packages"
DOTFILES_SCRIPTS="${HOME}/.dotfiles/zsh/bin"
export PATH=$PATH:$N_PREFIX/bin:$NPM_PACKAGES:$DOTFILES_SCRIPTS

# Set zsh options
HISTFILE=$HOME/.zsh/history
