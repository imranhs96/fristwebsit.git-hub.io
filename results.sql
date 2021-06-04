-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2021 at 09:34 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `texttable`
--

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `name` text NOT NULL,
  `phone` varchar(10) NOT NULL,
  `dob` date NOT NULL,
  `email` text NOT NULL,
  `sex` text NOT NULL,
  `password` text NOT NULL,
  `repassword` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`name`, `phone`, `dob`, `email`, `sex`, `password`, `repassword`) VALUES
('', '', '0000-00-00', '', 'Male', '', ''),
('Imran Shariff H S', '7892922345', '1996-07-08', 'imranshariffhs@gmail.com', 'Male', '123', '123'),
('Irfan Shariff H S', '8890765909', '2000-08-10', 'irfanshariffhs@gmail.com', 'Male', 'qwer', 'qwer'),
('razik', '7766543210', '1990-03-03', 'razik1234@gmail.com', 'Male', 'ra123', 'ra123'),
('Ravi H S', '9009988753', '1990-02-03', 'Ravikju123@gmail.com', 'Male', 'ravi123', 'ravi123'),
('soniya', '8876543219', '1990-12-06', 'soniya234@gmail.com', 'Female', 'soni123', 'soni123'),
('qwe', '1234567890', '1998-08-07', 'qwe@gmail.com', 'Male', '123', '123');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
