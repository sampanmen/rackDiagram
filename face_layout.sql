-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2016 at 03:21 AM
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
  `item_name` varchar(100) NOT NULL,
  `item_type` varchar(50) NOT NULL,
  `item_model` varchar(50) NOT NULL,
  `item_brand` varchar(50) NOT NULL,
  `item_serial` varchar(50) NOT NULL,
  `item_unit_size` int(3) NOT NULL,
  `item_port_amount` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `item_detail`
--

CREATE TABLE IF NOT EXISTS `item_detail` (
`item_detail_id` int(11) NOT NULL,
  `rack_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_position` int(3) NOT NULL,
  `date_in` datetime NOT NULL,
  `date_out` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rack`
--

CREATE TABLE IF NOT EXISTS `rack` (
`rack_id` int(11) NOT NULL,
  `idc_id` int(11) NOT NULL,
  `rack_label` varchar(50) NOT NULL,
  `rack_name` varchar(100) NOT NULL,
  `rack_unit_amount` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rack`
--

INSERT INTO `rack` (`rack_id`, `idc_id`, `rack_label`, `rack_name`, `rack_unit_amount`) VALUES
(1, 1, '1', '-', 42),
(2, 1, '2', '-', 42),
(3, 1, '3', '-', 42),
(4, 1, '4', '-', 42),
(5, 1, '5', '-', 42),
(6, 1, '6', '-', 42),
(7, 1, '7', '-', 42),
(8, 1, '8', '-', 42),
(9, 1, '9', '-', 42),
(10, 1, '10', '-', 42),
(11, 1, '11', '-', 42),
(12, 1, '12', '-', 42),
(13, 1, '13', '-', 42),
(14, 1, '14', '-', 42),
(15, 1, '15', '-', 42),
(16, 1, '16', '-', 42);

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
MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `item_detail`
--
ALTER TABLE `item_detail`
MODIFY `item_detail_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rack`
--
ALTER TABLE `rack`
MODIFY `rack_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
