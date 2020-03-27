alias ls='ls -F'
alias la='ls -a'
alias ll='ls -l'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias mkdir='mkdir -p'
alias v='vim'
alias shreboot='exec $SHELL -l'
function cdls() {
	cd -P $1
	ls -F
}
alias cd=cdls
alias simu='open -a Simulator'

export PATH=/usr/local/bin:$PATH
export PATH=$HOME/.nodebrew/current/bin:$PATH
export PATH="$HOME/.yarn/bin:$PATH"
export PATH=$PATH:$HOME/google-cloud-sdk/bin
export PATH="$PATH:$HOME/development/flutter/bin"
export PATH=$PATH:$HOME/Library/Android/sdk/platform-tools

alias docker-stop-all='docker stop $(docker ps -q)'

# zsh completion
# source <(kubectl completion zsh)
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

export EDITOR="vim"

# eval "$(direnv hook bash)"
# source /usr/local/etc/bash_completion.d/git-prompt.sh
# source /usr/local/etc/bash_completion.d/git-completion.bash

echo -ne "\033]0;$(pwd | rev | awk -F \/ '{print "/"$1"/"$2}'| rev)\007"
function chpwd() {
	echo -ne "\033]0;$(pwd | rev | awk -F \/ '{print "/"$1"/"$2}'| rev)\007"
}
