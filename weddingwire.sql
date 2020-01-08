-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 08, 2020 at 09:28 PM
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
(4, 'ame', 'descf', 'amen', NULL, 'game', 1, '2019-11-13 04:30:49', '2019-12-24 02:44:17'),
(6, 'Bride dressing are wrwqwertwq', 'Bride\'s dressing', 'ames', NULL, 'amenity', 1, '2019-11-13 04:34:50', '2019-12-05 07:38:32'),
(7, 'kabull', 'History (from Greek ἱστορία, historia, meaning \'inquiry; knowledge acquired by investigation\') is the past as it is described in written documents, and the study thereof. Events occurr', 'ne', NULL, 'game', 1, '2019-11-13 04:43:32', '2019-11-21 00:43:04'),
(8, 'Ceremony arch', 'Ceremony arch', 'gg', NULL, 'amenity', 1, '2019-11-13 04:43:45', '2019-12-24 02:40:46'),
(9, 'Dance floor', 'Dance floor', 'sds', NULL, 'amenity', 1, '2019-11-15 04:18:56', '2019-12-24 02:40:49'),
(10, 'Tables and chairs', 'Tables and chairs provided', 'sds-1', NULL, 'amenity', 0, '2019-11-15 04:19:13', '2019-12-24 08:32:22'),
(11, 'Groom dressing area', 'Groom\'s dressing area', 'dsfsdf', NULL, 'amenity', 1, '2019-11-15 04:46:34', '2019-11-20 02:34:01'),
(12, 'Bed1', '!!! URGENT: I pulled a link from my', 'bed1', NULL, 'game', 1, '2019-11-18 04:49:47', '2019-11-19 03:48:54'),
(13, 'Bed2', 'By the end of the fourth millennium BC.', 'bed2', NULL, 'game', 0, '2019-11-18 04:50:23', '2019-11-19 03:52:03'),
(14, 'Roomss', 'India\'s history and cultur civilization.', 'room', NULL, 'amenity', 0, '2019-11-19 03:47:40', '2019-11-21 00:40:23'),
(15, 'Outdoor', 'Golf.\r\nHorseshoes.\r\nCornhole.\r\nFishing Tournament.\r\nWasher Toss.', 'outdoor', NULL, 'amenity', 1, '2019-12-05 04:57:52', '2019-12-05 04:58:21'),
(16, 'GOLf', '5, 2018 - Top 50 Outdoor Games List. Disc Golf. Horseshoes. Cornhole. Fishing Tournament. Washer Toss. Paintball. Marco Polo. Chicken (in a pool, not on a tractor like in Footloose)', 'golf', NULL, 'game', 0, '2019-12-05 04:59:13', '2019-12-24 08:32:37');

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
(1, 0, 'Photography', 0, 25, 'photography', 1, 0, '2019-11-09 02:43:13', '2019-12-18 04:22:33', NULL, 'images/categories/15743400105v2qXkoiDtFtn0gWQT1g-photography.png', '', 'photography', '#ff80c0', 1, 'photography', 'photography', 0),
(2, 8, 'Cateringss', 0, 1, 'catering', 1, 0, '2019-11-09 03:28:53', '2019-11-18 09:52:14', NULL, 'images/categories/1574071913C7jokbqSIC1l9G0G99FC-2faf1563b9868cea2b35d9345c68c77d.jpg', 'images/categories/1574071913dffkUcobysb0AhTRmTsd-167958.jpg', 'photography', '#ff8040', 1, 'photography', 'kgiuiu', 1),
(3, 2, 'Food', 0, 2, 'food', 1, 0, '2019-11-09 03:41:39', '2019-11-13 05:21:43', NULL, '', '', 'huh', '', 1, 'ljoj', 'hgigy', 0),
(4, 2, 'Demo', 0, 1, 'demo', 1, 0, '2019-11-09 03:44:29', '2019-11-13 05:21:43', NULL, '', '', 'Test', '', 1, 'Test', 'Test', 0),
(5, 0, 'Transportation', 0, 2, 'transportation', 1, 0, '2019-11-13 02:48:49', '2019-12-18 04:22:50', NULL, 'images/categories/157433882640bPU2ByR2dPRT7yYPmB-transportation.png', '', 'Transportation', '#ff8040', 1, 'Transportation', 'Transportation', 1),
(6, 0, 'Balloons', 0, 7, 'balloons', 1, 0, '2019-11-13 02:49:07', '2019-12-18 04:22:33', NULL, 'images/categories/1574338883As2ZWsXRGbdg8HhrcA2l-balloons.png', '', 'Balloons', '#ff8040', 1, 'Balloons', 'Balloons', 1),
(7, 0, 'Bands', 0, 4, 'bands', 1, 0, '2019-11-13 02:49:22', '2019-12-18 04:22:33', NULL, 'images/categories/1574338845Ft52x3r4UsopztpEpzKA-band.png', '', 'Bands', '#ff8040', 1, 'Bands', 'Bands', 1),
(8, 0, 'Catering/ Beverages', 0, 6, 'catering-beverages', 1, 0, '2019-11-13 02:49:53', '2019-12-18 04:22:33', NULL, 'images/categories/15743388746aYwytATTpiwln8JgO1l-catering.png', '', 'Catering/ Beverages', '#ff8040', 1, 'Catering/ Beverages', 'Catering/ Beverages', 1),
(9, 0, 'Churches/Temples', 0, 8, 'churches-temples', 1, 0, '2019-11-13 02:50:23', '2019-12-18 04:22:33', NULL, 'images/categories/15743388975Lo3RUq2ORffCzrIn3ES-church.png', '', 'Churches/Temples', '#ff8000', 1, 'Churches/Temples', 'Churches/Temples', 1),
(10, 0, 'Musicians/Instrumentalist', 0, 9, 'musicians-instrumentalist', 1, 0, '2019-11-13 02:50:46', '2019-12-18 04:22:33', NULL, 'images/categories/1574338997zHC6WEdhupjPoMfdptdB-musician.png', '', 'Musicians/Instrumentalist', '#ff8040', 1, 'Musicians/Instrumentalist', 'Musicians/Instrumentalist', 1),
(11, 0, 'Venues', 0, 10, 'venues', 1, 1, '2019-11-13 02:51:29', '2019-12-18 04:22:33', NULL, 'images/categories/1574340571KoXV6BcmL7FtmiqzGJCy-venue.png', '', 'Venues', '#00ff00', 1, 'Venues', 'Venues', 1),
(12, 0, 'Flowers/Florist', 0, 11, 'flowers-florist', 1, 0, '2019-11-13 02:51:44', '2019-11-21 06:52:21', NULL, 'images/categories/1574338941zjFl0RTRQa4urXRVqZaw-florist.png', '', 'Flowers/Florist', '#0080ff', 1, 'Flowers/Florist', 'Flowers/Florist', 1),
(13, 25, 'Clothing/Dressing and Jewelries', 0, 1, 'clothing-dressing-and-jewelries', 1, 0, '2019-11-13 02:52:02', '2019-12-18 04:22:33', NULL, 'images/categories/15743147966MV8ioeX3sYpcqvg155J-162958.jpg', '', 'Clothing', '#80ffff', 1, 'Clothing/Dressing and Jewelries', 'Clothing/Dressing and Jewelries', 1),
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
(25, 0, 'Decoration', 0, 22, 'decoration', 1, 0, '2019-11-13 03:35:23', '2019-12-18 04:22:33', NULL, 'images/categories/1574339960iBUOm0yNMRU16xAEJQDX-decoration.png', '', 'Decoration', '#ff80ff', 1, 'Decoration', 'Decoration', 1),
(26, 0, 'Favors/Gift Registry', 0, 23, 'favors-gift-registry', 1, 0, '2019-11-13 03:35:38', '2019-12-18 04:22:33', NULL, 'images/categories/1574339974JyKWQ6DgYIT7r2VL0WXd-gifts.png', '', 'Favors/Gift Registry', '#0080ff', 1, 'Favors/Gift Registry', 'Favors/Gift Registry', 1),
(27, 0, 'SECURITY', 0, 24, 'security', 1, 0, '2019-11-13 03:35:52', '2019-12-18 04:22:33', NULL, 'images/categories/15743399888soBNff6Zohuwf7dS0NJ-security2.png', '', 'SECURITY', '#80ffff', 1, 'SECURITY', 'SECURITY', 1),
(28, 0, 'Sam', 0, 5, 'sam', 1, 0, '2019-11-13 10:36:27', '2019-12-18 04:22:33', NULL, 'images/categories/15743388561XqhzKceY675FsChfYKO-band2.png', '', 'Sam', '#ff8040', 1, 'Sam', 'Sam', 1),
(29, 1, 'Photographers', 0, 7, 'demoo', 1, 0, '2019-11-14 05:03:12', '2019-11-20 03:10:16', NULL, '', '', 'sads', '#80ffff', 1, 'sdds', 'sdds', 0),
(30, 1, 'Professional Photographers', 0, 8, 'demmo2', 1, 0, '2019-11-14 05:03:54', '2019-11-20 03:10:16', NULL, '', '', 'ses', '#ff8040', 1, 'sddssd', 'sdddddd', 0),
(31, 6, 'Parent', 0, 1, 'parentcategory', 1, 0, '2019-11-15 04:12:46', '2019-11-20 08:05:10', NULL, 'images/categories/1574256910AdkpUtPl3yUSI01kzwZb-dries-augustyns-58ASFVAP2Y4-unsplash.png', 'images/categories/1574068648dKhoF4UWzKOtpexI0C7f-162958.jpg', 'Love', '#ff8040', 1, 'Always', '•	Price should say: Factor in the costs of materials and labor, plus any related business expenses. Consider the total price buyers will pay too—including shipping.\r\n\r\n•	Quantity: For quantities greater than one, this listing will renew automatically until you remove the product manually.', 1),
(32, 31, 'ChildCategoryOne', 0, 1, 'childcategoryone', 1, 0, '2019-11-15 04:13:45', '2019-11-15 04:13:58', NULL, '', '', 'Test', '', 1, 'Test', 'Test', 1),
(33, 2, 'category', 0, 0, 'category', 1, 0, '2019-11-18 04:40:10', '2019-11-18 04:40:10', NULL, 'images/categories/1574071810xXRXBhmUjmxnpJK55Cnw-162958.jpg', 'images/categories/1574071810hQyNwDAQBCLLAD8QI5Dg-167958.jpg', 'alwaysss', '', 1, 'sparrow', '!!! URGENT: I pulled a link from my history and it took me straight to the back end of the portal. This is a huge security problem. People login always has to be required!!!\r\nI suggest you place a small text under each field to guide the vendors through the process just like we did with other fields', 1),
(34, 20, 'Event category', 0, 1, 'event-category', 1, 0, '2019-11-19 01:28:57', '2019-11-21 00:20:42', NULL, 'images/categories/1574314841E0CfEogVI4aByjqFMTY3-162958.jpg', 'images/categories/1574146737JMJEFKSdT7wZpkGxEbwE-162958.jpg', 'Jassi', '#ff8080', 1, 'JASSI12', 'India\'s history and culture is dynamic, spanning back to the beginning of human civilization. It begins with a mysterious culture along the Indus River and in farming communities in the southern lands of India. ... By the end of the fourth millennium BC, India had emerged as a region of highly developed civilization.', 1),
(35, 1, 'Wedding Photographer', 0, 1, 'wedding-photographer', 1, 0, '2019-11-19 05:26:39', '2019-11-20 03:10:16', NULL, '', '', 'Wedding Photographer', '#eda208', 1, 'Wedding Photographer', 'Wedding Photographer', 1),
(36, 1, 'Event Photographer', 0, 2, 'event-photographer', 1, 0, '2019-11-19 05:26:59', '2019-11-20 03:10:16', NULL, '', '', 'Event Photographer', '#eda208', 1, 'Event Photographer', 'Event Photographer', 0),
(37, 1, 'Portrait Photographer', 0, 3, 'portrait-photographer', 1, 0, '2019-11-19 05:27:22', '2019-12-20 06:39:06', NULL, '', '', 'Portrait Photographer', '#eda208', 1, 'Portrait Photographer', 'Portrait Photographer', 0),
(38, 1, 'Product Photographer', 0, 4, 'product-photographer', 1, 0, '2019-11-19 05:27:39', '2019-11-20 03:10:16', NULL, '', '', 'Product Photographer', '#eda208', 1, 'Product Photographer', 'Product Photographer', 0),
(39, 1, 'Aerial Photographer', 0, 5, 'aerial-photographer', 1, 0, '2019-11-19 05:28:03', '2019-11-20 03:10:16', NULL, '', '', 'Aerial Photographer', '#eda208', 1, 'Aerial Photographer', 'Aerial Photographer', 0),
(40, 1, 'Boudoir Photographer', 0, 6, 'boudoir-photographer', 1, 0, '2019-11-19 05:28:20', '2019-11-20 03:10:16', NULL, '', '', 'Boudoir Photographer', '#eda208', 1, 'Boudoir Photographer', 'Boudoir Photographer', 0),
(41, 0, 'Sammy', 0, 1, 'sammy', 1, 0, '2019-11-19 05:52:46', '2019-12-18 04:22:38', NULL, 'images/categories/1574162585bMLKCNv4sUhDZDM39u0f-band.png', '', 'Sammy', '#eda208', 1, 'Sammy', 'Sammy', 0),
(42, 24, 'Cake Shop', 0, 0, 'cake-shop', 1, 0, '2019-11-20 03:16:01', '2019-11-20 03:16:51', NULL, 'images/categories/1574239561Dsj1Fhax8VobJI3KNprn-wp3276805-pubg-4k-wallpapers.jpg', '', 'Cakesss', '#ff0000', 1, 'Cake121', 'A cake can be decorated with a photograph by printing the photograph onto an edible icing sheet and then setting the sheet on the desired portion of the cake. The ink used for printing the photograph on the edible icing ...', 0),
(43, 19, 'test cat001 name', 0, 1, 'test-cat001-name', 1, 0, '2019-11-20 08:04:19', '2019-12-18 04:22:33', NULL, 'images/categories/1574256925IY43SgxOfewhaXwMw0QK-dries-augustyns-58ASFVAP2Y4-unsplash.png', '', 'test cat  titla', '#eda208', 1, 'new tag', 'desc', 0),
(44, 18, 'Lights', 0, 1, 'lights', 1, 0, '2019-11-21 07:32:57', '2019-12-18 04:22:33', NULL, 'images/categories/1574341377swECw7z4VJqUU75EzrYx--dsc2796_15_68762.jpg', '', 'men-long-sleeve-shirts', '#eda208', 1, 'men-long-sleeve-shirts', 'sdsds', 0),
(45, 0, 'Ballonss', 0, 3, 'ballonss', 0, 1, '2019-12-05 04:51:52', '2019-12-30 06:54:04', NULL, 'images/categories/1575541383lITC0JkHkJwUD8L2C58TBallons.jpg', '', 'Birthday Party', '#17dd1d', 2, 'PARTY   1', 'Balloons can brighten up any event, any day, and make things more fun! Here are 25 fun things to do with balloons that will bring a smile to your face.', 0),
(46, 11, 'Amazing Venue', 0, 1, 'amazing-venue', 1, 1, '2019-12-23 07:48:40', '2019-12-30 06:53:27', NULL, 'images/categories/1577107120SW6W9qvJByPDFbYIUfW6t20_1312238515529Pwc10011.jpg', '', 'Test', '#eda208', 1, 'Test', 'Test', 0);

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
(324, NULL, 6, 2, 'event', '2019-11-18 05:22:54', '2019-11-18 05:22:54'),
(325, NULL, 6, 10, 'amenity', '2019-11-18 05:22:55', '2019-11-18 05:22:55'),
(326, NULL, 6, 12, 'amenity', '2019-11-18 05:22:55', '2019-11-18 05:22:55'),
(327, NULL, 6, 4, 'game', '2019-11-18 05:22:55', '2019-11-18 05:22:55'),
(328, NULL, 6, 13, 'game', '2019-11-18 05:22:55', '2019-11-18 05:22:55'),
(329, NULL, 6, 2, 'seasons', '2019-11-18 05:22:55', '2019-11-18 05:22:55'),
(330, NULL, 6, 3, 'seasons', '2019-11-18 05:22:55', '2019-11-18 05:22:55'),
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
(897, NULL, 16, 1, 'event', '2019-12-18 03:01:24', '2019-12-18 03:01:24'),
(898, NULL, 16, 6, 'amenity', '2019-12-18 03:01:24', '2019-12-18 03:01:24'),
(899, NULL, 16, 4, 'game', '2019-12-18 03:01:25', '2019-12-18 03:01:25'),
(900, NULL, 16, 7, 'game', '2019-12-18 03:01:25', '2019-12-18 03:01:25'),
(901, NULL, 16, 2, 'seasons', '2019-12-18 03:01:25', '2019-12-18 03:01:25'),
(902, NULL, 16, 3, 'seasons', '2019-12-18 03:01:25', '2019-12-18 03:01:25'),
(903, NULL, 16, 4, 'seasons', '2019-12-18 03:01:25', '2019-12-18 03:01:25'),
(904, NULL, 16, 5, 'seasons', '2019-12-18 03:01:25', '2019-12-18 03:01:25'),
(1011, NULL, 41, 5, 'event', '2019-12-20 06:47:16', '2019-12-20 06:47:16'),
(1012, NULL, 41, 6, 'event', '2019-12-20 06:47:16', '2019-12-20 06:47:16'),
(1013, NULL, 41, 9, 'event', '2019-12-20 06:47:16', '2019-12-20 06:47:16'),
(1014, NULL, 41, 10, 'amenity', '2019-12-20 06:47:16', '2019-12-20 06:47:16'),
(1015, NULL, 41, 4, 'game', '2019-12-20 06:47:16', '2019-12-20 06:47:16'),
(1016, NULL, 41, 3, 'seasons', '2019-12-20 06:47:16', '2019-12-20 06:47:16'),
(1017, NULL, 41, 4, 'seasons', '2019-12-20 06:47:16', '2019-12-20 06:47:16'),
(1018, NULL, 11, 2, 'event', '2019-12-23 08:05:44', '2019-12-23 08:05:44'),
(1019, NULL, 11, 3, 'event', '2019-12-23 08:05:44', '2019-12-23 08:05:44'),
(1020, NULL, 11, 5, 'event', '2019-12-23 08:05:44', '2019-12-23 08:05:44'),
(1021, NULL, 11, 6, 'event', '2019-12-23 08:05:44', '2019-12-23 08:05:44'),
(1022, NULL, 11, 10, 'event', '2019-12-23 08:05:44', '2019-12-23 08:05:44'),
(1023, NULL, 11, 11, 'event', '2019-12-23 08:05:44', '2019-12-23 08:05:44'),
(1024, NULL, 11, 17, 'event', '2019-12-23 08:05:44', '2019-12-23 08:05:44'),
(1025, NULL, 11, 6, 'amenity', '2019-12-23 08:05:44', '2019-12-23 08:05:44'),
(1026, NULL, 11, 10, 'amenity', '2019-12-23 08:05:44', '2019-12-23 08:05:44'),
(1027, NULL, 11, 11, 'amenity', '2019-12-23 08:05:44', '2019-12-23 08:05:44'),
(1028, NULL, 11, 15, 'amenity', '2019-12-23 08:05:44', '2019-12-23 08:05:44'),
(1029, NULL, 11, 4, 'game', '2019-12-23 08:05:44', '2019-12-23 08:05:44'),
(1030, NULL, 11, 7, 'game', '2019-12-23 08:05:44', '2019-12-23 08:05:44'),
(1031, NULL, 11, 12, 'game', '2019-12-23 08:05:45', '2019-12-23 08:05:45'),
(1032, NULL, 11, 16, 'game', '2019-12-23 08:05:45', '2019-12-23 08:05:45'),
(1033, NULL, 11, 1, 'seasons', '2019-12-23 08:05:45', '2019-12-23 08:05:45'),
(1034, NULL, 11, 2, 'seasons', '2019-12-23 08:05:45', '2019-12-23 08:05:45'),
(1035, NULL, 11, 3, 'seasons', '2019-12-23 08:05:45', '2019-12-23 08:05:45'),
(1036, NULL, 11, 4, 'seasons', '2019-12-23 08:05:45', '2019-12-23 08:05:45'),
(1037, NULL, 11, 5, 'seasons', '2019-12-23 08:05:45', '2019-12-23 08:05:45'),
(1038, NULL, 20, 2, 'event', '2019-12-24 04:05:29', '2019-12-24 04:05:29'),
(1039, NULL, 20, 3, 'event', '2019-12-24 04:05:29', '2019-12-24 04:05:29'),
(1040, NULL, 20, 5, 'event', '2019-12-24 04:05:29', '2019-12-24 04:05:29'),
(1041, NULL, 20, 6, 'event', '2019-12-24 04:05:29', '2019-12-24 04:05:29'),
(1042, NULL, 20, 11, 'event', '2019-12-24 04:05:29', '2019-12-24 04:05:29'),
(1043, NULL, 20, 17, 'event', '2019-12-24 04:05:29', '2019-12-24 04:05:29'),
(1044, NULL, 20, 6, 'amenity', '2019-12-24 04:05:29', '2019-12-24 04:05:29'),
(1045, NULL, 20, 8, 'amenity', '2019-12-24 04:05:29', '2019-12-24 04:05:29'),
(1046, NULL, 20, 9, 'amenity', '2019-12-24 04:05:29', '2019-12-24 04:05:29'),
(1047, NULL, 20, 10, 'amenity', '2019-12-24 04:05:29', '2019-12-24 04:05:29'),
(1048, NULL, 20, 11, 'amenity', '2019-12-24 04:05:29', '2019-12-24 04:05:29'),
(1049, NULL, 20, 15, 'amenity', '2019-12-24 04:05:29', '2019-12-24 04:05:29'),
(1050, NULL, 20, 4, 'game', '2019-12-24 04:05:30', '2019-12-24 04:05:30'),
(1051, NULL, 20, 7, 'game', '2019-12-24 04:05:30', '2019-12-24 04:05:30'),
(1052, NULL, 20, 12, 'game', '2019-12-24 04:05:30', '2019-12-24 04:05:30'),
(1053, NULL, 20, 16, 'game', '2019-12-24 04:05:30', '2019-12-24 04:05:30'),
(1054, NULL, 20, 1, 'seasons', '2019-12-24 04:05:30', '2019-12-24 04:05:30'),
(1055, NULL, 20, 2, 'seasons', '2019-12-24 04:05:30', '2019-12-24 04:05:30'),
(1056, NULL, 20, 3, 'seasons', '2019-12-24 04:05:30', '2019-12-24 04:05:30'),
(1057, NULL, 20, 4, 'seasons', '2019-12-24 04:05:30', '2019-12-24 04:05:30'),
(1058, NULL, 20, 5, 'seasons', '2019-12-24 04:05:30', '2019-12-24 04:05:30'),
(1059, NULL, 1, 2, 'event', '2020-01-08 03:59:58', '2020-01-08 03:59:58'),
(1060, NULL, 1, 3, 'event', '2020-01-08 03:59:58', '2020-01-08 03:59:58'),
(1061, NULL, 1, 5, 'event', '2020-01-08 03:59:58', '2020-01-08 03:59:58'),
(1062, NULL, 1, 6, 'event', '2020-01-08 03:59:58', '2020-01-08 03:59:58'),
(1063, NULL, 1, 11, 'event', '2020-01-08 03:59:58', '2020-01-08 03:59:58'),
(1064, NULL, 1, 17, 'event', '2020-01-08 03:59:58', '2020-01-08 03:59:58'),
(1065, NULL, 1, 6, 'amenity', '2020-01-08 03:59:58', '2020-01-08 03:59:58'),
(1066, NULL, 1, 11, 'amenity', '2020-01-08 03:59:58', '2020-01-08 03:59:58'),
(1067, NULL, 1, 15, 'amenity', '2020-01-08 03:59:58', '2020-01-08 03:59:58'),
(1068, NULL, 1, 4, 'game', '2020-01-08 03:59:58', '2020-01-08 03:59:58'),
(1069, NULL, 1, 12, 'game', '2020-01-08 03:59:59', '2020-01-08 03:59:59'),
(1070, NULL, 1, 2, 'seasons', '2020-01-08 03:59:59', '2020-01-08 03:59:59'),
(1071, NULL, 1, 3, 'seasons', '2020-01-08 03:59:59', '2020-01-08 03:59:59'),
(1072, NULL, 1, 4, 'seasons', '2020-01-08 03:59:59', '2020-01-08 03:59:59'),
(1073, NULL, 1, 5, 'seasons', '2020-01-08 03:59:59', '2020-01-08 03:59:59');

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `deal_id` int(11) DEFAULT NULL,
  `business_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `deal_status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chats`
--

INSERT INTO `chats` (`id`, `user_id`, `vendor_id`, `deal_id`, `business_id`, `status`, `deal_status`, `created_at`, `updated_at`) VALUES
(1, 32, 44, 13, 26, 0, 1, '2019-12-03 08:35:00', '2019-12-09 07:30:14'),
(3, 32, 31, 2, 1, 0, 0, '2019-12-04 05:14:22', '2019-12-27 07:35:24'),
(4, 51, 31, 4, 1, 0, 0, '2019-12-04 08:50:25', '2019-12-09 07:31:03'),
(5, 32, 34, 10, 15, 0, 0, '2019-12-05 00:51:03', '2019-12-05 00:51:03'),
(6, 32, 34, 25, 25, 0, 0, '2019-12-09 00:39:06', '2019-12-09 00:39:06'),
(7, 60, 59, 27, 35, 0, 0, '2019-12-09 07:47:22', '2019-12-13 04:02:54'),
(8, 32, 59, 27, 35, 0, 0, '2019-12-09 08:03:59', '2019-12-10 01:44:51'),
(9, 60, 42, 16, 11, 0, 0, '2019-12-13 03:18:56', '2019-12-13 03:18:56');

-- --------------------------------------------------------

--
-- Table structure for table `chat_messages`
--

CREATE TABLE `chat_messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `sender_id` int(11) DEFAULT NULL,
  `receiver_id` int(11) DEFAULT NULL,
  `deal_id` int(11) DEFAULT NULL,
  `business_id` int(11) DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci,
  `chat_id` int(11) DEFAULT NULL,
  `sender_status` int(11) DEFAULT '0',
  `receiver_status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chat_messages`
--

INSERT INTO `chat_messages` (`id`, `sender_id`, `receiver_id`, `deal_id`, `business_id`, `message`, `chat_id`, `sender_status`, `receiver_status`, `created_at`, `updated_at`) VALUES
(1, 32, 44, 13, 26, 'Hello jassi<br>As of the most popular dining options, family-style dining allows your guests to enjoy a variety of foods while not having to leave their seat. Our waiters bring food out on large platters and serve it directly.<br>By Narinder Singh, Email: bajwa9876470491@gmail.com, Phone Number : 1212878777<br>', 1, 0, 1, '2019-12-03 08:35:00', '2019-12-19 01:01:43'),
(2, 32, 44, 13, 26, 'dfdf', 1, 0, 1, '2019-12-03 10:07:43', '2019-12-19 01:01:43'),
(3, 32, 44, 13, 26, 'sdsds', 1, 0, 1, '2019-12-03 10:08:36', '2019-12-19 01:01:43'),
(4, 32, 44, 13, 26, 'dfsgftssdf', 1, 0, 1, '2019-12-03 10:08:41', '2019-12-19 01:01:43'),
(5, 32, 44, 13, 26, 'hi', 1, 0, 1, '2019-12-03 10:09:13', '2019-12-19 01:01:43'),
(6, 32, 44, 13, 26, 'hi', 1, 0, 1, '2019-12-03 10:10:15', '2019-12-19 01:01:44'),
(7, 32, 44, 13, 26, 'hello', 1, 0, 1, '2019-12-03 10:10:19', '2019-12-19 01:01:44'),
(8, 32, 44, 13, 26, 'Hello jassi<br>As of the most popular dining options, family-style dining allows your guests to enjoy a variety of foods while not having to leave their seat. Our waiters bring food out on large platters and serve it directly.<br>By Narinder Singh, Email: admin@printgenie.com, Phone Number : 4158464500<br>', 2, 0, 0, '2019-12-04 01:57:28', '2019-12-04 01:57:28'),
(9, 32, 44, 13, 26, 'hello', 2, 0, 0, '2019-12-04 02:26:55', '2019-12-04 02:26:55'),
(10, 32, 44, 13, 26, 'Hello jassi<br>As of the most popular dining options, family-style dining allows your guests to enjoy a variety of foods while not having to leave their seat. Our waiters bring food out on large platters and serve it directly.<br>By Narinder Singh, Email: admin@printgenie.com, Phone Number : 4158464500<br>', 1, 0, 1, '2019-12-04 02:56:28', '2019-12-19 01:01:44'),
(11, 32, 44, 13, 26, 'Hello jassi<br>As of the most popular dining options, family-style dining allows your guests to enjoy a variety of foods while not having to leave their seat. Our waiters bring food out on large platters and serve it directly.<br>By Narinder Singh, Email: admin@printgenie.com, Phone Number : 4158464500<br>', 1, 0, 1, '2019-12-04 02:57:27', '2019-12-19 01:01:44'),
(12, 32, 44, 13, 26, 'Hello jassi<br>As of the most popular dining options, family-style dining allows your guests to enjoy a variety of foods while not having to leave their seat. Our waiters bring food out on large platters and serve it directly.<br>By Narinder Singh, Email: admin@printgenie.com, Phone Number : 4158464500<br>', 1, 0, 1, '2019-12-04 02:57:58', '2019-12-19 01:01:44'),
(13, 44, 32, 13, 26, 'hello, vendor i have interested in your this deal please let me know how to get this.', 1, 0, 1, '2019-12-04 03:00:22', '2019-12-04 04:54:03'),
(14, 32, 44, 13, 26, NULL, 1, 0, 1, '2019-12-04 04:59:45', '2019-12-19 01:01:44'),
(15, 32, 31, 2, 1, 'Hello Narinder<br>I am interested in this deal for 10% OFF your Wedding, Groom, or Bridal Shower Cake! and would like to receive more information.<br>By Narinder Singh, Email: admin@printgenie.com, Phone Number : 4158464500<br>', 3, 0, 1, '2019-12-04 05:14:22', '2019-12-04 07:40:46'),
(16, 32, 31, 2, 1, 'hello', 3, 0, 1, '2019-12-04 05:14:32', '2019-12-04 07:40:46'),
(17, 31, 32, 2, 1, 'ssdsd', 3, 1, 1, '2019-12-04 07:09:41', '2019-12-04 07:09:41'),
(18, 31, 32, 2, 1, 'fdarsfsfgffgfgffg', 3, 1, 1, '2019-12-04 07:09:50', '2019-12-04 07:09:51'),
(19, 31, 32, 2, 1, 'ssdsdsd', 3, 1, 1, '2019-12-04 07:41:27', '2019-12-04 07:41:31'),
(20, 31, 32, 2, 1, 'newwwwww87897878', 3, 1, 1, '2019-12-04 07:41:41', '2019-12-04 07:41:41'),
(21, 31, 32, 2, 1, '12121212', 3, 1, 1, '2019-12-04 07:44:06', '2019-12-04 07:44:06'),
(22, 32, 31, 2, 1, 'bbbbbbbbbbbbbbbb', 3, 1, 1, '2019-12-04 07:44:18', '2019-12-04 07:44:19'),
(23, 32, 31, 2, 1, 'I am interested in this deal for 10% OFF your Wedding, Groom, or Bridal Shower Cake! and would like to receive more information', 3, 1, 1, '2019-12-04 08:01:00', '2019-12-04 08:15:39'),
(24, 32, 31, 2, 1, 'dffffffffffffffffffffffffffffgh', 3, 1, 1, '2019-12-04 08:14:38', '2019-12-04 08:15:39'),
(25, 31, 32, 2, 1, 'sssssss', 3, 1, 1, '2019-12-04 08:28:05', '2019-12-04 08:28:05'),
(26, 31, 32, 2, 1, 'asasasas', 3, 1, 1, '2019-12-04 08:28:10', '2019-12-04 08:28:10'),
(27, 31, 32, 2, 1, 'dfdfdfdfdf', 3, 1, 1, '2019-12-04 08:31:19', '2019-12-04 08:31:20'),
(28, 51, 31, 4, 1, 'Hello Narinder<br>Print out this promotional page and bring it to us when you come in for your complimentary tasting and private appointment. Allow us to meet with you and If you plan on ordering your cake with us allow us to price your cake. Then, show us your print out and we will take 30% OFF our quoted price.<br>By Kanny Gill, Email: kanny786@yopmail.com, Phone Number : 9465470549<br>', 4, 0, 1, '2019-12-04 08:50:25', '2019-12-04 08:50:51'),
(29, 51, 31, 4, 1, 'Hello', 4, 1, 1, '2019-12-04 08:50:56', '2019-12-04 08:50:56'),
(30, 31, 51, 4, 1, 'hi', 4, 1, 1, '2019-12-04 08:51:07', '2019-12-04 08:51:12'),
(31, 51, 31, 4, 1, 'How are you?', 4, 1, 1, '2019-12-04 08:51:26', '2019-12-04 08:51:26'),
(32, 31, 51, 4, 1, 'I\'m fine and you?', 4, 1, 1, '2019-12-04 08:51:58', '2019-12-04 08:52:02'),
(33, 51, 31, 4, 1, 'Hey great wannt to have this deal', 4, 1, 1, '2019-12-04 08:52:15', '2019-12-04 08:52:16'),
(34, 51, 31, 4, 1, 'Hey', 4, 1, 1, '2019-12-04 09:00:07', '2019-12-04 09:00:08'),
(35, 32, 44, 13, 26, 'hello', 1, 1, 1, '2019-12-04 09:38:17', '2019-12-19 01:01:44'),
(36, 32, 44, 13, 26, NULL, 1, 1, 1, '2019-12-04 09:39:37', '2019-12-19 01:01:44'),
(37, 32, 44, 13, 26, NULL, 1, 1, 1, '2019-12-04 09:39:39', '2019-12-19 01:01:44'),
(38, 32, 44, 13, 26, 'hellodfnsf', 1, 1, 1, '2019-12-04 09:39:45', '2019-12-19 01:01:44'),
(39, 32, 44, 13, 26, NULL, 1, 1, 1, '2019-12-04 09:40:07', '2019-12-19 01:01:44'),
(40, 32, 44, 13, 26, 'ddfdf', 1, 1, 1, '2019-12-04 09:40:48', '2019-12-19 01:01:44'),
(41, 32, 44, 13, 26, 'hello', 1, 1, 1, '2019-12-04 09:48:25', '2019-12-19 01:01:45'),
(42, 32, 44, 13, 26, 'hhhhh', 1, 1, 1, '2019-12-04 09:48:47', '2019-12-19 01:01:45'),
(43, 32, 44, 13, 26, 'sdsdsd', 1, 1, 1, '2019-12-04 09:49:32', '2019-12-19 01:01:45'),
(44, 32, 44, 13, 26, 'dfdfdf', 1, 1, 1, '2019-12-04 09:50:19', '2019-12-19 01:01:45'),
(45, 32, 44, 13, 26, 'sdsdsd', 1, 1, 1, '2019-12-04 09:50:23', '2019-12-19 01:01:45'),
(46, 32, 44, 13, 26, '122222222', 1, 1, 1, '2019-12-04 09:50:28', '2019-12-19 01:01:45'),
(47, 31, 32, 2, 1, 'hiii', 3, 1, 1, '2019-12-04 09:57:43', '2019-12-04 10:19:59'),
(48, 31, 51, 4, 1, 'hii', 4, 1, 1, '2019-12-04 09:59:57', '2019-12-05 06:02:36'),
(49, 31, 32, 2, 1, 'Hello how are you?', 3, 1, 1, '2019-12-04 10:24:25', '2019-12-04 10:24:27'),
(50, 32, 31, 2, 1, 'I am good', 3, 1, 1, '2019-12-04 10:25:22', '2019-12-04 10:25:25'),
(51, 32, 44, 13, 26, 'Hello jassi<br>As of the most popular dining options, family-style dining allows your guests to enjoy a variety of foods while not having to leave their seat. Our waiters bring food out on large platters and serve it directly.<br>By Narinder Singh, Email: admin@printgenie.com, Phone Number : 4158464500<br>', 1, 0, 1, '2019-12-05 00:50:07', '2019-12-19 01:01:45'),
(52, 32, 34, 10, 15, 'Hello vendor<br>Lorum Ipsum Dummy Text<br>By Narinder Singh, Email: admin@printgenie.com, Phone Number : 4158464500<br>', 5, 0, 1, '2019-12-05 00:51:04', '2019-12-10 08:02:18'),
(53, 31, 32, 2, 1, 'hello', 3, 1, 1, '2019-12-05 02:13:09', '2019-12-05 02:46:04'),
(54, 32, 44, 13, 26, 'hi', 1, 1, 1, '2019-12-05 02:54:59', '2019-12-19 01:01:45'),
(55, 31, 32, 2, 1, 'how are you?', 3, 1, 1, '2019-12-05 03:02:16', '2019-12-05 03:03:09'),
(56, 31, 32, 2, 1, 'hi', 3, 1, 1, '2019-12-05 03:04:01', '2019-12-05 03:25:12'),
(57, 31, 32, 2, 1, 'fine', 3, 1, 1, '2019-12-05 03:48:50', '2019-12-05 03:49:01'),
(58, 32, 44, 13, 26, 'hi', 1, 1, 1, '2019-12-05 03:56:30', '2019-12-19 01:01:45'),
(59, 32, 44, 13, 26, 'hi', 1, 1, 1, '2019-12-05 04:06:24', '2019-12-19 01:01:45'),
(60, 32, 31, 2, 1, 'sdssd', 3, 1, 1, '2019-12-05 04:20:18', '2019-12-05 04:20:44'),
(61, 31, 32, 2, 1, 'ssdsdsd', 3, 1, 1, '2019-12-05 04:20:50', '2019-12-05 04:20:53'),
(62, 31, 32, 2, 1, 'sadsdsasdeqrr253', 3, 1, 1, '2019-12-05 04:21:20', '2019-12-05 04:21:23'),
(63, 31, 32, 2, 1, 'hellooo', 3, 1, 1, '2019-12-05 04:33:28', '2019-12-05 04:33:38'),
(64, 32, 44, 13, 26, 'hio', 1, 1, 1, '2019-12-05 04:46:06', '2019-12-19 01:01:45'),
(65, 32, 44, 13, 26, 'fgfg', 1, 1, 1, '2019-12-05 04:46:12', '2019-12-19 01:01:45'),
(66, 32, 44, 13, 26, 'fdfdf', 1, 1, 1, '2019-12-05 04:46:18', '2019-12-19 01:01:45'),
(67, 32, 44, 13, 26, 'hi', 1, 1, 1, '2019-12-05 04:47:13', '2019-12-19 01:01:45'),
(68, 32, 44, 13, 26, 'sdsd', 1, 1, 1, '2019-12-05 04:47:16', '2019-12-19 01:01:45'),
(69, 32, 44, 13, 26, 'hi', 1, 1, 1, '2019-12-05 04:49:06', '2019-12-19 01:01:46'),
(70, 32, 44, 13, 26, 'sdsdsd', 1, 1, 1, '2019-12-05 04:49:51', '2019-12-19 01:01:46'),
(71, 32, 44, 13, 26, 'hello', 1, 1, 1, '2019-12-05 04:50:02', '2019-12-19 01:01:46'),
(72, 32, 31, 2, 1, 'hello', 3, 1, 1, '2019-12-05 04:53:31', '2019-12-05 04:53:34'),
(73, 32, 31, 2, 1, 'hello', 3, 1, 1, '2019-12-05 04:58:30', '2019-12-05 05:25:28'),
(74, 32, 31, 2, 1, 'hello', 3, 1, 1, '2019-12-05 05:27:00', '2019-12-05 05:34:45'),
(75, 31, 32, 2, 1, 'hi', 3, 1, 1, '2019-12-05 05:49:18', '2019-12-05 05:49:20'),
(76, 31, 51, 4, 1, 'hoooooo', 4, 1, 1, '2019-12-05 05:49:29', '2019-12-05 06:02:36'),
(77, 31, 32, 2, 1, 'hello', 3, 1, 1, '2019-12-05 05:54:51', '2019-12-05 05:54:55'),
(78, 32, 31, 2, 1, 'ok', 3, 1, 1, '2019-12-05 05:55:06', '2019-12-05 05:55:07'),
(79, 51, 31, 4, 1, 'Okay I am in how are you doing?', 4, 1, 1, '2019-12-05 06:02:53', '2019-12-05 06:03:20'),
(80, 31, 51, 4, 1, 'hi', 4, 1, 1, '2019-12-05 06:03:24', '2019-12-05 06:03:28'),
(81, 51, 31, 4, 1, 'Hey Man', 4, 1, 1, '2019-12-05 06:06:10', '2019-12-05 06:07:24'),
(82, 51, 31, 4, 1, 'On the way home?', 4, 1, 1, '2019-12-05 06:07:46', '2019-12-05 06:08:12'),
(83, 31, 51, 4, 1, 'hw', 4, 1, 1, '2019-12-05 06:08:21', '2019-12-05 06:08:21'),
(84, 51, 31, 4, 1, 'Great Test', 4, 1, 1, '2019-12-05 06:09:01', '2019-12-05 06:09:03'),
(85, 51, 31, 4, 1, 'Ok we will get in touch', 4, 1, 1, '2019-12-05 09:54:13', '2019-12-09 01:08:29'),
(86, 32, 34, 25, 25, 'Hello vendor<br>hello<br>By Narinder Singh, Email: admin@printgenie.com, Phone Number : 4158464500<br>', 6, 0, 1, '2019-12-09 00:39:06', '2019-12-10 08:02:12'),
(87, 32, 31, 2, 1, 'gud mrng', 3, 1, 1, '2019-12-09 01:11:09', '2019-12-09 01:31:14'),
(88, 32, 31, 2, 1, 'hello', 3, 1, 1, '2019-12-09 01:21:18', '2019-12-09 01:31:14'),
(89, 32, 31, 2, 1, 'hiiii', 3, 1, 1, '2019-12-09 01:22:07', '2019-12-09 01:31:14'),
(90, 32, 31, 2, 1, 'dddd', 3, 1, 1, '2019-12-09 01:24:12', '2019-12-09 01:31:15'),
(91, 32, 44, 13, 26, 'hello', 1, 1, 1, '2019-12-09 01:27:13', '2019-12-19 01:01:46'),
(92, 32, 31, 2, 1, 'helo', 3, 1, 1, '2019-12-09 01:28:49', '2019-12-09 01:31:15'),
(93, 32, 31, 2, 1, 'hello', 3, 1, 1, '2019-12-09 01:29:11', '2019-12-09 01:31:15'),
(94, 32, 44, 13, 26, 'hello', 1, 1, 1, '2019-12-09 01:30:08', '2019-12-19 01:01:46'),
(95, 32, 31, 2, 1, 'hello', 3, 1, 1, '2019-12-09 01:30:15', '2019-12-09 01:31:15'),
(96, 31, 32, 2, 1, 'hiiiiii', 3, 1, 1, '2019-12-09 01:32:56', '2019-12-09 01:33:00'),
(97, 31, 32, 2, 1, 'hello', 3, 1, 1, '2019-12-09 01:34:00', '2019-12-09 01:34:05'),
(98, 31, 32, 2, 1, 'hiiuiaffgk', 3, 1, 1, '2019-12-09 01:36:06', '2019-12-09 01:36:10'),
(99, 31, 32, 2, 1, 'hola', 3, 1, 1, '2019-12-09 01:36:39', '2019-12-09 01:36:40'),
(100, 31, 32, 2, 1, 'hello', 3, 1, 1, '2019-12-09 01:37:04', '2019-12-09 01:37:10'),
(101, 32, 44, 13, 26, 'helllo', 1, 1, 1, '2019-12-09 01:38:49', '2019-12-19 01:01:46'),
(102, 31, 32, 2, 1, 'hllo', 3, 1, 1, '2019-12-09 01:39:22', '2019-12-09 01:39:25'),
(103, 31, 32, 2, 1, 'hi', 3, 1, 1, '2019-12-09 01:39:41', '2019-12-09 01:42:31'),
(104, 31, 51, 4, 1, 'hello', 4, 1, 1, '2019-12-09 01:43:56', '2020-01-06 07:26:19'),
(105, 31, 32, 2, 1, 'hello', 3, 1, 1, '2019-12-09 01:44:58', '2019-12-09 01:50:00'),
(106, 31, 51, 4, 1, 'hiiiiii', 4, 1, 1, '2019-12-09 01:45:27', '2020-01-06 07:26:19'),
(107, 31, 32, 2, 1, 'fgffg', 3, 1, 1, '2019-12-09 01:45:35', '2019-12-09 01:50:00'),
(108, 31, 51, 4, 1, 'hello', 4, 1, 1, '2019-12-09 01:46:28', '2020-01-06 07:26:19'),
(109, 31, 32, 2, 1, 'hello', 3, 1, 1, '2019-12-09 02:34:49', '2019-12-09 02:36:37'),
(110, 31, 32, 2, 1, 'hiii', 3, 1, 1, '2019-12-09 02:34:55', '2019-12-09 02:36:37'),
(111, 31, 32, 2, 1, 'fghhgfgh', 3, 1, 1, '2019-12-09 02:34:58', '2019-12-09 02:36:37'),
(112, 31, 32, 2, 1, 'ghghgf', 3, 1, 1, '2019-12-09 02:35:00', '2019-12-09 02:36:37'),
(113, 31, 32, 2, 1, 'ghghgh', 3, 1, 1, '2019-12-09 02:35:02', '2019-12-09 02:36:37'),
(114, 32, 31, 2, 1, 'hi', 3, 1, 1, '2019-12-09 02:36:44', '2019-12-09 02:36:47'),
(115, 32, 31, 2, 1, '1212', 3, 1, 1, '2019-12-09 02:36:48', '2019-12-09 02:36:52'),
(116, 32, 31, 2, 1, '3333', 3, 1, 1, '2019-12-09 02:36:51', '2019-12-09 02:36:52'),
(117, 32, 31, 2, 1, '4444', 3, 1, 1, '2019-12-09 02:36:53', '2019-12-09 02:36:57'),
(118, 32, 31, 2, 1, '5555', 3, 1, 1, '2019-12-09 02:36:56', '2019-12-09 02:36:57'),
(119, 32, 31, 2, 1, 'sdsds', 3, 1, 1, '2019-12-09 02:51:19', '2019-12-09 06:21:51'),
(120, 32, 31, 2, 1, 'sdsdsd', 3, 1, 1, '2019-12-09 02:51:21', '2019-12-09 06:21:51'),
(121, 32, 31, 2, 1, 'sdsd', 3, 1, 1, '2019-12-09 02:51:24', '2019-12-09 06:21:51'),
(122, 32, 31, 2, 1, 'sdsdsd', 3, 1, 1, '2019-12-09 02:51:26', '2019-12-09 06:21:51'),
(123, 32, 31, 2, 1, 'sdsdsd', 3, 1, 1, '2019-12-09 02:51:28', '2019-12-09 06:21:51'),
(124, 32, 31, 2, 1, 'sdsds', 3, 1, 1, '2019-12-09 06:22:22', '2019-12-09 06:54:58'),
(125, 32, 31, 2, 1, 'sdsd', 3, 1, 1, '2019-12-09 06:22:24', '2019-12-09 06:54:58'),
(126, 32, 31, 2, 1, 'ssd', 3, 1, 1, '2019-12-09 06:22:26', '2019-12-09 06:54:58'),
(127, 32, 31, 2, 1, 'sdsds', 3, 1, 1, '2019-12-09 06:22:28', '2019-12-09 06:54:58'),
(128, 31, 32, 2, 1, 'hello', 3, 1, 1, '2019-12-09 06:55:05', '2019-12-09 09:14:20'),
(129, 32, 44, 13, 26, 'sasa', 1, 1, 1, '2019-12-09 07:30:09', '2019-12-19 01:01:46'),
(130, 32, 44, 13, 26, 'kks', 1, 1, 1, '2019-12-09 07:30:14', '2019-12-19 01:01:46'),
(131, 31, 51, 4, 1, 'jhwhwd', 4, 1, 1, '2019-12-09 07:31:04', '2020-01-06 07:26:19'),
(132, 60, 59, 27, 35, 'Hello Kanny<br>I am intersted in your deal please let me know when to discuss for this.<br>By Kanny Customer, Email: kannyc@yopmail.com, Phone Number : 9465470549<br>', 7, 0, 1, '2019-12-09 07:47:22', '2019-12-09 10:07:18'),
(133, 32, 59, 27, 35, 'Hello Kanny<br>sdsdsdsd<br>By Narinder Bajwa, Email: bajwa9876470491@gmail.com, Phone Number : 789654156<br>', 8, 0, 1, '2019-12-09 08:03:59', '2019-12-09 09:39:15'),
(134, 32, 31, 2, 1, 'hello', 3, 1, 1, '2019-12-09 09:14:57', '2019-12-09 09:43:06'),
(135, 32, 31, 2, 1, 'hi', 3, 1, 1, '2019-12-09 09:15:00', '2019-12-09 09:43:06'),
(136, 32, 31, 2, 1, 'jl', 3, 1, 1, '2019-12-09 09:15:03', '2019-12-09 09:43:06'),
(137, 31, 32, 2, 1, 'hello', 3, 1, 1, '2019-12-09 09:43:10', '2019-12-09 09:53:57'),
(138, 31, 32, 2, 1, 'jsdjf', 3, 1, 1, '2019-12-09 09:43:12', '2019-12-09 09:53:57'),
(139, 32, 59, 27, 35, 'hi', 8, 1, 1, '2019-12-09 10:03:59', '2019-12-24 05:04:21'),
(140, 32, 59, 27, 35, 'dfdfd', 8, 1, 1, '2019-12-09 10:04:11', '2019-12-24 05:04:21'),
(141, 59, 60, 27, 35, 'Okay', 7, 1, 1, '2019-12-09 10:07:24', '2019-12-10 09:22:20'),
(142, 32, 31, 2, 1, 'hi', 3, 1, 1, '2019-12-09 10:07:31', '2019-12-09 10:14:45'),
(143, 32, 31, 2, 1, 'hello', 3, 1, 1, '2019-12-09 10:07:33', '2019-12-09 10:14:45'),
(144, 31, 32, 2, 1, 'hello', 3, 1, 1, '2019-12-09 10:14:49', '2019-12-09 10:17:50'),
(145, 31, 32, 2, 1, 'hi', 3, 1, 1, '2019-12-09 10:14:51', '2019-12-09 10:17:50'),
(146, 32, 31, 2, 1, 'hi', 3, 1, 1, '2019-12-09 10:17:53', '2019-12-09 10:17:55'),
(147, 32, 31, 2, 1, 'hello', 3, 1, 1, '2019-12-09 10:17:56', '2019-12-09 10:18:00'),
(148, 32, 31, 2, 1, 'hi', 3, 1, 1, '2019-12-10 01:44:46', '2019-12-10 01:44:51'),
(149, 32, 59, 27, 35, 'hi', 8, 1, 1, '2019-12-10 01:44:51', '2019-12-24 05:04:21'),
(150, 32, 31, 2, 1, 'hello', 3, 1, 0, '2019-12-10 01:45:39', '2019-12-10 01:45:39'),
(151, 60, 59, 27, 35, 'Hey', 7, 1, 1, '2019-12-12 10:03:06', '2019-12-13 03:19:42'),
(152, 60, 42, 16, 11, 'Hello Jaskaran<br>Hie how are you<br>By Kanny Customer, Email: kannyc@yopmail.com, Phone Number : 9465470549<br>', 9, 0, 0, '2019-12-13 03:18:56', '2019-12-13 03:18:56'),
(153, 60, 59, 27, 35, 'Hie', 7, 1, 1, '2019-12-13 03:19:26', '2019-12-13 03:19:42'),
(154, 59, 60, 27, 35, 'I am fine', 7, 1, 1, '2019-12-13 03:19:48', '2019-12-13 03:19:52'),
(155, 59, 60, 27, 35, 'Let me know what you need to have?', 7, 1, 1, '2019-12-13 04:02:16', '2019-12-13 04:02:40'),
(156, 60, 59, 27, 35, 'I need to do some discussion on some package', 7, 1, 1, '2019-12-13 04:02:54', '2019-12-13 04:02:59'),
(157, 32, 31, 2, 1, 'hiii kanny', 3, 1, 0, '2019-12-27 07:32:37', '2019-12-27 07:32:37'),
(158, 32, 31, 2, 1, '123', 3, 1, 0, '2019-12-27 07:32:45', '2019-12-27 07:32:45'),
(159, 32, 31, 2, 1, 'hello', 3, 1, 0, '2019-12-27 07:32:54', '2019-12-27 07:32:54'),
(160, 32, 31, 2, 1, 'hi', 3, 1, 0, '2019-12-27 07:33:03', '2019-12-27 07:33:03'),
(161, 32, 31, 2, 1, 'hi', 3, 1, 0, '2019-12-27 07:34:49', '2019-12-27 07:34:49'),
(162, 32, 31, 2, 1, 'hi', 3, 1, 0, '2019-12-27 07:35:24', '2019-12-27 07:35:24');

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
-- Table structure for table `commissions`
--

CREATE TABLE `commissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `slab_from` double DEFAULT NULL,
  `slab_to` double NOT NULL DEFAULT '0',
  `commission_type` int(11) DEFAULT NULL,
  `commission_fee` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `commissions`
--

INSERT INTO `commissions` (`id`, `parent`, `slab_from`, `slab_to`, `commission_type`, `commission_fee`, `type`, `created_at`, `updated_at`) VALUES
(14, 0, 1001, 2000, NULL, 3, 'slab', '2019-12-30 06:00:06', '2019-12-30 06:00:06'),
(15, 0, 2001, 3000, NULL, 4, 'slab', '2019-12-30 06:00:36', '2019-12-30 06:00:36'),
(18, 0, 3001, 9000, NULL, 6, 'slab', '2019-12-30 11:08:33', '2019-12-30 11:08:33'),
(22, 0, 0, 1000, NULL, 2, 'slab', '2019-12-31 00:02:39', '2019-12-31 00:02:39'),
(23, 0, 9001, 99999999, NULL, 2, 'slab', '2019-12-31 00:03:42', '2019-12-31 00:03:42');

-- --------------------------------------------------------

--
-- Table structure for table `discount_deals`
--

CREATE TABLE `discount_deals` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `slug` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` int(11) DEFAULT NULL,
  `vendor_category_id` int(11) NOT NULL DEFAULT '0',
  `title` text COLLATE utf8mb4_unicode_ci,
  `message_text` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `expiry_date` timestamp(6) NULL DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `deal_life` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type_of_deal` tinyint(3) NOT NULL,
  `packages` int(11) NOT NULL DEFAULT '0',
  `deal_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deal_off_type` tinyint(3) DEFAULT NULL,
  `start_date` timestamp(6) NULL DEFAULT NULL,
  `min_price` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `discount_deals`
--

INSERT INTO `discount_deals` (`id`, `category_id`, `slug`, `user_id`, `vendor_category_id`, `title`, `message_text`, `image`, `description`, `expiry_date`, `type`, `deal_life`, `created_at`, `updated_at`, `type_of_deal`, `packages`, `deal_code`, `amount`, `deal_off_type`, `start_date`, `min_price`) VALUES
(16, 1, NULL, 42, 11, 'Year Ending Deal', 'Grab the Year-End Deal', 'images/vendors/deals/1575613611varZkyfL19pFRih1FHGP15747561420CECWnSZ7yaVhvavQEMn14997.png', 'Grab the Year-End Deal', '2019-12-31 00:56:51.000000', NULL, 1, '2019-12-06 00:56:51', '2019-12-06 01:58:18', 0, 0, 'GET50OFF', '10', 0, '2019-12-06 00:55:51.118110', 0),
(27, 1, 'grab-winter-deal', 59, 35, 'Grab Winter Deal', 'Grab Winter Deal direct 50% OFF on my Packages. Hurry Try Coupon Code Now!!', 'images/vendors/deals/1575881871WPtwNXYfCRO38QCZWepjimg_77201.jpg', 'Grab Winter Deal direct 50% OFF on my Packages. Hurry Try Coupon Code Now!!', '2020-01-30 18:30:00.000000', NULL, 1, '2019-12-09 03:27:51', '2020-01-03 09:20:21', 0, 0, 'GETWIN50', '50', 0, '2020-01-09 18:30:00.000000', 0),
(28, 1, '50-percent-off', 31, 1, '50 Percent Off', 'hello', 'images/vendors/deals/1575974893kxtKknJAD099cgwqhMzZapproved.jpg', '50% OFF on my Packages.', '2019-12-30 18:30:00.000000', NULL, 1, '2019-12-10 05:18:13', '2019-12-19 09:24:46', 1, 1, '', '50', 0, '2019-12-18 18:30:00.000000', 0),
(29, 1, 'grab-my-discounted-gold-package', 59, 35, 'Grab My Discounted Gold Package', 'Grab my Gold Package with 20% dicount. Hurry Up!!', 'images/vendors/deals/1576230064EaQFM3sy4E0aJwZMPDOT15747561420CECWnSZ7yaVhvavQEMn14997.png', 'Grab my Gold Package with 20% dicount. Hurry Up!!', '2020-01-30 18:30:00.000000', NULL, 0, '2019-12-13 04:11:04', '2019-12-23 08:48:04', 0, 0, '07114', '20', 0, '2019-12-22 18:30:00.000000', 0),
(30, 20, 'winter-deal', 34, 14, 'winter deal', 'its good deal', 'images/vendors/deals/1576246570lWeXSmQ3j8Vfr0Xeta2Weventpic.jpg', '20% discount for winters', '2020-01-30 18:30:00.000000', NULL, 1, '2019-12-13 08:46:10', '2019-12-13 08:46:10', 0, 0, '124563', '20', 0, '2019-12-12 18:30:00.000000', 0),
(31, 11, 'get-10-off', 59, 39, 'Get 10% OFF', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'images/vendors/deals/1577107293JNfo6HNoISfxFFOCs1q1t10_1435802609300solo019.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '2019-12-22 18:30:00.000000', NULL, 0, '2019-12-23 07:51:33', '2019-12-23 07:51:33', 0, 0, 'KANNGET10', '10', 0, '0000-00-00 00:00:00.000000', 0),
(32, 11, 'direct-50-off', 59, 39, 'Direct 50% OFF', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'images/vendors/deals/1577107556WGnd2uxrpl7mPVWYWSBVt20_1312238515529Pwc10011.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '2019-12-22 18:30:00.000000', NULL, 0, '2019-12-23 07:55:56', '2019-12-23 07:55:56', 1, 42, '', '50', 1, '2019-12-22 18:30:00.000000', 0),
(33, 11, 'venue-deal', 31, 24, 'Venue Deal', 'Golden Chance', 'images/vendors/deals/1577113810L1KhlSL6Zwv5fCNyEftueventpic.jpg', 'Golden Chance', '2019-12-30 18:30:00.000000', NULL, 0, '2019-12-24 09:40:10', '2019-12-26 09:40:10', 0, 0, '160055', '20', 0, '2019-12-22 18:30:00.000000', 0),
(34, 11, 'direct-deal', 31, 24, 'Direct Deal', 'test', 'images/vendors/deals/1577171306fFilROzIBg3SK6y5aRahmenuabout.png', 'test', '0000-00-00 00:00:00.000000', NULL, 0, '2019-12-24 01:38:26', '2019-12-24 01:38:26', 1, 43, '', '20', 0, '0000-00-00 00:00:00.000000', 0),
(35, 20, '20-off', 44, 22, 'Get Deal', 'Taj Lounge event space invokes the combined lounge and restaurant environment and reckoned as one of the best venues in NYC. The event space owns the imported decor like a copper-topped bar, majestic ma', 'images/vendors/deals/157717474217PLxt3ypgO3p5OUXds0taj2020.jpg', 'Taj Lounge event space invokes the combined lounge and restaurant environment and reckoned as one of the best venues in NYC. The event space owns the imported decor like a copper-topped bar, majestic mahogany, woodwork, and excellent carved teak. The Taj restaurant theme instills the great Indian environment especially the nightlife.', '0000-00-00 00:00:00.000000', NULL, 0, '2019-12-24 02:35:42', '2019-12-24 02:37:31', 0, 0, '7890', '10', 0, '0000-00-00 00:00:00.000000', 0),
(36, 20, '50-off', 44, 22, 'Deal', 'Taj Lounge event space invokes the combined lounge and restaurant environment and reckoned as one of the best venues in NYC. The eve', 'images/vendors/deals/1577174817Q1Svoa0njnk2DfTJNvFh2020.jpg', 'Taj Lounge event space invokes the combined lounge and restaurant environment and reckoned as one of the best venues in NYC. The event space owns the imported decor like a copper-topped bar, majestic mahogany, woodwork, and excellent carved teak. The Taj restaurant theme instills the great Indian environment especially the nightlife.', '2019-12-25 18:30:00.000000', NULL, 1, '2019-12-24 02:36:57', '2019-12-24 02:37:47', 1, 15, '', '50', 0, '2019-12-24 18:30:00.000000', 0),
(37, 11, 'roof-party', 44, 26, 'Roof Party', '48 West, 21 Street between 5 & 6 Avenues - New York, NY-10010', 'images/vendors/deals/1577182872QzWA9BCUqXoiG6JgYtL6img2.jpg', '48 West, 21 Street between 5 & 6 Avenues - New York, NY-10010', '2020-01-04 18:30:00.000000', NULL, 1, '2019-12-24 04:51:12', '2020-01-03 11:04:58', 0, 0, '7891', '20', 0, '2020-01-03 18:30:00.000000', 0),
(39, 20, 'club-party', 44, 22, 'Club Party', 'The definition of marriage is the religious or legal process through which people become husband and wife, husband and husband or wife and wife, or the state of being married. An example of marriage is the Sacrament of Holy Matrimony.', 'images/vendors/deals/1577184832bkbodWONCkm7BDcGX36nimg.png', 'The definition of marriage is the religious or legal process through which people become husband and wife, husband and husband or wife and wife, or the state of being married. An example of marriage is the Sacrament of Holy Matrimony.', '2019-12-30 18:30:00.000000', NULL, 1, '2019-12-24 05:23:52', '2019-12-24 07:10:03', 0, 44, '4567', '50', 0, '2019-12-23 18:30:00.000000', 0),
(40, 11, 'party', 44, 26, 'party', 'Face actual professional level pitchers who\'ve pitched at the affiliate to big league level! Ever wondered if you could hit a big league fastball or changeup? Come find out!', 'images/vendors/deals/1577776198kaTfMqPY27MXRp927n3r218763.jpg', 'Face actual professional level pitchers who\'ve pitched at the affiliate to big league level! Ever wondered if you could hit a big league fastball or changeup? Come find out!', '0000-00-00 00:00:00.000000', NULL, 0, '2019-12-31 01:39:58', '2020-01-03 11:05:16', 0, 0, '1231', '10', 1, '0000-00-00 00:00:00.000000', 0),
(41, 1, 'valentine-special-offer', 31, 1, 'Valentine Special Offer', 'It usually begins with: “Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'images/vendors/deals/15784693378M3UeeGLviGHVSpEYE9eanthonydelanoixhzgs56Ze49sunsplash.jpg', 'It usually begins with: “Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.” The purpose of lorem ipsum is to create a natural looking block of text (sentence, paragraph, page, etc.) that doesn\'t distract from the layout.', '0000-00-00 00:00:00.000000', NULL, 0, '2020-01-08 02:12:17', '2020-01-08 05:42:46', 0, 0, '95134', '500', 1, '0000-00-00 00:00:00.000000', 1500);

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `subject`, `title`, `body`, `created_at`, `updated_at`) VALUES
(1, 'Vendor Submit {business-title} Business', 'Vendor Submit Business', '<p>Please reviews the&nbsp;{business-title} Business.</p>', '2019-12-19 18:30:00', '2019-12-02 04:34:20'),
(2, '{business-title} Business Approve.', 'Approve Business', '<p>{business-title} Business Approved.</p>', '2019-12-13 18:30:00', '2019-12-02 04:34:46'),
(3, '{business-title} Business Rejected.', 'Reject Business', '<p>{business-title} Business is rejected from the admin cause of some reason.</p>', NULL, '2019-12-02 04:38:28'),
(4, 'Order Status', 'User Order Sucessful', '<p>Hello {name},</p>\r\n\r\n<p>Your order is placed Successfully.</p>\r\n\r\n<p>{OrderDetail}</p>', '2019-12-31 02:14:44', '2019-12-31 02:18:47'),
(5, 'New Order is placed.', 'Order Status For Admin', '<p>Hello Admin,</p>\r\n\r\n<p>The order is placed successfully&nbsp;</p>\r\n\r\n<p>{OrderDetail}</p>\r\n\r\n<p>&nbsp;</p>', '2019-12-31 06:28:39', '2019-12-31 06:55:57'),
(6, 'You have an order : {orderID}', 'Order Status for Vendor', '<p>Hello {name},</p>\r\n\r\n<p>The order is placed successfully&nbsp;</p>\r\n\r\n<p>{OrderDetail}</p>', '2019-12-31 07:11:00', '2019-12-31 07:12:15'),
(7, 'Your Account has been approved', 'Vendor Approval', '<p>Hello {name}</p>\r\n\r\n<p>Your Account has been approved</p>', '2020-01-02 08:54:48', '2020-01-02 08:56:04'),
(8, 'Your Account has been rejected.', 'Reject Approval', '<p>Hello {name}</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Your Account has been rejected due to some reason which are given below:</p>\r\n\r\n<p>{detail}&nbsp;</p>', '2020-01-02 08:55:01', '2020-01-02 08:57:40'),
(9, 'We have reference to inviting you at our Website', 'Inviting Vendor', '<p>Hello {name}</p>\r\n\r\n<p>We have reference to inviting you at our Website.&nbsp;{business}</p>\r\n\r\n<p>Please join to our website to grow your business {link}</p>', '2020-01-03 00:45:15', '2020-01-03 00:54:59');

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
(4, 'Baby Shower', 'Baby Shower', 'baby-shower', NULL, 0, 'event', '2019-11-13 03:38:50', '2019-12-05 07:38:55'),
(5, 'Retreat/ Team Building', 'Retreat/ Team Building', 'retreat-team-building', NULL, 1, 'game', '2019-11-13 03:38:58', '2019-12-20 06:30:20'),
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
(16, 'Jasss', 'The image must be an image. Error message should be correct .  it should be sound goodThe image must be an image. Error message should be correct .  it should be sound goodThe image must be an image. Error message should be correct .  it should be sound goodThe image must be an image. Error message should be correct .  it should be sound goodThe image must be an image. Error message should be correct .  it should be sound good', 'jaskaran-singh123', NULL, 0, 'event', '2019-11-20 07:53:58', '2019-11-21 00:35:12'),
(17, 'Birthday Party', 'many parts of the world an individual\'s birthday is celebrated by a party where a specially made cake, usually decorated with lettering and the person\'s age, is presented. The cake is traditionally studded with the same number of lit candles as the age of the individual, or a number candle representing their age.', 'birthday-party', NULL, 1, 'event', '2019-12-05 04:55:24', '2019-12-05 04:55:59');

-- --------------------------------------------------------

--
-- Table structure for table `event_orders`
--

CREATE TABLE `event_orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `OrderID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` int(11) NOT NULL DEFAULT '0',
  `vendor_id` int(11) DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL,
  `package_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `deal_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `checkout_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'cart',
  `package_price` double DEFAULT NULL,
  `discounted_price` double DEFAULT NULL,
  `addons` double NOT NULL DEFAULT '0',
  `addon_price` double NOT NULL DEFAULT '0',
  `subtotal` double DEFAULT NULL,
  `coupon_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount` double NOT NULL DEFAULT '0',
  `status` int(11) DEFAULT NULL,
  `order_status` int(11) DEFAULT NULL,
  `payment_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` int(11) DEFAULT NULL,
  `pyayment_data` longtext COLLATE utf8mb4_unicode_ci,
  `related_tableData` longtext COLLATE utf8mb4_unicode_ci,
  `paymentDetails` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `event_orders`
--

INSERT INTO `event_orders` (`id`, `OrderID`, `order_id`, `vendor_id`, `event_id`, `package_id`, `user_id`, `deal_id`, `category_id`, `type`, `checkout_type`, `package_price`, `discounted_price`, `addons`, `addon_price`, `subtotal`, `coupon_code`, `discount`, `status`, `order_status`, `payment_type`, `payment_status`, `pyayment_data`, `related_tableData`, `paymentDetails`, `created_at`, `updated_at`) VALUES
(1, '#ENV1577954346', 9, 26, 26, 50, 32, 40, 11, 'order', 'direct', 10000, 9990, 0, 0, 10000, '1231', 10, 0, NULL, 'STRIPE', 1, '{"id":"ch_1FwPCxENgNZPUt9Ku8ZCfu26","object":"charge","amount":1019925,"amount_refunded":0,"application":null,"application_fee":null,"application_fee_amount":null,"balance_transaction":"txn_1FwPCyENgNZPUt9KSpm48FJd","billing_details":{"address":{"city":null,"country":null,"line1":null,"line2":null,"postal_code":null,"state":null},"email":null,"name":"bajwa9876470491@gmail.com","phone":null},"captured":true,"created":1577954347,"currency":"usd","customer":null,"description":"Customer for pay for #ENV1577954346","destination":null,"dispute":null,"disputed":false,"failure_code":null,"failure_message":null,"fraud_details":[],"invoice":null,"livemode":false,"metadata":[],"on_behalf_of":null,"order":null,"outcome":{"network_status":"approved_by_network","reason":null,"risk_level":"normal","risk_score":42,"seller_message":"Payment complete.","type":"authorized"},"paid":true,"payment_intent":null,"payment_method":"card_1FwPCtENgNZPUt9KYUx16oaB","payment_method_details":{"card":{"brand":"visa","checks":{"address_line1_check":null,"address_postal_code_check":null,"cvc_check":"pass"},"country":"US","exp_month":12,"exp_year":2020,"fingerprint":"5yPNVhsLBrcpIKlS","funding":"unknown","installments":null,"last4":"1111","network":"visa","three_d_secure":null,"wallet":null},"type":"card"},"receipt_email":null,"receipt_number":null,"receipt_url":"https:\\/\\/pay.stripe.com\\/receipts\\/acct_1Fbq7RENgNZPUt9K\\/ch_1FwPCxENgNZPUt9Ku8ZCfu26\\/rcpt_GTLuf6BeRbxhPcoYrvwxIHwywZo4fD5","refunded":false,"refunds":{"object":"list","data":[],"has_more":false,"total_count":0,"url":"\\/v1\\/charges\\/ch_1FwPCxENgNZPUt9Ku8ZCfu26\\/refunds"},"review":null,"shipping":null,"source":{"id":"card_1FwPCtENgNZPUt9KYUx16oaB","object":"card","address_city":null,"address_country":null,"address_line1":null,"address_line1_check":null,"address_line2":null,"address_state":null,"address_zip":null,"address_zip_check":null,"brand":"Visa","country":"US","customer":null,"cvc_check":"pass","dynamic_last4":null,"exp_month":12,"exp_year":2020,"fingerprint":"5yPNVhsLBrcpIKlS","funding":"unknown","last4":"1111","metadata":[],"name":"bajwa9876470491@gmail.com","tokenization_method":null},"source_transfer":null,"statement_descriptor":null,"statement_descriptor_suffix":null,"status":"succeeded","transfer_data":null,"transfer_group":null}', '{"package_data":{"id":50,"title":"The Missisaugga","slug":"the-missisaugga","description":"<p>Face actual professional level pitchers who&#39;ve pitched at the affiliate to big league level! Ever wondered if you could hit a big league fastball or changeup? Come find out!Face actual professional level pitchers who&#39;ve pitched at the affiliate to big league level! Ever wondered if you could hit a big league fastball or changeup? Come find out!<\\/p>","category_id":11,"user_id":44,"price":10000,"no_of_hours":6,"no_of_days":2,"menus":"<p>Face actual professional level pitchers who&#39;ve pitched at the affiliate to big league level! Ever wondered if you could hit a big league fastball or changeup? Come find out!Face actual professional level pitchers who&#39;ve pitched at the affiliate to big league level! Ever wondered if you could hit a big league fastball or changeup? Come find out!<\\/p>","price_type":"per_person","min_person":100,"max_person":1000,"vendor_category_id":26,"status":1,"created_at":"2019-12-31 08:37:00","updated_at":"2019-12-31 08:37:00"},"event_data":{"id":26,"user_id":32,"slug":"sample-1","title":"Sample 1","event_picture":"images\\/events\\/1577787926qSF4AwEngYKtG3gWiBmovendor01.png","event_budget":50000,"long_description":"test","description":"kgkg","start_date":"2020-01-04 00:00:00","end_date":"2020-01-11 00:00:00","location":"Logan Airport Terminal B, East Boston, MA, USA","latitude":"42.3645508","longitude":"-71.01954490000003","event_type":"2","status":0,"min_person":100,"max_person":500,"start_time":"10:22 AM","end_time":"05:02 PM","seasons":"sdsdsd","colour":"#df1a1a","notepad":null,"ideas":null,"created_at":"2019-12-17 13:05:06","updated_at":"2019-12-31 10:52:04","event_categories":[{"id":348,"parent":0,"user_id":32,"type":"events","key":"category_id","key_value":"1","event_id":26,"created_at":"2019-12-31 10:52:05","updated_at":"2019-12-31 10:52:05","event_category":{"id":1,"parent":0,"label":"Photography","subparent":0,"sorting":25,"slug":"photography","status":1,"capacity":0,"created_at":"2019-11-09 08:13:13","updated_at":"2019-12-18 09:52:33","description":null,"image":"images\\/categories\\/15743400105v2qXkoiDtFtn0gWQT1g-photography.png","thumbnail_image":"","meta_title":"photography","color":"#ff80c0","cover_type":1,"meta_tag":"photography","meta_description":"photography","featured":0}},{"id":349,"parent":0,"user_id":32,"type":"events","key":"category_id","key_value":"6","event_id":26,"created_at":"2019-12-31 10:52:05","updated_at":"2019-12-31 10:52:05","event_category":{"id":6,"parent":0,"label":"Balloons","subparent":0,"sorting":7,"slug":"balloons","status":1,"capacity":0,"created_at":"2019-11-13 08:19:07","updated_at":"2019-12-18 09:52:33","description":null,"image":"images\\/categories\\/1574338883As2ZWsXRGbdg8HhrcA2l-balloons.png","thumbnail_image":"","meta_title":"Balloons","color":"#ff8040","cover_type":1,"meta_tag":"Balloons","meta_description":"Balloons","featured":1}},{"id":350,"parent":0,"user_id":32,"type":"events","key":"category_id","key_value":"11","event_id":26,"created_at":"2019-12-31 10:52:05","updated_at":"2019-12-31 10:52:05","event_category":{"id":11,"parent":0,"label":"Venues","subparent":0,"sorting":10,"slug":"venues","status":1,"capacity":1,"created_at":"2019-11-13 08:21:29","updated_at":"2019-12-18 09:52:33","description":null,"image":"images\\/categories\\/1574340571KoXV6BcmL7FtmiqzGJCy-venue.png","thumbnail_image":"","meta_title":"Venues","color":"#00ff00","cover_type":1,"meta_tag":"Venues","meta_description":"Venues","featured":1}},{"id":351,"parent":0,"user_id":32,"type":"events","key":"category_id","key_value":"16","event_id":26,"created_at":"2019-12-31 10:52:05","updated_at":"2019-12-31 10:52:05","event_category":{"id":16,"parent":0,"label":"Photography\\/Videography","subparent":0,"sorting":14,"slug":"photography-videography","status":1,"capacity":0,"created_at":"2019-11-13 08:23:14","updated_at":"2019-11-21 12:50:12","description":null,"image":"images\\/categories\\/1574340612LaVErx8mUMnl3hyDiHp2-videography.png","thumbnail_image":"","meta_title":"Photography\\/Videography","color":"#ff80ff","cover_type":1,"meta_tag":"Photography\\/Videography","meta_description":"Photography\\/Videography","featured":1}},{"id":352,"parent":0,"user_id":32,"type":"events","key":"category_id","key_value":"18","event_id":26,"created_at":"2019-12-31 10:52:05","updated_at":"2019-12-31 10:52:05","event_category":{"id":18,"parent":0,"label":"DJ\\/Entertainment\\/MC","subparent":0,"sorting":16,"slug":"dj-entertainment-mc","status":1,"capacity":0,"created_at":"2019-11-13 08:26:51","updated_at":"2019-11-21 12:24:45","description":null,"image":"images\\/categories\\/1574339085ukuq313vmLuiahg25Yai-DJ.png","thumbnail_image":"","meta_title":"DJ\\/Entertainment\\/MC","color":"#ff80c0","cover_type":2,"meta_tag":"DJ\\/Entertainment\\/MC","meta_description":"DJ\\/Entertainment\\/MC","featured":1}},{"id":353,"parent":0,"user_id":32,"type":"events","key":"category_id","key_value":"20","event_id":26,"created_at":"2019-12-31 10:52:05","updated_at":"2019-12-31 10:52:05","event_category":{"id":20,"parent":0,"label":"Event Planner","subparent":0,"sorting":18,"slug":"event-planner","status":1,"capacity":0,"created_at":"2019-11-13 09:04:21","updated_at":"2019-11-26 06:06:59","description":null,"image":"images\\/categories\\/1574339133CJtGgkOlGdtRvuXmyF1k-entertainers2.png","thumbnail_image":"","meta_title":"Event Planner","color":"#ff8040","cover_type":1,"meta_tag":"Event Planner","meta_description":"Event Planner","featured":1}}]},"deal_data":{"id":40,"category_id":11,"slug":"party","user_id":44,"vendor_category_id":26,"title":"party","message_text":"Face actual professional level pitchers who\'ve pitched at the affiliate to big league level! Ever wondered if you could hit a big league fastball or changeup? Come find out!","image":"images\\/vendors\\/deals\\/1577776198kaTfMqPY27MXRp927n3r218763.jpg","description":"Face actual professional level pitchers who\'ve pitched at the affiliate to big league level! Ever wondered if you could hit a big league fastball or changeup? Come find out!","expiry_date":"0000-00-00 00:00:00","type":null,"deal_life":0,"created_at":"2019-12-31 07:09:58","updated_at":"2019-12-31 08:58:47","type_of_deal":0,"packages":0,"deal_code":"1231","amount":"10","deal_off_type":1,"start_date":"0000-00-00 00:00:00"}}', '{"26":{"vendor_id":26,"total":10199.25,"sum":9990,"amount":9990,"tax":9.25,"commission_fee":199.8,"service_fee":200,"payable_amount":9590,"account_id":"acct_1Fu1UYIc310lkye2","stripeAccountParams":{"amount":9590,"stripe_account":"acct_1Fu1UYIc310lkye2"}}}', '2020-01-02 02:15:37', '2020-01-02 03:09:08'),
(2, '#ENV1578362540', 11, 22, 43, 44, 32, 39, 20, 'order', 'cart', 500, 500, 0, 0, 500, NULL, 0, 0, NULL, 'STRIPE', 1, '{"id":"ch_1FyIdVENgNZPUt9Kfe1CVRa2","object":"charge","amount":1070925,"amount_refunded":0,"application":null,"application_fee":null,"application_fee_amount":null,"balance_transaction":"txn_1FyIdVENgNZPUt9KSZxYdVcB","billing_details":{"address":{"city":null,"country":null,"line1":null,"line2":null,"postal_code":null,"state":null},"email":null,"name":"bajwa9876470491@gmail.com","phone":null},"captured":true,"created":1578405741,"currency":"usd","customer":null,"description":"Customer for pay for #ENV1578362540","destination":null,"dispute":null,"disputed":false,"failure_code":null,"failure_message":null,"fraud_details":[],"invoice":null,"livemode":false,"metadata":[],"on_behalf_of":null,"order":null,"outcome":{"network_status":"approved_by_network","reason":null,"risk_level":"normal","risk_score":53,"seller_message":"Payment complete.","type":"authorized"},"paid":true,"payment_intent":null,"payment_method":"card_1FyIdRENgNZPUt9KltfbsoFP","payment_method_details":{"card":{"brand":"visa","checks":{"address_line1_check":null,"address_postal_code_check":null,"cvc_check":"pass"},"country":"US","exp_month":12,"exp_year":2020,"fingerprint":"5yPNVhsLBrcpIKlS","funding":"unknown","installments":null,"last4":"1111","network":"visa","three_d_secure":null,"wallet":null},"type":"card"},"receipt_email":null,"receipt_number":null,"receipt_url":"https:\\/\\/pay.stripe.com\\/receipts\\/acct_1Fbq7RENgNZPUt9K\\/ch_1FyIdVENgNZPUt9Kfe1CVRa2\\/rcpt_GVJGwp1WBx0JXoW83r7DTEuXgwpc9ta","refunded":false,"refunds":{"object":"list","data":[],"has_more":false,"total_count":0,"url":"\\/v1\\/charges\\/ch_1FyIdVENgNZPUt9Kfe1CVRa2\\/refunds"},"review":null,"shipping":null,"source":{"id":"card_1FyIdRENgNZPUt9KltfbsoFP","object":"card","address_city":null,"address_country":null,"address_line1":null,"address_line1_check":null,"address_line2":null,"address_state":null,"address_zip":null,"address_zip_check":null,"brand":"Visa","country":"US","customer":null,"cvc_check":"pass","dynamic_last4":null,"exp_month":12,"exp_year":2020,"fingerprint":"5yPNVhsLBrcpIKlS","funding":"unknown","last4":"1111","metadata":[],"name":"bajwa9876470491@gmail.com","tokenization_method":null},"source_transfer":null,"statement_descriptor":null,"statement_descriptor_suffix":null,"status":"succeeded","transfer_data":null,"transfer_group":null}', '{"package_data":{"id":44,"title":"wedding","slug":"wedding","description":"<p><strong>Flourish Atlanta&nbsp;<\\/strong>Flourish is the event space to excite your attendees with astonishing stealth and business savvy, and confident appeal. This is the best venue place located amid the city and suitable for small to giant size, and award-winning events. The unique design and decor of Flourish social landscape ensure to add more glamour to your event. Excellent service and culinary expertise are the assets of this outstanding event space.&nbsp;<\\/p>","category_id":20,"user_id":44,"price":500,"no_of_hours":14,"no_of_days":1,"menus":"<p>Flourish is the event space to excite your attendees with astonishing stealth and business savvy, and confident appeal. This is the best venue place located amid the city and suitable for small to giant size, and award-winning events. The unique design and decor of Flourish social landscape ensure to add more glamour to your event. Excellent service and culinary expertise are the assets of this outstanding event space.&nbsp;<\\/p>","price_type":"per_person","min_person":100,"max_person":200,"vendor_category_id":22,"status":1,"created_at":"2019-12-24 08:11:44","updated_at":"2019-12-24 08:11:44"},"event_data":{"id":43,"user_id":32,"slug":"event-demo-two","title":"Event Demo Two","event_picture":"images\\/events\\/1577952985Fn6pTG8uHwZZxnVecAQxweatherbg.jpg","event_budget":50000,"long_description":"Event Demo Two","description":"Event Demo Two","start_date":"2020-01-10 00:00:00","end_date":"2020-01-17 00:00:00","location":"New York State Thruway, Central Valley, NY, USA","latitude":"42.9586191","longitude":"-76.90872790000003","event_type":"2","status":0,"min_person":120,"max_person":200,"start_time":"12 AM","end_time":"12 PM","seasons":"sdsdsd","colour":"#372222","notepad":null,"ideas":null,"created_at":"2020-01-02 08:16:25","updated_at":"2020-01-02 08:16:25","event_categories":[{"id":354,"parent":0,"user_id":32,"type":"events","key":"category_id","key_value":"1","event_id":43,"created_at":"2020-01-02 08:16:25","updated_at":"2020-01-02 08:16:25","event_category":{"id":1,"parent":0,"label":"Photography","subparent":0,"sorting":25,"slug":"photography","status":1,"capacity":0,"created_at":"2019-11-09 08:13:13","updated_at":"2019-12-18 09:52:33","description":null,"image":"images\\/categories\\/15743400105v2qXkoiDtFtn0gWQT1g-photography.png","thumbnail_image":"","meta_title":"photography","color":"#ff80c0","cover_type":1,"meta_tag":"photography","meta_description":"photography","featured":0}},{"id":355,"parent":0,"user_id":32,"type":"events","key":"category_id","key_value":"6","event_id":43,"created_at":"2020-01-02 08:16:25","updated_at":"2020-01-02 08:16:25","event_category":{"id":6,"parent":0,"label":"Balloons","subparent":0,"sorting":7,"slug":"balloons","status":1,"capacity":0,"created_at":"2019-11-13 08:19:07","updated_at":"2019-12-18 09:52:33","description":null,"image":"images\\/categories\\/1574338883As2ZWsXRGbdg8HhrcA2l-balloons.png","thumbnail_image":"","meta_title":"Balloons","color":"#ff8040","cover_type":1,"meta_tag":"Balloons","meta_description":"Balloons","featured":1}},{"id":356,"parent":0,"user_id":32,"type":"events","key":"category_id","key_value":"11","event_id":43,"created_at":"2020-01-02 08:16:25","updated_at":"2020-01-02 08:16:25","event_category":{"id":11,"parent":0,"label":"Venues","subparent":0,"sorting":10,"slug":"venues","status":1,"capacity":1,"created_at":"2019-11-13 08:21:29","updated_at":"2019-12-18 09:52:33","description":null,"image":"images\\/categories\\/1574340571KoXV6BcmL7FtmiqzGJCy-venue.png","thumbnail_image":"","meta_title":"Venues","color":"#00ff00","cover_type":1,"meta_tag":"Venues","meta_description":"Venues","featured":1}},{"id":357,"parent":0,"user_id":32,"type":"events","key":"category_id","key_value":"16","event_id":43,"created_at":"2020-01-02 08:16:25","updated_at":"2020-01-02 08:16:25","event_category":{"id":16,"parent":0,"label":"Photography\\/Videography","subparent":0,"sorting":14,"slug":"photography-videography","status":1,"capacity":0,"created_at":"2019-11-13 08:23:14","updated_at":"2019-11-21 12:50:12","description":null,"image":"images\\/categories\\/1574340612LaVErx8mUMnl3hyDiHp2-videography.png","thumbnail_image":"","meta_title":"Photography\\/Videography","color":"#ff80ff","cover_type":1,"meta_tag":"Photography\\/Videography","meta_description":"Photography\\/Videography","featured":1}},{"id":358,"parent":0,"user_id":32,"type":"events","key":"category_id","key_value":"18","event_id":43,"created_at":"2020-01-02 08:16:25","updated_at":"2020-01-02 08:16:25","event_category":{"id":18,"parent":0,"label":"DJ\\/Entertainment\\/MC","subparent":0,"sorting":16,"slug":"dj-entertainment-mc","status":1,"capacity":0,"created_at":"2019-11-13 08:26:51","updated_at":"2019-11-21 12:24:45","description":null,"image":"images\\/categories\\/1574339085ukuq313vmLuiahg25Yai-DJ.png","thumbnail_image":"","meta_title":"DJ\\/Entertainment\\/MC","color":"#ff80c0","cover_type":2,"meta_tag":"DJ\\/Entertainment\\/MC","meta_description":"DJ\\/Entertainment\\/MC","featured":1}},{"id":359,"parent":0,"user_id":32,"type":"events","key":"category_id","key_value":"20","event_id":43,"created_at":"2020-01-02 08:16:25","updated_at":"2020-01-02 08:16:25","event_category":{"id":20,"parent":0,"label":"Event Planner","subparent":0,"sorting":18,"slug":"event-planner","status":1,"capacity":0,"created_at":"2019-11-13 09:04:21","updated_at":"2019-11-26 06:06:59","description":null,"image":"images\\/categories\\/1574339133CJtGgkOlGdtRvuXmyF1k-entertainers2.png","thumbnail_image":"","meta_title":"Event Planner","color":"#ff8040","cover_type":1,"meta_tag":"Event Planner","meta_description":"Event Planner","featured":1}}]},"deal_data":{"id":39,"category_id":20,"slug":"club-party","user_id":44,"vendor_category_id":22,"title":"Club Party","message_text":"The definition of marriage is the religious or legal process through which people become husband and wife, husband and husband or wife and wife, or the state of being married. An example of marriage is the Sacrament of Holy Matrimony.","image":"images\\/vendors\\/deals\\/1577184832bkbodWONCkm7BDcGX36nimg.png","description":"The definition of marriage is the religious or legal process through which people become husband and wife, husband and husband or wife and wife, or the state of being married. An example of marriage is the Sacrament of Holy Matrimony.","expiry_date":"2019-12-31 00:00:00","type":null,"deal_life":1,"created_at":"2019-12-24 10:53:52","updated_at":"2019-12-24 12:40:03","type_of_deal":0,"packages":44,"deal_code":"4567","amount":"50","deal_off_type":0,"start_date":"2019-12-24 00:00:00"}}', '{"22":{"vendor_id":22,"total":10709.25,"sum":10490,"amount":500,"tax":9.25,"commission_fee":10,"service_fee":10,"payable_amount":480,"account_id":"acct_1Fu0uKGFWCumBAok","stripeAccountParams":{"amount":480,"stripe_account":"acct_1Fu0uKGFWCumBAok"}},"26":{"vendor_id":26,"total":10709.25,"sum":10490,"amount":9990,"tax":9.25,"commission_fee":199.8,"service_fee":200,"payable_amount":9590,"account_id":"acct_1Fu1UYIc310lkye2","stripeAccountParams":{"amount":9590,"stripe_account":"acct_1Fu1UYIc310lkye2"}}}', '2020-01-02 02:46:47', '2020-01-07 08:32:22'),
(3, '#ENV1578308273', 10, 35, 44, 36, 50, 29, 1, 'order', 'cart', 1030, 824, 379, 30, 1000, '07114', 206, 0, NULL, 'STRIPE', 1, '{"id":"ch_1FxtHSENgNZPUt9KyfXm7Qe7","object":"charge","amount":84600,"amount_refunded":0,"application":null,"application_fee":null,"application_fee_amount":null,"balance_transaction":"txn_1FxtHSENgNZPUt9KR2tulxWy","billing_details":{"address":{"city":null,"country":null,"line1":null,"line2":null,"postal_code":null,"state":null},"email":null,"name":"user001@yopmail.com","phone":null},"captured":true,"created":1578308274,"currency":"usd","customer":null,"description":"Customer for pay for #ENV1578308273","destination":null,"dispute":null,"disputed":false,"failure_code":null,"failure_message":null,"fraud_details":[],"invoice":null,"livemode":false,"metadata":[],"on_behalf_of":null,"order":null,"outcome":{"network_status":"approved_by_network","reason":null,"risk_level":"normal","risk_score":58,"seller_message":"Payment complete.","type":"authorized"},"paid":true,"payment_intent":null,"payment_method":"card_1FxtHOENgNZPUt9K02zIOMaL","payment_method_details":{"card":{"brand":"visa","checks":{"address_line1_check":null,"address_postal_code_check":null,"cvc_check":"pass"},"country":"US","exp_month":12,"exp_year":2025,"fingerprint":"msKWEk5zSbOlPaGy","funding":"credit","installments":null,"last4":"4242","network":"visa","three_d_secure":null,"wallet":null},"type":"card"},"receipt_email":null,"receipt_number":null,"receipt_url":"https:\\/\\/pay.stripe.com\\/receipts\\/acct_1Fbq7RENgNZPUt9K\\/ch_1FxtHSENgNZPUt9KyfXm7Qe7\\/rcpt_GUt39RKHRpKdWwsX6clSkW0ue80Eim3","refunded":false,"refunds":{"object":"list","data":[],"has_more":false,"total_count":0,"url":"\\/v1\\/charges\\/ch_1FxtHSENgNZPUt9KyfXm7Qe7\\/refunds"},"review":null,"shipping":null,"source":{"id":"card_1FxtHOENgNZPUt9K02zIOMaL","object":"card","address_city":null,"address_country":null,"address_line1":null,"address_line1_check":null,"address_line2":null,"address_state":null,"address_zip":null,"address_zip_check":null,"brand":"Visa","country":"US","customer":null,"cvc_check":"pass","dynamic_last4":null,"exp_month":12,"exp_year":2025,"fingerprint":"msKWEk5zSbOlPaGy","funding":"credit","last4":"4242","metadata":[],"name":"user001@yopmail.com","tokenization_method":null},"source_transfer":null,"statement_descriptor":null,"statement_descriptor_suffix":null,"status":"succeeded","transfer_data":null,"transfer_group":null}', '{"package_data":{"id":36,"title":"Grab Gold Package","slug":"grab-gold-package","description":"<p>Grab Gold Package for dummy offers<\\/p>","category_id":1,"user_id":59,"price":1000,"no_of_hours":5,"no_of_days":5,"menus":"<p>No<\\/p>","price_type":"per_person","min_person":100,"max_person":1000,"vendor_category_id":35,"status":1,"created_at":"2019-12-09 10:29:45","updated_at":"2019-12-09 10:29:45"},"event_data":{"id":44,"user_id":50,"slug":"function","title":"function","event_picture":"images\\/events\\/1578034597AM3m5vde4JyQzAV66Ls0videoposter.png","event_budget":2500,"long_description":"fun","description":"fun","start_date":"2020-01-04 00:00:00","end_date":"2020-01-05 00:00:00","location":"Lombard Street, San Francisco, CA, USA","latitude":"37.80105529999999","longitude":"-122.42620490000002","event_type":"2","status":0,"min_person":120,"max_person":250,"start_time":"02:10 AM","end_time":"12:05 AM","seasons":"winter","colour":"#ff8000","notepad":null,"ideas":null,"created_at":"2020-01-02 14:36:02","updated_at":"2020-01-03 06:56:37","event_categories":[{"id":370,"parent":0,"user_id":50,"type":"events","key":"category_id","key_value":"1","event_id":44,"created_at":"2020-01-03 06:56:37","updated_at":"2020-01-03 06:56:37","event_category":{"id":1,"parent":0,"label":"Photography","subparent":0,"sorting":25,"slug":"photography","status":1,"capacity":0,"created_at":"2019-11-09 08:13:13","updated_at":"2019-12-18 09:52:33","description":null,"image":"images\\/categories\\/15743400105v2qXkoiDtFtn0gWQT1g-photography.png","thumbnail_image":"","meta_title":"photography","color":"#ff80c0","cover_type":1,"meta_tag":"photography","meta_description":"photography","featured":0}},{"id":371,"parent":0,"user_id":50,"type":"events","key":"category_id","key_value":"6","event_id":44,"created_at":"2020-01-03 06:56:37","updated_at":"2020-01-03 06:56:37","event_category":{"id":6,"parent":0,"label":"Balloons","subparent":0,"sorting":7,"slug":"balloons","status":1,"capacity":0,"created_at":"2019-11-13 08:19:07","updated_at":"2019-12-18 09:52:33","description":null,"image":"images\\/categories\\/1574338883As2ZWsXRGbdg8HhrcA2l-balloons.png","thumbnail_image":"","meta_title":"Balloons","color":"#ff8040","cover_type":1,"meta_tag":"Balloons","meta_description":"Balloons","featured":1}}]},"deal_data":{"id":29,"category_id":1,"slug":"grab-my-discounted-gold-package","user_id":59,"vendor_category_id":35,"title":"Grab My Discounted Gold Package","message_text":"Grab my Gold Package with 20% dicount. Hurry Up!!","image":"images\\/vendors\\/deals\\/1576230064EaQFM3sy4E0aJwZMPDOT15747561420CECWnSZ7yaVhvavQEMn14997.png","description":"Grab my Gold Package with 20% dicount. Hurry Up!!","expiry_date":"2020-01-31 00:00:00","type":null,"deal_life":0,"created_at":"2019-12-13 09:41:04","updated_at":"2019-12-23 14:18:04","type_of_deal":0,"packages":0,"deal_code":"07114","amount":"20","deal_off_type":0,"start_date":"2019-12-23 00:00:00"}}', '{"35":{"vendor_id":35,"total":846,"sum":824,"amount":824,"tax":6,"commission_fee":16.48,"service_fee":16,"payable_amount":792,"account_id":null,"stripeAccountParams":{"amount":792,"stripe_account":null}}}', '2020-01-03 01:26:50', '2020-01-06 05:27:55'),
(8, NULL, 0, 24, 45, 43, 60, 33, 11, 'cart', 'cart', 1000, 800, 0, 0, 1000, '160055', 200, 0, NULL, NULL, NULL, NULL, '{"package_data":{"id":43,"title":"Golden Chance","slug":"golden-chance","description":"<p>Golden Chance<\\/p>","category_id":11,"user_id":31,"price":1000,"no_of_hours":5,"no_of_days":2,"menus":"<p>Golden Chance<\\/p>","price_type":"per_person","min_person":5,"max_person":200,"vendor_category_id":24,"status":1,"created_at":"2019-12-23 15:08:55","updated_at":"2019-12-23 15:11:21"},"event_data":{"id":45,"user_id":60,"slug":"carnival-event","title":"Carnival Event","event_picture":"images\\/events\\/1578292939UQuLXY5jfde6WMz04gOsbannerimg.png","event_budget":2000,"long_description":"Loriuem Epsum Dummy Loriuem Epsum Dummy Loriuem Epsum Dummy","description":"Loriuem Epsum Dummy","start_date":"2020-01-07 00:00:00","end_date":"2020-01-09 00:00:00","location":"Superstition Springs Mall Circle, Mesa, AZ, USA","latitude":"33.3924571","longitude":"-111.68790360000003","event_type":"17","status":0,"min_person":100,"max_person":200,"start_time":"09:30 AM","end_time":"06:25 PM","seasons":"Summer","colour":"#611111","notepad":null,"ideas":null,"created_at":"2020-01-06 06:42:19","updated_at":"2020-01-06 10:05:18","event_categories":[{"id":382,"parent":0,"user_id":60,"type":"events","key":"category_id","key_value":"11","event_id":45,"created_at":"2020-01-06 10:05:18","updated_at":"2020-01-06 10:05:18","event_category":{"id":11,"parent":0,"label":"Venues","subparent":0,"sorting":10,"slug":"venues","status":1,"capacity":1,"created_at":"2019-11-13 08:21:29","updated_at":"2019-12-18 09:52:33","description":null,"image":"images\\/categories\\/1574340571KoXV6BcmL7FtmiqzGJCy-venue.png","thumbnail_image":"","meta_title":"Venues","color":"#00ff00","cover_type":1,"meta_tag":"Venues","meta_description":"Venues","featured":1}},{"id":383,"parent":0,"user_id":60,"type":"events","key":"category_id","key_value":"20","event_id":45,"created_at":"2020-01-06 10:05:18","updated_at":"2020-01-06 10:05:18","event_category":{"id":20,"parent":0,"label":"Event Planner","subparent":0,"sorting":18,"slug":"event-planner","status":1,"capacity":0,"created_at":"2019-11-13 09:04:21","updated_at":"2019-11-26 06:06:59","description":null,"image":"images\\/categories\\/1574339133CJtGgkOlGdtRvuXmyF1k-entertainers2.png","thumbnail_image":"","meta_title":"Event Planner","color":"#ff8040","cover_type":1,"meta_tag":"Event Planner","meta_description":"Event Planner","featured":1}}]},"deal_data":{"id":33,"category_id":11,"slug":"venue-deal","user_id":31,"vendor_category_id":24,"title":"Venue Deal","message_text":"Golden Chance","image":"images\\/vendors\\/deals\\/1577113810L1KhlSL6Zwv5fCNyEftueventpic.jpg","description":"Golden Chance","expiry_date":"2019-12-31 00:00:00","type":null,"deal_life":0,"created_at":"2019-12-24 15:10:10","updated_at":"2019-12-26 15:10:10","type_of_deal":0,"packages":0,"deal_code":"160055","amount":"20","deal_off_type":0,"start_date":"2019-12-23 00:00:00"}}', NULL, '2020-01-06 06:02:19', '2020-01-06 06:02:29'),
(9, '#ENV1578362540', 11, 26, 43, 50, 32, 40, 11, 'order2', 'cart', 10000, 9990, 0, 0, 10000, '1231', 10, 0, NULL, 'STRIPE', 1, '{"id":"ch_1FyIdVENgNZPUt9Kfe1CVRa2","object":"charge","amount":1070925,"amount_refunded":0,"application":null,"application_fee":null,"application_fee_amount":null,"balance_transaction":"txn_1FyIdVENgNZPUt9KSZxYdVcB","billing_details":{"address":{"city":null,"country":null,"line1":null,"line2":null,"postal_code":null,"state":null},"email":null,"name":"bajwa9876470491@gmail.com","phone":null},"captured":true,"created":1578405741,"currency":"usd","customer":null,"description":"Customer for pay for #ENV1578362540","destination":null,"dispute":null,"disputed":false,"failure_code":null,"failure_message":null,"fraud_details":[],"invoice":null,"livemode":false,"metadata":[],"on_behalf_of":null,"order":null,"outcome":{"network_status":"approved_by_network","reason":null,"risk_level":"normal","risk_score":53,"seller_message":"Payment complete.","type":"authorized"},"paid":true,"payment_intent":null,"payment_method":"card_1FyIdRENgNZPUt9KltfbsoFP","payment_method_details":{"card":{"brand":"visa","checks":{"address_line1_check":null,"address_postal_code_check":null,"cvc_check":"pass"},"country":"US","exp_month":12,"exp_year":2020,"fingerprint":"5yPNVhsLBrcpIKlS","funding":"unknown","installments":null,"last4":"1111","network":"visa","three_d_secure":null,"wallet":null},"type":"card"},"receipt_email":null,"receipt_number":null,"receipt_url":"https:\\/\\/pay.stripe.com\\/receipts\\/acct_1Fbq7RENgNZPUt9K\\/ch_1FyIdVENgNZPUt9Kfe1CVRa2\\/rcpt_GVJGwp1WBx0JXoW83r7DTEuXgwpc9ta","refunded":false,"refunds":{"object":"list","data":[],"has_more":false,"total_count":0,"url":"\\/v1\\/charges\\/ch_1FyIdVENgNZPUt9Kfe1CVRa2\\/refunds"},"review":null,"shipping":null,"source":{"id":"card_1FyIdRENgNZPUt9KltfbsoFP","object":"card","address_city":null,"address_country":null,"address_line1":null,"address_line1_check":null,"address_line2":null,"address_state":null,"address_zip":null,"address_zip_check":null,"brand":"Visa","country":"US","customer":null,"cvc_check":"pass","dynamic_last4":null,"exp_month":12,"exp_year":2020,"fingerprint":"5yPNVhsLBrcpIKlS","funding":"unknown","last4":"1111","metadata":[],"name":"bajwa9876470491@gmail.com","tokenization_method":null},"source_transfer":null,"statement_descriptor":null,"statement_descriptor_suffix":null,"status":"succeeded","transfer_data":null,"transfer_group":null}', '{"package_data":{"id":50,"title":"The Missisaugga","slug":"the-missisaugga","description":"<p>Face actual professional level pitchers who&#39;ve pitched at the affiliate to big league level! Ever wondered if you could hit a big league fastball or changeup? Come find out!Face actual professional level pitchers who&#39;ve pitched at the affiliate to big league level! Ever wondered if you could hit a big league fastball or changeup? Come find out!<\\/p>","category_id":11,"user_id":44,"price":10000,"no_of_hours":6,"no_of_days":2,"menus":"<p>Face actual professional level pitchers who&#39;ve pitched at the affiliate to big league level! Ever wondered if you could hit a big league fastball or changeup? Come find out!Face actual professional level pitchers who&#39;ve pitched at the affiliate to big league level! Ever wondered if you could hit a big league fastball or changeup? Come find out!<\\/p>","price_type":"per_person","min_person":100,"max_person":1000,"vendor_category_id":26,"status":1,"created_at":"2019-12-31 08:37:00","updated_at":"2019-12-31 08:37:00"},"event_data":{"id":43,"user_id":32,"slug":"event-demo-two","title":"Event Demo Two","event_picture":"images\\/events\\/1577952985Fn6pTG8uHwZZxnVecAQxweatherbg.jpg","event_budget":50000,"long_description":"Event Demo Two","description":"Event Demo Two","start_date":"2020-01-10 00:00:00","end_date":"2020-01-17 00:00:00","location":"New York State Thruway, Central Valley, NY, USA","latitude":"42.9586191","longitude":"-76.90872790000003","event_type":"2","status":0,"min_person":120,"max_person":200,"start_time":"12 AM","end_time":"12 PM","seasons":"sdsdsd","colour":"#372222","notepad":null,"ideas":null,"created_at":"2020-01-02 08:16:25","updated_at":"2020-01-02 08:16:25","event_categories":[{"id":354,"parent":0,"user_id":32,"type":"events","key":"category_id","key_value":"1","event_id":43,"created_at":"2020-01-02 08:16:25","updated_at":"2020-01-02 08:16:25","event_category":{"id":1,"parent":0,"label":"Photography","subparent":0,"sorting":25,"slug":"photography","status":1,"capacity":0,"created_at":"2019-11-09 08:13:13","updated_at":"2019-12-18 09:52:33","description":null,"image":"images\\/categories\\/15743400105v2qXkoiDtFtn0gWQT1g-photography.png","thumbnail_image":"","meta_title":"photography","color":"#ff80c0","cover_type":1,"meta_tag":"photography","meta_description":"photography","featured":0}},{"id":355,"parent":0,"user_id":32,"type":"events","key":"category_id","key_value":"6","event_id":43,"created_at":"2020-01-02 08:16:25","updated_at":"2020-01-02 08:16:25","event_category":{"id":6,"parent":0,"label":"Balloons","subparent":0,"sorting":7,"slug":"balloons","status":1,"capacity":0,"created_at":"2019-11-13 08:19:07","updated_at":"2019-12-18 09:52:33","description":null,"image":"images\\/categories\\/1574338883As2ZWsXRGbdg8HhrcA2l-balloons.png","thumbnail_image":"","meta_title":"Balloons","color":"#ff8040","cover_type":1,"meta_tag":"Balloons","meta_description":"Balloons","featured":1}},{"id":356,"parent":0,"user_id":32,"type":"events","key":"category_id","key_value":"11","event_id":43,"created_at":"2020-01-02 08:16:25","updated_at":"2020-01-02 08:16:25","event_category":{"id":11,"parent":0,"label":"Venues","subparent":0,"sorting":10,"slug":"venues","status":1,"capacity":1,"created_at":"2019-11-13 08:21:29","updated_at":"2019-12-18 09:52:33","description":null,"image":"images\\/categories\\/1574340571KoXV6BcmL7FtmiqzGJCy-venue.png","thumbnail_image":"","meta_title":"Venues","color":"#00ff00","cover_type":1,"meta_tag":"Venues","meta_description":"Venues","featured":1}},{"id":357,"parent":0,"user_id":32,"type":"events","key":"category_id","key_value":"16","event_id":43,"created_at":"2020-01-02 08:16:25","updated_at":"2020-01-02 08:16:25","event_category":{"id":16,"parent":0,"label":"Photography\\/Videography","subparent":0,"sorting":14,"slug":"photography-videography","status":1,"capacity":0,"created_at":"2019-11-13 08:23:14","updated_at":"2019-11-21 12:50:12","description":null,"image":"images\\/categories\\/1574340612LaVErx8mUMnl3hyDiHp2-videography.png","thumbnail_image":"","meta_title":"Photography\\/Videography","color":"#ff80ff","cover_type":1,"meta_tag":"Photography\\/Videography","meta_description":"Photography\\/Videography","featured":1}},{"id":358,"parent":0,"user_id":32,"type":"events","key":"category_id","key_value":"18","event_id":43,"created_at":"2020-01-02 08:16:25","updated_at":"2020-01-02 08:16:25","event_category":{"id":18,"parent":0,"label":"DJ\\/Entertainment\\/MC","subparent":0,"sorting":16,"slug":"dj-entertainment-mc","status":1,"capacity":0,"created_at":"2019-11-13 08:26:51","updated_at":"2019-11-21 12:24:45","description":null,"image":"images\\/categories\\/1574339085ukuq313vmLuiahg25Yai-DJ.png","thumbnail_image":"","meta_title":"DJ\\/Entertainment\\/MC","color":"#ff80c0","cover_type":2,"meta_tag":"DJ\\/Entertainment\\/MC","meta_description":"DJ\\/Entertainment\\/MC","featured":1}},{"id":359,"parent":0,"user_id":32,"type":"events","key":"category_id","key_value":"20","event_id":43,"created_at":"2020-01-02 08:16:25","updated_at":"2020-01-02 08:16:25","event_category":{"id":20,"parent":0,"label":"Event Planner","subparent":0,"sorting":18,"slug":"event-planner","status":1,"capacity":0,"created_at":"2019-11-13 09:04:21","updated_at":"2019-11-26 06:06:59","description":null,"image":"images\\/categories\\/1574339133CJtGgkOlGdtRvuXmyF1k-entertainers2.png","thumbnail_image":"","meta_title":"Event Planner","color":"#ff8040","cover_type":1,"meta_tag":"Event Planner","meta_description":"Event Planner","featured":1}}]},"deal_data":{"id":40,"category_id":11,"slug":"party","user_id":44,"vendor_category_id":26,"title":"party","message_text":"Face actual professional level pitchers who\'ve pitched at the affiliate to big league level! Ever wondered if you could hit a big league fastball or changeup? Come find out!","image":"images\\/vendors\\/deals\\/1577776198kaTfMqPY27MXRp927n3r218763.jpg","description":"Face actual professional level pitchers who\'ve pitched at the affiliate to big league level! Ever wondered if you could hit a big league fastball or changeup? Come find out!","expiry_date":"0000-00-00 00:00:00","type":null,"deal_life":0,"created_at":"2019-12-31 07:09:58","updated_at":"2020-01-03 16:35:16","type_of_deal":0,"packages":0,"deal_code":"1231","amount":"10","deal_off_type":1,"start_date":"0000-00-00 00:00:00"}}', '{"22":{"vendor_id":22,"total":10709.25,"sum":10490,"amount":500,"tax":9.25,"commission_fee":10,"service_fee":10,"payable_amount":480,"account_id":"acct_1Fu0uKGFWCumBAok","stripeAccountParams":{"amount":480,"stripe_account":"acct_1Fu0uKGFWCumBAok"}},"26":{"vendor_id":26,"total":10709.25,"sum":10490,"amount":9990,"tax":9.25,"commission_fee":199.8,"service_fee":200,"payable_amount":9590,"account_id":"acct_1Fu1UYIc310lkye2","stripeAccountParams":{"amount":9590,"stripe_account":"acct_1Fu1UYIc310lkye2"}}}', '2020-01-07 08:31:14', '2020-01-07 08:32:22'),
(10, NULL, 0, 26, 39, 45, 60, 40, 11, 'cart', 'cart', 10000, 10000, 0, 0, 10000, NULL, 0, 0, NULL, NULL, NULL, NULL, '{"package_data":{"id":45,"title":"AKM Resorts","slug":"akm-resorts","description":"<p>Face actual professional level pitchers who&#39;ve pitched at the affiliate to big league level! Ever wondered if you could hit a big league fastball or changeup? Come find out!Face actual professional level pitchers who&#39;ve pitched at the affiliate to big league level! Ever wondered if you could hit a big league fastball or changeup? Come find out!<\\/p>","category_id":11,"user_id":44,"price":10000,"no_of_hours":6,"no_of_days":3,"menus":"<p>Face actual professional level pitchers who&#39;ve pitched at the affiliate to big league level! Ever wondered if you could hit a big league fastball or changeup? Come find out!Face actual professional level pitchers who&#39;ve pitched at the affiliate to big league level! Ever wondered if you could hit a big league fastball or changeup? Come find out!<\\/p>","price_type":"per_person","min_person":100,"max_person":1000,"vendor_category_id":26,"status":1,"created_at":"2019-12-31 07:12:52","updated_at":"2019-12-31 07:12:52"},"event_data":{"id":39,"user_id":60,"slug":"marriage-event","title":"Marriage Event","event_picture":"images\\/events\\/1577694063DQ4bOZysDFJhrMpr3uaG15747561420CECWnSZ7yaVhvavQEMn14997.png","event_budget":12000,"long_description":"Its the long description working testing","description":"Its the dummy testing description","start_date":"2020-01-08 00:00:00","end_date":"2020-01-31 00:00:00","location":"Michigan Avenue, Chicago, IL, USA","latitude":"41.816046","longitude":"-87.62301689999998","event_type":"11","status":0,"min_person":100,"max_person":150,"start_time":"06:10 AM","end_time":"09:30 PM","seasons":"Summer","colour":"#d53d3d","notepad":null,"ideas":null,"created_at":"2019-12-30 08:21:04","updated_at":"2020-01-06 06:37:21","event_categories":[{"id":376,"parent":0,"user_id":60,"type":"events","key":"category_id","key_value":"1","event_id":39,"created_at":"2020-01-06 06:37:21","updated_at":"2020-01-06 06:37:21","event_category":{"id":1,"parent":0,"label":"Photography","subparent":0,"sorting":25,"slug":"photography","status":1,"capacity":0,"created_at":"2019-11-09 08:13:13","updated_at":"2019-12-18 09:52:33","description":null,"image":"images\\/categories\\/15743400105v2qXkoiDtFtn0gWQT1g-photography.png","thumbnail_image":"","meta_title":"photography","color":"#ff80c0","cover_type":1,"meta_tag":"photography","meta_description":"photography","featured":0}},{"id":377,"parent":0,"user_id":60,"type":"events","key":"category_id","key_value":"11","event_id":39,"created_at":"2020-01-06 06:37:21","updated_at":"2020-01-06 06:37:21","event_category":{"id":11,"parent":0,"label":"Venues","subparent":0,"sorting":10,"slug":"venues","status":1,"capacity":1,"created_at":"2019-11-13 08:21:29","updated_at":"2019-12-18 09:52:33","description":null,"image":"images\\/categories\\/1574340571KoXV6BcmL7FtmiqzGJCy-venue.png","thumbnail_image":"","meta_title":"Venues","color":"#00ff00","cover_type":1,"meta_tag":"Venues","meta_description":"Venues","featured":1}},{"id":378,"parent":0,"user_id":60,"type":"events","key":"category_id","key_value":"18","event_id":39,"created_at":"2020-01-06 06:37:22","updated_at":"2020-01-06 06:37:22","event_category":{"id":18,"parent":0,"label":"DJ\\/Entertainment\\/MC","subparent":0,"sorting":16,"slug":"dj-entertainment-mc","status":1,"capacity":0,"created_at":"2019-11-13 08:26:51","updated_at":"2019-11-21 12:24:45","description":null,"image":"images\\/categories\\/1574339085ukuq313vmLuiahg25Yai-DJ.png","thumbnail_image":"","meta_title":"DJ\\/Entertainment\\/MC","color":"#ff80c0","cover_type":2,"meta_tag":"DJ\\/Entertainment\\/MC","meta_description":"DJ\\/Entertainment\\/MC","featured":1}},{"id":379,"parent":0,"user_id":60,"type":"events","key":"category_id","key_value":"20","event_id":39,"created_at":"2020-01-06 06:37:22","updated_at":"2020-01-06 06:37:22","event_category":{"id":20,"parent":0,"label":"Event Planner","subparent":0,"sorting":18,"slug":"event-planner","status":1,"capacity":0,"created_at":"2019-11-13 09:04:21","updated_at":"2019-11-26 06:06:59","description":null,"image":"images\\/categories\\/1574339133CJtGgkOlGdtRvuXmyF1k-entertainers2.png","thumbnail_image":"","meta_title":"Event Planner","color":"#ff8040","cover_type":1,"meta_tag":"Event Planner","meta_description":"Event Planner","featured":1}}]},"deal_data":{"id":40,"category_id":11,"slug":"party","user_id":44,"vendor_category_id":26,"title":"party","message_text":"Face actual professional level pitchers who\'ve pitched at the affiliate to big league level! Ever wondered if you could hit a big league fastball or changeup? Come find out!","image":"images\\/vendors\\/deals\\/1577776198kaTfMqPY27MXRp927n3r218763.jpg","description":"Face actual professional level pitchers who\'ve pitched at the affiliate to big league level! Ever wondered if you could hit a big league fastball or changeup? Come find out!","expiry_date":"0000-00-00 00:00:00","type":null,"deal_life":0,"created_at":"2019-12-31 07:09:58","updated_at":"2020-01-03 16:35:16","type_of_deal":0,"packages":0,"deal_code":"1231","amount":"10","deal_off_type":1,"start_date":"0000-00-00 00:00:00"}}', NULL, '2020-01-07 08:45:42', '2020-01-07 08:45:42'),
(11, NULL, 0, 24, 45, 43, 60, 33, 11, 'wishlist', 'cart', 1000, 1000, 0, 0, 1000, NULL, 0, 0, NULL, NULL, NULL, NULL, '{"package_data":{"id":43,"title":"Golden Chance","slug":"golden-chance","description":"<p>Golden Chance<\\/p>","category_id":11,"user_id":31,"price":1000,"no_of_hours":5,"no_of_days":2,"menus":"<p>Golden Chance<\\/p>","price_type":"per_person","min_person":5,"max_person":200,"vendor_category_id":24,"status":1,"created_at":"2019-12-23 15:08:55","updated_at":"2019-12-23 15:11:21"},"event_data":{"id":45,"user_id":60,"slug":"carnival-event","title":"Carnival Event","event_picture":"images\\/events\\/1578292939UQuLXY5jfde6WMz04gOsbannerimg.png","event_budget":2000,"long_description":"Loriuem Epsum Dummy Loriuem Epsum Dummy Loriuem Epsum Dummy","description":"Loriuem Epsum Dummy","start_date":"2020-01-07 00:00:00","end_date":"2020-01-09 00:00:00","location":"Superstition Springs Mall Circle, Mesa, AZ, USA","latitude":"33.3924571","longitude":"-111.68790360000003","event_type":"17","status":0,"min_person":100,"max_person":200,"start_time":"09:30 AM","end_time":"06:25 PM","seasons":"Summer","colour":"#611111","notepad":null,"ideas":null,"created_at":"2020-01-06 06:42:19","updated_at":"2020-01-06 10:05:18","event_categories":[{"id":382,"parent":0,"user_id":60,"type":"events","key":"category_id","key_value":"11","event_id":45,"created_at":"2020-01-06 10:05:18","updated_at":"2020-01-06 10:05:18","event_category":{"id":11,"parent":0,"label":"Venues","subparent":0,"sorting":10,"slug":"venues","status":1,"capacity":1,"created_at":"2019-11-13 08:21:29","updated_at":"2019-12-18 09:52:33","description":null,"image":"images\\/categories\\/1574340571KoXV6BcmL7FtmiqzGJCy-venue.png","thumbnail_image":"","meta_title":"Venues","color":"#00ff00","cover_type":1,"meta_tag":"Venues","meta_description":"Venues","featured":1}},{"id":383,"parent":0,"user_id":60,"type":"events","key":"category_id","key_value":"20","event_id":45,"created_at":"2020-01-06 10:05:18","updated_at":"2020-01-06 10:05:18","event_category":{"id":20,"parent":0,"label":"Event Planner","subparent":0,"sorting":18,"slug":"event-planner","status":1,"capacity":0,"created_at":"2019-11-13 09:04:21","updated_at":"2019-11-26 06:06:59","description":null,"image":"images\\/categories\\/1574339133CJtGgkOlGdtRvuXmyF1k-entertainers2.png","thumbnail_image":"","meta_title":"Event Planner","color":"#ff8040","cover_type":1,"meta_tag":"Event Planner","meta_description":"Event Planner","featured":1}}]},"deal_data":{"id":33,"category_id":11,"slug":"venue-deal","user_id":31,"vendor_category_id":24,"title":"Venue Deal","message_text":"Golden Chance","image":"images\\/vendors\\/deals\\/1577113810L1KhlSL6Zwv5fCNyEftueventpic.jpg","description":"Golden Chance","expiry_date":"2019-12-31 00:00:00","type":null,"deal_life":0,"created_at":"2019-12-24 15:10:10","updated_at":"2019-12-26 15:10:10","type_of_deal":0,"packages":0,"deal_code":"160055","amount":"20","deal_off_type":0,"start_date":"2019-12-23 00:00:00"}}', NULL, '2020-01-07 08:46:01', '2020-01-07 08:46:01');
INSERT INTO `event_orders` (`id`, `OrderID`, `order_id`, `vendor_id`, `event_id`, `package_id`, `user_id`, `deal_id`, `category_id`, `type`, `checkout_type`, `package_price`, `discounted_price`, `addons`, `addon_price`, `subtotal`, `coupon_code`, `discount`, `status`, `order_status`, `payment_type`, `payment_status`, `pyayment_data`, `related_tableData`, `paymentDetails`, `created_at`, `updated_at`) VALUES
(13, NULL, 0, 1, 43, 47, 32, 41, 1, 'cart', 'cart', 2000, 2000, 0, 0, 2000, NULL, 0, 0, NULL, NULL, NULL, NULL, '{"package_data":{"id":47,"title":"Sample 1","slug":"sample-1","description":"<p>test<\\/p>","category_id":1,"user_id":31,"price":2000,"no_of_hours":5,"no_of_days":2,"menus":"<p>test<\\/p>","price_type":"per_person","min_person":20,"max_person":1000,"vendor_category_id":1,"status":1,"created_at":"2019-12-31 07:16:13","updated_at":"2019-12-31 07:16:13"},"event_data":{"id":43,"user_id":32,"slug":"event-demo-two","title":"Event Demo Two","event_picture":"images\\/events\\/1577952985Fn6pTG8uHwZZxnVecAQxweatherbg.jpg","event_budget":50000,"long_description":"Event Demo Two","description":"Event Demo Two","start_date":"2020-01-10 00:00:00","end_date":"2020-01-17 00:00:00","location":"New York State Thruway, Central Valley, NY, USA","latitude":"42.9586191","longitude":"-76.90872790000003","event_type":"2","status":0,"min_person":120,"max_person":200,"start_time":"12 AM","end_time":"12 PM","seasons":"sdsdsd","colour":"#372222","notepad":null,"ideas":null,"created_at":"2020-01-02 08:16:25","updated_at":"2020-01-02 08:16:25","event_categories":[{"id":354,"parent":0,"user_id":32,"type":"events","key":"category_id","key_value":"1","event_id":43,"created_at":"2020-01-02 08:16:25","updated_at":"2020-01-02 08:16:25","event_category":{"id":1,"parent":0,"label":"Photography","subparent":0,"sorting":25,"slug":"photography","status":1,"capacity":0,"created_at":"2019-11-09 08:13:13","updated_at":"2019-12-18 09:52:33","description":null,"image":"images\\/categories\\/15743400105v2qXkoiDtFtn0gWQT1g-photography.png","thumbnail_image":"","meta_title":"photography","color":"#ff80c0","cover_type":1,"meta_tag":"photography","meta_description":"photography","featured":0}},{"id":355,"parent":0,"user_id":32,"type":"events","key":"category_id","key_value":"6","event_id":43,"created_at":"2020-01-02 08:16:25","updated_at":"2020-01-02 08:16:25","event_category":{"id":6,"parent":0,"label":"Balloons","subparent":0,"sorting":7,"slug":"balloons","status":1,"capacity":0,"created_at":"2019-11-13 08:19:07","updated_at":"2019-12-18 09:52:33","description":null,"image":"images\\/categories\\/1574338883As2ZWsXRGbdg8HhrcA2l-balloons.png","thumbnail_image":"","meta_title":"Balloons","color":"#ff8040","cover_type":1,"meta_tag":"Balloons","meta_description":"Balloons","featured":1}},{"id":356,"parent":0,"user_id":32,"type":"events","key":"category_id","key_value":"11","event_id":43,"created_at":"2020-01-02 08:16:25","updated_at":"2020-01-02 08:16:25","event_category":{"id":11,"parent":0,"label":"Venues","subparent":0,"sorting":10,"slug":"venues","status":1,"capacity":1,"created_at":"2019-11-13 08:21:29","updated_at":"2019-12-18 09:52:33","description":null,"image":"images\\/categories\\/1574340571KoXV6BcmL7FtmiqzGJCy-venue.png","thumbnail_image":"","meta_title":"Venues","color":"#00ff00","cover_type":1,"meta_tag":"Venues","meta_description":"Venues","featured":1}},{"id":357,"parent":0,"user_id":32,"type":"events","key":"category_id","key_value":"16","event_id":43,"created_at":"2020-01-02 08:16:25","updated_at":"2020-01-02 08:16:25","event_category":{"id":16,"parent":0,"label":"Photography\\/Videography","subparent":0,"sorting":14,"slug":"photography-videography","status":1,"capacity":0,"created_at":"2019-11-13 08:23:14","updated_at":"2019-11-21 12:50:12","description":null,"image":"images\\/categories\\/1574340612LaVErx8mUMnl3hyDiHp2-videography.png","thumbnail_image":"","meta_title":"Photography\\/Videography","color":"#ff80ff","cover_type":1,"meta_tag":"Photography\\/Videography","meta_description":"Photography\\/Videography","featured":1}},{"id":358,"parent":0,"user_id":32,"type":"events","key":"category_id","key_value":"18","event_id":43,"created_at":"2020-01-02 08:16:25","updated_at":"2020-01-02 08:16:25","event_category":{"id":18,"parent":0,"label":"DJ\\/Entertainment\\/MC","subparent":0,"sorting":16,"slug":"dj-entertainment-mc","status":1,"capacity":0,"created_at":"2019-11-13 08:26:51","updated_at":"2019-11-21 12:24:45","description":null,"image":"images\\/categories\\/1574339085ukuq313vmLuiahg25Yai-DJ.png","thumbnail_image":"","meta_title":"DJ\\/Entertainment\\/MC","color":"#ff80c0","cover_type":2,"meta_tag":"DJ\\/Entertainment\\/MC","meta_description":"DJ\\/Entertainment\\/MC","featured":1}},{"id":359,"parent":0,"user_id":32,"type":"events","key":"category_id","key_value":"20","event_id":43,"created_at":"2020-01-02 08:16:25","updated_at":"2020-01-02 08:16:25","event_category":{"id":20,"parent":0,"label":"Event Planner","subparent":0,"sorting":18,"slug":"event-planner","status":1,"capacity":0,"created_at":"2019-11-13 09:04:21","updated_at":"2019-11-26 06:06:59","description":null,"image":"images\\/categories\\/1574339133CJtGgkOlGdtRvuXmyF1k-entertainers2.png","thumbnail_image":"","meta_title":"Event Planner","color":"#ff8040","cover_type":1,"meta_tag":"Event Planner","meta_description":"Event Planner","featured":1}}]},"deal_data":{"id":41,"category_id":1,"slug":"valentine-special-offer","user_id":31,"vendor_category_id":1,"title":"Valentine Special Offer","message_text":"It usually begins with: \\u201cLorem ipsum dolor sit amet, consectetur adipiscing elit.","image":"images\\/vendors\\/deals\\/15784693378M3UeeGLviGHVSpEYE9eanthonydelanoixhzgs56Ze49sunsplash.jpg","description":"It usually begins with: \\u201cLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\\u201d The purpose of lorem ipsum is to create a natural looking block of text (sentence, paragraph, page, etc.) that doesn\'t distract from the layout.","expiry_date":"0000-00-00 00:00:00","type":null,"deal_life":0,"created_at":"2020-01-08 07:42:17","updated_at":"2020-01-08 11:12:46","type_of_deal":0,"packages":0,"deal_code":"95134","amount":"500","deal_off_type":1,"start_date":"0000-00-00 00:00:00","min_price":1500}}', NULL, '2020-01-08 05:43:17', '2020-01-08 05:43:17');

-- --------------------------------------------------------

--
-- Table structure for table `favourite_vendors`
--

CREATE TABLE `favourite_vendors` (
  `id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `f_a_qs`
--

INSERT INTO `f_a_qs` (`id`, `question`, `answer`, `user_id`, `category_id`, `vendor_category_id`, `type`, `status`, `created_at`, `updated_at`) VALUES
(1, 'What all services can you offer?', '<ul>\r\n	<li>Candid Photography</li>\r\n	<li>Traditional Photography</li>\r\n	<li>Pre-wedding shoots</li>\r\n	<li>Cinematography</li>\r\n	<li>Traditional Videography</li>\r\n	<li>Albums</li>\r\n</ul>', 31, 1, 1, NULL, 1, '2019-11-20 02:18:06', '2019-11-20 02:18:45'),
(2, 'What is the price of your most popular wedding package?', '<p>175000</p>', 31, 1, 1, NULL, 1, '2019-11-20 02:19:17', '2019-11-20 02:19:17'),
(3, 'What all does the most popular package include?', '<p>Traditional Photographer, Candid Photographer on Wedding and Engagement,Cinematic Video on Wedding and Engagement, HD Video on Small Function Like Mehendi and Haldi etc with 2 Albums</p>', 31, 1, 1, NULL, 1, '2019-11-20 02:19:48', '2019-11-20 02:19:48'),
(4, 'What is the starting price per day for candid photography?', '<p>30,000</p>', 31, 1, 1, NULL, 1, '2019-11-20 02:20:18', '2019-11-20 02:20:18'),
(5, 'What is the starting price for your wedding photography services?', '<p>$ 2299.00</p>', 42, 1, 11, NULL, 1, '2019-11-20 03:29:58', '2019-11-20 03:29:58'),
(6, 'What primary photographic style do you identify with?', '<ul>\r\n	<li>Contemporary</li>\r\n	<li>Natural</li>\r\n	<li>Photojournalism</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>', 42, 1, 11, NULL, 1, '2019-11-20 03:31:07', '2019-11-20 03:31:07'),
(7, 'Why can\'t I log in to my Print Genie account even though I connected a store?', '<p>Why can&#39;t I log in to my Print Genie account even though I connected a store&nbsp;</p>', 31, 18, 2, NULL, 1, '2019-11-21 07:26:30', '2019-11-21 07:26:30'),
(15, 'How we are playing.', '<p>Do you have experience in&nbsp;<b>event</b>&nbsp;from start to finish according to requirements, brand, target audience and objectives? If yes ,then go through our&nbsp;<b>event planner</b>&nbsp;interview&nbsp;<b>questions</b>&nbsp;page for better understanding of interview process and win in job search.</p>', 44, 20, 22, NULL, 1, '2019-11-26 04:32:49', '2019-11-26 04:32:49'),
(16, 'question', '<p>answer</p>', 34, 25, 15, NULL, 1, '2019-11-27 01:37:13', '2019-11-27 01:37:13'),
(17, 'Why can\'t I log in to my Print Genie account even though I connected a store?', '<p>Why can&#39;t I log in to my Print Genie account even though I connected a store</p>', 31, 11, 24, NULL, 1, '2019-11-27 02:10:43', '2019-11-27 02:10:43'),
(18, 'developer question about develop the application?', '<p>It is a long established fact that a reader will be distracted by the readable</p>', 34, 11, 25, NULL, 1, '2019-11-27 02:19:26', '2019-11-27 02:19:26'),
(22, 'q1', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', 34, 20, 14, NULL, 1, '2019-11-29 05:08:25', '2019-12-10 04:54:44'),
(23, 'It is a long established fact that a reader will be distracted by the readable', '<p>l[kplk[</p>', 34, 20, 14, NULL, 1, '2019-11-29 05:10:25', '2019-11-29 05:10:25'),
(25, 'Helloo', '<p>Ffjhvh jhgjgjhgjh g lhjhjg he gjg hug Jha he h &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>', 44, 11, 26, NULL, 1, '2019-12-02 04:23:50', '2019-12-06 04:24:54'),
(26, 'new question', '<p>my answer</p>', 34, 20, 14, NULL, 1, '2019-12-03 04:41:08', '2019-12-03 04:41:08'),
(27, 'Testing', '<p>FGsh vjvihg NV. &nbsp;Jghkf I&rsquo;ve iub is ukub Uk bulb ukulele is bi buhig igig ig Uk Gil his hkhuiug I big jug I h kgukugig is iu gig is iu go gi gigigiugigiguguiggiy Uighur IGN iigu ig u gig ug if if g I gut if ,IGN I give gjg give it ig. I giygiyg iguana ignite go gg ig I gig I guess hi gu gig is juggjg I big jgjg jiggly IGN IGN ujg g gi&nbsp;</p>', 44, 11, 26, NULL, 1, '2019-12-06 04:26:54', '2019-12-06 04:26:54'),
(29, 'What are the PLANS. What are the PLANS. What are the PLANS. What are the PLANS. What are the PLANS. What are the PLANS.', '<p>Book the best&nbsp;<b>wedding venues</b>&nbsp;for your&nbsp;<b>wedding</b>&nbsp;in chandigarh at guaranteed best prices. Book with weddingz.in - india&#39;s largest&nbsp;<b>wedding</b>&nbsp;company&nbsp;<b>and</b>&nbsp;enjoy hassle free bookings. Quality Services. Great Deals Available. Dedicated&nbsp;<b>Venue</b>&nbsp;Managers. Hassle Free Booking. Styles:&nbsp;<b>Wedding</b>&nbsp;Hotels,&nbsp;<b>Wedding</b>&nbsp;Lawns,&nbsp;<b>Wedding Venues</b>, Banquet Halls, 5 Star&nbsp;<b>Wedding</b>&nbsp;Hotels.Book the best&nbsp;<b>wedding venues</b>&nbsp;for your&nbsp;<b>wedding</b>&nbsp;in chandigarh at guaranteed best prices. Book with weddingz.in - india&#39;s largest&nbsp;<b>wedding</b>&nbsp;company&nbsp;<b>and</b>&nbsp;enjoy hassle free bookings. Quality Services. Great Deals Available. Dedicated&nbsp;<b>Venue</b>&nbsp;Managers. Hassle Free Booking. Styles:&nbsp;<b>Wedding</b>&nbsp;Hotels,&nbsp;<b>Wedding</b>&nbsp;Lawns,&nbsp;<b>Wedding Venues</b>, Banquet Halls, 5 Star&nbsp;<b>Wedding</b>&nbsp;Hotels.&nbsp;Book the best&nbsp;<b>wedding venues</b>&nbsp;for your&nbsp;<b>wedding</b>&nbsp;in chandigarh at guaranteed best prices. Book with weddingz.in - india&#39;s largest&nbsp;<b>wedding</b>&nbsp;company&nbsp;<b>and</b>&nbsp;enjoy hassle free bookings. Quality Services. Great Deals Available. Dedicated&nbsp;<b>Venue</b>&nbsp;Managers. Hassle Free Booking. Styles:&nbsp;<b>Wedding</b>&nbsp;Hotels,&nbsp;<b>Wedding</b>&nbsp;Lawns,&nbsp;<b>Wedding Venues</b>, Banquet Halls, 5 Star&nbsp;<b>Wedding</b>&nbsp;Hotels.</p>', 44, 11, 26, NULL, 1, '2019-12-10 00:53:27', '2019-12-10 00:53:27'),
(30, 'Its my Dummy Question', '<p>Its my dummy Answer</p>', 59, 11, 39, NULL, 1, '2019-12-23 07:46:23', '2019-12-23 07:46:23'),
(33, 'my question', '<p>ansddd</p>', NULL, NULL, 0, 'user', 0, '2020-01-07 03:55:30', '2020-01-07 05:12:48'),
(35, 'uq1', '<p>ua1</p>', NULL, NULL, 0, 'user', 0, '2020-01-07 04:07:43', '2020-01-08 05:43:52'),
(36, 'ven q1', '<p>vendor ans 1</p>', NULL, NULL, 0, 'vendor', 1, '2020-01-07 08:20:54', '2020-01-07 08:20:54');

-- --------------------------------------------------------

--
-- Table structure for table `invite_vendors`
--

CREATE TABLE `invite_vendors` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `business_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail` longtext COLLATE utf8mb4_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invite_vendors`
--

INSERT INTO `invite_vendors` (`id`, `user_id`, `name`, `category_id`, `business_name`, `address`, `phone_number`, `email`, `detail`, `status`, `created_at`, `updated_at`) VALUES
(1, 32, 'Narinder Singh', 6, 'Prateek Dua Photography', '310 CRESCENT VILLAGE CIR 1489, sdsdsd', '4158464500', 'bajwa8360854880@gmail.com', 'test', 1, '2020-01-02 23:33:13', '2020-01-03 01:17:52'),
(2, 50, 'dsfsd', 8, 'dsfdsf', 'dsfsd', '46465+', 'user001@yopmail.com', 'fsdgsfgsf', 1, '2020-01-06 07:23:23', '2020-01-06 08:00:18'),
(3, 51, 'security vendor', 27, 'secure', 'mohali tower', '4454585452', 'vendor001@yopmail.com', 'vendor invitation', 0, '2020-01-06 07:25:43', '2020-01-06 07:25:43'),
(4, 60, 'Sammy', 6, 'Sammy Balloon Factory', 'Miami', '9465470549', 'sammy1@yopmail.com', 'As this is the interesting fact of the Dummy one', 1, '2020-01-06 12:52:20', '2020-01-06 13:00:21');

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
(22, '2019_11_25_062651_create_service_aproval_processes_table', 18),
(23, '2019_12_02_062444_create_email_templates_table', 19),
(24, '2019_12_03_100520_create_chat_messages_table', 20),
(25, '2019_12_03_101839_create_chats_table', 20),
(26, '2019_12_06_104107_create_user_events_table', 21),
(27, '2019_12_10_140816_create_orders_table', 22),
(28, '2019_12_20_080115_create_models_event_orders_table', 23),
(29, '2019_12_20_123358_create_event_orders_table', 24),
(30, '2019_12_30_074638_create_commissions_table', 25),
(31, '2020_01_03_045038_create_invite_vendors_table', 26);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `orderID` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `amount` double NOT NULL DEFAULT '0',
  `payment_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `balance_transaction` longtext COLLATE utf8mb4_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '0',
  `billing_address` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `orderID`, `user_id`, `amount`, `payment_by`, `balance_transaction`, `status`, `billing_address`, `created_at`, `updated_at`) VALUES
(9, '#ENV1577954346', 32, 10199.25, 'STRIPE', '{"26":{"vendor_id":26,"total":10199.25,"sum":9990,"amount":9990,"tax":9.25,"commission_fee":199.8,"service_fee":200,"payable_amount":9590,"account_id":"acct_1Fu1UYIc310lkye2","stripeAccountParams":{"amount":9590,"stripe_account":"acct_1Fu1UYIc310lkye2"}}}', 1, '{"name":"Narinder Singh","email":"admin@printgenie.com","phone_number":"4158464500","address":"New Bern Avenue","country":"United States","state":"NC","city":"Raleigh","zipcode":"95134","latitude":"35.7899227","longitude":"-78.586701","country_short_code":"US","tax":9.25}', '2020-01-02 03:09:08', '2020-01-02 03:09:08'),
(10, '#ENV1578308273', 50, 846, 'STRIPE', '{"35":{"vendor_id":35,"total":846,"sum":824,"amount":824,"tax":6,"commission_fee":16.48,"service_fee":16,"payable_amount":792,"account_id":null,"stripeAccountParams":{"amount":792,"stripe_account":null}}}', 1, '{"name":"sdcsa","email":"user001@yopmail.com","phone_number":"4454585452","address":"Fwd Drive","country":"United States","state":"MD","city":"Hollywood","zipcode":"20636","latitude":"38.3426781","longitude":"-76.57557129999998","country_short_code":"US","tax":6}', '2020-01-06 05:27:55', '2020-01-06 05:27:55'),
(11, '#ENV1578362540', 32, 10709.25, 'STRIPE', '{"22":{"vendor_id":22,"total":10709.25,"sum":10490,"amount":500,"tax":9.25,"commission_fee":10,"service_fee":10,"payable_amount":480,"account_id":"acct_1Fu0uKGFWCumBAok","stripeAccountParams":{"amount":480,"stripe_account":"acct_1Fu0uKGFWCumBAok"}},"26":{"vendor_id":26,"total":10709.25,"sum":10490,"amount":9990,"tax":9.25,"commission_fee":199.8,"service_fee":200,"payable_amount":9590,"account_id":"acct_1Fu1UYIc310lkye2","stripeAccountParams":{"amount":9590,"stripe_account":"acct_1Fu1UYIc310lkye2"}}}', 1, '{"name":"Narinder Singh","email":"admin@printgenie.com","phone_number":"4158464500","address":"New Bern Avenue","country":"United States","state":"NC","city":"Raleigh","zipcode":"95134","latitude":"35.7899227","longitude":"-78.586701","country_short_code":"US","tax":9.25}', '2020-01-07 08:32:22', '2020-01-07 08:32:22');

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
(125, 0, 3, 1, 42, 'amenities', 'amenity', '6', '2019-11-20 03:38:58', '2019-11-20 03:38:58'),
(126, 0, 3, 1, 42, 'amenities', 'amenity', '8', '2019-11-20 03:38:58', '2019-11-20 03:38:58'),
(127, 0, 3, 1, 42, 'events', 'event', '2', '2019-11-20 03:38:58', '2019-11-20 03:38:58'),
(128, 0, 3, 1, 42, 'events', 'event', '3', '2019-11-20 03:38:58', '2019-11-20 03:38:58'),
(129, 0, 3, 1, 42, 'addons', 'Collage Family', '5', '2019-11-20 03:40:34', '2019-11-20 03:40:34'),
(202, 0, 12, 20, 34, 'amenities', 'amenity', '10', '2019-11-26 02:06:40', '2019-11-26 02:06:40'),
(203, 0, 12, 20, 34, 'games', 'game', '4', '2019-11-26 02:06:40', '2019-11-26 02:06:40'),
(204, 0, 12, 20, 34, 'events', 'event', '1', '2019-11-26 02:06:40', '2019-11-26 02:06:40'),
(251, 0, 19, 1, 44, 'amenities', 'amenity', '10', '2019-11-26 07:42:27', '2019-11-26 07:42:27'),
(252, 0, 19, 1, 44, 'amenities', 'amenity', '11', '2019-11-26 07:42:27', '2019-11-26 07:42:27'),
(253, 0, 19, 1, 44, 'games', 'game', '4', '2019-11-26 07:42:28', '2019-11-26 07:42:28'),
(254, 0, 19, 1, 44, 'games', 'game', '7', '2019-11-26 07:42:28', '2019-11-26 07:42:28'),
(255, 0, 19, 1, 44, 'games', 'game', '12', '2019-11-26 07:42:28', '2019-11-26 07:42:28'),
(256, 0, 19, 1, 44, 'events', 'event', '2', '2019-11-26 07:42:28', '2019-11-26 07:42:28'),
(257, 0, 19, 1, 44, 'events', 'event', '3', '2019-11-26 07:42:28', '2019-11-26 07:42:28'),
(265, 0, 20, 25, 34, 'amenities', 'amenity', '11', '2019-11-27 01:38:21', '2019-11-27 01:38:21'),
(266, 0, 20, 25, 34, 'games', 'game', '7', '2019-11-27 01:38:21', '2019-11-27 01:38:21'),
(267, 0, 20, 25, 34, 'events', 'event', '2', '2019-11-27 01:38:21', '2019-11-27 01:38:21'),
(268, 0, 20, 25, 34, 'addons', 'tt', '52', '2019-11-27 01:38:34', '2019-11-27 01:38:34'),
(269, 0, 21, 11, 34, 'amenities', 'amenity', '10', '2019-11-27 02:20:44', '2019-11-27 02:20:44'),
(270, 0, 21, 11, 34, 'games', 'game', '4', '2019-11-27 02:20:44', '2019-11-27 02:20:44'),
(271, 0, 21, 11, 34, 'games', 'game', '7', '2019-11-27 02:20:44', '2019-11-27 02:20:44'),
(272, 0, 21, 11, 34, 'events', 'event', '1', '2019-11-27 02:20:44', '2019-11-27 02:20:44'),
(273, 0, 21, 11, 34, 'events', 'event', '3', '2019-11-27 02:20:44', '2019-11-27 02:20:44'),
(322, 0, 26, 11, 42, 'amenities', 'amenity', '11', '2019-12-05 10:23:28', '2019-12-05 10:23:28'),
(323, 0, 26, 11, 42, 'games', 'game', '12', '2019-12-05 10:23:28', '2019-12-05 10:23:28'),
(324, 0, 26, 11, 42, 'events', 'event', '6', '2019-12-05 10:23:28', '2019-12-05 10:23:28'),
(325, 0, 26, 11, 42, 'events', 'event', '11', '2019-12-05 10:23:28', '2019-12-05 10:23:28'),
(326, 0, 30, 35, 59, 'addons', 'Add On for one Large Portrait', '10', '2019-12-09 03:22:18', '2019-12-09 03:22:18'),
(330, 0, 32, 16, 34, 'amenities', 'amenity', '8', '2019-12-09 04:17:15', '2019-12-09 04:17:15'),
(331, 0, 32, 16, 34, 'amenities', 'amenity', '9', '2019-12-09 04:17:15', '2019-12-09 04:17:15'),
(332, 0, 32, 16, 34, 'games', 'game', '7', '2019-12-09 04:17:15', '2019-12-09 04:17:15'),
(333, 0, 32, 16, 34, 'events', 'event', '2', '2019-12-09 04:17:15', '2019-12-09 04:17:15'),
(334, 0, 33, 16, 34, 'amenities', 'amenity', '6', '2019-12-09 04:18:07', '2019-12-09 04:18:07'),
(335, 0, 33, 16, 34, 'games', 'game', '13', '2019-12-09 04:18:08', '2019-12-09 04:18:08'),
(336, 0, 33, 16, 34, 'events', 'event', '1', '2019-12-09 04:18:08', '2019-12-09 04:18:08'),
(337, 0, 32, 16, 34, 'addons', 'my', '25', '2019-12-09 04:25:33', '2019-12-09 04:25:33'),
(338, 0, 33, 16, 34, 'addons', 'new add', '20', '2019-12-09 04:25:44', '2019-12-09 04:25:44'),
(339, 0, 31, 35, 59, 'addons', 'Add On for two Large Portrait', '50', '2019-12-09 04:26:39', '2019-12-09 04:26:39'),
(345, 0, 36, 1, 59, 'amenities', 'amenity', '11', '2019-12-09 04:59:45', '2019-12-09 04:59:45'),
(346, 0, 36, 1, 59, 'games', 'game', '7', '2019-12-09 04:59:45', '2019-12-09 04:59:45'),
(347, 0, 36, 1, 59, 'events', 'event', '2', '2019-12-09 04:59:45', '2019-12-09 04:59:45'),
(348, 0, 36, 1, 59, 'events', 'event', '3', '2019-12-09 04:59:45', '2019-12-09 04:59:45'),
(349, 0, 37, 1, 59, 'amenities', 'amenity', '10', '2019-12-09 05:01:54', '2019-12-09 05:01:54'),
(350, 0, 37, 1, 59, 'games', 'game', '12', '2019-12-09 05:01:54', '2019-12-09 05:01:54'),
(351, 0, 37, 1, 59, 'events', 'event', '3', '2019-12-09 05:01:54', '2019-12-09 05:01:54'),
(364, 0, 11, 1, 42, 'amenities', 'amenity', '10', '2019-12-10 04:14:15', '2019-12-10 04:14:15'),
(365, 0, 11, 1, 42, 'amenities', 'amenity', '11', '2019-12-10 04:14:15', '2019-12-10 04:14:15'),
(366, 0, 11, 1, 42, 'games', 'game', '4', '2019-12-10 04:14:15', '2019-12-10 04:14:15'),
(367, 0, 11, 1, 42, 'games', 'game', '7', '2019-12-10 04:14:15', '2019-12-10 04:14:15'),
(368, 0, 11, 1, 42, 'events', 'event', '2', '2019-12-10 04:14:15', '2019-12-10 04:14:15'),
(369, 0, 11, 1, 42, 'events', 'event', '3', '2019-12-10 04:14:15', '2019-12-10 04:14:15'),
(373, 0, 39, 20, 34, 'amenities', 'amenity', '11', '2019-12-12 06:05:04', '2019-12-12 06:05:04'),
(374, 0, 39, 20, 34, 'games', 'game', '7', '2019-12-12 06:05:04', '2019-12-12 06:05:04'),
(375, 0, 39, 20, 34, 'events', 'event', '1', '2019-12-12 06:05:04', '2019-12-12 06:05:04'),
(378, 0, 40, 20, 34, 'events', 'event', '1', '2019-12-12 06:22:40', '2019-12-12 06:22:40'),
(379, 0, 36, 1, 59, 'addons', 'Patch with Dress', '10', '2019-12-13 03:43:15', '2019-12-13 03:43:15'),
(380, 0, 36, 1, 59, 'addons', 'Patch with Two Dress', '20', '2019-12-13 03:43:16', '2019-12-13 03:43:16'),
(381, 0, 40, 20, 34, 'addons', 'cookies', '20', '2019-12-13 08:44:59', '2019-12-13 08:44:59'),
(424, 0, 41, 1, 34, 'amenities', 'amenity', '6', '2019-12-17 05:56:51', '2019-12-17 05:56:51'),
(425, 0, 41, 1, 34, 'amenities', 'amenity', '10', '2019-12-17 05:56:51', '2019-12-17 05:56:51'),
(426, 0, 41, 1, 34, 'amenities', 'amenity', '11', '2019-12-17 05:56:51', '2019-12-17 05:56:51'),
(427, 0, 41, 1, 34, 'amenities', 'amenity', '15', '2019-12-17 05:56:51', '2019-12-17 05:56:51'),
(428, 0, 41, 1, 34, 'games', 'game', '4', '2019-12-17 05:56:51', '2019-12-17 05:56:51'),
(429, 0, 41, 1, 34, 'games', 'game', '7', '2019-12-17 05:56:51', '2019-12-17 05:56:51'),
(430, 0, 41, 1, 34, 'events', 'event', '5', '2019-12-17 05:56:51', '2019-12-17 05:56:51'),
(447, 0, 42, 11, 59, 'addons', '5 Extra Person', '10', '2019-12-23 07:50:33', '2019-12-23 07:50:33'),
(460, NULL, 1, 1, 31, 'amenities', 'amenity', '6', '2019-12-23 09:35:54', '2019-12-23 09:35:54'),
(461, NULL, 1, 1, 31, 'amenities', 'amenity', '11', '2019-12-23 09:35:54', '2019-12-23 09:35:54'),
(462, NULL, 1, 1, 31, 'amenities', 'amenity', '15', '2019-12-23 09:35:54', '2019-12-23 09:35:54'),
(463, NULL, 1, 1, 31, 'games', 'game', '4', '2019-12-23 09:35:54', '2019-12-23 09:35:54'),
(464, NULL, 1, 1, 31, 'games', 'game', '12', '2019-12-23 09:35:54', '2019-12-23 09:35:54'),
(465, NULL, 1, 1, 31, 'games', 'game', '16', '2019-12-23 09:35:54', '2019-12-23 09:35:54'),
(466, NULL, 1, 1, 31, 'events', 'event', '3', '2019-12-23 09:35:54', '2019-12-23 09:35:54'),
(467, NULL, 1, 1, 31, 'events', 'event', '5', '2019-12-23 09:35:55', '2019-12-23 09:35:55'),
(468, NULL, 1, 1, 31, 'events', 'event', '6', '2019-12-23 09:35:55', '2019-12-23 09:35:55'),
(484, NULL, 43, 11, 31, 'amenities', 'amenity', '6', '2019-12-23 09:41:21', '2019-12-23 09:41:21'),
(485, NULL, 43, 11, 31, 'amenities', 'amenity', '10', '2019-12-23 09:41:21', '2019-12-23 09:41:21'),
(486, NULL, 43, 11, 31, 'amenities', 'amenity', '11', '2019-12-23 09:41:21', '2019-12-23 09:41:21'),
(487, NULL, 43, 11, 31, 'amenities', 'amenity', '15', '2019-12-23 09:41:22', '2019-12-23 09:41:22'),
(488, NULL, 43, 11, 31, 'games', 'game', '4', '2019-12-23 09:41:22', '2019-12-23 09:41:22'),
(489, NULL, 43, 11, 31, 'games', 'game', '7', '2019-12-23 09:41:22', '2019-12-23 09:41:22'),
(490, NULL, 43, 11, 31, 'games', 'game', '12', '2019-12-23 09:41:22', '2019-12-23 09:41:22'),
(491, NULL, 43, 11, 31, 'games', 'game', '16', '2019-12-23 09:41:22', '2019-12-23 09:41:22'),
(492, NULL, 43, 11, 31, 'events', 'event', '2', '2019-12-23 09:41:22', '2019-12-23 09:41:22'),
(493, NULL, 43, 11, 31, 'events', 'event', '3', '2019-12-23 09:41:22', '2019-12-23 09:41:22'),
(494, NULL, 43, 11, 31, 'events', 'event', '5', '2019-12-23 09:41:22', '2019-12-23 09:41:22'),
(495, NULL, 43, 11, 31, 'events', 'event', '6', '2019-12-23 09:41:22', '2019-12-23 09:41:22'),
(496, NULL, 43, 11, 31, 'events', 'event', '10', '2019-12-23 09:41:22', '2019-12-23 09:41:22'),
(497, NULL, 43, 11, 31, 'events', 'event', '11', '2019-12-23 09:41:22', '2019-12-23 09:41:22'),
(498, NULL, 43, 11, 31, 'events', 'event', '17', '2019-12-23 09:41:22', '2019-12-23 09:41:22'),
(515, NULL, 44, 20, 44, 'events', 'event', '2', '2019-12-24 04:31:13', '2019-12-24 04:31:13'),
(516, NULL, 44, 20, 44, 'events', 'event', '3', '2019-12-24 04:31:13', '2019-12-24 04:31:13'),
(517, NULL, 44, 20, 44, 'events', 'event', '5', '2019-12-24 04:31:13', '2019-12-24 04:31:13'),
(518, NULL, 44, 20, 44, 'events', 'event', '6', '2019-12-24 04:31:13', '2019-12-24 04:31:13'),
(519, NULL, 44, 20, 44, 'events', 'event', '11', '2019-12-24 04:31:13', '2019-12-24 04:31:13'),
(520, NULL, 44, 20, 44, 'events', 'event', '17', '2019-12-24 04:31:13', '2019-12-24 04:31:13'),
(529, NULL, 15, 20, 44, 'amenities', 'amenity', '10', '2019-12-24 04:33:24', '2019-12-24 04:33:24'),
(530, NULL, 15, 20, 44, 'games', 'game', '4', '2019-12-24 04:33:25', '2019-12-24 04:33:25'),
(531, NULL, 15, 20, 44, 'events', 'event', '2', '2019-12-24 04:33:25', '2019-12-24 04:33:25'),
(532, NULL, 15, 20, 44, 'events', 'event', '3', '2019-12-24 04:33:25', '2019-12-24 04:33:25'),
(533, NULL, 15, 20, 44, 'events', 'event', '5', '2019-12-24 04:33:25', '2019-12-24 04:33:25'),
(534, NULL, 15, 20, 44, 'events', 'event', '6', '2019-12-24 04:33:25', '2019-12-24 04:33:25'),
(535, NULL, 15, 20, 44, 'events', 'event', '11', '2019-12-24 04:33:25', '2019-12-24 04:33:25'),
(536, NULL, 15, 20, 44, 'events', 'event', '17', '2019-12-24 04:33:25', '2019-12-24 04:33:25'),
(589, NULL, 40, 20, 34, 'amenities', 'amenity', '11', '2019-12-26 01:47:11', '2019-12-26 01:47:11'),
(590, NULL, 40, 20, 34, 'games', 'game', '7', '2019-12-26 01:47:11', '2019-12-26 01:47:11'),
(647, NULL, 45, 11, 44, 'amenities', 'amenity', '6', '2019-12-31 02:12:30', '2019-12-31 02:12:30'),
(648, NULL, 45, 11, 44, 'amenities', 'amenity', '11', '2019-12-31 02:12:30', '2019-12-31 02:12:30'),
(649, NULL, 45, 11, 44, 'amenities', 'amenity', '15', '2019-12-31 02:12:30', '2019-12-31 02:12:30'),
(650, NULL, 45, 11, 44, 'games', 'game', '4', '2019-12-31 02:12:31', '2019-12-31 02:12:31'),
(651, NULL, 45, 11, 44, 'games', 'game', '7', '2019-12-31 02:12:31', '2019-12-31 02:12:31'),
(652, NULL, 45, 11, 44, 'games', 'game', '12', '2019-12-31 02:12:31', '2019-12-31 02:12:31'),
(653, NULL, 45, 11, 44, 'events', 'event', '2', '2019-12-31 02:12:31', '2019-12-31 02:12:31'),
(654, NULL, 45, 11, 44, 'events', 'event', '3', '2019-12-31 02:12:31', '2019-12-31 02:12:31'),
(655, NULL, 45, 11, 44, 'events', 'event', '5', '2019-12-31 02:12:31', '2019-12-31 02:12:31'),
(656, NULL, 45, 11, 44, 'events', 'event', '6', '2019-12-31 02:12:31', '2019-12-31 02:12:31'),
(657, NULL, 45, 11, 44, 'events', 'event', '10', '2019-12-31 02:12:31', '2019-12-31 02:12:31'),
(658, NULL, 45, 11, 44, 'events', 'event', '11', '2019-12-31 02:12:31', '2019-12-31 02:12:31'),
(659, NULL, 45, 11, 44, 'events', 'event', '17', '2019-12-31 02:12:31', '2019-12-31 02:12:31'),
(712, NULL, 50, 11, 44, 'amenities', 'amenity', '6', '2019-12-31 03:35:16', '2019-12-31 03:35:16'),
(713, NULL, 50, 11, 44, 'amenities', 'amenity', '11', '2019-12-31 03:35:16', '2019-12-31 03:35:16'),
(714, NULL, 50, 11, 44, 'amenities', 'amenity', '15', '2019-12-31 03:35:16', '2019-12-31 03:35:16'),
(715, NULL, 50, 11, 44, 'games', 'game', '4', '2019-12-31 03:35:17', '2019-12-31 03:35:17'),
(716, NULL, 50, 11, 44, 'games', 'game', '7', '2019-12-31 03:35:17', '2019-12-31 03:35:17'),
(717, NULL, 50, 11, 44, 'games', 'game', '12', '2019-12-31 03:35:17', '2019-12-31 03:35:17'),
(718, NULL, 50, 11, 44, 'events', 'event', '2', '2019-12-31 03:35:17', '2019-12-31 03:35:17'),
(719, NULL, 50, 11, 44, 'events', 'event', '3', '2019-12-31 03:35:17', '2019-12-31 03:35:17'),
(720, NULL, 50, 11, 44, 'events', 'event', '6', '2019-12-31 03:35:17', '2019-12-31 03:35:17'),
(721, NULL, 50, 11, 44, 'events', 'event', '11', '2019-12-31 03:35:17', '2019-12-31 03:35:17'),
(722, NULL, 42, 11, 59, 'amenities', 'amenity', '11', '2020-01-06 04:33:30', '2020-01-06 04:33:30'),
(723, NULL, 42, 11, 59, 'amenities', 'amenity', '15', '2020-01-06 04:33:30', '2020-01-06 04:33:30'),
(724, NULL, 42, 11, 59, 'games', 'game', '12', '2020-01-06 04:33:30', '2020-01-06 04:33:30'),
(725, NULL, 42, 11, 59, 'events', 'event', '2', '2020-01-06 04:33:31', '2020-01-06 04:33:31'),
(726, NULL, 42, 11, 59, 'events', 'event', '3', '2020-01-06 04:33:31', '2020-01-06 04:33:31'),
(727, NULL, 42, 11, 59, 'events', 'event', '5', '2020-01-06 04:33:31', '2020-01-06 04:33:31'),
(728, NULL, 42, 11, 59, 'events', 'event', '6', '2020-01-06 04:33:31', '2020-01-06 04:33:31'),
(729, NULL, 42, 11, 59, 'events', 'event', '10', '2020-01-06 04:33:31', '2020-01-06 04:33:31'),
(730, NULL, 42, 11, 59, 'events', 'event', '11', '2020-01-06 04:33:31', '2020-01-06 04:33:31'),
(731, NULL, 42, 11, 59, 'events', 'event', '17', '2020-01-06 04:33:31', '2020-01-06 04:33:31'),
(732, NULL, 47, 1, 31, 'amenities', 'amenity', '6', '2020-01-08 04:01:03', '2020-01-08 04:01:03'),
(733, NULL, 47, 1, 31, 'amenities', 'amenity', '11', '2020-01-08 04:01:03', '2020-01-08 04:01:03'),
(734, NULL, 47, 1, 31, 'amenities', 'amenity', '15', '2020-01-08 04:01:03', '2020-01-08 04:01:03'),
(735, NULL, 47, 1, 31, 'games', 'game', '4', '2020-01-08 04:01:03', '2020-01-08 04:01:03'),
(736, NULL, 47, 1, 31, 'games', 'game', '12', '2020-01-08 04:01:03', '2020-01-08 04:01:03'),
(737, NULL, 47, 1, 31, 'events', 'event', '2', '2020-01-08 04:01:03', '2020-01-08 04:01:03'),
(738, NULL, 47, 1, 31, 'events', 'event', '3', '2020-01-08 04:01:03', '2020-01-08 04:01:03'),
(739, NULL, 47, 1, 31, 'events', 'event', '5', '2020-01-08 04:01:03', '2020-01-08 04:01:03'),
(740, NULL, 47, 1, 31, 'events', 'event', '6', '2020-01-08 04:01:03', '2020-01-08 04:01:03'),
(741, NULL, 47, 1, 31, 'events', 'event', '11', '2020-01-08 04:01:03', '2020-01-08 04:01:03'),
(742, NULL, 47, 1, 31, 'events', 'event', '17', '2020-01-08 04:01:03', '2020-01-08 04:01:03');

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
(76, 0, 'signup_banner', '1578061818signup_banner.png', 'vendor-signup', NULL, '2019-11-21 00:45:24', '2020-01-03 09:00:18'),
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
(123, 0, 'google_api_key', 'AIzaSyDULjv0UAVmj_zgc9GjBhJNh9fNuEj87LQ', 'global-settings', NULL, '2019-11-27 07:17:44', '2019-12-04 06:09:03'),
(124, 0, '', 'global-settings', 'global-settings', NULL, '2019-11-27 07:20:24', '2019-11-27 07:20:24'),
(198, 0, '', 'global-settings', 'global-settings', NULL, '2019-12-04 06:09:03', '2019-12-04 06:09:03'),
(200, 0, '', 'global-settings', 'global-settings', NULL, '2019-12-05 02:01:10', '2019-12-05 02:01:10'),
(201, 0, '', 'global-settings', 'global-settings', NULL, '2019-12-05 02:01:31', '2019-12-05 02:01:31'),
(202, 0, 'weather_api_key', '8b9eccd531cf8de092a195b4d5c2d869', 'global-settings', NULL, '2019-12-06 00:17:58', '2019-12-06 00:51:41'),
(203, 0, '', 'global-settings', 'global-settings', NULL, '2019-12-06 00:25:47', '2019-12-06 00:25:47'),
(204, 0, '', 'global-settings', 'global-settings', NULL, '2019-12-06 00:47:19', '2019-12-06 00:47:19'),
(205, 0, '', 'global-settings', 'global-settings', NULL, '2019-12-06 00:51:29', '2019-12-06 00:51:29'),
(206, 0, '', 'global-settings', 'global-settings', NULL, '2019-12-06 00:51:41', '2019-12-06 00:51:41'),
(207, 0, 'stripe_credentials', '', 'stripe_credentials', NULL, '2019-12-10 04:00:44', '2019-12-10 04:00:44'),
(208, 0, 'stripe_credentials', '{"_token":"LP4MzcKahcPBpHgIF1M13hwpPpQkMNLiqPmLUU7q","type":"stripe-credentials","key":"stripe_credentials","test_sk":"sk_test_p8VlaYX68wQNoikV5b3eXawB00tVn2yhs2","test_pk":"pk_test_7s4zephLlSBQHOqovi6w0XCK00U4UJ6WlO","test_client_id":"ca_GLAxBauXm8E4habSHJXBNiOWAixurQ2U","live_sk":"sk_test_p8VlaYX68wQNoikV5b3eXawB00tVn2yhs2","live_pk":"pk_test_7s4zephLlSBQHOqovi6w0XCK00U4UJ6WlO","live_client_id":"ca_GLAxBauXm8E4habSHJXBNiOWAixurQ2U"}', 'stripe-credentials', NULL, '2019-12-16 05:25:28', '2019-12-16 06:10:14'),
(209, 0, 'paypal_credentials', '{"_token":"LP4MzcKahcPBpHgIF1M13hwpPpQkMNLiqPmLUU7q","type":"paypal-credentials","key":"paypal_credentials","sandbox_username":"sdsd","sandbox_password":"sssd","sandbox_clientId":"sdsdsd","sandbox_secret":"sdssd","live_username":"sdssd","live_password":"sds","live_clientId":"sddssd","live_secret":"sdsdsd"}', 'paypal-credentials', NULL, '2019-12-16 06:57:52', '2019-12-16 06:58:10'),
(210, 0, 'commission_fee_type', '0', 'global-settings', NULL, '2019-12-26 01:51:14', '2019-12-27 04:27:57'),
(211, 0, 'commission_fee_amount', '3', 'global-settings', NULL, '2019-12-26 01:53:48', '2019-12-27 04:27:57'),
(212, 0, 'service_fee_type', '0', 'global-settings', NULL, '2019-12-26 01:57:38', '2019-12-27 04:27:57'),
(213, 0, 'service_fee_amount', '2', 'global-settings', NULL, '2019-12-26 01:57:38', '2019-12-27 04:27:57'),
(214, 0, '', 'global-settings', 'global-settings', NULL, '2019-12-26 01:58:28', '2019-12-26 01:58:28'),
(215, 0, '', 'global-settings', 'global-settings', NULL, '2019-12-26 01:59:07', '2019-12-26 01:59:07'),
(216, 0, '', 'global-settings', 'global-settings', NULL, '2019-12-26 02:02:44', '2019-12-26 02:02:44'),
(217, 0, '', 'global-settings', 'global-settings', NULL, '2019-12-26 02:04:17', '2019-12-26 02:04:17'),
(218, 0, '', 'global-settings', 'global-settings', NULL, '2019-12-26 02:04:45', '2019-12-26 02:04:45'),
(219, 0, '', 'global-settings', 'global-settings', NULL, '2019-12-26 02:04:57', '2019-12-26 02:04:57'),
(220, 0, '', 'global-settings', 'global-settings', NULL, '2019-12-26 02:05:01', '2019-12-26 02:05:01'),
(221, 0, '', 'global-settings', 'global-settings', NULL, '2019-12-26 02:05:30', '2019-12-26 02:05:30'),
(222, 0, '', 'global-settings', 'global-settings', NULL, '2019-12-26 02:05:34', '2019-12-26 02:05:34'),
(223, 0, '', 'global-settings', 'global-settings', NULL, '2019-12-26 02:05:38', '2019-12-26 02:05:38'),
(224, 0, '', 'global-settings', 'global-settings', NULL, '2019-12-26 02:05:45', '2019-12-26 02:05:45'),
(225, 0, '', 'global-settings', 'global-settings', NULL, '2019-12-26 02:05:50', '2019-12-26 02:05:50'),
(226, 0, '', 'global-settings', 'global-settings', NULL, '2019-12-26 02:05:54', '2019-12-26 02:05:54'),
(227, 0, '', 'global-settings', 'global-settings', NULL, '2019-12-26 02:08:42', '2019-12-26 02:08:42'),
(228, 0, '', 'global-settings', 'global-settings', NULL, '2019-12-26 03:06:49', '2019-12-26 03:06:49'),
(229, 0, 'taxjar_api_key', '44c806666dc16411480b001f747a598f', 'global-settings', NULL, '2019-12-26 03:26:59', '2019-12-26 04:16:02'),
(230, 0, '', 'global-settings', 'global-settings', NULL, '2019-12-26 03:27:16', '2019-12-26 03:27:16'),
(231, 0, '', 'global-settings', 'global-settings', NULL, '2019-12-26 03:36:36', '2019-12-26 03:36:36'),
(232, 0, '', 'global-settings', 'global-settings', NULL, '2019-12-26 03:39:26', '2019-12-26 03:39:26'),
(233, 0, '', 'global-settings', 'global-settings', NULL, '2019-12-26 03:39:52', '2019-12-26 03:39:52'),
(234, 0, '', 'global-settings', 'global-settings', NULL, '2019-12-26 03:44:33', '2019-12-26 03:44:33'),
(235, 0, '', 'global-settings', 'global-settings', NULL, '2019-12-26 04:01:10', '2019-12-26 04:01:10'),
(236, 0, '', 'global-settings', 'global-settings', NULL, '2019-12-26 04:01:17', '2019-12-26 04:01:17'),
(237, 0, '', 'global-settings', 'global-settings', NULL, '2019-12-26 04:03:15', '2019-12-26 04:03:15'),
(238, 0, '', 'global-settings', 'global-settings', NULL, '2019-12-26 04:06:21', '2019-12-26 04:06:21'),
(239, 0, '', 'global-settings', 'global-settings', NULL, '2019-12-26 04:06:40', '2019-12-26 04:06:40'),
(240, 0, '', 'global-settings', 'global-settings', NULL, '2019-12-26 04:12:35', '2019-12-26 04:12:35'),
(241, 0, '', 'global-settings', 'global-settings', NULL, '2019-12-26 04:14:30', '2019-12-26 04:14:30'),
(242, 0, '', 'global-settings', 'global-settings', NULL, '2019-12-26 04:15:53', '2019-12-26 04:15:53'),
(243, 0, '', 'global-settings', 'global-settings', NULL, '2019-12-26 04:16:02', '2019-12-26 04:16:02'),
(244, 0, '', 'global-settings', 'global-settings', NULL, '2019-12-27 04:27:57', '2019-12-27 04:27:57'),
(245, 0, '', 'vendor-signup', 'vendor-signup', NULL, '2020-01-03 09:00:18', '2020-01-03 09:00:18');

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
('bajwa9876470492@gmail.com', '$2y$10$w6Nzc11m9jJ5qxqsW7JhTuEFwHq0udXcINIVH3bdaNNbZnp.Tqb1m', '2019-11-12 10:46:03'),
('bajwa7696346232@gmail.com', '$2y$10$c1a6jFDUiLRUmfnq3AcK6.PxCl38vx88QzmJoeo99Na7Mo6KZ/lhW', '2019-11-29 03:35:02'),
('jaskaran@yopmail.com', '$2y$10$NvHF3cxOD/imeoShDQGlrutHQAygg1K2nrjKv8C2XEVc3st53Mzym', '2019-11-29 04:49:24'),
('qa2.deftsoft@gmail.com', '$2y$10$HnC.lXDA0T1gKptjGQ.bI.aE0fSD8K3/AC0PU/.wd1L7rVGOS2Mua', '2019-12-05 03:34:41'),
('sandha78@yopmail.com', '$2y$10$gUxqdflsON9kE/2fjYOVCObN1OF6qObkJ6i0xHD4//9kH6vNntLYG', '2019-12-05 04:42:55'),
('user001@yopmail.com', '$2y$10$lh.vnR/re1s0UOdUk0gr/.J.AO4H4SkFzx3gy1hHlfx5oXLHUO9n.', '2019-12-06 02:12:58');

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
(1, 'Hots', 'Hot Desi', 'hots', NULL, 1, '2019-11-13 15:07:45', '2019-12-20 06:01:49'),
(2, 'Summer Season', 'Summer Desc', 'summer-season', NULL, 1, '2019-11-15 04:17:49', '2019-11-18 03:57:16'),
(3, 'Winter season', 'Winter season desc', 'my-new-season', NULL, 1, '2019-11-15 22:57:50', '2019-11-15 23:00:14'),
(4, 'Rainy Season', 'The wet season is the time of year', 'rainy-season', NULL, 1, '2019-11-19 04:09:51', '2019-12-20 06:12:28'),
(5, 'Rainy', 'The wet season (sometimes called the rainy season) is the time of year when most of a region\'s average annual rainfall occurs. Generally the season lasts at least a month. ... When the wet season occurs during a warm season, or summer, precipitation falls mainly during the late afternoon and early evening.', 'rainy', NULL, 1, '2019-12-05 05:00:37', '2019-12-20 06:04:51');

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
(61, 42, 0, 11, 'comment', 'Dummy Description', '2019-11-26 03:29:29', '2019-11-26 03:29:29'),
(62, 42, 0, 11, 'faq_comment', 'You Faqs are not good please change this ASAP for reapproval', '2019-11-26 03:29:29', '2019-11-26 03:29:29'),
(77, 34, 0, 16, 'comment', 'red', '2019-12-02 03:59:49', '2019-12-02 03:59:49'),
(78, 34, 0, 16, 'photo_comment', 'pp asxc', '2019-12-02 03:59:49', '2019-12-02 03:59:49'),
(79, 34, 0, 16, 'prohibtion_estrictions_comment', 'pro cmd', '2019-12-02 03:59:49', '2019-12-02 03:59:49'),
(83, 34, 0, 14, 'comment', 'cmt', '2019-12-02 04:04:37', '2019-12-02 04:04:37'),
(84, 34, 0, 14, 'basic_info_comment', 'b cmd', '2019-12-02 04:04:37', '2019-12-02 04:04:37'),
(85, 34, 0, 14, 'photo_comment', 'p cmd', '2019-12-02 04:04:37', '2019-12-02 04:04:37'),
(92, 34, 0, 25, 'comment', 'rej cmt', '2019-12-02 04:43:48', '2019-12-02 04:43:48'),
(93, 34, 0, 25, 'venue_comment', 'v cmt', '2019-12-02 04:43:48', '2019-12-02 04:43:48'),
(107, 34, 0, 15, 'comment', 'cts', '2019-12-02 05:16:20', '2019-12-02 05:16:20'),
(108, 34, 0, 15, 'photo_comment', 'p ct', '2019-12-02 05:16:20', '2019-12-02 05:16:20');

-- --------------------------------------------------------

--
-- Table structure for table `styles`
--

CREATE TABLE `styles` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `added_by` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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

INSERT INTO `styles` (`id`, `user_id`, `added_by`, `slug`, `description`, `title`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'style', 'Photobooth', 'Photobooth', '1573834276.png', 1, '2019-11-15 09:37:28', '2019-12-31 01:42:13'),
(2, 1, 'admin', 'demo2-style', 'Albums', 'Albums', '1574317853.jpg', 0, '2019-11-16 00:50:03', '2019-12-31 01:42:09'),
(3, 1, 'admin', 'jimmy-choo', 'History (from Greek ἱστορία, historia, meaning \'inquiry; knowledge acquired by investigation\') is the past as it is described in written documents History (from Greek ἱστορία, historia, meaning \'inquiry; knowledge acquired by investigation\') is the past as it is described in written documents', 'Jimmy Choo', '1574318296.jpg', 1, '2019-11-21 01:08:16', '2019-12-31 01:41:46'),
(4, 1, 'admin', 'tester', 'en.wikipedia.org/wiki/History\r\nSocial history, sometimes called the new social history, is the field that includes history of ordinary people and their strategies and institutions for coping with life. In its "golden age" it was a major growth field in the 1960s and 1970s among scholars, and still is well represented in history departments.', 'Tester', '1575264859.jpg', 1, '2019-12-02 00:04:19', '2019-12-31 01:42:14'),
(6, 59, 'vendor', 'dummy-style', 'Testing is the descriptions', 'Dummy Style', '1577786404.png', 1, '2019-12-31 04:30:04', '2019-12-31 05:15:49');

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
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ein_bs_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `age` timestamp NULL DEFAULT NULL,
  `id_proof` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'user',
  `profile_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `payment_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type` tinyint(2) DEFAULT NULL,
  `paypal_account` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_account` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_count` int(11) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `first_name`, `last_name`, `email`, `phone_number`, `user_location`, `latitude`, `longitude`, `email_verified_at`, `password`, `website_url`, `ein_bs_number`, `age`, `id_proof`, `role`, `profile_image`, `status`, `payment_status`, `payment_type`, `paypal_account`, `stripe_account`, `login_count`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', NULL, NULL, 'admin@gmail.com', '0', NULL, NULL, NULL, NULL, '$2y$10$24fdx3W1i9M2GLFjlOeUXuE2H7reNsX/Nsixl/ou8JxPIB.2EmZh.', NULL, NULL, NULL, NULL, 'admin', 'images/admin/1574677337kn9RnvDobyEJXsHyk5xe-photo-1551592398-c320012bc1c6.jpeg', 1, NULL, NULL, NULL, NULL, 0, 'EYg5Da9SossM17B4VjiuRVs8R2OxnGNUiDtWAXN9Z2GiM6QPrviasXirnWr6', '2019-11-09 00:19:35', '2019-11-25 04:52:17'),
(31, 'Narinder Bajwa', 'Narinder', 'Bajwa', 'bajwa7696346232@gmail.com', '0', NULL, NULL, NULL, '2019-11-12 07:02:09', '$2y$10$he8YxmZeBwdKAMqcbtQ0/.aJqTWo1Nxpm/WCKXK2XaEZAAJUE7Hc.', NULL, NULL, NULL, NULL, 'vendor', 'images/vendors/profile/15754682903k0mKXR3oz1UOM4OSDE2istockphoto953790424612x612.jpg', 1, '0', 1, 'paypalg@gmail.com', 'acct_1Fo5XDLPmLY4XjL0', 6, 'rVDt9lxdS6z2WP2MUr90spMFeLdBIu9RhfRp30xI06u3X9NV2dp64Q96XO0T', '2019-11-12 06:11:13', '2020-01-08 04:00:26'),
(32, 'Narinder Bajwa', 'Narinder', 'Bajwa', 'bajwa9876470491@gmail.com', '789654156', 'New York Avenue Northwest, Washington, DC, USA', '38.9032325', '-77.02110679999998', '2019-11-30 18:30:00', '$2y$10$tiBVNqE4PMLEbmyfMNH9/eXn4rkSKw0uHTNdeFJEALg2yBdwB04JG', NULL, NULL, NULL, NULL, 'user', 'images/vendors/profile/15754697554EkKbsnz87ArnXAWUqAht10_dsc5356_15_1836831555326929.jpg', 1, NULL, NULL, NULL, NULL, 1, 'RMlxmLkxz0mU5v1WiN0Z5ZAjazXouN7b6UYqnNEYoUbYrIiohbzGAtNKBW3Q', '2019-11-12 06:25:25', '2019-12-19 04:04:45'),
(33, 'hitesh sharma', 'hitesh', 'sharma', 'hitesh22791@gmail.com', '0', NULL, NULL, NULL, '2019-11-13 18:30:00', '$2y$10$o6TsuB0J0za0EknNojA7g.B304Cg3SRfIqrJU7QQZKSxgCYb5FpGi', NULL, NULL, NULL, NULL, 'vendor', NULL, 1, NULL, NULL, NULL, NULL, 0, 'usHDkMT6QyFgQUsA03DB113wGW1nDuLMbyqfBp9gdXKsZ8J0fi5xPkAJDT82', '2019-11-14 02:17:10', '2019-11-21 09:09:51'),
(34, 'vendor s', 'vendor', 's', 'vendor001@yopmail.com', '12345656', NULL, NULL, NULL, '2019-11-14 04:22:00', '$2y$10$3nhw3wasoho0VKY52ffgHO7/OBu5wNz0O4r2SXSQrtzktEnI3YI5K', NULL, NULL, NULL, NULL, 'vendor', 'images/vendors/profile/1575376773SRf20ex3xxBQ4dgJjBNZonline.png', 1, '2', 1, NULL, 'acct_1FlvGZCqcZPOBWPd', 2, 'SQnVkCq8I42N5sNHOYa3lSJQsNgDdaq5mHTiTyu7L8tRmQi1IxBdOJ7Op4VT', '2019-11-14 04:19:37', '2020-01-08 05:09:00'),
(35, 'Kanny Gill', 'Kanny', 'Gill', 'kanny@yopmail.com', '0', NULL, NULL, NULL, '2019-11-15 03:06:31', '$2y$10$XZA0JR6bHi1MSANa86u8jOncOCBPT7wFdxaq5RZBjLIYW992ssDA.', NULL, NULL, NULL, NULL, 'vendor', NULL, 1, NULL, NULL, NULL, NULL, 1, 'CILaDjfmOEMMvHxPX91YpMYmtl9OVRpcAYUhAl83uhtKxGWCXLFprBaCcYAp', '2019-11-15 03:06:02', '2020-01-07 10:01:57'),
(36, 'Kanny Rajput', 'Kanny', 'Rajput', 'kannyraj@yopmail.com', '0', NULL, NULL, NULL, '2019-11-15 04:27:34', '$2y$10$05CiO5N1YnlHK2qAV493Kub/2oQ1PkscvvcNJ5lEeupu.MNxtrT7m', NULL, NULL, NULL, NULL, 'vendor', NULL, 1, NULL, NULL, NULL, NULL, 0, 'MiJiNw0hILOy4O7TcVXUAYem6b3hAujmp6kbR0rc2B8ILItRzt4iDwxj4wnI', '2019-11-15 04:27:09', '2019-11-21 09:10:06'),
(37, 'Kanny Singhh', 'Kanny', 'Singhh', 'kannysingh@yopmail.com', '0', NULL, NULL, NULL, '2019-11-15 04:30:26', '$2y$10$D43XORx9FPYbJXJu2L7CkuJsKI9ywXPjNOXoVhPi9iegyE5tXy7h2', NULL, NULL, NULL, NULL, 'vendor', NULL, 1, NULL, NULL, NULL, NULL, 0, 'Moa9zHEdREFzRSFG7DNs2fDCSMEFPyGiUGOgan9FxOFj4TjsZNcdLF5CgwIa', '2019-11-15 04:30:08', '2019-11-21 09:10:10'),
(38, 'Yuvraj Bajwa', 'Yuvraj', 'Bajwa', 'yuvi@gmail.com', '0', NULL, NULL, NULL, '2019-11-14 18:30:00', '$2y$10$nNsAZlbUjk5MQejC/gAcO.00QkIKDfJI7cODHa4OT8KQ96SGWFRqW', NULL, NULL, NULL, NULL, 'vendor', NULL, 1, NULL, NULL, NULL, NULL, 0, NULL, '2019-11-15 04:51:50', '2019-11-21 09:10:26'),
(39, 'HYCINTH YIMGA', 'HYCINTH', 'YIMGA', 'contactfavorville@gmail.com', '0', NULL, NULL, NULL, '2019-11-15 16:20:30', '$2y$10$MHrlyM7avUX4aeSKeGx5b.xJz5NWlcszJV7Zl7DLMpuN0wRs4vK4y', NULL, NULL, NULL, NULL, 'user', NULL, 1, NULL, NULL, NULL, NULL, 0, 'JREwkGR1KYGEEICkStruJ4U22aPKyzPgJm2Dkbg5shjQx3owZZMwFRfBxySs', '2019-11-15 16:20:15', '2019-12-30 07:06:15'),
(40, 'Test Test', 'Test', 'Test', 'yimgah@outlook.com', '0', NULL, NULL, NULL, '2019-11-15 16:26:13', '$2y$10$7i8QLKLRZvQS/aoDt/OWTuit05TjXMX9wkMMKzmDsT14wJ5IVIi3a', NULL, NULL, NULL, NULL, 'vendor', NULL, 1, NULL, NULL, NULL, NULL, 0, 'J6E8MXFU30Ds9mL0aBKSunr2UePU5F1PnmAIskQMBnUNQbbWXh1U7HDemJ0j', '2019-11-15 16:26:02', '2019-11-21 09:10:19'),
(41, 'Ivery High', 'Ivery', 'High', 'ihigh@masonlive.gmu.edu', '0', NULL, NULL, NULL, '2019-11-15 19:10:31', '$2y$10$I3FxreZ4zHuUEns6VhcvmOCU7T5DvjU/j91f3YxUoUUXVzZFyDpjK', NULL, NULL, NULL, NULL, 'vendor', NULL, 1, NULL, NULL, NULL, NULL, 0, NULL, '2019-11-15 19:09:57', '2019-11-21 09:09:56'),
(42, 'Jaskaran Singh', 'Jaskaran', 'Singh', 'jaskaran@yopmail.com', '0', NULL, NULL, NULL, '2019-11-18 03:05:55', '$2y$10$24fdx3W1i9M2GLFjlOeUXuE2H7reNsX/Nsixl/ou8JxPIB.2EmZh.', NULL, NULL, NULL, NULL, 'vendor', 'images/vendors/profile/1575373430Wc8UYg1bG43YtloV103pt10_1435802609300solo019.jpg', 1, NULL, 1, NULL, NULL, 2, 'M0VtpU9N64ctxhNmbXRifzJ3Xt23gEJizmNfvYtCEIILpdPvu5ojkkDenca1', '2019-11-18 03:05:38', '2020-01-06 09:49:59'),
(43, 'karan singh', 'karan', 'singh', 'karan@yopmail.com', '0', NULL, NULL, NULL, '2019-11-18 04:02:59', '$2y$10$/HFJc7wVlgEDh.Uiyier1O8wxUmYr6kohUh4c7KizeLcVHlVFyKPe', NULL, NULL, NULL, NULL, 'vendor', NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, '2019-11-18 04:02:23', '2019-11-21 09:10:13'),
(44, 'jassi singh', 'jassi', 'singh', 'bajwa8360854880@gmail.com', '0', NULL, NULL, NULL, '2019-11-26 00:58:09', '$2y$10$N/UOLjgGNNissqOqvSmGm.pq5rBBgxI9CKPC4zFmT733riMeQT4tO', NULL, NULL, NULL, NULL, 'vendor', NULL, 1, NULL, NULL, NULL, 'acct_1Ft8FrBfQ2g4gsFc', 2, 'dBOjWsKUKkWKZ6usruQcfiI9sYAos43bqEWJklT1lVXKKHZwcTluv2KohZYw', '2019-11-26 00:54:09', '2020-01-03 10:52:36'),
(45, 'Testing Test', 'Testing', 'Test', 'test91@yopmail.com', '0', NULL, NULL, NULL, '2019-12-02 04:14:48', '$2y$10$nISzsSM4J3M6Ly/wjNd/duqEYi0QHl39FSZAjfZef/6zQ5oI9TxqO', NULL, NULL, NULL, NULL, 'user', NULL, 1, NULL, NULL, NULL, NULL, 0, 'r177koEhaUuGefWW73RpVYWtuulovmGZhejTQopPaig1zhkFrD6wgfC3uFYQ', '2019-12-02 04:12:33', '2019-12-02 04:14:48'),
(46, 'TEST JHJ', 'TEST', 'JHJ', 'daad@yopmail.com', '0', NULL, NULL, NULL, NULL, '$2y$10$4432zcTf61VZz7iikxJS/.iQJq8NJPJX1Ogp6amDpgWT9P90MSfbS', NULL, NULL, NULL, NULL, 'vendor', NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, '2019-12-02 08:14:23', '2019-12-02 08:14:23'),
(47, 'test test', 'test', 'test', 'hitesh@gmail.com', '0', NULL, NULL, NULL, NULL, '$2y$10$FPv8fsNNHN03PdraRVbQEuuAYgqd06MytqybnvOcvC8tGD4VwgpOO', NULL, NULL, NULL, NULL, 'vendor', NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, '2019-12-02 08:32:54', '2019-12-02 08:32:54'),
(48, 'raj kumar', 'raj', 'kumar', 'raj@gmail.com', '0', NULL, NULL, NULL, NULL, '$2y$10$dk71CVag5j6iEppLlhg8sOOutXUF10tO41m9SEbmHxgvetvZ18HwS', NULL, NULL, NULL, NULL, 'vendor', NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, '2019-12-02 08:45:24', '2019-12-02 08:45:24'),
(49, 'user ss', 'user', 'ss', 'user002@yopmail.com', '0', NULL, NULL, NULL, NULL, '$2y$10$HHw5htguFfOR4o4kBczkFO/8IIPUNRNMaAj6zuJk8CLUy05gN2slq', NULL, NULL, NULL, NULL, 'vendor', NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, '2019-12-02 08:49:58', '2019-12-02 08:49:58'),
(50, 'rk s', 'rk', 's', 'user001@yopmail.com', '14523654', 'Canal Street, Chinatown, NY, USA', '40.7163437', '-73.99638620000002', '2019-12-03 05:54:47', '$2y$10$f.wzTKaKghDaxwbjyihnsO85DYrcL2A0WZ4cQnvEWXSvWwgXKmKHS', NULL, NULL, NULL, NULL, 'user', 'images/vendors/profile/1575380038swGGAXUHFFXwJ7yBwsyBonline.png', 1, NULL, NULL, NULL, NULL, 1, 'H5IHCWjIHogBxFJKKgWJ7e7i0zobxDtJqtOevrcYLkd8ITf1X8OeVS7ntTcG', '2019-12-03 05:54:27', '2019-12-25 03:49:42'),
(51, 'Kanny Gill', 'Kanny', 'Gill', 'kanny786@yopmail.com', '9465470549', 'USC McCarthy Way, Los Angeles, CA, USA', '34.0205687', '-118.2813509', '2019-12-04 08:49:01', '$2y$10$htlgqwsz8x/H6OvnK0Ncfuc18z9RYQqJnRoEPGwMIzZdsEy54Y58G', NULL, NULL, NULL, NULL, 'user', 'images/vendors/profile/1575559734NrTSdag3NzPIqrP0wOzqt10_1435802609300solo019.jpg', 1, NULL, NULL, NULL, NULL, 0, 'L6Vt7kSmORkrOTRnR70Wo6LxDxjJNDlkagag68KdG2c42W6oN0WIrGwhys42', '2019-12-04 08:48:44', '2019-12-06 08:02:24'),
(52, 'TEST sandha', 'TEST', 'sandha', 'TEST@yopmail.com', NULL, NULL, NULL, NULL, NULL, '$2y$10$06n1888HwkEutLzgq3D2H.PyFrZgVzUFJmwldrC/QtkIGP1Yn1eEi', NULL, NULL, NULL, NULL, 'vendor', NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, '2019-12-05 00:35:01', '2019-12-05 00:35:01'),
(53, 'karan JHJ', 'karan', 'JHJ', 'deft321@yopmail.com', NULL, NULL, NULL, NULL, '2019-12-05 00:39:13', '$2y$10$tB5.hjlH5HIUkZdbMnNBO.YVQ3rLra9rxvu4ndGqU8Fb0Xa/DjUka', NULL, NULL, NULL, NULL, 'user', NULL, 1, NULL, NULL, NULL, NULL, 0, NULL, '2019-12-05 00:38:47', '2019-12-05 00:39:13'),
(54, 'Hycinth EV', 'Hycinth', 'EV', 'Hycinth12@yopmail.com', NULL, NULL, NULL, NULL, '2019-12-05 01:05:52', '$2y$10$kYEAJbTdlcv9Lgsai8c9m.rBv2fgiolwLfdY1TjJB6nopyZBUL39.', NULL, NULL, NULL, NULL, 'vendor', NULL, 1, NULL, NULL, NULL, NULL, 1, 'YrniHT2AKfTlkEYfaWXec3GJCKNjzzIQP8DcpiBKVMdePIKGxgGcPV7blPwz', '2019-12-05 01:02:31', '2019-12-05 05:03:30'),
(55, 'sandha Singh', 'sandha', 'Singh', 'sandha78@yopmail.com', NULL, NULL, NULL, NULL, '2019-12-05 03:18:23', '$2y$10$CLZDveG.QgNHnTnqiz7Q8eC.Eb/61sLyux2ITPD6RSBeCZ2OZRfqC', NULL, NULL, NULL, NULL, 'user', NULL, 1, NULL, NULL, NULL, NULL, 0, 'FYz1zlkl1UkJQCDtMyZfaJoLK7ZmaqlK1FfzCb5JKtOkNdgvcWoWJHAAsdZk', '2019-12-05 03:15:00', '2019-12-05 03:18:23'),
(56, 'Inder Bajwa', 'Inder', 'Bajwa', 'qa2.defsoft@gmail.com', NULL, NULL, NULL, NULL, NULL, '$2y$10$O2X.68/cxdnSWTjhO2cW5OsgLakNXhQDm3e4MYpk3zxX6lzDKsFUC', NULL, NULL, NULL, NULL, 'vendor', NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, '2019-12-05 03:28:52', '2019-12-05 03:28:52'),
(57, 'pallavi toomar', 'pallavi', 'toomar', 'qa2.deftsoft@gmail.com', NULL, NULL, NULL, NULL, '2019-12-05 03:32:45', '$2y$10$NtsBEHLcUQG8nkSLtrUbQ.JTQpiefyrc7DIatcZV2ztayxs6ThEzG', NULL, NULL, NULL, NULL, 'vendor', NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, '2019-12-05 03:32:21', '2019-12-05 03:32:45'),
(58, 'Dkisisis Idiidisi', 'Dkisisis', 'Idiidisi', 'Ksksjsi@yopmail.com', NULL, NULL, NULL, NULL, NULL, '$2y$10$HxQP976VGBBYIE9ABFGrSe/qVkRFqClYtL8dFDYjZ0UN/0fmSF6mC', NULL, NULL, NULL, NULL, 'user', NULL, 1, NULL, NULL, NULL, NULL, 0, NULL, '2019-12-05 04:20:35', '2019-12-05 04:20:35'),
(59, 'Kanny Vendor', 'Kanny', 'Vendor', 'kannyv@yopmail.com', '9465470549', NULL, NULL, NULL, '2019-12-09 03:08:48', '$2y$10$LfGOFgZDUEoK32h4KM4ve.gEEQBHptPIyxjQEWakk5gMx6eg2tP/a', NULL, NULL, NULL, NULL, 'vendor', 'images/vendors/profile/1575882091j0GZOQCG6Q7AB3dlJFb2k.jpg', 1, NULL, NULL, NULL, 'acct_1FsqrhHm6sbEOjYy', 11, 'ONBzKMzGLeKH5KFAHiEVwwM8KzEnlUCLHJc5gH2NBfSu6Ls3LC4ecPACBrxw', '2019-12-09 03:08:24', '2020-01-07 04:06:22'),
(60, 'Kanny Customer', 'Kanny', 'Customer', 'kannyc@yopmail.com', NULL, NULL, NULL, NULL, '2019-12-09 03:10:12', '$2y$10$2NoI44RRR.M9N5YBuSHtu.LokV/LdI07LFfDouegVOPIbq8C5xWIy', NULL, NULL, NULL, NULL, 'user', NULL, 1, NULL, NULL, NULL, NULL, 1, '4BPkmV4j3CctgGrEy8nAHxGaWtlOik9ldNNYwJ8VWbFALIKs1RbrzYTLrr6P', '2019-12-09 03:10:03', '2019-12-18 05:43:09'),
(61, 'Joyce Nana', 'Joyce', 'Nana', 'jadjaloko@yahoo.com', NULL, NULL, NULL, NULL, '2019-12-13 12:45:35', '$2y$10$xMRDYmugEWM.oEWkJla//OFqHiL6l6J8GPAmr74x9VulvBHBlKduC', NULL, NULL, NULL, NULL, 'user', NULL, 1, NULL, NULL, NULL, NULL, 0, 'mEshVWJJUDR7eyp1cLxz9MPp2a3D2EsOaShFffADvOFcagHmTLvzlJwcleSp', '2019-12-13 12:45:04', '2019-12-13 20:21:24'),
(62, 'jassar singh', 'jassar', 'singh', 'jassi93@yopmail.com', NULL, NULL, NULL, NULL, '2019-12-24 02:46:40', '$2y$10$c18iOBYzSvsD/nLcfDocjub3YrezwRe8nThSo.bstJ6i9yOQCQHOm', NULL, NULL, NULL, NULL, 'user', NULL, 1, NULL, NULL, NULL, NULL, 1, '3jMiPsUOWkfoE4cghkaPru9hao00B1juI7e2j0nsBJDk1CxRLrYPoBqXmZ1a', '2019-12-24 02:46:11', '2019-12-24 04:28:10'),
(63, 'karan singh', 'karan', 'singh', 'karan92@yopmail.com', NULL, NULL, NULL, NULL, '2019-12-24 03:44:22', '$2y$10$BSMt5DN4O5nNMFSj3dV6M.Q0H0Flcvz3rVb/RqaJXlxEN1m4lf3xC', NULL, NULL, NULL, NULL, 'user', NULL, 1, NULL, NULL, NULL, NULL, 1, 'jiUtfNZWtPxvth49Cn51N5oPVRrvSc8uPLVrmHJxulY2LsyC7H3T5DS7hdhO', '2019-12-24 03:44:09', '2019-12-24 03:50:50'),
(64, 'Contact Favorville', 'Contact', 'Favorville', 'talk2hycinth@gmail.com', NULL, NULL, NULL, NULL, '2019-12-30 07:18:45', '$2y$10$VmVlQyhwZQim06A4my/2beZiX8RJMRO9pDqXQ4XfwDUwhEcv50wtS', NULL, NULL, NULL, NULL, 'vendor', NULL, 1, NULL, NULL, NULL, NULL, 2, '0bkqBFN3lF7GtHndtmbV56HLFFB3wqogtf1Q1gGowy8zDTQtq0vOwDegqIUo', '2019-12-30 07:16:18', '2020-01-02 16:57:41'),
(72, 'Preet Gill', 'Preet', 'Gill', 'narindersingh733@rediffmail.com', '1212878777', 'test', NULL, NULL, NULL, '$2y$10$k5VsSZ6vMXR/XLlL6pqvf.uV2rnMhtEd2Lhzk6uBLh0D4e5iPJdq6', NULL, '111111111111111111', NULL, 'videos/vendors/cover/1577967651Fn7lyKdEQJGD4FU2g4Y5eventpic.jpg', 'vendor', NULL, 1, NULL, NULL, NULL, NULL, 0, NULL, '2020-01-02 06:50:51', '2020-01-02 10:03:42'),
(73, 'Narinder Singh', 'Narinder', 'Singh', 'bajwa9876470494@gmail.com', '4158464500', 'public_html', NULL, NULL, NULL, '$2y$10$WXj7QmTmQ7s8Zg0JmSu1cOY1em2aXUiVt7KXwCbN0i1PMe9lR5o6y', NULL, 'bajwa9876470491@gmail.com', NULL, 'videos/vendors/cover/1577968156OYQQ1TgA82UPPPRt5YEeguestlist.png', 'vendor', NULL, 0, NULL, NULL, NULL, NULL, 0, 'Foa565v3dm4P4WVqo0m1qaRSW4RsWgWC6DGYSUyimwDzqs6wFUrWbrcQHbib', '2020-01-02 06:59:16', '2020-01-02 08:30:01'),
(74, 'Narinder Singh', 'Narinder', 'Singh', 'bajwa9876470495@gmail.com', '4158464500', 'public_html', NULL, NULL, NULL, '$2y$10$FI.sFAwuwv1u0Xusy3GYo.RFUy8yz7wTlASWtfXhySmU0Llzv4h.m', NULL, 'bajwa9876470491@gmail.com', '2001-01-08 18:30:00', 'videos/vendors/cover/1578410578W5LjRwkOomnAoMhFwiY9anthonydelanoixhzgs56Ze49sunsplash.jpg', 'vendor', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, '2020-01-07 09:52:58', '2020-01-07 09:52:58'),
(75, 'Narinder Singh', 'Narinder', 'Singh', 'bajwa98764704911@gmail.com', '4158464500', 'public_html', NULL, NULL, NULL, '$2y$10$DGZcI8dKVo4LKSX7Z82NQeQKq1sXY4PeAvMFJfYPCgpbIMki5zKOS', NULL, 'bajwa9876470491@gmail.com', '2001-01-06 18:30:00', 'videos/vendors/cover/1578410698PruDsNq2VHPx3oLtQCU4anthonydelanoixhzgs56Ze49sunsplash.jpg', 'vendor', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, '2020-01-07 09:54:58', '2020-01-07 09:54:58');

-- --------------------------------------------------------

--
-- Table structure for table `user_events`
--

CREATE TABLE `user_events` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_budget` double DEFAULT '0',
  `long_description` longtext COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `end_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(2) DEFAULT '0',
  `min_person` int(11) DEFAULT NULL,
  `max_person` int(11) DEFAULT NULL,
  `start_time` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_time` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seasons` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `colour` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notepad` text COLLATE utf8mb4_unicode_ci,
  `ideas` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_events`
--

INSERT INTO `user_events` (`id`, `user_id`, `slug`, `title`, `event_picture`, `event_budget`, `long_description`, `description`, `start_date`, `end_date`, `location`, `latitude`, `longitude`, `event_type`, `status`, `min_person`, `max_person`, `start_time`, `end_time`, `seasons`, `colour`, `notepad`, `ideas`, `created_at`, `updated_at`) VALUES
(17, 50, 'new', 'new', NULL, 0, NULL, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form', '2019-12-15 18:30:00', '2019-12-27 18:30:00', 'Disneyland Drive, Anaheim, CA, USA', '33.8136287', '-117.92424490000002', '2', 0, 3, 5, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-09 10:50:14', '2019-12-16 07:57:08'),
(18, 50, 'my-winter', 'My Birthday Bash', NULL, 0, NULL, 'Lorium Epsum is proper part of Testing. Lorium Epsum is proper part of Testing so on part of Testing so on part of Testing so on', '2019-12-12 18:30:00', '2019-12-27 18:30:00', 'Logan Airport Terminal B, East Boston, MA, USA', '42.3645508', '-71.01954490000003', '6', 0, 5, 12, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-10 00:25:18', '2019-12-12 00:57:17'),
(19, 32, 'my-birthbay-party', 'My Birthbay Party', 'images/events/1576748520CyvmkqmYoFI1ipv3HFMppackageimg1.png', 50000, 'sdddddddddd', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour', '2019-12-30 18:30:00', '2020-01-09 18:30:00', 'New York State Thruway, Central Valley, NY, USA', '42.9586191', '-76.90872790000003', '3', 0, 10, 100, '2:30 PM', '03:30 PM', 'sdsdsd', '#835656', 'sds', 'sdsd', '2019-12-11 06:51:19', '2019-12-27 15:38:13'),
(20, 32, 'wedding-anniversary', 'Wedding Anniversary', 'images/events/1577345015lKRhbe2ZlZxmuIMyxPbRvideoposter.png', 5000, 'ssssssssssss', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour', '2019-12-30 18:30:00', '2020-01-09 18:30:00', 'Newark International Airport Street, Newark, NJ, USA', '40.6921118', '-74.1828812', '2', 0, 120, 200, '2:30 PM', '03:30 PM', 'sdsdsd', '#ce3737', 'sds', 'sdsdsd', '2019-12-11 06:52:40', '2019-12-27 13:52:21'),
(21, 60, 'birthday-bash', 'Birthday Bash', 'images/events/1576748659voQQBEXaLUxYclJNZMq315747561420CECWnSZ7yaVhvavQEMn14997.png', 15000, '', 'It\'s my Birthday Event', '2019-12-27 18:30:00', '2019-12-28 18:30:00', 'Miami Circle Northeast, Atlanta, GA, USA', '33.83015460000001', '-84.36332010000001', '17', 0, 5, 180, '09:15 AM', '06:15 AM', 'Summer', '#cc1414', 'Test', 'Test', '2019-12-11 10:20:02', '2019-12-26 05:10:15'),
(22, 61, 'test-photoshot', 'Test photoshot', NULL, 0, NULL, 'test', '2019-12-30 18:30:00', '2020-01-30 18:30:00', 'New Orleans Drive, Fort Hunt, VA, USA', '38.74248300000001', '-77.066777', '6', 0, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-13 21:01:51', '2019-12-13 21:01:51'),
(25, 32, 'xxl', 'XXL', 'images/events/1576586971wxYQsjyN1Ha7J7wSXOTScommas.png', 0, NULL, 'kgkg', '2019-12-18 18:30:00', '2019-12-18 18:30:00', 'Logan Airport Terminal B, East Boston, MA, USA', '42.3645508', '-71.01954490000003', '17', 0, 5, 7, '22:22', '22:55', NULL, NULL, NULL, NULL, '2019-12-17 07:19:31', '2019-12-17 07:19:31'),
(26, 32, 'sample-1', 'Sample 1', 'images/events/1577787926qSF4AwEngYKtG3gWiBmovendor01.png', 50000, 'test', 'kgkg', '2020-01-03 18:30:00', '2020-01-10 18:30:00', 'Logan Airport Terminal B, East Boston, MA, USA', '42.3645508', '-71.01954490000003', '2', 0, 100, 500, '10:22 AM', '05:02 PM', 'sdsdsd', '#df1a1a', NULL, NULL, '2019-12-17 07:35:06', '2019-12-31 05:22:04'),
(27, 32, 'my-birthday-event', 'My  Friend Wedding', 'images/events/15765929017ICZLdvwWW8CBQo5UN4deventformimg.png', 50000, '', 'My  Friend Wedding', '2019-12-29 18:30:00', '2020-01-01 18:30:00', 'Love Field Drive, Dallas, TX, USA', '32.85203', '-96.8587106', '2', 0, 30, 50, '22:22', '12:02', 'test', '#fc0000', NULL, NULL, '2019-12-17 08:58:22', '2019-12-27 12:28:27'),
(28, 60, 'test', 'test', 'images/events/1576617752hp5EwLpBIlAM87S96wH024.09.2019_20.02.43_REC.png', 0, NULL, 'test', '2019-12-17 18:30:00', '2019-12-19 18:30:00', 'Manassas Circle, Vienna, VA, USA', '38.890749', '-77.2370482', '6', 0, 10, 100, '01:00', '13:00', NULL, NULL, NULL, NULL, '2019-12-17 15:52:32', '2019-12-17 15:52:32'),
(29, 60, 'xxl-1', 'XXL', 'images/events/1576667588k13j5M5Vy16P1ooH3RL2menuaboutus.png', 0, NULL, 'kgkg', '2019-12-18 18:30:00', '2019-12-19 18:30:00', 'Teston Road, Woodbridge, ON, Canada', '43.8676065', '-79.5438924', '17', 0, 2, 5, '22:22', '22:02', 'sdsdsd', '#360909', 'tes', 'test', '2019-12-18 05:43:08', '2019-12-18 05:43:08'),
(30, 60, 'xxl-2', 'XXL', 'images/events/157667078193yh1ZS8vtFB87Ft1ytFforgotpassbanner.png', 0, 'dfffffffffffffffffff', 'kgkg', '2019-12-18 18:30:00', '2019-12-28 18:30:00', 'Teston Road, Woodbridge, ON, Canada', '43.8676065', '-79.5438924', '17', 0, 5, 6, '2:30 PM', '03:30 PM', 'sdsdsd', '#8e4040', 'tst', 'tst', '2019-12-18 06:00:33', '2019-12-18 06:36:21'),
(31, 60, 'xxl-3', 'XXL', 'images/events/1576671562vfRQWSCgcL8Tb5z3SZLhcalculators.png', 1444, 'dfffffffffffffffffff', 'kgkg', '2019-12-18 18:30:00', '2019-12-28 18:30:00', 'Teston Road, Woodbridge, ON, Canada', '43.8676065', '-79.5438924', '2', 0, 5, 6, '2:30 PM', '03:30 PM', 'sdsdsd', '#8e4040', 'tst', 'tst', '2019-12-18 06:34:01', '2019-12-18 06:53:22'),
(32, 60, 'lorem-ipsum-dolor-sit', 'Lorem ipsum dolor sit', 'images/events/1576671989s2UbvLhU0bM9r1AYkSP6eventformimg.png', 112, 'sdddddd', 'ssssss', '2019-12-19 13:04:51', '2019-12-19 13:04:51', 'Logan Airport Terminal B, East Boston, MA, USA', '42.3645508', '-71.01954490000003', '2', 0, 5, 12, '09:15 PM', '05:25 PM', 'sdsdsd', '#bc5151', 'Events are on the top of the world', 'Testing Ideas is running', '2019-12-18 06:56:29', '2019-12-19 07:34:51'),
(33, 60, 'dream-pool', 'Dream Pool', 'images/events/1576704472U9uAYpo2oNSkWdIc8fQt24.09.2019_19.56.56_REC.png', 30000, 'long', 'Pool Party', '2019-12-18 18:30:00', '2020-02-19 18:30:00', 'Willow Oaks Corporate Drive, Annandale, VA, USA', '38.86409560000001', '-77.23121220000002', '11', 0, 10, 2000, '2:30 PM', '2:30 PM', 'Winter', '#008080', 'none', 'none', '2019-12-18 15:57:52', '2019-12-18 15:57:52'),
(34, 60, 'technology-event', 'Technology Event', 'images/events/1576750039Q1HnCw9QUYZUAxVce4FY15747561420CECWnSZ7yaVhvavQEMn14997.png', 1500, 'This is the long dummy event', 'This is the dummy event', '2019-12-28 18:30:00', '2020-01-30 18:30:00', 'Newbury Street, Boston, MA, USA', '42.3481375', '-71.08792870000002', '5', 0, 1, 200, '2:30 PM', '06:25 AM', 'Summer', '#f14747', NULL, NULL, '2019-12-19 04:37:20', '2019-12-19 04:37:20'),
(35, 60, 'birthday-event', 'Birthday Event', 'images/events/157675311250WaTOMWVJXmkph6csTlanchez4_51_698336157383070553519.jpg', 1500, 'Long Description', 'Short Event Description', '2019-11-01 11:03:33', '2019-11-14 11:02:57', 'Teston Road, Woodbridge, ON, Canada', '43.8676065', '-79.5438924', '17', 0, 10, 1000, '2:30 PM', '2:30 PM', 'Summer', '#e80d0d', NULL, NULL, '2019-10-02 05:28:32', '2019-12-05 05:28:32'),
(36, 63, 'my-marriage', 'my marriage', 'images/events/1577179249vH0WZDxPguaDuxjmPPNY30.jpg', 2000, 'The definition of marriage is the religious or legal process through which people become husband and wife, husband and husband or wife and wife, or the state of being married. An example of marriage is the Sacrament of Holy Matrimony.', 'The definition of marriage is the religious or legal process through which people become husband and wife, husband and husband or wife and wife, or the state of being married. An example of marriage is the Sacrament of Holy Matrimony.', '2019-12-24 18:30:00', '2019-12-25 18:30:00', 'Test Drive, Chattanooga, TN, USA', '35.0602608', '-85.18986029999996', '2', 0, 100, 200, '11 AM', '06:30 PM', 'winter', '#0000ff', NULL, NULL, '2019-12-24 03:50:49', '2019-12-24 04:09:08'),
(37, 62, 'wedding', 'wedding', 'images/events/1577181490tCD5fNRc4UwPCLmb6YDjimg3.jpg', 21000, 'The definition of marriage is the religious or legal process through which people become husband and wife, husband and husband or wife and wife, or the state of being married. An example of marriage is the Sacrament of Holy Matrimony.', 'The definition of marriage is the religious or legal process through which people become husband and wife, husband and husband or wife and wife, or the state of being married. An example of marriage is the Sacrament of Holy Matrimony.', '2019-12-24 18:30:00', '2019-12-25 18:30:00', 'Logan Airport Terminal B, East Boston, MA, USA', '42.3645508', '-71.01954490000003', '2', 0, 100, 200, '11 AM', '06 AM', 'winter', '#0000ff', NULL, NULL, '2019-12-24 04:28:10', '2019-12-24 04:45:40'),
(38, 50, 'my-birthday', 'My birthday', 'images/events/157726558267L7GBhugwooLRb10241loyalty24px.svg', 50000, 'Congratulation for using our Platform', 'Congratulation for using our Platform', '2019-12-25 18:30:00', '2019-12-26 18:30:00', 'Teston Road, Woodbridge, ON, Canada', '43.8676065', '-79.5438924', '17', 0, 100, 250, '2:30 PM', '2:30 PM', 'hghh', '#3c2828', NULL, NULL, '2019-12-25 03:49:42', '2019-12-25 06:38:14'),
(39, 60, 'marriage-event', 'Marriage Event', 'images/events/1577694063DQ4bOZysDFJhrMpr3uaG15747561420CECWnSZ7yaVhvavQEMn14997.png', 12000, 'Its the long description working testing', 'Its the dummy testing description', '2020-01-07 18:30:00', '2020-01-30 18:30:00', 'Michigan Avenue, Chicago, IL, USA', '41.816046', '-87.62301689999998', '11', 0, 100, 150, '06:10 AM', '09:30 PM', 'Summer', '#d53d3d', NULL, NULL, '2019-12-30 02:51:04', '2020-01-06 01:07:21'),
(40, 50, 'birthday-bash-party', 'Birthday Bash Party', 'images/events/1577697409eRqVgI1EVuZUhfyw35Fs15747561420CECWnSZ7yaVhvavQEMn14997.png', 2500, 'Birthday Bash Party', 'Birthday Bash Party', '2019-12-30 18:30:00', '2020-01-30 18:30:00', 'Newark International Airport Street, Newark, NJ, USA', '40.6921118', '-74.1828812', '11', 0, 100, 250, '09:15 AM', '06:25 AM', 'Summer', '#d03333', NULL, NULL, '2019-12-30 03:46:49', '2019-12-30 03:49:29'),
(41, 32, 'new-year-party', 'New Year Party', 'images/events/1577772845kYhTealpceB4rMoC6Zg9pop1.png', 5000, 'test', 'test', '2019-12-30 18:30:00', '2019-12-31 18:30:00', 'Newark International Airport Street, Newark, NJ, USA', '40.6921118', '-74.1828812', '11', 0, 100, 200, '11 PM', '02 AM', 'sdsdsd', '#050000', NULL, NULL, '2019-12-31 00:44:05', '2019-12-31 00:44:05'),
(42, 62, 'club-party', 'Club Party', 'images/events/1577775001lRwC8Bifn3tTrvFseBGjimage1.webp', 100, 'OFFICIAL BACK TO SCHOOL PARTY FOR ALL THE SCHOOLS IN THE 336 AREA ( UNCG , NCAT , WSSU , BENNETT , AND ALL OTHER SCHOOLS ) .\r\n\r\nOFFICIAL CAPRICORN BASH\r\n\r\nTEXT 2526783758\r\n\r\nGAMES RULES :\r\n\r\n-ALL MALES WILL RECEIVE', 'OFFICIAL BACK TO SCHOOL PARTY FOR ALL THE SCHOOLS IN THE 336 AREA ( UNCG , NCAT , WSSU , BENNETT , AND ALL OTHER SCHOOLS ) .\r\n\r\nOFFICIAL CAPRICORN BASH\r\n\r\nTEXT 2526783758\r\n\r\nGAMES RULES :\r\n\r\n-ALL MALES WILL RECEIVE', '2019-12-30 18:30:00', '2019-12-31 18:30:00', 'Sunset Boulevard, Pacific Palisades, CA, USA', '34.0473913', '-118.52583340000001', '2', 0, 100, 1000, '03 PM', '07 PM', 'summer', '#ffff00', NULL, NULL, '2019-12-31 01:03:05', '2019-12-31 01:32:46'),
(43, 32, 'event-demo-two', 'Event Demo Two', 'images/events/1577952985Fn6pTG8uHwZZxnVecAQxweatherbg.jpg', 50000, 'Event Demo Two', 'Event Demo Two', '2020-01-09 18:30:00', '2020-01-16 18:30:00', 'New York State Thruway, Central Valley, NY, USA', '42.9586191', '-76.90872790000003', '2', 0, 120, 200, '12 AM', '12 PM', 'sdsdsd', '#372222', NULL, NULL, '2020-01-02 02:46:25', '2020-01-02 02:46:25'),
(45, 60, 'carnival-event', 'Carnival Event', 'images/events/1578292939UQuLXY5jfde6WMz04gOsbannerimg.png', 2000, 'Loriuem Epsum Dummy Loriuem Epsum Dummy Loriuem Epsum Dummy', 'Loriuem Epsum Dummy', '2020-01-06 18:30:00', '2020-01-08 18:30:00', 'Superstition Springs Mall Circle, Mesa, AZ, USA', '33.3924571', '-111.68790360000003', '17', 0, 100, 200, '09:30 AM', '06:25 PM', 'Summer', '#611111', NULL, NULL, '2020-01-06 01:12:19', '2020-01-06 04:35:18');

-- --------------------------------------------------------

--
-- Table structure for table `user_event_meta_datas`
--

CREATE TABLE `user_event_meta_datas` (
  `id` int(11) NOT NULL,
  `parent` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `type` varchar(191) NOT NULL,
  `key` varchar(191) NOT NULL,
  `key_value` varchar(191) NOT NULL,
  `event_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_event_meta_datas`
--

INSERT INTO `user_event_meta_datas` (`id`, `parent`, `user_id`, `type`, `key`, `key_value`, `event_id`, `created_at`, `updated_at`) VALUES
(9, 0, 60, 'events', 'category_id', '6', 15, '2019-12-09 09:23:47', '2019-12-09 09:23:47'),
(10, 0, 60, 'events', 'category_id', '1', 15, '2019-12-09 09:23:47', '2019-12-09 09:23:47'),
(11, 0, 50, 'events', 'category_id', '31', 16, '2019-12-09 10:00:23', '2019-12-09 10:00:23'),
(12, 0, 50, 'events', 'category_id', '16', 16, '2019-12-09 10:00:23', '2019-12-09 10:00:23'),
(29, 0, 50, 'events', 'category_id', '16', 18, '2019-12-12 00:57:17', '2019-12-12 00:57:17'),
(34, 0, 61, 'events', 'category_id', '11', 22, '2019-12-13 21:01:51', '2019-12-13 21:01:51'),
(35, 0, 61, 'events', 'category_id', '16', 22, '2019-12-13 21:01:51', '2019-12-13 21:01:51'),
(36, 0, 61, 'events', 'category_id', '18', 22, '2019-12-13 21:01:51', '2019-12-13 21:01:51'),
(37, 0, 61, 'events', 'category_id', '31', 22, '2019-12-13 21:01:51', '2019-12-13 21:01:51'),
(41, 0, 50, 'events', 'category_id', '1', 17, '2019-12-16 07:57:08', '2019-12-16 07:57:08'),
(42, 0, 50, 'events', 'category_id', '11', 17, '2019-12-16 07:57:08', '2019-12-16 07:57:08'),
(43, 0, 50, 'events', 'category_id', '20', 17, '2019-12-16 07:57:08', '2019-12-16 07:57:08'),
(44, 0, 32, 'events', 'category_id', '1', 23, '2019-12-17 06:23:08', '2019-12-17 06:23:08'),
(45, 0, 32, 'events', 'category_id', '11', 23, '2019-12-17 06:23:08', '2019-12-17 06:23:08'),
(46, 0, 32, 'events', 'category_id', '16', 23, '2019-12-17 06:23:08', '2019-12-17 06:23:08'),
(47, 0, 32, 'events', 'category_id', '18', 23, '2019-12-17 06:23:08', '2019-12-17 06:23:08'),
(48, 0, 32, 'events', 'category_id', '31', 23, '2019-12-17 06:23:08', '2019-12-17 06:23:08'),
(49, 0, 32, 'events', 'category_id', '41', 23, '2019-12-17 06:23:08', '2019-12-17 06:23:08'),
(50, 0, 32, 'events', 'category_id', '11', 24, '2019-12-17 06:32:58', '2019-12-17 06:32:58'),
(51, 0, 32, 'events', 'category_id', '11', 25, '2019-12-17 07:19:31', '2019-12-17 07:19:31'),
(54, 0, 60, 'events', 'category_id', '1', 28, '2019-12-17 15:52:32', '2019-12-17 15:52:32'),
(55, 0, 60, 'events', 'category_id', '8', 28, '2019-12-17 15:52:32', '2019-12-17 15:52:32'),
(56, 0, 60, 'events', 'category_id', '11', 28, '2019-12-17 15:52:32', '2019-12-17 15:52:32'),
(57, 0, 60, 'events', 'category_id', '16', 28, '2019-12-17 15:52:33', '2019-12-17 15:52:33'),
(58, 0, 60, 'events', 'category_id', '18', 28, '2019-12-17 15:52:33', '2019-12-17 15:52:33'),
(59, 0, 60, 'events', 'category_id', '31', 28, '2019-12-17 15:52:33', '2019-12-17 15:52:33'),
(60, 0, 60, 'events', 'category_id', '41', 28, '2019-12-17 15:52:33', '2019-12-17 15:52:33'),
(61, 0, 60, 'events', 'category_id', '11', 29, '2019-12-18 05:43:09', '2019-12-18 05:43:09'),
(65, 0, 60, 'events', 'category_id', '11', 30, '2019-12-18 06:32:42', '2019-12-18 06:32:42'),
(66, 0, 60, 'events', 'category_id', '11', 30, '2019-12-18 06:36:21', '2019-12-18 06:36:21'),
(73, 0, 60, 'events', 'category_id', '6', 31, '2019-12-18 06:53:22', '2019-12-18 06:53:22'),
(74, 0, 60, 'events', 'category_id', '11', 31, '2019-12-18 06:53:22', '2019-12-18 06:53:22'),
(75, 0, 60, 'events', 'category_id', '16', 31, '2019-12-18 06:53:22', '2019-12-18 06:53:22'),
(80, 0, 60, 'events', 'category_id', '6', 32, '2019-12-18 07:00:23', '2019-12-18 07:00:23'),
(81, 0, 60, 'events', 'category_id', '11', 32, '2019-12-18 07:00:23', '2019-12-18 07:00:23'),
(82, 0, 60, 'events', 'category_id', '16', 32, '2019-12-18 07:00:23', '2019-12-18 07:00:23'),
(83, 0, 60, 'events', 'category_id', '18', 32, '2019-12-18 07:00:23', '2019-12-18 07:00:23'),
(84, 0, 60, 'events', 'category_id', '1', 33, '2019-12-18 15:57:52', '2019-12-18 15:57:52'),
(85, 0, 60, 'events', 'category_id', '11', 33, '2019-12-18 15:57:52', '2019-12-18 15:57:52'),
(86, 0, 60, 'events', 'category_id', '18', 33, '2019-12-18 15:57:52', '2019-12-18 15:57:52'),
(87, 0, 60, 'events', 'category_id', '20', 33, '2019-12-18 15:57:52', '2019-12-18 15:57:52'),
(88, 0, 60, 'events', 'category_id', '25', 33, '2019-12-18 15:57:52', '2019-12-18 15:57:52'),
(97, 0, 60, 'events', 'category_id', '1', 34, '2019-12-19 04:37:20', '2019-12-19 04:37:20'),
(99, 0, 60, 'events', 'category_id', '11', 35, '2019-12-19 05:28:32', '2019-12-19 05:28:32'),
(195, 0, 63, 'events', 'category_id', '1', 36, '2019-12-24 04:09:08', '2019-12-24 04:09:08'),
(196, 0, 63, 'events', 'category_id', '11', 36, '2019-12-24 04:09:08', '2019-12-24 04:09:08'),
(197, 0, 63, 'events', 'category_id', '16', 36, '2019-12-24 04:09:08', '2019-12-24 04:09:08'),
(198, 0, 63, 'events', 'category_id', '18', 36, '2019-12-24 04:09:08', '2019-12-24 04:09:08'),
(199, 0, 63, 'events', 'category_id', '20', 36, '2019-12-24 04:09:08', '2019-12-24 04:09:08'),
(200, 0, 63, 'events', 'category_id', '25', 36, '2019-12-24 04:09:08', '2019-12-24 04:09:08'),
(225, 0, 62, 'events', 'category_id', '1', 37, '2019-12-24 04:45:40', '2019-12-24 04:45:40'),
(226, 0, 62, 'events', 'category_id', '6', 37, '2019-12-24 04:45:41', '2019-12-24 04:45:41'),
(227, 0, 62, 'events', 'category_id', '11', 37, '2019-12-24 04:45:41', '2019-12-24 04:45:41'),
(228, 0, 62, 'events', 'category_id', '16', 37, '2019-12-24 04:45:41', '2019-12-24 04:45:41'),
(229, 0, 62, 'events', 'category_id', '18', 37, '2019-12-24 04:45:41', '2019-12-24 04:45:41'),
(230, 0, 62, 'events', 'category_id', '20', 37, '2019-12-24 04:45:41', '2019-12-24 04:45:41'),
(233, 0, 50, 'events', 'category_id', '11', 38, '2019-12-25 06:38:14', '2019-12-25 06:38:14'),
(234, 0, 50, 'events', 'category_id', '20', 38, '2019-12-25 06:38:14', '2019-12-25 06:38:14'),
(257, 0, 60, 'events', 'category_id', '11', 21, '2019-12-26 05:10:15', '2019-12-26 05:10:15'),
(258, 0, 60, 'events', 'category_id', '20', 21, '2019-12-26 05:10:15', '2019-12-26 05:10:15'),
(259, 0, 32, 'events', 'category_id', '1', 27, '2019-12-27 12:28:27', '2019-12-27 12:28:27'),
(260, 0, 32, 'events', 'category_id', '6', 27, '2019-12-27 12:28:27', '2019-12-27 12:28:27'),
(261, 0, 32, 'events', 'category_id', '11', 27, '2019-12-27 12:28:27', '2019-12-27 12:28:27'),
(262, 0, 32, 'events', 'category_id', '16', 27, '2019-12-27 12:28:27', '2019-12-27 12:28:27'),
(263, 0, 32, 'events', 'category_id', '18', 27, '2019-12-27 12:28:27', '2019-12-27 12:28:27'),
(264, 0, 32, 'events', 'category_id', '20', 27, '2019-12-27 12:28:27', '2019-12-27 12:28:27'),
(265, 0, 32, 'events', 'category_id', '1', 20, '2019-12-27 13:52:21', '2019-12-27 13:52:21'),
(266, 0, 32, 'events', 'category_id', '6', 20, '2019-12-27 13:52:21', '2019-12-27 13:52:21'),
(267, 0, 32, 'events', 'category_id', '11', 20, '2019-12-27 13:52:21', '2019-12-27 13:52:21'),
(268, 0, 32, 'events', 'category_id', '16', 20, '2019-12-27 13:52:21', '2019-12-27 13:52:21'),
(269, 0, 32, 'events', 'category_id', '18', 20, '2019-12-27 13:52:21', '2019-12-27 13:52:21'),
(270, 0, 32, 'events', 'category_id', '20', 20, '2019-12-27 13:52:21', '2019-12-27 13:52:21'),
(271, 0, 32, 'events', 'category_id', '1', 19, '2019-12-27 15:38:13', '2019-12-27 15:38:13'),
(272, 0, 32, 'events', 'category_id', '6', 19, '2019-12-27 15:38:13', '2019-12-27 15:38:13'),
(273, 0, 32, 'events', 'category_id', '11', 19, '2019-12-27 15:38:13', '2019-12-27 15:38:13'),
(274, 0, 32, 'events', 'category_id', '16', 19, '2019-12-27 15:38:13', '2019-12-27 15:38:13'),
(275, 0, 32, 'events', 'category_id', '18', 19, '2019-12-27 15:38:14', '2019-12-27 15:38:14'),
(276, 0, 32, 'events', 'category_id', '20', 19, '2019-12-27 15:38:14', '2019-12-27 15:38:14'),
(283, 0, 50, 'events', 'category_id', '1', 40, '2019-12-30 03:49:29', '2019-12-30 03:49:29'),
(284, 0, 50, 'events', 'category_id', '11', 40, '2019-12-30 03:49:29', '2019-12-30 03:49:29'),
(285, 0, 50, 'events', 'category_id', '20', 40, '2019-12-30 03:49:30', '2019-12-30 03:49:30'),
(286, 0, 32, 'events', 'category_id', '1', 41, '2019-12-31 00:44:05', '2019-12-31 00:44:05'),
(287, 0, 32, 'events', 'category_id', '11', 41, '2019-12-31 00:44:05', '2019-12-31 00:44:05'),
(288, 0, 32, 'events', 'category_id', '18', 41, '2019-12-31 00:44:05', '2019-12-31 00:44:05'),
(289, 0, 32, 'events', 'category_id', '20', 41, '2019-12-31 00:44:06', '2019-12-31 00:44:06'),
(290, 0, 32, 'events', 'category_id', '25', 41, '2019-12-31 00:44:06', '2019-12-31 00:44:06'),
(331, 0, 62, 'events', 'category_id', '1', 42, '2019-12-31 01:32:46', '2019-12-31 01:32:46'),
(332, 0, 62, 'events', 'category_id', '6', 42, '2019-12-31 01:32:46', '2019-12-31 01:32:46'),
(333, 0, 62, 'events', 'category_id', '11', 42, '2019-12-31 01:32:46', '2019-12-31 01:32:46'),
(334, 0, 62, 'events', 'category_id', '16', 42, '2019-12-31 01:32:46', '2019-12-31 01:32:46'),
(335, 0, 62, 'events', 'category_id', '18', 42, '2019-12-31 01:32:46', '2019-12-31 01:32:46'),
(336, 0, 62, 'events', 'category_id', '20', 42, '2019-12-31 01:32:46', '2019-12-31 01:32:46'),
(337, 0, 62, 'events', 'category_id', '25', 42, '2019-12-31 01:32:46', '2019-12-31 01:32:46'),
(338, 0, 62, 'events', 'category_id', '31', 42, '2019-12-31 01:32:47', '2019-12-31 01:32:47'),
(348, 0, 32, 'events', 'category_id', '1', 26, '2019-12-31 05:22:05', '2019-12-31 05:22:05'),
(349, 0, 32, 'events', 'category_id', '6', 26, '2019-12-31 05:22:05', '2019-12-31 05:22:05'),
(350, 0, 32, 'events', 'category_id', '11', 26, '2019-12-31 05:22:05', '2019-12-31 05:22:05'),
(351, 0, 32, 'events', 'category_id', '16', 26, '2019-12-31 05:22:05', '2019-12-31 05:22:05'),
(352, 0, 32, 'events', 'category_id', '18', 26, '2019-12-31 05:22:05', '2019-12-31 05:22:05'),
(353, 0, 32, 'events', 'category_id', '20', 26, '2019-12-31 05:22:05', '2019-12-31 05:22:05'),
(354, 0, 32, 'events', 'category_id', '1', 43, '2020-01-02 02:46:25', '2020-01-02 02:46:25'),
(355, 0, 32, 'events', 'category_id', '6', 43, '2020-01-02 02:46:25', '2020-01-02 02:46:25'),
(356, 0, 32, 'events', 'category_id', '11', 43, '2020-01-02 02:46:25', '2020-01-02 02:46:25'),
(357, 0, 32, 'events', 'category_id', '16', 43, '2020-01-02 02:46:25', '2020-01-02 02:46:25'),
(358, 0, 32, 'events', 'category_id', '18', 43, '2020-01-02 02:46:25', '2020-01-02 02:46:25'),
(359, 0, 32, 'events', 'category_id', '20', 43, '2020-01-02 02:46:25', '2020-01-02 02:46:25'),
(376, 0, 60, 'events', 'category_id', '1', 39, '2020-01-06 01:07:21', '2020-01-06 01:07:21'),
(377, 0, 60, 'events', 'category_id', '11', 39, '2020-01-06 01:07:21', '2020-01-06 01:07:21'),
(378, 0, 60, 'events', 'category_id', '18', 39, '2020-01-06 01:07:22', '2020-01-06 01:07:22'),
(379, 0, 60, 'events', 'category_id', '20', 39, '2020-01-06 01:07:22', '2020-01-06 01:07:22'),
(382, 0, 60, 'events', 'category_id', '11', 45, '2020-01-06 04:35:18', '2020-01-06 04:35:18'),
(383, 0, 60, 'events', 'category_id', '20', 45, '2020-01-06 04:35:18', '2020-01-06 04:35:18'),
(390, 0, 50, 'events', 'category_id', '1', 44, '2020-01-06 09:00:56', '2020-01-06 09:00:56'),
(391, 0, 50, 'events', 'category_id', '6', 44, '2020-01-06 09:00:56', '2020-01-06 09:00:56');

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
(62, 0, 44, 4, 20, 22, 'game', NULL, '2019-11-26 05:45:23', '2019-11-26 05:45:23'),
(63, 0, 44, 10, 20, 22, 'amenity', NULL, '2019-11-26 05:54:07', '2019-11-26 05:54:07'),
(64, 0, 34, 10, 25, 15, 'amenity', NULL, '2019-11-27 01:37:34', '2019-11-27 01:37:34'),
(65, 0, 31, 10, 11, 24, 'amenity', NULL, '2019-11-27 02:15:47', '2019-11-27 02:15:47'),
(66, 0, 31, 11, 11, 24, 'amenity', NULL, '2019-11-27 02:15:47', '2019-11-27 02:15:47'),
(67, 0, 31, 4, 11, 24, 'game', NULL, '2019-11-27 02:15:47', '2019-11-27 02:15:47'),
(68, 0, 31, 7, 11, 24, 'game', NULL, '2019-11-27 02:15:47', '2019-11-27 02:15:47'),
(74, 0, 34, 11, 20, 14, 'amenity', NULL, '2019-12-03 04:53:48', '2019-12-03 04:53:48'),
(81, 0, 34, 12, 20, 14, 'game', NULL, '2019-12-03 04:56:59', '2019-12-03 04:56:59'),
(87, 0, 34, 12, 11, 25, 'game', NULL, '2019-12-06 07:20:54', '2019-12-06 07:20:54'),
(89, 0, 59, 11, 1, 35, 'amenity', NULL, '2019-12-09 03:20:46', '2019-12-09 03:20:46'),
(90, 0, 59, 12, 1, 35, 'game', NULL, '2019-12-09 03:20:46', '2019-12-09 03:20:46'),
(92, 0, 44, 10, 11, 26, 'amenity', NULL, '2019-12-10 01:04:09', '2019-12-10 01:04:09'),
(100, 0, 44, 16, 11, 26, 'game', NULL, '2019-12-10 01:04:35', '2019-12-10 01:04:35'),
(101, 0, 59, 10, 11, 39, 'amenity', NULL, '2019-12-23 07:49:00', '2019-12-23 07:49:00'),
(102, 0, 59, 11, 11, 39, 'amenity', NULL, '2019-12-23 07:49:00', '2019-12-23 07:49:00'),
(103, 0, 59, 15, 11, 39, 'amenity', NULL, '2019-12-23 07:49:01', '2019-12-23 07:49:01'),
(104, 0, 59, 12, 11, 39, 'game', NULL, '2019-12-23 07:49:01', '2019-12-23 07:49:01'),
(105, 0, 59, 16, 11, 39, 'game', NULL, '2019-12-23 07:49:01', '2019-12-23 07:49:01');

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
  `payment_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paypal_account` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_account` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendor_categories`
--

INSERT INTO `vendor_categories` (`id`, `parent`, `user_id`, `category_id`, `title`, `business_url`, `price`, `status`, `publish`, `business_location`, `latitude`, `longitude`, `travel_distaince`, `capacity_type`, `sitting_capacity`, `standing_capacity`, `payment_status`, `paypal_account`, `stripe_account`, `created_at`, `updated_at`) VALUES
(1, 0, 31, 1, 'Prateek Dua Photography', 'prateek-dua-photography', 200, 3, 1, 'Miami Gardens Drive, Hialeah, FL, USA', '25.9409179', '-80.24732970000002', '0', 0, 0, 0, '2', 'photopaypal@gmail.com', 'photostripe@gmail.com', '2019-11-20 01:37:22', '2019-12-05 07:47:02'),
(2, 0, 31, 18, 'SVA Fotografs', 'sva-fotografs', 0, 3, 1, NULL, '31.633980', '74.872261', '0', 0, 0, 0, NULL, NULL, 'acct_1FqyztCe3tiKFEXp', '2019-11-20 01:45:40', '2019-12-18 04:11:09'),
(3, 1, 31, 29, NULL, NULL, 0, 1, 0, NULL, NULL, NULL, '0', 0, 0, 0, NULL, NULL, NULL, '2019-11-20 02:32:09', '2019-11-20 02:32:09'),
(4, 1, 31, 30, NULL, NULL, 0, 1, 0, NULL, NULL, NULL, '0', 0, 0, 0, NULL, NULL, NULL, '2019-11-20 02:32:09', '2019-11-20 02:32:09'),
(5, 1, 31, 35, NULL, NULL, 0, 1, 0, NULL, NULL, NULL, '0', 0, 0, 0, NULL, NULL, NULL, '2019-11-20 02:32:09', '2019-11-20 02:32:09'),
(6, 1, 31, 36, NULL, NULL, 0, 1, 0, NULL, NULL, NULL, '0', 0, 0, 0, NULL, NULL, NULL, '2019-11-20 02:32:09', '2019-11-20 02:32:09'),
(7, 1, 31, 37, NULL, NULL, 0, 1, 0, NULL, NULL, NULL, '0', 0, 0, 0, NULL, NULL, NULL, '2019-11-20 02:32:09', '2019-11-20 02:32:09'),
(8, 1, 31, 38, NULL, NULL, 0, 1, 0, NULL, NULL, NULL, '0', 0, 0, 0, NULL, NULL, NULL, '2019-11-20 02:32:09', '2019-11-20 02:32:09'),
(9, 1, 31, 39, NULL, NULL, 0, 1, 0, NULL, NULL, NULL, '0', 0, 0, 0, NULL, NULL, NULL, '2019-11-20 02:32:09', '2019-11-20 02:32:09'),
(10, 1, 31, 40, NULL, NULL, 0, 1, 0, NULL, NULL, NULL, '0', 0, 0, 0, NULL, NULL, NULL, '2019-11-20 02:32:09', '2019-11-20 02:32:09'),
(11, 0, 42, 1, 'Kanny Gill Photography', 'kanny-gill-photography', 1500, 3, 1, 'New York 112, North Patchogue, NY, USA', '40.78464160000001', '-73.00876929999998', '0', 0, 0, 0, NULL, NULL, NULL, '2019-11-20 03:23:14', '2019-11-27 06:35:23'),
(12, 11, 42, 30, NULL, NULL, 0, 1, 0, NULL, NULL, NULL, '0', 0, 0, 0, NULL, NULL, NULL, '2019-11-20 03:32:20', '2019-11-20 03:32:20'),
(13, 11, 42, 35, NULL, NULL, 0, 1, 0, NULL, NULL, NULL, '0', 0, 0, 0, NULL, NULL, NULL, '2019-11-20 03:32:20', '2019-11-20 03:32:20'),
(14, 0, 34, 20, 'Photos', 'photos', 500, 3, 1, 'Korniv Drive, Charlotte, NC, USA', '35.3127194', '-80.93545039999998', '0', 0, 0, 0, '0', 'hospital@yopmail.com', 'acct_1FlvGZCqcZPOBWPd', '2019-11-20 03:35:54', '2019-12-11 04:54:05'),
(15, 0, 34, 25, 'Decoration', 'decoration', 500, 3, 1, 'USC McCarthy Way, Los Angeles, CA, USA', '34.0205687', '-118.2813509', '0', 0, 0, 0, NULL, NULL, NULL, '2019-11-20 03:35:54', '2019-12-06 01:46:46'),
(16, 0, 34, 1, 'photos', 'photos-1', 25, 3, 1, 'Canal Street, Chinatown, NY, USA', '40.7163437', '-73.99638620000002', '0', 0, 0, 0, NULL, NULL, NULL, '2019-11-20 03:35:54', '2019-12-09 04:15:24'),
(17, 0, 40, 6, NULL, NULL, 0, 1, 0, NULL, NULL, NULL, '0', 0, 0, 0, NULL, NULL, NULL, '2019-11-20 05:19:29', '2019-11-20 05:19:29'),
(18, 2, 31, 44, NULL, NULL, 0, 1, 0, NULL, NULL, NULL, '0', 0, 0, 0, NULL, NULL, NULL, '2019-11-21 07:33:08', '2019-11-21 07:33:08'),
(19, 14, 34, 34, NULL, NULL, 0, 1, 0, NULL, NULL, NULL, '0', 0, 0, 0, NULL, NULL, NULL, '2019-11-22 04:58:59', '2019-11-22 04:58:59'),
(20, 15, 34, 13, NULL, NULL, 0, 1, 0, NULL, NULL, NULL, '0', 0, 0, 0, NULL, NULL, NULL, '2019-11-26 01:09:29', '2019-11-26 01:09:29'),
(21, 0, 44, 1, NULL, NULL, 0, 1, 0, NULL, NULL, NULL, '0', 0, 0, 0, NULL, NULL, NULL, '2019-11-26 01:20:16', '2019-11-26 01:20:16'),
(22, 0, 44, 20, 'Event planner      12', 'event-planer-123', 0, 3, 1, '', '40.6921118', '-74.1828812', '200', 0, 0, 0, NULL, NULL, 'acct_1Fu0uKGFWCumBAok', '2019-11-26 01:28:19', '2019-11-26 07:47:33'),
(23, 22, 44, 34, NULL, NULL, 0, 1, 0, NULL, NULL, NULL, '0', 0, 0, 0, NULL, NULL, NULL, '2019-11-26 04:43:03', '2019-11-26 04:43:03'),
(24, 0, 31, 11, 'Harkul Royal Events', 'harkul-royal-events', 5000, 3, 1, 'Miami Beach Boardwalk, Miami Beach, FL, USA', '25.8136198', '-80.1217557', '0', 3, 500, 200, NULL, NULL, NULL, '2019-11-27 01:36:18', '2019-11-28 05:42:33'),
(25, 0, 34, 11, 'Mohali Star', 'mohali-star', 500, 3, 1, '', '37.0902', '95.7129', '100', 0, 0, 0, NULL, NULL, NULL, '2019-11-27 02:13:22', '2019-12-02 04:47:18'),
(26, 0, 44, 11, 'Blush Banquet Hall', 'blush-banquet-hall', 2147483647, 3, 1, 'Miami Beach, FL, USA', '25.792240', '-80.134850', '0', 3, 200000, 300000, NULL, NULL, 'acct_1Fu1UYIc310lkye2', '2019-11-28 03:46:35', '2019-12-10 00:58:08'),
(27, 0, 54, 11, NULL, NULL, 0, 1, 0, NULL, NULL, NULL, '0', 0, 0, 0, NULL, NULL, NULL, '2019-12-05 01:06:49', '2019-12-05 01:06:49'),
(28, 0, 44, 45, NULL, NULL, 0, 1, 0, NULL, NULL, NULL, '0', 0, 0, 0, NULL, '', NULL, '2019-12-05 05:18:33', '2019-12-05 05:18:33'),
(29, 16, 34, 29, NULL, NULL, 0, 1, 0, NULL, NULL, NULL, '0', 0, 0, 0, NULL, NULL, NULL, '2019-12-06 08:27:48', '2019-12-06 08:27:48'),
(30, 16, 34, 30, NULL, NULL, 0, 1, 0, NULL, NULL, NULL, '0', 0, 0, 0, NULL, NULL, NULL, '2019-12-06 08:27:48', '2019-12-06 08:27:48'),
(31, 16, 34, 35, NULL, NULL, 0, 1, 0, NULL, NULL, NULL, '0', 0, 0, 0, NULL, NULL, NULL, '2019-12-06 08:27:48', '2019-12-06 08:27:48'),
(32, 16, 34, 36, NULL, NULL, 0, 1, 0, NULL, NULL, NULL, '0', 0, 0, 0, NULL, NULL, NULL, '2019-12-06 08:27:48', '2019-12-06 08:27:48'),
(33, 16, 34, 37, NULL, NULL, 0, 1, 0, NULL, NULL, NULL, '0', 0, 0, 0, NULL, NULL, NULL, '2019-12-06 08:27:48', '2019-12-06 08:27:48'),
(34, 0, 42, 11, NULL, NULL, 0, 1, 0, NULL, NULL, NULL, '0', 0, 0, 0, NULL, NULL, NULL, '2019-12-09 02:39:29', '2019-12-09 02:39:29'),
(35, 0, 59, 1, 'Kanny Photo Lab', 'kanny-photo-lab', 1000, 3, 1, 'Miami Gardens Drive, Hialeah, FL, USA', '25.9409179', '-80.24732970000002', '0', 0, 0, 0, NULL, NULL, NULL, '2019-12-09 03:10:43', '2019-12-09 04:22:24'),
(37, 35, 59, 37, NULL, NULL, 0, 1, 0, NULL, NULL, NULL, '0', 0, 0, 0, NULL, NULL, NULL, '2019-12-09 03:20:30', '2019-12-09 03:20:30'),
(38, 35, 59, 35, NULL, NULL, 0, 1, 0, NULL, NULL, NULL, '0', 0, 0, 0, NULL, NULL, NULL, '2019-12-20 06:32:27', '2019-12-20 06:32:27'),
(39, 0, 59, 11, 'Kanny Gill Venues', 'kanny-gill-venues', 1500, 3, 1, 'South Miami Boulevard, Durham, NC, USA', '35.9251643', '-78.8460943', '0', 3, 10, 100, NULL, NULL, 'acct_1Fu1UYIc310lkye2', '2019-12-23 07:42:11', '2019-12-26 13:25:53'),
(40, 39, 59, 46, NULL, NULL, 0, 1, 0, NULL, NULL, NULL, '0', 0, 0, 0, NULL, NULL, NULL, '2019-12-23 07:48:49', '2019-12-23 07:48:49'),
(41, 0, 64, 11, NULL, NULL, 0, 1, 0, NULL, NULL, NULL, '0', 0, 0, 0, NULL, NULL, NULL, '2019-12-30 07:21:02', '2019-12-30 07:21:02'),
(45, 0, 72, 5, NULL, NULL, 0, 1, 0, NULL, NULL, NULL, '0', 0, 0, 0, NULL, NULL, NULL, '2020-01-02 06:50:51', '2020-01-02 06:50:51'),
(46, 0, 72, 8, NULL, NULL, 0, 1, 0, NULL, NULL, NULL, '0', 0, 0, 0, NULL, NULL, NULL, '2020-01-02 06:50:51', '2020-01-02 06:50:51'),
(47, 0, 73, 41, NULL, NULL, 0, 1, 0, NULL, NULL, NULL, '0', 0, 0, 0, NULL, NULL, NULL, '2020-01-02 06:59:16', '2020-01-02 06:59:16'),
(48, 0, 74, 5, NULL, NULL, 0, 1, 0, NULL, NULL, NULL, '0', 0, 0, 0, NULL, NULL, NULL, '2020-01-07 09:52:59', '2020-01-07 09:52:59'),
(49, 0, 74, 7, NULL, NULL, 0, 1, 0, NULL, NULL, NULL, '0', 0, 0, 0, NULL, NULL, NULL, '2020-01-07 09:52:59', '2020-01-07 09:52:59'),
(50, 0, 74, 28, NULL, NULL, 0, 1, 0, NULL, NULL, NULL, '0', 0, 0, 0, NULL, NULL, NULL, '2020-01-07 09:52:59', '2020-01-07 09:52:59'),
(51, 0, 75, 7, NULL, NULL, 0, 1, 0, NULL, NULL, NULL, '0', 0, 0, 0, NULL, NULL, NULL, '2020-01-07 09:54:58', '2020-01-07 09:54:58');

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
(2, NULL, 'address', 'basic_information', 'Miami Gardens Drive, Hialeah, FL, USA', 31, 1, 1, '2019-11-20 01:45:48', '2019-12-02 01:10:49'),
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
(24, NULL, 'address', 'basic_information', 'New York 112, North Patchogue, NY, USA', 42, 1, 11, '2019-11-20 03:23:21', '2019-12-03 07:35:19'),
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
(53, NULL, 'business_name', 'basic_information', 'photos', 34, 1, 16, '2019-11-20 04:27:21', '2019-12-09 04:15:24'),
(54, NULL, 'address', 'basic_information', 'Canal Street, Chinatown, NY, USA', 34, 1, 16, '2019-11-20 04:27:22', '2019-12-09 04:15:24'),
(55, NULL, 'website', 'basic_information', 'http://google.com`', 34, 1, 16, '2019-11-20 04:27:22', '2019-12-09 04:15:24'),
(56, NULL, 'phone_number', 'basic_information', '4542128525', 34, 1, 16, '2019-11-20 04:27:22', '2019-12-09 04:15:24'),
(57, NULL, 'company', 'basic_information', 'photos', 34, 1, 16, '2019-11-20 04:27:22', '2019-12-09 04:15:24'),
(58, NULL, 'travel_distaince', 'basic_information', '52', 34, 1, 16, '2019-11-20 04:27:22', '2019-12-09 04:15:24'),
(59, NULL, 'min_price', 'basic_information', '25', 34, 1, 16, '2019-11-20 04:27:22', '2019-12-09 04:15:25'),
(60, NULL, 'cover_photo', 'basic_information', 'images/vendors/settings/1575884725Rg0IsmxvCk8NCuqusz5emenuhome.png', 34, 1, 16, '2019-11-20 04:27:22', '2019-12-09 04:15:25'),
(61, NULL, 'short_description', 'basic_information', 'its good', 34, 1, 16, '2019-11-20 04:27:22', '2019-12-09 04:15:24'),
(62, NULL, 'description', 'description', '<p>its too good</p>', 34, 25, 15, '2019-11-20 04:28:17', '2019-11-27 01:37:25'),
(64, NULL, 'prohibtion', 'prohibtion', '<p>its too good descr</p>', 34, 25, 15, '2019-11-20 04:30:00', '2019-11-27 01:39:10'),
(66, NULL, 'business_name', 'basic_information', 'Photos', 34, 20, 14, '2019-11-20 04:38:40', '2019-11-22 01:59:40'),
(67, NULL, 'address', 'basic_information', 'Korniv Drive, Charlotte, NC, USA', 34, 20, 14, '2019-11-20 04:38:40', '2019-12-03 04:24:48'),
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
(128, NULL, 'description', 'description', '<p>Knot Just Pictures is a photography company located in Noida and was founded by two professional photographers who started following their passion for photography in the year 2005, although their first wedding shoot was in 2012. The team has captured over a hundred weddings all around the nation and Oceania with its talented team of photographers</p>', 34, 20, 14, '2019-11-22 04:58:24', '2019-11-22 04:58:50'),
(132, NULL, 'prohibtion', 'prohibtion', '<p>Knot Just Pictures is a photography company located in Noida and was founded by two professional photographers who started following their passion for photography in the year 2005, although their first wedding shoot was in 2012. The team has captured over a hundred weddings all around the nation and Oceania with its talented team of photographers</p>', 34, 20, 14, '2019-11-22 05:01:31', '2019-11-22 05:01:40'),
(133, NULL, 'business_name', 'basic_information', 'Decoration', 34, 25, 15, '2019-11-22 05:06:01', '2019-11-22 06:45:27'),
(134, NULL, 'address', 'basic_information', 'USC McCarthy Way, Los Angeles, CA, USA', 34, 25, 15, '2019-11-22 05:06:01', '2019-12-06 01:46:46'),
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
(150, 0, 'style', 'styles', '1', 34, 25, 15, '2019-11-26 01:09:23', '2019-11-26 01:09:23'),
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
(201, NULL, 'address', 'basic_information', 'Miami Beach Boardwalk, Miami Beach, FL, USA', 31, 11, 24, '2019-11-27 01:43:23', '2019-11-28 05:42:33'),
(202, NULL, 'website', 'basic_information', 'http://49.249.236.30:6633', 31, 11, 24, '2019-11-27 01:43:23', '2019-11-27 02:07:41'),
(203, NULL, 'phone_number', 'basic_information', '1212878777', 31, 11, 24, '2019-11-27 01:43:23', '2019-11-27 02:07:41'),
(204, NULL, 'company', 'basic_information', 'Harkul Royal Events', 31, 11, 24, '2019-11-27 01:43:23', '2019-11-27 02:07:41'),
(205, NULL, 'travel_distaince', 'basic_information', '50', 31, 11, 24, '2019-11-27 01:43:23', '2019-11-27 02:07:42'),
(206, NULL, 'min_price', 'basic_information', '5000', 31, 11, 24, '2019-11-27 01:43:23', '2019-11-27 05:04:33'),
(207, NULL, 'cover_photo', 'basic_information', 'images/vendors/settings/1574840284qVVukcHSO7itargTBnd2-The-Manek-Chowk_new_s-591db2093df78cf5fa46dcae.jpg', 31, 11, 24, '2019-11-27 01:43:23', '2019-11-27 02:08:04'),
(208, NULL, 'short_description', 'basic_information', 'Royal Wedding Events is a banquet hall located in the city of Delhi. Choosing a wedding venue is one of the most difficult tasks which you will accomplish while planning it.', 31, 11, 24, '2019-11-27 01:43:23', '2019-11-27 02:07:41'),
(209, NULL, 'cover_video', 'basic_information', '', 31, 11, 24, '2019-11-27 01:43:26', '2019-11-27 01:43:26'),
(210, NULL, 'cover_video_image', 'basic_information', '', 31, 11, 24, '2019-11-27 01:43:26', '2019-11-27 01:43:26'),
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
(239, NULL, 'prohibtion', 'prohibtion', '<p>deftsoft des</p>', 34, 11, 25, '2019-11-27 02:21:30', '2019-11-27 02:21:41'),
(240, NULL, 'cover_video', 'basic_information', '', 42, 1, 11, '2019-11-27 06:24:11', '2019-11-27 06:24:11'),
(241, NULL, 'cover_video_image', 'basic_information', '', 42, 1, 11, '2019-11-27 06:24:11', '2019-11-27 06:24:11'),
(242, NULL, 'facebook_url', 'basic_information', 'https://www.facebook.com', 42, 1, 11, '2019-11-27 06:30:04', '2019-11-27 06:35:24'),
(243, NULL, 'linkedin_url', 'basic_information', 'https://www.lindedin.com', 42, 1, 11, '2019-11-27 06:30:04', '2019-11-27 06:35:24'),
(244, NULL, 'twitter_url', 'basic_information', 'https://www.twitter.com', 42, 1, 11, '2019-11-27 06:30:04', '2019-11-27 06:35:24'),
(245, NULL, 'instagram_url', 'basic_information', 'https://www.instagram.com', 42, 1, 11, '2019-11-27 06:30:04', '2019-11-27 06:35:24'),
(246, NULL, 'pinterest_url', 'basic_information', 'https://www.pinterest.com', 42, 1, 11, '2019-11-27 06:30:04', '2019-11-27 06:35:24'),
(247, NULL, 'facebook_url', 'basic_information', NULL, 31, 1, 1, '2019-11-28 02:53:18', '2019-11-28 02:54:25'),
(248, NULL, 'linkedin_url', 'basic_information', NULL, 31, 1, 1, '2019-11-28 02:53:20', '2019-11-28 02:54:56'),
(249, NULL, 'twitter_url', 'basic_information', 'https://www.facebook.com/', 31, 1, 1, '2019-11-28 02:53:20', '2019-11-28 02:53:46'),
(250, NULL, 'instagram_url', 'basic_information', 'https://www.facebook.com/', 31, 1, 1, '2019-11-28 02:53:21', '2019-11-28 02:53:46'),
(251, NULL, 'pinterest_url', 'basic_information', 'https://www.facebook.com/', 31, 1, 1, '2019-11-28 02:53:21', '2019-11-28 02:53:46'),
(252, NULL, 'facebook_url', 'basic_information', 'https://google.com', 31, 11, 24, '2019-11-28 03:36:34', '2019-11-29 04:33:09'),
(253, NULL, 'linkedin_url', 'basic_information', 'https://google.com', 31, 11, 24, '2019-11-28 03:36:42', '2019-11-29 04:33:10'),
(254, NULL, 'twitter_url', 'basic_information', 'https://google.com', 31, 11, 24, '2019-11-28 03:36:43', '2019-11-29 04:33:10'),
(255, NULL, 'instagram_url', 'basic_information', 'https://google.com', 31, 11, 24, '2019-11-28 03:36:43', '2019-11-29 04:33:10'),
(256, NULL, 'pinterest_url', 'basic_information', 'https://google.com', 31, 11, 24, '2019-11-28 03:36:43', '2019-11-29 04:33:10'),
(257, NULL, 'business_name', 'basic_information', 'Blush Banquet Hall', 44, 11, 26, '2019-11-28 03:46:45', '2019-11-28 04:13:55'),
(258, NULL, 'address', 'basic_information', 'Miami Beach, FL, USA', 44, 11, 26, '2019-11-28 03:46:45', '2019-11-28 04:13:55'),
(259, NULL, 'website', 'basic_information', 'https://blushbanquethallcom/', 44, 11, 26, '2019-11-28 03:46:45', '2019-11-28 04:20:22'),
(260, NULL, 'phone_number', 'basic_information', '18187538585', 44, 11, 26, '2019-11-28 03:46:45', '2019-11-28 04:13:55'),
(261, NULL, 'company', 'basic_information', 'Alecan Marketing Solutions', 44, 11, 26, '2019-11-28 03:46:45', '2019-11-28 04:13:55'),
(262, NULL, 'travel_distaince', 'basic_information', '10000000000000000000000000000000000000000000000000', 44, 11, 26, '2019-11-28 03:46:45', '2019-12-10 00:26:28'),
(263, NULL, 'min_price', 'basic_information', '5000000000', 44, 11, 26, '2019-11-28 03:46:45', '2019-12-10 00:26:28'),
(264, NULL, 'cover_photo', 'basic_information', 'images/vendors/settings/1575630243OiYw7zv7HhKbXy9hLiDY100s14000000wdapw4A33_C_750_350.jpg', 44, 11, 26, '2019-11-28 03:46:46', '2019-12-06 05:34:04'),
(265, NULL, 'short_description', 'basic_information', 'Combining a trendy, upscale atmosphere with timeless elegance, Blush Banquet Hall is certain to be the perfect event venue for your special occasion. A versatile and stunning banquet hall, Blush is perfect not only for weddings, but also for any special event, including quinceañeras, Sweet 16s, bar and bat mitzvahs, anniversaries, baby showers, christenings, holiday parties, and corporate events such as awards galas and fundraisers. When you celebrate with Blush Banquet Hall, you’re giving your guests an incredible experience that they will never forget.', 44, 11, 26, '2019-11-28 03:46:46', '2019-11-28 04:13:55'),
(266, NULL, 'facebook_url', 'basic_information', 'https://www.facebook.com/', 44, 11, 26, '2019-11-28 03:46:46', '2019-11-28 04:13:55'),
(267, NULL, 'cover_video', 'basic_information', '', 44, 11, 26, '2019-11-28 03:46:50', '2019-11-28 03:46:50'),
(268, NULL, 'cover_video_image', 'basic_information', '', 44, 11, 26, '2019-11-28 03:46:50', '2019-11-28 03:46:50'),
(269, NULL, 'linkedin_url', 'basic_information', 'https://www.linkedin.com/', 44, 11, 26, '2019-11-28 03:46:50', '2019-11-28 04:13:55'),
(270, NULL, 'twitter_url', 'basic_information', 'https://www.twitter.com/', 44, 11, 26, '2019-11-28 03:46:50', '2019-11-28 04:13:55'),
(271, NULL, 'instagram_url', 'basic_information', 'https://www.instagram.com/', 44, 11, 26, '2019-11-28 03:46:51', '2019-11-28 04:13:55'),
(272, NULL, 'pinterest_url', 'basic_information', NULL, 44, 11, 26, '2019-11-28 03:46:51', '2019-11-28 04:13:56'),
(273, NULL, 'prohibtion', 'prohibtion', '<p>1.No Smoking&nbsp;</p>\r\n\r\n<p>2. No Fireworks&nbsp;</p>\r\n\r\n<p>3 Gun</p>', 44, 11, 26, '2019-11-28 04:20:33', '2019-12-10 01:27:46'),
(274, NULL, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/15749351820UiMXLFqdLTXMOpGPRir-BH.jpg', 44, 11, 26, '2019-11-28 04:29:42', '2019-11-28 04:29:42'),
(275, NULL, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/1574935182rWL9dyILou2mqVkOBaRK-blush-banquet-hall-001.jpg', 44, 11, 26, '2019-11-28 04:29:42', '2019-11-28 04:29:42'),
(276, NULL, 'video', 'videoGallery', '{"title":"Blush Banquet hall","link":"https:\\/\\/www.youtube.com\\/embed\\/q5ny8dsqWIs","image":"images\\/vendors\\/gallery\\/1574935683gyBu4a40683dp60ud1K4-BH.jpg"}', 44, 11, 26, '2019-11-28 04:38:03', '2019-11-28 04:38:03'),
(277, NULL, 'description', 'description', '<p>Combining a trendy, upscale atmosphere with timeless elegance, Blush Banquet Hall is certain to be the perfect event venue for your special occasion. A versatile and stunning banquet hall, Blush is perfect not only for weddings, but also for any special event, including quincea&ntilde;eras, Sweet 16s, bar and bat mitzvahs, anniversaries, baby showers, christenings, holiday parties, and corporate events such as awards galas and fundraisers. When you celebrate with Blush Banquet Hall, you&rsquo;re giving your guests an incredible experience that they will never forget.</p>', 44, 11, 26, '2019-11-28 04:41:29', '2019-11-28 04:42:06'),
(281, NULL, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/1574948099EdXf6GI2mkVU8D3Y7C14--dsc2726_15_68762.jpg', 31, 24, 0, '2019-11-28 08:04:59', '2019-11-28 08:04:59'),
(285, NULL, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/1574949047MNMthrwbaca97IsqY2T9TheManekChowk_new_s591db2093df78cf5fa46dcae.jpg', 31, 11, 24, '2019-11-28 08:20:47', '2019-11-28 08:20:47'),
(286, NULL, 'facebook_url', 'basic_information', NULL, 34, 20, 14, '2019-11-29 00:31:52', '2019-12-03 04:24:48'),
(287, NULL, 'linkedin_url', 'basic_information', NULL, 34, 20, 14, '2019-11-29 00:31:55', '2019-12-03 04:24:48'),
(288, NULL, 'twitter_url', 'basic_information', NULL, 34, 20, 14, '2019-11-29 00:31:55', '2019-12-03 04:24:48'),
(289, NULL, 'instagram_url', 'basic_information', NULL, 34, 20, 14, '2019-11-29 00:31:55', '2019-12-03 04:24:48'),
(290, NULL, 'pinterest_url', 'basic_information', NULL, 34, 20, 14, '2019-11-29 00:31:55', '2019-12-03 04:24:48'),
(294, NULL, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/1575017384w2dUaCj5N1SwRZyKHaTv20191125.png', 34, 20, 14, '2019-11-29 03:19:44', '2019-11-29 03:19:44'),
(297, NULL, 'facebook_url', 'basic_information', '', 34, 11, 25, '2019-11-29 05:32:44', '2019-11-29 05:32:44'),
(298, NULL, 'linkedin_url', 'basic_information', '', 34, 11, 25, '2019-11-29 05:32:46', '2019-11-29 05:32:46'),
(299, NULL, 'twitter_url', 'basic_information', '', 34, 11, 25, '2019-11-29 05:32:46', '2019-11-29 05:32:46'),
(300, NULL, 'instagram_url', 'basic_information', '', 34, 11, 25, '2019-11-29 05:32:46', '2019-11-29 05:32:46'),
(301, NULL, 'pinterest_url', 'basic_information', '', 34, 11, 25, '2019-11-29 05:32:46', '2019-11-29 05:32:46'),
(302, NULL, 'video', 'videoGallery', '{"title":"XXL","link":"https:\\/\\/www.youtube.com\\/embed\\/ICej-ufgFF4","image":"images\\/vendors\\/gallery\\/1575033501KqXB300TKpj15PVY8ts1istockphoto953790424612x612.jpg"}', 31, 1, 1, '2019-11-29 07:48:21', '2019-11-29 07:48:21'),
(303, NULL, 'min_guest', 'basic_information', '10', 31, 1, 1, '2019-12-02 01:09:44', '2019-12-02 01:10:49'),
(304, NULL, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/1575269723vPOz9ZFnnWueISSpYdZGdiningbuffetstyle.jpg', 44, 11, 26, '2019-12-02 01:25:23', '2019-12-02 01:25:23'),
(307, NULL, 'min_guest', 'basic_information', '5000000000', 44, 11, 26, '2019-12-02 01:31:05', '2019-12-10 00:26:28'),
(311, NULL, 'min_guest', 'basic_information', '', 34, 11, 25, '2019-12-02 06:11:30', '2019-12-02 06:11:30'),
(312, NULL, 'min_guest', 'basic_information', '5', 34, 20, 14, '2019-12-02 06:51:11', '2019-12-03 04:24:48'),
(313, NULL, 'video', 'videoGallery', '{"title":"food food","link":"https:\\/\\/www.youtube.com\\/embed\\/hMy5za-m5Ew","image":"images\\/vendors\\/gallery\\/1575291349odTKPCOa71GXAG2RMyANmenuaboutus.png"}', 34, 20, 14, '2019-12-02 07:25:49', '2019-12-02 07:25:49'),
(316, NULL, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/1575297397O4uvv2wQe0wnbGbpmBg7band2.png', 34, 20, 14, '2019-12-02 09:06:37', '2019-12-02 09:06:37'),
(317, NULL, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/1575297472nig2aKQjjwnTSHtFqY9tfavourite.png', 34, 20, 14, '2019-12-02 09:07:52', '2019-12-02 09:07:52'),
(318, NULL, 'facebook_url', 'basic_information', NULL, 34, 25, 15, '2019-12-03 02:17:05', '2019-12-06 01:46:46'),
(319, NULL, 'facebook_url', 'basic_information', NULL, 34, 1, 16, '2019-12-03 04:05:41', '2019-12-09 04:15:25'),
(320, NULL, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/1575366911mu0zaFjxJYG3pbQi9vfQballoons.png', 34, 20, 14, '2019-12-03 04:25:11', '2019-12-03 04:25:11'),
(327, 0, 'style', 'styles', '1', 34, 20, 14, '2019-12-03 04:48:49', '2019-12-03 04:48:49'),
(328, 0, 'style', 'styles', '3', 34, 20, 14, '2019-12-03 04:48:49', '2019-12-03 04:48:49'),
(330, 0, 'season', 'seasons', '4', 34, 20, 14, '2019-12-03 05:02:13', '2019-12-03 05:02:13'),
(331, NULL, 'min_guest', 'basic_information', '100', 42, 1, 11, '2019-12-03 05:24:10', '2019-12-03 07:35:19'),
(332, 0, 'style', 'styles', '1', 42, 1, 11, '2019-12-03 06:16:43', '2019-12-03 06:16:43'),
(333, 0, 'style', 'styles', '3', 42, 1, 11, '2019-12-03 06:16:43', '2019-12-03 06:16:43'),
(334, 0, 'season', 'seasons', '3', 42, 1, 11, '2019-12-03 06:18:57', '2019-12-03 06:18:57'),
(335, NULL, 'business_name', 'basic_information', '', 54, 11, 27, '2019-12-05 01:06:56', '2019-12-05 01:06:56'),
(336, NULL, 'address', 'basic_information', '', 54, 11, 27, '2019-12-05 01:06:56', '2019-12-05 01:06:56'),
(337, NULL, 'website', 'basic_information', '', 54, 11, 27, '2019-12-05 01:06:56', '2019-12-05 01:06:56'),
(338, NULL, 'phone_number', 'basic_information', '', 54, 11, 27, '2019-12-05 01:06:56', '2019-12-05 01:06:56'),
(339, NULL, 'company', 'basic_information', '', 54, 11, 27, '2019-12-05 01:06:56', '2019-12-05 01:06:56'),
(340, NULL, 'travel_distaince', 'basic_information', '', 54, 11, 27, '2019-12-05 01:06:56', '2019-12-05 01:06:56'),
(341, NULL, 'min_price', 'basic_information', '', 54, 11, 27, '2019-12-05 01:06:56', '2019-12-05 01:06:56'),
(342, NULL, 'cover_photo', 'basic_information', '', 54, 11, 27, '2019-12-05 01:06:56', '2019-12-05 01:06:56'),
(343, NULL, 'short_description', 'basic_information', '', 54, 11, 27, '2019-12-05 01:06:57', '2019-12-05 01:06:57'),
(344, NULL, 'facebook_url', 'basic_information', '', 54, 11, 27, '2019-12-05 01:06:57', '2019-12-05 01:06:57'),
(345, NULL, 'min_guest', 'basic_information', '', 54, 11, 27, '2019-12-05 01:07:42', '2019-12-05 01:07:42'),
(346, NULL, 'cover_video', 'basic_information', '', 54, 11, 27, '2019-12-05 01:07:42', '2019-12-05 01:07:42'),
(347, NULL, 'cover_video_image', 'basic_information', '', 54, 11, 27, '2019-12-05 01:07:42', '2019-12-05 01:07:42'),
(348, NULL, 'linkedin_url', 'basic_information', '', 54, 11, 27, '2019-12-05 01:07:42', '2019-12-05 01:07:42'),
(349, NULL, 'twitter_url', 'basic_information', '', 54, 11, 27, '2019-12-05 01:07:42', '2019-12-05 01:07:42'),
(350, NULL, 'instagram_url', 'basic_information', '', 54, 11, 27, '2019-12-05 01:07:42', '2019-12-05 01:07:42'),
(351, NULL, 'pinterest_url', 'basic_information', '', 54, 11, 27, '2019-12-05 01:07:42', '2019-12-05 01:07:42'),
(352, NULL, 'business_name', 'basic_information', '', 44, 45, 28, '2019-12-05 05:18:40', '2019-12-05 05:18:40'),
(353, NULL, 'address', 'basic_information', '', 44, 45, 28, '2019-12-05 05:18:40', '2019-12-05 05:18:40'),
(354, NULL, 'website', 'basic_information', '', 44, 45, 28, '2019-12-05 05:18:40', '2019-12-05 05:18:40'),
(355, NULL, 'phone_number', 'basic_information', '', 44, 45, 28, '2019-12-05 05:18:40', '2019-12-05 05:18:40'),
(356, NULL, 'company', 'basic_information', '', 44, 45, 28, '2019-12-05 05:18:40', '2019-12-05 05:18:40'),
(357, NULL, 'travel_distaince', 'basic_information', '', 44, 45, 28, '2019-12-05 05:18:40', '2019-12-05 05:18:40'),
(358, NULL, 'min_price', 'basic_information', '', 44, 45, 28, '2019-12-05 05:18:40', '2019-12-05 05:18:40'),
(359, NULL, 'cover_photo', 'basic_information', '', 44, 45, 28, '2019-12-05 05:18:41', '2019-12-05 05:18:41'),
(360, NULL, 'short_description', 'basic_information', '', 44, 45, 28, '2019-12-05 05:18:41', '2019-12-05 05:18:41'),
(361, NULL, 'facebook_url', 'basic_information', '', 44, 45, 28, '2019-12-05 05:18:41', '2019-12-05 05:18:41'),
(362, NULL, 'min_guest', 'basic_information', '', 44, 45, 28, '2019-12-05 07:35:28', '2019-12-05 07:35:28'),
(363, NULL, 'cover_video', 'basic_information', '', 44, 45, 28, '2019-12-05 07:35:28', '2019-12-05 07:35:28'),
(364, NULL, 'cover_video_image', 'basic_information', '', 44, 45, 28, '2019-12-05 07:35:28', '2019-12-05 07:35:28'),
(365, NULL, 'linkedin_url', 'basic_information', '', 44, 45, 28, '2019-12-05 07:35:28', '2019-12-05 07:35:28'),
(366, NULL, 'twitter_url', 'basic_information', '', 44, 45, 28, '2019-12-05 07:35:28', '2019-12-05 07:35:28'),
(367, NULL, 'instagram_url', 'basic_information', '', 44, 45, 28, '2019-12-05 07:35:28', '2019-12-05 07:35:28'),
(368, NULL, 'pinterest_url', 'basic_information', '', 44, 45, 28, '2019-12-05 07:35:28', '2019-12-05 07:35:28'),
(369, NULL, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/1575551177RJjAA4GylSUoXdpsX6dj100s14000000wdapw4A33_C_750_350.jpg', 44, 11, 26, '2019-12-05 07:36:17', '2019-12-05 07:36:17'),
(370, NULL, 'min_guest', 'basic_information', '3', 34, 25, 15, '2019-12-06 01:46:25', '2019-12-06 01:46:47'),
(371, NULL, 'linkedin_url', 'basic_information', NULL, 34, 25, 15, '2019-12-06 01:46:25', '2019-12-06 01:46:46'),
(372, NULL, 'twitter_url', 'basic_information', NULL, 34, 25, 15, '2019-12-06 01:46:25', '2019-12-06 01:46:47'),
(373, NULL, 'instagram_url', 'basic_information', NULL, 34, 25, 15, '2019-12-06 01:46:26', '2019-12-06 01:46:47'),
(374, NULL, 'pinterest_url', 'basic_information', NULL, 34, 25, 15, '2019-12-06 01:46:26', '2019-12-06 01:46:47');
INSERT INTO `vendor_category_meta_datas` (`id`, `parent`, `key`, `type`, `keyValue`, `user_id`, `category_id`, `vendor_category_id`, `created_at`, `updated_at`) VALUES
(378, NULL, 'facebook_url', 'basic_information', '', 44, 20, 22, '2019-12-06 04:32:02', '2019-12-06 04:32:02'),
(383, 0, 'season', 'seasons', '4', 34, 11, 25, '2019-12-06 06:47:51', '2019-12-06 06:47:51'),
(388, NULL, 'style', 'styles', '', 42, 11, 34, '2019-12-09 02:42:24', '2019-12-09 02:42:24'),
(389, NULL, 'business_name', 'basic_information', 'Kanny Photo Lab', 59, 1, 35, '2019-12-09 03:10:48', '2019-12-09 04:20:34'),
(390, NULL, 'address', 'basic_information', 'Miami Gardens Drive, Hialeah, FL, USA', 59, 1, 35, '2019-12-09 03:10:48', '2019-12-09 04:20:34'),
(391, NULL, 'website', 'basic_information', 'https://www.amazon.com', 59, 1, 35, '2019-12-09 03:10:48', '2019-12-09 04:20:34'),
(392, NULL, 'phone_number', 'basic_information', '9465470549', 59, 1, 35, '2019-12-09 03:10:48', '2019-12-09 04:20:34'),
(393, NULL, 'company', 'basic_information', 'Kanny Photo Lab', 59, 1, 35, '2019-12-09 03:10:48', '2019-12-09 04:20:34'),
(394, NULL, 'travel_distaince', 'basic_information', '50', 59, 1, 35, '2019-12-09 03:10:48', '2019-12-09 04:20:34'),
(395, NULL, 'min_price', 'basic_information', '1000', 59, 1, 35, '2019-12-09 03:10:48', '2019-12-09 04:20:35'),
(396, NULL, 'cover_photo', 'basic_information', 'images/vendors/settings/1575885035TXodYRMS3x9cS1SqyMLkk.jpg', 59, 1, 35, '2019-12-09 03:10:48', '2019-12-09 04:20:35'),
(397, NULL, 'short_description', 'basic_information', 'Kanny Photo Lab is a full-service wedding photography and videography company based in Mokena, Illinois. This talented team serves each client with effortless professionalism, capturing their wedding nuptials with precision and care.', 59, 1, 35, '2019-12-09 03:10:48', '2019-12-09 04:20:34'),
(398, NULL, 'facebook_url', 'basic_information', 'https://www.facebook.com', 59, 1, 35, '2019-12-09 03:10:48', '2019-12-09 04:20:35'),
(399, NULL, 'min_guest', 'basic_information', '50', 59, 1, 35, '2019-12-09 03:10:50', '2019-12-09 04:20:35'),
(400, NULL, 'cover_video', 'basic_information', '', 59, 1, 35, '2019-12-09 03:10:50', '2019-12-09 03:10:50'),
(401, NULL, 'cover_video_image', 'basic_information', '', 59, 1, 35, '2019-12-09 03:10:50', '2019-12-09 03:10:50'),
(402, NULL, 'linkedin_url', 'basic_information', 'https://www.linkedin.com', 59, 1, 35, '2019-12-09 03:10:50', '2019-12-09 04:20:35'),
(403, NULL, 'twitter_url', 'basic_information', 'https://www.twitter.com', 59, 1, 35, '2019-12-09 03:10:50', '2019-12-09 04:20:35'),
(404, NULL, 'instagram_url', 'basic_information', 'https://www.instagram.com', 59, 1, 35, '2019-12-09 03:10:50', '2019-12-09 04:20:35'),
(405, NULL, 'pinterest_url', 'basic_information', 'https://www.pinterest.com', 59, 1, 35, '2019-12-09 03:10:50', '2019-12-09 04:20:35'),
(406, NULL, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/1575881129CzLCNf4IfC0ApwPjtco715747561420CECWnSZ7yaVhvavQEMn14997.png', 59, 1, 35, '2019-12-09 03:15:29', '2019-12-09 03:15:29'),
(407, NULL, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/1575881129Y13btcL50pGskR4RpT1Vanchez4_51_698336157383070553519.jpg', 59, 1, 35, '2019-12-09 03:15:29', '2019-12-09 03:15:29'),
(408, NULL, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/1575881129KVNITIDvHRpu4eGW8SoMsanchex2_51_698336157383070987838.jpg', 59, 1, 35, '2019-12-09 03:15:29', '2019-12-09 03:15:29'),
(409, NULL, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/1575881129boJL7coVKTrsHoIcxsWcsanchez1_51_698336157383071560610.jpg', 59, 1, 35, '2019-12-09 03:15:29', '2019-12-09 03:15:29'),
(410, NULL, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/1575881129sxTMVkrxhoKBb981CqeDt10_1435802609300solo019.jpg', 59, 1, 35, '2019-12-09 03:15:29', '2019-12-09 03:15:29'),
(411, NULL, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/1575881129t1kt22bDaxKIi8IFTYCdt20_1312238515529Pwc10011.jpg', 59, 1, 35, '2019-12-09 03:15:29', '2019-12-09 03:15:29'),
(412, NULL, 'video', 'videoGallery', '{"title":"Wedding Creative","link":"https:\\/\\/www.youtube.com\\/embed\\/EBv48eIcwiQ","image":"images\\/vendors\\/gallery\\/1575881237iWj2brlfHOZj8PjYqVfSt10_1435802609300solo019.jpg"}', 59, 1, 35, '2019-12-09 03:17:17', '2019-12-09 03:17:17'),
(413, NULL, 'description', 'description', '<h2>About Kanny&nbsp;Photo Lab</h2>\r\n\r\n<p>Kanny Photo Lab is a Detroit, Michigan-based wedding company specializing in Photography, Video, DJ and Photo Booths. The team at Kanny Photo Lab is committed to excellency both in service and in craft. They&rsquo;ll use their professional planning and service skills to help find the right package for your vision and budget. With over 15 years of experience in their field, you can trust this team of award-winning videographers to provide a timeless, beautiful photography and video experience that you&rsquo;ll enjoy for years to come. Inquire about Fairytale Productions Wedding Services today to reserve your wedding date!</p>', 59, 1, 35, '2019-12-09 03:19:03', '2019-12-09 03:20:15'),
(417, NULL, 'prohibtion', 'prohibtion', '<p>Lorium Epsum is dummy Text value to show for Testing.&nbsp;Lorium Epsum is dummy Text value to show for Testing.&nbsp;Lorium Epsum is dummy Text value to show for Testing.&nbsp;Lorium Epsum is dummy Text value to show for Testing.&nbsp;Lorium Epsum is dummy Text value to show for Testing.</p>', 59, 1, 35, '2019-12-09 03:28:03', '2019-12-09 03:28:26'),
(418, NULL, 'min_guest', 'basic_information', '5', 34, 1, 16, '2019-12-09 04:00:51', '2019-12-09 04:15:25'),
(419, NULL, 'linkedin_url', 'basic_information', NULL, 34, 1, 16, '2019-12-09 04:00:51', '2019-12-09 04:15:25'),
(420, NULL, 'twitter_url', 'basic_information', NULL, 34, 1, 16, '2019-12-09 04:00:51', '2019-12-09 04:15:25'),
(421, NULL, 'instagram_url', 'basic_information', NULL, 34, 1, 16, '2019-12-09 04:00:51', '2019-12-09 04:15:25'),
(422, NULL, 'pinterest_url', 'basic_information', NULL, 34, 1, 16, '2019-12-09 04:00:51', '2019-12-09 04:15:25'),
(423, NULL, 'facebook_url', 'basic_information', '', 44, 1, 21, '2019-12-10 00:17:57', '2019-12-10 00:17:57'),
(424, NULL, 'min_guest', 'basic_information', '', 44, 1, 21, '2019-12-10 00:18:02', '2019-12-10 00:18:02'),
(425, NULL, 'linkedin_url', 'basic_information', '', 44, 1, 21, '2019-12-10 00:18:02', '2019-12-10 00:18:02'),
(426, NULL, 'twitter_url', 'basic_information', '', 44, 1, 21, '2019-12-10 00:18:02', '2019-12-10 00:18:02'),
(427, NULL, 'instagram_url', 'basic_information', '', 44, 1, 21, '2019-12-10 00:18:02', '2019-12-10 00:18:02'),
(428, NULL, 'pinterest_url', 'basic_information', '', 44, 1, 21, '2019-12-10 00:18:02', '2019-12-10 00:18:02'),
(429, NULL, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/1575957487V6JcT3DIPxVTg2t1yYw1Penguins.jpg', 44, 11, 26, '2019-12-10 00:28:07', '2019-12-10 00:28:07'),
(430, NULL, 'video', 'videoGallery', '{"title":"Wedding plan","link":"https:\\/\\/www.youtube.com\\/embed\\/waqXUFqTAlI","image":"images\\/vendors\\/gallery\\/1575958322oEXcBwnhNwMRkgsAri1B2evai5d.jpg"}', 44, 11, 26, '2019-12-10 00:42:02', '2019-12-10 00:42:02'),
(431, NULL, 'video', 'videoGallery', '{"title":"Banquet Banquet Banquet Banque","link":"https:\\/\\/www.youtube.com\\/embed\\/l84WVIa5Zzg","image":"images\\/vendors\\/gallery\\/1575958727uK3iDi5Uv9dLMaSpABe52evai5d.jpg"}', 44, 11, 26, '2019-12-10 00:48:47', '2019-12-10 00:49:33'),
(432, 0, 'style', 'styles', '1', 44, 11, 26, '2019-12-10 01:01:29', '2019-12-10 01:01:29'),
(433, 0, 'style', 'styles', '4', 44, 11, 26, '2019-12-10 01:01:29', '2019-12-10 01:01:29'),
(434, 0, 'season', 'seasons', '3', 44, 11, 26, '2019-12-10 01:09:14', '2019-12-10 01:09:14'),
(435, 0, 'season', 'seasons', '4', 44, 11, 26, '2019-12-10 01:09:14', '2019-12-10 01:09:14'),
(436, 0, 'season', 'seasons', '5', 44, 11, 26, '2019-12-10 01:09:14', '2019-12-10 01:09:14'),
(437, NULL, 'description', 'description', '', 42, 11, 34, '2019-12-10 04:24:55', '2019-12-10 04:24:55'),
(439, 0, 'season', 'seasons', '3', 59, 1, 35, '2019-12-20 06:04:25', '2019-12-20 06:04:25'),
(440, 0, 'season', 'seasons', '5', 59, 1, 35, '2019-12-20 06:04:25', '2019-12-20 06:04:25'),
(441, NULL, 'business_name', 'basic_information', 'Kanny Gill Venues', 59, 11, 39, '2019-12-23 07:42:15', '2019-12-23 07:44:40'),
(442, NULL, 'address', 'basic_information', 'South Miami Boulevard, Durham, NC, USA', 59, 11, 39, '2019-12-23 07:42:15', '2019-12-23 07:44:40'),
(443, NULL, 'website', 'basic_information', 'https://kanny-venue.com', 59, 11, 39, '2019-12-23 07:42:15', '2019-12-23 07:44:40'),
(444, NULL, 'phone_number', 'basic_information', '9465470549', 59, 11, 39, '2019-12-23 07:42:15', '2019-12-23 07:44:40'),
(445, NULL, 'company', 'basic_information', 'Kanny\'s Venues', 59, 11, 39, '2019-12-23 07:42:15', '2019-12-23 07:44:40'),
(446, NULL, 'travel_distaince', 'basic_information', '100', 59, 11, 39, '2019-12-23 07:42:15', '2019-12-23 07:44:40'),
(447, NULL, 'min_price', 'basic_information', '1500', 59, 11, 39, '2019-12-23 07:42:15', '2019-12-23 07:44:40'),
(448, NULL, 'cover_photo', 'basic_information', 'images/vendors/settings/1577106880MWqFKZPXz32sQ1PO9P9j15747561420CECWnSZ7yaVhvavQEMn14997.png', 59, 11, 39, '2019-12-23 07:42:15', '2019-12-23 07:44:40'),
(449, NULL, 'short_description', 'basic_information', 'Lorium Epsum for Kanny Business', 59, 11, 39, '2019-12-23 07:42:15', '2019-12-23 07:44:40'),
(450, NULL, 'facebook_url', 'basic_information', 'https://www.facebook.com', 59, 11, 39, '2019-12-23 07:42:15', '2019-12-23 07:44:40'),
(451, NULL, 'min_guest', 'basic_information', '10', 59, 11, 39, '2019-12-23 07:42:18', '2019-12-23 07:44:40'),
(452, NULL, 'cover_video', 'basic_information', '', 59, 11, 39, '2019-12-23 07:42:18', '2019-12-23 07:42:18'),
(453, NULL, 'cover_video_image', 'basic_information', '', 59, 11, 39, '2019-12-23 07:42:19', '2019-12-23 07:42:19'),
(454, NULL, 'linkedin_url', 'basic_information', 'https://linedin.com', 59, 11, 39, '2019-12-23 07:42:19', '2019-12-23 07:44:40'),
(455, NULL, 'twitter_url', 'basic_information', 'https://www.twitter.com', 59, 11, 39, '2019-12-23 07:42:19', '2019-12-23 07:44:40'),
(456, NULL, 'instagram_url', 'basic_information', 'https://insta.com', 59, 11, 39, '2019-12-23 07:42:19', '2019-12-23 07:44:40'),
(457, NULL, 'pinterest_url', 'basic_information', 'https://www.pinta.com', 59, 11, 39, '2019-12-23 07:42:19', '2019-12-23 07:44:40'),
(458, NULL, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/1577106896ev04qswes77AfWI2oRQ115747561420CECWnSZ7yaVhvavQEMn14997.png', 59, 11, 39, '2019-12-23 07:44:56', '2019-12-23 07:44:56'),
(459, NULL, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/15771068968RhGupypmAqisfHwXmfoanchez4_51_698336157383070553519.jpg', 59, 11, 39, '2019-12-23 07:44:56', '2019-12-23 07:44:56'),
(460, NULL, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/1577106896UFmIr7sPusQMDdHFJswvsanchez1_51_698336157383071560610.jpg', 59, 11, 39, '2019-12-23 07:44:56', '2019-12-23 07:44:56'),
(461, NULL, 'video', 'videoGallery', '{"title":"Venue Miami","link":"https:\\/\\/www.youtube.com\\/embed\\/ZdtvA99hBCI","image":"images\\/vendors\\/gallery\\/15771069619sMZq4V5zmRaUWt5P7iO15747561420CECWnSZ7yaVhvavQEMn14997.png"}', 59, 11, 39, '2019-12-23 07:46:01', '2019-12-23 07:46:01'),
(462, NULL, 'description', 'description', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>', 59, 11, 39, '2019-12-23 07:46:27', '2019-12-23 07:46:49'),
(466, 0, 'season', 'seasons', '3', 59, 11, 39, '2019-12-23 07:49:19', '2019-12-23 07:49:19'),
(467, NULL, 'prohibtion', 'prohibtion', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.&nbsp;</p>', 59, 11, 39, '2019-12-23 07:51:39', '2019-12-23 07:51:45'),
(468, 0, 'style', 'styles', '1', 59, 11, 39, '2019-12-24 02:11:52', '2019-12-24 02:11:52'),
(469, 0, 'style', 'styles', '4', 59, 11, 39, '2019-12-24 02:11:52', '2019-12-24 02:11:52'),
(470, NULL, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/1577173524I9PGV8HuAI0BkMbjput7k.jpg', 59, 11, 39, '2019-12-24 02:15:24', '2019-12-24 02:15:24'),
(471, NULL, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/1577173524YDVmxUUxB2pjl5sieBqFsanchex2_51_698336157383070987838.jpg', 59, 11, 39, '2019-12-24 02:15:24', '2019-12-24 02:15:24'),
(472, NULL, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/1577173524dsgfp2LIislJYgNKW8fUsanchez1_51_698336157383071560610.jpg', 59, 11, 39, '2019-12-24 02:15:24', '2019-12-24 02:15:24'),
(473, NULL, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/1577173532wV5prj4wfPqszVUYstzTScreenshotfrom20191120185131.png', 59, 11, 39, '2019-12-24 02:15:32', '2019-12-24 02:15:32'),
(474, NULL, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/1577173532N1vO3UDKEZWUDEiS7dNUScreenshotfrom20191125182053.png', 59, 11, 39, '2019-12-24 02:15:32', '2019-12-24 02:15:32'),
(475, NULL, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/1577173532zmz22IKYsckuZlgaqoNNScreenshotfrom20191127124459.png', 59, 11, 39, '2019-12-24 02:15:32', '2019-12-24 02:15:32'),
(476, NULL, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/1577174009ZMfqQ0a11y98WzZ3G55wsanchex2_51_698336157383070987838.jpg', 44, 11, 26, '2019-12-24 02:23:29', '2019-12-24 02:23:29'),
(477, NULL, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/1577174009XO2UyS4eOcIYYMCwQbyosanchez1_51_698336157383071560610.jpg', 44, 11, 26, '2019-12-24 02:23:29', '2019-12-24 02:23:29'),
(478, NULL, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/1577174009W4aRYRHPK2SIHsCBMhIoScreenshotfrom20191030173155.png', 44, 11, 26, '2019-12-24 02:23:29', '2019-12-24 02:23:29'),
(479, NULL, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/1577174009GAm6mbrv5eP1opTAJZhMScreenshotfrom20191118132913.png', 44, 11, 26, '2019-12-24 02:23:29', '2019-12-24 02:23:29'),
(480, NULL, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/1577174009uk1cuuFIIMhgsO1crIaWScreenshotfrom20191120185131.png', 44, 11, 26, '2019-12-24 02:23:29', '2019-12-24 02:23:29'),
(481, NULL, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/1577174009XUCBOqHHbVSsPvPN6ZXGScreenshotfrom20191125182053.png', 44, 11, 26, '2019-12-24 02:23:29', '2019-12-24 02:23:29'),
(482, NULL, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/15771740090ZByaxcf981uCJk4VOkDScreenshotfrom20191127124459.png', 44, 11, 26, '2019-12-24 02:23:29', '2019-12-24 02:23:29'),
(483, NULL, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/1577174009P3A5mdyNubFuZKxO9pbNScreenshotfrom20191204195729.png', 44, 11, 26, '2019-12-24 02:23:29', '2019-12-24 02:23:29'),
(484, NULL, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/1577174009BRSYhDjuX5AXzRxH3wjBt10_1435802609300solo019.jpg', 44, 11, 26, '2019-12-24 02:23:29', '2019-12-24 02:23:29'),
(485, NULL, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/1577176442dMAsPl3U3dCExifo5uSVScreenshotfrom20191125182053.png', 59, 11, 39, '2019-12-24 03:04:02', '2019-12-24 03:04:02'),
(486, NULL, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/1577176442PAJ87TGphX3Nb4SVgfIqScreenshotfrom20191127124459.png', 59, 11, 39, '2019-12-24 03:04:02', '2019-12-24 03:04:02'),
(487, NULL, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/1577176442z5G11ozNsOK2LYmqYPb0Screenshotfrom20191204195729.png', 59, 11, 39, '2019-12-24 03:04:02', '2019-12-24 03:04:02'),
(488, NULL, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/1577176442GxurhNPsEVv3uuawbMmDt10_1435802609300solo019.jpg', 59, 11, 39, '2019-12-24 03:04:02', '2019-12-24 03:04:02'),
(489, NULL, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/1577176541jYMVDsNKM5ATJKtbIU9Cpackageimg1.png', 31, 1, 1, '2019-12-24 03:05:41', '2019-12-24 03:05:41'),
(490, NULL, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/1577176541J6xoh51TX7Umi3y06dLkpackageimg2.png', 31, 1, 1, '2019-12-24 03:05:41', '2019-12-24 03:05:41'),
(491, NULL, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/15771765412vI90f11kaOGdy8Hqic0packageimg3.png', 31, 1, 1, '2019-12-24 03:05:41', '2019-12-24 03:05:41'),
(492, NULL, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/1577176541kHIJE8QBBuV2yImxafO2packageimg4.png', 31, 1, 1, '2019-12-24 03:05:41', '2019-12-24 03:05:41'),
(493, NULL, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/1577176541s4NFTdP9XLcW8RAm8bH6recent1.png', 31, 1, 1, '2019-12-24 03:05:41', '2019-12-24 03:05:41'),
(494, NULL, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/1577176541V8Qohd9o6XPaTh76LT6Erecent2.png', 31, 1, 1, '2019-12-24 03:05:41', '2019-12-24 03:05:41'),
(495, NULL, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/15771765413xq4bbkCsfENiYgyuaiErecent4.png', 31, 1, 1, '2019-12-24 03:05:41', '2019-12-24 03:05:41'),
(496, NULL, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/1577176541SKZ0kV0QFEPZUGHKHUAkrecent5.png', 31, 1, 1, '2019-12-24 03:05:41', '2019-12-24 03:05:41'),
(497, NULL, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/1577176541Eb6X6dV3u5yK9Jh82ZHBrecent7.png', 31, 1, 1, '2019-12-24 03:05:41', '2019-12-24 03:05:41'),
(498, NULL, 'aboutus_slider_images', 'imageGallery', 'images/vendors/gallery/1577176541NeguL9UB6eIqOdpBuWE0recent8.png', 31, 1, 1, '2019-12-24 03:05:41', '2019-12-24 03:05:41'),
(499, NULL, 'business_name', 'basic_information', '', 64, 11, 41, '2019-12-30 07:21:27', '2019-12-30 07:21:27'),
(500, NULL, 'address', 'basic_information', '', 64, 11, 41, '2019-12-30 07:21:28', '2019-12-30 07:21:28'),
(501, NULL, 'website', 'basic_information', '', 64, 11, 41, '2019-12-30 07:21:28', '2019-12-30 07:21:28'),
(502, NULL, 'phone_number', 'basic_information', '', 64, 11, 41, '2019-12-30 07:21:28', '2019-12-30 07:21:28'),
(503, NULL, 'company', 'basic_information', '', 64, 11, 41, '2019-12-30 07:21:28', '2019-12-30 07:21:28'),
(504, NULL, 'travel_distaince', 'basic_information', '', 64, 11, 41, '2019-12-30 07:21:28', '2019-12-30 07:21:28'),
(505, NULL, 'min_price', 'basic_information', '', 64, 11, 41, '2019-12-30 07:21:28', '2019-12-30 07:21:28'),
(506, NULL, 'cover_photo', 'basic_information', '', 64, 11, 41, '2019-12-30 07:21:28', '2019-12-30 07:21:28'),
(507, NULL, 'short_description', 'basic_information', '', 64, 11, 41, '2019-12-30 07:21:28', '2019-12-30 07:21:28'),
(508, NULL, 'facebook_url', 'basic_information', '', 64, 11, 41, '2019-12-30 07:21:28', '2019-12-30 07:21:28'),
(509, NULL, 'prohibtion', 'prohibtion', '', 64, 11, 41, '2019-12-30 07:21:52', '2019-12-30 07:21:52'),
(512, 0, 'style', 'styles', '1', 59, 1, 35, '2019-12-31 03:52:49', '2019-12-31 03:52:49'),
(513, NULL, 'style', 'styles', '', 64, 11, 41, '2019-12-31 17:08:07', '2019-12-31 17:08:07'),
(514, NULL, 'bessiness_address_proof_1', 'basic_information', 'images/vendors/settings/1578045082UfIWNwzh6SKZYTSoeVZMchecklist.svg', 31, 1, 1, '2020-01-03 03:11:13', '2020-01-03 04:21:22'),
(515, NULL, 'bessiness_address_proof_2', 'basic_information', 'images/vendors/settings/1578045082NSBWAoGk3d5zjOqNZKsjcommas.png', 31, 1, 1, '2020-01-03 03:11:13', '2020-01-03 04:21:22'),
(516, NULL, 'business_registation_proof', 'basic_information', 'images/vendors/settings/1578045082JmGUhm2f3iGoVqgorwdtDJ.png', 31, 1, 1, '2020-01-03 03:11:13', '2020-01-03 04:21:22'),
(517, NULL, 'bessiness_address_proof_1', 'basic_information', '', 59, 11, 39, '2020-01-03 09:06:54', '2020-01-03 09:06:54'),
(518, NULL, 'bessiness_address_proof_2', 'basic_information', '', 59, 11, 39, '2020-01-03 09:06:54', '2020-01-03 09:06:54'),
(519, NULL, 'business_registation_proof', 'basic_information', '', 59, 11, 39, '2020-01-03 09:06:54', '2020-01-03 09:06:54'),
(520, NULL, 'bessiness_address_proof_1', 'basic_information', '', 59, 1, 35, '2020-01-07 04:10:24', '2020-01-07 04:10:24'),
(521, NULL, 'bessiness_address_proof_2', 'basic_information', '', 59, 1, 35, '2020-01-07 04:10:24', '2020-01-07 04:10:24'),
(522, NULL, 'business_registation_proof', 'basic_information', '', 59, 1, 35, '2020-01-07 04:10:24', '2020-01-07 04:10:24');

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
(14, 0, 44, 1, 20, 22, NULL, '2019-11-26 05:59:10', '2019-11-26 05:59:10'),
(15, 0, 34, 1, 25, 15, NULL, '2019-11-27 01:37:38', '2019-11-27 01:37:38'),
(16, 0, 31, 2, 11, 24, NULL, '2019-11-27 02:13:55', '2019-11-27 02:13:55'),
(22, 0, 34, 5, 11, 25, NULL, '2019-11-27 02:20:01', '2019-11-27 02:20:01'),
(25, 0, 34, 2, 20, 14, NULL, '2019-12-03 05:01:46', '2019-12-03 05:01:46'),
(31, 0, 59, 3, 1, 35, NULL, '2019-12-09 03:20:52', '2019-12-09 03:20:52'),
(32, 0, 34, 3, 11, 25, NULL, '2019-12-11 01:38:12', '2019-12-11 01:38:12'),
(33, 0, 34, 1, 20, 14, NULL, '2019-12-13 09:12:07', '2019-12-13 09:12:07'),
(34, 0, 31, 1, 11, 24, NULL, '2019-12-17 01:07:28', '2019-12-17 01:07:28'),
(36, 0, 44, 2, 11, 26, NULL, '2019-12-18 01:42:25', '2019-12-18 01:42:25'),
(42, 0, 31, 5, 1, 1, NULL, '2019-12-19 09:21:51', '2019-12-19 09:21:51'),
(43, 0, 31, 6, 1, 1, NULL, '2019-12-19 09:21:52', '2019-12-19 09:21:52'),
(45, 0, 59, 6, 1, 35, NULL, '2019-12-20 06:22:32', '2019-12-20 06:22:32'),
(46, 0, 59, 5, 1, 35, NULL, '2019-12-20 06:22:45', '2019-12-20 06:22:45'),
(47, 0, 59, 17, 11, 39, NULL, '2019-12-23 07:49:07', '2019-12-23 07:49:07'),
(48, 0, 31, 2, 1, 1, NULL, '2020-01-08 04:00:41', '2020-01-08 04:00:41'),
(49, 0, 31, 11, 1, 1, NULL, '2020-01-08 04:00:41', '2020-01-08 04:00:41'),
(50, 0, 31, 17, 1, 1, NULL, '2020-01-08 04:00:41', '2020-01-08 04:00:41');

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
(1, '10 Percent OFF your Wedding', '10-percent-off-your-wedding', '<p>Print out this promotional page and bring it to us when you come in for your complimentary tasting and private appointment. Allow us to meet with you and If you plan on ordering your cake with us allow us to price your cake. Then, show us your print out and we will take 10% OFF our quoted price.</p>', 1, 31, 5000, 5, 1, '<p>Print out this promotional page and bring it to us when you come in for your complimentary tasting and private appointment. Allow us to meet with you and If you plan on ordering your cake with us allow us to price your cake. Then, show us your print out and we will take 10% OFF our quoted price.</p>', 'per_person', 1, 1000, 1, 1, '2019-11-20 02:42:33', '2019-12-23 09:35:54'),
(11, 'Gold Package', 'gold-package', '<p>Lorium Epsum&nbsp;Lorium Epsum&nbsp;Lorium Epsum&nbsp;Lorium Epsum&nbsp;</p>', 1, 42, 2000, 8, 5, '<p>No</p>', 'per_person', 1, 100, 11, 1, '2019-11-26 01:55:32', '2019-12-10 04:14:15'),
(15, 'Tester', 'tester', '<p>Do you have experience in&nbsp;<b>event</b>&nbsp;from start to finish according to requirements, brand, target audience and objectives? If yes ,then go through our&nbsp;<b>event planner</b>&nbsp;interview&nbsp;<b>questions</b>&nbsp;page for better understanding of interview process and win in job search.Do you have experience in&nbsp;<b>event</b>&nbsp;from start to finish according to requirements, brand, target audience and objectives? If yes ,then go through our&nbsp;<b>event planner</b>&nbsp;interview&nbsp;<b>questions</b>&nbsp;page for better understanding of interview process and win in job search.Do you have experience in&nbsp;<b>event</b>&nbsp;from start to finish according to requirements, brand, target audience and objectives? If yes ,then go through our&nbsp;<b>event planner</b>&nbsp;interview&nbsp;<b>questions</b>&nbsp;page for better understanding of interview process and win in job search.</p>', 20, 44, 20000, 10, 230, '<p>Do you have experience in&nbsp;<b>event</b>&nbsp;from start to finish according to requirements, brand, target audience and objectives? If yes ,then go through our&nbsp;<b>event planner</b>&nbsp;interview&nbsp;<b>questions</b>&nbsp;page for better understanding of interview process and win in job search.Do you have experience in&nbsp;<b>event</b>&nbsp;from start to finish according to requirements, brand, target audience and objectives? If yes ,then go through our&nbsp;<b>event planner</b>&nbsp;interview&nbsp;<b>questions</b>&nbsp;page for better understanding of interview process and win in job search.</p>', 'per_person', 100, 300, 22, 1, '2019-11-26 06:49:50', '2019-12-24 04:33:24'),
(19, 'Tester', 'tester-1', '<p>teszn</p>', 1, 44, 1233, 23, 323, '<p>nsersnsn</p>', 'per_person', 12, 22, 21, 1, '2019-11-26 07:42:27', '2019-11-26 07:42:27'),
(28, 'Buffet', 'buffet', '<p>Combining a trendy, upscale atmosphere with timeless elegance, Blush Banquet Hall is certain to be the perfect event venue for your special occasion. A versatile and stunning banquet hall, Blush is perfect not only for weddings, but also for any special event, including quincea&ntilde;eras, Sweet 16s, bar and bat mitzvahs, anniversaries, baby showers, christenings, holiday parties, and corporate events such as awards galas and fundraisers. When you celebrate with Blush Banquet Hall, you&rsquo;re giving your guests an incredible experience that they will never forget.</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Follow us:</strong></p>\r\n	</li>\r\n</ul>', 26, 44, 120000, 12, 3, '<p>Combining a trendy, upscale atmosphere with timeless elegance, Blush Banquet Hall is certain to be the perfect event venue for your special occasion. A versatile and stunning banquet hall, Blush is perfect not only for weddings, but also for any special event, including quincea&ntilde;eras, Sweet 16s, bar and bat mitzvahs, anniversaries, baby showers, christenings, holiday parties, and corporate events such as awards galas and fundraisers. When you celebrate with Blush Banquet Hall, you&rsquo;re giving your guests an incredible experience that they will never forget.</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Follow us:</strong></p>\r\n	</li>\r\n</ul>', 'per_person', 1000, 200000, 0, 1, '2019-12-06 05:04:03', '2019-12-06 05:04:03'),
(29, 'Veg Buffet', 'veg-buffet', '<p>Combining a trendy, upscale atmosphere with timeless elegance, Blush Banquet Hall is certain to be the perfect event venue for your special occasion. A versatile and stunning banquet hall, Blush is perfect not only for weddings, but also for any special event, including quincea&ntilde;eras, Sweet 16s, bar and bat mitzvahs, anniversaries, baby showers, christenings, holiday parties, and corporate events such as awards galas and fundraisers. When you celebrate with Blush Banquet Hall, you&rsquo;re giving your guests an incredible experience that they will never forget.</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Follow us:</strong></p>\r\n	</li>\r\n</ul>', 26, 44, 340000, 11, 2, '<p>Combining a trendy, upscale atmosphere with timeless elegance, Blush Banquet Hall is certain to be the perfect event venue for your special occasion. A versatile and stunning banquet hall, Blush is perfect not only for weddings, but also for any special event, including quincea&ntilde;eras, Sweet 16s, bar and bat mitzvahs, anniversaries, baby showers, christenings, holiday parties, and corporate events such as awards galas and fundraisers. When you celebrate with Blush Banquet Hall, you&rsquo;re giving your guests an incredible experience that they will never forget.</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Follow us:</strong></p>\r\n	</li>\r\n</ul>', 'per_person', 2000, 300000, 0, 1, '2019-12-06 05:05:47', '2019-12-06 05:05:47'),
(30, 'Silver', 'silver-1', '<p>Lorium Epsum is dummy values of Testing for any thing you want</p>', 35, 59, 1000, 5, 5, '<p>No</p>', 'per_person', 100, 2000, 35, 0, '2019-12-09 03:21:53', '2019-12-09 04:54:09'),
(31, 'Gold', 'gold-1', '<p>Lorium Epsum is dummy values of Testing for any thing you want</p>', 35, 59, 1000, 5, 5, '<p>No</p>', 'per_person', 100, 1000, 36, 1, '2019-12-09 03:23:08', '2019-12-09 03:23:08'),
(36, 'Grab Gold Package', 'grab-gold-package', '<p>Grab Gold Package for dummy offers</p>', 1, 59, 1000, 5, 5, '<p>No</p>', 'per_person', 100, 1000, 35, 1, '2019-12-09 04:59:45', '2019-12-09 04:59:45'),
(37, 'GRAB SILVER PACKAGE', 'grab-silver-package', '<p>Grab Silver Package for dummy offers</p>', 1, 59, 100, 8, 8, '<p>No</p>', 'per_person', 50, 100, 35, 1, '2019-12-09 05:01:54', '2019-12-09 05:01:54'),
(40, 'my new winter', 'my-new-winter', '<p>description</p>', 20, 34, 50, 2, 22, NULL, 'per_person', 2, 10, 14, 1, '2019-12-12 06:22:39', '2019-12-26 01:47:11'),
(41, 'fdgdfg', 'fdgdfg', '<p>dfgfdfdg</p>', 1, 34, 400, 2, 3, '<p>dfgdfgdfg</p>', 'per_person', 1, 3, 16, 1, '2019-12-17 05:56:51', '2019-12-17 05:56:51'),
(42, 'Gold Venue Package', 'gold-venue-package', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>', 11, 59, 1500, 8, 10, '<p>No</p>', 'per_person', 100, 1000, 39, 1, '2019-12-23 07:50:08', '2020-01-06 04:33:30'),
(43, 'Golden Chance', 'golden-chance', '<p>Golden Chance</p>', 11, 31, 1000, 5, 2, '<p>Golden Chance</p>', 'per_person', 5, 200, 24, 1, '2019-12-23 09:38:55', '2019-12-23 09:41:21'),
(44, 'wedding', 'wedding', '<p><strong>Flourish Atlanta&nbsp;</strong>Flourish is the event space to excite your attendees with astonishing stealth and business savvy, and confident appeal. This is the best venue place located amid the city and suitable for small to giant size, and award-winning events. The unique design and decor of Flourish social landscape ensure to add more glamour to your event. Excellent service and culinary expertise are the assets of this outstanding event space.&nbsp;</p>', 20, 44, 500, 14, 1, '<p>Flourish is the event space to excite your attendees with astonishing stealth and business savvy, and confident appeal. This is the best venue place located amid the city and suitable for small to giant size, and award-winning events. The unique design and decor of Flourish social landscape ensure to add more glamour to your event. Excellent service and culinary expertise are the assets of this outstanding event space.&nbsp;</p>', 'per_person', 100, 200, 22, 1, '2019-12-24 02:41:44', '2019-12-24 02:41:44'),
(45, 'AKM Resorts', 'akm-resorts', '<p>Face actual professional level pitchers who&#39;ve pitched at the affiliate to big league level! Ever wondered if you could hit a big league fastball or changeup? Come find out!Face actual professional level pitchers who&#39;ve pitched at the affiliate to big league level! Ever wondered if you could hit a big league fastball or changeup? Come find out!</p>', 11, 44, 10000, 6, 3, '<p>Face actual professional level pitchers who&#39;ve pitched at the affiliate to big league level! Ever wondered if you could hit a big league fastball or changeup? Come find out!Face actual professional level pitchers who&#39;ve pitched at the affiliate to big league level! Ever wondered if you could hit a big league fastball or changeup? Come find out!</p>', 'per_person', 100, 1000, 26, 1, '2019-12-31 01:42:52', '2019-12-31 01:42:52'),
(47, 'Sample 1', 'sample-1', '<p>test</p>', 1, 31, 2000, 5, 2, '<p>test</p>', 'per_person', 20, 1000, 1, 1, '2019-12-31 01:46:13', '2019-12-31 01:46:13'),
(50, 'The Missisaugga', 'the-missisaugga', '<p>Face actual professional level pitchers who&#39;ve pitched at the affiliate to big league level! Ever wondered if you could hit a big league fastball or changeup? Come find out!Face actual professional level pitchers who&#39;ve pitched at the affiliate to big league level! Ever wondered if you could hit a big league fastball or changeup? Come find out!</p>', 11, 44, 10000, 6, 2, '<p>Face actual professional level pitchers who&#39;ve pitched at the affiliate to big league level! Ever wondered if you could hit a big league fastball or changeup? Come find out!Face actual professional level pitchers who&#39;ve pitched at the affiliate to big league level! Ever wondered if you could hit a big league fastball or changeup? Come find out!</p>', 'per_person', 100, 1000, 26, 1, '2019-12-31 03:07:00', '2019-12-31 03:07:00');

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
(2, 'jassiiiii', 'The image must be an image. Error message should be correct .  it should be sound goodThe image must be an image. Error message should be correct .  it should be sound good', 'jassiiiii', '1574317703.jpg', 1, '2019-11-20 07:57:47', '2019-11-26 01:06:53'),
(3, 'england', 'England is the largest part of the island of Great Britain, and it is also the largest constituent country of the United Kingdom. Scotland and Wales are also part of Great Britain (and the UK), Scotland to the north and Wales to the west. To the east and south, and part of the west, England is bordered by sea.', 'England', '1575542265.jpg', 1, '2019-12-05 05:07:45', '2019-12-05 07:39:25');

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
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_messages`
--
ALTER TABLE `chat_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_pages`
--
ALTER TABLE `cms_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commissions`
--
ALTER TABLE `commissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discount_deals`
--
ALTER TABLE `discount_deals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_orders`
--
ALTER TABLE `event_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favourite_vendors`
--
ALTER TABLE `favourite_vendors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `f_a_qs`
--
ALTER TABLE `f_a_qs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invite_vendors`
--
ALTER TABLE `invite_vendors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
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
-- Indexes for table `user_events`
--
ALTER TABLE `user_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_event_meta_datas`
--
ALTER TABLE `user_event_meta_datas`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `category_variations`
--
ALTER TABLE `category_variations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1074;
--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `chat_messages`
--
ALTER TABLE `chat_messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;
--
-- AUTO_INCREMENT for table `cms_pages`
--
ALTER TABLE `cms_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `commissions`
--
ALTER TABLE `commissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `discount_deals`
--
ALTER TABLE `discount_deals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `event_orders`
--
ALTER TABLE `event_orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `favourite_vendors`
--
ALTER TABLE `favourite_vendors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `f_a_qs`
--
ALTER TABLE `f_a_qs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `invite_vendors`
--
ALTER TABLE `invite_vendors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `package_meta_datas`
--
ALTER TABLE `package_meta_datas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=743;
--
-- AUTO_INCREMENT for table `page_meta_tags`
--
ALTER TABLE `page_meta_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;
--
-- AUTO_INCREMENT for table `seasons`
--
ALTER TABLE `seasons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `service_aproval_processes`
--
ALTER TABLE `service_aproval_processes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;
--
-- AUTO_INCREMENT for table `styles`
--
ALTER TABLE `styles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
--
-- AUTO_INCREMENT for table `user_events`
--
ALTER TABLE `user_events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `user_event_meta_datas`
--
ALTER TABLE `user_event_meta_datas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=392;
--
-- AUTO_INCREMENT for table `vendor_amenities`
--
ALTER TABLE `vendor_amenities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;
--
-- AUTO_INCREMENT for table `vendor_categories`
--
ALTER TABLE `vendor_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `vendor_category_meta_datas`
--
ALTER TABLE `vendor_category_meta_datas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=523;
--
-- AUTO_INCREMENT for table `vendor_event_games`
--
ALTER TABLE `vendor_event_games`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `vendor_packages`
--
ALTER TABLE `vendor_packages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `venues`
--
ALTER TABLE `venues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
