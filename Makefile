template:
	@cd charts/k8s-cluster && \
		helm template --namespace example testcluster . -f tests/values.required.yaml
