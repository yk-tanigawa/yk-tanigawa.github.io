.PHONY: help install dev build clean serve

# macOS system Ruby (2.6) is too old for the github-pages gem chain, and
# Ruby 4.x is too new (Jekyll 3.x calls APIs removed in Ruby 3.2+).
# Pin to Ruby 3.3, which is what GitHub Pages itself uses for production builds.
# Install with: brew install ruby@3.3
# Override RUBY_BIN if you keep Ruby somewhere else.
RUBY_BIN ?= $(firstword $(wildcard /opt/homebrew/opt/ruby@3.3/bin /usr/local/opt/ruby@3.3/bin))

ifeq ($(RUBY_BIN),)
  $(error Could not find Ruby 3.3. Install with: brew install ruby@3.3. Then re-run make. Or pass RUBY_BIN=/path/to/ruby/bin)
endif

BUNDLE := $(RUBY_BIN)/bundle
JEKYLL := $(BUNDLE) exec jekyll

# Force a UTF-8 locale so the Jekyll/Sass converter does not treat source
# files as US-ASCII and reject any non-ASCII byte with
# "Invalid US-ASCII character".
export LANG := en_US.UTF-8
export LC_ALL := en_US.UTF-8

help:
	@echo "Available commands:"
	@echo "  make install    - Install Ruby gem dependencies"
	@echo "  make dev        - Start Jekyll development server at http://localhost:4000/"
	@echo "  make serve      - Alias for dev"
	@echo "  make build      - Build production site into _site/"
	@echo "  make clean      - Clean build artifacts"
	@echo ""
	@echo "Using Ruby at: $(RUBY_BIN)"

install:
	$(BUNDLE) install

dev:
	$(JEKYLL) serve --livereload

serve: dev

build:
	$(JEKYLL) build

clean:
	-$(JEKYLL) clean
	rm -rf _site .jekyll-cache .jekyll-metadata .sass-cache
