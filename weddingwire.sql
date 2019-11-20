-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 20, 2019 at 10:22 PM
-- Server version: 5.7.28-0ubuntu0.16.04.2
-- PHP Version: 7.2.16-1+ubuntu16.04.1+deb.sury.org+1

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
(6, 'Bride dressing are wrwqwertwq', 'Bride\'s dressing', 'ames', NULL, 'amenity', 0, '2019-11-13 04:34:50', '2019-11-20 06:25:04'),
(7, 'ne', 's', 'ne', NULL, 'game', 0, '2019-11-13 04:43:32', '2019-11-20 00:08:00'),
(8, 'Ceremony arch', 'Ceremony arch', 'gg', NULL, 'amenity', 0, '2019-11-13 04:43:45', '2019-11-20 04:11:06'),
(9, 'Dance floor', 'Dance floor', 'sds', NULL, 'amenity', 0, '2019-11-15 04:18:56', '2019-11-20 04:11:14'),
(10, 'Tables and chairs', 'Tables and chairs provided', 'sds-1', NULL, 'amenity', 1, '2019-11-15 04:19:13', '2019-11-20 02:35:23'),
(11, 'Groom dressing area', 'Groom\'s dressing area', 'dsfsdf', NULL, 'amenity', 1, '2019-11-15 04:46:34', '2019-11-20 02:34:01'),
(12, 'Bed1', '!!! URGENT: I pulled a link from my', 'bed1', NULL, 'game', 1, '2019-11-18 04:49:47', '2019-11-19 03:48:54'),
(13, 'Bed2', 'By the end of the fourth millennium BC.', 'bed2', NULL, 'game', 0, '2019-11-18 04:50:23', '2019-11-19 03:52:03'),
(14, 'Room', 'India\'s history and cultur civilization.', 'room', NULL, 'amenity', 1, '2019-11-19 03:47:40', '2019-11-19 03:51:20');

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
(1, 0, 'Photography', 0, 26, 'photography', 1, '2019-11-09 02:43:13', '2019-11-20 03:10:16', NULL, 'images/categories/15741619908g7w4A4TPjKCSlTLdSBs-band.png', '', 'photography', '#ff80c0', 'photography', 'photography', 0),
(2, 8, 'Cateringss', 0, 1, 'catering', 1, '2019-11-09 03:28:53', '2019-11-18 09:52:14', NULL, 'images/categories/1574071913C7jokbqSIC1l9G0G99FC-2faf1563b9868cea2b35d9345c68c77d.jpg', 'images/categories/1574071913dffkUcobysb0AhTRmTsd-167958.jpg', 'photography', '#ff8040', 'photography', 'kgiuiu', 1),
(3, 2, 'Food', 0, 2, 'food', 1, '2019-11-09 03:41:39', '2019-11-13 05:21:43', NULL, '', '', 'huh', '', 'ljoj', 'hgigy', 0),
(4, 2, 'Demo', 0, 1, 'demo', 1, '2019-11-09 03:44:29', '2019-11-13 05:21:43', NULL, '', '', 'Test', '', 'Test', 'Test', 0),
(5, 0, 'Transportation', 0, 2, 'transportation', 1, '2019-11-13 02:48:49', '2019-11-20 03:10:15', NULL, '', '', 'Transportation', '#ff8040', 'Transportation', 'Transportation', 1),
(6, 0, 'Balloons', 0, 6, 'balloons', 1, '2019-11-13 02:49:07', '2019-11-20 03:10:15', NULL, '', '', 'Balloons', '#ff8040', 'Balloons', 'Balloons', 1),
(7, 0, 'Bands', 0, 3, 'bands', 1, '2019-11-13 02:49:22', '2019-11-20 05:22:49', NULL, '', '', 'Bands', '#ff8040', 'Bands', 'Bands', 1),
(8, 0, 'Catering/ Beverages', 0, 5, 'catering-beverages', 1, '2019-11-13 02:49:53', '2019-11-20 03:10:15', NULL, '', '', 'Catering/ Beverages', '#ff8040', 'Catering/ Beverages', 'Catering/ Beverages', 1),
(9, 0, 'Churches/Temples', 0, 7, 'churches-temples', 1, '2019-11-13 02:50:23', '2019-11-20 03:10:15', NULL, '', '', 'Churches/Temples', '#ff8000', 'Churches/Temples', 'Churches/Temples', 1),
(10, 0, 'Musicians/Instrumentalist', 0, 8, 'musicians-instrumentalist', 1, '2019-11-13 02:50:46', '2019-11-20 03:10:15', NULL, '', '', 'Musicians/Instrumentalist', '#ff8040', 'Musicians/Instrumentalist', 'Musicians/Instrumentalist', 1),
(11, 0, 'Venues', 0, 9, 'venues', 1, '2019-11-13 02:51:29', '2019-11-20 03:10:15', NULL, '', '', 'Venues', '#00ff00', 'Venues', 'Venues', 1),
(12, 0, 'Flowers/Florist', 0, 11, 'flowers-florist', 1, '2019-11-13 02:51:44', '2019-11-20 03:10:15', NULL, '', '', 'Flowers/Florist', '#0080ff', 'Flowers/Florist', 'Flowers/Florist', 1),
(13, 25, 'Clothing/Dressing and Jewelries', 0, 10, 'clothing-dressing-and-jewelries', 1, '2019-11-13 02:52:02', '2019-11-20 03:34:26', NULL, 'images/categories/1574240666PhNHeBwFAqYMfaF9rr1S-14997.png', '', 'Clothing', '#80ffff', 'Clothing/Dressing and Jewelries', 'Clothing/Dressing and Jewelries', 1),
(14, 0, 'Beauty and Health', 0, 12, 'beauty-and-health', 1, '2019-11-13 02:52:35', '2019-11-20 03:10:15', NULL, '', '', 'Beauty and Health', '#ff80c0', 'Beauty and Health', 'Beauty and Health', 1),
(15, 0, 'Staffing/Officiants', 0, 13, 'staffing-officiants', 1, '2019-11-13 02:52:54', '2019-11-20 03:10:15', NULL, '', '', 'Staffing/Officiants', '#80ffff', 'Staffing/Officiants', 'Staffing/Officiants', 1),
(16, 0, 'Photography/Videography', 0, 14, 'photography-videography', 1, '2019-11-13 02:53:14', '2019-11-20 03:10:15', NULL, '', '', 'Photography/Videography', '#ff80ff', 'Photography/Videography', 'Photography/Videography', 1),
(17, 0, 'Party/Event Rental', 0, 15, 'party-event-rental', 1, '2019-11-13 02:53:35', '2019-11-20 03:10:15', NULL, '', '', 'Party/Event Rental', '#ff80ff', 'Party/Event Rental', 'Party/Event Rental', 1),
(18, 0, 'DJ/Entertainment/MC', 0, 16, 'dj-entertainment-mc', 1, '2019-11-13 02:56:51', '2019-11-20 03:10:16', NULL, '', '', 'DJ/Entertainment/MC', '#ff80c0', 'DJ/Entertainment/MC', 'DJ/Entertainment/MC', 1),
(19, 0, 'Entertainer', 0, 17, 'entertainer', 1, '2019-11-13 03:33:22', '2019-11-20 03:10:16', NULL, '', '', 'Entertainer', '#00ff40', 'Entertainer', 'Entertainer', 1),
(20, 0, 'Event Planner', 0, 18, 'event-planner', 1, '2019-11-13 03:34:21', '2019-11-20 03:10:16', NULL, '', '', 'Event Planner', '#ff8040', 'Event Planner', 'Event Planner', 1),
(21, 0, 'Funeral Service', 0, 19, 'funeral-service', 1, '2019-11-13 03:34:36', '2019-11-20 03:10:16', NULL, '', '', 'Funeral Service', '#ff0000', 'Funeral Service', 'Funeral Service', 1),
(22, 0, 'Printing/Stationary Services', 0, 20, 'printing-stationary-services', 1, '2019-11-13 03:34:51', '2019-11-20 03:10:16', NULL, '', '', 'Printing/Stationary Services', '#ff8080', 'Printing/Stationary Services', 'Printing/Stationary Services', 1),
(23, 0, 'Lodging', 0, 21, 'lodging', 1, '2019-11-13 03:35:02', '2019-11-20 03:10:16', NULL, '', '', 'Lodging', '#ffff80', 'Lodging', 'Lodging', 1),
(24, 13, 'Cake', 0, 22, 'cake', 1, '2019-11-13 03:35:12', '2019-11-20 03:31:09', NULL, 'images/categories/1574240469F63ls8aI3ygV7cnB8vxz-162958.jpg', '', 'Cake', '#ff0000', 'Cake', 'Cake', 1),
(25, 0, 'Decoration', 0, 23, 'decoration', 1, '2019-11-13 03:35:23', '2019-11-20 03:10:16', NULL, '', '', 'Decoration', '#ff80ff', 'Decoration', 'Decoration', 1),
(26, 0, 'Favors/Gift Registry', 0, 24, 'favors-gift-registry', 1, '2019-11-13 03:35:38', '2019-11-20 03:10:16', NULL, '', '', 'Favors/Gift Registry', '#0080ff', 'Favors/Gift Registry', 'Favors/Gift Registry', 1),
(27, 0, 'SECURITY', 0, 25, 'security', 1, '2019-11-13 03:35:52', '2019-11-20 03:10:16', NULL, '', '', 'SECURITY', '#80ffff', 'SECURITY', 'SECURITY', 1),
(28, 0, 'Sam', 0, 4, 'sam', 1, '2019-11-13 10:36:27', '2019-11-20 03:10:15', NULL, '', '', 'Sam', '#ff8040', 'Sam', 'Sam', 1),
(29, 1, 'Photographers', 0, 7, 'demoo', 1, '2019-11-14 05:03:12', '2019-11-20 03:10:16', NULL, '', '', 'sads', '#80ffff', 'sdds', 'sdds', 0),
(30, 1, 'Professional Photographers', 0, 8, 'demmo2', 1, '2019-11-14 05:03:54', '2019-11-20 03:10:16', NULL, '', '', 'ses', '#ff8040', 'sddssd', 'sdddddd', 0),
(31, 6, 'Parent', 0, 1, 'parentcategory', 1, '2019-11-15 04:12:46', '2019-11-20 08:05:10', NULL, 'images/categories/1574256910AdkpUtPl3yUSI01kzwZb-dries-augustyns-58ASFVAP2Y4-unsplash.png', 'images/categories/1574068648dKhoF4UWzKOtpexI0C7f-162958.jpg', 'Love', '#ff8040', 'Always', '•	Price should say: Factor in the costs of materials and labor, plus any related business expenses. Consider the total price buyers will pay too—including shipping.\r\n\r\n•	Quantity: For quantities greater than one, this listing will renew automatically until you remove the product manually.', 1),
(32, 31, 'ChildCategoryOne', 0, 1, 'childcategoryone', 1, '2019-11-15 04:13:45', '2019-11-15 04:13:58', NULL, '', '', 'Test', '', 'Test', 'Test', 1),
(33, 2, 'category', 0, 0, 'category', 1, '2019-11-18 04:40:10', '2019-11-18 04:40:10', NULL, 'images/categories/1574071810xXRXBhmUjmxnpJK55Cnw-162958.jpg', 'images/categories/1574071810hQyNwDAQBCLLAD8QI5Dg-167958.jpg', 'alwaysss', '', 'sparrow', '!!! URGENT: I pulled a link from my history and it took me straight to the back end of the portal. This is a huge security problem. People login always has to be required!!!\r\nI suggest you place a small text under each field to guide the vendors through the process just like we did with other fields', 1),
(34, 20, 'Event category', 0, 1, 'event-category', 1, '2019-11-19 01:28:57', '2019-11-19 01:31:24', NULL, 'images/categories/1574146737XA67kAnzlFuwu353e4BH-14997.png', 'images/categories/1574146737JMJEFKSdT7wZpkGxEbwE-162958.jpg', 'Jassi', '#eda208', 'JASSI12', 'India\'s history and culture is dynamic, spanning back to the beginning of human civilization. It begins with a mysterious culture along the Indus River and in farming communities in the southern lands of India. ... By the end of the fourth millennium BC, India had emerged as a region of highly developed civilization.', 1),
(35, 1, 'Wedding Photographer', 0, 1, 'wedding-photographer', 1, '2019-11-19 05:26:39', '2019-11-20 03:10:16', NULL, '', '', 'Wedding Photographer', '#eda208', 'Wedding Photographer', 'Wedding Photographer', 1),
(36, 1, 'Event Photographer', 0, 2, 'event-photographer', 1, '2019-11-19 05:26:59', '2019-11-20 03:10:16', NULL, '', '', 'Event Photographer', '#eda208', 'Event Photographer', 'Event Photographer', 0),
(37, 1, 'Portrait Photographer', 0, 3, 'portrait-photographer', 1, '2019-11-19 05:27:22', '2019-11-20 03:10:16', NULL, '', '', 'Portrait Photographer', '#eda208', 'Portrait Photographer', 'Portrait Photographer', 0),
(38, 1, 'Product Photographer', 0, 4, 'product-photographer', 1, '2019-11-19 05:27:39', '2019-11-20 03:10:16', NULL, '', '', 'Product Photographer', '#eda208', 'Product Photographer', 'Product Photographer', 0),
(39, 1, 'Aerial Photographer', 0, 5, 'aerial-photographer', 1, '2019-11-19 05:28:03', '2019-11-20 03:10:16', NULL, '', '', 'Aerial Photographer', '#eda208', 'Aerial Photographer', 'Aerial Photographer', 0),
(40, 1, 'Boudoir Photographer', 0, 6, 'boudoir-photographer', 1, '2019-11-19 05:28:20', '2019-11-20 03:10:16', NULL, '', '', 'Boudoir Photographer', '#eda208', 'Boudoir Photographer', 'Boudoir Photographer', 0),
(41, 0, 'Sammy', 0, 1, 'sammy', 1, '2019-11-19 05:52:46', '2019-11-20 03:10:15', NULL, 'images/categories/1574162585bMLKCNv4sUhDZDM39u0f-band.png', '', 'Sammy', '#eda208', 'Sammy', 'Sammy', 0),
(42, 24, 'Cake Shop', 0, 0, 'cake-shop', 1, '2019-11-20 03:16:01', '2019-11-20 03:16:51', NULL, 'images/categories/1574239561Dsj1Fhax8VobJI3KNprn-wp3276805-pubg-4k-wallpapers.jpg', '', 'Cakesss', '#ff0000', 'Cake121', 'A cake can be decorated with a photograph by printing the photograph onto an edible icing sheet and then setting the sheet on the desired portion of the cake. The ink used for printing the photograph on the edible icing ...', 0),
(43, 19, 'test cat001 name', 0, 0, 'test-cat001-name', 1, '2019-11-20 08:04:19', '2019-11-20 08:05:25', NULL, 'images/categories/1574256925IY43SgxOfewhaXwMw0QK-dries-augustyns-58ASFVAP2Y4-unsplash.png', '', 'test cat  titla', '#eda208', 'new tag', 'desc', 0);

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
(330, NULL, 6, 3, 'seasons', '2019-11-18 05:22:55', '2019-11-18 05:22:55'),
(337, NULL, 1, 2, 'event', '2019-11-20 07:06:15', '2019-11-20 07:06:15'),
(338, NULL, 1, 3, 'event', '2019-11-20 07:06:15', '2019-11-20 07:06:15'),
(339, NULL, 1, 10, 'amenity', '2019-11-20 07:06:15', '2019-11-20 07:06:15'),
(340, NULL, 1, 4, 'game', '2019-11-20 07:06:15', '2019-11-20 07:06:15'),
(341, NULL, 1, 12, 'game', '2019-11-20 07:06:15', '2019-11-20 07:06:15'),
(342, NULL, 1, 3, 'seasons', '2019-11-20 07:06:15', '2019-11-20 07:06:15');

-- --------------------------------------------------------

--
-- Table structure for table `discount_deals`
--

CREATE TABLE `discount_deals` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `vendor_category_id` int(11) NOT NULL DEFAULT '0',
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

INSERT INTO `discount_deals` (`id`, `category_id`, `user_id`, `vendor_category_id`, `title`, `message_text`, `image`, `description`, `expiry_date`, `type`, `created_at`, `updated_at`) VALUES
(2, 1, 31, 1, '10% OFF your Wedding, Groom, or Bridal Shower Cake!', 'I am interested in this deal for 10% OFF your Wedding, Groom, or Bridal Shower Cake! and would like to receive more information.', 'images/vendors/deals/1574075540tJoNNqIffCpibkBLY24B-t20_1312238515529-Pwc10011.jpg', 'Print out this promotional page and bring it to us when you come in for your complimentary tasting and private appointment. Allow us to meet with you and If you plan on ordering your cake with us allow us to price your cake. Then, show us your print out and we will take 10% OFF our quoted price.', NULL, NULL, '2019-11-18 05:42:20', '2019-11-18 05:42:20'),
(4, 1, 31, 1, '30% OFF your Wedding, Groom, or Bridal Shower Cake!', 'Print out this promotional page and bring it to us when you come in for your complimentary tasting and private appointment. Allow us to meet with you and If you plan on ordering your cake with us allow us to price your cake. Then, show us your print out and we will take 30% OFF our quoted price.', 'images/vendors/deals/1574079573trJHSsyfMtc9fUWH2xyX-t20_1312238515529-Pwc10011.jpg', 'Print out this promotional page and bring it to us when you come in for your complimentary tasting and private appointment. Allow us to meet with you and If you plan on ordering your cake with us allow us to price your cake. Then, show us your print out and we will take 30% OFF our quoted price.', '2019-11-30', NULL, '2019-11-18 06:49:33', '2019-11-18 06:49:33'),
(7, 1, 42, 11, '10% OFF your Wedding, Groom, or Bridal Shower Cake!', 'Print out this promotional page and bring it to us when you come in for your complimentary tasting and private appointment. Allow us to meet with you and If you plan on ordering your cake with us allow us to price your cake. Then, show us your print out and we will take 10% OFF our quoted price.', 'images/vendors/deals/1574159388ouwYkvGT2NsbEXLz60ID-photo-1551592398-c320012bc1c6.jpeg', 'Print out this promotional page and bring it to us when you come in for your complimentary tasting and private appointment. Allow us to meet with you and If you plan on ordering your cake with us allow us to price your cake. Then, show us your print out and we will take 10% OFF our quoted price.', '2019-11-19', NULL, '2019-11-19 04:59:48', '2019-11-19 04:59:48');

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
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'event',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `name`, `description`, `slug`, `image`, `status`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Tests', 'Testing', 'test', NULL, 1, 'event', '2019-11-12 14:00:41', '2019-11-12 15:03:28'),
(2, 'Wedding', 'Wedding', 'wedding', NULL, 1, 'event', '2019-11-13 03:36:46', '2019-11-14 02:28:47'),
(3, 'Reception', 'Reception', 'reception', NULL, 1, 'event', '2019-11-13 03:37:17', '2019-11-13 03:37:17'),
(4, 'Baby Shower', 'Baby Shower', 'baby-shower', NULL, 0, 'event', '2019-11-13 03:38:50', '2019-11-20 06:19:32'),
(5, 'Retreat/ Team Building', 'Retreat/ Team Building', 'retreat-team-building', NULL, 1, 'game', '2019-11-13 03:38:58', '2019-11-13 03:38:58'),
(6, 'Date Night', 'Date Night', 'date-night', NULL, 1, 'event', '2019-11-13 03:39:10', '2019-11-13 03:39:10'),
(7, 'Birth Day', 'Birth Day', 'birth-day', NULL, 0, 'event', '2019-11-13 03:39:21', '2019-11-18 05:30:14'),
(8, 'Hot', 'Hot Des', 'hot', NULL, 0, 'event', '2019-11-13 15:05:42', '2019-11-18 05:30:29'),
(9, 'test', 'dfdfsdf sdfsd sdfds sfsdf', 'test-1', NULL, 1, 'event', '2019-11-14 07:59:35', '2019-11-14 07:59:35'),
(10, 'Event Type Demo', 'Demo Description', 'event-type-demo', NULL, 1, 'event', '2019-11-15 04:14:37', '2019-11-15 04:14:37'),
(11, 'Pool Part', 'DJ  full  and drinks.', 'pool-part', NULL, 0, 'event', '2019-11-18 04:57:44', '2019-11-18 05:30:18'),
(12, 'Jaskaran Singh', 'spanning back to the beginning of human civiliz.', 'jaskaran-singh', NULL, 1, 'event', '2019-11-19 02:49:01', '2019-11-20 00:43:54'),
(13, 'Jaskaran Sandha', 'Back to the beginning of human civilize.', 'jaskaran', NULL, 0, 'event', '2019-11-19 03:31:00', '2019-11-19 03:39:03'),
(14, 'fafasa', 'asgasgagag', 'fafasa', NULL, 1, 'event', '2019-11-20 00:50:26', '2019-11-20 00:50:26'),
(15, 'Vaisakhi', 'Vaisakhi, also known as Baisakhi, Vaishakhi, Vaisakhi, also known as Baisakhi, Vaishakhi, or Vasakhi is a historical and religious festival in Hinduism and Sikhism. It is usually celebrated on 13 or 14 April every year, which commemorates the formation of Khalsa panth of warriors under Guru Gobind Singh in 1699. Wikipedia', 'vaisakhi', NULL, 0, 'event', '2019-11-20 03:41:07', '2019-11-20 03:50:45'),
(16, 'Jas', 'The image must be an image. Error message should be correct .  it should be sound goodThe image must be an image. Error message should be correct .  it should be sound goodThe image must be an image. Error message should be correct .  it should be sound goodThe image must be an image. Error message should be correct .  it should be sound goodThe image must be an image. Error message should be correct .  it should be sound good', 'jaskaran-singh123', NULL, 1, 'event', '2019-11-20 07:53:58', '2019-11-20 07:55:02');

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
  `vendor_category_id` int(11) NOT NULL DEFAULT '0',
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `f_a_qs`
--

INSERT INTO `f_a_qs` (`id`, `question`, `answer`, `user_id`, `category_id`, `vendor_category_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'What all services can you offer?', '<ul>\r\n	<li>Candid Photography</li>\r\n	<li>Traditional Photography</li>\r\n	<li>Pre-wedding shoots</li>\r\n	<li>Cinematography</li>\r\n	<li>Traditional Videography</li>\r\n	<li>Albums</li>\r\n</ul>', 31, 1, 1, 1, '2019-11-20 02:18:06', '2019-11-20 02:18:45'),
(2, 'What is the price of your most popular wedding package?', '<p>175000</p>', 31, 1, 1, 1, '2019-11-20 02:19:17', '2019-11-20 02:19:17'),
(3, 'What all does the most popular package include?', '<p>Traditional Photographer, Candid Photographer on Wedding and Engagement,Cinematic Video on Wedding and Engagement, HD Video on Small Function Like Mehendi and Haldi etc with 2 Albums</p>', 31, 1, 1, 1, '2019-11-20 02:19:48', '2019-11-20 02:19:48'),
(4, 'What is the starting price per day for candid photography?', '<p>30,000</p>', 31, 1, 1, 1, '2019-11-20 02:20:18', '2019-11-20 02:20:18'),
(5, 'What is the starting price for your wedding photography services?', '<p>$ 2299.00</p>', 42, 1, 11, 1, '2019-11-20 03:29:58', '2019-11-20 03:29:58'),
(6, 'What primary photographic style do you identify with?', '<ul>\r\n	<li>Contemporary</li>\r\n	<li>Natural</li>\r\n	<li>Photojournalism</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>', 42, 1, 11, 1, '2019-11-20 03:31:07', '2019-11-20 03:31:07');

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
(19, '2019_11_18_095419_create_discount_deals_table', 15),
(20, '2019_11_19_062234_create_page_meta_tags_table', 16);

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
(119, 0, 8, 1, 42, 'events', 'event', '4', '2019-11-18 10:24:52', '2019-11-18 10:24:52'),
(125, 0, 3, 1, 42, 'amenities', 'amenity', '6', '2019-11-20 03:38:58', '2019-11-20 03:38:58'),
(126, 0, 3, 1, 42, 'amenities', 'amenity', '8', '2019-11-20 03:38:58', '2019-11-20 03:38:58'),
(127, 0, 3, 1, 42, 'events', 'event', '2', '2019-11-20 03:38:58', '2019-11-20 03:38:58'),
(128, 0, 3, 1, 42, 'events', 'event', '3', '2019-11-20 03:38:58', '2019-11-20 03:38:58'),
(129, 0, 3, 1, 42, 'addons', 'Collage Family', '5', '2019-11-20 03:40:34', '2019-11-20 03:40:34'),
(133, 0, 4, 1, 34, 'addons', 'demo 2', '62', '2019-11-20 03:52:50', '2019-11-20 03:52:50'),
(138, 0, 4, 1, 34, 'amenities', 'amenity', '6', '2019-11-20 04:06:53', '2019-11-20 04:06:53'),
(139, 0, 4, 1, 34, 'amenities', 'amenity', '8', '2019-11-20 04:06:53', '2019-11-20 04:06:53'),
(140, 0, 4, 1, 34, 'events', 'event', '2', '2019-11-20 04:06:53', '2019-11-20 04:06:53'),
(141, 0, 4, 1, 34, 'events', 'event', '3', '2019-11-20 04:06:53', '2019-11-20 04:06:53'),
(142, 0, 1, 1, 31, 'amenities', 'amenity', '6', '2019-11-20 05:57:57', '2019-11-20 05:57:57'),
(143, 0, 1, 1, 31, 'amenities', 'amenity', '8', '2019-11-20 05:57:57', '2019-11-20 05:57:57'),
(144, 0, 1, 1, 31, 'events', 'event', '2', '2019-11-20 05:57:57', '2019-11-20 05:57:57'),
(145, 0, 1, 1, 31, 'events', 'event', '3', '2019-11-20 05:57:57', '2019-11-20 05:57:57'),
(146, 0, 1, 1, 31, 'addons', 'Add', '250', '2019-11-20 05:58:44', '2019-11-20 05:58:44');

-- --------------------------------------------------------

--
-- Table structure for table `page_meta_tags`
--

CREATE TABLE `page_meta_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent` int(11) NOT NULL,
  `key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `keyValue` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_meta_tags`
--

INSERT INTO `page_meta_tags` (`id`, `parent`, `key`, `keyValue`, `type`, `title`, `created_at`, `updated_at`) VALUES
(2, 0, '', '', 'homepage', 'Homepage', '2019-11-19 03:32:36', '2019-11-19 03:32:36'),
(3, 0, 'slider_title', 'LOREM IPSUM DOLOR', 'homepage', '', '2019-11-19 03:45:36', '2019-11-19 09:26:29'),
(4, 0, 'type', 'homepage', 'homepage', '', '2019-11-19 03:54:09', '2019-11-19 03:54:09'),
(5, 0, 'slider_tagline', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor', 'homepage', '', '2019-11-19 03:56:03', '2019-11-19 03:56:20'),
(6, 0, 'slider_video_url', '1574254555.mp4', 'homepage', '', '2019-11-19 03:56:03', '2019-11-20 07:25:55'),
(7, 0, '', '', 'about_us', '', '2019-11-19 04:00:57', '2019-11-19 04:00:57'),
(9, 0, '', '', 'login', 'Login', '2019-11-19 07:06:26', '2019-11-19 07:06:26'),
(10, 0, '', '', 'signup', 'Signup', '2019-11-19 07:06:30', '2019-11-19 07:06:30'),
(11, 0, 'slider_title', '', 'about_us', 'About Us', '2019-11-19 07:13:06', '2019-11-19 07:13:06'),
(12, 0, 'slider_tagline', '', 'about_us', '', '2019-11-19 07:13:06', '2019-11-19 07:13:06'),
(13, 0, 'slider_video_url', '', 'about_us', '', '2019-11-19 07:13:06', '2019-11-19 07:13:06'),
(14, 0, 'section1_title', 'POPULAR', 'homepage', '', '2019-11-19 07:25:32', '2019-11-19 07:32:28'),
(15, 0, 'section1_description', 'EVENTS', 'homepage', '', '2019-11-19 07:25:32', '2019-11-19 07:32:28'),
(16, 0, 'section1_tagline', 'EVENTS', 'homepage', '', '2019-11-19 07:35:33', '2019-11-19 07:37:08'),
(17, 0, 'section2_title', 'ON A BUDGET?', 'homepage', '', '2019-11-19 07:36:21', '2019-11-19 07:37:08'),
(18, 0, 'section2_tagline', 'LET’S PLAN TOGETHER', 'homepage', '', '2019-11-19 07:36:22', '2019-11-19 07:37:08'),
(19, 0, 'section3_title', '\'ENVISIUN EXPALINED, LET’S SHOW YOU HOW\'', 'homepage', '', '2019-11-19 07:38:25', '2019-11-20 07:16:19'),
(20, 0, 'section3_tagline', '"PILOT YOUR DREAMS"', 'homepage', '', '2019-11-19 07:38:25', '2019-11-20 07:16:19'),
(21, 0, 'section4_title1', 'WHY NOT CHOOSE US?', 'homepage', '', '2019-11-19 07:45:22', '2019-11-19 07:46:01'),
(22, 0, 'section4_tagline1', 'GET TO KNOW ENVISIUN!!', 'homepage', '', '2019-11-19 07:45:22', '2019-11-19 07:46:01'),
(23, 0, 'section4_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris', 'homepage', '', '2019-11-19 07:45:22', '2019-11-19 07:46:01'),
(24, 0, 'section4_title2', 'ARE YOU A VENDOR?', 'homepage', '', '2019-11-19 07:45:22', '2019-11-19 07:46:01'),
(25, 0, 'section4_tagline2', 'List your Business and Start Delivering Dreams', 'homepage', '', '2019-11-19 07:45:22', '2019-11-19 07:46:01'),
(26, 0, 'section5_title', 'WHAT PEOPLE ARE SAYING ABOUT US', 'homepage', '', '2019-11-19 07:48:04', '2019-11-20 07:14:58'),
(27, 0, 'title', 'login', 'login', '', '2019-11-19 07:50:55', '2019-11-19 08:02:09'),
(28, 0, 'title', 'login', 'homepage', '', '2019-11-19 07:52:09', '2019-11-19 07:55:23'),
(29, 0, 'heading', 'Welcome', 'login', '', '2019-11-19 07:53:51', '2019-11-20 09:41:00'),
(30, 0, 'description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse scelerisque turpis in lacus feugiat tristique', 'login', '', '2019-11-19 07:53:51', '2019-11-20 09:41:00'),
(31, 0, 'heading', 'welcome', 'login', '', '2019-11-19 07:55:23', '2019-11-19 07:56:26'),
(32, 0, 'description', 'desc', 'login', '', '2019-11-19 07:55:23', '2019-11-19 07:56:26'),
(33, 0, 'type', 'login', 'login', '', '2019-11-19 08:02:09', '2019-11-19 08:02:09'),
(34, 0, 'title', 'REGISTER AS A USER', 'signup', '', '2019-11-19 08:04:59', '2019-11-19 08:05:42'),
(35, 0, 'heading', 'WELCOME', 'signup', '', '2019-11-19 08:04:59', '2019-11-20 09:41:11'),
(36, 0, 'description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse scelerisque turpis in lacus feugiat tristique', 'signup', '', '2019-11-19 08:04:59', '2019-11-20 09:41:11'),
(37, 0, 'type', 'signup', 'signup', '', '2019-11-19 08:05:42', '2019-11-19 08:05:42'),
(38, 0, 'signup_title', 'REGISTER AS A USER', 'signup', '', '2019-11-19 08:06:21', '2019-11-19 08:06:33'),
(39, 0, 'login_title', 'Login', 'login', '', '2019-11-19 08:07:19', '2019-11-19 08:08:34'),
(40, 0, 'slider_button_title', 'Explore more', 'homepage', '', '2019-11-19 08:28:48', '2019-11-19 08:29:20'),
(41, 0, 'slider_button_url', 'http://49.249.236.30:6633/', 'homepage', '', '2019-11-19 08:28:48', '2019-11-20 06:02:28'),
(42, 0, 'section4_button_title', 'Sign Up', 'homepage', '', '2019-11-19 08:33:06', '2019-11-19 08:33:29'),
(43, 0, 'section4_button_url', 'http://49.249.236.30:6633/', 'homepage', '', '2019-11-19 08:33:06', '2019-11-20 06:02:29'),
(44, 0, 'section2_image_tagline', 'Let’s Budget', 'homepage', '', '2019-11-19 08:35:51', '2019-11-19 08:36:06'),
(53, 0, 'slider_video_url', 'images/setting/1574177390lBvPzkHcwFyTsr4OVPo7-t10_-dsc5356_15_183683-1555326929.jpg', 'common', NULL, '2019-11-19 09:59:50', '2019-11-19 09:59:50'),
(54, 0, 'banner', 'images/setting/1574178399FPDP2XlI8PmxUSP0OXw8-Computer-Wallpapers-26-1600-x-1200.jpg', 'login', NULL, '2019-11-19 10:16:33', '2019-11-19 10:16:39'),
(55, 0, 'banner', '', 'signup', NULL, '2019-11-19 10:16:48', '2019-11-19 10:16:48'),
(56, 0, 'login_banner', '1574256061.png', 'login', NULL, '2019-11-19 10:18:18', '2019-11-20 07:51:01'),
(57, 0, 'signup_banner', '1574256045.png', 'signup', NULL, '2019-11-19 10:18:38', '2019-11-20 07:50:45'),
(58, 0, 'section2_image', '1574250795.png', 'homepage', NULL, '2019-11-20 05:49:27', '2019-11-20 06:23:15'),
(59, 0, 'section4_image', '1574251218.png', 'homepage', NULL, '2019-11-20 06:26:08', '2019-11-20 06:30:18'),
(60, 0, 'section3_video', '1574253495.mp4', 'homepage', NULL, '2019-11-20 06:34:00', '2019-11-20 07:08:15'),
(61, 0, '', 'about_us', 'about_us', NULL, '2019-11-20 07:40:45', '2019-11-20 07:40:45'),
(62, 0, 'section3_video_poster', '1574260675.png', 'homepage', NULL, '2019-11-20 09:06:03', '2019-11-20 09:07:55'),
(63, 0, 'section1_title', '\'ENVISIUN EXPALINED, LET’S SHOW YOU HOW\'', 'login', NULL, '2019-11-20 09:50:27', '2019-11-20 09:53:31'),
(64, 0, 'section1_tagline', '"PILOT YOUR DREAMS"', 'login', NULL, '2019-11-20 09:50:27', '2019-11-20 09:53:31'),
(65, 0, 'section1_video', '1574263412.mp4', 'login', NULL, '2019-11-20 09:50:27', '2019-11-20 09:53:32'),
(66, 0, 'section1_video_poster', '1574263412.png', 'login', NULL, '2019-11-20 09:50:27', '2019-11-20 09:53:32'),
(67, 0, 'section2_title', 'WHAT PEOPLE ARE SAYING ABOUT US', 'login', NULL, '2019-11-20 09:50:27', '2019-11-20 09:53:31'),
(68, 0, 'section1_title', '\'ENVISIUN EXPALINED, LET’S SHOW YOU HOW\'', 'signup', NULL, '2019-11-20 09:56:22', '2019-11-20 09:57:37'),
(69, 0, 'section1_tagline', '"PILOT YOUR DREAMS"', 'signup', NULL, '2019-11-20 09:56:22', '2019-11-20 09:57:37'),
(70, 0, 'section1_video', '1574263658.mp4', 'signup', NULL, '2019-11-20 09:56:22', '2019-11-20 09:57:38'),
(71, 0, 'section1_video_poster', '1574263658.png', 'signup', NULL, '2019-11-20 09:56:22', '2019-11-20 09:57:38'),
(72, 0, 'section2_title', 'WHAT PEOPLE ARE SAYING ABOUT US', 'signup', NULL, '2019-11-20 09:56:22', '2019-11-20 09:57:37');

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
(3, 'Winter season', 'Winter season desc', 'my-new-season', NULL, 1, '2019-11-15 22:57:50', '2019-11-15 23:00:14'),
(4, 'Rainy Season', 'The wet season is the time of year', 'rainy-season', NULL, NULL, '2019-11-19 04:09:51', '2019-11-19 04:09:51');

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
(1, 'style', 'Photobooth', 'Photobooth', '1573834276.png', 1, '2019-11-15 09:37:28', '2019-11-20 02:30:45'),
(2, 'demo2-style', 'Albums', 'Albums', '1573885203.png', 1, '2019-11-16 00:50:03', '2019-11-20 02:31:26');

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
(1, 'Admin', NULL, NULL, 'admin@gmail.com', NULL, '$2y$10$gPBtDJRyPMvLnzrXqmTOReAT5VHFdyJuxRHjv.TT7t7KUJTOT.YPC', 'admin', 'images/admin/15742549650V8GbY3JTwSf61IqJzQa-about.png', 'lOiVkDqIORg38UEEszUUsDGa0BnImv42dujic5mVz8a16c5QjIXr00A7lXGr', '2019-11-09 00:19:35', '2019-11-20 07:32:45'),
(31, 'Narinder Bajwa', 'Narinder', 'Bajwa', 'bajwa7696346232@gmail.com', '2019-11-12 07:02:09', '$2y$10$he8YxmZeBwdKAMqcbtQ0/.aJqTWo1Nxpm/WCKXK2XaEZAAJUE7Hc.', 'vendor', 'images/vendors/profile/1573745727INNHnbWOrmoe5iQlrdT7-bulb.png', 'xBQnhp6ewRblw4XUTXiFynAiwlEdUDOH3s9owCqOWtfAeqTsTC9hwjF3wWjV', '2019-11-12 06:11:13', '2019-11-14 10:05:27'),
(32, 'Narinder Bajwa', 'Narinder', 'Bajwa', 'bajwa9876470492@gmail.com', NULL, '$2y$10$tiBVNqE4PMLEbmyfMNH9/eXn4rkSKw0uHTNdeFJEALg2yBdwB04JG', 'user', NULL, NULL, '2019-11-12 06:25:25', '2019-11-12 06:25:25'),
(33, 'hitesh sharma', 'hitesh', 'sharma', 'hitesh22791@gmail.com', '2019-11-13 18:30:00', '$2y$10$o6TsuB0J0za0EknNojA7g.B304Cg3SRfIqrJU7QQZKSxgCYb5FpGi', 'vendor', NULL, '8p4STGrRWbGkOcBMo6T9a9LQYuhIs2dkbiJCqmeDTm5GHxmmDgtOaWR3M9Po', '2019-11-14 02:17:10', '2019-11-14 02:17:10'),
(34, 'vendor s', 'vendor', 's', 'vendor001@yopmail.com', '2019-11-14 04:22:00', '$2y$10$3nhw3wasoho0VKY52ffgHO7/OBu5wNz0O4r2SXSQrtzktEnI3YI5K', 'vendor', NULL, 'vLKWlqnwIWQ3CRGG0aWRwxu5lFnLnXEoa1H1H1dLyIdswRLppVdoqZJDlRTH', '2019-11-14 04:19:37', '2019-11-14 04:22:00'),
(35, 'Kanny Gill', 'Kanny', 'Gill', 'kanny@yopmail.com', '2019-11-15 03:06:31', '$2y$10$XZA0JR6bHi1MSANa86u8jOncOCBPT7wFdxaq5RZBjLIYW992ssDA.', 'vendor', NULL, 'Xrl2c1Wi9CoObL6isRFEmDk1wHPpScmBBteayDW2fjF1aVKrOBVdDIAZgx2W', '2019-11-15 03:06:02', '2019-11-15 03:06:31'),
(36, 'Kanny Rajput', 'Kanny', 'Rajput', 'kannyraj@yopmail.com', '2019-11-15 04:27:34', '$2y$10$05CiO5N1YnlHK2qAV493Kub/2oQ1PkscvvcNJ5lEeupu.MNxtrT7m', 'vendor', NULL, 'MiJiNw0hILOy4O7TcVXUAYem6b3hAujmp6kbR0rc2B8ILItRzt4iDwxj4wnI', '2019-11-15 04:27:09', '2019-11-15 04:27:34'),
(37, 'Kanny Singhh', 'Kanny', 'Singhh', 'kannysingh@yopmail.com', '2019-11-15 04:30:26', '$2y$10$D43XORx9FPYbJXJu2L7CkuJsKI9ywXPjNOXoVhPi9iegyE5tXy7h2', 'vendor', NULL, 'Moa9zHEdREFzRSFG7DNs2fDCSMEFPyGiUGOgan9FxOFj4TjsZNcdLF5CgwIa', '2019-11-15 04:30:08', '2019-11-15 04:30:26'),
(38, 'Yuvraj Bajwa', 'Yuvraj', 'Bajwa', 'yuvi@gmail.com', '2019-11-14 18:30:00', '$2y$10$nNsAZlbUjk5MQejC/gAcO.00QkIKDfJI7cODHa4OT8KQ96SGWFRqW', 'vendor', NULL, NULL, '2019-11-15 04:51:50', '2019-11-15 04:51:50'),
(39, 'HYCINTH YIMGA', 'HYCINTH', 'YIMGA', 'contactfavorville@gmail.com', '2019-11-15 16:20:30', '$2y$10$6Nq8e2EhE6Xp2/r7pSISb.cvfxbVENNgwPDeu4MZ0PIzm6a6/dEBe', 'user', NULL, 'HZfumDTztXkugyIUn7sXHgtJXprsW6Cp5e12T6rnJug0qChroiHGZY8eRyGQ', '2019-11-15 16:20:15', '2019-11-15 16:20:30'),
(40, 'Test Test', 'Test', 'Test', 'yimgah@outlook.com', '2019-11-15 16:26:13', '$2y$10$7i8QLKLRZvQS/aoDt/OWTuit05TjXMX9wkMMKzmDsT14wJ5IVIi3a', 'vendor', NULL, 'J6E8MXFU30Ds9mL0aBKSunr2UePU5F1PnmAIskQMBnUNQbbWXh1U7HDemJ0j', '2019-11-15 16:26:02', '2019-11-15 16:26:13'),
(41, 'Ivery High', 'Ivery', 'High', 'ihigh@masonlive.gmu.edu', '2019-11-15 19:10:31', '$2y$10$I3FxreZ4zHuUEns6VhcvmOCU7T5DvjU/j91f3YxUoUUXVzZFyDpjK', 'vendor', NULL, NULL, '2019-11-15 19:09:57', '2019-11-15 19:10:31'),
(42, 'Jaskaran Singh', 'Jaskaran', 'Singh', 'jaskaran@yopmail.com', '2019-11-18 03:05:55', '$2y$10$24fdx3W1i9M2GLFjlOeUXuE2H7reNsX/Nsixl/ou8JxPIB.2EmZh.', 'vendor', NULL, 'wbq1YNvJ8qgdDySh1vnBVZ4F1jZIKnz7NQKkvAMaotOeZ5fUD0EKAezgltx0', '2019-11-18 03:05:38', '2019-11-18 03:05:55'),
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
(40, 0, 31, 6, 1, NULL, '2019-11-20 02:36:49', '2019-11-20 02:36:49'),
(41, 0, 31, 8, 1, NULL, '2019-11-20 02:36:49', '2019-11-20 02:36:49'),
(42, 0, 42, 6, 1, NULL, '2019-11-20 03:32:28', '2019-11-20 03:32:28');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_categories`
--

CREATE TABLE `vendor_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_url` text COLLATE utf8mb4_unicode_ci,
  `status` int(11) DEFAULT NULL,
  `publish` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendor_categories`
--

INSERT INTO `vendor_categories` (`id`, `parent`, `user_id`, `category_id`, `title`, `business_url`, `status`, `publish`, `created_at`, `updated_at`) VALUES
(1, 0, 31, 1, 'Prateek Dua Photography', 'prateek-dua-photography', 1, 1, '2019-11-20 01:37:22', '2019-11-20 01:54:50'),
(2, 0, 31, 18, NULL, NULL, 1, 0, '2019-11-20 01:45:40', '2019-11-20 01:45:40'),
(3, 1, 31, 29, NULL, NULL, 1, 0, '2019-11-20 02:32:09', '2019-11-20 02:32:09'),
(4, 1, 31, 30, NULL, NULL, 1, 0, '2019-11-20 02:32:09', '2019-11-20 02:32:09'),
(5, 1, 31, 35, NULL, NULL, 1, 0, '2019-11-20 02:32:09', '2019-11-20 02:32:09'),
(6, 1, 31, 36, NULL, NULL, 1, 0, '2019-11-20 02:32:09', '2019-11-20 02:32:09'),
(7, 1, 31, 37, NULL, NULL, 1, 0, '2019-11-20 02:32:09', '2019-11-20 02:32:09'),
(8, 1, 31, 38, NULL, NULL, 1, 0, '2019-11-20 02:32:09', '2019-11-20 02:32:09'),
(9, 1, 31, 39, NULL, NULL, 1, 0, '2019-11-20 02:32:09', '2019-11-20 02:32:09'),
(10, 1, 31, 40, NULL, NULL, 1, 0, '2019-11-20 02:32:09', '2019-11-20 02:32:09'),
(11, 0, 42, 1, 'Kanny Gill Photography', 'kanny-gill-photography', 1, 1, '2019-11-20 03:23:14', '2019-11-20 03:27:04'),
(12, 11, 42, 30, NULL, NULL, 1, 0, '2019-11-20 03:32:20', '2019-11-20 03:32:20'),
(13, 11, 42, 35, NULL, NULL, 1, 0, '2019-11-20 03:32:20', '2019-11-20 03:32:20'),
(14, 0, 34, 20, NULL, NULL, 1, 0, '2019-11-20 03:35:54', '2019-11-20 03:35:54'),
(15, 0, 34, 25, NULL, NULL, 1, 0, '2019-11-20 03:35:54', '2019-11-20 03:35:54'),
(16, 0, 34, 1, NULL, NULL, 1, 0, '2019-11-20 03:35:54', '2019-11-20 03:35:54'),
(17, 0, 40, 6, NULL, NULL, 1, 0, '2019-11-20 05:19:29', '2019-11-20 05:19:29');

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
  `vendor_category_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendor_category_meta_datas`
--

INSERT INTO `vendor_category_meta_datas` (`id`, `parent`, `key`, `type`, `keyValue`, `user_id`, `category_id`, `vendor_category_id`, `created_at`, `updated_at`) VALUES
(1, NULL, 'business_name', 'basic_information', 'Prateek Dua Photography', 31, 1, 1, '2019-11-20 01:45:48', '2019-11-20 01:54:50'),
(2, NULL, 'address', 'basic_information', 'C-136 201303 Sector 40, Noida (Noida)', 31, 1, 1, '2019-11-20 01:45:48', '2019-11-20 04:03:29'),
(3, NULL, 'website', 'basic_information', 'http://49.249.236.30:6633', 31, 1, 1, '2019-11-20 01:45:48', '2019-11-20 01:54:50'),
(4, NULL, 'phone_number', 'basic_information', '4158464500', 31, 1, 1, '2019-11-20 01:45:48', '2019-11-20 01:54:50'),
(5, NULL, 'company', 'basic_information', 'Prateek Dua Photography', 31, 1, 1, '2019-11-20 01:45:48', '2019-11-20 01:54:50'),
(6, NULL, 'travel_distaince', 'basic_information', '1000', 31, 1, 1, '2019-11-20 01:45:48', '2019-11-20 01:54:50'),
(7, NULL, 'min_price', 'basic_information', '200', 31, 1, 1, '2019-11-20 01:45:48', '2019-11-20 01:54:50'),
(8, NULL, 'cover_photo', 'basic_information', 'images/vendors/settings/1574234690Hno6XW0j4DzZq2PdSd3k-t10_-dsc5356_15_183683-1555326929.jpg', 31, 1, 1, '2019-11-20 01:45:48', '2019-11-20 01:54:50'),
(9, NULL, 'short_description', 'basic_information', 'Based out of Noida, Prateek Dua Photography is a photography service that specialises in documenting the splendour of your nuptial ceremonies in vibrant pictures and engaging videos. The team of experienced photographers at this company combines traditional, contemporary and portraiture styles of photography and captures the emotions of your family and friends on the day of your wedding in exclusive images.', 31, 1, 1, '2019-11-20 01:45:48', '2019-11-20 01:54:50'),
(10, NULL, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/15742352101K1rwYiVUkDUwMtkcSII--dsc6542_15_68762.jpg', 31, 1, 1, '2019-11-20 02:03:30', '2019-11-20 02:03:30'),
(11, NULL, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/1574235210QTSRE9y4j9CYW20UBEIJ--dsc2796_15_68762.jpg', 31, 1, 1, '2019-11-20 02:03:30', '2019-11-20 02:03:30'),
(12, NULL, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/1574235210TY35njj6jpTV3FtbehM8--dsc2731_15_68762.jpg', 31, 1, 1, '2019-11-20 02:03:30', '2019-11-20 02:03:30'),
(13, NULL, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/1574235210L30rURbwQd2nBn5A7ELL--dsc2726_15_68762.jpg', 31, 1, 1, '2019-11-20 02:03:30', '2019-11-20 02:03:30'),
(14, NULL, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/1574235210ri8VBdDCNpEZ5Lvc57kw-img-9096_15_68762-1562319904.jpg', 31, 1, 1, '2019-11-20 02:03:30', '2019-11-20 02:03:30'),
(15, NULL, 'video', 'videoGallery', '{"title":"Best Pre wedding video shoot","link":"https://www.youtube.com/embed/aFRAwJ5Q7nw"}', 31, 1, 1, '2019-11-20 02:11:07', '2019-11-20 02:11:07'),
(16, NULL, 'video', 'videoGallery', '{"title":"Lorem ipsum dolor sit","link":"https:\\/\\/www.youtube.com\\/embed\\/aFRAwJ5Q7nw"}', 31, 1, 1, '2019-11-20 02:13:39', '2019-11-20 02:13:39'),
(17, NULL, 'description', 'description', '<p>Based out of Noida, Prateek Dua Photography is a photography service that specialises in documenting the splendour of your nuptial ceremonies in vibrant pictures and engaging videos. The team of experienced photographers at this company combines traditional, contemporary and portraiture styles of photography and captures the emotions of your family and friends on the day of your wedding in exclusive images. The staff can also modify the snapshots using a variety of visual effects such as monochrome, Sabatier and bokeh.</p>\r\n\r\n<p><strong>Services Offered</strong></p>\r\n\r\n<p>Be it the beauty of bride-to-be or her mehndi designs, the team covers every aspect of the occasion to give you pictorial memories that you can relive for years. To depict the happiness of the couple, the staff conducts candid pre-wedding and post-wedding shoots in attractive photographs. Apart from these, the team of Prateek Dua Photography also sets photo booths at the venue for the entertainment of your guests. The company offers products such as albums and Blue-ray discs or DVDs so that you can store the images of your special day in creative formats.</p>\r\n\r\n<p>Prateek Dua Photography also provides the option of online sharing of your wedding pictures and videos through its social media pages. The packages offered by this company are customisable as per your requirements and the budget. The range of service they offer are:</p>\r\n\r\n<ul>\r\n	<li>Wedding photography and videography</li>\r\n	<li>Pre-wedding shoots</li>\r\n	<li>Candid photography</li>\r\n	<li>Traditional videography and photography</li>\r\n	<li>Cinematography</li>\r\n	<li>Albums</li>\r\n	<li>Photobooth</li>\r\n</ul>', 31, 1, 1, '2019-11-20 02:20:24', '2019-11-20 02:21:50'),
(21, NULL, 'prohibtion', 'prohibtion', '<p>-&nbsp;BYO alcohol</p>\r\n\r\n<p>-&nbsp;General liability insurance required</p>\r\n\r\n<p>-&nbsp;No rice, birdseed, confetti, etc.</p>\r\n\r\n<p>-&nbsp;Approved outside caterer allowed</p>\r\n\r\n<p>-&nbsp;Amplified music OK indoors and outdoors</p>\r\n\r\n<p>-&nbsp;Smoking in designated areas only</p>\r\n\r\n<p>-&nbsp;Music must end by 10:30PM</p>', 31, 1, 1, '2019-11-20 02:36:15', '2019-11-20 02:36:27'),
(22, 0, 'season', 'seasons', '2', 31, 1, 1, '2019-11-20 02:37:10', '2019-11-20 02:37:10'),
(23, NULL, 'business_name', 'basic_information', 'Kanny Gill Photography', 42, 1, 11, '2019-11-20 03:23:21', '2019-11-20 03:27:04'),
(24, NULL, 'address', 'basic_information', '7020 warren drive, Denver, CO 80221', 42, 1, 11, '2019-11-20 03:23:21', '2019-11-20 04:07:07'),
(25, NULL, 'website', 'basic_information', 'https://kanny-gill.com', 42, 1, 11, '2019-11-20 03:23:21', '2019-11-20 03:27:04'),
(26, NULL, 'phone_number', 'basic_information', '9465470549', 42, 1, 11, '2019-11-20 03:23:21', '2019-11-20 03:27:04'),
(27, NULL, 'company', 'basic_information', 'Gill Works', 42, 1, 11, '2019-11-20 03:23:21', '2019-11-20 03:27:04'),
(28, NULL, 'travel_distaince', 'basic_information', '50', 42, 1, 11, '2019-11-20 03:23:21', '2019-11-20 03:27:04'),
(29, NULL, 'min_price', 'basic_information', '1500', 42, 1, 11, '2019-11-20 03:23:21', '2019-11-20 03:27:04'),
(30, NULL, 'cover_photo', 'basic_information', 'images/vendors/settings/1574240224glAtzumYn3MnBt8lg3PS-t10_1435802609300-solo019.jpg', 42, 1, 11, '2019-11-20 03:23:21', '2019-11-20 03:27:04'),
(31, NULL, 'short_description', 'basic_information', 'I have been so lucky to have lived my dream job for the last 8 years! Yes thats more than 300 weddings, 4 countries and many states. It is such a special thing to share an experience like this. My background in Advertising, documentary and fashion has given me a unique view on the process of recording your wedding. Emotion, the details and the connections made are my focus for the day.', 42, 1, 11, '2019-11-20 03:23:21', '2019-11-20 03:27:04'),
(32, NULL, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/1574240264BpJpZvD1lhl0y77Jgeh7-t10_1435802609300-solo019.jpg', 42, 1, 11, '2019-11-20 03:27:44', '2019-11-20 03:27:44'),
(34, NULL, 'video', 'videoGallery', '{"title":"Wedding on Air","link":"https:\\/\\/www.youtube.com\\/embed\\/M8DClD_CStA"}', 42, 1, 11, '2019-11-20 03:28:59', '2019-11-20 03:28:59'),
(35, NULL, 'video', 'videoGallery', '{"title":"Video Lovers","link":"https:\\/\\/www.youtube.com\\/embed\\/p887GFjpr8Q"}', 42, 1, 11, '2019-11-20 03:29:30', '2019-11-20 03:29:30'),
(36, NULL, 'description', 'description', '<p>&ldquo;IN THE FACE OF LOVE, EVERYONE IS EQUAL. LET EVERYONE HAVE THE FREEDOM TO LOVE AND PURSUE THEIR HAPPINESS&rdquo; . - TSAI ING-WEN</p>\r\n\r\n<p>I have been so lucky to have lived my dream job for the last 8 years! Yes thats more than 300 weddings, 4 countries and many states. It is such a special thing to share an experience like this. My background in Advertising, documentary and fashion has given me a unique view on the process of recording your wedding. Emotion, the details and the connections made are my focus for the day.</p>\r\n\r\n<p>After spending a year abroad to be with my fiance and planing our wedding from Chile I truely understand the stress that can be involved in planning your day. My partner and I fully understand what goes into wedding planning and would love to help you along you path. Every wedding and every couple is unique. I put my focus on making sure that I can help you be at ease throughout this process.</p>\r\n\r\n<p>We both truly hope that we can be a part of others wedding days. We know how special this moment is that we also have dreamed of for for ourselves for so many years.</p>', 42, 1, 11, '2019-11-20 03:31:28', '2019-11-20 03:31:59'),
(45, NULL, 'prohibtion', 'prohibtion', '<p>-&nbsp;Wedding coordinator required</p>\r\n\r\n<p>- Testing</p>\r\n\r\n<p>- Lightning</p>\r\n\r\n<p>-&nbsp;Venue must have keypads</p>', 42, 1, 11, '2019-11-20 03:40:51', '2019-11-20 03:52:40'),
(50, NULL, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/1574242892rgUPBbk7uXWBEVSbAHoc-anchez4_51_698336-157383070553519.jpg', 42, 1, 11, '2019-11-20 04:11:32', '2019-11-20 04:11:32'),
(53, NULL, 'business_name', 'basic_information', '', 34, 1, 16, '2019-11-20 04:27:21', '2019-11-20 04:27:21'),
(54, NULL, 'address', 'basic_information', '', 34, 1, 16, '2019-11-20 04:27:22', '2019-11-20 04:27:22'),
(55, NULL, 'website', 'basic_information', '', 34, 1, 16, '2019-11-20 04:27:22', '2019-11-20 04:27:22'),
(56, NULL, 'phone_number', 'basic_information', '', 34, 1, 16, '2019-11-20 04:27:22', '2019-11-20 04:27:22'),
(57, NULL, 'company', 'basic_information', '', 34, 1, 16, '2019-11-20 04:27:22', '2019-11-20 04:27:22'),
(58, NULL, 'travel_distaince', 'basic_information', '', 34, 1, 16, '2019-11-20 04:27:22', '2019-11-20 04:27:22'),
(59, NULL, 'min_price', 'basic_information', '', 34, 1, 16, '2019-11-20 04:27:22', '2019-11-20 04:27:22'),
(60, NULL, 'cover_photo', 'basic_information', '', 34, 1, 16, '2019-11-20 04:27:22', '2019-11-20 04:27:22'),
(61, NULL, 'short_description', 'basic_information', '', 34, 1, 16, '2019-11-20 04:27:22', '2019-11-20 04:27:22'),
(62, NULL, 'description', 'description', '', 34, 25, 15, '2019-11-20 04:28:17', '2019-11-20 04:28:17'),
(64, NULL, 'prohibtion', 'prohibtion', '', 34, 25, 15, '2019-11-20 04:30:00', '2019-11-20 04:30:00'),
(66, NULL, 'business_name', 'basic_information', '', 34, 20, 14, '2019-11-20 04:38:40', '2019-11-20 04:38:40'),
(67, NULL, 'address', 'basic_information', '', 34, 20, 14, '2019-11-20 04:38:40', '2019-11-20 04:38:40'),
(68, NULL, 'website', 'basic_information', '', 34, 20, 14, '2019-11-20 04:38:40', '2019-11-20 04:38:40'),
(69, NULL, 'phone_number', 'basic_information', '', 34, 20, 14, '2019-11-20 04:38:41', '2019-11-20 04:38:41'),
(70, NULL, 'company', 'basic_information', '', 34, 20, 14, '2019-11-20 04:38:41', '2019-11-20 04:38:41'),
(71, NULL, 'travel_distaince', 'basic_information', '', 34, 20, 14, '2019-11-20 04:38:41', '2019-11-20 04:38:41'),
(72, NULL, 'min_price', 'basic_information', '', 34, 20, 14, '2019-11-20 04:38:41', '2019-11-20 04:38:41'),
(73, NULL, 'cover_photo', 'basic_information', '', 34, 20, 14, '2019-11-20 04:38:41', '2019-11-20 04:38:41'),
(74, NULL, 'short_description', 'basic_information', '', 34, 20, 14, '2019-11-20 04:38:41', '2019-11-20 04:38:41'),
(84, 0, 'style', 'styles', '1', 31, 1, 1, '2019-11-20 06:33:26', '2019-11-20 06:33:26'),
(85, 0, 'style', 'styles', '2', 31, 1, 1, '2019-11-20 06:33:26', '2019-11-20 06:33:26');

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
(1, 0, 31, 2, 1, NULL, '2019-11-20 02:37:02', '2019-11-20 02:37:02'),
(2, 0, 31, 3, 1, NULL, '2019-11-20 02:37:02', '2019-11-20 02:37:02'),
(3, 0, 31, 4, 1, NULL, '2019-11-20 02:37:02', '2019-11-20 02:37:02'),
(4, 0, 42, 2, 1, NULL, '2019-11-20 03:32:36', '2019-11-20 03:32:36'),
(5, 0, 42, 3, 1, NULL, '2019-11-20 03:32:36', '2019-11-20 03:32:36');

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
(1, '10 Percent OFF your Wedding', '10-percent-off-your-wedding', '<p>Print out this promotional page and bring it to us when you come in for your complimentary tasting and private appointment. Allow us to meet with you and If you plan on ordering your cake with us allow us to price your cake. Then, show us your print out and we will take 10% OFF our quoted price.</p>', 1, 31, 5000, 5, 1, '<p>Print out this promotional page and bring it to us when you come in for your complimentary tasting and private appointment. Allow us to meet with you and If you plan on ordering your cake with us allow us to price your cake. Then, show us your print out and we will take 10% OFF our quoted price.</p>', 'per_person', 1, 4, 1, '2019-11-20 02:42:33', '2019-11-20 02:42:33'),
(2, 'Lorem ipsum', 'lorem-ipsum', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc congue tristique tincidunt.</p>', 20, 34, 250, 5, 2, '<ul>\r\n	<li>Lorem ipsum dolor sit amet</li>\r\n	<li>Lorem ipsum dolor sit amet</li>\r\n	<li>Lorem ipsum dolor sit amet</li>\r\n	<li>Lorem ipsum dolor sit amet</li>\r\n</ul>', 'per_person', 1, 400, 1, '2019-11-20 03:38:19', '2019-11-20 03:38:19'),
(3, 'Package Silver', 'package-silver', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>', 1, 42, 2000, 8, 5, '<p>No</p>', 'fix', 1, 500, 1, '2019-11-20 03:38:58', '2019-11-20 03:38:58'),
(4, 'tt', 'tt', '<p>desc</p>', 1, 34, 600, 3, 4, '', 'per_person', 2, 34, 1, '2019-11-20 03:52:26', '2019-11-20 04:06:53');

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
(1, 'tt', 'Its good place', 'New York', '1573814666.jpeg', 0, '2019-11-15 04:24:14', '2019-11-20 03:12:02'),
(2, 'jassiiiii', 'The image must be an image. Error message should be correct .  it should be sound goodThe image must be an image. Error message should be correct .  it should be sound good', 'jassiiiii', '1574256467.jpg', 1, '2019-11-20 07:57:47', '2019-11-20 07:57:47');

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
-- Indexes for table `page_meta_tags`
--
ALTER TABLE `page_meta_tags`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `category_variations`
--
ALTER TABLE `category_variations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=343;
--
-- AUTO_INCREMENT for table `discount_deals`
--
ALTER TABLE `discount_deals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `f_a_qs`
--
ALTER TABLE `f_a_qs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `package_meta_datas`
--
ALTER TABLE `package_meta_datas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;
--
-- AUTO_INCREMENT for table `page_meta_tags`
--
ALTER TABLE `page_meta_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT for table `seasons`
--
ALTER TABLE `seasons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `vendor_categories`
--
ALTER TABLE `vendor_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `vendor_category_meta_datas`
--
ALTER TABLE `vendor_category_meta_datas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;
--
-- AUTO_INCREMENT for table `vendor_event_games`
--
ALTER TABLE `vendor_event_games`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `vendor_packages`
--
ALTER TABLE `vendor_packages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `venues`
--
ALTER TABLE `venues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
