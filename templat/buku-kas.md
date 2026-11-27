# Struktur Sheet `Buku Kas KDKMP Jogomulyo` (versi 2, 27 Nov 2026)

Letak: Drive kerja, folder `SALES`. Locale in_ID. Karyawan ikut membuka Sheet ini, jadi bahasanya netral (tidak ada "uangmu", tidak ada kesan berutang).

Prinsip:
- Orang mengisi langsung di HP kapan saja. Foto dipakai untuk mengecek sesudahnya, bukan untuk ditunggu.
- Satu tab untuk satu kejadian nyata: tutup shift, setor, bayar biaya.
- Sel putih diisi orang, sel abu-abu terisi sendiri (dilindungi dengan peringatan). Tidak ada teks biru.
- Hijau = cocok, kuning = belum lengkap, merah = perlu dicek.
- Istilah mengikuti SOP Agrinas dan layar POS: **Modal awal** (SOP: "Modal Awal (Floating Money)"; POS: "Saldo awal"), **kantong setor**. "Petty cash" hanya nama kiriman Rp100.000 dari Agrinas.

## Tab
| Tab | Diisi oleh | Isi |
|---|---|---|
| Ringkas | otomatis | Dasbor selebar layar HP: setoran (belum disetor, batas, berita transfer, setor terakhir), tutup shift terakhir (laci, amplop, foto), uang kembalian, bulan ini (tunai, QRIS, hari buka, biaya, grafik kecil), daftar "Perlu dicek". |
| Tutup | kasir | Satu baris per tutup shift: tanggal, kasir, tunai dan QRIS dari POS, uang laci dihitung, amplop dihitung, catatan. Otomatis: selisih laci, selisih amplop, status setoran, cek foto. Kolom bantu tersembunyi: modal awal, batas setor, total tunai, lunas pada. |
| Setor | yang menyetor | Tanggal, jam, jumlah, Ref ID, oleh, bukti, catatan. Otomatis: cek foto. Bila satu transfer menutup beberapa tanggal sales, Sheet melunasi tanggal paling lama lebih dulu. |
| Biaya | yang membayar | Tanggal, untuk, jumlah, dibayar oleh, bukti, catatan. Otomatis: kelengkapan. |
| Foto | Claude | Hasil bacaan foto (close shift, bukti transfer, nota) beserta tautan file. Kolom "Cek foto" di tab lain membandingkan isian dengan tab ini. |
| Daftar | Reza | Modal awal (dari riwayat bertanggal), amplop tukar, batas jam setor, rekening, hari setor per hari sales, nama, pembayar, jenis foto. |
| Panduan | — | Cara pakai singkat untuk kasir, penyetor, pembayar biaya, dan Claude. |

Tab lama (Kantong, Mutasi, POS Harian, Aturan) disembunyikan sampai Reza menyetujui versi 2, lalu dihapus.

## Alur
1. Kasir menutup shift → mengisi baris Tutup → foto Timemark → foto sampai di Drive.
2. Laptop menyinkron lewat rclone → Claude membaca foto lokal → menulis ke tab Foto → kolom Cek foto berubah menjadi Cocok atau Beda.
3. Setor dan Biaya sama: orang mengisi dulu, Claude mengecek sesudahnya.
