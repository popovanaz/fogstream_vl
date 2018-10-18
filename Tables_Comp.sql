-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.6.38-log - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

-- Dumping database structure for Computers
DROP DATABASE IF EXISTS `Computers`;
CREATE DATABASE IF NOT EXISTS `Computers` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `Computers`;

-- Dumping structure for table Computers.Laptop
DROP TABLE IF EXISTS `Laptop`;
CREATE TABLE IF NOT EXISTS `Laptop` (
  `model` text NOT NULL,
  `speed` int(11) NOT NULL,
  `code` int(11) NOT NULL,
  `ram` int(11) NOT NULL,
  `hd` int(11) NOT NULL,
  `price` varchar(10) NOT NULL,
  `screen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `Laptop` (`model`, `speed`, `code`, `ram`, `hd`, `price`, `screen`) VALUES
	('jhg', 45689256, 136, 765, 7365, '75687$', 136),
	('sdljb', 98246836, 4765, 9836, 258, '25235$', 4765),
	('s_kvns', 450814625, 896485, 38473165, 7856, '23535$', 896485),
	('lwfje', 138974, 8578916, 120847, 9283, '2222223$', 8578916),
	('KLHLIWGH', 3986, 42756, 8193675, 934, '254535$', 42756);

-- Dumping structure for table Computers.PC
DROP TABLE IF EXISTS `PC`;
CREATE TABLE IF NOT EXISTS `PC` (
  `code` int(10) NOT NULL,
  `model` text NOT NULL,
  `speed` int(10) NOT NULL,
  `ram` text NOT NULL,
  `hd` int(11) NOT NULL,
  `cd` int(11) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `PC` (`code`, `model`, `speed`, `ram`, `hd`, `cd`, `price`) VALUES
	(123, 'Samsa', 111, '1c', 23, 6, 450),
	(345, 'Cheburek', 222, '2c', 34, 12, 49386),
	(456, 'Shavuha', 333, '3c', 25, 24, 123685),
	(678, 'Hudi', 456, '2m', 31, 6, 8645),
	(8890, 'Logi', 24, '4c', 30765, 12, 4824);

-- Dumping structure for table Computers.Printer
DROP TABLE IF EXISTS `Printer`;
CREATE TABLE IF NOT EXISTS `Printer` (
  `code` int(11) NOT NULL,
  `model` text NOT NULL,
  `color` enum('Y','N') NOT NULL,
  `type` set('Lazer','Jet','Matrix') NOT NULL,
  `price` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table Computers.Printer: ~5 rows (approximately)
INSERT INTO `Printer` (`code`, `model`, `color`, `type`, `price`) VALUES
	(956, 'hvertu', 'Y', '', '27635$'),
	(9764, 'iuthg', '', 'Lazer', '8565$'),
	(4937, 'rvg', '', 'Jet', '87235$'),
	(89365, 'iuhgiu', 'Y', 'Matrix', '7653$'),
	(3805762, '89ytv4chg', '', 'Lazer', '32795$');

-- Dumping structure for table Computers.Product
DROP TABLE IF EXISTS `Product`;
CREATE TABLE IF NOT EXISTS `Product` (
  `maker` text,
  `model` text,
  `type` enum('PC','Laptop','Printer') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table Computers.Product: ~5 rows (approximately)
INSERT INTO `Product` (`maker`, `model`, `type`) VALUES
	('Samsung', '1s', 'Laptop'),
	('Philips', '2d', 'PC'),
	('Mac', '3f', 'Laptop'),
	('HD', '4g', 'Printer'),
	('LG', '5m', 'PC');
