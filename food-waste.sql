-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 04, 2021 at 08:36 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food-waste`
--
CREATE DATABASE IF NOT EXISTS `food-waste` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `food-waste`;

-- --------------------------------------------------------

--
-- Table structure for table `food_item`
--

DROP TABLE IF EXISTS `food_item`;
CREATE TABLE `food_item` (
  `ftype` varchar(30) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `fquantity` int(5) NOT NULL,
  `fweight` int(5) NOT NULL,
  `fcooktime` datetime NOT NULL,
  `fexptime` datetime NOT NULL,
  `fspick` time NOT NULL,
  `fepick` time NOT NULL,
  `fpeople` int(5) NOT NULL,
  `fdescp` varchar(80) NOT NULL,
  `fstatus` int(1) NOT NULL,
  `rid` int(5) NOT NULL,
  `nid` int(5) DEFAULT NULL,
  `fid` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `food_item`
--

INSERT INTO `food_item` (`ftype`, `fname`, `fquantity`, `fweight`, `fcooktime`, `fexptime`, `fspick`, `fepick`, `fpeople`, `fdescp`, `fstatus`, `rid`, `nid`, `fid`) VALUES
('Beverage', 'Mango Milkshake', 2, 2, '2021-05-24 14:00:00', '2021-05-26 15:00:00', '14:00:00', '21:00:00', 10, 'Contains milk, mangoes and sugar', 1, 5, 9, 6),
('Main Course', 'Pizza', 5, 1, '2021-05-25 13:00:00', '2021-05-26 15:00:00', '17:00:00', '22:00:00', 10, 'Veg Pizzas', 1, 5, 9, 7),
('Snacks', 'Potato Chips', 5, 1, '2021-05-23 10:00:00', '2021-05-28 17:00:00', '17:00:00', '21:00:00', 10, 'Cooked in Sunflower Oil', 0, 6, NULL, 8),
('Dessert', 'Strawberry Icecream', 10, 1, '2021-05-29 13:00:00', '2021-05-31 14:00:00', '17:30:00', '21:30:00', 10, 'Contains fresh strawberries', 0, 6, NULL, 9),
('Main Course', 'Pasta', 5, 1, '2021-05-25 13:45:00', '2021-05-27 18:00:00', '17:00:00', '21:00:00', 5, 'Classic white sauce pasta', 1, 7, 9, 12),
('Main Course', 'Dal', 2, 2, '2021-06-01 09:25:00', '2021-06-04 12:30:00', '10:30:00', '21:30:00', 20, 'yellow dal', 1, 8, 9, 16),
('Main Course', 'Veg Biryani', 10, 10, '2021-05-26 11:30:00', '2021-05-28 17:00:00', '17:00:00', '22:00:00', 30, 'veg special biryani', 1, 7, 9, 17),
('Main Course', 'Pasta', 5, 5, '2021-06-01 18:20:00', '2021-06-09 18:20:00', '18:20:00', '22:20:00', 5, 'pasta', 0, 7, NULL, 18);

-- --------------------------------------------------------

--
-- Table structure for table `ngo_details`
--

DROP TABLE IF EXISTS `ngo_details`;
CREATE TABLE `ngo_details` (
  `id` int(5) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(60) NOT NULL,
  `phno` varchar(10) NOT NULL,
  `phno2` varchar(10) DEFAULT NULL,
  `pass` varchar(70) NOT NULL,
  `city` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ngo_details`
--

INSERT INTO `ngo_details` (`id`, `name`, `email`, `address`, `phno`, `phno2`, `pass`, `city`) VALUES
(6, 'hello', 'hello@admin.com', 'hello', '9912349876', NULL, '$2y$10$gq7.lXn2QuONR3GZBEHarulF1swopGJI6bihatd69FQKdMegDhgia', ''),
(7, 'Ayuda', 'ayudaaa@admin.com', 'Chandigarh, Punjab', '3344556677', '2233445566', '$2y$10$I04xYezifj9tmB/jzpvz9ueQ/KxOzGUWHAyszOEpVs3HrwC6Kb06q', ''),
(8, 'Anokha', 'anokha@admin.com', 'Vellore, Tamil Nadu', '6655447788', NULL, '$2y$10$0jsMVG2vvx7ExXFIGDLM3u9voXhCKciLdjCTMSOQAJx0Vfs6ZWk7K', ''),
(9, 'Neha', 'sethineha246@gmail.com', 'New Delhi, Delhi', '9988553322', '1234567890', '$2y$10$vqhebMw/klmZlLPCrxeQdu8k2JW3RUm2WYGuEikxO9vtU4uYClud2', 'Delhi'),
(10, 'Malika', 'malika.chikara@gmail.com', 'New Delhi, Delhi', '1234567890', NULL, '$2y$10$1mkhxwlgxe6RZ4RLW1Xg9.EjiHG374hYCiUZEyIeWFLpaXcdfsvcG', 'Delhi');

-- --------------------------------------------------------

--
-- Table structure for table `rest_details`
--

DROP TABLE IF EXISTS `rest_details`;
CREATE TABLE `rest_details` (
  `rid` int(5) NOT NULL,
  `rname` varchar(30) NOT NULL,
  `raddress` varchar(60) NOT NULL,
  `remail` varchar(50) NOT NULL,
  `rphno` varchar(10) NOT NULL,
  `rphno2` varchar(10) DEFAULT NULL,
  `rpass` varchar(70) NOT NULL,
  `rcity` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rest_details`
--

INSERT INTO `rest_details` (`rid`, `rname`, `raddress`, `remail`, `rphno`, `rphno2`, `rpass`, `rcity`) VALUES
(5, 'The Grills', 'Navi Mumbai, Maharashtra', 'grills@admin.com', '1234567890', NULL, '$2y$10$NBfGCc9g.Tu14uOCe./iNOCGqNiKDF1RYg6Lni7JmSVxvprszh0P2', 'Mumbai'),
(6, 'The Restaurant', 'Katpadi Station, Vellore, Tamil Nadu', 'therestaurant@admin.com', '1234567890', '9876543222', '$2y$10$He8BU84Nd4ukh1zW6vCkb.zovjapxHyLszY5sYt8JAaQIZTva/19.', 'Vellore'),
(7, 'Cafe delhi heights', 'New Delhi, Delhi', 'delhiheightss@admin.com', '1234567890', NULL, '$2y$10$gVi.epR/oJOoLOjANJdq6uBOkX0O2lr4QZSQBZ6WSIzU7g3EZRtpm', 'Delhi'),
(8, 'C9 bistro', 'Delhi', 'bistro@admin.com', '1234567890', NULL, '$2y$10$0.NPoFw7X1UVblmlC70UUehquWe7PuqMb05yaL9Yw1WpVIAHvty.K', ''),
(9, 'Restrrr', 'Vellore, Tamil Nadu', 'restrr@admin.com', '8888768888', NULL, '$2y$10$4HiyUmqe2PaTErVZNky0RuFZlv420/HWkn8Z6ddrc546uQOvmH8j.', 'Delhi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `food_item`
--
ALTER TABLE `food_item`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `ngo_details`
--
ALTER TABLE `ngo_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rest_details`
--
ALTER TABLE `rest_details`
  ADD PRIMARY KEY (`rid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `food_item`
--
ALTER TABLE `food_item`
  MODIFY `fid` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `ngo_details`
--
ALTER TABLE `ngo_details`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `rest_details`
--
ALTER TABLE `rest_details`
  MODIFY `rid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
