# Keputusan desain

Dibaca hanya saat mengubah repo. Riwayat per chat ada di `log/`.

## Prinsip (dari umpan balik Reza)
1. **Cerita atau refleksi bukan perintah.** Pahami dulu, lalu tanyakan apa yang Reza inginkan. (Reza, 26 Nov 2026: Claude membedah 39 tugas Obsidian dan meresepkan ritme harian padahal Reza sedang bercerita.)
2. **Jangan memutuskan sendiri, jangan juga mengulur.** Rancangan singkat + ≤3 pertanyaan → versi minimal → uji → PulReq → izin. (26 Nov: Claude bergantian menunda "ke besok" lalu membuat Sheet dan jadwal tanpa bertanya.)
3. **Jangan terlalu yakin.** Tebakan disebut tebakan; tingkat halusinasi jujur. (26 Nov: "±5%" ditempel pada keputusan desain yang masih tebakan.)
4. **Jangan membebani Reza dengan klarifikasi satu per satu.** (26 Nov, soal daftar tugas lama di Obsidian.)
5. **Hal rumit tidak dilimpahkan ke karyawan bergaji Rp1,9 juta.** Karyawan cukup memotret, menghitung, dan mencentang; pencocokan dikerjakan Claude bersama Reza. (25 Nov)
6. **Belajar dari deep-space, tidak terikat aturan dan strukturnya.** Struktur ops mengikuti kebutuhannya sendiri. (26 Nov)
7. **Repo dibangun mengikuti panduan Reza** di Obsidian `! Plan/Claude Code.md`: CLAUDE.md ramping, alat untuk pekerjaan mekanis, KEPUTUSAN + log, git berizin. (dibaca 26 Nov)

## Aturan tetap Reza yang tidak tertulis di CLAUDE.md
- Tugas yang melibatkan karyawan atau orang lain disimpan di Sheets (`HR/Tugas_KDKMP_Jogomulyo`). Tugas yang hanya Reza kerjakan, kerja maupun rumah, disimpan di Obsidian TaskNotes; tugas kerja ditandai context `work`. Keduanya harus nyambung. (26 Nov)
- Setiap gerakan uang yang melibatkan uang pribadi Reza harus sinkron dengan tracker pribadinya (Google Sheet `Expense_Tracker_v0.5`). (26 Nov)
- Semua yang dicatat digital (uang, kantong, stok, orang, tugas) punya pencocokan dengan hitungan kertas manual. Digital dan kertas punya sumber masing-masing. (26 Nov)
- Planogram tidak boleh hard-coded: planogram sekarang pinjaman dari kopdes lain dan akan diganti versi resmi Agrinas. (26 Nov)

## Izin tetap berkas
Berkas di Drive atau laptop yang boleh diubah tanpa bertanya dulu. Berlaku sampai Reza mencabutnya.

- (belum ada)

## Yang berlaku sekarang
| Topik | Keputusan | Asal |
|---|---|---|
| Pembagian repo | Satu repo ops untuk kas, stok, dan orang. Pencocokan ganda terjadi antar-bagian, jadi bagian-bagian itu harus di satu tempat. deep-space tetap untuk aturan, administrasi, pupuk, dan kasus SDM; deep-studio untuk desain dan pemasaran. | Diskusi 25 Nov; Reza membuat repo ini |
| Penyimpanan | Foto, PDF, ekspor, dan data di Drive/Sheets. Repo hanya teks dan alat, supaya tidak membengkak. | 25 Nov |
| Membaca Drive | Lewat folder lokal (Claude desktop). Konektor Drive tidak dipakai untuk membaca foto. | Reza, 26 Nov |
| Cadangan pecahan Rp2.000 (Rp200.000, ditukar lewat jasa berbayar) | Uang pribadi Reza | Reza, 27 Nov |

## Kebutuhan Reza

### 26 Nov 2026 (10 butir, diringkas tanpa membuang angka)
1. Foto dibaca langsung, bukan lewat OCR konektor Drive.
2. Folder lokal boleh dibaca; mengubah berkas wajib izin, kecuali izin tetap.
3. Repo ini dipakai supaya tidak ada yang terlupa; belajar dari deep-space tanpa terikat strukturnya.
4. Screenshot POS ditaruh di folder `POS`; analisis apa yang bisa dilakukan dengannya.
5. Buku keuangan gerai dalam beberapa bentuk:
   - dari POS;
   - uang kas yang Reza berikan ke kopdes (sekaligus menjaga posisinya di mata karyawan). Urunan karyawan diragukan karena gaji mereka Rp1,9 juta; terbuka pada ide yang lebih baik;
   - petty cash Rp100.000 lewat BNI. Reza memberi uang tunai pribadi Rp100.000 ke laci kasir. Setelah buka dan tutup shift, isi laci semestinya Rp100.000. Bila kembalian kurang, perlu cara yang tetap terkelola, supaya uang Reza tidak hilang, disalahgunakan, atau diambil karyawan.
   - Setoran ke Agrinas lewat rekening BNI Reza (nanti bisa juga oleh karyawan). Setelah setor Rabu, Reza mengambil uang laci ±Rp150.000. Ia lalu menukar Rp200.000 menjadi pecahan Rp2.000 lewat jasa yang mungkin berbayar kecil.
   - Uang operasional dari Reza untuk kopdes, dan tabungan kopdes dari kembalian permen, jual kardus, dan usaha lain.
   - Jasa angkut produk desa oleh sopir (yang juga karyawan): upah sopir, perawatan kendaraan, BBM; dibayar petani yang butuh. Bisa juga petani hanya meminjam kendaraan + BBM tanpa sopir.
   - Total 2–4 jenis catatan uang, sinkron dengan tracker pribadi bila menyangkut uang Reza.
6. Stock opname dengan dashboard, tabel stok, pemetaan stok per planogram, planogram dinamis yang mudah diubah. Pemisahan stok gerai dan gudang, dengan pemetaan, tabel, dan dashboard untuk gudang, gerai, dan keseluruhan. Bahan: `STOCK & PO/PLANOGRAM GROCERY PDF.pdf`, `Library/denah_clean.png`, `Library/WhatsApp Image 2026-08-05 at 16.26.50.jpeg`.
7. Semua yang digital juga diverifikasi dengan kertas manual dan direkonsiliasi: stok, semua jenis uang dan kantong, orang, tugas.
8. Pengeluaran seperti admin pupuk minggu ini Rp80.000, termasuk Rp60.000 untuk 5 materai (petani ditanya apakah mau mengganti seharga beli tanpa untung; arahan PPL supaya petani tidak repot), dan cetak surat-surat untuk petani. Semua dicatat dan dikelola.
9. Tugas di Sheet HR harus nyambung dengan tugas di Obsidian (TaskNotes memisahkan kerja dan rumah).
10. Manajemen karyawan yang bisa berjalan dengan 1 orang saja (Reza sendiri) maupun lebih.

### 25 Nov 2026 (21 masalah, diringkas)
1–2. POS menggabungkan stok gudang dan gerai; stok perlu verifikasi ganda manual dan digital.
3–4. POS tidak bisa ekspor penjualan, inventori, maupun laporan, hanya screenshot satu per satu; penjualan dan laporan perlu verifikasi ganda.
5–6. Perkasiran: penjualan POS vs kenyataan, setoran ke Agrinas vs uang tunai, sinkron dengan tracker pribadi (setor lewat BNI); verifikasi ganda laporan karyawan vs lapangan vs sistem.
7. Jadwal dan shift untuk 1–6 karyawan, termasuk izin dan berhalangan.
8. Monitoring dan evaluasi kinerja karyawan, Reza sendiri, dan kopdes, untuk laporan.
9. Pembagian tugas ke karyawan.
10. Pemasaran di luar desain: potensi desa, urutan sosialisasi, isi pesan, kontak, data pelanggan.
11. Mencocokkan barang terjual dengan sisa di gudang, dan uang yang disetor dengan uang di rekening Reza atau karyawan.
12–13. Skema penjualan (barang subsidi dan lainnya), serta hal sales lain yang belum terpikir.
14–17. Stock opname (kertas, POS, kertas ke digital) dengan planogram; PO vs stok gudang; barang yang kedaluwarsa duluan; manajemen stok lain.
18–21. Strategi penjualan, pemasaran, pengelolaan karyawan, dan pendekatan ke pihak internal maupun eksternal.

## Temuan dari screenshot POS (dibaca langsung, 26 Nov)
- Ada empat layar: **Laporan Shift** (waktu, transaksi, omset, kas awal→akhir, selisih), **Laporan Penjualan** (qty dan omset per produk per tanggal), **Laporan Stok** (stok dan nilai per tanggal, status Aman/Menipis/Habis), **Stok Barang** (harga jual).
- Kode produk berbeda antar-layar (Urea `Pupuk0006` di Stok, `013000010000002678` di Penjualan; Raja Gula tanpa SKU di Penjualan). Pencocokan perlu satu tabel produk berdasarkan nama.
- Pupuk dihitung dalam kg tetapi berlabel "pcs".
- POS tidak membedakan lokasi gudang dan gerai.
- Kas awal di POS Rp10.000 setiap hari. Uang pecahan Rp200.000 tidak tercatat di POS.
- Uji 23 → 26 Nov: penurunan stok Urea (50), Beras (2), dan Raja Gula (2) cocok dengan penjualan.

## Rancangan DRAF (belum dibaca/disetujui Reza)
Reza belum membaca daftar kantong (27 Nov). Jangan dibangun sebelum disetujui.

- **Uang:** satu catatan gerakan uang antar-kantong (dari → ke, nominal, alasan, siapa, foto bukti, status). Setiap "buku" hanyalah tampilan dari catatan itu. Hanya baris yang menyentuh kantong pribadi Reza yang dikirim ke tracker pribadinya.
  - Usulan kantong: Laci kasir (modal + sales hari itu), Uang sales titipan Agrinas, Cadangan pecahan (milik Reza), Kas operasional kopdes, Talangan (uang Reza yang harus kembali: materai, pengajuan ke Agrinas), Jasa angkut (per perjalanan), Pribadi Reza.
  - Setiap kantong punya lembar hitung kertas untuk dicocokkan dengan saldo digital.
  - Pendapat Claude soal urunan: jangan dibebankan ke karyawan. Alternatifnya pengajuan ke Agrinas, pendapatan non-POS kopdes, atau uang Reza yang dicatat sebagai talangan atau sumbangan.
  - Perlu dicek dulu: bila kardus dan permen milik Agrinas, hasil penjualannya mungkin termasuk sales Agrinas, bukan tabungan kopdes.
- **Stok:** tabel produk (pemetaan nama dan kode POS); tabel lokasi (rak × shelf × bay, gudang, warehouse) yang dibangkitkan skrip dari teks halaman 1 PDF planogram, jadi tidak hard-coded; stok per lokasi dari hitungan opname + mutasi gudang→gerai; total POS sebagai pembanding. Dashboard setelah datanya ada.
- **Kertas vs digital:** lembar hitung tercetak berurutan planogram, difoto, dibaca langsung, lalu dicocokkan.
- **Tugas:** Sheet untuk tugas bersama, Obsidian untuk tugas Reza, dihubungkan lewat ID tugas. Obsidian hanya dibaca kecuali Reza mengizinkan menulis.
- **Orang:** templat shift untuk 1–6 orang, termasuk mode Reza sendiri.
- **Urutan:** uang dulu (risiko tertinggi), lalu stok dan planogram, lalu tugas dan orang.

## Jangan diulang
- **Mengeksekusi tanpa bertanya:** pada 26 Nov Claude membuat Sheet `Buku Kas KDKMP Jogomulyo` di Drive SALES dan menjadwalkan pesan pagi jam 07.00 tanpa izin. Sheet itu masih ada, dan Reza yang memutuskan nasibnya.
- **OCR konektor Drive untuk foto** (close shift, bukti transfer): hasilnya tidak bisa dipegang.
- **Meminta Reza membuat repo yang ternyata sudah ada.**
- **Mengusulkan langkah dari catatan basi** (stempel yang sudah lama didapat).

## Belum terbukti
- Laporan Stok POS bisa memilih tanggal lampau.
- "Nilai stok" di POS adalah harga pokok.
- Mesin POS punya versi web yang bisa dibaca lewat browser.
- QRIS dan debit ikut disetor ke Agrinas (aturan grup belum merinci).
- Hari tanpa penjualan tunai tidak perlu setor.
- Tugas lama di Obsidian diperlakukan sebagai arsip (usulan Claude 26 Nov, belum dikonfirmasi Reza).
