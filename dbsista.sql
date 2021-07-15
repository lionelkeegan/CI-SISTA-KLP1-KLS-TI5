-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 15, 2021 at 04:00 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbsista`
--

-- --------------------------------------------------------

--
-- Table structure for table `detail_penilaian`
--

CREATE TABLE `detail_penilaian` (
  `id` int(11) NOT NULL,
  `penilaian_id` int(11) NOT NULL,
  `dosen_id` int(11) NOT NULL,
  `seminar_id` int(11) DEFAULT NULL,
  `nilai` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_penilaian`
--

INSERT INTO `detail_penilaian` (`id`, `penilaian_id`, `dosen_id`, `seminar_id`, `nilai`) VALUES
(2, 2, 5, 12, 100);

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `id` int(11) NOT NULL,
  `nidn` varchar(10) DEFAULT NULL,
  `nama` varchar(45) DEFAULT NULL,
  `foto` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`id`, `nidn`, `nama`, `foto`) VALUES
(1, '084020211', 'AMALIA RAHMAH, S.T, S.T, M.T', ''),
(2, '084040200', 'BACHTIAR FIRDAUS, S.T, M.P', ''),
(4, '084201001', 'MUHAMMAD BINTANG, S.Kom', ''),
(5, '084310911', 'NUGROHO DWI SAPUTRA, S.Kom, M.Ti', ''),
(7, '084230787', 'RUSMANTO, M.M., Drs', ''),
(8, '084260989', 'SAPTO WALUYO, S.Sos, M.Sc.', ''),
(9, '0860696', 'SUHENDI, M.M.S.I, S.T', ''),
(10, '084010195', 'WARSONO, S.Kom, M.Ti', ''),
(11, '084241010', 'YEKTI WIRANI, S.T, M.Ti', ''),
(12, '084080200', 'DEDY ACHMADI, S.T, M.T', ''),
(13, '084071314', 'MISNA ASQIA, S.Kom, M.Kom', ''),
(14, '084050315', 'NURUL JANAH, S.IIP, M.HUM', ''),
(15, '084300500', 'EDI WIBOWO, S.E, M.M', ''),
(16, '084131310', 'AHMAD RIO ADRIANSYAH, S.Si, M.Si', ''),
(17, '084260511', 'APRIL RUSTIANTO, S.Kom, M.T', ''),
(18, '084070998', 'HENRY SAPTONO, S.Si, M.Kom', ''),
(19, '084111208', 'HILMY ABIDZAR TAWAKAL, S.T, M.Kom', ''),
(20, '084211202', 'LUKMAN ROSYIDI, S.T, M.M., M.T', ''),
(21, '084270601', 'REZA PRIMARDIANSYAH, S.T, M.Kom', ''),
(22, '084240913', 'SALMAN EL FARISI, S.Kom, M.Kom', ''),
(23, '084290398', 'SIGIT PUSPITO WIGATI JAROT,PhD', ''),
(24, '084140495', 'SIROJUL MUNIR, S.Si, M.Kom', ''),
(25, '084100915', 'TUBAGUS RIZKY DHARMAWAN, S.T, M.Sc.', ''),
(26, '084260907', 'ZAKI IMADUDDIN, S.T, M.Kom', ''),
(27, '084281214', 'ADITYA PUTRA, S.T, M.T', ''),
(28, '084101104', 'NASRUL, S.Kom, M.Kom', ''),
(29, '084200914', 'TIFANI NABARIAN, S.Kom, M.T.I', ''),
(30, '084301213', 'PUDY PRIMA, S.T, M.Kom', ''),
(31, '084240795', 'EFRIZAL ZAIDA, S.KOM, M.M, M.KOM', ''),
(32, '0899902010', 'TEGUH RAHARJO, S.Kom, M.Kom', ''),
(33, '084290906', 'ISHOM MUHAMMAD DREHEM,S.Kom, M.Kom', ''),
(34, '084141310', 'IMAM HAROMAIN, S.Si, M.Kom', ''),
(36, '0110220242', 'ACHMAD IRVAN FAUZI', ''),
(37, '29022008', 'syifa fauziyah', ''),
(40, '8888888', 'daud delapan', '7594902.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_seminar`
--

CREATE TABLE `kategori_seminar` (
  `id` int(11) NOT NULL,
  `nama` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kategori_seminar`
--

INSERT INTO `kategori_seminar` (`id`, `nama`) VALUES
(1, 'Seminar Proposal'),
(2, 'Seminar Hasil'),
(3, 'Sidang Skripsi');

-- --------------------------------------------------------

--
-- Table structure for table `penilaian`
--

CREATE TABLE `penilaian` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `keterangan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penilaian`
--

INSERT INTO `penilaian` (`id`, `nama`, `keterangan`) VALUES
(1, 'Presentasi', 'pembukaan, intonasi, kesopanan, kerapihan pakaian'),
(2, 'Penguasaan Materi', 'cukup jelas'),
(3, 'Penulisan Dokumen', 'cukup jelas');

-- --------------------------------------------------------

--
-- Table structure for table `peserta_seminar`
--

CREATE TABLE `peserta_seminar` (
  `id` int(11) NOT NULL,
  `nim` varchar(10) DEFAULT NULL,
  `nama` varchar(45) DEFAULT NULL,
  `seminar_id` int(11) NOT NULL,
  `kehadiran` smallint(6) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `peserta_seminar`
--

INSERT INTO `peserta_seminar` (`id`, `nim`, `nama`, `seminar_id`, `kehadiran`) VALUES
(1, '0110220242', 'David Octavyanto', 10, 3),
(5, '29022008', 'syifa fauziyah', 12, 30);

-- --------------------------------------------------------

--
-- Table structure for table `seminar_ta`
--

CREATE TABLE `seminar_ta` (
  `id` int(11) NOT NULL,
  `semester` int(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `jam` time DEFAULT NULL,
  `kategori_seminar_id` int(11) NOT NULL,
  `nim` varchar(10) DEFAULT NULL,
  `nama_mahasiswa` varchar(45) DEFAULT NULL,
  `judul` text DEFAULT NULL,
  `pembimbing_id` int(11) NOT NULL,
  `penguji1_id` int(11) DEFAULT NULL,
  `penguji2_id` int(11) DEFAULT NULL,
  `nilai_pembimbing` double DEFAULT NULL,
  `nilai_penguji1` double DEFAULT NULL,
  `nilai_penguji2` double DEFAULT NULL,
  `lokasi` varchar(40) DEFAULT NULL,
  `nilai_akhir` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `seminar_ta`
--

INSERT INTO `seminar_ta` (`id`, `semester`, `tanggal`, `jam`, `kategori_seminar_id`, `nim`, `nama_mahasiswa`, `judul`, `pembimbing_id`, `penguji1_id`, `penguji2_id`, `nilai_pembimbing`, `nilai_penguji1`, `nilai_penguji2`, `lokasi`, `nilai_akhir`) VALUES
(10, 4, '2021-07-08', '10:00:00', 2, '0110220242', 'SYIFA FAUZIYAH', 'aku sayang kamu', 36, 2, 2, 100, 100, 100, 'online', 100),
(12, 4, '2021-07-08', '15:10:00', 3, '0110220242', 'Achmad irvan fauzi', 'aku sayang kamu', 37, 0, 0, 100, 100, 100, 'online', 100);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(1, 'sistaklp01', 'sistaklp01@gmail.com', 'default.jpg', '$2y$10$tcKBSTMgQXvIUZmWyGm.RelBi5JIDOdQfdoZ0ePVC/LQkRwuaXysW', 1, 1, 1626028346),
(8, 'pak rojul', 'pakrojul@gmail.com', 'default.jpg', '$2y$10$mT0rQC0UTTm/6uL72XBgeORh265zOmLjjLLiLxwQOEasddM919gky', 3, 1, 1626357307);

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'administrator'),
(2, 'mahasiswa'),
(3, 'dosen');

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_penilian`
-- (See below for the actual view)
--
CREATE TABLE `vw_penilian` (
`id` int(11)
,`idnilai` int(11)
,`dosen` int(11)
,`seminar` int(11)
,`nilai` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_peserta`
-- (See below for the actual view)
--
CREATE TABLE `vw_peserta` (
`id` int(11)
,`nim` varchar(10)
,`nama` varchar(45)
,`no_seminar` int(11)
,`kehadiran` smallint(6)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_seminar`
-- (See below for the actual view)
--
CREATE TABLE `vw_seminar` (
`id` int(11)
,`semester` int(11)
,`tanggal` date
,`jam` time
,`kategori_seminar_id` int(11)
,`nim` varchar(10)
,`nama_mahasiswa` varchar(45)
,`judul` text
,`dosen_pembimbing` int(11)
,`penguji1_id` int(11)
,`penguji2_id` int(11)
,`nilai_pembimbing` double
,`nilai_penguji1` double
,`nilai_penguji2` double
,`lokasi` varchar(40)
,`nilai_akhir` double
);

-- --------------------------------------------------------

--
-- Structure for view `vw_penilian`
--
DROP TABLE IF EXISTS `vw_penilian`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_penilian`  AS SELECT `detail_penilaian`.`id` AS `id`, `penilaian`.`id` AS `idnilai`, `dosen`.`id` AS `dosen`, `seminar_ta`.`id` AS `seminar`, `detail_penilaian`.`nilai` AS `nilai` FROM (((`penilaian` join `detail_penilaian` on(`penilaian`.`id` = `detail_penilaian`.`penilaian_id`)) join `dosen` on(`detail_penilaian`.`dosen_id` = `dosen`.`id`)) join `seminar_ta` on(`detail_penilaian`.`seminar_id` = `seminar_ta`.`id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `vw_peserta`
--
DROP TABLE IF EXISTS `vw_peserta`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_peserta`  AS SELECT `peserta_seminar`.`id` AS `id`, `peserta_seminar`.`nim` AS `nim`, `peserta_seminar`.`nama` AS `nama`, `seminar_ta`.`id` AS `no_seminar`, `peserta_seminar`.`kehadiran` AS `kehadiran` FROM (`seminar_ta` join `peserta_seminar` on(`peserta_seminar`.`seminar_id` = `seminar_ta`.`id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `vw_seminar`
--
DROP TABLE IF EXISTS `vw_seminar`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_seminar`  AS SELECT `seminar_ta`.`id` AS `id`, `seminar_ta`.`semester` AS `semester`, `seminar_ta`.`tanggal` AS `tanggal`, `seminar_ta`.`jam` AS `jam`, `seminar_ta`.`kategori_seminar_id` AS `kategori_seminar_id`, `seminar_ta`.`nim` AS `nim`, `seminar_ta`.`nama_mahasiswa` AS `nama_mahasiswa`, `seminar_ta`.`judul` AS `judul`, `dosen`.`id` AS `dosen_pembimbing`, `seminar_ta`.`penguji1_id` AS `penguji1_id`, `seminar_ta`.`penguji2_id` AS `penguji2_id`, `seminar_ta`.`nilai_pembimbing` AS `nilai_pembimbing`, `seminar_ta`.`nilai_penguji1` AS `nilai_penguji1`, `seminar_ta`.`nilai_penguji2` AS `nilai_penguji2`, `seminar_ta`.`lokasi` AS `lokasi`, `seminar_ta`.`nilai_akhir` AS `nilai_akhir` FROM (`dosen` join `seminar_ta` on(`dosen`.`id` = `seminar_ta`.`pembimbing_id`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_penilaian`
--
ALTER TABLE `detail_penilaian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_detail_penilaian_penilaian1_idx` (`penilaian_id`),
  ADD KEY `fk_detail_penilaian_dosen1_idx` (`dosen_id`);

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori_seminar`
--
ALTER TABLE `kategori_seminar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penilaian`
--
ALTER TABLE `penilaian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `peserta_seminar`
--
ALTER TABLE `peserta_seminar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_peserta_seminar_mahasiswa_seminar1_idx` (`seminar_id`);

--
-- Indexes for table `seminar_ta`
--
ALTER TABLE `seminar_ta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_mahasiswa_seminar_kategori_seminar_idx` (`kategori_seminar_id`),
  ADD KEY `fk_mahasiswa_seminar_dosen1_idx` (`pembimbing_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail_penilaian`
--
ALTER TABLE `detail_penilaian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dosen`
--
ALTER TABLE `dosen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `kategori_seminar`
--
ALTER TABLE `kategori_seminar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `penilaian`
--
ALTER TABLE `penilaian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `peserta_seminar`
--
ALTER TABLE `peserta_seminar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `seminar_ta`
--
ALTER TABLE `seminar_ta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_penilaian`
--
ALTER TABLE `detail_penilaian`
  ADD CONSTRAINT `fk_detail_penilaian_dosen1` FOREIGN KEY (`dosen_id`) REFERENCES `dosen` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_detail_penilaian_penilaian1` FOREIGN KEY (`penilaian_id`) REFERENCES `penilaian` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `peserta_seminar`
--
ALTER TABLE `peserta_seminar`
  ADD CONSTRAINT `fk_peserta_seminar_mahasiswa_seminar1` FOREIGN KEY (`seminar_id`) REFERENCES `seminar_ta` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `seminar_ta`
--
ALTER TABLE `seminar_ta`
  ADD CONSTRAINT `fk_mahasiswa_seminar_dosen1` FOREIGN KEY (`pembimbing_id`) REFERENCES `dosen` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_mahasiswa_seminar_kategori_seminar` FOREIGN KEY (`kategori_seminar_id`) REFERENCES `kategori_seminar` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
