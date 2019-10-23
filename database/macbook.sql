-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2019 at 09:51 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `macbook`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `quantity`) VALUES
(9, 9, 3, 1),
(10, 9, 6, 1),
(11, 9, 12, 1),
(12, 9, 4, 1),
(13, 9, 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`) VALUES
(1, 'Macbook 12 inch', 'Macbook 12 inch'),
(2, 'Macbook Air', 'Macbook Air'),
(3, 'Macbook Pro', 'Macbook Pro'),
(4, 'Mac Mini', 'Mac Mini'),
(5, 'iMac', 'iMac'),
(6, 'Mac Pro', 'Mac Pro');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `sales_id`, `product_id`, `quantity`) VALUES
(14, 9, 11, 2),
(15, 9, 13, 5),
(16, 9, 3, 2),
(17, 9, 1, 3),
(18, 10, 13, 3),
(19, 10, 2, 4),
(20, 10, 19, 5);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `colour` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `size` decimal(6,2) DEFAULT NULL,
  `photo` varchar(200) NOT NULL,
  `date_view` date NOT NULL,
  `counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `colour`, `size`, `photo`, `date_view`, `counter`) VALUES
(1, 1, 'Macbook 12 - 256GB', '<p>1.2GHz dual-core Intel Core M3 processor (Turbo Boost up to 3.0GHz)</p>\r\n<p>8GB 1866MHz Memory</p>\r\n<p>256GB SSD Storage</p>\r\n<p>Intel HD Graphics 615</p>\r\n<p>Built-in battery (10 hours)</p>\r\n', 'Macbook 12 - 256GB', 749.99, 'Space Gray', '12.00', 'MacBook_12_256.jpg', '2019-04-03', 2),
(2, 1, 'Macbook 12 inch - 512GB', '<p>1.3GHz dual-core Intel Core i5</p> <p>processor (Turbo Boost up to 3.2GHz)</p>\r\n<p>8GB 1866MHz Memory</p>\r\n<p>512GB SSD Storage</p>\r\n<p>Intel HD Graphics 615</p>\r\n<p>Built-in battery (10 hours)</p>\r\n<p>Ships in Consumer packaging.</p>\r\n', 'Macbook 12 inch - 512GB', 1099.99, 'Silver', '12.00', 'MacBook_12_512.jpg', '2019-03-07', 3),
(3, 2, 'MacBook Air 2018 - 128gb', '<p>1.6GHz dual core 8th generation</p> \r\n<p>Intel Core i5 processor, Turbo Boost up to 3.6GHz</p>\r\n<p>8GB 2133MHz LPDDR3 memory</p>\r\n<p>128GB SSD storage</p>\r\n<p>Intel UHD Graphics 617</p>\r\n<p>Touch ID, 2 x ports ThunderBolt 3</p>\r\n', 'MacBook Air 2018 - 128gb', 999.99, 'Gold', '13.00', 'MacBookAir_2018.jpg', '2019-04-20', 1),
(4, 2, 'MacBook Air 2018 - 256gb', '<p>1.6GHz dual core 8th generation</p> \r\n<p>Intel Core i5 processor, Turbo Boost up to 3.6GHz</p>\r\n<p>8GB 2133MHz LPDDR3 memory</p>\r\n<p>256GB SSD storage</p>\r\n<p>Intel UHD Graphics 617</p>\r\n<p>Touch ID, 2 x ports ThunderBolt 3</p>\r\n', 'MacBook Air 2018 - 256gb', 999.99, 'Gold', '13.00', 'MacBookAir_2018.jpg', '2019-04-20', 1),
(5, 3, 'MacBook Pro 13.3-inch 2018 TouchBar', '<p>2.3GHz quad-core Intel Core i5 processor, Turbo Boost up to 3.8GHz</p> \r\n<p>8GB 2133MHz LPDDR3</p> \r\n<p>Memory 256GB SSD Storage</p> \r\n<p>Intel Iris Plus Graphics 655</p>\r\n<p>4 x ports ThunderBolt 3</p> \r\n<p>Touch Bar and Touch ID</p>\r\n', 'MacBook Pro 13.3-inch 2018 TouchBar', 1899.99, 'Space Gray', '13.00', 'MacBookPro_13_2018.jpg', '2019-04-19', 4),
(6, 3, 'MacBook Pro 15.4-inch 2018', '<p>2.6GHz 6-core Intel Core i7 processor, Turbo Boost up to 4.3GHz </p>\r\n<p>16GB 2400MHz DDR4</p> \r\n<p>memory 512GB SSD Storage</p> \r\n<p>Radeon Pro 560X with 4GB memory</p> \r\n<p>4 x ports ThunderBolt 3</p> \r\n<p>Touch Bar and Touch ID</p>', 'MacBook Pro 15.4-inch 2018', 2759.99, 'Silver', '15.40', 'MacBookPro_2018_15.jpg', '2019-04-20', 2),
(7, 4, 'Mac Mini 2018 3.6Ghz Intel Core i3 4-Core ', '<p>3.6GHz quad-core 8th-generation Intel Core i3 processor</p> \r\n<p>8GB 2666MHz DDR4 memory</p>  \r\n<p>Intel UHD Graphics 630</p>  \r\n<p>128GB PCIe-based SSD storage</p> ', 'Mac Mini 2018 3.6Ghz Intel Core i3 4-Core ', 999.99, 'Silver', NULL, 'MacMini_2018_i3.jpg', '2019-03-08', 11),
(8, 4, 'Mac Mini 2018 3.0Ghz Intel Core i5 6-Core', '<p>3.0GHz 6-core 8th-generation Intel Core i5 processor(Turbo Boost up to 4.1GHz)</p> \r\n<p>16GB 2666MHz DDR4 memory</p>  \r\n<p>Intel UHD Graphics 630</p>  \r\n<p>256GB PCIe-based SSD storage</p> ', 'Mac Mini 2018 3.0Ghz Intel Core i5 6-Core', 1559.99, 'Silver', NULL, 'MacMini_2018_i5.jpg', '2019-04-20', 1),
(9, 5, 'iMac 4K 21.5-inch', '<p>3.0GHz Quad-core Intel Core i5 processor (Turbo Boost up to 3.5GHz)</p>\r\n<p>8GB of 2400MHz DDR4 onboard</p> <p>memory 1TB (5400-rpm) hard drive</p>\r\n<p>Radeon Pro 555 with 2GB video memory</p> \r\n<p>Retina 4K (4096 x 2304)</p>', 'iMac 4K 21.5-inch', 1699.99, 'Space Gray', '21.50', 'iMAC_4K.jpg', '2019-03-08', 11),
(10, 5, 'iMac 21.5-inch', '<p>2.3GHz dual-core Intel Core i5 processor (Turbo Boost up to 3.6GHz)</p>\r\n<p>8GB of 2133MHz DDR4 onboard memory</p>\r\n<p>1TB (5400-rpm) hard drive</p>\r\n<p>Intel Iris Plus Graphics 640</p> \r\n', 'iMac 21.5-inch', 1499.99, 'Silver', '21.50', 'iMAC_21inch.jpg', '2019-03-08', 11),
(11, 5, 'iMac 5K 27 inch', '3.5GHz Quad-core Intel Core i5 (Turbo Boost up to 4.1GHz) \r\n8GB (two 4GB) of 2400MHz DDR4 memory\r\n1TB Fusion Drive\r\nRadeon Pro 575 with 4GB video memory\r\nRetina 5K (5120 x 2880) P3 display', 'iMac 5K 27 inch', 2099.99, 'Silver', '27.00', 'iMAC_5K.jpg', '2019-03-08', 11),
(12, 6, 'Apple Mac Pro desktop', '<p>Intel Xeon E5 Processor\r\nDual AMD FirePro Graphics</p>\r\n<p>Ultrafast PCIe SSD storage</p>\r\n<p>Six Thunderbolt 2 ports</p>\r\n<p>Four USB 3 ports</p>\r\n<p>Gigabit Ethernet and Wi-Fi</p>\r\n<p>Macos Mojave</p>', 'Apple Mac Pro desktop', 3677.69, 'Black', NULL, 'macpro.jpg', '2019-04-20', 5);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pay_id` varchar(50) NOT NULL,
  `sales_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `pay_id`, `sales_date`) VALUES
(9, 9, 'PAY-1RT494832H294925RLLZ7TZA', '2018-05-10'),
(10, 9, 'PAY-21700797GV667562HLLZ7ZVY', '2018-05-10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(1, 'admin@gmail.com', '$2y$10$0SHFfoWzz8WZpdu9Qw//E.tWamILbiNCX7bqhy3od0gvK5.kSJ8N2', 1, 'DUC HOANG', 'TRUONG', '321/2A Do Xuan Hop street - ward Phuoc Long B, district 9 - HCM', '', 'kid-poker.jpg', 1, '', '', '2019-04-12'),
(9, 'user@gmail.com', '$2y$10$Oongyx.Rv0Y/vbHGOxywl.qf18bXFiZOcEaI4ZpRRLzFNGKAhObSC', 0, 'HOANG', 'TRUONG', 'Saigon - Vietnam', '096797979', 'eminem.png', 1, 'k8FBpynQfqsv', 'wzPGkX5IODlTYHg', '2019-04-12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
