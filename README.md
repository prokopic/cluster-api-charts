# capi-chart

Helm charts with Cluster API resources:
- cluster-api with `Cluster` resource,
- control-plane-kubeadm with `KubeadmControlPlane` resource.

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
