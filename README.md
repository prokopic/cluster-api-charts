# capi-chart

Helm charts with Cluster API resources:
- capi-cluster with `Cluster` resource,
- kubeadm-control-plane with `KubeadmControlPlane` resource.

## Usage

### Required Helm values

```yaml
controlPlaneRef:
  apiVersion: cluster.example.com/v1beta9
  kind: ExampleControlPlane
infrastructureRef:
  apiVersion: infrastructure.cluster.example.com/v1beta9
  kind: ExampleCluster
```
