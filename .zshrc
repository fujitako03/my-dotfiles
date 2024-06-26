# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# alias
source ~/.zsh_alias

# pip path
export PATH="$PATH:$HOME/.local/bin"

# theme
# prompt steeef

# Ctrl+^ then ..
# function cdup() {
#   echo
#   cd ..
#   prompt_${prompt_theme}_precmd
#   zle reset-prompt
#   return 0
# }
# zle -N cdup
# bindkey '^\^' cdup

