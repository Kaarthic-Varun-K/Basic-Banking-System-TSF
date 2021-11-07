-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `customer detail`
--

-- --------------------------------------------------------

--
-- Table structure for table `cust_det`
--

CREATE TABLE `cust_det` (
  `sno` int(10) NOT NULL COMMENT 'Serial Number',
  `name` varchar(50) NOT NULL COMMENT 'Name of the Customer',
  `Email` varchar(50) NOT NULL COMMENT 'Customer email',
  `Phone No` varchar(12) NOT NULL COMMENT 'Phone Number',
  `Balance` int(20) NOT NULL COMMENT 'Balance in the account'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cust_det`
--

INSERT INTO `cust_det` (`sno`, `name`, `Email`, `Phone No`, `Balance`) VALUES
(1, 'Kaarthic', 'kaarthic75@gmail.com', '7898700112', 61300 ),
(2, 'Ben', 'benstrokes@gmail.com', '9087612341', 22000),
(3, 'john', 'johnlike@yahoo.com', '6390901190', 99200),
(4, 'dhanush S', 'dhanushfan@hotmail.com', '7359735910', 777277),
(5, 'virat', 'virat18no@gmail.com', '7659076590', 44444),
(6, 'kavinder roghit', 'kavinder5432@gmail.com', '9092608912', 30000),
(7, 'joshie', 'rjoshiekk@gmail.com', '7449911234', 913888),
(8, 'Ravibompara', 'ravibompara@gmail.com', '8989123567', 555),
(9, 'kavitha', 'kavitha@yahoo.com', '9012390123', 62500),
(10, 'priya', 'priya15@gmail.com', '6866868666', 801231);

-- --------------------------------------------------------

--
-- Table structure for table `trans_his`
--

CREATE TABLE `trans_his` (
  `sender` varchar(30) NOT NULL,
  `receiver` varchar(30) NOT NULL,
  `amount` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trans_his`
--

INSERT INTO `trans_his` (`sender`, `receiver`, `amount`, `date`) VALUES
('Kaarthic', 'dhanush S', 2500, '2021-11-02 14:25:56'),
('Kaarthic', 'john', 1200, '2021-11-03 14:29:25'),
('Ravibompara', 'joshie', 5000, '2021-11-03 14:56:37'),
('Ravibompara', 'priya', 100, '2021-11-03 16:35:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cust_det`
--
ALTER TABLE `cust_det`
  ADD PRIMARY KEY (`sno`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
