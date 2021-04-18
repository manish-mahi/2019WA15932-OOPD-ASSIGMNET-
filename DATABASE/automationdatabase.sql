-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2021 at 02:45 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `automationdatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `orderid` varchar(20) NOT NULL,
  `product` varchar(20) NOT NULL,
  `price` varchar(20) NOT NULL,
  `quantity` varchar(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `sno` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`orderid`, `product`, `price`, `quantity`, `name`, `mobile`, `address`, `sno`) VALUES
('1081', 'Mobile', '30000', '2', 'Kajal Kumari', '8969724558', 'House No. 123, Chennai', 18),
('1081', 'Printer', '7000', '2', 'Kajal Kumari', '8969724558', 'House No. 123, Chennai', 19),
('378', 'SSD', '17998', '2', 'Kajal Kumari', '8969724558', 'House No. 123, Chennai', 20),
('378', 'Printer', '7000', '2', 'Kajal Kumari', '8969724558', 'House No. 123, Chennai', 21);

-- --------------------------------------------------------

--
-- Table structure for table `product_order`
--

CREATE TABLE `product_order` (
  `product` varchar(50) NOT NULL,
  `price` int(50) NOT NULL,
  `quantity` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_order`
--

INSERT INTO `product_order` (`product`, `price`, `quantity`) VALUES
('CPU Cabinet', 450, 10),
('Graphic Card', 6500, 12),
('HDD', 3500, 20),
('Keyboard', 150, 10),
('Laptop', 5000, 10),
('Mobile', 15000, 15),
('Monitor', 7500, 10),
('Mouse', 300, 0),
('Optical Disk', 40, 100),
('Pendrive', 850, 12),
('Printer', 3500, 12),
('RAM', 2500, 20),
('Speaker', 3700, 11),
('SSD', 8999, 10),
('UPS', 4700, 20);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `orderid` int(100) NOT NULL,
  `total` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`orderid`, `total`) VALUES
(378, 24998),
(1081, 37000);

-- --------------------------------------------------------

--
-- Table structure for table `userdetails`
--

CREATE TABLE `userdetails` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(20) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userdetails`
--

INSERT INTO `userdetails` (`username`, `password`, `name`, `mobile`, `address`) VALUES
('Abhina101', '123456', 'RAM ', '7894561230', 'House No. 123, Delhi'),
('Abhinav710', '1234567', 'Abhinav Kumar', '8969276227', 'House No. 111 patna '),
('Kajal123', '1234567', 'Kajal Kumari', '8969724558', 'House No. 123, Chennai');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `product_order`
--
ALTER TABLE `product_order`
  ADD UNIQUE KEY `product` (`product`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`orderid`);

--
-- Indexes for table `userdetails`
--
ALTER TABLE `userdetails`
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `sno` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
