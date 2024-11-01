# capi-chart

Helm chart with Cluster API `Cluster` resource.

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
