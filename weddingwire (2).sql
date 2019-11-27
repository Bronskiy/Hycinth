-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 27, 2019 at 10:04 PM
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
(6, 'Bride dressing are wrwqwertwq', 'Bride\'s dressing', 'ames', NULL, 'amenity', 0, '2019-11-13 04:34:50', '2019-11-21 00:40:17'),
(7, 'kabull', 'History (from Greek ἱστορία, historia, meaning \'inquiry; knowledge acquired by investigation\') is the past as it is described in written documents, and the study thereof. Events occurr', 'ne', NULL, 'game', 1, '2019-11-13 04:43:32', '2019-11-21 00:43:04'),
(8, 'Ceremony arch', 'Ceremony arch', 'gg', NULL, 'amenity', 0, '2019-11-13 04:43:45', '2019-11-20 04:11:06'),
(9, 'Dance floor', 'Dance floor', 'sds', NULL, 'amenity', 0, '2019-11-15 04:18:56', '2019-11-20 04:11:14'),
(10, 'Tables and chairs', 'Tables and chairs provided', 'sds-1', NULL, 'amenity', 1, '2019-11-15 04:19:13', '2019-11-20 02:35:23'),
(11, 'Groom dressing area', 'Groom\'s dressing area', 'dsfsdf', NULL, 'amenity', 1, '2019-11-15 04:46:34', '2019-11-20 02:34:01'),
(12, 'Bed1', '!!! URGENT: I pulled a link from my', 'bed1', NULL, 'game', 1, '2019-11-18 04:49:47', '2019-11-19 03:48:54'),
(13, 'Bed2', 'By the end of the fourth millennium BC.', 'bed2', NULL, 'game', 0, '2019-11-18 04:50:23', '2019-11-19 03:52:03'),
(14, 'Roomss', 'India\'s history and cultur civilization.', 'room', NULL, 'amenity', 0, '2019-11-19 03:47:40', '2019-11-21 00:40:23');

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
  `capacity` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover_type` int(11) NOT NULL DEFAULT '1',
  `meta_tag` text COLLATE utf8mb4_unicode_ci,
  `meta_description` longtext COLLATE utf8mb4_unicode_ci,
  `featured` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent`, `label`, `subparent`, `sorting`, `slug`, `status`, `capacity`, `created_at`, `updated_at`, `description`, `image`, `thumbnail_image`, `meta_title`, `color`, `cover_type`, `meta_tag`, `meta_description`, `featured`) VALUES
(1, 0, 'Photography', 0, 26, 'photography', 1, 0, '2019-11-09 02:43:13', '2019-11-21 07:10:10', NULL, 'images/categories/15743400105v2qXkoiDtFtn0gWQT1g-photography.png', '', 'photography', '#ff80c0', 1, 'photography', 'photography', 0),
(2, 8, 'Cateringss', 0, 1, 'catering', 1, 0, '2019-11-09 03:28:53', '2019-11-18 09:52:14', NULL, 'images/categories/1574071913C7jokbqSIC1l9G0G99FC-2faf1563b9868cea2b35d9345c68c77d.jpg', 'images/categories/1574071913dffkUcobysb0AhTRmTsd-167958.jpg', 'photography', '#ff8040', 1, 'photography', 'kgiuiu', 1),
(3, 2, 'Food', 0, 2, 'food', 1, 0, '2019-11-09 03:41:39', '2019-11-13 05:21:43', NULL, '', '', 'huh', '', 1, 'ljoj', 'hgigy', 0),
(4, 2, 'Demo', 0, 1, 'demo', 1, 0, '2019-11-09 03:44:29', '2019-11-13 05:21:43', NULL, '', '', 'Test', '', 1, 'Test', 'Test', 0),
(5, 0, 'Transportation', 0, 2, 'transportation', 1, 0, '2019-11-13 02:48:49', '2019-11-21 06:50:26', NULL, 'images/categories/157433882640bPU2ByR2dPRT7yYPmB-transportation.png', '', 'Transportation', '#ff8040', 1, 'Transportation', 'Transportation', 1),
(6, 0, 'Balloons', 0, 6, 'balloons', 1, 0, '2019-11-13 02:49:07', '2019-11-21 06:51:23', NULL, 'images/categories/1574338883As2ZWsXRGbdg8HhrcA2l-balloons.png', '', 'Balloons', '#ff8040', 1, 'Balloons', 'Balloons', 1),
(7, 0, 'Bands', 0, 3, 'bands', 1, 0, '2019-11-13 02:49:22', '2019-11-21 06:50:45', NULL, 'images/categories/1574338845Ft52x3r4UsopztpEpzKA-band.png', '', 'Bands', '#ff8040', 1, 'Bands', 'Bands', 1),
(8, 0, 'Catering/ Beverages', 0, 5, 'catering-beverages', 1, 0, '2019-11-13 02:49:53', '2019-11-21 06:51:14', NULL, 'images/categories/15743388746aYwytATTpiwln8JgO1l-catering.png', '', 'Catering/ Beverages', '#ff8040', 1, 'Catering/ Beverages', 'Catering/ Beverages', 1),
(9, 0, 'Churches/Temples', 0, 7, 'churches-temples', 1, 0, '2019-11-13 02:50:23', '2019-11-21 06:51:37', NULL, 'images/categories/15743388975Lo3RUq2ORffCzrIn3ES-church.png', '', 'Churches/Temples', '#ff8000', 1, 'Churches/Temples', 'Churches/Temples', 1),
(10, 0, 'Musicians/Instrumentalist', 0, 8, 'musicians-instrumentalist', 1, 0, '2019-11-13 02:50:46', '2019-11-21 06:53:17', NULL, 'images/categories/1574338997zHC6WEdhupjPoMfdptdB-musician.png', '', 'Musicians/Instrumentalist', '#ff8040', 1, 'Musicians/Instrumentalist', 'Musicians/Instrumentalist', 1),
(11, 0, 'Venues', 0, 9, 'venues', 1, 1, '2019-11-13 02:51:29', '2019-11-26 11:02:31', NULL, 'images/categories/1574340571KoXV6BcmL7FtmiqzGJCy-venue.png', '', 'Venues', '#00ff00', 1, 'Venues', 'Venues', 1),
(12, 0, 'Flowers/Florist', 0, 11, 'flowers-florist', 1, 0, '2019-11-13 02:51:44', '2019-11-21 06:52:21', NULL, 'images/categories/1574338941zjFl0RTRQa4urXRVqZaw-florist.png', '', 'Flowers/Florist', '#0080ff', 1, 'Flowers/Florist', 'Flowers/Florist', 1),
(13, 25, 'Clothing/Dressing and Jewelries', 0, 10, 'clothing-dressing-and-jewelries', 1, 0, '2019-11-13 02:52:02', '2019-11-21 00:09:56', NULL, 'images/categories/15743147966MV8ioeX3sYpcqvg155J-162958.jpg', '', 'Clothing', '#80ffff', 1, 'Clothing/Dressing and Jewelries', 'Clothing/Dressing and Jewelries', 1),
(14, 0, 'Beauty and Health', 0, 12, 'beauty-and-health', 1, 0, '2019-11-13 02:52:35', '2019-11-21 07:19:08', NULL, 'images/categories/1574340548WcIrYQEN4PSQezJc2tif-entertainers2.png', '', 'Beauty and Health', '#ff80c0', 1, 'Beauty and Health', 'Beauty and Health', 1),
(15, 0, 'Staffing/Officiants', 0, 13, 'staffing-officiants', 1, 0, '2019-11-13 02:52:54', '2019-11-21 06:53:34', NULL, 'images/categories/1574339014DCigHI8pGlmLvmvy1pDn-staffing.png', '', 'Staffing/Officiants', '#80ffff', 1, 'Staffing/Officiants', 'Staffing/Officiants', 1),
(16, 0, 'Photography/Videography', 0, 14, 'photography-videography', 1, 0, '2019-11-13 02:53:14', '2019-11-21 07:20:12', NULL, 'images/categories/1574340612LaVErx8mUMnl3hyDiHp2-videography.png', '', 'Photography/Videography', '#ff80ff', 1, 'Photography/Videography', 'Photography/Videography', 1),
(17, 0, 'Party/Event Rental', 0, 15, 'party-event-rental', 1, 0, '2019-11-13 02:53:35', '2019-11-21 06:54:31', NULL, 'images/categories/15743390710Ro5L21ODtO9epoSDl4M-party-rental.png', '', 'Party/Event Rental', '#ff80ff', 1, 'Party/Event Rental', 'Party/Event Rental', 1),
(18, 0, 'DJ/Entertainment/MC', 0, 16, 'dj-entertainment-mc', 1, 0, '2019-11-13 02:56:51', '2019-11-21 06:54:45', NULL, 'images/categories/1574339085ukuq313vmLuiahg25Yai-DJ.png', '', 'DJ/Entertainment/MC', '#ff80c0', 2, 'DJ/Entertainment/MC', 'DJ/Entertainment/MC', 1),
(19, 0, 'Entertainer', 0, 17, 'entertainer', 1, 0, '2019-11-13 03:33:22', '2019-11-21 06:55:11', NULL, 'images/categories/15743391119xZNxqPtq1sVkDFA6CoQ-entertainers.png', '', 'Entertainer', '#00ff40', 1, 'Entertainer', 'Entertainer', 1),
(20, 0, 'Event Planner', 0, 18, 'event-planner', 1, 0, '2019-11-13 03:34:21', '2019-11-26 00:36:59', NULL, 'images/categories/1574339133CJtGgkOlGdtRvuXmyF1k-entertainers2.png', '', 'Event Planner', '#ff8040', 1, 'Event Planner', 'Event Planner', 1),
(21, 0, 'Funeral Service', 0, 19, 'funeral-service', 1, 0, '2019-11-13 03:34:36', '2019-11-21 06:56:37', NULL, 'images/categories/1574339197L4GqIvvm4Oid7vnlVcmO-florist.png', '', 'Funeral Service', '#ff0000', 1, 'Funeral Service', 'Funeral Service', 1),
(22, 0, 'Printing/Stationary Services', 0, 20, 'printing-stationary-services', 1, 0, '2019-11-13 03:34:51', '2019-11-21 07:16:47', NULL, 'images/categories/15743404078k4fedURqsU2RwVPvBQE-printing.png', '', 'Printing/Stationary Services', '#ff8080', 1, 'Printing/Stationary Services', 'Printing/Stationary Services', 1),
(23, 0, 'Lodging', 0, 21, 'lodging', 1, 0, '2019-11-13 03:35:02', '2019-11-21 07:09:06', NULL, 'images/categories/1574339946c55TKH0QzOHK2GRoq554-lodging.png', '', 'Lodging', '#ffff80', 1, 'Lodging', 'Lodging', 1),
(24, 13, 'Cake', 0, 22, 'cake', 1, 0, '2019-11-13 03:35:12', '2019-11-20 03:31:09', NULL, 'images/categories/1574240469F63ls8aI3ygV7cnB8vxz-162958.jpg', '', 'Cake', '#ff0000', 1, 'Cake', 'Cake', 1),
(25, 0, 'Decoration', 0, 23, 'decoration', 1, 0, '2019-11-13 03:35:23', '2019-11-21 07:09:20', NULL, 'images/categories/1574339960iBUOm0yNMRU16xAEJQDX-decoration.png', '', 'Decoration', '#ff80ff', 1, 'Decoration', 'Decoration', 1),
(26, 0, 'Favors/Gift Registry', 0, 24, 'favors-gift-registry', 1, 0, '2019-11-13 03:35:38', '2019-11-21 07:09:34', NULL, 'images/categories/1574339974JyKWQ6DgYIT7r2VL0WXd-gifts.png', '', 'Favors/Gift Registry', '#0080ff', 1, 'Favors/Gift Registry', 'Favors/Gift Registry', 1),
(27, 0, 'SECURITY', 0, 25, 'security', 1, 0, '2019-11-13 03:35:52', '2019-11-21 07:09:48', NULL, 'images/categories/15743399888soBNff6Zohuwf7dS0NJ-security2.png', '', 'SECURITY', '#80ffff', 1, 'SECURITY', 'SECURITY', 1),
(28, 0, 'Sam', 0, 4, 'sam', 1, 0, '2019-11-13 10:36:27', '2019-11-21 06:50:56', NULL, 'images/categories/15743388561XqhzKceY675FsChfYKO-band2.png', '', 'Sam', '#ff8040', 1, 'Sam', 'Sam', 1),
(29, 1, 'Photographers', 0, 7, 'demoo', 1, 0, '2019-11-14 05:03:12', '2019-11-20 03:10:16', NULL, '', '', 'sads', '#80ffff', 1, 'sdds', 'sdds', 0),
(30, 1, 'Professional Photographers', 0, 8, 'demmo2', 1, 0, '2019-11-14 05:03:54', '2019-11-20 03:10:16', NULL, '', '', 'ses', '#ff8040', 1, 'sddssd', 'sdddddd', 0),
(31, 6, 'Parent', 0, 1, 'parentcategory', 1, 0, '2019-11-15 04:12:46', '2019-11-20 08:05:10', NULL, 'images/categories/1574256910AdkpUtPl3yUSI01kzwZb-dries-augustyns-58ASFVAP2Y4-unsplash.png', 'images/categories/1574068648dKhoF4UWzKOtpexI0C7f-162958.jpg', 'Love', '#ff8040', 1, 'Always', '•	Price should say: Factor in the costs of materials and labor, plus any related business expenses. Consider the total price buyers will pay too—including shipping.\r\n\r\n•	Quantity: For quantities greater than one, this listing will renew automatically until you remove the product manually.', 1),
(32, 31, 'ChildCategoryOne', 0, 1, 'childcategoryone', 1, 0, '2019-11-15 04:13:45', '2019-11-15 04:13:58', NULL, '', '', 'Test', '', 1, 'Test', 'Test', 1),
(33, 2, 'category', 0, 0, 'category', 1, 0, '2019-11-18 04:40:10', '2019-11-18 04:40:10', NULL, 'images/categories/1574071810xXRXBhmUjmxnpJK55Cnw-162958.jpg', 'images/categories/1574071810hQyNwDAQBCLLAD8QI5Dg-167958.jpg', 'alwaysss', '', 1, 'sparrow', '!!! URGENT: I pulled a link from my history and it took me straight to the back end of the portal. This is a huge security problem. People login always has to be required!!!\r\nI suggest you place a small text under each field to guide the vendors through the process just like we did with other fields', 1),
(34, 20, 'Event category', 0, 1, 'event-category', 1, 0, '2019-11-19 01:28:57', '2019-11-21 00:20:42', NULL, 'images/categories/1574314841E0CfEogVI4aByjqFMTY3-162958.jpg', 'images/categories/1574146737JMJEFKSdT7wZpkGxEbwE-162958.jpg', 'Jassi', '#ff8080', 1, 'JASSI12', 'India\'s history and culture is dynamic, spanning back to the beginning of human civilization. It begins with a mysterious culture along the Indus River and in farming communities in the southern lands of India. ... By the end of the fourth millennium BC, India had emerged as a region of highly developed civilization.', 1),
(35, 1, 'Wedding Photographer', 0, 1, 'wedding-photographer', 1, 0, '2019-11-19 05:26:39', '2019-11-20 03:10:16', NULL, '', '', 'Wedding Photographer', '#eda208', 1, 'Wedding Photographer', 'Wedding Photographer', 1),
(36, 1, 'Event Photographer', 0, 2, 'event-photographer', 1, 0, '2019-11-19 05:26:59', '2019-11-20 03:10:16', NULL, '', '', 'Event Photographer', '#eda208', 1, 'Event Photographer', 'Event Photographer', 0),
(37, 1, 'Portrait Photographer', 0, 3, 'portrait-photographer', 1, 0, '2019-11-19 05:27:22', '2019-11-20 03:10:16', NULL, '', '', 'Portrait Photographer', '#eda208', 1, 'Portrait Photographer', 'Portrait Photographer', 0),
(38, 1, 'Product Photographer', 0, 4, 'product-photographer', 1, 0, '2019-11-19 05:27:39', '2019-11-20 03:10:16', NULL, '', '', 'Product Photographer', '#eda208', 1, 'Product Photographer', 'Product Photographer', 0),
(39, 1, 'Aerial Photographer', 0, 5, 'aerial-photographer', 1, 0, '2019-11-19 05:28:03', '2019-11-20 03:10:16', NULL, '', '', 'Aerial Photographer', '#eda208', 1, 'Aerial Photographer', 'Aerial Photographer', 0),
(40, 1, 'Boudoir Photographer', 0, 6, 'boudoir-photographer', 1, 0, '2019-11-19 05:28:20', '2019-11-20 03:10:16', NULL, '', '', 'Boudoir Photographer', '#eda208', 1, 'Boudoir Photographer', 'Boudoir Photographer', 0),
(41, 0, 'Sammy', 0, 1, 'sammy', 1, 0, '2019-11-19 05:52:46', '2019-11-26 00:37:01', NULL, 'images/categories/1574162585bMLKCNv4sUhDZDM39u0f-band.png', '', 'Sammy', '#eda208', 1, 'Sammy', 'Sammy', 0),
(42, 24, 'Cake Shop', 0, 0, 'cake-shop', 1, 0, '2019-11-20 03:16:01', '2019-11-20 03:16:51', NULL, 'images/categories/1574239561Dsj1Fhax8VobJI3KNprn-wp3276805-pubg-4k-wallpapers.jpg', '', 'Cakesss', '#ff0000', 1, 'Cake121', 'A cake can be decorated with a photograph by printing the photograph onto an edible icing sheet and then setting the sheet on the desired portion of the cake. The ink used for printing the photograph on the edible icing ...', 0),
(43, 19, 'test cat001 name', 0, 0, 'test-cat001-name', 1, 0, '2019-11-20 08:04:19', '2019-11-20 08:05:25', NULL, 'images/categories/1574256925IY43SgxOfewhaXwMw0QK-dries-augustyns-58ASFVAP2Y4-unsplash.png', '', 'test cat  titla', '#eda208', 1, 'new tag', 'desc', 0),
(44, 18, 'Lights', 0, 0, 'lights', 1, 0, '2019-11-21 07:32:57', '2019-11-21 07:32:57', NULL, 'images/categories/1574341377swECw7z4VJqUU75EzrYx--dsc2796_15_68762.jpg', '', 'men-long-sleeve-shirts', '#eda208', 1, 'men-long-sleeve-shirts', 'sdsds', 0);

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
(343, NULL, 1, 2, 'event', '2019-11-21 02:20:45', '2019-11-21 02:20:45'),
(344, NULL, 1, 3, 'event', '2019-11-21 02:20:45', '2019-11-21 02:20:45'),
(345, NULL, 1, 10, 'amenity', '2019-11-21 02:20:45', '2019-11-21 02:20:45'),
(346, NULL, 1, 11, 'amenity', '2019-11-21 02:20:45', '2019-11-21 02:20:45'),
(347, NULL, 1, 4, 'game', '2019-11-21 02:20:45', '2019-11-21 02:20:45'),
(348, NULL, 1, 7, 'game', '2019-11-21 02:20:45', '2019-11-21 02:20:45'),
(349, NULL, 1, 12, 'game', '2019-11-21 02:20:45', '2019-11-21 02:20:45'),
(350, NULL, 1, 3, 'seasons', '2019-11-21 02:20:46', '2019-11-21 02:20:46'),
(351, NULL, 18, 1, 'event', '2019-11-21 07:27:37', '2019-11-21 07:27:37'),
(352, NULL, 18, 2, 'event', '2019-11-21 07:27:37', '2019-11-21 07:27:37'),
(353, NULL, 18, 3, 'event', '2019-11-21 07:27:38', '2019-11-21 07:27:38'),
(354, NULL, 18, 5, 'event', '2019-11-21 07:27:38', '2019-11-21 07:27:38'),
(355, NULL, 18, 6, 'event', '2019-11-21 07:27:38', '2019-11-21 07:27:38'),
(356, NULL, 18, 9, 'event', '2019-11-21 07:27:38', '2019-11-21 07:27:38'),
(357, NULL, 18, 10, 'event', '2019-11-21 07:27:38', '2019-11-21 07:27:38'),
(358, NULL, 18, 11, 'event', '2019-11-21 07:27:38', '2019-11-21 07:27:38'),
(359, NULL, 18, 14, 'event', '2019-11-21 07:27:38', '2019-11-21 07:27:38'),
(360, NULL, 18, 10, 'amenity', '2019-11-21 07:27:38', '2019-11-21 07:27:38'),
(361, NULL, 18, 11, 'amenity', '2019-11-21 07:27:38', '2019-11-21 07:27:38'),
(362, NULL, 18, 4, 'game', '2019-11-21 07:27:38', '2019-11-21 07:27:38'),
(363, NULL, 18, 7, 'game', '2019-11-21 07:27:38', '2019-11-21 07:27:38'),
(364, NULL, 18, 12, 'game', '2019-11-21 07:27:38', '2019-11-21 07:27:38'),
(365, NULL, 18, 1, 'seasons', '2019-11-21 07:27:38', '2019-11-21 07:27:38'),
(366, NULL, 18, 3, 'seasons', '2019-11-21 07:27:38', '2019-11-21 07:27:38'),
(367, NULL, 18, 4, 'seasons', '2019-11-21 07:27:38', '2019-11-21 07:27:38'),
(368, NULL, 25, 1, 'event', '2019-11-26 01:08:52', '2019-11-26 01:08:52'),
(369, NULL, 25, 2, 'event', '2019-11-26 01:08:52', '2019-11-26 01:08:52'),
(370, NULL, 25, 10, 'amenity', '2019-11-26 01:08:52', '2019-11-26 01:08:52'),
(371, NULL, 25, 11, 'amenity', '2019-11-26 01:08:52', '2019-11-26 01:08:52'),
(372, NULL, 25, 4, 'game', '2019-11-26 01:08:52', '2019-11-26 01:08:52'),
(373, NULL, 25, 7, 'game', '2019-11-26 01:08:52', '2019-11-26 01:08:52'),
(374, NULL, 25, 4, 'seasons', '2019-11-26 01:08:52', '2019-11-26 01:08:52'),
(428, NULL, 41, 6, 'event', '2019-11-26 05:58:53', '2019-11-26 05:58:53'),
(429, NULL, 41, 9, 'event', '2019-11-26 05:58:53', '2019-11-26 05:58:53'),
(430, NULL, 41, 10, 'amenity', '2019-11-26 05:58:53', '2019-11-26 05:58:53'),
(431, NULL, 41, 4, 'game', '2019-11-26 05:58:53', '2019-11-26 05:58:53'),
(432, NULL, 41, 4, 'seasons', '2019-11-26 05:58:54', '2019-11-26 05:58:54'),
(433, NULL, 20, 1, 'event', '2019-11-26 06:22:04', '2019-11-26 06:22:04'),
(434, NULL, 20, 2, 'event', '2019-11-26 06:22:04', '2019-11-26 06:22:04'),
(435, NULL, 20, 10, 'amenity', '2019-11-26 06:22:04', '2019-11-26 06:22:04'),
(436, NULL, 20, 11, 'amenity', '2019-11-26 06:22:04', '2019-11-26 06:22:04'),
(437, NULL, 20, 4, 'game', '2019-11-26 06:22:04', '2019-11-26 06:22:04'),
(438, NULL, 20, 7, 'game', '2019-11-26 06:22:04', '2019-11-26 06:22:04'),
(439, NULL, 20, 4, 'seasons', '2019-11-26 06:22:04', '2019-11-26 06:22:04'),
(440, NULL, 11, 1, 'event', '2019-11-27 02:13:16', '2019-11-27 02:13:16'),
(441, NULL, 11, 2, 'event', '2019-11-27 02:13:16', '2019-11-27 02:13:16'),
(442, NULL, 11, 3, 'event', '2019-11-27 02:13:16', '2019-11-27 02:13:16'),
(443, NULL, 11, 5, 'event', '2019-11-27 02:13:16', '2019-11-27 02:13:16'),
(444, NULL, 11, 6, 'event', '2019-11-27 02:13:16', '2019-11-27 02:13:16'),
(445, NULL, 11, 9, 'event', '2019-11-27 02:13:16', '2019-11-27 02:13:16'),
(446, NULL, 11, 10, 'event', '2019-11-27 02:13:16', '2019-11-27 02:13:16'),
(447, NULL, 11, 11, 'event', '2019-11-27 02:13:17', '2019-11-27 02:13:17'),
(448, NULL, 11, 14, 'event', '2019-11-27 02:13:17', '2019-11-27 02:13:17'),
(449, NULL, 11, 10, 'amenity', '2019-11-27 02:13:17', '2019-11-27 02:13:17'),
(450, NULL, 11, 11, 'amenity', '2019-11-27 02:13:17', '2019-11-27 02:13:17'),
(451, NULL, 11, 4, 'game', '2019-11-27 02:13:17', '2019-11-27 02:13:17'),
(452, NULL, 11, 7, 'game', '2019-11-27 02:13:17', '2019-11-27 02:13:17'),
(453, NULL, 11, 12, 'game', '2019-11-27 02:13:17', '2019-11-27 02:13:17'),
(454, NULL, 11, 3, 'seasons', '2019-11-27 02:13:17', '2019-11-27 02:13:17'),
(455, NULL, 11, 4, 'seasons', '2019-11-27 02:13:17', '2019-11-27 02:13:17');

-- --------------------------------------------------------

--
-- Table structure for table `cms_pages`
--

CREATE TABLE `cms_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_pages`
--

INSERT INTO `cms_pages` (`id`, `slug`, `meta_title`, `meta_description`, `meta_keywords`, `title`, `body`, `status`, `created_at`, `updated_at`) VALUES
(1, 'about-us', 'About Us', 'About Us Description', 'About Us keywords', 'About Us', '<div class="bg-light">\r\n<div class="container py-5">\r\n<div class="row h-100 align-items-center py-5">\r\n<div class="col-lg-6">\r\n<h1 class="display-4">About us page</h1>\r\n\r\n<p class="lead text-muted mb-0">\r\n\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Ut id sem fringilla, sollicitudin nisl aliquam, sodales neque. Pellentesque ac ultricies felis. Nam et iaculis quam, et pharetra felis. Proin vulputate tincidunt velit id euismod..</p>\r\n\r\n</div>\r\n\r\n<div class="col-lg-6 d-none d-lg-block"><img alt="" class="img-fluid" src="https://res.cloudinary.com/mhmd/image/upload/v1556834136/illus_kftyh4.png" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class="bg-white py-5">\r\n<div class="container py-5">\r\n<div class="row align-items-center mb-5">\r\n<div class="col-lg-6 order-2 order-lg-1">\r\n<h2 class="font-weight-light">Lorem ipsum dolor sit amet</h2>\r\n\r\n<p class="font-italic text-muted mb-4">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n<a class="btn btn-light px-5 rounded-pill shadow-sm" href="#">Learn More</a></div>\r\n\r\n<div class="col-lg-5 px-5 mx-auto order-1 order-lg-2"><img alt="" class="img-fluid mb-4 mb-lg-0" src="https://res.cloudinary.com/mhmd/image/upload/v1556834139/img-1_e25nvh.jpg" /></div>\r\n</div>\r\n\r\n<div class="row align-items-center">\r\n<div class="col-lg-5 px-5 mx-auto"><img alt="" class="img-fluid mb-4 mb-lg-0" src="https://res.cloudinary.com/mhmd/image/upload/v1556834136/img-2_vdgqgn.jpg" /></div>\r\n\r\n<div class="col-lg-6">\r\n<h2 class="font-weight-light">Lorem ipsum dolor sit amet</h2>\r\n\r\n<p class="font-italic text-muted mb-4">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n<a class="btn btn-light px-5 rounded-pill shadow-sm" href="#">Learn More</a></div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class="bg-light py-5">\r\n<div class="container py-5">\r\n<div class="row mb-4">\r\n<div class="col-lg-5">\r\n<h2 class="display-4 font-weight-light">Our team</h2>\r\n\r\n<p class="font-italic text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>\r\n</div>\r\n</div>\r\n\r\n<div class="row text-center"><!-- Team item-->\r\n<div class="col-xl-3 col-sm-6 mb-5">\r\n<div class="bg-white rounded shadow-sm py-5 px-4"><img alt="" class="img-fluid rounded-circle mb-3 img-thumbnail shadow-sm" src="https://res.cloudinary.com/mhmd/image/upload/v1556834132/avatar-4_ozhrib.png" width="100" />\r\n<h5 class="mb-0">Manuella Nevoresky</h5>\r\n<span class="small text-uppercase text-muted">CEO - Founder</span>\r\n\r\n<ul class="social mb-0 list-inline mt-3">\r\n	<li class="list-inline-item">&nbsp;</li>\r\n	<li class="list-inline-item">&nbsp;</li>\r\n	<li class="list-inline-item">&nbsp;</li>\r\n	<li class="list-inline-item">&nbsp;</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<!-- End--><!-- Team item-->\r\n\r\n<div class="col-xl-3 col-sm-6 mb-5">\r\n<div class="bg-white rounded shadow-sm py-5 px-4"><img alt="" class="img-fluid rounded-circle mb-3 img-thumbnail shadow-sm" src="https://res.cloudinary.com/mhmd/image/upload/v1556834130/avatar-3_hzlize.png" width="100" />\r\n<h5 class="mb-0">Samuel Hardy</h5>\r\n<span class="small text-uppercase text-muted">CEO - Founder</span>\r\n\r\n<ul class="social mb-0 list-inline mt-3">\r\n	<li class="list-inline-item">&nbsp;</li>\r\n	<li class="list-inline-item">&nbsp;</li>\r\n	<li class="list-inline-item">&nbsp;</li>\r\n	<li class="list-inline-item">&nbsp;</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<!-- End--><!-- Team item-->\r\n\r\n<div class="col-xl-3 col-sm-6 mb-5">\r\n<div class="bg-white rounded shadow-sm py-5 px-4"><img alt="" class="img-fluid rounded-circle mb-3 img-thumbnail shadow-sm" src="https://res.cloudinary.com/mhmd/image/upload/v1556834133/avatar-2_f8dowd.png" width="100" />\r\n<h5 class="mb-0">Tom Sunderland</h5>\r\n<span class="small text-uppercase text-muted">CEO - Founder</span>\r\n\r\n<ul class="social mb-0 list-inline mt-3">\r\n	<li class="list-inline-item">&nbsp;</li>\r\n	<li class="list-inline-item">&nbsp;</li>\r\n	<li class="list-inline-item">&nbsp;</li>\r\n	<li class="list-inline-item">&nbsp;</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<!-- End--><!-- Team item-->\r\n\r\n<div class="col-xl-3 col-sm-6 mb-5">\r\n<div class="bg-white rounded shadow-sm py-5 px-4"><img alt="" class="img-fluid rounded-circle mb-3 img-thumbnail shadow-sm" src="https://res.cloudinary.com/mhmd/image/upload/v1556834133/avatar-1_s02nlg.png" width="100" />\r\n<h5 class="mb-0">John Tarly</h5>\r\n<span class="small text-uppercase text-muted">CEO - Founder</span>\r\n\r\n<ul class="social mb-0 list-inline mt-3">\r\n	<li class="list-inline-item">&nbsp;</li>\r\n	<li class="list-inline-item">&nbsp;</li>\r\n	<li class="list-inline-item">&nbsp;</li>\r\n	<li class="list-inline-item">&nbsp;</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<!-- End--></div>\r\n</div>\r\n</div>\r\n\r\n<footer class="bg-light pb-5">\r\n<div class="container text-center"><a class="cstm-btn" href="javascript:void(0);">Contact us</a></div>\r\n</footer>', 1, '2019-11-21 04:39:24', '2019-11-21 08:26:00'),
(2, 'terms-and-condition', 'Terms and Condition', 'Terms and Condition description', 'Terms and Condition keyword', 'Terms & Condition', '<p>Here are a few examples:</p>\r\n\r\n<p>Here&rsquo;s how&nbsp;<a href="https://500px.com/terms">500px</a>&nbsp;lists its prohibited activities:</p>\r\n\r\n<ol>\r\n	<li>The&nbsp;<strong>Intellectual Property</strong>&nbsp;disclosure will inform users that the contents, logo and other visual media you created is your property and is protected by copyright laws.</li>\r\n	<li>A&nbsp;<strong>Termination</strong>&nbsp;clause will inform that users&rsquo; accounts on your website and mobile app or users&rsquo; access to your website and mobile (if users can&rsquo;t have an account with you) can be terminated in case of abuses or at your sole discretion.</li>\r\n	<li>A&nbsp;<strong>Governing Law</strong>&nbsp;will inform users which laws govern the agreement. This should the country in which your company is headquartered or the country from which you operate your website and mobile app.</li>\r\n	<li>A&nbsp;<strong>Links To Other Web Sites</strong>&nbsp;clause will inform users that you are not responsible for any third party websites that you link to. This kind of clause will generally inform users that they are responsible for reading and agreeing (or disagreeing) with the Terms and Conditions or Privacy Policies of these third parties.</li>\r\n	<li>\r\n	<p>If your website or mobile app allows users to create content and make that content public to other users, a&nbsp;<strong>Content</strong>&nbsp;section will inform users that they own the rights to the content they have created. The &ldquo;Content&rdquo; clause usually mentions that users must give you (the website or mobile app developer) a license so that you can share this content on your website/mobile app and to make it available to other users.</p>\r\n\r\n	<p>Because the content created by users is public to other users, a&nbsp;<a href="https://termsfeed.com/blog/dmca-terms-and-conditions/">DMCA notice clause</a>&nbsp;(or Copyright Infringement ) section is helpful to inform users and copyright authors that, if any content is found to be a copyright infringement, you will respond to any DMCA takedown notices received and you will take down the content.</p>\r\n	</li>\r\n	<li>A&nbsp;<strong>Limit What Users Can Do</strong>&nbsp;clause can inform users that&nbsp;<strong>by agreeing to use your service, they&rsquo;re also agreeing to not do certain things</strong>. This can be part of a very long and thorough list in your Terms and Conditions agreements so as to encompass the most amount of negative uses.</li>\r\n</ol>', 1, '2019-11-21 05:09:48', '2019-11-21 08:14:38'),
(3, 'privacy-policy', 'Privacy Policy', 'Privacy Policy', 'Privacy Policy', 'Privacy Policy', '<p>Here are a few examples:</p>\r\n\r\n<p>Here&rsquo;s how&nbsp;<a href="https://500px.com/terms">500px</a>&nbsp;lists its prohibited activities:</p>\r\n\r\n<ol>\r\n	<li>The&nbsp;<strong>Intellectual Property</strong>&nbsp;disclosure will inform users that the contents, logo and other visual media you created is your property and is protected by copyright laws.</li>\r\n	<li>A&nbsp;<strong>Termination</strong>&nbsp;clause will inform that users&rsquo; accounts on your website and mobile app or users&rsquo; access to your website and mobile (if users can&rsquo;t have an account with you) can be terminated in case of abuses or at your sole discretion.</li>\r\n	<li>A&nbsp;<strong>Governing Law</strong>&nbsp;will inform users which laws govern the agreement. This should the country in which your company is headquartered or the country from which you operate your website and mobile app.</li>\r\n	<li>A&nbsp;<strong>Links To Other Web Sites</strong>&nbsp;clause will inform users that you are not responsible for any third party websites that you link to. This kind of clause will generally inform users that they are responsible for reading and agreeing (or disagreeing) with the Terms and Conditions or Privacy Policies of these third parties.</li>\r\n	<li>\r\n	<p>If your website or mobile app allows users to create content and make that content public to other users, a&nbsp;<strong>Content</strong>&nbsp;section will inform users that they own the rights to the content they have created. The &ldquo;Content&rdquo; clause usually mentions that users must give you (the website or mobile app developer) a license so that you can share this content on your website/mobile app and to make it available to other users.</p>\r\n\r\n	<p>Because the content created by users is public to other users, a&nbsp;<a href="https://termsfeed.com/blog/dmca-terms-and-conditions/">DMCA notice clause</a>&nbsp;(or Copyright Infringement ) section is helpful to inform users and copyright authors that, if any content is found to be a copyright infringement, you will respond to any DMCA takedown notices received and you will take down the content.</p>\r\n	</li>\r\n	<li>A&nbsp;<strong>Limit What Users Can Do</strong>&nbsp;clause can inform users that&nbsp;<strong>by agreeing to use your service, they&rsquo;re also agreeing to not do certain things</strong>. This can be part of a very long and thorough list in your Terms and Conditions agreements so as to encompass the most amount of negative uses.</li>\r\n</ol>', 1, '2019-11-21 07:08:44', '2019-11-21 07:54:11');

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
(7, 1, 42, 11, '10% OFF your Wedding, Groom, or Bridal Shower Cake!', 'Print out this promotional page and bring it to us when you come in for your complimentary tasting and private appointment. Allow us to meet with you and If you plan on ordering your cake with us allow us to price your cake. Then, show us your print out and we will take 10% OFF our quoted price.', 'images/vendors/deals/1574159388ouwYkvGT2NsbEXLz60ID-photo-1551592398-c320012bc1c6.jpeg', 'Print out this promotional page and bring it to us when you come in for your complimentary tasting and private appointment. Allow us to meet with you and If you plan on ordering your cake with us allow us to price your cake. Then, show us your print out and we will take 10% OFF our quoted price.', '2019-11-19', NULL, '2019-11-19 04:59:48', '2019-11-19 04:59:48'),
(8, 20, 34, 14, 'new deal', 'my message', 'images/vendors/deals/1574418686yvUTxGduKLnlU0dRtEx4-band.png', '20% off', '2022-10-28', NULL, '2019-11-22 05:01:26', '2019-11-22 05:01:26'),
(9, 20, 44, 22, 'Punjabi Songs12@ Punjabi Songs12@Punjabi Songs12@Punjabi Songs12@Punjabi Songs12@Punjabi Songs12@Punjabi Songs12@Punjabi Songs12@Punjabi Songs12@Punjabi Songs12@Punjabi Songs12@Punjabi Songs12@Punjabi Songs12@Punjabi Songs12@', 'SDGSDGSWEARWFS', 'images/vendors/deals/1574772429cVlNC5VA53L21KxMEC6G-2evai5d.jpg', 'Do you have experience in event from start to finish according to requirements, brand, target audience and objectives? If yes ,then go through our event planner interview questions page for better understanding of interview process and win in job search.Do you have', '2009-06-09', NULL, '2019-11-26 07:17:09', '2019-11-26 07:26:56'),
(10, 25, 34, 15, 'new deal', 'mess', 'images/vendors/deals/15748385368deiL5274wkbmo41Cmhr-band.png', 'desc deal', '2020-02-15', NULL, '2019-11-27 01:38:56', '2019-11-27 01:38:56'),
(11, 11, 31, 24, 'Lorem ipsum dolor sit', 'Royal Wedding Events is a banquet hall located in the city of Delhi. Choosing a wedding venue is one of the most difficult tasks which you will accomplish while planning it. Indian weddings are comprised of many functions and ceremonies which are usually spread across days, and weeks before they are spent in planning everything flawlessly. To ensure that your every need is catered to while providing you with quality services, you need to choose a venue which can be a perfect fit for all your wedding-related functions. Royal Wedding Events will ensure that your wedding is celebrated with much grandiosity with memories that you can cherish for life.', 'images/vendors/deals/1574840705bJgXq2QHtbAue8Go1YcN-The-Manek-Chowk_new_s-591db2093df78cf5fa46dcae.jpg', 'Royal Wedding Events is a banquet hall located in the city of Delhi. Choosing a wedding venue is one of the most difficult tasks which you will accomplish while planning it. Indian weddings are comprised of many functions and ceremonies which are usually spread across days, and weeks before they are spent in planning everything flawlessly. To ensure that your every need is catered to while providing you with quality services, you need to choose a venue which can be a perfect fit for all your wedding-related functions. Royal Wedding Events will ensure that your wedding is celebrated with much grandiosity with memories that you can cherish for life.', '2019-11-30', NULL, '2019-11-27 02:15:05', '2019-11-27 02:15:05'),
(12, 11, 34, 25, 'december deal', 'December deal', 'images/vendors/deals/1574841088g9rdn4pXotkE4AZZ5KqX-package-img-2.png', 'December deal', '2020-01-08', NULL, '2019-11-27 02:21:28', '2019-11-27 02:21:28');

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
(11, 'Pool Party', 'DJ  full  and drinks.', 'pool-part', NULL, 1, 'event', '2019-11-18 04:57:44', '2019-11-21 07:07:27'),
(12, 'Jaskaran Singh', 'spanning back to the beginning of human civiliz.', 'jaskaran-singh', NULL, 0, 'event', '2019-11-19 02:49:01', '2019-11-21 00:35:01'),
(13, 'Jaskaran Sandha', 'Back to the beginning of human civilize.', 'jaskaran', NULL, 0, 'event', '2019-11-19 03:31:00', '2019-11-19 03:39:03'),
(14, 'fafasa', 'asgasgagag', 'fafasa', NULL, 1, 'event', '2019-11-20 00:50:26', '2019-11-20 00:50:26'),
(15, 'Vaisakhi', 'Vaisakhi, also known as Baisakhi, Vaishakhi, Vaisakhi, also known as Baisakhi, Vaishakhi, or Vasakhi is a historical and religious festival in Hinduism and Sikhism. It is usually celebrated on 13 or 14 April every year, which commemorates the formation of Khalsa panth of warriors under Guru Gobind Singh in 1699. Wikipedia', 'vaisakhi', NULL, 0, 'event', '2019-11-20 03:41:07', '2019-11-20 03:50:45'),
(16, 'Jasss', 'The image must be an image. Error message should be correct .  it should be sound goodThe image must be an image. Error message should be correct .  it should be sound goodThe image must be an image. Error message should be correct .  it should be sound goodThe image must be an image. Error message should be correct .  it should be sound goodThe image must be an image. Error message should be correct .  it should be sound good', 'jaskaran-singh123', NULL, 0, 'event', '2019-11-20 07:53:58', '2019-11-21 00:35:12');

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
(6, 'What primary photographic style do you identify with?', '<ul>\r\n	<li>Contemporary</li>\r\n	<li>Natural</li>\r\n	<li>Photojournalism</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>', 42, 1, 11, 1, '2019-11-20 03:31:07', '2019-11-20 03:31:07'),
(7, 'Why can\'t I log in to my Print Genie account even though I connected a store?', '<p>Why can&#39;t I log in to my Print Genie account even though I connected a store&nbsp;</p>', 31, 18, 2, 1, '2019-11-21 07:26:30', '2019-11-21 07:26:30'),
(8, 'my question', '<p>answer</p>', 34, 20, 14, 1, '2019-11-22 04:58:21', '2019-11-22 04:58:21'),
(15, 'How we are playing.', '<p>Do you have experience in&nbsp;<b>event</b>&nbsp;from start to finish according to requirements, brand, target audience and objectives? If yes ,then go through our&nbsp;<b>event planner</b>&nbsp;interview&nbsp;<b>questions</b>&nbsp;page for better understanding of interview process and win in job search.</p>', 44, 20, 22, 1, '2019-11-26 04:32:49', '2019-11-26 04:32:49'),
(16, 'question', '<p>answer</p>', 34, 25, 15, 1, '2019-11-27 01:37:13', '2019-11-27 01:37:13'),
(17, 'Why can\'t I log in to my Print Genie account even though I connected a store?', '<p>Why can&#39;t I log in to my Print Genie account even though I connected a store</p>', 31, 11, 24, 1, '2019-11-27 02:10:43', '2019-11-27 02:10:43'),
(18, 'developer question about develop the application?', '<p>It is a long established fact that a reader will be distracted by the readable</p>', 34, 11, 25, 1, '2019-11-27 02:19:26', '2019-11-27 02:19:26');

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
(20, '2019_11_19_062234_create_page_meta_tags_table', 16),
(21, '2019_11_21_080208_create_cms_pages_table', 17),
(22, '2019_11_25_062651_create_service_aproval_processes_table', 18);

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
(125, 0, 3, 1, 42, 'amenities', 'amenity', '6', '2019-11-20 03:38:58', '2019-11-20 03:38:58'),
(126, 0, 3, 1, 42, 'amenities', 'amenity', '8', '2019-11-20 03:38:58', '2019-11-20 03:38:58'),
(127, 0, 3, 1, 42, 'events', 'event', '2', '2019-11-20 03:38:58', '2019-11-20 03:38:58'),
(128, 0, 3, 1, 42, 'events', 'event', '3', '2019-11-20 03:38:58', '2019-11-20 03:38:58'),
(129, 0, 3, 1, 42, 'addons', 'Collage Family', '5', '2019-11-20 03:40:34', '2019-11-20 03:40:34'),
(146, 0, 1, 1, 31, 'addons', 'Add', '250', '2019-11-20 05:58:44', '2019-11-20 05:58:44'),
(154, 0, 1, 1, 31, 'amenities', 'amenity', '10', '2019-11-22 02:29:37', '2019-11-22 02:29:37'),
(155, 0, 1, 1, 31, 'amenities', 'amenity', '11', '2019-11-22 02:29:37', '2019-11-22 02:29:37'),
(156, 0, 1, 1, 31, 'events', 'event', '2', '2019-11-22 02:29:37', '2019-11-22 02:29:37'),
(157, 0, 1, 1, 31, 'events', 'event', '3', '2019-11-22 02:29:37', '2019-11-22 02:29:37'),
(180, 0, 11, 1, 42, 'amenities', 'amenity', '10', '2019-11-26 01:55:32', '2019-11-26 01:55:32'),
(181, 0, 11, 1, 42, 'amenities', 'amenity', '11', '2019-11-26 01:55:33', '2019-11-26 01:55:33'),
(182, 0, 11, 1, 42, 'games', 'game', '4', '2019-11-26 01:55:33', '2019-11-26 01:55:33'),
(183, 0, 11, 1, 42, 'games', 'game', '7', '2019-11-26 01:55:33', '2019-11-26 01:55:33'),
(184, 0, 11, 1, 42, 'events', 'event', '2', '2019-11-26 01:55:33', '2019-11-26 01:55:33'),
(185, 0, 11, 1, 42, 'events', 'event', '3', '2019-11-26 01:55:33', '2019-11-26 01:55:33'),
(196, 0, 7, 20, 34, 'amenities', 'amenity', '10', '2019-11-26 02:02:01', '2019-11-26 02:02:01'),
(197, 0, 7, 20, 34, 'games', 'game', '4', '2019-11-26 02:02:01', '2019-11-26 02:02:01'),
(198, 0, 7, 20, 34, 'events', 'event', '1', '2019-11-26 02:02:01', '2019-11-26 02:02:01'),
(202, 0, 12, 20, 34, 'amenities', 'amenity', '10', '2019-11-26 02:06:40', '2019-11-26 02:06:40'),
(203, 0, 12, 20, 34, 'games', 'game', '4', '2019-11-26 02:06:40', '2019-11-26 02:06:40'),
(204, 0, 12, 20, 34, 'events', 'event', '1', '2019-11-26 02:06:40', '2019-11-26 02:06:40'),
(205, 0, 7, 20, 34, 'addons', 'monthly', '400', '2019-11-26 03:39:56', '2019-11-26 03:39:56'),
(240, 0, 15, 20, 44, 'amenities', 'amenity', '10', '2019-11-26 06:55:39', '2019-11-26 06:55:39'),
(241, 0, 15, 20, 44, 'games', 'game', '4', '2019-11-26 06:55:40', '2019-11-26 06:55:40'),
(242, 0, 15, 20, 44, 'events', 'event', '1', '2019-11-26 06:55:40', '2019-11-26 06:55:40'),
(251, 0, 19, 1, 44, 'amenities', 'amenity', '10', '2019-11-26 07:42:27', '2019-11-26 07:42:27'),
(252, 0, 19, 1, 44, 'amenities', 'amenity', '11', '2019-11-26 07:42:27', '2019-11-26 07:42:27'),
(253, 0, 19, 1, 44, 'games', 'game', '4', '2019-11-26 07:42:28', '2019-11-26 07:42:28'),
(254, 0, 19, 1, 44, 'games', 'game', '7', '2019-11-26 07:42:28', '2019-11-26 07:42:28'),
(255, 0, 19, 1, 44, 'games', 'game', '12', '2019-11-26 07:42:28', '2019-11-26 07:42:28'),
(256, 0, 19, 1, 44, 'events', 'event', '2', '2019-11-26 07:42:28', '2019-11-26 07:42:28'),
(257, 0, 19, 1, 44, 'events', 'event', '3', '2019-11-26 07:42:28', '2019-11-26 07:42:28'),
(258, 0, 7, 20, 34, 'addons', 'mp title', '10', '2019-11-26 08:41:31', '2019-11-26 08:41:31'),
(262, 0, 9, 20, 34, 'amenities', 'amenity', '10', '2019-11-26 09:43:21', '2019-11-26 09:43:21'),
(263, 0, 9, 20, 34, 'games', 'game', '7', '2019-11-26 09:43:21', '2019-11-26 09:43:21'),
(264, 0, 9, 20, 34, 'events', 'event', '2', '2019-11-26 09:43:21', '2019-11-26 09:43:21'),
(265, 0, 20, 25, 34, 'amenities', 'amenity', '11', '2019-11-27 01:38:21', '2019-11-27 01:38:21'),
(266, 0, 20, 25, 34, 'games', 'game', '7', '2019-11-27 01:38:21', '2019-11-27 01:38:21'),
(267, 0, 20, 25, 34, 'events', 'event', '2', '2019-11-27 01:38:21', '2019-11-27 01:38:21'),
(268, 0, 20, 25, 34, 'addons', 'tt', '52', '2019-11-27 01:38:34', '2019-11-27 01:38:34'),
(269, 0, 21, 11, 34, 'amenities', 'amenity', '10', '2019-11-27 02:20:44', '2019-11-27 02:20:44'),
(270, 0, 21, 11, 34, 'games', 'game', '4', '2019-11-27 02:20:44', '2019-11-27 02:20:44'),
(271, 0, 21, 11, 34, 'games', 'game', '7', '2019-11-27 02:20:44', '2019-11-27 02:20:44'),
(272, 0, 21, 11, 34, 'events', 'event', '1', '2019-11-27 02:20:44', '2019-11-27 02:20:44'),
(273, 0, 21, 11, 34, 'events', 'event', '3', '2019-11-27 02:20:44', '2019-11-27 02:20:44');

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
(2, 0, '', '', 'homepage', 'Home', '2019-11-19 03:32:36', '2019-11-19 03:32:36'),
(3, 0, 'slider_title', 'LOREM IPSUM DOLOR', 'homepage', '', '2019-11-19 03:45:36', '2019-11-19 09:26:29'),
(4, 0, 'type', 'homepage', 'homepage', '', '2019-11-19 03:54:09', '2019-11-19 03:54:09'),
(5, 0, 'slider_tagline', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor', 'homepage', '', '2019-11-19 03:56:03', '2019-11-19 03:56:20'),
(6, 0, 'slider_video_url', '1574254555.mp4', 'homepage', '', '2019-11-19 03:56:03', '2019-11-20 07:25:55'),
(9, 0, '', '', 'login', 'Login', '2019-11-19 07:06:26', '2019-11-19 07:06:26'),
(10, 0, '', '', 'signup', 'Signup', '2019-11-19 07:06:30', '2019-11-19 07:06:30'),
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
(57, 0, 'signup_banner', '1574319260signup_banner.png', 'signup', NULL, '2019-11-19 10:18:38', '2019-11-21 01:24:20'),
(58, 0, 'section2_image', '1574250795.png', 'homepage', NULL, '2019-11-20 05:49:27', '2019-11-20 06:23:15'),
(59, 0, 'section4_image', '1574251218.png', 'homepage', NULL, '2019-11-20 06:26:08', '2019-11-20 06:30:18'),
(60, 0, 'section3_video', '1574253495.mp4', 'homepage', NULL, '2019-11-20 06:34:00', '2019-11-20 07:08:15'),
(62, 0, 'section3_video_poster', '1574260675.png', 'homepage', NULL, '2019-11-20 09:06:03', '2019-11-20 09:07:55'),
(63, 0, 'section1_title', '\'ENVISIUN EXPALINED, LET’S SHOW YOU HOW\'', 'login', NULL, '2019-11-20 09:50:27', '2019-11-20 09:53:31'),
(64, 0, 'section1_tagline', '"PILOT YOUR DREAMS"', 'login', NULL, '2019-11-20 09:50:27', '2019-11-20 09:53:31'),
(65, 0, 'section1_video', '1574263412.mp4', 'login', NULL, '2019-11-20 09:50:27', '2019-11-20 09:53:32'),
(66, 0, 'section1_video_poster', '1574263412.png', 'login', NULL, '2019-11-20 09:50:27', '2019-11-20 09:53:32'),
(67, 0, 'section2_title', 'WHAT PEOPLE ARE SAYING ABOUT US', 'login', NULL, '2019-11-20 09:50:27', '2019-11-20 09:53:31'),
(68, 0, 'section1_title', '\'ENVISIUN EXPALINED, LET’S SHOW YOU HOW\'', 'signup', NULL, '2019-11-20 09:56:22', '2019-11-20 09:57:37'),
(69, 0, 'section1_tagline', '"PILOT YOUR DREAMS"', 'signup', NULL, '2019-11-20 09:56:22', '2019-11-20 09:57:37'),
(70, 0, 'section1_video', '1574263658.mp4', 'signup', NULL, '2019-11-20 09:56:22', '2019-11-20 09:57:38'),
(71, 0, 'section1_video_poster', '1574319261section1_video_poster.png', 'signup', NULL, '2019-11-20 09:56:22', '2019-11-21 01:24:21'),
(72, 0, 'section2_title', 'WHAT PEOPLE ARE SAYING ABOUT US', 'signup', NULL, '2019-11-20 09:56:22', '2019-11-20 09:57:37'),
(73, 0, '', '', 'vendor-signup', 'Vendor Signup', '2019-11-21 00:45:09', '2019-11-21 00:45:09'),
(74, 0, 'signup_title', 'REGISTER AS A VENDOR', 'vendor-signup', NULL, '2019-11-21 00:45:24', '2019-11-21 01:04:16'),
(75, 0, 'heading', 'WELCOME', 'vendor-signup', NULL, '2019-11-21 00:45:24', '2019-11-21 00:46:55'),
(76, 0, 'signup_banner', '1574318781.png', 'vendor-signup', NULL, '2019-11-21 00:45:24', '2019-11-21 01:16:21'),
(77, 0, 'description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse scelerisque turpis in lacus feugiat tristique', 'vendor-signup', NULL, '2019-11-21 00:45:24', '2019-11-21 00:46:55'),
(78, 0, 'section1_title', '\'ENVISIUN EXPALINED, LET’S SHOW YOU HOW\'', 'vendor-signup', NULL, '2019-11-21 00:45:24', '2019-11-21 00:46:55'),
(79, 0, 'section1_tagline', '"PILOT YOUR DREAMS"', 'vendor-signup', NULL, '2019-11-21 00:45:24', '2019-11-21 00:46:55'),
(80, 0, 'section1_video', '1574317015.mp4', 'vendor-signup', NULL, '2019-11-21 00:45:24', '2019-11-21 00:46:55'),
(81, 0, 'section1_video_poster', '1574319088.png', 'vendor-signup', NULL, '2019-11-21 00:45:24', '2019-11-21 01:21:28'),
(82, 0, 'section2_title', 'WHAT PEOPLE ARE SAYING ABOUT US', 'vendor-signup', NULL, '2019-11-21 00:45:24', '2019-11-21 00:46:55'),
(83, 0, '', 'vendor-signup', 'vendor-signup', NULL, '2019-11-21 00:46:54', '2019-11-21 00:46:54'),
(84, 0, '', 'vendor-signup', 'vendor-signup', NULL, '2019-11-21 01:04:16', '2019-11-21 01:04:16'),
(85, 0, 'signup_background_image', '1574319260signup_background_image.png', 'signup', NULL, '2019-11-21 01:08:10', '2019-11-21 01:24:20'),
(86, 0, 'signup_background_image', '1574318396.png', 'vendor-signup', NULL, '2019-11-21 01:09:48', '2019-11-21 01:09:56'),
(87, 0, '', 'vendor-signup', 'vendor-signup', NULL, '2019-11-21 01:09:56', '2019-11-21 01:09:56'),
(88, 0, '', 'vendor-signup', 'vendor-signup', NULL, '2019-11-21 01:16:21', '2019-11-21 01:16:21'),
(89, 0, '', 'vendor-signup', 'vendor-signup', NULL, '2019-11-21 01:21:28', '2019-11-21 01:21:28'),
(90, 0, 'meta_title', 'Welcome to the website', 'homepage', NULL, '2019-11-21 01:48:26', '2019-11-21 02:53:36'),
(91, 0, 'meta_description', 'Platform welcomes you', 'homepage', NULL, '2019-11-21 01:48:26', '2019-11-21 02:53:37'),
(92, 0, 'meta_keyword', 'Home, Test, User', 'homepage', NULL, '2019-11-21 01:48:27', '2019-11-21 02:53:37'),
(93, 0, 'meta_title', 'Login to Website', 'login', NULL, '2019-11-21 01:49:32', '2019-11-21 03:15:12'),
(94, 0, 'meta_description', 'Login to Website', 'login', NULL, '2019-11-21 01:49:32', '2019-11-21 03:15:12'),
(95, 0, 'meta_keyword', 'Login', 'login', NULL, '2019-11-21 01:49:32', '2019-11-21 03:15:12'),
(96, 0, 'meta_title', 'User Signup', 'signup', NULL, '2019-11-21 01:53:56', '2019-11-21 03:16:04'),
(97, 0, 'meta_description', 'Signup', 'signup', NULL, '2019-11-21 01:53:56', '2019-11-21 03:16:04'),
(98, 0, 'meta_keyword', 'Signup', 'signup', NULL, '2019-11-21 01:53:56', '2019-11-21 03:16:04'),
(99, 0, 'meta_title', 'Vendor Signup', 'vendor-signup', NULL, '2019-11-21 01:59:47', '2019-11-21 03:16:45'),
(100, 0, 'meta_description', 'Vendor Signup', 'vendor-signup', NULL, '2019-11-21 01:59:48', '2019-11-21 03:16:45'),
(101, 0, 'meta_keyword', 'Vendor Signup', 'vendor-signup', NULL, '2019-11-21 01:59:48', '2019-11-21 03:16:45'),
(102, 0, '', 'vendor-signup', 'vendor-signup', NULL, '2019-11-21 02:00:06', '2019-11-21 02:00:06'),
(103, 0, 'meta_title', '', '', NULL, '2019-11-21 02:18:10', '2019-11-21 02:18:10'),
(104, 0, 'keyword', '', 'login', NULL, '2019-11-21 02:24:03', '2019-11-21 02:24:03'),
(105, 0, 'keywords', '', 'login', NULL, '2019-11-21 02:26:43', '2019-11-21 02:26:43'),
(108, 0, '', 'vendor-signup', 'vendor-signup', NULL, '2019-11-21 03:16:45', '2019-11-21 03:16:45'),
(109, 0, '', '', 'global-settings', 'Global Settings', '2019-11-27 07:12:41', '2019-11-27 07:12:41'),
(110, 0, 'meta_title', '', 'global-settings', NULL, '2019-11-27 07:15:34', '2019-11-27 07:15:34'),
(111, 0, 'meta_description', '', 'global-settings', NULL, '2019-11-27 07:15:34', '2019-11-27 07:15:34'),
(112, 0, 'meta_keyword', '', 'global-settings', NULL, '2019-11-27 07:15:34', '2019-11-27 07:15:34'),
(113, 0, 'signup_title', '', 'global-settings', NULL, '2019-11-27 07:15:34', '2019-11-27 07:15:34'),
(114, 0, 'signup_background_image', '', 'global-settings', NULL, '2019-11-27 07:15:34', '2019-11-27 07:15:34'),
(115, 0, 'heading', '', 'global-settings', NULL, '2019-11-27 07:15:34', '2019-11-27 07:15:34'),
(116, 0, 'signup_banner', '', 'global-settings', NULL, '2019-11-27 07:15:35', '2019-11-27 07:15:35'),
(117, 0, 'description', '', 'global-settings', NULL, '2019-11-27 07:15:35', '2019-11-27 07:15:35'),
(118, 0, 'section1_title', '', 'global-settings', NULL, '2019-11-27 07:15:35', '2019-11-27 07:15:35'),
(119, 0, 'section1_tagline', '', 'global-settings', NULL, '2019-11-27 07:15:35', '2019-11-27 07:15:35'),
(120, 0, 'section1_video', '', 'global-settings', NULL, '2019-11-27 07:15:35', '2019-11-27 07:15:35'),
(121, 0, 'section1_video_poster', '', 'global-settings', NULL, '2019-11-27 07:15:35', '2019-11-27 07:15:35'),
(122, 0, 'section2_title', '', 'global-settings', NULL, '2019-11-27 07:15:35', '2019-11-27 07:15:35'),
(123, 0, 'google_api_key', 'google-xyz-123-key', 'global-settings', NULL, '2019-11-27 07:17:44', '2019-11-27 07:20:24'),
(124, 0, '', 'global-settings', 'global-settings', NULL, '2019-11-27 07:20:24', '2019-11-27 07:20:24');

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
(1, 'Hots', 'Hot Desi', 'hots', NULL, 0, '2019-11-13 15:07:45', '2019-11-26 01:07:02'),
(2, 'Summer Season', 'Summer Desc', 'summer-season', NULL, 0, '2019-11-15 04:17:49', '2019-11-18 03:57:16'),
(3, 'Winter season', 'Winter season desc', 'my-new-season', NULL, 1, '2019-11-15 22:57:50', '2019-11-15 23:00:14'),
(4, 'Rainy Season', 'The wet season is the time of year', 'rainy-season', NULL, 1, '2019-11-19 04:09:51', '2019-11-21 00:47:41');

-- --------------------------------------------------------

--
-- Table structure for table `service_aproval_processes`
--

CREATE TABLE `service_aproval_processes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `vendor_service_id` int(11) DEFAULT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyValue` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_aproval_processes`
--

INSERT INTO `service_aproval_processes` (`id`, `user_id`, `parent`, `vendor_service_id`, `key`, `keyValue`, `created_at`, `updated_at`) VALUES
(41, 34, 0, 14, 'comment', 'sdsdsd', '2019-11-25 08:56:03', '2019-11-25 08:57:32'),
(42, 34, 0, 14, 'basic_info_comment', 'basic cmts', '2019-11-25 08:56:03', '2019-11-25 08:56:03'),
(43, 34, 0, 14, 'photo_comment', 'sa', '2019-11-25 08:56:03', '2019-11-25 08:57:32'),
(44, 34, 0, 14, 'prohibtion_estrictions_comment', 'p and r cmt', '2019-11-25 08:56:03', '2019-11-25 08:56:03'),
(61, 42, 0, 11, 'comment', 'Dummy Description', '2019-11-26 03:29:29', '2019-11-26 03:29:29'),
(62, 42, 0, 11, 'faq_comment', 'You Faqs are not good please change this ASAP for reapproval', '2019-11-26 03:29:29', '2019-11-26 03:29:29'),
(67, 34, 0, 15, 'comment', 'reject', '2019-11-27 06:29:45', '2019-11-27 06:29:45'),
(68, 34, 0, 15, 'basic_info_comment', 'basic wrong', '2019-11-27 06:29:45', '2019-11-27 06:29:45'),
(71, 34, 0, 25, 'comment', 'rej', '2019-11-27 08:38:31', '2019-11-27 08:38:31'),
(72, 34, 0, 25, 'basic_info_comment', 'bas rej', '2019-11-27 08:38:31', '2019-11-27 08:38:31'),
(73, 34, 0, 25, 'prohibtion_estrictions_comment', 'pro rej  cm', '2019-11-27 08:38:32', '2019-11-27 08:38:32');

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
(2, 'demo2-style', 'Albums', 'Albums', '1574317853.jpg', 1, '2019-11-16 00:50:03', '2019-11-21 01:00:53'),
(3, 'jimmy-choo', 'History (from Greek ἱστορία, historia, meaning \'inquiry; knowledge acquired by investigation\') is the past as it is described in written documents History (from Greek ἱστορία, historia, meaning \'inquiry; knowledge acquired by investigation\') is the past as it is described in written documents', 'Jimmy Choo', '1574318296.jpg', 1, '2019-11-21 01:08:16', '2019-11-21 01:08:16');

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
  `status` tinyint(1) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `first_name`, `last_name`, `email`, `email_verified_at`, `password`, `role`, `profile_image`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', NULL, NULL, 'admin@gmail.com', NULL, '$2y$10$24fdx3W1i9M2GLFjlOeUXuE2H7reNsX/Nsixl/ou8JxPIB.2EmZh.', 'admin', 'images/admin/1574677337kn9RnvDobyEJXsHyk5xe-photo-1551592398-c320012bc1c6.jpeg', NULL, 'RLzsH5lN6ImgEZJd87ltJYX85uAlPdvgcOYcsuFNLH8g0u0HaREgGjpKSDOg', '2019-11-09 00:19:35', '2019-11-25 04:52:17'),
(31, 'Narinder Bajwa', 'Narinder', 'Bajwa', 'bajwa7696346232@gmail.com', '2019-11-12 07:02:09', '$2y$10$he8YxmZeBwdKAMqcbtQ0/.aJqTWo1Nxpm/WCKXK2XaEZAAJUE7Hc.', 'vendor', 'images/vendors/profile/1573745727INNHnbWOrmoe5iQlrdT7-bulb.png', 1, 'E7QfWoCxnlpXPrd4JHTSHwo8I3C12HO10fEMdWfe9OBZkIsS8sBXAV3PbuES', '2019-11-12 06:11:13', '2019-11-21 09:10:16'),
(32, 'Narinder Bajwa', 'Narinder', 'Bajwa', 'bajwa9876470492@gmail.com', NULL, '$2y$10$tiBVNqE4PMLEbmyfMNH9/eXn4rkSKw0uHTNdeFJEALg2yBdwB04JG', 'user', NULL, NULL, NULL, '2019-11-12 06:25:25', '2019-11-12 06:25:25'),
(33, 'hitesh sharma', 'hitesh', 'sharma', 'hitesh22791@gmail.com', '2019-11-13 18:30:00', '$2y$10$o6TsuB0J0za0EknNojA7g.B304Cg3SRfIqrJU7QQZKSxgCYb5FpGi', 'vendor', NULL, 1, 'usHDkMT6QyFgQUsA03DB113wGW1nDuLMbyqfBp9gdXKsZ8J0fi5xPkAJDT82', '2019-11-14 02:17:10', '2019-11-21 09:09:51'),
(34, 'vendor s', 'vendor', 's', 'vendor001@yopmail.com', '2019-11-14 04:22:00', '$2y$10$3nhw3wasoho0VKY52ffgHO7/OBu5wNz0O4r2SXSQrtzktEnI3YI5K', 'vendor', NULL, 1, 'LkrkFr5g6mw3zoLfKSbT0WuQCFB60CYByY8o5VUWAIUHQVWNRRuAjWzRyGfF', '2019-11-14 04:19:37', '2019-11-25 04:50:52'),
(35, 'Kanny Gill', 'Kanny', 'Gill', 'kanny@yopmail.com', '2019-11-15 03:06:31', '$2y$10$XZA0JR6bHi1MSANa86u8jOncOCBPT7wFdxaq5RZBjLIYW992ssDA.', 'vendor', NULL, 1, 'Xrl2c1Wi9CoObL6isRFEmDk1wHPpScmBBteayDW2fjF1aVKrOBVdDIAZgx2W', '2019-11-15 03:06:02', '2019-11-21 09:10:03'),
(36, 'Kanny Rajput', 'Kanny', 'Rajput', 'kannyraj@yopmail.com', '2019-11-15 04:27:34', '$2y$10$05CiO5N1YnlHK2qAV493Kub/2oQ1PkscvvcNJ5lEeupu.MNxtrT7m', 'vendor', NULL, 1, 'MiJiNw0hILOy4O7TcVXUAYem6b3hAujmp6kbR0rc2B8ILItRzt4iDwxj4wnI', '2019-11-15 04:27:09', '2019-11-21 09:10:06'),
(37, 'Kanny Singhh', 'Kanny', 'Singhh', 'kannysingh@yopmail.com', '2019-11-15 04:30:26', '$2y$10$D43XORx9FPYbJXJu2L7CkuJsKI9ywXPjNOXoVhPi9iegyE5tXy7h2', 'vendor', NULL, 1, 'Moa9zHEdREFzRSFG7DNs2fDCSMEFPyGiUGOgan9FxOFj4TjsZNcdLF5CgwIa', '2019-11-15 04:30:08', '2019-11-21 09:10:10'),
(38, 'Yuvraj Bajwa', 'Yuvraj', 'Bajwa', 'yuvi@gmail.com', '2019-11-14 18:30:00', '$2y$10$nNsAZlbUjk5MQejC/gAcO.00QkIKDfJI7cODHa4OT8KQ96SGWFRqW', 'vendor', NULL, 1, NULL, '2019-11-15 04:51:50', '2019-11-21 09:10:26'),
(39, 'HYCINTH YIMGA', 'HYCINTH', 'YIMGA', 'contactfavorville@gmail.com', '2019-11-15 16:20:30', '$2y$10$6Nq8e2EhE6Xp2/r7pSISb.cvfxbVENNgwPDeu4MZ0PIzm6a6/dEBe', 'user', NULL, NULL, 'HZfumDTztXkugyIUn7sXHgtJXprsW6Cp5e12T6rnJug0qChroiHGZY8eRyGQ', '2019-11-15 16:20:15', '2019-11-15 16:20:30'),
(40, 'Test Test', 'Test', 'Test', 'yimgah@outlook.com', '2019-11-15 16:26:13', '$2y$10$7i8QLKLRZvQS/aoDt/OWTuit05TjXMX9wkMMKzmDsT14wJ5IVIi3a', 'vendor', NULL, 1, 'J6E8MXFU30Ds9mL0aBKSunr2UePU5F1PnmAIskQMBnUNQbbWXh1U7HDemJ0j', '2019-11-15 16:26:02', '2019-11-21 09:10:19'),
(41, 'Ivery High', 'Ivery', 'High', 'ihigh@masonlive.gmu.edu', '2019-11-15 19:10:31', '$2y$10$I3FxreZ4zHuUEns6VhcvmOCU7T5DvjU/j91f3YxUoUUXVzZFyDpjK', 'vendor', NULL, 1, NULL, '2019-11-15 19:09:57', '2019-11-21 09:09:56'),
(42, 'Jaskaran Singh', 'Jaskaran', 'Singh', 'jaskaran@yopmail.com', '2019-11-18 03:05:55', '$2y$10$24fdx3W1i9M2GLFjlOeUXuE2H7reNsX/Nsixl/ou8JxPIB.2EmZh.', 'vendor', NULL, 1, 's8S5GsRb0NXkqRBbzYFSP7yWbTPAvTXaF26PRkLywXN8itSlKiDTrKQepwWJ', '2019-11-18 03:05:38', '2019-11-21 09:10:00'),
(43, 'karan singh', 'karan', 'singh', 'karan@yopmail.com', '2019-11-18 04:02:59', '$2y$10$/HFJc7wVlgEDh.Uiyier1O8wxUmYr6kohUh4c7KizeLcVHlVFyKPe', 'vendor', NULL, 1, NULL, '2019-11-18 04:02:23', '2019-11-21 09:10:13'),
(44, 'jassi singh', 'jassi', 'singh', 'jassi91@yopmail.com', '2019-11-26 00:58:09', '$2y$10$N/UOLjgGNNissqOqvSmGm.pq5rBBgxI9CKPC4zFmT733riMeQT4tO', 'vendor', NULL, NULL, 'Gs9140TtUkGbxJHIlmuXOF6SsHx4wwk6wyFFmBdULHk1Mw4DqrqJFxkY9I9u', '2019-11-26 00:54:09', '2019-11-26 00:58:09');

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
  `vendor_category_id` int(11) NOT NULL DEFAULT '0',
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'amenity',
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendor_amenities`
--

INSERT INTO `vendor_amenities` (`id`, `parent`, `user_id`, `amenity_id`, `category_id`, `vendor_category_id`, `type`, `status`, `created_at`, `updated_at`) VALUES
(48, 0, 31, 10, 1, 1, 'amenity', NULL, '2019-11-21 04:29:19', '2019-11-21 04:29:19'),
(49, 0, 31, 11, 1, 1, 'amenity', NULL, '2019-11-21 04:29:19', '2019-11-21 04:29:19'),
(50, 0, 31, 4, 1, 1, 'game', NULL, '2019-11-21 04:29:19', '2019-11-21 04:29:19'),
(51, 0, 31, 7, 1, 1, 'game', NULL, '2019-11-21 04:29:19', '2019-11-21 04:29:19'),
(52, 0, 31, 12, 1, 1, 'game', NULL, '2019-11-21 04:29:19', '2019-11-21 04:29:19'),
(53, 0, 31, 10, 18, 2, 'amenity', NULL, '2019-11-21 07:33:20', '2019-11-21 07:33:20'),
(54, 0, 31, 11, 18, 2, 'amenity', NULL, '2019-11-21 07:33:20', '2019-11-21 07:33:20'),
(55, 0, 31, 4, 18, 2, 'game', NULL, '2019-11-21 07:33:20', '2019-11-21 07:33:20'),
(56, 0, 31, 7, 18, 2, 'game', NULL, '2019-11-21 07:33:20', '2019-11-21 07:33:20'),
(57, 0, 31, 12, 18, 2, 'game', NULL, '2019-11-21 07:33:20', '2019-11-21 07:33:20'),
(58, 0, 42, 10, 1, 11, 'amenity', NULL, '2019-11-25 10:39:46', '2019-11-25 10:39:46'),
(59, 0, 42, 4, 1, 11, 'game', NULL, '2019-11-25 10:39:46', '2019-11-25 10:39:46'),
(60, 0, 34, 10, 20, 14, 'amenity', NULL, '2019-11-26 01:10:12', '2019-11-26 01:10:12'),
(62, 0, 44, 4, 20, 22, 'game', NULL, '2019-11-26 05:45:23', '2019-11-26 05:45:23'),
(63, 0, 44, 10, 20, 22, 'amenity', NULL, '2019-11-26 05:54:07', '2019-11-26 05:54:07'),
(64, 0, 34, 10, 25, 15, 'amenity', NULL, '2019-11-27 01:37:34', '2019-11-27 01:37:34'),
(65, 0, 31, 10, 11, 24, 'amenity', NULL, '2019-11-27 02:15:47', '2019-11-27 02:15:47'),
(66, 0, 31, 11, 11, 24, 'amenity', NULL, '2019-11-27 02:15:47', '2019-11-27 02:15:47'),
(67, 0, 31, 4, 11, 24, 'game', NULL, '2019-11-27 02:15:47', '2019-11-27 02:15:47'),
(68, 0, 31, 7, 11, 24, 'game', NULL, '2019-11-27 02:15:47', '2019-11-27 02:15:47'),
(69, 0, 34, 10, 11, 25, 'amenity', NULL, '2019-11-27 02:19:56', '2019-11-27 02:19:56'),
(70, 0, 34, 11, 11, 25, 'amenity', NULL, '2019-11-27 02:19:56', '2019-11-27 02:19:56');

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
  `price` int(11) NOT NULL DEFAULT '0',
  `status` int(11) DEFAULT NULL,
  `publish` int(11) NOT NULL DEFAULT '0',
  `business_location` text COLLATE utf8mb4_unicode_ci,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `travel_distaince` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `capacity_type` int(11) NOT NULL,
  `sitting_capacity` int(11) NOT NULL,
  `standing_capacity` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendor_categories`
--

INSERT INTO `vendor_categories` (`id`, `parent`, `user_id`, `category_id`, `title`, `business_url`, `price`, `status`, `publish`, `business_location`, `latitude`, `longitude`, `travel_distaince`, `capacity_type`, `sitting_capacity`, `standing_capacity`, `created_at`, `updated_at`) VALUES
(1, 0, 31, 1, 'Prateek Dua Photography', 'prateek-dua-photography', 0, 3, 1, '', '32.9697', '-96.80322', '1000', 0, 0, 0, '2019-11-20 01:37:22', '2019-11-26 02:18:05'),
(2, 0, 31, 18, 'SVA Fotografs', 'sva-fotografs', 0, 3, 1, NULL, '31.633980', '74.872261', '0', 0, 0, 0, '2019-11-20 01:45:40', '2019-11-25 08:33:58'),
(3, 1, 31, 29, NULL, NULL, 0, 1, 0, NULL, NULL, NULL, '0', 0, 0, 0, '2019-11-20 02:32:09', '2019-11-20 02:32:09'),
(4, 1, 31, 30, NULL, NULL, 0, 1, 0, NULL, NULL, NULL, '0', 0, 0, 0, '2019-11-20 02:32:09', '2019-11-20 02:32:09'),
(5, 1, 31, 35, NULL, NULL, 0, 1, 0, NULL, NULL, NULL, '0', 0, 0, 0, '2019-11-20 02:32:09', '2019-11-20 02:32:09'),
(6, 1, 31, 36, NULL, NULL, 0, 1, 0, NULL, NULL, NULL, '0', 0, 0, 0, '2019-11-20 02:32:09', '2019-11-20 02:32:09'),
(7, 1, 31, 37, NULL, NULL, 0, 1, 0, NULL, NULL, NULL, '0', 0, 0, 0, '2019-11-20 02:32:09', '2019-11-20 02:32:09'),
(8, 1, 31, 38, NULL, NULL, 0, 1, 0, NULL, NULL, NULL, '0', 0, 0, 0, '2019-11-20 02:32:09', '2019-11-20 02:32:09'),
(9, 1, 31, 39, NULL, NULL, 0, 1, 0, NULL, NULL, NULL, '0', 0, 0, 0, '2019-11-20 02:32:09', '2019-11-20 02:32:09'),
(10, 1, 31, 40, NULL, NULL, 0, 1, 0, NULL, NULL, NULL, '0', 0, 0, 0, '2019-11-20 02:32:09', '2019-11-20 02:32:09'),
(11, 0, 42, 1, 'Kanny Gill Photography', 'kanny-gill-photography', 1500, 3, 1, 'New York 112, North Patchogue, NY, USA', '40.78464160000001', '-73.00876929999998', '0', 0, 0, 0, '2019-11-20 03:23:14', '2019-11-27 06:35:23'),
(12, 11, 42, 30, NULL, NULL, 0, 1, 0, NULL, NULL, NULL, '0', 0, 0, 0, '2019-11-20 03:32:20', '2019-11-20 03:32:20'),
(13, 11, 42, 35, NULL, NULL, 0, 1, 0, NULL, NULL, NULL, '0', 0, 0, 0, '2019-11-20 03:32:20', '2019-11-20 03:32:20'),
(14, 0, 34, 20, 'Photos', 'photos', 0, 3, 1, '', '27.2038', '77.5011', '400', 0, 0, 0, '2019-11-20 03:35:54', '2019-11-26 04:52:01'),
(15, 0, 34, 25, 'Decoration', 'decoration', 0, 3, 1, NULL, NULL, NULL, '0', 0, 0, 0, '2019-11-20 03:35:54', '2019-11-27 08:35:39'),
(16, 0, 34, 1, NULL, NULL, 0, 4, 0, NULL, NULL, NULL, '0', 0, 0, 0, '2019-11-20 03:35:54', '2019-11-25 06:15:50'),
(17, 0, 40, 6, NULL, NULL, 0, 1, 0, NULL, NULL, NULL, '0', 0, 0, 0, '2019-11-20 05:19:29', '2019-11-20 05:19:29'),
(18, 2, 31, 44, NULL, NULL, 0, 1, 0, NULL, NULL, NULL, '0', 0, 0, 0, '2019-11-21 07:33:08', '2019-11-21 07:33:08'),
(19, 14, 34, 34, NULL, NULL, 0, 1, 0, NULL, NULL, NULL, '0', 0, 0, 0, '2019-11-22 04:58:59', '2019-11-22 04:58:59'),
(20, 15, 34, 13, NULL, NULL, 0, 1, 0, NULL, NULL, NULL, '0', 0, 0, 0, '2019-11-26 01:09:29', '2019-11-26 01:09:29'),
(21, 0, 44, 1, NULL, NULL, 0, 1, 0, NULL, NULL, NULL, '0', 0, 0, 0, '2019-11-26 01:20:16', '2019-11-26 01:20:16'),
(22, 0, 44, 20, 'Event planner      12', 'event-planer-123', 0, 3, 1, '', '12 7000 2in1', '13 3000 2in1', '200', 0, 0, 0, '2019-11-26 01:28:19', '2019-11-26 07:47:33'),
(23, 22, 44, 34, NULL, NULL, 0, 1, 0, NULL, NULL, NULL, '0', 0, 0, 0, '2019-11-26 04:43:03', '2019-11-26 04:43:03'),
(24, 0, 31, 11, 'Harkul Royal Events', 'harkul-royal-events', 5000, 3, 1, 'Newark International Airport Street, Newark, NJ, USA', '40.6921118', '-74.1828812', '5000', 3, 500, 200, '2019-11-27 01:36:18', '2019-11-27 05:04:33'),
(25, 0, 34, 11, 'Mohali Star', 'mohali-star', 500, 2, 0, '', '30.6996133', '76.6908427', '100', 0, 0, 0, '2019-11-27 02:13:22', '2019-11-27 08:38:59');

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
(8, NULL, 'cover_photo', 'basic_information', 'images/vendors/settings/1574348222jhWaq3X8Kpiwvl2jml6k-istockphoto-953790424-612x612.jpg', 31, 1, 1, '2019-11-20 01:45:48', '2019-11-21 09:27:02'),
(9, NULL, 'short_description', 'basic_information', 'Based out of Noida, Prateek Dua Photography is a photography service that specialises in documenting the splendour of your nuptial ceremonies in vibrant pictures and engaging videos. The team of experienced photographers at this company combines traditional, contemporary and portraiture styles of photography and captures the emotions of your family and friends on the day of your wedding in exclusive images.', 31, 1, 1, '2019-11-20 01:45:48', '2019-11-20 01:54:50'),
(10, NULL, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/15742352101K1rwYiVUkDUwMtkcSII--dsc6542_15_68762.jpg', 31, 1, 1, '2019-11-20 02:03:30', '2019-11-20 02:03:30'),
(11, NULL, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/1574235210QTSRE9y4j9CYW20UBEIJ--dsc2796_15_68762.jpg', 31, 1, 1, '2019-11-20 02:03:30', '2019-11-20 02:03:30'),
(12, NULL, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/1574235210TY35njj6jpTV3FtbehM8--dsc2731_15_68762.jpg', 31, 1, 1, '2019-11-20 02:03:30', '2019-11-20 02:03:30'),
(13, NULL, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/1574235210L30rURbwQd2nBn5A7ELL--dsc2726_15_68762.jpg', 31, 1, 1, '2019-11-20 02:03:30', '2019-11-20 02:03:30'),
(14, NULL, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/1574235210ri8VBdDCNpEZ5Lvc57kw-img-9096_15_68762-1562319904.jpg', 31, 1, 1, '2019-11-20 02:03:30', '2019-11-20 02:03:30'),
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
(62, NULL, 'description', 'description', '<p>its too good</p>', 34, 25, 15, '2019-11-20 04:28:17', '2019-11-27 01:37:25'),
(64, NULL, 'prohibtion', 'prohibtion', '<p>its too good descr</p>', 34, 25, 15, '2019-11-20 04:30:00', '2019-11-27 01:39:10'),
(66, NULL, 'business_name', 'basic_information', 'Photos', 34, 20, 14, '2019-11-20 04:38:40', '2019-11-22 01:59:40'),
(67, NULL, 'address', 'basic_information', 'address', 34, 20, 14, '2019-11-20 04:38:40', '2019-11-22 01:59:40'),
(68, NULL, 'website', 'basic_information', 'http://google.com', 34, 20, 14, '2019-11-20 04:38:40', '2019-11-22 01:59:40'),
(69, NULL, 'phone_number', 'basic_information', '123456789', 34, 20, 14, '2019-11-20 04:38:41', '2019-11-22 01:59:40'),
(70, NULL, 'company', 'basic_information', 'company name', 34, 20, 14, '2019-11-20 04:38:41', '2019-11-22 01:59:40'),
(71, NULL, 'travel_distaince', 'basic_information', '400', 34, 20, 14, '2019-11-20 04:38:41', '2019-11-22 01:59:40'),
(72, NULL, 'min_price', 'basic_information', '500', 34, 20, 14, '2019-11-20 04:38:41', '2019-11-22 01:59:40'),
(73, NULL, 'cover_photo', 'basic_information', 'images/vendors/settings/1574694861zzlXTb5ihN0txYdueExN-event-pic.jpg', 34, 20, 14, '2019-11-20 04:38:41', '2019-11-25 09:44:21'),
(74, NULL, 'short_description', 'basic_information', 'short des', 34, 20, 14, '2019-11-20 04:38:41', '2019-11-22 01:59:40'),
(86, 0, 'style', 'styles', '1', 31, 1, 1, '2019-11-21 04:16:56', '2019-11-21 04:16:56'),
(87, 0, 'style', 'styles', '2', 31, 1, 1, '2019-11-21 04:16:56', '2019-11-21 04:16:56'),
(88, NULL, 'business_name', 'basic_information', 'SVA Fotografs', 31, 18, 2, '2019-11-21 04:51:44', '2019-11-21 05:17:33'),
(89, NULL, 'address', 'basic_information', '5950 FM 920 \r\nWeatherford, TX 76088', 31, 18, 2, '2019-11-21 04:51:44', '2019-11-21 07:39:37'),
(90, NULL, 'website', 'basic_information', 'http://49.249.236.30:6633', 31, 18, 2, '2019-11-21 04:51:44', '2019-11-21 05:17:34'),
(91, NULL, 'phone_number', 'basic_information', '4158464500', 31, 18, 2, '2019-11-21 04:51:44', '2019-11-21 05:17:34'),
(92, NULL, 'company', 'basic_information', 'SVA Fotografs', 31, 18, 2, '2019-11-21 04:51:44', '2019-11-21 05:17:34'),
(93, NULL, 'travel_distaince', 'basic_information', '1000', 31, 18, 2, '2019-11-21 04:51:44', '2019-11-21 05:17:34'),
(94, NULL, 'min_price', 'basic_information', '200', 31, 18, 2, '2019-11-21 04:51:44', '2019-11-21 05:17:34'),
(95, NULL, 'cover_photo', 'basic_information', '', 31, 18, 2, '2019-11-21 04:51:44', '2019-11-21 04:51:44'),
(96, NULL, 'short_description', 'basic_information', 'I Have Been So Lucky To Have Lived My Dream Job For The Last 8 Years! Yes Thats More Than 300 Weddings, 4 Countries And Many States. It Is Such A Special Thing To Share An Experience Like This. My Background In Advertising, Documentary And Fashion Has Given Me A Unique View On The Process Of Recording Your Wedding. Emotion, The Details And The Connections Made Are My Focus For The Day.', 31, 18, 2, '2019-11-21 04:51:44', '2019-11-21 07:39:06'),
(97, NULL, 'cover_video', 'basic_information', 'videos/vendors/cover/1574336173M1zYTcqIxukRyiJXECXy-background-vdo.mp4', 31, 18, 2, '2019-11-21 04:57:05', '2019-11-21 06:06:13'),
(98, NULL, 'cover_video_image', 'basic_information', 'images/vendors/settings/1574348333YVH915cvghabKZnvRaGG-wedding-photography-melbourne-bride-and-groom-41.jpg', 31, 18, 2, '2019-11-21 04:57:05', '2019-11-21 09:28:53'),
(99, NULL, 'cover_video', 'basic_information', '', 34, 20, 14, '2019-11-21 05:16:33', '2019-11-21 05:16:33'),
(100, NULL, 'cover_video_image', 'basic_information', '', 34, 20, 14, '2019-11-21 05:16:33', '2019-11-21 05:16:33'),
(101, NULL, 'cover_photo_image', 'basic_information', '', 31, 18, 2, '2019-11-21 06:17:11', '2019-11-21 06:17:11'),
(102, NULL, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/1574340920hVtQum0nwh1O5FFOvwTg--dsc6542_15_68762.jpg', 31, 18, 2, '2019-11-21 07:25:20', '2019-11-21 07:25:20'),
(103, NULL, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/1574340920ykqEOxFwtqIUYy2iGgSm--dsc2731_15_68762.jpg', 31, 18, 2, '2019-11-21 07:25:20', '2019-11-21 07:25:20'),
(104, NULL, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/1574340920rVIM8aPIREVIHnzOKll1--dsc2796_15_68762.jpg', 31, 18, 2, '2019-11-21 07:25:20', '2019-11-21 07:25:20'),
(106, NULL, 'description', 'description', '<p>Situated on a 120-acres of rolling hills, The Texas Star, is a beautifully-appointed rustic ranch venue in the Dallas-Fort Worth area of Texas. With its simple charm and tranquil scenery, this unique ranch is the perfect place to host your wedding day or wedding weekend retreat. The ranch offers several spaces to choose from for your wedding day festivities, including: The Great Room, an Amphitheater-style space, and the original party barn. Whether you envision a magical outdoor ceremony or a romantic indoor ceremony, The Texas Star can accommodate you. After the ceremony guests can mix and mingle over cocktails and appetizers. Meanwhile, you and your wedding party can pose for formal portraits along the sprawling estate. After cocktail hour, you can reunite with your guests in the party barn for a delicious meal, toasts, and dancing! Strict attention to detail and comfort ensures that you and your guests will experience and enjoy the country charm of this venue and leave with memories to last a lifetime!</p>', 31, 18, 2, '2019-11-21 07:26:34', '2019-11-21 07:26:48'),
(108, 0, 'style', 'styles', '1', 31, 18, 2, '2019-11-21 07:26:56', '2019-11-21 07:26:56'),
(109, 0, 'style', 'styles', '2', 31, 18, 2, '2019-11-21 07:26:56', '2019-11-21 07:26:56'),
(110, 0, 'style', 'styles', '3', 31, 18, 2, '2019-11-21 07:26:56', '2019-11-21 07:26:56'),
(111, 0, 'season', 'seasons', '1', 31, 18, 2, '2019-11-21 07:33:41', '2019-11-21 07:33:41'),
(112, 0, 'season', 'seasons', '3', 31, 18, 2, '2019-11-21 07:33:41', '2019-11-21 07:33:41'),
(113, 0, 'season', 'seasons', '4', 31, 18, 2, '2019-11-21 07:33:41', '2019-11-21 07:33:41'),
(114, NULL, 'prohibtion', 'prohibtion', '<p>Situated on a 120-acres of rolling hills, The Texas Star, is a beautifully-appointed rustic ranch venue in the Dallas-Fort Worth area of Texas. With its simple charm and tranquil scenery, this unique ranch is the perfect place to host your wedding day or wedding weekend retreat. The ranch offers several spaces to choose from for your wedding day festivities, including: The Great Room, an Amphitheater-style space, and the original party barn. Whether you envision a magical outdoor ceremony or a romantic indoor ceremony, The Texas Star can accommodate you. After the ceremony guests can mix and mingle over cocktails and appetizers. Meanwhile, you and your wedding party can pose for formal portraits along the sprawling estate. After cocktail hour, you can reunite with your guests in the party barn for a delicious meal, toasts, and dancing! Strict attention to detail and comfort ensures that you and your guests will experience and enjoy the country charm of this venue and leave with memories to last a lifetime!</p>', 31, 18, 2, '2019-11-21 07:33:52', '2019-11-21 07:34:03'),
(115, NULL, 'cover_video', 'basic_information', '', 31, 1, 1, '2019-11-21 09:26:52', '2019-11-21 09:26:52'),
(116, NULL, 'cover_video_image', 'basic_information', '', 31, 1, 1, '2019-11-21 09:26:52', '2019-11-21 09:26:52'),
(123, NULL, 'video', 'videoGallery', '{"title":"Sample 1sss","link":"https:\\/\\/www.youtube.com\\/embed\\/ICej-ufgFF4","image":"images\\/vendors\\/gallery\\/1574404144tU1r6Pn5MKODC6zvblyh-wedding-photography-melbourne-bride-and-groom-41.jpg"}', 31, 1, 1, '2019-11-22 00:59:04', '2019-11-22 01:17:07'),
(124, NULL, 'cover_video', 'basic_information', '', 34, 1, 16, '2019-11-22 02:01:29', '2019-11-22 02:01:29'),
(125, NULL, 'cover_video_image', 'basic_information', '', 34, 1, 16, '2019-11-22 02:01:29', '2019-11-22 02:01:29'),
(126, NULL, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/1574418264xnSYsJHT4B11tT1f5boe-menu-about.png', 34, 20, 14, '2019-11-22 04:54:24', '2019-11-22 04:54:24'),
(127, NULL, 'video', 'videoGallery', '{"title":"filhal","link":"https:\\/\\/www.youtube.com\\/embed\\/hMy5za-m5Ew","image":"images\\/vendors\\/gallery\\/1574418325ULmyErYq6CnSKWRYE1aE-event-pic.jpg"}', 34, 20, 14, '2019-11-22 04:55:25', '2019-11-22 04:56:11'),
(128, NULL, 'description', 'description', '<p>Knot Just Pictures is a photography company located in Noida and was founded by two professional photographers who started following their passion for photography in the year 2005, although their first wedding shoot was in 2012. The team has captured over a hundred weddings all around the nation and Oceania with its talented team of photographers</p>', 34, 20, 14, '2019-11-22 04:58:24', '2019-11-22 04:58:50'),
(130, 0, 'style', 'styles', '1', 34, 20, 14, '2019-11-22 04:58:56', '2019-11-22 04:58:56'),
(131, 0, 'style', 'styles', '3', 34, 20, 14, '2019-11-22 04:58:56', '2019-11-22 04:58:56'),
(132, NULL, 'prohibtion', 'prohibtion', '<p>Knot Just Pictures is a photography company located in Noida and was founded by two professional photographers who started following their passion for photography in the year 2005, although their first wedding shoot was in 2012. The team has captured over a hundred weddings all around the nation and Oceania with its talented team of photographers</p>', 34, 20, 14, '2019-11-22 05:01:31', '2019-11-22 05:01:40'),
(133, NULL, 'business_name', 'basic_information', 'Decoration', 34, 25, 15, '2019-11-22 05:06:01', '2019-11-22 06:45:27'),
(134, NULL, 'address', 'basic_information', 'mohali sector 71', 34, 25, 15, '2019-11-22 05:06:01', '2019-11-22 06:45:27'),
(135, NULL, 'website', 'basic_information', 'http://google.com', 34, 25, 15, '2019-11-22 05:06:01', '2019-11-22 06:45:27'),
(136, NULL, 'phone_number', 'basic_information', '14785236954', 34, 25, 15, '2019-11-22 05:06:01', '2019-11-22 06:45:27'),
(137, NULL, 'company', 'basic_information', 'Decoration pvt ltd', 34, 25, 15, '2019-11-22 05:06:01', '2019-11-22 06:45:27'),
(138, NULL, 'travel_distaince', 'basic_information', '60', 34, 25, 15, '2019-11-22 05:06:01', '2019-11-22 06:45:27'),
(139, NULL, 'min_price', 'basic_information', '500', 34, 25, 15, '2019-11-22 05:06:01', '2019-11-22 06:45:27'),
(140, NULL, 'cover_photo', 'basic_information', 'images/vendors/settings/1574424927yDxExkqPDf5U5P3nBhlx-budget-plan-bg.png', 34, 25, 15, '2019-11-22 05:06:01', '2019-11-22 06:45:27'),
(141, NULL, 'short_description', 'basic_information', 'Decorator is the best in the world', 34, 25, 15, '2019-11-22 05:06:01', '2019-11-22 06:45:27'),
(142, NULL, 'cover_video', 'basic_information', '', 34, 25, 15, '2019-11-22 05:06:03', '2019-11-22 05:06:03'),
(143, NULL, 'cover_video_image', 'basic_information', '', 34, 25, 15, '2019-11-22 05:06:03', '2019-11-22 05:06:03'),
(145, NULL, 'video', 'videoGallery', '{"title":"Wedding","link":"https:\\/\\/www.youtube.com\\/embed\\/67Mlgq6-dGA","image":"images\\/vendors\\/gallery\\/1574697825xqe9svAlKrd5ssHg6Na4-fb_cover_5_post-650x300.jpg"}', 42, 1, 11, '2019-11-25 10:33:45', '2019-11-25 10:33:45'),
(147, 0, 'style', 'styles', '1', 42, 1, 11, '2019-11-25 10:39:34', '2019-11-25 10:39:34'),
(148, 0, 'style', 'styles', '3', 42, 1, 11, '2019-11-25 10:39:34', '2019-11-25 10:39:34'),
(149, 0, 'season', 'seasons', '3', 42, 1, 11, '2019-11-25 10:39:59', '2019-11-25 10:39:59'),
(150, 0, 'style', 'styles', '1', 34, 25, 15, '2019-11-26 01:09:23', '2019-11-26 01:09:23'),
(151, 0, 'season', 'seasons', '4', 34, 20, 14, '2019-11-26 01:10:20', '2019-11-26 01:10:20'),
(152, NULL, 'business_name', 'basic_information', '', 44, 1, 21, '2019-11-26 01:20:49', '2019-11-26 01:20:49'),
(153, NULL, 'address', 'basic_information', '', 44, 1, 21, '2019-11-26 01:20:49', '2019-11-26 01:20:49'),
(154, NULL, 'website', 'basic_information', '', 44, 1, 21, '2019-11-26 01:20:49', '2019-11-26 01:20:49'),
(155, NULL, 'phone_number', 'basic_information', '', 44, 1, 21, '2019-11-26 01:20:49', '2019-11-26 01:20:49'),
(156, NULL, 'company', 'basic_information', '', 44, 1, 21, '2019-11-26 01:20:49', '2019-11-26 01:20:49'),
(157, NULL, 'travel_distaince', 'basic_information', '', 44, 1, 21, '2019-11-26 01:20:49', '2019-11-26 01:20:49'),
(158, NULL, 'min_price', 'basic_information', '', 44, 1, 21, '2019-11-26 01:20:49', '2019-11-26 01:20:49'),
(159, NULL, 'cover_photo', 'basic_information', '', 44, 1, 21, '2019-11-26 01:20:49', '2019-11-26 01:20:49'),
(160, NULL, 'short_description', 'basic_information', '', 44, 1, 21, '2019-11-26 01:20:49', '2019-11-26 01:20:49'),
(161, NULL, 'cover_video', 'basic_information', '', 44, 1, 21, '2019-11-26 01:20:52', '2019-11-26 01:20:52'),
(162, NULL, 'cover_video_image', 'basic_information', '', 44, 1, 21, '2019-11-26 01:20:52', '2019-11-26 01:20:52'),
(163, NULL, 'description', 'description', '', 44, 1, 21, '2019-11-26 01:21:31', '2019-11-26 01:21:31'),
(164, NULL, 'style', 'styles', '', 44, 1, 21, '2019-11-26 01:21:35', '2019-11-26 01:21:35'),
(165, NULL, 'prohibtion', 'prohibtion', '', 44, 1, 21, '2019-11-26 01:22:49', '2019-11-26 01:22:49'),
(166, NULL, 'business_name', 'basic_information', 'Event planner      12', 44, 20, 22, '2019-11-26 01:29:24', '2019-11-26 02:50:27'),
(167, NULL, 'address', 'basic_information', 'suuny enclace 125', 44, 20, 22, '2019-11-26 01:29:24', '2019-11-26 02:45:41'),
(168, NULL, 'website', 'basic_information', 'http://49.249.236.30:2930/swopzshop/author/developer/?screen=new', 44, 20, 22, '2019-11-26 01:29:24', '2019-11-26 02:45:41'),
(169, NULL, 'phone_number', 'basic_information', '1234456789', 44, 20, 22, '2019-11-26 01:29:24', '2019-11-26 02:50:27'),
(170, NULL, 'company', 'basic_information', 'Deftsoft', 44, 20, 22, '2019-11-26 01:29:24', '2019-11-26 02:45:42'),
(171, NULL, 'travel_distaince', 'basic_information', '200', 44, 20, 22, '2019-11-26 01:29:24', '2019-11-26 02:45:42'),
(172, NULL, 'min_price', 'basic_information', '45', 44, 20, 22, '2019-11-26 01:29:24', '2019-11-26 03:07:29'),
(173, NULL, 'cover_photo', 'basic_information', 'images/vendors/settings/15747561420CECWnSZ7yaVhvavQEMn-14997.png', 44, 20, 22, '2019-11-26 01:29:24', '2019-11-26 02:45:42'),
(174, NULL, 'short_description', 'basic_information', '01 WELCOME\r\nOUR WELCOME.\r\nYOUR PLEASURE.\r\nOur hospitality: it is, perhaps, the thing that impresses when you arrive; and what lingers longest once you’ve left. Being a trading nation that has welcomed the world for over 4,000 years, putting our guests first has become second nature.\r\n\r\nTo visit Bahrain is to know Bahrainis. Our readiness to smile and eagerness to help are legendary. We look forward to welcoming you to our home to experience the rich history, vibrant culture, tourist attractions, food and above all, the warmth of our people.', 44, 20, 22, '2019-11-26 01:29:24', '2019-11-26 02:45:41'),
(175, NULL, 'cover_video', 'basic_information', '', 44, 20, 22, '2019-11-26 01:30:44', '2019-11-26 01:30:44'),
(176, NULL, 'cover_video_image', 'basic_information', '', 44, 20, 22, '2019-11-26 01:30:44', '2019-11-26 01:30:44'),
(177, NULL, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/15747584673dZm35bJTHjnNUG8ID8B-Chat-text.txt', 44, 20, 22, '2019-11-26 03:24:27', '2019-11-26 03:24:27'),
(180, NULL, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/1574758467n57i92dNNOdiH6w8Sy58-New-Microsoft-Office-Word-Document.docx', 44, 20, 22, '2019-11-26 03:24:27', '2019-11-26 03:24:27'),
(181, NULL, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/1574758467xgSctAg28GgHUjo6vBcn-wp3276805-pubg-4k-wallpapers.jpg', 44, 20, 22, '2019-11-26 03:24:27', '2019-11-26 03:24:27'),
(183, NULL, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/1574759666hEbCfzUEchRFhLBuKss2-2faf1563b9868cea2b35d9345c68c77d.jpg', 44, 20, 22, '2019-11-26 03:44:26', '2019-11-26 03:44:26'),
(186, NULL, 'video', 'videoGallery', '{"title":"FUnny videos","link":"https:\\/\\/www.youtube.com\\/embed\\/sdUUx5FdySs","image":"images\\/vendors\\/gallery\\/1574760670a1FJabniNB15aERKXuZw-maxresdefault.jpg"}', 44, 20, 22, '2019-11-26 04:01:10', '2019-11-26 04:01:10'),
(187, NULL, 'description', 'description', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Do you have experience in&nbsp;<b>event</b>&nbsp;from start to finish according to requirements, brand, target audience and objectives? If yes ,then go through our&nbsp;<b>event planner</b>&nbsp;interview&nbsp;<b>questions</b>&nbsp;page for better understanding of interview process and win in job search.Do you have experience in&nbsp;<b>event</b>&nbsp;from start to finish according to requirements, brand, target audience and objectives? If yes ,then go through our&nbsp;<b>event planner</b>&nbsp;interview&nbsp;<b>questions</b>&nbsp;page for better understanding of interview process and win in job search. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>', 44, 20, 22, '2019-11-26 04:02:17', '2019-11-26 04:38:22'),
(192, NULL, 'prohibtion', 'prohibtion', '<p>aLCHOLIC CIGRATE&nbsp;&nbsp;Do you have experience in&nbsp;<b>event</b>&nbsp;from start to finish according to requirements, brand, target audience and objectives? If yes ,then go through our&nbsp;<b>event planner</b>&nbsp;interview&nbsp;<b>questions</b>&nbsp;page for better understanding of interview process and win in job search.Do you have experience in&nbsp;<b>event</b>&nbsp;from start to finish according to requirements, brand, target audience and objectives? If yes ,then go through our&nbsp;<b>event planner</b>&nbsp;interview&nbsp;<b>questions</b>&nbsp;page for better understanding of interview process and win in job search.Do you have experience in&nbsp;<b>event</b>&nbsp;from start to finish according to requirements, brand, target audience and objectives? If yes ,then go through our&nbsp;<b>event planner</b>&nbsp;interview&nbsp;<b>questions</b>&nbsp;page for better understanding of interview process and win in job search.Do you have experience in&nbsp;<b>event</b>&nbsp;from start to finish according to requirements, brand, target audience and objectives? If yes ,then go through our&nbsp;<b>event planner</b>&nbsp;interview&nbsp;<b>questions</b>&nbsp;page for better understanding of interview process and win in job search.Do you have experience in&nbsp;<b>event</b>&nbsp;from start to finish according to requirements, brand, target audience and objectives? If yes ,then go through our&nbsp;<b>event planner</b>&nbsp;interview&nbsp;<b>questions</b>&nbsp;page for better understanding of interview process and win in job search.Do you have experience in&nbsp;<b>event</b>&nbsp;from start to finish according to requirements, brand, target audience and objectives? If yes ,then go through our&nbsp;<b>event planner</b>&nbsp;interview&nbsp;<b>questions</b>&nbsp;page for better understanding of interview process and win in job search.Do you have experience in&nbsp;<b>event</b>&nbsp;from start to finish according to requirements, brand, target audience and objectives? If yes ,then go through our&nbsp;<b>event planner</b>&nbsp;interview&nbsp;<b>questions</b>&nbsp;page for better understanding of interview process and win in job search.Do you have experience in&nbsp;<b>event</b>&nbsp;from start to finish according to requirements, brand, target audience and objectives? If yes ,then go through our&nbsp;<b>event planner</b>&nbsp;interview&nbsp;<b>questions</b>&nbsp;page for better understanding of interview process and win in job search.</p>', 44, 20, 22, '2019-11-26 05:49:02', '2019-11-26 07:27:53'),
(195, 0, 'style', 'styles', '3', 44, 20, 22, '2019-11-26 05:50:12', '2019-11-26 05:50:12'),
(196, 0, 'season', 'seasons', '4', 44, 20, 22, '2019-11-26 05:59:17', '2019-11-26 05:59:17'),
(197, NULL, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/1574838336Sop4bT1ajRuDjXxvZqAv-band.png', 34, 25, 15, '2019-11-27 01:35:36', '2019-11-27 01:35:36'),
(198, NULL, 'video', 'videoGallery', '{"title":"video tap","link":"https:\\/\\/www.youtube.com\\/embed\\/EU7PRmCpx-0","image":"images\\/vendors\\/gallery\\/1574838380FbtIc6K8fvK7cDD36uYf-band.png"}', 34, 25, 15, '2019-11-27 01:36:20', '2019-11-27 01:36:59'),
(199, 0, 'season', 'seasons', '4', 34, 25, 15, '2019-11-27 01:37:43', '2019-11-27 01:37:43'),
(200, NULL, 'business_name', 'basic_information', 'Harkul Royal Events', 31, 11, 24, '2019-11-27 01:43:23', '2019-11-27 02:07:41'),
(201, NULL, 'address', 'basic_information', 'Near Jhandewalan Metro Station 110055 Paharganj (Central Delhi)', 31, 11, 24, '2019-11-27 01:43:23', '2019-11-27 02:07:41'),
(202, NULL, 'website', 'basic_information', 'http://49.249.236.30:6633', 31, 11, 24, '2019-11-27 01:43:23', '2019-11-27 02:07:41'),
(203, NULL, 'phone_number', 'basic_information', '1212878777', 31, 11, 24, '2019-11-27 01:43:23', '2019-11-27 02:07:41'),
(204, NULL, 'company', 'basic_information', 'Harkul Royal Events', 31, 11, 24, '2019-11-27 01:43:23', '2019-11-27 02:07:41'),
(205, NULL, 'travel_distaince', 'basic_information', '50', 31, 11, 24, '2019-11-27 01:43:23', '2019-11-27 02:07:42'),
(206, NULL, 'min_price', 'basic_information', '5000', 31, 11, 24, '2019-11-27 01:43:23', '2019-11-27 05:04:33'),
(207, NULL, 'cover_photo', 'basic_information', 'images/vendors/settings/1574840284qVVukcHSO7itargTBnd2-The-Manek-Chowk_new_s-591db2093df78cf5fa46dcae.jpg', 31, 11, 24, '2019-11-27 01:43:23', '2019-11-27 02:08:04'),
(208, NULL, 'short_description', 'basic_information', 'Royal Wedding Events is a banquet hall located in the city of Delhi. Choosing a wedding venue is one of the most difficult tasks which you will accomplish while planning it.', 31, 11, 24, '2019-11-27 01:43:23', '2019-11-27 02:07:41'),
(209, NULL, 'cover_video', 'basic_information', '', 31, 11, 24, '2019-11-27 01:43:26', '2019-11-27 01:43:26'),
(210, NULL, 'cover_video_image', 'basic_information', '', 31, 11, 24, '2019-11-27 01:43:26', '2019-11-27 01:43:26'),
(211, NULL, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/15748404170pPAadjLUKS8ckgeXbIs-The-Manek-Chowk_new_s-591db2093df78cf5fa46dcae.jpg', 31, 11, 24, '2019-11-27 02:10:17', '2019-11-27 02:10:17'),
(212, NULL, 'description', 'description', '<p>Royal Wedding Events is a banquet hall located in the city of Delhi. Choosing a wedding venue is one of the most difficult tasks which you will accomplish while planning it. Indian weddings are comprised of many functions and ceremonies which are usually spread across days, and weeks before they are spent in planning everything flawlessly. To ensure that your every need is catered to while providing you with quality services, you need to choose a venue which can be a perfect fit for all your wedding-related functions. Royal Wedding Events will ensure that your wedding is celebrated with much grandiosity with memories that you can cherish for life.</p>', 31, 11, 24, '2019-11-27 02:10:48', '2019-11-27 02:11:07'),
(214, 0, 'style', 'styles', '1', 31, 11, 24, '2019-11-27 02:11:16', '2019-11-27 02:11:16'),
(215, 0, 'style', 'styles', '2', 31, 11, 24, '2019-11-27 02:11:17', '2019-11-27 02:11:17'),
(216, 0, 'style', 'styles', '3', 31, 11, 24, '2019-11-27 02:11:17', '2019-11-27 02:11:17'),
(217, NULL, 'business_name', 'basic_information', 'Mohali Star', 34, 11, 25, '2019-11-27 02:13:56', '2019-11-27 02:16:52'),
(218, NULL, 'address', 'basic_information', 'mohali sector 71', 34, 11, 25, '2019-11-27 02:13:56', '2019-11-27 02:16:52'),
(219, NULL, 'website', 'basic_information', 'http://google.com', 34, 11, 25, '2019-11-27 02:13:56', '2019-11-27 02:16:52'),
(220, NULL, 'phone_number', 'basic_information', '147852369', 34, 11, 25, '2019-11-27 02:13:56', '2019-11-27 02:16:52'),
(221, NULL, 'company', 'basic_information', 'mohali pvt ltd', 34, 11, 25, '2019-11-27 02:13:56', '2019-11-27 02:16:52'),
(222, NULL, 'travel_distaince', 'basic_information', '100', 34, 11, 25, '2019-11-27 02:13:56', '2019-11-27 02:16:52'),
(223, NULL, 'min_price', 'basic_information', '500', 34, 11, 25, '2019-11-27 02:13:56', '2019-11-27 02:16:52'),
(224, NULL, 'cover_photo', 'basic_information', 'images/vendors/settings/1574840812N3fRraN5ZqLwZClJIEPF-event-pic.jpg', 34, 11, 25, '2019-11-27 02:13:56', '2019-11-27 02:16:52'),
(225, NULL, 'short_description', 'basic_information', 'my business is good compared to another business.', 34, 11, 25, '2019-11-27 02:13:56', '2019-11-27 02:16:52'),
(226, NULL, 'cover_video', 'basic_information', '', 34, 11, 25, '2019-11-27 02:13:58', '2019-11-27 02:13:58'),
(227, NULL, 'cover_video_image', 'basic_information', '', 34, 11, 25, '2019-11-27 02:13:58', '2019-11-27 02:13:58'),
(228, 0, 'season', 'seasons', '3', 31, 11, 24, '2019-11-27 02:14:04', '2019-11-27 02:14:04'),
(229, 0, 'season', 'seasons', '4', 31, 11, 24, '2019-11-27 02:14:04', '2019-11-27 02:14:04'),
(230, NULL, 'prohibtion', 'prohibtion', '<p>Royal Wedding Events is a banquet hall located in the city of Delhi. Choosing a wedding venue is one of the most difficult tasks which you will accomplish while planning it. Indian weddings are comprised of many functions and ceremonies which are usually spread across days, and weeks before they are spent in planning everything flawlessly. To ensure that your every need is catered to while providing you with quality services, you need to choose a venue which can be a perfect fit for all your wedding-related functions. Royal Wedding Events will ensure that your wedding is celebrated with much grandiosity with memories that you can cherish for life.</p>', 31, 11, 24, '2019-11-27 02:15:13', '2019-11-27 02:15:23'),
(231, NULL, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/1574840835138DFiye9tpDAeIiSugo-menu-about.png', 34, 11, 25, '2019-11-27 02:17:15', '2019-11-27 02:17:15'),
(232, NULL, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/1574840835fCPj83KFCAItIb2BUc8S-menu-about-us.png', 34, 11, 25, '2019-11-27 02:17:15', '2019-11-27 02:17:15'),
(233, NULL, 'video', 'videoGallery', '{"title":"deftsoft mohali","link":"https:\\/\\/www.youtube.com\\/embed\\/yC270QKnJ80","image":"images\\/vendors\\/gallery\\/1574840897xHS8CQ5XRiWBZ8ZEGaIo-forgot-pass-banner.png"}', 34, 11, 25, '2019-11-27 02:18:17', '2019-11-27 02:18:17'),
(234, NULL, 'description', 'description', '<p>its too good venues&nbsp;</p>', 34, 11, 25, '2019-11-27 02:19:29', '2019-11-27 02:19:43'),
(236, 0, 'style', 'styles', '1', 34, 11, 25, '2019-11-27 02:19:47', '2019-11-27 02:19:47'),
(237, 0, 'style', 'styles', '3', 34, 11, 25, '2019-11-27 02:19:47', '2019-11-27 02:19:47'),
(238, 0, 'season', 'seasons', '3', 34, 11, 25, '2019-11-27 02:20:04', '2019-11-27 02:20:04'),
(239, NULL, 'prohibtion', 'prohibtion', '<p>deftsoft des</p>', 34, 11, 25, '2019-11-27 02:21:30', '2019-11-27 02:21:41'),
(240, NULL, 'cover_video', 'basic_information', '', 42, 1, 11, '2019-11-27 06:24:11', '2019-11-27 06:24:11'),
(241, NULL, 'cover_video_image', 'basic_information', '', 42, 1, 11, '2019-11-27 06:24:11', '2019-11-27 06:24:11'),
(242, NULL, 'facebook_url', 'basic_information', 'https://www.facebook.com', 42, 1, 11, '2019-11-27 06:30:04', '2019-11-27 06:35:24'),
(243, NULL, 'linkedin_url', 'basic_information', 'https://www.lindedin.com', 42, 1, 11, '2019-11-27 06:30:04', '2019-11-27 06:35:24'),
(244, NULL, 'twitter_url', 'basic_information', 'https://www.twitter.com', 42, 1, 11, '2019-11-27 06:30:04', '2019-11-27 06:35:24'),
(245, NULL, 'instagram_url', 'basic_information', 'https://www.instagram.com', 42, 1, 11, '2019-11-27 06:30:04', '2019-11-27 06:35:24'),
(246, NULL, 'pinterest_url', 'basic_information', 'https://www.pinterest.com', 42, 1, 11, '2019-11-27 06:30:04', '2019-11-27 06:35:24');

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
  `vendor_category_id` int(11) NOT NULL DEFAULT '0',
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendor_event_games`
--

INSERT INTO `vendor_event_games` (`id`, `parent`, `user_id`, `event_id`, `category_id`, `vendor_category_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 31, 2, 1, 1, NULL, '2019-11-21 02:12:48', '2019-11-21 02:12:48'),
(2, 0, 31, 3, 1, 1, NULL, '2019-11-21 02:12:48', '2019-11-21 02:12:48'),
(3, 0, 31, 1, 18, 2, NULL, '2019-11-21 07:33:31', '2019-11-21 07:33:31'),
(4, 0, 31, 2, 18, 2, NULL, '2019-11-21 07:33:31', '2019-11-21 07:33:31'),
(5, 0, 31, 3, 18, 2, NULL, '2019-11-21 07:33:31', '2019-11-21 07:33:31'),
(6, 0, 31, 5, 18, 2, NULL, '2019-11-21 07:33:31', '2019-11-21 07:33:31'),
(7, 0, 31, 6, 18, 2, NULL, '2019-11-21 07:33:31', '2019-11-21 07:33:31'),
(8, 0, 31, 9, 18, 2, NULL, '2019-11-21 07:33:31', '2019-11-21 07:33:31'),
(9, 0, 31, 10, 18, 2, NULL, '2019-11-21 07:33:31', '2019-11-21 07:33:31'),
(10, 0, 31, 11, 18, 2, NULL, '2019-11-21 07:33:31', '2019-11-21 07:33:31'),
(11, 0, 31, 14, 18, 2, NULL, '2019-11-21 07:33:31', '2019-11-21 07:33:31'),
(12, 0, 42, 2, 1, 11, NULL, '2019-11-25 10:39:52', '2019-11-25 10:39:52'),
(13, 0, 34, 1, 20, 14, NULL, '2019-11-26 01:10:16', '2019-11-26 01:10:16'),
(14, 0, 44, 1, 20, 22, NULL, '2019-11-26 05:59:10', '2019-11-26 05:59:10'),
(15, 0, 34, 1, 25, 15, NULL, '2019-11-27 01:37:38', '2019-11-27 01:37:38'),
(16, 0, 31, 2, 11, 24, NULL, '2019-11-27 02:13:55', '2019-11-27 02:13:55'),
(17, 0, 31, 3, 11, 24, NULL, '2019-11-27 02:13:55', '2019-11-27 02:13:55'),
(18, 0, 31, 5, 11, 24, NULL, '2019-11-27 02:13:55', '2019-11-27 02:13:55'),
(19, 0, 31, 6, 11, 24, NULL, '2019-11-27 02:13:55', '2019-11-27 02:13:55'),
(20, 0, 31, 11, 11, 24, NULL, '2019-11-27 02:13:55', '2019-11-27 02:13:55'),
(21, 0, 34, 1, 11, 25, NULL, '2019-11-27 02:20:01', '2019-11-27 02:20:01'),
(22, 0, 34, 5, 11, 25, NULL, '2019-11-27 02:20:01', '2019-11-27 02:20:01');

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
  `menus` longtext COLLATE utf8mb4_unicode_ci,
  `price_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `min_person` int(11) NOT NULL,
  `max_person` int(11) NOT NULL,
  `vendor_category_id` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendor_packages`
--

INSERT INTO `vendor_packages` (`id`, `title`, `slug`, `description`, `category_id`, `user_id`, `price`, `no_of_hours`, `no_of_days`, `menus`, `price_type`, `min_person`, `max_person`, `vendor_category_id`, `status`, `created_at`, `updated_at`) VALUES
(1, '10 Percent OFF your Wedding', '10-percent-off-your-wedding', '<p>Print out this promotional page and bring it to us when you come in for your complimentary tasting and private appointment. Allow us to meet with you and If you plan on ordering your cake with us allow us to price your cake. Then, show us your print out and we will take 10% OFF our quoted price.</p>', 1, 31, 5000, 5, 1, '<p>Print out this promotional page and bring it to us when you come in for your complimentary tasting and private appointment. Allow us to meet with you and If you plan on ordering your cake with us allow us to price your cake. Then, show us your print out and we will take 10% OFF our quoted price.</p>', 'per_person', 1, 4, 1, 1, '2019-11-20 02:42:33', '2019-11-20 02:42:33'),
(7, 'monthly', 'assa', '<p>its too good</p>', 20, 34, 100, 2, 2, NULL, 'per_person', 1, 10, 14, 1, '2019-11-25 09:55:09', '2019-11-25 09:56:29'),
(9, 'my new pack', 'my-new-pack', '<p>the package is good for winter</p>', 20, 34, 500, 2, 5, NULL, 'per_person', 1, 10, 14, 1, '2019-11-25 09:59:00', '2019-11-26 09:43:21'),
(11, 'Gold Package', 'gold-package', '<p>Lorium Epsum&nbsp;Lorium Epsum&nbsp;Lorium Epsum&nbsp;Lorium Epsum&nbsp;</p>', 1, 42, 5, 8, 5, '<p>No</p>', 'per_person', 1, 100, 11, 1, '2019-11-26 01:55:32', '2019-11-26 01:55:32'),
(12, 'winter package', 'winter-package', '<p>the package for winter&nbsp;</p>', 20, 34, 300, 5, 4, '<ul>\r\n	<li>foods</li>\r\n	<li>ice cream</li>\r\n	<li>junk food</li>\r\n</ul>', 'fix', 10, 500, 14, 1, '2019-11-26 02:06:40', '2019-11-26 02:06:40'),
(15, 'Tester', 'tester', '<p>Do you have experience in&nbsp;<b>event</b>&nbsp;from start to finish according to requirements, brand, target audience and objectives? If yes ,then go through our&nbsp;<b>event planner</b>&nbsp;interview&nbsp;<b>questions</b>&nbsp;page for better understanding of interview process and win in job search.Do you have experience in&nbsp;<b>event</b>&nbsp;from start to finish according to requirements, brand, target audience and objectives? If yes ,then go through our&nbsp;<b>event planner</b>&nbsp;interview&nbsp;<b>questions</b>&nbsp;page for better understanding of interview process and win in job search.Do you have experience in&nbsp;<b>event</b>&nbsp;from start to finish according to requirements, brand, target audience and objectives? If yes ,then go through our&nbsp;<b>event planner</b>&nbsp;interview&nbsp;<b>questions</b>&nbsp;page for better understanding of interview process and win in job search.</p>', 20, 44, 20000, 10, 230, '<p>Do you have experience in&nbsp;<b>event</b>&nbsp;from start to finish according to requirements, brand, target audience and objectives? If yes ,then go through our&nbsp;<b>event planner</b>&nbsp;interview&nbsp;<b>questions</b>&nbsp;page for better understanding of interview process and win in job search.Do you have experience in&nbsp;<b>event</b>&nbsp;from start to finish according to requirements, brand, target audience and objectives? If yes ,then go through our&nbsp;<b>event planner</b>&nbsp;interview&nbsp;<b>questions</b>&nbsp;page for better understanding of interview process and win in job search.</p>', 'fix', 11, 30, 22, 1, '2019-11-26 06:49:50', '2019-11-26 06:55:39'),
(19, 'Tester', 'tester-1', '<p>teszn</p>', 1, 44, 1233, 23, 323, '<p>nsersnsn</p>', 'per_person', 12, 22, 21, 1, '2019-11-26 07:42:27', '2019-11-26 07:42:27'),
(20, 'pack for winter', 'pack-for-winter', '<p>desc</p>', 25, 34, 100, 3, 2, NULL, 'per_person', 1, 22, 15, 1, '2019-11-27 01:38:21', '2019-11-27 01:38:21'),
(21, 'summer', 'summer', '<p>summer packages&nbsp;</p>', 11, 34, 200, 2, 1, NULL, 'per_person', 1, 20, 25, 1, '2019-11-27 02:20:44', '2019-11-27 02:20:44');

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
(2, 'jassiiiii', 'The image must be an image. Error message should be correct .  it should be sound goodThe image must be an image. Error message should be correct .  it should be sound good', 'jassiiiii', '1574317703.jpg', 1, '2019-11-20 07:57:47', '2019-11-26 01:06:53');

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
-- Indexes for table `cms_pages`
--
ALTER TABLE `cms_pages`
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
-- Indexes for table `service_aproval_processes`
--
ALTER TABLE `service_aproval_processes`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `category_variations`
--
ALTER TABLE `category_variations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=456;
--
-- AUTO_INCREMENT for table `cms_pages`
--
ALTER TABLE `cms_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `discount_deals`
--
ALTER TABLE `discount_deals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `f_a_qs`
--
ALTER TABLE `f_a_qs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `package_meta_datas`
--
ALTER TABLE `package_meta_datas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=274;
--
-- AUTO_INCREMENT for table `page_meta_tags`
--
ALTER TABLE `page_meta_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;
--
-- AUTO_INCREMENT for table `seasons`
--
ALTER TABLE `seasons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `service_aproval_processes`
--
ALTER TABLE `service_aproval_processes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;
--
-- AUTO_INCREMENT for table `styles`
--
ALTER TABLE `styles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `vendor_amenities`
--
ALTER TABLE `vendor_amenities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT for table `vendor_categories`
--
ALTER TABLE `vendor_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `vendor_category_meta_datas`
--
ALTER TABLE `vendor_category_meta_datas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;
--
-- AUTO_INCREMENT for table `vendor_event_games`
--
ALTER TABLE `vendor_event_games`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `vendor_packages`
--
ALTER TABLE `vendor_packages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `venues`
--
ALTER TABLE `venues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
