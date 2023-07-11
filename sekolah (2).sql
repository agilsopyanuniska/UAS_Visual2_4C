-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2023 at 08:18 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sekolah`
--

-- --------------------------------------------------------

--
-- Table structure for table `hubungan`
--

CREATE TABLE `hubungan` (
  `id` int(8) NOT NULL,
  `siswa_id` int(8) DEFAULT NULL,
  `ortu_id` int(8) DEFAULT NULL,
  `status_hub_anak` varchar(30) DEFAULT NULL,
  `keterangan` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hubungan`
--

INSERT INTO `hubungan` (`id`, `siswa_id`, `ortu_id`, `status_hub_anak`, `keterangan`) VALUES
(6001, 1, 2001, 'Kandung', 'ayah'),
(6002, 1, 2002, 'Kandung', 'ibu'),
(6003, 2, 2003, 'Tiri', 'ayah'),
(6004, 2, 2004, 'Kandung', 'ibu'),
(6005, 3, 2005, 'Kandung', 'ayah'),
(6006, 3, 2006, 'Kandung', 'ibu'),
(6007, 4, 2007, 'Kandung', 'ayah'),
(6008, 4, 2008, 'Tiri', 'ibu'),
(6009, 5, 2009, 'Tiri', 'ayah'),
(6010, 5, 2010, 'Kandung', 'ibu');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `kelas_id` int(8) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `jenis` varchar(100) DEFAULT NULL,
  `jurusan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`kelas_id`, `nama`, `jenis`, `jurusan`) VALUES
(7001, 'keluar kelas tanpa izin', 'pelanggaran', 'IPS'),
(7002, 'Mengacau sekolah/kelas', 'pelanggaran', 'IPA'),
(7003, 'Juara Umum', 'prestasi', 'Bahasa'),
(7004, 'Juara Kelas Peringkat I', 'prestasi', 'IPS'),
(7005, 'Juara Kelas Peringkat III', 'prestasi', 'IPA');

-- --------------------------------------------------------

--
-- Table structure for table `orang_tua`
--

CREATE TABLE `orang_tua` (
  `ortu_id` int(8) NOT NULL,
  `nik` varchar(16) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `pendidikan` varchar(50) DEFAULT NULL,
  `pekerjaan` varchar(50) DEFAULT NULL,
  `telp` varchar(15) DEFAULT NULL,
  `alamat` varchar(150) DEFAULT NULL,
  `jenis_kelamin` varchar(15) DEFAULT NULL,
  `agama` varchar(20) DEFAULT NULL,
  `status` enum('aktif','tidak aktif') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orang_tua`
--

INSERT INTO `orang_tua` (`ortu_id`, `nik`, `nama`, `pendidikan`, `pekerjaan`, `telp`, `alamat`, `jenis_kelamin`, `agama`, `status`) VALUES
(2001, '6248910489174619', 'Siti', 'SMA', 'Wirausaha', '0812345678901', 'Banjarbaru', 'Perempuan', 'Islam', 'aktif'),
(2002, '6248910489178971', 'Andi', 'S2', 'Dosen', '0812345678902', 'Banjarmasin', 'Pria', 'Islam', 'aktif'),
(2003, '6248910489178972', 'Fahry', 'S1', 'Pegawai Swasta', '0812345678903', 'Banjarmasin', 'Pria', 'Islam', 'aktif'),
(2004, '6248910489178973', 'Melati', 'S1', 'Guru', '0812345678904', 'Banjarbaru', 'Perempuan', 'Islam', 'aktif'),
(2005, '6248910489178979', 'Herman', 'SMA', 'Wiraswasta', '0812345678905', 'Banjarbaru', 'Pria', 'Islam', 'aktif'),
(2006, '6248910489174674', 'Dayah', 'SMA', 'Wiraswasta', '0812345678906', 'Banjarbaru', 'Perempuan', 'Islam', 'aktif'),
(2007, '6248910489174675', 'Tomi', 'S1', 'PNS', '0812345678907', 'Banjarmasin', 'Pria', 'Islam', 'aktif'),
(2008, '6248910489174678', 'Wati', 'S1', 'PNS Guru', '0812345678908', 'Banjarmasin', 'Perempuan', 'Islam', 'aktif'),
(2009, '6248910489174679', 'Ato', 'SMA', 'Wirausaha', '0812345678909', 'Banjarbaru', 'Pria', 'Islam', 'aktif'),
(2010, '6248910489174680', 'Ati', 'SMA', 'Wirausaha', '0812345678910', 'Banjarbaru', 'Perempuan', 'Islam', 'aktif');

-- --------------------------------------------------------

--
-- Table structure for table `poin`
--

CREATE TABLE `poin` (
  `poin_id` int(8) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `bobot` int(5) DEFAULT NULL,
  `jenis` varchar(100) DEFAULT NULL,
  `status` enum('aktif','tidak aktif') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `poin`
--

INSERT INTO `poin` (`poin_id`, `nama`, `bobot`, `jenis`, `status`) VALUES
(5001, 'keluar kelas tanpa izin', 5, 'pelanggaran', 'aktif'),
(5002, 'mengacau sekolah/kelas', 10, 'pelanggaran', 'aktif'),
(5003, 'Juara Umum', 30, 'prestasi', 'aktif'),
(5004, 'Juara Kelas Peringkat I', 20, 'prestasi', 'aktif'),
(5005, 'Juara Kelas Peringkat III', 10, 'prestasi', 'aktif');

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_poin`
--

CREATE TABLE `riwayat_poin` (
  `id` int(8) NOT NULL,
  `siswa_id` int(8) DEFAULT NULL,
  `poin_id` int(8) DEFAULT NULL,
  `wali_id` int(8) DEFAULT NULL,
  `ortu_id` int(8) DEFAULT NULL,
  `kelas_id` int(8) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `semester` varchar(8) DEFAULT NULL,
  `status` enum('aktif','tidak aktif') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `riwayat_poin`
--

INSERT INTO `riwayat_poin` (`id`, `siswa_id`, `poin_id`, `wali_id`, `ortu_id`, `kelas_id`, `tanggal`, `semester`, `status`) VALUES
(3001, 1, 5001, 4001, 2001, 7001, '2022-09-12', 'Ganjil', 'aktif'),
(3002, 2, 5002, 4002, 2003, 7002, '2022-09-11', 'Ganjil', 'aktif'),
(3003, 3, 5003, 4003, 2005, 7003, '2022-09-10', 'Ganjil', 'aktif'),
(3004, 4, 5004, 4004, 2007, 7004, '2023-01-10', 'Genap', 'aktif'),
(3005, 5, 5005, 4005, 2009, 7005, '2023-01-11', 'Genap', 'aktif');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `siswa_id` int(8) NOT NULL,
  `nis` varchar(20) DEFAULT NULL,
  `nisn` varchar(20) DEFAULT NULL,
  `nama_siswa` varchar(100) DEFAULT NULL,
  `nik` varchar(16) DEFAULT NULL,
  `tempat_lahir` varchar(50) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `jenis_kelamin` varchar(15) DEFAULT NULL,
  `tingkat_kelas` varchar(15) DEFAULT NULL,
  `jurusan` varchar(20) DEFAULT NULL,
  `wali_kelas` varchar(100) DEFAULT NULL,
  `alamat` varchar(150) DEFAULT NULL,
  `telp` varchar(15) DEFAULT NULL,
  `hp` varchar(15) DEFAULT NULL,
  `status` enum('aktif','tidak aktif') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`siswa_id`, `nis`, `nisn`, `nama_siswa`, `nik`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `tingkat_kelas`, `jurusan`, `wali_kelas`, `alamat`, `telp`, `hp`, `status`) VALUES
(1, '6661', '1122334455', 'Syifa', '1234567891011121', 'Martapura', '2004-01-01', 'Perempuan', 'XI', 'Bahasa', 'Aida', 'Banjarbaru', '0812345678', '082134567891', 'aktif'),
(2, '6662', '2122334455', 'Rasid', '1234567891011122', 'Barabai', '2004-01-01', 'Pria', 'XII', 'IPA', 'Yusuf', 'Banjarmasin', '0822345678', '082134567892', 'aktif'),
(3, '6663', '3122334455', 'Raihan', '1234567891011123', 'Balangan', '2004-11-03', 'Pria', 'X', 'IPS', 'Laila', 'Banjarmasin', '0821345678', '082134567893', 'aktif'),
(4, '6664', '4122334455', 'Santi', '1234567891011124', 'Banjarbaru', '2004-12-03', 'Perempuan', 'XII', 'Bahasa', 'Dwi', 'Banjarbaru', '0822445678', '082134567894', 'aktif'),
(5, '6665', '5122334455', 'Fikri', '1234567891011125', 'Banjarmasin', '2003-12-05', 'Pria', 'X', 'IPA', 'Firman', 'Banjarmasin', '0812445670', '082134567895', 'aktif'),
(6, 'A', 'B', 'C', 'D', 'E', '2023-06-24', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'aktif');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(8) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `level` enum('1','2') DEFAULT NULL,
  `status` enum('aktif','tidak aktif') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `nama`, `password`, `level`, `status`) VALUES
(1002, 'Ani', 'abcd1235', '2', 'tidak aktif'),
(1003, 'Adi', 'abcd1236', '2', 'aktif'),
(1004, 'Ali', 'abcd1237', '1', 'tidak aktif'),
(1005, 'Ami', 'abcd1250', '1', 'aktif'),
(1006, 'Ari', 'abcd1234', '1', 'aktif'),
(1007, 'a', 'b', NULL, NULL),
(1008, 's', 'b', NULL, NULL),
(1009, 'Sopyan Agil', '123', '1', NULL),
(1010, 'Agil', '123', '2', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wali_kelas`
--

CREATE TABLE `wali_kelas` (
  `wali_id` int(8) NOT NULL,
  `nik` varchar(20) DEFAULT NULL,
  `nip` varchar(22) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `jenis_kelamin` varchar(15) DEFAULT NULL,
  `pendidikan` varchar(50) DEFAULT NULL,
  `telp` varchar(15) DEFAULT NULL,
  `alamat` varchar(150) DEFAULT NULL,
  `mata_pelajaran` varchar(50) DEFAULT NULL,
  `status` enum('aktif','tidak aktif') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wali_kelas`
--

INSERT INTO `wali_kelas` (`wali_id`, `nik`, `nip`, `nama`, `jenis_kelamin`, `pendidikan`, `telp`, `alamat`, `mata_pelajaran`, `status`) VALUES
(4001, '7280912895108411', '', 'Aida', 'Perempuan', 'S1', '081209234721', 'Banjarbaru', 'Sejarah', 'aktif'),
(4002, '7280912895108412', '', 'Yusuf', 'Laki-laki', 'S1', '081209234722', 'Banjarmasin', 'Matematika Wajib', 'aktif'),
(4003, '7280912895108413', '', 'Laila', 'Perempuan', 'S2', '081209234723', 'Martapura', 'Seni Budaya', 'aktif'),
(4004, '7280912895108414', '', 'Firman', 'Laki-laki', 'S2', '081209234724', 'Banjarmasin', 'Kimia', 'aktif'),
(4005, '7280912895108415', '', 'Dwi', 'Perempuan', 'S1', '081209234725', 'Banjarmasin', 'Bahasa Indonesia', 'aktif');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hubungan`
--
ALTER TABLE `hubungan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ortu_id` (`ortu_id`),
  ADD KEY `siswa_id` (`siswa_id`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`kelas_id`);

--
-- Indexes for table `orang_tua`
--
ALTER TABLE `orang_tua`
  ADD PRIMARY KEY (`ortu_id`);

--
-- Indexes for table `poin`
--
ALTER TABLE `poin`
  ADD PRIMARY KEY (`poin_id`);

--
-- Indexes for table `riwayat_poin`
--
ALTER TABLE `riwayat_poin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kelas_id` (`kelas_id`),
  ADD KEY `ortu_id` (`ortu_id`),
  ADD KEY `poin_id` (`poin_id`),
  ADD KEY `siswa_id` (`siswa_id`),
  ADD KEY `wali_id` (`wali_id`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`siswa_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `wali_kelas`
--
ALTER TABLE `wali_kelas`
  ADD PRIMARY KEY (`wali_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hubungan`
--
ALTER TABLE `hubungan`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6011;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `kelas_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7006;

--
-- AUTO_INCREMENT for table `orang_tua`
--
ALTER TABLE `orang_tua`
  MODIFY `ortu_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2011;

--
-- AUTO_INCREMENT for table `poin`
--
ALTER TABLE `poin`
  MODIFY `poin_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5006;

--
-- AUTO_INCREMENT for table `riwayat_poin`
--
ALTER TABLE `riwayat_poin`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3006;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `siswa_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1011;

--
-- AUTO_INCREMENT for table `wali_kelas`
--
ALTER TABLE `wali_kelas`
  MODIFY `wali_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4006;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hubungan`
--
ALTER TABLE `hubungan`
  ADD CONSTRAINT `hubungan_ibfk_1` FOREIGN KEY (`ortu_id`) REFERENCES `orang_tua` (`ortu_id`),
  ADD CONSTRAINT `hubungan_ibfk_2` FOREIGN KEY (`siswa_id`) REFERENCES `siswa` (`siswa_id`);

--
-- Constraints for table `riwayat_poin`
--
ALTER TABLE `riwayat_poin`
  ADD CONSTRAINT `riwayat_poin_ibfk_1` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`kelas_id`),
  ADD CONSTRAINT `riwayat_poin_ibfk_2` FOREIGN KEY (`ortu_id`) REFERENCES `orang_tua` (`ortu_id`),
  ADD CONSTRAINT `riwayat_poin_ibfk_3` FOREIGN KEY (`poin_id`) REFERENCES `poin` (`poin_id`),
  ADD CONSTRAINT `riwayat_poin_ibfk_4` FOREIGN KEY (`siswa_id`) REFERENCES `siswa` (`siswa_id`),
  ADD CONSTRAINT `riwayat_poin_ibfk_5` FOREIGN KEY (`wali_id`) REFERENCES `wali_kelas` (`wali_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
