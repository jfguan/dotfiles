source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

export ZSH="/Users/jfguan/.oh-my-zsh"

ZSH_THEME="spaceship"
SPACESHIP_PROMPT_ORDER=(
  dir           # Current directory section
  git           # Git section (git_branch + git_status)
  venv
  node          # Node.js section
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_CHAR_SYMBOL="${SPACESHIP_CHAR_SYMBOL="❯ "}"

plugins=(
  git
  autojump
)

source $ZSH/oh-my-zsh.sh

