#!/usr/bin/env bash
# Hook Stop: dipanggil setiap kali Claude selesai membalas.
# Bila ada perubahan repo yang belum tersimpan ke GitHub, Claude dikirim kembali
# untuk menyimpannya dulu (exit 2 + pesan di stderr). Hanya sekali per balasan,
# supaya tidak berputar bila push gagal (stop_hook_active = true).
masukan=$(cat)
if printf '%s' "$masukan" | grep -Eq '"stop_hook_active"[[:space:]]*:[[:space:]]*true'; then
  exit 0
fi
cd "${CLAUDE_PROJECT_DIR:-$(dirname "$0")/../..}" 2>/dev/null || exit 0
git rev-parse --is-inside-work-tree >/dev/null 2>&1 || exit 0

cabang=$(git branch --show-current 2>/dev/null)
belum_commit=$(git status --porcelain 2>/dev/null | wc -l | tr -d ' ')
if git rev-parse --abbrev-ref '@{u}' >/dev/null 2>&1; then
  belum_push=$(git rev-list --count '@{u}..HEAD' 2>/dev/null || echo 0)
elif [ -n "$cabang" ] && [ "$cabang" != "main" ]; then
  belum_push=$(git rev-list --count origin/main..HEAD 2>/dev/null || echo 0)
else
  belum_push=0
fi

if [ "$belum_commit" -gt 0 ] || [ "$belum_push" -gt 0 ]; then
  {
    echo "Penjaga simpan: repo deep-ops punya perubahan yang belum tersimpan ke GitHub"
    echo "(cabang ${cabang:-?}: $belum_commit berkas belum di-commit, $belum_push commit belum di-push)."
    if [ "$cabang" = "main" ]; then
      echo "Jangan menulis ke main: pindahkan ke cabang claude/... dulu."
    fi
    echo "Sebelum selesai: tambahkan entri log hari ini bila belum, perbarui KESEPAKATAN bila ada yang berubah,"
    echo "commit, push ke cabang claude/..., pastikan ada PulReq terbuka, lalu sebut PulReq itu di langkahmu."
  } >&2
  exit 2
fi
exit 0
