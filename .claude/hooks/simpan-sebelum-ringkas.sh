#!/usr/bin/env bash
# Hook PreCompact: dipanggil tepat sebelum percakapan diringkas.
# Menyimpan berkas repo yang sudah ditulis (commit + push) supaya tidak hilang.
# Tidak pernah menahan peringkasan dan tidak pernah menulis ke main.
cat >/dev/null
cd "${CLAUDE_PROJECT_DIR:-$(dirname "$0")/../..}" 2>/dev/null || exit 0
git rev-parse --is-inside-work-tree >/dev/null 2>&1 || exit 0
cabang=$(git branch --show-current 2>/dev/null)
[ -z "$cabang" ] || [ "$cabang" = "main" ] && exit 0
if [ -n "$(git status --porcelain 2>/dev/null)" ]; then
  git add -A >/dev/null 2>&1
  git commit -q -m "Simpan otomatis sebelum percakapan diringkas" >/dev/null 2>&1
fi
if git rev-parse --abbrev-ref '@{u}' >/dev/null 2>&1; then
  timeout 30 git push -q >/dev/null 2>&1
else
  timeout 30 git push -q -u origin "$cabang" >/dev/null 2>&1
fi
exit 0
