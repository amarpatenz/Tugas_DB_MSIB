-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2023 at 04:54 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbpenjualan`
--

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE `pembelian` (
  `No` int(11) NOT NULL,
  `Produk_ID` int(11) NOT NULL,
  `Vendor_ID` int(5) NOT NULL,
  `Tanggal` varchar(11) NOT NULL,
  `Jumlah` int(3) NOT NULL,
  `Harga` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pembelian`
--

INSERT INTO `pembelian` (`No`, `Produk_ID`, `Vendor_ID`, `Tanggal`, `Jumlah`, `Harga`) VALUES
(1, 1, 1, '01-12-2020', 100, 3000),
(2, 1, 2, '20-12-2020', 500, 3000),
(3, 2, 2, '20-12-2020', 250, 5000),
(4, 1, 3, '01-01-2021', 200, 3000),
(5, 3, 3, '01-01-2021', 4, 10000);

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `Nomor` int(11) NOT NULL,
  `Nama` varchar(30) DEFAULT NULL,
  `Kota` varchar(15) DEFAULT NULL,
  `Kontak` varchar(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`Nomor`, `Nama`, `Kota`, `Kontak`) VALUES
(1, 'PT Barang', 'Bandung', '081234xxx891'),
(2, 'PT Propertie', 'Jogja', '08123xxxx7893'),
(3, 'PT Sukses', 'Jakarta', '081234xxx892');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`No`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`Nomor`),
  ADD UNIQUE KEY `Nama` (`Nama`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
