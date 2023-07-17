-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Jan 2022 pada 04.58
-- Versi server: 10.4.20-MariaDB
-- Versi PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `esamsat`
--

DELIMITER $$
--
-- Prosedur
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `ambildataSamkel` ()  BEGIN
 select * from samkel   ;
 
 END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `LubuksikapingNov` ()  BEGIN

select * from samkel    where YEAR(tanggal) = YEAR(NOW()) AND MONTH(tanggal) = MONTH(NOW())  AND kabupaten = 'Pelaksana UPTD Lubuk Sikaping' ;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cara_pembayaran`
--

CREATE TABLE `cara_pembayaran` (
  `id` int(11) NOT NULL,
  `nama_bank` varchar(30) NOT NULL,
  `image` varchar(50) NOT NULL,
  `detail` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `cara_pembayaran`
--

INSERT INTO `cara_pembayaran` (`id`, `nama_bank`, `image`, `detail`) VALUES
(1, 'BANK BRI', 'http://192.168.13.58/Esamsat/logo/bri.jpg', 'a.Setor tunai ke teller Bank BRI\r\nb.Melalui ATM Bank BRI\r\n  1) Masukkan Kartu ATM, Pilih Bahasa Indonesia, dan input PIN Anda\r\n  2) Pilih menu “Lainnya” Pilih menu “Pembayaran/Pembelian”, lalu pilih “Pajak” dan pilih “e-Samsat”\r\n  3) Pilih kode provinsi sesuai kendaraan Anda Masukkan kode wilayah Masukkan Tanda Nomor Kendaraan Bermotor (yang digunakan hanya nomor polisi dan huruf di belakang nomor polisi)\r\n  4) Lakukan konversi atas huruf di belakang nomor polisi kemudian pilih “Lanjutkan”\r\n  5) Input nomor polisi dan digit angka (hasil konversi huruf di belakang nomor polisi), kemudian pilih “Benar”\r\n  6) Lakukan verifikasi data yang tertera pada layar ATM Link Bank BRI dengan data milik nasabah. Apabila sesuai, pilih “Ya”\r\n  7) Pilih jenis rekening “Rekening Rabungan” Proses pembayaran berhasil\r\n  8) Simpan struk sebagai bukti pembayaran.'),
(4, 'BANK NAGARI', 'http://192.168.13.58/Esamsat/logo/banknagari.png', 'a.Setor tunai ke teller Bank Nagari\r\nb.Melalui ATM Bank Nagari\r\n     1) Saat di layar pertama, pilih menu PEMBAYARAN\r\n     2) Pilih menu LANJUT\r\n     3) Pilih menu FASILITAS UMUM (PAJAK, PERUSAHAAN AIR)\r\n     4) Pilih menu PENERIMAAN NEGARA\r\n     5) Pilih Jenis Layanan PENERIMAAN NEGARA\r\n     6) Masukkan Kode Billing yang terdiri dari 15 digit\r\n     7) Pilih Rekening Sumber Dana\r\n     8) Klik OK pada tampilan layar konfirmasi pembayaran.'),
(5, 'BANK MANDIRI', 'http://192.168.13.58/Esamsat/logo/mandiri.png', 'a.Setor tunai ke teller Bank Mandiri\\n\r\nb.Melalui ATM Bank Mandiri\\n\r\n      1) Masukkan kartu ATM pada mesin\\n\r\n      2) Lalu pilih bahasa Indonesia\\n\r\n      3) Masukkan PIN ATM lalu pilih menu “Bayar/Beli” \\n\r\n      4) Pilih Multipayment, pada halaman terakhir menu tersebut\\n\r\n      5) Ketik Kode Perusahaan, yaitu 60110 (Samsat Online Nasional), tekan “Benar”\\n\r\n      6) Isi Nomor Bayar, kemudian tekan “Benar”\\n\r\n      7) Selanjutnya, akan muncul konfirmasi data nasabah\\n\r\n      8) Pilih nomor 1 sesuai tagihan yang akan dibayar, kemudian tekan “Ya”\\n\r\n      9) Akan muncul konfirmasi pembayaran, tekan “Ya” untuk melakukan pembayaran\\n\r\n     10) Simpan bukti pembayaran dalam bentuk struk se'),
(6, 'BANK CIMBNIAGA', 'http://192.168.13.58/Esamsat/logo/cimb.jpg', 'a.Setor tunai ke teller Bank Cimb Niaga\\n\r\nb.Melalui ATM Bank Cimb Niaga\\n\r\n       1) Saat di layar pertama, pilih menu PEMBAYARAN\r\n       2) Pilih menu LANJUT\r\n       3) Pilih menu FASILITAS UMUM (PAJAK, PERUSAHAAN AIR)\r\n       4) Pilih menu PENERIMAAN NEGARA\r\n       5) Pilih Jenis Layanan PENERIMAAN NEGARA\r\n       6) Masukkan Kode Billing yang terdiri dari 15 digit\r\n       7) Pilih Rekening Sumber Dana\r\n       8) Klik OK pada tampilan layar konfirmasi pembayaran.'),
(7, 'BANK BCA', 'http://192.168.13.58/Esamsat/logo/bca.jpg', 'a.Setor tunai ke teller Bank BCA\\n\r\nb.Melalui ATM Bank BCA\\n\r\n          1) Datangi mesin ATM BCA terdekat.\r\n          2) Masukkan kartu ATM dan input PIN.\r\n          3) Pilih menu “Transaksi Lain”.\r\n          4) Kemudian pilih “Pembayaran”.\r\n          5) Pilih “MPN/Pajak” lalu pilih “Penerimaan Pajak”.\r\n          6) Setelah itu, masukkan kode e-Billing yang telah kamu dapatkan sebelumnya.\r\n          7) Nanti akan muncul di layar informasi tentang pajak yang kamu bayarkan.\r\n          8) Jika sudah sesuai bisa pilih “Ya”.'),
(8, 'BANK PERMATA', 'http://192.168.13.58/Esamsat/logo/permatabank.jpg', ' a.Setor tunai ke teller Bank Permata\r\n b.Melalui ATM Bank Permata\r\n          1) Pilih Menu Pembayaran\r\n          2) Pilih Menu Transaksi Lainnya\r\n          3) Pilih Menu Pembayaran Lainnya. Silahkan pilih transaksi Anda.\r\n          4) Pilih Menu Pembayaran Pajak. (Tekan CANCEL jika batal)\r\n          5) Konfirmasi Pembayaran. YA. \r\n          6) Masukan Kode Pembayaran. BENAR. \r\n          7) Pilih Samsat Online Nasional. (Tekan CANCEL jika batal)\r\n          8) Transaksi Selesai.'),
(9, 'BANK BNI', 'http://192.168.13.58/Esamsat/logo/bni.jpg', 'a.Setor tunai ke teller Bank BNI\r\nb.Melalui ATM Bank BNI\r\n        1) Masukkan kartu ATM pada mesin\r\n        2) Lalu ketikkan PIN Anda Pilih menu “Lain”\r\n        3) Lalu pilih menu “Pembayaran”\r\n        4) Pilih menu “Pajak/Penerimaan Negara”, lalu pilih “e-Samsat”\r\n        5) Ketik 4 digit kode institusi Samsat Online Nasional dan kode pembayaran yang telah didapatkan. Kode institusi Samolnas adalah 1500\r\n        6) Setelah tagihan muncul dan sesuai, Anda dapat melakukan pembayaran\r\n        7) Setelah pembayaran berhasil, simpan bukti transaksi Anda.\r\n'),
(10, 'APLIKASI SIGNAL', 'http://192.168.13.58/Esamsat/logo/signal.png', 'SIGNAL adalah samsat digital nasional, sebuah aplikasi untuk memudahkan masyarakat membayar pajak kendaraan bermotor secara aman dan mudah\r\nTutorial Penggunaan \r\nA. Cara Pembayaran Dokumen \r\n  1.Generate Kode Bayar\r\n  2.Pilih Salah Satu Bank\r\n  3.Pilih “Lanjut”\r\n  4.Tampil Cara Pembayaran\r\n  5.Pilih “Lanjut”\r\n  6.Selesai\r\n  Untuk info yang lebih jelas silahkan Kunjungi link berikut : https://www.youtube.com/watch?v=32StHGUPQ_4\r\n\r\nB. Halaman Status Transaksi\r\nTata cara meliha halaman transaksi\r\n   1.Pilih Sedang Diproses\r\nMenampilkan Transaksi yang sedang diproses\r\n   2.Pilih Transaksi\r\nMenampilkan Detail Transaksi yang sedang diproses\r\n   3.Pilih Cek Status Pembayaran\r\nCek pembayaran transaksi pengguna\r\n   4.Pilih Kembali\r\nNotifikasi Pembayaran Berhasil\r\n\r\n   5.Pilih Transaksi\r\nMenampilkan detail transaksi dengan status sudah dibayar\r\n\r\nC.Halaman Status Pengiriman\r\n  1.Pilih Transaksi\r\n  2.Detail Transaksi\r\n  3.Pilih “Lacak”\r\n  4.Pilih “Konfirmasi Penerimaan E-TBPKP”\r\n  5.Daftar Transaksi status Selesai\r\n  6.Survei Kepuasan Pelayanan\r\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `faq`
--

CREATE TABLE `faq` (
  `id` int(11) NOT NULL,
  `parent` varchar(100) NOT NULL,
  `child` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `informasi`
--

CREATE TABLE `informasi` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `image_url` varchar(100) NOT NULL,
  `tgl_posting` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `informasi`
--

INSERT INTO `informasi` (`id`, `title`, `description`, `image_url`, `tgl_posting`) VALUES
(1, 'Berantas Rokok Illegal', 'PEMPROV SUMATERA BARAT BERSAMA BEA CUKAI TELUK BAYUR melakukan gerakan STOP Rokok Ilegal\r\n\r\nCiri-ciri Rokok Ilegal:\r\n\r\n- Rokok pita cukai palsu\r\n- Rokok pita cukai berbeda\r\n- Rokok pita cukai bekas\r\n- Rokok polos tanpa pita cukai\r\n\r\nModus Penipuan:\r\n\r\n- Transfer kerekening pribadi\r\n- Sering disertai ancaman\r\n- Sering memakai foto pegawai bea cukai\r\n\r\n\r\nTerkait hal ini, masyarakat diharapkan tetap waspada terhadap segala bentuk tindakan penipuan\r\n\r\nhttps://www.youtube.com/watch?v=sDm-oyFGFWE&ab_channel=BapendaSumateraBarat', 'http://192.168.13.241/Esamsat/image slider/beacukai.jpg', '2021-11-17 01:48:46'),
(2, 'Pembebasan Denda Pajak Kendaraan Bermotor', 'Sebelumnya perlu kami informasikan bahwa Aplikasi Signal dibangun sebagai pengganti aplikasi Korlantas terdahulu “SAMOLNAS” yang saat ini sudah dinonaktifkan dengan dasar Surat Ketetapan Kakorlantas Nomor : B/3893/VI/YAN.1.2/2021/Korlantas.\r\n\r\nMelalui Aplikasi SIGNAL yang baru saja selesai dikembangkan, saat ini proses Pengesahan STNK (tahunan) dan pembayaran Pajak Kendaraan Bermotor serta SWDKLLJ (khusus kepemilikan pribadi/bukan atas nama badan hukum) dapat dilakukan dengan sangat MUDAH, “di mana saja”, “kapan saja”, “One Stop Service” tanpa harus hadir ke Kantor Samsat atau unit layanan Samsat lainnya (Samling, Gerai, drivethru, dll).â€¨\r\nHal tersebut dapat terwujud karena SIGNAL sudah mempedomani \"Kaidah\" Pengawasan Identifikasi dan Registrasi melalui teknologi “AI” Pengenalan Wajah (Face Recognition) User/pengguna aplikasi yang terhubung dengan Pangkalan Data Dukcapil RI yang akan dibandingkan dengan Pangkalan Data Regident Ranmor (ERI) Nasional Korlantas Polri. Melalui teknologi tersebut maka kesesuaian Identitas Pemilik Kendaraan baik Nama maupun NIK dapat dipertanggung jawabkan.\r\n\r\nKami sampaikan pula bahwa, sistem SIGNAL saat ini juga sudah terhubung dengan 15 (lima belas) Pangkalan Data Pajak Bapenda Provinsi sehingga pengguna dapat langsung mengetahui SKKP (Surat Ketetapan Kewajiban Pembayaran) Pajak yang harus dibayarkan kepada Negara/Pemerintah.\r\nProvinsi yang sudah tersambung Signal antara lain :\r\n\r\n1. Provinsi DKI Jakarta\r\n2. Provinsi Banten\r\n3. Provinsi Jawa Barat\r\n4. Provinsi Jawa Tengah\r\n5. Provinsi Jawa Timur\r\n6. Provinsi Bali\r\n7. Provinsi Sumatera Barat\r\n8. Provinsi Riau\r\n9. Provinsi Kep Riau\r\n10. Provinsi Jambi\r\n11. Provinsi Bengkulu\r\n12. Provinsi Sulawesi Selatan\r\n13. Provinsi Sulawesi Tenggara\r\n14. Provinsi Sulawesi Barat\r\n15. Provinsi NTBâ€¨â€¨\r\n\r\nUntuk memudahkan masyarakat bertransaksi secara Cashless/Non Tunai, metode Pembayaran PKB dan SWDKLLJ melalui aplikasi Signal ke seluruh Bank Daerah yang ada saat ini terhubung melalui Sistem Payment Gateway / Switching dengan beberapa Channel Pembayaran di Semua Bank Himbara (Himpunan Bank Milik Negara/BUMN) antara lain :\r\nBank Mandiri,\r\nBank BRI,\r\nBank BNI\r\nBank BTN\r\nserta 10 Bank Pembangunan Daerah lainnya.\r\n\r\nTidak hanya itu, SIGNALpun sudah menerapkan “One Stop Digital Service” (Pelayanan Daring Penuh), masyarakat yang sudah melaksanakan kewajibannya untuk pendaftaran pengesahan dan pembayaran PKB, SWDKLLJ, TIDAK PERLU LAGI DATANG KEMBALI ke Samsat atau unit Pelayanan samsat lainnya untuk mendapatkan Tanda Bukti Pelunasan Kewajiban Pembayaran (TBPKP) dan Tanda Bukti Pengesahan STNK.\r\n\r\nHal ini dikarenakan Sistem pada Aplikasi SIGNAL secara Otomatis akan menerbitkan DOKUMEN DIGITAL yang VALID dan SAH berupa e-TBPKP (Bukti Lunas Pajak dari Bapenda), e-KD (Polis Asuransi dari Jasa Raharja) dan e-Pengesahan (tanda Digital Pengesahan STNK dari Polri).\r\n\r\nTanda e-Pengesahan STNK Tahunan berupa QR Code Terenkripsi yang dapat dimunculkan atau dilihat pada aplikasi memiliki LEGALITAS HUKUM karena sudah dibubuhkan digital signature / tanda tangan elektronik Pejabat Direktur Lalu Lintas Polda setempat serta dapat dicek validitasnya oleh masyarakat ataupun petugas dilapangan cukup dengan dipindai menggunakan smartphone dan akan muncul otentifikasi dari Pangkalan Data Regident ERI.\r\n\r\nSaat ini aplikasi SIGNAL sudah dapat digunakan untuk Operational dalam rangka UJI COBA kepada masyarakat dengan maksud dan harapan dapat lebih disempurnakan kembali apabila terdapat kekurangan dan kami berharap dapat dimaklumi. Mengingat Sistem Signal yang ada saat ini meaghubungkan sub sistem yang dimiliki oleh berbagai pihak/stake holder.\r\n\r\nSIGNAL sudah bisa unduh melalui google Playstore pd platform android ( platform IOS/apple dalam tahap pengembangan) dengan kata kunci : “ SAMSAT DIGITAL NASIONAL” atau cukup melalui link/tautan ini https://play.google.com/store/apps/details?id=app.signal.id\r\n\r\nLalu ikuti pedoman penggunaan aplikasi seperti tutorial berikut dibawah ini..â€¨â€¨Selamat Menggunakan,Semoga Bisa membantu dan bermanfaat khususnya pada saat Era Pandemi Covid 19 dan PPKM Darurat yang sedang diterapkan oleh pemerintah.\r\n\r\nberikut ini contoh penggunaan aplikasi Samsat Digital Nasioal (SIGNAL)', 'http://192.168.13.241/Esamsat/image slider/denda.jpg', '2021-11-17 01:48:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kabupaten/kota`
--

CREATE TABLE `kabupaten/kota` (
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kabupaten/kota`
--

INSERT INTO `kabupaten/kota` (`nama`) VALUES
('Kabupaten Agam'),
('Kota Padang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `layanan_samsat`
--

CREATE TABLE `layanan_samsat` (
  `id` int(11) NOT NULL,
  `nama_layanan` varchar(50) NOT NULL,
  `url_file` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `layanan_samsat`
--

INSERT INTO `layanan_samsat` (`id`, `nama_layanan`, `url_file`) VALUES
(1, 'Samsat Keliling', 'http://192.168.43.225/Esamsat/layananSamsat/ANDROI'),
(2, 'Samsat Anywhere', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lokasi`
--

CREATE TABLE `lokasi` (
  `id` int(11) NOT NULL,
  `lat` double NOT NULL,
  `lng` double NOT NULL,
  `nama` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `lokasi`
--

INSERT INTO `lokasi` (`id`, `lat`, `lng`, `nama`) VALUES
(1, -0.9186963444057559, 100.36032602188646, 'Kantor Badan Pendapatan Daerah Provinsi Sumatera Barat'),
(2, -0.9281877383438614, 100.35522214047812, 'UPTD SAMSAT PADANG'),
(3, -0.9500411426452962, 100.35586989880683, 'GERAI SAMSAT PLAZA ANDALAS'),
(4, -0.26425733920205746, 100.35652703319022, 'UPTD SAMSAT BUKITINGGI'),
(5, -0.3051302842497203, 100.36860861044674, 'GERAI SAMSAT BUKITINGGI'),
(6, -0.47476115516911566, 100.62472946431001, 'UPTD SAMSAT BATUSANGKAR'),
(7, -0.9768699081145312, 101.54169642125427, 'UPTD SAMSAT PULAU PUNJUNG'),
(8, -0.14609738560942204, 100.6721250698873, 'UPTD SAMSAT SARILAMAK'),
(9, -0.9508342864504051, 100.60860556465741, 'UPTD SAMSAT AROSUKA'),
(10, -0.6263703364357758, 100.1625216490702, 'UPTD SAMSAT PARIAMAN'),
(11, -0.6137090559112602, 100.11618037916416, 'UPTD SAMSAT KOTA PARIAMAN'),
(12, -0.756125971544064, 100.65887797026075, 'UPTD SAMSAT SOLOK'),
(13, -0.3124201462143175, 100.0229544191956, 'UPTD SAMSAT LUBUK BASUNG'),
(14, 0.13853133360648184, 100.16599125462385, 'UPTD SAMSAT LUBUK SIKAPING'),
(15, -0.45458677271068504, 100.4003378377245, 'UPTD SAMSAT PADANG PANJANG'),
(16, -1.3057465787034315, 100.54902008300934, 'UPTD SAMSAT PAINAN'),
(17, 0.10724046961034482, 99.8279528720057, 'UPTD SAMSAT SIMPANG EMPAT'),
(18, -0.2209987547659318, 100.65910802608185, 'UPTD SAMSAT PAYAKUMBUH'),
(19, -0.6572679400132208, 100.75464892579109, 'UPTD SAMSAT SAWAHLUNTO'),
(20, -0.6587935598620186, 100.93278543805978, 'UPTD SAMSAT SIJUNJUNG'),
(21, -0.9583843594189387, 100.60902915519368, 'UPTD SAMSAT PADANG ARO'),
(22, -1.8843733745873583, 100.87590694012212, 'KANTOR SAMSAT NAGARI LINGGO SARI BAGANTI'),
(23, -1.0701901677867884, 101.67986249880731, 'SAMSAT NAGARI SIALANG GAUNG'),
(24, -1.4692766409198053, 101.03357799695907, 'SAMSAT NAGARI PASIR TALANG BARAT'),
(25, -1.070061444211708, 101.67979812579289, 'SAMSAT NAGARI KOTO BARU'),
(26, -0.8018896257938044, 100.31637613963905, 'GERAI SAMSAT CHIP'),
(27, 0.4406849696913971, 100.0485849257871, 'SAMSAT NAGARI BAHAGIA PADANG GELAGUR'),
(28, -0.2995554112356345, 100.36619706811817, 'DRIVE THRU BUKITTINGGI'),
(29, -0.03935039663998713, 100.50922063319462, 'SAMSAT NAGARI LIMBANANG'),
(30, -0.24235235903808333, 100.61027203487693, 'DRIVE THRU PAYAKUMBUH'),
(31, 0.2816328494731909, 99.34491460727789, 'SAMSAT NAGARI AIR BANGIS');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengaduan`
--

CREATE TABLE `pengaduan` (
  `id` int(11) NOT NULL,
  `plat_nomor` varchar(30) NOT NULL,
  `nama_pemilik` varchar(50) NOT NULL,
  `uptd_transaksi` varchar(20) NOT NULL,
  `paymentpoint` varchar(50) NOT NULL,
  `tanggal_transaksi` date NOT NULL,
  `email/nohp` varchar(20) NOT NULL,
  `kategori` varchar(30) NOT NULL,
  `keluhan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `peraturan`
--

CREATE TABLE `peraturan` (
  `id` int(11) NOT NULL,
  `nama_peraturan` varchar(256) NOT NULL,
  `url_file` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `peraturan`
--

INSERT INTO `peraturan` (`id`, `nama_peraturan`, `url_file`) VALUES
(1, 'Peraturan Pajak No 9 tahun 2020', ''),
(2, 'UU RI NOMOR 14 TAHUN 2008 ', ''),
(3, 'PERMEN DAGRI REPUBLIK INDONESIA NOMOR 5 TAHUN 2018', ''),
(4, 'PERATURAN MENTERI DALAM NEGERI REPUBLIK INDONESIA NOMOR 1 TAHUN 2021', ''),
(5, 'UU REPUBLIK INDONESIA No.22 TAHUN 2009 TENTANG LALU LINTAS DAN ANGKUTAN JALAN', ''),
(6, 'PERPRES RI No.5 TAHUN 2015 TENTANG PENYELENGGARAAN SISTEM ADMINISTRASI MANUNGGAL SATU ATAP KENDARAAN BERMOTOR', ''),
(7, 'PERATURAN DAERAH PROVINSI SUMBAR NO.1 TAHUN 2021 TENTANG ANGGARAN PENDAPATAN DAN BELANJA DAERAH\r\n', ''),
(8, 'PERATURAN PEMERINTAH REPUBLIK INDONESIA NOMOR 58 TAHUN 2005 TENTANG PENGELOLAAN KEUANGAN DAERAH', ''),
(9, 'PERATURAN PEMERINTAH REPUBLIK INDONESIA NOMOR 50 TAHUN 2010', ''),
(10, 'PERATURAN PEMERINTAHAN REPUBLIK INDONESIA NOMOR 60 TAHUN 2016', ''),
(11, 'PERATURAN PEMERINTAH REPUBLIK INDONESIA NOMOR 22 TAHUN 2014 ', ''),
(12, 'UNDANG-UNDANG REPUBLIK INDONESIA NOMOR 22 TAHUN 2009 TENTANG LALU LINTAS DAN ANGKUTAN JALAN\"\r\n ', ''),
(13, 'UNDANG-UNDANG REPUBLIK INDONESIA NOMOR 28 TAHUN 2009 TENTANG PAJAK DAERAH DAN RETRIBUSI DAERAH\r\n      ', ''),
(14, 'UNDANG-UNDANG REPUBLIK INDONESIA NOMOR 17 TAHUN 2003 TENTANG KEUANGAN NEGARA', ''),
(15, 'UNDANG-UNDANG REPUBLIK INDONESIA NOMOR 33 TAHUN 2004 TENTANG PERIMBANGAN KEUANGAN ANTARA PEMERINTAH PUSAT DAN PEMERINTAHAN DAERAH', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `periode`
--

CREATE TABLE `periode` (
  `id` int(11) NOT NULL,
  `bulan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `periode`
--

INSERT INTO `periode` (`id`, `bulan`) VALUES
(1, 'Januari'),
(2, 'Februari'),
(3, 'Maret'),
(4, 'April'),
(5, 'Mei'),
(6, 'Juni'),
(7, 'Juli'),
(8, 'Agustus'),
(9, 'September'),
(10, 'Oktober'),
(11, 'November'),
(12, 'Desember');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sadarpajak`
--

CREATE TABLE `sadarpajak` (
  `id` int(11) NOT NULL,
  `keterangan` varchar(30) NOT NULL,
  `jumlah` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `sadarpajak`
--

INSERT INTO `sadarpajak` (`id`, `keterangan`, `jumlah`) VALUES
(1, 'Sudah Bayar Pajak', '761019'),
(2, 'Belum Bayar  Pajak', '253673');

-- --------------------------------------------------------

--
-- Struktur dari tabel `samkel`
--

CREATE TABLE `samkel` (
  `id_samkel` int(11) NOT NULL,
  `nama_uptd` varchar(100) NOT NULL,
  `kecamatan` varchar(50) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `jadwal` varchar(50) NOT NULL,
  `lokasi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `samkel`
--

INSERT INTO `samkel` (`id_samkel`, `nama_uptd`, `kecamatan`, `tanggal`, `jadwal`, `lokasi`) VALUES
(0, 'UPTD SAMSAT BUKITTINGGI', 'BASO, KAB. AGAM', '2021-03-08', '08:30:00 s/d 13:00:00', 'PASAR BASO'),
(1, 'UPTD SAMSAT PADANG', 'BUNGUS TELUK KABUNG', '2021-10-24', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT BUNGUS TELUK KABUNG'),
(2, 'UPTD SAMSAT PADANG', 'Koto Tangah', '2021-10-06', '08:30:00 s/d 13:00:00', 'Simpang Kalumpang Lubuk Buaya'),
(3, 'UPTD SAMSAT PADANG', 'Kuranji', '2021-10-27', '08:30:00 s/d 13:00:00', 'Cafe UJ BP Kuranji'),
(5, 'UPTD  SAMSAT  PAYAKUMBUH', 'Lareh Sago Halaban', '2021-10-06', '08:30:00 s/d 13:00:00', 'Kantor Camat Lareh Sago Halaban'),
(6, 'UPTD  SAMSAT SAWAHLUNTO', 'Lembah Segar ', '2021-10-06', '08:30:00 s/d 13:00:00', 'Pos Polisi Terminal Kota Sawah Lunto'),
(7, 'UPTD SAMSAT KOTA PARIAMAN', 'Pariaman Tengah', '2021-10-06', '08:30:00 s/d 13:00:00', 'Lapangan Merdeka'),
(8, 'UPTD  SAMSAT LUBUK SIKAPING', 'Rao Selatan', '2021-10-06', '08:30:00 s/d 13:00:00', 'Pasar Lansek Kodok'),
(9, 'UPTD SAMSAT PADANG', 'Padang Selatan', '2021-10-07', '08:30:00 s/d 13:00:00', 'Simpang PU PSDA'),
(10, 'UPTD SAMSAT KOTA PARIAMAN', 'Pariaman Utara', '2021-10-07', '08:30:00 s/d 13:00:00', 'Jl. Prof. Dr. Hamka Desa Padang Birik-Birik'),
(11, 'UPTD SAMSAT PADANG', 'Padang Timur', '2021-10-08', '08:30:00 s/d 13:00:00', 'Simpang Ganting'),
(12, 'UPTD SAMSAT PADANG', 'LUBUK BEGALUNG', '2021-10-28', '08:30:00 s/d 13:00:00', 'PO. FAMILY RAYA CENGKEH'),
(13, 'UPTD SAMSAT PADANG', 'LUBUK BEGALUNG', '2021-10-11', '08:30:00 s/d 13:00:00', 'PONDOK IKAN BAKAR ARU'),
(14, 'UPTD SAMSAT PADANG', 'LUBUK KILANGAN', '2021-10-21', '08:30:00 s/d 13:00:00', 'PORTAL INDARUNG'),
(15, 'UPTD SAMSAT PADANG', 'Nanggalo', '2021-10-12', '08:30:00 s/d 13:00:00', 'Jembatan Siteba'),
(16, 'UPTD SAMSAT PADANG', 'Padang Barat', '2021-10-25', '08:30:00 s/d 13:00:00', 'JL. PATIMURA'),
(17, 'UPTD SAMSAT PADANG', 'PADANG SELATAN', '2021-10-18', '08:30:00 s/d 13:00:00', 'IMAM BONJOL'),
(18, 'UPTD SAMSAT PADANG', 'PADANG SELATAN', '2021-10-29', '08:30:00 s/d 13:00:00', 'IMAM BONJOL'),
(19, 'UPTD SAMSAT PADANG', 'Padang Selatan', '2021-10-26', '08:30:00 s/d 13:00:00', 'Pondok'),
(20, 'UPTD SAMSAT PADANG', 'Padang Selatan', '2021-10-15', '08:30:00 s/d 13:00:00', 'Simpang Ganting'),
(21, 'UPTD SAMSAT PADANG', 'Padang Timur', '2021-10-14', '08:30:00 s/d 13:00:00', 'Tugu Simpang Haru'),
(22, 'UPTD SAMSAT PADANG', 'Padang Timur', '2021-10-22', '08:30:00 s/d 13:00:00', 'Tugu Simpang Haru'),
(23, 'UPTD SAMSAT PADANG', 'PAUH', '2021-10-13', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT PAUH'),
(25, 'UPTD SAMSAT BUKITTINGGI', 'Banuhampu', '2021-10-13', '08:30:00 s/d 13:00:00', 'Padang Lua'),
(26, 'UPTD SAMSAT BUKITTINGGI', 'Baso', '2021-10-11', '08:30:00 s/d 13:00:00', 'Pasar Baso'),
(27, 'UPTD SAMSAT BUKITTINGGI', 'Tilantang Kamang', '2021-10-11', '08:30:00 s/d 13:00:00', 'Pasar Pakan Kamih'),
(28, 'UPTD SAMSAT BUKITTINGGI', 'Ampek Angkek', '2021-11-09', '08:30:00 s/d 13:00:00', 'Simpang Tanjung Alam'),
(29, 'UPTD SAMSAT BUKITTINGGI', 'Banuhampu', '2021-12-10', '08:30:00 s/d 13:00:00', 'Padang Lua'),
(30, 'UPTD SAMSAT BUKITTINGGI', 'Banuhampu', '2021-12-01', '08:30:00 s/d 13:00:00', 'Padang Lua'),
(32, 'UPTD SAMSAT BUKITTINGGI', 'Baso', '2021-12-13', '08:30:00 s/d 13:00:00', 'Pasar Baso'),
(33, 'UPTD SAMSAT BUKITTINGGI', 'Tilantang Kamang', '2021-11-11', '08:30:00 s/d 13:00:00', 'Pasar Pakan Kamih'),
(34, 'UPTD SAMSAT BUKITTINGGI', 'Tilantang Kamang', '2021-12-09', '08:30:00 s/d 13:00:00', 'Pasar Pakan Kamih'),
(37, 'UPTD SAMSAT BATUSANGKAR', 'LINTAU BUO UTARA', '2021-11-04', '08:30:00 s/d 13:00:00', 'CAFE SARI ANDA ( DI SAMPING BANK BRI ) PASAR BALAI'),
(38, 'UPTD SAMSAT BATUSANGKAR', 'LINTAU BUO UTARA', '2021-11-18', '08:30:00 s/d 13:00:00', 'CAFE SARI ANDA ( DI SAMPING BANK BRI ) PASAR BALAI'),
(39, 'UPTD SAMSAT BATUSANGKAR', 'LINTAU BUO UTARA', '2021-12-02', '08:30:00 s/d 13:00:00', 'CAFE SARI ANDA ( DI SAMPING BANK BRI ) PASAR BALAI'),
(40, 'UPTD SAMSAT BATUSANGKAR', 'Lintau Buo Utara', '2021-12-09', '08:30:00 s/d 13:00:00', 'CAFE SARI ANDA ( DI SAMPING BANK BRI ) PASAR BALAI'),
(41, 'UPTD SAMSAT BATUSANGKAR', 'LINTAU BUO ', '2021-10-20', '08:30:00 s/d 13:00:00', 'Kantor Wali Nagari Pangian'),
(42, 'UPTD SAMSAT BATUSANGKAR', 'LINTAU BUO ', '2021-11-03', '08:30:00 s/d 13:00:00', 'Kantor Wali Nagari Pangian'),
(43, 'UPTD SAMSAT BATUSANGKAR', 'LINTAU BUO ', '2021-11-17', '08:30:00 s/d 13:00:00', 'Kantor Wali Nagari Pangian'),
(44, 'UPTD SAMSAT BATUSANGKAR', 'LINTAU BUO ', '2021-12-01', '08:30:00 s/d 13:00:00', 'Kantor Wali Nagari Pangian'),
(45, 'UPTD SAMSAT BATUSANGKAR', 'Lintau Buo', '2021-12-08', '08:30:00 s/d 13:00:00', 'Kantor Wali Nagari Pangian'),
(47, 'UPTD SAMSAT BATUSANGKAR', 'PARIANGAN', '2021-11-15', '08:30:00 s/d 13:00:00', 'Kantor Camat Pariangan'),
(48, 'UPTD SAMSAT BATUSANGKAR', 'PARIANGAN', '2021-12-13', '08:30:00 s/d 13:00:00', 'Kantor Camat Pariangan'),
(49, 'UPTD SAMSAT BATUSANGKAR', 'SALIMPAUNG', '2021-10-04', '08:30:00 s/d 13:00:00', 'Kantor Camat Salimpaung'),
(50, 'UPTD SAMSAT BATUSANGKAR', 'SALIMPAUNG', '2021-11-01', '08:30:00 s/d 13:00:00', 'Kantor Camat Salimpaung'),
(51, 'UPTD SAMSAT BATUSANGKAR', 'SALIMPAUNG', '2021-12-06', '08:30:00 s/d 13:00:00', 'Kantor Camat Salimpaung'),
(52, 'UPTD SAMSAT PULAU PUNJUNG', 'Koto Baru', '2021-10-13', '08:30:00 s/d 13:00:00', 'SIMPANG EMPAT LAMPU MERAH PASAR KOTO BARU'),
(53, 'UPTD SAMSAT PULAU PUNJUNG', 'Koto Baru', '2021-11-10', '08:30:00 s/d 13:00:00', 'SIMPANG EMPAT LAMPU MERAH PASAR KOTO BARU'),
(54, 'UPTD SAMSAT PULAU PUNJUNG', 'Koto Baru', '2021-12-08', '08:30:00 s/d 13:00:00', 'SIMPANG EMPAT LAMPU MERAH PASAR KOTO BARU'),
(55, 'UPTD SAMSAT PULAU PUNJUNG', 'Koto Besar', '2021-10-09', '08:30:00 s/d 13:00:00', 'PASAR BLOK B SITIUNG IV'),
(56, 'UPTD SAMSAT PULAU PUNJUNG', 'Koto Besar', '2021-11-06', '08:30:00 s/d 13:00:00', 'PASAR BLOK B SITIUNG IV'),
(57, 'UPTD SAMSAT PULAU PUNJUNG', 'Koto Besar', '2021-12-04', '08:30:00 s/d 13:00:00', 'PASAR BLOK B SITIUNG IV'),
(58, 'UPTD SAMSAT PULAU PUNJUNG', 'Koto Salak', '2021-10-12', '08:30:00 s/d 13:00:00', 'Pasar Ampalu'),
(59, 'UPTD SAMSAT PULAU PUNJUNG', 'Koto Salak', '2021-11-09', '08:30:00 s/d 13:00:00', 'Pasar Ampalu'),
(60, 'UPTD SAMSAT PULAU PUNJUNG', 'Koto Salak', '2021-12-07', '08:30:00 s/d 13:00:00', 'Pasar Ampalu'),
(61, 'UPTD SAMSAT PULAU PUNJUNG', 'Sitiung', '2021-10-07', '08:30:00 s/d 13:00:00', 'DEPAN KANTOR WALI NAGARI SUNGAI DUO'),
(62, 'UPTD SAMSAT PULAU PUNJUNG', 'Sitiung', '2021-11-04', '08:30:00 s/d 13:00:00', 'DEPAN KANTOR WALI NAGARI SUNGAI DUO'),
(63, 'UPTD SAMSAT PULAU PUNJUNG', 'Sitiung', '2021-12-09', '08:30:00 s/d 13:00:00', 'DEPAN KANTOR WALI NAGARI SUNGAI DUO'),
(64, 'UPTD SAMSAT PULAU PUNJUNG', 'Sungai Rumbai', '2021-10-08', '08:30:00 s/d 13:00:00', 'DEPAN ROEMBAI PLAZA PASAR SUNGAI RUMBAI'),
(66, 'UPTD SAMSAT PULAU PUNJUNG', 'Sitiung', '2021-12-09', '08:30:00 s/d 13:00:00', 'DEPAN KANTOR WALI NAGARI SUNGAI DUO'),
(67, 'UPTD SAMSAT PULAU PUNJUNG', 'Timpeh', '2021-10-15', '08:30:00 s/d 13:00:00', 'PASAR PINANG MAKMUR NAGARI TABEK'),
(68, 'UPTD SAMSAT PULAU PUNJUNG', 'Timpeh', '2021-11-12', '08:30:00 s/d 13:00:00', 'PASAR PINANG MAKMUR NAGARI TABEK'),
(69, 'UPTD SAMSAT PULAU PUNJUNG', 'Timpeh', '2021-12-10', '08:30:00 s/d 13:00:00', 'PASAR PINANG MAKMUR NAGARI TABEK'),
(70, 'UPTD SAMSAT SARILAMAK', 'BUKIK BARISAN, KAB. LIMA PULUH KOTA', '2021-10-21', '08:30:00 s/d 13:00:00', 'PASAR RONAH'),
(71, 'UPTD SAMSAT SARILAMAK', 'BUKIK BARISAN, KAB. LIMA PULUH KOTA', '2021-11-18', '08:30:00 s/d 13:00:00', 'PASAR RONAH'),
(72, 'UPTD SAMSAT SARILAMAK', 'BUKIK BARISAN, KAB. LIMA PULUH KOTA', '2021-12-02', '08:30:00 s/d 13:00:00', 'PASAR RONAH'),
(73, 'UPTD SAMSAT SARILAMAK', 'KAPUR IX, KAB. LIMA PULUH KOTA', '2021-10-14', '08:30:00 s/d 13:00:00', 'PASAR MUARO PAITI'),
(74, 'UPTD SAMSAT SARILAMAK', 'KAPUR IX, KAB. LIMA PULUH KOTA', '2021-11-11', '08:30:00 s/d 13:00:00', 'PASAR MUARO PAITI'),
(75, 'UPTD SAMSAT SARILAMAK', 'KAPUR IX, KAB. LIMA PULUH KOTA', '2021-12-09', '08:30:00 s/d 13:00:00', 'PASAR MUARO PAITI'),
(76, 'UPTD SAMSAT SARILAMAK', 'MUNGKA, KAB. LIMA PULUH KOTA', '2021-10-26', '08:30:00 s/d 13:00:00', 'PASAR MUNGKA'),
(77, 'UPTD SAMSAT SARILAMAK', 'MUNGKA, KAB. LIMA PULUH KOTA', '2021-11-09', '08:30:00 s/d 13:00:00', 'PASAR MUNGKA'),
(78, 'UPTD SAMSAT SARILAMAK', 'MUNGKA, KAB. LIMA PULUH KOTA', '2021-12-07', '08:30:00 s/d 13:00:00', 'PASAR MUNGKA'),
(79, 'UPTD SAMSAT SARILAMAK', 'PANGKALAN KOTO BARU, KAB. LIMA PULUH KOTA', '2021-10-12', '08:30:00 s/d 13:00:00', 'DEPAN KANTOR CAMAT PANGKALAN'),
(80, 'UPTD SAMSAT SARILAMAK', 'PANGKALAN KOTO BARU, KAB. LIMA PULUH KOTA', '2021-11-16', '08:30:00 s/d 13:00:00', 'DEPAN KANTOR CAMAT PANGKALAN'),
(81, 'UPTD SAMSAT SARILAMAK', 'PANGKALAN KOTO BARU, KAB. LIMA PULUH KOTA', '2021-12-14', '08:30:00 s/d 13:00:00', 'DEPAN KANTOR CAMAT PANGKALAN'),
(82, 'UPTD SAMSAT AROSUKA', 'LEMBAH GUMANTI, KAB. SOLOK', '2021-10-04', '08:30:00 s/d 13:00:00', 'TERMINAL ALAHAN PANJANG'),
(83, 'UPTD SAMSAT AROSUKA', 'LEMBAH GUMANTI, KAB. SOLOK', '2021-10-07', '08:30:00 s/d 13:00:00', 'TERMINAL ALAHAN PANJANG'),
(84, 'UPTD SAMSAT AROSUKA', 'LEMBAH GUMANTI, KAB. SOLOK', '2021-10-11', '08:30:00 s/d 13:00:00', 'TERMINAL ALAHAN PANJANG'),
(85, 'UPTD SAMSAT AROSUKA', 'LEMBAH GUMANTI, KAB. SOLOK', '2021-10-14', '08:30:00 s/d 13:00:00', 'TERMINAL ALAHAN PANJANG'),
(86, 'UPTD SAMSAT AROSUKA', 'LEMBAH GUMANTI, KAB. SOLOK', '2021-10-21', '08:30:00 s/d 13:00:00', 'TERMINAL ALAHAN PANJANG'),
(87, 'UPTD SAMSAT AROSUKA', 'LEMBAH GUMANTI, KAB. SOLOK', '2021-11-04', '08:30:00 s/d 13:00:00', 'TERMINAL ALAHAN PANJANG'),
(88, 'UPTD SAMSAT AROSUKA', 'LEMBAH GUMANTI, KAB. SOLOK', '2021-11-08', '08:30:00 s/d 13:00:00', 'TERMINAL ALAHAN PANJANG'),
(89, 'UPTD SAMSAT AROSUKA', 'LEMBAH GUMANTI, KAB. SOLOK', '2021-11-11', '08:30:00 s/d 13:00:00', 'TERMINAL ALAHAN PANJANG'),
(90, 'UPTD SAMSAT AROSUKA', 'LEMBAH GUMANTI, KAB. SOLOK', '2021-11-15', '08:30:00 s/d 13:00:00', 'TERMINAL ALAHAN PANJANG'),
(91, 'UPTD SAMSAT AROSUKA', 'LEMBAH GUMANTI, KAB. SOLOK', '2021-11-18', '08:30:00 s/d 13:00:00', 'TERMINAL ALAHAN PANJANG'),
(92, 'UPTD SAMSAT AROSUKA', 'LEMBAH GUMANTI, KAB. SOLOK', '2021-12-02', '08:30:00 s/d 13:00:00', 'TERMINAL ALAHAN PANJANG'),
(93, 'UPTD SAMSAT AROSUKA', 'LEMBAH GUMANTI, KAB. SOLOK', '2021-12-06', '08:30:00 s/d 13:00:00', 'TERMINAL ALAHAN PANJANG'),
(94, 'UPTD SAMSAT AROSUKA', 'LEMBAH GUMANTI, KAB. SOLOK', '2021-12-09', '08:30:00 s/d 13:00:00', 'TERMINAL ALAHAN PANJANG'),
(95, 'UPTD SAMSAT AROSUKA', 'LEMBAH GUMANTI, KAB. SOLOK', '2021-12-13', '08:30:00 s/d 13:00:00', 'TERMINAL ALAHAN PANJANG'),
(96, 'UPTD SAMSAT AROSUKA', 'LEMBAH GUMANTI, KAB. SOLOK', '2021-12-16', '08:30:00 s/d 13:00:00', 'TERMINAL ALAHAN PANJANG'),
(97, 'UPTD SAMSAT PARIAMAN', '2 X 11 KAYU TANAM', '2021-10-20', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT KAYU TANAM'),
(98, 'UPTD SAMSAT PARIAMAN', '2 X 11 KAYU TANAM', '2021-11-17', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT KAYU TANAM'),
(99, 'UPTD SAMSAT PARIAMAN', '2 X 11 KAYU TANAM', '2021-12-15', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT KAYU TANAM'),
(106, 'UPTD SAMSAT PARIAMAN', 'BATANG ANAI', '2021-10-12', '08:30:00 s/d 13:00:00', 'DEPAN TUGU PERJUANGAN PASAR USANG'),
(107, 'UPTD SAMSAT PARIAMAN', 'BATANG ANAI', '2021-11-01', '08:30:00 s/d 13:00:00', 'DEPAN TUGU PERJUANGAN PASAR USANG'),
(108, 'UPTD SAMSAT PARIAMAN', 'BATANG ANAI', '2021-12-03', '08:30:00 s/d 13:00:00', 'DEPAN TUGU PERJUANGAN PASAR USANG'),
(109, 'UPTD SAMSAT PARIAMAN', 'LUBUK ALUNG', '2021-10-05', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT LUBUK ALUNG'),
(110, 'UPTD SAMSAT PARIAMAN', 'LUBUK ALUNG', '2021-10-26', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT LUBUK ALUNG'),
(111, 'UPTD SAMSAT PARIAMAN', 'LUBUK ALUNG', '2021-11-02', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT LUBUK ALUNG'),
(112, 'UPTD SAMSAT PARIAMAN', 'LUBUK ALUNG', '2021-11-23', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT LUBUK ALUNG'),
(113, 'UPTD SAMSAT PARIAMAN', 'LUBUK ALUNG', '2021-12-07', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT LUBUK ALUNG'),
(114, 'UPTD SAMSAT PARIAMAN', 'LUBUK ALUNG', '2021-12-14', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT LUBUK ALUNG'),
(115, 'UPTD SAMSAT PARIAMAN', 'PATAMUAN', '2021-10-21', '08:30:00 s/d 13:00:00', 'SIMPANG TIGA BALAI TANDIKEK'),
(116, 'UPTD SAMSAT PARIAMAN', 'PATAMUAN', '2021-11-18', '08:30:00 s/d 13:00:00', 'SIMPANG TIGA BALAI TANDIKEK'),
(117, 'UPTD SAMSAT PARIAMAN', 'PATAMUAN', '2021-12-16', '08:30:00 s/d 13:00:00', 'SIMPANG TIGA BALAI TANDIKEK'),
(118, 'UPTD SAMSAT PARIAMAN', 'ULAKAN TAPAKIS', '2021-10-22', '08:30:00 s/d 13:00:00', 'PASAR KAMPUNG GELAPUNG'),
(119, 'UPTD SAMSAT PARIAMAN', 'ULAKAN TAPAKIS', '2021-11-09', '08:30:00 s/d 13:00:00', 'PASAR KAMPUNG GELAPUNG'),
(120, 'UPTD SAMSAT PARIAMAN', 'ULAKAN TAPAKIS', '2021-12-10', '08:30:00 s/d 13:00:00', 'PASAR KAMPUNG GELAPUNG'),
(121, 'UPTD SAMSAT KOTA PARIAMAN', 'IV KOTO AUR MALINTANG', '2021-10-13', '08:30:00 s/d 13:00:00', 'SIMPANG TIGA BATU BASA'),
(122, 'UPTD SAMSAT KOTA PARIAMAN', 'IV KOTO AUR MALINTANG', '2021-11-10', '08:30:00 s/d 13:00:00', 'SIMPANG TIGA BATU BASA'),
(123, 'UPTD SAMSAT KOTA PARIAMAN', 'IV KOTO AUR MALINTANG', '2021-12-08', '08:30:00 s/d 13:00:00', 'SIMPANG TIGA BATU BASA'),
(124, 'UPTD SAMSAT KOTA PARIAMAN', 'PARIAMAN SELATAN', '2021-10-11', '08:30:00 s/d 13:00:00', '	PASAR BALAI KURAI TAJI'),
(125, 'UPTD SAMSAT KOTA PARIAMAN', 'PARIAMAN SELATAN', '2021-11-15', '08:30:00 s/d 13:00:00', 'PASAR BALAI KURAI TAJI'),
(126, 'UPTD SAMSAT KOTA PARIAMAN', 'PARIAMAN SELATAN', '2021-12-13', '08:30:00 s/d 13:00:00', 'PASAR BALAI KURAI TAJI'),
(127, 'UPTD SAMSAT KOTA PARIAMAN', 'PARIAMAN TENGAH', '2021-10-06', '08:30:00 s/d 13:00:00', 'LAPANGAN MERDEKA'),
(128, 'UPTD SAMSAT KOTA PARIAMAN', 'PARIAMAN TENGAH', '2021-11-03', '08:30:00 s/d 13:00:00', 'LAPANGAN MERDEKA'),
(129, 'UPTD SAMSAT KOTA PARIAMAN', 'PARIAMAN TENGAH', '2021-02-11', '08:30:00 s/d 13:00:00', 'LAPANGAN MERDEKA'),
(130, 'UPTD SAMSAT KOTA PARIAMAN', 'PARIAMAN TENGAH', '2021-02-11', '08:30:00 s/d 13:00:00', 'LAPANGAN MERDEKA'),
(131, 'UPTD SAMSAT KOTA PARIAMAN', 'SUNGAI GERINGGING', '2021-10-04', '08:30:00 s/d 13:00:00', 'SIMPANG TUGU PASAR SEI GERINGGING'),
(132, 'UPTD SAMSAT KOTA PARIAMAN', 'SUNGAI GERINGGING', '2021-11-08', '08:30:00 s/d 13:00:00', 'SIMPANG TUGU PASAR SEI GERINGGING'),
(133, 'UPTD SAMSAT KOTA PARIAMAN', 'SUNGAI GERINGGING', '2021-12-06', '08:30:00 s/d 13:00:00', 'SIMPANG TUGU PASAR SEI GERINGGING'),
(134, 'UPTD SAMSAT KOTA PARIAMAN', 'SUNGAI LIMAU ', '2021-10-07', '08:30:00 s/d 13:00:00', 'TERMINAL PASAR SEI LIMAU'),
(135, 'UPTD SAMSAT KOTA PARIAMAN', 'SUNGAI LIMAU ', '2021-11-04', '08:30:00 s/d 13:00:00', 'TERMINAL PASAR SEI LIMAU'),
(136, 'UPTD SAMSAT KOTA PARIAMAN', 'SUNGAI LIMAU ', '2021-02-02', '08:30:00 s/d 13:00:00', 'TERMINAL PASAR SEI LIMAU'),
(137, 'UPTD SAMSAT KOTA PARIAMAN', 'V KOTO KAMPUNG DALAM', '2021-10-14', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT KAMPUNG DALAM'),
(138, 'UPTD SAMSAT KOTA PARIAMAN', 'V KOTO KAMPUNG DALAM', '2021-11-11', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT KAMPUNG DALAM'),
(139, 'UPTD SAMSAT KOTA PARIAMAN', 'V KOTO KAMPUNG DALAM', '2021-12-09', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT KAMPUNG DALAM'),
(140, 'UPTD SAMSAT SOLOK', 'BUKIT SUNDI', '2021-10-04', '08:30:00 s/d 13:00:00', 'PASAR MUARA PANAS'),
(141, 'UPTD SAMSAT SOLOK', 'BUKIT SUNDI', '2021-10-18', '08:30:00 s/d 13:00:00', 'PASAR MUARA PANAS'),
(142, 'UPTD SAMSAT SOLOK', 'BUKIT SUNDI', '2021-11-01', '08:30:00 s/d 13:00:00', 'PASAR MUARA PANAS'),
(143, 'UPTD SAMSAT SOLOK', 'BUKIT SUNDI', '2021-11-15', '08:30:00 s/d 13:00:00', 'PASAR MUARA PANAS'),
(144, 'UPTD SAMSAT SOLOK', 'BUKIT SUNDI', '2021-12-06', '08:30:00 s/d 13:00:00', 'PASAR MUARA PANAS'),
(145, 'UPTD SAMSAT SOLOK', 'BUKIT SUNDI', '2021-12-13', '08:30:00 s/d 13:00:00', 'PASAR MUARA PANAS'),
(146, 'UPTD SAMSAT SOLOK', 'JUNJUNG SIRIH', '2021-10-07', '08:30:00 s/d 13:00:00', 'PASAR PANINGGAHAN'),
(147, 'UPTD SAMSAT SOLOK', 'JUNJUNG SIRIH', '2021-11-04', '08:30:00 s/d 13:00:00', 'PASAR PANINGGAHAN'),
(148, 'UPTD SAMSAT SOLOK', 'JUNJUNG SIRIH', '2021-12-02', '08:30:00 s/d 13:00:00', 'PASAR PANINGGAHAN'),
(149, 'UPTD SAMSAT SOLOK', 'TANJUNG HARAPAN', '2021-10-12', '08:30:00 s/d 13:00:00', 'PASAR RAYA'),
(150, 'UPTD SAMSAT SOLOK', 'TANJUNG HARAPAN', '2021-11-09', '08:30:00 s/d 13:00:00', 'PASAR RAYA'),
(151, 'UPTD SAMSAT SOLOK', 'TANJUNG HARAPAN, KOTA SOLOK', '2021-12-07', '08:30:00 s/d 13:00:00', 'PASAR RAYA'),
(152, 'UPTD SAMSAT LUBUK BASUNG', 'AMPEK NAGARI', '2021-10-08', '08:30:00 s/d 13:00:00', 'AMPEK NAGARI PASAR BAWAN'),
(153, 'UPTD SAMSAT LUBUK BASUNG', 'AMPEK NAGARI ', '2021-11-05', '08:30:00 s/d 13:00:00', 'AMPEK NAGARI PASAR BAWAN'),
(154, 'UPTD SAMSAT LUBUK BASUNG', 'AMPEK NAGARI', '2021-12-03', '08:30:00 s/d 13:00:00', 'AMPEK NAGARI PASAR BAWAN'),
(155, 'UPTD SAMSAT LUBUK BASUNG', 'MATUR', '2021-10-07', '08:30:00 s/d 13:00:00', 'DEPAN KANTOR CAMAT MATUR'),
(156, 'UPTD SAMSAT LUBUK BASUNG', 'MATUR', '2021-11-04', '08:30:00 s/d 13:00:00', 'DEPAN KANTOR CAMAT MATUR'),
(157, 'UPTD SAMSAT LUBUK BASUNG', 'MATUR', '2021-12-02', '08:30:00 s/d 13:00:00', 'DEPAN KANTOR CAMAT MATUR'),
(158, 'UPTD SAMSAT LUBUK BASUNG', 'MATUR', '2021-10-15', '08:30:00 s/d 13:00:00', 'PASAR LAWANG III BALAI NAN BASA'),
(159, 'UPTD SAMSAT LUBUK BASUNG', 'MATUR', '2021-11-12', '08:30:00 s/d 13:00:00', 'PASAR LAWANG III BALAI NAN BASA'),
(160, 'UPTD SAMSAT LUBUK BASUNG', 'MATUR', '2021-12-10', '08:30:00 s/d 13:00:00', 'PASAR LAWANG III BALAI NAN BASA'),
(161, 'UPTD SAMSAT LUBUK BASUNG', 'TANJUNG MUTIARA', '2021-10-11', '08:30:00 s/d 13:00:00', 'TANJUNG MUTIARA DEPAN BANK BRI'),
(162, 'UPTD SAMSAT LUBUK BASUNG', 'TANJUNG MUTIARA', '2021-11-08', '08:30:00 s/d 13:00:00', 'TANJUNG MUTIARA DEPAN BANK BRI'),
(163, 'UPTD SAMSAT LUBUK BASUNG', 'TANJUNG MUTIARA', '2021-12-06', '08:30:00 s/d 13:00:00', 'TANJUNG MUTIARA DEPAN BANK BRI'),
(164, 'UPTD SAMSAT LUBUK BASUNG', 'TANJUNG RAYA', '2021-10-12', '08:30:00 s/d 13:00:00', 'DEPAN KANTOR CAMAT TANJUNG RAYA'),
(165, 'UPTD SAMSAT LUBUK BASUNG', 'TANJUNG RAYA', '2021-11-16', '08:30:00 s/d 13:00:00', 'DEPAN KANTOR CAMAT TANJUNG RAYA'),
(166, 'UPTD SAMSAT LUBUK BASUNG', 'TANJUNG RAYA', '2021-12-14', '08:30:00 s/d 13:00:00', 'DEPAN KANTOR CAMAT TANJUNG RAYA'),
(167, 'UPTD  SAMSAT LUBUK SIKAPING', 'Bonjol', '2021-10-07', '08:30:00 s/d 13:00:00', 'PASAR KUMPULAN'),
(168, 'UPTD  SAMSAT LUBUK SIKAPING', 'Bonjol', '2021-11-04', '08:30:00 s/d 13:00:00', 'PASAR KUMPULAN'),
(169, 'UPTD  SAMSAT LUBUK SIKAPING', 'Bonjol', '2021-12-02', '08:30:00 s/d 13:00:00', 'PASAR KUMPULAN'),
(170, 'UPTD  SAMSAT LUBUK SIKAPING', 'DUA KOTO', '2021-10-26', '08:30:00 s/d 13:00:00', 'Pasar Simpang Tonang'),
(171, 'UPTD  SAMSAT LUBUK SIKAPING', 'DUA KOTO', '2021-11-16', '08:30:00 s/d 13:00:00', 'Pasar Simpang Tonang'),
(172, 'UPTD  SAMSAT LUBUK SIKAPING', 'DUA KOTO', '2021-12-14', '08:30:00 s/d 13:00:00', 'Pasar Simpang Tonang'),
(173, 'UPTD  SAMSAT LUBUK SIKAPING', 'Rao Selatan', '2021-10-08', '08:30:00 s/d 13:00:00', 'Pasar Kauman'),
(174, 'UPTD  SAMSAT LUBUK SIKAPING', 'Rao Selatan', '2021-11-05', '08:30:00 s/d 13:00:00', 'Pasar Kauman'),
(175, 'UPTD  SAMSAT LUBUK SIKAPING', 'Rao Selatan', '2021-12-03', '08:30:00 s/d 13:00:00', 'Pasar Kauman'),
(176, 'UPTD  SAMSAT LUBUK SIKAPING', 'Rao Selatan', '2021-12-08', '08:30:00 s/d 13:00:00', 'PASAR LANSEK KADOK'),
(177, 'UPTD  SAMSAT LUBUK SIKAPING', 'Rao', '2021-10-04', '08:30:00 s/d 13:00:00', 'GEDUNG UDKP'),
(178, 'UPTD  SAMSAT LUBUK SIKAPING', 'Rao', '2021-11-01', '08:30:00 s/d 13:00:00', 'GEDUNG UDKP'),
(179, 'UPTD  SAMSAT LUBUK SIKAPING', 'Rao', '2021-12-06', '08:30:00 s/d 13:00:00', 'GEDUNG UDKP'),
(180, 'UPTD  SAMSAT LUBUK SIKAPING', 'TIGO NAGARI', '2021-10-05', '08:30:00 s/d 13:00:00', 'PASAR PADANG GANTIANG'),
(181, 'UPTD  SAMSAT LUBUK SIKAPING', 'TIGO NAGARI', '2021-11-02', '08:30:00 s/d 13:00:00', 'PASAR PADANG GANTIANG'),
(182, 'UPTD  SAMSAT LUBUK SIKAPING', 'TIGO NAGARI', '2021-12-07', '08:30:00 s/d 13:00:00', 'PASAR PADANG GANTIANG'),
(183, 'UPTD  SAMSAT PADANG PANJANG', 'BATIPUH', '2021-10-05', '08:30:00 s/d 13:00:00', 'PASAR KUBU KARAMBIA'),
(184, 'UPTD  SAMSAT PADANG PANJANG', 'BATIPUH', '2021-10-12', '08:30:00 s/d 13:00:00', 'PASAR KUBU KARAMBIA'),
(185, 'UPTD  SAMSAT PADANG PANJANG', 'BATIPUH', '2021-11-02', '08:30:00 s/d 13:00:00', 'PASAR KUBU KARAMBIA'),
(186, 'UPTD  SAMSAT PADANG PANJANG', 'BATIPUH', '2021-11-09', '08:30:00 s/d 13:00:00', 'PASAR KUBU KARAMBIA'),
(187, 'UPTD  SAMSAT PADANG PANJANG', 'BATIPUH', '2021-12-07', '08:30:00 s/d 13:00:00', 'PASAR KUBU KARAMBIA'),
(188, 'UPTD  SAMSAT PADANG PANJANG', 'BATIPUH', '2021-12-14', '08:30:00 s/d 13:00:00', 'PASAR KUBU KARAMBIA'),
(189, 'UPTD  SAMSAT PADANG PANJANG', 'BATIPUH', '2021-10-14', '08:30:00 s/d 13:00:00', 'PASAR TANJUNG BARULAK'),
(190, 'UPTD  SAMSAT PADANG PANJANG', 'BATIPUH', '2021-11-11', '08:30:00 s/d 13:00:00', 'PASAR TANJUNG BARULAK'),
(191, 'UPTD  SAMSAT PADANG PANJANG', 'BATIPUH', '2021-12-09', '08:30:00 s/d 13:00:00', 'PASAR TANJUNG BARULAK'),
(192, 'UPTD SAMSAT PADANG', 'BUNGUS TELUK KABUNG', '2021-01-27', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT BUNGUS TELUK KABUNG'),
(193, 'UPTD  SAMSAT  PAYAKUMBUH', 'AKABILURU', '2021-10-22', '08:30:00 s/d 11:30:00', 'Pasar Piladang'),
(194, 'UPTD  SAMSAT  PAYAKUMBUH', 'AKABILURU, KAB. LIMA PULUH KOTA', '2021-10-22', '08:30:00 s/d 13:00:00', 'Pasar Piladang'),
(195, 'UPTD  SAMSAT  PAYAKUMBUH', 'AKABILURU, KAB. LIMA PULUH KOTA', '2021-12-17', '08:30:00 s/d 13:00:00', 'Pasar Piladang'),
(196, 'UPTD  SAMSAT  PAYAKUMBUH', 'LAREH SAGO HALABAN, KAB. LIMA PULUH KOTA', '2021-11-03', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT LAREH SAGO HALABAN'),
(197, 'UPTD  SAMSAT SIMPANG EMPAT', 'Kinali', '2021-01-11', '08:00:00 s/d 13:00:00', 'KANTOR BANK NAGARI CAPEM KINALI'),
(198, 'UPTD  SAMSAT SIMPANG EMPAT', 'Kinali', '2021-02-08', '08:30:00 s/d 13:00:00', 'KANTOR BANK NAGARI CAPEM KINALI'),
(199, 'UPTD  SAMSAT SIMPANG EMPAT', 'Kinali', '2021-03-08', '08:30:00 s/d 13:00:00', 'KANTOR BANK NAGARI CAPEM KINALI'),
(200, 'UPTD  SAMSAT SIMPANG EMPAT', 'Kinali', '2021-04-12', '08:30:00 s/d 13:00:00', 'KANTOR BANK NAGARI CAPEM KINALI'),
(201, 'UPTD  SAMSAT SIMPANG EMPAT', 'Kinali', '2021-05-03', '08:30:00 s/d 13:00:00', 'KANTOR BANK NAGARI CAPEM KINALI'),
(202, 'UPTD  SAMSAT SIMPANG EMPAT', 'Kinali', '2021-06-14', '08:30:00 s/d 13:00:00', 'KANTOR BANK NAGARI CAPEM KINALI'),
(203, 'UPTD  SAMSAT SIMPANG EMPAT', 'Kinali', '2021-07-05', '08:30:00 s/d 13:00:00', 'KANTOR BANK NAGARI CAPEM KINALI'),
(204, 'UPTD  SAMSAT SIMPANG EMPAT', 'Kinali', '2021-08-09', '08:30:00 s/d 13:00:00', 'KANTOR BANK NAGARI CAPEM KINALI'),
(205, 'UPTD  SAMSAT SIMPANG EMPAT', 'Kinali', '2021-09-13', '08:30:00 s/d 13:00:00', 'KANTOR BANK NAGARI CAPEM KINALI'),
(206, 'UPTD  SAMSAT SIMPANG EMPAT', 'Kinali', '2021-10-04', '08:30:00 s/d 13:00:00', 'KANTOR BANK NAGARI CAPEM KINALI'),
(207, 'UPTD  SAMSAT SIMPANG EMPAT', 'Kinali', '2021-11-01', '08:30:00 s/d 13:00:00', 'KANTOR BANK NAGARI CAPEM KINALI'),
(208, 'UPTD  SAMSAT SIMPANG EMPAT', 'Kinali', '2021-12-13', '08:30:00 s/d 13:00:00', 'KANTOR BANK NAGARI CAPEM KINALI'),
(209, 'UPTD  SAMSAT SIMPANG EMPAT', 'Kinali', '2021-01-09', '08:30:00 s/d 13:00:00', 'PASAR PADANG CANDUA'),
(210, 'UPTD  SAMSAT SIMPANG EMPAT', 'Kinali', '2021-01-23', '08:30:00 s/d 13:00:00', 'PASAR PADANG CANDUA'),
(211, 'UPTD  SAMSAT SIMPANG EMPAT', 'Kinali', '2021-02-06', '08:30:00 s/d 13:00:00', 'PASAR PADANG CANDUA'),
(212, 'UPTD  SAMSAT SIMPANG EMPAT', 'Kinali', '2021-02-27', '08:30:00 s/d 13:00:00', 'PASAR PADANG CANDUA'),
(213, 'UPTD  SAMSAT SIMPANG EMPAT', 'Kinali', '2021-03-06', '08:30:00 s/d 13:00:00', 'PASAR PADANG CANDUA'),
(214, 'UPTD  SAMSAT SIMPANG EMPAT', 'Kinali', '2021-03-20', '08:30:00 s/d 13:00:00', 'PASAR PADANG CANDUA'),
(215, 'UPTD  SAMSAT SIMPANG EMPAT', 'Kinali', '2021-04-10', '08:30:00 s/d 13:00:00', 'PASAR PADANG CANDUA'),
(216, 'UPTD  SAMSAT SIMPANG EMPAT', 'Kinali', '2021-04-24', '08:30:00 s/d 13:00:00', 'PASAR PADANG CANDUA'),
(217, 'UPTD  SAMSAT SIMPANG EMPAT', 'Kinali', '2021-05-08', '08:30:00 s/d 13:00:00', 'PASAR PADANG CANDUA'),
(218, 'UPTD  SAMSAT SIMPANG EMPAT', 'Kinali', '2021-05-22', '08:30:00 s/d 13:00:00', 'PASAR PADANG CANDUA'),
(219, 'UPTD  SAMSAT SIMPANG EMPAT', 'Kinali', '2021-06-05', '08:30:00 s/d 13:00:00', 'PASAR PADANG CANDUA'),
(220, 'UPTD  SAMSAT SIMPANG EMPAT', 'Kinali', '2021-06-21', '08:30:00 s/d 13:00:00', 'PASAR PADANG CANDUA'),
(221, 'UPTD  SAMSAT SIMPANG EMPAT', 'Kinali', '2021-12-04', '08:30:00 s/d 13:00:00', 'PASAR PADANG CANDUA'),
(222, 'UPTD  SAMSAT SIMPANG EMPAT', 'Kinali', '2021-07-03', '08:30:00 s/d 13:00:00', 'PASAR PADANG CANDUA'),
(223, 'UPTD  SAMSAT SIMPANG EMPAT', 'Kinali', '2021-07-17', '08:30:00 s/d 13:00:00', 'PASAR PADANG CANDUA'),
(224, 'UPTD  SAMSAT SIMPANG EMPAT', 'Kinali', '2021-08-07', '08:30:00 s/d 13:00:00', 'PASAR PADANG CANDUA'),
(225, 'UPTD  SAMSAT SIMPANG EMPAT', 'Kinali', '2021-08-21', '08:30:00 s/d 13:00:00', 'PASAR PADANG CANDUA'),
(226, 'UPTD  SAMSAT SIMPANG EMPAT', 'Kinali', '2021-09-04', '08:30:00 s/d 13:00:00', 'PASAR PADANG CANDUA'),
(227, 'UPTD  SAMSAT SIMPANG EMPAT', 'Kinali', '2021-09-18', '08:30:00 s/d 13:00:00', 'PASAR PADANG CANDUA'),
(228, 'UPTD  SAMSAT SIMPANG EMPAT', 'Kinali', '2021-10-02', '08:30:00 s/d 13:00:00', 'PASAR PADANG CANDUA'),
(229, 'UPTD  SAMSAT SIMPANG EMPAT', 'Kinali', '2021-10-16', '08:30:00 s/d 13:00:00', 'PASAR PADANG CANDUA'),
(230, 'UPTD  SAMSAT SIMPANG EMPAT', 'Kinali', '2021-11-06', '08:30:00 s/d 13:00:00', 'PASAR PADANG CANDUA'),
(231, 'UPTD  SAMSAT SIMPANG EMPAT', 'Kinali', '2021-11-20', '08:30:00 s/d 13:00:00', 'PASAR PADANG CANDUA'),
(232, 'UPTD  SAMSAT SIMPANG EMPAT', 'Kinali', '2021-12-11', '08:30:00 s/d 13:00:00', 'PASAR PADANG CANDUA'),
(233, 'UPTD  SAMSAT SIMPANG EMPAT', 'LEMBAH MALINTANG', '2021-01-18', '08:30:00 s/d 13:00:00', 'KANTOR BANK NAGARI CAB. UJUNG GADING'),
(234, 'UPTD  SAMSAT SIMPANG EMPAT', 'LEMBAH MALINTANG', '2021-01-25', '08:30:00 s/d 13:00:00', 'KANTOR BANK NAGARI CAB. UJUNG GADING'),
(235, 'UPTD  SAMSAT SIMPANG EMPAT', 'LEMBAH MALINTANG', '2021-02-06', '08:30:00 s/d 13:00:00', 'KANTOR BANK NAGARI CAB. UJUNG GADING'),
(236, 'UPTD  SAMSAT SIMPANG EMPAT', 'LEMBAH MALINTANG', '2021-02-27', '08:30:00 s/d 13:00:00', 'KANTOR BANK NAGARI CAB. UJUNG GADING'),
(237, 'UPTD  SAMSAT SIMPANG EMPAT', 'LEMBAH MALINTANG', '2021-03-06', '08:30:00 s/d 13:00:00', 'KANTOR BANK NAGARI CAB. UJUNG GADING'),
(238, 'UPTD  SAMSAT SIMPANG EMPAT', 'LEMBAH MALINTANG', '2021-03-20', '08:30:00 s/d 13:00:00', 'KANTOR BANK NAGARI CAB. UJUNG GADING'),
(239, 'UPTD  SAMSAT SIMPANG EMPAT', 'LEMBAH MALINTANG', '2021-04-05', '08:30:00 s/d 13:00:00', 'KANTOR BANK NAGARI CAB. UJUNG GADING'),
(240, 'UPTD  SAMSAT SIMPANG EMPAT', 'LEMBAH MALINTANG', '2021-04-19', '08:30:00 s/d 13:00:00', 'KANTOR BANK NAGARI CAB. UJUNG GADING'),
(241, 'UPTD  SAMSAT SIMPANG EMPAT', 'LEMBAH MALINTANG', '2021-05-10', '08:30:00 s/d 13:00:00', 'KANTOR BANK NAGARI CAB. UJUNG GADING'),
(242, 'UPTD  SAMSAT SIMPANG EMPAT', 'LEMBAH MALINTANG', '2021-05-17', '08:30:00 s/d 13:00:00', 'KANTOR BANK NAGARI CAB. UJUNG GADING'),
(243, 'UPTD  SAMSAT SIMPANG EMPAT', 'LEMBAH MALINTANG', '2021-06-07', '08:30:00 s/d 13:00:00', 'KANTOR BANK NAGARI CAB. UJUNG GADING'),
(244, 'UPTD  SAMSAT SIMPANG EMPAT', 'LEMBAH MALINTANG', '2021-06-21', '08:30:00 s/d 13:00:00', 'KANTOR BANK NAGARI CAB. UJUNG GADING'),
(245, 'UPTD  SAMSAT SIMPANG EMPAT', 'LEMBAH MALINTANG', '2021-07-12', '08:30:00 s/d 13:00:00', 'KANTOR BANK NAGARI CAB. UJUNG GADING'),
(246, 'UPTD  SAMSAT SIMPANG EMPAT', 'LEMBAH MALINTANG', '2021-07-26', '08:30:00 s/d 13:00:00', 'KANTOR BANK NAGARI CAB. UJUNG GADING'),
(247, 'UPTD  SAMSAT SIMPANG EMPAT', 'LEMBAH MALINTANG', '2021-08-02', '08:30:00 s/d 13:00:00', 'KANTOR BANK NAGARI CAB. UJUNG GADING'),
(248, 'UPTD  SAMSAT SIMPANG EMPAT', 'LEMBAH MALINTANG', '2021-08-25', '08:30:00 s/d 13:00:00', 'KANTOR BANK NAGARI CAB. UJUNG GADING'),
(249, 'UPTD  SAMSAT SIMPANG EMPAT', 'LEMBAH MALINTANG', '2021-09-02', '08:30:00 s/d 13:00:00', 'KANTOR BANK NAGARI CAB. UJUNG GADING'),
(250, 'UPTD  SAMSAT SIMPANG EMPAT', 'LEMBAH MALINTANG', '2021-09-16', '08:30:00 s/d 13:00:00', 'KANTOR BANK NAGARI CAB. UJUNG GADING'),
(251, 'UPTD  SAMSAT SIMPANG EMPAT', 'LEMBAH MALINTANG', '2021-10-02', '08:30:00 s/d 13:00:00', 'KANTOR BANK NAGARI CAB. UJUNG GADING'),
(252, 'UPTD  SAMSAT SIMPANG EMPAT', 'LEMBAH MALINTANG', '2021-10-16', '08:30:00 s/d 13:00:00', 'KANTOR BANK NAGARI CAB. UJUNG GADING'),
(253, 'UPTD  SAMSAT SIMPANG EMPAT', 'LEMBAH MALINTANG', '2021-11-06', '08:30:00 s/d 13:00:00', 'KANTOR BANK NAGARI CAB. UJUNG GADING'),
(254, 'UPTD  SAMSAT SIMPANG EMPAT', 'LEMBAH MALINTANG', '2021-11-20', '08:30:00 s/d 13:00:00', 'KANTOR BANK NAGARI CAB. UJUNG GADING'),
(255, 'UPTD  SAMSAT SIMPANG EMPAT', 'LEMBAH MALINTANG', '2021-12-04', '08:30:00 s/d 13:00:00', 'KANTOR BANK NAGARI CAB. UJUNG GADING'),
(256, 'UPTD  SAMSAT SIMPANG EMPAT', 'LEMBAH MALINTANG', '2021-12-11', '08:30:00 s/d 13:00:00', 'KANTOR BANK NAGARI CAB. UJUNG GADING'),
(257, 'UPTD  SAMSAT SIMPANG EMPAT', 'RANAH BATAHAN', '2021-01-12', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI / PASAR DESA BARU'),
(258, 'UPTD  SAMSAT SIMPANG EMPAT', 'RANAH BATAHAN', '2021-02-09', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI / PASAR DESA BARU'),
(259, 'UPTD  SAMSAT SIMPANG EMPAT', 'RANAH BATAHAN', '2021-03-09', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI / PASAR DESA BARU'),
(260, 'UPTD  SAMSAT SIMPANG EMPAT', 'RANAH BATAHAN', '2021-04-13', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI / PASAR DESA BARU'),
(262, 'UPTD  SAMSAT SIMPANG EMPAT', 'RANAH BATAHAN', '2021-05-04', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI / PASAR DESA BARU'),
(263, 'UPTD  SAMSAT SIMPANG EMPAT', 'RANAH BATAHAN', '2021-06-15', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI / PASAR DESA BARU'),
(264, 'UPTD  SAMSAT SIMPANG EMPAT', 'RANAH BATAHAN', '2021-07-06', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI / PASAR DESA BARU'),
(265, 'UPTD  SAMSAT SIMPANG EMPAT', 'RANAH BATAHAN', '2021-08-25', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI / PASAR DESA BARU'),
(266, 'UPTD  SAMSAT SIMPANG EMPAT', 'RANAH BATAHAN', '2021-09-14', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI / PASAR DESA BARU'),
(267, 'UPTD  SAMSAT SIMPANG EMPAT', 'RANAH BATAHAN', '2021-10-05', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI / PASAR DESA BARU'),
(268, 'UPTD  SAMSAT SIMPANG EMPAT', 'RANAH BATAHAN', '2021-11-02', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI / PASAR DESA BARU'),
(269, 'UPTD  SAMSAT SIMPANG EMPAT', 'RANAH BATAHAN', '2021-12-14', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI / PASAR DESA BARU'),
(270, 'UPTD  SAMSAT SIMPANG EMPAT', 'RANAH BATAHAN', '2021-01-07', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI BATAHAN / JR SILAPING'),
(271, 'UPTD  SAMSAT SIMPANG EMPAT', 'RANAH BATAHAN', '2021-01-14', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI BATAHAN / JR SILAPING'),
(272, 'UPTD  SAMSAT SIMPANG EMPAT', 'RANAH BATAHAN', '2021-01-21', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI BATAHAN / JR SILAPING'),
(273, 'UPTD  SAMSAT SIMPANG EMPAT', 'RANAH BATAHAN', '2021-02-04', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI BATAHAN / JR SILAPING04'),
(274, 'UPTD  SAMSAT SIMPANG EMPAT', 'RANAH BATAHAN', '2021-02-18', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI BATAHAN / JR SILAPING'),
(275, 'UPTD  SAMSAT SIMPANG EMPAT', 'RANAH BATAHAN', '2021-02-25', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI BATAHAN / JR SILAPING'),
(276, 'UPTD  SAMSAT SIMPANG EMPAT', 'RANAH BATAHAN', '2021-03-04', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI BATAHAN / JR SILAPING'),
(277, 'UPTD  SAMSAT SIMPANG EMPAT', 'RANAH BATAHAN', '2021-03-18', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI BATAHAN / JR SILAPING'),
(278, 'UPTD  SAMSAT SIMPANG EMPAT', 'RANAH BATAHAN', '2021-03-25', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI BATAHAN / JR SILAPING'),
(279, 'UPTD  SAMSAT SIMPANG EMPAT', 'RANAH BATAHAN', '2021-04-08', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI BATAHAN / JR SILAPING'),
(280, 'UPTD  SAMSAT SIMPANG EMPAT', 'RANAH BATAHAN', '2021-04-15', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI BATAHAN / JR SILAPING'),
(281, 'UPTD  SAMSAT SIMPANG EMPAT', 'RANAH BATAHAN', '2021-04-22', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI BATAHAN / JR SILAPING'),
(282, 'UPTD  SAMSAT SIMPANG EMPAT', 'RANAH BATAHAN', '2021-05-06', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI BATAHAN / JR SILAPING'),
(283, 'UPTD  SAMSAT SIMPANG EMPAT', 'RANAH BATAHAN', '2021-05-20', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI BATAHAN / JR SILAPING'),
(284, 'UPTD  SAMSAT SIMPANG EMPAT', 'RANAH BATAHAN', '2021-05-27', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI BATAHAN / JR SILAPING'),
(285, 'UPTD  SAMSAT SIMPANG EMPAT', 'RANAH BATAHAN', '2021-06-03', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI BATAHAN / JR SILAPING'),
(286, 'UPTD  SAMSAT SIMPANG EMPAT', 'RANAH BATAHAN', '2021-06-10', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI BATAHAN / JR SILAPING'),
(287, 'UPTD  SAMSAT SIMPANG EMPAT', 'RANAH BATAHAN', '2021-06-17', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI BATAHAN / JR SILAPING'),
(288, 'UPTD  SAMSAT SIMPANG EMPAT', 'RANAH BATAHAN', '2021-07-01', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI BATAHAN / JR SILAPING'),
(289, 'UPTD  SAMSAT SIMPANG EMPAT', 'RANAH BATAHAN', '2021-07-08', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI BATAHAN / JR SILAPING'),
(290, 'UPTD  SAMSAT SIMPANG EMPAT', 'RANAH BATAHAN', '2021-07-15', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI BATAHAN / JR SILAPING'),
(291, 'UPTD  SAMSAT SIMPANG EMPAT', 'RANAH BATAHAN', '2021-08-05', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI BATAHAN / JR SILAPING'),
(292, 'UPTD  SAMSAT SIMPANG EMPAT', 'RANAH BATAHAN', '2021-08-12', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI BATAHAN / JR SILAPING'),
(293, 'UPTD  SAMSAT SIMPANG EMPAT', 'RANAH BATAHAN', '2021-08-19', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI BATAHAN / JR SILAPING'),
(294, 'UPTD  SAMSAT SIMPANG EMPAT', 'RANAH BATAHAN', '2021-09-09', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI BATAHAN / JR SILAPING'),
(295, 'UPTD  SAMSAT SIMPANG EMPAT', 'RANAH BATAHAN', '2021-09-16', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI BATAHAN / JR SILAPING'),
(296, 'UPTD  SAMSAT SIMPANG EMPAT', 'RANAH BATAHAN', '2021-09-23', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI BATAHAN / JR SILAPING'),
(297, 'UPTD  SAMSAT SIMPANG EMPAT', 'RANAH BATAHAN', '2021-10-07', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI BATAHAN / JR SILAPING'),
(298, 'UPTD  SAMSAT SIMPANG EMPAT', 'RANAH BATAHAN', '2021-10-14', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI BATAHAN / JR SILAPING'),
(299, 'UPTD  SAMSAT SIMPANG EMPAT', 'RANAH BATAHAN', '2021-10-21', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI BATAHAN / JR SILAPING'),
(300, 'UPTD  SAMSAT SIMPANG EMPAT', 'RANAH BATAHAN', '2021-11-04', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI BATAHAN / JR SILAPING'),
(301, 'UPTD  SAMSAT SIMPANG EMPAT', 'RANAH BATAHAN', '2021-11-11', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI BATAHAN / JR SILAPING'),
(302, 'UPTD  SAMSAT SIMPANG EMPAT', 'RANAH BATAHAN', '2021-11-18', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI BATAHAN / JR SILAPING'),
(303, 'UPTD  SAMSAT SIMPANG EMPAT', 'RANAH BATAHAN', '2021-12-02', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI BATAHAN / JR SILAPING'),
(304, 'UPTD  SAMSAT SIMPANG EMPAT', 'RANAH BATAHAN', '2021-12-09', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI BATAHAN / JR SILAPING'),
(305, 'UPTD  SAMSAT SIMPANG EMPAT', 'RANAH BATAHAN', '2021-12-16', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI BATAHAN / JR SILAPING'),
(306, 'UPTD  SAMSAT SIMPANG EMPAT', 'SUNGAI AUR,', '2021-02-23', '08:30:00 s/d 13:00:00', 'KANTOR BANK NAGARI CAPEM SUNGAI AUA'),
(307, 'UPTD  SAMSAT SIMPANG EMPAT', 'SUNGAI AUR,', '2021-03-23', '08:30:00 s/d 13:00:00', 'KANTOR BANK NAGARI CAPEM SUNGAI AUA'),
(308, 'UPTD  SAMSAT SIMPANG EMPAT', 'SUNGAI AUR,', '2021-04-27', '08:30:00 s/d 13:00:00', 'KANTOR BANK NAGARI CAPEM SUNGAI AUA'),
(309, 'UPTD  SAMSAT SIMPANG EMPAT', 'SUNGAI AUR,', '2021-05-25', '08:30:00 s/d 13:00:00', 'KANTOR BANK NAGARI CAPEM SUNGAI AUA'),
(310, 'UPTD  SAMSAT SIMPANG EMPAT', 'SUNGAI AUR,', '2021-06-29', '08:30:00 s/d 13:00:00', 'KANTOR BANK NAGARI CAPEM SUNGAI AUA'),
(311, 'UPTD  SAMSAT SIMPANG EMPAT', 'SUNGAI AUR,', '2021-07-19', '08:30:00 s/d 13:00:00', 'KANTOR BANK NAGARI CAPEM SUNGAI AUA'),
(312, 'UPTD  SAMSAT SIMPANG EMPAT', 'SUNGAI AUR,', '2021-08-16', '08:30:00 s/d 13:00:00', 'KANTOR BANK NAGARI CAPEM SUNGAI AUA'),
(313, 'UPTD  SAMSAT SIMPANG EMPAT', 'SUNGAI AUR,', '2021-09-28', '08:30:00 s/d 13:00:00', 'KANTOR BANK NAGARI CAPEM SUNGAI AUA'),
(314, 'UPTD  SAMSAT SIMPANG EMPAT', 'SUNGAI AUR,', '2021-10-20', '08:30:00 s/d 13:00:00', 'KANTOR BANK NAGARI CAPEM SUNGAI AUA'),
(315, 'UPTD  SAMSAT SIMPANG EMPAT', 'SUNGAI AUR,', '2021-11-16', '08:30:00 s/d 13:00:00', 'KANTOR BANK NAGARI CAPEM SUNGAI AUA'),
(316, 'UPTD  SAMSAT SIMPANG EMPAT', 'SUNGAI AUR,', '2021-12-08', '08:30:00 s/d 13:00:00', 'KANTOR BANK NAGARI CAPEM SUNGAI AUA'),
(317, 'UPTD  SAMSAT SIMPANG EMPAT', 'Kinali', '2021-06-14', '08:30:00 s/d 13:00:00', 'KANTOR BANK NAGARI CAPEM KINALI'),
(318, 'UPTD  SAMSAT  PAYAKUMBUH', 'AKABILURU,', '2021-01-22', '08:30:00 s/d 13:00:00', 'PASAR PILADANG'),
(319, 'UPTD  SAMSAT  PAYAKUMBUH', 'AKABILURU,', '2021-02-19', '08:30:00 s/d 13:00:00', 'PASAR PILADANG'),
(320, 'UPTD  SAMSAT  PAYAKUMBUH', 'AKABILURU,', '2021-03-26', '08:30:00 s/d 13:00:00', 'PASAR PILADANG'),
(321, 'UPTD  SAMSAT  PAYAKUMBUH', 'AKABILURU,', '2021-04-23', '08:30:00 s/d 13:00:00', 'PASAR PILADANG'),
(322, 'UPTD  SAMSAT  PAYAKUMBUH', 'AKABILURU,', '2021-05-21', '08:30:00 s/d 13:00:00', 'PASAR PILADANG'),
(323, 'UPTD  SAMSAT  PAYAKUMBUH', 'AKABILURU,', '2021-06-25', '08:30:00 s/d 13:00:00', 'PASAR PILADANG'),
(324, 'UPTD  SAMSAT  PAYAKUMBUH', 'AKABILURU,', '2021-07-23', '08:30:00 s/d 13:00:00', 'PASAR PILADANG'),
(325, 'UPTD  SAMSAT  PAYAKUMBUH', 'AKABILURU,', '2021-08-27', '08:30:00 s/d 13:00:00', 'PASAR PILADANG'),
(326, 'UPTD  SAMSAT  PAYAKUMBUH', 'AKABILURU,', '2021-09-24', '08:30:00 s/d 13:00:00', 'PASAR PILADANG'),
(327, 'UPTD  SAMSAT  PAYAKUMBUH', 'LAREH SAGO HALABAN,', '2021-01-06', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT LAREH SAGO HALABAN'),
(328, 'UPTD  SAMSAT  PAYAKUMBUH', 'LAREH SAGO HALABAN,', '2021-02-03', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT LAREH SAGO HALABAN'),
(329, 'UPTD  SAMSAT  PAYAKUMBUH', 'LAREH SAGO HALABAN,', '2021-03-03', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT LAREH SAGO HALABAN'),
(330, 'UPTD  SAMSAT  PAYAKUMBUH', 'LAREH SAGO HALABAN,', '2021-04-07', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT LAREH SAGO HALABAN'),
(331, 'UPTD  SAMSAT  PAYAKUMBUH', 'LAREH SAGO HALABAN,', '2021-05-05', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT LAREH SAGO HALABAN'),
(332, 'UPTD  SAMSAT  PAYAKUMBUH', 'LAREH SAGO HALABAN,', '2021-06-02', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT LAREH SAGO HALABAN'),
(333, 'UPTD  SAMSAT  PAYAKUMBUH', 'LAREH SAGO HALABAN,', '2021-07-07', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT LAREH SAGO HALABAN'),
(334, 'UPTD  SAMSAT  PAYAKUMBUH', 'LAREH SAGO HALABAN,', '2021-08-04', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT LAREH SAGO HALABAN'),
(335, 'UPTD  SAMSAT  PAYAKUMBUH', 'LAREH SAGO HALABAN,', '2021-09-01', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT LAREH SAGO HALABAN'),
(336, 'UPTD  SAMSAT  PAYAKUMBUH', 'LAREH SAGO HALABAN,', '2021-11-03', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT LAREH SAGO HALABAN'),
(337, 'UPTD  SAMSAT  PAYAKUMBUH', 'LAREH SAGO HALABAN,', '2021-12-01', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT LAREH SAGO HALABAN'),
(338, 'UPTD  SAMSAT  PAYAKUMBUH', 'Payakumbuh,', '2021-01-08', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI TAEH BARUAH'),
(339, 'UPTD  SAMSAT  PAYAKUMBUH', 'Payakumbuh,', '2021-02-05', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI TAEH BARUAH'),
(340, 'UPTD  SAMSAT  PAYAKUMBUH', 'Payakumbuh,', '2021-03-05', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI TAEH BARUAH'),
(341, 'UPTD  SAMSAT  PAYAKUMBUH', 'Payakumbuh,', '2021-04-09', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI TAEH BARUAH'),
(342, 'UPTD  SAMSAT  PAYAKUMBUH', 'Payakumbuh,', '2021-05-07', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI TAEH BARUAH'),
(343, 'UPTD  SAMSAT  PAYAKUMBUH', 'Payakumbuh,', '2021-06-11', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI TAEH BARUAH'),
(344, 'UPTD  SAMSAT  PAYAKUMBUH', 'Payakumbuh,', '2021-07-09', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI TAEH BARUAH'),
(345, 'UPTD  SAMSAT  PAYAKUMBUH', 'Payakumbuh,', '2021-08-13', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI TAEH BARUAH'),
(346, 'UPTD  SAMSAT  PAYAKUMBUH', 'Payakumbuh,', '2021-09-10', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI TAEH BARUAH'),
(347, 'UPTD  SAMSAT  PAYAKUMBUH', 'Payakumbuh,', '2021-10-08', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI TAEH BARUAH'),
(348, 'UPTD  SAMSAT  PAYAKUMBUH', 'Payakumbuh,', '2021-11-12', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI TAEH BARUAH'),
(349, 'UPTD  SAMSAT  PAYAKUMBUH', 'Payakumbuh,', '2021-12-10', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI TAEH BARUAH'),
(350, 'UPTD  SAMSAT  PAYAKUMBUH', 'SITUJUAH LIMO NAGARI,', '2021-01-11', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI SITUJUAH BATUA'),
(351, 'UPTD  SAMSAT  PAYAKUMBUH', 'SITUJUAH LIMO NAGARI,', '2021-02-08', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI SITUJUAH BATUA'),
(352, 'UPTD  SAMSAT  PAYAKUMBUH', 'SITUJUAH LIMO NAGARI,', '2021-03-15', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI SITUJUAH BATUA'),
(353, 'UPTD  SAMSAT  PAYAKUMBUH', 'SITUJUAH LIMO NAGARI,', '2021-04-12', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI SITUJUAH BATUA'),
(354, 'UPTD  SAMSAT  PAYAKUMBUH', 'SITUJUAH LIMO NAGARI,', '2021-05-10', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI SITUJUAH BATUA'),
(355, 'UPTD  SAMSAT  PAYAKUMBUH', 'SITUJUAH LIMO NAGARI,', '2021-06-14', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI SITUJUAH BATUA'),
(356, 'UPTD  SAMSAT  PAYAKUMBUH', 'SITUJUAH LIMO NAGARI,', '2021-07-12', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI SITUJUAH BATUA'),
(357, 'UPTD  SAMSAT  PAYAKUMBUH', 'SITUJUAH LIMO NAGARI,', '2021-08-16', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI SITUJUAH BATUA'),
(358, 'UPTD  SAMSAT  PAYAKUMBUH', 'SITUJUAH LIMO NAGARI,', '2021-09-13', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI SITUJUAH BATUA'),
(359, 'UPTD  SAMSAT  PAYAKUMBUH', 'SITUJUAH LIMO NAGARI,', '2021-10-11', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI SITUJUAH BATUA'),
(360, 'UPTD  SAMSAT  PAYAKUMBUH', 'SITUJUAH LIMO NAGARI,', '2021-11-15', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI SITUJUAH BATUA'),
(361, 'UPTD  SAMSAT  PAYAKUMBUH', 'SITUJUAH LIMO NAGARI,', '2021-12-13', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI SITUJUAH BATUA'),
(362, 'UPTD  SAMSAT SAWAHLUNTO', 'LEMBAH SEGAR, KOTA SAWAHLUNTO	', '2021-01-06', '08:30:00 s/d 13:00:00', 'POS POLISI TERMINAL KOTA SAWAHLUNTO'),
(363, 'UPTD  SAMSAT SAWAHLUNTO', 'LEMBAH SEGAR, KOTA SAWAHLUNTO', '2021-01-13', '08:30:00 s/d 13:00:00', 'POS POLISI TERMINAL KOTA SAWAHLUNTO'),
(364, 'UPTD  SAMSAT SAWAHLUNTO', 'LEMBAH SEGAR, KOTA SAWAHLUNTO', '2021-02-03', '08:30:00 s/d 13:00:00', 'POS POLISI TERMINAL KOTA SAWAHLUNTO'),
(365, 'UPTD  SAMSAT SAWAHLUNTO', 'LEMBAH SEGAR, KOTA SAWAHLUNTO', '2021-02-09', '08:00:00 s/d 13:00:00', 'Pos Polisi Terminal Kota Sawah Lunto'),
(366, 'UPTD  SAMSAT SAWAHLUNTO', 'LEMBAH SEGAR, KOTA SAWAHLUNTO', '2021-03-03', '08:30:00 s/d 13:00:00', 'Pos Polisi Terminal Kota Sawah Lunto'),
(367, 'UPTD  SAMSAT SAWAHLUNTO', 'LEMBAH SEGAR, KOTA SAWAHLUNTO', '2021-03-10', '08:30:00 s/d 13:00:00', 'Pos Polisi Terminal Kota Sawah Lunto'),
(368, 'UPTD  SAMSAT SAWAHLUNTO', 'LEMBAH SEGAR, KOTA SAWAHLUNTO', '2021-04-07', '08:30:00 s/d 13:00:00', 'Pos Polisi Terminal Kota Sawah Lunto'),
(369, 'UPTD  SAMSAT SAWAHLUNTO', 'LEMBAH SEGAR, KOTA SAWAHLUNTO', '2021-04-14', '08:30:00 s/d 13:00:00', 'Pos Polisi Terminal Kota Sawah Lunto'),
(370, 'UPTD  SAMSAT SAWAHLUNTO', 'LEMBAH SEGAR, KOTA SAWAHLUNTO', '2021-04-21', '08:30:00 s/d 13:00:00', 'Pos Polisi Terminal Kota Sawah Lunto'),
(371, 'UPTD  SAMSAT SAWAHLUNTO', 'LEMBAH SEGAR, KOTA SAWAHLUNTO', '2021-05-05', '08:30:00 s/d 13:00:00', 'Pos Polisi Terminal Kota Sawah Lunto'),
(372, 'UPTD  SAMSAT SAWAHLUNTO', 'LEMBAH SEGAR, KOTA SAWAHLUNTO', '2021-06-02', '08:30:00 s/d 13:00:00', 'Pos Polisi Terminal Kota Sawah Lunto'),
(373, 'UPTD  SAMSAT SAWAHLUNTO', 'LEMBAH SEGAR, KOTA SAWAHLUNTO', '2021-06-09', '08:30:00 s/d 13:00:00', 'POS POLISI TERMINAL KOTA SAWAHLUNTO'),
(374, 'UPTD  SAMSAT SAWAHLUNTO', 'LEMBAH SEGAR, KOTA SAWAHLUNTO', '2021-07-07', '08:30:00 s/d 13:00:00', 'POS POLISI TERMINAL KOTA SAWAHLUNTO'),
(375, 'UPTD  SAMSAT SAWAHLUNTO', 'LEMBAH SEGAR, KOTA SAWAHLUNTO', '2021-07-14', '08:30:00 s/d 13:00:00', 'POS POLISI TERMINAL KOTA SAWAHLUNTO'),
(376, 'UPTD  SAMSAT SAWAHLUNTO', 'LEMBAH SEGAR, KOTA SAWAHLUNTO', '2021-08-04', '08:30:00 s/d 13:00:00', 'Pos Polisi Terminal Kota Sawah Lunto'),
(377, 'UPTD  SAMSAT SAWAHLUNTO', 'LEMBAH SEGAR, KOTA SAWAHLUNTO', '2021-08-11', '08:30:00 s/d 13:00:00', 'Pos Polisi Terminal Kota Sawah Lunto'),
(378, 'UPTD  SAMSAT SAWAHLUNTO', 'LEMBAH SEGAR, KOTA SAWAHLUNTO', '2021-09-08', '08:30:00 s/d 13:00:00', 'Pos Polisi Terminal Kota Sawah Lunto'),
(379, 'UPTD  SAMSAT SAWAHLUNTO', 'LEMBAH SEGAR, KOTA SAWAHLUNTO', '2021-08-15', '08:30:00 s/d 13:00:00', 'Pos Polisi Terminal Kota Sawah Lunto'),
(380, 'UPTD  SAMSAT SAWAHLUNTO', 'LEMBAH SEGAR, KOTA SAWAHLUNTO', '2021-10-06', '08:30:00 s/d 13:00:00', 'Pos Polisi Terminal Kota Sawah Lunto'),
(381, 'UPTD  SAMSAT SAWAHLUNTO', 'LEMBAH SEGAR, KOTA SAWAHLUNTO', '2021-10-13', '08:30:00 s/d 13:00:00', 'Pos Polisi Terminal Kota Sawah Lunto'),
(382, 'UPTD  SAMSAT SAWAHLUNTO', 'LEMBAH SEGAR, KOTA SAWAHLUNTO', '2021-11-03', '08:30:00 s/d 13:00:00', 'Pos Polisi Terminal Kota Sawah Lunto'),
(383, 'UPTD  SAMSAT SAWAHLUNTO', 'LEMBAH SEGAR, KOTA SAWAHLUNTO', '2021-11-10', '08:30:00 s/d 13:00:00', 'Pos Polisi Terminal Kota Sawah Lunto'),
(384, 'UPTD  SAMSAT SAWAHLUNTO', 'LEMBAH SEGAR, KOTA SAWAHLUNTO', '2021-11-24', '08:30:00 s/d 13:00:00', 'Pos Polisi Terminal Kota Sawah Lunto'),
(385, 'UPTD  SAMSAT SAWAHLUNTO', 'LEMBAH SEGAR, KOTA SAWAHLUNTO', '2021-12-08', '08:30:00 s/d 13:00:00', 'Pos Polisi Terminal Kota Sawah Lunto'),
(386, 'UPTD  SAMSAT SAWAHLUNTO', 'TALAWI, KOTA SAWAHLUNTO	', '2021-01-05', '08:30:00 s/d 13:00:00', 'PASAR TALAWI'),
(387, 'UPTD  SAMSAT SAWAHLUNTO', 'TALAWI, KOTA SAWAHLUNTO', '2021-01-19', '08:30:00 s/d 13:00:00', 'PASAR TALAWI'),
(388, 'UPTD  SAMSAT SAWAHLUNTO', 'TALAWI, KOTA SAWAHLUNTO', '2021-02-02', '08:30:00 s/d 13:00:00', 'PASAR TALAWI'),
(389, 'UPTD  SAMSAT SAWAHLUNTO', 'TALAWI, KOTA SAWAHLUNTO', '2021-02-16', '08:30:00 s/d 13:00:00', 'PASAR TALAWI'),
(390, 'UPTD  SAMSAT SAWAHLUNTO', 'TALAWI, KOTA SAWAHLUNTO', '2021-02-23', '08:30:00 s/d 13:00:00', 'PASAR TALAWI'),
(391, 'UPTD  SAMSAT SAWAHLUNTO', 'TALAWI, KOTA SAWAHLUNTO', '2021-03-02', '08:30:00 s/d 13:00:00', 'PASAR TALAWI'),
(392, 'UPTD  SAMSAT SAWAHLUNTO', 'TALAWI, KOTA SAWAHLUNTO', '2021-03-16', '08:30:00 s/d 13:00:00', 'PASAR TALAWI'),
(393, 'UPTD  SAMSAT SAWAHLUNTO', 'TALAWI, KOTA SAWAHLUNTO', '2021-03-23', '08:30:00 s/d 13:00:00', 'PASAR TALAWI'),
(394, 'UPTD  SAMSAT SAWAHLUNTO', 'TALAWI, KOTA SAWAHLUNTO', '2021-04-06', '08:30:00 s/d 13:00:00', 'PASAR TALAWI'),
(395, 'UPTD  SAMSAT SAWAHLUNTO', 'TALAWI, KOTA SAWAHLUNTO', '2021-04-20', '08:30:00 s/d 13:00:00', 'PASAR TALAWI'),
(396, 'UPTD  SAMSAT SAWAHLUNTO', 'TALAWI, KOTA SAWAHLUNTO	', '2021-05-04', '08:30:00 s/d 13:00:00', 'PASAR TALAWI'),
(397, 'UPTD  SAMSAT SAWAHLUNTO', 'TALAWI, KOTA SAWAHLUNTO', '2021-05-25', '08:00:00 s/d 13:00:00', 'PASAR TALAWI'),
(398, 'UPTD  SAMSAT SAWAHLUNTO', 'TALAWI, KOTA SAWAHLUNTO', '2021-06-08', '08:00:00 s/d 13:00:00', 'PASAR TALAWI'),
(399, 'UPTD  SAMSAT SAWAHLUNTO', 'TALAWI, KOTA SAWAHLUNTO', '2021-06-22', '08:30:00 s/d 13:00:00', 'PASAR TALAWI'),
(400, 'UPTD  SAMSAT SAWAHLUNTO', 'TALAWI, KOTA SAWAHLUNTO', '2021-07-06', '08:30:00 s/d 13:00:00', 'PASAR TALAWI'),
(401, 'UPTD  SAMSAT SAWAHLUNTO', 'TALAWI, KOTA SAWAHLUNTO', '2021-07-27', '08:30:00 s/d 13:00:00', 'PASAR TALAWI'),
(402, 'UPTD  SAMSAT SAWAHLUNTO', 'TALAWI, KOTA SAWAHLUNTO', '2021-08-03', '08:30:00 s/d 13:00:00', 'PASAR TALAWI'),
(403, 'UPTD  SAMSAT SAWAHLUNTO', 'TALAWI, KOTA SAWAHLUNTO', '2021-09-07', '08:30:00 s/d 13:00:00', 'PASAR TALAWI'),
(404, 'UPTD  SAMSAT SAWAHLUNTO', 'TALAWI, KOTA SAWAHLUNTO', '2021-09-21', '08:30:00 s/d 13:00:00', 'PASAR TALAWI'),
(405, 'UPTD  SAMSAT SAWAHLUNTO', 'TALAWI, KOTA SAWAHLUNTO', '2021-09-28', '08:30:00 s/d 13:00:00', 'PASAR TALAWI'),
(406, 'UPTD  SAMSAT SAWAHLUNTO', 'TALAWI, KOTA SAWAHLUNTO	', '2021-10-05', '08:30:00 s/d 13:00:00', 'PASAR TALAWI'),
(407, 'UPTD  SAMSAT SAWAHLUNTO', 'TALAWI, KOTA SAWAHLUNTO', '2021-10-26', '08:00:00 s/d 13:00:00', 'PASAR TALAWI'),
(408, 'UPTD  SAMSAT SAWAHLUNTO', 'TALAWI, KOTA SAWAHLUNTO', '2021-11-02', '08:30:00 s/d 13:00:00', 'PASAR TALAWI'),
(409, 'UPTD  SAMSAT SAWAHLUNTO', 'TALAWI, KOTA SAWAHLUNTO', '2021-11-16', '08:30:00 s/d 13:00:00', 'PASAR TALAWI'),
(410, 'UPTD  SAMSAT SAWAHLUNTO', 'TALAWI, KOTA SAWAHLUNTO', '2021-11-23', '08:30:00 s/d 13:00:00', 'PASAR TALAWI'),
(411, 'UPTD  SAMSAT SIJUNJUNG', 'KAMANG BARU, KAB. SIJUNJUNG', '2021-01-07', '08:30:00 s/d 13:00:00', 'KANTOR WALINAGARI KUNPAR'),
(412, 'UPTD  SAMSAT SIJUNJUNG', 'KAMANG BARU, KAB. SIJUNJUNG', '2021-12-09', '08:30:00 s/d 13:00:00', 'KANTOR WALINAGARI KUNPAR'),
(413, 'UPTD  SAMSAT SIJUNJUNG', 'KAMANG BARU, KAB. SIJUNJUNG', '2021-01-04', '08:00:00 s/d 13:00:00', 'KANTOR WALINAGARI KUNPAR'),
(414, 'UPTD  SAMSAT SIJUNJUNG', 'KAMANG BARU, KAB. SIJUNJUNG', '2021-02-04', '08:30:00 s/d 13:00:00', 'KANTOR WALINAGARI KUNPAR'),
(415, 'UPTD  SAMSAT SIJUNJUNG', 'KAMANG BARU, KAB. SIJUNJUNG', '2021-02-18', '08:30:00 s/d 13:00:00', 'KANTOR WALINAGARI KUNPAR'),
(416, 'UPTD  SAMSAT SIJUNJUNG', 'KAMANG BARU, KAB. SIJUNJUNG', '2021-03-04', '08:30:00 s/d 13:00:00', 'KANTOR WALINAGARI KUNPAR'),
(417, 'UPTD  SAMSAT SIJUNJUNG', 'KAMANG BARU, KAB. SIJUNJUNG', '2021-03-18', '08:30:00 s/d 13:00:00', 'KANTOR WALINAGARI KUNPAR'),
(418, 'UPTD  SAMSAT SIJUNJUNG', 'KAMANG BARU, KAB. SIJUNJUNG', '2021-04-01', '08:30:00 s/d 13:00:00', 'KANTOR WALINAGARI KUNPAR'),
(419, 'UPTD  SAMSAT SIJUNJUNG', 'KAMANG BARU, KAB. SIJUNJUNG', '2021-04-15', '08:30:00 s/d 13:00:00', 'KANTOR WALINAGARI KUNPAR'),
(420, 'UPTD  SAMSAT SIJUNJUNG', 'KAMANG BARU, KAB. SIJUNJUNG', '2021-05-06', '08:30:00 s/d 13:00:00', 'KANTOR WALINAGARI KUNPAR'),
(421, 'UPTD  SAMSAT SIJUNJUNG', 'KAMANG BARU, KAB. SIJUNJUNG', '2021-05-20', '08:30:00 s/d 13:00:00', 'KANTOR WALINAGARI KUNPAR'),
(422, 'UPTD  SAMSAT SIJUNJUNG', 'KAMANG BARU, KAB. SIJUNJUNG', '2021-06-03', '08:30:00 s/d 13:00:00', 'KANTOR WALINAGARI KUNPAR'),
(423, 'UPTD  SAMSAT SIJUNJUNG', 'KAMANG BARU, KAB. SIJUNJUNG', '2021-06-17', '08:30:00 s/d 13:00:00', 'KANTOR WALINAGARI KUNPAR'),
(424, 'UPTD  SAMSAT SIJUNJUNG', 'KAMANG BARU, KAB. SIJUNJUNG', '2021-07-01', '08:30:00 s/d 13:00:00', 'KANTOR WALINAGARI KUNPAR');
INSERT INTO `samkel` (`id_samkel`, `nama_uptd`, `kecamatan`, `tanggal`, `jadwal`, `lokasi`) VALUES
(425, 'UPTD  SAMSAT SIJUNJUNG', 'KAMANG BARU, KAB. SIJUNJUNG', '2021-07-22', '08:30:00 s/d 13:00:00', 'KANTOR WALINAGARI KUNPAR'),
(426, 'UPTD  SAMSAT SIJUNJUNG', 'KAMANG BARU, KAB. SIJUNJUNG', '2021-08-05', '08:30:00 s/d 13:00:00', 'KANTOR WALINAGARI KUNPAR'),
(427, 'UPTD  SAMSAT SIJUNJUNG', 'KAMANG BARU, KAB. SIJUNJUNG', '2021-08-19', '08:30:00 s/d 13:00:00', 'KANTOR WALINAGARI KUNPAR'),
(428, 'UPTD  SAMSAT SIJUNJUNG', 'KAMANG BARU, KAB. SIJUNJUNG', '2021-09-02', '08:30:00 s/d 13:00:00', 'KANTOR WALINAGARI KUNPAR'),
(429, 'UPTD  SAMSAT SIJUNJUNG', 'KAMANG BARU, KAB. SIJUNJUNG', '2021-09-23', '08:30:00 s/d 13:00:00', 'KANTOR WALINAGARI KUNPAR'),
(430, 'UPTD  SAMSAT SIJUNJUNG', 'KAMANG BARU, KAB. SIJUNJUNG', '2021-10-07', '08:30:00 s/d 13:00:00', 'KANTOR WALINAGARI KUNPAR'),
(431, 'UPTD  SAMSAT SIJUNJUNG', 'KAMANG BARU, KAB. SIJUNJUNG', '2021-10-21', '08:30:00 s/d 13:00:00', 'KANTOR WALINAGARI KUNPAR'),
(432, 'UPTD  SAMSAT SIJUNJUNG', 'KAMANG BARU, KAB. SIJUNJUNG', '2021-11-04', '08:30:00 s/d 13:00:00', 'KANTOR WALINAGARI KUNPAR'),
(433, 'UPTD  SAMSAT SIJUNJUNG', 'KAMANG BARU, KAB. SIJUNJUNG', '2021-11-18', '08:30:00 s/d 13:00:00', 'KANTOR WALINAGARI KUNPAR'),
(434, 'UPTD  SAMSAT SAWAHLUNTO', 'KAMANG BARU, KAB. SIJUNJUNG', '2021-12-02', '08:30:00 s/d 13:00:00', 'KANTOR WALINAGARI KUNPAR'),
(435, 'UPTD  SAMSAT SIJUNJUNG', 'KAMANG BARU, KAB. SIJUNJUNG', '2021-01-04', '08:30:00 s/d 13:00:00', 'KANTOR WALINAGARI SUNGAI BATUANG'),
(436, 'UPTD  SAMSAT SIJUNJUNG', 'KAMANG BARU, KAB. SIJUNJUNG', '2021-02-01', '08:00:00 s/d 13:00:00', 'KANTOR WALINAGARI SUNGAI BATUANG'),
(437, 'UPTD  SAMSAT SIJUNJUNG', 'KAMANG BARU, KAB. SIJUNJUNG', '2021-03-01', '08:00:00 s/d 13:00:00', 'KANTOR WALINAGARI SUNGAI BATUANG'),
(438, 'UPTD  SAMSAT SIJUNJUNG', 'KAMANG BARU, KAB. SIJUNJUNG', '2021-04-05', '08:30:00 s/d 13:00:00', 'KANTOR WALINAGARI SUNGAI BATUANG'),
(439, 'UPTD  SAMSAT SIJUNJUNG', 'KAMANG BARU, KAB. SIJUNJUNG', '2021-05-03', '08:30:00 s/d 13:00:00', 'KANTOR WALINAGARI SUNGAI BATUANG'),
(440, 'UPTD  SAMSAT SIJUNJUNG', 'KAMANG BARU, KAB. SIJUNJUNG', '2021-06-07', '08:30:00 s/d 13:00:00', 'KANTOR WALINAGARI SUNGAI BATUANG'),
(441, 'UPTD  SAMSAT SIJUNJUNG', 'KAMANG BARU, KAB. SIJUNJUNG', '2021-07-05', '08:30:00 s/d 13:00:00', 'KANTOR WALINAGARI SUNGAI BATUANG'),
(442, 'UPTD  SAMSAT SIJUNJUNG', 'KAMANG BARU, KAB. SIJUNJUNG', '2021-08-02', '08:30:00 s/d 13:00:00', 'KANTOR WALINAGARI SUNGAI BATUANG'),
(443, 'UPTD  SAMSAT SIJUNJUNG', 'KAMANG BARU, KAB. SIJUNJUNG', '2021-09-06', '08:30:00 s/d 13:00:00', 'KANTOR WALINAGARI SUNGAI BATUANG'),
(444, 'UPTD  SAMSAT SIJUNJUNG', 'KAMANG BARU, KAB. SIJUNJUNG', '2021-10-04', '08:30:00 s/d 13:00:00', 'KANTOR WALINAGARI SUNGAI BATUANG'),
(445, 'UPTD  SAMSAT SIJUNJUNG', 'KAMANG BARU, KAB. SIJUNJUNG', '2021-11-01', '08:30:00 s/d 13:00:00', 'KANTOR WALINAGARI SUNGAI BATUANG'),
(446, 'UPTD  SAMSAT SIJUNJUNG', 'KAMANG BARU, KAB. SIJUNJUNG', '2021-12-06', '08:30:00 s/d 13:00:00', 'KANTOR WALINAGARI SUNGAI BATUANG'),
(447, 'UPTD  SAMSAT SIJUNJUNG', 'KAMANG BARU, KAB. SIJUNJUNG', '2021-11-09', '08:30:00 s/d 13:00:00', 'PASAR NAGARI TIMPEH IV'),
(448, 'UPTD  SAMSAT SIJUNJUNG', 'KAMANG BARU, KAB. SIJUNJUNG', '2021-12-14', '08:00:00 s/d 13:00:00', 'PASAR NAGARI TIMPEH IV'),
(449, 'UPTD  SAMSAT SIJUNJUNG', 'LUBUK TAROK, KAB. SIJUNJUNG', '2021-11-03', '08:30:00 s/d 13:00:00', 'KANTOR WALINAGARI LUBUK TAROK'),
(450, 'UPTD  SAMSAT SIJUNJUNG', 'LUBUK TAROK, KAB. SIJUNJUNG', '2021-12-08', '08:00:00 s/d 13:00:00', 'KANTOR WALINAGARI LUBUK TAROK'),
(451, 'UPTD  SAMSAT SIJUNJUNG', 'SUMPUR KUDUS, KAB. SIJUNJUNG', '2021-11-02', '08:30:00 s/d 13:00:00', 'KANTOR PDE E-KTP KUMANIS'),
(452, 'UPTD  SAMSAT SIJUNJUNG', 'SUMPUR KUDUS, KAB. SIJUNJUNG', '2021-12-07', '08:30:00 s/d 13:00:00', 'KANTOR PDE E-KTP KUMANIS'),
(453, 'UPTD SAMSAT PADANG ARO', 'KOTO PARIK GADANG DIATEH', '2021-11-05', '08:30:00 s/d 13:00:00', 'PASAR SUNGAI KALU'),
(454, 'UPTD SAMSAT PADANG ARO', 'KOTO PARIK GADANG DIATEH', '2021-12-03', '08:30:00 s/d 13:00:00', 'PASAR SUNGAI KALU'),
(455, 'UPTD SAMSAT PADANG ARO', 'PAUAH DUO, KAB. SOLOK SELATAN', '2021-11-03', '08:30:00 s/d 13:00:00', 'PASAR PAKAN SALASA'),
(456, 'UPTD SAMSAT PADANG ARO', 'PAUAH DUO, KAB. SOLOK SELATAN', '2021-12-07', '08:30:00 s/d 13:00:00', 'PASAR PAKAN SALASA'),
(457, 'UPTD SAMSAT PADANG ARO', 'SANGIR BATANG HARI, KAB. SOLOK SELATAN', '2021-11-11', '08:30:00 s/d 13:00:00', 'PASAR ABAI'),
(458, 'UPTD SAMSAT PADANG ARO', 'SANGIR BATANG HARI, KAB. SOLOK SELATAN', '2021-12-09', '08:30:00 s/d 13:00:00', 'PASAR ABAI'),
(459, 'UPTD SAMSAT PADANG ARO', 'SANGIR JUJUAN, KAB. SOLOK SELATAN', '2021-11-08', '08:30:00 s/d 13:00:00', 'KANTOR WALI LUBUK MALAKO'),
(460, 'UPTD SAMSAT PADANG ARO', 'SANGIR JUJUAN, KAB. SOLOK SELATAN', '2021-12-06', '08:30:00 s/d 13:00:00', 'KANTOR WALI LUBUK MALAKO'),
(461, 'UPTD SAMSAT PADANG', 'BUNGUS TELUK KABUNG', '2021-02-24', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT BUNGUS TELUK KABUNG'),
(462, 'UPTD SAMSAT PADANG', 'KOTO TANGAH', '2021-01-13', '08:30:00 s/d 13:00:00', 'SIMP. KALUMPANG LUBUK BUAYA'),
(463, 'UPTD SAMSAT PADANG', 'BUNGUS TELUK KABUNG,', '2021-03-24', '08:30:00 s/d 13:00:00', 'Kantor Camat Bungus Teluk Kabung'),
(464, 'UPTD SAMSAT PADANG', 'BUNGUS TELUK KABUNG,', '2021-04-21', '08:30:00 s/d 13:00:00', 'Kantor Camat Bungus Teluk Kabung'),
(465, 'UPTD SAMSAT PADANG', 'BUNGUS TELUK KABUNG,', '2021-06-23', '08:30:00 s/d 13:00:00', 'Kantor Camat Bungus Teluk Kabung'),
(466, 'UPTD SAMSAT PADANG', 'BUNGUS TELUK KABUNG,', '2021-07-21', '08:30:00 s/d 13:00:00', 'Kantor Camat Bungus Teluk Kabung'),
(467, 'UPTD SAMSAT PADANG', 'BUNGUS TELUK KABUNG,', '2021-08-25', '08:30:00 s/d 13:00:00', 'Kantor Camat Bungus Teluk Kabung'),
(468, 'UPTD SAMSAT PADANG', 'BUNGUS TELUK KABUNG,', '2021-09-22', '08:30:00 s/d 13:00:00', 'Kantor Camat Bungus Teluk Kabung'),
(469, 'UPTD SAMSAT PADANG', 'BUNGUS TELUK KABUNG,', '2021-11-24', '08:30:00 s/d 13:00:00', 'Kantor Camat Bungus Teluk Kabung'),
(470, 'UPTD SAMSAT PADANG', 'Padang Selatan', '2021-11-19', '08:30:00 s/d 11:30:00', 'Simpang Ganting'),
(471, 'UPTD SAMSAT PADANG', 'PADANG SELATAN', '2021-11-22', '08:30:00 s/d 13:00:00', 'IMAM BONJOL'),
(472, 'UPTD  SAMSAT SIMPANG EMPAT', 'LEMBAH MALINTANG, KAB. PASAMAN BARAT', '2021-11-22', '08:00:00 s/d 14:00:00', 'KANTOR BANK NAGARI CAB. UJUNG GADING'),
(473, 'UPTD  SAMSAT  PAYAKUMBUH', 'AKABILURU, KAB. LIMA PULUH KOTA', '2021-11-26', '08:30:00 s/d 13:00:00', 'PASAR PILADANG'),
(474, 'UPTD SAMSAT PADANG', 'LUBUK KILANGAN, KOTA PADANG', '2021-11-25', '08:30:00 s/d 13:00:00', 'PORTAL INDARUNG'),
(475, 'UPTD SAMSAT PADANG', 'PADANG BARAT, KOTA PADANG', '2021-11-23', '08:30:00 s/d 13:00:00', 'TAMAN MELATI'),
(476, 'UPTD SAMSAT PADANG', 'PADANG BARAT, KOTA PADANG', '2021-10-29', '08:30:00 s/d 13:00:00', 'Jalan Patimura'),
(477, 'UPTD SAMSAT PADANG', 'PADANG SELATAN, KOTA PADANG', '2021-11-30', '08:00:00 s/d 14:00:00', 'PONDOK'),
(478, 'UPTD SAMSAT PADANG', 'PADANG TIMUR, KOTA PADANG', '2021-11-26', '08:30:00 s/d 13:00:00', 'Tugu Simpang Haru'),
(479, 'UPTD SAMSAT PADANG', 'KOTO TANGAH', '2021-02-10', '08:30:00 s/d 13:00:00', 'Simpang Kalumpang Lubuk Buaya'),
(480, 'UPTD SAMSAT PADANG', 'KOTO TANGAH', '2021-03-10', '08:30:00 s/d 13:00:00', 'SIMPABG KALUMPANG LUBUK BUAYA'),
(481, 'UPTD SAMSAT PADANG', 'KOTO TANGAH', '2021-04-07', '08:30:00 s/d 13:00:00', 'Simpang Kalumpang Lubuk Buaya'),
(482, 'UPTD SAMSAT PADANG', 'Koto Tangah', '2021-06-09', '08:30:00 s/d 13:00:00', 'Simpang Kalumpang Lubuk Buaya'),
(483, 'UPTD SAMSAT PADANG', 'KOTO TANGAH', '2021-07-07', '08:30:00 s/d 13:00:00', 'Simpang Kalumpang Lubuk Buaya'),
(484, 'UPTD SAMSAT PADANG', 'KOTO TANGAH', '2021-08-11', '08:30:00 s/d 13:00:00', 'Simpang Kalumpang Lubuk Buaya'),
(485, 'UPTD SAMSAT PADANG', 'KOTO TANGAH', '2021-09-08', '08:30:00 s/d 13:00:00', 'Simpang Kalumpang Lubuk Buaya'),
(486, 'UPTD SAMSAT PADANG', 'KOTO TANGAH', '2021-11-10', '08:30:00 s/d 13:00:00', 'Simpang Kalumpang Lubuk Buaya'),
(487, 'UPTD SAMSAT PADANG', 'Koto Tangah', '2021-12-08', '08:30:00 s/d 13:00:00', 'Simpang Kalumpang Lubuk Buaya'),
(488, 'UPTD SAMSAT PADANG', 'LUBUK BEGALUNG', '2021-01-07', '08:30:00 s/d 13:00:00', 'PO FAMILY RAYA CENGKEH'),
(489, 'UPTD SAMSAT PADANG', 'KURANJI', '2021-01-06', '08:30:00 s/d 13:00:00', 'CAFE UJE BP KURANJI'),
(490, 'UPTD SAMSAT PADANG', 'LUBUK KILANGAN', '2021-01-12', '08:30:00 s/d 13:00:00', 'PORTAL INDARUNG'),
(491, 'UPTD SAMSAT PADANG', 'LUBUK KILANGAN', '2021-01-28', '08:30:00 s/d 13:00:00', 'PORTAL INDARUNG'),
(492, 'UPTD SAMSAT PADANG', 'LUBUK BEGALUNG', '2021-01-18', '08:30:00 s/d 13:00:00', 'PONDOK IKAN BAKAR ARU'),
(493, 'UPTD SAMSAT PADANG', 'NANGGALO', '2021-01-18', '08:30:00 s/d 13:00:00', 'JEMBATAN SITEBA'),
(494, 'UPTD SAMSAT PADANG', 'PADANG BARAT', '2021-01-01', '08:30:00 s/d 13:00:00', 'JALAN PATIMURA'),
(495, 'UPTD SAMSAT PADANG', 'PADANG BARAT', '2021-01-26', '08:30:00 s/d 13:00:00', 'TAMAN MELATI'),
(496, 'UPTD SAMSAT PADANG', 'PADANG SELATAN', '2021-01-05', '08:30:00 s/d 13:00:00', 'PONDOK'),
(497, 'UPTD SAMSAT PADANG', 'PADANG SELATAN', '2021-01-15', '08:30:00 s/d 13:00:00', 'SIMPANG GANTING'),
(498, 'UPTD SAMSAT PADANG', 'PADANG SELATAN', '2021-01-22', '08:30:00 s/d 13:00:00', 'SIMPANG GANTING'),
(499, 'UPTD SAMSAT PADANG', 'PADANG TIMUR', '2021-01-11', '08:30:00 s/d 13:00:00', 'TUGU SIMPANG HARU'),
(500, 'UPTD SAMSAT PADANG', 'PADANG TIMUR', '2021-01-21', '08:30:00 s/d 13:00:00', 'TUGU SIMPANG HARU'),
(501, 'UPTD SAMSAT PADANG', 'PADANG TIMUR', '2021-01-29', '08:30:00 s/d 13:00:00', 'TUGU SIMPANG HARU'),
(502, 'UPTD SAMSAT PADANG', 'PADANG UTARA', '2021-01-14', '08:30:00 s/d 13:00:00', 'Simpang PU PSDA'),
(503, 'UPTD SAMSAT PADANG', 'PAUH', '2021-01-20', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT PAUH'),
(504, 'UPTD SAMSAT PADANG', 'SIPORA UTARA', '2021-01-14', '08:30:00 s/d 13:00:00', 'KANTOR DISHUB TUA PEJAT'),
(505, 'UPTD SAMSAT PADANG', 'PAUH', '2021-01-20', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT PAUH'),
(506, 'UPTD SAMSAT PADANG', 'SIPORA UTARA, KAB. MENTAWAI', '2021-01-14', '08:00:00 s/d 13:00:00', '	KANTOR DISHUB TUA PEJAT'),
(507, 'UPTD SAMSAT PADANG', 'KURANJI', '2021-02-03', '08:30:00 s/d 13:00:00', 'CAFE UJE BP KURANJI'),
(508, 'UPTD SAMSAT PADANG', 'LUBUK BEGALUNG', '2021-02-04', '08:30:00 s/d 13:00:00', 'PO FAMILY RAYA CENGKEH'),
(509, 'UPTD SAMSAT PADANG', 'LUBUK BEGALUNG', '2021-02-15', '08:30:00 s/d 13:00:00', 'PONDOK IKAN BAKAR ARU'),
(510, 'UPTD SAMSAT PADANG', 'LUBUK KILANGAN', '2021-02-09', '08:30:00 s/d 13:00:00', 'PORTAL INDARUNG'),
(511, 'UPTD SAMSAT PADANG', 'LUBUK KILANGAN', '2021-02-25', '08:30:00 s/d 13:00:00', 'PORTAL INDARUNG'),
(512, 'UPTD SAMSAT PADANG', 'NANGGALO', '2021-02-16', '08:30:00 s/d 13:00:00', 'JEMBATAN SITEBA'),
(513, 'UPTD SAMSAT PADANG', 'PADANG BARAT', '2021-02-01', '08:30:00 s/d 13:00:00', 'JALAN PATIMURA'),
(514, 'UPTD SAMSAT PADANG', 'PADANG BARAT', '2021-02-23', '08:30:00 s/d 13:00:00', 'TAMAN MELATI'),
(515, 'UPTD SAMSAT PADANG', 'PADANG SELATAN', '2021-02-22', '08:30:00 s/d 13:00:00', 'IMAM BONJOL'),
(516, 'UPTD SAMSAT PADANG', 'PADANG SELATAN', '2021-02-02', '08:30:00 s/d 13:00:00', 'PONDOK'),
(517, 'UPTD SAMSAT PADANG', 'PADANG SELATAN', '2021-02-19', '08:30:00 s/d 13:00:00', 'SIMPANG GANTING'),
(518, 'UPTD SAMSAT PADANG', 'PADANG SELATAN', '2021-02-05', '08:30:00 s/d 13:00:00', 'IMAM BONJOL'),
(519, 'UPTD SAMSAT PADANG', 'PADANG TIMUR', '2021-02-08', '08:30:00 s/d 13:00:00', 'TUGU SIMPANG HARU'),
(520, 'UPTD SAMSAT PADANG', 'PADANG TIMUR', '2021-02-18', '08:30:00 s/d 13:00:00', 'TUGU SIMPANG HARU'),
(521, 'UPTD SAMSAT PADANG', 'PADANG TIMUR', '2021-02-26', '08:30:00 s/d 13:00:00', 'TUGUY SIMPANG HARU'),
(522, 'UPTD SAMSAT PADANG', 'PADANG UTARA', '2021-02-11', '08:30:00 s/d 13:00:00', 'Simpang PU PSDA'),
(523, 'UPTD SAMSAT PADANG', ' PAUH', '2021-02-17', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT PAUH'),
(524, 'UPTD SAMSAT PADANG', 'SIPORA UTARA, KAB. MENTAWAI', '2021-02-18', '08:30:00 s/d 13:00:00', 'KANTOR DISHUB TUA PEJAT'),
(525, 'UPTD SAMSAT PADANG', 'KURANJI', '2021-03-03', '08:30:00 s/d 13:00:00', 'CAFE UJE BP KURANJI'),
(526, 'UPTD SAMSAT PADANG', 'Kuranji', '2021-03-31', '08:30:00 s/d 13:00:00', 'Cafe UJ BP Kuranji'),
(527, 'UPTD SAMSAT PADANG', 'LUBUK BEGALUNG', '2021-03-04', '08:00:00 s/d 13:00:00', 'PO FAMILY RAYA CENGKEH'),
(528, 'UPTD SAMSAT PADANG', 'LUBUK BEGALUNG', '2021-03-15', '08:00:00 s/d 13:00:00', 'PONDOK IKAN BAKAR ARU'),
(529, 'UPTD SAMSAT PADANG', 'LUBUK KILANGAN', '2021-03-09', '08:00:00 s/d 13:00:00', 'PORTAL INDARUNG'),
(530, 'UPTD SAMSAT PADANG', 'LUBUK KILANGAN', '2021-03-25', '08:00:00 s/d 13:00:00', 'PORTAL INDARUNG'),
(531, 'UPTD SAMSAT PADANG', 'PADANG BARAT', '2021-03-01', '08:00:00 s/d 13:00:00', 'JALAN PATIMURA'),
(532, 'UPTD SAMSAT PADANG', 'NANGGALO', '2021-03-16', '08:00:00 s/d 13:00:00', 'JEMBATAN SITEBA'),
(533, 'UPTD SAMSAT PADANG', 'Padang Barat', '2021-03-29', '08:00:00 s/d 13:00:00', 'Jalan Patimura'),
(534, 'UPTD SAMSAT PADANG', 'Padang Barat', '2021-03-23', '08:00:00 s/d 13:00:00', 'Taman Melati'),
(535, 'UPTD SAMSAT PADANG', 'PADANG SELATAN', '2021-03-05', '08:00:00 s/d 13:00:00', 'Imam Bonjol'),
(536, 'UPTD SAMSAT PADANG', 'PADANG SELATAN', '2021-03-22', '08:00:00 s/d 13:00:00', 'IMAM BONJOL'),
(537, 'UPTD SAMSAT PADANG', 'PADANG SELATAN', '2021-03-02', '08:00:00 s/d 13:00:00', 'PONDOK'),
(538, 'UPTD SAMSAT PADANG', 'Padang Selatan', '2021-03-30', '08:00:00 s/d 13:00:00', 'Pondok'),
(539, 'UPTD SAMSAT PADANG', '', '2021-03-19', '08:00:00 s/d 13:00:00', 'Simpang Ganting'),
(540, 'UPTD SAMSAT PADANG', 'PADANG TIMUR', '2021-03-08', '08:00:00 s/d 13:00:00', 'TUGU SIMPANG HARU '),
(541, 'UPTD SAMSAT PADANG', 'PADANG TIMUR', '2021-03-18', '08:00:00 s/d 13:00:00', 'TUGU SIMPANG HARU'),
(542, 'UPTD SAMSAT PADANG', 'Padang Timur', '2021-03-26', '08:00:00 s/d 13:00:00', 'Tugu Simpang Haru'),
(543, 'UPTD SAMSAT PADANG', 'PAUH', '2021-03-17', '08:00:00 s/d 13:00:00', 'KANTOR CAMAT PAUH'),
(544, 'UPTD SAMSAT PADANG', 'SIPORA UTARA, KAB. MENTAWAI', '2021-03-05', '08:00:00 s/d 13:00:00', 'KANTOR DISHUB TUA PEJAT'),
(545, 'UPTD SAMSAT PADANG', 'Kuranji', '2021-04-28', '08:00:00 s/d 13:00:00', 'Cafe UJ BP Kuranji'),
(546, 'UPTD SAMSAT PADANG', 'LUBUK BEGALUNG', '2021-04-01', '08:30:00 s/d 13:00:00', 'PO. FAMILY RAYA CENGKEH'),
(547, 'UPTD SAMSAT PADANG', 'LUBUK BEGALUNG', '2021-04-29', '08:00:00 s/d 13:00:00', 'PO. FAMILY RAYA CENGKEH'),
(548, 'UPTD SAMSAT PADANG', 'LUBUK BEGALUNG', '2021-04-12', '08:00:00 s/d 13:00:00', 'PONDOK IKAN BAKAR ARU'),
(549, 'UPTD SAMSAT PADANG', 'LUBUK KILANGAN', '2021-04-06', '08:00:00 s/d 13:00:00', 'PORTAL INDARUNG'),
(550, 'UPTD SAMSAT PADANG', 'LUBUK KILANGAN', '2021-04-22', '08:30:00 s/d 13:00:00', 'PORTAL INDARUNG'),
(551, 'UPTD SAMSAT PADANG', 'PADANG BARAT', '2021-04-26', '08:30:00 s/d 13:00:00', 'Jalan Patimura'),
(552, 'UPTD SAMSAT PADANG', 'PADANG BARAT', '2021-10-20', '08:30:00 s/d 13:00:00', 'Taman Melati'),
(553, 'UPTD SAMSAT PADANG', 'PADANG SELATAN', '2021-04-19', '08:30:00 s/d 13:00:00', 'IMAM BONJOL'),
(554, 'UPTD SAMSAT PADANG', 'PADANG SELATAN', '2021-04-30', '08:30:00 s/d 13:00:00', 'IMAM BONJOL'),
(555, 'UPTD SAMSAT PADANG', 'PADANG SELATAN', '2021-04-27', '08:30:00 s/d 13:00:00', 'Pondok'),
(556, 'UPTD SAMSAT PADANG', 'PADANG SELATAN', '2021-04-09', '08:30:00 s/d 13:00:00', 'SIMPANG GANTING'),
(557, 'UPTD SAMSAT PADANG', 'PADANG SELATAN', '2021-04-19', '08:00:00 s/d 13:00:00', 'SIMPANG GANTING'),
(558, 'UPTD SAMSAT PADANG', 'PADANG TIMUR', '0000-00-00', '08:00:00 s/d 13:00:00', 'TUGU SIMPANG HARU'),
(559, 'UPTD SAMSAT PADANG', 'PADANG TIMUR', '2021-04-15', '08:30:00 s/d 13:00:00', 'TUGU SIMPANG HARU'),
(560, 'UPTD SAMSAT PADANG', 'PADANG TIMUR', '2021-04-23', '08:30:00 s/d 13:00:00', 'TUGU SIMPANG HARU'),
(561, 'UPTD SAMSAT PADANG', 'PADANG UTARA', '2021-04-08', '08:30:00 s/d 13:00:00', 'SIMPANG PU PSDA'),
(562, 'UPTD SAMSAT PADANG', 'PAUH', '2021-04-14', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT PAUH'),
(563, 'UPTD SAMSAT PADANG', 'SIPORA UTARA, KAB. MENTAWAI', '2021-04-08', '08:30:00 s/d 13:00:00', 'KANTOR DISHUB TUA PEJAT'),
(564, 'UPTD SAMSAT PADANG', 'KURANJI', '2021-05-05', '08:30:00 s/d 13:00:00', 'CAFE UJE BP KURANJI'),
(565, 'UPTD SAMSAT PADANG', 'LUBUK BEGALUNG', '2021-05-06', '08:30:00 s/d 13:00:00', 'PO FAMILY RAYA CENGKEH'),
(566, 'UPTD SAMSAT PADANG', 'LUBUK KILANGAN', '2021-05-11', '08:30:00 s/d 13:00:00', 'PORTAL INDARUNG'),
(567, 'UPTD SAMSAT PADANG', 'LUBUK KILANGAN', '2021-05-27', '08:30:00 s/d 13:00:00', 'PORTAL INDARUNG'),
(568, 'UPTD SAMSAT PADANG', 'PADANG BARAT', '2021-05-03', '08:30:00 s/d 13:00:00', 'JALAN PATIMURA'),
(569, 'UPTD SAMSAT PADANG', 'PADANG BARAT', '2021-05-31', '08:30:00 s/d 13:00:00', 'JALAN PATIMURA'),
(570, 'UPTD SAMSAT PADANG', 'PADANG BARAT', '2021-05-25', '08:30:00 s/d 13:00:00', 'TAMAN MELATI'),
(571, 'UPTD SAMSAT PADANG', 'PADANG SELATAN', '2021-05-07', '08:30:00 s/d 13:00:00', 'IMAM BONJOL'),
(572, 'UPTD SAMSAT PADANG', 'KURANJI', '2021-06-02', '08:00:00 s/d 13:00:00', 'CAFE UJE BP KURANJI'),
(573, 'UPTD SAMSAT PADANG', 'KURANJI', '2021-06-02', '08:00:00 s/d 13:00:00', 'CAFE UJE BP KURANJI'),
(574, 'UPTD SAMSAT PADANG', 'KURANJI', '2021-07-28', '08:00:00 s/d 13:00:00', 'CAFE UJE BP KURANJI'),
(575, 'UPTD SAMSAT PADANG', 'KURANJI', '2021-08-04', '08:00:00 s/d 13:00:00', 'CAFE UJE BP KURANJI'),
(576, 'UPTD SAMSAT PADANG', 'LUBUK BEGALUNG', '2021-07-01', '08:00:00 s/d 13:00:00', 'PO. FAMILY RAYA CENGKEH'),
(577, 'UPTD SAMSAT PADANG', 'KURANJI', '2021-09-01', '08:00:00 s/d 13:00:00', 'CAFE UJE BP KURANJI'),
(578, 'UPTD SAMSAT PADANG', 'KURANJI', '2021-09-29', '08:00:00 s/d 13:00:00', 'CAFE UJE BP KURANJI'),
(579, 'UPTD SAMSAT PADANG', 'LUBUK BEGALUNG', '2021-06-03', '08:00:00 s/d 13:00:00', 'PO. FAMILY RAYA CENGKEH'),
(580, 'UPTD SAMSAT PADANG', 'LUBUK BEGALUNG', '2021-07-29', '08:00:00 s/d 13:00:00', 'PO. FAMILY RAYA CENGKEH'),
(581, 'UPTD SAMSAT PADANG', 'LUBUK BEGALUNG', '2021-08-05', '08:00:00 s/d 13:00:00', 'PO. FAMILY RAYA CENGKEH'),
(582, 'UPTD SAMSAT PADANG', 'LUBUK BEGALUNG', '2021-09-03', '08:00:00 s/d 13:00:00', 'PO. FAMILY RAYA CENGKEH'),
(583, 'UPTD SAMSAT PADANG', 'LUBUK BEGALUNG', '2021-06-14', '08:00:00 s/d 13:00:00', 'PONDOK IKAN BAKAR ARU'),
(584, 'UPTD SAMSAT PADANG', 'LUBUK BEGALUNG', '2021-07-12', '08:00:00 s/d 13:00:00', 'PONDOK IKAN BAKAR ARU'),
(585, 'UPTD SAMSAT PADANG', 'LUBUK BEGALUNG', '2021-08-16', '08:00:00 s/d 13:00:00', 'PONDOK IKAN BAKAR ARU'),
(586, 'UPTD SAMSAT PADANG', 'LUBUK BEGALUNG', '2021-09-13', '08:00:00 s/d 13:00:00', 'PONDOK IKAN BAKAR ARU'),
(587, 'UPTD SAMSAT PADANG', 'LUBUK KILANGAN', '2021-06-08', '08:00:00 s/d 13:00:00', 'PORTAL INDARUNG'),
(588, 'UPTD SAMSAT PADANG', 'LUBUK KILANGAN', '2021-06-24', '08:00:00 s/d 13:00:00', 'PORTAL INDARUNG'),
(589, 'UPTD SAMSAT PADANG', 'LUBUK KILANGAN', '2021-07-06', '08:00:00 s/d 13:00:00', 'PORTAL INDARUNG'),
(590, 'UPTD SAMSAT PADANG', 'LUBUK KILANGAN', '2021-07-22', '08:00:00 s/d 13:00:00', 'PORTAL INDARUNG'),
(591, 'UPTD SAMSAT PADANG', 'LUBUK KILANGAN', '2021-08-26', '08:00:00 s/d 13:00:00', 'PORTAL INDARUNG'),
(592, 'UPTD SAMSAT PADANG', 'LUBUK KILANGAN', '2021-09-07', '08:00:00 s/d 13:00:00', 'PORTAL INDARUNG'),
(593, 'UPTD SAMSAT PADANG', 'LUBUK KILANGAN', '2021-09-23', '08:00:00 s/d 13:00:00', 'PORTAL INDARUNG'),
(595, 'UPTD SAMSAT PADANG', 'NANGGALO', '2021-06-15', '08:00:00 s/d 13:00:00', 'JEMBATAN SITEBA'),
(596, 'UPTD SAMSAT PADANG', 'NANGGALO', '2021-07-13', '08:00:00 s/d 13:00:00', 'JEMBATAN SITEBA'),
(597, 'UPTD SAMSAT PADANG', 'NANGGALO', '2021-09-14', '08:00:00 s/d 13:00:00', 'JEMBATAN SITEBA'),
(598, 'UPTD SAMSAT PADANG', 'PADANG BARAT', '2021-06-28', '08:00:00 s/d 13:00:00', 'JALAN PATIMURA'),
(599, 'UPTD SAMSAT PADANG', 'PADANG BARAT', '2021-07-26', '08:00:00 s/d 13:00:00', 'JALAN PATIMURA'),
(600, 'UPTD SAMSAT PADANG', 'PADANG BARAT', '2021-08-02', '08:00:00 s/d 13:00:00', 'JALAN PATIMURA'),
(601, 'UPTD SAMSAT PADANG', 'PADANG BARAT', '2021-08-30', '08:00:00 s/d 13:00:00', 'JALAN PATIMURA'),
(602, 'UPTD SAMSAT PADANG', 'PADANG BARAT', '2021-09-27', '08:00:00 s/d 13:00:00', 'JALAN PATIMURA'),
(603, 'UPTD SAMSAT PADANG', 'PADANG BARAT', '2021-06-22', '08:00:00 s/d 13:00:00', 'TAMAN MELATI'),
(604, 'UPTD SAMSAT PADANG', 'PADANG BARAT', '2021-08-24', '08:00:00 s/d 13:00:00', 'TAMAN MELATI'),
(605, 'UPTD SAMSAT PADANG', 'PADANG BARAT', '2021-09-21', '08:00:00 s/d 13:00:00', 'TAMAN MELATI'),
(606, 'UPTD SAMSAT PADANG', 'PADANG SELATAN', '2021-06-04', '08:00:00 s/d 13:00:00', 'IMAM BONJOL'),
(607, 'UPTD SAMSAT PADANG', 'PADANG SELATAN', '2021-06-04', '08:00:00 s/d 13:00:00', 'IMAM BONJOL'),
(608, 'UPTD SAMSAT PADANG', 'PADANG SELATAN', '2021-06-21', '08:00:00 s/d 13:00:00', 'IMAM BONJOL'),
(609, 'UPTD SAMSAT PADANG', 'PADANG SELATAN', '2021-07-02', '08:00:00 s/d 13:00:00', 'IMAM BONJOL'),
(610, 'UPTD SAMSAT PADANG', 'PADANG SELATAN', '2021-07-19', '08:00:00 s/d 13:00:00', 'IMAM BONJOL'),
(611, 'UPTD SAMSAT PADANG', 'PADANG SELATAN', '2021-07-30', '08:00:00 s/d 13:00:00', 'IMAM BONJOL'),
(612, 'UPTD SAMSAT PADANG', 'PADANG SELATAN', '2021-08-06', '08:00:00 s/d 13:00:00', 'IMAM BONJOL'),
(613, 'UPTD SAMSAT PADANG', 'PADANG SELATAN', '2021-08-23', '08:00:00 s/d 13:00:00', 'IMAM BONJOL'),
(614, 'UPTD SAMSAT PADANG', 'PADANG SELATAN', '2021-09-03', '08:00:00 s/d 13:00:00', 'IMAM BONJOL'),
(615, 'UPTD SAMSAT PADANG', 'PADANG SELATAN', '2021-09-20', '08:00:00 s/d 13:00:00', 'IMAM BONJOL'),
(616, 'UPTD SAMSAT PADANG', 'PADANG SELATAN', '2021-06-29', '08:00:00 s/d 13:00:00', 'PONDOK'),
(617, 'UPTD SAMSAT PADANG', 'PADANG SELATAN', '2021-07-27', '08:00:00 s/d 13:00:00', 'PONDOK'),
(618, 'UPTD SAMSAT PADANG', 'PADANG SELATAN', '2021-08-03', '08:00:00 s/d 13:00:00', 'PONDOK'),
(619, 'UPTD SAMSAT PADANG', 'PADANG SELATAN', '2021-08-31', '08:00:00 s/d 13:00:00', 'PONDOK'),
(620, 'UPTD SAMSAT PADANG', 'PADANG SELATAN', '2021-09-28', '08:00:00 s/d 13:00:00', 'PONDOK'),
(621, 'UPTD SAMSAT PADANG', 'PADANG SELATAN', '2021-06-11', '08:00:00 s/d 13:00:00', 'SIMPANG GANTING'),
(622, 'UPTD SAMSAT PADANG', 'PADANG SELATAN', '2021-06-18', '08:00:00 s/d 13:00:00', 'SIMPANG GANTING'),
(623, 'UPTD SAMSAT PADANG', 'PADANG SELATAN', '2021-07-09', '08:00:00 s/d 13:00:00', 'SIMPANG GANTING'),
(624, 'UPTD SAMSAT PADANG', 'PADANG SELATAN', '2021-07-16', '08:00:00 s/d 13:00:00', 'SIMPANG GANTING'),
(625, 'UPTD SAMSAT PADANG', 'PADANG SELATAN', '2021-08-13', '08:00:00 s/d 13:00:00', 'SIMPANG GANTING'),
(626, 'UPTD SAMSAT PADANG', 'PADANG SELATAN', '2021-08-20', '08:00:00 s/d 13:00:00', 'SIMPANG GANTING'),
(627, 'UPTD SAMSAT PADANG', 'PADANG SELATAN', '2021-09-10', '08:00:00 s/d 13:00:00', 'SIMPANG GANTING'),
(628, 'UPTD SAMSAT PADANG', 'PADANG SELATAN', '2021-09-17', '08:00:00 s/d 13:00:00', 'SIMPANG GANTING'),
(629, 'UPTD SAMSAT PADANG', 'PADANG TIMUR', '2021-06-07', '08:00:00 s/d 13:00:00', 'TUGU SIMPANG HARU'),
(630, 'UPTD SAMSAT PADANG', 'PADANG TIMUR', '2021-06-17', '08:00:00 s/d 13:00:00', 'TUGU SIMPANG HARU'),
(631, 'UPTD SAMSAT PADANG', 'PADANG TIMUR', '2021-06-25', '08:00:00 s/d 13:00:00', 'TUGU SIMPANG HARU'),
(632, 'UPTD SAMSAT PADANG', 'PADANG TIMUR', '2021-07-05', '08:00:00 s/d 13:00:00', 'TUGU SIMPANG HARU'),
(633, 'UPTD SAMSAT PADANG', 'PADANG TIMUR', '2021-07-15', '08:00:00 s/d 13:00:00', 'TUGU SIMPANG HARU'),
(634, 'UPTD SAMSAT PADANG', 'PADANG TIMUR', '2021-07-23', '08:00:00 s/d 13:00:00', 'TUGU SIMPANG HARU'),
(635, 'UPTD SAMSAT PADANG', 'PADANG TIMUR', '2021-08-09', '08:00:00 s/d 13:00:00', 'TUGU SIMPANG HARU'),
(636, 'UPTD SAMSAT PADANG', 'PADANG TIMUR', '2021-08-19', '08:00:00 s/d 13:00:00', 'TUGU SIMPANG HARU'),
(637, 'UPTD SAMSAT PADANG', 'PADANG TIMUR', '2021-08-27', '08:00:00 s/d 13:00:00', 'TUGU SIMPANG HARU'),
(638, 'UPTD SAMSAT PADANG', 'PADANG TIMUR', '2021-09-06', '08:00:00 s/d 13:00:00', 'TUGU SIMPANG HARU'),
(639, 'UPTD SAMSAT PADANG', 'PADANG TIMUR', '2021-09-16', '08:00:00 s/d 13:00:00', 'TUGU SIMPANG HARU'),
(640, 'UPTD SAMSAT PADANG', 'PADANG TIMUR', '2021-09-24', '08:00:00 s/d 13:00:00', 'TUGU SIMPANG HARU'),
(641, 'UPTD SAMSAT PADANG', 'PADANG UTARA', '2021-06-10', '08:00:00 s/d 13:00:00', 'SIMPANG PU PSDA'),
(642, 'UPTD SAMSAT PADANG', 'PADANG UTARA', '2021-07-08', '08:00:00 s/d 13:00:00', 'SIMPANG PU PSDA'),
(643, 'UPTD SAMSAT PADANG', 'PADANG UTARA', '2021-08-12', '08:00:00 s/d 13:00:00', 'SIMPANG PU PSDA'),
(644, 'UPTD SAMSAT PADANG', 'PADANG UTARA', '2021-09-09', '08:00:00 s/d 13:00:00', 'SIMPANG PU PSDA'),
(645, 'UPTD SAMSAT PADANG', 'PAUH', '2021-06-16', '08:00:00 s/d 13:00:00', 'KANTOR CAMAT PAUH'),
(646, 'UPTD SAMSAT PADANG', 'PAUH', '2021-07-14', '08:00:00 s/d 13:00:00', 'KANTOR CAMAT PAUH'),
(647, 'UPTD SAMSAT PADANG', 'PAUH', '2021-08-18', '08:00:00 s/d 13:00:00', 'KANTOR CAMAT PAUH'),
(648, 'UPTD SAMSAT PADANG', 'PAUH', '2021-09-15', '08:00:00 s/d 13:00:00', 'KANTOR CAMAT PAUH'),
(649, 'UPTD SAMSAT PADANG', 'SIPORA UTARA, KAB. MENTAWAI', '2021-06-10', '08:00:00 s/d 13:00:00', 'KANTOR DISHUB TUA PEJAT'),
(650, 'UPTD SAMSAT PADANG', 'SIPORA UTARA, KAB. MENTAWAI', '2021-07-08', '08:00:00 s/d 13:00:00', 'KANTOR DISHUB TUA PEJAT'),
(651, 'UPTD SAMSAT PADANG', 'SIPORA UTARA, KAB. MENTAWAI', '2021-08-12', '08:00:00 s/d 13:00:00', 'KANTOR DISHUB TUA PEJAT'),
(652, 'UPTD SAMSAT PADANG', 'SIPORA UTARA, KAB. MENTAWAI', '2021-09-09', '08:00:00 s/d 13:00:00', 'KANTOR DISHUB TUA PEJAT'),
(653, 'UPTD SAMSAT PADANG', 'SIPORA UTARA, KAB. MENTAWAI', '2021-10-07', '08:00:00 s/d 13:00:00', 'KANTOR DISHUB TUA PEJAT'),
(654, 'UPTD SAMSAT PADANG', 'SIPORA UTARA, KAB. MENTAWAI', '2021-11-11', '08:00:00 s/d 13:00:00', 'KANTOR DISHUB TUA PEJAT'),
(655, 'UPTD SAMSAT PADANG', 'SIPORA UTARA, KAB. MENTAWAI', '2021-12-09', '08:00:00 s/d 13:00:00', 'KANTOR DISHUB TUA PEJAT'),
(656, 'UPTD SAMSAT PADANG', 'KURANJI', '2021-12-15', '08:00:00 s/d 13:00:00', 'CAFE UJE BP KURANJI'),
(657, 'UPTD SAMSAT PADANG', 'LUBUK BEGALUNG', '2021-12-02', '08:00:00 s/d 13:00:00', 'PO. FAMILY RAYA CENGKEH'),
(658, 'UPTD SAMSAT PADANG', 'LUBUK BEGALUNG', '2021-12-13', '08:00:00 s/d 13:00:00', 'PONDOK IKAN BAKAR ARU'),
(659, 'UPTD SAMSAT PADANG', 'LUBUK BEGALUNG', '2021-12-07', '08:00:00 s/d 13:00:00', 'PORTAL INDARUNG'),
(660, 'UPTD SAMSAT PADANG', 'NAGGGALO', '2021-12-14', '08:00:00 s/d 13:00:00', 'JEMBATAN SITEBA'),
(661, 'UPTD SAMSAT PADANG', 'PADANG SELATAN', '2021-12-03', '08:00:00 s/d 13:00:00', 'IMAM BONJOL'),
(662, 'UPTD SAMSAT PADANG ARO', 'KOTO PARIK GADANG DIATEH', '2021-01-08', '08:00:00 s/d 13:00:00', 'PASAR SUNGAI KALU'),
(663, 'UPTD SAMSAT PADANG ARO', 'KOTO PARIK GADANG DIATEH', '2021-02-05', '08:00:00 s/d 13:00:00', 'PASAR SUNGAI KALU'),
(664, 'UPTD SAMSAT PADANG ARO', 'KOTO PARIK GADANG DIATEH', '2021-03-05', '08:00:00 s/d 13:00:00', 'PASAR SUNGAI KALU'),
(665, 'UPTD SAMSAT PADANG ARO', 'KOTO PARIK GADANG DIATEH', '2021-04-09', '08:00:00 s/d 13:00:00', 'PASAR SUNGAI KALU'),
(666, 'UPTD SAMSAT PADANG ARO', 'KOTO PARIK GADANG DIATEH', '2021-05-07', '08:00:00 s/d 13:00:00', 'PASAR SUNGAI KALU'),
(667, 'UPTD SAMSAT PADANG ARO', 'KOTO PARIK GADANG DIATEH', '2021-06-04', '08:00:00 s/d 13:00:00', 'PASAR SUNGAI KALU'),
(668, 'UPTD SAMSAT PADANG ARO', 'KOTO PARIK GADANG DIATEH', '2021-07-09', '08:00:00 s/d 13:00:00', 'PASAR SUNGAI KALU'),
(669, 'UPTD SAMSAT PADANG ARO', 'KOTO PARIK GADANG DIATEH', '2021-08-06', '08:00:00 s/d 13:00:00', 'PASAR SUNGAI KALU'),
(670, 'UPTD SAMSAT PADANG ARO', 'KOTO PARIK GADANG DIATEH', '2021-09-10', '08:00:00 s/d 13:00:00', 'PASAR SUNGAI KALU'),
(671, 'UPTD SAMSAT PADANG ARO', 'KOTO PARIK GADANG DIATEH', '2021-10-01', '08:00:00 s/d 13:00:00', 'PASAR SUNGAI KALU'),
(672, 'UPTD SAMSAT PADANG ARO', 'PAUAH DUO, KAB. SOLOK SELATAN', '2021-01-12', '08:30:00 s/d 13:00:00', 'PASAR PAKAN SALASA'),
(673, 'UPTD SAMSAT PADANG ARO', 'PAUAH DUO, KAB. SOLOK SELATAN', '2021-02-02', '08:30:00 s/d 13:00:00', 'PASAR PAKAN SALASA'),
(674, 'UPTD SAMSAT PADANG ARO', 'PAUAH DUO, KAB. SOLOK SELATAN', '2021-03-09', '08:30:00 s/d 13:00:00', 'PASAR PAKAN SALASA'),
(675, 'UPTD SAMSAT PADANG ARO', 'PAUAH DUO, KAB. SOLOK SELATAN', '2021-04-13', '08:30:00 s/d 13:00:00', 'PASAR PAKAN SALASA'),
(676, 'UPTD SAMSAT PADANG ARO', 'PAUAH DUO, KAB. SOLOK SELATAN', '2021-05-11', '08:30:00 s/d 13:00:00', 'PASAR PAKAN SALASA'),
(677, 'UPTD SAMSAT PADANG ARO', 'PAUAH DUO, KAB. SOLOK SELATAN', '2021-06-08', '08:30:00 s/d 13:00:00', 'PASAR PAKAN SALASA'),
(678, 'UPTD SAMSAT PADANG ARO', 'PAUAH DUO, KAB. SOLOK SELATAN', '2021-07-13', '08:30:00 s/d 13:00:00', 'PASAR PAKAN SALASA'),
(679, 'UPTD SAMSAT PADANG ARO', 'PAUAH DUO, KAB. SOLOK SELATAN', '2021-08-03', '08:30:00 s/d 13:00:00', 'PASAR PAKAN SALASA'),
(680, 'UPTD SAMSAT PADANG ARO', 'PAUAH DUO, KAB. SOLOK SELATAN', '2021-09-07', '08:30:00 s/d 13:00:00', 'PASAR PAKAN SALASA'),
(681, 'UPTD SAMSAT PADANG ARO', 'PAUAH DUO, KAB. SOLOK SELATAN', '2021-10-12', '08:30:00 s/d 13:00:00', 'PASAR PAKAN SALASA'),
(682, 'UPTD SAMSAT PADANG ARO', 'SANGIR BATANG HARI', '2021-02-11', '08:30:00 s/d 13:00:00', 'PASAR ABAI'),
(683, 'UPTD SAMSAT PADANG ARO', 'SANGIR BATANG HARI', '2021-03-18', '08:30:00 s/d 13:00:00', 'PASAR ABAI'),
(684, 'UPTD SAMSAT PADANG ARO', 'SANGIR BATANG HARI', '2021-04-08', '08:30:00 s/d 13:00:00', 'PASAR ABAI'),
(685, 'UPTD SAMSAT PADANG ARO', 'SANGIR BATANG HARI', '2021-05-06', '08:30:00 s/d 13:00:00', 'PASAR ABAI'),
(686, 'UPTD SAMSAT PADANG ARO', 'SANGIR BATANG HARI', '2021-06-10', '08:30:00 s/d 13:00:00', 'PASAR ABAI'),
(687, 'UPTD SAMSAT PADANG ARO', 'SANGIR BATANG HARI', '2021-07-08', '08:30:00 s/d 13:00:00', 'PASAR ABAI'),
(688, 'UPTD SAMSAT PADANG ARO', 'SANGIR BATANG HARI', '2021-08-12', '08:30:00 s/d 13:00:00', 'PASAR ABAI'),
(689, 'UPTD SAMSAT PADANG ARO', 'SANGIR BATANG HARI', '2021-09-09', '08:30:00 s/d 13:00:00', 'PASAR ABAI'),
(690, 'UPTD SAMSAT PADANG ARO', 'SANGIR BATANG HARI', '2021-10-14', '08:30:00 s/d 13:00:00', 'PASAR ABAI'),
(691, 'UPTD SAMSAT PADANG ARO', 'SANGIR BATANG HARI', '2021-01-07', '08:30:00 s/d 13:00:00', 'PASAR ABAI'),
(692, 'UPTD SAMSAT PADANG ARO', 'SANGIR JUJUAN', '2021-02-08', '08:30:00 s/d 13:00:00', 'KANTOR WALI LUBUK MALAKO'),
(693, 'UPTD SAMSAT PADANG ARO', 'SANGIR JUJUAN', '2021-03-08', '08:30:00 s/d 13:00:00', 'KANTOR WALI LUBUK MALAKO'),
(694, 'UPTD SAMSAT PADANG ARO', 'SANGIR JUJUAN', '2021-04-12', '08:30:00 s/d 13:00:00', 'KANTOR WALI LUBUK MALAKO'),
(695, 'UPTD SAMSAT PADANG ARO', 'SANGIR JUJUAN', '2021-05-10', '08:30:00 s/d 13:00:00', 'KANTOR WALI LUBUK MALAKO'),
(696, 'UPTD SAMSAT PADANG ARO', 'SANGIR JUJUAN', '2021-06-14', '08:30:00 s/d 13:00:00', 'KANTOR WALI LUBUK MALAKO'),
(697, 'UPTD SAMSAT PADANG ARO', 'SANGIR JUJUAN', '2021-07-12', '08:30:00 s/d 13:00:00', 'KANTOR WALI LUBUK MALAKO'),
(698, 'UPTD SAMSAT PADANG ARO', 'SANGIR JUJUAN', '2021-08-09', '08:30:00 s/d 13:00:00', 'KANTOR WALI LUBUK MALAKO'),
(699, 'UPTD SAMSAT PADANG ARO', 'SANGIR JUJUAN', '2021-09-13', '08:30:00 s/d 13:00:00', 'PASAR ABAI'),
(700, 'UPTD SAMSAT PADANG ARO', 'SANGIR JUJUAN', '2021-10-11', '08:30:00 s/d 13:00:00', 'PASAR ABAI'),
(701, 'UPTD SAMSAT PADANG ARO', 'SANGIR JUJUAN', '2021-01-11', '08:30:00 s/d 13:00:00', 'PASAR ABAI'),
(702, 'UPTD SAMSAT KOTA PARIAMAN', 'IV KOTO AUR MALINTANG', '2021-01-13', '08:30:00 s/d 13:00:00', 'SIMPANG TIGA BATU BASA'),
(703, 'UPTD SAMSAT KOTA PARIAMAN', 'IV KOTO AUR MALINTANG', '2021-02-10', '08:30:00 s/d 13:00:00', 'SIMPANG TIGA BATU BASA'),
(704, 'UPTD SAMSAT KOTA PARIAMAN', 'IV KOTO AUR MALINTANG', '2021-03-17', '08:30:00 s/d 13:00:00', 'SIMPANG TIGA BATU BASA'),
(705, 'UPTD SAMSAT KOTA PARIAMAN', 'IV KOTO AUR MALINTANG', '2021-04-14', '08:30:00 s/d 13:00:00', 'SIMPANG TIGA BATU BASA'),
(706, 'UPTD SAMSAT KOTA PARIAMAN', 'IV KOTO AUR MALINTANG', '2021-05-05', '08:30:00 s/d 13:00:00', 'SIMPANG TIGA BATU BASA'),
(707, 'UPTD SAMSAT KOTA PARIAMAN', 'IV KOTO AUR MALINTANG', '2021-06-16', '08:30:00 s/d 13:00:00', 'SIMPANG TIGA BATU BASA'),
(708, 'UPTD SAMSAT KOTA PARIAMAN', 'IV KOTO AUR MALINTANG', '2021-07-14', '08:30:00 s/d 13:00:00', 'SIMPANG TIGA BATU BASA'),
(709, 'UPTD SAMSAT KOTA PARIAMAN', 'IV KOTO AUR MALINTANG', '2021-08-11', '08:30:00 s/d 13:00:00', 'SIMPANG TIGA BATU BASA'),
(710, 'UPTD SAMSAT KOTA PARIAMAN', 'IV KOTO AUR MALINTANG', '2021-09-15', '08:30:00 s/d 13:00:00', 'SIMPANG TIGA BATU BASA'),
(711, 'UPTD SAMSAT KOTA PARIAMAN', 'IV KOTO AUR MALINTANG', '2021-10-13', '08:30:00 s/d 13:00:00', 'SIMPANG TIGA BATU BASA'),
(712, 'UPTD SAMSAT KOTA PARIAMAN', 'PARIAMAN SELATAN', '2021-02-15', '08:30:00 s/d 13:00:00', 'PASAR BALAI KURAI TAJI'),
(713, 'UPTD SAMSAT KOTA PARIAMAN', 'PARIAMAN SELATAN', '2021-03-15', '08:30:00 s/d 13:00:00', 'PASAR BALAI KURAI TAJI'),
(714, 'UPTD SAMSAT KOTA PARIAMAN', 'PARIAMAN SELATAN', '2021-04-12', '08:30:00 s/d 13:00:00', 'PASAR BALAI KURAI TAJI'),
(715, 'UPTD SAMSAT KOTA PARIAMAN', 'PARIAMAN SELATAN', '2021-05-24', '08:30:00 s/d 13:00:00', 'PASAR BALAI KURAI TAJI'),
(716, 'UPTD SAMSAT KOTA PARIAMAN', 'PARIAMAN SELATAN', '2021-06-14', '08:30:00 s/d 13:00:00', 'PASAR BALAI KURAI TAJI'),
(717, 'UPTD SAMSAT KOTA PARIAMAN', 'PARIAMAN SELATAN', '2021-07-12', '08:30:00 s/d 13:00:00', 'PASAR BALAI KURAI TAJI'),
(718, 'UPTD SAMSAT KOTA PARIAMAN', 'PARIAMAN SELATAN', '2021-08-16', '08:30:00 s/d 13:00:00', 'PASAR BALAI KURAI TAJI'),
(719, 'UPTD SAMSAT KOTA PARIAMAN', 'PARIAMAN SELATAN', '2021-09-15', '08:30:00 s/d 13:00:00', 'PASAR BALAI KURAI TAJI'),
(720, 'UPTD SAMSAT KOTA PARIAMAN', 'PARIAMAN SELATAN', '2021-10-13', '08:30:00 s/d 13:00:00', 'PASAR BALAI KURAI TAJI'),
(721, 'UPTD SAMSAT KOTA PARIAMAN', 'PARIAMAN SELATAN', '2021-01-11', '08:30:00 s/d 13:00:00', 'PASAR BALAI KURAI TAJI'),
(722, 'UPTD SAMSAT KOTA PARIAMAN', 'PARIAMAN TENGAHT', '2021-02-03', '08:30:00 s/d 13:00:00', 'LAPANGAN MERDEKA'),
(723, 'UPTD SAMSAT KOTA PARIAMAN', 'PARIAMAN TENGAH', '2021-03-03', '08:30:00 s/d 13:00:00', 'LAPANGAN MERDEKA'),
(724, 'UPTD SAMSAT KOTA PARIAMAN', 'PARIAMAN TENGAH', '2021-04-07', '08:30:00 s/d 13:00:00', 'LAPANGAN MERDEKA'),
(725, 'UPTD SAMSAT KOTA PARIAMAN', 'PARIAMAN TENGAH', '2021-05-04', '08:30:00 s/d 13:00:00', 'LAPANGAN MERDEKA'),
(726, 'UPTD SAMSAT KOTA PARIAMAN', 'PARIAMAN TENGAH', '2021-06-09', '08:30:00 s/d 13:00:00', 'LAPANGAN MERDEKA'),
(727, 'UPTD SAMSAT KOTA PARIAMAN', 'PARIAMAN TENGAH', '2021-07-07', '08:30:00 s/d 13:00:00', 'LAPANGAN MERDEKA'),
(728, 'UPTD SAMSAT KOTA PARIAMAN', 'PARIAMAN TENGAH', '2021-08-04', '08:30:00 s/d 13:00:00', 'LAPANGAN MERDEKA'),
(729, 'UPTD SAMSAT KOTA PARIAMAN', 'PARIAMAN TENGAH', '2021-09-08', '08:30:00 s/d 13:00:00', 'LAPANGAN MERDEKA'),
(730, 'UPTD SAMSAT KOTA PARIAMAN', 'PARIAMAN TENGAH', '2021-10-06', '08:30:00 s/d 13:00:00', 'LAPANGAN MERDEKA'),
(731, 'UPTD SAMSAT KOTA PARIAMAN', 'PARIAMAN TENGAH', '2021-01-06', '08:30:00 s/d 13:00:00', 'LAPANGAN MERDEKA'),
(732, 'UPTD SAMSAT KOTA PARIAMAN', 'SUNGAI GERINGGING', '2021-02-08', '08:30:00 s/d 13:00:00', 'SIMPANG TUGU PASAR SEI GERINGGING'),
(733, 'UPTD SAMSAT KOTA PARIAMAN', 'SUNGAI GERINGGING', '2021-03-08', '08:30:00 s/d 13:00:00', 'SIMPANG TUGU PASAR SEI GERINGGING'),
(734, 'UPTD SAMSAT KOTA PARIAMAN', 'SUNGAI GERINGGING', '2021-04-05', '08:30:00 s/d 13:00:00', 'SIMPANG TUGU PASAR SEI GERINGGING'),
(735, 'UPTD SAMSAT KOTA PARIAMAN', 'SUNGAI GERINGGING', '2021-05-10', '08:30:00 s/d 13:00:00', 'SIMPANG TUGU PASAR SEI GERINGGING'),
(736, 'UPTD SAMSAT KOTA PARIAMAN', 'SUNGAI GERINGGING', '2021-06-07', '08:30:00 s/d 13:00:00', 'SIMPANG TUGU PASAR SEI GERINGGING'),
(737, 'UPTD SAMSAT KOTA PARIAMAN', 'PSUNGAI GERINGGING', '2021-07-05', '08:30:00 s/d 13:00:00', 'SIMPANG TUGU PASAR SEI GERINGGING'),
(738, 'UPTD SAMSAT KOTA PARIAMAN', 'SUNGAI GERINGGING', '2021-08-09', '08:30:00 s/d 13:00:00', 'SIMPANG TUGU PASAR SEI GERINGGING'),
(739, 'UPTD SAMSAT KOTA PARIAMAN', 'SUNGAI GERINGGING', '2021-09-06', '08:30:00 s/d 13:00:00', 'SIMPANG TUGU PASAR SEI GERINGGING'),
(740, 'UPTD SAMSAT KOTA PARIAMAN', 'SUNGAI GERINGGING', '2021-10-04', '08:30:00 s/d 13:00:00', 'SIMPANG TUGU PASAR SEI GERINGGING'),
(741, 'UPTD SAMSAT KOTA PARIAMAN', 'SUNGAI GERINGGING', '2021-01-04', '08:30:00 s/d 13:00:00', 'SIMPANG TUGU PASAR SEI GERINGGING'),
(742, 'UPTD SAMSAT KOTA PARIAMAN', 'SUNGAI LIMAU, KAB. PADANG PARIAMAN', '2021-02-04', '08:30:00 s/d 13:00:00', 'TERMINAL PASAR SEI LIMAU'),
(743, 'UPTD SAMSAT KOTA PARIAMAN', 'SUNGAI LIMAU, KAB. PADANG PARIAMAN', '2021-03-04', '08:30:00 s/d 13:00:00', 'TERMINAL PASAR SEI LIMAU'),
(744, 'UPTD SAMSAT KOTA PARIAMAN', 'SUNGAI LIMAU, KAB. PADANG PARIAMAN', '2021-04-08', '08:30:00 s/d 13:00:00', 'TERMINAL PASAR SEI LIMAU'),
(745, 'UPTD SAMSAT KOTA PARIAMAN', 'SUNGAI LIMAU, KAB. PADANG PARIAMAN', '2021-05-06', '08:30:00 s/d 13:00:00', 'TERMINAL PASAR SEI LIMAU'),
(746, 'UPTD SAMSAT KOTA PARIAMAN', 'SUNGAI LIMAU, KAB. PADANG PARIAMAN', '2021-06-10', '08:30:00 s/d 13:00:00', 'TERMINAL PASAR SEI LIMAU'),
(747, 'UPTD SAMSAT KOTA PARIAMAN', 'SUNGAI LIMAU, KAB. PADANG PARIAMAN', '2021-07-08', '08:30:00 s/d 13:00:00', 'TERMINAL PASAR SEI LIMAU'),
(748, 'UPTD SAMSAT KOTA PARIAMAN', 'SUNGAI LIMAU, KAB. PADANG PARIAMAN', '2021-08-05', '08:30:00 s/d 13:00:00', 'TERMINAL PASAR SEI LIMAU'),
(749, 'UPTD SAMSAT KOTA PARIAMAN', 'SUNGAI LIMAU, KAB. PADANG PARIAMAN', '2021-09-09', '08:30:00 s/d 13:00:00', 'TERMINAL PASAR SEI LIMAU'),
(750, 'UPTD SAMSAT KOTA PARIAMAN', 'SUNGAI LIMAU, KAB. PADANG PARIAMAN', '2021-10-07', '08:30:00 s/d 13:00:00', 'TERMINAL PASAR SEI LIMAU'),
(751, 'UPTD SAMSAT KOTA PARIAMAN', 'SUNGAI LIMAU, KAB. PADANG PARIAMAN', '2021-01-07', '08:30:00 s/d 13:00:00', 'TERMINAL PASAR SEI LIMAU'),
(752, 'UPTD SAMSAT KOTA PARIAMAN', 'V KOTO KAMPUNG DALAM', '2021-02-11', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT KAMPUNG DALAM'),
(753, 'UPTD SAMSAT KOTA PARIAMAN', 'V KOTO KAMPUNG DALAM', '2021-03-18', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT KAMPUNG DALAM'),
(754, 'UPTD SAMSAT KOTA PARIAMAN', 'V KOTO KAMPUNG DALAM', '2021-04-15', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT KAMPUNG DALAM'),
(755, 'UPTD SAMSAT KOTA PARIAMAN', 'V KOTO KAMPUNG DALAM', '2021-05-20', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT KAMPUNG DALAM'),
(756, 'UPTD SAMSAT KOTA PARIAMAN', 'V KOTO KAMPUNG DALAM', '2021-06-17', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT KAMPUNG DALAM'),
(757, 'UPTD SAMSAT KOTA PARIAMAN', 'V KOTO KAMPUNG DALAM', '2021-07-15', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT KAMPUNG DALAM'),
(758, 'UPTD SAMSAT KOTA PARIAMAN', 'V KOTO KAMPUNG DALAM', '2021-08-12', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT KAMPUNG DALAM'),
(759, 'UPTD SAMSAT KOTA PARIAMAN', 'V KOTO KAMPUNG DALAM', '2021-09-16', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT KAMPUNG DALAM'),
(760, 'UPTD SAMSAT KOTA PARIAMAN', 'V KOTO KAMPUNG DALAM', '2021-10-14', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT KAMPUNG DALAM'),
(761, 'UPTD SAMSAT KOTA PARIAMAN', 'V KOTO KAMPUNG DALAM', '2021-01-14', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT KAMPUNG DALAM'),
(762, 'UPTD SAMSAT AROSUKA', 'LEMBAH GUMANTI, KAB. SOLOK', '2021-01-04', '08:30:00 s/d 13:00:00', 'TERMINAL ALAHAN PANJANG'),
(763, 'UPTD SAMSAT AROSUKA', 'LEMBAH GUMANTI, KAB. SOLOK', '2021-01-07', '08:30:00 s/d 13:00:00', 'TERMINAL ALAHAN PANJANG'),
(764, 'UPTD SAMSAT AROSUKA', 'LEMBAH GUMANTI, KAB. SOLOK', '2021-01-11', '', 'TERMINAL ALAHAN PANJANG'),
(765, 'UPTD SAMSAT AROSUKA', 'LEMBAH GUMANTI, KAB. SOLOK', '2021-01-11', '08:30:00 s/d 13:00:00', 'TERMINAL ALAHAN PANJANG'),
(766, 'UPTD SAMSAT AROSUKA', 'LEMBAH GUMANTI, KAB. SOLOK', '2021-01-14', '', 'TERMINAL ALAHAN PANJANG'),
(767, 'UPTD SAMSAT AROSUKA', 'LEMBAH GUMANTI, KAB. SOLOK', '2021-01-18', '08:30:00 s/d 13:00:00', 'TERMINAL ALAHAN PANJANG'),
(768, 'UPTD SAMSAT AROSUKA', 'LEMBAH GUMANTI, KAB. SOLOK', '2021-02-04', '08:30:00 s/d 13:00:00', 'TERMINAL ALAHAN PANJANG'),
(769, 'UPTD SAMSAT AROSUKA', 'LEMBAH GUMANTI, KAB. SOLOK', '2021-02-08', '08:30:00 s/d 13:00:00', 'TERMINAL ALAHAN PANJANG'),
(770, 'UPTD SAMSAT AROSUKA', 'LEMBAH GUMANTI, KAB. SOLOK', '2021-02-11', '08:30:00 s/d 13:00:00', 'TERMINAL ALAHAN PANJANG'),
(771, 'UPTD SAMSAT AROSUKA', 'LEMBAH GUMANTI, KAB. SOLOK', '2021-02-15', '08:30:00 s/d 13:00:00', 'TERMINAL ALAHAN PANJANG'),
(772, 'UPTD SAMSAT AROSUKA', 'LEMBAH GUMANTI, KAB. SOLOK', '2021-02-18', '08:30:00 s/d 13:00:00', 'TERMINAL ALAHAN PANJANG'),
(773, 'UPTD SAMSAT AROSUKA', 'LEMBAH GUMANTI, KAB. SOLOK', '2021-03-01', '08:30:00 s/d 13:00:00', 'TERMINAL ALAHAN PANJANG'),
(774, 'UPTD SAMSAT AROSUKA', 'LEMBAH GUMANTI, KAB. SOLOK', '2021-03-04', '08:30:00 s/d 13:00:00', 'TERMINAL ALAHAN PANJANG'),
(775, 'UPTD SAMSAT AROSUKA', 'LEMBAH GUMANTI, KAB. SOLOK', '2021-03-08', '08:30:00 s/d 13:00:00', 'TERMINAL ALAHAN PANJANG'),
(776, 'UPTD SAMSAT AROSUKA', 'LEMBAH GUMANTI, KAB. SOLOK', '2021-03-15', '08:30:00 s/d 13:00:00', 'TERMINAL ALAHAN PANJANG'),
(777, 'UPTD SAMSAT AROSUKA', 'LEMBAH GUMANTI, KAB. SOLOK', '2021-03-18', '08:30:00 s/d 13:00:00', 'TERMINAL ALAHAN PANJANG'),
(778, 'UPTD SAMSAT AROSUKA', 'LEMBAH GUMANTI, KAB. SOLOK', '2021-04-05', '08:30:00 s/d 13:00:00', 'TERMINAL ALAHAN PANJANG'),
(779, 'UPTD SAMSAT AROSUKA', 'LEMBAH GUMANTI, KAB. SOLOK', '2021-04-15', '08:30:00 s/d 13:00:00', 'TERMINAL ALAHAN PANJANG'),
(780, 'UPTD SAMSAT AROSUKA', 'LEMBAH GUMANTI, KAB. SOLOK', '2021-04-19', '08:30:00 s/d 13:00:00', 'TERMINAL ALAHAN PANJANG'),
(781, 'UPTD SAMSAT AROSUKA', 'LEMBAH GUMANTI, KAB. SOLOK', '2021-04-22', '08:30:00 s/d 13:00:00', 'TERMINAL ALAHAN PANJANG'),
(782, 'UPTD SAMSAT AROSUKA', 'LEMBAH GUMANTI, KAB. SOLOK', '2021-05-03', '08:30:00 s/d 13:00:00', 'TERMINAL ALAHAN PANJANG'),
(783, 'UPTD SAMSAT AROSUKA', 'LEMBAH GUMANTI, KAB. SOLOK', '2021-05-06', '08:30:00 s/d 13:00:00', 'TERMINAL ALAHAN PANJANG'),
(784, 'UPTD SAMSAT AROSUKA', 'LEMBAH GUMANTI, KAB. SOLOK', '2021-05-10', '08:30:00 s/d 13:00:00', 'TERMINAL ALAHAN PANJANG'),
(785, 'UPTD SAMSAT AROSUKA', 'LEMBAH GUMANTI, KAB. SOLOK', '2021-05-24', '08:30:00 s/d 13:00:00', 'TERMINAL ALAHAN PANJANG'),
(786, 'UPTD SAMSAT AROSUKA', 'LEMBAH GUMANTI, KAB. SOLOK', '2021-05-27', '08:30:00 s/d 13:00:00', 'TERMINAL ALAHAN PANJANG'),
(787, 'UPTD SAMSAT AROSUKA', 'LEMBAH GUMANTI, KAB. SOLOK', '2021-06-03', '08:30:00 s/d 13:00:00', 'TERMINAL ALAHAN PANJANG'),
(788, 'UPTD SAMSAT AROSUKA', 'LEMBAH GUMANTI, KAB. SOLOK', '2021-06-07', '08:30:00 s/d 13:00:00', 'TERMINAL ALAHAN PANJANG'),
(789, 'UPTD SAMSAT AROSUKA', 'LEMBAH GUMANTI, KAB. SOLOK', '2021-06-10', '08:30:00 s/d 13:00:00', 'TERMINAL ALAHAN PANJANG'),
(790, 'UPTD SAMSAT AROSUKA', 'LEMBAH GUMANTI, KAB. SOLOK', '2021-06-14', '08:30:00 s/d 13:00:00', 'TERMINAL ALAHAN PANJANG'),
(791, 'UPTD SAMSAT AROSUKA', 'LEMBAH GUMANTI, KAB. SOLOK', '2021-06-17', '08:30:00 s/d 13:00:00', 'TERMINAL ALAHAN PANJANG'),
(792, 'UPTD SAMSAT AROSUKA', 'LEMBAH GUMANTI, KAB. SOLOK', '2021-07-01', '08:30:00 s/d 13:00:00', 'TERMINAL ALAHAN PANJANG'),
(793, 'UPTD SAMSAT AROSUKA', 'LEMBAH GUMANTI, KAB. SOLOK', '2021-07-05', '08:30:00 s/d 13:00:00', 'TERMINAL ALAHAN PANJANG'),
(794, 'UPTD SAMSAT AROSUKA', 'LEMBAH GUMANTI, KAB. SOLOK', '2021-07-12', '08:30:00 s/d 13:00:00', 'TERMINAL ALAHAN PANJANG'),
(795, 'UPTD SAMSAT AROSUKA', 'LEMBAH GUMANTI, KAB. SOLOK', '2021-07-08', '08:30:00 s/d 13:00:00', 'TERMINAL ALAHAN PANJANG'),
(796, 'UPTD SAMSAT AROSUKA', 'LEMBAH GUMANTI, KAB. SOLOK', '2021-07-12', '08:30:00 s/d 13:00:00', 'TERMINAL ALAHAN PANJANG'),
(797, 'UPTD SAMSAT AROSUKA', 'LEMBAH GUMANTI, KAB. SOLOK', '2021-07-15', '08:30:00 s/d 13:00:00', 'TERMINAL ALAHAN PANJANG'),
(798, 'UPTD SAMSAT AROSUKA', 'LEMBAH GUMANTI, KAB. SOLOK', '2021-08-02', '08:30:00 s/d 13:00:00', 'TERMINAL ALAHAN PANJANG'),
(799, 'UPTD SAMSAT AROSUKA', 'LEMBAH GUMANTI, KAB. SOLOK', '2021-08-12', '08:30:00 s/d 13:00:00', 'TERMINAL ALAHAN PANJANG'),
(800, 'UPTD SAMSAT AROSUKA', 'LEMBAH GUMANTI, KAB. SOLOK', '2021-08-19', '08:30:00 s/d 13:00:00', 'TERMINAL ALAHAN PANJANG'),
(801, 'UPTD SAMSAT AROSUKA', 'LEMBAH GUMANTI, KAB. SOLOK', '2021-08-23', '08:30:00 s/d 13:00:00', 'TERMINAL ALAHAN PANJANG'),
(802, 'UPTD SAMSAT AROSUKA', 'LEMBAH GUMANTI, KAB. SOLOK', '2021-09-02', '08:30:00 s/d 13:00:00', 'TERMINAL ALAHAN PANJANG'),
(803, 'UPTD SAMSAT AROSUKA', 'LEMBAH GUMANTI, KAB. SOLOK', '2021-09-06', '08:30:00 s/d 13:00:00', 'TERMINAL ALAHAN PANJANG'),
(804, 'UPTD SAMSAT AROSUKA', 'LEMBAH GUMANTI, KAB. SOLOK', '2021-09-09', '08:30:00 s/d 13:00:00', 'TERMINAL ALAHAN PANJANG'),
(805, 'UPTD SAMSAT AROSUKA', 'LEMBAH GUMANTI, KAB. SOLOK', '2021-09-13', '08:30:00 s/d 13:00:00', 'TERMINAL ALAHAN PANJANG'),
(806, 'UPTD SAMSAT AROSUKA', 'LEMBAH GUMANTI, KAB. SOLOK', '2021-09-16', '08:30:00 s/d 13:00:00', 'TERMINAL ALAHAN PANJANG'),
(807, 'UPTD SAMSAT AROSUKA', 'LEMBAH GUMANTI, KAB. SOLOK', '2021-04-08', '08:30:00 s/d 13:00:00', 'TERMINAL ALAHAN PANJANG'),
(808, 'UPTD SAMSAT AROSUKA', 'LEMBAH GUMANTI, KAB. SOLOK', '2021-08-05', '08:30:00 s/d 13:00:00', 'TERMINAL ALAHAN PANJANG'),
(809, 'UPTD SAMSAT PARIAMAN', '2 X 11 KAYU TANAM', '2021-02-17', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT KAYU TANAM'),
(810, 'UPTD SAMSAT PARIAMAN', '2 X 11 KAYU TANAM', '2021-01-20', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT KAYU TANAM'),
(811, 'UPTD SAMSAT PARIAMAN', '2 X 11 KAYU TANAM', '2021-03-10', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT KAYU TANAM'),
(812, 'UPTD SAMSAT PARIAMAN', '2 X 11 KAYU TANAM', '2021-04-21', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT KAYU TANAM'),
(813, 'UPTD SAMSAT PARIAMAN', '2 X 11 KAYU TANAM', '2021-05-07', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT KAYU TANAM'),
(814, 'UPTD SAMSAT PARIAMAN', '2 X 11 KAYU TANAM', '2021-06-02', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT KAYU TANAM'),
(815, 'UPTD SAMSAT PARIAMAN', '2 X 11 KAYU TANAM', '2021-07-21', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT KAYU TANAM'),
(816, 'UPTD SAMSAT PARIAMAN', '2 X 11 KAYU TANAM', '2021-08-18', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT KAYU TANAM'),
(817, 'UPTD SAMSAT PARIAMAN', '2 X 11 KAYU TANAM', '2021-09-22', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT KAYU TANAM'),
(818, 'UPTD SAMSAT PARIAMAN', 'BATANG ANAI', '2021-03-01', '08:30:00 s/d 13:00:00', 'DEPAN TUGU PERJUANGAN PASAR USANG'),
(819, 'UPTD SAMSAT PARIAMAN', 'BATANG ANAI', '2021-04-13', '08:30:00 s/d 13:00:00', 'DEPAN TUGU PERJUANGAN PASAR USANG'),
(820, 'UPTD SAMSAT PARIAMAN', 'BATANG ANAI', '2021-05-03', '08:30:00 s/d 13:00:00', 'DEPAN TUGU PERJUANGAN PASAR USANG'),
(821, 'UPTD SAMSAT PARIAMAN', 'BATANG ANAI', '2021-06-21', '08:30:00 s/d 13:00:00', 'DEPAN TUGU PERJUANGAN PASAR USANG'),
(822, 'UPTD SAMSAT PARIAMAN', 'BATANG ANAI', '2021-07-13', '08:30:00 s/d 13:00:00', 'DEPAN TUGU PERJUANGAN PASAR USANG'),
(823, 'UPTD SAMSAT PARIAMAN', 'BATANG ANAI', '2021-08-02', '08:30:00 s/d 13:00:00', 'DEPAN TUGU PERJUANGAN PASAR USANG'),
(824, 'UPTD SAMSAT PARIAMAN', 'BATANG ANAI', '2021-09-14', '08:30:00 s/d 13:00:00', 'DEPAN TUGU PERJUANGAN PASAR USANG'),
(825, 'UPTD SAMSAT PARIAMAN', 'BATANG ANAI', '2021-01-12', '08:30:00 s/d 13:00:00', 'DEPAN TUGU PERJUANGAN PASAR USANG'),
(826, 'UPTD SAMSAT PARIAMAN', 'BATANG ANAI', '2021-02-01', '08:30:00 s/d 13:00:00', 'DEPAN TUGU PERJUANGAN PASAR USANG'),
(827, 'UPTD SAMSAT PARIAMAN', 'LUBUK ALUNG', '2021-01-05', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT LUBUK ALUNG'),
(828, 'UPTD SAMSAT PARIAMAN', 'LUBUK ALUNG', '2021-01-19', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT LUBUK ALUNG'),
(829, 'UPTD SAMSAT PARIAMAN', 'LUBUK ALUNG', '2021-02-02', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT LUBUK ALUNG'),
(830, 'UPTD SAMSAT PARIAMAN', 'LUBUK ALUNG', '2021-02-16', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT LUBUK ALUNG'),
(831, 'UPTD SAMSAT PARIAMAN', 'LUBUK ALUNG', '2021-03-02', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT LUBUK ALUNG'),
(832, 'UPTD SAMSAT PARIAMAN', 'LUBUK ALUNG', '2021-03-16', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT LUBUK ALUNG'),
(833, 'UPTD SAMSAT PARIAMAN', 'LUBUK ALUNG', '2021-04-20', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT LUBUK ALUNG'),
(834, 'UPTD SAMSAT PARIAMAN', 'LUBUK ALUNG', '2021-04-06', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT LUBUK ALUNG'),
(835, 'UPTD SAMSAT PARIAMAN', 'LUBUK ALUNG', '2021-05-11', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT LUBUK ALUNG'),
(836, 'UPTD SAMSAT PARIAMAN', 'LUBUK ALUNG', '2021-05-25', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT LUBUK ALUNG'),
(837, 'UPTD SAMSAT PARIAMAN', 'LUBUK ALUNG', '2021-06-08', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT LUBUK ALUNG'),
(838, 'UPTD SAMSAT PARIAMAN', 'LUBUK ALUNG', '2021-06-15', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT LUBUK ALUNG'),
(839, 'UPTD SAMSAT PARIAMAN', 'LUBUK ALUNG', '2021-07-06', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT LUBUK ALUNG'),
(840, 'UPTD SAMSAT PARIAMAN', 'LUBUK ALUNG', '2021-07-19', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT LUBUK ALUNG'),
(841, 'UPTD SAMSAT PARIAMAN', 'LUBUK ALUNG', '2021-08-03', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT LUBUK ALUNG'),
(842, 'UPTD SAMSAT PARIAMAN', 'LUBUK ALUNG', '2021-08-24', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT LUBUK ALUNG'),
(843, 'UPTD SAMSAT PARIAMAN', 'LUBUK ALUNG', '2021-09-07', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT LUBUK ALUNG'),
(844, 'UPTD SAMSAT PARIAMAN', 'LUBUK ALUNG', '2021-09-21', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT LUBUK ALUNG'),
(845, 'UPTD SAMSAT PARIAMAN', 'PATAMUAN', '2021-01-21', '08:30:00 s/d 13:00:00', 'SIMPANG TIGA BALAI TANDIKEK'),
(846, 'UPTD SAMSAT PARIAMAN', 'PATAMUAN', '2021-02-18', '08:30:00 s/d 13:00:00', 'SIMPANG TIGA BALAI TANDIKEK'),
(847, 'UPTD SAMSAT PARIAMAN', 'PATAMUAN', '2021-03-09', '08:30:00 s/d 13:00:00', 'SIMPANG TIGA BALAI TANDIKEK'),
(848, 'UPTD SAMSAT PARIAMAN', 'PATAMUAN', '2021-04-22', '08:30:00 s/d 13:00:00', 'SIMPANG TIGA BALAI TANDIKEK'),
(849, 'UPTD SAMSAT PARIAMAN', 'PATAMUAN', '2021-05-27', '08:30:00 s/d 13:00:00', 'SIMPANG TIGA BALAI TANDIKEK'),
(850, 'UPTD SAMSAT PARIAMAN', 'PATAMUAN', '2021-06-03', '08:30:00 s/d 13:00:00', 'SIMPANG TIGA BALAI TANDIKEK'),
(851, 'UPTD SAMSAT PARIAMAN', 'PATAMUAN', '2021-07-01', '08:30:00 s/d 13:00:00', 'SIMPANG TIGA BALAI TANDIKEK'),
(852, 'UPTD SAMSAT PARIAMAN', 'PATAMUAN', '2021-08-19', '08:30:00 s/d 13:00:00', 'SIMPANG TIGA BALAI TANDIKEK'),
(853, 'UPTD SAMSAT PARIAMAN', 'PATAMUAN', '2021-09-23', '08:30:00 s/d 13:00:00', 'SIMPANG TIGA BALAI TANDIKEK'),
(854, 'UPTD SAMSAT PARIAMAN', 'ULAKAN TAPAKIS', '2021-01-08', '08:30:00 s/d 13:00:00', 'PASAR KAMPUNG GELAPUNG'),
(855, 'UPTD SAMSAT PARIAMAN', 'ULAKAN TAPAKIS', '2021-02-22', '08:30:00 s/d 13:00:00', 'PASAR KAMPUNG GELAPUNG'),
(856, 'UPTD SAMSAT PARIAMAN', 'ULAKAN TAPAKIS', '2021-03-19', '08:30:00 s/d 13:00:00', 'PASAR KAMPUNG GELAPUNG'),
(857, 'UPTD SAMSAT PARIAMAN', 'ULAKAN TAPAKIS', '2021-04-01', '08:30:00 s/d 13:00:00', 'PASAR KAMPUNG GELAPUNG'),
(858, 'UPTD SAMSAT PARIAMAN', 'ULAKAN TAPAKIS', '2021-05-28', '08:30:00 s/d 13:00:00', 'PASAR KAMPUNG GELAPUNG'),
(859, 'UPTD SAMSAT PARIAMAN', 'ULAKAN TAPAKIS', '2021-06-21', '08:30:00 s/d 13:00:00', 'PASAR KAMPUNG GELAPUNG'),
(860, 'UPTD SAMSAT PARIAMAN', 'ULAKAN TAPAKIS', '2021-07-22', '08:30:00 s/d 13:00:00', 'PASAR KAMPUNG GELAPUNG'),
(861, 'UPTD SAMSAT PARIAMAN', 'ULAKAN TAPAKIS', '2021-08-13', '08:30:00 s/d 13:00:00', 'PASAR KAMPUNG GELAPUNG'),
(862, 'UPTD SAMSAT PARIAMAN', 'ULAKAN TAPAKIS', '2021-09-20', '08:30:00 s/d 13:00:00', 'PASAR KAMPUNG GELAPUNG'),
(863, 'UPTD SAMSAT LUBUK BASUNG', 'AMPEK NAGARI', '2021-01-08', '08:30:00 s/d 13:00:00', 'AMPEK NAGARI PASAR BAWAN');
INSERT INTO `samkel` (`id_samkel`, `nama_uptd`, `kecamatan`, `tanggal`, `jadwal`, `lokasi`) VALUES
(864, 'UPTD SAMSAT LUBUK BASUNG', 'AMPEK NAGARI', '2021-02-22', '08:30:00 s/d 13:00:00', 'AMPEK NAGARI PASAR BAWAN'),
(865, 'UPTD SAMSAT LUBUK BASUNG', 'AMPEK NAGARI', '2021-03-19', '08:30:00 s/d 13:00:00', 'AMPEK NAGARI PASAR BAWAN'),
(866, 'UPTD SAMSAT LUBUK BASUNG', 'AMPEK NAGARI', '2021-04-01', '08:30:00 s/d 13:00:00', 'AMPEK NAGARI PASAR BAWAN'),
(867, 'UPTD SAMSAT LUBUK BASUNG', 'AMPEK NAGARI', '2021-05-28', '08:30:00 s/d 13:00:00', 'AMPEK NAGARI PASAR BAWAN'),
(868, 'UPTD SAMSAT LUBUK BASUNG', 'AMPEK NAGARI', '2021-06-21', '08:30:00 s/d 13:00:00', 'AMPEK NAGARI PASAR BAWAN'),
(869, 'UPTD SAMSAT LUBUK BASUNG', 'AMPEK NAGARI', '2021-07-22', '08:30:00 s/d 13:00:00', 'AMPEK NAGARI PASAR BAWAN'),
(870, 'UPTD SAMSAT LUBUK BASUNG', 'AMPEK NAGARI', '2021-08-13', '08:30:00 s/d 13:00:00', 'AMPEK NAGARI PASAR BAWAN'),
(871, 'UPTD SAMSAT LUBUK BASUNG', 'AMPEK NAGARI', '2021-09-20', '08:30:00 s/d 13:00:00', 'AMPEK NAGARI PASAR BAWAN'),
(872, 'UPTD SAMSAT LUBUK BASUNG', 'MATUR', '2021-01-07', '08:30:00 s/d 13:00:00', 'DEPAN KANTOR CAMAT MATUR'),
(873, 'UPTD SAMSAT LUBUK BASUNG', 'MATUR', '2021-02-04', '08:30:00 s/d 13:00:00', 'DEPAN KANTOR CAMAT MATUR'),
(874, 'UPTD SAMSAT LUBUK BASUNG', 'MATUR', '2021-03-04', '08:30:00 s/d 13:00:00', 'DEPAN KANTOR CAMAT MATUR'),
(875, 'UPTD SAMSAT LUBUK BASUNG', 'MATUR', '2021-04-08', '08:30:00 s/d 13:00:00', 'DEPAN KANTOR CAMAT MATUR'),
(876, 'UPTD SAMSAT LUBUK BASUNG', 'MATUR', '2021-05-06', '08:30:00 s/d 13:00:00', 'DEPAN KANTOR CAMAT MATUR'),
(877, 'UPTD SAMSAT LUBUK BASUNG', 'MATUR', '2021-06-03', '08:30:00 s/d 13:00:00', 'DEPAN KANTOR CAMAT MATUR'),
(878, 'UPTD SAMSAT LUBUK BASUNG', 'MATUR', '2021-07-08', '08:30:00 s/d 13:00:00', 'DEPAN KANTOR CAMAT MATUR'),
(879, 'UPTD SAMSAT LUBUK BASUNG', 'MATUR', '2021-08-05', '08:30:00 s/d 13:00:00', 'DEPAN KANTOR CAMAT MATUR'),
(880, 'UPTD SAMSAT LUBUK BASUNG', 'MATUR', '2021-09-09', '08:30:00 s/d 13:00:00', 'DEPAN KANTOR CAMAT MATUR'),
(881, 'UPTD SAMSAT LUBUK BASUNG', 'MATUR', '2021-03-19', '08:30:00 s/d 13:00:00', 'PASAR LAWANG III BALAI NAN BASA'),
(882, 'UPTD SAMSAT LUBUK BASUNG', 'MATUR', '2021-04-16', '08:30:00 s/d 13:00:00', 'PASAR LAWANG III BALAI NAN BASA'),
(883, 'UPTD SAMSAT LUBUK BASUNG', 'MATUR', '2021-05-21', '08:30:00 s/d 13:00:00', 'PASAR LAWANG III BALAI NAN BASA'),
(884, 'UPTD SAMSAT LUBUK BASUNG', 'MATUR', '2021-06-11', '08:30:00 s/d 13:00:00', 'PASAR LAWANG III BALAI NAN BASA'),
(885, 'UPTD SAMSAT LUBUK BASUNG', 'MATUR', '2021-07-16', '08:30:00 s/d 13:00:00', 'PASAR LAWANG III BALAI NAN BASA'),
(886, 'UPTD SAMSAT LUBUK BASUNG', 'MATUR', '2021-08-13', '08:30:00 s/d 13:00:00', 'PASAR LAWANG III BALAI NAN BASA'),
(887, 'UPTD SAMSAT LUBUK BASUNG', 'MATUR', '2021-09-17', '08:30:00 s/d 13:00:00', 'PASAR LAWANG III BALAI NAN BASA'),
(888, 'UPTD SAMSAT LUBUK BASUNG', 'MATUR', '2021-01-15', '08:30:00 s/d 13:00:00', 'PASAR LAWANG III BALAI NAN BASA'),
(889, 'UPTD SAMSAT LUBUK BASUNG', 'MATUR', '2021-02-19', '08:30:00 s/d 13:00:00', 'PASAR LAWANG III BALAI NAN BASA'),
(890, 'UPTD SAMSAT LUBUK BASUNG', 'TANJUNG MUTIARA', '2021-03-08', '08:30:00 s/d 13:00:00', 'TANJUNG MUTIARA DEPAN BANK BRI'),
(891, 'UPTD SAMSAT LUBUK BASUNG', 'TANJUNG MUTIARA', '2021-04-12', '08:30:00 s/d 13:00:00', 'PASAR LAWANG III BALAI NAN BASA'),
(892, 'UPTD SAMSAT LUBUK BASUNG', 'TANJUNG MUTIARA', '2021-05-10', '08:30:00 s/d 13:00:00', 'TANJUNG MUTIARA DEPAN BANK BRI'),
(893, 'UPTD SAMSAT LUBUK BASUNG', 'TANJUNG MUTIARA', '2021-06-07', '08:30:00 s/d 13:00:00', 'TANJUNG MUTIARA DEPAN BANK BRI'),
(894, 'UPTD SAMSAT LUBUK BASUNG', 'TANJUNG MUTIARA', '2021-07-12', '08:30:00 s/d 13:00:00', 'TANJUNG MUTIARA DEPAN BANK BRI'),
(895, 'UPTD SAMSAT LUBUK BASUNG', 'TANJUNG MUTIARA', '2021-08-09', '08:30:00 s/d 13:00:00', 'TANJUNG MUTIARA DEPAN BANK BRI'),
(896, 'UPTD SAMSAT LUBUK BASUNG', 'TANJUNG MUTIARA', '2021-09-13', '08:30:00 s/d 13:00:00', 'TANJUNG MUTIARA DEPAN BANK BRI'),
(897, 'UPTD SAMSAT LUBUK BASUNG', 'TANJUNG MUTIARA', '2021-01-11', '08:30:00 s/d 13:00:00', 'TANJUNG MUTIARA DEPAN BANK BRI'),
(899, 'UPTD SAMSAT LUBUK BASUNG', 'TANJUNG MUTIARA', '2021-02-08', '08:30:00 s/d 13:00:00', 'TANJUNG MUTIARA DEPAN BANK BRI'),
(900, 'UPTD SAMSAT LUBUK BASUNG', 'TANJUNG RAYA', '2021-03-16', '08:30:00 s/d 13:00:00', 'DEPAN KANTOR CAMAT TANJUNG RAYA'),
(901, 'UPTD SAMSAT LUBUK BASUNG', 'TANJUNG RAYA', '2021-04-20', '08:30:00 s/d 13:00:00', 'DEPAN KANTOR CAMAT TANJUNG RAYA'),
(902, 'UPTD SAMSAT LUBUK BASUNG', 'TANJUNG RAYA', '2021-05-11', '08:30:00 s/d 13:00:00', 'DEPAN KANTOR CAMAT TANJUNG RAYA'),
(903, 'UPTD SAMSAT LUBUK BASUNG', 'TANJUNG RAYA', '2021-06-15', '08:30:00 s/d 13:00:00', 'DEPAN KANTOR CAMAT TANJUNG RAYA'),
(904, 'UPTD SAMSAT LUBUK BASUNG', 'TANJUNG RAYA', '2021-07-19', '08:30:00 s/d 13:00:00', 'DEPAN KANTOR CAMAT TANJUNG RAYA'),
(905, 'UPTD SAMSAT LUBUK BASUNG', 'TANJUNG RAYA', '2021-08-11', '08:30:00 s/d 13:00:00', 'DEPAN KANTOR CAMAT TANJUNG RAYA'),
(906, 'UPTD SAMSAT LUBUK BASUNG', 'TANJUNG RAYA', '2021-09-14', '08:30:00 s/d 13:00:00', 'DEPAN KANTOR CAMAT TANJUNG RAYA'),
(907, 'UPTD SAMSAT LUBUK BASUNG', 'TANJUNG RAYA', '2021-01-19', '08:30:00 s/d 13:00:00', 'DEPAN KANTOR CAMAT TANJUNG RAYA'),
(908, 'UPTD SAMSAT LUBUK BASUNG', 'TANJUNG RAYA', '2021-02-16', '08:30:00 s/d 13:00:00', 'DEPAN KANTOR CAMAT TANJUNG RAYA'),
(909, 'UPTD SAMSAT SARILAMAK', 'BUKIK BARISAN, KAB. LIMA PULUH KOTA', '2021-01-21', '08:30:00 s/d 13:00:00', 'PASAR RONAH'),
(910, 'UPTD SAMSAT SARILAMAK', 'BUKIK BARISAN, KAB. LIMA PULUH KOTA', '2021-02-18', '08:30:00 s/d 13:00:00', 'PASAR RONAH'),
(911, 'UPTD SAMSAT SARILAMAK', 'BUKIK BARISAN, KAB. LIMA PULUH KOTA', '2021-03-18', '08:30:00 s/d 13:00:00', 'PASAR RONAH'),
(912, 'UPTD SAMSAT SARILAMAK', 'BUKIK BARISAN, KAB. LIMA PULUH KOTA', '2021-04-15', '08:30:00 s/d 13:00:00', 'PASAR RONAH'),
(913, 'UPTD SAMSAT SARILAMAK', 'BUKIK BARISAN, KAB. LIMA PULUH KOTA', '2021-05-27', '08:30:00 s/d 13:00:00', 'PASAR RONAH'),
(914, 'UPTD SAMSAT SARILAMAK', 'BUKIK BARISAN, KAB. LIMA PULUH KOTA', '2021-06-17', '08:30:00 s/d 13:00:00', 'PASAR RONAH'),
(915, 'UPTD SAMSAT SARILAMAK', 'BUKIK BARISAN, KAB. LIMA PULUH KOTA', '2021-07-15', '08:30:00 s/d 13:00:00', 'PASAR RONAH'),
(916, 'UPTD SAMSAT SARILAMAK', 'BUKIK BARISAN, KAB. LIMA PULUH KOTA', '2021-08-19', '08:30:00 s/d 13:00:00', 'PASAR RONAH'),
(917, 'UPTD SAMSAT SARILAMAK', 'BUKIK BARISAN, KAB. LIMA PULUH KOTA', '2021-09-16', '08:30:00 s/d 13:00:00', 'PASAR RONAH'),
(918, 'UPTD SAMSAT SARILAMAK', 'KAPUR IX, KAB. LIMA PULUH KOTA', '2021-01-14', '08:30:00 s/d 13:00:00', 'PASAR MUARO PAITI'),
(919, 'UPTD SAMSAT SARILAMAK', 'KAPUR IX, KAB. LIMA PULUH KOTA', '2021-02-11', '08:30:00 s/d 13:00:00', 'PASAR MUARO PAITI'),
(920, 'UPTD SAMSAT SARILAMAK', 'KAPUR IX, KAB. LIMA PULUH KOTA', '2021-03-04', '08:30:00 s/d 13:00:00', 'PASAR MUARO PAITI'),
(921, 'UPTD SAMSAT SARILAMAK', 'KAPUR IX, KAB. LIMA PULUH KOTA', '2021-04-08', '08:30:00 s/d 13:00:00', 'PASAR MUARO PAITI'),
(922, 'UPTD SAMSAT SARILAMAK', 'KAPUR IX, KAB. LIMA PULUH KOTA', '2021-05-06', '08:30:00 s/d 13:00:00', 'PASAR MUARO PAITI'),
(923, 'UPTD SAMSAT SARILAMAK', 'KAPUR IX, KAB. LIMA PULUH KOTA', '2021-05-10', '08:30:00 s/d 13:00:00', 'PASAR MUARO PAITI'),
(924, 'UPTD SAMSAT SARILAMAK', 'KAPUR IX, KAB. LIMA PULUH KOTA', '2021-07-08', '08:30:00 s/d 13:00:00', 'PASAR MUARO PAITI'),
(925, 'UPTD SAMSAT SARILAMAK', 'KAPUR IX, KAB. LIMA PULUH KOTA', '2021-08-12', '08:30:00 s/d 13:00:00', 'PASAR MUARO PAITI'),
(926, 'UPTD SAMSAT SARILAMAK', 'KAPUR IX, KAB. LIMA PULUH KOTA', '2021-09-09', '08:30:00 s/d 13:00:00', 'PASAR MUARO PAITI'),
(927, 'UPTD SAMSAT SARILAMAK', 'MUNGKA, KAB. LIMA PULUH KOTA', '2021-03-09', '08:30:00 s/d 13:00:00', 'PASAR MUNGKA'),
(928, 'UPTD SAMSAT SARILAMAK', 'MUNGKA, KAB. LIMA PULUH KOTA', '2021-04-13', '08:30:00 s/d 13:00:00', 'PASAR MUNGKA'),
(929, 'UPTD SAMSAT SARILAMAK', 'MUNGKA, KAB. LIMA PULUH KOTA', '2021-05-11', '08:30:00 s/d 13:00:00', 'PASAR MUNGKA'),
(930, 'UPTD SAMSAT SARILAMAK', 'MUNGKA, KAB. LIMA PULUH KOTA', '2021-06-08', '08:30:00 s/d 13:00:00', 'PASAR MUNGKA'),
(931, 'UPTD SAMSAT SARILAMAK', 'MUNGKA, KAB. LIMA PULUH KOTA', '2021-07-06', '08:30:00 s/d 13:00:00', 'PASAR MUNGKA'),
(932, 'UPTD SAMSAT SARILAMAK', 'MUNGKA, KAB. LIMA PULUH KOTA', '2021-08-03', '08:30:00 s/d 13:00:00', 'PASAR MUNGKA'),
(933, 'UPTD SAMSAT SARILAMAK', 'MUNGKA, KAB. LIMA PULUH KOTA', '2021-09-07', '08:30:00 s/d 13:00:00', 'PASAR MUNGKA'),
(934, 'UPTD SAMSAT SARILAMAK', 'MUNGKA, KAB. LIMA PULUH KOTA', '2021-01-12', '08:30:00 s/d 13:00:00', 'PASAR MUNGKA'),
(935, 'UPTD SAMSAT SARILAMAK', 'MUNGKA, KAB. LIMA PULUH KOTA', '2021-02-09', '08:30:00 s/d 13:00:00', 'PASAR MUNGKA'),
(936, 'UPTD SAMSAT SARILAMAK', 'PANGKALAN KOTO BARU, KAB. LIMA PULUH KOTA', '2021-01-19', '08:30:00 s/d 13:00:00', 'DEPAN KANTOR CAMAT PANGKALAN'),
(937, 'UPTD SAMSAT SARILAMAK', 'PANGKALAN KOTO BARU, KAB. LIMA PULUH KOTA', '2021-02-16', '08:00:00 s/d 13:00:00', 'DEPAN KANTOR CAMAT PANGKALAN'),
(938, 'UPTD SAMSAT SARILAMAK', 'PANGKALAN KOTO BARU, KAB. LIMA PULUH KOTA', '2021-03-16', '08:30:00 s/d 13:00:00', 'DEPAN KANTOR CAMAT PANGKALAN'),
(939, 'UPTD SAMSAT SARILAMAK', 'PANGKALAN KOTO BARU, KAB. LIMA PULUH KOTA', '2021-04-20', '08:00:00 s/d 13:00:00', 'DEPAN KANTOR CAMAT PANGKALAN'),
(940, 'UPTD SAMSAT SARILAMAK', 'PANGKALAN KOTO BARU, KAB. LIMA PULUH KOTA', '2021-05-25', '08:00:00 s/d 13:00:00', 'DEPAN KANTOR CAMAT PANGKALAN'),
(941, 'UPTD SAMSAT SARILAMAK', 'PANGKALAN KOTO BARU, KAB. LIMA PULUH KOTA', '2021-06-15', '08:00:00 s/d 13:00:00', 'DEPAN KANTOR CAMAT PANGKALAN'),
(942, 'UPTD SAMSAT SARILAMAK', 'PANGKALAN KOTO BARU, KAB. LIMA PULUH KOTA', '2021-07-13', '08:00:00 s/d 13:00:00', 'DEPAN KANTOR CAMAT PANGKALAN'),
(943, 'UPTD SAMSAT SARILAMAK', 'PANGKALAN KOTO BARU, KAB. LIMA PULUH KOTA', '2021-08-24', '08:00:00 s/d 13:00:00', 'DEPAN KANTOR CAMAT PANGKALAN'),
(944, 'UPTD SAMSAT SARILAMAK', 'PANGKALAN KOTO BARU, KAB. LIMA PULUH KOTA', '2021-09-14', '08:00:00 s/d 13:00:00', 'DEPAN KANTOR CAMAT PANGKALAN'),
(945, 'UPTD  SAMSAT PADANG PANJANG', 'BATIPUH', '2021-01-05', '08:30:00 s/d 13:00:00', 'PASAR KUBU KARAMBIA'),
(946, 'UPTD  SAMSAT PADANG PANJANG', 'BATIPUH', '2021-01-12', '08:30:00 s/d 13:00:00', 'PASAR KUBU KARAMBIA'),
(947, 'UPTD  SAMSAT PADANG PANJANG', 'BATIPUH', '2021-02-02', '08:30:00 s/d 13:00:00', 'PASAR KUBU KARAMBIA'),
(948, 'UPTD  SAMSAT PADANG PANJANG', 'BATIPUH', '2021-02-09', '08:30:00 s/d 13:00:00', 'PASAR KUBU KARAMBIA'),
(949, 'UPTD  SAMSAT PADANG PANJANG', 'BATIPUH', '2021-03-02', '08:30:00 s/d 13:00:00', 'PASAR KUBU KARAMBIA'),
(950, 'UPTD  SAMSAT PADANG PANJANG', 'BATIPUH', '2021-03-09', '08:30:00 s/d 13:00:00', 'PASAR KUBU KARAMBIA'),
(951, 'UPTD  SAMSAT PADANG PANJANG', 'BATIPUH', '2021-04-06', '08:30:00 s/d 13:00:00', 'PASAR KUBU KARAMBIA'),
(952, 'UPTD  SAMSAT PADANG PANJANG', 'BATIPUH', '2021-04-13', '08:30:00 s/d 13:00:00', 'PASAR KUBU KARAMBIA'),
(953, 'UPTD  SAMSAT PADANG PANJANG', 'BATIPUH', '2021-05-04', '08:30:00 s/d 13:00:00', 'PASAR KUBU KARAMBIA'),
(954, 'UPTD  SAMSAT PADANG PANJANG', 'BATIPUH', '2021-05-11', '08:30:00 s/d 13:00:00', 'PASAR KUBU KARAMBIA'),
(955, 'UPTD  SAMSAT PADANG PANJANG', 'BATIPUH', '2021-06-08', '08:30:00 s/d 13:00:00', 'PASAR KUBU KARAMBIA'),
(956, 'UPTD  SAMSAT PADANG PANJANG', 'BATIPUH', '2021-06-15', '08:30:00 s/d 13:00:00', 'PASAR KUBU KARAMBIA'),
(957, 'UPTD  SAMSAT PADANG PANJANG', 'BATIPUH', '2021-07-06', '08:30:00 s/d 13:00:00', 'PASAR KUBU KARAMBIA'),
(958, 'UPTD  SAMSAT PADANG PANJANG', 'BATIPUH', '2021-07-13', '08:30:00 s/d 13:00:00', 'PASAR KUBU KARAMBIA'),
(959, 'UPTD  SAMSAT PADANG PANJANG', 'BATIPUH', '2021-08-03', '08:30:00 s/d 13:00:00', 'PASAR KUBU KARAMBIA'),
(960, 'UPTD  SAMSAT PADANG PANJANG', 'BATIPUH', '2021-08-24', '08:30:00 s/d 13:00:00', 'PASAR KUBU KARAMBIA'),
(961, 'UPTD  SAMSAT PADANG PANJANG', 'BATIPUH', '2021-09-07', '08:30:00 s/d 13:00:00', 'PASAR KUBU KARAMBIA'),
(962, 'UPTD  SAMSAT PADANG PANJANG', 'BATIPUH', '2021-09-14', '08:30:00 s/d 13:00:00', 'PASAR KUBU KARAMBIA'),
(964, 'UPTD  SAMSAT PADANG PANJANG', 'BATIPUH', '2021-01-14', '08:30:00 s/d 13:00:00', 'PASAR TANJUNG BARULAK'),
(965, 'UPTD  SAMSAT PADANG PANJANG', 'BATIPUH', '2021-02-11', '08:30:00 s/d 13:00:00', 'PASAR TANJUNG BARULAK'),
(966, 'UPTD  SAMSAT PADANG PANJANG', 'BATIPUH', '2021-03-18', '08:30:00 s/d 13:00:00', 'PASAR TANJUNG BARULAK'),
(967, 'UPTD  SAMSAT PADANG PANJANG', 'BATIPUH', '2021-04-08', '08:30:00 s/d 13:00:00', 'PASAR TANJUNG BARULAK'),
(968, 'UPTD  SAMSAT PADANG PANJANG', 'BATIPUH', '2021-05-20', '08:30:00 s/d 13:00:00', 'PASAR TANJUNG BARULAK'),
(969, 'UPTD  SAMSAT PADANG PANJANG', 'BATIPUH', '2021-06-10', '08:30:00 s/d 13:00:00', 'PASAR TANJUNG BARULAK'),
(970, 'UPTD  SAMSAT PADANG PANJANG', 'BATIPUH', '2021-07-08', '08:30:00 s/d 13:00:00', 'PASAR TANJUNG BARULAK'),
(971, 'UPTD  SAMSAT PADANG PANJANG', 'BATIPUH', '2021-08-12', '08:30:00 s/d 13:00:00', 'PASAR TANJUNG BARULAK'),
(972, 'UPTD  SAMSAT PADANG PANJANG', 'BATIPUH', '2021-09-09', '08:30:00 s/d 13:00:00', 'PASAR TANJUNG BARULAK'),
(973, 'UPTD  SAMSAT PADANG PANJANG', 'SEPULUH KOTO', '2021-01-11', '08:30:00 s/d 13:00:00', 'PASAR KOTO BARU'),
(974, 'UPTD  SAMSAT PADANG PANJANG', 'SEPULUH KOTO', '2021-02-08', '08:30:00 s/d 13:00:00', 'PASAR KOTO BARU'),
(976, 'UPTD  SAMSAT PADANG PANJANG', 'SEPULUH KOTO', '2021-03-08', '08:30:00 s/d 13:00:00', 'PASAR KOTO BARU'),
(977, 'UPTD  SAMSAT PADANG PANJANG', 'SEPULUH KOTO', '2021-05-10', '08:30:00 s/d 13:00:00', 'PASAR KOTO BARU'),
(978, 'UPTD  SAMSAT PADANG PANJANG', 'SEPULUH KOTO', '2021-06-14', '08:30:00 s/d 13:00:00', 'PASAR KOTO BARU'),
(979, 'UPTD  SAMSAT PADANG PANJANG', 'SEPULUH KOTO', '2021-07-12', '08:30:00 s/d 13:00:00', 'PASAR KOTO BARU'),
(980, 'UPTD  SAMSAT PADANG PANJANG', 'SEPULUH KOTO', '2021-08-09', '08:30:00 s/d 13:00:00', 'PASAR TANJUNG BARULAK'),
(981, 'UPTD  SAMSAT PADANG PANJANG', 'SEPULUH KOTO', '2021-09-13', '08:30:00 s/d 13:00:00', 'PASAR TANJUNG BARULAK'),
(982, 'UPTD SAMSAT BUKITTINGGI', 'AMPEK ANGKEK', '2021-01-05', '08:30:00 s/d 13:00:00', 'SIMPANG TANJUNG ALAM'),
(983, 'UPTD SAMSAT BUKITTINGGI', 'AMPEK ANGKEK', '2021-02-09', '08:30:00 s/d 13:00:00', 'SIMPANG TANJUNG ALAM'),
(984, 'UPTD SAMSAT BUKITTINGGI', 'AMPEK ANGKEK', '2021-03-09', '08:30:00 s/d 13:00:00', 'SIMPANG TANJUNG ALAM'),
(985, 'UPTD SAMSAT BUKITTINGGI', 'AMPEK ANGKEK', '2021-04-13', '08:30:00 s/d 13:00:00', 'SIMPANG TANJUNG ALAM'),
(986, 'UPTD SAMSAT BUKITTINGGI', 'AMPEK ANGKEK', '2021-05-11', '08:30:00 s/d 13:00:00', 'SIMPANG TANJUNG ALAM'),
(987, 'UPTD SAMSAT BUKITTINGGI', 'AMPEK ANGKEK', '2021-06-15', '08:30:00 s/d 13:00:00', 'SIMPANG TANJUNG ALAM'),
(988, 'UPTD SAMSAT BUKITTINGGI', 'AMPEK ANGKEK', '2021-07-15', '08:30:00 s/d 13:00:00', 'SIMPANG TANJUNG ALAM'),
(989, 'UPTD SAMSAT BUKITTINGGI', 'BANUHAMPU', '2021-03-10', '08:30:00 s/d 13:00:00', 'PADANG LUA'),
(990, 'UPTD SAMSAT BUKITTINGGI', 'AMPEK ANGKEK', '2021-09-07', '08:30:00 s/d 13:00:00', 'SIMPANG TANJUNG ALAM'),
(991, 'UPTD SAMSAT BUKITTINGGI', 'BANUHAMPU', '2021-01-06', '08:30:00 s/d 13:00:00', 'PADANG LUA'),
(992, 'UPTD SAMSAT BUKITTINGGI', 'BANUHAMPU', '2021-02-10', '08:30:00 s/d 13:00:00', 'PADANG LUA'),
(993, 'UPTD SAMSAT BUKITTINGGI', 'BANUHAMPU', '2021-04-14', '08:30:00 s/d 13:00:00', 'PADANG LUA'),
(994, 'UPTD SAMSAT BUKITTINGGI', 'BANUHAMPU', '2021-06-16', '08:30:00 s/d 13:00:00', 'PADANG LUA'),
(995, 'UPTD SAMSAT BUKITTINGGI', 'BANUHAMPU', '2021-05-21', '08:30:00 s/d 13:00:00', 'PADANG LUA'),
(996, 'UPTD SAMSAT BUKITTINGGI', 'BANUHAMPU', '2021-07-14', '08:30:00 s/d 13:00:00', 'PADANG LUA'),
(997, 'UPTD SAMSAT BUKITTINGGI', 'BANUHAMPU', '2021-08-11', '08:30:00 s/d 13:00:00', 'PADANG LUA'),
(998, 'UPTD SAMSAT BUKITTINGGI', 'BANUHAMPU', '2021-08-08', '08:30:00 s/d 13:00:00', 'PADANG LUA'),
(999, 'UPTD SAMSAT BUKITTINGGI', 'AMPEK ANGKEK', '2021-08-19', '08:30:00 s/d 13:00:00', 'SIMPANG TANJUNG ALAM'),
(1000, 'UPTD SAMSAT BUKITTINGGI', 'BASO, KAB. AGAM', '2021-01-04', '08:30:00 s/d 13:00:00', 'PASAR BASO'),
(1001, 'UPTD SAMSAT BUKITTINGGI', 'BASO, KAB. AGAM', '2021-02-08', '08:30:00 s/d 13:00:00', 'PASAR BASO'),
(1002, 'UPTD SAMSAT BUKITTINGGI', 'BASO, KAB. AGAM', '2021-04-12', '08:30:00 s/d 13:00:00', 'PASAR BASO'),
(1003, 'UPTD SAMSAT BUKITTINGGI', 'BASO, KAB. AGAM', '2021-05-10', '08:30:00 s/d 13:00:00', 'PASAR BASO'),
(1004, 'UPTD SAMSAT BUKITTINGGI', 'BASO, KAB. AGAM', '2021-06-14', '08:30:00 s/d 13:00:00', 'PASAR BASO'),
(1005, 'UPTD SAMSAT BUKITTINGGI', 'BASO, KAB. AGAM', '2021-07-12', '08:30:00 s/d 13:00:00', 'PASAR BASO'),
(1006, 'UPTD SAMSAT BUKITTINGGI', 'BASO, KAB. AGAM', '2021-08-16', '08:30:00 s/d 13:00:00', 'PASAR BASO'),
(1007, 'UPTD SAMSAT BUKITTINGGI', 'BASO, KAB. AGAM', '2021-09-06', '08:30:00 s/d 13:00:00', 'PASAR BASO'),
(1008, 'UPTD SAMSAT BUKITTINGGI', 'TILATANG KAMANG, KAB. AGAM', '2021-01-07', '08:30:00 s/d 13:00:00', 'PASAR PAKAN KAMIH'),
(1009, 'UPTD SAMSAT BUKITTINGGI', 'TILATANG KAMANG, KAB. AGAM', '2021-02-11', '08:30:00 s/d 13:00:00', 'PASAR PAKAN KAMIH'),
(1010, 'UPTD SAMSAT BUKITTINGGI', 'TILATANG KAMANG, KAB. AGAM', '2021-03-18', '08:30:00 s/d 13:00:00', 'PASAR PAKAN KAMIH'),
(1011, 'UPTD SAMSAT BUKITTINGGI', 'TILATANG KAMANG, KAB. AGAM', '2021-04-15', '08:30:00 s/d 13:00:00', 'PASAR PAKAN KAMIH'),
(1012, 'UPTD SAMSAT BUKITTINGGI', 'TILATANG KAMANG, KAB. AGAM', '2021-05-20', '08:30:00 s/d 13:00:00', 'PASAR PAKAN KAMIH'),
(1013, 'UPTD SAMSAT BUKITTINGGI', 'TILATANG KAMANG, KAB. AGAM', '2021-06-11', '08:30:00 s/d 13:00:00', 'PASAR PAKAN KAMIH'),
(1014, 'UPTD SAMSAT BUKITTINGGI', 'TILATANG KAMANG, KAB. AGAM', '2021-07-12', '08:30:00 s/d 13:00:00', 'PASAR PAKAN KAMIH'),
(1015, 'UPTD SAMSAT BUKITTINGGI', 'TILATANG KAMANG, KAB. AGAM', '2021-08-16', '08:30:00 s/d 13:00:00', 'PASAR PAKAN KAMIH'),
(1016, 'UPTD SAMSAT BUKITTINGGI', 'TILATANG KAMANG, KAB. AGAM', '2021-09-06', '08:30:00 s/d 13:00:00', 'PASAR PAKAN KAMIH'),
(1017, 'UPTD  SAMSAT LUBUK SIKAPING', 'BONJOL', '2021-01-14', '08:30:00 s/d 13:00:00', 'PASAR KUMPULAN'),
(1018, 'UPTD  SAMSAT LUBUK SIKAPING', 'BONJOL', '2021-02-04', '08:30:00 s/d 13:00:00', 'PASAR KUMPULAN'),
(1019, 'UPTD  SAMSAT LUBUK SIKAPING', 'BONJOL', '2021-03-04', '08:30:00 s/d 13:00:00', 'PASAR KUMPULAN'),
(1020, 'UPTD  SAMSAT LUBUK SIKAPING', 'BONJOL', '2021-04-01', '08:30:00 s/d 13:00:00', 'PASAR KUMPULAN'),
(1021, 'UPTD  SAMSAT LUBUK SIKAPING', 'BONJOL', '2021-05-06', '08:30:00 s/d 13:00:00', 'PASAR KUMPULAN'),
(1022, 'UPTD  SAMSAT LUBUK SIKAPING', 'BONJOL', '2021-06-03', '08:30:00 s/d 13:00:00', 'PASAR KUMPULAN'),
(1023, 'UPTD  SAMSAT LUBUK SIKAPING', 'BONJOL', '2021-07-01', '08:30:00 s/d 13:00:00', 'PASAR KUMPULAN'),
(1024, 'UPTD  SAMSAT LUBUK SIKAPING', 'BONJOL', '2021-08-05', '08:30:00 s/d 13:00:00', 'PASAR KUMPULAN'),
(1025, 'UPTD  SAMSAT LUBUK SIKAPING', 'BONJOL', '2021-09-02', '08:30:00 s/d 13:00:00', 'PASAR KUMPULAN'),
(1026, 'UPTD  SAMSAT LUBUK SIKAPING', 'DUA KOTO', '2021-03-16', '08:30:00 s/d 13:00:00', 'PASAR SIMPANG TONANG'),
(1027, 'UPTD  SAMSAT LUBUK SIKAPING', 'DUA KOTO', '2021-04-20', '08:30:00 s/d 13:00:00', 'PASAR SIMPANG TONANG'),
(1028, 'UPTD  SAMSAT LUBUK SIKAPING', 'DUA KOTO', '2021-05-25', '08:30:00 s/d 13:00:00', 'PASAR SIMPANG TONANG'),
(1029, 'UPTD  SAMSAT LUBUK SIKAPING', 'DUA KOTO', '2021-06-22', '08:30:00 s/d 13:00:00', 'PASAR SIMPANG TONANG'),
(1030, 'UPTD  SAMSAT LUBUK SIKAPING', 'DUA KOTO', '2021-07-13', '08:30:00 s/d 13:00:00', 'PASAR SIMPANG TONANG'),
(1031, 'UPTD  SAMSAT LUBUK SIKAPING', 'DUA KOTO', '2021-08-24', '08:30:00 s/d 13:00:00', 'PASAR SIMPANG TONANG'),
(1032, 'UPTD  SAMSAT LUBUK SIKAPING', 'DUA KOTO', '2021-09-14', '08:30:00 s/d 13:00:00', 'PASAR SIMPANG TONANG'),
(1033, 'UPTD  SAMSAT LUBUK SIKAPING', 'DUA KOTO', '2021-01-12', '08:30:00 s/d 13:00:00', 'PASAR SIMPANG TONANG'),
(1034, 'UPTD  SAMSAT LUBUK SIKAPING', 'DUA KOTO', '2021-02-16', '08:30:00 s/d 13:00:00', 'PASAR SIMPANG TONANG'),
(1035, 'UPTD  SAMSAT LUBUK SIKAPING', 'RAO SELATAN', '2021-03-05', '08:30:00 s/d 13:00:00', 'PASAR KAUMAN'),
(1036, 'UPTD  SAMSAT LUBUK SIKAPING', 'RAO SELATAN', '2021-04-09', '08:30:00 s/d 13:00:00', 'PASAR KAUMAN'),
(1037, 'UPTD  SAMSAT LUBUK SIKAPING', 'RAO SELATAN', '2021-05-07', '08:30:00 s/d 13:00:00', 'PASAR KAUMAN'),
(1038, 'UPTD  SAMSAT LUBUK SIKAPING', 'RAO SELATAN', '2021-06-04', '08:30:00 s/d 13:00:00', 'PASAR KAUMAN'),
(1039, 'UPTD  SAMSAT LUBUK SIKAPING', 'RAO SELATAN', '2021-07-02', '08:30:00 s/d 13:00:00', 'PASAR KAUMAN'),
(1040, 'UPTD  SAMSAT LUBUK SIKAPING', 'RAO SELATAN', '2021-08-06', '08:30:00 s/d 13:00:00', 'PASAR KAUMAN'),
(1041, 'UPTD  SAMSAT LUBUK SIKAPING', 'RAO SELATAN', '2021-09-03', '08:30:00 s/d 13:00:00', 'PASAR KAUMAN'),
(1042, 'UPTD  SAMSAT LUBUK SIKAPING', 'RAO SELATAN', '2021-01-08', '08:30:00 s/d 13:00:00', 'PASAR KAUMAN'),
(1043, 'UPTD  SAMSAT LUBUK SIKAPING', 'RAO SELATAN', '2021-02-05', '08:30:00 s/d 13:00:00', 'PASAR KAUMAN'),
(1044, 'UPTD  SAMSAT LUBUK SIKAPING', 'RAO SELATAN', '2021-03-03', '08:30:00 s/d 13:00:00', 'PASAR LANSEK KADOK'),
(1045, 'UPTD  SAMSAT LUBUK SIKAPING', 'RAO SELATAN', '2021-04-07', '08:30:00 s/d 13:00:00', 'PASAR LANSEK KADOK'),
(1046, 'UPTD  SAMSAT LUBUK SIKAPING', 'RAO SELATAN', '2021-05-05', '08:30:00 s/d 13:00:00', 'PASAR LANSEK KADOK'),
(1047, 'UPTD  SAMSAT LUBUK SIKAPING', 'RAO SELATAN', '2021-06-02', '08:30:00 s/d 13:00:00', 'PASAR LANSEK KADOK'),
(1048, 'UPTD  SAMSAT LUBUK SIKAPING', 'RAO SELATAN', '2021-07-07', '08:30:00 s/d 13:00:00', 'PASAR LANSEK KADOK'),
(1049, 'UPTD  SAMSAT LUBUK SIKAPING', 'RAO SELATAN', '2021-08-04', '08:30:00 s/d 13:00:00', 'PASAR LANSEK KADOK'),
(1050, 'UPTD  SAMSAT LUBUK SIKAPING', 'RAO SELATAN', '2021-09-01', '08:30:00 s/d 13:00:00', 'PASAR LANSEK KADOK'),
(1051, 'UPTD  SAMSAT LUBUK SIKAPING', 'RAO SELATAN', '2021-01-13', '08:30:00 s/d 13:00:00', 'PASAR LANSEK KADOK'),
(1052, 'UPTD  SAMSAT LUBUK SIKAPING', 'RAO SELATAN', '2021-02-03', '08:30:00 s/d 13:00:00', 'PASAR LANSEK KADOK'),
(1053, 'UPTD  SAMSAT LUBUK SIKAPING', 'RAO ', '2021-03-01', '08:30:00 s/d 13:00:00', 'GEDUNG UDKP'),
(1054, 'UPTD  SAMSAT LUBUK SIKAPING', 'RAO ', '2021-04-05', '08:30:00 s/d 13:00:00', 'GEDUNG UDKP'),
(1055, 'UPTD  SAMSAT LUBUK SIKAPING', 'RAO ', '2021-05-03', '08:30:00 s/d 13:00:00', 'GEDUNG UDKP'),
(1056, 'UPTD  SAMSAT LUBUK SIKAPING', 'RAO ', '2021-06-07', '08:30:00 s/d 13:00:00', 'GEDUNG UDKP'),
(1057, 'UPTD  SAMSAT LUBUK SIKAPING', 'RAO ', '2021-07-05', '08:30:00 s/d 13:00:00', 'GEDUNG UDKP'),
(1058, 'UPTD  SAMSAT LUBUK SIKAPING', 'RAO ', '2021-08-02', '08:30:00 s/d 13:00:00', 'GEDUNG UDKP'),
(1059, 'UPTD  SAMSAT LUBUK SIKAPING', 'RAO ', '2021-09-13', '08:30:00 s/d 13:00:00', 'GEDUNG UDKP'),
(1060, 'UPTD  SAMSAT LUBUK SIKAPING', 'RAO ', '2021-01-11', '08:30:00 s/d 13:00:00', 'PASAR LANSEK KADOK'),
(1061, 'UPTD  SAMSAT LUBUK SIKAPING', 'RAO ', '2021-02-01', '08:30:00 s/d 13:00:00', 'PASAR LANSEK KADOK'),
(1062, 'UPTD  SAMSAT LUBUK SIKAPING', 'TIGO NAGARI ', '2021-03-02', '08:30:00 s/d 13:00:00', 'PASAR PADANG GANTIANG'),
(1063, 'UPTD  SAMSAT LUBUK SIKAPING', 'TIGO NAGARI ', '2021-04-06', '08:30:00 s/d 13:00:00', 'PASAR PADANG GANTIANG'),
(1064, 'UPTD  SAMSAT LUBUK SIKAPING', 'TIGO NAGARI ', '2021-05-04', '08:30:00 s/d 13:00:00', 'PASAR PADANG GANTIANG'),
(1065, 'UPTD  SAMSAT LUBUK SIKAPING', 'TIGO NAGARI ', '2021-06-08', '08:30:00 s/d 13:00:00', 'PASAR PADANG GANTIANG'),
(1066, 'UPTD  SAMSAT LUBUK SIKAPING', 'TIGO NAGARI ', '2021-07-06', '08:30:00 s/d 13:00:00', 'PASAR PADANG GANTIANG'),
(1067, 'UPTD  SAMSAT LUBUK SIKAPING', 'TIGO NAGARI ', '2021-08-03', '08:30:00 s/d 13:00:00', 'PASAR PADANG GANTIANG'),
(1068, 'UPTD  SAMSAT LUBUK SIKAPING', 'TIGO NAGARI ', '2021-09-21', '08:30:00 s/d 13:00:00', 'PASAR PADANG GANTIANG'),
(1069, 'UPTD  SAMSAT LUBUK SIKAPING', 'TIGO NAGARI ', '2021-01-19', '08:30:00 s/d 13:00:00', 'PASAR PADANG GANTIANG'),
(1070, 'UPTD  SAMSAT LUBUK SIKAPING', 'TIGO NAGARI ', '2021-02-02', '08:30:00 s/d 13:00:00', 'PASAR PADANG GANTIANG'),
(1072, 'UPTD SAMSAT PULAU PUNJUNG', 'KOTO BARU', '2021-01-13', '08:30:00 s/d 13:00:00', 'SIMPANG EMPAT LAMPU MERAH PASAR KOTO BARU'),
(1073, 'UPTD SAMSAT PULAU PUNJUNG', 'KOTO BARU', '2021-02-10', '08:30:00 s/d 13:00:00', 'SIMPANG EMPAT LAMPU MERAH PASAR KOTO BARU'),
(1074, 'UPTD SAMSAT PULAU PUNJUNG', 'KOTO BARU', '2021-03-10', '08:30:00 s/d 13:00:00', 'SIMPANG EMPAT LAMPU MERAH PASAR KOTO BARU'),
(1075, 'UPTD SAMSAT PULAU PUNJUNG', 'KOTO BARU', '2021-04-14', '08:30:00 s/d 13:00:00', 'SIMPANG EMPAT LAMPU MERAH PASAR KOTO BARU'),
(1076, 'UPTD SAMSAT PULAU PUNJUNG', 'KOTO BARU', '2021-05-05', '08:30:00 s/d 13:00:00', 'SIMPANG EMPAT LAMPU MERAH PASAR KOTO BARU'),
(1077, 'UPTD SAMSAT PULAU PUNJUNG', 'KOTO BARU', '2021-06-16', '08:30:00 s/d 13:00:00', 'SIMPANG EMPAT LAMPU MERAH PASAR KOTO BARU'),
(1078, 'UPTD SAMSAT PULAU PUNJUNG', 'KOTO BARU', '2021-07-14', '08:30:00 s/d 13:00:00', 'SIMPANG EMPAT LAMPU MERAH PASAR KOTO BARU'),
(1079, 'UPTD SAMSAT PULAU PUNJUNG', 'KOTO BARU', '2021-08-04', '08:30:00 s/d 13:00:00', 'SIMPANG EMPAT LAMPU MERAH PASAR KOTO BARU'),
(1080, 'UPTD SAMSAT PULAU PUNJUNG', 'KOTO BARU', '2021-09-15', '08:30:00 s/d 13:00:00', 'SIMPANG EMPAT LAMPU MERAH PASAR KOTO BARU'),
(1081, 'UPTD SAMSAT PULAU PUNJUNG', 'KOTO BESAR', '2021-02-06', '08:30:00 s/d 13:00:00', 'PASAR BLOK B SITIUNG IV'),
(1082, 'UPTD SAMSAT PULAU PUNJUNG', 'KOTO BESAR', '2021-03-06', '08:30:00 s/d 13:00:00', 'PASAR BLOK B SITIUNG IV'),
(1083, 'UPTD SAMSAT PULAU PUNJUNG', 'KOTO BESAR', '2021-04-10', '08:30:00 s/d 13:00:00', 'PASAR BLOK B SITIUNG IV'),
(1084, 'UPTD SAMSAT PULAU PUNJUNG', 'KOTO BESAR', '2021-05-08', '08:30:00 s/d 13:00:00', 'PASAR BLOK B SITIUNG IV'),
(1085, 'UPTD SAMSAT PULAU PUNJUNG', 'KOTO BESAR', '2021-06-12', '08:30:00 s/d 13:00:00', 'PASAR BLOK B SITIUNG IV'),
(1086, 'UPTD SAMSAT PULAU PUNJUNG', 'KOTO BESAR', '2021-07-10', '08:30:00 s/d 13:00:00', 'PASAR BLOK B SITIUNG IV'),
(1087, 'UPTD SAMSAT PULAU PUNJUNG', 'KOTO BESAR', '2021-08-14', '08:30:00 s/d 13:00:00', 'PASAR BLOK B SITIUNG IV'),
(1088, 'UPTD SAMSAT PULAU PUNJUNG', 'KOTO BESAR', '2021-09-11', '08:30:00 s/d 13:00:00', 'PASAR BLOK B SITIUNG IV'),
(1089, 'UPTD SAMSAT PULAU PUNJUNG', 'KOTO BESAR', '2021-01-09', '08:30:00 s/d 13:00:00', 'PASAR BLOK B SITIUNG IV'),
(1090, 'UPTD SAMSAT PULAU PUNJUNG', 'KOTO SALAK', '2021-02-09', '08:30:00 s/d 13:00:00', 'PASAR AMPALU'),
(1091, 'UPTD SAMSAT PULAU PUNJUNG', 'KOTO SALAK', '2021-03-09', '08:30:00 s/d 13:00:00', 'PASAR AMPALU'),
(1092, 'UPTD SAMSAT PULAU PUNJUNG', 'KOTO SALAK', '2021-04-13', '08:30:00 s/d 13:00:00', 'PASAR AMPALU'),
(1093, 'UPTD SAMSAT PULAU PUNJUNG', 'KOTO SALAK', '2021-05-04', '08:30:00 s/d 13:00:00', 'PASAR AMPALU'),
(1094, 'UPTD SAMSAT PULAU PUNJUNG', 'KOTO SALAK', '2021-06-15', '08:30:00 s/d 13:00:00', 'PASAR AMPALU'),
(1095, 'UPTD SAMSAT PULAU PUNJUNG', 'KOTO SALAK', '2021-07-13', '08:30:00 s/d 13:00:00', 'PASAR AMPALU'),
(1096, 'UPTD SAMSAT PULAU PUNJUNG', 'KOTO SALAK', '2021-09-14', '08:30:00 s/d 13:00:00', 'PASAR AMPALU'),
(1097, 'UPTD SAMSAT PULAU PUNJUNG', 'KOTO SALAK', '2021-01-12', '08:30:00 s/d 13:00:00', 'PASAR AMPALU'),
(1098, 'UPTD SAMSAT PULAU PUNJUNG', 'KOTO SALAK', '2021-08-03', '08:30:00 s/d 13:00:00', 'PASAR BAMPALU'),
(1099, 'UPTD SAMSAT PULAU PUNJUNG', 'SITIUNG', '2021-02-04', '08:30:00 s/d 13:00:00', 'DEPAN KANTOR WALI NAGARI SUNGAI DUO'),
(2000, 'UPTD SAMSAT PULAU PUNJUNG', 'SITIUNG', '2021-03-04', '08:30:00 s/d 13:00:00', 'DEPAN KANTOR WALI NAGARI SUNGAI DUO'),
(2001, 'UPTD SAMSAT PULAU PUNJUNG', 'SITIUNG', '2021-04-08', '08:30:00 s/d 13:00:00', 'DEPAN KANTOR WALI NAGARI SUNGAI DUO'),
(2002, 'UPTD SAMSAT PULAU PUNJUNG', 'SITIUNG', '2021-05-06', '08:30:00 s/d 13:00:00', 'DEPAN KANTOR WALI NAGARI SUNGAI DUO'),
(2003, 'UPTD SAMSAT PULAU PUNJUNG', 'SITIUNG', '2021-06-10', '08:30:00 s/d 13:00:00', 'DEPAN KANTOR WALI NAGARI SUNGAI DUO'),
(2004, 'UPTD SAMSAT PULAU PUNJUNG', 'SITIUNG', '2021-07-08', '08:30:00 s/d 13:00:00', 'DEPAN KANTOR WALI NAGARI SUNGAI DUO'),
(2005, 'UPTD SAMSAT PULAU PUNJUNG', 'SITIUNG', '2021-08-12', '08:30:00 s/d 13:00:00', 'DEPAN KANTOR WALI NAGARI SUNGAI DUO'),
(2006, 'UPTD SAMSAT PULAU PUNJUNG', 'SITIUNG', '2021-09-09', '08:30:00 s/d 13:00:00', 'DEPAN KANTOR WALI NAGARI SUNGAI DUO'),
(2007, 'UPTD SAMSAT PULAU PUNJUNG', 'SITIUNG', '2021-01-07', '08:30:00 s/d 13:00:00', 'DEPAN KANTOR WALI NAGARI SUNGAI DUO'),
(2008, 'UPTD SAMSAT PULAU PUNJUNG', 'SUNGAI RUMBAI', '2021-02-05', '08:30:00 s/d 13:00:00', 'DEPAN ROEMBAI PLAZA PASAR SUNGAI RUMBAI'),
(2009, 'UPTD SAMSAT PULAU PUNJUNG', 'SUNGAI RUMBAI', '2021-03-05', '08:30:00 s/d 13:00:00', 'DEPAN ROEMBAI PLAZA PASAR SUNGAI RUMBAI'),
(2010, 'UPTD SAMSAT PULAU PUNJUNG', 'SUNGAI RUMBAI', '2021-04-09', '08:30:00 s/d 13:00:00', 'DEPAN ROEMBAI PLAZA PASAR SUNGAI RUMBAI'),
(2011, 'UPTD SAMSAT PULAU PUNJUNG', 'SUNGAI RUMBAI', '2021-05-07', '08:30:00 s/d 13:00:00', 'DEPAN ROEMBAI PLAZA PASAR SUNGAI RUMBAI'),
(2012, 'UPTD SAMSAT PULAU PUNJUNG', 'SUNGAI RUMBAI', '2021-06-11', '08:30:00 s/d 13:00:00', 'DEPAN ROEMBAI PLAZA PASAR SUNGAI RUMBA'),
(2013, 'UPTD SAMSAT PULAU PUNJUNG', 'SUNGAI RUMBAI', '2021-07-09', '08:30:00 s/d 13:00:00', 'DEPAN ROEMBAI PLAZA PASAR SUNGAI RUMBAI'),
(2014, 'UPTD SAMSAT PULAU PUNJUNG', 'SUNGAI RUMBAI', '2021-08-13', '08:30:00 s/d 13:00:00', 'DEPAN ROEMBAI PLAZA PASAR SUNGAI RUMBAI'),
(2015, 'UPTD SAMSAT PULAU PUNJUNG', 'SUNGAI RUMBAI', '2021-09-10', '08:30:00 s/d 13:00:00', 'DEPAN ROEMBAI PLAZA PASAR SUNGAI RUMBAI'),
(2016, 'UPTD SAMSAT PULAU PUNJUNG', 'SUNGAI RUMBAI', '2021-01-08', '08:30:00 s/d 13:00:00', 'DEPAN ROEMBAI PLAZA PASAR SUNGAI RUMBAI'),
(2017, 'UPTD SAMSAT PULAU PUNJUNG', 'TIMPEH', '2021-02-19', '08:30:00 s/d 13:00:00', 'PASAR PINANG MAKMUR NAGARI TABEK'),
(2018, 'UPTD SAMSAT PULAU PUNJUNG', 'TIMPEH', '2021-03-12', '08:30:00 s/d 13:00:00', 'PASAR PINANG MAKMUR NAGARI TABEK'),
(2019, 'UPTD SAMSAT PULAU PUNJUNG', 'TIMPEH', '2021-04-16', '08:30:00 s/d 13:00:00', 'PASAR PINANG MAKMUR NAGARI TABEK'),
(2020, 'UPTD SAMSAT PULAU PUNJUNG', 'TIMPEH', '2021-05-21', '08:30:00 s/d 13:00:00', 'PASAR PINANG MAKMUR NAGARI TABEK'),
(2021, 'UPTD SAMSAT PULAU PUNJUNG', 'TIMPEH', '2021-06-18', '08:30:00 s/d 13:00:00', 'DEPAN ROEMBAI PLAZA PASAR SUNGAI RUMBA'),
(2022, 'UPTD SAMSAT PULAU PUNJUNG', 'TIMPEH', '2021-07-16', '08:30:00 s/d 13:00:00', 'PASAR PINANG MAKMUR NAGARI TABEK'),
(2023, 'UPTD SAMSAT PULAU PUNJUNG', 'TIMPEH', '2021-08-20', '08:30:00 s/d 13:00:00', 'PASAR PINANG MAKMUR NAGARI TABEK'),
(2024, 'UPTD SAMSAT PULAU PUNJUNG', 'TIMPEH', '2021-09-17', '08:30:00 s/d 13:00:00', 'PASAR PINANG MAKMUR NAGARI TABEK'),
(2025, 'UPTD SAMSAT PULAU PUNJUNG', 'TIMPEH', '2021-01-15', '08:30:00 s/d 13:00:00', 'PASAR PINANG MAKMUR NAGARI TABEK'),
(2026, 'UPTD SAMSAT SOLOK', 'BUKIT SUNDI', '2021-01-04', '08:30:00 s/d 13:00:00', 'PASAR MUARA PANAS'),
(2027, 'UPTD SAMSAT SOLOK', 'BUKIT SUNDI', '2021-01-18', '08:30:00 s/d 13:00:00', 'PASAR MUARA PANAS'),
(2028, 'UPTD SAMSAT SOLOK', 'BUKIT SUNDI', '2021-02-01', '08:30:00 s/d 13:00:00', 'PASAR MUARA PANAS'),
(2029, 'UPTD SAMSAT SOLOK', 'BUKIT SUNDI', '2021-02-15', '08:30:00 s/d 13:00:00', 'PASAR MUARA PANAS'),
(2030, 'UPTD SAMSAT SOLOK', 'BUKIT SUNDI', '2021-03-01', '08:30:00 s/d 13:00:00', 'PASAR MUARA PANAS'),
(2031, 'UPTD SAMSAT SOLOK', 'BUKIT SUNDI', '2021-03-15', '08:30:00 s/d 13:00:00', 'PASAR MUARA PANAS'),
(2032, 'UPTD SAMSAT SOLOK', 'BUKIT SUNDI', '2021-04-05', '08:30:00 s/d 13:00:00', 'PASAR MUARA PANAS'),
(2033, 'UPTD SAMSAT SOLOK', 'BUKIT SUNDI', '2021-04-19', '08:30:00 s/d 13:00:00', 'PASAR MUARA PANAS'),
(2034, 'UPTD SAMSAT SOLOK', 'BUKIT SUNDI', '2021-05-03', '08:30:00 s/d 13:00:00', 'PASAR MUARA PANAS'),
(2035, 'UPTD SAMSAT SOLOK', 'BUKIT SUNDI', '2021-05-10', '08:30:00 s/d 13:00:00', 'PASAR MUARA PANAS'),
(2036, 'UPTD SAMSAT SOLOK', 'BUKIT SUNDI', '2021-06-07', '08:30:00 s/d 13:00:00', 'PASAR MUARA PANAS'),
(2037, 'UPTD SAMSAT SOLOK', 'BUKIT SUNDI', '2021-06-21', '08:30:00 s/d 13:00:00', 'PASAR MUARA PANAS'),
(2038, 'UPTD SAMSAT SOLOK', 'BUKIT SUNDI', '2021-08-02', '08:30:00 s/d 13:00:00', 'PASAR MUARA PANAS'),
(2039, 'UPTD SAMSAT SOLOK', 'BUKIT SUNDI', '2021-08-16', '08:30:00 s/d 13:00:00', 'PASAR MUARA PANAS'),
(2040, 'UPTD SAMSAT SOLOK', 'BUKIT SUNDI', '2021-09-06', '08:30:00 s/d 13:00:00', 'PASAR MUARA PANAS'),
(2041, 'UPTD SAMSAT SOLOK', 'BUKIT SUNDI', '2021-09-20', '08:30:00 s/d 13:00:00', 'PASAR MUARA PANAS'),
(2042, 'UPTD SAMSAT SOLOK', 'JUNJUNG SIRIH', '2021-01-07', '08:30:00 s/d 13:00:00', 'PASAR PANINGGAHAN'),
(2043, 'UPTD SAMSAT SOLOK', 'JUNJUNG SIRIH', '2021-02-04', '08:30:00 s/d 13:00:00', 'PASAR PANINGGAHAN'),
(2044, 'UPTD SAMSAT SOLOK', 'JUNJUNG SIRIH', '2021-03-04', '08:30:00 s/d 13:00:00', 'PASAR PANINGGAHAN'),
(2045, 'UPTD SAMSAT SOLOK', 'JUNJUNG SIRIH', '2021-04-01', '08:30:00 s/d 13:00:00', 'PASAR PANINGGAHAN'),
(2046, 'UPTD SAMSAT SOLOK', 'JUNJUNG SIRIH', '2021-05-06', '08:30:00 s/d 13:00:00', 'PASAR PANINGGAHAN'),
(2047, 'UPTD SAMSAT SOLOK', 'JUNJUNG SIRIH', '2021-06-03', '08:30:00 s/d 13:00:00', 'PASAR PANINGGAHAN'),
(2048, 'UPTD SAMSAT SOLOK', 'JUNJUNG SIRIH', '2021-07-01', '08:30:00 s/d 13:00:00', 'PASAR PANINGGAHAN'),
(2049, 'UPTD SAMSAT SOLOK', 'JUNJUNG SIRIH', '2021-08-05', '08:30:00 s/d 13:00:00', 'PASAR PANINGGAHAN'),
(2050, 'UPTD SAMSAT SOLOK', 'JUNJUNG SIRIH', '2021-09-02', '08:30:00 s/d 13:00:00', 'PASAR PANINGGAHAN'),
(2051, 'UPTD SAMSAT SOLOK', 'TANJUNG HARAPAN', '2021-01-12', '08:30:00 s/d 13:00:00', 'PASAR RAYA'),
(2052, 'UPTD SAMSAT SOLOK', 'TANJUNG HARAPAN', '2021-02-09', '08:30:00 s/d 13:00:00', 'PASAR RAYA'),
(2053, 'UPTD SAMSAT SOLOK', 'JTANJUNG HARAPAN', '2021-03-09', '08:30:00 s/d 13:00:00', 'PASAR RAYA'),
(2054, 'UPTD SAMSAT SOLOK', 'JTANJUNG HARAPAN', '2021-04-13', '08:30:00 s/d 13:00:00', 'PASAR RAYA'),
(2056, 'UPTD SAMSAT SOLOK', 'TANJUNG HARAPAN', '2021-05-11', '08:30:00 s/d 13:00:00', 'PASAR RAYA'),
(2057, 'UPTD SAMSAT SOLOK', 'TANJUNG HARAPAN', '2021-06-15', '08:30:00 s/d 13:00:00', 'PASAR RAYA'),
(2058, 'UPTD SAMSAT SOLOK', 'TANJUNG HARAPAN', '2021-07-13', '08:30:00 s/d 13:00:00', 'PASAR RAYA'),
(2059, 'UPTD SAMSAT SOLOK', 'TANJUNG HARAPAN', '2021-08-24', '08:30:00 s/d 13:00:00', 'PASAR RAYA'),
(2060, 'UPTD SAMSAT SOLOK', 'TANJUNG HARAPAN', '2021-09-14', '08:30:00 s/d 13:00:00', 'PASAR RAYA'),
(2061, 'UPTD  SAMSAT PAINAN', 'BASA AMPEK BALAI TAPAN', '2021-01-11', '08:00:00 s/d 13:00:00', 'KANTOR CAMAT TAPAN'),
(2062, 'UPTD  SAMSAT PAINAN', 'BASA AMPEK BALAI TAPAN', '2021-02-08', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT TAPAN'),
(2063, 'UPTD  SAMSAT PAINAN', 'BATANG KAPAS', '2021-01-04', '08:00:00 s/d 13:00:00', 'KANTOR WALI NAGARI BATANG KAPAS'),
(2064, 'UPTD  SAMSAT PAINAN', 'BATANG KAPAS', '2021-02-01', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI BATANG KAPAS'),
(2065, 'UPTD  SAMSAT PAINAN', 'LUNANG', '2021-01-18', '08:00:00 s/d 13:00:00', 'KANTOR CAMAT LUNANG'),
(2066, 'UPTD  SAMSAT PAINAN', 'LUNANG', '2021-02-15', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT LUNANG'),
(2067, 'UPTD  SAMSAT PAINAN', 'LENGAYANG', '2021-01-06', '08:00:00 s/d 13:00:00', 'KANTOR CAMAT KEC. LENGAYANG'),
(2068, 'UPTD  SAMSAT PAINAN', 'LENGAYANG', '2021-02-03', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT KEC. LENGAYANG'),
(2069, 'UPTD  SAMSAT PAINAN', 'PANCUNG SOAL', '2021-01-14', '08:00:00 s/d 13:00:00', 'KANTOR CAMAT PANCUNG SOAL'),
(2070, 'UPTD  SAMSAT PAINAN', 'PANCUNG SOAL', '2021-02-11', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT PANCUNG SOAL'),
(2071, 'UPTD  SAMSAT PAINAN', 'SILAUT', '2021-01-20', '08:00:00 s/d 13:00:00', 'KANTOR SILAUT'),
(2072, 'UPTD  SAMSAT PAINAN', 'SILAUT', '2021-02-17', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT SILAUT'),
(2073, 'UPTD SAMSAT BATUSANGKAR', 'LINTAU BUO UTARA', '2021-01-07', '08:30:00 s/d 13:00:00', 'CAFE SARI ANDA ( DI SAMPING BANK BRI ) PASAR BALAI'),
(2074, 'UPTD SAMSAT BATUSANGKAR', 'LINTAU BUO UTARA', '2021-01-21', '08:30:00 s/d 13:00:00', 'CAFE SARI ANDA ( DI SAMPING BANK BRI ) PASAR BALAI'),
(2075, 'UPTD SAMSAT BATUSANGKAR', 'LINTAU BUO UTARA', '2021-02-04', '08:30:00 s/d 13:00:00', 'CAFE SARI ANDA ( DI SAMPING BANK BRI ) PASAR BALAI'),
(2076, 'UPTD SAMSAT BATUSANGKAR', 'LINTAU BUO UTARA', '2021-02-18', '08:30:00 s/d 13:00:00', 'CAFE SARI ANDA ( DI SAMPING BANK BRI ) PASAR BALAI'),
(2077, 'UPTD SAMSAT BATUSANGKAR', 'LINTAU BUO UTARA', '2021-03-04', '08:30:00 s/d 13:00:00', 'CAFE SARI ANDA ( DI SAMPING BANK BRI ) PASAR BALAI'),
(2078, 'UPTD SAMSAT BATUSANGKAR', 'LINTAU BUO UTARA', '2021-03-25', '08:30:00 s/d 13:00:00', 'CAFE SARI ANDA ( DI SAMPING BANK BRI ) PASAR BALAI'),
(2079, 'UPTD SAMSAT BATUSANGKAR', 'LINTAU BUO UTARA', '2021-04-01', '08:30:00 s/d 13:00:00', 'CAFE SARI ANDA ( DI SAMPING BANK BRI ) PASAR BALAI'),
(2080, 'UPTD SAMSAT BATUSANGKAR', 'LINTAU BUO UTARA', '2021-04-15', '08:30:00 s/d 13:00:00', 'CAFE SARI ANDA ( DI SAMPING BANK BRI ) PASAR BALAI'),
(2081, 'UPTD SAMSAT BATUSANGKAR', 'LINTAU BUO UTARA', '2021-05-06', '08:30:00 s/d 13:00:00', 'CAFE SARI ANDA ( DI SAMPING BANK BRI ) PASAR BALAI'),
(2082, 'UPTD SAMSAT BATUSANGKAR', 'LINTAU BUO UTARA', '2021-05-27', '08:30:00 s/d 13:00:00', 'CAFE SARI ANDA ( DI SAMPING BANK BRI ) PASAR BALAI'),
(2083, 'UPTD SAMSAT BATUSANGKAR', 'LINTAU BUO UTARA', '2021-06-03', '08:30:00 s/d 13:00:00', 'CAFE SARI ANDA ( DI SAMPING BANK BRI ) PASAR BALAI'),
(2084, 'UPTD SAMSAT BATUSANGKAR', 'LINTAU BUO UTARA', '2021-06-17', '08:30:00 s/d 13:00:00', 'CAFE SARI ANDA ( DI SAMPING BANK BRI ) PASAR BALAI'),
(2085, 'UPTD SAMSAT BATUSANGKAR', 'LINTAU BUO UTARA', '2021-07-01', '08:30:00 s/d 13:00:00', 'CAFE SARI ANDA ( DI SAMPING BANK BRI ) PASAR BALAI'),
(2086, 'UPTD SAMSAT BATUSANGKAR', 'LINTAU BUO UTARA', '2021-07-15', '08:30:00 s/d 13:00:00', 'CAFE SARI ANDA ( DI SAMPING BANK BRI ) PASAR BALAI'),
(2087, 'UPTD SAMSAT BATUSANGKAR', 'LINTAU BUO UTARA', '2021-08-05', '08:30:00 s/d 13:00:00', 'CAFE SARI ANDA ( DI SAMPING BANK BRI ) PASAR BALAI'),
(2088, 'UPTD SAMSAT BATUSANGKAR', 'LINTAU BUO UTARA', '2021-08-19', '08:30:00 s/d 13:00:00', 'CAFE SARI ANDA ( DI SAMPING BANK BRI ) PASAR BALAI'),
(2089, 'UPTD SAMSAT BATUSANGKAR', 'LINTAU BUO UTARA', '2021-09-02', '08:30:00 s/d 13:00:00', 'CAFE SARI ANDA ( DI SAMPING BANK BRI ) PASAR BALAI'),
(2090, 'UPTD SAMSAT BATUSANGKAR', 'LINTAU BUO UTARA', '2021-09-16', '08:30:00 s/d 13:00:00', 'CAFE SARI ANDA ( DI SAMPING BANK BRI ) PASAR BALAI'),
(2091, 'UPTD SAMSAT BATUSANGKAR', 'LINTAU BUO UTARA', '2021-10-07', '08:30:00 s/d 13:00:00', 'CAFE SARI ANDA ( DI SAMPING BANK BRI ) PASAR BALAI'),
(2092, 'UPTD SAMSAT BATUSANGKAR', 'LINTAU BUO UTARA', '2021-10-21', '08:30:00 s/d 13:00:00', 'CAFE SARI ANDA ( DI SAMPING BANK BRI ) PASAR BALAI'),
(2093, 'UPTD SAMSAT BATUSANGKAR', 'LINTAU BUO ', '2021-01-06', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI PANGIAN'),
(2094, 'UPTD SAMSAT BATUSANGKAR', 'LINTAU BUO ', '2021-01-20', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI PANGIAN'),
(2095, 'UPTD SAMSAT BATUSANGKAR', 'LINTAU BUO ', '2021-02-03', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI PANGIAN'),
(2096, 'UPTD SAMSAT BATUSANGKAR', 'LINTAU BUO ', '2021-02-17', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI PANGIAN'),
(2097, 'UPTD SAMSAT BATUSANGKAR', 'LINTAU BUO ', '2021-03-03', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI PANGIAN'),
(2098, 'UPTD SAMSAT BATUSANGKAR', 'LINTAU BUO ', '2021-03-17', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI PANGIAN'),
(2099, 'UPTD SAMSAT BATUSANGKAR', 'LINTAU BUO ', '2021-04-07', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI PANGIAN'),
(3000, 'UPTD SAMSAT BATUSANGKAR', 'LINTAU BUO ', '2021-04-21', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI PANGIAN'),
(3001, 'UPTD SAMSAT BATUSANGKAR', 'LINTAU BUO ', '2021-05-05', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI PANGIAN'),
(3002, 'UPTD SAMSAT BATUSANGKAR', 'LINTAU BUO ', '2021-05-25', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI PANGIAN'),
(3003, 'UPTD SAMSAT BATUSANGKAR', 'LINTAU BUO ', '2021-06-02', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI PANGIAN'),
(3004, 'UPTD SAMSAT BATUSANGKAR', 'LINTAU BUO ', '2021-06-16', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI PANGIAN'),
(3005, 'UPTD SAMSAT BATUSANGKAR', 'LINTAU BUO ', '2021-07-07', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI PANGIAN'),
(3006, 'UPTD SAMSAT BATUSANGKAR', 'LINTAU BUO ', '2021-07-21', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI PANGIAN'),
(3007, 'UPTD SAMSAT BATUSANGKAR', 'LINTAU BUO ', '2021-08-04', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI PANGIAN'),
(3008, 'UPTD SAMSAT BATUSANGKAR', 'LINTAU BUO ', '2021-08-18', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI PANGIAN'),
(3009, 'UPTD SAMSAT BATUSANGKAR', 'LINTAU BUO ', '2021-09-01', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI PANGIAN'),
(3010, 'UPTD SAMSAT BATUSANGKAR', 'LINTAU BUO ', '2021-09-15', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI PANGIAN'),
(3011, 'UPTD SAMSAT BATUSANGKAR', 'LINTAU BUO ', '2021-10-06', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI PANGIAN'),
(3012, 'UPTD SAMSAT BATUSANGKAR', 'LINTAU BUO ', '2021-10-20', '08:30:00 s/d 13:00:00', 'KANTOR WALI NAGARI PANGIAN'),
(3013, 'UPTD SAMSAT BATUSANGKAR', 'PARIANGAN', '2021-01-18', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT PARIANGAN'),
(3014, 'UPTD SAMSAT BATUSANGKAR', 'PARIANGAN', '2021-02-15', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT PARIANGAN'),
(3015, 'UPTD SAMSAT BATUSANGKAR', 'PARIANGAN ', '2021-03-15', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT PARIANGAN'),
(3016, 'UPTD SAMSAT BATUSANGKAR', 'PARIANGAN', '2021-04-19', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT PARIANGAN'),
(3017, 'UPTD SAMSAT BATUSANGKAR', 'PARIANGAN', '2021-05-10', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT PARIANGAN'),
(3018, 'UPTD SAMSAT BATUSANGKAR', 'PARIANGAN', '2021-06-21', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT PARIANGAN'),
(3019, 'UPTD SAMSAT BATUSANGKAR', 'PARIANGAN', '2021-07-19', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT PARIANGAN'),
(3020, 'UPTD SAMSAT BATUSANGKAR', 'PARIANGAN', '2021-08-16', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT PARIANGAN'),
(3021, 'UPTD SAMSAT BATUSANGKAR', 'PARIANGAN', '2021-09-20', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT PARIANGAN'),
(3022, 'UPTD SAMSAT BATUSANGKAR', 'PARIANGAN', '2021-10-18', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT PARIANGAN'),
(3023, 'UPTD SAMSAT BATUSANGKAR', 'SALIMPAUNG', '2021-01-04', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT SALIMPAUNG'),
(3024, 'UPTD SAMSAT BATUSANGKAR', 'SALIMPAUNG', '2021-02-01', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT SALIMPAUNG'),
(3025, 'UPTD SAMSAT BATUSANGKAR', 'SALIMPAUNG ', '2021-03-01', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT PARIANGAN'),
(3026, 'UPTD SAMSAT BATUSANGKAR', 'SALIMPAUNG', '2021-04-05', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT SALIMPAUNG'),
(3027, 'UPTD SAMSAT BATUSANGKAR', 'SALIMPAUNG', '2021-05-03', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT SALIMPAUNG'),
(3028, 'UPTD SAMSAT BATUSANGKAR', 'SALIMPAUNG', '2021-06-07', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT SALIMPAUNG'),
(3029, 'UPTD SAMSAT BATUSANGKAR', 'SALIMPAUNG', '2021-07-05', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT SALIMPAUNG'),
(3030, 'UPTD SAMSAT BATUSANGKAR', 'SALIMPAUNG', '2021-08-02', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT SALIMPAUNG'),
(3031, 'UPTD SAMSAT BATUSANGKAR', 'SALIMPAUNG', '2021-09-06', '08:30:00 s/d 13:00:00', 'KANTOR CAMAT SALIMPAUNG'),
(3032, 'UPTD SAMSAT PADANG', 'PADANG BARAT', '2021-11-29', '08:30:00 s/d 13:00:00', 'JALAN PATIMURA');

-- --------------------------------------------------------

--
-- Struktur dari tabel `slider_info`
--

CREATE TABLE `slider_info` (
  `id` int(11) NOT NULL,
  `nama_event` varchar(50) NOT NULL,
  `gambar_event` text NOT NULL,
  `tgl_post` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kendaraan`
--

CREATE TABLE `tbl_kendaraan` (
  `NoKendaraan` varchar(10) NOT NULL,
  `TahunKendaraan` year(4) NOT NULL,
  `MerkKendaraan` varchar(20) NOT NULL,
  `TipeKendaraan` varchar(35) NOT NULL,
  `WarnaKendaraan` text NOT NULL,
  `TglPajak` date NOT NULL,
  `TglStnk` date NOT NULL,
  `StatusKendaraan` varchar(25) NOT NULL,
  `BiayaPKB` varchar(25) NOT NULL,
  `SanksiPKB` varchar(25) NOT NULL,
  `BiayaSwdkllj` varchar(25) NOT NULL,
  `SanksiSwdkllj` varchar(25) NOT NULL,
  `ADMTnkb` varchar(25) NOT NULL,
  `ADMStnk` varchar(25) NOT NULL,
  `Total` varchar(25) NOT NULL,
  `NamaPemilik` varchar(50) NOT NULL,
  `Alamat` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_kendaraan`
--

INSERT INTO `tbl_kendaraan` (`NoKendaraan`, `TahunKendaraan`, `MerkKendaraan`, `TipeKendaraan`, `WarnaKendaraan`, `TglPajak`, `TglStnk`, `StatusKendaraan`, `BiayaPKB`, `SanksiPKB`, `BiayaSwdkllj`, `SanksiSwdkllj`, `ADMTnkb`, `ADMStnk`, `Total`, `NamaPemilik`, `Alamat`) VALUES
('BA 2913 QX', 2015, 'HONDA', 'Y1G02N02L0 A/T', 'PUTIH', '2022-09-26', '2025-09-26', 'Kepemilikan 1', 'Rp. 166.500', '0', 'Rp. 43.000', '0', '0', '0', 'Rp. 209.500', 'Asmiarni', 'Komp. Pemda Blok c11 RT.002 Rw 006'),
('BA 4751 AJ', 2015, 'Honda', 'NC111A2CB A/T', 'MERAH SILVER', '2022-06-12', '2025-06-12', 'Kepemilikan', 'Rp. 186.450', '0', 'Rp. 35.000', '0', '0', '0', 'Rp. 221.450', 'Asmiarni', 'Padang'),
('BA 6099 MS', 2015, 'HONDA', 'Y1G02N02L0 A/T', 'PUTIH', '2022-07-17', '2022-07-17', '', 'Rp. 176.550', '0', 'Rp. 35.000', '0', '0', '0', 'Rp. 210.550', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `level` varchar(100) NOT NULL,
  `foto` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id`, `username`, `password`, `nama`, `level`, `foto`) VALUES
(1, 'Randi', 'qwerty', 'Randi', 'administrator', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `uptd`
--

CREATE TABLE `uptd` (
  `nama_uptd` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `no_telp` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `uptd`
--

INSERT INTO `uptd` (`nama_uptd`, `alamat`, `no_telp`) VALUES
('UPTD  SAMSAT  PAYAKUMBUH', 'Payakumbuh', '0752 1376'),
('UPTD  SAMSAT LUBUK SIKAPING', 'Lubuk Sikaping', '0753 1308'),
('UPTD  SAMSAT PADANG PANJANG', 'Padang Panjang', '0752 1374'),
('UPTD  SAMSAT PAINAN', 'Painan', '0756 1301'),
('UPTD  SAMSAT SAWAHLUNTO', 'Sawahlunto', '0754-1373'),
('UPTD  SAMSAT SIJUNJUNG', 'Sijunjung', '0754 1303'),
('UPTD  SAMSAT SIMPANG EMPAT', 'Simpang Empat', '0753 1312'),
('UPTD SAMSAT AROSUKA', 'Arosuka', '0752 1302'),
('UPTD SAMSAT BATUSANGKAR', 'Batusangkar', '1304'),
('UPTD SAMSAT BUKITTINGGI', 'Bukittinggi', '0752 1375'),
('UPTD SAMSAT KOTA PARIAMAN', 'Pariaman', '0751 1377'),
('UPTD SAMSAT LUBUK BASUNG', 'Lubuk Basung', '0752 1306'),
('UPTD SAMSAT PADANG', 'Padang', '0751 1371'),
('UPTD SAMSAT PADANG ARO', 'Padang Aro', '0751 1311'),
('UPTD SAMSAT PARIAMAN', 'Pariaman', '0752 1305'),
('UPTD SAMSAT PULAU PUNJUNG', 'Pulau Punjung', '0754 1310'),
('UPTD SAMSAT SARILAMAK', 'Sarilamak', '0752 1307'),
('UPTD SAMSAT SOLOK', 'Solok', '0755 1372');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cara_pembayaran`
--
ALTER TABLE `cara_pembayaran`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `informasi`
--
ALTER TABLE `informasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kabupaten/kota`
--
ALTER TABLE `kabupaten/kota`
  ADD PRIMARY KEY (`nama`);

--
-- Indeks untuk tabel `layanan_samsat`
--
ALTER TABLE `layanan_samsat`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `lokasi`
--
ALTER TABLE `lokasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengaduan`
--
ALTER TABLE `pengaduan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `peraturan`
--
ALTER TABLE `peraturan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `periode`
--
ALTER TABLE `periode`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sadarpajak`
--
ALTER TABLE `sadarpajak`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `samkel`
--
ALTER TABLE `samkel`
  ADD PRIMARY KEY (`id_samkel`),
  ADD KEY `nama_uptd` (`nama_uptd`);

--
-- Indeks untuk tabel `slider_info`
--
ALTER TABLE `slider_info`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_kendaraan`
--
ALTER TABLE `tbl_kendaraan`
  ADD PRIMARY KEY (`NoKendaraan`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `uptd`
--
ALTER TABLE `uptd`
  ADD PRIMARY KEY (`nama_uptd`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `cara_pembayaran`
--
ALTER TABLE `cara_pembayaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `faq`
--
ALTER TABLE `faq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `informasi`
--
ALTER TABLE `informasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `layanan_samsat`
--
ALTER TABLE `layanan_samsat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `lokasi`
--
ALTER TABLE `lokasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `pengaduan`
--
ALTER TABLE `pengaduan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `peraturan`
--
ALTER TABLE `peraturan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `periode`
--
ALTER TABLE `periode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `sadarpajak`
--
ALTER TABLE `sadarpajak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `samkel`
--
ALTER TABLE `samkel`
  ADD CONSTRAINT `nama_uptd` FOREIGN KEY (`nama_uptd`) REFERENCES `uptd` (`nama_uptd`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
