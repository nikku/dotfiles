#
# ~/.zshrc
#

# skip if not running interactively
[[ $- != *i* ]] && return


## helpers

source "$HOME/.zsh/dirs"
source "$HOME/.zsh/travis"
source "$HOME/.zsh/rvm"
source "$HOME/.zsh/nvm"
source "$HOME/.zsh/z"

source "$HOME/.zsh/git"
source "$HOME/.zsh/completion"
source "$HOME/.zsh/aliases"
source "$HOME/.zsh/themes"
source "$HOME/.zsh/theme/blinks"
source "$HOME/.zsh/history"
source "$HOME/.zsh/keys"

#source "$HOME/.zsh/android"


## load stuff

# autoload -U promptinit && promptinit