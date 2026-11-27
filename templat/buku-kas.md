# Struktur Sheet `Buku Kas KDKMP Jogomulyo` (versi 4, 27 Nov 2026)

Letak: Drive kerja, folder `SALES`. Locale in_ID. Dibangun ulang di berkas yang sama, jadi link tetap; v3 masih bisa dipulihkan lewat riwayat versi (File → Riwayat versi). Karyawan ikut membuka Sheet ini, jadi bahasanya netral.

## Prinsip
- **Satu tab isian (Catat).** Tab lain hanya dibaca. Beban datang dari banyaknya tempat mengetik, bukan dari jumlah tab.
- **Satu aturan menulis:** setiap kali uang pindah tempat atau pindah tangan, tulis satu baris. Kalau uangnya tidak pindah (buka shift, istirahat, tukar pecahan), tidak ditulis.
- **Saldo per kantong di setiap baris**, seperti buku kas biasa.
- **Hitungan yang tampak:** batas setor tampil di samping tanggal setor; status ✓, •, dan ! ditulis di sel yang sama, tidak di kolom tersembunyi.
- **Isi langsung, cek sesudahnya:** foto dibaca Claude ke tab Bukti; kolom Cek di Catat menandai cocok atau beda.

## Rujukan (riset 27 Nov)
| Bagian | Rujukan |
|---|---|
| Kolom Catat (Tanggal, Uraian, Masuk, Keluar, Saldo, Bukti) | Format buku kas harian (OCBC, majoo, accurate.id) |
| Kantong Belum disetor | Undeposited Funds di QuickBooks: kantong sementara sebelum setoran ke bank |
| Selisih laci satu baris | Rumus rekonsiliasi kas per shift (jurnal.id); Poster POS membuat baris penyesuaian; tracker Reza memakai "Adjustment > Uncounted" |
| Modal laci dan amplop tukar | Sistem imprest (fixed float), Xero dan OpenStax |
| Setor secepatnya | Pengendalian kas (Lumen Learning): uang yang belum disetor paling rawan |
| Shift | SOP kasir Agrinas (buka: hitung modal awal; tutup: rekonsiliasi kas, laporan selisih, serah terima saat ganti shift); praktik Shopify dan Microsoft: satu laci satu orang, hitung tiap shift |
| Ringkasan | Dasbor tracker pribadi Reza (baris "Menampilkan", catatan terakhir, satu pita angka utama, satu baris kesehatan data, "where is my money now", kalender) dan skill dataviz |
| Bangun ulang di berkas sama | Panduan performa Google Sheets: yang memberatkan adalah aturan format bersyarat dan sel berformat yang tak terpakai; tab yang dihapus membawa semuanya pergi |

## Tab
| Tab | Diisi oleh | Isi |
|---|---|---|
| Ringkasan | otomatis + pengatur kuning | Pengatur Periode (Hari ini … Pilih sendiri), Dari, Sampai, Kantong, Orang. Baris "Menampilkan" berisi tanggal yang benar-benar dipakai. Lima angka: Penjualan tunai (+QRIS), Sudah disetor, Belum disetor saat ini (siapa memegang), Selisih laci (ditutup berapa), Kas kopdes saat ini (biaya periode, uang pribadi). Satu baris Beres/Perlu dicek. Setoran per tanggal sales (harus, disetor, sisa, batas, disetor pada ✓/!). Uang ada di mana sekarang (saldo per kantong, standar). Biaya per jenis. Kalender bulan. Isian Gform PIC (angka tanpa titik dan catatan transfer per tanggal). Buku kas per kantong dengan saldo awal dan saldo akhir. Kolom N dan O tersembunyi hanya untuk daftar pilihan. |
| Catat | siapa pun yang memegang uang | Tanggal, Kantong, Jenis, Uraian, Masuk, Keluar, Saldo (otomatis), Untuk sales tgl, Oleh, Bukti, Cek (otomatis). Baris 1 tautan "Tambah catatan" ke baris kosong berikutnya. |
| Bukti | Claude | Hasil bacaan foto: tutup shift (kasir, modal awal, tunai, QRIS, selisih POS) dan transfer setor (ref, jumlah, jam). Jam transfer di sini dipakai kolom "Disetor pada". |
| Panduan | Reza | Kapan menulis baris (13 kejadian), Kantong (ada saldo, standar), Jenis (arah, kelompok, wajib untuk sales tgl), Orang, Jadwal setor PIC (19 Nov), batas jam, rekening, cara setor. Nama kantong dan jenis dipakai rumus. |

## Kantong
Belum disetor · Kas kopdes · Modal laci (standar 100.000) · Amplop tukar (standar 20.000) · Uang pribadi (tanpa saldo) · Langsung ke Agrinas (tanpa saldo, QRIS/debit).

"Harus disetor" per tanggal = semua baris Penjualan (tunai, QRIS, debit) di kantong Belum disetor. QRIS/debit yang masuk rekening Agrinas dicatat di Langsung ke Agrinas, jadi tidak ikut disetor; bila masuk rekening seseorang, dicatat di Belum disetor dan ikut disetor.

"Dipegang" per orang hanya dihitung untuk Belum disetor, karena serah terima dicatat di kantong itu. Untuk kantong lain, angka per orang bisa negatif bila orang memakai uang tanpa baris serah terima, jadi tidak ditampilkan.

## Rumus (pelajaran teknis)
- Tulis rumus lewat API dengan locale en_US, lalu kembalikan ke in_ID. Mengganti nama tab memperbarui rumus dan validasi yang merujuknya.
- Di dalam MAP, `ROW(B3:B)` tidak menjadi larik (hasil #VALUE!); pakai `SEQUENCE(ROWS(B3:B),1,3)`. Perkalian larik di dalam LAMBDA butuh SUMPRODUCT.
- Nomor referensi transfer 20 digit disimpan sebagai teks (format @). Cocokkan dengan `=`, bukan COUNTIFS, supaya tidak diubah jadi angka.
- Teks isian yang diawali `+` (misalnya "+1 baris") dibaca sebagai rumus dan menjadi #ERROR!.
- Cek tanda kurung dengan skrip sebelum menulis rumus panjang.
- Nama LET `nt1` dibaca sebagai sel NT1 (#NAME?). Nama dengan huruf lalu angka selalu dihindari.
- Menyisipkan baris di tengah tabel Panduan atau Ringkasan menggeser rujukan rumus, validasi, dan proteksi dengan sendirinya. Sudah dicek 27 Nov.
- Uji 27 Nov: dengan 10 baris uji (selisih kurang dan penutupnya, serah terima, kas kopdes, baris tanpa tanggal, arah salah, setoran lewat batas), semua angka sesuai hitungan tangan. Baris uji lalu dihapus.
