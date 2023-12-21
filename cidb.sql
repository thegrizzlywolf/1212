-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 22, 2018 at 03:56 AM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cidb`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE IF NOT EXISTS `barang` (
  `barang_id` int(11) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=225 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`barang_id`, `kategori_id`, `nama_barang`, `harga`) VALUES
(224, 13, 'Nissin Ramen', 10000),
(4, 1, 'mie sedap goreng', 1500),
(5, 1, 'mie soto ayam', 2300),
(6, 2, 'minuman ringan', 3000),
(7, 1, 'mie g enak', 4000),
(8, 6, 'nokia x400', 1300),
(9, 9, 'tas kulit', 400000),
(10, 9, 'tas kertas', 300000),
(11, 10, 'Mie Remez', 5000),
(12, 12, 'Kripik Singkong', 15000),
(223, 12, 'Mie Akung', 12500);

-- --------------------------------------------------------

--
-- Table structure for table `coa`
--

CREATE TABLE IF NOT EXISTS `coa` (
  `no_akun` varchar(15) NOT NULL,
  `nama_akun` varchar(30) NOT NULL,
  `header_akun` varchar(15) NOT NULL,
  `saldo_awal` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coa`
--

INSERT INTO `coa` (`no_akun`, `nama_akun`, `header_akun`, `saldo_awal`) VALUES
('111', 'Kas', '1', 0),
('411', 'Pendapatan', '4', 0);

-- --------------------------------------------------------

--
-- Table structure for table `jurnal`
--

CREATE TABLE IF NOT EXISTS `jurnal` (
  `no_transaksi` int(11) NOT NULL,
  `no_akun` varchar(15) NOT NULL,
  `tgl_jurnal` date NOT NULL,
  `posisi_dr_cr` varchar(15) NOT NULL,
  `nominal` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jurnal`
--

INSERT INTO `jurnal` (`no_transaksi`, `no_akun`, `tgl_jurnal`, `posisi_dr_cr`, `nominal`) VALUES
(29, '111', '2017-03-19', 'd', 240000),
(29, '411', '2017-03-19', 'k', 240000),
(30, '111', '2017-03-19', 'd', 4600000),
(30, '411', '2017-03-19', 'k', 4600000),
(31, '111', '2017-03-20', 'd', 1212),
(31, '411', '2017-03-20', 'k', 1212),
(32, '111', '2017-03-21', 'd', 1000000),
(32, '411', '2017-03-21', 'k', 1000000),
(33, '111', '2017-03-21', 'd', 2600000),
(33, '411', '2017-03-21', 'k', 2600000),
(29, '111', '2017-03-19', 'd', 240000),
(29, '411', '2017-03-19', 'k', 240000),
(30, '111', '2017-03-19', 'd', 4600000),
(30, '411', '2017-03-19', 'k', 4600000),
(31, '111', '2017-03-20', 'd', 1212),
(31, '411', '2017-03-20', 'k', 1212),
(32, '111', '2017-03-21', 'd', 1000000),
(32, '411', '2017-03-21', 'k', 1000000),
(33, '111', '2017-03-21', 'd', 2600000),
(33, '411', '2017-03-21', 'k', 2600000);

-- --------------------------------------------------------

--
-- Table structure for table `kategori_barang`
--

CREATE TABLE IF NOT EXISTS `kategori_barang` (
  `kategori_id` int(11) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori_barang`
--

INSERT INTO `kategori_barang` (`kategori_id`, `nama_kategori`) VALUES
(1, 'mie instan'),
(2, 'minyak'),
(6, 'handphone'),
(8, 'sepatu'),
(9, 'tas'),
(10, 'Makanan Ringan'),
(11, 'Makanan Ringan'),
(12, 'Snack'),
(13, 'Mie Ramen');

-- --------------------------------------------------------

--
-- Table structure for table `operator`
--

CREATE TABLE IF NOT EXISTS `operator` (
  `operator_id` int(11) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `last_login` date NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `operator`
--

INSERT INTO `operator` (`operator_id`, `nama_lengkap`, `username`, `password`, `last_login`) VALUES
(3, 'Anti', 'anti', 'c640568e1f90f0abf1f5c04fdbbf775d', '2017-11-21'),
(7, 'mimin', 'mi2n', '5b55bbcac9125b4261d3e2405998577c', '2017-04-12'),
(6, 'Adjie', 'a72mx', '202cb962ac59075b964b07152d234b70', '2018-05-30');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE IF NOT EXISTS `transaksi` (
  `transaksi_id` int(11) NOT NULL,
  `tanggal_transaksi` date NOT NULL,
  `operator_id` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`transaksi_id`, `tanggal_transaksi`, `operator_id`) VALUES
(7, '2014-07-18', 1),
(6, '2014-07-17', 2),
(5, '2014-07-17', 2),
(8, '2016-11-20', 0),
(9, '2016-11-20', 3),
(10, '2016-11-22', 3),
(11, '2016-11-22', 3),
(12, '2016-11-22', 3),
(13, '2016-11-23', 3),
(14, '2016-11-23', 3),
(15, '2016-11-23', 3),
(16, '2016-11-23', 3),
(17, '2017-01-17', 3),
(18, '2017-02-02', 3),
(19, '2017-02-02', 3),
(20, '2017-02-28', 3),
(21, '2017-02-28', 3),
(22, '2017-08-24', 3),
(23, '2017-10-24', 6),
(24, '2017-10-24', 3),
(25, '2017-11-03', 3),
(26, '2017-11-03', 3),
(27, '2017-11-03', 3),
(28, '2017-11-03', 3),
(29, '2017-11-03', 3),
(30, '2017-11-03', 3),
(31, '2017-11-13', 3),
(32, '2017-11-14', 3),
(33, '2017-11-23', 3),
(34, '2018-05-30', 6);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_detail`
--

CREATE TABLE IF NOT EXISTS `transaksi_detail` (
  `t_detail_id` int(11) NOT NULL,
  `barang_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `transaksi_id` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `status` enum('0','1') NOT NULL COMMENT '1= sudah diproses , 0 belum diproses'
) ENGINE=MyISAM AUTO_INCREMENT=94 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi_detail`
--

INSERT INTO `transaksi_detail` (`t_detail_id`, `barang_id`, `qty`, `transaksi_id`, `harga`, `status`) VALUES
(30, 6, 2, 11, 3000, '1'),
(29, 11, 0, 11, 5000, '1'),
(27, 7, 3, 10, 4000, '1'),
(26, 5, 2, 10, 2300, '1'),
(25, 6, 2, 9, 3000, '1'),
(24, 5, 2, 9, 2300, '1'),
(23, 8, 2, 8, 1300, '1'),
(34, 5, 2, 13, 2300, '1'),
(33, 4, 23, 13, 1500, '1'),
(32, 4, 2, 12, 1500, '1'),
(31, 11, 3, 11, 5000, '1'),
(22, 4, 2, 8, 1500, '1'),
(35, 10, 4, 14, 300000, '1'),
(36, 6, 2, 15, 3000, '1'),
(37, 5, 3, 16, 2300, '1'),
(38, 4, 5, 16, 1500, '1'),
(39, 4, 12, 17, 1500, '1'),
(45, 6, 2, 18, 3000, '1'),
(44, 10, 2, 18, 300000, '1'),
(43, 223, 12, 17, 12500, '1'),
(46, 4, 3, 18, 1500, '1'),
(47, 4, 2, 18, 1500, '1'),
(48, 5, 2, 19, 2300, '1'),
(50, 6, 2, 20, 3000, '1'),
(52, 12, 2, 20, 15000, '1'),
(53, 1, 2, 21, 2000, '1'),
(54, 1, 2, 21, 2000, '1'),
(55, 1, 3, 22, 2000, '1'),
(56, 8, 5, 22, 1300, '1'),
(57, 5, 3, 22, 2300, '1'),
(58, 223, 2, 22, 12500, '1'),
(59, 5, 2, 23, 2300, '1'),
(60, 5, 4, 23, 2300, '1'),
(61, 5, 5, 23, 2300, '1'),
(62, 224, 2, 24, 10000, '1'),
(64, 224, 3, 24, 10000, '1'),
(65, 9, 2, 25, 400000, '1'),
(66, 224, 3, 25, 10000, '1'),
(67, 9, 3, 25, 400000, '1'),
(68, 4, 4, 26, 1500, '1'),
(69, 5, 5, 26, 2300, '1'),
(70, 9, 4, 27, 400000, '1'),
(71, 5, 5, 27, 2300, '1'),
(72, 5, 6, 28, 2300, '1'),
(74, 9, 5, 28, 400000, '1'),
(75, 224, 3, 29, 10000, '1'),
(77, 4, 4, 29, 1500, '1'),
(80, 7, 2, 30, 4000, '1'),
(81, 224, 2, 31, 10000, '1'),
(82, 8, 3, 31, 1300, '1'),
(86, 4, 2, 32, 1500, '1'),
(87, 5, 4, 32, 2300, '1'),
(89, 4, 2, 33, 1500, '1'),
(90, 7, 3, 33, 4000, '1'),
(91, 224, 5, 34, 10000, '1'),
(92, 224, 2, 34, 10000, '1'),
(93, 6, 2, 34, 3000, '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`barang_id`);

--
-- Indexes for table `coa`
--
ALTER TABLE `coa`
  ADD PRIMARY KEY (`no_akun`);

--
-- Indexes for table `kategori_barang`
--
ALTER TABLE `kategori_barang`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `operator`
--
ALTER TABLE `operator`
  ADD PRIMARY KEY (`operator_id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`transaksi_id`);

--
-- Indexes for table `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  ADD PRIMARY KEY (`t_detail_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `barang_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=225;
--
-- AUTO_INCREMENT for table `kategori_barang`
--
ALTER TABLE `kategori_barang`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `operator`
--
ALTER TABLE `operator`
  MODIFY `operator_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `transaksi_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  MODIFY `t_detail_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=94;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
