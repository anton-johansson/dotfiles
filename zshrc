source ~/.dotfiles/zsh/antigen.zsh
source ~/.dotfiles/zsh/aliases.zsh
source ~/.dotfiles/zsh/functions.zsh
source ~/.privaterc

# Include customs cripts
DOTFILES_SCRIPTS="${HOME}/.dotfiles/zsh/bin"

# Golang
GOROOT=/usr/local/go
GOPATH=${HOME}/go

# Include binaries on the path
export PATH=$PATH:$DOTFILES_SCRIPTS:$N_PREFIX/bin:$NPM_PACKAGES/bin:$GOROOT/bin:$GOPATH/bin

# Set zsh options
HISTFILE=$HOME/.zsh/history

# Lazy load kubectl auto-completion (creds: https://stackoverflow.com/questions/42356861/can-i-use-autocompletion-for-kubectl-in-zsh)
kubectl () {
    command kubectl $*
    if [[ -z $KUBECTL_COMPLETE ]]
    then
        source <(command kubectl completion zsh)
        KUBECTL_COMPLETE=1
    fi
}

# Configure Node Package Manager
NPM_PACKAGES="${HOME}/.npm-packages"

# Configure Node Version Manager (NVM)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
