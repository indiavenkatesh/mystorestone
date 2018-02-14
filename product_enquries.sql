-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 14, 2018 at 05:23 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mystorestone`
--

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_enquries`
--

CREATE TABLE `oc_product_enquries` (
  `enquiry_id` bigint(20) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_qty` varchar(255) NOT NULL,
  `unit` varchar(255) NOT NULL,
  `other_group_text` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_enquries_groups`
--

CREATE TABLE `oc_product_enquries_groups` (
  `enquiry_id` bigint(20) NOT NULL,
  `social_group_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_enquries_mail`
--

CREATE TABLE `oc_product_enquries_mail` (
  `enquiry_id` bigint(20) NOT NULL,
  `seller_id` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `oc_product_enquries`
--
ALTER TABLE `oc_product_enquries`
  ADD PRIMARY KEY (`enquiry_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `oc_product_enquries`
--
ALTER TABLE `oc_product_enquries`
  MODIFY `enquiry_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
