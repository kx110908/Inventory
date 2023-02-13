-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 13, 2023 at 07:32 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `supply`
--

CREATE TABLE `supply` (
  `Item_id` int(50) NOT NULL,
  `Item_Name` varchar(100) NOT NULL,
  `Brand_Name` varchar(100) NOT NULL,
  `Item_Price` int(11) NOT NULL,
  `Item_Quantity` int(50) NOT NULL,
  `Item_Unit` varchar(100) NOT NULL,
  `Item_QuantityUsed` int(50) NOT NULL,
  `RemainingItem` int(10) NOT NULL,
  `DeliveryDate` date NOT NULL,
  `SupplierName` varchar(100) NOT NULL,
  `SupplyCat` varchar(100) NOT NULL,
  `SupplyType` varchar(100) NOT NULL,
  `Item_Serial` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supply`
--

INSERT INTO `supply` (`Item_id`, `Item_Name`, `Brand_Name`, `Item_Price`, `Item_Quantity`, `Item_Unit`, `Item_QuantityUsed`, `RemainingItem`, `DeliveryDate`, `SupplierName`, `SupplyCat`, `SupplyType`, `Item_Serial`) VALUES
(1, 'Aircon', '', 0, 12, 'pcs', 5, 7, '2023-02-01', 'Hhaod', '', '', ''),
(2, 'laptop', '', 20000, 5, 'pcs', 0, 0, '2023-02-01', 'basta', 'ICT Equipment', 'Semi Expendable', 'xxxxxx'),
(3, 'laptop', '', 20000, 5, 'pcs', 0, 0, '2023-02-01', 'basta', 'ICT Equipment', 'Semi Expendable', 'xxxxxx'),
(4, 'tv', '', 4000, 5, 'pcs', 0, 0, '2023-02-02', 'basta', 'ICT Equipment', 'Semi Expendable', 'xxxxxx'),
(5, 'printer', '', 3000, 4, 'pcs', 0, 0, '2023-02-03', 'basta', 'ICT Office Supply', 'Semi Expendable', 'xxxxxx'),
(6, 'printer', '', 3000, 4, 'pcs', 0, 0, '2023-02-03', 'basta', 'ICT Office Supply', 'Semi Expendable', 'xxxxxx');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `supply`
--
ALTER TABLE `supply`
  ADD PRIMARY KEY (`Item_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `supply`
--
ALTER TABLE `supply`
  MODIFY `Item_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
