-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 14, 2025 at 05:52 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `playground`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `activity` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `user_id`, `activity`, `description`, `timestamp`) VALUES
(71, 2, 'Login', 'User Has Log in.', '2025-01-13 12:54:46'),
(72, 2, 'View', 'User view Dashboard.', '2025-01-13 12:54:46'),
(73, 2, 'View', 'User view Setting.', '2025-01-13 12:54:49'),
(74, 2, 'Updated', 'User Has Updated The Logo', '2025-01-13 12:56:28'),
(75, 2, 'View', 'User view Setting.', '2025-01-13 12:56:28'),
(76, 2, 'Updated', 'User Has Updated The Logo', '2025-01-13 12:58:11'),
(77, 2, 'View', 'User view Setting.', '2025-01-13 12:58:12'),
(78, 2, 'Updated', 'User Has Updated The Logo', '2025-01-13 13:00:51'),
(79, 2, 'View', 'User view Setting.', '2025-01-13 13:00:51'),
(80, 2, 'View', 'User view Setting.', '2025-01-13 13:02:08'),
(81, 2, 'Updated', 'User Has Updated The Logo', '2025-01-13 13:02:17'),
(82, 2, 'View', 'User view Setting.', '2025-01-13 13:02:17'),
(83, 2, 'View', 'User view Dashboard.', '2025-01-13 13:02:19'),
(84, 2, 'View', 'User view Setting.', '2025-01-13 13:02:21'),
(85, 2, 'Logout', 'User Has Logout.', '2025-01-13 13:02:36'),
(86, 2, 'Login', 'User Has Log in.', '2025-01-13 13:03:20'),
(87, 2, 'View', 'User view Dashboard.', '2025-01-13 13:03:20'),
(88, 2, 'View', 'User view Setting.', '2025-01-13 13:03:23'),
(89, 2, 'View', 'User view Setting.', '2025-01-13 13:03:37'),
(90, 2, 'View', 'User view Setting.', '2025-01-13 13:03:48'),
(91, 2, 'View', 'User view Setting.', '2025-01-13 13:03:52'),
(92, 2, 'View', 'User view Setting.', '2025-01-13 13:03:57'),
(93, 2, 'View', 'User view Setting.', '2025-01-13 13:04:03'),
(94, 2, 'View', 'User view Setting.', '2025-01-13 13:04:06'),
(95, 2, 'View', 'User view Setting.', '2025-01-13 13:04:09'),
(96, 2, 'View', 'User view Setting.', '2025-01-13 13:06:42'),
(97, 2, 'View', 'User view Activity Log.', '2025-01-13 13:06:43'),
(98, 2, 'View', 'User view Setting.', '2025-01-13 13:06:47'),
(99, 2, 'View', 'User view Dashboard.', '2025-01-13 13:06:49'),
(100, 2, 'View', 'User view Activity Log.', '2025-01-13 13:06:50'),
(101, 2, 'View', 'User view Dashboard.', '2025-01-13 13:06:51'),
(102, 2, 'View', 'User view Dashboard.', '2025-01-13 13:07:03'),
(103, 2, 'View', 'User view Activity Log.', '2025-01-13 13:07:04'),
(104, 2, 'View', 'User view Setting.', '2025-01-13 13:07:11'),
(105, 2, 'View', 'User view Dashboard.', '2025-01-13 13:07:12'),
(106, 2, 'View', 'User view Dashboard.', '2025-01-13 13:07:49'),
(107, 2, 'View', 'User view Dashboard.', '2025-01-13 13:13:13'),
(108, 2, 'View', 'User view Dashboard.', '2025-01-13 13:14:21'),
(109, 2, 'View', 'User view Dashboard.', '2025-01-13 13:14:22'),
(110, 2, 'View', 'User view Dashboard.', '2025-01-13 13:14:23'),
(111, 2, 'View', 'User view Dashboard.', '2025-01-13 13:14:23'),
(112, 2, 'View', 'User view Dashboard.', '2025-01-13 13:15:16'),
(113, 2, 'View', 'User view Dashboard.', '2025-01-13 13:18:40'),
(114, 2, 'View', 'User view Dashboard.', '2025-01-13 13:23:35'),
(115, 2, 'View', 'User view Dashboard.', '2025-01-13 13:23:40'),
(116, 2, 'View', 'User view Dashboard.', '2025-01-13 13:24:08'),
(117, 2, 'View', 'User view Dashboard.', '2025-01-13 13:24:16'),
(118, 2, 'View', 'User view Dashboard.', '2025-01-13 13:24:36'),
(119, 2, 'View', 'User view Dashboard.', '2025-01-13 13:25:50'),
(120, 2, 'View', 'User view Dashboard.', '2025-01-13 13:26:03'),
(121, 2, 'View', 'User view Dashboard.', '2025-01-13 13:26:57'),
(122, 2, 'View', 'User view Dashboard.', '2025-01-13 13:27:49'),
(123, 2, 'View', 'User view Dashboard.', '2025-01-13 13:27:50'),
(124, 2, 'View', 'User view Dashboard.', '2025-01-13 13:28:39'),
(125, 2, 'View', 'User view Dashboard.', '2025-01-13 13:28:48'),
(126, 2, 'View', 'User view Dashboard.', '2025-01-13 13:28:57'),
(127, 2, 'View', 'User view Dashboard.', '2025-01-13 13:29:02'),
(128, 2, 'View', 'User view Dashboard.', '2025-01-13 13:29:08'),
(129, 2, 'View', 'User view Dashboard.', '2025-01-13 13:29:26'),
(130, 2, 'View', 'User view Dashboard.', '2025-01-13 13:29:32'),
(131, 2, 'View', 'User view Dashboard.', '2025-01-13 13:29:36'),
(132, 2, 'View', 'User view Dashboard.', '2025-01-13 13:29:39'),
(133, 2, 'View', 'User view Dashboard.', '2025-01-13 13:29:41'),
(134, 2, 'View', 'User view Dashboard.', '2025-01-13 13:29:45'),
(135, 2, 'View', 'User view Dashboard.', '2025-01-13 13:29:51'),
(136, 2, 'View', 'User view Dashboard.', '2025-01-13 13:29:54'),
(137, 2, 'View', 'User view Dashboard.', '2025-01-13 13:30:04'),
(138, 2, 'View', 'User view Dashboard.', '2025-01-13 13:30:12'),
(139, 2, 'View', 'User view Dashboard.', '2025-01-13 13:30:25'),
(140, 2, 'View', 'User view Dashboard.', '2025-01-13 13:30:36'),
(141, 2, 'View', 'User view Dashboard.', '2025-01-13 13:30:42'),
(142, 2, 'View', 'User view Dashboard.', '2025-01-13 13:30:45'),
(143, 2, 'View', 'User view Dashboard.', '2025-01-13 13:30:50'),
(144, 2, 'View', 'User view Dashboard.', '2025-01-13 13:30:54'),
(145, 2, 'View', 'User view Dashboard.', '2025-01-13 13:31:07'),
(146, 2, 'View', 'User view Dashboard.', '2025-01-13 13:31:17'),
(147, 2, 'View', 'User view Dashboard.', '2025-01-13 13:31:27'),
(148, 2, 'View', 'User view Dashboard.', '2025-01-13 13:31:33'),
(149, 2, 'View', 'User view Dashboard.', '2025-01-13 13:31:37'),
(150, 2, 'View', 'User view Dashboard.', '2025-01-13 13:31:53'),
(151, 2, 'View', 'User view Dashboard.', '2025-01-13 13:32:20'),
(152, 2, 'View', 'User view Dashboard.', '2025-01-13 13:32:26'),
(153, 2, 'View', 'User view Dashboard.', '2025-01-13 13:32:35'),
(154, 2, 'View', 'User view Dashboard.', '2025-01-13 13:32:39'),
(155, 2, 'View', 'User view Dashboard.', '2025-01-13 13:32:43'),
(156, 2, 'View', 'User view Dashboard.', '2025-01-13 13:32:46'),
(157, 2, 'View', 'User view Dashboard.', '2025-01-13 13:33:34'),
(158, 2, 'View', 'User view Dashboard.', '2025-01-13 13:33:38'),
(159, 2, 'View', 'User view Dashboard.', '2025-01-13 13:34:35'),
(160, 2, 'View', 'User view Dashboard.', '2025-01-13 13:35:02'),
(161, 2, 'View', 'User view Dashboard.', '2025-01-13 13:35:07'),
(162, 2, 'View', 'User view Dashboard.', '2025-01-13 13:35:12'),
(163, 2, 'View', 'User view Dashboard.', '2025-01-13 13:35:15'),
(164, 2, 'View', 'User view Dashboard.', '2025-01-13 13:36:30'),
(165, 2, 'View', 'User view Dashboard.', '2025-01-13 13:36:42'),
(166, 2, 'View', 'User view Dashboard.', '2025-01-13 13:37:02'),
(167, 2, 'View', 'User view Dashboard.', '2025-01-13 13:37:07'),
(168, 2, 'View', 'User view Dashboard.', '2025-01-13 13:37:12'),
(169, 2, 'View', 'User view Dashboard.', '2025-01-13 13:37:15'),
(170, 2, 'View', 'User view Dashboard.', '2025-01-13 13:37:24'),
(171, 2, 'View', 'User view Dashboard.', '2025-01-13 13:37:41'),
(172, 2, 'View', 'User view Dashboard.', '2025-01-13 13:37:43'),
(173, 2, 'View', 'User view Dashboard.', '2025-01-13 13:37:48'),
(174, 2, 'View', 'User view Dashboard.', '2025-01-13 13:43:07'),
(175, 2, 'View', 'User view Dashboard.', '2025-01-13 13:43:19'),
(176, 2, 'View', 'User view Dashboard.', '2025-01-13 13:43:28'),
(177, 2, 'View', 'User view Dashboard.', '2025-01-13 13:43:35'),
(178, 2, 'View', 'User view Dashboard.', '2025-01-13 13:43:43'),
(179, 2, 'View', 'User view Dashboard.', '2025-01-13 13:44:29'),
(180, 2, 'View', 'User view Dashboard.', '2025-01-13 13:44:49'),
(181, 2, 'View', 'User view Dashboard.', '2025-01-13 13:44:49'),
(182, 2, 'View', 'User view Dashboard.', '2025-01-13 13:44:49'),
(183, 2, 'View', 'User view Dashboard.', '2025-01-13 13:46:09'),
(184, 2, 'View', 'User view Dashboard.', '2025-01-13 13:46:10'),
(185, 2, 'View', 'User view Dashboard.', '2025-01-13 13:46:10'),
(186, 2, 'View', 'User view Dashboard.', '2025-01-13 13:46:10'),
(187, 2, 'View', 'User view Dashboard.', '2025-01-13 13:46:38'),
(188, 2, 'View', 'User view Dashboard.', '2025-01-13 13:46:39'),
(189, 2, 'View', 'User view Dashboard.', '2025-01-13 13:46:55'),
(190, 2, 'View', 'User view Dashboard.', '2025-01-13 13:55:51'),
(191, 2, 'View', 'User view Dashboard.', '2025-01-13 13:55:59'),
(192, 2, 'View', 'User view Dashboard.', '2025-01-13 13:56:51'),
(193, 2, 'View', 'User view Dashboard.', '2025-01-13 13:56:54'),
(194, 2, 'View', 'User view Dashboard.', '2025-01-13 13:57:01'),
(195, 2, 'View', 'User view permainan Data.', '2025-01-13 13:57:02'),
(196, 2, 'View', 'User view permainan Data.', '2025-01-13 13:57:35'),
(197, 2, 'View', 'User view permainan Data.', '2025-01-13 13:58:52'),
(198, 2, 'View', 'User view permainan Data.', '2025-01-13 13:58:54'),
(199, 2, 'Login', 'User Has Log in.', '2025-01-14 08:59:32'),
(200, 2, 'View', 'User view Dashboard.', '2025-01-14 08:59:32'),
(201, 2, 'View', 'User view permainan Data.', '2025-01-14 08:59:50'),
(202, 2, 'View', 'User view permainan Data.', '2025-01-14 08:59:59'),
(203, 2, 'View', 'User view permainan Data.', '2025-01-14 09:00:02'),
(204, 2, 'View', 'User view permainan Data.', '2025-01-14 09:11:47'),
(205, 2, 'View', 'User view permainan Data.', '2025-01-14 09:12:34'),
(206, 2, 'View', 'User view permainan Data.', '2025-01-14 09:14:48'),
(207, NULL, 'Delete', 'User Has Remove A Permainan Data', '2025-01-14 09:14:49'),
(208, 2, 'View', 'User view permainan Data.', '2025-01-14 09:14:49'),
(209, 2, 'View', 'User view permainan Data.', '2025-01-14 09:14:51'),
(210, NULL, 'Delete', 'User Has Remove A Permainan Data', '2025-01-14 09:14:51'),
(211, 2, 'View', 'User view permainan Data.', '2025-01-14 09:14:56'),
(212, NULL, 'Delete', 'User Has Remove A Permainan Data', '2025-01-14 09:15:14'),
(213, 2, 'View', 'User view permainan Data.', '2025-01-14 09:15:30'),
(214, NULL, 'Delete', 'User Has Remove A Permainan Data', '2025-01-14 09:15:31'),
(215, 2, 'View', 'User view permainan Data.', '2025-01-14 09:15:32'),
(216, 2, 'View', 'User view permainan Data.', '2025-01-14 09:16:50'),
(217, 2, 'View', 'User view permainan Data.', '2025-01-14 09:16:51'),
(218, 2, 'View', 'User view permainan Data.', '2025-01-14 09:16:53'),
(219, 2, 'View', 'User view permainan Data.', '2025-01-14 09:17:11'),
(220, NULL, 'Delete', 'User Has Remove A Permainan Data', '2025-01-14 09:17:13'),
(221, 2, 'View', 'User view permainan Data.', '2025-01-14 09:17:13'),
(222, 2, 'View', 'User view permainan Data.', '2025-01-14 09:17:15'),
(223, 2, 'View', 'User view permainan Data.', '2025-01-14 09:17:44'),
(224, 2, 'View', 'User view permainan Data.', '2025-01-14 09:21:02'),
(225, 2, 'View', 'User view permainan Data.', '2025-01-14 09:21:34'),
(226, 2, 'View', 'User view Dashboard.', '2025-01-14 09:21:36'),
(227, 2, 'View', 'User view permainan Data.', '2025-01-14 09:21:38'),
(228, 2, 'View', 'User view permainan Data.', '2025-01-14 09:22:01'),
(229, 2, 'View', 'User view permainan Data.', '2025-01-14 09:21:56'),
(230, 2, 'View', 'User view permainan Data.', '2025-01-14 09:22:04'),
(231, 2, 'View', 'User view Update User Data.', '2025-01-14 09:22:15'),
(232, 2, 'View', 'User view Update User Data.', '2025-01-14 09:22:35'),
(233, 2, 'Update', 'User Updated Wahana Data.', '2025-01-14 09:24:13'),
(234, 2, 'View', 'User view permainan Data.', '2025-01-14 09:24:13'),
(235, 2, 'View', 'User view Update User Data.', '2025-01-14 09:24:16'),
(236, 2, 'Update', 'User Updated Wahana Data.', '2025-01-14 09:25:04'),
(237, 2, 'View', 'User view permainan Data.', '2025-01-14 09:25:05'),
(238, 2, 'View', 'User view Update User Data.', '2025-01-14 09:25:07'),
(239, 2, 'View', 'User view permainan Data.', '2025-01-14 09:25:07'),
(240, 2, 'View', 'User view Update User Data.', '2025-01-14 09:25:10'),
(241, 2, 'Update', 'User Updated Wahana Data.', '2025-01-14 09:25:21'),
(242, 2, 'View', 'User view Update User Data.', '2025-01-14 09:25:28'),
(243, 2, 'Update', 'User Updated Wahana Data.', '2025-01-14 09:25:44'),
(244, 2, 'View', 'User view Update User Data.', '2025-01-14 09:25:47'),
(245, 2, 'Update', 'User Updated Wahana Data.', '2025-01-14 09:26:17'),
(246, 2, 'View', 'User view permainan Data.', '2025-01-14 09:26:18'),
(247, 2, 'View', 'User view permainan Data.', '2025-01-14 09:28:31'),
(248, 2, 'View', 'User view permainan Data.', '2025-01-14 09:28:34'),
(249, 2, 'View', 'User view permainan Data.', '2025-01-14 09:28:47'),
(250, 2, 'View', 'User view permainan Data.', '2025-01-14 09:28:51'),
(251, 2, 'View', 'User view permainan Data.', '2025-01-14 09:29:02'),
(252, 2, 'View', 'User view permainan Data.', '2025-01-14 09:29:06'),
(253, 2, 'View', 'User view Update User Data.', '2025-01-14 09:29:49'),
(254, 2, 'View', 'User view permainan Data.', '2025-01-14 09:29:50'),
(255, 2, 'View', 'User view Update User Data.', '2025-01-14 09:29:53'),
(256, 2, 'View', 'User view Update User Data.', '2025-01-14 09:32:05'),
(257, 2, 'View', 'User view Update User Data.', '2025-01-14 09:32:22'),
(258, 2, 'View', 'User view Update User Data.', '2025-01-14 09:32:29'),
(259, 2, 'View', 'User view Update User Data.', '2025-01-14 09:32:46'),
(260, 2, 'Update', 'User Updated Wahana Data.', '2025-01-14 09:33:47'),
(261, 2, 'View', 'User view permainan Data.', '2025-01-14 09:33:47'),
(262, 2, 'View', 'User view Update User Data.', '2025-01-14 09:33:58'),
(263, 2, 'Update', 'User Updated Wahana Data.', '2025-01-14 09:34:09'),
(264, 2, 'View', 'User view permainan Data.', '2025-01-14 09:34:09'),
(265, 2, 'View', 'User view Update User Data.', '2025-01-14 09:34:11'),
(266, 2, 'Update', 'User Updated Wahana Data.', '2025-01-14 09:34:13'),
(267, 2, 'View', 'User view permainan Data.', '2025-01-14 09:34:13'),
(268, 2, 'View', 'User view Update User Data.', '2025-01-14 09:34:14'),
(269, 2, 'View', 'User view Update User Data.', '2025-01-14 09:34:15'),
(270, 2, 'Update', 'User Updated Wahana Data.', '2025-01-14 09:34:20'),
(271, 2, 'View', 'User view permainan Data.', '2025-01-14 09:34:20'),
(272, 2, 'View', 'User view Update User Data.', '2025-01-14 09:34:22'),
(273, 2, 'Update', 'User Updated Wahana Data.', '2025-01-14 09:34:35'),
(274, 2, 'View', 'User view permainan Data.', '2025-01-14 09:34:35'),
(275, 2, 'View', 'User view Update User Data.', '2025-01-14 09:34:36'),
(276, 2, 'View', 'User view Update User Data.', '2025-01-14 09:34:39'),
(277, 2, 'ADD', 'User Added Wahana Data.', '2025-01-14 09:34:45'),
(278, 2, 'View', 'User view Update User Data.', '2025-01-14 09:34:47'),
(279, 2, 'View', 'User view permainan Data.', '2025-01-14 09:34:48'),
(280, 2, 'View', 'User view Dashboard.', '2025-01-14 09:37:51'),
(281, 2, 'View', 'User view Dashboard.', '2025-01-14 09:37:53'),
(282, 2, 'View', 'User view Dashboard.', '2025-01-14 09:37:55'),
(283, 2, 'View', 'User view Dashboard.', '2025-01-14 09:38:32'),
(284, 2, 'View', 'User view Dashboard.', '2025-01-14 09:39:52'),
(285, 2, 'View', 'User view Dashboard.', '2025-01-14 09:39:53'),
(286, 2, 'View', 'User view Dashboard.', '2025-01-14 09:40:08'),
(287, 2, 'View', 'User view Dashboard.', '2025-01-14 09:40:09'),
(288, 2, 'View', 'User view Dashboard.', '2025-01-14 09:40:28'),
(289, 2, 'View', 'User view permainan Data.', '2025-01-14 09:40:30'),
(290, 2, 'View', 'User view permainan Data.', '2025-01-14 09:43:54'),
(291, 2, 'View', 'User view User Data.', '2025-01-14 09:43:55'),
(292, 2, 'View', 'User view User Data.', '2025-01-14 09:44:14'),
(293, 2, 'View', 'User view User Data.', '2025-01-14 09:44:29'),
(294, 2, 'View', 'User view User Data.', '2025-01-14 09:44:43'),
(295, 2, 'View', 'User view User Data.', '2025-01-14 09:44:46'),
(296, 2, 'View', 'User view User Data.', '2025-01-14 09:44:46'),
(297, 2, 'View', 'User view User Data.', '2025-01-14 09:44:46'),
(298, 2, 'View', 'User view User Data.', '2025-01-14 09:44:46'),
(299, 2, 'View', 'User view User Data.', '2025-01-14 09:44:47'),
(300, 2, 'View', 'User view User Data.', '2025-01-14 09:45:06'),
(301, 2, 'View', 'User view User Data.', '2025-01-14 09:46:41'),
(302, NULL, 'Delete', 'User Has Remove A User Data', '2025-01-14 09:46:42'),
(303, 2, 'View', 'User view User Data.', '2025-01-14 09:46:42'),
(304, 2, 'View', 'User view User Data.', '2025-01-14 09:48:29'),
(305, 2, 'View', 'User view User Data.', '2025-01-14 09:48:35'),
(306, 2, 'View', 'User view User Data.', '2025-01-14 09:49:08'),
(307, 2, 'View', 'User view Add Student Data.', '2025-01-14 09:49:24'),
(308, 2, 'Add', 'User Add user Data.', '2025-01-14 09:49:56'),
(309, 2, 'View', 'User view User Data.', '2025-01-14 09:49:56'),
(310, 2, 'View', 'User view User Data.', '2025-01-14 09:50:50'),
(311, 2, 'View', 'User view User Data.', '2025-01-14 09:50:57'),
(312, 2, 'View', 'User view Update User Data.', '2025-01-14 09:50:59'),
(313, 2, 'View', 'User view Update User Data.', '2025-01-14 09:51:50'),
(314, 2, 'Update', 'User Updated User Data.', '2025-01-14 09:52:25'),
(315, 2, 'View', 'User view User Data.', '2025-01-14 09:52:25'),
(316, 2, 'View', 'User view Update User Data.', '2025-01-14 09:53:01'),
(317, 2, 'Update', 'User Updated User Data.', '2025-01-14 09:53:22'),
(318, 2, 'View', 'User view User Data.', '2025-01-14 09:53:22'),
(319, 2, 'View', 'User view Update User Data.', '2025-01-14 09:53:28'),
(320, 2, 'Update', 'User Updated User Data.', '2025-01-14 09:53:34'),
(321, 2, 'View', 'User view User Data.', '2025-01-14 09:53:34'),
(322, 2, 'View', 'User view Dashboard.', '2025-01-14 09:54:03'),
(323, 2, 'View', 'User view Update User Data.', '2025-01-14 10:01:14'),
(324, 2, 'Logout', 'User Has Logout.', '2025-01-14 10:01:15'),
(325, 2, 'Login', 'User Has Log in.', '2025-01-14 10:01:19'),
(326, 2, 'View', 'User view Dashboard.', '2025-01-14 10:01:20'),
(327, 2, 'View', 'User view permainan Data.', '2025-01-14 10:01:27'),
(328, 2, 'View', 'User view Dashboard.', '2025-01-14 10:01:28'),
(329, 2, 'View', 'User view permainan Data.', '2025-01-14 10:01:30'),
(330, 2, 'View', 'User view Dashboard.', '2025-01-14 10:01:33'),
(331, 2, 'View', 'User view permainan Data.', '2025-01-14 10:01:39'),
(332, 2, 'View', 'User view User Data.', '2025-01-14 10:01:40'),
(333, 2, 'View', 'User view User Data.', '2025-01-14 10:01:42'),
(334, 2, 'View', 'User view User Data.', '2025-01-14 10:01:42'),
(335, 2, 'View', 'User view User Data.', '2025-01-14 10:01:43'),
(336, 2, 'View', 'User view permainan Data.', '2025-01-14 10:01:44'),
(337, 2, 'View', 'User view User Data.', '2025-01-14 10:01:45'),
(338, 2, 'View', 'User view User Data.', '2025-01-14 10:02:11'),
(339, 2, 'Login', 'User Has Log in.', '2025-01-14 12:25:24'),
(340, 2, 'View', 'User view Dashboard.', '2025-01-14 12:25:24'),
(341, 2, 'View', 'User view permainan Data.', '2025-01-14 12:25:27'),
(342, 2, 'View', 'User view User Data.', '2025-01-14 12:25:29'),
(343, 2, 'View', 'User view permainan Data.', '2025-01-14 12:25:31'),
(344, 2, 'View', 'User view User Data.', '2025-01-14 12:25:32'),
(345, 2, 'View', 'User view permainan Data.', '2025-01-14 12:25:32'),
(346, 2, 'View', 'User view User Data.', '2025-01-14 12:25:33'),
(347, 2, 'View', 'User view User Data.', '2025-01-14 12:34:45'),
(348, 2, 'View', 'User view User Data.', '2025-01-14 12:34:46'),
(349, 2, 'View', 'User view User Data.', '2025-01-14 12:34:46'),
(350, 2, 'View', 'User view User Data.', '2025-01-14 12:36:10'),
(351, 2, 'View', 'User view User Data.', '2025-01-14 12:36:21'),
(352, 2, 'View', 'User view User Data.', '2025-01-14 12:36:49'),
(353, 2, 'View', 'User view User Data.', '2025-01-14 12:37:02'),
(354, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 12:37:11'),
(355, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 12:37:29'),
(356, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 12:37:49'),
(357, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 12:38:16'),
(358, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 12:38:16'),
(359, 2, 'View', 'User view permainan Data.', '2025-01-14 12:38:17'),
(360, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 12:38:18'),
(361, 2, 'View', 'User view permainan Data.', '2025-01-14 12:38:19'),
(362, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 12:38:20'),
(363, 2, 'View', 'User view permainan Data.', '2025-01-14 12:38:20'),
(364, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 12:38:21'),
(365, 2, 'View', 'User view Dashboard.', '2025-01-14 12:38:23'),
(366, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 12:38:23'),
(367, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 12:38:43'),
(368, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 12:38:44'),
(369, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 12:38:44'),
(370, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 12:38:45'),
(371, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 12:38:56'),
(372, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 12:39:29'),
(373, 2, 'View', 'User view Update Pelanggan Data.', '2025-01-14 12:39:29'),
(374, 2, 'View', 'User view Update Pelanggan Data.', '2025-01-14 12:40:40'),
(375, 2, 'View', 'User view Update Pelanggan Data.', '2025-01-14 12:41:45'),
(376, 2, 'View', 'User view Update Pelanggan Data.', '2025-01-14 12:42:37'),
(377, 2, 'View', 'User view Update Pelanggan Data.', '2025-01-14 12:48:10'),
(378, 2, 'ADD', 'User Added Wahana Data.', '2025-01-14 12:48:20'),
(379, 2, 'View', 'User view permainan Data.', '2025-01-14 12:48:20'),
(380, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 12:48:23'),
(381, 2, 'View', 'User view permainan Data.', '2025-01-14 12:48:23'),
(382, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 12:48:52'),
(383, 2, 'View', 'User view permainan Data.', '2025-01-14 12:48:53'),
(384, 2, 'View', 'User view Update Pelanggan Data.', '2025-01-14 12:48:54'),
(385, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 12:48:56'),
(386, 2, 'View', 'User view Update Pelanggan Data.', '2025-01-14 12:48:59'),
(387, 2, 'ADD', 'User Added Pelanggan Data.', '2025-01-14 12:49:05'),
(388, 2, 'View', 'User view Update Pelanggan Data.', '2025-01-14 12:49:15'),
(389, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 12:49:16'),
(390, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 12:49:31'),
(391, NULL, 'Delete', 'User Has Remove A Pelanggan Data', '2025-01-14 12:49:32'),
(392, 2, 'View', 'User view permainan Data.', '2025-01-14 12:49:32'),
(393, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 12:49:34'),
(394, 2, 'View', 'User view permainan Data.', '2025-01-14 12:49:36'),
(395, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 12:49:38'),
(396, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 12:49:38'),
(397, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 12:49:54'),
(398, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 12:50:02'),
(399, NULL, 'Delete', 'User Has Remove A Pelanggan Data', '2025-01-14 12:50:04'),
(400, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 12:50:04'),
(401, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 12:50:20'),
(402, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 12:50:21'),
(403, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 12:50:37'),
(404, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 12:52:31'),
(405, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 12:53:11'),
(406, 2, 'View', 'User view Update Pelanggan Data.', '2025-01-14 12:53:20'),
(407, 2, 'View', 'User view Update Pelanggan Data.', '2025-01-14 12:54:34'),
(408, 2, 'Update', 'User Updated Pelanggan Data.', '2025-01-14 12:54:42'),
(409, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 12:54:42'),
(410, 2, 'View', 'User view Update Pelanggan Data.', '2025-01-14 12:54:46'),
(411, 2, 'Update', 'User Updated Pelanggan Data.', '2025-01-14 12:55:08'),
(412, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 12:55:08'),
(413, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 12:55:19'),
(414, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 12:55:21'),
(415, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 12:55:30'),
(416, 2, 'View', 'User view Update Pelanggan Data.', '2025-01-14 12:55:31'),
(417, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 12:55:33'),
(418, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 12:55:44'),
(419, 2, 'View', 'User view permainan Data.', '2025-01-14 12:55:46'),
(420, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 12:55:47'),
(421, 2, 'View', 'User view Dashboard.', '2025-01-14 12:55:48'),
(422, 2, 'View', 'User view User Data.', '2025-01-14 12:59:03'),
(423, 2, 'View', 'User view User Data.', '2025-01-14 12:59:31'),
(424, 2, 'View', 'User view Setting.', '2025-01-14 12:59:32'),
(425, 2, 'View', 'User view Setting.', '2025-01-14 12:59:46'),
(426, 2, 'View', 'User view Setting.', '2025-01-14 12:59:57'),
(427, 2, 'View', 'User view Setting.', '2025-01-14 13:01:22'),
(428, 2, 'View', 'User view Setting.', '2025-01-14 13:01:22'),
(429, 2, 'View', 'User view Setting.', '2025-01-14 13:01:34'),
(430, 2, 'View', 'User view Setting.', '2025-01-14 13:02:14'),
(431, 2, 'View', 'User view Setting.', '2025-01-14 13:02:28'),
(432, 2, 'View', 'User view Setting.', '2025-01-14 13:06:00'),
(433, NULL, 'Delete', 'User Has Updated the pajak Persen', '2025-01-14 13:06:02'),
(434, 2, 'View', 'User view Setting.', '2025-01-14 13:06:02'),
(435, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 13:06:04'),
(436, 2, 'View', 'User view Setting.', '2025-01-14 13:06:05'),
(437, NULL, 'Delete', 'User Has Updated the pajak Persen', '2025-01-14 13:06:11'),
(438, 2, 'View', 'User view Setting.', '2025-01-14 13:06:11'),
(439, NULL, 'Delete', 'User Has Updated the pajak Persen', '2025-01-14 13:06:19'),
(440, 2, 'View', 'User view Setting.', '2025-01-14 13:06:19'),
(441, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 13:06:30'),
(442, 2, 'View', 'User view permainan Data.', '2025-01-14 13:06:30'),
(443, 2, 'View', 'User view Setting.', '2025-01-14 13:06:31'),
(444, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 13:06:32'),
(445, 2, 'View', 'User view permainan Data.', '2025-01-14 13:06:32'),
(446, 2, 'Login', 'User Has Log in.', '2025-01-14 13:15:23'),
(447, 2, 'View', 'User view Dashboard.', '2025-01-14 13:15:23'),
(448, 2, 'View', 'User view Dashboard.', '2025-01-14 13:16:37'),
(449, 2, 'View', 'User view permainan Data.', '2025-01-14 13:16:38'),
(450, 2, 'View', 'User view permainan Data.', '2025-01-14 13:18:34'),
(451, 2, 'View', 'User view permainan Data.', '2025-01-14 13:18:37'),
(452, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 13:19:31'),
(453, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 13:19:32'),
(454, 2, 'View', 'User view Setting.', '2025-01-14 13:19:33'),
(455, 2, 'View', 'User view permainan Data.', '2025-01-14 13:19:34'),
(456, 2, 'View', 'User view permainan Data.', '2025-01-14 13:19:36'),
(457, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 13:25:54'),
(458, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 13:25:55'),
(459, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 13:25:56'),
(460, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 13:26:58'),
(461, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 13:27:44'),
(462, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 13:27:50'),
(463, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 13:28:48'),
(464, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 13:29:03'),
(465, 2, 'Login', 'User Has Log in.', '2025-01-14 13:30:05'),
(466, 2, 'View', 'User view Dashboard.', '2025-01-14 13:30:05'),
(467, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 13:30:08'),
(468, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 13:30:20'),
(469, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 13:31:04'),
(470, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 13:33:07'),
(471, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 13:33:08'),
(472, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 13:34:11'),
(473, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 13:34:18'),
(474, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 13:34:29'),
(475, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 13:34:41'),
(476, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 13:35:36'),
(477, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 13:37:53'),
(478, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 13:38:33'),
(479, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 13:38:42'),
(480, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 13:38:53'),
(481, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 13:39:07'),
(482, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 13:40:50'),
(483, NULL, 'Delete', 'User Has Remove A Transaction Data', '2025-01-14 13:40:56'),
(484, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 13:40:56'),
(485, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 13:40:58'),
(486, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 13:41:20'),
(487, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 13:41:21'),
(488, NULL, 'Delete', 'User Has Remove A Transaction Data', '2025-01-14 13:41:24'),
(489, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 13:41:24'),
(490, NULL, 'Delete', 'User Has Remove A Transaction Data', '2025-01-14 13:41:58'),
(491, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 13:41:58'),
(492, NULL, 'Delete', 'User Has Remove A Transaction Data', '2025-01-14 13:42:01'),
(493, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 13:42:01'),
(494, NULL, 'Delete', 'User Has Remove A Transaction Data', '2025-01-14 13:42:01'),
(495, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 13:42:01'),
(496, NULL, 'Delete', 'User Has Remove A Transaction Data', '2025-01-14 13:42:01'),
(497, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 13:42:01'),
(498, NULL, 'Delete', 'User Has Remove A Transaction Data', '2025-01-14 13:42:02'),
(499, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 13:42:02'),
(500, NULL, 'Delete', 'User Has Remove A Transaction Data', '2025-01-14 13:42:02'),
(501, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 13:42:02'),
(502, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 13:42:28'),
(503, NULL, 'Delete', 'User Has Remove A Transaction Data', '2025-01-14 13:42:29'),
(504, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 13:42:31'),
(505, NULL, 'Delete', 'User Has Remove A Transaction Data', '2025-01-14 13:42:32'),
(506, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 13:42:35'),
(507, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 13:42:52'),
(508, NULL, 'Delete', 'User Has Remove A Transaction Data', '2025-01-14 13:42:53'),
(509, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 13:42:53'),
(510, NULL, 'Delete', 'User Has Remove A Transaction Data', '2025-01-14 13:42:54'),
(511, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 13:42:54'),
(512, NULL, 'Delete', 'User Has Remove A Transaction Data', '2025-01-14 13:42:55'),
(513, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 13:42:55'),
(514, NULL, 'Delete', 'User Has Remove A Transaction Data', '2025-01-14 13:43:02'),
(515, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 13:43:02'),
(516, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 13:43:30'),
(517, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 13:43:31'),
(518, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 13:43:31'),
(519, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 13:43:32'),
(520, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 13:43:32'),
(521, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 13:43:32'),
(522, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 13:44:08'),
(523, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 13:49:38'),
(524, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 13:52:03'),
(525, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 13:52:10'),
(526, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 13:52:27'),
(527, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 13:52:30'),
(528, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 13:52:33'),
(529, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 13:52:34'),
(530, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 13:54:47'),
(531, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 13:55:21'),
(532, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 13:55:38'),
(533, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 13:56:22'),
(534, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 13:57:08'),
(535, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 13:57:55'),
(536, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 13:58:03'),
(537, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 13:58:05'),
(538, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 13:58:10'),
(539, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 13:58:26'),
(540, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 13:58:32'),
(541, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 13:58:48'),
(542, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 13:58:49'),
(543, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 13:58:51'),
(544, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 13:59:32'),
(545, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 13:59:38'),
(546, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 13:59:38'),
(547, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 13:59:38'),
(548, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 13:59:39'),
(549, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 13:59:39'),
(550, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 13:59:39'),
(551, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 14:00:30'),
(552, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 14:01:33'),
(553, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 14:02:20'),
(554, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 14:05:48'),
(555, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 14:06:11'),
(556, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 14:06:55'),
(557, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 14:06:56'),
(558, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 14:06:57'),
(559, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 14:07:13'),
(560, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 14:07:15'),
(561, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 14:08:39'),
(562, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 14:09:01'),
(563, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 14:09:26'),
(564, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 14:09:29'),
(565, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 14:09:42'),
(566, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 14:10:59'),
(567, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 14:11:08'),
(568, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 14:11:10'),
(569, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 14:11:13'),
(570, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 14:12:52'),
(571, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 14:12:57'),
(572, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 14:13:11'),
(573, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 14:13:12'),
(574, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 14:13:25'),
(575, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 14:13:25'),
(576, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 14:13:29'),
(577, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 14:13:37'),
(578, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 14:13:39'),
(579, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 14:17:06'),
(580, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 14:17:08'),
(581, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 14:17:08'),
(582, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 14:17:08'),
(583, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 14:17:08'),
(584, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 14:17:08'),
(585, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 14:17:08'),
(586, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 14:17:29'),
(587, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 14:17:39'),
(588, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 14:17:56'),
(589, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 14:18:02'),
(590, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 14:18:07'),
(591, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 14:18:08'),
(592, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 14:18:10'),
(593, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 14:18:11'),
(594, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 14:18:12'),
(595, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 14:19:58'),
(596, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 14:19:59'),
(597, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 14:20:04'),
(598, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 14:20:05'),
(599, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 14:20:07'),
(600, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 14:20:26'),
(601, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 14:20:35'),
(602, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 14:21:06'),
(603, 2, 'View', 'User view Dashboard.', '2025-01-14 14:21:52'),
(604, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 14:21:53'),
(605, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 14:22:07'),
(606, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 14:22:08'),
(607, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 14:22:41'),
(608, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 14:22:46'),
(609, 2, 'View', 'User view Dashboard.', '2025-01-14 14:22:49'),
(610, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 14:22:50'),
(611, 2, 'View', 'User view permainan Data.', '2025-01-14 14:22:51'),
(612, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 14:22:51'),
(613, 2, 'View', 'User view permainan Data.', '2025-01-14 14:22:52'),
(614, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 14:22:53'),
(615, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 14:22:54'),
(616, 2, 'View', 'User view Setting.', '2025-01-14 14:22:54'),
(617, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 14:22:55'),
(618, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 14:23:16'),
(619, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 14:23:16'),
(620, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 14:23:18'),
(621, 2, 'View', 'User view permainan Data.', '2025-01-14 14:23:19'),
(622, 2, 'View', 'User view Setting.', '2025-01-14 14:23:19'),
(623, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 14:23:20'),
(624, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 14:23:25'),
(625, 2, 'View', 'User view Dashboard.', '2025-01-14 14:23:33'),
(626, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 14:23:44'),
(627, 2, 'Logout', 'User Has Logout.', '2025-01-14 14:24:30'),
(628, 2, 'Login', 'User Has Log in.', '2025-01-14 21:08:41'),
(629, 2, 'View', 'User view Dashboard.', '2025-01-14 21:08:41'),
(630, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 21:08:42'),
(631, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 21:08:44'),
(632, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 21:08:50'),
(633, NULL, 'Delete', 'User Has Remove A Transaction Data', '2025-01-14 21:08:53'),
(634, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 21:08:54'),
(635, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 21:14:20'),
(636, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 21:15:00'),
(637, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 21:15:22'),
(638, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 21:16:33'),
(639, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 21:19:12'),
(640, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 21:22:14'),
(641, 2, 'Login', 'User Has Log in.', '2025-01-14 21:25:20'),
(642, 2, 'View', 'User view Dashboard.', '2025-01-14 21:25:21'),
(643, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 21:25:21'),
(644, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 21:25:23'),
(645, 2, 'View', 'User view Setting.', '2025-01-14 21:25:23'),
(646, 2, 'View', 'User view Kasir Menu.', '2025-01-14 21:25:55'),
(647, 2, 'View', 'User view Kasir Menu.', '2025-01-14 21:29:10'),
(648, 2, 'View', 'User view Kasir Menu.', '2025-01-14 21:30:14'),
(649, 2, 'View', 'User view Kasir Menu.', '2025-01-14 21:31:14'),
(650, 2, 'View', 'User view Kasir Menu.', '2025-01-14 21:31:26'),
(651, 2, 'View', 'User view Kasir Menu.', '2025-01-14 21:34:04'),
(652, 2, 'View', 'User view Kasir Menu.', '2025-01-14 21:34:46'),
(653, 2, 'View', 'User view Kasir Menu.', '2025-01-14 21:34:53'),
(654, 2, 'View', 'User view Kasir Menu.', '2025-01-14 21:34:53'),
(655, 2, 'View', 'User view Kasir Menu.', '2025-01-14 21:34:54'),
(656, 2, 'View', 'User view Kasir Menu.', '2025-01-14 21:34:57'),
(657, 2, 'View', 'User view Kasir Menu.', '2025-01-14 21:35:25'),
(658, 2, 'View', 'User view Kasir Menu.', '2025-01-14 21:35:45'),
(659, 2, 'View', 'User view Kasir Menu.', '2025-01-14 21:35:46'),
(660, 2, 'View', 'User view Kasir Menu.', '2025-01-14 21:35:46'),
(661, 2, 'View', 'User view Kasir Menu.', '2025-01-14 21:35:46'),
(662, 2, 'View', 'User view Kasir Menu.', '2025-01-14 21:35:49'),
(663, 2, 'View', 'User view Kasir Menu.', '2025-01-14 21:35:52'),
(664, 2, 'View', 'User view Kasir Menu.', '2025-01-14 21:35:54'),
(665, 2, 'View', 'User view Kasir Menu.', '2025-01-14 21:35:56'),
(666, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 21:35:57'),
(667, 2, 'View', 'User view Dashboard.', '2025-01-14 21:35:58'),
(668, 2, 'View', 'User view Kasir Menu.', '2025-01-14 21:35:59'),
(669, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 21:35:59'),
(670, 2, 'View', 'User view Kasir Menu.', '2025-01-14 21:36:00'),
(671, 2, 'View', 'User view Dashboard.', '2025-01-14 21:36:01'),
(672, 2, 'View', 'User view Kasir Menu.', '2025-01-14 21:36:01'),
(673, 2, 'View', 'User view Dashboard.', '2025-01-14 21:36:02'),
(674, 2, 'View', 'User view Kasir Menu.', '2025-01-14 21:36:03'),
(675, 2, 'View', 'User view Dashboard.', '2025-01-14 21:36:04'),
(676, 2, 'View', 'User view Kasir Menu.', '2025-01-14 21:36:04'),
(677, 2, 'View', 'User view Dashboard.', '2025-01-14 21:36:05'),
(678, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 21:36:05'),
(679, 2, 'View', 'User view Kasir Menu.', '2025-01-14 21:36:06'),
(680, 2, 'View', 'User view Dashboard.', '2025-01-14 21:36:07'),
(681, 2, 'View', 'User view Kasir Menu.', '2025-01-14 21:36:08'),
(682, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 21:36:09'),
(683, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 21:36:10'),
(684, 2, 'View', 'User view Setting.', '2025-01-14 21:36:11'),
(685, 2, 'View', 'User view User Data.', '2025-01-14 21:36:11'),
(686, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 21:36:12'),
(687, 2, 'View', 'User view permainan Data.', '2025-01-14 21:36:12'),
(688, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 21:36:13'),
(689, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 21:36:14'),
(690, 2, 'View', 'User view Kasir Menu.', '2025-01-14 21:36:15'),
(691, 2, 'View', 'User view Kasir Menu.', '2025-01-14 21:39:21'),
(692, 2, 'View', 'User view Kasir Menu.', '2025-01-14 21:41:05'),
(693, 2, 'View', 'User view Kasir Menu.', '2025-01-14 21:41:17'),
(694, 2, 'View', 'User view Kasir Menu.', '2025-01-14 21:41:37'),
(695, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 21:43:12'),
(696, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 21:46:54'),
(697, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 21:46:56'),
(698, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 21:47:09'),
(699, 2, 'View', 'User view Kasir.', '2025-01-14 21:47:37'),
(700, 2, 'View', 'User view Kasir.', '2025-01-14 21:50:14'),
(701, 2, 'View', 'User view Kasir.', '2025-01-14 21:50:37'),
(702, 2, 'View', 'User view Kasir.', '2025-01-14 21:50:38'),
(703, 2, 'View', 'User view Kasir.', '2025-01-14 21:50:47'),
(704, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 21:50:50'),
(705, 2, 'View', 'User view Kasir.', '2025-01-14 21:51:05'),
(706, 2, 'View', 'User view Kasir.', '2025-01-14 21:52:27'),
(707, 2, 'View', 'User view Kasir.', '2025-01-14 21:52:27'),
(708, 2, 'View', 'User view Kasir.', '2025-01-14 21:52:27'),
(709, 2, 'View', 'User view Kasir.', '2025-01-14 21:52:27'),
(710, 2, 'View', 'User view Kasir.', '2025-01-14 21:52:28'),
(711, 2, 'View', 'User view Kasir.', '2025-01-14 21:52:28'),
(712, 2, 'View', 'User view Kasir.', '2025-01-14 21:56:59'),
(713, 2, 'View', 'User view Kasir.', '2025-01-14 21:57:32'),
(714, 2, 'View', 'User view Kasir.', '2025-01-14 21:57:58'),
(715, 2, 'View', 'User view Kasir.', '2025-01-14 21:57:58'),
(716, 2, 'View', 'User view Kasir.', '2025-01-14 21:57:59'),
(717, 2, 'View', 'User view Kasir.', '2025-01-14 21:57:59'),
(718, 2, 'View', 'User view Kasir.', '2025-01-14 22:07:06'),
(719, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 22:09:14'),
(720, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 22:10:03'),
(721, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 22:10:21'),
(722, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 22:11:28'),
(723, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 22:11:54'),
(724, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 22:11:55'),
(725, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 22:12:07'),
(726, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 22:14:50'),
(727, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 22:15:35'),
(728, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 22:16:36'),
(729, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 22:16:53'),
(730, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 22:17:48'),
(731, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 22:18:04'),
(732, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 22:18:17'),
(733, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 22:18:24'),
(734, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 22:18:33'),
(735, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 22:24:03'),
(736, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 22:26:24'),
(737, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 22:30:12'),
(738, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 22:30:22'),
(739, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 22:31:44'),
(740, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 22:32:28'),
(741, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 22:34:28'),
(742, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 22:36:07'),
(743, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 22:37:46'),
(744, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 22:39:02'),
(745, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 22:39:32'),
(746, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 22:40:28'),
(747, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 22:42:43'),
(748, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 22:43:38'),
(749, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 22:45:14'),
(750, 2, 'View', 'User view Update Pelanggan Data.', '2025-01-14 22:45:18'),
(751, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 22:50:49'),
(752, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 22:51:34'),
(753, 2, 'ADD', 'User Added transaksi Data.', '2025-01-14 22:51:35'),
(754, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 22:51:35'),
(755, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 22:51:38'),
(756, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 22:51:39'),
(757, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 22:51:51'),
(758, 2, 'ADD', 'User Added transaksi Data.', '2025-01-14 22:52:02'),
(759, 2, 'ADD', 'User Added transaksi Data.', '2025-01-14 22:52:39'),
(760, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 22:52:54'),
(761, 2, 'ADD', 'User Added transaksi Data.', '2025-01-14 22:53:02'),
(762, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 22:53:43'),
(763, 2, 'ADD', 'User Added transaksi Data.', '2025-01-14 22:54:03'),
(764, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 22:54:08'),
(765, 2, 'ADD', 'User Added transaksi Data.', '2025-01-14 22:54:20'),
(766, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 22:54:22'),
(767, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 22:54:22'),
(768, 2, 'ADD', 'User Added transaksi Data.', '2025-01-14 22:54:58'),
(769, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 22:55:20'),
(770, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 22:55:21'),
(771, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 22:55:23'),
(772, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 22:55:25'),
(773, 2, 'View', 'User view Dashboard.', '2025-01-14 22:55:25'),
(774, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 22:55:26'),
(775, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 22:55:26'),
(776, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 22:55:27'),
(777, 2, 'ADD', 'User Added transaksi Data.', '2025-01-14 22:55:58'),
(778, 2, 'ADD', 'User Added transaksi Data.', '2025-01-14 22:56:00'),
(779, 2, 'ADD', 'User Added transaksi Data.', '2025-01-14 22:56:01'),
(780, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 22:56:05'),
(781, 2, 'ADD', 'User Added transaksi Data.', '2025-01-14 22:56:15'),
(782, 2, 'ADD', 'User Added transaksi Data.', '2025-01-14 22:56:17'),
(783, 2, 'ADD', 'User Added transaksi Data.', '2025-01-14 22:56:24'),
(784, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 22:56:37'),
(785, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 22:56:37'),
(786, 2, 'ADD', 'User Added transaksi Data.', '2025-01-14 22:58:28'),
(787, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 22:58:39'),
(788, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 22:58:53'),
(789, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 23:02:38'),
(790, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 23:02:58'),
(791, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 23:07:37'),
(792, 2, 'ADD', 'User Added transaksi Data.', '2025-01-14 23:07:45'),
(793, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 23:07:45'),
(794, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 23:09:07'),
(795, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 23:26:46'),
(796, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 23:26:48'),
(797, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 23:26:49'),
(798, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 23:26:49'),
(799, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 23:40:49'),
(800, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 23:40:51'),
(801, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 23:41:00'),
(802, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 23:41:55'),
(803, 2, 'Logout', 'User Has Logout.', '2025-01-14 23:42:33'),
(804, 2, 'Login', 'User Has Log in.', '2025-01-14 23:44:16'),
(805, 2, 'View', 'User view Dashboard.', '2025-01-14 23:44:16'),
(806, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 23:45:57'),
(807, 2, 'ADD', 'User Added transaksi Data.', '2025-01-14 23:46:15'),
(808, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 23:46:15'),
(809, NULL, 'Delete', 'User Has Remove A Transaction Data', '2025-01-14 23:46:21'),
(810, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 23:46:21'),
(811, 2, 'View', 'User view permainan Data.', '2025-01-14 23:46:31'),
(812, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 23:46:42'),
(813, 2, 'View', 'User view Setting.', '2025-01-14 23:46:51'),
(814, NULL, 'Delete', 'User Has Updated the pajak Persen', '2025-01-14 23:47:02'),
(815, 2, 'View', 'User view Setting.', '2025-01-14 23:47:02'),
(816, 2, 'View', 'User view Pelanggan Data.', '2025-01-14 23:47:03'),
(817, 2, 'View', 'User view Setting.', '2025-01-14 23:47:04'),
(818, 2, 'View', 'User view User Data.', '2025-01-14 23:47:07'),
(819, 2, 'View', 'User view Setting.', '2025-01-14 23:47:20');
INSERT INTO `activity_log` (`id`, `user_id`, `activity`, `description`, `timestamp`) VALUES
(820, 2, 'Updated', 'User Has Updated The Logo', '2025-01-14 23:47:46'),
(821, 2, 'View', 'User view Setting.', '2025-01-14 23:47:48'),
(822, 2, 'View', 'User view Activity Log.', '2025-01-14 23:47:53'),
(823, 2, 'Logout', 'User Has Logout.', '2025-01-14 23:48:02');

-- --------------------------------------------------------

--
-- Table structure for table `logo`
--

CREATE TABLE `logo` (
  `id_logo` int(11) NOT NULL,
  `nama_Logo` varchar(255) DEFAULT NULL,
  `logos` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `logo`
--

INSERT INTO `logo` (`id_logo`, `nama_Logo`, `logos`, `icon`) VALUES
(1, 'Axo Sadd Play Ground1', 'activity.png', 'Screenshot 2025-01-12 192322.png');

-- --------------------------------------------------------

--
-- Table structure for table `pajak`
--

CREATE TABLE `pajak` (
  `id_pajak` int(11) NOT NULL,
  `nama_pajak` varchar(255) NOT NULL,
  `persen_pajak` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pajak`
--

INSERT INTO `pajak` (`id_pajak`, `nama_pajak`, `persen_pajak`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'PPN', '11', '2024-02-26 23:12:58', '2025-01-14 10:47:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `paket_permainan`
--

CREATE TABLE `paket_permainan` (
  `id_paket` int(11) NOT NULL,
  `nama_paket` varchar(255) NOT NULL,
  `durasi_paket` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `paket_permainan`
--

INSERT INTO `paket_permainan` (`id_paket`, `nama_paket`, `durasi_paket`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '1 Jam Bermain', '1', '2024-02-26 19:08:12', '2024-02-26 19:16:16', NULL),
(2, '2 Jam Bermain', '2', '2024-02-26 19:22:07', NULL, NULL),
(3, '3 Jam Bermain', '3', '2024-02-26 19:23:15', '2024-02-26 19:24:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `PelangganID` int(11) NOT NULL,
  `NamaPelanggan` varchar(255) NOT NULL,
  `Alamat` text NOT NULL,
  `NomorTelepon` varchar(15) NOT NULL,
  `NamaOrangtua` varchar(255) NOT NULL,
  `KodePelanggan` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`PelangganID`, `NamaPelanggan`, `Alamat`, `NomorTelepon`, `NamaOrangtua`, `KodePelanggan`, `created_at`, `updated_at`, `deleted_at`) VALUES
(5, 'Loki', 'rumah', '434934839', 'yoshi', 'PLGJA29', '2024-02-27 08:03:10', '2025-01-13 23:55:08', NULL),
(6, 'Budi', 'awea', '280342341', 'ya', 'PLGHI15', '2024-02-27 08:07:51', '2025-01-13 23:54:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permainan`
--

CREATE TABLE `permainan` (
  `id_permainan` int(11) NOT NULL,
  `nama_permainan` varchar(255) NOT NULL,
  `harga_permainan` decimal(10,2) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `permainan`
--

INSERT INTO `permainan` (`id_permainan`, `nama_permainan`, `harga_permainan`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Mandi Bola', 50000.00, '2024-02-20 11:38:52', NULL, NULL),
(2, 'Istana Balon', 50000.00, '2024-02-20 11:38:52', '2025-01-13 20:26:17', NULL),
(3, 'Ayunan', 10000.00, '2024-02-20 13:24:40', '2024-02-20 13:27:09', NULL),
(4, 'Jungkat-jungkit', 10000.00, '2024-02-20 20:57:58', NULL, NULL),
(5, 'Tiang Gelantung', 10000.00, '2024-02-20 21:37:10', '2024-02-20 21:38:31', NULL),
(6, 'Istana Ballon', 50000.00, '2025-01-14 09:12:29', NULL, '2025-01-13 20:17:13'),
(7, 'Istana Perosotan', 25000.00, '2025-01-13 20:34:45', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `pelanggan_id` int(11) NOT NULL,
  `tanggal_transaksi` date NOT NULL,
  `jam_mulai` time NOT NULL,
  `jam_selesai` time NOT NULL,
  `pajak_id` int(11) NOT NULL,
  `total_harga` decimal(10,2) NOT NULL,
  `bayar` decimal(10,2) NOT NULL,
  `kembalian` decimal(10,2) NOT NULL,
  `user` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `deleted_ats` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `pelanggan_id`, `tanggal_transaksi`, `jam_mulai`, `jam_selesai`, `pajak_id`, `total_harga`, `bayar`, `kembalian`, `user`, `status`, `created_at`, `updated_at`, `deleted_ats`) VALUES
(49, 6, '2024-02-27', '08:10:27', '13:00:00', 1, 11000.00, 15000.00, 4000.00, 1, 2, '2024-02-27 08:10:27', '2024-02-27 21:39:47', '2025-01-14 00:42:55'),
(57, 6, '2024-02-27', '15:12:35', '21:39:36', 1, 22000.00, 22000.00, 0.00, 1, 2, '2024-02-27 15:12:35', '2024-02-27 21:39:36', '2025-01-14 00:43:02'),
(58, 5, '2025-01-13', '09:46:27', '11:46:27', 1, 0.00, 100000.00, 100000.00, 1, 1, '2025-01-13 09:46:27', NULL, '2025-01-14 08:08:53'),
(59, 6, '2025-01-13', '09:47:21', '09:48:33', 1, 148500.00, 200000.00, 51500.00, 1, 2, '2025-01-13 09:47:21', '2025-01-13 09:48:33', '2025-01-14 10:46:21'),
(60, 5, '2025-01-14', '11:01:28', '12:09:28', 1, 150000.00, 200000.00, 50000.00, 2, 2, '2025-01-14 09:58:28', NULL, NULL),
(61, 6, '2025-01-14', '10:18:46', '10:45:46', 1, 50000.00, 100000.00, 50000.00, 2, 2, '2025-01-14 10:07:45', NULL, NULL),
(63, 5, '2025-01-14', '10:46:15', '13:46:15', 1, 150000.00, 200000.00, 50000.00, 2, 1, '2025-01-14 10:46:15', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `real` varchar(255) DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  `password` varchar(11) DEFAULT NULL,
  `Level` enum('admin','petugas') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `real`, `user`, `password`, `Level`) VALUES
(1, 'petugas', 'petugas', 'petugas', 'petugas'),
(2, 'admin', 'admin', 'admin', 'admin'),
(4, 'Axo', 'Axo', 'Axo', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`id_logo`);

--
-- Indexes for table `pajak`
--
ALTER TABLE `pajak`
  ADD PRIMARY KEY (`id_pajak`);

--
-- Indexes for table `paket_permainan`
--
ALTER TABLE `paket_permainan`
  ADD PRIMARY KEY (`id_paket`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`PelangganID`);

--
-- Indexes for table `permainan`
--
ALTER TABLE `permainan`
  ADD PRIMARY KEY (`id_permainan`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=824;

--
-- AUTO_INCREMENT for table `logo`
--
ALTER TABLE `logo`
  MODIFY `id_logo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pajak`
--
ALTER TABLE `pajak`
  MODIFY `id_pajak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `paket_permainan`
--
ALTER TABLE `paket_permainan`
  MODIFY `id_paket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `PelangganID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `permainan`
--
ALTER TABLE `permainan`
  MODIFY `id_permainan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
