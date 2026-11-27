# Struktur Sheet `Buku Kas KDKMP Jogomulyo`

Letak: Drive kerja, folder `SALES`. Locale in_ID (Rp dengan titik ribuan).
Kolom biru diisi manusia; kolom hitam berisi rumus. Selisih dihitung oleh Sheet sendiri, jadi Reza atau karyawan bisa mengecek tanpa Claude.

## Kantong
Satu baris per tempat uang berada: Kantong, Pemilik, Pemegang sekarang, Dihitung fisik? (Ya/Tidak), Masuk, Keluar, Saldo catatan, Hitungan fisik, Waktu hitung, Selisih, Keterangan.
- Masuk = jumlah Nominal di Mutasi yang Ke kantong ini; Keluar = yang Dari kantong ini.
- Saldo catatan hanya untuk kantong yang dihitung fisik. Selisih = hitungan fisik − saldo catatan; hijau bila 0, merah bila bukan 0.
- Daftar kantong (27 Nov), baris 4–13:
  - **Laci kasir** — modal Rp10.000 milik Reza + sales milik Agrinas sampai diambil; dipegang kasir.
  - **Amplop pecahan gerai** — selalu Rp20.000 milik Reza; dipegang kasir, terpisah dari laci.
  - **Cadangan pecahan Reza** — sisa pecahan yang dipegang Reza untuk mengisi ulang amplop.
  - **Uang sales dibawa (belum disetor)** — sales yang sudah keluar dari laci tetapi belum disetor; milik Agrinas walau dibawa Reza.
  - **Kas operasional kopdes**, **Uang pribadi Reza – tunai**, **Uang pribadi Reza – BNI**, **Uang karyawan**, **BNI Agrinas**, **Pihak luar**.
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
- Tukar uang dengan nilai sama (laci ↔ amplop) **tidak dicatat**: saldo kedua kantong tidak berubah. Yang dicatat hanya uang yang benar-benar pindah pemilik atau tempat, mis. isi ulang amplop dari cadangan (jenis Pindah kantong).

## POS Harian
Satu baris per tanggal sales, diisi dari foto close shift: shift, transaksi, saldo awal, tunai, QRIS, debit, total kas POS, nominal kas yang diketik kasir. Rumus menghitung selisih kas, wajib setor, tenggat setor, sudah disetor (dari Mutasi), status, dan berita transfer.

## Aturan
Aturan setoran (QRIS ikut disetor?, batas jam, rekening tujuan), tabel hari sales → hari setor, daftar jenis gerakan uang (A19:A33), dan tabel nilai tetap kantong (A35:C38): modal laci Rp10.000, amplop Rp20.000, cadangan Rp180.000.

## Kartu aturan untuk kasir
Google Doc `SALES/Aturan Uang Kasir KDKMP Jogomulyo`, satu halaman untuk ditempel di kasir: tiga tempat uang kembalian, cara tukar dengan amplop, bon bila memakai uang sendiri, dan isi foto Timemark saat tutup shift (laci + amplop + bon di samping struk). Bila nilai tetap di tab Aturan berubah, kartu ini ikut diubah.
