.PHONY: help
help:
	@echo "-------------------------------------------------------------------"
	@echo "Lacework terraform-aws-iam-role Makefile helper:"
	@echo ""
	@grep -Fh "##" $(MAKEFILE_LIST) | grep -v grep | sed -e 's/\\$$//' | sed -E 's/^([^:]*):.*##(.*)/ \1 -\2/'
	@echo "-------------------------------------------------------------------"

default: ci

AWS_REGION?=us-west-2
export AWS_REGION

.PHONY: ci
ci: ## *CI ONLY* Runs tests on CI pipeline
	scripts/ci_tests.sh

.PHONY: release
release: ci ## *CI ONLY* Prepares a release of the Terraform module
	scripts/release.sh prepare

.PHONY: terraform-docs
terraform-docs:
	scripts/terraform-docs.sh

