-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 11 Mar 2017 pada 21.07
-- Versi Server: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ider`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_item`
--

CREATE TABLE IF NOT EXISTS `detail_item` (
  `Id_pesanan` varchar(50) NOT NULL,
  `Item` varchar(50) NOT NULL,
  `Jumlah` varchar(50) NOT NULL,
  `id_pedagang` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `detail_item`
--

INSERT INTO `detail_item` (`Id_pesanan`, `Item`, `Jumlah`, `id_pedagang`) VALUES
('1', 'Bakso lengkap campur', '1', 'cakkhoir87'),
('2', 'Pentol Kasar Besar', '1', 'cakkhoir87');

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentar`
--

CREATE TABLE IF NOT EXISTS `komentar` (
  `Id_user_pelanggan` varchar(50) NOT NULL,
  `Komentar` varchar(50) NOT NULL,
  `Id_user_pedagang` varchar(50) NOT NULL,
  `Tanggal_komentar` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pedagang`
--

CREATE TABLE IF NOT EXISTS `pedagang` (
  `Id_pelanggan` varchar(50) NOT NULL,
  `Status` varchar(50) NOT NULL,
  `Pesanan` varchar(50) NOT NULL,
  `Latitude` varchar(50) NOT NULL,
  `Longitude` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pedagang`
--

INSERT INTO `pedagang` (`Id_pelanggan`, `Status`, `Pesanan`, `Latitude`, `Longitude`) VALUES
('cakkhoir87', 'Bakso enak mantap murah nikmat', 'null', '55,55', '55,55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesanan`
--

CREATE TABLE IF NOT EXISTS `pesanan` (
`Id_pesanan` int(50) NOT NULL,
  `Id_user` varchar(50) NOT NULL,
  `Nama_user` varchar(50) NOT NULL,
  `Total_harga` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`Id_user` int(50) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Level` varchar(50) DEFAULT NULL,
  `Alamat` varchar(50) NOT NULL,
  `Photo` varchar(50) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
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
 ADD PRIMARY KEY (`Id_pesanan`), ADD KEY `id_pedagang` (`id_pedagang`);

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
MODIFY `Id_user` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
