.PHONY: help lint format docs

DEFAULT: help

# Path
p ?= .


lint: ## Lint the configuration using terraform validate
	@terraform validate $(p)


format: ## Format the configuration using terraform fmt
	@terraform fmt $(p)


docs: ## Generate documentation
	@terraform-docs $(p)/.terraform-docs.yml


help: ## Display this help message
	@echo ""
	@echo "Available targets:"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-10s\033[0m %s\n", $$1, $$2}'
	@echo ""