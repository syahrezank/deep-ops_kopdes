#!/usr/bin/env bash
# Dipanggil otomatis (hook SessionStart) saat sesi mulai dan setelah percakapan diringkas.
# Memuat halaman kesepakatan supaya rancangan yang berlaku tidak hilang.
# Batas konteks tambahan dari hook: 10.000 karakter.
cd "${CLAUDE_PROJECT_DIR:-$(dirname "$0")/../..}" 2>/dev/null || exit 0
echo "Kesepakatan yang berlaku (pengembangan/KESEPAKATAN.md). Ringkasan percakapan bisa kehilangan detail; pegang ini."
echo
if [ -f pengembangan/KESEPAKATAN.md ]; then
  head -c 9500 pengembangan/KESEPAKATAN.md
fi
exit 0
