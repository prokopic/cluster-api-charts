# control-plane-kubeadm Helm chart

Helm chart with Cluster API control-plane-kubeadm resources:
- `KubeadmControlPlane`.

## Usage

### Required Helm values

```yaml
kubeadmcontrolplane:
  spec:
    machineTemplate:
      infrastructureRef:
        apiVersion: infrastructure.cluster.example.com/v1beta9
        kind: ExampleMachineTemplate
```
