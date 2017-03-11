-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 11, 2017 at 05:15 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ider`
--

-- --------------------------------------------------------

--
-- Table structure for table `detail_item`
--

CREATE TABLE `detail_item` (
  `Id_pesanan` varchar(50) NOT NULL,
  `Item` varchar(50) NOT NULL,
  `Jumlah` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `Id_user_pelanggan` varchar(50) NOT NULL,
  `Komentar` varchar(50) NOT NULL,
  `Id_user_pedagang` varchar(50) NOT NULL,
  `Tanggal_komentar` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pedagang`
--

CREATE TABLE `pedagang` (
  `Id_pelanggan` varchar(50) NOT NULL,
  `Status` varchar(50) NOT NULL,
  `Pesanan` varchar(50) NOT NULL,
  `Latitude` varchar(50) NOT NULL,
  `Longitude` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `Id_pesanan` int(50) NOT NULL,
  `Id_user` varchar(50) NOT NULL,
  `Nama_user` varchar(50) NOT NULL,
  `Total_harga` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `Id_user` int(50) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Level` varchar(50) DEFAULT NULL,
  `Alamat` varchar(50) NOT NULL,
  `Photo` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`Id_user`, `Nama`, `Password`, `Level`, `Alamat`, `Photo`) VALUES
(2, 'Arie', 'test', '0', 'Maninjau', ''),
(3, 'Yopy', 'test', '1', 'malang', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_item`
--
ALTER TABLE `detail_item`
  ADD PRIMARY KEY (`Id_pesanan`);

--
-- Indexes for table `pedagang`
--
ALTER TABLE `pedagang`
  ADD PRIMARY KEY (`Id_pelanggan`);

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`Id_pesanan`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `Id_pesanan` int(50) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `Id_user` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
