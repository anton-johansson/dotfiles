source ~/.dotfiles/zsh/antigen.zsh
source ~/.dotfiles/zsh/aliases.zsh
source ~/.dotfiles/zsh/functions.zsh
source ~/.privaterc

# Include customs cripts
DOTFILES_SCRIPTS="${HOME}/.dotfiles/zsh/bin"

# N and NPM
N_PREFIX="/opt/n"
NPM_PACKAGES="${HOME}/.npm-packages"

# Golang
GOROOT=/usr/local/go
GOPATH=${HOME}/go

# Include binaries on the path
export PATH=$PATH:$DOTFILES_SCRIPTS:$N_PREFIX/bin:$NPM_PACKAGES/bin:$GOROOT/bin:$GOPATH/bin

# Set zsh options
HISTFILE=$HOME/.zsh/history
