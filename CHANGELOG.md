# Changelog

All notable changes to this project are documented here.
The format follows [Keep a Changelog](https://keepachangelog.com/en/1.1.0/), and the project uses [semantic versioning](https://semver.org/).

## [0.1.2] - 2026-11-20

### Changed

- Reply in exactly two sentences when one missing fact blocks the piece: the first names the fact, the second asks for it.
- Rewrite the worked examples. They now separate Claude's own drafts from the user's, show the missing-fact reply, and show a revision that keeps every claim the user wrote.
- Remove "proofread" from the trigger, since grammar checks are out of scope, and fix the grammar of the description.

## [0.1.1] - 2026-11-20

### Changed

- Strengthen the skill description so it triggers on plain writing requests.
- Return the revised text when the user asks for a revision, even when a supporting fact is missing.
- Never cut or soften a claim the user wrote. Flag an unsupported claim in one plain sentence instead, and only in text Claude wrote or changed.
- Do not state statistics, study results, quotes, or sources from memory.
- Ask a single question, never a list, when one missing fact blocks the piece.

## [0.1.0] - 2026-11-18

### Added

- The `write-like-a-reader` skill and its reference files.
- Plugin and marketplace manifests.
- `install.sh` for user-level and project-level installs.
- A release workflow that zips the skill when a `v*` tag is pushed.
