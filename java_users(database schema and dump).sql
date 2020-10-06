-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 29, 2020 at 03:55 PM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `java_users`
--

-- --------------------------------------------------------

--
-- Table structure for table `active_user`
--

DROP TABLE IF EXISTS `active_user`;
CREATE TABLE IF NOT EXISTS `active_user` (
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(40) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `fullname`, `username`, `password`) VALUES
(1, 'sankar', 'sanku', 'helloworld'),
(4, 'sankar', 'sankar123', 'sankar123');

-- --------------------------------------------------------

--
-- Table structure for table `bus_time`
--

DROP TABLE IF EXISTS `bus_time`;
CREATE TABLE IF NOT EXISTS `bus_time` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location` varchar(35) NOT NULL,
  `time` time NOT NULL,
  PRIMARY KEY (`id`),
  KEY `location` (`location`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bus_time`
--

INSERT INTO `bus_time` (`id`, `location`, `time`) VALUES
(1, 'Ernakulam', '09:00:00'),
(2, 'Thiruvanthapuram', '09:00:00'),
(3, 'Thiruvanthapuram', '12:00:00'),
(4, 'Thiruvanthapuram', '18:00:00'),
(5, 'Kollam', '09:00:00'),
(6, 'Kollam', '12:00:00'),
(7, 'Kollam', '18:00:00'),
(8, 'Ernakulam', '12:00:00'),
(9, 'Ernakulam', '18:00:00'),
(10, 'Alappuzha', '09:00:00'),
(11, 'Alappuzha', '12:00:00'),
(12, 'Alappuzha', '18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `loc_info`
--

DROP TABLE IF EXISTS `loc_info`;
CREATE TABLE IF NOT EXISTS `loc_info` (
  `location` varchar(35) NOT NULL,
  `time` time NOT NULL,
  PRIMARY KEY (`location`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loc_info`
--

INSERT INTO `loc_info` (`location`, `time`) VALUES
('Thiruvanthapuram', '09:00:00'),
('Kollam', '12:00:00'),
('Alappuzha', '18:00:00'),
('Ernakulam', '22:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
CREATE TABLE IF NOT EXISTS `ticket` (
  `id` int(35) NOT NULL AUTO_INCREMENT,
  `username` varchar(40) NOT NULL,
  `source` varchar(35) NOT NULL,
  `destination` varchar(35) NOT NULL,
  `time` time NOT NULL,
  `price` int(11) NOT NULL DEFAULT '100',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`id`, `username`, `source`, `destination`, `time`, `price`) VALUES
(19, 'sankar', 'Thiruvanthapuram', 'Alappuzha', '18:00:00', 100);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `username`, `password`) VALUES
(5, 'Sankar Ramaswamy', 'sankar', 'sankar');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
