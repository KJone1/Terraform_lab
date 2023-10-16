.PHONY: help lint format docs

DEFAULT: help

lint: ## Lint configuration using terraform validate and tflint
	@echo ""
	@echo "Linting with terraform validate..."
	@terraform validate .
	@echo "Linting with tflint..."
	@tflint --enable-plugin=terraform --color
	@echo ""


format: ## Format the configuration using terraform fmt
	@terraform fmt -diff -recursive .


docs: ## Generate documentation
	@terraform-docs -c .terraform-docs.yml .


help:  ## Display this help.
	@awk 'BEGIN {FS = ":.*##"; printf "\nUsage:\n  make \033[36m<target>\033[0m\n\nOptions:\n"} /^[a-zA-Z0-9_.-]+:.*?##/ { printf "  \033[36m%-15s\033[0m %s\n", $$1, $$2 } /^##@/ { printf "\n\033[1m%s\033[0m\n", substr($$0, 5) }' $(MAKEFILE_LIST)
	@echo ""