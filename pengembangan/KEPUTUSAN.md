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
8. **Mempermudah tugas, bukan menambah beban.** Sheet harus membantu Reza dan karyawan menyelesaikan tugas dan tanggung jawab dengan akurat; jangan memperumit atau menambah beban harian hanya supaya ada data. (Reza, 27 Nov 11.32)

## Aturan tetap Reza yang tidak tertulis di CLAUDE.md
- Tugas yang melibatkan karyawan atau orang lain disimpan di Sheets (`HR/Tugas_KDKMP_Jogomulyo`). Tugas yang hanya Reza kerjakan, kerja maupun rumah, disimpan di Obsidian TaskNotes; tugas kerja ditandai context `work`. Keduanya harus nyambung. (26 Nov)
- Setiap gerakan uang yang melibatkan uang pribadi Reza harus sinkron dengan tracker pribadinya (Google Sheet `Expense_Tracker_v0.5`). (26 Nov)
- Semua yang dicatat digital (uang, kantong, stok, orang, tugas) punya pencocokan dengan hitungan kertas manual. Digital dan kertas punya sumber masing-masing. (26 Nov)
- Planogram tidak boleh hard-coded: planogram sekarang pinjaman dari kopdes lain dan akan diganti versi resmi Agrinas. (26 Nov)
- Pencocokan kertas–digital berlaku untuk **semua hal**, bukan hanya stok, dan harus bisa dilakukan Reza atau karyawan **dengan maupun tanpa Claude**. Selisih dihitung oleh Sheet sendiri, dan formulir kertas punya kolom dan nomor yang sama dengan Sheet. (27 Nov)
- Fokus satu aspek dulu: uang. Menulis ke Obsidian diizinkan nanti, belum sekarang. (27 Nov)
- Kantong uang bisa dipegang atau dititipkan ke karyawan untuk sebuah tugas. Setiap kantong punya pemegang, dan setiap serah terima dicatat. (27 Nov)
- Penjualan POS bisa diambil dari gudang maupun gerai; contohnya seluruh pupuk sekarang ada di gudang dan dijual dari sana. Jadi setiap produk punya lokasi jual sendiri; anggapan "penjualan selalu dari gerai" salah. (27 Nov)
- **Berkas kerja bersama selalu Google** (Sheets, Docs, atau jenis lain lewat Drive), tidak pernah Excel atau berkas offline, karena perlu kolaborasi. Folder Drive lokal di laptop dipakai untuk membaca gambar; GitHub untuk ingatan, aturan, dan alat. (27 Nov)
- **Bangun dasar semua aspek dulu.** Otomasi, atau setidaknya pengolahan mudah lewat Claude Code, baru jauh nanti setelah dasar semua aspek berdiri. Dasar itu harus muat juga aspek yang belum Reza tulis, belum terpikir, atau belum ada di folder Drive. (27 Nov)
- **Alur foto (wajib diingat):** Reza mengunggah foto ke Drive → laptop menyinkron lewat rclone → Claude membaca gambar lokal → hasil bacaan ditaruh di tab tersendiri → data itu dipakai untuk mengisi tab lain. (27 Nov)
- **Sheet untuk manusia, bukan untuk Claude.** Nama pendek seperti percakapan sehari-hari ("Laci", bukan "Laci kasir – modal Reza…"). Tidak ada teks biru. Ada dasbor yang langsung terbaca. Setiap tab dan letak info harus masuk akal bagi Reza dan karyawan. (Reza, 27 Nov: "buy me a milk" vs "mammal white excretion")
- **Karyawan ikut membuka Buku Kas.** Bahasanya netral: tidak ada "uangmu", tidak ada kesan orang berutang ke Reza. Materai petani dan cetak adalah biaya; petani ditanya mau mengganti, bukan ditagih. Fee tukar adalah biaya, bukan uang Reza di kopdes. (Reza, 27 Nov 10.04)
- **Isi langsung, cek sesudahnya.** Reza dan karyawan mengisi Sheet langsung (real time). Foto dan bacaan Claude hanya mengecek sesudahnya, tidak boleh jadi antrean. (27 Nov)
- **Istilah:** "Modal awal" untuk uang kembalian di laci (SOP Agrinas: "Modal Awal (Floating Money)"; POS: "Saldo awal"). "Petty cash" hanya nama kiriman Rp100.000 dari Agrinas, karena dalam pembukuan petty cash berarti dana biaya kecil, bukan uang kembalian. "Kantong setor" untuk sales yang menunggu disetor (istilah SOP). (27 Nov)
- **Buku Kas bukan tracker pribadi.** Tracker pribadi Reza (`Expense_Tracker`) jadi patokan mutu (dasbor dulu, nama pendek, tab mentah terpisah dari tab bersih), bukan untuk disalin. Buku Kas dirancang dari pertanyaan Buku Kas sendiri. (27 Nov)
- POS tidak punya mekanisme gudang vs gerai; semua barang ada di satu daftar. **Sistem deep-ops yang menyediakan lapisan lokasi.** Planogram harus sinkron dengan stok: setiap sel menunjukkan berapa jumlah suatu produk di rak mana, bagian gudang mana, atau bagian gerai mana, termasuk lokasi lantai. Contoh 27 Nov: seluruh 198 karung Beras SPHP ditaruh di lantai gerai, antara rak tengah dan kasir, tepat setelah pintu masuk. (27 Nov)

- **Satu tab isian.** Semua gerakan uang diketik di satu tab, seperti Ledger di tracker pribadinya (BNI dan tunai diketik di satu tab, Mandiri ditempel). Tab lain hanya dibaca. Beban datang dari banyaknya tempat mengetik, bukan dari jumlah tab: tracker Reza punya 12 tab terlihat, tetapi hanya satu tab isian. (Reza, 27 Nov 13.09)

## Izin tetap berkas
Berkas di Drive atau laptop yang boleh diubah tanpa bertanya dulu. Berlaku sampai Reza mencabutnya.

- `SALES/Buku Kas KDKMP Jogomulyo` (Google Sheet): Reza memilihnya sebagai tempat catatan uang (27 Nov, "Buku Kas in sales"). Belum dipastikan apakah izin ini juga mencakup menambah baris baru tanpa bertanya.

## Yang berlaku sekarang
| Topik | Keputusan | Asal |
|---|---|---|
| Pembagian repo | Satu repo ops untuk kas, stok, dan orang. Pencocokan ganda terjadi antar-bagian, jadi bagian-bagian itu harus di satu tempat. deep-space tetap untuk aturan, administrasi, pupuk, dan kasus SDM; deep-studio untuk desain dan pemasaran. | Diskusi 25 Nov; Reza membuat repo ini |
| Penyimpanan | Foto, PDF, ekspor, dan data di Drive/Sheets. Repo hanya teks dan alat, supaya tidak membengkak. | 25 Nov |
| Membaca Drive | Lewat folder lokal (Claude desktop). Konektor Drive tidak dipakai untuk membaca foto. | Reza, 26 Nov |
| Kas kopdes | Saat ini Rp0. Hasil jual kardus dan lainnya sah menjadi kas kopdes (sudah terbukti, Reza 27 Nov). Reza berencana memodali Rp50.000 dari uangnya sendiri; belum diberikan dan belum dicatat di tracker pribadi. Saat diberikan: satu baris Modal, kantong Kas kopdes, di tab Catat. | Reza, 27 Nov 11.32 |
| Kebocoran uang | Dimulai dari uang sales yang dibawa Reza atau karyawan sebelum disetor. Di v4: kantong Belum disetor, kolom Oleh, dan baris Serah terima saat uang pindah tangan. Ringkasan menampilkan siapa memegang berapa. | Reza, 27 Nov 11.32 |
| Amplop tukar | Belum diserahkan ke gerai; uang tukar masih dipegang Reza. Di v4 kantong Amplop tukar bersaldo 0 (standar Rp20.000) sampai diserahkan. | Reza, 27 Nov 11.32 |
| Cadangan uang kecil | Uang pribadi Reza, tidak dicatat di Buku Kas. Rp200.000 ditukar dengan fee Rp10.000, jadi tersisa Rp190.000 uang kecil campuran (2.000, 5.000, 10.000), belum dihitung semua. Fee masuk tab Biaya. | Reza, 27 Nov 10.04 |
| Amplop pecahan di gerai | Selalu Rp20.000 (awalnya 10 lembar Rp2.000), uang Reza, terpisah dari laci. Pecahan habis: karyawan minta tukar ke Reza. | Reza, 27 Nov ("sure") |
| Modal laci kasir | Rp10.000 uang pribadi Reza, diketik sebagai saldo awal POS. Standar Rp100.000 dari petty cash Agrinas (Reza: "modal awal of supposedly 100K"); saat cair dicatat Petty cash Agrinas lalu Dikembalikan. Buka shift sendiri tidak ditulis di Catat. | Reza, 27 Nov 13.39 |
| Kembalian kurang | Tukar dengan amplop, nilainya sama, tidak dicatat. Kembalian selalu dari laci. Bila terpaksa memakai uang sendiri: uang + bon (tanggal, nama, nominal) masuk laci, diambil kembali saat tutup shift. Foto Timemark tutup shift berisi laci + amplop + bon di samping struk. | Usulan Claude, disetujui Reza 27 Nov ("sure") |
| Sales yang dibawa sebelum setor | Kantong "Belum disetor" (v4), milik Agrinas walau dibawa seseorang (pola Undeposited Funds). Rp103.000 sales 25 Nov sempat di tas Reza karena kopdes belum punya dompet fisik. | Reza, 27 Nov |
| Kartu aturan kasir | Google Doc `SALES/Aturan Uang Kasir KDKMP Jogomulyo`, satu halaman. | Reza, 27 Nov ("sure") |
| Catatan uang | Sheet `Buku Kas KDKMP Jogomulyo` (SALES) versi 4, dibangun ulang di berkas yang sama (link tetap, riwayat versi menyimpan v3): Ringkasan, Catat (satu-satunya tab isian), Bukti, Panduan. Struktur di `templat/buku-kas.md`. | Reza, 27 Nov 13.39 ("whichever has the best result") |
| Cara setor | Satu transfer untuk satu tanggal sales (aturan PIC); hanya sales tunai yang disetor. Transfer 27 Nov (Rp108.500 untuk 25 dan 26 Nov) sudah Reza laporkan ke PIC untuk dikoreksi; di Buku Kas dicatat dua baris per tanggal dengan Ref ID sama. | Reza, 27 Nov 11.05 (meralat keterangan 10.23) |
| Bukti fisik uang | Foto Timemark struk close shift beserta uangnya, seperti yang sudah Reza lakukan. Foto 26 Nov memperlihatkan tepat Rp15.500 (3 × Rp5.000 + koin Rp500). | 27 Nov |
| Shift di Buku Kas | Buku Kas mengikuti uang, bukan orang: baris ditulis hanya bila uang pindah tempat atau pindah tangan. Buka shift, istirahat, dan tukar pecahan tidak ditulis; tutup shift (termasuk mendadak dan ganti shift) satu baris Penjualan tunai. Catatan shift lengkap (buka, modal awal, tutup, QRIS, selisih) ada di POS dan dibaca Claude ke tab Bukti. | Usulan Claude dari riset dan SOP kasir Agrinas, 27 Nov 13.39 (Reza belum memutuskan) |
| QRIS dan debit | Tetap di Buku Kas: jenis Penjualan QRIS dan Penjualan debit (EDC), kantong Langsung ke Agrinas (tanpa saldo). Gform PIC meminta total omset, tunai, debit EDC (+ foto settlement), dan QRIS statis (+ foto QRIS wondr) per tanggal close shift. QRIS belum aktif. | Reza, 27 Nov 13.39 dan 14.53 (screenshot Gform) |
| Biaya 25 Nov | Fee tukar Rp10.000, materai Rp60.000, cetak Rp20.000 bertanggal 25 Nov, dibayar uang pribadi Reza. | Reza, 27 Nov 13.39 |
| Gform setor sales | Gform "Bukti Setor Sales Harian KDKMP": metode setor tunai di teller atau transfer langsung ke APN; per tanggal: tanggal transaksi, nominal (tanpa titik), bukti transfer. Aturan: satu tanggal satu setoran, tidak digabung, tidak dibulatkan, tidak ditambah modal awal, nominal sesuai struk close shift. Transfer: catatan per tanggal (pola "KDKMP <nama> Kec <kecamatan> penjualan Tgl <tanggal>"). Teller: tanpa berita (kena biaya), tulis "Sales tanggal X - KDKMP X" di slip. Jadwal di form: Jumat–Minggu, Senin–Selasa, Rabu–Kamis. Disalin ke Panduan Buku Kas. | Screenshot Gform dari Reza, 27 Nov 14.53 |
| Jasa angkut | Bukan kantong. Ia jenis gerakan uang (upah sopir, BBM, perawatan, bayaran petani) antar-kantong yang ada. | Reza, 27 Nov |

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
Daftar kantong sudah dipakai di Sheet sejak Reza menjawab "sure" (27 Nov), tetapi ia belum menyatakan daftar itu final. Bagian stok, tugas, dan orang belum dibangun.

- **Uang:** satu catatan gerakan uang antar-kantong (dari → ke, nominal, jenis, siapa, foto bukti, paraf). Setiap "buku" hanyalah tampilan dari catatan itu. Hanya baris yang menyentuh kantong pribadi Reza yang dikirim ke tracker pribadinya.
  - Kantong = tempat uang berada secara fisik, dengan pemilik dan pemegang sekarang. Daftar terbaru ada di `templat/buku-kas.md` (versi pertama dikoreksi Reza: jasa angkut bukan kantong).
  - Jasa angkut, talangan (materai, pengajuan ke Agrinas), tukar pecahan, setoran, dan belanja operasional menjadi **jenis** gerakan, bukan kantong. "Sales belum disetor" dihitung: penjualan POS dikurangi setoran.
  - Serah terima kantong ke karyawan dicatat sebagai baris tersendiri, diparaf kedua pihak.
  - Setiap kantong punya lembar hitung kertas; Sheet menghitung selisihnya sendiri.
  - Pendapat Claude soal urunan: jangan dibebankan ke karyawan. Alternatifnya pengajuan ke Agrinas, pendapatan non-POS kopdes, atau uang Reza yang dicatat sebagai talangan atau sumbangan.
  - Perlu dicek dulu: bila kardus dan permen milik Agrinas, hasil penjualannya mungkin termasuk sales Agrinas, bukan tabungan kopdes.
- **Stok:** tabel produk (pemetaan nama dan kode POS); tabel lokasi (rak × shelf × bay, gudang, warehouse) yang dibangkitkan skrip dari teks halaman 1 PDF planogram, jadi tidak hard-coded; stok per lokasi dari hitungan opname + mutasi gudang→gerai; total POS sebagai pembanding. Data yang ada sekarang (12 produk di POS, STB) cukup untuk mulai; yang belum ada hanya hitungan per lokasi.
- **Kertas vs digital (semua hal):** setiap catatan digital punya formulir kertas dengan kolom dan nomor yang sama, dan Sheet menghitung selisihnya sendiri, supaya bisa dicek tanpa Claude. Untuk stok, lembar hitung berurutan planogram.
- **Tugas:** Sheet untuk tugas bersama, Obsidian untuk tugas Reza, dihubungkan lewat ID tugas. Obsidian hanya dibaca kecuali Reza mengizinkan menulis.
- **Orang:** templat shift untuk 1–6 orang, termasuk mode Reza sendiri.
- **Urutan:** uang dulu (risiko tertinggi), lalu stok dan planogram, lalu tugas dan orang.

## Jangan diulang
- **Mengeksekusi tanpa bertanya:** pada 26 Nov Claude membuat Sheet `Buku Kas KDKMP Jogomulyo` di Drive SALES dan menjadwalkan pesan pagi jam 07.00 tanpa izin. Sheet itu masih ada, dan Reza yang memutuskan nasibnya.
- **OCR konektor Drive untuk foto** (close shift, bukti transfer): hasilnya tidak bisa dipegang.
- **Meminta Reza membuat repo yang ternyata sudah ada**, dan **meminta Reza merge PulReq #1 yang ternyata sudah ia merge** (27 Nov). Cek dulu sebelum meminta.
- **Mengusulkan langkah dari catatan basi** (stempel yang sudah lama didapat).
- **Buku Kas versi 27 Nov pagi** (Kantong/Mutasi/POS Harian/Aturan): sulit dibaca, diisi, dikerjakan bersama, dan dicocokkan. Nama kantong dan jenis terlalu panjang, teks biru di mana-mana (kebiasaan model keuangan, bukan selera Reza), 11–20 kolom per tab, tanpa dasbor. Kata Reza: "sheet yang hanya untuk kamu baca dan tulis".
- **Rancangan v2 pertama (mockup 09.50):**
  - label "Kasir · Laci", "Reza · Dibawa" tidak praktis;
  - "Uangmu di kopdes" terlalu pribadi untuk Sheet yang dibuka karyawan;
  - "Talangan materai · harus kembali" membuat Reza tampak menagih semua orang;
  - fee tukar dihitung sebagai uang Reza di kopdes;
  - foto dijadikan pintu masuk data (antrean).
- **Menganggap Sheet dibuka di HP** karena Reza chat dari HP; dasbor dibuat sempit dan miskin isi (27 Nov). Dasbor dirancang untuk laptop; isian tetap bisa dari HP.
- **Menghapus kantong Kas kopdes** saat menyederhanakan v2; Buku Kas tanpa kas (27 Nov).
- **Menerima keterangan Reza yang bertentangan dengan aturan tercatat tanpa mengingatkan** (27 Nov 10.23: "semua gerai satu transfer per jadwal"; Claude langsung mengubah aturan dan menghapus tab Aturan lama). Reza: ingatkan bila ia keliru, keputusan tetap padanya.
- **Menyebut PulReq tanpa mengecek statusnya** (PulReq #1 dan #2 sudah di-merge saat Claude masih menyuruh Reza memeriksanya).
- **Membuat berkas lalu menghabiskan sedikit pikir dan riset.** Reza membandingkan dengan tracker pribadinya, yang dibangun dari satu prompt dan langsung bagus di iterasi pertama.

- **Merancang dari kepala sendiri tanpa riset rujukan** (format buku kas, praktik tutup kasir dan setoran, aplikasi kas UMKM). Reza: "you dont use any skills or well known reference" (27 Nov 13.09). Riset dulu, sebut rujukannya, baru merancang.
- **Menghitung status di kolom tersembunyi** sehingga "Tepat waktu" tampak diketik. Taruh dasar hitungannya (misalnya batas setor dan tanggal setor) berdampingan, supaya bisa dicek dengan mata.
- **Kembali ke soal layar ponsel**, termasuk memilih setelan "mobile" di alat gambar (27 Nov 13.24). Rancangan Buku Kas untuk laptop; jangan dibahas lagi.

## Belum terbukti
- Kertas dan kode lokasi untuk stok: Reza ragu karyawan mudah memakainya, karena gajinya terbatas. Peta yang dicetak juga sulit diubah dan bisa salah (27 Nov). Pilihan yang ditawarkan: (a) daftar hitung dicetak baru dari Sheet setiap kali menghitung, dengan nama biasa tanpa kode; (b) menghitung langsung di HP; (c) foto Timemark sebagai bukti fisik. Belum diputuskan.
- Kas awal POS diketik kasir setiap shift (selalu Rp10.000), bukan sisa laci kemarin. Akibatnya uang yang tertinggal di laci antar-shift tidak terlihat di POS.
- Laporan Stok POS bisa memilih tanggal lampau.
- "Nilai stok" di POS adalah harga pokok.
- Mesin POS punya versi web yang bisa dibaca lewat browser.
- QRIS statis masuk ke rekening siapa. Gform hanya meminta manajer menyetor tunai ("hanya transfer dengan nominal total tunai"), jadi dugaan sekarang: QRIS dan debit langsung ke Agrinas. Belum dipastikan; foto "QRIS wondr" bisa berarti QRIS tercatat di aplikasi wondr seseorang.
- Hari tanpa penjualan tunai tidak perlu setor.
- Tugas lama di Obsidian diperlakukan sebagai arsip (usulan Claude 26 Nov, belum dikonfirmasi Reza).
