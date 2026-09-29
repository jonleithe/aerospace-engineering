# Aerospace Engineering Workspace — Agent Instructions

## Workspace scope

This repository is the shared workspace for two related projects:

- `polaris-academy/` is the source of truth for study notes, educational
  software, Quarto configuration, and generated note outputs.
- `jonleithe.no/` owns the Hugo website, its assembly, and deployment. It
  consumes the Academy's generated site under `/notes/`; do not copy Academy
  source notes into the website project.
- The root `Makefile` provides commands that coordinate the two projects.

## Instructions and project context

- Read this file for workspace-wide guidance.
- Before changing a child project, read its `AGENTS.md`. Child instructions
  add project-specific requirements and take precedence for work in that
  project.
- Before substantial work in a child project, consult its `AUTHOR.md` and
  `PROJECT_HISTORY.md` for relevant preferences and durable decisions.
- Update a child project's history only for a significant milestone, durable
  decision, or change in direction. Keep entries concise and add new entries
  at the top.
- Keep changes scoped to the user's request. Do not reformat unrelated files or
  duplicate project documentation across the two child projects.

## Build entry points

Run `make help` at the workspace root for the available commands. In general:

- `make` or `make build` builds the combined Hugo website and Academy notes.
- `make site` is an alias for that combined build.
- `make serve` builds the combined site and serves it locally.
- Academy rendering commands such as `make note NOTE=...`, `make notes`,
  `make linear-algebra`, `make book`, `make preview`, and `make list` are
  forwarded to `polaris-academy/`.
- Run a child project's own Makefile when working only on that project.

Generated Academy files belong under `polaris-academy/build/`; assembled Hugo
output belongs under `jonleithe.no/public/`. Do not commit generated output
unless the project instructions or user explicitly call for it.

## Change and publishing safety

- Inspect `git status` before editing and preserve existing user changes.
- Follow the current branch and repository workflow; do not create branches
  unless requested.
- `make clean` removes generated outputs. Check the relevant project
  instructions and working tree before using it.
- `make deploy-dry-run` previews One.com synchronization. `make deploy` uploads
  the site and may delete remote files; deploy only when the user explicitly
  requests publication.
- Keep credentials local. Never print or commit credentials or copy them into
  generated output.

## General working conventions

- Preserve the boundary between Academy source content and website
  presentation. The website should consume generated Academy artifacts.
- Follow each child project's writing, coding, and validation conventions.
- Prefer focused, readable changes and existing tools over new dependencies or
  broad restructuring.
