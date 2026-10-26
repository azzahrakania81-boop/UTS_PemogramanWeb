-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 26, 2026 at 04:09 PM
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
-- Database: `dblatihan`
--

-- --------------------------------------------------------

--
-- Table structure for table `nilaimhsw`
--

CREATE TABLE `nilaimhsw` (
  `nim` char(10) NOT NULL,
  `namalengkap` varchar(50) NOT NULL,
  `nilaiakhir` decimal(5,2) NOT NULL,
  `nilaihuruf` char(1) DEFAULT NULL,
  `predikat` varchar(20) DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `foto` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nilaimhsw`
--

INSERT INTO `nilaimhsw` (`nim`, `namalengkap`, `nilaiakhir`, `nilaihuruf`, `predikat`, `created_date`, `modified_date`, `foto`) VALUES
('3202400623', 'syifaa', 67.00, 'C', 'Cukup Memuaskan', '2026-10-25 13:12:14', '2026-10-25 13:48:59', '3202400623_1792933934.png'),
('3202416033', 'nah', 50.00, 'D', 'Kurang Memuaskan', '2026-10-19 10:52:36', '2026-10-25 13:08:05', '3202416033_1792933684.png'),
('3202416088', 'tania', 98.00, 'A', 'Sangat Memuaskan', '2026-10-25 13:41:04', '2026-10-25 13:41:04', '3202416088_1792935664.jpg'),
('3202416093', 'nia', 70.00, 'B', 'Memuaskan', '2026-10-19 10:04:46', '2026-10-25 13:10:02', NULL),
('3202416098', 'kheisaa', 60.03, 'C', 'Cukup Memuaskan', '2026-10-13 05:00:59', '2026-10-25 13:49:12', NULL),
('3202416100', 'diffa', 78.00, 'B', 'Memuaskan', '2026-10-25 13:39:14', '2026-10-25 13:39:14', ''),
('3202416104', 'Kania Putri Azzahraa', 99.00, 'A', 'Sangat Memuaskan', '2026-10-08 09:11:54', '2026-10-19 10:02:03', NULL),
('3202416607', 'enah', 43.00, 'E', 'Tidak Lulus', '2026-10-25 13:06:22', '2026-10-25 13:07:44', '3202416607_1792933664.png');

-- --------------------------------------------------------

--
-- Table structure for table `photo`
--

CREATE TABLE `photo` (
  `id_photo` int(6) UNSIGNED NOT NULL,
  `file_name` varchar(100) NOT NULL,
  `uploaded_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `photo`
--

INSERT INTO `photo` (`id_photo`, `file_name`, `uploaded_date`) VALUES
(1, 'img/icons.png', '2026-10-20 10:55:28'),
(2, 'img/photo1.png', '2026-10-20 10:56:51'),
(3, 'img/avatar5.png', '2026-10-20 11:24:13'),
(4, 'img/AdminLTELogo.png', '2026-10-20 11:24:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `nilaimhsw`
--
ALTER TABLE `nilaimhsw`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `photo`
--
ALTER TABLE `photo`
  ADD PRIMARY KEY (`id_photo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `photo`
--
ALTER TABLE `photo`
  MODIFY `id_photo` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
