# Struktur Sheet `Buku Kas KDKMP Jogomulyo` (versi 3, 27 Nov 2026)

Letak: Drive kerja, folder `SALES`. Locale in_ID. Karyawan ikut membuka Sheet ini, jadi bahasanya netral (tidak ada "uangmu", tidak ada kesan berutang). Uang pribadi Reza dicatat di Expense Tracker-nya (akun Cash-KDKMP, BNI-KDKMP), bukan di sini.

Prinsip:
- Mempermudah tugas kasir, penyetor, dan Reza; tidak menambah isian hanya supaya ada data.
- Orang mengisi langsung di HP atau laptop. Foto dipakai untuk mengecek sesudahnya, bukan untuk ditunggu.
- Satu tab isian untuk satu kejadian nyata: tutup shift, setor, uang kas masuk atau keluar.
- Dasbor dirancang untuk layar laptop dan bisa diatur.
- Sel putih diisi orang, sel abu-abu terisi sendiri, sel kuning di Dasbor adalah pengatur. Tidak ada teks biru. Hijau cocok, kuning belum lengkap, merah perlu dicek.
- Istilah mengikuti SOP Agrinas dan POS: Modal awal (SOP "Modal Awal (Floating Money)", POS "Saldo awal"), uang setor, petty cash (nama kiriman Agrinas).

## Tab
| Tab | Diisi oleh | Isi |
|---|---|---|
| Dasbor | otomatis + pengatur kuning | Pengatur di baris 4: periode (hari ini, kemarin, minggu ini, minggu lalu, bulan ini, bulan lalu, tahun ini, semua, pilih sendiri dari–sampai), kasir, dan jenis. Bagian: angka utama periode; Perlu tindakan (setor yang belum, batas, siapa yang membawa, selisih, foto, isian kosong); Uang sekarang (modal awal, amplop tukar, kas kopdes, uang setor per pembawa); per kasir; kalender bulan dengan warna status; kas per kategori; setoran per tanggal sales; grafik tunai per hari. Kolom bantu tersembunyi di T–AG. |
| Rincian | otomatis | Semua kejadian (tutup shift, setor, kas masuk/keluar) dalam satu daftar, mengikuti pengatur di Dasbor termasuk jenis. |
| Tutup | kasir | Tanggal, kasir, tunai dan QRIS dari POS, uang laci dihitung, amplop dihitung, **uang setor dibawa (nama)**, catatan. Otomatis: selisih laci, selisih amplop, status setoran per tanggal, cek foto; kolom bantu tersembunyi. |
| Setor | yang menyetor | Tanggal, jam, jumlah, untuk sales tgl, Ref ID, oleh, bukti, catatan. Satu transfer per tanggal sales; bila terlanjur digabung, satu baris per tanggal dengan Ref ID sama. |
| Kas | yang memegang atau membayar uang | Tanggal, kategori, uraian, Masuk, Keluar, uang siapa (Kas kopdes, Uang manajer, Uang karyawan, Petty cash Agrinas), oleh, bukti. Saldo kas kopdes = Masuk − Keluar dengan uang "Kas kopdes". |
| Foto | Claude | Hasil bacaan foto beserta tautan; dipakai kolom Cek foto di tab lain. |
| Daftar | Reza | Riwayat modal awal dan amplop tukar (bertanggal), batas jam setor, rekening, cara setor, hari setor, nama, uang (kantong), kategori kas (urutan = urutan di Dasbor), jenis foto, pilihan kasir. |
| Panduan | — | Cara pakai singkat. |

## Rumus (pelajaran teknis)
- Kolom otomatis memakai satu rumus per kolom di baris judul (ARRAYFORMULA/MAP), sehingga baris baru langsung terhitung.
- SUMIFS dengan kriteria larik di ARRAYFORMULA hanya menghasilkan satu angka; untuk per baris, pakai MAP. SUMIF dan COUNTIFS bisa larik.
- Nama variabel LET/LAMBDA tidak boleh mirip alamat sel (`x2`, `p1`, `g0`), karena hasilnya #NAME? atau #ERROR!. Pakai nama seperti `lst`, `awal`, `gs`.
- Menulis rumus lewat API: ubah locale ke en_US dulu (pemisah koma), lalu kembalikan ke in_ID.
- Kolom yang pernah disembunyikan tetap tersembunyi walau isinya diganti. Saat membangun ulang tab, cek kolom tersembunyi.
- Ekspor PDF dari Drive dipakai untuk melihat tampilan dasbor sebelum melapor.
- Uji beban 27 Nov: data 2 tahun (1.460 tutup, 729 setor, 2.189 foto, 200 biaya) tetap benar dan tidak terlihat lambat.

## Alur
1. Kasir menutup shift, mengisi baris Tutup (termasuk siapa yang membawa uang setor), lalu memotret dengan Timemark; foto sampai di Drive.
2. Penyetor mentransfer satu kali per tanggal sales dan mengisi Setor. Uang kas masuk atau keluar diisi di tab Kas.
3. Laptop menyinkron lewat rclone. Claude membaca foto lokal, menulis ke tab Foto, dan menandai yang tidak sama.
