##########################################################
#
#     Initialization
#
##########################################################

export ZSH="/Users/spike/.oh-my-zsh"

ZSH_THEME=jispwoso

plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh


##########################################################
#
#     Shortcuts
#
##########################################################

alias c="clear"
alias t="tmux"
alias gs="git status -s"
alias gl="git log --oneline --decorate --graph --all --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"




##########################################################
#
#     Environment
#
##########################################################

export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.aliyun.com/homebrew/homebrew-bottles
export TERM=xterm-256color

# the fuck
eval $(thefuck --alias)

# hexo
export PATH="/Users/spike/node_modules/hexo-cli/bin:$PATH"

# MongoDB
export PATH=${PATH}:/usr/local/mongodb/bin

# mySQL
export PATH=$PATH:/usr/local/mysql/bin

# JAVA
export export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_201.jdk/Contents/Home

# nvm
export NVM_DIR="/Users/spike/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.aliyun.com/homebrew/homebrew-bottles

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/spike/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/spike/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/spike/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/spike/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

