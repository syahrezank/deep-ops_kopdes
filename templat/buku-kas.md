# Struktur Sheet `Buku Kas KDKMP Jogomulyo`

Letak: Drive kerja, folder `SALES`. Locale in_ID (Rp dengan titik ribuan).
Kolom biru diisi manusia; kolom hitam berisi rumus. Selisih dihitung oleh Sheet sendiri, jadi Reza atau karyawan bisa mengecek tanpa Claude.

## Kantong
Satu baris per tempat uang berada: Kantong, Pemilik, Pemegang sekarang, Dihitung fisik? (Ya/Tidak), Masuk, Keluar, Saldo catatan, Hitungan fisik, Waktu hitung, Selisih, Keterangan.
- Masuk = jumlah Nominal di Mutasi yang Ke kantong ini; Keluar = yang Dari kantong ini.
- Saldo catatan hanya untuk kantong yang dihitung fisik. Selisih = hitungan fisik − saldo catatan; merah bila bukan 0.
- Ringkasan:
  - sales tunai menurut POS;
  - sudah disetor;
  - sales belum disetor;
  - uang Reza yang masih di kopdes atau belum kembali (keluar − masuk dari kedua kantong pribadi Reza);
  - uang karyawan yang belum kembali.

## Mutasi
Satu baris per uang yang berpindah: No, Tanggal, Jam, Dari kantong, Ke kantong, Nominal, Jenis, Keterangan, Dilakukan oleh, Untuk tanggal sales, Bukti, Ref/no. nota, Perlu dicek, Tenggat setor (rumus), Tepat waktu? (rumus).
- Dari/Ke dipilih dari daftar Kantong; Jenis dipilih dari daftar di tab Aturan.
- Baris kuning bila kolom Perlu dicek terisi.
- Serah terima: Dari = Ke = kantong yang sama; siapa menyerahkan dan menerima ditulis di Keterangan.

## POS Harian
Satu baris per tanggal sales, diisi dari foto close shift: shift, transaksi, saldo awal, tunai, QRIS, debit, total kas POS, nominal kas yang diketik kasir. Rumus menghitung selisih kas, wajib setor, tenggat setor, sudah disetor (dari Mutasi), status, dan berita transfer.

## Aturan
Aturan setoran (QRIS ikut disetor?, batas jam, rekening tujuan), tabel hari sales → hari setor, dan daftar jenis gerakan uang.
