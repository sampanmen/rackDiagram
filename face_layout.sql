-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 20, 2016 at 07:30 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `face_layout`
--

-- --------------------------------------------------------

--
-- Table structure for table `idc`
--

CREATE TABLE IF NOT EXISTS `idc` (
`idc_id` int(11) NOT NULL,
  `idc_label` varchar(50) NOT NULL,
  `idc_name` varchar(100) NOT NULL,
  `idc_detail` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `idc`
--

INSERT INTO `idc` (`idc_id`, `idc_label`, `idc_name`, `idc_detail`) VALUES
(1, 'pbi', 'PBI', '-'),
(2, 'tr', 'True IDC', 'at TrueTower 14 fl.');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE IF NOT EXISTS `item` (
`item_id` int(11) NOT NULL,
  `item_name` varchar(100) DEFAULT NULL,
  `item_type` varchar(50) DEFAULT NULL,
  `item_model` varchar(50) DEFAULT NULL,
  `item_brand` varchar(50) DEFAULT NULL,
  `item_serial` varchar(50) DEFAULT NULL,
  `item_unit_size` int(3) DEFAULT NULL,
  `item_port_amount` int(3) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`item_id`, `item_name`, `item_type`, `item_model`, `item_brand`, `item_serial`, `item_unit_size`, `item_port_amount`) VALUES
(1, 'PBICPGCM01', 'server', 'SunFire V240', 'SUN microsystems', 'FN60510352\r\n', 2, NULL),
(2, '', 'switch', 'Cisco 2800 series', 'Cisco', '\r\n', 1, NULL),
(3, 'PBIINTSW01', 'switch', 'Catalyst 2950 series', 'Cisco', '\r\n', 1, NULL),
(4, 'PBIESX01', 'server', 'ProLiant DL380p Gen8', 'HP', '\r\n', 2, NULL),
(5, '', '-', 'BIG-IP 4000 Series', 'F5', 'f5-jqhr-egfo\r\n', 1, NULL),
(6, '', '-', 'JSA1500', 'Juniper', '\r\n', 2, NULL),
(7, 'I02726B', 'switch', 'Quidway S2300 Series', 'HUAWEI', '\r\n', 1, NULL),
(8, '', 'switch', 'Catalyst 2950 Series', 'Cisco', '\r\n', 1, NULL),
(9, '', 'switch', 'Catalyst 2950 Series', 'Cisco', '\r\n', 1, NULL),
(10, 'True V07698A', 'router', 'Cisco 1800 Series', 'Cisco', '\r\n', 1, NULL),
(11, '', '-', 'BIG-IP 2000 Series', 'F5', '\r\n', 1, NULL),
(12, '', '-', '', '', '\r\n', 1, NULL),
(13, '', 'switch', 'Catalyst 3850 24', 'Cisco', '\r\n', 1, NULL),
(14, '', 'server', 'Cisco 1120 Secure Access Control System', 'Cisco', 'FTX150450E7\r\n', 1, NULL),
(15, 'PBISSHVPN03', '-', 'FirePass', 'F5', 'bip09 2248s s\r\n', 1, NULL),
(16, '', 'switch', 'Catalyst 3560G Series', 'Cisco', '\r\n', 1, NULL),
(17, 'True CCID=I02726', 'router', '', 'Cisco', '35601106244\r\n', 1, NULL),
(18, 'PBINSDMZ03', 'switch', 'Catalyst 2960G', 'Cisco', '\r\n', 1, NULL),
(19, 'PBINSFW01', '-', 'ISG 1000', 'Juniper', '\r\n', 3, NULL),
(20, 'PBITMWAN01', '-', 'Cisco 2800 eries', 'Cisco', '\r\n', 2, NULL),
(21, 'PBICONV01', 'switch', 'Catalyst 3750G Series', 'Cisco', '\r\n', 1, NULL),
(22, 'PBINSDMZ01', 'switch', 'Catalyst 2960G Series', 'Cisco', '\r\n', 1, NULL),
(23, '', '-', 'SG900', 'BlueCoat', '1213240199\r\n', 1, NULL),
(24, 'PBITWEB01', 'server', 'SunFire v240', 'SUN', 'FN60510092\r\n', 2, NULL),
(25, 'True CCID=I800194', '-', 'Cisco 1900 Series', 'Cisco', '\r\n', 2, NULL),
(26, 'True CCID=I01572B', '-', '', 'Cisco', 'FCZ1515C0TD\r\n', 1, NULL),
(27, '', 'switch', 'S2750-28TP-EI-AC', 'HUAWEI', '\r\n', 1, NULL),
(28, 'PBICPGCM02', 'server', 'SunFire v240', 'SUN', 'FN60510362\r\n', 2, NULL),
(29, '', '-', 'Cisco 2800 Series', 'Cisco', '\r\n', 1, NULL),
(30, 'PBIINTSW02', 'switch', 'Catalyst 2950 Series', 'Cisco', '\r\n', 1, NULL),
(31, 'PBIESX02', 'server', 'ProLiant DL380p Gen8', 'HP', '\r\n', 2, NULL),
(32, '', '-', 'BIG-IP 4000 Series', 'F5', 'f5-tqqx-wurz\r\n', 1, NULL),
(33, 'PBICPGDEV02', 'server', 'SunFire v240', 'SUN', 'FN60510354\r\n', 2, NULL),
(34, 'PBIRSA01', 'server', 'System x3550', 'IBM', '99H9888\r\n', 1, NULL),
(35, '', 'switch', 'Catalyst 2960G Series', 'Cisco', '\r\n', 1, NULL),
(36, 'PBINSDMZ06', 'switch', 'Catalyst 2950 Series', 'Cisco', '\r\n', 1, NULL),
(37, 'True CCID=I02727B', 'switch', 'Quidway S2300 Series', 'HUAWEI', '\r\n', 1, NULL),
(38, 'True CCID=V07398A', 'router', 'Cisco 1800 Series', 'Cisco', '\r\n', 1, NULL),
(39, 'PBIPOCDEV01/PBIAUTHWEB01', 'server', '', 'IBM', '99C0044\r\n', 1, NULL),
(40, '', 'switch', 'Catalyst 3850 24', 'Cisco', '\r\n', 1, NULL),
(41, '', 'server', 'Cisco 1120 Secure', 'Cisco', 'FTX150450E6\r\n', 1, NULL),
(42, '', '-', 'FirePass', 'F5', 'bip09 0083 s\r\n', 1, NULL),
(43, 'True CCID=I02727', '-', '', 'Cisco', '35601106245\r\n', 1, NULL),
(44, '', 'switch', 'Catalyst 2960G Series', 'Cisco', '\r\n', 1, NULL),
(45, 'PBINSFW02', '-', 'ISG 1000', 'Juniper', '\r\n', 3, NULL),
(46, 'PBITMWAN02', '-', 'Cisco 2800 Series', 'Cisco', '\r\n', 2, NULL),
(47, 'PBICONV02', 'switch', 'Catalyst 3750G Series', 'Cisco', '\r\n', 1, NULL),
(48, 'PBINSDMZ02', 'switch', 'Catalyst 2960 Series', 'Cisco', '\r\n', 1, NULL),
(49, '', 'proxy', 'ProxySG', 'BlueCoat', '\r\n', 4, NULL),
(50, 'PBITWEB02', 'server', 'SunFire v240', 'SUN', 'FN60510356\r\n', 2, NULL),
(51, 'True CCID=V80020A', '-', 'Cisco 1900 Series', 'Cisco', '\r\n', 2, NULL),
(52, '', '-', 'Cisco 1841', 'Cisco', 'FHK144870XN\r\n', 1, NULL),
(53, '', 'server', 'SPARC Enterprise T5220', 'SUN', 'BEL0827TXA\r\n', 2, NULL),
(54, 'PBITS3100', 'server', 'System Storage', 'IBM', '78AB111\r\n', 2, NULL),
(55, 'PBITSM01', 'server', 'IBM PowerLinux 7R1', 'IBM', '060D0CA\r\n', 2, NULL),
(56, 'PBILDOM03', 'server', 'SPARC Enterprise T5440', 'SUN', '\r\n', 4, NULL),
(57, 'PBIMED01', 'server', 'SunFire v440', 'SUN', '0552BD0123\r\n', 4, NULL),
(58, '', '-', '', '', '\r\n', 1, NULL),
(59, 'PBICPTAPPSW01 (Temp)', 'switch', 'Catalyst 2960G', 'Cisco', '\r\n', 1, NULL),
(60, 'SW_01 UTIBA', 'switch', 'Catalyst 2950', 'Cisco', '\r\n', 1, NULL),
(61, '', '-', '', 'Check Point', '\r\n', 1, NULL),
(62, 'PBICPFW01', 'server', 'G4p', 'HP', '\r\n', 1, NULL),
(63, '', 'switch', '', '', '\r\n', 1, NULL),
(64, 'PBICPAPPSW03', 'switch', 'Catalyst 2960G', 'Cisco', '\r\n', 1, NULL),
(65, '', 'server', 'Power 730', 'IBM', '066E3DT\r\n', 2, NULL),
(66, '', 'server', 'System x3650 M4', 'IBM', '06XEZF6\r\n', 2, NULL),
(67, 'PBIAPPLB01', '-', '', 'F5', '\r\n', 1, NULL),
(68, 'PBICPNSSW01', 'switch', 'Catalyst 2950', 'Cisco', '\r\n', 1, NULL),
(69, 'PBICPAPPSW01', 'switch', '', '', '\r\n', 1, NULL),
(70, 'PBIDMZLB01', '-', 'BIG-IP 3900', 'F5', 'f5-jfkw-gcwy\r\n', 1, NULL),
(71, 'PBIxxx03', '-', 'SunFire V240', 'SUN', 'FN60510079\r\n', 2, NULL),
(72, '', 'server', 'Power 730', 'IBM', '066E3FT\r\n', 2, NULL),
(73, 'PBIxxx01', 'server', 'SunFire V240', 'SUN', 'FN60510327\r\n', 2, NULL),
(74, '', 'switch', '', 'Cisco', '\r\n', 1, NULL),
(75, '', 'switch', '', 'Cisco', '\r\n', 1, NULL),
(76, '', 'switch', '', 'Cisco', '\r\n', 1, NULL),
(77, '', 'switch', '', 'Cisco', '\r\n', 1, NULL),
(78, 'PBIBGWDB02', 'server', 'Power 730', 'IBM', '06F533R\r\n', 2, NULL),
(79, 'PBIBGWVIOS2', 'server', 'Power 750', 'IBM', '061A28R\r\n', 4, NULL),
(80, 'PBIESX08', 'server', 'PowerEdge R630', 'DELL', '\r\n', 1, NULL),
(81, '', 'server', 'ProLiant DL360 Gen9', 'HP', '\r\n', 1, NULL),
(82, '', 'server', 'Power 730', 'IBM', '066E3CT\r\n', 2, NULL),
(83, 'PBIESX06', 'server', 'ProLiant DL380p Gn8', 'hp', '\r\n', 2, NULL),
(84, 'PBIESX04', 'server', 'ProLiant DL380p Gn8', 'hp', '\r\n', 2, NULL),
(85, 'PBIESX01', 'server', 'ProLiant DL380p Gn8', 'hp', '\r\n', 2, NULL),
(86, '', 'switch', '', 'Cisco', '\r\n', 1, NULL),
(87, '', 'switch', '', 'Cisco', '\r\n', 1, NULL),
(88, '', 'switch', '', 'Cisco', '\r\n', 1, NULL),
(89, '', 'switch', '', 'Cisco', '\r\n', 1, NULL),
(90, 'PBIBGWDB01', 'server', 'Power 730', 'IBM', '06F533R\r\n', 2, NULL),
(91, 'PBIBGWVIOS1', 'server', 'Power 750', 'IBM', '061A28R\r\n', 4, NULL),
(92, 'PBIESX07', 'server', 'PowerEdge R630', 'DELL', '\r\n', 1, NULL),
(93, '', 'server', 'ProLiant DL360 Gen9', 'HP', '\r\n', 1, NULL),
(94, '', 'server', 'Power 730', 'IBM', '066E3CT\r\n', 2, NULL),
(95, 'PBIESX05', 'server', 'ProLiant DL380p Gn8', 'hp', '\r\n', 2, NULL),
(96, 'PBIESX03', 'server', 'ProLiant DL380p Gn8', 'hp', '\r\n', 2, NULL),
(97, 'PBIESX02', 'server', 'ProLiant DL380p Gn8', 'hp', '\r\n', 2, NULL),
(98, '', 'server', 'System x3550', 'IBM', '06-AC07B\r\n', 1, NULL),
(99, '', 'network', 'Juniper SRX240', 'Juniper', '\r\n', 1, NULL),
(100, 'PBIDEVSW01', 'switch', 'Catalyst 2960-X', 'Cisco', '\r\n', 1, NULL),
(101, 'PBIDEVSW02', 'switch', 'Catalyst 2960-X', 'Cisco', '\r\n', 1, NULL),
(102, 'PBIDEVSW05', 'switch', 'Catalyst 2960-X', 'Cisco', '\r\n', 1, NULL),
(103, 'PBIDEVSW06', 'switch', 'Catalyst 2960-X', 'Cisco', '\r\n', 1, NULL),
(104, '', 'switch', 'Catalyst 3850 48', 'Cisco', '\r\n', 1, NULL),
(105, '', 'switch', 'Catalyst 3850 48', 'Cisco', '\r\n', 1, NULL),
(106, 'PBIDEVLB01', 'network', '', 'F5', '\r\n', 1, NULL),
(107, '', 'server', 'SPARC Enterprise T5240', 'SUN', '\r\n', 2, NULL),
(108, 'PBIESXDEV03', 'server', 'ProLiant DL380p Gen8', 'hp', '\r\n', 2, NULL),
(109, 'PBIESXDEV05', 'server', 'System x3650 M4', 'IBM', '\r\n', 2, NULL),
(110, '', 'network', 'Juniper SRX240', 'Juniper', '\r\n', 1, NULL),
(111, 'PBIDEVSW03', 'switch', 'Catalyst 2960-X', 'Cisco', '\r\n', 1, NULL),
(112, 'PBIDEVSW04', 'switch', 'Catalyst 2960-X', 'Cisco', '\r\n', 1, NULL),
(113, 'PBIDNS01', 'server', 'SunFire V120', 'Sun', 'FF60350026\r\n', 1, NULL),
(114, 'PBIREWAPP01', 'server', 'SunFire V240', 'Sun', '\r\n', 2, NULL),
(115, 'PBIDEV02', 'server', 'SunFire V240', 'Sun', '\r\n', 2, NULL),
(116, 'PBIFTP01', 'server', '', 'hp', '\r\n', 1, NULL),
(117, 'PBIFTP02', 'server', '', 'hp', '\r\n', 1, NULL),
(118, 'PBIDEV01', 'server', 'SunFire V240', 'Sun', '\r\n', 2, NULL),
(119, 'PBIESXDEV04', 'server', 'ProLiant DL380p Gen8', 'hp', '\r\n', 2, NULL),
(120, 'PBIESXDEV06', 'server', 'System x3650 M4', 'IBM', '\r\n', 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `item_detail`
--

CREATE TABLE IF NOT EXISTS `item_detail` (
`item_detail_id` int(11) NOT NULL,
  `rack_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_position` int(3) NOT NULL,
  `date_in` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_out` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `item_detail`
--

INSERT INTO `item_detail` (`item_detail_id`, `rack_id`, `item_id`, `item_position`, `date_in`, `date_out`) VALUES
(1, 1, 1, 3, '2016-07-11 00:21:41', NULL),
(2, 1, 2, 5, '2016-07-11 00:21:41', NULL),
(3, 1, 3, 6, '2016-07-11 00:21:41', NULL),
(4, 1, 4, 7, '2016-07-11 00:21:41', NULL),
(5, 1, 5, 9, '2016-07-11 00:21:41', NULL),
(6, 1, 6, 10, '2016-07-11 00:21:41', NULL),
(7, 1, 7, 12, '2016-07-11 00:21:41', NULL),
(8, 1, 8, 13, '2016-07-11 00:21:41', NULL),
(9, 1, 9, 14, '2016-07-11 00:21:41', NULL),
(10, 1, 10, 15, '2016-07-11 00:21:41', NULL),
(11, 1, 11, 16, '2016-07-11 00:21:41', NULL),
(12, 1, 12, 17, '2016-07-11 00:21:41', NULL),
(13, 1, 13, 18, '2016-07-11 00:21:41', NULL),
(14, 1, 14, 19, '2016-07-11 00:21:41', NULL),
(15, 1, 15, 20, '2016-07-11 00:21:41', NULL),
(16, 1, 16, 21, '2016-07-11 00:21:41', NULL),
(17, 1, 17, 22, '2016-07-11 00:21:41', NULL),
(18, 1, 18, 23, '2016-07-11 00:21:41', NULL),
(19, 1, 19, 24, '2016-07-11 00:21:41', NULL),
(20, 1, 20, 27, '2016-07-11 00:21:41', NULL),
(21, 1, 21, 29, '2016-07-11 00:21:41', NULL),
(22, 1, 22, 30, '2016-07-11 00:21:41', NULL),
(23, 1, 23, 31, '2016-07-11 00:21:41', NULL),
(24, 1, 24, 36, '2016-07-11 00:21:41', NULL),
(25, 1, 25, 38, '2016-07-11 00:21:41', NULL),
(26, 1, 26, 40, '2016-07-11 00:21:41', NULL),
(27, 1, 27, 42, '2016-07-11 00:21:41', NULL),
(28, 2, 28, 3, '2016-07-11 00:21:41', NULL),
(29, 2, 29, 5, '2016-07-11 00:21:41', NULL),
(30, 2, 30, 6, '2016-07-11 00:21:41', NULL),
(31, 2, 31, 7, '2016-07-11 00:21:41', NULL),
(32, 2, 32, 9, '2016-07-11 00:21:41', NULL),
(33, 2, 33, 10, '2016-07-11 00:21:41', NULL),
(34, 2, 34, 12, '2016-07-11 00:21:41', NULL),
(35, 2, 35, 13, '2016-07-11 00:21:41', NULL),
(36, 2, 36, 14, '2016-07-11 00:21:41', NULL),
(37, 2, 37, 15, '2016-07-11 00:21:41', NULL),
(38, 2, 38, 16, '2016-07-11 00:21:41', NULL),
(39, 2, 39, 17, '2016-07-11 00:21:41', NULL),
(40, 2, 40, 18, '2016-07-11 00:21:41', NULL),
(41, 2, 41, 19, '2016-07-11 00:21:41', NULL),
(42, 2, 42, 20, '2016-07-11 00:21:41', NULL),
(43, 2, 43, 21, '2016-07-11 00:21:41', NULL),
(44, 2, 44, 23, '2016-07-11 00:21:41', NULL),
(45, 2, 45, 24, '2016-07-11 00:21:41', NULL),
(46, 2, 46, 27, '2016-07-11 00:21:41', NULL),
(47, 2, 47, 29, '2016-07-11 00:21:41', NULL),
(48, 2, 48, 30, '2016-07-11 00:21:41', NULL),
(49, 2, 49, 32, '2016-07-11 00:21:41', NULL),
(50, 2, 50, 36, '2016-07-11 00:21:41', NULL),
(51, 2, 51, 38, '2016-07-11 00:21:41', NULL),
(52, 2, 52, 40, '2016-07-11 00:21:41', NULL),
(53, 3, 53, 5, '2016-07-11 00:21:41', NULL),
(54, 3, 54, 7, '2016-07-11 00:21:41', NULL),
(55, 3, 55, 9, '2016-07-11 00:21:41', NULL),
(56, 3, 56, 12, '2016-07-11 00:21:41', NULL),
(57, 3, 57, 16, '2016-07-11 00:21:41', NULL),
(58, 3, 58, 21, '2016-07-11 00:21:41', NULL),
(59, 3, 59, 22, '2016-07-11 00:21:41', NULL),
(60, 3, 60, 23, '2016-07-11 00:21:41', NULL),
(61, 3, 61, 24, '2016-07-11 00:21:41', NULL),
(62, 3, 62, 25, '2016-07-11 00:21:41', NULL),
(63, 3, 63, 27, '2016-07-11 00:21:41', NULL),
(64, 3, 64, 27, '2016-07-11 00:21:41', NULL),
(65, 3, 65, 28, '2016-07-11 00:21:41', NULL),
(66, 3, 66, 30, '2016-07-11 00:21:41', NULL),
(67, 3, 67, 32, '2016-07-11 00:21:41', NULL),
(68, 3, 68, 33, '2016-07-11 00:21:41', NULL),
(69, 3, 69, 34, '2016-07-11 00:21:41', NULL),
(70, 3, 70, 35, '2016-07-11 00:21:41', NULL),
(71, 3, 71, 36, '2016-07-11 00:21:41', NULL),
(72, 3, 72, 38, '2016-07-11 00:21:41', NULL),
(73, 3, 73, 40, '2016-07-11 00:21:41', NULL),
(74, 13, 74, 39, '2016-07-11 00:21:41', NULL),
(75, 13, 75, 37, '2016-07-11 00:21:41', NULL),
(76, 13, 76, 35, '2016-07-11 00:21:41', NULL),
(77, 13, 77, 33, '2016-07-11 00:21:41', NULL),
(78, 13, 78, 31, '2016-07-11 00:21:41', NULL),
(79, 13, 79, 27, '2016-07-11 00:21:41', NULL),
(80, 13, 80, 21, '2016-07-11 00:21:41', NULL),
(81, 13, 81, 20, '2016-07-11 00:21:41', NULL),
(82, 13, 82, 17, '2016-07-11 00:21:41', NULL),
(83, 13, 83, 11, '2016-07-11 00:21:41', NULL),
(84, 13, 84, 9, '2016-07-11 00:21:41', NULL),
(85, 13, 85, 6, '2016-07-11 00:21:41', NULL),
(86, 14, 86, 39, '2016-07-11 00:21:41', NULL),
(87, 14, 87, 37, '2016-07-11 00:21:41', NULL),
(88, 14, 88, 35, '2016-07-11 00:21:41', NULL),
(89, 14, 89, 33, '2016-07-11 00:21:41', NULL),
(90, 14, 90, 31, '2016-07-11 00:21:41', NULL),
(91, 14, 91, 27, '2016-07-11 00:21:41', NULL),
(92, 14, 92, 21, '2016-07-11 00:21:41', NULL),
(93, 14, 93, 20, '2016-07-11 00:21:41', NULL),
(94, 14, 94, 17, '2016-07-11 00:21:41', NULL),
(95, 14, 95, 11, '2016-07-11 00:21:41', NULL),
(96, 14, 96, 9, '2016-07-11 00:21:41', NULL),
(97, 14, 97, 6, '2016-07-11 00:21:41', NULL),
(98, 14, 98, 24, '2016-07-11 00:21:42', NULL),
(99, 16, 99, 1, '2016-07-11 00:21:42', NULL),
(100, 16, 100, 3, '2016-07-11 00:21:42', NULL),
(101, 16, 101, 4, '2016-07-11 00:21:42', NULL),
(102, 16, 102, 5, '2016-07-11 00:21:42', NULL),
(103, 16, 103, 6, '2016-07-11 00:21:42', NULL),
(104, 16, 104, 8, '2016-07-11 00:21:42', NULL),
(105, 16, 105, 9, '2016-07-11 00:21:42', NULL),
(106, 16, 106, 18, '2016-07-11 00:21:42', NULL),
(107, 16, 107, 19, '2016-07-11 00:21:42', NULL),
(108, 16, 108, 22, '2016-07-11 00:21:42', NULL),
(109, 16, 109, 24, '2016-07-11 00:21:42', NULL),
(110, 16, 110, 1, '2016-07-11 00:21:42', NULL),
(111, 15, 111, 3, '2016-07-11 00:21:42', NULL),
(112, 15, 112, 4, '2016-07-11 00:21:42', NULL),
(113, 15, 113, 7, '2016-07-11 00:21:42', NULL),
(114, 15, 114, 8, '2016-07-11 00:21:42', NULL),
(115, 15, 115, 10, '2016-07-11 00:21:42', NULL),
(116, 15, 116, 13, '2016-07-11 00:21:42', NULL),
(117, 15, 117, 15, '2016-07-11 00:21:42', NULL),
(118, 15, 118, 16, '2016-07-11 00:21:42', NULL),
(119, 15, 119, 18, '2016-07-11 00:21:42', NULL),
(120, 15, 120, 20, '2016-07-11 00:21:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rack`
--

CREATE TABLE IF NOT EXISTS `rack` (
`rack_id` int(11) NOT NULL,
  `idc_id` int(11) NOT NULL,
  `rack_label` varchar(50) NOT NULL,
  `rack_name` varchar(100) NOT NULL,
  `rack_unit_amount` int(11) NOT NULL,
  `start_at` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rack`
--

INSERT INTO `rack` (`rack_id`, `idc_id`, `rack_label`, `rack_name`, `rack_unit_amount`, `start_at`) VALUES
(1, 1, '1', '-', 42, 'up'),
(2, 1, '2', '-', 42, 'up'),
(3, 1, '3', '-', 42, 'up'),
(4, 1, '4', '-', 42, ''),
(5, 1, '5', '-', 42, ''),
(6, 1, '6', '-', 42, ''),
(7, 1, '7', '-', 42, ''),
(8, 1, '8', '-', 42, ''),
(9, 1, '9', '-', 42, ''),
(10, 1, '10', '-', 42, ''),
(11, 1, '11', '-', 42, ''),
(12, 1, '12', '-', 42, ''),
(13, 1, '13', '-', 42, 'down'),
(14, 1, '14', '-', 42, 'down'),
(15, 1, '15', '-', 42, 'down'),
(16, 1, '16', '-', 42, 'down');

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_get_allitem`
--
CREATE TABLE IF NOT EXISTS `view_get_allitem` (
`idc_id` int(11)
,`rack_id` int(11)
,`item_id` int(11)
,`item_detail_id` int(11)
,`idc_name` varchar(100)
,`rack_label` varchar(50)
,`rack_name` varchar(100)
,`rack_unit_amount` int(11)
,`item_name` varchar(100)
,`item_type` varchar(50)
,`item_unit_size` int(3)
,`item_position` int(3)
,`start_at` varchar(10)
);
-- --------------------------------------------------------

--
-- Structure for view `view_get_allitem`
--
DROP TABLE IF EXISTS `view_get_allitem`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_get_allitem` AS select `idc`.`idc_id` AS `idc_id`,`rack`.`rack_id` AS `rack_id`,`item`.`item_id` AS `item_id`,`item_detail`.`item_detail_id` AS `item_detail_id`,`idc`.`idc_name` AS `idc_name`,`rack`.`rack_label` AS `rack_label`,`rack`.`rack_name` AS `rack_name`,`rack`.`rack_unit_amount` AS `rack_unit_amount`,`item`.`item_name` AS `item_name`,`item`.`item_type` AS `item_type`,`item`.`item_unit_size` AS `item_unit_size`,`item_detail`.`item_position` AS `item_position`,`rack`.`start_at` AS `start_at` from (((`item_detail` join `rack` on((`item_detail`.`rack_id` = `rack`.`rack_id`))) join `item` on((`item`.`item_id` = `item_detail`.`item_id`))) join `idc` on((`idc`.`idc_id` = `rack`.`idc_id`)));

--
-- Indexes for dumped tables
--

--
-- Indexes for table `idc`
--
ALTER TABLE `idc`
 ADD KEY `idc_id` (`idc_id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
 ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `item_detail`
--
ALTER TABLE `item_detail`
 ADD PRIMARY KEY (`item_detail_id`);

--
-- Indexes for table `rack`
--
ALTER TABLE `rack`
 ADD PRIMARY KEY (`rack_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `idc`
--
ALTER TABLE `idc`
MODIFY `idc_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=121;
--
-- AUTO_INCREMENT for table `item_detail`
--
ALTER TABLE `item_detail`
MODIFY `item_detail_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=121;
--
-- AUTO_INCREMENT for table `rack`
--
ALTER TABLE `rack`
MODIFY `rack_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
