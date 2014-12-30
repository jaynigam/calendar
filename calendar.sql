-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 30, 2014 at 12:00 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `calendar`
--
CREATE DATABASE IF NOT EXISTS `calendar` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `calendar`;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE IF NOT EXISTS `events` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `creation_time` varchar(255) NOT NULL,
  `event_end_time` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `date` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `email`, `title`, `creation_time`, `event_end_time`, `description`, `date`) VALUES
(1, 'jayrocker005@gmail.com', 'cris', '2014-12-16T11:32:03.000Z', '2014-12-19T14:30:00+05:30', NULL, '2014-12-19T13:30:00+05:30'),
(2, 'jayrocker005@gmail.com', 'holi', '2014-12-16T11:32:08.000Z', '2014-12-20T12:00:00+05:30', NULL, '2014-12-20T11:00:00+05:30'),
(3, 'jayrocker005@gmail.com', 'diwali', '2014-12-16T11:32:15.000Z', '2014-12-18T13:30:00+05:30', NULL, '2014-12-18T12:30:00+05:30'),
(4, 'jayrocker005@gmail.com', 'Shreshthi Birthday', '2014-12-16T11:36:28.000Z', '2014-12-20T01:00:00+05:30', NULL, '2014-12-20T00:00:00+05:30'),
(5, 'jayrocker005@gmail.com', 'cris', '2014-12-16T11:32:03.000Z', '2014-12-19T14:30:00+05:30', NULL, '2014-12-19T13:30:00+05:30'),
(6, 'jayrocker005@gmail.com', 'holi', '2014-12-16T11:32:08.000Z', '2014-12-20T12:00:00+05:30', NULL, '2014-12-20T11:00:00+05:30'),
(7, 'jayrocker005@gmail.com', 'diwali', '2014-12-16T11:32:15.000Z', '2014-12-18T13:30:00+05:30', NULL, '2014-12-18T12:30:00+05:30'),
(8, 'jayrocker005@gmail.com', 'Shreshthi Birthday', '2014-12-16T11:36:28.000Z', '2014-12-20T01:00:00+05:30', NULL, '2014-12-20T00:00:00+05:30');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `is_calendar` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
