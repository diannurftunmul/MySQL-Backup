-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 22 Jun 2024 pada 08.38
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `absensionline`
--
CREATE DATABASE IF NOT EXISTS `absensionline` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `absensionline`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `logindosen`
--

CREATE TABLE `logindosen` (
  `NIP` char(12) NOT NULL,
  `Password` varchar(30) NOT NULL,
  `Nama` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `logindosen`
--

INSERT INTO `logindosen` (`NIP`, `Password`, `Nama`) VALUES
('198701162015', 'kaprodisi', 'Islamiyah, M.Kom'),
('199508272022', 'dosen1', 'Akhmad Irsyad S.T.,M.Kom');

-- --------------------------------------------------------

--
-- Struktur dari tabel `loginmahasiswa`
--

CREATE TABLE `loginmahasiswa` (
  `NIM` char(12) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `loginmahasiswa`
--

INSERT INTO `loginmahasiswa` (`NIM`, `Nama`, `Email`, `Password`) VALUES
('2209116022', 'Dian Nurdiansyah', 'yanzinvokerz123@gmail.com', 'dian123'),
('2209116029', 'Siti Solikah Yosi Karinda', 'yosikarinda23@gmail.com', 'yosi123');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `logindosen`
--
ALTER TABLE `logindosen`
  ADD PRIMARY KEY (`NIP`);

--
-- Indeks untuk tabel `loginmahasiswa`
--
ALTER TABLE `loginmahasiswa`
  ADD PRIMARY KEY (`NIM`);
--
-- Database: `coba_php`
--
CREATE DATABASE IF NOT EXISTS `coba_php` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `coba_php`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `email` varchar(250) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`email`, `password`) VALUES
('admin1@gmail.com', 'password123'),
('admin2@gmail.com', 'password123');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` char(10) NOT NULL,
  `nama` text NOT NULL,
  `mata_kuliah` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `mata_kuliah`) VALUES
('2109116038', 'Raihan Daiva Geralda', 'Data Mining'),
('2109116068', 'Wahyu Kesuma Bakti', 'Data Mining'),
('2109116083', 'Ahmad Faris Aisyar Dafin', 'Data Mining'),
('2109116095', 'Muhammad Novil Fahlevy', 'Data Mining');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);
--
-- Database: `datakematian`
--
CREATE DATABASE IF NOT EXISTS `datakematian` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `datakematian`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `almarhum`
--

CREATE TABLE `almarhum` (
  `NIK` char(12) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Domisili` varchar(50) NOT NULL,
  `Tanggal_lahir` varchar(30) NOT NULL,
  `Tanggal_meninggal` varchar(50) NOT NULL,
  `Tempat_meninggal` varchar(50) NOT NULL,
  `Penyebab_meninggal` varchar(50) NOT NULL,
  `Tempati_pemakaman` varchar(50) NOT NULL,
  `Staff_ID_Staff` char(5) NOT NULL,
  `Keluarga_NIK_keluarga` char(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `almarhum`
--

INSERT INTO `almarhum` (`NIK`, `Nama`, `Domisili`, `Tanggal_lahir`, `Tanggal_meninggal`, `Tempat_meninggal`, `Penyebab_meninggal`, `Tempati_pemakaman`, `Staff_ID_Staff`, `Keluarga_NIK_keluarga`) VALUES
('124671885512', 'Cahyo Bakti', 'Loa Hui, Samarinda', '7 Oktober 1991', '14 Juni 2022', 'Rumah Sakit Tentara, Balikpapan', 'Sakit', 'TPU Simpang Tiga, Samarinda', 'ID001', NULL),
('324356889911', 'Vita Sema', 'Loa Janan, Samarinda', '17 Agustus 2000', '1 April 2020', 'RS Soetomo, Samarinda', 'Sakit', 'RS Soetomo, Samarinda', 'ID001', NULL),
('335671995234', 'Bagyo Sutoyo', 'Harapan Baru, Samarinda', '14 Juli 1974', '5 Februari 2017', 'Rumah Pribadi', 'Sakit', 'TPU Sengkotek, Samarinda', 'ID002', NULL),
('648813903489', 'Megalo Donia', 'Simpang Tiga, Samarinda', '9 Januari 1971', '3 April 2023', 'RS Haji Darjad, Samarinda', 'Sakit Jantung', 'TPU Simpang Tiga, Samarinda', 'ID001', '779011526711'),
('678920115500', 'Zahrotun', 'Tani Aman, Samarinda', '9 Juni 1999', '1 September 2023', 'RS Pertamina, Balikpapan', 'Kecelakaan Bermotor', 'TPU Tani Aman, Samarinda', 'ID002', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `keluarga`
--

CREATE TABLE `keluarga` (
  `NIK_keluarga` char(12) NOT NULL,
  `Nama` varchar(20) NOT NULL,
  `Jenis_Kelamin` varchar(20) NOT NULL,
  `Hubungan_dengan_almarhum` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `keluarga`
--

INSERT INTO `keluarga` (`NIK_keluarga`, `Nama`, `Jenis_Kelamin`, `Hubungan_dengan_almarhum`) VALUES
('213423667154', 'Rahmanul', 'Laki-laki', 'Saudara'),
('779011526711', 'Muhammad Sumbul', 'Pria', 'Paman'),
('912287438832', 'Sri Sulaikah', 'Wanita', 'Ibu Kandung');

-- --------------------------------------------------------

--
-- Struktur dari tabel `staff`
--

CREATE TABLE `staff` (
  `ID_Staff` char(5) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Nomor_telepn` char(12) NOT NULL,
  `Username` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL,
  `Staff_ID_Staff` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `staff`
--

INSERT INTO `staff` (`ID_Staff`, `Nama`, `Nomor_telepn`, `Username`, `Password`, `Staff_ID_Staff`) VALUES
('ID001', 'Dian Nurdiansyah', '081341420490', 'dianrt17', 'dian123', 'ID001'),
('ID002', 'Siti Solikah Yosi Karinda', '085225995341', 'ssykarinda1', '123', 'ID001');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `almarhum`
--
ALTER TABLE `almarhum`
  ADD PRIMARY KEY (`NIK`),
  ADD KEY `Almarhum_Keluarga_FK` (`Keluarga_NIK_keluarga`),
  ADD KEY `Almarhum_Staff_FK` (`Staff_ID_Staff`);

--
-- Indeks untuk tabel `keluarga`
--
ALTER TABLE `keluarga`
  ADD PRIMARY KEY (`NIK_keluarga`);

--
-- Indeks untuk tabel `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`ID_Staff`),
  ADD KEY `Staff_Staff_FK` (`Staff_ID_Staff`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `almarhum`
--
ALTER TABLE `almarhum`
  ADD CONSTRAINT `Almarhum_Keluarga_FK` FOREIGN KEY (`Keluarga_NIK_keluarga`) REFERENCES `keluarga` (`NIK_keluarga`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `Almarhum_Staff_FK` FOREIGN KEY (`Staff_ID_Staff`) REFERENCES `staff` (`ID_Staff`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `Staff_Staff_FK` FOREIGN KEY (`Staff_ID_Staff`) REFERENCES `staff` (`ID_Staff`) ON DELETE NO ACTION ON UPDATE NO ACTION;
--
-- Database: `dbdlearning`
--
CREATE DATABASE IF NOT EXISTS `dbdlearning` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dbdlearning`;
--
-- Database: `dbpenduduknew`
--
CREATE DATABASE IF NOT EXISTS `dbpenduduknew` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dbpenduduknew`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_alamatnew`
--

CREATE TABLE `data_alamatnew` (
  `id_alamat` int(11) NOT NULL,
  `Nik` varchar(4) NOT NULL,
  `Alamat` varchar(50) NOT NULL,
  `Nomor_telepon` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `data_alamatnew`
--

INSERT INTO `data_alamatnew` (`id_alamat`, `Nik`, `Alamat`, `Nomor_telepon`) VALUES
(1, '0120', 'Jl. Cendana No.16, Samarinda', '085299788869'),
(2, '0121', 'Jl. Agus Salim No.7, Samarinda', '085264653344'),
(3, '0122', 'Jl. Bukit Alaya No.69, Samarinda', '081321225566'),
(4, '0123', 'Jl. Pramuka No.77, Samarinda', '085266668899');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_keluarganew`
--

CREATE TABLE `data_keluarganew` (
  `id_datakeluarga` int(11) NOT NULL,
  `Nik` varchar(4) NOT NULL,
  `Nama_Ibu_Kandung` varchar(35) NOT NULL,
  `Status_Pernikahan` enum('Sudah menikah','Belum menikah') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `data_keluarganew`
--

INSERT INTO `data_keluarganew` (`id_datakeluarga`, `Nik`, `Nama_Ibu_Kandung`, `Status_Pernikahan`) VALUES
(1, '0120', 'Siti Badriah', 'Sudah menikah'),
(2, '0121', 'Qomariah', 'Sudah menikah'),
(3, '0122', 'Masrah', 'Belum menikah'),
(4, '0123', 'Denita Solehah', 'Belum menikah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_penduduknew`
--

CREATE TABLE `data_penduduknew` (
  `Nik` varchar(4) NOT NULL,
  `Nama` varchar(30) NOT NULL DEFAULT 'NULL',
  `Jenis_kelamin` enum('Pria','Wanita') NOT NULL,
  `Tanggal_lahir` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `data_penduduknew`
--

INSERT INTO `data_penduduknew` (`Nik`, `Nama`, `Jenis_kelamin`, `Tanggal_lahir`) VALUES
('0120', 'Indah Pratiwi', 'Wanita', '1997-01-25'),
('0121', 'Cahya Indah', 'Wanita', '1999-08-12'),
('0122', 'Dian Nurdiansyah', 'Pria', '2004-06-07'),
('0123', 'Chandra Perdana', 'Pria', '2004-08-03');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_alamatnew`
--
ALTER TABLE `data_alamatnew`
  ADD PRIMARY KEY (`id_alamat`),
  ADD KEY `Nik` (`Nik`);

--
-- Indeks untuk tabel `data_keluarganew`
--
ALTER TABLE `data_keluarganew`
  ADD PRIMARY KEY (`id_datakeluarga`),
  ADD KEY `Nik` (`Nik`);

--
-- Indeks untuk tabel `data_penduduknew`
--
ALTER TABLE `data_penduduknew`
  ADD PRIMARY KEY (`Nik`),
  ADD KEY `idxnama` (`Nama`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data_alamatnew`
--
ALTER TABLE `data_alamatnew`
  MODIFY `id_alamat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `data_alamatnew`
--
ALTER TABLE `data_alamatnew`
  ADD CONSTRAINT `data_alamatnew_ibfk_1` FOREIGN KEY (`Nik`) REFERENCES `data_penduduknew` (`Nik`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `data_keluarganew`
--
ALTER TABLE `data_keluarganew`
  ADD CONSTRAINT `data_keluarganew_ibfk_1` FOREIGN KEY (`Nik`) REFERENCES `data_penduduknew` (`Nik`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `dbpenduduksmd`
--
CREATE DATABASE IF NOT EXISTS `dbpenduduksmd` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dbpenduduksmd`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_alamat`
--

CREATE TABLE `data_alamat` (
  `id_alamat` int(11) NOT NULL,
  `Nik` varchar(5) NOT NULL,
  `Alamat` varchar(50) NOT NULL,
  `Nomor_telepon` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `data_alamat`
--

INSERT INTO `data_alamat` (`id_alamat`, `Nik`, `Alamat`, `Nomor_telepon`) VALUES
(1, '00120', 'Jl. Belatuk No.1, Kota Samarinda', '088812127766'),
(2, '00121', 'Jl. Bukit Alaya No.46, Kota Samarinda', '081341420490'),
(3, '00122', 'Jl. M. Yamin No.36, Kota Samarinda', '080933443646'),
(4, '00123', 'Jl. Pangeran Antasari No. 66, Kota Samarinda', '081246966977');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_pekerjaan`
--

CREATE TABLE `data_pekerjaan` (
  `id_pekerjaan` int(11) NOT NULL,
  `Nik` varchar(5) NOT NULL,
  `Pekerjaan` varchar(50) NOT NULL,
  `Pendapatan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `data_pekerjaan`
--

INSERT INTO `data_pekerjaan` (`id_pekerjaan`, `Nik`, `Pekerjaan`, `Pendapatan`) VALUES
(1, '00120', 'Guru', 5000000),
(2, '00121', 'Mahasiswa', 0),
(3, '00122', 'Mahasiswa', 0),
(4, '00123', 'Mahasiswa', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_penduduk`
--

CREATE TABLE `data_penduduk` (
  `Nik` varchar(5) NOT NULL,
  `Nama` varchar(30) NOT NULL,
  `Jenis_kelamin` enum('Pria','Wanita') NOT NULL,
  `Tanggal_lahir` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `data_penduduk`
--

INSERT INTO `data_penduduk` (`Nik`, `Nama`, `Jenis_kelamin`, `Tanggal_lahir`) VALUES
('00120', 'Cahyani', 'Wanita', '1990-01-26'),
('00121', 'Dian Nurdiansyah', 'Pria', '2004-06-07'),
('00122', 'Clarita Amanda', 'Wanita', '2005-12-14'),
('00123', 'Chandra Perdana', 'Pria', '2004-08-23'),
('00124', 'Agung Mandala', 'Pria', '1998-05-15');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_alamat`
--
ALTER TABLE `data_alamat`
  ADD PRIMARY KEY (`id_alamat`),
  ADD KEY `Nik` (`Nik`);

--
-- Indeks untuk tabel `data_pekerjaan`
--
ALTER TABLE `data_pekerjaan`
  ADD PRIMARY KEY (`id_pekerjaan`),
  ADD KEY `Nik` (`Nik`);

--
-- Indeks untuk tabel `data_penduduk`
--
ALTER TABLE `data_penduduk`
  ADD PRIMARY KEY (`Nik`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data_alamat`
--
ALTER TABLE `data_alamat`
  MODIFY `id_alamat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `data_pekerjaan`
--
ALTER TABLE `data_pekerjaan`
  MODIFY `id_pekerjaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `data_alamat`
--
ALTER TABLE `data_alamat`
  ADD CONSTRAINT `data_alamat_ibfk_1` FOREIGN KEY (`Nik`) REFERENCES `data_penduduk` (`Nik`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `data_pekerjaan`
--
ALTER TABLE `data_pekerjaan`
  ADD CONSTRAINT `data_pekerjaan_ibfk_1` FOREIGN KEY (`Nik`) REFERENCES `data_penduduk` (`Nik`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `gc`
--
CREATE DATABASE IF NOT EXISTS `gc` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `gc`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `akun`
--

CREATE TABLE `akun` (
  `id_akun` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role_akun` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `akun`
--

INSERT INTO `akun` (`id_akun`, `nama`, `username`, `email`, `password`, `role_akun`) VALUES
(1, 'kelompok2', 'kel2', 'kel2web@gmail.com', '$2y$10$8Jp1ZcmoxXkhLhhc4gwJieiy8rp7A0mxfwff/jhDPIbmS0jFyNZLa', 'admin'),
(2, 'Dian Nurdiansyah', 'dian12ar', 'mhddiansyah@gmail.com', '$2y$10$j3lB7BXZrhdTNlQ12AU6r.DvSjNhuSp7yYGuMcWhARP1pWtYbHVSC', 'user'),
(3, 'Angelia Cristin', 'angel1', 'angel1@gmail.com', '$2y$10$8Jp1ZcmoxXkhLhhc4gwJieiy8rp7A0mxfwff/jhDPIbmS0jFyNZLa', 'user'),
(4, 'Joviana Young', 'jovi2', 'jovi2@gmail.com', '$2y$10$8Jp1ZcmoxXkhLhhc4gwJieiy8rp7A0mxfwff/jhDPIbmS0jFyNZLa', 'user'),
(5, 's', 's', 'Sucker@gmail.com', '$2y$10$4yvBsFZeFu39PskhQlTNj.7zJdkPb6HJzcAqkuSE59JKVLjU/1G/G', 'user');

-- --------------------------------------------------------

--
-- Struktur dari tabel `artikel`
--

CREATE TABLE `artikel` (
  `id_artikel` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `isi` text NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `status` enum('Menunggu','Disetujui','Ditolak') NOT NULL,
  `id_akun` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `artikel`
--

INSERT INTO `artikel` (`id_artikel`, `judul`, `isi`, `gambar`, `status`, `id_akun`) VALUES
(11, 'KURANGI EMISI KARBON DENGAN BERSEPEDA', '<div>Peringatan Hari Sepeda Sedunia bertujuan untuk memberikan kesadaran pada masyarakat mengenai manfaat bersepeda. Sepeda yang telah digunakan selama dua abad ini merupakan sarana transportasi berkelanjutan yang sederhana, terjangkau, bisa diandalkan, bersih, dan ramah lingkungan.\nTahukah anda bahwa dengan bersepeda, berarti anda telah turut serta menjaga lingkungan? Saat menggunakan sepeda, tidak ada emisi karbon yang dikeluarkan. Karbon dioksida (CO2) adalah salah satu Gas Rumah Kaca (GRK) yang dihasilkan oleh pembakaran bahan bakar pada kendaraan bermotor. Kadar CO2 yang tinggi di atmosfer memicu efek rumah kaca yang berkontribusi terhadap terjadinya pemanasan global.\nMenggunakan sepeda hanya cukup dengan mengayuh saja, sehingga tidak terjadi pembakaran bahan bakar seperti kendaraan bermotor. Sepeda tidak menghasilkan zat pencemar sehingga udara di sekitar tetap terjaga.\nSemakin banyak orang yang memilih untuk bersepeda, semakin berkurang konsumsi bahan bakar untuk transportasi. Hal ini merupakan efisiensi energi yang sangat baik bagi lingkungan. Selain tidak menimbulkan polusi, bersepeda juga menyehatkan. Di perkotaan, rata-rata pengguna sepeda mempunyai tujuan untuk berolahraga.\nOrang yang bersepeda memiliki metabolisme tubuh yang lebih baik dan staminanya juga terjaga. Bersepeda juga dapat membantu mengurangi tingkat stres dan meningkatkan kesehatan mental. #WorldBicycleDay #HariSepedaSedunia</div>', 'artikel1.png', 'Menunggu', 1),
(22, 'Langkah Hijau: Mengajak Menanam Pohon Untuk Tolak Emisi', '<div>Pemanasan global dan perubahan iklim telah menjadi salah satu tantangan terbesar manusia di abad ke-21. Emisi gas rumah kaca dari berbagai aktivitas manusia menjadi penyebab utama perubahan iklim yang berdampak serius bagi lingkungan dan kehidupan manusia. Namun, di tengah kesulitan ini, ada langkah sederhana namun berdampak besar yang dapat kita ambil: menanam pohon.\n\nPohon merupakan salah satu penyerap karbon alami terbesar di planet ini. Melalui proses fotosintesis, pohon dapat mengubah karbon dioksida menjadi oksigen, mengurangi jumlah gas rumah kaca di atmosfer. Selain itu, pohon juga berperan penting dalam menjaga keanekaragaman hayati, mengurangi erosi tanah, dan menciptakan habitat bagi berbagai spesies.\n\nInisiatif menanam pohon atau reboisasi telah menjadi fokus utama banyak organisasi lingkungan dan pemerintah di seluruh dunia. Kampanye penanaman pohon tidak hanya bertujuan untuk mengurangi emisi karbon, tetapi juga untuk membangun kesadaran akan pentingnya menjaga ekosistem yang sehat.\n\nNamun, untuk mencapai dampak yang signifikan, partisipasi masyarakat luas sangat diperlukan. Setiap individu memiliki peran penting dalam menjaga lingkungan hidup, dan menanam pohon adalah salah satu cara yang paling langsung dan efektif yang dapat dilakukan siapa pun.\n\nMulai dari menanam pohon di halaman rumah, area publik, hingga bergabung dalam program penanaman pohon yang diselenggarakan oleh organisasi lingkungan, setiap tanaman yang ditanam memiliki dampak positif. Selain itu, mendukung kebijakan pemerintah yang mendukung penanaman pohon dan pelestarian hutan juga merupakan langkah penting yang dapat diambil.\n\nPentingnya menanam pohon dalam melawan perubahan iklim tidak boleh diabaikan. Dengan upaya bersama, kita dapat menciptakan lingkungan yang lebih hijau, sehat, dan berkelanjutan bagi generasi mendatang. Sebuah langkah kecil dalam menanam pohon hari ini bisa menjadi investasi besar untuk masa depan bumi kita. Ayo bergabung dalam gerakan \"hijau\" ini dan jadilah bagian dari solusi dalam menjaga kelestarian planet kita.</div>', 'artikel2.png', 'Menunggu', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `daftar_event`
--

CREATE TABLE `daftar_event` (
  `id_pendaftaran` int(11) NOT NULL,
  `nama_pendaftar` varchar(100) NOT NULL,
  `email_pendaftar` varchar(100) NOT NULL,
  `status` enum('Menunggu','Disetujui') NOT NULL,
  `id_event` int(11) NOT NULL,
  `id_akun` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `daftar_event`
--

INSERT INTO `daftar_event` (`id_pendaftaran`, `nama_pendaftar`, `email_pendaftar`, `status`, `id_event`, `id_akun`) VALUES
(1, 'MUHAMMAD DIAN NURDIANSYAH ', 'dyanrexusid@gmail.com', 'Disetujui', 2, 2),
(2, 'Angelia Cristin', 'angel@gmail.com', 'Disetujui', 1, 3),
(3, 'Joviana Young', 'jovi@gmail.com', 'Disetujui', 1, 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `event`
--

CREATE TABLE `event` (
  `id_event` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `tempat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `event`
--

INSERT INTO `event` (`id_event`, `judul`, `deskripsi`, `tanggal`, `tempat`) VALUES
(1, 'Kurangi Jejak Karbon #LangkahHijau Dengan Menanam Pohon', 'Balikpapan', '2024-05-31', 'Taman XY'),
(2, 'Hari Bersepeda Sedunia', 'Samarinda', '2024-06-10', 'Gor Sempaja');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`id_akun`);

--
-- Indeks untuk tabel `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id_artikel`),
  ADD KEY `id_akun` (`id_akun`);

--
-- Indeks untuk tabel `daftar_event`
--
ALTER TABLE `daftar_event`
  ADD PRIMARY KEY (`id_pendaftaran`),
  ADD KEY `fk_akunevent` (`id_akun`),
  ADD KEY `fk_event` (`id_event`);

--
-- Indeks untuk tabel `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id_event`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `akun`
--
ALTER TABLE `akun`
  MODIFY `id_akun` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id_artikel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `daftar_event`
--
ALTER TABLE `daftar_event`
  MODIFY `id_pendaftaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `event`
--
ALTER TABLE `event`
  MODIFY `id_event` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `artikel`
--
ALTER TABLE `artikel`
  ADD CONSTRAINT `fk_akun` FOREIGN KEY (`id_akun`) REFERENCES `akun` (`id_akun`);

--
-- Ketidakleluasaan untuk tabel `daftar_event`
--
ALTER TABLE `daftar_event`
  ADD CONSTRAINT `fk_akunevent` FOREIGN KEY (`id_akun`) REFERENCES `akun` (`id_akun`),
  ADD CONSTRAINT `fk_event` FOREIGN KEY (`id_event`) REFERENCES `event` (`id_event`);
--
-- Database: `greenculture`
--
CREATE DATABASE IF NOT EXISTS `greenculture` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `greenculture`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `akun`
--

CREATE TABLE `akun` (
  `id_akun` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role_akun` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `akun`
--

INSERT INTO `akun` (`id_akun`, `nama`, `username`, `email`, `password`, `role_akun`) VALUES
(1, 'rayhan', 'ray123', 'ray@gmail.com', '$2y$10$8Jp1ZcmoxXkhLhhc4gwJieiy8rp7A0mxfwff/jhDPIbmS0jFyNZLa', 'admin'),
(2, 'Abdullah Faiz', 'faizges', 'faiz1@gmail.com', '$2y$10$qKtijSXpAGKm0DvDKWcSiuETxDNNmR.z7GyRZoMhQ1iQ5deG67A4S', 'user'),
(3, 'Rikad Anggoro', 'rikad1', 'rikadomilos@gmail.com', '$2y$10$pntdW5MUVXW5jn5wEqgy1uyNZf.ZhIgkNadu8Yc8eZLEh3zXm97Si', 'user'),
(4, 'Dian Nurdiansyah', 'dian12ar', 'mhddiansyah@gmail.com', '$2y$10$j3lB7BXZrhdTNlQ12AU6r.DvSjNhuSp7yYGuMcWhARP1pWtYbHVSC', 'user'),
(5, 'Fauzan GH', 'fauzan1', 'fauzan@yahoo.com', '$2y$10$.6TOFSo9mz48mmMtLD18hutoer6qp.db0ENrNjkD6DLF0BmyJcNea', 'user');

-- --------------------------------------------------------

--
-- Struktur dari tabel `artikel`
--

CREATE TABLE `artikel` (
  `id_artikel` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `isi` text NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `status` enum('Menunggu','Disetujui','Ditolak') NOT NULL,
  `id_akun` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `artikel`
--

INSERT INTO `artikel` (`id_artikel`, `judul`, `isi`, `gambar`, `status`, `id_akun`) VALUES
(36, 'Menciptakan Masa Depan Hijau: Peristiwa Ramah Lingkungan di Samarinda', '<div>Samarinda, sebuah kota yang berada di tengah-tengah kegiatan industri dan pembangunan, saat ini menunjukkan peran yang semakin penting dalam memerangi perubahan iklim dan mendorong keberlanjutan. Dengan meningkatnya kesadaran akan dampak negatif perubahan iklim, kota ini telah mengadakan sejumlah peristiwa yang bertujuan untuk mengurangi emisi karbon dan mewujudkan masa depan yang lebih hijau.&nbsp;<br><br>Salah satu peristiwa terkemuka yang mengguncang Samarinda adalah \"Samarinda Eco Summit\". Acara ini menyatukan para pemikir, pemimpin bisnis, dan aktivis lingkungan untuk berdiskusi tentang solusi inovatif dalam mengatasi tantangan perubahan iklim. Dari strategi pengelolaan limbah hingga promosi energi terbarukan, peserta summit berbagi pengetahuan dan pengalaman untuk mendorong langkah-langkah konkret menuju keberlanjutan. Selain itu, Samarinda juga menggelar \"Hari Peduli Lingkungan\", sebuah acara tahunan yang menekankan pentingnya keterlibatan masyarakat dalam perlindungan lingkungan.&nbsp;<br><br>Dalam acara ini, warga diajak untuk membersihkan sungai-sungai dan pantai, menanam pohon, dan melakukan kegiatan lain yang bertujuan untuk memperindah dan menjaga kebersihan lingkungan sekitar. Kota ini juga menjadi tuan rumah bagi \"Pekan Hijau\", rangkaian acara selama seminggu penuh yang menyoroti gaya hidup berkelanjutan. Dari pasar produk organik hingga workshop daur ulang, acara ini memberikan wadah bagi warga untuk belajar dan berpartisipasi dalam praktik-praktik ramah lingkungan yang dapat mereka terapkan dalam kehidupan sehari-hari. Peristiwa-peristiwa seperti ini bukan hanya menginspirasi warga Samarinda untuk bertindak dalam melawan perubahan iklim, tetapi juga menjadi contoh bagi kota-kota lain di Indonesia dan di seluruh dunia. Dengan kolaborasi antara pemerintah, masyarakat, dan sektor swasta, Samarinda menunjukkan bahwa transformasi menuju masa depan hijau bukanlah impian yang jauh dari jangkauan, tetapi merupakan tujuan yang dapat dicapai melalui kerja keras dan inovasi yang berkelanjutan.</div>', '663ded0991fb2.png', 'Disetujui', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `daftar_event`
--

CREATE TABLE `daftar_event` (
  `id_pendaftaran` int(11) NOT NULL,
  `nama_pendaftar` varchar(100) NOT NULL,
  `email_pendaftar` varchar(100) NOT NULL,
  `status` enum('Menunggu','Disetujui') NOT NULL,
  `id_event` int(11) NOT NULL,
  `id_akun` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `daftar_event`
--

INSERT INTO `daftar_event` (`id_pendaftaran`, `nama_pendaftar`, `email_pendaftar`, `status`, `id_event`, `id_akun`) VALUES
(2, 'MUHAMMAD DIAN NURDIANSYAH ', 'dyanrexusid@gmail.com', 'Disetujui', 1, 2),
(6, 'Rikad', 'rikadkaltim@gmail.com', 'Disetujui', 3, 2),
(7, 'Faiz', 'faiz1@gmail.com', 'Disetujui', 3, 2),
(11, 'Rayhan Syah', 'forpropurchase6@gmail.com', 'Disetujui', 1, 2),
(13, 'Muhammad Rayhan', 'forpropurchase6@gmail.com', 'Disetujui', 3, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `event`
--

CREATE TABLE `event` (
  `id_event` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `tempat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `event`
--

INSERT INTO `event` (`id_event`, `judul`, `deskripsi`, `tanggal`, `tempat`) VALUES
(1, 'Meminimalkan Jejak Karbon: Peristiwa Inovatif di Balikpapan', 'Di tengah kekhawatiran akan dampak perubahan iklim, Balikpapan, sebuah kota yang penting di Kalimantan Timur, menjadi sorotan karena upaya-upaya inovatifnya dalam mengurangi emisi karbon. Peristiwa terbaru di kota ini menunjukkan komitmen yang kuat untuk ', '2024-05-23', 'Jl. Ahmad Yani No.6, Balikpapan, Kalimantan Timur, Indonesia'),
(3, 'Menciptakan Masa Depan Hijau: Peristiwa Ramah Lingkungan di Samarinda', 'Samarinda, ibu kota Kalimantan Timur yang berkembang pesat, menjadi pusat perhatian karena upaya-upaya luar biasanya dalam menghadapi tantangan perubahan iklim. Melalui serangkaian peristiwa yang inovatif, kota ini menegaskan komitmennya untuk mengurangi ', '2024-05-10', 'Alun Alun Kota Samarinda, Kalimantan Timur, Indonesia');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`id_akun`);

--
-- Indeks untuk tabel `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id_artikel`),
  ADD KEY `id_akun` (`id_akun`);

--
-- Indeks untuk tabel `daftar_event`
--
ALTER TABLE `daftar_event`
  ADD PRIMARY KEY (`id_pendaftaran`),
  ADD KEY `fk_akunevent` (`id_akun`),
  ADD KEY `fk_event` (`id_event`);

--
-- Indeks untuk tabel `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id_event`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `akun`
--
ALTER TABLE `akun`
  MODIFY `id_akun` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id_artikel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT untuk tabel `daftar_event`
--
ALTER TABLE `daftar_event`
  MODIFY `id_pendaftaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `event`
--
ALTER TABLE `event`
  MODIFY `id_event` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `artikel`
--
ALTER TABLE `artikel`
  ADD CONSTRAINT `fk_akun` FOREIGN KEY (`id_akun`) REFERENCES `akun` (`id_akun`);

--
-- Ketidakleluasaan untuk tabel `daftar_event`
--
ALTER TABLE `daftar_event`
  ADD CONSTRAINT `fk_akunevent` FOREIGN KEY (`id_akun`) REFERENCES `akun` (`id_akun`),
  ADD CONSTRAINT `fk_event` FOREIGN KEY (`id_event`) REFERENCES `event` (`id_event`);
--
-- Database: `greenculture1`
--
CREATE DATABASE IF NOT EXISTS `greenculture1` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `greenculture1`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `akun`
--

CREATE TABLE `akun` (
  `id_akun` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role_akun` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `akun`
--

INSERT INTO `akun` (`id_akun`, `nama`, `username`, `email`, `password`, `role_akun`) VALUES
(1, 'rayhan', 'ray123', 'ray@gmail.com', '$2y$10$8Jp1ZcmoxXkhLhhc4gwJieiy8rp7A0mxfwff/jhDPIbmS0jFyNZLa', 'admin'),
(2, 'Abdullah Faiz', 'faizges', 'faiz1@gmail.com', '$2y$10$qKtijSXpAGKm0DvDKWcSiuETxDNNmR.z7GyRZoMhQ1iQ5deG67A4S', 'user'),
(3, 'Rikad Anggoro', 'rikad1', 'rikadomilos@gmail.com', '$2y$10$pntdW5MUVXW5jn5wEqgy1uyNZf.ZhIgkNadu8Yc8eZLEh3zXm97Si', 'user'),
(4, 'Dian Nurdiansyah', 'dian12ar', 'mhddiansyah@gmail.com', '$2y$10$j3lB7BXZrhdTNlQ12AU6r.DvSjNhuSp7yYGuMcWhARP1pWtYbHVSC', 'user'),
(5, 'sada', 'sada', 'sada@gmail.com', '$2y$10$TGpdaQ1ysXLxOZSNJuV9luOoT/xs0BNRwPMajvbG0XK8wadwYxKsq', 'user');

-- --------------------------------------------------------

--
-- Struktur dari tabel `artikel`
--

CREATE TABLE `artikel` (
  `id_artikel` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `isi` text NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `status` enum('Menunggu','Disetujui','Ditolak') NOT NULL,
  `id_akun` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `artikel`
--

INSERT INTO `artikel` (`id_artikel`, `judul`, `isi`, `gambar`, `status`, `id_akun`) VALUES
(33, 'asdas', '<div>asdad</div>', '663cbf9a4db5f.png', 'Menunggu', 1),
(34, 'daad', '<div>sada</div>', '663da123955e3.png', 'Menunggu', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `daftar_event`
--

CREATE TABLE `daftar_event` (
  `id_pendaftaran` int(11) NOT NULL,
  `nama_pendaftar` varchar(100) NOT NULL,
  `email_pendaftar` varchar(100) NOT NULL,
  `status` enum('Menunggu','Disetujui') NOT NULL,
  `id_event` int(11) NOT NULL,
  `id_akun` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `daftar_event`
--

INSERT INTO `daftar_event` (`id_pendaftaran`, `nama_pendaftar`, `email_pendaftar`, `status`, `id_event`, `id_akun`) VALUES
(2, 'MUHAMMAD DIAN NURDIANSYAH ', 'dyanrexusid@gmail.com', 'Disetujui', 1, 2),
(6, 'Rikad', 'rikadkaltim@gmail.com', 'Disetujui', 3, 2),
(7, 'Faiz', 'faiz1@gmail.com', 'Disetujui', 3, 2),
(11, 'Rayhan Syah', 'forpropurchase6@gmail.com', 'Disetujui', 1, 2),
(13, 'Muhammad Rayhan', 'forpropurchase6@gmail.com', 'Disetujui', 3, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `event`
--

CREATE TABLE `event` (
  `id_event` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `tempat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `event`
--

INSERT INTO `event` (`id_event`, `judul`, `deskripsi`, `tanggal`, `tempat`) VALUES
(1, 'Event balikpapan', 'dibalikpapan -  markoni', '2024-05-23', 'Pantai lamaru 2'),
(3, 'Event Unmul', 'di unmul', '2024-05-10', 'Unmul'),
(9, 'samarinda', 'sadada', '2024-05-17', 'sdaad');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`id_akun`);

--
-- Indeks untuk tabel `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id_artikel`),
  ADD KEY `id_akun` (`id_akun`);

--
-- Indeks untuk tabel `daftar_event`
--
ALTER TABLE `daftar_event`
  ADD PRIMARY KEY (`id_pendaftaran`),
  ADD KEY `fk_akunevent` (`id_akun`),
  ADD KEY `fk_event` (`id_event`);

--
-- Indeks untuk tabel `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id_event`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `akun`
--
ALTER TABLE `akun`
  MODIFY `id_akun` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id_artikel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `daftar_event`
--
ALTER TABLE `daftar_event`
  MODIFY `id_pendaftaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `event`
--
ALTER TABLE `event`
  MODIFY `id_event` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `artikel`
--
ALTER TABLE `artikel`
  ADD CONSTRAINT `fk_akun` FOREIGN KEY (`id_akun`) REFERENCES `akun` (`id_akun`);

--
-- Ketidakleluasaan untuk tabel `daftar_event`
--
ALTER TABLE `daftar_event`
  ADD CONSTRAINT `fk_akunevent` FOREIGN KEY (`id_akun`) REFERENCES `akun` (`id_akun`),
  ADD CONSTRAINT `fk_event` FOREIGN KEY (`id_event`) REFERENCES `event` (`id_event`);
--
-- Database: `kocak`
--
CREATE DATABASE IF NOT EXISTS `kocak` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `kocak`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggota`
--

CREATE TABLE `anggota` (
  `id_peminjam` char(20) NOT NULL,
  `id_anggota` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id_peminjam`);
--
-- Database: `lampiongardensmd`
--
CREATE DATABASE IF NOT EXISTS `lampiongardensmd` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `lampiongardensmd`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `akun`
--

CREATE TABLE `akun` (
  `id_akun` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role_akun` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `akun`
--

INSERT INTO `akun` (`id_akun`, `nama`, `username`, `email`, `password`, `role_akun`) VALUES
(1, 'rayhan', 'ray123', 'ray@gmail.com', '$2y$10$8Jp1ZcmoxXkhLhhc4gwJieiy8rp7A0mxfwff/jhDPIbmS0jFyNZLa', 'admin'),
(2, 'Abdullah Faiz', 'faizges', 'faiz1@gmail.com', '$2y$10$qKtijSXpAGKm0DvDKWcSiuETxDNNmR.z7GyRZoMhQ1iQ5deG67A4S', 'user'),
(3, 'Rikad Anggoro', 'rikad1', 'rikadomilos@gmail.com', '$2y$10$pntdW5MUVXW5jn5wEqgy1uyNZf.ZhIgkNadu8Yc8eZLEh3zXm97Si', 'user'),
(4, 'Dian Nurdiansyah', 'dian12ar', 'mhddiansyah@gmail.com', '$2y$10$j3lB7BXZrhdTNlQ12AU6r.DvSjNhuSp7yYGuMcWhARP1pWtYbHVSC', 'user'),
(5, 'Fauzan GH', 'fauzan1', 'fauzan@yahoo.com', '$2y$10$.6TOFSo9mz48mmMtLD18hutoer6qp.db0ENrNjkD6DLF0BmyJcNea', 'user');

-- --------------------------------------------------------

--
-- Struktur dari tabel `artikel`
--

CREATE TABLE `artikel` (
  `id_artikel` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `isi` text NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `status` enum('Menunggu','Disetujui','Ditolak') NOT NULL,
  `id_akun` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `artikel`
--

INSERT INTO `artikel` (`id_artikel`, `judul`, `isi`, `gambar`, `status`, `id_akun`) VALUES
(39, 'Promo Kuliner Spesial di Mahakam Lampion Garden', '<div>Mahakam Lampion Garden di Samarinda terkenal dengan keindahan lampionnya yang mempesona dan suasananya <em>Riversidenya</em>. Namun, kali ini ada yang lebih istimewa yang bisa dinikmati pengunjung selain pemandangan indah dan spot foto yang instagramable. Selama bulan ini, Mahakam Lampion Garden mengadakan Promo Kuliner Spesial yang sayang untuk dilewatkan!&nbsp;<br><br></div><div><strong>Menu Spesial yang Menggoda</strong></div><div>Dalam rangka promo ini, Mahakam Lampion Garden bekerja sama dengan beberapa restoran lokal terbaik di Samarinda untuk menyajikan berbagai hidangan spesial. Pengunjung dapat menikmati:<br><br></div><ul><li><strong>Nasi Kuning Mahakam</strong> - Hidangan khas Samarinda yang disajikan dengan sentuhan spesial dari koki terbaik, membuatnya semakin nikmat disantap di bawah cahaya lampion.</li><li><strong>Sate Ayam Samarinda</strong> - Potongan daging ayam yang juicy dan bumbu kacang yang kaya rasa, sempurna untuk menghangatkan malam yang sejuk.</li><li><strong>Pisang Gapit</strong> - Camilan manis khas Kalimantan yang disajikan dengan saus karamel yang lezat, cocok sebagai penutup yang manis.</li><li><strong>Es Kelapa Muda Lampion</strong> - Minuman segar dengan es kelapa muda, disajikan dalam kelapa asli dan dihiasi dengan potongan buah segar.</li></ul><div><strong>Kejutan Setiap Malam</strong></div><div>Setiap malam, ada kejutan spesial untuk pengunjung. Dari diskon besar-besaran hingga hadiah menarik bagi mereka yang beruntung. Misalnya, setiap pembelian minimal Rp100.000, pengunjung berkesempatan untuk mengikuti undian berhadiah tiket masuk gratis atau voucher makan malam untuk dua orang di restoran mitra.<br><br></div><div><strong>Pengalaman yang Berkesan</strong></div><div>Selama promo ini, setiap sudut Mahakam Lampion Garden dipenuhi dengan aroma makanan yang menggugah selera, suara tawa, dan keceriaan pengunjung yang menikmati malam mereka. Suara alunan musik tradisional samar dari kejauhan menambah suasana malam menjadi lebih indah.&nbsp;<br><br></div><div><strong>Ayo, Jangan Sampai Ketinggalan!</strong></div><div>Promo Kuliner Spesial ini hanya berlangsung selama satu bulan. Jadi, jangan sampai ketinggalan! Ajak keluarga, teman, atau pasangan Anda untuk menikmati malam yang penuh dengan keajaiban dan kelezatan di Mahakam Lampion Garden. Kami tunggu kehadiran Anda!&nbsp;</div>', '6656e360b8d91.jpg', 'Disetujui', 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`id_akun`);

--
-- Indeks untuk tabel `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id_artikel`),
  ADD KEY `id_akun` (`id_akun`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `akun`
--
ALTER TABLE `akun`
  MODIFY `id_akun` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id_artikel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `artikel`
--
ALTER TABLE `artikel`
  ADD CONSTRAINT `fk_akun` FOREIGN KEY (`id_akun`) REFERENCES `akun` (`id_akun`);
--
-- Database: `mahasiswa`
--
CREATE DATABASE IF NOT EXISTS `mahasiswa` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `mahasiswa`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `NIM` char(10) NOT NULL,
  `NAMA` varchar(50) NOT NULL,
  `JURUSAN` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`NIM`);
--
-- Database: `manajemendatakematianwarga`
--
CREATE DATABASE IF NOT EXISTS `manajemendatakematianwarga` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `manajemendatakematianwarga`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `almarhum`
--

CREATE TABLE `almarhum` (
  `NIK` char(12) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Domisili` varchar(50) NOT NULL,
  `Tanggal_lahir` varchar(30) NOT NULL,
  `Tanggal_meninggal` varchar(50) NOT NULL,
  `Tempat_meninggal` varchar(50) NOT NULL,
  `Penyebab_meninggal` varchar(50) NOT NULL,
  `Tempat_pemakaman` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `almarhum`
--

INSERT INTO `almarhum` (`NIK`, `Nama`, `Domisili`, `Tanggal_lahir`, `Tanggal_meninggal`, `Tempat_meninggal`, `Penyebab_meninggal`, `Tempat_pemakaman`) VALUES
('129834678696', 'Megalo Donia', 'Loa Janan, Samarinda', '7 Oktober 1979', '20 Desember 2019', 'Rumah Sakit Tentara, Balikpapan', 'Kecelakaan Mobil', 'Kuburan Muslimin Loa Janan, Samarinda'),
('432567135678', 'Leo Phang', 'Loa Janan, Samarinda', '12 Oktober 2000', '1 Mei 2022', 'RS Samarinda', 'Sakit', 'TPU Loa Janan, Samarinda');

-- --------------------------------------------------------

--
-- Struktur dari tabel `keluarga_almarhum`
--

CREATE TABLE `keluarga_almarhum` (
  `Nama` varchar(50) NOT NULL,
  `No_Telepon` char(12) NOT NULL,
  `NIK_almarhum` char(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `staff`
--

CREATE TABLE `staff` (
  `ID_Staff` char(5) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Nomor_telepon` char(12) NOT NULL,
  `Username` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `staff`
--

INSERT INTO `staff` (`ID_Staff`, `Nama`, `Nomor_telepon`, `Username`, `Password`) VALUES
('1RT17', 'Cahyo Cahyadi Septiadi', '084619205512', 'cahyort17', 'cahyo123'),
('2RT21', 'Dian Nurdiansyah', '081341420490', 'dianrt21', 'dian123'),
('3RT22', 'Rizani  Rupa Madaun\'', '092231', 'rizani', '123');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `almarhum`
--
ALTER TABLE `almarhum`
  ADD PRIMARY KEY (`NIK`);

--
-- Indeks untuk tabel `keluarga_almarhum`
--
ALTER TABLE `keluarga_almarhum`
  ADD KEY `fk_almarhum` (`NIK_almarhum`);

--
-- Indeks untuk tabel `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`ID_Staff`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `keluarga_almarhum`
--
ALTER TABLE `keluarga_almarhum`
  ADD CONSTRAINT `fk_almarhum` FOREIGN KEY (`NIK_almarhum`) REFERENCES `almarhum` (`NIK`);
--
-- Database: `pakelompok11`
--
CREATE DATABASE IF NOT EXISTS `pakelompok11` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `pakelompok11`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggota`
--

CREATE TABLE `anggota` (
  `id_peminjam` char(20) NOT NULL,
  `id_anggota` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_keluarga_penduduk`
--

CREATE TABLE `data_keluarga_penduduk` (
  `Nomor_Kartu_Keluarga` char(10) NOT NULL,
  `NIK` char(12) NOT NULL,
  `id_tempat_tinggal` char(5) NOT NULL,
  `Nama_Kepala_Keluarga` varchar(50) NOT NULL,
  `Jumlah_Anggota_Dalam_KK` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `data_keluarga_penduduk`
--

INSERT INTO `data_keluarga_penduduk` (`Nomor_Kartu_Keluarga`, `NIK`, `id_tempat_tinggal`, `Nama_Kepala_Keluarga`, `Jumlah_Anggota_Dalam_KK`) VALUES
('3001837523', '102302060799', 'WT100', 'Syamsudin', '5 Orang'),
('3002325785', '102498101144', 'WT101', 'Agus Alamsyah', '6 Orang'),
('3003164648', '102500022346', 'WT102', 'Chandra Chen', '8 Orang'),
('3004257368', '102699041755', 'WT103', 'Andra Liem', '5 Orang'),
('3005574298', '102791092533', 'WT104', 'Andy Permana', '7 Orang'),
('3006257462', '102875081737', 'WT105', 'Perdana Phang', '5 Orang'),
('3007057134', '102982072309', 'WT106', 'Wayan Ketut Brata', '7 Orang'),
('3008254697', '103088022801', 'WT107', 'Agus Subandrio', '4 Orang'),
('3009240368', '103103042198', 'WT108', 'Arif Brata', '5 Orang'),
('3010054109', '103204041511', 'WT109', 'Agus Munandar', '5 Orang'),
('3011656941', '103392031455', 'WT110', 'Windah Basudara', '3 Orang'),
('3012743652', '103496061875', 'WT111', 'Thomas Zuller', '4 Orang'),
('3013232517', '103501112959', 'WT112', 'Wayan Kadek', '6 Orang'),
('3014365789', '103679123169', 'WT113', 'I Raja Gusti', '7 Orang'),
('3015098746', '103780101066', 'WT114', 'Braja Sadewa', '5 Orang'),
('3016775622', '103892110246', 'WT115', 'Brandon Kent', '4 Orang'),
('3017896953', '103994090713', 'WT116', 'Ken Ozzora', '3 Orang'),
('3018695584', '104004011719', 'WT117', 'Akbar Gunawan', '5 Orang'),
('3019335206', '104102022222', 'WT118', 'Irfan Nur', '4 Orang'),
('3020446571', '104299031376', 'WT119', 'Andika Budiansyah', '3 Orang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_pekerjaan`
--

CREATE TABLE `data_pekerjaan` (
  `id_datapekerjaan` char(5) NOT NULL,
  `Pendidikan_Terakhir` varchar(30) NOT NULL,
  `Pekerjaan` varchar(30) NOT NULL,
  `Status_Kerja` enum('Aktif','Tidak aktif','Tidak Bekerja') NOT NULL,
  `Pendapatan_Perbulan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `data_pekerjaan`
--

INSERT INTO `data_pekerjaan` (`id_datapekerjaan`, `Pendidikan_Terakhir`, `Pekerjaan`, `Status_Kerja`, `Pendapatan_Perbulan`) VALUES
('DP100', 'SMA/Sederajat', 'Mahasiswa', 'Aktif', 'Kurang dari Rp.1.000.000'),
('DP101', 'Sarjana', 'Karyawan Swasta', 'Aktif', 'Kurang dari Rp.10.000.000'),
('DP102', 'Sarjana', 'Wirausaha', 'Aktif', 'Lebih dari Rp.10.000.000'),
('DP103', 'SMA/Sederajat', 'Karyawan Swasta', 'Aktif', 'Kurang dari Rp.10.000.000'),
('DP104', 'Sarjana', 'Pegawai Negeri Sipil', 'Aktif', 'Kurang dari Rp.10.000.000'),
('DP105', 'Magister', 'Pegawai Negeri Sipil', 'Aktif', 'Lebih dari Rp.15.000.000'),
('DP106', 'SMA/Sederajat', 'Tentara Nasional Indonesia', 'Aktif', 'Kurang dari Rp.10.000.000'),
('DP107', 'Magister', 'Pengacara', 'Aktif', 'Lebih dari Rp.15.000.000'),
('DP108', 'SMA/Sederajat', 'Wiraswasta', 'Aktif', 'Kurang dari Rp.5.000.000'),
('DP109', 'SMA/Sederajat', 'Mahasiswa', 'Aktif', 'Kurang dari Rp.1.000.000'),
('DP110', 'SMA/Sederajat', 'Wirausaha', 'Aktif', 'Lebih dari Rp.15.000.000'),
('DP111', 'Magister', 'Dokter Hewan', 'Aktif', 'Lebih dari Rp.20.000.000'),
('DP112', 'SMA/Sederajat', 'Pegawai Negeri Sipil', 'Aktif', 'Lebih dari Rp.5.000.000'),
('DP113', 'SMA/Sederajat', 'Tentara Nasional Indonesia', 'Tidak aktif', 'Kurang dari Rp.5.000.000'),
('DP114', 'Magister', 'Dosen/Pengajar', 'Aktif', 'Kurang dari Rp.15.000.000'),
('DP115', 'Sarjana', 'Karyawan Swasta', 'Aktif', 'Kurang dari Rp.10.000.000'),
('DP116', 'Sarjana', 'Karyawan Swasta', 'Aktif', 'Kurang dari Rp.10.000.000'),
('DP117', 'SMA/Sederajat', 'Mahasiswa', 'Aktif', 'Kurang dari Rp.1.000.000'),
('DP118', 'SMA/Sederajat', 'Wirausaha', 'Aktif', 'Kurang dari Rp.10.000.000'),
('DP119', 'Sarjana', 'Karyawan Swasta', 'Aktif', 'Kurang dari Rp.10.000.000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_pribadi_penduduk`
--

CREATE TABLE `data_pribadi_penduduk` (
  `NIK` char(12) NOT NULL,
  `id_datapekerjaan` char(5) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Jenis_Kelamin` enum('Laki-Laki','Perempuan') NOT NULL,
  `Tanggal_Lahir` date NOT NULL,
  `Agama` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `data_pribadi_penduduk`
--

INSERT INTO `data_pribadi_penduduk` (`NIK`, `id_datapekerjaan`, `Nama`, `Jenis_Kelamin`, `Tanggal_Lahir`, `Agama`) VALUES
('102302060799', 'DP100', 'Dian Nurdiansyah', 'Laki-Laki', '2002-06-07', 'Islam'),
('102498101144', 'DP101', 'Faiz Tedjho', 'Laki-Laki', '1998-10-11', 'Islam'),
('102500022346', 'DP102', 'David Mondardo', 'Laki-Laki', '2000-02-23', 'Kristen'),
('102699041755', 'DP103', 'Mega Donia', 'Perempuan', '2000-04-17', 'Kristen'),
('102791092533', 'DP104', 'Denita Lianzi', 'Perempuan', '1991-09-25', 'Buddha'),
('102875081737', 'DP105', 'Melinda Kosasih', 'Perempuan', '1975-08-17', 'Buddha'),
('102982072309', 'DP106', 'Wayan Ketut Brata', 'Laki-Laki', '1982-07-23', 'Hindu'),
('103088022801', 'DP107', 'Agus Subandrio', 'Laki-Laki', '1988-02-28', 'Islam'),
('103103042198', 'DP108', 'Yusuf Pradana', 'Laki-Laki', '2003-04-21', 'Islam'),
('103204041511', 'DP109', 'Rayhan Pratama', 'Laki-Laki', '2004-04-15', 'Islam'),
('103392031455', 'DP110', 'Windah Basudara', 'Laki-Laki', '1992-03-14', 'Kristen'),
('103496061875', 'DP111', 'Gracia Agnes', 'Perempuan', '1996-06-18', 'Kristen'),
('103501112959', 'DP112', 'Dewi Sagita', 'Perempuan', '2001-11-29', 'Hindu'),
('103679123169', 'DP113', 'I Raja Gusti', 'Laki-Laki', '1979-12-31', 'Hindu'),
('103780101066', 'DP114', 'Braja Sadewa', 'Laki-Laki', '1980-10-10', 'Hindu'),
('103892110246', 'DP115', 'Brandon Kent', 'Laki-Laki', '1992-11-02', 'Buddha'),
('103994090713', 'DP116', 'Jessica Cassandra', 'Perempuan', '1994-09-07', 'Buddha'),
('104004011719', 'DP117', 'Jenita Zahra', 'Perempuan', '2004-01-17', 'Islam'),
('104102022222', 'DP118', 'Nur Choirunnisa', 'Perempuan', '2002-02-22', 'Islam'),
('104299031376', 'DP119', 'Andika Budiansyah', 'Laki-Laki', '1999-03-13', 'Islam');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_riwayat_kesehatan`
--

CREATE TABLE `data_riwayat_kesehatan` (
  `id_riwayat_kesehatan` char(5) NOT NULL,
  `NIK` char(12) NOT NULL,
  `Golongan_Darah` varchar(2) NOT NULL,
  `Riwayat_Penyakit` varchar(50) NOT NULL,
  `Status_Bpjs` enum('Aktif','Tidak Aktif','Tidak Terdaftar') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `data_riwayat_kesehatan`
--

INSERT INTO `data_riwayat_kesehatan` (`id_riwayat_kesehatan`, `NIK`, `Golongan_Darah`, `Riwayat_Penyakit`, `Status_Bpjs`) VALUES
('RK100', '102302060799', 'B', 'Asma', 'Aktif'),
('RK101', '102498101144', '0', 'Tidak Ada', 'Aktif'),
('RK102', '102500022346', 'A', 'Asam Lambung', 'Aktif'),
('RK103', '102699041755', '0', 'Tidak Ada', 'Aktif'),
('RK104', '102791092533', 'B', 'Tidak Ada', 'Aktif'),
('RK105', '102875081737', 'AB', 'Hipertensi', 'Aktif'),
('RK106', '102982072309', 'A', 'Asma', 'Aktif'),
('RK107', '103088022801', 'O', 'Tidak ada', 'Tidak Aktif'),
('RK108', '103103042198', 'AB', 'Tidak ada', 'Tidak Aktif'),
('RK109', '103204041511', 'A', 'Tidak ada', 'Aktif'),
('RK110', '103392031455', 'O', 'Hipertensi', 'Aktif'),
('RK111', '103496061875', 'O', 'Tidak ada', 'Aktif'),
('RK112', '103501112959', 'AB', 'Tidak ada', 'Aktif'),
('RK113', '103679123169', 'B', 'Diabetes', 'Aktif'),
('RK114', '103780101066', 'A', 'Penyakit Jantung', 'Aktif'),
('RK115', '103892110246', 'A', 'Tidak ada', 'Aktif'),
('RK116', '103994090713', 'O', 'Rematik', 'Aktif'),
('RK117', '104004011719', 'O', 'Asma', 'Aktif'),
('RK118', '104102022222', 'B', 'Tidak ada', 'Tidak Aktif'),
('RK119', '104299031376', 'AB', 'Tidak ada', 'Tidak Aktif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_tempat_tinggal`
--

CREATE TABLE `data_tempat_tinggal` (
  `id_tempat_tinggal` char(5) NOT NULL,
  `Alamat` varchar(75) NOT NULL,
  `Kelurahan` varchar(50) NOT NULL,
  `Kecamatan` varchar(50) NOT NULL,
  `Kota` varchar(30) NOT NULL,
  `Provinsi` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `data_tempat_tinggal`
--

INSERT INTO `data_tempat_tinggal` (`id_tempat_tinggal`, `Alamat`, `Kelurahan`, `Kecamatan`, `Kota`, `Provinsi`) VALUES
('WT100', 'Jalan Soekarno Hatta KM1', 'Tani Aman', 'Loa Janan Ilir', 'Samarinda', 'Kalimantan Timur'),
('WT101', 'Jalan Pemuda', 'Klandasan Ilir', 'Balikpapan Selatan', 'Balikpapan', 'Kalimantan Timur'),
('WT102', 'Jalan Sultan Agung', 'Panorama', 'Alang Alang Lebar', 'Palembang', 'Sumatera Selatan'),
('WT103', 'Jalan Halmahera', 'Bunaken', 'Bunaken', 'Manado', 'Sulawesi Utara'),
('WT104', 'Jalan Pahlawan', 'Sungai Antu', 'Pontianak Timur', 'Pontianak', 'Kalimantan Barat'),
('WT105', 'Jalan Sudimara', 'Pamulang Barat', 'Pamulang', 'Tanggerang Selatan', 'Banten'),
('WT106', 'Jalan D.I. Panjaitan', 'Sungai Pinang', 'Samarinda Utara', 'Samarinda', 'Kalimantan Timur'),
('WT107', 'Jalan Dharmawangsa', 'Dauh Puri', 'Denpasar Barat', 'Denpasar', 'Bali'),
('WT108', 'Jalan Banda Aceh', 'Kuta Alam', 'Baitturahman', 'Lhoksumawe', 'Aceh'),
('WT109', 'Jalan Thamrin', 'Simpang Baru', 'Bukit Raya', 'Pekanbaru', 'Riau'),
('WT110', 'Jalan Imam Bonjol', 'Air Dingin', 'Ratu Samban', 'Bengkulu', 'Bengkulu'),
('WT111', 'Jalan Raya Kebayoran Lama', 'Gondangdia', 'Menteng', 'Jakarta Selatan', 'DKI Jakarta'),
('WT112', 'Jalan Ahmad Yani', 'Darmo', 'Genteng', 'Surabaya', 'Jawa Timur'),
('WT113', 'Jalan Diponegoro', 'Arjosari', 'Klojen', 'Malang', 'Jawa Timur'),
('WT114', 'Jalan Gajah Mada', 'Bausasran', 'Danurejen', 'Yogyakarta', 'DIY Yogyakarta'),
('WT115', 'Jalan Basuki Rahmat', 'Kesawan', 'Medan Maimun', 'Medan', 'Sumatera Utara'),
('WT116', 'Jalan Gatot Subroto', 'Temindung', 'Sungai Pinang', 'Samarinda', 'Kalimantan Timur'),
('WT117', 'Jalan Sudirman', 'Dago', 'Coblong', 'Bandung', 'Jawa Barat'),
('WT118', 'Jalan A.Y. Nasution', 'Pandang', 'Ujung Pandang', 'Makassar', 'Sulawesi Selatan'),
('WT119', 'Jalan Merdeka', 'Sompok', 'Semarang Tengah', 'Semarang', 'Jawa Tengah');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id_peminjam`);

--
-- Indeks untuk tabel `data_keluarga_penduduk`
--
ALTER TABLE `data_keluarga_penduduk`
  ADD PRIMARY KEY (`Nomor_Kartu_Keluarga`),
  ADD KEY `FK_DTWT` (`id_tempat_tinggal`),
  ADD KEY `FK_DTPP` (`NIK`);

--
-- Indeks untuk tabel `data_pekerjaan`
--
ALTER TABLE `data_pekerjaan`
  ADD PRIMARY KEY (`id_datapekerjaan`);

--
-- Indeks untuk tabel `data_pribadi_penduduk`
--
ALTER TABLE `data_pribadi_penduduk`
  ADD PRIMARY KEY (`NIK`),
  ADD KEY `FK_DTPRIBADI_PENDUDUK` (`id_datapekerjaan`);

--
-- Indeks untuk tabel `data_riwayat_kesehatan`
--
ALTER TABLE `data_riwayat_kesehatan`
  ADD PRIMARY KEY (`id_riwayat_kesehatan`),
  ADD KEY `FK_DTRIWAYAT_KESEHATAN` (`NIK`);

--
-- Indeks untuk tabel `data_tempat_tinggal`
--
ALTER TABLE `data_tempat_tinggal`
  ADD PRIMARY KEY (`id_tempat_tinggal`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `data_keluarga_penduduk`
--
ALTER TABLE `data_keluarga_penduduk`
  ADD CONSTRAINT `FK_DTPP` FOREIGN KEY (`NIK`) REFERENCES `data_pribadi_penduduk` (`NIK`),
  ADD CONSTRAINT `FK_DTWT` FOREIGN KEY (`id_tempat_tinggal`) REFERENCES `data_tempat_tinggal` (`id_tempat_tinggal`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `data_pribadi_penduduk`
--
ALTER TABLE `data_pribadi_penduduk`
  ADD CONSTRAINT `FK_DTPRIBADI_PENDUDUK` FOREIGN KEY (`id_datapekerjaan`) REFERENCES `data_pekerjaan` (`id_datapekerjaan`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `data_riwayat_kesehatan`
--
ALTER TABLE `data_riwayat_kesehatan`
  ADD CONSTRAINT `FK_DTRIWAYAT_KESEHATAN` FOREIGN KEY (`NIK`) REFERENCES `data_pribadi_penduduk` (`NIK`) ON DELETE NO ACTION ON UPDATE NO ACTION;
--
-- Database: `percobaan`
--
CREATE DATABASE IF NOT EXISTS `percobaan` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `percobaan`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen`
--

CREATE TABLE `dosen` (
  `nip` char(16) NOT NULL,
  `nama_dsn` varchar(50) NOT NULL,
  `alamat_dsn` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `dosen`
--

INSERT INTO `dosen` (`nip`, `nama_dsn`, `alamat_dsn`) VALUES
('1101', 'Pak Putut', 'Jalan Perjuangan'),
('1102', 'Ibu Vina', 'Jalan Pramuka');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` char(10) NOT NULL,
  `nama_mhs` varchar(100) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `program_studi_kd_prodi` char(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mata_kuliah`
--

CREATE TABLE `mata_kuliah` (
  `kd_mk` char(10) NOT NULL,
  `nama_mk` varchar(30) NOT NULL,
  `dosen_nip` char(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai`
--

CREATE TABLE `nilai` (
  `mahasiswa_nim` char(10) NOT NULL,
  `mata_kuliah_kd_mk` char(10) NOT NULL,
  `nilai_akhir` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `program_studi`
--

CREATE TABLE `program_studi` (
  `kd_prodi` char(4) NOT NULL,
  `nama_prodi` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`nip`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`),
  ADD KEY `mahasiswa_program_studi_fk` (`program_studi_kd_prodi`);

--
-- Indeks untuk tabel `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  ADD PRIMARY KEY (`kd_mk`),
  ADD KEY `mata_kuliah_dosen_fk` (`dosen_nip`);

--
-- Indeks untuk tabel `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`mahasiswa_nim`,`mata_kuliah_kd_mk`),
  ADD KEY `nilai_mata_kuliah_fk` (`mata_kuliah_kd_mk`);

--
-- Indeks untuk tabel `program_studi`
--
ALTER TABLE `program_studi`
  ADD PRIMARY KEY (`kd_prodi`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD CONSTRAINT `mahasiswa_program_studi_fk` FOREIGN KEY (`program_studi_kd_prodi`) REFERENCES `program_studi` (`kd_prodi`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  ADD CONSTRAINT `mata_kuliah_dosen_fk` FOREIGN KEY (`dosen_nip`) REFERENCES `dosen` (`nip`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `nilai`
--
ALTER TABLE `nilai`
  ADD CONSTRAINT `nilai_mahasiswa_fk` FOREIGN KEY (`mahasiswa_nim`) REFERENCES `mahasiswa` (`nim`) ON DELETE CASCADE,
  ADD CONSTRAINT `nilai_mata_kuliah_fk` FOREIGN KEY (`mata_kuliah_kd_mk`) REFERENCES `mata_kuliah` (`kd_mk`) ON DELETE CASCADE;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Dumping data untuk tabel `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'database', 'techycomputer', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"structure_or_data_forced\":\"0\",\"table_select[]\":[\"admin\",\"barang\",\"pelanggan\"],\"table_structure[]\":[\"admin\",\"barang\",\"pelanggan\"],\"table_data[]\":[\"admin\",\"barang\",\"pelanggan\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@DATABASE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"structure_and_data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"structure_and_data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_procedure_function\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_create_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}'),
(2, 'root', 'server', 'Backup DB', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"absensionline\",\"coba_php\",\"datakematian\",\"dbdlearning\",\"dbpenduduknew\",\"dbpenduduksmd\",\"gc\",\"greenculture\",\"greenculture1\",\"kocak\",\"lampiongardensmd\",\"mahasiswa\",\"manajemendatakematianwarga\",\"pakelompok11\",\"percobaan\",\"phpmyadmin\",\"techycomputer\",\"techycomputer2\",\"tokokomputer\",\"tutorial\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Struktur tabel @TABLE@\",\"latex_structure_continued_caption\":\"Struktur tabel @TABLE@ (dilanjutkan)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Isi tabel @TABLE@\",\"latex_data_continued_caption\":\"Isi tabel @TABLE@ (dilanjutkan)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data untuk tabel `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"techycomputer\",\"table\":\"pelanggan\"},{\"db\":\"lampiongardensmd\",\"table\":\"artikel\"},{\"db\":\"lampiongardensmd\",\"table\":\"akun\"},{\"db\":\"lampiongardensmd\",\"table\":\"event\"},{\"db\":\"lampiongardensmd\",\"table\":\"daftar_event\"},{\"db\":\"greenculture\",\"table\":\"artikel\"},{\"db\":\"greenculture\",\"table\":\"daftar_event\"},{\"db\":\"greenculture\",\"table\":\"event\"},{\"db\":\"greenculture\",\"table\":\"akun\"},{\"db\":\"gc\",\"table\":\"akun\"}]');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

--
-- Dumping data untuk tabel `pma__table_info`
--

INSERT INTO `pma__table_info` (`db_name`, `table_name`, `display_field`) VALUES
('greenculture', 'artikel', 'judul'),
('greenculture', 'daftar_event', 'nama_pendaftar'),
('manajemendatakematianwarga', 'keluarga_almarhum', 'Nama');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data untuk tabel `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'manajemendatakematianwarga', 'almarhum', '{\"CREATE_TIME\":\"2023-10-28 21:15:15\",\"col_order\":[0,1,2,3,4,5,6,7],\"col_visib\":[1,1,1,1,1,1,1,1]}', '2023-11-01 01:59:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data untuk tabel `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2024-06-22 06:37:31', '{\"Console\\/Mode\":\"show\",\"lang\":\"id\"}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indeks untuk tabel `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indeks untuk tabel `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indeks untuk tabel `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indeks untuk tabel `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indeks untuk tabel `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indeks untuk tabel `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indeks untuk tabel `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indeks untuk tabel `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indeks untuk tabel `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indeks untuk tabel `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `techycomputer`
--
CREATE DATABASE IF NOT EXISTS `techycomputer` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `techycomputer`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(2) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admindian', 'kamikaze357'),
(2, 'adminchandra', 'c123');

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id_barang` varchar(5) NOT NULL,
  `nama_barang` varchar(75) NOT NULL,
  `vendor` varchar(50) NOT NULL,
  `stok` varchar(20) NOT NULL,
  `harga` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id_barang`, `nama_barang`, `vendor`, `stok`, `harga`) VALUES
('CP001', 'Intel Core i5 10400F', 'Intel', '30', '1.500.000'),
('CP002', 'Intel Core i5 11400F', 'Intel', '19', '1.200.000'),
('CP003', 'Intel Core i5 9400F', 'Intel', '7', '2.100.000'),
('CP004', 'Intel Core i3 10100F', 'Intel', '20', '990.000'),
('CP005', 'Intel Core i7 11700KF', 'Intel', '9', '4.200.000'),
('CP006', 'Ryzen 5 5600', 'AMD', '8', '1.400.000'),
('CP007', 'Ryzen 7 5800X', 'AMD', '14', '4.200.000'),
('CP008', 'Ryzen 3 4100', 'AMD', '25', '1.300.000'),
('CP009', 'Ryzen 9 5900X', 'AMD', '9', '5.600.000'),
('CP010', 'Intel Core i9 12900KF', 'Intel', '8', '6.500.000'),
('CP011', 'AMD Athlon 3000G', 'AMD', '20', '680.000'),
('GP001', 'VGA NVDIA ASUS GeForce RTX3060 12GB GDDR6', 'Asus', '15', '3.950.000'),
('GP002', 'VGA MSI GeForce RTX 4070 Ti SUPER GAMING SLIM 16GB GDDR6X', 'MSI', '20', '16.400.000'),
('GP003', 'VGA VURRION GTX 750Ti 4GB DDR5 128 BIT', 'Vurrion', '30', '1.225.000'),
('GP004', 'VGA MSI GTX 1650 4GB SUPER Ventus XS OC GDDR6 Gaming', 'MSI', '17', '1.950.000'),
('GP005', 'VGA ASUS ROG Strix GeForce RTX 4090 OC 24GB GDDR6X', 'Asus', '8', '37.700.000'),
('MB001', 'MB ASUS ROG STRIX Z690A GAMING WIFI D4 INTEL Z690 LGA1700', 'Asus', '10', '5.980.000'),
('MB002', 'MB ASUS ROG STRIX B450F GAMING II AMD AM4', 'Asus', '15', '1.910.000'),
('MB003', 'MB ASROCK H410MH DDR4 LGA1200', 'Asrock', '13', '865.000'),
('MB004', 'MSI Motherboard MAG B760M MORTAR II DDR5', 'MSI', '16', '3.185.000'),
('MB005', 'MB ASRock B760M Steel Legend WIFI DDR5 LGA 1700', 'Asrock', '17', '1.700.000'),
('PS001', 'PSU FSP HV PRO 550W 80 Bronze', 'FSP', '44', '687.000'),
('PS002', 'PSU Corsair RM Series 850W Full Modular 80 Plus Gold RM850', 'Corsair', '20', '1.900.000'),
('PS003', 'PSU Cooler Master 650 TUF 80 Masterwatt Gaming 650W', 'Asus', '34', '1.215.000'),
('PS004', 'PSU Asus TUF Gaming 550B 550 Watt 80 Bronze', 'Asus', '50', '990.000'),
('PS005', 'PSU KYO SAMA 650W 80 Bronze Modular BLACK', 'KYO', '19', '789.000'),
('RM001', 'RAM Kingston Fury RGB 16GB DDR4 3600Mhz', 'Kingston', '35', '1.100.000'),
('RM002', 'RAM HyperX Furry 16GB DDR4 3600Mhz', 'Kingston', '50', '1.425.000'),
('RM003', 'RAM Teamgroup Elite SODIM 8GB  DDR4 3200Mhz', 'Teamgroup', '37', '365.000'),
('RM004', 'RAM Teamgroup Elite SODIM 16GB DDR4 3200Mhz	', 'Teamgroup', '25', '760.000'),
('RM005', 'RAM T-Force Delta RGB DDR5 32GB (16GB x 2 ) PC 6000Mhz', 'Teamgroup', '20', '2.000.000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id` int(3) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `username_pelanggan` varchar(35) NOT NULL,
  `password_pelanggan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`id`, `nama`, `email`, `username_pelanggan`, `password_pelanggan`) VALUES
(1, 'Badrun', 'badrunanjay@gmail.com', 'badrunsaja', 'badrun123'),
(2, 'Rayhan', 'rayhanyo@yahoo.com', 'rayhanyo', 'rayhan123'),
(7, 'asdad', 'asda@gmail.com', 'loki', 'sadsad'),
(8, 'Irfan Lamuna', 'irfanlmn@gmail.com', 'irfanlamuna', '123');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Database: `techycomputer2`
--
CREATE DATABASE IF NOT EXISTS `techycomputer2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `techycomputer2`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(2) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admindian', 'kamikaze357'),
(2, 'adminchandra', 'chandra123'),
(3, 'adminray', 'ray123456');

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id_barang` varchar(5) NOT NULL,
  `nama_barang` varchar(75) NOT NULL,
  `vendor` varchar(50) NOT NULL,
  `stok` varchar(20) NOT NULL,
  `harga` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id_barang`, `nama_barang`, `vendor`, `stok`, `harga`) VALUES
('CP001', 'Intel Core i5 10400F', 'Intel', '28', '1.500.000'),
('CP002', 'Intel Core i5 11400F', 'Intel', '12', '1.200.000'),
('CP003', 'Intel Core i5 9400F', 'Intel', '7', '2.100.000'),
('CP004', 'Intel Core i3 10100F', 'Intel', '20', '990.000'),
('CP005', 'Intel Core i7 11700KF', 'Intel', '9', '4.200.000'),
('CP006', 'Ryzen 5 5600', 'AMD', '8', '1.400.000'),
('CP007', 'Ryzen 7 5800X', 'AMD', '14', '4.200.000'),
('CP008', 'Ryzen 3 4100', 'AMD', '25', '1.300.000'),
('CP009', 'Ryzen 9 5900X', 'AMD', '9', '5.600.000'),
('CP010', 'Intel Core i9 12900KF', 'Intel', '8', '6.500.000'),
('CP011', 'AMD Athlon 3000G', 'AMD', '20', '680.000'),
('GP001', 'VGA NVDIA ASUS GeForce RTX3060 12GB GDDR6', 'Asus', '15', '3.950.000'),
('GP002', 'VGA MSI GeForce RTX 4070 Ti SUPER GAMING SLIM 16GB GDDR6X', 'MSI', '20', '16.400.000'),
('GP003', 'VGA VURRION GTX 750Ti 4GB DDR5 128 BIT', 'Vurrion', '30', '1.225.000'),
('GP004', 'VGA MSI GTX 1650 4GB SUPER Ventus XS OC GDDR6 Gaming', 'MSI', '17', '1.950.000'),
('GP005', 'VGA ASUS ROG Strix GeForce RTX 4090 OC 24GB GDDR6X', 'Asus', '8', '37.700.000'),
('MB001', 'MB ASUS ROG STRIX Z690A GAMING WIFI D4 INTEL Z690 LGA1700', 'Asus', '10', '5.980.000'),
('MB002', 'MB ASUS ROG STRIX B450F GAMING II AMD AM4', 'Asus', '15', '1.910.000'),
('MB003', 'MB ASROCK H410MH DDR4 LGA1200', 'Asrock', '13', '865.000'),
('MB004', 'MSI Motherboard MAG B760M MORTAR II DDR5', 'MSI', '16', '3.185.000'),
('MB005', 'MB ASRock B760M Steel Legend WIFI DDR5 LGA 1700', 'Asrock', '17', '1.700.000'),
('PS001', 'PSU FSP HV PRO 550W 80 Bronze', 'FSP', '44', '687.000'),
('PS002', 'PSU Corsair RM Series 850W Full Modular 80 Plus Gold RM850', 'Corsair', '20', '1.900.000'),
('PS003', 'PSU Cooler Master 650 TUF 80 Masterwatt Gaming 650W', 'Asus', '34', '1.215.000'),
('PS004', 'PSU Asus TUF Gaming 550B 550 Watt 80 Bronze', 'Asus', '50', '990.000'),
('PS005', 'PSU KYO SAMA 650W 80 Bronze Modular BLACK', 'KYO', '19', '789.000'),
('RM001', 'RAM Kingston Fury RGB 16GB DDR4 3600Mhz', 'Kingston', '35', '1.100.000'),
('RM002', 'RAM HyperX Furry 16GB DDR4 3600Mhz', 'Kingston', '50', '1.425.000'),
('RM003', 'RAM Teamgroup Elite SODIM 8GB  DDR4 3200Mhz', 'Teamgroup', '37', '365.000'),
('RM004', 'RAM Teamgroup Elite SODIM 16GB DDR4 3200Mhz	', 'Teamgroup', '25', '760.000'),
('RM005', 'RAM T-Force Delta RGB DDR5 32GB (16GB x 2 ) PC 6000Mhz', 'Teamgroup', '23', '2.000.000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id` int(3) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `username_pelanggan` varchar(35) NOT NULL,
  `password_pelanggan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`id`, `nama`, `email`, `username_pelanggan`, `password_pelanggan`) VALUES
(1, 'Badrun', 'badrunanjay@gmail.com', 'badrunsaja', 'badrun123'),
(2, 'Rayhan', 'rayhanyo@yahoo.com', 'rayhanyo', 'rayhan123'),
(8, 'Irfan Lamuna', 'irfanlmn@gmail.com', 'irfanlamuna', '12345'),
(11, 'Rosalina', 'rosa@yahoo.com', 'rosarose', 'roses1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sradmin`
--

CREATE TABLE `sradmin` (
  `id_sradmin` int(3) NOT NULL,
  `usernamesr` varchar(50) NOT NULL,
  `passwordsr` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `sradmin`
--

INSERT INTO `sradmin` (`id_sradmin`, `usernamesr`, `passwordsr`) VALUES
(1, 'sradminray', 'ray123');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sradmin`
--
ALTER TABLE `sradmin`
  ADD PRIMARY KEY (`id_sradmin`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `sradmin`
--
ALTER TABLE `sradmin`
  MODIFY `id_sradmin` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `tokokomputer`
--
CREATE DATABASE IF NOT EXISTS `tokokomputer` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `tokokomputer`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `Id_admin` char(6) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Telepon` char(12) NOT NULL,
  `Username` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`Id_admin`, `Nama`, `Telepon`, `Username`, `Password`) VALUES
('ADM001', 'Dian Nurdiansyah', '081233389112', 'diankaze', 'kamikaze123'),
('ADM002', 'Ahmad Junaedi', '081341095532', 'admin1', '12345');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_barang`
--

CREATE TABLE `data_barang` (
  `Id_barang` char(6) NOT NULL,
  `Nama_barang` varchar(35) NOT NULL,
  `Vendor` varchar(35) NOT NULL,
  `Stok` varchar(35) NOT NULL,
  `Harga` varchar(50) NOT NULL,
  `Admin_Id_admin` char(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `data_barang`
--

INSERT INTO `data_barang` (`Id_barang`, `Nama_barang`, `Vendor`, `Stok`, `Harga`, `Admin_Id_admin`) VALUES
('B001', 'AMD Ryzen 5 3600', 'AMD', '15', '1200000', 'ADM001'),
('B003', 'RAM Corsair 16GB Kit', 'Corsair', '1', '700000', 'ADM001'),
('B004', 'Intel Core i5 12400F', 'Intel', '10', '1400000', 'ADM001'),
('B005', 'VGA GTX 1650 Super', 'Nvidia', '8', '1450000', 'ADM001'),
('B006', 'PSU Fsp HV Pro 550W 80+', 'FSP', '20', '720000', 'ADM001'),
('B007', 'PSU CV 750W 80+ Bronze', 'Corsair', '14', '1200000', 'ADM001'),
('B008', 'Case NYK Namesis T10', 'NYK', '13', '310000', 'ADM001'),
('B009', 'CASE Nimitz N5', 'Armageddon', '20', '350000', 'ADM001'),
('B010', 'HSF Cooler EK6000', 'Paladin', '20', '495000', 'ADM001'),
('B011', 'AIO LC KRAKEN 240MM', 'NZXT', '15', '1900000', 'ADM001'),
('B012', 'Thermal Kryonaut 1GR', 'Thermal Grizzly', '25', '90000', 'ADM001'),
('B013', 'Thermal MX-6 Ultimate 4GR', 'Artic', '10', '150000', 'ADM001'),
('B014', 'Intel Core i9 13900KF', 'Intel', '3', '10300000', 'ADM001'),
('B015', 'VGA GTX 750Ti 4GB', 'Nvidia', '11', '1250000', 'ADM001'),
('B016', 'adasd', 'qdadawd', 'qwdad', '13132131', 'ADM001');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `Id_pelanggan` char(6) NOT NULL,
  `Nama_pelanggan` varchar(50) NOT NULL,
  `Telepon_pelanggan` char(12) NOT NULL,
  `Username_pelanggan` varchar(35) NOT NULL,
  `Password_pelanggan` varchar(35) NOT NULL,
  `Admin_Id_admin` char(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`Id_pelanggan`, `Nama_pelanggan`, `Telepon_pelanggan`, `Username_pelanggan`, `Password_pelanggan`, `Admin_Id_admin`) VALUES
('P0001', 'Muhammad Fauzan Gifari', '081271645231', 'fauzan', '123', 'ADM001'),
('P0002', 'Rayhan', '081344556677', 'rayhanyo', '12345', 'ADM001'),
('P0003', 'Chandra Phang', '082254637722', 'chandrap', 'chandra123', 'ADM001'),
('P0005', 'Erina Alita', '085259734521', 'erinaa', 'erinaa', 'ADM001'),
('P0006', 'Abdul Rahman', '081752546677', 'rahmanisme', '12345', 'ADM001'),
('P0007', 'irfan', '081341205942', 'irfanyo', '12345', 'ADM001');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Id_admin`);

--
-- Indeks untuk tabel `data_barang`
--
ALTER TABLE `data_barang`
  ADD PRIMARY KEY (`Id_barang`),
  ADD KEY `Data_barang_Admin_FK` (`Admin_Id_admin`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`Id_pelanggan`),
  ADD KEY `Pelanggan_Admin_FK` (`Admin_Id_admin`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `data_barang`
--
ALTER TABLE `data_barang`
  ADD CONSTRAINT `Data_barang_Admin_FK` FOREIGN KEY (`Admin_Id_admin`) REFERENCES `admin` (`Id_admin`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD CONSTRAINT `Pelanggan_Admin_FK` FOREIGN KEY (`Admin_Id_admin`) REFERENCES `admin` (`Id_admin`) ON DELETE NO ACTION ON UPDATE NO ACTION;
--
-- Database: `tutorial`
--
CREATE DATABASE IF NOT EXISTS `tutorial` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `tutorial`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `nomor_telepon` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `nama`, `email`, `nomor_telepon`) VALUES
(1, 'John Doe', 'john.doe@example.com', '08123456789'),
(2, 'Jane Smith', 'jane.smith@example.com', '08567891234'),
(3, 'Michael Johnson', 'michael.johnson@example.com', '08234567890'),
(4, 'John Doe', 'john.doe@example.com', '08123456789'),
(5, 'Jane Smith', 'jane.smith@example.com', '08567891234'),
(6, 'Michael Johnson', 'michael.johnson@example.com', '08234567890'),
(7, 'John Doe', 'john.doe@example.com', '08123456789'),
(8, 'Jane Smith', 'jane.smith@example.com', '08567891234'),
(9, 'Michael Johnson', 'michael.johnson@example.com', '08234567890'),
(10, 'John Doe', 'john.doe@example.com', '08123456789'),
(11, 'Jane Smith', 'jane.smith@example.com', '08567891234'),
(12, 'Michael Johnson', 'michael.johnson@example.com', '08234567890'),
(13, 'John Doe', 'john.doe@example.com', '08123456789'),
(14, 'Jane Smith', 'jane.smith@example.com', '08567891234'),
(15, 'Michael Johnson', 'michael.johnson@example.com', '08234567890'),
(16, 'Dian Nurdiansyah', 'dian.kaze@example.com', '8234567890');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
