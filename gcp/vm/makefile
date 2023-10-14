.PHONY: help lint format docs

DEFAULT: help

lint: ## Lint the configuration using terraform validate
	@echo ""
	@echo "Linting with terraform validate..."
	@terraform validate .
	@echo ""
	@echo "Linting with tflint..."
	@tflint --enable-plugin=terraform --color
	@echo ""


format: ## Format the configuration using terraform fmt
	@terraform fmt .


docs: ## Generate documentation
	@terraform-docs markdown . -c .terraform-docs.yml


help: ## Display this help message
	@echo ""
	@echo "Available targets:"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-10s\033[0m %s\n", $$1, $$2}'
	@echo ""