-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 14, 2019 at 09:54 PM
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
(1, 'amenity', 'amenity desc', 'amenity', NULL, NULL, 1, '2019-11-13 04:03:18', '2019-11-13 04:29:07'),
(2, 'ams', 'desc', 'am', NULL, NULL, 1, '2019-11-13 04:04:25', '2019-11-13 04:22:33'),
(3, 'amity', 'desct', 'amity', NULL, NULL, 1, '2019-11-13 04:07:59', '2019-11-13 04:07:59'),
(4, 'amen', 'descf', 'amen', NULL, 'amenity', 1, '2019-11-13 04:30:49', '2019-11-13 05:16:43'),
(5, 'ff', 'ss', 'ff', NULL, NULL, 1, '2019-11-13 04:33:53', '2019-11-13 04:33:53'),
(6, 'ames', 'ds', 'ames', NULL, 'amenity', 1, '2019-11-13 04:34:50', '2019-11-13 04:34:50'),
(7, 'ne', 's', 'ne', NULL, 'game', 1, '2019-11-13 04:43:32', '2019-11-13 05:15:39'),
(8, 'gg', 'ff', 'gg', NULL, 'amenity', 1, '2019-11-13 04:43:45', '2019-11-13 04:43:45');

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
(1, 0, 'Photography', 0, 25, 'photography', 1, '2019-11-09 02:43:13', '2019-11-14 03:43:00', NULL, '', '', 'photography', 'photography', 'photography', 0),
(2, 0, 'Catering', 0, 26, 'catering', 1, '2019-11-09 03:28:53', '2019-11-14 03:43:00', NULL, '', '', 'photography', 'photography', 'kgiuiu', 1),
(3, 2, 'Food', 0, 2, 'food', 1, '2019-11-09 03:41:39', '2019-11-13 05:21:43', NULL, '', '', 'huh', 'ljoj', 'hgigy', 0),
(4, 2, 'Demo', 0, 1, 'demo', 1, '2019-11-09 03:44:29', '2019-11-13 05:21:43', NULL, '', '', 'Test', 'Test', 'Test', 0),
(5, 0, 'Transportation', 0, 1, 'transportation', 1, '2019-11-13 02:48:49', '2019-11-14 07:24:19', NULL, '', '', 'Transportation', 'Transportation', 'Transportation', 1),
(6, 0, 'Balloons', 0, 5, 'balloons', 1, '2019-11-13 02:49:07', '2019-11-14 07:23:59', NULL, '', '', 'Balloons', 'Balloons', 'Balloons', 1),
(7, 0, 'Bands', 0, 2, 'bands', 1, '2019-11-13 02:49:22', '2019-11-14 07:24:19', NULL, '', '', 'Bands', 'Bands', 'Bands', 1),
(8, 0, 'Catering/ Beverages', 0, 4, 'catering-beverages', 1, '2019-11-13 02:49:53', '2019-11-14 07:23:59', NULL, '', '', 'Catering/ Beverages', 'Catering/ Beverages', 'Catering/ Beverages', 1),
(9, 0, 'Churches/Temples', 0, 6, 'churches-temples', 1, '2019-11-13 02:50:23', '2019-11-14 03:43:00', NULL, '', '', 'Churches/Temples', 'Churches/Temples', 'Churches/Temples', 1),
(10, 0, 'Musicians/Instrumentalist', 0, 7, 'musicians-instrumentalist', 1, '2019-11-13 02:50:46', '2019-11-14 03:43:00', NULL, '', '', 'Musicians/Instrumentalist', 'Musicians/Instrumentalist', 'Musicians/Instrumentalist', 1),
(11, 0, 'Venues', 0, 8, 'venues', 1, '2019-11-13 02:51:29', '2019-11-14 03:43:00', NULL, '', '', 'Venues', 'Venues', 'Venues', 1),
(12, 0, 'Flowers/Florist', 0, 10, 'flowers-florist', 1, '2019-11-13 02:51:44', '2019-11-14 07:24:03', NULL, '', '', 'Flowers/Florist', 'Flowers/Florist', 'Flowers/Florist', 1),
(13, 0, 'Clothing/Dressing and Jewelries', 0, 9, 'clothing-dressing-and-jewelries', 1, '2019-11-13 02:52:02', '2019-11-14 07:24:03', NULL, '', '', 'Clothing/Dressing and Jewelries', 'Clothing/Dressing and Jewelries', 'Clothing/Dressing and Jewelries', 1),
(14, 0, 'Beauty and Health', 0, 11, 'beauty-and-health', 1, '2019-11-13 02:52:35', '2019-11-14 03:43:00', NULL, '', '', 'Beauty and Health', 'Beauty and Health', 'Beauty and Health', 1),
(15, 0, 'Staffing/Officiants', 0, 12, 'staffing-officiants', 1, '2019-11-13 02:52:54', '2019-11-14 03:43:00', NULL, '', '', 'Staffing/Officiants', 'Staffing/Officiants', 'Staffing/Officiants', 1),
(16, 0, 'Photography/Videography', 0, 13, 'photography-videography', 1, '2019-11-13 02:53:14', '2019-11-14 03:43:00', NULL, '', '', 'Photography/Videography', 'Photography/Videography', 'Photography/Videography', 1),
(17, 0, 'Party/Event Rental', 0, 14, 'party-event-rental', 1, '2019-11-13 02:53:35', '2019-11-14 03:43:00', NULL, '', '', 'Party/Event Rental', 'Party/Event Rental', 'Party/Event Rental', 1),
(18, 0, 'DJ/Entertainment/MC', 0, 15, 'dj-entertainment-mc', 1, '2019-11-13 02:56:51', '2019-11-14 03:43:00', NULL, '', '', 'DJ/Entertainment/MC', 'DJ/Entertainment/MC', 'DJ/Entertainment/MC', 1),
(19, 0, 'Entertainer', 0, 16, 'entertainer', 1, '2019-11-13 03:33:22', '2019-11-14 03:43:00', NULL, '', '', 'Entertainer', 'Entertainer', 'Entertainer', 1),
(20, 0, 'Event Planner', 0, 17, 'event-planner', 1, '2019-11-13 03:34:21', '2019-11-14 03:43:00', NULL, '', '', 'Event Planner', 'Event Planner', 'Event Planner', 1),
(21, 0, 'Funeral Service', 0, 18, 'funeral-service', 1, '2019-11-13 03:34:36', '2019-11-14 03:43:00', NULL, '', '', 'Funeral Service', 'Funeral Service', 'Funeral Service', 1),
(22, 0, 'Printing/Stationary Services', 0, 19, 'printing-stationary-services', 1, '2019-11-13 03:34:51', '2019-11-14 03:43:00', NULL, '', '', 'Printing/Stationary Services', 'Printing/Stationary Services', 'Printing/Stationary Services', 1),
(23, 0, 'Lodging', 0, 20, 'lodging', 1, '2019-11-13 03:35:02', '2019-11-14 03:43:00', NULL, '', '', 'Lodging', 'Lodging', 'Lodging', 1),
(24, 0, 'Cake', 0, 21, 'cake', 1, '2019-11-13 03:35:12', '2019-11-14 03:43:00', NULL, '', '', 'Cake', 'Cake', 'Cake', 1),
(25, 0, 'Decoration', 0, 22, 'decoration', 1, '2019-11-13 03:35:23', '2019-11-14 03:43:00', NULL, '', '', 'Decoration', 'Decoration', 'Decoration', 1),
(26, 0, 'Favors/Gift Registry', 0, 23, 'favors-gift-registry', 1, '2019-11-13 03:35:38', '2019-11-14 03:43:00', NULL, '', '', 'Favors/Gift Registry', 'Favors/Gift Registry', 'Favors/Gift Registry', 1),
(27, 0, 'SECURITY', 0, 24, 'security', 1, '2019-11-13 03:35:52', '2019-11-14 03:43:00', NULL, '', '', 'SECURITY', 'SECURITY', 'SECURITY', 1),
(28, 0, 'Sam', 0, 3, 'sam', 1, '2019-11-13 10:36:27', '2019-11-14 07:23:55', NULL, '', '', 'Sam', 'Sam', 'Sam', 1),
(29, 1, 'demoo', 0, 1, 'demoo', 1, '2019-11-14 05:03:12', '2019-11-14 05:40:26', NULL, '', '', 'sads', 'sdds', 'sdds', 0),
(30, 1, 'demmo2', 0, 2, 'demmo2', 1, '2019-11-14 05:03:54', '2019-11-14 05:40:26', NULL, '', '', 'ses', 'sddssd', 'sdddddd', 0);

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
(127, NULL, 8, 7, 'game', '2019-11-13 09:16:26', '2019-11-13 09:16:26');

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
(9, 'test', 'dfdfsdf sdfsd sdfds sfsdf', 'test-1', NULL, 1, '2019-11-14 07:59:35', '2019-11-14 07:59:35');

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
(8, 'hellio', '<p>hee</p>', 34, 8, 1, '2019-11-14 04:32:28', '2019-11-14 04:32:28');

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
(13, '2019_11_14_124605_create_vendor_packages_table', 9);

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
(1, 'Hots', 'Hot Des', 'hots', NULL, 1, '2019-11-13 15:07:45', '2019-11-13 15:17:02');

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
(1, 'Admin', NULL, NULL, 'admin@gmail.com', NULL, '$2y$10$vR9Oj5Bbl.QAsnS5D7GeR.LgD/gTOO9Sqpl17GScWUZeO07dbTXii', 'admin', 'images/admin/1573645323TGCUAduttOoNN0NQAJYl-220px-User_icon_2.svg.png', 'IC0hxsFN0MnswcvQfCIhksVaI4B7kwEdmwO6ivU60rVtD39JPfLDLDU8f50Q', '2019-11-09 00:19:35', '2019-11-13 06:12:03'),
(31, 'Narinder Bajwa', 'Narinder', 'Bajwa', 'bajwa7696346232@gmail.com', '2019-11-12 07:02:09', '$2y$10$he8YxmZeBwdKAMqcbtQ0/.aJqTWo1Nxpm/WCKXK2XaEZAAJUE7Hc.', 'vendor', 'images/vendors/profile/1573745727INNHnbWOrmoe5iQlrdT7-bulb.png', 'xxcjZrA0Ww8qifTrSKaMFgLh059F3ab6pyFXx0dUpB7bboDqEgpPqRMcd1y0', '2019-11-12 06:11:13', '2019-11-14 10:05:27'),
(32, 'Narinder Bajwa', 'Narinder', 'Bajwa', 'bajwa9876470492@gmail.com', NULL, '$2y$10$tiBVNqE4PMLEbmyfMNH9/eXn4rkSKw0uHTNdeFJEALg2yBdwB04JG', 'user', NULL, NULL, '2019-11-12 06:25:25', '2019-11-12 06:25:25'),
(33, 'hitesh sharma', 'hitesh', 'sharma', 'hitesh22791@gmail.com', '2019-11-13 18:30:00', '$2y$10$o6TsuB0J0za0EknNojA7g.B304Cg3SRfIqrJU7QQZKSxgCYb5FpGi', 'vendor', NULL, '1uP8yNyZSLeowbEuyEuFef1A6GxaOLm17q9ytldZGf9bT7nMwcydtv38i7RT', '2019-11-14 02:17:10', '2019-11-14 02:17:10'),
(34, 'vendor s', 'vendor', 's', 'vendor001@yopmail.com', '2019-11-14 04:22:00', '$2y$10$3nhw3wasoho0VKY52ffgHO7/OBu5wNz0O4r2SXSQrtzktEnI3YI5K', 'vendor', NULL, 'JZiWeFzuCjmdl0BKClu3GulhRimmx6DrpRCTciDPrr0xY38BgTDUJOgqI9Eg', '2019-11-14 04:19:37', '2019-11-14 04:22:00');

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
(24, 0, 31, 6, 1, NULL, '2019-11-14 04:14:15', '2019-11-14 04:14:15');

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
(11, 1, 31, 29, 1, '2019-11-14 05:41:44', '2019-11-14 05:41:44'),
(14, 1, 31, 30, 1, '2019-11-14 05:45:12', '2019-11-14 05:45:12');

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
(13, 0, 'styles', 'styles', '<p>sdsssssssssssss dafddff</p>', NULL, 1, '2019-11-14 06:53:37', '2019-11-14 06:53:43'),
(15, 0, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/1573734645b7Xy6ziHbOMyt7HuXhok-screenshot.png', 31, 1, '2019-11-14 07:00:45', '2019-11-14 07:00:45'),
(16, 0, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/1573741903mNQpXtQ5hGENjG7q6rup-about.png', 33, 7, '2019-11-14 09:01:43', '2019-11-14 09:01:43'),
(17, 0, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/1573741904IEGaEysf2lq85bHm3KiP-dries-augustyns-58ASFVAP2Y4-unsplash.png', 33, 7, '2019-11-14 09:01:44', '2019-11-14 09:01:44'),
(18, 0, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/1573742278kQVp7lMxkOZDUTCu05Xi-about.png', 33, 7, '2019-11-14 09:07:58', '2019-11-14 09:07:58'),
(19, 0, 'description', 'description', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris</p>', NULL, 7, '2019-11-14 09:10:00', '2019-11-14 09:10:27'),
(20, 0, 'description', 'description', '', NULL, 6, '2019-11-14 10:08:38', '2019-11-14 10:08:38'),
(21, 0, 'styles', 'styles', '', NULL, 6, '2019-11-14 10:53:15', '2019-11-14 10:53:15');

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
(5, 0, 31, 3, 1, NULL, '2019-11-14 09:25:08', '2019-11-14 09:25:08');

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
(6, 'dd', '<p>ss</p>', 23, 1, 4, 33, '2019-11-14 10:09:37', '2019-11-14 10:09:37');

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `amenities`
--
ALTER TABLE `amenities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `category_variations`
--
ALTER TABLE `category_variations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;
--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `f_a_qs`
--
ALTER TABLE `f_a_qs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `seasons`
--
ALTER TABLE `seasons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `vendor_amenities`
--
ALTER TABLE `vendor_amenities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `vendor_categories`
--
ALTER TABLE `vendor_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `vendor_category_meta_datas`
--
ALTER TABLE `vendor_category_meta_datas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `vendor_event_games`
--
ALTER TABLE `vendor_event_games`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `vendor_packages`
--
ALTER TABLE `vendor_packages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
