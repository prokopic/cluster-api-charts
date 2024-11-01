.PHONY: template
template: ## Render templates with example required values.
	@cd charts/capi-cluster && \
		helm template --namespace example testcluster . -f tests/values.required.yaml
