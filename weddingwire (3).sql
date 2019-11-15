-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 15, 2019 at 09:42 PM
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
(11, 'dsfsdf', 'sdfsd', 'dsfsdf', NULL, 'amenity', 1, '2019-11-15 04:46:34', '2019-11-15 04:46:34');

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
  `meta_tag` text COLLATE utf8mb4_unicode_ci,
  `meta_description` longtext COLLATE utf8mb4_unicode_ci,
  `featured` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent`, `label`, `subparent`, `sorting`, `slug`, `status`, `created_at`, `updated_at`, `description`, `image`, `thumbnail_image`, `meta_title`, `meta_tag`, `meta_description`, `featured`) VALUES
(1, 0, 'Photography', 0, 26, 'photography', 1, '2019-11-09 02:43:13', '2019-11-15 04:14:00', NULL, '', '', 'photography', 'photography', 'photography', 0),
(2, 0, 'Catering', 0, 27, 'catering', 1, '2019-11-09 03:28:53', '2019-11-15 04:14:00', NULL, '', '', 'photography', 'photography', 'kgiuiu', 1),
(3, 2, 'Food', 0, 2, 'food', 1, '2019-11-09 03:41:39', '2019-11-13 05:21:43', NULL, '', '', 'huh', 'ljoj', 'hgigy', 0),
(4, 2, 'Demo', 0, 1, 'demo', 1, '2019-11-09 03:44:29', '2019-11-13 05:21:43', NULL, '', '', 'Test', 'Test', 'Test', 0),
(5, 0, 'Transportation', 0, 2, 'transportation', 1, '2019-11-13 02:48:49', '2019-11-15 04:14:03', NULL, '', '', 'Transportation', 'Transportation', 'Transportation', 1),
(6, 0, 'Balloons', 0, 6, 'balloons', 1, '2019-11-13 02:49:07', '2019-11-15 04:13:59', NULL, '', '', 'Balloons', 'Balloons', 'Balloons', 1),
(7, 0, 'Bands', 0, 3, 'bands', 1, '2019-11-13 02:49:22', '2019-11-15 04:13:58', NULL, '', '', 'Bands', 'Bands', 'Bands', 1),
(8, 0, 'Catering/ Beverages', 0, 5, 'catering-beverages', 1, '2019-11-13 02:49:53', '2019-11-15 04:13:59', NULL, '', '', 'Catering/ Beverages', 'Catering/ Beverages', 'Catering/ Beverages', 1),
(9, 0, 'Churches/Temples', 0, 7, 'churches-temples', 1, '2019-11-13 02:50:23', '2019-11-15 04:13:59', NULL, '', '', 'Churches/Temples', 'Churches/Temples', 'Churches/Temples', 1),
(10, 0, 'Musicians/Instrumentalist', 0, 8, 'musicians-instrumentalist', 1, '2019-11-13 02:50:46', '2019-11-15 04:13:59', NULL, '', '', 'Musicians/Instrumentalist', 'Musicians/Instrumentalist', 'Musicians/Instrumentalist', 1),
(11, 0, 'Venues', 0, 9, 'venues', 1, '2019-11-13 02:51:29', '2019-11-15 04:13:59', NULL, '', '', 'Venues', 'Venues', 'Venues', 1),
(12, 0, 'Flowers/Florist', 0, 11, 'flowers-florist', 1, '2019-11-13 02:51:44', '2019-11-15 04:13:59', NULL, '', '', 'Flowers/Florist', 'Flowers/Florist', 'Flowers/Florist', 1),
(13, 0, 'Clothing/Dressing and Jewelries', 0, 10, 'clothing-dressing-and-jewelries', 1, '2019-11-13 02:52:02', '2019-11-15 04:13:59', NULL, '', '', 'Clothing/Dressing and Jewelries', 'Clothing/Dressing and Jewelries', 'Clothing/Dressing and Jewelries', 1),
(14, 0, 'Beauty and Health', 0, 12, 'beauty-and-health', 1, '2019-11-13 02:52:35', '2019-11-15 04:13:59', NULL, '', '', 'Beauty and Health', 'Beauty and Health', 'Beauty and Health', 1),
(15, 0, 'Staffing/Officiants', 0, 13, 'staffing-officiants', 1, '2019-11-13 02:52:54', '2019-11-15 04:13:59', NULL, '', '', 'Staffing/Officiants', 'Staffing/Officiants', 'Staffing/Officiants', 1),
(16, 0, 'Photography/Videography', 0, 14, 'photography-videography', 1, '2019-11-13 02:53:14', '2019-11-15 04:13:59', NULL, '', '', 'Photography/Videography', 'Photography/Videography', 'Photography/Videography', 1),
(17, 0, 'Party/Event Rental', 0, 15, 'party-event-rental', 1, '2019-11-13 02:53:35', '2019-11-15 04:13:59', NULL, '', '', 'Party/Event Rental', 'Party/Event Rental', 'Party/Event Rental', 1),
(18, 0, 'DJ/Entertainment/MC', 0, 16, 'dj-entertainment-mc', 1, '2019-11-13 02:56:51', '2019-11-15 04:13:59', NULL, '', '', 'DJ/Entertainment/MC', 'DJ/Entertainment/MC', 'DJ/Entertainment/MC', 1),
(19, 0, 'Entertainer', 0, 17, 'entertainer', 1, '2019-11-13 03:33:22', '2019-11-15 04:13:59', NULL, '', '', 'Entertainer', 'Entertainer', 'Entertainer', 1),
(20, 0, 'Event Planner', 0, 18, 'event-planner', 1, '2019-11-13 03:34:21', '2019-11-15 04:13:59', NULL, '', '', 'Event Planner', 'Event Planner', 'Event Planner', 1),
(21, 0, 'Funeral Service', 0, 19, 'funeral-service', 1, '2019-11-13 03:34:36', '2019-11-15 04:13:59', NULL, '', '', 'Funeral Service', 'Funeral Service', 'Funeral Service', 1),
(22, 0, 'Printing/Stationary Services', 0, 20, 'printing-stationary-services', 1, '2019-11-13 03:34:51', '2019-11-15 04:13:59', NULL, '', '', 'Printing/Stationary Services', 'Printing/Stationary Services', 'Printing/Stationary Services', 1),
(23, 0, 'Lodging', 0, 21, 'lodging', 1, '2019-11-13 03:35:02', '2019-11-15 04:13:59', NULL, '', '', 'Lodging', 'Lodging', 'Lodging', 1),
(24, 0, 'Cake', 0, 22, 'cake', 1, '2019-11-13 03:35:12', '2019-11-15 04:13:59', NULL, '', '', 'Cake', 'Cake', 'Cake', 1),
(25, 0, 'Decoration', 0, 23, 'decoration', 1, '2019-11-13 03:35:23', '2019-11-15 04:13:59', NULL, '', '', 'Decoration', 'Decoration', 'Decoration', 1),
(26, 0, 'Favors/Gift Registry', 0, 24, 'favors-gift-registry', 1, '2019-11-13 03:35:38', '2019-11-15 04:13:59', NULL, '', '', 'Favors/Gift Registry', 'Favors/Gift Registry', 'Favors/Gift Registry', 1),
(27, 0, 'SECURITY', 0, 25, 'security', 1, '2019-11-13 03:35:52', '2019-11-15 04:13:59', NULL, '', '', 'SECURITY', 'SECURITY', 'SECURITY', 1),
(28, 0, 'Sam', 0, 4, 'sam', 1, '2019-11-13 10:36:27', '2019-11-15 04:13:59', NULL, '', '', 'Sam', 'Sam', 'Sam', 1),
(29, 1, 'demoo', 0, 1, 'demoo', 1, '2019-11-14 05:03:12', '2019-11-14 05:40:26', NULL, '', '', 'sads', 'sdds', 'sdds', 0),
(30, 1, 'demmo2', 0, 2, 'demmo2', 1, '2019-11-14 05:03:54', '2019-11-14 05:40:26', NULL, '', '', 'ses', 'sddssd', 'sdddddd', 0),
(31, 0, 'ParentCategory', 0, 1, 'parentcategory', 1, '2019-11-15 04:12:46', '2019-11-15 04:14:03', NULL, '', '', 'Test', 'Test', 'Test', 1),
(32, 31, 'ChildCategoryOne', 0, 1, 'childcategoryone', 1, '2019-11-15 04:13:45', '2019-11-15 04:13:58', NULL, '', '', 'Test', 'Test', 'Test', 1);

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
(104, NULL, 1, 8, 'amenity', '2019-11-13 09:15:12', '2019-11-13 09:15:12'),
(105, NULL, 7, 7, 'game', '2019-11-13 09:15:12', '2019-11-13 09:15:12'),
(117, NULL, 1, 4, 'event', '2019-11-13 09:16:10', '2019-11-13 09:16:10'),
(118, NULL, 1, 6, 'amenity', '2019-11-13 09:16:10', '2019-11-13 09:16:10'),
(119, NULL, 6, 8, 'amenity', '2019-11-13 09:16:10', '2019-11-13 09:16:10'),
(120, NULL, 6, 7, 'game', '2019-11-13 09:16:10', '2019-11-13 09:16:10'),
(121, NULL, 5, 1, 'event', '2019-11-13 09:16:13', '2019-11-13 09:16:13'),
(122, NULL, 5, 4, 'amenity', '2019-11-13 09:16:13', '2019-11-13 09:16:13'),
(123, NULL, 5, 7, 'game', '2019-11-13 09:16:13', '2019-11-13 09:16:13'),
(124, NULL, 1, 3, 'event', '2019-11-13 09:16:25', '2019-11-13 09:16:25'),
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
(247, NULL, 31, 2, 'seasons', '2019-11-15 10:34:37', '2019-11-15 10:34:37');

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
(4, 'Baby Shower', 'Baby Shower', 'baby-shower', NULL, 1, '2019-11-13 03:38:50', '2019-11-13 03:38:50'),
(5, 'Retreat/ Team Building', 'Retreat/ Team Building', 'retreat-team-building', NULL, 1, '2019-11-13 03:38:58', '2019-11-13 03:38:58'),
(6, 'Date Night', 'Date Night', 'date-night', NULL, 1, '2019-11-13 03:39:10', '2019-11-13 03:39:10'),
(7, 'Birth Day', 'Birth Day', 'birth-day', NULL, 1, '2019-11-13 03:39:21', '2019-11-13 03:39:21'),
(8, 'Hot', 'Hot Des', 'hot', NULL, 1, '2019-11-13 15:05:42', '2019-11-13 15:05:42'),
(9, 'test', 'dfdfsdf sdfsd sdfds sfsdf', 'test-1', NULL, 1, '2019-11-14 07:59:35', '2019-11-14 07:59:35'),
(10, 'Event Type Demo', 'Demo Description', 'event-type-demo', NULL, 1, '2019-11-15 04:14:37', '2019-11-15 04:14:37');

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
(13, 'It is a long established fact that a reader will be distracted ?', '<p>It is a long established fact that a reader will be distracted&nbsp;</p>\r\n\r\n<p>It is a long established fact that a reader will be distracted&nbsp;</p>\r\n\r\n<p>It is a long established fact that a reader will be distracted&nbsp;</p>\r\n\r\n<p>It is a long established fact that a reader will be distracted .</p>', 33, 16, 1, '2019-11-15 05:43:07', '2019-11-15 05:43:07');

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
(7, '2019_11_13_091032_create_vendor_category_meta_datas_table', 4),
(8, '2019_11_13_111529_create_category_variations_table', 5),
(9, '2019_11_13_201236_create_seasons_table', 6),
(10, '2019_11_14_074420_create_f_a_qs_table', 7),
(11, '2019_11_14_075803_create_vendor_amenities_table', 8),
(12, '2019_11_14_075820_create_vendor_event_games_table', 8),
(13, '2019_11_14_124605_create_vendor_packages_table', 9),
(14, '2019_11_15_065627_create_venues_table', 10),
(15, '2019_11_15_133350_create_styles_table', 11);

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
(1, 'Hots', 'Hot Des', 'hots', NULL, 1, '2019-11-13 15:07:45', '2019-11-13 15:17:02'),
(2, 'Summer Season', 'Summer Desc', 'summer-season', NULL, NULL, '2019-11-15 04:17:49', '2019-11-15 04:17:49');

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
(1, 'style', 'Demo des', 'Demo', '1573834276.png', 1, '2019-11-15 09:37:28', '2019-11-15 10:41:16');

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
(1, 'Admin', NULL, NULL, 'admin@gmail.com', NULL, '$2y$10$vR9Oj5Bbl.QAsnS5D7GeR.LgD/gTOO9Sqpl17GScWUZeO07dbTXii', 'admin', 'images/admin/1573645323TGCUAduttOoNN0NQAJYl-220px-User_icon_2.svg.png', 'RlEMVvcf0sWw7MyRawhgP1pkgrrHYmshJeKyxs15u2HlfsViqiPdRjUliEDh', '2019-11-09 00:19:35', '2019-11-13 06:12:03'),
(31, 'Narinder Bajwa', 'Narinder', 'Bajwa', 'bajwa7696346232@gmail.com', '2019-11-12 07:02:09', '$2y$10$he8YxmZeBwdKAMqcbtQ0/.aJqTWo1Nxpm/WCKXK2XaEZAAJUE7Hc.', 'vendor', 'images/vendors/profile/1573745727INNHnbWOrmoe5iQlrdT7-bulb.png', 'yrNN9QEIEwXMojaOs4r0dSdcYnyP3U6m6AoMrjP8vg6ynVaCvMOrSCGp8ugZ', '2019-11-12 06:11:13', '2019-11-14 10:05:27'),
(32, 'Narinder Bajwa', 'Narinder', 'Bajwa', 'bajwa9876470492@gmail.com', NULL, '$2y$10$tiBVNqE4PMLEbmyfMNH9/eXn4rkSKw0uHTNdeFJEALg2yBdwB04JG', 'user', NULL, NULL, '2019-11-12 06:25:25', '2019-11-12 06:25:25'),
(33, 'hitesh sharma', 'hitesh', 'sharma', 'hitesh22791@gmail.com', '2019-11-13 18:30:00', '$2y$10$o6TsuB0J0za0EknNojA7g.B304Cg3SRfIqrJU7QQZKSxgCYb5FpGi', 'vendor', NULL, 'NdSibm1D2NlMN356sBBFGxmQD9i7JrBEu9mn7wsOjtLyTc7b9KjnBTZlGzMh', '2019-11-14 02:17:10', '2019-11-14 02:17:10'),
(34, 'vendor s', 'vendor', 's', 'vendor001@yopmail.com', '2019-11-14 04:22:00', '$2y$10$3nhw3wasoho0VKY52ffgHO7/OBu5wNz0O4r2SXSQrtzktEnI3YI5K', 'vendor', NULL, 'ujztAXw2z3KvAzNl2acCZigyWKefxnEWxMHhoVpOE0Q83SI1spiaGI3mbltv', '2019-11-14 04:19:37', '2019-11-14 04:22:00'),
(35, 'Kanny Gill', 'Kanny', 'Gill', 'kanny@yopmail.com', '2019-11-15 03:06:31', '$2y$10$XZA0JR6bHi1MSANa86u8jOncOCBPT7wFdxaq5RZBjLIYW992ssDA.', 'vendor', NULL, 'Xrl2c1Wi9CoObL6isRFEmDk1wHPpScmBBteayDW2fjF1aVKrOBVdDIAZgx2W', '2019-11-15 03:06:02', '2019-11-15 03:06:31'),
(36, 'Kanny Rajput', 'Kanny', 'Rajput', 'kannyraj@yopmail.com', '2019-11-15 04:27:34', '$2y$10$05CiO5N1YnlHK2qAV493Kub/2oQ1PkscvvcNJ5lEeupu.MNxtrT7m', 'vendor', NULL, 'MiJiNw0hILOy4O7TcVXUAYem6b3hAujmp6kbR0rc2B8ILItRzt4iDwxj4wnI', '2019-11-15 04:27:09', '2019-11-15 04:27:34'),
(37, 'Kanny Singhh', 'Kanny', 'Singhh', 'kannysingh@yopmail.com', '2019-11-15 04:30:26', '$2y$10$D43XORx9FPYbJXJu2L7CkuJsKI9ywXPjNOXoVhPi9iegyE5tXy7h2', 'vendor', NULL, 'Moa9zHEdREFzRSFG7DNs2fDCSMEFPyGiUGOgan9FxOFj4TjsZNcdLF5CgwIa', '2019-11-15 04:30:08', '2019-11-15 04:30:26'),
(38, 'Yuvraj Bajwa', 'Yuvraj', 'Bajwa', 'yuvi@gmail.com', '2019-11-14 18:30:00', '$2y$10$nNsAZlbUjk5MQejC/gAcO.00QkIKDfJI7cODHa4OT8KQ96SGWFRqW', 'vendor', NULL, NULL, '2019-11-15 04:51:50', '2019-11-15 04:51:50');

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
(30, 0, 37, 8, 31, NULL, '2019-11-15 10:34:45', '2019-11-15 10:34:45');

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
(31, 28, 38, 30, 1, '2019-11-15 05:02:41', '2019-11-15 05:02:41');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_category_meta_datas`
--

CREATE TABLE `vendor_category_meta_datas` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent` int(11) DEFAULT '0',
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
(4, 0, 'video', 'videoGallery', '{"title":"demo","link":"https:\\/\\/www.youtube.com\\/embed\\/Bey4XXJAqS8"}', 31, 1, '2019-11-13 05:13:23', '2019-11-13 05:13:23'),
(5, 0, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/1573647610Fm9PclNaVBEolm5aIgZ1-download-_3_.jpeg', 31, 1, '2019-11-13 06:50:10', '2019-11-13 06:50:10'),
(6, 0, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/1573727026eAetQOGItx9U4F6ZB1uG-about.png', 33, 7, '2019-11-14 04:53:46', '2019-11-14 04:53:46'),
(10, 0, 'video', 'videoGallery', '{"title":"test","link":"https:\\/\\/www.youtube.com\\/embed\\/yC270QKnJ80"}', 33, 7, '2019-11-14 05:08:00', '2019-11-14 05:08:00'),
(11, 0, 'video', 'videoGallery', '{"title":"dummy Video","link":"https:\\/\\/www.youtube.com\\/embed\\/v42bVJe9bYY"}', 33, 7, '2019-11-14 05:26:48', '2019-11-14 05:26:48'),
(12, 0, 'description', 'description', '<p>sdddddddddddd</p>', NULL, 1, '2019-11-14 06:07:50', '2019-11-14 06:49:02'),
(13, 0, 'styles', 'styles', '<p>sdsssssssssssss dafddffSXsdsad</p>', NULL, 1, '2019-11-14 06:53:37', '2019-11-15 04:35:44'),
(15, 0, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/1573734645b7Xy6ziHbOMyt7HuXhok-screenshot.png', 31, 1, '2019-11-14 07:00:45', '2019-11-14 07:00:45'),
(16, 0, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/1573741903mNQpXtQ5hGENjG7q6rup-about.png', 33, 7, '2019-11-14 09:01:43', '2019-11-14 09:01:43'),
(17, 0, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/1573741904IEGaEysf2lq85bHm3KiP-dries-augustyns-58ASFVAP2Y4-unsplash.png', 33, 7, '2019-11-14 09:01:44', '2019-11-14 09:01:44'),
(18, 0, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/1573742278kQVp7lMxkOZDUTCu05Xi-about.png', 33, 7, '2019-11-14 09:07:58', '2019-11-14 09:07:58'),
(19, 0, 'description', 'description', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris</p>', NULL, 7, '2019-11-14 09:10:00', '2019-11-14 09:10:27'),
(20, 0, 'description', 'description', '', NULL, 6, '2019-11-14 10:08:38', '2019-11-14 10:08:38'),
(21, 0, 'styles', 'styles', '', NULL, 6, '2019-11-14 10:53:15', '2019-11-14 10:53:15'),
(22, 0, 'description', 'description', '', NULL, 2, '2019-11-14 10:59:27', '2019-11-14 10:59:27'),
(23, 0, 'season', 'seasons', '1', 31, 1, '2019-11-15 02:17:39', '2019-11-15 02:17:39'),
(24, 0, 'season', 'seasons', '1', 31, 1, '2019-11-15 02:21:55', '2019-11-15 02:21:55'),
(25, 0, 'season', 'seasons', '1', 31, 1, '2019-11-15 02:27:57', '2019-11-15 02:27:57'),
(26, 0, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/15738058204cKT0dKVCD1FNPmnpzuh-about.png', 34, 8, '2019-11-15 02:47:00', '2019-11-15 02:47:00'),
(27, 0, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/1573805820DbnirI3SutyxtYDoYPSc-Computer-Wallpapers-26-1600-x-1200.jpg', 34, 8, '2019-11-15 02:47:00', '2019-11-15 02:47:00'),
(28, 0, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/1573805821nBQb8MGSUsVcyJ6f90nH-dries-augustyns-58ASFVAP2Y4-unsplash.jpg', 34, 8, '2019-11-15 02:47:01', '2019-11-15 02:47:01'),
(44, 0, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/1573807217KgUN6WANZCtC2esNzesy-photo-1551592398-c320012bc1c6.jpeg', 35, 15, '2019-11-15 03:10:17', '2019-11-15 03:10:17'),
(45, 0, 'video', 'videoGallery', '{"title":"Shoot Video","link":"https:\\/\\/www.youtube.com\\/embed\\/NqSWxqqFolI"}', 35, 15, '2019-11-15 03:12:26', '2019-11-15 03:12:26'),
(46, 0, 'description', 'description', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>', NULL, 15, '2019-11-15 03:13:26', '2019-11-15 03:13:53'),
(47, 0, 'styles', 'styles', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>', NULL, 15, '2019-11-15 03:14:05', '2019-11-15 03:14:09'),
(48, 0, 'season', 'seasons', '1', 35, 1, '2019-11-15 03:15:09', '2019-11-15 03:15:09'),
(64, 0, 'business_name', 'basic_information', 'sds121212', 31, 1, '2019-11-15 03:43:22', '2019-11-15 03:44:39'),
(65, 0, 'address', 'basic_information', '<p>sdsd</p>', 31, 1, '2019-11-15 03:43:22', '2019-11-15 03:43:22'),
(66, 0, 'website', 'basic_information', 'sdssdsd', 31, 1, '2019-11-15 03:43:22', '2019-11-15 03:44:30'),
(67, 0, 'phone_number', 'basic_information', 'sdsdsdsd', 31, 1, '2019-11-15 03:43:22', '2019-11-15 03:44:30'),
(68, 0, 'company', 'basic_information', 'sdsdsdsdsd', 31, 1, '2019-11-15 03:43:22', '2019-11-15 03:44:30'),
(69, 0, 'travel_distaince', 'basic_information', 'sds', 31, 1, '2019-11-15 03:43:23', '2019-11-15 03:43:23'),
(70, 0, 'min_price', 'basic_information', 'sdsd', 31, 1, '2019-11-15 03:43:23', '2019-11-15 03:43:23'),
(71, 0, 'season', 'seasons', '1', 31, 1, '2019-11-15 04:20:44', '2019-11-15 04:20:44'),
(72, 0, 'business_name', 'basic_information', 'sds121212sdsds`1111111111111', 35, 1, '2019-11-15 04:24:52', '2019-11-15 04:33:12'),
(73, 0, 'address', 'basic_information', '<p>sdsd</p>', 35, 1, '2019-11-15 04:24:53', '2019-11-15 04:24:53'),
(74, 0, 'website', 'basic_information', 'sdssdsd', 35, 1, '2019-11-15 04:24:53', '2019-11-15 04:24:53'),
(75, 0, 'phone_number', 'basic_information', 'sdsdsdsd', 35, 1, '2019-11-15 04:24:53', '2019-11-15 04:24:53'),
(76, 0, 'company', 'basic_information', 'sdsdsdsdsd', 35, 1, '2019-11-15 04:24:53', '2019-11-15 04:24:53'),
(77, 0, 'travel_distaince', 'basic_information', 'sds', 35, 1, '2019-11-15 04:24:53', '2019-11-15 04:24:53'),
(78, 0, 'min_price', 'basic_information', 'sdsd', 35, 1, '2019-11-15 04:24:53', '2019-11-15 04:24:53'),
(79, 0, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/1573811844XskNptziz3DoOHpFhFVb-marketing.png', 35, 15, '2019-11-15 04:27:24', '2019-11-15 04:27:24'),
(80, 0, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/1573811844PfZ7iFZzUK3DCxwu1PBf-product.png', 35, 15, '2019-11-15 04:27:24', '2019-11-15 04:27:24'),
(81, 0, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/1573812028kHRc2GDadfFthmUgVj2N-grey-product.png', 35, 1, '2019-11-15 04:30:28', '2019-11-15 04:30:28'),
(82, 0, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/1573812028WPYsrMngSrZ6BCHuCkxk-grey-statistics.png', 35, 1, '2019-11-15 04:30:28', '2019-11-15 04:30:28'),
(83, 0, 'business_name', 'basic_information', '', NULL, 31, '2019-11-15 04:32:05', '2019-11-15 04:32:05'),
(84, 0, 'address', 'basic_information', '', NULL, 31, '2019-11-15 04:32:05', '2019-11-15 04:32:05'),
(85, 0, 'website', 'basic_information', '', NULL, 31, '2019-11-15 04:32:05', '2019-11-15 04:32:05'),
(86, 0, 'phone_number', 'basic_information', '', NULL, 31, '2019-11-15 04:32:05', '2019-11-15 04:32:05'),
(87, 0, 'company', 'basic_information', '', NULL, 31, '2019-11-15 04:32:05', '2019-11-15 04:32:05'),
(88, 0, 'travel_distaince', 'basic_information', '', NULL, 31, '2019-11-15 04:32:05', '2019-11-15 04:32:05'),
(89, 0, 'min_price', 'basic_information', '', NULL, 31, '2019-11-15 04:32:05', '2019-11-15 04:32:05'),
(90, 0, 'business_name', 'basic_information', 'Demo Business', 37, 31, '2019-11-15 04:33:15', '2019-11-15 04:33:15'),
(91, 0, 'address', 'basic_information', '<p>Demo Address</p>', 37, 31, '2019-11-15 04:33:15', '2019-11-15 04:33:15'),
(92, 0, 'website', 'basic_information', 'https://demo.com', 37, 31, '2019-11-15 04:33:15', '2019-11-15 04:33:15'),
(93, 0, 'phone_number', 'basic_information', '98754547478', 37, 31, '2019-11-15 04:33:15', '2019-11-15 04:33:15'),
(94, 0, 'company', 'basic_information', 'Demo', 37, 31, '2019-11-15 04:33:15', '2019-11-15 04:33:15'),
(95, 0, 'travel_distaince', 'basic_information', '50', 37, 31, '2019-11-15 04:33:15', '2019-11-15 04:33:15'),
(96, 0, 'min_price', 'basic_information', '1500', 37, 31, '2019-11-15 04:33:15', '2019-11-15 04:33:15'),
(97, 0, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/1573812237WHkXxk87UdILb4QvtkU9-photo-1551592398-c320012bc1c6.jpeg', 37, 31, '2019-11-15 04:33:57', '2019-11-15 04:33:57'),
(98, 0, 'video', 'videoGallery', '{"title":"Video Title","link":"https:\\/\\/www.youtube.com\\/embed\\/mU6e1Ne0Pmg"}', 37, 31, '2019-11-15 04:35:46', '2019-11-15 04:35:46'),
(99, 0, 'description', 'description', '<p>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', NULL, 31, '2019-11-15 04:37:32', '2019-11-15 04:38:16'),
(100, 0, 'styles', 'styles', '<ol>\r\n	<li>Test</li>\r\n	<li>Custom</li>\r\n</ol>', NULL, 31, '2019-11-15 04:39:02', '2019-11-15 04:39:14'),
(101, 0, 'season', 'seasons', '1', 37, 31, '2019-11-15 04:44:47', '2019-11-15 04:44:47'),
(102, 0, 'business_name', 'basic_information', '', 38, 1, '2019-11-15 04:58:01', '2019-11-15 04:58:01'),
(103, 0, 'address', 'basic_information', '', 38, 1, '2019-11-15 04:58:02', '2019-11-15 04:58:02'),
(104, 0, 'website', 'basic_information', '', 38, 1, '2019-11-15 04:58:02', '2019-11-15 04:58:02'),
(105, 0, 'phone_number', 'basic_information', '', 38, 1, '2019-11-15 04:58:02', '2019-11-15 04:58:02'),
(106, 0, 'company', 'basic_information', '', 38, 1, '2019-11-15 04:58:02', '2019-11-15 04:58:02'),
(107, 0, 'travel_distaince', 'basic_information', '', 38, 1, '2019-11-15 04:58:02', '2019-11-15 04:58:02'),
(108, 0, 'min_price', 'basic_information', '', 38, 1, '2019-11-15 04:58:02', '2019-11-15 04:58:02'),
(109, 0, 'styles', 'styles', '<p>test</p>', 38, 1, '2019-11-15 04:59:55', '2019-11-15 05:01:23'),
(110, 0, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/1573813894IjWS5Ur4hWBCG2Xk9ZQN-marketing.png', 38, 1, '2019-11-15 05:01:34', '2019-11-15 05:01:34'),
(111, 0, 'video', 'videoGallery', '{"title":"sds","link":"asd"}', 38, 1, '2019-11-15 05:01:49', '2019-11-15 05:01:49'),
(112, 0, 'description', 'description', '<p>test</p>', 38, 1, '2019-11-15 05:02:08', '2019-11-15 05:02:31'),
(113, 0, 'season', 'seasons', '1', 38, 1, '2019-11-15 05:03:03', '2019-11-15 05:03:03'),
(114, 0, 'season', 'seasons', '1', 38, 1, '2019-11-15 05:03:15', '2019-11-15 05:03:15'),
(115, 0, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/1573816056QtQdxt54RvvF4DMZi5R1-about.png', 33, 16, '2019-11-15 05:37:36', '2019-11-15 05:37:36'),
(116, 0, 'styles', 'styles', '', 37, 31, '2019-11-15 10:35:49', '2019-11-15 10:35:49');

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
(10, 0, 38, 4, 1, NULL, '2019-11-15 05:02:58', '2019-11-15 05:02:58');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_packages`
--

CREATE TABLE `vendor_packages` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(191) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendor_packages`
--

INSERT INTO `vendor_packages` (`id`, `title`, `description`, `amount`, `status`, `category_id`, `user_id`, `created_at`, `updated_at`) VALUES
(3, 'Package1', '<p>Package</p>', 500, 1, 1, 31, '2019-11-14 08:30:58', '2019-11-14 09:52:15'),
(4, 'food t', '<p>desc</p>', 2544, 0, 3, 31, '2019-11-14 08:47:36', '2019-11-14 09:00:36'),
(5, 's', '<p>df</p>', 25444, 1, 3, 31, '2019-11-14 08:50:19', '2019-11-14 08:50:19'),
(6, 'dd', '<p>ss</p>', 23, 1, 4, 33, '2019-11-14 10:09:37', '2019-11-14 10:09:37'),
(7, 'Demo Package', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>', 1500, 1, 1, 35, '2019-11-15 03:15:32', '2019-11-15 03:15:32'),
(8, 'Makeup Package', '<p>Dummy descriptiom</p>', 150, 1, 31, 37, '2019-11-15 04:49:27', '2019-11-15 04:49:27'),
(9, 'dfg', '<p>fdfdh</p>', 345, 1, 31, 37, '2019-11-15 04:49:35', '2019-11-15 04:49:35'),
(11, 'dsf', '<p>gfdg</p>', 42, 1, 31, 37, '2019-11-15 04:50:05', '2019-11-15 04:50:05'),
(12, 'Pack1', '<p>Test</p>', 70, 1, 31, 37, '2019-11-15 04:50:37', '2019-11-15 04:50:37'),
(13, 'test', '<p>lorem ipsum is a dummy content.&nbsp;lorem ipsum is a dummy content.&nbsp;lorem ipsum is a dummy content.&nbsp;lorem ipsum is a dummy content.</p>', 1500, 1, 16, 33, '2019-11-15 05:04:12', '2019-11-15 05:04:12'),
(14, 'New video', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor</p>', 23, 1, 16, 33, '2019-11-15 05:45:02', '2019-11-15 05:45:02');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `category_variations`
--
ALTER TABLE `category_variations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=248;
--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `f_a_qs`
--
ALTER TABLE `f_a_qs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `seasons`
--
ALTER TABLE `seasons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `styles`
--
ALTER TABLE `styles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `vendor_amenities`
--
ALTER TABLE `vendor_amenities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `vendor_categories`
--
ALTER TABLE `vendor_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `vendor_category_meta_datas`
--
ALTER TABLE `vendor_category_meta_datas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;
--
-- AUTO_INCREMENT for table `vendor_event_games`
--
ALTER TABLE `vendor_event_games`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `vendor_packages`
--
ALTER TABLE `vendor_packages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `venues`
--
ALTER TABLE `venues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
