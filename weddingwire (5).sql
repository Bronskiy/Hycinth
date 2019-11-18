-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 18, 2019 at 09:52 PM
-- Server version: 5.7.27-0ubuntu0.16.04.1
-- PHP Version: 7.0.33-12+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `weddingwire`
--

-- --------------------------------------------------------

--
-- Table structure for table `amenities`
--

CREATE TABLE `amenities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `amenities`
--

INSERT INTO `amenities` (`id`, `name`, `description`, `slug`, `image`, `type`, `status`, `created_at`, `updated_at`) VALUES
(4, 'ame', 'descf', 'amen', NULL, 'game', 1, '2019-11-13 04:30:49', '2019-11-15 02:09:47'),
(6, 'ames', 'ds', 'ames', NULL, 'amenity', 1, '2019-11-13 04:34:50', '2019-11-13 04:34:50'),
(7, 'ne', 's', 'ne', NULL, 'game', 1, '2019-11-13 04:43:32', '2019-11-13 05:15:39'),
(8, 'gg', 'ff', 'gg', NULL, 'amenity', 1, '2019-11-13 04:43:45', '2019-11-13 04:43:45'),
(9, 'sds', 'sdsd', 'sds', NULL, 'amenity', 1, '2019-11-15 04:18:56', '2019-11-15 04:18:56'),
(10, 'sds', 'sdsd', 'sds-1', NULL, 'amenity', 1, '2019-11-15 04:19:13', '2019-11-15 04:19:13'),
(11, 'dsfsdf', 'sdfsd', 'dsfsdf', NULL, 'amenity', 1, '2019-11-15 04:46:34', '2019-11-15 04:46:34'),
(12, 'Bed1', '!!! URGENT: I pulled a link from my history and it took me straight to the back end of the portal. This is a huge security problem.!!! URGENT: I pulled a link from my history and it took me straight to the back end of the portal. This is a huge security problem.!!! URGENT: I pulled a link from my history and it took me straight to the back end of the portal. This is a huge security problem.', 'bed1', NULL, 'amenity', 1, '2019-11-18 04:49:47', '2019-11-18 04:49:47'),
(13, 'Bed2', '2 URGENT: I pulled a link from my history and it took me straight to the back end of the portal. This is a huge security problem.', 'bed2', NULL, 'game', 1, '2019-11-18 04:50:23', '2019-11-18 04:50:23');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent` int(11) DEFAULT '0',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subparent` int(11) DEFAULT '0',
  `sorting` int(11) DEFAULT '0',
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_tag` text COLLATE utf8mb4_unicode_ci,
  `meta_description` longtext COLLATE utf8mb4_unicode_ci,
  `featured` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent`, `label`, `subparent`, `sorting`, `slug`, `status`, `created_at`, `updated_at`, `description`, `image`, `thumbnail_image`, `meta_title`, `color`, `meta_tag`, `meta_description`, `featured`) VALUES
(1, 0, 'Photography', 0, 26, 'photography', 1, '2019-11-09 02:43:13', '2019-11-18 10:46:54', NULL, '', '', 'photography', '#ff80c0', 'photography', 'photography', 0),
(2, 8, 'Cateringss', 0, 1, 'catering', 1, '2019-11-09 03:28:53', '2019-11-18 09:52:14', NULL, 'images/categories/1574071913C7jokbqSIC1l9G0G99FC-2faf1563b9868cea2b35d9345c68c77d.jpg', 'images/categories/1574071913dffkUcobysb0AhTRmTsd-167958.jpg', 'photography', '#ff8040', 'photography', 'kgiuiu', 1),
(3, 2, 'Food', 0, 2, 'food', 1, '2019-11-09 03:41:39', '2019-11-13 05:21:43', NULL, '', '', 'huh', '', 'ljoj', 'hgigy', 0),
(4, 2, 'Demo', 0, 1, 'demo', 1, '2019-11-09 03:44:29', '2019-11-13 05:21:43', NULL, '', '', 'Test', '', 'Test', 'Test', 0),
(5, 0, 'Transportation', 0, 2, 'transportation', 1, '2019-11-13 02:48:49', '2019-11-18 09:50:18', NULL, '', '', 'Transportation', '#ff8040', 'Transportation', 'Transportation', 1),
(6, 0, 'Balloons', 0, 6, 'balloons', 1, '2019-11-13 02:49:07', '2019-11-18 09:52:25', NULL, '', '', 'Balloons', '#ff8040', 'Balloons', 'Balloons', 1),
(7, 0, 'Bands', 0, 3, 'bands', 1, '2019-11-13 02:49:22', '2019-11-18 09:50:29', NULL, '', '', 'Bands', '#ff8040', 'Bands', 'Bands', 1),
(8, 0, 'Catering/ Beverages', 0, 5, 'catering-beverages', 1, '2019-11-13 02:49:53', '2019-11-18 09:51:49', NULL, '', '', 'Catering/ Beverages', '#ff8040', 'Catering/ Beverages', 'Catering/ Beverages', 1),
(9, 0, 'Churches/Temples', 0, 7, 'churches-temples', 1, '2019-11-13 02:50:23', '2019-11-18 10:24:21', NULL, '', '', 'Churches/Temples', '#ff8000', 'Churches/Temples', 'Churches/Temples', 1),
(10, 0, 'Musicians/Instrumentalist', 0, 8, 'musicians-instrumentalist', 1, '2019-11-13 02:50:46', '2019-11-18 10:25:30', NULL, '', '', 'Musicians/Instrumentalist', '#ff8040', 'Musicians/Instrumentalist', 'Musicians/Instrumentalist', 1),
(11, 0, 'Venues', 0, 9, 'venues', 1, '2019-11-13 02:51:29', '2019-11-18 10:25:36', NULL, '', '', 'Venues', '#00ff00', 'Venues', 'Venues', 1),
(12, 0, 'Flowers/Florist', 0, 11, 'flowers-florist', 1, '2019-11-13 02:51:44', '2019-11-18 10:26:22', NULL, '', '', 'Flowers/Florist', '#0080ff', 'Flowers/Florist', 'Flowers/Florist', 1),
(13, 0, 'Clothing/Dressing and Jewelries', 0, 10, 'clothing-dressing-and-jewelries', 1, '2019-11-13 02:52:02', '2019-11-18 10:26:14', NULL, '', '', 'Clothing/Dressing and Jewelries', '#80ffff', 'Clothing/Dressing and Jewelries', 'Clothing/Dressing and Jewelries', 1),
(14, 0, 'Beauty and Health', 0, 12, 'beauty-and-health', 1, '2019-11-13 02:52:35', '2019-11-18 10:26:30', NULL, '', '', 'Beauty and Health', '#ff80c0', 'Beauty and Health', 'Beauty and Health', 1),
(15, 0, 'Staffing/Officiants', 0, 13, 'staffing-officiants', 1, '2019-11-13 02:52:54', '2019-11-18 10:26:37', NULL, '', '', 'Staffing/Officiants', '#80ffff', 'Staffing/Officiants', 'Staffing/Officiants', 1),
(16, 0, 'Photography/Videography', 0, 14, 'photography-videography', 1, '2019-11-13 02:53:14', '2019-11-18 10:26:49', NULL, '', '', 'Photography/Videography', '#ff80ff', 'Photography/Videography', 'Photography/Videography', 1),
(17, 0, 'Party/Event Rental', 0, 15, 'party-event-rental', 1, '2019-11-13 02:53:35', '2019-11-18 10:26:56', NULL, '', '', 'Party/Event Rental', '#ff80ff', 'Party/Event Rental', 'Party/Event Rental', 1),
(18, 0, 'DJ/Entertainment/MC', 0, 16, 'dj-entertainment-mc', 1, '2019-11-13 02:56:51', '2019-11-18 10:27:04', NULL, '', '', 'DJ/Entertainment/MC', '#ff80c0', 'DJ/Entertainment/MC', 'DJ/Entertainment/MC', 1),
(19, 0, 'Entertainer', 0, 17, 'entertainer', 1, '2019-11-13 03:33:22', '2019-11-18 10:28:52', NULL, '', '', 'Entertainer', '#00ff40', 'Entertainer', 'Entertainer', 1),
(20, 0, 'Event Planner', 0, 18, 'event-planner', 1, '2019-11-13 03:34:21', '2019-11-18 10:28:45', NULL, '', '', 'Event Planner', '#ff8040', 'Event Planner', 'Event Planner', 1),
(21, 0, 'Funeral Service', 0, 19, 'funeral-service', 1, '2019-11-13 03:34:36', '2019-11-18 10:28:34', NULL, '', '', 'Funeral Service', '#ff0000', 'Funeral Service', 'Funeral Service', 1),
(22, 0, 'Printing/Stationary Services', 0, 20, 'printing-stationary-services', 1, '2019-11-13 03:34:51', '2019-11-18 10:28:27', NULL, '', '', 'Printing/Stationary Services', '#ff8080', 'Printing/Stationary Services', 'Printing/Stationary Services', 1),
(23, 0, 'Lodging', 0, 21, 'lodging', 1, '2019-11-13 03:35:02', '2019-11-18 10:28:20', NULL, '', '', 'Lodging', '#ffff80', 'Lodging', 'Lodging', 1),
(24, 0, 'Cake', 0, 22, 'cake', 1, '2019-11-13 03:35:12', '2019-11-18 10:28:14', NULL, '', '', 'Cake', '#80ff80', 'Cake', 'Cake', 1),
(25, 0, 'Decoration', 0, 23, 'decoration', 1, '2019-11-13 03:35:23', '2019-11-18 10:28:08', NULL, '', '', 'Decoration', '#ff80ff', 'Decoration', 'Decoration', 1),
(26, 0, 'Favors/Gift Registry', 0, 24, 'favors-gift-registry', 1, '2019-11-13 03:35:38', '2019-11-18 10:28:01', NULL, '', '', 'Favors/Gift Registry', '#0080ff', 'Favors/Gift Registry', 'Favors/Gift Registry', 1),
(27, 0, 'SECURITY', 0, 25, 'security', 1, '2019-11-13 03:35:52', '2019-11-18 10:27:54', NULL, '', '', 'SECURITY', '#80ffff', 'SECURITY', 'SECURITY', 1),
(28, 0, 'Sam', 0, 4, 'sam', 1, '2019-11-13 10:36:27', '2019-11-18 09:50:38', NULL, '', '', 'Sam', '#ff8040', 'Sam', 'Sam', 1),
(29, 1, 'demoo', 0, 1, 'demoo', 1, '2019-11-14 05:03:12', '2019-11-18 10:27:37', NULL, '', '', 'sads', '#80ffff', 'sdds', 'sdds', 0),
(30, 1, 'demmo2', 0, 2, 'demmo2', 1, '2019-11-14 05:03:54', '2019-11-18 10:24:41', NULL, '', '', 'ses', '#ff8040', 'sddssd', 'sdddddd', 0),
(31, 6, 'Parent', 0, 1, 'parentcategory', 1, '2019-11-15 04:12:46', '2019-11-18 10:24:12', NULL, 'images/categories/1574068648Kcrkggnz6xWC7uut7qYP-14997.png', 'images/categories/1574068648dKhoF4UWzKOtpexI0C7f-162958.jpg', 'Love', '#ff8040', 'Always', '•	Price should say: Factor in the costs of materials and labor, plus any related business expenses. Consider the total price buyers will pay too—including shipping.\r\n\r\n•	Quantity: For quantities greater than one, this listing will renew automatically until you remove the product manually.', 1),
(32, 31, 'ChildCategoryOne', 0, 1, 'childcategoryone', 1, '2019-11-15 04:13:45', '2019-11-15 04:13:58', NULL, '', '', 'Test', '', 'Test', 'Test', 1),
(33, 2, 'category', 0, 0, 'category', 1, '2019-11-18 04:40:10', '2019-11-18 04:40:10', NULL, 'images/categories/1574071810xXRXBhmUjmxnpJK55Cnw-162958.jpg', 'images/categories/1574071810hQyNwDAQBCLLAD8QI5Dg-167958.jpg', 'alwaysss', '', 'sparrow', '!!! URGENT: I pulled a link from my history and it took me straight to the back end of the portal. This is a huge security problem. People login always has to be required!!!\r\nI suggest you place a small text under each field to guide the vendors through the process just like we did with other fields', 1);

-- --------------------------------------------------------

--
-- Table structure for table `category_variations`
--

CREATE TABLE `category_variations` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_variations`
--

INSERT INTO `category_variations` (`id`, `parent`, `category_id`, `variant_id`, `type`, `created_at`, `updated_at`) VALUES
(105, NULL, 7, 7, 'game', '2019-11-13 09:15:12', '2019-11-13 09:15:12'),
(121, NULL, 5, 1, 'event', '2019-11-13 09:16:13', '2019-11-13 09:16:13'),
(122, NULL, 5, 4, 'amenity', '2019-11-13 09:16:13', '2019-11-13 09:16:13'),
(123, NULL, 5, 7, 'game', '2019-11-13 09:16:13', '2019-11-13 09:16:13'),
(125, NULL, 8, 7, 'event', '2019-11-13 09:16:26', '2019-11-13 09:16:26'),
(126, NULL, 8, 6, 'amenity', '2019-11-13 09:16:26', '2019-11-13 09:16:26'),
(127, NULL, 8, 7, 'game', '2019-11-13 09:16:26', '2019-11-13 09:16:26'),
(238, NULL, 31, 1, 'event', '2019-11-15 10:34:36', '2019-11-15 10:34:36'),
(239, NULL, 31, 9, 'event', '2019-11-15 10:34:37', '2019-11-15 10:34:37'),
(240, NULL, 31, 6, 'amenity', '2019-11-15 10:34:37', '2019-11-15 10:34:37'),
(241, NULL, 31, 8, 'amenity', '2019-11-15 10:34:37', '2019-11-15 10:34:37'),
(242, NULL, 31, 9, 'amenity', '2019-11-15 10:34:37', '2019-11-15 10:34:37'),
(243, NULL, 31, 10, 'amenity', '2019-11-15 10:34:37', '2019-11-15 10:34:37'),
(244, NULL, 31, 4, 'game', '2019-11-15 10:34:37', '2019-11-15 10:34:37'),
(245, NULL, 31, 7, 'game', '2019-11-15 10:34:37', '2019-11-15 10:34:37'),
(246, NULL, 31, 1, 'seasons', '2019-11-15 10:34:37', '2019-11-15 10:34:37'),
(247, NULL, 31, 2, 'seasons', '2019-11-15 10:34:37', '2019-11-15 10:34:37'),
(305, NULL, 1, 2, 'event', '2019-11-18 05:00:01', '2019-11-18 05:00:01'),
(306, NULL, 1, 3, 'event', '2019-11-18 05:00:01', '2019-11-18 05:00:01'),
(307, NULL, 1, 4, 'event', '2019-11-18 05:00:01', '2019-11-18 05:00:01'),
(308, NULL, 1, 6, 'amenity', '2019-11-18 05:00:01', '2019-11-18 05:00:01'),
(309, NULL, 1, 8, 'amenity', '2019-11-18 05:00:01', '2019-11-18 05:00:01'),
(310, NULL, 1, 4, 'game', '2019-11-18 05:00:01', '2019-11-18 05:00:01'),
(311, NULL, 1, 2, 'seasons', '2019-11-18 05:00:01', '2019-11-18 05:00:01'),
(312, NULL, 16, 1, 'event', '2019-11-18 05:00:45', '2019-11-18 05:00:45'),
(313, NULL, 16, 2, 'event', '2019-11-18 05:00:45', '2019-11-18 05:00:45'),
(314, NULL, 16, 3, 'event', '2019-11-18 05:00:45', '2019-11-18 05:00:45'),
(315, NULL, 16, 4, 'event', '2019-11-18 05:00:45', '2019-11-18 05:00:45'),
(316, NULL, 16, 6, 'amenity', '2019-11-18 05:00:45', '2019-11-18 05:00:45'),
(317, NULL, 16, 8, 'amenity', '2019-11-18 05:00:45', '2019-11-18 05:00:45'),
(318, NULL, 16, 9, 'amenity', '2019-11-18 05:00:45', '2019-11-18 05:00:45'),
(319, NULL, 16, 4, 'game', '2019-11-18 05:00:45', '2019-11-18 05:00:45'),
(320, NULL, 16, 7, 'game', '2019-11-18 05:00:45', '2019-11-18 05:00:45'),
(321, NULL, 16, 13, 'game', '2019-11-18 05:00:45', '2019-11-18 05:00:45'),
(322, NULL, 16, 1, 'seasons', '2019-11-18 05:00:45', '2019-11-18 05:00:45'),
(323, NULL, 16, 2, 'seasons', '2019-11-18 05:00:45', '2019-11-18 05:00:45'),
(324, NULL, 6, 2, 'event', '2019-11-18 05:22:54', '2019-11-18 05:22:54'),
(325, NULL, 6, 10, 'amenity', '2019-11-18 05:22:55', '2019-11-18 05:22:55'),
(326, NULL, 6, 12, 'amenity', '2019-11-18 05:22:55', '2019-11-18 05:22:55'),
(327, NULL, 6, 4, 'game', '2019-11-18 05:22:55', '2019-11-18 05:22:55'),
(328, NULL, 6, 13, 'game', '2019-11-18 05:22:55', '2019-11-18 05:22:55'),
(329, NULL, 6, 2, 'seasons', '2019-11-18 05:22:55', '2019-11-18 05:22:55'),
(330, NULL, 6, 3, 'seasons', '2019-11-18 05:22:55', '2019-11-18 05:22:55');

-- --------------------------------------------------------

--
-- Table structure for table `discount_deals`
--

CREATE TABLE `discount_deals` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci,
  `message_text` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `expiry_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `discount_deals`
--

INSERT INTO `discount_deals` (`id`, `category_id`, `user_id`, `title`, `message_text`, `image`, `description`, `expiry_date`, `type`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, '10% OFF your Wedding, Groom, or Bridal Shower Cake!', 'Print out this promotional page and bring it to us when you come in for your complimentary tasting and private appointment. Allow us to meet with you and If you plan on ordering your cake with us allow us to price your cake. Then, show us your print out and we will take 10% OFF our quoted price.', 'images/vendors/deals/1574074840seGQDdKmzOfWNfRcFkGh-t20_1312238515529-Pwc10011.jpg', 'Print out this promotional page and bring it to us when you come in for your complimentary tasting and private appointment. Allow us to meet with you and If you plan on ordering your cake with us allow us to price your cake. Then, show us your print out and we will take 10% OFF our quoted price.', NULL, NULL, '2019-11-18 05:21:02', '2019-11-18 05:30:40'),
(2, 1, 31, '10% OFF your Wedding, Groom, or Bridal Shower Cake!', 'I am interested in this deal for 10% OFF your Wedding, Groom, or Bridal Shower Cake! and would like to receive more information.', 'images/vendors/deals/1574075540tJoNNqIffCpibkBLY24B-t20_1312238515529-Pwc10011.jpg', 'Print out this promotional page and bring it to us when you come in for your complimentary tasting and private appointment. Allow us to meet with you and If you plan on ordering your cake with us allow us to price your cake. Then, show us your print out and we will take 10% OFF our quoted price.', NULL, NULL, '2019-11-18 05:42:20', '2019-11-18 05:42:20'),
(3, 1, 42, '10% OFF your Wedding, Groom, or Bridal Shower Cake!', 'Print out this promotional page and bring it to us when you come in for your complimentary tasting and private appointment. Allow us to meet with you and If you plan on ordering your cake with us allow us to price your cake. Then, show us your print out and we will take 10% OFF our quoted price.', 'images/vendors/deals/1574078583kxNQgABsZL3dhLICJujO-t20_1312238515529-Pwc10011.jpg', 'Print out this promotional page and bring it to us when you come in for your complimentary tasting and private appointment. Allow us to meet with you and If you plan on ordering your cake with us allow us to price your cake. Then, show us your print out and we will take 10% OFF our quoted price.', NULL, NULL, '2019-11-18 06:33:03', '2019-11-18 06:33:03'),
(4, 1, 31, '30% OFF your Wedding, Groom, or Bridal Shower Cake!', 'Print out this promotional page and bring it to us when you come in for your complimentary tasting and private appointment. Allow us to meet with you and If you plan on ordering your cake with us allow us to price your cake. Then, show us your print out and we will take 30% OFF our quoted price.', 'images/vendors/deals/1574079573trJHSsyfMtc9fUWH2xyX-t20_1312238515529-Pwc10011.jpg', 'Print out this promotional page and bring it to us when you come in for your complimentary tasting and private appointment. Allow us to meet with you and If you plan on ordering your cake with us allow us to price your cake. Then, show us your print out and we will take 30% OFF our quoted price.', '2019-11-30', NULL, '2019-11-18 06:49:33', '2019-11-18 06:49:33'),
(6, 1, 34, 'tt', 'de', 'images/vendors/deals/1574086150VYGtDOUyL7PRxJWyZvX0-about.png', 'des', '2019-11-16', NULL, '2019-11-18 08:39:10', '2019-11-18 08:39:10');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `name`, `description`, `slug`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Tests', 'Testing', 'test', NULL, 1, '2019-11-12 14:00:41', '2019-11-12 15:03:28'),
(2, 'Wedding', 'Wedding', 'wedding', NULL, 1, '2019-11-13 03:36:46', '2019-11-14 02:28:47'),
(3, 'Reception', 'Reception', 'reception', NULL, 1, '2019-11-13 03:37:17', '2019-11-13 03:37:17'),
(4, 'Baby Shower', 'Baby Shower', 'baby-shower', NULL, 1, '2019-11-13 03:38:50', '2019-11-18 08:03:52'),
(5, 'Retreat/ Team Building', 'Retreat/ Team Building', 'retreat-team-building', NULL, 1, '2019-11-13 03:38:58', '2019-11-13 03:38:58'),
(6, 'Date Night', 'Date Night', 'date-night', NULL, 1, '2019-11-13 03:39:10', '2019-11-13 03:39:10'),
(7, 'Birth Day', 'Birth Day', 'birth-day', NULL, 0, '2019-11-13 03:39:21', '2019-11-18 05:30:14'),
(8, 'Hot', 'Hot Des', 'hot', NULL, 0, '2019-11-13 15:05:42', '2019-11-18 05:30:29'),
(9, 'test', 'dfdfsdf sdfsd sdfds sfsdf', 'test-1', NULL, 1, '2019-11-14 07:59:35', '2019-11-14 07:59:35'),
(10, 'Event Type Demo', 'Demo Description', 'event-type-demo', NULL, 1, '2019-11-15 04:14:37', '2019-11-15 04:14:37'),
(11, 'Pool Part', 'DJ  full  and drinks.', 'pool-part', NULL, 0, '2019-11-18 04:57:44', '2019-11-18 05:30:18');

-- --------------------------------------------------------

--
-- Table structure for table `f_a_qs`
--

CREATE TABLE `f_a_qs` (
  `id` int(10) UNSIGNED NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci,
  `answer` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `f_a_qs`
--

INSERT INTO `f_a_qs` (`id`, `question`, `answer`, `user_id`, `category_id`, `status`, `created_at`, `updated_at`) VALUES
(2, 'sds', 'fgvfgfsfgdfddf', 31, 2, 1, '2019-11-14 02:20:39', '2019-11-14 02:20:46'),
(3, '1rfdgsss', '<p>sfgjhkhgjyr646121212</p>', 31, 1, 1, '2019-11-14 02:21:07', '2019-11-14 05:47:39'),
(5, 'It is a long established fact that a reader will be distracted by the readable', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', 33, 7, 1, '2019-11-14 02:42:56', '2019-11-14 02:42:56'),
(6, 'There are many variations of passages of Lorem Ipsum available?', 'There are many variations of passages of Lorem Ipsum available There are many variations of passages of Lorem Ipsum available There are many variations of passages of Lorem Ipsum available.', 33, 7, 1, '2019-11-14 04:19:42', '2019-11-14 04:19:42'),
(8, 'hellio', '<p>hee</p>', 34, 8, 1, '2019-11-14 04:32:28', '2019-11-14 04:32:28'),
(9, 'Demo question', '<p>Demo Answer</p>', 35, 15, 1, '2019-11-15 03:13:16', '2019-11-15 03:13:16'),
(10, 'sdws', '<p>sadsdsd</p>', 35, 1, 1, '2019-11-15 04:35:31', '2019-11-15 04:35:31'),
(11, 'Do you do custom code', '<p>Yes I do custom code</p>', 37, 31, 1, '2019-11-15 04:37:15', '2019-11-15 04:37:15'),
(12, '`12`21', '<p>121221</p>', 38, 1, 1, '2019-11-15 05:02:06', '2019-11-15 05:02:06'),
(13, 'It is a long established fact that a reader will be distracted ?', '<p>It is a long established fact that a reader will be distracted&nbsp;</p>\r\n\r\n<p>It is a long established fact that a reader will be distracted&nbsp;</p>\r\n\r\n<p>It is a long established fact that a reader will be distracted&nbsp;</p>\r\n\r\n<p>It is a long established fact that a reader will be distracted .</p>', 33, 16, 1, '2019-11-15 05:43:07', '2019-11-15 05:43:07'),
(14, 'Demo', '<p>Ander sjdkk&nbsp;</p>', 42, 39, 1, '2019-11-18 03:11:24', '2019-11-18 10:18:47'),
(15, 'qq', '<p>dfdd</p>', 34, 1, 1, '2019-11-18 04:37:38', '2019-11-18 04:37:38'),
(16, 'sds', '<p>sdsd</p>', 31, 1, 1, '2019-11-18 06:28:00', '2019-11-18 06:28:00'),
(17, 'Test', '<p>Test</p>', 42, 1, 1, '2019-11-18 07:24:25', '2019-11-18 07:24:25');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_11_09_040849_create_categories_table', 1),
(4, '2019_11_10_114533_create_vendor_categories_table', 2),
(5, '2019_11_12_172559_create_events_table', 3),
(6, '2019_11_12_172713_create_amenities_table', 3),
(8, '2019_11_13_111529_create_category_variations_table', 5),
(9, '2019_11_13_201236_create_seasons_table', 6),
(10, '2019_11_14_074420_create_f_a_qs_table', 7),
(11, '2019_11_14_075803_create_vendor_amenities_table', 8),
(12, '2019_11_14_075820_create_vendor_event_games_table', 8),
(14, '2019_11_15_065627_create_venues_table', 10),
(15, '2019_11_15_133350_create_styles_table', 11),
(16, '2019_11_14_124605_create_vendor_packages_table', 12),
(17, '2019_11_16_041359_create_package_meta_datas_table', 13),
(18, '2019_11_13_091032_create_vendor_category_meta_datas_table', 14),
(19, '2019_11_18_095419_create_discount_deals_table', 15);

-- --------------------------------------------------------

--
-- Table structure for table `package_meta_datas`
--

CREATE TABLE `package_meta_datas` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `package_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `package_meta_datas`
--

INSERT INTO `package_meta_datas` (`id`, `parent`, `package_id`, `category_id`, `user_id`, `type`, `key`, `key_value`, `created_at`, `updated_at`) VALUES
(84, 0, 7, 1, 31, 'amenities', 'amenity', '8', '2019-11-18 01:02:53', '2019-11-18 01:02:53'),
(85, 0, 7, 1, 31, 'events', 'event', '4', '2019-11-18 01:02:54', '2019-11-18 01:02:54'),
(87, 0, 6, 1, 34, 'addons', 't1', '25', '2019-11-18 01:52:59', '2019-11-18 01:52:59'),
(88, 0, 6, 1, 34, 'addons', 't2', '66', '2019-11-18 01:53:00', '2019-11-18 01:53:00'),
(89, 0, 6, 1, 34, 'addons', 'tt test', '90', '2019-11-18 02:15:17', '2019-11-18 02:15:17'),
(92, 0, 6, 1, 34, 'addons', 'decorate', '40', '2019-11-18 02:19:51', '2019-11-18 02:19:51'),
(93, 0, 6, 1, 34, 'addons', 'design', '80', '2019-11-18 02:19:51', '2019-11-18 02:19:51'),
(106, 0, 6, 1, 34, 'amenities', 'amenity', '6', '2019-11-18 05:01:20', '2019-11-18 05:01:20'),
(107, 0, 6, 1, 34, 'amenities', 'amenity', '8', '2019-11-18 05:01:20', '2019-11-18 05:01:20'),
(108, 0, 6, 1, 34, 'events', 'event', '2', '2019-11-18 05:01:20', '2019-11-18 05:01:20'),
(109, 0, 6, 1, 34, 'events', 'event', '3', '2019-11-18 05:01:20', '2019-11-18 05:01:20'),
(110, 0, 6, 1, 34, 'events', 'event', '4', '2019-11-18 05:01:21', '2019-11-18 05:01:21'),
(117, 0, 8, 1, 42, 'amenities', 'amenity', '6', '2019-11-18 10:24:52', '2019-11-18 10:24:52'),
(118, 0, 8, 1, 42, 'events', 'event', '2', '2019-11-18 10:24:52', '2019-11-18 10:24:52'),
(119, 0, 8, 1, 42, 'events', 'event', '4', '2019-11-18 10:24:52', '2019-11-18 10:24:52');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('bajwa9876470492@gmail.com', '$2y$10$w6Nzc11m9jJ5qxqsW7JhTuEFwHq0udXcINIVH3bdaNNbZnp.Tqb1m', '2019-11-12 10:46:03');

-- --------------------------------------------------------

--
-- Table structure for table `seasons`
--

CREATE TABLE `seasons` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seasons`
--

INSERT INTO `seasons` (`id`, `name`, `description`, `slug`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Hots', 'Hot Des', 'hots', NULL, 0, '2019-11-13 15:07:45', '2019-11-18 03:57:12'),
(2, 'Summer Season', 'Summer Desc', 'summer-season', NULL, 0, '2019-11-15 04:17:49', '2019-11-18 03:57:16'),
(3, 'Winter season', 'Winter season desc', 'my-new-season', NULL, 1, '2019-11-15 22:57:50', '2019-11-15 23:00:14');

-- --------------------------------------------------------

--
-- Table structure for table `styles`
--

CREATE TABLE `styles` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `styles`
--

INSERT INTO `styles` (`id`, `slug`, `description`, `title`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'style', 'Demo des', 'Demo', '1573834276.png', 1, '2019-11-15 09:37:28', '2019-11-15 10:41:16'),
(2, 'demo2-style', 'st', 'demo2 style', '1573885203.png', 1, '2019-11-16 00:50:03', '2019-11-16 00:54:51');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'user',
  `profile_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `first_name`, `last_name`, `email`, `email_verified_at`, `password`, `role`, `profile_image`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', NULL, NULL, 'admin@gmail.com', NULL, '$2y$10$vR9Oj5Bbl.QAsnS5D7GeR.LgD/gTOO9Sqpl17GScWUZeO07dbTXii', 'admin', 'images/admin/1573645323TGCUAduttOoNN0NQAJYl-220px-User_icon_2.svg.png', 'FUEHZ2ruHFo3IUhRlhYjMh4NtQSVid1nBNGHgfVGP9mZ47tTBRerQ1WcWie0', '2019-11-09 00:19:35', '2019-11-13 06:12:03'),
(31, 'Narinder Bajwa', 'Narinder', 'Bajwa', 'bajwa7696346232@gmail.com', '2019-11-12 07:02:09', '$2y$10$he8YxmZeBwdKAMqcbtQ0/.aJqTWo1Nxpm/WCKXK2XaEZAAJUE7Hc.', 'vendor', 'images/vendors/profile/1573745727INNHnbWOrmoe5iQlrdT7-bulb.png', 'yrNN9QEIEwXMojaOs4r0dSdcYnyP3U6m6AoMrjP8vg6ynVaCvMOrSCGp8ugZ', '2019-11-12 06:11:13', '2019-11-14 10:05:27'),
(32, 'Narinder Bajwa', 'Narinder', 'Bajwa', 'bajwa9876470492@gmail.com', NULL, '$2y$10$tiBVNqE4PMLEbmyfMNH9/eXn4rkSKw0uHTNdeFJEALg2yBdwB04JG', 'user', NULL, NULL, '2019-11-12 06:25:25', '2019-11-12 06:25:25'),
(33, 'hitesh sharma', 'hitesh', 'sharma', 'hitesh22791@gmail.com', '2019-11-13 18:30:00', '$2y$10$o6TsuB0J0za0EknNojA7g.B304Cg3SRfIqrJU7QQZKSxgCYb5FpGi', 'vendor', NULL, 'bQwDfUu3KtVrucVHlQsExgoqoz94JdTYRxHSTTIdUuhK10p2IT2mPnTjPNLV', '2019-11-14 02:17:10', '2019-11-14 02:17:10'),
(34, 'vendor s', 'vendor', 's', 'vendor001@yopmail.com', '2019-11-14 04:22:00', '$2y$10$3nhw3wasoho0VKY52ffgHO7/OBu5wNz0O4r2SXSQrtzktEnI3YI5K', 'vendor', NULL, 'ExWpgRQSZ6hYIoDy4aCaH3zMz2Vf1SNqOvUkeT2eK6NWZ5CBh4OJVVtkVp1C', '2019-11-14 04:19:37', '2019-11-14 04:22:00'),
(35, 'Kanny Gill', 'Kanny', 'Gill', 'kanny@yopmail.com', '2019-11-15 03:06:31', '$2y$10$XZA0JR6bHi1MSANa86u8jOncOCBPT7wFdxaq5RZBjLIYW992ssDA.', 'vendor', NULL, 'Xrl2c1Wi9CoObL6isRFEmDk1wHPpScmBBteayDW2fjF1aVKrOBVdDIAZgx2W', '2019-11-15 03:06:02', '2019-11-15 03:06:31'),
(36, 'Kanny Rajput', 'Kanny', 'Rajput', 'kannyraj@yopmail.com', '2019-11-15 04:27:34', '$2y$10$05CiO5N1YnlHK2qAV493Kub/2oQ1PkscvvcNJ5lEeupu.MNxtrT7m', 'vendor', NULL, 'MiJiNw0hILOy4O7TcVXUAYem6b3hAujmp6kbR0rc2B8ILItRzt4iDwxj4wnI', '2019-11-15 04:27:09', '2019-11-15 04:27:34'),
(37, 'Kanny Singhh', 'Kanny', 'Singhh', 'kannysingh@yopmail.com', '2019-11-15 04:30:26', '$2y$10$D43XORx9FPYbJXJu2L7CkuJsKI9ywXPjNOXoVhPi9iegyE5tXy7h2', 'vendor', NULL, 'Moa9zHEdREFzRSFG7DNs2fDCSMEFPyGiUGOgan9FxOFj4TjsZNcdLF5CgwIa', '2019-11-15 04:30:08', '2019-11-15 04:30:26'),
(38, 'Yuvraj Bajwa', 'Yuvraj', 'Bajwa', 'yuvi@gmail.com', '2019-11-14 18:30:00', '$2y$10$nNsAZlbUjk5MQejC/gAcO.00QkIKDfJI7cODHa4OT8KQ96SGWFRqW', 'vendor', NULL, NULL, '2019-11-15 04:51:50', '2019-11-15 04:51:50'),
(39, 'HYCINTH YIMGA', 'HYCINTH', 'YIMGA', 'contactfavorville@gmail.com', '2019-11-15 16:20:30', '$2y$10$6Nq8e2EhE6Xp2/r7pSISb.cvfxbVENNgwPDeu4MZ0PIzm6a6/dEBe', 'user', NULL, 'HZfumDTztXkugyIUn7sXHgtJXprsW6Cp5e12T6rnJug0qChroiHGZY8eRyGQ', '2019-11-15 16:20:15', '2019-11-15 16:20:30'),
(40, 'Test Test', 'Test', 'Test', 'yimgah@outlook.com', '2019-11-15 16:26:13', '$2y$10$7i8QLKLRZvQS/aoDt/OWTuit05TjXMX9wkMMKzmDsT14wJ5IVIi3a', 'vendor', NULL, 'J6E8MXFU30Ds9mL0aBKSunr2UePU5F1PnmAIskQMBnUNQbbWXh1U7HDemJ0j', '2019-11-15 16:26:02', '2019-11-15 16:26:13'),
(41, 'Ivery High', 'Ivery', 'High', 'ihigh@masonlive.gmu.edu', '2019-11-15 19:10:31', '$2y$10$I3FxreZ4zHuUEns6VhcvmOCU7T5DvjU/j91f3YxUoUUXVzZFyDpjK', 'vendor', NULL, NULL, '2019-11-15 19:09:57', '2019-11-15 19:10:31'),
(42, 'Jaskaran Singh', 'Jaskaran', 'Singh', 'jaskaran@yopmail.com', '2019-11-18 03:05:55', '$2y$10$24fdx3W1i9M2GLFjlOeUXuE2H7reNsX/Nsixl/ou8JxPIB.2EmZh.', 'vendor', NULL, 'PmwFRC1JmT3uJbPrA1i2lMR9eMRwYFjhGlm9aXEUbvRFDSHnYbJGsvj08RrV', '2019-11-18 03:05:38', '2019-11-18 03:05:55'),
(43, 'karan singh', 'karan', 'singh', 'karan@yopmail.com', '2019-11-18 04:02:59', '$2y$10$/HFJc7wVlgEDh.Uiyier1O8wxUmYr6kohUh4c7KizeLcVHlVFyKPe', 'vendor', NULL, NULL, '2019-11-18 04:02:23', '2019-11-18 04:02:59');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_amenities`
--

CREATE TABLE `vendor_amenities` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `amenity_id` int(11) DEFAULT NULL,
  `category_id` int(11) NOT NULL DEFAULT '0',
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendor_amenities`
--

INSERT INTO `vendor_amenities` (`id`, `parent`, `user_id`, `amenity_id`, `category_id`, `status`, `created_at`, `updated_at`) VALUES
(24, 0, 31, 6, 1, NULL, '2019-11-14 04:14:15', '2019-11-14 04:14:15'),
(25, 0, 35, 8, 1, NULL, '2019-11-15 04:08:52', '2019-11-15 04:08:52'),
(26, 0, 35, 6, 1, NULL, '2019-11-15 04:10:02', '2019-11-15 04:10:02'),
(27, 0, 37, 6, 31, NULL, '2019-11-15 04:43:26', '2019-11-15 04:43:26'),
(28, 0, 37, 9, 31, NULL, '2019-11-15 04:43:26', '2019-11-15 04:43:26'),
(29, 0, 38, 8, 1, NULL, '2019-11-15 05:02:54', '2019-11-15 05:02:54'),
(30, 0, 37, 8, 31, NULL, '2019-11-15 10:34:45', '2019-11-15 10:34:45'),
(36, 0, 34, 8, 1, NULL, '2019-11-16 00:08:10', '2019-11-16 00:08:10'),
(37, 0, 42, 8, 1, NULL, '2019-11-18 03:14:49', '2019-11-18 03:14:49'),
(38, 0, 31, 8, 1, NULL, '2019-11-18 03:14:57', '2019-11-18 03:14:57'),
(39, 0, 42, 6, 1, NULL, '2019-11-18 07:25:11', '2019-11-18 07:25:11');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_categories`
--

CREATE TABLE `vendor_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendor_categories`
--

INSERT INTO `vendor_categories` (`id`, `parent`, `user_id`, `category_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 31, 1, 1, '2019-11-12 07:08:21', '2019-11-12 07:08:21'),
(2, 0, 31, 3, 1, '2019-11-12 07:08:21', '2019-11-12 07:08:21'),
(3, 0, 31, 2, 1, '2019-11-12 07:08:21', '2019-11-12 07:08:21'),
(4, 3, 31, 3, 1, '2019-11-12 07:08:21', '2019-11-12 07:08:21'),
(5, 3, 31, 4, 1, '2019-11-12 07:08:21', '2019-11-12 07:08:21'),
(6, 0, 33, 4, 1, '2019-11-14 02:22:20', '2019-11-14 02:22:20'),
(7, 0, 33, 16, 1, '2019-11-14 02:22:20', '2019-11-14 02:22:20'),
(8, 0, 34, 1, 1, '2019-11-14 04:22:58', '2019-11-14 04:22:58'),
(14, 1, 31, 30, 1, '2019-11-14 05:45:12', '2019-11-14 05:45:12'),
(15, 0, 35, 1, 1, '2019-11-15 03:08:41', '2019-11-15 03:08:41'),
(17, 15, 35, 29, 1, '2019-11-15 04:05:35', '2019-11-15 04:05:35'),
(19, 1, 31, 29, 1, '2019-11-15 04:20:33', '2019-11-15 04:20:33'),
(20, 0, 37, 31, 1, '2019-11-15 04:31:27', '2019-11-15 04:31:27'),
(22, 0, 37, 1, 1, '2019-11-15 04:31:27', '2019-11-15 04:31:27'),
(23, 22, 37, 2, 1, '2019-11-15 04:31:27', '2019-11-15 04:31:27'),
(24, 0, 36, 1, 1, '2019-11-15 04:40:46', '2019-11-15 04:40:46'),
(25, 24, 36, 2, 1, '2019-11-15 04:40:46', '2019-11-15 04:40:46'),
(26, 24, 36, 3, 1, '2019-11-15 04:40:46', '2019-11-15 04:40:46'),
(27, 20, 37, 32, 1, '2019-11-15 04:41:13', '2019-11-15 04:41:13'),
(28, 0, 38, 1, 1, '2019-11-15 04:55:07', '2019-11-15 04:55:07'),
(29, 0, 38, 2, 1, '2019-11-15 04:55:07', '2019-11-15 04:55:07'),
(30, 28, 38, 29, 1, '2019-11-15 05:02:41', '2019-11-15 05:02:41'),
(31, 28, 38, 30, 1, '2019-11-15 05:02:41', '2019-11-15 05:02:41'),
(32, 0, 40, 16, 1, '2019-11-15 16:27:17', '2019-11-15 16:27:17'),
(33, 0, 40, 18, 1, '2019-11-15 16:27:17', '2019-11-15 16:27:17'),
(34, 0, 40, 20, 1, '2019-11-15 16:27:17', '2019-11-15 16:27:17'),
(35, 0, 40, 22, 1, '2019-11-15 16:27:17', '2019-11-15 16:27:17'),
(36, 0, 41, 14, 1, '2019-11-15 19:23:41', '2019-11-15 19:23:41'),
(37, 0, 41, 16, 1, '2019-11-15 19:23:41', '2019-11-15 19:23:41'),
(38, 0, 41, 18, 1, '2019-11-15 19:23:41', '2019-11-15 19:23:41'),
(39, 0, 42, 1, 1, '2019-11-18 03:06:56', '2019-11-18 03:06:56'),
(40, 39, 42, 29, 1, '2019-11-18 03:13:52', '2019-11-18 03:13:52'),
(41, 39, 42, 30, 1, '2019-11-18 03:13:52', '2019-11-18 03:13:52'),
(42, 0, 43, 6, 1, '2019-11-18 04:04:00', '2019-11-18 04:04:00'),
(43, 42, 43, 31, 1, '2019-11-18 05:10:14', '2019-11-18 05:10:14');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_category_meta_datas`
--

CREATE TABLE `vendor_category_meta_datas` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyValue` text COLLATE utf8mb4_unicode_ci,
  `user_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendor_category_meta_datas`
--

INSERT INTO `vendor_category_meta_datas` (`id`, `parent`, `key`, `type`, `keyValue`, `user_id`, `category_id`, `created_at`, `updated_at`) VALUES
(34, 0, 'season', 'seasons', '2', 34, 1, '2019-11-16 00:28:02', '2019-11-16 00:28:02'),
(35, 0, 'season', 'seasons', '3', 34, 1, '2019-11-16 00:28:02', '2019-11-16 00:28:02'),
(56, NULL, 'styles', 'styles', '', 34, 1, '2019-11-16 00:53:47', '2019-11-16 00:53:47'),
(58, 0, 'style', 'styles', '1', 34, 1, '2019-11-16 00:59:43', '2019-11-16 00:59:43'),
(59, NULL, 'business_name', 'basic_information', 'Jason Rhee Photography', 31, 1, '2019-11-18 02:55:00', '2019-11-18 03:08:17'),
(60, NULL, 'address', 'basic_information', '<p>232 Campora Drive, Northvale, Northvale, NJ 0764</p>', 31, 1, '2019-11-18 02:55:00', '2019-11-18 03:08:17'),
(61, NULL, 'website', 'basic_information', 'http://49.249.236.30:6633/', 31, 1, '2019-11-18 02:55:00', '2019-11-18 03:08:17'),
(62, NULL, 'phone_number', 'basic_information', '7696346232', 31, 1, '2019-11-18 02:55:01', '2019-11-18 03:08:17'),
(63, NULL, 'company', 'basic_information', 'Jason Rhee Photography', 31, 1, '2019-11-18 02:55:01', '2019-11-18 03:08:17'),
(64, NULL, 'travel_distaince', 'basic_information', '100', 31, 1, '2019-11-18 02:55:01', '2019-11-18 03:08:17'),
(65, NULL, 'min_price', 'basic_information', '3,300', 31, 1, '2019-11-18 02:55:01', '2019-11-18 03:08:17'),
(66, NULL, 'business_name', 'basic_information', 'Jaskaran Wedding Photographer', 42, 1, '2019-11-18 03:07:10', '2019-11-18 03:08:49'),
(67, NULL, 'address', 'basic_information', '<p>New York</p>', 42, 1, '2019-11-18 03:07:10', '2019-11-18 03:08:49'),
(68, NULL, 'website', 'basic_information', 'https://jaspho.com', 42, 1, '2019-11-18 03:07:10', '2019-11-18 03:08:49'),
(69, NULL, 'phone_number', 'basic_information', '9878979877', 42, 1, '2019-11-18 03:07:10', '2019-11-18 03:08:49'),
(70, NULL, 'company', 'basic_information', 'Test', 42, 1, '2019-11-18 03:07:10', '2019-11-18 03:08:49'),
(71, NULL, 'travel_distaince', 'basic_information', '100', 42, 1, '2019-11-18 03:07:10', '2019-11-18 03:08:49'),
(72, NULL, 'min_price', 'basic_information', '1500', 42, 1, '2019-11-18 03:07:10', '2019-11-18 03:08:49'),
(73, NULL, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/1574066372R4dgYu7Fq6jVQPeTHaem-photo-1551592398-c320012bc1c6.jpeg', 42, 1, '2019-11-18 03:09:32', '2019-11-18 03:09:32'),
(74, NULL, 'video', 'videoGallery', '{"title":"Test","link":"https:\\/\\/www.youtube.com\\/embed\\/b7FNvq11CEw"}', 42, 1, '2019-11-18 03:11:10', '2019-11-18 03:11:10'),
(75, NULL, 'description', 'description', '<p>Lorium Epsum Test data is fine</p>', 42, 1, '2019-11-18 03:11:29', '2019-11-18 07:24:43'),
(76, NULL, 'styles', 'styles', '', 42, 1, '2019-11-18 03:11:49', '2019-11-18 03:11:49'),
(78, 0, 'season', 'seasons', '2', 42, 1, '2019-11-18 03:15:44', '2019-11-18 03:15:44'),
(79, NULL, 'description', 'description', '<p>sdsd</p>', 31, 1, '2019-11-18 03:18:20', '2019-11-18 06:28:08'),
(88, 0, 'season', 'seasons', '2', 31, 1, '2019-11-18 03:42:32', '2019-11-18 03:42:32'),
(89, NULL, 'styles', 'styles', '', 31, 1, '2019-11-18 03:48:52', '2019-11-18 03:48:52'),
(90, NULL, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/1574069245MtI1hSHKskfqtunIbNfP-grey-statistics.png', 31, 1, '2019-11-18 03:57:25', '2019-11-18 03:57:25'),
(91, NULL, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/1574069245V93WV2sbBytWDBso56ZD-marketing.png', 31, 1, '2019-11-18 03:57:25', '2019-11-18 03:57:25'),
(92, NULL, 'business_name', 'basic_information', '', 43, 6, '2019-11-18 04:06:50', '2019-11-18 04:06:50'),
(93, NULL, 'address', 'basic_information', '', 43, 6, '2019-11-18 04:06:50', '2019-11-18 04:06:50'),
(94, NULL, 'website', 'basic_information', '', 43, 6, '2019-11-18 04:06:50', '2019-11-18 04:06:50'),
(95, NULL, 'phone_number', 'basic_information', '', 43, 6, '2019-11-18 04:06:50', '2019-11-18 04:06:50'),
(96, NULL, 'company', 'basic_information', '', 43, 6, '2019-11-18 04:06:50', '2019-11-18 04:06:50'),
(97, NULL, 'travel_distaince', 'basic_information', '', 43, 6, '2019-11-18 04:06:50', '2019-11-18 04:06:50'),
(98, NULL, 'min_price', 'basic_information', '', 43, 6, '2019-11-18 04:06:50', '2019-11-18 04:06:50'),
(99, NULL, 'business_name', 'basic_information', 'new test', 34, 1, '2019-11-18 04:14:48', '2019-11-18 10:10:16'),
(100, NULL, 'address', 'basic_information', '<p>asssss</p>', 34, 1, '2019-11-18 04:14:48', '2019-11-18 10:10:16'),
(101, NULL, 'website', 'basic_information', 'http://google.com', 34, 1, '2019-11-18 04:14:48', '2019-11-18 10:10:16'),
(102, NULL, 'phone_number', 'basic_information', '257882465', 34, 1, '2019-11-18 04:14:48', '2019-11-18 10:10:16'),
(103, NULL, 'company', 'basic_information', 'asadsa', 34, 1, '2019-11-18 04:14:48', '2019-11-18 10:10:16'),
(104, NULL, 'travel_distaince', 'basic_information', '545', 34, 1, '2019-11-18 04:14:48', '2019-11-18 10:10:16'),
(105, NULL, 'min_price', 'basic_information', '52ss', 34, 1, '2019-11-18 04:14:48', '2019-11-18 10:12:40'),
(106, NULL, 'description', 'description', '<p>hello description</p>', 34, 1, '2019-11-18 04:37:49', '2019-11-18 07:22:03'),
(107, NULL, 'styles', 'styles', '', 43, 6, '2019-11-18 05:01:29', '2019-11-18 05:01:29'),
(108, NULL, 'description', 'description', NULL, 43, 6, '2019-11-18 05:01:36', '2019-11-18 05:08:51'),
(110, NULL, 'video', 'videoGallery', '{"title":"jassi12@","link":"vvsdvbxzvbxzvfd"}', 43, 6, '2019-11-18 05:07:52', '2019-11-18 05:07:52'),
(114, NULL, 'prohibtion', 'prohibtion', '<p>Prohibtion &amp; Restrictionsss</p>', 31, 1, '2019-11-18 05:57:10', '2019-11-18 06:06:41'),
(115, NULL, 'video', 'videoGallery', '{"title":"sds","link":"https:\\/\\/www.weddingwire.com\\/biz\\/palermo-bakery-ridgefield-park\\/ff3650e4b7d6a447.html"}', 31, 1, '2019-11-18 06:27:38', '2019-11-18 06:27:38'),
(122, 0, 'style', 'styles', '1', 31, 1, '2019-11-18 06:37:29', '2019-11-18 06:37:29'),
(123, NULL, 'prohibtion', 'prohibtion', '<p>Dummy Text description</p>', 42, 1, '2019-11-18 07:20:48', '2019-11-18 07:26:49'),
(124, NULL, 'video', 'videoGallery', '{"title":"Demo","link":"https:\\/\\/www.youtube.com\\/embed\\/mey12by3-XU"}', 42, 1, '2019-11-18 07:24:11', '2019-11-18 07:24:11'),
(125, 0, 'style', 'styles', '1', 42, 1, '2019-11-18 07:24:50', '2019-11-18 07:24:50'),
(126, 0, 'style', 'styles', '2', 42, 1, '2019-11-18 07:24:50', '2019-11-18 07:24:50'),
(127, NULL, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/1574087731bNsLGuspDudeCPw2gghU-about.png', 34, 1, '2019-11-18 09:05:31', '2019-11-18 09:05:31'),
(128, NULL, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/157408779359R5PoH8p0GFsUqgYHAX-Computer-Wallpapers-26-1600-x-1200.jpg', 34, 1, '2019-11-18 09:06:33', '2019-11-18 09:06:33');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_event_games`
--

CREATE TABLE `vendor_event_games` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL,
  `category_id` int(11) NOT NULL DEFAULT '0',
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendor_event_games`
--

INSERT INTO `vendor_event_games` (`id`, `parent`, `user_id`, `event_id`, `category_id`, `status`, `created_at`, `updated_at`) VALUES
(3, 0, 31, 4, 1, NULL, '2019-11-14 04:39:54', '2019-11-14 04:39:54'),
(5, 0, 31, 3, 1, NULL, '2019-11-14 09:25:08', '2019-11-14 09:25:08'),
(6, 0, 35, 4, 1, NULL, '2019-11-15 04:11:05', '2019-11-15 04:11:05'),
(7, 0, 35, 3, 1, NULL, '2019-11-15 04:16:45', '2019-11-15 04:16:45'),
(8, 0, 37, 2, 31, NULL, '2019-11-15 04:44:06', '2019-11-15 04:44:06'),
(9, 0, 37, 4, 31, NULL, '2019-11-15 04:44:06', '2019-11-15 04:44:06'),
(10, 0, 38, 4, 1, NULL, '2019-11-15 05:02:58', '2019-11-15 05:02:58'),
(11, 0, 34, 4, 1, NULL, '2019-11-16 01:50:54', '2019-11-16 01:50:54'),
(12, 0, 42, 3, 1, NULL, '2019-11-18 03:15:18', '2019-11-18 03:15:18'),
(14, 0, 43, 1, 6, NULL, '2019-11-18 04:45:53', '2019-11-18 04:45:53'),
(15, 0, 43, 3, 6, NULL, '2019-11-18 04:45:53', '2019-11-18 04:45:53');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_packages`
--

CREATE TABLE `vendor_packages` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `no_of_hours` int(11) NOT NULL,
  `no_of_days` int(191) NOT NULL,
  `menus` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `price_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `min_person` int(11) NOT NULL,
  `max_person` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendor_packages`
--

INSERT INTO `vendor_packages` (`id`, `title`, `slug`, `description`, `category_id`, `user_id`, `price`, `no_of_hours`, `no_of_days`, `menus`, `price_type`, `min_person`, `max_person`, `status`, `created_at`, `updated_at`) VALUES
(6, 'Lorem', 'ff', '<p>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry.</p>', 1, 34, 2, 6, 0, '<ul>\r\n	<li>Lorem Ipsum&nbsp;is simply dummy</li>\r\n	<li>Lorem Ipsum&nbsp;is simply dummy</li>\r\n	<li>Lorem Ipsum&nbsp;is simply dummy</li>\r\n	<li>Lorem Ipsum&nbsp;is simply dummy</li>\r\n</ul>', 'fix', 5, 7, 1, '2019-11-16 05:59:54', '2019-11-18 02:52:18'),
(7, 'ti', 'ti', '<p>desc</p>', 1, 31, 500, 5, 0, '<p>me</p>', 'per_person', 1, 100, 1, '2019-11-18 01:02:53', '2019-11-18 01:02:53'),
(8, 'Silver Package', 'pack', '<p>Lorium Ipsum is simply a dummy package so that we can bless it according to the needs.</p>', 1, 42, 8, 5, 5, '<p>No</p>', 'per_person', 1, 100, 1, '2019-11-18 03:18:39', '2019-11-18 05:30:23'),
(9, 'Contrary', 'contrary', '<p>Contrary to popular belief&nbsp;Contrary to popular belief&nbsp;Contrary to popular belief&nbsp;Contrary to popular belief</p>', 16, 33, 400, 5, 3, '<ul>\r\n	<li>Contrary to popular belief</li>\r\n	<li>Contrary to popular belief</li>\r\n	<li>Contrary to popular belief</li>\r\n	<li>Contrary to popular belief</li>\r\n</ul>', 'per_person', 4, 4, 1, '2019-11-18 04:42:03', '2019-11-18 04:42:03');

-- --------------------------------------------------------

--
-- Table structure for table `venues`
--

CREATE TABLE `venues` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `venues`
--

INSERT INTO `venues` (`id`, `slug`, `description`, `title`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'tt', 'Its good place', 'New York', '1573814666.jpeg', 1, '2019-11-15 04:24:14', '2019-11-15 06:01:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `amenities`
--
ALTER TABLE `amenities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_variations`
--
ALTER TABLE `category_variations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discount_deals`
--
ALTER TABLE `discount_deals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `f_a_qs`
--
ALTER TABLE `f_a_qs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package_meta_datas`
--
ALTER TABLE `package_meta_datas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seasons`
--
ALTER TABLE `seasons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `styles`
--
ALTER TABLE `styles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor_amenities`
--
ALTER TABLE `vendor_amenities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor_categories`
--
ALTER TABLE `vendor_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor_category_meta_datas`
--
ALTER TABLE `vendor_category_meta_datas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor_event_games`
--
ALTER TABLE `vendor_event_games`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor_packages`
--
ALTER TABLE `vendor_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `venues`
--
ALTER TABLE `venues`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `amenities`
--
ALTER TABLE `amenities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `category_variations`
--
ALTER TABLE `category_variations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=331;
--
-- AUTO_INCREMENT for table `discount_deals`
--
ALTER TABLE `discount_deals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `f_a_qs`
--
ALTER TABLE `f_a_qs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `package_meta_datas`
--
ALTER TABLE `package_meta_datas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;
--
-- AUTO_INCREMENT for table `seasons`
--
ALTER TABLE `seasons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `styles`
--
ALTER TABLE `styles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `vendor_amenities`
--
ALTER TABLE `vendor_amenities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `vendor_categories`
--
ALTER TABLE `vendor_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `vendor_category_meta_datas`
--
ALTER TABLE `vendor_category_meta_datas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;
--
-- AUTO_INCREMENT for table `vendor_event_games`
--
ALTER TABLE `vendor_event_games`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `vendor_packages`
--
ALTER TABLE `vendor_packages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `venues`
--
ALTER TABLE `venues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
