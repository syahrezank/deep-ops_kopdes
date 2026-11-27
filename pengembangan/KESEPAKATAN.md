# Kesepakatan yang berlaku sekarang

Dibaca pertama di setiap sesi dan setelah percakapan diringkas (dimuat otomatis oleh hook). Isinya hanya yang berlaku sekarang. Riwayat ada di `log/`, alasan di `KEPUTUSAN.md`. Diubah hanya lewat PulReq setelah Reza setuju.

Penanda: **✔** disepakati Reza · **?** usulan Claude, belum disetujui.

## Cara kerja ✔
- **Dibangun seperti tracker pribadi Reza.** Contoh kecil (≤5 baris) disetujui dulu, lalu satu bagian dibangun dan langsung dipakai, baru bagian berikutnya. Dasar yang sudah disetujui tidak dibongkar ulang.
- **Mempermudah, bukan menambah beban,** untuk Sheet maupun proses kerjanya. Setiap kolom harus menjawab: tugas siapa yang jadi lebih mudah?
- **Pegawai tidak mengetik nomor teknis** (nomor shift POS, Ref ID transfer). Claude membacanya dari foto.
- **Rumus membaca daftar induk dan Kelompok,** tidak menulis nama akun atau kategori di dalam rumus.
- **Sebelum menulis ke Sheet,** baca daftar tab dan isinya dulu. Reza bisa mengganti nama tab.
- **Sebelum diserahkan,** jalankan Daftar uji di bawah dan laporkan hasilnya.
- **Chat kerja hanya menyambungkan deep-ops.** Hook tidak berjalan di sesi banyak repo.
- **Jawab untuk keadaan gerai, langsung ke pertanyaan.** Kutipan SOP atau sumber hanya bila diminta atau risikonya tinggi.

## Berkas ✔ (Reza, 27 Nov 16.36)
1. **Operasional gerai.** Dibuka bersama karyawan. Isinya uang gerai, stok dan lokasi, tugas dan jadwal, dengan satu set daftar induk.
2. **Kinerja.** Hanya Reza yang membuka. Tidak ada isian baru; membaca satu arah dari Operasional.
3. Uang pribadi Reza tetap di tracker pribadinya.

? Apakah Operasional adalah Buku Kas yang sekarang (dibangun ulang di berkas yang sama, link tetap) atau berkas baru: belum diputuskan.

## Daftar induk ?
- **Produk:** nama biasa, kode POS (kode bisa berbeda antar-layar POS), satuan, harga, lokasi jual.
- **Lokasi:** Gerai/Gudang › area › rak › susun, termasuk lantai.
- **Akun.**
- **Kategori:** Kelompok › Sub.
- **Orang (PJ).**

## Uang
**Kolom isian ?** (16.06, 16.11): Tanggal · Akun · Kategori · Masuk · Keluar · Saldo (otomatis) · Uraian · Penerima / Pemberi · PJ · Untuk sales tgl · Cek (otomatis). Kolom Bukti dihapus.

**Akun ✔** (15.22–15.32):
- **Penjualan:** milik Agrinas sampai disetor.
- **Kas Koperasi:** milik koperasi, tidak pernah dicampur dengan Penjualan.
- **Laci Kasir:** dana modal kembalian. Saat tutup dan sebelum buka shift, laci hanya berisi 100K petty cash Agrinas, bila sudah cair (Reza 16.17).
- **Pribadi:** tanpa saldo.

**Kategori ?** (16.06):
- Penjualan › Tunai
- Setor › Transfer · Teller (penerima Agrinas)
- Biaya › Materai · Cetak & ATK · Fee tukar uang · Kebersihan · BBM & angkut · Lain-lain
- Modal › Petty cash (pemberi Agrinas) · Tambahan modal
- Pemasukan › Jual barang bekas · Lain-lain
- Pindah › Antar akun · Serah terima
- Selisih › Kurang · Lebih · Penutup

Saldo awal dibuang (? 16.14).

**Status ✔:** Sudah disetor / Belum disetor / Terlambat dihitung otomatis, bukan akun. QRIS tidak diurus (✔ 15.22).

**Aturan menulis ✔:** satu baris setiap kali uang pindah tempat atau pindah tangan. Buka shift, istirahat, tukar pecahan, dan laci ↔ brankas tidak ditulis.

**Pencocokan foto ?** (16.11), per tanggal dan jumlah:
- total tunai per tanggal sales = tunai close shift;
- total setor per hari = transfer hari itu.

**Dasbor ?**, 4 pertanyaan, satu tabel untuk tiap pertanyaan:
1. Setor tepat waktu?
2. Uang ada di mana, milik siapa?
3. Keluar untuk apa?
4. Catatan beres?

Ditambah Isian Gform.

**Terbuka:**
- gerai sudah punya brankas atau belum;
- uang pribadi di laci bertentangan dengan larangan SOP; keputusan di tangan Reza.

## Stok dan lokasi ? (16.40, rancangan)
- **Polanya sama dengan uang:** Lokasi seperti Akun, mutasi barang seperti gerakan uang. Satu aturan: setiap kali barang pindah tempat, tulis satu baris.
- **Isian Mutasi barang:** Tanggal · Produk · Jenis (Masuk STB / Pindah / Rusak-retur / Selisih opname) · Dari · Ke · Jumlah · PJ.
- **Terjual:** dari foto Laporan Penjualan POS per hari, dibaca Claude, lalu mengurangi stok di lokasi jual produk. Tidak diketik pegawai.
- **Opname:** Sheet membuat daftar hitung berurutan lokasi, dengan nama biasa tanpa kode. Sheet menghitung selisihnya sendiri.
- **Peta lokasi (planogram):** digambar dari daftar Lokasi dan Penempatan, tidak hard-coded. Planogram sekarang pinjaman dan akan diganti versi resmi Agrinas.
- **Cek silang:**
  - jumlah terjual × harga = penjualan di Buku Kas;
  - stok turun = jumlah terjual;
  - total stok semua lokasi = stok POS.
- **Fakta:**
  - POS tidak bisa ekspor dan tidak punya lokasi;
  - pupuk dihitung dalam kg tetapi berlabel pcs;
  - penjualan bisa dari gudang (semua pupuk);
  - 198 karung Beras SPHP ada di lantai gerai, antara rak tengah dan kasir (27 Nov).

## Kinerja ? (garis besar)
Dihitung dari data operasional, tanpa isian tambahan:
- selisih kas per PJ;
- setoran tepat waktu;
- ketepatan opname per penghitung;
- tugas selesai.

## Daftar uji (wajib sebelum diserahkan)
1. **Data nyata 23–27 Nov:**
   - tunai 259.500 = disetor 259.500;
   - biaya 90.000;
   - Laci Kasir 10.000 milik Reza;
   - semua baris cocok foto.
2. Ganti nama satu subkategori dan satu akun: tidak ada tabel yang error.
3. Tambah subkategori baru: muncul di dasbor tanpa mengubah rumus.
4. Petty cash 100K masuk Laci Kasir: tercatat milik Agrinas.
5. Setoran lewat batas jam 12.00 sesuai jadwal: tampil "Terlambat".
6. Selisih kurang lalu ditutup: saldo kembali benar.
7. Satu transfer untuk dua tanggal sales: dua baris, cocok foto.
8. Baris tanpa tanggal, akun, atau kategori: ditandai di Cek.
9. Hasil dilihat lewat ekspor PDF: tidak ada teks terpotong.

Uji stok ditambahkan saat bagian stok dibangun.

## Berikutnya
1. Reza menyetujui kolom dan kategori uang lewat contoh 5 baris.
2. Bagian uang dibangun dan diuji.
3. Daftar induk produk dan lokasi.
4. Stok.
5. Kinerja.
