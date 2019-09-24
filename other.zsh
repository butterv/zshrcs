alias ls='ls -F'
alias la='ls -a'
alias ll='ls -l'
alias rm='rm -i'
alias cd='cd -P'
alias cp='cp -i'
alias mv='mv -i'
alias mkdir='mkdir -p'
alias v='vim'
alias shreboot='exec $SHELL -l'

export PATH=$HOME/.nodebrew/current/bin:$PATH
export PATH="$HOME/.yarn/bin:$PATH"
export PATH=$PATH:$HOME/google-cloud-sdk/bin

alias docker-stop-all='docker stop $(docker ps -q)'

# zsh completion
source <(kubectl completion zsh)

export EDITOR="vim"
alias vzshrc='vim ~/.zshrc'
alias czshrc='cat ~/.zshrc'

# eval "$(direnv hook bash)"
# source /usr/local/etc/bash_completion.d/git-prompt.sh
# source /usr/local/etc/bash_completion.d/git-completion.bash
# export PATH="$PATH:$HOME/development/flutter/bin"

echo -ne "\033]0;$(pwd | rev | awk -F \/ '{print "/"$1"/"$2}'| rev)\007"
function chpwd() { echo -ne "\033]0;$(pwd | rev | awk -F \/ '{print "/"$1"/"$2}'| rev)\007"}
