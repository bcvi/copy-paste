# Kubernetes

# https://kubernetes.io/docs/reference/kubectl/cheatsheet/
# https://kubernetes.io/docs/reference/generated/kubectl/kubectl-commands

which k
# k: aliased to kubectl



k config get-contexts | grep abcde
k config use-context k8s-saas-abcde
k config current-context

k cp ~/tmp/abc.yaml -n cc-namespace cc-podname:/tmp/abc.yaml -c container-name

k delete pods cc-podname -n cc-namespace
k delete hpa hpa_name -n cc-namespace
k delete metrics-server -n kube-system
k delete pods cc-podname --force --grace-period=0

k describe pod cc-podname -n cc-namespace

k edit deployments -n cc-namespace

k exec -it cc-podname -n cc-namespace -- /bin/bash
k exec -it -n cc-namespace cc-podname -it -c container-name -- some-binary some-flag

k get pods -n cc-namespace
k get pods -n cc-namespace -w
k get pods -n cc-namespace -w --context=$KCTX
k get events -n cc-namespace -w
k get events -n cc-namespace -w

k logs cc-podname -n cc-namespace
k logs cc-podname -n cc-namespace -f --timestamps
k logs cc-podname -n cc-namespace --tail 10
