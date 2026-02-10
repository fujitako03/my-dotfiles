# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# alias
source ~/.zsh_alias

# pip path
export PATH="$PATH:$HOME/.local/bin"

# rye
source "$HOME/.rye/env"

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


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/kosuke/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/kosuke/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/kosuke/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/kosuke/google-cloud-sdk/completion.zsh.inc'; fi

# Added by Antigravity
export PATH="/Users/kosuke/.antigravity/antigravity/bin:$PATH"
