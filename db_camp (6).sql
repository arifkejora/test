-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2024 at 01:33 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_camp`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id_admin` int(11) NOT NULL,
  `name_admin` varchar(50) NOT NULL,
  `email_admin` varchar(50) NOT NULL,
  `password_admin` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`id_admin`, `name_admin`, `email_admin`, `password_admin`) VALUES
(1, 'Lestiani', 'lestiani@gmail.com', '12345678');

-- --------------------------------------------------------

--
-- Table structure for table `tb_manager`
--

CREATE TABLE `tb_manager` (
  `id_manager` int(11) NOT NULL,
  `name_manager` varchar(50) NOT NULL,
  `email_manager` varchar(50) NOT NULL,
  `phone_number_manager` varchar(15) NOT NULL,
  `password_manager` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_manager`
--

INSERT INTO `tb_manager` (`id_manager`, `name_manager`, `email_manager`, `phone_number_manager`, `password_manager`) VALUES
(1, 'Rizky Billar', 'rizkybillar@gmail.com', '089789678678', '12345678');

-- --------------------------------------------------------

--
-- Table structure for table `tb_offline_reservaion`
--

CREATE TABLE `tb_offline_reservaion` (
  `id_offline_reservation` int(11) NOT NULL,
  `id_offline_tourist` int(11) NOT NULL,
  `id_services` int(11) NOT NULL,
  `visit_start_date` date NOT NULL,
  `visit_end_date` date NOT NULL,
  `id_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_offline_reservaion`
--

INSERT INTO `tb_offline_reservaion` (`id_offline_reservation`, `id_offline_tourist`, `id_services`, `visit_start_date`, `visit_end_date`, `id_status`) VALUES
(1, 12, 1, '2024-12-15', '2024-12-15', 5),
(2, 13, 4, '2024-12-15', '0000-00-00', 5),
(4, 7, 2, '2024-12-15', '0000-00-00', 6),
(5, 7, 2, '2024-12-15', '0000-00-00', 8),
(6, 7, 2, '2024-12-15', '2024-12-15', 5),
(7, 8, 5, '2024-12-15', '0000-00-00', 5),
(8, 7, 4, '2024-12-15', '0000-00-00', 6),
(9, 12, 2, '2024-12-15', '0000-00-00', 7),
(10, 6, 4, '2024-12-15', '0000-00-00', 8),
(11, 15, 4, '2024-12-15', '0000-00-00', 4),
(12, 16, 5, '2024-12-15', '0000-00-00', 4),
(13, 17, 3, '2024-12-15', '0000-00-00', 4),
(14, 18, 4, '2024-12-15', '0000-00-00', 4),
(15, 19, 5, '2024-12-15', '0000-00-00', 4),
(16, 20, 5, '2024-12-15', '0000-00-00', 4),
(17, 21, 2, '2024-12-15', '0000-00-00', 4),
(18, 22, 1, '2024-12-15', '2024-12-16', 5),
(19, 23, 2, '2024-12-15', '0000-00-00', 4),
(20, 24, 2, '2024-12-15', '0000-00-00', 4),
(21, 25, 1, '2024-12-15', '0000-00-00', 4),
(22, 26, 1, '2024-12-15', '0000-00-00', 4),
(23, 27, 4, '2024-12-15', '0000-00-00', 4),
(24, 28, 5, '2024-12-15', '0000-00-00', 4),
(25, 29, 5, '2024-12-15', '0000-00-00', 4),
(26, 30, 1, '2024-12-15', '2024-12-16', 5),
(27, 31, 4, '2024-12-15', '0000-00-00', 4),
(28, 32, 1, '2024-12-15', '2024-12-16', 5),
(29, 33, 5, '2024-12-15', '0000-00-00', 4),
(30, 34, 3, '2024-12-15', '0000-00-00', 4),
(31, 35, 4, '2024-12-15', '0000-00-00', 4),
(32, 36, 2, '2024-12-15', '0000-00-00', 4),
(33, 37, 1, '2024-12-15', '0000-00-00', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tb_offline_tourist`
--

CREATE TABLE `tb_offline_tourist` (
  `id_off_tourist` int(11) NOT NULL,
  `name_off_tourist` varchar(50) NOT NULL,
  `phoneno_off_tourist` varchar(20) NOT NULL,
  `nik_tourist` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_offline_tourist`
--

INSERT INTO `tb_offline_tourist` (`id_off_tourist`, `name_off_tourist`, `phoneno_off_tourist`, `nik_tourist`) VALUES
(5, 'Siti', '089604145672', '332012110900'),
(6, 'Ahmad', '089604145672', '332012110900'),
(7, 'Yanto', '089604145672', '332012110900'),
(8, 'Wati', '089604145672', '332012110900'),
(9, 'Eni', '089604145672', '332012110900'),
(10, 'Zaenab', '089604145672', '332012110900'),
(11, 'Sukamto', '089604145672', '332012110900'),
(12, 'Zaenudin', '089604145672', '332012110900'),
(13, 'Ngadimin', '089604145672', '332012110900'),
(14, 'Arif Widiarto', '089604145672', '3320121109000056'),
(15, 'Arif Widiarto', '089604145672', '3320121109000056'),
(16, 'Arif Widiarto', '089604145672', '3320121109000056'),
(17, 'Arif Widiarto', '089604145672', '3320121109000056'),
(18, 'Arif Widiarto', '089604145672', '3320121109000056'),
(19, 'Arif Widiarto', '089604145672', '3320121109000056'),
(20, 'Arif Widiarto', '089604145672', '3320121109000056'),
(21, 'Arif Widiarto', '089604145672', '3320121109000056'),
(22, 'Arif Widiarto', '089604145672', '3320121109000056'),
(23, 'Arif Widiarto', '089604145672', '3320121109000056'),
(24, 'Arif Widiarto', '089604145672', '3320121109000056'),
(25, 'Arif Widiarto', '089604145672', '3320121109000056'),
(26, 'Arif Widiarto', '089604145672', '3320121109000056'),
(27, 'Arif Widiarto', '089604145672', '3320121109000056'),
(28, 'Arif Widiarto', '089604145672', '3320121109000056'),
(29, 'Arif Widiarto', '089604145672', '3320121109000056'),
(30, 'Arif Widiarto', '089604145672', '3320121109000056'),
(31, 'Arif Widiarto', '089604145672', '3320121109000056'),
(32, 'Arif Widiarto', '089604145672', '3320121109000056'),
(33, 'Arif Widiarto', '089604145672', '3320121109000056'),
(34, 'Arif Widiarto', '089604145672', '3320121109000056'),
(35, 'Arif Widiarto', '089604145672', '3320121109000056'),
(36, 'Arif Widiarto', '089604145672', '3320121109000056'),
(37, 'Arif Widiarto', '089604145672', '3320121109000056');

-- --------------------------------------------------------

--
-- Table structure for table `tb_rent_tools`
--

CREATE TABLE `tb_rent_tools` (
  `id_rent` int(11) NOT NULL,
  `id_tools` int(11) NOT NULL,
  `id_reservation` int(11) DEFAULT NULL,
  `rental_date` date NOT NULL,
  `return_date` date NOT NULL,
  `qty_rent` int(11) NOT NULL,
  `price_rent` int(100) NOT NULL,
  `id_off_reservation` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_rent_tools`
--

INSERT INTO `tb_rent_tools` (`id_rent`, `id_tools`, `id_reservation`, `rental_date`, `return_date`, `qty_rent`, `price_rent`, `id_off_reservation`) VALUES
(15, 1, NULL, '2024-12-15', '0000-00-00', 1, 50000, 33),
(16, 1, 13, '2024-12-17', '0000-00-00', 1, 50000, NULL),
(17, 2, 13, '2024-12-17', '0000-00-00', 1, 30000, NULL),
(18, 1, 14, '2024-12-17', '0000-00-00', 1, 0, NULL),
(19, 1, 15, '2024-12-17', '0000-00-00', 1, 0, NULL),
(20, 1, 16, '2024-12-17', '0000-00-00', 1, 50000, NULL),
(21, 2, 16, '2024-12-17', '0000-00-00', 1, 30000, NULL),
(22, 2, 17, '2024-12-17', '0000-00-00', 1, 0, NULL),
(23, 1, 18, '2024-12-17', '0000-00-00', 1, 50000, NULL),
(24, 1, 19, '2024-12-17', '0000-00-00', 1, 50000, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_reservation`
--

CREATE TABLE `tb_reservation` (
  `id_reservation` int(11) NOT NULL,
  `id_tourist` int(11) NOT NULL,
  `id_services` int(11) NOT NULL,
  `reservation_date` date NOT NULL,
  `visit_start_date` date NOT NULL,
  `visit_end_date` date NOT NULL,
  `payment_picture` text NOT NULL,
  `id_status` int(10) NOT NULL,
  `is_tools` tinyint(1) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_reservation`
--

INSERT INTO `tb_reservation` (`id_reservation`, `id_tourist`, `id_services`, `reservation_date`, `visit_start_date`, `visit_end_date`, `payment_picture`, `id_status`, `is_tools`, `price`) VALUES
(16, 3, 1, '2024-12-17', '2024-12-17', '2024-12-17', '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', 5, 1, 180000),
(18, 3, 2, '2024-12-17', '2024-12-17', '0000-00-00', '', 1, 1, 100000),
(19, 2, 2, '2024-12-17', '2024-12-17', '0000-00-00', '', 1, 1, 100000);

-- --------------------------------------------------------

--
-- Table structure for table `tb_services`
--

CREATE TABLE `tb_services` (
  `id_services` int(11) NOT NULL,
  `name_services` varchar(50) NOT NULL,
  `desc_services` text NOT NULL,
  `price_services` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_services`
--

INSERT INTO `tb_services` (`id_services`, `name_services`, `desc_services`, `price_services`) VALUES
(1, 'Camping Ground', 'Area perkemahan luas untuk penggemar alam, dilengkapi dengan fasilitas penting untuk kenyamanan menginap.', 100000),
(2, 'Hiking', 'Tur hiking dengan pemandu di jalur-jalur indah, memberikan pengalaman petualangan alam yang tak terlupakan.', 50000),
(3, 'Pengalaman Api Unggun', 'Pengalaman spesial dengan api unggun untuk berkumpul, bercerita, dan memanggang marshmallow.', 30000),
(4, 'Pemandu Alam', 'Layanan pemandu alam yang berpengalaman untuk menemani perjalanan hiking dan menjelaskan keanekaragaman hayati sekitar.', 40000),
(5, 'Paket Camping Keluarga', 'Paket perkemahan khusus untuk keluarga, lengkap dengan fasilitas untuk kenyamanan anak-anak dan orang dewasa.', 150000);

-- --------------------------------------------------------

--
-- Table structure for table `tb_status`
--

CREATE TABLE `tb_status` (
  `id_status` int(11) NOT NULL,
  `title_status` varchar(50) NOT NULL,
  `desc_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_status`
--

INSERT INTO `tb_status` (`id_status`, `title_status`, `desc_status`) VALUES
(1, 'Menunggu Persetujuan', 'Reservasi Anda sedang kami tinjau. Mohon tunggu persetujuan dari admin.'),
(2, 'Disetujui Admin', 'Reservasi Anda telah disetujui. Segera unggah bukti pembayaran untuk melanjutkan proses.'),
(3, 'Reservasi Berhasil', 'Reservasi Anda telah berhasil dikonfirmasi. Terima kasih atas kepercayaan Anda!'),
(4, 'Reservasi Sedang Berjalan', 'Reservasi Anda sedang berlangsung. Nikmati layanan kami!'),
(5, 'Reservasi Selesai', 'Reservasi Anda telah selesai. Terima kasih telah menggunakan layanan kami. Kami tunggu kehadiran Anda kembali!'),
(6, 'Reservasi Ditolak', 'Mohon Maaf, reservasi anda belum bisa kami setujui'),
(7, 'Pembayaran Ditolak', 'Mohon Maaf, pembayaran anda kami tolak, pastikan nominal sesuai '),
(8, 'Reservasi Cancel', 'Mohon maaf, reservasi anda kami cancel karena suatu lain hal');

-- --------------------------------------------------------

--
-- Table structure for table `tb_tools`
--

CREATE TABLE `tb_tools` (
  `id_tools` int(11) NOT NULL,
  `name_tools` varchar(50) NOT NULL,
  `qty_tools` int(11) NOT NULL,
  `price_tools` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_tools`
--

INSERT INTO `tb_tools` (`id_tools`, `name_tools`, `qty_tools`, `price_tools`) VALUES
(1, 'Tenda Camping', 10, 50000),
(2, 'Kompor Portable', 15, 30000),
(3, 'Sleeping Bag', 20, 25000),
(4, 'Lampu LED', 25, 15000),
(5, 'Matras Lipat', 30, 20000),
(6, 'Meja Lipat', 12, 45000),
(7, 'Kursi Lipat', 18, 40000),
(8, 'Cooler Box', 8, 75000),
(9, 'Panci Masak', 22, 30000),
(10, 'Teko Air', 25, 25000),
(11, 'Gelas Stainless', 50, 10000),
(12, 'Sendok Garpu Set', 40, 15000),
(13, 'Gas Canister', 60, 20000),
(14, 'Alat BBQ', 15, 60000),
(15, 'Pisau Serbaguna', 30, 20000),
(16, 'Kotak P3K', 10, 50000),
(17, 'Senter', 35, 15000),
(18, 'Power Bank Solar', 5, 120000),
(19, 'Tas Ransel Hiking', 20, 80000),
(20, 'Jaket Anti Air', 18, 95000),
(21, 'Sepatu Hiking', 12, 120000),
(22, 'Raincoat After Edit', 25, 40000),
(23, 'Botol Minum', 50, 20000),
(24, 'Pelampung', 10, 50000),
(25, 'Kompas', 15, 30000),
(26, 'Peta Lokal', 30, 10000),
(27, 'Pemantik Api', 40, 5000),
(28, 'Carabiner', 60, 15000),
(29, 'Alat Filter Air', 8, 100000),
(30, 'Hammock', 12, 70000),
(31, 'Test 1 Edit', 2, 2000),
(32, 'Test Redirect', 1, 2233);

-- --------------------------------------------------------

--
-- Table structure for table `tb_tourist`
--

CREATE TABLE `tb_tourist` (
  `id_tourist` int(11) NOT NULL,
  `name_tourist` varchar(50) NOT NULL,
  `email_tourist` varchar(50) NOT NULL,
  `phone_number_tourist` varchar(15) NOT NULL,
  `password_tourist` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_tourist`
--

INSERT INTO `tb_tourist` (`id_tourist`, `name_tourist`, `email_tourist`, `phone_number_tourist`, `password_tourist`) VALUES
(1, 'Zaenal', 'zaenal@gmail.com', '0823000000000', '12345678'),
(2, 'Muhammad Levian Alfatih Billar', 'levian@gmail.com', '081111222333', '12345678'),
(3, 'sukarno', 'sukarno@gmail.com', '081111222333', '12345678');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tb_manager`
--
ALTER TABLE `tb_manager`
  ADD PRIMARY KEY (`id_manager`);

--
-- Indexes for table `tb_offline_reservaion`
--
ALTER TABLE `tb_offline_reservaion`
  ADD PRIMARY KEY (`id_offline_reservation`),
  ADD KEY `fk_off_res_tourist` (`id_offline_tourist`),
  ADD KEY `fk_off_touristresserv` (`id_services`),
  ADD KEY `fk_off_touriststats` (`id_status`);

--
-- Indexes for table `tb_offline_tourist`
--
ALTER TABLE `tb_offline_tourist`
  ADD PRIMARY KEY (`id_off_tourist`);

--
-- Indexes for table `tb_rent_tools`
--
ALTER TABLE `tb_rent_tools`
  ADD PRIMARY KEY (`id_rent`),
  ADD KEY `fk_rent_tools` (`id_tools`),
  ADD KEY `fk_rent_reservation` (`id_reservation`),
  ADD KEY `fk_off_res` (`id_off_reservation`);

--
-- Indexes for table `tb_reservation`
--
ALTER TABLE `tb_reservation`
  ADD PRIMARY KEY (`id_reservation`),
  ADD KEY `fk_reservation_service` (`id_services`),
  ADD KEY `fk_reservation_tourist` (`id_tourist`),
  ADD KEY `fk_tbstatus` (`id_status`);

--
-- Indexes for table `tb_services`
--
ALTER TABLE `tb_services`
  ADD PRIMARY KEY (`id_services`);

--
-- Indexes for table `tb_status`
--
ALTER TABLE `tb_status`
  ADD PRIMARY KEY (`id_status`);

--
-- Indexes for table `tb_tools`
--
ALTER TABLE `tb_tools`
  ADD PRIMARY KEY (`id_tools`);

--
-- Indexes for table `tb_tourist`
--
ALTER TABLE `tb_tourist`
  ADD PRIMARY KEY (`id_tourist`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_manager`
--
ALTER TABLE `tb_manager`
  MODIFY `id_manager` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_offline_reservaion`
--
ALTER TABLE `tb_offline_reservaion`
  MODIFY `id_offline_reservation` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tb_offline_tourist`
--
ALTER TABLE `tb_offline_tourist`
  MODIFY `id_off_tourist` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `tb_rent_tools`
--
ALTER TABLE `tb_rent_tools`
  MODIFY `id_rent` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tb_reservation`
--
ALTER TABLE `tb_reservation`
  MODIFY `id_reservation` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tb_services`
--
ALTER TABLE `tb_services`
  MODIFY `id_services` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_status`
--
ALTER TABLE `tb_status`
  MODIFY `id_status` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tb_tools`
--
ALTER TABLE `tb_tools`
  MODIFY `id_tools` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tb_tourist`
--
ALTER TABLE `tb_tourist`
  MODIFY `id_tourist` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_offline_reservaion`
--
ALTER TABLE `tb_offline_reservaion`
  ADD CONSTRAINT `fk_off_res_tourist` FOREIGN KEY (`id_offline_tourist`) REFERENCES `tb_offline_tourist` (`id_off_tourist`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_off_touristresserv` FOREIGN KEY (`id_services`) REFERENCES `tb_services` (`id_services`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_off_touriststats` FOREIGN KEY (`id_status`) REFERENCES `tb_status` (`id_status`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_rent_tools`
--
ALTER TABLE `tb_rent_tools`
  ADD CONSTRAINT `fk_rent_tools` FOREIGN KEY (`id_tools`) REFERENCES `tb_tools` (`id_tools`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tb_reservation`
--
ALTER TABLE `tb_reservation`
  ADD CONSTRAINT `fk_reservation_service` FOREIGN KEY (`id_services`) REFERENCES `tb_services` (`id_services`),
  ADD CONSTRAINT `fk_reservation_tourist` FOREIGN KEY (`id_tourist`) REFERENCES `tb_tourist` (`id_tourist`),
  ADD CONSTRAINT `fk_tbstatus` FOREIGN KEY (`id_status`) REFERENCES `tb_status` (`id_status`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
