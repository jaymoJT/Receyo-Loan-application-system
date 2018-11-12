-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 21, 2018 at 08:18 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `receyo`
--

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `app_no` int(8) NOT NULL,
  `id` int(10) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` int(15) NOT NULL,
  `estate` varchar(20) NOT NULL,
  `app_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `mode` text NOT NULL,
  `amount` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `applications`
--

INSERT INTO `applications` (`app_no`, `id`, `name`, `email`, `phone`, `estate`, `app_date`, `mode`, `amount`) VALUES
(1, 4321, 'Trizah okinyi', 'triza45@gmail.com', 789213432, 'Ngong', '2018-09-25 21:00:00', 'Weekly', 20000),
(2, 1234, 'Clinton ouma', 'clinouma@ymail.com', 897867, 'Kombedu', '2018-09-25 21:00:00', 'Monthly', 20000),
(3, 34179995, 'James Ariembi', 'ariembijames@gmail.com', 799615530, 'Bandani', '2018-09-26 21:00:00', 'Monthly', 50000),
(4, 45676, 'Saviour scot', 'scot@receyo.org', 789213432, 'Ngong', '2018-09-26 21:00:00', 'Weekly', 50000),
(5, 6789, 'Linda echoes', 'lin@echoes.com', 789345445, 'Ngong', '2018-09-26 21:00:00', 'Monthly', 10000),
(6, 56785, 'Reuben monari', 'reubenmonari@yahoo.com', 897867, 'Ngong', '2018-09-27 21:00:00', 'Monthly', 50000),
(7, 25964593, 'collins   Nabali', 'collinsnabali6@gmail.com', 725620969, 'Canopy', '2018-09-27 21:00:00', 'Monthly', 35000),
(8, 890987, 'tonie clinsy', 'clinsy45@gmail.com', 789098923, 'Bandani', '2018-09-27 21:00:00', 'Weekly', 50000),
(9, 33963151, 'DENNIS GICHANA', 'dennisdennoh11@gmail.com', 711927398, 'kenya', '2018-09-27 21:00:00', 'Monthly', 50000),
(10, 36017372, 'juma barasa paul', 'bpjuma@gmail.com', 798449257, 'bungoma', '2018-09-28 21:00:00', 'Weekly', 50000),
(11, 0, '', '', 0, '', '0000-00-00 00:00:00', '', 0),
(12, 6543212, 'Millicent awuor', 'awuormilie@dom.co.', 743212343, 'bungoma', '2018-09-29 21:00:00', 'Monthly', 30000),
(13, 0, 'Cornel omondi', 'omondi@ymail.com', 743211234, 'Roysambu', '2018-10-11 21:00:00', 'Monthly', 15000),
(14, 34229133, 'John Njoroge', 'njoroge@gmail.com', 789876567, 'Roysambu', '2018-10-11 21:00:00', 'Weekly', 50000);

-- --------------------------------------------------------

--
-- Table structure for table `awarded`
--

CREATE TABLE `awarded` (
  `id` int(10) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` int(15) NOT NULL,
  `estate` varchar(20) NOT NULL,
  `app_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `mode` text NOT NULL,
  `amount` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `awarded`
--

INSERT INTO `awarded` (`id`, `name`, `email`, `phone`, `estate`, `app_date`, `mode`, `amount`) VALUES
(1234, 'Clinton ouma', 'clinouma@ymail.com', 897867, 'Kombedu', '2018-09-25 21:00:00', 'Monthly', 20000);

-- --------------------------------------------------------

--
-- Table structure for table `disbursed`
--

CREATE TABLE `disbursed` (
  `dis_no` int(10) NOT NULL,
  `id` int(10) NOT NULL,
  `amount` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `disbursed`
--

INSERT INTO `disbursed` (`dis_no`, `id`, `amount`) VALUES
(1, 1234, 20000),
(2, 4321, 20000),
(3, 45676, 50000),
(4, 56785, 50000),
(5, 34179995, 20000),
(6, 25964593, 25000),
(7, 33963151, 50000),
(8, 36017372, 50000),
(9, 6543212, 30000),
(10, 890987, 15000);

-- --------------------------------------------------------

--
-- Table structure for table `loan_payments`
--

CREATE TABLE `loan_payments` (
  `pay_id` int(50) NOT NULL,
  `id` int(15) NOT NULL,
  `amount` int(15) NOT NULL,
  `pay_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loan_payments`
--

INSERT INTO `loan_payments` (`pay_id`, `id`, `amount`, `pay_date`) VALUES
(1, 34179995, 35000, '2018-09-29'),
(2, 0, 0, '0000-00-00'),
(4, 1234, 300, '2018-09-29'),
(6, 34179996, 10000, '2018-10-17');

-- --------------------------------------------------------

--
-- Table structure for table `tellers`
--

CREATE TABLE `tellers` (
  `teller_id` int(10) NOT NULL,
  `name` text NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tellers`
--

INSERT INTO `tellers` (`teller_id`, `name`, `password`) VALUES
(1, '0', 'jamesjames'),
(2, '0', 'tonytony'),
(3, 'Brian otieno', 'brianbrian'),
(4, 'lilian ochiel', 'ochielochiel'),
(5, 'jim', 'jimjim'),
(6, 'ibrah', 'ibrahim');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`app_no`),
  ADD UNIQUE KEY `id` (`id`,`email`,`phone`);

--
-- Indexes for table `disbursed`
--
ALTER TABLE `disbursed`
  ADD PRIMARY KEY (`dis_no`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `loan_payments`
--
ALTER TABLE `loan_payments`
  ADD PRIMARY KEY (`pay_id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `id_2` (`id`);

--
-- Indexes for table `tellers`
--
ALTER TABLE `tellers`
  ADD PRIMARY KEY (`teller_id`),
  ADD UNIQUE KEY `password` (`password`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
  MODIFY `app_no` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `disbursed`
--
ALTER TABLE `disbursed`
  MODIFY `dis_no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `loan_payments`
--
ALTER TABLE `loan_payments`
  MODIFY `pay_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tellers`
--
ALTER TABLE `tellers`
  MODIFY `teller_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
