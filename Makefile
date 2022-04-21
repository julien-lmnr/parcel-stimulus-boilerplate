NPX = npx

.DEFAULT_GOAL 	= help
.PHONY :

stylelint: ## Run stylelint
	$(NPX) stylelint "assets/scss/**/*.scss"

eslint: ## Run eslint
	$(NPX) eslint "assets/js/**/*.js"

help: ## Show help
	@grep -E '(^[a-zA-Z0-9_-]+:.*?##.*$$)|(^##)' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}{printf "\033[32m%-30s\033[0m %s\n", $$1, $$2}' | sed -e 's/\[32m##/[33m/'
