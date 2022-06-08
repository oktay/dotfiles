export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"
plugins=(git nvm zsh-syntax-highlighting yarn pyenv)

source $ZSH/oh-my-zsh.sh

export PATH="$(yarn global bin):$PATH"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

eval "$(starship init zsh)"

unsetopt beep
