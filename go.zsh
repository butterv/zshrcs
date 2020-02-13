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

function pb-gen() {
	# pb-gen ./app/proto/v1 user.proto
	protoc -I$1 -I$GOPATH/pkg/mod/github.com/grpc-ecosystem/grpc-gateway@v1.11.3/third_party/googleapis --go_out=plugins=grpc:$1/pb $2
}
function pb-gw-gen() {
	# pb-gw-gen ./app/proto/v1 user.proto
	protoc -I$1 -I$GOPATH/pkg/mod/github.com/grpc-ecosystem/grpc-gateway@v1.11.3/third_party/googleapis --grpc-gateway_out=logtostderr=true:$1/pb $2
}

function go-test-coverage() {
	rm -rf c.out cover.out
	go test -tags=integration -coverprofile=c.out $1 >& /dev/null
	cat c.out | grep -v -e "/app/handler" -e "/app/impl/repository/memory" -e "/app/impl/repository/database/repository.go" > cover.out
	go tool cover -func=cover.out
}
