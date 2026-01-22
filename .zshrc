export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

# Git
alias gs='git status'
alias gc='git commit -am'
alias gs='git stash'
alias gsp='git stash pop'
alias gu='git pull'
alias gp='git push'
alias gr='git reset HEAD~'
alias gh='git checkout'
alias gb='git checkout -b'

# Zsh
alias sz='source ~/.zshrc'
alias cz='code ~/.zshrc'

# Bun
alias i='bun install'
alias d='bun dev'
ra() {
  if [ $# -eq 0 ]; then
    echo "Usage: ra <package>"
    return 1
  fi

  bun rm "$1" && bun add "$1"
}
rad() {
  if [ $# -eq 0 ]; then
    echo "Usage: rad <package>"
    return 1
  fi

  bun rm "$1" && bun add -d "$1"
}

# nav
alias c='cd ~'
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
