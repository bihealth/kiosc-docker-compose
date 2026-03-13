SHELL:=bash

# Argument passed from commandline
arg =

.PHONY: default
default: help

.PHONY: help
help:
	@echo Available targets
	@echo
	@echo "    deploy arg=<args>    -- run for deployment"
	@echo "    dev arg=<args>       -- run for development"
	@echo "    push                 -- push branch and tags"
	@echo "    release              -- make a Github release"
	@echo "    tag                  -- make a tag"
	@echo

.PHONY: deploy
deploy:
	docker compose --profile deploy up $(arg)

.PHONY: dev
dev:
	docker compose --profile dev up $(arg)

.PHONY: push
push:
	git push origin
	git push origin --tags

.PHONY: release
release: push
	TAG=$$(git describe); \
	if [[ $$? -ne 0 ]] || [[ $$(echo $$TAG | tr -cd '-' | wc -c) -gt 1 ]]; then \
		>&2 echo "ERROR: not at a clean release; stopping"; \
		exit 1; \
	fi; \
	gh release create $$TAG --title "$$TAG" --notes 'See `HISTORY.md` for the changelog and release notes.'

.PHONY: tag
tag:
	if [[ -z "$$TAG" ]]; then \
		>&2 echo "ERROR: you have to set env TAG; stopping"; \
		exit 1; \
	fi; \
	git tag $$TAG -m 'Release $$TAG'
