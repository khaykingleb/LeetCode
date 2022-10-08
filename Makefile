SHELL := /bin/bash

##==================================================================================================
##@ Helper

help: ## Display help
	@awk 'BEGIN {FS = ":.*##"; printf "\nUsage: \033[36m\033[0m\n"} /^[a-zA-Z\.\%-]+:.*?##/ { printf "  \033[36m%-24s\033[0m %s\n", $$1, $$2 } /^##@/ { printf "\n\033[1m%s\033[0m\n", substr($$0, 5) } ' $(MAKEFILE_LIST)
.PHONY: help

##==================================================================================================
##@ Repo initialization

repo-pre-commit: ## Install pre-commit
	pre-commit install
	pre-commit install -t commit-msg
.PHONY: repo-pre-commit

##==================================================================================================
##@ Building with CMake

all-build:
	rm -rf build
	cmake -S . -B build -DCMAKE_EXPORT_COMPILE_COMMANDS=1
	cmake --build build
.PHONY: all-build

all-tests:
	cd build && ctest
.PHONY: all-tests

##==================================================================================================
##@ Cleaning

general-clean: ## Delete general files
	find . | grep -E "\.o" | xargs rm -rf
	find . | grep -E "\.exe" | xargs rm -rf
.PHONY: general-clean

all-clean: general-clean ## Delete all "junk" files
.PHONY: all-clean
