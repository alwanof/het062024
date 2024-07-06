-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 06, 2024 at 05:04 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom12`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `customer_name`, `email`, `phone_number`, `address`, `created_at`) VALUES
(1, 'Ahmad Kamel', 'ahmad.kamel@example.com', '0123456789', 'Damascus, Syria', '2024-07-06 06:56:14'),
(2, 'Mohammad Ali', 'mohammad.ali@example.com', '0123456788', 'Cairo, Egypt', '2024-07-06 06:56:14'),
(3, 'Omar Hamed', 'omar.hamed@example.com', '0123456787', 'Riyadh, Saudi Arabia', '2024-07-06 06:56:14'),
(4, 'Ali Saeed', 'ali.saeed@example.com', '0123456786', 'Amman, Jordan', '2024-07-06 06:56:14'),
(5, 'Khaled Mustafa', 'khaled.mustafa@example.com', '0123456785', 'Beirut, Lebanon', '2024-07-06 06:56:14'),
(6, 'Yousef Ibrahim', 'yousef.ibrahim@example.com', '0123456784', 'Baghdad, Iraq', '2024-07-06 06:56:14'),
(7, 'Hassan Mahmoud', 'hassan.mahmoud@example.com', '0123456783', 'Tunis, Tunisia', '2024-07-06 06:56:14'),
(8, 'Ayman Taha', 'ayman.taha@example.com', '0123456782', 'Algiers, Algeria', '2024-07-06 06:56:14'),
(9, 'Fadi Khalil', 'fadi.khalil@example.com', '0123456781', 'Khartoum, Sudan', '2024-07-06 06:56:14'),
(10, 'Nasser Anwar', 'nasser.anwar@example.com', '0123456780', 'Tripoli, Libya', '2024-07-06 06:56:14'),
(11, 'Adnan Khaled', 'adnan.khaled@example.com', '0123456779', 'Muscat, Oman', '2024-07-06 06:56:14'),
(12, 'Samir Omar', 'samir.omar@example.com', '0123456778', 'Sanaa, Yemen', '2024-07-06 06:56:14'),
(13, 'Mahmoud Nader', 'mahmoud.nader@example.com', '0123456777', 'Rabat, Morocco', '2024-07-06 06:56:14'),
(14, 'Samer Aref', 'samer.aref@example.com', '0123456776', 'Doha, Qatar', '2024-07-06 06:56:14'),
(15, 'Wassim Wael', 'wassim.wael@example.com', '0123456775', 'Kuwait City, Kuwait', '2024-07-06 06:56:14'),
(16, 'Khalil Hasan', 'khalil.hasan@example.com', '0123456774', 'Manama, Bahrain', '2024-07-06 06:56:14'),
(17, 'Nabil Salim', 'nabil.salim@example.com', '0123456773', 'Nouakchott, Mauritania', '2024-07-06 06:56:14'),
(18, 'Hatem Yassin', 'hatem.yassin@example.com', '0123456772', 'Mogadishu, Somalia', '2024-07-06 06:56:14'),
(19, 'Majed Ahmad', 'majed.ahmad@example.com', '0123456771', 'Djibouti City, Djibouti', '2024-07-06 06:56:14'),
(20, 'Rami Saleh', 'rami.saleh@example.com', '0123456770', 'Jerusalem, Palestine', '2024-07-06 06:56:14'),
(21, 'Ziad Fares', 'ziad.fares@example.com', '0123456769', 'Abu Dhabi, UAE', '2024-07-06 06:56:14'),
(22, 'Firas Naji', 'firas.naji@example.com', '0123456768', 'Dubai, UAE', '2024-07-06 06:56:14'),
(23, 'Hamza Bassam', 'hamza.bassam@example.com', '0123456767', 'Sharjah, UAE', '2024-07-06 06:56:14'),
(24, 'Issa Talal', 'issa.talal@example.com', '0123456766', 'Zarqa, Jordan', '2024-07-06 06:56:14'),
(25, 'Alaa Jamil', 'alaa.jamil@example.com', '0123456765', 'Jeddah, Saudi Arabia', '2024-07-06 06:56:14');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `order_date` date NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_date`, `amount`, `customer_id`, `created_at`) VALUES
(1, '2024-06-13', '257.08', 1, '2024-07-06 07:00:06'),
(2, '2024-06-09', '847.54', 1, '2024-07-06 07:00:06'),
(3, '2024-06-23', '789.62', 2, '2024-07-06 07:00:06'),
(4, '2024-06-20', '374.84', 4, '2024-07-06 07:00:06'),
(5, '2024-06-30', '15.41', 11, '2024-07-06 07:00:06'),
(6, '2024-06-25', '919.29', 13, '2024-07-06 07:00:06'),
(7, '2024-06-24', '327.86', 17, '2024-07-06 07:00:06'),
(8, '2024-06-25', '955.69', 23, '2024-07-06 07:00:06'),
(9, '2024-06-18', '207.31', 23, '2024-07-06 07:00:06'),
(10, '2024-07-01', '337.64', 24, '2024-07-06 07:00:06'),
(16, '2024-06-24', '233.97', 3, '2024-07-06 07:00:55'),
(17, '2024-06-10', '684.80', 4, '2024-07-06 07:00:55'),
(18, '2024-06-13', '905.44', 4, '2024-07-06 07:00:55'),
(19, '2024-07-02', '40.16', 7, '2024-07-06 07:00:55'),
(20, '2024-06-14', '614.17', 8, '2024-07-06 07:00:55'),
(21, '2024-06-12', '307.80', 8, '2024-07-06 07:00:55'),
(22, '2024-07-05', '320.66', 9, '2024-07-06 07:00:55'),
(23, '2024-06-23', '322.27', 10, '2024-07-06 07:00:55'),
(24, '2024-06-29', '237.24', 10, '2024-07-06 07:00:55'),
(25, '2024-06-23', '607.17', 11, '2024-07-06 07:00:55'),
(26, '2024-06-17', '401.09', 11, '2024-07-06 07:00:55'),
(27, '2024-07-04', '156.19', 12, '2024-07-06 07:00:55'),
(28, '2024-06-20', '357.81', 17, '2024-07-06 07:00:55'),
(29, '2024-07-04', '392.58', 17, '2024-07-06 07:00:55'),
(30, '2024-06-16', '238.78', 17, '2024-07-06 07:00:55'),
(31, '2024-07-02', '3.66', 20, '2024-07-06 07:00:55'),
(32, '2024-06-19', '920.51', 20, '2024-07-06 07:00:55'),
(33, '2024-06-11', '456.72', 20, '2024-07-06 07:00:55'),
(34, '2024-06-14', '393.12', 21, '2024-07-06 07:00:55'),
(35, '2024-06-15', '358.81', 21, '2024-07-06 07:00:55'),
(36, '2024-06-16', '279.29', 22, '2024-07-06 07:00:55'),
(37, '2024-06-25', '77.16', 22, '2024-07-06 07:00:55'),
(38, '2024-06-29', '952.46', 24, '2024-07-06 07:00:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
