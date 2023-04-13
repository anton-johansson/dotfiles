source ~/.dotfiles/zsh/aliases.zsh
source ~/.privaterc
source ~/.gvm/scripts/gvm

# Include customs cripts
DOTFILES_SCRIPTS="${HOME}/.dotfiles/zsh/bin"
export PATH="$PATH:$DOTFILES_SCRIPTS"

# Configure Maven
M2_HOME="/opt/apache-maven-3.8.5"
PATH="$PATH:$M2_HOME/bin"

# Oh my zsh
SPACESHIP_TIME_SHOW=true
SPACESHIP_CHAR_SYMBOL=❯
SPACESHIP_CHAR_SYMBOL_FAILURE=✖
SPACESHIP_CHAR_SUFFIX=" "
SPACESHIP_PROMPT_ORDER=(time dir git exec_time async line_sep battery jobs exit_code sudo char)
ZSH_THEME="spaceship"
plugins=(git zsh-syntax-highlighting zsh-autosuggestions)
source ~/.dotfiles/zsh/oh-my-zsh/oh-my-zsh.sh

# fnm
export PATH="/home/viantjoh/.local/share/fnm:$PATH"
eval "`fnm env`"

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
