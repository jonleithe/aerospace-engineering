QUARTO      := quarto
PYTHON      := python3

SOURCE_DIR  := notes
BUILD_DIR   := build
BOOK_CHAPTER_PROFILE := _quarto-auto-book.yml
SITE_NAVIGATION_PROFILE := _quarto-auto-site.yml
HUGO_LABELS_CONFIG := ../jonleithe.no/hugo-auto.toml
LABELS_FILE := ../labels.toml

SOURCES     := $(sort $(shell find $(SOURCE_DIR) -type f -name '*.md' -print))

.PHONY: all help note notes linear-algebra profiles book site preview clean list

all: notes

help:
	@printf '%s\n' \
		'Project Polaris Academy build targets' \
		'' \
		'  make note NOTE=linear-algebra/courses/khan-academy/01-vectors-and-spaces.md' \
		'      Render one note as PDF with Quarto.' \
		'      NOTE may be relative to notes/, start with notes/, or be a unique filename.' \
		'' \
		'  make notes' \
		'      Render all notes discovered by _quarto-notes.yml as individual PDFs.' \
		'' \
		'  make linear-algebra' \
		'      Render the Khan linear algebra notes as one Quarto book PDF.' \
		'' \
		'  make book' \
		'      Render the theorem index and personal notes as a Quarto book PDF.' \
		'' \
		'  make site' \
		'      Render the home page, theorem index, and personal notes as a navigable HTML site.' \
		'' \
		'  make preview' \
		'      Render the Academy site and start a live preview.' \
		'' \
		'  make list' \
		'      List all Markdown note sources.' \
		'' \
		'  make clean' \
		'      Remove generated note PDFs and Quarto output.' \
		'' \
		'  make help' \
		'      Show this help.'

note:
	@if [ -z "$(NOTE)" ]; then \
		echo 'Error: NOTE is required.' >&2; \
		echo 'Example: make note NOTE=linear-algebra/courses/khan-academy/01-vectors-and-spaces.md' >&2; \
		exit 2; \
	fi
	@note='$(NOTE)'; \
	case "$$note" in \
		notes/*) ;; \
		*) \
			if [ -f "$(SOURCE_DIR)/$$note" ]; then \
				note="$(SOURCE_DIR)/$$note"; \
			else \
				matches="$$(find "$(SOURCE_DIR)" -type f -name "$${note##*/}" -print)"; \
				count="$$(printf '%s\n' "$$matches" | sed '/^$$/d' | wc -l)"; \
				if [ "$$count" -eq 1 ]; then \
					note="$$matches"; \
				elif [ "$$count" -gt 1 ]; then \
					echo "Error: NOTE '$${note##*/}' matches more than one file:" >&2; \
					printf '%s\n' "$$matches" >&2; \
					exit 2; \
				fi; \
			fi ;; \
	esac; \
	if [ ! -f "$$note" ]; then \
		echo "Error: note not found: $(NOTE)" >&2; \
		exit 2; \
	fi; \
	echo "Rendering $$note as PDF"; \
	$(QUARTO) render --profile notes "$$note" --to pdf

notes:
	$(QUARTO) render --profile notes --to pdf
	@find "$(BUILD_DIR)/quarto" -type f -name '*.md' -delete

linear-algebra:
	$(QUARTO) render --profile linear-algebra --to pdf

profiles: $(LABELS_FILE)
	$(PYTHON) scripts/generate-book-profile.py --output $(BOOK_CHAPTER_PROFILE) --site-output $(SITE_NAVIGATION_PROFILE) --hugo-output $(HUGO_LABELS_CONFIG)

book: profiles
	$(QUARTO) render --profile book,auto-book --to pdf
	./copy-book-to-jotta

site: profiles
	$(QUARTO) render --profile site,auto-site --to html
	@find "$(BUILD_DIR)/site" -type f -name '*.md' -delete

preview: profiles
	$(QUARTO) preview --profile site,auto-site --to html --render html

list:
	@printf '%s\n' $(SOURCES)

clean:
	@if [ -d "$(BUILD_DIR)" ]; then \
		find "$(BUILD_DIR)" -type f -name '*.pdf' -delete; \
	fi
	@for source in $(SOURCES); do \
		base="$${source%.md}"; \
		rm -f "$${base}.pdf" "$${base}.tex" "$${base}.aux" "$${base}.log" "$${base}.toc"; \
	done
	@rm -rf "$(BUILD_DIR)/quarto" "$(BUILD_DIR)/site" "$(BUILD_DIR)/books"
	@rm -f "$(BOOK_CHAPTER_PROFILE)" "$(SITE_NAVIGATION_PROFILE)"
