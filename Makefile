.PHONY: template
template: ## Render templates with example required values.
	@cd charts/cluster-api && \
		helm template --namespace africa forest . -f tests/values.required.yaml -f tests/values.machinedeployments.yaml --debug
	@cd charts/control-plane-kubeadm && \
    	helm template --namespace africa forest . -f tests/values.required.yaml --debug
