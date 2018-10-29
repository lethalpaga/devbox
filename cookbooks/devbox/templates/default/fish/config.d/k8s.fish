alias k='kubectl'
alias ka='kubectl apply'
alias kc='kubectl create'
alias kd='kubectl delete'
alias kde='kubectl describe'
alias kg='kubectl get'
alias kga='kubectl get --all-namespaces'
alias kl='kubectl logs'
alias klf='kubectl logs -f --tail=10'
alias kgp='kubectl get pods'
alias kgs='kubectl get services'
alias kpf='kubectl port-forward'
alias kcgc='kubectl config get-contexts'
alias kcuc='kubectl config use-context'

alias get-pod="kubectl get pods -o jsonpath='{.items[0].metadata.name}'"
alias gp='get-pod'
alias gpa='get-pod --all-namespaces'

alias get-pods="kubectl get pods -o jsonpath='{.items[*].metadata.name}'"
alias gps='get-pods'
alias gpsa='get-pods --all-namespaces'
alias gall='for res in (kubectl api-resources -oname | grep istio); echo $res; and kubectl get --all-namespaces $res -oname -oname; end'
alias kcun='kubectl config set-context (kubectl config current-context) --namespace'