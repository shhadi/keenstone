#!/usr/bin/env bash
# Publishes a GitHub release for every skill whose plugin.json version has no release yet.
#
#   Tag:    <plugin name>--v<version>   (Claude Code's plugin tag format, e.g. distill--v0.4.0)
#   Title:  <displayName> v<version>
#   Notes:  the "## <version>" section of the plugin's CHANGELOG.md
#
# Skills without a version, and versions that already have a tag or release, are skipped.
# A new version with no matching CHANGELOG section fails the run, so every release has notes.
#
# Needs: git, jq, gh (authenticated through GH_TOKEN). Uses GITHUB_SHA and GITHUB_REPOSITORY
# when run in GitHub Actions. Set DRY_RUN=1 to print what would be released without releasing.
set -euo pipefail

repo="${GITHUB_REPOSITORY:-shhadi/keenstone}"
target="${GITHUB_SHA:-$(git rev-parse HEAD)}"
failed=0
released=0

for manifest in plugins/*/.claude-plugin/plugin.json; do
  [ -f "$manifest" ] || continue
  dir="$(dirname "$(dirname "$manifest")")"
  name="$(jq -r '.name' "$manifest")"
  version="$(jq -r '.version // empty' "$manifest")"
  display="$(jq -r '.displayName // .name' "$manifest")"

  if [ -z "$version" ]; then
    echo "skip $name: plugin.json has no version"
    continue
  fi

  tag="${name}--v${version}"
  if git rev-parse -q --verify "refs/tags/$tag" >/dev/null || gh release view "$tag" --repo "$repo" >/dev/null 2>&1; then
    echo "skip $tag: already released"
    continue
  fi

  notes_file="$(mktemp)"
  if [ -f "$dir/CHANGELOG.md" ]; then
    # Lines between "## <version>" and the next "## " heading, without surrounding blank lines.
    awk -v v="$version" '
      /^## / { if (found) exit; if ($2 == v) { found = 1; next } }
      found { lines[++n] = $0 }
      END {
        s = 1; while (s <= n && lines[s] ~ /^[[:space:]]*$/) s++
        e = n; while (e >= s && lines[e] ~ /^[[:space:]]*$/) e--
        for (i = s; i <= e; i++) print lines[i]
      }
    ' "$dir/CHANGELOG.md" > "$notes_file"
  fi
  if [ -z "$(tr -d '[:space:]' < "$notes_file")" ]; then
    echo "::error file=$dir/CHANGELOG.md::$tag: add a '## $version' section to $dir/CHANGELOG.md to release it"
    failed=1
    continue
  fi
  printf '\nInstall in Claude Code: `/plugin install %s --marketplace %s`\n' "$name" "$repo" >> "$notes_file"

  if [ "${DRY_RUN:-}" = "1" ]; then
    echo "would release $tag at ${target:0:7}: \"$display v$version\""
    sed 's/^/    /' "$notes_file"
  else
    gh release create "$tag" --repo "$repo" --target "$target" \
      --title "$display v$version" --notes-file "$notes_file"
    echo "released $tag"
  fi
  released=$((released + 1))
done

if [ "${DRY_RUN:-}" = "1" ]; then echo "$released release(s) would be created"; else echo "$released release(s) created"; fi
exit "$failed"
