#!/usr/bin/env bash
# Install every skill in this vault into ~/.claude/skills so it works from any folder.
#
#   bash tools/install-skills.sh              install / refresh (run again after every git pull)
#   bash tools/install-skills.sh --uninstall  remove only what this script installed
#
# Why copies and not raw symlinks: the generated shortcuts in .claude/skills/ point at
# `departments/...` relative to this repo. A copy pinned to this repo's absolute path
# works from any folder, on any machine (a teammate's clone gets their own path).
# Each installed folder carries a marker file, so this script never touches a skill
# it didn't install, and never overwrites one that already exists.
set -euo pipefail

REPO="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SRC="$REPO/.claude/skills"
DEST="${CLAUDE_SKILLS_DIR:-$HOME/.claude/skills}"
MARK=".installed-by-company-vault"

[ -d "$SRC" ] || { echo "No $SRC. Run: python3 tools/sync.py"; exit 1; }
mkdir -p "$DEST"

if [ "${1:-}" = "--uninstall" ]; then
  removed=0
  for d in "$DEST"/*/; do
    [ -f "$d$MARK" ] || continue
    rm -rf "$d"; echo "removed  $(basename "$d")"; removed=$((removed+1))
  done
  echo "Done: removed $removed."
  exit 0
fi

installed=0; refreshed=0; skipped=0
for s in "$SRC"/*/; do
  name="$(basename "$s")"
  
  target="$DEST/$name"
  if [ -e "$target" ] && [ ! -f "$target/$MARK" ]; then
    echo "skipped  $name (already in $DEST and not ours; left alone)"; skipped=$((skipped+1)); continue
  fi
  [ -e "$target" ] && was=1 || was=0
  rm -rf "$target"; mkdir -p "$target"
  # Pin the shortcut to this repo: every path in it is relative to the repo root.
  awk -v repo="$REPO" '
    BEGIN{done=0}
    {print}
    /^---$/ && ++n==2 && !done {print ""; print "**Repo:** `" repo "`. Every path below is relative to that folder: read the files there (cd into it first when you can)."; done=1}
  ' "$s/SKILL.md" > "$target/SKILL.md"
  printf '%s\n' "$REPO" > "$target/$MARK"
  if [ $was = 1 ]; then echo "refreshed $name"; refreshed=$((refreshed+1)); else echo "installed $name"; installed=$((installed+1)); fi
done
echo "Done: $installed installed, $refreshed refreshed, $skipped skipped, into $DEST."
