-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 16, 2022 at 06:14 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bloom`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `address_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `address_title` varchar(200) NOT NULL,
  `complete_address` varchar(300) NOT NULL,
  `city_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zipcode` int(11) NOT NULL,
  `landmark` varchar(200) NOT NULL,
  `address_type` enum('HOME','OFFICE') NOT NULL DEFAULT 'HOME',
  `default_status` tinyint(1) NOT NULL DEFAULT 0,
  `created_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`address_id`, `customer_id`, `address_title`, `complete_address`, `city_id`, `state_id`, `country_id`, `zipcode`, `landmark`, `address_type`, `default_status`, `created_on`) VALUES
(1, 5, 'test address', 'test address', 1962, 17, 100, 122001, 'test', 'HOME', 0, '2021-03-24 16:41:22'),
(2, 6, 'test address two', 'test address', 1194, 14, 100, 111100, 'test location', 'HOME', 1, '2021-03-24 18:22:12'),
(3, 2, 'Test name', 'test address', 1962, 17, 100, 122002, 'test', 'HOME', 1, '2021-04-21 17:04:02'),
(4, 5, 'office address', 'Plot no 22 new friends colony', 1194, 14, 100, 112211, '', 'OFFICE', 0, '2021-05-04 16:51:29'),
(5, 5, 'office address', 'Plot no 22 new friends colony', 1194, 14, 100, 112211, '', 'OFFICE', 0, '2021-05-05 12:06:40'),
(6, 8, 'Sujeet Kumar', 'Plot No 15, 3rd Floor, sector 44', 1194, 14, 100, 122002, 'ddddd', 'HOME', 1, '2021-05-13 14:56:50'),
(7, 15, 'Ranjeet Kumar', 'Plot No 15, 3rd Floor, sector 44', 1962, 17, 100, 122002, 'sector 44', 'HOME', 1, '2021-08-14 15:06:30'),
(8, 16, 'First address', 'sdfs', 1194, 14, 100, 122001, 'sdfsdfa', 'HOME', 0, '2021-08-25 17:56:05'),
(9, 17, 'First address', 'sdaf', 192, 9, 100, 332424, 'sdfaf', 'HOME', 1, '2021-08-25 18:08:00'),
(10, 18, 'First address', 'sfdsaf', 777, 6, 100, 234323, 'rfaad', 'HOME', 1, '2021-08-26 10:46:43'),
(11, 19, 'First address', 'sdfasf', 194, 9, 100, 23213, '21322321', 'HOME', 1, '2021-08-26 10:58:07'),
(12, 20, 'First address', 'sfasfs', 781, 6, 100, 21312321, 'fsfaasfs', 'HOME', 1, '2021-08-26 11:31:00'),
(13, 21, 'First address', 'dsfsa', 432, 8, 100, 4432433, 'werew', 'HOME', 1, '2021-08-26 11:35:28'),
(14, 22, 'First address', 'srsga', 1241, 7, 100, 0, 'ewewrew', 'HOME', 1, '2021-08-26 11:44:43'),
(15, 23, 'First address', 'srsga', 1241, 7, 100, 0, 'ewewrew', 'HOME', 1, '2021-08-26 11:47:27'),
(16, 24, 'First address', 'srsga', 1241, 7, 100, 0, 'ewewrew', 'HOME', 1, '2021-08-26 11:51:20'),
(17, 25, 'First address', 'srsga', 1241, 7, 100, 0, 'ewewrew', 'HOME', 1, '2021-08-26 12:01:32'),
(18, 26, 'First address', 'sfsa sf safsa', 14, 17, 100, 122023, 'ffsdf sdsf', 'HOME', 1, '2021-08-26 12:08:57'),
(19, 27, 'First address', 'sdfaf', 778, 6, 100, 3333243, 'sdfsfsaf', 'HOME', 1, '2021-08-26 12:14:36'),
(20, 28, 'First address', 'test gurgaon', 530, 25, 100, 55435435, 'sfsaf safas', 'HOME', 1, '2021-08-26 13:30:35'),
(21, 29, 'First address', 'visit testtest', 191, 9, 100, 545445, 'fsfsaf sdfsa', 'HOME', 1, '2021-08-26 14:42:49'),
(22, 30, 'First address', 'testsa sa', 1243, 7, 100, 3432432, 'sfa s fsfas', 'HOME', 1, '2021-08-26 14:48:01'),
(23, 31, 'First address', 'test test test', 780, 6, 100, 312122, 'wqeecwqe', 'HOME', 1, '2021-08-26 14:52:12'),
(24, 32, 'First address', '', 30, 17, 100, 0, '', 'HOME', 1, '2021-08-28 11:57:33'),
(25, 33, 'First address', 'guest complete address', 605, 20, 100, 345678, 'sdfa safsafsaf', 'HOME', 1, '2021-08-28 12:29:06'),
(26, 34, 'First address', 'guest complete address', 605, 20, 100, 345678, 'sdfa safsafsaf', 'HOME', 1, '2021-08-28 13:39:12'),
(27, 35, 'First address', 'guest complete address', 605, 20, 100, 345678, 'sdfa safsafsaf', 'HOME', 1, '2021-08-28 13:49:46'),
(28, 36, 'First address', 'fdg g dgs d fdgs d', 33, 18, 100, 545544, ' fdd gds dg dg dsg', 'HOME', 1, '2021-08-28 13:56:25'),
(29, 37, 'First address', 'fdg g dgs d fdgs d', 33, 18, 100, 545544, ' fdd gds dg dg dsg', 'HOME', 1, '2021-08-28 13:59:49'),
(30, 38, 'First address', 'retetveq qte ', 33, 18, 100, 545544, ' fdd gds dg dg dsg', 'HOME', 1, '2021-08-28 14:02:14'),
(31, 39, 'First address', 'retetveq qte ', 33, 18, 100, 545544, ' fdd gds dg dg dsg', 'HOME', 1, '2021-08-28 14:04:58'),
(32, 40, 'First address', 'retetveq qte ', 33, 18, 100, 545544, ' fdd gds dg dg dsg', 'HOME', 1, '2021-08-28 14:07:32'),
(33, 41, 'First address', 'fa afa a faf ', 1194, 14, 100, 678904, 'iuiewuoiq qw w', 'HOME', 1, '2021-08-28 14:15:54'),
(34, 42, 'First address', 'fa afa a faf ', 1194, 14, 100, 678904, 'iuiewuoiq qw w', 'HOME', 1, '2021-08-28 14:20:02'),
(35, 43, 'First address', 'fa afa a faf ', 1194, 14, 100, 678904, 'iuiewuoiq qw w', 'HOME', 1, '2021-08-28 14:22:25'),
(36, 5, 'sdfaf  dsfas ', 'sfdad ds', 1239, 7, 100, 32432432, 'sda', 'HOME', 1, '2021-08-31 15:55:07'),
(37, 0, 'test_YYY', 'dsfa dsaf f afd', 1704, 22, 100, 3432432, 'sdfsf sdfds', 'HOME', 0, '2021-08-31 16:56:49'),
(38, 0, 'test_YYY', 'dsfa dsaf f afd', 1704, 22, 100, 3432432, 'sdfsf sdfds', 'HOME', 1, '2021-08-31 16:57:31'),
(39, 53, 'ewrewrew ', 'ewrew wr ewr ew', 1701, 22, 100, 324212, 'sdfaf sdaf s', 'HOME', 1, '2021-09-01 11:23:53'),
(40, 54, 'eqe wqr wq', 'w qwre q', 1705, 22, 100, 3243243, ' asfa ads fasf', 'HOME', 1, '2021-09-01 11:30:48'),
(41, 55, 'wr wrq ew ', ' ewrewqr', 30, 17, 100, 112211, 'efsf ads fsafd', 'HOME', 1, '2021-09-01 12:20:34'),
(42, 57, 'rdgsa dg dg', 'sfa sa fsa fsa', 43, 19, 100, 434334, 'sfas asdf as', 'HOME', 1, '2021-09-01 15:04:51'),
(43, 58, 'test', 'sdfsdfa', 1194, 14, 100, 122001, ' fasfa fas', 'HOME', 1, '2021-09-01 15:08:24');

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `ad_id` int(11) NOT NULL,
  `ad_page` varchar(100) NOT NULL,
  `ad_title` varchar(200) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `ad_desc` varchar(500) NOT NULL,
  `ad_url` varchar(255) NOT NULL,
  `ad_image` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `updated_on` datetime NOT NULL,
  `created_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `approval`
--

CREATE TABLE `approval` (
  `approval_id` int(11) NOT NULL,
  `approval_task` text NOT NULL,
  `task_id` int(20) NOT NULL,
  `task_code` varchar(100) NOT NULL,
  `relate_from` varchar(100) NOT NULL,
  `relate_subject` varchar(255) NOT NULL,
  `relate_to` varchar(100) NOT NULL,
  `created_date` datetime NOT NULL,
  `view_status` int(11) NOT NULL,
  `approval_status` enum('0','1') NOT NULL DEFAULT '0',
  `approved_by` varchar(100) NOT NULL,
  `approved_id` int(11) NOT NULL,
  `approval_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `approval`
--

INSERT INTO `approval` (`approval_id`, `approval_task`, `task_id`, `task_code`, `relate_from`, `relate_subject`, `relate_to`, `created_date`, `view_status`, `approval_status`, `approved_by`, `approved_id`, `approval_date`) VALUES
(1, 'A new salon has been registered', 24, 'MSDSEP21/091534/M53UF', 'SALON', 'Salon registration', 'super admin', '2021-09-09 15:35:26', 1, '0', '', 0, '0000-00-00 00:00:00'),
(6, 'A new salon has been registered', 30, 'MSDSEP21/131108/LVT0V', 'SALON', 'salon registration', 'super admin', '2021-09-13 11:10:46', 1, '1', '', 0, '0000-00-00 00:00:00'),
(7, 'A new stylist has been registered by salon', 10, 'MSDT/13SEP202114/KEK', 'STYLIST', 'Stylist registration by salon', 'Salon admin', '0000-00-00 00:00:00', 1, '0', '', 0, '0000-00-00 00:00:00'),
(8, 'A new package has been created by salon', 19, 'FCSWJE68R', 'PACKAGE', 'New Package create by salon', 'Salon admin', '2021-09-13 15:51:34', 1, '1', '', 0, '0000-00-00 00:00:00'),
(9, 'A new package has been created by salon', 20, '61ZI5FHY9', 'PACKAGE', 'New package create by salon', 'Salon admin', '2021-09-13 16:26:59', 1, '1', '', 0, '0000-00-00 00:00:00'),
(10, 'A new package has been created by salon', 21, 'A7Z3I3799', 'PACKAGE', 'New package create by salon', 'Salon admin', '2021-09-13 16:33:07', 1, '1', '', 0, '0000-00-00 00:00:00'),
(11, 'A new stylist has been registered', 11, 'MSDT/14SEP202117/SBJ', 'STYLIST', 'New stylist registration', 'Super admin', '2021-09-14 17:37:13', 1, '1', '', 0, '0000-00-00 00:00:00'),
(12, 'A new salon has been registered', 31, 'MSDSEP21/151309/NHEIC', 'SALON', 'Salon registration', 'Super admin', '2021-09-15 13:12:56', 1, '1', '', 0, '0000-00-00 00:00:00'),
(13, 'A new stylist has been registered', 12, 'MSDT/15SEP202113/8ZW', 'STYLIST', 'New stylist registration', 'Super admin', '2021-09-15 13:20:11', 1, '1', '', 0, '0000-00-00 00:00:00'),
(14, 'A new stylist has been registered', 13, 'MSDT/15SEP202113/4VN', 'STYLIST', 'New stylist registration', 'Super admin', '2021-09-15 14:42:38', 1, '1', '', 0, '0000-00-00 00:00:00'),
(15, 'A new stylist has been registered', 14, 'MSDT/25NOV202111/7FN', 'STYLIST', 'New stylist registration', 'Super admin', '2021-11-25 11:37:48', 1, '0', '', 0, '0000-00-00 00:00:00'),
(16, 'A new stylist has been registered', 15, 'MSDT/25NOV202111/0DE', 'STYLIST', 'New stylist registration', 'Super admin', '2021-11-25 11:47:17', 1, '0', '', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `banking_details`
--

CREATE TABLE `banking_details` (
  `banking_id` int(11) NOT NULL,
  `user_type` enum('SALON','TECHNICAL') NOT NULL DEFAULT 'SALON',
  `user_code` varchar(40) NOT NULL,
  `account_holder` varchar(100) NOT NULL DEFAULT '',
  `account_number` bigint(20) NOT NULL DEFAULT 0,
  `account_type` varchar(40) NOT NULL DEFAULT '',
  `ifsc_code` varchar(20) NOT NULL DEFAULT '',
  `bank_name` varchar(50) NOT NULL DEFAULT '',
  `branch_name` varchar(50) NOT NULL DEFAULT '',
  `paytm_number` bigint(20) NOT NULL DEFAULT 0,
  `google_pay` bigint(20) NOT NULL DEFAULT 0,
  `updated_on` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `banner_id` int(11) NOT NULL,
  `position` varchar(50) NOT NULL,
  `page` varchar(50) NOT NULL,
  `banner_image` varchar(2500) NOT NULL,
  `description` varchar(2500) NOT NULL,
  `status` int(1) NOT NULL,
  `created_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`banner_id`, `position`, `page`, `banner_image`, `description`, `status`, `created_on`) VALUES
(1, 'home_banner_2', '', '1631096454cart-w.png', 'sadawfa', 1, '2021-09-08 15:50:54'),
(2, 'home_banner_2', '', '1631096464cart-w.png', 'sadawfa', 1, '2021-09-08 15:51:04');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `blog_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `blog_title` varchar(255) NOT NULL,
  `featured_image` varchar(255) NOT NULL,
  `blog_content` longtext NOT NULL,
  `blog_status` tinyint(1) NOT NULL DEFAULT 0,
  `permalink` varchar(300) NOT NULL,
  `meta_title` varchar(255) NOT NULL DEFAULT '',
  `meta_description` varchar(500) NOT NULL DEFAULT '',
  `meta_keywords` varchar(500) NOT NULL DEFAULT '',
  `updated_on` datetime NOT NULL,
  `created_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`blog_id`, `category_id`, `blog_title`, `featured_image`, `blog_content`, `blog_status`, `permalink`, `meta_title`, `meta_description`, `meta_keywords`, `updated_on`, `created_on`) VALUES
(1, 1, 'Hair Protection ', '16280605581590038294banner2.jpg', '<p><strong>Lorem Ipsum</strong>&nbspis simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbspis simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 1, '   hair-protection', '', '', '', '2021-08-04 12:32:38', '2021-08-04 12:32:38'),
(2, 2, 'Skin Protection ', '16280606251590664343top-bg.jpg', '<p><strong>Lorem Ipsum</strong>&nbspis simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbspis simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 1, '   skin-protection', '', '', '', '2021-08-04 12:33:45', '2021-08-04 12:33:45');

-- --------------------------------------------------------

--
-- Table structure for table `blog_category`
--

CREATE TABLE `blog_category` (
  `category_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `category_name` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `meta_title` varchar(255) NOT NULL DEFAULT '',
  `meta_description` varchar(500) NOT NULL DEFAULT '',
  `meta_keyword` varchar(500) NOT NULL DEFAULT '',
  `permalink` varchar(200) NOT NULL DEFAULT '',
  `updated_on` datetime NOT NULL,
  `created_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blog_category`
--

INSERT INTO `blog_category` (`category_id`, `parent_id`, `category_name`, `status`, `meta_title`, `meta_description`, `meta_keyword`, `permalink`, `updated_on`, `created_on`) VALUES
(1, 0, 'Hair Care', 1, '', '', '', 'hair-care', '2021-08-04 12:29:43', '2021-08-04 12:29:43'),
(2, 0, 'Skin Care', 1, '', '', '', 'skin-care', '2021-08-04 12:29:58', '2021-08-04 12:29:58'),
(3, 0, 'Body Art', 1, '', '', '', 'body-art', '2021-08-04 12:30:09', '2021-08-04 12:30:09');

-- --------------------------------------------------------

--
-- Table structure for table `blog_comment`
--

CREATE TABLE `blog_comment` (
  `blog_comment_id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `comment` longtext NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `website` varchar(150) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `updated_date` datetime NOT NULL,
  `created_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blog_comment`
--

INSERT INTO `blog_comment` (`blog_comment_id`, `blog_id`, `comment`, `name`, `email`, `website`, `status`, `updated_date`, `created_date`) VALUES
(1, 2, 'dsafsafa sass afsdf sdf', 'Test Technical', 'admin@gmail.com', 'sadsaf', 0, '0000-00-00 00:00:00', '2021-07-07 14:22:31'),
(2, 2, 'safdsgvds', 'Test Technical', 'admin@gmail.com', 'dsfdsg', 0, '2021-07-07 14:23:19', '2021-07-07 14:23:19'),
(3, 2, 'safdsgvds', 'Test Technical', 'admin@gmail.com', 'dsfdsg', 0, '2021-07-07 14:24:41', '2021-07-07 14:24:41'),
(4, 1, 'Test Comment', 'Test', 'test@gmail.com', 'test.com', 0, '2021-08-04 12:35:02', '2021-08-04 12:35:02');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(11) NOT NULL,
  `category_id` varchar(25) DEFAULT NULL,
  `product_category_id` varchar(25) DEFAULT NULL,
  `brand_name` varchar(255) NOT NULL,
  `brand_image` varchar(2000) NOT NULL,
  `brand_logo` varchar(2000) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `permalink` varchar(300) NOT NULL,
  `m_country` varchar(100) DEFAULT NULL,
  `brand_type` varchar(100) DEFAULT NULL,
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `description` varchar(1500) DEFAULT NULL,
  `featured` int(11) NOT NULL COMMENT '1=>Yes,0=>no',
  `meta_title` varchar(255) NOT NULL DEFAULT '',
  `meta_desc` varchar(500) NOT NULL DEFAULT '',
  `meta_keyword` varchar(500) NOT NULL DEFAULT '',
  `updated_on` datetime NOT NULL,
  `created_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `category_id`, `product_category_id`, `brand_name`, `brand_image`, `brand_logo`, `status`, `permalink`, `m_country`, `brand_type`, `from_date`, `to_date`, `description`, `featured`, `meta_title`, `meta_desc`, `meta_keyword`, `updated_on`, `created_on`) VALUES
(1, '1', '1', 'Aqua spa', '1640068778Aqua-spa.png', '1640068778Aqua-spa.png', 1, 'aqua-spa', '', 'Organic', '0000-00-00', '0000-00-00', '', 0, '', '', '', '2021-12-21 12:09:38', '2021-07-28 14:37:49'),
(2, '1', '1', 'schwarzkopf professional', 'schwarzkopf-professional.png', 'schwarzkopf-professional.png', 1, 'schwarzkopf-professional', NULL, NULL, NULL, NULL, '', 0, '', '', '', '2021-07-28 14:37:49', '2021-07-28 14:37:49'),
(3, '1', '1', 'wella professional', 'wella-professional.png', 'wella-professional.png', 1, 'wella-professional', NULL, NULL, NULL, NULL, '', 0, '', '', '', '2021-07-28 14:37:49', '2021-07-28 14:37:49'),
(4, '1', '1', 'matrix professional', 'matrix-professional.png', 'matrix-professional.png', 1, 'matrix-professional', NULL, NULL, NULL, NULL, '', 0, '', '', '', '2021-07-28 14:37:49', '2021-07-28 14:37:49'),
(5, '1', '1', 'SP professional', 'SP-professional.png', 'SP-professional.png', 1, 'sp-professional', NULL, NULL, NULL, NULL, '', 0, '', '', '', '2021-07-28 14:37:49', '2021-07-28 14:37:49'),
(6, '1', '1', 'kerastase', 'kerastase.png', 'kerastase-banner.jpg', 1, 'kerastase', NULL, NULL, NULL, NULL, '', 0, '', '', '', '2021-07-28 14:37:49', '2021-07-28 14:37:49'),
(7, '1', '1', 'GK Hair', 'GK-Hair.png', 'GK-Hair-banner.jpg', 1, 'gk-hair', NULL, NULL, NULL, NULL, '', 0, '', '', '', '2021-07-28 14:37:49', '2021-07-28 14:37:49'),
(8, '1', '1', 'PH professional', 'PH-professional.png', 'PH-professional-banner.jpg', 1, 'ph-professional', NULL, NULL, NULL, NULL, '', 0, '', '', '', '2021-07-28 14:37:49', '2021-07-28 14:37:49'),
(9, '1', '1', 'streax professional', 'streax-professional.png', 'streax-professional-banner.jpg', 1, 'streax-professional', NULL, NULL, NULL, NULL, '', 0, '', '', '', '2021-07-28 14:37:49', '2021-07-28 14:37:49'),
(10, '1', '1', 'godrej professional', 'godrej-professional.png', 'godrej-professional-banner.jpg', 1, 'godrej-professional', NULL, NULL, NULL, NULL, '', 0, '', '', '', '2021-07-28 14:37:49', '2021-07-28 14:37:49'),
(11, '1', '1', 'rusk professional', 'rusk-professional.png', 'rusk-professional-banner.jpg', 1, 'rusk-professional', NULL, NULL, NULL, NULL, '', 0, '', '', '', '2021-07-28 14:37:49', '2021-07-28 14:37:49'),
(12, '1', '1', 'bblunt ', 'bblunt.png', 'bblunt-banner.jpg', 1, 'bblunt-', NULL, NULL, NULL, NULL, '', 0, '', '', '', '2021-07-28 14:37:49', '2021-07-28 14:37:49'),
(13, '1', '1', 'Loreal professional', 'Loreal-professional.png', 'Loreal-professional-banner.jpg', 1, 'loreal-professional', NULL, NULL, NULL, NULL, '', 0, '', '', '', '2021-07-28 14:37:49', '2021-07-28 14:37:49'),
(14, '1', '1', 'Nashi ', 'Nashi.png', 'Nashi-banner.jpg', 1, 'nashi-', NULL, NULL, NULL, NULL, '', 0, '', '', '', '2021-07-28 14:37:49', '2021-07-28 14:37:49'),
(15, '1', '1', 'Macadamia', 'Macadamia.png', 'Macadamia-banner.jpg', 1, 'macadamia', NULL, NULL, NULL, NULL, '', 0, '', '', '', '2021-07-28 14:37:49', '2021-07-28 14:37:49'),
(16, '1', '1', 'raaga professional', 'raaga-professional.png', 'raaga-professional-banner.jpg', 1, 'raaga-professional', NULL, NULL, NULL, NULL, '', 0, '', '', '', '2021-07-28 14:37:49', '2021-07-28 14:37:49'),
(17, '1', '1', 'schwarzkopf professional', 'schwarzkopf-professional.png', 'schwarzkopf-professional-banner.jpg', 1, 'schwarzkopf-professional', NULL, NULL, NULL, NULL, '', 0, '', '', '', '2021-07-28 14:37:49', '2021-07-28 14:37:49'),
(18, '1', '1', 'wella professional', 'wella-professional.png', 'wella-professional-banner.jpg', 1, 'wella-professional', NULL, NULL, NULL, NULL, '', 0, '', '', '', '2021-07-28 14:37:49', '2021-07-28 14:37:49'),
(19, '1', '1', 'matrix professional', 'matrix-professional.png', 'matrix-professional-banner.jpg', 1, 'matrix-professional', NULL, NULL, NULL, NULL, '', 0, '', '', '', '2021-07-28 14:37:49', '2021-07-28 14:37:49'),
(20, '1', '1', 'raaga professional', 'raaga-professional.png', 'raaga-professional-banner.jpg', 1, 'raaga-professional', NULL, NULL, NULL, NULL, '', 0, '', '', '', '2021-07-28 14:37:49', '2021-07-28 14:37:49'),
(21, '1', '1', 'PH professional', 'phlaboratories.png', 'PH-professional-banner.jpg', 1, 'ph-professional', NULL, NULL, NULL, NULL, '', 0, '', '', '', '2021-07-28 14:37:49', '2021-07-28 14:37:49'),
(22, '1', '1', 'GK Hair', 'GK-Hair.png', 'GK-Hair-banner.jpg', 1, 'gk-hair', NULL, NULL, NULL, NULL, '', 0, '', '', '', '2021-07-28 14:37:49', '2021-07-28 14:37:49'),
(23, '1', '1', 'streax professional', 'streax-professional.png', 'streax-professional-banner.jpg', 1, 'streax-professional', NULL, NULL, NULL, NULL, '', 0, '', '', '', '2021-07-28 14:37:49', '2021-07-28 14:37:49'),
(24, '1', '1', 'godrej professional', 'godrej-professional.png', 'godrej-professional-banner.jpg', 1, 'godrej-professional', NULL, NULL, NULL, NULL, '', 0, '', '', '', '2021-07-28 14:37:49', '2021-07-28 14:37:49'),
(25, '1', '1', 'mohair ', 'coming-soon', 'coming-soon-2', 1, 'mohair-', NULL, NULL, NULL, NULL, '', 0, '', '', '', '2021-07-28 14:37:49', '2021-07-28 14:37:49'),
(26, '1', '1', 'rusk professional', 'rusk-professional.png', 'rusk-professional.jpg', 1, 'rusk-professional', NULL, NULL, NULL, NULL, '', 0, '', '', '', '2021-07-28 14:37:49', '2021-07-28 14:37:49'),
(27, '1', '1', 'guy tang hair ', 'guy-tang-hair.png', 'guy-tang-hair-banner.jpg', 1, 'guy-tang-hair-', NULL, NULL, NULL, NULL, '', 0, '', '', '', '2021-07-28 14:37:49', '2021-07-28 14:37:49'),
(28, '1', '1', 'crazy color', 'crazy-color.png', 'crazy-color-banner.jpg', 1, 'crazy-color', NULL, NULL, NULL, NULL, '', 0, '', '', '', '2021-07-28 14:37:49', '2021-07-28 14:37:49'),
(29, '1', '1', 'mounir professional', 'mounir-professional.png', 'mounir-professional-banner.jpg', 1, 'mounir-professional', NULL, NULL, NULL, NULL, '', 0, '', '', '', '2021-07-28 14:37:49', '2021-07-28 14:37:49'),
(30, '1', '1', 'bblunt ', 'bblunt.png', 'bblunt-banner.jpg', 1, 'bblunt-', NULL, NULL, NULL, NULL, '', 0, '', '', '', '2021-07-28 14:37:49', '2021-07-28 14:37:49'),
(31, '1', '1', 'Loreal professional', 'Loreal-professional.png', 'Loreal-professional-banner.jpg', 1, 'loreal-professional', NULL, NULL, NULL, NULL, '', 0, '', '', '', '2021-07-28 14:37:49', '2021-07-28 14:37:49'),
(32, '1', '1', 'Kera therapy', 'Kera-therapy.png', 'Keratherapy-banner.jpg', 1, 'kera-therapy', NULL, NULL, NULL, NULL, '', 0, '', '', '', '2021-07-28 14:37:49', '2021-07-28 14:37:49'),
(33, '1', '1', 'Brazilian blow out', 'Brazilian-blow-out.png', 'brazilianblowout-banner.jpg', 1, 'brazilian-blow-out', NULL, NULL, NULL, NULL, '', 0, '', '', '', '2021-07-28 14:37:49', '2021-07-28 14:37:49'),
(34, '1', '1', 'Cystein', 'coming-soon.jpg', 'coming-soon-2.jpg', 1, 'cystein', NULL, NULL, NULL, NULL, '', 0, '', '', '', '2021-07-28 14:37:49', '2021-07-28 14:37:49'),
(35, '1', '1', 'Cadivie', 'Cadiveu.png', 'Cadivieu-banner.jpg', 1, 'cadivie', NULL, NULL, NULL, NULL, '', 0, '', '', '', '2021-07-28 14:37:49', '2021-07-28 14:37:49'),
(36, '1', '1', 'Protek', 'coming-soon.jpg', 'coming-soon-2.jpg', 1, 'protek', NULL, NULL, NULL, NULL, '', 0, '', '', '', '2021-07-28 14:37:49', '2021-07-28 14:37:49'),
(37, '1', '1', 'Copolla', 'coming-soon.jpg', 'coming-soon-2.jpg', 1, 'copolla', NULL, NULL, NULL, NULL, '', 0, '', '', '', '2021-07-28 14:37:49', '2021-07-28 14:37:49'),
(38, '1', '1', 'Kerafusion', 'Kerafusion.png', 'coming-soon-2.jpg', 1, 'kerafusion', NULL, NULL, NULL, NULL, '', 0, '', '', '', '2021-07-28 14:37:49', '2021-07-28 14:37:49'),
(39, '1', '1', 'beauty garage', 'beauty-garage.png', 'beauty-garage-banner.jpg', 1, 'beauty-garage', NULL, NULL, NULL, NULL, '', 0, '', '', '', '2021-07-28 14:37:49', '2021-07-28 14:37:49'),
(40, '1', '1', 'Amino therapy', 'coming-soon.jpg', 'coming-soon-2.jpg', 1, 'amino-therapy', NULL, NULL, NULL, NULL, '', 0, '', '', '', '2021-07-28 14:37:49', '2021-07-28 14:37:49'),
(41, '1', '1', 'Luxliss', 'Luxliss.png', 'Luxliss-banner.jpg', 1, 'luxliss', NULL, NULL, NULL, NULL, '', 0, '', '', '', '2021-07-28 14:37:49', '2021-07-28 14:37:49'),
(42, '1', '1', 'QOD Max Prime', 'QOD-Max-Prime.png', 'QOD-Max-Prime-banner.jpg', 1, 'qod-max-prime', NULL, NULL, NULL, NULL, '', 0, '', '', '', '2021-07-28 14:37:49', '2021-07-28 14:37:49'),
(43, '1', '1', 'Zapp', 'Zap.png', 'coming-soon-2.jpg', 1, 'zapp', NULL, NULL, NULL, NULL, '', 0, '', '', '', '2021-07-28 14:37:49', '2021-07-28 14:37:49'),
(44, '1', '1', 'Calayx', 'calyxprofessional.png', 'Calayx-banner.jpg', 1, 'calayx', NULL, NULL, NULL, NULL, '', 0, '', '', '', '2021-07-28 14:37:49', '2021-07-28 14:37:49'),
(45, '1', '1', 'HairMax', 'HairMax.png', 'coming-soon-2.jpg', 1, 'hairmax', NULL, NULL, NULL, NULL, '', 0, '', '', '', '2021-07-28 14:37:49', '2021-07-28 14:37:49'),
(46, '1', '1', 'Silkprotein', 'Silkprotein.png', 'coming-soon-2.jpg', 1, 'silkprotein', NULL, NULL, NULL, NULL, '', 0, '', '', '', '2021-07-28 14:37:49', '2021-07-28 14:37:49'),
(47, '1', '1', 'Majestic keratin', 'Majestic-keratin.png', 'Majestic-keratin-banner.jpg', 1, 'majestic-keratin', NULL, NULL, NULL, NULL, '', 0, '', '', '', '2021-07-28 14:37:49', '2021-07-28 14:37:49'),
(48, '1', '1', 'Amazon ', 'Amazon.png', 'Amazon-banner.jpg', 1, 'amazon-', NULL, NULL, NULL, NULL, '', 0, '', '', '', '2021-07-28 14:37:49', '2021-07-28 14:37:49'),
(51, '0', '0', 'fdsfaf11', '16408669306029.png', '164086693088625.png', 0, 'fdsfaf11', NULL, NULL, NULL, NULL, 'sdasdf11', 0, '', '', '', '2021-12-30 12:22:10', '2021-12-30 12:22:10');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `description` varchar(2500) DEFAULT NULL,
  `category_icon` varchar(255) NOT NULL,
  `category_image` varchar(2500) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` text NOT NULL,
  `meta_keyword` text NOT NULL,
  `permalink` varchar(255) NOT NULL,
  `updated_on` datetime NOT NULL,
  `created_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `parent_id`, `category_name`, `description`, `category_icon`, `category_image`, `status`, `meta_title`, `meta_description`, `meta_keyword`, `permalink`, `updated_on`, `created_on`) VALUES
(1, 0, 'Hair', '', '1637573417Hair.jpg', '1637573417Hair.jpg', 1, 'SEO Title', 'SEO Description', 'SEO Keyword', 'hair', '2021-11-22 15:00:17', '2021-07-24 11:10:36'),
(2, 0, 'Skin', '', '1637573456skin.jpg', '1637573456skin.jpg', 1, '', '', '', 'skin', '2021-11-22 15:00:56', '2021-07-24 11:10:36'),
(3, 0, 'Spa', '', '1637573468Spa.jpg', '1637573468Spa.jpg', 1, '', '', '', 'spa', '2021-11-22 15:01:08', '2021-07-24 11:10:36'),
(4, 0, 'Mani-Pedi', '', '1637573443Mani-Pedi.jpg', '1637573443Mani-Pedi.jpg', 1, '', '', '', 'mani-pedi', '2021-11-22 15:00:43', '2021-07-24 11:10:36'),
(5, 0, 'Make Up', '', '1637573430MakeUp.jpg', '1637573430MakeUp.jpg', 1, '', '', '', 'make-up', '2021-11-22 15:00:30', '2021-07-24 11:10:36'),
(6, 0, 'Wellness & Fragrances', NULL, '16401753063347.jpg', '164017530622736.jpg', 1, '', '', '', '', '2021-12-22 12:15:06', '2021-12-22 12:15:06'),
(18, 0, 'sdfa', 'sdfsaf', '16401681539149.jpg', '164016815336010.jpg', 0, '', '', '', '', '2021-12-22 12:03:00', '2021-12-22 12:03:00'),
(19, 0, 'sdfasf', NULL, '1640174309945.jpg', '164017431021505.jpg', 0, '', '', '', '', '2021-12-22 12:01:58', '2021-12-22 12:01:58'),
(20, 0, 'zxcZC', 'fsfsd', '16401742789440.jpg', '164017427897270.jpg', 1, '', '', '', '', '2021-12-23 06:55:51', '2021-12-23 06:55:51'),
(21, 0, 'esrerew', NULL, '16401746721870.jpg', '164017467213465.jpg', 1, '', '', '', '', '2021-12-22 12:04:32', '2021-12-22 12:04:32'),
(24, 0, 'Make Up', 'sfas', '16405858951901.jpg', '16405858958257.jpg', 1, '', '', '', '', '2021-12-27 06:18:15', '2021-12-27 06:18:15');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `city_id` int(11) NOT NULL,
  `city_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `state_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0:Blocked, 1:Active',
  `updated` datetime NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`city_id`, `city_name`, `state_id`, `status`, `updated`, `created`) VALUES
(1, 'Patna', 3, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(2, 'Noida', 5, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(3, 'Mumbai', 4, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(6, 'Chandigarh', 10, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(14, 'Sonipat', 17, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(15, 'Panchkula', 17, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(17, 'Bhiwani', 17, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(18, 'Ambala', 17, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(19, 'Sirsa ', 17, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(20, 'Jhajjar', 17, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(21, 'Jind ', 17, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(22, 'Kurukshetra', 17, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(23, 'Kaithal', 17, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(24, 'Rewari', 17, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(25, 'Palwal', 17, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(26, 'Hisar', 17, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(27, 'Mahendragarh', 17, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(29, 'Narnaul', 17, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(30, 'Fatehabad', 17, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(31, 'Jind', 17, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(32, 'Solan', 18, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(33, 'Kullu', 18, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(34, 'Manali', 18, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(35, 'Hamirpur', 18, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(36, 'Bilaspur', 18, 1, '2018-09-26 11:00:46', '2018-02-12 21:01:13'),
(38, 'Shimla', 18, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(39, 'Kangra', 18, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(40, 'Mandi', 18, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(41, 'Sirmaur', 18, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(42, 'Jammu & Kashmir', 19, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(43, 'Anantnag', 19, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(44, 'Badgam', 19, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(45, 'BandiporeÂ ', 19, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(46, 'BaramulaÂ ', 19, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(47, 'Doda', 19, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(48, 'Ganderbal', 19, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(49, 'Jammu', 19, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(50, 'Kargil', 19, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(51, 'Kathua', 19, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(52, 'Kishtwar', 19, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(53, 'Kulgam', 19, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(54, 'Kupwara', 19, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(55, 'LehÂ (Ladakh)', 19, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(56, 'Pulwama', 19, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(57, 'PunchÂ ', 19, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(58, 'Rajouri', 19, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(59, 'Ramban', 19, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(60, 'Reasi', 19, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(61, 'Samba', 19, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(62, 'Shupiyan', 19, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(63, 'Srinagar', 19, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(64, 'Udhampur', 19, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(65, 'Amritsar', 31, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(66, 'Barnala', 31, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(67, 'Bathinda', 31, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(68, 'Faridkot', 31, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(69, 'Fatehgarh Sahib', 31, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(70, 'Firozpur', 31, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(71, 'Gurdaspur', 31, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(72, 'Hoshiarpur', 31, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(73, 'Kapurthala', 31, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(74, 'Jalandhar', 31, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(75, 'Ludhiana', 31, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(76, 'Mansa', 31, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(77, 'Moga', 31, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(78, 'Sri Muktsar Sahib', 31, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(79, 'Patiala', 31, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(80, 'Rupnagar', 31, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(81, 'Sahibzada Ajit Singh Nagar', 31, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(82, 'Sangrur', 31, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(83, 'Shahid Bhagat Singh Nagar', 31, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(84, 'Tarn Taran', 31, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(111, 'Agra', 37, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(112, 'Aligarh', 37, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(113, 'Allahabad', 37, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(114, 'Ambedkar Nagar', 37, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(115, 'AmrohaÂ (Jyotiba Phule Nagar)', 37, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(116, 'Auraiya', 37, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(117, 'Azamgarh', 37, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(118, 'Bahraich', 37, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(119, 'Ballia', 37, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(120, 'Balrampur', 37, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(121, 'Banda', 37, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(122, 'Bara Banki', 37, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(123, 'Bareilly', 37, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(124, 'Basti', 37, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(125, 'Bijnor', 37, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(126, 'Budaun', 37, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(127, 'Bulandshahr', 37, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(128, 'Chandauli', 37, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(129, 'Chitrakoot', 37, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(130, 'Deoria', 37, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(131, 'Etah', 37, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(132, 'Etawah', 37, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(133, 'Faizabad', 37, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(134, 'Farrukhabad', 37, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(135, 'Fatehpur', 37, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(136, 'Firozabad', 37, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(137, 'Gautam Buddha Nagar', 37, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(138, 'Ghaziabad', 37, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(139, 'Ghazipur', 37, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(140, 'Gonda', 37, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(141, 'Gorakhpur', 37, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(142, 'Hamirpur', 37, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(143, 'Hardoi', 37, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(144, 'HathrasÂ (Mahamaya Nagar)', 37, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(145, 'Jalaun', 37, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(146, 'Jaunpur', 37, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(147, 'Jhansi', 37, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(148, 'Kannauj', 37, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(149, 'kanpur', 37, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(150, 'Kaushambi', 37, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(151, 'KasganjÂ (Kanshiram Nagar)', 37, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(152, 'KheriÂ (Lakhimpur Kheri)', 37, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(153, 'Kushinagar', 37, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(154, 'Lalitpur', 37, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(156, 'Mahoba', 37, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(157, 'Mahrajganj', 37, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(158, 'Mainpuri', 37, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(159, 'Mathura', 37, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(160, 'Mau', 37, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(161, 'Meerut', 37, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(162, 'Mirzapur', 37, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(163, 'Moradabad', 37, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(164, 'Muzaffarnagar', 37, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(165, 'Pilibhit', 37, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(166, 'Pratapgarh', 37, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(167, 'Rae Bareli', 37, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(168, 'Rampur', 37, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(169, 'Saharanpur', 37, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(170, 'Sant Kabir Nagar', 37, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(171, 'Sant Ravidas NagarÂ (Bhadohi)', 37, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(172, 'Shahjahanpur', 37, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(173, 'Siddharthnagar', 37, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(174, 'Sitapur', 37, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(175, 'Sonbhadra', 37, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(176, 'Sultanpur', 37, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(177, 'Unnao', 37, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(178, 'Varanasi', 37, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(179, 'Almora', 38, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(180, 'Bageshwar', 38, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(181, 'Chamoli', 38, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(182, 'Champawat', 38, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(183, 'Dehradun', 38, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(184, 'Haridwar', 38, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(185, 'Nainital', 38, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(186, 'Pithoragarh', 38, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(187, 'Rudraprayag', 38, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(188, 'Tehri Garhwal', 38, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(189, 'Udham Singh Nagar', 38, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(190, 'Uttarkashi', 38, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(191, 'Udalguri', 9, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(192, 'Karimganj', 9, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(193, 'Cachar', 9, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(194, 'Kamrup', 9, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(195, 'Karbi Anglong', 9, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(196, 'Kokrajhar', 9, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(197, 'Golaghat', 9, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(198, 'Goalpara', 9, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(199, 'Chirang', 9, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(200, 'Dibrugarh', 9, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(201, 'Dima Hasao', 9, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(202, 'Tinsukia', 9, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(203, 'Darrang', 9, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(204, 'Dhubri', 9, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(205, 'Dhemaji', 9, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(206, 'Nagaon', 9, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(207, 'Nalbari', 9, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(208, 'Bongaigaon', 9, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(209, 'Barpeta', 9, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(210, 'Baksa', 9, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(211, 'Morigaon', 9, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(212, 'Jorhat', 9, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(213, 'Lakhimpur', 9, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(214, 'Sivasagar', 9, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(215, 'sonitpur', 9, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(216, 'Hailakandi', 9, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(217, 'Ahiwara', 11, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(218, 'Akaltara', 11, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(219, 'Ambikapur', 11, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(220, 'Bade Bacheli', 11, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(221, 'Baikunthpur', 11, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(222, 'Balod', 11, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(223, 'Baloda BÄzÄr', 11, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(224, 'BemetÄra', 11, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(225, 'Bhatapara', 11, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(226, 'Bhilai(Bhilai Nagar)', 11, 1, '2018-07-12 18:50:05', '2018-02-12 21:01:13'),
(227, 'Bilaspur', 11, 1, '2018-09-26 11:01:12', '2018-02-12 21:01:13'),
(228, 'ChÄmpa', 11, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(229, 'Chirmiri', 11, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(230, 'Dalli-Rajhara', 11, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(231, 'Dhamtari', 11, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(232, 'Dipka', 11, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(233, 'Dongragarh', 11, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(234, 'Gobranawapara', 11, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(235, 'Jagdalpur', 11, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(236, 'Jashpurnagar', 11, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(237, 'KÄnker', 11, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(238, 'Katghora', 11, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(239, 'Kawardha', 11, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(240, 'KhairÄgarh', 11, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(241, 'Kondagaon', 11, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(242, 'Korba', 11, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(243, 'MahÄsamund', 11, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(244, 'Manendragarh', 11, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(245, 'Mungeli', 11, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(246, 'Naila JÄnjgÄ«r', 11, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(247, 'Narayanpur', 11, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(248, 'Raigarh', 11, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(249, 'Raipur', 11, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(250, 'RÄj NÄndgaon', 11, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(251, 'Ratanpur', 11, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(252, 'Sakti', 11, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(253, 'SaraipÄli', 11, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(254, 'Shivpur Charcha', 11, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(255, 'Surajpur', 11, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(256, 'Takhatpur', 11, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(257, 'Tilda Neora', 11, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(258, 'Agar', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(259, 'Alirajpur', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(260, 'Alot', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(261, 'Ambah', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(262, 'Amla', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(263, 'Anjad', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(264, 'Aron', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(265, 'Ashok Nagar', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(266, 'Ashta', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(267, 'Badnagar', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(268, 'Badnawar', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(269, 'Balaghat', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(270, 'Bamor', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(271, 'Banda', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(272, 'Bangawan', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(273, 'Barailey', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(274, 'Barwaha', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(275, 'Barwani', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(276, 'Basoda', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(277, 'Begamganj', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(278, 'Beohari', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(279, 'Berasia', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(280, 'Betul', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(281, 'Bhander', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(282, 'Bhanpura', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(283, 'Bhind', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(284, 'Bhopal', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(285, 'Biaora', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(286, 'Bijawar', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(287, 'Bijuri', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(288, 'Bina Etawa', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(289, 'Burhanpur', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(290, 'Chachaura-Binaganj', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(291, 'Chanderi', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(292, 'Chhanera', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(293, 'Chhatarpur', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(294, 'Chhindwara', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(295, 'Gotegaon', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(296, 'Damoh', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(297, 'Damua', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(298, 'Datia', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(299, 'Deori Khas', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(300, 'Dewas', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(301, 'Dhamnod', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(302, 'Dhanpuri', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(303, 'Dhar', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(304, 'Dindori', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(305, 'Gadarwara', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(306, 'Garhakota', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(307, 'Gohad', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(308, 'Gormi', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(309, 'Guna', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(310, 'Gwalior', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(311, 'Harda', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(312, 'Hatta', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(313, 'Hoshangabad', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(314, 'Indergarh', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(315, 'Indore', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(316, 'Itarsi', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(317, 'Jabalpur', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(318, 'Jamai', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(319, 'Jaura Khurd', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(320, 'Jhabua', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(321, 'Jirapur', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(322, 'Joura', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(323, 'Kailaras', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(324, 'KaimurÂ (Kymore)', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(325, 'Kareli', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(326, 'Karera', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(327, 'Kasrawad', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(328, 'Khachrod', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(329, 'Khajuraho', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(330, 'Khandwa', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(331, 'Khargone', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(332, 'Khategaon', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(333, 'Khirkiya', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(334, 'Khurai', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(335, 'Kotma', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(336, 'Kukshi', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(337, 'Lahar', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(338, 'Laundi', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(339, 'Maharajpur', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(340, 'Maheshwar', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(341, 'Maihar', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(342, 'Maksi', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(343, 'Malaj Khand', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(344, 'Manasa', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(345, 'Manawar', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(346, 'MandidÄ«p', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(347, 'Mandla', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(348, 'Mandsaur', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(349, 'Mau', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(350, 'Mauganj', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(351, 'Mehgaon', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(352, 'Mehidpur', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(353, 'Mhow', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(354, 'Mhowgaon', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(355, 'Morena', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(356, 'Multai', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(357, 'Mungaoli', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(358, 'Murwara', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(359, 'Nagda', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(360, 'Nagod', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(361, 'Nainpur', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(362, 'Narsinghpur', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(363, 'Narsingarh', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(364, 'Nasrullaganj', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(365, 'Nepa Nagar', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(366, 'Neemuch', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(367, 'Niwari', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(368, 'Nowgong', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(369, 'NowrozabadÂ (Khodargama)', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(370, 'Pachor', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(371, 'Pali', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(372, 'Panagar', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(373, 'Pandhurna', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(374, 'Panna', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(375, 'Parasia', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(376, 'Pasan', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(377, 'Patharia', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(378, 'Piparia', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(379, 'Pirthipur', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(380, 'Pithampur', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(381, 'Porsa', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(382, 'Raghogarh', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(383, 'Rahatgarh', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(384, 'Raisen', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(385, 'RajgarhÂ (Rajgarh district)', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(386, 'RajgarhÂ (Dhar district)', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(387, 'Rajpur', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(388, 'Ratlam', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(389, 'Rau', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(390, 'Rehli', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(391, 'Rewa', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(392, 'Sabalgarh', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(393, 'Sagar', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(394, 'Sanawad', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(395, 'Sarangpur', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(396, 'Sarni', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(397, 'Satna', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(398, 'Sausar', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(399, 'Sehore', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(400, 'Sendhwa', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(401, 'Seondha', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(402, 'Seoni', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(403, 'Seoni Malwa', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(404, 'Shahdol', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(405, 'Shajapur', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(406, 'Shamgarh', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(407, 'Sheopur', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(408, 'Shivpuri', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(409, 'Shujalpur', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(410, 'Sidhi', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(411, 'Sihora', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(412, 'Singrauli', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(413, 'Sironj', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(414, 'Sohagpur', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(415, 'Tarana', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(416, 'TÄ«kamgarh', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(417, 'Timarni', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(418, 'Obedullaganj', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(419, 'Ujjain', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(420, 'UmariÄ', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(421, 'Vidisha', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(422, 'Waraseoni', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(423, 'Amini', 23, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(424, 'Androth', 23, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(425, 'Kavaratti', 23, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(426, 'Minicoy', 23, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(427, 'Along', 8, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(428, 'Basar', 8, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(429, 'Changlang', 8, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(430, 'Daporijo', 8, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(431, 'Deomali', 8, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(432, 'Itanagar', 8, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(433, 'Jairampur', 8, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(434, 'Khonsa', 8, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(435, 'Naharlagun', 8, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(436, 'Namsai', 8, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(437, 'Pasighat', 8, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(438, 'Roing', 8, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(439, 'Seppa', 8, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(440, 'Tawang', 8, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(441, 'Tezu', 8, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(442, 'Ziro', 8, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(443, 'Amarpur', 3, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(444, 'Arrah', 3, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(445, 'Araria', 3, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(446, 'Areraj', 3, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(447, 'Arwal', 3, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(448, 'Aurangabad', 3, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(449, 'Bagaha', 3, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(450, 'Bahadurganj', 3, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(451, 'Bairagnia', 3, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(452, 'Bakhri', 3, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(453, 'Bakhtiyarpur', 3, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(454, 'Balia', 3, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(455, 'Banka', 3, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(456, 'Banmankhi Bazar', 3, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(457, 'Barahiya', 3, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(458, 'Barauli', 3, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(459, 'Barauni', 3, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(460, 'Barbigha', 3, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(461, 'Barh', 3, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(462, 'Begusarai', 3, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(463, 'behea', 3, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(464, 'belsand', 3, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(465, 'Benipur', 3, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(466, 'Bettiah', 3, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(467, 'Bhabua', 3, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(468, 'Bhagalpur', 3, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(469, 'Bihat', 3, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(470, 'Bihta', 3, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(471, 'Bikram', 3, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(472, 'Bikramganj', 3, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(473, 'Birpur', 3, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(474, 'Bodh Gaya', 3, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(475, 'Buxar', 3, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(476, 'Chakia', 3, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(477, 'Chanpatia', 3, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(478, 'Chapra', 3, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(479, 'Colgong', 3, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(480, 'Dalsinghsarai', 3, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(481, 'Darbhanga', 3, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(482, 'DÄudnagar', 3, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(483, 'Dehri', 3, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(484, 'Dhaka', 3, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(485, 'Dighwara', 3, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(486, 'Dumraon', 3, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(487, 'Fatwa', 3, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(488, 'Forbesganj', 3, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(489, 'Gaya', 3, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(490, 'Gogri Jamalpur', 3, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(491, 'Gopalganj', 3, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(492, 'Hajipur', 3, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(493, 'Hilsa', 3, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(494, 'Hisua', 3, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(495, 'Islampur', 3, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(496, 'Jagdispur', 3, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(497, 'Jehanabad', 3, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(498, 'Jamalpur', 3, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(499, 'Jamui', 3, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(500, 'Jaynagar', 3, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(501, 'Jha Jha', 3, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(502, 'Jhanjharpur', 3, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(503, 'Jogbani', 3, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(504, 'Kantai', 3, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(505, 'Kataiya', 3, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(506, 'Katihar', 3, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(507, 'Khagaria', 3, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(508, 'Kharagpur', 3, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(509, 'Kishanganj', 3, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(510, 'Luckeesarai', 3, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(511, 'Lalganj', 3, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(512, 'Madhepura', 3, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(513, 'Madhubani', 3, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(514, 'Maharajganj', 3, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(515, 'Mairwa', 3, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(516, 'Makhdumpur', 3, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(517, 'Maner', 3, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(518, 'ManihÄri', 3, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(519, 'Marhaura', 3, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(520, 'Masaurhi', 3, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(521, 'Mahnar Bazar', 3, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(522, 'Mehsi', 3, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(523, 'Mirganj', 3, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(524, 'Mumbai', 25, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(525, 'Malegaon', 25, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(526, 'Kolhapur', 25, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(527, 'Nanded', 25, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(528, 'Sangali', 25, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(529, 'Jalgaon', 25, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(530, 'Akola', 25, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(531, 'Latur', 25, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(532, 'Ahmadnagar', 25, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(533, 'Dhule', 25, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(534, 'Ichalkaranji', 25, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(535, 'Pune', 25, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(536, 'Chandrapur', 25, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(537, 'Parbhani', 25, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(538, 'Jalna', 25, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(539, 'Bhusawal', 25, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(540, 'Navi Mumbai', 25, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(542, 'Nagpur', 25, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(543, 'Nashik', 25, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(544, 'Vasai-Virar', 25, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(545, 'Aurangabad', 25, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(546, 'Solapur', 25, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(547, 'Bhiwandi', 25, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(548, 'Amravati', 25, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(549, 'Chennai ', 34, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(550, 'Coimbatore', 34, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(551, 'Madurai', 34, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(552, 'Tiruchirappalli ', 34, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(553, 'Tiruppur ', 34, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(554, 'Salem', 34, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(555, 'Erode', 34, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(556, 'Tirunelveli', 34, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(557, 'Vellore', 34, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(558, 'Thoothukkudi ', 34, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(559, 'Dindigul', 34, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(560, 'Thanjavur', 34, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(561, 'Ranippettai ', 34, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(562, 'Sivakasi', 34, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(563, 'Karur', 34, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(564, 'Ooty', 34, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(565, 'Hosur', 34, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(566, 'Nagercoil', 34, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(567, 'Kanchipuram ', 34, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(568, 'Kumarapalayam', 34, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(569, 'Karaikudi', 34, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(570, 'Neyveli', 34, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(571, 'Cuddalore', 34, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(572, 'Kumbakonam', 34, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(573, 'Tiruvannamalai', 34, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(574, 'Kolkata', 39, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(575, 'Asansol', 39, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(576, 'Siliguri', 39, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(577, 'Durgapur', 39, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(578, 'Bardhaman', 39, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(579, 'English Bazar	', 39, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(580, 'Baharampur', 39, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(581, 'Habra', 39, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(582, 'Jalpaiguri	', 39, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(583, 'Kharagpur', 39, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(584, 'Shantipur', 39, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(585, 'Dankuni', 39, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(586, 'Dhulian', 39, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(587, 'Ranaghat', 39, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(588, 'Haldia', 39, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(589, 'Raiganj', 39, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(590, 'Krishnanagar', 39, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(591, 'Nabadwip', 39, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(592, 'Medinipur', 39, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(593, 'Balurghat', 39, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(594, 'Dakshin Dinajpur	', 39, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(595, 'Paschim Medinipur	', 39, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(596, 'Nadia', 39, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(597, 'Uttar Dinajpur	', 39, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(598, 'Hooghly	', 39, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(599, 'Murshidabad', 39, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(600, 'Malda', 39, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(601, 'Bardhaman', 39, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(602, 'Bardhaman', 39, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(603, 'Bokaro', 20, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(604, 'Chatra', 20, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(605, 'Deoghar', 20, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(606, 'Dhanbad', 20, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(607, 'Dumka', 20, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(608, 'Garhwa', 20, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(609, 'Giridih', 20, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(610, 'Godda', 20, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(611, 'Gumla', 20, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(612, 'Hazaribagh', 20, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(613, 'Jamtara', 20, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(614, 'Khunti', 20, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(615, 'Koderma', 20, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(616, 'Latehar', 20, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(617, 'Lohardaga', 20, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(618, 'Pakur', 20, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(619, 'Palamu', 20, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(620, 'West Singhbhum', 20, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(621, 'East Singhbhum', 20, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(622, 'Ramgarh', 20, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(623, 'Ranchi', 20, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(624, 'Sahibganj', 20, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(625, 'Saraikela-Kharsawan', 20, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(626, 'Simdega', 20, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(627, 'Anandapur ', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(628, 'Anugul', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(629, 'Asika', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(630, 'Athagad', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(631, 'Athmallik', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(632, 'Balagoda', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(633, 'Balangir', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(634, 'Baleshwar', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(635, 'Balimela', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(636, 'Balugaon', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(637, 'Banapur', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(638, 'Bangura', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(639, 'Banki', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(640, 'Barapali', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(641, 'Barbil', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(642, 'Bargarh', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(643, 'Baripada', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(644, 'Basudebpur', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(645, 'Baudhgarh', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(646, 'Belagachhia', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(647, 'Bellaguntha', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(648, 'Belpahar', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(649, 'Bhadrak', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(650, 'Bhanjanagar', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(651, 'Bhawanipatna', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(652, 'Bhuban', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(653, 'Bhubaneswar', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(654, 'Binika', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(655, 'Biramitrapur', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(656, 'Bishama', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(657, 'Brahmapur', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(658, 'Brajarajnagar', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(659, 'Buguda', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(660, 'Byasanagar', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(661, 'Champua', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(662, 'Chandapur', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(663, 'Chandili', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(664, 'Charibatia', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(665, 'Chhatrapur', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(666, 'Chikiti', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(667, 'Cuttack', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(668, 'Dadhapatna', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(669, 'Daitari', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(670, 'Damanjodi', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(671, 'Debagarh', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(672, 'Dera Colliery Township ', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(673, 'Dhamanagar', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(674, 'Dhenkanal', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(675, 'Digapahandi', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(676, 'Dungamal', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(677, 'Ganjam', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(678, 'Ghantapada', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(679, 'Gopalpur', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(680, 'Gudari', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(681, 'Gunupur', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(682, 'Hatibandha', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(683, 'Hinjilicut', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(684, 'Jagatsinghapur', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(685, 'Jajapur', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(686, 'Jaleswar', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(687, 'Jatani', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(688, 'Jeypur', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(689, 'Jharsuguda', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(690, 'Jhumpura', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(691, 'Joda', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(693, 'Kamakshyanagar', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(694, 'Kantabanji', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(695, 'Kantilo', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(696, 'Karanjia', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(697, 'Kashinagara', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(698, 'Kavisurjyanagar', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(699, 'Kendrapara', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(700, 'Kendujhar', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(701, 'Kesinga', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(702, 'Khaliapali', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(703, 'Khalikote', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(704, 'Khandapada', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(705, 'Khariar', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(706, 'Khatiguda', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(707, 'Khordha', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(708, 'Kochinda', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(709, 'Kodala', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(710, 'Konark', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(711, 'Koraput', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(712, 'Kotpad', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(713, 'Lathikata', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(714, 'Makundapur', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(715, 'Malkangiri', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(716, 'Mukhiguda', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(717, 'Nabarangapur', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(718, 'Nalco', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(719, 'Nayagarh', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(720, 'Nilagiri', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(721, 'Nimapada', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(722, 'Nuapatna', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(723, 'Padmapur', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(724, 'Panposh', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(725, 'Paradip', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(726, 'Parlakhemundi', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(727, 'Patnagarh', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(728, 'Pattamundai', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(729, 'Phulabani', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(730, 'Pipili', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(731, 'Polasara', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(732, 'Pratapsasan', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(733, 'Puri', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(734, 'Purusottampur', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(735, 'Rairangpur', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(736, 'Rairangpur', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(737, 'Rairangpur', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(739, 'Rayagada', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(740, 'Redhakhol', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(741, 'Rengali', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(742, 'Sambalpur', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(743, 'Sonapur', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(744, 'Soro', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(745, 'Sunabeda', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(746, 'Sundargarh', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(747, 'Surada', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(748, 'Talcher', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(749, 'Tarbha', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(750, 'Tensa', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(751, 'Tensa', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(752, 'Udala', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(753, 'Umarkote', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(754, 'Agartala', 36, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(755, 'Amarpur', 36, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13');
INSERT INTO `cities` (`city_id`, `city_name`, `state_id`, `status`, `updated`, `created`) VALUES
(756, 'Ambassa', 36, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(757, 'Badharghat', 36, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(758, 'Belonia', 36, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(759, 'Dharmanagar', 36, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(760, 'Gakulnagar', 36, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(761, 'Gandhigram', 36, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(762, 'Indranagar', 36, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(763, 'Jogendranagar', 36, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(764, 'Kailasahar', 36, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(765, 'Kamalpur', 36, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(766, 'Kanchanpur', 36, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(767, 'Khowai', 36, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(768, 'Kumarghat', 36, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(769, 'Kunjaban', 36, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(770, 'Narsingarh', 36, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(771, 'Pratapgarh', 36, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(772, 'Ranirbazar', 36, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(773, 'Sabroom', 36, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(774, 'Sonamura', 36, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(775, 'Teliamura', 36, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(776, 'Udaipur', 36, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(777, 'Andro', 6, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(778, 'Bishnupur', 6, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(779, 'Heirok', 6, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(780, 'Imphal', 6, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(781, 'Jiribam', 6, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(782, 'Kakching', 6, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(783, 'Kakching Khunou', 6, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(784, 'Kumbi', 6, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(785, 'Kwakta', 6, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(786, 'Lamjaotongba', 6, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(787, 'Lamlai', 6, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(788, 'Lamsang', 6, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(789, 'Lilong', 6, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(790, 'Mayang Imphal', 6, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(791, 'Moirang', 6, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(792, 'Moreh', 6, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(793, 'Nambol', 6, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(794, 'Ningthoukhong', 6, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(795, 'Oinam', 6, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(796, 'Samurou', 6, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(797, 'Sekmai Bazar', 6, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(798, 'Sikhong SekmaI', 6, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(799, 'Sugnu', 6, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(800, 'Thongkhong', 6, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(801, 'Thoubal', 6, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(802, 'Wangjing', 6, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(803, 'Wangoi', 6, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(804, 'Yairipok', 6, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(805, 'Abu Road', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(806, 'Ajmer', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(807, 'Aklera', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(808, 'Alwar', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(809, 'Amet', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(810, 'Antah', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(811, 'Anupgarh', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(812, 'Asind', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(813, 'Baggar', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(814, 'Bagru', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(815, 'Bakani', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(816, 'Bali', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(817, 'Balotra', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(818, 'Bhadra', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(819, 'Banasthali', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(820, 'Bandikui', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(821, 'Banswara', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(822, 'Baran', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(823, 'Bari', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(824, 'Bari Sadr', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(825, 'Barmer', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(826, 'Basni Belima', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(827, 'Bayana', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(828, 'Beawar', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(829, 'Beejoliya Kalan', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(830, 'Begun', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(831, 'Behror', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(832, 'Bhalariya', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(833, 'Bharatpur', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(834, 'Bhawani Mandi', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(835, 'Bhilwara', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(836, 'Bhinder', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(837, 'Bhinmal', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(838, 'Bhiwadi', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(839, 'Bhusawar', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(840, 'Bidasar', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(841, 'Bikaner', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(842, 'Bilara', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(843, 'Bissau', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(844, 'Budhpura', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(845, 'Bundi', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(846, 'Chaksu', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(847, 'Chechat', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(848, 'Chhabra', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(849, 'Chhapar', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(850, 'Chhipabarod', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(851, 'Chhoti Sadri', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(852, 'Chirawa', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(853, 'Chittaurgarh', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(854, 'Chomu', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(855, 'Churu', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(856, 'Dariba', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(857, 'Dausa', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(858, 'Dausa', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(859, 'Deeg', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(860, 'Deogarh', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(861, 'Deoli', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(862, 'Deshnoke', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(863, 'Dhariawad', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(864, 'Dhaulpur', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(865, 'Didwana', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(866, 'Dungargarh', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(867, 'Dungarpur', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(868, 'Falna', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(869, 'Fatehnagar', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(870, 'Fatehpur', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(871, 'Gajsinghpur', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(872, 'Galiakot', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(873, 'Ganganagar', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(874, 'Gangapur', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(875, 'Gangapur', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(876, 'Goredi Chancha', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(877, 'Govindgarh', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(878, 'Gulabpura', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(879, 'Hanumangarh', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(880, 'Jahazpur', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(881, 'Jaipur', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(882, 'Jaisalmer', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(883, 'Jaitaran', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(884, 'Jalor', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(885, 'Jhalawar', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(886, 'Jhalrapatan', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(887, 'Jhunjhunun', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(888, 'Jobner', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(889, 'Jodhpur', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(890, 'Kaithoon', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(891, 'Kaman', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(892, 'Kanor', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(893, 'Kapasan', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(894, 'Kaprain', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(895, 'Karanpur', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(896, 'Karauli', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(897, 'Kekri', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(898, 'Keshoraipatan', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(899, 'Kesrisinghpur', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(900, 'Khairthal', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(901, 'Khandela', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(902, 'Kherli', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(903, 'Kherliganj', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(904, 'Kherwara Chhaoni', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(905, 'Khetri', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(906, 'Kishangarh', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(907, 'Kishangarh Bas ', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(908, 'Kolvi', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(909, 'Kota', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(910, 'Kotputli', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(911, 'Kuchaman City', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(912, 'Kuchera', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(913, 'Kumbhkot', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(914, 'Kumher', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(915, 'Kushalgarh', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(916, 'Lachhmangarh', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(917, 'Ladnu', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(918, 'Lakheri', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(919, 'Lalsot', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(920, 'Losal', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(921, 'Mahwa', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(922, 'Mahwa', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(923, 'Malpura', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(924, 'Mandalgarh', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(925, 'Mandawa', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(926, 'Mandawar', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(927, 'Mangrol', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(928, 'Mangrol', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(929, 'Marwar', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(930, 'Merta City', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(931, 'Modak', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(932, 'Mount Abu ', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(933, 'Mukandgarh', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(934, 'MundwÃ¡', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(935, 'Nadbai', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(936, 'Nagar', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(937, 'Nagaur', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(938, 'Nainwa', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(939, 'Nasirabad', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(940, 'Nathdwara', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(941, 'Nawa', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(942, 'Nawalgarh', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(943, 'Neem-Ka-Thana', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(944, 'Newa Talai ', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(945, 'Nimbahera', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(946, 'Niwai', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(947, 'Nohar', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(948, 'Nokha', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(949, 'Padampur', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(950, 'Pali', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(951, 'Parbatsar', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(952, 'Partapur', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(953, 'Phalodi', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(954, 'Phulera', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(955, 'Pilani', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(956, 'Pilibanga', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(957, 'Pindwara', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(958, 'Pipar City ', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(959, 'Pirawa', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(960, 'Pokaran', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(961, 'Pratapgarh', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(962, 'Pushkar', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(963, 'Raisinghnagar', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(964, 'Rajakhera', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(965, 'Rajaldesar', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(966, 'Rajgarh', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(967, 'Rajsamand', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(968, 'Ramganj Mandi', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(969, 'Ramgarh', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(970, 'Rani', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(971, 'Ratangarh', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(972, 'Ratannagar', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(973, 'Rawatbhata', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(974, 'Rawatsar', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(975, 'Reengus', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(976, 'Rikhabdeo', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(977, 'Sadri', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(978, 'Sadulshahar', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(979, 'Sagwara', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(980, 'Salumbar', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(981, 'Sambhar', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(982, 'Sanchore', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(983, 'Sangaria', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(984, 'Sangod', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(985, 'Sardarshahar', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(986, 'Sarwar', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(987, 'Satalkheri', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(988, 'Sawai Madhopur', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(989, 'Shahpura', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(990, 'Sheoganj', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(991, 'Sikar', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(992, 'Sirohi', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(993, 'Sojat', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(994, 'Sri Madhopur', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(995, 'Sujangarh', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(996, 'Suket', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(997, 'Sumerpur', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(998, 'Surajgarh', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(999, 'Takhatgarh', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1000, 'Taranagar', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1001, 'Tijara', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1002, 'Todabhim', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1003, 'Todaraisingh', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1004, 'Todra', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1005, 'Tonk', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1006, 'Udaipur', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1007, 'Udaipurwati', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1008, 'Udpura', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1009, 'Uniara', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1010, 'Vijainagar', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1011, 'Viratnagar', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1012, 'Weir', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1013, 'Adalaj', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1014, 'Adityana', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1015, 'Ahmadabad', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1016, 'Alang', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1017, 'Ambaji', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1018, 'Ambaliyasan', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1019, 'Amreli', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1020, 'Anand', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1021, 'Andada', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1022, 'Anjar', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1023, 'Anklav', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1024, 'ANKLESHWAR', 16, 1, '2018-08-16 14:01:51', '2018-02-12 21:01:13'),
(1025, 'Antaliya', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1026, 'Arambhada', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1027, 'Atul', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1028, 'Bagasara', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1029, 'Balasinor', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1030, 'Bantwa', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1031, 'Bardoli', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1032, 'Bavla', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1033, 'Bhachau', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1034, 'Bhanvad', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1035, 'Bharuch', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1036, 'Bhavnagar', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1037, 'Bhayavadar', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1038, 'Bhuj', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1039, 'Bilimora', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1040, 'Bodeli', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1041, 'Boriavi', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1042, 'Borsad', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1043, 'Botad', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1044, 'Chaklasi', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1045, 'Chala', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1046, 'Chalala', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1047, 'Chalthan', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1048, 'Chanasma', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1049, 'Chanod', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1050, 'Chhatral', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1051, 'Chhota Udaipur', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1052, 'Chikhli', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1053, 'Chiloda(Naroda)', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1054, 'Chorvad', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1055, 'Dabhoi', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1056, 'Dakor', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1057, 'Damnagar', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1058, 'Deesa', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1059, 'Dehgam', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1060, 'Devgadbaria', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1061, 'Devsar', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1062, 'Dhandhuka', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1063, 'Dhanera', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1064, 'Dharampur', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1065, 'Dhola', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1066, 'Dholka', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1067, 'Dhoraji', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1068, 'Dhrangadhra', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1069, 'Dhrol', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1070, 'Digvijaygram', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1071, 'Dohad', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1072, 'Dungra', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1073, 'Dwarka', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1074, 'Gadhada', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1075, 'Gandevi', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1076, 'Gandhidham', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1077, 'Gandhinagar', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1078, 'Gariadhar', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1079, 'Ghogha', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1080, 'Godhra', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1081, 'Gondal', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1082, 'Hajira', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1083, 'Halol', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1084, 'Halvad', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1085, 'Harij', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1086, 'Himatnagar', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1087, 'Idar', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1088, 'Jafrabad', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1089, 'Jambusar', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1090, 'Jamjodhpur', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1091, 'Jasdan', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1092, 'Jetpur Navagadh', 16, 1, '2019-02-12 14:35:56', '2018-02-12 21:01:13'),
(1093, 'Jhalod', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1094, 'Junagadh', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1095, 'Kadi', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1096, 'Kadodara', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1097, 'Kalavad', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1098, 'Kalol', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1099, 'Kandla', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1100, 'Kanodar', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1101, 'Kapadvanj', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1102, 'Karjan', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1103, 'Katpar', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1104, 'Keshod', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1105, 'Kevadiya', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1106, 'Khambhalia', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1107, 'Khambhat', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1108, 'Kharaghoda', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1109, 'Kheda', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1110, 'Khedbrahma', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1111, 'Kheralu', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1112, 'Kodinar', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1113, 'Kosamba', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1114, 'Kutiyana', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1115, 'Lathi', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1116, 'Limbdi', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1117, 'Limla', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1118, 'Lunawada', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1119, 'Mahesana', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1120, 'Mahudha', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1121, 'Mahuva', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1122, 'Mahuvar', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1123, 'Malpur', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1124, 'Manavadar', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1125, 'Mandvi', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1126, 'Mangrol', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1127, 'Mansa', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1128, 'Meghraj', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1129, 'Mehmedabad', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1130, 'Mithapur', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1131, 'Morvi', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1132, 'Mundra', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1133, 'Nadiad', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1134, 'Nandej', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1135, 'Navsari', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1136, 'Ode', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1137, 'Okha Port ', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1138, 'Paddhari', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1139, 'Padra', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1140, 'Palanpur', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1141, 'Palej', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1142, 'Palitana', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1143, 'Pardi', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1144, 'Parnera', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1145, 'Patan', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1146, 'Petlad', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1147, 'Porbandar', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1148, 'Prantij', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1149, 'Radhanpur', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1150, 'Rajkot', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1151, 'Rajpipla', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1152, 'Rajula', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1153, 'Ranavav', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1154, 'Rapar', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1155, 'Salaya', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1156, 'Sanand', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1157, 'Santrampur', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1158, 'Sarigam', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1159, 'Savarkundla', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1160, 'Sayan', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1161, 'Sidhpur', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1162, 'Sihor', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1163, 'Sikka', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1164, 'Songadh', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1165, 'Surajkaradi', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1166, 'Surat', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1167, 'Talaja', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1168, 'Talod', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1169, 'Thangadh', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1170, 'Tharad', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1171, 'Ukai', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1172, 'Umbergaon', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1173, 'Umreth', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1174, 'Una', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1175, 'Unjha', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1176, 'Upleta', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1177, 'Vadia', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1178, 'Vadnagar', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1179, 'Vadodara', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1180, 'Vaghodia', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1181, 'Valsad', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1182, 'Vanthali', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1183, 'Vapi', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1184, 'Vartej', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1185, 'Vasna Borsad', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1186, 'Veraval', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1187, 'Vijapur', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1188, 'Viramgam', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1189, 'Visavadar', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1190, 'Visnagar', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1191, 'Vyara', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1192, 'Wadhwan', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1193, 'Wankaner', 16, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1194, 'New Delhi', 14, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1195, 'Central Delhi', 14, 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1196, 'Baghmara', 26, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1197, 'CherrapunjeeÂ ', 26, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1198, 'Jowai', 26, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1199, 'Lawsohtun', 26, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1200, 'Madanriting', 26, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1201, 'Mairang', 26, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1202, 'Mawlai', 26, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1203, 'shilong', 26, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1204, 'Mawpat', 26, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1205, 'Nongkseh', 26, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1206, 'Nongmynsong', 26, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1207, 'Nongpoh', 26, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1208, 'Nongstoin', 26, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1209, 'Nongthymmai', 26, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1210, 'Pynthormukhrah', 26, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1211, 'Resubelpara', 26, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1212, 'Tura', 26, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1213, 'Umlyngka', 26, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1214, 'Umpling', 26, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1215, 'Umroi', 26, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1216, 'Williamnagar', 26, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1217, 'Aizawl', 27, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1218, 'Champhai', 27, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1219, 'Kolosib', 27, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1220, 'Lawngtlai', 27, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1221, 'Lunglei', 27, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1222, 'Saiha', 27, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1223, 'Serchhip', 27, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1224, 'Chumukedima', 28, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1225, 'Dimapur', 28, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1226, 'Kohima', 28, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1227, 'Mokokchung', 28, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1228, 'Mon', 28, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1229, 'Tuensang', 28, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1230, 'Wokha', 28, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1231, 'Zunheboto', 28, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1232, 'Gangtok', 33, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1233, 'Jorethang', 33, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1234, 'Namchi', 33, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1235, 'Rangpo', 33, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1236, 'Adoni', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1237, 'Amalapuram', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1238, 'Amudalavalasa', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1239, 'Anakapalle', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1240, 'Anantapur', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1241, 'Badvel', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1242, 'Banaganapalle', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1243, 'Bapatla', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1244, 'Bethamcherla', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1245, 'BhÄ«mavaram', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1246, 'Bheemunipatnam', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1247, 'Bobbili', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1248, 'Chilakalurupet', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1249, 'Chirala', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1250, 'Chittoor', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1251, 'Chodavaram', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1252, 'Dharmavaram', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1253, 'Dhone (Dronachalam)', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1254, 'Eluru', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1255, 'Giddaluru', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1256, 'Gooty', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1257, 'Gudivada', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1258, 'Gudur', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1259, 'Guntakal', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1260, 'Guntur', 7, 1, '2018-04-04 15:34:50', '2018-02-12 21:01:13'),
(1261, 'Hindupur', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1262, 'Ibrahimpatnam', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1263, 'Ichchapuram', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1264, 'Jaggayyapeta', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1265, 'Jammalamadugu', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1266, 'Kadapa (Cuddapah)', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1267, 'Kadiri', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1268, 'kakinada', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1269, 'Kalyandurg', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1270, 'Kandukur', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1271, 'Kanigiri', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1272, 'Kavali', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1273, 'Kondapalle', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1274, 'Kovvur', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1275, 'Kuppam', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1276, 'Kurnool', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1277, 'Macherla', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1278, 'Machilpatnam', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1279, 'Madanapalle', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1280, 'Mandapeta', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1281, 'Markapur', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1282, 'Nagari', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1283, 'Nandyal', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1284, 'Narasannapeta', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1285, 'Narasaraopet', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1286, 'Narsapur', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1287, 'Narsipatnam', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1288, 'Nellimarla', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1289, 'Nellore', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1290, 'Nidadavole', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1291, 'Nuzvid', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1292, 'Ongole', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1293, 'Palacole', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1294, 'Palakonda', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1295, 'Palamaner', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1296, 'Palasa', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1297, 'Pamur', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1298, 'Parvatipuram', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1299, 'Payakaraopeta', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1300, 'Pedana', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1301, 'Peddapuram', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1302, 'PidugurÄlla', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1303, 'PÄ«leru', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1304, 'Podili', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1305, 'Pitapuram', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1306, 'Ponnur', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1307, 'Proddatur', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1308, 'Pulivendla', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1309, 'Punganuru', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1310, 'Puttur', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1311, 'Rajahmundry', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1312, 'Rajampet', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1313, 'Ramachandrapuram', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1314, 'Rayachoti', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1315, 'Rayadurg', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1316, 'Razam', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1317, 'Renigunta', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1318, 'Repalle', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1319, 'Salur', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1320, 'Samalkota', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1321, 'Sattenapalle', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1322, 'Srikakulam', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1323, 'Srikalahasti', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1324, 'Srisailam', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1325, 'Sullurpeta', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1326, 'Tadepalligudem', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1327, 'Tadpatri', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1328, 'Tanuku', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1329, 'Tekkali', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1330, 'Tenali', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1331, 'Tirupati', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1332, 'Tuni', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1333, 'Uravakonda', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1334, 'Venkatagiri', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1335, 'Vijayawada', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1336, 'Vinnamala', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1337, 'Vinukonda', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1338, 'Vishakhapatnam', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1339, 'Vizianagaram', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1340, 'Yelamanchili', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1341, 'Emmiganuru', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1342, 'Yerraguntla', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1343, 'hyderabad', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1344, 'amaravati', 7, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1345, 'Addur', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1346, 'Adityapatna', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1347, 'Adyar', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1348, 'Afzalpur', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1349, 'Aland', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1350, 'Alevoor', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1351, 'Allipura', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1352, 'Alnavar', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1353, 'Alur', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1354, 'Amaravathi', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1355, 'Ambikanagara', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1356, 'Aminagad', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1357, 'Anekal', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1358, 'Ankola', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1359, 'Annigeri', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1360, 'Arasinakunte', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1361, 'Arkalgud', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1362, 'Arkula', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1363, 'Arsikere', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1364, 'Athni', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1365, 'Attibele', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1366, 'Aurad', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1367, 'Aversa', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1368, 'Bada', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1369, 'Badagabettu', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1370, 'Badagaulipady', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1371, 'Badami', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1372, 'Bagalkot', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1373, 'Bagepalli', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1374, 'Bail Hongal', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1375, 'Bajpe', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1376, 'Bangalore', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1377, 'Bangarapet', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1378, 'Bankapura', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1379, 'Bannur', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1380, 'Bantval', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1381, 'Basavakalyan', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1382, 'Basavana Bagevadi', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1383, 'Basettihalli', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1384, 'Belgaum', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1385, 'Belgaum Cantonment', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1386, 'Bellary', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1387, 'Belma', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1388, 'Beltangadi', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1389, 'Belur', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1390, 'Belvata', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1391, 'Benakanahalli', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1392, 'Bethamangala', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1393, 'Bhadravati', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1394, 'Bhalki', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1395, 'Bhatkal', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1396, 'Bhimarayanagudi', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1397, 'Bhogadi', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1398, 'Bidadi', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1399, 'Bidar', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1400, 'Bijapur', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1401, 'Bilgi', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1402, 'Birur', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1403, 'Bobruwada', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1404, 'Bommasandra', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1405, 'Bondathila', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1406, 'Byadgi', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1407, 'Byrapura', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1408, 'Challakere', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1409, 'Chamarajanagar', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1410, 'Channagiri', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1411, 'Channapatna', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1412, 'Channarayapatna', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1413, 'Chelur', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1414, 'Chikkaballapura', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1415, 'Chikkabanavara', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1416, 'Chikkabidarakallu', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1417, 'Chikkajajur', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1418, 'Chiknayakanhalli', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1419, 'Chikodi', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1420, 'Chincholi', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1421, 'Chintamani', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1422, 'Chitapur', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1423, 'Chitgoppa', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1424, 'Chitradurga', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1425, 'Dandeli', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1426, 'Davanagere', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1427, 'Devadurga', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1428, 'Devanahalli', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1429, 'Doddaballapura', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1430, 'Dommasandra', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1431, 'Donimalai Township', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1432, 'Elwala', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1433, 'Gadag-Betigeri ', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1434, 'Gajendragarh', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1435, 'Gangawati ', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1436, 'Gargeswari', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1437, 'Gauribidanur', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1438, 'Gogipeth', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1439, 'Gokak', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1440, 'Gokak Falls', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1441, 'Gonikoppal', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1442, 'Gubbi', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1443, 'Gudibanda', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1444, 'Gudur', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1445, 'Gulbarga', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1446, 'Guledgudda', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1447, 'Gundlupet', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1448, 'Gurmatkal', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1449, 'Haliyal', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1450, 'Hangal', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1451, 'Hanur', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1452, 'Haralahalli', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1453, 'Haralapura', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1454, 'Harapanahalli', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1455, 'Harekala', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1456, 'Harihar', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1457, 'Hassan', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1458, 'Hatti', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1459, 'Hatti Gold Mines', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1460, 'Haveri', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1461, 'Hebbagodi', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1462, 'Heggadadevankote', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13');
INSERT INTO `cities` (`city_id`, `city_name`, `state_id`, `status`, `updated`, `created`) VALUES
(1463, 'Hindalgi', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1464, 'Hinkal', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1465, 'Hirekerur', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1466, 'Hiriyur', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1467, 'Holalkere', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1468, 'Hole Narsipur', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1469, 'Homnabad ', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1470, 'Honavar ', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1471, 'Hongalli', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1472, 'Honnali', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1473, 'Hoovina Hadagalli', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1474, 'Hosakote ', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1475, 'Hosanagara', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1476, 'Hosdurga', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1477, 'Hospet', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1478, 'Hubli-Dharwad', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1479, 'Hukeri', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1480, 'Huliyar', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1481, 'Hunasamaranahalli', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1482, 'Hungund', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1483, 'Hunsur', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1484, 'Hutagalli', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1485, 'Ilkal', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1486, 'Indi', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1487, 'Jagalur', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1488, 'Jali', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1489, 'Jamkhandi', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1490, 'Jevargi', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1491, 'Jigani', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1492, 'Jog Karga', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1493, 'Kadakola', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1494, 'Kadigenahalli', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1495, 'Kadur', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1496, 'Kadwad', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1497, 'Kairangala', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1498, 'Kakati', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1499, 'Kalghatgi', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1500, 'Kamalapuram', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1501, 'Kamalnagar', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1502, 'Kamatgi ', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1503, 'Kampli', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1504, 'Kanakapura', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1505, 'Kangrali', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1506, 'Kangrali', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1507, 'Kariyangala', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1508, 'Karkal', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1509, 'Karwar', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1510, 'Kawalettu', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1511, 'Kenjar', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1512, 'Kerur', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1513, 'Khanapur', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1514, 'Kodiyal', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1515, 'Kolambe', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1516, 'Kolar', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1517, 'Kollegal', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1518, 'Konaje', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1519, 'Konappana Agrahara', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1520, 'Konnur', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1521, 'Koorgalli', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1522, 'Koppa', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1523, 'Koppal', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1524, 'Korangrapady', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1525, 'Koratagere', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1526, 'Kotekara', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1527, 'Koteshwar', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1528, 'Kotturu', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1529, 'Krishnarajanagara', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1530, 'Krishnarajpet', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1531, 'Kudachi', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1532, 'Kudligi', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1533, 'Kudremukh', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1534, 'Kudur', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1535, 'Kumbalagodu', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1536, 'Kumta', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1537, 'Kundapura ', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1538, 'Kundgol', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1539, 'Kunigal', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1540, 'Kurekuppa', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1541, 'Kurgunta', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1542, 'Kushalnagar', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1543, 'Kushtagi', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1544, 'Kuvettu', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1545, 'Lakshmeshwar', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1546, 'Lingsugur', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1547, 'Londa', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1548, 'Machche', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1549, 'Madanaiyakanahalli', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1550, 'Maddur', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1551, 'Madhugiri', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1552, 'Madikeri', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1553, 'Magadi', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1554, 'Mahalingpur', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1555, 'Malavalli', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1556, 'Mallar', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1557, 'Malur', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1558, 'Mandya', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1559, 'Mangalore', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1560, 'Manipura', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1561, 'Manjanady', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1562, 'Manvi', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1563, 'Maragondahalli', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1564, 'Matadakurubarahatti', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1565, 'Mellahalli', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1566, 'Molakalmuru', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1567, 'Moodabettu', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1568, 'Mouje Nandgad', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1569, 'Mudalgi', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1570, 'Mudbidri', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1571, 'Muddebihal', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1572, 'Mudgal', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1573, 'Mudhol', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1574, 'Mudigere', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1575, 'Muduperar', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1576, 'Mudushedde', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1577, 'Mulbagal', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1578, 'Mulgund', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1579, 'Mulki', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1580, 'Mulur', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1581, 'Mundargi', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1582, 'Mundgod', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1583, 'Munirabad', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1584, 'Munnur', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1585, 'Mutga', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1586, 'Mysore', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1587, 'Nadsal', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1588, 'Nagamangala', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1589, 'Nanjangud', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1590, 'Narasimharajapura', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1591, 'Naregal', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1592, 'Nargund', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1593, 'Narikombu', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1594, 'Navalgund', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1595, 'Navoor', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1596, 'Neermarga', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1597, 'Nelamangala', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1598, 'Nipani', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1599, 'Pandavapura', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1600, 'Pavagada', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1601, 'Peeranwadi', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1602, 'Piriyapatna', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1603, 'Pudu', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1604, 'Puttur', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1605, 'Rabkavi Banhatti', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1606, 'Raichur', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1607, 'Ramanagara', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1608, 'Ramdurg', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1609, 'Ranibennur', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1610, 'Raybag', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1611, 'Robertson Pet', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1612, 'Ron', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1613, 'Sadalgi', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1614, 'Sagar', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1615, 'Saidapur', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1616, 'Sajipanadu', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1617, 'Sakleshpur', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1618, 'Saligram', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1619, 'Sambra', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1620, 'Sandur', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1621, 'Sankeshwar', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1622, 'Sanoor', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1623, 'Saragur', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1624, 'Sarjapura', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1625, 'Satyamangala', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1626, 'Saundatti-Yellamma', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1627, 'Savanur', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1628, 'Sedam', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1629, 'Shahabad', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1630, 'Shahabad ', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1631, 'Shahpur', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1632, 'Shaktinagar', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1633, 'Shiggaon', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1634, 'Shikarpur', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1635, 'Shimoga', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1636, 'Shirhatti', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1637, 'Shorapur', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1638, 'Shravanabelgola', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1639, 'Shrirangapattana', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1640, 'Siddapur', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1641, 'Sidlaghatta', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1642, 'Sindgi', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1643, 'Sindhnur', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1644, 'Sira', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1645, 'Siralkoppa', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1646, 'Sirsi', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1647, 'Siruguppa', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1648, 'Someshwar', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1649, 'Someshwar', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1650, 'Sorab', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1651, 'Sringeri', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1652, 'Srinivaspur', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1653, 'Srirampura', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1654, 'Sulebhavi', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1655, 'Sulya', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1656, 'Talapady', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1657, 'Talikota', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1658, 'Talipady', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1659, 'Tarikere', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1660, 'Tattilli', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1661, 'Tekkalakote', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1662, 'Tenkanidyoor', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1663, 'Terdal', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1664, 'Thokur', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1665, 'Thumbe', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1666, 'Tiptur', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1667, 'Tirthahalli', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1668, 'Tirumakudal Narsipur', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1669, 'Tonse East', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1670, 'Tumkur', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1671, 'Turuvekere', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1672, 'Udupi', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1673, 'Udyavara', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1674, 'Ullal', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1675, 'Uppinangady', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1676, 'Vaddu', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1677, 'Varamballi', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1678, 'Venkatapura', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1679, 'Vijayapura', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1680, 'Virajpet', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1681, 'Vittal', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1682, 'Wadi', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1683, 'Yadgir', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1684, 'Yelandur', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1685, 'Yelbarga', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1686, 'Yellapur', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1687, 'Yellur', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1688, 'Yenagudde', 21, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1689, 'Adoor', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1690, 'Akathiyoor', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1691, 'Alappuzha', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1692, 'Ancharakandy', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1693, 'Arookutty', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1694, 'Aroor', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1695, 'Attingal', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1696, 'Avinissery', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1697, 'Bangramanjeshwar', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1698, 'Chala', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1699, 'Chalakudy', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1700, 'Changanassery', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1701, 'Chelora', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1702, 'Chendamangalam', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1703, 'Chengannur', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1704, 'Cherthala', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1705, 'Cheruthazham', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1706, 'Chevvoor', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1707, 'Chittur-Thathamangalam', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1708, 'Chockli', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1709, 'Erattupetta', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1710, 'Guruvayoor', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1711, 'Hosabettu', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1712, 'Idukki', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1713, 'Irinjalakuda', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1714, 'Iriveri', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1715, 'Kadirur', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1716, 'Kalliasseri', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1717, 'Kalpetta', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1718, 'Kanhangad', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1719, 'Kanhirode', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1720, 'Kanjikkuzhi', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1721, 'Kannadiparamba', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1722, 'Kannapuram', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1723, 'Kannur', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1724, 'Kasaragod', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1725, 'Kayamkulam', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1726, 'Kochi', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1727, 'Kodungallur', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1728, 'Kolazhy', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1729, 'Kollam', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1730, 'Koothuparamba', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1731, 'Koratty', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1732, 'Kothamangalam', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1733, 'Kottayam', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1734, 'Kottayam-Malabar', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1735, 'Kozhikode', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1736, 'Kunnamkulam', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1737, 'Malappuram', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1738, 'Manjeshwar', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1739, 'Marathakkara', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1740, 'Mattannur', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1741, 'Mavelikkara', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1742, 'Mavilayi', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1743, 'Mavoor', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1744, 'Munderi', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1745, 'Muvattupuzha', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1746, 'Narath', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1747, 'Nedumangad', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1748, 'Nenmenikkara', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1749, 'Neyyattinkara', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1750, 'Ottappalam', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1751, 'Paduvilayi', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1752, 'Palai', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1753, 'Palakkad', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1754, 'Palissery', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1755, 'Panniyannur', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1756, 'Panoor', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1757, 'Pappinisseri', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1758, 'Paravoor', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1759, 'Pathanamthitta', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1760, 'Pathiriyad', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1761, 'Pattiom', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1762, 'Payyannur', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1763, 'Peralasseri', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1764, 'Peringathur', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1765, 'Perinthalmanna', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1766, 'Perumbavoor', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1767, 'Pinarayi', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1768, 'Ponnani', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1769, 'Pottore', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1770, 'Punalur', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1771, 'Puranattukara', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1772, 'Puthukkad', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1773, 'Quilandy', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1774, 'Shoranur', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1775, 'Taliparamba', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1776, 'Thiruvalla', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1777, 'Thiruvananthapuram', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1778, 'Thodupuzha', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1779, 'Thrissur', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1780, 'Tirur', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1781, 'Udma', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1782, 'Vadakara', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1783, 'Vaikom', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1784, 'Vallachira', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1785, 'Varam', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1786, 'Varkala', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1787, 'Yanam', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1788, 'Thimmanaickenpalayam', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1789, 'Abishegapakkam', 30, 1, '2019-04-03 18:17:46', '2018-02-12 21:01:13'),
(1790, 'Tavalakuppam', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1791, 'Purnankuppam', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1792, 'Ariankuppam', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1793, 'Manavely', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1794, 'Ozhukarai', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1795, 'Villianur', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1796, 'Manalipet', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1797, 'Chettipet', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1798, 'Suthukeny', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1799, 'Pudukuppam', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1800, 'Katteri', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1801, 'Kuppam', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1802, 'Thethampakkam', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1803, 'Kodathur', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1804, 'Kunichampet', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1805, 'Mannadipet', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1806, 'Vadanur', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1807, 'Sorapet', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1808, 'Vambupet', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1809, 'Sellipattu', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1810, 'Sannasikuppam', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1811, 'Kalithirthalkuppam', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1812, 'Madagadipet', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1813, 'Thirubuvanai', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1814, 'Thiruvandarkoil', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1815, 'Sedarapet', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1816, 'Karasur', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1817, 'Thuthipet', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1818, 'Thondamanatham', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1819, 'Ramanathapuram', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1820, 'Pillaiyarkuppam', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1821, 'Koodapakkam', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1822, 'Ulaivaikkal', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1823, 'Oussudu', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1824, 'Arugur', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1825, 'Kizhur', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1826, 'Sathamangalam', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1827, 'Mangalam', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1828, 'Uruvaiyar', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1829, 'Thirukanji', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1830, 'Perungalur', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1831, 'Manakuppam', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1832, 'Villianur', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1833, 'Odiampet', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1834, 'Bahour', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1835, 'Madukkarai', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1836, 'Kariamanickam', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1837, 'Eripakkam', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1838, 'Embalam', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1839, 'Korkadu', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1840, 'Karikalampakkam', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1841, 'Pandasozhanur', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1842, 'Nettapakkam', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1843, 'Panayadikuppam', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1844, 'Aranganur', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1845, 'Kirumampakkam', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1846, 'Pillaiarkuppam', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1847, 'Seliamedu', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1848, 'Kaduvanur', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1849, 'Karaiyambuthur', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1850, 'Manamedu', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1851, 'Irulansandy', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1852, 'Bahour', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1853, 'Manapattu', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1854, 'Outchimedu', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1855, 'Parikalpet', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1856, 'Mahe', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1857, 'Karaikal', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1858, 'Varichikudy', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1859, 'Poovam', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1860, 'Thiruvettakudy', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1861, 'Varichikudy', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1862, 'Kottucherry', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1863, 'Vizhidiur', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1864, 'Kizhamanai', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1865, 'Neravy', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1866, 'Keezhaiyur', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1867, 'Polagam', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1868, 'Vanjiur', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1869, 'Thirumalairayanpattinam', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1870, 'Thirunallar', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1871, 'Kurumbagaram', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1872, 'Puthakudy', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1873, 'Ponbethy', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1874, 'Nedungadu', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1875, 'Melakasakudy', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1876, 'Ambagarathur', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1877, 'Nallazhundur', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1878, 'Thevamapuram', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1879, 'Sorakudy', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1880, 'Subrayapuram', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1881, 'Keezhavoor', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1882, 'Thirunallar', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1883, 'Thennankudy', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1884, 'Sethur', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1885, 'Sellur', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1886, 'Pettai', 30, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1887, 'Bhimpore', 13, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1888, 'Dadhel', 13, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1889, 'Daman', 13, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1890, 'Diu', 13, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1891, 'Dunetha', 13, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1892, 'Kachigam ', 13, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1893, 'Kadaiya', 13, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1894, 'Marwad', 13, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1895, 'Dadra', 12, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1896, 'Masat', 12, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1897, 'Naroli', 12, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1898, 'Rakholi', 12, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1899, 'Rakholi', 12, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1900, 'Samarvarni', 12, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1901, 'SilvassaÂ ', 12, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1902, 'Achampet', 35, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1903, 'Armur', 35, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1904, 'Asifabad', 35, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1905, 'Badepalle', 35, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1906, 'Banswada', 35, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1907, 'Bellampalle', 35, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1908, 'Bhadrachalam', 35, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1909, 'Bhainsa', 35, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1910, 'BhongÄ«r', 35, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1911, 'Bhupalpalle', 35, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1912, 'Bodhan', 35, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1913, 'Bollaram', 35, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1914, 'ChennÅ«r', 35, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1915, 'Devarkonda', 35, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1916, 'Farrukhnagar', 35, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1917, 'Gadwal', 35, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1918, 'Gajwel', 35, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1919, 'Ghatkesar', 35, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1920, 'Hyderabad', 35, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1921, 'Jagtial', 35, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1922, 'Jangaon', 35, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1923, 'Kothapet', 35, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1924, 'Kalwakurthy', 35, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1925, 'Kamareddy', 35, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1926, 'Karimnagar', 35, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1927, 'Khammam', 35, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1928, 'Kodad', 35, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1929, 'Koratla', 35, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1930, 'Kottagudem', 35, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1931, 'Kyathampalle', 35, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1932, 'Madhira', 35, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1933, 'Mahabubabad', 35, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1934, 'Mahbubnagar', 35, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1935, 'Mancherial', 35, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1936, 'Mandamarri', 35, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1937, 'Manuguru', 35, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1938, 'Medak', 35, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1939, 'Medchal', 35, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1940, 'Metpalle', 35, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1941, 'Miryalguda', 35, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1942, 'NagarÂ Karnul', 35, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1943, 'Nakrekal', 35, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1944, 'Nalgonda', 35, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1945, 'Peddapalle', 35, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1946, 'Narayanpet', 35, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1947, 'Nirmal', 35, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1948, 'Nizamabad', 35, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1949, 'Palwancha', 35, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1950, 'Ramagundam', 35, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1951, 'Sadasivpet', 35, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1952, 'SangÄreddy', 35, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1953, 'Sarapaka', 35, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1954, 'Sathupalle', 35, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1955, 'Siddipet', 35, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1956, 'Singapur', 35, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1957, 'Sirsilla', 35, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1958, 'Yellandu', 35, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1959, 'Warangal', 35, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1960, 'Wanaparthy', 35, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1961, 'Zahirabad', 35, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1962, 'Gurgaon', 17, 1, '2018-05-11 18:02:16', '2018-02-12 21:01:13'),
(1963, 'dispur', 9, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1964, 'dispur', 9, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1966, 'Lucknow', 37, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1967, 'Karnal', 17, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1968, 'Penram', 15, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1969, 'CURCHOREM', 15, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1970, 'Panji', 15, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1971, 'Candolim', 15, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1972, 'GUWAHATI', 9, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1973, 'Faridabad', 17, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1974, 'GURUGRAM', 41, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1975, 'Kerala', 22, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1976, 'Guwahati', 52, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1977, 'Noida', 37, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1978, 'Goa', 15, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1979, 'YAMUNA NAGAR', 17, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1980, 'SHILLONG', 54, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1981, 'Raipur', 24, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1982, 'Raj Nand Gave', 11, 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1983, 'Raj Nand Gaon', 11, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1984, 'Durg', 11, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1985, 'Mohali', 31, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1986, 'Panipath', 17, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1987, 'Ptiala', 17, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1990, 'JAGRAON', 31, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1991, 'PHAGWARA', 31, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1992, 'SHAHKOT', 31, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1993, 'NAKODER', 31, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1994, 'BHOLATH', 31, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1995, 'NOORMAHAL', 31, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1996, 'KARTARPUR', 31, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1997, 'MUKERIAN', 31, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1998, 'BEGOWAL', 31, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(1999, 'GARSHANKER', 31, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(2000, 'Apra', 31, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(2001, 'BATALA', 31, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(2002, 'BEAS', 31, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(2003, 'RAIYA', 31, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(2004, 'JANDIALA', 31, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(2005, 'PATHANKOT', 31, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(2006, 'CHANDIGARH', 31, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(2007, 'ZIRAKPUR', 31, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(2008, 'KHARAR', 31, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(2009, 'SONIPAT', 31, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(2010, 'DASUYA', 31, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(2011, 'BANGA', 31, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(2012, 'TANDA', 31, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(2013, 'ADAMPUR', 31, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(2014, 'NAWANSAHER', 31, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(2015, 'MALSISAN', 31, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(2016, 'Lakhimpur', 37, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(2017, 'Surat Garh', 32, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(2018, 'Greater Noida', 37, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(2019, 'Howrah', 39, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(2020, 'Theni', 34, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(2021, 'Berhampur', 29, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(2022, 'Kanchrapara', 39, 1, '2018-02-14 13:59:45', '2018-02-14 13:59:45'),
(2023, 'Jamshedpur', 20, 1, '2018-02-14 14:25:16', '2018-02-14 14:25:16'),
(2024, 'Pondicherry', 30, 1, '2018-03-12 14:18:36', '2018-03-12 14:18:36'),
(2025, 'Pondicherry', 30, 1, '2018-03-12 14:19:42', '2018-03-12 14:19:42'),
(2026, 'TRIVANDRUM', 22, 1, '2019-03-02 13:27:22', '2018-03-14 11:33:08'),
(2028, 'Ernakulam', 22, 1, '2018-03-16 11:25:49', '2018-03-16 11:25:49'),
(2029, 'TRICHY', 34, 1, '2018-03-16 11:55:59', '2018-03-16 11:55:59'),
(2033, 'THANE', 25, 1, '2018-03-26 12:17:14', '2018-03-26 12:16:51'),
(2034, 'DAMAN', 16, 1, '2018-03-28 14:39:55', '2018-03-28 14:39:55'),
(2035, 'KATARGAM', 16, 1, '2018-03-28 15:10:53', '2018-03-28 15:10:53'),
(2036, 'Kutch', 16, 1, '2018-04-02 16:59:28', '2018-04-02 16:59:28'),
(2037, 'Gangtok', 56, 1, '2018-04-07 12:44:43', '2018-04-07 12:44:43'),
(2040, 'KALIMPONG', 39, 1, '2018-04-09 17:18:36', '2018-04-09 17:17:40'),
(2041, 'Haldwani', 38, 1, '2018-04-11 18:36:34', '2018-04-11 18:36:34'),
(2042, 'PCMC', 25, 1, '2018-04-16 13:53:31', '2018-04-16 13:53:31'),
(2043, 'JAMNAGAR', 16, 1, '2018-04-18 15:57:54', '2018-04-18 15:57:37'),
(2044, 'Vasco', 15, 1, '2018-04-18 17:36:05', '2018-04-18 17:36:05'),
(2045, 'Candolim', 15, 1, '2018-04-18 18:05:50', '2018-04-18 18:05:50'),
(2046, 'Calangute', 15, 1, '2018-04-18 18:27:54', '2018-04-18 18:27:54'),
(2047, 'Baga', 15, 1, '2018-04-18 18:38:55', '2018-04-18 18:38:55'),
(2048, 'Navelim', 15, 1, '2018-04-18 18:42:50', '2018-04-18 18:42:50'),
(2049, 'Margao', 15, 1, '2018-04-18 18:48:47', '2018-04-18 18:48:47'),
(2051, 'Porvorim', 15, 1, '2018-04-19 11:34:05', '2018-04-19 11:34:05'),
(2052, 'Mapusa', 15, 1, '2018-04-19 11:48:29', '2018-04-19 11:48:29'),
(2053, 'Panjim', 15, 1, '2018-04-19 12:15:07', '2018-04-19 12:15:07'),
(2054, 'Vasco', 15, 1, '2018-04-19 12:37:51', '2018-04-19 12:37:51'),
(2057, 'Colva', 15, 1, '2019-02-28 12:39:40', '2018-04-19 15:10:05'),
(2058, 'Ponda', 15, 1, '2018-04-19 15:33:37', '2018-04-19 15:33:37'),
(2059, 'Curchorim', 15, 0, '2018-04-19 15:44:30', '2018-04-19 15:44:30'),
(2060, 'Curchorim', 15, 1, '2018-04-19 15:45:06', '2018-04-19 15:45:06'),
(2061, 'KATNI', 24, 1, '2018-04-20 17:04:54', '2018-04-20 17:04:54'),
(2062, 'COCHIN', 22, 1, '2018-04-20 19:09:07', '2018-04-20 19:09:07'),
(2063, 'Darjeeling', 39, 1, '2018-05-04 10:18:51', '2018-05-04 10:18:51'),
(2064, 'SIVSAGAR', 52, 1, '2018-05-04 13:07:09', '2018-05-04 13:07:09'),
(2065, 'TEZPUR', 52, 1, '2018-05-04 13:17:58', '2018-05-04 13:17:58'),
(2066, 'SIKKIM', 56, 1, '2018-05-05 11:45:03', '2018-05-05 11:45:03'),
(2067, 'Muzaffarpur', 3, 1, '2018-05-07 13:08:08', '2018-05-07 13:08:08'),
(2069, 'Purnia', 3, 1, '2018-05-07 15:15:27', '2018-05-07 15:15:27'),
(2070, 'KARAD', 25, 1, '2018-05-28 16:04:37', '2018-05-28 16:04:37'),
(2071, 'RATNAGIRI', 25, 1, '2018-05-28 16:24:14', '2018-05-28 16:24:14'),
(2072, 'SATARA', 25, 1, '2018-05-29 17:34:30', '2018-05-29 17:34:30'),
(2074, 'KHANNA', 31, 1, '2018-06-01 16:35:56', '2018-06-01 16:35:39'),
(2075, 'BELGAUM', 25, 1, '2018-06-08 14:29:27', '2018-06-08 14:29:27'),
(2076, 'LADWA', 17, 1, '2018-06-14 18:01:01', '2018-06-14 18:01:01'),
(2077, 'SHAHABAD', 17, 1, '2018-06-14 18:22:10', '2018-06-14 18:22:10'),
(2078, 'BALTANA', 31, 1, '2018-06-22 15:07:53', '2018-06-22 15:07:53'),
(2079, 'DERA BASSI', 31, 1, '2018-06-22 15:57:46', '2018-06-22 15:57:46'),
(2080, 'SAHA MULANA BARARA', 17, 1, '2018-06-27 10:51:18', '2018-06-27 10:51:18'),
(2081, 'Balasore', 29, 1, '2019-02-09 10:52:43', '2018-07-05 18:54:59'),
(2082, 'Ropar', 31, 1, '2018-07-11 18:45:06', '2018-07-11 18:45:06'),
(2083, 'Balachor', 31, 1, '2018-07-11 18:45:06', '2018-07-11 18:45:06'),
(2084, 'Wardha', 25, 1, '2018-08-08 12:58:33', '2018-08-08 12:58:33'),
(2085, 'DAVANAGIRI', 21, 1, '2018-08-08 19:26:20', '2018-08-08 19:26:20'),
(2086, 'BENGALURU', 21, 1, '2018-08-08 19:48:51', '2018-08-08 19:48:51'),
(2087, 'MANIPAL', 21, 1, '2018-08-13 17:51:08', '2018-08-13 17:51:08'),
(2088, 'pollachi', 34, 1, '2018-08-20 17:58:36', '2018-08-20 17:58:36'),
(2089, 'KALKA', 31, 1, '2018-08-21 14:20:34', '2018-08-21 14:20:34'),
(2090, 'BHADDI', 31, 1, '2018-08-21 14:20:34', '2018-08-21 14:20:34'),
(2091, 'UNA', 16, 1, '2018-08-24 14:05:44', '2018-08-24 14:05:44'),
(2092, 'DMP', 57, 1, '2018-10-03 17:50:00', '2018-10-03 17:50:00'),
(2093, 'ITA', 58, 1, '2018-10-04 11:33:10', '2018-10-04 11:33:10'),
(2094, 'JOR', 52, 1, '2018-10-04 11:40:28', '2018-10-04 11:40:28'),
(2095, 'Rothak', 17, 1, '2018-10-04 12:05:58', '2018-10-04 12:05:58'),
(2096, 'NHR', 58, 1, '2018-10-04 15:14:29', '2018-10-04 15:14:29'),
(2097, 'TINSUKIA', 52, 1, '2018-10-04 16:55:37', '2018-10-04 16:55:37'),
(2098, 'KOHIMA', 57, 1, '2018-10-04 18:18:54', '2018-10-04 18:18:54'),
(2099, 'DHARAMSHALA', 31, 1, '2018-10-05 16:36:15', '2018-10-05 16:36:15'),
(2100, 'PALAMPUR', 31, 1, '2018-10-05 16:39:12', '2018-10-05 16:39:12'),
(2101, 'BHOGPUR', 31, 1, '2018-10-10 13:22:34', '2018-10-10 13:22:34'),
(2102, 'Aizawl', 59, 1, '2018-10-22 15:36:16', '2018-10-22 15:36:16'),
(2103, 'bankura', 39, 1, '2018-10-29 13:09:57', '2018-10-29 13:09:57'),
(2104, 'Burdwan', 39, 1, '2018-10-29 13:09:57', '2018-10-29 13:09:57'),
(2105, 'Raniganj', 39, 1, '2018-10-29 13:09:57', '2018-10-29 13:09:57'),
(2106, 'Kalna', 39, 1, '2018-10-29 13:09:57', '2018-10-29 13:09:57'),
(2107, 'Midnapore', 39, 1, '2018-10-29 13:09:57', '2018-10-29 13:09:57'),
(2108, 'MAHILPUR', 31, 1, '2018-10-30 16:38:11', '2018-10-30 16:38:11'),
(2109, 'Bongaigaon', 52, 1, '2018-11-20 11:54:44', '2018-11-20 11:54:44'),
(2110, 'Silchar', 52, 1, '2018-12-11 17:30:46', '2018-12-11 17:30:46'),
(2111, 'Samastipur', 3, 1, '2018-12-12 11:49:16', '2018-12-12 11:49:16'),
(2113, 'Pulgaon', 25, 1, '2019-01-29 16:01:54', '2019-01-29 16:01:54'),
(2114, 'Jetpur', 16, 1, '2019-02-12 14:31:17', '2019-02-12 14:31:17'),
(2115, 'Rourkela', 29, 1, '2019-02-12 16:34:56', '2019-02-12 16:34:56'),
(2116, 'Rudrapur', 38, 1, '2019-02-14 11:21:15', '2019-02-14 11:21:15'),
(2117, 'Malout', 31, 1, '2019-02-15 13:24:52', '2019-02-15 13:24:52'),
(2118, 'Una', 18, 1, '2019-03-05 12:11:50', '2019-03-05 12:11:50'),
(2119, 'Nalbari', 52, 1, '2019-03-12 12:48:01', '2019-03-12 12:48:01'),
(2120, 'Rangia', 52, 1, '2019-03-12 17:53:22', '2019-03-12 17:53:22'),
(2123, 'Delhi', 14, 1, '2020-05-08 16:08:35', '2020-05-08 16:00:09');

-- --------------------------------------------------------

--
-- Table structure for table `common_package`
--

CREATE TABLE `common_package` (
  `package_id` int(11) NOT NULL,
  `package_code` varchar(100) NOT NULL,
  `package_name` varchar(100) DEFAULT NULL,
  `package_type_id` int(11) DEFAULT NULL,
  `permalink` varchar(100) DEFAULT NULL,
  `category_id` varchar(50) DEFAULT NULL,
  `service_id` varchar(50) DEFAULT NULL,
  `depend` int(1) DEFAULT NULL,
  `brand_id` varchar(50) NOT NULL,
  `banner` varchar(2500) NOT NULL,
  `description` varchar(2000) NOT NULL,
  `special_description` varchar(1500) NOT NULL,
  `featured` int(1) NOT NULL,
  `trending` int(1) NOT NULL,
  `status` int(1) NOT NULL,
  `meta_title` varchar(200) NOT NULL,
  `meta_desc` varchar(500) NOT NULL,
  `meta_keyword` varchar(500) NOT NULL,
  `created_on` datetime NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `package_for` varchar(100) NOT NULL,
  `package_group` varchar(100) NOT NULL,
  `used_package_id` int(11) NOT NULL,
  `common_id` varchar(255) NOT NULL,
  `common_type` varchar(255) NOT NULL,
  `actual_price` decimal(10,2) NOT NULL,
  `deal_price` decimal(10,2) NOT NULL,
  `visit_type` varchar(100) NOT NULL,
  `visit_price` varchar(255) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `common_package`
--

INSERT INTO `common_package` (`package_id`, `package_code`, `package_name`, `package_type_id`, `permalink`, `category_id`, `service_id`, `depend`, `brand_id`, `banner`, `description`, `special_description`, `featured`, `trending`, `status`, `meta_title`, `meta_desc`, `meta_keyword`, `created_on`, `created_by`, `package_for`, `package_group`, `used_package_id`, `common_id`, `common_type`, `actual_price`, `deal_price`, `visit_type`, `visit_price`, `start_date`, `end_date`) VALUES
(1, '98SM641GAC', 'Bridal Package Multi two', 1, 'bridal-package-multi-two', '1,2', '1,6', 1, '1,2', '1639553310Wedding-Package-2.jpg', 'Multi package for bridal for party and wedding. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam congue arcu sed vestibulum hendrerit. Proin vel auctor est. Sed at est accumsan, tincidunt felis vitae, gravida felis. Phasellus rutrum venenatis sagittis. Ut pharetra arcu eget ultrices pharetra. Integer varius a nunc eu dignissim. Curabitur eget turpis in nisi vestibulum accumsan eu id dui. Vivamus vitae nibh quam. Nunc tristique tortor urna, eget tempor nunc pellentesque a. Etiam porta sed lorem porttitor ornare. Quisque nec velit id augue pretium porttitor. Aenean et nunc ac velit cursus hendrerit. Morbi diam velit, congue at volutpat non, pellentesque ut erat.', 'Multi package for wedding', 1, 0, 1, 'sdfaf dsfa s fsdf', 'Multi package for bridal for party and wedding. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam congue arcu sed vestibulum hendrerit. Proin vel auctor est. Sed at est accumsan, tincidunt felis vitae, gravida felis. Phasellus rutrum venenatis sagittis. Ut pharetra arcu eget ultrices pharetra. Integer varius a nunc eu dignissim. Curabitur eget turpis in nisi vestibulum accumsan eu id dui. Vivamus vitae nibh quam. Nunc tristique tortor urna, eget tempor nunc pellentesque a. Etiam porta', 'saf a sadf sa sa sa sfa s s saf fds', '2021-12-15 12:58:30', 'MSDDEC20/041053/XYRFR', '', 'multiple', 1, 'MSDDEC20/041053/XYRFR', 'salon', '900.00', '500.00', '1,2,3', '', '0000-00-00', '0000-00-00'),
(2, '98SM641GAGA', 'Bridal Package Multi', 1, 'bridal-package-multi', '1,3', '4,6', 1, '1,2,3', '1639553344Wedding-Package-3.jpg', 'Multi package for bridal for party and wedding. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam congue arcu sed vestibulum hendrerit. Proin vel auctor est. Sed at est accumsan, tincidunt felis vitae, gravida felis. Phasellus rutrum venenatis sagittis. Ut pharetra arcu eget ultrices pharetra. Integer varius a nunc eu dignissim. Curabitur eget turpis in nisi vestibulum accumsan eu id dui. Vivamus vitae nibh quam. Nunc tristique tortor urna, eget tempor nunc pellentesque a. Etiam porta sed lorem porttitor ornare. Quisque nec velit id augue pretium porttitor. Aenean et nunc ac velit cursus hendrerit. Morbi diam velit, congue at volutpat non, pellentesque ut erat.', 'Full package for bridal', 1, 0, 1, 'dfsdf', 'Multi package for bridal for party and wedding. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam congue arcu sed vestibulum hendrerit. Proin vel auctor est. Sed at est accumsan, tincidunt felis vitae, gravida felis. Phasellus rutrum venenatis sagittis. Ut pharetra arcu eget ultrices pharetra. Integer varius a nunc eu dignissim. Curabitur eget turpis in nisi vestibulum accumsan eu id dui. Vivamus vitae nibh quam. Nunc tristique tortor urna, eget tempor nunc pellentesque a. Etiam porta', 'sdfa ssdfsa ', '2021-12-15 12:59:04', 'MSDDEC20/041053/XYRFR', '', 'multiple', 1, 'MSDDEC20/041053/XYRFR', 'salon', '1000.00', '500.00', '1,2,3', '', '0000-00-00', '0000-00-00'),
(8, '98SM641GAA', 'Bridal Package Multi two', 1, 'bridal-package-multi-two', '2,6', '7,8,9,10,11', 1, '1,2', 'Wedding-Package -1.jpg', 'Multi package for bridal for party and wedding. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam congue arcu sed vestibulum hendrerit. Proin vel auctor est. Sed at est accumsan, tincidunt felis vitae, gravida felis. Phasellus rutrum venenatis sagittis. Ut pharetra arcu eget ultrices pharetra. Integer varius a nunc eu dignissim. Curabitur eget turpis in nisi vestibulum accumsan eu id dui. Vivamus vitae nibh quam. Nunc tristique tortor urna, eget tempor nunc pellentesque a. Etiam porta sed lorem porttitor ornare. Quisque nec velit id augue pretium porttitor. Aenean et nunc ac velit cursus hendrerit. Morbi diam velit, congue at volutpat non, pellentesque ut erat.', 'Multi package for wedding', 1, 0, 1, 'sdfaf dsfa s fsdf', 'Multi package for bridal for party and wedding', 'saf a sadf sa sa sa sfa s s saf fds', '2021-06-21 16:03:25', 'MSDDEC20/041147/H5AHI', 'salon', 'multiple', 1, 'MSDDEC20/041147/H5AHI', '', '1000.00', '590.00', '1,2,3', '700,800,900', NULL, NULL),
(10, 'SXJ3LB028u', 'cutpackage', 2, 'cutpackage', '5', '', 0, '', '1639553484corporate-3.jpg', 'Multi package for bridal for party and wedding. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam congue arcu sed vestibulum hendrerit. Proin vel auctor est. Sed at est accumsan, tincidunt felis vitae, gravida felis. Phasellus rutrum venenatis sagittis. Ut pharetra arcu eget ultrices pharetra. Integer varius a nunc eu dignissim. Curabitur eget turpis in nisi vestibulum accumsan eu id dui. Vivamus vitae nibh quam. Nunc tristique tortor urna, eget tempor nunc pellentesque a. Etiam porta sed lorem porttitor ornare. Quisque nec velit id augue pretium porttitor. Aenean et nunc ac velit cursus hendrerit. Morbi diam velit, congue at volutpat non, pellentesque ut erat.', 'Multi package for bridal for party and wedding. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam congue arcu sed vestibulum hendrerit. Proin vel auctor est. Sed at est accumsan, tincidunt felis vitae, gravida felis. Phasellus rutrum venenatis sagittis. Ut pharetra arcu eget ultrices pharetra. Integer varius a nunc eu dignissim. Curabitur eget turpis in nisi vestibulum accumsan eu id dui. Vivamus vitae nibh quam. Nunc tristique tortor urna, eget tempor nunc pellentesque a. Etiam porta sed lorem porttitor ornare. Quisque nec velit id augue pretium porttitor. Aenean et nunc ac velit cursus hendrerit. Morbi diam velit, congue at volutpat non, pellentesque ut erat.', 1, 0, 1, 'sda', 'Multi package for bridal for party and wedding. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam congue arcu sed vestibulum hendrerit. Proin vel auctor est. Sed at est accumsan, tincidunt felis vitae, gravida felis. Phasellus rutrum venenatis sagittis. Ut pharetra arcu eget ultrices pharetra. Integer varius a nunc eu dignissim. Curabitur eget turpis in nisi vestibulum accumsan eu id dui. Vivamus vitae nibh quam. Nunc tristique tortor urna, eget tempor nunc pellentesque a. Etiam porta', 'sda', '2021-12-15 13:01:24', 'MSDDEC20/041147/H5AHI', '', 'single', 2, 'MSDDEC20/041147/H5AHI', 'salon', '1000.00', '549.00', '1,2,3', '', '0000-00-00', '0000-00-00'),
(12, 'SXJ3LB0286', 'Bridal Package', 3, 'bridal-package', '1', '3', 1, '1,2', '1639553514corporate-4.jpg', 'Bridal package for wedding with full benefits', 'Bridal package for wedding and party', 1, 0, 1, '', 'Bridal package for wedding with full benefits', '', '2021-12-15 13:01:54', 'MSDDEC20/041147/H5AHI', '', 'single', 2, 'MSDDEC20/041147/H5AHI', 'salon', '1000.00', '900.00', '1,2,3', '', '0000-00-00', '0000-00-00'),
(17, 'SXJ3LB0285', 'Winter Package', 2, 'winter-package', '1,2,3', '2,3,6', 1, '1,2', '1639553067corporate-2.jpg', 'Multi package for bridal for party and wedding. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam congue arcu sed vestibulum hendrerit. Proin vel auctor est. Sed at est accumsan, tincidunt felis vitae, gravida felis. Phasellus rutrum venenatis sagittis. Ut pharetra arcu eget ultrices pharetra. Integer varius a nunc eu dignissim. Curabitur eget turpis in nisi vestibulum accumsan eu id dui. Vivamus vitae nibh quam. Nunc tristique tortor urna, eget tempor nunc pellentesque a. Etiam porta sed lorem porttitor ornare. Quisque nec velit id augue pretium porttitor. Aenean et nunc ac velit cursus hendrerit. Morbi diam velit, congue at volutpat non, pellentesque ut erat.', 'sfda', 1, 0, 1, 'sdfa', 'Multi package for bridal for party and wedding. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam congue arcu sed vestibulum hendrerit. Proin vel auctor est. Sed at est accumsan, tincidunt felis vitae, gravida felis. Phasellus rutrum venenatis sagittis. Ut pharetra arcu eget ultrices pharetra. Integer varius a nunc eu dignissim. Curabitur eget turpis in nisi vestibulum accumsan eu id dui. Vivamus vitae nibh quam. Nunc tristique tortor urna, eget tempor nunc pellentesque a. Etiam porta', 'dsas', '2021-12-15 12:54:27', 'MSDDEC20/041053/XYRFR', '', 'multiple', 2, 'MSDDEC20/041053/XYRFR', 'salon', '1000.00', '299.00', '1,2,3', '', '2021-06-23', '2021-06-25'),
(18, '', 'Golden Package', 2, 'golden-package', '3', '3', 1, '1,2', '1624452273wedding3.png', 'test', 'test', 1, 1, 0, '', 'test', '', '2021-09-13 15:38:07', 'MSDSEP21/131057/PL71X', 'salon', 'single', 2, 'MSDSEP21/131057/PL71X', 'salon', '0.00', '0.00', '', '', '2021-06-01', '2021-09-30'),
(19, 'FCSWJE68R', 'dffad', 1, 'dffad', '1', '1', 0, '', '1631528494artist11.jpg', 'sfsa fsdf as fa', ' sadf sda fsda fsafdsa', 0, 0, 1, '', 'sfsa fsdf as fa', '', '2021-09-13 15:51:34', 'MSDSEP21/131057/PL71X', '', 'single', 0, 'MSDSEP21/131057/PL71X', 'salon', '0.00', '400.00', '1,2,3', '50.00,60.00,80.00', '2021-09-13', '2021-09-30'),
(20, '61ZI5FHY9', 'sdfds', 2, 'sdfds', ',7,1', '1', 1, '1', '1631530619artist8.jpg', 'sfasf dsa fas ', ' ds dsa safd asd', 1, 0, 1, '', 'sfasf dsa fas ', '', '2021-09-13 16:26:59', 'MSDSEP21/131057/PL71X', '', 'multiple', 0, 'MSDSEP21/131057/PL71X', 'salon', '0.00', '5333.00', '1', '500.00', '2021-09-13', '2021-09-30'),
(21, 'A7Z3I3799', 'dfgs dsg dsg ', 3, 'dfgs-dsg-dsg', '1', '2', 0, '', '1631530987artist3.jpg', ' df sgd fds g', ' fdg sd gds g', 0, 0, 1, '', ' df sgd fds g', '', '2021-09-13 16:33:07', 'MSDSEP21/131057/PL71X', '', 'single', 0, 'MSDSEP21/131057/PL71X', 'salon', '0.00', '5000.00', '1,2', '40.00,60.00', '2021-09-13', '2021-09-30');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contact_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `message` varchar(2500) NOT NULL,
  `created_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `corporates`
--

CREATE TABLE `corporates` (
  `corp_id` int(11) NOT NULL,
  `corp_code` varchar(30) NOT NULL,
  `firm_name` varchar(150) NOT NULL,
  `og_type` varchar(50) NOT NULL,
  `company_name` varchar(150) NOT NULL,
  `branches` int(11) NOT NULL,
  `phone_number` bigint(20) NOT NULL,
  `mobile_number` bigint(20) NOT NULL,
  `contact_person` varchar(100) NOT NULL,
  `email_id` varchar(100) NOT NULL,
  `country_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `landmark` varchar(100) NOT NULL,
  `complete_address` varchar(300) NOT NULL,
  `pincode` int(11) NOT NULL,
  `latitude` varchar(30) NOT NULL DEFAULT '',
  `longitude` varchar(30) NOT NULL DEFAULT '',
  `website` varchar(100) NOT NULL DEFAULT '',
  `pan_number` varchar(20) NOT NULL,
  `pan_document` varchar(300) NOT NULL DEFAULT '',
  `gst_number` varchar(30) NOT NULL,
  `gst_document` varchar(300) NOT NULL DEFAULT '',
  `about_us` text NOT NULL,
  `phone_verification` enum('PENDING','VERIFIED','UNVERIFIED') NOT NULL DEFAULT 'PENDING',
  `email_verification` enum('PENDING','VERIFIED','UNVERIFIED') NOT NULL DEFAULT 'PENDING',
  `account_status` enum('PENDING','ACTIVE','INACTIVE') NOT NULL DEFAULT 'PENDING',
  `physical_verification` enum('PENDING','VERIFIED','UNVERIFIED') NOT NULL DEFAULT 'PENDING',
  `ip_address` varchar(30) NOT NULL,
  `updated_on` datetime NOT NULL,
  `created_on` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `corporates`
--

INSERT INTO `corporates` (`corp_id`, `corp_code`, `firm_name`, `og_type`, `company_name`, `branches`, `phone_number`, `mobile_number`, `contact_person`, `email_id`, `country_id`, `state_id`, `city_id`, `landmark`, `complete_address`, `pincode`, `latitude`, `longitude`, `website`, `pan_number`, `pan_document`, `gst_number`, `gst_document`, `about_us`, `phone_verification`, `email_verification`, `account_status`, `physical_verification`, `ip_address`, `updated_on`, `created_on`) VALUES
(1, 'MSD-CORDEC20/101752/MXBJE', 'Auraine Botanicals', 'pvt', 'Auraine Botanicals Pvt. Ltd.', 5, 7788996345, 9800087788, 'Arpit Jain', 'director@aurainebotanicals.com', 100, 17, 1962, 'Near Taj Vivanta Hotel', 'Plot No. 15, 3rd Floor, Sector 44', 122002, '28.4530453', '77.06827400000002', '', 'AJWPT1805D', '1607603179flow-scanner.png', 'AJWPT1805D7777', '1607603179mda-black.png', 'This is all about my company', 'VERIFIED', 'VERIFIED', 'ACTIVE', 'VERIFIED', '125.63.95.42', '2020-12-18 15:40:54', '2020-12-10 17:56:19'),
(2, 'MSD-CORMAR21/191037/Y74MG', 'Corporate One', 'partnership', 'Corporate One1 Pvt Ltd', 6, 9111111112, 9111111112, 'Contact person one1', 'corporateone1@yopmail.com', 100, 14, 1194, 'South city 1', 'Block 1 opposite tower one 1', 122002, '28.459899', '77.06794769999999', '', 'CNYY904IR1', '1628915783pan.jpg', 'GSTIN235213523OI1', '1628915792gst.png', 'Test description dvdsvs sdf test e dsfsaaf adadds', 'VERIFIED', 'VERIFIED', 'ACTIVE', 'PENDING', '::1', '2021-08-14 10:06:32', '2021-03-19 10:44:14');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(30) CHARACTER SET utf8 NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0:Blocked, 1:Active',
  `updated` datetime NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`country_id`, `country_name`, `status`, `updated`, `created`) VALUES
(1, 'Aruba', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(2, 'Afghanistan', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(3, 'Angola', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(4, 'Anguilla', 0, '2018-05-18 11:17:29', '2018-02-12 21:01:13'),
(5, 'Albania', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(6, 'Andorra', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(7, 'Netherlands Antilles', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(8, 'United Arab Emirates', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(9, 'Argentina', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(11, 'American Samoa', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(12, 'Antarctica', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(13, 'French Southern territories', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(14, 'Antigua and Barbuda', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(15, 'Australia', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(16, 'Austria', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(17, 'Azerbaijan', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(18, 'Burundi', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(19, 'Belgium', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(20, 'Benin', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(21, 'Burkina Faso', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(22, 'Bangladesh', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(23, 'Bulgaria', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(24, 'Bahrain', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(25, 'Bahamas', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(26, 'Bosnia and Herzegovina', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(27, 'Belarus', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(28, 'Belize', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(29, 'Bermuda', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(30, 'Bolivia', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(31, 'Brazil', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(32, 'Barbados', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(33, 'Brunei', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(34, 'Bhutan', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(35, 'Bouvet Island', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(36, 'Botswana', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(37, 'Central African Republic', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(38, 'Canada', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(39, 'Cocos (Keeling) Islands', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(40, 'Switzerland', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(41, 'Chile', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(42, 'China', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(43, 'CÃ´te dâ€™Ivoire', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(44, 'Cameroon', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(45, 'Congo, The Democratic Republic', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(46, 'Congo', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(47, 'Cook Islands', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(48, 'Colombia', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(49, 'Comoros', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(50, 'Cape Verde', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(51, 'Costa Rica', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(52, 'Cuba', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(53, 'Christmas Island', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(54, 'Cayman Islands', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(55, 'Cyprus', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(56, 'Czech Republic', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(57, 'Germany', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(58, 'Djibouti', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(59, 'Dominica', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(60, 'Denmark', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(61, 'Dominican Republic', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(62, 'Algeria', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(63, 'Ecuador', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(64, 'Egypt', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(65, 'Eritrea', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(66, 'Western Sahara', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(67, 'Spain', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(68, 'Estonia', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(69, 'Ethiopia', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(70, 'Finland', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(71, 'Fiji Islands', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(72, 'Falkland Islands', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(73, 'France', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(74, 'Faroe Islands', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(75, 'Micronesia, Federated States o', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(76, 'Gabon', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(77, 'United Kingdom', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(78, 'Georgia', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(79, 'Ghana', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(80, 'Gibraltar', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(81, 'Guinea', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(82, 'Guadeloupe', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(83, 'Gambia', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(84, 'Guinea-Bissau', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(85, 'Equatorial Guinea', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(86, 'Greece', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(87, 'Grenada', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(88, 'Greenland', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(89, 'Guatemala', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(90, 'French Guiana', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(91, 'Guam', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(92, 'Guyana', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(93, 'Hong Kong', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(94, 'Heard Island and McDonald Isla', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(95, 'Honduras', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(96, 'Croatia', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(97, 'Haiti', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(98, 'Hungary', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(99, 'Indonesia', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(100, 'India', 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(101, 'British Indian Ocean Territory', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(102, 'Ireland', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(103, 'Iran', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(104, 'Iraq', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(105, 'Iceland', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(106, 'Israel', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(107, 'Italy', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(108, 'Jamaica', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(109, 'Jordan', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(110, 'Japan', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(111, 'Kazakstan', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(112, 'Kenya', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(113, 'Kyrgyzstan', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(114, 'Cambodia', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(115, 'Kiribati', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(116, 'Saint Kitts and Nevis', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(117, 'South Korea', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(118, 'Kuwait', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(119, 'Laos', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(120, 'Lebanon', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(121, 'Liberia', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(122, 'Libyan Arab Jamahiriya', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(123, 'Saint Lucia', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(124, 'Liechtenstein', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(125, 'Sri Lanka', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(126, 'Lesotho', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(127, 'Lithuania', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(128, 'Luxembourg', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(129, 'Latvia', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(130, 'Macao', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(131, 'Morocco', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(132, 'Monaco', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(133, 'Moldova', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(134, 'Madagascar', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(135, 'Maldives', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(136, 'Mexico', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(137, 'Marshall Islands', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(138, 'Macedonia', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(139, 'Mali', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(140, 'Malta', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(141, 'Myanmar', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(142, 'Mongolia', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(143, 'Northern Mariana Islands', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(144, 'Mozambique', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(145, 'Mauritania', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(146, 'Montserrat', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(147, 'Martinique', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(148, 'Mauritius', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(149, 'Malawi', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(150, 'Malaysia', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(151, 'Mayotte', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(152, 'Namibia', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(153, 'New Caledonia', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(154, 'Niger', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(155, 'Norfolk Island', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(156, 'Nigeria', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(157, 'Nicaragua', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(158, 'Niue', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(159, 'Netherlands', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(160, 'Norway', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(161, 'Nepal', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(162, 'Nauru', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(163, 'New Zealand', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(164, 'Oman', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(165, 'Pakistan', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(166, 'Panama', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(167, 'Pitcairn', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(168, 'Peru', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(169, 'Philippines', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(170, 'Palau', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(171, 'Papua New Guinea', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(172, 'Poland', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(173, 'Puerto Rico', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(174, 'North Korea', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(175, 'Portugal', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(176, 'Paraguay', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(177, 'Palestine', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(178, 'French Polynesia', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(179, 'Qatar', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(180, 'RÃ©union', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(181, 'Romania', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(182, 'Russian Federation', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(183, 'Rwanda', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(184, 'Saudi Arabia', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(185, 'Sudan', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(186, 'Senegal', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(187, 'Singapore', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(188, 'South Georgia and the South Sa', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(189, 'Saint Helena', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(190, 'Svalbard and Jan Mayen', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(191, 'Solomon Islands', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(192, 'Sierra Leone', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(193, 'El Salvador', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(194, 'San Marino', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(195, 'Somalia', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(196, 'Saint Pierre and Miquelon', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(197, 'Sao Tome and Principe', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(198, 'Suriname', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(199, 'Slovakia', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(200, 'Slovenia', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(201, 'Sweden', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(202, 'Swaziland', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(203, 'Seychelles', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(204, 'Syria', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(205, 'Turks and Caicos Islands', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(206, 'Chad', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(207, 'Togo', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(208, 'Thailand', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(209, 'Tajikistan', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(210, 'Tokelau', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(211, 'Turkmenistan', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(212, 'East Timor', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(213, 'Tonga', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(214, 'Trinidad and Tobago', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(215, 'Tunisia', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(216, 'Turkey', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(217, 'Tuvalu', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(218, 'Taiwan', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(219, 'Tanzania', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(220, 'Uganda', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(221, 'Ukraine', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(222, 'United States Minor Outlying I', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(223, 'Uruguay', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(224, 'United States', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(225, 'Uzbekistan', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(226, 'Holy See (Vatican City State)', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(227, 'Saint Vincent and the Grenadin', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(228, 'Venezuela', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(229, 'Virgin Islands, British', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(230, 'Virgin Islands, U.S.', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(231, 'Vietnam', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(232, 'Vanuatu', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(233, 'Wallis and Futuna', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(234, 'Samoa', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(235, 'Yemen', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(236, 'Yugoslavia', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(237, 'South Africa', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(238, 'Zambi', 0, '2020-05-21 15:36:56', '2018-02-12 21:01:13'),
(239, 'Zimbabwe', 0, '2018-02-12 21:01:13', '2018-02-12 21:01:13');

-- --------------------------------------------------------

--
-- Table structure for table `coupon_association`
--

CREATE TABLE `coupon_association` (
  `assoc_id` int(11) NOT NULL,
  `coupon_id` varchar(200) NOT NULL DEFAULT '',
  `associated_id` varchar(200) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coupon_association`
--

INSERT INTO `coupon_association` (`assoc_id`, `coupon_id`, `associated_id`) VALUES
(6, '1', '3'),
(5, '1', '2'),
(4, '1', '1'),
(7, '2', '1'),
(8, '2', '2'),
(9, '2', '3'),
(10, '2', '4'),
(11, '3', '1'),
(12, '3', '2'),
(13, '3', '3'),
(14, '4', '2'),
(15, '4', '3'),
(16, '5', '1'),
(18, '6', '1'),
(19, '7', '2'),
(20, '7', '3'),
(21, '7', '6'),
(22, '8', '6'),
(23, '9', '1');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `mobile_number` bigint(20) NOT NULL,
  `display_picture` varchar(255) NOT NULL DEFAULT '',
  `email_address` varchar(100) NOT NULL,
  `gender` enum('MALE','FENALE','OTHERS') NOT NULL DEFAULT 'MALE',
  `avtivation_code` varchar(120) NOT NULL DEFAULT '',
  `activation_status` tinyint(1) NOT NULL DEFAULT 0,
  `phone_verification` enum('PENDING','VERIFIED') NOT NULL DEFAULT 'PENDING',
  `email_verification` enum('PENDING','VERIFIED') NOT NULL DEFAULT 'PENDING',
  `creator_ip` varchar(40) NOT NULL DEFAULT '',
  `updated_on` datetime NOT NULL,
  `created_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `mobile_number`, `display_picture`, `email_address`, `gender`, `avtivation_code`, `activation_status`, `phone_verification`, `email_verification`, `creator_ip`, `updated_on`, `created_on`) VALUES
(1, 'test stylist', 9717102772, 'dummy_user.png', 'teststylist@yopmail.com', 'MALE', 'aa8d056da604018e822a1a73df107730710228', 1, 'PENDING', 'VERIFIED', '125.63.95.42', '2021-03-16 17:40:50', '2021-02-04 14:37:04'),
(2, 'IT Department', 0, 'dummy_user.png', 'it@maisondauraine.com', 'MALE', '48aa78a15e6b697204cbe9a5d1d809a8908437', 1, 'PENDING', 'VERIFIED', '125.63.95.42', '2021-03-16 15:16:35', '2021-03-16 15:16:35'),
(3, 'Guest', 0, 'dummy_user.png', '', 'MALE', '1cc3c4603d6bf86032e1a4ecb408d56e', 0, 'PENDING', 'PENDING', '125.63.95.42', '2021-03-17 10:31:49', '2021-03-17 10:31:49'),
(4, 'First customer', 9717102773, 'dummy_user.png', 'firstcustomer@yopmail.com', 'MALE', 'ef352b9b956375cf696762f7a2bc72da818279', 0, 'PENDING', 'PENDING', '::1', '2021-03-18 14:03:06', '2021-03-18 14:03:06'),
(5, 'customer one', 9712389831, '16286836531606991013logo-white.jpg', 'customer_one@yopmail.com', 'MALE', 'd3939481480f1e916c4299e60268a8e2125664', 0, 'PENDING', 'PENDING', '::1', '2021-08-11 17:37:33', '2021-03-24 11:16:53'),
(6, 'Customer Two', 1111111111, 'dummy_user.png', 'customer_two@yopmail.com', 'MALE', 'a1c21d60b55f85064e39f1111cbea5a0189145', 0, 'PENDING', 'PENDING', '127.0.0.1', '2021-03-24 18:19:58', '2021-03-24 18:19:58'),
(7, 'customer five', 9712339831, 'dummy_user.png', 'customer_five@yopmail.com', 'MALE', 'a1fd719e1803c0d7a44372070f4a847f457191', 1, 'VERIFIED', 'VERIFIED', '106.223.90.63', '2021-05-26 14:49:19', '2021-05-26 14:49:19'),
(8, 'Ranjeet Kumar', 9555684329, 'dummy_user.png', 'ranjeet.kumar@maisondauraine.com', 'MALE', '0d89ab5019c1fb257b90df1c54502e96904804', 1, 'PENDING', 'VERIFIED', '171.61.169.73', '2021-05-13 14:53:33', '2021-05-13 14:53:33'),
(9, 'Anand singh', 9712339832, 'dummy_user.png', 'an@gmail.com', 'MALE', '319feda7344270b253de8ce9fc64c647467408', 0, 'PENDING', 'PENDING', '49.33.212.248', '2021-05-25 18:31:20', '2021-05-25 18:31:20'),
(10, 'Tapeshwar Pandit', 0, 'dummy_user.png', 'tapeshwartoday@gmail.com', 'MALE', '873add96d10020be618dbbd2f00f85dc326958', 1, 'PENDING', 'VERIFIED', '106.223.90.63', '2021-05-26 10:17:49', '2021-05-26 10:17:49'),
(11, 'Anand singh', 9712339800, 'dummy_user.png', 'an14@gmail.com', 'MALE', '5f8ca59f93e0f8934a02076e05a1714c981679', 0, 'PENDING', 'PENDING', '49.32.142.160', '2021-05-26 16:47:37', '2021-05-26 16:47:37'),
(12, 'Anand singh', 9712339860, '', 'anr@gmail.com', 'MALE', '4cfa6dcc38f8f8213701a77054f24a7f226009', 0, 'PENDING', 'PENDING', '49.32.142.160', '2021-05-26 16:48:31', '2021-05-26 16:48:31'),
(13, 'Anand singh', 712339860, '', 'anrd@gmail.com', 'MALE', 'a894dc55a5878ca4dad68ce7e3a50382251319', 1, 'VERIFIED', 'VERIFIED', '49.32.236.3', '2021-05-27 10:14:06', '2021-05-27 10:14:06'),
(14, 'Anand singh', 9876543290, '', 'ad@gmail.com', 'MALE', 'a1dd0a8c9380f993ee391b4ca92f691f124346', 0, 'PENDING', 'PENDING', '49.33.245.104', '2021-06-07 12:20:48', '2021-06-07 12:20:48'),
(15, 'Ranjeet', 9555683429, '1628933455avatar.png', 'ranjeet@test.com', 'MALE', '6a0edf2012732e4e17cbd8c12fbd4a76623522', 1, 'PENDING', 'PENDING', '14.97.83.110', '2021-08-14 15:00:55', '2021-08-14 12:55:28'),
(16, 'sdfsaf', 553534534, '', 'testsfsfs@test.com', 'MALE', 'af9f450c573a95ea55104bbea5528839361645', 0, 'PENDING', 'PENDING', '::1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'sdfafsf', 343243243242, '', 'dsfafas@fsFASF.COM', 'MALE', 'e5c016c36017d9d60b70971ee2906283527529', 1, 'PENDING', 'PENDING', '::1', '2021-08-25 18:08:00', '2021-08-25 18:08:00'),
(18, 'john', 23432432432, '', 'dsfsfds@dsfas.saf', 'MALE', '6a9fb603c3de7b37e18fb89f78ce8970279156', 1, 'PENDING', 'PENDING', '127.0.0.1', '2021-08-26 10:46:43', '2021-08-26 10:46:43'),
(19, 'johnn', 2131232, '', 'dsfdsfs@rewrdfaf.com', 'MALE', 'fee7054acb2203a283428f3d43ee10c2823059', 1, 'PENDING', 'PENDING', '127.0.0.1', '2021-08-26 10:58:07', '2021-08-26 10:58:07'),
(20, 'mike', 234324324, '', 'fsafs@dsafas.csa', 'MALE', '1b9b24f5c866d55c52d442e2ebef8648971379', 1, 'PENDING', 'PENDING', '127.0.0.1', '2021-08-26 11:31:00', '2021-08-26 11:31:00'),
(21, 'sfaf', 3432432432, '', 'sda@dsfasf.caof', 'MALE', '5c230adc837e8d9a602a69be903b973d458002', 1, 'PENDING', 'PENDING', '127.0.0.1', '2021-08-26 11:35:28', '2021-08-26 11:35:28'),
(22, 'sfasf', 1234567890, '', 'sfa@asdfa.com', 'MALE', 'cf4842e6a2acba09a91b3d8cc9c74928141167', 1, 'PENDING', 'PENDING', '127.0.0.1', '2021-08-26 11:44:43', '2021-08-26 11:44:43'),
(23, 'sfasfrewrewr', 1234563434, '', 'sf23213a@asdfa.com', 'MALE', '984bbed18378e3b3b853c35249c45b0b542464', 1, 'PENDING', 'PENDING', '127.0.0.1', '2021-08-26 11:47:27', '2021-08-26 11:47:27'),
(24, 'aman deep', 5555262622, '', 'amandeep@gmail.com', 'MALE', '0dc3d4a2a6fc446a1e6cc7a2be4c195d557930', 1, 'PENDING', 'PENDING', '127.0.0.1', '2021-08-26 11:51:20', '2021-08-26 11:51:20'),
(25, 'aman deep pp', 5555262611, '', 'amandeep1@gmail.com', 'MALE', '464aa70b5fdbee9199c9863f6d96b227742832', 1, 'PENDING', 'PENDING', '127.0.0.1', '2021-08-26 12:01:32', '2021-08-26 12:01:32'),
(26, 'john patric', 7777777777, '', 'johnpatric@gmail.com', 'MALE', '042b788ab3f65221653e63edd28c5fb3706378', 1, 'PENDING', 'PENDING', '127.0.0.1', '2021-08-26 12:08:57', '2021-08-26 12:08:57'),
(27, 'fsa sdf saf ', 64546435454, '', 'sdfasfs@dsfafd.com', 'MALE', 'e070c9c41ccb8bcd278f4473c4e64745805554', 1, 'PENDING', 'PENDING', '127.0.0.1', '2021-08-26 12:14:36', '2021-08-26 12:14:36'),
(28, 'tim pane', 42424432432, '', 'timpane@yopmail.com', 'MALE', '2766ac3cde860fb77c9cf7787fa47c33181393', 1, 'PENDING', 'PENDING', '127.0.0.1', '2021-08-26 13:30:35', '2021-08-26 13:30:35'),
(29, 'ggggg ggg', 6664444232, '', 'test@gsafas.com', 'MALE', 'ca5990feddc5bc012a1c2e8087315d1a788192', 1, 'PENDING', 'PENDING', '127.0.0.1', '2021-08-26 14:42:49', '2021-08-26 14:42:49'),
(30, 'fas as fafa', 3324324324, '', 'sfdafas@dsfa.sfa', 'MALE', 'b51089cdc0ae76b285f1b0fd33169b71866866', 1, 'PENDING', 'PENDING', '127.0.0.1', '2021-08-26 14:48:01', '2021-08-26 14:48:01'),
(31, 'martin sam', 8987893874, '', 'martin@yopmail.com', 'MALE', '40d33802ecab55cb29e2ebf4a4e5aa55788155', 1, 'PENDING', 'PENDING', '127.0.0.1', '2021-08-26 14:52:12', '2021-08-26 14:52:12'),
(32, 'guest product one', 8989898989, '', 'testuser@test.com', 'MALE', 'ed53e691ee322e24d8cc843fff68ebc6849378', 1, 'PENDING', 'PENDING', '::1', '2021-08-28 11:57:33', '2021-08-28 11:57:33'),
(33, 'cvxzvxczvxz', 232132222, '', 'dsfdsfds@dff.cas', 'MALE', 'e494f04804d6fc4a30099e81d9b53b9e991962', 1, 'PENDING', 'PENDING', '::1', '2021-08-28 12:29:06', '2021-08-28 12:29:06'),
(34, 'cvxzvxczvxz s s sa', 2321322323, '', 'dsfdsfdsdsasa@dff.cas', 'MALE', '631a8daa46d956d541dfb411b22274e3887506', 1, 'PENDING', 'PENDING', '::1', '2021-08-28 13:39:12', '2021-08-28 13:39:12'),
(35, 'gsgsgagsa gaga', 5334343433, '', 'rerersasa@dff.cas', 'MALE', '07b144b0989ee2852d3ac2fa52bc179d660167', 1, 'PENDING', 'PENDING', '::1', '2021-08-28 13:49:46', '2021-08-28 13:49:46'),
(36, 'fdgdsd gdsg d', 32432434324, '', 'wwefewrwfsff@dsfdsaf.com', 'MALE', '44700bdf5a980114598aa86555e852b8208588', 1, 'PENDING', 'PENDING', '::1', '2021-08-28 13:56:25', '2021-08-28 13:56:25'),
(37, 'fdgdsd gdsg d', 324323434, '', 'wwefewwewrwfsff@dsfdsaf.com', 'MALE', '22cec7d4fffb74b64c3d4fe60da4acf8840079', 1, 'PENDING', 'PENDING', '::1', '2021-08-28 13:59:49', '2021-08-28 13:59:49'),
(38, 'fdgdsd gdsg d', 656565565, '', 'fdgdbsff@dsfdsaf.com', 'MALE', '7528cad73834fe5ef0394aa2b21ffd99946221', 1, 'PENDING', 'PENDING', '::1', '2021-08-28 14:02:14', '2021-08-28 14:02:14'),
(39, 'fdgdsd gdsg d', 756456565, '', '3432ff@dsfdsaf.com', 'MALE', '59e94a979c7b0658ae088f219a6f451a190732', 1, 'PENDING', 'PENDING', '::1', '2021-08-28 14:04:58', '2021-08-28 14:04:58'),
(40, 'fdgdsd gdsg d', 8786575675, '', '75745ff@dsfdsaf.com', 'MALE', '92eb9cb47ff1f787ac5ef5405966303a400268', 1, 'PENDING', 'PENDING', '::1', '2021-08-28 14:07:32', '2021-08-28 14:07:32'),
(41, 'etetete', 5345435443, '', 'reerterw@rgre.com', 'MALE', 'be67578f1cf212a4074bf36797ec1aa2499230', 1, 'PENDING', 'PENDING', '::1', '2021-08-28 14:15:54', '2021-08-28 14:15:54'),
(42, 'etetete', 534543433, '', 'eeerewr@rgre.com', 'MALE', 'bbba2c6772a398faa03febf72b85b06f740547', 1, 'PENDING', 'PENDING', '::1', '2021-08-28 14:20:02', '2021-08-28 14:20:02'),
(43, 'eteteteewtwe w', 324324324, '', 'rewerwvwerw3r@rgre.com', 'MALE', '1b1398ff6a2eacb7e77fd96c4cd9d37b809300', 1, 'PENDING', 'PENDING', '::1', '2021-08-28 14:22:25', '2021-08-28 14:22:25'),
(44, 'tsr sdfasfd', 9807654323, '', 'testYYYY@yopmail.com', 'MALE', 'a3669b21a6668ee2be20d90b4dea9324502664', 0, 'PENDING', 'PENDING', '::1', '2021-08-31 16:56:07', '2021-08-31 16:56:07'),
(45, 'RFA AR  ', 4356436435, '', 'test_yyyy@yopmail.com', 'MALE', '23c26f94488a8b49ca8c8ed93f486ceb283335', 0, 'PENDING', 'PENDING', '::1', '2021-08-31 17:06:04', '2021-08-31 17:06:04'),
(46, 'gafas', 234432432, '', 'erew@efsfa.com', 'MALE', '62666667469f5d5935d55cd818bf7e12932895', 1, 'PENDING', 'PENDING', '::1', '2021-09-01 10:43:17', '2021-09-01 10:43:17'),
(47, 'rtdg', 9879847982, '', 'test@test.com', 'MALE', 'b642b4217b34b1e8d3bd915fc65c4452704022', 1, 'PENDING', 'PENDING', '::1', '2021-09-01 10:47:50', '2021-09-01 10:47:50'),
(49, 'rtdg', 9079847982, '', 'test2221@test.com', 'MALE', '90955d3d4ad26bec9f6e8258ddc56386987147', 1, 'PENDING', 'PENDING', '::1', '2021-09-01 11:06:47', '2021-09-01 11:06:47'),
(53, 'sdfad ad gaf ', 1212121212, '', 'dsfsfsa@yopmail.com', 'MALE', '6a29079c0172aba307a22c7df2da8e1e749437', 1, 'PENDING', 'PENDING', '::1', '2021-09-01 11:22:54', '2021-09-01 11:22:54'),
(54, 'tea dfa ', 4334343433, '', 'fafafaf@yopmail.com', 'MALE', '25c51ff3d6b9425220b529839e83739e560910', 1, 'PENDING', 'PENDING', '::1', '2021-09-01 11:30:25', '2021-09-01 11:30:25'),
(55, 'skfjakfjkf fa dsaf', 8798762345, '', 'sdsafsa@yopmail.com', 'MALE', 'e297b51a888056111cb8c5c59770cc9e990401', 1, 'PENDING', 'PENDING', '::1', '2021-09-01 12:20:08', '2021-09-01 12:20:08'),
(56, 'ffasfasfd', 3443434343, '', 'sfdaffdsaf@sdfas.com', 'MALE', '7cd3c62489c50594ad9e3be8bd2387d4273648', 1, 'PENDING', 'PENDING', '::1', '2021-09-01 13:18:10', '2021-09-01 13:18:10'),
(57, 'fdsa fas asf as', 3243243243, '', 'fdsafsafs@yopmail.com', 'MALE', 'f3d9c46c2f735951c8ad14db542ecf09499415', 1, 'PENDING', 'PENDING', '::1', '2021-09-01 15:04:21', '2021-09-01 15:04:21'),
(58, 'dsfgsa a fsf', 8787878787, '', 'sfdasfasfd@yopmail.com', 'MALE', 'a45e78c2c8cdc25a8ba77fc400bf01c9595832', 1, 'PENDING', 'PENDING', '::1', '2021-09-01 15:06:39', '2021-09-01 15:06:39'),
(59, 'sfdasfs  sfasf', 3324343333, '', 'fafessfdsa@yopmail.com', 'MALE', 'fc4445639798ac05def61815f724bc62227362', 1, 'PENDING', 'PENDING', '::1', '2021-09-01 16:53:30', '2021-09-01 16:53:30'),
(60, 'sfdsa fsafd af', 3324343242, '', 'esdfsaf@test.com', 'MALE', '6b65fc9725950f8097832d959efce0c6889831', 1, 'PENDING', 'PENDING', '::1', '2021-09-01 17:00:57', '2021-09-01 17:00:57'),
(61, 'sfsaf ds fasfd', 3324366666, '', 'sfasfdsaf@yopmail.com', 'MALE', '2996423375f361b70240e5cb2f7594e4121400', 1, 'PENDING', 'PENDING', '::1', '2021-09-01 17:03:42', '2021-09-01 17:03:42'),
(62, 'wqrewqrvqew rwer', 2123432345, '', 'fafasf@yopmail.com', 'MALE', 'bf159b52914cc6ff6e7819392770e2e1629056', 1, 'PENDING', 'PENDING', '::1', '2021-09-01 17:13:07', '2021-09-01 17:13:07'),
(63, 'yuytutu rstry', 8786545678, '', 'iuikf@yopmail.com', 'MALE', '518f77480606b55f755980b357db2b37959226', 1, 'PENDING', 'PENDING', '::1', '2021-09-01 17:15:41', '2021-09-01 17:15:41'),
(64, 'qrewr weq', 6564433221, '', 'cvzxv@test.com', 'MALE', '065c0eb95660eeb5534af131f9a67718308660', 1, 'PENDING', 'PENDING', '::1', '2021-09-01 17:25:37', '2021-09-01 17:25:37'),
(65, 'sfdas sfda dsaf', 9090890989, '', 'sdfafsd@test.com', 'MALE', '9a9f6d87aec3b983b5f25dfdbf1dd3ea349978', 1, 'PENDING', 'PENDING', '::1', '2021-09-01 17:27:01', '2021-09-01 17:27:01');

-- --------------------------------------------------------

--
-- Table structure for table `customers_reviews`
--

CREATE TABLE `customers_reviews` (
  `review_id` bigint(20) NOT NULL,
  `customer_id` bigint(20) NOT NULL,
  `salon_id` bigint(20) NOT NULL DEFAULT 0,
  `stylist_id` bigint(20) NOT NULL DEFAULT 0,
  `product_id` bigint(20) NOT NULL DEFAULT 0,
  `package_id` bigint(20) NOT NULL,
  `service_id` bigint(20) NOT NULL,
  `ratings` decimal(10,2) NOT NULL,
  `reviews` text NOT NULL,
  `is_active` tinyint(1) NOT NULL COMMENT '0=>pending,1=>approved,2=>disapproved',
  `created_on` varchar(40) NOT NULL,
  `updated_on` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers_reviews`
--

INSERT INTO `customers_reviews` (`review_id`, `customer_id`, `salon_id`, `stylist_id`, `product_id`, `package_id`, `service_id`, `ratings`, `reviews`, `is_active`, `created_on`, `updated_on`) VALUES
(1, 2, 5, 0, 0, 0, 0, '2.00', 'Test review created', 1, '2020-12-03 16:02:03', '2020-12-03 16:02:03'),
(2, 1, 5, 0, 0, 0, 0, '3.00', 'A review is an evaluation of a publication, service, or company such as a movie, video game, musical composition', 1, '2020-12-04 11:07:52', '2020-12-04 11:07:52'),
(3, 5, 4, 0, 0, 0, 0, '3.50', 'testing', 1, '05-08-2021', '05-08-2021'),
(4, 5, 0, 0, 0, 1, 0, '3.50', 'testing', 1, '05-08-2021', '05-08-2021'),
(5, 2, 0, 0, 0, 1, 0, '3.00', 'testa rating test rating', 1, '08-12-2021', '08-12-2021'),
(6, 5, 0, 0, 1, 0, 0, '3.00', 'cxvcxvcxcxv d  sf ds  ss', 1, '08-12-2021', '08-12-2021'),
(7, 5, 0, 0, 3, 0, 0, '1.00', 'test review', 1, '09-12-2021', '09-12-2021'),
(8, 5, 0, 2, 0, 0, 0, '3.00', 'test review', 1, '09-12-2021', '09-12-2021'),
(9, 5, 0, 0, 0, 0, 3, '3.00', 'test review', 1, '09-12-2021', '09-12-2021'),
(10, 5, 0, 0, 0, 0, 4, '3.00', 'test review', 1, '09-12-2021', '09-12-2021'),
(11, 5, 0, 0, 0, 0, 13, '3.00', 'test review review', 1, '09-12-2021', '09-12-2021'),
(12, 5, 0, 0, 0, 0, 74, '4.00', 'dfsg fds gd', 1, '14-12-2021', '14-12-2021'),
(13, 2, 0, 0, 0, 0, 74, '2.00', 'dfsg fds gd', 1, '14-12-2021', '14-12-2021'),
(14, 2, 1, 0, 0, 0, 74, '3.00', 'dfsg fds gd', 1, '14-12-2021', '14-12-2021'),
(15, 5, 1, 0, 0, 0, 0, '4.50', 'zcscsa as d ad a', 1, '15-12-2021', '15-12-2021'),
(22, 5, 0, 0, 0, 2, 0, '4.00', 'sdfa dsa fasd fs', 1, '17-12-2021', '17-12-2021'),
(21, 5, 31, 0, 0, 0, 0, '5.00', 'xcvzxzv fd a da ', 1, '17-12-2021', '2021-12-23 17:55:41'),
(20, 5, 0, 11, 0, 0, 0, '4.00', 'sdfsa sd fas', 1, '17-12-2021', '17-12-2021'),
(23, 5, 0, 0, 5, 0, 0, '5.00', 'sd fasadsads', 1, '17-12-2021', '17-12-2021'),
(24, 5, 0, 0, 0, 0, 14, '5.00', 'dfg dfg fds g', 1, '17-12-2021', '17-12-2021'),
(25, 5, 0, 0, 0, 0, 1, '5.00', 'test', 1, '17-12-2021', '17-12-2021');

-- --------------------------------------------------------

--
-- Table structure for table `customer_order`
--

CREATE TABLE `customer_order` (
  `order_id` int(11) NOT NULL,
  `order_code` varchar(50) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_type` enum('DELIVERY','PICKUP') NOT NULL,
  `address_id` int(11) NOT NULL DEFAULT 0,
  `order_date` date NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `customer_email` varchar(100) NOT NULL,
  `customer_mobile` varchar(20) NOT NULL,
  `pickup_date` date DEFAULT NULL,
  `cart_total` decimal(10,2) NOT NULL,
  `sub_total` decimal(10,2) NOT NULL DEFAULT 0.00,
  `discount_percentage` decimal(10,2) NOT NULL,
  `discounted_amount` decimal(10,2) NOT NULL,
  `delivery_charges` decimal(10,2) NOT NULL DEFAULT 0.00,
  `taxes` decimal(10,2) NOT NULL,
  `applied_coupon` varchar(50) DEFAULT 'NA',
  `final_amount` decimal(10,2) NOT NULL,
  `order_note` varchar(300) NOT NULL,
  `payment_type` enum('PREPAID','COD') NOT NULL DEFAULT 'COD',
  `payment_status` enum('PENDING','PAID','RETURN INITIATED') NOT NULL DEFAULT 'PENDING',
  `transaction_id` varchar(50) NOT NULL DEFAULT '0',
  `order_status` enum('PENDING','ACCEPTED','REJECTED','DISPATCHED','DELIVERED','RETURN','EXCHANGE','COMPLETED') NOT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_order`
--

INSERT INTO `customer_order` (`order_id`, `order_code`, `customer_id`, `order_type`, `address_id`, `order_date`, `customer_name`, `customer_email`, `customer_mobile`, `pickup_date`, `cart_total`, `sub_total`, `discount_percentage`, `discounted_amount`, `delivery_charges`, `taxes`, `applied_coupon`, `final_amount`, `order_note`, `payment_type`, `payment_status`, `transaction_id`, `order_status`, `created_on`, `updated_on`) VALUES
(1, 'MSD/ORD-5/1616584288', 5, 'DELIVERY', 1, '2021-03-24', 'Customer One', 'customer_one@yopmail.com', '9000001010', '0000-00-00', '6250.00', '5000.00', '0.00', '0.00', '0.00', '0.00', 'NA', '5000.00', '', 'PREPAID', 'PENDING', '0', 'DELIVERED', '2021-03-24 16:41:28', '2021-08-13 11:50:58'),
(10, 'MSD/ORD-8/1620898024', 8, 'DELIVERY', 6, '2021-05-13', 'Ranjeet Kumar', 'ranjeet.kumar@maisondauraine.com', '0', '0000-00-00', '1700.00', '1500.00', '0.00', '0.00', '0.00', '0.00', 'NA', '1500.00', '', 'PREPAID', 'PENDING', '0', 'PENDING', '2021-05-13 14:57:04', '2021-05-13 14:57:04'),
(9, 'MSD/ORD-5/1620385940', 5, 'DELIVERY', 5, '2021-05-07', 'customer one', 'customer_one@yopmail.com', '9712389831', '0000-00-00', '7500.00', '6000.00', '0.00', '0.00', '0.00', '0.00', 'NA', '6000.00', '', 'PREPAID', 'PENDING', '0', 'ACCEPTED', '2021-05-07 16:42:20', '2021-08-16 15:18:10'),
(4, 'MSD/ORD-5/1616589920', 5, 'DELIVERY', 1, '2021-03-24', 'Customer One', 'customer_one@yopmail.com', '9000001010', '0000-00-00', '1800.00', '1600.00', '0.00', '0.00', '0.00', '0.00', 'NA', '1600.00', '', 'COD', 'PENDING', '0', 'PENDING', '2021-03-24 18:15:20', '2021-03-24 18:15:20'),
(5, 'MSD/ORD-6/1616590342', 6, 'DELIVERY', 2, '2021-03-24', 'Customer Two', 'customer_two@yopmail.com', '1111111111', '0000-00-00', '3600.00', '3200.00', '0.00', '0.00', '0.00', '0.00', 'NA', '3200.00', '', 'COD', 'PENDING', '0', 'PENDING', '2021-03-24 18:22:22', '2021-03-24 18:22:22'),
(6, 'MSD/ORD-5/1616649511', 5, 'DELIVERY', 1, '2021-03-25', 'Customer One', 'customer_one@yopmail.com', '9000001010', '0000-00-00', '6250.00', '5000.00', '0.00', '0.00', '0.00', '0.00', 'NA', '5000.00', '', 'PREPAID', 'PENDING', '0', 'PENDING', '2021-03-25 10:48:31', '2021-03-25 10:48:31'),
(7, 'MSD/ORD-2/1619004988', 2, 'DELIVERY', 3, '2021-04-21', 'IT Department', 'it@maisondauraine.com', '0', '0000-00-00', '12500.00', '10000.00', '0.00', '0.00', '0.00', '0.00', 'NA', '10000.00', '', 'PREPAID', 'PENDING', '0', 'REJECTED', '2021-04-21 17:06:28', '2021-08-16 15:17:46'),
(8, 'MSD/ORD-2/1619005136', 2, 'DELIVERY', 3, '2021-04-21', 'IT Department', 'it@maisondauraine.com', '0', '0000-00-00', '12500.00', '10000.00', '0.00', '0.00', '0.00', '0.00', 'NA', '10000.00', '', 'COD', 'PENDING', '0', 'PENDING', '2021-04-21 17:08:56', '2021-04-21 17:08:56'),
(38, 'MSD/ORD-5/1621251372', 5, 'DELIVERY', 5, '2021-05-17', 'customer one', 'customer_one@yopmail.com', '9712389831', '0000-00-00', '25000.00', '20000.00', '0.00', '0.00', '0.00', '0.00', 'NA', '20000.00', '', 'COD', 'PENDING', '0', 'PENDING', '2021-05-17 17:06:12', '2021-05-17 17:06:12'),
(37, 'MSD/ORD-5/1621251164', 5, 'DELIVERY', 5, '2021-05-17', 'customer one', 'customer_one@yopmail.com', '9712389831', '0000-00-00', '12500.00', '10000.00', '0.00', '0.00', '0.00', '0.00', 'NA', '10000.00', '', 'COD', 'PENDING', '0', 'DELIVERED', '2021-05-17 17:02:44', '2021-05-17 17:02:44'),
(39, 'MSD/ORD-5/1621578306', 5, 'DELIVERY', 5, '2021-05-21', 'customer one', 'customer_one@yopmail.com', '9712389831', '0000-00-00', '16300.00', '11500.00', '0.00', '0.00', '0.00', '0.00', 'NA', '11500.00', '', 'COD', 'PENDING', '0', 'REJECTED', '2021-05-21 11:55:06', '2021-08-16 15:22:13'),
(28, 'MSD/ORD-5/1621250936', 5, 'DELIVERY', 5, '2021-05-17', 'customer one', 'customer_one@yopmail.com', '9712389831', '0000-00-00', '3750.00', '3000.00', '0.00', '0.00', '0.00', '0.00', 'NA', '3000.00', '', 'COD', 'PENDING', '0', 'DELIVERED', '2021-05-17 16:58:56', '2021-05-17 16:58:56'),
(40, 'MSD/ORD-5/1628144132', 5, 'DELIVERY', 5, '2021-08-05', 'customer one', 'customer_one@yopmail.com', '9712389831', '0000-00-00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 'NA', '0.00', '', 'PREPAID', 'PENDING', '0', 'PENDING', '2021-08-05 11:45:32', '2021-08-05 11:45:32'),
(41, 'MSD/ORD-5/1628242619', 5, 'DELIVERY', 5, '2021-08-06', 'customer one', 'customer_one@yopmail.com', '9712389831', '0000-00-00', '2850.00', '1000.00', '0.00', '0.00', '0.00', '0.00', 'NA', '3398.00', '', 'PREPAID', 'PENDING', '0', 'PENDING', '2021-08-06 15:06:59', '2021-08-06 15:06:59'),
(42, 'MSD/ORD-5/1628242642', 5, 'DELIVERY', 5, '2021-08-06', 'customer one', 'customer_one@yopmail.com', '9712389831', '0000-00-00', '1600.00', '0.00', '0.00', '0.00', '0.00', '0.00', 'NA', '2398.00', '', 'COD', 'PENDING', '0', 'PENDING', '2021-08-06 15:07:22', '2021-08-06 15:07:22'),
(43, 'MSD/ORD-5/1628575166', 5, 'DELIVERY', 5, '2021-08-10', 'customer one', 'customer_one@yopmail.com', '9712389831', '0000-00-00', '3600.00', '0.00', '0.00', '0.00', '0.00', '0.00', 'NA', '2398.00', '', 'PREPAID', 'PENDING', '0', 'PENDING', '2021-08-10 11:29:26', '2021-08-10 11:29:26'),
(44, 'MSD/ORD-5/1628588854', 5, 'DELIVERY', 5, '2021-08-10', 'customer one', 'customer_one@yopmail.com', '9712389831', '0000-00-00', '12400.00', '0.00', '0.00', '0.00', '0.00', '0.00', 'NA', '7294.00', '', 'PREPAID', 'PENDING', '0', 'PENDING', '2021-08-10 15:17:34', '2021-08-10 15:17:34'),
(45, 'MSD/ORD-5/1628680730', 5, 'DELIVERY', 5, '2021-08-11', 'customer one', 'customer_one@yopmail.com', '9712389831', '0000-00-00', '16000.00', '10000.00', '0.00', '0.00', '0.00', '0.00', 'NA', '12498.00', '', 'PREPAID', 'PENDING', '0', 'REJECTED', '2021-08-11 16:48:50', '2021-08-16 15:33:18'),
(46, 'MSD/ORD-15/1628934616', 15, 'DELIVERY', 7, '2021-08-14', 'Ranjeet', 'ranjeet@test.com', '9555683429', '0000-00-00', '2000.00', '1500.00', '0.00', '0.00', '0.00', '0.00', 'NA', '1500.00', '', 'COD', 'PENDING', '0', 'PENDING', '2021-08-14 15:20:16', '2021-08-14 15:20:16'),
(47, 'MSD/ORD-15/1628934692', 15, 'DELIVERY', 7, '2021-08-14', 'Ranjeet', 'ranjeet@test.com', '9555683429', '0000-00-00', '1700.00', '0.00', '0.00', '0.00', '0.00', '0.00', 'NA', '1099.00', '', 'PREPAID', 'PENDING', '0', 'PENDING', '2021-08-14 15:21:32', '2021-08-14 15:21:32'),
(48, 'MSD/ORD-15/1628934704', 15, 'DELIVERY', 7, '2021-08-14', 'Ranjeet', 'ranjeet@test.com', '9555683429', '0000-00-00', '1700.00', '0.00', '0.00', '0.00', '0.00', '0.00', 'NA', '1099.00', '', 'COD', 'PENDING', '0', 'PENDING', '2021-08-14 15:21:44', '2021-08-14 15:21:44'),
(49, 'MSD/ORD-5/1629179156', 5, 'DELIVERY', 5, '2021-08-17', 'customer one', 'customer_one@yopmail.com', '9712389831', '0000-00-00', '3700.00', '1500.00', '0.00', '0.00', '0.00', '0.00', 'NA', '2799.00', '', 'PREPAID', 'PENDING', '0', 'PENDING', '2021-08-17 11:15:56', '2021-08-17 11:15:56'),
(50, 'MSD/ORD-5/1629179171', 5, 'DELIVERY', 5, '2021-08-17', 'customer one', 'customer_one@yopmail.com', '9712389831', '0000-00-00', '1700.00', '0.00', '0.00', '0.00', '0.00', '0.00', 'NA', '1299.00', '', 'COD', 'PENDING', '0', 'PENDING', '2021-08-17 11:16:11', '2021-08-17 11:16:11'),
(51, 'MSD/ORD-5/1629179396', 5, 'DELIVERY', 5, '2021-08-17', 'customer one', 'customer_one@yopmail.com', '9712389831', '0000-00-00', '2950.00', '1000.00', '0.00', '0.00', '0.00', '0.00', 'NA', '2299.00', '', 'COD', 'PENDING', '0', 'PENDING', '2021-08-17 11:19:56', '2021-08-17 11:19:56'),
(52, 'MSD/ORD-5/1629784588', 5, 'DELIVERY', 5, '2021-08-24', 'customer one', 'customer_one@yopmail.com', '9712389831', '0000-00-00', '10150.00', '6000.00', '0.00', '0.00', '0.00', '0.00', 'NA', '8460.00', '', 'PREPAID', 'PENDING', '0', 'PENDING', '2021-08-24 11:26:28', '2021-08-24 11:26:28'),
(53, 'MSD/ORD-5/1629785544', 5, 'DELIVERY', 5, '2021-08-24', 'customer one', 'customer_one@yopmail.com', '9712389831', '0000-00-00', '5900.00', '3700.00', '0.00', '0.00', '0.00', '0.00', 'NA', '4330.00', '', 'COD', 'PENDING', '0', 'PENDING', '2021-08-24 11:42:24', '2021-08-24 11:42:24'),
(54, 'MSD/ORD-5/1629785799', 5, 'DELIVERY', 5, '2021-08-24', 'customer one', 'customer_one@yopmail.com', '9712389831', '0000-00-00', '8350.00', '6200.00', '0.00', '0.00', '0.00', '0.00', 'NA', '7280.00', '', 'PREPAID', 'PENDING', '0', 'PENDING', '2021-08-24 11:46:39', '2021-08-24 11:46:39'),
(55, 'MSD/ORD-32/1630132053', 32, '', 24, '2021-08-28', 'guest product one', 'testuser@test.com', '8989898989', '0000-00-00', '9050.00', '7100.00', '0.00', '0.00', '0.00', '0.00', 'NA', '8360.00', '', 'COD', 'PENDING', '0', 'PENDING', '2021-08-28 11:57:33', '2021-08-28 11:57:33'),
(56, 'MSD/ORD-35/1630138787', 35, 'DELIVERY', 27, '2021-08-28', 'gsgsgagsa gaga', 'rerersasa@dff.cas', '5334343433', '0000-00-00', '4500.00', '3200.00', '0.00', '0.00', '0.00', '0.00', 'NA', '3758.00', '', 'COD', 'PENDING', '0', 'PENDING', '2021-08-28 13:49:46', '2021-08-28 13:49:46'),
(57, 'MSD/ORD-40/1630139852', 40, 'DELIVERY', 32, '2021-08-28', 'fdgdsd gdsg d', '75745ff@dsfdsaf.com', '8786575675', '0000-00-00', '9350.00', '7100.00', '0.00', '0.00', '0.00', '0.00', 'NA', '8360.00', '', 'COD', 'PENDING', '0', 'PENDING', '2021-08-28 14:07:32', '2021-08-28 14:07:32'),
(58, 'MSD/ORD-41/1630140354', 41, 'DELIVERY', 33, '2021-08-28', 'etetete', 'reerterw@rgre.com', '5345435443', '0000-00-00', '9600.00', '7200.00', '0.00', '0.00', '0.00', '0.00', 'NA', '8460.00', '', 'COD', 'PENDING', '0', 'PENDING', '2021-08-28 14:15:54', '2021-08-28 14:15:54'),
(59, 'MSD/ORD-43/1630140745', 43, 'DELIVERY', 35, '2021-08-28', 'eteteteewtwe w', 'rewerwvwerw3r@rgre.com', '324324324', '0000-00-00', '9600.00', '7200.00', '0.00', '0.00', '0.00', '0.00', 'NA', '8460.00', '', 'COD', 'PENDING', '0', 'PENDING', '2021-08-28 14:22:25', '2021-08-28 14:22:25'),
(60, 'MSD/ORD-43/1630142538', 43, 'DELIVERY', 35, '2021-08-28', 'eteteteewtwe w', 'rewerwvwerw3r@rgre.com', '324324324', '0000-00-00', '19200.00', '14400.00', '0.00', '0.00', '0.00', '500.00', 'NA', '16920.00', '', 'COD', 'PENDING', '0', 'PENDING', '2021-08-28 14:52:18', '2021-08-28 14:52:18'),
(61, 'MSD/ORD-43/1630147356', 43, 'DELIVERY', 35, '2021-08-28', 'eteteteewtwe w', 'rewerwvwerw3r@rgre.com', '324324324', NULL, '2700.00', '1600.00', '0.00', '0.00', '0.00', '270.00', 'NA', '1870.00', '', 'COD', 'PENDING', '0', 'PENDING', '2021-08-28 16:12:36', '2021-08-28 16:12:36'),
(62, 'MSD/ORD-5/1630913668', 5, 'DELIVERY', 36, '2021-09-06', 'customer one', 'customer_one@yopmail.com', '9712389831', NULL, '10650.00', '7600.00', '0.00', '0.00', '0.00', '1350.00', 'NA', '8950.00', '', 'PREPAID', 'PENDING', '0', 'PENDING', '2021-09-06 13:04:28', '2021-09-06 13:04:28'),
(63, 'MSD/ORD-5/1630914066', 5, 'DELIVERY', 36, '2021-09-06', 'customer one', 'customer_one@yopmail.com', '9712389831', NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 'NA', '0.00', '', 'PREPAID', 'PENDING', '0', 'PENDING', '2021-09-06 13:11:06', '2021-09-06 13:11:06'),
(64, 'MSD/ORD-5/1630914081', 5, 'DELIVERY', 36, '2021-09-06', 'customer one', 'customer_one@yopmail.com', '9712389831', NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 'NA', '0.00', '', 'PREPAID', 'PENDING', '0', 'PENDING', '2021-09-06 13:11:21', '2021-09-06 13:11:21'),
(65, 'MSD/ORD-5/1630914133', 5, 'DELIVERY', 36, '2021-09-06', 'customer one', 'customer_one@yopmail.com', '9712389831', NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 'NA', '0.00', '', 'PREPAID', 'PENDING', '0', 'PENDING', '2021-09-06 13:12:13', '2021-09-06 13:12:13'),
(66, 'MSD/ORD-5/1630914158', 5, 'DELIVERY', 36, '2021-09-06', 'customer one', 'customer_one@yopmail.com', '9712389831', NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 'NA', '0.00', '', 'PREPAID', 'PENDING', '0', 'PENDING', '2021-09-06 13:12:38', '2021-09-06 13:12:38'),
(67, 'MSD/ORD-5/1630914210', 5, 'DELIVERY', 36, '2021-09-06', 'customer one', 'customer_one@yopmail.com', '9712389831', NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 'NA', '0.00', '', 'PREPAID', 'PENDING', '0', 'PENDING', '2021-09-06 13:13:30', '2021-09-06 13:13:30'),
(68, 'MSD/ORD-5/1630914238', 5, 'DELIVERY', 36, '2021-09-06', 'customer one', 'customer_one@yopmail.com', '9712389831', NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 'NA', '0.00', '', 'PREPAID', 'PENDING', '0', 'PENDING', '2021-09-06 13:13:58', '2021-09-06 13:13:58'),
(69, 'MSD/ORD-5/1630914819', 5, 'DELIVERY', 36, '2021-09-06', 'customer one', 'customer_one@yopmail.com', '9712389831', NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 'NA', '0.00', '', 'PREPAID', 'PENDING', '0', 'PENDING', '2021-09-06 13:23:39', '2021-09-06 13:23:39'),
(70, 'MSD/ORD-5/1630914843', 5, 'DELIVERY', 36, '2021-09-06', 'customer one', 'customer_one@yopmail.com', '9712389831', NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 'NA', '0.00', '', 'PREPAID', 'PENDING', '0', 'PENDING', '2021-09-06 13:24:03', '2021-09-06 13:24:03'),
(71, 'MSD/ORD-5/1630915153', 5, 'DELIVERY', 36, '2021-09-06', 'customer one', 'customer_one@yopmail.com', '9712389831', NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 'NA', '0.00', '', 'PREPAID', 'PENDING', '0', 'PENDING', '2021-09-06 13:29:13', '2021-09-06 13:29:13'),
(72, 'MSD/ORD-5/1630919264', 5, 'DELIVERY', 36, '2021-09-06', 'customer one', 'customer_one@yopmail.com', '9712389831', NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 'NA', '0.00', '', 'PREPAID', 'PENDING', '0', 'PENDING', '2021-09-06 14:37:44', '2021-09-06 14:37:44'),
(73, 'MSD/ORD-5/1630920754', 5, 'DELIVERY', 36, '2021-09-06', 'customer one', 'customer_one@yopmail.com', '9712389831', NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 'NA', '0.00', '', 'PREPAID', 'PENDING', '0', 'PENDING', '2021-09-06 15:02:34', '2021-09-06 15:02:34'),
(74, 'MSD/ORD-5/1630921580', 5, 'DELIVERY', 36, '2021-09-06', 'customer one', 'customer_one@yopmail.com', '9712389831', NULL, '1700.00', '1000.00', '0.00', '0.00', '0.00', '180.00', 'NA', '1180.00', '', 'PREPAID', 'PENDING', '0', 'PENDING', '2021-09-06 15:16:20', '2021-09-06 15:16:20'),
(75, 'MSD/ORD-5/1630921839', 5, 'DELIVERY', 36, '2021-09-06', 'customer one', 'customer_one@yopmail.com', '9712389831', NULL, '2100.00', '1200.00', '0.00', '0.00', '0.00', '180.00', 'NA', '1380.00', '', 'PREPAID', 'PENDING', '0', 'PENDING', '2021-09-06 15:20:39', '2021-09-06 15:20:39');

-- --------------------------------------------------------

--
-- Table structure for table `customer_order_items`
--

CREATE TABLE `customer_order_items` (
  `item_id` int(11) NOT NULL,
  `order_code` varchar(50) NOT NULL,
  `product_id` int(11) NOT NULL,
  `order_quantity` int(11) NOT NULL,
  `product_price` decimal(10,2) NOT NULL,
  `discount_percentage` decimal(10,2) NOT NULL,
  `discounted_amount` decimal(10,2) NOT NULL,
  `sub_total` decimal(10,2) NOT NULL,
  `fulfill_by` varchar(50) NOT NULL,
  `delivery_status` enum('PENDING','DISPATCHED','DELIVERED','HANDOVER','RETURN','CANCEL') NOT NULL DEFAULT 'PENDING',
  `seller_status` enum('PENDING','ACCEPTED','REJECTED') NOT NULL DEFAULT 'PENDING',
  `updated_on` datetime NOT NULL,
  `return_reason` varchar(255) DEFAULT NULL,
  `return_comments` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_order_items`
--

INSERT INTO `customer_order_items` (`item_id`, `order_code`, `product_id`, `order_quantity`, `product_price`, `discount_percentage`, `discounted_amount`, `sub_total`, `fulfill_by`, `delivery_status`, `seller_status`, `updated_on`, `return_reason`, `return_comments`) VALUES
(1, 'MSD/ORD-5/1616584288', 3, 1, '6250.00', '0.00', '5000.00', '5000.00', 'MSDDEC20/041053/XYRFR', 'DELIVERED', 'ACCEPTED', '2021-08-13 11:50:58', NULL, NULL),
(2, 'MSD/ORD-5/1616589920', 2, 1, '1800.00', '0.00', '1600.00', '1600.00', 'MSDMAR21/221151/NM5GA', 'PENDING', 'PENDING', '2021-03-24 18:15:20', NULL, NULL),
(3, 'MSD/ORD-6/1616590342', 2, 2, '1800.00', '0.00', '1600.00', '3200.00', 'MSDMAR21/221151/NM5GA', 'PENDING', 'ACCEPTED', '2021-08-14 14:34:05', NULL, NULL),
(4, 'MSD/ORD-5/1616649511', 3, 1, '6250.00', '0.00', '5000.00', '5000.00', 'MSDDEC20/041053/XYRFR', 'PENDING', 'PENDING', '2021-03-25 10:48:31', NULL, NULL),
(5, 'MSD/ORD-2/1619004988', 4, 2, '6250.00', '0.00', '5000.00', '10000.00', 'MSDDEC20/041053/XYRFR', 'PENDING', 'REJECTED', '2021-08-16 15:17:46', NULL, NULL),
(6, 'MSD/ORD-5/1620385940', 5, 1, '1250.00', '0.00', '1000.00', '1000.00', 'MSDDEC20/041147/H5AHI', 'PENDING', 'PENDING', '2021-05-21 11:37:25', NULL, NULL),
(7, 'MSD/ORD-5/1620385940', 3, 1, '6250.00', '0.00', '5000.00', '5000.00', 'MSDDEC20/041053/XYRFR', 'PENDING', 'ACCEPTED', '2021-08-16 15:18:10', NULL, NULL),
(13, 'MSD/ORD-5/1621251372', 4, 4, '6250.00', '0.00', '5000.00', '20000.00', 'MSDDEC20/041053/XYRFR', 'PENDING', 'PENDING', '2021-05-17 17:06:12', NULL, NULL),
(12, 'MSD/ORD-5/1621251164', 4, 2, '6250.00', '0.00', '5000.00', '10000.00', 'MSDDEC20/041053/XYRFR', 'RETURN', 'PENDING', '2021-05-21 11:49:09', 'Item was missing from the package', 'test comments'),
(11, 'MSD/ORD-5/1621250936', 5, 3, '1250.00', '0.00', '1000.00', '3000.00', 'MSDDEC20/041147/H5AHI', 'PENDING', 'PENDING', '2021-05-21 11:45:10', NULL, NULL),
(14, 'MSD/ORD-5/1621578306', 6, 1, '2000.00', '0.00', '1500.00', '1500.00', 'MSDDEC20/041147/H5AHI', 'PENDING', 'PENDING', '2021-05-21 11:55:06', NULL, NULL),
(15, 'MSD/ORD-5/1621578306', 4, 2, '6250.00', '0.00', '5000.00', '10000.00', 'MSDDEC20/041053/XYRFR', 'PENDING', 'REJECTED', '2021-08-16 15:22:13', NULL, NULL),
(17, 'MSD/ORD-5/1628242619', 5, 1, '1250.00', '0.00', '1000.00', '1000.00', 'MSDDEC20/041147/H5AHI', 'PENDING', 'PENDING', '2021-08-06 15:06:59', NULL, NULL),
(18, 'MSD/ORD-5/1628588854', 1, 1, '1700.00', '0.00', '0.00', '0.00', 'MSDMAR21/161519/G150M', 'PENDING', 'PENDING', '2021-08-10 15:17:34', NULL, NULL),
(19, 'MSD/ORD-5/1628680730', 4, 2, '6250.00', '0.00', '5000.00', '10000.00', 'MSDDEC20/041053/XYRFR', 'PENDING', 'REJECTED', '2021-08-16 15:33:18', NULL, NULL),
(20, 'MSD/ORD-15/1628934616', 6, 1, '2000.00', '0.00', '1500.00', '1500.00', 'MSDDEC20/041147/H5AHI', 'PENDING', 'PENDING', '2021-08-14 15:20:16', NULL, NULL),
(21, 'MSD/ORD-5/1629179156', 6, 1, '2000.00', '0.00', '1500.00', '1500.00', 'MSDDEC20/041147/H5AHI', 'PENDING', 'PENDING', '2021-08-17 11:15:56', NULL, NULL),
(22, 'MSD/ORD-5/1629179396', 5, 1, '1250.00', '0.00', '1000.00', '1000.00', 'MSDDEC20/041147/H5AHI', 'PENDING', 'PENDING', '2021-08-17 11:19:56', NULL, NULL),
(23, 'MSD/ORD-5/1629784588', 3, 1, '6250.00', '0.00', '5000.00', '5000.00', 'MSDDEC20/041053/XYRFR', 'PENDING', 'PENDING', '2021-08-24 11:26:28', NULL, NULL),
(24, 'MSD/ORD-5/1629784588', 2, 1, '1800.00', '0.00', '1000.00', '1000.00', 'MSDDEC20/041053/XYRFR', 'PENDING', 'PENDING', '2021-08-24 11:26:28', NULL, NULL),
(25, 'MSD/ORD-5/1629785544', 6, 1, '2000.00', '0.00', '1500.00', '1500.00', 'MSDDEC20/041147/H5AHI', 'PENDING', 'PENDING', '2021-08-24 11:42:24', NULL, NULL),
(26, 'MSD/ORD-5/1629785544', 2, 1, '1800.00', '0.00', '1000.00', '1000.00', 'MSDDEC20/041053/XYRFR', 'PENDING', 'PENDING', '2021-08-24 11:42:24', NULL, NULL),
(27, 'MSD/ORD-5/1629785799', 3, 1, '6250.00', '0.00', '5000.00', '5000.00', 'MSDDEC20/041053/XYRFR', 'PENDING', 'PENDING', '2021-08-24 11:46:39', NULL, NULL),
(33, 'MSD/ORD-43/1630140745', 5, 1, '1250.00', '0.00', '1000.00', '1000.00', 'MSDDEC20/041147/H5AHI', 'PENDING', 'PENDING', '2021-08-28 14:22:25', NULL, NULL),
(32, 'MSD/ORD-43/1630140745', 4, 1, '6250.00', '0.00', '5000.00', '5000.00', 'MSDDEC20/041053/XYRFR', 'PENDING', 'PENDING', '2021-08-28 14:22:25', NULL, NULL),
(30, 'MSD/ORD-35/1630138787', 1, 1, '1700.00', '0.00', '1000.00', '1000.00', 'MSDDEC20/041053/XYRFR', 'PENDING', 'PENDING', '2021-08-28 13:49:46', NULL, NULL),
(31, 'MSD/ORD-35/1630138787', 2, 1, '1800.00', '0.00', '1600.00', '1600.00', 'MSDMAR21/221151/NM5GA', 'PENDING', 'PENDING', '2021-08-28 13:49:46', NULL, NULL),
(34, 'MSD/ORD-43/1630142538', 5, 2, '1250.00', '0.00', '1000.00', '2000.00', 'MSDDEC20/041147/H5AHI', 'PENDING', 'PENDING', '2021-08-28 14:52:18', NULL, NULL),
(35, 'MSD/ORD-43/1630142538', 4, 2, '6250.00', '0.00', '5000.00', '10000.00', 'MSDDEC20/041053/XYRFR', 'PENDING', 'PENDING', '2021-08-28 14:52:18', NULL, NULL),
(36, 'MSD/ORD-43/1630147356', 1, 1, '1700.00', '0.00', '1000.00', '1000.00', 'MSDDEC20/041053/XYRFR', 'PENDING', 'PENDING', '2021-08-28 16:12:36', NULL, NULL),
(37, 'MSD/ORD-5/1630913668', 1, 2, '1700.00', '0.00', '1000.00', '2000.00', 'MSDDEC20/041053/XYRFR', 'PENDING', 'PENDING', '2021-09-06 13:04:28', NULL, NULL),
(38, 'MSD/ORD-5/1630913668', 3, 1, '6250.00', '0.00', '5000.00', '5000.00', 'MSDDEC20/041053/XYRFR', 'PENDING', 'PENDING', '2021-09-06 13:04:28', NULL, NULL),
(39, 'MSD/ORD-5/1630921580', 1, 1, '1700.00', '0.00', '1000.00', '1000.00', 'MSDDEC20/041053/XYRFR', 'PENDING', 'PENDING', '2021-09-06 15:16:20', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer_package_items`
--

CREATE TABLE `customer_package_items` (
  `item_id` int(11) NOT NULL,
  `order_code` varchar(50) NOT NULL,
  `package_id` int(11) NOT NULL,
  `visit_id` int(11) NOT NULL,
  `visit_price` decimal(10,2) NOT NULL,
  `order_quantity` int(11) NOT NULL,
  `package_price` decimal(10,2) NOT NULL,
  `discount_percentage` decimal(10,2) NOT NULL,
  `discounted_amount` decimal(10,2) NOT NULL,
  `sub_total` decimal(10,2) NOT NULL,
  `fulfill_by` varchar(50) NOT NULL,
  `delivery_status` enum('PENDING','DISPATCHED','DELIVERED','HANDOVER','RETURN','CANCEL') NOT NULL DEFAULT 'PENDING',
  `seller_status` enum('PENDING','ACCEPTED','REJECTED') NOT NULL DEFAULT 'PENDING',
  `updated_on` datetime NOT NULL,
  `return_reason` varchar(255) DEFAULT NULL,
  `return_comments` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_package_items`
--

INSERT INTO `customer_package_items` (`item_id`, `order_code`, `package_id`, `visit_id`, `visit_price`, `order_quantity`, `package_price`, `discount_percentage`, `discounted_amount`, `sub_total`, `fulfill_by`, `delivery_status`, `seller_status`, `updated_on`, `return_reason`, `return_comments`) VALUES
(1, 'MSD/ORD-5/1629785799', 1, 2, '100.00', 1, '500.00', '0.00', '500.00', '600.00', 'MSDDEC20/041053/XYRFR', 'PENDING', 'PENDING', '2021-08-24 11:46:39', NULL, NULL),
(2, 'MSD/ORD-5/1629785799', 2, 1, '100.00', 1, '500.00', '0.00', '500.00', '700.00', 'MSDDEC20/041053/XYRFR', 'PENDING', 'PENDING', '2021-08-24 11:46:39', NULL, NULL),
(3, 'MSD/ORD-35/1630138787', 2, 1, '100.00', 1, '500.00', '0.00', '500.00', '600.00', 'MSDDEC20/041053/XYRFR', 'PENDING', 'PENDING', '2021-08-28 13:49:46', NULL, NULL),
(4, 'MSD/ORD-43/1630140745', 0, 1, '0.00', 1, '0.00', '0.00', '0.00', '0.00', 'MSDDEC20/041053/XYRFR', 'PENDING', 'PENDING', '2021-08-28 14:22:25', NULL, NULL),
(5, 'MSD/ORD-43/1630140745', 0, 2, '0.00', 1, '0.00', '0.00', '0.00', '0.00', 'MSDDEC20/041053/XYRFR', 'PENDING', 'PENDING', '2021-08-28 14:22:25', NULL, NULL),
(6, 'MSD/ORD-43/1630142538', 2, 3, '200.00', 2, '500.00', '0.00', '500.00', '1200.00', 'MSDDEC20/041053/XYRFR', 'PENDING', 'PENDING', '2021-08-28 14:52:18', NULL, NULL),
(7, 'MSD/ORD-43/1630142538', 1, 1, '200.00', 2, '500.00', '0.00', '500.00', '1400.00', 'MSDDEC20/041053/XYRFR', 'PENDING', 'PENDING', '2021-08-28 14:52:18', NULL, NULL),
(8, 'MSD/ORD-43/1630147356', 1, 3, '100.00', 1, '500.00', '0.00', '500.00', '600.00', 'MSDDEC20/041053/XYRFR', 'PENDING', 'PENDING', '2021-08-28 16:12:36', NULL, NULL),
(9, 'MSD/ORD-5/1630913668', 1, 1, '100.00', 1, '500.00', '0.00', '500.00', '600.00', 'MSDDEC20/041053/XYRFR', 'PENDING', 'PENDING', '2021-09-06 13:04:28', NULL, NULL),
(10, 'MSD/ORD-5/1630921839', 2, 2, '100.00', 1, '500.00', '0.00', '500.00', '600.00', 'MSDDEC20/041053/XYRFR', 'PENDING', 'PENDING', '2021-09-06 15:20:39', NULL, NULL),
(11, 'MSD/ORD-5/1630921839', 1, 2, '100.00', 1, '500.00', '0.00', '500.00', '700.00', 'MSDDEC20/041053/XYRFR', 'PENDING', 'PENDING', '2021-09-06 15:20:39', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `discount_coupon`
--

CREATE TABLE `discount_coupon` (
  `code_id` int(11) NOT NULL,
  `corp_id` varchar(50) DEFAULT NULL,
  `coupon_type` enum('PRODUCT','BRAND','CATEGORY','AMOUNT','SERVICES','PAYMENT','BOOKING') NOT NULL DEFAULT 'AMOUNT',
  `coupon_subtype` enum('NA','PREPAID','COD','HOME VISIT','SALON APPOINTMENT') NOT NULL DEFAULT 'NA',
  `coupon_code` varchar(50) NOT NULL,
  `discount_type` enum('PERCENTAGE','AMOUNT') NOT NULL DEFAULT 'PERCENTAGE',
  `percentage_amount` int(11) NOT NULL DEFAULT 0,
  `min_cart_value` float NOT NULL,
  `max_discounted_amount` float NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `coupon_image` varchar(255) NOT NULL,
  `coupon_detail` longtext NOT NULL,
  `coupon_status` tinyint(1) NOT NULL,
  `created_by` varchar(50) NOT NULL DEFAULT '0',
  `updated_on` datetime NOT NULL,
  `created_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `discount_coupon`
--

INSERT INTO `discount_coupon` (`code_id`, `corp_id`, `coupon_type`, `coupon_subtype`, `coupon_code`, `discount_type`, `percentage_amount`, `min_cart_value`, `max_discounted_amount`, `start_date`, `end_date`, `coupon_image`, `coupon_detail`, `coupon_status`, `created_by`, `updated_on`, `created_on`) VALUES
(1, NULL, 'PRODUCT', 'NA', 'CORP10', 'PERCENTAGE', 10, 1000, 200, '2021-03-25', '2021-03-30', '1616672195sample2.jpg', '<p>test ttest ssfsa</p>\r\n', 1, '0', '2021-03-25 17:21:23', '2021-03-25 17:06:35'),
(2, NULL, 'BRAND', 'NA', 'CORP20', 'AMOUNT', 100, 2000, 400, '2021-03-25', '2021-03-25', '1616673248sample.jpg', '<p>test test test</p>\r\n', 1, '0', '2021-03-25 17:24:08', '2021-03-25 17:24:08'),
(3, '2', 'CATEGORY', 'NA', 'CORP30', 'PERCENTAGE', 30, 300, 3000, '2021-03-25', '2021-03-25', '1616674988sample2.jpg', '<p>ewerq wefq&nbsp</p>\r\n', 1, '0', '2021-03-25 17:53:08', '2021-03-25 17:53:08'),
(4, '2', 'PRODUCT', 'NA', 'CORP45', 'PERCENTAGE', 10, 1000, 3000, '2021-03-26', '2021-03-26', '1616758259sample2.jpg', 'wrwrq', 1, '0', '2021-03-26 17:00:59', '2021-03-26 17:00:59'),
(5, '2', 'PRODUCT', 'NA', 'CORP66', 'PERCENTAGE', 10, 1000, 3000, '2021-03-27', '2021-03-27', '1616836770sample2.jpg', 'hghjhjh khkj', 1, '0', '2021-03-27 14:49:30', '2021-03-27 14:49:30'),
(6, '2', 'BRAND', 'NA', 'CORP70', 'PERCENTAGE', 10, 2000, 10000, '2021-03-27', '2021-03-27', '1616837183sample.jpg', 'sdfa sdfa ', 1, '0', '2021-03-27 15:14:44', '2021-03-27 14:56:23'),
(7, NULL, 'SERVICES', 'NA', 'KIH200', 'AMOUNT', 200, 1000, 100000, '2021-05-14', '2021-12-31', '1620983673Thailand.jpg', '<p>Test Coupon</p>\r\n', 1, 'MSDMAR21/221548/PAECK', '2021-05-14 14:44:33', '2021-05-14 14:44:33'),
(8, NULL, 'SERVICES', 'NA', 'KERATIN20', 'PERCENTAGE', 20, 1000, 100000, '2021-05-14', '2021-12-31', '1620983760Thailand2.jpg', '<p>Test Test Coupon</p>\r\n', 1, 'MSDMAR21/221548/PAECK', '2021-05-14 14:46:00', '2021-05-14 14:46:00'),
(9, NULL, 'PRODUCT', 'NA', 'ABC200', 'AMOUNT', 200, 1000, 200, '2021-11-10', '2021-12-30', '1636523996artist.jpg', 'TEST', 1, 'MSDDEC20/041053/XYRFR', '2021-11-10 11:29:56', '2021-11-10 11:29:56');

-- --------------------------------------------------------

--
-- Table structure for table `guest_user`
--

CREATE TABLE `guest_user` (
  `id` int(11) NOT NULL,
  `uid` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `guest_user`
--

INSERT INTO `guest_user` (`id`, `uid`, `username`, `email`, `password`) VALUES
(1, '7117556513996', '', '', ''),
(2, '8043676313713', '', '', ''),
(3, '3292845255804', '', '', ''),
(4, '7312744064576', '', '', ''),
(5, '918122194811', '', '', ''),
(6, '2922076289491', '', '', ''),
(7, '3554024671904', '', '', ''),
(8, '3895965383087', '', '', ''),
(9, '2045801095317', '', '', ''),
(10, '1844706252181', '', '', ''),
(11, '1857578700269', '', '', ''),
(12, '1178582609828', '', '', ''),
(13, '4326245506376', '', '', ''),
(14, '5026735824697', '', '', ''),
(15, '6564147621431', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `image_gallery`
--

CREATE TABLE `image_gallery` (
  `img_id` int(11) NOT NULL,
  `img_category` int(11) NOT NULL,
  `gallery_type` enum('SALON','TECHNICAL','POST','PACKAGE') NOT NULL DEFAULT 'SALON',
  `img_type` varchar(255) DEFAULT NULL,
  `img_caption` text NOT NULL,
  `linked_code` varchar(50) NOT NULL COMMENT 'Relational Field like salon_code, tech_code and Package Code',
  `image_size` enum('LARGE','MEDIUM','THUMB') NOT NULL DEFAULT 'LARGE',
  `image_path` varchar(300) NOT NULL,
  `likes` int(20) NOT NULL,
  `user_id` int(20) NOT NULL,
  `created_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `image_gallery`
--

INSERT INTO `image_gallery` (`img_id`, `img_category`, `gallery_type`, `img_type`, `img_caption`, `linked_code`, `image_size`, `image_path`, `likes`, `user_id`, `created_on`) VALUES
(4, 1, 'SALON', NULL, 'Amazing work. A beautiful and glorious look ', 'MSDDEC20/041053/XYRFR', 'LARGE', '1607060222DX_4815_w.jpg', 0, 0, '2021-07-01 17:54:58'),
(8, 2, 'SALON', NULL, 'Amazing work. A beautiful and glorious look ', 'MSDDEC20/041147/H5AHI', 'LARGE', '16070640942.jpeg', 0, 0, '2021-07-01 17:54:58'),
(9, 3, 'SALON', NULL, 'Amazing work. A beautiful and glorious look ', 'MSDDEC20/041147/H5AHI', 'LARGE', '16070640943.jpeg', 0, 0, '2021-07-01 17:54:58'),
(10, 4, 'SALON', NULL, 'Amazing work. A beautiful and glorious look ', 'MSDDEC20/041147/H5AHI', 'LARGE', '16070640944.jpg', 0, 0, '2021-07-01 17:54:58'),
(11, 4, 'SALON', NULL, 'Amazing work. A beautiful and glorious look ', 'MSDDEC20/041147/H5AHI', 'LARGE', '16070640945.jpg', 0, 0, '2021-07-01 17:54:58'),
(12, 2, 'SALON', NULL, 'Amazing work. A beautiful and glorious look ', 'MSDDEC20/041147/H5AHI', 'LARGE', '16070640949.jpg', 0, 0, '2021-07-01 17:54:58'),
(13, 5, 'SALON', NULL, 'Amazing work. A beautiful and glorious look ', 'MSDDEC20/041147/H5AHI', 'LARGE', '160706409416.jpeg', 0, 0, '2021-07-01 17:54:58'),
(24, 6, 'SALON', NULL, 'Amazing work. A beautiful and glorious look ', 'MSDDEC20/041147/H5AHI', 'LARGE', '1616822450sample2.jpg', 0, 0, '2021-07-01 17:54:58'),
(61, 7, 'SALON', NULL, 'Amazing work. A beautiful and glorious look ', 'MSDDEC20/041053/XYRFR', 'LARGE', '1627278604images.jpg', 0, 0, '2021-07-01 17:54:58'),
(62, 6, 'SALON', NULL, 'Amazing work. A beautiful and glorious look ', 'MSDDEC20/041053/XYRFR', 'LARGE', '1627278604g2.jpg', 0, 0, '2021-07-01 17:54:58'),
(63, 3, 'SALON', NULL, 'Amazing work. A beautiful and glorious look ', 'MSDDEC20/041053/XYRFR', 'LARGE', '1627278604Geetanjali_01.jpg', 0, 0, '2021-07-01 17:54:58'),
(64, 1, 'SALON', NULL, 'Amazing work. A beautiful and glorious look ', 'MSDDEC20/041053/XYRFR', 'LARGE', '1627278604g1.jpg', 0, 0, '2021-07-01 17:54:58'),
(65, 4, 'SALON', NULL, 'Amazing work. A beautiful and glorious look ', 'MSDJUN21/011800/8LKUY', 'LARGE', '1627280299Geetanjali_01.jpg', 0, 0, '2021-07-01 17:54:58'),
(66, 6, 'SALON', NULL, 'Amazing work. A beautiful and glorious look ', 'MSDJUN21/011800/8LKUY', 'LARGE', '1627280299g2.jpg', 0, 0, '2021-07-01 17:54:58'),
(67, 0, 'SALON', NULL, 'Amazing work. A beautiful and glorious look ', 'MSDMAR21/161519/G150M', 'LARGE', '1627280406s1.jpg', 0, 0, '2021-07-01 17:54:58'),
(68, 0, 'SALON', NULL, 'Amazing work. A beautiful and glorious look ', 'MSDMAR21/161519/G150M', 'LARGE', '1627280406s2.jpg', 0, 0, '2021-07-01 17:54:58'),
(69, 0, 'SALON', NULL, 'Amazing work. A beautiful and glorious look ', 'MSDMAR21/161519/G150M', 'LARGE', '1627280406s3.jpg', 0, 0, '2021-07-01 17:54:58'),
(70, 0, 'SALON', NULL, 'Amazing work. A beautiful and glorious look ', 'MSDMAR21/161519/G150M', 'LARGE', '1627280406images.jpg', 0, 0, '2021-07-01 17:54:58'),
(71, 0, 'SALON', NULL, 'Amazing work. A beautiful and glorious look ', 'MSDMAR21/221151/NM5GA', 'LARGE', '1627280450s3.jpg', 0, 0, '2021-07-01 17:54:58'),
(72, 0, 'SALON', NULL, 'Amazing work. A beautiful and glorious look ', 'MSDMAR21/221151/NM5GA', 'LARGE', '1627280450g2.jpg', 0, 0, '2021-07-01 17:54:58'),
(73, 0, 'SALON', NULL, 'Amazing work. A beautiful and glorious look ', 'MSDMAR21/221151/NM5GA', 'LARGE', '1627280450s2.jpg', 0, 0, '2021-07-01 17:54:58'),
(74, 0, 'SALON', NULL, 'Amazing work. A beautiful and glorious look ', 'MSDMAR21/221548/PAECK', 'LARGE', '1627280554c1.jpg', 0, 0, '2021-07-01 17:54:58'),
(75, 0, 'SALON', NULL, 'Amazing work. A beautiful and glorious look ', 'MSDMAR21/221548/PAECK', 'LARGE', '1627280554c2.jpg', 0, 0, '2021-07-01 17:54:58'),
(76, 0, 'SALON', NULL, 'Amazing work. A beautiful and glorious look ', 'MSDMAR21/221548/PAECK', 'LARGE', '1627280554c3.jpeg', 0, 0, '2021-07-01 17:54:58'),
(77, 0, 'SALON', NULL, 'Amazing work. A beautiful and glorious look ', 'MSDMAR21/221548/PAECK', 'LARGE', 'cp33.png', 0, 0, '2021-07-01 17:54:58'),
(111, 0, 'SALON', NULL, 'Amazing work. A beautiful and glorious look ', 'MSDDEC20/041053/XYRFR', '', '1628924402photo4.jpg', 0, 0, '2021-08-14 12:30:02'),
(112, 0, 'SALON', NULL, 'Amazing work. A beautiful and glorious look ', 'MSDDEC20/041053/XYRFR', '', '1628924402user2-160x160.jpg', 0, 0, '2021-08-14 12:30:02'),
(119, 0, 'TECHNICAL', NULL, 'Amazing work. A beautiful and glorious look ', 'MSDT/24AUG202110/UHZ', 'LARGE', '1629782694looks-salon.png', 0, 0, '2021-08-24 10:54:54'),
(128, 0, 'SALON', NULL, 'Amazing work. A beautiful and glorious look ', 'MSDAUG21/261233/F8W8I', 'LARGE', '1629963450download.jfif', 0, 0, '2021-08-26 13:07:30'),
(129, 0, 'TECHNICAL', NULL, 'Amazing work. A beautiful and glorious look ', 'MSDT/26AUG202113/QHZ', 'LARGE', '', 0, 0, '2021-08-26 13:13:24'),
(130, 0, 'PACKAGE', NULL, 'Amazing work. A beautiful and glorious look ', 'FHV354760', 'LARGE', '1630303567bblunt-banner.jpg', 0, 0, '2021-08-30 11:36:07'),
(131, 0, 'PACKAGE', NULL, 'Amazing work. A beautiful and glorious look ', 'FHV354760', 'LARGE', '1630303567kerastase-banner.jpg', 0, 0, '2021-08-30 11:36:07'),
(132, 0, 'PACKAGE', NULL, 'Amazing work. A beautiful and glorious look ', 'N3P0AMFWD', 'LARGE', '1630303777GK-Hair-banner.jpg', 0, 0, '2021-08-30 11:39:37'),
(133, 0, 'PACKAGE', NULL, 'Amazing work. A beautiful and glorious look ', 'MQV1XDE8G', 'LARGE', '1630309136sample.jpg', 0, 0, '2021-08-30 13:08:56'),
(134, 0, 'PACKAGE', NULL, 'Amazing work. A beautiful and glorious look ', 'NX1QT1J93', 'LARGE', '1630309290g13.jpg', 0, 0, '2021-08-30 13:11:30'),
(135, 0, 'TECHNICAL', 'creative_work', 'Amazing work. A beautiful and glorious look ', 'MSDT/24MAR202115/NPU', 'LARGE', '1630586016hair-cut-long-hair.jpg', 0, 0, '2021-09-02 18:03:36'),
(136, 0, 'TECHNICAL', 'creative_work', 'Amazing work. A beautiful and glorious look ', 'MSDT/24MAR202115/NPU', 'LARGE', '1630586016Hair-Cut-Short-hair.jpg', 0, 0, '2021-09-02 18:03:36'),
(137, 0, 'TECHNICAL', 'creative_work', 'Amazing work. A beautiful and glorious look ', 'MSDT/24MAR202115/NPU', 'LARGE', '1630586016Hair-Styling.jpg', 0, 0, '2021-09-02 18:03:36'),
(138, 0, 'TECHNICAL', 'creative_work', 'Amazing work. A beautiful and glorious look ', 'MSDT/24MAR202115/NPU', 'LARGE', '1630586016Mani-Pedi.jpg', 0, 0, '2021-09-02 18:03:36'),
(139, 0, 'TECHNICAL', 'creative_work', 'Amazing work. A beautiful and glorious look ', 'MSDT/24MAR202115/NPU', 'LARGE', '1630586016Wellness-fragrances.jpg', 0, 0, '2021-09-02 18:03:36'),
(140, 1, 'SALON', 'creative_work', '    dafdsfsd', 'MSDDEC20/041053/XYRFR', 'LARGE', '1632911920artist14.jpg', 0, 0, '2021-09-29 16:08:40'),
(141, 5, 'SALON', 'creative_work', '     dsfa ads ds fads', 'MSDDEC20/041053/XYRFR', 'LARGE', '1632912474artist12.jpg', 0, 0, '2021-09-29 16:17:54'),
(142, 2, 'SALON', 'creative_work', ' rr re e er ', 'MSDDEC20/041053/XYRFR', 'LARGE', '1632981520artist10.jpg', 0, 0, '2021-09-30 11:28:40'),
(143, 7, 'SALON', 'creative_work', 'er d gdfg dgfd d', 'MSDDEC20/041053/XYRFR', 'LARGE', '1632981520artist4.jpg', 0, 0, '2021-09-30 11:28:40'),
(144, 6, 'SALON', 'creative_work', 'werew w ew ', 'MSDDEC20/041053/XYRFR', 'LARGE', '1632981610artist3.jpg', 0, 0, '2021-09-30 11:30:10'),
(145, 5, 'SALON', 'creative_work', '  weew ew ew', 'MSDDEC20/041053/XYRFR', 'LARGE', '1632981610artist.jpg', 0, 0, '2021-09-30 11:30:10'),
(146, 3, 'SALON', 'creative_work', 'd dfsds df dd', 'MSDDEC20/041053/XYRFR', 'LARGE', '1632981732artist9.jpg', 0, 0, '2021-09-30 11:32:12'),
(147, 4, 'SALON', 'creative_work', ' df ds sd  d sd', 'MSDDEC20/041053/XYRFR', 'LARGE', '1632981732artist6.jpg', 0, 0, '2021-09-30 11:32:12'),
(148, 0, 'SALON', NULL, '', 'MSDSEP21/161446/QCTIY', 'LARGE', '1637666445Geetanjali-Studio.jpg', 0, 0, '2021-11-23 16:50:45'),
(149, 0, 'TECHNICAL', NULL, '', 'MSDT/04DEC202012/M0K', 'LARGE', '1639464191bleaching.jpg', 0, 0, '2021-12-14 12:13:11'),
(150, 0, 'TECHNICAL', NULL, '', 'MSDT/04DEC202012/M0K', 'LARGE', '1639464234Blush.jpg', 0, 0, '2021-12-14 12:13:54'),
(151, 0, 'TECHNICAL', NULL, '', 'MSDT/04DEC202012/M0K', 'LARGE', '1639464249botax.jpg', 0, 0, '2021-12-14 12:14:09'),
(152, 0, 'TECHNICAL', NULL, '', 'MSDT/04DEC202012/M0K', 'LARGE', '1639464255colognes.jpg', 0, 0, '2021-12-14 12:14:15'),
(153, 0, 'TECHNICAL', NULL, '', 'MSDT/04DEC202012/M0K', 'LARGE', '1639464261deodorants.jpg', 0, 0, '2021-12-14 12:14:21'),
(154, 0, 'TECHNICAL', NULL, '', 'MSDT/04DEC202012/M0K', 'LARGE', '1639464265eyes.jpg', 0, 0, '2021-12-14 12:14:25'),
(155, 0, 'TECHNICAL', NULL, '', 'MSDT/04DEC202012/M0K', 'LARGE', '1639464271face.jpg', 0, 0, '2021-12-14 12:14:31'),
(156, 0, 'TECHNICAL', NULL, '', 'MSDT/04DEC202012/M0K', 'LARGE', '1639464299facial.jpg', 0, 0, '2021-12-14 12:14:59');

-- --------------------------------------------------------

--
-- Table structure for table `inventory_history`
--

CREATE TABLE `inventory_history` (
  `history_id` int(11) NOT NULL,
  `inventory_id` int(11) NOT NULL,
  `transaction_type` enum('ADD','SUBTRACT') NOT NULL DEFAULT 'SUBTRACT',
  `last_quantity` int(11) NOT NULL DEFAULT 0,
  `effective_qty` int(11) NOT NULL,
  `current_qty` int(11) NOT NULL DEFAULT 0,
  `created_on` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `uniqueId` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `role` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `uniqueId`, `name`, `gender`, `role`, `email`, `password`, `status`) VALUES
(1, 'admin', 'Maison D\' Auraine', 'Male', 'Super Admin', 'madhukant.tiwari@aurainebotanicals.com', 'f91e15dbec69fc40f81f0876e7009648', 1);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `uid` varchar(50) NOT NULL,
  `project_key` varchar(50) NOT NULL,
  `menu_set` varchar(20) NOT NULL,
  `parent` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `heading` varchar(255) NOT NULL,
  `custom_link` varchar(255) NOT NULL,
  `open_in` enum('SELF','NEW','POPUP') NOT NULL DEFAULT 'SELF',
  `s_no` int(11) NOT NULL,
  `enable` enum('Y','N') NOT NULL DEFAULT 'Y'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `uid`, `project_key`, `menu_set`, `parent`, `title`, `heading`, `custom_link`, `open_in`, `s_no`, `enable`) VALUES
(1, '9', '1161270535', '1', '', 'One', 'One', '', 'SELF', 1, 'Y'),
(2, '9', '1161270535', '1', '1', 'Two', 'Two', '', 'SELF', 2, 'Y'),
(3, '9', '1161270535', '2', '', 'OFFERSw', 'Offersw', 'ww', 'SELF', 1, 'Y'),
(30, '0', '1276864229', '17', '', 'Contact us', 'Contact us', '', 'SELF', 2, 'Y'),
(6, '9', '1161270535', '1', '1', 'Three', 'Three', '', 'SELF', 3, 'Y'),
(22, '0', '1276864229', '15', '', 'Home1', 'Home1', 'test1', 'SELF', 1, 'Y'),
(26, '0', '1276864229', '15', '27', 'Contact us', 'Contact us', '', 'SELF', 3, 'Y'),
(28, '0', '1276864229', '16', '', 'sdfas', 'sfsa', '', 'SELF', 0, 'Y'),
(15, '9', '1161270535', '2', '', 'OFFERSee', 'Offersee22', 'ee', 'SELF', 2, 'Y'),
(29, '0', '1276864229', '17', '30', 'About Us', 'About Us', '', 'SELF', 3, 'Y'),
(31, '0', '1276864229', '17', '', 'Home', 'Home', '', 'SELF', 1, 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `menu_set`
--

CREATE TABLE `menu_set` (
  `id` int(11) NOT NULL,
  `uid` varchar(20) NOT NULL,
  `project_key` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `enable` enum('Yes','No') NOT NULL DEFAULT 'Yes'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu_set`
--

INSERT INTO `menu_set` (`id`, `uid`, `project_key`, `name`, `enable`) VALUES
(1, '9', '1161270535', 'HEADERMENU', 'Yes'),
(2, '9', '1161270535', 'FOOTERMENU', 'Yes'),
(18, '0', '1183620902', 'Home', 'Yes'),
(17, '0', '1276864229', 'BootamMenu', 'Yes'),
(15, '0', '1276864229', 'Topmenu', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` int(11) NOT NULL,
  `module_name` varchar(100) NOT NULL,
  `section_name` varchar(100) NOT NULL,
  `controller_name` varchar(100) NOT NULL,
  `method_name` varchar(100) NOT NULL,
  `update_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `module_name`, `section_name`, `controller_name`, `method_name`, `update_at`) VALUES
(1, 'Create New Page', 'App\\Http\\Controllers\\Website\\WebsiteController@create_page', 'Website', 'create_page', '2021-10-30 10:12:00'),
(2, 'Show Page List', 'App\\Http\\Controllers\\Website\\WebsiteController@pages', 'Website', 'pages', '2021-10-30 11:55:59'),
(3, 'Update Page', 'App\\Http\\Controllers\\Website\\WebsiteController@update_page', 'Website', 'update_page', '2021-10-30 10:11:18'),
(10, 'User login', 'App\\Http\\Controllers\\UserController@user_login', 'User', 'user_login', '2021-11-01 05:57:34'),
(11, 'Create Menu Set', 'App\\Http\\Controllers\\Website\\WebsiteController@create_menu_set', 'Website', 'create_menu_set', '2021-11-01 05:59:40'),
(12, 'Upate Menu Set', 'App\\Http\\Controllers\\Website\\WebsiteController@update_menu_order', 'Website', 'update_menu_set', '2021-11-01 06:00:05'),
(13, 'Delete Menu Set', 'App\\Http\\Controllers\\Website\\WebsiteController@delete_menu_set', 'Website', 'delete_menu_set', '2021-11-01 06:00:51'),
(14, 'Show Project List', 'App\\Http\\Controllers\\Projects\\ProjectsController@index', 'Projects', 'index', '2021-11-01 06:01:54'),
(15, 'Enter To Project', 'App\\Http\\Controllers\\Projects\\ProjectsController@enter', 'Projects', 'enter', '2021-11-01 06:03:04');

-- --------------------------------------------------------

--
-- Table structure for table `organization_type`
--

CREATE TABLE `organization_type` (
  `org_id` int(11) NOT NULL,
  `org_type` varchar(100) NOT NULL,
  `org_title` varchar(200) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `organization_type`
--

INSERT INTO `organization_type` (`org_id`, `org_type`, `org_title`, `status`) VALUES
(1, 'proprietor', 'Proprietor', 1),
(2, 'partnership', 'Firm (Partnership)', 1),
(3, 'pvt', 'Company(Private Limited)', 1),
(4, 'others', 'Others', 1);

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `package_id` int(11) NOT NULL,
  `package_name` varchar(100) DEFAULT NULL,
  `package_code` varchar(50) NOT NULL,
  `package_group` varchar(25) DEFAULT NULL,
  `package_for` varchar(100) DEFAULT NULL,
  `package_type_id` int(11) DEFAULT NULL,
  `permalink` varchar(100) DEFAULT NULL,
  `category_id` varchar(50) DEFAULT NULL,
  `service_id` varchar(50) DEFAULT NULL,
  `depend` int(1) DEFAULT NULL,
  `brand_id` varchar(50) NOT NULL,
  `banner` varchar(2500) NOT NULL,
  `description` varchar(2000) NOT NULL,
  `special_description` varchar(1500) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `trending` int(1) NOT NULL DEFAULT 0,
  `featured` int(1) NOT NULL,
  `status` int(1) NOT NULL,
  `meta_title` varchar(200) NOT NULL,
  `meta_desc` varchar(500) NOT NULL,
  `meta_keyword` varchar(500) NOT NULL,
  `created_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`package_id`, `package_name`, `package_code`, `package_group`, `package_for`, `package_type_id`, `permalink`, `category_id`, `service_id`, `depend`, `brand_id`, `banner`, `description`, `special_description`, `start_date`, `end_date`, `trending`, `featured`, `status`, `meta_title`, `meta_desc`, `meta_keyword`, `created_on`) VALUES
(1, 'Bridal Makeup', 'F2HJK5L', 'single', 'salon', 1, 'bridal-makeup', '3', '3', 1, '1,2', '1624452273wedding3.png', 'test', 'test', '2021-06-01', '2021-09-30', 1, 1, 1, '', 'test', '', '2021-06-23 18:14:33'),
(2, 'Golden Package', 'GJQ90OL', 'single', 'salon', 2, 'golden-package', '3', '3', 1, '1,2', '1624452273wedding3.png', 'test', 'test', '2021-06-01', '2021-09-30', 1, 1, 1, '', 'test', '', '2021-06-23 18:14:33');

-- --------------------------------------------------------

--
-- Table structure for table `package_cart`
--

CREATE TABLE `package_cart` (
  `cart_id` int(11) NOT NULL,
  `customer_id` varchar(30) NOT NULL,
  `package_id` int(11) NOT NULL,
  `cart_quantity` int(11) NOT NULL,
  `assoc_id` int(11) NOT NULL DEFAULT 0,
  `visit_id` int(11) NOT NULL,
  `visit_date` date DEFAULT NULL,
  `added_on` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `package_cart`
--

INSERT INTO `package_cart` (`cart_id`, `customer_id`, `package_id`, `cart_quantity`, `assoc_id`, `visit_id`, `visit_date`, `added_on`) VALUES
(62, '5', 2, 1, 1, 2, NULL, '2021-11-10 12:11:56'),
(61, '5', 1, 2, 1, 1, NULL, '2021-11-10 12:11:31');

-- --------------------------------------------------------

--
-- Table structure for table `package_type`
--

CREATE TABLE `package_type` (
  `package_type_id` int(11) NOT NULL,
  `type_name` varchar(100) DEFAULT NULL,
  `description` varchar(2500) NOT NULL,
  `package_type_banner` varchar(2500) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `package_type`
--

INSERT INTO `package_type` (`package_type_id`, `type_name`, `description`, `package_type_banner`, `status`, `created_on`) VALUES
(1, 'Wedding Package', '', 'wedding.png', 1, '2021-06-15 13:20:40'),
(2, 'Corporate Package', '', 'corporate.png', 1, '2021-06-15 13:20:40'),
(3, 'Special Package', '', 'unnamed.jpg', 1, '2021-06-15 13:22:41'),
(4, 'Other', '', '7512486d3720494eb8f276bd51b72d34.jpg', 1, '2021-06-15 13:22:41');

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE `page` (
  `id` int(11) NOT NULL,
  `uid` varchar(20) NOT NULL,
  `project_key` varchar(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `keywords` text NOT NULL,
  `description` text NOT NULL,
  `heading` varchar(255) NOT NULL,
  `sub_heading` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `home` enum('Yes','No') NOT NULL DEFAULT 'No',
  `s_no` varchar(20) NOT NULL,
  `enable` enum('Yes','No') NOT NULL DEFAULT 'Yes'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`id`, `uid`, `project_key`, `title`, `keywords`, `description`, `heading`, `sub_heading`, `content`, `home`, `s_no`, `enable`) VALUES
(32, '16', '1161270535', 'My First Page Title2', '', '', 'My First Page Heading2', '', '<p>My First Page Content2</p>\r\n', 'No', '', 'Yes'),
(33, '0', '1183620902', 'title', '', '', 'tushar', '', '<p><img alt=\"\" src=\"http://localhost:8080/working/vidhsys_admin//filemanager/images/31096_4.jpg\" style=\"height:71px; width:100px\" /></p>\r\n\r\n<p>tuighjgjh</p>\r\n\r\n<p>&nbsp;</p>', 'No', '', 'Yes'),
(30, '9', '1183620902', 'About Us2', '', '', 'About Us2', '', '&lt;p&gt;And is full of waffle to It has multiple paragraphs and is full of waffle to pad out the comment. Usually, you just wish these sorts of comments would come to an end.multiple paragraphs and is full of waffle to pad out the comment. Usually, you just wish these sorts of comments would come to an end.multiple paragraphs and is full of waffle to pad out the comment. Usually, you just wish the&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;tishar&lt;/p&gt;', 'No', '', 'Yes'),
(31, '9', '1183620902', 'Contact Us', '', '', 'Contact Us', '', '&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;http://localhost:8080/working/vidhsys_admin//filemanager/images/31096_4.jpg&quot; style=&quot;height:214px; width:300px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Rainy Day&lt;/p&gt;', 'No', '', 'Yes'),
(35, '16', '1161270535', 'test', '', '', 'test', '', '&lt;p&gt;test&lt;/p&gt;', 'No', '', 'Yes'),
(36, '9', '1276864229', 'About Us', '', '', 'About Us', 'subheading', '&lt;p&gt;test&lt;/p&gt;', 'No', '', 'Yes'),
(37, '', '1276864229', 'Book Party Hall', '', '', 'heading', '', '<p>content</p>\r\n', 'No', '', 'Yes'),
(38, '', '', 'Customer Feedback', '', '', 'heading', '', '<p>content</p>\r\n', 'No', '', 'No'),
(39, '', '', '', '', '', '', '', '', 'No', '', 'No'),
(40, '', '', 'Customer Feedback', '', '', 'Customer Feedback', '', '<p>customer feedback</p>\r\n', 'No', '', 'Yes'),
(41, '', '', 'Contact Us', '', '', 'Contact Us', '', '<p>Contact Us</p>\r\n', 'No', '', 'No'),
(42, '', '', 'Contact Us', '', '', 'Contact Us', '', '<p>Contact Us</p>\r\n', 'No', '', 'No'),
(43, '', '', 'Contact Us', '', '', 'Contact Us', '', '<p>Contact Us</p>\r\n', 'No', '', 'No'),
(44, '9', '1276864229', 'how i disable public holiday list array from 30 day of a month in php?', '', '', 'Book Party Hall', '', '&lt;p&gt;tresdf&lt;/p&gt;', 'No', '', 'Yes'),
(45, '9', '1276864229', 'Dr Shilpis profile', '', '', 'Enquiry', '', '<p>lkjol</p>', 'No', '', 'Yes'),
(46, '9', '1276864229', 'Dr Shilpis profilecvxc', '', '', 'Enquirycxvxccvxc', 'xcvxcvxcvxcv', '<p>lkjolxcvxcvxc</p>', 'No', '', 'No'),
(47, '3', '1161270535', 'sdfad', '', '', 'sdfsd', '', '<p>sfsdf</p>\r\n', 'No', '', 'Yes'),
(48, '3', '1161270535', 'dfsg', '', '', 'dfgsdg', '', '<p>dfsg fgfdg dfgfd</p>\r\n', 'No', '', 'Yes'),
(49, '0', '1276864229', 'sfsa', '', '', 'sfsa', '', '<p>ssafd</p>', 'No', '', 'Yes'),
(50, '0', '1276864229', 'sfsaf tushar', '', '', 'sfdsfdas fsaf saf tushar', '', '<p>s dsaf sf saf dsa&nbsp; tushar</p>', 'No', '', 'Yes'),
(51, '0', '1276864229', 'sdfas saf asfs', '', '', 'dsfsa fsa fsdafsa', '', '<p>&nbsp;dsf afaafs&nbsp;</p>', 'No', '', 'Yes'),
(52, '0', '1276864229', 'sfds fas f', '', '', 'fdsa fsafsa', '', '<p>&nbsp;dsa fsafd</p>', 'No', '', 'Yes'),
(53, '0', '1276864229', 'sdfsa', '', '', 'ds fafds', '', '<p>ds asfsfda</p>', 'No', '', 'Yes'),
(54, '0', '1276864229', 'xvxvz', '', '', 'sdsfds fsd', '', '<p>ds sdf dsf sfsfda ds</p>', 'No', '', 'Yes'),
(55, '0', '1276864229', 'dsds fsd fas11crtre', '', '', 's as fsa f sad11', '', '<p>s afds dsa fdsa11</p>', 'No', '', 'Yes'),
(56, '0', '1276864229', 'test tushar', '', '', 'test tushar', '', '<p>test tushar</p>', 'No', '', 'Yes'),
(57, '0', '1276864229', 'dfdsgs', '', '', 'ds sd', '', '<p>&nbsp;dds df&nbsp;</p>', 'No', '', 'Yes'),
(58, '0', '1276864229', 'cvbxcb', '', '', 'cbvxcb', '', '<p>cvbcxcv</p>', 'No', '', 'No'),
(59, '0', '1276864229', 'rtwet', '', '', 'ertrew', '', '<p>ertwete</p>', 'No', '', 'Yes'),
(60, '0', '1276864229', 'dfs', '', '', 'dfgdsg', '', '<p>dfgsdg</p>', 'No', '', 'Yes'),
(61, '0', '1276864229', 'fdgdsg', '', '', 'dfgds', '', '<p>dfgdsfgsd</p>', 'No', '', 'Yes'),
(62, '0', '1276864229', 'dfgdsg', '', '', 'dfgsg', '', '<p>dfsgsd</p>', 'No', '', 'Yes'),
(63, '0', '1276864229', 'gfaf', '', '', 'dsfas', '', '<p>sdfdsa</p>', 'No', '', 'Yes'),
(64, '0', '1276864229', 'dgfdg', '', '', 'dfgsf', '', '<p>dfgsdg</p>', 'No', '', 'Yes'),
(65, '0', '1276864229', 'dgfdg', '', '', 'dfgsf', '', '<p>dfgsdg</p>', 'No', '', 'Yes'),
(66, '0', '1276864229', 'rtwt', '', '', 'ertw', '', '<p>ertwet</p>', 'No', '', 'Yes'),
(67, '0', '1276864229', 'try', '', '', 'ty', '', '<p>rtye</p>', 'No', '', 'Yes'),
(68, '0', '1276864229', 'try', '', '', 'ty', '', '<p>rtye</p>', 'No', '', 'Yes'),
(69, '0', '1276864229', 'fgdhg', '', '', 'fghd', '', '<p>gfhdf</p>', 'No', '', 'No'),
(70, '0', '1276864229', 'dfgdsfg  fdgs', '', '', 'gsd sdg', '', '<p>&nbsp;fds sdgsd df gds</p>', 'No', '', 'Yes'),
(71, '0', '1276864229', 'This is test page.', '', '', 'This is test page.', '', '<p>This is test page.</p>', 'No', '', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset`
--

CREATE TABLE `password_reset` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `token` varchar(255) NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `password_reset`
--

INSERT INTO `password_reset` (`id`, `email`, `token`, `time`) VALUES
(2, 'customer_one@yopmail.com', 'd3939481480f1e916c4299e60268a8e26292', '2021-09-09 13:20:18'),
(3, 'tapeshwartoday@gmail.com', '873add96d10020be618dbbd2f00f85dc7031', '2021-09-09 14:43:18');

-- --------------------------------------------------------

--
-- Table structure for table `post_comments`
--

CREATE TABLE `post_comments` (
  `comments_id` int(11) NOT NULL,
  `comments_parent_id` int(11) NOT NULL,
  `comments` text NOT NULL,
  `customer_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post_comments`
--

INSERT INTO `post_comments` (`comments_id`, `comments_parent_id`, `comments`, `customer_id`, `post_id`, `date`) VALUES
(1, 0, 'test', 19, 37, '2021-08-04 23:10:18'),
(2, 0, 'test', 19, 15, '2021-08-04 23:32:25'),
(3, 0, 'test2', 19, 15, '2021-08-04 23:32:32'),
(4, 0, 'heello', 19, 4, '2021-08-05 00:07:52'),
(5, 0, 'hi', 19, 4, '2021-08-05 00:09:54'),
(6, 0, 'test', 19, 4, '2021-08-05 00:11:59'),
(7, 0, 'sfdsfsdf', 19, 4, '2021-08-05 00:12:31'),
(8, 0, 'sdfsadf ', 19, 8, '2021-08-05 00:22:40'),
(9, 0, 'very good', 19, 9, '2021-08-06 17:39:22'),
(10, 0, 'Test Comment', 1, 1, '2021-08-13 18:16:39'),
(11, 0, 'Test Comment', 1, 1, '2021-08-13 18:16:41'),
(12, 0, 'gdsgg ', 4, 15, '2021-08-16 11:19:26'),
(13, 0, 'rgfdg fd d', 4, 128, '2021-09-28 09:47:21'),
(14, 0, 'fsfaa', 4, 128, '2021-09-28 09:49:04'),
(15, 0, 'dsfafa', 4, 4, '2021-09-28 12:03:09'),
(16, 0, 'wow', 4, 8, '2021-09-28 12:03:31'),
(17, 0, 'ffafsf', 4, 9, '2021-09-29 07:25:34'),
(18, 0, 'dfsgsd ', 19, 63, '2021-09-29 07:27:26'),
(19, 0, 'dfgds d dsf', 19, 63, '2021-09-29 07:27:30'),
(20, 0, 'dsfa  sdfad', 22, 68, '2021-09-29 07:28:52'),
(21, 0, 'lkjlkjk', 4, 144, '2021-10-01 07:01:03'),
(22, 0, 'hkhkjh', 19, 67, '2021-11-09 09:45:37'),
(23, 0, 'kjjjk', 19, 140, '2021-11-09 09:46:04'),
(24, 0, 'fdhfdfd', 19, 69, '2021-12-03 07:50:14'),
(25, 0, 'esfdsf', 19, 131, '2021-12-03 09:42:50');

-- --------------------------------------------------------

--
-- Table structure for table `post_likes`
--

CREATE TABLE `post_likes` (
  `likes_id` int(11) NOT NULL,
  `likes` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post_likes`
--

INSERT INTO `post_likes` (`likes_id`, `likes`, `customer_id`, `post_id`, `date`) VALUES
(1, 1, 19, 52, '2021-08-04 11:53:05'),
(2, 1, 19, 15, '2021-08-04 12:02:07'),
(3, 1, 19, 16, '2021-08-04 12:02:11'),
(4, 1, 19, 4, '2021-08-06 05:47:42'),
(5, 1, 19, 8, '2021-08-04 12:52:37'),
(6, 1, 19, 9, '2021-08-06 05:52:30'),
(7, 1, 1, 1, '2021-08-13 18:15:09'),
(8, 1, 1, 1, '2021-08-13 18:15:12'),
(9, 1, 4, 15, '2021-08-16 11:19:19'),
(10, 1, 4, 128, '2021-09-28 09:47:15'),
(11, 1, 4, 4, '2021-09-28 10:15:09'),
(12, 1, 4, 8, '2021-09-28 10:15:16'),
(13, 0, 4, 9, '2021-09-28 10:15:22'),
(14, 1, 4, 10, '2021-09-28 11:54:34'),
(15, 1, 4, 11, '2021-09-28 11:54:37'),
(16, 1, 22, 68, '2021-09-29 07:28:35'),
(17, 1, 4, 144, '2021-10-01 07:00:57'),
(18, 1, 4, 137, '2021-10-01 07:04:09'),
(19, 1, 19, 146, '2021-11-09 09:44:54'),
(20, 1, 19, 67, '2021-11-09 09:45:30');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `variant_id` int(11) NOT NULL,
  `product_sku` varchar(50) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_short` text NOT NULL,
  `product_description` text NOT NULL,
  `prod_information` text NOT NULL,
  `prod_specification` text NOT NULL,
  `unit_price` float NOT NULL,
  `product_status` tinyint(1) NOT NULL,
  `display_picture` varchar(255) NOT NULL,
  `permalink` varchar(255) NOT NULL,
  `from_date` datetime DEFAULT NULL,
  `to_date` datetime DEFAULT NULL,
  `featured` int(1) NOT NULL DEFAULT 0 COMMENT '1=>Yes,0=>No',
  `text_class` int(1) NOT NULL DEFAULT 0 COMMENT '1=>Yes,0=>No',
  `meta_title` varchar(255) NOT NULL,
  `meta_description` text NOT NULL,
  `meta_keyword` text NOT NULL,
  `updated_on` datetime NOT NULL,
  `created_on` datetime NOT NULL,
  `created_by` varchar(120) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `brand_id`, `variant_id`, `product_sku`, `product_name`, `category_id`, `product_short`, `product_description`, `prod_information`, `prod_specification`, `unit_price`, `product_status`, `display_picture`, `permalink`, `from_date`, `to_date`, `featured`, `text_class`, `meta_title`, `meta_description`, `meta_keyword`, `updated_on`, `created_on`, `created_by`) VALUES
(1, 1, 1, 'HC0001', 'ANTI-DANDRUFF SHAMPOO-250 ML', 1, 'This gentle everyday shampoo cleanses the hair, lifts away all grime and dirt and leaves the scalp flake free. Infused with the finest natural ingredients and fortified with Juvexin, GK Hair Anti- Dandruff Shampoo controls dandruff, strengthens hair and repair damage; maintaining happy and healthy hair.', 'This gentle everyday shampoo cleanses the hair, lifts away all grime and dirt and leaves the scalp flake free. Infused with the finest natural ingredients and fortified with Juvexin, GK Hair Anti- Dandruff Shampoo controls dandruff, strengthens hair and repair damage; maintaining happy and healthy hair.', 'â€¢ Controls dandruff & is suitable for all hair types\r\nâ€¢ Apply evenly to clean and wet hair. Rinse it off and for best results follow up with the GK Hair conditioner.\r\nâ€¢ Color safe\r\nâ€¢ Sodium Free and Sulphate Free\r\nâ€¢ Restores pH of the scalp\r\nâ€¢ Safe for use after GK Hair Taming Treatments', '', 1700, 1, '16409371408737.png', 'anti-dandruff-shampoo-250-ml', NULL, NULL, 0, 0, '', '', '', '2021-12-31 07:52:20', '2021-12-31 07:52:20', '0'),
(2, 1, 2, 'HC0002', 'BALANCING CONDITIONER - 300ML', 2, 'Revitalize your hairâ€™s luster with GK Hair Balancing conditioner formulated for normal to oily hair. Infused with the naturally extracted sheep wool derived ingredient â€“ Juvexin â€“ keratin anti-aging protein â€“ this conditioner preserves hydration, balances and conditions the scalp and hair. Goodness of Natural seed oils and natural plant extracts leaves hair nourishes and locks in vibrancy.', 'Revitalize your hairâ€™s luster with GK Hair Balancing conditioner formulated for normal to oily hair. Infused with the naturally extracted sheep wool derived ingredient â€“ Juvexin â€“ keratin anti-aging protein â€“ this conditioner preserves hydration, balances and conditions the scalp and hair. Goodness of Natural seed oils and natural plant extracts leaves hair nourishes and locks in vibrancy.\r\n\r\nâ€œâ€¢ Apply evenly to clean and wet hair.\r\nâ€¢ Boost hairâ€™s strength and extends life of GK Hair Hair Taming treatment.\r\nâ€¢ No Sulphates, No Parabens, No Gluten, No Phthalate, No DEA or TEAâ€', '', 'â€œâ€¢ Apply evenly to clean and wet hair.\r\nâ€¢ Boost hairâ€™s strength and extends life of GK Hair Hair Taming treatment.\r\nâ€¢ No Sulphates, No Parabens, No Gluten, No Phthalate, No DEA or TEAâ€', 1800, 1, '16409371264714.png', 'balancing-conditioner-300ml', NULL, NULL, 0, 0, '', '', '', '2021-12-31 07:52:06', '2021-12-31 07:52:06', '0'),
(3, 2, 6, 'PH0001', 'EXTRA BUTTER DEEP MOISTURE MASK 1000 ML', 3, 'ENRICHED WITH KOKUM NUT BUTTER AND ROSE EXTRACT\r\nHYDRATING AND REGENERATING EFFECT\r\n\r\nMOISTURISING MASK FOR VERY DRY AND DEHYDRATED HAIR. PERFUMES, INFUSES SOFTNESS AND SHINE. DIRECTIONS FOR USE: APPLY TO TOWEL-DRIED HAIR, COMB THOROUGHLY AND PROCESS FROM 3 TO 5 MINUTES THEN RINSE.', 'ENRICHED WITH KOKUM NUT BUTTER AND ROSE EXTRACT\r\nHYDRATING AND REGENERATING EFFECT\r\n\r\nMOISTURISING MASK FOR VERY DRY AND DEHYDRATED HAIR. PERFUMES, INFUSES SOFTNESS AND SHINE. DIRECTIONS FOR USE: APPLY TO TOWEL-DRIED HAIR, COMB THOROUGHLY AND PROCESS FROM 3 TO 5 MINUTES THEN RINSE.\r\n\r\nFRAGRANCE\r\n\r\nTOP â€¢ GOURMANDE\r\nA SENSUAL FRAGRANCE THAT OPENS WITH FRUITY NOTES COMBINED WITH THE FEMININITY AND FRESHNESS OF THE ROSE.\r\nHEART â€¢ FLORAL\r\nAT ITS HEART, CREAMY WHITE FLOWERS ARE ACCOMPANIED BY SOFT IRIS\r\nBASE â€¢ WOODY\r\nITS BASE, SANDALWOOD, VANILLA AND MUSKY NOTES INFUSE WARMTH INTO THE MÃ‰LANGE NOTE.', 'FRAGRANCE\r\n\r\nTOP â€¢ GOURMANDE\r\nA SENSUAL FRAGRANCE THAT OPENS WITH FRUITY NOTES COMBINED WITH THE FEMININITY AND FRESHNESS OF THE ROSE.\r\nHEART â€¢ FLORAL\r\nAT ITS HEART, CREAMY WHITE FLOWERS ARE ACCOMPANIED BY SOFT IRIS\r\nBASE â€¢ WOODY\r\nITS BASE, SANDALWOOD, VANILLA AND MUSKY NOTES INFUSE WARMTH INTO THE MÃ‰LANGE NOTE.', '', 6250, 1, '16409371155928.png', 'extra-butter-deep-moisture-mask-1000-ml', NULL, NULL, 0, 0, '', '', '', '2021-12-31 07:51:55', '2021-12-31 07:51:55', '0'),
(4, 1, 6, 'PH0002', 'SMOOTH PERFECT MASK 1000 ML', 1, 'ENRICHED WITH MONOI OIL AND MAGNOLIA EXTRACT\r\nTAMING AND REPLUMPING EFFECT\r\n\r\nTAMING MASK FOR FRIZZY UNRULY HAIR. ACTS DEEPLY, ELIMINATES FRIZZINESS AND LEAVES THE HAIR SILKY AND SCENTED. DIRECTIONS FOR USE: APPLY TO TOWEL-DRIED HAIR, MASSAGE AND PROCESS FOR 3 TO 5 MINUTES AND THEN RINSE.', 'ENRICHED WITH MONOI OIL AND MAGNOLIA EXTRACT\r\nTAMING AND REPLUMPING EFFECT\r\n\r\nTAMING MASK FOR FRIZZY UNRULY HAIR. ACTS DEEPLY, ELIMINATES FRIZZINESS AND LEAVES THE HAIR SILKY AND SCENTED. DIRECTIONS FOR USE: APPLY TO TOWEL-DRIED HAIR, MASSAGE AND PROCESS FOR 3 TO 5 MINUTES AND THEN RINSE.\r\n\r\nFRAGRANCE\r\n\r\nTOP â€¢ ORIENTAL\r\nTHE FRAGRANCE REVOLVES AROUND A SOPHISTICATED HONEY ACCORD COMBINED WITH RED ORANGE AND SENSUAL WHITE FLOWERS.\r\nHEART â€¢ FLORAL\r\nAT ITS HEART, PEAR AND JASMINE GIVE A SUMMER TOUCH TO THE COMPOSITION.\r\nBASE â€¢ VANILLA\r\nAT THE BASE, VANILLA, PATCHOULY AND ELEGANT WHITE MUSK PROVIDE ROUNDNESS TO THE FRAGRANCE.', 'FRAGRANCE\r\n\r\nTOP â€¢ ORIENTAL\r\nTHE FRAGRANCE REVOLVES AROUND A SOPHISTICATED HONEY ACCORD COMBINED WITH RED ORANGE AND SENSUAL WHITE FLOWERS.\r\nHEART â€¢ FLORAL\r\nAT ITS HEART, PEAR AND JASMINE GIVE A SUMMER TOUCH TO THE COMPOSITION.\r\nBASE â€¢ VANILLA\r\nAT THE BASE, VANILLA, PATCHOULY AND ELEGANT WHITE MUSK PROVIDE ROUNDNESS TO THE FRAGRANCE.', '', 6250, 1, '16409370899033.png', 'smooth-perfect-mask-1000-ml', NULL, NULL, 0, 0, '', '', '', '2021-12-31 07:51:29', '2021-12-31 07:51:29', '0'),
(5, 2, 2, 'T0001', 'Volume Obsessed Conditioner Color Protection / 300 ml', 2, 'Conditions and gives body to all hair types Nourishes hair with natural hydrator Trioxxy provides nourishment and resilience Contains no SLS (Sodium Lauryl Sulfate) or SLES (Sodium Laureth Sulfate) for hair color protection', 'Conditions and gives body to all hair types Nourishes hair with natural hydrator Trioxxy provides nourishment and resilience Contains no SLS (Sodium Lauryl Sulfate) or SLES (Sodium Laureth Sulfate) for hair color protection', 'Conditions and gives body to all hair types Nourishes hair with natural hydrator Trioxxy provides nourishment and resilience Contains no SLS (Sodium Lauryl Sulfate) or SLES (Sodium Laureth Sulfate) for hair color protection', 'Conditions and gives body to all hair types Nourishes hair with natural hydrator Trioxxy provides nourishment and resilience Contains no SLS (Sodium Lauryl Sulfate) or SLES (Sodium Laureth Sulfate) for hair color protection', 1250, 1, '16409370998449.png', 'volume-obsessed-conditioner-color-protection-300-ml', NULL, NULL, 0, 0, '', '', '', '2021-12-31 07:51:39', '2021-12-31 07:51:39', '0'),
(6, 2, 6, 'T0002', 'Pre-Treatment Shampoo /1000 ml', 1, 'Removes excess styling products and impurity build up on hair Leaves hair cleansed and prepped for the Tibolli trioxxy hair treatment Opens the hair cuticle, soothing and cleansing the scalp Trioxxy provides nourishment and resilience', 'Removes excess styling products and impurity build up on hair Leaves hair cleansed and prepped for the Tibolli trioxxy hair treatment Opens the hair cuticle, soothing and cleansing the scalp Trioxxy provides nourishment and resilience', 'Removes excess styling products and impurity build up on hair Leaves hair cleansed and prepped for the Tibolli trioxxy hair treatment Opens the hair cuticle, soothing and cleansing the scalp Trioxxy provides nourishment and resilience', 'Removes excess styling products and impurity build up on hair Leaves hair cleansed and prepped for the Tibolli trioxxy hair treatment Opens the hair cuticle, soothing and cleansing the scalp Trioxxy provides nourishment and resilience', 2000, 1, '16409359044629.png', 'pre-treatment-shampoo-1000-ml', NULL, NULL, 0, 0, '', '', '', '2021-12-31 07:31:44', '2021-12-31 07:31:44', '0');

-- --------------------------------------------------------

--
-- Table structure for table `product_association`
--

CREATE TABLE `product_association` (
  `assoc_id` int(11) NOT NULL,
  `salon_code` varchar(50) NOT NULL,
  `product_id` int(11) NOT NULL,
  `selling_price` decimal(10,2) NOT NULL,
  `deal_price` decimal(10,2) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `updated_on` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_association`
--

INSERT INTO `product_association` (`assoc_id`, `salon_code`, `product_id`, `selling_price`, `deal_price`, `is_active`, `updated_on`) VALUES
(1, 'MSDDEC20/041053/XYRFR', 1, '3000.00', '1000.00', 1, '2021-05-17 16:25:56'),
(2, 'MSDDEC20/041053/XYRFR', 2, '1100.00', '1000.00', 1, '2021-05-17 16:25:56'),
(3, 'MSDDEC20/041053/XYRFR', 3, '6250.00', '5000.00', 1, '2020-12-04 11:42:43'),
(4, 'MSDDEC20/041053/XYRFR', 4, '6250.00', '5000.00', 1, '2020-12-04 11:42:43'),
(5, 'MSDDEC20/041147/H5AHI', 5, '2000.00', '1000.00', 1, '2020-12-04 12:20:01'),
(6, 'MSDDEC20/041147/H5AHI', 6, '2000.00', '1500.00', 1, '2020-12-04 12:20:01'),
(7, 'MSDMAR21/221151/NM5GA', 1, '1700.00', '1500.00', 1, '2021-03-24 17:32:21'),
(8, 'MSDMAR21/221151/NM5GA', 2, '1800.00', '1600.00', 1, '2021-03-24 17:29:15'),
(9, 'MSDMAR21/161519/G150M', 1, '1700.00', '0.00', 1, '2021-04-21 18:29:53'),
(10, 'MSDMAR21/161519/G150M', 2, '1800.00', '0.00', 1, '2021-04-21 18:29:53'),
(11, 'MSDSEP21/131057/PL71X', 1, '1700.00', '1000.00', 1, '2021-09-14 11:32:46'),
(12, 'MSDSEP21/131057/PL71X', 3, '6250.00', '6000.00', 1, '2021-09-14 11:37:20');

-- --------------------------------------------------------

--
-- Table structure for table `product_cart`
--

CREATE TABLE `product_cart` (
  `cart_id` int(11) NOT NULL,
  `customer_id` varchar(30) NOT NULL,
  `product_id` int(11) NOT NULL,
  `cart_quantity` int(11) NOT NULL,
  `assoc_id` int(11) NOT NULL DEFAULT 0,
  `added_on` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_cart`
--

INSERT INTO `product_cart` (`cart_id`, `customer_id`, `product_id`, `cart_quantity`, `assoc_id`, `added_on`) VALUES
(88, '5', 1, 1, 1, '2021-12-13 10:05:28'),
(87, '5', 1, 1, 1, '2021-11-10 12:23:50');

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `product_category_id` int(11) NOT NULL,
  `category_id` varchar(100) DEFAULT NULL,
  `category_name` varchar(255) NOT NULL,
  `description` varchar(2500) DEFAULT NULL,
  `category_icon` varchar(255) NOT NULL,
  `category_image` varchar(2500) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` text NOT NULL,
  `meta_keyword` text NOT NULL,
  `permalink` varchar(255) NOT NULL,
  `updated_on` datetime NOT NULL,
  `created_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`product_category_id`, `category_id`, `category_name`, `description`, `category_icon`, `category_image`, `status`, `meta_title`, `meta_description`, `meta_keyword`, `permalink`, `updated_on`, `created_on`) VALUES
(1, '6', 'Skin Care', '', '1623068433user7-128x128.jpg', NULL, 1, '', '', '', 'test123', '2021-06-08 11:40:49', '2021-06-07 17:50:33'),
(2, '3', 'Nail Care', '', '1623128075user8-128x128.jpg', NULL, 1, '', '', '', 'test1', '2021-06-08 10:24:35', '2021-06-07 18:12:22'),
(3, '2', 'Make Up', '', '', NULL, 1, '', '', '', 'testname', '2021-06-08 11:40:34', '2021-06-08 09:57:27'),
(4, '11', 'Nail', '', '', NULL, 1, '', '', '', 'test-pro', '2021-06-08 11:40:22', '2021-06-08 09:58:02'),
(5, '', 'Lipss', NULL, '16403254641881.jpg', '164032543192180.jpg', 1, '', '', '', '', '2021-12-24 05:57:44', '2021-12-24 05:57:44'),
(6, '', 'sdfadf vnbvn', 'sfsdaf kjhkjhkjhk', '16402368842203.jpg', '164023688448472.jpg', 1, '', '', '', '', '2021-12-23 05:25:12', '2021-12-23 05:25:12');

-- --------------------------------------------------------

--
-- Table structure for table `product_gallery`
--

CREATE TABLE `product_gallery` (
  `gallery_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_gallery`
--

INSERT INTO `product_gallery` (`gallery_id`, `product_id`, `product_image`) VALUES
(1, 8, '16237539241591333261category-1.png'),
(2, 8, '16237539241591333434category-2.png'),
(3, 8, '16237539241591333639category-7.png'),
(4, 9, '16237539771589543326moisturizing-Shampoo-1L.jpg'),
(5, 9, '16237539771589522057moisturizing-Shampoo-1L.jpg'),
(6, 12, '16237541711589807031Loreal-Paris-Spotlight-Hairstyle-Elnett-Satin-Color-Treated-Hair-M.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `product_inventory`
--

CREATE TABLE `product_inventory` (
  `inventory_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` varchar(50) NOT NULL DEFAULT '',
  `available_quantity` int(11) NOT NULL DEFAULT 0,
  `updated_on` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_inventory`
--

INSERT INTO `product_inventory` (`inventory_id`, `product_id`, `user_id`, `available_quantity`, `updated_on`) VALUES
(1, 1, 'MSDDEC20/041053/XYRFR', 50, '2020-12-04 11:41:56'),
(2, 2, 'MSDDEC20/041053/XYRFR', 50, '2020-12-04 11:41:56'),
(3, 3, 'MSDDEC20/041053/XYRFR', 99, '2021-08-13 11:50:52'),
(4, 4, 'MSDDEC20/041053/XYRFR', 100, '2020-12-04 11:42:43'),
(5, 5, 'MSDDEC20/041147/H5AHI', 100, '2020-12-04 12:20:01'),
(6, 6, 'MSDDEC20/041147/H5AHI', 100, '2020-12-04 12:20:01'),
(7, 1, 'MSDMAR21/221151/NM5GA', 100, '2021-03-24 17:24:20'),
(8, 2, 'MSDMAR21/221151/NM5GA', 100, '2021-03-24 17:24:20'),
(9, 1, 'MSDMAR21/161519/G150M', 100, '2021-04-21 18:29:53'),
(10, 2, 'MSDMAR21/161519/G150M', 100, '2021-04-21 18:29:53'),
(11, 1, 'MSDSEP21/131057/PL71X', 10, '2021-09-14 11:32:46'),
(12, 3, 'MSDSEP21/131057/PL71X', 5, '2021-09-14 11:37:20');

-- --------------------------------------------------------

--
-- Table structure for table `product_wishlist`
--

CREATE TABLE `product_wishlist` (
  `wish_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_wishlist`
--

INSERT INTO `product_wishlist` (`wish_id`, `product_id`, `package_id`, `customer_id`, `added_on`) VALUES
(22, 5, 0, 5, '2021-12-02 15:35:51'),
(21, 6, 0, 5, '2021-12-02 15:35:34'),
(23, 0, 1, 5, '2021-12-02 16:26:07'),
(24, 0, 2, 5, '2021-12-02 16:26:30'),
(25, 0, 8, 5, '2021-12-13 10:22:18'),
(26, 2, 0, 5, '2021-12-15 12:24:09'),
(27, 1, 0, 5, '2021-12-15 12:24:27');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `id` int(11) NOT NULL,
  `uid` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `package_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_key` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `database_server` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `database_user` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `database_pwd` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `database_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `document_root` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `assigned_user` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `enable` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`id`, `uid`, `package_id`, `project_key`, `name`, `domain`, `database_server`, `database_user`, `database_pwd`, `database_name`, `document_root`, `assigned_user`, `start_date`, `enable`) VALUES
(10, '9', '', '1276864229', 'Bloom Application', 'https://abgo.in/bloom', '', '', '', '', '', '15,9,3', '0000-00-00', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `reg_verification`
--

CREATE TABLE `reg_verification` (
  `verification_id` int(11) NOT NULL,
  `user_type` enum('CUSTOMER','SALON','TECHNICAL','CORPORATE') NOT NULL DEFAULT 'CUSTOMER',
  `user_code` varchar(50) NOT NULL,
  `otp_code` int(11) NOT NULL,
  `email_code` varchar(200) NOT NULL,
  `created_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reg_verification`
--

INSERT INTO `reg_verification` (`verification_id`, `user_type`, `user_code`, `otp_code`, `email_code`, `created_on`) VALUES
(1, 'SALON', 'MSDDEC20/031809/158J9', 548535, 'ca48516d70ca16471d20410f717c0e9c548535', '2020-12-03 18:10:53'),
(2, 'SALON', 'MSDDEC20/031812/XXREM', 274440, 'bc57735225e36851da45f5a03d94ad8b274440', '2020-12-03 18:14:54'),
(3, 'SALON', 'MSDDEC20/031826/ERCLH', 449955, 'a2475e2021672195c62fd751898f92d0449955', '2020-12-03 18:29:48'),
(4, 'SALON', 'MSDDEC20/041053/XYRFR', 333667, '667472de1170da6b44f5386786ca7846333667', '2020-12-04 10:56:35'),
(5, 'SALON', 'MSDDEC20/041147/H5AHI', 131635, '4236f04c1aad780bffcafacd24ee0e90131635', '2020-12-04 12:00:29'),
(6, 'TECHNICAL', 'MSDT/04DEC202016/5QE', 562869, '51ed7da6fabdcf4387f87a7c21ba252c562869', '2020-12-04 16:43:10'),
(7, 'CORPORATE', 'MSD-CORDEC20/101752/MXBJE', 217225, '493e493b590781b1d54b3a478908d14f217225', '2020-12-10 17:56:19'),
(8, 'CUSTOMER', '1', 710228, 'aa8d056da604018e822a1a73df107730710228', '2021-02-04 14:37:04'),
(9, 'CUSTOMER', '2', 908437, '48aa78a15e6b697204cbe9a5d1d809a8908437', '2021-03-16 15:16:35'),
(10, 'SALON', 'MSDMAR21/161519/G150M', 750689, '2167c03e02a874b0db97e9ee584a0e4d750689', '2021-03-16 15:24:38'),
(11, 'TECHNICAL', 'MSDT/16MAR202115/TSU', 598388, 'e2b9fb4df8cd4f8a5ec380749347ed09598388', '2021-03-16 15:51:57'),
(12, 'CUSTOMER', '4', 818279, 'ef352b9b956375cf696762f7a2bc72da818279', '2021-03-18 14:03:06'),
(13, 'CORPORATE', 'MSD-CORMAR21/191037/Y74MG', 511630, 'afe2ae9288a6e4de599cc553298a7f80511630', '2021-03-19 10:44:14'),
(14, 'CUSTOMER', '5', 125664, 'd3939481480f1e916c4299e60268a8e2125664', '2021-03-24 11:16:53'),
(15, 'CUSTOMER', '6', 189145, 'a1c21d60b55f85064e39f1111cbea5a0189145', '2021-03-24 18:19:58'),
(16, 'CUSTOMER', '7', 972481, 'a1fd719e1803c0d7a44372070f4a847f972481', '2021-05-06 10:37:19'),
(17, 'CUSTOMER', '8', 904804, '0d89ab5019c1fb257b90df1c54502e96904804', '2021-05-13 14:53:33'),
(18, 'CUSTOMER', '9', 467408, '319feda7344270b253de8ce9fc64c647467408', '2021-05-25 18:31:20'),
(19, 'CUSTOMER', '10', 326958, '873add96d10020be618dbbd2f00f85dc326958', '2021-05-26 10:17:49'),
(20, 'CUSTOMER', '11', 981679, '5f8ca59f93e0f8934a02076e05a1714c981679', '2021-05-26 16:47:37'),
(21, 'CUSTOMER', '12', 226009, '4cfa6dcc38f8f8213701a77054f24a7f226009', '2021-05-26 16:48:31'),
(22, 'CUSTOMER', '13', 106556, 'a894dc55a5878ca4dad68ce7e3a50382106556', '2021-05-26 16:49:45'),
(23, 'SALON', 'MSDMAY21/311609/KXVKD', 562788, '41e6e3bf27f0691ce4f855122be2a714562788', '2021-05-31 16:11:48'),
(24, 'TECHNICAL', 'MSDT/31MAY202116/M63', 546018, '57ba9d167eedb0891a98f3233668d1fa546018', '2021-05-31 16:15:34'),
(25, 'SALON', 'MSDJUN21/011800/8LKUY', 695776, '3167d570bb8ddacbee96a176229570b6695776', '2021-06-01 18:00:13'),
(26, 'CUSTOMER', '14', 124346, 'a1dd0a8c9380f993ee391b4ca92f691f124346', '2021-06-07 12:20:48'),
(27, 'SALON', 'MSDJUL21/281453/RPO32', 152637, '43b6434413179bce7d64d93a3861bb91152637', '2021-07-28 14:58:39'),
(28, 'SALON', 'MSDJUL21/281529/D2SSE', 301249, '43b6434413179bce7d64d93a3861bb91301249', '2021-07-28 15:30:25'),
(29, 'SALON', 'MSDJUL21/281535/1OSNS', 233305, '43b6434413179bce7d64d93a3861bb91233305', '2021-07-28 15:36:33'),
(30, 'SALON', 'MSDJUL21/281542/77LQA', 613541, '43b6434413179bce7d64d93a3861bb91613541', '2021-07-28 15:43:08'),
(31, 'CUSTOMER', '15', 623522, '6a0edf2012732e4e17cbd8c12fbd4a76623522', '2021-08-14 12:55:28'),
(32, 'TECHNICAL', 'MSDT/17AUG202116/ONC', 949470, 'c12d7246121dca5123229894964e8602949470', '2021-08-17 16:43:16'),
(33, 'CUSTOMER', '16', 361645, 'af9f450c573a95ea55104bbea5528839361645', '0000-00-00 00:00:00'),
(34, 'CUSTOMER', '17', 527529, 'e5c016c36017d9d60b70971ee2906283527529', '2021-08-25 18:08:00'),
(35, 'CUSTOMER', '18', 279156, '6a9fb603c3de7b37e18fb89f78ce8970279156', '2021-08-26 10:46:43'),
(36, 'CUSTOMER', '19', 823059, 'fee7054acb2203a283428f3d43ee10c2823059', '2021-08-26 10:58:07'),
(37, 'CUSTOMER', '20', 971379, '1b9b24f5c866d55c52d442e2ebef8648971379', '2021-08-26 11:31:00'),
(38, 'CUSTOMER', '21', 458002, '5c230adc837e8d9a602a69be903b973d458002', '2021-08-26 11:35:28'),
(39, 'CUSTOMER', '22', 141167, 'cf4842e6a2acba09a91b3d8cc9c74928141167', '2021-08-26 11:44:43'),
(40, 'CUSTOMER', '23', 542464, '984bbed18378e3b3b853c35249c45b0b542464', '2021-08-26 11:47:27'),
(41, 'CUSTOMER', '24', 557930, '0dc3d4a2a6fc446a1e6cc7a2be4c195d557930', '2021-08-26 11:51:20'),
(42, 'CUSTOMER', '25', 742832, '464aa70b5fdbee9199c9863f6d96b227742832', '2021-08-26 12:01:32'),
(43, 'CUSTOMER', '26', 706378, '042b788ab3f65221653e63edd28c5fb3706378', '2021-08-26 12:08:57'),
(44, 'CUSTOMER', '27', 805554, 'e070c9c41ccb8bcd278f4473c4e64745805554', '2021-08-26 12:14:36'),
(45, 'CUSTOMER', '28', 181393, '2766ac3cde860fb77c9cf7787fa47c33181393', '2021-08-26 13:30:35'),
(46, 'CUSTOMER', '29', 788192, 'ca5990feddc5bc012a1c2e8087315d1a788192', '2021-08-26 14:42:49'),
(47, 'CUSTOMER', '30', 866866, 'b51089cdc0ae76b285f1b0fd33169b71866866', '2021-08-26 14:48:01'),
(48, 'CUSTOMER', '31', 788155, '40d33802ecab55cb29e2ebf4a4e5aa55788155', '2021-08-26 14:52:12'),
(49, 'CUSTOMER', '32', 849378, 'ed53e691ee322e24d8cc843fff68ebc6849378', '2021-08-28 11:57:33'),
(50, 'CUSTOMER', '33', 991962, 'e494f04804d6fc4a30099e81d9b53b9e991962', '2021-08-28 12:29:06'),
(51, 'CUSTOMER', '34', 887506, '631a8daa46d956d541dfb411b22274e3887506', '2021-08-28 13:39:12'),
(52, 'CUSTOMER', '35', 660167, '07b144b0989ee2852d3ac2fa52bc179d660167', '2021-08-28 13:49:46'),
(53, 'CUSTOMER', '36', 208588, '44700bdf5a980114598aa86555e852b8208588', '2021-08-28 13:56:25'),
(54, 'CUSTOMER', '37', 840079, '22cec7d4fffb74b64c3d4fe60da4acf8840079', '2021-08-28 13:59:49'),
(55, 'CUSTOMER', '38', 946221, '7528cad73834fe5ef0394aa2b21ffd99946221', '2021-08-28 14:02:14'),
(56, 'CUSTOMER', '39', 190732, '59e94a979c7b0658ae088f219a6f451a190732', '2021-08-28 14:04:58'),
(57, 'CUSTOMER', '40', 400268, '92eb9cb47ff1f787ac5ef5405966303a400268', '2021-08-28 14:07:32'),
(58, 'CUSTOMER', '41', 499230, 'be67578f1cf212a4074bf36797ec1aa2499230', '2021-08-28 14:15:54'),
(59, 'CUSTOMER', '42', 740547, 'bbba2c6772a398faa03febf72b85b06f740547', '2021-08-28 14:20:02'),
(60, 'CUSTOMER', '43', 809300, '1b1398ff6a2eacb7e77fd96c4cd9d37b809300', '2021-08-28 14:22:25'),
(61, 'CUSTOMER', '44', 502664, 'a3669b21a6668ee2be20d90b4dea9324502664', '2021-08-31 16:56:07'),
(62, 'CUSTOMER', '50', 187270, 'b242fbbd0edf71e6b76444149b969ce1187270', '2021-09-01 11:11:38'),
(63, 'CUSTOMER', '51', 802217, 'b242fbbd0edf71e6b76444149b969ce1802217', '2021-09-01 11:13:12'),
(64, 'CUSTOMER', '52', 853251, 'b242fbbd0edf71e6b76444149b969ce1853251', '2021-09-01 11:15:49'),
(65, 'CUSTOMER', '53', 749437, '6a29079c0172aba307a22c7df2da8e1e749437', '2021-09-01 11:22:54'),
(66, 'CUSTOMER', '54', 560910, '25c51ff3d6b9425220b529839e83739e560910', '2021-09-01 11:30:25'),
(67, 'CUSTOMER', '55', 990401, 'e297b51a888056111cb8c5c59770cc9e990401', '2021-09-01 12:20:08'),
(68, 'CUSTOMER', '56', 273648, '7cd3c62489c50594ad9e3be8bd2387d4273648', '2021-09-01 13:18:10'),
(69, 'CUSTOMER', '57', 499415, 'f3d9c46c2f735951c8ad14db542ecf09499415', '2021-09-01 15:04:21'),
(70, 'CUSTOMER', '58', 595832, 'a45e78c2c8cdc25a8ba77fc400bf01c9595832', '2021-09-01 15:06:39'),
(71, 'CUSTOMER', '59', 227362, 'fc4445639798ac05def61815f724bc62227362', '2021-09-01 16:53:30'),
(72, 'CUSTOMER', '60', 889831, '6b65fc9725950f8097832d959efce0c6889831', '2021-09-01 17:00:57'),
(73, 'CUSTOMER', '61', 121400, '2996423375f361b70240e5cb2f7594e4121400', '2021-09-01 17:03:42'),
(74, 'CUSTOMER', '62', 629056, 'bf159b52914cc6ff6e7819392770e2e1629056', '2021-09-01 17:13:07'),
(75, 'CUSTOMER', '63', 959226, '518f77480606b55f755980b357db2b37959226', '2021-09-01 17:15:41'),
(76, 'CUSTOMER', '64', 308660, '065c0eb95660eeb5534af131f9a67718308660', '2021-09-01 17:25:37'),
(77, 'CUSTOMER', '65', 349978, '9a9f6d87aec3b983b5f25dfdbf1dd3ea349978', '2021-09-01 17:27:01'),
(78, 'SALON', 'MSDSEP21/091526/M9Q3P', 723787, '245998312d2b24c11fcb341a63c3a17d723787', '2021-09-09 15:29:59'),
(79, 'SALON', 'MSDSEP21/091534/M53UF', 760896, 'c7c720e08117b2ae25aab45b4b2bd8b8760896', '2021-09-09 15:35:26'),
(80, 'SALON', 'MSDSEP21/131045/VLHP3', 315021, '28f3f2926240bc33b6505e6451086cf4315021', '2021-09-13 10:48:40'),
(81, 'SALON', 'MSDSEP21/131051/2NWT7', 719406, '28f3f2926240bc33b6505e6451086cf4719406', '2021-09-13 10:54:19'),
(82, 'SALON', 'MSDSEP21/131057/PL71X', 773226, '28f3f2926240bc33b6505e6451086cf4773226', '2021-09-13 10:58:13'),
(83, 'SALON', 'MSDSEP21/131108/LVT0V', 514152, '21ad5ae0689bcea5e6fb0f4efab0bf95514152', '2021-09-13 11:10:46'),
(84, 'TECHNICAL', 'MSDT/14SEP202117/SBJ', 394538, 'e391eb5e9045d6165229b5fa7dd6692d394538', '2021-09-14 17:37:13'),
(85, 'SALON', 'MSDSEP21/151309/NHEIC', 906828, '677a4a4a7ed3b576974927831eb7b083906828', '2021-09-15 13:12:56'),
(86, 'TECHNICAL', 'MSDT/15SEP202113/4VN', 934231, '2d36d529281987d82508ddf26355922b934231', '2021-09-15 14:42:38'),
(87, 'TECHNICAL', 'MSDT/25NOV202111/7FN', 623403, '920943084b602cdf762dbe0b0954a714623403', '2021-11-25 11:37:48'),
(88, 'TECHNICAL', 'MSDT/25NOV202111/0DE', 994377, '6afc48cf29ab3f492b0b731db5de52c7994377', '2021-11-25 11:47:17');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `id` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `privileges` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`id`, `name`, `privileges`) VALUES
(1, 'Administrator', '1,2,11,12,10,14,15'),
(2, 'Project Manager', '1,11,12,10'),
(3, 'accounts', ''),
(4, 'Account', ''),
(5, 'Account', ''),
(6, 'Account', ''),
(7, 'Account', ''),
(8, 'accounts', ''),
(9, 'accounts', '1,2,3,11,12,13,14,15'),
(10, 'test', '1,2,11,12,10,14,15'),
(11, 'dsfdsfa', '1,11,10,14'),
(12, 'IT Head', '1,2,11,12');

-- --------------------------------------------------------

--
-- Table structure for table `salons`
--

CREATE TABLE `salons` (
  `salon_id` int(11) NOT NULL,
  `corp_id` varchar(50) DEFAULT NULL,
  `work_with` int(11) NOT NULL DEFAULT 0 COMMENT '1=>Fragmented, 2=>Corporate',
  `salon_code` varchar(200) NOT NULL,
  `type_id` int(11) NOT NULL,
  `category_id` varchar(500) NOT NULL,
  `service_id` varchar(1000) DEFAULT NULL,
  `brand_id` varchar(500) DEFAULT NULL,
  `salon_name` varchar(200) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `phone_number` bigint(20) NOT NULL,
  `mobile_number` bigint(20) NOT NULL,
  `contact_person` varchar(100) NOT NULL,
  `email_address` varchar(100) NOT NULL,
  `country_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `branches` int(11) NOT NULL,
  `og_type` varchar(50) NOT NULL,
  `complete_address` varchar(300) NOT NULL DEFAULT '',
  `landmark` varchar(200) NOT NULL DEFAULT '',
  `pincode` int(11) NOT NULL,
  `latitude` varchar(30) NOT NULL DEFAULT '0',
  `longitude` varchar(30) NOT NULL DEFAULT '0',
  `pan_number` varchar(50) NOT NULL,
  `pan_document` varchar(2500) NOT NULL,
  `gst_number` varchar(50) NOT NULL,
  `gst_document` varchar(2500) NOT NULL,
  `opening_time` varchar(30) NOT NULL DEFAULT '00:00:00',
  `closing_time` varchar(30) NOT NULL DEFAULT '00:00:00',
  `website` varchar(100) NOT NULL DEFAULT '',
  `business` varchar(25) NOT NULL,
  `display_picture` varchar(255) NOT NULL DEFAULT '',
  `about_salon` text NOT NULL,
  `is_provice_home_booking` enum('0','1') NOT NULL DEFAULT '0',
  `act_status` tinyint(1) NOT NULL DEFAULT 0,
  `phone_verification` enum('VERIFIED','PENDING') NOT NULL DEFAULT 'PENDING',
  `email_verification` enum('VERIFIED','PENDING') NOT NULL DEFAULT 'PENDING',
  `permalink` varchar(200) NOT NULL DEFAULT '',
  `meta_title` varchar(500) NOT NULL DEFAULT '',
  `meta_decsription` varchar(500) NOT NULL DEFAULT '',
  `meta_keyword` varchar(500) NOT NULL DEFAULT '',
  `salon_creator` int(11) NOT NULL DEFAULT 0,
  `creator_ip` varchar(30) NOT NULL,
  `updated_on` datetime NOT NULL,
  `created_on` datetime NOT NULL,
  `available_days` varchar(255) NOT NULL DEFAULT '',
  `avg_review_ratings` decimal(10,2) NOT NULL DEFAULT 0.00,
  `is_maintained_hygiene` tinyint(1) NOT NULL DEFAULT 0,
  `hygiene_description` text NOT NULL,
  `hygiene_percentage` int(11) NOT NULL DEFAULT 0,
  `is_featured` tinyint(1) NOT NULL,
  `is_dispay_to_home_page` tinyint(1) NOT NULL DEFAULT 0,
  `avg_services_price` decimal(10,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `salons`
--

INSERT INTO `salons` (`salon_id`, `corp_id`, `work_with`, `salon_code`, `type_id`, `category_id`, `service_id`, `brand_id`, `salon_name`, `first_name`, `last_name`, `phone_number`, `mobile_number`, `contact_person`, `email_address`, `country_id`, `state_id`, `city_id`, `branches`, `og_type`, `complete_address`, `landmark`, `pincode`, `latitude`, `longitude`, `pan_number`, `pan_document`, `gst_number`, `gst_document`, `opening_time`, `closing_time`, `website`, `business`, `display_picture`, `about_salon`, `is_provice_home_booking`, `act_status`, `phone_verification`, `email_verification`, `permalink`, `meta_title`, `meta_decsription`, `meta_keyword`, `salon_creator`, `creator_ip`, `updated_on`, `created_on`, `available_days`, `avg_review_ratings`, `is_maintained_hygiene`, `hygiene_description`, `hygiene_percentage`, `is_featured`, `is_dispay_to_home_page`, `avg_services_price`) VALUES
(1, '', 1, 'MSDDEC20/041053/XYRFR', 1, '', '1,2,3,4,5,6,13,19,34', '1,2,3', 'Geetanjali Studio', '1140568611', '1140568611', 1140568611, 1140568611, 'Reception', 'customercare@geetanjalisalon.com', 100, 14, 1194, 0, '', 'B 6/23, Safdarjung Enclave, Above The Pianoman Jazz Club New Delhi', '', 110029, '28.4576885', '77.0408059', '', '', '', '', '', '', 'http://www.testrwqew.com', '5000000', '1637653979geetanjalisalon.png', 'Over the years, Geetanjali Salon has been a pioneer in providing customers with luxurious experience for Hair, Skin, Hands & Feet, Barber Shop and Makeup with best-in-class products, finest amenities and professionally trained staff. With sophisticated establishments at all prime locations, tailored to meet diversified customers, today there are over 100 outlets Pan-India.ttt', '1', 1, 'VERIFIED', 'VERIFIED', 'geetanjali-studio', 'Geetanjali Studio', 'Geetanjali Studio', 'Geetanjali Studio', 0, '125.63.95.42', '2021-11-23 13:22:59', '2020-12-04 10:56:35', '', '5.00', 0, '', 0, 1, 1, '0.00'),
(2, '', 1, 'MSDDEC20/041147/H5AHI', 2, '', '', '', 'Cut & Style', '1800120001', '1800120001', 1800120001, 1800120001, 'Reception', 'info@CutandStyleSalons.com', 100, 17, 1962, 0, '', 'Shop No 5, Market, opposite Mayom Hospital, South City I, Sector 41, Gurugram, Haryana ', '', 122001, '28.4576885', '77.0408059', '', '', '', '', '', '', 'http://www.cutandstyle.co/', '', '1637663165Cut&style-logo.png', 'A strong body\r\nA clear mind\r\nA pure spirit\r\nAn obligation for the welfare of the people', '1', 1, 'VERIFIED', 'VERIFIED', 'cut-style', 'Cut & Style', 'Cut & Style', 'Cut & Style', 0, '125.63.95.42', '2021-11-23 15:56:05', '2020-12-04 12:00:29', 'sunday,monday,tuesday,wednesday,thursday,friday,saturday', '3.00', 0, '', 0, 1, 1, '0.00'),
(3, '', 1, 'MSDMAR21/161519/G150M', 1, '', '', '', 'Salon One', '955682334', '955682334', 955682334, 9717102772, 'Salon One Person', 'testperson@yopmail.com', 100, 17, 1962, 0, '', '15, Sector 44, Gurugram, Haryana 122003, India', '', 122001, '28.459899', '77.06794769999999', '', '', '', '', '', '', '', '', '1637663418geetanjalisalon.png', 'dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s', '1', 1, 'VERIFIED', 'VERIFIED', 'test-salon', 'Test Salon', 'Test Salon', 'Test Salon', 0, '125.63.95.42', '2021-11-23 16:43:09', '2021-03-16 15:24:38', 'sunday,monday,tuesday,wednesday,thursday,friday,saturday', '3.00', 0, '', 0, 1, 1, '0.00'),
(4, '2', 0, 'MSDMAR21/221151/NM5GA', 1, '1,2', '2,4,10,11', '3', 'Corporate Salon One', '', '', 9843437837, 9843437837, 'First Salon Person', 'firstsalon@yopmail.com', 100, 17, 1962, 0, '', '15, Sector 44, Gurugram, Haryana 122003, India', 'sector 44', 122002, '28.4576885', '77.0408059', '', '', '', '', '09:30 am', '10:00 pm', '', '', 'look.png', 'dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s', '0', 1, 'VERIFIED', 'VERIFIED', 'first-salon', 'meta title', 'meta desf xvcxv', 'meta keyword dsf', 0, '::1', '2021-03-24 10:41:23', '2021-03-22 11:58:51', 'sunday,monday,tuesday,wednesday,thursday,friday,saturday', '3.00', 0, '', 0, 1, 1, '0.00'),
(5, '2', 0, 'MSDMAR21/221548/PAECK', 3, '3,4', '3,2,8', NULL, 'Corporate Salon Two', '', '', 324324243, 7897328783, 'Second Salon Person', 'secondsalon@yopmail.com', 100, 17, 1962, 0, '', '15, Sector 44, Gurugram, Haryana 122003, India', 'near sect 14', 122001, '28.4576885', '77.0408059', '', '', '', '', '10:50 am', '08:50 pm', 'https://secondsalon.com', '', 'abcxyz.png', 'dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s', '0', 1, 'VERIFIED', 'VERIFIED', 'second-salon', 'sdsasdfa', 'dsfa dsfa', 'sdfa fdsfas dsfas', 0, '::1', '2021-03-24 10:42:51', '2021-03-22 15:51:48', 'sunday,monday,tuesday,wednesday,thursday,friday,saturday', '2.00', 0, '', 0, 1, 1, '0.00'),
(22, NULL, 0, 'MSDJUN21/011800/8LKUY', 2, '', '1,2,3,4,8', '1,2,3', 'Creative Salon', '', '', 122311111, 9712312221, 'werewrew', 'creative_salon@yopmail.com', 100, 14, 1194, 0, '', '15, Sector 44, Gurugram, Haryana 122003, India', 'werewrewdd', 234561, '454.884758', '34.56889', '', '', '', '', '09:00 am', '10:00 pm', 'https://www.test.com', '', 'hunhun.png', 'dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s', '1', 1, 'PENDING', 'PENDING', 'creative-salon', 'Creative Salon', 'Creative Salon', 'Creative Salon', 0, '106.223.35.241', '2021-06-01 18:00:13', '2021-06-01 18:00:13', '', '4.00', 0, '', 0, 1, 1, '0.00'),
(23, '', 1, 'MSDSEP21/091526/M9Q3P', 3, '', '', '', 'tsalon', '53243243232', '53243243232', 53243243232, 3432432432, 'tushar', 'tushar@yopmail.com', 100, 17, 1962, 0, '', 'sfaf', '', 120015, '28.499295', '77.0710707', 'cntpp7888e', '1631181599artist4.jpg', 'ertretetteteteteretre', '1631181599artist.jpg', '', '', '', '', '1637663212affinity-express-logo.png', 'dsaf sfsafsaf af', '0', 0, 'VERIFIED', 'VERIFIED', 'tsalon', 'tsalon', 'tsalon', 'tsalon', 0, '::1', '2021-11-23 15:56:52', '2021-09-09 15:29:59', '', '2.00', 0, '', 0, 0, 0, '0.00'),
(24, '', 1, 'MSDSEP21/091534/M53UF', 3, '', '', '', 'tsalon', '54353534', '54353534', 54353534, 34534543, 'tushar', 'tushar11@yopmail.com', 100, 16, 1019, 0, '', 'sfaf', '', 120015, '28.5048832', '77.070336', 'cntpp7888e', '1631181926artist4.jpg', 'ertretetteteteteretre', '1631181926artist.jpg', '', '', '', '', '1637663226Hair-masters.png', 'dsaf sfsafsaf af', '0', 0, 'VERIFIED', 'VERIFIED', 'tsalon-xzu8', 'tsalon', 'tsalon', 'tsalon', 0, '::1', '2021-11-23 15:57:06', '2021-09-09 15:35:26', '', '1.00', 0, '', 0, 0, 0, '0.00'),
(27, '', 1, 'MSDSEP21/131057/PL71X', 1, '', '', '', 'Ksalon', '9089032894', '9089032894', 9089032894, 9809328409, 'sdfsa', 'tapeshwar.pandit@maisondauraine.in', 100, 9, 194, 0, '', 'sdasf', '', 324234, '28.5057948', '77.06794769999999', '3errfsfewrew', '1631510893artist4.jpg', '343432ewrewrew', '1631510893artist6.jpg', '', '', '', '', '1637658519knuckout-logo.png', 'sfsa dsf sa fdsa fds', '0', 1, 'VERIFIED', 'VERIFIED', 'ksalon', 'Ksalon', 'Ksalon', 'Ksalon', 0, '::1', '2021-11-23 14:38:39', '2021-09-13 10:58:13', '', '3.00', 0, '', 0, 0, 0, '0.00'),
(28, '', 1, 'MSDSEP21/131100/DLMTQ', 2, '', '', '', 'dfsdsg', '435435435', '435435435', 435435435, 43543543, 'fsafasf', 'dgdgssd@dsasfa.dsfa', 100, 6, 778, 0, '', 'sfsafa sad fsa', '', 32324, '28.5057948', '77.0679477', '4wr32432', '1631511289artist4.jpg', 'sdfafa', '1631511289artist8.jpg', '', '', 'sfas', '', '1637663255Jawed-Habib-Logo.png', 'dfsgdsg', '0', 0, 'VERIFIED', 'VERIFIED', 'dfsdsg', 'dfsdsg', 'dfsdsg', 'dfsdsg', 0, '::1', '2021-11-23 15:57:35', '2021-09-13 11:04:49', '', '0.00', 0, '', 0, 0, 0, '0.00'),
(29, '', 1, 'MSDSEP21/131104/DN9FG', 1, '', '', '', 'sdasf', '324324323', '324324323', 324324323, 32432432, 'dsfaf', 'sfsafsf@sfaf.om', 100, 24, 276, 0, '', 'sdfasfsdas', '', 3233333, '28.5057948', '77.0679477', 'sdasfsfsfd', '1631511474artist13.jpg', 'sdfaf', '1631511474artist9.jpg', '', '', '', '', '1637663272looks-salon.jpg', 'sdfasf asf asfd', '0', 0, 'VERIFIED', 'VERIFIED', 'sdasf', 'sdasf', 'sdasf', 'sdasf', 0, '::1', '2021-11-23 15:57:52', '2021-09-13 11:07:54', '', '0.00', 0, '', 0, 0, 0, '0.00'),
(30, '', 1, 'MSDSEP21/131108/LVT0V', 2, '', '', '', 'etewt', '3543543543', '3543543543', 3543543543, 4543543, 'sdffs ', 'dgsg@efafa.sasf', 100, 25, 544, 0, '', 's afdssaf saf ', '', 2132122, '28.5057948', '77.0679477', 'cntsda123', '1631511646artist10.jpg', 'sfa421321sdfa', '1631511646artist6.jpg', '', '', '', '', '1637654709Nikhil-shar-logo.png', 'sdfa sd fsadf', '0', 1, 'VERIFIED', 'VERIFIED', 'etewt', 'etewt', 'etewt', 'etewt', 0, '::1', '2021-11-23 13:35:09', '2021-09-13 11:10:46', '', '0.00', 0, '', 0, 0, 0, '0.00'),
(31, '', 1, 'MSDSEP21/151309/NHEIC', 1, '', '', '', 'Msalon', '9087658456', '9087658456', 9087658456, 8794503234, 'Manish', 'msalon@yopmail.com', 100, 14, 1194, 0, '', 'Saket New Colony', '', 110011, '28.5057948', '77.0679477', 'CNTYYRR9R', '1631691776artist14.jpg', 'VJUOPIFIN787636465', '1631691776artist5.jpg', '', '', '', '', '1637663131Cut&style-logo.png', '', '0', 1, 'VERIFIED', 'VERIFIED', 'msalon', 'Msalon', 'Msalon', 'Msalon', 0, '::1', '2021-11-23 15:55:31', '2021-09-15 13:12:56', '', '5.00', 0, '', 0, 0, 0, '0.00'),
(32, '', 2, 'MSDSEP21/161446/QCTIY', 1, '2', '2', '7', 'Corporate Organization', '325154214124', '325154214124', 325154214124, 554545324234, 'Nitin', 'ffsfsfsd@yopmail.com', 100, 10, 10, 0, '3', 'Saket New Delhi', '', 122001, '3414.23324', '23421.2341', 'CNTPKU333T', '', 'FDKJLJG89438594', '', '', '', '', '34324', '16413585129954.jpg', 'd dfgsj kjs dkgsjdkgjsdk', '1', 1, 'VERIFIED', 'VERIFIED', 'corporate-organization', '', '', '', 0, '', '2022-01-05 04:55:12', '2022-01-05 04:55:12', '', '0.00', 0, '', 0, 0, 0, '0.00'),
(35, NULL, 1, 'MSDDEC21/311219/U2DFN', 2, '1', '16', '16', 'D FASFD', '', '', 98989898989, 98989898989, 'weqrwq', 'aronfinch@yopmail.com', 100, 10, 6, 0, '1', 'Shiv puri', '', 110023, '324234', '3243242', 'ewq', '', 'wrq', '', '00:00:00', '00:00:00', 'sdfsf', '32432', '16409536611051.jpg', 'dg ds fds', '1', 1, 'PENDING', 'PENDING', 'd-fasfd', '', '', '', 0, '', '2022-01-05 06:10:38', '2022-01-05 06:10:38', '', '0.00', 0, '', 0, 0, 0, '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `salon_packages`
--

CREATE TABLE `salon_packages` (
  `package_id` bigint(20) NOT NULL,
  `salon_id` bigint(20) NOT NULL,
  `package_name` varchar(255) NOT NULL,
  `package_price` decimal(10,2) NOT NULL,
  `total_service_price` decimal(10,2) NOT NULL,
  `total_deal_price` decimal(10,2) NOT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `salon_packages`
--

INSERT INTO `salon_packages` (`package_id`, `salon_id`, `package_name`, `package_price`, `total_service_price`, `total_deal_price`, `is_active`) VALUES
(1, 1, 'Gold Package', '2999.00', '4500.00', '3500.00', '1'),
(2, 3, '', '0.00', '0.00', '0.00', '1'),
(3, 1, 'Silver Package', '4000.00', '6000.00', '5000.00', '1'),
(4, 1, 'Bride Package', '8000.00', '12000.00', '9000.00', '1'),
(5, 3, '', '0.00', '0.00', '0.00', '1'),
(6, 3, '', '0.00', '0.00', '0.00', '1');

-- --------------------------------------------------------

--
-- Table structure for table `salon_package_item`
--

CREATE TABLE `salon_package_item` (
  `package_item_id` bigint(20) NOT NULL,
  `package_id` bigint(20) NOT NULL,
  `service_id` bigint(20) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `deal_price` decimal(10,2) NOT NULL,
  `consuming_time` int(11) NOT NULL,
  `variant_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `salon_package_item`
--

INSERT INTO `salon_package_item` (`package_item_id`, `package_id`, `service_id`, `price`, `deal_price`, `consuming_time`, `variant_id`) VALUES
(11, 1, 1, '1500.00', '1000.00', 40, 0),
(12, 1, 8, '3000.00', '2500.00', 60, 0),
(13, 3, 8, '3000.00', '2500.00', 60, 0),
(14, 3, 10, '3000.00', '2500.00', 30, 0),
(19, 4, 8, '3000.00', '2500.00', 60, 0),
(20, 4, 9, '3000.00', '2000.00', 60, 0),
(21, 4, 9, '3000.00', '2000.00', 60, 0),
(22, 4, 10, '3000.00', '2500.00', 30, 0);

-- --------------------------------------------------------

--
-- Table structure for table `salon_services`
--

CREATE TABLE `salon_services` (
  `salon_service_id` bigint(20) NOT NULL,
  `service_id` bigint(20) NOT NULL,
  `salon_id` bigint(20) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `deal_price` decimal(10,2) NOT NULL,
  `tax_apply` enum('1','0') NOT NULL DEFAULT '0',
  `consuming_time` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `variant_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salon_services`
--

INSERT INTO `salon_services` (`salon_service_id`, `service_id`, `salon_id`, `price`, `deal_price`, `tax_apply`, `consuming_time`, `is_active`, `variant_id`) VALUES
(148, 1, 1, '600.00', '500.00', '1', 30, 1, 0),
(149, 4, 1, '1000.00', '900.00', '0', 50, 1, 0),
(162, 74, 1, '6000.00', '5000.00', '0', 110, 1, 80),
(163, 74, 1, '8000.00', '7000.00', '0', 110, 1, 81),
(150, 5, 1, '1000.00', '800.00', '0', 60, 1, 0),
(151, 2, 1, '700.00', '600.00', '1', 40, 1, 0),
(164, 74, 1, '9000.00', '6000.00', '0', 110, 1, 82),
(153, 3, 1, '800.00', '600.00', '1', 80, 1, 0),
(154, 6, 1, '7000.00', '6000.00', '1', 30, 1, 37),
(155, 6, 1, '8000.00', '4000.00', '1', 30, 1, 38),
(156, 6, 1, '9000.00', '5000.00', '1', 30, 1, 39),
(161, 74, 1, '5000.00', '4000.00', '0', 110, 1, 79),
(165, 1, 27, '500.00', '400.00', '1', 30, 1, 0),
(166, 2, 27, '1000.00', '900.00', '0', 0, 1, 0),
(167, 13, 27, '1100.00', '900.00', '0', 0, 1, 0),
(168, 3, 2, '800.00', '500.00', '1', 80, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `salon_type`
--

CREATE TABLE `salon_type` (
  `type_id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `status` tinyint(1) NOT NULL COMMENT '0=>In-Active, 1=> Active',
  `updated_on` datetime NOT NULL,
  `created_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `salon_type`
--

INSERT INTO `salon_type` (`type_id`, `title`, `status`, `updated_on`, `created_on`) VALUES
(1, 'Male', 1, '2020-12-03 11:33:31', '2020-12-03 11:33:31'),
(2, 'Female', 1, '2020-12-03 11:45:47', '2020-12-03 11:33:57'),
(3, 'Unisex', 1, '2020-12-03 11:34:11', '2020-12-03 11:34:11');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `service_id` int(11) NOT NULL,
  `category_id` varchar(50) NOT NULL COMMENT 'Service_category_id',
  `service_type` enum('Dependent','Non-Dependent') NOT NULL DEFAULT 'Non-Dependent',
  `service_title` varchar(100) NOT NULL,
  `service_desc` varchar(500) NOT NULL,
  `service_icon` varchar(255) NOT NULL,
  `service_image` varchar(2000) NOT NULL,
  `status` tinyint(1) NOT NULL COMMENT '0=>In-Active, 1=>Active',
  `permalink` varchar(255) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(500) NOT NULL,
  `meta_keyword` varchar(500) NOT NULL,
  `updated_on` datetime NOT NULL,
  `created_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`service_id`, `category_id`, `service_type`, `service_title`, `service_desc`, `service_icon`, `service_image`, `status`, `permalink`, `meta_title`, `meta_description`, `meta_keyword`, `updated_on`, `created_on`) VALUES
(1, '1', 'Non-Dependent', 'dfssaf zdsf', 'sdfsadf', '1640849954706.png', '16408499546956.png', 1, 'dfssaf-zdsf', '', '', '', '2021-12-30 09:11:14', '2021-12-30 09:11:14'),
(2, '1', 'Non-Dependent', 'Hair Trimming', 'Hair Cut Short hair', '1638424104mens_hair_cut.jpg', 'Hair-Trimming.jpg', 1, 'hair-trimming', '', '', '', '2021-12-02 11:18:24', '2021-07-29 12:35:42'),
(3, '1', 'Non-Dependent', 'Ironing Long Hair', 'Hair Trimming', '1638424373kids_hair_cut.png', 'Ironing-hair.jpg', 1, 'ironing-long-hair', '', '', '', '2021-12-02 11:22:53', '2021-07-29 12:35:42'),
(4, '1', 'Non-Dependent', 'Blow Dry Long Hair', 'Ironing Long Hair', '1637750155hair_colour.png', 'blow-dry-hair.jpg', 1, 'blow-dry-long-hair', '', '', '', '2021-11-24 16:05:55', '2021-07-29 12:35:42'),
(5, '1', 'Non-Dependent', 'Root Touch Up Long Hair', 'Ironing Short Hair', '1638424272hair_treatment.jpg', 'root-touchup-hair.jpg', 1, 'root-touch-up-long-hair', '', '', '', '2021-12-02 11:21:12', '2021-07-29 12:35:42'),
(6, '1', 'Dependent', 'Shampoo and Conditioning Long Hair', 'Blow Dry Long Hair', '1638424302women_hair_cut.jpg', 'Shampoo-and-Conditioning-Hair.jpg', 1, 'shampoo-and-conditioning-long-hair', '', '', '', '2021-12-02 11:21:42', '2021-07-29 12:35:42'),
(7, '2', 'Dependent', 'Head Massage Long Hair ', 'Blow Dry Short Hair', 'head-massage-hair.jpg', 'head-massage-hair.jpg', 1, 'head-massage-long-hair-', '', '', '', '2021-07-29 12:35:42', '2021-07-29 12:35:42'),
(8, '2', 'Non-Dependent', 'Roller Setting Long Hair ', 'Root Touch Up Long Hair', 'roller-setting-hair.jpg', 'roller-setting-hair.jpg', 1, 'roller-setting-long-hair-', '', '', '', '2021-07-29 12:35:42', '2021-07-29 12:35:42'),
(9, '2', 'Non-Dependent', 'Oiling Long Hair ', 'Root Touch Up Short Hair', 'Oiling-Long-Hair.jpg', 'Oiling-Long-Hair.jpg', 1, 'oiling-long-hair-', '', '', '', '2021-07-29 12:35:42', '2021-07-29 12:35:42'),
(10, '1', 'Non-Dependent', 'Day Make-Up', 'Shampoo and Conditioning Long Hair', '1637839265hair_colour.png', 'day-makeup11.jpg', 1, 'day-make-up', '', '', '', '2021-11-25 16:51:05', '2021-07-29 12:35:42'),
(11, '2', 'Non-Dependent', 'Bridal Make-Up', 'Shampoo and Conditioning Short Hair', 'Bridal-Make-Up.jpg', 'Bridal-Make-Up.jpg', 1, 'bridal-make-up', '', '', '', '2021-07-29 12:35:42', '2021-07-29 12:35:42'),
(12, '2', 'Non-Dependent', 'Face Makeup Removal', 'Head Massage Long Hair ', 'Face-Makeup-Removal.jpg', 'Face-Makeup-Removal.jpg', 1, 'face-makeup-removal', '', '', '', '2021-07-29 12:35:42', '2021-07-29 12:35:42'),
(13, '2', 'Non-Dependent', 'Saree Draping', 'Head Massage Short Hair', 'sareedraping.jpg', 'sareedraping.jpg', 1, 'saree-draping', '', '', '', '2021-07-29 12:35:42', '2021-07-29 12:35:42'),
(14, '2', 'Non-Dependent', 'Rebonding Long Hair', 'Roller Setting Long Hair ', 'rebonding-long-Hair.jpg', 'rebonding-long-Hair.jpg', 1, 'rebonding-long-hair', '', '', '', '2021-07-29 12:35:42', '2021-07-29 12:35:42'),
(15, '2', 'Non-Dependent', 'Perming Long Hair', 'Roller Setting Short Hair', 'perming-long-hair.jpg', 'perming-long-hair.jpg', 1, 'perming-long-hair', '', '', '', '2021-07-29 12:35:42', '2021-07-29 12:35:42'),
(16, '2', 'Non-Dependent', 'Keratin Long Hair', 'Oiling Long Hair ', 'keratin-long-Hair.jpg', 'keratin-long-Hair.jpg', 1, 'keratin-long-hair', '', '', '', '2021-07-29 12:35:42', '2021-07-29 12:35:42'),
(17, '6', 'Non-Dependent', 'Colour Protection Long Hair', 'Oiling Short Hair ', 'Colour-Protection-Long-Hair.jpg', 'Colour-Protection-Long-Hair.jpg', 1, 'colour-protection-long-hair', '', '', '', '2021-07-29 12:35:42', '2021-07-29 12:35:42'),
(18, '6', 'Non-Dependent', 'Smoothening Long Hair', 'Cut and Hair Care ', 'Smoothening-Long-Hair.jpg', 'Smoothening-Long-Hair.jpg', 1, 'smoothening-long-hair', '', '', '', '2021-07-29 12:35:42', '2021-07-29 12:35:42'),
(19, '1', 'Non-Dependent', 'Hair Spa Long Hair', 'Shampoo and Conditioning', '1639482508hair-treatments.jpg', 'Hair-Spa-Long-Hair.jpg', 1, 'hair-spa-long-hair', '', '', '', '2021-12-14 17:18:28', '2021-07-29 12:35:42'),
(20, '2', 'Non-Dependent', 'Volumizing Long Hair', 'Head Massage', 'Volumizing-Long-Hair.jpg', 'Volumizing-Long-Hair.jpg', 1, 'volumizing-long-hair', '', '', '', '2021-07-29 12:35:42', '2021-07-29 12:35:42'),
(21, '2', 'Non-Dependent', 'Advanced Hair Moisturising Long Hair', 'Beard Styling', 'Hair-Moisturising-Long-Hair.jpg', 'Hair-Moisturising-Long-Hair.jpg', 1, 'advanced-hair-moisturising-long-hair', '', '', '', '2021-07-29 12:35:42', '2021-07-29 12:35:42'),
(22, '2', 'Non-Dependent', 'Scalp Treatments Long Hair', 'Hair/Beard Colouring', 'scalp-treatments-long-hair.jpg', 'scalp-treatments-long-hair.jpg', 1, 'scalp-treatments-long-hair', '', '', '', '2021-07-29 12:35:42', '2021-07-29 12:35:42'),
(23, '2', 'Non-Dependent', 'Root Toucup(Regular)', 'Cut and Hair Care ', 'colour.png', 'root-touchup.jpg', 1, 'root-toucup(regular)', '', '', '', '2021-07-29 12:35:42', '2021-07-29 12:35:42'),
(24, '2', 'Non-Dependent', 'Global Colour', 'Shampoo and Conditioning', 'Global-Colour.jpg', 'Global-Colour.jpg', 1, 'global-colour', '', '', '', '2021-07-29 12:35:42', '2021-07-29 12:35:42'),
(25, '1', 'Non-Dependent', 'Crown Highlight', 'Head Massage', '1639482335hair-treatments.jpg', 'noicon.png', 1, 'crown-highlight', '', '', '', '2021-12-14 17:15:35', '2021-07-29 12:35:42'),
(26, '1', 'Non-Dependent', 'Global Highlight', 'Rebonding Long Hair', '1639482452toners.jpg', 'noicon.png', 1, 'global-highlight', '', '', '', '2021-12-14 17:17:32', '2021-07-29 12:35:42'),
(27, '1', 'Non-Dependent', 'Highlight Per Streak', 'Rebonding Short Hair', '1639482477hair-colour.jpg', 'noicon.png', 1, 'highlight-per-streak', '', '', '', '2021-12-14 17:17:57', '2021-07-29 12:35:42'),
(28, '1', 'Non-Dependent', 'Manicure', 'Perming Long Hair', '1639482520manicure.jpg', 'Manicure.jpg', 1, 'manicure', '', '', '', '2021-12-14 17:18:40', '2021-07-29 12:35:42'),
(29, '1', 'Non-Dependent', 'Nail Polish', 'Perming Short Hair', '1639482581bleaching.jpg', 'nailpolish.jpg', 1, 'nail-polish', '', '', '', '2021-12-14 17:19:41', '2021-07-29 12:35:42'),
(30, '1', 'Non-Dependent', 'French Polish', 'Keratin Long Hair', '1639482351hair-texture.jpg', 'French-Polish.jpg', 1, 'french-polish', '', '', '', '2021-12-14 17:15:51', '2021-07-29 12:35:42'),
(31, '1', 'Non-Dependent', 'Gel Polish Removal', 'Keratin Short Hair', '1639482543facial.jpg', 'Gel-Polish-Removal.jpg', 1, 'gel-polish-removal', '', '', '', '2021-12-14 17:19:03', '2021-07-29 12:35:42'),
(32, '1', 'Non-Dependent', 'Gel Polish', 'Colour Protection Long Hair', '1639482374facelift.jpg', 'Gel-Polish.jpg', 1, 'gel-polish', '', '', '', '2021-12-14 17:16:14', '2021-07-29 12:35:42'),
(33, '1', 'Non-Dependent', 'Padicure', 'Colour Protection Short Hair', '1639482570Blush.jpg', 'Padicure.jpg', 1, 'padicure', '', '', '', '2021-12-14 17:19:30', '2021-07-29 12:35:42'),
(34, '1', 'Non-Dependent', 'Nail Polish', 'Smoothening Long Hair', '1639482594lips.jpg', 'Nail-Polish.jpg', 1, 'nail-polish', '', '', '', '2021-12-14 17:19:54', '2021-07-29 12:35:42'),
(35, '1', 'Non-Dependent', 'French Polish', 'Smoothening Short Hair', '1639482362hair-colour.jpg', 'French-Polish.jpg', 1, 'french-polish', '', '', '', '2021-12-14 17:16:02', '2021-07-29 12:35:42'),
(36, '1', 'Non-Dependent', 'Gel Polish Removal', 'Hair Spa Long Hair', '1639482558face.jpg', 'Gel-Polish-Removal.jpg', 1, 'gel-polish-removal', '', '', '', '2021-12-14 17:19:18', '2021-07-29 12:35:42'),
(37, '1', 'Non-Dependent', 'Gel Polish', 'Hair Spa Short Hair', '1639482386toners.jpg', 'Gel-Polish.jpg', 1, 'gel-polish', '', '', '', '2021-12-14 17:16:26', '2021-07-29 12:35:42'),
(38, '8', 'Non-Dependent', 'Face', 'Volumizing Long Hair', 'Bleaching.png', 'face.jpg', 1, 'face', '', '', '', '2021-07-29 12:35:42', '2021-07-29 12:35:42'),
(39, '8', 'Non-Dependent', 'Face and Neck', 'Volumizing Short Hair', 'noicon.png', 'Face-and-Neck.jpg', 1, 'face-and-neck', '', '', '', '2021-07-29 12:35:42', '2021-07-29 12:35:42'),
(40, '8', 'Non-Dependent', 'Underarm', 'Advanced Hair Moisturising Long Hair', 'noicon.png', 'Underarm.jpg', 1, 'underarm', '', '', '', '2021-07-29 12:35:42', '2021-07-29 12:35:42'),
(41, '8', 'Non-Dependent', 'Upper Lip', 'Advanced Hair Moisturising Short Hair', 'noicon.png', 'Upper-Lip.jpg', 1, 'upper-lip', '', '', '', '2021-07-29 12:35:42', '2021-07-29 12:35:42'),
(42, '8', 'Non-Dependent', 'Chin', 'Scalp Treatments Long Hair', 'noicon.png', 'Chin.jpg', 1, 'chin', '', '', '', '2021-07-29 12:35:42', '2021-07-29 12:35:42'),
(43, '8', 'Non-Dependent', 'Full Arm', 'Scalp Treatments Short Hair', 'noicon.png', 'Full-Arm.jpg', 1, 'full-arm', '', '', '', '2021-07-29 12:35:42', '2021-07-29 12:35:42'),
(44, '8', 'Non-Dependent', 'Full Leg', 'Root Toucup(Regular)', 'noicon.png', 'coming-soon.jpg', 1, 'full-leg', '', '', '', '2021-07-29 12:35:42', '2021-07-29 12:35:42'),
(45, '8', 'Non-Dependent', 'Full Body', 'Root Toucup', 'noicon.png', 'coming-soon.jpg', 1, 'full-body', '', '', '', '2021-07-29 12:35:42', '2021-07-29 12:35:42'),
(46, '8', 'Non-Dependent', 'Eyebrows', 'Global Colour', 'Threading.png', 'Eyebrows.jpg', 1, 'eyebrows', '', '', '', '2021-07-29 12:35:42', '2021-07-29 12:35:42'),
(47, '8', 'Non-Dependent', 'Upperlips', 'Crown Highlight', 'noicon.png', 'Upperlips.jpg', 1, 'upperlips', '', '', '', '2021-07-29 12:35:42', '2021-07-29 12:35:42'),
(48, '8', 'Non-Dependent', 'Chin', 'Global Highlight', 'noicon.png', 'Chin.jpg', 1, 'chin', '', '', '', '2021-07-29 12:35:42', '2021-07-29 12:35:42'),
(49, '8', 'Non-Dependent', 'Sidelocks', 'Highlight Per Streak', 'noicon.png', 'Sidelocks.jpg', 1, 'sidelocks', '', '', '', '2021-07-29 12:35:42', '2021-07-29 12:35:42'),
(50, '8', 'Non-Dependent', 'Forehead', 'Hair Colour(Ammonia and Ammonia Free)', 'noicon.png', 'Forehead.jpg', 1, 'forehead', '', '', '', '2021-07-29 12:35:42', '2021-07-29 12:35:42'),
(51, '8', 'Non-Dependent', 'Full Face', 'Hi - Lites', 'noicon.png', 'Full-Face.jpg', 1, 'full-face', '', '', '', '2021-07-29 12:35:42', '2021-07-29 12:35:42'),
(52, '8', 'Non-Dependent', 'Upper Lip', 'Beard Colour', 'Waxing.png', 'Upper-Lip.jpg', 1, 'upper-lip', '', '', '', '2021-07-29 12:35:42', '2021-07-29 12:35:42'),
(53, '8', 'Non-Dependent', 'Chin', 'Face', 'noicon.png', 'Chin.jpg', 1, 'chin', '', '', '', '2021-07-29 12:35:42', '2021-07-29 12:35:42'),
(54, '8', 'Non-Dependent', 'Face Pack', 'Face and Neck', 'noicon.png', 'Face-Pack.jpg', 1, 'face-pack', '', '', '', '2021-07-29 12:35:42', '2021-07-29 12:35:42'),
(55, '8', 'Non-Dependent', 'Under Arm', 'Underarm', 'noicon.png', 'Underarm.jpg', 1, 'under-arm', '', '', '', '2021-07-29 12:35:42', '2021-07-29 12:35:42'),
(56, '8', 'Non-Dependent', 'Arm Full', 'Upper Lip', 'noicon.png', 'coming-soon.jpg', 1, 'arm-full', '', '', '', '2021-07-29 12:35:42', '2021-07-29 12:35:42'),
(57, '8', 'Non-Dependent', 'Leg Full', 'Chin', 'noicon.png', 'coming-soon.jpg', 1, 'leg-full', '', '', '', '2021-07-29 12:35:42', '2021-07-29 12:35:42'),
(58, '8', 'Non-Dependent', 'Back ', 'Full Arm', 'noicon.png', 'coming-soon.jpg', 1, 'back-', '', '', '', '2021-07-29 12:35:42', '2021-07-29 12:35:42'),
(59, '8', 'Non-Dependent', 'Chest', 'Half Arm', 'noicon.png', 'coming-soon.jpg', 1, 'chest', '', '', '', '2021-07-29 12:35:42', '2021-07-29 12:35:42'),
(60, '8', 'Non-Dependent', 'Stomach', 'Half Leg', 'noicon.png', 'coming-soon.jpg', 1, 'stomach', '', '', '', '2021-07-29 12:35:42', '2021-07-29 12:35:42'),
(61, '8', 'Non-Dependent', 'Bikini Wax', 'Full Leg', 'noicon.png', 'coming-soon.jpg', 1, 'bikini-wax', '', '', '', '2021-07-29 12:35:42', '2021-07-29 12:35:42'),
(62, '8', 'Non-Dependent', 'Brazilian Wax', 'Full Body', 'noicon.png', 'coming-soon.jpg', 1, 'brazilian-wax', '', '', '', '2021-07-29 12:35:42', '2021-07-29 12:35:42'),
(63, '8', 'Non-Dependent', 'Full Body Wax', 'Upper Lip', 'noicon.png', 'coming-soon.jpg', 1, 'full-body-wax', '', '', '', '2021-07-29 12:35:42', '2021-07-29 12:35:42'),
(64, '8', 'Non-Dependent', 'Lightening', 'Chin', 'Facial.png', 'Lightening.jpg', 1, 'lightening', '', '', '', '2021-07-29 12:35:42', '2021-07-29 12:35:42'),
(65, '8', 'Non-Dependent', 'Seasonal Care', 'Face Pack', 'noicon.png', 'Seasonal-Care.jpg', 1, 'seasonal-care', '', '', '', '2021-07-29 12:35:42', '2021-07-29 12:35:42'),
(66, '8', 'Non-Dependent', 'Hydro', 'Under Arm', 'noicon.png', 'Hydro.jpg', 1, 'hydro', '', '', '', '2021-07-29 12:35:42', '2021-07-29 12:35:42'),
(67, '8', 'Non-Dependent', 'Chemical peels', 'Arm Half', 'noicon.png', 'Chemical-peels.jpg', 1, 'chemical-peels', '', '', '', '2021-07-29 12:35:42', '2021-07-29 12:35:42'),
(68, '8', 'Non-Dependent', 'Microdermabrasion', 'Arm Full', 'noicon.png', 'Microdermabrasion.jpg', 1, 'microdermabrasion', '', '', '', '2021-07-29 12:35:42', '2021-07-29 12:35:42'),
(69, '8', 'Non-Dependent', 'Ageless facials', 'Leg Half', 'noicon.png', 'Facial-Ageless-facials.jpg', 1, 'ageless-facials', '', '', '', '2021-07-29 12:35:42', '2021-07-29 12:35:42'),
(70, '8', 'Non-Dependent', 'Acne facials', 'Leg Full', 'noicon.png', 'Acne-facials.jpg', 1, 'acne-facials', '', '', '', '2021-07-29 12:35:42', '2021-07-29 12:35:42'),
(71, '8', 'Non-Dependent', 'Signature facials', 'Back ', 'noicon.png', 'Signature-facials.jpg', 1, 'signature-facials', '', '', '', '2021-07-29 12:35:42', '2021-07-29 12:35:42'),
(72, '8', 'Non-Dependent', 'Brightening', 'Chest', 'noicon.png', 'Facial-Brightening.jpg', 1, 'brightening', '', '', '', '2021-07-29 12:35:42', '2021-07-29 12:35:42'),
(73, '23', 'Non-Dependent', 'Ear & Body Piercing', 'Stomach', 'body-art.png', 'Ear-&-Body-Piercing.jpg', 1, 'ear-&-body-piercing', '', '', '', '2021-07-29 12:35:42', '2021-07-29 12:35:42'),
(74, '1', 'Dependent', 'Tattoo', 'Bikini Wax', '1638424341hair_texture.jpg', 'Tattoo.jpg', 1, 'tattoo', '', '', '', '2021-12-02 11:22:21', '2021-07-29 12:35:42'),
(75, '1', 'Non-Dependent', 'Women Hair Cut Service', 'women hair cut women hair cut ', '1639482214womens-hair-cut.jpg', '', 1, 'women-hair-cut-service', '', '', '', '2021-12-14 17:13:34', '2021-09-16 16:08:34'),
(76, '1', 'Non-Dependent', 'women hair cut', 'women hair cut', '1639482703hair-colour.jpg', '1631788755artist.jpg', 1, 'women-hair-cut', 'dsaf', ' sfdaf', 'sfda', '2021-12-14 17:21:43', '2021-09-16 16:09:15');

-- --------------------------------------------------------

--
-- Table structure for table `services_booking`
--

CREATE TABLE `services_booking` (
  `booking_id` bigint(20) UNSIGNED NOT NULL,
  `booking_code` varchar(60) NOT NULL,
  `salon_id` bigint(20) NOT NULL,
  `stylist_id` bigint(20) NOT NULL COMMENT 'Remember The static ID  999999999999999999 is for non of these options. This value the stylist is non-of these, This value is also defined as constant.',
  `services_ids` varchar(255) NOT NULL,
  `salon_or_stylist_service_ids` varchar(255) NOT NULL,
  `customer_id` bigint(20) NOT NULL,
  `booking_on` varchar(40) NOT NULL,
  `booking_time_slot` varchar(120) NOT NULL,
  `total_time` int(11) NOT NULL COMMENT 'minutes',
  `booking_type` enum('home_booking','salon_visit') NOT NULL DEFAULT 'salon_visit',
  `booking_for_name` varchar(180) NOT NULL,
  `booking_for_email` varchar(180) NOT NULL,
  `booking_for_mobile` varchar(20) NOT NULL,
  `booking_note` text NOT NULL,
  `created_on` varchar(50) NOT NULL,
  `updated_on` varchar(50) NOT NULL,
  `booking_status` tinyint(1) NOT NULL COMMENT '0-pending, 1-accepted, 2-denied, 3-refunded, 4-completed',
  `total_booking_amount` decimal(10,2) NOT NULL COMMENT 'Note that this is the final amount to be paid',
  `payment_status` tinyint(1) NOT NULL COMMENT '0-not paid, 1-paid',
  `payment_type` varchar(25) NOT NULL,
  `result_page_booking_from` varchar(80) NOT NULL COMMENT 'This page indicate from which page the booking is made and the stylist is associated with a salon or not',
  `transaction_id` bigint(20) NOT NULL,
  `address_id` int(11) NOT NULL,
  `coupon_apply_id` int(11) NOT NULL DEFAULT 0,
  `booked_stylist_flag` enum('S','M') NOT NULL DEFAULT 'S' COMMENT 'S for Single, B for Multiple.'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services_booking`
--

INSERT INTO `services_booking` (`booking_id`, `booking_code`, `salon_id`, `stylist_id`, `services_ids`, `salon_or_stylist_service_ids`, `customer_id`, `booking_on`, `booking_time_slot`, `total_time`, `booking_type`, `booking_for_name`, `booking_for_email`, `booking_for_mobile`, `booking_note`, `created_on`, `updated_on`, `booking_status`, `total_booking_amount`, `payment_status`, `payment_type`, `result_page_booking_from`, `transaction_id`, `address_id`, `coupon_apply_id`, `booked_stylist_flag`) VALUES
(27, '7503636443985785', 1, 999999999999999999, '30', '121', 5, '2021-07-02', '04:12 pm-05:02 pm', 50, 'home_booking', 'customer one', 'customer_one@yopmail.com', '9712389831', '', '2021-07-02 16:40:51', '', 0, '5000.00', 0, '', 'salon', 0, 1, 0, 'S'),
(28, '7407351555856028', 4, 999999999999999999, '7', '22', 5, '2021-07-02', '09:30 am-10:30 am', 60, 'home_booking', 'customer one', 'customer_one@yopmail.com', '9712389831', '', '2021-07-02 16:46:17', '', 0, '2000.00', 0, '', 'salon', 0, 1, 0, 'S'),
(63, '8965054188080576', 1, 2, '1', '143', 0, '2021-08-16', '', 0, '', 'customer one', 'customer_one@yopmail.com', '9712389831', 'test comments', '2021-08-16 12:45:25', '', 0, '17000.00', 0, 'pay_after_service', 'salon', 0, 3, 0, 'S'),
(62, '6239268397387847', 1, 2, '1', '143', 0, '2021-08-16', '', 0, '', 'customer one', 'customer_one@yopmail.com', '9712389831', 'test comments', '2021-08-16 12:45:24', '', 0, '17000.00', 0, 'pay_after_service', 'salon', 0, 3, 0, 'S'),
(61, '9514522405497917', 1, 2, '1,2,3', '143,142,141', 0, '2021-08-16', '', 0, '', 'customer one', 'customer_one@yopmail.com', '9712389831', 'test comments', '2021-08-16 12:44:49', '', 0, '17000.00', 0, 'pay_after_service', 'salon', 0, 3, 0, 'S'),
(60, '7653434330874826', 1, 2, '1', '143', 0, '2021-08-16', '', 0, '', 'customer one', 'customer_one@yopmail.com', '9712389831', 'test comments', '2021-08-16 11:56:57', '', 0, '17000.00', 0, 'pay_after_service', 'salon', 0, 3, 0, 'S'),
(59, '5654098811433601', 1, 2, '1', '143', 0, '2021-08-14', '', 0, '', 'customer one', 'customer_one@yopmail.com', '9712389831', 'test comments', '2021-08-14 17:06:48', '', 0, '17000.00', 0, 'pay_after_service', 'salon', 0, 3, 0, 'S'),
(58, '1329129550977951', 1, 2, '1', '143', 0, '2021-08-14', '', 0, '', 'customer one', 'customer_one@yopmail.com', '9712389831', 'test comments', '2021-08-14 15:53:31', '', 0, '17000.00', 0, 'pay_after_service', 'salon', 0, 3, 0, 'S'),
(57, '7154670817176091', 0, 2, '2,3', '18,19', 15, '2021-08-19', '03:19 am-04:04 am', 160, 'home_booking', 'Ranjeet', 'ranjeet@test.com', '9555683429', '', '2021-08-14 15:23:56', '', 0, '7999.00', 0, '', 'salon', 0, 7, 0, 'S'),
(56, '3402108905835164', 1, 2, '41,40', '136,137', 5, '2021-08-15', '03:19 pm-04:04 pm', 75, 'salon_visit', 'customer one', 'customer_one@yopmail.com', '9712389831', 'Test', '2021-08-13 11:45:10', '', 0, '4500.00', 0, '', 'salon', 0, 0, 0, 'S'),
(55, '4804130441413862', 0, 2, '3', '19', 5, '2021-08-21', '12:15 am-01:00 am', 60, 'home_booking', 'customer one', 'customer_one@yopmail.com', '9712389831', '', '2021-08-11 16:38:21', '', 0, '4999.00', 0, '', 'salon', 0, 1, 0, 'S'),
(54, '2832064744611468', 1, 6, '40', '137', 5, '2021-08-20', '04:06 pm-04:51 pm', 50, 'home_booking', 'customer one', 'customer_one@yopmail.com', '9712389831', '', '2021-08-10 15:28:18', '2021-08-13 11:49:51', 4, '3000.00', 0, '', 'salon', 0, 4, 0, 'S'),
(53, '7560447244490905', 1, 1, '17,18,21,42,43,75', '23,24,27,51,52,147', 5, '2021-08-13', '12:16 pm-01:01 pm', 250, 'salon_visit', 'customer one', 'customer_one@yopmail.com', '9712389831', '', '2021-08-10 15:22:20', '', 0, '4500.00', 0, '', 'salon', 0, 0, 0, 'S'),
(47, '7196032183400727', 1, 1, '1,75,75', '143,144,145', 5, '2021-08-04', '12:15 pm-01:00 pm', 120, 'home_booking', 'customer one', 'customer_one@yopmail.com', '9712389831', 'testing', '2021-08-04 15:50:26', '', 0, '4800.00', 0, '', 'salon', 0, 5, 0, 'S'),
(48, '3326922710838748', 1, 2, '75,75', '146,147', 5, '2021-08-05', '03:19 pm-04:04 pm', 140, 'salon_visit', 'customer one', 'customer_one@yopmail.com', '9712389831', 'testing visit salon', '2021-08-04 15:53:02', '', 0, '7299.00', 0, '', 'salon', 0, 0, 0, 'S'),
(49, '8113420217136888', 0, 2, '75,75,75', '22,23,25', 5, '2021-08-04', '01:00 am-01:45 am', 210, 'home_booking', 'customer one', 'customer_one@yopmail.com', '9712389831', 'testing stylist', '2021-08-04 16:25:42', '', 0, '19000.00', 0, '', 'salon', 0, 4, 0, 'S'),
(50, '8592197265947149', 1, 3, '43,41,40', '52,136,137', 8, '2021-08-15', '01:01 pm-01:46 pm', 105, 'home_booking', 'Ranjeet Kumar', 'ranjeet.kumar@maisondauraine.com', '9555684329', '', '2021-08-06 14:47:55', '', 0, '4600.00', 0, '', 'salon', 0, 6, 0, 'S'),
(51, '5956702223411722', 0, 2, '75,75', '23,24', 5, '2021-08-20', '07:55 am-08:40 am', 140, 'home_booking', 'customer one', 'customer_one@yopmail.com', '9712389831', '', '2021-08-06 15:10:40', '', 0, '15000.00', 0, '', 'salon', 0, 4, 0, 'S'),
(52, '4248712748269803', 1, 0, '75,75', '144,147', 5, '2021-08-26', '01:47 pm-02:32 pm', 140, 'home_booking', 'customer one', 'customer_one@yopmail.com', '9712389831', '', '2021-08-06 17:45:39', '', 0, '3300.00', 0, '', 'salon', 0, 1, 0, 'S'),
(64, '9622391078685650', 1, 6, '40', '137', 5, '2021-08-19', '05:37 pm-06:22 pm', 50, 'home_booking', 'customer one', 'customer_one@yopmail.com', '9712389831', '', '2021-08-18 12:59:56', '', 0, '3000.00', 0, '', 'salon', 0, 1, 0, 'S'),
(65, '9943591613735370', 1, 0, '1', '148', 17, '2021-08-26', '03:19 pm-04:04 pm', 30, 'home_booking', 'sdfafsf', 'dsfafas@fsFASF.COM', '343243243242', '', '2021-08-26 10:06:13', '', 0, '483.80', 0, '', 'salon', 0, 9, 0, 'S'),
(66, '7664714106772919', 1, 3, '1', '148', 27, '2021-08-31', '05:37 pm-06:22 pm', 30, 'home_booking', 'fsa sdf saf ', 'sdfasfs@dsfafd.com', '64546435454', '', '2021-08-26 12:16:53', '', 0, '483.80', 0, '', 'salon', 0, 19, 0, 'S'),
(67, '6206303406920346', 1, 2, '1,3', '148,153', 28, '2021-08-30', '12:15 pm-01:00 pm', 110, 'home_booking', 'tim pane', 'timpane@yopmail.com', '42424432432', '', '2021-08-26 13:30:38', '', 0, '1257.88', 0, '', 'salon', 0, 20, 0, 'S'),
(68, '5305488740341161', 1, 2, '74', '162', 29, '2021-08-26', '01:01 pm-01:46 pm', 110, 'salon_visit', 'ggggg ggg', 'test@gsafas.com', '6664444232', '', '2021-08-26 14:42:52', '', 0, '5900.00', 0, '', 'salon', 0, 21, 0, 'S'),
(69, '3732109279940340', 1, 2, '1', '148', 30, '2021-08-30', '04:51 pm-05:36 pm', 30, 'home_booking', 'fas as fafa', 'sfdafas@dsfa.sfa', '3324324324', '', '2021-08-26 14:48:51', '', 0, '483.80', 0, '', 'salon', 0, 22, 0, 'S'),
(70, '1538868197419199', 1, 1, '5', '150', 31, '2021-08-26', '03:19 pm-04:04 pm', 60, 'salon_visit', 'martin sam', 'martin@yopmail.com', '8987893874', '', '2021-08-26 14:52:16', '', 0, '1180.00', 0, '', 'salon', 0, 23, 0, 'S'),
(71, '5204655062650352', 1, 3, '6', '156', 31, '2021-08-26', '12:15 pm-01:00 pm', 30, 'home_booking', 'martin sam', 'martin@yopmail.com', '8987893874', 'tst notes', '2021-08-26 14:57:48', '', 0, '4838.00', 0, '', 'salon', 0, 23, 0, 'S'),
(72, '8179212835740481', 1, 5, '74', '164', 31, '2021-08-26', '04:05 pm-04:50 pm', 110, 'salon_visit', 'martin sam', 'martin@yopmail.com', '8987893874', 'test test', '2021-08-26 15:05:41', '', 0, '10620.00', 0, '', 'salon', 0, 0, 0, 'S'),
(73, '2503443289358903', 1, 0, '5', '150', 28, '2021-08-31', '03:19 pm-04:04 pm', 60, 'home_booking', 'tim pane', 'timpane@yopmail.com', '42424432432', '', '2021-08-27 12:17:28', '', 0, '1180.00', 0, '', 'salon', 0, 20, 0, 'S'),
(74, '9158916433683198', 1, 0, '2', '151', 5, '2021-08-31', '12:15 pm-01:00 pm', 80, 'home_booking', 'customer one', 'customer_one@yopmail.com', '9712389831', 'test', '2021-08-31 16:11:13', '', 0, '580.56', 0, '', 'salon', 0, 5, 0, 'S'),
(75, '2249267506464814', 1, 2, '1', '148', 5, '2021-09-14', '02:33 pm-03:18 pm', 30, 'home_booking', 'customer one', 'customer_one@yopmail.com', '9712389831', '', '2021-09-01 12:09:09', '', 0, '483.80', 0, '', 'salon', 0, 4, 0, 'S'),
(76, '3049390718557083', 1, 0, '1,4', '148,149', 55, '2021-09-10', '01:02 pm-01:47 pm', 80, 'home_booking', 'skfjakfjkf fa dsaf', 'sdsafsa@yopmail.com', '8798762345', '', '2021-09-01 12:20:54', '', 0, '1545.80', 0, '', 'salon', 0, 41, 0, 'S'),
(77, '5336154196565632', 1, 1, '1,3', '148,153', 5, '2021-09-22', '07:09 pm-07:54 pm', 110, 'home_booking', 'customer one', 'customer_one@yopmail.com', '9712389831', '', '2021-09-01 15:01:25', '', 0, '1257.88', 0, '', 'salon', 0, 36, 0, 'S'),
(78, '9219091676983992', 1, 2, '1,3', '148,153', 5, '2021-09-14', '04:51 pm-05:36 pm', 110, 'salon_visit', 'customer one', 'customer_one@yopmail.com', '9712389831', 'dsfav fdsa as', '2021-09-01 15:02:47', '', 0, '1257.88', 0, '', 'salon', 0, 0, 0, 'S'),
(79, '4785394595748990', 1, 3, '1,3', '148,153', 57, '2021-09-15', '02:33 pm-03:18 pm', 110, 'home_booking', 'fdsa fas asf as', 'fdsafsafs@yopmail.com', '3243243243', '', '2021-09-01 15:04:56', '', 0, '1257.88', 0, '', 'salon', 0, 42, 0, 'S'),
(80, '6597141473191075', 1, 3, '74', '162', 58, '2021-09-20', '01:01 pm-01:46 pm', 110, 'salon_visit', 'dsfgsa a fsf', 'sfdasfasfd@yopmail.com', '8787878787', '', '2021-09-01 15:06:59', '', 0, '5900.00', 0, '', 'salon', 0, 0, 0, 'S'),
(81, '3351918741932693', 1, 1, '1,3', '148,153', 58, '2021-09-22', '04:51 pm-05:36 pm', 110, 'home_booking', 'dsfgsa a fsf', 'sfdasfasfd@yopmail.com', '8787878787', '', '2021-09-01 15:08:32', '', 0, '1257.88', 0, '', 'salon', 0, 43, 0, 'S'),
(82, '2930419981723154', 1, 2, '74', '163', 58, '2021-09-16', '04:05 pm-04:50 pm', 110, 'salon_visit', 'dsfgsa a fsf', 'sfdasfasfd@yopmail.com', '8787878787', 'dsfa sa fadsf fas ', '2021-09-01 15:09:33', '', 0, '9440.00', 0, '', 'salon', 0, 0, 0, 'S');

-- --------------------------------------------------------

--
-- Table structure for table `services_booking_cart`
--

CREATE TABLE `services_booking_cart` (
  `cid` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(100) NOT NULL,
  `salon_id` bigint(20) NOT NULL,
  `stylist_id` bigint(20) NOT NULL,
  `booking_type` varchar(100) NOT NULL,
  `booking_for` varchar(100) NOT NULL,
  `no_of_people` int(11) NOT NULL,
  `category_id` varchar(255) NOT NULL,
  `service_id` varchar(255) NOT NULL,
  `salon_or_stylist_service_id` varchar(255) NOT NULL,
  `total_time` int(11) NOT NULL,
  `total_booking_amount` decimal(10,2) NOT NULL,
  `salon_service_id` int(11) NOT NULL,
  `customer_id` bigint(20) NOT NULL,
  `booking_date` date NOT NULL,
  `booking_time_slot` varchar(100) NOT NULL,
  `booking_note` text NOT NULL,
  `address_id` int(11) NOT NULL,
  `choose_payment_option` varchar(100) NOT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services_booking_cart`
--

INSERT INTO `services_booking_cart` (`cid`, `user_type`, `salon_id`, `stylist_id`, `booking_type`, `booking_for`, `no_of_people`, `category_id`, `service_id`, `salon_or_stylist_service_id`, `total_time`, `total_booking_amount`, `salon_service_id`, `customer_id`, `booking_date`, `booking_time_slot`, `booking_note`, `address_id`, `choose_payment_option`, `created_on`, `updated_on`) VALUES
(170, 'guest', 0, 0, '', 'salon', 1, '', '', '', 0, '0.00', 0, 0, '0000-00-00', '', '', 0, '', '2021-12-29 18:16:23', '0000-00-00 00:00:00'),
(171, 'guest', 0, 0, 'home_booking', 'salon', 1, '', '', '', 0, '0.00', 0, 6564147621431, '0000-00-00', '', '', 0, '', '2021-12-29 18:16:26', '2021-12-29 18:16:36'),
(169, 'guest', 1, 2, 'home_booking', 'salon', 1, '', '1,2', '148,151', 70, '1064.36', 0, 5026735824697, '2021-12-08', '05:39 pm-06:24 pm', '', 0, '', '2021-11-25 11:21:02', '2021-12-08 17:40:02'),
(168, 'guest', 1, 1, '', 'salon', 1, '', '', '', 0, '0.00', 0, 0, '0000-00-00', '', '', 0, '', '2021-11-25 11:20:04', '0000-00-00 00:00:00'),
(167, 'guest', 0, 0, 'home_booking', 'stylist', 1, '1', '1', '148', 30, '483.80', 0, 4326245506376, '2021-09-15', '', '', 0, '', '2021-09-15 12:20:59', '2021-10-01 12:34:12'),
(166, 'guest', 1, 0, '', 'salon', 1, '', '', '', 0, '0.00', 0, 0, '0000-00-00', '', '', 0, '', '2021-09-15 12:20:16', '0000-00-00 00:00:00'),
(165, 'guest', 1, 0, 'salon_visit', 'salon', 1, '23', '74', '162', 110, '5900.00', 0, 1178582609828, '2021-09-17', '', '', 0, '', '2021-09-07 15:36:39', '2021-09-07 15:51:48'),
(164, 'guest', 1, 0, '', 'salon', 1, '', '', '', 0, '0.00', 0, 0, '0000-00-00', '', '', 0, '', '2021-09-07 15:33:29', '0000-00-00 00:00:00'),
(161, 'user', 1, 3, 'salon_visit', 'salon', 1, '1', '1,4', '148,149', 80, '1545.80', 0, 5, '2021-12-23', '06:15 pm-07:00 pm', '', 1, '', '2021-09-01 15:26:24', '2021-12-22 12:53:30'),
(162, 'guest', 1, 0, '', 'salon', 1, '', '', '', 0, '0.00', 0, 0, '0000-00-00', '', '', 0, '', '2021-09-03 15:45:24', '0000-00-00 00:00:00'),
(163, 'guest', 1, 2, 'home_booking', 'salon', 1, '1', '1', '17', 40, '1168.20', 0, 1857578700269, '2021-09-23', '10:01 am-10:46 am', '', 0, '', '2021-09-03 15:45:27', '2021-09-03 16:34:03');

-- --------------------------------------------------------

--
-- Table structure for table `services_booking_coupon_apply`
--

CREATE TABLE `services_booking_coupon_apply` (
  `sb_coupon_apply_id` bigint(20) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `coupon_code` varchar(60) NOT NULL,
  `code_id` int(11) NOT NULL,
  `coupon_type` varchar(60) NOT NULL,
  `discount_type` varchar(60) NOT NULL,
  `percentage_amount` int(11) NOT NULL,
  `min_cart_value` float NOT NULL,
  `max_discounted_amount` float NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `created_by` varchar(50) NOT NULL DEFAULT '0',
  `apply_on` varchar(40) NOT NULL,
  `coupon_amount` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services_booking_coupon_apply`
--

INSERT INTO `services_booking_coupon_apply` (`sb_coupon_apply_id`, `customer_id`, `coupon_code`, `code_id`, `coupon_type`, `discount_type`, `percentage_amount`, `min_cart_value`, `max_discounted_amount`, `start_date`, `end_date`, `created_by`, `apply_on`, `coupon_amount`) VALUES
(1, 5, 'KERATIN20', 8, 'SERVICES', 'PERCENTAGE', 20, 1000, 100000, '2021-05-14', '2021-12-31', 'MSDDEC20/041053/XYRFR', '2021-05-14 14:47:11', 2000);

-- --------------------------------------------------------

--
-- Table structure for table `service_category`
--

CREATE TABLE `service_category` (
  `service_cat_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `service_cat_title` varchar(100) NOT NULL,
  `service_cat_desc` varchar(500) NOT NULL,
  `service_cat_icon` varchar(255) NOT NULL,
  `service_cat_image` varchar(2500) DEFAULT NULL,
  `status` tinyint(1) NOT NULL COMMENT '0=>In-Active, 1=>Active',
  `permalink` varchar(255) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(500) NOT NULL,
  `meta_keyword` varchar(500) NOT NULL,
  `updated_on` datetime NOT NULL,
  `created_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service_category`
--

INSERT INTO `service_category` (`service_cat_id`, `category_id`, `service_cat_title`, `service_cat_desc`, `service_cat_icon`, `service_cat_image`, `status`, `permalink`, `meta_title`, `meta_description`, `meta_keyword`, `updated_on`, `created_on`) VALUES
(1, 1, 'Mens Hair Cut', '', '1639466442womens-hair-cut.jpg', '1639466442womens-hair-cut.jpg', 1, 'mens-hair-cut', 'test', 'test', 'test', '2021-12-14 12:50:42', '2021-07-24 11:40:17'),
(2, 1, 'Womens Hair Cut', '', '1639466488hair-texture.jpg', '1639466488hair-texture.jpg', 1, 'womens-hair-cut', 'test', 'test', 'test', '2021-12-14 12:51:28', '2021-07-24 11:40:17'),
(3, 1, 'Kids Hair Cut', '', '1639466371kids-hair-cut.jpg', '1639466371kids-hair-cut.jpg', 1, 'kids-hair-cut', 'test', 'test', 'test', '2021-12-14 12:49:31', '2021-07-24 11:40:17'),
(4, 1, 'Hair Texture', '', '1639466342mens-hair-cut.jpg', '1639466342mens-hair-cut.jpg', 1, 'hair-texture', 'test', 'test', 'test', '2021-12-14 12:49:02', '2021-07-24 11:40:17'),
(5, 1, 'Hair Treatments', '', '1639466358kids-hair-cut.jpg', '1639466358kids-hair-cut.jpg', 1, 'hair-treatments', 'test', 'test', 'test', '2021-12-14 12:49:18', '2021-07-24 11:40:17'),
(6, 1, 'Hair Colour', '', '1639466324hair-texture.jpg', '1639466324hair-texture.jpg', 1, 'hair-colour', '', '', '', '2021-12-14 12:48:44', '2021-07-24 11:40:17'),
(8, 5, 'Facial', '', '1639466304facial.jpg', '1639466304facial.jpg', 1, 'facial', '', '', '', '2021-12-14 12:48:24', '0000-00-00 00:00:00'),
(9, 2, 'Bleaching', '', '1639466111bleaching.jpg', '1639466111bleaching.jpg', 1, 'bleaching', '', '', '', '2021-12-14 12:45:11', '2021-07-24 16:54:04'),
(10, 2, 'Cleanser', '', '1639466233face.jpg', '1639466233face.jpg', 1, 'cleanser', '', '', '', '2021-12-14 12:47:13', '2021-07-24 16:54:04'),
(11, 2, 'Toners', '', '1639466473light-therapy.jpg', '1639466473light-therapy.jpg', 1, 'toners', '', '', '', '2021-12-14 12:51:13', '2021-07-24 16:54:04'),
(12, 2, 'Masks', '', '1639466428facelift.jpg', '1639466428facelift.jpg', 1, 'masks', '', '', '', '2021-12-14 12:50:28', '2021-07-24 16:54:04'),
(13, 3, 'Botax', '', '1639466155botax.jpg', '1639466155botax.jpg', 1, 'botax', '', '', '', '2021-12-14 12:45:55', '2021-07-24 16:54:04'),
(14, 3, 'Light Therapy', '', '1639466384mask.jpg', '1639466384mask.jpg', 1, 'light-therapy', '', '', '', '2021-12-14 12:49:44', '2021-07-24 16:54:04'),
(15, 3, 'Facelift', '', '1639466293hair-treatments.jpg', '1639466293hair-treatments.jpg', 1, 'facelift', '', '', '', '2021-12-14 12:48:13', '2021-07-24 16:54:04'),
(16, 4, 'Manicure', '', '1639466412manicure.jpg', '1639466412manicure.jpg', 1, 'manicure', '', '', '', '2021-12-14 12:50:12', '2021-07-24 16:54:04'),
(17, 4, 'Pedicure', '', '1639466457toners.jpg', '1639466457toners.jpg', 1, 'pedicure', '', '', '', '2021-12-14 12:50:57', '2021-07-24 16:54:04'),
(19, 5, 'Blush', '', '1639466143Blush.jpg', '1639466143Blush.jpg', 1, 'blush', '', '', '', '2021-12-14 12:45:43', '2021-07-24 16:54:04'),
(20, 5, 'Face', '', '1639466282hair-colour.jpg', '1639466282hair-colour.jpg', 1, 'face', '', '', '', '2021-12-14 12:48:02', '2021-07-24 16:54:04'),
(21, 6, 'Deodorants', '', '1639466249colognes.jpg', '1639466249colognes.jpg', 1, 'deodorants', '', '', '', '2021-12-14 12:47:29', '2021-07-24 16:54:04'),
(22, 6, 'Colognes', '', '1639466209colognes.jpg', '1639466209colognes.jpg', 1, 'colognes', '', '', '', '2021-12-14 12:46:49', '2021-07-24 16:54:04'),
(23, 7, 'Eyes', '', '1639466271deodorants.jpg', '1639466271deodorants.jpg', 1, 'eyes', '', '', '', '2021-12-14 12:47:51', '2021-07-24 16:54:04'),
(24, 7, 'Lips', '', '1639466397lips.jpg', '1639466397lips.jpg', 1, 'lips', '', '', '', '2021-12-14 12:49:57', '2021-07-24 16:54:04'),
(27, 1, 'Lips dfdfds', 'zdgdagda fd  gad sds', '16405896163879.png', '164058961679237.png', 0, '', '', '', '', '2021-12-27 07:32:00', '2021-12-27 07:32:00');

-- --------------------------------------------------------

--
-- Table structure for table `service_variant`
--

CREATE TABLE `service_variant` (
  `variant_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `updated_on` datetime NOT NULL,
  `created_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `service_variant`
--

INSERT INTO `service_variant` (`variant_id`, `service_id`, `brand_id`, `is_active`, `updated_on`, `created_on`) VALUES
(31, 7, 1, 1, '2020-12-08 12:21:20', '2020-12-08 12:21:20'),
(32, 7, 2, 1, '2020-12-08 12:21:20', '2020-12-08 12:21:20'),
(33, 7, 3, 1, '2020-12-08 12:21:20', '2020-12-08 12:21:20'),
(42, 12, 1, 1, '2021-05-18 17:06:23', '2021-05-18 17:06:23'),
(43, 12, 3, 1, '2021-05-18 17:06:23', '2021-05-18 17:06:23'),
(44, 12, 4, 1, '2021-05-18 17:06:23', '2021-05-18 17:06:23'),
(45, 14, 3, 1, '2021-05-25 15:46:35', '2021-05-25 15:46:35'),
(46, 14, 4, 1, '2021-05-25 15:46:35', '2021-05-25 15:46:35'),
(47, 14, 6, 1, '2021-05-25 15:46:35', '2021-05-25 15:46:35'),
(54, 16, 1, 1, '2021-06-02 19:32:52', '2021-06-02 19:32:52'),
(55, 16, 8, 1, '2021-06-02 19:32:52', '2021-06-02 19:32:52'),
(56, 16, 9, 1, '2021-06-02 19:32:52', '2021-06-02 19:32:52'),
(57, 17, 1, 1, '2021-06-02 19:41:42', '2021-06-02 19:41:42'),
(58, 17, 8, 1, '2021-06-02 19:41:42', '2021-06-02 19:41:42'),
(59, 17, 9, 1, '2021-06-02 19:41:42', '2021-06-02 19:41:42'),
(60, 18, 1, 1, '2021-06-02 19:42:15', '2021-06-02 19:42:15'),
(61, 18, 8, 1, '2021-06-02 19:42:15', '2021-06-02 19:42:15'),
(62, 18, 9, 1, '2021-06-02 19:42:15', '2021-06-02 19:42:15'),
(66, 20, 1, 1, '2021-06-02 19:43:32', '2021-06-02 19:43:32'),
(67, 20, 6, 1, '2021-06-02 19:43:32', '2021-06-02 19:43:32'),
(68, 20, 8, 1, '2021-06-02 19:43:32', '2021-06-02 19:43:32'),
(69, 20, 9, 1, '2021-06-02 19:43:32', '2021-06-02 19:43:32'),
(70, 21, 1, 1, '2021-06-02 19:44:21', '2021-06-02 19:44:21'),
(71, 21, 8, 1, '2021-06-02 19:44:21', '2021-06-02 19:44:21'),
(72, 22, 1, 1, '2021-06-02 19:45:13', '2021-06-02 19:45:13'),
(73, 22, 9, 1, '2021-06-02 19:45:13', '2021-06-02 19:45:13'),
(77, 53, 1, 1, '2021-07-01 10:12:27', '2021-07-01 10:12:27'),
(78, 53, 2, 1, '2021-07-01 10:12:27', '2021-07-01 10:12:27'),
(83, 6, 1, 1, '2021-12-02 11:21:42', '2021-12-02 11:21:42'),
(84, 6, 2, 1, '2021-12-02 11:21:42', '2021-12-02 11:21:42'),
(85, 6, 3, 1, '2021-12-02 11:21:42', '2021-12-02 11:21:42'),
(86, 74, 7, 1, '2021-12-02 11:22:21', '2021-12-02 11:22:21'),
(87, 74, 8, 1, '2021-12-02 11:22:21', '2021-12-02 11:22:21'),
(88, 74, 13, 1, '2021-12-02 11:22:21', '2021-12-02 11:22:21'),
(89, 74, 45, 1, '2021-12-02 11:22:21', '2021-12-02 11:22:21');

-- --------------------------------------------------------

--
-- Table structure for table `service_visit_type`
--

CREATE TABLE `service_visit_type` (
  `id` int(11) NOT NULL,
  `visit_type` varchar(100) NOT NULL,
  `visit_title` varchar(100) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service_visit_type`
--

INSERT INTO `service_visit_type` (`id`, `visit_type`, `visit_title`, `icon`, `status`) VALUES
(1, 'home_booking', 'Home Booking', 'home.png', 1),
(2, 'salon_visit', 'Salon Visit', 'hair-salon.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `state_id` int(11) NOT NULL,
  `state_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `country_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0:Blocked, 1:Active',
  `updated` datetime NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`state_id`, `state_name`, `country_id`, `status`, `updated`, `created`) VALUES
(4, 'Andaman and Nicobar Islands', 100, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(6, 'Manipur', 100, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(7, 'Andhra Pradesh', 100, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(8, 'Arunachal Pradesh', 100, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(9, 'Assam', 100, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(10, 'Chandigarh', 100, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(11, 'Chhattisgarh', 100, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(12, 'Dadra and Nagar Haveli', 100, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(13, 'Daman and Diu', 100, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(14, 'Delhi', 100, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(15, 'Goa', 100, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(16, 'Gujarat', 100, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(17, 'Haryana', 100, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(18, 'Himachal Pradesh', 100, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(19, 'Jammu and Kashmir', 100, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(20, 'Jharkhand', 100, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(21, 'Karnataka', 100, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(22, 'Kerala', 100, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(23, 'Lakshadweep', 100, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(24, 'Madhya Pradesh', 100, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(25, 'Maharashtra', 100, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(26, 'Meghalaya', 100, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(27, 'Mizoram', 100, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(28, 'Nagaland', 100, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(29, 'Orissa', 100, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(30, 'Pondicherry', 100, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(31, 'Punjab', 100, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(32, 'Rajasthan', 100, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(34, 'Tamil Nadu', 100, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(35, 'Telangana', 100, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(36, 'Tripura', 100, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(37, 'Uttar Pradesh', 100, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(38, 'Uttarakhand', 100, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(39, 'West Bengal', 100, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(52, 'Assam', 100, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(54, 'Meghalaya', 100, 1, '2018-02-12 21:01:13', '2018-02-12 21:01:13'),
(56, 'Sikkim', 100, 1, '2018-04-07 12:43:37', '2018-04-07 12:43:37'),
(57, 'NAGALAND', 100, 1, '2018-10-03 17:34:09', '2018-10-03 17:34:09'),
(58, 'ARUNACHAL PRADESH', 100, 1, '2018-10-04 11:32:14', '2018-10-04 11:32:14'),
(59, 'Mizoram', 100, 1, '2018-10-22 15:34:41', '2018-10-22 15:34:41');

-- --------------------------------------------------------

--
-- Table structure for table `stylist`
--

CREATE TABLE `stylist` (
  `stylist_id` int(11) NOT NULL,
  `stylist_code` varchar(40) NOT NULL,
  `stylist_employment_type` varchar(255) DEFAULT NULL COMMENT '1=>with Salon, 0=>Freelancer',
  `type_id` int(11) NOT NULL,
  `service_id` varchar(1000) DEFAULT NULL,
  `category_id` varchar(25) DEFAULT NULL,
  `brand_id` varchar(500) DEFAULT NULL,
  `salon_code` varchar(40) NOT NULL DEFAULT 'OTHER',
  `stylist_name` varchar(200) NOT NULL,
  `mobile_number` bigint(20) NOT NULL DEFAULT 0,
  `email_id` varchar(100) NOT NULL,
  `country_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `complete_address` varchar(300) NOT NULL,
  `my_latitude` varchar(30) NOT NULL DEFAULT '',
  `my_longitude` varchar(30) NOT NULL DEFAULT '',
  `pincode` int(11) NOT NULL DEFAULT 0,
  `landmark` varchar(50) NOT NULL,
  `opening_time` varchar(30) NOT NULL,
  `closing_time` varchar(30) NOT NULL,
  `about_stylist` text NOT NULL,
  `is_provice_home_booking` enum('0','1') NOT NULL DEFAULT '0',
  `profile_picture` varchar(255) NOT NULL DEFAULT '',
  `activation_status` tinyint(1) NOT NULL DEFAULT 0,
  `phone_verification` enum('VERIFIED','PENDING') NOT NULL DEFAULT 'PENDING',
  `email_verification` enum('VERIFIED','PENDING') NOT NULL DEFAULT 'PENDING',
  `permalink` varchar(200) NOT NULL,
  `meta_title` varchar(255) NOT NULL DEFAULT '',
  `meta_description` varchar(500) NOT NULL DEFAULT '',
  `meta_keyword` varchar(500) NOT NULL DEFAULT '',
  `ip_address` varchar(40) NOT NULL,
  `updated_on` datetime NOT NULL,
  `created_on` datetime NOT NULL,
  `is_same_to_salon_availability` tinyint(1) NOT NULL DEFAULT 0,
  `available_days` varchar(255) NOT NULL DEFAULT '',
  `avg_review_ratings` decimal(10,2) NOT NULL DEFAULT 0.00,
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `is_dispay_to_home_page` tinyint(1) NOT NULL DEFAULT 0,
  `avg_services_price` decimal(10,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stylist`
--

INSERT INTO `stylist` (`stylist_id`, `stylist_code`, `stylist_employment_type`, `type_id`, `service_id`, `category_id`, `brand_id`, `salon_code`, `stylist_name`, `mobile_number`, `email_id`, `country_id`, `state_id`, `city_id`, `complete_address`, `my_latitude`, `my_longitude`, `pincode`, `landmark`, `opening_time`, `closing_time`, `about_stylist`, `is_provice_home_booking`, `profile_picture`, `activation_status`, `phone_verification`, `email_verification`, `permalink`, `meta_title`, `meta_description`, `meta_keyword`, `ip_address`, `updated_on`, `created_on`, `is_same_to_salon_availability`, `available_days`, `avg_review_ratings`, `is_featured`, `is_dispay_to_home_page`, `avg_services_price`) VALUES
(1, 'MSDT/04DEC202012/T3B', '1', 3, '1,2,3,4,5,6,7', '', '1,2,3,4', 'MSDDEC20/041053/XYRFR', 'Charles Harrison', 9856231245, 'charles.harrison@demo.com', 100, 17, 1962, 'sector 45, gurgaon', '', '', 122003, 'near apollo Hospital', '', '', '<p>Competition for styling opportunities is fierce so relevant experience is essential. Many employers will require at least one or two years\' experience in a retail or studio environment. Experience of styling products, merchandise and interiors at fashion shoots or personal styling is highly desirable. This experience could be gained during placements and internships, or through a part or full-time job.</p>\r\n', '1', '1622810221ted-gibson03.jpg', 1, 'VERIFIED', 'VERIFIED', 'charles-harrison', 'Charles Harrison', 'Charles Harrison', 'Charles Harrison', '125.63.95.42', '2021-07-05 13:13:22', '2020-12-04 12:54:55', 1, '', '2.00', 0, 0, '0.00'),
(2, 'MSDT/04DEC202012/M0K', '1', 2, '1,2,3,4,5,6,7,74', NULL, '1,2,3,4', 'MSDDEC20/041053/XYRFR', 'Shilpa Datta', 9876543210, 'shilpa.kashyap@demo.com', 100, 14, 1194, 'south delhi', '', '', 110032, 'ansal plaza', '11:00 am', '06:15 pm', '<p>Internships provide you with valuable experience, networking opportunities and possibly offers of employment. The fashion industry used to be renowned for offering unpaid internships, but this has changed dramatically in recent years and unpaid opportunities are now unusual. Most interns are being paid at least the National Minimum Wage. The majority of internships last between one and three months, although some can last between six months to a year.</p>\r\n', '0', '160706723189c7b9777cf4c5bf848cf0ee3e7219bd.jpg', 1, 'VERIFIED', 'VERIFIED', 'shilpa-kashyap', 'Shilpa Kashyap', 'Shilpa Kashyap', 'Shilpa Kashyap', '125.63.95.42', '2020-12-04 16:57:57', '2020-12-04 13:03:51', 1, 'sunday,monday,tuesday,wednesday,thursday,friday,saturday', '3.00', 0, 0, '0.00'),
(3, 'MSDT/04DEC202013/VEZ', '1', 3, '1,2,3,4,5,6,7', NULL, '1,2,3,4', 'MSDDEC20/041053/XYRFR', 'Nirmit Gill', 9654873212, 'nirmit.gill@demo.com', 100, 17, 1962, 'sector 41, Gurgaon', '', '', 122002, 'near apollo tower', '10:15 am', '06:30 pm', '<p>Get involved with student magazines, fashion shoots and films and start your own style blog. Building a strong network is important as stylists will need to contact public relations agents and brand showrooms to lend them clothes, products or accessories for a shoot. Employers will be keen to see examples of your work via a portfolio, uploaded images or website.</p>\r\n', '0', 'MicrosoftTeamsimage1.png', 1, 'VERIFIED', 'VERIFIED', 'nirmit-gill', 'Nirmit Gill', 'Nirmit Gill', 'Nirmit Gill', '125.63.95.42', '2020-12-04 16:56:52', '2020-12-04 13:17:14', 1, '', '0.50', 0, 0, '0.00'),
(5, 'MSDT/16MAR202115/TSU', '1', 2, '1,2,3,4,5,6,7', NULL, '1,2,3', 'MSDDEC20/041053/XYRFR', 'test stylist', 9717102772, 'teststylist@yopmail.com', 100, 17, 1962, 'test address', '28.453051', '77.0682303', 122001, 'near sect 14', '09:49 am', '08:49 pm', 'test description description fsfa dsfasf dsfafddsdsfa saf', '0', 'MicrosoftTeamimage6.png', 1, 'PENDING', 'PENDING', 'test-stylist', 'test stylist', 'test stylist', 'test stylist', '125.63.95.42', '2021-03-16 16:05:20', '2021-03-16 15:51:57', 0, 'sunday,wednesday,monday,thursday', '0.00', 0, 0, '0.00'),
(6, 'MSDT/24MAR202112/P5L', '1', 1, '1,2,3,4,5,6,7', '', '1,2,3,4', 'MSDDEC20/041053/XYRFR', 'Mr Daniel', 9717102772, 'teststylist@yopmail.com', 100, 14, 1194, 'test address', '', '', 122001, 'near sect 14', '', '', '<p>dsfaf sdfa</p>\r\n', '1', '1623998839e47b11ae-a318-4285-a63a-f5f81e2530a6.jpg', 1, 'VERIFIED', 'VERIFIED', 'mr-daniel', 'dsfaf', 'dsfaf', 'dsfaf', '::1', '2021-07-05 13:11:55', '2021-03-24 12:20:57', 1, '', '0.00', 0, 0, '0.00'),
(7, 'MSDT/24MAR202115/NPU', '1', 1, '1,2,3,4,5,6,7', NULL, '1,2,3,4', 'MSDDEC20/041053/XYRFR', 'Edward Tricomi', 1412342343, 'testname@yopmail.com', 100, 14, 2123, 'test', '', '', 110011, 'test', '09:41 am', '09:41 pm', '<p>test</p>\r\n', '0', '1622809848edward-tricomi-hair-stylist-celebrities.jpg', 1, 'VERIFIED', 'PENDING', 'edward-tricomi', 'Test Name', 'Test Name', 'Test Name', '::1', '2021-06-04 18:00:48', '2021-03-24 15:42:05', 1, '', '0.00', 0, 0, '0.00'),
(8, 'MSDT/14AUG202110/L2R', '0', 3, '1,2,3,4,5,6,7,8,9', '', '', '', 'Test 001', 8877898890, 'test001@test.com', 100, 14, 1194, 'Plot No 15, 3rd Floor, sector 44', '', '', 122002, 'gurugram', '', '', 'test 001 is a test stylist', '1', '1628918229user2-160x160.jpg', 1, 'VERIFIED', 'VERIFIED', 'test-001', '', '', '', '14.97.83.110', '2021-08-14 10:47:09', '2021-08-14 10:47:09', 0, '', '0.00', 0, 0, '0.00'),
(9, 'MSDT/17AUG202116/ONC', '0', 1, '1,2,3,4,5,6,7,74', NULL, '2,3', '', 'Paramveer', 9876545673, 'paramveer@gmail.com', 100, 14, 1194, 'test delhi', '28.5057948', '77.06794769999999', 122002, 'delhi', '', '', '', '1', '1629198796artist3.jpg', 1, 'VERIFIED', 'VERIFIED', 'paramveer', '', '', '', '::1', '2021-08-17 16:43:16', '2021-08-17 16:43:16', 0, '', '0.00', 0, 0, '0.00'),
(10, 'MSDT/13SEP202114/KEK', NULL, 3, '1,2,3,4', NULL, '1,2,3', 'MSDSEP21/131057/PL71X', 'kstylist', 3243243244, 'sdfaf@test.com', 100, 19, 59, 'test', '', '', 333233, 'werwer', '', '', 'fdsaf dsa ffa sa', '0', '1631524552artist10.jpg', 0, 'PENDING', 'PENDING', 'kstylist', 'kstylist', 'kstylist', 'kstylist', '::1', '2021-09-13 14:45:52', '2021-09-13 14:45:52', 1, '', '0.00', 0, 0, '0.00'),
(11, 'MSDT/14SEP202117/SBJ', '0', 1, '1,2,3,4,5,6', NULL, '1,2,3', '', 'Kstylist', 9876543234, 'kstylist@yopmail.com', 100, 21, 1361, 'test', '28.5057948', '77.0679477', 234567, 'test', '', '', 'test test test', '1', '1631621233artist14.jpg', 1, 'PENDING', 'PENDING', 'kstylist-euu9', '', '', '', '::1', '2021-09-16 11:53:38', '2021-09-14 17:37:13', 0, '', '0.00', 0, 0, '0.00'),
(12, 'MSDT/15SEP202113/8ZW', '1', 1, '1,2,3,4,5,6', NULL, '1,2,3', 'MSDDEC20/041053/XYRFR', 'M stylist', 7869804563, 'mstylist@yopmail.com', 100, 16, 1025, 'Gujrat chauk', '28.5057948', '77.0679477', 475632, 'Near shiv mandir', '', '', 'test about', '1', '1631692211artist7.jpg', 1, 'PENDING', 'PENDING', 'm-stylist', '', '', '', '::1', '2021-09-15 13:20:11', '2021-09-15 13:20:11', 0, '', '0.00', 0, 0, '0.00'),
(13, 'MSDT/15SEP202113/4VN', '1', 1, '1,2,3,4,5,6', NULL, '1,2,3', 'MSDDEC20/041053/XYRFR', 'M stylist', 1234565432, 'mkkkkkstylist@yopmail.com', 100, 6, 779, 'Gujrat chauk', '28.5057948', '77.0679477', 475632, 'Near shiv mandir', '', '', 'test about', '1', '1631697158artist7.jpg', 1, 'PENDING', 'PENDING', 'm-stylist-3hj3', '', '', '', '::1', '2021-09-15 14:42:38', '2021-09-15 14:42:38', 0, '', '0.00', 0, 0, '0.00'),
(14, 'MSDT/25NOV202111/7FN', '0', 1, '28,74,75,76', NULL, '7,8', '', 'Aron Finch', 98989898989, 'aronfinch@yopmail.com', 100, 14, 1194, 'Shiv puri ', '28.5048832', '77.070336', 110023, 'Near Bus Stand', '', '', '', '1', '1637820468hair_texture.jpg', 0, 'PENDING', 'PENDING', 'aron-finch', '', '', '', '::1', '2021-11-25 11:37:48', '2021-11-25 11:37:48', 0, '', '0.00', 0, 0, '0.00'),
(15, 'MSDT/25NOV202111/0DE', '0', 1, '74,75,76', NULL, '7,8', '', 'John Henry', 7876543234, 'johnhenry@yopmaill.com', 100, 14, 2123, 'Chandni Chawk', '28.5048832', '77.070336', 110000, 'Lal Qeula', '', '', 'Perfect stylist', '1', '1637821038mens_hair_cut.jpg', 0, 'PENDING', 'PENDING', 'john-henry', '', '', '', '::1', '2021-11-25 11:47:17', '2021-11-25 11:47:17', 0, '', '0.00', 0, 0, '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `stylist_by_service`
--

CREATE TABLE `stylist_by_service` (
  `id` int(11) NOT NULL,
  `stylist_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `salon_id` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stylist_by_service`
--

INSERT INTO `stylist_by_service` (`id`, `stylist_id`, `service_id`, `salon_id`, `is_active`) VALUES
(178, 2, 74, 1, 1),
(177, 2, 6, 1, 1),
(176, 1, 5, 1, 1),
(175, 2, 4, 1, 1),
(174, 2, 3, 1, 1),
(173, 7, 2, 1, 1),
(172, 3, 1, 1, 1),
(180, 10, 1, 27, 1);

-- --------------------------------------------------------

--
-- Table structure for table `stylist_cart`
--

CREATE TABLE `stylist_cart` (
  `cart_id` int(11) NOT NULL,
  `stylist_service_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `address_id` int(11) NOT NULL,
  `stylist_id` int(11) NOT NULL,
  `service_id` varchar(50) NOT NULL,
  `service_date` date NOT NULL,
  `service_time_slot` varchar(25) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stylist_cart`
--

INSERT INTO `stylist_cart` (`cart_id`, `stylist_service_id`, `customer_id`, `address_id`, `stylist_id`, `service_id`, `service_date`, `service_time_slot`, `added_on`) VALUES
(37, 17, 6, 1, 2, '1', '0000-00-00', '12:56 am-01:36 am', '2021-08-10 11:29:46');

-- --------------------------------------------------------

--
-- Table structure for table `stylist_incentive`
--

CREATE TABLE `stylist_incentive` (
  `inc_id` int(11) NOT NULL,
  `salon_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `stylist_id` int(11) NOT NULL,
  `incentive_percentage` decimal(9,2) NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stylist_incentive`
--

INSERT INTO `stylist_incentive` (`inc_id`, `salon_id`, `service_id`, `stylist_id`, `incentive_percentage`, `updated_on`) VALUES
(1, 1, 1, 2, '10.00', '2021-05-17 16:09:11'),
(2, 1, 1, 6, '11.00', '2021-08-16 15:49:17');

-- --------------------------------------------------------

--
-- Table structure for table `stylist_incentive_wallet`
--

CREATE TABLE `stylist_incentive_wallet` (
  `stylist_wallet_id` bigint(20) NOT NULL,
  `stylist_id` bigint(20) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `credit_debit_type` tinyint(1) NOT NULL COMMENT 'Credit==1, Debit==0',
  `booking_id_againt` bigint(20) NOT NULL,
  `inc_id_against` bigint(20) NOT NULL,
  `incentive_percentage` decimal(10,2) NOT NULL,
  `credited_on` varchar(40) NOT NULL,
  `debited_on` varchar(40) NOT NULL,
  `credit_debit_msg` varchar(150) NOT NULL DEFAULT 'NOT_DEFINED'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stylist_kyc`
--

CREATE TABLE `stylist_kyc` (
  `kyc_id` int(11) NOT NULL,
  `stylist_code` varchar(100) DEFAULT NULL,
  `document_type` varchar(100) DEFAULT NULL,
  `image` varchar(2500) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stylist_kyc`
--

INSERT INTO `stylist_kyc` (`kyc_id`, `stylist_code`, `document_type`, `image`, `created_date`, `updated_date`) VALUES
(1, 'MSDT/09JUN202117/DII', 'DL', '16232412071589807031Loreal-Paris-Spotlight-Hairstyle-Elnett-Satin-Color-Treated-Hair-M.jpg', '2021-06-09 17:50:07', '2021-06-09 17:50:07'),
(2, 'MSDT/09JUN202117/DII', 'PAN Card', '16232412071591354937haircut.png', '2021-06-09 17:50:07', '2021-06-09 17:50:07'),
(3, 'MSDT/09JUN202117/DII', 'Voter Id', '16232412071591180320ss1.jpg', '2021-06-09 17:50:07', '2021-06-09 17:50:07'),
(4, 'MSDT/19JUN202115/BPS', '', '1624096440Deaniel-Bauer.jpg', '2021-06-19 15:24:00', '2021-06-19 15:24:00'),
(5, 'MSDT/25JUN202116/DYU', 'PAN Card', '1624618377wedding2.png', '2021-06-25 16:22:57', '2021-06-25 16:22:57'),
(6, 'MSDT/25JUN202116/DYU', 'Voter Id', '1624618377wedding3.png', '2021-06-25 16:22:57', '2021-06-25 16:22:57'),
(7, 'MSDT/25JUN202116/DYU', 'DL', '16246183777512486d3720494eb8f276bd51b72d34.jpg', '2021-06-25 16:22:57', '2021-06-25 16:22:57'),
(8, 'MSDT/28JUN202118/IGA', '', '', '2021-06-28 18:21:02', '2021-06-28 18:21:02'),
(9, 'MSDT/06JUL202114/50E', 'PAN Card', '1625563420wedding3.png', '2021-07-06 14:53:40', '2021-07-06 14:53:40'),
(10, 'MSDT/06JUL202114/50E', 'Voter Id', '1625563420wedding2.png', '2021-07-06 14:53:40', '2021-07-06 14:53:40'),
(11, 'MSDT/06JUL202114/50E', 'DL', '1625563420wedding5.png', '2021-07-06 14:53:40', '2021-07-06 14:53:40'),
(12, 'MSDT/14AUG202110/L2R', 'PAN Card', '1628918229pan.jpg', '2021-08-14 10:47:09', '2021-08-14 10:47:09'),
(13, 'MSDT/14AUG202110/L2R', 'Bank Statement', '1628918229gst.png', '2021-08-14 10:47:09', '2021-08-14 10:47:09');

-- --------------------------------------------------------

--
-- Table structure for table `stylist_services`
--

CREATE TABLE `stylist_services` (
  `stylist_service_id` bigint(20) NOT NULL,
  `stylist_id` bigint(20) NOT NULL,
  `service_id` bigint(20) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `deal_price` decimal(9,2) NOT NULL DEFAULT 0.00,
  `tax_apply` enum('1','0') NOT NULL DEFAULT '0',
  `consuming_time` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `variant_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stylist_services`
--

INSERT INTO `stylist_services` (`stylist_service_id`, `stylist_id`, `service_id`, `price`, `deal_price`, `tax_apply`, `consuming_time`, `is_active`, `variant_id`) VALUES
(1, 1, 1, '900.00', '100.00', '0', 90, 1, 0),
(2, 1, 2, '900.00', '300.00', '0', 90, 1, 0),
(3, 1, 3, '900.00', '500.00', '0', 90, 1, 0),
(4, 1, 4, '900.00', '700.00', '0', 90, 1, 0),
(5, 1, 5, '900.00', '678.00', '0', 90, 1, 0),
(6, 1, 6, '900.00', '5465.00', '0', 90, 1, 0),
(7, 1, 7, '900.00', '5000.00', '0', 90, 1, 0),
(8, 1, 8, '500.00', '1000.00', '0', 10, 1, 0),
(9, 1, 9, '200.00', '250.00', '0', 30, 1, 0),
(10, 1, 10, '12300.00', '12300.00', '0', 44, 1, 0),
(14, 1, 11, '1111.00', '1234.00', '0', 33, 1, 0),
(17, 2, 1, '1000.00', '990.00', '0', 40, 1, 0),
(18, 2, 2, '3000.00', '2500.00', '0', 100, 1, 0),
(19, 2, 3, '4999.00', '3999.00', '0', 60, 1, 0),
(20, 2, 4, '0.00', '0.00', '0', 30, 1, 0),
(21, 2, 5, '0.00', '0.00', '0', 60, 1, 0),
(22, 2, 74, '5000.00', '4000.00', '0', 70, 1, 79),
(23, 2, 74, '9000.00', '8000.00', '0', 70, 1, 80),
(24, 2, 74, '6000.00', '5000.00', '0', 70, 1, 81),
(25, 2, 74, '5000.00', '4000.00', '0', 70, 1, 82),
(26, 9, 1, '8000.00', '7000.00', '0', 80, 1, 0),
(27, 9, 2, '1000.00', '900.00', '0', 70, 1, 0),
(28, 9, 3, '2000.00', '1900.00', '1', 60, 1, 0),
(29, 9, 4, '3000.00', '2000.00', '1', 50, 1, 0),
(30, 9, 5, '1000.00', '800.00', '0', 10, 1, 0),
(31, 9, 7, '4000.00', '3000.00', '0', 90, 1, 0),
(32, 9, 6, '9000.00', '8000.00', '0', 90, 1, 38),
(33, 9, 6, '7000.00', '6000.00', '0', 90, 1, 39),
(34, 9, 7, '8000.00', '7000.00', '0', 90, 1, 32),
(35, 9, 7, '4000.00', '3000.00', '0', 90, 1, 33);

-- --------------------------------------------------------

--
-- Table structure for table `stylist_videos`
--

CREATE TABLE `stylist_videos` (
  `vid_id` int(11) NOT NULL,
  `stylist_code` varchar(50) NOT NULL,
  `video_url` varchar(300) NOT NULL,
  `created_on` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `system_users`
--

CREATE TABLE `system_users` (
  `user_id` int(11) NOT NULL,
  `role_id` varchar(20) NOT NULL,
  `user_type` enum('CUSTOMER','SALON','TECHNICAL','CORPORATE') NOT NULL DEFAULT 'SALON',
  `user_code` varchar(50) NOT NULL DEFAULT '' COMMENT 'Unique codes ',
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `status` tinyint(1) NOT NULL COMMENT '0=>In-Active, 1=>Active',
  `user_lat` varchar(255) NOT NULL,
  `user_long` varchar(255) NOT NULL,
  `updated_on` datetime NOT NULL,
  `created_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_users`
--

INSERT INTO `system_users` (`user_id`, `role_id`, `user_type`, `user_code`, `username`, `password`, `status`, `user_lat`, `user_long`, `updated_on`, `created_on`) VALUES
(1, '', 'SALON', 'MSDDEC20/031809/158J9', 'A@gmail.com', '$2y$10$20HBpM3KNJN9Mx4qw0rr1u3Y2vlx8CjMIehc9sCJVqb/oTWKx/tua', 0, '', '', '2020-12-03 18:10:53', '2020-12-03 18:10:53'),
(2, '', 'SALON', 'MSDDEC20/031812/XXREM', 'info@taglesalon.com', '$2y$10$6.y7liJp0VjzRYUfMCn2qOGCmiL.7CqOw2T0vAhgOv7KuHihhih9S', 0, '', '', '2020-12-03 18:14:54', '2020-12-03 18:14:54'),
(3, '', 'SALON', 'MSDDEC20/031826/ERCLH', 'info@tanglessalon.in', '$2y$10$N1ciVjHFf7TXKrkU0MmNmeUF0ZWt.5dGhpH0.p7XC7JTTk9ZjNCza', 0, '', '', '2020-12-03 18:29:48', '2020-12-03 18:29:48'),
(4, '', 'SALON', 'MSDDEC20/041053/XYRFR', 'geetanjalisalon', '$2y$10$tcUXfg3lBi/A/w85DKXo.utjXMOeraT2hu/vqbgpxar9Oqueifzde', 1, '', '', '2020-12-04 10:58:33', '2020-12-04 10:56:35'),
(5, '', 'SALON', 'MSDDEC20/041147/H5AHI', 'cutandstyle', '$2y$10$tcUXfg3lBi/A/w85DKXo.utjXMOeraT2hu/vqbgpxar9Oqueifzde', 1, '', '', '2021-02-18 16:39:47', '2020-12-04 12:00:29'),
(6, '', 'TECHNICAL', 'MSDT/04DEC202012/T3B', 'charles.harrison@demo.com', '$2y$10$JoRT3xaIwrdNd8QPNsMx8OBkR0mGvSb7hTaLOgdJVakhiYZGKvs7W', 1, '', '', '2020-12-04 12:54:55', '2020-12-04 12:54:55'),
(7, '', 'TECHNICAL', 'MSDT/04DEC202012/M0K', 'shilpa.kashyap@demo.com', '$2y$10$tcUXfg3lBi/A/w85DKXo.utjXMOeraT2hu/vqbgpxar9Oqueifzde', 1, '', '', '2020-12-04 13:03:51', '2020-12-04 13:03:51'),
(8, '', 'TECHNICAL', 'MSDT/04DEC202013/VEZ', 'nirmit.gill@demo.com', '$2y$10$wXNK5LpDWKzUmFTJKsCFd.UCH3IL23CuW4ldfetACVcjgAVQ9BYDS', 1, '', '', '2020-12-04 13:17:14', '2020-12-04 13:17:14'),
(9, '', 'TECHNICAL', 'MSDT/04DEC202016/5QE', 'sujeet.kumar@demo.com', '$2y$10$0P7h2dgwo.ye/sDHAeNiK.IgLScS9L8sDqzf5NhwZiQAe0.VbAzfu', 0, '', '', '2020-12-04 16:43:10', '2020-12-04 16:43:10'),
(10, '', 'CORPORATE', 'MSD-CORDEC20/101752/MXBJE', 'director@aurainebotanicals.com', '$2y$10$7vI6CrJWB.sSua5Kj4HJ6ea8VpircMGhWACaBMn2oLwmxjEcaWS7G', 1, '', '', '2020-12-18 15:40:54', '2020-12-10 17:56:19'),
(11, '', 'CUSTOMER', '1', 'madhukant.tiwari@aurainebotanicals.com', '$2y$10$4Zb7SpD1J.mMSzQQJQ5H2.yAL2ZcTt1r4lKkL4clisWHBk7px83H2', 1, '', '', '2021-02-04 14:37:04', '2021-02-04 14:37:04'),
(12, '', 'CUSTOMER', '2', 'it@maisondauraine.com', '$2y$10$9xwXIJSqhkeBqAOfdrsx.esEioyipoHdQ/Z9eBi/wcboizuCDldze', 1, '', '', '2021-03-16 15:16:35', '2021-03-16 15:16:35'),
(13, '', 'SALON', 'MSDMAR21/161519/G150M', 'salon_one@yopmail.com', '$2y$10$n1dK1Ruz4BOug6c.C.gIdO9a3Z4ivK3lVI1cxU3YNjCnTDh.LsRDa', 1, '', '', '2021-03-16 15:24:38', '2021-03-16 15:24:38'),
(14, '', 'TECHNICAL', 'MSDT/16MAR202115/TSU', 'teststylist@yopmail.com', '$2y$10$n1dK1Ruz4BOug6c.C.gIdO9a3Z4ivK3lVI1cxU3YNjCnTDh.LsRDa', 1, '', '', '2021-03-16 15:51:57', '2021-03-16 15:51:57'),
(15, '', 'CUSTOMER', '4', 'firstcustomer@yopmail.com', '$2y$10$.wQ/eQzgVkvDLq1yadg7m.RBi1mSWpR5CMC2Egc9mu3UjZPulxMJa', 1, '', '', '2021-03-18 14:03:06', '2021-03-18 14:03:06'),
(16, '', 'CORPORATE', 'MSD-CORMAR21/191037/Y74MG', 'corporateone@yopmail.com', '$2y$10$tcUXfg3lBi/A/w85DKXo.utjXMOeraT2hu/vqbgpxar9Oqueifzde', 1, '', '', '2021-03-27 14:22:12', '2021-03-19 10:44:14'),
(17, '', 'SALON', 'MSDMAR21/221151/NM5GA', 'salon_one_corporate@yopmail.com', '$2y$10$n4hAdlOh1Klyqw9KlcOQzuJ4mDCUywpX8dImucUcTi.jT.qjxj72K', 1, '', '', '2021-03-22 11:58:51', '2021-03-22 11:58:51'),
(18, '', 'SALON', 'MSDMAR21/221548/PAECK', 'salon_second_corporate@yopmail.com', '$2y$10$SXVdusNazADoNw7s0rgKZ.QOA5/SUR.fQNNuJsZw4vyv1E1P1Lr/.', 1, '', '', '2021-03-22 15:51:48', '2021-03-22 15:51:48'),
(19, '', 'CUSTOMER', '5', 'customer_one@yopmail.com', '$2y$10$9N86Hks9o5b0i4g7vd.oaO16L.YVgs5X6q5OlBmywjLXdFodXpk7K', 1, '', '', '2021-05-05 12:39:30', '2021-03-24 11:16:53'),
(20, '', 'TECHNICAL', 'MSDT/24MAR202112/P5L', 'expert_one@yopmail.com', '$2y$10$pI3x4scv9POURnBADRMUG.4/JWDWYE/zVaygYQNGJWIimr9GdM28i', 1, '', '', '2021-03-24 12:20:57', '2021-03-24 12:20:57'),
(21, '', 'TECHNICAL', 'MSDT/24MAR202115/NPU', 'expert_two@yopmail.com', '$2y$10$toLB94W6G41JTRI.MOCCNOc/pp5oxGuvjmmicBwCF77GXRgC.O7pe', 1, '', '', '2021-03-24 15:42:05', '2021-03-24 15:42:05'),
(22, '', 'CUSTOMER', '6', 'customer_two@yopmail.com', '$2y$10$HGhaVTYm6vSj8Pt8QO5p2e4j8hKwwX7o9R2VY3h7gJQWXS7p/dJPO', 1, '', '', '2021-03-24 18:19:58', '2021-03-24 18:19:58'),
(23, '', 'TECHNICAL', 'MSDT/25MAR202115/VMD', 'newexpertone', '$2y$10$r8OQGUHmWk6k6PylFZRLQOIUegKzBoKOv34m.jTmj7Nn7yftjUi8K', 0, '', '', '2021-03-25 15:50:13', '2021-03-25 15:50:13'),
(24, '', 'SALON', 'MSDMAR21/261519/IEYEX', 'sdfaf', '$2y$10$C9.yUsVlpKkt8usO/1cCHOdWq7sCli/Va7CCUPmbfKEl2iCCqlObW', 0, '', '', '2021-03-26 15:20:07', '2021-03-26 15:20:07'),
(25, '', 'TECHNICAL', 'MSDT/26MAR202116/QLT', 'sdafsa', '$2y$10$K/Dy060SKlJ6g.fr3HvNVOcO5j2lScwuWZS7fOzSUDiprVFUBSahS', 0, '', '', '2021-03-26 16:26:23', '2021-03-26 16:26:23'),
(26, '', 'TECHNICAL', 'MSDT/26MAR202116/PLG', 'sdfsaf', '$2y$10$2GXyEDlOuDvis4rFhHRngu5uFdrDEV0yYAzkYZfZMmxcKrQ6CmpFy', 1, '', '', '2021-03-26 16:29:21', '2021-03-26 16:29:21'),
(27, '', 'SALON', 'MSDMAR21/301101/KPFBZ', 'sdfaf', '$2y$10$Vtvo9QnC4v0jbMVWTZmgcOVeBtamJp9lncQTHy4RrBmD2aeEjpGWm', 1, '', '', '2021-03-30 11:02:52', '2021-03-30 11:02:52'),
(28, '', 'SALON', 'MSDMAR21/301103/SS4OY', 'saf', '$2y$10$CflS8lNIUmXFJjT.Ko.D8ePPsh0Gn3HXlov6Fg2I3Kgdm0SkCCRKW', 1, '', '', '2021-03-30 11:04:17', '2021-03-30 11:04:17'),
(29, '', 'SALON', 'MSDMAR21/301104/NZTS6', 'werqrwrewqr', '$2y$10$G/FcUgPethvkJ9l2l5Bfk.HVPOofBKkghGkefS.DlMEvqJcAQI3Iu', 1, '', '', '2021-03-30 11:05:42', '2021-03-30 11:05:42'),
(30, '', 'SALON', 'MSDMAR21/301105/UX2W7', 'werqrwwe', '$2y$10$ctHBcITn8oVZNcuVGx22ZuwMdIQLiqVkwi3RcUuFlHZwkboUV..Da', 1, '', '', '2021-03-30 11:06:45', '2021-03-30 11:06:45'),
(31, '', 'SALON', 'MSDMAR21/301107/846N2', 'sfasfsa', '$2y$10$A3u.B3TYFxwPF/M9dYUijOftS2S0V.k1qkVBRZm.2Jk6kH5k8z6Yi', 1, '', '', '2021-03-30 11:07:48', '2021-03-30 11:07:48'),
(32, '', 'SALON', 'MSDMAR21/301108/L7BVS', 'sdfasfaf', '$2y$10$ZSOY4prTRwRrbW2ZRgTSLuEpQ0JV03gBvE6AYGcXc.YhDLPTGvNd.', 1, '', '', '2021-03-30 11:08:53', '2021-03-30 11:08:53'),
(33, '', 'SALON', 'MSDMAR21/301109/XO5X9', 'ytytrtrtyry', '$2y$10$7N2g24AHs0PuGcaHXIpjUeKKIJ0XFCfuFtd4hM2cL2IH0rZYREP8e', 1, '', '', '2021-03-30 11:11:43', '2021-03-30 11:11:43'),
(34, '', 'SALON', 'MSDMAR21/301113/XGNPD', 'werqrewqr', '$2y$10$KBTRGaxh8R2Awy2KQoO87.aazAFXNsI1iAaOGZS3p.PVFL8OFO5mK', 1, '', '', '2021-03-30 11:15:48', '2021-03-30 11:15:48'),
(35, '', 'SALON', 'MSDMAR21/301116/P15I9', 'sfdfafsa', '$2y$10$dQWacQMPm1xFVmBJhjH6KeLiXQqdQoVmKsHvRAVfIvTC9AxNsUGdK', 1, '', '', '2021-03-30 11:16:57', '2021-03-30 11:16:57'),
(36, '', 'TECHNICAL', 'MSDT/30MAR202116/W5Z', 'sdafas', '$2y$10$Jr32MWpMw2sELJV03wxVUOdFYdsYNbV3L.Sn7b0jUVGgQrRfFU3EG', 1, '', '', '2021-03-30 16:03:31', '2021-03-30 16:03:31'),
(37, '', 'SALON', 'MSDMAR21/301612/13DKX', 'wqewqewqe', '$2y$10$slRZnyy3OnRo8KWhqrPvGOpIYvv1nKgkjM.rSoU3/qAegWjeM0xWS', 1, '', '', '2021-03-30 16:13:24', '2021-03-30 16:13:24'),
(38, '', 'SALON', 'MSDMAR21/311205/8ZFD4', 'dsfsafsafsa', '$2y$10$KaiNvSmjhjRbOTKMMbf3TesgsVT1UlzObOQrTKgkN28KQcegSeshq', 1, '', '', '2021-03-31 12:08:14', '2021-03-31 12:08:14'),
(39, '', 'CUSTOMER', '7', 'customer_five@yopmail.com', '$2y$10$WTuqq/IDIr0plPE2aHFeHeS62YRHxb0tN9iV9LSIu.KqLjI8qz64u', 1, '', '', '2021-05-06 10:37:19', '2021-05-06 10:37:19'),
(40, '', 'CUSTOMER', '8', 'ranjeet.kumar@maisondauraine.com', '$2y$10$Mam87h7qj7NwvjtNN6m4yeLpYUdrHkbQpyV1tk8KwWXezWzHHPSy2', 1, '', '', '2021-05-13 14:53:33', '2021-05-13 14:53:33'),
(41, '', 'TECHNICAL', 'MSDT/17MAY202115/VX7', 'admin@gmail.com', '$2y$10$scIHcgCPzEP5jchvT.ClM.kUxTiiBhJJjGRlirqiPe9CLbKlgvVC2', 1, '', '', '2021-05-17 15:52:45', '2021-05-17 15:52:45'),
(42, '', 'TECHNICAL', 'MSDT/17MAY202115/VX7', 'admin@gmail.com', '$2y$10$kSrXd90KCEsaREzapYamHOf3xFDrV3DRClCgSb86.xEs8PFBROa0a', 1, '', '', '2021-05-17 15:52:47', '2021-05-17 15:52:47'),
(43, '', 'SALON', 'MSDMAY21/221631/90LEW', 'admin', '$2y$10$UA/hUV0cK9fB3ZzzU0LZju4RDJLRIzr7jHyGmQ.ZinHZ0Pg0McdLO', 1, '', '', '2021-05-22 16:32:49', '2021-05-22 16:32:49'),
(44, '', 'SALON', 'MSDMAY21/251752/BUHUM', 'admin', '$2y$10$/EpHCKfDH8oFEaqtHnripOmx7POhenbj/w7rrMiJKFID9u2nuEvhG', 1, '', '', '2021-05-25 17:53:40', '2021-05-25 17:53:40'),
(45, '', 'CUSTOMER', '9', 'an@gmail.com', '$2y$10$jOKMRZOnHAEukxs8sYI6s.jJhoODGcBAyJe0xKpnVszP9h2YpUoK6', 1, '989.38280', '48.398980', '2021-05-25 18:31:20', '2021-05-25 18:31:20'),
(46, '', 'CUSTOMER', '10', 'tapeshwartoday@gmail.com', '$2y$10$Hkrnofde6xx.EA.4UO.S2eWLXq.Aumt.4mIiH.tRHFnq/YRcxOTEm', 1, '', '', '2021-05-26 10:17:49', '2021-05-26 10:17:49'),
(47, '', 'SALON', 'MSDMAY21/261523/T5R16', 'admin', '$2y$10$QdxHnwokpWC/.CwjIv6R0ehagZPMV9nUIFX8AHCuHsPMTWn6hg/4G', 1, '', '', '2021-05-26 15:26:45', '2021-05-26 15:26:45'),
(48, '', 'CUSTOMER', '11', 'an14@gmail.com', '$2y$10$kmDyBDxrEI71RI9A32Rg5uqa75dQn.1.N/rVa8NaALoLbYdq5oZnS', 1, '989.38280', '48.398980', '2021-05-26 16:47:37', '2021-05-26 16:47:37'),
(49, '', 'CUSTOMER', '12', 'anr@gmail.com', '$2y$10$vUX.KrRJTtCbscvLd3RwAe3gUVFO/NfmdaqE9ISZYLmGGBil7E3E6', 1, '989.38280', '48.398980', '2021-05-26 16:48:31', '2021-05-26 16:48:31'),
(50, '', 'CUSTOMER', '13', 'anrd@gmail.com', '$2y$10$zcGfaYQRq2X113p1kf4JC.Ie83vcbGCKaChBAhS9sb7hLkUjU1Pga', 1, '989.38280', '48.398980', '2021-05-26 16:49:45', '2021-05-26 16:49:45'),
(51, '', 'SALON', 'MSDMAY21/311609/KXVKD', 'dsfsas@sdf.sdf', '$2y$10$x6E/r34gvdkGB/DWwWjwueWdy.HRq6Jkj2n0DSb3Bu970y5JHFAjy', 0, '', '', '2021-05-31 16:11:48', '2021-05-31 16:11:48'),
(52, '', 'TECHNICAL', 'MSDT/31MAY202116/M63', 'sfagfsa@dfga.sdfa', '$2y$10$x.h3L0ytlMnvKNPEUfiRG.nlwlHIS0Vz/3rxtZee8LV39/gOZhsnO', 0, '', '', '2021-05-31 16:15:34', '2021-05-31 16:15:34'),
(53, '', 'SALON', 'MSDJUN21/011800/8LKUY', 'creative_salon@yopmail.com', '$2y$10$vkc/.M0Zu3DiXBlGQDzCcOXIW9TIbyJtc7YAK5O.hCMybNK27OU0W', 0, '', '', '2021-06-01 18:00:13', '2021-06-01 18:00:13'),
(54, '', 'CUSTOMER', '14', 'ad@gmail.com', '$2y$10$pg2TQRpGO0OriJX.cxYa5OClbR4W4Z3rL9WdRndhChg/AJru7rQBa', 1, '', '', '2021-06-07 12:20:48', '2021-06-07 12:20:48'),
(55, '', 'SALON', 'MSDJUN21/301228/GOWRW', 'admin1', '$2y$10$eEY.w5OBZb7j4UeH90eoUOCfKKCZQBg1i5JrnWSBbBQtIm791m852', 1, '', '', '2021-06-30 12:30:21', '2021-06-30 12:30:21'),
(56, '', 'SALON', 'MSDJUN21/301231/RVMSF', 'admin11', '$2y$10$M0OdkN6Cy8monyIketkjCONgOFln8iC2Io7jht9F4kTsnBKDvaEQK', 1, '', '', '2021-06-30 12:32:37', '2021-06-30 12:32:37'),
(57, '', 'TECHNICAL', 'MSDT/30JUN202112/6MO', 'administrator', '$2y$10$0FPfN9WVzAIjxrmMe.OeuOGuYF/fjpTOT1FaiH2y.e4kGtNHzTF2i', 1, '', '', '2021-06-30 12:42:16', '2021-06-30 12:42:16'),
(58, '', 'TECHNICAL', 'MSDT/06JUL202114/50E', 'admin', '$2y$10$CjWX0nOmthmoO3yj6ZKfce.jKRVdhsFI67z3.wdTyQ6FMZ/VnzV/q', 1, '', '', '2021-07-06 14:53:40', '2021-07-06 14:53:40'),
(59, '', 'SALON', 'MSDJUL21/281453/RPO32', 'sujeet.kumar@aurainebotanicals.com', '$2y$10$l3zfcGUMbsVdHMad/f3q.Oc/evSOEIJMnjRDIhRWJHUu8iN4NI9TO', 0, '', '', '2021-07-28 14:58:39', '2021-07-28 14:58:39'),
(60, '', 'SALON', 'MSDJUL21/281529/D2SSE', 'sujeet.kumar@aurainebotanicals.com', '$2y$10$oyKYhmk/xLQ1BGqPJR5vtOCldP4lmW.7ZHI07FJ0wFGmaYbLH9zAu', 0, '', '', '2021-07-28 15:30:25', '2021-07-28 15:30:25'),
(61, '', 'SALON', 'MSDJUL21/281535/1OSNS', 'sujeet.kumar@aurainebotanicals.com', '$2y$10$D0bOLu81PYNto3zPdn3WlOjtKkHK5eASIIkWTaFG91mjDvjZczd3G', 0, '', '', '2021-07-28 15:36:33', '2021-07-28 15:36:33'),
(62, '', 'SALON', 'MSDJUL21/281542/77LQA', 'sujeet.kumar@aurainebotanicals.com', '$2y$10$5TucAMqFyBfNeeUodopSM..wBTYfFRZy1agqfR2LvAe4lBAt9d3EK', 0, '', '', '2021-07-28 15:43:08', '2021-07-28 15:43:08'),
(63, '', 'TECHNICAL', 'MSDT/14AUG202110/L2R', 'test001', '$2y$10$C0ASAoUjxxpz7lFiSoQ3DuJjvYtyfsE29yNvYjAUjZglc9VSZo9Be', 1, '', '', '2021-08-14 10:47:09', '2021-08-14 10:47:09'),
(64, '', 'CUSTOMER', '15', 'ranjeet@test.com', '$2y$10$iO4hrk3Umt.UcA7i03PSzee.FFUcJOQzc9FVyWqY6q.E95I1hytFu', 1, '', '', '2021-08-14 12:55:28', '2021-08-14 12:55:28'),
(65, '', 'TECHNICAL', 'MSDT/17AUG202116/ONC', 'paramveer@gmail.com', '$2y$10$tcUXfg3lBi/A/w85DKXo.utjXMOeraT2hu/vqbgpxar9Oqueifzde', 1, '', '', '2021-08-17 16:43:16', '2021-08-17 16:43:16'),
(66, '', 'CUSTOMER', '16', 'abcdef', '$2y$10$QwOlL/n8i0sXJd14/Cr6uewZtaTyYEdFJVjm18bYSeBpmgS6MioYC', 1, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, '', 'CUSTOMER', '17', 'tushar', '$2y$10$vZTQa5sLGSto7e.Otu9KwuZ4/KyDvXJbrAUaGHe5skEyXdlCfM7p.', 1, '', '', '2021-08-25 18:08:00', '2021-08-25 18:08:00'),
(68, '', 'CUSTOMER', '18', 'john', '$2y$10$kNyC0Fr.luCiWVFYRhzkteO/xVT931X76If9U23Xsj4P5X5cpw.nK', 1, '', '', '2021-08-26 10:46:43', '2021-08-26 10:46:43'),
(69, '', 'CUSTOMER', '19', 'johnn', '$2y$10$Rorf/jpEJB1mEddt87es1.foTvE/bGJdV3C07knCY8p5px5Op2Dxu', 1, '', '', '2021-08-26 10:58:07', '2021-08-26 10:58:07'),
(70, '', 'CUSTOMER', '20', 'mike', '$2y$10$dtrLKXSBXRSyeFgQwNwNROKabPqB.uGqfm8mL5zuOmOUNGytvJxqC', 1, '', '', '2021-08-26 11:31:00', '2021-08-26 11:31:00'),
(71, '', 'CUSTOMER', '21', 'ttt', '$2y$10$QsWb154twSATab6GyoA.J.l9TJ/oyu4Ob5xiXNcE7UqiTz8FShomi', 1, '', '', '2021-08-26 11:35:28', '2021-08-26 11:35:28'),
(72, '', 'CUSTOMER', '22', 'rytytttt', '$2y$10$M0xg9EWLF4OHtUc7nn93s.6sChp8ZRrZNJ1iq8IugOBM0xZokYlVe', 1, '', '', '2021-08-26 11:44:43', '2021-08-26 11:44:43'),
(73, '', 'CUSTOMER', '23', 'wwwww', '$2y$10$ja9gBwQTuP856OisS6twLOl7.bY1mArLljbfTHLM3pnUPQ4BGxE4C', 1, '', '', '2021-08-26 11:47:27', '2021-08-26 11:47:27'),
(74, '', 'CUSTOMER', '24', 'amandeep', '$2y$10$f69SBRP8ADRHhJGZgEIVbu8JeMDYAlDkPz8IwI9GWoMj/dN51lUnm', 1, '', '', '2021-08-26 11:51:20', '2021-08-26 11:51:20'),
(75, '', 'CUSTOMER', '25', 'amandeeppp', '$2y$10$jpbImlA7PrKdt56XON/hv.85Lz/Zp5vvQqCGFQD8TBBaSBE0Gk5J.', 1, '', '', '2021-08-26 12:01:32', '2021-08-26 12:01:32'),
(76, '', 'CUSTOMER', '26', 'johnpatric', '$2y$10$rXaTyY44Kb6macUF1T/aoey6xjmrXXQNkcvUK6CNyZyaf/lrdSVim', 1, '', '', '2021-08-26 12:08:57', '2021-08-26 12:08:57'),
(77, '', 'CUSTOMER', '27', 'wwwwwss', '$2y$10$HF0iJtYPXF53Q.kpX6g6l.G2rifMbLG/WyTjUHzqgj23XqfwP0shW', 1, '', '', '2021-08-26 12:14:36', '2021-08-26 12:14:36'),
(78, '', 'CUSTOMER', '28', 'timpane', '$2y$10$2z4Un5lj0pygA/Z2/9N.B.WKpUaQHnNDfhyFabaoR4t2YwzMcygQO', 1, '', '', '2021-08-26 13:30:35', '2021-08-26 13:30:35'),
(79, '', 'CUSTOMER', '29', 'ggggg gggg', '$2y$10$Kej5Ljb9S0UIAGRg2vkh.O4ZssHymYYu.gIhshJeKm/lUrtf8S/iK', 1, '', '', '2021-08-26 14:42:49', '2021-08-26 14:42:49'),
(80, '', 'CUSTOMER', '30', 'tttttt', '$2y$10$7cpI7c2sIxcYP.KHf12OGeCFpP/U4F8dijAxNjQvscudD3qtZWoT6', 1, '', '', '2021-08-26 14:48:01', '2021-08-26 14:48:01'),
(81, '', 'CUSTOMER', '31', 'martin', '$2y$10$ZkZFNXce9tRM374bKSLWE.yEibV67Fy8Rc/Maed7Mj25Idr.FdBWS', 1, '', '', '2021-08-26 14:52:12', '2021-08-26 14:52:12'),
(82, '', 'CUSTOMER', '32', 'testuser', '$2y$10$4.lSOtZazo1W0bxTQPcOGetDdxwW8BAsxPO/cr3Htywn/gzlqYnoC', 1, '', '', '2021-08-28 11:57:33', '2021-08-28 11:57:33'),
(83, '', 'CUSTOMER', '33', 'guest_three', '$2y$10$lh4/H6w4AVzNuqotv4CJIea.BLf2zbiYhKhPa0DjqrxDi/qu4p3ou', 1, '', '', '2021-08-28 12:29:06', '2021-08-28 12:29:06'),
(84, '', 'CUSTOMER', '34', 'guest_four', '$2y$10$VHdJe.rWYLbTVy8KTxI8nOWKp4F5Hr/is3a6VkpU6CS0GdWeoWo2e', 1, '', '', '2021-08-28 13:39:12', '2021-08-28 13:39:12'),
(85, '', 'CUSTOMER', '35', 'guest_five', '$2y$10$wiz4a6o6sdak2k9zmxaCbu/LYJFF4mmu8xv1JcrslZvJFyjvWhpRS', 1, '', '', '2021-08-28 13:49:46', '2021-08-28 13:49:46'),
(86, '', 'CUSTOMER', '36', 'rerere', '$2y$10$DHhHPpVQXrtogvvCbcNLrOTAEBwzrL..3YK3acYb4bFeuZH.QlxPS', 1, '', '', '2021-08-28 13:56:25', '2021-08-28 13:56:25'),
(87, '', 'CUSTOMER', '37', 'rererewew', '$2y$10$M7hfaN82A5WWwlHFeMw5pOJ27V.j5RVHtlP9ZYMBHklkrkVx/Y9Fu', 1, '', '', '2021-08-28 13:59:49', '2021-08-28 13:59:49'),
(88, '', 'CUSTOMER', '38', 'vdsdgdf', '$2y$10$fvxwfu9p4gPN28.7hEMVUezqXErqw0pD.cD0t7tPhU6BdW35IqMRu', 1, '', '', '2021-08-28 14:02:14', '2021-08-28 14:02:14'),
(89, '', 'CUSTOMER', '39', 'erewgdf', '$2y$10$7Qmm9.Fa18YT5BkVJGbGcuKq2/gCCSdXc7cdprKNQ5CF/y/Yg98ei', 1, '', '', '2021-08-28 14:04:58', '2021-08-28 14:04:58'),
(90, '', 'CUSTOMER', '40', 'wwjfgfdjfd', '$2y$10$aR9CwbN9cqcUI8RDlpIBYeuWrrIQqqdO4hF8x0q8iEnxpa.rb41ny', 1, '', '', '2021-08-28 14:07:32', '2021-08-28 14:07:32'),
(91, '', 'CUSTOMER', '41', 'oooooo', '$2y$10$dgua0nPG7KIn8C/irh.SJe0UqAapDutl/8l3R8N.s29Bkm6/XW50K', 1, '', '', '2021-08-28 14:15:54', '2021-08-28 14:15:54'),
(92, '', 'CUSTOMER', '42', 'rewrwr', '$2y$10$quLjkOBy3W0uuIajlqTyROOs8mxnEo58dJDEzHxNJl24feeWme1ke', 1, '', '', '2021-08-28 14:20:02', '2021-08-28 14:20:02'),
(93, '', 'CUSTOMER', '43', 'eewtwetrew', '$2y$10$L/EJMW/KFns3Nl76YFB6m.1Gv/rGqb.bX5ozFypSoTdN.kRLJ7RvW', 1, '', '', '2021-08-28 14:22:25', '2021-08-28 14:22:25'),
(94, '', 'CUSTOMER', '44', 'testYYYY@yopmail.com', '$2y$10$E4TkYSLAlJOqlcjyj52ph.dbZIw2l3c2xrBJm2wKwXkN6z.GAH25K', 1, '', '', '2021-08-31 16:56:07', '2021-08-31 16:56:07'),
(95, '', 'CUSTOMER', '49', 'test2221@test.com', '$2y$10$Bw56pamOteo4WDtH5R3UGeUrBVqN2Q1SeAJhh4st9pj0yqZpCOvK2', 1, '', '', '2021-09-01 11:06:47', '2021-09-01 11:06:47'),
(99, '', 'CUSTOMER', '53', 'dsfsfsa@yopmail.com', '$2y$10$Wiih5jRIuDwVK6epVQfad.9ZkF67a1lBDnObAZYKnw0kurkm/I63e', 1, '', '', '2021-09-01 11:22:54', '2021-09-01 11:22:54'),
(100, '', 'CUSTOMER', '54', 'fafafaf@yopmail.com', '$2y$10$RpepHasz/NDt17JymttnTOdsFQKGRF/IYR.nctQBTKtBrlKmswPYy', 1, '', '', '2021-09-01 11:30:25', '2021-09-01 11:30:25'),
(101, '', 'CUSTOMER', '55', 'sdsafsa@yopmail.com', '$2y$10$onYquXBDFbiY.9T28s7YAONkQBKvSw.AftSMADWrSXk3GfBlCjVQS', 1, '', '', '2021-09-01 12:20:08', '2021-09-01 12:20:08'),
(102, '', 'CUSTOMER', '56', 'sfdaffdsaf@sdfas.com', '$2y$10$VXpGtmqOhlO2VSJvbF4EQe1I175/lG5s2PIJsGWK8jeE.78duLM9K', 1, '', '', '2021-09-01 13:18:10', '2021-09-01 13:18:10'),
(103, '', 'CUSTOMER', '57', 'fdsafsafs@yopmail.com', '$2y$10$bSnKZlw3LDjQHg/3Pfe5/OPr09DMCI2ceBj9QZ4zzsNtSBWxxmnKS', 1, '', '', '2021-09-01 15:04:21', '2021-09-01 15:04:21'),
(104, '', 'CUSTOMER', '58', 'sfdasfasfd@yopmail.com', '$2y$10$hSOpA76I5PvjnG1N8EiTq.TbT.NR/FqVMVIfcs6hDNnN0S19bd.OC', 1, '', '', '2021-09-01 15:06:39', '2021-09-01 15:06:39'),
(105, '', 'CUSTOMER', '59', 'fafessfdsa@yopmail.com', '$2y$10$V1tBOHe/TVocz5a03Dz14ujjx8.UBL44RfKx/szHGKRgE7tq03hvy', 1, '', '', '2021-09-01 16:53:30', '2021-09-01 16:53:30'),
(106, '', 'CUSTOMER', '60', 'esdfsaf@test.com', '$2y$10$lE42prwlTPkLo5eQNjxqguZiyRyJBc6MHmhhjI.zRETirzoaBNPkW', 1, '', '', '2021-09-01 17:00:57', '2021-09-01 17:00:57'),
(107, '', 'CUSTOMER', '61', 'sfasfdsaf@yopmail.com', '$2y$10$bnFPeSYS87sxN7uRv9HsguKlvFJHG2MY8PZWkn0mo7ZX.G0uyE/vm', 1, '', '', '2021-09-01 17:03:42', '2021-09-01 17:03:42'),
(108, '', 'CUSTOMER', '62', 'fafasf@yopmail.com', '$2y$10$JK6/HyBQFdiSkqs4KHsDlOdWWgyZIlGXmpJj7heJBlz.TLpwicUAy', 1, '', '', '2021-09-01 17:13:07', '2021-09-01 17:13:07'),
(109, '', 'CUSTOMER', '63', 'iuikf@yopmail.com', '$2y$10$7iKq.9kpHzD5vTW7pkYWFeg7x6KuDFf2ji/99d2QiPoOmKWA0tjo2', 1, '', '', '2021-09-01 17:15:41', '2021-09-01 17:15:41'),
(110, '', 'CUSTOMER', '64', 'cvzxv@test.com', '$2y$10$oDbzcMbSOWz2mNIdKOPsoeo0H1P2dXSlhZsqzDb.GrbqKFOsF6b72', 1, '', '', '2021-09-01 17:25:37', '2021-09-01 17:25:37'),
(111, '', 'CUSTOMER', '65', 'sdfafsd@test.com', '$2y$10$dznlNt7eLvep89NaUVo0Xunh7PwHqkd4Lj4AlNKNuJo2PPgs5e.OS', 1, '', '', '2021-09-01 17:27:01', '2021-09-01 17:27:01'),
(112, '', 'SALON', 'MSDSEP21/091526/M9Q3P', 'tushar@yopmail.com', '$2y$10$ydr24.vUCWGwBqvKDMjWhu7zQwC8JOZEiH2BHzTNEXl5eKe62PHaK', 1, '', '', '2021-09-09 15:29:59', '2021-09-09 15:29:59'),
(113, '', 'SALON', 'MSDSEP21/091534/M53UF', 'tushar11@yopmail.com', '$2y$10$V5W2e7r2eODE4Smd/JIGberahtZhMu1oQVNMNwIgWcHOmMhN4mPtG', 0, '', '', '2021-09-14 18:25:37', '2021-09-09 15:35:26'),
(116, '', 'SALON', 'MSDSEP21/131057/PL71X', 'tapeshwar.pandit@maisondauraine.in', '$2y$10$qlEwiztuYRYtIZSI0XhxHuiwTds15EIyncZvvzG76XwWgdzi8eQ8C', 1, '', '', '2021-09-13 10:58:13', '2021-09-13 10:58:13'),
(117, '', 'SALON', 'MSDSEP21/131108/LVT0V', 'dgsg@efafa.sasf', '$2y$10$YnId.F56RhH.diryuCadReitvHR9YEAcjPb9iuB3yKYyCeQF3vH3m', 1, '', '', '2021-09-14 17:28:04', '2021-09-13 11:10:46'),
(118, '', 'TECHNICAL', 'MSDT/14SEP202117/SBJ', 'kstylist@yopmail.com', '$2y$10$hxhfZexaVAJ4Hyy09aFL4Ok/BnqtV/EK.s1b3O1wNNBW9McMoqWki', 1, '', '', '2021-09-15 14:44:16', '2021-09-14 17:37:13'),
(119, '', 'SALON', 'MSDSEP21/151309/NHEIC', 'msalon@yopmail.com', '$2y$10$XeXRr3loCpembFv3hy.KDuJkYlmXvL8.2wb3AZPRczAQ/yQySry86', 1, '', '', '2021-09-15 13:16:48', '2021-09-15 13:12:56'),
(120, '', 'TECHNICAL', 'MSDT/15SEP202113/4VN', 'mkkkkkstylist@yopmail.com', '$2y$10$XeXRr3loCpembFv3hy.KDuJkYlmXvL8.2wb3AZPRczAQ/yQySry86', 1, '', '', '2021-09-15 14:44:04', '2021-09-15 14:42:38'),
(121, '', 'SALON', 'MSDSEP21/161446/QCTIY', 'ffsfsfsd@yopmail.com', '$2y$10$VBGoBn63LCWBDpVx8EKyC..82uBkluSF8rThIarF4pNI8omuyg1r.', 1, '', '', '2021-09-16 14:50:29', '2021-09-16 14:50:29'),
(122, '', 'TECHNICAL', 'MSDT/25NOV202111/7FN', 'aronfinch@yopmail.com', '$2y$10$cAwrSWLE0lU064.n.z10RuixRDyMPlS8zHDTrKQ6vA/XulamZeg22', 0, '', '', '2021-11-25 11:37:48', '2021-11-25 11:37:48'),
(123, '', 'TECHNICAL', 'MSDT/25NOV202111/0DE', 'johnhenry@yopmaill.com', '$2y$10$kxwi6SfhnQyB4BaLgRuxzuL75gNcpdgGl6igoJLmh3TWoxmym0euO', 0, '', '', '2021-11-25 11:47:17', '2021-11-25 11:47:17');

-- --------------------------------------------------------

--
-- Table structure for table `tax_detail`
--

CREATE TABLE `tax_detail` (
  `tax_id` int(11) NOT NULL,
  `tax_applied_on` varchar(50) NOT NULL,
  `tax_type` varchar(10) NOT NULL,
  `tax_percentage` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tax_detail`
--

INSERT INTO `tax_detail` (`tax_id`, `tax_applied_on`, `tax_type`, `tax_percentage`, `status`, `created_date`) VALUES
(1, 'product', 'CGST', '18', 1, '2021-08-17 16:24:35'),
(2, 'service', 'CGST', '18', 1, '2021-08-17 16:24:35'),
(3, 'product', 'IGST', '18', 1, '2021-08-17 16:24:35'),
(4, 'service', 'IGST', '18', 1, '2021-08-17 16:24:35');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_notifications`
--

CREATE TABLE `tbl_notifications` (
  `nid` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) NOT NULL,
  `salon_id` bigint(20) NOT NULL,
  `stylist_id` bigint(20) NOT NULL,
  `admin_sr_flag` int(1) NOT NULL COMMENT '0-recieved, 1-sent',
  `received_by` enum('admin','salon','stylist','customer','admin_salon','admin_stylist','admin_customer','all_three','salon_customer','stylist_customer','salon_stylist','corporate') NOT NULL DEFAULT 'admin',
  `sent_by` enum('admin','salon','stylist','customer','corporate') NOT NULL DEFAULT 'customer',
  `is_viewed_by_admin` tinyint(1) NOT NULL COMMENT '0-not viewed,1-viewed',
  `is_viewed_by_salon` tinyint(1) NOT NULL COMMENT '0-not viewed,1-viewed',
  `is_viewed_by_stylist` tinyint(1) NOT NULL COMMENT '0-not viewed,1-viewed',
  `is_viewed_by_customer` tinyint(1) NOT NULL COMMENT '0-not viewed,1-viewed',
  `is_viewed_by_corporate` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=> Not Viewed, 1=>viewed',
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `event_url_admin` text NOT NULL,
  `event_url_salon` text NOT NULL,
  `event_url_stylist` text NOT NULL,
  `event_url_customer` text NOT NULL,
  `event_url_corporate` text NOT NULL,
  `created_on` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_notifications`
--

INSERT INTO `tbl_notifications` (`nid`, `customer_id`, `salon_id`, `stylist_id`, `admin_sr_flag`, `received_by`, `sent_by`, `is_viewed_by_admin`, `is_viewed_by_salon`, `is_viewed_by_stylist`, `is_viewed_by_customer`, `is_viewed_by_corporate`, `subject`, `message`, `event_url_admin`, `event_url_salon`, `event_url_stylist`, `event_url_customer`, `event_url_corporate`, `created_on`) VALUES
(1, 2, 0, 0, 0, 'admin', 'customer', 1, 0, 0, 0, 0, 'IT Department is trying to pay and book the services.The page is redirecting to the payment gateway.', 'IT Department is trying to pay and book the services.The page is redirecting to the payment gateway.', 'booking_details.php?sbid=5780578262745560', '', '', '', '', '2021-03-16 18:19:58'),
(2, 2, 2, 3, 0, 'all_three', 'customer', 1, 0, 0, 0, 0, 'IT Department has been booked the services on 2021-03-17 at the slot between 12:31 pm-03:01 pm successfully.', 'IT Department has been booked the services successfully.According to your availability you can approve or reject', 'booking_details.php?sbid=8517299693608785', 'services_booking_details_salon.php?sbid=8517299693608785', 'services_booking_details_stylist.php?sbid=8517299693608785', '', '', '2021-03-16 18:24:42'),
(3, 2, 0, 0, 0, 'admin', 'customer', 1, 0, 0, 0, 0, 'IT Department is trying to pay and book the services.The page is redirecting to the payment gateway.', 'IT Department is trying to pay and book the services.The page is redirecting to the payment gateway.', 'booking_details.php?sbid=9763781660515933', '', '', '', '', '2021-03-16 18:31:02'),
(4, 5, 2, 3, 0, 'all_three', 'customer', 1, 0, 0, 0, 0, 'Customer One has been booked the services on 2021-03-25 at the slot between 11:01 am-12:01 pm successfully.', 'Customer One has been booked the services successfully.According to your availability you can approve or reject', 'booking_details.php?sbid=1069096717208876', 'services_booking_details_salon.php?sbid=1069096717208876', 'services_booking_details_stylist.php?sbid=1069096717208876', '', '', '2021-03-24 12:52:14'),
(5, 5, 0, 0, 0, 'admin', 'customer', 1, 0, 0, 0, 0, 'Customer One is trying to pay and book the services.The page is redirecting to the payment gateway.', 'Customer One is trying to pay and book the services.The page is redirecting to the payment gateway.', 'booking_details.php?sbid=3349836682833352', '', '', '', '', '2021-03-24 12:54:48'),
(6, 5, 4, 6, 0, 'all_three', 'customer', 1, 1, 1, 0, 0, 'Customer One has been booked the services on 2021-03-25 at the slot between 01:07 pm-01:37 pm successfully.', 'Customer One has been booked the services successfully.According to your availability you can approve or reject', 'booking_details.php?sbid=3865073613519560', 'services_booking_details_salon.php?sbid=3865073613519560', 'services_booking_details_stylist.php?sbid=3865073613519560', '', '', '2021-03-24 16:22:02'),
(7, 2, 2, 3, 0, 'all_three', 'customer', 1, 0, 0, 0, 0, 'IT Department has been booked the services on 2021-04-22 at the slot between 10:00 am-11:00 am successfully.', 'IT Department has been booked the services successfully.According to your availability you can approve or reject', 'booking_details.php?sbid=8264556564561623', 'services_booking_details_salon.php?sbid=8264556564561623', 'services_booking_details_stylist.php?sbid=8264556564561623', '', '', '2021-04-21 15:59:32'),
(8, 5, 1, 2, 0, 'all_three', 'customer', 1, 1, 1, 0, 0, 'customer one has been booked the services on 07-05-2021 at the slot between 01:56 pm-05:36 pm successfully.', 'customer one has been booked the services successfully.According to your availability you can approve or reject', 'booking_details.php?sbid=2079233401195674', 'services_booking_details_salon.php?sbid=2079233401195674', 'services_booking_details_stylist.php?sbid=2079233401195674', '', '', '2021-05-10 17:43:45'),
(9, 5, 1, 1, 0, 'all_three', 'customer', 1, 1, 0, 0, 0, 'customer one has been booked the services on 2021-05-18 at the slot between 10:15 am-10:55 am successfully.', 'customer one has been booked the services successfully.According to your availability you can approve or reject', 'booking_details.php?sbid=3587200145968703', 'services_booking_details_salon.php?sbid=3587200145968703', 'services_booking_details_stylist.php?sbid=3587200145968703', '', '', '2021-05-17 16:34:19'),
(10, 5, 1, 2, 0, 'all_three', 'customer', 1, 1, 1, 0, 0, 'customer one has been booked the services on 2021-05-21 at the slot between 10:15 am-11:15 am successfully.', 'customer one has been booked the services successfully.According to your availability you can approve or reject', 'booking_details.php?sbid=5747701197404008', 'services_booking_details_salon.php?sbid=5747701197404008', 'services_booking_details_stylist.php?sbid=5747701197404008', '', '', '2021-05-18 12:52:48'),
(11, 5, 5, 2, 0, 'all_three', 'customer', 1, 0, 1, 0, 0, 'customer one has been booked the services on 24-02-2021 at the slot between 10:50 am-01:30 pm successfully.', 'customer one has been booked the services successfully.According to your availability you can approve or reject', 'booking_details.php?sbid=7957064533468917', 'services_booking_details_salon.php?sbid=7957064533468917', 'services_booking_details_stylist.php?sbid=7957064533468917', '', '', '2021-05-24 18:02:41'),
(12, 5, 5, 2, 0, 'all_three', 'customer', 1, 0, 1, 0, 0, 'customer one has been booked the services on 24-02-2021 at the slot between 10:50 am-01:30 pm successfully.', 'customer one has been booked the services successfully.According to your availability you can approve or reject', 'booking_details.php?sbid=7784607480385411', 'services_booking_details_salon.php?sbid=7784607480385411', 'services_booking_details_stylist.php?sbid=7784607480385411', '', '', '2021-05-24 18:02:53'),
(13, 5, 5, 2, 0, 'all_three', 'customer', 1, 0, 1, 0, 0, 'customer one has been booked the services on 24-00-2021 at the slot between 01:31 pm-04:11 pm successfully.', 'customer one has been booked the services successfully.According to your availability you can approve or reject', 'booking_details.php?sbid=7420991037020237', 'services_booking_details_salon.php?sbid=7420991037020237', 'services_booking_details_stylist.php?sbid=7420991037020237', '', '', '2021-05-24 18:06:45'),
(14, 5, 5, 2, 0, 'all_three', 'customer', 1, 0, 1, 0, 0, 'customer one has been booked the services on 29-00-2021 at the slot between 10:50 am-11:35 am successfully.', 'customer one has been booked the services successfully.According to your availability you can approve or reject', 'booking_details.php?sbid=6319270887683722', 'services_booking_details_salon.php?sbid=6319270887683722', 'services_booking_details_stylist.php?sbid=6319270887683722', '', '', '2021-05-28 16:20:55'),
(15, 5, 5, 2, 0, 'all_three', 'customer', 1, 0, 1, 0, 0, 'customer one has been booked the services on 02-00-2021 at the slot between 10:50 am-11:35 am successfully.', 'customer one has been booked the services successfully.According to your availability you can approve or reject', 'booking_details.php?sbid=2512045122753661', 'services_booking_details_salon.php?sbid=2512045122753661', 'services_booking_details_stylist.php?sbid=2512045122753661', '', '', '2021-05-31 10:41:57'),
(16, 5, 5, 2, 0, 'all_three', 'customer', 1, 0, 1, 0, 0, 'customer one has been booked the services on 01-00-2021 at the slot between 10:50 am-11:35 am successfully.', 'customer one has been booked the services successfully.According to your availability you can approve or reject', 'booking_details.php?sbid=8351925429095609', 'services_booking_details_salon.php?sbid=8351925429095609', 'services_booking_details_stylist.php?sbid=8351925429095609', '', '', '2021-05-31 19:07:55'),
(17, 5, 5, 2, 0, 'all_three', 'customer', 1, 0, 1, 0, 0, 'customer one has been booked the services on 08-00-2021 at the slot between 10:50 am-11:35 am successfully.', 'customer one has been booked the services successfully.According to your availability you can approve or reject', 'booking_details.php?sbid=5601948272351294', 'services_booking_details_salon.php?sbid=5601948272351294', 'services_booking_details_stylist.php?sbid=5601948272351294', '', '', '2021-06-07 12:12:20'),
(18, 5, 1, 2, 0, 'all_three', 'customer', 1, 1, 1, 0, 0, 'customer one has been booked the services on 19-00-2021 at the slot between 10:15 am-11:00 am successfully.', 'customer one has been booked the services successfully.According to your availability you can approve or reject', 'booking_details.php?sbid=1906756676939939', 'services_booking_details_salon.php?sbid=1906756676939939', 'services_booking_details_stylist.php?sbid=1906756676939939', '', '', '2021-06-18 12:11:41'),
(19, 5, 1, 2, 0, 'all_three', 'customer', 1, 1, 1, 0, 0, 'customer one has been booked the services on 23-00-2021 at the slot between 10:15 am-11:00 am successfully.', 'customer one has been booked the services successfully.According to your availability you can approve or reject', 'booking_details.php?sbid=5944512738177524', 'services_booking_details_salon.php?sbid=5944512738177524', 'services_booking_details_stylist.php?sbid=5944512738177524', '', '', '2021-06-23 16:31:18'),
(20, 5, 1, 2, 0, 'all_three', 'customer', 1, 1, 1, 0, 0, 'customer one has been booked the services on 24-00-2021 at the slot between 10:15 am-11:00 am successfully.', 'customer one has been booked the services successfully.According to your availability you can approve or reject', 'booking_details.php?sbid=9687776335205945', 'services_booking_details_salon.php?sbid=9687776335205945', 'services_booking_details_stylist.php?sbid=9687776335205945', '', '', '2021-06-23 17:11:09'),
(21, 5, 1, 2, 0, 'all_three', 'customer', 1, 1, 1, 0, 0, 'customer one has been booked the services on 24-00-2021 at the slot between 10:15 am-11:00 am successfully.', 'customer one has been booked the services successfully.According to your availability you can approve or reject', 'booking_details.php?sbid=4392072864403656', 'services_booking_details_salon.php?sbid=4392072864403656', 'services_booking_details_stylist.php?sbid=4392072864403656', '', '', '2021-06-23 17:20:55'),
(22, 5, 1, 2, 0, 'all_three', 'customer', 1, 1, 1, 0, 0, 'customer one has been booked the services on 24-00-2021 at the slot between 10:15 am-11:00 am successfully.', 'customer one has been booked the services successfully.According to your availability you can approve or reject', 'booking_details.php?sbid=6434665796365946', 'services_booking_details_salon.php?sbid=6434665796365946', 'services_booking_details_stylist.php?sbid=6434665796365946', '', '', '2021-06-23 17:20:56'),
(23, 5, 1, 2, 0, 'all_three', 'customer', 1, 1, 1, 0, 0, 'customer one has been booked the services on 24-00-2021 at the slot between 10:15 am-11:00 am successfully.', 'customer one has been booked the services successfully.According to your availability you can approve or reject', 'booking_details.php?sbid=6715363095173132', 'services_booking_details_salon.php?sbid=6715363095173132', 'services_booking_details_stylist.php?sbid=6715363095173132', '', '', '2021-06-23 17:23:28'),
(24, 5, 1, 2, 0, 'all_three', 'customer', 1, 1, 1, 0, 0, 'customer one has been booked the services on 24-00-2021 at the slot between 10:15 am-11:00 am successfully.', 'customer one has been booked the services successfully.According to your availability you can approve or reject', 'booking_details.php?sbid=4437251751597454', 'services_booking_details_salon.php?sbid=4437251751597454', 'services_booking_details_stylist.php?sbid=4437251751597454', '', '', '2021-06-23 17:36:27'),
(25, 5, 1, 2, 0, 'all_three', 'customer', 1, 1, 1, 0, 0, 'customer one has been booked the services on 24-00-2021 at the slot between 10:15 am-11:00 am successfully.', 'customer one has been booked the services successfully.According to your availability you can approve or reject', 'booking_details.php?sbid=2057846591582734', 'services_booking_details_salon.php?sbid=2057846591582734', 'services_booking_details_stylist.php?sbid=2057846591582734', '', '', '2021-06-23 17:38:25'),
(26, 5, 1, 999999999999999999, 0, 'all_three', 'customer', 1, 1, 0, 0, 0, 'customer one has been booked the services on 2021-07-02 at the slot between 04:12 pm-05:02 pm successfully.', 'customer one has been booked the services successfully.According to your availability you can approve or reject', 'booking_details.php?sbid=7503636443985785', 'services_booking_details_salon.php?sbid=7503636443985785', 'services_booking_details_stylist.php?sbid=7503636443985785', '', '', '2021-07-02 16:40:51'),
(27, 5, 0, 0, 0, 'admin', 'customer', 1, 0, 0, 0, 0, 'customer one is trying to pay and book the services.The page is redirecting to the payment gateway.', 'customer one is trying to pay and book the services.The page is redirecting to the payment gateway.', 'booking_details.php?sbid=7407351555856028', '', '', '', '', '2021-07-02 16:46:17'),
(28, 5, 1, 2, 0, 'all_three', 'customer', 1, 1, 1, 0, 0, 'customer one has been booked the services on 07-05-2021 at the slot between 01:56 pm-05:36 pm successfully.', 'customer one has been booked the services successfully.According to your availability you can approve or reject', 'booking_details.php?sbid=5823290227503216', 'services_booking_details_salon.php?sbid=5823290227503216', 'services_booking_details_stylist.php?sbid=5823290227503216', '', '', '2021-07-14 15:04:56'),
(29, 15, 1, 2, 0, 'all_three', 'customer', 1, 1, 1, 0, 0, ' has been booked the services on 07-05-2021 at the slot between 01:56 pm-05:36 pm successfully.', ' has been booked the services successfully.According to your availability you can approve or reject', 'booking_details.php?sbid=3547177970583312', 'services_booking_details_salon.php?sbid=3547177970583312', 'services_booking_details_stylist.php?sbid=3547177970583312', '', '', '2021-07-14 15:05:47'),
(30, 15, 1, 2, 0, 'all_three', 'customer', 1, 1, 1, 0, 0, ' has been booked the services on 07-05-2021 at the slot between 01:56 pm-05:36 pm successfully.', ' has been booked the services successfully.According to your availability you can approve or reject', 'booking_details.php?sbid=5279263051006076', 'services_booking_details_salon.php?sbid=5279263051006076', 'services_booking_details_stylist.php?sbid=5279263051006076', '', '', '2021-07-14 15:06:23'),
(31, 15, 1, 2, 0, 'all_three', 'customer', 1, 1, 1, 0, 0, ' has been booked the services on 07-05-2021 at the slot between 01:56 pm-05:36 pm successfully.', ' has been booked the services successfully.According to your availability you can approve or reject', 'booking_details.php?sbid=4053454670483950', 'services_booking_details_salon.php?sbid=4053454670483950', 'services_booking_details_stylist.php?sbid=4053454670483950', '', '', '2021-07-14 15:07:40'),
(32, 15, 1, 2, 0, 'all_three', 'customer', 1, 1, 1, 0, 0, ' has been booked the services on 07-05-2021 at the slot between 01:56 pm-05:36 pm successfully.', ' has been booked the services successfully.According to your availability you can approve or reject', 'booking_details.php?sbid=5189258046131006', 'services_booking_details_salon.php?sbid=5189258046131006', 'services_booking_details_stylist.php?sbid=5189258046131006', '', '', '2021-07-14 15:07:58'),
(33, 15, 1, 2, 0, 'all_three', 'customer', 1, 1, 1, 0, 0, ' has been booked the services on 2021-07-05 at the slot between 01:56 pm-05:36 pm successfully.', ' has been booked the services successfully.According to your availability you can approve or reject', 'booking_details.php?sbid=9815452722403291', 'services_booking_details_salon.php?sbid=9815452722403291', 'services_booking_details_stylist.php?sbid=9815452722403291', '', '', '2021-07-14 15:09:11'),
(34, 5, 1, 2, 0, 'all_three', 'customer', 1, 1, 1, 0, 0, 'customer one has been booked the services on 2021-08-05 at the slot between 01:01 pm-01:46 pm successfully.', 'customer one has been booked the services successfully.According to your availability you can approve or reject', 'booking_details.php?sbid=3194260761120646', 'services_booking_details_salon.php?sbid=3194260761120646', 'services_booking_details_stylist.php?sbid=3194260761120646', '', '', '2021-08-04 15:36:15'),
(35, 5, 1, 1, 0, 'all_three', 'customer', 1, 1, 0, 0, 0, 'customer one has been booked the services on 2021-08-04 at the slot between 12:15 pm-01:00 pm successfully.', 'customer one has been booked the services successfully.According to your availability you can approve or reject', 'booking_details.php?sbid=7196032183400727', 'services_booking_details_salon.php?sbid=7196032183400727', 'services_booking_details_stylist.php?sbid=7196032183400727', '', '', '2021-08-04 15:50:26'),
(36, 5, 1, 2, 0, 'all_three', 'customer', 1, 1, 1, 0, 0, 'customer one has been booked the services on 2021-08-05 at the slot between 03:19 pm-04:04 pm successfully.', 'customer one has been booked the services successfully.According to your availability you can approve or reject', 'booking_details.php?sbid=3326922710838748', 'services_booking_details_salon.php?sbid=3326922710838748', 'services_booking_details_stylist.php?sbid=3326922710838748', '', '', '2021-08-04 15:53:02'),
(37, 5, 0, 2, 0, 'all_three', 'customer', 1, 0, 1, 0, 0, 'customer one has been booked the services on 2021-08-04 at the slot between 01:00 am-01:45 am successfully.', 'customer one has been booked the services successfully.According to your availability you can approve or reject', 'booking_details.php?sbid=8113420217136888', 'services_booking_details_salon.php?sbid=8113420217136888', 'services_booking_details_stylist.php?sbid=8113420217136888', '', '', '2021-08-04 16:25:42'),
(38, 8, 1, 3, 0, 'all_three', 'customer', 1, 1, 0, 0, 0, 'Ranjeet Kumar has been booked the services on 2021-08-15 at the slot between 01:01 pm-01:46 pm successfully.', 'Ranjeet Kumar has been booked the services successfully.According to your availability you can approve or reject', 'booking_details.php?sbid=8592197265947149', 'services_booking_details_salon.php?sbid=8592197265947149', 'services_booking_details_stylist.php?sbid=8592197265947149', '', '', '2021-08-06 14:47:55'),
(39, 5, 0, 2, 0, 'all_three', 'customer', 1, 0, 1, 0, 0, 'customer one has been booked the services on 2021-08-20 at the slot between 07:55 am-08:40 am successfully.', 'customer one has been booked the services successfully.According to your availability you can approve or reject', 'booking_details.php?sbid=5956702223411722', 'services_booking_details_salon.php?sbid=5956702223411722', 'services_booking_details_stylist.php?sbid=5956702223411722', '', '', '2021-08-06 15:10:40'),
(40, 5, 1, 0, 0, 'all_three', 'customer', 1, 1, 0, 0, 0, 'customer one has been booked the services on 2021-08-26 at the slot between 01:47 pm-02:32 pm successfully.', 'customer one has been booked the services successfully.According to your availability you can approve or reject', 'booking_details.php?sbid=4248712748269803', 'services_booking_details_salon.php?sbid=4248712748269803', 'services_booking_details_stylist.php?sbid=4248712748269803', '', '', '2021-08-06 17:45:39'),
(41, 5, 1, 1, 0, 'all_three', 'customer', 1, 1, 0, 0, 0, 'customer one has been booked the services on 2021-08-13 at the slot between 12:16 pm-01:01 pm successfully.', 'customer one has been booked the services successfully.According to your availability you can approve or reject', 'booking_details.php?sbid=7560447244490905', 'services_booking_details_salon.php?sbid=7560447244490905', 'services_booking_details_stylist.php?sbid=7560447244490905', '', '', '2021-08-10 15:22:20'),
(42, 5, 1, 6, 0, 'all_three', 'customer', 1, 1, 0, 0, 0, 'customer one has been booked the services on 2021-08-20 at the slot between 04:06 pm-04:51 pm successfully.', 'customer one has been booked the services successfully.According to your availability you can approve or reject', 'booking_details.php?sbid=2832064744611468', 'services_booking_details_salon.php?sbid=2832064744611468', 'services_booking_details_stylist.php?sbid=2832064744611468', '', '', '2021-08-10 15:28:18'),
(43, 5, 0, 2, 0, 'all_three', 'customer', 1, 0, 1, 0, 0, 'customer one has been booked the services on 2021-08-21 at the slot between 12:15 am-01:00 am successfully.', 'customer one has been booked the services successfully.According to your availability you can approve or reject', 'booking_details.php?sbid=4804130441413862', 'services_booking_details_salon.php?sbid=4804130441413862', 'services_booking_details_stylist.php?sbid=4804130441413862', '', '', '2021-08-11 16:38:21'),
(44, 5, 1, 2, 0, 'all_three', 'customer', 1, 1, 1, 0, 0, 'customer one has been booked the services on 2021-08-15 at the slot between 03:19 pm-04:04 pm successfully.', 'customer one has been booked the services successfully.According to your availability you can approve or reject', 'booking_details.php?sbid=3402108905835164', 'services_booking_details_salon.php?sbid=3402108905835164', 'services_booking_details_stylist.php?sbid=3402108905835164', '', '', '2021-08-13 11:45:10'),
(45, 5, 1, 0, 0, 'admin_customer', 'salon', 1, 0, 0, 1, 0, 'Geetanjali Studio salon has accepted the services booked by customer one. Accepted booking id is <b>2832064744611468</b>', 'Geetanjali Studio salon has accepted the services booked by customer one. Accepted booking id is <b>2832064744611468</b>', 'booking_details.php?sbid=2832064744611468', '', '', 'services_booking_details_customer.php?sbid=2832064744611468', '', '2021-08-13 11:49:10'),
(46, 5, 1, 0, 0, 'admin_customer', 'salon', 1, 0, 0, 1, 0, 'Geetanjali Studio salon has completed the services booked by customer one. Completed booking id is <b>2832064744611468</b>', 'Geetanjali Studio salon has completed the services booked by customer one. Completed booking id is <b>2832064744611468</b>', 'booking_details.php?sbid=2832064744611468', '', '', 'services_booking_details_customer.php?sbid=2832064744611468', '', '2021-08-13 11:49:51'),
(47, 15, 0, 2, 0, 'all_three', 'customer', 1, 0, 1, 0, 0, 'Ranjeet has been booked the services on 2021-08-19 at the slot between 03:19 am-04:04 am successfully.', 'Ranjeet has been booked the services successfully.According to your availability you can approve or reject', 'booking_details.php?sbid=7154670817176091', 'services_booking_details_salon.php?sbid=7154670817176091', 'services_booking_details_stylist.php?sbid=7154670817176091', '', '', '2021-08-14 15:23:56'),
(48, 5, 1, 6, 0, 'all_three', 'customer', 1, 1, 0, 0, 0, 'customer one has been booked the services on 2021-08-19 at the slot between 05:37 pm-06:22 pm successfully.', 'customer one has been booked the services successfully.According to your availability you can approve or reject', 'booking_details.php?sbid=9622391078685650', 'services_booking_details_salon.php?sbid=9622391078685650', 'services_booking_details_stylist.php?sbid=9622391078685650', '', '', '2021-08-18 12:59:56'),
(49, 17, 1, 0, 0, 'all_three', 'customer', 1, 1, 0, 0, 0, 'sdfafsf has been booked the services on 2021-08-26 at the slot between 03:19 pm-04:04 pm successfully.', 'sdfafsf has been booked the services successfully.According to your availability you can approve or reject', 'booking_details.php?sbid=9943591613735370', 'services_booking_details_salon.php?sbid=9943591613735370', 'services_booking_details_stylist.php?sbid=9943591613735370', '', '', '2021-08-26 10:06:13'),
(50, 27, 1, 3, 0, 'all_three', 'customer', 1, 1, 0, 0, 0, 'fsa sdf saf  has been booked the services on 2021-08-31 at the slot between 05:37 pm-06:22 pm successfully.', 'fsa sdf saf  has been booked the services successfully.According to your availability you can approve or reject', 'booking_details.php?sbid=7664714106772919', 'services_booking_details_salon.php?sbid=7664714106772919', 'services_booking_details_stylist.php?sbid=7664714106772919', '', '', '2021-08-26 12:16:53'),
(51, 28, 1, 2, 0, 'all_three', 'customer', 1, 1, 0, 0, 0, 'tim pane has been booked the services on 2021-08-30 at the slot between 12:15 pm-01:00 pm successfully.', 'tim pane has been booked the services successfully.According to your availability you can approve or reject', 'booking_details.php?sbid=6206303406920346', 'services_booking_details_salon.php?sbid=6206303406920346', 'services_booking_details_stylist.php?sbid=6206303406920346', '', '', '2021-08-26 13:30:38'),
(52, 29, 1, 2, 0, 'all_three', 'customer', 1, 1, 0, 0, 0, 'ggggg ggg has been booked the services on 2021-08-26 at the slot between 01:01 pm-01:46 pm successfully.', 'ggggg ggg has been booked the services successfully.According to your availability you can approve or reject', 'booking_details.php?sbid=5305488740341161', 'services_booking_details_salon.php?sbid=5305488740341161', 'services_booking_details_stylist.php?sbid=5305488740341161', '', '', '2021-08-26 14:42:52'),
(53, 30, 1, 2, 0, 'all_three', 'customer', 1, 1, 0, 0, 0, 'fas as fafa has been booked the services on 2021-08-30 at the slot between 04:51 pm-05:36 pm successfully.', 'fas as fafa has been booked the services successfully.According to your availability you can approve or reject', 'booking_details.php?sbid=3732109279940340', 'services_booking_details_salon.php?sbid=3732109279940340', 'services_booking_details_stylist.php?sbid=3732109279940340', '', '', '2021-08-26 14:48:51'),
(54, 31, 1, 1, 0, 'all_three', 'customer', 1, 1, 0, 0, 0, 'martin sam has been booked the services on 2021-08-26 at the slot between 03:19 pm-04:04 pm successfully.', 'martin sam has been booked the services successfully.According to your availability you can approve or reject', 'booking_details.php?sbid=1538868197419199', 'services_booking_details_salon.php?sbid=1538868197419199', 'services_booking_details_stylist.php?sbid=1538868197419199', '', '', '2021-08-26 14:52:16'),
(55, 31, 1, 3, 0, 'all_three', 'customer', 1, 1, 0, 0, 0, 'martin sam has been booked the services on 2021-08-26 at the slot between 12:15 pm-01:00 pm successfully.', 'martin sam has been booked the services successfully.According to your availability you can approve or reject', 'booking_details.php?sbid=5204655062650352', 'services_booking_details_salon.php?sbid=5204655062650352', 'services_booking_details_stylist.php?sbid=5204655062650352', '', '', '2021-08-26 14:57:48'),
(56, 31, 1, 5, 0, 'all_three', 'customer', 1, 1, 0, 0, 0, 'martin sam has been booked the services on 2021-08-26 at the slot between 04:05 pm-04:50 pm successfully.', 'martin sam has been booked the services successfully.According to your availability you can approve or reject', 'booking_details.php?sbid=8179212835740481', 'services_booking_details_salon.php?sbid=8179212835740481', 'services_booking_details_stylist.php?sbid=8179212835740481', '', '', '2021-08-26 15:05:41'),
(57, 28, 1, 0, 0, 'all_three', 'customer', 1, 1, 0, 0, 0, 'tim pane has been booked the services on 2021-08-31 at the slot between 03:19 pm-04:04 pm successfully.', 'tim pane has been booked the services successfully.According to your availability you can approve or reject', 'booking_details.php?sbid=2503443289358903', 'services_booking_details_salon.php?sbid=2503443289358903', 'services_booking_details_stylist.php?sbid=2503443289358903', '', '', '2021-08-27 12:17:28'),
(58, 5, 1, 0, 0, 'all_three', 'customer', 1, 1, 0, 0, 0, 'customer one has been booked the services on 2021-08-31 at the slot between 12:15 pm-01:00 pm successfully.', 'customer one has been booked the services successfully.According to your availability you can approve or reject', 'booking_details.php?sbid=9158916433683198', 'services_booking_details_salon.php?sbid=9158916433683198', 'services_booking_details_stylist.php?sbid=9158916433683198', '', '', '2021-08-31 16:11:14'),
(59, 5, 1, 2, 0, 'all_three', 'customer', 1, 1, 0, 0, 0, 'customer one has been booked the services on 2021-09-14 at the slot between 02:33 pm-03:18 pm successfully.', 'customer one has been booked the services successfully.According to your availability you can approve or reject', 'booking_details.php?sbid=2249267506464814', 'services_booking_details_salon.php?sbid=2249267506464814', 'services_booking_details_stylist.php?sbid=2249267506464814', '', '', '2021-09-01 12:09:09'),
(60, 55, 1, 0, 0, 'all_three', 'customer', 1, 1, 0, 0, 0, 'skfjakfjkf fa dsaf has been booked the services on 2021-09-10 at the slot between 01:02 pm-01:47 pm successfully.', 'skfjakfjkf fa dsaf has been booked the services successfully.According to your availability you can approve or reject', 'booking_details.php?sbid=3049390718557083', 'services_booking_details_salon.php?sbid=3049390718557083', 'services_booking_details_stylist.php?sbid=3049390718557083', '', '', '2021-09-01 12:20:54'),
(61, 5, 1, 1, 0, 'all_three', 'customer', 1, 1, 0, 0, 0, 'customer one has been booked the services on 2021-09-22 at the slot between 07:09 pm-07:54 pm successfully.', 'customer one has been booked the services successfully.According to your availability you can approve or reject', 'booking_details.php?sbid=5336154196565632', 'services_booking_details_salon.php?sbid=5336154196565632', 'services_booking_details_stylist.php?sbid=5336154196565632', '', '', '2021-09-01 15:01:25'),
(62, 5, 1, 2, 0, 'all_three', 'customer', 1, 1, 0, 0, 0, 'customer one has been booked the services on 2021-09-14 at the slot between 04:51 pm-05:36 pm successfully.', 'customer one has been booked the services successfully.According to your availability you can approve or reject', 'booking_details.php?sbid=9219091676983992', 'services_booking_details_salon.php?sbid=9219091676983992', 'services_booking_details_stylist.php?sbid=9219091676983992', '', '', '2021-09-01 15:02:47'),
(63, 57, 1, 3, 0, 'all_three', 'customer', 1, 1, 0, 0, 0, 'fdsa fas asf as has been booked the services on 2021-09-15 at the slot between 02:33 pm-03:18 pm successfully.', 'fdsa fas asf as has been booked the services successfully.According to your availability you can approve or reject', 'booking_details.php?sbid=4785394595748990', 'services_booking_details_salon.php?sbid=4785394595748990', 'services_booking_details_stylist.php?sbid=4785394595748990', '', '', '2021-09-01 15:04:56'),
(64, 58, 1, 3, 0, 'all_three', 'customer', 1, 1, 0, 0, 0, 'dsfgsa a fsf has been booked the services on 2021-09-20 at the slot between 01:01 pm-01:46 pm successfully.', 'dsfgsa a fsf has been booked the services successfully.According to your availability you can approve or reject', 'booking_details.php?sbid=6597141473191075', 'services_booking_details_salon.php?sbid=6597141473191075', 'services_booking_details_stylist.php?sbid=6597141473191075', '', '', '2021-09-01 15:06:59'),
(65, 58, 1, 1, 0, 'all_three', 'customer', 1, 1, 0, 0, 0, 'dsfgsa a fsf has been booked the services on 2021-09-22 at the slot between 04:51 pm-05:36 pm successfully.', 'dsfgsa a fsf has been booked the services successfully.According to your availability you can approve or reject', 'booking_details.php?sbid=3351918741932693', 'services_booking_details_salon.php?sbid=3351918741932693', 'services_booking_details_stylist.php?sbid=3351918741932693', '', '', '2021-09-01 15:08:32'),
(66, 58, 1, 2, 0, 'all_three', 'customer', 1, 1, 0, 0, 0, 'dsfgsa a fsf has been booked the services on 2021-09-16 at the slot between 04:05 pm-04:50 pm successfully.', 'dsfgsa a fsf has been booked the services successfully.According to your availability you can approve or reject', 'booking_details.php?sbid=2930419981723154', 'services_booking_details_salon.php?sbid=2930419981723154', 'services_booking_details_stylist.php?sbid=2930419981723154', '', '', '2021-09-01 15:09:33');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `transaction_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_txn_id` varchar(255) NOT NULL,
  `txn_amt` decimal(10,2) NOT NULL,
  `txn_method` varchar(80) NOT NULL,
  `txn_card_type` varchar(80) NOT NULL,
  `txn_message` text NOT NULL,
  `txn_failure_msg` varchar(255) NOT NULL,
  `txn_failure_type` varchar(120) NOT NULL,
  `txn_currency` varchar(60) NOT NULL,
  `txn_srtatus` varchar(80) NOT NULL,
  `txn_on` varchar(40) NOT NULL,
  `txn_created` varchar(40) NOT NULL,
  `txn_updated` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `trending`
--

CREATE TABLE `trending` (
  `tr_id` int(11) NOT NULL,
  `type_name` varchar(50) NOT NULL,
  `type_id` int(15) NOT NULL,
  `date_from` date NOT NULL,
  `date_to` date NOT NULL,
  `status` int(1) NOT NULL,
  `sort_order` int(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trending`
--

INSERT INTO `trending` (`tr_id`, `type_name`, `type_id`, `date_from`, `date_to`, `status`, `sort_order`, `created_by`, `created_date`, `updated_date`) VALUES
(1, 'SALON', 22, '2021-08-01', '2021-08-31', 1, 1, 1, '2021-08-11 12:51:44', '2021-08-11 12:51:44'),
(2, 'PACKAGE', 2, '2021-08-05', '2021-08-25', 1, 2, 1, '2021-08-11 12:52:19', '2021-08-11 12:52:19'),
(3, 'SERVICE', 10, '2021-08-10', '2021-08-20', 1, 3, 1, '2021-08-11 12:52:35', '2021-08-11 12:52:35'),
(4, 'PRODUCT', 4, '2021-08-01', '2021-09-30', 1, 4, 1, '2021-08-11 12:52:54', '2021-08-11 12:52:54'),
(5, 'SERVICE', 13, '2021-08-02', '2021-08-25', 1, 2, 1, '2021-08-11 17:31:08', '2021-08-11 17:31:08'),
(6, 'SERVICE', 19, '0000-00-00', '0000-00-00', 1, 3, 1, '2021-08-11 17:54:16', '2021-08-11 17:54:16'),
(7, 'SERVICE', 29, '2021-08-09', '2021-08-26', 1, 4, 1, '2021-08-11 17:54:33', '2021-08-11 17:54:33'),
(8, 'SERVICE', 1, '2021-08-02', '2021-08-28', 1, 5, 1, '2021-08-11 17:54:43', '2021-08-11 17:54:43'),
(9, 'SALON', 1, '2021-08-02', '2021-08-27', 1, 1, 1, '2021-08-11 18:19:55', '2021-08-11 18:19:55'),
(10, 'SALON', 2, '2021-08-02', '2021-08-25', 1, 2, 1, '2021-08-11 18:20:06', '2021-08-11 18:20:06'),
(12, 'SALON', 5, '2021-08-17', '2021-08-12', 1, 1, 1, '2021-08-11 18:24:45', '2021-08-11 18:24:45'),
(13, 'SALON', 4, '2021-08-17', '0000-00-00', 1, 1, 1, '2021-08-11 18:25:57', '2021-08-11 18:25:57');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempt` int(11) NOT NULL DEFAULT 0,
  `active` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `mobile`, `attempt`, `active`, `remember_token`) VALUES
(1, 'adminds', 'adminsdsf', 'testing@yopmail.com', '7812012451', 0, '1', ''),
(2, 'adminui', '$2y$10$srYs28lCv4HsXORue4GeHed6PgPLu99ZdZ7DC26slAWovYaArSx2C', 'sdfsa@safs.sdfa', '', 0, '1', ''),
(3, 'admin', '$2y$10$63PppO3GttsyDLonI0EIvu0YQ6krqmIAAZlTPZ4TYL.V8oV/utrEi', 'sdfsa@safs.sdfa', '', 0, '1', 'nzFpOs7s7GI3a9TjJrIIEbysnZxLX8VsPdtzebP9ZGKpdmGe1M9MLtM7ZflR'),
(4, 'test', '$2y$10$xu/kJDUq3mDg4EyXSCeeHewQCN1tawkO83/noOsUFIDL23ewmDn4a', 'test@yopmail.com', '', 0, '1', ''),
(5, 'adas', '$2y$10$xnh7FqgrB/D.Q21UJvz4YeaazhcYC73oNyH.Wgnq1rmMpBlqSShOu', 'sdfsad@sfsfa.sdfa', '', 0, '1', ''),
(6, 'test', '$2y$10$0PU8Byrz8V6PTH6MQd/KhOAdNEnggt3ODwokcvcjYXnZw9y9eQGvK', 'test@test.com', '', 0, '1', '');

-- --------------------------------------------------------

--
-- Table structure for table `variant`
--

CREATE TABLE `variant` (
  `variant_id` int(11) NOT NULL,
  `variant_name` varchar(255) NOT NULL,
  `variant_status` tinyint(1) NOT NULL,
  `updated_on` datetime NOT NULL,
  `created_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `variant`
--

INSERT INTO `variant` (`variant_id`, `variant_name`, `variant_status`, `updated_on`, `created_on`) VALUES
(1, '250 ml', 1, '2020-12-03 16:49:15', '2020-12-03 16:49:15'),
(2, '300 ml', 1, '2020-12-03 16:49:46', '2020-12-03 16:49:46'),
(3, '200 ml', 1, '2020-12-03 16:50:04', '2020-12-03 16:50:04'),
(4, '240 ml', 1, '2020-12-03 16:50:26', '2020-12-03 16:50:26'),
(5, '200 g', 1, '2020-12-03 16:50:42', '2020-12-03 16:50:42'),
(6, '1000 ml', 1, '2020-12-03 16:51:16', '2020-12-03 16:51:16'),
(7, '100 ml', 1, '2021-06-30 12:11:24', '2021-06-30 12:11:24');

-- --------------------------------------------------------

--
-- Table structure for table `visit`
--

CREATE TABLE `visit` (
  `visit_id` int(11) NOT NULL,
  `visit_type` varchar(100) NOT NULL,
  `visit_price` decimal(10,2) NOT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `visit`
--

INSERT INTO `visit` (`visit_id`, `visit_type`, `visit_price`, `status`) VALUES
(1, 'Studio Visit', '1000.00', '1'),
(2, 'Home Visit', '2000.00', '1'),
(3, 'Destination Visit', '3000.00', '1');

-- --------------------------------------------------------

--
-- Table structure for table `working_days_hours`
--

CREATE TABLE `working_days_hours` (
  `working_id` int(11) NOT NULL,
  `created_for` varchar(50) DEFAULT NULL,
  `working_day` varchar(25) DEFAULT NULL,
  `start_time` varchar(10) DEFAULT NULL,
  `end_time` varchar(10) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `working_days_hours`
--

INSERT INTO `working_days_hours` (`working_id`, `created_for`, `working_day`, `start_time`, `end_time`, `code`, `created_date`, `updated_date`) VALUES
(1, 'SALON', 'Monday', '02:00', '01:00', 'MSDJUN21/191459/7JR9Q', '2021-06-19 15:00:36', '2021-06-24 18:20:27'),
(2, 'SALON', 'Tuesday', '03:00', '01:00', 'MSDJUN21/191459/7JR9Q', '2021-06-19 15:00:36', '2021-06-24 18:20:27'),
(3, 'SALON', 'Wednesday', '04:00', '01:00', 'MSDJUN21/191459/7JR9Q', '2021-06-19 15:00:36', '2021-06-24 18:20:27'),
(4, 'SALON', 'Thursday', '10:00', '01:00', 'MSDJUN21/191459/7JR9Q', '2021-06-19 15:00:36', '2021-06-24 18:20:27'),
(5, 'SALON', 'Friday', '00:00', '00:00', 'MSDJUN21/191459/7JR9Q', '2021-06-19 15:00:36', '2021-06-24 18:16:44'),
(6, 'SALON', 'Saturday', '00:00', '00:00', 'MSDJUN21/191459/7JR9Q', '2021-06-19 15:00:36', '2021-06-24 18:14:48'),
(7, 'SALON', 'Sunday', '00:00', '00:00', 'MSDJUN21/191459/7JR9Q', '2021-06-19 15:00:36', '2021-06-24 18:14:48'),
(8, 'STYLIST', 'Monday', '00:15', '14:45', 'MSDT/04DEC202012/M0K', '2021-06-19 15:24:00', '2021-06-19 15:24:00'),
(9, 'STYLIST', 'Tuesday', '00:15', '07:30', 'MSDT/04DEC202012/M0K', '2021-06-19 15:24:00', '2021-06-19 15:24:00'),
(10, 'STYLIST', 'Wednesday', '01:00', '08:30', 'MSDT/04DEC202012/M0K', '2021-06-19 15:24:00', '2021-06-19 15:24:00'),
(11, 'STYLIST', 'Thursday', '00:15', '12:20', 'MSDT/04DEC202012/M0K', '2021-06-19 15:24:00', '2021-06-19 15:24:00'),
(12, 'STYLIST', 'Friday', '00:15', '12:20', 'MSDT/04DEC202012/M0K', '2021-06-19 15:24:00', '2021-06-19 15:24:00'),
(13, 'STYLIST', 'Saturday', '00:15', '12:20', 'MSDT/04DEC202012/M0K', '2021-06-19 15:24:00', '2021-06-19 15:24:00'),
(14, 'STYLIST', 'Sunday', '00:15', '12:20', 'MSDT/04DEC202012/M0K', '2021-06-19 15:24:00', '2021-06-19 15:24:00'),
(29, 'SALON', 'Monday', '12:20', '12:20', 'MSDJUN21/142250/IO3GA', '2021-06-25 12:20:50', '2021-06-25 12:20:50'),
(30, 'SALON', 'Tuesday', '00:15', '12:20', 'MSDJUN21/142250/IO3GA', '2021-06-25 12:20:50', '2021-06-25 12:20:50'),
(31, 'SALON', 'Wednesday', '00:15', '12:20', 'MSDJUN21/142250/IO3GA', '2021-06-25 12:20:50', '2021-06-25 12:20:50'),
(32, 'SALON', 'Thursday', '00:15', '12:20', 'MSDJUN21/142250/IO3GA', '2021-06-25 12:20:50', '2021-06-25 12:20:50'),
(33, 'SALON', 'Friday', '00:15', '12:20', 'MSDJUN21/142250/IO3GA', '2021-06-25 12:20:50', '2021-06-25 12:20:50'),
(34, 'SALON', 'Saturday', '00:15', '12:20', 'MSDJUN21/142250/IO3GA', '2021-06-25 12:20:50', '2021-06-25 12:20:50'),
(35, 'SALON', 'Sunday', '00:15', '12:20', 'MSDJUN21/142250/IO3GA', '2021-06-25 12:20:50', '2021-06-25 12:20:50'),
(36, 'SALON', 'Monday', '13:21', '13:21', 'MSDJUN21/250058/BAWNV', '2021-06-25 13:21:51', '2021-06-25 13:21:51'),
(37, 'SALON', 'Tuesday', '13:21', '13:21', 'MSDJUN21/250058/BAWNV', '2021-06-25 13:21:51', '2021-06-25 13:21:51'),
(38, 'SALON', 'Wednesday', '13:21', '13:21', 'MSDJUN21/250058/BAWNV', '2021-06-25 13:21:51', '2021-06-25 13:21:51'),
(39, 'SALON', 'Thursday', '13:21', '13:21', 'MSDJUN21/250058/BAWNV', '2021-06-25 13:21:51', '2021-06-25 13:21:51'),
(40, 'SALON', 'Friday', '13:21', '13:21', 'MSDJUN21/250058/BAWNV', '2021-06-25 13:21:51', '2021-06-25 13:21:51'),
(41, 'SALON', 'Saturday', '', '', 'MSDJUN21/250058/BAWNV', '2021-06-25 13:21:51', '2021-06-25 13:21:51'),
(42, 'SALON', 'Sunday', '', '', 'MSDJUN21/250058/BAWNV', '2021-06-25 13:21:51', '2021-06-25 13:21:51'),
(43, 'STYLIST', 'Monday', '17:28', '01:00', 'MSDT/25JUN202116/DYU', '2021-06-25 16:22:57', '2021-06-25 17:28:57'),
(44, 'STYLIST', 'Tuesday', '01:15', '04:30', 'MSDT/25JUN202116/DYU', '2021-06-25 16:22:57', '2021-06-25 17:28:57'),
(45, 'STYLIST', 'Wednesday', '02:15', '02:45', 'MSDT/25JUN202116/DYU', '2021-06-25 16:22:57', '2021-06-25 17:28:57'),
(46, 'STYLIST', 'Thuresday', '', '', 'MSDT/25JUN202116/DYU', '2021-06-25 16:22:57', '2021-06-25 16:22:57'),
(47, 'STYLIST', 'Friday', '', '', 'MSDT/25JUN202116/DYU', '2021-06-25 16:22:57', '2021-06-25 16:22:57'),
(48, 'STYLIST', 'Saturday', '', '', 'MSDT/25JUN202116/DYU', '2021-06-25 16:22:57', '2021-06-25 16:22:57'),
(49, 'STYLIST', 'Sunday', '', '', 'MSDT/25JUN202116/DYU', '2021-06-25 16:22:57', '2021-06-25 16:22:57'),
(50, 'SALON', 'Monday', '17:02', '17:02', 'MSDT/04DEC202016/5QE', '2021-06-25 17:02:06', '2021-06-25 17:23:30'),
(51, 'SALON', 'Tuesday', '17:02', '17:02', 'MSDT/04DEC202016/5QE', '2021-06-25 17:02:06', '2021-06-25 17:22:56'),
(52, 'SALON', 'Wednesday', '', '', 'MSDT/04DEC202016/5QE', '2021-06-25 17:02:06', '2021-06-25 17:23:30'),
(53, 'SALON', 'Thuresday', '17:20', '17:20', 'MSDT/04DEC202016/5QE', '2021-06-25 17:02:06', '2021-06-25 17:23:30'),
(54, 'SALON', 'Friday', '17:21', '17:21', 'MSDT/04DEC202016/5QE', '2021-06-25 17:02:06', '2021-06-25 17:23:30'),
(55, 'SALON', 'Saturday', '17:22', '17:22', 'MSDT/04DEC202016/5QE', '2021-06-25 17:02:06', '2021-06-25 17:23:30'),
(56, 'SALON', 'Sunday', '17:22', '17:22', 'MSDT/04DEC202016/5QE', '2021-06-25 17:02:06', '2021-06-25 17:23:30'),
(57, 'STYLIST', 'Monday', '01:45', '00:30', 'MSDT/28JUN202118/IGA', '2021-06-28 18:21:02', '2021-06-28 18:21:02'),
(58, 'STYLIST', 'Tuesday', '00:45', '00:45', 'MSDT/28JUN202118/IGA', '2021-06-28 18:21:02', '2021-06-28 18:21:02'),
(59, 'STYLIST', 'Wednesday', '00:45', '00:45', 'MSDT/28JUN202118/IGA', '2021-06-28 18:21:02', '2021-06-28 18:21:02'),
(60, 'STYLIST', 'Thuresday', '', '', 'MSDT/28JUN202118/IGA', '2021-06-28 18:21:02', '2021-06-28 18:21:02'),
(61, 'STYLIST', 'Friday', '', '', 'MSDT/28JUN202118/IGA', '2021-06-28 18:21:02', '2021-06-28 18:21:02'),
(62, 'STYLIST', 'Saturday', '', '', 'MSDT/28JUN202118/IGA', '2021-06-28 18:21:02', '2021-06-28 18:21:02'),
(63, 'STYLIST', 'Sunday', '', '', 'MSDT/28JUN202118/IGA', '2021-06-28 18:21:02', '2021-06-28 18:21:02'),
(64, 'SALON', 'Monday', '18:22', '16:22', 'MSDT/24MAR202115/NPU', '2021-06-28 18:22:35', '2021-06-28 18:22:35'),
(65, 'SALON', 'Tuesday', '18:22', '18:22', 'MSDT/24MAR202115/NPU', '2021-06-28 18:22:35', '2021-06-28 18:22:35'),
(66, 'SALON', 'Wednesday', '12:22', '18:22', 'MSDT/24MAR202115/NPU', '2021-06-28 18:22:35', '2021-06-28 18:22:35'),
(67, 'SALON', 'Thuresday', '18:22', '22:22', 'MSDT/24MAR202115/NPU', '2021-06-28 18:22:35', '2021-06-28 18:22:35'),
(71, 'SALON', 'Monday', '10:15', '20:15', 'MSDDEC20/041053/XYRFR', '2021-07-26 12:18:59', '2021-09-15 18:11:10'),
(72, 'SALON', 'Tuesday', '09:15', '20:15', 'MSDDEC20/041053/XYRFR', '2021-07-26 12:18:59', '2021-09-15 18:11:10'),
(73, 'SALON', 'Wednesday', '09:15', '20:16', 'MSDDEC20/041053/XYRFR', '2021-07-26 12:18:59', '2021-09-15 18:11:10'),
(74, 'SALON', 'Thursday', '09:15', '20:16', 'MSDDEC20/041053/XYRFR', '2021-07-26 12:18:59', '2021-09-15 18:11:10'),
(75, 'SALON', 'Friday', '09:16', '20:16', 'MSDDEC20/041053/XYRFR', '2021-07-26 12:18:59', '2021-09-15 18:11:10'),
(76, 'SALON', 'Saturday', '09:15', '20:15', 'MSDDEC20/041053/XYRFR', '2021-07-26 12:18:59', '2021-09-15 18:11:10'),
(77, 'SALON', 'Sunday', '09:15', '20:15', 'MSDDEC20/041053/XYRFR', '2021-07-26 12:18:59', '2021-09-15 18:11:10'),
(78, 'STYLIST', 'Monday', '12:00', '06:30', 'MSDT/14AUG202110/L2R', '2021-08-14 10:47:09', '2021-08-14 11:34:28'),
(79, 'STYLIST', 'Tuesday', '12:00', '06:00', 'MSDT/14AUG202110/L2R', '2021-08-14 10:47:09', '2021-08-14 11:34:28'),
(80, 'STYLIST', 'Wednesday', '12:00', '06:00', 'MSDT/14AUG202110/L2R', '2021-08-14 10:47:09', '2021-08-14 11:34:28'),
(81, 'STYLIST', 'Thursday', '12:00', '06:00', 'MSDT/14AUG202110/L2R', '2021-08-14 10:47:09', '2021-08-14 11:34:28'),
(82, 'STYLIST', 'Friday', '12:00', '06:00', 'MSDT/14AUG202110/L2R', '2021-08-14 10:47:09', '2021-08-14 11:34:28'),
(83, 'STYLIST', 'Saturday', '11:32', '00:32', 'MSDT/14AUG202110/L2R', '2021-08-14 10:47:09', '2021-08-14 11:34:28'),
(84, 'STYLIST', 'Sunday', '', '', 'MSDT/14AUG202110/L2R', '2021-08-14 10:47:09', '2021-08-14 10:47:09'),
(85, 'SALON', 'Monday', '12:36', '12:36', 'MSDMAR21/221548/PAECK', '2021-08-14 12:38:22', '2021-08-14 12:39:12'),
(86, 'SALON', 'Tuesday', '12:36', '22:36', 'MSDMAR21/221548/PAECK', '2021-08-14 12:38:22', '2021-08-14 12:39:12'),
(87, 'SALON', 'Wednesday', '12:00', '22:37', 'MSDMAR21/221548/PAECK', '2021-08-14 12:38:22', '2021-08-14 12:39:12'),
(88, 'SALON', 'Thursday', '', '', 'MSDMAR21/221548/PAECK', '2021-08-14 12:38:22', '2021-08-14 12:38:22'),
(89, 'SALON', 'Friday', '', '', 'MSDMAR21/221548/PAECK', '2021-08-14 12:38:22', '2021-08-14 12:39:12'),
(90, 'SALON', 'Saturday', '', '', 'MSDMAR21/221548/PAECK', '2021-08-14 12:38:22', '2021-08-14 12:38:22'),
(91, 'SALON', 'Sunday', '', '', 'MSDMAR21/221548/PAECK', '2021-08-14 12:38:22', '2021-08-14 12:38:22'),
(92, 'STYLIST', 'Monday', '09:00', '10:00', 'MSDT/17AUG202116/ONC', '2021-08-17 16:43:16', '2021-08-17 16:43:16'),
(93, 'STYLIST', 'Tuesday', '09:00', '10:00', 'MSDT/17AUG202116/ONC', '2021-08-17 16:43:16', '2021-08-17 16:43:16'),
(94, 'STYLIST', 'Wednesday', '09:00', '10:00', 'MSDT/17AUG202116/ONC', '2021-08-17 16:43:16', '2021-08-17 16:43:16'),
(95, 'STYLIST', 'Thursday', '09:00', '10:00', 'MSDT/17AUG202116/ONC', '2021-08-17 16:43:16', '2021-08-17 16:43:16'),
(96, 'STYLIST', 'Friday', '09:00', '10:00', 'MSDT/17AUG202116/ONC', '2021-08-17 16:43:16', '2021-08-17 16:43:16'),
(97, 'STYLIST', 'Saturday', '09:00', '10:00', 'MSDT/17AUG202116/ONC', '2021-08-17 16:43:16', '2021-08-17 16:43:16'),
(98, 'STYLIST', 'Sunday', '09:00', '10:00', 'MSDT/17AUG202116/ONC', '2021-08-17 16:43:16', '2021-08-17 16:43:16'),
(99, 'SALON', 'Monday', '', '', 'MSDSEP21/091526/M9Q3P', '2021-09-09 15:29:59', '2021-09-09 15:29:59'),
(100, 'SALON', 'Tuesday', '', '', 'MSDSEP21/091526/M9Q3P', '2021-09-09 15:29:59', '2021-09-09 15:29:59'),
(101, 'SALON', 'Wednesday', '', '', 'MSDSEP21/091526/M9Q3P', '2021-09-09 15:29:59', '2021-09-09 15:29:59'),
(102, 'SALON', 'Thursday', '', '', 'MSDSEP21/091526/M9Q3P', '2021-09-09 15:29:59', '2021-09-09 15:29:59'),
(103, 'SALON', 'Friday', '', '', 'MSDSEP21/091526/M9Q3P', '2021-09-09 15:29:59', '2021-09-09 15:29:59'),
(104, 'SALON', 'Saturday', '', '', 'MSDSEP21/091526/M9Q3P', '2021-09-09 15:29:59', '2021-09-09 15:29:59'),
(105, 'SALON', 'Sunday', '', '', 'MSDSEP21/091526/M9Q3P', '2021-09-09 15:29:59', '2021-09-09 15:29:59'),
(106, 'SALON', 'Monday', '', '', 'MSDSEP21/091534/M53UF', '2021-09-09 15:35:26', '2021-09-09 15:35:26'),
(107, 'SALON', 'Tuesday', '', '', 'MSDSEP21/091534/M53UF', '2021-09-09 15:35:26', '2021-09-09 15:35:26'),
(108, 'SALON', 'Wednesday', '', '', 'MSDSEP21/091534/M53UF', '2021-09-09 15:35:26', '2021-09-09 15:35:26'),
(109, 'SALON', 'Thursday', '', '', 'MSDSEP21/091534/M53UF', '2021-09-09 15:35:26', '2021-09-09 15:35:26'),
(110, 'SALON', 'Friday', '', '', 'MSDSEP21/091534/M53UF', '2021-09-09 15:35:26', '2021-09-09 15:35:26'),
(111, 'SALON', 'Saturday', '', '', 'MSDSEP21/091534/M53UF', '2021-09-09 15:35:26', '2021-09-09 15:35:26'),
(112, 'SALON', 'Sunday', '', '', 'MSDSEP21/091534/M53UF', '2021-09-09 15:35:26', '2021-09-09 15:35:26'),
(113, 'SALON', 'Monday', '', '', 'MSDSEP21/131045/VLHP3', '2021-09-13 10:48:40', '2021-09-13 10:48:40'),
(114, 'SALON', 'Tuesday', '', '', 'MSDSEP21/131045/VLHP3', '2021-09-13 10:48:40', '2021-09-13 10:48:40'),
(115, 'SALON', 'Wednesday', '', '', 'MSDSEP21/131045/VLHP3', '2021-09-13 10:48:40', '2021-09-13 10:48:40'),
(116, 'SALON', 'Thursday', '', '', 'MSDSEP21/131045/VLHP3', '2021-09-13 10:48:40', '2021-09-13 10:48:40'),
(117, 'SALON', 'Friday', '', '', 'MSDSEP21/131045/VLHP3', '2021-09-13 10:48:40', '2021-09-13 10:48:40'),
(118, 'SALON', 'Saturday', '09:00', '22:30', 'MSDSEP21/131045/VLHP3', '2021-09-13 10:48:40', '2021-09-13 10:48:40'),
(119, 'SALON', 'Sunday', '09:00', '20:30', 'MSDSEP21/131045/VLHP3', '2021-09-13 10:48:40', '2021-09-13 10:48:40'),
(120, 'SALON', 'Monday', '', '', 'MSDSEP21/131051/2NWT7', '2021-09-13 10:54:19', '2021-09-13 10:54:19'),
(121, 'SALON', 'Tuesday', '', '', 'MSDSEP21/131051/2NWT7', '2021-09-13 10:54:19', '2021-09-13 10:54:19'),
(122, 'SALON', 'Wednesday', '', '', 'MSDSEP21/131051/2NWT7', '2021-09-13 10:54:19', '2021-09-13 10:54:19'),
(123, 'SALON', 'Thursday', '', '', 'MSDSEP21/131051/2NWT7', '2021-09-13 10:54:19', '2021-09-13 10:54:19'),
(124, 'SALON', 'Friday', '', '', 'MSDSEP21/131051/2NWT7', '2021-09-13 10:54:19', '2021-09-13 10:54:19'),
(125, 'SALON', 'Saturday', '01:00', '20:45', 'MSDSEP21/131051/2NWT7', '2021-09-13 10:54:19', '2021-09-13 10:54:19'),
(126, 'SALON', 'Sunday', '06:00', '19:45', 'MSDSEP21/131051/2NWT7', '2021-09-13 10:54:19', '2021-09-13 10:54:19'),
(127, 'SALON', 'Monday', '', '', 'MSDSEP21/131057/PL71X', '2021-09-13 10:58:13', '2021-09-13 10:58:13'),
(128, 'SALON', 'Tuesday', '', '', 'MSDSEP21/131057/PL71X', '2021-09-13 10:58:13', '2021-09-13 10:58:13'),
(129, 'SALON', 'Wednesday', '', '', 'MSDSEP21/131057/PL71X', '2021-09-13 10:58:13', '2021-09-13 10:58:13'),
(130, 'SALON', 'Thursday', '', '', 'MSDSEP21/131057/PL71X', '2021-09-13 10:58:13', '2021-09-13 10:58:13'),
(131, 'SALON', 'Friday', '', '', 'MSDSEP21/131057/PL71X', '2021-09-13 10:58:13', '2021-09-13 10:58:13'),
(132, 'SALON', 'Saturday', '', '', 'MSDSEP21/131057/PL71X', '2021-09-13 10:58:13', '2021-09-13 10:58:13'),
(133, 'SALON', 'Sunday', '', '', 'MSDSEP21/131057/PL71X', '2021-09-13 10:58:13', '2021-09-13 10:58:13'),
(134, 'SALON', 'Monday', '', '', 'MSDSEP21/131100/DLMTQ', '2021-09-13 11:02:05', '2021-09-13 11:02:05'),
(135, 'SALON', 'Tuesday', '', '', 'MSDSEP21/131100/DLMTQ', '2021-09-13 11:02:05', '2021-09-13 11:02:05'),
(136, 'SALON', 'Wednesday', '', '', 'MSDSEP21/131100/DLMTQ', '2021-09-13 11:02:05', '2021-09-13 11:02:05'),
(137, 'SALON', 'Thursday', '', '', 'MSDSEP21/131100/DLMTQ', '2021-09-13 11:02:05', '2021-09-13 11:02:05'),
(138, 'SALON', 'Friday', '', '', 'MSDSEP21/131100/DLMTQ', '2021-09-13 11:02:05', '2021-09-13 11:02:05'),
(139, 'SALON', 'Saturday', '', '', 'MSDSEP21/131100/DLMTQ', '2021-09-13 11:02:05', '2021-09-13 11:02:05'),
(140, 'SALON', 'Sunday', '', '', 'MSDSEP21/131100/DLMTQ', '2021-09-13 11:02:05', '2021-09-13 11:02:05'),
(141, 'SALON', 'Monday', '', '', 'MSDSEP21/131100/DLMTQ', '2021-09-13 11:04:49', '2021-09-13 11:04:49'),
(142, 'SALON', 'Tuesday', '', '', 'MSDSEP21/131100/DLMTQ', '2021-09-13 11:04:49', '2021-09-13 11:04:49'),
(143, 'SALON', 'Wednesday', '', '', 'MSDSEP21/131100/DLMTQ', '2021-09-13 11:04:49', '2021-09-13 11:04:49'),
(144, 'SALON', 'Thursday', '', '', 'MSDSEP21/131100/DLMTQ', '2021-09-13 11:04:49', '2021-09-13 11:04:49'),
(145, 'SALON', 'Friday', '', '', 'MSDSEP21/131100/DLMTQ', '2021-09-13 11:04:49', '2021-09-13 11:04:49'),
(146, 'SALON', 'Saturday', '', '', 'MSDSEP21/131100/DLMTQ', '2021-09-13 11:04:49', '2021-09-13 11:04:49'),
(147, 'SALON', 'Sunday', '', '', 'MSDSEP21/131100/DLMTQ', '2021-09-13 11:04:49', '2021-09-13 11:04:49'),
(148, 'SALON', 'Monday', '', '', 'MSDSEP21/131104/DN9FG', '2021-09-13 11:07:54', '2021-09-13 11:07:54'),
(149, 'SALON', 'Tuesday', '', '', 'MSDSEP21/131104/DN9FG', '2021-09-13 11:07:54', '2021-09-13 11:07:54'),
(150, 'SALON', 'Wednesday', '', '', 'MSDSEP21/131104/DN9FG', '2021-09-13 11:07:54', '2021-09-13 11:07:54'),
(151, 'SALON', 'Thursday', '', '', 'MSDSEP21/131104/DN9FG', '2021-09-13 11:07:54', '2021-09-13 11:07:54'),
(152, 'SALON', 'Friday', '', '', 'MSDSEP21/131104/DN9FG', '2021-09-13 11:07:54', '2021-09-13 11:07:54'),
(153, 'SALON', 'Saturday', '', '', 'MSDSEP21/131104/DN9FG', '2021-09-13 11:07:54', '2021-09-13 11:07:54'),
(154, 'SALON', 'Sunday', '', '', 'MSDSEP21/131104/DN9FG', '2021-09-13 11:07:54', '2021-09-13 11:07:54'),
(155, 'SALON', 'Monday', '', '', 'MSDSEP21/131108/LVT0V', '2021-09-13 11:10:46', '2021-09-13 11:10:46'),
(156, 'SALON', 'Tuesday', '', '', 'MSDSEP21/131108/LVT0V', '2021-09-13 11:10:46', '2021-09-13 11:10:46'),
(157, 'SALON', 'Wednesday', '', '', 'MSDSEP21/131108/LVT0V', '2021-09-13 11:10:46', '2021-09-13 11:10:46'),
(158, 'SALON', 'Thursday', '', '', 'MSDSEP21/131108/LVT0V', '2021-09-13 11:10:46', '2021-09-13 11:10:46'),
(159, 'SALON', 'Friday', '', '', 'MSDSEP21/131108/LVT0V', '2021-09-13 11:10:46', '2021-09-13 11:10:46'),
(160, 'SALON', 'Saturday', '', '', 'MSDSEP21/131108/LVT0V', '2021-09-13 11:10:46', '2021-09-13 11:10:46'),
(161, 'SALON', 'Sunday', '', '', 'MSDSEP21/131108/LVT0V', '2021-09-13 11:10:46', '2021-09-13 11:10:46'),
(162, 'STYLIST', 'Monday', '', '', 'MSDT/13SEP202114/KEK', NULL, '0000-00-00 00:00:00'),
(163, 'STYLIST', 'Tuesday', '', '', 'MSDT/13SEP202114/KEK', NULL, '0000-00-00 00:00:00'),
(164, 'STYLIST', 'Wednesday', '', '', 'MSDT/13SEP202114/KEK', NULL, '0000-00-00 00:00:00'),
(165, 'STYLIST', 'Thursday', '', '', 'MSDT/13SEP202114/KEK', NULL, '0000-00-00 00:00:00'),
(166, 'STYLIST', 'Friday', '', '', 'MSDT/13SEP202114/KEK', NULL, '0000-00-00 00:00:00'),
(167, 'STYLIST', 'Saturday', '', '', 'MSDT/13SEP202114/KEK', NULL, '0000-00-00 00:00:00'),
(168, 'STYLIST', 'Sunday', '', '', 'MSDT/13SEP202114/KEK', NULL, '0000-00-00 00:00:00'),
(169, 'STYLIST', 'Monday', '08:00', '23:00', 'MSDT/14SEP202117/SBJ', '2021-09-14 17:37:13', '2021-09-16 11:53:38'),
(170, 'STYLIST', 'Tuesday', '07:00', '23:00', 'MSDT/14SEP202117/SBJ', '2021-09-14 17:37:13', '2021-09-16 11:53:38'),
(171, 'STYLIST', 'Wednesday', '07:00', '23:00', 'MSDT/14SEP202117/SBJ', '2021-09-14 17:37:13', '2021-09-16 11:53:38'),
(172, 'STYLIST', 'Thursday', '07:00', '23:00', 'MSDT/14SEP202117/SBJ', '2021-09-14 17:37:13', '2021-09-16 11:53:38'),
(173, 'STYLIST', 'Friday', '07:00', '23:00', 'MSDT/14SEP202117/SBJ', '2021-09-14 17:37:13', '2021-09-16 11:53:38'),
(174, 'STYLIST', 'Saturday', '07:00', '23:00', 'MSDT/14SEP202117/SBJ', '2021-09-14 17:37:13', '2021-09-16 11:53:38'),
(175, 'STYLIST', 'Sunday', '07:00', '23:00', 'MSDT/14SEP202117/SBJ', '2021-09-14 17:37:13', '2021-09-16 11:53:38'),
(176, 'SALON', 'Monday', '06:00', '23:00', 'MSDSEP21/151309/NHEIC', '2021-09-15 13:12:56', '2021-09-15 13:12:56'),
(177, 'SALON', 'Tuesday', '06:00', '23:00', 'MSDSEP21/151309/NHEIC', '2021-09-15 13:12:56', '2021-09-15 13:12:56'),
(178, 'SALON', 'Wednesday', '', '', 'MSDSEP21/151309/NHEIC', '2021-09-15 13:12:56', '2021-09-15 13:12:56'),
(179, 'SALON', 'Thursday', '', '', 'MSDSEP21/151309/NHEIC', '2021-09-15 13:12:56', '2021-09-15 13:12:56'),
(180, 'SALON', 'Friday', '', '', 'MSDSEP21/151309/NHEIC', '2021-09-15 13:12:56', '2021-09-15 13:12:56'),
(181, 'SALON', 'Saturday', '', '', 'MSDSEP21/151309/NHEIC', '2021-09-15 13:12:56', '2021-09-15 13:12:56'),
(182, 'SALON', 'Sunday', '', '', 'MSDSEP21/151309/NHEIC', '2021-09-15 13:12:56', '2021-09-15 13:12:56'),
(183, 'STYLIST', 'Monday', '06:00', '23:00', 'MSDT/15SEP202113/8ZW', '2021-09-15 13:20:11', '2021-09-15 13:20:11'),
(184, 'STYLIST', 'Tuesday', '06:00', '23:00', 'MSDT/15SEP202113/8ZW', '2021-09-15 13:20:11', '2021-09-15 13:20:11'),
(185, 'STYLIST', 'Wednesday', '06:00', '23:00', 'MSDT/15SEP202113/8ZW', '2021-09-15 13:20:11', '2021-09-15 13:20:11'),
(186, 'STYLIST', 'Thursday', '06:00', '23:00', 'MSDT/15SEP202113/8ZW', '2021-09-15 13:20:11', '2021-09-15 13:20:11'),
(187, 'STYLIST', 'Friday', '06:00', '23:00', 'MSDT/15SEP202113/8ZW', '2021-09-15 13:20:11', '2021-09-15 13:20:11'),
(188, 'STYLIST', 'Saturday', '06:00', '23:00', 'MSDT/15SEP202113/8ZW', '2021-09-15 13:20:11', '2021-09-15 13:20:11'),
(189, 'STYLIST', 'Sunday', '06:00', '23:00', 'MSDT/15SEP202113/8ZW', '2021-09-15 13:20:11', '2021-09-15 13:20:11'),
(190, 'STYLIST', 'Monday', '06:00', '23:00', 'MSDT/15SEP202113/4VN', '2021-09-15 14:42:38', '2021-09-15 14:42:38'),
(191, 'STYLIST', 'Tuesday', '06:00', '23:00', 'MSDT/15SEP202113/4VN', '2021-09-15 14:42:38', '2021-09-15 14:42:38'),
(192, 'STYLIST', 'Wednesday', '06:00', '23:00', 'MSDT/15SEP202113/4VN', '2021-09-15 14:42:38', '2021-09-15 14:42:38'),
(193, 'STYLIST', 'Thursday', '06:00', '23:00', 'MSDT/15SEP202113/4VN', '2021-09-15 14:42:38', '2021-09-15 14:42:38'),
(194, 'STYLIST', 'Friday', '06:00', '23:00', 'MSDT/15SEP202113/4VN', '2021-09-15 14:42:38', '2021-09-15 14:42:38'),
(195, 'STYLIST', 'Saturday', '06:00', '23:00', 'MSDT/15SEP202113/4VN', '2021-09-15 14:42:38', '2021-09-15 14:42:38'),
(196, 'STYLIST', 'Sunday', '06:00', '23:00', 'MSDT/15SEP202113/4VN', '2021-09-15 14:42:38', '2021-09-15 14:42:38'),
(197, 'SALON', 'Monday', '07:00', '23:00', '', '2021-09-16 11:42:50', '2021-09-16 11:42:50'),
(198, 'SALON', 'Tuesday', '07:00', '23:00', '', '2021-09-16 11:42:50', '2021-09-16 11:42:50'),
(199, 'SALON', 'Wednesday', '07:00', '23:00', '', '2021-09-16 11:42:50', '2021-09-16 11:42:50'),
(200, 'SALON', 'Thuresday', '07:00', '23:00', '', '2021-09-16 11:42:50', '2021-09-16 11:42:50'),
(201, 'SALON', 'Friday', '07:00', '23:00', '', '2021-09-16 11:42:50', '2021-09-16 11:42:50'),
(202, 'SALON', 'Saturday', '07:00', '23:00', '', '2021-09-16 11:42:50', '2021-09-16 11:42:50'),
(203, 'SALON', 'Sunday', '07:00', '23:00', '', '2021-09-16 11:42:50', '2021-09-16 11:42:50'),
(204, 'SALON', 'Monday', '08:00', '23:00', '', '2021-09-16 11:43:01', '2021-09-16 11:43:01'),
(205, 'SALON', 'Tuesday', '07:00', '23:00', '', '2021-09-16 11:43:01', '2021-09-16 11:43:01'),
(206, 'SALON', 'Wednesday', '07:00', '23:00', '', '2021-09-16 11:43:01', '2021-09-16 11:43:01'),
(207, 'SALON', 'Thuresday', '07:00', '23:00', '', '2021-09-16 11:43:01', '2021-09-16 11:43:01'),
(208, 'SALON', 'Friday', '07:00', '23:00', '', '2021-09-16 11:43:01', '2021-09-16 11:43:01'),
(209, 'SALON', 'Saturday', '07:00', '23:00', '', '2021-09-16 11:43:01', '2021-09-16 11:43:01'),
(210, 'SALON', 'Sunday', '07:00', '23:00', '', '2021-09-16 11:43:01', '2021-09-16 11:43:01'),
(211, 'SALON', 'Monday', '07:00', '23:00', '', '2021-09-16 11:43:27', '2021-09-16 11:43:27'),
(212, 'SALON', 'Tuesday', '07:00', '23:00', '', '2021-09-16 11:43:27', '2021-09-16 11:43:27'),
(213, 'SALON', 'Wednesday', '07:00', '23:00', '', '2021-09-16 11:43:27', '2021-09-16 11:43:27'),
(214, 'SALON', 'Thuresday', '07:00', '23:00', '', '2021-09-16 11:43:27', '2021-09-16 11:43:27'),
(215, 'SALON', 'Friday', '07:00', '23:00', '', '2021-09-16 11:43:27', '2021-09-16 11:43:27'),
(216, 'SALON', 'Saturday', '07:00', '23:00', '', '2021-09-16 11:43:27', '2021-09-16 11:43:27'),
(217, 'SALON', 'Sunday', '07:00', '23:00', '', '2021-09-16 11:43:27', '2021-09-16 11:43:27'),
(218, 'SALON', 'Monday', '07:00', '23:00', '', '2021-09-16 11:43:32', '2021-09-16 11:43:32'),
(219, 'SALON', 'Tuesday', '07:00', '23:00', '', '2021-09-16 11:43:32', '2021-09-16 11:43:32'),
(220, 'SALON', 'Wednesday', '07:00', '23:00', '', '2021-09-16 11:43:32', '2021-09-16 11:43:32'),
(221, 'SALON', 'Thuresday', '07:00', '23:00', '', '2021-09-16 11:43:32', '2021-09-16 11:43:32'),
(222, 'SALON', 'Friday', '07:00', '23:00', '', '2021-09-16 11:43:32', '2021-09-16 11:43:32'),
(223, 'SALON', 'Saturday', '07:00', '23:00', '', '2021-09-16 11:43:32', '2021-09-16 11:43:32'),
(224, 'SALON', 'Sunday', '07:00', '23:00', '', '2021-09-16 11:43:32', '2021-09-16 11:43:32'),
(225, 'SALON', 'Monday', '07:00', '23:00', '', '2021-09-16 11:43:34', '2021-09-16 11:43:34'),
(226, 'SALON', 'Tuesday', '07:00', '23:00', '', '2021-09-16 11:43:34', '2021-09-16 11:43:34'),
(227, 'SALON', 'Wednesday', '07:00', '23:00', '', '2021-09-16 11:43:34', '2021-09-16 11:43:34'),
(228, 'SALON', 'Thuresday', '07:00', '23:00', '', '2021-09-16 11:43:34', '2021-09-16 11:43:34'),
(229, 'SALON', 'Friday', '07:00', '23:00', '', '2021-09-16 11:43:34', '2021-09-16 11:43:34'),
(230, 'SALON', 'Saturday', '07:00', '23:00', '', '2021-09-16 11:43:34', '2021-09-16 11:43:34'),
(231, 'SALON', 'Sunday', '07:00', '23:00', '', '2021-09-16 11:43:34', '2021-09-16 11:43:34'),
(232, 'SALON', 'Monday', '07:00', '23:00', '', '2021-09-16 11:44:47', '2021-09-16 11:44:47'),
(233, 'SALON', 'Tuesday', '07:00', '23:00', '', '2021-09-16 11:44:47', '2021-09-16 11:44:47'),
(234, 'SALON', 'Wednesday', '07:00', '23:00', '', '2021-09-16 11:44:47', '2021-09-16 11:44:47'),
(235, 'SALON', 'Thuresday', '07:00', '23:00', '', '2021-09-16 11:44:47', '2021-09-16 11:44:47'),
(236, 'SALON', 'Friday', '07:00', '23:00', '', '2021-09-16 11:44:47', '2021-09-16 11:44:47'),
(237, 'SALON', 'Saturday', '07:00', '23:00', '', '2021-09-16 11:44:47', '2021-09-16 11:44:47'),
(238, 'SALON', 'Sunday', '07:00', '23:00', '', '2021-09-16 11:44:47', '2021-09-16 11:44:47'),
(239, 'SALON', 'Monday', '07:00', '23:00', '', '2021-09-16 11:44:48', '2021-09-16 11:44:48'),
(240, 'SALON', 'Tuesday', '07:00', '23:00', '', '2021-09-16 11:44:48', '2021-09-16 11:44:48'),
(241, 'SALON', 'Wednesday', '07:00', '23:00', '', '2021-09-16 11:44:48', '2021-09-16 11:44:48'),
(242, 'SALON', 'Thuresday', '07:00', '23:00', '', '2021-09-16 11:44:48', '2021-09-16 11:44:48'),
(243, 'SALON', 'Friday', '07:00', '23:00', '', '2021-09-16 11:44:48', '2021-09-16 11:44:48'),
(244, 'SALON', 'Saturday', '07:00', '23:00', '', '2021-09-16 11:44:48', '2021-09-16 11:44:48'),
(245, 'SALON', 'Sunday', '07:00', '23:00', '', '2021-09-16 11:44:48', '2021-09-16 11:44:48'),
(246, 'SALON', 'Monday', '07:00', '23:00', '', '2021-09-16 11:44:48', '2021-09-16 11:44:48'),
(247, 'SALON', 'Tuesday', '07:00', '23:00', '', '2021-09-16 11:44:48', '2021-09-16 11:44:48'),
(248, 'SALON', 'Wednesday', '07:00', '23:00', '', '2021-09-16 11:44:48', '2021-09-16 11:44:48'),
(249, 'SALON', 'Thuresday', '07:00', '23:00', '', '2021-09-16 11:44:48', '2021-09-16 11:44:48'),
(250, 'SALON', 'Friday', '07:00', '23:00', '', '2021-09-16 11:44:48', '2021-09-16 11:44:48'),
(251, 'SALON', 'Saturday', '07:00', '23:00', '', '2021-09-16 11:44:48', '2021-09-16 11:44:48'),
(252, 'SALON', 'Sunday', '07:00', '23:00', '', '2021-09-16 11:44:48', '2021-09-16 11:44:48'),
(253, 'SALON', 'Monday', '07:00', '23:00', '', '2021-09-16 11:44:48', '2021-09-16 11:44:48'),
(254, 'SALON', 'Tuesday', '07:00', '23:00', '', '2021-09-16 11:44:48', '2021-09-16 11:44:48'),
(255, 'SALON', 'Wednesday', '07:00', '23:00', '', '2021-09-16 11:44:48', '2021-09-16 11:44:48'),
(256, 'SALON', 'Thuresday', '07:00', '23:00', '', '2021-09-16 11:44:48', '2021-09-16 11:44:48'),
(257, 'SALON', 'Friday', '07:00', '23:00', '', '2021-09-16 11:44:48', '2021-09-16 11:44:48'),
(258, 'SALON', 'Saturday', '07:00', '23:00', '', '2021-09-16 11:44:48', '2021-09-16 11:44:48'),
(259, 'SALON', 'Sunday', '07:00', '23:00', '', '2021-09-16 11:44:48', '2021-09-16 11:44:48'),
(260, 'SALON', 'Monday', '07:00', '23:00', '', '2021-09-16 11:44:52', '2021-09-16 11:44:52'),
(261, 'SALON', 'Tuesday', '07:00', '23:00', '', '2021-09-16 11:44:52', '2021-09-16 11:44:52'),
(262, 'SALON', 'Wednesday', '07:00', '23:00', '', '2021-09-16 11:44:52', '2021-09-16 11:44:52'),
(263, 'SALON', 'Thuresday', '07:00', '23:00', '', '2021-09-16 11:44:52', '2021-09-16 11:44:52'),
(264, 'SALON', 'Friday', '07:00', '23:00', '', '2021-09-16 11:44:52', '2021-09-16 11:44:52'),
(265, 'SALON', 'Saturday', '07:00', '23:00', '', '2021-09-16 11:44:52', '2021-09-16 11:44:52'),
(266, 'SALON', 'Sunday', '07:00', '23:00', '', '2021-09-16 11:44:52', '2021-09-16 11:44:52'),
(267, 'SALON', 'Monday', '07:00', '23:00', '', '2021-09-16 11:46:16', '2021-09-16 11:46:16'),
(268, 'SALON', 'Tuesday', '07:00', '23:00', '', '2021-09-16 11:46:16', '2021-09-16 11:46:16'),
(269, 'SALON', 'Wednesday', '07:00', '23:00', '', '2021-09-16 11:46:16', '2021-09-16 11:46:16'),
(270, 'SALON', 'Thuresday', '07:00', '23:00', '', '2021-09-16 11:46:16', '2021-09-16 11:46:16'),
(271, 'SALON', 'Friday', '07:00', '23:00', '', '2021-09-16 11:46:16', '2021-09-16 11:46:16'),
(272, 'SALON', 'Saturday', '07:00', '23:00', '', '2021-09-16 11:46:16', '2021-09-16 11:46:16'),
(273, 'SALON', 'Sunday', '07:00', '23:00', '', '2021-09-16 11:46:16', '2021-09-16 11:46:16'),
(274, 'SALON', 'Monday', '07:00', '23:00', '', '2021-09-16 11:48:19', '2021-09-16 11:48:19'),
(275, 'SALON', 'Tuesday', '07:00', '23:00', '', '2021-09-16 11:48:19', '2021-09-16 11:48:19'),
(276, 'SALON', 'Wednesday', '07:00', '23:00', '', '2021-09-16 11:48:19', '2021-09-16 11:48:19'),
(277, 'SALON', 'Thuresday', '07:00', '23:00', '', '2021-09-16 11:48:19', '2021-09-16 11:48:19'),
(278, 'SALON', 'Friday', '07:00', '23:00', '', '2021-09-16 11:48:19', '2021-09-16 11:48:19'),
(279, 'SALON', 'Saturday', '07:00', '23:00', '', '2021-09-16 11:48:19', '2021-09-16 11:48:19'),
(280, 'SALON', 'Sunday', '07:00', '23:00', '', '2021-09-16 11:48:19', '2021-09-16 11:48:19'),
(281, 'SALON', 'Monday', '07:00', '23:00', '', '2021-09-16 11:50:37', '2021-09-16 11:50:37'),
(282, 'SALON', 'Tuesday', '07:00', '23:00', '', '2021-09-16 11:50:37', '2021-09-16 11:50:37'),
(283, 'SALON', 'Wednesday', '07:00', '23:00', '', '2021-09-16 11:50:37', '2021-09-16 11:50:37'),
(284, 'SALON', 'Thuresday', '07:00', '23:00', '', '2021-09-16 11:50:37', '2021-09-16 11:50:37'),
(285, 'SALON', 'Friday', '07:00', '23:00', '', '2021-09-16 11:50:37', '2021-09-16 11:50:37'),
(286, 'SALON', 'Saturday', '07:00', '23:00', '', '2021-09-16 11:50:37', '2021-09-16 11:50:37'),
(287, 'SALON', 'Sunday', '07:00', '23:00', '', '2021-09-16 11:50:37', '2021-09-16 11:50:37'),
(288, 'SALON', 'Monday', '', '', 'MSDSEP21/161446/QCTIY', '2021-09-16 14:50:29', '2021-09-16 14:50:29'),
(289, 'SALON', 'Tuesday', '', '', 'MSDSEP21/161446/QCTIY', '2021-09-16 14:50:29', '2021-09-16 14:50:29'),
(290, 'SALON', 'Wednesday', '', '', 'MSDSEP21/161446/QCTIY', '2021-09-16 14:50:29', '2021-09-16 14:50:29'),
(291, 'SALON', 'Thursday', '', '', 'MSDSEP21/161446/QCTIY', '2021-09-16 14:50:29', '2021-09-16 14:50:29'),
(292, 'SALON', 'Friday', '', '', 'MSDSEP21/161446/QCTIY', '2021-09-16 14:50:29', '2021-09-16 14:50:29'),
(293, 'SALON', 'Saturday', '', '', 'MSDSEP21/161446/QCTIY', '2021-09-16 14:50:29', '2021-09-16 14:50:29'),
(294, 'SALON', 'Sunday', '', '', 'MSDSEP21/161446/QCTIY', '2021-09-16 14:50:29', '2021-09-16 14:50:29'),
(295, 'STYLIST', 'Monday', '09:00', '09:00', 'MSDT/25NOV202111/7FN', '2021-11-25 11:37:48', '2021-11-25 11:37:48'),
(296, 'STYLIST', 'Tuesday', '09:00', '09:00', 'MSDT/25NOV202111/7FN', '2021-11-25 11:37:48', '2021-11-25 11:37:48'),
(297, 'STYLIST', 'Wednesday', '09:00', '09:009', 'MSDT/25NOV202111/7FN', '2021-11-25 11:37:48', '2021-11-25 11:37:48'),
(298, 'STYLIST', 'Thursday', '09:00', '09:00', 'MSDT/25NOV202111/7FN', '2021-11-25 11:37:48', '2021-11-25 11:37:48'),
(299, 'STYLIST', 'Friday', '09:00', '09:00', 'MSDT/25NOV202111/7FN', '2021-11-25 11:37:48', '2021-11-25 11:37:48'),
(300, 'STYLIST', 'Saturday', '09:00', '09:00', 'MSDT/25NOV202111/7FN', '2021-11-25 11:37:48', '2021-11-25 11:37:48'),
(301, 'STYLIST', 'Sunday', '', '', 'MSDT/25NOV202111/7FN', '2021-11-25 11:37:48', '2021-11-25 11:37:48'),
(302, 'STYLIST', 'Monday', '09:00', '09:00', 'MSDT/25NOV202111/0DE', '2021-11-25 11:47:17', '2021-11-25 11:47:17'),
(303, 'STYLIST', 'Tuesday', '09:00', '09:00', 'MSDT/25NOV202111/0DE', '2021-11-25 11:47:17', '2021-11-25 11:47:17'),
(304, 'STYLIST', 'Wednesday', '09:00', '09:00', 'MSDT/25NOV202111/0DE', '2021-11-25 11:47:17', '2021-11-25 11:47:17'),
(305, 'STYLIST', 'Thursday', '09:00', '09:00', 'MSDT/25NOV202111/0DE', '2021-11-25 11:47:17', '2021-11-25 11:47:17'),
(306, 'STYLIST', 'Friday', '09:00', '09:00', 'MSDT/25NOV202111/0DE', '2021-11-25 11:47:17', '2021-11-25 11:47:17'),
(307, 'STYLIST', 'Saturday', '09:00', '09:00', 'MSDT/25NOV202111/0DE', '2021-11-25 11:47:17', '2021-11-25 11:47:17'),
(308, 'STYLIST', 'Sunday', '', '', 'MSDT/25NOV202111/0DE', '2021-11-25 11:47:17', '2021-11-25 11:47:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`address_id`);

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`ad_id`);

--
-- Indexes for table `approval`
--
ALTER TABLE `approval`
  ADD PRIMARY KEY (`approval_id`);

--
-- Indexes for table `banking_details`
--
ALTER TABLE `banking_details`
  ADD PRIMARY KEY (`banking_id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`blog_id`);

--
-- Indexes for table `blog_category`
--
ALTER TABLE `blog_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `blog_comment`
--
ALTER TABLE `blog_comment`
  ADD PRIMARY KEY (`blog_comment_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `common_package`
--
ALTER TABLE `common_package`
  ADD PRIMARY KEY (`package_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `corporates`
--
ALTER TABLE `corporates`
  ADD PRIMARY KEY (`corp_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `coupon_association`
--
ALTER TABLE `coupon_association`
  ADD PRIMARY KEY (`assoc_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `customers_reviews`
--
ALTER TABLE `customers_reviews`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `customer_order`
--
ALTER TABLE `customer_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `customer_order_items`
--
ALTER TABLE `customer_order_items`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `customer_package_items`
--
ALTER TABLE `customer_package_items`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `discount_coupon`
--
ALTER TABLE `discount_coupon`
  ADD PRIMARY KEY (`code_id`);

--
-- Indexes for table `guest_user`
--
ALTER TABLE `guest_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image_gallery`
--
ALTER TABLE `image_gallery`
  ADD PRIMARY KEY (`img_id`);

--
-- Indexes for table `inventory_history`
--
ALTER TABLE `inventory_history`
  ADD PRIMARY KEY (`history_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_set`
--
ALTER TABLE `menu_set`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `organization_type`
--
ALTER TABLE `organization_type`
  ADD PRIMARY KEY (`org_id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`package_id`);

--
-- Indexes for table `package_cart`
--
ALTER TABLE `package_cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `package_type`
--
ALTER TABLE `package_type`
  ADD PRIMARY KEY (`package_type_id`);

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset`
--
ALTER TABLE `password_reset`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`);

--
-- Indexes for table `post_comments`
--
ALTER TABLE `post_comments`
  ADD PRIMARY KEY (`comments_id`);

--
-- Indexes for table `post_likes`
--
ALTER TABLE `post_likes`
  ADD PRIMARY KEY (`likes_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_association`
--
ALTER TABLE `product_association`
  ADD PRIMARY KEY (`assoc_id`);

--
-- Indexes for table `product_cart`
--
ALTER TABLE `product_cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`product_category_id`);

--
-- Indexes for table `product_gallery`
--
ALTER TABLE `product_gallery`
  ADD PRIMARY KEY (`gallery_id`);

--
-- Indexes for table `product_inventory`
--
ALTER TABLE `product_inventory`
  ADD PRIMARY KEY (`inventory_id`);

--
-- Indexes for table `product_wishlist`
--
ALTER TABLE `product_wishlist`
  ADD PRIMARY KEY (`wish_id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_verification`
--
ALTER TABLE `reg_verification`
  ADD PRIMARY KEY (`verification_id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salons`
--
ALTER TABLE `salons`
  ADD PRIMARY KEY (`salon_id`);

--
-- Indexes for table `salon_packages`
--
ALTER TABLE `salon_packages`
  ADD PRIMARY KEY (`package_id`);

--
-- Indexes for table `salon_package_item`
--
ALTER TABLE `salon_package_item`
  ADD PRIMARY KEY (`package_item_id`);

--
-- Indexes for table `salon_services`
--
ALTER TABLE `salon_services`
  ADD PRIMARY KEY (`salon_service_id`);

--
-- Indexes for table `salon_type`
--
ALTER TABLE `salon_type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`service_id`);

--
-- Indexes for table `services_booking`
--
ALTER TABLE `services_booking`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indexes for table `services_booking_cart`
--
ALTER TABLE `services_booking_cart`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `services_booking_coupon_apply`
--
ALTER TABLE `services_booking_coupon_apply`
  ADD PRIMARY KEY (`sb_coupon_apply_id`);

--
-- Indexes for table `service_category`
--
ALTER TABLE `service_category`
  ADD PRIMARY KEY (`service_cat_id`);

--
-- Indexes for table `service_variant`
--
ALTER TABLE `service_variant`
  ADD PRIMARY KEY (`variant_id`);

--
-- Indexes for table `service_visit_type`
--
ALTER TABLE `service_visit_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`state_id`);

--
-- Indexes for table `stylist`
--
ALTER TABLE `stylist`
  ADD PRIMARY KEY (`stylist_id`);

--
-- Indexes for table `stylist_by_service`
--
ALTER TABLE `stylist_by_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stylist_cart`
--
ALTER TABLE `stylist_cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `stylist_incentive`
--
ALTER TABLE `stylist_incentive`
  ADD PRIMARY KEY (`inc_id`);

--
-- Indexes for table `stylist_incentive_wallet`
--
ALTER TABLE `stylist_incentive_wallet`
  ADD PRIMARY KEY (`stylist_wallet_id`);

--
-- Indexes for table `stylist_kyc`
--
ALTER TABLE `stylist_kyc`
  ADD PRIMARY KEY (`kyc_id`);

--
-- Indexes for table `stylist_services`
--
ALTER TABLE `stylist_services`
  ADD PRIMARY KEY (`stylist_service_id`);

--
-- Indexes for table `stylist_videos`
--
ALTER TABLE `stylist_videos`
  ADD PRIMARY KEY (`vid_id`);

--
-- Indexes for table `system_users`
--
ALTER TABLE `system_users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tax_detail`
--
ALTER TABLE `tax_detail`
  ADD PRIMARY KEY (`tax_id`);

--
-- Indexes for table `tbl_notifications`
--
ALTER TABLE `tbl_notifications`
  ADD PRIMARY KEY (`nid`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `trending`
--
ALTER TABLE `trending`
  ADD PRIMARY KEY (`tr_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `variant`
--
ALTER TABLE `variant`
  ADD PRIMARY KEY (`variant_id`);

--
-- Indexes for table `visit`
--
ALTER TABLE `visit`
  ADD PRIMARY KEY (`visit_id`);

--
-- Indexes for table `working_days_hours`
--
ALTER TABLE `working_days_hours`
  ADD PRIMARY KEY (`working_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `ad_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `approval`
--
ALTER TABLE `approval`
  MODIFY `approval_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `banking_details`
--
ALTER TABLE `banking_details`
  MODIFY `banking_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `blog_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `blog_category`
--
ALTER TABLE `blog_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `blog_comment`
--
ALTER TABLE `blog_comment`
  MODIFY `blog_comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2124;

--
-- AUTO_INCREMENT for table `common_package`
--
ALTER TABLE `common_package`
  MODIFY `package_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `corporates`
--
ALTER TABLE `corporates`
  MODIFY `corp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT for table `coupon_association`
--
ALTER TABLE `coupon_association`
  MODIFY `assoc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `customers_reviews`
--
ALTER TABLE `customers_reviews`
  MODIFY `review_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `customer_order`
--
ALTER TABLE `customer_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `customer_order_items`
--
ALTER TABLE `customer_order_items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `customer_package_items`
--
ALTER TABLE `customer_package_items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `discount_coupon`
--
ALTER TABLE `discount_coupon`
  MODIFY `code_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `guest_user`
--
ALTER TABLE `guest_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `image_gallery`
--
ALTER TABLE `image_gallery`
  MODIFY `img_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `inventory_history`
--
ALTER TABLE `inventory_history`
  MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `menu_set`
--
ALTER TABLE `menu_set`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `organization_type`
--
ALTER TABLE `organization_type`
  MODIFY `org_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `package_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `package_cart`
--
ALTER TABLE `package_cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `package_type`
--
ALTER TABLE `package_type`
  MODIFY `package_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `password_reset`
--
ALTER TABLE `password_reset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `post_comments`
--
ALTER TABLE `post_comments`
  MODIFY `comments_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `post_likes`
--
ALTER TABLE `post_likes`
  MODIFY `likes_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product_association`
--
ALTER TABLE `product_association`
  MODIFY `assoc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product_cart`
--
ALTER TABLE `product_cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `product_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product_gallery`
--
ALTER TABLE `product_gallery`
  MODIFY `gallery_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product_inventory`
--
ALTER TABLE `product_inventory`
  MODIFY `inventory_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product_wishlist`
--
ALTER TABLE `product_wishlist`
  MODIFY `wish_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `reg_verification`
--
ALTER TABLE `reg_verification`
  MODIFY `verification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `salons`
--
ALTER TABLE `salons`
  MODIFY `salon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `salon_packages`
--
ALTER TABLE `salon_packages`
  MODIFY `package_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `salon_package_item`
--
ALTER TABLE `salon_package_item`
  MODIFY `package_item_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `salon_services`
--
ALTER TABLE `salon_services`
  MODIFY `salon_service_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- AUTO_INCREMENT for table `salon_type`
--
ALTER TABLE `salon_type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `services_booking`
--
ALTER TABLE `services_booking`
  MODIFY `booking_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `services_booking_cart`
--
ALTER TABLE `services_booking_cart`
  MODIFY `cid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;

--
-- AUTO_INCREMENT for table `services_booking_coupon_apply`
--
ALTER TABLE `services_booking_coupon_apply`
  MODIFY `sb_coupon_apply_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `service_category`
--
ALTER TABLE `service_category`
  MODIFY `service_cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `service_variant`
--
ALTER TABLE `service_variant`
  MODIFY `variant_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `service_visit_type`
--
ALTER TABLE `service_visit_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `state_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `stylist`
--
ALTER TABLE `stylist`
  MODIFY `stylist_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `stylist_by_service`
--
ALTER TABLE `stylist_by_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT for table `stylist_cart`
--
ALTER TABLE `stylist_cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `stylist_incentive`
--
ALTER TABLE `stylist_incentive`
  MODIFY `inc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `stylist_incentive_wallet`
--
ALTER TABLE `stylist_incentive_wallet`
  MODIFY `stylist_wallet_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stylist_kyc`
--
ALTER TABLE `stylist_kyc`
  MODIFY `kyc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `stylist_services`
--
ALTER TABLE `stylist_services`
  MODIFY `stylist_service_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `stylist_videos`
--
ALTER TABLE `stylist_videos`
  MODIFY `vid_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_users`
--
ALTER TABLE `system_users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `tax_detail`
--
ALTER TABLE `tax_detail`
  MODIFY `tax_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_notifications`
--
ALTER TABLE `tbl_notifications`
  MODIFY `nid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `transaction_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trending`
--
ALTER TABLE `trending`
  MODIFY `tr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `variant`
--
ALTER TABLE `variant`
  MODIFY `variant_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `visit`
--
ALTER TABLE `visit`
  MODIFY `visit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `working_days_hours`
--
ALTER TABLE `working_days_hours`
  MODIFY `working_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=309;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
