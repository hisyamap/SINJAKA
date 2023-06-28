-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2023 at 08:53 AM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kai_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` int(11) NOT NULL,
  `nama_user` varchar(30) NOT NULL,
  `peran` varchar(20) NOT NULL,
  `waktu_login` datetime NOT NULL,
  `waktu_logout` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `nama_user`, `peran`, `waktu_login`, `waktu_logout`) VALUES
(117, 'purwokerto', 'OP Purwokerto', '2023-03-02 14:12:23', '2023-03-02 14:13:33'),
(119, 'purwokerto', 'OP Purwokerto', '2023-03-02 14:14:20', '2023-03-02 14:14:40'),
(121, 'admin', 'Admin', '2023-03-02 14:16:45', '2023-03-02 14:17:12'),
(122, 'admin', 'Admin', '2023-03-02 14:24:27', '2023-03-02 14:25:01'),
(123, 'purwokerto', 'OP Purwokerto', '2023-03-02 14:55:49', '2023-03-02 14:56:02'),
(124, 'purwokerto', 'OP Purwokerto', '2023-03-16 21:08:09', '0000-00-00 00:00:00'),
(125, 'purwokerto', 'OP Purwokerto', '2023-03-16 21:13:43', '2023-03-16 21:15:00'),
(126, 'purwokerto', 'OP Purwokerto', '2023-04-13 13:11:54', '0000-00-00 00:00:00'),
(127, 'admin', 'Admin', '2023-05-01 23:29:52', '2023-05-01 23:34:11'),
(128, 'purwokerto', 'OP Purwokerto', '2023-05-01 23:34:18', '0000-00-00 00:00:00'),
(129, 'admin', 'Admin', '2023-05-02 11:12:35', '2023-05-02 11:12:40'),
(130, 'purwokerto', 'OP Purwokerto', '2023-05-02 11:12:49', '0000-00-00 00:00:00'),
(131, 'purwokerto', 'OP Purwokerto', '2023-05-10 13:43:19', '0000-00-00 00:00:00'),
(132, 'purwokerto', 'OP Purwokerto', '2023-05-16 16:09:37', '0000-00-00 00:00:00'),
(133, 'admin', 'Admin', '2023-05-23 23:38:44', '2023-05-23 23:39:38'),
(134, 'purwokerto', 'OP Purwokerto', '2023-05-23 23:39:44', '2023-05-23 23:39:52'),
(135, 'admin', 'Admin', '2023-05-23 23:39:57', '2023-05-23 23:40:23'),
(136, 'admin', 'Admin', '2023-05-23 23:40:38', '2023-05-23 23:42:44'),
(137, 'admin', 'Admin', '2023-05-23 23:42:50', '2023-05-23 23:43:42'),
(138, 'admin', 'Admin', '2023-05-23 23:43:46', '2023-05-23 23:43:53'),
(139, 'purwokerto', 'OP Purwokerto', '2023-05-23 23:44:04', '0000-00-00 00:00:00'),
(140, 'admin', 'Admin', '2023-05-24 13:09:39', '2023-05-24 13:10:49'),
(141, 'purwokerto', 'OP Purwokerto', '2023-05-24 13:11:03', '2023-05-24 14:11:03'),
(142, 'admin', 'Admin', '2023-05-24 15:31:41', '2023-05-24 15:33:00'),
(143, 'purwokerto', 'Admin', '2023-05-24 15:33:15', '2023-05-24 15:33:33'),
(144, 'purwokerto', 'OP Purwokerto', '2023-05-24 15:33:42', '2023-05-24 15:38:30');

-- --------------------------------------------------------

--
-- Table structure for table `departure`
--

CREATE TABLE `departure` (
  `id` int(11) NOT NULL,
  `nomor` int(11) NOT NULL,
  `no_ka` varchar(100) NOT NULL,
  `nama_ka` varchar(100) NOT NULL,
  `relasi` varchar(100) NOT NULL,
  `jadwal_berangkat` varchar(5) NOT NULL,
  `jadwal_datang` varchar(5) NOT NULL,
  `jumlah` int(1) NOT NULL,
  `purwokerto_datang` varchar(5) NOT NULL,
  `purwokerto_berangkat` varchar(5) NOT NULL,
  `stamformasi` varchar(100) NOT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `departure`
--

INSERT INTO `departure` (`id`, `nomor`, `no_ka`, `nama_ka`, `relasi`, `jadwal_berangkat`, `jadwal_datang`, `jumlah`, `purwokerto_datang`, `purwokerto_berangkat`, `stamformasi`, `keterangan`) VALUES
(1154, 1, '304/301', 'SERAYU ', ' KIARACONDONG', '', '', 1, '', '06:45', '', ''),
(1155, 2, '112B', 'RANGGAJATI ', ' SURABAYA', '', '', 3, '', '08:37', '', ''),
(1156, 3, '153A', 'SAWUNGGALIH  ', '  PASAR SENEN', '', '', 2, '', '09:03', '', ''),
(1157, 4, '143B', 'FAJAR UTAMA YOGYA ', ' PASAR SENEN', '', '', 2, '', '09:44', '', ''),
(1158, 5, '195B', 'JOGLOSEMARKERTO', 'TEGAL', '', '', 2, '', '10:08', '', ''),
(1159, 6, '260A', 'KUTOJAYA UTARA ', ' KUTOARJO', '', '', 3, '', '10.40', '', ''),
(1160, 7, '81C', 'TAKSAKA  ', '  GAMBIR', '', '', 2, '', '10:54', '', ''),
(1161, 8, '134C', 'FAJAR UTAMA SOLO ', ' SOLO BALAPAN', '', '', 3, '', '11:13', '', ''),
(1162, 9, '7C', 'ARGO LAWU ', ' GAMBIR', '', '', 2, '', '11:18', '', ''),
(1163, 10, '228A', 'KAMANDAKA ', ' CILACAP ', '', '', 3, '', '11:45', '', ''),
(1164, 11, '292E', 'BENGAWAN  ', '  PURWOSARI', '', '', 3, '', '12:10', '', ''),
(1165, 12, '121D', 'BANGUNKARTA  ', '  PASAR SENEN', '', '', 2, '', '12:20', '', ''),
(1166, 13, '144E', 'FAJAR UTAMA YOGYA ', ' YOGYAKARTA', '', '', 3, '', '12:26', '', ''),
(1167, 14, '135B', 'MATARAM  ', '   PASAR SENEN', '', '', 2, '', '12:36', '', ''),
(1168, 15, '154C', 'SAWUNGGALIH   ', '  KUTOARJO', '', '', 3, '', '12:41', '', ''),
(1169, 16, '137C', 'BOGOWONTO ', ' PASAR SENEN', '', '', 2, '', '13:00', '', ''),
(1170, 17, '10C', 'ARGO DWIPANGGA ', ' SOLO BALAPAN', '', '', 3, '', '13:12', '', ''),
(1171, 18, '10543', 'TAMBAHAN SOLO GAMBIR ', ' GAMBIR', '', '', 2, '', '13:26', '', ''),
(1172, 19, '82D', 'TAKSAKA  ', '  YOGYAKARTA', '', '', 3, '', '13:33', '', ''),
(1173, 20, '190C', 'JOGLOSEMARKERTO ', '  YOGYA ', '', '', 3, '', '13:59', '', ''),
(1174, 21, '57C', 'ARGO LAWU TAMBAHAN  ', ' GAMBIR', '', '', 2, '', '13:26', '', ''),
(1175, 22, '7025B', 'TAKSAKA TAMBAHAN ', ' GAMBIR', '', '', 2, '', '14:30', '', ''),
(1176, 23, 'KP/11039', 'TAMBAHAN SOLO GAMBIR ', ' GAMBIR', '', '', 2, '', '14:52', '', ''),
(1177, 24, '60C', 'ARGO DWIPANGGA TAMBAHAN ', ' SOLO', '', '', 3, '', '15:21', '', ''),
(1178, 25, 'KP/227A', 'KAMANDAKA  ', '  SEMARANG TAWANG', '', '', 2, '', '15:41', '', ''),
(1179, 26, 'KP/10910', 'TAMBAHAN GAMBIR YOGYA ', ' YOGYA', '', '', 3, '', '16:00', '', ''),
(1180, 27, '85A', 'PURWOJAYA  ', '  GAMBIR', '', '', 2, '', '16:02', '', ''),
(1181, 28, '308/305', 'SERAYU ', ' KIARACONDONG', '', '', 1, '', '16:30', '', ''),
(1182, 29, '104C', 'GAYA BARU MALAM ', ' SURABAYA GUB', '', '', 3, '', '16:47', '', ''),
(1183, 30, '187A', 'JOGLOSEMARKERTO', 'TEGAL', '', '', 4, '', '17:10', '', ''),
(1184, 31, '122C', 'BANGUNKARTA ', ' JOMBANG', '', '', 3, '', '17:11', '', ''),
(1185, 32, '111B', 'RANGGAJATI  ', '  CIREBON', '', '', 2, '', '17:22', '', ''),
(1186, 33, '258A', 'JAKA TINGKIR ', ' PURWOSARI', '', '', 3, '', '18:02', '', ''),
(1187, 34, '293B', 'PROGO ', ' PASAR SENEN', '', '', 2, '', '18:13', '', ''),
(1188, 35, '170C', 'KERTANEGARA  ', '  MALANG', '', '', 4, '', '18:20', '', ''),
(1189, 36, '259F', 'KUTOJAYA UTARA ', ' JAKARTA KOTA', '', '', 2, '', '19:13', '', ''),
(1190, 37, '103C', 'GAYA BARU MALAM ', ' PASAR SENEN', '', '', 2, '', '19:57', '', ''),
(1191, 38, '141C', 'SENJA UTAMA YOGYA ', ' PASAR SENEN', '', '', 2, '', '20:36', '', ''),
(1192, 39, '155A', 'SAWUNGGALIH  ', '  PASAR SENEN', '', '', 2, '', '21:00', '', ''),
(1193, 40, '133D', 'SENJA UTAMA SOLO  ', '  PASAR SENEN', '', '', 2, '', '21:34', '', ''),
(1194, 41, '76E', 'BIMA (KA 76)  ', '  SURABAYA GUBENG', '', '', 3, '', '21:58', '', ''),
(1195, 42, '253C', 'JAYAKARTA (KA 253) ', ' PASAR SENEN', '', '', 2, '', '22:05', '', ''),
(1196, 43, '7046', 'TAMBAHAN GAMBIR SOLO ', ' SOLO', '', '', 3, '', '15:21', '', ''),
(1197, 44, '', 'KAMANDAKA KA 184', '', '', '', 4, '', 'UTARA', '', ''),
(1198, 45, '71C', 'GAJAYANA (KA 71) ', '  GAMBIR', '', '', 2, '', '22:31', '', ''),
(1199, 46, '254B', 'JAYAKARTA (KA 254) ', '  SURABAYA GUBENG', '', '', 3, '', '22:46', '', ''),
(1200, 47, '9C', 'ARGO DWIPANGGA (KA 9)  ', '  GAMBIR', '', '', 2, '', '22:52', '', ''),
(1201, 48, '102C', 'SINGASARI (KA 102)  ', '  BLITAR', '', '', 3, '', '23:05', '', ''),
(1202, 49, '83C', 'TAKSAKA (KA 83) ', '  GAMBIR', '', '', 2, '', '23:14', '', ''),
(1203, 50, '72C', 'GAJAYANA (KA 72)  ', '  MALANG', '', '', 3, '', '23:30', '', ''),
(1204, 0, '75E', 'BIMA( KA 75)   ', '   GAMBIR', '', '', 2, '', '23:52', '', ''),
(1205, 0, '156C', 'SAWUNGGALIH  (KA 156) ', '  KUTOARJO', '', '', 3, '', '23:57', '', ''),
(1206, 0, '7011B', 'TAKSAKA TAMBAHAN(7011B)', 'GAMBIR', '', '', 2, '', '00:18', '', ''),
(1207, 0, '141B', 'SENJA UTAMA YOGYA (KA 142) ', ' YOGYAKARTA', '', '', 3, '', '00.45', '', ''),
(1208, 0, '101C', 'SINGASARI (KA 101) ', '  PASAR SENEN', '', '', 2, '', '00:55', '', ''),
(1209, 0, '8C', 'ARGO LAWU  (KA 8 )', '  SOLO BALAPAN', '', '', 3, '', '01:09', '', ''),
(1210, 0, '291B', 'BENGAWAN  (KA 291)', '  PASAR SENEN', '', '', 2, '', '01:15', '', ''),
(1211, 0, '7045', 'ARGO DWIPANGGA TAMBAHAN (59C)', 'GAMBIR', '', '', 2, '', '01:35', '', ''),
(1212, 0, '84D', 'TAKSAKA (KA 84) ', '  YOGYAKARTA', '', '', 3, '', '01:53', '', ''),
(1213, 0, '136D', 'MATARAM (KA 136)  ', '  SOLO  BALAPAN', '', '', 3, '', '02:40', '', ''),
(1214, 0, '86B', 'PURWOJAYA  ', '  CILACAP', '', '', 3, '', '03:33', '', ''),
(1215, 0, '138B', 'BOGOWONTO  ', '  LEMPUYANGAN', '', '', 3, '', '04.48', '', ''),
(1216, 0, '7124', 'TAMBAHAN GAMBIR SOLO ', ' SOLO', '', '', 3, '', '04:03', '', ''),
(1217, 0, '294C', 'PROGO  ', '  LEMPUYANGAN', '', '', 3, '', '04:19', '', ''),
(1218, 0, '183A', 'KAMANDAKA  ', ' TEGAL S/D SEMARANG', '', '', 2, '', '05:00', '', ''),
(1219, 0, '7026B', 'TAKSAKA TAMBAHAN ', ' YOGYAKARTA', '', '', 3, '', '05.15', '', ''),
(1220, 0, '248B', 'LOGAWA  ', '  SURABAYA ', '', '', 5, '', '05:30', '', ''),
(1221, 0, '10909', 'TAMBAHAN YK', 'gambir', '', '', 2, '', '00.18', '', ''),
(1222, 0, '257A', 'JAKA TINGKIR ', ' PASAR SENEN', '', '', 2, '', '03:31', '', ''),
(1223, 0, '58C', 'ARGO LAWU TAMBHN ', ' SOLO BALAPAN', '', '', 3, '', '04:03', '', ''),
(1224, 0, '11046', 'TAMBAHAN GAMBIR SOLO ', 'SOLO BALAPAN', '', '', 3, '', '05:57', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `departure_kroya`
--

CREATE TABLE `departure_kroya` (
  `id` int(11) NOT NULL,
  `nomor` int(11) NOT NULL,
  `no_ka` varchar(100) NOT NULL,
  `nama_ka` varchar(100) NOT NULL,
  `relasi` varchar(100) NOT NULL,
  `jadwal_berangkat` varchar(5) NOT NULL,
  `jadwal_datang` varchar(5) NOT NULL,
  `jumlah` int(1) NOT NULL,
  `kroya_datang` varchar(5) NOT NULL,
  `kroya_berangkat` varchar(5) NOT NULL,
  `stamformasi` varchar(100) NOT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `departure_kroya`
--

INSERT INTO `departure_kroya` (`id`, `nomor`, `no_ka`, `nama_ka`, `relasi`, `jadwal_berangkat`, `jadwal_datang`, `jumlah`, `kroya_datang`, `kroya_berangkat`, `stamformasi`, `keterangan`) VALUES
(1172, 1, '304/301', 'SERAYU ', ' KIARACONDONG', '', '', 1, '', '06:45', '', ''),
(1173, 2, '112B', 'RANGGAJATI ', ' SURABAYA', '', '', 3, '', '08:37', '', ''),
(1174, 3, '153A', 'SAWUNGGALIH  ', '  PASAR SENEN', '', '', 2, '', '09:03', '', ''),
(1175, 4, '143B', 'FAJAR UTAMA YOGYA ', ' PASAR SENEN', '', '', 2, '', '09:44', '', ''),
(1176, 5, '195B', 'JOGLOSEMARKERTO', 'TEGAL', '', '', 2, '', '10:08', '', ''),
(1177, 6, '260A', 'KUTOJAYA UTARA ', ' KUTOARJO', '', '', 3, '', '10.40', '', ''),
(1178, 7, '81C', 'TAKSAKA  ', '  GAMBIR', '', '', 2, '', '10:54', '', ''),
(1179, 8, '134C', 'FAJAR UTAMA SOLO ', ' SOLO BALAPAN', '', '', 3, '', '11:13', '', ''),
(1180, 9, '7C', 'ARGO LAWU ', ' GAMBIR', '', '', 2, '', '11:18', '', ''),
(1181, 10, '228A', 'KAMANDAKA ', ' CILACAP ', '', '', 3, '', '11:45', '', ''),
(1182, 11, '292E', 'BENGAWAN  ', '  PURWOSARI', '', '', 3, '', '12:10', '', ''),
(1183, 12, '121D', 'BANGUNKARTA  ', '  PASAR SENEN', '', '', 2, '', '12:20', '', ''),
(1184, 13, '144E', 'FAJAR UTAMA YOGYA ', ' YOGYAKARTA', '', '', 3, '', '12:26', '', ''),
(1185, 14, '135B', 'MATARAM  ', '   PASAR SENEN', '', '', 2, '', '12:36', '', ''),
(1186, 15, '154C', 'SAWUNGGALIH   ', '  KUTOARJO', '', '', 3, '', '12:41', '', ''),
(1187, 16, '137C', 'BOGOWONTO ', ' PASAR SENEN', '', '', 2, '', '13:00', '', ''),
(1188, 17, '10C', 'ARGO DWIPANGGA ', ' SOLO BALAPAN', '', '', 3, '', '13:12', '', ''),
(1189, 18, '10543', 'TAMBAHAN SOLO GAMBIR ', ' GAMBIR', '', '', 2, '', '13:26', '', ''),
(1190, 19, '82D', 'TAKSAKA  ', '  YOGYAKARTA', '', '', 3, '', '13:33', '', ''),
(1191, 20, '190C', 'JOGLOSEMARKERTO ', '  YOGYA ', '', '', 3, '', '13:59', '', ''),
(1192, 21, '57C', 'ARGO LAWU TAMBAHAN  ', ' GAMBIR', '', '', 2, '', '13:26', '', ''),
(1193, 22, '7025B', 'TAKSAKA TAMBAHAN ', ' GAMBIR', '', '', 2, '', '14:30', '', ''),
(1194, 23, 'KP/11039', 'TAMBAHAN SOLO GAMBIR ', ' GAMBIR', '', '', 2, '', '14:52', '', ''),
(1195, 24, '60C', 'ARGO DWIPANGGA TAMBAHAN ', ' SOLO', '', '', 3, '', '15:21', '', ''),
(1196, 25, 'KP/227A', 'KAMANDAKA  ', '  SEMARANG TAWANG', '', '', 2, '', '15:41', '', ''),
(1197, 26, 'KP/10910', 'TAMBAHAN GAMBIR YOGYA ', ' YOGYA', '', '', 3, '', '16:00', '', ''),
(1198, 27, '85A', 'PURWOJAYA  ', '  GAMBIR', '', '', 2, '', '16:02', '', ''),
(1199, 28, '308/305', 'SERAYU ', ' KIARACONDONG', '', '', 1, '', '16:30', '', ''),
(1200, 29, '104C', 'GAYA BARU MALAM ', ' SURABAYA GUB', '', '', 3, '', '16:47', '', ''),
(1201, 30, '187A', 'JOGLOSEMARKERTO', 'TEGAL', '', '', 4, '', '17:10', '', ''),
(1202, 31, '122C', 'BANGUNKARTA ', ' JOMBANG', '', '', 3, '', '17:11', '', ''),
(1203, 32, '111B', 'RANGGAJATI  ', '  CIREBON', '', '', 2, '', '17:22', '', ''),
(1204, 33, '258A', 'JAKA TINGKIR ', ' PURWOSARI', '', '', 3, '', '18:02', '', ''),
(1205, 34, '293B', 'PROGO ', ' PASAR SENEN', '', '', 2, '', '18:13', '', ''),
(1206, 35, '170C', 'KERTANEGARA  ', '  MALANG', '', '', 4, '', '18:20', '', ''),
(1207, 36, '259F', 'KUTOJAYA UTARA ', ' JAKARTA KOTA', '', '', 2, '', '19:13', '', ''),
(1208, 37, '103C', 'GAYA BARU MALAM ', ' PASAR SENEN', '', '', 2, '', '19:57', '', ''),
(1209, 38, '141C', 'SENJA UTAMA YOGYA ', ' PASAR SENEN', '', '', 2, '', '20:36', '', ''),
(1210, 39, '155A', 'SAWUNGGALIH  ', '  PASAR SENEN', '', '', 2, '', '21:00', '', ''),
(1211, 40, '133D', 'SENJA UTAMA SOLO  ', '  PASAR SENEN', '', '', 2, '', '21:34', '', ''),
(1212, 41, '76E', 'BIMA (KA 76)  ', '  SURABAYA GUBENG', '', '', 3, '', '21:58', '', ''),
(1213, 42, '253C', 'JAYAKARTA (KA 253) ', ' PASAR SENEN', '', '', 2, '', '22:05', '', ''),
(1214, 43, '7046', 'TAMBAHAN GAMBIR SOLO ', ' SOLO', '', '', 3, '', '15:21', '', ''),
(1215, 44, '', 'KAMANDAKA KA 184', '', '', '', 4, '', 'UTARA', '', ''),
(1216, 45, '71C', 'GAJAYANA (KA 71) ', '  GAMBIR', '', '', 2, '', '22:31', '', ''),
(1217, 46, '254B', 'JAYAKARTA (KA 254) ', '  SURABAYA GUBENG', '', '', 3, '', '22:46', '', ''),
(1218, 47, '9C', 'ARGO DWIPANGGA (KA 9)  ', '  GAMBIR', '', '', 2, '', '22:52', '', ''),
(1219, 48, '102C', 'SINGASARI (KA 102)  ', '  BLITAR', '', '', 3, '', '23:05', '', ''),
(1220, 49, '83C', 'TAKSAKA (KA 83) ', '  GAMBIR', '', '', 2, '', '23:14', '', ''),
(1221, 50, '72C', 'GAJAYANA (KA 72)  ', '  MALANG', '', '', 3, '', '23:30', '', ''),
(1222, 0, '75E', 'BIMA( KA 75)   ', '   GAMBIR', '', '', 2, '', '23:52', '', ''),
(1223, 0, '156C', 'SAWUNGGALIH  (KA 156) ', '  KUTOARJO', '', '', 3, '', '23:57', '', ''),
(1224, 0, '7011B', 'TAKSAKA TAMBAHAN(7011B)', 'GAMBIR', '', '', 2, '', '00.18', '', ''),
(1225, 0, '141B', 'SENJA UTAMA YOGYA (KA 142) ', ' YOGYAKARTA', '', '', 3, '', '00.45', '', ''),
(1226, 0, '101C', 'SINGASARI (KA 101) ', '  PASAR SENEN', '', '', 2, '', '00:55', '', ''),
(1227, 0, '8C', 'ARGO LAWU  (KA 8 )', '  SOLO BALAPAN', '', '', 3, '', '01:09', '', ''),
(1228, 0, '291B', 'BENGAWAN  (KA 291)', '  PASAR SENEN', '', '', 2, '', '01:15', '', ''),
(1229, 0, '7045', 'ARGO DWIPANGGA TAMBAHAN (59C)', '', '', '', 2, '', '01:35', '', ''),
(1230, 0, '84D', 'TAKSAKA (KA 84) ', '  YOGYAKARTA', '', '', 3, '', '01:53', '', ''),
(1231, 0, '136D', 'MATARAM (KA 136)  ', '  SOLO  BALAPAN', '', '', 3, '', '02:40', '', ''),
(1232, 0, '86B', 'PURWOJAYA  ', '  CILACAP', '', '', 3, '', '03:33', '', ''),
(1233, 0, '138B', 'BOGOWONTO  ', '  LEMPUYANGAN', '', '', 3, '', '04.48', '', ''),
(1234, 0, '7124', 'TAMBAHAN GAMBIR SOLO ', ' SOLO', '', '', 3, '', '04:03', '', ''),
(1235, 0, '294C', 'PROGO  ', '  LEMPUYANGAN', '', '', 3, '', '04:19', '', ''),
(1236, 0, '183A', 'KAMANDAKA  ', ' TEGAL S/D SEMARANG', '', '', 2, '', '05:00', '', ''),
(1237, 0, '7026B', 'TAKSAKA TAMBAHAN ', ' YOGYAKARTA', '', '', 3, '', '05.15', '', ''),
(1238, 0, '248B', 'LOGAWA  ', '  SURABAYA ', '', '', 5, '', '05:30', '', ''),
(1239, 0, '10909', 'TAMBAHAN YK', 'GMR ', '', '', 2, '', '00.18', '', ''),
(1240, 0, '257A', 'JAKA TINGKIR ', ' PASAR SENEN', '', '', 2, '', '03:31', '', ''),
(1241, 0, '58C', 'ARGO LAWU TAMBHN ', ' SOLO BALAPAN', '', '', 3, '', '04:03', '', ''),
(1242, 0, '11046', 'TAMBAHAN GAMBIR SOLO ', 'SOLO BALAPAN', '', '', 3, '', '05:57', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `departure_kutoarjo`
--

CREATE TABLE `departure_kutoarjo` (
  `id` int(11) NOT NULL,
  `nomor` int(11) NOT NULL,
  `no_ka` varchar(100) NOT NULL,
  `nama_ka` varchar(100) NOT NULL,
  `relasi` varchar(100) NOT NULL,
  `jadwal_berangkat` varchar(5) NOT NULL,
  `jadwal_datang` varchar(5) NOT NULL,
  `jumlah` int(1) NOT NULL,
  `purwokerto_datang` varchar(5) NOT NULL,
  `purwokerto_berangkat` varchar(5) NOT NULL,
  `stamformasi` varchar(100) NOT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `departure_kutoarjo`
--

INSERT INTO `departure_kutoarjo` (`id`, `nomor`, `no_ka`, `nama_ka`, `relasi`, `jadwal_berangkat`, `jadwal_datang`, `jumlah`, `purwokerto_datang`, `purwokerto_berangkat`, `stamformasi`, `keterangan`) VALUES
(122, 1, '304/301', 'SERAYU ', ' KIARACONDONG', '', '', 1, '', '06:45', '', ''),
(123, 2, '112B', 'RANGGAJATI ', ' SURABAYA', '', '', 3, '', '08:37', '', ''),
(124, 0, '153A', 'SAWUNGGALIH  ', '  PASAR SENEN', '', '', 2, '', '09:03', '', ''),
(125, 4, '143B', 'FAJAR UTAMA YOGYA ', ' PASAR SENEN', '', '', 2, '', '09:44', '', ''),
(126, 5, '195B', 'JOGLOSEMARKERTO', 'TEGAL', '', '', 2, '', '10:08', '', ''),
(127, 6, '260A', 'KUTOJAYA UTARA ', ' KUTOARJO', '', '', 3, '', '10.40', '', ''),
(128, 7, '81C', 'TAKSAKA  ', '  GAMBIR', '', '', 2, '', '10:54', '', ''),
(129, 8, '134C', 'FAJAR UTAMA SOLO ', ' SOLO BALAPAN', '', '', 3, '', '11:13', '', ''),
(130, 9, '7C', 'ARGO LAWU ', ' GAMBIR', '', '', 2, '', '11:18', '', ''),
(131, 10, '228A', 'KAMANDAKA ', ' CILACAP ', '', '', 3, '', '11:45', '', ''),
(132, 11, '292E', 'BENGAWAN  ', '  PURWOSARI', '', '', 3, '', '12:10', '', ''),
(133, 12, '121D', 'BANGUNKARTA  ', '  PASAR SENEN', '', '', 2, '', '12:20', '', ''),
(134, 13, '144E', 'FAJAR UTAMA YOGYA ', ' YOGYAKARTA', '', '', 3, '', '12:26', '', ''),
(135, 14, '135B', 'MATARAM  ', '   PASAR SENEN', '', '', 2, '', '12:36', '', ''),
(136, 15, '154C', 'SAWUNGGALIH   ', '  KUTOARJO', '', '', 3, '', '12:41', '', ''),
(137, 16, '137C', 'BOGOWONTO ', ' PASAR SENEN', '', '', 2, '', '13:00', '', ''),
(138, 17, '10C', 'ARGO DWIPANGGA ', ' SOLO BALAPAN', '', '', 3, '', '13:12', '', ''),
(139, 18, '10543', 'TAMBAHAN SOLO GAMBIR ', ' GAMBIR', '', '', 2, '', '13:26', '', ''),
(140, 19, '82D', 'TAKSAKA  ', '  YOGYAKARTA', '', '', 3, '', '13:33', '', ''),
(141, 20, '190C', 'JOGLOSEMARKERTO ', '  YOGYA ', '', '', 3, '', '13:59', '', ''),
(142, 21, '57C', 'ARGO LAWU TAMBAHAN  ', ' GAMBIR', '', '', 2, '', '13:26', '', ''),
(143, 22, '7025B', 'TAKSAKA TAMBAHAN ', ' GAMBIR', '', '', 2, '', '14:30', '', ''),
(144, 23, 'KP/11039', 'TAMBAHAN SOLO GAMBIR ', ' GAMBIR', '', '', 2, '', '14:52', '', ''),
(145, 24, '60C', 'ARGO DWIPANGGA TAMBAHAN ', ' SOLO', '', '', 3, '', '15:21', '', ''),
(146, 25, 'KP/227A', 'KAMANDAKA  ', '  SEMARANG TAWANG', '', '', 2, '', '15:41', '', ''),
(147, 26, 'KP/10910', 'TAMBAHAN GAMBIR YOGYA ', ' YOGYA', '', '', 3, '', '16:00', '', ''),
(148, 27, '85A', 'PURWOJAYA  ', '  GAMBIR', '', '', 2, '', '16:02', '', ''),
(149, 28, '308/305', 'SERAYU ', ' KIARACONDONG', '', '', 1, '', '16:30', '', ''),
(150, 29, '104C', 'GAYA BARU MALAM ', ' SURABAYA GUB', '', '', 3, '', '16:47', '', ''),
(151, 30, '187A', 'JOGLOSEMARKERTO', 'TEGAL', '', '', 4, '', '17:10', '', ''),
(152, 31, '122C', 'BANGUNKARTA ', ' JOMBANG', '', '', 3, '', '17:11', '', ''),
(153, 32, '111B', 'RANGGAJATI  ', '  CIREBON', '', '', 2, '', '17:22', '', ''),
(154, 33, '258A', 'JAKA TINGKIR ', ' PURWOSARI', '', '', 3, '', '18:02', '', ''),
(155, 34, '293B', 'PROGO ', ' PASAR SENEN', '', '', 2, '', '18:13', '', ''),
(156, 35, '170C', 'KERTANEGARA  ', '  MALANG', '', '', 4, '', '18:20', '', ''),
(157, 36, '259F', 'KUTOJAYA UTARA ', ' JAKARTA KOTA', '', '', 2, '', '19:13', '', ''),
(158, 37, '103C', 'GAYA BARU MALAM ', ' PASAR SENEN', '', '', 2, '', '19:57', '', ''),
(159, 38, '141C', 'SENJA UTAMA YOGYA ', ' PASAR SENEN', '', '', 2, '', '20:36', '', ''),
(160, 39, '155A', 'SAWUNGGALIH  ', '  PASAR SENEN', '', '', 2, '', '21:00', '', ''),
(161, 40, '133D', 'SENJA UTAMA SOLO  ', '  PASAR SENEN', '', '', 2, '', '21:34', '', ''),
(162, 41, '76E', 'BIMA (KA 76)  ', '  SURABAYA GUBENG', '', '', 3, '', '21:58', '', ''),
(163, 42, '253C', 'JAYAKARTA (KA 253) ', ' PASAR SENEN', '', '', 2, '', '22:05', '', ''),
(164, 43, '7046', 'TAMBAHAN GAMBIR SOLO ', ' SOLO', '', '', 3, '', '15:21', '', ''),
(165, 44, '', 'KAMANDAKA KA 184', '', '', '', 4, '', 'UTARA', '', ''),
(166, 45, '71C', 'GAJAYANA (KA 71) ', '  GAMBIR', '', '', 2, '', '22:31', '', ''),
(167, 46, '254B', 'JAYAKARTA (KA 254) ', '  SURABAYA GUBENG', '', '', 3, '', '22:46', '', ''),
(168, 47, '9C', 'ARGO DWIPANGGA (KA 9)  ', '  GAMBIR', '', '', 2, '', '22:52', '', ''),
(169, 48, '102C', 'SINGASARI (KA 102)  ', '  BLITAR', '', '', 3, '', '23:05', '', ''),
(170, 49, '83C', 'TAKSAKA (KA 83) ', '  GAMBIR', '', '', 2, '', '23:14', '', ''),
(171, 50, '72C', 'GAJAYANA (KA 72)  ', '  MALANG', '', '', 3, '', '23:30', '', ''),
(172, 0, '75E', 'BIMA( KA 75)   ', '   GAMBIR', '', '', 2, '', '23:52', '', ''),
(173, 0, '156C', 'SAWUNGGALIH  (KA 156) ', '  KUTOARJO', '', '', 3, '', '23:57', '', ''),
(174, 0, '7011B', 'TAKSAKA TAMBAHAN(7011B)', 'GAMBIR', '', '', 2, '', '00.18', '', ''),
(175, 0, '141B', 'SENJA UTAMA YOGYA (KA 142) ', ' YOGYAKARTA', '', '', 3, '', '00.45', '', ''),
(176, 0, '101C', 'SINGASARI (KA 101) ', '  PASAR SENEN', '', '', 2, '', '00:55', '', ''),
(177, 0, '8C', 'ARGO LAWU  (KA 8 )', '  SOLO BALAPAN', '', '', 3, '', '01:09', '', ''),
(178, 0, '291B', 'BENGAWAN  (KA 291)', '  PASAR SENEN', '', '', 2, '', '01:15', '', ''),
(179, 0, '7045', 'ARGO DWIPANGGA TAMBAHAN (59C)', '', '', '', 2, '', '01:35', '', ''),
(180, 0, '84D', 'TAKSAKA (KA 84) ', '  YOGYAKARTA', '', '', 3, '', '01:53', '', ''),
(181, 0, '136D', 'MATARAM (KA 136)  ', '  SOLO  BALAPAN', '', '', 3, '', '02:40', '', ''),
(182, 0, '86B', 'PURWOJAYA  ', '  CILACAP', '', '', 3, '', '03:33', '', ''),
(183, 0, '138B', 'BOGOWONTO  ', '  LEMPUYANGAN', '', '', 3, '', '04.48', '', ''),
(184, 0, '7124', 'TAMBAHAN GAMBIR SOLO ', ' SOLO', '', '', 3, '', '04:03', '', ''),
(185, 0, '294C', 'PROGO  ', '  LEMPUYANGAN', '', '', 3, '', '04:19', '', ''),
(186, 0, '183A', 'KAMANDAKA  ', ' TEGAL S/D SEMARANG', '', '', 2, '', '05:00', '', ''),
(187, 0, '7026B', 'TAKSAKA TAMBAHAN ', ' YOGYAKARTA', '', '', 3, '', '05.15', '', ''),
(188, 0, '248B', 'LOGAWA  ', '  SURABAYA ', '', '', 5, '', '05:30', '', ''),
(189, 0, '10909', 'TAMBAHAN YK', 'GMR ', '', '', 2, '', '00.18', '', ''),
(190, 0, '257A', 'JAKA TINGKIR ', ' PASAR SENEN', '', '', 2, '', '03:31', '', ''),
(191, 0, '58C', 'ARGO LAWU TAMBHN ', ' SOLO BALAPAN', '', '', 3, '', '04:03', '', ''),
(192, 0, '11046', 'TAMBAHAN GAMBIR SOLO ', 'SOLO BALAPAN', '', '', 3, '', '05:57', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `departure_purwokerto`
--

CREATE TABLE `departure_purwokerto` (
  `id` int(11) NOT NULL,
  `nomor` int(11) NOT NULL,
  `no_ka` varchar(100) NOT NULL,
  `nama_ka` varchar(100) NOT NULL,
  `relasi` varchar(100) NOT NULL,
  `jadwal_berangkat` varchar(5) NOT NULL,
  `jadwal_datang` varchar(5) NOT NULL,
  `jumlah` int(1) NOT NULL,
  `purwokerto_datang` varchar(5) NOT NULL,
  `purwokerto_berangkat` varchar(5) NOT NULL,
  `stamformasi` varchar(100) NOT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `departure_purwokerto`
--

INSERT INTO `departure_purwokerto` (`id`, `nomor`, `no_ka`, `nama_ka`, `relasi`, `jadwal_berangkat`, `jadwal_datang`, `jumlah`, `purwokerto_datang`, `purwokerto_berangkat`, `stamformasi`, `keterangan`) VALUES
(764, 1, '304/301', 'SERAYU ', ' KIARACONDONG', '', '', 1, '', '06:45', '', ''),
(765, 2, '112B', 'RANGGAJATI ', ' SURABAYA', '', '', 3, '', '08:37', '', ''),
(766, 3, '153A', 'SAWUNGGALIH  ', '  PASAR SENEN', '', '', 2, '', '09:03', '', ''),
(767, 4, '143B', 'FAJAR UTAMA YOGYA ', ' PASAR SENEN', '', '', 2, '', '09:44', '', ''),
(768, 5, '195B', 'JOGLOSEMARKERTO', 'TEGAL', '', '', 2, '', '10:08', '', ''),
(769, 6, '260A', 'KUTOJAYA UTARA ', ' KUTOARJO', '', '', 3, '', '10.40', '', ''),
(770, 7, '81C', 'TAKSAKA  ', '  GAMBIR', '', '', 2, '', '10:54', '', ''),
(771, 8, '134C', 'FAJAR UTAMA SOLO ', ' SOLO BALAPAN', '', '', 3, '', '11:13', '', ''),
(772, 9, '7C', 'ARGO LAWU ', ' GAMBIR', '', '', 2, '', '11:18', '', ''),
(773, 10, '228A', 'KAMANDAKA ', ' CILACAP ', '', '', 3, '', '11:45', '', ''),
(774, 11, '292E', 'BENGAWAN  ', '  PURWOSARI', '', '', 3, '', '12:10', '', ''),
(775, 12, '121D', 'BANGUNKARTA  ', '  PASAR SENEN', '', '', 2, '', '12:20', '', ''),
(776, 13, '144E', 'FAJAR UTAMA YOGYA ', ' YOGYAKARTA', '', '', 3, '', '12:26', '', ''),
(777, 14, '135B', 'MATARAM  ', '   PASAR SENEN', '', '', 2, '', '12:36', '', ''),
(778, 15, '154C', 'SAWUNGGALIH   ', '  KUTOARJO', '', '', 3, '', '12:41', '', ''),
(779, 16, '137C', 'BOGOWONTO ', ' PASAR SENEN', '', '', 2, '', '13:00', '', ''),
(780, 17, '10C', 'ARGO DWIPANGGA ', ' SOLO BALAPAN', '', '', 3, '', '13:12', '', ''),
(781, 18, '10543', 'TAMBAHAN SOLO GAMBIR ', ' GAMBIR', '', '', 2, '', '13:26', '', ''),
(782, 19, '82D', 'TAKSAKA  ', '  YOGYAKARTA', '', '', 3, '', '13:33', '', ''),
(783, 20, '190C', 'JOGLOSEMARKERTO ', '  YOGYA ', '', '', 3, '', '13:59', '', ''),
(784, 21, '57C', 'ARGO LAWU TAMBAHAN  ', ' GAMBIR', '', '', 2, '', '13:26', '', ''),
(785, 22, '7025B', 'TAKSAKA TAMBAHAN ', ' GAMBIR', '', '', 2, '', '14:30', '', ''),
(786, 23, 'KP/11039', 'TAMBAHAN SOLO GAMBIR ', ' GAMBIR', '', '', 2, '', '14:52', '', ''),
(787, 24, '60C', 'ARGO DWIPANGGA TAMBAHAN ', ' SOLO', '', '', 3, '', '15:21', '', ''),
(788, 25, 'KP/227A', 'KAMANDAKA  ', '  SEMARANG TAWANG', '', '', 2, '', '15:41', '', ''),
(789, 26, 'KP/10910', 'TAMBAHAN GAMBIR YOGYA ', ' YOGYA', '', '', 3, '', '16:00', '', ''),
(790, 27, '85A', 'PURWOJAYA  ', '  GAMBIR', '', '', 2, '', '16:02', '', ''),
(791, 28, '308/305', 'SERAYU ', ' KIARACONDONG', '', '', 1, '', '16:30', '', ''),
(792, 29, '104C', 'GAYA BARU MALAM ', ' SURABAYA GUB', '', '', 3, '', '16:47', '', ''),
(793, 30, '187A', 'JOGLOSEMARKERTO', 'TEGAL', '', '', 4, '', '17:10', '', ''),
(794, 31, '122C', 'BANGUNKARTA ', ' JOMBANG', '', '', 3, '', '17:11', '', ''),
(795, 32, '111B', 'RANGGAJATI  ', '  CIREBON', '', '', 2, '', '17:22', '', ''),
(796, 33, '258A', 'JAKA TINGKIR ', ' PURWOSARI', '', '', 3, '', '18:02', '', ''),
(797, 34, '293B', 'PROGO ', ' PASAR SENEN', '', '', 2, '', '18:13', '', ''),
(798, 35, '170C', 'KERTANEGARA  ', '  MALANG', '', '', 4, '', '18:20', '', ''),
(799, 36, '259F', 'KUTOJAYA UTARA ', ' JAKARTA KOTA', '', '', 2, '', '19:13', '', ''),
(800, 37, '103C', 'GAYA BARU MALAM ', ' PASAR SENEN', '', '', 2, '', '19:57', '', ''),
(801, 38, '141C', 'SENJA UTAMA YOGYA ', ' PASAR SENEN', '', '', 2, '', '20:36', '', ''),
(802, 39, '155A', 'SAWUNGGALIH  ', '  PASAR SENEN', '', '', 2, '', '21:00', '', ''),
(803, 40, '133D', 'SENJA UTAMA SOLO  ', '  PASAR SENEN', '', '', 2, '', '21:34', '', ''),
(804, 41, '76E', 'BIMA (KA 76)  ', '  SURABAYA GUBENG', '', '', 3, '', '21:58', '', ''),
(805, 42, '253C', 'JAYAKARTA (KA 253) ', ' PASAR SENEN', '', '', 2, '', '22:05', '', ''),
(806, 43, '7046', 'TAMBAHAN GAMBIR SOLO ', ' SOLO', '', '', 3, '', '15:21', '', ''),
(807, 44, '', 'KAMANDAKA KA 184', '', '', '', 4, '', 'UTARA', '', ''),
(808, 45, '71C', 'GAJAYANA (KA 71) ', '  GAMBIR', '', '', 2, '', '22:31', '', ''),
(809, 46, '254B', 'JAYAKARTA (KA 254) ', '  SURABAYA GUBENG', '', '', 3, '', '22:46', '', ''),
(810, 47, '9C', 'ARGO DWIPANGGA (KA 9)  ', '  GAMBIR', '', '', 2, '', '22:52', '', ''),
(811, 48, '102C', 'SINGASARI (KA 102)  ', '  BLITAR', '', '', 3, '', '23:05', '', ''),
(812, 49, '83C', 'TAKSAKA (KA 83) ', '  GAMBIR', '', '', 2, '', '23:14', '', ''),
(813, 50, '72C', 'GAJAYANA (KA 72)  ', '  MALANG', '', '', 3, '', '23:30', '', ''),
(814, 0, '75E', 'BIMA( KA 75)   ', '   GAMBIR', '', '', 2, '', '23:52', '', ''),
(815, 0, '156C', 'SAWUNGGALIH  (KA 156) ', '  KUTOARJO', '', '', 3, '', '23:57', '', ''),
(816, 0, '7011B', 'TAKSAKA TAMBAHAN(7011B)', 'GAMBIR', '', '', 3, '', '00.18', '', ''),
(817, 0, '141B', 'SENJA UTAMA YOGYA (KA 142) ', ' YOGYAKARTA', '', '', 3, '', '00.45', '', ''),
(818, 0, '101C', 'SINGASARI (KA 101) ', '  PASAR SENEN', '', '', 2, '', '00:55', '', ''),
(819, 0, '8C', 'ARGO LAWU  (KA 8 )', '  SOLO BALAPAN', '', '', 3, '', '01:09', '', ''),
(820, 0, '291B', 'BENGAWAN  (KA 291)', '  PASAR SENEN', '', '', 2, '', '01:15', '', ''),
(821, 0, '7045', 'ARGO DWIPANGGA TAMBAHAN (59C)', '', '', '', 2, '', '01:35', '', ''),
(822, 0, '84D', 'TAKSAKA (KA 84) ', '  YOGYAKARTA', '', '', 3, '', '01:53', '', ''),
(823, 0, '136D', 'MATARAM (KA 136)  ', '  SOLO  BALAPAN', '', '', 3, '', '02:40', '', ''),
(824, 0, '86B', 'PURWOJAYA  ', '  CILACAP', '', '', 3, '', '03:33', '', ''),
(825, 0, '138B', 'BOGOWONTO  ', '  LEMPUYANGAN', '', '', 3, '', '04.48', '', ''),
(826, 0, '7124', 'TAMBAHAN GAMBIR SOLO ', ' SOLO', '', '', 3, '', '04:03', '', ''),
(827, 0, '294C', 'PROGO  ', '  LEMPUYANGAN', '', '', 3, '', '04:19', '', ''),
(828, 0, '183A', 'KAMANDAKA  ', ' TEGAL S/D SEMARANG', '', '', 2, '', '05:00', '', ''),
(829, 0, '7026B', 'TAKSAKA TAMBAHAN ', ' YOGYAKARTA', '', '', 3, '', '05.15', '', ''),
(830, 0, '248B', 'LOGAWA  ', '  SURABAYA ', '', '', 5, '', '05:30', '', ''),
(831, 0, '10909', 'TAMBAHAN YK', 'GMR ', '', '', 2, '', '00.18', '', ''),
(832, 0, '257A', 'JAKA TINGKIR ', ' PASAR SENEN', '', '', 2, '', '03:31', '', ''),
(833, 0, '58C', 'ARGO LAWU TAMBHN ', ' SOLO BALAPAN', '', '', 3, '', '04:03', '', ''),
(834, 0, '11046', 'TAMBAHAN GAMBIR SOLO ', 'SOLO BALAPAN', '', '', 3, '', '05:57', '', ''),
(835, 0, '195B', 'Lugawa', 'pasarsenen', '8.30', '10.45', 2, '10.20', '10.30', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `hasilka`
--

CREATE TABLE `hasilka` (
  `jalur` int(1) NOT NULL,
  `no_ka` char(10) NOT NULL,
  `nama_ka` varchar(50) NOT NULL,
  `tujuan` varchar(20) NOT NULL,
  `jam_berangkat` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hasilka`
--

INSERT INTO `hasilka` (`jalur`, `no_ka`, `nama_ka`, `tujuan`, `jam_berangkat`) VALUES
(1, '10909', 'TAMBAHAN YK', 'gambir', '00.18'),
(2, '--', '--', '--', '--'),
(3, '--', '--', '--', '--'),
(4, '--', '--', '--', '--'),
(5, '--', '--', '--', '--');

-- --------------------------------------------------------

--
-- Table structure for table `hasilka_kroya`
--

CREATE TABLE `hasilka_kroya` (
  `jalur` int(1) NOT NULL,
  `no_ka` char(10) NOT NULL,
  `nama_ka` varchar(50) NOT NULL,
  `tujuan` varchar(20) NOT NULL,
  `jam_berangkat` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hasilka_kroya`
--

INSERT INTO `hasilka_kroya` (`jalur`, `no_ka`, `nama_ka`, `tujuan`, `jam_berangkat`) VALUES
(1, '304/301', 'SERAYU ', ' KIARACONDONG', '06:45'),
(2, '7045', 'ARGO DWIPANGGA TAMBAHAN (59C)', 'solo', '01:35'),
(3, '141B', 'SENJA UTAMA YOGYA (KA 142) ', ' YOGYAKARTA', '00.45'),
(4, '7045', 'ARGO DWIPANGGA TAMBAHAN (59C)', 'solo', '01:35'),
(5, '7045', 'ARGO DWIPANGGA TAMBAHAN (59C)', 'solo', '01:35'),
(6, '--', '--', '--', '--');

-- --------------------------------------------------------

--
-- Table structure for table `hasilka_kutoarjo`
--

CREATE TABLE `hasilka_kutoarjo` (
  `jalur` int(1) NOT NULL,
  `no_ka` char(10) NOT NULL,
  `nama_ka` varchar(50) NOT NULL,
  `tujuan` varchar(20) NOT NULL,
  `jam_berangkat` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hasilka_kutoarjo`
--

INSERT INTO `hasilka_kutoarjo` (`jalur`, `no_ka`, `nama_ka`, `tujuan`, `jam_berangkat`) VALUES
(1, '10909', 'TAMBAHAN YK', 'gambir', '00.18'),
(2, '141B', 'SENJA UTAMA YOGYA (KA 142) ', ' YOGYAKARTA', '00.45'),
(3, '8C', 'ARGO LAWU  (KA 8 )', '  SOLO BALAPAN', '01:09'),
(4, '--', '--', '--', '--'),
(5, '--', '--', '--', '--');

-- --------------------------------------------------------

--
-- Table structure for table `hasilka_purwokerto`
--

CREATE TABLE `hasilka_purwokerto` (
  `jalur` int(1) NOT NULL,
  `no_ka` char(10) NOT NULL,
  `nama_ka` varchar(50) NOT NULL,
  `tujuan` varchar(20) NOT NULL,
  `jam_berangkat` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hasilka_purwokerto`
--

INSERT INTO `hasilka_purwokerto` (`jalur`, `no_ka`, `nama_ka`, `tujuan`, `jam_berangkat`) VALUES
(1, '--', '--', '--', '--'),
(2, 'KP/227A', 'KAMANDAKA  ', '  SEMARANG TAWANG', '15:41'),
(3, 'KP/10910', 'TAMBAHAN GAMBIR YOGYA ', ' YOGYA', '16:00'),
(4, '--', '--', '--', '--'),
(5, '--', '--', '--', '--');

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `no` int(11) NOT NULL,
  `nip` varchar(18) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `peran` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `no`, `nip`, `nama`, `password`, `peran`) VALUES
(44, 1, '10102', 'purwokerto', 'purwokerto123', 'OP Purwokerto'),
(47, 4, '00000', 'admin', 'admin123', 'Admin'),
(52, 5, '12412312', 'Purwokerto siap', 'ppadiofhadof', 'OP Purwokerto');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departure`
--
ALTER TABLE `departure`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departure_kroya`
--
ALTER TABLE `departure_kroya`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departure_kutoarjo`
--
ALTER TABLE `departure_kutoarjo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departure_purwokerto`
--
ALTER TABLE `departure_purwokerto`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hasilka`
--
ALTER TABLE `hasilka`
  ADD PRIMARY KEY (`jalur`);

--
-- Indexes for table `hasilka_kroya`
--
ALTER TABLE `hasilka_kroya`
  ADD PRIMARY KEY (`jalur`);

--
-- Indexes for table `hasilka_purwokerto`
--
ALTER TABLE `hasilka_purwokerto`
  ADD PRIMARY KEY (`jalur`);

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT for table `departure`
--
ALTER TABLE `departure`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1226;

--
-- AUTO_INCREMENT for table `departure_kroya`
--
ALTER TABLE `departure_kroya`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1243;

--
-- AUTO_INCREMENT for table `departure_kutoarjo`
--
ALTER TABLE `departure_kutoarjo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;

--
-- AUTO_INCREMENT for table `departure_purwokerto`
--
ALTER TABLE `departure_purwokerto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=836;

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
