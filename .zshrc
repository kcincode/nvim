export EDITOR="vim"

# setup homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# starship prompts
eval "$(starship init zsh)"

# homebrew build flags
export LDFLAGS="-L$(brew --prefix zbar)/lib"
export CFLAGS="-I$(brew --prefix zbar)/include"


# virtualenv wrapper
export VIRTUALENVWRAPPER_PYTHON=/opt/homebrew/bin/python3
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Code
. /opt/homebrew/bin/virtualenvwrapper_lazy.sh

export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# bun completions
[ -s "/Users/fellw9/.bun/_bun" ] && source "/Users/fellw9/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

# neovim
alias vim="/opt/homebrew/bin/nvim"

# pnpm
export PNPM_HOME="/Users/fellw9/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

# postgresql
export PATH="/opt/homebrew/opt/postgresql@16/bin:$PATH"
export PATH="$HOME/go/bin:$PATH"

# Set a blazingly fast keyboard repeat rate
defaults write NSGlobalDomain KeyRepeat -int 1
defaults write NSGlobalDomain InitialKeyRepeat -int 15
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

export XDG_CONFIG_HOME="$HOME/.config"

# Tmux
# Always work in a tmux session if Tmux is installed
if which tmux 2>&1 >/dev/null; then
 if [ $TERM != "screen-256color" ] && [  $TERM != "screen" ]; then
   tmux attach -t default || tmux new -s default; exit
 fi
fi

