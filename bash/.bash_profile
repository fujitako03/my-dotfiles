# alias
alias d='cd'
alias ..='ls -la'
alias rm='rm -i'
alias mv='mv -i'

# ============
# path
# ============
# poetry
export PATH="$HOME/.poetry/bin:$PATH"

# google-cloud-sdk
export PATH="$HOME/tool/google-cloud-sdk/bin:$PATH"

# pyenv path
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init - zsh --no-rehash)"
eval "$(pyenv virtualenv-init -)"


