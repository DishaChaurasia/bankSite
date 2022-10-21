-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 21, 2022 at 04:42 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `banking`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` text NOT NULL,
  `password` varchar(255) NOT NULL,
  `accountNumber` bigint(255) NOT NULL,
  `balance` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `email`, `name`, `password`, `accountNumber`, `balance`) VALUES
(1, 'disha00@gmail.com', 'Disha Chaurasia', 'Disha@1234', 8192981242, 72231.4045),
(2, 'manjari00@gmail.com', 'Manjari Gupta', 'Manjari@1234', 8934954650, 18055.603),
(3, 'sindhu00@gmail.com', 'Sindhu', 'Sindhu@1234', 6396960682, 1010.6034),
(4, 'pooja00@gmail.com', 'Pooja Yadav', 'Pooja@1234', 919451880, 11752.6236),
(5, 'ankita00@gmail.com', 'Ankita Siddhu', 'Ankita@1234', 8931234650, 11100.9),
(6, 'ramya00@gmail.com', 'Ramya Siddhu', 'Ramya@1234', 9870454650, 449.7655),
(7, 'akansha00@gmail.com', 'Akansha Chaurasia', 'Akansha@1234', 8195670150, 200),
(8, 'ishika00@gmail.com', 'Ishika Sharma', 'ishika@1234', 9720154650, 250),
(9, 'simran00@gmail.com', 'Simran Singh', 'Simran@1234', 6307780082, 150.5),
(10, 'kanishka00@gmail.com', 'Kanishka Deol', 'Kanishka@1234', 9720890682, 700);

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(255) NOT NULL,
  `payerName` varchar(255) NOT NULL,
  `payer` bigint(255) NOT NULL,
  `payeeName` varchar(255) NOT NULL,
  `payee` bigint(255) NOT NULL,
  `amount` double NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `payerName`, `payer`, `payeeName`, `payee`, `amount`, `time`) VALUES
(42, 'Disha Chaurasia', 8192981242, 'Manjari Gupta', 8934954650, 100.505, '2022-10-21 14:25:40'),
(43, 'Pooja Yadav', 919451880, 'Sindhu', 6396960682, 100.1034, '2022-10-21 14:40:01'),
(44, 'Ramya Siddhu', 9870454650, 'Disha Chaurasia', 8192981242, 50.2345, '2022-10-21 14:41:05'),
(45, 'Disha Chaurasia', 8192981242, 'Ankita Siddhu', 8931234650, 10000, '2022-10-21 14:41:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
