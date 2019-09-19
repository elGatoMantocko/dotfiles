# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="agnoster"

HIST_STAMPS="mm/dd/yyyy"

plugins=(
  aterminal
  git
  zsh-syntax-highlighting
)

# User configuration
export EDITOR='vim'
export GIT_COMMIT=local
# export JAVA_HOME=$(/usr/libexec/java_home)/jre
export NVM_DIR="$HOME/.nvm"
# export JAVA_TOOL_OPTIONS="-javaagent:/Users/emantock/Downloads/lombok.jar -Xbootclasspath/p:/Users/emantock/Downloads/lombok.jar"

. "/usr/local/opt/nvm/nvm.sh"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# setup 'fuck' command just enter `fuck` after messing up a command
eval $(thefuck --alias)

[ -f $ZSH/oh-my-zsh.sh ] && source $ZSH/oh-my-zsh.sh
[ -f $HOME/.alias.zsh ] && source $HOME/.alias.zsh
[ -f $HOME/.fzf.zsh ] && source $HOME/.fzf.zsh
[ -f $HOME/.config/exercism/exercism_completion.zsh ] && source $HOME/.config/exercism/exercism_completion.zsh

export PATH="/usr/local/sbin:$PATH"
