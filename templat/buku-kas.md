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
| Setor | yang menyetor | Tanggal, jam, jumlah, untuk sales tgl, Ref ID, oleh, bukti, catatan. Otomatis: cek (tanggal sales kosong, foto belum ada, cocok/beda per Ref ID). Satu transfer untuk satu tanggal sales; bila terlanjur digabung, satu baris per tanggal dengan Ref ID sama. Status di Tutup dihitung per tanggal sales: Sudah disetor, Disetor terlambat, Kurang setor, Lewat batas, Belum disetor. |
| Biaya | yang membayar | Tanggal, untuk, jumlah, dibayar oleh, bukti, catatan. Otomatis: kelengkapan. |
| Foto | Claude | Hasil bacaan foto (close shift, bukti transfer, nota) beserta tautan file. Kolom "Cek foto" di tab lain membandingkan isian dengan tab ini. |
| Daftar | Reza | Modal awal (dari riwayat bertanggal), amplop tukar, batas jam setor, rekening, hari setor per hari sales, nama, pembayar, jenis foto. |
| Panduan | — | Cara pakai singkat untuk kasir, penyetor, pembayar biaya, dan Claude. |

Tab lama (Kantong, Mutasi, POS Harian, Aturan) dihapus 27 Nov atas izin Reza.

## Rumus dan ukuran (27 Nov 10.50)
- Kolom otomatis memakai satu rumus per kolom di baris judul (ARRAYFORMULA/MAP), bukan rumus per baris. Baris baru langsung terhitung, dan satu sel yang tertimpa tidak merusak baris lain.
- Beberapa kasir per hari: satu baris per kasir per shift. Cek foto dan Ringkas menjumlah per tanggal; Ringkas menyebut jumlah shift dan nama kasir yang selisih. Hari buka dihitung per tanggal unik.
- SUMIFS tidak bisa menerima kriteria berupa larik di ARRAYFORMULA Google Sheets (hanya menghasilkan satu angka). SUMIF dan COUNTIFS bisa. Untuk SUMIFS per baris, pakai MAP.
- Uji beban 27 Nov 11.09 pada salinan sementara (sudah dibuang): 1.460 baris Tutup (2 shift × 730 hari), 729 setoran, 2.189 foto, 200 biaya.
  - Ringkas dan semua kolom otomatis terhitung benar.
  - Satu baris baru beserta dua kali baca selesai ±4,5 detik, termasuk jeda alat; tidak terlihat lambat.
  - Uji ini menemukan satu rumus Ringkas yang masih terbatas sampai baris 400; sudah diperbaiki.
- Kapasitas lembar: Tutup 3.000 baris (±4 tahun dengan 2 shift/hari), Setor 1.000, Biaya 2.000, Foto 4.000. Bila penuh, cukup tambah baris; rumus mengikuti sendiri.
- Perkiraan 2 tahun dengan 2 shift/hari: ±1.460 baris Tutup, ±313 setoran, ±2.000 foto, total <100 ribu sel (batas Sheets 10 juta). Transaksi per pembeli (±73.000 dalam 2 tahun) tetap di POS, tidak diketik ke Sheet.

## Alur
1. Kasir menutup shift → mengisi baris Tutup → foto Timemark → foto sampai di Drive.
2. Laptop menyinkron lewat rclone → Claude membaca foto lokal → menulis ke tab Foto → kolom Cek foto berubah menjadi Cocok atau Beda.
3. Setor dan Biaya sama: orang mengisi dulu, Claude mengecek sesudahnya.
