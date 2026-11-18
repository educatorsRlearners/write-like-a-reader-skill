#!/bin/sh
# Install the write-like-a-reader skill.
# Default: ~/.claude/skills/. With --project: ./.claude/skills/.
set -eu

name="write-like-a-reader"
here=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
src="$here/skills/$name"

case "${1:-}" in
  "")        dest_root="$HOME/.claude/skills" ;;
  --project) dest_root="./.claude/skills" ;;
  *)
    echo "usage: $0 [--project]" >&2
    exit 2
    ;;
esac

if [ ! -f "$src/SKILL.md" ]; then
  echo "error: $src/SKILL.md not found" >&2
  exit 1
fi

mkdir -p "$dest_root"
rm -rf "${dest_root:?}/$name"
cp -R "$src" "$dest_root/$name"

echo "Installed $name to $dest_root/$name"
