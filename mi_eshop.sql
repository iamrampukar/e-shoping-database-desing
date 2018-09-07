-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 07, 2018 at 12:48 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mi_eshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `semi_address`
--

CREATE TABLE `semi_address` (
  `address_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) UNSIGNED NOT NULL,
  `phone_no1` varchar(50) DEFAULT NULL,
  `phone_no2` varchar(50) DEFAULT NULL,
  `address_work` text,
  `address_office` text,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `semi_address`
--

INSERT INTO `semi_address` (`address_id`, `customer_id`, `phone_no1`, `phone_no2`, `address_work`, `address_office`, `created_at`) VALUES
(1, 1, '111111', '11111', 'Jwagal', 'Patan', NULL),
(2, 2, '222222', '2222', 'Lalitpur', 'Latipur', NULL),
(3, 4, '44444', '44444', 'Bhagtapur', 'Bhagtapur', NULL),
(4, 3, '3333', '3333', 'Patan', 'Patan', NULL),
(5, 5, '55555', '555555', 'Jamal', 'Jamal', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `semi_category`
--

CREATE TABLE `semi_category` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `category_title` varchar(100) DEFAULT NULL,
  `category_body` text,
  `created_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `semi_category`
--

INSERT INTO `semi_category` (`category_id`, `category_name`, `category_title`, `category_body`, `created_at`) VALUES
(1, 'TV', 'Title Tv', 'About Tv ', '2018-09-07'),
(2, 'Mobile', 'Mobile', 'Mobile', '2018-09-08'),
(3, 'Camera', 'Camera', 'Camera', '2018-09-07'),
(4, 'Computer', 'Computer', 'Computer', '2018-09-07'),
(5, 'Fan', 'Fan', 'Fan', '2018-09-08');

-- --------------------------------------------------------

--
-- Table structure for table `semi_customer`
--

CREATE TABLE `semi_customer` (
  `customer_id` int(10) UNSIGNED NOT NULL,
  `username` varchar(50) NOT NULL,
  `userpassword` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `mood` text,
  `image` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `semi_customer`
--

INSERT INTO `semi_customer` (`customer_id`, `username`, `userpassword`, `email`, `first_name`, `last_name`, `mood`, `image`, `created_at`) VALUES
(1, 'rampukar', 'rampukar', 'rampukar@mi.com', 'Ram ', 'Pukar', NULL, 'ram.jpg', '2018-09-07 14:55:18'),
(2, 'shyam', 'shyam', 'shyam@mi.com', 'Shyam', 'Kishor', NULL, 'shyam.jpg', '2018-09-07 14:55:46'),
(3, 'mukesh', 'mukesh', 'mukesh@mi.com', 'Mukesh', 'Kumar', NULL, 'mukesh.jpg', '2018-09-07 14:56:16'),
(4, 'pramod', 'pramod', 'pramod@mi.com', 'Pramod', 'Rai', NULL, 'pramod.jpg', '2018-09-07 14:57:01'),
(5, 'himal', 'himal', 'himal@mi.com', 'Himal', 'Bista', NULL, 'himal.jpg', '2018-09-07 14:57:31'),
(6, 'niral', 'niral', 'niral@mi.com', 'Niral', 'Shakya', NULL, 'niral.jpg', '2018-09-08 15:34:26');

-- --------------------------------------------------------

--
-- Table structure for table `semi_customer_history`
--

CREATE TABLE `semi_customer_history` (
  `history_id int` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `address` text,
  `product_name` varchar(50) DEFAULT NULL,
  `review_rating` int(11) DEFAULT NULL,
  `order_qty` int(11) DEFAULT NULL,
  `order_rate` decimal(10,0) DEFAULT NULL,
  `order_discount` decimal(10,0) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `semi_orders`
--

CREATE TABLE `semi_orders` (
  `order_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `review_rating` int(11) DEFAULT NULL,
  `order_qty` int(11) DEFAULT NULL,
  `order_rate` decimal(10,0) DEFAULT NULL,
  `order_discount` decimal(10,0) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `semi_orders`
--

INSERT INTO `semi_orders` (`order_id`, `customer_id`, `product_id`, `review_rating`, `order_qty`, `order_rate`, `order_discount`, `created_at`) VALUES
(1, 5, 3, 1, 10, '80000', '5', '2018-09-01 15:05:52'),
(2, 1, 8, 2, 5, '450000', '15', '2018-09-02 15:06:26'),
(3, 2, 10, 2, 3, '60000', '10', '2018-09-07 15:08:36'),
(4, 3, 9, 1, 5, '150000', '20', '2018-09-07 15:08:39'),
(5, 4, 6, 3, 1, '5000', '15', '2018-09-08 15:08:42'),
(6, 1, 7, 3, 2, '50000', '10', '2018-09-21 15:08:46');

-- --------------------------------------------------------

--
-- Table structure for table `semi_product`
--

CREATE TABLE `semi_product` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `product_desc` text,
  `product_image` varchar(100) DEFAULT NULL,
  `product_rate` decimal(10,0) DEFAULT NULL,
  `created_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `semi_product`
--

INSERT INTO `semi_product` (`product_id`, `category_id`, `product_name`, `product_desc`, `product_image`, `product_rate`, `created_at`) VALUES
(1, 2, 'Samsung', 'Samsung', 'samsung.jpg', '10000', '2018-09-07'),
(2, 1, 'LG', 'LG', 'LG', '20000', '2018-09-07'),
(3, 2, 'iPhone 5', 'iPhone 5', 'iPhone 5', '80000', '2018-09-07'),
(4, 3, 'Nikon', 'Nikon', 'Nikon', '45000', '2018-09-07'),
(5, 4, 'HP', 'HP', 'HP', '35000', '2018-09-07'),
(6, 5, 'USHA', 'USHA', 'USHA', '5000', '2018-09-07'),
(7, 3, 'Canon', 'Canon', 'Canon', '50000', '2018-09-07'),
(8, 4, 'Dell', 'Dell', 'Delll', '450000', '2018-09-07'),
(9, 3, 'Sony', 'Sony', 'Sony', '150000', '2018-09-07'),
(10, 1, 'Sony', 'Sony', 'Sony', '60000', '2018-09-07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `semi_address`
--
ALTER TABLE `semi_address`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `semi_category`
--
ALTER TABLE `semi_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `semi_customer`
--
ALTER TABLE `semi_customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `semi_customer_history`
--
ALTER TABLE `semi_customer_history`
  ADD PRIMARY KEY (`history_id int`);

--
-- Indexes for table `semi_orders`
--
ALTER TABLE `semi_orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `semi_order_ibfk_1` (`customer_id`),
  ADD KEY `semi_order_ibfk_2` (`product_id`);

--
-- Indexes for table `semi_product`
--
ALTER TABLE `semi_product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `semi_product_ibfk_1` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `semi_address`
--
ALTER TABLE `semi_address`
  MODIFY `address_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `semi_category`
--
ALTER TABLE `semi_category`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `semi_customer`
--
ALTER TABLE `semi_customer`
  MODIFY `customer_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `semi_customer_history`
--
ALTER TABLE `semi_customer_history`
  MODIFY `history_id int` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `semi_orders`
--
ALTER TABLE `semi_orders`
  MODIFY `order_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `semi_product`
--
ALTER TABLE `semi_product`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `semi_address`
--
ALTER TABLE `semi_address`
  ADD CONSTRAINT `semi_address_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `semi_customer` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `semi_orders`
--
ALTER TABLE `semi_orders`
  ADD CONSTRAINT `semi_orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `semi_customer` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `semi_orders_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `semi_product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `semi_product`
--
ALTER TABLE `semi_product`
  ADD CONSTRAINT `semi_product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `semi_category` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
