-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2017 at 09:44 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rate_calculator`
--

-- --------------------------------------------------------

--
-- Table structure for table `air_cargos`
--

CREATE TABLE `air_cargos` (
  `id` int(10) UNSIGNED NOT NULL,
  `booking_from` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `destination` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` double(8,2) NOT NULL,
  `per` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `zone_id`, `created_at`, `updated_at`) VALUES
(1, '18 Hazari City', 4, NULL, NULL),
(2, 'Abottabad', 1, NULL, NULL),
(3, 'Ahmed Pur East', 5, NULL, NULL),
(4, 'Ahmed Pur Sial', 4, NULL, NULL),
(5, 'Akhtar Abad', 4, NULL, NULL),
(6, 'Akora Khattak', 1, NULL, NULL),
(7, 'Alaabad', 4, NULL, NULL),
(8, 'Ali Pur', 5, NULL, NULL),
(9, 'Ali Pur Chatta', 4, NULL, NULL),
(10, 'Aminabad', 4, NULL, NULL),
(11, 'Arif Wala', 4, NULL, NULL),
(12, 'Attock', 1, NULL, NULL),
(13, 'Badeh', 3, NULL, NULL),
(14, 'Badin', 3, NULL, NULL),
(15, 'Bahawalnagar', 4, NULL, NULL),
(16, 'Bajawar', 1, NULL, NULL),
(17, 'Bakhsha Pur', 3, NULL, NULL),
(18, 'Bakrani', 3, NULL, NULL),
(19, 'Bala Kot', 1, NULL, NULL),
(20, 'Bannu', 1, NULL, NULL),
(21, 'Basir Pur', 4, NULL, NULL),
(22, 'Bat Khela', 1, NULL, NULL),
(23, 'Bhai Pheru', 4, NULL, NULL),
(24, 'Bhakkar', 4, NULL, NULL),
(25, 'Bhalwal', 4, NULL, NULL),
(26, 'Bhawalpur', 5, NULL, NULL),
(27, 'Bhawana', 4, NULL, NULL),
(28, 'Bhera', 4, NULL, NULL),
(29, 'Bhimber', 4, NULL, NULL),
(30, 'Bhiriya City', 3, NULL, NULL),
(31, 'Bhiriya Road', 3, NULL, NULL),
(32, 'Bhurban', 1, NULL, NULL),
(33, 'Buche Ki', 4, NULL, NULL),
(34, 'Bunir', 1, NULL, NULL),
(35, 'Burewala', 5, NULL, NULL),
(36, 'Chak Jhumra', 4, NULL, NULL),
(37, 'Chakdara', 1, NULL, NULL),
(38, 'Chakwal', 1, NULL, NULL),
(39, 'Chaman', 2, NULL, NULL),
(40, 'Chanda Qila', 4, NULL, NULL),
(41, 'Changa Manga', 4, NULL, NULL),
(42, 'Chani Ghoth', 5, NULL, NULL),
(43, 'Charsadda', 1, NULL, NULL),
(44, 'Chashma', 4, NULL, NULL),
(45, 'Chawinda', 4, NULL, NULL),
(46, 'Chichawatni', 4, NULL, NULL),
(47, 'Chinniot', 4, NULL, NULL),
(48, 'Chishtian', 4, NULL, NULL),
(49, 'Choha Saidan Shah', 1, NULL, NULL),
(50, 'Chowk Azam', 5, NULL, NULL),
(51, 'Chundiko', 3, NULL, NULL),
(52, 'Chunian', 4, NULL, NULL),
(53, 'Dadu', 3, NULL, NULL),
(54, 'Dakhan', 3, NULL, NULL),
(55, 'Dara Adam Khel', 1, NULL, NULL),
(56, 'Dargai', 1, NULL, NULL),
(57, 'Daska', 4, NULL, NULL),
(58, 'Deharki', 3, NULL, NULL),
(59, 'Depalpur', 4, NULL, NULL),
(60, 'Dera Allah Yar', 3, NULL, NULL),
(61, 'Dera Ghazi Khan', 5, NULL, NULL),
(62, 'Dera Ismail Khan', 4, NULL, NULL),
(63, 'Dera Murad Jamali', 3, NULL, NULL),
(64, 'Derya Khan', 4, NULL, NULL),
(65, 'Dhodak', 5, NULL, NULL),
(66, 'Digri', 3, NULL, NULL),
(67, 'Dijkot', 4, NULL, NULL),
(68, 'Dina', 4, NULL, NULL),
(69, 'Dinga', 4, NULL, NULL),
(70, 'Dir', 1, NULL, NULL),
(71, 'Dokri', 3, NULL, NULL),
(72, 'Dunya Pur', 5, NULL, NULL),
(73, 'Emin Abad More', 4, NULL, NULL),
(74, 'Esa Khel', 4, NULL, NULL),
(75, 'Faisalabad', 4, NULL, NULL),
(76, 'Farooqabad', 4, NULL, NULL),
(77, 'Fateh Jang', 1, NULL, NULL),
(78, 'Fateh Pur', 5, NULL, NULL),
(79, 'Fazal Pura', 4, NULL, NULL),
(80, 'Feroze Wattan', 4, NULL, NULL),
(81, 'Gadoon Amazai', 1, NULL, NULL),
(82, 'Gadoon', 1, NULL, NULL),
(83, 'Gago Mandi', 5, NULL, NULL),
(84, 'Gakhar Mandi', 4, NULL, NULL),
(85, 'Gambat', 3, NULL, NULL),
(86, 'Garh More', 4, NULL, NULL),
(87, 'Garhi Yaseen', 3, NULL, NULL),
(88, 'Gari Habibullah', 1, NULL, NULL),
(89, 'Gawadar', 3, NULL, NULL),
(90, 'Ghazi Abad', 4, NULL, NULL),
(91, 'Ghos Pur', 3, NULL, NULL),
(92, 'Ghotki', 3, NULL, NULL),
(93, 'Gilgit', 1, NULL, NULL),
(94, 'Godh Pur', 4, NULL, NULL),
(95, 'Gojra', 4, NULL, NULL),
(96, 'Golarchi', 3, NULL, NULL),
(97, 'Gujjar Khan', 1, NULL, NULL),
(98, 'Gujranwala', 4, NULL, NULL),
(99, 'Gujrat', 4, NULL, NULL),
(100, 'Habib Abad', 4, NULL, NULL),
(101, 'Hafiz Abad', 4, NULL, NULL),
(102, 'Haji Pura', 4, NULL, NULL),
(103, 'Hala', 3, NULL, NULL),
(104, 'Halani', 3, NULL, NULL),
(105, 'Hangu', 1, NULL, NULL),
(106, 'Hari Pur', 1, NULL, NULL),
(107, 'Haroon Abad', 4, NULL, NULL),
(108, 'Hassan Abdal', 1, NULL, NULL),
(109, 'Havalian', 1, NULL, NULL),
(110, 'Hawaili Lakha', 4, NULL, NULL),
(111, 'Hingorja', 3, NULL, NULL),
(112, 'Hub', 3, NULL, NULL),
(113, 'Hujra Shah Muqeem', 4, NULL, NULL),
(114, 'Hyderabad', 3, NULL, NULL),
(115, 'Iskender Abad', 4, NULL, NULL),
(116, 'Islamabad', 1, NULL, NULL),
(117, 'Jacobabad', 3, NULL, NULL),
(118, 'Jahan Khan', 4, NULL, NULL),
(119, 'Jahanian', 5, NULL, NULL),
(120, 'Jalal Pur Bhattian', 4, NULL, NULL),
(121, 'Jalal Pur Pirwala', 5, NULL, NULL),
(122, 'Jalal Pura', 4, NULL, NULL),
(123, 'Jalapur Jatan', 4, NULL, NULL),
(124, 'Jam Nawaz Ali', 3, NULL, NULL),
(125, 'Jampur', 5, NULL, NULL),
(126, 'Jamshoro', 3, NULL, NULL),
(127, 'Jan Pur', 5, NULL, NULL),
(128, 'Jand', 1, NULL, NULL),
(129, 'Jaranwala', 4, NULL, NULL),
(130, 'Jehangura', 1, NULL, NULL),
(131, 'Jehlum', 4, NULL, NULL),
(132, 'Jhang', 4, NULL, NULL),
(133, 'Jhuddo', 3, NULL, NULL),
(134, 'Joharabad', 4, NULL, NULL),
(135, 'Kabir Wala', 5, NULL, NULL),
(136, 'Kahuta', 1, NULL, NULL),
(137, 'Kakul', 1, NULL, NULL),
(138, 'Kala Bagh', 4, NULL, NULL),
(139, 'Kalat', 2, NULL, NULL),
(140, 'Kallar Kahar', 1, NULL, NULL),
(141, 'Kallar Saidan', 1, NULL, NULL),
(142, 'Kamalia', 4, NULL, NULL),
(143, 'Kamber Ali Khan', 3, NULL, NULL),
(144, 'Kamer Mishani', 4, NULL, NULL),
(145, 'Kamoke', 4, NULL, NULL),
(146, 'Kamra', 1, NULL, NULL),
(147, 'Kandh Kot', 3, NULL, NULL),
(148, 'Kandiaree', 3, NULL, NULL),
(149, 'Kandiaro', 3, NULL, NULL),
(150, 'Karachi', 3, NULL, NULL),
(151, 'Karak', 1, NULL, NULL),
(152, 'Kashmore', 3, NULL, NULL),
(153, 'Kasouwal', 4, NULL, NULL),
(154, 'Kasur', 4, NULL, NULL),
(155, 'Khairpur', 3, NULL, NULL),
(156, 'Khairpur Nathan Shah', 3, NULL, NULL),
(157, 'Khan Bela', 5, NULL, NULL),
(158, 'Khan Ka Dogran', 4, NULL, NULL),
(159, 'Khanewal', 5, NULL, NULL),
(160, 'Khanpur', 5, NULL, NULL),
(161, 'Khanpur  Mahar', 3, NULL, NULL),
(162, 'Khanpur Shomali', 5, NULL, NULL),
(163, 'Kharian', 4, NULL, NULL),
(164, 'Khaur', 1, NULL, NULL),
(165, 'Khewra', 1, NULL, NULL),
(166, 'Khipro', 3, NULL, NULL),
(167, 'Khora', 3, NULL, NULL),
(168, 'Khudiyan Khas', 4, NULL, NULL),
(169, 'Khurian Wala', 4, NULL, NULL),
(170, 'Khushab', 4, NULL, NULL),
(171, 'Khuzdar', 2, NULL, NULL),
(172, 'Kohat', 1, NULL, NULL),
(173, 'Kot Addu', 5, NULL, NULL),
(174, 'Kot Banglow', 3, NULL, NULL),
(175, 'Kot Chandana', 4, NULL, NULL),
(176, 'Kot Chutta', 5, NULL, NULL),
(177, 'Kot Diggi', 3, NULL, NULL),
(178, 'Kot Ghulam Mohd', 3, NULL, NULL),
(179, 'Kot Momen', 4, NULL, NULL),
(180, 'Kot Najeeb Ullah', 1, NULL, NULL),
(181, 'Kot Qaisrani', 5, NULL, NULL),
(182, 'Kot Radha Kishan', 4, NULL, NULL),
(183, 'Kotla', 4, NULL, NULL),
(184, 'Kotli Loharan', 4, NULL, NULL),
(185, 'Kotri', 3, NULL, NULL),
(186, 'Kuldana', 1, NULL, NULL),
(187, 'Kumb', 3, NULL, NULL),
(188, 'Kundian', 4, NULL, NULL),
(189, 'Kunri', 3, NULL, NULL),
(190, 'Lahore', 4, NULL, NULL),
(191, 'Lakhi Ghulam Shah', 3, NULL, NULL),
(192, 'Laki Marwat', 1, NULL, NULL),
(193, 'Lala Musa', 4, NULL, NULL),
(194, 'Lalian', 4, NULL, NULL),
(195, 'Larkana', 3, NULL, NULL),
(196, 'Lary Adda', 1, NULL, NULL),
(197, 'Lawrance Pur', 1, NULL, NULL),
(198, 'Layyah', 5, NULL, NULL),
(199, 'Liaqat Pur', 5, NULL, NULL),
(200, 'Lodhran', 5, NULL, NULL),
(201, 'Loralai', 2, NULL, NULL),
(202, 'Losar Sharif', 1, NULL, NULL),
(203, 'Lower Topa', 1, NULL, NULL),
(204, 'Mailsi', 5, NULL, NULL),
(205, 'Makli', 3, NULL, NULL),
(206, 'Malakand*', 1, NULL, NULL),
(207, 'Malakwal', 4, NULL, NULL),
(208, 'Mandi Bhauddin', 4, NULL, NULL),
(209, 'Mandra', 1, NULL, NULL),
(210, 'Manga Mandi', 4, NULL, NULL),
(211, 'Mangla', 4, NULL, NULL),
(212, 'Mankeera', 4, NULL, NULL),
(213, 'Manna Wala', 4, NULL, NULL),
(214, 'Mansehra', 1, NULL, NULL),
(215, 'Mardan', 1, NULL, NULL),
(216, 'Matiari', 3, NULL, NULL),
(217, 'Matli', 3, NULL, NULL),
(218, 'Mehar', 3, NULL, NULL),
(219, 'Mehmood Kot', 5, NULL, NULL),
(220, 'Mehrabpur', 3, NULL, NULL),
(221, 'Mianchannu', 4, NULL, NULL),
(222, 'Mianwali', 4, NULL, NULL),
(223, 'Mingora', 1, NULL, NULL),
(224, 'Mir Ali', 1, NULL, NULL),
(225, 'Miran Shah', 1, NULL, NULL),
(226, 'Mirpur Khas', 3, NULL, NULL),
(227, 'Mirpur Mathelo', 3, NULL, NULL),
(228, 'Mithi', 3, NULL, NULL),
(229, 'Miyani', 1, NULL, NULL),
(230, 'More Khunda', 4, NULL, NULL),
(231, 'Moro', 3, NULL, NULL),
(232, 'Multan', 5, NULL, NULL),
(233, 'Muridke', 4, NULL, NULL),
(234, 'Murree', 1, NULL, NULL),
(235, 'Muzaffar Garh', 5, NULL, NULL),
(236, 'Muzaffarabad', 1, NULL, NULL),
(237, 'Nankana Sahib', 4, NULL, NULL),
(238, 'Narang Mandi', 4, NULL, NULL),
(239, 'Narowal', 4, NULL, NULL),
(240, 'Naseerabad', 3, NULL, NULL),
(241, 'Naukot', 3, NULL, NULL),
(242, 'Nawab Shah', 3, NULL, NULL),
(243, 'Nawan Sher', 1, NULL, NULL),
(244, 'Nokhar Mandi', 4, NULL, NULL),
(245, 'Noshehro Feroz', 3, NULL, NULL),
(246, 'Noshera Virkan', 4, NULL, NULL),
(247, 'Noudero', 3, NULL, NULL),
(248, 'Nowshera', 1, NULL, NULL),
(249, 'Okara', 4, NULL, NULL),
(250, 'Okara Cantt', 4, NULL, NULL),
(251, 'Osta Mohammad', 3, NULL, NULL),
(252, 'Pabbi', 1, NULL, NULL),
(253, 'Pakpattan', 4, NULL, NULL),
(254, 'Pano Aqil', 3, NULL, NULL),
(255, 'Pasroor', 4, NULL, NULL),
(256, 'Pattoki', 4, NULL, NULL),
(257, 'Peshawar', 1, NULL, NULL),
(258, 'Phalia', 4, NULL, NULL),
(259, 'Pind Dadan Khan', 1, NULL, NULL),
(260, 'Pindi Gheb', 1, NULL, NULL),
(261, 'Piplan', 4, NULL, NULL),
(262, 'Pir Jo Goth', 3, NULL, NULL),
(263, 'Pir Mahal', 4, NULL, NULL),
(264, 'Qasba Gujrat', 5, NULL, NULL),
(265, 'Qila Deedar Singh', 4, NULL, NULL),
(266, 'Quetta', 2, NULL, NULL),
(267, 'Rabwah (Chanab Nagar)', 4, NULL, NULL),
(268, 'Rahim Yar Khan', 5, NULL, NULL),
(269, 'Raiwind', 4, NULL, NULL),
(270, 'Rajanpur', 5, NULL, NULL),
(271, 'Ranipur', 3, NULL, NULL),
(272, 'Rato Dero', 3, NULL, NULL),
(273, 'Rawalpindi', 1, NULL, NULL),
(274, 'Rawat', 1, NULL, NULL),
(275, 'Renala Khurrd', 4, NULL, NULL),
(276, 'Risal  Pur', 1, NULL, NULL),
(277, 'Rohri', 3, NULL, NULL),
(278, 'Sadiq Abad', 5, NULL, NULL),
(279, 'Sadu Sharif', 1, NULL, NULL),
(280, 'Sahiwal', 4, NULL, NULL),
(281, 'Sajawal', 3, NULL, NULL),
(282, 'Sakrand', 3, NULL, NULL),
(283, 'Saleh Pat', 3, NULL, NULL),
(284, 'Samaro', 3, NULL, NULL),
(285, 'Sambrial', 4, NULL, NULL),
(286, 'Sambrial', 4, NULL, NULL),
(287, 'Samundri', 4, NULL, NULL),
(288, 'Sanghar', 3, NULL, NULL),
(289, 'Sangla Hill', 4, NULL, NULL),
(290, 'Sara - E - Alamgir', 4, NULL, NULL),
(291, 'Saraye Mahajer', 4, NULL, NULL),
(292, 'Sarei Nourang', 1, NULL, NULL),
(293, 'Sargodha', 4, NULL, NULL),
(294, 'Setharja', 3, NULL, NULL),
(295, 'Shabqadar', 1, NULL, NULL),
(296, 'Shah Kot', 4, NULL, NULL),
(297, 'Shah Pur City', 4, NULL, NULL),
(298, 'Shahdad Kot', 3, NULL, NULL),
(299, 'Shahdadpur', 3, NULL, NULL),
(300, 'Shakar Garh', 4, NULL, NULL),
(301, 'Shakardara', 1, NULL, NULL),
(302, 'Sharqpur', 4, NULL, NULL),
(303, 'Shiekhupura', 4, NULL, NULL),
(304, 'Shikarpur', 3, NULL, NULL),
(305, 'Shinkayari', 1, NULL, NULL),
(306, 'Shor Kot Cantt', 4, NULL, NULL),
(307, 'Shor Kot City', 4, NULL, NULL),
(308, 'Shuja Abad', 5, NULL, NULL),
(309, 'Sialkot', 4, NULL, NULL),
(310, 'Sibbi', 2, NULL, NULL),
(311, 'Sihala', 1, NULL, NULL),
(312, 'Sillanwali', 4, NULL, NULL),
(313, 'Sohawa', 4, NULL, NULL),
(314, 'Sukkur', 3, NULL, NULL),
(315, 'Swabi', 1, NULL, NULL),
(316, 'Swat (Mingora City)', 1, NULL, NULL),
(317, 'Takht Bhai Bazar', 1, NULL, NULL),
(318, 'Talagang', 1, NULL, NULL),
(319, 'Talhar', 3, NULL, NULL),
(320, 'Tando Adam', 3, NULL, NULL),
(321, 'Tando Allahyar', 3, NULL, NULL),
(322, 'Tando Jam', 3, NULL, NULL),
(323, 'Tando Jan Muhammad', 3, NULL, NULL),
(324, 'Tando M Khan', 3, NULL, NULL),
(325, 'Tangi', 1, NULL, NULL),
(326, 'Taranda Muhamamd Panah', 5, NULL, NULL),
(327, 'Tarnol', 1, NULL, NULL),
(328, 'Taunsa Sharif', 5, NULL, NULL),
(329, 'Taxila', 1, NULL, NULL),
(330, 'Terbala', 1, NULL, NULL),
(331, 'Thatta', 3, NULL, NULL),
(332, 'Timergera', 1, NULL, NULL),
(333, 'Toba Tek Singh', 4, NULL, NULL),
(334, 'Turbat', 3, NULL, NULL),
(335, 'Ubaro', 3, NULL, NULL),
(336, 'Uggokie', 4, NULL, NULL),
(337, 'Umer Kot', 3, NULL, NULL),
(338, 'Upper Topa', 1, NULL, NULL),
(339, 'Vehari', 5, NULL, NULL),
(340, 'Wah Cantt', 1, NULL, NULL),
(341, 'Warburton', 4, NULL, NULL),
(342, 'Wazirabad', 4, NULL, NULL),
(343, 'Yazman Mandi', 5, NULL, NULL),
(344, 'Zafar Wal', 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `destinations`
--

CREATE TABLE `destinations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `destinations`
--

INSERT INTO `destinations` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Within City', '2017-03-08 15:05:54', '2017-03-08 15:05:54'),
(2, 'Same Zone', '2017-03-08 15:06:04', '2017-03-08 15:06:04'),
(3, 'Different Zone', '2017-03-08 15:06:18', '2017-03-08 15:06:18'),
(4, 'City to City', '2017-03-08 15:06:24', '2017-03-08 15:06:24'),
(6, 'Booking from Punjab & KPK', '2017-03-09 13:06:15', '2017-03-09 13:06:15'),
(7, 'Booking from Sindh & Balochistan', '2017-03-09 13:06:23', '2017-03-09 13:06:23');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_03_08_114802_create_services_table', 1),
(4, '2017_03_08_114810_create_rates_table', 1),
(5, '2017_03_08_144646_create_destinations_table', 1),
(6, '2017_03_08_151331_create_cities_table', 1),
(7, '2017_03_08_151337_create_zones_table', 1),
(8, '2017_03_08_200919_change_rates_table', 1),
(9, '2017_03_10_100146_create_air_cargos_table', 1),
(10, '2017_03_10_103634_change_column_types_to_text', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rates`
--

CREATE TABLE `rates` (
  `id` int(10) UNSIGNED NOT NULL,
  `service_id` int(10) UNSIGNED DEFAULT NULL,
  `destination_id` int(10) UNSIGNED DEFAULT NULL,
  `weight` double(8,2) NOT NULL,
  `rate` int(10) UNSIGNED NOT NULL,
  `additional` int(10) UNSIGNED NOT NULL,
  `per` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rates`
--

INSERT INTO `rates` (`id`, `service_id`, `destination_id`, `weight`, `rate`, `additional`, `per`, `created_at`, `updated_at`) VALUES
(7, 3, 1, 0.50, 300, 200, 1.00, '2017-03-09 07:12:13', '2017-03-09 07:12:13'),
(8, 3, 1, 1.00, 300, 200, 1.00, '2017-03-09 07:12:14', '2017-03-09 07:12:14'),
(9, 3, 2, 0.50, 350, 200, 1.00, '2017-03-09 07:12:14', '2017-03-09 07:12:14'),
(10, 3, 2, 1.00, 350, 200, 1.00, '2017-03-09 07:12:14', '2017-03-09 07:12:14'),
(11, 3, 3, 0.50, 350, 200, 1.00, '2017-03-09 07:12:14', '2017-03-09 07:12:14'),
(12, 3, 3, 1.00, 350, 200, 1.00, '2017-03-09 07:12:14', '2017-03-09 07:12:14'),
(13, 4, 1, 0.50, 350, 150, 1.00, '2017-03-09 07:13:24', '2017-03-09 07:13:24'),
(14, 4, 1, 1.00, 350, 150, 1.00, '2017-03-09 07:13:24', '2017-03-09 07:13:24'),
(15, 4, 4, 0.50, 700, 200, 1.00, '2017-03-09 07:13:24', '2017-03-09 07:13:24'),
(16, 4, 4, 1.00, 700, 200, 1.00, '2017-03-09 07:13:24', '2017-03-09 07:13:24'),
(17, 5, 1, 0.50, 100, 80, 0.50, '2017-03-09 07:43:49', '2017-03-09 07:43:49'),
(18, 5, 1, 1.00, 150, 80, 0.50, '2017-03-09 07:43:49', '2017-03-09 07:43:49'),
(19, 5, 2, 0.50, 150, 100, 0.50, '2017-03-09 07:43:49', '2017-03-09 07:43:50'),
(20, 5, 2, 1.00, 200, 100, 0.50, '2017-03-09 07:43:50', '2017-03-09 07:43:50'),
(21, 5, 3, 0.50, 200, 130, 0.50, '2017-03-09 07:43:50', '2017-03-09 07:43:50'),
(22, 5, 3, 1.00, 250, 130, 0.50, '2017-03-09 07:43:50', '2017-03-09 07:43:50'),
(38, 6, 1, 2.00, 250, 120, 1.00, '2017-03-10 06:00:23', '2017-03-10 06:00:23'),
(39, 6, 1, 5.00, 600, 100, 1.00, '2017-03-10 06:00:23', '2017-03-10 06:00:23'),
(40, 6, 1, 10.00, 900, 80, 1.00, '2017-03-10 06:00:23', '2017-03-10 06:00:23'),
(41, 6, 1, 20.00, 1500, 70, 1.00, '2017-03-10 06:00:23', '2017-03-10 06:00:23'),
(42, 6, 1, 30.00, 2200, 70, 1.00, '2017-03-10 06:00:23', '2017-03-10 06:00:23'),
(43, 6, 2, 2.00, 300, 150, 1.00, '2017-03-10 06:00:24', '2017-03-10 06:00:24'),
(44, 6, 2, 5.00, 650, 120, 1.00, '2017-03-10 06:00:24', '2017-03-10 06:00:24'),
(45, 6, 2, 10.00, 1100, 100, 1.00, '2017-03-10 06:00:24', '2017-03-10 06:00:24'),
(46, 6, 2, 20.00, 1800, 90, 1.00, '2017-03-10 06:00:24', '2017-03-10 06:00:24'),
(47, 6, 2, 30.00, 2300, 80, 1.00, '2017-03-10 06:00:24', '2017-03-10 06:00:24'),
(48, 6, 3, 2.00, 450, 190, 1.00, '2017-03-10 06:00:24', '2017-03-10 06:00:24'),
(49, 6, 3, 5.00, 850, 150, 1.00, '2017-03-10 06:00:24', '2017-03-10 06:00:24'),
(50, 6, 3, 10.00, 1450, 120, 1.00, '2017-03-10 06:00:24', '2017-03-10 06:00:24'),
(51, 6, 3, 20.00, 2300, 110, 1.00, '2017-03-10 06:00:24', '2017-03-10 06:00:24'),
(52, 6, 3, 30.00, 3300, 110, 1.00, '2017-03-10 06:00:24', '2017-03-10 06:00:25');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(3, 'MyFlyer', 'Polyflyer protection for your sensitive shipments like cell phones, passports and other important documents.', '2017-03-09 07:12:13', '2017-03-10 10:13:38'),
(4, 'Same day', 'Same day delivery service for your urgent courier needs.', '2017-03-09 07:13:24', '2017-03-09 07:13:24'),
(5, 'Overnight', 'Next day delivery service for document and non-document shipments.', '2017-03-09 07:43:49', '2017-03-10 10:13:53'),
(6, 'MyBox', 'Our parcel product for your overnight heavy courier shipments available in 2, 5, 10, 20 & 30kg volumized boxes. Catering to your needs, beautifully crafted briefcase style boxes in 2 & 5kg are also an option to pick from our wide range of OCS MyBox family.', '2017-03-09 10:59:43', '2017-03-10 10:14:06'),
(7, 'AirCargo', 'Pack your parcels & deliver across Pakistan in fastest time and lowest rates. AirCargo allows your heavy shipments to reach destination with a speed you always wanted.', '2017-03-10 06:02:54', '2017-03-10 06:02:54');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zones`
--

CREATE TABLE `zones` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `zones`
--

INSERT INTO `zones` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Zone A', NULL, NULL),
(2, 'Zone B', NULL, NULL),
(3, 'Zone C', NULL, NULL),
(4, 'Zone D', NULL, NULL),
(5, 'Zone E', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `air_cargos`
--
ALTER TABLE `air_cargos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `destinations`
--
ALTER TABLE `destinations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `rates`
--
ALTER TABLE `rates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rates_service_id_foreign` (`service_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `zones`
--
ALTER TABLE `zones`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `air_cargos`
--
ALTER TABLE `air_cargos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=345;

--
-- AUTO_INCREMENT for table `destinations`
--
ALTER TABLE `destinations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `rates`
--
ALTER TABLE `rates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zones`
--
ALTER TABLE `zones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
