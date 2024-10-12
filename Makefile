.PHONY: template
template: ## Render templates with example required values.
	@cd charts/k8s-cluster && \
		helm template --namespace example testcluster . -f tests/values.required.yaml
