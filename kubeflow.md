# Kubeflow

[Install kind](https://github.com/kubernetes-sigs/kind/releases). Check [releases](https://github.com/kubernetes-sigs/kind/releases) for version
```
[ $(uname -m) = x86_64 ] && curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.20.0/kind-linux-amd64
chmod +x ./kind
sudo mv ./kind /usr/local/bin/kind
```

create cluster using kind
```
kind create cluster --name kubeflow
```
verify installation of either docker or podman

TODO: complete
