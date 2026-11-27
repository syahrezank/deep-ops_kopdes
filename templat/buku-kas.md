# Struktur Sheet `Buku Kas KDKMP Jogomulyo` (versi 5, 27 Nov 2026)

Letak: Drive kerja, folder `SALES`. Locale in_ID. Dibangun ulang di berkas yang sama, jadi link tetap; versi lama bisa dipulihkan lewat riwayat versi (File → Riwayat versi). Karyawan ikut membuka Sheet ini, jadi bahasanya netral.

## Prinsip
- **Satu tab isian (Catat).** Tab lain hanya dibaca. Beban datang dari banyaknya tempat mengetik, bukan dari jumlah tab.
- **Satu aturan menulis:** setiap kali uang pindah tempat atau pindah tangan, tulis satu baris. Kalau uangnya tidak pindah (buka shift, istirahat, tukar pecahan), tidak ditulis.
- **Akun, kategori, status, dan PJ adalah empat hal berbeda** (koreksi Reza 27 Nov 15.22):
  - **Akun** = tempat uang, dengan satu pemilik;
  - **Kategori transaksi** = apa yang terjadi pada uang;
  - **Status** (Sudah disetor, Belum disetor, Terlambat) dihitung sendiri, tidak pernah jadi akun;
  - **PJ** = penanggung jawab, orang yang memegang atau mengeluarkan uang di baris itu.
- **Uang milik pemilik berbeda tidak dicampur.** Penjualan (milik Agrinas) dan Kas Koperasi (milik koperasi) punya bagian sendiri di Ringkasan.
- **Saldo per akun di setiap baris**, seperti buku kas biasa.
- **Hitungan yang tampak:** batas setor tampil di samping status; status ✓, •, dan ! ditulis di sel yang sama, tidak di kolom tersembunyi.
- **Isi langsung, cek sesudahnya:** foto dibaca Claude ke tab Bukti; kolom Cek di Catat menandai cocok atau beda.

## Rujukan (riset 27 Nov)
| Bagian | Rujukan |
|---|---|
| Kolom Catat (Tanggal, Uraian, Masuk, Keluar, Saldo, Bukti) | Format buku kas harian (OCBC, majoo, accurate.id) |
| Akun Penjualan sampai disetor | Undeposited Funds di QuickBooks: akun sementara sebelum setoran ke bank. "Belum disetor" adalah status dari saldonya. |
| Selisih laci satu baris | Rumus rekonsiliasi kas per shift (jurnal.id); Poster POS membuat baris penyesuaian; tracker Reza memakai "Adjustment > Uncounted" |
| Laci Kasir dengan standar | Sistem imprest (fixed float), Xero dan OpenStax |
| Setor secepatnya | Pengendalian kas (Lumen Learning): uang yang belum disetor paling rawan |
| Shift | SOP kasir Agrinas (buka: hitung modal awal; tutup: rekonsiliasi kas, laporan selisih, serah terima saat ganti shift); praktik Shopify dan Microsoft: satu laci satu orang, hitung tiap shift |
| Ringkasan | Dasbor tracker pribadi Reza (baris "Menampilkan", catatan terakhir, satu pita angka utama, satu baris kesehatan data, kalender) dan skill dataviz |
| Panduan | Tab Guide di tracker pribadi Reza: ditulis untuk orang biasa, per kejadian, bukan daftar pengaturan |
| Gform PIC | Screenshot Gform "Bukti Setor Sales Harian KDKMP" (27 Nov 14.53) |

## Tab (urutan dan warna)
| Tab | Warna | Diisi oleh | Isi |
|---|---|---|---|
| Panduan | biru tua | Reza | Cara pakai untuk orang biasa: kata-kata (Akun, Kategori, PJ, Status, kolom abu-abu), satu aturan, tutup shift (5 langkah), setor ke Agrinas (4 langkah + batas setor), kejadian lain (serah terima, pindah akun, biaya, jual kardus, "ragu? tulis di Uraian"). |
| Catat | hijau | siapa pun yang memegang uang | Tanggal, Akun, Kategori, Uraian, Masuk, Keluar, Saldo (otomatis), Untuk sales tgl, PJ, Bukti, Cek (otomatis). Akun dan Kategori dipilih dari daftar (ketat); PJ dari Konfigurasi (boleh nama baru). |
| Ringkasan | biru tua | otomatis + pengatur kuning | Lihat di bawah. |
| Bukti | ungu | Claude | Hasil bacaan foto: tutup shift (kasir, modal awal, tunai, selisih POS) dan transfer setor (ref, jumlah, jam). |
| Akun | oranye | Reza | Akun, Ada saldo, Standar, Milik, Artinya. |
| Kategori | oranye | Reza | Kategori, Arah, Kelompok, Untuk sales tgl (wajib atau tidak), Artinya. |
| Konfigurasi | oranye | Reza | Daftar PJ (kuning, bebas diubah), jadwal setor PIC (hari sales → hari setor, tambah hari), batas jam setor, rekening setor, nama di catatan transfer. |

Proteksi semua tab hanya peringatan (warning), bukan kunci.

## Akun
| Akun | Ada saldo | Milik | Catatan |
|---|---|---|---|
| Penjualan | Ya | Agrinas | Tunai hasil jualan sejak tutup shift sampai disetor. Saldonya = belum disetor. |
| Kas Koperasi | Ya | Koperasi | Hasil jual kardus dan barang bekas, modal kas. Tidak pernah dicampur dengan Penjualan. |
| Laci Kasir | Ya | pemberi uangnya | Standar 100.000. Bisa berisi uang beberapa pemilik sekaligus, misalnya 100.000 petty cash Agrinas + 100.000 uang Reza. Pemilik dibaca dari baris masuknya: Petty cash Agrinas = Agrinas; Pindah akun dari Pribadi = PJ baris itu. |
| Pribadi | Tidak | PJ di baris itu | Uang pribadi yang dipakai untuk gerai. Tanpa saldo; Ringkasan menampilkan jumlah per PJ untuk disalin ke tracker pribadi. |

## Kategori
Penjualan tunai · Setor ke Agrinas · Selisih kurang · Selisih lebih · Penutup selisih · Serah terima · Pindah akun · Petty cash Agrinas · Modal · Jual barang bekas · Pemasukan lain · Materai · Cetak & ATK · Fee tukar uang · Kebersihan · Biaya lain.

QRIS dan debit tidak diurus (Reza, 15.22).

## Ringkasan (dari atas ke bawah)
1. Judul, tombol hijau "Tambah catatan di tab Catat", baris "Menampilkan" (tanggal yang dipakai, PJ), "Catatan terakhir".
2. Pengatur kuning: Periode, Dari, Sampai, PJ, Akun buku kas.
3. Dua bagian berdampingan:
   - **Penjualan KDKMP · milik Agrinas:** Penjualan tunai (selisih laci, ditutup), Sudah disetor, Belum disetor saat ini (dipegang siapa);
   - **Kas Koperasi · milik koperasi:** Saldo saat ini, Keluar periode (masuk periode).
4. Satu baris kesehatan: "✓ Beres" atau "Perlu dicek" (masalah di kolom Cek, setoran terlambat, Pindah akun atau Serah terima yang tidak seimbang).
5. Setoran per tanggal sales (Penjualan, Disetor, Sisa, Batas setor, Status, PJ) dan Biaya periode per kategori (Kas Koperasi, Pribadi, Total).
6. Laci Kasir dan uang pribadi: saldo Laci Kasir dengan rincian pemilik dan standar; uang pribadi per PJ di periode (biaya, ke akun lain), ditandai "salin ke tracker pribadi".
7. Kalender bulan: penjualan tunai per hari dengan ✓ • ! –.
8. Isian Gform PIC: Tgl sales, Omset, Tunai, Nominal transfer (angka tanpa titik), Jadwal, Catatan transfer.
9. Buku kas satu akun (dipilih di pengatur): Saldo awal + Masuk − Keluar = Saldo akhir, lalu daftar baris. Untuk Pribadi tampil pesan bahwa akun itu tanpa saldo.

Kolom N dan O tersembunyi hanya untuk daftar pilihan PJ dan Akun.

## Rumus (pelajaran teknis)
- Tulis rumus lewat API dengan locale en_US, lalu kembalikan ke in_ID. Mengganti nama tab memperbarui rumus dan validasi yang merujuknya.
- **Sebelum menulis ke sebuah tab, baca dulu daftar tab dan isinya.** Reza bisa mengganti nama tab; menulis ke sel lama yang masih digabung (merge) membuang nilai. Lepas gabungan dan kosongkan dulu.
- Di dalam MAP, `ROW(B3:B)` tidak menjadi larik (hasil #VALUE!); pakai `SEQUENCE(ROWS(B3:B),1,3)`. Perkalian larik di dalam LAMBDA butuh SUMPRODUCT.
- Nomor referensi transfer 20 digit disimpan sebagai teks (format @). Cocokkan dengan `=`, bukan COUNTIFS, supaya tidak diubah jadi angka.
- Teks isian yang diawali `+` (misalnya "+1 baris") dibaca sebagai rumus dan menjadi #ERROR!.
- Cek tanda kurung dengan skrip sebelum menulis rumus panjang.
- Nama LET yang mirip alamat sel (`nt1`, `p1`) menjadi #NAME?; nama `r` dan `c` juga dilarang.
- Menyisipkan baris menggeser rujukan rumus, validasi, dan proteksi dengan sendirinya.
- Pemeriksaan tampilan: ekspor PDF lewat Drive lalu `pdftoppm`.
