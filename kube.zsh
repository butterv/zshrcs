# commands for microk8s
#alias mp-launch-microk8s-vm="multipass launch --name microk8s-vm --mem 4G --disk 40G" # Launch VM for microk8s
#alias mp-list="multipass list"
#alias mp-shell="multipass shell" # e.g. 'mp-shell microk8s-vm'
#alias mp-exec="multipass exec microk8s-vm --"
#alias mp-exec-install-microk8s="multipass exec microk8s-vm -- sudo snap install microk8s --classic --channel=1.17/stable" # Install microk8s on VM
#alias mp-exec-iptables="multipass exec microk8s-vm -- sudo iptables -P FORWARD ACCEPT"
#alias mp-exec-status="multipass exec microk8s-vm -- sudo microk8s.status --wait-ready"
#alias mp-stop="multipass stop" # e.g. 'mp-stop microk8s-vm'
#alias mp-delete="multipass delete" # e.g. 'mp-delete microk8s-vm'
#alias mp-purge="multipass purge"

alias k='kubectl'
# alias kg='kubectl get'
# alias kd='kubectl delete'

alias k-get-contexts='kubectl config get-contexts'
# kubectl uses config of local
alias k-use-local='kubectl config use-context docker-desktop'