# Run from aerospace-engineering/. Child Makefiles own the generator details.
.DEFAULT_GOAL := build

PROJECT_DIR := $(abspath $(dir $(lastword $(MAKEFILE_LIST))))
WEBSITE_DIR := $(PROJECT_DIR)/jonleithe.no
ACADEMY_DIR := $(PROJECT_DIR)/polaris-academy

.PHONY: help build site academy-site note notes linear-algebra book profiles list preview serve clean deploy-dry-run deploy

help:
	@printf '%s\n' \
	  'Aerospace Engineering — Hugo + Quarto' \
	  '' \
	  'make / make build / make site  Build the combined website in jonleithe.no/public/' \
	  'make academy-site             Build only the Quarto HTML site' \
	  'make serve                    Build and serve the combined website at http://localhost:8000' \
	  'make preview                  Start the Academy live preview' \
	  'make note NOTE=personal/4-1-vector-spaces-and-subspaces.md' \
	  '                              Render one note as PDF' \
	  'make notes                    Render all individual note PDFs' \
	  'make linear-algebra           Render the Linear Algebra PDF' \
	  'make book                     Render the Academy PDF and run its existing personal sync copy' \
	  'make profiles / make list     Generate Academy profiles / list note sources' \
	  'make clean                    Remove generated website and Academy output' \
	  'make deploy-dry-run           Rebuild and preview One.com uploads/deletions' \
	  'make deploy                   Rebuild and publish to One.com (includes remote deletion)'

# Pass the new sibling location explicitly; never fall back to the old checkout.
build deploy-dry-run deploy:
	$(MAKE) -C "$(WEBSITE_DIR)" $@ ACADEMY_DIR="$(ACADEMY_DIR)"

site: build

academy-site:
	$(MAsKE) --directory "$(ACADEMY_DIR)" site

# Command-line variables such as NOTE and QUARTO propagate through recursive Make.
note notes linear-algebra book profiles list preview:
	$(MAKE) -C "$(ACADEMY_DIR)" $@

# Serve the assembled output so /notes/ is available alongside Hugo pages.
# This is a static preview: rerun make build after changing sources.
serve: build
	python3 -m http.server 8000 --bind 127.0.0.1 --directory "$(WEBSITE_DIR)/public"

clean:
	$(MAKE) -C "$(WEBSITE_DIR)" clean
	$(MAKE) -C "$(ACADEMY_DIR)" clean
