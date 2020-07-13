-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 05, 2020 at 10:06 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trevel`
--

-- --------------------------------------------------------

--
-- Table structure for table `destinasi`
--

CREATE TABLE `destinasi` (
  `tujuan` varchar(30) NOT NULL,
  `harga` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `destinasi`
--

INSERT INTO `destinasi` (`tujuan`, `harga`) VALUES
('Palembang', 800000),
('Medan', 900000),
('Bengkulu', 700000),
('Lampung', 500000),
('Banda Aceh', 1000000),
('Padang', 980000);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `no_order` varchar(20) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(30) NOT NULL,
  `jmlh_tiket` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `no_order` varchar(10) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(30) NOT NULL,
  `tujuan` varchar(20) NOT NULL,
  `jmlh` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `tgl_order` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`no_order`, `id_user`, `nama_user`, `tujuan`, `jmlh`, `harga`, `total`, `tgl_order`) VALUES
('ORD2005001', 200705002, 'riko', 'Palembang', 9, 800000, 7200000, '05/Jul/2020'),
('ORD2005002', 200705002, 'riko', 'Palembang', 3, 800000, 2400000, '05/Jul/2020'),
('ORD2005003', 200705001, 'wewerwerwer', 'Padang', 4, 980000, 3920000, '05/Jul/2020'),
('ORD2005004', 200705005, 'ilham', 'Medan', 3, 900000, 2700000, '05/Jul/2020'),
('ORD2005005', 200705003, 'rozy', 'Palembang', 10, 800000, 8000000, '05/Jul/2020');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(20) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `nama_user` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `no_tlp` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `tgl_daftar` varchar(15) NOT NULL,
  `level` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama`, `nama_user`, `email`, `no_tlp`, `pass`, `tgl_daftar`, `level`) VALUES
(200705001, 'ririri', 'wewerwerwer', 'tomy21.agung@gmail.c', '12321312', '121212', '2020', 'guest'),
(200705002, 'Riko', 'riko', 'riko@gmail.com', '123', '123', '2020-07-05', 'guest'),
(200705003, 'Rozy', 'rozy', 'Rozy@gmail.com', '0812121212', '1234', '2020-07-05', 'guest'),
(200705004, 'Rozy', 'mrozy', 'mrozy@gmail.com', '1111', '1111', '2020-07-05', 'guest'),
(200705005, 'ilham', 'ilham', 'ilham@ilham.com', '099999', '111', '2020-07-05', 'guest'),
(200705006, 'endra', 'endra', 'endra@gmail.com', '1234', '1111', '2020-07-05', 'guest');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`no_order`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`no_order`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
