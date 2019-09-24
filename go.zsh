export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"

export GOPATH="$HOME/go"
export PATH="$GOROOT/bin:$GOPATH/bin:$PATH"
export GO111MODULE=on

alias anyenv-v="anyenv versions"
alias anyenv-u="anyenv update"
alias anyenv-gitpu="anyenv git pull"
alias anyenv-l="anyenv install -l"

alias goenv-l="goenv install -l"
alias goenv-i="goenv install"
alias goenv-gl="goenv global"
alias goenv-lo="goenv local"