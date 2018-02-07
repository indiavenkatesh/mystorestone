-- phpMyAdmin SQL Dump
-- version 4.0.10.14
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Feb 01, 2018 at 07:31 AM
-- Server version: 5.5.52-cll
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `nmeximco_mystorestone`
--

-- --------------------------------------------------------

--
-- Table structure for table `oc_address`
--

CREATE TABLE IF NOT EXISTS `oc_address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(40) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  PRIMARY KEY (`address_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=57 ;

--
-- Dumping data for table `oc_address`
--

INSERT INTO `oc_address` (`address_id`, `customer_id`, `firstname`, `lastname`, `company`, `address_1`, `address_2`, `city`, `postcode`, `country_id`, `zone_id`, `custom_field`) VALUES
(39, 30, 'Syed', 'Basha test', '', '1637', '7, AK Ibrahim Building, 2nd Cross, Bazaar street', 'Neelasandra', '560047', 99, 1489, ''),
(8, 4, '1', '1', 'test ', '111', '', 'coimbatore', '641025', 99, 1503, '[]'),
(10, 6, '1!', '1!', '', 'qqq', '', 'qq', 'danielabra', 222, 3529, '[]'),
(11, 7, '1!', '1!', '', 'qqq', '', 'qq', 'danielabra', 222, 3529, ''),
(12, 8, '1!', '1!', '', 'qqq', '', 'qq', 'danielabra', 222, 3529, ''),
(13, 9, '1!', '1!', 'test ', 'qqq', '', 'qq', 'danielabra', 222, 3529, ''),
(14, 10, '1!', '1!', 'test ', 'qqq', '', 'qq', 'danielabra', 222, 3529, ''),
(15, 11, 'Test customer', 'Test customer', 'test', 'test', 'tste', 'test', '123465', 99, 1503, '[]'),
(27, 12, '2#', '^&amp;', '!!', '@@@', '$$$$', '^%$', '1234567', 222, 3529, '[]'),
(18, 12, '1@', '1@', 'xyz', 'abc', 'abc', 'qqq', 'aaa', 99, 1503, '[]'),
(19, 13, '1@@', '1@@', 'aaaa', 'aaaaaaaa', 'aaaaaaaa', 'aaaaaa', 'aaaaaa', 99, 1478, '[]'),
(20, 14, '11', '11', '11', '111', '11', '11', 'aa', 99, 1503, ''),
(21, 15, 'kumar', 'rajesh', '', '1637', 'test', 'Bangalore', '560047', 99, 1489, ''),
(22, 1, '1@@', '1@@', 'xyz', 'abc', 'aaaaaaaa', 'coimbatore', 'aaa', 222, 3526, ''),
(23, 16, '123abc', '123abc', '', 'aaaaaaaa', 'abc', 'coimbatore', '1111111', 222, 3529, ''),
(24, 17, '1!', '1!', '', 'aaaaaaaa', 'abc', 'Aa', '1223121', 205, 3121, ''),
(25, 18, '1@', '1@', '', 'aaa', 'aaaaaaaa', 'aaaaaa', '1232334', 222, 3525, ''),
(26, 19, '1@', '1@@', '', 'aaaaaaaa', 'aaaaaaaa', 'A1', '231321', 221, 3512, ''),
(16, 12, 'Bala', 'RS', 'test ', '123 Place', '123 Place', 'coimbatore', '641025', 99, 1503, '[]'),
(28, 12, '78', '56', '53454', '!@#$', '(&amp;&amp;^&amp;', '(*(&amp;&amp;', '21546547', 99, 1503, '[]'),
(29, 20, 'daniel', 'ebenazer', '', '25, subha lakshmi garden,', 'gn mills(po)', 'coimbatore', '641029', 99, 1503, ''),
(30, 21, 'Test user', 'Test User', '', 'test', 'test', 'test', '123456', 222, 3515, ''),
(31, 22, 'Test user', 'Test User', '', 'test', 'test', 'test', '123456', 222, 3514, ''),
(55, 46, 'Syed Jeelan', 'Basha', '', 'sy 123435 ', '7, AK Ibrahim Building, 2nd Cross, Bazaar street', 'Neelasandra', '560047', 99, 1489, '[]'),
(33, 24, 'kumar', 'ambani', '', '16452, 102cross 75main', 'bangalore', 'Bangalore', '560048', 99, 1489, ''),
(34, 25, 'Seilesh', 'Kumaar', '', '14 Poompukar Nagar', 'Thudiyalur', 'coimbatore', '641034', 99, 1503, ''),
(35, 26, 'Test', 'Company', '', '16452, 102cross 75main', '', 'bangalore', '560047', 99, 1489, ''),
(36, 27, 'karthi', 'k', '', 'cbe', '', 'arab', '6541025', 221, 3508, ''),
(37, 28, 'srinivasan', 'srini', '', 'test', '', 'test', '545678', 222, 3528, '[]'),
(38, 29, 'karthi', 'k', '', 'test', '', 'test', '986512', 99, 1503, ''),
(40, 31, 'karthi', 'seller', '', 'cbe', 'cbe', 'cbe', '641024', 99, 1503, ''),
(41, 32, '1', '1', '', '111', '', '111', '111111', 222, 3515, '[]'),
(42, 33, '1', '1', '', '111', '', 'kjhkj', '641017', 222, 3528, '[]'),
(43, 34, 'srinivasan', 'R T S', '', '1212545687', 'v1212545687', '1212545687', '1212545', 221, 3507, '[]'),
(44, 35, 'ixlybala', 'ixlybala', '', '121', '12', 'coimbatore', '641017', 99, 1491, ''),
(9, 5, '1', '1', '', '1111111111111', '', '11111111111', '11111111', 99, 1503, '[]'),
(45, 36, 'ixlybalatest@ixly.in', 'ixlybalatest@ixly.in', '', '3/125/3 Thendral nagar', 'pannimadai', 'coimbatore', '641017', 99, 1476, ''),
(17, 12, '1@', '1@', 'xyz', 'abc', 'abc', 'qqq', 'aaa', 99, 1503, '[]'),
(46, 37, 'Test', 'Test', '', '0012134456', '00121344560012134456', '0012134456', '001213', 221, 3510, ''),
(48, 39, 'Balachandar', 'K', '', 'nagar', 'madai', 'coimbatore', '641017', 99, 1475, ''),
(7, 4, '1', '1', '', '111', '', '111', '11', 99, 1485, '[]'),
(49, 40, 'krishna', 'm', '', 'test', 'test', 'test', '641017', 99, 1503, ''),
(50, 41, 'testkaro', 'testkaro', '', 't Name testkaro', 't Name testkaro', 't Name testkaro', '3123123', 220, 3496, ''),
(51, 42, 'storestone', 'storestone', '', '3/125/3 Thendral nagar', 'pannimadai', 'coimbatore', '641017', 99, 1493, ''),
(52, 43, 'stone', 'stone', '', '3/125/3 Thendral nagar', 'pannimadai', 'coimbatore', '641017', 222, 3530, ''),
(53, 44, 'Balachandar', 'K', '', '3/125/3 Thendral nagar', 'pannimadai', 'coimbatore', '641017', 99, 1491, '[]'),
(54, 45, 'dadapeer', 'Syed', '', '1462', 'Nisarga layout', 'bangalore', '560083', 184, 2879, '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_affiliate`
--

CREATE TABLE IF NOT EXISTS `oc_affiliate` (
  `affiliate_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `company` varchar(40) NOT NULL,
  `website` varchar(255) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT '0.00',
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `oc_affiliate`
--

INSERT INTO `oc_affiliate` (`affiliate_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `password`, `salt`, `company`, `website`, `address_1`, `address_2`, `city`, `postcode`, `country_id`, `zone_id`, `code`, `commission`, `tax`, `payment`, `cheque`, `paypal`, `bank_name`, `bank_branch_number`, `bank_swift_code`, `bank_account_name`, `bank_account_number`, `ip`, `status`, `approved`, `date_added`) VALUES
(2, 'Adoni Broker', 'Agent', 'syedjeelan006@gmail.com', '08217624441', '8217624441', 'be2aaffa556e85a347517c5aea42afb2919ba09e', 'HYmrKpvbT', '', '', '1462 ground floor, next to senior citizens building,', '', 'Bengaluru', '560083', 99, 1489, '5a5f856a8b0ba', '5.00', '', 'cheque', 'New2018cheque', '', '', '', '', '', '', '', 1, 1, '2018-01-17 11:22:00');

-- --------------------------------------------------------

--
-- Table structure for table `oc_affiliate_activity`
--

CREATE TABLE IF NOT EXISTS `oc_affiliate_activity` (
  `affiliate_activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `affiliate_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_activity_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_affiliate_login`
--

CREATE TABLE IF NOT EXISTS `oc_affiliate_login` (
  `affiliate_login_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`affiliate_login_id`),
  KEY `email` (`email`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_affiliate_transaction`
--

CREATE TABLE IF NOT EXISTS `oc_affiliate_transaction` (
  `affiliate_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `affiliate_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_api`
--

CREATE TABLE IF NOT EXISTS `oc_api` (
  `api_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `key` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`api_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `oc_api`
--

INSERT INTO `oc_api` (`api_id`, `name`, `key`, `status`, `date_added`, `date_modified`) VALUES
(2, 'Default', 'Mdb6WSck89d2V8kwaYgASKlmbMuTsrhJ6Loa2fi9iK8UXFKUpjIGOlp41nF8DaheiNNwxPdG34vyf5OD47fgeX0mg40AYpf4KUkP09toUEtwhekHwMablx4rjs6fS3cpMd7haFG8zcWB2WBb81Mklp99aJXKj6IdeaaqSFZQrtTcikluI5OgRUSPbXyQunOAEBscZvYXxXC3FHCTLg3otNwAgIl0hLbicsoz0lJIvMsiG5pKyPgDO4iqZErLBpMn', 1, '2017-08-06 08:13:59', '2017-08-06 08:13:59');

-- --------------------------------------------------------

--
-- Table structure for table `oc_api_ip`
--

CREATE TABLE IF NOT EXISTS `oc_api_ip` (
  `api_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  PRIMARY KEY (`api_ip_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `oc_api_ip`
--

INSERT INTO `oc_api_ip` (`api_ip_id`, `api_id`, `ip`) VALUES
(2, 2, '117.199.243.74');

-- --------------------------------------------------------

--
-- Table structure for table `oc_api_session`
--

CREATE TABLE IF NOT EXISTS `oc_api_session` (
  `api_session_id` int(11) NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL,
  `token` varchar(32) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `session_name` varchar(32) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`api_session_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=136 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute`
--

CREATE TABLE IF NOT EXISTS `oc_attribute` (
  `attribute_id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `oc_attribute`
--

INSERT INTO `oc_attribute` (`attribute_id`, `attribute_group_id`, `sort_order`) VALUES
(1, 6, 1),
(2, 6, 5),
(3, 6, 3),
(4, 3, 1),
(5, 3, 2),
(6, 3, 3),
(7, 3, 4),
(8, 3, 5),
(9, 3, 6),
(10, 3, 7),
(11, 3, 8);

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_description`
--

CREATE TABLE IF NOT EXISTS `oc_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute_description`
--

INSERT INTO `oc_attribute_description` (`attribute_id`, `language_id`, `name`) VALUES
(1, 1, 'Description'),
(2, 1, 'No. of Cores'),
(4, 1, 'test 1'),
(5, 1, 'test 2'),
(6, 1, 'test 3'),
(7, 1, 'test 4'),
(8, 1, 'test 5'),
(9, 1, 'test 6'),
(10, 1, 'test 7'),
(11, 1, 'test 8'),
(3, 1, 'Clockspeed');

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_group`
--

CREATE TABLE IF NOT EXISTS `oc_attribute_group` (
  `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `oc_attribute_group`
--

INSERT INTO `oc_attribute_group` (`attribute_group_id`, `sort_order`) VALUES
(3, 2),
(4, 1),
(5, 3),
(6, 4);

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_group_description`
--

CREATE TABLE IF NOT EXISTS `oc_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute_group_description`
--

INSERT INTO `oc_attribute_group_description` (`attribute_group_id`, `language_id`, `name`) VALUES
(3, 1, 'Memory'),
(4, 1, 'Technical'),
(5, 1, 'Motherboard'),
(6, 1, 'Processor');

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner`
--

CREATE TABLE IF NOT EXISTS `oc_banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `oc_banner`
--

INSERT INTO `oc_banner` (`banner_id`, `name`, `status`) VALUES
(6, 'HP Products', 1),
(7, 'Home Page Slideshow', 1),
(8, 'Manufacturers', 1),
(9, 'Advertisement Banner', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner_image`
--

CREATE TABLE IF NOT EXISTS `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`banner_image_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=100 ;

--
-- Dumping data for table `oc_banner_image`
--

INSERT INTO `oc_banner_image` (`banner_image_id`, `banner_id`, `link`, `image`, `sort_order`) VALUES
(79, 7, 'index.php?route=product/product&amp;path=57&amp;product_id=49', 'catalog/demo/banners/iPhone6.jpg', 0),
(87, 6, 'index.php?route=product/manufacturer/info&amp;manufacturer_id=7', 'catalog/demo/compaq_presario.jpg', 0),
(94, 8, '', 'catalog/demo/manufacturer/nfl.png', 0),
(95, 8, '', 'catalog/demo/manufacturer/redbull.png', 0),
(96, 8, '', 'catalog/demo/manufacturer/sony.png', 0),
(91, 8, '', 'catalog/demo/manufacturer/cocacola.png', 0),
(92, 8, '', 'catalog/demo/manufacturer/burgerking.png', 0),
(93, 8, '', 'catalog/demo/manufacturer/canon.png', 0),
(88, 8, '', 'catalog/demo/manufacturer/harley.png', 0),
(89, 8, '', 'catalog/demo/manufacturer/dell.png', 0),
(90, 8, '', 'catalog/demo/manufacturer/disney.png', 0),
(80, 7, '', 'catalog/demo/banners/MacBookAir.jpg', 0),
(97, 8, '', 'catalog/demo/manufacturer/starbucks.png', 0),
(98, 8, '', 'catalog/demo/manufacturer/nintendo.png', 0),
(99, 9, '#', 'catalog/sidebar-ad.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner_image_description`
--

CREATE TABLE IF NOT EXISTS `oc_banner_image_description` (
  `banner_image_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  PRIMARY KEY (`banner_image_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_banner_image_description`
--

INSERT INTO `oc_banner_image_description` (`banner_image_id`, `language_id`, `banner_id`, `title`) VALUES
(79, 1, 7, 'iPhone 6'),
(87, 1, 6, 'HP Banner'),
(93, 1, 8, 'Canon'),
(92, 1, 8, 'Burger King'),
(91, 1, 8, 'Coca Cola'),
(90, 1, 8, 'Disney'),
(89, 1, 8, 'Dell'),
(80, 1, 7, 'MacBookAir'),
(88, 1, 8, 'Harley Davidson'),
(94, 1, 8, 'NFL'),
(95, 1, 8, 'RedBull'),
(96, 1, 8, 'Sony'),
(97, 1, 8, 'Starbucks'),
(98, 1, 8, 'Nintendo'),
(99, 1, 9, 'Advertisement1');

-- --------------------------------------------------------

--
-- Table structure for table `oc_cart`
--

CREATE TABLE IF NOT EXISTS `oc_cart` (
  `cart_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `product_id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `option` text NOT NULL,
  `quantity` int(5) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`cart_id`),
  KEY `cart_id` (`customer_id`,`session_id`,`product_id`,`recurring_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=67 ;

--
-- Dumping data for table `oc_cart`
--

INSERT INTO `oc_cart` (`cart_id`, `customer_id`, `session_id`, `product_id`, `seller_id`, `recurring_id`, `option`, `quantity`, `date_added`) VALUES
(45, 14, '0dd9fec478e8b4b5fa5ed341e5ff6655', 50, 0, 0, '{"227":"18","228":"19"}', 1, '2017-09-21 07:17:13');

-- --------------------------------------------------------

--
-- Table structure for table `oc_category`
--

CREATE TABLE IF NOT EXISTS `oc_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`category_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=43 ;

--
-- Dumping data for table `oc_category`
--

INSERT INTO `oc_category` (`category_id`, `image`, `parent_id`, `top`, `column`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES
(20, '', 0, 1, 1, 1, 1, '2009-01-05 21:49:43', '2018-01-01 06:12:27'),
(21, '', 0, 0, 1, 1, 1, '2017-10-14 07:14:53', '2018-01-01 06:15:23'),
(22, '', 0, 0, 1, 2, 1, '2017-10-14 07:17:09', '2018-01-01 06:12:51'),
(23, '', 0, 1, 1, 1, 1, '2017-12-22 07:20:48', '2018-01-05 00:43:14'),
(24, '', 0, 0, 1, 1, 1, '2018-01-01 00:58:37', '2018-01-01 00:58:37'),
(26, '', 0, 0, 1, 1, 1, '2018-01-01 01:03:24', '2018-01-01 01:03:24'),
(27, '', 26, 0, 1, 2, 1, '2018-01-01 01:04:31', '2018-01-01 01:04:31'),
(28, '', 26, 0, 1, 2, 1, '2018-01-01 01:06:48', '2018-01-01 01:06:48'),
(29, '', 26, 0, 1, 2, 1, '2018-01-01 01:07:40', '2018-01-01 01:07:40'),
(30, '', 26, 0, 1, 2, 1, '2018-01-01 01:09:39', '2018-01-01 01:09:39'),
(31, '', 26, 0, 1, 2, 1, '2018-01-01 01:11:48', '2018-01-01 01:11:48'),
(32, '', 0, 0, 1, 1, 1, '2018-01-01 06:16:39', '2018-01-01 06:16:39'),
(33, 'catalog/0001.jpg', 0, 1, 1, 1, 1, '2018-01-01 06:18:29', '2018-01-16 01:12:36'),
(34, '', 0, 0, 1, 1, 1, '2018-01-01 06:19:17', '2018-01-01 06:19:17'),
(35, '', 0, 0, 1, 0, 1, '2018-01-01 06:20:08', '2018-01-01 06:20:08'),
(36, '', 0, 0, 1, 0, 1, '2018-01-01 06:21:05', '2018-01-01 06:21:05'),
(37, '', 0, 0, 1, 0, 1, '2018-01-01 06:22:01', '2018-01-08 01:14:08'),
(39, '', 33, 0, 2, 2, 1, '2018-01-01 06:25:00', '2018-01-01 06:25:00'),
(40, '', 0, 0, 1, 0, 1, '2018-01-05 00:45:28', '2018-01-05 00:45:28');

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_description`
--

CREATE TABLE IF NOT EXISTS `oc_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_description`
--

INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(20, 1, 'Stones - Seilesh', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;\r\n', 'Stones', '', ''),
(22, 1, 'Stones1 - Seilesh', '&lt;p&gt;Stones1&lt;br&gt;&lt;/p&gt;', 'Stones1', '', ''),
(23, 1, 'Granite', '&lt;p class=&quot;MsoListParagraph&quot; style=&quot;text-indent:-.25in;mso-list:l0 level1 lfo1&quot;&gt;&lt;!--[if !supportLists]--&gt;1.&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &amp;quot;Times New Roman&amp;quot;;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;\r\n&lt;/span&gt;&lt;!--[endif]--&gt;Granite&lt;/p&gt;', 'Granite', '', ''),
(24, 1, 'Tiles', '&lt;p&gt;All Tiles&lt;/p&gt;', 'Tiles', '', ''),
(26, 1, 'Stone Tools and Machineries', '&lt;p&gt;&lt;span style=&quot;font-size:11.0pt;line-height:115%;\r\nfont-family:&amp;quot;Calibri&amp;quot;,&amp;quot;sans-serif&amp;quot;;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:\r\nCalibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-latin;\r\nmso-bidi-font-family:&amp;quot;Times New Roman&amp;quot;;mso-bidi-theme-font:minor-bidi;\r\nmso-ansi-language:EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA&quot;&gt;Stone\r\nTools and Machineries&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'Stone Tools and Machineries', '', ''),
(27, 1, 'Mining Machinery', '&lt;p&gt;Mining Machinery&lt;br&gt;&lt;/p&gt;', 'Mining Machinery', '', ''),
(28, 1, 'Factory Tools', '&lt;p&gt;&lt;span style=&quot;font-size:11.0pt;line-height:115%;\r\nfont-family:&amp;quot;Calibri&amp;quot;,&amp;quot;sans-serif&amp;quot;;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:\r\nCalibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-latin;\r\nmso-bidi-font-family:&amp;quot;Times New Roman&amp;quot;;mso-bidi-theme-font:minor-bidi;\r\nmso-ansi-language:EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA&quot;&gt;Factory\r\nTools&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'Factory Tools', '', ''),
(29, 1, 'Stone Tools', '&lt;p&gt;&lt;span style=&quot;font-size:11.0pt;line-height:115%;\r\nfont-family:&amp;quot;Calibri&amp;quot;,&amp;quot;sans-serif&amp;quot;;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:\r\nCalibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-latin;\r\nmso-bidi-font-family:&amp;quot;Times New Roman&amp;quot;;mso-bidi-theme-font:minor-bidi;\r\nmso-ansi-language:EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA&quot;&gt;Stone\r\nTools&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'Stone Tool', '', ''),
(30, 1, 'Craft Tools', '&lt;p&gt;&lt;span style=&quot;font-size:11.0pt;line-height:115%;\r\nfont-family:&amp;quot;Calibri&amp;quot;,&amp;quot;sans-serif&amp;quot;;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:\r\nCalibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-latin;\r\nmso-bidi-font-family:&amp;quot;Times New Roman&amp;quot;;mso-bidi-theme-font:minor-bidi;\r\nmso-ansi-language:EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA&quot;&gt;Craft\r\nTools&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'Craft Tools', '', ''),
(31, 1, 'Other Tools', '&lt;p&gt;All Other Tools&lt;/p&gt;', 'Other Tools', '', ''),
(21, 1, 'Marbles - Seilesh', '&lt;p&gt;Marbles&lt;br&gt;&lt;/p&gt;', 'marbles', '', ''),
(32, 1, 'Slabs', '&lt;p&gt;Slabs&lt;br&gt;&lt;/p&gt;', 'Slabs', '', ''),
(33, 1, 'Blocks test', '&lt;p&gt;Blocks&lt;br&gt;&lt;/p&gt;', 'Blocks', '', ''),
(34, 1, 'Precious Stones', '&lt;p&gt;&lt;span style=&quot;font-size:11.0pt;line-height:115%;\r\nfont-family:&amp;quot;Calibri&amp;quot;,&amp;quot;sans-serif&amp;quot;;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:\r\nCalibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-latin;\r\nmso-bidi-font-family:&amp;quot;Times New Roman&amp;quot;;mso-bidi-theme-font:minor-bidi;\r\nmso-ansi-language:EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA&quot;&gt;Precious\r\nStones&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'Precious Stones', '', ''),
(35, 1, 'Mineral Stones', '&lt;p&gt;Mineral Stones&lt;br&gt;&lt;/p&gt;', 'Mineral Stones', '', ''),
(36, 1, 'Decorative Stones', '&lt;p&gt;Decorative Stones&lt;br&gt;&lt;/p&gt;', 'Decorative Stones', '', ''),
(37, 1, 'Craft and Stone Works', '&lt;p&gt;&lt;span style=&quot;font-size:11.0pt;line-height:115%;\r\nfont-family:&amp;quot;Calibri&amp;quot;,&amp;quot;sans-serif&amp;quot;;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:\r\nCalibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-latin;\r\nmso-bidi-font-family:&amp;quot;Times New Roman&amp;quot;;mso-bidi-theme-font:minor-bidi;\r\nmso-ansi-language:EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA&quot;&gt;Craft\r\nand Stone Work&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'Craft and Stone Work', '', ''),
(39, 1, 'Marble', '&lt;p&gt;&lt;span style=&quot;font-size:11.0pt;line-height:115%;\r\nfont-family:&amp;quot;Calibri&amp;quot;,&amp;quot;sans-serif&amp;quot;;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:\r\nCalibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-latin;\r\nmso-bidi-font-family:&amp;quot;Times New Roman&amp;quot;;mso-bidi-theme-font:minor-bidi;\r\nmso-ansi-language:EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA&quot;&gt;Marble&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'Marble', '', ''),
(40, 1, 'Test Product', '&lt;p&gt;Test Product&lt;br&gt;&lt;/p&gt;', 'Test Product', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_filter`
--

CREATE TABLE IF NOT EXISTS `oc_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_filter`
--

INSERT INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES
(20, 1),
(20, 2),
(20, 3),
(20, 4),
(20, 5),
(20, 6),
(20, 7),
(20, 8),
(20, 9),
(20, 10),
(20, 11),
(20, 12),
(20, 13),
(21, 1),
(21, 2),
(21, 3),
(21, 4),
(21, 5),
(21, 6),
(21, 7),
(21, 8),
(21, 9),
(21, 10),
(21, 11),
(21, 12),
(21, 13),
(22, 1),
(22, 2),
(22, 3),
(22, 4),
(22, 5),
(22, 6),
(22, 7),
(22, 8),
(22, 9),
(22, 10),
(22, 11),
(22, 12),
(22, 13),
(23, 1),
(23, 2),
(23, 7),
(23, 12),
(23, 13);

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_path`
--

CREATE TABLE IF NOT EXISTS `oc_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`path_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_path`
--

INSERT INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES
(20, 20, 0),
(21, 21, 0),
(22, 22, 0),
(23, 23, 0),
(24, 24, 0),
(26, 26, 0),
(27, 27, 1),
(27, 26, 0),
(28, 28, 1),
(28, 26, 0),
(29, 29, 1),
(29, 26, 0),
(30, 30, 1),
(30, 26, 0),
(31, 31, 1),
(31, 26, 0),
(32, 32, 0),
(33, 33, 0),
(34, 34, 0),
(35, 35, 0),
(36, 36, 0),
(37, 37, 0),
(39, 33, 0),
(39, 39, 1),
(40, 40, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_to_layout`
--

CREATE TABLE IF NOT EXISTS `oc_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_to_layout`
--

INSERT INTO `oc_category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES
(20, 0, 0),
(21, 0, 0),
(22, 0, 0),
(23, 0, 0),
(24, 0, 3),
(26, 0, 3),
(27, 0, 0),
(28, 0, 0),
(29, 0, 0),
(30, 0, 0),
(31, 0, 0),
(32, 0, 0),
(33, 0, 4),
(34, 0, 0),
(35, 0, 0),
(36, 0, 0),
(37, 0, 0),
(39, 0, 0),
(40, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_to_store`
--

CREATE TABLE IF NOT EXISTS `oc_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_to_store`
--

INSERT INTO `oc_category_to_store` (`category_id`, `store_id`) VALUES
(20, 0),
(21, 0),
(22, 0),
(23, 0),
(24, 0),
(26, 0),
(27, 0),
(28, 0),
(29, 0),
(30, 0),
(31, 0),
(32, 0),
(33, 0),
(34, 0),
(35, 0),
(36, 0),
(37, 0),
(39, 0),
(40, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_chat`
--

CREATE TABLE IF NOT EXISTS `oc_chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from` int(11) NOT NULL,
  `to` int(11) NOT NULL,
  `message` text NOT NULL,
  `sent` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `recd` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=146 ;

--
-- Dumping data for table `oc_chat`
--

INSERT INTO `oc_chat` (`id`, `from`, `to`, `message`, `sent`, `recd`) VALUES
(1, 0, 3, 'test', '2017-09-16 12:49:47', 1),
(2, 2, 3, 'test', '2017-09-16 12:52:31', 1),
(3, 2, 3, 'test', '2017-09-16 12:57:04', 1),
(4, 1, 3, 'hi', '2017-09-16 13:32:50', 1),
(5, 1, 3, 'Hi', '2017-09-16 13:39:01', 1),
(6, 1, 3, 'hi', '2017-09-16 13:42:17', 1),
(7, 1, 3, 'test', '2017-09-16 13:46:34', 1),
(8, 2, 3, 'gu', '2017-09-16 13:49:36', 1),
(9, 1, 3, 'hi', '2017-09-17 01:47:15', 1),
(10, 1, 2, 'hi', '2017-09-17 01:50:18', 1),
(11, 1, 2, 'hi', '2017-09-17 01:50:25', 1),
(12, 2, 1, 'hi', '2017-09-17 01:51:12', 1),
(13, 1, 2, 'hi', '2017-09-17 02:19:32', 1),
(14, 2, 1, 'hi', '2017-09-17 02:49:26', 1),
(15, 2, 1, 'hi', '2017-09-17 02:56:38', 1),
(16, 1, 2, 'hi', '2017-09-17 02:57:25', 1),
(17, 2, 1, 'hay', '2017-09-17 02:57:34', 1),
(18, 2, 1, 'hi', '2017-09-17 03:00:22', 1),
(19, 1, 2, 'hi', '2017-09-17 03:00:40', 1),
(20, 2, 1, 'how are you', '2017-09-17 03:00:53', 1),
(21, 1, 2, 'fine thanks', '2017-09-17 03:01:00', 1),
(22, 1, 2, 'hi', '2017-09-17 03:14:36', 1),
(23, 2, 1, 'fine ho', '2017-09-17 03:14:47', 1),
(24, 2, 1, 'hi', '2017-09-17 03:17:57', 1),
(25, 2, 1, 'hi', '2017-09-17 03:19:13', 1),
(26, 2, 1, 'Hi', '2017-09-17 11:00:41', 1),
(27, 1, 2, 'Hi', '2017-09-19 02:47:05', 1),
(28, 1, 2, 'aaaaaaaaaa', '2017-09-20 02:12:18', 1),
(29, 1, 2, 'hello', '2017-09-20 02:12:23', 1),
(30, 1, 6, 'aaaaa', '2017-09-20 02:12:45', 1),
(31, 1, 2, 'aaaaa', '2017-09-20 02:12:54', 1),
(32, 1, 2, 'Hi', '2017-09-20 04:43:31', 1),
(33, 1, 3, 'hi', '2017-09-20 04:45:52', 1),
(34, 1, 3, 'hi', '2017-09-22 02:51:24', 1),
(35, 2, 1, 'hi', '2017-09-23 05:37:56', 1),
(36, 2, 1, 'hello ji', '2017-09-23 05:38:07', 1),
(37, 2, 2, 'hi', '2017-09-27 03:15:10', 1),
(38, 2, 2, 'hi', '2017-09-27 03:19:05', 1),
(39, 1, 2, 'HI', '2017-09-27 03:20:49', 1),
(40, 3, 2, 'Hi', '2017-09-29 08:58:56', 1),
(41, 3, 1, 'Hi', '2017-09-29 08:59:25', 1),
(42, 3, 1, 'Was checking', '2017-09-29 08:59:30', 1),
(43, 1, 3, 'Hi yes', '2017-10-02 08:38:30', 0),
(44, 1, 3, 'i got ur msg', '2017-10-02 08:38:35', 0),
(45, 1, 3, 'my phone no : 8148001555', '2017-10-02 08:38:56', 0),
(46, 1, 2, 'Hi', '2017-10-02 08:39:33', 1),
(47, 1, 3, 'hi', '2017-10-02 10:58:27', 0),
(48, 1, 3, 'R u thr', '2017-10-02 10:58:33', 0),
(49, 1, 6, 'hi', '2017-11-27 07:20:28', 1),
(50, 1, 6, 'hghg', '2017-11-27 08:24:03', 1),
(51, 1, 6, 'h', '2017-11-27 23:50:51', 1),
(52, 1, 6, 'fnhgmjhhyg', '2017-11-27 23:50:54', 1),
(53, 1, 6, 'hihhhghg', '2017-12-01 00:49:13', 1),
(54, 1, 16, 'hello', '2017-12-01 01:21:27', 0),
(55, 1, 12, 'hi', '2017-12-01 01:51:13', 1),
(56, 12, 1, 'hi', '2017-12-01 01:51:25', 1),
(57, 1, 12, 'hhhhhhhhhhhhhhhh', '2017-12-01 01:51:41', 1),
(58, 12, 1, 'hjhfdjhjfhd', '2017-12-01 01:51:46', 1),
(59, 1, 12, 'hii', '2017-12-01 02:06:54', 1),
(60, 12, 1, 'hoi', '2017-12-01 02:11:01', 1),
(61, 12, 1, 'Hi, I want ur product', '2017-12-01 02:19:52', 1),
(62, 1, 12, 'tharamata poda', '2017-12-01 02:20:02', 1),
(63, 12, 1, 'hi', '2017-12-01 02:20:48', 1),
(64, 12, 1, 'dfs', '2017-12-01 02:24:03', 1),
(65, 12, 1, 'test', '2017-12-01 02:54:00', 1),
(66, 1, 12, 'poda ku', '2017-12-01 02:54:23', 1),
(67, 30, 1, 'HI', '2017-12-01 04:39:04', 1),
(68, 30, 1, 'are you online', '2017-12-01 04:39:10', 1),
(69, 30, 1, 'this is checking chat', '2017-12-01 04:39:16', 1),
(70, 30, 1, 'if you are online', '2017-12-01 04:41:14', 1),
(71, 30, 1, 'plz chat with me', '2017-12-01 04:41:34', 1),
(72, 30, 12, 'Hi bala', '2017-12-01 04:42:24', 1),
(73, 30, 1, 'Hello', '2017-12-01 04:43:49', 1),
(74, 12, 30, 'Test chat', '2017-12-02 00:08:55', 1),
(75, 1, 12, 'hi', '2017-12-02 00:36:23', 1),
(76, 12, 1, 'hello', '2017-12-02 00:36:40', 1),
(77, 30, 12, 'Hi', '2017-12-02 06:58:45', 1),
(78, 30, 12, 'Whether you are online or not how I will come to know?', '2017-12-02 06:59:12', 1),
(79, 32, 1, 'u r offline', '2017-12-04 06:10:08', 1),
(80, 1, 32, 'Yes', '2017-12-04 06:11:25', 1),
(81, 1, 32, 'how come you know that', '2017-12-04 06:11:33', 1),
(82, 12, 1, 'TEST', '2017-12-04 23:38:29', 1),
(83, 1, 12, 'hi', '2017-12-07 07:58:08', 1),
(84, 30, 1, 'hi', '2017-12-07 08:02:54', 1),
(85, 1, 1, 'sdsdsd', '2017-12-12 06:16:31', 1),
(86, 1, 30, 'hi', '2017-12-12 06:16:34', 1),
(87, 12, 1, 'testxyz', '2017-12-16 02:04:02', 1),
(88, 1, 12, 'hi', '2017-12-16 02:04:34', 1),
(89, 1, 12, 'ghghg', '2017-12-16 02:04:40', 1),
(90, 1, 12, 'hghghg', '2017-12-16 02:04:43', 1),
(91, 12, 1, 'baal', '2017-12-16 02:04:44', 1),
(92, 1, 12, 'hghfghfghfdfds', '2017-12-16 02:04:47', 1),
(93, 12, 1, 'bhjbkj', '2017-12-16 02:04:52', 1),
(94, 1, 12, 'fdgfgf', '2017-12-16 02:04:58', 1),
(95, 12, 1, 'fcbghdf', '2017-12-16 02:05:03', 1),
(96, 12, 1, 'test', '2017-12-16 02:17:12', 1),
(97, 12, 1, 'tytytyty', '2017-12-16 02:20:59', 1),
(98, 1, 12, 'test', '2017-12-18 01:20:30', 1),
(99, 12, 1, 'hi', '2017-12-18 01:20:37', 1),
(100, 12, 1, 'chatting is slow', '2017-12-18 01:20:47', 1),
(101, 1, 12, 'ok', '2017-12-18 01:21:10', 1),
(102, 12, 1, 'I want to clear chat history', '2017-12-19 21:08:20', 1),
(103, 30, 1, 'hello', '2017-12-29 07:14:52', 1),
(104, 30, 1, 'are you online?', '2017-12-29 07:16:21', 1),
(105, 30, 1, 'Is this char working on real time basis?', '2017-12-29 07:16:37', 1),
(106, 38, 30, 'Hello', '2018-01-03 09:30:16', 1),
(107, 30, 38, 'Here', '2018-01-03 09:33:05', 1),
(108, 30, 38, 'There', '2018-01-03 09:33:44', 1),
(109, 30, 38, 'Hai', '2018-01-03 09:33:54', 1),
(110, 38, 30, 'mmm', '2018-01-03 09:34:02', 1),
(111, 30, 38, 'GghðŸ˜ðŸ¢ðŸ£ðŸªðŸ¢ðŸ˜¬', '2018-01-03 09:34:34', 1),
(112, 30, 32, 'hi', '2018-01-05 00:21:52', 0),
(113, 1, 12, 'hi', '2018-01-05 06:37:35', 1),
(114, 12, 1, 'mudiyadhu mnnn', '2018-01-05 06:37:51', 1),
(115, 1, 12, 'good', '2018-01-05 06:38:00', 1),
(116, 12, 1, 'ok', '2018-01-05 06:38:05', 1),
(117, 1, 12, 'ok', '2018-01-05 06:38:12', 1),
(118, 30, 1, 'hi', '2018-01-06 00:04:31', 1),
(119, 30, 1, 'are you there', '2018-01-06 00:04:36', 1),
(120, 1, 30, 'hi', '2018-01-06 00:05:18', 1),
(121, 30, 1, 'Hi Daniel this only the checking', '2018-01-06 01:20:30', 1),
(122, 30, 1, 'jk', '2018-01-06 01:37:26', 1),
(123, 30, 1, 'Hi are you there', '2018-01-08 08:12:24', 1),
(124, 30, 1, 'online', '2018-01-08 08:12:26', 1),
(125, 30, 12, 'Hello Bala today we will discuss on message and chat', '2018-01-10 00:01:37', 1),
(126, 12, 30, 'hi', '2018-01-10 00:02:16', 1),
(127, 45, 30, 'Hi', '2018-01-11 10:27:16', 1),
(128, 30, 45, 'hello dadapeer', '2018-01-11 10:27:50', 1),
(129, 30, 45, 'its nice to c u', '2018-01-11 10:28:03', 1),
(130, 45, 30, 'Hello', '2018-01-11 10:28:13', 1),
(131, 45, 30, 'What is the status of the points', '2018-01-11 10:28:22', 1),
(132, 45, 30, 'Any one', '2018-01-11 10:28:35', 1),
(133, 30, 45, 'ok', '2018-01-11 10:29:31', 1),
(134, 45, 30, 'Chatting with you', '2018-01-11 10:29:39', 1),
(135, 1, 40, 'hi', '2018-01-15 23:55:26', 0),
(136, 46, 40, 'hi', '2018-01-16 00:55:37', 0),
(137, 12, 30, 'hi', '2018-01-29 01:08:03', 1),
(138, 30, 46, 'hi', '2018-01-29 01:09:32', 0),
(139, 30, 12, 'we are checking the chat history where it is getting saved', '2018-01-29 01:10:42', 1),
(140, 12, 30, 'ok', '2018-01-29 01:10:54', 1),
(141, 12, 30, 'ok', '2018-01-29 01:11:13', 1),
(142, 30, 12, 'time to check 12:41pm', '2018-01-29 01:11:33', 1),
(143, 12, 30, 'checking', '2018-01-29 01:11:44', 1),
(144, 1, 30, 'hu', '2018-01-29 06:04:29', 1),
(145, 30, 1, 'Good morning', '2018-01-29 19:46:33', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_country`
--

CREATE TABLE IF NOT EXISTS `oc_country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`country_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=258 ;

--
-- Dumping data for table `oc_country`
--

INSERT INTO `oc_country` (`country_id`, `name`, `iso_code_2`, `iso_code_3`, `address_format`, `postcode_required`, `status`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', '', 0, 1),
(2, 'Albania', 'AL', 'ALB', '', 0, 1),
(3, 'Algeria', 'DZ', 'DZA', '', 0, 1),
(4, 'American Samoa', 'AS', 'ASM', '', 0, 1),
(5, 'Andorra', 'AD', 'AND', '', 0, 1),
(6, 'Angola', 'AO', 'AGO', '', 0, 1),
(7, 'Anguilla', 'AI', 'AIA', '', 0, 1),
(8, 'Antarctica', 'AQ', 'ATA', '', 0, 1),
(9, 'Antigua and Barbuda', 'AG', 'ATG', '', 0, 1),
(10, 'Argentina', 'AR', 'ARG', '', 0, 1),
(11, 'Armenia', 'AM', 'ARM', '', 0, 1),
(12, 'Aruba', 'AW', 'ABW', '', 0, 1),
(13, 'Australia', 'AU', 'AUS', '', 0, 1),
(14, 'Austria', 'AT', 'AUT', '', 0, 1),
(15, 'Azerbaijan', 'AZ', 'AZE', '', 0, 1),
(16, 'Bahamas', 'BS', 'BHS', '', 0, 1),
(17, 'Bahrain', 'BH', 'BHR', '', 0, 1),
(18, 'Bangladesh', 'BD', 'BGD', '', 0, 1),
(19, 'Barbados', 'BB', 'BRB', '', 0, 1),
(20, 'Belarus', 'BY', 'BLR', '', 0, 1),
(21, 'Belgium', 'BE', 'BEL', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 0, 1),
(22, 'Belize', 'BZ', 'BLZ', '', 0, 1),
(23, 'Benin', 'BJ', 'BEN', '', 0, 1),
(24, 'Bermuda', 'BM', 'BMU', '', 0, 1),
(25, 'Bhutan', 'BT', 'BTN', '', 0, 1),
(26, 'Bolivia', 'BO', 'BOL', '', 0, 1),
(27, 'Bosnia and Herzegovina', 'BA', 'BIH', '', 0, 1),
(28, 'Botswana', 'BW', 'BWA', '', 0, 1),
(29, 'Bouvet Island', 'BV', 'BVT', '', 0, 1),
(30, 'Brazil', 'BR', 'BRA', '', 0, 1),
(31, 'British Indian Ocean Territory', 'IO', 'IOT', '', 0, 1),
(32, 'Brunei Darussalam', 'BN', 'BRN', '', 0, 1),
(33, 'Bulgaria', 'BG', 'BGR', '', 0, 1),
(34, 'Burkina Faso', 'BF', 'BFA', '', 0, 1),
(35, 'Burundi', 'BI', 'BDI', '', 0, 1),
(36, 'Cambodia', 'KH', 'KHM', '', 0, 1),
(37, 'Cameroon', 'CM', 'CMR', '', 0, 1),
(38, 'Canada', 'CA', 'CAN', '', 0, 1),
(39, 'Cape Verde', 'CV', 'CPV', '', 0, 1),
(40, 'Cayman Islands', 'KY', 'CYM', '', 0, 1),
(41, 'Central African Republic', 'CF', 'CAF', '', 0, 1),
(42, 'Chad', 'TD', 'TCD', '', 0, 1),
(43, 'Chile', 'CL', 'CHL', '', 0, 1),
(44, 'China', 'CN', 'CHN', '', 0, 1),
(45, 'Christmas Island', 'CX', 'CXR', '', 0, 1),
(46, 'Cocos (Keeling) Islands', 'CC', 'CCK', '', 0, 1),
(47, 'Colombia', 'CO', 'COL', '', 0, 1),
(48, 'Comoros', 'KM', 'COM', '', 0, 1),
(49, 'Congo', 'CG', 'COG', '', 0, 1),
(50, 'Cook Islands', 'CK', 'COK', '', 0, 1),
(51, 'Costa Rica', 'CR', 'CRI', '', 0, 1),
(52, 'Cote D''Ivoire', 'CI', 'CIV', '', 0, 1),
(53, 'Croatia', 'HR', 'HRV', '', 0, 1),
(54, 'Cuba', 'CU', 'CUB', '', 0, 1),
(55, 'Cyprus', 'CY', 'CYP', '', 0, 1),
(56, 'Czech Republic', 'CZ', 'CZE', '', 0, 1),
(57, 'Denmark', 'DK', 'DNK', '', 0, 1),
(58, 'Djibouti', 'DJ', 'DJI', '', 0, 1),
(59, 'Dominica', 'DM', 'DMA', '', 0, 1),
(60, 'Dominican Republic', 'DO', 'DOM', '', 0, 1),
(61, 'East Timor', 'TL', 'TLS', '', 0, 1),
(62, 'Ecuador', 'EC', 'ECU', '', 0, 1),
(63, 'Egypt', 'EG', 'EGY', '', 0, 1),
(64, 'El Salvador', 'SV', 'SLV', '', 0, 1),
(65, 'Equatorial Guinea', 'GQ', 'GNQ', '', 0, 1),
(66, 'Eritrea', 'ER', 'ERI', '', 0, 1),
(67, 'Estonia', 'EE', 'EST', '', 0, 1),
(68, 'Ethiopia', 'ET', 'ETH', '', 0, 1),
(69, 'Falkland Islands (Malvinas)', 'FK', 'FLK', '', 0, 1),
(70, 'Faroe Islands', 'FO', 'FRO', '', 0, 1),
(71, 'Fiji', 'FJ', 'FJI', '', 0, 1),
(72, 'Finland', 'FI', 'FIN', '', 0, 1),
(74, 'France, Metropolitan', 'FR', 'FRA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(75, 'French Guiana', 'GF', 'GUF', '', 0, 1),
(76, 'French Polynesia', 'PF', 'PYF', '', 0, 1),
(77, 'French Southern Territories', 'TF', 'ATF', '', 0, 1),
(78, 'Gabon', 'GA', 'GAB', '', 0, 1),
(79, 'Gambia', 'GM', 'GMB', '', 0, 1),
(80, 'Georgia', 'GE', 'GEO', '', 0, 1),
(81, 'Germany', 'DE', 'DEU', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(82, 'Ghana', 'GH', 'GHA', '', 0, 1),
(83, 'Gibraltar', 'GI', 'GIB', '', 0, 1),
(84, 'Greece', 'GR', 'GRC', '', 0, 1),
(85, 'Greenland', 'GL', 'GRL', '', 0, 1),
(86, 'Grenada', 'GD', 'GRD', '', 0, 1),
(87, 'Guadeloupe', 'GP', 'GLP', '', 0, 1),
(88, 'Guam', 'GU', 'GUM', '', 0, 1),
(89, 'Guatemala', 'GT', 'GTM', '', 0, 1),
(90, 'Guinea', 'GN', 'GIN', '', 0, 1),
(91, 'Guinea-Bissau', 'GW', 'GNB', '', 0, 1),
(92, 'Guyana', 'GY', 'GUY', '', 0, 1),
(93, 'Haiti', 'HT', 'HTI', '', 0, 1),
(94, 'Heard and Mc Donald Islands', 'HM', 'HMD', '', 0, 1),
(95, 'Honduras', 'HN', 'HND', '', 0, 1),
(96, 'Hong Kong', 'HK', 'HKG', '', 0, 1),
(97, 'Hungary', 'HU', 'HUN', '', 0, 1),
(98, 'Iceland', 'IS', 'ISL', '', 0, 1),
(99, 'India', 'IN', 'IND', '', 0, 1),
(100, 'Indonesia', 'ID', 'IDN', '', 0, 1),
(101, 'Iran (Islamic Republic of)', 'IR', 'IRN', '', 0, 1),
(102, 'Iraq', 'IQ', 'IRQ', '', 0, 1),
(103, 'Ireland', 'IE', 'IRL', '', 0, 1),
(104, 'Israel', 'IL', 'ISR', '', 0, 1),
(105, 'Italy', 'IT', 'ITA', '', 0, 1),
(106, 'Jamaica', 'JM', 'JAM', '', 0, 1),
(107, 'Japan', 'JP', 'JPN', '', 0, 1),
(108, 'Jordan', 'JO', 'JOR', '', 0, 1),
(109, 'Kazakhstan', 'KZ', 'KAZ', '', 0, 1),
(110, 'Kenya', 'KE', 'KEN', '', 0, 1),
(111, 'Kiribati', 'KI', 'KIR', '', 0, 1),
(112, 'North Korea', 'KP', 'PRK', '', 0, 1),
(113, 'South Korea', 'KR', 'KOR', '', 0, 1),
(114, 'Kuwait', 'KW', 'KWT', '', 0, 1),
(115, 'Kyrgyzstan', 'KG', 'KGZ', '', 0, 1),
(116, 'Lao People''s Democratic Republic', 'LA', 'LAO', '', 0, 1),
(117, 'Latvia', 'LV', 'LVA', '', 0, 1),
(118, 'Lebanon', 'LB', 'LBN', '', 0, 1),
(119, 'Lesotho', 'LS', 'LSO', '', 0, 1),
(120, 'Liberia', 'LR', 'LBR', '', 0, 1),
(121, 'Libyan Arab Jamahiriya', 'LY', 'LBY', '', 0, 1),
(122, 'Liechtenstein', 'LI', 'LIE', '', 0, 1),
(123, 'Lithuania', 'LT', 'LTU', '', 0, 1),
(124, 'Luxembourg', 'LU', 'LUX', '', 0, 1),
(125, 'Macau', 'MO', 'MAC', '', 0, 1),
(126, 'FYROM', 'MK', 'MKD', '', 0, 1),
(127, 'Madagascar', 'MG', 'MDG', '', 0, 1),
(128, 'Malawi', 'MW', 'MWI', '', 0, 1),
(129, 'Malaysia', 'MY', 'MYS', '', 0, 1),
(130, 'Maldives', 'MV', 'MDV', '', 0, 1),
(131, 'Mali', 'ML', 'MLI', '', 0, 1),
(132, 'Malta', 'MT', 'MLT', '', 0, 1),
(133, 'Marshall Islands', 'MH', 'MHL', '', 0, 1),
(134, 'Martinique', 'MQ', 'MTQ', '', 0, 1),
(135, 'Mauritania', 'MR', 'MRT', '', 0, 1),
(136, 'Mauritius', 'MU', 'MUS', '', 0, 1),
(137, 'Mayotte', 'YT', 'MYT', '', 0, 1),
(138, 'Mexico', 'MX', 'MEX', '', 0, 1),
(139, 'Micronesia, Federated States of', 'FM', 'FSM', '', 0, 1),
(140, 'Moldova, Republic of', 'MD', 'MDA', '', 0, 1),
(141, 'Monaco', 'MC', 'MCO', '', 0, 1),
(142, 'Mongolia', 'MN', 'MNG', '', 0, 1),
(143, 'Montserrat', 'MS', 'MSR', '', 0, 1),
(144, 'Morocco', 'MA', 'MAR', '', 0, 1),
(145, 'Mozambique', 'MZ', 'MOZ', '', 0, 1),
(146, 'Myanmar', 'MM', 'MMR', '', 0, 1),
(147, 'Namibia', 'NA', 'NAM', '', 0, 1),
(148, 'Nauru', 'NR', 'NRU', '', 0, 1),
(149, 'Nepal', 'NP', 'NPL', '', 0, 1),
(150, 'Netherlands', 'NL', 'NLD', '', 0, 1),
(151, 'Netherlands Antilles', 'AN', 'ANT', '', 0, 1),
(152, 'New Caledonia', 'NC', 'NCL', '', 0, 1),
(153, 'New Zealand', 'NZ', 'NZL', '', 0, 1),
(154, 'Nicaragua', 'NI', 'NIC', '', 0, 1),
(155, 'Niger', 'NE', 'NER', '', 0, 1),
(156, 'Nigeria', 'NG', 'NGA', '', 0, 1),
(157, 'Niue', 'NU', 'NIU', '', 0, 1),
(158, 'Norfolk Island', 'NF', 'NFK', '', 0, 1),
(159, 'Northern Mariana Islands', 'MP', 'MNP', '', 0, 1),
(160, 'Norway', 'NO', 'NOR', '', 0, 1),
(161, 'Oman', 'OM', 'OMN', '', 0, 1),
(162, 'Pakistan', 'PK', 'PAK', '', 0, 1),
(163, 'Palau', 'PW', 'PLW', '', 0, 1),
(164, 'Panama', 'PA', 'PAN', '', 0, 1),
(165, 'Papua New Guinea', 'PG', 'PNG', '', 0, 1),
(166, 'Paraguay', 'PY', 'PRY', '', 0, 1),
(167, 'Peru', 'PE', 'PER', '', 0, 1),
(168, 'Philippines', 'PH', 'PHL', '', 0, 1),
(169, 'Pitcairn', 'PN', 'PCN', '', 0, 1),
(170, 'Poland', 'PL', 'POL', '', 0, 1),
(171, 'Portugal', 'PT', 'PRT', '', 0, 1),
(172, 'Puerto Rico', 'PR', 'PRI', '', 0, 1),
(173, 'Qatar', 'QA', 'QAT', '', 0, 1),
(174, 'Reunion', 'RE', 'REU', '', 0, 1),
(175, 'Romania', 'RO', 'ROM', '', 0, 1),
(176, 'Russian Federation', 'RU', 'RUS', '', 0, 1),
(177, 'Rwanda', 'RW', 'RWA', '', 0, 1),
(178, 'Saint Kitts and Nevis', 'KN', 'KNA', '', 0, 1),
(179, 'Saint Lucia', 'LC', 'LCA', '', 0, 1),
(180, 'Saint Vincent and the Grenadines', 'VC', 'VCT', '', 0, 1),
(181, 'Samoa', 'WS', 'WSM', '', 0, 1),
(182, 'San Marino', 'SM', 'SMR', '', 0, 1),
(183, 'Sao Tome and Principe', 'ST', 'STP', '', 0, 1),
(184, 'Saudi Arabia', 'SA', 'SAU', '', 0, 1),
(185, 'Senegal', 'SN', 'SEN', '', 0, 1),
(186, 'Seychelles', 'SC', 'SYC', '', 0, 1),
(187, 'Sierra Leone', 'SL', 'SLE', '', 0, 1),
(188, 'Singapore', 'SG', 'SGP', '', 0, 1),
(189, 'Slovak Republic', 'SK', 'SVK', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city} {postcode}\r\n{zone}\r\n{country}', 0, 1),
(190, 'Slovenia', 'SI', 'SVN', '', 0, 1),
(191, 'Solomon Islands', 'SB', 'SLB', '', 0, 1),
(192, 'Somalia', 'SO', 'SOM', '', 0, 1),
(193, 'South Africa', 'ZA', 'ZAF', '', 0, 1),
(194, 'South Georgia &amp; South Sandwich Islands', 'GS', 'SGS', '', 0, 1),
(195, 'Spain', 'ES', 'ESP', '', 0, 1),
(196, 'Sri Lanka', 'LK', 'LKA', '', 0, 1),
(197, 'St. Helena', 'SH', 'SHN', '', 0, 1),
(198, 'St. Pierre and Miquelon', 'PM', 'SPM', '', 0, 1),
(199, 'Sudan', 'SD', 'SDN', '', 0, 1),
(200, 'Suriname', 'SR', 'SUR', '', 0, 1),
(201, 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', '', 0, 1),
(202, 'Swaziland', 'SZ', 'SWZ', '', 0, 1),
(203, 'Sweden', 'SE', 'SWE', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(204, 'Switzerland', 'CH', 'CHE', '', 0, 1),
(205, 'Syrian Arab Republic', 'SY', 'SYR', '', 0, 1),
(206, 'Taiwan', 'TW', 'TWN', '', 0, 1),
(207, 'Tajikistan', 'TJ', 'TJK', '', 0, 1),
(208, 'Tanzania, United Republic of', 'TZ', 'TZA', '', 0, 1),
(209, 'Thailand', 'TH', 'THA', '', 0, 1),
(210, 'Togo', 'TG', 'TGO', '', 0, 1),
(211, 'Tokelau', 'TK', 'TKL', '', 0, 1),
(212, 'Tonga', 'TO', 'TON', '', 0, 1),
(213, 'Trinidad and Tobago', 'TT', 'TTO', '', 0, 1),
(214, 'Tunisia', 'TN', 'TUN', '', 0, 1),
(215, 'Turkey', 'TR', 'TUR', '', 0, 1),
(216, 'Turkmenistan', 'TM', 'TKM', '', 0, 1),
(217, 'Turks and Caicos Islands', 'TC', 'TCA', '', 0, 1),
(218, 'Tuvalu', 'TV', 'TUV', '', 0, 1),
(219, 'Uganda', 'UG', 'UGA', '', 0, 1),
(220, 'Ukraine', 'UA', 'UKR', '', 0, 1),
(221, 'United Arab Emirates', 'AE', 'ARE', '', 0, 1),
(222, 'United Kingdom', 'GB', 'GBR', '', 1, 1),
(223, 'United States', 'US', 'USA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', 0, 1),
(224, 'United States Minor Outlying Islands', 'UM', 'UMI', '', 0, 1),
(225, 'Uruguay', 'UY', 'URY', '', 0, 1),
(226, 'Uzbekistan', 'UZ', 'UZB', '', 0, 1),
(227, 'Vanuatu', 'VU', 'VUT', '', 0, 1),
(228, 'Vatican City State (Holy See)', 'VA', 'VAT', '', 0, 1),
(229, 'Venezuela', 'VE', 'VEN', '', 0, 1),
(230, 'Viet Nam', 'VN', 'VNM', '', 0, 1),
(231, 'Virgin Islands (British)', 'VG', 'VGB', '', 0, 1),
(232, 'Virgin Islands (U.S.)', 'VI', 'VIR', '', 0, 1),
(233, 'Wallis and Futuna Islands', 'WF', 'WLF', '', 0, 1),
(234, 'Western Sahara', 'EH', 'ESH', '', 0, 1),
(235, 'Yemen', 'YE', 'YEM', '', 0, 1),
(237, 'Democratic Republic of Congo', 'CD', 'COD', '', 0, 1),
(238, 'Zambia', 'ZM', 'ZMB', '', 0, 1),
(239, 'Zimbabwe', 'ZW', 'ZWE', '', 0, 1),
(242, 'Montenegro', 'ME', 'MNE', '', 0, 1),
(243, 'Serbia', 'RS', 'SRB', '', 0, 1),
(244, 'Aaland Islands', 'AX', 'ALA', '', 0, 1),
(245, 'Bonaire, Sint Eustatius and Saba', 'BQ', 'BES', '', 0, 1),
(246, 'Curacao', 'CW', 'CUW', '', 0, 1),
(247, 'Palestinian Territory, Occupied', 'PS', 'PSE', '', 0, 1),
(248, 'South Sudan', 'SS', 'SSD', '', 0, 1),
(249, 'St. Barthelemy', 'BL', 'BLM', '', 0, 1),
(250, 'St. Martin (French part)', 'MF', 'MAF', '', 0, 1),
(251, 'Canary Islands', 'IC', 'ICA', '', 0, 1),
(252, 'Ascension Island (British)', 'AC', 'ASC', '', 0, 1),
(253, 'Kosovo, Republic of', 'XK', 'UNK', '', 0, 1),
(254, 'Isle of Man', 'IM', 'IMN', '', 0, 1),
(255, 'Tristan da Cunha', 'TA', 'SHN', '', 0, 1),
(256, 'Guernsey', 'GG', 'GGY', '', 0, 1),
(257, 'Jersey', 'JE', 'JEY', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon`
--

CREATE TABLE IF NOT EXISTS `oc_coupon` (
  `coupon_id` int(11) NOT NULL AUTO_INCREMENT,
  `seller_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(10) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `oc_coupon`
--

INSERT INTO `oc_coupon` (`coupon_id`, `seller_id`, `name`, `code`, `type`, `discount`, `logged`, `shipping`, `total`, `date_start`, `date_end`, `uses_total`, `uses_customer`, `status`, `date_added`) VALUES
(4, 0, '-10% Discount', '2222', 'P', '10.0000', 0, 0, '0.0000', '2014-01-01', '2020-01-01', 10, '10', 0, '2009-01-27 13:55:03'),
(5, 0, 'Free Shipping', '3333', 'P', '0.0000', 0, 1, '100.0000', '2014-01-01', '2014-02-01', 10, '10', 0, '2009-03-14 21:13:53'),
(6, 0, '-10.00 Discount', '1111', 'F', '10.0000', 0, 0, '10.0000', '2014-01-01', '2020-01-01', 100000, '10000', 0, '2009-03-14 21:15:18');

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_category`
--

CREATE TABLE IF NOT EXISTS `oc_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_history`
--

CREATE TABLE IF NOT EXISTS `oc_coupon_history` (
  `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_product`
--

CREATE TABLE IF NOT EXISTS `oc_coupon_product` (
  `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_currency`
--

CREATE TABLE IF NOT EXISTS `oc_currency` (
  `currency_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` float(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`currency_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `oc_currency`
--

INSERT INTO `oc_currency` (`currency_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_place`, `value`, `status`, `date_modified`) VALUES
(1, 'Pound Sterling', 'GBP', '£', '', '2', 0.75669998, 1, '2017-10-31 07:23:42'),
(2, 'US Dollar', 'USD', '$', '', '2', 1.00000000, 1, '2018-01-29 14:15:08'),
(3, 'Euro', 'EUR', '', '€', '2', 0.85900003, 1, '2017-10-31 07:23:42'),
(4, 'Indian Rupee', 'INR', '', '', '2', 63.84000015, 1, '2018-01-17 12:02:24');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer`
--

CREATE TABLE IF NOT EXISTS `oc_customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_group_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text,
  `wishlist` text,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `address_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `sellerapprove` tinyint(1) NOT NULL,
  `is_online` tinyint(1) NOT NULL DEFAULT '0',
  `safe` tinyint(1) NOT NULL,
  `token` text NOT NULL,
  `code` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=48 ;

--
-- Dumping data for table `oc_customer`
--

INSERT INTO `oc_customer` (`customer_id`, `customer_group_id`, `store_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `password`, `salt`, `cart`, `wishlist`, `newsletter`, `address_id`, `custom_field`, `ip`, `status`, `approved`, `sellerapprove`, `is_online`, `safe`, `token`, `code`, `date_added`) VALUES
(1, 1, 0, 'daniel', 'ebenazer', 'danielabraham007@gmail.com', '9894471306', '9894471306', '0df8f2e319f769c51265d52718be0e9c1da83518', 'dbOiwd99u', NULL, NULL, 0, 0, '', '203.223.190.76', 1, 1, 1, 1, 0, '', 'VNJqSPY5XWtiGSf35fyuNF1jmiYX768ZFhv3zNNX', '2017-08-09 01:40:16'),
(4, 1, 0, '1', '1', '1111@1.in', '111', '1', '5f9f4ae9b34d5e8612cd90b88731c517cce4449d', '5oiCvS9Ta', NULL, NULL, 0, 7, '[]', '203.223.190.76', 1, 1, 1, 0, 0, '', '', '2017-09-16 04:10:09'),
(2, 1, 0, 'shankar', 'ganesh', 'test@test.com', '9995454232', '', 'a99cf3af10e4e18d99baa532008422319d4bd88e', '6PWp1LloS', NULL, NULL, 0, 0, '{"1":"df13f6a34bcdc5fe5b9d046e7081756dd6a2bc48"}', '157.50.20.86', 1, 1, 1, 0, 0, '', '', '2017-08-09 01:51:05'),
(31, 1, 0, 'karthi', 'seller', 'karthikalichamy@gmail.com', '9876543218', '986745612', '0df8f2e319f769c51265d52718be0e9c1da83518', 'dbOiwd99u', NULL, NULL, 0, 40, '', '203.223.190.17', 1, 1, 0, 0, 0, '', '', '2017-11-27 05:44:15'),
(5, 1, 0, '1', '1', '1111@11.in', '1111', '', '4cc48dbd3e5f176a8e60f359729112390c7b7609', 'YBH1eKhCs', NULL, NULL, 1, 9, '[]', '113.193.131.10', 1, 1, 1, 0, 0, '', '', '2017-09-16 05:35:00'),
(6, 1, 0, '1!', '1!', 'qq@qq.in', 'aaa', '', 'f8afcc9c76bb4cc617031554490459945f903338', 'KST0SK5vX', NULL, NULL, 0, 10, '[]', '203.223.190.76', 1, 1, 1, 0, 0, '', '', '2017-09-16 05:51:19'),
(7, 1, 0, '1!', '1!', 'qq@qqq.in', 'aaa', '', '80667f65d6fc1265476df252794b9f386a10be34', 'exi9a3hXX', NULL, NULL, 0, 11, '', '113.193.131.10', 1, 1, 0, 0, 0, '', '', '2017-09-16 05:56:05'),
(11, 1, 0, 'Test customer', 'Test customer', 'test123@test.com', '1234567980', '', '00bd0d52e41dc7b2db7c806d487c33322c484c91', '1lj0hW2m5', NULL, NULL, 0, 15, '[]', '49.205.40.2', 1, 1, 0, 0, 0, '', '', '2017-09-18 00:10:53'),
(8, 1, 0, '1!', '1!', 'aaqq@qqq.in', 'aaa', '', 'f5eb041e152415d1f0245ee0744fe12e3b5e2269', 'NFqUX23CW', NULL, NULL, 0, 12, '', '113.193.131.10', 1, 1, 0, 0, 0, '', '', '2017-09-16 06:08:00'),
(9, 1, 0, '1!', '1!', 'qqqqqq@qq.in', '1111', '1', 'b573b0d4937e0bf009566cf74d2edc866a5ce8db', 'CNNWFP9IA', NULL, NULL, 0, 13, '', '113.193.131.10', 1, 1, 0, 0, 0, '', '', '2017-09-16 06:15:32'),
(10, 1, 0, '1!', '1!', 'qqqqqqq@qq.in', 'aaa', '1', '7dc31f4495db7fd82d1414d0ffbf4f74d62401be', 'gtx0yo81b', NULL, NULL, 0, 14, '', '113.193.131.10', 1, 1, 0, 0, 0, '', '', '2017-09-16 06:16:27'),
(12, 1, 0, 'Bala', 'RS', 'balars@ixly.in', '9876543210', '1111', '8868a96afbfc659fec17ff6c69de1716f25166b9', 'e9H8LMFR5', NULL, NULL, 0, 16, '[]', '203.223.190.76', 1, 1, 1, 1, 1, '', 'QTiSOefznQRjJOU1z5e1LGbSQb6P2ESAvKPxTxxx', '2017-09-18 04:51:43'),
(13, 1, 0, '1@@', '1@@', 'vv@vv.in', '1111', '2222', '777c37aa52ce5d4bda401dbd034e56f3f18914d9', 'wQIfhBSoo', NULL, NULL, 0, 19, '[]', '203.223.190.76', 1, 1, 0, 0, 0, '', '', '2017-09-19 07:20:18'),
(14, 1, 0, '11', '11', '11@11.in', '111', '11', 'f7232192248c21b05270b55a3b01a2a5f3ed4ae5', 'qJAM50oYF', NULL, NULL, 0, 20, '', '1.23.1.25', 1, 1, 0, 0, 0, '', '', '2017-09-21 07:16:26'),
(15, 1, 0, 'kumar', 'rajesh', 'aaa@gmail.com', '9133199242', '', '4d5b94d67c834ddf5a8423d59af55ce34fdf3fa3', 'iwuZoutiS', NULL, NULL, 1, 21, '', '49.205.42.106', 1, 1, 0, 0, 0, '', '', '2017-09-27 06:37:17'),
(16, 1, 0, '123abc', '123abc', '123abc@a.in', '11111111111111', '11', '2a610c525c5498567716821fdd03b0e643c888b3', 'vUNl6VnCF', NULL, NULL, 0, 23, '', '203.223.190.17', 1, 1, 0, 0, 0, '', '', '2017-10-05 10:34:04'),
(17, 1, 0, '1!', '1!', 'qq@a.in', '1111111111', 'aaaa', 'aea62a86d2c6010d91b6497e36ea5bdc3515283d', 'fWWxP78W9', NULL, NULL, 0, 24, '', '203.223.190.17', 1, 1, 0, 0, 0, '', '', '2017-10-06 05:10:18'),
(18, 1, 0, '1@', '1@', 'qq@aaaa.in', '1111111111', 'aa', '78236ebab34d86a9867b427e78f86230445a7591', 'MxlziKtIG', NULL, NULL, 0, 25, '', '203.223.190.17', 1, 1, 0, 0, 0, '', '', '2017-10-06 05:15:06'),
(19, 1, 0, '1@', '1@@', '123a@a.in', '1111111111', '11', 'a00158a7b9d249b0d8f01661ad3ae75cf6ad284d', 'hlve6fT6N', NULL, NULL, 0, 26, '', '203.223.190.17', 1, 1, 0, 0, 0, '', '', '2017-10-06 06:04:32'),
(20, 1, 0, 'daniel', 'ebenazer', 'daniel@ixly.in', '9894471306', '9894471306', '90bb65b8d190bde46598ad4e558a2d669367db6a', 'gMbp3zwwn', NULL, NULL, 0, 29, '', '203.223.190.17', 1, 1, 0, 0, 0, '', '', '2017-10-09 09:33:48'),
(21, 1, 0, 'Test user', 'Test User', 'testuser@gmail.com', '1234567890', '123456', '7fbd1d02d562c2d49ad5bc69b65470f3ad512487', 'TMLql59Py', NULL, NULL, 0, 30, '', '49.205.50.99', 1, 1, 0, 0, 0, '', '', '2017-10-10 02:16:16'),
(22, 1, 0, 'Test user', 'Test User', 'testuser1@gmail.com', '1234567890', '123456', '80002ea326501e63605f4844bbbd708efb2bdf63', '3ZPebylMC', NULL, NULL, 0, 31, '', '49.205.42.106', 1, 1, 0, 0, 0, '', '', '2017-10-10 02:22:08'),
(24, 1, 0, 'kumar', 'ambani', 'mahinoorspares@gmail.com', '9133199242', '8217624441', 'f4bdc776fd2ce790894bfff334a562ae5a984c01', '3L2E2sUr3', NULL, NULL, 1, 33, '', '45.119.170.190', 1, 1, 0, 0, 0, '', '', '2017-10-12 21:46:37'),
(25, 1, 0, 'Seilesh', 'Kumaar', 'seileshkumaar@gmail.com', '8015573393', '8015573393', 'df68b29ba149091d7b8eb45daefc79ac8dcb20b3', '4yUqQDlLS', NULL, NULL, 0, 34, '', '203.223.190.17', 1, 1, 1, 0, 0, '', '', '2017-10-31 02:06:20'),
(26, 1, 0, 'Test', 'Company', 'mahinoorrocks@rediffmail.com', '9980360910', '', '145085d7c32abcf8e2abe6b927ded00e057bdd49', 'uA1Qfvd3o', NULL, NULL, 1, 35, '', '103.203.173.111', 1, 1, 0, 0, 0, '', '', '2017-11-01 07:24:04'),
(27, 1, 0, 'karthi', 'k', 'karthik.hbk24@gmail.com', '80566945124', '', '8586e44d02473773227f15c1f4139ec4ae97f4ce', 'ExZ5WG14H', NULL, NULL, 1, 36, '', '203.223.190.17', 1, 1, 0, 0, 0, '', '', '2017-11-08 05:11:22'),
(28, 1, 0, 'srinivasan', 'srini', 'srinivasan0716@gmail.com', '9865321245', '', '74a989e3da8fc637eb9b849ee0838507b57f0e44', 'KSmYzM2bi', NULL, NULL, 1, 37, '[]', '203.223.190.17', 0, 1, 0, 0, 0, '', '6eB6bVfFT8vxm6czwOgg2ObBBdA8wUn26drScEv5', '2017-11-08 05:33:49'),
(29, 1, 0, 'karthi', 'k', 'karthi@ixly.in', '9865321014', '', '52bcff75c1f089d80d77148189fde17ba25ace31', 'Ubot56dEx', NULL, NULL, 1, 38, '', '203.223.190.17', 1, 1, 0, 1, 0, '', '', '2017-11-08 05:48:52'),
(30, 1, 0, 'Syed', 'Basha test', 'syedjeelan006@gmail.com', '8217624441', '8217624441', '7bf32863bc1eb2f287b1c2bc507f79315f3fa5b4', 'sMWuRMbVI', NULL, NULL, 1, 39, '', '117.199.251.240', 1, 1, 1, 1, 0, '', '', '2017-11-11 06:35:33'),
(32, 1, 0, '1', '1', '12345@ixly.in', '9999999999', '', '62e1571fdea5baeffe77662dcc9342674e102cc1', 'H6fqfEGO1', NULL, NULL, 1, 41, '[]', '203.223.190.76', 1, 1, 1, 0, 0, '', '', '2017-11-28 00:18:02'),
(33, 1, 0, '1', '1', '123456@1.in', '1111111112', '1', '1e728b5ced35dc686560b5ccbcc2a57f5d4a0bcf', 'L4kbz62y1', NULL, NULL, 1, 42, '[]', '203.223.190.17', 1, 1, 1, 0, 0, '', '', '2017-11-29 01:34:12'),
(34, 1, 0, 'srinivasan', 'R T S', 'srinivasan@ixly.in', '1212545687', '1212545687', 'a51349b7ad4f4a87703ac69de7d18586bbdb588c', 'wH4wCT7xr', NULL, NULL, 1, 43, '[]', '203.223.190.17', 1, 1, 0, 1, 0, '', '', '2017-12-14 05:03:09'),
(35, 1, 0, 'ixlybala', 'ixlybala', 'ixlybala@ixly.in', '1234567899', '1234567899', '1f20f8b58715c00235dfeb5c258b15cc6037cb61', 'yJ5o0gADv', NULL, NULL, 1, 44, '', '203.223.190.17', 1, 1, 0, 0, 0, '', '', '2017-12-18 01:35:21'),
(36, 1, 0, 'ixlybalatest@ixly.in', 'ixlybalatest@ixly.in', 'ixlybalatest@ixly.in', '0012345678', '0012345756', '8242e46beb46f5654d52c2349494270ad35dba0c', '0gOuFRQhr', NULL, NULL, 1, 45, '', '203.223.190.17', 1, 1, 0, 0, 0, '', '', '2017-12-19 00:06:37'),
(37, 1, 0, 'Test', 'Test', 'test@1234.com', '0012134456', '0012134456', '2e76068aedb12f9f30b51675a50beb4b60f2cac7', 'g1hrez8OM', NULL, NULL, 1, 46, '', '203.223.190.76', 1, 1, 0, 0, 0, '', '', '2018-01-02 08:24:09'),
(39, 1, 0, 'Balachandar', 'K', '12345bala@ixly.in', '2314567890', '2314567890', '8e67589addf343e7df3ed06fa56423341e69bdc5', 'R3B35nA9S', NULL, NULL, 1, 48, '', '203.223.190.76', 1, 1, 1, 0, 0, '', '', '2018-01-04 06:51:36'),
(42, 1, 0, 'storestone', 'storestone', 'storestone@g.in', '9500428708', '9500428708', 'dbac6640712127bd0eb1afbc3349e6ab14997c3f', '9aMGgxsjV', NULL, NULL, 1, 51, '', '203.223.190.76', 1, 1, 0, 0, 0, '', '', '2018-01-06 03:46:57'),
(40, 1, 0, 'krishna', 'm', 'krishna.ixly@gmail.com', '9942518721', '0422264656', '00079b9b28d627a6ee0a85185c83667fe560f322', 'piWNwGN2V', NULL, NULL, 0, 49, '', '203.223.190.76', 1, 1, 1, 0, 0, '', '', '2018-01-05 00:39:44'),
(41, 1, 0, 'testkaro', 'testkaro', 'testkaro@ixly.in', '2132435465', '2132435465', '4f2cab4daf63306732ffcc9486cf411d1a485f61', 'o4qgVeUWy', NULL, NULL, 1, 50, '', '203.223.190.76', 1, 1, 0, 0, 0, '', '', '2018-01-05 06:42:11'),
(43, 1, 0, 'stone', 'stone', 'stone@g.in', '1212545680', '1212545687', '8712ccb3ed07cf12186340439e0cf0d2ca434cd6', 'XILEmzREM', NULL, NULL, 1, 52, '', '203.223.190.76', 1, 1, 0, 0, 0, '', '', '2018-01-06 03:50:50'),
(44, 1, 0, 'Balachandar', 'K', 'bala@ixly.in', '1212121212', '9500428708', '5d1ea9774ea892f36b0f2c05a7a951cdddfd35a6', 'Fb2zUTdyX', NULL, NULL, 1, 53, '[]', '203.223.190.76', 0, 1, 0, 0, 0, '', '', '2018-01-08 01:56:17'),
(46, 1, 0, 'Syed Jeelan', 'Basha', 'syedjeelan007@gmail.com', '9964173601', '9964173601', '1cacf0d6f0bbd0cacd16479c547e12c3a570295f', 'YJhQFMhda', NULL, NULL, 1, 55, '[]', '117.199.252.130', 1, 1, 1, 0, 0, '', '', '2018-01-16 00:21:25'),
(45, 1, 0, 'dadapeer', 'Syed', 'syeddadapeer786@gmail.com', '7760148484', '', '54e4ef4b47f131953100c34c471ffd5112129863', 'whzOzCVi2', NULL, NULL, 1, 54, '', '103.203.173.114', 1, 1, 0, 0, 0, '', '', '2018-01-11 10:06:28');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_activity`
--

CREATE TABLE IF NOT EXISTS `oc_customer_activity` (
  `customer_activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_activity_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=493 ;

--
-- Dumping data for table `oc_customer_activity`
--

INSERT INTO `oc_customer_activity` (`customer_activity_id`, `customer_id`, `key`, `data`, `ip`, `date_added`) VALUES
(1, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '113.193.131.10', '2017-08-09 01:42:03'),
(2, 2, 'login', '{"customer_id":"2","name":"shankar ganesh"}', '122.178.146.172', '2017-08-09 01:51:25'),
(3, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '122.178.146.172', '2017-08-09 01:53:25'),
(4, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '122.178.146.172', '2017-08-09 01:54:34'),
(5, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '113.193.131.10', '2017-08-09 02:29:13'),
(6, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '113.193.131.10', '2017-08-09 02:45:35'),
(7, 2, 'login', '{"customer_id":"2","name":"shankar ganesh"}', '122.178.146.172', '2017-08-10 00:34:59'),
(8, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '113.193.131.10', '2017-08-10 02:12:19'),
(9, 3, 'register', '{"customer_id":3,"name":"Syed Jeelan Basha"}', '103.200.41.14', '2017-08-16 13:28:59'),
(10, 2, 'login', '{"customer_id":"2","name":"shankar ganesh"}', '122.178.123.128', '2017-08-18 01:16:36'),
(11, 2, 'login', '{"customer_id":"2","name":"shankar ganesh"}', '122.178.123.128', '2017-08-18 02:55:38'),
(12, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '113.193.131.10', '2017-08-18 07:32:53'),
(13, 2, 'login', '{"customer_id":"2","name":"shankar ganesh"}', '122.178.176.110', '2017-08-20 23:23:33'),
(14, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '113.193.131.10', '2017-08-21 02:10:01'),
(15, 2, 'login', '{"customer_id":"2","name":"shankar ganesh"}', '122.178.176.110', '2017-08-21 02:46:28'),
(16, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '113.193.131.10', '2017-08-21 02:51:38'),
(17, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '113.193.131.10', '2017-08-21 06:56:56'),
(18, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '113.193.131.10', '2017-08-21 07:08:52'),
(19, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '113.193.131.10', '2017-08-21 07:10:54'),
(20, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '113.193.131.10', '2017-08-21 07:26:31'),
(21, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '113.193.131.10', '2017-08-22 00:26:12'),
(22, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '113.193.131.10', '2017-08-22 01:16:16'),
(23, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '113.193.131.10', '2017-08-22 02:11:48'),
(24, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '113.193.131.10', '2017-08-23 03:11:52'),
(25, 2, 'login', '{"customer_id":"2","name":"shankar ganesh"}', '49.205.63.177', '2017-08-30 20:56:06'),
(26, 2, 'login', '{"customer_id":"2","name":"shankar ganesh"}', '49.205.63.177', '2017-08-31 00:03:02'),
(27, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '113.193.131.10', '2017-08-31 06:43:38'),
(28, 2, 'login', '{"customer_id":"2","name":"shankar ganesh"}', '49.205.57.16', '2017-08-31 23:10:10'),
(29, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '113.193.131.10', '2017-09-01 01:47:40'),
(30, 2, 'login', '{"customer_id":"2","name":"shankar ganesh"}', '49.205.62.75', '2017-09-04 23:15:49'),
(31, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '49.205.62.75', '2017-09-05 02:31:04'),
(32, 2, 'login', '{"customer_id":"2","name":"shankar ganesh"}', '49.205.62.75', '2017-09-05 02:32:57'),
(33, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '113.193.131.10', '2017-09-05 02:43:08'),
(34, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '113.193.131.10', '2017-09-05 04:21:06'),
(35, 2, 'login', '{"customer_id":"2","name":"shankar ganesh"}', '49.205.54.244', '2017-09-12 03:22:34'),
(36, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '49.205.54.244', '2017-09-12 04:02:26'),
(37, 2, 'login', '{"customer_id":"2","name":"shankar ganesh"}', '49.205.54.244', '2017-09-12 04:12:15'),
(38, 2, 'login', '{"customer_id":"2","name":"shankar ganesh"}', '49.205.39.56', '2017-09-13 01:26:30'),
(39, 2, 'login', '{"customer_id":"2","name":"shankar ganesh"}', '49.205.39.56', '2017-09-13 01:28:09'),
(40, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '49.205.39.56', '2017-09-13 03:00:39'),
(41, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '113.193.131.10', '2017-09-13 07:16:19'),
(42, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '49.205.44.88', '2017-09-13 23:17:15'),
(43, 2, 'login', '{"customer_id":"2","name":"shankar ganesh"}', '49.205.44.88', '2017-09-13 23:19:11'),
(44, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '113.193.131.10', '2017-09-14 08:32:46'),
(45, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '113.193.131.10', '2017-09-15 06:05:12'),
(46, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '113.193.131.10', '2017-09-15 06:10:18'),
(47, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '113.193.131.10', '2017-09-15 07:14:42'),
(48, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '113.193.131.10', '2017-09-15 07:18:06'),
(49, 1, 'password', '{"customer_id":"1","name":"daniel ebenazer"}', '113.193.131.10', '2017-09-15 07:20:16'),
(50, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '113.193.131.10', '2017-09-15 08:01:16'),
(51, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '103.206.140.245', '2017-09-15 08:42:24'),
(52, 1, 'edit', '{"customer_id":"1","name":"daniel ebenazer"}', '103.206.140.245', '2017-09-15 08:47:14'),
(53, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '113.193.131.10', '2017-09-16 04:02:51'),
(54, 4, 'register', '{"customer_id":4,"name":"1 1"}', '113.193.131.10', '2017-09-16 04:10:10'),
(55, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '113.193.131.10', '2017-09-16 04:17:58'),
(56, 4, 'address_add', '{"customer_id":"4","name":"1 1"}', '113.193.131.10', '2017-09-16 04:20:49'),
(57, 4, 'login', '{"customer_id":"4","name":"1 1"}', '113.193.131.10', '2017-09-16 04:25:18'),
(58, 4, 'login', '{"customer_id":"4","name":"1 1"}', '113.193.131.10', '2017-09-16 05:00:27'),
(59, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '113.193.131.10', '2017-09-16 05:08:48'),
(60, 5, 'register', '{"customer_id":5,"name":"1 1"}', '113.193.131.10', '2017-09-16 05:35:00'),
(61, 6, 'register', '{"customer_id":6,"name":"1! 1!"}', '113.193.131.10', '2017-09-16 05:51:19'),
(62, 7, 'register', '{"customer_id":7,"name":"1! 1!"}', '113.193.131.10', '2017-09-16 05:56:05'),
(63, 8, 'register', '{"customer_id":8,"name":"1! 1!"}', '113.193.131.10', '2017-09-16 06:08:00'),
(64, 9, 'register', '{"customer_id":9,"name":"1! 1!"}', '113.193.131.10', '2017-09-16 06:15:32'),
(65, 10, 'register', '{"customer_id":10,"name":"1! 1!"}', '113.193.131.10', '2017-09-16 06:16:28'),
(66, 2, 'login', '{"customer_id":"2","name":"shankar ganesh"}', '49.205.50.38', '2017-09-16 09:22:47'),
(67, 2, 'login', '{"customer_id":"2","name":"shankar ganesh"}', '157.50.21.180', '2017-09-16 12:09:49'),
(68, 2, 'login', '{"customer_id":"2","name":"shankar ganesh"}', '157.50.21.180', '2017-09-16 13:45:40'),
(69, 2, 'login', '{"customer_id":"2","name":"shankar ganesh"}', '49.205.40.2', '2017-09-16 22:35:03'),
(70, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '49.205.40.2', '2017-09-16 23:23:53'),
(71, 2, 'login', '{"customer_id":"2","name":"shankar ganesh"}', '49.205.40.2', '2017-09-17 10:30:15'),
(72, 2, 'login', '{"customer_id":"2","name":"shankar ganesh"}', '49.205.40.2', '2017-09-17 12:32:25'),
(73, 11, 'register', '{"customer_id":11,"name":"Test customer Test customer"}', '49.205.40.2', '2017-09-18 00:10:54'),
(74, 6, 'login', '{"customer_id":"6","name":"1! 1!"}', '113.193.131.10', '2017-09-18 04:44:47'),
(75, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '113.193.131.10', '2017-09-18 04:45:49'),
(76, 12, 'register', '{"customer_id":12,"name":"Bala RS"}', '113.193.131.10', '2017-09-18 04:51:43'),
(77, 12, 'forgotten', '{"customer_id":"12","name":"Bala RS"}', '113.193.131.10', '2017-09-18 04:52:11'),
(78, 12, 'reset', '{"customer_id":"12","name":"Bala RS"}', '113.193.131.10', '2017-09-18 04:52:54'),
(79, 12, 'login', '{"customer_id":"12","name":"Bala RS"}', '113.193.131.10', '2017-09-18 04:53:28'),
(80, 12, 'forgotten', '{"customer_id":"12","name":"Bala RS"}', '113.193.131.10', '2017-09-18 04:53:58'),
(81, 12, 'reset', '{"customer_id":"12","name":"Bala RS"}', '113.193.131.10', '2017-09-18 04:54:49'),
(82, 12, 'login', '{"customer_id":"12","name":"Bala RS"}', '113.193.131.10', '2017-09-18 04:55:36'),
(83, 12, 'forgotten', '{"customer_id":"12","name":"Bala RS"}', '113.193.131.10', '2017-09-18 04:58:02'),
(84, 12, 'reset', '{"customer_id":"12","name":"Bala RS"}', '113.193.131.10', '2017-09-18 04:59:20'),
(85, 12, 'login', '{"customer_id":"12","name":"Bala RS"}', '113.193.131.10', '2017-09-18 04:59:44'),
(86, 12, 'login', '{"customer_id":"12","name":"Bala RS"}', '113.193.131.10', '2017-09-18 05:44:37'),
(87, 12, 'login', '{"customer_id":"12","name":"Bala RS"}', '113.193.131.10', '2017-09-18 06:03:49'),
(88, 12, 'login', '{"customer_id":"12","name":"Bala RS"}', '113.193.131.10', '2017-09-18 06:19:48'),
(89, 12, 'password', '{"customer_id":"12","name":"Bala RS"}', '113.193.131.10', '2017-09-18 06:37:17'),
(90, 12, 'login', '{"customer_id":"12","name":"Bala RS"}', '113.193.131.10', '2017-09-18 06:37:40'),
(91, 12, 'address_add', '{"customer_id":"12","name":"Bala RS"}', '113.193.131.10', '2017-09-18 07:16:04'),
(92, 12, 'address_add', '{"customer_id":"12","name":"Bala RS"}', '113.193.131.10', '2017-09-18 07:23:12'),
(93, 6, 'login', '{"customer_id":"6","name":"1! 1!"}', '113.193.131.10', '2017-09-18 08:11:35'),
(94, 6, 'login', '{"customer_id":"6","name":"1! 1!"}', '113.193.131.10', '2017-09-18 08:13:48'),
(95, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '113.193.131.10', '2017-09-19 02:46:43'),
(96, 6, 'login', '{"customer_id":"6","name":"1! 1!"}', '113.193.131.10', '2017-09-19 06:17:45'),
(97, 13, 'register', '{"customer_id":13,"name":"1@@ 1@@"}', '113.193.131.10', '2017-09-19 07:20:18'),
(98, 6, 'login', '{"customer_id":"6","name":"1! 1!"}', '113.193.131.10', '2017-09-19 07:21:05'),
(99, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '113.193.131.10', '2017-09-19 08:19:33'),
(100, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '113.193.131.10', '2017-09-20 00:50:46'),
(101, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '122.178.95.237', '2017-09-20 04:43:15'),
(102, 14, 'register', '{"customer_id":14,"name":"11 11"}', '1.23.1.25', '2017-09-21 07:16:27'),
(103, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '113.193.131.114', '2017-09-22 02:50:18'),
(104, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '113.193.131.114', '2017-09-22 06:56:16'),
(105, 2, 'login', '{"customer_id":"2","name":"shankar ganesh"}', '157.50.12.3', '2017-09-23 05:37:12'),
(106, 2, 'login', '{"customer_id":"2","name":"shankar ganesh"}', '157.50.13.136', '2017-09-23 09:46:39'),
(107, 2, 'login', '{"customer_id":"2","name":"shankar ganesh"}', '157.50.13.136', '2017-09-23 09:48:24'),
(108, 2, 'login', '{"customer_id":"2","name":"shankar ganesh"}', '157.50.13.136', '2017-09-23 10:05:57'),
(109, 2, 'login', '{"customer_id":"2","name":"shankar ganesh"}', '49.205.38.202', '2017-09-25 23:07:24'),
(110, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.76', '2017-09-26 02:18:39'),
(111, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.76', '2017-09-26 08:39:13'),
(112, 2, 'login', '{"customer_id":"2","name":"shankar ganesh"}', '49.205.34.33', '2017-09-26 23:51:41'),
(113, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.76', '2017-09-27 00:38:59'),
(114, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '157.50.10.228', '2017-09-27 03:18:55'),
(115, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '59.95.67.217', '2017-09-27 05:28:40'),
(116, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '59.95.67.217', '2017-09-27 06:18:08'),
(117, 15, 'register', '{"customer_id":15,"name":"kumar rajesh"}', '59.95.67.217', '2017-09-27 06:37:17'),
(118, 3, 'login', '{"customer_id":"3","name":"Syed Jeelan Basha"}', '157.49.4.232', '2017-09-29 08:45:26'),
(119, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.17', '2017-10-02 08:38:10'),
(120, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '103.200.41.14', '2017-10-02 10:56:07'),
(121, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '103.200.41.14', '2017-10-02 11:02:32'),
(122, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.17', '2017-10-03 08:10:17'),
(123, 12, 'forgotten', '{"customer_id":"12","name":"Bala RS"}', '203.223.190.17', '2017-10-05 05:21:04'),
(124, 12, 'reset', '{"customer_id":"12","name":"Bala RS"}', '203.223.190.17', '2017-10-05 05:22:48'),
(125, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.17', '2017-10-05 05:25:50'),
(126, 1, 'address_add', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.17', '2017-10-05 05:28:49'),
(127, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.17', '2017-10-05 06:01:11'),
(128, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.17', '2017-10-05 09:20:31'),
(129, 16, 'register', '{"customer_id":16,"name":"123abc 123abc"}', '203.223.190.17', '2017-10-05 10:34:04'),
(130, 16, 'login', '{"customer_id":"16","name":"123abc 123abc"}', '203.223.190.17', '2017-10-05 10:40:15'),
(131, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.17', '2017-10-05 11:32:46'),
(132, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.17', '2017-10-05 11:33:45'),
(133, 16, 'login', '{"customer_id":"16","name":"123abc 123abc"}', '203.223.190.17', '2017-10-05 11:34:21'),
(134, 16, 'login', '{"customer_id":"16","name":"123abc 123abc"}', '203.223.190.17', '2017-10-05 11:34:52'),
(135, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.17', '2017-10-05 11:36:22'),
(136, 3, 'login', '{"customer_id":"3","name":"Syed Jeelan Basha"}', '117.216.177.109', '2017-10-06 04:56:28'),
(137, 17, 'register', '{"customer_id":17,"name":"1! 1!"}', '203.223.190.17', '2017-10-06 05:10:19'),
(138, 18, 'register', '{"customer_id":18,"name":"1@ 1@"}', '203.223.190.17', '2017-10-06 05:15:06'),
(139, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '117.216.177.109', '2017-10-06 05:17:54'),
(140, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '117.216.177.109', '2017-10-06 05:34:26'),
(141, 19, 'register', '{"customer_id":19,"name":"1@ 1@@"}', '203.223.190.17', '2017-10-06 06:04:32'),
(142, 16, 'login', '{"customer_id":"16","name":"123abc 123abc"}', '203.223.190.17', '2017-10-06 07:20:29'),
(143, 16, 'login', '{"customer_id":"16","name":"123abc 123abc"}', '203.223.190.17', '2017-10-06 07:34:53'),
(144, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.17', '2017-10-06 08:12:03'),
(145, 16, 'login', '{"customer_id":"16","name":"123abc 123abc"}', '203.223.190.17', '2017-10-07 01:07:52'),
(146, 4, 'login', '{"customer_id":"4","name":"1 1"}', '203.223.190.17', '2017-10-07 01:23:49'),
(147, 12, 'login', '{"customer_id":"12","name":"Bala RS"}', '203.223.190.17', '2017-10-07 01:27:18'),
(148, 12, 'address_add', '{"customer_id":"12","name":"Bala RS"}', '203.223.190.17', '2017-10-07 02:40:06'),
(149, 12, 'address_add', '{"customer_id":"12","name":"Bala RS"}', '203.223.190.17', '2017-10-07 02:44:42'),
(150, 16, 'login', '{"customer_id":"16","name":"123abc 123abc"}', '203.223.190.17', '2017-10-07 03:09:16'),
(151, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.17', '2017-10-07 03:28:01'),
(152, 12, 'login', '{"customer_id":"12","name":"Bala RS"}', '203.223.190.17', '2017-10-07 03:44:22'),
(153, 1, 'forgotten', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.17', '2017-10-09 09:30:06'),
(154, 1, 'reset', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.17', '2017-10-09 09:31:08'),
(155, 1, 'forgotten', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.17', '2017-10-09 09:31:37'),
(156, 1, 'reset', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.17', '2017-10-09 09:32:22'),
(157, 20, 'register', '{"customer_id":20,"name":"daniel ebenazer"}', '203.223.190.17', '2017-10-09 09:33:48'),
(158, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.17', '2017-10-09 12:15:01'),
(159, 2, 'login', '{"customer_id":"2","name":"shankar ganesh"}', '49.205.42.106', '2017-10-10 01:45:05'),
(160, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '202.133.71.66', '2017-10-10 01:59:52'),
(161, 21, 'register', '{"customer_id":21,"name":"Test user Test User"}', '49.205.42.106', '2017-10-10 02:16:16'),
(162, 22, 'register', '{"customer_id":22,"name":"Test user Test User"}', '49.205.42.106', '2017-10-10 02:22:09'),
(163, 21, 'login', '{"customer_id":"21","name":"Test user Test User"}', '49.205.42.106', '2017-10-10 02:22:43'),
(164, 2, 'login', '{"customer_id":"2","name":"shankar ganesh"}', '49.205.42.106', '2017-10-10 02:23:11'),
(165, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '103.200.41.14', '2017-10-10 23:52:45'),
(166, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '103.200.41.14', '2017-10-11 00:04:05'),
(167, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.17', '2017-10-11 00:57:02'),
(168, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.17', '2017-10-11 01:05:15'),
(169, 2, 'login', '{"customer_id":"2","name":"shankar ganesh"}', '49.205.50.99', '2017-10-11 02:02:59'),
(170, 2, 'login', '{"customer_id":"2","name":"shankar ganesh"}', '49.205.50.99', '2017-10-11 02:21:44'),
(171, 21, 'login', '{"customer_id":"21","name":"Test user Test User"}', '49.205.50.99', '2017-10-11 02:49:45'),
(172, 2, 'login', '{"customer_id":"2","name":"shankar ganesh"}', '49.205.50.99', '2017-10-11 03:19:41'),
(173, 2, 'login', '{"customer_id":"2","name":"shankar ganesh"}', '49.205.50.99', '2017-10-12 01:09:42'),
(174, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.17', '2017-10-12 07:24:55'),
(175, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '45.119.170.190', '2017-10-12 21:13:34'),
(176, 23, 'register', '{"customer_id":23,"name":"Syed Jeelan Basha"}', '45.119.170.190', '2017-10-12 21:33:07'),
(177, 23, 'login', '{"customer_id":"23","name":"Syed Jeelan Basha"}', '45.119.170.190', '2017-10-12 21:43:03'),
(178, 23, 'edit', '{"customer_id":"23","name":"Syed Jeelan Basha"}', '45.119.170.190', '2017-10-12 21:44:07'),
(179, 24, 'register', '{"customer_id":24,"name":"kumar ambani"}', '45.119.170.190', '2017-10-12 21:46:37'),
(180, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '45.119.170.190', '2017-10-12 21:48:44'),
(181, 23, 'login', '{"customer_id":"23","name":"Syed Jeelan Basha"}', '45.119.170.190', '2017-10-13 00:17:03'),
(182, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '45.119.170.190', '2017-10-13 01:20:41'),
(183, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '45.119.170.190', '2017-10-13 04:48:09'),
(184, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '45.119.170.190', '2017-10-13 06:57:44'),
(185, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.17', '2017-10-13 08:14:34'),
(186, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.17', '2017-10-13 08:21:45'),
(187, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.17', '2017-10-13 08:24:20'),
(188, 2, 'login', '{"customer_id":"2","name":"shankar ganesh"}', '49.205.38.200', '2017-10-14 08:04:02'),
(189, 2, 'login', '{"customer_id":"2","name":"shankar ganesh"}', '49.205.38.200', '2017-10-14 09:01:22'),
(190, 2, 'login', '{"customer_id":"2","name":"shankar ganesh"}', '49.205.38.200', '2017-10-15 12:04:40'),
(191, 2, 'login', '{"customer_id":"2","name":"shankar ganesh"}', '49.205.38.200', '2017-10-15 12:32:34'),
(192, 12, 'login', '{"customer_id":"12","name":"Bala RS"}', '203.223.190.17', '2017-10-16 06:33:58'),
(193, 12, 'login', '{"customer_id":"12","name":"Bala RS"}', '203.223.190.17', '2017-10-16 06:35:20'),
(194, 12, 'login', '{"customer_id":"12","name":"Bala RS"}', '203.223.190.17', '2017-10-16 06:58:01'),
(195, 12, 'login', '{"customer_id":"12","name":"Bala RS"}', '203.223.190.17', '2017-10-16 07:01:28'),
(196, 12, 'login', '{"customer_id":"12","name":"Bala RS"}', '203.223.190.17', '2017-10-16 09:30:04'),
(197, 12, 'login', '{"customer_id":"12","name":"Bala RS"}', '203.223.190.17', '2017-10-16 09:33:44'),
(198, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '117.208.178.39', '2017-10-17 13:09:54'),
(199, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '117.208.178.39', '2017-10-17 20:35:25'),
(200, 1, 'edit', '{"customer_id":"1","name":"daniel ebenazer"}', '117.208.178.39', '2017-10-17 20:39:29'),
(201, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.17', '2017-10-23 02:26:07'),
(202, 2, 'login', '{"customer_id":"2","name":"shankar ganesh"}', '49.205.50.198', '2017-10-30 21:27:03'),
(203, 2, 'login', '{"customer_id":"2","name":"shankar ganesh"}', '49.205.50.198', '2017-10-30 21:28:13'),
(204, 2, 'login', '{"customer_id":"2","name":"shankar ganesh"}', '49.205.50.198', '2017-10-30 21:54:55'),
(205, 25, 'register', '{"customer_id":25,"name":"Seilesh Kumaar"}', '203.223.190.17', '2017-10-31 02:06:20'),
(206, 25, 'login', '{"customer_id":"25","name":"Seilesh Kumaar"}', '203.223.190.17', '2017-10-31 02:11:21'),
(207, 25, 'login', '{"customer_id":"25","name":"Seilesh Kumaar"}', '203.223.190.17', '2017-10-31 02:12:30'),
(208, 25, 'login', '{"customer_id":"25","name":"Seilesh Kumaar"}', '157.50.22.56', '2017-10-31 02:26:16'),
(209, 25, 'login', '{"customer_id":"25","name":"Seilesh Kumaar"}', '157.50.22.56', '2017-10-31 02:29:39'),
(210, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '59.95.67.106', '2017-10-31 03:36:47'),
(211, 26, 'register', '{"customer_id":26,"name":"Test Company"}', '103.203.173.111', '2017-11-01 07:24:04'),
(212, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '103.203.173.111', '2017-11-01 08:58:01'),
(213, 2, 'login', '{"customer_id":"2","name":"shankar ganesh"}', '49.205.50.198', '2017-11-01 23:12:14'),
(214, 2, 'login', '{"customer_id":"2","name":"shankar ganesh"}', '49.205.50.198', '2017-11-01 23:23:09'),
(215, 2, 'edit', '{"customer_id":"2","name":"shankar ganesh"}', '49.205.50.198', '2017-11-01 23:24:15'),
(216, 2, 'login', '{"customer_id":"2","name":"shankar ganesh"}', '49.205.50.198', '2017-11-01 23:27:09'),
(217, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '103.203.173.111', '2017-11-02 01:51:15'),
(218, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.17', '2017-11-06 04:30:57'),
(219, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.17', '2017-11-06 06:26:24'),
(220, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.17', '2017-11-06 06:52:11'),
(221, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.17', '2017-11-06 22:57:40'),
(222, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.17', '2017-11-07 23:27:00'),
(223, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.17', '2017-11-08 00:21:36'),
(224, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.17', '2017-11-08 00:21:39'),
(225, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.17', '2017-11-08 02:39:28'),
(226, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.17', '2017-11-08 05:06:16'),
(227, 27, 'register', '{"customer_id":27,"name":"karthi k"}', '203.223.190.17', '2017-11-08 05:11:22'),
(228, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.17', '2017-11-08 05:13:58'),
(229, 28, 'register', '{"customer_id":28,"name":"srinivasan srini"}', '203.223.190.17', '2017-11-08 05:33:51'),
(230, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.17', '2017-11-08 05:37:12'),
(231, 29, 'register', '{"customer_id":29,"name":"karthi k"}', '203.223.190.17', '2017-11-08 05:48:53'),
(232, 29, 'login', '{"customer_id":"29","name":"karthi k"}', '203.223.190.17', '2017-11-08 05:52:33'),
(233, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '103.203.173.125', '2017-11-08 07:26:43'),
(234, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.17', '2017-11-09 01:23:32'),
(235, 3, 'forgotten', '{"customer_id":"3","name":"Syed Jeelan Basha"}', '103.203.173.125', '2017-11-09 11:55:58'),
(236, 3, 'reset', '{"customer_id":"3","name":"Syed Jeelan Basha"}', '103.203.173.125', '2017-11-09 11:56:41'),
(237, 3, 'reset', '{"customer_id":"3","name":"Syed Jeelan Basha"}', '103.203.173.125', '2017-11-09 11:57:40'),
(238, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '103.203.173.125', '2017-11-09 11:58:29'),
(239, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '45.126.204.75', '2017-11-11 06:12:19'),
(240, 30, 'register', '{"customer_id":30,"name":"Syed Basha test"}', '45.126.204.75', '2017-11-11 06:35:34'),
(241, 30, 'login', '{"customer_id":"30","name":"Syed Basha test"}', '157.49.9.214', '2017-11-12 22:37:56'),
(242, 30, 'login', '{"customer_id":"30","name":"Syed Basha test"}', '45.126.205.147', '2017-11-13 23:18:33'),
(243, 30, 'login', '{"customer_id":"30","name":"Syed Basha test"}', '45.126.205.59', '2017-11-16 03:04:30'),
(244, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.17', '2017-11-18 01:51:07'),
(245, 30, 'login', '{"customer_id":"30","name":"Syed Basha test"}', '103.203.173.114', '2017-11-18 02:06:11'),
(246, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '103.203.173.114', '2017-11-18 02:10:31'),
(247, 30, 'login', '{"customer_id":"30","name":"Syed Basha test"}', '103.203.173.114', '2017-11-18 02:25:04'),
(248, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '103.203.173.114', '2017-11-18 02:26:27'),
(249, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.17', '2017-11-24 01:58:18'),
(250, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.17', '2017-11-24 04:57:48'),
(251, 1, 'edit', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.17', '2017-11-24 04:58:14'),
(252, 31, 'register', '{"customer_id":31,"name":"karthi seller"}', '203.223.190.17', '2017-11-27 05:44:15'),
(253, 31, 'edit', '{"customer_id":"31","name":"karthi seller"}', '203.223.190.17', '2017-11-27 05:45:45'),
(254, 12, 'forgotten', '{"customer_id":"12","name":"Bala RS"}', '203.223.190.17', '2017-11-27 05:46:59'),
(255, 12, 'reset', '{"customer_id":"12","name":"Bala RS"}', '203.223.190.17', '2017-11-27 05:47:22'),
(256, 12, 'login', '{"customer_id":"12","name":"Bala RS"}', '203.223.190.17', '2017-11-27 05:47:36'),
(257, 12, 'login', '{"customer_id":"12","name":"Bala RS"}', '203.223.190.17', '2017-11-27 05:49:28'),
(258, 12, 'login', '{"customer_id":"12","name":"Bala RS"}', '203.223.190.17', '2017-11-27 05:53:48'),
(259, 12, 'login', '{"customer_id":"12","name":"Bala RS"}', '203.223.190.17', '2017-11-27 05:54:12'),
(260, 31, 'login', '{"customer_id":"31","name":"karthi seller"}', '203.223.190.17', '2017-11-27 06:01:14'),
(261, 12, 'login', '{"customer_id":"12","name":"Bala RS"}', '203.223.190.17', '2017-11-27 06:48:26'),
(262, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.17', '2017-11-27 06:55:58'),
(263, 1, 'edit', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.17', '2017-11-27 07:13:01'),
(264, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.17', '2017-11-27 07:36:20'),
(265, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.17', '2017-11-27 22:50:02'),
(266, 12, 'login', '{"customer_id":"12","name":"Bala RS"}', '203.223.190.17', '2017-11-27 23:14:05'),
(267, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.17', '2017-11-27 23:20:18'),
(268, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.17', '2017-11-27 23:37:21'),
(269, 12, 'login', '{"customer_id":"12","name":"Bala RS"}', '203.223.190.17', '2017-11-27 23:42:35'),
(270, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.17', '2017-11-27 23:44:56'),
(271, 12, 'login', '{"customer_id":"12","name":"Bala RS"}', '203.223.190.17', '2017-11-27 23:51:52'),
(272, 12, 'login', '{"customer_id":"12","name":"Bala RS"}', '203.223.190.17', '2017-11-27 23:52:45'),
(273, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.17', '2017-11-27 23:54:41'),
(274, 12, 'login', '{"customer_id":"12","name":"Bala RS"}', '203.223.190.17', '2017-11-28 00:01:16'),
(275, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.17', '2017-11-28 00:14:11'),
(276, 32, 'register', '{"customer_id":32,"name":"1 1"}', '203.223.190.17', '2017-11-28 00:18:03'),
(277, 32, 'login', '{"customer_id":"32","name":"1 1"}', '203.223.190.17', '2017-11-28 00:19:00'),
(278, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.17', '2017-11-28 00:50:29'),
(279, 12, 'login', '{"customer_id":"12","name":"Bala RS"}', '203.223.190.17', '2017-11-28 04:24:20'),
(280, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.17', '2017-11-28 23:29:41'),
(281, 12, 'login', '{"customer_id":"12","name":"Bala RS"}', '203.223.190.17', '2017-11-29 01:31:41'),
(282, 33, 'register', '{"customer_id":33,"name":"1 1"}', '203.223.190.17', '2017-11-29 01:34:12'),
(283, 33, 'login', '{"customer_id":"33","name":"1 1"}', '203.223.190.17', '2017-11-29 01:34:40'),
(284, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.17', '2017-11-29 01:43:53'),
(285, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.17', '2017-11-29 04:04:13'),
(286, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.17', '2017-11-29 06:21:56'),
(287, 12, 'login', '{"customer_id":"12","name":"Bala RS"}', '203.223.190.17', '2017-11-30 04:44:03'),
(288, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.17', '2017-11-30 04:46:53'),
(289, 12, 'login', '{"customer_id":"12","name":"Bala RS"}', '203.223.190.17', '2017-11-30 05:03:08'),
(290, 12, 'login', '{"customer_id":"12","name":"Bala RS"}', '203.223.190.17', '2017-11-30 05:21:23'),
(291, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.17', '2017-11-30 05:24:59'),
(292, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.17', '2017-11-30 05:29:08'),
(293, 12, 'login', '{"customer_id":"12","name":"Bala RS"}', '203.223.190.17', '2017-11-30 05:29:25'),
(294, 12, 'login', '{"customer_id":"12","name":"Bala RS"}', '203.223.190.17', '2017-11-30 05:33:08'),
(295, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.17', '2017-11-30 05:44:30'),
(296, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.17', '2017-11-30 23:13:40'),
(297, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.17', '2017-12-01 00:48:00'),
(298, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.17', '2017-12-01 01:13:48'),
(299, 12, 'login', '{"customer_id":"12","name":"Bala RS"}', '203.223.190.17', '2017-12-01 01:21:26'),
(300, 28, 'forgotten', '{"customer_id":"28","name":"srinivasan srini"}', '203.223.190.17', '2017-12-01 01:27:13'),
(301, 28, 'forgotten', '{"customer_id":"28","name":"srinivasan srini"}', '203.223.190.17', '2017-12-01 01:28:54'),
(302, 28, 'reset', '{"customer_id":"28","name":"srinivasan srini"}', '203.223.190.17', '2017-12-01 01:40:46'),
(303, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.17', '2017-12-01 01:45:17'),
(304, 12, 'login', '{"customer_id":"12","name":"Bala RS"}', '203.223.190.17', '2017-12-01 01:45:38'),
(305, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.17', '2017-12-01 01:50:43'),
(306, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.17', '2017-12-01 02:00:44'),
(307, 12, 'login', '{"customer_id":"12","name":"Bala RS"}', '203.223.190.17', '2017-12-01 02:10:26'),
(308, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.17', '2017-12-01 02:12:34'),
(309, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.17', '2017-12-01 02:24:18'),
(310, 12, 'login', '{"customer_id":"12","name":"Bala RS"}', '203.223.190.17', '2017-12-01 03:52:42'),
(311, 30, 'login', '{"customer_id":"30","name":"Syed Basha test"}', '117.199.253.254', '2017-12-01 04:38:50'),
(312, 30, 'login', '{"customer_id":"30","name":"Syed Basha test"}', '117.199.253.254', '2017-12-01 05:17:48'),
(313, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.17', '2017-12-01 05:52:17'),
(314, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.17', '2017-12-01 06:02:57'),
(315, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.17', '2017-12-01 06:03:48'),
(316, 32, 'login', '{"customer_id":"32","name":"1 1"}', '203.223.190.17', '2017-12-01 06:08:16'),
(317, 30, 'login', '{"customer_id":"30","name":"Syed Basha test"}', '103.208.111.137', '2017-12-01 19:18:00'),
(318, 12, 'login', '{"customer_id":"12","name":"Bala RS"}', '203.223.190.17', '2017-12-02 00:08:16'),
(319, 12, 'login', '{"customer_id":"12","name":"Bala RS"}', '203.223.190.17', '2017-12-02 00:23:24'),
(320, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.17', '2017-12-02 00:27:25'),
(321, 12, 'login', '{"customer_id":"12","name":"Bala RS"}', '203.223.190.17', '2017-12-02 00:28:09'),
(322, 12, 'login', '{"customer_id":"12","name":"Bala RS"}', '203.223.190.17', '2017-12-02 00:32:54'),
(323, 12, 'login', '{"customer_id":"12","name":"Bala RS"}', '203.223.190.17', '2017-12-02 00:34:11'),
(324, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.17', '2017-12-02 00:35:30'),
(325, 12, 'login', '{"customer_id":"12","name":"Bala RS"}', '203.223.190.17', '2017-12-02 00:37:08'),
(326, 12, 'login', '{"customer_id":"12","name":"Bala RS"}', '203.223.190.17', '2017-12-02 05:33:11'),
(327, 30, 'login', '{"customer_id":"30","name":"Syed Basha test"}', '103.75.65.59', '2017-12-02 06:58:19'),
(328, 32, 'login', '{"customer_id":"32","name":"1 1"}', '117.216.151.111', '2017-12-04 06:08:35'),
(329, 32, 'login', '{"customer_id":"32","name":"1 1"}', '117.216.151.111', '2017-12-04 06:09:17'),
(330, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '117.216.151.111', '2017-12-04 06:11:02'),
(331, 12, 'login', '{"customer_id":"12","name":"Bala RS"}', '203.223.190.17', '2017-12-04 23:37:34'),
(332, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '103.203.173.114', '2017-12-07 07:56:42'),
(333, 30, 'login', '{"customer_id":"30","name":"Syed Basha test"}', '103.203.173.114', '2017-12-07 08:01:49'),
(334, 2, 'login', '{"customer_id":"2","name":"shankar ganesh"}', '157.50.20.86', '2017-12-11 23:22:26'),
(335, 12, 'login', '{"customer_id":"12","name":"Bala RS"}', '203.223.190.17', '2017-12-12 02:03:55'),
(336, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.17', '2017-12-12 06:16:18'),
(337, 12, 'login', '{"customer_id":"12","name":"Bala RS"}', '203.223.190.17', '2017-12-14 04:59:22'),
(338, 12, 'login', '{"customer_id":"12","name":"Bala RS"}', '203.223.190.17', '2017-12-14 05:00:32'),
(339, 34, 'register', '{"customer_id":34,"name":"srinivasan R T S"}', '203.223.190.17', '2017-12-14 05:03:09'),
(340, 12, 'login', '{"customer_id":"12","name":"Bala RS"}', '203.223.190.17', '2017-12-14 05:05:21'),
(341, 34, 'login', '{"customer_id":"34","name":"srinivasan R T S"}', '203.223.190.17', '2017-12-14 05:24:07'),
(342, 27, 'login', '{"customer_id":"27","name":"karthi k"}', '203.223.190.17', '2017-12-15 23:49:40'),
(343, 34, 'login', '{"customer_id":"34","name":"srinivasan R T S"}', '203.223.190.17', '2017-12-15 23:53:06'),
(344, 12, 'login', '{"customer_id":"12","name":"Bala RS"}', '203.223.190.17', '2017-12-16 02:03:40'),
(345, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.17', '2017-12-16 02:04:08'),
(346, 12, 'login', '{"customer_id":"12","name":"Bala RS"}', '203.223.190.17', '2017-12-16 02:16:59'),
(347, 12, 'login', '{"customer_id":"12","name":"Bala RS"}', '203.223.190.17', '2017-12-16 02:31:21'),
(348, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.17', '2017-12-18 00:59:03'),
(349, 12, 'login', '{"customer_id":"12","name":"Bala RS"}', '45.126.205.108', '2017-12-18 01:20:05'),
(350, 35, 'register', '{"customer_id":35,"name":"ixlybala ixlybala"}', '203.223.190.17', '2017-12-18 01:35:21'),
(351, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.17', '2017-12-18 01:53:54'),
(352, 36, 'register', '{"customer_id":36,"name":"ixlybalatest@ixly.in ixlybalatest@ixly.in"}', '203.223.190.17', '2017-12-19 00:06:39'),
(353, 12, 'login', '{"customer_id":"12","name":"Bala RS"}', '203.223.190.17', '2017-12-19 00:18:11'),
(354, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.17', '2017-12-19 00:37:55'),
(355, 4, 'login', '{"customer_id":"4","name":"1 1"}', '203.223.190.17', '2017-12-19 01:14:26'),
(356, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.17', '2017-12-19 01:21:01'),
(357, 12, 'login', '{"customer_id":"12","name":"Bala RS"}', '106.208.155.134', '2017-12-22 06:37:14'),
(358, 12, 'login', '{"customer_id":"12","name":"Bala RS"}', '203.223.190.76', '2017-12-22 06:50:15'),
(359, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.76', '2017-12-27 02:08:30'),
(360, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.76', '2017-12-27 02:17:04'),
(361, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.76', '2017-12-28 08:14:03'),
(362, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '106.208.90.177', '2017-12-29 01:49:14'),
(363, 30, 'login', '{"customer_id":"30","name":"Syed Basha test"}', '103.203.173.114', '2017-12-29 07:13:29'),
(364, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.76', '2017-12-29 07:17:04'),
(365, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '106.208.94.76', '2017-12-29 21:13:25'),
(366, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.76', '2017-12-29 23:44:57'),
(367, 30, 'login', '{"customer_id":"30","name":"Syed Basha test"}', '117.199.244.13', '2017-12-30 00:04:18'),
(368, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '106.208.94.76', '2017-12-30 00:04:50'),
(369, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.76', '2017-12-30 07:10:00'),
(370, 30, 'login', '{"customer_id":"30","name":"Syed Basha test"}', '117.199.243.74', '2018-01-01 00:24:45'),
(371, 30, 'login', '{"customer_id":"30","name":"Syed Basha test"}', '157.48.123.230', '2018-01-01 11:54:22'),
(372, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.76', '2018-01-01 23:28:30'),
(373, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.76', '2018-01-01 23:44:42'),
(374, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.76', '2018-01-01 23:45:53'),
(375, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.76', '2018-01-02 01:12:00'),
(376, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.76', '2018-01-02 02:00:23'),
(377, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.76', '2018-01-02 04:31:21'),
(378, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.76', '2018-01-02 04:51:00'),
(379, 12, 'login', '{"customer_id":"12","name":"Bala RS"}', '203.223.190.76', '2018-01-02 05:20:35'),
(380, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.76', '2018-01-02 05:28:57'),
(381, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.76', '2018-01-02 07:08:19'),
(382, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.76', '2018-01-02 08:04:50'),
(383, 37, 'register', '{"customer_id":37,"name":"Test Test"}', '203.223.190.76', '2018-01-02 08:24:10'),
(384, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.76', '2018-01-02 08:28:12'),
(385, 4, 'login', '{"customer_id":"4","name":"1 1"}', '203.223.190.76', '2018-01-02 08:30:29'),
(386, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.76', '2018-01-02 08:31:59'),
(387, 30, 'login', '{"customer_id":"30","name":"Syed Basha test"}', '117.199.246.106', '2018-01-02 10:16:39'),
(388, 12, 'login', '{"customer_id":"12","name":"Bala RS"}', '117.199.246.106', '2018-01-02 12:39:21'),
(389, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.76', '2018-01-02 23:26:36'),
(390, 30, 'login', '{"customer_id":"30","name":"Syed Basha test"}', '103.203.173.114', '2018-01-03 08:04:57'),
(391, 38, 'register', '{"customer_id":38,"name":"Syed Jeelan Basha"}', '103.203.173.114', '2018-01-03 09:17:47'),
(392, 38, 'login', '{"customer_id":"38","name":"Syed Jeelan Basha"}', '157.48.74.235', '2018-01-03 09:22:56'),
(393, 38, 'login', '{"customer_id":"38","name":"Syed Jeelan Basha"}', '103.203.173.114', '2018-01-03 09:24:48'),
(394, 38, 'login', '{"customer_id":"38","name":"Syed Jeelan Basha"}', '103.203.173.114', '2018-01-03 09:27:47'),
(395, 30, 'login', '{"customer_id":"30","name":"Syed Basha test"}', '157.48.74.235', '2018-01-03 09:32:00'),
(396, 30, 'login', '{"customer_id":"30","name":"Syed Basha test"}', '103.203.173.114', '2018-01-03 22:12:14'),
(397, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.76', '2018-01-04 06:07:18'),
(398, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.76', '2018-01-04 06:10:52'),
(399, 39, 'register', '{"customer_id":39,"name":"Balachandar K"}', '203.223.190.76', '2018-01-04 06:51:37'),
(400, 39, 'login', '{"customer_id":"39","name":"Balachandar K"}', '203.223.190.76', '2018-01-04 06:53:34'),
(401, 4, 'login', '{"customer_id":"4","name":"1 1"}', '203.223.190.76', '2018-01-04 06:56:20'),
(402, 32, 'login', '{"customer_id":"32","name":"1 1"}', '203.223.190.76', '2018-01-04 06:59:57'),
(403, 4, 'login', '{"customer_id":"4","name":"1 1"}', '203.223.190.76', '2018-01-04 07:02:17'),
(404, 30, 'login', '{"customer_id":"30","name":"Syed Basha test"}', '103.203.173.114', '2018-01-05 00:19:59'),
(405, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.76', '2018-01-05 00:26:33'),
(406, 40, 'register', '{"customer_id":40,"name":"krishna m"}', '203.223.190.76', '2018-01-05 00:39:44'),
(407, 40, 'login', '{"customer_id":"40","name":"krishna m"}', '203.223.190.76', '2018-01-05 01:49:10'),
(408, 40, 'edit', '{"customer_id":"40","name":"krishna m"}', '203.223.190.76', '2018-01-05 01:51:00'),
(409, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.76', '2018-01-05 02:02:50'),
(410, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.76', '2018-01-05 05:36:00'),
(411, 12, 'login', '{"customer_id":"12","name":"Bala RS"}', '203.223.190.76', '2018-01-05 06:35:12'),
(412, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.76', '2018-01-05 06:36:02'),
(413, 12, 'login', '{"customer_id":"12","name":"Bala RS"}', '203.223.190.76', '2018-01-05 06:36:03'),
(414, 41, 'register', '{"customer_id":41,"name":"testkaro testkaro"}', '203.223.190.76', '2018-01-05 06:42:12'),
(415, 12, 'login', '{"customer_id":"12","name":"Bala RS"}', '203.223.190.76', '2018-01-05 06:49:30'),
(416, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.76', '2018-01-05 06:57:55'),
(417, 12, 'login', '{"customer_id":"12","name":"Bala RS"}', '203.223.190.76', '2018-01-05 07:06:21'),
(418, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.76', '2018-01-05 07:08:43'),
(419, 6, 'login', '{"customer_id":"6","name":"1! 1!"}', '203.223.190.76', '2018-01-05 07:11:00'),
(420, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.76', '2018-01-05 07:16:43'),
(421, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.76', '2018-01-05 23:23:03'),
(422, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.76', '2018-01-05 23:33:39'),
(423, 30, 'login', '{"customer_id":"30","name":"Syed Basha test"}', '103.203.173.114', '2018-01-05 23:59:32'),
(424, 40, 'login', '{"customer_id":"40","name":"krishna m"}', '203.223.190.76', '2018-01-06 00:13:16'),
(425, 13, 'login', '{"customer_id":"13","name":"1@@ 1@@"}', '203.223.190.76', '2018-01-06 00:53:43'),
(426, 12, 'login', '{"customer_id":"12","name":"Bala RS"}', '203.223.190.76', '2018-01-06 00:55:11'),
(427, 13, 'login', '{"customer_id":"13","name":"1@@ 1@@"}', '203.223.190.76', '2018-01-06 00:56:37'),
(428, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.76', '2018-01-06 00:58:24'),
(429, 30, 'login', '{"customer_id":"30","name":"Syed Basha test"}', '103.203.173.114', '2018-01-06 01:05:10'),
(430, 40, 'login', '{"customer_id":"40","name":"krishna m"}', '203.223.190.76', '2018-01-06 01:33:18'),
(431, 4, 'login', '{"customer_id":"4","name":"1 1"}', '203.223.190.76', '2018-01-06 02:53:49'),
(432, 40, 'login', '{"customer_id":"40","name":"krishna m"}', '203.223.190.76', '2018-01-06 03:07:44'),
(433, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.76', '2018-01-06 03:10:44'),
(434, 42, 'register', '{"customer_id":42,"name":"storestone storestone"}', '203.223.190.76', '2018-01-06 03:46:57'),
(435, 43, 'register', '{"customer_id":43,"name":"stone stone"}', '203.223.190.76', '2018-01-06 03:50:51'),
(436, 40, 'login', '{"customer_id":"40","name":"krishna m"}', '203.223.190.76', '2018-01-06 04:28:30'),
(437, 12, 'login', '{"customer_id":"12","name":"Bala RS"}', '203.223.190.76', '2018-01-06 04:55:02'),
(438, 12, 'login', '{"customer_id":"12","name":"Bala RS"}', '203.223.190.76', '2018-01-06 07:15:47'),
(439, 30, 'login', '{"customer_id":"30","name":"Syed Basha test"}', '117.199.249.224', '2018-01-06 07:35:47'),
(440, 30, 'order_account', '{"customer_id":"30","name":"Syed Basha test","order_id":67}', '117.253.142.166', '2018-01-06 07:50:58'),
(441, 12, 'login', '{"customer_id":"12","name":"Bala RS"}', '203.223.190.76', '2018-01-08 01:16:58'),
(442, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.76', '2018-01-08 01:18:44'),
(443, 12, 'login', '{"customer_id":"12","name":"Bala RS"}', '203.223.190.76', '2018-01-08 01:19:35'),
(444, 12, 'login', '{"customer_id":"12","name":"Bala RS"}', '203.223.190.76', '2018-01-08 01:26:34'),
(445, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.76', '2018-01-08 01:43:46'),
(446, 4, 'login', '{"customer_id":"4","name":"1 1"}', '203.223.190.76', '2018-01-08 01:53:28'),
(447, 44, 'register', '{"customer_id":44,"name":"Balachandar K"}', '203.223.190.76', '2018-01-08 01:56:18'),
(448, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.76', '2018-01-08 02:44:35'),
(449, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.76', '2018-01-08 03:36:13'),
(450, 40, 'login', '{"customer_id":"40","name":"krishna m"}', '203.223.190.76', '2018-01-08 03:38:24'),
(451, 40, 'login', '{"customer_id":"40","name":"krishna m"}', '203.223.190.76', '2018-01-08 03:40:13'),
(452, 12, 'login', '{"customer_id":"12","name":"Bala RS"}', '203.223.190.76', '2018-01-08 03:58:24'),
(453, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.76', '2018-01-08 05:23:45'),
(454, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.76', '2018-01-08 06:24:23'),
(455, 30, 'login', '{"customer_id":"30","name":"Syed Basha test"}', '117.199.250.104', '2018-01-08 07:56:28'),
(456, 30, 'order_account', '{"customer_id":"30","name":"Syed Basha test","order_id":68}', '103.199.211.51', '2018-01-09 01:07:11'),
(457, 30, 'return_account', '{"customer_id":"30","name":"Syed Basha test","return_id":2}', '103.199.211.51', '2018-01-09 01:10:21'),
(458, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.76', '2018-01-09 02:03:00'),
(459, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.76', '2018-01-09 03:58:59'),
(460, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.76', '2018-01-09 04:12:36'),
(461, 30, 'login', '{"customer_id":"30","name":"Syed Basha test"}', '103.203.173.114', '2018-01-09 23:48:13'),
(462, 12, 'login', '{"customer_id":"12","name":"Bala RS"}', '203.223.190.76', '2018-01-09 23:57:30'),
(463, 30, 'login', '{"customer_id":"30","name":"Syed Basha test"}', '117.192.89.225', '2018-01-11 09:48:01'),
(464, 23, 'forgotten', '{"customer_id":"23","name":"Syed Jeelan Basha"}', '117.192.89.225', '2018-01-11 10:02:18'),
(465, 23, 'reset', '{"customer_id":"23","name":"Syed Jeelan Basha"}', '117.192.89.225', '2018-01-11 10:03:05'),
(466, 45, 'login', '{"customer_id":"45","name":"dadapeer Syed"}', '117.192.89.225', '2018-01-11 10:12:19'),
(467, 30, 'login', '{"customer_id":"30","name":"Syed Basha test"}', '117.192.89.225', '2018-01-11 10:16:53'),
(468, 45, 'login', '{"customer_id":"45","name":"dadapeer Syed"}', '117.192.89.225', '2018-01-11 10:26:28'),
(469, 30, 'order_account', '{"customer_id":"30","name":"Syed Basha test","order_id":69}', '117.192.89.225', '2018-01-11 10:35:23'),
(470, 45, 'login', '{"customer_id":"45","name":"dadapeer Syed"}', '117.216.149.51', '2018-01-14 10:33:48'),
(471, 30, 'login', '{"customer_id":"30","name":"Syed Basha test"}', '117.216.149.51', '2018-01-14 10:34:52'),
(472, 45, 'login', '{"customer_id":"45","name":"dadapeer Syed"}', '117.216.149.51', '2018-01-14 10:36:07'),
(473, 45, 'order_account', '{"customer_id":"45","name":"dadapeer Syed","order_id":70}', '117.216.149.51', '2018-01-14 10:36:59'),
(474, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.76', '2018-01-15 23:54:59'),
(475, 46, 'register', '{"customer_id":46,"name":"Syed Jeelan Basha"}', '103.203.173.114', '2018-01-16 00:21:28'),
(476, 46, 'order_account', '{"customer_id":"46","name":"Syed Jeelan Basha","order_id":71}', '103.203.173.114', '2018-01-16 00:28:40'),
(477, 47, 'register', '{"customer_id":47,"name":"vijay kumar"}', '59.90.2.82', '2018-01-17 09:33:08');
INSERT INTO `oc_customer_activity` (`customer_activity_id`, `customer_id`, `key`, `data`, `ip`, `date_added`) VALUES
(478, 30, 'login', '{"customer_id":"30","name":"Syed Basha test"}', '59.90.2.82', '2018-01-17 11:24:29'),
(479, 30, 'login', '{"customer_id":"30","name":"Syed Basha test"}', '103.203.173.114', '2018-01-22 06:17:15'),
(480, 12, 'login', '{"customer_id":"12","name":"Bala RS"}', '203.223.190.76', '2018-01-28 23:57:44'),
(481, 30, 'login', '{"customer_id":"30","name":"Syed Basha test"}', '203.223.190.76', '2018-01-29 00:03:40'),
(482, 12, 'login', '{"customer_id":"12","name":"Bala RS"}', '203.223.190.76', '2018-01-29 00:41:32'),
(483, 30, 'login', '{"customer_id":"30","name":"Syed Basha test"}', '106.203.65.94', '2018-01-29 00:53:30'),
(484, 30, 'login', '{"customer_id":"30","name":"Syed Basha test"}', '203.223.190.76', '2018-01-29 04:12:17'),
(485, 30, 'login', '{"customer_id":"30","name":"Syed Basha test"}', '203.223.190.76', '2018-01-29 04:27:36'),
(486, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.76', '2018-01-29 04:50:15'),
(487, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.76', '2018-01-29 06:03:59'),
(488, 30, 'login', '{"customer_id":"30","name":"Syed Basha test"}', '157.50.12.69', '2018-01-29 06:18:40'),
(489, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.76', '2018-01-29 07:49:55'),
(490, 30, 'login', '{"customer_id":"30","name":"Syed Basha test"}', '157.50.25.231', '2018-01-29 19:44:29'),
(491, 1, 'login', '{"customer_id":"1","name":"daniel ebenazer"}', '203.223.190.76', '2018-01-30 01:17:12'),
(492, 30, 'login', '{"customer_id":"30","name":"Syed Basha test"}', '103.203.173.114', '2018-01-31 07:25:09');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_group`
--

CREATE TABLE IF NOT EXISTS `oc_customer_group` (
  `customer_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `approval` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`customer_group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `oc_customer_group`
--

INSERT INTO `oc_customer_group` (`customer_group_id`, `approval`, `sort_order`) VALUES
(1, 0, 1),
(3, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_group_description`
--

CREATE TABLE IF NOT EXISTS `oc_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`customer_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_group_description`
--

INSERT INTO `oc_customer_group_description` (`customer_group_id`, `language_id`, `name`, `description`) VALUES
(1, 1, 'Default', 'test'),
(3, 1, 'Coimbatore customer group', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_history`
--

CREATE TABLE IF NOT EXISTS `oc_customer_history` (
  `customer_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_history_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `oc_customer_history`
--

INSERT INTO `oc_customer_history` (`customer_history_id`, `customer_id`, `comment`, `date_added`) VALUES
(1, 4, '', '2017-12-18 02:29:39');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_ip`
--

CREATE TABLE IF NOT EXISTS `oc_customer_ip` (
  `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_ip_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=186 ;

--
-- Dumping data for table `oc_customer_ip`
--

INSERT INTO `oc_customer_ip` (`customer_ip_id`, `customer_id`, `ip`, `date_added`) VALUES
(8, 1, '122.178.146.172', '2017-08-09 01:40:46'),
(9, 1, '113.193.131.10', '2017-08-09 01:42:04'),
(10, 2, '122.178.146.172', '2017-08-09 01:51:26'),
(102, 30, '45.126.205.147', '2017-11-13 23:18:33'),
(12, 2, '122.178.123.128', '2017-08-18 01:16:37'),
(13, 2, '122.178.176.110', '2017-08-20 23:23:33'),
(14, 2, '49.205.63.177', '2017-08-30 20:56:07'),
(15, 2, '49.205.57.16', '2017-08-31 23:10:11'),
(16, 2, '49.205.62.75', '2017-09-04 23:15:50'),
(17, 1, '49.205.62.75', '2017-09-05 02:31:05'),
(18, 2, '49.205.54.244', '2017-09-12 03:22:35'),
(19, 1, '49.205.54.244', '2017-09-12 04:02:26'),
(20, 2, '49.205.39.56', '2017-09-13 01:26:31'),
(21, 1, '49.205.39.56', '2017-09-13 03:00:40'),
(22, 1, '49.205.44.88', '2017-09-13 23:17:16'),
(23, 2, '49.205.44.88', '2017-09-13 23:19:14'),
(24, 1, '103.206.140.245', '2017-09-15 08:42:25'),
(25, 4, '113.193.131.10', '2017-09-16 04:10:10'),
(26, 5, '113.193.131.10', '2017-09-16 05:35:01'),
(27, 6, '113.193.131.10', '2017-09-16 05:51:19'),
(28, 7, '113.193.131.10', '2017-09-16 05:56:06'),
(29, 8, '113.193.131.10', '2017-09-16 06:08:01'),
(30, 9, '113.193.131.10', '2017-09-16 06:15:33'),
(31, 10, '113.193.131.10', '2017-09-16 06:16:28'),
(32, 2, '49.205.50.38', '2017-09-16 09:22:48'),
(33, 2, '157.50.21.180', '2017-09-16 12:07:45'),
(34, 2, '49.205.40.2', '2017-09-16 22:35:03'),
(35, 1, '49.205.40.2', '2017-09-16 23:23:54'),
(36, 11, '49.205.40.2', '2017-09-18 00:10:55'),
(37, 12, '113.193.131.10', '2017-09-18 04:51:44'),
(38, 13, '113.193.131.10', '2017-09-19 07:20:19'),
(39, 1, '122.178.95.237', '2017-09-20 04:43:16'),
(40, 14, '1.23.1.25', '2017-09-21 07:16:28'),
(41, 1, '113.193.131.114', '2017-09-22 02:50:19'),
(42, 2, '157.50.12.3', '2017-09-23 05:37:13'),
(43, 2, '157.50.13.136', '2017-09-23 08:26:13'),
(44, 2, '157.50.12.231', '2017-09-23 11:57:16'),
(45, 2, '49.205.38.202', '2017-09-25 23:07:25'),
(46, 1, '203.223.190.76', '2017-09-26 02:18:41'),
(47, 2, '49.205.34.33', '2017-09-26 23:51:42'),
(48, 2, '157.50.10.228', '2017-09-27 00:19:46'),
(49, 1, '157.50.10.228', '2017-09-27 03:18:56'),
(50, 1, '59.95.67.217', '2017-09-27 05:28:41'),
(51, 15, '59.95.67.217', '2017-09-27 06:37:33'),
(101, 30, '157.49.9.214', '2017-11-12 22:41:34'),
(100, 30, '64.233.173.129', '2017-11-12 22:38:33'),
(99, 30, '64.233.173.158', '2017-11-12 22:38:09'),
(98, 30, '64.233.173.159', '2017-11-12 22:37:57'),
(56, 1, '203.223.190.17', '2017-10-02 08:38:10'),
(57, 1, '103.200.41.14', '2017-10-02 10:56:08'),
(58, 16, '203.223.190.17', '2017-10-05 10:34:33'),
(97, 30, '45.126.204.75', '2017-11-11 06:35:38'),
(60, 17, '203.223.190.17', '2017-10-06 05:11:51'),
(61, 18, '203.223.190.17', '2017-10-06 05:16:37'),
(62, 1, '117.216.177.109', '2017-10-06 05:17:55'),
(63, 19, '203.223.190.17', '2017-10-06 06:04:46'),
(64, 1, '59.96.148.134', '2017-10-06 21:30:21'),
(65, 4, '203.223.190.17', '2017-10-07 01:23:49'),
(66, 12, '203.223.190.17', '2017-10-07 01:27:19'),
(67, 20, '203.223.190.17', '2017-10-09 09:34:40'),
(68, 2, '49.205.42.106', '2017-10-10 01:45:06'),
(69, 12, '49.205.42.106', '2017-10-10 01:46:27'),
(70, 1, '202.133.71.66', '2017-10-10 01:59:54'),
(71, 15, '49.205.42.106', '2017-10-10 02:13:16'),
(72, 21, '49.205.42.106', '2017-10-10 02:18:44'),
(73, 22, '49.205.42.106', '2017-10-10 02:22:10'),
(74, 2, '49.205.50.99', '2017-10-11 02:03:00'),
(75, 21, '49.205.50.99', '2017-10-11 02:49:46'),
(76, 1, '45.119.170.190', '2017-10-12 21:13:34'),
(172, 46, '103.203.173.114', '2018-01-16 00:21:29'),
(78, 24, '45.119.170.190', '2017-10-12 21:46:38'),
(79, 2, '49.205.38.200', '2017-10-14 08:04:03'),
(80, 6, '203.223.190.17', '2017-10-16 09:28:32'),
(81, 1, '117.208.178.39', '2017-10-17 13:09:55'),
(82, 1, '117.199.253.106', '2017-10-18 10:09:37'),
(83, 1, '117.199.249.124', '2017-10-18 19:55:20'),
(84, 2, '49.205.50.198', '2017-10-30 21:27:04'),
(85, 25, '203.223.190.17', '2017-10-31 02:06:21'),
(86, 25, '157.50.22.56', '2017-10-31 02:26:17'),
(87, 1, '59.95.67.106', '2017-10-31 03:36:47'),
(88, 1, '43.246.110.15', '2017-11-01 02:20:23'),
(89, 26, '103.203.173.111', '2017-11-01 07:24:05'),
(90, 1, '103.203.173.111', '2017-11-01 08:58:01'),
(91, 1, '117.216.148.134', '2017-11-01 10:12:12'),
(92, 27, '203.223.190.17', '2017-11-08 05:11:23'),
(93, 28, '203.223.190.17', '2017-11-08 05:33:51'),
(94, 29, '203.223.190.17', '2017-11-08 05:48:54'),
(95, 1, '103.203.173.125', '2017-11-08 07:26:43'),
(96, 1, '45.126.204.75', '2017-11-11 06:12:20'),
(103, 30, '157.49.4.22', '2017-11-14 12:30:55'),
(104, 30, '45.126.205.59', '2017-11-16 03:04:31'),
(105, 30, '117.199.244.108', '2017-11-17 01:12:37'),
(106, 30, '59.97.42.159', '2017-11-17 02:58:37'),
(107, 30, '117.199.245.233', '2017-11-17 07:58:41'),
(108, 30, '59.96.151.42', '2017-11-17 20:53:09'),
(109, 30, '117.199.245.182', '2017-11-17 21:13:44'),
(110, 30, '103.203.173.114', '2017-11-17 22:07:05'),
(111, 1, '103.203.173.114', '2017-11-18 02:10:32'),
(112, 1, '59.90.3.164', '2017-11-20 21:50:22'),
(113, 31, '203.223.190.17', '2017-11-27 05:44:16'),
(114, 32, '203.223.190.17', '2017-11-28 00:18:04'),
(115, 33, '203.223.190.17', '2017-11-29 01:34:13'),
(116, 30, '117.199.253.254', '2017-12-01 04:38:51'),
(117, 30, '103.208.111.137', '2017-12-01 19:18:00'),
(118, 30, '103.75.65.59', '2017-12-02 06:58:19'),
(119, 32, '117.216.151.111', '2017-12-04 06:08:35'),
(120, 1, '117.216.151.111', '2017-12-04 06:11:02'),
(121, 2, '157.50.20.86', '2017-12-11 23:22:27'),
(122, 34, '203.223.190.17', '2017-12-14 05:03:10'),
(123, 12, '45.126.205.108', '2017-12-18 01:20:05'),
(124, 35, '203.223.190.17', '2017-12-18 01:35:22'),
(125, 36, '203.223.190.17', '2017-12-19 00:06:39'),
(126, 12, '103.203.173.114', '2017-12-19 21:06:11'),
(127, 12, '106.208.155.134', '2017-12-22 06:37:14'),
(128, 12, '203.223.190.76', '2017-12-22 06:50:25'),
(129, 1, '106.208.90.177', '2017-12-29 01:49:15'),
(130, 1, '106.208.94.76', '2017-12-29 21:13:26'),
(131, 30, '117.199.244.13', '2017-12-30 00:04:19'),
(132, 1, '137.97.97.60', '2017-12-30 01:25:29'),
(133, 30, '117.199.243.74', '2018-01-01 00:24:46'),
(134, 30, '157.48.123.230', '2018-01-01 11:55:02'),
(135, 37, '203.223.190.76', '2018-01-02 08:24:10'),
(136, 4, '203.223.190.76', '2018-01-02 08:30:30'),
(137, 30, '117.199.246.106', '2018-01-02 10:16:40'),
(138, 12, '117.199.246.106', '2018-01-02 12:39:22'),
(176, 46, '117.199.252.130', '2018-01-17 00:41:17'),
(175, 46, '117.199.250.167', '2018-01-16 21:37:55'),
(174, 46, '117.199.243.52', '2018-01-16 19:39:24'),
(173, 46, '103.208.108.198', '2018-01-16 03:21:30'),
(143, 39, '203.223.190.76', '2018-01-04 06:51:37'),
(144, 32, '203.223.190.76', '2018-01-04 06:59:58'),
(145, 40, '203.223.190.76', '2018-01-05 00:39:45'),
(146, 41, '203.223.190.76', '2018-01-05 06:42:13'),
(147, 6, '203.223.190.76', '2018-01-05 07:11:01'),
(148, 13, '203.223.190.76', '2018-01-06 00:53:44'),
(149, 42, '203.223.190.76', '2018-01-06 03:46:58'),
(150, 43, '203.223.190.76', '2018-01-06 03:50:52'),
(151, 30, '117.199.249.224', '2018-01-06 07:35:47'),
(152, 30, '117.253.142.166', '2018-01-06 07:49:12'),
(153, 30, '175.111.138.80', '2018-01-06 07:57:20'),
(154, 30, '175.111.136.96', '2018-01-06 08:04:21'),
(155, 30, '103.206.141.25', '2018-01-06 23:51:34'),
(156, 44, '203.223.190.76', '2018-01-08 01:56:18'),
(157, 30, '117.199.250.104', '2018-01-08 07:56:29'),
(158, 30, '103.199.209.49', '2018-01-08 08:25:10'),
(159, 30, '117.194.90.192', '2018-01-08 09:13:43'),
(160, 30, '103.206.143.74', '2018-01-08 22:53:11'),
(161, 30, '117.194.91.111', '2018-01-09 00:02:50'),
(162, 30, '117.216.151.59', '2018-01-09 00:13:10'),
(163, 30, '103.199.211.51', '2018-01-09 00:45:48'),
(164, 30, '117.208.179.64', '2018-01-09 01:34:29'),
(165, 30, '117.192.89.225', '2018-01-11 09:48:01'),
(166, 45, '117.192.89.225', '2018-01-11 10:12:20'),
(167, 45, '157.49.73.85', '2018-01-11 11:30:45'),
(168, 30, '117.216.149.51', '2018-01-14 08:43:15'),
(169, 45, '117.216.149.51', '2018-01-14 10:33:49'),
(170, 45, '103.208.108.219', '2018-01-15 06:23:06'),
(171, 45, '103.203.173.114', '2018-01-15 22:29:19'),
(178, 30, '59.90.2.82', '2018-01-17 11:24:29'),
(179, 30, '117.199.242.87', '2018-01-17 23:57:49'),
(180, 30, '117.216.177.2', '2018-01-18 00:15:39'),
(181, 30, '45.119.168.49', '2018-01-22 10:53:01'),
(182, 30, '203.223.190.76', '2018-01-28 23:38:18'),
(183, 30, '106.203.65.94', '2018-01-29 00:46:24'),
(184, 30, '117.216.150.208', '2018-01-31 09:11:44'),
(185, 30, '117.199.251.240', '2018-01-31 10:51:42');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_login`
--

CREATE TABLE IF NOT EXISTS `oc_customer_login` (
  `customer_login_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`customer_login_id`),
  KEY `email` (`email`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=69 ;

--
-- Dumping data for table `oc_customer_login`
--

INSERT INTO `oc_customer_login` (`customer_login_id`, `email`, `ip`, `total`, `date_added`, `date_modified`) VALUES
(3, '9894471306', '113.193.131.10', 1, '2017-08-09 06:41:39', '2017-08-09 06:41:39'),
(58, 'admin', '203.223.190.76', 2, '2018-01-02 16:58:49', '2018-01-04 17:36:51'),
(14, 'baaaaaaa@ixly.in', '113.193.131.10', 1, '2017-09-18 10:11:05', '2017-09-18 10:11:05'),
(13, 'b@ixly.in', '113.193.131.10', 1, '2017-09-18 10:10:56', '2017-09-18 10:10:56'),
(15, 'balarsb@ixly.in', '113.193.131.10', 1, '2017-09-18 10:11:22', '2017-09-18 10:11:22'),
(17, '1@', '113.193.131.10', 2, '2017-09-18 13:10:57', '2017-09-18 13:11:06'),
(19, 'admin', '59.95.67.217', 1, '2017-09-27 10:44:52', '2017-09-27 10:44:52'),
(21, 'admin', '103.200.41.14', 1, '2017-10-02 15:55:44', '2017-10-02 15:55:44'),
(29, 'admin', '203.223.190.17', 5, '2017-10-09 14:29:31', '2017-10-31 06:48:58'),
(24, '1@', '203.223.190.17', 1, '2017-10-05 15:31:46', '2017-10-05 15:31:46'),
(26, 'admin', '117.216.177.109', 1, '2017-10-06 10:02:23', '2017-10-06 10:02:23'),
(63, 'bala@ixly.in', '203.223.190.76', 2, '2018-01-08 15:22:42', '2018-01-08 15:28:17'),
(31, 'daniel@ixly.in', '203.223.190.17', 1, '2017-10-09 14:58:06', '2017-10-09 14:58:06'),
(35, 'seileshkumaar', '203.223.190.17', 2, '2017-10-31 07:10:43', '2017-10-31 07:10:55'),
(42, '', '203.223.190.17', 5, '2017-11-24 08:22:56', '2017-12-01 13:11:32'),
(55, 'admin', '106.208.155.134', 1, '2017-12-22 18:06:54', '2017-12-22 18:06:54'),
(44, 'testuser', '203.223.190.17', 1, '2017-11-27 12:09:56', '2017-11-27 12:09:56'),
(46, '12345@1.in', '203.223.190.17', 1, '2017-11-28 11:48:39', '2017-11-28 11:48:39'),
(48, 'srinivasan0716@gmail.com', '203.223.190.17', 3, '2017-12-01 12:56:51', '2017-12-01 13:11:21'),
(49, 'admin', '117.199.253.254', 1, '2017-12-01 16:27:05', '2017-12-01 16:27:05'),
(64, 'test123', '203.223.190.76', 3, '2018-01-09 10:36:07', '2018-01-09 10:36:31'),
(67, 'daniel', '203.223.190.76', 1, '2018-01-16 11:19:51', '2018-01-16 11:19:51');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_online`
--

CREATE TABLE IF NOT EXISTS `oc_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_online`
--

INSERT INTO `oc_customer_online` (`ip`, `customer_id`, `url`, `referer`, `date_added`) VALUES
('64.233.173.159', 0, 'http://preview.ixly.in/mystorestone/index.php?route=account/login', '', '2018-02-01 17:43:21'),
('157.48.202.99', 0, 'http://preview.ixly.in/mystorestone/index.php?route=account/login', '', '2018-02-01 17:43:23');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_reward`
--

CREATE TABLE IF NOT EXISTS `oc_customer_reward` (
  `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_reward_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_transaction`
--

CREATE TABLE IF NOT EXISTS `oc_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_wishlist`
--

CREATE TABLE IF NOT EXISTS `oc_customer_wishlist` (
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_wishlist`
--

INSERT INTO `oc_customer_wishlist` (`customer_id`, `product_id`, `date_added`) VALUES
(1, 50, '2017-08-21 07:14:28'),
(23, 50, '2017-10-13 00:18:57'),
(30, 50, '2018-01-22 06:17:15');

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field`
--

CREATE TABLE IF NOT EXISTS `oc_custom_field` (
  `custom_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `validation` varchar(255) NOT NULL,
  `location` varchar(7) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `oc_custom_field`
--

INSERT INTO `oc_custom_field` (`custom_field_id`, `type`, `value`, `validation`, `location`, `status`, `sort_order`) VALUES
(3, 'radio', '', '', 'account', 0, 2),
(4, 'checkbox', '', '', 'address', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_customer_group`
--

CREATE TABLE IF NOT EXISTS `oc_custom_field_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_custom_field_customer_group`
--

INSERT INTO `oc_custom_field_customer_group` (`custom_field_id`, `customer_group_id`, `required`) VALUES
(3, 1, 1),
(4, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_description`
--

CREATE TABLE IF NOT EXISTS `oc_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_custom_field_description`
--

INSERT INTO `oc_custom_field_description` (`custom_field_id`, `language_id`, `name`) VALUES
(3, 1, 'Adoni'),
(4, 1, 'Jigni');

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_value`
--

CREATE TABLE IF NOT EXISTS `oc_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `oc_custom_field_value`
--

INSERT INTO `oc_custom_field_value` (`custom_field_value_id`, `custom_field_id`, `sort_order`) VALUES
(6, 3, 3),
(5, 3, 2),
(4, 3, 1),
(7, 3, 4),
(8, 3, 5),
(13, 4, 5),
(12, 4, 4),
(11, 4, 3),
(10, 4, 2),
(9, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_value_description`
--

CREATE TABLE IF NOT EXISTS `oc_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_custom_field_value_description`
--

INSERT INTO `oc_custom_field_value_description` (`custom_field_value_id`, `language_id`, `custom_field_id`, `name`) VALUES
(6, 1, 3, 'Kottekal'),
(5, 1, 3, 'Jonnagiri'),
(4, 1, 3, 'Aspari'),
(7, 1, 3, 'Yemmiganur'),
(13, 1, 4, 'SSS'),
(12, 1, 4, 'MJS'),
(11, 1, 4, 'Rathi'),
(10, 1, 4, 'MVG'),
(9, 1, 4, 'SMG'),
(8, 1, 3, 'Kurnool');

-- --------------------------------------------------------

--
-- Table structure for table `oc_download`
--

CREATE TABLE IF NOT EXISTS `oc_download` (
  `download_id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(160) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`download_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_download_description`
--

CREATE TABLE IF NOT EXISTS `oc_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`download_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_easy_blog_article`
--

CREATE TABLE IF NOT EXISTS `oc_easy_blog_article` (
  `article_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_modified` datetime NOT NULL,
  `viewed` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`article_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `oc_easy_blog_article`
--

INSERT INTO `oc_easy_blog_article` (`article_id`, `sort_order`, `status`, `date_modified`, `viewed`) VALUES
(1, 1, 1, '2017-08-10 01:20:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_easy_blog_article_description`
--

CREATE TABLE IF NOT EXISTS `oc_easy_blog_article_description` (
  `article_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `intro_text` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `tag` text,
  PRIMARY KEY (`article_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_easy_blog_article_description`
--

INSERT INTO `oc_easy_blog_article_description` (`article_id`, `language_id`, `name`, `description`, `intro_text`, `meta_title`, `meta_description`, `meta_keyword`, `author`, `tag`) VALUES
(1, 1, 'test', '&lt;p&gt;test&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;test&lt;br&gt;&lt;/p&gt;', 'test', '', '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `oc_event`
--

CREATE TABLE IF NOT EXISTS `oc_event` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(32) NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `oc_event`
--

INSERT INTO `oc_event` (`event_id`, `code`, `trigger`, `action`) VALUES
(1, 'voucher', 'catalog/model/checkout/order/addHistory/after', 'total/voucher/send');

-- --------------------------------------------------------

--
-- Table structure for table `oc_extension`
--

CREATE TABLE IF NOT EXISTS `oc_extension` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  PRIMARY KEY (`extension_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `oc_extension`
--

INSERT INTO `oc_extension` (`extension_id`, `type`, `code`) VALUES
(1, 'payment', 'cod'),
(2, 'total', 'shipping'),
(3, 'total', 'sub_total'),
(4, 'total', 'tax'),
(5, 'total', 'total'),
(6, 'module', 'banner'),
(7, 'module', 'carousel'),
(8, 'total', 'credit'),
(9, 'shipping', 'flat'),
(10, 'total', 'handling'),
(11, 'total', 'low_order_fee'),
(12, 'total', 'coupon'),
(13, 'module', 'category'),
(14, 'module', 'account'),
(15, 'total', 'reward'),
(16, 'total', 'voucher'),
(17, 'payment', 'free_checkout'),
(18, 'module', 'featured'),
(19, 'module', 'slideshow'),
(20, 'theme', 'theme_default'),
(22, 'module', 'html'),
(23, 'module', 'filter'),
(24, 'captcha', 'basic_captcha'),
(25, 'module', 'magicfilter'),
(26, 'module', 'categoryfeatured'),
(27, 'module', 'timezone'),
(28, 'analytics', 'google_analytics'),
(29, 'shipping', 'pickup'),
(31, 'fraud', 'fraudlabspro');

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter`
--

CREATE TABLE IF NOT EXISTS `oc_filter` (
  `filter_id` int(11) NOT NULL AUTO_INCREMENT,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `oc_filter`
--

INSERT INTO `oc_filter` (`filter_id`, `filter_group_id`, `sort_order`) VALUES
(6, 1, 6),
(5, 1, 5),
(4, 1, 4),
(3, 1, 3),
(2, 1, 2),
(1, 1, 1),
(11, 2, 6),
(10, 2, 4),
(9, 2, 3),
(8, 2, 2),
(7, 2, 1),
(13, 3, 2),
(12, 3, 1),
(14, 1, 7),
(15, 1, 8),
(16, 1, 9),
(17, 1, 10),
(18, 2, 5),
(19, 2, 7),
(20, 2, 8),
(21, 2, 9),
(22, 2, 10),
(23, 2, 11),
(24, 2, 12),
(25, 4, 1),
(26, 4, 2),
(27, 4, 3),
(28, 4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_description`
--

CREATE TABLE IF NOT EXISTS `oc_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_filter_description`
--

INSERT INTO `oc_filter_description` (`filter_id`, `language_id`, `filter_group_id`, `name`) VALUES
(6, 1, 1, 'White'),
(5, 1, 1, 'Gray'),
(4, 1, 1, 'Blue'),
(3, 1, 1, 'Brown'),
(2, 1, 1, 'Green'),
(1, 1, 1, 'Red'),
(10, 1, 2, 'Size 240up x 70up mm'),
(11, 1, 2, 'Size Customized'),
(13, 1, 3, 'International sales'),
(12, 1, 3, 'Port of delivery'),
(14, 1, 1, 'Yellow'),
(15, 1, 1, 'Pink'),
(16, 1, 1, 'Black'),
(17, 1, 1, 'Beige'),
(9, 1, 2, 'Size 300up x 180up mm'),
(8, 1, 2, 'Size 280up x 120up mm'),
(7, 1, 2, 'Size 240up x 90up mm'),
(18, 1, 2, 'Sizes NOs'),
(19, 1, 2, 'Sizes Pcs'),
(21, 1, 2, 'Kilo Gram'),
(20, 1, 2, 'Liters'),
(22, 1, 2, 'Tons'),
(25, 1, 4, 'Premium Plus Quality'),
(26, 1, 4, 'Premium Quality'),
(27, 1, 4, 'Standard Quality'),
(28, 1, 4, 'Commercial Quality'),
(23, 1, 2, 'Boxes'),
(24, 1, 2, 'Container');

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_group`
--

CREATE TABLE IF NOT EXISTS `oc_filter_group` (
  `filter_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `oc_filter_group`
--

INSERT INTO `oc_filter_group` (`filter_group_id`, `sort_order`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_group_description`
--

CREATE TABLE IF NOT EXISTS `oc_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_filter_group_description`
--

INSERT INTO `oc_filter_group_description` (`filter_group_id`, `language_id`, `name`) VALUES
(1, 1, 'Color'),
(2, 1, 'Size'),
(3, 1, 'Type'),
(4, 1, 'Quality Standard');

-- --------------------------------------------------------

--
-- Table structure for table `oc_fraudlabspro`
--

CREATE TABLE IF NOT EXISTS `oc_fraudlabspro` (
  `order_id` varchar(11) NOT NULL,
  `is_country_match` char(2) NOT NULL,
  `is_high_risk_country` char(2) NOT NULL,
  `distance_in_km` varchar(10) NOT NULL,
  `distance_in_mile` varchar(10) NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `ip_country` varchar(2) NOT NULL,
  `ip_continent` varchar(20) NOT NULL,
  `ip_region` varchar(21) NOT NULL,
  `ip_city` varchar(21) NOT NULL,
  `ip_latitude` varchar(21) NOT NULL,
  `ip_longitude` varchar(21) NOT NULL,
  `ip_timezone` varchar(10) NOT NULL,
  `ip_elevation` varchar(10) NOT NULL,
  `ip_domain` varchar(50) NOT NULL,
  `ip_mobile_mnc` varchar(100) NOT NULL,
  `ip_mobile_mcc` varchar(100) NOT NULL,
  `ip_mobile_brand` varchar(100) NOT NULL,
  `ip_netspeed` varchar(10) NOT NULL,
  `ip_isp_name` varchar(50) NOT NULL,
  `ip_usage_type` varchar(30) NOT NULL,
  `is_free_email` char(2) NOT NULL,
  `is_new_domain_name` char(2) NOT NULL,
  `is_proxy_ip_address` char(2) NOT NULL,
  `is_bin_found` char(2) NOT NULL,
  `is_bin_country_match` char(2) NOT NULL,
  `is_bin_name_match` char(2) NOT NULL,
  `is_bin_phone_match` char(2) NOT NULL,
  `is_bin_prepaid` char(2) NOT NULL,
  `is_address_ship_forward` char(2) NOT NULL,
  `is_bill_ship_city_match` char(2) NOT NULL,
  `is_bill_ship_state_match` char(2) NOT NULL,
  `is_bill_ship_country_match` char(2) NOT NULL,
  `is_bill_ship_postal_match` char(2) NOT NULL,
  `is_ip_blacklist` char(2) NOT NULL,
  `is_email_blacklist` char(2) NOT NULL,
  `is_credit_card_blacklist` char(2) NOT NULL,
  `is_device_blacklist` char(2) NOT NULL,
  `is_user_blacklist` char(2) NOT NULL,
  `fraudlabspro_score` char(3) NOT NULL,
  `fraudlabspro_distribution` char(3) NOT NULL,
  `fraudlabspro_status` char(10) NOT NULL,
  `fraudlabspro_id` char(15) NOT NULL,
  `fraudlabspro_error` char(3) NOT NULL,
  `fraudlabspro_message` varchar(50) NOT NULL,
  `fraudlabspro_credits` varchar(10) NOT NULL,
  `api_key` char(32) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_fraud_ip`
--

CREATE TABLE IF NOT EXISTS `oc_fraud_ip` (
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_geo_zone`
--

CREATE TABLE IF NOT EXISTS `oc_geo_zone` (
  `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_modified` datetime NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`geo_zone_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `oc_geo_zone`
--

INSERT INTO `oc_geo_zone` (`geo_zone_id`, `name`, `description`, `date_modified`, `date_added`) VALUES
(3, 'UK VAT Zone', 'UK VAT', '2010-02-26 22:33:24', '2009-01-06 23:26:25'),
(4, 'UK Shipping', 'UK Shipping Zones', '2010-12-15 15:18:13', '2009-06-23 01:14:53');

-- --------------------------------------------------------

--
-- Table structure for table `oc_information`
--

CREATE TABLE IF NOT EXISTS `oc_information` (
  `information_id` int(11) NOT NULL AUTO_INCREMENT,
  `bottom` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`information_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `oc_information`
--

INSERT INTO `oc_information` (`information_id`, `bottom`, `sort_order`, `status`) VALUES
(3, 1, 3, 1),
(4, 1, 1, 1),
(5, 1, 4, 1),
(6, 1, 2, 1),
(7, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_description`
--

CREATE TABLE IF NOT EXISTS `oc_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`information_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information_description`
--

INSERT INTO `oc_information_description` (`information_id`, `language_id`, `title`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(4, 1, 'About Us', '&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align:justify;line-height:28.05pt;mso-outline-level:\r\n2;background:#FCFCFC;vertical-align:baseline&quot;&gt;&lt;b&gt;&lt;span style=&quot;font-size:14.0pt;\r\nfont-family:&amp;quot;Times New Roman&amp;quot;,&amp;quot;serif&amp;quot;;mso-fareast-font-family:&amp;quot;Times New Roman&amp;quot;;\r\ncolor:#666666&quot;&gt;About MyStone Store LLP&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/b&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align:justify;line-height:normal;background:\r\n#FCFCFC;vertical-align:baseline&quot;&gt;&lt;span style=&quot;font-size:12.0pt;font-family:\r\n&amp;quot;Times New Roman&amp;quot;,&amp;quot;serif&amp;quot;;mso-fareast-font-family:&amp;quot;Times New Roman&amp;quot;;color:#666666&quot;&gt;MyStone\r\nStore LLP is one of the leading platform for domestic and global wholesale and\r\nretail trade. We serve millions of buyers and suppliers around the world.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom:0in;margin-bottom:.0001pt;text-align:\r\njustify;line-height:normal;background:#FCFCFC;vertical-align:baseline&quot;&gt;&lt;span style=&quot;font-size:12.0pt;font-family:&amp;quot;Times New Roman&amp;quot;,&amp;quot;serif&amp;quot;;mso-fareast-font-family:\r\n&amp;quot;Times New Roman&amp;quot;;color:#666666&quot;&gt;Professional B2B and B2C website is the best\r\nchoice for exporting, importing and trading products. MyStone Store LLP has\r\ndeveloped into one of world’s best stone B2B and B2C websites. With decade of\r\nexperience in stone business, MyStone Store LLP has created one of the world''s\r\nbest online communities for global stone trade.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;h2 style=&quot;margin: 0in 0in 12pt; text-align: justify; line-height: 28.05pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: baseline;&quot;&gt;&lt;span style=&quot;font-size:14.0pt;color:#666666&quot;&gt;Our Mission&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/h2&gt;&lt;p class=&quot;cont&quot; style=&quot;margin: 0in 0in 12pt; text-align: justify; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: baseline;&quot;&gt;&lt;span style=&quot;color:#666666&quot;&gt;As part of the MyStone Store Group, our mission is to\r\nmake it simple and easy to do business anywhere in the world.&amp;nbsp;&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;cont&quot; style=&quot;margin: 0in 0in 12pt; text-align: justify; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: baseline;&quot;&gt;&lt;span style=&quot;color:#666666&quot;&gt;We do this by providing platform for suppliers to reach a\r\nglobal audience for their products, and by helping buyers find products and\r\nsuppliers quickly and efficiently.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;h2 style=&quot;margin: 0in 0in 12pt; text-align: justify; line-height: 28.05pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: baseline;&quot;&gt;&lt;span style=&quot;font-size:14.0pt;color:#666666&quot;&gt;One-Stop Sourcing&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/h2&gt;&lt;p class=&quot;cont&quot; style=&quot;margin-top:0in;margin-right:0in;margin-bottom:.25in;\r\nmargin-left:0in;text-align:justify;background:#FCFCFC;vertical-align:baseline&quot;&gt;&lt;span style=&quot;color:#666666&quot;&gt;MyStone Store LLP brings you hundreds of colours of\r\nproducts in over 40 different major categories, including Granite, Marble, Tiles,\r\nSlabs, Blocks, Precious stones, Mineral stones, DecorativeStones, Electronics,\r\nTools and machineries.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;cont&quot; style=&quot;margin:0in;margin-bottom:.0001pt;text-align:justify;\r\nbackground:#FCFCFC;vertical-align:baseline&quot;&gt;&lt;span style=&quot;color:#666666&quot;&gt;Buyers\r\nfor these products are located in 100+ countries and regions, and exchange\r\nhundreds of thousands of messages with suppliers on the platform each day.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;h2 style=&quot;margin: 0in 0in 12pt; text-align: justify; line-height: 28.05pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: baseline;&quot;&gt;&lt;span style=&quot;font-size:14.0pt;color:#666666&quot;&gt;Anytime, Anywhere&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/h2&gt;&lt;p class=&quot;cont&quot; style=&quot;margin: 0in 0in 12pt; text-align: justify; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: baseline;&quot;&gt;&lt;span style=&quot;color:#666666&quot;&gt;As a platform, we continue to develop services to help\r\nbusinesses do more and discover new opportunities.&amp;nbsp;&lt;br&gt;\r\n&lt;br&gt;\r\nWhether it’s sourcing from your mobile phone or contacting suppliers through\r\nsite, turn to MyStone Store LLP for all your global business needs.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n&lt;/p&gt;&lt;p class=&quot;cont&quot; style=&quot;text-align: justify; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: baseline;&quot;&gt;&lt;span style=&quot;color:#666666&quot;&gt;First register with us, and then post your company\r\nprofile, products, pricelists and offers on our site. Interested buyers may\r\nthen contact you after browsing your company profile, products, pricelists or\r\noffers.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;\r\n', 'About Us', '', ''),
(5, 1, 'Terms &amp; Conditions', '&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;\r\n', 'Terms &amp; Conditions', '', ''),
(3, 1, 'Privacy Policy', '&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom:0in;margin-bottom:.0001pt;line-height:\r\nnormal&quot;&gt;&lt;span style=&quot;font-size: 6.5pt; font-family: Arial, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;&quot;&gt;MyStone\r\nStore LLP. {hereinafter referred to as &quot;MyStone Store&quot;} is committed\r\nto safeguarding its users'' privacy. We request all our users to read the\r\nfollowing ''privacy policy'' to understand how their personal &amp;amp; business\r\ninformation will be treated, as they make full use of our services to their\r\nbenefit. This policy is applicable only to the entire network of marketplaces\r\noperated by MYSTONE STORE and not by any other company.&lt;/span&gt;&lt;span style=&quot;font-size: 6.5pt; font-family: Arial, sans-serif;&quot;&gt;&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;/span&gt;&lt;b&gt;&lt;span style=&quot;font-size: 6.5pt; font-family: Arial, sans-serif; color: rgb(0, 64, 128); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;&quot;&gt;Collection\r\nof Information&lt;/span&gt;&lt;/b&gt;&lt;span style=&quot;font-size: 6.5pt; font-family: Arial, sans-serif;&quot;&gt;&lt;br&gt;\r\n&lt;span style=&quot;background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;&quot;&gt;MYSTONE STORE collects information from its\r\nusers when they register to gain access to our services or at other specific\r\ninstances when they are requested to provide us with their personal &amp;amp;\r\nbusiness information. During registration, we ask the users for their name,\r\nemail address, business information and other personal details. Once a user\r\nregisters, he/she is no longer anonymous to MyStone Store and it is deemed that\r\nthe user has given MYSTONE STORE the right to publish the desired business\r\n&amp;amp; personal details throughout its marketplaces, including but not limited\r\nto, business directory, trade leads, catalogs etc.&lt;/span&gt;&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;span style=&quot;background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;&quot;&gt;When you are on our network and are asked for\r\npersonal information, you are sharing the information with MYSTONE STORE alone,\r\nunless it is specifically stated otherwise. Promotions that run on our network\r\nmay be sponsored by companies other than MYSTONE STORE or may be co-sponsored\r\nby MYSTONE STORE and another company. Some or all data collected during a\r\npromotion may be shared with the sponsor. However, you can decide not to\r\nparticipate in the promotion if you don''t want your data to be shared.&lt;/span&gt;&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;span style=&quot;background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;&quot;&gt;We also gather usage statistics such as pages\r\nviewed, number of unique visitors, browser software, screen resolution etc. for\r\nanalysis that helps us provide you improved user experience and services.&lt;/span&gt;&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;/span&gt;&lt;b&gt;&lt;span style=&quot;font-size: 6.5pt; font-family: Arial, sans-serif; color: rgb(0, 64, 128); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;&quot;&gt;Use\r\nof Personal &amp;amp; Business Information&lt;/span&gt;&lt;/b&gt;&lt;span style=&quot;font-size: 6.5pt; font-family: Arial, sans-serif;&quot;&gt;&lt;br&gt;\r\n&lt;span style=&quot;background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;&quot;&gt;MyStone Store''s primary goal in collecting\r\npersonal or public information is to provide the user with a customized\r\nexperience on our network of sites. This includes personalized services,\r\ninteractive communication and other services, most of which are completely free\r\nand remaining are paid. Business information is used to display the user''s\r\nbusiness listing or product offerings across our network to fetch maximum\r\nbusiness opportunities for the user.&amp;nbsp;&lt;/span&gt;&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;span style=&quot;background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;&quot;&gt;In order to provide free services, MYSTONE STORE\r\ndisplays advertisements based upon the site usage statistics and visitor\r\ntrends. MYSTONE STORE uses user''s personal &amp;amp; business information to serve\r\ntargeted advertisements through its websites, newsletters and customized\r\nmailers. In addition to it, once the user''s personal and business information\r\nis displayed on our network, the user may start receiving business enquiries\r\nthrough email, phone calls or SMS notifications, from various buyers and\r\nsellers that might or might not be of their interest. MYSTONE STORE does not\r\nexercise any control over its users for sending business enquiries to the\r\nlisted members.&amp;nbsp;&lt;/span&gt;&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;span style=&quot;background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;&quot;&gt;We record buying and browsing activities of our\r\nusers including but not limited to their client''s contact details and profiles\r\nand uses the same to provide value-added services to our users.&amp;nbsp;&lt;/span&gt;&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;/span&gt;&lt;b&gt;&lt;span style=&quot;font-size: 6.5pt; font-family: Arial, sans-serif; color: rgb(0, 64, 128); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;&quot;&gt;Sharing\r\nof Information&lt;/span&gt;&lt;/b&gt;&lt;span style=&quot;font-size: 6.5pt; font-family: Arial, sans-serif;&quot;&gt;&lt;br&gt;\r\n&lt;span style=&quot;background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;&quot;&gt;As a general rule, MYSTONE STORE will not\r\ndisclose or share any of the user''s personally identifiable information except\r\nwhen MYSTONE STORE has the user''s permission or under special circumstances,\r\nsuch as when MYSTONE STORE believes in good faith that the law requires it or\r\nas permitted in terms of this policy.&amp;nbsp;&lt;/span&gt;&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;span style=&quot;background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;&quot;&gt;MYSTONE STORE does not display user email\r\naddresses on marketplace to avoid extraction by email extractors.&amp;nbsp;&lt;/span&gt;&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;span style=&quot;background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;&quot;&gt;MYSTONE STORE may also disclose account\r\ninformation in special cases when MYSTONE STORE has reasons to believe that\r\ndisclosing this information is necessary to identify, contact or bring legal\r\naction against someone who may be violating MYSTONE STORE''s Terms of Services\r\nor may be causing injury to or interference with (either intentionally or\r\nunintentionally) MYSTONE STORE''s rights or property, other MYSTONE STORE\r\nnetwork website users, or if MYSTONE STORE deems it necessary to maintain,\r\nservice, and improve its products and services. Personal information collected\r\nmay be transferred and shared in the event of a sale.&lt;/span&gt;&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;/span&gt;&lt;b&gt;&lt;span style=&quot;font-size: 6.5pt; font-family: Arial, sans-serif; color: rgb(0, 64, 128); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;&quot;&gt;Distribution\r\nof Information&lt;/span&gt;&lt;/b&gt;&lt;span style=&quot;font-size: 6.5pt; font-family: Arial, sans-serif;&quot;&gt;&lt;br&gt;\r\n&lt;span style=&quot;background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;&quot;&gt;MYSTONE STORE may, from time to time, send its\r\nusers emails regarding its products and services. MYSTONE STORE constantly\r\ntries and improves the marketplace tools for better efficiency, more relevancy,\r\ninnovative business matchmaking and better personal preferences. MYSTONE STORE\r\nhas many match making tools on the marketplace to be used by its users for\r\nmaking relevant business contacts with each other.&amp;nbsp; MYSTONE STORE may\r\nallow direct mails using its own scripts (without disclosing the email address)\r\nwith respect/pertaining to the products and services of third parties that it\r\nfeels may be of interest to the user or if the user has shown interest in your\r\ncompany for business requirement by way of our paid buyers-sellers contact\r\nservices. All users shall be able to control the information sharing through\r\ntheir administration panel available at&amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;a href=&quot;https://seller.indiamart.com/&quot;&gt;&lt;span style=&quot;font-size: 6.5pt; font-family: Arial, sans-serif; color: blue;&quot;&gt;https://seller.MyStone\r\nStore.com/&lt;/span&gt;&lt;/a&gt;&lt;span style=&quot;font-size: 6.5pt; font-family: Arial, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;&quot;&gt;. Only MYSTONE\r\nSTORE, its registered members or its agents working under confidentiality\r\nagreements will send these direct mailers. Relevancy of the contacts made\r\nbetween users would depend upon the information sought &amp;amp; given by various\r\nusers.&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 6.5pt; font-family: Arial, sans-serif;&quot;&gt;&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;/span&gt;&lt;b&gt;&lt;span style=&quot;font-size: 6.5pt; font-family: Arial, sans-serif; color: rgb(0, 64, 128); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;&quot;&gt;Updation\r\nof Information&lt;/span&gt;&lt;/b&gt;&lt;span style=&quot;font-size: 6.5pt; font-family: Arial, sans-serif;&quot;&gt;&lt;br&gt;\r\n&lt;span style=&quot;background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;&quot;&gt;A user may edit his/her account information and\r\nprofile by logging onto our website and/or by sending a request to useradmin@MyStone\r\nStore.com. The requested changes may take upto 30 days to appear online because\r\nof verification process and server cache policies.&amp;nbsp;&lt;/span&gt;&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;span style=&quot;background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;&quot;&gt;A user account can be deleted or deactivated,\r\nbut doing so will result in the user not being able to access any members-only\r\narea of the network. Residual information will remain within our archive\r\nrecords.&amp;nbsp;&lt;/span&gt;&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;/span&gt;&lt;b&gt;&lt;span style=&quot;font-size: 6.5pt; font-family: Arial, sans-serif; color: rgb(0, 64, 128); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;&quot;&gt;Protection\r\nof information&lt;/span&gt;&lt;/b&gt;&lt;span style=&quot;font-size: 6.5pt; font-family: Arial, sans-serif;&quot;&gt;&lt;br&gt;\r\n&lt;span style=&quot;background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;&quot;&gt;As with all information, MYSTONE STORE do not\r\nsell any data in bulk to third party that can be misused for telemarketing or\r\nbulk mailing or any other wrong purposes. In addition, MYSTONE STORE does not\r\nsell any user''s personal information or business information until and unless\r\nit is permitted by the user. Any user statistics that we may provide to\r\nprospective advertisers or partners regarding product or service usage on MYSTONE\r\nSTORE network is provided in an aggregate form only and does not include any\r\npersonally identifiable information about any individual user. Users may log in\r\nto&amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;a href=&quot;https://seller.indiamart.com/&quot;&gt;&lt;span style=&quot;font-size: 6.5pt; font-family: Arial, sans-serif; color: blue;&quot;&gt;https://seller.MyStone Store.com/&lt;/span&gt;&lt;/a&gt;&lt;span style=&quot;font-size: 6.5pt; font-family: Arial, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;&quot;&gt;&amp;nbsp;to check current status\r\nof their contact sharing permissions.&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 6.5pt; font-family: Arial, sans-serif;&quot;&gt;&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;span style=&quot;background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;&quot;&gt;We request our users to sign out of their MYSTONE\r\nSTORE account and close their browser window when they have finished their\r\nwork. This is to ensure that others cannot access their personal or business\r\ninformation and correspondence, if the user shares the computer with someone\r\nelse or is using a computer in a public place.&amp;nbsp;&lt;/span&gt;&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;span style=&quot;background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;&quot;&gt;MYSTONE STORE takes necessary steps, within its\r\nlimits of commercial viability and necessity, to ensure that the user''s\r\ninformation is treated securely.&amp;nbsp;&lt;/span&gt;&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;span style=&quot;background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;&quot;&gt;Unfortunately, no data transmission over the\r\nInternet can be guaranteed to be 100% secure. As a result, while MYSTONE STORE\r\nstrives to protect the user''s personal &amp;amp; business information, it cannot\r\nensure the security of any information transmitted to MYSTONE STORE and you do\r\nso at your own risk. Once MYSTONE STORE receives your transmission, it makes\r\nbest efforts to ensure its security in its systems. Please keep in mind that\r\nwhenever you post personal &amp;amp; business information online, that is\r\naccessible to the public, you may receive unsolicited messages from other\r\nparties.&amp;nbsp;&lt;/span&gt;&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;/span&gt;&lt;a href=&quot;https://www.doubleclick.com/privacy/faq.aspx&quot;&gt;&lt;b&gt;&lt;span style=&quot;font-size: 6.5pt; font-family: Arial, sans-serif; color: rgb(0, 64, 128);&quot;&gt;Google and the DoubleClick DART cookie&lt;/span&gt;&lt;/b&gt;&lt;/a&gt;&lt;span style=&quot;font-size:12.0pt;font-family:&amp;quot;Times New Roman&amp;quot;,&amp;quot;serif&amp;quot;;mso-fareast-font-family:\r\n&amp;quot;Times New Roman&amp;quot;&quot;&gt;&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin: 0in 0in 0.0001pt 12.5pt; text-align: justify; text-indent: -0.25in; line-height: 9pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;&quot;&gt;&lt;!--[if !supportLists]--&gt;&lt;span style=&quot;font-size: 10pt; font-family: Symbol;&quot;&gt;·&lt;span style=&quot;font-variant-numeric: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &amp;quot;Times New Roman&amp;quot;;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;\r\n&lt;/span&gt;&lt;/span&gt;&lt;!--[endif]--&gt;&lt;span style=&quot;font-size: 6.5pt; font-family: Arial, sans-serif;&quot;&gt;Google, as a third party\r\nvendor, uses cookies to serve ads on our site.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin: 0in 0in 0.0001pt 12.5pt; text-align: justify; text-indent: -0.25in; line-height: 9pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;&quot;&gt;&lt;!--[if !supportLists]--&gt;&lt;span style=&quot;font-size: 10pt; font-family: Symbol;&quot;&gt;·&lt;span style=&quot;font-variant-numeric: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &amp;quot;Times New Roman&amp;quot;;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;\r\n&lt;/span&gt;&lt;/span&gt;&lt;!--[endif]--&gt;&lt;span style=&quot;font-size: 6.5pt; font-family: Arial, sans-serif;&quot;&gt;Google''s use of the DART\r\ncookie enables it and its partners to serve ads to our users based on their\r\nvisit to our sites and/or other sites on the Internet.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin: 0in 0in 0.0001pt 12.5pt; text-align: justify; text-indent: -0.25in; line-height: 9pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;&quot;&gt;&lt;!--[if !supportLists]--&gt;&lt;span style=&quot;font-size: 10pt; font-family: Symbol;&quot;&gt;·&lt;span style=&quot;font-variant-numeric: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &amp;quot;Times New Roman&amp;quot;;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;\r\n&lt;/span&gt;&lt;/span&gt;&lt;!--[endif]--&gt;&lt;span style=&quot;font-size: 6.5pt; font-family: Arial, sans-serif;&quot;&gt;Users may opt out of the\r\nuse of the DART cookie by visiting the&amp;nbsp;&lt;/span&gt;&lt;a href=&quot;https://www.google.com/privacy_ads.html&quot;&gt;&lt;span style=&quot;font-size: 6.5pt; font-family: Arial, sans-serif; color: blue;&quot;&gt;Google\r\nad and content network privacy policy&lt;/span&gt;&lt;/a&gt;&lt;span style=&quot;font-size: 6.5pt; font-family: Arial, sans-serif;&quot;&gt;.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom:0in;margin-bottom:.0001pt;line-height:\r\nnormal&quot;&gt;&lt;span style=&quot;font-size: 6.5pt; font-family: Arial, sans-serif;&quot;&gt;&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;/span&gt;&lt;b&gt;&lt;span style=&quot;font-size: 6.5pt; font-family: Arial, sans-serif; color: rgb(0, 64, 128); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;&quot;&gt;Changes\r\nin Privacy Policy&lt;/span&gt;&lt;/b&gt;&lt;span style=&quot;font-size: 6.5pt; font-family: Arial, sans-serif;&quot;&gt;&lt;br&gt;\r\n&lt;span style=&quot;background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;&quot;&gt;The policy may change from time to time so\r\nplease check periodically.&lt;/span&gt;&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;/span&gt;&lt;b&gt;&lt;span style=&quot;font-size: 6.5pt; font-family: Arial, sans-serif; color: rgb(0, 64, 128); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;&quot;&gt;Disclaimer\r\nIn Respect Of Pharmaceutical Products if Available On&amp;nbsp;&lt;/span&gt;&lt;/b&gt;&lt;a href=&quot;https://www.indiamart.com/&quot;&gt;&lt;b&gt;&lt;span style=&quot;font-size: 6.5pt; font-family: Arial, sans-serif; color: blue;&quot;&gt;www.MyStone Store.com&lt;/span&gt;&lt;/b&gt;&lt;/a&gt;&lt;span style=&quot;font-size: 6.5pt; font-family: Arial, sans-serif;&quot;&gt;&lt;br&gt;\r\n&lt;span style=&quot;background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;&quot;&gt;MyStone Store.com is a platform that does not\r\nfacilitates the purchase of pharmaceutical products, in fact, if it only\r\nadvertise and/or showcase the pharmaceutical products posted by the Suppliers\r\nlisted on the website –&amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;a href=&quot;https://www.indiamart.com/&quot;&gt;&lt;span style=&quot;font-size: 6.5pt; font-family: Arial, sans-serif; color: blue;&quot;&gt;www.MyStone Store.com&lt;/span&gt;&lt;/a&gt;&lt;span style=&quot;font-size: 6.5pt; font-family: Arial, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;&quot;&gt;. The Buyers and Suppliers assure MyStone Store\r\nand hereby agree to abide by and be compliant of all the related laws, rules,\r\nregulations, notifications or orders issued by the Government of India or any\r\nof its Agencies from time to time. MyStone Store shall not be responsible for\r\nany information/content related to the Medicine(s) and/or Drugs,\r\nposted/provided/displayed by the listed Suppliers on our website –&lt;/span&gt;&lt;a href=&quot;https://www.indiamart.com/&quot;&gt;&lt;span style=&quot;font-size: 6.5pt; font-family: Arial, sans-serif; color: blue;&quot;&gt;www.MyStone Store.com&lt;/span&gt;&lt;/a&gt;&lt;span style=&quot;font-size: 6.5pt; font-family: Arial, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;&quot;&gt;, as we are only a medium of\r\nadvertisement for the Buyers and Suppliers. Suppliers of the Medicines and/or\r\nDrugs hereby undertake that they shall solely be responsible and shall bear all\r\nthe liabilities in respect of selling prescriptive Medicines and/or Drugs\r\nmentioned in the Schedules of the Drugs and Cosmetics Act, 1940, without the\r\nCertified Practitioner’s Prescription. In the event of breach of such\r\ncondition, MyStone Store shall not be liable and responsible in any manner\r\nwhatsoever, as MyStone Store does not take part in the actual transaction that\r\ntakes place between the Buyers and Suppliers. User(s) of the website –&amp;nbsp;&lt;/span&gt;&lt;a href=&quot;https://www.indiamart.com/&quot;&gt;&lt;span style=&quot;font-size: 6.5pt; font-family: Arial, sans-serif; color: blue;&quot;&gt;www.MyStone Store.com&lt;/span&gt;&lt;/a&gt;&lt;span style=&quot;font-size: 6.5pt; font-family: Arial, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;&quot;&gt;&amp;nbsp;undertake and agree to\r\nINDEMNIFY and hold harmless MyStone Store or any of its affiliates, directors,\r\nofficers, employees or representatives from and against any/all losses,\r\nliabilities, damages, claims, costs and expenses (including attorney’s fees and\r\nexpenses, any third party claims), which MyStone Store may incur or suffer as a\r\nresult of or in connection with any illegal sales of drugs and/or medicines. In\r\ncompliance with Drug and Cosmetic Act and Rules, we don''t display or list the\r\nMedicines and/or Drugs mentioned in the Schedule X of the Drugs and Cosmetics\r\nAct, 1940. MyStone Store does not offer any guarantees or warranties on the\r\nmedicinal products or services displayed or listed on our website –&amp;nbsp;&lt;/span&gt;&lt;a href=&quot;https://www.indiamart.com/&quot;&gt;&lt;span style=&quot;font-size: 6.5pt; font-family: Arial, sans-serif; color: blue;&quot;&gt;www.MyStone Store.com&amp;nbsp;&lt;/span&gt;&lt;/a&gt;&lt;span style=&quot;font-size: 6.5pt; font-family: Arial, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;&quot;&gt;and is not liable for any\r\ntransaction between the Buyers &amp;amp; Suppliers as such, including the sale of\r\nany medicine(s) restricted and/or banned for sale by the Governmental or any\r\nother Regulatory Authorities.&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 6.5pt; font-family: Arial, sans-serif;&quot;&gt;&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;!--[if !supportLineBreakNewLine]--&gt;&lt;br&gt;\r\n&lt;!--[endif]--&gt;&lt;/span&gt;&lt;span style=&quot;font-size:12.0pt;font-family:&amp;quot;Times New Roman&amp;quot;,&amp;quot;serif&amp;quot;;\r\nmso-fareast-font-family:&amp;quot;Times New Roman&amp;quot;&quot;&gt;&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;div style=&quot;border-top: none; border-right: none; border-left: none; border-image: initial; border-bottom: 1pt solid rgb(241, 241, 241); padding: 0in 0in 5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;&quot;&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 5pt; text-align: justify; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: none; padding: 0in;&quot;&gt;&lt;b&gt;&lt;span style=&quot;font-size: 10pt; font-family: Arial, sans-serif;&quot;&gt;FOR APP USERS&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;/div&gt;&lt;p&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span style=&quot;font-size: 6.5pt; line-height: 115%; font-family: Arial, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;&quot;&gt;By downloading or using the MyStone Store Mobile app, these\r\nterms will automatically apply to you – you should make sure therefore that you\r\nread them carefully before using the mobile app. We are offering you this\r\nmobile app to use for your own personal use without cost. You can share the app\r\nwith anyone via given option in the app or play store link but you’re not\r\nallowed to copy, or modify the mobile app, any part of the mobile app, or our\r\ntrademarks in any way. You’re not allowed to attempt to extract the source code\r\nof the mobile app, and you also shouldn’t try to translate the mobile app into\r\nother languages, or make derivative versions. The mobile app itself, and all\r\nthe trade marks, copyright, database rights and other intellectual property\r\nrights related to it, still belong to MyStone Store LLP.&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 6.5pt; line-height: 115%; font-family: Arial, sans-serif;&quot;&gt;&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;span style=&quot;background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;&quot;&gt;At the bottom of these terms and conditions you\r\nwill be able to find links to our website where we set out our Privacy Policy\r\nand the general Terms and Conditions, which will be relevant if you use the\r\nmobile app and applicable on you.&amp;nbsp;&lt;/span&gt;&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;span style=&quot;background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;&quot;&gt;MyStone Store is committed to ensuring that the\r\nmobile app is as useful and efficient as possible. For that reason, we reserve\r\nthe right to make changes to the mobile app or to charge for its services, at\r\nany time and for any reason. We will never charge you for the mobile app or its\r\nservices without making it very clear to you exactly what you’re paying\r\nfor.&amp;nbsp;&lt;/span&gt;&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;span style=&quot;background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;&quot;&gt;The MyStone Store mobile app stores and\r\nprocesses the personal data that you have provided to us so that we can serve\r\nyour need better. It’s your responsibility to keep your phone and access to the\r\nmobile app secure. We therefore recommend that you do not jailbreak or root\r\nyour phone, which is the process of removing software restrictions and\r\nlimitations imposed by the official operating system of your device. It could\r\nmake your phone vulnerable to malware/viruses/malicious programs, compromise\r\nyour phone’s security features and it could mean that the MyStone Store mobile\r\napp won’t work properly or at all.&amp;nbsp;&lt;/span&gt;&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;span style=&quot;background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;&quot;&gt;MyStone Store may obtain the following types of\r\ninformation from or concerning you or your mobile phone device, which may\r\ninclude information that can be used to identify you as specified below\r\n(&quot;Personally Identifying Information&quot;) :&amp;nbsp;&lt;/span&gt;&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;span style=&quot;background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;&quot;&gt;You need to provide certain Personally\r\nIdentifiable Information, such as your mobile phone number, email and mobile\r\ndevice information to MyStone Store when choosing to participate in various\r\nuses of the MyStone Store services, such as registering as a user. MyStone\r\nStore App will sometimes access your address book or contact list from your\r\nmobile phone to save MyStone Store supplier’s contact details in your device. MyStone\r\nStore may also access your location information to provide search results based\r\non your geo location. Location data gathered from a mobile phone is used only\r\nto provide search results and is not used in any other manner whatsoever. This\r\ninformation may be compiled and analyzed on an individual or aggregated basis\r\ndepending on the nature of the internal research for the intended service to\r\nthe users of the App.&amp;nbsp;&lt;/span&gt;&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;span style=&quot;background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;&quot;&gt;This information may include the products and\r\nscreens you have viewed on the App and to send you offers and other\r\ncommunications based on the interests expressed by you previously on MyStone\r\nStore App.&amp;nbsp;&lt;/span&gt;&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;span style=&quot;background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;&quot;&gt;You should be aware that there are certain\r\nthings that MyStone Store will not take responsibility for, like the ability to\r\ndownload and store the app on your mobile. The connection can be Wi-Fi, or\r\nprovided by your mobile network provider, but MyStone Store cannot take\r\nresponsibility for the mobile app not working at full functionality if you\r\ndon’t have access to Wi-Fi, and you don’t have any of your data allowance\r\nleft.&amp;nbsp;&lt;/span&gt;&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;span style=&quot;background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;&quot;&gt;If you’re using the mobile app outside of an\r\narea with Wi-Fi, you should remember that your terms of agreement with your\r\nmobile network provider will still apply. As a result, you may be charged by\r\nyour mobile provider for the cost of data for the duration of the connection\r\nwhile accessing the mobile app, or other third party charges. In using the\r\nmobile app, you’re accepting responsibility for any such charges, including\r\nroaming data charges if you use the mobile app outside of your home territory\r\n(i.e. region or country) without turning off data roaming. If you are not the\r\nbill payer for the device on which you’re using the mobile app, please be aware\r\nthat we assume that you have received permission from the bill payer for using\r\nthe mobile app.&amp;nbsp;&lt;/span&gt;&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;span style=&quot;background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;&quot;&gt;When you’re using the mobile host function of\r\nthe mobile app, it’s important to bear in mind that although we endeavor to\r\nensure that it is updated and correct at all times, we do rely on third parties\r\nto provide information to us so that we can make it available to you.&amp;nbsp;&lt;/span&gt;&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;span style=&quot;background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;&quot;&gt;The mobile app is currently available\r\non&amp;nbsp;Android, and&amp;nbsp;iOS – the requirements for both systems (and for any\r\nadditional systems we decide to extend the availability of the app to) may\r\nchange, and you’ll need to download the updates, as and when provided, if you\r\nwant to keep using the mobile app. MyStone Store does not promise that it will\r\nalways update the mobile app so that it is relevant to you and/or works with\r\nthe iOS/Android version that you have installed on your device. However, you\r\npromise to always accept updates to the application when offered to you, We may\r\nalso wish to stop providing the mobile app, and may terminate use of it at any\r\ntime without giving notice of termination to you. Unless we tell you otherwise,\r\nupon any termination, (a) the rights and licenses granted to you in these terms\r\nwill end; (b) you must stop using the mobile app, and (if needed) delete it\r\nfrom your device.&lt;/span&gt;&lt;/span&gt;&lt;o:p&gt;&lt;/o:p&gt;&lt;/p&gt;\r\n', 'Privacy Policy', '', ''),
(6, 1, 'Delivery Information', '&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;\r\n', 'Delivery Information', '', ''),
(7, 1, '24 x 7 Customer Care', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Please get in touch with us at below email&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;mystonestore.info@gmail.com&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '24 x 7 Customer Care', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_to_layout`
--

CREATE TABLE IF NOT EXISTS `oc_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information_to_layout`
--

INSERT INTO `oc_information_to_layout` (`information_id`, `store_id`, `layout_id`) VALUES
(7, 0, 0),
(4, 0, 0),
(3, 0, 0),
(5, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_to_store`
--

CREATE TABLE IF NOT EXISTS `oc_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information_to_store`
--

INSERT INTO `oc_information_to_store` (`information_id`, `store_id`) VALUES
(3, 0),
(4, 0),
(5, 0),
(6, 0),
(7, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_language`
--

CREATE TABLE IF NOT EXISTS `oc_language` (
  `language_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `oc_language`
--

INSERT INTO `oc_language` (`language_id`, `name`, `code`, `locale`, `image`, `directory`, `sort_order`, `status`) VALUES
(1, 'English', 'en-gb', 'en_US.UTF-8,en_US,en-gb,english', 'gb.png', 'english', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout`
--

CREATE TABLE IF NOT EXISTS `oc_layout` (
  `layout_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `oc_layout`
--

INSERT INTO `oc_layout` (`layout_id`, `name`) VALUES
(1, 'Home'),
(2, 'Product'),
(3, 'Category'),
(4, 'Default'),
(5, 'Manufacturer'),
(6, 'Account'),
(7, 'Checkout'),
(8, 'Contact'),
(9, 'Sitemap'),
(10, 'Affiliate'),
(11, 'Information'),
(12, 'Compare'),
(13, 'Search'),
(14, 'Easy Blog'),
(15, 'Message');

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout_module`
--

CREATE TABLE IF NOT EXISTS `oc_layout_module` (
  `layout_module_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`layout_module_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=92 ;

--
-- Dumping data for table `oc_layout_module`
--

INSERT INTO `oc_layout_module` (`layout_module_id`, `layout_id`, `code`, `position`, `sort_order`) VALUES
(2, 4, '0', 'content_top', 0),
(3, 4, '0', 'content_top', 1),
(20, 5, '0', 'column_left', 2),
(69, 10, 'affiliate', 'column_right', 1),
(77, 6, 'account', 'column_right', 1),
(90, 1, 'featured.3', 'content_top', 1),
(89, 1, 'banner.9', 'column_right', 1),
(81, 3, 'filter', 'column_left', 1),
(82, 3, 'magicfilter', 'column_left', 1),
(84, 15, 'account', 'column_right', 1),
(88, 1, 'category', 'column_left', 2),
(91, 1, 'categoryfeatured.10', 'column_left', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout_route`
--

CREATE TABLE IF NOT EXISTS `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(255) NOT NULL,
  PRIMARY KEY (`layout_route_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=64 ;

--
-- Dumping data for table `oc_layout_route`
--

INSERT INTO `oc_layout_route` (`layout_route_id`, `layout_id`, `store_id`, `route`) VALUES
(57, 6, 0, 'account/%'),
(17, 10, 0, 'affiliate/%'),
(59, 3, 0, 'product/category'),
(63, 1, 0, 'common/home'),
(20, 2, 0, 'product/product'),
(24, 11, 0, 'information/information'),
(23, 7, 0, 'checkout/%'),
(31, 8, 0, 'information/contact'),
(32, 9, 0, 'information/sitemap'),
(34, 4, 0, ''),
(45, 5, 0, 'product/manufacturer'),
(52, 12, 0, 'product/compare'),
(53, 13, 0, 'product/search'),
(60, 14, 0, 'blog/%'),
(61, 15, 0, 'message/%');

-- --------------------------------------------------------

--
-- Table structure for table `oc_length_class`
--

CREATE TABLE IF NOT EXISTS `oc_length_class` (
  `length_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL,
  PRIMARY KEY (`length_class_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `oc_length_class`
--

INSERT INTO `oc_length_class` (`length_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '10.00000000'),
(3, '0.39370000');

-- --------------------------------------------------------

--
-- Table structure for table `oc_length_class_description`
--

CREATE TABLE IF NOT EXISTS `oc_length_class_description` (
  `length_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`length_class_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_length_class_description`
--

INSERT INTO `oc_length_class_description` (`length_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Centimeter', 'cm'),
(2, 1, 'Millimeter', 'mm'),
(3, 1, 'Inch', 'in');

-- --------------------------------------------------------

--
-- Table structure for table `oc_location`
--

CREATE TABLE IF NOT EXISTS `oc_location` (
  `location_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `geocode` varchar(32) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `open` text NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_manufacturer`
--

CREATE TABLE IF NOT EXISTS `oc_manufacturer` (
  `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`manufacturer_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `oc_manufacturer`
--

INSERT INTO `oc_manufacturer` (`manufacturer_id`, `name`, `image`, `sort_order`) VALUES
(5, 'HTC', 'catalog/demo/htc_logo.jpg', 0),
(6, 'Palm', 'catalog/demo/palm_logo.jpg', 0),
(7, 'Hewlett-Packard', 'catalog/demo/hp_logo.jpg', 0),
(8, 'Apple', 'catalog/demo/apple_logo.jpg', 0),
(9, 'Canon', 'catalog/demo/canon_logo.jpg', 0),
(10, 'Sony', 'catalog/demo/sony_logo.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_manufacturer_to_store`
--

CREATE TABLE IF NOT EXISTS `oc_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`manufacturer_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_manufacturer_to_store`
--

INSERT INTO `oc_manufacturer_to_store` (`manufacturer_id`, `store_id`) VALUES
(5, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_marketing`
--

CREATE TABLE IF NOT EXISTS `oc_marketing` (
  `marketing_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(64) NOT NULL,
  `clicks` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`marketing_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `oc_marketing`
--

INSERT INTO `oc_marketing` (`marketing_id`, `name`, `description`, `code`, `clicks`, `date_added`) VALUES
(1, 'Sankranti', 'This is Sankranti Marketing test', '5a5f81bfdb278', 0, '2018-01-17 11:13:47'),
(2, 'New Year 2018', 'This is New Year 2018 marketing test', '5a5f8469dfaf9', 6, '2018-01-17 11:15:31');

-- --------------------------------------------------------

--
-- Table structure for table `oc_modification`
--

CREATE TABLE IF NOT EXISTS `oc_modification` (
  `modification_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `author` varchar(64) NOT NULL,
  `version` varchar(32) NOT NULL,
  `link` varchar(255) NOT NULL,
  `xml` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`modification_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `oc_modification`
--

INSERT INTO `oc_modification` (`modification_id`, `name`, `code`, `author`, `version`, `link`, `xml`, `status`, `date_added`) VALUES
(1, 'Local copy OCMOD by iSenseLabs', 'isensealabs_quickfix_ocmod', 'iSenseLabs', '1.3', 'http://isenselabs.com', '<modification>\r\n    <name>Local copy OCMOD by iSenseLabs</name>\r\n	<version>1.3</version>\r\n	<link>http://isenselabs.com</link>\r\n	<author>iSenseLabs</author>\r\n	<code>isensealabs_quickfix_ocmod</code>\r\n\r\n	<file path="admin/controller/extension/installer.php">\r\n		<operation error="skip">\r\n			<search ><![CDATA[''url''  => str_replace(''&amp;'', ''&'', $this->url->link(''extension/installer/ftp'', ''token='' . $this->session->data[''token''],]]></search>\r\n			<add position="replace"><![CDATA[''url''  => str_replace(''&amp;'', ''&'', $this->url->link(''extension/installer/localcopy'', ''token='' . $this->session->data[''token''],]]></add>\r\n		</operation>\r\n\r\n		<operation>\r\n			<search><![CDATA[public function unzip() {]]></search>\r\n			<add position="before"><![CDATA[			\r\n	public function localcopy() {\r\n		$this->load->language(''extension/installer'');\r\n\r\n		$json = array();\r\n\r\n		if (!$this->user->hasPermission(''modify'', ''extension/installer'')) {\r\n			$json[''error''] = $this->language->get(''error_permission'');\r\n		}\r\n\r\n		if (VERSION == ''2.0.0.0'') {\r\n		    $directory = DIR_DOWNLOAD  . str_replace(array(''../'', ''..\\\\'', ''..''), '''', $this->request->post[''path'']) . ''/upload/'';\r\n		} else {\r\n		    $directory = DIR_UPLOAD  . str_replace(array(''../'', ''..\\\\'', ''..''), '''', $this->request->post[''path'']) . ''/upload/'';\r\n		}\r\n\r\n		if (!is_dir($directory)) {\r\n			$json[''error''] = $this->language->get(''error_directory'');\r\n		}\r\n\r\n		if (!$json) {\r\n			// Get a list of files ready to upload\r\n			$files = array();\r\n\r\n			$path = array($directory . ''*'');\r\n\r\n			while (count($path) != 0) {\r\n				$next = array_shift($path);\r\n\r\n				foreach (glob($next) as $file) {\r\n					if (is_dir($file)) {\r\n						$path[] = $file . ''/*'';\r\n					}\r\n\r\n					$files[] = $file;\r\n				}\r\n			}\r\n\r\n			$root = dirname(DIR_APPLICATION).''/'';\r\n\r\n			foreach ($files as $file) {\r\n				// Upload everything in the upload directory\r\n				$destination = substr($file, strlen($directory));\r\n\r\n				// Update from newer OpenCart versions:\r\n				if (substr($destination, 0, 5) == ''admin'') {\r\n					$destination = DIR_APPLICATION . substr($destination, 5);\r\n				} else if (substr($destination, 0, 7) == ''catalog'') {\r\n					$destination = DIR_CATALOG . substr($destination, 7);\r\n				} else if (substr($destination, 0, 5) == ''image'') {\r\n					$destination = DIR_IMAGE . substr($destination, 5);\r\n				} else if (substr($destination, 0, 6) == ''system'') {\r\n					$destination = DIR_SYSTEM . substr($destination, 6);\r\n				} else {\r\n					$destination = $root.$destination;\r\n				}\r\n\r\n				if (is_dir($file)) {\r\n					if (!file_exists($destination)) {\r\n						if (!mkdir($destination)) {\r\n							$json[''error''] = sprintf($this->language->get(''error_ftp_directory''), $destination);\r\n						}\r\n					}\r\n				}\r\n\r\n				if (is_file($file)) {\r\n					if (!copy($file, $destination)) {\r\n						$json[''error''] = sprintf($this->language->get(''error_ftp_file''), $file);\r\n					}\r\n				}\r\n			}\r\n		}\r\n\r\n		$this->response->addHeader(''Content-Type: application/json'');\r\n		$this->response->setOutput(json_encode($json));\r\n	}]]></add>\r\n		</operation>\r\n	</file>	\r\n</modification>\r\n', 1, '2017-08-10 01:15:25'),
(5, 'Message System', 'Message System ', 'Smart Web Players', '2.0.0.0, 2.0.1.0, 2.0.1.1, 2.0.2', '', '<?xml version="1.0" encoding="UTF-8"?>\n<modification>\n	<name>Message System</name>\n	<version>2.0.0.0, 2.0.1.0, 2.0.1.1, 2.0.2.0, 2.0.3.1 </version>\n	<code>Message System </code>\n	<author>Smart Web Players</author>\n	<!--ADMIN STARTS-->\n	<file path="admin/model/sale/customer.php">\n		<operation>\n			<search><![CDATA[public function deleteCustomer($customer_id) {]]></search>\n			<add position="after"><![CDATA[\n					/****** Message System Starts *****/\n					$this->db->query("DELETE FROM " . DB_PREFIX . "msp_message WHERE customer_id = ''" . (int)$customer_id . "''");\n					/****** Message System Ends *****/\n		]]></add>\n		</operation>\n	</file>\n	<file path="admin/controller/common/menu.php">\n		<operation>\n			<search><![CDATA[$this->load->language(''common/menu'');]]></search>\n			<add position="after"><![CDATA[\n		/****** Message System Starts *****/\n		$data[''text_message''] = $this->language->get(''text_message'');\n		$data[''message''] = $this->url->link(''message/message'', ''token='' . $this->session->data[''token''], ''SSL'');\n		/****** Message System Ends *****/\n		]]></add>\n		</operation>\n	</file>\n	<file path="admin/language/*/common/menu.php">\n		<operation>\n			<search><![CDATA[$_[''text_affiliate'']]]></search>\n			<add position="before"><![CDATA[\n/****** Message System Starts *****/\n$_[''text_message'']                     = ''Message System'';\n/****** Message System Ends *****/\n		]]></add>\n		</operation>\n	</file>\n	<file path="admin/view/template/common/menu.tpl">\n	<operation>\n			<search><![CDATA[$text_dashboard; ?></span></a></li>]]></search>\n			<add position="after"><![CDATA[\n	<!-- /****** Message System Starts *****/ -->\n  <li id="message"><a class="parent"><i class="fa fa-envelope fa-fw"></i> <span><?php echo $text_message; ?></span></a>\n		<ul>\n			<li><a href="<?php echo $message; ?>"><?php echo $text_message; ?></a></li>\n		</ul>\n	</li>\n	<!-- /****** Message System Ends *****/ -->]]></add>\n		</operation>\n	</file>\n	<file path="admin/controller/common/header.php">\n		<operation>\n			<search><![CDATA[$data[''logged''] = true;]]></search>\n			<add position="after"><![CDATA[\n		/****** Message System Ends *****/\n		$data[''link_message''] = $this->url->link(''message/message'',''token=''.$this->session->data[''token''],''SSL'');\n		$filter_data = array(\n			''filter_status'' => ''0'',\n			''filter_sender''        => ''customer''\n		);\n		\n		$this->load->model(''message/message'');\n		\n		$data[''alert_messages''] = $this->model_message_message->getTotalUnreadMessages($filter_data);\n		/****** Message System Ends *****/\n		]]></add>\n		</operation>\n	</file>\n	<file path="admin/view/template/common/header.tpl">\n		<operation>\n			<search><![CDATA[<ul class="nav pull-right">]]></search>\n			<add position="after"><![CDATA[\n		<!-- /****** Message System Starts *****/ -->\n    <li>\n			<a href="<?php echo $link_message ?>" >\n				<?php if($alert_messages) { ?>\n				<span class="label label-danger pull-left" id="alert_messages"><?php echo $alert_messages; ?></span>\n				<?php } ?>\n				<i class="fa fa-envelope fa-lg"></i>\n			</a>\n		</li>\n		<!-- /****** Message System Ends *****/ -->\n		]]></add>\n		</operation>\n	</file>\n	<!--ADMIN ENDS-->\n	<!--CATALOG STARTS-->\n	<file path="catalog/view/theme/*/template/account/account.tpl">\n		<operation>\n			<search><![CDATA[<?php echo $text_recurring; ?></a></li>]]></search>\n			<add position="after"><![CDATA[\n				<!-- /****** Message System Starts *****/ -->\n        <li><a href="<?php echo $message; ?>"><?php echo $text_message_system; ?>\n							<span class="alert_messages">\n								<?php if($alert_messages) { ?> \n									<b>(<?php echo $alert_messages ?>)</b>\n								<?php } ?>\n							</span>\n						</a>\n				</li>\n				<!-- /****** Message System Ends *****/ -->\n			]]></add>\n		</operation>\n	</file>\n	<file path="catalog/view/theme/*/template/module/account.tpl">\n		<operation>\n			<search><![CDATA[<?php echo $text_newsletter; ?></a>]]></search>\n			<add position="after"><![CDATA[\n		<!-- /****** Message System Starts *****/ -->\n		<a href="<?php echo $message; ?>" class="list-group-item"><?php echo $text_message_system; ?>\n			<span class="alert_messages">\n				<?php if($alert_messages) { ?> \n					<b>(<?php echo $alert_messages ?>)</b>\n				<?php } ?>\n			</span>\n		</a>\n		<!-- /****** Message System Ends *****/ -->\n		]]></add>\n		</operation>\n	</file>\n	<file path="catalog/view/theme/*/template/common/header.tpl">\n		<operation>\n				<search><![CDATA[<?php echo $text_download; ?></a></li>]]></search>\n				<add position="after"><![CDATA[\n							<!-- /****** Message System Starts *****/ -->\n							<li><a href="<?php echo $message_system; ?>"><?php echo $text_message_system; ?>\n										<span class="alert_messages">\n											<?php if($alert_messages) { ?> \n												<b>(<?php echo $alert_messages ?>)</b>\n											<?php } ?>\n										</span>\n									</a>\n							</li>\n							<!-- /****** Message System Ends *****/ -->\n			]]></add>\n			</operation>\n	</file>\n	<file path="catalog/controller/common/header.php">\n		<operation>\n				<search><![CDATA[$data[''base''] = $server;]]></search>\n				<add position="before"><![CDATA[\n		/****** Message System Starts *****/\n		$this->language->load(''account/message'');\n		$data[''text_message_system''] = $this->language->get(''text_message_system'');\n		$data[''message_system''] = $this->url->link(''account/message'');\n		$filter_data =array(\n			''filter_sender''   => ''user'',\n			''filter_status''   => ''0'',\n			''customer_id''     => $this->customer->getId(),\n		);\n		$this->load->model(''account/message'');\n		$data[''alert_messages''] = $this->model_account_message->getTotalUnreadMessages($filter_data);\n		\n		/****** Message System Ends *****/\n		]]></add>\n			</operation>\n	</file>\n	<file path="catalog/controller/account/account.php">\n		<operation>\n				<search><![CDATA[$this->url->link(''account/recurring'', '''', ''SSL'');]]></search>\n				<add position="before"><![CDATA[\n		/****** Message System Starts *****/\n		$this->language->load(''account/message'');\n		$data[''text_message_system''] = $this->language->get(''text_message_system'');\n		$data[''message''] = $this->url->link(''account/message'', '''', ''SSL'');\n				$filter_data =array(\n			''filter_sender''   => ''user'',\n			''filter_status''   => ''0'',\n			''customer_id''     => $this->customer->getId(),\n		);\n		$this->load->model(''account/message'');\n		$data[''alert_messages''] = $this->model_account_message->getTotalUnreadMessages($filter_data);\n		/****** Message System Ends *****/\n		]]></add>\n			</operation>\n	</file>\n	<file path="catalog/controller/module/account.php">\n		<operation>\n				<search><![CDATA[$this->language->get(''text_recurring'');]]></search>\n				<add position="before"><![CDATA[\n		/****** Message System Starts *****/\n		$this->language->load(''account/message'');\n		$data[''text_message_system''] = $this->language->get(''text_message_system'');\n		$data[''message''] = $this->url->link(''account/message'', '''', ''SSL'');\n				$filter_data =array(\n			''filter_sender''   => ''user'',\n			''filter_status''   => ''0'',\n			''customer_id''     => $this->customer->getId(),\n		);\n		$this->load->model(''account/message'');\n		$data[''alert_messages''] = $this->model_account_message->getTotalUnreadMessages($filter_data);\n		/****** Message System Ends *****/\n		]]></add>\n			</operation>\n	</file>\n	<!--CATALOG ENDS-->\n</modification>', 1, '2017-09-12 03:16:52'),
(4, 'Modification  Simpleblog', 'opcrat_simpleblog_ocmod_admin', 'Opcrat', '1.0', 'http://opcrat.com', '<?xml version="1.0" encoding="utf-8"?>\r\n<modification>\r\n  <name>Modification  Simpleblog</name>\r\n  <version>1.0</version>\r\n  <author>Opcrat</author>\r\n  <code>opcrat_simpleblog_ocmod_admin</code>\r\n	<link>http://opcrat.com</link>\r\n    <file path="admin/controller/common/column_left.php">\r\n      <operation>\r\n        <search><![CDATA[\r\n        // Sales\r\n        ]]></search>\r\n\r\n        <add position="before"><![CDATA[\r\n\r\n          // blogs\r\n          $blog = array();\r\n\r\n          if ($this->user->hasPermission(''access'', ''simple_blog/article'')) {\r\n            $blog[] = array(\r\n              ''name''	   => $this->language->get(''text_article''),\r\n              ''href''     => $this->url->link(''simple_blog/article'', ''token='' . $this->session->data[''token''], true),\r\n              ''children'' => array()\r\n            );\r\n          }\r\n\r\n          if ($this->user->hasPermission(''access'', ''simple_blog/author'')) {\r\n            $blog[] = array(\r\n              ''name''	   => $this->language->get(''text_author''),\r\n              ''href''     => $this->url->link(''simple_blog/author'', ''token='' . $this->session->data[''token''], true),\r\n              ''children'' => array()\r\n            );\r\n          }\r\n\r\n\r\n          if ($this->user->hasPermission(''access'', ''simple_blog/category'')) {\r\n            $blog[] = array(\r\n              ''name''	   => $this->language->get(''text_category''),\r\n              ''href''     => $this->url->link(''simple_blog/category'', ''token='' . $this->session->data[''token''], true),\r\n              ''children'' => array()\r\n            );\r\n          }\r\n\r\n          if ($this->user->hasPermission(''access'', ''simple_blog/comment'')) {\r\n            $blog[] = array(\r\n              ''name''	   => $this->language->get(''text_comment''),\r\n              ''href''     => $this->url->link(''simple_blog/comment'', ''token='' . $this->session->data[''token''], true),\r\n              ''children'' => array()\r\n            );\r\n          }\r\n\r\n          if ($this->user->hasPermission(''access'', ''simple_blog/report'')) {\r\n            $blog[] = array(\r\n              ''name''	   => $this->language->get(''text_report''),\r\n              ''href''     => $this->url->link(''simple_blog/report'', ''token='' . $this->session->data[''token''], true),\r\n              ''children'' => array()\r\n            );\r\n          }\r\n\r\n          if ($blog) {\r\n            $data[''menus''][] = array(\r\n              ''id''       => ''menu-blog'',\r\n              ''icon''	   => ''fa-comment-o'',\r\n              ''name''	   => $this->language->get(''text_blog''),\r\n              ''href''     => '''',\r\n              ''children'' => $blog\r\n            );\r\n          }\r\n\r\n            ]]>\r\n          </add>\r\n      </operation>\r\n    </file>\r\n\r\n    <file path="admin/language/en-gb/common/column_left.php">\r\n  		<operation>\r\n  			<search><![CDATA[\r\n  				$_[''text_other_status'']              = ''Other Statuses'';\r\n  					]]>\r\n  			</search>\r\n\r\n  	    <add position="after"><![CDATA[\r\n\r\n          $_[''text_report'']                   = ''Report'';\r\n          $_[''text_blog'']                   = ''Simple Blogs'';\r\n          $_[''text_article'']                   = ''Article'';\r\n          $_[''text_author'']                   = ''Author'';\r\n          $_[''text_category'']                   = ''Category'';\r\n          $_[''text_comment'']                   = ''Comment'';\r\n\r\n  	      ]]>\r\n  	  	</add>\r\n  		</operation>\r\n	   </file>\r\n\r\n     <file path="admin/controller/setting/setting.php">\r\n      <operation>\r\n        <search><![CDATA[\r\n        if (isset($this->request->post[''config_logo''])) {\r\n            ]]>\r\n        </search>\r\n\r\n        <add position="before"><![CDATA[\r\n\r\n          $data[''captcha_pages''][] = array(\r\n      			''text''  => $this->language->get(''text_captcha''),\r\n      			''value'' => ''article_info''\r\n      		);\r\n\r\n          ]]>\r\n        </add>\r\n      </operation>\r\n\r\n      <operation>\r\n        <search><![CDATA[\r\n      $data[''text_return''] = $this->language->get(''text_return'');\r\n            ]]>\r\n        </search>\r\n\r\n        <add position="after"><![CDATA[\r\n\r\n    		$data[''text_captcha''] = $this->language->get(''text_captcha'');\r\n\r\n          ]]>\r\n        </add>\r\n      </operation>\r\n     </file>\r\n     <file path="admin/language/en-gb/setting/setting.php">\r\n      <operation>\r\n        <search><![CDATA[\r\n      $_[''text_affiliate'']               = ''Affiliates'';\r\n            ]]>\r\n        </search>\r\n\r\n        <add position="after"><![CDATA[\r\n\r\n      $_[''text_captcha'']                 = ''BlogCaptcha'';\r\n        \r\n\r\n          ]]>\r\n        </add>\r\n      </operation>\r\n     </file>\r\n</modification>\r\n', 1, '2017-08-10 01:43:55'),
(7, 'Default timezone for PHP and Database', 'default_timezone', 'Tri Le', '2.2', 'http://tlecoding.gurleegirl.com', '<?xml version=''1.0'' encoding=''utf-8''?>\n<modification>\n  <name>Default timezone for PHP and Database</name>\n  <code>default_timezone</code>\n  <version>2.2</version>\n  <author>Tri Le</author>\n  <link>http://tlecoding.gurleegirl.com</link>\n\n  <file path="system/library/db.php">\n    <operation>\n      <search><![CDATA[function query]]></search>\n      <add position="after"><![CDATA[\n//tri mod start\nif (version_compare(VERSION, ''2.2'') >= 0) {\n  $query = $this->adaptor->query("SELECT * FROM " . DB_PREFIX . "setting WHERE `code` = ''timezone''");\n} else {\n  $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "setting WHERE `code` = ''timezone''");\n}\n\nif ($query->num_rows) {\n  foreach ($query->rows as $row) {\n    if ($row[''key''] == ''timezone_timezone'') $timezone[''timezone''] = $row[''value''];\n    if ($row[''key''] == ''timezone_status'') $timezone[''status''] = $row[''value''];\n  }\n  \n  if (!empty($timezone[''status'']) && !empty($timezone[''timezone''])) {\n    date_default_timezone_set($timezone[''timezone'']);\n    \n    $now = new DateTime();\n    $mins = $now->getOffset() / 60;\n    $sgn = ($mins < 0 ? -1 : 1);\n    $mins = abs($mins);\n    $hrs = floor($mins / 60);\n    $mins -= $hrs * 60;\n    $offset = sprintf(''%+d:%02d'', $hrs * $sgn, $mins);\n    if (version_compare(VERSION, ''2.2'') >= 0) {\n      $this->adaptor->query("SET time_zone=''" . $offset . "''");\n    } else {\n      $this->db->query("SET time_zone=''" . $offset . "''");\n    }\n  }\n}\n//tri mod end\n      ]]></add>\n    </operation>\n  </file>\n</modification>', 1, '2017-11-27 07:50:28');

-- --------------------------------------------------------

--
-- Table structure for table `oc_module`
--

CREATE TABLE IF NOT EXISTS `oc_module` (
  `module_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL,
  PRIMARY KEY (`module_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `oc_module`
--

INSERT INTO `oc_module` (`module_id`, `name`, `code`, `setting`) VALUES
(1, 'Category', 'banner', '{"name":"Category","banner_id":"6","width":"182","height":"182","status":"0"}'),
(2, 'Home Page', 'carousel', '{"name":"Home Page","banner_id":"8","width":"130","height":"10000","status":"1"}'),
(3, 'Home Page', 'featured', '{"name":"Home Page","product_name":"","product":["50","52","51","56","55"],"limit":"4","width":"600","height":"400","status":"1"}'),
(4, 'Home Page', 'slideshow', '{"name":"Home Page","banner_id":"7","width":"1140","height":"380","status":"1"}'),
(5, 'Banner 1', 'banner', '{"name":"Banner 1","banner_id":"6","width":"182","height":"182","status":"1"}'),
(6, 'Home Page - something for everybody', 'html', '{"name":"Home Page - something for everybody","module_description":{"1":{"title":"","description":"&lt;div class=&quot;why_choose_us&quot;&gt;\\r\\n   \\r\\n    &lt;div class=&quot;container&quot;&gt;\\r\\n        &lt;h2 class=&quot;container_title&quot;&gt;There\\u2019s something for everybody&lt;\\/h2&gt;\\r\\n        &lt;div class=&quot;row&quot;&gt;\\r\\n\\r\\n          &lt;div class=&quot;col-lg-4 col-sm-6 col-xs-12 choose&quot;&gt;\\r\\n                  \\r\\n                  &lt;div class=&quot;choose_stone&quot;&gt;\\r\\n                     &lt;h4&gt;Selecting Material&lt;\\/h4&gt;\\r\\n                     &lt;p&gt;We offer a variety of granite and marble and you can see all the material available,our customer service department ready to guide .&lt;\\/p&gt;\\r\\n\\r\\n                     &lt;a href=&quot;#&quot; class=&quot;more_button&quot;&gt;READMORE&lt;\\/a&gt;\\r\\n                  &lt;\\/div&gt;\\r\\n\\r\\n          &lt;\\/div&gt;\\r\\n          &lt;div class=&quot;col-lg-4 col-sm-6 col-xs-12 choose&quot;&gt;\\r\\n            &lt;div class=&quot;choose_stone&quot;&gt;\\r\\n                     &lt;h4&gt;Template&lt;\\/h4&gt;\\r\\n                     &lt;p&gt;After choosing your material, the sales representative will contact you to schedule the day when the templater can come.&lt;\\/p&gt;\\r\\n\\r\\n                     &lt;a href=&quot;#&quot; class=&quot;more_button&quot;&gt;READMORE&lt;\\/a&gt;\\r\\n                  &lt;\\/div&gt;\\r\\n          &lt;\\/div&gt;\\r\\n          &lt;div class=&quot;col-lg-4 col-sm-6 col-xs-12 choose&quot;&gt;\\r\\n            &lt;div class=&quot;choose_stone&quot;&gt;\\r\\n                     &lt;h4&gt;Fabrication&lt;\\/h4&gt;\\r\\n                     &lt;p&gt;Once the templater has measured your countertop, the layout comes to our fabrication department and the cutting phase takes place.&lt;\\/p&gt;\\r\\n\\r\\n                     &lt;a href=&quot;#&quot; class=&quot;more_button&quot;&gt;READMORE&lt;\\/a&gt;\\r\\n                  &lt;\\/div&gt;\\r\\n          &lt;\\/div&gt;\\r\\n\\r\\n\\r\\n        \\r\\n\\r\\n          &lt;div class=&quot;col-lg-4 col-sm-6 col-xs-12 choose&quot;&gt;\\r\\n            &lt;div class=&quot;choose_stone&quot;&gt;\\r\\n                     &lt;h4&gt;Template Viewing&lt;\\/h4&gt;\\r\\n                     &lt;p&gt;Depending on your material choice, you can actually visualize how your countertop is going to look like. We digitaly place your layout.&lt;\\/p&gt;\\r\\n\\r\\n                     &lt;a href=&quot;#&quot; class=&quot;more_button&quot;&gt;READMORE&lt;\\/a&gt;\\r\\n                  &lt;\\/div&gt;\\r\\n          &lt;\\/div&gt;\\r\\n          &lt;div class=&quot;col-lg-4 col-sm-6 col-xs-12 choose&quot;&gt;\\r\\n            &lt;div class=&quot;choose_stone&quot;&gt;\\r\\n                     &lt;h4&gt;Delivery &amp;amp; Installation&lt;\\/h4&gt;\\r\\n                     &lt;p&gt;Focusing on your investment, our vehicles are completely adapted to safely delivery your countertop team has over years of experience.&lt;\\/p&gt;\\r\\n\\r\\n                     &lt;a href=&quot;#&quot; class=&quot;more_button&quot;&gt;READMORE&lt;\\/a&gt;\\r\\n                  &lt;\\/div&gt;\\r\\n          &lt;\\/div&gt;\\r\\n          &lt;div class=&quot;col-lg-4 col-sm-6 col-xs-12 choose&quot;&gt;\\r\\n            &lt;div class=&quot;choose_stone&quot;&gt;\\r\\n                     &lt;h4&gt;Maintenance&lt;\\/h4&gt;\\r\\n                     &lt;p&gt;The last step but not the least. After going throughout all the steps before, you will receive a maintenance guide.&lt;\\/p&gt;\\r\\n\\r\\n                     &lt;a href=&quot;#&quot; class=&quot;more_button&quot;&gt;READMORE&lt;\\/a&gt;\\r\\n                  &lt;\\/div&gt;\\r\\n          &lt;\\/div&gt;\\r\\n          \\r\\n\\r\\n        &lt;\\/div&gt;\\r\\n\\r\\n    &lt;\\/div&gt;\\r\\n\\r\\n&lt;\\/div&gt;\\r\\n"}},"status":"0"}'),
(7, 'Home Page - How It''s Works', 'html', '{"name":"Home Page - How It''s Works","module_description":{"1":{"title":"","description":"&lt;div class=&quot;works&quot;&gt;\\r\\n  \\r\\n  &lt;div class=&quot;container&quot;&gt;\\r\\n\\r\\n   &lt;h3&gt;How It''s Works&lt;\\/h3&gt;\\r\\n\\r\\n    &lt;div class=&quot;row&quot;&gt;\\r\\n         \\r\\n       &lt;div class=&quot;works_inner&quot;&gt;\\r\\n         &lt;p&gt;&lt;img src=&quot;catalog\\/view\\/theme\\/mystonestore\\/img\\/icons\\/hand.png&quot;&gt;&lt;span&gt;Pick a&lt;br&gt; Product&lt;\\/span&gt;&lt;\\/p&gt;\\r\\n       &lt;\\/div&gt;  \\r\\n\\r\\n       &lt;div class=&quot;works_inner&quot;&gt;\\r\\n         &lt;p&gt;&lt;img src=&quot;catalog\\/view\\/theme\\/mystonestore\\/img\\/icons\\/paint.png&quot;&gt;&lt;span&gt;Choose a&lt;br&gt;Design&lt;\\/span&gt;&lt;\\/p&gt;\\r\\n       &lt;\\/div&gt;  \\r\\n\\r\\n       &lt;div class=&quot;works_inner&quot;&gt;\\r\\n          &lt;p&gt;&lt;img src=&quot;catalog\\/view\\/theme\\/mystonestore\\/img\\/icons\\/mob.png&quot;&gt;&lt;span&gt;Pay Online&lt;br&gt;Secure Payment&lt;\\/span&gt;&lt;\\/p&gt;\\r\\n        &lt;\\/div&gt;  \\r\\n\\r\\n       &lt;div class=&quot;works_inner&quot;&gt;\\r\\n\\r\\n          &lt;p&gt;&lt;img src=&quot;catalog\\/view\\/theme\\/mystonestore\\/img\\/icons\\/doll.png&quot;&gt;&lt;span&gt;Collect y Order&lt;br&gt;or Shipping&lt;\\/span&gt;&lt;\\/p&gt;\\r\\n       &lt;\\/div&gt;  \\r\\n      &lt;\\/div&gt;\\r\\n\\r\\n\\r\\n  &lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n"}},"status":"0"}'),
(8, 'Home Page - Content', 'html', '{"name":"Home Page - Content","module_description":{"1":{"title":"","description":"&lt;div class=&quot;col-sm-1 col-xs-1 clint_say&quot;&gt;\\r\\n&lt;h3&gt;C&lt;br&gt;L&lt;br&gt;I&lt;br&gt;E&lt;br&gt;N&lt;br&gt;T&lt;br&gt; S&lt;br&gt;A&lt;br&gt;Y&lt;br&gt;S&lt;\\/h3&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;div class=&quot;col-md-5 col-lg-5 col-sm-5 col-xs-11&quot;&gt;\\r\\n\\r\\n&lt;div class=&quot;testimonials-slider&quot;&gt;\\r\\n      &lt;div class=&quot;slide&quot;&gt;\\r\\n          &lt;div class=&quot;testimonials-carousel-thumbnail&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;http:\\/\\/webdesigntunes.com\\/tutorial\\/testimonials\\/images\\/team1.jpg&quot; width=&quot;120&quot;&gt;&lt;\\/div&gt;\\r\\n                &lt;div class=&quot;testimonials-carousel-context&quot;&gt;\\r\\n             \\r\\n                &lt;div class=&quot;testimonials-carousel-content&quot;&gt;&lt;p&gt;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has&lt;\\/p&gt;&lt;\\/div&gt;\\r\\n                &lt;div class=&quot;testimonials-name&quot;&gt;Bill Robinson &lt;span&gt;google.com&lt;\\/span&gt;&lt;\\/div&gt;\\r\\n            &lt;\\/div&gt;\\r\\n      &lt;\\/div&gt;\\r\\n       \\r\\n      &lt;div class=&quot;slide&quot;&gt;\\r\\n          &lt;div class=&quot;testimonials-carousel-thumbnail&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;http:\\/\\/webdesigntunes.com\\/tutorial\\/testimonials\\/images\\/team2.jpg&quot; width=&quot;120&quot;&gt;&lt;\\/div&gt;\\r\\n                &lt;div class=&quot;testimonials-carousel-context&quot;&gt;\\r\\n                &lt;div class=&quot;testimonials-carousel-content&quot;&gt;&lt;p&gt;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has&lt;\\/p&gt;&lt;\\/div&gt;\\r\\n                &lt;div class=&quot;testimonials-name&quot;&gt;Michael Rocks &lt;span&gt;yahoo.com&lt;\\/span&gt;&lt;\\/div&gt;\\r\\n            &lt;\\/div&gt;\\r\\n      &lt;\\/div&gt;\\r\\n       \\r\\n      &lt;div class=&quot;slide&quot;&gt;\\r\\n          &lt;div class=&quot;testimonials-carousel-thumbnail&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;http:\\/\\/webdesigntunes.com\\/tutorial\\/testimonials\\/images\\/team3.jpg&quot; width=&quot;120&quot;&gt;&lt;\\/div&gt;\\r\\n                &lt;div class=&quot;testimonials-carousel-context&quot;&gt;\\r\\n               \\r\\n                &lt;div class=&quot;testimonials-carousel-content&quot;&gt;&lt;p&gt;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has&lt;\\/p&gt;&lt;\\/div&gt;\\r\\n                 &lt;div class=&quot;testimonials-name&quot;&gt;Andrew Bilson &lt;span&gt;dailydesignnotes.com&lt;\\/span&gt;&lt;\\/div&gt;\\r\\n            &lt;\\/div&gt;\\r\\n      &lt;\\/div&gt;\\r\\n      &lt;div class=&quot;slide&quot;&gt;\\r\\n          &lt;div class=&quot;testimonials-carousel-thumbnail&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;http:\\/\\/webdesigntunes.com\\/tutorial\\/testimonials\\/images\\/team3.jpg&quot; width=&quot;120&quot;&gt;&lt;\\/div&gt;\\r\\n                &lt;div class=&quot;testimonials-carousel-context&quot;&gt;\\r\\n            \\r\\n                &lt;div class=&quot;testimonials-carousel-content&quot;&gt;&lt;p&gt;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has&lt;\\/p&gt;&lt;\\/div&gt;\\r\\n                    &lt;div class=&quot;testimonials-name&quot;&gt;Andrew Bilson &lt;span&gt;dailydesignnotes.com&lt;\\/span&gt;&lt;\\/div&gt;\\r\\n            &lt;\\/div&gt;\\r\\n      &lt;\\/div&gt;\\r\\n      &lt;div class=&quot;slide&quot;&gt;\\r\\n          &lt;div class=&quot;testimonials-carousel-thumbnail&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;http:\\/\\/webdesigntunes.com\\/tutorial\\/testimonials\\/images\\/team3.jpg&quot; width=&quot;120&quot;&gt;&lt;\\/div&gt;\\r\\n                &lt;div class=&quot;testimonials-carousel-context&quot;&gt;\\r\\n                &lt;div class=&quot;testimonials-carousel-content&quot;&gt;&lt;p&gt;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has&lt;\\/p&gt;&lt;\\/div&gt;\\r\\n                  &lt;div class=&quot;testimonials-name&quot;&gt;Andrew Bilson &lt;span&gt;dailydesignnotes.com&lt;\\/span&gt;&lt;\\/div&gt;\\r\\n            &lt;\\/div&gt;\\r\\n      &lt;\\/div&gt;\\r\\n  &lt;\\/div&gt;  \\r\\n  &lt;\\/div&gt;   \\r\\n\\r\\n  &lt;div class=&quot;col-sm-6 col-md-6 col-xs-12 excelllence&quot;&gt;\\r\\n\\r\\n    &lt;h1&gt;We Pursue&lt;br&gt;&lt;span&gt;Quality and Excellence&lt;\\/span&gt;&lt;br&gt; in all aspects&lt;\\/h1&gt;\\r\\n  &lt;\\/div&gt;"}},"status":"0"}'),
(9, 'Advertisement Banner', 'banner', '{"name":"Advertisement Banner","banner_id":"9","width":"600","height":"1200","status":"1"}'),
(10, 'Top Categories', 'categoryfeatured', '{"name":"Top Categories","category_name":"","category":["20","21","22"],"limit":"5","width":"43","height":"45","status":"1"}');

-- --------------------------------------------------------

--
-- Table structure for table `oc_msp_message`
--

CREATE TABLE IF NOT EXISTS `oc_msp_message` (
  `message_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `sender` varchar(20) NOT NULL,
  `message` text NOT NULL,
  `read_status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=60 ;

--
-- Dumping data for table `oc_msp_message`
--

INSERT INTO `oc_msp_message` (`message_id`, `user_id`, `customer_id`, `sender`, `message`, `read_status`, `date_added`) VALUES
(11, 2, 3, 'user', 'Test', 1, '2017-09-13 01:44:21'),
(12, 2, 1, 'customer', 'test submit', 1, '2017-09-13 03:04:17'),
(13, 2, 1, 'user', 'test hai', 1, '2017-09-13 03:17:10'),
(14, 1, 2, 'customer', 'Hai this is test enquiry', 1, '2017-09-13 03:21:52'),
(15, 2, 1, 'customer', '&lt;span style=&quot;color: rgb(59, 56, 54); font-family: Roboto-Regular; font-size: 12px;&quot;&gt;Hai this is test enquiry&lt;/span&gt;', 1, '2017-09-13 03:23:26'),
(16, 2, 1, 'user', 'Hai tell me in brief', 1, '2017-09-13 03:23:56'),
(17, 3, 1, 'customer', 'test syed', 1, '2017-09-13 03:31:33'),
(18, 0, 1, 'customer', 'test', 1, '2017-09-13 07:17:19'),
(19, 2, 1, 'customer', 'hi &lt;br&gt;', 1, '2017-09-13 23:18:23'),
(20, 2, 1, 'user', 'Hi daniel', 1, '2017-09-13 23:30:28'),
(21, 2, 1, 'customer', 'Hi Shankar&lt;br&gt;', 1, '2017-09-13 23:36:37'),
(22, 2, 1, 'customer', 'Hi are you there&lt;br&gt;', 1, '2017-09-13 23:45:11'),
(23, 2, 1, 'user', 'yes', 1, '2017-09-13 23:45:37'),
(24, 0, 1, 'customer', '&lt;div class=&quot;testimonials-carousel-content&quot;&gt;&lt;p&gt;It is a long established \nfact that a reader will be distracted by the readable content of a page \nwhen looking at its layout. The point of using Lorem Ipsum is that it \nhas&lt;/p&gt;&lt;/div&gt;', 1, '2017-09-15 06:50:15'),
(25, 0, 1, 'customer', 'hi', 1, '2017-09-15 07:04:04'),
(26, 0, 12, 'customer', 'test', 1, '2017-09-18 06:43:56'),
(27, 0, 12, 'customer', 'hi', 1, '2017-09-18 06:44:15'),
(28, 2, 12, 'user', 'hi', 1, '2017-09-25 23:08:07'),
(29, 2, 1, 'user', 'hi', 1, '2017-09-25 23:08:34'),
(30, 1, 12, 'user', '&lt;p&gt;test&lt;br&gt;&lt;/p&gt;', 1, '2017-10-16 09:33:21'),
(31, 0, 26, 'customer', 'hello', 1, '2017-11-01 07:28:51'),
(32, 2, 31, 'customer', 'test', 1, '2017-11-27 06:03:34'),
(33, 0, 31, 'customer', 'hjhjkh', 1, '2017-11-27 06:04:22'),
(34, 0, 12, 'customer', 'dfsdf', 1, '2017-11-27 23:52:43'),
(35, 0, 12, 'customer', 'TEST', 1, '2017-11-30 04:44:19'),
(36, 1, 12, 'user', '&lt;p&gt;1323&lt;/p&gt;', 1, '2017-11-30 05:02:26'),
(37, 1, 12, 'user', '&lt;p&gt;&lt;b style=&quot;color: rgb(102, 102, 102); font-size: 12px;&quot;&gt;&lt;b&gt;&lt;/b&gt;&lt;/b&gt;&lt;/p&gt;&lt;div class=&quot;panel-body&quot; style=&quot;box-sizing: border-box; padding: 15px;&quot;&gt;&lt;div id=&quot;view-message&quot; style=&quot;box-sizing: border-box;&quot;&gt;&lt;fieldset style=&quot;box-sizing: border-box; border: 0px; margin: 0px; padding: 0px; min-width: 0px;&quot;&gt;&lt;legend style=&quot;box-sizing: border-box; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(229, 229, 229); border-left-color: initial; border-image: initial; padding: 0px 0px 5px; display: block; width: 1191.91px; margin-bottom: 17px; font-size: 18px; line-height: inherit; color: rgb(51, 51, 51);&quot;&gt;Bala RS&lt;/legend&gt;&lt;/fieldset&gt;&lt;/div&gt;&lt;/div&gt;', 1, '2017-11-30 05:24:11'),
(38, 13, 12, 'user', 'tesr', 0, '2018-01-06 00:54:47'),
(39, 13, 12, 'user', 'sad', 0, '2018-01-06 00:57:24'),
(40, 13, 20, 'user', '12323', 0, '2018-01-06 00:58:01'),
(41, 30, 20, 'user', 'test', 0, '2018-01-06 01:17:53'),
(42, 1, 20, 'user', 'test daniel', 0, '2018-01-06 01:19:24'),
(43, 30, 1, 'user', 'hi', 0, '2018-01-06 01:21:50'),
(44, 30, 1, 'user', 'hi', 0, '2018-01-06 01:22:05'),
(45, 30, 23, 'user', 'hi test', 0, '2018-01-06 01:23:57'),
(46, 1, 12, 'user', '&lt;p&gt;Hello this is test message for 10-01-2018&lt;/p&gt;', 0, '2018-01-10 00:01:06'),
(47, 1, 46, 'user', '&lt;p&gt;This is message we are sending from coimbatore', 0, '2018-01-28 23:48:00'),
(48, 0, 30, 'customer', 'Thanks for the mail is has come to spam please check it .', 1, '2018-01-28 23:50:13'),
(49, 0, 30, 'customer', '29.01.2019 11:21aM this is the second message we are sending to check the status of the time.', 1, '2018-01-28 23:51:52'),
(50, 0, 30, 'customer', 'This message is for admin and the customer now we are checking the date and time 29.01.2018 11:22AM', 1, '2018-01-28 23:52:45'),
(51, 0, 30, 'customer', 'This is test message. 29.01.2018', 1, '2018-01-28 23:53:26'),
(52, 1, 30, 'user', '&lt;p&gt;At what time you are receiving the msg&lt;/p&gt;', 1, '2018-01-28 23:54:06'),
(53, 0, 30, 'customer', 'test message at 11:26AM to check the notification at admin', 1, '2018-01-28 23:56:30'),
(54, 12, 30, 'user', 'Now bala is messaging from his login to check whether it will go to admin. And Syed Test should not view the message sent to admin. If message is sent to syed test only he should need to view only that particular message', 1, '2018-01-29 00:01:18'),
(55, 12, 30, 'user', 'Now bala is messaging from his login to check whether it will go to admin. And Syed Test should not view the message sent to admin. If message is sent to syed test only he should need to view only that particular message', 1, '2018-01-29 00:01:22'),
(56, 30, 12, 'user', 'Hi Bala this is at 12:28PM testing the message.', 0, '2018-01-29 00:58:20'),
(57, 12, 30, 'user', 'test danny', 0, '2018-01-29 01:04:37'),
(58, 12, 30, 'user', 'test danny', 0, '2018-01-29 01:04:46'),
(59, 30, 12, 'user', 'Hi Bala this is at 12:28PM testing the message.', 0, '2018-01-29 01:04:54');

-- --------------------------------------------------------

--
-- Table structure for table `oc_option`
--

CREATE TABLE IF NOT EXISTS `oc_option` (
  `option_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `oc_option`
--

INSERT INTO `oc_option` (`option_id`, `type`, `sort_order`) VALUES
(1, 'radio', 1),
(2, 'checkbox', 2),
(4, 'text', 3),
(5, 'select', 4),
(6, 'textarea', 5),
(7, 'file', 6),
(8, 'date', 7),
(9, 'time', 8),
(10, 'datetime', 9),
(12, 'date', 11),
(13, 'select', 2),
(14, 'select', 3);

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_description`
--

CREATE TABLE IF NOT EXISTS `oc_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option_description`
--

INSERT INTO `oc_option_description` (`option_id`, `language_id`, `name`) VALUES
(1, 1, 'Radio'),
(2, 1, 'Checkbox'),
(4, 1, 'Text'),
(6, 1, 'Textarea'),
(8, 1, 'Date'),
(7, 1, 'File'),
(5, 1, 'Select'),
(9, 1, 'Time'),
(10, 1, 'Date &amp; Time'),
(12, 1, 'Delivery Date'),
(13, 1, 'Color'),
(14, 1, 'Size');

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_value`
--

CREATE TABLE IF NOT EXISTS `oc_option_value` (
  `option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_value_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=60 ;

--
-- Dumping data for table `oc_option_value`
--

INSERT INTO `oc_option_value` (`option_value_id`, `option_id`, `image`, `sort_order`) VALUES
(43, 1, '', 3),
(32, 1, '', 1),
(45, 2, '', 4),
(44, 2, '', 3),
(42, 5, '', 4),
(41, 5, '', 3),
(39, 5, '', 1),
(40, 5, '', 2),
(31, 1, '', 2),
(24, 2, '', 2),
(23, 2, '', 1),
(54, 13, '', 6),
(53, 13, '', 5),
(52, 13, '', 4),
(51, 13, '', 3),
(50, 13, '', 2),
(49, 13, '', 1),
(59, 14, '', 5),
(58, 14, '', 4),
(57, 14, '', 3),
(56, 14, '', 2),
(55, 14, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_value_description`
--

CREATE TABLE IF NOT EXISTS `oc_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option_value_description`
--

INSERT INTO `oc_option_value_description` (`option_value_id`, `language_id`, `option_id`, `name`) VALUES
(43, 1, 1, 'Large'),
(32, 1, 1, 'Small'),
(45, 1, 2, 'Checkbox 4'),
(44, 1, 2, 'Checkbox 3'),
(31, 1, 1, 'Medium'),
(42, 1, 5, 'Yellow'),
(41, 1, 5, 'Green'),
(39, 1, 5, 'Red'),
(40, 1, 5, 'Blue'),
(24, 1, 2, 'Checkbox 2'),
(23, 1, 2, 'Checkbox 1'),
(54, 1, 13, 'White'),
(53, 1, 13, 'Orange'),
(52, 1, 13, 'Blue'),
(51, 1, 13, 'Light Green'),
(50, 1, 13, 'Green'),
(49, 1, 13, 'Red'),
(59, 1, 14, 'Size 740 x 800'),
(58, 1, 14, 'Size 440 x 300'),
(57, 1, 14, 'Size 300 x 250'),
(56, 1, 14, 'Size 500 x 400'),
(55, 1, 14, 'Size 800 x 400');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order`
--

CREATE TABLE IF NOT EXISTS `oc_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_no` int(11) NOT NULL DEFAULT '0',
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `custom_field` text NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(40) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_custom_field` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(40) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_custom_field` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `order_status_id` int(11) NOT NULL DEFAULT '0',
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `seller_commission` decimal(15,4) NOT NULL,
  `marketing_id` int(11) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT '1.00000000',
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=72 ;

--
-- Dumping data for table `oc_order`
--

INSERT INTO `oc_order` (`order_id`, `invoice_no`, `invoice_prefix`, `store_id`, `store_name`, `store_url`, `customer_id`, `customer_group_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `custom_field`, `payment_firstname`, `payment_lastname`, `payment_company`, `payment_address_1`, `payment_address_2`, `payment_city`, `payment_postcode`, `payment_country`, `payment_country_id`, `payment_zone`, `payment_zone_id`, `payment_address_format`, `payment_custom_field`, `payment_method`, `payment_code`, `shipping_firstname`, `shipping_lastname`, `shipping_company`, `shipping_address_1`, `shipping_address_2`, `shipping_city`, `shipping_postcode`, `shipping_country`, `shipping_country_id`, `shipping_zone`, `shipping_zone_id`, `shipping_address_format`, `shipping_custom_field`, `shipping_method`, `shipping_code`, `comment`, `total`, `order_status_id`, `affiliate_id`, `commission`, `seller_id`, `seller_commission`, `marketing_id`, `tracking`, `language_id`, `currency_id`, `currency_code`, `currency_value`, `ip`, `forwarded_ip`, `user_agent`, `accept_language`, `date_added`, `date_modified`) VALUES
(67, 1, 'INV-2013-00', 0, 'MyStone Store', 'http://preview.ixly.in/mystorestone/', 30, 1, 'Syed', 'Basha test', 'syedjeelan006@gmail.com', '8217624441', '8217624441', '', 'Syed', 'Basha test', '', '1637', '7, AK Ibrahim Building, 2nd Cross, Bazaar street', 'Neelasandra', '560047', 'India', 99, 'Karnataka', 1489, '', '[]', 'Cash On Delivery', 'cod', '', '', '', '', '', '', '', '', 0, '', 0, '', '[]', '', '', '', '1072.0000', 1, 0, '0.0000', 1, '1018.4000', 0, '', 1, 2, 'USD', '1.00000000', '117.253.142.166', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36', 'en-US,en;q=0.9', '2018-01-06 07:50:41', '2018-01-06 07:50:57'),
(68, 2, 'INV-2013-00', 0, 'MyStone Store', 'http://preview.ixly.in/mystorestone/', 30, 1, 'Syed', 'Basha test', 'syedjeelan006@gmail.com', '8217624441', '8217624441', '', 'Syed', 'Basha test', '', '1637', '7, AK Ibrahim Building, 2nd Cross, Bazaar street', 'Neelasandra', '560047', 'India', 99, 'Karnataka', 1489, '', '[]', 'Cash On Delivery', 'cod', '', '', '', '', '', '', '', '', 0, '', 0, '', '[]', '', '', '', '536.0000', 1, 0, '0.0000', 1, '509.2000', 0, '', 1, 2, 'USD', '1.00000000', '103.199.211.51', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'en-US,en;q=0.9', '2018-01-09 01:05:59', '2018-01-09 01:07:06'),
(69, 0, 'INV-2013-00', 0, 'MyStone Store', 'http://preview.ixly.in/mystorestone/', 30, 1, 'Syed', 'Basha test', 'syedjeelan006@gmail.com', '8217624441', '8217624441', '', 'Syed', 'Basha test', '', '1637', '7, AK Ibrahim Building, 2nd Cross, Bazaar street', 'Neelasandra', '560047', 'India', 99, 'Karnataka', 1489, '', '[]', 'Cash On Delivery', 'cod', '', '', '', '', '', '', '', '', 0, '', 0, '', '[]', '', '', '', '10.0000', 1, 0, '0.0000', 30, '9.5000', 0, '', 1, 2, 'USD', '1.00000000', '117.192.89.225', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'en-US,en;q=0.9', '2018-01-11 10:35:04', '2018-01-11 10:35:19'),
(70, 0, 'INV-2013-00', 0, 'MyStone Store', 'http://preview.ixly.in/mystorestone/', 45, 1, 'dadapeer', 'Syed', 'syeddadapeer786@gmail.com', '7760148484', '', '', 'dadapeer', 'Syed', '', '1462', 'Nisarga layout', 'bangalore', '560083', 'Saudi Arabia', 184, 'Ar Riyad', 2879, '', '[]', 'Cash On Delivery', 'cod', '', '', '', '', '', '', '', '', 0, '', 0, '', '[]', '', '', '', '10.0000', 1, 0, '0.0000', 30, '9.5000', 0, '', 1, 2, 'USD', '1.00000000', '117.216.149.51', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'en-US,en;q=0.9', '2018-01-14 10:36:53', '2018-01-14 10:36:57'),
(71, 0, 'INV-2013-00', 0, 'MyStone Store', 'http://preview.ixly.in/mystorestone/', 46, 1, 'Syed Jeelan', 'Basha', 'syedjeelan007@gmail.com', '9964173601', '9964173601', '', 'Syed Jeelan', 'Basha', '', 'sy 123435 ', '7, AK Ibrahim Building, 2nd Cross, Bazaar street', 'Neelasandra', '560047', 'India', 99, 'Karnataka', 1489, '', '[]', 'Cash On Delivery', 'cod', '', '', '', '', '', '', '', '', 0, '', 0, '', '[]', '', '', '', '71.6000', 1, 0, '0.0000', 30, '55.1000', 0, '', 1, 2, 'USD', '1.00000000', '103.203.173.114', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'en-US,en;q=0.9', '2018-01-16 00:27:39', '2018-01-16 00:28:38');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_custom_field`
--

CREATE TABLE IF NOT EXISTS `oc_order_custom_field` (
  `order_custom_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `custom_field_value_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  `location` varchar(16) NOT NULL,
  PRIMARY KEY (`order_custom_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_history`
--

CREATE TABLE IF NOT EXISTS `oc_order_history` (
  `order_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_history_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `oc_order_history`
--

INSERT INTO `oc_order_history` (`order_history_id`, `order_id`, `order_status_id`, `notify`, `comment`, `date_added`) VALUES
(8, 67, 1, 0, '', '2018-01-06 07:50:57'),
(9, 68, 1, 0, '', '2018-01-09 01:07:06'),
(10, 69, 1, 0, '', '2018-01-11 10:35:19'),
(11, 70, 1, 0, '', '2018-01-14 10:36:57'),
(12, 71, 1, 0, '', '2018-01-16 00:28:38');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_option`
--

CREATE TABLE IF NOT EXISTS `oc_order_option` (
  `order_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  PRIMARY KEY (`order_option_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=44 ;

--
-- Dumping data for table `oc_order_option`
--

INSERT INTO `oc_order_option` (`order_option_id`, `order_id`, `order_product_id`, `product_option_id`, `product_option_value_id`, `name`, `value`, `type`) VALUES
(37, 67, 73, 227, 18, 'Color', 'Green', 'select'),
(38, 67, 73, 228, 19, 'Size', 'Size 300 x 250', 'select'),
(39, 68, 74, 227, 18, 'Color', 'Green', 'select'),
(40, 68, 74, 228, 19, 'Size', 'Size 300 x 250', 'select'),
(41, 71, 77, 235, 33, 'Color', 'Light Green', 'select'),
(42, 71, 77, 237, 0, 'Date &amp; Time', '2018-01-25', 'datetime'),
(43, 71, 77, 236, 0, 'Delivery Date', '2018-01-25', 'date');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_product`
--

CREATE TABLE IF NOT EXISTS `oc_order_product` (
  `order_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int(8) NOT NULL,
  PRIMARY KEY (`order_product_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=78 ;

--
-- Dumping data for table `oc_order_product`
--

INSERT INTO `oc_order_product` (`order_product_id`, `order_id`, `product_id`, `name`, `model`, `quantity`, `price`, `total`, `tax`, `reward`) VALUES
(73, 67, 50, ' Carrara Marble Slabs1', ' Carrara Marble Slabs', 2, '536.0000', '1072.0000', '0.0000', 0),
(74, 68, 50, ' Carrara Marble Slabs1', ' Carrara Marble Slabs', 1, '536.0000', '536.0000', '0.0000', 0),
(75, 69, 62, 'bala product test', 'test', 1, '10.0000', '10.0000', '0.0000', 0),
(76, 70, 62, 'bala product test', 'test', 1, '10.0000', '10.0000', '0.0000', 0),
(77, 71, 62, 'bala product test', 'test', 1, '58.0000', '58.0000', '13.6000', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_recurring`
--

CREATE TABLE IF NOT EXISTS `oc_order_recurring` (
  `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `recurring_name` varchar(255) NOT NULL,
  `recurring_description` varchar(255) NOT NULL,
  `recurring_frequency` varchar(25) NOT NULL,
  `recurring_cycle` smallint(6) NOT NULL,
  `recurring_duration` smallint(6) NOT NULL,
  `recurring_price` decimal(10,4) NOT NULL,
  `trial` tinyint(1) NOT NULL,
  `trial_frequency` varchar(25) NOT NULL,
  `trial_cycle` smallint(6) NOT NULL,
  `trial_duration` smallint(6) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_recurring_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_recurring_transaction`
--

CREATE TABLE IF NOT EXISTS `oc_order_recurring_transaction` (
  `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_recurring_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_recurring_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_status`
--

CREATE TABLE IF NOT EXISTS `oc_order_status` (
  `order_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`order_status_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `oc_order_status`
--

INSERT INTO `oc_order_status` (`order_status_id`, `language_id`, `name`) VALUES
(2, 1, 'Processing'),
(3, 1, 'Shipped'),
(7, 1, 'Canceled'),
(5, 1, 'Complete'),
(8, 1, 'Denied'),
(9, 1, 'Canceled Reversal'),
(10, 1, 'Failed'),
(11, 1, 'Refunded'),
(12, 1, 'Reversed'),
(13, 1, 'Chargeback'),
(1, 1, 'Pending'),
(16, 1, 'Voided'),
(15, 1, 'Processed'),
(14, 1, 'Expired'),
(17, 1, 'Fraud'),
(18, 1, 'Fraud Review');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_total`
--

CREATE TABLE IF NOT EXISTS `oc_order_total` (
  `order_total_id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`order_total_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=338 ;

--
-- Dumping data for table `oc_order_total`
--

INSERT INTO `oc_order_total` (`order_total_id`, `order_id`, `code`, `title`, `value`, `sort_order`) VALUES
(326, 67, 'sub_total', 'Sub-Total', '1072.0000', 1),
(327, 67, 'total', 'Total', '1072.0000', 9),
(328, 68, 'sub_total', 'Sub-Total', '536.0000', 1),
(329, 68, 'total', 'Total', '536.0000', 9),
(330, 69, 'sub_total', 'Sub-Total', '10.0000', 1),
(331, 69, 'total', 'Total', '10.0000', 9),
(332, 70, 'sub_total', 'Sub-Total', '10.0000', 1),
(333, 70, 'total', 'Total', '10.0000', 9),
(334, 71, 'sub_total', 'Sub-Total', '58.0000', 1),
(335, 71, 'tax', 'Eco Tax (-2.00)', '2.0000', 5),
(336, 71, 'tax', 'VAT (20%)', '11.6000', 5),
(337, 71, 'total', 'Total', '71.6000', 9);

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_voucher`
--

CREATE TABLE IF NOT EXISTS `oc_order_voucher` (
  `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  PRIMARY KEY (`order_voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product`
--

CREATE TABLE IF NOT EXISTS `oc_product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `seller_id` int(11) NOT NULL,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(17) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `points` int(8) NOT NULL DEFAULT '0',
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL DEFAULT '0000-00-00',
  `weight` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `weight_class_id` int(11) NOT NULL DEFAULT '0',
  `length` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `width` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `height` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `length_class_id` int(11) NOT NULL DEFAULT '0',
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `shipping_type` varchar(255) NOT NULL,
  `display_price` int(11) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `viewed` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_ende` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=64 ;

--
-- Dumping data for table `oc_product`
--

INSERT INTO `oc_product` (`product_id`, `seller_id`, `model`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `location`, `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`, `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`, `length_class_id`, `subtract`, `minimum`, `sort_order`, `shipping_type`, `display_price`, `status`, `viewed`, `date_added`, `date_ende`, `date_modified`) VALUES
(50, 1, ' Carrara Marble Slabs', ' Carrara1112', '', '', '', '', '', '', 997, 6, 'catalog/marble2.jpg', 0, 0, '526.0000', 0, 0, '2017-07-26', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 'International sales', 0, 1, 90, '2017-07-26 02:03:21', '0000-00-00 00:00:00', '2018-01-29 04:56:31'),
(51, 1, ' Carrara Marble Slabs', 'Carrara1113', '', '', '', '', '', '', 1000, 6, 'catalog/marble3.jpg', 0, 1, '526.0000', 0, 0, '2017-07-26', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 'Port of delivery', 1, 1, 24, '2017-07-28 01:05:16', '0000-00-00 00:00:00', '2017-10-14 08:16:37'),
(52, 1, ' Carrara Marble Slabs', 'Carrara111', '', '', '', '', '', '', 1000, 6, 'catalog/marble1.jpg', 0, 1, '526.0000', 0, 0, '2017-07-26', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 'Port of delivery', 1, 1, 53, '2017-07-28 01:05:27', '0000-00-00 00:00:00', '2017-10-14 08:16:31'),
(53, 2, 'SEL', 'SEL', '', '', '', '', '', '', 1, 6, '', 0, 1, '100.0000', 0, 9, '2017-09-12', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, '', 1, 1, 11, '2017-09-12 03:36:38', '2017-09-12 00:00:00', '2017-10-14 08:16:54'),
(54, 1, 'White marbles', '', '', '', '', '', '', '', 1, 7, '', 0, 1, '500.0000', 0, 0, '2017-09-16', '3.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, '', 1, 1, 0, '2017-09-16 05:12:06', '2017-09-16 00:00:00', '2017-10-14 08:16:59'),
(55, 1, 'ixly', '', '', '', '', '', '', '', 1, 6, '', 0, 1, '0.0000', 0, 0, '2017-10-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, '', 1, 1, 0, '2017-10-05 11:39:51', '2017-10-05 00:00:00', '2017-10-14 08:16:48'),
(56, 1, 'what is thid model doing', '', '', '', '', '', '', '', 1, 6, '', 0, 1, '123.0000', 0, 9, '2017-10-06', '0.00000000', 1, '300.00000000', '200.00000000', '180.00000000', 1, 1, 1, 1, '', 1, 1, 5, '2017-10-06 05:30:13', '2017-11-24 00:00:00', '2017-10-14 08:16:43'),
(57, 1, 'test123', '', '', '', '', '', '', '', 150, 6, '', 0, 1, '20.0000', 0, 9, '2017-12-01', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, '', 1, 1, 0, '2017-12-01 02:15:13', '2017-12-01 00:00:00', '2017-12-01 02:17:47'),
(58, 0, 'Test admin', '', '', '', '', '', '', '', 1, 6, 'catalog/logo_ss.png', 0, 1, '0.0000', 0, 0, '2017-12-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 'International sales', 1, 1, 0, '2017-12-15 23:48:49', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 0, 'test123', '', '', '', '', '', '', '', 100, 6, '', 0, 1, '0.0000', 0, 0, '2017-12-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 'International sales', 1, 1, 3, '2017-12-16 00:59:09', '0000-00-00 00:00:00', '2017-12-16 01:00:19'),
(60, 0, 'admin test1', '', '', '', '', '', '', '', 1, 6, '', 0, 1, '0.0000', 0, 0, '2017-12-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 'International sales', 1, 1, 0, '2017-12-16 01:01:23', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 0, 'Admin', '', '', '', '', '', '', '', 1, 6, '', 0, 1, '0.0000', 0, 0, '2017-12-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 'International sales', 1, 1, 0, '2017-12-16 01:08:31', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 30, 'test', '', '', '', '', '', '', '', 98, 6, 'catalog/2/Chrysanthemum.jpg', 8, 0, '100.0000', 10, 9, '2018-01-09', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, '', 1, 1, 4, '2018-01-09 01:22:41', '2018-01-09 00:00:00', '2018-01-17 11:35:02'),
(63, 30, '12345', '', '', '', '', '', '', '', 1, 6, '', 0, 1, '20.0000', 0, 9, '2018-01-09', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, '', 1, 1, 0, '2018-01-09 01:46:14', '2018-01-09 00:00:00', '2018-01-09 01:50:26');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_attribute`
--

CREATE TABLE IF NOT EXISTS `oc_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`product_id`,`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_attribute`
--

INSERT INTO `oc_product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
(43, 2, 1, '1'),
(47, 4, 1, '16GB'),
(43, 4, 1, '8gb'),
(42, 3, 1, '100mhz'),
(47, 2, 1, '4');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_description`
--

CREATE TABLE IF NOT EXISTS `oc_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`product_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_description`
--

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(50, 1, ' Carrara Marble Slabs1', '&lt;p&gt;Lorem Ipsum is simply dummy text of the printing and typesetting industry.............&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', ' Carrara Marble Slabs', '', ''),
(51, 1, ' Carrara Marble Slabs3', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Lorem Ipsum is simply dummy text of the printing and typesetting industry.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', ' Carrara Marble Slabs', '', ''),
(52, 1, ' Carrara Marble Slabs2', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Lorem Ipsum is simply dummy text of the printing and typesetting industry.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', ' Carrara Marble Slabs', '', ''),
(53, 1, 'Seller product1', 'Seller product1&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', 'Seller product1', '', ''),
(54, 1, 'White marbles', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', 'White marbles', '', ''),
(55, 1, 'ixly test', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', 'test', '', ''),
(56, 1, 'Atlantic Blue', '&lt;p&gt;Very beautiful material from heart of the earth. The texture and patterns are so beautiful. The waves are string which add glory to the material.&amp;nbsp;&lt;/p&gt;', 'Product Tags what does this do', 'What is Meta Tag Title', 'How the Meta Tag Description is working out', 'what is the keywords and how it is useful.'),
(57, 1, 'Dec 1 ', '&lt;p&gt;dfdf&lt;/p&gt;', '', 'test', '', ''),
(58, 1, 'Test admin', '&lt;p&gt;Test admin&lt;br&gt;&lt;/p&gt;', '', 'Test admin', '', ''),
(59, 1, 'test123', '&lt;p&gt;testtt&lt;/p&gt;', '', 'test123', '', ''),
(60, 1, 'admin test1', '', '', 'admin test1', '', ''),
(61, 1, 'Admin', '', '', 'Admin', '', ''),
(62, 1, 'bala product test', '&lt;p&gt;testing product&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/p&gt;', '', 'Test', '', ''),
(63, 1, 'stone tools', '&lt;p&gt;checking the stone tools&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/p&gt;', '', 'tools', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_discount`
--

CREATE TABLE IF NOT EXISTS `oc_product_discount` (
  `product_discount_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_discount_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=453 ;

--
-- Dumping data for table `oc_product_discount`
--

INSERT INTO `oc_product_discount` (`product_discount_id`, `product_id`, `customer_group_id`, `quantity`, `priority`, `price`, `date_start`, `date_end`) VALUES
(443, 42, 1, 30, 1, '66.0000', '0000-00-00', '0000-00-00'),
(442, 42, 1, 20, 1, '77.0000', '0000-00-00', '0000-00-00'),
(441, 42, 1, 10, 1, '88.0000', '0000-00-00', '0000-00-00'),
(452, 62, 1, 10, 1, '4.0000', '2018-01-11', '2018-01-30');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_filter`
--

CREATE TABLE IF NOT EXISTS `oc_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_filter`
--

INSERT INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES
(50, 2),
(50, 4),
(50, 9),
(50, 10),
(50, 13),
(51, 3),
(51, 5),
(51, 8),
(51, 11),
(51, 12),
(52, 1),
(52, 6),
(52, 7),
(52, 12),
(53, 2),
(53, 4),
(53, 9),
(53, 10),
(53, 13),
(62, 2);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_image`
--

CREATE TABLE IF NOT EXISTS `oc_product_image` (
  `product_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_image_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2367 ;

--
-- Dumping data for table `oc_product_image`
--

INSERT INTO `oc_product_image` (`product_image_id`, `product_id`, `image`, `sort_order`) VALUES
(2345, 30, 'catalog/demo/canon_eos_5d_2.jpg', 0),
(2321, 47, 'catalog/demo/hp_3.jpg', 0),
(2035, 28, 'catalog/demo/htc_touch_hd_2.jpg', 0),
(2351, 41, 'catalog/demo/imac_3.jpg', 0),
(1982, 40, 'catalog/demo/iphone_6.jpg', 0),
(2001, 36, 'catalog/demo/ipod_nano_5.jpg', 0),
(2000, 36, 'catalog/demo/ipod_nano_4.jpg', 0),
(2005, 34, 'catalog/demo/ipod_shuffle_5.jpg', 0),
(2004, 34, 'catalog/demo/ipod_shuffle_4.jpg', 0),
(2011, 32, 'catalog/demo/ipod_touch_7.jpg', 0),
(2010, 32, 'catalog/demo/ipod_touch_6.jpg', 0),
(2009, 32, 'catalog/demo/ipod_touch_5.jpg', 0),
(1971, 43, 'catalog/demo/macbook_5.jpg', 0),
(1970, 43, 'catalog/demo/macbook_4.jpg', 0),
(1974, 44, 'catalog/demo/macbook_air_4.jpg', 0),
(1973, 44, 'catalog/demo/macbook_air_2.jpg', 0),
(1977, 45, 'catalog/demo/macbook_pro_2.jpg', 0),
(1976, 45, 'catalog/demo/macbook_pro_3.jpg', 0),
(1986, 31, 'catalog/demo/nikon_d300_3.jpg', 0),
(1985, 31, 'catalog/demo/nikon_d300_2.jpg', 0),
(1988, 29, 'catalog/demo/palm_treo_pro_3.jpg', 0),
(1995, 46, 'catalog/demo/sony_vaio_5.jpg', 0),
(1994, 46, 'catalog/demo/sony_vaio_4.jpg', 0),
(1991, 48, 'catalog/demo/ipod_classic_4.jpg', 0),
(1990, 48, 'catalog/demo/ipod_classic_3.jpg', 0),
(1981, 40, 'catalog/demo/iphone_2.jpg', 0),
(1980, 40, 'catalog/demo/iphone_5.jpg', 0),
(2344, 30, 'catalog/demo/canon_eos_5d_3.jpg', 0),
(2320, 47, 'catalog/demo/hp_2.jpg', 0),
(2034, 28, 'catalog/demo/htc_touch_hd_3.jpg', 0),
(2350, 41, 'catalog/demo/imac_2.jpg', 0),
(1979, 40, 'catalog/demo/iphone_3.jpg', 0),
(1978, 40, 'catalog/demo/iphone_4.jpg', 0),
(1989, 48, 'catalog/demo/ipod_classic_2.jpg', 0),
(1999, 36, 'catalog/demo/ipod_nano_2.jpg', 0),
(1998, 36, 'catalog/demo/ipod_nano_3.jpg', 0),
(2003, 34, 'catalog/demo/ipod_shuffle_2.jpg', 0),
(2002, 34, 'catalog/demo/ipod_shuffle_3.jpg', 0),
(2008, 32, 'catalog/demo/ipod_touch_2.jpg', 0),
(2007, 32, 'catalog/demo/ipod_touch_3.jpg', 0),
(2006, 32, 'catalog/demo/ipod_touch_4.jpg', 0),
(1969, 43, 'catalog/demo/macbook_2.jpg', 0),
(1968, 43, 'catalog/demo/macbook_3.jpg', 0),
(1972, 44, 'catalog/demo/macbook_air_3.jpg', 0),
(1975, 45, 'catalog/demo/macbook_pro_4.jpg', 0),
(1984, 31, 'catalog/demo/nikon_d300_4.jpg', 0),
(1983, 31, 'catalog/demo/nikon_d300_5.jpg', 0),
(1987, 29, 'catalog/demo/palm_treo_pro_2.jpg', 0),
(1993, 46, 'catalog/demo/sony_vaio_2.jpg', 0),
(1992, 46, 'catalog/demo/sony_vaio_3.jpg', 0),
(2327, 49, 'catalog/demo/samsung_tab_7.jpg', 0),
(2326, 49, 'catalog/demo/samsung_tab_6.jpg', 0),
(2325, 49, 'catalog/demo/samsung_tab_5.jpg', 0),
(2324, 49, 'catalog/demo/samsung_tab_4.jpg', 0),
(2323, 49, 'catalog/demo/samsung_tab_3.jpg', 0),
(2322, 49, 'catalog/demo/samsung_tab_2.jpg', 0),
(2355, 42, 'catalog/demo/canon_eos_5d_1.jpg', 0),
(2354, 42, 'catalog/demo/compaq_presario.jpg', 0),
(2353, 42, 'catalog/demo/hp_1.jpg', 0),
(2352, 42, 'catalog/demo/canon_logo.jpg', 0),
(2356, 42, 'catalog/demo/canon_eos_5d_2.jpg', 0),
(2359, 56, '', 0),
(2366, 62, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_option`
--

CREATE TABLE IF NOT EXISTS `oc_product_option` (
  `product_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`product_option_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=238 ;

--
-- Dumping data for table `oc_product_option`
--

INSERT INTO `oc_product_option` (`product_option_id`, `product_id`, `option_id`, `value`, `required`) VALUES
(232, 52, 14, '', 1),
(231, 52, 13, '', 1),
(230, 51, 14, '', 1),
(229, 51, 13, '', 1),
(227, 50, 13, '', 1),
(228, 50, 14, '', 1),
(234, 53, 14, '', 1),
(233, 53, 13, '', 1),
(237, 62, 10, '2018-01-25', 1),
(236, 62, 12, '2018-01-25', 1),
(235, 62, 13, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_option_value`
--

CREATE TABLE IF NOT EXISTS `oc_product_option_value` (
  `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL,
  PRIMARY KEY (`product_option_value_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `oc_product_option_value`
--

INSERT INTO `oc_product_option_value` (`product_option_value_id`, `product_option_id`, `product_id`, `option_id`, `option_value_id`, `quantity`, `subtract`, `price`, `price_prefix`, `points`, `points_prefix`, `weight`, `weight_prefix`) VALUES
(23, 230, 51, 14, 56, 10, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(24, 230, 51, 14, 59, 10, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(21, 229, 51, 13, 51, 10, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(27, 232, 52, 14, 55, 20, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(26, 231, 52, 13, 54, 10, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(25, 231, 52, 13, 49, 10, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(18, 227, 50, 13, 50, 7, 1, '10.0000', '+', 0, '+', '0.00000000', '+'),
(17, 227, 50, 13, 52, 10, 1, '10.0000', '+', 0, '+', '0.00000000', '+'),
(19, 228, 50, 14, 57, 7, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(20, 228, 50, 14, 58, 10, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(22, 229, 51, 13, 53, 10, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(31, 234, 53, 14, 58, 10, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(30, 234, 53, 14, 57, 10, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(29, 233, 53, 13, 50, 10, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(28, 233, 53, 13, 52, 10, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(32, 235, 62, 13, 52, 45, 1, '30.0000', '+', 7, '+', '0.00000000', '+'),
(33, 235, 62, 13, 51, 53, 1, '25.0000', '+', 5, '+', '0.00000000', '+');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_recurring`
--

CREATE TABLE IF NOT EXISTS `oc_product_recurring` (
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`recurring_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_recurring`
--

INSERT INTO `oc_product_recurring` (`product_id`, `recurring_id`, `customer_group_id`) VALUES
(62, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_related`
--

CREATE TABLE IF NOT EXISTS `oc_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`related_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_related`
--

INSERT INTO `oc_product_related` (`product_id`, `related_id`) VALUES
(40, 42),
(41, 42),
(42, 40),
(42, 41);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_reward`
--

CREATE TABLE IF NOT EXISTS `oc_product_reward` (
  `product_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_reward_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=547 ;

--
-- Dumping data for table `oc_product_reward`
--

INSERT INTO `oc_product_reward` (`product_reward_id`, `product_id`, `customer_group_id`, `points`) VALUES
(546, 42, 1, 100),
(519, 47, 1, 300),
(379, 28, 1, 400),
(329, 43, 1, 600),
(339, 29, 1, 0),
(343, 48, 1, 0),
(335, 40, 1, 0),
(539, 30, 1, 200),
(331, 44, 1, 700),
(333, 45, 1, 800),
(337, 31, 1, 0),
(425, 35, 1, 0),
(345, 33, 1, 0),
(347, 46, 1, 0),
(545, 41, 1, 0),
(351, 36, 1, 0),
(353, 34, 1, 0),
(355, 32, 1, 0),
(521, 49, 1, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_special`
--

CREATE TABLE IF NOT EXISTS `oc_product_special` (
  `product_special_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_special_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=449 ;

--
-- Dumping data for table `oc_product_special`
--

INSERT INTO `oc_product_special` (`product_special_id`, `product_id`, `customer_group_id`, `priority`, `price`, `date_start`, `date_end`) VALUES
(440, 42, 1, 1, '90.0000', '0000-00-00', '0000-00-00'),
(439, 30, 1, 2, '90.0000', '0000-00-00', '0000-00-00'),
(438, 30, 1, 1, '80.0000', '0000-00-00', '0000-00-00'),
(448, 62, 1, 0, '8.0000', '2018-01-15', '2018-01-25');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_category`
--

CREATE TABLE IF NOT EXISTS `oc_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `category_id` (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_category`
--

INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(50, 20),
(51, 20),
(52, 20),
(53, 20),
(57, 21),
(59, 20),
(59, 21),
(59, 22),
(62, 33);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_download`
--

CREATE TABLE IF NOT EXISTS `oc_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_layout`
--

CREATE TABLE IF NOT EXISTS `oc_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_layout`
--

INSERT INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES
(50, 0, 0),
(51, 0, 0),
(52, 0, 0),
(53, 0, 0),
(54, 0, 0),
(55, 0, 0),
(56, 0, 0),
(57, 0, 0),
(58, 0, 0),
(59, 0, 0),
(60, 0, 0),
(61, 0, 0),
(62, 0, 0),
(63, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_store`
--

CREATE TABLE IF NOT EXISTS `oc_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_store`
--

INSERT INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES
(50, 0),
(51, 0),
(52, 0),
(53, 0),
(54, 0),
(55, 0),
(56, 0),
(57, 0),
(58, 0),
(59, 0),
(60, 0),
(61, 0),
(62, 0),
(63, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_recurring`
--

CREATE TABLE IF NOT EXISTS `oc_recurring` (
  `recurring_id` int(11) NOT NULL AUTO_INCREMENT,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int(10) unsigned NOT NULL,
  `cycle` int(10) unsigned NOT NULL,
  `trial_status` tinyint(4) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int(10) unsigned NOT NULL,
  `trial_cycle` int(10) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  `sort_order` int(11) NOT NULL,
  PRIMARY KEY (`recurring_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_recurring_description`
--

CREATE TABLE IF NOT EXISTS `oc_recurring_description` (
  `recurring_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`recurring_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_redzone`
--

CREATE TABLE IF NOT EXISTS `oc_redzone` (
  `redzone_id` int(11) NOT NULL AUTO_INCREMENT,
  `company` text NOT NULL,
  `frauder` text NOT NULL,
  `place` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `country` int(11) NOT NULL,
  `description` text NOT NULL,
  `evidence` text NOT NULL,
  `approved` int(11) NOT NULL,
  `added_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `heading` varchar(255) NOT NULL,
  PRIMARY KEY (`redzone_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=48 ;

--
-- Dumping data for table `oc_redzone`
--

INSERT INTO `oc_redzone` (`redzone_id`, `company`, `frauder`, `place`, `contact`, `email`, `country`, `description`, `evidence`, `approved`, `added_by`, `created_on`, `updated_on`, `status`, `heading`) VALUES
(17, 'test company', 'test frauder', 'cbe', '111-222-3333', 'test@gmail.com', 99, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'a5c05116f28931bcd8e8aa2a5f3166e7a29150fa', 1, 1, '2017-12-30 18:50:56', '0000-00-00 00:00:00', 0, 'test heading'),
(18, 'Red Alert Zone co ', 'RED Singh', 'Bangalore', '111-222-3333', 'test@gmail.com', 99, 'Test text for checking the working of the details.', '', 1, 30, '2018-01-01 12:10:46', '0000-00-00 00:00:00', 1, 'test red alert'),
(19, 'Red Alert Zone co ', 'RED Singh', 'Bangalore', '111-222-3333', 'test@gmail.com', 99, 'Test text for checking the working of the details.', '', 0, 30, '2018-01-01 12:11:55', '0000-00-00 00:00:00', 0, 'test red alert'),
(20, 'Fraud company Pvt Ltd', 'Amar Singh Fraud', 'New Delhi', '111-222-3333', 'a@a.com', 98, 'This is only the  text of the fraud company anwar gas 2687 4000-600 3400-', 'b04a9a3754e6d06dee688c0affb2d7ac4253b4cb', 1, 30, '2018-01-01 18:04:02', '0000-00-00 00:00:00', 0, 'New Fraud'),
(21, 'Fraud company Pvt Ltd', 'Amar Singh Fraud', 'New Delhi', '111-222-3333', 'a@a.com', 98, 'This is only the  text of the fraud company anwar gas 2687 4000-600 3400-', 'b04a9a3754e6d06dee688c0affb2d7ac4253b4cb', 1, 30, '2018-01-01 18:07:30', '0000-00-00 00:00:00', 0, 'New Fraud'),
(22, 'ABC issue', 'ABC International fraud co ltd', 'Hyderabad', '999-111-5555', 'abc@gmail.com', 100, 'The MyStone Store Supplemental Services are only available to the registered members of the MyStone Store Sites (“Users”).  A User who purchases or acquires any product or service in an Online Transaction is referred to also as a “Buyer”, and a User who sells or provides any product or service in an Online Transaction is also referred to as a “Seller”. If your subscription to any membership services of the MyStone Store Sites expires or is terminated for any reason, you are not eligible to use the MyStone Store Supplemental Services to conclude online transactions on MyStone Store Sites.  In addition, MyStone Store is not obliged to provide the MyStone Store Supplemental Services where the bank account designated by a Seller in an Online Transaction to receive the transaction price has not been verified and confirmed by MyStone Store and our affiliates. \r\nMyStone Store shall have the right to refuse to provide the MyStone Store Supplemental Services for any Online Transaction if (a) the Online Transaction does not satisfy the terms and conditions in the MyStone Store Transaction Services Agreement or the other applicable terms, rules and policies concerning MyStone Store’s transaction services under the MyStone Store Transaction Services Agreement  in accordance with MyStone Store’s instructions or (b) if MyStone Store has reason to believe that the Online Transaction may violate any laws, rules or regulations or may otherwise subject MyStone Store or any of our affiliates to liability.', 'b1667edb76f0aac428da0b7324935ac6000c362c', 1, 30, '2018-01-01 18:14:00', '0000-00-00 00:00:00', 1, 'ABC is a Quality issue company'),
(23, 'fraud company9', 'fraud company9 name', 'coimbatore', '111-222-3333', 'daniel@ixly.in', 99, 'test description', '', 1, 1, '2018-01-02 11:11:13', '0000-00-00 00:00:00', 1, 'test fraud team'),
(24, 'test', 'test', 'rr', '213-564-8471', 'test@ixly.in', 16, 'rrrr', '', 1, 1, '2018-01-02 16:05:59', '0000-00-00 00:00:00', 0, 'Test'),
(25, 'test', 'test', 'rr', '213-564-8471', 'test@ixly.in', 16, 'rrrr', '', 0, 1, '2018-01-02 16:06:32', '0000-00-00 00:00:00', 0, 'Test'),
(26, 'test', 'test', 'rr', '213-564-8471', 'test@ixly.in', 16, 'rrrr', '', 0, 1, '2018-01-02 16:07:08', '0000-00-00 00:00:00', 0, 'Test'),
(27, 'test', 'test', 'rr', '213-564-8471', 'test@ixly.in', 16, 'rrrr', '', 0, 1, '2018-01-02 16:07:13', '0000-00-00 00:00:00', 0, 'Test'),
(28, 'test', 'test', 'rr', '213-564-8471', 'test@ixly.in', 16, 'rrrr', '', 0, 1, '2018-01-02 16:07:17', '0000-00-00 00:00:00', 0, 'Test'),
(29, 'test', 'test', 'rr', '213-564-8471', 'test@ixly.in', 16, 'rrrr', '', 0, 1, '2018-01-02 16:07:41', '0000-00-00 00:00:00', 0, 'Test'),
(30, 'test', 'test', 'rr', '213-564-8471', 'test@ixly.in', 16, 'rrrr', '', 0, 1, '2018-01-02 16:08:05', '0000-00-00 00:00:00', 0, 'Test'),
(31, 'Tester', 'Tester', 'Tester', '111-111-1111', 'Tester@gmail.com', 18, 'Tester', '', 1, 1, '2018-01-02 17:03:37', '0000-00-00 00:00:00', 0, 'Tester'),
(32, 'testing', 'testing', '-', '989-871-2321', 'testings@testings.fff', 17, '2323', 'c55fb6f97cc3c2f4c1c4a934e82cb9aa50f05450', 1, 1, '2018-01-02 17:12:02', '0000-00-00 00:00:00', 1, 'testing'),
(33, 'New Year test co Ltd', '2018fraud', 'chennai', '9966554422', 'justcheck@gmail.co', 99, 'Check the list of the red zone checking for country India there are no multiple option available for uploading the evidence copy. ', 'd78bc98b35973d10d153f7926b59a1d7b9f2cb28', 1, 30, '2018-01-02 22:23:36', '0000-00-00 00:00:00', 1, 'Today 02-01-2018'),
(34, 'BollyWood &amp; Pvt Ltd', 'Santosh Kapoor', 'Riyad', '9665566885', 'wrongemail@gkm.cm', 184, 'This is to check the upload of the telephone number for saudi Arabia whether the system will take eight digit telephone number for the this above details', 'd819ff2abd1e21d812e936b26eaa22108a161987', 1, 30, '2018-01-02 22:39:02', '0000-00-00 00:00:00', 1, 'just check details for red alert zone of the Mystone Store'),
(35, 'outchecking the Co Pvt Ltd', 'Awesome Person', 'Chicago', '1234567890', 'email@gmail.com', 219, 'This is only the test typing', '', 1, 30, '2018-01-02 22:42:11', '0000-00-00 00:00:00', 1, 'check out '),
(36, 'Red co Pvt Ltd', 'Fraud Brothers', 'russai', '9876543210', 'brtother@gmail.com', 176, 'No text to type ', '', 1, 30, '2018-01-02 22:45:45', '0000-00-00 00:00:00', 1, 'few more entry to check the above list'),
(37, 'Brothers Co Ltd', 'Sharuk Khan', 'Dubai', '1122334455', 'salama@gmail.com', 221, 'Hello hai how are you', 'b4294ea58b34cd435ee5c6493b19d81cedba057f', 1, 30, '2018-01-02 22:47:21', '0000-00-00 00:00:00', 1, 'Quality issue with Bollywood &amp; Pvt Ltd'),
(38, 'Hence just go on entering LLP', 'Check Red', 'berlin', '1122334455', 'Zone@hotmail.com', 81, 'Berlin is the place here we are checking ', 'd6ac7fe01e0a7c221e5c53aab977806e432866a1', 1, 30, '2018-01-02 22:49:58', '0000-00-00 00:00:00', 1, 'Need to see the length of the list going to happend'),
(39, 'Need to check whether scroll button will come', 'or not for the list', 'turkey', '2233445566', 'hece@yahoo.co.in', 63, 'No text ', '66c750dfb786235f360389f46c2904f4a5f193b9', 1, 30, '2018-01-02 22:52:05', '0000-00-00 00:00:00', 1, 'Just go on typing till the list is increased '),
(40, 'How this site reacts to delete command', 'Bankend feature ', 'iceland', '3344556677', 'delete@rediffmail.com', 98, 'what is happend to text and other groups in social site', 'fd0a1edc6d5277a54dc91684f6e9b5b857a16db2', 1, 30, '2018-01-02 22:53:54', '0000-00-00 00:00:00', 0, 'delete and check the working status of the red alert zone'),
(41, 'Admin need to approve the reported subject', 'Once approved all will come as', 'bahamas', '4455667788', 'asper@thetime.com', 16, 'Nepal and India ', 'c4fd3b8d64379a396499e5da00d81aa5250b4461', 1, 30, '2018-01-02 22:56:27', '0000-00-00 00:00:00', 0, 'this is the 11 post getting uploaded in the list'),
(42, 'ajay pvt ltd', 'krishna', 'Riyad', '9991115555', 'awhi@gmail.com', 184, 'djflksdjfklj dlfjsdj ldjfds lsjdf o', '9da52ff3c29835350115ff470de853d2e71675e3', 1, 30, '2018-01-06 13:04:37', '0000-00-00 00:00:00', 0, 'kumar fraud'),
(43, 'xyz', 'xyz', 'rr', '2323123123', 'xyz@gmail.com', 14, 'test', '65b4162f1e9cca039aed77ce5c26e034dfcdb33e', 1, 12, '2018-01-06 16:35:25', '0000-00-00 00:00:00', 1, 'xyz'),
(44, 'notification', 'notification', 'rr', '9999999999', 'notification@ixly.in', 15, 'sdf', 'b7bb4c62411cb1e26c6fa0b9d51bc34e23d078ea', 1, 12, '2018-01-06 18:05:18', '0000-00-00 00:00:00', 1, 'notification'),
(45, 'with Syed', 'Bala Syed', 'Riyad', '123456789', 'asyed@a.com', 184, 'thisis text', '2e9d8923b8a403a9fc3c05da3f8863b7936588d8', 1, 30, '2018-01-08 20:02:36', '0000-00-00 00:00:00', 0, 'bala testing'),
(46, 'redzone', 'redzone', 'redzone', '1023456789', 'redzone@test.in', 7, 'redzone', 'fa31b489e69a92e2c4ba4f62ed1b2e5b786bc239', 1, 12, '2018-01-10 11:48:14', '0000-00-00 00:00:00', 1, '10/01/18'),
(47, 'Fraud company Pvt Ltd', 'Associate of fraud', 'Madhina', '12345678', 'aathere@gmai.com', 184, 'There is no need of the details for this case as this only the test input', '2ece7b7b6849a10de14849931eec3aa0adda708e', 1, 30, '2018-01-14 21:59:47', '0000-00-00 00:00:00', 1, 'Sudeep fraud');

-- --------------------------------------------------------

--
-- Table structure for table `oc_return`
--

CREATE TABLE IF NOT EXISTS `oc_return` (
  `return_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text,
  `date_ordered` date NOT NULL DEFAULT '0000-00-00',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`return_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `oc_return`
--

INSERT INTO `oc_return` (`return_id`, `order_id`, `seller_id`, `product_id`, `customer_id`, `firstname`, `lastname`, `email`, `telephone`, `product`, `model`, `quantity`, `opened`, `return_reason_id`, `return_action_id`, `return_status_id`, `comment`, `date_ordered`, `date_added`, `date_modified`) VALUES
(2, 68, 1, 0, 30, 'Syed', 'Basha test', 'syedjeelan006@gmail.com', '8217624441', ' Carrara Marble Slabs1', ' Carrara Marble Slabs', 1, 1, 2, 0, 2, 'this is the wrong item received', '2018-01-09', '2018-01-09 01:10:21', '2018-01-09 01:11:13');

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_action`
--

CREATE TABLE IF NOT EXISTS `oc_return_action` (
  `return_action_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`return_action_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `oc_return_action`
--

INSERT INTO `oc_return_action` (`return_action_id`, `language_id`, `name`) VALUES
(1, 1, 'Refunded'),
(2, 1, 'Credit Issued'),
(3, 1, 'Replacement Sent');

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_history`
--

CREATE TABLE IF NOT EXISTS `oc_return_history` (
  `return_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`return_history_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_reason`
--

CREATE TABLE IF NOT EXISTS `oc_return_reason` (
  `return_reason_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`return_reason_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `oc_return_reason`
--

INSERT INTO `oc_return_reason` (`return_reason_id`, `language_id`, `name`) VALUES
(1, 1, 'Dead On Arrival'),
(2, 1, 'Received Wrong Item'),
(3, 1, 'Order Error'),
(4, 1, 'Faulty, please supply details'),
(5, 1, 'Other, please supply details');

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_status`
--

CREATE TABLE IF NOT EXISTS `oc_return_status` (
  `return_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`return_status_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `oc_return_status`
--

INSERT INTO `oc_return_status` (`return_status_id`, `language_id`, `name`) VALUES
(1, 1, 'Pending'),
(3, 1, 'Complete'),
(2, 1, 'Awaiting Products');

-- --------------------------------------------------------

--
-- Table structure for table `oc_review`
--

CREATE TABLE IF NOT EXISTS `oc_review` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`review_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_seller`
--

CREATE TABLE IF NOT EXISTS `oc_seller` (
  `seller_id` int(11) NOT NULL,
  `seller_group_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `sellerdescription` text NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `company` varchar(40) NOT NULL,
  `website` varchar(255) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `company_nature` varchar(255) NOT NULL,
  `business_nature` varchar(255) NOT NULL,
  `cancelled_cheque` varchar(255) NOT NULL,
  `bank_statement` varchar(255) NOT NULL,
  `tin_number` varchar(128) NOT NULL,
  `aadhar_number` varchar(128) NOT NULL,
  `aadhar_upload` varchar(255) NOT NULL,
  `proof_upload` varchar(255) NOT NULL,
  `certificate_upload` varchar(255) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT '0.00',
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `is_paid` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`seller_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_seller`
--

INSERT INTO `oc_seller` (`seller_id`, `seller_group_id`, `firstname`, `lastname`, `logo`, `sellerdescription`, `email`, `telephone`, `fax`, `company`, `website`, `address_1`, `address_2`, `city`, `postcode`, `company_nature`, `business_nature`, `cancelled_cheque`, `bank_statement`, `tin_number`, `aadhar_number`, `aadhar_upload`, `proof_upload`, `certificate_upload`, `country_id`, `zone_id`, `code`, `commission`, `tax`, `payment`, `cheque`, `paypal`, `bank_name`, `bank_branch_number`, `bank_swift_code`, `bank_account_name`, `bank_account_number`, `ip`, `status`, `is_paid`, `approved`, `date_added`) VALUES
(0, 1, 'MyStone Store', 'Your Name', 'catalog/logo_ss.png', 'My Store', 'testing.useonly2@gmail.com', '123456789', '', 'MyStone Store', '', 'Address 1', '', 'test4', '565454656', '', '', '', '', '', '', '', '', '', 222, 3563, 'hj68jut', '0.00', '', 'cheque', 'k;l;lk;lk', '', '', '', '', '', '', '', 1, 1, 1, '2016-05-06 20:55:20'),
(1, 1, 'daniel', 'ebenazer', 'catalog/1/Penguins.jpg', '', 'danielabraham007@gmail.com', '9894471306', '9894471306', '', '', 'testeweew', '', 'eweqrewrew', '', '', '', '', 'http://preview.ixly.in/mystorestone/image/cache/no_image-100x100.png', '', '', 'http://preview.ixly.in/mystorestone/image/cache/no_image-100x100.png', 'http://preview.ixly.in/mystorestone/image/cache/no_image-100x100.png', 'http://preview.ixly.in/mystorestone/image/cache/no_image-100x100.png', 99, 1503, '', '5.00', '', 'cheque', 'daniel', '', '', '', '', '', '', '', 1, 0, 1, '2017-08-09 01:40:16'),
(2, 1, 'shankar', 'ganesh', 'catalog/2/Chrysanthemum.jpg', '', 'test@test.com', '1234567980', '', '', '', 'test', '', 'test', '123456', '', '', 'cheque', 'http://preview.ixly.in/mystorestone/image/cache/no_image-100x100.png', '1234560000', '156115952663', 'http://preview.ixly.in/mystorestone/image/cache/no_image-100x100.png', 'http://preview.ixly.in/mystorestone/image/cache/no_image-100x100.png', 'http://preview.ixly.in/mystorestone/image/cache/no_image-100x100.png', 99, 1503, '', '1.00', '', 'cheque', 'shankar', '', '', '', '', '', '', '', 1, 0, 1, '2017-08-09 01:51:05'),
(4, 1, '1', '1', NULL, '', '1111@1.in', '111', '1', '', '', '111', '', '111', '11', '', '', '', '', '', '', '', '', '', 99, 1485, '', '5.00', '', 'cheque', '1', '', '', '', '', '', '', '', 0, 0, 1, '2017-09-16 04:10:09'),
(5, 1, '1', '1', '', '', '1111@11.in', '1111', '', '', '', '1111111111111', '', '11111111111', '11111111', '', '', '', 'http://preview.ixly.in/mystorestone/image/cache/no_image-100x100.png', '', '', 'http://preview.ixly.in/mystorestone/image/cache/no_image-100x100.png', 'http://preview.ixly.in/mystorestone/image/cache/no_image-100x100.png', 'http://preview.ixly.in/mystorestone/image/cache/no_image-100x100.png', 99, 1503, '', '5.00', '', 'cheque', '1', '', '', '', '', '', '', '', 0, 0, 1, '2017-09-16 05:35:00'),
(6, 1, '1!', '1!', NULL, '', 'qq@qq.in', 'aaa', '', '', '', 'qqq', '', 'qq', 'danielabra', '', '', '', '', '', '', '', '', '', 222, 3529, '', '5.00', '', 'cheque', '1!', '', '', '', '', '', '', '', 0, 0, 1, '2017-09-16 05:51:19'),
(7, 1, '1!', '1!', NULL, '', 'qq@qqq.in', 'aaa', '', '', '', 'qqq', '', 'qq', 'danielabra', '', '', '', '', '', '', '', '', '', 222, 3529, '', '5.00', '', 'cheque', '1!', '', '', '', '', '', '', '', 0, 0, 1, '2017-09-16 05:56:05'),
(8, 1, '1!', '1!', NULL, '', 'aaqq@qqq.in', 'aaa', '', '', '', 'qqq', '', 'qq', 'danielabra', '', '', '', '', '', '', '', '', '', 222, 3529, '', '5.00', '', 'cheque', '1!', '', '', '', '', '', '', '', 0, 0, 1, '2017-09-16 06:08:00'),
(9, 1, '1!', '1!', NULL, '', 'qqqqqq@qq.in', '1111', '1', 'test ', '', 'qqq', '', 'qq', 'danielabra', '', '', '', '', '', '', '', '', '', 222, 3529, '', '5.00', '', 'cheque', '1!', '', '', '', '', '', '', '', 0, 0, 1, '2017-09-16 06:15:32'),
(10, 1, '1!', '1!', NULL, '', 'qqqqqqq@qq.in', 'aaa', '1', 'test ', '', 'qqq', '', 'qq', 'danielabra', '', '', '', '', '', '', '', '', '', 222, 3529, '', '5.00', '', 'cheque', '1!', '', '', '', '', '', '', '', 0, 0, 1, '2017-09-16 06:16:27'),
(30, 1, 'Syed', 'Basha test', '', 'About company need to copy paste ', 'syedjeelan006@gmail.com', '8217624441', '8217624441', 'www.mahinoorspares.com', 'www.mahinoorspares.com', '1637', '7, AK Ibrahim Building, 2nd Cross, Bazaar street', 'Neelasandra', '560047', '', 'Quarry Group', 'Mahinoor Exports', 'http://preview.ixly.in/mystorestone/image/cache/no_image-100x100.png', '5623288585', '123456789012345', 'http://preview.ixly.in/mystorestone/image/cache/no_image-100x100.png', 'http://preview.ixly.in/mystorestone/image/cache/no_image-100x100.png', 'http://preview.ixly.in/mystorestone/image/cache/no_image-100x100.png', 99, 1489, '', '5.00', '', 'cheque', 'Syed', '', '', '', '', '', '', '', 1, 1, 1, '2017-11-11 06:35:33'),
(25, 1, 'Seilesh', 'Kumaar', '', '', 'seileshkumaar@gmail.com', '8015573393', '8015573393', '', '', '14 Poompukar Nagar', 'Thudiyalur', 'coimbatore', '641034', '', '', '00001', 'http://preview.ixly.in/mystorestone/image/cache/no_image-100x100.png', '123456789', '111111111', 'http://preview.ixly.in/mystorestone/image/cache/no_image-100x100.png', 'http://preview.ixly.in/mystorestone/image/cache/no_image-100x100.png', 'http://preview.ixly.in/mystorestone/image/cache/no_image-100x100.png', 99, 1503, '', '5.00', '', 'cheque', 'Seilesh', '', '', '', '', '', '', '', 1, 0, 1, '2017-10-31 02:06:20'),
(29, 1, 'karthi', 'k', NULL, '', 'karthi@ixly.in', '9865321014', '', '', '', 'test', '', 'test', '986512', 'Company', 'Exporter/Importer', 'test', 'd441dd31c3db4ebba543bea42c121490d397913d', '555', '4532', 'c5cea2ddadbd9899219c461d099be31ffc74a9a4', 'e62e62a1696780f471c40296347d63ed1493c03e', '0dc7389ee315eb9bdc0a02b12ca237ae86875234', 99, 1503, '', '5.00', '', 'cheque', 'karthi', '', '', '', '', '', '', '', 0, 0, 1, '2017-11-08 05:48:52'),
(31, 1, 'karthi', 'seller', '', '', 'karthikalichamy@gmail.com', '9876543218', '986745612', '', '', 'cbe', 'cbe', 'cbe', '641024', '', '', 'test', 'http://preview.ixly.in/mystorestone/image/cache/no_image-100x100.png', '12345', '54321', 'http://preview.ixly.in/mystorestone/image/cache/no_image-100x100.png', 'http://preview.ixly.in/mystorestone/image/cache/no_image-100x100.png', 'http://preview.ixly.in/mystorestone/image/cache/no_image-100x100.png', 99, 1503, '', '5.00', '', 'cheque', 'karthi', '', '', '', '', '', '', '', 1, 0, 1, '2017-11-27 05:44:15'),
(32, 1, '1', '1', NULL, '', '12345@ixly.in', '9999999999', '', '', '', '111', '', '111', '111111', 'Sole Trader', 'Quarry Owner', '11', 'c5dbfeff8e64689cd5db03ab9df42885f19e5be7', '11', '111', '7f7795ad96e83c9df9ffd6b515659959815f89e1', '9d557780ce106f369650cbb25797ad7053bf34aa', '2961033fe6ce08bdca9682580c64a32d6e0dea86', 222, 3515, '', '5.00', '', 'cheque', '1', '', '', '', '', '', '', '', 0, 0, 1, '2017-11-28 00:18:02'),
(35, 1, 'ixlybala', 'ixlybala', '', '', 'ixlybala@ixly.in', '1234567899', '1234567899', '', '', '121', '12', 'coimbatore', '641017', '', '', '12', 'http://preview.ixly.in/mystorestone/image/cache/no_image-100x100.png', '12', '12', 'http://preview.ixly.in/mystorestone/image/cache/no_image-100x100.png', 'http://preview.ixly.in/mystorestone/image/cache/no_image-100x100.png', 'http://preview.ixly.in/mystorestone/image/cache/no_image-100x100.png', 99, 1491, '', '5.00', '', 'cheque', 'ixlybala', '', '', '', '', '', '', '', 1, 0, 1, '2017-12-18 01:35:21'),
(36, 1, 'ixlybalatest@ixly.in', 'ixlybalatest@ixly.in', NULL, '', 'ixlybalatest@ixly.in', '0012345678', '0012345756', '', '', '3/125/3 Thendral nagar', 'pannimadai', 'coimbatore', '641017', 'Sole Trader', 'Quarry Owner,Exporter/Importer', '232323', 'eca8923083b47cb6acbd4c6c605a108b664af608', '12121212', '12121212', 'b0b39fad5bb40f6f0ab66a3163064ecb0e0f136e', '4ed8eea5193ede38e6548566bd367d70d834f7c4', '2135ec7c9b14c01daa2cbbaa7f54f8bb8b232d5c', 99, 1476, '', '5.00', '', 'cheque', 'ixlybalatest@ixly.in', '', '', '', '', '', '', '', 0, 0, 1, '2017-12-19 00:06:37'),
(37, 1, 'Test', 'Test', NULL, '', 'test@1234.com', '0012134456', '0012134456', '', '', '0012134456', '00121344560012134456', '0012134456', '001213', 'Sole Trader', 'Quarry Owner', '00121', '0dfe5e11e9d891c2fd972f1b34ac833750a3cbf0', '0012134', '0012134456', '29d4e3b23f16287ea58ea1be2fa695d3c2a2d140', '23c8cf0d3a78b72eaf4e10ef8059d2605c5f623f', '85319f07c7f5ba3e75d8cac997ecd9477d24d135', 221, 3510, '', '5.00', '', 'cheque', 'Test', '', '', '', '', '', '', '', 0, 0, 1, '2018-01-02 08:24:09'),
(39, 1, 'Balachandar', 'K', '', '', '12345bala@ixly.in', '2314567890', '2314567890', '', '', 'nagar', 'madai', 'coimbatore', '641017', '', 'Quarry Owner', '111', 'http://preview.ixly.in/mystorestone/image/cache/no_image-100x100.png', '123', '123', 'http://preview.ixly.in/mystorestone/image/cache/no_image-100x100.png', 'http://preview.ixly.in/mystorestone/image/cache/no_image-100x100.png', 'http://preview.ixly.in/mystorestone/image/cache/no_image-100x100.png', 99, 1475, '', '5.00', '', 'cheque', 'Balachandar', '', '', '', '', '', '', '', 1, 1, 1, '2018-01-04 06:51:36'),
(40, 1, 'krishna', 'm', NULL, '', 'krishna.ixly@gmail.com', '9942518721', '0422264656', '', '', 'test', 'test', 'test', '641017', 'Sole Trader', 'Quarry Group,Factory/Processors group,Transporation/Logistics/CHAs', 'test', 'b3812d30a85945ccc000be4fbac3ac70c835a6d0', '123456789', '123456789', '60e88123190f973b7626cc6893d0e1f11dbda8fb', '641cee27b8a8941d98219031daf227e655dfb091', '7f965e3b669e34f3e6a67a036f2e4828dd3f2a24', 99, 1503, '', '5.00', '', 'cheque', 'krishna', '', '', '', '', '', '', '', 0, 0, 1, '2018-01-05 00:39:44'),
(41, 1, 'testkaro', 'testkaro', '', '', 'testkaro@ixly.in', '2132435465', '2132435465', '', '', 't Name testkaro', 't Name testkaro', 't Name testkaro', '3123123', 'Partnership', 'Quarry Group', '2123', 'http://preview.ixly.in/mystorestone/image/cache/no_image-100x100.png', '21', '21', 'http://preview.ixly.in/mystorestone/image/cache/no_image-100x100.png', 'http://preview.ixly.in/mystorestone/image/cache/no_image-100x100.png', 'http://preview.ixly.in/mystorestone/image/cache/no_image-100x100.png', 220, 3496, '', '5.00', '', 'cheque', 'testkaro', '', '', '', '', '', '', '', 1, 0, 1, '2018-01-05 06:42:11'),
(43, 1, 'stone', 'stone', NULL, '', 'stone@g.in', '1212545680', '1212545687', '', '', '3/125/3 Thendral nagar', 'pannimadai', 'coimbatore', '641017', 'Sole Trader', 'Quarry Group', '12', 'fd72d2e9c7175da2d0e4e839b599af683671afca', '1221', '1212', 'c8f417f58d066a3ecdcf0fc2c384d6d3a1ff77e0', '28e945231f54a5c5113089d7cb901547174a8234', '98028615fa2ae092124e37fcc71bed00e970b38a', 222, 3530, '', '5.00', '', 'cheque', 'stone', '', '', '', '', '', '', '', 0, 0, 1, '2018-01-06 03:50:50');

-- --------------------------------------------------------

--
-- Table structure for table `oc_seller_group`
--

CREATE TABLE IF NOT EXISTS `oc_seller_group` (
  `seller_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `approval` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  `prodlimit` int(11) NOT NULL,
  `imglimit` int(11) NOT NULL,
  `downloadlimit` int(11) NOT NULL,
  PRIMARY KEY (`seller_group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `oc_seller_group`
--

INSERT INTO `oc_seller_group` (`seller_group_id`, `approval`, `sort_order`, `prodlimit`, `imglimit`, `downloadlimit`) VALUES
(1, 0, 1, 10, 100, 100);

-- --------------------------------------------------------

--
-- Table structure for table `oc_seller_group_description`
--

CREATE TABLE IF NOT EXISTS `oc_seller_group_description` (
  `seller_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`seller_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_seller_group_description`
--

INSERT INTO `oc_seller_group_description` (`seller_group_id`, `language_id`, `name`, `description`) VALUES
(1, 1, 'Default', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `oc_seller_setting`
--

CREATE TABLE IF NOT EXISTS `oc_seller_setting` (
  `seller_setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `seller_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(32) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL,
  PRIMARY KEY (`seller_setting_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=813 ;

--
-- Dumping data for table `oc_seller_setting`
--

INSERT INTO `oc_seller_setting` (`seller_setting_id`, `store_id`, `seller_id`, `code`, `key`, `value`, `serialized`) VALUES
(811, 0, 0, 'pickup', 'pickup_status', '1', 0),
(810, 0, 0, 'pickup', 'pickup_geo_zone_id', '0', 0),
(812, 0, 0, 'pickup', 'pickup_sort_order', '2', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_seller_transaction`
--

CREATE TABLE IF NOT EXISTS `oc_seller_transaction` (
  `seller_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `seller_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`seller_transaction_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `oc_seller_transaction`
--

INSERT INTO `oc_seller_transaction` (`seller_transaction_id`, `seller_id`, `order_id`, `description`, `amount`, `date_added`) VALUES
(1, 35, 0, 'test', '100.0000', '2017-12-18 01:46:28'),
(2, 5, 0, '', '0.0000', '2018-01-03 05:13:47');

-- --------------------------------------------------------

--
-- Table structure for table `oc_setting`
--

CREATE TABLE IF NOT EXISTS `oc_setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(32) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1994 ;

--
-- Dumping data for table `oc_setting`
--

INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES
(1, 0, 'shipping', 'shipping_sort_order', '3', 0),
(2, 0, 'sub_total', 'sub_total_sort_order', '1', 0),
(3, 0, 'sub_total', 'sub_total_status', '1', 0),
(4, 0, 'tax', 'tax_status', '1', 0),
(5, 0, 'total', 'total_sort_order', '9', 0),
(6, 0, 'total', 'total_status', '1', 0),
(7, 0, 'tax', 'tax_sort_order', '5', 0),
(8, 0, 'free_checkout', 'free_checkout_sort_order', '1', 0),
(1815, 0, 'cod', 'cod_geo_zone_id', '0', 0),
(1814, 0, 'cod', 'cod_order_status_id', '1', 0),
(1813, 0, 'cod', 'cod_total', '0.01', 0),
(14, 0, 'shipping', 'shipping_status', '1', 0),
(15, 0, 'shipping', 'shipping_estimator', '1', 0),
(27, 0, 'coupon', 'coupon_sort_order', '4', 0),
(28, 0, 'coupon', 'coupon_status', '1', 0),
(34, 0, 'flat', 'flat_sort_order', '1', 0),
(35, 0, 'flat', 'flat_status', '1', 0),
(36, 0, 'flat', 'flat_geo_zone_id', '0', 0),
(37, 0, 'flat', 'flat_tax_class_id', '9', 0),
(41, 0, 'flat', 'flat_cost', '5.00', 0),
(42, 0, 'credit', 'credit_sort_order', '7', 0),
(43, 0, 'credit', 'credit_status', '1', 0),
(53, 0, 'reward', 'reward_sort_order', '2', 0),
(54, 0, 'reward', 'reward_status', '1', 0),
(146, 0, 'category', 'category_status', '1', 0),
(158, 0, 'account', 'account_status', '1', 0),
(159, 0, 'affiliate', 'affiliate_status', '1', 0),
(1914, 0, 'config', 'config_error_display', '1', 0),
(1987, 0, 'theme_default', 'theme_default_image_location_width', '268', 0),
(1913, 0, 'config', 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\n&quot;application/zip&quot;\r\napplication/x-zip\r\n&quot;application/x-zip&quot;\r\napplication/x-zip-compressed\r\n&quot;application/x-zip-compressed&quot;\r\napplication/rar\r\n&quot;application/rar&quot;\r\napplication/x-rar\r\n&quot;application/x-rar&quot;\r\napplication/x-rar-compressed\r\n&quot;application/x-rar-compressed&quot;\r\napplication/octet-stream\r\n&quot;application/octet-stream&quot;\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf', 0),
(1906, 0, 'config', 'config_compression', '0', 0),
(1907, 0, 'config', 'config_secure', '0', 0),
(94, 0, 'voucher', 'voucher_sort_order', '8', 0),
(95, 0, 'voucher', 'voucher_status', '1', 0),
(103, 0, 'free_checkout', 'free_checkout_status', '1', 0),
(104, 0, 'free_checkout', 'free_checkout_order_status_id', '1', 0),
(1904, 0, 'config', 'config_seo_url', '0', 0),
(1905, 0, 'config', 'config_robots', 'abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai''hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg', 0),
(1911, 0, 'config', 'config_file_max_size', '300000', 0),
(1912, 0, 'config', 'config_file_ext_allowed', 'zip\r\ntxt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc', 0),
(1908, 0, 'config', 'config_password', '1', 0),
(1909, 0, 'config', 'config_shared', '0', 0),
(1910, 0, 'config', 'config_encryption', '8hwzmyEgv9w3f1JbErUctsntAusd2Qi9LF5Nh2PxtXqxn82wsLSBF4wW1Z5UeVeYHazTir1Ye1WWbfN0EjvCn9FI6smsroHfcnRUpvE5XMlYKy2scMRAZLlKIzluGyS1nsjjoZFMVhfooc1xv7IiqVViONL0Tq4ByG7rgveiQ6vY5wgrTlEQXwwfKuAGg1g9z8WIlJ91XvUOA7KpwrTSAR30rLYonSvc177znqEvEYWEvZ6B3f41y2tyfdzo56jq7PU0kQGERg2l35Gs8bLXZVochyDLUBOL68qTSGFzxCrBiwwR2GyTQ08q9tOC92JDP3gPFwr2j9sRKyoPgrNGQkOggZVonVWYAm3Om4o2EdVo2BiKCkhoH6uZT8D3E5bmpesgyROnKntQDKtQYKNdds20UmK7mAYZXLCbpP7NxUBtEM2K5IcCH95nYFc2RENgwSaTkuVIKONlZ7JQFPpw43Y3cJjqsb9yEZWe09COEoSrARywEenwz3E9gbIEuvJOdvkyvGaEXnA9a0JYwHsnOcfnjdi899bRHTQ74iDIYnJXGKqzDOiaefcQ3tRNB9jeKJMkSg0wz9C0oLfUZrHL0v7UHYOxwN8ylLDzOEk4X2TbM5DbDxW4NsVWeL5PD7qIJoay2uEvKAgI9dEa5mZ2uiwCVvjj9q3ikxpCtcyxk4aMiJ9FuntWWlUFbDrQ9xCUVA3QKPSvA1zT51rpURquxR4UZuSXrj2eyzVuKZAi1zqem9q2fBmCZdaJZ9SIMDu3Y8M3UQKiVbIayd0c5klvSrCVHJmIZljf6xbf44XtQbi0ICLNufeLMDhHOxvREo4aHeBwsqywzyFpAqIbczAML4uqet3zOrxBeWofLRwCzoEpYWE1c0l6Gdx8O8DyyLmMfF5bsfq9MUCi3TUB0KSLr693hHFjsWWnzKbY181O7eHG43FnWsayMxVM3aCaeRdfRVsJdTGephN2yCfAX4X4ujsfNGpLNUW9WY9v5yTra37TJzPgQJVj9vrsxA76c3iT', 0),
(1903, 0, 'config', 'config_maintenance', '0', 0),
(1902, 0, 'config', 'config_mail_alert', '', 0),
(1901, 0, 'config', 'config_mail_smtp_timeout', '5', 0),
(1899, 0, 'config', 'config_mail_smtp_password', 'karthi@ixly.in', 0),
(1900, 0, 'config', 'config_mail_smtp_port', '2626', 0),
(1897, 0, 'config', 'config_mail_smtp_hostname', 'mail.ixly.in', 0),
(1898, 0, 'config', 'config_mail_smtp_username', 'karthi@ixly.in', 0),
(1896, 0, 'config', 'config_mail_parameter', '', 0),
(1895, 0, 'config', 'config_mail_protocol', 'smtp', 0),
(1894, 0, 'config', 'config_ftp_status', '0', 0),
(1893, 0, 'config', 'config_ftp_root', '', 0),
(1892, 0, 'config', 'config_ftp_password', '', 0),
(1891, 0, 'config', 'config_ftp_username', '', 0),
(1890, 0, 'config', 'config_ftp_port', '21', 0),
(1889, 0, 'config', 'config_ftp_hostname', 'preview.ixly.in', 0),
(1888, 0, 'config', 'config_icon', 'catalog/cart.png', 0),
(1887, 0, 'config', 'config_logo', 'catalog/logo_ss.png', 0),
(1886, 0, 'config', 'config_seller_group_id', '1', 0),
(1885, 0, 'config', 'config_sellerorder_mail', '0', 0),
(1884, 0, 'config', 'config_seller_mail', '0', 0),
(1883, 0, 'config', 'config_seller_id', '0', 0),
(1882, 0, 'config', 'config_seller_commission', '5', 0),
(1881, 0, 'config', 'config_seller_auto', '0', 0),
(1880, 0, 'config', 'config_seller_approval', '0', 0),
(1879, 0, 'config', 'config_captcha_page', '["review","return","contact"]', 1),
(1878, 0, 'config', 'config_captcha', '', 0),
(1877, 0, 'config', 'config_return_status_id', '2', 0),
(1876, 0, 'config', 'config_return_id', '0', 0),
(1875, 0, 'config', 'config_affiliate_mail', '0', 0),
(1874, 0, 'config', 'config_affiliate_id', '4', 0),
(1873, 0, 'config', 'config_affiliate_commission', '5', 0),
(1872, 0, 'config', 'config_affiliate_auto', '0', 0),
(1871, 0, 'config', 'config_affiliate_approval', '0', 0),
(1870, 0, 'config', 'config_stock_checkout', '0', 0),
(1869, 0, 'config', 'config_stock_warning', '0', 0),
(1868, 0, 'config', 'config_stock_display', '0', 0),
(1867, 0, 'config', 'config_api_id', '2', 0),
(1866, 0, 'config', 'config_order_mail', '1', 0),
(1865, 0, 'config', 'config_fraud_status_id', '7', 0),
(1864, 0, 'config', 'config_complete_status', '["5","3"]', 1),
(1863, 0, 'config', 'config_processing_status', '["5","1","2","12","3"]', 1),
(1862, 0, 'config', 'config_order_status_id', '1', 0),
(1861, 0, 'config', 'config_checkout_id', '5', 0),
(1858, 0, 'config', 'config_invoice_prefix', 'INV-2013-00', 0),
(1860, 0, 'config', 'config_checkout_guest', '1', 0),
(1859, 0, 'config', 'config_cart_weight', '1', 0),
(1857, 0, 'config', 'config_account_mail', '0', 0),
(1856, 0, 'config', 'config_account_id', '3', 0),
(1855, 0, 'config', 'config_login_attempts', '5', 0),
(1854, 0, 'config', 'config_customer_price', '0', 0),
(1986, 0, 'theme_default', 'theme_default_image_cart_height', '47', 0),
(1985, 0, 'theme_default', 'theme_default_image_cart_width', '47', 0),
(1984, 0, 'theme_default', 'theme_default_image_wishlist_height', '47', 0),
(1983, 0, 'theme_default', 'theme_default_image_wishlist_width', '47', 0),
(1982, 0, 'theme_default', 'theme_default_image_compare_height', '90', 0),
(1981, 0, 'theme_default', 'theme_default_image_compare_width', '90', 0),
(1980, 0, 'theme_default', 'theme_default_image_related_height', '200', 0),
(1979, 0, 'theme_default', 'theme_default_image_related_width', '200', 0),
(1978, 0, 'theme_default', 'theme_default_image_additional_height', '74', 0),
(1977, 0, 'theme_default', 'theme_default_image_additional_width', '74', 0),
(1976, 0, 'theme_default', 'theme_default_image_product_height', '500', 0),
(1975, 0, 'theme_default', 'theme_default_image_product_width', '500', 0),
(1974, 0, 'theme_default', 'theme_default_image_popup_height', '500', 0),
(1973, 0, 'theme_default', 'theme_default_image_popup_width', '500', 0),
(1972, 0, 'theme_default', 'theme_default_image_thumb_height', '500', 0),
(1969, 0, 'theme_default', 'theme_default_image_category_width', '80', 0),
(1853, 0, 'config', 'config_customer_group_display', '["1"]', 1),
(1852, 0, 'config', 'config_customer_group_id', '1', 0),
(1851, 0, 'config', 'config_customer_online', '1', 0),
(1850, 0, 'config', 'config_tax_customer', 'shipping', 0),
(1849, 0, 'config', 'config_tax_default', 'shipping', 0),
(1970, 0, 'theme_default', 'theme_default_image_category_height', '80', 0),
(1971, 0, 'theme_default', 'theme_default_image_thumb_width', '500', 0),
(859, 0, 'filter', 'filter_status', '1', 0),
(1968, 0, 'theme_default', 'theme_default_product_description_length', '100', 0),
(1848, 0, 'config', 'config_tax', '1', 0),
(1847, 0, 'config', 'config_voucher_max', '1000', 0),
(1846, 0, 'config', 'config_voucher_min', '1', 0),
(1845, 0, 'config', 'config_review_mail', '0', 0),
(1844, 0, 'config', 'config_review_guest', '1', 0),
(1843, 0, 'config', 'config_review_status', '1', 0),
(1842, 0, 'config', 'config_limit_admin', '20', 0),
(1841, 0, 'config', 'config_product_count', '1', 0),
(1840, 0, 'config', 'config_weight_class_id', '1', 0),
(1839, 0, 'config', 'config_length_class_id', '1', 0),
(1838, 0, 'config', 'config_currency_auto', '1', 0),
(1837, 0, 'config', 'config_currency', 'USD', 0),
(1836, 0, 'config', 'config_admin_language', 'en-gb', 0),
(1835, 0, 'config', 'config_language', 'en-gb', 0),
(1834, 0, 'config', 'config_zone_id', '3563', 0),
(1833, 0, 'config', 'config_country_id', '222', 0),
(1832, 0, 'config', 'config_comment', '', 0),
(1831, 0, 'config', 'config_open', '', 0),
(1830, 0, 'config', 'config_image', '', 0),
(1829, 0, 'config', 'config_fax', '', 0),
(1828, 0, 'config', 'config_telephone', '123456789', 0),
(1827, 0, 'config', 'config_email', 'testing.useonly2@gmail.com', 0),
(1826, 0, 'config', 'config_geocode', '', 0),
(1031, 0, 'easy_blog', 'easy_blog_global_article_limit', '10', 0),
(1032, 0, 'easy_blog', 'easy_blog_home_page_meta_title', 'Blog', 0),
(1033, 0, 'easy_blog', 'easy_blog_home_page_name', 'Blog', 0),
(1034, 0, 'easy_blog', 'easy_blog_home_page_meta_description', '', 0),
(1035, 0, 'easy_blog', 'easy_blog_home_page_meta_keyword', '', 0),
(1036, 0, 'easy_blog', 'easy_blog_global_status', '1', 0),
(1037, 0, 'basic_captcha', 'basic_captcha_status', '1', 0),
(1053, 0, 'magicfilter', 'magicfilter_image_height', '', 0),
(1052, 0, 'magicfilter', 'magicfilter_image_width', '', 0),
(1051, 0, 'magicfilter', 'magicfilter_image_status', '0', 0),
(1050, 0, 'magicfilter', 'magicfilter_heading', '', 0),
(1049, 0, 'magicfilter', 'magicfilter_price_filter_status', '1', 0),
(1048, 0, 'magicfilter', 'magicfilter_manufacturer_filter_status', '0', 0),
(1047, 0, 'magicfilter', 'magicfilter_status', '1', 0),
(1054, 0, 'magicfilter', 'magicfilter_price_filter_range', '0-2000', 0),
(1055, 0, 'magicfilter', 'magicfilter_price_filter_class', 'product-layout', 0),
(1825, 0, 'config', 'config_address', 'Address 1', 0),
(1824, 0, 'config', 'config_owner', 'Your Name', 0),
(1823, 0, 'config', 'config_name', 'MyStone Store', 0),
(1822, 0, 'config', 'config_layout_id', '4', 0),
(1821, 0, 'config', 'config_theme', 'theme_default', 0),
(1820, 0, 'config', 'config_meta_keyword', '', 0),
(1819, 0, 'config', 'config_meta_description', 'My Store', 0),
(1818, 0, 'config', 'config_meta_title', 'MyStone Store', 0),
(1757, 0, 'timezone', 'timezone_status', '1', 0),
(1758, 0, 'timezone', 'timezone_timezone', 'Asia/Kolkata', 0),
(1967, 0, 'theme_default', 'theme_default_product_limit', '15', 0),
(1966, 0, 'theme_default', 'theme_default_status', '1', 0),
(1811, 0, 'pickup', 'pickup_status', '1', 0),
(1810, 0, 'pickup', 'pickup_geo_zone_id', '0', 0),
(1812, 0, 'pickup', 'pickup_sort_order', '2', 0),
(1816, 0, 'cod', 'cod_status', '1', 0),
(1817, 0, 'cod', 'cod_sort_order', '5', 0),
(1915, 0, 'config', 'config_error_log', '1', 0),
(1916, 0, 'config', 'config_error_filename', 'error.log', 0),
(1965, 0, 'theme_default', 'theme_default_directory', 'mystonestore', 0),
(1988, 0, 'theme_default', 'theme_default_image_location_height', '50', 0),
(1989, 0, 'fraudlabspro', 'fraudlabspro_score', '80', 0),
(1990, 0, 'fraudlabspro', 'fraudlabspro_order_status_id', '17', 0),
(1991, 0, 'fraudlabspro', 'fraudlabspro_review_status_id', '18', 0),
(1992, 0, 'fraudlabspro', 'fraudlabspro_approve_status_id', '2', 0),
(1993, 0, 'fraudlabspro', 'fraudlabspro_reject_status_id', '8', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_simple_blog_article`
--

CREATE TABLE IF NOT EXISTS `oc_simple_blog_article` (
  `simple_blog_article_id` int(16) NOT NULL AUTO_INCREMENT,
  `simple_blog_author_id` int(16) NOT NULL,
  `social_group_id` int(11) NOT NULL,
  `allow_comment` tinyint(1) NOT NULL,
  `image` text NOT NULL,
  `featured_image` text NOT NULL,
  `article_related_method` varchar(64) NOT NULL,
  `article_related_option` text NOT NULL,
  `article_shared_id` int(16) NOT NULL,
  `sort_order` int(8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_created` date NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`simple_blog_article_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=208 ;

--
-- Dumping data for table `oc_simple_blog_article`
--

INSERT INTO `oc_simple_blog_article` (`simple_blog_article_id`, `simple_blog_author_id`, `social_group_id`, `allow_comment`, `image`, `featured_image`, `article_related_method`, `article_related_option`, `article_shared_id`, `sort_order`, `status`, `type`, `date_added`, `date_created`, `date_modified`) VALUES
(1, 1, 0, 0, 'catalog/marble1.jpg', '', 'product_wise', '', 0, 1, 1, 0, '2017-08-18 00:43:15', '0000-00-00', '2017-08-18 00:44:15'),
(2, 2, 0, 1, '', '', '', '', 0, 0, 1, 0, '2017-08-18 02:15:58', '0000-00-00', '2017-08-18 02:15:58'),
(3, 3, 0, 1, '', '', '', '', 0, 0, 1, 0, '2017-08-18 02:46:14', '0000-00-00', '2017-08-18 02:46:14'),
(4, 4, 0, 1, '', '', '', '', 0, 0, 1, 0, '2017-08-21 02:50:24', '0000-00-00', '2017-08-21 02:50:24'),
(5, 5, 0, 1, '', '', '', '', 0, 0, 1, 0, '2017-08-21 03:12:38', '0000-00-00', '2017-08-21 03:12:38'),
(6, 6, 0, 1, '', '', '', '', 0, 0, 1, 0, '2017-08-21 07:24:30', '0000-00-00', '2017-08-21 07:24:30'),
(7, 7, 0, 1, '', '', '', '', 0, 0, 1, 0, '2017-08-21 07:31:27', '0000-00-00', '2017-08-21 07:31:27'),
(8, 8, 0, 1, '', '', '', '', 0, 0, 1, 0, '2017-08-21 08:33:15', '0000-00-00', '2017-08-21 08:33:15'),
(9, 9, 0, 1, '', '', '', '', 0, 0, 1, 0, '2017-08-22 02:10:47', '0000-00-00', '2017-08-22 02:10:47'),
(10, 1, 0, 1, '', '', '', '', 8, 0, 1, 0, '2017-08-30 21:51:20', '0000-00-00', '2017-08-30 21:51:20'),
(11, 12, 0, 1, 'Chrysanthemum.jpg', '', '', '', 0, 0, 1, 0, '2017-08-31 00:07:26', '0000-00-00', '2017-08-31 00:07:26'),
(12, 13, 0, 1, '../mystorestone/image/catalog/Desert.jpg', '', '', '', 0, 0, 1, 0, '2017-08-31 00:14:19', '0000-00-00', '2017-08-31 00:14:19'),
(13, 14, 0, 1, '../mystorestone/image/catalog/Desert.jpg', '', '', '', 0, 0, 1, 0, '2017-08-31 00:15:23', '0000-00-00', '2017-08-31 00:15:23'),
(14, 15, 0, 1, 'Hydrangeas.jpg', '', '', '', 0, 0, 1, 0, '2017-08-31 00:19:13', '0000-00-00', '2017-08-31 00:19:13'),
(15, 16, 0, 1, 'Hydrangeas.jpg', '', '', '', 0, 0, 1, 0, '2017-08-31 00:21:01', '0000-00-00', '2017-08-31 00:21:01'),
(16, 17, 0, 1, 'catalog/Chrysanthemum.jpg', '', '', '', 0, 0, 1, 0, '2017-08-31 00:24:31', '0000-00-00', '2017-08-31 00:24:31'),
(17, 18, 0, 1, 'catalog/samplevideos.mp4', '', '', '', 0, 0, 1, 0, '2017-08-31 00:47:52', '0000-00-00', '2017-08-31 00:47:52'),
(18, 19, 0, 1, '', '', '', '', 17, 0, 1, 0, '2017-08-31 00:59:59', '0000-00-00', '2017-08-31 00:59:59'),
(19, 2, 0, 1, 'catalog/56625ea007b14f83a412f0bfa145157b.png', '', '', '', 0, 0, 1, 0, '2017-08-31 07:07:11', '0000-00-00', '2017-08-31 07:07:11'),
(20, 2, 0, 1, 'catalog/56625ea007b14f83a412f0bfa145157b.png', '', '', '', 0, 0, 1, 0, '2017-08-31 07:07:15', '0000-00-00', '2017-08-31 07:07:15'),
(21, 22, 0, 1, 'catalog/Penguins.jpg', '', '', '', 0, 0, 1, 0, '2017-08-31 23:10:48', '0000-00-00', '2017-08-31 23:10:48'),
(22, 2, 0, 1, '', '', '', '', 0, 0, 1, 0, '2017-09-05 02:27:03', '0000-00-00', '2017-09-05 02:27:03'),
(23, 23, 0, 1, '', '', '', '', 0, 0, 1, 0, '2017-09-16 04:26:11', '0000-00-00', '2017-09-16 04:26:11'),
(24, 24, 0, 1, 'catalog/white marble.png', '', '', '', 0, 0, 1, 0, '2017-09-18 08:20:41', '0000-00-00', '2017-09-18 08:20:41'),
(25, 24, 0, 1, 'catalog/white marble.png', '', '', '', 0, 0, 1, 0, '2017-09-18 08:21:06', '0000-00-00', '2017-09-18 08:21:06'),
(26, 24, 0, 1, 'catalog/test.mp4', '', '', '', 0, 0, 1, 0, '2017-09-18 08:44:55', '0000-00-00', '2017-09-18 08:44:55'),
(27, 24, 0, 1, '', '', '', '', 0, 0, 1, 0, '2017-09-19 08:27:08', '0000-00-00', '2017-09-19 08:27:08'),
(28, 24, 0, 1, '', '', '', '', 0, 0, 1, 0, '2017-09-19 10:22:59', '0000-00-00', '2017-09-19 10:22:59'),
(29, 24, 0, 1, '', '', '', '', 0, 0, 1, 0, '2017-09-19 10:23:12', '0000-00-00', '2017-09-19 10:23:12'),
(30, 25, 0, 1, 'catalog/icon-55 (2).jpg', '', '', '', 0, 0, 1, 0, '2017-10-02 11:08:47', '0000-00-00', '2017-10-02 11:08:47'),
(31, 26, 0, 1, '', '', '', '', 0, 0, 1, 0, '2017-10-05 10:40:45', '0000-00-00', '2017-10-05 10:40:45'),
(32, 26, 0, 1, '', '', '', '', 31, 0, 1, 0, '2017-10-05 10:41:42', '0000-00-00', '2017-10-05 10:41:42'),
(33, 25, 0, 1, 'catalog/IMG-20170909-WA0009_1504942685746.jpg', '', '', '', 0, 0, 1, 0, '2017-10-06 11:25:43', '0000-00-00', '2017-10-06 11:25:43'),
(34, 25, 0, 1, 'catalog/IMG-20170909-WA0009_1504942685746.jpg', '', '', '', 0, 0, 1, 0, '2017-10-06 11:25:49', '0000-00-00', '2017-10-06 11:25:49'),
(35, 25, 0, 1, '', '', '', '', 0, 0, 1, 0, '2017-10-06 11:25:50', '0000-00-00', '2017-10-06 11:25:50'),
(36, 25, 0, 1, 'catalog/IMG-20170909-WA0009_1504942685746.jpg', '', '', '', 0, 0, 1, 0, '2017-10-06 11:25:58', '0000-00-00', '2017-10-06 11:25:58'),
(37, 25, 0, 1, 'catalog/IMG-20170909-WA0009_1504942685746.jpg', '', '', '', 0, 0, 1, 0, '2017-10-06 11:25:59', '0000-00-00', '2017-10-06 11:25:59'),
(38, 25, 0, 1, 'catalog/IMG-20170909-WA0009_1504942685746.jpg', '', '', '', 0, 0, 1, 0, '2017-10-06 11:26:04', '0000-00-00', '2017-10-06 11:26:04'),
(39, 25, 0, 1, 'catalog/IMG-20170909-WA0009_1504942685746.jpg', '', '', '', 0, 0, 1, 0, '2017-10-06 11:26:25', '0000-00-00', '2017-10-06 11:26:25'),
(40, 25, 0, 1, 'catalog/white marble.png', '', '', '', 0, 0, 1, 0, '2017-10-07 03:25:41', '0000-00-00', '2017-10-07 03:25:41'),
(41, 25, 0, 1, 'catalog/white marble.png', '', '', '', 0, 0, 1, 0, '2017-10-07 03:26:17', '0000-00-00', '2017-10-07 03:26:17'),
(42, 25, 0, 1, 'catalog/white marble.png', '', '', '', 0, 0, 1, 0, '2017-10-07 03:26:19', '0000-00-00', '2017-10-07 03:26:19'),
(43, 25, 0, 1, 'catalog/white marble.png', '', '', '', 0, 0, 1, 0, '2017-10-07 03:28:24', '0000-00-00', '2017-10-07 03:28:24'),
(44, 25, 0, 1, 'catalog/test.mp4', '', '', '', 0, 0, 1, 0, '2017-10-07 03:40:20', '0000-00-00', '2017-10-07 03:40:20'),
(45, 25, 0, 1, '', '', '', '', 44, 0, 1, 0, '2017-10-07 03:40:45', '0000-00-00', '2017-10-07 03:40:45'),
(46, 27, 0, 1, '', '', '', '', 44, 0, 1, 0, '2017-10-07 03:45:09', '0000-00-00', '2017-10-07 03:45:09'),
(47, 25, 0, 1, '', '', '', '', 0, 0, 1, 0, '2017-10-10 02:01:02', '0000-00-00', '2017-10-10 02:01:02'),
(48, 25, 0, 1, 'catalog/20151230_163727.jpg', '', '', '', 0, 0, 1, 0, '2017-10-10 23:55:18', '0000-00-00', '2017-10-10 23:55:18'),
(49, 25, 0, 1, 'catalog/TDS-Optimized.jpg', '', '', '', 0, 0, 1, 0, '2017-10-10 23:57:34', '0000-00-00', '2017-10-10 23:57:34'),
(50, 25, 0, 1, 'catalog/20151230_165954-Optimized.jpg', '', '', '', 0, 0, 1, 0, '2017-10-11 00:03:16', '0000-00-00', '2017-10-11 00:03:16'),
(51, 25, 0, 1, 'catalog/20160129_124601-Optimized.jpg', '', '', '', 0, 0, 1, 0, '2017-10-11 00:04:41', '0000-00-00', '2017-10-11 00:04:41'),
(52, 25, 0, 1, 'catalog/Himalayan Blue-Optimized.jpg', '', '', '', 0, 0, 1, 0, '2017-10-11 00:05:20', '0000-00-00', '2017-10-11 00:05:20'),
(53, 25, 0, 1, 'catalog/IMG_20160707_181839-Optimized.jpg', '', '', '', 0, 0, 1, 0, '2017-10-11 00:05:52', '0000-00-00', '2017-10-11 00:05:52'),
(54, 25, 0, 1, 'catalog/ME Logo-Optimized.jpg', '', '', '', 0, 0, 1, 0, '2017-10-12 21:22:10', '0000-00-00', '2017-10-12 21:22:10'),
(55, 25, 0, 1, 'catalog/manali-white-mist.jpg', '', '', '', 0, 0, 1, 0, '2017-10-12 21:23:06', '0000-00-00', '2017-10-12 21:23:06'),
(56, 25, 0, 1, 'catalog/30071443.jpg', '', '', '', 0, 0, 1, 0, '2017-10-12 21:23:41', '0000-00-00', '2017-10-12 21:23:41'),
(57, 25, 0, 1, 'catalog/MyNIC_Logo_Final.jpg', '', '', '', 0, 0, 1, 0, '2017-10-12 21:24:06', '0000-00-00', '2017-10-12 21:24:06'),
(58, 25, 0, 1, 'catalog/icon-55.png', '', '', '', 0, 0, 1, 0, '2017-10-12 21:24:44', '0000-00-00', '2017-10-12 21:24:44'),
(59, 2, 0, 1, '', '', '', '', 0, 0, 1, 0, '2017-10-15 12:05:26', '0000-00-00', '2017-10-15 12:05:26'),
(60, 25, 0, 1, '', '', '', '', 58, 0, 1, 0, '2017-10-17 20:36:43', '0000-00-00', '2017-10-17 20:36:43'),
(61, 25, 0, 1, 'catalog/IMG_20160707_181909-Optimized.jpg', '', '', '', 0, 0, 1, 0, '2017-10-17 20:37:52', '0000-00-00', '2017-10-17 20:37:52'),
(62, 25, 0, 1, 'catalog/Himalayan Blue-Optimized.jpg', '', '', '', 0, 0, 1, 0, '2017-10-18 10:12:01', '0000-00-00', '2017-10-18 10:12:01'),
(63, 25, 0, 1, '', '', '', '', 0, 0, 1, 0, '2017-10-20 00:40:19', '0000-00-00', '2017-10-20 00:40:19'),
(64, 25, 0, 1, 'catalog/Mystone store final logo.png', '', '', '', 0, 0, 1, 0, '2017-10-20 00:46:26', '0000-00-00', '2017-10-20 00:46:26'),
(65, 25, 0, 1, '', '', '', '', 0, 0, 1, 0, '2017-10-31 03:41:05', '0000-00-00', '2017-10-31 03:41:05'),
(66, 25, 0, 1, 'catalog/51fRtuJti3L.png', '', '', '', 0, 0, 1, 0, '2017-10-31 03:49:17', '0000-00-00', '2017-10-31 03:49:17'),
(67, 25, 0, 1, 'catalog/DSC_0617.JPG', '', '', '', 0, 0, 1, 0, '2017-10-31 03:50:47', '0000-00-00', '2017-10-31 03:50:47'),
(68, 25, 0, 1, 'catalog/Crystal-9-Liters-Water-Dispenser-SDL557543232-1-3f7c9.jpg', '', '', '', 0, 0, 1, 0, '2017-11-08 02:17:01', '0000-00-00', '2017-11-08 02:17:01'),
(69, 25, 0, 1, 'catalog/77.jpeg', '', '', '', 0, 0, 1, 0, '2017-11-08 02:42:06', '0000-00-00', '2017-11-08 02:42:06'),
(70, 25, 0, 1, '', '', '', '', 69, 0, 1, 0, '2017-11-08 02:42:31', '0000-00-00', '2017-11-08 02:42:31'),
(71, 25, 0, 1, 'catalog/3d ceramic 3.jpg', '', '', '', 0, 0, 1, 0, '2017-11-08 02:45:00', '0000-00-00', '2017-11-08 02:45:00'),
(72, 25, 0, 1, 'catalog/3d ceramic.jpg', '', '', '', 0, 0, 1, 0, '2017-11-08 02:45:35', '0000-00-00', '2017-11-08 02:45:35'),
(73, 25, 0, 1, 'catalog/1 monu.jpg', '', '', '', 0, 0, 1, 0, '2017-11-08 03:03:02', '0000-00-00', '2017-11-08 03:03:02'),
(74, 25, 0, 1, 'catalog/2 monu.jpg', '', '', '', 0, 0, 1, 0, '2017-11-08 03:03:08', '0000-00-00', '2017-11-08 03:03:08'),
(75, 25, 0, 1, 'catalog/1 monu.jpg', '', '', '', 0, 0, 1, 0, '2017-11-08 03:03:25', '0000-00-00', '2017-11-08 03:03:25'),
(76, 25, 0, 1, 'catalog/1 monu.jpg', '', '', '', 0, 0, 1, 0, '2017-11-08 03:03:26', '0000-00-00', '2017-11-08 03:03:26'),
(77, 25, 0, 1, 'catalog/1 monu.jpg', '', '', '', 0, 0, 1, 0, '2017-11-08 03:03:34', '0000-00-00', '2017-11-08 03:03:34'),
(78, 25, 0, 1, 'catalog/1 monu.jpg', '', '', '', 0, 0, 1, 0, '2017-11-08 03:03:45', '0000-00-00', '2017-11-08 03:03:45'),
(79, 25, 0, 1, 'catalog/1 monu.jpg', '', '', '', 0, 0, 1, 0, '2017-11-08 03:16:07', '0000-00-00', '2017-11-08 03:16:07'),
(80, 25, 0, 1, 'catalog/1 monu.jpg', '', '', '', 0, 0, 1, 0, '2017-11-08 03:16:15', '0000-00-00', '2017-11-08 03:16:15'),
(81, 25, 0, 1, 'catalog/1 monu.jpg', '', '', '', 0, 0, 1, 0, '2017-11-08 03:16:24', '0000-00-00', '2017-11-08 03:16:24'),
(82, 25, 0, 1, 'catalog/1 monu.jpg', '', '', '', 0, 0, 1, 0, '2017-11-08 03:16:34', '0000-00-00', '2017-11-08 03:16:34'),
(83, 25, 0, 1, 'catalog/1 monu.jpg', '', '', '', 0, 0, 1, 0, '2017-11-08 03:16:47', '0000-00-00', '2017-11-08 03:16:47'),
(84, 25, 0, 1, 'catalog/2 monu.jpg', '', '', '', 0, 0, 1, 0, '2017-11-08 03:17:44', '0000-00-00', '2017-11-08 03:17:44'),
(85, 25, 0, 1, 'catalog/1 monu.jpg', '', '', '', 0, 0, 1, 0, '2017-11-08 03:19:35', '0000-00-00', '2017-11-08 03:19:35'),
(86, 25, 0, 1, 'catalog/3 monu.jpg', '', '', '', 0, 0, 1, 0, '2017-11-08 03:20:02', '0000-00-00', '2017-11-08 03:20:02'),
(87, 25, 0, 1, 'catalog/3 monu.jpg', '', '', '', 0, 0, 1, 0, '2017-11-08 03:20:56', '0000-00-00', '2017-11-08 03:20:56'),
(88, 25, 0, 1, 'catalog/monuments 1.jpg', '', '', '', 0, 0, 1, 0, '2017-11-08 03:21:07', '0000-00-00', '2017-11-08 03:21:07'),
(89, 25, 0, 1, 'catalog/88.jpg', '', '', '', 0, 0, 1, 0, '2017-11-08 03:22:58', '0000-00-00', '2017-11-08 03:22:58'),
(90, 25, 0, 1, 'catalog/3d ceramic.jpg', '', '', '', 0, 0, 1, 0, '2017-11-08 03:28:20', '0000-00-00', '2017-11-08 03:28:20'),
(91, 25, 0, 1, 'catalog/2 monu.jpg', '', '', '', 0, 0, 1, 0, '2017-11-08 03:42:57', '0000-00-00', '2017-11-08 03:42:57'),
(92, 25, 0, 1, '', '', '', '', 0, 0, 1, 0, '2017-11-08 03:44:32', '0000-00-00', '2017-11-08 03:44:32'),
(93, 25, 0, 1, '', '', '', '', 0, 0, 1, 0, '2017-11-08 03:44:42', '0000-00-00', '2017-11-08 03:44:42'),
(94, 25, 0, 1, 'catalog/3d ceramic.jpg', '', '', '', 0, 0, 1, 0, '2017-11-08 04:24:21', '0000-00-00', '2017-11-08 04:24:21'),
(95, 25, 0, 1, 'catalog/YP02789D.mp4', '', '', '', 0, 0, 1, 0, '2017-11-08 04:30:25', '0000-00-00', '2017-11-08 04:30:25'),
(96, 25, 0, 1, 'catalog/YP02789D.mp4', '', '', '', 0, 0, 1, 0, '2017-11-08 04:30:26', '0000-00-00', '2017-11-08 04:30:26'),
(97, 25, 0, 1, 'catalog/YP02789D.mp4', '', '', '', 0, 0, 1, 0, '2017-11-08 04:30:33', '0000-00-00', '2017-11-08 04:30:33'),
(98, 25, 0, 1, 'catalog/Post and comments.png', '', '', '', 0, 0, 1, 0, '2017-11-08 07:39:29', '0000-00-00', '2017-11-08 07:39:29'),
(99, 25, 0, 1, 'catalog/Only Comments.png', '', '', '', 0, 0, 1, 0, '2017-11-11 06:19:18', '0000-00-00', '2017-11-11 06:19:18'),
(100, 25, 0, 1, 'catalog/Only Comments.png', '', '', '', 0, 0, 1, 0, '2017-11-11 06:19:24', '0000-00-00', '2017-11-11 06:19:24'),
(101, 25, 0, 1, 'catalog/IMG-20170909-WA0030.jpg', '', '', '', 0, 0, 1, 0, '2017-11-11 06:42:59', '0000-00-00', '2017-11-11 06:42:59'),
(102, 25, 0, 1, 'catalog/IMG-20170909-WA0030.jpg', '', '', '', 0, 0, 1, 0, '2017-11-11 06:45:36', '0000-00-00', '2017-11-11 06:45:36'),
(103, 25, 0, 1, 'catalog/IMG-20170909-WA0041.jpg', '', '', '', 0, 0, 1, 0, '2017-11-11 06:46:55', '0000-00-00', '2017-11-11 06:46:55'),
(104, 25, 0, 1, 'catalog/IMG-20170909-WA0041.jpg', '', '', '', 0, 0, 1, 0, '2017-11-11 06:46:59', '0000-00-00', '2017-11-11 06:46:59'),
(105, 28, 0, 1, '', '', '', '', 0, 0, 1, 0, '2017-11-13 23:19:16', '0000-00-00', '2017-11-13 23:19:16'),
(106, 28, 0, 1, '', '', '', '', 0, 0, 1, 0, '2017-11-17 08:06:57', '0000-00-00', '2017-11-17 08:06:57'),
(107, 25, 0, 1, 'catalog/IMG-20170909-WA0030.jpg', '', '', '', 0, 0, 1, 0, '2017-11-18 03:10:10', '0000-00-00', '2017-11-18 03:10:10'),
(108, 25, 0, 1, '', '', '', '', 0, 0, 1, 0, '2017-11-27 07:14:31', '0000-00-00', '2017-11-27 07:14:31'),
(109, 25, 0, 1, 'catalog/Capture001.png', '', '', '', 0, 0, 1, 0, '2017-11-27 07:15:04', '0000-00-00', '2017-11-27 07:15:04'),
(110, 25, 0, 1, 'catalog/Capture001.png', '', '', '', 0, 0, 1, 0, '2017-11-27 07:15:29', '0000-00-00', '2017-11-27 07:15:29'),
(111, 25, 0, 1, 'catalog/Capture001.png', '', '', '', 0, 0, 1, 0, '2017-11-27 07:16:09', '0000-00-00', '2017-11-27 07:16:09'),
(112, 25, 0, 1, 'catalog/Capture001.png', '', '', '', 0, 0, 1, 0, '2017-11-27 07:17:07', '0000-00-00', '2017-11-27 07:17:07'),
(113, 25, 0, 1, '', '', '', '', 0, 0, 1, 0, '2017-11-27 07:21:27', '0000-00-00', '2017-11-27 07:21:27'),
(114, 25, 0, 1, '', '', '', '', 0, 0, 1, 0, '2017-11-27 07:26:31', '0000-00-00', '2017-11-27 07:26:31'),
(115, 25, 0, 1, '', '', '', '', 0, 0, 1, 0, '2017-11-27 07:31:58', '0000-00-00', '2017-11-27 07:31:58'),
(116, 25, 0, 1, '', '', '', '', 0, 0, 1, 0, '2017-11-27 07:35:45', '0000-00-00', '2017-11-27 07:35:45'),
(117, 25, 0, 1, '', '', '', '', 0, 0, 1, 0, '2017-11-27 07:36:37', '0000-00-00', '2017-11-27 07:36:37'),
(118, 25, 0, 1, '', '', '', '', 0, 0, 1, 0, '2017-11-27 07:54:03', '0000-00-00', '2017-11-27 07:54:03'),
(119, 25, 0, 1, '', '', '', '', 0, 0, 1, 0, '2017-11-27 07:55:03', '0000-00-00', '2017-11-27 07:55:03'),
(120, 25, 0, 1, '', '', '', '', 0, 0, 1, 0, '2017-11-27 07:56:38', '0000-00-00', '2017-11-27 07:56:38'),
(121, 25, 0, 1, '', '', '', '', 0, 0, 1, 0, '2017-11-27 08:04:23', '0000-00-00', '2017-11-27 08:04:23'),
(122, 25, 0, 1, '', '', '', '', 0, 0, 1, 0, '2017-11-27 08:05:01', '0000-00-00', '2017-11-27 08:05:01'),
(123, 25, 0, 1, '', '', '', '', 0, 0, 1, 0, '2017-11-27 23:00:36', '0000-00-00', '2017-11-27 23:00:36'),
(124, 25, 0, 1, '', '', '', '', 0, 0, 1, 0, '2017-11-27 23:00:56', '0000-00-00', '2017-11-27 23:00:56'),
(125, 25, 0, 1, '', '', '', '', 0, 0, 1, 0, '2017-11-28 05:07:06', '0000-00-00', '2017-11-27 05:07:06'),
(126, 25, 0, 1, '', '', '', '', 0, 0, 1, 0, '2017-11-28 05:08:41', '0000-00-00', '2017-11-27 05:08:41'),
(150, 25, 0, 1, 'catalog/logo_ss.png', '', '', '', 0, 0, 1, 1, '2017-11-29 04:04:46', '2017-11-29', '2017-11-29 15:34:46'),
(151, 25, 0, 1, 'catalog/video.mp4', '', '', '', 0, 0, 1, 2, '2017-11-29 04:08:49', '2017-11-29', '2017-11-29 15:38:49'),
(152, 25, 0, 1, 'catalog/banner-art-fair-2017.jpg', '', '', '', 0, 0, 1, 1, '2017-11-30 05:25:43', '2017-11-30', '2017-11-30 16:55:43'),
(153, 25, 0, 1, 'catalog/video.mp4', '', '', '', 0, 0, 1, 2, '2017-11-30 05:29:17', '2017-11-30', '2017-11-30 16:59:17'),
(154, 25, 0, 1, 'catalog/123.jpg', '', '', '', 0, 0, 1, 1, '2017-11-30 05:31:02', '2017-11-30', '2017-11-30 17:01:02'),
(155, 25, 0, 1, 'catalog/images500.jpg', '', '', '', 0, 0, 1, 1, '2017-11-30 05:32:49', '2017-11-30', '2017-11-30 17:02:49'),
(156, 25, 0, 1, 'catalog/1.jpg', '', '', '', 0, 0, 1, 1, '2017-12-18 01:58:29', '2017-12-18', '2017-12-18 13:28:29'),
(157, 25, 0, 1, 'catalog/1.jpg', '', '', '', 0, 0, 1, 1, '2017-12-18 01:58:33', '2017-12-18', '2017-12-18 13:28:33'),
(158, 25, 0, 1, 'catalog/download - Copy.jpg', '', '', '', 0, 0, 1, 1, '2017-12-18 02:00:24', '2017-12-18', '2017-12-18 13:30:24'),
(159, 25, 0, 1, 'catalog/images500.jpg', '', '', '', 0, 0, 1, 1, '2017-12-19 00:38:33', '2017-12-19', '2017-12-19 12:08:33'),
(160, 25, 0, 1, 'catalog/maxresdefault.jpg', '', '', '', 0, 0, 1, 1, '2017-12-30 00:18:54', '2017-12-30', '2017-12-30 11:48:54'),
(161, 25, 0, 1, 'catalog/VID-20160820-WA0000.mp4', '', '', '', 0, 0, 0, 2, '2017-12-30 00:25:09', '2017-12-30', '2017-12-30 11:55:09'),
(162, 25, 0, 1, 'catalog/home-office-336377_1920.jpg', '', '', '', 0, 0, 0, 1, '2018-01-02 08:00:47', '2018-01-02', '2018-01-02 19:30:47'),
(163, 25, 0, 1, 'catalog/home-office-336377_1920.jpg', '', '', '', 0, 0, 0, 1, '2018-01-02 08:01:03', '2018-01-02', '2018-01-02 19:31:03'),
(164, 25, 0, 1, 'catalog/3d ceramic 3.jpg', '', '', '', 0, 0, 1, 1, '2018-01-02 12:35:37', '2018-01-03', '2018-01-03 00:05:37'),
(165, 25, 0, 1, '', '', '', '', 164, 0, 1, 0, '2018-01-02 23:49:00', '0000-00-00', '2018-01-02 23:49:00'),
(166, 25, 0, 1, 'catalog/wall-floor-coverings.jpg', '', '', '', 0, 0, 1, 1, '2018-01-03 08:06:55', '2018-01-03', '2018-01-03 19:36:55'),
(167, 25, 0, 1, '', '', '', '', 166, 0, 1, 0, '2018-01-03 08:40:16', '0000-00-00', '2018-01-03 08:40:16'),
(168, 25, 0, 1, 'catalog/3D-tiles_160516_06-800x600.jpg', '', '', '', 0, 0, 1, 1, '2018-01-03 22:25:13', '2018-01-04', '2018-01-04 09:55:13'),
(169, 25, 0, 1, 'catalog/banner-art-fair-2017.jpg', '', '', '', 0, 0, 1, 1, '2018-01-04 06:58:02', '2018-01-04', '2018-01-04 18:28:02'),
(170, 25, 0, 1, 'catalog/banner-art-fair-2017.jpg', '', '', '', 0, 0, 1, 1, '2018-01-04 06:58:38', '2018-01-04', '2018-01-04 18:28:38'),
(171, 25, 0, 1, 'catalog/3D-tiles_160516_06-800x600.jpg', '', '', '', 0, 0, 1, 1, '2018-01-05 00:21:16', '2018-01-05', '2018-01-05 11:51:16'),
(172, 25, 0, 1, 'catalog/Curve 1-500x500 - Copy.jpg', '', '', '', 0, 0, 1, 1, '2018-01-05 06:51:48', '2018-01-05', '2018-01-05 18:21:48'),
(173, 25, 0, 1, 'catalog/dominik-qn-25196.jpg', '', '', '', 0, 0, 1, 1, '2018-01-05 07:05:28', '2018-01-05', '2018-01-05 18:35:28'),
(174, 25, 0, 1, 'catalog/nano tiles tech.jpg', '', '', '', 0, 0, 1, 1, '2018-01-06 00:05:39', '2018-01-06', '2018-01-06 11:35:39'),
(175, 25, 0, 1, 'catalog/home-office-336377_1920.jpg', '', '', '', 0, 0, 1, 1, '2018-01-06 00:16:46', '2018-01-06', '2018-01-06 11:46:46'),
(176, 25, 0, 1, 'catalog/pexels-photo-261599.jpeg', '', '', '', 0, 0, 1, 1, '2018-01-06 00:19:54', '2018-01-06', '2018-01-06 11:49:54'),
(177, 29, 0, 1, 'catalog/pexels-photo-261599.jpeg', '', '', '', 0, 0, 1, 1, '2018-01-06 03:08:12', '2018-01-06', '2018-01-06 14:38:12'),
(178, 27, 0, 1, 'catalog/1.jpg', '', '', '', 0, 0, 0, 1, '2018-01-06 04:55:41', '2018-01-06', '2018-01-06 16:25:41'),
(179, 27, 0, 1, 'catalog/images500.jpg', '', '', '', 0, 0, 1, 1, '2018-01-06 04:56:40', '2018-01-06', '2018-01-06 16:26:40'),
(180, 27, 0, 1, 'catalog/download.jpg', '', '', '', 0, 0, 1, 1, '2018-01-06 04:58:27', '2018-01-06', '2018-01-06 16:28:27'),
(181, 27, 0, 1, '', '', '', '', 0, 0, 1, 0, '2018-01-06 07:04:40', '2018-01-06', '2018-01-06 18:34:40'),
(182, 28, 0, 1, '', '', '', '', 0, 0, 1, 0, '2018-01-06 07:37:00', '2018-01-06', '2018-01-06 19:07:00'),
(183, 28, 0, 1, 'catalog/generatedtext (1).jpg', '', '', '', 0, 0, 0, 1, '2018-01-06 07:38:07', '2018-01-06', '2018-01-06 19:08:07'),
(184, 27, 0, 1, 'catalog/Koala.jpg', '', '', '', 0, 0, 1, 1, '2018-01-08 01:32:13', '2018-01-08', '2018-01-08 13:02:13'),
(185, 25, 0, 1, '', '', '', '', 0, 0, 1, 0, '2018-01-08 02:56:33', '2018-01-08', '2018-01-08 14:26:33'),
(186, 25, 0, 1, '', '', '', '', 0, 0, 1, 0, '2018-01-08 02:58:51', '2018-01-08', '2018-01-08 14:28:51'),
(187, 25, 0, 1, 'catalog/pexels-photo-261599.jpeg', '', '', '', 0, 0, 1, 1, '2018-01-08 03:31:25', '2018-01-08', '2018-01-08 15:01:25'),
(188, 25, 9, 1, '', '', '', '', 0, 0, 1, 0, '2018-01-08 03:35:21', '2018-01-08', '2018-01-08 15:05:21'),
(189, 25, 9, 1, 'catalog/pexels-photo-261599.jpeg', '', '', '', 0, 0, 1, 1, '2018-01-08 03:35:47', '2018-01-08', '2018-01-08 15:05:47'),
(190, 29, 11, 1, '', '', '', '', 0, 0, 1, 0, '2018-01-08 03:38:55', '2018-01-08', '2018-01-08 15:08:55'),
(191, 29, 9, 1, 'catalog/rawpixel-com-255077.jpg', '', '', '', 0, 0, 1, 1, '2018-01-08 03:41:15', '2018-01-08', '2018-01-08 15:11:15'),
(192, 29, 9, 1, 'catalog/pexels-photo-261599.jpeg', '', '', '', 0, 0, 1, 1, '2018-01-08 03:43:42', '2018-01-08', '2018-01-08 15:13:42'),
(193, 25, 9, 1, 'catalog/1.jpg', '', '', '', 0, 0, 0, 1, '2018-01-08 07:33:06', '2018-01-08', '2018-01-08 19:03:06'),
(194, 28, 10, 1, 'catalog/WhatsApp Image 2017-12-04 at 14.01.23.jpeg', '', '', '', 0, 0, 1, 1, '2018-01-08 07:57:45', '2018-01-08', '2018-01-08 19:27:45'),
(195, 28, 9, 1, 'catalog/IMG-20170909-WA0007_1504942666200.jpg', '', '', '', 0, 0, 0, 1, '2018-01-08 08:00:56', '2018-01-08', '2018-01-08 19:30:56'),
(196, 28, 9, 1, 'catalog/IMG-20170909-WA0007_1504942666200.jpg', '', '', '', 0, 0, 0, 1, '2018-01-08 08:01:08', '2018-01-08', '2018-01-08 19:31:08'),
(197, 28, 9, 1, '', '', '', '', 0, 0, 1, 0, '2018-01-08 08:10:54', '2018-01-08', '2018-01-08 19:40:54'),
(198, 25, 0, 1, '', '', '', '', 192, 0, 1, 0, '2018-01-08 08:16:11', '0000-00-00', '2018-01-08 08:16:11'),
(199, 25, 0, 1, '', '', '', '', 193, 0, 1, 0, '2018-01-08 08:17:12', '0000-00-00', '2018-01-08 08:17:12'),
(200, 28, 12, 1, 'catalog/0001.jpg', '', '', '', 0, 0, 1, 1, '2018-01-09 23:51:25', '2018-01-10', '2018-01-10 11:21:25'),
(201, 28, 9, 1, 'catalog/shopping-cart-md (1).png', '', '', '', 0, 0, 1, 1, '2018-01-11 10:41:01', '2018-01-11', '2018-01-11 22:11:01'),
(202, 25, 0, 1, '', '', '', '', 191, 0, 1, 0, '2018-01-11 10:42:30', '0000-00-00', '2018-01-11 10:42:30'),
(203, 25, 0, 1, '', '', '', '', 192, 0, 1, 0, '2018-01-11 10:45:03', '0000-00-00', '2018-01-11 10:45:03'),
(204, 25, 0, 1, '', '', '', '', 201, 0, 1, 0, '2018-01-14 08:45:34', '0000-00-00', '2018-01-14 08:45:34'),
(205, 25, 0, 1, '', '', '', '', 192, 0, 1, 0, '2018-01-16 00:44:54', '0000-00-00', '2018-01-16 00:44:54'),
(206, 30, 9, 1, '', '', '', '', 0, 0, 1, 0, '2018-01-16 00:54:48', '2018-01-16', '2018-01-16 12:24:48'),
(207, 25, 0, 1, '', '', '', '', 191, 0, 1, 0, '2018-01-22 06:24:52', '0000-00-00', '2018-01-22 06:24:52');

-- --------------------------------------------------------

--
-- Table structure for table `oc_simple_blog_article_action`
--

CREATE TABLE IF NOT EXISTS `oc_simple_blog_article_action` (
  `simple_blog_article_action_id` int(11) NOT NULL AUTO_INCREMENT,
  `simple_blog_article_id` int(11) NOT NULL,
  `likes_count` int(11) NOT NULL,
  `shares_count` int(11) NOT NULL,
  `spam_count` int(11) NOT NULL,
  PRIMARY KEY (`simple_blog_article_action_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=77 ;

--
-- Dumping data for table `oc_simple_blog_article_action`
--

INSERT INTO `oc_simple_blog_article_action` (`simple_blog_article_action_id`, `simple_blog_article_id`, `likes_count`, `shares_count`, `spam_count`) VALUES
(1, 3, 3, 0, 0),
(2, 2, 2, 0, 0),
(3, 8, 2, 1, 0),
(4, 4, 1, 0, 0),
(6, 1, 1, 0, 0),
(7, 10, 3, 0, 0),
(9, 6, 1, 0, 0),
(10, 16, 1, 0, 0),
(11, 17, 0, 1, 0),
(12, 20, 5, 0, 0),
(13, 21, 2, 0, 0),
(14, 22, 2, 0, 0),
(15, 23, 0, 0, 2),
(16, 25, 13, 0, 0),
(17, 27, 3, 0, 0),
(18, 26, 1, 0, 0),
(19, 24, 1, 0, 0),
(20, 20, 0, 0, 1),
(21, 30, 0, 0, 1),
(22, 31, 1, 0, 0),
(23, 31, 0, 1, 0),
(24, 30, 1, 0, 0),
(25, 34, 1, 0, 0),
(26, 44, 0, 2, 0),
(27, 49, 0, 0, 1),
(28, 53, 1, 0, 0),
(29, 55, 0, 0, 1),
(30, 58, 1, 0, 0),
(31, 58, 0, 1, 0),
(32, 67, 0, 0, 1),
(33, 65, 0, 0, 1),
(34, 67, 1, 0, 0),
(35, 69, 1, 0, 0),
(36, 69, 0, 1, 0),
(37, 100, 0, 0, 1),
(38, 106, 0, 0, 1),
(39, 122, 0, 0, 0),
(40, 128, 0, 0, 1),
(41, 138, 0, 0, 2),
(42, 147, 0, 0, 10),
(43, 147, 1, 0, 10),
(44, 146, 0, 0, 0),
(45, 146, 1, 0, 0),
(46, 145, 0, 0, 0),
(47, 145, 1, 0, 0),
(48, 146, 0, 0, 1),
(49, 146, 0, 0, 1),
(50, 148, 0, 0, 10),
(51, 155, 0, 0, 1),
(52, 159, 0, 0, 1),
(53, 105, 0, 0, 1),
(54, 164, 0, 1, 0),
(55, 166, 0, 1, 0),
(56, 170, 0, 0, 1),
(57, 179, 0, 0, 6),
(58, 177, 0, 0, 2),
(59, 180, 0, 0, 1),
(60, 176, 0, 0, 1),
(61, 181, 1, 0, 0),
(62, 193, 0, 0, 10),
(63, 192, 0, 3, 0),
(64, 193, 0, 1, 10),
(65, 192, 1, 3, 0),
(66, 192, 1, 3, 0),
(67, 192, 1, 3, 0),
(68, 193, 1, 0, 10),
(69, 197, 0, 0, 0),
(70, 194, 0, 0, 0),
(71, 192, 1, 3, 0),
(72, 197, 1, 0, 0),
(73, 189, 1, 0, 0),
(74, 191, 0, 2, 0),
(75, 201, 0, 1, 0),
(76, 200, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_simple_blog_article_description`
--

CREATE TABLE IF NOT EXISTS `oc_simple_blog_article_description` (
  `simple_blog_article_description_id` int(16) NOT NULL AUTO_INCREMENT,
  `simple_blog_article_id` int(16) NOT NULL,
  `language_id` int(16) NOT NULL,
  `article_title` varchar(256) NOT NULL,
  `description` text NOT NULL,
  `meta_description` varchar(256) NOT NULL,
  `meta_keyword` varchar(256) NOT NULL,
  PRIMARY KEY (`simple_blog_article_description_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=194 ;

--
-- Dumping data for table `oc_simple_blog_article_description`
--

INSERT INTO `oc_simple_blog_article_description` (`simple_blog_article_description_id`, `simple_blog_article_id`, `language_id`, `article_title`, `description`, `meta_description`, `meta_keyword`) VALUES
(4, 1, 1, 'Article1', '&lt;p&gt;Lorem Ipsum is simply dummy text of the printing and typesetting \r\nindustry. Lorem Ipsum has been the industry''s  ever since the 1500s&lt;br&gt;&lt;/p&gt;', '', ''),
(5, 2, 1, '', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s ever since the 1500s.', '', ''),
(6, 3, 1, '', 'Lorem Ipsum is simply dummy text', '', ''),
(7, 4, 1, '', 'test', '', ''),
(8, 6, 1, '', 'test', '', ''),
(9, 8, 1, '', 'test daniel', '', ''),
(10, 10, 1, '', 'test share', '', ''),
(11, 15, 1, '', 'image', '', ''),
(12, 16, 1, '', 'image', '', ''),
(13, 17, 1, '', 'video', '', ''),
(14, 18, 1, '', 'Test video share', '', ''),
(15, 19, 1, '', 'image', '', ''),
(16, 20, 1, '', 'image', '', ''),
(17, 21, 1, '', 'image', '', ''),
(18, 22, 1, '', 'Test Post', '', ''),
(19, 23, 1, '', 'test', '', ''),
(20, 24, 1, '', 'image', '', ''),
(21, 25, 1, '', 'image', '', ''),
(22, 26, 1, '', 'video', '', ''),
(23, 27, 1, '', 'test', '', ''),
(24, 30, 1, '', 'image', '', ''),
(25, 31, 1, '', 'test', '', ''),
(26, 33, 1, '', 'image', '', ''),
(27, 34, 1, '', 'image', '', ''),
(28, 36, 1, '', 'image', '', ''),
(29, 37, 1, '', 'image', '', ''),
(30, 38, 1, '', 'image', '', ''),
(31, 39, 1, '', 'image', '', ''),
(32, 40, 1, '', 'image', '', ''),
(33, 41, 1, '', 'image', '', ''),
(34, 42, 1, '', 'image', '', ''),
(35, 43, 1, '', 'image', '', ''),
(36, 44, 1, '', 'video', '', ''),
(37, 45, 1, '', 'test', '', ''),
(38, 46, 1, '', 'hi', '', ''),
(39, 47, 1, '', 'Number of post need to be restricted to 4 for paid members and one to free member', '', ''),
(40, 48, 1, '', 'image', '', ''),
(41, 49, 1, '', 'image', '', ''),
(42, 50, 1, '', 'image', '', ''),
(43, 51, 1, '', 'image', '', ''),
(44, 52, 1, '', 'image', '', ''),
(45, 53, 1, '', 'image', '', ''),
(46, 54, 1, '', 'image', '', ''),
(47, 55, 1, '', 'image', '', ''),
(48, 56, 1, '', 'image', '', ''),
(49, 57, 1, '', 'image', '', ''),
(50, 58, 1, '', 'image', '', ''),
(51, 60, 1, '', 'E-Kart', '', ''),
(52, 61, 1, '', 'image', '', ''),
(53, 62, 1, '', 'image', '', ''),
(54, 63, 1, '', 'Time to upload company logo', '', ''),
(55, 64, 1, '', 'image', '', ''),
(56, 65, 1, '', 'check the post', '', ''),
(57, 66, 1, '', 'image', '', ''),
(58, 67, 1, '', 'image', '', ''),
(59, 68, 1, '', 'image', '', ''),
(60, 69, 1, '', 'image', '', ''),
(61, 71, 1, '', 'image', '', ''),
(62, 72, 1, '', 'image', '', ''),
(63, 73, 1, '', 'image', '', ''),
(64, 74, 1, '', 'image', '', ''),
(65, 75, 1, '', 'image', '', ''),
(66, 76, 1, '', 'image', '', ''),
(67, 77, 1, '', 'image', '', ''),
(68, 78, 1, '', 'image', '', ''),
(69, 79, 1, '', 'image', '', ''),
(70, 80, 1, '', 'image', '', ''),
(71, 81, 1, '', 'image', '', ''),
(72, 82, 1, '', 'image', '', ''),
(73, 83, 1, '', 'image', '', ''),
(74, 84, 1, '', 'image', '', ''),
(75, 85, 1, '', 'image', '', ''),
(76, 86, 1, '', 'image', '', ''),
(77, 87, 1, '', 'image', '', ''),
(78, 88, 1, '', 'image', '', ''),
(79, 89, 1, '', 'image', '', ''),
(80, 90, 1, '', 'image', '', ''),
(81, 91, 1, '', 'image', '', ''),
(82, 94, 1, '', 'image', '', ''),
(83, 95, 1, '', 'video', '', ''),
(84, 96, 1, '', 'video', '', ''),
(85, 97, 1, '', 'video', '', ''),
(86, 98, 1, '', 'image', '', ''),
(87, 99, 1, '', 'image', '', ''),
(88, 100, 1, '', 'image', '', ''),
(89, 101, 1, '', 'image', '', ''),
(90, 102, 1, '', 'image', '', ''),
(91, 103, 1, '', 'image', '', ''),
(92, 104, 1, '', 'image', '', ''),
(93, 105, 1, '', 'Happy Children''s Day', '', ''),
(94, 106, 1, '', 'Did you work on per day limit ', '', ''),
(95, 107, 1, '', 'image', '', ''),
(96, 109, 1, '', 'image', '', ''),
(97, 110, 1, '', 'image', '', ''),
(98, 111, 1, '', 'image', '', ''),
(99, 112, 1, '', 'image', '', ''),
(100, 113, 1, '', 'test', '', ''),
(101, 114, 1, '', 'test123', '', ''),
(102, 115, 1, '', 'test post', '', ''),
(103, 116, 1, '', 'test post 2', '', ''),
(104, 117, 1, '', 'test post 3', '', ''),
(105, 118, 1, '', 'test4', '', ''),
(106, 119, 1, '', 'test5', '', ''),
(107, 120, 1, '', 'test5', '', ''),
(108, 121, 1, '', 'test6', '', ''),
(109, 122, 1, '', 'time test', '', ''),
(110, 124, 1, '', 'test', '', ''),
(111, 125, 1, '', 'test ', '', ''),
(112, 126, 1, '', 'test456', '', ''),
(113, 127, 1, '', 'test post321', '', ''),
(114, 128, 1, '', 'image', '', ''),
(115, 129, 1, '', 'test pattasu', '', ''),
(116, 130, 1, '', 'image', '', ''),
(117, 131, 1, '', 'image', '', ''),
(118, 132, 1, '', 'image', '', ''),
(119, 133, 1, '', 'image', '', ''),
(120, 134, 1, '', 'image', '', ''),
(121, 135, 1, '', 'image', '', ''),
(122, 136, 1, '', 'image', '', ''),
(123, 137, 1, '', 'image', '', ''),
(124, 138, 1, '', 'video', '', ''),
(125, 139, 1, '', '\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '', ''),
(126, 140, 1, '', 'image', '', ''),
(127, 141, 1, '', 'video', '', ''),
(128, 142, 1, '', 'video', '', ''),
(129, 143, 1, '', 'video', '', ''),
(130, 144, 1, '', 'image', '', ''),
(131, 145, 1, '', 'image', '', ''),
(132, 146, 1, '', 'image', '', ''),
(133, 147, 1, '', 'image', '', ''),
(134, 148, 1, '', 'image', '', ''),
(135, 149, 1, '', 'image', '', ''),
(136, 150, 1, '', 'image', '', ''),
(137, 151, 1, '', 'video', '', ''),
(138, 152, 1, '', 'image', '', ''),
(139, 153, 1, '', 'video', '', ''),
(140, 154, 1, '', 'image', '', ''),
(141, 155, 1, '', 'image', '', ''),
(142, 156, 1, '', 'image', '', ''),
(143, 157, 1, '', 'image', '', ''),
(144, 158, 1, '', 'image', '', ''),
(145, 159, 1, '', 'image', '', ''),
(146, 160, 1, '', 'image', '', ''),
(147, 161, 1, '', 'video', '', ''),
(148, 162, 1, '', 'image', '', ''),
(149, 163, 1, '', 'image', '', ''),
(150, 164, 1, '', 'image', '', ''),
(151, 165, 1, '', 'Test', '', ''),
(152, 166, 1, '', 'image', '', ''),
(153, 167, 1, '', 'This post is of Syed not the Daniel how come it is showing Daniel Name.', '', ''),
(154, 168, 1, '', 'image', '', ''),
(155, 169, 1, '', 'image', '', ''),
(156, 170, 1, '', 'image', '', ''),
(157, 171, 1, '', 'image', '', ''),
(158, 172, 1, '', 'image', '', ''),
(159, 173, 1, '', 'image', '', ''),
(160, 174, 1, '', 'image', '', ''),
(161, 175, 1, '', 'image', '', ''),
(162, 176, 1, '', 'image', '', ''),
(163, 177, 1, '', 'image', '', ''),
(164, 178, 1, '', 'image', '', ''),
(165, 179, 1, '', 'image', '', ''),
(166, 180, 1, '', 'image', '', ''),
(167, 181, 1, '', 'test', '', ''),
(168, 182, 1, '', 'What is going now in your office at 7 pm waiting for the call', '', ''),
(169, 183, 1, '', 'image', '', ''),
(170, 184, 1, '', 'image', '', ''),
(171, 185, 1, '', 'test group post', '', ''),
(172, 186, 1, '', 'test group post', '', ''),
(173, 187, 1, '', 'image', '', ''),
(174, 188, 1, '', 'test group post 1', '', ''),
(175, 189, 1, '', 'image', '', ''),
(176, 190, 1, '', 'test group post', '', ''),
(177, 191, 1, '', 'image', '', ''),
(178, 192, 1, '', 'image', '', ''),
(179, 193, 1, '', 'image', '', ''),
(180, 194, 1, '', 'image', '', ''),
(181, 195, 1, '', 'image', '', ''),
(182, 196, 1, '', 'image', '', ''),
(183, 197, 1, '', 'This is test message ', '', ''),
(184, 198, 1, '', 'I am sharing this post of Krishna', '', ''),
(185, 199, 1, '', 'quary', '', ''),
(186, 200, 1, '', 'image', '', ''),
(187, 201, 1, '', 'image', '', ''),
(188, 202, 1, '', 'sharing on 11th Jan', '', ''),
(189, 203, 1, '', 'This is krishna post I am sharing now on 11th Jan 2018 at 10:14 Pm', '', ''),
(190, 204, 1, '', 'sharing on 14.01.2018 at 20:15', '', ''),
(191, 205, 1, '', 'today 16.01.2018 12:1PM', '', ''),
(192, 206, 1, '', 'Today is 1.01.2018 12:24 PM', '', ''),
(193, 207, 1, '', 'Sharing on 22.01.2018 at 17.54PM ', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_simple_blog_article_description_additional`
--

CREATE TABLE IF NOT EXISTS `oc_simple_blog_article_description_additional` (
  `simple_blog_article_id` int(16) NOT NULL,
  `language_id` int(16) NOT NULL,
  `additional_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `oc_simple_blog_article_notification`
--

CREATE TABLE IF NOT EXISTS `oc_simple_blog_article_notification` (
  `simple_blog_article_notification_id` int(11) NOT NULL AUTO_INCREMENT,
  `simple_blog_article_id` int(11) NOT NULL,
  `simple_blog_user_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `read_status` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`simple_blog_article_notification_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=207 ;

--
-- Dumping data for table `oc_simple_blog_article_notification`
--

INSERT INTO `oc_simple_blog_article_notification` (`simple_blog_article_notification_id`, `simple_blog_article_id`, `simple_blog_user_id`, `type`, `read_status`, `created_at`) VALUES
(1, 21, 3, 'liked', 1, '2017-09-05 01:36:25'),
(2, 20, 3, 'commented', 1, '2017-09-05 01:38:33'),
(3, 22, 3, 'liked', 1, '2017-09-05 02:27:50'),
(4, 10, 2, 'liked', 1, '2017-09-05 02:29:11'),
(5, 22, 2, 'liked', 1, '2017-09-05 02:32:37'),
(6, 20, 1, 'liked', 1, '2017-09-15 08:43:29'),
(7, 20, 1, 'commented', 1, '2017-09-15 08:43:51'),
(8, 20, 1, 'liked', 1, '2017-09-15 08:44:20'),
(9, 20, 1, 'liked', 1, '2017-09-15 08:44:22'),
(10, 23, 2, 'spamed', 1, '2017-09-17 11:34:01'),
(11, 23, 12, 'spamed', 1, '2017-09-18 08:07:50'),
(12, 25, 1, 'liked', 1, '2017-09-19 02:55:23'),
(13, 25, 1, 'liked', 1, '2017-09-19 02:55:45'),
(14, 25, 1, 'liked', 1, '2017-09-19 02:55:47'),
(15, 25, 1, 'liked', 1, '2017-09-19 02:55:50'),
(16, 25, 1, 'liked', 1, '2017-09-19 02:55:53'),
(17, 25, 1, 'liked', 1, '2017-09-19 02:55:56'),
(18, 25, 1, 'liked', 1, '2017-09-19 02:55:57'),
(19, 25, 1, 'liked', 1, '2017-09-19 02:55:57'),
(20, 25, 1, 'liked', 1, '2017-09-19 02:55:58'),
(21, 25, 1, 'liked', 1, '2017-09-19 02:55:58'),
(22, 25, 1, 'liked', 1, '2017-09-19 02:55:58'),
(23, 25, 1, 'liked', 1, '2017-09-19 02:55:58'),
(24, 25, 1, 'liked', 1, '2017-09-19 02:55:58'),
(36, 27, 1, 'liked', 1, '2017-10-02 10:56:50'),
(32, 26, 2, 'liked', 1, '2017-09-23 14:43:02'),
(31, 27, 2, 'liked', 1, '2017-09-23 14:42:44'),
(29, 27, 2, 'liked', 1, '2017-09-23 14:15:25'),
(35, 24, 1, 'liked', 1, '2017-09-26 02:19:03'),
(37, 27, 1, 'commented', 1, '2017-10-02 10:57:08'),
(38, 20, 1, 'spamed', 1, '2017-10-02 10:59:28'),
(39, 30, 1, 'commented', 1, '2017-10-02 11:14:07'),
(40, 30, 1, 'spamed', 1, '2017-10-03 08:10:55'),
(41, 31, 16, 'liked', 1, '2017-10-05 10:40:55'),
(42, 31, 16, 'commented', 1, '2017-10-05 10:41:12'),
(43, 30, 16, 'liked', 1, '2017-10-05 10:41:53'),
(44, 30, 1, 'commented', 1, '2017-10-06 05:35:52'),
(45, 34, 1, 'liked', 1, '2017-10-06 11:26:39'),
(46, 34, 1, 'commented', 1, '2017-10-06 11:27:00'),
(47, 49, 1, 'spamed', 1, '2017-10-10 23:58:05'),
(48, 52, 1, 'commented', 1, '2017-10-11 01:06:38'),
(49, 53, 2, 'liked', 1, '2017-10-11 02:23:27'),
(50, 53, 2, 'commented', 1, '2017-10-11 03:25:26'),
(51, 52, 2, 'commented', 1, '2017-10-11 03:25:42'),
(52, 53, 1, 'commented', 1, '2017-10-12 21:14:35'),
(53, 53, 1, 'commented', 1, '2017-10-12 21:16:30'),
(54, 53, 1, 'commented', 1, '2017-10-12 21:17:03'),
(55, 53, 1, 'commented', 1, '2017-10-12 21:17:55'),
(56, 55, 1, 'spamed', 1, '2017-10-12 21:25:08'),
(57, 53, 1, 'commented', 1, '2017-10-13 08:16:19'),
(58, 58, 1, 'liked', 1, '2017-10-13 08:36:39'),
(59, 58, 1, 'commented', 1, '2017-10-17 13:13:00'),
(60, 58, 1, 'commented', 1, '2017-10-17 13:13:25'),
(61, 58, 1, 'commented', 1, '2017-10-17 13:13:47'),
(62, 62, 1, 'commented', 1, '2017-10-18 10:12:17'),
(63, 62, 1, 'commented', 1, '2017-10-18 10:12:28'),
(64, 64, 1, 'commented', 1, '2017-10-23 02:26:35'),
(65, 62, 2, 'commented', 1, '2017-10-30 22:04:50'),
(66, 58, 2, 'commented', 1, '2017-10-30 23:02:44'),
(67, 58, 2, 'commented', 1, '2017-10-30 23:28:44'),
(68, 58, 2, 'commented', 1, '2017-10-30 23:28:57'),
(69, 58, 2, 'commented', 1, '2017-10-30 23:40:04'),
(70, 58, 2, 'commented', 1, '2017-10-30 23:41:20'),
(71, 58, 2, 'commented', 1, '2017-10-30 23:42:22'),
(72, 58, 2, 'commented', 1, '2017-10-30 23:44:27'),
(73, 64, 1, 'commented', 1, '2017-10-31 03:42:38'),
(74, 64, 1, 'commented', 1, '2017-10-31 03:43:14'),
(75, 64, 1, 'commented', 1, '2017-10-31 03:43:27'),
(76, 64, 1, 'commented', 1, '2017-10-31 03:43:40'),
(77, 64, 1, 'commented', 1, '2017-10-31 03:44:09'),
(78, 64, 1, 'commented', 1, '2017-10-31 03:44:23'),
(79, 64, 1, 'commented', 1, '2017-10-31 03:44:55'),
(80, 64, 1, 'commented', 1, '2017-10-31 03:45:34'),
(81, 64, 1, 'commented', 1, '2017-10-31 03:45:48'),
(82, 64, 1, 'commented', 1, '2017-10-31 03:46:37'),
(83, 64, 1, 'commented', 1, '2017-10-31 03:46:58'),
(84, 64, 1, 'commented', 1, '2017-10-31 03:47:26'),
(85, 64, 1, 'commented', 1, '2017-10-31 03:47:45'),
(86, 67, 1, 'spamed', 1, '2017-10-31 03:52:03'),
(87, 67, 1, 'commented', 1, '2017-11-01 02:57:41'),
(88, 62, 2, 'commented', 1, '2017-11-02 00:29:52'),
(89, 67, 2, 'commented', 1, '2017-11-02 00:51:55'),
(90, 67, 2, 'commented', 1, '2017-11-02 00:52:20'),
(91, 65, 2, 'commented', 1, '2017-11-02 01:02:53'),
(92, 65, 2, 'spamed', 1, '2017-11-02 01:30:59'),
(93, 67, 1, 'commented', 1, '2017-11-06 05:00:50'),
(94, 67, 1, 'commented', 1, '2017-11-08 00:24:08'),
(95, 67, 1, 'commented', 1, '2017-11-08 00:24:36'),
(96, 67, 1, 'liked', 1, '2017-11-08 00:54:45'),
(97, 69, 1, 'liked', 1, '2017-11-08 02:42:22'),
(98, 89, 1, 'commented', 1, '2017-11-08 04:33:50'),
(99, 89, 1, 'commented', 1, '2017-11-08 04:34:02'),
(100, 94, 1, 'commented', 1, '2017-11-08 04:35:12'),
(101, 94, 1, 'commented', 1, '2017-11-08 04:35:55'),
(102, 97, 1, 'commented', 1, '2017-11-08 04:43:07'),
(103, 97, 1, 'commented', 1, '2017-11-08 07:28:18'),
(104, 97, 1, 'commented', 1, '2017-11-08 07:28:45'),
(105, 97, 1, 'commented', 1, '2017-11-08 07:29:10'),
(106, 97, 1, 'commented', 1, '2017-11-08 07:29:17'),
(107, 97, 1, 'commented', 1, '2017-11-08 07:29:25'),
(108, 97, 1, 'commented', 1, '2017-11-08 07:29:36'),
(109, 100, 30, 'spamed', 1, '2017-11-11 06:39:30'),
(110, 27, 30, 'commented', 1, '2017-11-11 06:42:26'),
(111, 104, 30, 'commented', 1, '2017-11-12 22:42:51'),
(112, 104, 30, 'commented', 1, '2017-11-12 22:43:01'),
(113, 104, 30, 'commented', 1, '2017-11-17 08:02:13'),
(114, 104, 30, 'commented', 1, '2017-11-17 08:02:24'),
(115, 104, 30, 'commented', 1, '2017-11-17 08:02:43'),
(116, 104, 1, 'commented', 1, '2017-11-18 02:16:52'),
(117, 106, 1, 'spamed', 1, '2017-11-18 02:17:22'),
(119, 120, 1, 'commented', 1, '2017-11-27 08:15:45'),
(120, 120, 1, 'commented', 1, '2017-11-27 08:15:58'),
(121, 127, 1, 'commented', 1, '2017-11-27 23:21:33'),
(122, 128, 1, 'commented', 1, '2017-11-27 23:25:42'),
(123, 129, 1, 'commented', 1, '2017-11-27 23:39:47'),
(124, 129, 1, 'commented', 1, '2017-11-27 23:40:18'),
(125, 128, 1, 'commented', 1, '2017-11-27 23:45:11'),
(126, 129, 1, 'commented', 1, '2017-11-27 23:45:32'),
(127, 131, 1, 'commented', 1, '2017-11-27 23:47:01'),
(128, 128, 1, 'spamed', 1, '2017-11-28 01:44:19'),
(129, 138, 1, 'spamed', 1, '2017-11-29 00:57:50'),
(130, 138, 1, 'spamed', 1, '2017-11-29 00:58:16'),
(131, 147, 1, 'spamed', 1, '2017-11-29 01:01:31'),
(132, 147, 1, 'spamed', 1, '2017-11-29 01:01:51'),
(133, 147, 1, 'liked', 1, '2017-11-29 01:02:05'),
(135, 146, 1, 'liked', 1, '2017-11-29 01:02:44'),
(137, 145, 1, 'liked', 1, '2017-11-29 01:02:59'),
(138, 145, 1, 'commented', 1, '2017-11-29 01:05:20'),
(139, 147, 1, 'spamed', 1, '2017-11-29 01:05:39'),
(140, 147, 1, 'spamed', 1, '2017-11-29 01:05:57'),
(141, 147, 1, 'spamed', 1, '2017-11-29 01:44:19'),
(142, 147, 1, 'spamed', 1, '2017-11-29 01:44:35'),
(143, 147, 1, 'spamed', 1, '2017-11-29 01:44:48'),
(144, 147, 1, 'spamed', 1, '2017-11-29 01:45:03'),
(145, 147, 1, 'spamed', 1, '2017-11-29 01:45:23'),
(146, 147, 1, 'spamed', 1, '2017-11-29 01:45:52'),
(147, 146, 1, 'spamed', 1, '2017-11-29 01:47:18'),
(148, 146, 1, 'spamed', 1, '2017-11-29 02:23:54'),
(149, 148, 1, 'spamed', 1, '2017-11-29 02:24:17'),
(150, 148, 1, 'spamed', 1, '2017-11-29 02:24:29'),
(151, 148, 1, 'spamed', 1, '2017-11-29 02:24:45'),
(152, 148, 1, 'spamed', 1, '2017-11-29 02:25:10'),
(153, 148, 1, 'spamed', 1, '2017-11-29 02:25:22'),
(154, 148, 1, 'spamed', 1, '2017-11-29 02:25:41'),
(155, 148, 1, 'spamed', 1, '2017-11-29 02:25:52'),
(156, 148, 1, 'spamed', 1, '2017-11-29 02:26:05'),
(157, 148, 1, 'spamed', 1, '2017-11-29 02:26:16'),
(158, 148, 1, 'spamed', 1, '2017-11-29 02:27:12'),
(159, 155, 1, 'commented', 1, '2017-12-01 01:53:30'),
(160, 155, 30, 'commented', 1, '2017-12-01 04:43:35'),
(161, 155, 30, 'spamed', 1, '2017-12-01 04:44:16'),
(162, 155, 1, 'commented', 1, '2017-12-04 06:12:16'),
(163, 159, 12, 'commented', 1, '2017-12-19 21:07:17'),
(164, 159, 30, 'spamed', 1, '2017-12-30 00:13:10'),
(165, 160, 30, 'commented', 1, '2017-12-30 00:19:41'),
(166, 160, 30, 'commented', 1, '2017-12-30 00:21:27'),
(167, 105, 1, 'spamed', 1, '2018-01-02 08:13:06'),
(168, 170, 30, 'spamed', 1, '2018-01-05 00:20:22'),
(169, 181, 40, 'commented', 1, '2018-01-06 07:05:22'),
(170, 181, 12, 'commented', 1, '2018-01-06 07:05:57'),
(171, 181, 30, 'commented', 1, '2018-01-06 07:36:26'),
(172, 179, 30, 'spamed', 1, '2018-01-06 23:57:38'),
(173, 179, 30, 'spamed', 1, '2018-01-06 23:57:43'),
(174, 179, 30, 'spamed', 1, '2018-01-06 23:57:56'),
(175, 179, 30, 'spamed', 1, '2018-01-06 23:57:58'),
(176, 177, 30, 'spamed', 1, '2018-01-06 23:58:07'),
(177, 179, 30, 'spamed', 1, '2018-01-06 23:58:51'),
(178, 179, 30, 'spamed', 1, '2018-01-06 23:58:59'),
(179, 180, 30, 'spamed', 1, '2018-01-06 23:59:15'),
(180, 176, 30, 'spamed', 1, '2018-01-06 23:59:49'),
(181, 181, 1, 'liked', 1, '2018-01-08 01:19:04'),
(182, 177, 12, 'spamed', 1, '2018-01-08 01:28:12'),
(183, 188, 40, 'commented', 1, '2018-01-08 03:39:29'),
(184, 193, 30, 'commented', 1, '2018-01-08 08:11:49'),
(185, 193, 30, 'spamed', 1, '2018-01-08 08:13:39'),
(186, 192, 30, 'liked', 1, '2018-01-08 08:17:50'),
(187, 192, 30, 'liked', 1, '2018-01-08 08:18:02'),
(188, 192, 30, 'liked', 1, '2018-01-08 08:18:03'),
(189, 193, 1, 'liked', 1, '2018-01-08 08:18:18'),
(190, 193, 30, 'spamed', 1, '2018-01-09 00:29:52'),
(191, 193, 30, 'spamed', 1, '2018-01-09 00:30:44'),
(192, 193, 30, 'spamed', 1, '2018-01-09 00:31:31'),
(193, 193, 30, 'spamed', 1, '2018-01-09 00:31:44'),
(194, 193, 30, 'spamed', 1, '2018-01-09 00:32:12'),
(195, 193, 30, 'spamed', 1, '2018-01-09 00:32:43'),
(196, 193, 30, 'spamed', 1, '2018-01-09 00:33:05'),
(197, 193, 30, 'spamed', 1, '2018-01-09 00:33:29'),
(198, 193, 30, 'spamed', 1, '2018-01-09 00:33:51'),
(201, 192, 1, 'liked', 1, '2018-01-09 03:57:33'),
(202, 197, 1, 'liked', 1, '2018-01-09 04:05:59'),
(203, 189, 30, 'liked', 1, '2018-01-11 10:42:06'),
(204, 169, 1, 'commented', 1, '2018-01-15 23:59:01'),
(205, 200, 1, 'commented', 1, '2018-01-29 06:04:34'),
(206, 200, 1, 'liked', 1, '2018-01-29 06:08:04');

-- --------------------------------------------------------

--
-- Table structure for table `oc_simple_blog_article_product_related`
--

CREATE TABLE IF NOT EXISTS `oc_simple_blog_article_product_related` (
  `simple_blog_article_id` int(16) NOT NULL,
  `product_id` int(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `oc_simple_blog_article_to_category`
--

CREATE TABLE IF NOT EXISTS `oc_simple_blog_article_to_category` (
  `simple_blog_article_id` int(16) NOT NULL,
  `simple_blog_category_id` int(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `oc_simple_blog_article_to_layout`
--

CREATE TABLE IF NOT EXISTS `oc_simple_blog_article_to_layout` (
  `simple_blog_article_id` int(16) NOT NULL,
  `store_id` int(16) NOT NULL,
  `layout_id` int(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `oc_simple_blog_article_to_store`
--

CREATE TABLE IF NOT EXISTS `oc_simple_blog_article_to_store` (
  `simple_blog_article_id` int(16) NOT NULL,
  `store_id` int(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `oc_simple_blog_article_to_store`
--

INSERT INTO `oc_simple_blog_article_to_store` (`simple_blog_article_id`, `store_id`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(5, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(11, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(18, 0),
(19, 0),
(20, 0),
(21, 0),
(22, 0),
(23, 0),
(24, 0),
(25, 0),
(26, 0),
(27, 0),
(28, 0),
(29, 0),
(30, 0),
(31, 0),
(32, 0),
(33, 0),
(34, 0),
(35, 0),
(36, 0),
(37, 0),
(38, 0),
(39, 0),
(40, 0),
(41, 0),
(42, 0),
(43, 0),
(44, 0),
(45, 0),
(46, 0),
(47, 0),
(48, 0),
(49, 0),
(50, 0),
(51, 0),
(52, 0),
(53, 0),
(54, 0),
(55, 0),
(56, 0),
(57, 0),
(58, 0),
(59, 0),
(60, 0),
(61, 0),
(62, 0),
(63, 0),
(64, 0),
(65, 0),
(66, 0),
(67, 0),
(68, 0),
(69, 0),
(70, 0),
(71, 0),
(72, 0),
(73, 0),
(74, 0),
(75, 0),
(76, 0),
(77, 0),
(78, 0),
(79, 0),
(80, 0),
(81, 0),
(82, 0),
(83, 0),
(84, 0),
(85, 0),
(86, 0),
(87, 0),
(88, 0),
(89, 0),
(90, 0),
(91, 0),
(92, 0),
(93, 0),
(94, 0),
(95, 0),
(96, 0),
(97, 0),
(98, 0),
(99, 0),
(100, 0),
(101, 0),
(102, 0),
(103, 0),
(104, 0),
(105, 0),
(106, 0),
(107, 0),
(108, 0),
(109, 0),
(110, 0),
(111, 0),
(112, 0),
(113, 0),
(114, 0),
(115, 0),
(116, 0),
(117, 0),
(118, 0),
(119, 0),
(120, 0),
(121, 0),
(122, 0),
(123, 0),
(124, 0),
(125, 0),
(126, 0),
(127, 0),
(128, 0),
(129, 0),
(130, 0),
(131, 0),
(132, 0),
(133, 0),
(134, 0),
(135, 0),
(136, 0),
(137, 0),
(138, 0),
(139, 0),
(140, 0),
(141, 0),
(142, 0),
(143, 0),
(144, 0),
(145, 0),
(146, 0),
(147, 0),
(148, 0),
(149, 0),
(150, 0),
(151, 0),
(152, 0),
(153, 0),
(154, 0),
(155, 0),
(156, 0),
(157, 0),
(158, 0),
(159, 0),
(160, 0),
(161, 0),
(162, 0),
(163, 0),
(164, 0),
(165, 0),
(166, 0),
(167, 0),
(168, 0),
(169, 0),
(170, 0),
(171, 0),
(172, 0),
(173, 0),
(174, 0),
(175, 0),
(176, 0),
(177, 0),
(178, 0),
(179, 0),
(180, 0),
(181, 0),
(182, 0),
(183, 0),
(184, 0),
(185, 0),
(186, 0),
(187, 0),
(188, 0),
(189, 0),
(190, 0),
(191, 0),
(192, 0),
(193, 0),
(194, 0),
(195, 0),
(196, 0),
(197, 0),
(198, 0),
(199, 0),
(200, 0),
(201, 0),
(202, 0),
(203, 0),
(204, 0),
(205, 0),
(206, 0),
(207, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_simple_blog_author`
--

CREATE TABLE IF NOT EXISTS `oc_simple_blog_author` (
  `simple_blog_author_id` int(16) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `image` text NOT NULL,
  `author_user_id` int(16) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`simple_blog_author_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `oc_simple_blog_author`
--

INSERT INTO `oc_simple_blog_author` (`simple_blog_author_id`, `name`, `image`, `author_user_id`, `status`, `date_added`, `date_modified`) VALUES
(1, 'Admin', '', 0, 1, '2017-08-18 00:43:02', '2017-08-18 00:43:02'),
(2, 'shankar', '', 2, 1, '2017-08-18 02:15:58', '2017-08-18 02:15:58'),
(3, 'shankar', '', 0, 1, '2017-08-18 02:46:14', '2017-08-18 02:46:14'),
(4, 'shankar', '', 0, 1, '2017-08-21 02:50:24', '2017-08-21 02:50:24'),
(5, 'daniel', '', 0, 1, '2017-08-21 03:12:38', '2017-08-21 03:12:38'),
(6, 'daniel', '', 0, 1, '2017-08-21 07:24:30', '2017-08-21 07:24:30'),
(7, 'daniel', '', 0, 1, '2017-08-21 07:31:27', '2017-08-21 07:31:27'),
(8, 'daniel', '', 0, 1, '2017-08-21 08:33:15', '2017-08-21 08:33:15'),
(9, 'daniel', '', 0, 1, '2017-08-22 02:10:47', '2017-08-22 02:10:47'),
(10, 'shankar', '', 0, 1, '2017-08-30 21:49:19', '2017-08-30 21:49:19'),
(11, 'shankar', '', 0, 1, '2017-08-30 21:51:20', '2017-08-30 21:51:20'),
(12, 'shankar', '', 0, 1, '2017-08-31 00:07:26', '2017-08-31 00:07:26'),
(13, 'shankar', '', 0, 1, '2017-08-31 00:14:19', '2017-08-31 00:14:19'),
(14, 'shankar', '', 0, 1, '2017-08-31 00:15:23', '2017-08-31 00:15:23'),
(15, 'shankar', '', 0, 1, '2017-08-31 00:19:13', '2017-08-31 00:19:13'),
(16, 'shankar', '', 0, 1, '2017-08-31 00:21:01', '2017-08-31 00:21:01'),
(17, 'shankar', '', 0, 1, '2017-08-31 00:24:31', '2017-08-31 00:24:31'),
(18, 'shankar', '', 0, 1, '2017-08-31 00:47:52', '2017-08-31 00:47:52'),
(19, 'shankar', '', 0, 1, '2017-08-31 00:59:59', '2017-08-31 00:59:59'),
(20, 'daniel', '', 0, 1, '2017-08-31 07:07:11', '2017-08-31 07:07:11'),
(21, 'daniel', '', 0, 1, '2017-08-31 07:07:15', '2017-08-31 07:07:15'),
(22, 'shankar', '', 0, 1, '2017-08-31 23:10:48', '2017-08-31 23:10:48'),
(23, '1', '', 4, 1, '2017-09-16 04:26:11', '2017-09-16 04:26:11'),
(24, '1!', '', 6, 1, '2017-09-18 08:20:41', '2017-09-18 08:20:41'),
(25, 'daniel', '', 1, 1, '2017-10-02 11:08:47', '2017-10-02 11:08:47'),
(26, '123abc', '', 16, 1, '2017-10-05 10:40:45', '2017-10-05 10:40:45'),
(27, 'Bala', '', 12, 1, '2017-10-07 03:45:09', '2017-10-07 03:45:09'),
(28, 'Syed', '', 30, 1, '2017-11-13 23:19:16', '2017-11-13 23:19:16'),
(29, 'krishna', '', 40, 1, '2018-01-06 03:08:12', '2018-01-06 03:08:12'),
(30, 'Syed Jeelan', '', 46, 1, '2018-01-16 00:54:48', '2018-01-16 00:54:48');

-- --------------------------------------------------------

--
-- Table structure for table `oc_simple_blog_author_description`
--

CREATE TABLE IF NOT EXISTS `oc_simple_blog_author_description` (
  `simple_blog_author_description_id` int(16) NOT NULL AUTO_INCREMENT,
  `simple_blog_author_id` int(16) NOT NULL,
  `language_id` int(16) NOT NULL,
  `description` text NOT NULL,
  `meta_description` varchar(256) NOT NULL,
  `meta_keyword` varchar(256) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`simple_blog_author_description_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `oc_simple_blog_author_description`
--

INSERT INTO `oc_simple_blog_author_description` (`simple_blog_author_description_id`, `simple_blog_author_id`, `language_id`, `description`, `meta_description`, `meta_keyword`, `date_added`) VALUES
(1, 1, 1, '', '', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `oc_simple_blog_category`
--

CREATE TABLE IF NOT EXISTS `oc_simple_blog_category` (
  `simple_blog_category_id` int(16) NOT NULL AUTO_INCREMENT,
  `image` text NOT NULL,
  `parent_id` int(16) NOT NULL,
  `top` tinyint(1) NOT NULL,
  `blog_category_column` int(16) NOT NULL,
  `column` int(8) NOT NULL,
  `sort_order` int(8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`simple_blog_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_simple_blog_category_description`
--

CREATE TABLE IF NOT EXISTS `oc_simple_blog_category_description` (
  `simple_blog_category_description_id` int(16) NOT NULL AUTO_INCREMENT,
  `simple_blog_category_id` int(16) NOT NULL,
  `language_id` int(16) NOT NULL,
  `name` varchar(256) NOT NULL,
  `description` text NOT NULL,
  `meta_description` varchar(256) NOT NULL,
  `meta_keyword` varchar(256) NOT NULL,
  PRIMARY KEY (`simple_blog_category_description_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_simple_blog_category_to_layout`
--

CREATE TABLE IF NOT EXISTS `oc_simple_blog_category_to_layout` (
  `simple_blog_category_id` int(16) NOT NULL,
  `store_id` int(16) NOT NULL,
  `layout_id` int(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `oc_simple_blog_category_to_store`
--

CREATE TABLE IF NOT EXISTS `oc_simple_blog_category_to_store` (
  `simple_blog_category_id` int(16) NOT NULL,
  `store_id` int(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `oc_simple_blog_comment`
--

CREATE TABLE IF NOT EXISTS `oc_simple_blog_comment` (
  `simple_blog_comment_id` int(16) NOT NULL AUTO_INCREMENT,
  `simple_blog_article_id` int(16) NOT NULL,
  `simple_blog_article_reply_id` int(16) NOT NULL,
  `author` varchar(64) NOT NULL,
  `comment` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`simple_blog_comment_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=100 ;

--
-- Dumping data for table `oc_simple_blog_comment`
--

INSERT INTO `oc_simple_blog_comment` (`simple_blog_comment_id`, `simple_blog_article_id`, `simple_blog_article_reply_id`, `author`, `comment`, `status`, `date_added`, `date_modified`) VALUES
(1, 18, 2, 'shankar', 'test comment', 1, '2017-08-31 02:00:13', '2017-08-31 02:00:13'),
(2, 18, 2, 'shankar', 'test comment2', 1, '2017-08-31 02:02:26', '2017-08-31 02:02:26'),
(3, 20, 2, 'shankar', 'test', 1, '2017-08-31 23:13:23', '2017-08-31 23:13:23'),
(4, 20, 2, 'shankar', 'test', 1, '2017-08-31 23:13:55', '2017-08-31 23:13:55'),
(5, 21, 2, 'shankar', 'tetets', 1, '2017-08-31 23:15:30', '2017-08-31 23:15:30'),
(6, 19, 2, 'shankar', 'test', 1, '2017-08-31 23:16:02', '2017-08-31 23:16:02'),
(7, 21, 2, 'shankar', 'tet', 1, '2017-08-31 23:23:17', '2017-08-31 23:23:17'),
(8, 20, 2, 'shankar', 'tetttt', 1, '2017-08-31 23:24:31', '2017-08-31 23:24:31'),
(9, 20, 2, 'shankar', 'testset', 1, '2017-09-05 01:38:33', '2017-09-05 01:38:33'),
(10, 20, 1, 'daniel', 'checking the comment section', 1, '2017-09-15 08:43:51', '2017-09-15 08:43:51'),
(11, 27, 1, 'daniel', 'checking the comment section', 1, '2017-10-02 10:57:08', '2017-10-02 10:57:08'),
(12, 30, 1, 'daniel', 'more than 10 members please click as spam - so that this post automatically deleted from the feeds', 1, '2017-10-02 11:14:07', '2017-10-02 11:14:07'),
(13, 31, 0, '123abc', 'test', 1, '2017-10-05 10:41:12', '2017-10-05 10:41:12'),
(14, 30, 1, 'daniel', 'Others should be able to see the latest comment of the post ', 1, '2017-10-06 05:35:52', '2017-10-06 05:35:52'),
(15, 34, 1, 'daniel', 'Atlantic Blue granite', 1, '2017-10-06 11:27:00', '2017-10-06 11:27:00'),
(16, 52, 1, 'daniel', 'test', 1, '2017-10-11 01:06:38', '2017-10-11 01:06:38'),
(17, 53, 2, 'shankar', 'test comment', 1, '2017-10-11 03:25:26', '2017-10-11 03:25:26'),
(18, 52, 2, 'shankar', 'hi test', 1, '2017-10-11 03:25:42', '2017-10-11 03:25:42'),
(19, 53, 1, 'daniel', 'Latest comments visible ?', 1, '2017-10-12 21:14:35', '2017-10-12 21:14:35'),
(20, 53, 1, 'daniel', 'Last comment need to be just above the comment box', 1, '2017-10-12 21:16:30', '2017-10-12 21:16:30'),
(21, 53, 1, 'daniel', 'how many comments will be visible', 1, '2017-10-12 21:17:03', '2017-10-12 21:17:03'),
(22, 53, 1, 'daniel', 'Comments need to be hidden. Only latest comment need to be visible or latest two comments need to be visible', 1, '2017-10-12 21:17:55', '2017-10-12 21:17:55'),
(23, 53, 1, 'daniel', 'test ixly\n', 1, '2017-10-13 08:16:19', '2017-10-13 08:16:19'),
(24, 58, 1, 'daniel', 'New test to check the comment\n', 1, '2017-10-17 13:13:00', '2017-10-17 13:13:00'),
(25, 58, 1, 'daniel', 'One above post is completed\n', 1, '2017-10-17 13:13:25', '2017-10-17 13:13:25'),
(26, 58, 1, 'daniel', 'Still the comments going above only\n', 1, '2017-10-17 13:13:47', '2017-10-17 13:13:47'),
(27, 62, 1, 'daniel', 'checking comments\n', 1, '2017-10-18 10:12:17', '2017-10-18 10:12:17'),
(28, 62, 1, 'daniel', 'next', 1, '2017-10-18 10:12:28', '2017-10-18 10:12:28'),
(29, 64, 1, 'daniel', 'test ixly', 1, '2017-10-23 02:26:35', '2017-10-23 02:26:35'),
(30, 62, 2, 'shankar', 'next1', 1, '2017-10-30 22:04:50', '2017-10-30 22:04:50'),
(31, 58, 2, 'shankar', 'test', 1, '2017-10-30 23:02:44', '2017-10-30 23:02:44'),
(32, 58, 2, 'shankar', 'test1', 1, '2017-10-30 23:28:44', '2017-10-30 23:28:44'),
(33, 58, 2, 'shankar', 'test3', 1, '2017-10-30 23:28:57', '2017-10-30 23:28:57'),
(34, 58, 2, 'shankar', 'test4', 1, '2017-10-30 23:40:04', '2017-10-30 23:40:04'),
(35, 58, 2, 'shankar', 'test5', 1, '2017-10-30 23:41:20', '2017-10-30 23:41:20'),
(36, 58, 2, 'shankar', 'tt6', 1, '2017-10-30 23:42:22', '2017-10-30 23:42:22'),
(37, 58, 2, 'shankar', 'tt7', 1, '2017-10-30 23:44:27', '2017-10-30 23:44:27'),
(38, 64, 1, 'daniel', 'checking the date and time', 1, '2017-10-31 03:42:38', '2017-10-31 03:42:38'),
(39, 64, 1, 'daniel', 'it is showing the down most place', 1, '2017-10-31 03:43:14', '2017-10-31 03:43:14'),
(40, 64, 1, 'daniel', '3 comments completed', 1, '2017-10-31 03:43:27', '2017-10-31 03:43:27'),
(41, 64, 1, 'daniel', 'Now it is time for the 4 comment', 1, '2017-10-31 03:43:40', '2017-10-31 03:43:40'),
(42, 64, 1, 'daniel', 'Ok now let us see what happens to 5th comment', 1, '2017-10-31 03:44:09', '2017-10-31 03:44:09'),
(43, 64, 1, 'daniel', '5th comment is also visible ', 1, '2017-10-31 03:44:23', '2017-10-31 03:44:23'),
(44, 64, 1, 'daniel', 'what happen to the old comments', 1, '2017-10-31 03:44:55', '2017-10-31 03:44:55'),
(45, 64, 1, 'daniel', 'add few more comments', 1, '2017-10-31 03:45:34', '2017-10-31 03:45:34'),
(46, 64, 1, 'daniel', 'We have added the comments', 1, '2017-10-31 03:45:48', '2017-10-31 03:45:48'),
(47, 64, 1, 'daniel', 'more than 5 comments posted now', 1, '2017-10-31 03:46:37', '2017-10-31 03:46:37'),
(48, 64, 1, 'daniel', 'Comments getting hided ', 1, '2017-10-31 03:46:58', '2017-10-31 03:46:58'),
(49, 64, 1, 'daniel', 'One by one comments getting hide', 1, '2017-10-31 03:47:26', '2017-10-31 03:47:26'),
(50, 64, 1, 'daniel', 'we do not know where are the old comments', 1, '2017-10-31 03:47:45', '2017-10-31 03:47:45'),
(51, 67, 1, 'daniel', 'Comment', 1, '2017-11-01 02:57:41', '2017-11-01 02:57:41'),
(52, 62, 2, 'shankar', 'hi teste', 1, '2017-11-02 00:29:52', '2017-11-02 00:29:52'),
(53, 67, 2, 'shankar', 'test comment for profile pic', 1, '2017-11-02 00:51:55', '2017-11-02 00:51:55'),
(54, 67, 2, 'shankar', 'test comment', 1, '2017-11-02 00:52:20', '2017-11-02 00:52:20'),
(55, 65, 2, 'shankar', 'test', 1, '2017-11-02 01:02:53', '2017-11-02 01:02:53'),
(56, 67, 1, 'daniel', 'hello\n\n', 1, '2017-11-06 05:00:50', '2017-11-06 05:00:50'),
(57, 67, 1, 'daniel', 'hello', 1, '2017-11-08 00:24:08', '2017-11-08 00:24:08'),
(58, 67, 1, 'daniel', 'hello how r u', 1, '2017-11-08 00:24:36', '2017-11-08 00:24:36'),
(59, 89, 1, 'daniel', 'sssssssssss', 1, '2017-11-08 04:33:50', '2017-11-08 04:33:50'),
(60, 89, 1, 'daniel', 'sssssssssss', 1, '2017-11-08 04:34:02', '2017-11-08 04:34:02'),
(61, 94, 1, 'daniel', 'aaaaaaaa', 1, '2017-11-08 04:35:12', '2017-11-08 04:35:12'),
(62, 94, 1, 'daniel', 'aaaaaaa', 1, '2017-11-08 04:35:55', '2017-11-08 04:35:55'),
(63, 97, 1, 'daniel', 'aaaaaaaaaaa', 1, '2017-11-08 04:43:07', '2017-11-08 04:43:07'),
(64, 97, 1, 'daniel', '2nd comment', 1, '2017-11-08 07:28:18', '2017-11-08 07:28:18'),
(65, 97, 1, 'daniel', 'pressing enter button \n', 1, '2017-11-08 07:28:45', '2017-11-08 07:28:45'),
(66, 97, 1, 'daniel', '4 com', 1, '2017-11-08 07:29:10', '2017-11-08 07:29:10'),
(67, 97, 1, 'daniel', '5 com', 1, '2017-11-08 07:29:17', '2017-11-08 07:29:17'),
(68, 97, 1, 'daniel', '6 com', 1, '2017-11-08 07:29:25', '2017-11-08 07:29:25'),
(69, 97, 1, 'daniel', '7 com', 1, '2017-11-08 07:29:36', '2017-11-08 07:29:36'),
(70, 27, 30, 'Syed', 'Hello boss', 1, '2017-11-11 06:42:26', '2017-11-11 06:42:26'),
(71, 104, 30, 'Syed', 'Good ', 1, '2017-11-12 22:42:51', '2017-11-12 22:42:51'),
(72, 104, 30, 'Syed', 'What is the cost ', 1, '2017-11-12 22:43:01', '2017-11-12 22:43:01'),
(73, 104, 30, 'Syed', 'You have not replied', 1, '2017-11-17 08:02:13', '2017-11-17 08:02:13'),
(74, 104, 30, 'Syed', 'come online', 1, '2017-11-17 08:02:24', '2017-11-17 08:02:24'),
(75, 104, 30, 'Syed', 'we will chat online', 1, '2017-11-17 08:02:43', '2017-11-17 08:02:43'),
(76, 104, 1, 'daniel', 'test comment', 1, '2017-11-18 02:16:52', '2017-11-18 02:16:52'),
(77, 120, 1, 'daniel', 'test\n', 1, '2017-11-27 08:15:45', '2017-11-27 08:15:45'),
(78, 120, 1, 'daniel', 'test123', 1, '2017-11-27 08:15:58', '2017-11-27 08:15:58'),
(79, 127, 1, 'daniel', 'test', 1, '2017-11-27 23:21:33', '2017-11-27 23:21:33'),
(80, 128, 1, 'daniel', 'test456', 1, '2017-11-27 23:25:42', '2017-11-27 23:25:42'),
(81, 129, 1, 'daniel', 'test', 1, '2017-11-27 23:39:47', '2017-11-27 23:39:47'),
(82, 129, 1, 'daniel', 'comment', 1, '2017-11-28 23:40:18', '2017-11-28 23:40:18'),
(83, 128, 1, 'daniel', '12334', 1, '2017-11-28 11:15:11', '2017-11-27 23:45:11'),
(84, 129, 1, 'daniel', 'test pattasu comment', 1, '2017-11-28 11:15:32', '2017-11-27 23:45:32'),
(85, 131, 1, 'daniel', 'super ji\n', 1, '2017-11-28 11:17:01', '2017-11-27 23:47:01'),
(86, 145, 1, 'daniel', '231', 1, '2017-11-29 12:35:20', '2017-11-29 01:05:20'),
(87, 155, 1, 'daniel', 'hii', 1, '2017-12-01 13:23:30', '2017-12-01 01:53:30'),
(88, 155, 30, 'Syed', 'checking the comment section\n', 1, '2017-12-01 16:13:35', '2017-12-01 04:43:35'),
(89, 155, 1, 'daniel', 'Thanks syed for the comment', 1, '2017-12-04 17:42:16', '2017-12-04 06:12:16'),
(90, 159, 12, 'Bala', 'what', 1, '2017-12-20 08:37:17', '2017-12-19 21:07:17'),
(91, 160, 30, 'Syed', 'Nice', 1, '2017-12-30 11:49:41', '2017-12-30 00:19:41'),
(92, 160, 30, 'Syed', 'text message not getting posted on main page', 1, '2017-12-30 11:51:26', '2017-12-30 00:21:26'),
(93, 181, 40, 'krishna', 'test123\n', 1, '2018-01-06 18:35:22', '2018-01-06 07:05:22'),
(94, 181, 12, 'Bala', 'comment working, text post working fine', 1, '2018-01-06 18:35:57', '2018-01-06 07:05:57'),
(95, 181, 30, 'Syed', 'today time up', 1, '2018-01-06 19:06:26', '2018-01-06 07:36:26'),
(96, 188, 40, 'krishna', 'working correctly', 1, '2018-01-08 15:09:29', '2018-01-08 03:39:29'),
(97, 193, 30, 'Syed', 'Checking the comment', 1, '2018-01-08 19:41:49', '2018-01-08 08:11:49'),
(98, 169, 1, 'daniel', 'test', 1, '2018-01-16 11:29:01', '2018-01-15 23:59:01'),
(99, 200, 1, 'daniel', 'ffgfgfgf', 1, '2018-01-29 17:34:34', '2018-01-29 06:04:34');

-- --------------------------------------------------------

--
-- Table structure for table `oc_simple_blog_related_article`
--

CREATE TABLE IF NOT EXISTS `oc_simple_blog_related_article` (
  `simple_blog_related_article_id` int(16) NOT NULL AUTO_INCREMENT,
  `simple_blog_article_id` int(16) NOT NULL,
  `simple_blog_article_related_id` int(16) NOT NULL,
  `sort_order` int(8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`simple_blog_related_article_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_simple_blog_spam`
--

CREATE TABLE IF NOT EXISTS `oc_simple_blog_spam` (
  `simple_blog_comment_id` int(16) NOT NULL AUTO_INCREMENT,
  `simple_blog_article_id` int(16) NOT NULL,
  `simple_blog_article_reply_id` int(16) NOT NULL,
  `author` varchar(64) NOT NULL,
  `comment` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`simple_blog_comment_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=60 ;

--
-- Dumping data for table `oc_simple_blog_spam`
--

INSERT INTO `oc_simple_blog_spam` (`simple_blog_comment_id`, `simple_blog_article_id`, `simple_blog_article_reply_id`, `author`, `comment`, `status`, `date_added`, `date_modified`) VALUES
(1, 23, 0, 'shankar', 'Test spam', 1, '2017-09-17 11:34:01', '2017-09-17 11:34:01'),
(2, 23, 0, 'Bala', 'test', 1, '2017-09-18 08:07:50', '2017-09-18 08:07:50'),
(3, 20, 0, 'daniel', 'unrelated to the stone - checking', 1, '2017-10-02 10:59:28', '2017-10-02 10:59:28'),
(4, 30, 0, 'daniel', 'the', 1, '2017-10-03 08:10:55', '2017-10-03 08:10:55'),
(5, 49, 0, 'daniel', 'hjh', 1, '2017-10-10 23:58:05', '2017-10-10 23:58:05'),
(6, 55, 0, 'daniel', 'Unrelated to stone Industry', 1, '2017-10-12 21:25:08', '2017-10-12 21:25:08'),
(7, 67, 0, 'daniel', 'unrelated ', 1, '2017-10-31 03:52:03', '2017-10-31 03:52:03'),
(8, 65, 2, 'shankar', 'Test reason for spam mail', 1, '2017-11-02 01:30:59', '2017-11-02 01:30:59'),
(9, 100, 30, 'Syed', 'This is unrelated image', 1, '2017-11-11 06:39:30', '2017-11-11 06:39:30'),
(10, 106, 1, 'daniel', 'This is spam', 1, '2017-11-18 02:17:22', '2017-11-18 02:17:22'),
(11, 128, 1, 'daniel', 'jnkjhjl', 1, '2017-11-28 01:44:19', '2017-11-28 01:44:19'),
(12, 138, 1, 'daniel', 'tesr', 1, '2017-11-29 00:57:50', '2017-11-29 00:57:50'),
(13, 138, 1, 'daniel', 'ttt', 1, '2017-11-29 00:58:16', '2017-11-29 00:58:16'),
(14, 147, 1, 'daniel', '123', 1, '2017-11-29 01:01:31', '2017-11-29 01:01:31'),
(15, 147, 1, 'daniel', '111', 1, '2017-11-29 01:01:51', '2017-11-29 01:01:51'),
(16, 147, 1, 'daniel', '123', 1, '2017-11-29 01:05:39', '2017-11-29 01:05:39'),
(17, 147, 1, 'daniel', '123', 1, '2017-11-29 01:05:57', '2017-11-29 01:05:57'),
(18, 147, 1, 'daniel', '233', 1, '2017-11-29 01:44:19', '2017-11-29 01:44:19'),
(19, 147, 1, 'daniel', '31112', 1, '2017-11-29 01:44:35', '2017-11-29 01:44:35'),
(20, 147, 1, 'daniel', '564165', 1, '2017-11-29 01:44:48', '2017-11-29 01:44:48'),
(21, 147, 1, 'daniel', '2561', 1, '2017-11-29 01:45:03', '2017-11-29 01:45:03'),
(22, 147, 1, 'daniel', '12324', 1, '2017-11-29 01:45:23', '2017-11-29 01:45:23'),
(23, 147, 1, 'daniel', '1212', 1, '2017-11-29 01:45:52', '2017-11-29 01:45:52'),
(24, 146, 1, 'daniel', '132132', 1, '2017-11-29 01:47:18', '2017-11-29 01:47:18'),
(25, 146, 1, 'daniel', '123', 1, '2017-11-29 02:23:54', '2017-11-29 02:23:54'),
(26, 148, 1, 'daniel', '124', 1, '2017-11-29 02:24:17', '2017-11-29 02:24:17'),
(27, 148, 1, 'daniel', '123', 1, '2017-11-29 02:24:29', '2017-11-29 02:24:29'),
(28, 148, 1, 'daniel', '12233', 1, '2017-11-29 02:24:45', '2017-11-29 02:24:45'),
(29, 148, 1, 'daniel', '223', 1, '2017-11-29 02:25:10', '2017-11-29 02:25:10'),
(30, 148, 1, 'daniel', '132132', 1, '2017-11-29 02:25:22', '2017-11-29 02:25:22'),
(31, 148, 1, 'daniel', '123', 1, '2017-11-29 02:25:41', '2017-11-29 02:25:41'),
(32, 148, 1, 'daniel', '123', 1, '2017-11-29 02:25:52', '2017-11-29 02:25:52'),
(33, 148, 1, 'daniel', '231', 1, '2017-11-29 02:26:05', '2017-11-29 02:26:05'),
(34, 148, 1, 'daniel', '123', 1, '2017-11-29 02:26:16', '2017-11-29 02:26:16'),
(35, 148, 1, 'daniel', '213', 1, '2017-11-29 02:27:12', '2017-11-29 02:27:12'),
(36, 155, 30, 'Syed', 'This I am reporting as spam', 1, '2017-12-01 04:44:16', '2017-12-01 04:44:16'),
(37, 159, 30, 'Syed', 'test spam', 1, '2017-12-30 00:13:10', '2017-12-30 00:13:10'),
(38, 105, 1, 'daniel', 'Test', 1, '2018-01-02 08:13:06', '2018-01-02 08:13:06'),
(39, 170, 30, 'Syed', 'spam', 1, '2018-01-05 00:20:22', '2018-01-05 00:20:22'),
(40, 179, 30, 'Syed', 'this is spam', 1, '2018-01-06 23:57:38', '2018-01-06 23:57:38'),
(41, 179, 30, 'Syed', 'this is spam', 1, '2018-01-06 23:57:43', '2018-01-06 23:57:43'),
(42, 179, 30, 'Syed', 'this is spam', 1, '2018-01-06 23:57:56', '2018-01-06 23:57:56'),
(43, 179, 30, 'Syed', 'this is spam', 1, '2018-01-06 23:57:58', '2018-01-06 23:57:58'),
(44, 177, 30, 'Syed', 'spam', 1, '2018-01-06 23:58:07', '2018-01-06 23:58:07'),
(45, 179, 30, 'Syed', 'again spam', 1, '2018-01-06 23:58:51', '2018-01-06 23:58:51'),
(46, 179, 30, 'Syed', 'again spam', 1, '2018-01-06 23:58:59', '2018-01-06 23:58:59'),
(47, 180, 30, 'Syed', 'ghghghghg', 1, '2018-01-06 23:59:15', '2018-01-06 23:59:15'),
(48, 176, 30, 'Syed', 'Hello everyone this is getting reported as spam', 1, '2018-01-06 23:59:49', '2018-01-06 23:59:49'),
(49, 177, 12, 'Bala', 'trer', 1, '2018-01-08 01:28:12', '2018-01-08 01:28:12'),
(50, 193, 30, 'Syed', 'This post is spam', 1, '2018-01-08 08:13:39', '2018-01-08 08:13:39'),
(51, 193, 30, 'Syed', 'again reporting as spam', 1, '2018-01-09 00:29:51', '2018-01-09 00:29:51'),
(52, 193, 30, 'Syed', '3rd spam', 1, '2018-01-09 00:30:44', '2018-01-09 00:30:44'),
(53, 193, 30, 'Syed', '4th', 1, '2018-01-09 00:31:31', '2018-01-09 00:31:31'),
(54, 193, 30, 'Syed', '5th', 1, '2018-01-09 00:31:44', '2018-01-09 00:31:44'),
(55, 193, 30, 'Syed', 'new spam', 1, '2018-01-09 00:32:12', '2018-01-09 00:32:12'),
(56, 193, 30, 'Syed', 'me only reporting spam', 1, '2018-01-09 00:32:43', '2018-01-09 00:32:43'),
(57, 193, 30, 'Syed', 'jff jkjh hjkh kjh kh khiuh876t67 564', 1, '2018-01-09 00:33:05', '2018-01-09 00:33:05'),
(58, 193, 30, 'Syed', 'two  morev to go', 1, '2018-01-09 00:33:29', '2018-01-09 00:33:29'),
(59, 193, 30, 'Syed', 'last spam of 10', 1, '2018-01-09 00:33:51', '2018-01-09 00:33:51');

-- --------------------------------------------------------

--
-- Table structure for table `oc_simple_blog_view`
--

CREATE TABLE IF NOT EXISTS `oc_simple_blog_view` (
  `simple_blog_view_id` int(16) NOT NULL AUTO_INCREMENT,
  `simple_blog_article_id` int(16) NOT NULL,
  `view` int(16) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`simple_blog_view_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_social_group`
--

CREATE TABLE IF NOT EXISTS `oc_social_group` (
  `social_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `created_by` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`social_group_id`,`created_by`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `oc_social_group`
--

INSERT INTO `oc_social_group` (`social_group_id`, `name`, `description`, `created_by`, `status`) VALUES
(13, 'test', 'test', 99, 0),
(8, 'ixlyTEST', '', 99, 0),
(9, 'Quarry Group', 'All quarry owners can join this group', 99, 1),
(7, 'ixly', '', 99, 0),
(10, 'Factory/Processors group', 'All factory owners manufactures processors can join this group', 99, 1),
(11, 'Transporation/Logistics/CHAs', 'All Sea, Road, Air can join the group ', 99, 1),
(12, 'Ceramic/Vitrified', 'All dealers in Ceramic and Vitrified can join this group', 99, 1),
(14, 'Interior Designer', 'All Interior Designer Builder can be part of this group', 99, 1),
(15, 'test group for deleting', 'This is group is created to check whether group will get deleted or not from backend.', 99, 0),
(16, 'test', '', 99, 0),
(17, 'Brokers Groups', 'All Brokers who help in arranging Machines, Tools for Rent or for sale and all those who help in quarry, factories and other for sale or lease ', 99, 1),
(18, 'Traders', 'All those who help in purchase or sale of rough blocks or slabs or other material for a commission. ', 99, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_social_group_users`
--

CREATE TABLE IF NOT EXISTS `oc_social_group_users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `social_group_user_id` int(11) NOT NULL,
  `social_group_id` int(11) NOT NULL,
  `group_status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=39 ;

--
-- Dumping data for table `oc_social_group_users`
--

INSERT INTO `oc_social_group_users` (`id`, `social_group_user_id`, `social_group_id`, `group_status`) VALUES
(22, 30, 12, 1),
(8, 1, 7, 0),
(23, 30, 15, 1),
(6, 12, 7, 1),
(17, 1, 8, 0),
(11, 12, 8, 0),
(12, 30, 8, 1),
(18, 30, 9, 1),
(20, 30, 11, 1),
(19, 30, 10, 1),
(24, 4, 9, 1),
(25, 32, 9, 1),
(26, 40, 9, 1),
(27, 40, 10, 1),
(28, 40, 11, 1),
(37, 46, 9, 1),
(36, 12, 9, 1),
(31, 41, 9, 1),
(32, 6, 14, 1),
(33, 1, 12, 1),
(34, 1, 10, 0),
(35, 43, 9, 1),
(38, 1, 9, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_stock_status`
--

CREATE TABLE IF NOT EXISTS `oc_stock_status` (
  `stock_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`stock_status_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `oc_stock_status`
--

INSERT INTO `oc_stock_status` (`stock_status_id`, `language_id`, `name`) VALUES
(7, 1, 'In Stock'),
(8, 1, 'Pre-Order'),
(5, 1, 'Out Of Stock'),
(6, 1, '2-3 Days');

-- --------------------------------------------------------

--
-- Table structure for table `oc_store`
--

CREATE TABLE IF NOT EXISTS `oc_store` (
  `store_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_class`
--

CREATE TABLE IF NOT EXISTS `oc_tax_class` (
  `tax_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`tax_class_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `oc_tax_class`
--

INSERT INTO `oc_tax_class` (`tax_class_id`, `title`, `description`, `date_added`, `date_modified`) VALUES
(9, 'Taxable Goods', 'Taxed goods', '2009-01-06 23:21:53', '2011-09-23 14:07:50'),
(10, 'Downloadable Products', 'Downloadable', '2011-09-21 22:19:39', '2011-09-22 10:27:36');

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rate`
--

CREATE TABLE IF NOT EXISTS `oc_tax_rate` (
  `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT,
  `geo_zone_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`tax_rate_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=88 ;

--
-- Dumping data for table `oc_tax_rate`
--

INSERT INTO `oc_tax_rate` (`tax_rate_id`, `geo_zone_id`, `name`, `rate`, `type`, `date_added`, `date_modified`) VALUES
(86, 3, 'VAT (20%)', '20.0000', 'P', '2011-03-09 21:17:10', '2011-09-22 22:24:29'),
(87, 3, 'Eco Tax (-2.00)', '2.0000', 'F', '2011-09-21 21:49:23', '2011-09-23 00:40:19');

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rate_to_customer_group`
--

CREATE TABLE IF NOT EXISTS `oc_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`tax_rate_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_rate_to_customer_group`
--

INSERT INTO `oc_tax_rate_to_customer_group` (`tax_rate_id`, `customer_group_id`) VALUES
(86, 1),
(87, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rule`
--

CREATE TABLE IF NOT EXISTS `oc_tax_rule` (
  `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  PRIMARY KEY (`tax_rule_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=129 ;

--
-- Dumping data for table `oc_tax_rule`
--

INSERT INTO `oc_tax_rule` (`tax_rule_id`, `tax_class_id`, `tax_rate_id`, `based`, `priority`) VALUES
(121, 10, 86, 'payment', 1),
(120, 10, 87, 'store', 0),
(128, 9, 86, 'shipping', 1),
(127, 9, 87, 'shipping', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oc_upload`
--

CREATE TABLE IF NOT EXISTS `oc_upload` (
  `upload_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`upload_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=166 ;

--
-- Dumping data for table `oc_upload`
--

INSERT INTO `oc_upload` (`upload_id`, `name`, `filename`, `code`, `date_added`) VALUES
(1, '1-1.jpeg', '1-1.jpeg.g5bvxCjhMfu22g4bx7S11z4msDu2VYc0', '2b6c5c45f902dcba94b1d3df08097619ea1f422b', '2017-10-31 01:57:16'),
(2, '3-1.jpeg', '3-1.jpeg.KcYNTwsRvb2vXBeltK4Che1zOvK4F4PZ', '69ec58023eaa4398b794e0d02926a9e66dbffc6e', '2017-10-31 01:57:30'),
(3, '4.jpeg', '4.jpeg.DYsiiOL0podK6qP4S1WZULFhmnotNbgy', '3f70509196957fafea6a2a285bb7ba7a1cee26fc', '2017-10-31 01:57:32'),
(4, '4.jpeg', '4.jpeg.pgrFgFsjxDBTlJdGivwTD8WXrn6IELME', '44516cf2fb10e84a7d71e6db29274f63de37432d', '2017-10-31 01:57:38'),
(5, 'Chrysanthemum.jpg', 'Chrysanthemum.jpg.5L20m9C4WizoKH2OQExBcNffWr8gKWbl', 'df13f6a34bcdc5fe5b9d046e7081756dd6a2bc48', '2017-11-01 23:23:58'),
(6, 'Chrysanthemum.jpg', 'Chrysanthemum.jpg.lc21EdR7j1tUliJBqZ2tFHqMVQlc66zL', '8f99ae0535132fd08fe1baf543b29020246e4b70', '2017-11-01 23:26:21'),
(7, 'noimage-100x100.png', 'noimage-100x100.png.6slzDUHZP5N37kCPd4U51CP5bsAvBFkq', 'd441dd31c3db4ebba543bea42c121490d397913d', '2017-11-08 05:48:19'),
(8, 'noimage-100x100.png', 'noimage-100x100.png.ZRfwgCckTbkA006er6IsEybby7ep6efM', 'c5cea2ddadbd9899219c461d099be31ffc74a9a4', '2017-11-08 05:48:31'),
(9, 'noimage-100x100.png', 'noimage-100x100.png.MYQ5q04BkZuv4VI5yWbDZBqJj4C25pru', 'e62e62a1696780f471c40296347d63ed1493c03e', '2017-11-08 05:48:37'),
(10, 'noimage-100x100.png', 'noimage-100x100.png.uFo9qSnyEQloNA38cQwyi0j3gM6r3mea', '0dc7389ee315eb9bdc0a02b12ca237ae86875234', '2017-11-08 05:48:44'),
(11, 'logo.pdf', 'logo.pdf.AOMUrNjmU0A0xAZG2c0OPUWubseV7C6I', '474426ee05080c31e6237125cca5a50658083614', '2017-11-11 06:22:47'),
(12, 'IMG-20170909-WA0043.jpg', 'IMG-20170909-WA0043.jpg.6k2kGxmo0siXiIloGgGRHaOYpyCOKZkP', '32f0deb4d9d660adb08f7431cea5d734890482f1', '2017-11-11 06:29:17'),
(13, 'IMG-20170909-WA0011.jpg', 'IMG-20170909-WA0011.jpg.Mrzy5sFaxxJ0AU8rTTeDlNuL2W9GgS90', 'ba69547feb071ac1f81b16a8ad45a5bf8f800432', '2017-11-11 06:30:31'),
(14, 'IMG-20170909-WA00091504942685746.jpg', 'IMG-20170909-WA00091504942685746.jpg.v0bwtMn1hR2VPhtXjht4dzX8swZ0zboZ', 'b09d643e508fdcdc8e048178d14ef6d64b0e1f86', '2017-11-11 06:30:36'),
(15, 'IMG-20170909-WA00091504942685746.jpg', 'IMG-20170909-WA00091504942685746.jpg.D17BiTt46oXkURvX1SX1tYbAGl26RFse', '95fdddcd5f4123c751b760c7d0b179d5d19afd51', '2017-11-11 06:34:36'),
(16, 'IMG-20170909-WA0011.jpg', 'IMG-20170909-WA0011.jpg.ANDDoXo6THzxxS52JbQLXWBHSW3JOlO7', 'ee00abad6c7ffe287257b87d9cbc9c89dad22e18', '2017-11-11 06:34:44'),
(17, 'IMG-20170909-WA0012.jpg', 'IMG-20170909-WA0012.jpg.O2H2AlyGNQEpL6tjo5Bfkei0Nyyot8ni', '3dea66c8ed487bf5f5c03484208aadc0cb0d4b9b', '2017-11-11 06:35:13'),
(18, 'IMG-20170909-WA0013.jpg', 'IMG-20170909-WA0013.jpg.0udrmG3x7wbOe7nbiEaOxUGg75lprkDh', 'd742168e9a2b4a72219e23101602402d6e756a46', '2017-11-11 06:35:19'),
(19, 'IMG-20170909-WA0027.jpg', 'IMG-20170909-WA0027.jpg.y1qFGHLwuUuKBn6KyOit1WglNpbQMBju', '5663e3b542f8c8ddfe91273ae2f2e6a2217c501d', '2017-11-11 06:35:25'),
(20, 'Capture001.png', 'Capture001.png.aAuIy9jTSncagr83GDden22n7MjNI2po', 'b9b0984c7ae89b3b352652698c880073e7292497', '2017-11-27 05:42:38'),
(21, 'Capture001.png', 'Capture001.png.iqiQqmRWdovVSt4JFuiJnYhYIf4DDBHJ', '24b0f431b3140608c58971618d3707b38701aca9', '2017-11-27 05:42:39'),
(22, 'Capture001.png', 'Capture001.png.brkidf38RiGndY79kU9k7EMiorcyz7pN', '479c66ffe5576f59e7492608249ab444925fb8a5', '2017-11-27 05:42:40'),
(23, 'Capture001.png', 'Capture001.png.VbMAcgW7AEnyOOPu8meOLVRtYNRd1fca', 'da08f6dd72a9b7fbb208a611fc9732e7df00262c', '2017-11-27 05:42:45'),
(24, 'Capture001.png', 'Capture001.png.FEL16vTZhZ0kinVJyr8vwSjLyHfAfZ68', '28293c48a5c9da382e90e98677f95938039ec18a', '2017-11-27 05:44:01'),
(25, 'Capture001.png', 'Capture001.png.cidJU1UPWunJ7Kbt5LqDI1fScXoxMJRY', 'aed3d841bca84fd1ce0b0a6409654c31cbdfd6ca', '2017-11-27 05:44:02'),
(26, 'Capture001.png', 'Capture001.png.jxAVXvVYhUxFatyOwPaXnw1xuyoB9I6t', '80d4b2401698df54e4f6a019287c68fa2552af85', '2017-11-27 05:44:05'),
(27, 'Capture001.png', 'Capture001.png.98XdqSUbTXtin8zdPdjSMMlM1mIOJGjx', 'df6cb5f57a50f0d28566eb6c878a9acd480a5907', '2017-11-27 05:44:06'),
(28, 'New Text Document.txt', 'New Text Document.txt.pzHarQPKP7vqAmBzB0d9DTeQMbBy07uT', '1cd8fb042efc6811069c5f819e62dc906cd96453', '2017-11-27 23:41:00'),
(29, 'New Text Document.txt', 'New Text Document.txt.MQfFGfuxTLbtAFy3VKbmYCZiXgHTzaD0', 'e58fc6b09ac8c6a20c583ce099a522baf7a566bb', '2017-11-27 23:41:24'),
(30, 'New Text Document.txt', 'New Text Document.txt.YMiK5UjdCNAFTdUQramIAXY3M2pmXSyd', 'a3d21769f4e518d6db8bdbd045f3d181c8ddd3f9', '2017-11-27 23:41:37'),
(31, '1.jpg', '1.jpg.sEcoKPOjB3CtreDsYMUrP6xGtvBhfdfI', '2c23b0877fd4ef6e4f3436eeb72e65b1becf0d06', '2017-11-28 00:15:04'),
(32, '1.jpg', '1.jpg.szNBtSm5xDcnUiFupwABzALwpLGgOxZ1', '1bdfb14c75b2df1012225884bdda864f734d1e74', '2017-11-28 00:15:28'),
(33, '1.jpg', '1.jpg.U3cu426QdcZydRAIEAoCnFAAOWmEzkp8', '6bcc84e2d7d4049fc966ad163985aa389d7d2760', '2017-11-28 00:15:38'),
(34, '1.jpg', '1.jpg.EaXnpc3qvVvBfBhUTG9Ke1H4ySx79dKx', '582503a39d99d078456e366de50717a37a4b7309', '2017-11-28 00:15:44'),
(35, '1.jpg', '1.jpg.IId2MQkSQ79ITZ07DHD4Movl4DBzFwoj', '0f048f93bcfce6d63dea72699ddd2828eee7ca6c', '2017-11-28 00:15:54'),
(36, '1.jpg', '1.jpg.39nPpO3b6x9xz16HizODxoY85Z0WdcEJ', 'c5dbfeff8e64689cd5db03ab9df42885f19e5be7', '2017-11-28 00:17:40'),
(37, '1.jpg', '1.jpg.jSraA3mujrYNOc7IYUWWyWPyXY5DqxiU', '7f7795ad96e83c9df9ffd6b515659959815f89e1', '2017-11-28 00:17:48'),
(38, '1.jpg', '1.jpg.RP2lSVNddhTFCmS90LxxfPMLDNBhXibE', '9d557780ce106f369650cbb25797ad7053bf34aa', '2017-11-28 00:17:48'),
(39, '1.jpg', '1.jpg.MYcc22MB1l5D97ga1o78Fb61jpm0rNn2', '2961033fe6ce08bdca9682580c64a32d6e0dea86', '2017-11-28 00:17:56'),
(40, 'unnamed.png', 'unnamed.png.avR3NckmNSodkyZooS48SSRTvxrRPIvg', '226c84accb92e06493e3c34d7c3b9e49f0a5859f', '2017-12-01 01:25:07'),
(41, 'unnamed.png', 'unnamed.png.haNt34zv8UHGXv5yZcdAcFIqL6iNLYVJ', 'f9837c879821b81c84292a3de8fc18225d3e403e', '2017-12-01 01:25:14'),
(42, 'unnamed 7.jpg', 'unnamed 7.jpg.J2DMvNKIAJYF5LGgoCGYQbraym2PCCFz', '35f3509cec7b82dd038e4da88ba3ff4765cbaac5', '2017-12-01 01:25:16'),
(43, 'license.txt', 'license.txt.b5kQcd3Y1d2ei0wYf1jt2w9D8sdhrOVc', 'f5d8ce1ae1b70ea84d1eef3ce36860b20c6c8e10', '2017-12-01 05:57:03'),
(44, 'Capture001.png', 'Capture001.png.3vfhsx34lLl6B1PulX4SU1AGV4sIKCD2', '0e0a40b754b5c9fbb6e62b3ef2d8c9672956fc5f', '2017-12-01 05:57:35'),
(45, 'Capture001.png', 'Capture001.png.2451RWRTObxX8klXsnK0tOt4m8ge0rr7', 'dd0fac4e60d0b7befbdf519c4b2978c4de0b3304', '2017-12-01 05:57:39'),
(46, 'Capture001.png', 'Capture001.png.KFzF35wl5UTgJSScIcT7dSil8ZiibrAD', 'a4d24a1401b0a4eb915e50154a663ee21ef28af4', '2017-12-01 05:57:39'),
(47, 'Capture001.png', 'Capture001.png.lGo66tkzf8qdPZ8EzY1HxPXZpPbWgwdH', 'c7515f65c6d26f876a6be0ffaa429c320419f4f7', '2017-12-01 05:57:43'),
(48, 'Capture001.png', 'Capture001.png.XMOLrwTN0a87vLfao2kmJZKVZk98sRUR', '805dcefa054fc6e1c59d1e9e7d5b81af2c93fa00', '2017-12-01 05:57:56'),
(49, 'Capture001.png', 'Capture001.png.VpgVrxyTc9rEaRaJCUNyxhdohA4Q4ix9', 'f28aac382094855752914eb28271c75f55e9f35b', '2017-12-01 06:37:16'),
(50, 'Capture001.png', 'Capture001.png.jvFbZAN84IxBoWRwqEVecAV18F7rz5S5', '3a792b729fb6c221326c8cabc2fad7cf6f0f7a73', '2017-12-01 23:57:03'),
(51, 'Capture001.png', 'Capture001.png.GCqyTvwSQ6v2Tc45VXu6lDEnwlczXjCA', '0a9932190ea881b8596feeae996447d9b588485e', '2017-12-01 23:59:31'),
(52, '1.jpg', '1.jpg.UXXCfIIDNc1WAgc5URXxd0TxqlkukKeV', '9fe97e17be9ccde59285e1782a90ddbdc1eb7dfd', '2017-12-18 01:32:58'),
(53, 'images500.jpg', 'images500.jpg.j09pMFAvccQu4LgcuVbg6txvRWCVkTuv', '29de0f0dc106e38ce48df90da6cc2f7bca0a200d', '2017-12-18 01:33:27'),
(54, 'images500.jpg', 'images500.jpg.KGuihZYGgeSVEDh7V4NmyqmtjVuLxh9x', '13ddb14604f33e0c84eeb2d88f1d97884a03b77a', '2017-12-18 01:33:38'),
(55, 'images500.jpg', 'images500.jpg.rVNyhClgqUaczUoIBkbEcX4xjUZjFwsj', '4b3d478eb51dd3f2b9512b5e15b0dd6969eaef0e', '2017-12-18 01:33:47'),
(56, 'images500.jpg', 'images500.jpg.JTvRXbmxVf9sRkqXlDbkBwQg4LrmBJAY', 'd8f379d99e9178f6dee810cfee3846d2f7bc336f', '2017-12-18 01:34:48'),
(57, '1.jpg', '1.jpg.frTSgNBfapz3LrRcpakhgPLcG77SPejC', '19c604d52b0eaa0dd6a62f54b9e6330c86d143d4', '2017-12-18 01:34:54'),
(58, '1.jpg', '1.jpg.AqAPTWe1y6CSu9a3X1inHKtrqu5Va9Pf', '452ad6649be5a453d899e15146755e1e8ff41684', '2017-12-18 01:35:03'),
(59, '1.jpg', '1.jpg.DvAtpjVOCi2ybNN37C63ffDYmjJV5Nx8', '29ba60d0d069d49c0118798bf39566271a8468db', '2017-12-18 01:35:16'),
(60, '1.jpg', '1.jpg.DI3Sf6GrYmUpg6Yw4zYTBPYNk0b7MKlU', 'eca8923083b47cb6acbd4c6c605a108b664af608', '2017-12-19 00:05:54'),
(61, 'download.jpg', 'download.jpg.IKaJU78E5DW2IsSBmvpIV3sowz546KPm', 'b0b39fad5bb40f6f0ab66a3163064ecb0e0f136e', '2017-12-19 00:06:07'),
(62, 'download.jpg', 'download.jpg.00wGocfkLP4AHXLXTwOYTk6ZysUIFNYA', '4ed8eea5193ede38e6548566bd367d70d834f7c4', '2017-12-19 00:06:16'),
(63, '1.jpg', '1.jpg.ab5OIaOHQFzw4JEJqmEa17xmPLKxoZXl', '2135ec7c9b14c01daa2cbbaa7f54f8bb8b232d5c', '2017-12-19 00:06:24'),
(64, 'pdf-sample.pdf', 'pdf-sample.pdf.4L7VwFrMeSQtiGkgjg4IT5A29I75SR5d', '83fadd34bfffd258aee3e58fa67639027ea2dac5', '2017-12-28 08:19:58'),
(65, 'maxresdefault.jpg', 'maxresdefault.jpg.DtAwlSFwEuxEkZwbNKxiSVb9ALYU88ay', '97d6808f307234756b9691ad62b3137049624021', '2017-12-29 07:17:55'),
(66, '2588338585923844870524344836111704904728n400x400.jpg', '2588338585923844870524344836111704904728n400x400.jpg.SfJkwhdgwqBU7EYrQjin6VxyM0bCj7vJ', '9eda3b16d7915ccadb4d512967d0df3187e081de', '2017-12-29 21:14:45'),
(67, '3331516.pdf', '3331516.pdf.2AyEoWO1BBUuoxqczw05rQrF3n1QEL4J', 'ada9cc4268d9155d940b04ebf4933c3be23e9aab', '2017-12-29 23:49:03'),
(68, 'home-office-3363771920.jpg', 'home-office-3363771920.jpg.kWk4QBDekro50c5BBa4ZURCEREj4CQdK', '40f358c02cc5d93110a7d06e217432982ec6d8ee', '2017-12-30 07:16:48'),
(69, 'lewis-ngugi-186309.jpg', 'lewis-ngugi-186309.jpg.f4sWNROp5dA1yLE89CuRThVIHUU2Dq8u', 'a5c05116f28931bcd8e8aa2a5f3166e7a29150fa', '2017-12-30 07:20:47'),
(70, '20161104152604.jpg', '20161104152604.jpg.sDTzNlbFM0HujA10IzXwiAaDJHQMz36x', '155ddd874db0abd4f8d8fc5564ed80fcf2d364b3', '2018-01-01 00:32:11'),
(71, 'IMG0047A.jpg', 'IMG0047A.jpg.QwwvVmnXFXWF3feeUh7vYm26mHowiDvH', 'b526c2170e32651566e36c41dc222e436d2b7f03', '2018-01-01 00:33:22'),
(72, '20161104152604.jpg', '20161104152604.jpg.I1P284DPW6VhA9npRkpuerbdXbmcGvVO', 'c5179d8029f9354ee0ae11d86ad50c33a41c6527', '2018-01-01 00:36:28'),
(73, '20161104152604.jpg', '20161104152604.jpg.L0Ymq0o7FTwiN9HThjZAVVeOSMIQEezm', '868b1b4500d7df5b9b40f1e4f8fcaaf399798529', '2018-01-01 00:40:39'),
(74, '20161104152604.jpg', '20161104152604.jpg.f64AxIaDk6Xyi7XdU05mQcea0O1HjD9i', 'b04a9a3754e6d06dee688c0affb2d7ac4253b4cb', '2018-01-01 06:29:09'),
(75, 'IMG0047A.jpg', 'IMG0047A.jpg.6qjlyDFxs456XyBkMXEPvWKLv6zgdRzv', '839126d740c395c3ef8730b53f8b5554e77022c5', '2018-01-01 06:38:15'),
(76, '1.jpg', '1.jpg.JtFyDRVrDmBw0hpjl4qxXTtrvHpG8g0q', 'b1667edb76f0aac428da0b7324935ac6000c362c', '2018-01-01 06:42:44'),
(77, '06d569eb-c64a-424e-8999-6792914bdc76.jpg', '06d569eb-c64a-424e-8999-6792914bdc76.jpg.hTNHpiv0J7mdUjP47vGe7CVhYzPhNfyh', '51d92235c180489a7c21651ea7cf6f7cbad02535', '2018-01-01 23:31:49'),
(78, 'images500.jpg', 'images500.jpg.CO3nVfbfO1d2oZyWbgHs5LHtt7LH139b', 'b98abc683f74b49f73bfa90267bb32a25d1e5362', '2018-01-02 04:34:07'),
(79, 'download - Copy.jpg', 'download - Copy.jpg.RRfnS4skJ7xZiDSLVD67VIG5Rp3QfMpw', 'c55fb6f97cc3c2f4c1c4a934e82cb9aa50f05450', '2018-01-02 05:41:56'),
(80, '1.jpg', '1.jpg.CVVT12zWMSIfUIvNaE7icnELAOU8uju8', '683c051a2a559175d362a3216a88c61295a62c85', '2018-01-02 06:16:11'),
(81, 'banner-art-fair-2017.jpg', 'banner-art-fair-2017.jpg.09cflpeKzyq9wQrcM03Ons2MQbUWkETQ', '0dfe5e11e9d891c2fd972f1b34ac833750a3cbf0', '2018-01-02 08:23:04'),
(82, 'banner-art-fair-2017.jpg', 'banner-art-fair-2017.jpg.gRzh8hgm9x4wtHOq4sWmB8GdFHIf0C31', '29d4e3b23f16287ea58ea1be2fa695d3c2a2d140', '2018-01-02 08:23:34'),
(83, '1.jpg', '1.jpg.6GbgNgDu2kK5HP5NOuZe1CD26WzyuYqv', '23c8cf0d3a78b72eaf4e10ef8059d2605c5f623f', '2018-01-02 08:23:56'),
(84, 'images500.jpg', 'images500.jpg.bM0Ci3vHxnRCkQRshhVxmKxiWcM7vNpb', '85319f07c7f5ba3e75d8cac997ecd9477d24d135', '2018-01-02 08:24:04'),
(85, '5.jpg', '5.jpg.JwXKv2eLhpzA6T5kERvkiItXbRPRRhhP', '6eb46baa7eeff6c6f0a85440861ca0e7907bfe13', '2018-01-02 10:51:33'),
(86, '4.jpg', '4.jpg.3MPyRsBeZlrHaWJb73J1nYKoILX6x5xK', 'd78bc98b35973d10d153f7926b59a1d7b9f2cb28', '2018-01-02 10:52:43'),
(87, 'shopping-cart-md 1.png', 'shopping-cart-md 1.png.YzsiGha5T1MNTbdWwaQwiwgnYeJyQPHM', 'd819ff2abd1e21d812e936b26eaa22108a161987', '2018-01-02 10:56:13'),
(88, 'shopping-cart-md 1.png', 'shopping-cart-md 1.png.EUMo13LhcorEKa0IgVKycpETXwszDpfB', 'e1be2de5cb36433a71b5c222241c119d5fc9e5de', '2018-01-02 11:07:35'),
(89, 'New logo small size Mystone.jpg', 'New logo small size Mystone.jpg.zJpCsvgVk00y07xhfD7LvmRjSapyTskL', 'e5849152e6e36efa412e7ed9a90939577b80bcb3', '2018-01-02 11:07:59'),
(90, '2 monu.jpg', '2 monu.jpg.IL8kNwDr57kmJfp5YJKMu7xB4i3P9c9t', '4e6725e793a08a538937b800723f950089d2d430', '2018-01-02 11:09:05'),
(91, '3 monu.jpg', '3 monu.jpg.fnje9OEwlaEZiUwdTUJIhQfybAAGZ80M', '112b9bb37adcc70a0c900f0eaa7392718a78f0ea', '2018-01-02 11:11:50'),
(92, '3d ceramic 2.jpg', '3d ceramic 2.jpg.B2qrbV0rwvdGWQH9upyCz6SHR2PVvEd0', '934fd3e65bea97db4075903390842d69f4f830aa', '2018-01-02 11:15:38'),
(93, '51fRtuJti3L.png', '51fRtuJti3L.png.h1RyVGmRekC1KZQDj0hTrOlBBeDRZx0I', 'b4294ea58b34cd435ee5c6493b19d81cedba057f', '2018-01-02 11:17:11'),
(94, 'brock-script.regular.png', 'brock-script.regular.png.vSYl1qP6IIzQvLWCvhYfpHmJmL6kAmJU', 'd6ac7fe01e0a7c221e5c53aab977806e432866a1', '2018-01-02 11:19:54'),
(95, '555.jpg', '555.jpg.4Gfjg4TXRFoeMo1CCfym3RHr5HYZ1cD5', '66c750dfb786235f360389f46c2904f4a5f193b9', '2018-01-02 11:21:55'),
(96, 'Bungee-my.png', 'Bungee-my.png.Qh9Tv0uvPuZ5xqnnY2R8EDdwZFtJxtRu', 'fd0a1edc6d5277a54dc91684f6e9b5b857a16db2', '2018-01-02 11:23:49'),
(97, 'stone-text-effect-psd.jpg', 'stone-text-effect-psd.jpg.c2rzQk9Rb8YROekBjMI6ciLncPRuQKVF', 'c4fd3b8d64379a396499e5da00d81aa5250b4461', '2018-01-02 11:25:55'),
(98, '3D-tiles16051606-800x600.jpg', '3D-tiles16051606-800x600.jpg.FubYCH97ghzI7vgtZRyBhq6uQfqQmKQn', '6b5374e843abe06070ab5d80a4e7d75c912786b3', '2018-01-03 09:00:28'),
(99, '85.jpg', '85.jpg.143v3zxMEVaQVnzUFrNKTC1NmOXRLr4j', '3836f2044c5e8ff6a5af4ba791f66db8f8e41c07', '2018-01-03 09:01:05'),
(100, '965.jpg', '965.jpg.IZzmx88BVVGxIB0ILpm8n42vfn7S1hn7', 'ae29133066e14808094afbcb09c44c37484ebd9d', '2018-01-03 09:01:09'),
(101, 'nano tiles tech.jpg', 'nano tiles tech.jpg.M1yFg913S039EWdA1eP5uLg7cqIWzGf1', 'f7ac235a3cb27c163d20de7bb4986b765c02d550', '2018-01-03 09:01:16'),
(102, '3D-tiles16051606-800x600.jpg', '3D-tiles16051606-800x600.jpg.Y4Pu1bS4p8LPtLjJ4eCFdBfd5T1nKu1y', 'f25994778d178996efe72bf06a214f2fb7d41cf1', '2018-01-03 09:01:56'),
(103, '85.jpg', '85.jpg.VAoGbSskcuUGqkt89bA8nbGCU1eKbMoy', '51aa2bb27d4f872f48c0f50c645d0f28303ec8a2', '2018-01-03 09:02:03'),
(104, '123.jpg', '123.jpg.8Y93QxMlNGC3OLauEHUKHUw9tmfpxsdP', '64decaa265401982d885fc33474491aed32efda0', '2018-01-03 09:02:05'),
(105, '3d-tiles10.jpg', '3d-tiles10.jpg.PYufnJVpmVWfFIpLhn5eLMS6ylSyRiNG', '65ff5e61109d0e0dfc9c37ca8adfd2b428f224d3', '2018-01-03 09:02:06'),
(106, '3D-tiles16051606-800x600.jpg', '3D-tiles16051606-800x600.jpg.cpddbicGohkldXdmpFjfg4WSIhY8QcQq', '010361bc196a59dbc9fb06097d2e5f1aeee5175a', '2018-01-03 09:02:51'),
(107, '85.jpg', '85.jpg.hMGvuRlM5WJ3waehMugZCJ9syG5UFV3A', '72be5155d0bee5e002a7f9900d8f7e1d2b44d7d9', '2018-01-03 09:02:59'),
(108, '123.jpg', '123.jpg.Q6QWrVwI8Ce278RJFJnEqigk8VDJvW2J', 'a10ebc3a378d9a9b0f59e8633d0419d23abc82e1', '2018-01-03 09:03:01'),
(109, '3d-tiles10.jpg', '3d-tiles10.jpg.BccsTrRofPkGToYkdBZjjQzfxrSVa1ce', '405de0d85acdf54191d4f41d98a6a75e91368fe8', '2018-01-03 09:03:01'),
(110, '3D-tiles16051606-800x600.jpg', '3D-tiles16051606-800x600.jpg.RFtIiOeT1hwmCg1yVqfDMwVwnu7GhB6o', '6c3110c7bb6af18df1288dfb1f2eab7d29edbb33', '2018-01-03 09:05:32'),
(111, '85.jpg', '85.jpg.9P4S2NgOoBsggsygukoCrYHid0jfV51R', '907872ac5639ded7e2c4323180c5cceeca4b7d94', '2018-01-03 09:05:33'),
(112, '123.jpg', '123.jpg.KR3jD5qelSVYVEY1nvQlgYc4AVfZN0a1', '1ad5626c190930e958b9988e9503875f3e075845', '2018-01-03 09:05:37'),
(113, '3d-tiles10.jpg', '3d-tiles10.jpg.zjvMxQYVwfDMAI3EahZXMVsEQuDUy5eD', 'bfbd7480f5dd662d61c3d0eadf23fbfeb2eff0fb', '2018-01-03 09:05:55'),
(114, '3D-tiles16051606-800x600.jpg', '3D-tiles16051606-800x600.jpg.hVzN0qYCb3oBtlAdUkC5jU0EkqpfbX4X', 'f4002d1ec5c6f09cc4e9601ff1567f2e4424f770', '2018-01-03 09:06:50'),
(115, '85.jpg', '85.jpg.LYLiTF1nBgxlRzzGes4xh0Ey8m89iKj6', 'e2c3471e430223d479e82bf47b3a871c33ce8469', '2018-01-03 09:06:58'),
(116, '123.jpg', '123.jpg.MrHQOUSNLaCKcfcBpTAUYB826AlZVCVv', '3281d551fb0c65327eb5735e8b59005ff7f8cb4a', '2018-01-03 09:06:59'),
(117, '3d-tiles10.jpg', '3d-tiles10.jpg.QQ6qsVst9hyxtStq9gSHdLvmLHGjhA4Q', 'debf807830ddbe91f22ddbf88dc010be6b65cfd6', '2018-01-03 09:07:02'),
(118, '3D-tiles16051606-800x600.jpg', '3D-tiles16051606-800x600.jpg.BNZoQRy5INYY7IXt7AbWSBcBGHHsgITg', 'e17a5bb981d220aaf959cc0dbb4bfb2cd3862f19', '2018-01-03 09:17:24'),
(119, '85.jpg', '85.jpg.dDEJjgJ223aMFprNmUCUnQiuG3FKbGii', '5bbb818c2f189b9ae53619002a62cef0efdc553d', '2018-01-03 09:17:28'),
(120, '3d-tiles10.jpg', '3d-tiles10.jpg.o2lUjsQ1rZJZgen3g0Kj1AU17e0QrPLz', '28b608593de12e5c096d1522cff0ddc69f124d55', '2018-01-03 09:17:36'),
(121, '50925-5975463.jpg', '50925-5975463.jpg.YAgROcTRP1PvmHbOte7G2YumY8o5Jt5q', '272eb2b2f7df8253de51e996855c743eae4e5d6a', '2018-01-03 09:17:43'),
(122, '3331524.pdf', '3331524.pdf.WZAG62gDnCmalXuUiNXi2tVk6Hf0a8NN', '34982b53a8a1ff1e4fa2d07c8f6b2f21723b9834', '2018-01-04 06:46:12'),
(123, '3331524.pdf', '3331524.pdf.NpjQYoCP8xYXsrH6N3dRxZBVaI3vHOGM', '4370186e5a754b0ab0d6383d750a766aa895acc9', '2018-01-04 06:46:38'),
(124, '3331000plt.pdf', '3331000plt.pdf.1pJoo9UApIIlt9DQtviLYoR4UWIUFPyJ', '90b26483b863ac8dd2717e9100df27b7263a4276', '2018-01-04 06:46:43'),
(125, 'reballfullkit.pdf', 'reballfullkit.pdf.iU8bIBkaOmJ6iF8SagPAtMxctBPxZ5iJ', '1752ddf394b5010cac0079927020806bb4c2c5d7', '2018-01-04 06:46:48'),
(126, 'banner-art-fair-2017.jpg', 'banner-art-fair-2017.jpg.dnxQpzMqMQufH0BKrFqP9xmJ9XF7WDVu', '9213fd455fb0911927f7122fd0b1949eb029c9ca', '2018-01-04 06:50:49'),
(127, 'banner-art-fair-2017.jpg', 'banner-art-fair-2017.jpg.ZCQgKGVHYktG9DvRZzn0cURHoDffUYeM', 'e6004ccc2df1b776668bf4951b8a5612f0fa9cd7', '2018-01-04 06:51:03'),
(128, 'banner-art-fair-2017.jpg', 'banner-art-fair-2017.jpg.6EC2OMhMdq4V7w4zDcCvh7cULdKy8tUi', 'e5bba41776199e1b20fa8d16149615271b200fe1', '2018-01-04 06:51:17'),
(129, 'banner-art-fair-2017.jpg', 'banner-art-fair-2017.jpg.lszxj0XJUeU0xB4TpH3VMifThXt1141W', 'f6184d156d51376bea8d6972e6152f6261c4e8b6', '2018-01-04 06:51:27'),
(130, '3331524.pdf', '3331524.pdf.HB5DMojchEqDmpBbLMYQr3790X3WtP2n', 'e9e8b40388b0d34df8d4bbeeb250268daa627309', '2018-01-05 00:36:44'),
(131, '3331524.pdf', '3331524.pdf.7EKD2I6lZ2AFyZSWfnTTFvNEP1KNYSrT', 'c8e8363f45a86e699c4f209eb3b426922164d3f7', '2018-01-05 00:36:59'),
(132, '3331524.pdf', '3331524.pdf.RXLhUjENgZ4Q2YCsdYHgtSy4ROTtdCsM', '66d83af06a680e1cdc25886221d992aa4d61fb69', '2018-01-05 00:37:02'),
(133, '3331524.pdf', '3331524.pdf.68zxAr5LT0dUNdJudpGERQ5nV9uZb52K', '6540865f3c46e3ab38bdfaf9a51f14e73e25f503', '2018-01-05 00:37:09'),
(134, '3331524.pdf', '3331524.pdf.L8sUy7N9EF4bzwjipqz29eK19FMBx6gm', 'b3812d30a85945ccc000be4fbac3ac70c835a6d0', '2018-01-05 00:38:15'),
(135, '3331524.pdf', '3331524.pdf.NEl7lUbVRwtH0ETvhPaOOMNxhnWNk9Hh', '60e88123190f973b7626cc6893d0e1f11dbda8fb', '2018-01-05 00:38:29'),
(136, '3331524.pdf', '3331524.pdf.uVth3PLPsFQFCZuWug5Oc1FVHCnCfkOq', '641cee27b8a8941d98219031daf227e655dfb091', '2018-01-05 00:38:35'),
(137, '3331524.pdf', '3331524.pdf.nufVhVc7L4rOFLWFgkgCVSqUYXnQvPbG', '7f965e3b669e34f3e6a67a036f2e4828dd3f2a24', '2018-01-05 00:38:41'),
(138, 'Curve 2-500x500 - Copy - Copy.jpg', 'Curve 2-500x500 - Copy - Copy.jpg.juRiUXlpsoiQxhDkp39mlodIBcP7CXNw', '303a6b2d5f90754e32622bb4dca2c641a89842b1', '2018-01-05 06:41:23'),
(139, 'Curve 1-500x500 - Copy - Copy.jpg', 'Curve 1-500x500 - Copy - Copy.jpg.zz1LnANAn1Oxg7KQuTh4PBBmWM9A276Q', 'bd80e7be2be6149a308efd652964e46a91837440', '2018-01-05 06:41:35'),
(140, 'Curve 2-500x500 - Copy.jpg', 'Curve 2-500x500 - Copy.jpg.PqFmDTq3i6KqweeX4wz979dE37HAoaTJ', '30db010e1d604432ae14e1b85feedc66a87c693e', '2018-01-05 06:41:48'),
(141, 'Curve 2-500x500 - Copy.jpg', 'Curve 2-500x500 - Copy.jpg.HQkg4uSfrbSzUVYytSSDGeTFmmAteCOH', '2bd4853b4920706ef356f35bfa64f45a3d2cde51', '2018-01-05 06:42:02'),
(142, '3d-tiles10.jpg', '3d-tiles10.jpg.ABk5jiOBdQLPiWiWoKLaCUpFbHmzbn92', 'abedf9834c4fac891235645159d0c04d3297c71b', '2018-01-06 01:30:53'),
(143, '859.jpg', '859.jpg.3kx8yRnXoeGfOULpSv23ZogQNY7eqA6Q', '9da52ff3c29835350115ff470de853d2e71675e3', '2018-01-06 01:34:16'),
(144, '859.jpg', '859.jpg.zOkuKtP76gTKslABDtgUC4zG5vEGaEjg', '98a2c44485dc7b8623ae9ec65dc9df1c9d4078c1', '2018-01-06 01:34:36'),
(145, 'banner-art-fair-2017.jpg', 'banner-art-fair-2017.jpg.VP7pIgjHAmR8AtjoTnJSwdULHio1fG01', 'f5128e3bb5f67d8599229e9fba28a44130c9bdd6', '2018-01-06 01:50:37'),
(146, 'banner-art-fair-2017.jpg', 'banner-art-fair-2017.jpg.Frz7mars9AHh0UKrikWvut8ELsTDT9sw', 'bbc8dc8ba277e287e3e874ebbfef823028978f6f', '2018-01-06 01:51:57'),
(147, 'banner-art-fair-2017.jpg', 'banner-art-fair-2017.jpg.ARvxQsRZ7IJZ0ezlEGepLb40ypmEpbwV', '766bebdc41c7b731017bcb49aa2b93ac8b1a327b', '2018-01-06 01:52:24'),
(148, 'banner-art-fair-2017.jpg', 'banner-art-fair-2017.jpg.R8oYKTBODVqLtDFVJgn8BudsGTWbwB4i', '191948b96103c1923680efb71b1813a66dd2bce5', '2018-01-06 01:52:33'),
(149, '1.jpg', '1.jpg.TzTuikw4auU8K34eSd5WqWdQzsIiqHqb', 'e152fbb2700a48448ef84c9eb1534f8be0e3f09e', '2018-01-06 03:49:17'),
(150, '1.jpg', '1.jpg.9PwABeRvwNGtAvrkJVIJKieAPWiYo9tl', 'f7a062b2a5ea482b03096b2f49d9734c6b5e0911', '2018-01-06 03:49:27'),
(151, '1.jpg', '1.jpg.cnh61HdiIIwmylEPGiLVjIH0HTRe84ZV', 'dc6d5c927e6940f24452fc01229b791918a812c2', '2018-01-06 03:49:35'),
(152, '1.jpg', '1.jpg.QOoAyDIIQRsdFGHRZrRh6c4kiRbQ0qYS', '1fcadb49c1fe7c5bc9a793823a75646c9c3f81d9', '2018-01-06 03:49:43'),
(153, '1.jpg', '1.jpg.83KydMxVpgnytUF6d56y4CmsmZ7EMtpj', 'fd72d2e9c7175da2d0e4e839b599af683671afca', '2018-01-06 03:50:22'),
(154, '1.jpg', '1.jpg.frq5mN2KccJHzuNRKSEb6RGxLoeBGkRJ', 'c8f417f58d066a3ecdcf0fc2c384d6d3a1ff77e0', '2018-01-06 03:50:30'),
(155, '1.jpg', '1.jpg.vMM2dW0N2qrKAy8awCNSq57h2nbDxIl0', '28e945231f54a5c5113089d7cb901547174a8234', '2018-01-06 03:50:38'),
(156, '1.jpg', '1.jpg.VNv8Wpt3ixCCj5oJnBHi0pSoLFZm8L8j', '98028615fa2ae092124e37fcc71bed00e970b38a', '2018-01-06 03:50:46'),
(157, 'Tulips.jpg', 'Tulips.jpg.QGRpnuaXUvuIdukTvLdmQ68SJDjbRijb', 'ebcd554fcd4036f091637b899409d439eb53b902', '2018-01-06 05:04:18'),
(158, 'Tulips.jpg', 'Tulips.jpg.ScQDP256bDZoscAzd50Tq3DVmxeiYCPC', 'b2a7491819cdc317fbd9dcb7c0b0500292dc2a6a', '2018-01-06 05:04:49'),
(159, 'Tulips.jpg', 'Tulips.jpg.SxM1i5XeIAMoWXiV7sA0f0debxfRrYrS', '65b4162f1e9cca039aed77ce5c26e034dfcdb33e', '2018-01-06 05:05:18'),
(160, 'Penguins.jpg', 'Penguins.jpg.qmIhp6naHvZrrU5sEDbr3hgzQsbTeQK4', '0dc1f1520267ece64031fcb512d49af565218fa6', '2018-01-06 06:34:58'),
(161, 'Tulips.jpg', 'Tulips.jpg.iFYg7wmP6YPNWjj4LK4IjAR7oVJOldr4', 'b7bb4c62411cb1e26c6fa0b9d51bc34e23d078ea', '2018-01-06 06:35:13'),
(162, 'home-office-3363771920.jpg', 'home-office-3363771920.jpg.HEijofsojFQSpJYViPj5qViUUrmaSHv9', 'fecf8e18c210abe4d9d3d1c650f5afefbcf3cc7e', '2018-01-06 06:50:02'),
(163, 'cafmnp bsnl.pdf', 'cafmnp bsnl.pdf.hmPM35KiJwwUGA2rR41rFukyiGcbB5W2', '2e9d8923b8a403a9fc3c05da3f8863b7936588d8', '2018-01-08 08:32:30'),
(164, 'images500.jpg', 'images500.jpg.WATA3zw1nAxaRsHwpXEYrCcOcWuzUTpm', 'fa31b489e69a92e2c4ba4f62ed1b2e5b786bc239', '2018-01-10 00:18:10'),
(165, 'manali-white-mist.jpg', 'manali-white-mist.jpg.jJJ6bbb4ywOj2Jcvk1iKEfIt0ozBjOwa', '2ece7b7b6849a10de14849931eec3aa0adda708e', '2018-01-14 10:29:36');

-- --------------------------------------------------------

--
-- Table structure for table `oc_url_alias`
--

CREATE TABLE IF NOT EXISTS `oc_url_alias` (
  `url_alias_id` int(11) NOT NULL AUTO_INCREMENT,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`url_alias_id`),
  KEY `query` (`query`),
  KEY `keyword` (`keyword`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=896 ;

--
-- Dumping data for table `oc_url_alias`
--

INSERT INTO `oc_url_alias` (`url_alias_id`, `query`, `keyword`) VALUES
(824, 'product_id=48', 'ipod-classic'),
(876, 'category_id=20', 'desktops'),
(834, 'category_id=26', 'pc'),
(835, 'category_id=27', 'mac'),
(730, 'manufacturer_id=8', 'apple'),
(854, 'information_id=4', 'about_us'),
(844, 'product_id=42', 'test'),
(789, 'category_id=34', 'mp3-players'),
(781, 'category_id=36', 'test2'),
(774, 'category_id=18', 'laptop-notebook'),
(775, 'category_id=46', 'macs'),
(776, 'category_id=45', 'windows'),
(868, 'category_id=27', ''),
(778, 'category_id=29', 'mouse'),
(779, 'category_id=28', 'monitor'),
(780, 'category_id=35', 'test1'),
(782, 'category_id=30', 'printer'),
(783, 'category_id=31', 'scanner'),
(784, 'category_id=32', 'web-camera'),
(785, 'category_id=57', 'tablet'),
(786, 'category_id=17', 'software'),
(787, 'category_id=24', 'smartphone'),
(895, 'category_id=33', 'camera'),
(790, 'category_id=43', 'test11'),
(791, 'category_id=44', 'test12'),
(792, 'category_id=47', 'test15'),
(793, 'category_id=48', 'test16'),
(794, 'category_id=49', 'test17'),
(795, 'category_id=50', 'test18'),
(796, 'category_id=51', 'test19'),
(797, 'category_id=52', 'test20'),
(798, 'category_id=58', 'test25'),
(799, 'category_id=53', 'test21'),
(800, 'category_id=54', 'test22'),
(801, 'category_id=55', 'test23'),
(802, 'category_id=56', 'test24'),
(887, 'category_id=40', ''),
(805, 'category_id=39', 'test6'),
(806, 'category_id=40', 'test7'),
(809, 'product_id=30', 'canon-eos-5d'),
(840, 'product_id=47', 'hp-lp3065'),
(811, 'product_id=28', 'htc-touch-hd'),
(812, 'product_id=43', 'macbook'),
(813, 'product_id=44', 'macbook-air'),
(814, 'product_id=45', 'macbook-pro'),
(816, 'product_id=31', 'nikon-d300'),
(817, 'product_id=29', 'palm-treo-pro'),
(818, 'product_id=35', 'product-8'),
(819, 'product_id=49', 'samsung-galaxy-tab-10-1'),
(820, 'product_id=33', 'samsung-syncmaster-941bw'),
(821, 'product_id=46', 'sony-vaio'),
(837, 'product_id=41', 'imac'),
(823, 'product_id=40', 'iphone'),
(825, 'product_id=36', 'ipod-nano'),
(826, 'product_id=34', 'ipod-shuffle'),
(827, 'product_id=32', 'ipod-touch'),
(828, 'manufacturer_id=9', 'canon'),
(829, 'manufacturer_id=5', 'htc'),
(830, 'manufacturer_id=7', 'hewlett-packard'),
(831, 'manufacturer_id=6', 'palm'),
(832, 'manufacturer_id=10', 'sony'),
(841, 'information_id=6', 'delivery'),
(855, 'information_id=3', 'privacy'),
(874, 'information_id=5', 'terms'),
(873, 'information_id=7', '24x7-customer-care'),
(847, 'simple_blog_author_id=1', 'administrator'),
(851, 'simple_blog_article_id=1', 'article1'),
(878, 'category_id=21', 'marbles'),
(877, 'category_id=22', 'stones1'),
(856, 'product_id=58', ''),
(858, 'product_id=60', ''),
(859, 'product_id=61', ''),
(865, 'category_id=24', ''),
(867, 'category_id=26', ''),
(869, 'category_id=28', ''),
(870, 'category_id=29', ''),
(871, 'category_id=30', ''),
(872, 'category_id=31', ''),
(879, 'category_id=32', 'Slabs'),
(881, 'category_id=34', ''),
(882, 'category_id=35', ''),
(883, 'category_id=36', ''),
(891, 'category_id=37', 'test5'),
(886, 'category_id=39', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_user`
--

CREATE TABLE IF NOT EXISTS `oc_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `image` varchar(255) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `oc_user`
--

INSERT INTO `oc_user` (`user_id`, `user_group_id`, `username`, `password`, `salt`, `firstname`, `lastname`, `email`, `image`, `code`, `ip`, `status`, `date_added`) VALUES
(1, 1, 'admin', '57d605ebf1c4654afdc87de81663b04774a86e91', 'x5iYy1aSU', 'John', 'Doe', 'testing.useonly2@gmail.com', '', '', '203.223.190.76', 1, '2017-08-06 08:13:59');

-- --------------------------------------------------------

--
-- Table structure for table `oc_user_group`
--

CREATE TABLE IF NOT EXISTS `oc_user_group` (
  `user_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL,
  PRIMARY KEY (`user_group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `oc_user_group`
--

INSERT INTO `oc_user_group` (`user_group_id`, `name`, `permission`) VALUES
(1, 'Administrator', '{"access":["analytics\\/google_analytics","blacklist\\/blacklist","blog\\/article","blog\\/setting","captcha\\/basic_captcha","captcha\\/google_captcha","catalog\\/attribute","catalog\\/attribute_group","catalog\\/category","catalog\\/download","catalog\\/filter","catalog\\/information","catalog\\/manufacturer","catalog\\/option","catalog\\/product","catalog\\/recurring","catalog\\/review","common\\/column_left","common\\/filemanager","common\\/menu","common\\/profile","common\\/stats","customer\\/custom_field","customer\\/customer","customer\\/customer_group","design\\/banner","design\\/language","design\\/layout","design\\/theme","event\\/theme","extension\\/analytics","extension\\/captcha","extension\\/feed","extension\\/fraud","extension\\/installer","extension\\/modification","extension\\/module","extension\\/module\\/categoryfeatured","extension\\/module\\/simple_blog","extension\\/module\\/simple_blog_category","extension\\/openbay","extension\\/payment","extension\\/shipping","extension\\/theme","extension\\/total","feed\\/google_base","feed\\/google_sitemap","feed\\/openbaypro","fraud\\/fraudlabspro","fraud\\/ip","fraud\\/maxmind","group\\/user_group_list","localisation\\/country","localisation\\/currency","localisation\\/geo_zone","localisation\\/language","localisation\\/length_class","localisation\\/location","localisation\\/order_status","localisation\\/return_action","localisation\\/return_reason","localisation\\/return_status","localisation\\/stock_status","localisation\\/tax_class","localisation\\/tax_rate","localisation\\/weight_class","localisation\\/zone","marketing\\/affiliate","marketing\\/contact","marketing\\/coupon","marketing\\/marketing","message\\/message","module\\/account","module\\/affiliate","module\\/amazon_login","module\\/amazon_pay","module\\/banner","module\\/bestseller","module\\/carousel","module\\/category","module\\/categoryfeatured","module\\/ebay_listing","module\\/featured","module\\/filter","module\\/google_hangouts","module\\/html","module\\/information","module\\/latest","module\\/laybuy_layout","module\\/magicfilter","module\\/pp_button","module\\/pp_login","module\\/sagepay_direct_cards","module\\/sagepay_server_cards","module\\/slideshow","module\\/special","module\\/store","module\\/timezone","openbay\\/amazon","openbay\\/amazon_listing","openbay\\/amazon_product","openbay\\/amazonus","openbay\\/amazonus_listing","openbay\\/amazonus_product","openbay\\/ebay","openbay\\/ebay_profile","openbay\\/ebay_template","openbay\\/etsy","openbay\\/etsy_product","openbay\\/etsy_shipping","openbay\\/etsy_shop","openbay\\/fba","payment\\/amazon_login_pay","payment\\/authorizenet_aim","payment\\/authorizenet_sim","payment\\/bank_transfer","payment\\/bluepay_hosted","payment\\/bluepay_redirect","payment\\/brick","payment\\/cardinity","payment\\/cheque","payment\\/cod","payment\\/eway","payment\\/firstdata","payment\\/firstdata_remote","payment\\/free_checkout","payment\\/g2apay","payment\\/globalpay","payment\\/globalpay_remote","payment\\/klarna_account","payment\\/klarna_invoice","payment\\/laybuy","payment\\/liqpay","payment\\/nochex","payment\\/paymate","payment\\/paymentwall","payment\\/paypoint","payment\\/payza","payment\\/perpetual_payments","payment\\/pp_express","payment\\/pp_payflow","payment\\/pp_payflow_iframe","payment\\/pp_pro","payment\\/pp_pro_iframe","payment\\/pp_standard","payment\\/realex","payment\\/realex_remote","payment\\/sagepay_direct","payment\\/sagepay_server","payment\\/sagepay_us","payment\\/securetrading_pp","payment\\/securetrading_ws","payment\\/skrill","payment\\/twocheckout","payment\\/web_payment_software","payment\\/worldpay","report\\/affiliate","report\\/affiliate_activity","report\\/affiliate_login","report\\/customer_activity","report\\/customer_credit","report\\/customer_login","report\\/customer_online","report\\/customer_order","report\\/customer_reward","report\\/marketing","report\\/product_purchased","report\\/product_viewed","report\\/sale_coupon","report\\/sale_order","report\\/sale_return","report\\/sale_shipping","report\\/sale_tax","sale\\/order","sale\\/recurring","sale\\/return","sale\\/voucher","sale\\/voucher_theme","seller\\/seller","seller\\/seller_group","setting\\/setting","setting\\/store","shipping\\/flat","shipping\\/free","shipping\\/pickup","simple_blog\\/article","simple_blog\\/author","simple_blog\\/category","simple_blog\\/comment","simple_blog\\/install","simple_blog\\/report","startup\\/error","startup\\/event","startup\\/login","startup\\/permission","startup\\/router","startup\\/sass","startup\\/startup","theme\\/theme_default","tool\\/backup","tool\\/error_log","tool\\/upload","total\\/coupon","total\\/credit","total\\/handling","total\\/klarna_fee","total\\/low_order_fee","total\\/reward","total\\/shipping","total\\/sub_total","total\\/tax","total\\/total","total\\/voucher","user\\/api","user\\/user","user\\/user_permission","fraud\\/fraudlabspro","fraud\\/ip"],"modify":["analytics\\/google_analytics","blacklist\\/blacklist","blog\\/article","blog\\/setting","captcha\\/basic_captcha","captcha\\/google_captcha","catalog\\/attribute","catalog\\/attribute_group","catalog\\/category","catalog\\/download","catalog\\/filter","catalog\\/information","catalog\\/manufacturer","catalog\\/option","catalog\\/product","catalog\\/recurring","catalog\\/review","common\\/column_left","common\\/filemanager","common\\/menu","common\\/profile","common\\/stats","customer\\/custom_field","customer\\/customer","customer\\/customer_group","design\\/banner","design\\/language","design\\/layout","design\\/theme","event\\/theme","extension\\/analytics","extension\\/captcha","extension\\/feed","extension\\/fraud","extension\\/installer","extension\\/modification","extension\\/module","extension\\/module\\/categoryfeatured","extension\\/module\\/simple_blog","extension\\/module\\/simple_blog_category","extension\\/openbay","extension\\/payment","extension\\/shipping","extension\\/theme","extension\\/total","feed\\/google_base","feed\\/google_sitemap","feed\\/openbaypro","fraud\\/fraudlabspro","fraud\\/ip","fraud\\/maxmind","group\\/user_group_list","localisation\\/country","localisation\\/currency","localisation\\/geo_zone","localisation\\/language","localisation\\/length_class","localisation\\/location","localisation\\/order_status","localisation\\/return_action","localisation\\/return_reason","localisation\\/return_status","localisation\\/stock_status","localisation\\/tax_class","localisation\\/tax_rate","localisation\\/weight_class","localisation\\/zone","marketing\\/affiliate","marketing\\/contact","marketing\\/coupon","marketing\\/marketing","message\\/message","module\\/account","module\\/affiliate","module\\/amazon_login","module\\/amazon_pay","module\\/banner","module\\/bestseller","module\\/carousel","module\\/category","module\\/categoryfeatured","module\\/ebay_listing","module\\/featured","module\\/filter","module\\/google_hangouts","module\\/html","module\\/information","module\\/latest","module\\/laybuy_layout","module\\/magicfilter","module\\/pp_button","module\\/pp_login","module\\/sagepay_direct_cards","module\\/sagepay_server_cards","module\\/slideshow","module\\/special","module\\/store","module\\/timezone","openbay\\/amazon","openbay\\/amazon_listing","openbay\\/amazon_product","openbay\\/amazonus","openbay\\/amazonus_listing","openbay\\/amazonus_product","openbay\\/ebay","openbay\\/ebay_profile","openbay\\/ebay_template","openbay\\/etsy","openbay\\/etsy_product","openbay\\/etsy_shipping","openbay\\/etsy_shop","openbay\\/fba","payment\\/amazon_login_pay","payment\\/authorizenet_aim","payment\\/authorizenet_sim","payment\\/bank_transfer","payment\\/bluepay_hosted","payment\\/bluepay_redirect","payment\\/brick","payment\\/cardinity","payment\\/cheque","payment\\/cod","payment\\/eway","payment\\/firstdata","payment\\/firstdata_remote","payment\\/free_checkout","payment\\/g2apay","payment\\/globalpay","payment\\/globalpay_remote","payment\\/klarna_account","payment\\/klarna_invoice","payment\\/laybuy","payment\\/liqpay","payment\\/nochex","payment\\/paymate","payment\\/paymentwall","payment\\/paypoint","payment\\/payza","payment\\/perpetual_payments","payment\\/pp_express","payment\\/pp_payflow","payment\\/pp_payflow_iframe","payment\\/pp_pro","payment\\/pp_pro_iframe","payment\\/pp_standard","payment\\/realex","payment\\/realex_remote","payment\\/sagepay_direct","payment\\/sagepay_server","payment\\/sagepay_us","payment\\/securetrading_pp","payment\\/securetrading_ws","payment\\/skrill","payment\\/twocheckout","payment\\/web_payment_software","payment\\/worldpay","report\\/affiliate","report\\/affiliate_activity","report\\/affiliate_login","report\\/customer_activity","report\\/customer_credit","report\\/customer_login","report\\/customer_online","report\\/customer_order","report\\/customer_reward","report\\/marketing","report\\/product_purchased","report\\/product_viewed","report\\/sale_coupon","report\\/sale_order","report\\/sale_return","report\\/sale_shipping","report\\/sale_tax","sale\\/order","sale\\/recurring","sale\\/return","sale\\/voucher","sale\\/voucher_theme","seller\\/seller","seller\\/seller_group","setting\\/setting","setting\\/store","shipping\\/flat","shipping\\/free","shipping\\/pickup","simple_blog\\/article","simple_blog\\/author","simple_blog\\/category","simple_blog\\/comment","simple_blog\\/install","simple_blog\\/report","startup\\/error","startup\\/event","startup\\/login","startup\\/permission","startup\\/router","startup\\/sass","startup\\/startup","theme\\/theme_default","tool\\/backup","tool\\/error_log","tool\\/upload","total\\/coupon","total\\/credit","total\\/handling","total\\/klarna_fee","total\\/low_order_fee","total\\/reward","total\\/shipping","total\\/sub_total","total\\/tax","total\\/total","total\\/voucher","user\\/api","user\\/user","user\\/user_permission","fraud\\/fraudlabspro","fraud\\/ip"]}'),
(10, 'Demonstration', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher`
--

CREATE TABLE IF NOT EXISTS `oc_voucher` (
  `voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_history`
--

CREATE TABLE IF NOT EXISTS `oc_voucher_history` (
  `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_theme`
--

CREATE TABLE IF NOT EXISTS `oc_voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `oc_voucher_theme`
--

INSERT INTO `oc_voucher_theme` (`voucher_theme_id`, `image`) VALUES
(8, 'catalog/demo/canon_eos_5d_2.jpg'),
(7, 'catalog/demo/gift-voucher-birthday.jpg'),
(6, 'catalog/demo/apple_logo.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_theme_description`
--

CREATE TABLE IF NOT EXISTS `oc_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_voucher_theme_description`
--

INSERT INTO `oc_voucher_theme_description` (`voucher_theme_id`, `language_id`, `name`) VALUES
(6, 1, 'Christmas'),
(7, 1, 'Birthday'),
(8, 1, 'General');

-- --------------------------------------------------------

--
-- Table structure for table `oc_weight_class`
--

CREATE TABLE IF NOT EXISTS `oc_weight_class` (
  `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  PRIMARY KEY (`weight_class_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `oc_weight_class`
--

INSERT INTO `oc_weight_class` (`weight_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '1000.00000000'),
(5, '2.20460000'),
(6, '35.27400000'),
(7, '0.00100000');

-- --------------------------------------------------------

--
-- Table structure for table `oc_weight_class_description`
--

CREATE TABLE IF NOT EXISTS `oc_weight_class_description` (
  `weight_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`weight_class_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_weight_class_description`
--

INSERT INTO `oc_weight_class_description` (`weight_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Kilogram', 'kg'),
(2, 1, 'Gram', 'g'),
(5, 1, 'Pound ', 'lb'),
(6, 1, 'Ounce', 'oz'),
(7, 1, 'Tons', 't');

-- --------------------------------------------------------

--
-- Table structure for table `oc_zone`
--

CREATE TABLE IF NOT EXISTS `oc_zone` (
  `zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`zone_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4232 ;

--
-- Dumping data for table `oc_zone`
--

INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1, 1, 'Badakhshan', 'BDS', 1),
(2, 1, 'Badghis', 'BDG', 1),
(3, 1, 'Baghlan', 'BGL', 1),
(4, 1, 'Balkh', 'BAL', 1),
(5, 1, 'Bamian', 'BAM', 1),
(6, 1, 'Farah', 'FRA', 1),
(7, 1, 'Faryab', 'FYB', 1),
(8, 1, 'Ghazni', 'GHA', 1),
(9, 1, 'Ghowr', 'GHO', 1),
(10, 1, 'Helmand', 'HEL', 1),
(11, 1, 'Herat', 'HER', 1),
(12, 1, 'Jowzjan', 'JOW', 1),
(13, 1, 'Kabul', 'KAB', 1),
(14, 1, 'Kandahar', 'KAN', 1),
(15, 1, 'Kapisa', 'KAP', 1),
(16, 1, 'Khost', 'KHO', 1),
(17, 1, 'Konar', 'KNR', 1),
(18, 1, 'Kondoz', 'KDZ', 1),
(19, 1, 'Laghman', 'LAG', 1),
(20, 1, 'Lowgar', 'LOW', 1),
(21, 1, 'Nangrahar', 'NAN', 1),
(22, 1, 'Nimruz', 'NIM', 1),
(23, 1, 'Nurestan', 'NUR', 1),
(24, 1, 'Oruzgan', 'ORU', 1),
(25, 1, 'Paktia', 'PIA', 1),
(26, 1, 'Paktika', 'PKA', 1),
(27, 1, 'Parwan', 'PAR', 1),
(28, 1, 'Samangan', 'SAM', 1),
(29, 1, 'Sar-e Pol', 'SAR', 1),
(30, 1, 'Takhar', 'TAK', 1),
(31, 1, 'Wardak', 'WAR', 1),
(32, 1, 'Zabol', 'ZAB', 1),
(33, 2, 'Berat', 'BR', 1),
(34, 2, 'Bulqize', 'BU', 1),
(35, 2, 'Delvine', 'DL', 1),
(36, 2, 'Devoll', 'DV', 1),
(37, 2, 'Diber', 'DI', 1),
(38, 2, 'Durres', 'DR', 1),
(39, 2, 'Elbasan', 'EL', 1),
(40, 2, 'Kolonje', 'ER', 1),
(41, 2, 'Fier', 'FR', 1),
(42, 2, 'Gjirokaster', 'GJ', 1),
(43, 2, 'Gramsh', 'GR', 1),
(44, 2, 'Has', 'HA', 1),
(45, 2, 'Kavaje', 'KA', 1),
(46, 2, 'Kurbin', 'KB', 1),
(47, 2, 'Kucove', 'KC', 1),
(48, 2, 'Korce', 'KO', 1),
(49, 2, 'Kruje', 'KR', 1),
(50, 2, 'Kukes', 'KU', 1),
(51, 2, 'Librazhd', 'LB', 1),
(52, 2, 'Lezhe', 'LE', 1),
(53, 2, 'Lushnje', 'LU', 1),
(54, 2, 'Malesi e Madhe', 'MM', 1),
(55, 2, 'Mallakaster', 'MK', 1),
(56, 2, 'Mat', 'MT', 1),
(57, 2, 'Mirdite', 'MR', 1),
(58, 2, 'Peqin', 'PQ', 1),
(59, 2, 'Permet', 'PR', 1),
(60, 2, 'Pogradec', 'PG', 1),
(61, 2, 'Puke', 'PU', 1),
(62, 2, 'Shkoder', 'SH', 1),
(63, 2, 'Skrapar', 'SK', 1),
(64, 2, 'Sarande', 'SR', 1),
(65, 2, 'Tepelene', 'TE', 1),
(66, 2, 'Tropoje', 'TP', 1),
(67, 2, 'Tirane', 'TR', 1),
(68, 2, 'Vlore', 'VL', 1),
(69, 3, 'Adrar', 'ADR', 1),
(70, 3, 'Ain Defla', 'ADE', 1),
(71, 3, 'Ain Temouchent', 'ATE', 1),
(72, 3, 'Alger', 'ALG', 1),
(73, 3, 'Annaba', 'ANN', 1),
(74, 3, 'Batna', 'BAT', 1),
(75, 3, 'Bechar', 'BEC', 1),
(76, 3, 'Bejaia', 'BEJ', 1),
(77, 3, 'Biskra', 'BIS', 1),
(78, 3, 'Blida', 'BLI', 1),
(79, 3, 'Bordj Bou Arreridj', 'BBA', 1),
(80, 3, 'Bouira', 'BOA', 1),
(81, 3, 'Boumerdes', 'BMD', 1),
(82, 3, 'Chlef', 'CHL', 1),
(83, 3, 'Constantine', 'CON', 1),
(84, 3, 'Djelfa', 'DJE', 1),
(85, 3, 'El Bayadh', 'EBA', 1),
(86, 3, 'El Oued', 'EOU', 1),
(87, 3, 'El Tarf', 'ETA', 1),
(88, 3, 'Ghardaia', 'GHA', 1),
(89, 3, 'Guelma', 'GUE', 1),
(90, 3, 'Illizi', 'ILL', 1),
(91, 3, 'Jijel', 'JIJ', 1),
(92, 3, 'Khenchela', 'KHE', 1),
(93, 3, 'Laghouat', 'LAG', 1),
(94, 3, 'Muaskar', 'MUA', 1),
(95, 3, 'Medea', 'MED', 1),
(96, 3, 'Mila', 'MIL', 1),
(97, 3, 'Mostaganem', 'MOS', 1),
(98, 3, 'M''Sila', 'MSI', 1),
(99, 3, 'Naama', 'NAA', 1),
(100, 3, 'Oran', 'ORA', 1),
(101, 3, 'Ouargla', 'OUA', 1),
(102, 3, 'Oum el-Bouaghi', 'OEB', 1),
(103, 3, 'Relizane', 'REL', 1),
(104, 3, 'Saida', 'SAI', 1),
(105, 3, 'Setif', 'SET', 1),
(106, 3, 'Sidi Bel Abbes', 'SBA', 1),
(107, 3, 'Skikda', 'SKI', 1),
(108, 3, 'Souk Ahras', 'SAH', 1),
(109, 3, 'Tamanghasset', 'TAM', 1),
(110, 3, 'Tebessa', 'TEB', 1),
(111, 3, 'Tiaret', 'TIA', 1),
(112, 3, 'Tindouf', 'TIN', 1),
(113, 3, 'Tipaza', 'TIP', 1),
(114, 3, 'Tissemsilt', 'TIS', 1),
(115, 3, 'Tizi Ouzou', 'TOU', 1),
(116, 3, 'Tlemcen', 'TLE', 1),
(117, 4, 'Eastern', 'E', 1),
(118, 4, 'Manu''a', 'M', 1),
(119, 4, 'Rose Island', 'R', 1),
(120, 4, 'Swains Island', 'S', 1),
(121, 4, 'Western', 'W', 1),
(122, 5, 'Andorra la Vella', 'ALV', 1),
(123, 5, 'Canillo', 'CAN', 1),
(124, 5, 'Encamp', 'ENC', 1),
(125, 5, 'Escaldes-Engordany', 'ESE', 1),
(126, 5, 'La Massana', 'LMA', 1),
(127, 5, 'Ordino', 'ORD', 1),
(128, 5, 'Sant Julia de Loria', 'SJL', 1),
(129, 6, 'Bengo', 'BGO', 1),
(130, 6, 'Benguela', 'BGU', 1),
(131, 6, 'Bie', 'BIE', 1),
(132, 6, 'Cabinda', 'CAB', 1),
(133, 6, 'Cuando-Cubango', 'CCU', 1),
(134, 6, 'Cuanza Norte', 'CNO', 1),
(135, 6, 'Cuanza Sul', 'CUS', 1),
(136, 6, 'Cunene', 'CNN', 1),
(137, 6, 'Huambo', 'HUA', 1),
(138, 6, 'Huila', 'HUI', 1),
(139, 6, 'Luanda', 'LUA', 1),
(140, 6, 'Lunda Norte', 'LNO', 1),
(141, 6, 'Lunda Sul', 'LSU', 1),
(142, 6, 'Malange', 'MAL', 1),
(143, 6, 'Moxico', 'MOX', 1),
(144, 6, 'Namibe', 'NAM', 1),
(145, 6, 'Uige', 'UIG', 1),
(146, 6, 'Zaire', 'ZAI', 1),
(147, 9, 'Saint George', 'ASG', 1),
(148, 9, 'Saint John', 'ASJ', 1),
(149, 9, 'Saint Mary', 'ASM', 1),
(150, 9, 'Saint Paul', 'ASL', 1),
(151, 9, 'Saint Peter', 'ASR', 1),
(152, 9, 'Saint Philip', 'ASH', 1),
(153, 9, 'Barbuda', 'BAR', 1),
(154, 9, 'Redonda', 'RED', 1),
(155, 10, 'Antartida e Islas del Atlantico', 'AN', 1),
(156, 10, 'Buenos Aires', 'BA', 1),
(157, 10, 'Catamarca', 'CA', 1),
(158, 10, 'Chaco', 'CH', 1),
(159, 10, 'Chubut', 'CU', 1),
(160, 10, 'Cordoba', 'CO', 1),
(161, 10, 'Corrientes', 'CR', 1),
(162, 10, 'Distrito Federal', 'DF', 1),
(163, 10, 'Entre Rios', 'ER', 1),
(164, 10, 'Formosa', 'FO', 1),
(165, 10, 'Jujuy', 'JU', 1),
(166, 10, 'La Pampa', 'LP', 1),
(167, 10, 'La Rioja', 'LR', 1),
(168, 10, 'Mendoza', 'ME', 1),
(169, 10, 'Misiones', 'MI', 1),
(170, 10, 'Neuquen', 'NE', 1),
(171, 10, 'Rio Negro', 'RN', 1),
(172, 10, 'Salta', 'SA', 1),
(173, 10, 'San Juan', 'SJ', 1),
(174, 10, 'San Luis', 'SL', 1),
(175, 10, 'Santa Cruz', 'SC', 1),
(176, 10, 'Santa Fe', 'SF', 1),
(177, 10, 'Santiago del Estero', 'SD', 1),
(178, 10, 'Tierra del Fuego', 'TF', 1),
(179, 10, 'Tucuman', 'TU', 1),
(180, 11, 'Aragatsotn', 'AGT', 1),
(181, 11, 'Ararat', 'ARR', 1),
(182, 11, 'Armavir', 'ARM', 1),
(183, 11, 'Geghark''unik''', 'GEG', 1),
(184, 11, 'Kotayk''', 'KOT', 1),
(185, 11, 'Lorri', 'LOR', 1),
(186, 11, 'Shirak', 'SHI', 1),
(187, 11, 'Syunik''', 'SYU', 1),
(188, 11, 'Tavush', 'TAV', 1),
(189, 11, 'Vayots'' Dzor', 'VAY', 1),
(190, 11, 'Yerevan', 'YER', 1),
(191, 13, 'Australian Capital Territory', 'ACT', 1),
(192, 13, 'New South Wales', 'NSW', 1),
(193, 13, 'Northern Territory', 'NT', 1),
(194, 13, 'Queensland', 'QLD', 1),
(195, 13, 'South Australia', 'SA', 1),
(196, 13, 'Tasmania', 'TAS', 1),
(197, 13, 'Victoria', 'VIC', 1),
(198, 13, 'Western Australia', 'WA', 1),
(199, 14, 'Burgenland', 'BUR', 1),
(200, 14, 'Kärnten', 'KAR', 1),
(201, 14, 'Niederösterreich', 'NOS', 1),
(202, 14, 'Oberösterreich', 'OOS', 1),
(203, 14, 'Salzburg', 'SAL', 1),
(204, 14, 'Steiermark', 'STE', 1),
(205, 14, 'Tirol', 'TIR', 1),
(206, 14, 'Vorarlberg', 'VOR', 1),
(207, 14, 'Wien', 'WIE', 1),
(208, 15, 'Ali Bayramli', 'AB', 1),
(209, 15, 'Abseron', 'ABS', 1),
(210, 15, 'AgcabAdi', 'AGC', 1),
(211, 15, 'Agdam', 'AGM', 1),
(212, 15, 'Agdas', 'AGS', 1),
(213, 15, 'Agstafa', 'AGA', 1),
(214, 15, 'Agsu', 'AGU', 1),
(215, 15, 'Astara', 'AST', 1),
(216, 15, 'Baki', 'BA', 1),
(217, 15, 'BabAk', 'BAB', 1),
(218, 15, 'BalakAn', 'BAL', 1),
(219, 15, 'BArdA', 'BAR', 1),
(220, 15, 'Beylaqan', 'BEY', 1),
(221, 15, 'Bilasuvar', 'BIL', 1),
(222, 15, 'Cabrayil', 'CAB', 1),
(223, 15, 'Calilabab', 'CAL', 1),
(224, 15, 'Culfa', 'CUL', 1),
(225, 15, 'Daskasan', 'DAS', 1),
(226, 15, 'Davaci', 'DAV', 1),
(227, 15, 'Fuzuli', 'FUZ', 1),
(228, 15, 'Ganca', 'GA', 1),
(229, 15, 'Gadabay', 'GAD', 1),
(230, 15, 'Goranboy', 'GOR', 1),
(231, 15, 'Goycay', 'GOY', 1),
(232, 15, 'Haciqabul', 'HAC', 1),
(233, 15, 'Imisli', 'IMI', 1),
(234, 15, 'Ismayilli', 'ISM', 1),
(235, 15, 'Kalbacar', 'KAL', 1),
(236, 15, 'Kurdamir', 'KUR', 1),
(237, 15, 'Lankaran', 'LA', 1),
(238, 15, 'Lacin', 'LAC', 1),
(239, 15, 'Lankaran', 'LAN', 1),
(240, 15, 'Lerik', 'LER', 1),
(241, 15, 'Masalli', 'MAS', 1),
(242, 15, 'Mingacevir', 'MI', 1),
(243, 15, 'Naftalan', 'NA', 1),
(244, 15, 'Neftcala', 'NEF', 1),
(245, 15, 'Oguz', 'OGU', 1),
(246, 15, 'Ordubad', 'ORD', 1),
(247, 15, 'Qabala', 'QAB', 1),
(248, 15, 'Qax', 'QAX', 1),
(249, 15, 'Qazax', 'QAZ', 1),
(250, 15, 'Qobustan', 'QOB', 1),
(251, 15, 'Quba', 'QBA', 1),
(252, 15, 'Qubadli', 'QBI', 1),
(253, 15, 'Qusar', 'QUS', 1),
(254, 15, 'Saki', 'SA', 1),
(255, 15, 'Saatli', 'SAT', 1),
(256, 15, 'Sabirabad', 'SAB', 1),
(257, 15, 'Sadarak', 'SAD', 1),
(258, 15, 'Sahbuz', 'SAH', 1),
(259, 15, 'Saki', 'SAK', 1),
(260, 15, 'Salyan', 'SAL', 1),
(261, 15, 'Sumqayit', 'SM', 1),
(262, 15, 'Samaxi', 'SMI', 1),
(263, 15, 'Samkir', 'SKR', 1),
(264, 15, 'Samux', 'SMX', 1),
(265, 15, 'Sarur', 'SAR', 1),
(266, 15, 'Siyazan', 'SIY', 1),
(267, 15, 'Susa', 'SS', 1),
(268, 15, 'Susa', 'SUS', 1),
(269, 15, 'Tartar', 'TAR', 1),
(270, 15, 'Tovuz', 'TOV', 1),
(271, 15, 'Ucar', 'UCA', 1),
(272, 15, 'Xankandi', 'XA', 1),
(273, 15, 'Xacmaz', 'XAC', 1),
(274, 15, 'Xanlar', 'XAN', 1),
(275, 15, 'Xizi', 'XIZ', 1),
(276, 15, 'Xocali', 'XCI', 1),
(277, 15, 'Xocavand', 'XVD', 1),
(278, 15, 'Yardimli', 'YAR', 1),
(279, 15, 'Yevlax', 'YEV', 1),
(280, 15, 'Zangilan', 'ZAN', 1),
(281, 15, 'Zaqatala', 'ZAQ', 1),
(282, 15, 'Zardab', 'ZAR', 1),
(283, 15, 'Naxcivan', 'NX', 1),
(284, 16, 'Acklins', 'ACK', 1),
(285, 16, 'Berry Islands', 'BER', 1),
(286, 16, 'Bimini', 'BIM', 1),
(287, 16, 'Black Point', 'BLK', 1),
(288, 16, 'Cat Island', 'CAT', 1),
(289, 16, 'Central Abaco', 'CAB', 1),
(290, 16, 'Central Andros', 'CAN', 1),
(291, 16, 'Central Eleuthera', 'CEL', 1),
(292, 16, 'City of Freeport', 'FRE', 1),
(293, 16, 'Crooked Island', 'CRO', 1),
(294, 16, 'East Grand Bahama', 'EGB', 1),
(295, 16, 'Exuma', 'EXU', 1),
(296, 16, 'Grand Cay', 'GRD', 1),
(297, 16, 'Harbour Island', 'HAR', 1),
(298, 16, 'Hope Town', 'HOP', 1),
(299, 16, 'Inagua', 'INA', 1),
(300, 16, 'Long Island', 'LNG', 1),
(301, 16, 'Mangrove Cay', 'MAN', 1),
(302, 16, 'Mayaguana', 'MAY', 1),
(303, 16, 'Moore''s Island', 'MOO', 1),
(304, 16, 'North Abaco', 'NAB', 1),
(305, 16, 'North Andros', 'NAN', 1),
(306, 16, 'North Eleuthera', 'NEL', 1),
(307, 16, 'Ragged Island', 'RAG', 1),
(308, 16, 'Rum Cay', 'RUM', 1),
(309, 16, 'San Salvador', 'SAL', 1),
(310, 16, 'South Abaco', 'SAB', 1),
(311, 16, 'South Andros', 'SAN', 1),
(312, 16, 'South Eleuthera', 'SEL', 1),
(313, 16, 'Spanish Wells', 'SWE', 1),
(314, 16, 'West Grand Bahama', 'WGB', 1),
(315, 17, 'Capital', 'CAP', 1),
(316, 17, 'Central', 'CEN', 1),
(317, 17, 'Muharraq', 'MUH', 1),
(318, 17, 'Northern', 'NOR', 1),
(319, 17, 'Southern', 'SOU', 1),
(320, 18, 'Barisal', 'BAR', 1),
(321, 18, 'Chittagong', 'CHI', 1),
(322, 18, 'Dhaka', 'DHA', 1),
(323, 18, 'Khulna', 'KHU', 1),
(324, 18, 'Rajshahi', 'RAJ', 1),
(325, 18, 'Sylhet', 'SYL', 1),
(326, 19, 'Christ Church', 'CC', 1),
(327, 19, 'Saint Andrew', 'AND', 1),
(328, 19, 'Saint George', 'GEO', 1),
(329, 19, 'Saint James', 'JAM', 1),
(330, 19, 'Saint John', 'JOH', 1),
(331, 19, 'Saint Joseph', 'JOS', 1),
(332, 19, 'Saint Lucy', 'LUC', 1),
(333, 19, 'Saint Michael', 'MIC', 1),
(334, 19, 'Saint Peter', 'PET', 1),
(335, 19, 'Saint Philip', 'PHI', 1),
(336, 19, 'Saint Thomas', 'THO', 1),
(337, 20, 'Brestskaya (Brest)', 'BR', 1),
(338, 20, 'Homyel''skaya (Homyel'')', 'HO', 1),
(339, 20, 'Horad Minsk', 'HM', 1),
(340, 20, 'Hrodzyenskaya (Hrodna)', 'HR', 1),
(341, 20, 'Mahilyowskaya (Mahilyow)', 'MA', 1),
(342, 20, 'Minskaya', 'MI', 1),
(343, 20, 'Vitsyebskaya (Vitsyebsk)', 'VI', 1),
(344, 21, 'Antwerpen', 'VAN', 1),
(345, 21, 'Brabant Wallon', 'WBR', 1),
(346, 21, 'Hainaut', 'WHT', 1),
(347, 21, 'Liège', 'WLG', 1),
(348, 21, 'Limburg', 'VLI', 1),
(349, 21, 'Luxembourg', 'WLX', 1),
(350, 21, 'Namur', 'WNA', 1),
(351, 21, 'Oost-Vlaanderen', 'VOV', 1),
(352, 21, 'Vlaams Brabant', 'VBR', 1),
(353, 21, 'West-Vlaanderen', 'VWV', 1),
(354, 22, 'Belize', 'BZ', 1),
(355, 22, 'Cayo', 'CY', 1),
(356, 22, 'Corozal', 'CR', 1),
(357, 22, 'Orange Walk', 'OW', 1),
(358, 22, 'Stann Creek', 'SC', 1),
(359, 22, 'Toledo', 'TO', 1),
(360, 23, 'Alibori', 'AL', 1),
(361, 23, 'Atakora', 'AK', 1),
(362, 23, 'Atlantique', 'AQ', 1),
(363, 23, 'Borgou', 'BO', 1),
(364, 23, 'Collines', 'CO', 1),
(365, 23, 'Donga', 'DO', 1),
(366, 23, 'Kouffo', 'KO', 1),
(367, 23, 'Littoral', 'LI', 1),
(368, 23, 'Mono', 'MO', 1),
(369, 23, 'Oueme', 'OU', 1),
(370, 23, 'Plateau', 'PL', 1),
(371, 23, 'Zou', 'ZO', 1),
(372, 24, 'Devonshire', 'DS', 1),
(373, 24, 'Hamilton City', 'HC', 1),
(374, 24, 'Hamilton', 'HA', 1),
(375, 24, 'Paget', 'PG', 1),
(376, 24, 'Pembroke', 'PB', 1),
(377, 24, 'Saint George City', 'GC', 1),
(378, 24, 'Saint George''s', 'SG', 1),
(379, 24, 'Sandys', 'SA', 1),
(380, 24, 'Smith''s', 'SM', 1),
(381, 24, 'Southampton', 'SH', 1),
(382, 24, 'Warwick', 'WA', 1),
(383, 25, 'Bumthang', 'BUM', 1),
(384, 25, 'Chukha', 'CHU', 1),
(385, 25, 'Dagana', 'DAG', 1),
(386, 25, 'Gasa', 'GAS', 1),
(387, 25, 'Haa', 'HAA', 1),
(388, 25, 'Lhuntse', 'LHU', 1),
(389, 25, 'Mongar', 'MON', 1),
(390, 25, 'Paro', 'PAR', 1),
(391, 25, 'Pemagatshel', 'PEM', 1),
(392, 25, 'Punakha', 'PUN', 1),
(393, 25, 'Samdrup Jongkhar', 'SJO', 1),
(394, 25, 'Samtse', 'SAT', 1),
(395, 25, 'Sarpang', 'SAR', 1),
(396, 25, 'Thimphu', 'THI', 1),
(397, 25, 'Trashigang', 'TRG', 1),
(398, 25, 'Trashiyangste', 'TRY', 1),
(399, 25, 'Trongsa', 'TRO', 1),
(400, 25, 'Tsirang', 'TSI', 1),
(401, 25, 'Wangdue Phodrang', 'WPH', 1),
(402, 25, 'Zhemgang', 'ZHE', 1),
(403, 26, 'Beni', 'BEN', 1),
(404, 26, 'Chuquisaca', 'CHU', 1),
(405, 26, 'Cochabamba', 'COC', 1),
(406, 26, 'La Paz', 'LPZ', 1),
(407, 26, 'Oruro', 'ORU', 1),
(408, 26, 'Pando', 'PAN', 1),
(409, 26, 'Potosi', 'POT', 1),
(410, 26, 'Santa Cruz', 'SCZ', 1),
(411, 26, 'Tarija', 'TAR', 1),
(412, 27, 'Brcko district', 'BRO', 1),
(413, 27, 'Unsko-Sanski Kanton', 'FUS', 1),
(414, 27, 'Posavski Kanton', 'FPO', 1),
(415, 27, 'Tuzlanski Kanton', 'FTU', 1),
(416, 27, 'Zenicko-Dobojski Kanton', 'FZE', 1),
(417, 27, 'Bosanskopodrinjski Kanton', 'FBP', 1),
(418, 27, 'Srednjebosanski Kanton', 'FSB', 1),
(419, 27, 'Hercegovacko-neretvanski Kanton', 'FHN', 1),
(420, 27, 'Zapadnohercegovacka Zupanija', 'FZH', 1),
(421, 27, 'Kanton Sarajevo', 'FSA', 1),
(422, 27, 'Zapadnobosanska', 'FZA', 1),
(423, 27, 'Banja Luka', 'SBL', 1),
(424, 27, 'Doboj', 'SDO', 1),
(425, 27, 'Bijeljina', 'SBI', 1),
(426, 27, 'Vlasenica', 'SVL', 1),
(427, 27, 'Sarajevo-Romanija or Sokolac', 'SSR', 1),
(428, 27, 'Foca', 'SFO', 1),
(429, 27, 'Trebinje', 'STR', 1),
(430, 28, 'Central', 'CE', 1),
(431, 28, 'Ghanzi', 'GH', 1),
(432, 28, 'Kgalagadi', 'KD', 1),
(433, 28, 'Kgatleng', 'KT', 1),
(434, 28, 'Kweneng', 'KW', 1),
(435, 28, 'Ngamiland', 'NG', 1),
(436, 28, 'North East', 'NE', 1),
(437, 28, 'North West', 'NW', 1),
(438, 28, 'South East', 'SE', 1),
(439, 28, 'Southern', 'SO', 1),
(440, 30, 'Acre', 'AC', 1),
(441, 30, 'Alagoas', 'AL', 1),
(442, 30, 'Amapá', 'AP', 1),
(443, 30, 'Amazonas', 'AM', 1),
(444, 30, 'Bahia', 'BA', 1),
(445, 30, 'Ceará', 'CE', 1),
(446, 30, 'Distrito Federal', 'DF', 1),
(447, 30, 'Espírito Santo', 'ES', 1),
(448, 30, 'Goiás', 'GO', 1),
(449, 30, 'Maranhão', 'MA', 1),
(450, 30, 'Mato Grosso', 'MT', 1),
(451, 30, 'Mato Grosso do Sul', 'MS', 1),
(452, 30, 'Minas Gerais', 'MG', 1),
(453, 30, 'Pará', 'PA', 1),
(454, 30, 'Paraíba', 'PB', 1),
(455, 30, 'Paraná', 'PR', 1),
(456, 30, 'Pernambuco', 'PE', 1),
(457, 30, 'Piauí', 'PI', 1),
(458, 30, 'Rio de Janeiro', 'RJ', 1),
(459, 30, 'Rio Grande do Norte', 'RN', 1),
(460, 30, 'Rio Grande do Sul', 'RS', 1),
(461, 30, 'Rondônia', 'RO', 1),
(462, 30, 'Roraima', 'RR', 1),
(463, 30, 'Santa Catarina', 'SC', 1),
(464, 30, 'São Paulo', 'SP', 1),
(465, 30, 'Sergipe', 'SE', 1),
(466, 30, 'Tocantins', 'TO', 1),
(467, 31, 'Peros Banhos', 'PB', 1),
(468, 31, 'Salomon Islands', 'SI', 1),
(469, 31, 'Nelsons Island', 'NI', 1),
(470, 31, 'Three Brothers', 'TB', 1),
(471, 31, 'Eagle Islands', 'EA', 1),
(472, 31, 'Danger Island', 'DI', 1),
(473, 31, 'Egmont Islands', 'EG', 1),
(474, 31, 'Diego Garcia', 'DG', 1),
(475, 32, 'Belait', 'BEL', 1),
(476, 32, 'Brunei and Muara', 'BRM', 1),
(477, 32, 'Temburong', 'TEM', 1),
(478, 32, 'Tutong', 'TUT', 1),
(479, 33, 'Blagoevgrad', '', 1),
(480, 33, 'Burgas', '', 1),
(481, 33, 'Dobrich', '', 1),
(482, 33, 'Gabrovo', '', 1),
(483, 33, 'Haskovo', '', 1),
(484, 33, 'Kardjali', '', 1),
(485, 33, 'Kyustendil', '', 1),
(486, 33, 'Lovech', '', 1),
(487, 33, 'Montana', '', 1),
(488, 33, 'Pazardjik', '', 1),
(489, 33, 'Pernik', '', 1),
(490, 33, 'Pleven', '', 1),
(491, 33, 'Plovdiv', '', 1),
(492, 33, 'Razgrad', '', 1),
(493, 33, 'Shumen', '', 1),
(494, 33, 'Silistra', '', 1),
(495, 33, 'Sliven', '', 1),
(496, 33, 'Smolyan', '', 1),
(497, 33, 'Sofia', '', 1),
(498, 33, 'Sofia - town', '', 1),
(499, 33, 'Stara Zagora', '', 1),
(500, 33, 'Targovishte', '', 1),
(501, 33, 'Varna', '', 1),
(502, 33, 'Veliko Tarnovo', '', 1),
(503, 33, 'Vidin', '', 1),
(504, 33, 'Vratza', '', 1),
(505, 33, 'Yambol', '', 1),
(506, 34, 'Bale', 'BAL', 1),
(507, 34, 'Bam', 'BAM', 1),
(508, 34, 'Banwa', 'BAN', 1),
(509, 34, 'Bazega', 'BAZ', 1),
(510, 34, 'Bougouriba', 'BOR', 1),
(511, 34, 'Boulgou', 'BLG', 1),
(512, 34, 'Boulkiemde', 'BOK', 1),
(513, 34, 'Comoe', 'COM', 1),
(514, 34, 'Ganzourgou', 'GAN', 1),
(515, 34, 'Gnagna', 'GNA', 1),
(516, 34, 'Gourma', 'GOU', 1),
(517, 34, 'Houet', 'HOU', 1),
(518, 34, 'Ioba', 'IOA', 1),
(519, 34, 'Kadiogo', 'KAD', 1),
(520, 34, 'Kenedougou', 'KEN', 1),
(521, 34, 'Komondjari', 'KOD', 1),
(522, 34, 'Kompienga', 'KOP', 1),
(523, 34, 'Kossi', 'KOS', 1),
(524, 34, 'Koulpelogo', 'KOL', 1),
(525, 34, 'Kouritenga', 'KOT', 1),
(526, 34, 'Kourweogo', 'KOW', 1),
(527, 34, 'Leraba', 'LER', 1),
(528, 34, 'Loroum', 'LOR', 1),
(529, 34, 'Mouhoun', 'MOU', 1),
(530, 34, 'Nahouri', 'NAH', 1),
(531, 34, 'Namentenga', 'NAM', 1),
(532, 34, 'Nayala', 'NAY', 1),
(533, 34, 'Noumbiel', 'NOU', 1),
(534, 34, 'Oubritenga', 'OUB', 1),
(535, 34, 'Oudalan', 'OUD', 1),
(536, 34, 'Passore', 'PAS', 1),
(537, 34, 'Poni', 'PON', 1),
(538, 34, 'Sanguie', 'SAG', 1),
(539, 34, 'Sanmatenga', 'SAM', 1),
(540, 34, 'Seno', 'SEN', 1),
(541, 34, 'Sissili', 'SIS', 1),
(542, 34, 'Soum', 'SOM', 1),
(543, 34, 'Sourou', 'SOR', 1),
(544, 34, 'Tapoa', 'TAP', 1),
(545, 34, 'Tuy', 'TUY', 1),
(546, 34, 'Yagha', 'YAG', 1),
(547, 34, 'Yatenga', 'YAT', 1),
(548, 34, 'Ziro', 'ZIR', 1),
(549, 34, 'Zondoma', 'ZOD', 1),
(550, 34, 'Zoundweogo', 'ZOW', 1),
(551, 35, 'Bubanza', 'BB', 1),
(552, 35, 'Bujumbura', 'BJ', 1),
(553, 35, 'Bururi', 'BR', 1),
(554, 35, 'Cankuzo', 'CA', 1),
(555, 35, 'Cibitoke', 'CI', 1),
(556, 35, 'Gitega', 'GI', 1),
(557, 35, 'Karuzi', 'KR', 1),
(558, 35, 'Kayanza', 'KY', 1),
(559, 35, 'Kirundo', 'KI', 1),
(560, 35, 'Makamba', 'MA', 1),
(561, 35, 'Muramvya', 'MU', 1),
(562, 35, 'Muyinga', 'MY', 1),
(563, 35, 'Mwaro', 'MW', 1),
(564, 35, 'Ngozi', 'NG', 1),
(565, 35, 'Rutana', 'RT', 1),
(566, 35, 'Ruyigi', 'RY', 1),
(567, 36, 'Phnom Penh', 'PP', 1),
(568, 36, 'Preah Seihanu (Kompong Som or Sihanoukville)', 'PS', 1),
(569, 36, 'Pailin', 'PA', 1),
(570, 36, 'Keb', 'KB', 1),
(571, 36, 'Banteay Meanchey', 'BM', 1),
(572, 36, 'Battambang', 'BA', 1),
(573, 36, 'Kampong Cham', 'KM', 1),
(574, 36, 'Kampong Chhnang', 'KN', 1),
(575, 36, 'Kampong Speu', 'KU', 1),
(576, 36, 'Kampong Som', 'KO', 1),
(577, 36, 'Kampong Thom', 'KT', 1),
(578, 36, 'Kampot', 'KP', 1),
(579, 36, 'Kandal', 'KL', 1),
(580, 36, 'Kaoh Kong', 'KK', 1),
(581, 36, 'Kratie', 'KR', 1),
(582, 36, 'Mondul Kiri', 'MK', 1),
(583, 36, 'Oddar Meancheay', 'OM', 1),
(584, 36, 'Pursat', 'PU', 1),
(585, 36, 'Preah Vihear', 'PR', 1),
(586, 36, 'Prey Veng', 'PG', 1),
(587, 36, 'Ratanak Kiri', 'RK', 1),
(588, 36, 'Siemreap', 'SI', 1),
(589, 36, 'Stung Treng', 'ST', 1),
(590, 36, 'Svay Rieng', 'SR', 1),
(591, 36, 'Takeo', 'TK', 1),
(592, 37, 'Adamawa (Adamaoua)', 'ADA', 1),
(593, 37, 'Centre', 'CEN', 1),
(594, 37, 'East (Est)', 'EST', 1),
(595, 37, 'Extreme North (Extreme-Nord)', 'EXN', 1),
(596, 37, 'Littoral', 'LIT', 1),
(597, 37, 'North (Nord)', 'NOR', 1),
(598, 37, 'Northwest (Nord-Ouest)', 'NOT', 1),
(599, 37, 'West (Ouest)', 'OUE', 1),
(600, 37, 'South (Sud)', 'SUD', 1),
(601, 37, 'Southwest (Sud-Ouest).', 'SOU', 1),
(602, 38, 'Alberta', 'AB', 1),
(603, 38, 'British Columbia', 'BC', 1),
(604, 38, 'Manitoba', 'MB', 1),
(605, 38, 'New Brunswick', 'NB', 1),
(606, 38, 'Newfoundland and Labrador', 'NL', 1),
(607, 38, 'Northwest Territories', 'NT', 1),
(608, 38, 'Nova Scotia', 'NS', 1),
(609, 38, 'Nunavut', 'NU', 1),
(610, 38, 'Ontario', 'ON', 1),
(611, 38, 'Prince Edward Island', 'PE', 1),
(612, 38, 'Qu&eacute;bec', 'QC', 1),
(613, 38, 'Saskatchewan', 'SK', 1),
(614, 38, 'Yukon Territory', 'YT', 1),
(615, 39, 'Boa Vista', 'BV', 1),
(616, 39, 'Brava', 'BR', 1),
(617, 39, 'Calheta de Sao Miguel', 'CS', 1),
(618, 39, 'Maio', 'MA', 1),
(619, 39, 'Mosteiros', 'MO', 1),
(620, 39, 'Paul', 'PA', 1),
(621, 39, 'Porto Novo', 'PN', 1),
(622, 39, 'Praia', 'PR', 1),
(623, 39, 'Ribeira Grande', 'RG', 1),
(624, 39, 'Sal', 'SL', 1),
(625, 39, 'Santa Catarina', 'CA', 1),
(626, 39, 'Santa Cruz', 'CR', 1),
(627, 39, 'Sao Domingos', 'SD', 1),
(628, 39, 'Sao Filipe', 'SF', 1),
(629, 39, 'Sao Nicolau', 'SN', 1),
(630, 39, 'Sao Vicente', 'SV', 1),
(631, 39, 'Tarrafal', 'TA', 1),
(632, 40, 'Creek', 'CR', 1),
(633, 40, 'Eastern', 'EA', 1),
(634, 40, 'Midland', 'ML', 1),
(635, 40, 'South Town', 'ST', 1),
(636, 40, 'Spot Bay', 'SP', 1),
(637, 40, 'Stake Bay', 'SK', 1),
(638, 40, 'West End', 'WD', 1),
(639, 40, 'Western', 'WN', 1),
(640, 41, 'Bamingui-Bangoran', 'BBA', 1),
(641, 41, 'Basse-Kotto', 'BKO', 1),
(642, 41, 'Haute-Kotto', 'HKO', 1),
(643, 41, 'Haut-Mbomou', 'HMB', 1),
(644, 41, 'Kemo', 'KEM', 1),
(645, 41, 'Lobaye', 'LOB', 1),
(646, 41, 'Mambere-KadeÔ', 'MKD', 1),
(647, 41, 'Mbomou', 'MBO', 1),
(648, 41, 'Nana-Mambere', 'NMM', 1),
(649, 41, 'Ombella-M''Poko', 'OMP', 1),
(650, 41, 'Ouaka', 'OUK', 1),
(651, 41, 'Ouham', 'OUH', 1),
(652, 41, 'Ouham-Pende', 'OPE', 1),
(653, 41, 'Vakaga', 'VAK', 1),
(654, 41, 'Nana-Grebizi', 'NGR', 1),
(655, 41, 'Sangha-Mbaere', 'SMB', 1),
(656, 41, 'Bangui', 'BAN', 1),
(657, 42, 'Batha', 'BA', 1),
(658, 42, 'Biltine', 'BI', 1),
(659, 42, 'Borkou-Ennedi-Tibesti', 'BE', 1),
(660, 42, 'Chari-Baguirmi', 'CB', 1),
(661, 42, 'Guera', 'GU', 1),
(662, 42, 'Kanem', 'KA', 1),
(663, 42, 'Lac', 'LA', 1),
(664, 42, 'Logone Occidental', 'LC', 1),
(665, 42, 'Logone Oriental', 'LR', 1),
(666, 42, 'Mayo-Kebbi', 'MK', 1),
(667, 42, 'Moyen-Chari', 'MC', 1),
(668, 42, 'Ouaddai', 'OU', 1),
(669, 42, 'Salamat', 'SA', 1),
(670, 42, 'Tandjile', 'TA', 1),
(671, 43, 'Aisen del General Carlos Ibanez', 'AI', 1),
(672, 43, 'Antofagasta', 'AN', 1),
(673, 43, 'Araucania', 'AR', 1),
(674, 43, 'Atacama', 'AT', 1),
(675, 43, 'Bio-Bio', 'BI', 1),
(676, 43, 'Coquimbo', 'CO', 1),
(677, 43, 'Libertador General Bernardo O''Higgins', 'LI', 1),
(678, 43, 'Los Lagos', 'LL', 1),
(679, 43, 'Magallanes y de la Antartica Chilena', 'MA', 1),
(680, 43, 'Maule', 'ML', 1),
(681, 43, 'Region Metropolitana', 'RM', 1),
(682, 43, 'Tarapaca', 'TA', 1),
(683, 43, 'Valparaiso', 'VS', 1),
(684, 44, 'Anhui', 'AN', 1),
(685, 44, 'Beijing', 'BE', 1),
(686, 44, 'Chongqing', 'CH', 1),
(687, 44, 'Fujian', 'FU', 1),
(688, 44, 'Gansu', 'GA', 1),
(689, 44, 'Guangdong', 'GU', 1),
(690, 44, 'Guangxi', 'GX', 1),
(691, 44, 'Guizhou', 'GZ', 1),
(692, 44, 'Hainan', 'HA', 1),
(693, 44, 'Hebei', 'HB', 1),
(694, 44, 'Heilongjiang', 'HL', 1),
(695, 44, 'Henan', 'HE', 1),
(696, 44, 'Hong Kong', 'HK', 1),
(697, 44, 'Hubei', 'HU', 1),
(698, 44, 'Hunan', 'HN', 1),
(699, 44, 'Inner Mongolia', 'IM', 1),
(700, 44, 'Jiangsu', 'JI', 1),
(701, 44, 'Jiangxi', 'JX', 1),
(702, 44, 'Jilin', 'JL', 1),
(703, 44, 'Liaoning', 'LI', 1),
(704, 44, 'Macau', 'MA', 1),
(705, 44, 'Ningxia', 'NI', 1),
(706, 44, 'Shaanxi', 'SH', 1),
(707, 44, 'Shandong', 'SA', 1),
(708, 44, 'Shanghai', 'SG', 1),
(709, 44, 'Shanxi', 'SX', 1),
(710, 44, 'Sichuan', 'SI', 1),
(711, 44, 'Tianjin', 'TI', 1),
(712, 44, 'Xinjiang', 'XI', 1),
(713, 44, 'Yunnan', 'YU', 1),
(714, 44, 'Zhejiang', 'ZH', 1),
(715, 46, 'Direction Island', 'D', 1),
(716, 46, 'Home Island', 'H', 1),
(717, 46, 'Horsburgh Island', 'O', 1),
(718, 46, 'South Island', 'S', 1),
(719, 46, 'West Island', 'W', 1),
(720, 47, 'Amazonas', 'AMZ', 1),
(721, 47, 'Antioquia', 'ANT', 1),
(722, 47, 'Arauca', 'ARA', 1),
(723, 47, 'Atlantico', 'ATL', 1),
(724, 47, 'Bogota D.C.', 'BDC', 1),
(725, 47, 'Bolivar', 'BOL', 1),
(726, 47, 'Boyaca', 'BOY', 1),
(727, 47, 'Caldas', 'CAL', 1),
(728, 47, 'Caqueta', 'CAQ', 1),
(729, 47, 'Casanare', 'CAS', 1),
(730, 47, 'Cauca', 'CAU', 1),
(731, 47, 'Cesar', 'CES', 1),
(732, 47, 'Choco', 'CHO', 1),
(733, 47, 'Cordoba', 'COR', 1),
(734, 47, 'Cundinamarca', 'CAM', 1),
(735, 47, 'Guainia', 'GNA', 1),
(736, 47, 'Guajira', 'GJR', 1),
(737, 47, 'Guaviare', 'GVR', 1),
(738, 47, 'Huila', 'HUI', 1),
(739, 47, 'Magdalena', 'MAG', 1),
(740, 47, 'Meta', 'MET', 1),
(741, 47, 'Narino', 'NAR', 1),
(742, 47, 'Norte de Santander', 'NDS', 1),
(743, 47, 'Putumayo', 'PUT', 1),
(744, 47, 'Quindio', 'QUI', 1),
(745, 47, 'Risaralda', 'RIS', 1),
(746, 47, 'San Andres y Providencia', 'SAP', 1),
(747, 47, 'Santander', 'SAN', 1),
(748, 47, 'Sucre', 'SUC', 1),
(749, 47, 'Tolima', 'TOL', 1),
(750, 47, 'Valle del Cauca', 'VDC', 1),
(751, 47, 'Vaupes', 'VAU', 1),
(752, 47, 'Vichada', 'VIC', 1),
(753, 48, 'Grande Comore', 'G', 1),
(754, 48, 'Anjouan', 'A', 1),
(755, 48, 'Moheli', 'M', 1),
(756, 49, 'Bouenza', 'BO', 1),
(757, 49, 'Brazzaville', 'BR', 1),
(758, 49, 'Cuvette', 'CU', 1),
(759, 49, 'Cuvette-Ouest', 'CO', 1),
(760, 49, 'Kouilou', 'KO', 1),
(761, 49, 'Lekoumou', 'LE', 1),
(762, 49, 'Likouala', 'LI', 1),
(763, 49, 'Niari', 'NI', 1),
(764, 49, 'Plateaux', 'PL', 1),
(765, 49, 'Pool', 'PO', 1),
(766, 49, 'Sangha', 'SA', 1),
(767, 50, 'Pukapuka', 'PU', 1),
(768, 50, 'Rakahanga', 'RK', 1),
(769, 50, 'Manihiki', 'MK', 1),
(770, 50, 'Penrhyn', 'PE', 1),
(771, 50, 'Nassau Island', 'NI', 1),
(772, 50, 'Surwarrow', 'SU', 1),
(773, 50, 'Palmerston', 'PA', 1),
(774, 50, 'Aitutaki', 'AI', 1),
(775, 50, 'Manuae', 'MA', 1),
(776, 50, 'Takutea', 'TA', 1),
(777, 50, 'Mitiaro', 'MT', 1),
(778, 50, 'Atiu', 'AT', 1),
(779, 50, 'Mauke', 'MU', 1),
(780, 50, 'Rarotonga', 'RR', 1),
(781, 50, 'Mangaia', 'MG', 1),
(782, 51, 'Alajuela', 'AL', 1),
(783, 51, 'Cartago', 'CA', 1),
(784, 51, 'Guanacaste', 'GU', 1),
(785, 51, 'Heredia', 'HE', 1),
(786, 51, 'Limon', 'LI', 1),
(787, 51, 'Puntarenas', 'PU', 1),
(788, 51, 'San Jose', 'SJ', 1),
(789, 52, 'Abengourou', 'ABE', 1),
(790, 52, 'Abidjan', 'ABI', 1),
(791, 52, 'Aboisso', 'ABO', 1),
(792, 52, 'Adiake', 'ADI', 1),
(793, 52, 'Adzope', 'ADZ', 1),
(794, 52, 'Agboville', 'AGB', 1),
(795, 52, 'Agnibilekrou', 'AGN', 1),
(796, 52, 'Alepe', 'ALE', 1),
(797, 52, 'Bocanda', 'BOC', 1),
(798, 52, 'Bangolo', 'BAN', 1),
(799, 52, 'Beoumi', 'BEO', 1),
(800, 52, 'Biankouma', 'BIA', 1),
(801, 52, 'Bondoukou', 'BDK', 1),
(802, 52, 'Bongouanou', 'BGN', 1),
(803, 52, 'Bouafle', 'BFL', 1),
(804, 52, 'Bouake', 'BKE', 1),
(805, 52, 'Bouna', 'BNA', 1),
(806, 52, 'Boundiali', 'BDL', 1),
(807, 52, 'Dabakala', 'DKL', 1),
(808, 52, 'Dabou', 'DBU', 1),
(809, 52, 'Daloa', 'DAL', 1),
(810, 52, 'Danane', 'DAN', 1),
(811, 52, 'Daoukro', 'DAO', 1),
(812, 52, 'Dimbokro', 'DIM', 1),
(813, 52, 'Divo', 'DIV', 1),
(814, 52, 'Duekoue', 'DUE', 1),
(815, 52, 'Ferkessedougou', 'FER', 1),
(816, 52, 'Gagnoa', 'GAG', 1),
(817, 52, 'Grand-Bassam', 'GBA', 1),
(818, 52, 'Grand-Lahou', 'GLA', 1),
(819, 52, 'Guiglo', 'GUI', 1),
(820, 52, 'Issia', 'ISS', 1),
(821, 52, 'Jacqueville', 'JAC', 1),
(822, 52, 'Katiola', 'KAT', 1),
(823, 52, 'Korhogo', 'KOR', 1),
(824, 52, 'Lakota', 'LAK', 1),
(825, 52, 'Man', 'MAN', 1),
(826, 52, 'Mankono', 'MKN', 1),
(827, 52, 'Mbahiakro', 'MBA', 1),
(828, 52, 'Odienne', 'ODI', 1),
(829, 52, 'Oume', 'OUM', 1),
(830, 52, 'Sakassou', 'SAK', 1),
(831, 52, 'San-Pedro', 'SPE', 1),
(832, 52, 'Sassandra', 'SAS', 1),
(833, 52, 'Seguela', 'SEG', 1),
(834, 52, 'Sinfra', 'SIN', 1),
(835, 52, 'Soubre', 'SOU', 1),
(836, 52, 'Tabou', 'TAB', 1),
(837, 52, 'Tanda', 'TAN', 1),
(838, 52, 'Tiebissou', 'TIE', 1),
(839, 52, 'Tingrela', 'TIN', 1),
(840, 52, 'Tiassale', 'TIA', 1),
(841, 52, 'Touba', 'TBA', 1),
(842, 52, 'Toulepleu', 'TLP', 1),
(843, 52, 'Toumodi', 'TMD', 1),
(844, 52, 'Vavoua', 'VAV', 1),
(845, 52, 'Yamoussoukro', 'YAM', 1),
(846, 52, 'Zuenoula', 'ZUE', 1),
(847, 53, 'Bjelovarsko-bilogorska', 'BB', 1),
(848, 53, 'Grad Zagreb', 'GZ', 1),
(849, 53, 'Dubrovačko-neretvanska', 'DN', 1),
(850, 53, 'Istarska', 'IS', 1),
(851, 53, 'Karlovačka', 'KA', 1),
(852, 53, 'Koprivničko-križevačka', 'KK', 1),
(853, 53, 'Krapinsko-zagorska', 'KZ', 1),
(854, 53, 'Ličko-senjska', 'LS', 1),
(855, 53, 'Međimurska', 'ME', 1),
(856, 53, 'Osječko-baranjska', 'OB', 1),
(857, 53, 'Požeško-slavonska', 'PS', 1),
(858, 53, 'Primorsko-goranska', 'PG', 1),
(859, 53, 'Šibensko-kninska', 'SK', 1),
(860, 53, 'Sisačko-moslavačka', 'SM', 1),
(861, 53, 'Brodsko-posavska', 'BP', 1),
(862, 53, 'Splitsko-dalmatinska', 'SD', 1),
(863, 53, 'Varaždinska', 'VA', 1),
(864, 53, 'Virovitičko-podravska', 'VP', 1),
(865, 53, 'Vukovarsko-srijemska', 'VS', 1),
(866, 53, 'Zadarska', 'ZA', 1),
(867, 53, 'Zagrebačka', 'ZG', 1),
(868, 54, 'Camaguey', 'CA', 1),
(869, 54, 'Ciego de Avila', 'CD', 1),
(870, 54, 'Cienfuegos', 'CI', 1),
(871, 54, 'Ciudad de La Habana', 'CH', 1),
(872, 54, 'Granma', 'GR', 1),
(873, 54, 'Guantanamo', 'GU', 1),
(874, 54, 'Holguin', 'HO', 1),
(875, 54, 'Isla de la Juventud', 'IJ', 1),
(876, 54, 'La Habana', 'LH', 1),
(877, 54, 'Las Tunas', 'LT', 1),
(878, 54, 'Matanzas', 'MA', 1),
(879, 54, 'Pinar del Rio', 'PR', 1),
(880, 54, 'Sancti Spiritus', 'SS', 1),
(881, 54, 'Santiago de Cuba', 'SC', 1),
(882, 54, 'Villa Clara', 'VC', 1),
(883, 55, 'Famagusta', 'F', 1),
(884, 55, 'Kyrenia', 'K', 1),
(885, 55, 'Larnaca', 'A', 1),
(886, 55, 'Limassol', 'I', 1),
(887, 55, 'Nicosia', 'N', 1),
(888, 55, 'Paphos', 'P', 1),
(889, 56, 'Ústecký', 'U', 1),
(890, 56, 'Jihočeský', 'C', 1),
(891, 56, 'Jihomoravský', 'B', 1),
(892, 56, 'Karlovarský', 'K', 1),
(893, 56, 'Královehradecký', 'H', 1),
(894, 56, 'Liberecký', 'L', 1),
(895, 56, 'Moravskoslezský', 'T', 1),
(896, 56, 'Olomoucký', 'M', 1),
(897, 56, 'Pardubický', 'E', 1),
(898, 56, 'Plzeňský', 'P', 1),
(899, 56, 'Praha', 'A', 1),
(900, 56, 'Středočeský', 'S', 1),
(901, 56, 'Vysočina', 'J', 1),
(902, 56, 'Zlínský', 'Z', 1),
(903, 57, 'Arhus', 'AR', 1),
(904, 57, 'Bornholm', 'BH', 1),
(905, 57, 'Copenhagen', 'CO', 1),
(906, 57, 'Faroe Islands', 'FO', 1),
(907, 57, 'Frederiksborg', 'FR', 1),
(908, 57, 'Fyn', 'FY', 1),
(909, 57, 'Kobenhavn', 'KO', 1),
(910, 57, 'Nordjylland', 'NO', 1),
(911, 57, 'Ribe', 'RI', 1),
(912, 57, 'Ringkobing', 'RK', 1),
(913, 57, 'Roskilde', 'RO', 1),
(914, 57, 'Sonderjylland', 'SO', 1),
(915, 57, 'Storstrom', 'ST', 1),
(916, 57, 'Vejle', 'VK', 1),
(917, 57, 'Vestj&aelig;lland', 'VJ', 1),
(918, 57, 'Viborg', 'VB', 1),
(919, 58, '''Ali Sabih', 'S', 1),
(920, 58, 'Dikhil', 'K', 1),
(921, 58, 'Djibouti', 'J', 1),
(922, 58, 'Obock', 'O', 1),
(923, 58, 'Tadjoura', 'T', 1),
(924, 59, 'Saint Andrew Parish', 'AND', 1),
(925, 59, 'Saint David Parish', 'DAV', 1),
(926, 59, 'Saint George Parish', 'GEO', 1),
(927, 59, 'Saint John Parish', 'JOH', 1),
(928, 59, 'Saint Joseph Parish', 'JOS', 1),
(929, 59, 'Saint Luke Parish', 'LUK', 1),
(930, 59, 'Saint Mark Parish', 'MAR', 1),
(931, 59, 'Saint Patrick Parish', 'PAT', 1),
(932, 59, 'Saint Paul Parish', 'PAU', 1),
(933, 59, 'Saint Peter Parish', 'PET', 1),
(934, 60, 'Distrito Nacional', 'DN', 1),
(935, 60, 'Azua', 'AZ', 1),
(936, 60, 'Baoruco', 'BC', 1),
(937, 60, 'Barahona', 'BH', 1),
(938, 60, 'Dajabon', 'DJ', 1),
(939, 60, 'Duarte', 'DU', 1),
(940, 60, 'Elias Pina', 'EL', 1),
(941, 60, 'El Seybo', 'SY', 1),
(942, 60, 'Espaillat', 'ET', 1),
(943, 60, 'Hato Mayor', 'HM', 1),
(944, 60, 'Independencia', 'IN', 1),
(945, 60, 'La Altagracia', 'AL', 1),
(946, 60, 'La Romana', 'RO', 1),
(947, 60, 'La Vega', 'VE', 1),
(948, 60, 'Maria Trinidad Sanchez', 'MT', 1),
(949, 60, 'Monsenor Nouel', 'MN', 1),
(950, 60, 'Monte Cristi', 'MC', 1),
(951, 60, 'Monte Plata', 'MP', 1),
(952, 60, 'Pedernales', 'PD', 1),
(953, 60, 'Peravia (Bani)', 'PR', 1),
(954, 60, 'Puerto Plata', 'PP', 1),
(955, 60, 'Salcedo', 'SL', 1),
(956, 60, 'Samana', 'SM', 1),
(957, 60, 'Sanchez Ramirez', 'SH', 1),
(958, 60, 'San Cristobal', 'SC', 1),
(959, 60, 'San Jose de Ocoa', 'JO', 1),
(960, 60, 'San Juan', 'SJ', 1),
(961, 60, 'San Pedro de Macoris', 'PM', 1),
(962, 60, 'Santiago', 'SA', 1),
(963, 60, 'Santiago Rodriguez', 'ST', 1),
(964, 60, 'Santo Domingo', 'SD', 1),
(965, 60, 'Valverde', 'VA', 1),
(966, 61, 'Aileu', 'AL', 1),
(967, 61, 'Ainaro', 'AN', 1),
(968, 61, 'Baucau', 'BA', 1),
(969, 61, 'Bobonaro', 'BO', 1),
(970, 61, 'Cova Lima', 'CO', 1),
(971, 61, 'Dili', 'DI', 1),
(972, 61, 'Ermera', 'ER', 1),
(973, 61, 'Lautem', 'LA', 1),
(974, 61, 'Liquica', 'LI', 1),
(975, 61, 'Manatuto', 'MT', 1),
(976, 61, 'Manufahi', 'MF', 1),
(977, 61, 'Oecussi', 'OE', 1),
(978, 61, 'Viqueque', 'VI', 1),
(979, 62, 'Azuay', 'AZU', 1),
(980, 62, 'Bolivar', 'BOL', 1),
(981, 62, 'Ca&ntilde;ar', 'CAN', 1),
(982, 62, 'Carchi', 'CAR', 1),
(983, 62, 'Chimborazo', 'CHI', 1),
(984, 62, 'Cotopaxi', 'COT', 1),
(985, 62, 'El Oro', 'EOR', 1),
(986, 62, 'Esmeraldas', 'ESM', 1),
(987, 62, 'Gal&aacute;pagos', 'GPS', 1),
(988, 62, 'Guayas', 'GUA', 1),
(989, 62, 'Imbabura', 'IMB', 1),
(990, 62, 'Loja', 'LOJ', 1),
(991, 62, 'Los Rios', 'LRO', 1),
(992, 62, 'Manab&iacute;', 'MAN', 1),
(993, 62, 'Morona Santiago', 'MSA', 1),
(994, 62, 'Napo', 'NAP', 1),
(995, 62, 'Orellana', 'ORE', 1),
(996, 62, 'Pastaza', 'PAS', 1),
(997, 62, 'Pichincha', 'PIC', 1),
(998, 62, 'Sucumb&iacute;os', 'SUC', 1),
(999, 62, 'Tungurahua', 'TUN', 1),
(1000, 62, 'Zamora Chinchipe', 'ZCH', 1),
(1001, 63, 'Ad Daqahliyah', 'DHY', 1),
(1002, 63, 'Al Bahr al Ahmar', 'BAM', 1),
(1003, 63, 'Al Buhayrah', 'BHY', 1),
(1004, 63, 'Al Fayyum', 'FYM', 1),
(1005, 63, 'Al Gharbiyah', 'GBY', 1),
(1006, 63, 'Al Iskandariyah', 'IDR', 1),
(1007, 63, 'Al Isma''iliyah', 'IML', 1),
(1008, 63, 'Al Jizah', 'JZH', 1),
(1009, 63, 'Al Minufiyah', 'MFY', 1),
(1010, 63, 'Al Minya', 'MNY', 1),
(1011, 63, 'Al Qahirah', 'QHR', 1),
(1012, 63, 'Al Qalyubiyah', 'QLY', 1),
(1013, 63, 'Al Wadi al Jadid', 'WJD', 1),
(1014, 63, 'Ash Sharqiyah', 'SHQ', 1),
(1015, 63, 'As Suways', 'SWY', 1),
(1016, 63, 'Aswan', 'ASW', 1),
(1017, 63, 'Asyut', 'ASY', 1),
(1018, 63, 'Bani Suwayf', 'BSW', 1),
(1019, 63, 'Bur Sa''id', 'BSD', 1),
(1020, 63, 'Dumyat', 'DMY', 1),
(1021, 63, 'Janub Sina''', 'JNS', 1),
(1022, 63, 'Kafr ash Shaykh', 'KSH', 1),
(1023, 63, 'Matruh', 'MAT', 1),
(1024, 63, 'Qina', 'QIN', 1),
(1025, 63, 'Shamal Sina''', 'SHS', 1),
(1026, 63, 'Suhaj', 'SUH', 1),
(1027, 64, 'Ahuachapan', 'AH', 1),
(1028, 64, 'Cabanas', 'CA', 1),
(1029, 64, 'Chalatenango', 'CH', 1),
(1030, 64, 'Cuscatlan', 'CU', 1),
(1031, 64, 'La Libertad', 'LB', 1),
(1032, 64, 'La Paz', 'PZ', 1),
(1033, 64, 'La Union', 'UN', 1),
(1034, 64, 'Morazan', 'MO', 1),
(1035, 64, 'San Miguel', 'SM', 1),
(1036, 64, 'San Salvador', 'SS', 1),
(1037, 64, 'San Vicente', 'SV', 1),
(1038, 64, 'Santa Ana', 'SA', 1),
(1039, 64, 'Sonsonate', 'SO', 1),
(1040, 64, 'Usulutan', 'US', 1),
(1041, 65, 'Provincia Annobon', 'AN', 1),
(1042, 65, 'Provincia Bioko Norte', 'BN', 1),
(1043, 65, 'Provincia Bioko Sur', 'BS', 1),
(1044, 65, 'Provincia Centro Sur', 'CS', 1),
(1045, 65, 'Provincia Kie-Ntem', 'KN', 1),
(1046, 65, 'Provincia Litoral', 'LI', 1),
(1047, 65, 'Provincia Wele-Nzas', 'WN', 1),
(1048, 66, 'Central (Maekel)', 'MA', 1),
(1049, 66, 'Anseba (Keren)', 'KE', 1),
(1050, 66, 'Southern Red Sea (Debub-Keih-Bahri)', 'DK', 1),
(1051, 66, 'Northern Red Sea (Semien-Keih-Bahri)', 'SK', 1),
(1052, 66, 'Southern (Debub)', 'DE', 1),
(1053, 66, 'Gash-Barka (Barentu)', 'BR', 1),
(1054, 67, 'Harjumaa (Tallinn)', 'HA', 1),
(1055, 67, 'Hiiumaa (Kardla)', 'HI', 1),
(1056, 67, 'Ida-Virumaa (Johvi)', 'IV', 1),
(1057, 67, 'Jarvamaa (Paide)', 'JA', 1),
(1058, 67, 'Jogevamaa (Jogeva)', 'JO', 1),
(1059, 67, 'Laane-Virumaa (Rakvere)', 'LV', 1),
(1060, 67, 'Laanemaa (Haapsalu)', 'LA', 1),
(1061, 67, 'Parnumaa (Parnu)', 'PA', 1),
(1062, 67, 'Polvamaa (Polva)', 'PO', 1),
(1063, 67, 'Raplamaa (Rapla)', 'RA', 1),
(1064, 67, 'Saaremaa (Kuessaare)', 'SA', 1),
(1065, 67, 'Tartumaa (Tartu)', 'TA', 1),
(1066, 67, 'Valgamaa (Valga)', 'VA', 1),
(1067, 67, 'Viljandimaa (Viljandi)', 'VI', 1),
(1068, 67, 'Vorumaa (Voru)', 'VO', 1),
(1069, 68, 'Afar', 'AF', 1),
(1070, 68, 'Amhara', 'AH', 1),
(1071, 68, 'Benishangul-Gumaz', 'BG', 1),
(1072, 68, 'Gambela', 'GB', 1),
(1073, 68, 'Hariai', 'HR', 1),
(1074, 68, 'Oromia', 'OR', 1),
(1075, 68, 'Somali', 'SM', 1),
(1076, 68, 'Southern Nations - Nationalities and Peoples Region', 'SN', 1),
(1077, 68, 'Tigray', 'TG', 1),
(1078, 68, 'Addis Ababa', 'AA', 1),
(1079, 68, 'Dire Dawa', 'DD', 1),
(1080, 71, 'Central Division', 'C', 1),
(1081, 71, 'Northern Division', 'N', 1),
(1082, 71, 'Eastern Division', 'E', 1),
(1083, 71, 'Western Division', 'W', 1),
(1084, 71, 'Rotuma', 'R', 1),
(1085, 72, 'Ahvenanmaan lääni', 'AL', 1),
(1086, 72, 'Etelä-Suomen lääni', 'ES', 1),
(1087, 72, 'Itä-Suomen lääni', 'IS', 1),
(1088, 72, 'Länsi-Suomen lääni', 'LS', 1),
(1089, 72, 'Lapin lääni', 'LA', 1),
(1090, 72, 'Oulun lääni', 'OU', 1),
(1114, 74, 'Ain', '01', 1),
(1115, 74, 'Aisne', '02', 1),
(1116, 74, 'Allier', '03', 1),
(1117, 74, 'Alpes de Haute Provence', '04', 1),
(1118, 74, 'Hautes-Alpes', '05', 1),
(1119, 74, 'Alpes Maritimes', '06', 1),
(1120, 74, 'Ard&egrave;che', '07', 1),
(1121, 74, 'Ardennes', '08', 1),
(1122, 74, 'Ari&egrave;ge', '09', 1),
(1123, 74, 'Aube', '10', 1),
(1124, 74, 'Aude', '11', 1),
(1125, 74, 'Aveyron', '12', 1),
(1126, 74, 'Bouches du Rh&ocirc;ne', '13', 1),
(1127, 74, 'Calvados', '14', 1),
(1128, 74, 'Cantal', '15', 1),
(1129, 74, 'Charente', '16', 1),
(1130, 74, 'Charente Maritime', '17', 1),
(1131, 74, 'Cher', '18', 1),
(1132, 74, 'Corr&egrave;ze', '19', 1),
(1133, 74, 'Corse du Sud', '2A', 1),
(1134, 74, 'Haute Corse', '2B', 1),
(1135, 74, 'C&ocirc;te d&#039;or', '21', 1),
(1136, 74, 'C&ocirc;tes d&#039;Armor', '22', 1),
(1137, 74, 'Creuse', '23', 1),
(1138, 74, 'Dordogne', '24', 1),
(1139, 74, 'Doubs', '25', 1),
(1140, 74, 'Dr&ocirc;me', '26', 1),
(1141, 74, 'Eure', '27', 1),
(1142, 74, 'Eure et Loir', '28', 1),
(1143, 74, 'Finist&egrave;re', '29', 1),
(1144, 74, 'Gard', '30', 1),
(1145, 74, 'Haute Garonne', '31', 1),
(1146, 74, 'Gers', '32', 1),
(1147, 74, 'Gironde', '33', 1),
(1148, 74, 'H&eacute;rault', '34', 1),
(1149, 74, 'Ille et Vilaine', '35', 1),
(1150, 74, 'Indre', '36', 1),
(1151, 74, 'Indre et Loire', '37', 1),
(1152, 74, 'Is&eacute;re', '38', 1),
(1153, 74, 'Jura', '39', 1),
(1154, 74, 'Landes', '40', 1),
(1155, 74, 'Loir et Cher', '41', 1),
(1156, 74, 'Loire', '42', 1),
(1157, 74, 'Haute Loire', '43', 1),
(1158, 74, 'Loire Atlantique', '44', 1),
(1159, 74, 'Loiret', '45', 1),
(1160, 74, 'Lot', '46', 1),
(1161, 74, 'Lot et Garonne', '47', 1),
(1162, 74, 'Loz&egrave;re', '48', 1),
(1163, 74, 'Maine et Loire', '49', 1),
(1164, 74, 'Manche', '50', 1),
(1165, 74, 'Marne', '51', 1),
(1166, 74, 'Haute Marne', '52', 1),
(1167, 74, 'Mayenne', '53', 1),
(1168, 74, 'Meurthe et Moselle', '54', 1),
(1169, 74, 'Meuse', '55', 1),
(1170, 74, 'Morbihan', '56', 1),
(1171, 74, 'Moselle', '57', 1),
(1172, 74, 'Ni&egrave;vre', '58', 1),
(1173, 74, 'Nord', '59', 1),
(1174, 74, 'Oise', '60', 1),
(1175, 74, 'Orne', '61', 1),
(1176, 74, 'Pas de Calais', '62', 1),
(1177, 74, 'Puy de D&ocirc;me', '63', 1),
(1178, 74, 'Pyr&eacute;n&eacute;es Atlantiques', '64', 1),
(1179, 74, 'Hautes Pyr&eacute;n&eacute;es', '65', 1),
(1180, 74, 'Pyr&eacute;n&eacute;es Orientales', '66', 1),
(1181, 74, 'Bas Rhin', '67', 1),
(1182, 74, 'Haut Rhin', '68', 1),
(1183, 74, 'Rh&ocirc;ne', '69', 1),
(1184, 74, 'Haute Sa&ocirc;ne', '70', 1),
(1185, 74, 'Sa&ocirc;ne et Loire', '71', 1),
(1186, 74, 'Sarthe', '72', 1),
(1187, 74, 'Savoie', '73', 1),
(1188, 74, 'Haute Savoie', '74', 1),
(1189, 74, 'Paris', '75', 1),
(1190, 74, 'Seine Maritime', '76', 1),
(1191, 74, 'Seine et Marne', '77', 1),
(1192, 74, 'Yvelines', '78', 1),
(1193, 74, 'Deux S&egrave;vres', '79', 1),
(1194, 74, 'Somme', '80', 1),
(1195, 74, 'Tarn', '81', 1),
(1196, 74, 'Tarn et Garonne', '82', 1),
(1197, 74, 'Var', '83', 1),
(1198, 74, 'Vaucluse', '84', 1),
(1199, 74, 'Vend&eacute;e', '85', 1),
(1200, 74, 'Vienne', '86', 1),
(1201, 74, 'Haute Vienne', '87', 1),
(1202, 74, 'Vosges', '88', 1),
(1203, 74, 'Yonne', '89', 1),
(1204, 74, 'Territoire de Belfort', '90', 1),
(1205, 74, 'Essonne', '91', 1),
(1206, 74, 'Hauts de Seine', '92', 1),
(1207, 74, 'Seine St-Denis', '93', 1),
(1208, 74, 'Val de Marne', '94', 1),
(1209, 74, 'Val d''Oise', '95', 1),
(1210, 76, 'Archipel des Marquises', 'M', 1),
(1211, 76, 'Archipel des Tuamotu', 'T', 1),
(1212, 76, 'Archipel des Tubuai', 'I', 1),
(1213, 76, 'Iles du Vent', 'V', 1),
(1214, 76, 'Iles Sous-le-Vent', 'S', 1),
(1215, 77, 'Iles Crozet', 'C', 1),
(1216, 77, 'Iles Kerguelen', 'K', 1),
(1217, 77, 'Ile Amsterdam', 'A', 1),
(1218, 77, 'Ile Saint-Paul', 'P', 1),
(1219, 77, 'Adelie Land', 'D', 1),
(1220, 78, 'Estuaire', 'ES', 1),
(1221, 78, 'Haut-Ogooue', 'HO', 1),
(1222, 78, 'Moyen-Ogooue', 'MO', 1),
(1223, 78, 'Ngounie', 'NG', 1),
(1224, 78, 'Nyanga', 'NY', 1),
(1225, 78, 'Ogooue-Ivindo', 'OI', 1),
(1226, 78, 'Ogooue-Lolo', 'OL', 1),
(1227, 78, 'Ogooue-Maritime', 'OM', 1),
(1228, 78, 'Woleu-Ntem', 'WN', 1),
(1229, 79, 'Banjul', 'BJ', 1),
(1230, 79, 'Basse', 'BS', 1),
(1231, 79, 'Brikama', 'BR', 1),
(1232, 79, 'Janjangbure', 'JA', 1),
(1233, 79, 'Kanifeng', 'KA', 1),
(1234, 79, 'Kerewan', 'KE', 1),
(1235, 79, 'Kuntaur', 'KU', 1),
(1236, 79, 'Mansakonko', 'MA', 1),
(1237, 79, 'Lower River', 'LR', 1),
(1238, 79, 'Central River', 'CR', 1),
(1239, 79, 'North Bank', 'NB', 1),
(1240, 79, 'Upper River', 'UR', 1),
(1241, 79, 'Western', 'WE', 1),
(1242, 80, 'Abkhazia', 'AB', 1),
(1243, 80, 'Ajaria', 'AJ', 1),
(1244, 80, 'Tbilisi', 'TB', 1),
(1245, 80, 'Guria', 'GU', 1),
(1246, 80, 'Imereti', 'IM', 1),
(1247, 80, 'Kakheti', 'KA', 1),
(1248, 80, 'Kvemo Kartli', 'KK', 1),
(1249, 80, 'Mtskheta-Mtianeti', 'MM', 1),
(1250, 80, 'Racha Lechkhumi and Kvemo Svanet', 'RL', 1),
(1251, 80, 'Samegrelo-Zemo Svaneti', 'SZ', 1),
(1252, 80, 'Samtskhe-Javakheti', 'SJ', 1),
(1253, 80, 'Shida Kartli', 'SK', 1),
(1254, 81, 'Baden-Württemberg', 'BAW', 1),
(1255, 81, 'Bayern', 'BAY', 1),
(1256, 81, 'Berlin', 'BER', 1),
(1257, 81, 'Brandenburg', 'BRG', 1),
(1258, 81, 'Bremen', 'BRE', 1),
(1259, 81, 'Hamburg', 'HAM', 1),
(1260, 81, 'Hessen', 'HES', 1),
(1261, 81, 'Mecklenburg-Vorpommern', 'MEC', 1),
(1262, 81, 'Niedersachsen', 'NDS', 1),
(1263, 81, 'Nordrhein-Westfalen', 'NRW', 1),
(1264, 81, 'Rheinland-Pfalz', 'RHE', 1),
(1265, 81, 'Saarland', 'SAR', 1),
(1266, 81, 'Sachsen', 'SAS', 1),
(1267, 81, 'Sachsen-Anhalt', 'SAC', 1),
(1268, 81, 'Schleswig-Holstein', 'SCN', 1),
(1269, 81, 'Thüringen', 'THE', 1),
(1270, 82, 'Ashanti Region', 'AS', 1),
(1271, 82, 'Brong-Ahafo Region', 'BA', 1),
(1272, 82, 'Central Region', 'CE', 1),
(1273, 82, 'Eastern Region', 'EA', 1),
(1274, 82, 'Greater Accra Region', 'GA', 1),
(1275, 82, 'Northern Region', 'NO', 1),
(1276, 82, 'Upper East Region', 'UE', 1),
(1277, 82, 'Upper West Region', 'UW', 1),
(1278, 82, 'Volta Region', 'VO', 1),
(1279, 82, 'Western Region', 'WE', 1),
(1280, 84, 'Attica', 'AT', 1),
(1281, 84, 'Central Greece', 'CN', 1),
(1282, 84, 'Central Macedonia', 'CM', 1),
(1283, 84, 'Crete', 'CR', 1),
(1284, 84, 'East Macedonia and Thrace', 'EM', 1),
(1285, 84, 'Epirus', 'EP', 1),
(1286, 84, 'Ionian Islands', 'II', 1),
(1287, 84, 'North Aegean', 'NA', 1),
(1288, 84, 'Peloponnesos', 'PP', 1),
(1289, 84, 'South Aegean', 'SA', 1),
(1290, 84, 'Thessaly', 'TH', 1),
(1291, 84, 'West Greece', 'WG', 1),
(1292, 84, 'West Macedonia', 'WM', 1),
(1293, 85, 'Avannaa', 'A', 1),
(1294, 85, 'Tunu', 'T', 1),
(1295, 85, 'Kitaa', 'K', 1),
(1296, 86, 'Saint Andrew', 'A', 1),
(1297, 86, 'Saint David', 'D', 1),
(1298, 86, 'Saint George', 'G', 1),
(1299, 86, 'Saint John', 'J', 1),
(1300, 86, 'Saint Mark', 'M', 1),
(1301, 86, 'Saint Patrick', 'P', 1),
(1302, 86, 'Carriacou', 'C', 1),
(1303, 86, 'Petit Martinique', 'Q', 1),
(1304, 89, 'Alta Verapaz', 'AV', 1),
(1305, 89, 'Baja Verapaz', 'BV', 1),
(1306, 89, 'Chimaltenango', 'CM', 1),
(1307, 89, 'Chiquimula', 'CQ', 1),
(1308, 89, 'El Peten', 'PE', 1),
(1309, 89, 'El Progreso', 'PR', 1),
(1310, 89, 'El Quiche', 'QC', 1),
(1311, 89, 'Escuintla', 'ES', 1),
(1312, 89, 'Guatemala', 'GU', 1),
(1313, 89, 'Huehuetenango', 'HU', 1),
(1314, 89, 'Izabal', 'IZ', 1),
(1315, 89, 'Jalapa', 'JA', 1),
(1316, 89, 'Jutiapa', 'JU', 1),
(1317, 89, 'Quetzaltenango', 'QZ', 1),
(1318, 89, 'Retalhuleu', 'RE', 1),
(1319, 89, 'Sacatepequez', 'ST', 1),
(1320, 89, 'San Marcos', 'SM', 1),
(1321, 89, 'Santa Rosa', 'SR', 1),
(1322, 89, 'Solola', 'SO', 1),
(1323, 89, 'Suchitepequez', 'SU', 1),
(1324, 89, 'Totonicapan', 'TO', 1),
(1325, 89, 'Zacapa', 'ZA', 1),
(1326, 90, 'Conakry', 'CNK', 1),
(1327, 90, 'Beyla', 'BYL', 1),
(1328, 90, 'Boffa', 'BFA', 1),
(1329, 90, 'Boke', 'BOK', 1),
(1330, 90, 'Coyah', 'COY', 1),
(1331, 90, 'Dabola', 'DBL', 1),
(1332, 90, 'Dalaba', 'DLB', 1),
(1333, 90, 'Dinguiraye', 'DGR', 1),
(1334, 90, 'Dubreka', 'DBR', 1),
(1335, 90, 'Faranah', 'FRN', 1),
(1336, 90, 'Forecariah', 'FRC', 1),
(1337, 90, 'Fria', 'FRI', 1),
(1338, 90, 'Gaoual', 'GAO', 1),
(1339, 90, 'Gueckedou', 'GCD', 1),
(1340, 90, 'Kankan', 'KNK', 1),
(1341, 90, 'Kerouane', 'KRN', 1),
(1342, 90, 'Kindia', 'KND', 1),
(1343, 90, 'Kissidougou', 'KSD', 1),
(1344, 90, 'Koubia', 'KBA', 1),
(1345, 90, 'Koundara', 'KDA', 1),
(1346, 90, 'Kouroussa', 'KRA', 1),
(1347, 90, 'Labe', 'LAB', 1),
(1348, 90, 'Lelouma', 'LLM', 1),
(1349, 90, 'Lola', 'LOL', 1),
(1350, 90, 'Macenta', 'MCT', 1),
(1351, 90, 'Mali', 'MAL', 1),
(1352, 90, 'Mamou', 'MAM', 1),
(1353, 90, 'Mandiana', 'MAN', 1),
(1354, 90, 'Nzerekore', 'NZR', 1),
(1355, 90, 'Pita', 'PIT', 1),
(1356, 90, 'Siguiri', 'SIG', 1),
(1357, 90, 'Telimele', 'TLM', 1),
(1358, 90, 'Tougue', 'TOG', 1),
(1359, 90, 'Yomou', 'YOM', 1),
(1360, 91, 'Bafata Region', 'BF', 1),
(1361, 91, 'Biombo Region', 'BB', 1),
(1362, 91, 'Bissau Region', 'BS', 1),
(1363, 91, 'Bolama Region', 'BL', 1),
(1364, 91, 'Cacheu Region', 'CA', 1),
(1365, 91, 'Gabu Region', 'GA', 1),
(1366, 91, 'Oio Region', 'OI', 1),
(1367, 91, 'Quinara Region', 'QU', 1),
(1368, 91, 'Tombali Region', 'TO', 1),
(1369, 92, 'Barima-Waini', 'BW', 1),
(1370, 92, 'Cuyuni-Mazaruni', 'CM', 1),
(1371, 92, 'Demerara-Mahaica', 'DM', 1),
(1372, 92, 'East Berbice-Corentyne', 'EC', 1),
(1373, 92, 'Essequibo Islands-West Demerara', 'EW', 1),
(1374, 92, 'Mahaica-Berbice', 'MB', 1),
(1375, 92, 'Pomeroon-Supenaam', 'PM', 1),
(1376, 92, 'Potaro-Siparuni', 'PI', 1),
(1377, 92, 'Upper Demerara-Berbice', 'UD', 1),
(1378, 92, 'Upper Takutu-Upper Essequibo', 'UT', 1),
(1379, 93, 'Artibonite', 'AR', 1),
(1380, 93, 'Centre', 'CE', 1),
(1381, 93, 'Grand''Anse', 'GA', 1),
(1382, 93, 'Nord', 'ND', 1),
(1383, 93, 'Nord-Est', 'NE', 1),
(1384, 93, 'Nord-Ouest', 'NO', 1),
(1385, 93, 'Ouest', 'OU', 1),
(1386, 93, 'Sud', 'SD', 1),
(1387, 93, 'Sud-Est', 'SE', 1),
(1388, 94, 'Flat Island', 'F', 1),
(1389, 94, 'McDonald Island', 'M', 1),
(1390, 94, 'Shag Island', 'S', 1),
(1391, 94, 'Heard Island', 'H', 1),
(1392, 95, 'Atlantida', 'AT', 1),
(1393, 95, 'Choluteca', 'CH', 1),
(1394, 95, 'Colon', 'CL', 1),
(1395, 95, 'Comayagua', 'CM', 1),
(1396, 95, 'Copan', 'CP', 1),
(1397, 95, 'Cortes', 'CR', 1),
(1398, 95, 'El Paraiso', 'PA', 1),
(1399, 95, 'Francisco Morazan', 'FM', 1),
(1400, 95, 'Gracias a Dios', 'GD', 1),
(1401, 95, 'Intibuca', 'IN', 1),
(1402, 95, 'Islas de la Bahia (Bay Islands)', 'IB', 1),
(1403, 95, 'La Paz', 'PZ', 1),
(1404, 95, 'Lempira', 'LE', 1),
(1405, 95, 'Ocotepeque', 'OC', 1),
(1406, 95, 'Olancho', 'OL', 1),
(1407, 95, 'Santa Barbara', 'SB', 1),
(1408, 95, 'Valle', 'VA', 1),
(1409, 95, 'Yoro', 'YO', 1),
(1410, 96, 'Central and Western Hong Kong Island', 'HCW', 1),
(1411, 96, 'Eastern Hong Kong Island', 'HEA', 1),
(1412, 96, 'Southern Hong Kong Island', 'HSO', 1),
(1413, 96, 'Wan Chai Hong Kong Island', 'HWC', 1),
(1414, 96, 'Kowloon City Kowloon', 'KKC', 1),
(1415, 96, 'Kwun Tong Kowloon', 'KKT', 1),
(1416, 96, 'Sham Shui Po Kowloon', 'KSS', 1),
(1417, 96, 'Wong Tai Sin Kowloon', 'KWT', 1),
(1418, 96, 'Yau Tsim Mong Kowloon', 'KYT', 1),
(1419, 96, 'Islands New Territories', 'NIS', 1),
(1420, 96, 'Kwai Tsing New Territories', 'NKT', 1),
(1421, 96, 'North New Territories', 'NNO', 1),
(1422, 96, 'Sai Kung New Territories', 'NSK', 1),
(1423, 96, 'Sha Tin New Territories', 'NST', 1),
(1424, 96, 'Tai Po New Territories', 'NTP', 1),
(1425, 96, 'Tsuen Wan New Territories', 'NTW', 1),
(1426, 96, 'Tuen Mun New Territories', 'NTM', 1),
(1427, 96, 'Yuen Long New Territories', 'NYL', 1),
(1467, 98, 'Austurland', 'AL', 1),
(1468, 98, 'Hofuoborgarsvaeoi', 'HF', 1),
(1469, 98, 'Norourland eystra', 'NE', 1),
(1470, 98, 'Norourland vestra', 'NV', 1),
(1471, 98, 'Suourland', 'SL', 1),
(1472, 98, 'Suournes', 'SN', 1),
(1473, 98, 'Vestfiroir', 'VF', 1),
(1474, 98, 'Vesturland', 'VL', 1),
(1475, 99, 'Andaman and Nicobar Islands', 'AN', 1),
(1476, 99, 'Andhra Pradesh', 'AP', 1),
(1477, 99, 'Arunachal Pradesh', 'AR', 1),
(1478, 99, 'Assam', 'AS', 1),
(1479, 99, 'Bihar', 'BI', 1),
(1480, 99, 'Chandigarh', 'CH', 1),
(1481, 99, 'Dadra and Nagar Haveli', 'DA', 1),
(1482, 99, 'Daman and Diu', 'DM', 1),
(1483, 99, 'Delhi', 'DE', 1),
(1484, 99, 'Goa', 'GO', 1),
(1485, 99, 'Gujarat', 'GU', 1),
(1486, 99, 'Haryana', 'HA', 1),
(1487, 99, 'Himachal Pradesh', 'HP', 1),
(1488, 99, 'Jammu and Kashmir', 'JA', 1),
(1489, 99, 'Karnataka', 'KA', 1),
(1490, 99, 'Kerala', 'KE', 1),
(1491, 99, 'Lakshadweep Islands', 'LI', 1),
(1492, 99, 'Madhya Pradesh', 'MP', 1),
(1493, 99, 'Maharashtra', 'MA', 1),
(1494, 99, 'Manipur', 'MN', 1),
(1495, 99, 'Meghalaya', 'ME', 1),
(1496, 99, 'Mizoram', 'MI', 1),
(1497, 99, 'Nagaland', 'NA', 1),
(1498, 99, 'Orissa', 'OR', 1),
(1499, 99, 'Puducherry', 'PO', 1),
(1500, 99, 'Punjab', 'PU', 1),
(1501, 99, 'Rajasthan', 'RA', 1),
(1502, 99, 'Sikkim', 'SI', 1),
(1503, 99, 'Tamil Nadu', 'TN', 1),
(1504, 99, 'Tripura', 'TR', 1),
(1505, 99, 'Uttar Pradesh', 'UP', 1),
(1506, 99, 'West Bengal', 'WB', 1),
(1507, 100, 'Aceh', 'AC', 1),
(1508, 100, 'Bali', 'BA', 1),
(1509, 100, 'Banten', 'BT', 1),
(1510, 100, 'Bengkulu', 'BE', 1),
(1511, 100, 'BoDeTaBek', 'BD', 1),
(1512, 100, 'Gorontalo', 'GO', 1),
(1513, 100, 'Jakarta Raya', 'JK', 1),
(1514, 100, 'Jambi', 'JA', 1),
(1515, 100, 'Jawa Barat', 'JB', 1),
(1516, 100, 'Jawa Tengah', 'JT', 1),
(1517, 100, 'Jawa Timur', 'JI', 1),
(1518, 100, 'Kalimantan Barat', 'KB', 1),
(1519, 100, 'Kalimantan Selatan', 'KS', 1),
(1520, 100, 'Kalimantan Tengah', 'KT', 1),
(1521, 100, 'Kalimantan Timur', 'KI', 1),
(1522, 100, 'Kepulauan Bangka Belitung', 'BB', 1),
(1523, 100, 'Lampung', 'LA', 1),
(1524, 100, 'Maluku', 'MA', 1),
(1525, 100, 'Maluku Utara', 'MU', 1),
(1526, 100, 'Nusa Tenggara Barat', 'NB', 1),
(1527, 100, 'Nusa Tenggara Timur', 'NT', 1),
(1528, 100, 'Papua', 'PA', 1),
(1529, 100, 'Riau', 'RI', 1),
(1530, 100, 'Sulawesi Selatan', 'SN', 1),
(1531, 100, 'Sulawesi Tengah', 'ST', 1),
(1532, 100, 'Sulawesi Tenggara', 'SG', 1),
(1533, 100, 'Sulawesi Utara', 'SA', 1),
(1534, 100, 'Sumatera Barat', 'SB', 1),
(1535, 100, 'Sumatera Selatan', 'SS', 1),
(1536, 100, 'Sumatera Utara', 'SU', 1),
(1537, 100, 'Yogyakarta', 'YO', 1),
(1538, 101, 'Tehran', 'TEH', 1),
(1539, 101, 'Qom', 'QOM', 1),
(1540, 101, 'Markazi', 'MKZ', 1),
(1541, 101, 'Qazvin', 'QAZ', 1),
(1542, 101, 'Gilan', 'GIL', 1),
(1543, 101, 'Ardabil', 'ARD', 1),
(1544, 101, 'Zanjan', 'ZAN', 1),
(1545, 101, 'East Azarbaijan', 'EAZ', 1),
(1546, 101, 'West Azarbaijan', 'WEZ', 1),
(1547, 101, 'Kurdistan', 'KRD', 1),
(1548, 101, 'Hamadan', 'HMD', 1),
(1549, 101, 'Kermanshah', 'KRM', 1),
(1550, 101, 'Ilam', 'ILM', 1),
(1551, 101, 'Lorestan', 'LRS', 1),
(1552, 101, 'Khuzestan', 'KZT', 1),
(1553, 101, 'Chahar Mahaal and Bakhtiari', 'CMB', 1),
(1554, 101, 'Kohkiluyeh and Buyer Ahmad', 'KBA', 1),
(1555, 101, 'Bushehr', 'BSH', 1),
(1556, 101, 'Fars', 'FAR', 1),
(1557, 101, 'Hormozgan', 'HRM', 1),
(1558, 101, 'Sistan and Baluchistan', 'SBL', 1),
(1559, 101, 'Kerman', 'KRB', 1),
(1560, 101, 'Yazd', 'YZD', 1),
(1561, 101, 'Esfahan', 'EFH', 1),
(1562, 101, 'Semnan', 'SMN', 1),
(1563, 101, 'Mazandaran', 'MZD', 1),
(1564, 101, 'Golestan', 'GLS', 1),
(1565, 101, 'North Khorasan', 'NKH', 1),
(1566, 101, 'Razavi Khorasan', 'RKH', 1),
(1567, 101, 'South Khorasan', 'SKH', 1),
(1568, 102, 'Baghdad', 'BD', 1),
(1569, 102, 'Salah ad Din', 'SD', 1),
(1570, 102, 'Diyala', 'DY', 1),
(1571, 102, 'Wasit', 'WS', 1),
(1572, 102, 'Maysan', 'MY', 1),
(1573, 102, 'Al Basrah', 'BA', 1),
(1574, 102, 'Dhi Qar', 'DQ', 1),
(1575, 102, 'Al Muthanna', 'MU', 1),
(1576, 102, 'Al Qadisyah', 'QA', 1),
(1577, 102, 'Babil', 'BB', 1),
(1578, 102, 'Al Karbala', 'KB', 1),
(1579, 102, 'An Najaf', 'NJ', 1),
(1580, 102, 'Al Anbar', 'AB', 1),
(1581, 102, 'Ninawa', 'NN', 1),
(1582, 102, 'Dahuk', 'DH', 1),
(1583, 102, 'Arbil', 'AL', 1),
(1584, 102, 'At Ta''mim', 'TM', 1),
(1585, 102, 'As Sulaymaniyah', 'SL', 1),
(1586, 103, 'Carlow', 'CA', 1),
(1587, 103, 'Cavan', 'CV', 1),
(1588, 103, 'Clare', 'CL', 1),
(1589, 103, 'Cork', 'CO', 1),
(1590, 103, 'Donegal', 'DO', 1),
(1591, 103, 'Dublin', 'DU', 1),
(1592, 103, 'Galway', 'GA', 1),
(1593, 103, 'Kerry', 'KE', 1),
(1594, 103, 'Kildare', 'KI', 1),
(1595, 103, 'Kilkenny', 'KL', 1);
INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1596, 103, 'Laois', 'LA', 1),
(1597, 103, 'Leitrim', 'LE', 1),
(1598, 103, 'Limerick', 'LI', 1),
(1599, 103, 'Longford', 'LO', 1),
(1600, 103, 'Louth', 'LU', 1),
(1601, 103, 'Mayo', 'MA', 1),
(1602, 103, 'Meath', 'ME', 1),
(1603, 103, 'Monaghan', 'MO', 1),
(1604, 103, 'Offaly', 'OF', 1),
(1605, 103, 'Roscommon', 'RO', 1),
(1606, 103, 'Sligo', 'SL', 1),
(1607, 103, 'Tipperary', 'TI', 1),
(1608, 103, 'Waterford', 'WA', 1),
(1609, 103, 'Westmeath', 'WE', 1),
(1610, 103, 'Wexford', 'WX', 1),
(1611, 103, 'Wicklow', 'WI', 1),
(1612, 104, 'Be''er Sheva', 'BS', 1),
(1613, 104, 'Bika''at Hayarden', 'BH', 1),
(1614, 104, 'Eilat and Arava', 'EA', 1),
(1615, 104, 'Galil', 'GA', 1),
(1616, 104, 'Haifa', 'HA', 1),
(1617, 104, 'Jehuda Mountains', 'JM', 1),
(1618, 104, 'Jerusalem', 'JE', 1),
(1619, 104, 'Negev', 'NE', 1),
(1620, 104, 'Semaria', 'SE', 1),
(1621, 104, 'Sharon', 'SH', 1),
(1622, 104, 'Tel Aviv (Gosh Dan)', 'TA', 1),
(3860, 105, 'Caltanissetta', 'CL', 1),
(3842, 105, 'Agrigento', 'AG', 1),
(3843, 105, 'Alessandria', 'AL', 1),
(3844, 105, 'Ancona', 'AN', 1),
(3845, 105, 'Aosta', 'AO', 1),
(3846, 105, 'Arezzo', 'AR', 1),
(3847, 105, 'Ascoli Piceno', 'AP', 1),
(3848, 105, 'Asti', 'AT', 1),
(3849, 105, 'Avellino', 'AV', 1),
(3850, 105, 'Bari', 'BA', 1),
(3851, 105, 'Belluno', 'BL', 1),
(3852, 105, 'Benevento', 'BN', 1),
(3853, 105, 'Bergamo', 'BG', 1),
(3854, 105, 'Biella', 'BI', 1),
(3855, 105, 'Bologna', 'BO', 1),
(3856, 105, 'Bolzano', 'BZ', 1),
(3857, 105, 'Brescia', 'BS', 1),
(3858, 105, 'Brindisi', 'BR', 1),
(3859, 105, 'Cagliari', 'CA', 1),
(1643, 106, 'Clarendon Parish', 'CLA', 1),
(1644, 106, 'Hanover Parish', 'HAN', 1),
(1645, 106, 'Kingston Parish', 'KIN', 1),
(1646, 106, 'Manchester Parish', 'MAN', 1),
(1647, 106, 'Portland Parish', 'POR', 1),
(1648, 106, 'Saint Andrew Parish', 'AND', 1),
(1649, 106, 'Saint Ann Parish', 'ANN', 1),
(1650, 106, 'Saint Catherine Parish', 'CAT', 1),
(1651, 106, 'Saint Elizabeth Parish', 'ELI', 1),
(1652, 106, 'Saint James Parish', 'JAM', 1),
(1653, 106, 'Saint Mary Parish', 'MAR', 1),
(1654, 106, 'Saint Thomas Parish', 'THO', 1),
(1655, 106, 'Trelawny Parish', 'TRL', 1),
(1656, 106, 'Westmoreland Parish', 'WML', 1),
(1657, 107, 'Aichi', 'AI', 1),
(1658, 107, 'Akita', 'AK', 1),
(1659, 107, 'Aomori', 'AO', 1),
(1660, 107, 'Chiba', 'CH', 1),
(1661, 107, 'Ehime', 'EH', 1),
(1662, 107, 'Fukui', 'FK', 1),
(1663, 107, 'Fukuoka', 'FU', 1),
(1664, 107, 'Fukushima', 'FS', 1),
(1665, 107, 'Gifu', 'GI', 1),
(1666, 107, 'Gumma', 'GU', 1),
(1667, 107, 'Hiroshima', 'HI', 1),
(1668, 107, 'Hokkaido', 'HO', 1),
(1669, 107, 'Hyogo', 'HY', 1),
(1670, 107, 'Ibaraki', 'IB', 1),
(1671, 107, 'Ishikawa', 'IS', 1),
(1672, 107, 'Iwate', 'IW', 1),
(1673, 107, 'Kagawa', 'KA', 1),
(1674, 107, 'Kagoshima', 'KG', 1),
(1675, 107, 'Kanagawa', 'KN', 1),
(1676, 107, 'Kochi', 'KO', 1),
(1677, 107, 'Kumamoto', 'KU', 1),
(1678, 107, 'Kyoto', 'KY', 1),
(1679, 107, 'Mie', 'MI', 1),
(1680, 107, 'Miyagi', 'MY', 1),
(1681, 107, 'Miyazaki', 'MZ', 1),
(1682, 107, 'Nagano', 'NA', 1),
(1683, 107, 'Nagasaki', 'NG', 1),
(1684, 107, 'Nara', 'NR', 1),
(1685, 107, 'Niigata', 'NI', 1),
(1686, 107, 'Oita', 'OI', 1),
(1687, 107, 'Okayama', 'OK', 1),
(1688, 107, 'Okinawa', 'ON', 1),
(1689, 107, 'Osaka', 'OS', 1),
(1690, 107, 'Saga', 'SA', 1),
(1691, 107, 'Saitama', 'SI', 1),
(1692, 107, 'Shiga', 'SH', 1),
(1693, 107, 'Shimane', 'SM', 1),
(1694, 107, 'Shizuoka', 'SZ', 1),
(1695, 107, 'Tochigi', 'TO', 1),
(1696, 107, 'Tokushima', 'TS', 1),
(1697, 107, 'Tokyo', 'TK', 1),
(1698, 107, 'Tottori', 'TT', 1),
(1699, 107, 'Toyama', 'TY', 1),
(1700, 107, 'Wakayama', 'WA', 1),
(1701, 107, 'Yamagata', 'YA', 1),
(1702, 107, 'Yamaguchi', 'YM', 1),
(1703, 107, 'Yamanashi', 'YN', 1),
(1704, 108, '''Amman', 'AM', 1),
(1705, 108, 'Ajlun', 'AJ', 1),
(1706, 108, 'Al ''Aqabah', 'AA', 1),
(1707, 108, 'Al Balqa''', 'AB', 1),
(1708, 108, 'Al Karak', 'AK', 1),
(1709, 108, 'Al Mafraq', 'AL', 1),
(1710, 108, 'At Tafilah', 'AT', 1),
(1711, 108, 'Az Zarqa''', 'AZ', 1),
(1712, 108, 'Irbid', 'IR', 1),
(1713, 108, 'Jarash', 'JA', 1),
(1714, 108, 'Ma''an', 'MA', 1),
(1715, 108, 'Madaba', 'MD', 1),
(1716, 109, 'Almaty', 'AL', 1),
(1717, 109, 'Almaty City', 'AC', 1),
(1718, 109, 'Aqmola', 'AM', 1),
(1719, 109, 'Aqtobe', 'AQ', 1),
(1720, 109, 'Astana City', 'AS', 1),
(1721, 109, 'Atyrau', 'AT', 1),
(1722, 109, 'Batys Qazaqstan', 'BA', 1),
(1723, 109, 'Bayqongyr City', 'BY', 1),
(1724, 109, 'Mangghystau', 'MA', 1),
(1725, 109, 'Ongtustik Qazaqstan', 'ON', 1),
(1726, 109, 'Pavlodar', 'PA', 1),
(1727, 109, 'Qaraghandy', 'QA', 1),
(1728, 109, 'Qostanay', 'QO', 1),
(1729, 109, 'Qyzylorda', 'QY', 1),
(1730, 109, 'Shyghys Qazaqstan', 'SH', 1),
(1731, 109, 'Soltustik Qazaqstan', 'SO', 1),
(1732, 109, 'Zhambyl', 'ZH', 1),
(1733, 110, 'Central', 'CE', 1),
(1734, 110, 'Coast', 'CO', 1),
(1735, 110, 'Eastern', 'EA', 1),
(1736, 110, 'Nairobi Area', 'NA', 1),
(1737, 110, 'North Eastern', 'NE', 1),
(1738, 110, 'Nyanza', 'NY', 1),
(1739, 110, 'Rift Valley', 'RV', 1),
(1740, 110, 'Western', 'WE', 1),
(1741, 111, 'Abaiang', 'AG', 1),
(1742, 111, 'Abemama', 'AM', 1),
(1743, 111, 'Aranuka', 'AK', 1),
(1744, 111, 'Arorae', 'AO', 1),
(1745, 111, 'Banaba', 'BA', 1),
(1746, 111, 'Beru', 'BE', 1),
(1747, 111, 'Butaritari', 'bT', 1),
(1748, 111, 'Kanton', 'KA', 1),
(1749, 111, 'Kiritimati', 'KR', 1),
(1750, 111, 'Kuria', 'KU', 1),
(1751, 111, 'Maiana', 'MI', 1),
(1752, 111, 'Makin', 'MN', 1),
(1753, 111, 'Marakei', 'ME', 1),
(1754, 111, 'Nikunau', 'NI', 1),
(1755, 111, 'Nonouti', 'NO', 1),
(1756, 111, 'Onotoa', 'ON', 1),
(1757, 111, 'Tabiteuea', 'TT', 1),
(1758, 111, 'Tabuaeran', 'TR', 1),
(1759, 111, 'Tamana', 'TM', 1),
(1760, 111, 'Tarawa', 'TW', 1),
(1761, 111, 'Teraina', 'TE', 1),
(1762, 112, 'Chagang-do', 'CHA', 1),
(1763, 112, 'Hamgyong-bukto', 'HAB', 1),
(1764, 112, 'Hamgyong-namdo', 'HAN', 1),
(1765, 112, 'Hwanghae-bukto', 'HWB', 1),
(1766, 112, 'Hwanghae-namdo', 'HWN', 1),
(1767, 112, 'Kangwon-do', 'KAN', 1),
(1768, 112, 'P''yongan-bukto', 'PYB', 1),
(1769, 112, 'P''yongan-namdo', 'PYN', 1),
(1770, 112, 'Ryanggang-do (Yanggang-do)', 'YAN', 1),
(1771, 112, 'Rason Directly Governed City', 'NAJ', 1),
(1772, 112, 'P''yongyang Special City', 'PYO', 1),
(1773, 113, 'Ch''ungch''ong-bukto', 'CO', 1),
(1774, 113, 'Ch''ungch''ong-namdo', 'CH', 1),
(1775, 113, 'Cheju-do', 'CD', 1),
(1776, 113, 'Cholla-bukto', 'CB', 1),
(1777, 113, 'Cholla-namdo', 'CN', 1),
(1778, 113, 'Inch''on-gwangyoksi', 'IG', 1),
(1779, 113, 'Kangwon-do', 'KA', 1),
(1780, 113, 'Kwangju-gwangyoksi', 'KG', 1),
(1781, 113, 'Kyonggi-do', 'KD', 1),
(1782, 113, 'Kyongsang-bukto', 'KB', 1),
(1783, 113, 'Kyongsang-namdo', 'KN', 1),
(1784, 113, 'Pusan-gwangyoksi', 'PG', 1),
(1785, 113, 'Soul-t''ukpyolsi', 'SO', 1),
(1786, 113, 'Taegu-gwangyoksi', 'TA', 1),
(1787, 113, 'Taejon-gwangyoksi', 'TG', 1),
(1788, 114, 'Al ''Asimah', 'AL', 1),
(1789, 114, 'Al Ahmadi', 'AA', 1),
(1790, 114, 'Al Farwaniyah', 'AF', 1),
(1791, 114, 'Al Jahra''', 'AJ', 1),
(1792, 114, 'Hawalli', 'HA', 1),
(1793, 115, 'Bishkek', 'GB', 1),
(1794, 115, 'Batken', 'B', 1),
(1795, 115, 'Chu', 'C', 1),
(1796, 115, 'Jalal-Abad', 'J', 1),
(1797, 115, 'Naryn', 'N', 1),
(1798, 115, 'Osh', 'O', 1),
(1799, 115, 'Talas', 'T', 1),
(1800, 115, 'Ysyk-Kol', 'Y', 1),
(1801, 116, 'Vientiane', 'VT', 1),
(1802, 116, 'Attapu', 'AT', 1),
(1803, 116, 'Bokeo', 'BK', 1),
(1804, 116, 'Bolikhamxai', 'BL', 1),
(1805, 116, 'Champasak', 'CH', 1),
(1806, 116, 'Houaphan', 'HO', 1),
(1807, 116, 'Khammouan', 'KH', 1),
(1808, 116, 'Louang Namtha', 'LM', 1),
(1809, 116, 'Louangphabang', 'LP', 1),
(1810, 116, 'Oudomxai', 'OU', 1),
(1811, 116, 'Phongsali', 'PH', 1),
(1812, 116, 'Salavan', 'SL', 1),
(1813, 116, 'Savannakhet', 'SV', 1),
(1814, 116, 'Vientiane', 'VI', 1),
(1815, 116, 'Xaignabouli', 'XA', 1),
(1816, 116, 'Xekong', 'XE', 1),
(1817, 116, 'Xiangkhoang', 'XI', 1),
(1818, 116, 'Xaisomboun', 'XN', 1),
(1852, 119, 'Berea', 'BE', 1),
(1853, 119, 'Butha-Buthe', 'BB', 1),
(1854, 119, 'Leribe', 'LE', 1),
(1855, 119, 'Mafeteng', 'MF', 1),
(1856, 119, 'Maseru', 'MS', 1),
(1857, 119, 'Mohale''s Hoek', 'MH', 1),
(1858, 119, 'Mokhotlong', 'MK', 1),
(1859, 119, 'Qacha''s Nek', 'QN', 1),
(1860, 119, 'Quthing', 'QT', 1),
(1861, 119, 'Thaba-Tseka', 'TT', 1),
(1862, 120, 'Bomi', 'BI', 1),
(1863, 120, 'Bong', 'BG', 1),
(1864, 120, 'Grand Bassa', 'GB', 1),
(1865, 120, 'Grand Cape Mount', 'CM', 1),
(1866, 120, 'Grand Gedeh', 'GG', 1),
(1867, 120, 'Grand Kru', 'GK', 1),
(1868, 120, 'Lofa', 'LO', 1),
(1869, 120, 'Margibi', 'MG', 1),
(1870, 120, 'Maryland', 'ML', 1),
(1871, 120, 'Montserrado', 'MS', 1),
(1872, 120, 'Nimba', 'NB', 1),
(1873, 120, 'River Cess', 'RC', 1),
(1874, 120, 'Sinoe', 'SN', 1),
(1875, 121, 'Ajdabiya', 'AJ', 1),
(1876, 121, 'Al ''Aziziyah', 'AZ', 1),
(1877, 121, 'Al Fatih', 'FA', 1),
(1878, 121, 'Al Jabal al Akhdar', 'JA', 1),
(1879, 121, 'Al Jufrah', 'JU', 1),
(1880, 121, 'Al Khums', 'KH', 1),
(1881, 121, 'Al Kufrah', 'KU', 1),
(1882, 121, 'An Nuqat al Khams', 'NK', 1),
(1883, 121, 'Ash Shati''', 'AS', 1),
(1884, 121, 'Awbari', 'AW', 1),
(1885, 121, 'Az Zawiyah', 'ZA', 1),
(1886, 121, 'Banghazi', 'BA', 1),
(1887, 121, 'Darnah', 'DA', 1),
(1888, 121, 'Ghadamis', 'GD', 1),
(1889, 121, 'Gharyan', 'GY', 1),
(1890, 121, 'Misratah', 'MI', 1),
(1891, 121, 'Murzuq', 'MZ', 1),
(1892, 121, 'Sabha', 'SB', 1),
(1893, 121, 'Sawfajjin', 'SW', 1),
(1894, 121, 'Surt', 'SU', 1),
(1895, 121, 'Tarabulus (Tripoli)', 'TL', 1),
(1896, 121, 'Tarhunah', 'TH', 1),
(1897, 121, 'Tubruq', 'TU', 1),
(1898, 121, 'Yafran', 'YA', 1),
(1899, 121, 'Zlitan', 'ZL', 1),
(1900, 122, 'Vaduz', 'V', 1),
(1901, 122, 'Schaan', 'A', 1),
(1902, 122, 'Balzers', 'B', 1),
(1903, 122, 'Triesen', 'N', 1),
(1904, 122, 'Eschen', 'E', 1),
(1905, 122, 'Mauren', 'M', 1),
(1906, 122, 'Triesenberg', 'T', 1),
(1907, 122, 'Ruggell', 'R', 1),
(1908, 122, 'Gamprin', 'G', 1),
(1909, 122, 'Schellenberg', 'L', 1),
(1910, 122, 'Planken', 'P', 1),
(1911, 123, 'Alytus', 'AL', 1),
(1912, 123, 'Kaunas', 'KA', 1),
(1913, 123, 'Klaipeda', 'KL', 1),
(1914, 123, 'Marijampole', 'MA', 1),
(1915, 123, 'Panevezys', 'PA', 1),
(1916, 123, 'Siauliai', 'SI', 1),
(1917, 123, 'Taurage', 'TA', 1),
(1918, 123, 'Telsiai', 'TE', 1),
(1919, 123, 'Utena', 'UT', 1),
(1920, 123, 'Vilnius', 'VI', 1),
(1921, 124, 'Diekirch', 'DD', 1),
(1922, 124, 'Clervaux', 'DC', 1),
(1923, 124, 'Redange', 'DR', 1),
(1924, 124, 'Vianden', 'DV', 1),
(1925, 124, 'Wiltz', 'DW', 1),
(1926, 124, 'Grevenmacher', 'GG', 1),
(1927, 124, 'Echternach', 'GE', 1),
(1928, 124, 'Remich', 'GR', 1),
(1929, 124, 'Luxembourg', 'LL', 1),
(1930, 124, 'Capellen', 'LC', 1),
(1931, 124, 'Esch-sur-Alzette', 'LE', 1),
(1932, 124, 'Mersch', 'LM', 1),
(1933, 125, 'Our Lady Fatima Parish', 'OLF', 1),
(1934, 125, 'St. Anthony Parish', 'ANT', 1),
(1935, 125, 'St. Lazarus Parish', 'LAZ', 1),
(1936, 125, 'Cathedral Parish', 'CAT', 1),
(1937, 125, 'St. Lawrence Parish', 'LAW', 1),
(1938, 127, 'Antananarivo', 'AN', 1),
(1939, 127, 'Antsiranana', 'AS', 1),
(1940, 127, 'Fianarantsoa', 'FN', 1),
(1941, 127, 'Mahajanga', 'MJ', 1),
(1942, 127, 'Toamasina', 'TM', 1),
(1943, 127, 'Toliara', 'TL', 1),
(1944, 128, 'Balaka', 'BLK', 1),
(1945, 128, 'Blantyre', 'BLT', 1),
(1946, 128, 'Chikwawa', 'CKW', 1),
(1947, 128, 'Chiradzulu', 'CRD', 1),
(1948, 128, 'Chitipa', 'CTP', 1),
(1949, 128, 'Dedza', 'DDZ', 1),
(1950, 128, 'Dowa', 'DWA', 1),
(1951, 128, 'Karonga', 'KRG', 1),
(1952, 128, 'Kasungu', 'KSG', 1),
(1953, 128, 'Likoma', 'LKM', 1),
(1954, 128, 'Lilongwe', 'LLG', 1),
(1955, 128, 'Machinga', 'MCG', 1),
(1956, 128, 'Mangochi', 'MGC', 1),
(1957, 128, 'Mchinji', 'MCH', 1),
(1958, 128, 'Mulanje', 'MLJ', 1),
(1959, 128, 'Mwanza', 'MWZ', 1),
(1960, 128, 'Mzimba', 'MZM', 1),
(1961, 128, 'Ntcheu', 'NTU', 1),
(1962, 128, 'Nkhata Bay', 'NKB', 1),
(1963, 128, 'Nkhotakota', 'NKH', 1),
(1964, 128, 'Nsanje', 'NSJ', 1),
(1965, 128, 'Ntchisi', 'NTI', 1),
(1966, 128, 'Phalombe', 'PHL', 1),
(1967, 128, 'Rumphi', 'RMP', 1),
(1968, 128, 'Salima', 'SLM', 1),
(1969, 128, 'Thyolo', 'THY', 1),
(1970, 128, 'Zomba', 'ZBA', 1),
(1971, 129, 'Johor', 'MY-01', 1),
(1972, 129, 'Kedah', 'MY-02', 1),
(1973, 129, 'Kelantan', 'MY-03', 1),
(1974, 129, 'Labuan', 'MY-15', 1),
(1975, 129, 'Melaka', 'MY-04', 1),
(1976, 129, 'Negeri Sembilan', 'MY-05', 1),
(1977, 129, 'Pahang', 'MY-06', 1),
(1978, 129, 'Perak', 'MY-08', 1),
(1979, 129, 'Perlis', 'MY-09', 1),
(1980, 129, 'Pulau Pinang', 'MY-07', 1),
(1981, 129, 'Sabah', 'MY-12', 1),
(1982, 129, 'Sarawak', 'MY-13', 1),
(1983, 129, 'Selangor', 'MY-10', 1),
(1984, 129, 'Terengganu', 'MY-11', 1),
(1985, 129, 'Kuala Lumpur', 'MY-14', 1),
(4035, 129, 'Putrajaya', 'MY-16', 1),
(1986, 130, 'Thiladhunmathi Uthuru', 'THU', 1),
(1987, 130, 'Thiladhunmathi Dhekunu', 'THD', 1),
(1988, 130, 'Miladhunmadulu Uthuru', 'MLU', 1),
(1989, 130, 'Miladhunmadulu Dhekunu', 'MLD', 1),
(1990, 130, 'Maalhosmadulu Uthuru', 'MAU', 1),
(1991, 130, 'Maalhosmadulu Dhekunu', 'MAD', 1),
(1992, 130, 'Faadhippolhu', 'FAA', 1),
(1993, 130, 'Male Atoll', 'MAA', 1),
(1994, 130, 'Ari Atoll Uthuru', 'AAU', 1),
(1995, 130, 'Ari Atoll Dheknu', 'AAD', 1),
(1996, 130, 'Felidhe Atoll', 'FEA', 1),
(1997, 130, 'Mulaku Atoll', 'MUA', 1),
(1998, 130, 'Nilandhe Atoll Uthuru', 'NAU', 1),
(1999, 130, 'Nilandhe Atoll Dhekunu', 'NAD', 1),
(2000, 130, 'Kolhumadulu', 'KLH', 1),
(2001, 130, 'Hadhdhunmathi', 'HDH', 1),
(2002, 130, 'Huvadhu Atoll Uthuru', 'HAU', 1),
(2003, 130, 'Huvadhu Atoll Dhekunu', 'HAD', 1),
(2004, 130, 'Fua Mulaku', 'FMU', 1),
(2005, 130, 'Addu', 'ADD', 1),
(2006, 131, 'Gao', 'GA', 1),
(2007, 131, 'Kayes', 'KY', 1),
(2008, 131, 'Kidal', 'KD', 1),
(2009, 131, 'Koulikoro', 'KL', 1),
(2010, 131, 'Mopti', 'MP', 1),
(2011, 131, 'Segou', 'SG', 1),
(2012, 131, 'Sikasso', 'SK', 1),
(2013, 131, 'Tombouctou', 'TB', 1),
(2014, 131, 'Bamako Capital District', 'CD', 1),
(2015, 132, 'Attard', 'ATT', 1),
(2016, 132, 'Balzan', 'BAL', 1),
(2017, 132, 'Birgu', 'BGU', 1),
(2018, 132, 'Birkirkara', 'BKK', 1),
(2019, 132, 'Birzebbuga', 'BRZ', 1),
(2020, 132, 'Bormla', 'BOR', 1),
(2021, 132, 'Dingli', 'DIN', 1),
(2022, 132, 'Fgura', 'FGU', 1),
(2023, 132, 'Floriana', 'FLO', 1),
(2024, 132, 'Gudja', 'GDJ', 1),
(2025, 132, 'Gzira', 'GZR', 1),
(2026, 132, 'Gargur', 'GRG', 1),
(2027, 132, 'Gaxaq', 'GXQ', 1),
(2028, 132, 'Hamrun', 'HMR', 1),
(2029, 132, 'Iklin', 'IKL', 1),
(2030, 132, 'Isla', 'ISL', 1),
(2031, 132, 'Kalkara', 'KLK', 1),
(2032, 132, 'Kirkop', 'KRK', 1),
(2033, 132, 'Lija', 'LIJ', 1),
(2034, 132, 'Luqa', 'LUQ', 1),
(2035, 132, 'Marsa', 'MRS', 1),
(2036, 132, 'Marsaskala', 'MKL', 1),
(2037, 132, 'Marsaxlokk', 'MXL', 1),
(2038, 132, 'Mdina', 'MDN', 1),
(2039, 132, 'Melliea', 'MEL', 1),
(2040, 132, 'Mgarr', 'MGR', 1),
(2041, 132, 'Mosta', 'MST', 1),
(2042, 132, 'Mqabba', 'MQA', 1),
(2043, 132, 'Msida', 'MSI', 1),
(2044, 132, 'Mtarfa', 'MTF', 1),
(2045, 132, 'Naxxar', 'NAX', 1),
(2046, 132, 'Paola', 'PAO', 1),
(2047, 132, 'Pembroke', 'PEM', 1),
(2048, 132, 'Pieta', 'PIE', 1),
(2049, 132, 'Qormi', 'QOR', 1),
(2050, 132, 'Qrendi', 'QRE', 1),
(2051, 132, 'Rabat', 'RAB', 1),
(2052, 132, 'Safi', 'SAF', 1),
(2053, 132, 'San Giljan', 'SGI', 1),
(2054, 132, 'Santa Lucija', 'SLU', 1),
(2055, 132, 'San Pawl il-Bahar', 'SPB', 1),
(2056, 132, 'San Gwann', 'SGW', 1),
(2057, 132, 'Santa Venera', 'SVE', 1),
(2058, 132, 'Siggiewi', 'SIG', 1),
(2059, 132, 'Sliema', 'SLM', 1),
(2060, 132, 'Swieqi', 'SWQ', 1),
(2061, 132, 'Ta Xbiex', 'TXB', 1),
(2062, 132, 'Tarxien', 'TRX', 1),
(2063, 132, 'Valletta', 'VLT', 1),
(2064, 132, 'Xgajra', 'XGJ', 1),
(2065, 132, 'Zabbar', 'ZBR', 1),
(2066, 132, 'Zebbug', 'ZBG', 1),
(2067, 132, 'Zejtun', 'ZJT', 1),
(2068, 132, 'Zurrieq', 'ZRQ', 1),
(2069, 132, 'Fontana', 'FNT', 1),
(2070, 132, 'Ghajnsielem', 'GHJ', 1),
(2071, 132, 'Gharb', 'GHR', 1),
(2072, 132, 'Ghasri', 'GHS', 1),
(2073, 132, 'Kercem', 'KRC', 1),
(2074, 132, 'Munxar', 'MUN', 1),
(2075, 132, 'Nadur', 'NAD', 1),
(2076, 132, 'Qala', 'QAL', 1),
(2077, 132, 'Victoria', 'VIC', 1),
(2078, 132, 'San Lawrenz', 'SLA', 1),
(2079, 132, 'Sannat', 'SNT', 1),
(2080, 132, 'Xagra', 'ZAG', 1),
(2081, 132, 'Xewkija', 'XEW', 1),
(2082, 132, 'Zebbug', 'ZEB', 1),
(2083, 133, 'Ailinginae', 'ALG', 1),
(2084, 133, 'Ailinglaplap', 'ALL', 1),
(2085, 133, 'Ailuk', 'ALK', 1),
(2086, 133, 'Arno', 'ARN', 1),
(2087, 133, 'Aur', 'AUR', 1),
(2088, 133, 'Bikar', 'BKR', 1),
(2089, 133, 'Bikini', 'BKN', 1),
(2090, 133, 'Bokak', 'BKK', 1),
(2091, 133, 'Ebon', 'EBN', 1),
(2092, 133, 'Enewetak', 'ENT', 1),
(2093, 133, 'Erikub', 'EKB', 1),
(2094, 133, 'Jabat', 'JBT', 1),
(2095, 133, 'Jaluit', 'JLT', 1),
(2096, 133, 'Jemo', 'JEM', 1),
(2097, 133, 'Kili', 'KIL', 1),
(2098, 133, 'Kwajalein', 'KWJ', 1),
(2099, 133, 'Lae', 'LAE', 1),
(2100, 133, 'Lib', 'LIB', 1),
(2101, 133, 'Likiep', 'LKP', 1),
(2102, 133, 'Majuro', 'MJR', 1),
(2103, 133, 'Maloelap', 'MLP', 1),
(2104, 133, 'Mejit', 'MJT', 1),
(2105, 133, 'Mili', 'MIL', 1),
(2106, 133, 'Namorik', 'NMK', 1),
(2107, 133, 'Namu', 'NAM', 1),
(2108, 133, 'Rongelap', 'RGL', 1),
(2109, 133, 'Rongrik', 'RGK', 1),
(2110, 133, 'Toke', 'TOK', 1),
(2111, 133, 'Ujae', 'UJA', 1),
(2112, 133, 'Ujelang', 'UJL', 1),
(2113, 133, 'Utirik', 'UTK', 1),
(2114, 133, 'Wotho', 'WTH', 1),
(2115, 133, 'Wotje', 'WTJ', 1),
(2116, 135, 'Adrar', 'AD', 1),
(2117, 135, 'Assaba', 'AS', 1),
(2118, 135, 'Brakna', 'BR', 1),
(2119, 135, 'Dakhlet Nouadhibou', 'DN', 1),
(2120, 135, 'Gorgol', 'GO', 1),
(2121, 135, 'Guidimaka', 'GM', 1),
(2122, 135, 'Hodh Ech Chargui', 'HC', 1),
(2123, 135, 'Hodh El Gharbi', 'HG', 1),
(2124, 135, 'Inchiri', 'IN', 1),
(2125, 135, 'Tagant', 'TA', 1),
(2126, 135, 'Tiris Zemmour', 'TZ', 1),
(2127, 135, 'Trarza', 'TR', 1),
(2128, 135, 'Nouakchott', 'NO', 1),
(2129, 136, 'Beau Bassin-Rose Hill', 'BR', 1),
(2130, 136, 'Curepipe', 'CU', 1),
(2131, 136, 'Port Louis', 'PU', 1),
(2132, 136, 'Quatre Bornes', 'QB', 1),
(2133, 136, 'Vacoas-Phoenix', 'VP', 1),
(2134, 136, 'Agalega Islands', 'AG', 1),
(2135, 136, 'Cargados Carajos Shoals (Saint Brandon Islands)', 'CC', 1),
(2136, 136, 'Rodrigues', 'RO', 1),
(2137, 136, 'Black River', 'BL', 1),
(2138, 136, 'Flacq', 'FL', 1),
(2139, 136, 'Grand Port', 'GP', 1),
(2140, 136, 'Moka', 'MO', 1),
(2141, 136, 'Pamplemousses', 'PA', 1),
(2142, 136, 'Plaines Wilhems', 'PW', 1),
(2143, 136, 'Port Louis', 'PL', 1),
(2144, 136, 'Riviere du Rempart', 'RR', 1),
(2145, 136, 'Savanne', 'SA', 1),
(2146, 138, 'Baja California Norte', 'BN', 1),
(2147, 138, 'Baja California Sur', 'BS', 1),
(2148, 138, 'Campeche', 'CA', 1),
(2149, 138, 'Chiapas', 'CI', 1),
(2150, 138, 'Chihuahua', 'CH', 1),
(2151, 138, 'Coahuila de Zaragoza', 'CZ', 1),
(2152, 138, 'Colima', 'CL', 1),
(2153, 138, 'Distrito Federal', 'DF', 1),
(2154, 138, 'Durango', 'DU', 1),
(2155, 138, 'Guanajuato', 'GA', 1),
(2156, 138, 'Guerrero', 'GE', 1),
(2157, 138, 'Hidalgo', 'HI', 1),
(2158, 138, 'Jalisco', 'JA', 1),
(2159, 138, 'Mexico', 'ME', 1),
(2160, 138, 'Michoacan de Ocampo', 'MI', 1),
(2161, 138, 'Morelos', 'MO', 1),
(2162, 138, 'Nayarit', 'NA', 1),
(2163, 138, 'Nuevo Leon', 'NL', 1),
(2164, 138, 'Oaxaca', 'OA', 1),
(2165, 138, 'Puebla', 'PU', 1),
(2166, 138, 'Queretaro de Arteaga', 'QA', 1),
(2167, 138, 'Quintana Roo', 'QR', 1),
(2168, 138, 'San Luis Potosi', 'SA', 1),
(2169, 138, 'Sinaloa', 'SI', 1),
(2170, 138, 'Sonora', 'SO', 1),
(2171, 138, 'Tabasco', 'TB', 1),
(2172, 138, 'Tamaulipas', 'TM', 1),
(2173, 138, 'Tlaxcala', 'TL', 1),
(2174, 138, 'Veracruz-Llave', 'VE', 1),
(2175, 138, 'Yucatan', 'YU', 1),
(2176, 138, 'Zacatecas', 'ZA', 1),
(2177, 139, 'Chuuk', 'C', 1),
(2178, 139, 'Kosrae', 'K', 1),
(2179, 139, 'Pohnpei', 'P', 1),
(2180, 139, 'Yap', 'Y', 1),
(2181, 140, 'Gagauzia', 'GA', 1),
(2182, 140, 'Chisinau', 'CU', 1),
(2183, 140, 'Balti', 'BA', 1),
(2184, 140, 'Cahul', 'CA', 1),
(2185, 140, 'Edinet', 'ED', 1),
(2186, 140, 'Lapusna', 'LA', 1),
(2187, 140, 'Orhei', 'OR', 1),
(2188, 140, 'Soroca', 'SO', 1),
(2189, 140, 'Tighina', 'TI', 1),
(2190, 140, 'Ungheni', 'UN', 1),
(2191, 140, 'St‚nga Nistrului', 'SN', 1),
(2192, 141, 'Fontvieille', 'FV', 1),
(2193, 141, 'La Condamine', 'LC', 1),
(2194, 141, 'Monaco-Ville', 'MV', 1),
(2195, 141, 'Monte-Carlo', 'MC', 1),
(2196, 142, 'Ulanbaatar', '1', 1),
(2197, 142, 'Orhon', '035', 1),
(2198, 142, 'Darhan uul', '037', 1),
(2199, 142, 'Hentiy', '039', 1),
(2200, 142, 'Hovsgol', '041', 1),
(2201, 142, 'Hovd', '043', 1),
(2202, 142, 'Uvs', '046', 1),
(2203, 142, 'Tov', '047', 1),
(2204, 142, 'Selenge', '049', 1),
(2205, 142, 'Suhbaatar', '051', 1),
(2206, 142, 'Omnogovi', '053', 1),
(2207, 142, 'Ovorhangay', '055', 1),
(2208, 142, 'Dzavhan', '057', 1),
(2209, 142, 'DundgovL', '059', 1),
(2210, 142, 'Dornod', '061', 1),
(2211, 142, 'Dornogov', '063', 1),
(2212, 142, 'Govi-Sumber', '064', 1),
(2213, 142, 'Govi-Altay', '065', 1),
(2214, 142, 'Bulgan', '067', 1),
(2215, 142, 'Bayanhongor', '069', 1),
(2216, 142, 'Bayan-Olgiy', '071', 1),
(2217, 142, 'Arhangay', '073', 1),
(2218, 143, 'Saint Anthony', 'A', 1),
(2219, 143, 'Saint Georges', 'G', 1),
(2220, 143, 'Saint Peter', 'P', 1),
(2221, 144, 'Agadir', 'AGD', 1),
(2222, 144, 'Al Hoceima', 'HOC', 1),
(2223, 144, 'Azilal', 'AZI', 1),
(2224, 144, 'Beni Mellal', 'BME', 1),
(2225, 144, 'Ben Slimane', 'BSL', 1),
(2226, 144, 'Boulemane', 'BLM', 1),
(2227, 144, 'Casablanca', 'CBL', 1),
(2228, 144, 'Chaouen', 'CHA', 1),
(2229, 144, 'El Jadida', 'EJA', 1),
(2230, 144, 'El Kelaa des Sraghna', 'EKS', 1),
(2231, 144, 'Er Rachidia', 'ERA', 1),
(2232, 144, 'Essaouira', 'ESS', 1),
(2233, 144, 'Fes', 'FES', 1),
(2234, 144, 'Figuig', 'FIG', 1),
(2235, 144, 'Guelmim', 'GLM', 1),
(2236, 144, 'Ifrane', 'IFR', 1),
(2237, 144, 'Kenitra', 'KEN', 1),
(2238, 144, 'Khemisset', 'KHM', 1),
(2239, 144, 'Khenifra', 'KHN', 1),
(2240, 144, 'Khouribga', 'KHO', 1),
(2241, 144, 'Laayoune', 'LYN', 1),
(2242, 144, 'Larache', 'LAR', 1),
(2243, 144, 'Marrakech', 'MRK', 1),
(2244, 144, 'Meknes', 'MKN', 1),
(2245, 144, 'Nador', 'NAD', 1),
(2246, 144, 'Ouarzazate', 'ORZ', 1),
(2247, 144, 'Oujda', 'OUJ', 1),
(2248, 144, 'Rabat-Sale', 'RSA', 1),
(2249, 144, 'Safi', 'SAF', 1),
(2250, 144, 'Settat', 'SET', 1),
(2251, 144, 'Sidi Kacem', 'SKA', 1),
(2252, 144, 'Tangier', 'TGR', 1),
(2253, 144, 'Tan-Tan', 'TAN', 1),
(2254, 144, 'Taounate', 'TAO', 1),
(2255, 144, 'Taroudannt', 'TRD', 1),
(2256, 144, 'Tata', 'TAT', 1),
(2257, 144, 'Taza', 'TAZ', 1),
(2258, 144, 'Tetouan', 'TET', 1),
(2259, 144, 'Tiznit', 'TIZ', 1),
(2260, 144, 'Ad Dakhla', 'ADK', 1),
(2261, 144, 'Boujdour', 'BJD', 1),
(2262, 144, 'Es Smara', 'ESM', 1),
(2263, 145, 'Cabo Delgado', 'CD', 1),
(2264, 145, 'Gaza', 'GZ', 1),
(2265, 145, 'Inhambane', 'IN', 1),
(2266, 145, 'Manica', 'MN', 1),
(2267, 145, 'Maputo (city)', 'MC', 1),
(2268, 145, 'Maputo', 'MP', 1),
(2269, 145, 'Nampula', 'NA', 1),
(2270, 145, 'Niassa', 'NI', 1),
(2271, 145, 'Sofala', 'SO', 1),
(2272, 145, 'Tete', 'TE', 1),
(2273, 145, 'Zambezia', 'ZA', 1),
(2274, 146, 'Ayeyarwady', 'AY', 1),
(2275, 146, 'Bago', 'BG', 1),
(2276, 146, 'Magway', 'MG', 1),
(2277, 146, 'Mandalay', 'MD', 1),
(2278, 146, 'Sagaing', 'SG', 1),
(2279, 146, 'Tanintharyi', 'TN', 1),
(2280, 146, 'Yangon', 'YG', 1),
(2281, 146, 'Chin State', 'CH', 1),
(2282, 146, 'Kachin State', 'KC', 1),
(2283, 146, 'Kayah State', 'KH', 1),
(2284, 146, 'Kayin State', 'KN', 1),
(2285, 146, 'Mon State', 'MN', 1),
(2286, 146, 'Rakhine State', 'RK', 1),
(2287, 146, 'Shan State', 'SH', 1),
(2288, 147, 'Caprivi', 'CA', 1),
(2289, 147, 'Erongo', 'ER', 1),
(2290, 147, 'Hardap', 'HA', 1),
(2291, 147, 'Karas', 'KR', 1),
(2292, 147, 'Kavango', 'KV', 1),
(2293, 147, 'Khomas', 'KH', 1),
(2294, 147, 'Kunene', 'KU', 1),
(2295, 147, 'Ohangwena', 'OW', 1),
(2296, 147, 'Omaheke', 'OK', 1),
(2297, 147, 'Omusati', 'OT', 1),
(2298, 147, 'Oshana', 'ON', 1),
(2299, 147, 'Oshikoto', 'OO', 1),
(2300, 147, 'Otjozondjupa', 'OJ', 1),
(2301, 148, 'Aiwo', 'AO', 1),
(2302, 148, 'Anabar', 'AA', 1),
(2303, 148, 'Anetan', 'AT', 1),
(2304, 148, 'Anibare', 'AI', 1),
(2305, 148, 'Baiti', 'BA', 1),
(2306, 148, 'Boe', 'BO', 1),
(2307, 148, 'Buada', 'BU', 1),
(2308, 148, 'Denigomodu', 'DE', 1),
(2309, 148, 'Ewa', 'EW', 1),
(2310, 148, 'Ijuw', 'IJ', 1),
(2311, 148, 'Meneng', 'ME', 1),
(2312, 148, 'Nibok', 'NI', 1),
(2313, 148, 'Uaboe', 'UA', 1),
(2314, 148, 'Yaren', 'YA', 1),
(2315, 149, 'Bagmati', 'BA', 1),
(2316, 149, 'Bheri', 'BH', 1),
(2317, 149, 'Dhawalagiri', 'DH', 1),
(2318, 149, 'Gandaki', 'GA', 1),
(2319, 149, 'Janakpur', 'JA', 1),
(2320, 149, 'Karnali', 'KA', 1),
(2321, 149, 'Kosi', 'KO', 1),
(2322, 149, 'Lumbini', 'LU', 1),
(2323, 149, 'Mahakali', 'MA', 1),
(2324, 149, 'Mechi', 'ME', 1),
(2325, 149, 'Narayani', 'NA', 1),
(2326, 149, 'Rapti', 'RA', 1),
(2327, 149, 'Sagarmatha', 'SA', 1),
(2328, 149, 'Seti', 'SE', 1),
(2329, 150, 'Drenthe', 'DR', 1),
(2330, 150, 'Flevoland', 'FL', 1),
(2331, 150, 'Friesland', 'FR', 1),
(2332, 150, 'Gelderland', 'GE', 1),
(2333, 150, 'Groningen', 'GR', 1),
(2334, 150, 'Limburg', 'LI', 1),
(2335, 150, 'Noord Brabant', 'NB', 1),
(2336, 150, 'Noord Holland', 'NH', 1),
(2337, 150, 'Overijssel', 'OV', 1),
(2338, 150, 'Utrecht', 'UT', 1),
(2339, 150, 'Zeeland', 'ZE', 1),
(2340, 150, 'Zuid Holland', 'ZH', 1),
(2341, 152, 'Iles Loyaute', 'L', 1),
(2342, 152, 'Nord', 'N', 1),
(2343, 152, 'Sud', 'S', 1),
(2344, 153, 'Auckland', 'AUK', 1),
(2345, 153, 'Bay of Plenty', 'BOP', 1),
(2346, 153, 'Canterbury', 'CAN', 1),
(2347, 153, 'Coromandel', 'COR', 1),
(2348, 153, 'Gisborne', 'GIS', 1),
(2349, 153, 'Fiordland', 'FIO', 1),
(2350, 153, 'Hawke''s Bay', 'HKB', 1),
(2351, 153, 'Marlborough', 'MBH', 1),
(2352, 153, 'Manawatu-Wanganui', 'MWT', 1),
(2353, 153, 'Mt Cook-Mackenzie', 'MCM', 1),
(2354, 153, 'Nelson', 'NSN', 1),
(2355, 153, 'Northland', 'NTL', 1),
(2356, 153, 'Otago', 'OTA', 1),
(2357, 153, 'Southland', 'STL', 1),
(2358, 153, 'Taranaki', 'TKI', 1),
(2359, 153, 'Wellington', 'WGN', 1),
(2360, 153, 'Waikato', 'WKO', 1),
(2361, 153, 'Wairarapa', 'WAI', 1),
(2362, 153, 'West Coast', 'WTC', 1),
(2363, 154, 'Atlantico Norte', 'AN', 1),
(2364, 154, 'Atlantico Sur', 'AS', 1),
(2365, 154, 'Boaco', 'BO', 1),
(2366, 154, 'Carazo', 'CA', 1),
(2367, 154, 'Chinandega', 'CI', 1),
(2368, 154, 'Chontales', 'CO', 1),
(2369, 154, 'Esteli', 'ES', 1),
(2370, 154, 'Granada', 'GR', 1),
(2371, 154, 'Jinotega', 'JI', 1),
(2372, 154, 'Leon', 'LE', 1),
(2373, 154, 'Madriz', 'MD', 1),
(2374, 154, 'Managua', 'MN', 1),
(2375, 154, 'Masaya', 'MS', 1),
(2376, 154, 'Matagalpa', 'MT', 1),
(2377, 154, 'Nuevo Segovia', 'NS', 1),
(2378, 154, 'Rio San Juan', 'RS', 1),
(2379, 154, 'Rivas', 'RI', 1),
(2380, 155, 'Agadez', 'AG', 1),
(2381, 155, 'Diffa', 'DF', 1),
(2382, 155, 'Dosso', 'DS', 1),
(2383, 155, 'Maradi', 'MA', 1),
(2384, 155, 'Niamey', 'NM', 1),
(2385, 155, 'Tahoua', 'TH', 1),
(2386, 155, 'Tillaberi', 'TL', 1),
(2387, 155, 'Zinder', 'ZD', 1),
(2388, 156, 'Abia', 'AB', 1),
(2389, 156, 'Abuja Federal Capital Territory', 'CT', 1),
(2390, 156, 'Adamawa', 'AD', 1),
(2391, 156, 'Akwa Ibom', 'AK', 1),
(2392, 156, 'Anambra', 'AN', 1),
(2393, 156, 'Bauchi', 'BC', 1),
(2394, 156, 'Bayelsa', 'BY', 1),
(2395, 156, 'Benue', 'BN', 1),
(2396, 156, 'Borno', 'BO', 1),
(2397, 156, 'Cross River', 'CR', 1),
(2398, 156, 'Delta', 'DE', 1),
(2399, 156, 'Ebonyi', 'EB', 1),
(2400, 156, 'Edo', 'ED', 1),
(2401, 156, 'Ekiti', 'EK', 1),
(2402, 156, 'Enugu', 'EN', 1),
(2403, 156, 'Gombe', 'GO', 1),
(2404, 156, 'Imo', 'IM', 1),
(2405, 156, 'Jigawa', 'JI', 1),
(2406, 156, 'Kaduna', 'KD', 1),
(2407, 156, 'Kano', 'KN', 1),
(2408, 156, 'Katsina', 'KT', 1),
(2409, 156, 'Kebbi', 'KE', 1),
(2410, 156, 'Kogi', 'KO', 1),
(2411, 156, 'Kwara', 'KW', 1),
(2412, 156, 'Lagos', 'LA', 1),
(2413, 156, 'Nassarawa', 'NA', 1),
(2414, 156, 'Niger', 'NI', 1),
(2415, 156, 'Ogun', 'OG', 1),
(2416, 156, 'Ondo', 'ONG', 1),
(2417, 156, 'Osun', 'OS', 1),
(2418, 156, 'Oyo', 'OY', 1),
(2419, 156, 'Plateau', 'PL', 1),
(2420, 156, 'Rivers', 'RI', 1),
(2421, 156, 'Sokoto', 'SO', 1),
(2422, 156, 'Taraba', 'TA', 1),
(2423, 156, 'Yobe', 'YO', 1),
(2424, 156, 'Zamfara', 'ZA', 1),
(2425, 159, 'Northern Islands', 'N', 1),
(2426, 159, 'Rota', 'R', 1),
(2427, 159, 'Saipan', 'S', 1),
(2428, 159, 'Tinian', 'T', 1),
(2429, 160, 'Akershus', 'AK', 1),
(2430, 160, 'Aust-Agder', 'AA', 1),
(2431, 160, 'Buskerud', 'BU', 1),
(2432, 160, 'Finnmark', 'FM', 1),
(2433, 160, 'Hedmark', 'HM', 1),
(2434, 160, 'Hordaland', 'HL', 1),
(2435, 160, 'More og Romdal', 'MR', 1),
(2436, 160, 'Nord-Trondelag', 'NT', 1),
(2437, 160, 'Nordland', 'NL', 1),
(2438, 160, 'Ostfold', 'OF', 1),
(2439, 160, 'Oppland', 'OP', 1),
(2440, 160, 'Oslo', 'OL', 1),
(2441, 160, 'Rogaland', 'RL', 1),
(2442, 160, 'Sor-Trondelag', 'ST', 1),
(2443, 160, 'Sogn og Fjordane', 'SJ', 1),
(2444, 160, 'Svalbard', 'SV', 1),
(2445, 160, 'Telemark', 'TM', 1),
(2446, 160, 'Troms', 'TR', 1),
(2447, 160, 'Vest-Agder', 'VA', 1),
(2448, 160, 'Vestfold', 'VF', 1),
(2449, 161, 'Ad Dakhiliyah', 'DA', 1),
(2450, 161, 'Al Batinah', 'BA', 1),
(2451, 161, 'Al Wusta', 'WU', 1),
(2452, 161, 'Ash Sharqiyah', 'SH', 1),
(2453, 161, 'Az Zahirah', 'ZA', 1),
(2454, 161, 'Masqat', 'MA', 1),
(2455, 161, 'Musandam', 'MU', 1),
(2456, 161, 'Zufar', 'ZU', 1),
(2457, 162, 'Balochistan', 'B', 1),
(2458, 162, 'Federally Administered Tribal Areas', 'T', 1),
(2459, 162, 'Islamabad Capital Territory', 'I', 1),
(2460, 162, 'North-West Frontier', 'N', 1),
(2461, 162, 'Punjab', 'P', 1),
(2462, 162, 'Sindh', 'S', 1),
(2463, 163, 'Aimeliik', 'AM', 1),
(2464, 163, 'Airai', 'AR', 1),
(2465, 163, 'Angaur', 'AN', 1),
(2466, 163, 'Hatohobei', 'HA', 1),
(2467, 163, 'Kayangel', 'KA', 1),
(2468, 163, 'Koror', 'KO', 1),
(2469, 163, 'Melekeok', 'ME', 1),
(2470, 163, 'Ngaraard', 'NA', 1),
(2471, 163, 'Ngarchelong', 'NG', 1),
(2472, 163, 'Ngardmau', 'ND', 1),
(2473, 163, 'Ngatpang', 'NT', 1),
(2474, 163, 'Ngchesar', 'NC', 1),
(2475, 163, 'Ngeremlengui', 'NR', 1),
(2476, 163, 'Ngiwal', 'NW', 1),
(2477, 163, 'Peleliu', 'PE', 1),
(2478, 163, 'Sonsorol', 'SO', 1),
(2479, 164, 'Bocas del Toro', 'BT', 1),
(2480, 164, 'Chiriqui', 'CH', 1),
(2481, 164, 'Cocle', 'CC', 1),
(2482, 164, 'Colon', 'CL', 1),
(2483, 164, 'Darien', 'DA', 1),
(2484, 164, 'Herrera', 'HE', 1),
(2485, 164, 'Los Santos', 'LS', 1),
(2486, 164, 'Panama', 'PA', 1),
(2487, 164, 'San Blas', 'SB', 1),
(2488, 164, 'Veraguas', 'VG', 1),
(2489, 165, 'Bougainville', 'BV', 1),
(2490, 165, 'Central', 'CE', 1),
(2491, 165, 'Chimbu', 'CH', 1),
(2492, 165, 'Eastern Highlands', 'EH', 1),
(2493, 165, 'East New Britain', 'EB', 1),
(2494, 165, 'East Sepik', 'ES', 1),
(2495, 165, 'Enga', 'EN', 1),
(2496, 165, 'Gulf', 'GU', 1),
(2497, 165, 'Madang', 'MD', 1),
(2498, 165, 'Manus', 'MN', 1),
(2499, 165, 'Milne Bay', 'MB', 1),
(2500, 165, 'Morobe', 'MR', 1),
(2501, 165, 'National Capital', 'NC', 1),
(2502, 165, 'New Ireland', 'NI', 1),
(2503, 165, 'Northern', 'NO', 1),
(2504, 165, 'Sandaun', 'SA', 1),
(2505, 165, 'Southern Highlands', 'SH', 1),
(2506, 165, 'Western', 'WE', 1),
(2507, 165, 'Western Highlands', 'WH', 1),
(2508, 165, 'West New Britain', 'WB', 1),
(2509, 166, 'Alto Paraguay', 'AG', 1),
(2510, 166, 'Alto Parana', 'AN', 1),
(2511, 166, 'Amambay', 'AM', 1),
(2512, 166, 'Asuncion', 'AS', 1),
(2513, 166, 'Boqueron', 'BO', 1),
(2514, 166, 'Caaguazu', 'CG', 1),
(2515, 166, 'Caazapa', 'CZ', 1),
(2516, 166, 'Canindeyu', 'CN', 1),
(2517, 166, 'Central', 'CE', 1),
(2518, 166, 'Concepcion', 'CC', 1),
(2519, 166, 'Cordillera', 'CD', 1),
(2520, 166, 'Guaira', 'GU', 1),
(2521, 166, 'Itapua', 'IT', 1),
(2522, 166, 'Misiones', 'MI', 1),
(2523, 166, 'Neembucu', 'NE', 1),
(2524, 166, 'Paraguari', 'PA', 1),
(2525, 166, 'Presidente Hayes', 'PH', 1),
(2526, 166, 'San Pedro', 'SP', 1),
(2527, 167, 'Amazonas', 'AM', 1),
(2528, 167, 'Ancash', 'AN', 1),
(2529, 167, 'Apurimac', 'AP', 1),
(2530, 167, 'Arequipa', 'AR', 1),
(2531, 167, 'Ayacucho', 'AY', 1),
(2532, 167, 'Cajamarca', 'CJ', 1),
(2533, 167, 'Callao', 'CL', 1),
(2534, 167, 'Cusco', 'CU', 1),
(2535, 167, 'Huancavelica', 'HV', 1),
(2536, 167, 'Huanuco', 'HO', 1),
(2537, 167, 'Ica', 'IC', 1),
(2538, 167, 'Junin', 'JU', 1),
(2539, 167, 'La Libertad', 'LD', 1),
(2540, 167, 'Lambayeque', 'LY', 1),
(2541, 167, 'Lima', 'LI', 1),
(2542, 167, 'Loreto', 'LO', 1),
(2543, 167, 'Madre de Dios', 'MD', 1),
(2544, 167, 'Moquegua', 'MO', 1),
(2545, 167, 'Pasco', 'PA', 1),
(2546, 167, 'Piura', 'PI', 1),
(2547, 167, 'Puno', 'PU', 1),
(2548, 167, 'San Martin', 'SM', 1),
(2549, 167, 'Tacna', 'TA', 1),
(2550, 167, 'Tumbes', 'TU', 1),
(2551, 167, 'Ucayali', 'UC', 1),
(2552, 168, 'Abra', 'ABR', 1),
(2553, 168, 'Agusan del Norte', 'ANO', 1),
(2554, 168, 'Agusan del Sur', 'ASU', 1),
(2555, 168, 'Aklan', 'AKL', 1),
(2556, 168, 'Albay', 'ALB', 1),
(2557, 168, 'Antique', 'ANT', 1),
(2558, 168, 'Apayao', 'APY', 1),
(2559, 168, 'Aurora', 'AUR', 1),
(2560, 168, 'Basilan', 'BAS', 1),
(2561, 168, 'Bataan', 'BTA', 1),
(2562, 168, 'Batanes', 'BTE', 1),
(2563, 168, 'Batangas', 'BTG', 1),
(2564, 168, 'Biliran', 'BLR', 1),
(2565, 168, 'Benguet', 'BEN', 1),
(2566, 168, 'Bohol', 'BOL', 1),
(2567, 168, 'Bukidnon', 'BUK', 1),
(2568, 168, 'Bulacan', 'BUL', 1),
(2569, 168, 'Cagayan', 'CAG', 1),
(2570, 168, 'Camarines Norte', 'CNO', 1),
(2571, 168, 'Camarines Sur', 'CSU', 1),
(2572, 168, 'Camiguin', 'CAM', 1),
(2573, 168, 'Capiz', 'CAP', 1),
(2574, 168, 'Catanduanes', 'CAT', 1),
(2575, 168, 'Cavite', 'CAV', 1),
(2576, 168, 'Cebu', 'CEB', 1),
(2577, 168, 'Compostela', 'CMP', 1),
(2578, 168, 'Davao del Norte', 'DNO', 1),
(2579, 168, 'Davao del Sur', 'DSU', 1),
(2580, 168, 'Davao Oriental', 'DOR', 1),
(2581, 168, 'Eastern Samar', 'ESA', 1),
(2582, 168, 'Guimaras', 'GUI', 1),
(2583, 168, 'Ifugao', 'IFU', 1),
(2584, 168, 'Ilocos Norte', 'INO', 1),
(2585, 168, 'Ilocos Sur', 'ISU', 1),
(2586, 168, 'Iloilo', 'ILO', 1),
(2587, 168, 'Isabela', 'ISA', 1),
(2588, 168, 'Kalinga', 'KAL', 1),
(2589, 168, 'Laguna', 'LAG', 1),
(2590, 168, 'Lanao del Norte', 'LNO', 1),
(2591, 168, 'Lanao del Sur', 'LSU', 1),
(2592, 168, 'La Union', 'UNI', 1),
(2593, 168, 'Leyte', 'LEY', 1),
(2594, 168, 'Maguindanao', 'MAG', 1),
(2595, 168, 'Marinduque', 'MRN', 1),
(2596, 168, 'Masbate', 'MSB', 1),
(2597, 168, 'Mindoro Occidental', 'MIC', 1),
(2598, 168, 'Mindoro Oriental', 'MIR', 1),
(2599, 168, 'Misamis Occidental', 'MSC', 1),
(2600, 168, 'Misamis Oriental', 'MOR', 1),
(2601, 168, 'Mountain', 'MOP', 1),
(2602, 168, 'Negros Occidental', 'NOC', 1),
(2603, 168, 'Negros Oriental', 'NOR', 1),
(2604, 168, 'North Cotabato', 'NCT', 1),
(2605, 168, 'Northern Samar', 'NSM', 1),
(2606, 168, 'Nueva Ecija', 'NEC', 1),
(2607, 168, 'Nueva Vizcaya', 'NVZ', 1),
(2608, 168, 'Palawan', 'PLW', 1),
(2609, 168, 'Pampanga', 'PMP', 1),
(2610, 168, 'Pangasinan', 'PNG', 1),
(2611, 168, 'Quezon', 'QZN', 1),
(2612, 168, 'Quirino', 'QRN', 1),
(2613, 168, 'Rizal', 'RIZ', 1),
(2614, 168, 'Romblon', 'ROM', 1),
(2615, 168, 'Samar', 'SMR', 1),
(2616, 168, 'Sarangani', 'SRG', 1),
(2617, 168, 'Siquijor', 'SQJ', 1),
(2618, 168, 'Sorsogon', 'SRS', 1),
(2619, 168, 'South Cotabato', 'SCO', 1),
(2620, 168, 'Southern Leyte', 'SLE', 1),
(2621, 168, 'Sultan Kudarat', 'SKU', 1),
(2622, 168, 'Sulu', 'SLU', 1),
(2623, 168, 'Surigao del Norte', 'SNO', 1),
(2624, 168, 'Surigao del Sur', 'SSU', 1),
(2625, 168, 'Tarlac', 'TAR', 1),
(2626, 168, 'Tawi-Tawi', 'TAW', 1),
(2627, 168, 'Zambales', 'ZBL', 1),
(2628, 168, 'Zamboanga del Norte', 'ZNO', 1),
(2629, 168, 'Zamboanga del Sur', 'ZSU', 1),
(2630, 168, 'Zamboanga Sibugay', 'ZSI', 1),
(2631, 170, 'Dolnoslaskie', 'DO', 1),
(2632, 170, 'Kujawsko-Pomorskie', 'KP', 1),
(2633, 170, 'Lodzkie', 'LO', 1),
(2634, 170, 'Lubelskie', 'LL', 1),
(2635, 170, 'Lubuskie', 'LU', 1),
(2636, 170, 'Malopolskie', 'ML', 1),
(2637, 170, 'Mazowieckie', 'MZ', 1),
(2638, 170, 'Opolskie', 'OP', 1),
(2639, 170, 'Podkarpackie', 'PP', 1),
(2640, 170, 'Podlaskie', 'PL', 1),
(2641, 170, 'Pomorskie', 'PM', 1),
(2642, 170, 'Slaskie', 'SL', 1),
(2643, 170, 'Swietokrzyskie', 'SW', 1),
(2644, 170, 'Warminsko-Mazurskie', 'WM', 1),
(2645, 170, 'Wielkopolskie', 'WP', 1),
(2646, 170, 'Zachodniopomorskie', 'ZA', 1),
(2647, 198, 'Saint Pierre', 'P', 1),
(2648, 198, 'Miquelon', 'M', 1),
(2649, 171, 'A&ccedil;ores', 'AC', 1),
(2650, 171, 'Aveiro', 'AV', 1),
(2651, 171, 'Beja', 'BE', 1),
(2652, 171, 'Braga', 'BR', 1),
(2653, 171, 'Bragan&ccedil;a', 'BA', 1),
(2654, 171, 'Castelo Branco', 'CB', 1),
(2655, 171, 'Coimbra', 'CO', 1),
(2656, 171, '&Eacute;vora', 'EV', 1),
(2657, 171, 'Faro', 'FA', 1),
(2658, 171, 'Guarda', 'GU', 1),
(2659, 171, 'Leiria', 'LE', 1),
(2660, 171, 'Lisboa', 'LI', 1),
(2661, 171, 'Madeira', 'ME', 1),
(2662, 171, 'Portalegre', 'PO', 1),
(2663, 171, 'Porto', 'PR', 1),
(2664, 171, 'Santar&eacute;m', 'SA', 1),
(2665, 171, 'Set&uacute;bal', 'SE', 1),
(2666, 171, 'Viana do Castelo', 'VC', 1),
(2667, 171, 'Vila Real', 'VR', 1),
(2668, 171, 'Viseu', 'VI', 1),
(2669, 173, 'Ad Dawhah', 'DW', 1),
(2670, 173, 'Al Ghuwayriyah', 'GW', 1),
(2671, 173, 'Al Jumayliyah', 'JM', 1),
(2672, 173, 'Al Khawr', 'KR', 1),
(2673, 173, 'Al Wakrah', 'WK', 1),
(2674, 173, 'Ar Rayyan', 'RN', 1),
(2675, 173, 'Jarayan al Batinah', 'JB', 1),
(2676, 173, 'Madinat ash Shamal', 'MS', 1),
(2677, 173, 'Umm Sa''id', 'UD', 1),
(2678, 173, 'Umm Salal', 'UL', 1),
(2679, 175, 'Alba', 'AB', 1),
(2680, 175, 'Arad', 'AR', 1),
(2681, 175, 'Arges', 'AG', 1),
(2682, 175, 'Bacau', 'BC', 1),
(2683, 175, 'Bihor', 'BH', 1),
(2684, 175, 'Bistrita-Nasaud', 'BN', 1),
(2685, 175, 'Botosani', 'BT', 1),
(2686, 175, 'Brasov', 'BV', 1),
(2687, 175, 'Braila', 'BR', 1),
(2688, 175, 'Bucuresti', 'B', 1),
(2689, 175, 'Buzau', 'BZ', 1),
(2690, 175, 'Caras-Severin', 'CS', 1),
(2691, 175, 'Calarasi', 'CL', 1),
(2692, 175, 'Cluj', 'CJ', 1),
(2693, 175, 'Constanta', 'CT', 1),
(2694, 175, 'Covasna', 'CV', 1),
(2695, 175, 'Dimbovita', 'DB', 1),
(2696, 175, 'Dolj', 'DJ', 1),
(2697, 175, 'Galati', 'GL', 1),
(2698, 175, 'Giurgiu', 'GR', 1),
(2699, 175, 'Gorj', 'GJ', 1),
(2700, 175, 'Harghita', 'HR', 1),
(2701, 175, 'Hunedoara', 'HD', 1),
(2702, 175, 'Ialomita', 'IL', 1),
(2703, 175, 'Iasi', 'IS', 1),
(2704, 175, 'Ilfov', 'IF', 1),
(2705, 175, 'Maramures', 'MM', 1),
(2706, 175, 'Mehedinti', 'MH', 1),
(2707, 175, 'Mures', 'MS', 1),
(2708, 175, 'Neamt', 'NT', 1),
(2709, 175, 'Olt', 'OT', 1),
(2710, 175, 'Prahova', 'PH', 1),
(2711, 175, 'Satu-Mare', 'SM', 1),
(2712, 175, 'Salaj', 'SJ', 1),
(2713, 175, 'Sibiu', 'SB', 1),
(2714, 175, 'Suceava', 'SV', 1),
(2715, 175, 'Teleorman', 'TR', 1),
(2716, 175, 'Timis', 'TM', 1),
(2717, 175, 'Tulcea', 'TL', 1),
(2718, 175, 'Vaslui', 'VS', 1),
(2719, 175, 'Valcea', 'VL', 1),
(2720, 175, 'Vrancea', 'VN', 1),
(2721, 176, 'Abakan', 'AB', 1),
(2722, 176, 'Aginskoye', 'AG', 1),
(2723, 176, 'Anadyr', 'AN', 1),
(2724, 176, 'Arkahangelsk', 'AR', 1),
(2725, 176, 'Astrakhan', 'AS', 1),
(2726, 176, 'Barnaul', 'BA', 1),
(2727, 176, 'Belgorod', 'BE', 1),
(2728, 176, 'Birobidzhan', 'BI', 1),
(2729, 176, 'Blagoveshchensk', 'BL', 1),
(2730, 176, 'Bryansk', 'BR', 1),
(2731, 176, 'Cheboksary', 'CH', 1),
(2732, 176, 'Chelyabinsk', 'CL', 1),
(2733, 176, 'Cherkessk', 'CR', 1),
(2734, 176, 'Chita', 'CI', 1),
(2735, 176, 'Dudinka', 'DU', 1),
(2736, 176, 'Elista', 'EL', 1),
(2738, 176, 'Gorno-Altaysk', 'GA', 1),
(2739, 176, 'Groznyy', 'GR', 1),
(2740, 176, 'Irkutsk', 'IR', 1),
(2741, 176, 'Ivanovo', 'IV', 1),
(2742, 176, 'Izhevsk', 'IZ', 1),
(2743, 176, 'Kalinigrad', 'KA', 1),
(2744, 176, 'Kaluga', 'KL', 1),
(2745, 176, 'Kasnodar', 'KS', 1),
(2746, 176, 'Kazan', 'KZ', 1),
(2747, 176, 'Kemerovo', 'KE', 1),
(2748, 176, 'Khabarovsk', 'KH', 1),
(2749, 176, 'Khanty-Mansiysk', 'KM', 1),
(2750, 176, 'Kostroma', 'KO', 1),
(2751, 176, 'Krasnodar', 'KR', 1),
(2752, 176, 'Krasnoyarsk', 'KN', 1),
(2753, 176, 'Kudymkar', 'KU', 1),
(2754, 176, 'Kurgan', 'KG', 1),
(2755, 176, 'Kursk', 'KK', 1),
(2756, 176, 'Kyzyl', 'KY', 1),
(2757, 176, 'Lipetsk', 'LI', 1),
(2758, 176, 'Magadan', 'MA', 1),
(2759, 176, 'Makhachkala', 'MK', 1),
(2760, 176, 'Maykop', 'MY', 1),
(2761, 176, 'Moscow', 'MO', 1),
(2762, 176, 'Murmansk', 'MU', 1),
(2763, 176, 'Nalchik', 'NA', 1),
(2764, 176, 'Naryan Mar', 'NR', 1),
(2765, 176, 'Nazran', 'NZ', 1),
(2766, 176, 'Nizhniy Novgorod', 'NI', 1),
(2767, 176, 'Novgorod', 'NO', 1),
(2768, 176, 'Novosibirsk', 'NV', 1),
(2769, 176, 'Omsk', 'OM', 1),
(2770, 176, 'Orel', 'OR', 1),
(2771, 176, 'Orenburg', 'OE', 1),
(2772, 176, 'Palana', 'PA', 1),
(2773, 176, 'Penza', 'PE', 1),
(2774, 176, 'Perm', 'PR', 1),
(2775, 176, 'Petropavlovsk-Kamchatskiy', 'PK', 1),
(2776, 176, 'Petrozavodsk', 'PT', 1),
(2777, 176, 'Pskov', 'PS', 1),
(2778, 176, 'Rostov-na-Donu', 'RO', 1),
(2779, 176, 'Ryazan', 'RY', 1),
(2780, 176, 'Salekhard', 'SL', 1),
(2781, 176, 'Samara', 'SA', 1),
(2782, 176, 'Saransk', 'SR', 1),
(2783, 176, 'Saratov', 'SV', 1),
(2784, 176, 'Smolensk', 'SM', 1),
(2785, 176, 'St. Petersburg', 'SP', 1),
(2786, 176, 'Stavropol', 'ST', 1),
(2787, 176, 'Syktyvkar', 'SY', 1),
(2788, 176, 'Tambov', 'TA', 1),
(2789, 176, 'Tomsk', 'TO', 1),
(2790, 176, 'Tula', 'TU', 1),
(2791, 176, 'Tura', 'TR', 1),
(2792, 176, 'Tver', 'TV', 1),
(2793, 176, 'Tyumen', 'TY', 1),
(2794, 176, 'Ufa', 'UF', 1),
(2795, 176, 'Ul''yanovsk', 'UL', 1),
(2796, 176, 'Ulan-Ude', 'UU', 1),
(2797, 176, 'Ust''-Ordynskiy', 'US', 1),
(2798, 176, 'Vladikavkaz', 'VL', 1),
(2799, 176, 'Vladimir', 'VA', 1),
(2800, 176, 'Vladivostok', 'VV', 1),
(2801, 176, 'Volgograd', 'VG', 1),
(2802, 176, 'Vologda', 'VD', 1),
(2803, 176, 'Voronezh', 'VO', 1),
(2804, 176, 'Vyatka', 'VY', 1),
(2805, 176, 'Yakutsk', 'YA', 1),
(2806, 176, 'Yaroslavl', 'YR', 1),
(2807, 176, 'Yekaterinburg', 'YE', 1),
(2808, 176, 'Yoshkar-Ola', 'YO', 1),
(2809, 177, 'Butare', 'BU', 1),
(2810, 177, 'Byumba', 'BY', 1),
(2811, 177, 'Cyangugu', 'CY', 1),
(2812, 177, 'Gikongoro', 'GK', 1),
(2813, 177, 'Gisenyi', 'GS', 1),
(2814, 177, 'Gitarama', 'GT', 1),
(2815, 177, 'Kibungo', 'KG', 1),
(2816, 177, 'Kibuye', 'KY', 1),
(2817, 177, 'Kigali Rurale', 'KR', 1),
(2818, 177, 'Kigali-ville', 'KV', 1),
(2819, 177, 'Ruhengeri', 'RU', 1),
(2820, 177, 'Umutara', 'UM', 1),
(2821, 178, 'Christ Church Nichola Town', 'CCN', 1),
(2822, 178, 'Saint Anne Sandy Point', 'SAS', 1),
(2823, 178, 'Saint George Basseterre', 'SGB', 1),
(2824, 178, 'Saint George Gingerland', 'SGG', 1),
(2825, 178, 'Saint James Windward', 'SJW', 1),
(2826, 178, 'Saint John Capesterre', 'SJC', 1),
(2827, 178, 'Saint John Figtree', 'SJF', 1),
(2828, 178, 'Saint Mary Cayon', 'SMC', 1),
(2829, 178, 'Saint Paul Capesterre', 'CAP', 1),
(2830, 178, 'Saint Paul Charlestown', 'CHA', 1),
(2831, 178, 'Saint Peter Basseterre', 'SPB', 1),
(2832, 178, 'Saint Thomas Lowland', 'STL', 1),
(2833, 178, 'Saint Thomas Middle Island', 'STM', 1),
(2834, 178, 'Trinity Palmetto Point', 'TPP', 1),
(2835, 179, 'Anse-la-Raye', 'AR', 1),
(2836, 179, 'Castries', 'CA', 1),
(2837, 179, 'Choiseul', 'CH', 1),
(2838, 179, 'Dauphin', 'DA', 1),
(2839, 179, 'Dennery', 'DE', 1),
(2840, 179, 'Gros-Islet', 'GI', 1),
(2841, 179, 'Laborie', 'LA', 1),
(2842, 179, 'Micoud', 'MI', 1),
(2843, 179, 'Praslin', 'PR', 1),
(2844, 179, 'Soufriere', 'SO', 1),
(2845, 179, 'Vieux-Fort', 'VF', 1),
(2846, 180, 'Charlotte', 'C', 1),
(2847, 180, 'Grenadines', 'R', 1),
(2848, 180, 'Saint Andrew', 'A', 1),
(2849, 180, 'Saint David', 'D', 1),
(2850, 180, 'Saint George', 'G', 1),
(2851, 180, 'Saint Patrick', 'P', 1),
(2852, 181, 'A''ana', 'AN', 1),
(2853, 181, 'Aiga-i-le-Tai', 'AI', 1),
(2854, 181, 'Atua', 'AT', 1),
(2855, 181, 'Fa''asaleleaga', 'FA', 1),
(2856, 181, 'Gaga''emauga', 'GE', 1),
(2857, 181, 'Gagaifomauga', 'GF', 1),
(2858, 181, 'Palauli', 'PA', 1),
(2859, 181, 'Satupa''itea', 'SA', 1),
(2860, 181, 'Tuamasaga', 'TU', 1),
(2861, 181, 'Va''a-o-Fonoti', 'VF', 1),
(2862, 181, 'Vaisigano', 'VS', 1),
(2863, 182, 'Acquaviva', 'AC', 1),
(2864, 182, 'Borgo Maggiore', 'BM', 1),
(2865, 182, 'Chiesanuova', 'CH', 1),
(2866, 182, 'Domagnano', 'DO', 1),
(2867, 182, 'Faetano', 'FA', 1),
(2868, 182, 'Fiorentino', 'FI', 1),
(2869, 182, 'Montegiardino', 'MO', 1),
(2870, 182, 'Citta di San Marino', 'SM', 1),
(2871, 182, 'Serravalle', 'SE', 1),
(2872, 183, 'Sao Tome', 'S', 1),
(2873, 183, 'Principe', 'P', 1),
(2874, 184, 'Al Bahah', 'BH', 1),
(2875, 184, 'Al Hudud ash Shamaliyah', 'HS', 1),
(2876, 184, 'Al Jawf', 'JF', 1),
(2877, 184, 'Al Madinah', 'MD', 1),
(2878, 184, 'Al Qasim', 'QS', 1),
(2879, 184, 'Ar Riyad', 'RD', 1),
(2880, 184, 'Ash Sharqiyah (Eastern)', 'AQ', 1),
(2881, 184, '''Asir', 'AS', 1),
(2882, 184, 'Ha''il', 'HL', 1),
(2883, 184, 'Jizan', 'JZ', 1),
(2884, 184, 'Makkah', 'ML', 1),
(2885, 184, 'Najran', 'NR', 1),
(2886, 184, 'Tabuk', 'TB', 1),
(2887, 185, 'Dakar', 'DA', 1),
(2888, 185, 'Diourbel', 'DI', 1),
(2889, 185, 'Fatick', 'FA', 1),
(2890, 185, 'Kaolack', 'KA', 1),
(2891, 185, 'Kolda', 'KO', 1),
(2892, 185, 'Louga', 'LO', 1),
(2893, 185, 'Matam', 'MA', 1),
(2894, 185, 'Saint-Louis', 'SL', 1),
(2895, 185, 'Tambacounda', 'TA', 1),
(2896, 185, 'Thies', 'TH', 1),
(2897, 185, 'Ziguinchor', 'ZI', 1),
(2898, 186, 'Anse aux Pins', 'AP', 1),
(2899, 186, 'Anse Boileau', 'AB', 1),
(2900, 186, 'Anse Etoile', 'AE', 1),
(2901, 186, 'Anse Louis', 'AL', 1),
(2902, 186, 'Anse Royale', 'AR', 1),
(2903, 186, 'Baie Lazare', 'BL', 1),
(2904, 186, 'Baie Sainte Anne', 'BS', 1),
(2905, 186, 'Beau Vallon', 'BV', 1),
(2906, 186, 'Bel Air', 'BA', 1),
(2907, 186, 'Bel Ombre', 'BO', 1),
(2908, 186, 'Cascade', 'CA', 1),
(2909, 186, 'Glacis', 'GL', 1),
(2910, 186, 'Grand'' Anse (on Mahe)', 'GM', 1),
(2911, 186, 'Grand'' Anse (on Praslin)', 'GP', 1),
(2912, 186, 'La Digue', 'DG', 1),
(2913, 186, 'La Riviere Anglaise', 'RA', 1),
(2914, 186, 'Mont Buxton', 'MB', 1),
(2915, 186, 'Mont Fleuri', 'MF', 1),
(2916, 186, 'Plaisance', 'PL', 1),
(2917, 186, 'Pointe La Rue', 'PR', 1),
(2918, 186, 'Port Glaud', 'PG', 1),
(2919, 186, 'Saint Louis', 'SL', 1),
(2920, 186, 'Takamaka', 'TA', 1),
(2921, 187, 'Eastern', 'E', 1),
(2922, 187, 'Northern', 'N', 1),
(2923, 187, 'Southern', 'S', 1),
(2924, 187, 'Western', 'W', 1),
(2925, 189, 'Banskobystrický', 'BA', 1),
(2926, 189, 'Bratislavský', 'BR', 1),
(2927, 189, 'Košický', 'KO', 1),
(2928, 189, 'Nitriansky', 'NI', 1),
(2929, 189, 'Prešovský', 'PR', 1),
(2930, 189, 'Trenčiansky', 'TC', 1),
(2931, 189, 'Trnavský', 'TV', 1),
(2932, 189, 'Žilinský', 'ZI', 1),
(2933, 191, 'Central', 'CE', 1),
(2934, 191, 'Choiseul', 'CH', 1),
(2935, 191, 'Guadalcanal', 'GC', 1),
(2936, 191, 'Honiara', 'HO', 1),
(2937, 191, 'Isabel', 'IS', 1),
(2938, 191, 'Makira', 'MK', 1),
(2939, 191, 'Malaita', 'ML', 1),
(2940, 191, 'Rennell and Bellona', 'RB', 1),
(2941, 191, 'Temotu', 'TM', 1),
(2942, 191, 'Western', 'WE', 1),
(2943, 192, 'Awdal', 'AW', 1),
(2944, 192, 'Bakool', 'BK', 1),
(2945, 192, 'Banaadir', 'BN', 1),
(2946, 192, 'Bari', 'BR', 1),
(2947, 192, 'Bay', 'BY', 1),
(2948, 192, 'Galguduud', 'GA', 1),
(2949, 192, 'Gedo', 'GE', 1),
(2950, 192, 'Hiiraan', 'HI', 1),
(2951, 192, 'Jubbada Dhexe', 'JD', 1),
(2952, 192, 'Jubbada Hoose', 'JH', 1),
(2953, 192, 'Mudug', 'MU', 1),
(2954, 192, 'Nugaal', 'NU', 1),
(2955, 192, 'Sanaag', 'SA', 1),
(2956, 192, 'Shabeellaha Dhexe', 'SD', 1),
(2957, 192, 'Shabeellaha Hoose', 'SH', 1),
(2958, 192, 'Sool', 'SL', 1),
(2959, 192, 'Togdheer', 'TO', 1),
(2960, 192, 'Woqooyi Galbeed', 'WG', 1),
(2961, 193, 'Eastern Cape', 'EC', 1),
(2962, 193, 'Free State', 'FS', 1),
(2963, 193, 'Gauteng', 'GT', 1),
(2964, 193, 'KwaZulu-Natal', 'KN', 1),
(2965, 193, 'Limpopo', 'LP', 1),
(2966, 193, 'Mpumalanga', 'MP', 1),
(2967, 193, 'North West', 'NW', 1),
(2968, 193, 'Northern Cape', 'NC', 1),
(2969, 193, 'Western Cape', 'WC', 1),
(2970, 195, 'La Coru&ntilde;a', 'CA', 1),
(2971, 195, '&Aacute;lava', 'AL', 1),
(2972, 195, 'Albacete', 'AB', 1),
(2973, 195, 'Alicante', 'AC', 1),
(2974, 195, 'Almeria', 'AM', 1),
(2975, 195, 'Asturias', 'AS', 1),
(2976, 195, '&Aacute;vila', 'AV', 1),
(2977, 195, 'Badajoz', 'BJ', 1),
(2978, 195, 'Baleares', 'IB', 1),
(2979, 195, 'Barcelona', 'BA', 1),
(2980, 195, 'Burgos', 'BU', 1),
(2981, 195, 'C&aacute;ceres', 'CC', 1),
(2982, 195, 'C&aacute;diz', 'CZ', 1),
(2983, 195, 'Cantabria', 'CT', 1),
(2984, 195, 'Castell&oacute;n', 'CL', 1),
(2985, 195, 'Ceuta', 'CE', 1),
(2986, 195, 'Ciudad Real', 'CR', 1),
(2987, 195, 'C&oacute;rdoba', 'CD', 1),
(2988, 195, 'Cuenca', 'CU', 1),
(2989, 195, 'Girona', 'GI', 1),
(2990, 195, 'Granada', 'GD', 1),
(2991, 195, 'Guadalajara', 'GJ', 1),
(2992, 195, 'Guip&uacute;zcoa', 'GP', 1),
(2993, 195, 'Huelva', 'HL', 1),
(2994, 195, 'Huesca', 'HS', 1),
(2995, 195, 'Ja&eacute;n', 'JN', 1),
(2996, 195, 'La Rioja', 'RJ', 1),
(2997, 195, 'Las Palmas', 'PM', 1),
(2998, 195, 'Leon', 'LE', 1),
(2999, 195, 'Lleida', 'LL', 1),
(3000, 195, 'Lugo', 'LG', 1),
(3001, 195, 'Madrid', 'MD', 1),
(3002, 195, 'Malaga', 'MA', 1),
(3003, 195, 'Melilla', 'ML', 1),
(3004, 195, 'Murcia', 'MU', 1),
(3005, 195, 'Navarra', 'NV', 1),
(3006, 195, 'Ourense', 'OU', 1),
(3007, 195, 'Palencia', 'PL', 1),
(3008, 195, 'Pontevedra', 'PO', 1),
(3009, 195, 'Salamanca', 'SL', 1),
(3010, 195, 'Santa Cruz de Tenerife', 'SC', 1),
(3011, 195, 'Segovia', 'SG', 1),
(3012, 195, 'Sevilla', 'SV', 1),
(3013, 195, 'Soria', 'SO', 1),
(3014, 195, 'Tarragona', 'TA', 1),
(3015, 195, 'Teruel', 'TE', 1),
(3016, 195, 'Toledo', 'TO', 1),
(3017, 195, 'Valencia', 'VC', 1),
(3018, 195, 'Valladolid', 'VD', 1),
(3019, 195, 'Vizcaya', 'VZ', 1),
(3020, 195, 'Zamora', 'ZM', 1),
(3021, 195, 'Zaragoza', 'ZR', 1),
(3022, 196, 'Central', 'CE', 1),
(3023, 196, 'Eastern', 'EA', 1),
(3024, 196, 'North Central', 'NC', 1),
(3025, 196, 'Northern', 'NO', 1),
(3026, 196, 'North Western', 'NW', 1),
(3027, 196, 'Sabaragamuwa', 'SA', 1),
(3028, 196, 'Southern', 'SO', 1),
(3029, 196, 'Uva', 'UV', 1),
(3030, 196, 'Western', 'WE', 1),
(3032, 197, 'Saint Helena', 'S', 1),
(3034, 199, 'A''ali an Nil', 'ANL', 1),
(3035, 199, 'Al Bahr al Ahmar', 'BAM', 1),
(3036, 199, 'Al Buhayrat', 'BRT', 1),
(3037, 199, 'Al Jazirah', 'JZR', 1),
(3038, 199, 'Al Khartum', 'KRT', 1),
(3039, 199, 'Al Qadarif', 'QDR', 1),
(3040, 199, 'Al Wahdah', 'WDH', 1),
(3041, 199, 'An Nil al Abyad', 'ANB', 1),
(3042, 199, 'An Nil al Azraq', 'ANZ', 1),
(3043, 199, 'Ash Shamaliyah', 'ASH', 1),
(3044, 199, 'Bahr al Jabal', 'BJA', 1),
(3045, 199, 'Gharb al Istiwa''iyah', 'GIS', 1),
(3046, 199, 'Gharb Bahr al Ghazal', 'GBG', 1),
(3047, 199, 'Gharb Darfur', 'GDA', 1),
(3048, 199, 'Gharb Kurdufan', 'GKU', 1),
(3049, 199, 'Janub Darfur', 'JDA', 1),
(3050, 199, 'Janub Kurdufan', 'JKU', 1),
(3051, 199, 'Junqali', 'JQL', 1),
(3052, 199, 'Kassala', 'KSL', 1),
(3053, 199, 'Nahr an Nil', 'NNL', 1),
(3054, 199, 'Shamal Bahr al Ghazal', 'SBG', 1),
(3055, 199, 'Shamal Darfur', 'SDA', 1),
(3056, 199, 'Shamal Kurdufan', 'SKU', 1),
(3057, 199, 'Sharq al Istiwa''iyah', 'SIS', 1),
(3058, 199, 'Sinnar', 'SNR', 1),
(3059, 199, 'Warab', 'WRB', 1),
(3060, 200, 'Brokopondo', 'BR', 1),
(3061, 200, 'Commewijne', 'CM', 1),
(3062, 200, 'Coronie', 'CR', 1),
(3063, 200, 'Marowijne', 'MA', 1),
(3064, 200, 'Nickerie', 'NI', 1),
(3065, 200, 'Para', 'PA', 1),
(3066, 200, 'Paramaribo', 'PM', 1),
(3067, 200, 'Saramacca', 'SA', 1),
(3068, 200, 'Sipaliwini', 'SI', 1),
(3069, 200, 'Wanica', 'WA', 1),
(3070, 202, 'Hhohho', 'H', 1),
(3071, 202, 'Lubombo', 'L', 1),
(3072, 202, 'Manzini', 'M', 1),
(3073, 202, 'Shishelweni', 'S', 1),
(3074, 203, 'Blekinge', 'K', 1),
(3075, 203, 'Dalarna', 'W', 1),
(3076, 203, 'Gävleborg', 'X', 1),
(3077, 203, 'Gotland', 'I', 1),
(3078, 203, 'Halland', 'N', 1),
(3079, 203, 'Jämtland', 'Z', 1),
(3080, 203, 'Jönköping', 'F', 1),
(3081, 203, 'Kalmar', 'H', 1),
(3082, 203, 'Kronoberg', 'G', 1),
(3083, 203, 'Norrbotten', 'BD', 1),
(3084, 203, 'Örebro', 'T', 1),
(3085, 203, 'Östergötland', 'E', 1),
(3086, 203, 'Sk&aring;ne', 'M', 1),
(3087, 203, 'Södermanland', 'D', 1),
(3088, 203, 'Stockholm', 'AB', 1),
(3089, 203, 'Uppsala', 'C', 1),
(3090, 203, 'Värmland', 'S', 1),
(3091, 203, 'Västerbotten', 'AC', 1),
(3092, 203, 'Västernorrland', 'Y', 1),
(3093, 203, 'Västmanland', 'U', 1),
(3094, 203, 'Västra Götaland', 'O', 1),
(3095, 204, 'Aargau', 'AG', 1),
(3096, 204, 'Appenzell Ausserrhoden', 'AR', 1),
(3097, 204, 'Appenzell Innerrhoden', 'AI', 1),
(3098, 204, 'Basel-Stadt', 'BS', 1),
(3099, 204, 'Basel-Landschaft', 'BL', 1),
(3100, 204, 'Bern', 'BE', 1),
(3101, 204, 'Fribourg', 'FR', 1),
(3102, 204, 'Gen&egrave;ve', 'GE', 1),
(3103, 204, 'Glarus', 'GL', 1),
(3104, 204, 'Graubünden', 'GR', 1),
(3105, 204, 'Jura', 'JU', 1),
(3106, 204, 'Luzern', 'LU', 1),
(3107, 204, 'Neuch&acirc;tel', 'NE', 1),
(3108, 204, 'Nidwald', 'NW', 1),
(3109, 204, 'Obwald', 'OW', 1),
(3110, 204, 'St. Gallen', 'SG', 1),
(3111, 204, 'Schaffhausen', 'SH', 1),
(3112, 204, 'Schwyz', 'SZ', 1),
(3113, 204, 'Solothurn', 'SO', 1),
(3114, 204, 'Thurgau', 'TG', 1),
(3115, 204, 'Ticino', 'TI', 1),
(3116, 204, 'Uri', 'UR', 1),
(3117, 204, 'Valais', 'VS', 1),
(3118, 204, 'Vaud', 'VD', 1),
(3119, 204, 'Zug', 'ZG', 1),
(3120, 204, 'Zürich', 'ZH', 1),
(3121, 205, 'Al Hasakah', 'HA', 1),
(3122, 205, 'Al Ladhiqiyah', 'LA', 1),
(3123, 205, 'Al Qunaytirah', 'QU', 1),
(3124, 205, 'Ar Raqqah', 'RQ', 1),
(3125, 205, 'As Suwayda', 'SU', 1),
(3126, 205, 'Dara', 'DA', 1),
(3127, 205, 'Dayr az Zawr', 'DZ', 1),
(3128, 205, 'Dimashq', 'DI', 1),
(3129, 205, 'Halab', 'HL', 1),
(3130, 205, 'Hamah', 'HM', 1),
(3131, 205, 'Hims', 'HI', 1),
(3132, 205, 'Idlib', 'ID', 1),
(3133, 205, 'Rif Dimashq', 'RD', 1);
INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(3134, 205, 'Tartus', 'TA', 1),
(3135, 206, 'Chang-hua', 'CH', 1),
(3136, 206, 'Chia-i', 'CI', 1),
(3137, 206, 'Hsin-chu', 'HS', 1),
(3138, 206, 'Hua-lien', 'HL', 1),
(3139, 206, 'I-lan', 'IL', 1),
(3140, 206, 'Kao-hsiung county', 'KH', 1),
(3141, 206, 'Kin-men', 'KM', 1),
(3142, 206, 'Lien-chiang', 'LC', 1),
(3143, 206, 'Miao-li', 'ML', 1),
(3144, 206, 'Nan-t''ou', 'NT', 1),
(3145, 206, 'P''eng-hu', 'PH', 1),
(3146, 206, 'P''ing-tung', 'PT', 1),
(3147, 206, 'T''ai-chung', 'TG', 1),
(3148, 206, 'T''ai-nan', 'TA', 1),
(3149, 206, 'T''ai-pei county', 'TP', 1),
(3150, 206, 'T''ai-tung', 'TT', 1),
(3151, 206, 'T''ao-yuan', 'TY', 1),
(3152, 206, 'Yun-lin', 'YL', 1),
(3153, 206, 'Chia-i city', 'CC', 1),
(3154, 206, 'Chi-lung', 'CL', 1),
(3155, 206, 'Hsin-chu', 'HC', 1),
(3156, 206, 'T''ai-chung', 'TH', 1),
(3157, 206, 'T''ai-nan', 'TN', 1),
(3158, 206, 'Kao-hsiung city', 'KC', 1),
(3159, 206, 'T''ai-pei city', 'TC', 1),
(3160, 207, 'Gorno-Badakhstan', 'GB', 1),
(3161, 207, 'Khatlon', 'KT', 1),
(3162, 207, 'Sughd', 'SU', 1),
(3163, 208, 'Arusha', 'AR', 1),
(3164, 208, 'Dar es Salaam', 'DS', 1),
(3165, 208, 'Dodoma', 'DO', 1),
(3166, 208, 'Iringa', 'IR', 1),
(3167, 208, 'Kagera', 'KA', 1),
(3168, 208, 'Kigoma', 'KI', 1),
(3169, 208, 'Kilimanjaro', 'KJ', 1),
(3170, 208, 'Lindi', 'LN', 1),
(3171, 208, 'Manyara', 'MY', 1),
(3172, 208, 'Mara', 'MR', 1),
(3173, 208, 'Mbeya', 'MB', 1),
(3174, 208, 'Morogoro', 'MO', 1),
(3175, 208, 'Mtwara', 'MT', 1),
(3176, 208, 'Mwanza', 'MW', 1),
(3177, 208, 'Pemba North', 'PN', 1),
(3178, 208, 'Pemba South', 'PS', 1),
(3179, 208, 'Pwani', 'PW', 1),
(3180, 208, 'Rukwa', 'RK', 1),
(3181, 208, 'Ruvuma', 'RV', 1),
(3182, 208, 'Shinyanga', 'SH', 1),
(3183, 208, 'Singida', 'SI', 1),
(3184, 208, 'Tabora', 'TB', 1),
(3185, 208, 'Tanga', 'TN', 1),
(3186, 208, 'Zanzibar Central/South', 'ZC', 1),
(3187, 208, 'Zanzibar North', 'ZN', 1),
(3188, 208, 'Zanzibar Urban/West', 'ZU', 1),
(3189, 209, 'Amnat Charoen', 'Amnat Charoen', 1),
(3190, 209, 'Ang Thong', 'Ang Thong', 1),
(3191, 209, 'Ayutthaya', 'Ayutthaya', 1),
(3192, 209, 'Bangkok', 'Bangkok', 1),
(3193, 209, 'Buriram', 'Buriram', 1),
(3194, 209, 'Chachoengsao', 'Chachoengsao', 1),
(3195, 209, 'Chai Nat', 'Chai Nat', 1),
(3196, 209, 'Chaiyaphum', 'Chaiyaphum', 1),
(3197, 209, 'Chanthaburi', 'Chanthaburi', 1),
(3198, 209, 'Chiang Mai', 'Chiang Mai', 1),
(3199, 209, 'Chiang Rai', 'Chiang Rai', 1),
(3200, 209, 'Chon Buri', 'Chon Buri', 1),
(3201, 209, 'Chumphon', 'Chumphon', 1),
(3202, 209, 'Kalasin', 'Kalasin', 1),
(3203, 209, 'Kamphaeng Phet', 'Kamphaeng Phet', 1),
(3204, 209, 'Kanchanaburi', 'Kanchanaburi', 1),
(3205, 209, 'Khon Kaen', 'Khon Kaen', 1),
(3206, 209, 'Krabi', 'Krabi', 1),
(3207, 209, 'Lampang', 'Lampang', 1),
(3208, 209, 'Lamphun', 'Lamphun', 1),
(3209, 209, 'Loei', 'Loei', 1),
(3210, 209, 'Lop Buri', 'Lop Buri', 1),
(3211, 209, 'Mae Hong Son', 'Mae Hong Son', 1),
(3212, 209, 'Maha Sarakham', 'Maha Sarakham', 1),
(3213, 209, 'Mukdahan', 'Mukdahan', 1),
(3214, 209, 'Nakhon Nayok', 'Nakhon Nayok', 1),
(3215, 209, 'Nakhon Pathom', 'Nakhon Pathom', 1),
(3216, 209, 'Nakhon Phanom', 'Nakhon Phanom', 1),
(3217, 209, 'Nakhon Ratchasima', 'Nakhon Ratchasima', 1),
(3218, 209, 'Nakhon Sawan', 'Nakhon Sawan', 1),
(3219, 209, 'Nakhon Si Thammarat', 'Nakhon Si Thammarat', 1),
(3220, 209, 'Nan', 'Nan', 1),
(3221, 209, 'Narathiwat', 'Narathiwat', 1),
(3222, 209, 'Nong Bua Lamphu', 'Nong Bua Lamphu', 1),
(3223, 209, 'Nong Khai', 'Nong Khai', 1),
(3224, 209, 'Nonthaburi', 'Nonthaburi', 1),
(3225, 209, 'Pathum Thani', 'Pathum Thani', 1),
(3226, 209, 'Pattani', 'Pattani', 1),
(3227, 209, 'Phangnga', 'Phangnga', 1),
(3228, 209, 'Phatthalung', 'Phatthalung', 1),
(3229, 209, 'Phayao', 'Phayao', 1),
(3230, 209, 'Phetchabun', 'Phetchabun', 1),
(3231, 209, 'Phetchaburi', 'Phetchaburi', 1),
(3232, 209, 'Phichit', 'Phichit', 1),
(3233, 209, 'Phitsanulok', 'Phitsanulok', 1),
(3234, 209, 'Phrae', 'Phrae', 1),
(3235, 209, 'Phuket', 'Phuket', 1),
(3236, 209, 'Prachin Buri', 'Prachin Buri', 1),
(3237, 209, 'Prachuap Khiri Khan', 'Prachuap Khiri Khan', 1),
(3238, 209, 'Ranong', 'Ranong', 1),
(3239, 209, 'Ratchaburi', 'Ratchaburi', 1),
(3240, 209, 'Rayong', 'Rayong', 1),
(3241, 209, 'Roi Et', 'Roi Et', 1),
(3242, 209, 'Sa Kaeo', 'Sa Kaeo', 1),
(3243, 209, 'Sakon Nakhon', 'Sakon Nakhon', 1),
(3244, 209, 'Samut Prakan', 'Samut Prakan', 1),
(3245, 209, 'Samut Sakhon', 'Samut Sakhon', 1),
(3246, 209, 'Samut Songkhram', 'Samut Songkhram', 1),
(3247, 209, 'Sara Buri', 'Sara Buri', 1),
(3248, 209, 'Satun', 'Satun', 1),
(3249, 209, 'Sing Buri', 'Sing Buri', 1),
(3250, 209, 'Sisaket', 'Sisaket', 1),
(3251, 209, 'Songkhla', 'Songkhla', 1),
(3252, 209, 'Sukhothai', 'Sukhothai', 1),
(3253, 209, 'Suphan Buri', 'Suphan Buri', 1),
(3254, 209, 'Surat Thani', 'Surat Thani', 1),
(3255, 209, 'Surin', 'Surin', 1),
(3256, 209, 'Tak', 'Tak', 1),
(3257, 209, 'Trang', 'Trang', 1),
(3258, 209, 'Trat', 'Trat', 1),
(3259, 209, 'Ubon Ratchathani', 'Ubon Ratchathani', 1),
(3260, 209, 'Udon Thani', 'Udon Thani', 1),
(3261, 209, 'Uthai Thani', 'Uthai Thani', 1),
(3262, 209, 'Uttaradit', 'Uttaradit', 1),
(3263, 209, 'Yala', 'Yala', 1),
(3264, 209, 'Yasothon', 'Yasothon', 1),
(3265, 210, 'Kara', 'K', 1),
(3266, 210, 'Plateaux', 'P', 1),
(3267, 210, 'Savanes', 'S', 1),
(3268, 210, 'Centrale', 'C', 1),
(3269, 210, 'Maritime', 'M', 1),
(3270, 211, 'Atafu', 'A', 1),
(3271, 211, 'Fakaofo', 'F', 1),
(3272, 211, 'Nukunonu', 'N', 1),
(3273, 212, 'Ha''apai', 'H', 1),
(3274, 212, 'Tongatapu', 'T', 1),
(3275, 212, 'Vava''u', 'V', 1),
(3276, 213, 'Couva/Tabaquite/Talparo', 'CT', 1),
(3277, 213, 'Diego Martin', 'DM', 1),
(3278, 213, 'Mayaro/Rio Claro', 'MR', 1),
(3279, 213, 'Penal/Debe', 'PD', 1),
(3280, 213, 'Princes Town', 'PT', 1),
(3281, 213, 'Sangre Grande', 'SG', 1),
(3282, 213, 'San Juan/Laventille', 'SL', 1),
(3283, 213, 'Siparia', 'SI', 1),
(3284, 213, 'Tunapuna/Piarco', 'TP', 1),
(3285, 213, 'Port of Spain', 'PS', 1),
(3286, 213, 'San Fernando', 'SF', 1),
(3287, 213, 'Arima', 'AR', 1),
(3288, 213, 'Point Fortin', 'PF', 1),
(3289, 213, 'Chaguanas', 'CH', 1),
(3290, 213, 'Tobago', 'TO', 1),
(3291, 214, 'Ariana', 'AR', 1),
(3292, 214, 'Beja', 'BJ', 1),
(3293, 214, 'Ben Arous', 'BA', 1),
(3294, 214, 'Bizerte', 'BI', 1),
(3295, 214, 'Gabes', 'GB', 1),
(3296, 214, 'Gafsa', 'GF', 1),
(3297, 214, 'Jendouba', 'JE', 1),
(3298, 214, 'Kairouan', 'KR', 1),
(3299, 214, 'Kasserine', 'KS', 1),
(3300, 214, 'Kebili', 'KB', 1),
(3301, 214, 'Kef', 'KF', 1),
(3302, 214, 'Mahdia', 'MH', 1),
(3303, 214, 'Manouba', 'MN', 1),
(3304, 214, 'Medenine', 'ME', 1),
(3305, 214, 'Monastir', 'MO', 1),
(3306, 214, 'Nabeul', 'NA', 1),
(3307, 214, 'Sfax', 'SF', 1),
(3308, 214, 'Sidi', 'SD', 1),
(3309, 214, 'Siliana', 'SL', 1),
(3310, 214, 'Sousse', 'SO', 1),
(3311, 214, 'Tataouine', 'TA', 1),
(3312, 214, 'Tozeur', 'TO', 1),
(3313, 214, 'Tunis', 'TU', 1),
(3314, 214, 'Zaghouan', 'ZA', 1),
(3315, 215, 'Adana', 'ADA', 1),
(3316, 215, 'Adıyaman', 'ADI', 1),
(3317, 215, 'Afyonkarahisar', 'AFY', 1),
(3318, 215, 'Ağrı', 'AGR', 1),
(3319, 215, 'Aksaray', 'AKS', 1),
(3320, 215, 'Amasya', 'AMA', 1),
(3321, 215, 'Ankara', 'ANK', 1),
(3322, 215, 'Antalya', 'ANT', 1),
(3323, 215, 'Ardahan', 'ARD', 1),
(3324, 215, 'Artvin', 'ART', 1),
(3325, 215, 'Aydın', 'AYI', 1),
(3326, 215, 'Balıkesir', 'BAL', 1),
(3327, 215, 'Bartın', 'BAR', 1),
(3328, 215, 'Batman', 'BAT', 1),
(3329, 215, 'Bayburt', 'BAY', 1),
(3330, 215, 'Bilecik', 'BIL', 1),
(3331, 215, 'Bingöl', 'BIN', 1),
(3332, 215, 'Bitlis', 'BIT', 1),
(3333, 215, 'Bolu', 'BOL', 1),
(3334, 215, 'Burdur', 'BRD', 1),
(3335, 215, 'Bursa', 'BRS', 1),
(3336, 215, 'Çanakkale', 'CKL', 1),
(3337, 215, 'Çankırı', 'CKR', 1),
(3338, 215, 'Çorum', 'COR', 1),
(3339, 215, 'Denizli', 'DEN', 1),
(3340, 215, 'Diyarbakır', 'DIY', 1),
(3341, 215, 'Düzce', 'DUZ', 1),
(3342, 215, 'Edirne', 'EDI', 1),
(3343, 215, 'Elazığ', 'ELA', 1),
(3344, 215, 'Erzincan', 'EZC', 1),
(3345, 215, 'Erzurum', 'EZR', 1),
(3346, 215, 'Eskişehir', 'ESK', 1),
(3347, 215, 'Gaziantep', 'GAZ', 1),
(3348, 215, 'Giresun', 'GIR', 1),
(3349, 215, 'Gümüşhane', 'GMS', 1),
(3350, 215, 'Hakkari', 'HKR', 1),
(3351, 215, 'Hatay', 'HTY', 1),
(3352, 215, 'Iğdır', 'IGD', 1),
(3353, 215, 'Isparta', 'ISP', 1),
(3354, 215, 'İstanbul', 'IST', 1),
(3355, 215, 'İzmir', 'IZM', 1),
(3356, 215, 'Kahramanmaraş', 'KAH', 1),
(3357, 215, 'Karabük', 'KRB', 1),
(3358, 215, 'Karaman', 'KRM', 1),
(3359, 215, 'Kars', 'KRS', 1),
(3360, 215, 'Kastamonu', 'KAS', 1),
(3361, 215, 'Kayseri', 'KAY', 1),
(3362, 215, 'Kilis', 'KLS', 1),
(3363, 215, 'Kırıkkale', 'KRK', 1),
(3364, 215, 'Kırklareli', 'KLR', 1),
(3365, 215, 'Kırşehir', 'KRH', 1),
(3366, 215, 'Kocaeli', 'KOC', 1),
(3367, 215, 'Konya', 'KON', 1),
(3368, 215, 'Kütahya', 'KUT', 1),
(3369, 215, 'Malatya', 'MAL', 1),
(3370, 215, 'Manisa', 'MAN', 1),
(3371, 215, 'Mardin', 'MAR', 1),
(3372, 215, 'Mersin', 'MER', 1),
(3373, 215, 'Muğla', 'MUG', 1),
(3374, 215, 'Muş', 'MUS', 1),
(3375, 215, 'Nevşehir', 'NEV', 1),
(3376, 215, 'Niğde', 'NIG', 1),
(3377, 215, 'Ordu', 'ORD', 1),
(3378, 215, 'Osmaniye', 'OSM', 1),
(3379, 215, 'Rize', 'RIZ', 1),
(3380, 215, 'Sakarya', 'SAK', 1),
(3381, 215, 'Samsun', 'SAM', 1),
(3382, 215, 'Şanlıurfa', 'SAN', 1),
(3383, 215, 'Siirt', 'SII', 1),
(3384, 215, 'Sinop', 'SIN', 1),
(3385, 215, 'Şırnak', 'SIR', 1),
(3386, 215, 'Sivas', 'SIV', 1),
(3387, 215, 'Tekirdağ', 'TEL', 1),
(3388, 215, 'Tokat', 'TOK', 1),
(3389, 215, 'Trabzon', 'TRA', 1),
(3390, 215, 'Tunceli', 'TUN', 1),
(3391, 215, 'Uşak', 'USK', 1),
(3392, 215, 'Van', 'VAN', 1),
(3393, 215, 'Yalova', 'YAL', 1),
(3394, 215, 'Yozgat', 'YOZ', 1),
(3395, 215, 'Zonguldak', 'ZON', 1),
(3396, 216, 'Ahal Welayaty', 'A', 1),
(3397, 216, 'Balkan Welayaty', 'B', 1),
(3398, 216, 'Dashhowuz Welayaty', 'D', 1),
(3399, 216, 'Lebap Welayaty', 'L', 1),
(3400, 216, 'Mary Welayaty', 'M', 1),
(3401, 217, 'Ambergris Cays', 'AC', 1),
(3402, 217, 'Dellis Cay', 'DC', 1),
(3403, 217, 'French Cay', 'FC', 1),
(3404, 217, 'Little Water Cay', 'LW', 1),
(3405, 217, 'Parrot Cay', 'RC', 1),
(3406, 217, 'Pine Cay', 'PN', 1),
(3407, 217, 'Salt Cay', 'SL', 1),
(3408, 217, 'Grand Turk', 'GT', 1),
(3409, 217, 'South Caicos', 'SC', 1),
(3410, 217, 'East Caicos', 'EC', 1),
(3411, 217, 'Middle Caicos', 'MC', 1),
(3412, 217, 'North Caicos', 'NC', 1),
(3413, 217, 'Providenciales', 'PR', 1),
(3414, 217, 'West Caicos', 'WC', 1),
(3415, 218, 'Nanumanga', 'NMG', 1),
(3416, 218, 'Niulakita', 'NLK', 1),
(3417, 218, 'Niutao', 'NTO', 1),
(3418, 218, 'Funafuti', 'FUN', 1),
(3419, 218, 'Nanumea', 'NME', 1),
(3420, 218, 'Nui', 'NUI', 1),
(3421, 218, 'Nukufetau', 'NFT', 1),
(3422, 218, 'Nukulaelae', 'NLL', 1),
(3423, 218, 'Vaitupu', 'VAI', 1),
(3424, 219, 'Kalangala', 'KAL', 1),
(3425, 219, 'Kampala', 'KMP', 1),
(3426, 219, 'Kayunga', 'KAY', 1),
(3427, 219, 'Kiboga', 'KIB', 1),
(3428, 219, 'Luwero', 'LUW', 1),
(3429, 219, 'Masaka', 'MAS', 1),
(3430, 219, 'Mpigi', 'MPI', 1),
(3431, 219, 'Mubende', 'MUB', 1),
(3432, 219, 'Mukono', 'MUK', 1),
(3433, 219, 'Nakasongola', 'NKS', 1),
(3434, 219, 'Rakai', 'RAK', 1),
(3435, 219, 'Sembabule', 'SEM', 1),
(3436, 219, 'Wakiso', 'WAK', 1),
(3437, 219, 'Bugiri', 'BUG', 1),
(3438, 219, 'Busia', 'BUS', 1),
(3439, 219, 'Iganga', 'IGA', 1),
(3440, 219, 'Jinja', 'JIN', 1),
(3441, 219, 'Kaberamaido', 'KAB', 1),
(3442, 219, 'Kamuli', 'KML', 1),
(3443, 219, 'Kapchorwa', 'KPC', 1),
(3444, 219, 'Katakwi', 'KTK', 1),
(3445, 219, 'Kumi', 'KUM', 1),
(3446, 219, 'Mayuge', 'MAY', 1),
(3447, 219, 'Mbale', 'MBA', 1),
(3448, 219, 'Pallisa', 'PAL', 1),
(3449, 219, 'Sironko', 'SIR', 1),
(3450, 219, 'Soroti', 'SOR', 1),
(3451, 219, 'Tororo', 'TOR', 1),
(3452, 219, 'Adjumani', 'ADJ', 1),
(3453, 219, 'Apac', 'APC', 1),
(3454, 219, 'Arua', 'ARU', 1),
(3455, 219, 'Gulu', 'GUL', 1),
(3456, 219, 'Kitgum', 'KIT', 1),
(3457, 219, 'Kotido', 'KOT', 1),
(3458, 219, 'Lira', 'LIR', 1),
(3459, 219, 'Moroto', 'MRT', 1),
(3460, 219, 'Moyo', 'MOY', 1),
(3461, 219, 'Nakapiripirit', 'NAK', 1),
(3462, 219, 'Nebbi', 'NEB', 1),
(3463, 219, 'Pader', 'PAD', 1),
(3464, 219, 'Yumbe', 'YUM', 1),
(3465, 219, 'Bundibugyo', 'BUN', 1),
(3466, 219, 'Bushenyi', 'BSH', 1),
(3467, 219, 'Hoima', 'HOI', 1),
(3468, 219, 'Kabale', 'KBL', 1),
(3469, 219, 'Kabarole', 'KAR', 1),
(3470, 219, 'Kamwenge', 'KAM', 1),
(3471, 219, 'Kanungu', 'KAN', 1),
(3472, 219, 'Kasese', 'KAS', 1),
(3473, 219, 'Kibaale', 'KBA', 1),
(3474, 219, 'Kisoro', 'KIS', 1),
(3475, 219, 'Kyenjojo', 'KYE', 1),
(3476, 219, 'Masindi', 'MSN', 1),
(3477, 219, 'Mbarara', 'MBR', 1),
(3478, 219, 'Ntungamo', 'NTU', 1),
(3479, 219, 'Rukungiri', 'RUK', 1),
(3480, 220, 'Cherkas''ka Oblast''', '71', 1),
(3481, 220, 'Chernihivs''ka Oblast''', '74', 1),
(3482, 220, 'Chernivets''ka Oblast''', '77', 1),
(3483, 220, 'Crimea', '43', 1),
(3484, 220, 'Dnipropetrovs''ka Oblast''', '12', 1),
(3485, 220, 'Donets''ka Oblast''', '14', 1),
(3486, 220, 'Ivano-Frankivs''ka Oblast''', '26', 1),
(3487, 220, 'Khersons''ka Oblast''', '65', 1),
(3488, 220, 'Khmel''nyts''ka Oblast''', '68', 1),
(3489, 220, 'Kirovohrads''ka Oblast''', '35', 1),
(3490, 220, 'Kyiv', '30', 1),
(3491, 220, 'Kyivs''ka Oblast''', '32', 1),
(3492, 220, 'Luhans''ka Oblast''', '09', 1),
(3493, 220, 'L''vivs''ka Oblast''', '46', 1),
(3494, 220, 'Mykolayivs''ka Oblast''', '48', 1),
(3495, 220, 'Odes''ka Oblast''', '51', 1),
(3496, 220, 'Poltavs''ka Oblast''', '53', 1),
(3497, 220, 'Rivnens''ka Oblast''', '56', 1),
(3498, 220, 'Sevastopol''', '40', 1),
(3499, 220, 'Sums''ka Oblast''', '59', 1),
(3500, 220, 'Ternopil''s''ka Oblast''', '61', 1),
(3501, 220, 'Vinnyts''ka Oblast''', '05', 1),
(3502, 220, 'Volyns''ka Oblast''', '07', 1),
(3503, 220, 'Zakarpats''ka Oblast''', '21', 1),
(3504, 220, 'Zaporiz''ka Oblast''', '23', 1),
(3505, 220, 'Zhytomyrs''ka oblast''', '18', 1),
(3506, 221, 'Abu Dhabi', 'ADH', 1),
(3507, 221, '''Ajman', 'AJ', 1),
(3508, 221, 'Al Fujayrah', 'FU', 1),
(3509, 221, 'Ash Shariqah', 'SH', 1),
(3510, 221, 'Dubai', 'DU', 1),
(3511, 221, 'R''as al Khaymah', 'RK', 1),
(3512, 221, 'Umm al Qaywayn', 'UQ', 1),
(3513, 222, 'Aberdeen', 'ABN', 1),
(3514, 222, 'Aberdeenshire', 'ABNS', 1),
(3515, 222, 'Anglesey', 'ANG', 1),
(3516, 222, 'Angus', 'AGS', 1),
(3517, 222, 'Argyll and Bute', 'ARY', 1),
(3518, 222, 'Bedfordshire', 'BEDS', 1),
(3519, 222, 'Berkshire', 'BERKS', 1),
(3520, 222, 'Blaenau Gwent', 'BLA', 1),
(3521, 222, 'Bridgend', 'BRI', 1),
(3522, 222, 'Bristol', 'BSTL', 1),
(3523, 222, 'Buckinghamshire', 'BUCKS', 1),
(3524, 222, 'Caerphilly', 'CAE', 1),
(3525, 222, 'Cambridgeshire', 'CAMBS', 1),
(3526, 222, 'Cardiff', 'CDF', 1),
(3527, 222, 'Carmarthenshire', 'CARM', 1),
(3528, 222, 'Ceredigion', 'CDGN', 1),
(3529, 222, 'Cheshire', 'CHES', 1),
(3530, 222, 'Clackmannanshire', 'CLACK', 1),
(3531, 222, 'Conwy', 'CON', 1),
(3532, 222, 'Cornwall', 'CORN', 1),
(3533, 222, 'Denbighshire', 'DNBG', 1),
(3534, 222, 'Derbyshire', 'DERBY', 1),
(3535, 222, 'Devon', 'DVN', 1),
(3536, 222, 'Dorset', 'DOR', 1),
(3537, 222, 'Dumfries and Galloway', 'DGL', 1),
(3538, 222, 'Dundee', 'DUND', 1),
(3539, 222, 'Durham', 'DHM', 1),
(3540, 222, 'East Ayrshire', 'ARYE', 1),
(3541, 222, 'East Dunbartonshire', 'DUNBE', 1),
(3542, 222, 'East Lothian', 'LOTE', 1),
(3543, 222, 'East Renfrewshire', 'RENE', 1),
(3544, 222, 'East Riding of Yorkshire', 'ERYS', 1),
(3545, 222, 'East Sussex', 'SXE', 1),
(3546, 222, 'Edinburgh', 'EDIN', 1),
(3547, 222, 'Essex', 'ESX', 1),
(3548, 222, 'Falkirk', 'FALK', 1),
(3549, 222, 'Fife', 'FFE', 1),
(3550, 222, 'Flintshire', 'FLINT', 1),
(3551, 222, 'Glasgow', 'GLAS', 1),
(3552, 222, 'Gloucestershire', 'GLOS', 1),
(3553, 222, 'Greater London', 'LDN', 1),
(3554, 222, 'Greater Manchester', 'MCH', 1),
(3555, 222, 'Gwynedd', 'GDD', 1),
(3556, 222, 'Hampshire', 'HANTS', 1),
(3557, 222, 'Herefordshire', 'HWR', 1),
(3558, 222, 'Hertfordshire', 'HERTS', 1),
(3559, 222, 'Highlands', 'HLD', 1),
(3560, 222, 'Inverclyde', 'IVER', 1),
(3561, 222, 'Isle of Wight', 'IOW', 1),
(3562, 222, 'Kent', 'KNT', 1),
(3563, 222, 'Lancashire', 'LANCS', 1),
(3564, 222, 'Leicestershire', 'LEICS', 1),
(3565, 222, 'Lincolnshire', 'LINCS', 1),
(3566, 222, 'Merseyside', 'MSY', 1),
(3567, 222, 'Merthyr Tydfil', 'MERT', 1),
(3568, 222, 'Midlothian', 'MLOT', 1),
(3569, 222, 'Monmouthshire', 'MMOUTH', 1),
(3570, 222, 'Moray', 'MORAY', 1),
(3571, 222, 'Neath Port Talbot', 'NPRTAL', 1),
(3572, 222, 'Newport', 'NEWPT', 1),
(3573, 222, 'Norfolk', 'NOR', 1),
(3574, 222, 'North Ayrshire', 'ARYN', 1),
(3575, 222, 'North Lanarkshire', 'LANN', 1),
(3576, 222, 'North Yorkshire', 'YSN', 1),
(3577, 222, 'Northamptonshire', 'NHM', 1),
(3578, 222, 'Northumberland', 'NLD', 1),
(3579, 222, 'Nottinghamshire', 'NOT', 1),
(3580, 222, 'Orkney Islands', 'ORK', 1),
(3581, 222, 'Oxfordshire', 'OFE', 1),
(3582, 222, 'Pembrokeshire', 'PEM', 1),
(3583, 222, 'Perth and Kinross', 'PERTH', 1),
(3584, 222, 'Powys', 'PWS', 1),
(3585, 222, 'Renfrewshire', 'REN', 1),
(3586, 222, 'Rhondda Cynon Taff', 'RHON', 1),
(3587, 222, 'Rutland', 'RUT', 1),
(3588, 222, 'Scottish Borders', 'BOR', 1),
(3589, 222, 'Shetland Islands', 'SHET', 1),
(3590, 222, 'Shropshire', 'SPE', 1),
(3591, 222, 'Somerset', 'SOM', 1),
(3592, 222, 'South Ayrshire', 'ARYS', 1),
(3593, 222, 'South Lanarkshire', 'LANS', 1),
(3594, 222, 'South Yorkshire', 'YSS', 1),
(3595, 222, 'Staffordshire', 'SFD', 1),
(3596, 222, 'Stirling', 'STIR', 1),
(3597, 222, 'Suffolk', 'SFK', 1),
(3598, 222, 'Surrey', 'SRY', 1),
(3599, 222, 'Swansea', 'SWAN', 1),
(3600, 222, 'Torfaen', 'TORF', 1),
(3601, 222, 'Tyne and Wear', 'TWR', 1),
(3602, 222, 'Vale of Glamorgan', 'VGLAM', 1),
(3603, 222, 'Warwickshire', 'WARKS', 1),
(3604, 222, 'West Dunbartonshire', 'WDUN', 1),
(3605, 222, 'West Lothian', 'WLOT', 1),
(3606, 222, 'West Midlands', 'WMD', 1),
(3607, 222, 'West Sussex', 'SXW', 1),
(3608, 222, 'West Yorkshire', 'YSW', 1),
(3609, 222, 'Western Isles', 'WIL', 1),
(3610, 222, 'Wiltshire', 'WLT', 1),
(3611, 222, 'Worcestershire', 'WORCS', 1),
(3612, 222, 'Wrexham', 'WRX', 1),
(3613, 223, 'Alabama', 'AL', 1),
(3614, 223, 'Alaska', 'AK', 1),
(3615, 223, 'American Samoa', 'AS', 1),
(3616, 223, 'Arizona', 'AZ', 1),
(3617, 223, 'Arkansas', 'AR', 1),
(3618, 223, 'Armed Forces Africa', 'AF', 1),
(3619, 223, 'Armed Forces Americas', 'AA', 1),
(3620, 223, 'Armed Forces Canada', 'AC', 1),
(3621, 223, 'Armed Forces Europe', 'AE', 1),
(3622, 223, 'Armed Forces Middle East', 'AM', 1),
(3623, 223, 'Armed Forces Pacific', 'AP', 1),
(3624, 223, 'California', 'CA', 1),
(3625, 223, 'Colorado', 'CO', 1),
(3626, 223, 'Connecticut', 'CT', 1),
(3627, 223, 'Delaware', 'DE', 1),
(3628, 223, 'District of Columbia', 'DC', 1),
(3629, 223, 'Federated States Of Micronesia', 'FM', 1),
(3630, 223, 'Florida', 'FL', 1),
(3631, 223, 'Georgia', 'GA', 1),
(3632, 223, 'Guam', 'GU', 1),
(3633, 223, 'Hawaii', 'HI', 1),
(3634, 223, 'Idaho', 'ID', 1),
(3635, 223, 'Illinois', 'IL', 1),
(3636, 223, 'Indiana', 'IN', 1),
(3637, 223, 'Iowa', 'IA', 1),
(3638, 223, 'Kansas', 'KS', 1),
(3639, 223, 'Kentucky', 'KY', 1),
(3640, 223, 'Louisiana', 'LA', 1),
(3641, 223, 'Maine', 'ME', 1),
(3642, 223, 'Marshall Islands', 'MH', 1),
(3643, 223, 'Maryland', 'MD', 1),
(3644, 223, 'Massachusetts', 'MA', 1),
(3645, 223, 'Michigan', 'MI', 1),
(3646, 223, 'Minnesota', 'MN', 1),
(3647, 223, 'Mississippi', 'MS', 1),
(3648, 223, 'Missouri', 'MO', 1),
(3649, 223, 'Montana', 'MT', 1),
(3650, 223, 'Nebraska', 'NE', 1),
(3651, 223, 'Nevada', 'NV', 1),
(3652, 223, 'New Hampshire', 'NH', 1),
(3653, 223, 'New Jersey', 'NJ', 1),
(3654, 223, 'New Mexico', 'NM', 1),
(3655, 223, 'New York', 'NY', 1),
(3656, 223, 'North Carolina', 'NC', 1),
(3657, 223, 'North Dakota', 'ND', 1),
(3658, 223, 'Northern Mariana Islands', 'MP', 1),
(3659, 223, 'Ohio', 'OH', 1),
(3660, 223, 'Oklahoma', 'OK', 1),
(3661, 223, 'Oregon', 'OR', 1),
(3662, 223, 'Palau', 'PW', 1),
(3663, 223, 'Pennsylvania', 'PA', 1),
(3664, 223, 'Puerto Rico', 'PR', 1),
(3665, 223, 'Rhode Island', 'RI', 1),
(3666, 223, 'South Carolina', 'SC', 1),
(3667, 223, 'South Dakota', 'SD', 1),
(3668, 223, 'Tennessee', 'TN', 1),
(3669, 223, 'Texas', 'TX', 1),
(3670, 223, 'Utah', 'UT', 1),
(3671, 223, 'Vermont', 'VT', 1),
(3672, 223, 'Virgin Islands', 'VI', 1),
(3673, 223, 'Virginia', 'VA', 1),
(3674, 223, 'Washington', 'WA', 1),
(3675, 223, 'West Virginia', 'WV', 1),
(3676, 223, 'Wisconsin', 'WI', 1),
(3677, 223, 'Wyoming', 'WY', 1),
(3678, 224, 'Baker Island', 'BI', 1),
(3679, 224, 'Howland Island', 'HI', 1),
(3680, 224, 'Jarvis Island', 'JI', 1),
(3681, 224, 'Johnston Atoll', 'JA', 1),
(3682, 224, 'Kingman Reef', 'KR', 1),
(3683, 224, 'Midway Atoll', 'MA', 1),
(3684, 224, 'Navassa Island', 'NI', 1),
(3685, 224, 'Palmyra Atoll', 'PA', 1),
(3686, 224, 'Wake Island', 'WI', 1),
(3687, 225, 'Artigas', 'AR', 1),
(3688, 225, 'Canelones', 'CA', 1),
(3689, 225, 'Cerro Largo', 'CL', 1),
(3690, 225, 'Colonia', 'CO', 1),
(3691, 225, 'Durazno', 'DU', 1),
(3692, 225, 'Flores', 'FS', 1),
(3693, 225, 'Florida', 'FA', 1),
(3694, 225, 'Lavalleja', 'LA', 1),
(3695, 225, 'Maldonado', 'MA', 1),
(3696, 225, 'Montevideo', 'MO', 1),
(3697, 225, 'Paysandu', 'PA', 1),
(3698, 225, 'Rio Negro', 'RN', 1),
(3699, 225, 'Rivera', 'RV', 1),
(3700, 225, 'Rocha', 'RO', 1),
(3701, 225, 'Salto', 'SL', 1),
(3702, 225, 'San Jose', 'SJ', 1),
(3703, 225, 'Soriano', 'SO', 1),
(3704, 225, 'Tacuarembo', 'TA', 1),
(3705, 225, 'Treinta y Tres', 'TT', 1),
(3706, 226, 'Andijon', 'AN', 1),
(3707, 226, 'Buxoro', 'BU', 1),
(3708, 226, 'Farg''ona', 'FA', 1),
(3709, 226, 'Jizzax', 'JI', 1),
(3710, 226, 'Namangan', 'NG', 1),
(3711, 226, 'Navoiy', 'NW', 1),
(3712, 226, 'Qashqadaryo', 'QA', 1),
(3713, 226, 'Qoraqalpog''iston Republikasi', 'QR', 1),
(3714, 226, 'Samarqand', 'SA', 1),
(3715, 226, 'Sirdaryo', 'SI', 1),
(3716, 226, 'Surxondaryo', 'SU', 1),
(3717, 226, 'Toshkent City', 'TK', 1),
(3718, 226, 'Toshkent Region', 'TO', 1),
(3719, 226, 'Xorazm', 'XO', 1),
(3720, 227, 'Malampa', 'MA', 1),
(3721, 227, 'Penama', 'PE', 1),
(3722, 227, 'Sanma', 'SA', 1),
(3723, 227, 'Shefa', 'SH', 1),
(3724, 227, 'Tafea', 'TA', 1),
(3725, 227, 'Torba', 'TO', 1),
(3726, 229, 'Amazonas', 'AM', 1),
(3727, 229, 'Anzoategui', 'AN', 1),
(3728, 229, 'Apure', 'AP', 1),
(3729, 229, 'Aragua', 'AR', 1),
(3730, 229, 'Barinas', 'BA', 1),
(3731, 229, 'Bolivar', 'BO', 1),
(3732, 229, 'Carabobo', 'CA', 1),
(3733, 229, 'Cojedes', 'CO', 1),
(3734, 229, 'Delta Amacuro', 'DA', 1),
(3735, 229, 'Dependencias Federales', 'DF', 1),
(3736, 229, 'Distrito Federal', 'DI', 1),
(3737, 229, 'Falcon', 'FA', 1),
(3738, 229, 'Guarico', 'GU', 1),
(3739, 229, 'Lara', 'LA', 1),
(3740, 229, 'Merida', 'ME', 1),
(3741, 229, 'Miranda', 'MI', 1),
(3742, 229, 'Monagas', 'MO', 1),
(3743, 229, 'Nueva Esparta', 'NE', 1),
(3744, 229, 'Portuguesa', 'PO', 1),
(3745, 229, 'Sucre', 'SU', 1),
(3746, 229, 'Tachira', 'TA', 1),
(3747, 229, 'Trujillo', 'TR', 1),
(3748, 229, 'Vargas', 'VA', 1),
(3749, 229, 'Yaracuy', 'YA', 1),
(3750, 229, 'Zulia', 'ZU', 1),
(3751, 230, 'An Giang', 'AG', 1),
(3752, 230, 'Bac Giang', 'BG', 1),
(3753, 230, 'Bac Kan', 'BK', 1),
(3754, 230, 'Bac Lieu', 'BL', 1),
(3755, 230, 'Bac Ninh', 'BC', 1),
(3756, 230, 'Ba Ria-Vung Tau', 'BR', 1),
(3757, 230, 'Ben Tre', 'BN', 1),
(3758, 230, 'Binh Dinh', 'BH', 1),
(3759, 230, 'Binh Duong', 'BU', 1),
(3760, 230, 'Binh Phuoc', 'BP', 1),
(3761, 230, 'Binh Thuan', 'BT', 1),
(3762, 230, 'Ca Mau', 'CM', 1),
(3763, 230, 'Can Tho', 'CT', 1),
(3764, 230, 'Cao Bang', 'CB', 1),
(3765, 230, 'Dak Lak', 'DL', 1),
(3766, 230, 'Dak Nong', 'DG', 1),
(3767, 230, 'Da Nang', 'DN', 1),
(3768, 230, 'Dien Bien', 'DB', 1),
(3769, 230, 'Dong Nai', 'DI', 1),
(3770, 230, 'Dong Thap', 'DT', 1),
(3771, 230, 'Gia Lai', 'GL', 1),
(3772, 230, 'Ha Giang', 'HG', 1),
(3773, 230, 'Hai Duong', 'HD', 1),
(3774, 230, 'Hai Phong', 'HP', 1),
(3775, 230, 'Ha Nam', 'HM', 1),
(3776, 230, 'Ha Noi', 'HI', 1),
(3777, 230, 'Ha Tay', 'HT', 1),
(3778, 230, 'Ha Tinh', 'HH', 1),
(3779, 230, 'Hoa Binh', 'HB', 1),
(3780, 230, 'Ho Chi Minh City', 'HC', 1),
(3781, 230, 'Hau Giang', 'HU', 1),
(3782, 230, 'Hung Yen', 'HY', 1),
(3783, 232, 'Saint Croix', 'C', 1),
(3784, 232, 'Saint John', 'J', 1),
(3785, 232, 'Saint Thomas', 'T', 1),
(3786, 233, 'Alo', 'A', 1),
(3787, 233, 'Sigave', 'S', 1),
(3788, 233, 'Wallis', 'W', 1),
(3789, 235, 'Abyan', 'AB', 1),
(3790, 235, 'Adan', 'AD', 1),
(3791, 235, 'Amran', 'AM', 1),
(3792, 235, 'Al Bayda', 'BA', 1),
(3793, 235, 'Ad Dali', 'DA', 1),
(3794, 235, 'Dhamar', 'DH', 1),
(3795, 235, 'Hadramawt', 'HD', 1),
(3796, 235, 'Hajjah', 'HJ', 1),
(3797, 235, 'Al Hudaydah', 'HU', 1),
(3798, 235, 'Ibb', 'IB', 1),
(3799, 235, 'Al Jawf', 'JA', 1),
(3800, 235, 'Lahij', 'LA', 1),
(3801, 235, 'Ma''rib', 'MA', 1),
(3802, 235, 'Al Mahrah', 'MR', 1),
(3803, 235, 'Al Mahwit', 'MW', 1),
(3804, 235, 'Sa''dah', 'SD', 1),
(3805, 235, 'San''a', 'SN', 1),
(3806, 235, 'Shabwah', 'SH', 1),
(3807, 235, 'Ta''izz', 'TA', 1),
(3812, 237, 'Bas-Congo', 'BC', 1),
(3813, 237, 'Bandundu', 'BN', 1),
(3814, 237, 'Equateur', 'EQ', 1),
(3815, 237, 'Katanga', 'KA', 1),
(3816, 237, 'Kasai-Oriental', 'KE', 1),
(3817, 237, 'Kinshasa', 'KN', 1),
(3818, 237, 'Kasai-Occidental', 'KW', 1),
(3819, 237, 'Maniema', 'MA', 1),
(3820, 237, 'Nord-Kivu', 'NK', 1),
(3821, 237, 'Orientale', 'OR', 1),
(3822, 237, 'Sud-Kivu', 'SK', 1),
(3823, 238, 'Central', 'CE', 1),
(3824, 238, 'Copperbelt', 'CB', 1),
(3825, 238, 'Eastern', 'EA', 1),
(3826, 238, 'Luapula', 'LP', 1),
(3827, 238, 'Lusaka', 'LK', 1),
(3828, 238, 'Northern', 'NO', 1),
(3829, 238, 'North-Western', 'NW', 1),
(3830, 238, 'Southern', 'SO', 1),
(3831, 238, 'Western', 'WE', 1),
(3832, 239, 'Bulawayo', 'BU', 1),
(3833, 239, 'Harare', 'HA', 1),
(3834, 239, 'Manicaland', 'ML', 1),
(3835, 239, 'Mashonaland Central', 'MC', 1),
(3836, 239, 'Mashonaland East', 'ME', 1),
(3837, 239, 'Mashonaland West', 'MW', 1),
(3838, 239, 'Masvingo', 'MV', 1),
(3839, 239, 'Matabeleland North', 'MN', 1),
(3840, 239, 'Matabeleland South', 'MS', 1),
(3841, 239, 'Midlands', 'MD', 1),
(3861, 105, 'Campobasso', 'CB', 1),
(3862, 105, 'Carbonia-Iglesias', 'CI', 1),
(3863, 105, 'Caserta', 'CE', 1),
(3864, 105, 'Catania', 'CT', 1),
(3865, 105, 'Catanzaro', 'CZ', 1),
(3866, 105, 'Chieti', 'CH', 1),
(3867, 105, 'Como', 'CO', 1),
(3868, 105, 'Cosenza', 'CS', 1),
(3869, 105, 'Cremona', 'CR', 1),
(3870, 105, 'Crotone', 'KR', 1),
(3871, 105, 'Cuneo', 'CN', 1),
(3872, 105, 'Enna', 'EN', 1),
(3873, 105, 'Ferrara', 'FE', 1),
(3874, 105, 'Firenze', 'FI', 1),
(3875, 105, 'Foggia', 'FG', 1),
(3876, 105, 'Forli-Cesena', 'FC', 1),
(3877, 105, 'Frosinone', 'FR', 1),
(3878, 105, 'Genova', 'GE', 1),
(3879, 105, 'Gorizia', 'GO', 1),
(3880, 105, 'Grosseto', 'GR', 1),
(3881, 105, 'Imperia', 'IM', 1),
(3882, 105, 'Isernia', 'IS', 1),
(3883, 105, 'L&#39;Aquila', 'AQ', 1),
(3884, 105, 'La Spezia', 'SP', 1),
(3885, 105, 'Latina', 'LT', 1),
(3886, 105, 'Lecce', 'LE', 1),
(3887, 105, 'Lecco', 'LC', 1),
(3888, 105, 'Livorno', 'LI', 1),
(3889, 105, 'Lodi', 'LO', 1),
(3890, 105, 'Lucca', 'LU', 1),
(3891, 105, 'Macerata', 'MC', 1),
(3892, 105, 'Mantova', 'MN', 1),
(3893, 105, 'Massa-Carrara', 'MS', 1),
(3894, 105, 'Matera', 'MT', 1),
(3895, 105, 'Medio Campidano', 'VS', 1),
(3896, 105, 'Messina', 'ME', 1),
(3897, 105, 'Milano', 'MI', 1),
(3898, 105, 'Modena', 'MO', 1),
(3899, 105, 'Napoli', 'NA', 1),
(3900, 105, 'Novara', 'NO', 1),
(3901, 105, 'Nuoro', 'NU', 1),
(3902, 105, 'Ogliastra', 'OG', 1),
(3903, 105, 'Olbia-Tempio', 'OT', 1),
(3904, 105, 'Oristano', 'OR', 1),
(3905, 105, 'Padova', 'PD', 1),
(3906, 105, 'Palermo', 'PA', 1),
(3907, 105, 'Parma', 'PR', 1),
(3908, 105, 'Pavia', 'PV', 1),
(3909, 105, 'Perugia', 'PG', 1),
(3910, 105, 'Pesaro e Urbino', 'PU', 1),
(3911, 105, 'Pescara', 'PE', 1),
(3912, 105, 'Piacenza', 'PC', 1),
(3913, 105, 'Pisa', 'PI', 1),
(3914, 105, 'Pistoia', 'PT', 1),
(3915, 105, 'Pordenone', 'PN', 1),
(3916, 105, 'Potenza', 'PZ', 1),
(3917, 105, 'Prato', 'PO', 1),
(3918, 105, 'Ragusa', 'RG', 1),
(3919, 105, 'Ravenna', 'RA', 1),
(3920, 105, 'Reggio Calabria', 'RC', 1),
(3921, 105, 'Reggio Emilia', 'RE', 1),
(3922, 105, 'Rieti', 'RI', 1),
(3923, 105, 'Rimini', 'RN', 1),
(3924, 105, 'Roma', 'RM', 1),
(3925, 105, 'Rovigo', 'RO', 1),
(3926, 105, 'Salerno', 'SA', 1),
(3927, 105, 'Sassari', 'SS', 1),
(3928, 105, 'Savona', 'SV', 1),
(3929, 105, 'Siena', 'SI', 1),
(3930, 105, 'Siracusa', 'SR', 1),
(3931, 105, 'Sondrio', 'SO', 1),
(3932, 105, 'Taranto', 'TA', 1),
(3933, 105, 'Teramo', 'TE', 1),
(3934, 105, 'Terni', 'TR', 1),
(3935, 105, 'Torino', 'TO', 1),
(3936, 105, 'Trapani', 'TP', 1),
(3937, 105, 'Trento', 'TN', 1),
(3938, 105, 'Treviso', 'TV', 1),
(3939, 105, 'Trieste', 'TS', 1),
(3940, 105, 'Udine', 'UD', 1),
(3941, 105, 'Varese', 'VA', 1),
(3942, 105, 'Venezia', 'VE', 1),
(3943, 105, 'Verbano-Cusio-Ossola', 'VB', 1),
(3944, 105, 'Vercelli', 'VC', 1),
(3945, 105, 'Verona', 'VR', 1),
(3946, 105, 'Vibo Valentia', 'VV', 1),
(3947, 105, 'Vicenza', 'VI', 1),
(3948, 105, 'Viterbo', 'VT', 1),
(3949, 222, 'County Antrim', 'ANT', 1),
(3950, 222, 'County Armagh', 'ARM', 1),
(3951, 222, 'County Down', 'DOW', 1),
(3952, 222, 'County Fermanagh', 'FER', 1),
(3953, 222, 'County Londonderry', 'LDY', 1),
(3954, 222, 'County Tyrone', 'TYR', 1),
(3955, 222, 'Cumbria', 'CMA', 1),
(3956, 190, 'Pomurska', '1', 1),
(3957, 190, 'Podravska', '2', 1),
(3958, 190, 'Koroška', '3', 1),
(3959, 190, 'Savinjska', '4', 1),
(3960, 190, 'Zasavska', '5', 1),
(3961, 190, 'Spodnjeposavska', '6', 1),
(3962, 190, 'Jugovzhodna Slovenija', '7', 1),
(3963, 190, 'Osrednjeslovenska', '8', 1),
(3964, 190, 'Gorenjska', '9', 1),
(3965, 190, 'Notranjsko-kraška', '10', 1),
(3966, 190, 'Goriška', '11', 1),
(3967, 190, 'Obalno-kraška', '12', 1),
(3968, 33, 'Ruse', '', 1),
(3969, 101, 'Alborz', 'ALB', 1),
(3970, 21, 'Brussels-Capital Region', 'BRU', 1),
(3971, 138, 'Aguascalientes', 'AG', 1),
(3973, 242, 'Andrijevica', '01', 1),
(3974, 242, 'Bar', '02', 1),
(3975, 242, 'Berane', '03', 1),
(3976, 242, 'Bijelo Polje', '04', 1),
(3977, 242, 'Budva', '05', 1),
(3978, 242, 'Cetinje', '06', 1),
(3979, 242, 'Danilovgrad', '07', 1),
(3980, 242, 'Herceg-Novi', '08', 1),
(3981, 242, 'Kolašin', '09', 1),
(3982, 242, 'Kotor', '10', 1),
(3983, 242, 'Mojkovac', '11', 1),
(3984, 242, 'Nikšić', '12', 1),
(3985, 242, 'Plav', '13', 1),
(3986, 242, 'Pljevlja', '14', 1),
(3987, 242, 'Plužine', '15', 1),
(3988, 242, 'Podgorica', '16', 1),
(3989, 242, 'Rožaje', '17', 1),
(3990, 242, 'Šavnik', '18', 1),
(3991, 242, 'Tivat', '19', 1),
(3992, 242, 'Ulcinj', '20', 1),
(3993, 242, 'Žabljak', '21', 1),
(3994, 243, 'Belgrade', '00', 1),
(3995, 243, 'North Bačka', '01', 1),
(3996, 243, 'Central Banat', '02', 1),
(3997, 243, 'North Banat', '03', 1),
(3998, 243, 'South Banat', '04', 1),
(3999, 243, 'West Bačka', '05', 1),
(4000, 243, 'South Bačka', '06', 1),
(4001, 243, 'Srem', '07', 1),
(4002, 243, 'Mačva', '08', 1),
(4003, 243, 'Kolubara', '09', 1),
(4004, 243, 'Podunavlje', '10', 1),
(4005, 243, 'Braničevo', '11', 1),
(4006, 243, 'Šumadija', '12', 1),
(4007, 243, 'Pomoravlje', '13', 1),
(4008, 243, 'Bor', '14', 1),
(4009, 243, 'Zaječar', '15', 1),
(4010, 243, 'Zlatibor', '16', 1),
(4011, 243, 'Moravica', '17', 1),
(4012, 243, 'Raška', '18', 1),
(4013, 243, 'Rasina', '19', 1),
(4014, 243, 'Nišava', '20', 1),
(4015, 243, 'Toplica', '21', 1),
(4016, 243, 'Pirot', '22', 1),
(4017, 243, 'Jablanica', '23', 1),
(4018, 243, 'Pčinja', '24', 1),
(4020, 245, 'Bonaire', 'BO', 1),
(4021, 245, 'Saba', 'SA', 1),
(4022, 245, 'Sint Eustatius', 'SE', 1),
(4023, 248, 'Central Equatoria', 'EC', 1),
(4024, 248, 'Eastern Equatoria', 'EE', 1),
(4025, 248, 'Jonglei', 'JG', 1),
(4026, 248, 'Lakes', 'LK', 1),
(4027, 248, 'Northern Bahr el-Ghazal', 'BN', 1),
(4028, 248, 'Unity', 'UY', 1),
(4029, 248, 'Upper Nile', 'NU', 1),
(4030, 248, 'Warrap', 'WR', 1),
(4031, 248, 'Western Bahr el-Ghazal', 'BW', 1),
(4032, 248, 'Western Equatoria', 'EW', 1),
(4036, 117, 'Ainaži, Salacgrīvas novads', '0661405', 1),
(4037, 117, 'Aizkraukle, Aizkraukles novads', '0320201', 1),
(4038, 117, 'Aizkraukles novads', '0320200', 1),
(4039, 117, 'Aizpute, Aizputes novads', '0640605', 1),
(4040, 117, 'Aizputes novads', '0640600', 1),
(4041, 117, 'Aknīste, Aknīstes novads', '0560805', 1),
(4042, 117, 'Aknīstes novads', '0560800', 1),
(4043, 117, 'Aloja, Alojas novads', '0661007', 1),
(4044, 117, 'Alojas novads', '0661000', 1),
(4045, 117, 'Alsungas novads', '0624200', 1),
(4046, 117, 'Alūksne, Alūksnes novads', '0360201', 1),
(4047, 117, 'Alūksnes novads', '0360200', 1),
(4048, 117, 'Amatas novads', '0424701', 1),
(4049, 117, 'Ape, Apes novads', '0360805', 1),
(4050, 117, 'Apes novads', '0360800', 1),
(4051, 117, 'Auce, Auces novads', '0460805', 1),
(4052, 117, 'Auces novads', '0460800', 1),
(4053, 117, 'Ādažu novads', '0804400', 1),
(4054, 117, 'Babītes novads', '0804900', 1),
(4055, 117, 'Baldone, Baldones novads', '0800605', 1),
(4056, 117, 'Baldones novads', '0800600', 1),
(4057, 117, 'Baloži, Ķekavas novads', '0800807', 1),
(4058, 117, 'Baltinavas novads', '0384400', 1),
(4059, 117, 'Balvi, Balvu novads', '0380201', 1),
(4060, 117, 'Balvu novads', '0380200', 1),
(4061, 117, 'Bauska, Bauskas novads', '0400201', 1),
(4062, 117, 'Bauskas novads', '0400200', 1),
(4063, 117, 'Beverīnas novads', '0964700', 1),
(4064, 117, 'Brocēni, Brocēnu novads', '0840605', 1),
(4065, 117, 'Brocēnu novads', '0840601', 1),
(4066, 117, 'Burtnieku novads', '0967101', 1),
(4067, 117, 'Carnikavas novads', '0805200', 1),
(4068, 117, 'Cesvaine, Cesvaines novads', '0700807', 1),
(4069, 117, 'Cesvaines novads', '0700800', 1),
(4070, 117, 'Cēsis, Cēsu novads', '0420201', 1),
(4071, 117, 'Cēsu novads', '0420200', 1),
(4072, 117, 'Ciblas novads', '0684901', 1),
(4073, 117, 'Dagda, Dagdas novads', '0601009', 1),
(4074, 117, 'Dagdas novads', '0601000', 1),
(4075, 117, 'Daugavpils', '0050000', 1),
(4076, 117, 'Daugavpils novads', '0440200', 1),
(4077, 117, 'Dobele, Dobeles novads', '0460201', 1),
(4078, 117, 'Dobeles novads', '0460200', 1),
(4079, 117, 'Dundagas novads', '0885100', 1),
(4080, 117, 'Durbe, Durbes novads', '0640807', 1),
(4081, 117, 'Durbes novads', '0640801', 1),
(4082, 117, 'Engures novads', '0905100', 1),
(4083, 117, 'Ērgļu novads', '0705500', 1),
(4084, 117, 'Garkalnes novads', '0806000', 1),
(4085, 117, 'Grobiņa, Grobiņas novads', '0641009', 1),
(4086, 117, 'Grobiņas novads', '0641000', 1),
(4087, 117, 'Gulbene, Gulbenes novads', '0500201', 1),
(4088, 117, 'Gulbenes novads', '0500200', 1),
(4089, 117, 'Iecavas novads', '0406400', 1),
(4090, 117, 'Ikšķile, Ikšķiles novads', '0740605', 1),
(4091, 117, 'Ikšķiles novads', '0740600', 1),
(4092, 117, 'Ilūkste, Ilūkstes novads', '0440807', 1),
(4093, 117, 'Ilūkstes novads', '0440801', 1),
(4094, 117, 'Inčukalna novads', '0801800', 1),
(4095, 117, 'Jaunjelgava, Jaunjelgavas novads', '0321007', 1),
(4096, 117, 'Jaunjelgavas novads', '0321000', 1),
(4097, 117, 'Jaunpiebalgas novads', '0425700', 1),
(4098, 117, 'Jaunpils novads', '0905700', 1),
(4099, 117, 'Jelgava', '0090000', 1),
(4100, 117, 'Jelgavas novads', '0540200', 1),
(4101, 117, 'Jēkabpils', '0110000', 1),
(4102, 117, 'Jēkabpils novads', '0560200', 1),
(4103, 117, 'Jūrmala', '0130000', 1),
(4104, 117, 'Kalnciems, Jelgavas novads', '0540211', 1),
(4105, 117, 'Kandava, Kandavas novads', '0901211', 1),
(4106, 117, 'Kandavas novads', '0901201', 1),
(4107, 117, 'Kārsava, Kārsavas novads', '0681009', 1),
(4108, 117, 'Kārsavas novads', '0681000', 1),
(4109, 117, 'Kocēnu novads ,bij. Valmieras)', '0960200', 1),
(4110, 117, 'Kokneses novads', '0326100', 1),
(4111, 117, 'Krāslava, Krāslavas novads', '0600201', 1),
(4112, 117, 'Krāslavas novads', '0600202', 1),
(4113, 117, 'Krimuldas novads', '0806900', 1),
(4114, 117, 'Krustpils novads', '0566900', 1),
(4115, 117, 'Kuldīga, Kuldīgas novads', '0620201', 1),
(4116, 117, 'Kuldīgas novads', '0620200', 1),
(4117, 117, 'Ķeguma novads', '0741001', 1),
(4118, 117, 'Ķegums, Ķeguma novads', '0741009', 1),
(4119, 117, 'Ķekavas novads', '0800800', 1),
(4120, 117, 'Lielvārde, Lielvārdes novads', '0741413', 1),
(4121, 117, 'Lielvārdes novads', '0741401', 1),
(4122, 117, 'Liepāja', '0170000', 1),
(4123, 117, 'Limbaži, Limbažu novads', '0660201', 1),
(4124, 117, 'Limbažu novads', '0660200', 1),
(4125, 117, 'Līgatne, Līgatnes novads', '0421211', 1),
(4126, 117, 'Līgatnes novads', '0421200', 1),
(4127, 117, 'Līvāni, Līvānu novads', '0761211', 1),
(4128, 117, 'Līvānu novads', '0761201', 1),
(4129, 117, 'Lubāna, Lubānas novads', '0701413', 1),
(4130, 117, 'Lubānas novads', '0701400', 1),
(4131, 117, 'Ludza, Ludzas novads', '0680201', 1),
(4132, 117, 'Ludzas novads', '0680200', 1),
(4133, 117, 'Madona, Madonas novads', '0700201', 1),
(4134, 117, 'Madonas novads', '0700200', 1),
(4135, 117, 'Mazsalaca, Mazsalacas novads', '0961011', 1),
(4136, 117, 'Mazsalacas novads', '0961000', 1),
(4137, 117, 'Mālpils novads', '0807400', 1),
(4138, 117, 'Mārupes novads', '0807600', 1),
(4139, 117, 'Mērsraga novads', '0887600', 1),
(4140, 117, 'Naukšēnu novads', '0967300', 1),
(4141, 117, 'Neretas novads', '0327100', 1),
(4142, 117, 'Nīcas novads', '0647900', 1),
(4143, 117, 'Ogre, Ogres novads', '0740201', 1),
(4144, 117, 'Ogres novads', '0740202', 1),
(4145, 117, 'Olaine, Olaines novads', '0801009', 1),
(4146, 117, 'Olaines novads', '0801000', 1),
(4147, 117, 'Ozolnieku novads', '0546701', 1),
(4148, 117, 'Pārgaujas novads', '0427500', 1),
(4149, 117, 'Pāvilosta, Pāvilostas novads', '0641413', 1),
(4150, 117, 'Pāvilostas novads', '0641401', 1),
(4151, 117, 'Piltene, Ventspils novads', '0980213', 1),
(4152, 117, 'Pļaviņas, Pļaviņu novads', '0321413', 1),
(4153, 117, 'Pļaviņu novads', '0321400', 1),
(4154, 117, 'Preiļi, Preiļu novads', '0760201', 1),
(4155, 117, 'Preiļu novads', '0760202', 1),
(4156, 117, 'Priekule, Priekules novads', '0641615', 1),
(4157, 117, 'Priekules novads', '0641600', 1),
(4158, 117, 'Priekuļu novads', '0427300', 1),
(4159, 117, 'Raunas novads', '0427700', 1),
(4160, 117, 'Rēzekne', '0210000', 1),
(4161, 117, 'Rēzeknes novads', '0780200', 1),
(4162, 117, 'Riebiņu novads', '0766300', 1),
(4163, 117, 'Rīga', '0010000', 1),
(4164, 117, 'Rojas novads', '0888300', 1),
(4165, 117, 'Ropažu novads', '0808400', 1),
(4166, 117, 'Rucavas novads', '0648500', 1),
(4167, 117, 'Rugāju novads', '0387500', 1),
(4168, 117, 'Rundāles novads', '0407700', 1),
(4169, 117, 'Rūjiena, Rūjienas novads', '0961615', 1),
(4170, 117, 'Rūjienas novads', '0961600', 1),
(4171, 117, 'Sabile, Talsu novads', '0880213', 1),
(4172, 117, 'Salacgrīva, Salacgrīvas novads', '0661415', 1),
(4173, 117, 'Salacgrīvas novads', '0661400', 1),
(4174, 117, 'Salas novads', '0568700', 1),
(4175, 117, 'Salaspils novads', '0801200', 1),
(4176, 117, 'Salaspils, Salaspils novads', '0801211', 1),
(4177, 117, 'Saldus novads', '0840200', 1),
(4178, 117, 'Saldus, Saldus novads', '0840201', 1),
(4179, 117, 'Saulkrasti, Saulkrastu novads', '0801413', 1),
(4180, 117, 'Saulkrastu novads', '0801400', 1),
(4181, 117, 'Seda, Strenču novads', '0941813', 1),
(4182, 117, 'Sējas novads', '0809200', 1),
(4183, 117, 'Sigulda, Siguldas novads', '0801615', 1),
(4184, 117, 'Siguldas novads', '0801601', 1),
(4185, 117, 'Skrīveru novads', '0328200', 1),
(4186, 117, 'Skrunda, Skrundas novads', '0621209', 1),
(4187, 117, 'Skrundas novads', '0621200', 1),
(4188, 117, 'Smiltene, Smiltenes novads', '0941615', 1),
(4189, 117, 'Smiltenes novads', '0941600', 1),
(4190, 117, 'Staicele, Alojas novads', '0661017', 1),
(4191, 117, 'Stende, Talsu novads', '0880215', 1),
(4192, 117, 'Stopiņu novads', '0809600', 1),
(4193, 117, 'Strenči, Strenču novads', '0941817', 1),
(4194, 117, 'Strenču novads', '0941800', 1),
(4195, 117, 'Subate, Ilūkstes novads', '0440815', 1),
(4196, 117, 'Talsi, Talsu novads', '0880201', 1),
(4197, 117, 'Talsu novads', '0880200', 1),
(4198, 117, 'Tērvetes novads', '0468900', 1),
(4199, 117, 'Tukuma novads', '0900200', 1),
(4200, 117, 'Tukums, Tukuma novads', '0900201', 1),
(4201, 117, 'Vaiņodes novads', '0649300', 1),
(4202, 117, 'Valdemārpils, Talsu novads', '0880217', 1),
(4203, 117, 'Valka, Valkas novads', '0940201', 1),
(4204, 117, 'Valkas novads', '0940200', 1),
(4205, 117, 'Valmiera', '0250000', 1),
(4206, 117, 'Vangaži, Inčukalna novads', '0801817', 1),
(4207, 117, 'Varakļāni, Varakļānu novads', '0701817', 1),
(4208, 117, 'Varakļānu novads', '0701800', 1),
(4209, 117, 'Vārkavas novads', '0769101', 1),
(4210, 117, 'Vecpiebalgas novads', '0429300', 1),
(4211, 117, 'Vecumnieku novads', '0409500', 1),
(4212, 117, 'Ventspils', '0270000', 1),
(4213, 117, 'Ventspils novads', '0980200', 1),
(4214, 117, 'Viesīte, Viesītes novads', '0561815', 1),
(4215, 117, 'Viesītes novads', '0561800', 1),
(4216, 117, 'Viļaka, Viļakas novads', '0381615', 1),
(4217, 117, 'Viļakas novads', '0381600', 1),
(4218, 117, 'Viļāni, Viļānu novads', '0781817', 1),
(4219, 117, 'Viļānu novads', '0781800', 1),
(4220, 117, 'Zilupe, Zilupes novads', '0681817', 1),
(4221, 117, 'Zilupes novads', '0681801', 1),
(4222, 43, 'Arica y Parinacota', 'AP', 1),
(4223, 43, 'Los Rios', 'LR', 1),
(4224, 220, 'Kharkivs''ka Oblast''', '63', 1),
(4225, 118, 'Beirut', 'LB-BR', 1),
(4226, 118, 'Bekaa', 'LB-BE', 1),
(4227, 118, 'Mount Lebanon', 'LB-ML', 1),
(4228, 118, 'Nabatieh', 'LB-NB', 1),
(4229, 118, 'North', 'LB-NR', 1),
(4230, 118, 'South', 'LB-ST', 1),
(4231, 99, 'Telangana', 'TS', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_zone_to_geo_zone`
--

CREATE TABLE IF NOT EXISTS `oc_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`zone_to_geo_zone_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=110 ;

--
-- Dumping data for table `oc_zone_to_geo_zone`
--

INSERT INTO `oc_zone_to_geo_zone` (`zone_to_geo_zone_id`, `country_id`, `zone_id`, `geo_zone_id`, `date_added`, `date_modified`) VALUES
(1, 222, 0, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 222, 3513, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 222, 3514, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 222, 3515, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 222, 3516, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 222, 3517, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 222, 3518, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 222, 3519, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 222, 3520, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 222, 3521, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 222, 3522, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 222, 3523, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 222, 3524, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 222, 3525, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 222, 3526, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 222, 3527, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 222, 3528, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 222, 3529, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 222, 3530, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 222, 3531, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 222, 3532, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 222, 3533, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 222, 3534, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 222, 3535, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 222, 3536, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 222, 3537, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 222, 3538, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 222, 3539, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 222, 3540, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 222, 3541, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 222, 3542, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 222, 3543, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 222, 3544, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 222, 3545, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 222, 3546, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 222, 3547, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 222, 3548, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 222, 3549, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 222, 3550, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 222, 3551, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 222, 3552, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 222, 3553, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 222, 3554, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 222, 3555, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 222, 3556, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 222, 3557, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 222, 3558, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 222, 3559, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 222, 3560, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 222, 3561, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 222, 3562, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 222, 3563, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 222, 3564, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 222, 3565, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 222, 3566, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 222, 3567, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 222, 3568, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 222, 3569, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 222, 3570, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 222, 3571, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 222, 3572, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 222, 3573, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 222, 3574, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 222, 3575, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 222, 3576, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 222, 3577, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 222, 3578, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 222, 3579, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 222, 3580, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 222, 3581, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 222, 3582, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 222, 3583, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 222, 3584, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 222, 3585, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 222, 3586, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 222, 3587, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 222, 3588, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 222, 3589, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 222, 3590, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 222, 3591, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 222, 3592, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 222, 3593, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 222, 3594, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 222, 3595, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 222, 3596, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 222, 3597, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 222, 3598, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 222, 3599, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 222, 3600, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 222, 3601, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 222, 3602, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 222, 3603, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 222, 3604, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 222, 3605, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 222, 3606, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 222, 3607, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 222, 3608, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 222, 3609, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 222, 3610, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 222, 3611, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 222, 3612, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 222, 3949, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 222, 3950, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 222, 3951, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 222, 3952, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 222, 3953, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 222, 3954, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 222, 3955, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 222, 3972, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
