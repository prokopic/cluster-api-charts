.PHONY: template
template: ## Render templates with example required values.
	@cd charts/cluster-api && \
		helm template --namespace example testcluster . -f tests/values.required.yaml
	@cd charts/control-plane-kubeadm && \
    		helm template --namespace example foo . -f tests/values.required.yaml
