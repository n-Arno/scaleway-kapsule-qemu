scaleway-kapsule-qemu
=====================

This method install kvm/qemu on Kapsule nodes to prepare them for kubevirt.

install
-------

Basic installation is running the Daemonset in kube-system to install the components on the nodes.

```
kubectl apply -f https://raw.githubusercontent.com/n-Arno/scaleway-kapsule-qemu/refs/heads/main/install.yaml
```

kubevirt
--------

Adapted manifests from kubevirt 1.8.1 are provided with tolerations/taints removed to facilitate deployment.

```
kubectl apply -f kubevirt/kubevirt-operator.yaml 
kubectl apply -f kubevirt/kubevirt-cr.yaml
```

support
-------

This method is provided as-is and nodes with configuration modified fall outside of the responsability matrix of Scaleway managed Kubernetes.

