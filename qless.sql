-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 21, 2023 at 06:07 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `qless`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_tbl`
--

CREATE TABLE IF NOT EXISTS `account_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(100) NOT NULL,
  `accname` varchar(100) NOT NULL,
  `accountno` varchar(100) NOT NULL,
  `bank` varchar(100) NOT NULL,
  `pin` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `account_tbl`
--

INSERT INTO `account_tbl` (`id`, `uid`, `accname`, `accountno`, `bank`, `pin`, `amount`) VALUES
(1, '1', 'anandu', '12345', 'State Bank Of India', '1234', '42957'),
(2, '1', 'Anandu Ajith', '1234567890', 'Federal Bank', '3456', '49600');

-- --------------------------------------------------------

--
-- Table structure for table `bill_tbl`
--

CREATE TABLE IF NOT EXISTS `bill_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(50) NOT NULL,
  `date` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `bill_tbl`
--

INSERT INTO `bill_tbl` (`id`, `uid`, `date`) VALUES
(1, '1', '2023-06-08'),
(2, '1', '2023-06-08'),
(3, '1', '2023-06-08'),
(4, '1', '2023-06-08'),
(5, '1', '2023-06-08'),
(6, '1', '2023-06-08'),
(7, '1', '2023-06-27'),
(8, '1', '2023-06-27'),
(9, '3', '2023-06-27'),
(10, '2', '2023-06-27'),
(11, '3', '2023-06-27'),
(12, '1', '2023-08-07'),
(13, '1', '2023-08-07'),
(14, '1', '2023-08-07'),
(15, '1', '2023-08-07'),
(16, '1', '2023-08-07'),
(17, '1', '2023-08-07'),
(18, '1', '2023-08-07'),
(19, '1', '2023-08-07'),
(20, '1', '2023-08-08'),
(21, '1', '2023-08-08'),
(22, '1', '2023-08-08'),
(23, '1', '2023-08-21');

-- --------------------------------------------------------

--
-- Table structure for table `cart_tbl`
--

CREATE TABLE IF NOT EXISTS `cart_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(50) NOT NULL,
  `pid` varchar(50) NOT NULL,
  `pname` varchar(50) NOT NULL,
  `quantity` varchar(10) NOT NULL,
  `price` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `history_tbl`
--

CREATE TABLE IF NOT EXISTS `history_tbl` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `uid` int(50) NOT NULL,
  `pname` varchar(100) NOT NULL,
  `quantity` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `bill_id` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `history_tbl`
--

INSERT INTO `history_tbl` (`id`, `uid`, `pname`, `quantity`, `price`, `date`, `bill_id`) VALUES
(1, 1, 'Book', '5', '250', '2023-08-07', '122500'),
(2, 1, 'Apple', '1', '85', '2023-08-07', '810749'),
(3, 1, 'Orange', '1', '65', '2023-08-07', '368625'),
(4, 1, 'Book', '10', '500', '2023-08-07', '412776'),
(5, 1, 'Apple', '1', '85', '2023-08-07', '412776'),
(6, 1, 'Orange', '1', '65', '2023-08-07', '412776'),
(7, 1, 'Grapes', '1', '95', '2023-08-07', '737184'),
(8, 1, 'Water Melon', '1', '150', '2023-08-07', '578203'),
(9, 1, 'Orange', '1', '65', '2023-08-07', '982249'),
(10, 1, 'Apple', '1', '85', '2023-08-08', '392715'),
(11, 1, 'Water Melon', '1', '150', '2023-08-08', '200740'),
(12, 1, 'Orange', '1', '65', '2023-08-08', '466912'),
(13, 1, 'Orange', '1', '65', '2023-08-08', '466912'),
(14, 1, 'Water Melon', '1', '150', '2023-08-08', '466912'),
(15, 1, 'Grapes', '1', '95', '2023-08-08', '466912'),
(16, 1, 'Book', '5', '250', '2023-08-21', '140426');

-- --------------------------------------------------------

--
-- Table structure for table `offer_tbl`
--

CREATE TABLE IF NOT EXISTS `offer_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` varchar(50) NOT NULL,
  `price` varchar(100) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `offer_tbl`
--

INSERT INTO `offer_tbl` (`id`, `pid`, `price`, `date`) VALUES
(1, '1', '85', '2023-02-06'),
(2, '2', '65', '2023-02-06'),
(3, '3', '150', '2023-02-24'),
(4, '4', '95', '2023-05-31'),
(5, '9', '7', '2023-08-09');

-- --------------------------------------------------------

--
-- Table structure for table `payment_tbl`
--

CREATE TABLE IF NOT EXISTS `payment_tbl` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `bill_id` varchar(50) NOT NULL,
  `accname` varchar(50) NOT NULL,
  `amount` varchar(50) NOT NULL,
  `date` varchar(200) NOT NULL,
  `status` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `payment_tbl`
--

INSERT INTO `payment_tbl` (`id`, `bill_id`, `accname`, `amount`, `date`, `status`) VALUES
(1, '1', 'anandu', '395', '2009', 'paid'),
(2, '1', 'anandu', '150', '2009', 'paid'),
(3, '1', 'anandu', '520', '2009', 'paid'),
(4, '1', 'anandu', '25', '2023-06-08', 'paid'),
(5, '1', 'anandu', '150', '2023-06-08', 'paid'),
(6, '1', 'anandu', '95', '2023-06-08', 'paid'),
(8, '239046', 'anandu', '65', '2023-06-27', 'paid'),
(9, '922104', 'anandu', '85', '2023-06-27', 'paid'),
(10, '223633', 'anandu', '36', '2023-06-27', 'paid'),
(11, '408523', 'anandu', '395', '2023-06-27', 'paid'),
(12, '577625', 'anandu', '92', '2023-08-07', 'paid'),
(13, '122500', 'anandu', '250', '2023-08-07', 'paid'),
(14, '810749', 'anandu', '85', '2023-08-07', 'paid'),
(15, '368625', 'anandu', '65', '2023-08-07', 'paid'),
(16, '412776', 'anandu', '650', '2023-08-07', 'paid'),
(17, '737184', 'anandu', '95', '2023-08-07', 'paid'),
(18, '578203', 'anandu', '150', '2023-08-07', 'paid'),
(19, '982249', 'anandu', '65', '2023-08-07', 'paid'),
(20, '392715', 'anandu', '85', '2023-08-08', 'paid'),
(21, '200740', 'Anandu Ajith', '150', '2023-08-08', 'paid'),
(22, '466912', 'Anandu', '375', '2023-08-08', 'paid'),
(23, '140426', 'Anandu Ajith', '250', '2023-08-21', 'paid');

-- --------------------------------------------------------

--
-- Table structure for table `points_tbl`
--

CREATE TABLE IF NOT EXISTS `points_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(100) NOT NULL,
  `points` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `points_tbl`
--

INSERT INTO `points_tbl` (`id`, `uid`, `points`) VALUES
(1, '1', '200'),
(2, '1', '18'),
(3, '1', '10'),
(4, '1', '13'),
(5, '1', '23'),
(6, '1', '56'),
(7, '1', '38');

-- --------------------------------------------------------

--
-- Table structure for table `products_tbl`
--

CREATE TABLE IF NOT EXISTS `products_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pname` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `product_code` varchar(200) NOT NULL,
  `quantity` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `products_tbl`
--

INSERT INTO `products_tbl` (`id`, `pname`, `price`, `product_code`, `quantity`) VALUES
(1, 'Apple', '140', '8904075212554', '100'),
(2, 'Orange', '80', '852147963587', '50'),
(3, 'Water Melon', '250', '123456789012', '70'),
(4, 'Grapes', '100', '234567891023', '13'),
(5, 'Book', '50', '8902519009852', '0'),
(6, 'Coconut', '25', '852036985612', '50'),
(7, 'Potato Chips - Lays', '50', '789456123052', '50'),
(8, 'Coca Cola 750ml', '40', '8901764012273', '15'),
(9, 'Kangaroo Staples', '12', '8901057510028', '50');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE IF NOT EXISTS `register` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `email` varchar(70) NOT NULL,
  `username` varchar(60) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL,
  `accno` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `name`, `email`, `username`, `phone`, `address`, `accno`, `password`) VALUES
(1, 'Anandu', 'anandu@gmail.com', 'anandu', '8943409211', 'alappuzha', '12345', '555'),
(2, 'Dane', 'danejoseph4321@gmail.com', 'danejose', '9562611195', 'Edanat House', '2580', '12345'),
(3, 'Haripriya', 'hp@gmail.com', 'HP', '9400050428', 'Edappally', '01010', 'password');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
