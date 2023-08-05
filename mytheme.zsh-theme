# Codespaces zsh prompt theme
__zsh_prompt() {
    PROMPT="%{$fg[green]%}@%n %(?:%{$reset_color%}➜ :%{$fg_bold[red]%}➜ )" # User/exit code arrow
    PROMPT+='%{$fg_bold[cyan]%}%(5~|%-1~/…/%3~|%4~)%{$reset_color%} ' # cwd
    PROMPT+='$(git_prompt_info)%{$fg[white]%}$ %{$reset_color%}' # Git status
    unset -f __zsh_prompt
}

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[magenta]%}(%{$fg_bold[magenta]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg_bold[yellow]%}×%{$fg_bold[magenta]%})"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[magenta]%})"
__zsh_prompt
