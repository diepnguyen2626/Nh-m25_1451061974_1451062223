-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2017 at 05:31 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bbcvn`
--

-- --------------------------------------------------------

--
-- Table structure for table `baiviet`
--

CREATE TABLE IF NOT EXISTS `baiviet` (
  `ma_bviet` int(10) NOT NULL,
  `ma_tloai` int(10) NOT NULL,
  `ten_tloai` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `loaitin` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `tomtat` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `chitiet` varchar(3000) COLLATE utf8_unicode_ci NOT NULL,
  `tin_lquan` varchar(3000) COLLATE utf8_unicode_ci NOT NULL,
  `hinh_anh` longblob NOT NULL,
  `tgian` date NOT NULL,
  PRIMARY KEY (`ma_bviet`),
  UNIQUE KEY `ma_tloai` (`ma_tloai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `theloai`
--

CREATE TABLE IF NOT EXISTS `theloai` (
  `ma_tloai` int(10) NOT NULL,
  `ten_tloai` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `loaitin` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ma_tloai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `ten` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `matkhau` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `baiviet`
--
ALTER TABLE `baiviet`
  ADD CONSTRAINT `baiviet_ibfk_1` FOREIGN KEY (`ma_bviet`) REFERENCES `theloai` (`ma_tloai`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
