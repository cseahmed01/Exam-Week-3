-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 28, 2024 at 12:18 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `enews`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `createdAt`, `updatedAt`) VALUES
(1, 'Sports', '2024-01-27 09:48:05', '2024-01-27 09:48:05'),
(2, 'Teach', '2024-01-27 09:48:14', '2024-01-27 09:48:14'),
(3, 'Fashion', '2024-01-27 09:48:49', '2024-01-27 09:48:49'),
(4, 'Politics', '2024-01-27 09:48:59', '2024-01-27 09:48:59'),
(5, 'Talkiz', '2024-01-28 06:01:59', '2024-01-28 06:01:59'),
(6, 'Technologies', '2024-01-28 06:02:32', '2024-01-28 06:02:32'),
(7, 'International', '2024-01-28 06:03:13', '2024-01-28 06:03:13');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `postID` int(11) NOT NULL,
  `descriptions` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_des` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img1` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img2` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img3` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img4` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_des` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `catID` int(11) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `short_des`, `img1`, `img2`, `img3`, `img4`, `keywords`, `long_des`, `type`, `catID`, `createdAt`, `updatedAt`) VALUES
(1, 'Freight rates on 8-week rise amid Red Sea tensions', 'reight rates have been increasing for eight weeks amid geopolitical tensions in the Red Sea, according to data from the World Container Index from the UK-based maritime research firm, Drewr,y compiled by Anadolu.', '', '', '', '', '', '<p>reight rates have been increasing for eight weeks amid geopolitical tensions in the Red Sea, according to data from the World Container Index from the UK-based maritime research firm, Drewr,y compiled by Anadolu.</p>\r\n\r\n<p>The Iranian-backed Yemeni political organization, the Houthis, launched attacks on commercial vessels linked to Israel in the Bab-el-Mandeb Strait in the Red Sea, after which shipping companies rerouted around the Cape of Good Hope, thus extending travel times by 10 days to two weeks.</p>\r\n\r\n<p>reight rates have been increasing for eight weeks amid geopolitical tensions in the Red Sea, according to data from the World Container Index from the UK-based maritime research firm, Drewr,y compiled by Anadolu.</p>\r\n\r\n<p>The Iranian-backed Yemeni political organization, the Houthis, launched attacks on commercial vessels linked to Israel in the Bab-el-Mandeb Strait in the Red Sea, after which shipping companies rerouted around the Cape of Good Hope, thus extending travel times by 10 days to two weeks.</p>\r\n\r\n<p>reight rates have been increasing for eight weeks amid geopolitical tensions in the Red Sea, according to data from the World Container Index from the UK-based maritime research firm, Drewr,y compiled by Anadolu.</p>\r\n\r\n<p>The Iranian-backed Yemeni political organization, the Houthis, launched attacks on commercial vessels linked to Israel in the Bab-el-Mandeb Strait in the Red Sea, after which shipping companies rerouted around the Cape of Good Hope, thus extending travel times by 10 days to two weeks.</p>\r\n\r\n<p>reight rates have been increasing for eight weeks amid geopolitical tensions in the Red Sea, according to data from the World Container Index from the UK-based maritime research firm, Drewr,y compiled by Anadolu.</p>\r\n\r\n<p>The Iranian-backed Yemeni political organization, the Houthis, launched attacks on commercial vessels linked to Israel in the Bab-el-Mandeb Strait in the Red Sea, after which shipping companies rerouted around the Cape of Good Hope, thus extending travel times by 10 days to two weeks.</p>\r\n<p>\r\nreight rates have been increasing for eight weeks amid geopolitical tensions in the Red Sea, according to data from the World Container Index from the UK-based maritime research firm, Drewr,y compiled by Anadolu.</p>\r\n\r\n<p>The Iranian-backed Yemeni political organization, the Houthis, launched attacks on commercial vessels linked to Israel in the Bab-el-Mandeb Strait in the Red Sea, after which shipping companies rerouted around the Cape of Good Hope, thus extending travel times by 10 days to two weeks.</p>\r\n\r\n<p>reight rates have been increasing for eight weeks amid geopolitical tensions in the Red Sea, according to data from the World Container Index from the UK-based maritime research firm, Drewr,y compiled by Anadolu.\r\n\r\n<p>The Iranian-backed Yemeni political organization, the Houthis, launched attacks on commercial vessels linked to Israel in the Bab-el-Mandeb Strait in the Red Sea, after which shipping companies rerouted around the Cape of Good Hope, thus extending travel times by 10 days to two weeks.</p>\r\n<p>reight rates have been increasing for eight weeks amid geopolitical tensions in the Red Sea, according to data from the World Container Index from the UK-based maritime research firm, Drewr,y compiled by Anadolu.</p>\r\n\r\n<p>The Iranian-backed Yemeni political organization, the Houthis, launched attacks on commercial vessels linked to Israel in the Bab-el-Mandeb Strait in the Red Sea, after which shipping companies rerouted around the Cape of Good Hope, thus extending travel times by 10 days to two weeks.\r\n\r\n<p>reight rates have been increasing for eight weeks amid geopolitical tensions in the Red Sea, according to data from the World Container Index from the UK-based maritime research firm, Drewr,y compiled by Anadolu.</p>\r\n\r\n<p>The Iranian-backed Yemeni political organization, the Houthis, launched attacks on commercial vessels linked to Israel in the Bab-el-Mandeb Strait in the Red Sea, after which shipping companies rerouted around the Cape of Good Hope, thus extending travel times by 10 days to two weeks.</p>\r\n\r\n<p>reight rates have been increasing for eight weeks amid geopolitical tensions in the Red Sea, according to data from the World Container Index from the UK-based maritime research firm, Drewr,y compiled by Anadolu.</p>\r\n\r\n<p>The Iranian-backed Yemeni political organization, the Houthis, launched attacks on commercial vessels linked to Israel in the Bab-el-Mandeb Strait in the Red Sea, after which shipping companies rerouted around the Cape of Good Hope, thus extending travel times by 10 days to two weeks.</p>', 'Featured', 4, '2024-01-27 14:25:34', '2024-01-27 14:25:34'),
(2, 'Bangladeshi shot dead in South Africa', 'reight rates have been increasing for eight weeks amid geopolitical tensions in the Red Sea, according to data from the World Container Index from the UK-based maritime research firm, Drewr,y compiled by Anadolu.', '', '', '', '', '', 'reight rates have been increasing for eight weeks amid geopolitical tensions in the Red Sea, according to data from the World Container Index from the UK-based maritime research firm, Drewr,y compiled by Anadolu.\r\n\r\nThe Iranian-backed Yemeni political organization, the Houthis, launched attacks on commercial vessels linked to Israel in the Bab-el-Mandeb Strait in the Red Sea, after which shipping companies rerouted around the Cape of Good Hope, thus extending travel times by 10 days to two weeks.\r\n\r\nreight rates have been increasing for eight weeks amid geopolitical tensions in the Red Sea, according to data from the World Container Index from the UK-based maritime research firm, Drewr,y compiled by Anadolu.\r\n\r\nThe Iranian-backed Yemeni political organization, the Houthis, launched attacks on commercial vessels linked to Israel in the Bab-el-Mandeb Strait in the Red Sea, after which shipping companies rerouted around the Cape of Good Hope, thus extending travel times by 10 days to two weeks.\r\n\r\nreight rates have been increasing for eight weeks amid geopolitical tensions in the Red Sea, according to data from the World Container Index from the UK-based maritime research firm, Drewr,y compiled by Anadolu.\r\n\r\nThe Iranian-backed Yemeni political organization, the Houthis, launched attacks on commercial vessels linked to Israel in the Bab-el-Mandeb Strait in the Red Sea, after which shipping companies rerouted around the Cape of Good Hope, thus extending travel times by 10 days to two weeks.\r\n\r\nreight rates have been increasing for eight weeks amid geopolitical tensions in the Red Sea, according to data from the World Container Index from the UK-based maritime research firm, Drewr,y compiled by Anadolu.\r\n\r\nThe Iranian-backed Yemeni political organization, the Houthis, launched attacks on commercial vessels linked to Israel in the Bab-el-Mandeb Strait in the Red Sea, after which shipping companies rerouted around the Cape of Good Hope, thus extending travel times by 10 days to two weeks.\r\n\r\nreight rates have been increasing for eight weeks amid geopolitical tensions in the Red Sea, according to data from the World Container Index from the UK-based maritime research firm, Drewr,y compiled by Anadolu.\r\n\r\nThe Iranian-backed Yemeni political organization, the Houthis, launched attacks on commercial vessels linked to Israel in the Bab-el-Mandeb Strait in the Red Sea, after which shipping companies rerouted around the Cape of Good Hope, thus extending travel times by 10 days to two weeks.\r\n\r\nreight rates have been increasing for eight weeks amid geopolitical tensions in the Red Sea, according to data from the World Container Index from the UK-based maritime research firm, Drewr,y compiled by Anadolu.\r\n\r\nThe Iranian-backed Yemeni political organization, the Houthis, launched attacks on commercial vessels linked to Israel in the Bab-el-Mandeb Strait in the Red Sea, after which shipping companies rerouted around the Cape of Good Hope, thus extending travel times by 10 days to two weeks.\r\nreight rates have been increasing for eight weeks amid geopolitical tensions in the Red Sea, according to data from the World Container Index from the UK-based maritime research firm, Drewr,y compiled by Anadolu.\r\n\r\nThe Iranian-backed Yemeni political organization, the Houthis, launched attacks on commercial vessels linked to Israel in the Bab-el-Mandeb Strait in the Red Sea, after which shipping companies rerouted around the Cape of Good Hope, thus extending travel times by 10 days to two weeks.\r\n\r\nreight rates have been increasing for eight weeks amid geopolitical tensions in the Red Sea, according to data from the World Container Index from the UK-based maritime research firm, Drewr,y compiled by Anadolu.\r\n\r\nThe Iranian-backed Yemeni political organization, the Houthis, launched attacks on commercial vessels linked to Israel in the Bab-el-Mandeb Strait in the Red Sea, after which shipping companies rerouted around the Cape of Good Hope, thus extending travel times by 10 days to two weeks.\r\n\r\nreight rates have been increasing for eight weeks amid geopolitical tensions in the Red Sea, according to data from the World Container Index from the UK-based maritime research firm, Drewr,y compiled by Anadolu.\r\n\r\nThe Iranian-backed Yemeni political organization, the Houthis, launched attacks on commercial vessels linked to Israel in the Bab-el-Mandeb Strait in the Red Sea, after which shipping companies rerouted around the Cape of Good Hope, thus extending travel times by 10 days to two weeks.', 'Featured', 4, '2024-01-27 14:25:46', '2024-01-27 14:25:46'),
(3, 'Freight rates on 8-week rise amid Red Sea tensions', 'reight rates have been increasing for eight weeks amid geopolitical tensions in the Red Sea, according to data from the World Container Index from the UK-based maritime research firm, Drewr,y compiled by Anadolu.', '', '', '', '', '', 'reight rates have been increasing for eight weeks amid geopolitical tensions in the Red Sea, according to data from the World Container Index from the UK-based maritime research firm, Drewr,y compiled by Anadolu.\r\n\r\nThe Iranian-backed Yemeni political organization, the Houthis, launched attacks on commercial vessels linked to Israel in the Bab-el-Mandeb Strait in the Red Sea, after which shipping companies rerouted around the Cape of Good Hope, thus extending travel times by 10 days to two weeks.\r\n\r\nreight rates have been increasing for eight weeks amid geopolitical tensions in the Red Sea, according to data from the World Container Index from the UK-based maritime research firm, Drewr,y compiled by Anadolu.\r\n\r\nThe Iranian-backed Yemeni political organization, the Houthis, launched attacks on commercial vessels linked to Israel in the Bab-el-Mandeb Strait in the Red Sea, after which shipping companies rerouted around the Cape of Good Hope, thus extending travel times by 10 days to two weeks.\r\n\r\nreight rates have been increasing for eight weeks amid geopolitical tensions in the Red Sea, according to data from the World Container Index from the UK-based maritime research firm, Drewr,y compiled by Anadolu.\r\n\r\nThe Iranian-backed Yemeni political organization, the Houthis, launched attacks on commercial vessels linked to Israel in the Bab-el-Mandeb Strait in the Red Sea, after which shipping companies rerouted around the Cape of Good Hope, thus extending travel times by 10 days to two weeks.\r\n\r\nreight rates have been increasing for eight weeks amid geopolitical tensions in the Red Sea, according to data from the World Container Index from the UK-based maritime research firm, Drewr,y compiled by Anadolu.\r\n\r\nThe Iranian-backed Yemeni political organization, the Houthis, launched attacks on commercial vessels linked to Israel in the Bab-el-Mandeb Strait in the Red Sea, after which shipping companies rerouted around the Cape of Good Hope, thus extending travel times by 10 days to two weeks.\r\n\r\nreight rates have been increasing for eight weeks amid geopolitical tensions in the Red Sea, according to data from the World Container Index from the UK-based maritime research firm, Drewr,y compiled by Anadolu.\r\n\r\nThe Iranian-backed Yemeni political organization, the Houthis, launched attacks on commercial vessels linked to Israel in the Bab-el-Mandeb Strait in the Red Sea, after which shipping companies rerouted around the Cape of Good Hope, thus extending travel times by 10 days to two weeks.\r\n\r\nreight rates have been increasing for eight weeks amid geopolitical tensions in the Red Sea, according to data from the World Container Index from the UK-based maritime research firm, Drewr,y compiled by Anadolu.\r\n\r\nThe Iranian-backed Yemeni political organization, the Houthis, launched attacks on commercial vessels linked to Israel in the Bab-el-Mandeb Strait in the Red Sea, after which shipping companies rerouted around the Cape of Good Hope, thus extending travel times by 10 days to two weeks.\r\nreight rates have been increasing for eight weeks amid geopolitical tensions in the Red Sea, according to data from the World Container Index from the UK-based maritime research firm, Drewr,y compiled by Anadolu.\r\n\r\nThe Iranian-backed Yemeni political organization, the Houthis, launched attacks on commercial vessels linked to Israel in the Bab-el-Mandeb Strait in the Red Sea, after which shipping companies rerouted around the Cape of Good Hope, thus extending travel times by 10 days to two weeks.\r\n\r\nreight rates have been increasing for eight weeks amid geopolitical tensions in the Red Sea, according to data from the World Container Index from the UK-based maritime research firm, Drewr,y compiled by Anadolu.\r\n\r\nThe Iranian-backed Yemeni political organization, the Houthis, launched attacks on commercial vessels linked to Israel in the Bab-el-Mandeb Strait in the Red Sea, after which shipping companies rerouted around the Cape of Good Hope, thus extending travel times by 10 days to two weeks.\r\n\r\nreight rates have been increasing for eight weeks amid geopolitical tensions in the Red Sea, according to data from the World Container Index from the UK-based maritime research firm, Drewr,y compiled by Anadolu.\r\n\r\nThe Iranian-backed Yemeni political organization, the Houthis, launched attacks on commercial vessels linked to Israel in the Bab-el-Mandeb Strait in the Red Sea, after which shipping companies rerouted around the Cape of Good Hope, thus extending travel times by 10 days to two weeks.', 'Featured', 4, '2024-01-27 14:32:25', '2024-01-27 14:32:25'),
(5, 'What is Lorem Ipsum?', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less', '', '', '', '', '', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less\r\n\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less\r\n\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less', 'Slider', 2, '2024-01-27 14:39:42', '2024-01-27 14:39:42'),
(6, 'What is Lorem Ipsum?', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less', '', '', '', '', '', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less\r\n\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less\r\n\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less', 'Slider', 2, '2024-01-27 14:39:48', '2024-01-27 14:39:48'),
(7, 'What is Lorem Ipsum?', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less', '', '', '', '', '', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less\r\n\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less\r\n\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less', 'Slider', 2, '2024-01-27 14:39:42', '2024-01-27 14:39:42'),
(8, 'Israeli attacks kill 174 Palestiniansin last 24 hours', 'reight rates have been increasing for eight weeks amid geopolitical tensions in the Red Sea, according to data from the World Container Index from the UK-based maritime research firm, Drewr,y compiled by Anadolu.', '', '', '', '', '', 'reight rates have been increasing for eight weeks amid geopolitical tensions in the Red Sea, according to data from the World Container Index from the UK-based maritime research firm, Drewr,y compiled by Anadolu.\r\n\r\nThe Iranian-backed Yemeni political organization, the Houthis, launched attacks on commercial vessels linked to Israel in the Bab-el-Mandeb Strait in the Red Sea, after which shipping companies rerouted around the Cape of Good Hope, thus extending travel times by 10 days to two weeks.\r\n\r\nreight rates have been increasing for eight weeks amid geopolitical tensions in the Red Sea, according to data from the World Container Index from the UK-based maritime research firm, Drewr,y compiled by Anadolu.\r\n\r\nThe Iranian-backed Yemeni political organization, the Houthis, launched attacks on commercial vessels linked to Israel in the Bab-el-Mandeb Strait in the Red Sea, after which shipping companies rerouted around the Cape of Good Hope, thus extending travel times by 10 days to two weeks.\r\n\r\nreight rates have been increasing for eight weeks amid geopolitical tensions in the Red Sea, according to data from the World Container Index from the UK-based maritime research firm, Drewr,y compiled by Anadolu.\r\n\r\nThe Iranian-backed Yemeni political organization, the Houthis, launched attacks on commercial vessels linked to Israel in the Bab-el-Mandeb Strait in the Red Sea, after which shipping companies rerouted around the Cape of Good Hope, thus extending travel times by 10 days to two weeks.\r\n\r\nreight rates have been increasing for eight weeks amid geopolitical tensions in the Red Sea, according to data from the World Container Index from the UK-based maritime research firm, Drewr,y compiled by Anadolu.\r\n\r\nThe Iranian-backed Yemeni political organization, the Houthis, launched attacks on commercial vessels linked to Israel in the Bab-el-Mandeb Strait in the Red Sea, after which shipping companies rerouted around the Cape of Good Hope, thus extending travel times by 10 days to two weeks.\r\n\r\nreight rates have been increasing for eight weeks amid geopolitical tensions in the Red Sea, according to data from the World Container Index from the UK-based maritime research firm, Drewr,y compiled by Anadolu.\r\n\r\nThe Iranian-backed Yemeni political organization, the Houthis, launched attacks on commercial vessels linked to Israel in the Bab-el-Mandeb Strait in the Red Sea, after which shipping companies rerouted around the Cape of Good Hope, thus extending travel times by 10 days to two weeks.\r\n\r\nreight rates have been increasing for eight weeks amid geopolitical tensions in the Red Sea, according to data from the World Container Index from the UK-based maritime research firm, Drewr,y compiled by Anadolu.\r\n\r\nThe Iranian-backed Yemeni political organization, the Houthis, launched attacks on commercial vessels linked to Israel in the Bab-el-Mandeb Strait in the Red Sea, after which shipping companies rerouted around the Cape of Good Hope, thus extending travel times by 10 days to two weeks.\r\nreight rates have been increasing for eight weeks amid geopolitical tensions in the Red Sea, according to data from the World Container Index from the UK-based maritime research firm, Drewr,y compiled by Anadolu.\r\n\r\nThe Iranian-backed Yemeni political organization, the Houthis, launched attacks on commercial vessels linked to Israel in the Bab-el-Mandeb Strait in the Red Sea, after which shipping companies rerouted around the Cape of Good Hope, thus extending travel times by 10 days to two weeks.\r\n\r\nreight rates have been increasing for eight weeks amid geopolitical tensions in the Red Sea, according to data from the World Container Index from the UK-based maritime research firm, Drewr,y compiled by Anadolu.\r\n\r\nThe Iranian-backed Yemeni political organization, the Houthis, launched attacks on commercial vessels linked to Israel in the Bab-el-Mandeb Strait in the Red Sea, after which shipping companies rerouted around the Cape of Good Hope, thus extending travel times by 10 days to two weeks.\r\n\r\nreight rates have been increasing for eight weeks amid geopolitical tensions in the Red Sea, according to data from the World Container Index from the UK-based maritime research firm, Drewr,y compiled by Anadolu.\r\n\r\nThe Iranian-backed Yemeni political organization, the Houthis, launched attacks on commercial vessels linked to Israel in the Bab-el-Mandeb Strait in the Red Sea, after which shipping companies rerouted around the Cape of Good Hope, thus extending travel times by 10 days to two weeks.', 'Featured', 4, '2024-01-27 14:25:34', '2024-01-27 14:25:34'),
(9, 'UAE businesses want to invest in Bangladesh, hire skilled manpower', 'reight rates have been increasing for eight weeks amid geopolitical tensions in the Red Sea, according to data from the World Container Index from the UK-based maritime research firm, Drewr,y compiled by Anadolu.', '', '', '', '', '', 'reight rates have been increasing for eight weeks amid geopolitical tensions in the Red Sea, according to data from the World Container Index from the UK-based maritime research firm, Drewr,y compiled by Anadolu.\r\n\r\nThe Iranian-backed Yemeni political organization, the Houthis, launched attacks on commercial vessels linked to Israel in the Bab-el-Mandeb Strait in the Red Sea, after which shipping companies rerouted around the Cape of Good Hope, thus extending travel times by 10 days to two weeks.\r\n\r\nreight rates have been increasing for eight weeks amid geopolitical tensions in the Red Sea, according to data from the World Container Index from the UK-based maritime research firm, Drewr,y compiled by Anadolu.\r\n\r\nThe Iranian-backed Yemeni political organization, the Houthis, launched attacks on commercial vessels linked to Israel in the Bab-el-Mandeb Strait in the Red Sea, after which shipping companies rerouted around the Cape of Good Hope, thus extending travel times by 10 days to two weeks.\r\n\r\nreight rates have been increasing for eight weeks amid geopolitical tensions in the Red Sea, according to data from the World Container Index from the UK-based maritime research firm, Drewr,y compiled by Anadolu.\r\n\r\nThe Iranian-backed Yemeni political organization, the Houthis, launched attacks on commercial vessels linked to Israel in the Bab-el-Mandeb Strait in the Red Sea, after which shipping companies rerouted around the Cape of Good Hope, thus extending travel times by 10 days to two weeks.\r\n\r\nreight rates have been increasing for eight weeks amid geopolitical tensions in the Red Sea, according to data from the World Container Index from the UK-based maritime research firm, Drewr,y compiled by Anadolu.\r\n\r\nThe Iranian-backed Yemeni political organization, the Houthis, launched attacks on commercial vessels linked to Israel in the Bab-el-Mandeb Strait in the Red Sea, after which shipping companies rerouted around the Cape of Good Hope, thus extending travel times by 10 days to two weeks.\r\n\r\nreight rates have been increasing for eight weeks amid geopolitical tensions in the Red Sea, according to data from the World Container Index from the UK-based maritime research firm, Drewr,y compiled by Anadolu.\r\n\r\nThe Iranian-backed Yemeni political organization, the Houthis, launched attacks on commercial vessels linked to Israel in the Bab-el-Mandeb Strait in the Red Sea, after which shipping companies rerouted around the Cape of Good Hope, thus extending travel times by 10 days to two weeks.\r\n\r\nreight rates have been increasing for eight weeks amid geopolitical tensions in the Red Sea, according to data from the World Container Index from the UK-based maritime research firm, Drewr,y compiled by Anadolu.\r\n\r\nThe Iranian-backed Yemeni political organization, the Houthis, launched attacks on commercial vessels linked to Israel in the Bab-el-Mandeb Strait in the Red Sea, after which shipping companies rerouted around the Cape of Good Hope, thus extending travel times by 10 days to two weeks.\r\nreight rates have been increasing for eight weeks amid geopolitical tensions in the Red Sea, according to data from the World Container Index from the UK-based maritime research firm, Drewr,y compiled by Anadolu.\r\n\r\nThe Iranian-backed Yemeni political organization, the Houthis, launched attacks on commercial vessels linked to Israel in the Bab-el-Mandeb Strait in the Red Sea, after which shipping companies rerouted around the Cape of Good Hope, thus extending travel times by 10 days to two weeks.\r\n\r\nreight rates have been increasing for eight weeks amid geopolitical tensions in the Red Sea, according to data from the World Container Index from the UK-based maritime research firm, Drewr,y compiled by Anadolu.\r\n\r\nThe Iranian-backed Yemeni political organization, the Houthis, launched attacks on commercial vessels linked to Israel in the Bab-el-Mandeb Strait in the Red Sea, after which shipping companies rerouted around the Cape of Good Hope, thus extending travel times by 10 days to two weeks.\r\n\r\nreight rates have been increasing for eight weeks amid geopolitical tensions in the Red Sea, according to data from the World Container Index from the UK-based maritime research firm, Drewr,y compiled by Anadolu.\r\n\r\nThe Iranian-backed Yemeni political organization, the Houthis, launched attacks on commercial vessels linked to Israel in the Bab-el-Mandeb Strait in the Red Sea, after which shipping companies rerouted around the Cape of Good Hope, thus extending travel times by 10 days to two weeks.', 'Featured', 4, '2024-01-27 14:25:46', '2024-01-27 14:25:46'),
(10, 'Oil tanker on fire after Houthi missile attack', 'A jury awarded $83.3 million to E. Jean Carroll on Friday in a stinging and expensive rebuke to former President Donald Trump', '', '', '', '', '', 'A jury awarded $83.3 million to E. Jean Carroll on Friday in a stinging and expensive rebuke to former President Donald Trump for his continued social media attacks against the longtime advice columnist over her claims that he sexually assaulted her in a Manhattan department store.\r\n\r\nThe award, coupled with a $5 million sexual assault and defamation verdict last year from another jury in a case brought by Carroll, raised to $88.3 million what Trump must pay her. Protesting vigorously, he said he would appeal.\r\n\r\n\r\nA jury awarded $83.3 million to E. Jean Carroll on Friday in a stinging and expensive rebuke to former President Donald Trump for his continued social media attacks against the longtime advice columnist over her claims that he sexually assaulted her in a Manhattan department store.\r\n\r\nThe award, coupled with a $5 million sexual assault and defamation verdict last year from another jury in a case brought by Carroll, raised to $88.3 million what Trump must pay her. Protesting vigorously, he said he would appeal.\r\n\r\nA jury awarded $83.3 million to E. Jean Carroll on Friday in a stinging and expensive rebuke to former President Donald Trump for his continued social media attacks against the longtime advice columnist over her claims that he sexually assaulted her in a Manhattan department store.\r\n\r\nThe award, coupled with a $5 million sexual assault and defamation verdict last year from another jury in a case brought by Carroll, raised to $88.3 million what Trump must pay her. Protesting vigorously, he said he would appeal.', 'Popular', 4, '2024-01-27 17:33:54', '2024-01-27 17:33:54'),
(11, 'ICJ orders Israel to prevent genocide in Gaza', '', '', '', '', '', '', 'A jury awarded $83.3 million to E. Jean Carroll on Friday in a stinging and expensive rebuke to former President Donald Trump for his continued social media attacks against the longtime advice columnist over her claims that he sexually assaulted her in a Manhattan department store.\r\n\r\nThe award, coupled with a $5 million sexual assault and defamation verdict last year from another jury in a case brought by Carroll, raised to $88.3 million what Trump must pay her. Protesting vigorously, he said he would appeal.\r\n\r\n\r\nA jury awarded $83.3 million to E. Jean Carroll on Friday in a stinging and expensive rebuke to former President Donald Trump for his continued social media attacks against the longtime advice columnist over her claims that he sexually assaulted her in a Manhattan department store.\r\n\r\nThe award, coupled with a $5 million sexual assault and defamation verdict last year from another jury in a case brought by Carroll, raised to $88.3 million what Trump must pay her. Protesting vigorously, he said he would appeal.\r\n\r\nA jury awarded $83.3 million to E. Jean Carroll on Friday in a stinging and expensive rebuke to former President Donald Trump for his continued social media attacks against the longtime advice columnist over her claims that he sexually assaulted her in a Manhattan department store.\r\n\r\nThe award, coupled with a $5 million sexual assault and defamation verdict last year from another jury in a case brought by Carroll, raised to $88.3 million what Trump must pay her. Protesting vigorously, he said he would appeal.', 'Popular', 4, '2024-01-27 17:34:01', '2024-01-27 17:34:01'),
(12, 'US government approves F-16 sale to Turkey, formally notifies Congress', '', '', '', '', '', '', 'A jury awarded $83.3 million to E. Jean Carroll on Friday in a stinging and expensive rebuke to former President Donald Trump for his continued social media attacks against the longtime advice columnist over her claims that he sexually assaulted her in a Manhattan department store.\r\n\r\nThe award, coupled with a $5 million sexual assault and defamation verdict last year from another jury in a case brought by Carroll, raised to $88.3 million what Trump must pay her. Protesting vigorously, he said he would appeal.\r\n\r\n\r\nA jury awarded $83.3 million to E. Jean Carroll on Friday in a stinging and expensive rebuke to former President Donald Trump for his continued social media attacks against the longtime advice columnist over her claims that he sexually assaulted her in a Manhattan department store.\r\n\r\nThe award, coupled with a $5 million sexual assault and defamation verdict last year from another jury in a case brought by Carroll, raised to $88.3 million what Trump must pay her. Protesting vigorously, he said he would appeal.\r\n\r\nA jury awarded $83.3 million to E. Jean Carroll on Friday in a stinging and expensive rebuke to former President Donald Trump for his continued social media attacks against the longtime advice columnist over her claims that he sexually assaulted her in a Manhattan department store.\r\n\r\nThe award, coupled with a $5 million sexual assault and defamation verdict last year from another jury in a case brought by Carroll, raised to $88.3 million what Trump must pay her. Protesting vigorously, he said he would appeal.', 'Popular', 4, '2024-01-27 17:34:05', '2024-01-27 17:34:05'),
(13, 'Oil tanker on fire after Houthi missile attack', '', '', '', '', '', '', 'A jury awarded $83.3 million to E. Jean Carroll on Friday in a stinging and expensive rebuke to former President Donald Trump for his continued social media attacks against the longtime advice columnist over her claims that he sexually assaulted her in a Manhattan department store.\r\n\r\nThe award, coupled with a $5 million sexual assault and defamation verdict last year from another jury in a case brought by Carroll, raised to $88.3 million what Trump must pay her. Protesting vigorously, he said he would appeal.\r\n\r\n\r\nA jury awarded $83.3 million to E. Jean Carroll on Friday in a stinging and expensive rebuke to former President Donald Trump for his continued social media attacks against the longtime advice columnist over her claims that he sexually assaulted her in a Manhattan department store.\r\n\r\nThe award, coupled with a $5 million sexual assault and defamation verdict last year from another jury in a case brought by Carroll, raised to $88.3 million what Trump must pay her. Protesting vigorously, he said he would appeal.\r\n\r\nA jury awarded $83.3 million to E. Jean Carroll on Friday in a stinging and expensive rebuke to former President Donald Trump for his continued social media attacks against the longtime advice columnist over her claims that he sexually assaulted her in a Manhattan department store.\r\n\r\nThe award, coupled with a $5 million sexual assault and defamation verdict last year from another jury in a case brought by Carroll, raised to $88.3 million what Trump must pay her. Protesting vigorously, he said he would appeal.', 'Popular', 4, '2024-01-27 17:34:07', '2024-01-27 17:34:07'),
(14, 'Israel reined in by ICJ rulings on Gaza - but will it obey?', '', '', '', '', '', '', 'A jury awarded $83.3 million to E. Jean Carroll on Friday in a stinging and expensive rebuke to former President Donald Trump for his continued social media attacks against the longtime advice columnist over her claims that he sexually assaulted her in a Manhattan department store.\r\n\r\nThe award, coupled with a $5 million sexual assault and defamation verdict last year from another jury in a case brought by Carroll, raised to $88.3 million what Trump must pay her. Protesting vigorously, he said he would appeal.\r\n\r\n\r\nA jury awarded $83.3 million to E. Jean Carroll on Friday in a stinging and expensive rebuke to former President Donald Trump for his continued social media attacks against the longtime advice columnist over her claims that he sexually assaulted her in a Manhattan department store.\r\n\r\nThe award, coupled with a $5 million sexual assault and defamation verdict last year from another jury in a case brought by Carroll, raised to $88.3 million what Trump must pay her. Protesting vigorously, he said he would appeal.\r\n\r\nA jury awarded $83.3 million to E. Jean Carroll on Friday in a stinging and expensive rebuke to former President Donald Trump for his continued social media attacks against the longtime advice columnist over her claims that he sexually assaulted her in a Manhattan department store.\r\n\r\nThe award, coupled with a $5 million sexual assault and defamation verdict last year from another jury in a case brought by Carroll, raised to $88.3 million what Trump must pay her. Protesting vigorously, he said he would appeal.', 'Popular', 4, '2024-01-27 17:34:10', '2024-01-27 17:34:10'),
(15, 'UN court to rule on Israeli onslaught in Gaza', '', '', '', '', '', '', 'A jury awarded $83.3 million to E. Jean Carroll on Friday in a stinging and expensive rebuke to former President Donald Trump for his continued social media attacks against the longtime advice columnist over her claims that he sexually assaulted her in a Manhattan department store.\r\n\r\nThe award, coupled with a $5 million sexual assault and defamation verdict last year from another jury in a case brought by Carroll, raised to $88.3 million what Trump must pay her. Protesting vigorously, he said he would appeal.\r\n\r\n\r\nA jury awarded $83.3 million to E. Jean Carroll on Friday in a stinging and expensive rebuke to former President Donald Trump for his continued social media attacks against the longtime advice columnist over her claims that he sexually assaulted her in a Manhattan department store.\r\n\r\nThe award, coupled with a $5 million sexual assault and defamation verdict last year from another jury in a case brought by Carroll, raised to $88.3 million what Trump must pay her. Protesting vigorously, he said he would appeal.\r\n\r\nA jury awarded $83.3 million to E. Jean Carroll on Friday in a stinging and expensive rebuke to former President Donald Trump for his continued social media attacks against the longtime advice columnist over her claims that he sexually assaulted her in a Manhattan department store.\r\n\r\nThe award, coupled with a $5 million sexual assault and defamation verdict last year from another jury in a case brought by Carroll, raised to $88.3 million what Trump must pay her. Protesting vigorously, he said he would appeal.', 'Popular', 4, '2024-01-27 17:34:13', '2024-01-27 17:34:13'),
(16, 'Industrialists increase LPG use to keep factories running', '', '', '', '', '', '', 'A jury awarded $83.3 million to E. Jean Carroll on Friday in a stinging and expensive rebuke to former President Donald Trump for his continued social media attacks against the longtime advice columnist over her claims that he sexually assaulted her in a Manhattan department store.\r\n\r\nThe award, coupled with a $5 million sexual assault and defamation verdict last year from another jury in a case brought by Carroll, raised to $88.3 million what Trump must pay her. Protesting vigorously, he said he would appeal.\r\n\r\n\r\nA jury awarded $83.3 million to E. Jean Carroll on Friday in a stinging and expensive rebuke to former President Donald Trump for his continued social media attacks against the longtime advice columnist over her claims that he sexually assaulted her in a Manhattan department store.\r\n\r\nThe award, coupled with a $5 million sexual assault and defamation verdict last year from another jury in a case brought by Carroll, raised to $88.3 million what Trump must pay her. Protesting vigorously, he said he would appeal.\r\n\r\nA jury awarded $83.3 million to E. Jean Carroll on Friday in a stinging and expensive rebuke to former President Donald Trump for his continued social media attacks against the longtime advice columnist over her claims that he sexually assaulted her in a Manhattan department store.\r\n\r\nThe award, coupled with a $5 million sexual assault and defamation verdict last year from another jury in a case brought by Carroll, raised to $88.3 million what Trump must pay her. Protesting vigorously, he said he would appeal.', 'Popular', 7, '2024-01-27 17:34:15', '2024-01-27 17:34:15'),
(17, 'Industrialists increase LPG use to keep factories running', '', '', '', '', '', '', 'A jury awarded $83.3 million to E. Jean Carroll on Friday in a stinging and expensive rebuke to former President Donald Trump for his continued social media attacks against the longtime advice columnist over her claims that he sexually assaulted her in a Manhattan department store.\r\n\r\nThe award, coupled with a $5 million sexual assault and defamation verdict last year from another jury in a case brought by Carroll, raised to $88.3 million what Trump must pay her. Protesting vigorously, he said he would appeal.\r\n\r\n\r\nA jury awarded $83.3 million to E. Jean Carroll on Friday in a stinging and expensive rebuke to former President Donald Trump for his continued social media attacks against the longtime advice columnist over her claims that he sexually assaulted her in a Manhattan department store.\r\n\r\nThe award, coupled with a $5 million sexual assault and defamation verdict last year from another jury in a case brought by Carroll, raised to $88.3 million what Trump must pay her. Protesting vigorously, he said he would appeal.\r\n\r\nA jury awarded $83.3 million to E. Jean Carroll on Friday in a stinging and expensive rebuke to former President Donald Trump for his continued social media attacks against the longtime advice columnist over her claims that he sexually assaulted her in a Manhattan department store.\r\n\r\nThe award, coupled with a $5 million sexual assault and defamation verdict last year from another jury in a case brought by Carroll, raised to $88.3 million what Trump must pay her. Protesting vigorously, he said he would appeal.', 'Popular', 7, '2024-01-27 17:34:15', '2024-01-27 17:34:15'),
(18, 'PM urges for global efforts for Rohingya repatriation', '', '', '', '', '', '', 'A jury awarded $83.3 million to E. Jean Carroll on Friday in a stinging and expensive rebuke to former President Donald Trump for his continued social media attacks against the longtime advice columnist over her claims that he sexually assaulted her in a Manhattan department store.\r\n\r\nThe award, coupled with a $5 million sexual assault and defamation verdict last year from another jury in a case brought by Carroll, raised to $88.3 million what Trump must pay her. Protesting vigorously, he said he would appeal.\r\n\r\n\r\nA jury awarded $83.3 million to E. Jean Carroll on Friday in a stinging and expensive rebuke to former President Donald Trump for his continued social media attacks against the longtime advice columnist over her claims that he sexually assaulted her in a Manhattan department store.\r\n\r\nThe award, coupled with a $5 million sexual assault and defamation verdict last year from another jury in a case brought by Carroll, raised to $88.3 million what Trump must pay her. Protesting vigorously, he said he would appeal.\r\n\r\nA jury awarded $83.3 million to E. Jean Carroll on Friday in a stinging and expensive rebuke to former President Donald Trump for his continued social media attacks against the longtime advice columnist over her claims that he sexually assaulted her in a Manhattan department store.\r\n\r\nThe award, coupled with a $5 million sexual assault and defamation verdict last year from another jury in a case brought by Carroll, raised to $88.3 million what Trump must pay her. Protesting vigorously, he said he would appeal.', 'Popular', 7, '2024-01-27 17:34:15', '2024-01-27 17:34:15'),
(19, 'China renews invitation to PM to visit at the soonest: FM', '', '', '', '', '', '', 'A jury awarded $83.3 million to E. Jean Carroll on Friday in a stinging and expensive rebuke to former President Donald Trump for his continued social media attacks against the longtime advice columnist over her claims that he sexually assaulted her in a Manhattan department store.\r\n\r\nThe award, coupled with a $5 million sexual assault and defamation verdict last year from another jury in a case brought by Carroll, raised to $88.3 million what Trump must pay her. Protesting vigorously, he said he would appeal.\r\n\r\n\r\nA jury awarded $83.3 million to E. Jean Carroll on Friday in a stinging and expensive rebuke to former President Donald Trump for his continued social media attacks against the longtime advice columnist over her claims that he sexually assaulted her in a Manhattan department store.\r\n\r\nThe award, coupled with a $5 million sexual assault and defamation verdict last year from another jury in a case brought by Carroll, raised to $88.3 million what Trump must pay her. Protesting vigorously, he said he would appeal.\r\n\r\nA jury awarded $83.3 million to E. Jean Carroll on Friday in a stinging and expensive rebuke to former President Donald Trump for his continued social media attacks against the longtime advice columnist over her claims that he sexually assaulted her in a Manhattan department store.\r\n\r\nThe award, coupled with a $5 million sexual assault and defamation verdict last year from another jury in a case brought by Carroll, raised to $88.3 million what Trump must pay her. Protesting vigorously, he said he would appeal.', 'Popular', 6, '2024-01-27 17:34:15', '2024-01-27 17:34:15'),
(20, 'Funds get costlier as liquidity crisis drags on', '', '', '', '', '', '', 'A jury awarded $83.3 million to E. Jean Carroll on Friday in a stinging and expensive rebuke to former President Donald Trump for his continued social media attacks against the longtime advice columnist over her claims that he sexually assaulted her in a Manhattan department store.\r\n\r\nThe award, coupled with a $5 million sexual assault and defamation verdict last year from another jury in a case brought by Carroll, raised to $88.3 million what Trump must pay her. Protesting vigorously, he said he would appeal.\r\n\r\n\r\nA jury awarded $83.3 million to E. Jean Carroll on Friday in a stinging and expensive rebuke to former President Donald Trump for his continued social media attacks against the longtime advice columnist over her claims that he sexually assaulted her in a Manhattan department store.\r\n\r\nThe award, coupled with a $5 million sexual assault and defamation verdict last year from another jury in a case brought by Carroll, raised to $88.3 million what Trump must pay her. Protesting vigorously, he said he would appeal.\r\n\r\nA jury awarded $83.3 million to E. Jean Carroll on Friday in a stinging and expensive rebuke to former President Donald Trump for his continued social media attacks against the longtime advice columnist over her claims that he sexually assaulted her in a Manhattan department store.\r\n\r\nThe award, coupled with a $5 million sexual assault and defamation verdict last year from another jury in a case brought by Carroll, raised to $88.3 million what Trump must pay her. Protesting vigorously, he said he would appeal.', 'Popular', 6, '2024-01-27 17:34:15', '2024-01-27 17:34:15'),
(21, '\'What will I take with me to jail?\'', '', '', '', '', '', '', 'A jury awarded $83.3 million to E. Jean Carroll on Friday in a stinging and expensive rebuke to former President Donald Trump for his continued social media attacks against the longtime advice columnist over her claims that he sexually assaulted her in a Manhattan department store.\r\n\r\nThe award, coupled with a $5 million sexual assault and defamation verdict last year from another jury in a case brought by Carroll, raised to $88.3 million what Trump must pay her. Protesting vigorously, he said he would appeal.\r\n\r\n\r\nA jury awarded $83.3 million to E. Jean Carroll on Friday in a stinging and expensive rebuke to former President Donald Trump for his continued social media attacks against the longtime advice columnist over her claims that he sexually assaulted her in a Manhattan department store.\r\n\r\nThe award, coupled with a $5 million sexual assault and defamation verdict last year from another jury in a case brought by Carroll, raised to $88.3 million what Trump must pay her. Protesting vigorously, he said he would appeal.\r\n\r\nA jury awarded $83.3 million to E. Jean Carroll on Friday in a stinging and expensive rebuke to former President Donald Trump for his continued social media attacks against the longtime advice columnist over her claims that he sexually assaulted her in a Manhattan department store.\r\n\r\nThe award, coupled with a $5 million sexual assault and defamation verdict last year from another jury in a case brought by Carroll, raised to $88.3 million what Trump must pay her. Protesting vigorously, he said he would appeal.', 'Popular', 6, '2024-01-27 17:34:15', '2024-01-27 17:34:15');

-- --------------------------------------------------------

--
-- Table structure for table `policies`
--

CREATE TABLE `policies` (
  `id` int(11) NOT NULL,
  `long_des` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `socials`
--

CREATE TABLE `socials` (
  `id` int(11) NOT NULL,
  `facebook` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `linkedin` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socials`
--

INSERT INTO `socials` (`id`, `facebook`, `youtube`, `twitter`, `linkedin`, `about`, `address`, `createdAt`, `updatedAt`) VALUES
(1, 'https://www.facebook.com/nasim.ahmed.71697', 'https://www.youtube.com/', 'https://twitter.com/home', 'https://www.linkedin.com/feed/', 'I am a hard-working and driven individual who isn\'t afraid to face a challenge. I\'m passionate about my work and I know how to get the job done. I would describe myself as an open and honest person who doesn\'t believe in misleading other people and tries to be fair in everything I do.', '44,Chaybithi Estern Housing,Middel Basaboo, Dhaka', '2024-01-27 10:21:16', '2024-01-27 10:21:16');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(11) NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstName` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastName` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `otp` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`, `email`, `mobile`, `password`, `otp`, `createdAt`, `updatedAt`) VALUES
(1, 'Nasim', 'Ahamed', 'cseahmed01@gmail.com', '01781915034', '123', '0', '2024-01-28 00:55:09', '2024-01-28 00:55:09');

-- --------------------------------------------------------

--
-- Table structure for table `_prisma_migrations`
--

CREATE TABLE `_prisma_migrations` (
  `id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checksum` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `finished_at` datetime(3) DEFAULT NULL,
  `migration_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logs` text COLLATE utf8mb4_unicode_ci,
  `rolled_back_at` datetime(3) DEFAULT NULL,
  `started_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `applied_steps_count` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `_prisma_migrations`
--

INSERT INTO `_prisma_migrations` (`id`, `checksum`, `finished_at`, `migration_name`, `logs`, `rolled_back_at`, `started_at`, `applied_steps_count`) VALUES
('a8e06de9-c67e-41a6-b7ee-2b126787ce70', '93040df99b71d08f624dbb9b78b7de288ab0ee6079951da248c5c631913d00ee', '2024-01-27 09:47:19.811', '20240127094719_init', NULL, NULL, '2024-01-27 09:47:19.597', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_key` (`name`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_userID_fkey` (`userID`),
  ADD KEY `comments_postID_fkey` (`postID`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_catID_fkey` (`catID`);

--
-- Indexes for table `policies`
--
ALTER TABLE `policies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socials`
--
ALTER TABLE `socials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscribers_email_key` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_key` (`email`);

--
-- Indexes for table `_prisma_migrations`
--
ALTER TABLE `_prisma_migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `policies`
--
ALTER TABLE `policies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `socials`
--
ALTER TABLE `socials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_postID_fkey` FOREIGN KEY (`postID`) REFERENCES `news` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `comments_userID_fkey` FOREIGN KEY (`userID`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_catID_fkey` FOREIGN KEY (`catID`) REFERENCES `categories` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
