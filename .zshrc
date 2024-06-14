export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="mytheme"

plugins=(git nvm zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

unsetopt beep

if [ wslpath ]
then
  keep_current_path() {
    printf "\e]9;9;%s\e\\" "$(wslpath -w "$PWD")"
  }
  precmd_functions+=(keep_current_path)
fi