default: fmt

fmt:
	terraform fmt -recursive

fmt-check:
	terraform fmt -recursive -check

validate:
	terraform validate

pre-commit:
	@make fmt-check
	@make validate

setup-git-hooks:
	(rm -rf .git/hooks && cd .git/ && ln -s ../.git-hooks hooks)
