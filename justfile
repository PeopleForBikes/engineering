
# Meta task running ALL the CI tasks at onces.
ci: lint

# Meta task running all the linters at once.
lint: lint-md lint-spelling

# Lint markown files, ignoring the content of the themes.
lint-md:
  npx --yes markdownlint-cli2 "**/*.md" "#themes"

# Lint sass files.
lint-sass:

# Check spelling.
lint-spelling:
  npx --yes cspell --no-progress --show-suggestions --show-context "content/**/*.md"

# Meta tasks running all formatters at once.
fmt: fmt-md

# Format markdown files, ignoring the content of the themes.
fmt-md:
  npx --yes prettier --write --prose-wrap always "**/*.md"

# Format SASS files.
fmt-sass:
