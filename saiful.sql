-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 17, 2019 at 07:25 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `saiful`
--

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `nm_mobil` varchar(10) NOT NULL,
  `kd_mobil` int(10) NOT NULL,
  `spesifikasi` varchar(50) NOT NULL,
  `plt_nomor` text NOT NULL,
  `thn_pengeluaran` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`nm_mobil`, `kd_mobil`, `spesifikasi`, `plt_nomor`, `thn_pengeluaran`) VALUES
('pajero', 126, 'mulus,mesin halus', 'D 2323 SA', 2017);

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `nama` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `no_hp` int(50) NOT NULL,
  `nm_mobil` varchar(100) NOT NULL,
  `lm_penyewaan` varchar(100) NOT NULL,
  `plt_nomor` text NOT NULL,
  `harga` int(100) NOT NULL,
  `uang_bayar` int(30) NOT NULL,
  `uang_kembali` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`nama`, `alamat`, `no_hp`, `nm_mobil`, `lm_penyewaan`, `plt_nomor`, `harga`, `uang_bayar`, `uang_kembali`) VALUES
('adi', 'rembun', 28282, 'innova', '2 hari', 'ad 62662', 50000, 150000, 100000),
('bob', 'remi', 85656662, 'brio', '2', 'Ad 1515 pw', 50000, 100000, 50000),
('BOOB', 'NOGOSARI', 975, 'ALPHARD', '3 HARI', 'AD 232 WE', 50000, 200000, 150000),
('kevin', 'remi', 8999, 'avans', '2', 'ad1923', 30000, 100000, 70000);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(10) NOT NULL,
  `password` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`) VALUES
('Gans', 12345);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`nm_mobil`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`nama`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
