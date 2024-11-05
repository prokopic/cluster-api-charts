# cluster-api Helm chart

Helm chart with Cluster API core resources:
- `Cluster`,
- `MachineDeployments`.

## Usage

### Required Helm values

```yaml
cluster:
  spec:
    controlPlaneRef:
      apiVersion: cluster.example.com/v1beta9
      kind: ExampleControlPlane
    infrastructureRef:
      apiVersion: infrastructure.cluster.example.com/v1beta9
      kind: ExampleCluster
```
