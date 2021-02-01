export ZSH="$HOME/.oh-my-zsh"
export PATH="$(yarn global bin):$PATH"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

ZSH_THEME="robbyrussell"
plugins=(git nvm zsh-syntax-highlighting yarn)

source $ZSH/oh-my-zsh.sh

eval "$(starship init zsh)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
