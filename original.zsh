alias 1password='open -a /Applications/1Password\ 7.app'
alias authy='open -a /Applications/Authy\ Desktop.app'
alias chrome='open -a /Applications/Google\ Chrome.app'
# alias goland='/usr/local/bin/goland'
alias notion='open -a /Applications/Notion.app'
alias pocket='open -a /Applications/Pocket.app'
alias slack='open -a /Applications/Slack.app'
alias sublime='open -a /Applications/Sublime\ Text.app'
alias tableplus='open -a /Applications/TablePlus.app'
alias vscode='open -a /Applications/Visual\ Studio\ Code.app'

alias gitad='git add'
alias gitbl='git blame'
alias gitbr='git branch'
alias gitca='git commit --amend'
alias gitch='git checkout'
alias gitchp='git cherry-pick'
alias gitcho='git checkout --ours'
alias gitcht='git checkout --theirs'
alias gitcl='git clone'
alias gitco='git commit'
alias gitdi='git diff'
# alias gitdioo='sh $HOME/git/butterv/commands/git-diff-read-one-by-one.sh'
alias gitfe='git fetch'
alias gitlo='git log'
alias gitlo-graph='git log --graph'
alias gitme='git merge'
alias gitpo='git push origin'
alias gitpu='git pull'
alias gitre='git reset --hard'
alias gitrest='git restore'
alias gitrpo='git remote prune origin'
alias gitsh='git show'
alias gitst='git status'
alias gitsta='git stash apply'
alias gitstd='git stash drop'
alias gitstl='git stash list'
alias gitstp='git stash pop'
alias gitsts='git stash save'
alias gitsw='git switch'
alias gitta='git tag'

alias blog='cd $HOME/git/butterv/blog'
alias butterv='cd $HOME/git/butterv'
alias butterv-go='cd $GOPATH/src/github.com/butterv'

export EDITOR="vim"
export PATH=/usr/local/bin:$PATH
export GOPATH="$HOME/go"
export GOENV_DISABLE_GOPATH=1
export PATH="$GOROOT/bin:$GOPATH/bin:$PATH"
export GO111MODULE=on
export PATH="$HOME/.anyenv/bin:$PATH"
export CARGO_HOME="$HOME/.cargo"
export PATH="$CARGO_HOME/bin:$PATH"

eval "$(anyenv init -)"
alias anyenv-l="anyenv install -l"
alias anyenv-gitpu="anyenv git pull"
alias anyenv-u="anyenv update"
alias anyenv-v="anyenv versions"
alias goenv-gl="goenv global"
alias goenv-i="goenv install"
alias goenv-l="goenv install -l"
alias goenv-lo="goenv local"
function go-test-coverage() {
	rm -rf c.out cover.out
	go test -tags=integration -coverprofile=c.out $1 >& /dev/null
	cat c.out | grep -v -e "/app/handler" -e "/app/impl/repository/memory" -e "/app/impl/repository/database/repository.go" > cover.out
	go tool cover -func=cover.out
}
function pb-gen() {
	# pb-gen ./app/proto/v1 user.proto
	protoc -I$1 -I$GOPATH/pkg/mod/github.com/grpc-ecosystem/grpc-gateway@v1.11.3/third_party/googleapis --go_out=plugins=grpc:$1/pb $2
}
function pb-gw-gen() {
	# pb-gw-gen ./app/proto/v1 user.proto
	protoc -I$1 -I$GOPATH/pkg/mod/github.com/grpc-ecosystem/grpc-gateway@v1.11.3/third_party/googleapis --grpc-gateway_out=logtostderr=true:$1/pb $2
}

alias docker-stop-all='docker stop $(docker ps -q)'
alias k='kubectl'
# alias kg='kubectl get'
# alias kd='kubectl delete'
alias k-get-contexts='kubectl config get-contexts'
alias k-use-local='kubectl config use-context docker-desktop'

function cdls() {
	cd -P $1
	echo "===== pwd ====="
	pwd
	echo "===== ls ====="
	ls -F
}
alias cd=cdls
alias cp='cp -i'
alias la='ls -a'
alias ll='ls -l'
alias ls='ls -F'
alias mkdir='mkdir -p'
alias mv='mv -i'
alias rm='rm -i'
alias shreboot='exec $SHELL -l'
alias v='vim'

# zsh completion
# source <(kubectl completion zsh)
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
echo -ne "\033]0;$(pwd | rev | awk -F \/ '{print "/"$1"/"$2}'| rev)\007"
function chpwd() {
	echo -ne "\033]0;$(pwd | rev | awk -F \/ '{print "/"$1"/"$2}'| rev)\007"
}

function pilogin() {
	case "$1" in
		"m" ) ssh -i ~/.ssh/id_rsa_raspberry satoshi@raspberrypi-kubernetes-master ;;
		"w1" ) ssh -i ~/.ssh/id_rsa_raspberry satoshi@raspberrypi-kubernetes-worker1 ;;
		"w2" ) ssh -i ~/.ssh/id_rsa_raspberry satoshi@raspberrypi-kubernetes-worker2 ;;
		* ) echo "unknown host" ;;
	esac
}

eval "$(gh completion -s zsh)"

