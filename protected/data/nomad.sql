-- phpMyAdmin SQL Dump
-- version 4.2.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Aug 19, 2015 at 08:49 PM
-- Server version: 5.5.38
-- PHP Version: 5.6.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `nomad`
--

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
`id` int(11) NOT NULL,
  `ad_type_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`id`, `ad_type_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '2015-07-22 13:51:34', NULL, NULL),
(2, 1, '2015-07-22 13:54:04', NULL, NULL),
(3, 1, '2015-07-22 13:54:04', NULL, NULL),
(4, 1, '2015-07-22 13:54:09', NULL, NULL),
(5, 1, '2015-07-22 13:54:09', NULL, NULL),
(6, 1, '2015-07-22 13:54:13', NULL, NULL),
(7, 1, '2015-07-22 13:54:13', NULL, NULL),
(8, 1, '2015-07-22 14:09:20', NULL, NULL),
(9, 1, '2015-07-22 14:09:20', NULL, NULL),
(10, 1, '2015-07-22 14:09:20', NULL, NULL),
(11, 1, '2015-07-22 14:09:20', NULL, NULL),
(12, 1, '2015-07-22 14:09:20', NULL, NULL),
(13, 1, '2015-07-22 14:09:20', NULL, NULL),
(14, 1, '2015-07-22 14:09:20', NULL, NULL),
(15, 1, '2015-07-22 14:09:20', NULL, NULL),
(16, 1, '2015-07-22 14:09:20', NULL, NULL),
(17, 1, '2015-07-22 14:09:20', NULL, NULL),
(18, 1, '2015-07-22 14:28:40', NULL, NULL),
(19, 1, '2015-07-22 14:28:40', NULL, NULL),
(20, 1, '2015-07-22 14:28:40', NULL, NULL),
(21, 1, '2015-07-22 14:28:40', NULL, NULL),
(22, 1, '2015-07-22 14:28:40', NULL, NULL),
(23, 1, '2015-07-22 14:29:33', NULL, NULL),
(24, 1, '2015-07-22 14:29:33', NULL, NULL),
(25, 1, '2015-07-22 14:29:37', NULL, NULL),
(26, 1, '2015-07-22 14:29:37', NULL, NULL),
(27, 1, '2015-07-22 14:29:41', NULL, NULL),
(28, 1, '2015-07-22 14:29:41', NULL, NULL),
(29, 1, '2015-07-22 14:29:45', NULL, NULL),
(30, 1, '2015-07-22 14:29:45', NULL, NULL),
(31, 1, '2015-07-22 14:55:38', NULL, NULL),
(32, 1, '2015-07-22 14:55:38', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ad_images`
--

CREATE TABLE `ad_images` (
`id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `image_url` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ad_videos`
--

CREATE TABLE `ad_videos` (
`id` int(11) NOT NULL,
  `ad_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `url_type_id` int(11) NOT NULL,
  `video_url` text NOT NULL,
  `image_url` text,
  `view_count` int(11) NOT NULL DEFAULT '0',
  `play_count` int(11) NOT NULL DEFAULT '0',
  `point_reward` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ad_videos`
--

INSERT INTO `ad_videos` (`id`, `ad_id`, `vendor_id`, `title`, `description`, `url_type_id`, `video_url`, `image_url`, `view_count`, `play_count`, `point_reward`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 'Versi Tol', 'nulla consequat semper interdum, quam mi egestas ipsum, ut laoreet tortor neque scelerisque magna. Donec quis nisl sit amet odio aliquet sodales', 2, '4K-D3pUJ58s', NULL, 25, 5, 1, '2015-07-22 13:52:14', NULL, NULL),
(2, 2, 1, 'Expectation Vs Reality ', NULL, 2, 'UDNwhQjrYjY', NULL, 0, 1, 2, '2015-07-22 13:55:02', NULL, NULL),
(3, 3, 1, 'Expectation vs Reality Part 2 ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In id commodo felis. Praesent tempus eleifend lectus non placerat. Vivamus in augue at nisi mollis suscipit id vitae dolor', 2, 'WDXBatoL_4c', NULL, 0, 0, 1, '2015-07-22 13:55:02', NULL, NULL),
(4, 4, 2, 'Jajan Online versi Mama Minta Pulsa', NULL, 2, '6XWqhaSy5bs', NULL, 0, 0, 3, '2015-07-22 13:55:02', NULL, NULL),
(5, 5, 2, 'Jajan Online versi Make Up ', 'Mauris id orci eros. Ut sed blandit dui, in blandit odio. Etiam tincidunt sem ultrices dolor aliquam, viverra bibendum quam mollis. Vestibulum non lorem at enim mattis laoreet ut ut justo', 2, 'ymX4Q0hG5aM', NULL, 0, 0, 1, '2015-07-22 13:55:02', NULL, NULL),
(6, 6, 2, 'Kartu As Kasbuloh ', NULL, 2, 'gChk9GNjiB4', NULL, 0, 0, 2, '2015-07-22 13:55:02', NULL, NULL),
(7, 7, 2, 'Kartu As Gokil 10 Hari Non-Stop ', 'Quisque fringilla erat in commodo interdum. Sed enim magna, viverra id elementum quis, fringilla non ligula. Vestibulum non tincidunt turpis, sit amet posuere quam', 2, 'LyFDhQ2qGUY', NULL, 0, 0, 1, '2015-07-22 13:55:02', NULL, NULL),
(8, 8, 2, 'Kartu As Gratis 100x Lipat Nelpon, SMS, dan Online ', NULL, 2, 'Qyz2dgY3IuE', NULL, 0, 0, 1, '2015-07-22 13:55:02', NULL, NULL),
(9, 9, 3, 'Kisah Dua Tetangga yang Kembali Bersama', NULL, 2, 'gc_RdKQ_aAA', NULL, 0, 0, 2, '2015-07-22 14:10:58', NULL, NULL),
(10, 10, 3, '#MiniOreoNgemilSeru Penolakan | Internet Lemot ', NULL, 2, '2U8VJA3x2CE', NULL, 0, 0, 2, '2015-07-22 14:10:58', NULL, NULL),
(11, 11, 3, '#MiniOreoNgemilSeru Di Rooftop ', NULL, 2, '_DnokE6XHOA', NULL, 0, 0, 1, '2015-07-22 14:12:04', NULL, NULL),
(12, 12, 4, 'AXIS Viber ', NULL, 2, 'So3ZDzOMgc0', NULL, 0, 0, 2, '2015-07-22 14:12:04', NULL, NULL),
(13, 13, 4, '#IRITOLOGY No. 36 - Maha Guru Irit ', NULL, 2, '-qiObMawMrM', NULL, 0, 0, 1, '2015-07-22 14:12:04', NULL, NULL),
(14, 14, 5, 'Kuliner Ramadhan - Peanut Butter Chocolate Shakes ', NULL, 2, 'tniSfdmXrJg', NULL, 0, 0, 2, '2015-07-22 14:12:04', NULL, NULL),
(15, 15, 5, 'Kuliner Ramadhan - Teh Coklat Frappe ', NULL, 2, '-TwX2vE1R1Y', NULL, 0, 0, 2, '2015-07-22 14:12:04', NULL, NULL),
(16, 16, 5, 'Kuliner Ramadhan - Susu Coklat Hangat Karamel ', NULL, 2, 'EGfAGzRUpj0', NULL, 0, 0, 3, '2015-07-22 14:12:04', NULL, NULL),
(17, 17, 5, 'Kuliner Ramadhan - Es Strawberry Lasi ', NULL, 2, 'gwB_91OBlNI', NULL, 0, 0, 1, '2015-07-22 14:12:04', NULL, NULL),
(18, 18, 6, 'Raditya Dika Got Pranked', NULL, 2, 'StF32FtUBCk', NULL, 0, 0, 2, '2015-07-22 14:30:49', NULL, NULL),
(19, 19, 6, 'Tantangan Ambi Pur Mini Baru - Smelly to Smiley ', NULL, 2, 'ja9P5t5-uAY', NULL, 0, 0, 1, '2015-07-22 14:30:49', NULL, NULL),
(20, 20, 6, 'Tantangan Mobil Bau Raditya Dika #smellytosmiley Part. 2', NULL, 2, 'eMNaWt0G7rU', NULL, 0, 0, 1, '2015-07-22 14:30:49', NULL, NULL),
(21, 21, 7, '#7TTD - 7 Hal Yang Harus Diperhatikan Sebelum Selfie ', NULL, 2, '35GN97qHezk', NULL, 0, 0, 1, '2015-07-22 14:30:49', NULL, NULL),
(22, 22, 7, '#7TTD - 7 Hal Yang Bisa Dilakukan Untuk Melindungi Smartphone-mu ', NULL, 2, '5OkQ6_v3tFo', NULL, 0, 0, 2, '2015-07-22 14:30:49', NULL, NULL),
(23, 23, 7, '#7TTD - 7 Hal Yang Bisa Dilakukan Saat Terjebak Macet Saat Mudik', NULL, 2, 'M9FnrFURNNk', NULL, 0, 0, 1, '2015-07-22 14:30:49', NULL, NULL),
(24, 24, 7, '#7TTD - 7 Hal Yang Bisa Dilakukan Sebelum Sahur ', NULL, 2, '2jOuTL3KQ-s', NULL, 0, 0, 3, '2015-07-22 14:30:49', NULL, NULL),
(25, 25, 8, 'Aku Pasrah "Sandal" - Tokopedia TVC ', NULL, 2, 'Kvf96nakCDc', NULL, 0, 0, 2, '2015-07-22 14:30:49', NULL, NULL),
(26, 26, 8, 'Selamatkan Chelsea Islan! "Raket Nyamuk" - Tokopedia TVC ', NULL, 2, 'LqML8UrsXts', NULL, 0, 0, 1, '2015-07-22 14:30:49', NULL, NULL),
(27, 27, 8, 'Naga Mazari - Air "Keran Air" - Tokopedia TVC ', NULL, 2, 'teFPHWIQ2WY', NULL, 0, 0, 1, '2015-07-22 14:30:49', NULL, NULL),
(28, 28, 9, 'Fauzan Pedekate Berubah Jadi Kolektor ', NULL, 2, 'or1Qp2GFXW4', NULL, 0, 0, 2, '2015-07-22 14:30:49', NULL, NULL),
(29, 29, 9, 'Jual Laptop Kamu, Bantu Bimo Beresin Skripsinya ', NULL, 2, 'RPxac1buE4w', NULL, 0, 0, 1, '2015-07-22 14:30:49', NULL, NULL),
(30, 30, 9, 'Kencan Nico Gagal Karena Motor ', NULL, 2, 'dtef3fFNQ_E', NULL, 0, 0, 1, '2015-07-22 14:30:49', NULL, NULL),
(31, 31, 9, 'Handphone Lama Masih Banyak Dicari', NULL, 2, 'CLFFzjXpaug', NULL, 0, 0, 2, '2015-07-22 14:30:49', NULL, NULL),
(32, 32, 9, 'Bu Indri Cari Drum di OLX ', NULL, 2, 'oo-9BV637Mw', NULL, 0, 0, 1, '2015-07-22 14:30:49', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ad_videos_categories`
--

CREATE TABLE `ad_videos_categories` (
`id` int(11) NOT NULL,
  `ad_video_id` int(11) NOT NULL,
  `ad_video_category_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ad_videos_categories`
--

INSERT INTO `ad_videos_categories` (`id`, `ad_video_id`, `ad_video_category_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 1),
(4, 2, 2),
(5, 3, 1),
(6, 3, 2),
(7, 4, 1),
(8, 4, 3),
(9, 5, 1),
(10, 5, 3),
(11, 6, 1),
(12, 6, 3),
(13, 7, 1),
(14, 7, 3),
(15, 8, 1),
(16, 8, 3),
(17, 9, 1),
(18, 9, 2),
(19, 10, 1),
(20, 10, 2),
(21, 11, 1),
(22, 11, 2),
(23, 12, 1),
(24, 12, 3),
(25, 13, 1),
(26, 13, 3),
(27, 14, 2),
(28, 15, 2),
(29, 16, 2),
(30, 17, 2),
(31, 18, 1),
(32, 18, 5),
(33, 19, 1),
(34, 19, 5),
(35, 20, 1),
(36, 20, 5),
(37, 21, 1),
(38, 21, 3),
(39, 22, 1),
(40, 22, 3),
(41, 23, 1),
(42, 23, 3),
(43, 24, 1),
(44, 24, 3),
(45, 25, 1),
(46, 25, 4),
(47, 26, 1),
(48, 26, 4),
(49, 27, 1),
(50, 27, 4),
(51, 27, 1),
(52, 27, 4),
(53, 28, 1),
(54, 28, 4),
(55, 29, 1),
(56, 29, 4),
(57, 30, 1),
(58, 30, 4);

-- --------------------------------------------------------

--
-- Table structure for table `ad_video_categories`
--

CREATE TABLE `ad_video_categories` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `img_string` text
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ad_video_categories`
--

INSERT INTO `ad_video_categories` (`id`, `name`, `img_string`) VALUES
(0, 'All', 'comedy'),
(1, 'Lucu', 'comedy'),
(2, 'Makanan', 'cooking'),
(3, 'Telekomunikasi', 'technology'),
(4, 'E-Commerce', 'fashion'),
(5, 'Perlengkapan', 'life-style');

-- --------------------------------------------------------

--
-- Table structure for table `ad_video_comments`
--

CREATE TABLE `ad_video_comments` (
`id` int(11) NOT NULL,
  `ad_video_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=238 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ad_video_comments`
--

INSERT INTO `ad_video_comments` (`id`, `ad_video_id`, `member_id`, `description`, `created_at`, `updated_at`, `status_id`) VALUES
(1, 1, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. Pellentesque vehicula vitae enim vel aliquam. Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(2, 2, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(3, 3, 2, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(4, 4, 0, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(5, 5, 1, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(6, 6, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(7, 7, 0, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(8, 8, 1, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(9, 9, 2, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(10, 10, 0, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(11, 11, 1, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(12, 12, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(13, 13, 0, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(14, 14, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. Pellentesque vehicula vitae enim vel aliquam. Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(15, 15, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(16, 16, 0, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(17, 17, 1, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(18, 18, 2, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(19, 19, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(20, 20, 1, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(21, 21, 2, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(22, 22, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. Pellentesque vehicula vitae enim vel aliquam. Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(23, 23, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(24, 24, 2, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(25, 25, 0, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(26, 26, 1, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(27, 27, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(28, 28, 0, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(29, 29, 1, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(30, 30, 2, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(31, 31, 0, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(32, 32, 1, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(33, 33, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(34, 34, 0, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(35, 35, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. Pellentesque vehicula vitae enim vel aliquam. Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(36, 36, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(37, 37, 0, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(38, 1, 1, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(39, 2, 2, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(40, 3, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(41, 4, 1, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(42, 5, 2, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(43, 6, 0, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(44, 7, 1, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(45, 8, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(46, 9, 0, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(47, 10, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. Pellentesque vehicula vitae enim vel aliquam. Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(48, 11, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(49, 12, 0, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(50, 13, 1, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(51, 14, 2, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(52, 15, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(53, 16, 1, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(54, 17, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(55, 18, 0, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(56, 19, 1, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(57, 20, 2, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(58, 21, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(59, 22, 1, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(60, 23, 2, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(61, 24, 0, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(62, 25, 1, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(63, 26, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(64, 27, 0, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(65, 28, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. Pellentesque vehicula vitae enim vel aliquam. Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(66, 29, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(67, 30, 0, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(68, 31, 1, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(69, 32, 2, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(70, 33, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(71, 34, 1, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(72, 35, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. Pellentesque vehicula vitae enim vel aliquam. Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(73, 36, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(74, 37, 1, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(75, 1, 2, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(76, 2, 0, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(77, 3, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(78, 4, 2, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(79, 5, 0, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(80, 6, 1, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(81, 7, 2, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(82, 8, 0, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(83, 9, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(84, 10, 2, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(85, 11, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. Pellentesque vehicula vitae enim vel aliquam. Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(86, 12, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(87, 13, 2, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(88, 14, 0, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(89, 15, 1, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(90, 16, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(91, 17, 0, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(92, 18, 1, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(93, 19, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. Pellentesque vehicula vitae enim vel aliquam. Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(94, 20, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(95, 21, 1, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(96, 22, 2, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(97, 23, 0, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(98, 24, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(99, 25, 2, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(100, 26, 0, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(101, 27, 1, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(102, 28, 2, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(103, 29, 0, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(104, 30, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(105, 31, 2, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(106, 32, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. Pellentesque vehicula vitae enim vel aliquam. Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(107, 33, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(108, 34, 2, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(109, 35, 0, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(110, 36, 1, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(111, 37, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(112, 1, 0, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(113, 2, 1, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(114, 3, 2, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(115, 4, 0, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(116, 5, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(117, 6, 2, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(118, 7, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. Pellentesque vehicula vitae enim vel aliquam. Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(119, 8, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(120, 9, 2, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(121, 10, 0, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(122, 11, 1, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(123, 12, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(124, 13, 0, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(125, 14, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(126, 15, 2, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(127, 16, 0, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(128, 17, 1, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(129, 18, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(130, 19, 0, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(131, 20, 1, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(132, 21, 2, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(133, 22, 0, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(134, 23, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(135, 24, 2, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(136, 25, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. Pellentesque vehicula vitae enim vel aliquam. Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(137, 26, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(138, 27, 2, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(139, 28, 0, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(140, 29, 1, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(141, 30, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(142, 31, 0, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(143, 32, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. Pellentesque vehicula vitae enim vel aliquam. Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(144, 33, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(145, 34, 0, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(146, 35, 1, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(147, 36, 2, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(148, 37, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(149, 1, 1, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(150, 2, 2, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(151, 3, 0, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(152, 4, 1, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(153, 5, 2, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(154, 6, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(155, 7, 1, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(156, 8, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. Pellentesque vehicula vitae enim vel aliquam. Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(157, 9, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(158, 10, 1, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(159, 11, 2, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(160, 12, 0, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(161, 13, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(162, 14, 2, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(163, 15, 0, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(164, 16, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. Pellentesque vehicula vitae enim vel aliquam. Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(165, 17, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(166, 18, 0, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(167, 19, 1, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(168, 20, 2, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(169, 21, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(170, 22, 1, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(171, 23, 2, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(172, 24, 0, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(173, 25, 1, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(174, 26, 2, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(175, 27, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(176, 28, 1, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(177, 29, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. Pellentesque vehicula vitae enim vel aliquam. Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(178, 30, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(179, 31, 1, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(180, 32, 2, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(181, 33, 0, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(182, 34, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(183, 35, 2, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(184, 36, 0, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(185, 37, 1, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(186, 1, 2, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(187, 2, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(188, 3, 1, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(189, 4, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. Pellentesque vehicula vitae enim vel aliquam. Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(190, 5, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(191, 6, 1, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(192, 7, 2, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(193, 8, 0, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(194, 9, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(195, 10, 2, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(196, 11, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(197, 12, 1, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(198, 13, 2, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(199, 14, 0, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(200, 15, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(201, 16, 2, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(202, 17, 0, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(203, 18, 1, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(204, 19, 2, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(205, 20, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(206, 21, 1, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(207, 22, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. Pellentesque vehicula vitae enim vel aliquam. Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(208, 23, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(209, 24, 1, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(210, 25, 2, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(211, 26, 0, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(212, 27, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(213, 28, 2, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(214, 29, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. Pellentesque vehicula vitae enim vel aliquam. Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(215, 30, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(216, 31, 2, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(217, 32, 0, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL);
INSERT INTO `ad_video_comments` (`id`, `ad_video_id`, `member_id`, `description`, `created_at`, `updated_at`, `status_id`) VALUES
(218, 33, 1, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(219, 34, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(220, 35, 0, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(221, 36, 1, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(222, 37, 2, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(223, 1, 1, '123', '2015-07-01 13:06:11', NULL, NULL),
(224, 1, 1, '123', '2015-07-01 13:06:11', NULL, NULL),
(225, 1, 1, '123', '2015-07-01 13:06:11', NULL, NULL),
(226, 1, 1, '123', '2015-07-01 13:06:11', NULL, NULL),
(227, 1, 1, '123', '2015-07-01 13:06:11', NULL, NULL),
(228, 1, 1, '123', '2015-07-01 13:06:11', NULL, NULL),
(229, 1, 1, '123', '2015-07-01 13:06:11', NULL, NULL),
(230, 1, 1, '123', '2015-07-01 13:06:11', NULL, NULL),
(231, 1, 1, '123', '2015-07-01 13:06:11', NULL, NULL),
(232, 1, 1, '123', '2015-07-01 13:06:11', NULL, NULL),
(233, 1, 1, '123', '2015-07-01 13:06:11', NULL, NULL),
(234, 1, 1, '123', '2015-07-08 16:43:56', NULL, NULL),
(235, 1, 1, '123', '2015-07-22 16:09:29', NULL, NULL),
(236, 1, 1, '123', '2015-08-08 16:59:45', NULL, NULL),
(237, 1, 1, '123', '2015-08-08 17:00:30', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ad_video_likes`
--

CREATE TABLE `ad_video_likes` (
`id` int(11) NOT NULL,
  `ad_video_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ad_video_likes`
--

INSERT INTO `ad_video_likes` (`id`, `ad_video_id`, `member_id`) VALUES
(3, 1, 0),
(4, 5, 2),
(6, 2, 2),
(7, 2, 0),
(8, 3, 0),
(9, 4, 1),
(10, 4, 0),
(11, 7, 2),
(12, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `ad_video_plays`
--

CREATE TABLE `ad_video_plays` (
`id` int(11) NOT NULL,
  `ad_video_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `device_id` int(11) DEFAULT NULL,
  `device_name` varchar(255) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ad_video_plays`
--

INSERT INTO `ad_video_plays` (`id`, `ad_video_id`, `member_id`, `device_id`, `device_name`, `ip_address`, `created_at`, `updated_at`, `status_id`) VALUES
(1, 1, 0, 1, 'Nexus 7', '214.289.123.321', '2015-06-18 04:43:10', NULL, NULL),
(2, 4, 2, 2, 'Iphone 4', '214.289.123.322', '2015-06-18 04:43:10', NULL, NULL),
(3, 7, 2, 1, 'Samsung S4', '214.289.123.323', '2015-06-18 04:43:10', NULL, NULL),
(4, 10, 1, 2, 'Iphone 5', '214.289.123.324', '2015-06-18 04:43:10', NULL, NULL),
(5, 13, 0, 1, 'Lg G3', '214.289.123.325', '2015-06-18 04:43:10', NULL, NULL),
(6, 16, 2, 2, 'Iphone 5S', '214.289.123.326', '2015-06-18 04:43:10', NULL, NULL),
(7, 19, 2, 1, 'Nexus 7', '214.289.123.327', '2015-06-18 04:43:10', NULL, NULL),
(8, 22, 1, 2, 'Iphone 4', '214.289.123.328', '2015-06-18 04:43:10', NULL, NULL),
(9, 25, 0, 1, 'Samsung S4', '214.289.123.329', '2015-06-18 04:43:10', NULL, NULL),
(10, 28, 2, 2, 'Iphone 5', '214.289.123.330', '2015-06-18 04:43:10', NULL, NULL),
(11, 31, 2, 1, 'Lg G3', '214.289.123.331', '2015-06-18 04:43:10', NULL, NULL),
(12, 34, 1, 2, 'Iphone 5S', '214.289.123.332', '2015-06-18 04:43:10', NULL, NULL),
(13, 2, 0, 1, 'Nexus 7', '214.289.123.333', '2015-06-18 04:43:10', NULL, NULL),
(14, 5, 2, 2, 'Iphone 4', '214.289.123.334', '2015-06-18 04:43:10', NULL, NULL),
(15, 8, 2, 1, 'Samsung S4', '214.289.123.335', '2015-06-18 04:43:10', NULL, NULL),
(16, 11, 1, 2, 'Iphone 5', '214.289.123.336', '2015-06-18 04:43:10', NULL, NULL),
(17, 14, 0, 1, 'Lg G3', '214.289.123.337', '2015-06-18 04:43:10', NULL, NULL),
(18, 17, 2, 2, 'Iphone 5S', '214.289.123.338', '2015-06-18 04:43:10', NULL, NULL),
(19, 20, 2, 1, 'Nexus 7', '214.289.123.339', '2015-06-18 04:43:10', NULL, NULL),
(20, 23, 1, 2, 'Iphone 4', '214.289.123.321', '2015-06-18 04:43:10', NULL, NULL),
(21, 26, 1, 1, 'Samsung S4', '214.289.123.322', '2015-06-18 04:43:10', NULL, NULL),
(22, 1, 0, 2, 'Iphone 5', '214.289.123.323', '2015-06-18 04:43:10', NULL, NULL),
(23, 4, 2, 1, 'Lg G3', '214.289.123.324', '2015-06-18 04:43:10', NULL, NULL),
(24, 7, 2, 2, 'Iphone 5S', '214.289.123.325', '2015-06-18 04:43:10', NULL, NULL),
(25, 1, 1, 1, 'Nexus 7', '214.289.123.326', '2015-06-18 04:43:10', NULL, NULL),
(26, 4, 0, 2, 'Iphone 4', '214.289.123.327', '2015-06-18 04:43:10', NULL, NULL),
(27, 7, 2, 1, 'Samsung S4', '214.289.123.328', '2015-06-18 04:43:10', NULL, NULL),
(28, 10, 2, 2, 'Iphone 5', '214.289.123.329', '2015-06-18 04:43:10', NULL, NULL),
(29, 2, 1, 1, 'Lg G3', '214.289.123.330', '2015-06-18 04:43:10', NULL, NULL),
(30, 5, 0, 2, 'Iphone 5S', '214.289.123.331', '2015-06-18 04:43:10', NULL, NULL),
(31, 8, 2, 1, 'Nexus 7', '214.289.123.332', '2015-06-18 04:43:10', NULL, NULL),
(32, 11, 2, 2, 'Iphone 4', '214.289.123.333', '2015-06-18 04:43:10', NULL, NULL),
(33, 14, 1, 1, 'Samsung S4', '214.289.123.334', '2015-06-18 04:43:10', NULL, NULL),
(34, 17, 0, 2, 'Iphone 5', '214.289.123.335', '2015-06-18 04:43:10', NULL, NULL),
(35, 20, 2, 1, 'Lg G3', '214.289.123.336', '2015-06-18 04:43:10', NULL, NULL),
(36, 23, 2, 2, 'Iphone 5S', '214.289.123.337', '2015-06-18 04:43:10', NULL, NULL),
(37, 1, 1, 1, 'Nexus 7', '214.289.123.338', '2015-06-18 04:43:10', NULL, NULL),
(38, 4, 0, 2, 'Iphone 4', '214.289.123.339', '2015-06-18 04:43:10', NULL, NULL),
(39, 7, 2, 1, 'Samsung S4', '214.289.123.359', '2015-06-18 04:43:10', NULL, NULL),
(40, 10, 2, 2, 'Iphone 5', '214.289.123.360', '2015-06-18 04:43:10', NULL, NULL),
(41, 13, 1, 1, 'Lg G3', '214.289.123.361', '2015-06-18 04:43:10', NULL, NULL),
(42, 16, 1, 2, 'Iphone 5S', '214.289.123.362', '2015-06-18 04:43:10', NULL, NULL),
(43, 1, 1, 0, '0', '0', '2015-07-04 17:41:16', NULL, NULL),
(44, 1, 1, 0, '0', '0', '2015-07-22 16:12:38', NULL, NULL),
(45, 2, 2, 0, '0', '0', '2015-07-22 16:12:43', NULL, NULL),
(46, 1, 1, 0, '0', '0', '2015-07-25 17:03:27', NULL, NULL),
(47, 1, 1, 0, '0', '0', '2015-08-01 18:35:12', NULL, NULL),
(48, 1, 1, 0, '0', '0', '2015-08-01 18:35:34', NULL, NULL),
(49, 1, 1, 0, '0', '0', '2015-08-01 18:35:46', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

CREATE TABLE `artists` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`id`, `name`, `description`, `created_at`, `updated_at`, `status_id`) VALUES
(1, 'Iwan Fals', NULL, '2015-08-12 12:32:02', NULL, NULL),
(2, 'Peterpan', NULL, '2015-08-12 12:32:02', NULL, NULL),
(3, 'Jrock', NULL, '2015-08-12 12:32:16', NULL, NULL),
(4, 'Dewa', NULL, '2015-08-12 12:32:25', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `edutainments`
--

CREATE TABLE `edutainments` (
`id` int(11) NOT NULL,
  `video_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `url_type_id` int(11) NOT NULL,
  `video_url` text,
  `title` varchar(255) NOT NULL,
  `description` text,
  `play_count` int(11) NOT NULL,
  `view_count` int(11) NOT NULL,
  `image_url` text,
  `last_update_by_member_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `edutainments`
--

INSERT INTO `edutainments` (`id`, `video_id`, `member_id`, `url_type_id`, `video_url`, `title`, `description`, `play_count`, `view_count`, `image_url`, `last_update_by_member_id`, `created_at`, `updated_at`, `status_id`) VALUES
(1, 8, 1, 2, '3FVB3VI2qQI', 'Cara Memasak Siomay Lezat untuk Jualan', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In id commodo felis. Praesent tempus eleifend lectus non placerat. Vivamus in augue at nisi mollis suscipit id vitae dolor. Sed ultrices rutrum enim, vel pharetra mauris tempor tempor. Nunc in dignissim metus. Pellentesque vel condimentum lacus', 1, 62, '2252714fca223c34480f74444ab5bdffad.jpeg', NULL, '2015-06-15 07:04:08', NULL, NULL),
(2, 11, 1, 2, 'nWgcOlUQM4U', 'Dasar-dasar bermain bola basket', NULL, 0, 3, '2368640e9bbe63b86c92e87a852f607960.jpeg', NULL, '2015-06-15 07:08:24', NULL, NULL),
(3, 12, 1, 2, '0o0kNeOyH98', 'Yoga untuk Pemula', 'Praesent sem odio, euismod ac nisl in, viverra tincidunt metus. Aliquam feugiat, massa nec vehicula accumsan, nisl ante tincidunt nulla, nec tempus lacus velit ac odio', 0, 0, '24dc258e5cf0b4150fba82adc27387b29d.jpeg', NULL, '2015-06-15 07:12:16', NULL, NULL),
(4, 13, 1, 2, '8TdIa4DttI8', 'Fun in Bali', NULL, 0, 0, '25ec57c330cf91843f731a735baf1b4e99.jpeg', NULL, '2015-06-15 07:12:47', NULL, NULL),
(5, 14, 1, 1, 'gondola-italian-ice-cream-pasar-santa--1280x720-908-9-kbps.mp4', 'Pasar Santa : Gondola Italian Ice Cream', 'Vivamus vel scelerisque lacus, id convallis enim. Maecenas tempor est sed libero sollicitudin laoreet. Nulla id efficitur est. Nunc semper efficitur ante at semper. Quisque laoreet, lorem vitae sagittis elementum, purus ligula aliquet arcu', 0, 0, '26abb532c21db0c07bf2a77131057baff1.jpeg', NULL, '2015-06-15 07:20:54', NULL, NULL),
(6, 15, 1, 1, 'roast-beef-gusto-pasar-santa-1280x720-909-7-kbps.mp4', 'Pasar Santa : Classic Roast Beef Gusto', NULL, 0, 0, '275dd109964b477e399b8b8922648e4f6a.jpeg', NULL, '2015-06-15 07:26:14', NULL, NULL),
(7, 16, 1, 1, 'photography-ar-test2-852x638-337-3-kbps.mp4', 'AR Test 2 Photography', 'nteger eget convallis turpis. Maecenas tristique congue enim at mollis. Nulla pellentesque dignissim ex nec imperdiet. Praesent pellentesque', 0, 0, '287f54dea7ebcba65e4512664c87c44d4d.jpeg', NULL, '2015-06-15 07:26:56', NULL, NULL),
(8, 17, 1, 1, 'make-up-beauty-story-1280x720-909-0-kbps.mp4', 'Beauty Story', NULL, 0, 0, '291e0738e2136342257e2b5b6122299869.jpeg', NULL, '2015-06-15 07:27:41', NULL, NULL),
(9, 18, 1, 1, 'chicken-grilled-salad-1280x720-908-9-kbps.mp4', 'Langsung Enak : Masak Chicken Grilled Salad', 'nulla consequat semper interdum, quam mi egestas ipsum, ut laoreet tortor neque scelerisque magna. Donec quis nisl sit amet odio aliquet sodales', 0, 0, '3064c366f6f8e892a32e2f27ecc631c050.jpeg', NULL, '2015-06-15 07:28:23', NULL, NULL),
(10, 19, 1, 1, 'oscar-mario-lawalata-852x478-505-0-kbps.mp4', 'Oscar & Mario Lawalata', NULL, 0, 0, '31fed353ff9e920992490caf7d9e46e7a1.jpeg', NULL, '2015-06-15 07:28:59', NULL, NULL),
(11, 20, 1, 1, 'selebritieduard-betz-1280x714-908-6-kbps.mp4', 'Eduard Betz', NULL, 0, 0, '32c0d91aaa572e76f70ce907a66268847c.jpeg', NULL, '2015-06-15 07:29:30', NULL, NULL),
(12, 21, 1, 2, 'HbE54BHAiTQ', 'Rita Rudaini : Masak Tomyam Seafood', NULL, 0, 0, '338f74f0a93e3b81ad4474f8688b49ebd2.jpeg', NULL, '2015-06-15 07:29:54', NULL, NULL),
(13, 22, 1, 1, 'tsurro-churros-pasar-santa-1280x720-909-1-kbps.mp4', 'Pasar Santa : Tsurro Churros', NULL, 0, 0, '34f8f98ff2e98a1ab7c78fdb13e15ceddf.jpeg', NULL, '2015-06-15 07:30:52', NULL, NULL),
(14, 23, 1, 1, 'nigel-baker-photographer-1280x720-909-4-kbps.mp4', 'Nigel Baker', NULL, 0, 0, '357079876c969447a08f28152df19bec2c.jpeg', NULL, '2015-06-15 07:31:24', NULL, NULL),
(15, 24, 1, 1, 'sabrina-patricia-kitchen-panacotta-1280x720-908-8-kbps.mp4', 'Sabrina Patricia Kitchen : Masak Panacotta', NULL, 0, 0, '3685c9b03a4574b96f7704d76aeeb83146.jpeg', NULL, '2015-06-15 07:31:56', NULL, NULL),
(16, 25, 1, 1, 'pumpkin-soup-1280x720-909-3-kbps.mp4', 'Sabrina Patricia Kitchen : Masak Pumpkin Soup', NULL, 0, 0, '3770cf275c9ff23c170252d26d986e74ff.jpeg', NULL, '2015-06-15 07:33:38', NULL, NULL),
(17, 26, 1, 1, 'roasted-chicken-1280x720-909-3-kbps.mp4', 'Sabrina Patricia Kitchen : Masak Roasted Kitchen', NULL, 0, 0, '38dc02bf0fa6842c5b881ebc9f92e0cb00.jpeg', NULL, '2015-06-15 07:34:13', NULL, NULL),
(18, 27, 1, 1, 'chicken-grilled-salad-1280x720-908-9-kbps.mp4', 'Langsung Enak : Masak Chicken Grilled Salad', NULL, 0, 0, '39a72d5251b1a8044192089fe0fe586b71.jpeg', NULL, '2015-06-15 07:34:40', NULL, NULL),
(19, 28, 1, 1, 'sosis-gulung-telur-1280x720-909-0-kbps.mp4', 'Langsung Enak : Masak Sosis Gulung Telor', NULL, 0, 0, '402e8146a72d33a608ad06418abde90dbb.jpeg', NULL, '2015-06-15 07:35:18', NULL, NULL),
(20, 29, 1, 2, '61OqHSXrAI0', 'Belajar pemrogaman Android : Tutorial Membuat Aplikasi Android Sederhana', NULL, 0, 0, '415f9570c6eb7f6858685ce6c699fa1eee.jpeg', NULL, '2015-06-15 07:36:08', NULL, NULL),
(21, 30, 1, 2, 'zTAM-wiAw6o', 'Belajar seni merangkai bunga dan buah Part 2', NULL, 0, 0, '42a907d9fa3ce39fbdd79bf78957b9c321.jpeg', NULL, '2015-06-15 07:36:47', NULL, NULL),
(22, 31, 1, 2, '17CBHScpdlo', 'Belajar tari Bali Part 1', NULL, 0, 0, '430371e8360cdb8a5d3e4601e255c884e2.jpeg', NULL, '2015-06-15 07:37:33', NULL, NULL),
(23, 32, 1, 2, 't6MTSL6bvBU', 'NET10 - Wisata Kuliner di Jagalchi Market, Korea Selatan', NULL, 0, 0, '444da6d02fcb81adfb2ea63218791f97a7.jpeg', NULL, '2015-06-15 07:37:59', NULL, NULL),
(24, 33, 1, 2, 'MUPCPPWOixM', 'Belajar gitar bersama Andy Pradipta', NULL, 0, 0, '4575a3e4edd85fbe2a9abd90e6a8b5dcea.jpeg', NULL, '2015-06-15 07:38:27', NULL, NULL),
(25, 34, 1, 2, 'MUPCPPWOixM', 'Belajar gitar bersama Andy Pradipta', NULL, 0, 0, '46a2bad565fdbc3b7d372b086170ca4d86.jpeg', NULL, '2015-06-15 07:38:31', NULL, NULL),
(26, 35, 1, 2, '9AqbwXlur80', 'Tips agar pohon mangga cepat berbuah', NULL, 0, 0, '47c5a1e9d0941f7456656919af4e19efec.jpeg', NULL, '2015-06-15 07:41:22', NULL, NULL),
(27, 36, 1, 2, 'BhnYcZDl7PA', 'Kisah-kisah sukses setelah putus sekolah', NULL, 0, 0, '48ea1b1e19e46691ea52f3acadfbac4f08.jpeg', NULL, '2015-06-15 07:41:46', NULL, NULL),
(28, 37, 1, 2, 'zjUNngT0mts', 'Kursus membuat bakso', NULL, 0, 0, '49d78ea062048aa840ccb08bf3cfaa209f.jpeg', NULL, '2015-06-15 07:42:08', NULL, NULL),
(29, 38, 1, 2, 'm69vQfMD66s', 'Resep & cara membuat es krim mudah & simple', NULL, 0, 0, '508c65793289eeac0a8598ff09fa610ba2.jpeg', NULL, '2015-06-15 07:42:41', NULL, NULL),
(30, 39, 1, 2, '2PO1wFWxoRM', 'Kursus mekanik motor', NULL, 0, 0, '51135e6b28cc4cecdfd42cfaa1b709b54b.jpeg', NULL, '2015-06-15 07:43:17', NULL, NULL),
(31, 40, 1, 2, '3QjYyaMNdYU', 'Pertandingan kemahiran Bengkel automotif', NULL, 0, 0, '52ea8d39f89aec00e94b08a0b3e0b6233f.jpeg', NULL, '2015-06-15 07:43:51', NULL, NULL),
(32, 41, 1, 2, 'ilGrF8ekobE', 'Rally Dakar 2015 Review', NULL, 0, 0, '53a66ec8e74fbb31ee9352379a6fd8556d.jpeg', NULL, '2015-06-15 07:44:18', NULL, NULL),
(33, 42, 1, 2, 'cKJWES4bZp0', 'Extreme Kuliner #1 Biawak tripang', NULL, 0, 0, '545832c7c02a81e9d7bf2b594798777ab5.jpeg', NULL, '2015-06-15 07:44:52', NULL, NULL),
(34, 43, 1, 2, 'ubZS7i34GIY', 'Beginner Chinese - Self Introduction (Part 1)', NULL, 0, 0, '55bd16475638c891fa290a445ede6cebfc.jpeg', NULL, '2015-06-15 07:45:15', NULL, NULL),
(35, 44, 1, 2, '8fOO8JK0VCU', 'Persiapan untuk presentasi dengan bahasa inggris', NULL, 0, 0, '56af606777eaa14d0435ae7a855f42cb50.jpeg', NULL, '2015-06-15 07:45:30', NULL, NULL),
(36, 45, 1, 2, 'EB-yaryKyMY', 'Cara memperbaiki penyokan bumper mobil | HD', NULL, 0, 0, '57a405a4733ceb7e9d9259d018d9096c3c.jpeg', NULL, '2015-06-15 07:45:49', NULL, NULL),
(37, 46, 1, 2, 'cTpR3N6gfMU', 'Cara membuat Kitchen set', NULL, 0, 0, '584cd1de55878a036dd33558e64df3d341.jpeg', NULL, '2015-06-15 07:46:07', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `edutainments_categories`
--

CREATE TABLE `edutainments_categories` (
`id` int(11) NOT NULL,
  `edutainment_id` int(11) NOT NULL,
  `edutainment_category_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `edutainments_categories`
--

INSERT INTO `edutainments_categories` (`id`, `edutainment_id`, `edutainment_category_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 2),
(4, 4, 3),
(5, 5, 1),
(6, 6, 1),
(7, 7, 2),
(8, 8, 2),
(9, 9, 2),
(10, 10, 4),
(11, 11, 4),
(12, 12, 1),
(13, 13, 1),
(14, 14, 4),
(15, 15, 2),
(16, 16, 2),
(17, 17, 2),
(18, 18, 2),
(19, 19, 2),
(20, 20, 2),
(21, 21, 2),
(22, 22, 2),
(23, 23, 1),
(24, 24, 2),
(25, 25, 2),
(26, 26, 2),
(27, 27, 2),
(28, 28, 2),
(29, 29, 2),
(30, 30, 2),
(31, 31, 2),
(32, 32, 2),
(33, 33, 1),
(34, 34, 2),
(35, 35, 2),
(36, 36, 2),
(37, 37, 2);

-- --------------------------------------------------------

--
-- Table structure for table `edutainment_categories`
--

CREATE TABLE `edutainment_categories` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `img_string` text
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `edutainment_categories`
--

INSERT INTO `edutainment_categories` (`id`, `name`, `img_string`) VALUES
(0, 'All', 'comedy'),
(1, 'Kuliner dan Wisata', 'cooking'),
(2, 'Belajar', 'academic'),
(3, 'Travelling', 'travel'),
(4, 'Selebriti', 'life-style');

-- --------------------------------------------------------

--
-- Table structure for table `edutainment_comments`
--

CREATE TABLE `edutainment_comments` (
`id` int(11) NOT NULL,
  `edutainment_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=236 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `edutainment_comments`
--

INSERT INTO `edutainment_comments` (`id`, `edutainment_id`, `member_id`, `description`, `created_at`, `updated_at`, `status_id`) VALUES
(1, 1, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. Pellentesque vehicula vitae enim vel aliquam. Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(2, 2, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(3, 3, 2, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(4, 4, 0, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(5, 5, 1, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(6, 6, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(7, 7, 0, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(8, 8, 1, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(9, 9, 2, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(10, 10, 0, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(11, 11, 1, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(12, 12, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(13, 13, 0, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(14, 14, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. Pellentesque vehicula vitae enim vel aliquam. Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(15, 15, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(16, 16, 0, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(17, 17, 1, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(18, 18, 2, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(19, 19, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(20, 20, 1, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(21, 21, 2, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(22, 22, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. Pellentesque vehicula vitae enim vel aliquam. Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(23, 23, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(24, 24, 2, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(25, 25, 0, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(26, 26, 1, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(27, 27, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(28, 28, 0, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(29, 29, 1, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(30, 30, 2, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(31, 31, 0, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(32, 32, 1, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(33, 33, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(34, 34, 0, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(35, 35, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. Pellentesque vehicula vitae enim vel aliquam. Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(36, 36, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(37, 37, 0, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(38, 1, 1, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(39, 2, 2, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(40, 3, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(41, 4, 1, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(42, 5, 2, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(43, 6, 0, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(44, 7, 1, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(45, 8, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(46, 9, 0, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(47, 10, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. Pellentesque vehicula vitae enim vel aliquam. Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(48, 11, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(49, 12, 0, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(50, 13, 1, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(51, 14, 2, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(52, 15, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(53, 16, 1, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(54, 17, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(55, 18, 0, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(56, 19, 1, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(57, 20, 2, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(58, 21, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(59, 22, 1, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(60, 23, 2, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(61, 24, 0, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(62, 25, 1, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(63, 26, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(64, 27, 0, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(65, 28, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. Pellentesque vehicula vitae enim vel aliquam. Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(66, 29, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(67, 30, 0, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(68, 31, 1, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(69, 32, 2, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(70, 33, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(71, 34, 1, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(72, 35, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. Pellentesque vehicula vitae enim vel aliquam. Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(73, 36, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(74, 37, 1, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(75, 1, 2, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(76, 2, 0, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(77, 3, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(78, 4, 2, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(79, 5, 0, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(80, 6, 1, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(81, 7, 2, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(82, 8, 0, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(83, 9, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(84, 10, 2, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(85, 11, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. Pellentesque vehicula vitae enim vel aliquam. Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(86, 12, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(87, 13, 2, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(88, 14, 0, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(89, 15, 1, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(90, 16, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(91, 17, 0, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(92, 18, 1, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(93, 19, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. Pellentesque vehicula vitae enim vel aliquam. Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(94, 20, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(95, 21, 1, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(96, 22, 2, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(97, 23, 0, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(98, 24, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(99, 25, 2, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(100, 26, 0, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(101, 27, 1, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(102, 28, 2, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(103, 29, 0, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(104, 30, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(105, 31, 2, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(106, 32, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. Pellentesque vehicula vitae enim vel aliquam. Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(107, 33, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(108, 34, 2, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(109, 35, 0, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(110, 36, 1, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(111, 37, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(112, 1, 0, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(113, 2, 1, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(114, 3, 2, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(115, 4, 0, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(116, 5, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(117, 6, 2, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(118, 7, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. Pellentesque vehicula vitae enim vel aliquam. Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(119, 8, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(120, 9, 2, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(121, 10, 0, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(122, 11, 1, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(123, 12, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(124, 13, 0, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(125, 14, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(126, 15, 2, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(127, 16, 0, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(128, 17, 1, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(129, 18, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(130, 19, 0, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(131, 20, 1, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(132, 21, 2, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(133, 22, 0, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(134, 23, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(135, 24, 2, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(136, 25, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. Pellentesque vehicula vitae enim vel aliquam. Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(137, 26, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(138, 27, 2, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(139, 28, 0, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(140, 29, 1, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(141, 30, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(142, 31, 0, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(143, 32, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. Pellentesque vehicula vitae enim vel aliquam. Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(144, 33, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(145, 34, 0, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(146, 35, 1, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(147, 36, 2, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(148, 37, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(149, 1, 1, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(150, 2, 2, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(151, 3, 0, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(152, 4, 1, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(153, 5, 2, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(154, 6, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(155, 7, 1, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(156, 8, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. Pellentesque vehicula vitae enim vel aliquam. Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(157, 9, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(158, 10, 1, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(159, 11, 2, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(160, 12, 0, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(161, 13, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(162, 14, 2, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(163, 15, 0, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(164, 16, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. Pellentesque vehicula vitae enim vel aliquam. Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(165, 17, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(166, 18, 0, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(167, 19, 1, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(168, 20, 2, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(169, 21, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(170, 22, 1, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(171, 23, 2, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(172, 24, 0, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(173, 25, 1, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(174, 26, 2, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(175, 27, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(176, 28, 1, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(177, 29, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. Pellentesque vehicula vitae enim vel aliquam. Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(178, 30, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(179, 31, 1, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(180, 32, 2, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(181, 33, 0, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(182, 34, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(183, 35, 2, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(184, 36, 0, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(185, 37, 1, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(186, 1, 2, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(187, 2, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(188, 3, 1, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(189, 4, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. Pellentesque vehicula vitae enim vel aliquam. Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(190, 5, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(191, 6, 1, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(192, 7, 2, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(193, 8, 0, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(194, 9, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(195, 10, 2, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(196, 11, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(197, 12, 1, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(198, 13, 2, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(199, 14, 0, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(200, 15, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(201, 16, 2, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(202, 17, 0, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(203, 18, 1, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(204, 19, 2, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(205, 20, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(206, 21, 1, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(207, 22, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. Pellentesque vehicula vitae enim vel aliquam. Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(208, 23, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(209, 24, 1, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(210, 25, 2, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(211, 26, 0, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(212, 27, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(213, 28, 2, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(214, 29, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. Pellentesque vehicula vitae enim vel aliquam. Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(215, 30, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(216, 31, 2, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL);
INSERT INTO `edutainment_comments` (`id`, `edutainment_id`, `member_id`, `description`, `created_at`, `updated_at`, `status_id`) VALUES
(217, 32, 0, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(218, 33, 1, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(219, 34, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(220, 35, 0, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(221, 36, 1, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(222, 37, 2, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(223, 1, 1, '123', '2015-07-01 13:06:11', NULL, NULL),
(224, 1, 1, '123', '2015-07-01 13:06:11', NULL, NULL),
(225, 1, 1, '123', '2015-07-01 13:06:11', NULL, NULL),
(226, 1, 1, '123', '2015-07-01 13:06:11', NULL, NULL),
(227, 1, 1, '123', '2015-07-01 13:06:11', NULL, NULL),
(228, 1, 1, '123', '2015-07-01 13:06:11', NULL, NULL),
(229, 1, 1, '123', '2015-07-01 13:06:11', NULL, NULL),
(230, 1, 1, '123', '2015-07-01 13:06:11', NULL, NULL),
(231, 1, 1, '123', '2015-07-01 13:06:11', NULL, NULL),
(232, 1, 1, '123', '2015-07-01 13:06:11', NULL, NULL),
(233, 1, 1, '123', '2015-07-01 13:06:11', NULL, NULL),
(234, 1, 1, '123', '2015-07-08 16:43:56', NULL, NULL),
(235, 1, 1, '123', '2015-07-22 16:09:16', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `edutainment_likes`
--

CREATE TABLE `edutainment_likes` (
`id` int(11) NOT NULL,
  `edutainment_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `edutainment_likes`
--

INSERT INTO `edutainment_likes` (`id`, `edutainment_id`, `member_id`) VALUES
(3, 1, 0),
(4, 2, 1),
(5, 3, 2),
(6, 4, 0),
(7, 5, 1),
(8, 6, 2),
(9, 7, 0),
(10, 8, 1),
(11, 9, 2),
(12, 10, 0),
(13, 11, 1),
(14, 12, 2),
(15, 13, 0),
(16, 14, 1),
(17, 15, 2),
(18, 16, 0),
(19, 17, 1),
(20, 18, 2),
(21, 19, 0),
(22, 20, 1),
(23, 21, 2),
(24, 22, 0),
(25, 23, 1),
(26, 24, 2),
(27, 25, 0),
(28, 26, 1),
(29, 27, 2),
(30, 28, 0),
(31, 29, 1),
(32, 30, 2),
(33, 31, 0),
(34, 32, 1),
(35, 33, 2),
(36, 34, 0),
(37, 35, 1),
(38, 36, 2),
(39, 37, 0),
(41, 2, 2),
(42, 3, 0),
(43, 4, 1),
(44, 5, 2),
(45, 6, 0),
(46, 7, 1),
(47, 8, 2),
(48, 9, 0),
(49, 10, 1),
(50, 11, 2),
(51, 12, 0),
(52, 13, 1),
(53, 14, 2),
(54, 15, 0),
(55, 16, 1),
(56, 17, 2),
(57, 18, 0),
(58, 19, 1),
(59, 20, 2),
(60, 21, 0),
(61, 22, 1),
(62, 23, 2),
(63, 24, 0),
(64, 25, 1),
(65, 26, 2),
(66, 27, 0),
(67, 28, 1),
(68, 29, 2),
(69, 30, 0),
(70, 31, 1),
(71, 32, 2),
(72, 33, 0),
(73, 34, 1),
(74, 35, 2),
(75, 36, 0),
(76, 37, 1);

-- --------------------------------------------------------

--
-- Table structure for table `edutainment_plays`
--

CREATE TABLE `edutainment_plays` (
`id` int(11) NOT NULL,
  `edutainment_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `device_id` int(11) DEFAULT NULL,
  `device_name` varchar(255) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `edutainment_plays`
--

INSERT INTO `edutainment_plays` (`id`, `edutainment_id`, `member_id`, `device_id`, `device_name`, `ip_address`, `created_at`, `updated_at`, `status_id`) VALUES
(1, 1, 0, 1, 'Nexus 7', '214.289.123.321', '2015-06-18 04:43:10', NULL, NULL),
(2, 4, 2, 2, 'Iphone 4', '214.289.123.322', '2015-06-18 04:43:10', NULL, NULL),
(3, 7, 2, 1, 'Samsung S4', '214.289.123.323', '2015-06-18 04:43:10', NULL, NULL),
(4, 10, 1, 2, 'Iphone 5', '214.289.123.324', '2015-06-18 04:43:10', NULL, NULL),
(5, 13, 0, 1, 'Lg G3', '214.289.123.325', '2015-06-18 04:43:10', NULL, NULL),
(6, 16, 2, 2, 'Iphone 5S', '214.289.123.326', '2015-06-18 04:43:10', NULL, NULL),
(7, 19, 2, 1, 'Nexus 7', '214.289.123.327', '2015-06-18 04:43:10', NULL, NULL),
(8, 22, 1, 2, 'Iphone 4', '214.289.123.328', '2015-06-18 04:43:10', NULL, NULL),
(9, 25, 0, 1, 'Samsung S4', '214.289.123.329', '2015-06-18 04:43:10', NULL, NULL),
(10, 28, 2, 2, 'Iphone 5', '214.289.123.330', '2015-06-18 04:43:10', NULL, NULL),
(11, 31, 2, 1, 'Lg G3', '214.289.123.331', '2015-06-18 04:43:10', NULL, NULL),
(12, 34, 1, 2, 'Iphone 5S', '214.289.123.332', '2015-06-18 04:43:10', NULL, NULL),
(13, 2, 0, 1, 'Nexus 7', '214.289.123.333', '2015-06-18 04:43:10', NULL, NULL),
(14, 5, 2, 2, 'Iphone 4', '214.289.123.334', '2015-06-18 04:43:10', NULL, NULL),
(15, 8, 2, 1, 'Samsung S4', '214.289.123.335', '2015-06-18 04:43:10', NULL, NULL),
(16, 11, 1, 2, 'Iphone 5', '214.289.123.336', '2015-06-18 04:43:10', NULL, NULL),
(17, 14, 0, 1, 'Lg G3', '214.289.123.337', '2015-06-18 04:43:10', NULL, NULL),
(18, 17, 2, 2, 'Iphone 5S', '214.289.123.338', '2015-06-18 04:43:10', NULL, NULL),
(19, 20, 2, 1, 'Nexus 7', '214.289.123.339', '2015-06-18 04:43:10', NULL, NULL),
(20, 23, 1, 2, 'Iphone 4', '214.289.123.321', '2015-06-18 04:43:10', NULL, NULL),
(21, 26, 1, 1, 'Samsung S4', '214.289.123.322', '2015-06-18 04:43:10', NULL, NULL),
(22, 1, 0, 2, 'Iphone 5', '214.289.123.323', '2015-06-18 04:43:10', NULL, NULL),
(23, 4, 2, 1, 'Lg G3', '214.289.123.324', '2015-06-18 04:43:10', NULL, NULL),
(24, 7, 2, 2, 'Iphone 5S', '214.289.123.325', '2015-06-18 04:43:10', NULL, NULL),
(25, 1, 1, 1, 'Nexus 7', '214.289.123.326', '2015-06-18 04:43:10', NULL, NULL),
(26, 4, 0, 2, 'Iphone 4', '214.289.123.327', '2015-06-18 04:43:10', NULL, NULL),
(27, 7, 2, 1, 'Samsung S4', '214.289.123.328', '2015-06-18 04:43:10', NULL, NULL),
(28, 10, 2, 2, 'Iphone 5', '214.289.123.329', '2015-06-18 04:43:10', NULL, NULL),
(29, 2, 1, 1, 'Lg G3', '214.289.123.330', '2015-06-18 04:43:10', NULL, NULL),
(30, 5, 0, 2, 'Iphone 5S', '214.289.123.331', '2015-06-18 04:43:10', NULL, NULL),
(31, 8, 2, 1, 'Nexus 7', '214.289.123.332', '2015-06-18 04:43:10', NULL, NULL),
(32, 11, 2, 2, 'Iphone 4', '214.289.123.333', '2015-06-18 04:43:10', NULL, NULL),
(33, 14, 1, 1, 'Samsung S4', '214.289.123.334', '2015-06-18 04:43:10', NULL, NULL),
(34, 17, 0, 2, 'Iphone 5', '214.289.123.335', '2015-06-18 04:43:10', NULL, NULL),
(35, 20, 2, 1, 'Lg G3', '214.289.123.336', '2015-06-18 04:43:10', NULL, NULL),
(36, 23, 2, 2, 'Iphone 5S', '214.289.123.337', '2015-06-18 04:43:10', NULL, NULL),
(37, 1, 1, 1, 'Nexus 7', '214.289.123.338', '2015-06-18 04:43:10', NULL, NULL),
(38, 4, 0, 2, 'Iphone 4', '214.289.123.339', '2015-06-18 04:43:10', NULL, NULL),
(39, 7, 2, 1, 'Samsung S4', '214.289.123.359', '2015-06-18 04:43:10', NULL, NULL),
(40, 10, 2, 2, 'Iphone 5', '214.289.123.360', '2015-06-18 04:43:10', NULL, NULL),
(41, 13, 1, 1, 'Lg G3', '214.289.123.361', '2015-06-18 04:43:10', NULL, NULL),
(42, 16, 1, 2, 'Iphone 5S', '214.289.123.362', '2015-06-18 04:43:10', NULL, NULL),
(43, 1, 1, 0, '0', '0', '2015-07-04 17:41:16', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `edutainment_prices`
--

CREATE TABLE `edutainment_prices` (
`id` int(11) NOT NULL,
  `edutainment_id` int(11) NOT NULL,
  `expiry_days` int(11) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `edutainment_prices`
--

INSERT INTO `edutainment_prices` (`id`, `edutainment_id`, `expiry_days`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 50, '2015-06-25 03:44:04', NULL),
(2, 1, 5, 100, '2015-06-25 03:44:04', NULL),
(3, 5, 1, 20, '2015-07-26 12:33:13', NULL),
(4, 2, NULL, 0, '2015-07-26 12:41:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
`id` int(11) NOT NULL,
  `video_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `url_type_id` int(11) NOT NULL,
  `video_url` text NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text,
  `play_count` int(11) NOT NULL,
  `view_count` int(11) NOT NULL,
  `start_at` timestamp NULL DEFAULT NULL,
  `end_at` timestamp NULL DEFAULT NULL,
  `image_url` text,
  `last_update_by_member_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `video_id`, `member_id`, `url_type_id`, `video_url`, `title`, `description`, `play_count`, `view_count`, `start_at`, `end_at`, `image_url`, `last_update_by_member_id`, `created_at`, `updated_at`, `status_id`) VALUES
(1, 65, 1, 2, 'QZbeNV4zBXs', 'Detik-Detik PROKLAMASI & Upacara Pengibaran Bendera Merah Putih 17 Agustus 2014 ', NULL, 2, 7, '2015-07-31 17:00:00', NULL, '', 0, '2015-08-09 16:52:55', NULL, NULL),
(2, 66, 1, 2, 'QbEqZDfxeFQ', 'TIffany Rolling in the Deep, live concert 2012', NULL, 0, 0, '2015-08-01 17:00:00', NULL, '', 0, '2015-08-09 16:52:55', NULL, NULL),
(3, 67, 1, 2, 'qmbwKTbKKDY', 'Ijab Kabul Raffi Ahmad dan Nagita Slavina', NULL, 0, 0, '2015-08-02 17:00:00', NULL, '', 0, '2015-08-09 16:52:55', NULL, NULL),
(4, 68, 1, 2, '-CL-q1bCvvo', 'Magnum Raisa Konser on TransTv', NULL, 0, 0, '2015-08-05 17:00:00', NULL, '', 0, '2015-08-09 16:52:55', NULL, NULL),
(5, 69, 1, 2, 'gC2jxQBP7yE', 'NOAH - Konser Tanpa Batas (LIVE & EXCLUSIVE) ', NULL, 0, 0, '2015-08-11 17:00:00', NULL, '', 0, '2015-08-09 16:52:55', NULL, NULL),
(6, 70, 1, 2, 'oEnBwXFDRzg', 'FULL KONSER SURABAYA IWAN FALS SUARA UNTUK NEGERI (07 JUNI 2014) ', NULL, 0, 0, '2015-08-04 17:00:00', NULL, '', 0, '2015-08-09 16:52:55', NULL, NULL),
(7, 71, 1, 2, '1PJBM_jHO7c', 'Mongol - Stand Up Comedy Indonesia', NULL, 0, 0, '2016-12-16 17:00:00', NULL, '', 0, '2015-08-09 16:52:55', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `events_categories`
--

CREATE TABLE `events_categories` (
`id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `event_category_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events_categories`
--

INSERT INTO `events_categories` (`id`, `event_id`, `event_category_id`) VALUES
(1, 1, 2),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `event_categories`
--

CREATE TABLE `event_categories` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `img_url` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event_categories`
--

INSERT INTO `event_categories` (`id`, `name`, `img_url`) VALUES
(0, 'all', 'comedy'),
(1, 'Entertainment', 'comedy'),
(2, 'Independence Day', 'comedy');

-- --------------------------------------------------------

--
-- Table structure for table `event_comments`
--

CREATE TABLE `event_comments` (
`id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=237 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event_comments`
--

INSERT INTO `event_comments` (`id`, `event_id`, `member_id`, `description`, `created_at`, `updated_at`, `status_id`) VALUES
(1, 1, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. Pellentesque vehicula vitae enim vel aliquam. Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(2, 2, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(3, 3, 2, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(4, 4, 0, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(5, 5, 1, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(6, 6, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(7, 7, 0, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(8, 8, 1, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(9, 9, 2, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(10, 10, 0, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(11, 11, 1, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(12, 12, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(13, 13, 0, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(14, 14, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. Pellentesque vehicula vitae enim vel aliquam. Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(15, 15, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(16, 16, 0, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(17, 17, 1, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(18, 18, 2, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(19, 19, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(20, 20, 1, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(21, 21, 2, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(22, 22, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. Pellentesque vehicula vitae enim vel aliquam. Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(23, 23, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(24, 24, 2, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(25, 25, 0, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(26, 26, 1, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(27, 27, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(28, 28, 0, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(29, 29, 1, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(30, 30, 2, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(31, 31, 0, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(32, 32, 1, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(33, 33, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(34, 34, 0, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(35, 35, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. Pellentesque vehicula vitae enim vel aliquam. Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(36, 36, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(37, 37, 0, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(38, 1, 1, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(39, 2, 2, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(40, 3, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(41, 4, 1, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(42, 5, 2, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(43, 6, 0, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(44, 7, 1, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(45, 8, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(46, 9, 0, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(47, 10, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. Pellentesque vehicula vitae enim vel aliquam. Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(48, 11, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(49, 12, 0, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(50, 13, 1, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(51, 14, 2, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(52, 15, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(53, 16, 1, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(54, 17, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(55, 18, 0, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(56, 19, 1, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(57, 20, 2, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(58, 21, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(59, 22, 1, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(60, 23, 2, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(61, 24, 0, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(62, 25, 1, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(63, 26, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(64, 27, 0, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(65, 28, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. Pellentesque vehicula vitae enim vel aliquam. Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(66, 29, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(67, 30, 0, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(68, 31, 1, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(69, 32, 2, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(70, 33, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(71, 34, 1, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(72, 35, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. Pellentesque vehicula vitae enim vel aliquam. Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(73, 36, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(74, 37, 1, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(75, 1, 2, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(76, 2, 0, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(77, 3, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(78, 4, 2, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(79, 5, 0, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(80, 6, 1, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(81, 7, 2, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(82, 8, 0, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(83, 9, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(84, 10, 2, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(85, 11, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. Pellentesque vehicula vitae enim vel aliquam. Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(86, 12, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(87, 13, 2, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(88, 14, 0, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(89, 15, 1, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(90, 16, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(91, 17, 0, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(92, 18, 1, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(93, 19, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. Pellentesque vehicula vitae enim vel aliquam. Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(94, 20, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(95, 21, 1, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(96, 22, 2, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(97, 23, 0, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(98, 24, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(99, 25, 2, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(100, 26, 0, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(101, 27, 1, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(102, 28, 2, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(103, 29, 0, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(104, 30, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(105, 31, 2, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(106, 32, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. Pellentesque vehicula vitae enim vel aliquam. Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(107, 33, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(108, 34, 2, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(109, 35, 0, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(110, 36, 1, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(111, 37, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(112, 1, 0, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(113, 2, 1, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(114, 3, 2, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(115, 4, 0, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(116, 5, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(117, 6, 2, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(118, 7, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. Pellentesque vehicula vitae enim vel aliquam. Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(119, 8, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(120, 9, 2, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(121, 10, 0, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(122, 11, 1, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(123, 12, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(124, 13, 0, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(125, 14, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(126, 15, 2, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(127, 16, 0, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(128, 17, 1, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(129, 18, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(130, 19, 0, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(131, 20, 1, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(132, 21, 2, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(133, 22, 0, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(134, 23, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(135, 24, 2, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(136, 25, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. Pellentesque vehicula vitae enim vel aliquam. Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(137, 26, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(138, 27, 2, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(139, 28, 0, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(140, 29, 1, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(141, 30, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(142, 31, 0, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(143, 32, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. Pellentesque vehicula vitae enim vel aliquam. Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(144, 33, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(145, 34, 0, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(146, 35, 1, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(147, 36, 2, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(148, 37, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(149, 1, 1, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(150, 2, 2, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(151, 3, 0, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(152, 4, 1, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(153, 5, 2, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(154, 6, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(155, 7, 1, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(156, 8, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. Pellentesque vehicula vitae enim vel aliquam. Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(157, 9, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(158, 10, 1, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(159, 11, 2, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(160, 12, 0, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(161, 13, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(162, 14, 2, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(163, 15, 0, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(164, 16, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. Pellentesque vehicula vitae enim vel aliquam. Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(165, 17, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(166, 18, 0, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(167, 19, 1, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(168, 20, 2, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(169, 21, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(170, 22, 1, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(171, 23, 2, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(172, 24, 0, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(173, 25, 1, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(174, 26, 2, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(175, 27, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(176, 28, 1, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(177, 29, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. Pellentesque vehicula vitae enim vel aliquam. Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(178, 30, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(179, 31, 1, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(180, 32, 2, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(181, 33, 0, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(182, 34, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(183, 35, 2, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(184, 36, 0, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(185, 37, 1, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(186, 1, 2, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(187, 2, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(188, 3, 1, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(189, 4, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. Pellentesque vehicula vitae enim vel aliquam. Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(190, 5, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(191, 6, 1, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(192, 7, 2, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(193, 8, 0, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(194, 9, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(195, 10, 2, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(196, 11, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(197, 12, 1, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(198, 13, 2, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(199, 14, 0, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(200, 15, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(201, 16, 2, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(202, 17, 0, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(203, 18, 1, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(204, 19, 2, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(205, 20, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(206, 21, 1, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(207, 22, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. Pellentesque vehicula vitae enim vel aliquam. Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(208, 23, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(209, 24, 1, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(210, 25, 2, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(211, 26, 0, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(212, 27, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(213, 28, 2, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(214, 29, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. Pellentesque vehicula vitae enim vel aliquam. Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(215, 30, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(216, 31, 2, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(217, 32, 0, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL);
INSERT INTO `event_comments` (`id`, `event_id`, `member_id`, `description`, `created_at`, `updated_at`, `status_id`) VALUES
(218, 33, 1, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(219, 34, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(220, 35, 0, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(221, 36, 1, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(222, 37, 2, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(223, 1, 1, '123', '2015-07-01 13:06:11', NULL, NULL),
(224, 1, 1, '123', '2015-07-01 13:06:11', NULL, NULL),
(225, 1, 1, '123', '2015-07-01 13:06:11', NULL, NULL),
(226, 1, 1, '123', '2015-07-01 13:06:11', NULL, NULL),
(227, 1, 1, '123', '2015-07-01 13:06:11', NULL, NULL),
(228, 1, 1, '123', '2015-07-01 13:06:11', NULL, NULL),
(229, 1, 1, '123', '2015-07-01 13:06:11', NULL, NULL),
(230, 1, 1, '123', '2015-07-01 13:06:11', NULL, NULL),
(231, 1, 1, '123', '2015-07-01 13:06:11', NULL, NULL),
(232, 1, 1, '123', '2015-07-01 13:06:11', NULL, NULL),
(233, 1, 1, '123', '2015-07-01 13:06:11', NULL, NULL),
(234, 1, 1, '123', '2015-07-08 16:43:56', NULL, NULL),
(235, 1, 1, '123', '2015-07-22 16:09:16', NULL, NULL),
(236, 1, 1, '123', '2015-08-09 17:09:07', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `event_likes`
--

CREATE TABLE `event_likes` (
`id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event_likes`
--

INSERT INTO `event_likes` (`id`, `event_id`, `member_id`) VALUES
(1, 3, 1),
(2, 6, 2),
(3, 1, 1),
(7, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `event_plays`
--

CREATE TABLE `event_plays` (
`id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `device_id` int(11) DEFAULT NULL,
  `device_name` varchar(255) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event_plays`
--

INSERT INTO `event_plays` (`id`, `event_id`, `member_id`, `device_id`, `device_name`, `ip_address`, `created_at`, `updated_at`, `status_id`) VALUES
(1, 1, 0, 1, 'Nexus 7', '214.289.123.321', '2015-06-18 04:43:10', NULL, NULL),
(2, 4, 2, 2, 'Iphone 4', '214.289.123.322', '2015-06-18 04:43:10', NULL, NULL),
(3, 7, 2, 1, 'Samsung S4', '214.289.123.323', '2015-06-18 04:43:10', NULL, NULL),
(4, 10, 1, 2, 'Iphone 5', '214.289.123.324', '2015-06-18 04:43:10', NULL, NULL),
(5, 13, 0, 1, 'Lg G3', '214.289.123.325', '2015-06-18 04:43:10', NULL, NULL),
(6, 16, 2, 2, 'Iphone 5S', '214.289.123.326', '2015-06-18 04:43:10', NULL, NULL),
(7, 19, 2, 1, 'Nexus 7', '214.289.123.327', '2015-06-18 04:43:10', NULL, NULL),
(8, 22, 1, 2, 'Iphone 4', '214.289.123.328', '2015-06-18 04:43:10', NULL, NULL),
(9, 25, 0, 1, 'Samsung S4', '214.289.123.329', '2015-06-18 04:43:10', NULL, NULL),
(10, 28, 2, 2, 'Iphone 5', '214.289.123.330', '2015-06-18 04:43:10', NULL, NULL),
(11, 31, 2, 1, 'Lg G3', '214.289.123.331', '2015-06-18 04:43:10', NULL, NULL),
(12, 34, 1, 2, 'Iphone 5S', '214.289.123.332', '2015-06-18 04:43:10', NULL, NULL),
(13, 2, 0, 1, 'Nexus 7', '214.289.123.333', '2015-06-18 04:43:10', NULL, NULL),
(14, 5, 2, 2, 'Iphone 4', '214.289.123.334', '2015-06-18 04:43:10', NULL, NULL),
(15, 8, 2, 1, 'Samsung S4', '214.289.123.335', '2015-06-18 04:43:10', NULL, NULL),
(16, 11, 1, 2, 'Iphone 5', '214.289.123.336', '2015-06-18 04:43:10', NULL, NULL),
(17, 14, 0, 1, 'Lg G3', '214.289.123.337', '2015-06-18 04:43:10', NULL, NULL),
(18, 17, 2, 2, 'Iphone 5S', '214.289.123.338', '2015-06-18 04:43:10', NULL, NULL),
(19, 20, 2, 1, 'Nexus 7', '214.289.123.339', '2015-06-18 04:43:10', NULL, NULL),
(20, 23, 1, 2, 'Iphone 4', '214.289.123.321', '2015-06-18 04:43:10', NULL, NULL),
(21, 26, 1, 1, 'Samsung S4', '214.289.123.322', '2015-06-18 04:43:10', NULL, NULL),
(22, 1, 0, 2, 'Iphone 5', '214.289.123.323', '2015-06-18 04:43:10', NULL, NULL),
(23, 4, 2, 1, 'Lg G3', '214.289.123.324', '2015-06-18 04:43:10', NULL, NULL),
(24, 7, 2, 2, 'Iphone 5S', '214.289.123.325', '2015-06-18 04:43:10', NULL, NULL),
(25, 1, 1, 1, 'Nexus 7', '214.289.123.326', '2015-06-18 04:43:10', NULL, NULL),
(26, 4, 0, 2, 'Iphone 4', '214.289.123.327', '2015-06-18 04:43:10', NULL, NULL),
(27, 7, 2, 1, 'Samsung S4', '214.289.123.328', '2015-06-18 04:43:10', NULL, NULL),
(28, 10, 2, 2, 'Iphone 5', '214.289.123.329', '2015-06-18 04:43:10', NULL, NULL),
(29, 2, 1, 1, 'Lg G3', '214.289.123.330', '2015-06-18 04:43:10', NULL, NULL),
(30, 5, 0, 2, 'Iphone 5S', '214.289.123.331', '2015-06-18 04:43:10', NULL, NULL),
(31, 8, 2, 1, 'Nexus 7', '214.289.123.332', '2015-06-18 04:43:10', NULL, NULL),
(32, 11, 2, 2, 'Iphone 4', '214.289.123.333', '2015-06-18 04:43:10', NULL, NULL),
(33, 14, 1, 1, 'Samsung S4', '214.289.123.334', '2015-06-18 04:43:10', NULL, NULL),
(34, 17, 0, 2, 'Iphone 5', '214.289.123.335', '2015-06-18 04:43:10', NULL, NULL),
(35, 20, 2, 1, 'Lg G3', '214.289.123.336', '2015-06-18 04:43:10', NULL, NULL),
(36, 23, 2, 2, 'Iphone 5S', '214.289.123.337', '2015-06-18 04:43:10', NULL, NULL),
(37, 1, 1, 1, 'Nexus 7', '214.289.123.338', '2015-06-18 04:43:10', NULL, NULL),
(38, 4, 0, 2, 'Iphone 4', '214.289.123.339', '2015-06-18 04:43:10', NULL, NULL),
(39, 7, 2, 1, 'Samsung S4', '214.289.123.359', '2015-06-18 04:43:10', NULL, NULL),
(40, 10, 2, 2, 'Iphone 5', '214.289.123.360', '2015-06-18 04:43:10', NULL, NULL),
(41, 13, 1, 1, 'Lg G3', '214.289.123.361', '2015-06-18 04:43:10', NULL, NULL),
(42, 16, 1, 2, 'Iphone 5S', '214.289.123.362', '2015-06-18 04:43:10', NULL, NULL),
(43, 1, 1, 0, '0', '0', '2015-07-04 17:41:16', NULL, NULL),
(44, 1, 1, 0, '0', '0', '2015-08-09 17:12:56', NULL, NULL),
(45, 1, 1, 0, '0', '0', '2015-08-10 09:21:32', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `event_prices`
--

CREATE TABLE `event_prices` (
`id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `expiry_days` int(11) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event_prices`
--

INSERT INTO `event_prices` (`id`, `event_id`, `expiry_days`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 50, '2015-06-25 03:44:04', NULL),
(2, 1, 5, 100, '2015-06-25 03:44:04', NULL),
(3, 5, 1, 20, '2015-07-26 12:33:13', NULL),
(4, 2, NULL, 0, '2015-07-26 12:41:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `live_channels`
--

CREATE TABLE `live_channels` (
`id` int(11) NOT NULL,
  `video_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `url_type_id` int(11) NOT NULL,
  `video_url` text,
  `title` varchar(255) NOT NULL,
  `description` text,
  `play_count` int(11) NOT NULL,
  `view_count` int(11) NOT NULL,
  `image_url` text,
  `last_update_by_member_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `live_channels`
--

INSERT INTO `live_channels` (`id`, `video_id`, `member_id`, `url_type_id`, `video_url`, `title`, `description`, `play_count`, `view_count`, `image_url`, `last_update_by_member_id`, `created_at`, `updated_at`, `status_id`) VALUES
(1, 64, 1, 3, 'http://hls.d-awanstream.com/rtv-live/rtv-abr/playlist.m3u8', 'RTV', NULL, 0, 15, '67cafa5c12aefc3d9921153f77cb6ea950.png', NULL, '2015-08-09 09:07:56', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `live_channels_categories`
--

CREATE TABLE `live_channels_categories` (
`id` int(11) NOT NULL,
  `live_channel_id` int(11) NOT NULL,
  `live_channel_category_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `live_channels_categories`
--

INSERT INTO `live_channels_categories` (`id`, `live_channel_id`, `live_channel_category_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `live_channel_categories`
--

CREATE TABLE `live_channel_categories` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `img_string` text
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `live_channel_categories`
--

INSERT INTO `live_channel_categories` (`id`, `name`, `img_string`) VALUES
(0, 'All', 'comedy'),
(1, 'Free On Air', 'cooking');

-- --------------------------------------------------------

--
-- Table structure for table `live_channel_comments`
--

CREATE TABLE `live_channel_comments` (
`id` int(11) NOT NULL,
  `live_channel_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=236 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `live_channel_comments`
--

INSERT INTO `live_channel_comments` (`id`, `live_channel_id`, `member_id`, `description`, `created_at`, `updated_at`, `status_id`) VALUES
(1, 1, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. Pellentesque vehicula vitae enim vel aliquam. Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(38, 1, 1, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(75, 1, 2, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(112, 1, 0, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(149, 1, 1, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(186, 1, 2, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(223, 1, 1, '123', '2015-07-01 13:06:11', NULL, NULL),
(224, 1, 1, '123', '2015-07-01 13:06:11', NULL, NULL),
(225, 1, 1, '123', '2015-07-01 13:06:11', NULL, NULL),
(226, 1, 1, '123', '2015-07-01 13:06:11', NULL, NULL),
(227, 1, 1, '123', '2015-07-01 13:06:11', NULL, NULL),
(228, 1, 1, '123', '2015-07-01 13:06:11', NULL, NULL),
(229, 1, 1, '123', '2015-07-01 13:06:11', NULL, NULL),
(230, 1, 1, '123', '2015-07-01 13:06:11', NULL, NULL),
(231, 1, 1, '123', '2015-07-01 13:06:11', NULL, NULL),
(232, 1, 1, '123', '2015-07-01 13:06:11', NULL, NULL),
(233, 1, 1, '123', '2015-07-01 13:06:11', NULL, NULL),
(234, 1, 1, '123', '2015-07-08 16:43:56', NULL, NULL),
(235, 1, 1, '123', '2015-07-22 16:09:16', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `live_channel_likes`
--

CREATE TABLE `live_channel_likes` (
`id` int(11) NOT NULL,
  `live_channel_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `live_channel_likes`
--

INSERT INTO `live_channel_likes` (`id`, `live_channel_id`, `member_id`) VALUES
(3, 1, 0),
(77, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `live_channel_plays`
--

CREATE TABLE `live_channel_plays` (
`id` int(11) NOT NULL,
  `live_channel_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `device_id` int(11) DEFAULT NULL,
  `device_name` varchar(255) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `live_channel_plays`
--

INSERT INTO `live_channel_plays` (`id`, `live_channel_id`, `member_id`, `device_id`, `device_name`, `ip_address`, `created_at`, `updated_at`, `status_id`) VALUES
(1, 1, 1, NULL, NULL, NULL, '2015-08-10 07:58:22', NULL, NULL),
(2, 1, 2, NULL, NULL, NULL, '2015-08-10 07:58:39', NULL, NULL),
(3, 1, 2, NULL, NULL, NULL, '2015-08-10 07:58:39', NULL, NULL),
(4, 1, 1, NULL, NULL, NULL, '2015-08-10 07:58:48', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `live_channel_prices`
--

CREATE TABLE `live_channel_prices` (
`id` int(11) NOT NULL,
  `live_channel_id` int(11) NOT NULL,
  `expiry_days` int(11) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
`id` int(11) NOT NULL,
  `member_level_id` int(11) NOT NULL,
  `password` text,
  `allega_id` int(11) NOT NULL,
  `fb_id` text,
  `unique_id` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `image_url` text,
  `total_points` double NOT NULL,
  `auth_token` varchar(255) DEFAULT NULL,
  `last_login_at` timestamp NULL DEFAULT NULL,
  `is_email_validated` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `member_level_id`, `password`, `allega_id`, `fb_id`, `unique_id`, `username`, `email`, `full_name`, `birthday`, `image_url`, `total_points`, `auth_token`, `last_login_at`, `is_email_validated`, `created_at`, `updated_at`) VALUES
(0, 1, '297c49d1f3c4c0d3a2cadbec294c97fc20edc42ca1f03bda3ecaf6cb61a4b786cf', 1, NULL, '1', 'admin', 'admin@allega.com', NULL, NULL, NULL, 0, NULL, NULL, 1, '2015-06-06 15:01:37', NULL),
(1, 2, '30136033d2022b5e0d0b5578513989e1447cbbc409ec990f19c78c75bd1e06f215', 2, NULL, '57590', 'febri', 'mf@situs.id', 'muhammad febriansyah', '1991-02-21', NULL, 4350, '7b9c42cee7354b875b4ff5d4a92d921e', '2015-08-15 17:24:21', 1, '1980-06-22 20:53:34', '2015-08-12 03:57:47'),
(2, 2, '297c49d1f3c4c0d3a2cadbec294c97fc20edc42ca1f03bda3ecaf6cb61a4b786cf', 3, '123', '3', 'Inara', 'inara@asd.com', NULL, NULL, NULL, -50, 'c4c381d99758f1720d3fca95c05d7a26', '2015-08-19 07:47:14', 0, '2015-05-18 03:24:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `member_levels`
--

CREATE TABLE `member_levels` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member_levels`
--

INSERT INTO `member_levels` (`id`, `name`) VALUES
(1, 'administrator'),
(2, 'normal');

-- --------------------------------------------------------

--
-- Table structure for table `member_watchlists`
--

CREATE TABLE `member_watchlists` (
`id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `video_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status_id` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member_watchlists`
--

INSERT INTO `member_watchlists` (`id`, `member_id`, `video_id`, `created_at`, `updated_at`, `status_id`) VALUES
(2, 1, 2, '2015-06-22 12:52:02', NULL, NULL),
(3, 1, 8, '2015-06-22 13:28:41', NULL, NULL),
(14, 1, 54, '2015-08-08 16:38:04', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
`id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `to_member_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `member_id`, `to_member_id`, `title`, `description`, `created_at`, `updated_at`, `status_id`) VALUES
(1, 0, 1, 'Hi!', 'Halo ini Admin', '2015-08-02 12:55:04', NULL, NULL),
(2, 0, 1, 'Enjoy!', 'Selamat Menikmati aplikasi kami', '2015-08-02 12:55:21', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1433388412),
('m130524_201442_init', 1433388416);

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
`id` int(11) NOT NULL,
  `video_id` int(11) DEFAULT NULL,
  `member_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `release_date` date NOT NULL,
  `run_time_in_minute` int(11) NOT NULL,
  `languages` text,
  `subtitles` text,
  `play_count` int(11) NOT NULL,
  `view_count` int(11) NOT NULL,
  `video_url` text NOT NULL,
  `image_url` text NOT NULL,
  `last_update_by_member_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `video_id`, `member_id`, `title`, `description`, `release_date`, `run_time_in_minute`, `languages`, `subtitles`, `play_count`, `view_count`, `video_url`, `image_url`, `last_update_by_member_id`, `created_at`, `updated_at`, `status_id`) VALUES
(1, 1, 1, 'cinta brontosaurus', 'Dika (Raditya Dika) adalah seorang penulis yang baru saja putus cinta dengan Nina (Pamela Bowie), pacarnya setelah sekian lama. Semenjak putus cinta ini, dia percaya bahwa cinta bisa kadaluarsa. Kosasih (Soleh Solihun), agen naskah Dika, mencoba untuk membuat Dika yakin terhadap cinta kembali, seperti Kosasih yakin dengan istrinyanya Wanda (Tyas Mirasih). Usaha ini, membawa Dika ke dalam serangkaian perkenalan absurd.    Namun, cinta bisa datang tanpa persiapan. Seperti saat Dika bertemu dengan Jessica (Eriska Rein), seorang perempuan yang jalan pikirannya sama anehnya dengan Dika. Semakin Dika kenal dengan Jessica, semakin dia bertanya: apa benar cinta bisa kadaluarsa?', '2013-05-08', 94, 'Indonesia', NULL, 2, 364, 'mov556434441fffc.mp4', '966d3996c8f626571036165ede555986ab.jpeg', NULL, '2015-06-14 07:26:41', NULL, NULL),
(2, 2, 1, 'Get Married', 'Get Married film yang mengangkat kehidupan 4 anak muda yang mangakui dirinya sebagai anak muda paling frustrasi se-Indonesia. Mae (diperankan Nirina Zubir) obsesi terbesarnya adalah menjadi seorang polisi wanita tapi justru oleh orangtuanya dimasukkan ke akademi sekretaris dan bergelar sarjana. Eman (diperankan Aming) yang ingin mengabdikan dirinya di dunia politik, dan menjadi politikus sejati, malah dimasukkan ke pesantren oleh orang tuanya. Anak muda yang tidak beruntung selanjutnya adalah Beni (diperankan Ringgo Agus Rahman) yang bercita-cita jadi petinju tetapi masuk sekolah pertanian. Sedangkan Guntoro (diperankan Desta Clubeighties) yang selalu berangan-angan jadi seorang pelaut dan bisa keliling dunia, malah selalu berurusan dengan komputer, ia mengikuti kursus komputer. Jadilah mereka anak-anak muda yang frustrasi yang mengisi hari-hari mereka dengan bermain gaple bersama di sebuah gubug di pinggiran kali. Tiba-tiba saja ada kesadaran pada orang tua Mae (diperankan Jaja Mihardja dan Meriam Bellina), bahwa setiap manusia mestilah berkembang biak. Sedangkan satu-satunya penerus yang mereka miliki hanyalah Mae. Tapi Mae yang tomboy yang tak pernah merawat diri sebagai perempuan sejati, tak tersentuh kosmetik pasti tidak aka dilirik pria, baik pria satu kampung atau dari luar. Dan lebih parahnya lagi setiap harinya ia bergaul dengan tiga pemuda tidak jelas dan sewaktu-waktu bisa mengganggu keselamatan pria yang mendekat padanya.Akhirnya Mae pun dicarikan jodoh di luar kampung. Tak disangka ternyata yang berminat, hanya anak muda yang cuma bermotor bebek. Sementara selera Mae sangat tinggi. Ingin punya suami yang gagah dan mentereng. Terbesit keinginan untuk dijodohkan dengan seorang olahragawan bertubuh kekar. Tapi sayangnya Mae tetap saja menolak, dan akhirnya ke-3 sahabatnya turun tangan untuk mengenyahkan si pria kekar ini. Sampai akhirnya muncullah sang pangeran, Rendy (diperankan Richard Kevin) seorang pemuda yang tampan dan kaya yang mampu membuat Mae jatuh cinta pada pandangan pertama, Rendy yang tak lain adalah Bos dari si Bodyguard yang pernah melamar Mae.Tidak beda dengan Mae, Rendy juga sedang di kejar-kejar oleh Mamanya untuk segera mencari istri. Rendy yang sedang mencari gadis unik, beda dengan gadis-gadis lain yang seragam, pun juga jatuh cita pada Mae. Tapi ulah ketiga sahabatnya, Eman, Beni, dan Guntoro, yang belum sanggup berpisah dengan Mae membuat hari-hari bahagia yang ada di depan mata Mae hancur berantakan.    Bu Mardi, ibu Mae, jatuh sakit karena memikirkan anaknya yang tak juga berjodoh. Bila ia mati dan Mae belum kawin maka ia mengancam akan jadi hantu. Mae pun panik dan berusaha untuk menyelamatkan nyawa ibunya.    Karena tidak tahu harus menikah dengan siapa maka calon yang ada hanya tiga sahabatnya itu. Bagi Eman, Beni, dan Guntoro, ini amat menggelikan. Tapi akhirnya mereka menyadari ini merupakan ujian persahabatan bagi mereka.    Ke tiga pria ini pun berunding di gubuk kebanggaan mereka dan menetapkan siapa yang akan menjadi pendamping Mae. Perundingan ditentukan dengan suit, yang kalah dan yang menjadi pengantin pria adalah Guntoro, tapi beberapa hari menjelang pernikahan tiba-tiba saja Guntoro sakit. Perundingan kembali dilakukan dan pilihan jatuh pada Eman. Senada dengan Guntoro, Eman pun tiba-tiba sakit. Tinggallah Ben yang tersisa. Mau tak mau Ben yang menjadi pendamping Mae.    Pesta pernikahan pun digelar, tapi dari pihak luar tidak terima Mae direbut oleh Ben. Rendy membawa pasukan Harley-nya menyerbu kampung Mae dan terjadilah tawuran tak terkendali.', '2007-08-01', 102, 'Indonesia', NULL, 1, 49, 'mov556572ad81ea2.mp4', '97388141548e7074463f280d60b422dff5.jpeg', NULL, '2015-06-14 07:30:40', NULL, NULL),
(3, 3, 1, 'Virgin', 'Stella (Ardina Rasti) adalah murid SMU di Jakarta yang hidup berada, semuanya ada tapi ia tidak bahagia karena orangtuanya yang pengusaha dan politisi sukses jarang berada di rumah dan membuatnya broken home, dan akhirnya membuat ia terjerumus dalam pergaulan bebas yang menyebabkannya kehilangan keperawanannya. Di sekolahnya, Stella termasuk murid yang supel meski prestasinya tidak cemerlang, dan bersahabat baik dengan Katy (Angie) yang kehidupannya serba pas-pasan, dan Biyan (Laudya Chintya Bella), yang kehidupannya lumayan berada meski tidak seberada Stella.    Bertiga mereka berpetualang di gemerlap malamnya Jakarta, menghabiskan banyak malam berdisko ria, sampai akhirnya Katy mengikuti jejak Stella untuk melepaskan keperawanannya. Biyan, satu-satunya perawan yang tersisa, bersikukuh untuk tetap mempertahankan keperawanannya. Katy akhirnya jenuh hidup pas-pasan dan memilih untuk menjadi PSK untuk hidupnya yang sendiri. Biyan, di lain pihak, ternyata juga hidup di keluarga yang tidak sempurna, ayahnya suka sekali main perempuan sementara ibunya (Henidar Amroe) tidak berdaya. Biyan akhirnya memilih untuk pergi dari rumahnya dan tinggal di rumah pakdenya sambil menulis jurnal kehidupannya dan kedua sahabatnya dalam laptop-nya.    Petualangan mereka semakin berwarna ketika Luna (Uli Auliani), teman sekelas mereka yang haus perhatian, selalu berusaha merusak persahabatan mereka. Dalam pencarian jati diri, Stella mendaftar untuk audisi bintang film ditemani Katy dan Biyan. Saat itulah mereka bertemu Maryx (Mike Muliadro), aktor terkenal yang dikagumi Biyan. Akting Stella yang amat parah membuatnya gagal mendapatkan peran, dan Biyan yang menemani malah mendapatkan peran tersebut. Namun Biyan tidak memberitahukannya pada Stella karena tidak ingin merusak persahabatan mereka.', '2005-12-01', 110, 'Indonesia', NULL, 0, 0, 'mov556574694d6e5.mp4', '98c15cbd70fdf5f8abe35f5d8401339b43.jpeg', NULL, '2015-06-14 07:31:03', NULL, NULL),
(4, 4, 1, 'Hafalan Shalat DELISA', 'Delisa (Chantiq Schagerl), gadis kecil kebanyakan yang periang, tinggal di Lhok Nga, sebuah desa kecil yang berada di tepi pantai Aceh; dan mempunyai hidup yang indah. Sebagai anak bungsu dari keluarga Abi Usman (Reza Rahadian), ayahnya bertugas di sebuah kapal tanker perusahaan minyak internasional. Delisa sangat dekat dengan ibunya yang dia panggil Ummi (Nirina Zubir), serta ketiga kakaknya yaitu Fatimah (Ghina Salsabila) dan si kembar Aisyah (Reska Tania Apriadi) dan Zahra (Riska Tania Apriadi).    Pada 26 Desember 2004, Delisa bersama Ummi sedang bersiap menuju ujian praktek shalat ketika tiba-tiba terjadi gempa. Gempa yang cukup membuat ibu dan kakak-kakak Delisa ketakutan. Tiba-tiba tsunami menghantam, menggulung desa kecil mereka, menggulung sekolah mereka, dan menggulung tubuh kecil Delisa serta ratusan ribu lainnya di Aceh serta berbagai pelosok pantai di Asia Tenggara.    Delisa berhasil diselamatkan Smith (Mike Lewis), seorang prajurit Angkatan Darat AS, setelah berhari-hari pingsan di cadas bukit. Sayangnya luka parah membuat kaki kanan Delisa harus diamputasi. Penderitaan Delisa menarik iba banyak orang. Smith sempat ingin mengadopsi Delisa bila dia sebatang kara, tapi Abi Usman berhasil menemukan Delisa. Delisa bahagia berkumpul lagi dengan ayahnya, walaupun sedih mendengar kabar ketiga kakaknya telah pergi ke surga, dan Ummi belum ketahuan ada di mana.', '2011-12-22', 101, 'Indonesia', NULL, 0, 0, 'mov556575ca33390.mp4', '993b4cc7a0829d02f1bc80e145053c06d0.jpeg', NULL, '2015-06-14 07:31:21', NULL, NULL),
(5, 5, 1, 'Operation Wedding', 'Windi (Yuki Kato) putri bungsu favorit Laksamana Angkatan Laut Kardi (Bucek). Windi paling kuat menahan nafas di dalam air, dan selalu lebih unggul dari 3 kakak perempuannya Vera (Dahlia Poland), Lira (Kimberly Ryder) dan Tara (Sylvia Fully), yang kesemuanya dididik gaya militer oleh Kardi (Bucek Depp) sendirian, Kardi menutupi keberadaan istrinya dari Windi. Istrinya meninggal saat melahirkan Windi. Tara, si sulung selalu cemburu dan marah pada Windi, berulangkali mencoba untuk membuang Windi. Menyadari ini, Kardi memutuskan untuk berhenti dari karirnya agar waktunya penuh untuk membesarkan 4 putrinya.', '2013-02-21', 105, 'Indonesia', NULL, 0, 5, 'mov55657decc8a53.mp4', '100172bed37549f267bd13f7ef212757bc9.jpeg', NULL, '2015-06-14 07:31:48', NULL, NULL),
(6, 6, 1, 'SLANK Nggak Ada Matinya', '1996.  Abdee dan Ridho dipanggil SLANK untuk datang jamming bersama Bimbim dan Ivan. Ternyata, SLANK yang ingin membuktikan bahwa SLANK tidak bubar walaupun personil hanya sisa Bimbim, Kaka dan Ivan melakukan tur. Abdee dan Ridho pun diajak, dan diberi persyaratan untuk bisa membawakan 35 lagu SLANK hanya dalam waktu 3 hari! Tur keliling daerah pun dimulai, dan saat itulah dimulai pertualangan SLANK dengan format baru. Kehidupan rock and roll, mereka bertemu berbagai lapisan masyarakat, mengenal Indonesia, dan terutama.. mengenal diri sendiri.    Formasi baru SLANK dengan album TUJUH sukses besar, namun di saat itu pula ketergantungan Bimbim, Kaka dan Ivan akan narkoba semakin kuat.  Bunda Iffet, bersama Abdee dan Ridho pun berusaha supaya Bimbim, Kaka dan Ivan bisa lepas dari jerat narkoba, karena mereka semua yakin perjalanan SLANK masih panjang, dan masih banyak yang bisa mereka lakukan untuk orang lain.     Tidak ada yang bisa menghalangi SLANK untuk terus maju ke depan. Tidak narkoba, tidak perpecahan. Selama semua dijalankan bersama-sama. Dengan sahabat. Dengan keluarga. Dengan keluarga besar SLANK dan keluarga besar Indonesia. Selama Republik ini masih berdiri, SLANK nggak bakal mati. SLANK Nggak Ada Matinya. Piss!', '2018-12-24', 93, 'Indonesia', NULL, 0, 0, 'mov557159a658d99.mp4', '10174988b50642e4ecd7a81c8d7c15bf341.jpeg', NULL, '2015-06-14 07:32:17', NULL, NULL),
(7, 7, 1, 'Purple Love', 'Malam itu seharusnya menjadi malam paling indah dalam hidup Pasha. Bersama sahabat-sahabatnya, Makki, Onci, Rowman dan Enda, Pasha sudah merencanakan untuk melamar kekasihnya Lisa (Qory Sandioriva). Namun ternyata, di hari yang sama juga, Lisa memutuskan hubungan karena memilih untuk bersama laki-laki lain. Pasha pun shock dan patah hati. Makki pun mempunyai ide untuk menghubungi sebuah agency yang bekerja untuk mengembalikan motivasi orang.    Agency ini dimiliki oleh Talita (Nirina Zubir), seorang gadis cantik yang eksentrik. Talita menyanggupi untuk mengembalikan Pasha kembali seperti dulu. Ia pun dengan berbagai caranya yang unik berhasil membuat Pasha mau bangkit, tapi tetap saja tidak bisa menyembuhkan patah hati Pasha. Akhirnya Talita berkesimpulan, Pasha baru akan bisa sembuh total kalau berhasil menemukan cinta yang baru. Talita pun menjodohkan Pasha dengan kliennya yang lain, Shelly (Kirana Larasati), seorang gadis lucu naif dan sangat romantis.', '2011-04-12', 100, 'Indonesia', NULL, 0, 2, 'mov55765aa73aeb0.mp4', '1029fb62552f4613d010e50abf47a201bf4.jpeg', NULL, '2015-06-14 07:32:40', '2015-07-14 17:00:00', NULL),
(8, 63, 1, 'Short Movie example', 'Small Size movie for test download', '2015-08-08', 0, NULL, NULL, 0, 0, 'enc-test.mp4', '', NULL, '2015-08-08 11:16:41', NULL, NULL),
(9, 72, 0, 'The Tarix Jabrix', 'Caca Sutarya (Tria Changcut) atau yang biasa dipanggil dengan sebutan "Cacing" adalah seorang lelaki yang enerjik dan ingin menjadi anggota The Road Devil, geng motor paling brutal dan ditakuti di Kota Bandung. Tapi ia tidak sampai hati untuk melakukan ujian yang diberikan karena tidak sesuai dengan hati nuraninya Akhirnya, ia mengajak teman-teman dekatnya Dadang Modip (Erick Changcut), Coki (Qibil Changcut), Ciko (Alda Changcut) serta Mulder (Dipa Changcut). Mereka membentuk geng motor dengan nama "The Tarix Jabrix" yang sering nongkrong di "Bengkel Sugema" milik Pak Rohim (Sellen Fernandez), ayah dari Dadang. Seorang perempuan magang di bengkel itu, bernama Mayang (Francine Roosenda). Teman-teman Dadang menaruh hati pada Mayang. Sementara, Cacing sedang mendekati Callista (Carissa Putri), primadona sekolah. Sayangnya Callista sering dijemput pacarnya, Valdin , teman kakaknya, Max (Ario Bayu), yang merupakan pentolan geng motor The Smokers, sebuah geng motor yang lebih besar. Diam-diam Callista menaruh hati pada Cacing yang dianggap lucu, menyenangkan dan enak diajak ngobrol.  Kedekatan Callista dan Cacing membuat hubungan Callista dan Valdin renggang, Valdin tidak terima. Akhirnya, The Tarix Jabrix berseteru dengan The Smokers. Cacing memberitahu Callista, bahwa ada anak buah kakaknya yang membawa narkoba. Cacing dkk kemudian berinisiatif untuk membongkar kasus ini, setelah Callista mengatakan bahwa The Smokers adalah geng motor yang bersih. Niat baik The Tarix Jabrix untuk membongkar kasus ini lagi-lagi mendapat halangan dari Valdin dan Max. The Smokers merasa bahwa Cacing hanya mencari gara-gara. Kedua geng ini berseteru, mereka siap tawuran meski jumlah The Smokers lebih unggul dan persiapan Cacing hanya satu hari.', '2009-07-29', 95, 'Indonesia', NULL, 0, 0, 'mov5576637f30258.mp4', '76b9be7434af11345d998490674cc618eb.jpeg', NULL, '2015-08-13 10:26:05', NULL, NULL),
(10, 73, 0, '18+', 'Raka (Samuel Zyglwyn), Topan (Adipati) sangat mencintai Chanisa (Stevanie Nepa) dan Helen (Leylarey Lesesne). Mereka adalah empat remaja yang disatukan oleh nasib, mengekspresikan cinta dengan caranya sendiri, dan hidup dengan gayanya yang bebas. Mereka begitu menghargai nilai cinta yang sejati, juga persahabatan.    Topan dan Raka memang bandel, urakan dan cenderung brutal. Orang tua Topan juga bermasalah, ayahnya, Hilman (Arie Sudarsono) adalah gay, dan ibunya, Retno (Wulan Guritno) selalu stress mengetahui kondisi suaminya. Dalam sepinya Retno melampiaskan nafsunya dengan masturbasi.    Menyadari situasi keluarganya yang berantakan, Topan menyibukkan dirinya untuk merawat Chanisa pacarnya yang terkena penyakit kanker paru-paru. Topan selalu mendapatkan gangguan dari Nayla (Arumi Bachsin). Topan sangat mencintai dan melindungi Chanisa, sedangkan Raka menaruh hati pada sahabat Chanisa, yaitu Helen. Raka dan Helen akhirnya pacaran.    Chanisa yang penyakitnya semakin parah, akhirnya dibawa Topan  ke Rumah Sakit. Semua biaya pemeriksaan dan rawat inap membuat Topan harus menyediakan uang yang sangat besar.Raka yang suka menggampangkan masalah, akhirnya meminjam uang pada Rentenir dengan batas waktu pengembalian uang seminggu. Raka memberikan uang itu ke Topan. Saat batas waktu hampir habis, Raka mendapat ancaman dari Romi (Rangga Djoned), salah satu anggota Gank Rentenir, dengan melibatkan Helen yang diancam dijadikan korban apabila Raka tidak mengembalikan uang dengan bunganya saat tenggat waktunya tiba. Topan dan Raka mencari uang dengan mencoba membobol ATM, pada saat itu Romi dengan gengnya memperkosa  Helen.    Raka sangat terpukul melihat kondisi Helen yang menggenaskan, dan membawanya ke rumah sakit. Dengan setia Raka menerima, dan merawat Helen secara telaten. Diam-diam Raka yang terbakar dendam, mendatangi markas Romi untuk membalaskan dendamnya, tapi malah Raka babak belur dihajar Romi dkk. Topan, Chanisa dan Helen juga diteror Romi sehingga harus sembunyi sambil menunggu Raka. Setelah beberapa hari, Raka belum juga datang, akhirnya Topan menyusul. Topan pun mengalami nasib sama, dia disekap bersama Raka.', '2010-01-26', 90, 'Indonesia', NULL, 0, 0, 'mov557664602eb4b.mp4', '75c83a904d3396fe9717f297658b98c070.jpeg', NULL, '2015-08-13 10:26:05', NULL, NULL),
(11, 74, 0, 'Perempuan Berkalung Sorban', 'Kisah pengorbanan dan perjuangan Annisa (Revalina S Temat), sebagai anak sekaligus ibu dan isteri, dalam lingkungan keluarga kyai di pesantren. Sejak kecil Annisa mendapatkan perlakuan tidak adil, protesnya selalu dianggap rengekan anak kecil. Hanya Khudori (Oka Antara), pamannya, yang selalu menemani, menghibur sekaligus menyajikan ‘dunia’ yang lain bagi Annisa. Dunia yang mensetarakan perempuan, dan tidak hanya membela lelaki. Diam-diam Annisa menaruh hati kepada Khudori. Tapi cinta itu tidak terbalas karena Khudori menyadari dirinya masih ada hubungan dekat dengan ibu Annisa, Nyai Muthmainnah (Widyawati) isteri Kyai Hanan (Joshua Pandelaki), ayah Annisa pemilik pesantren Al Huda. Hal itu membuat Khudori membunuh cintanya, sampai akhirnya Khudori melanjutkan sekolah ke Kairo.    Khudori selalu menekankan ke Annisa untuk belajar, hingga secara diam-diam Annisa mendaftarkan kuliah ke Jogja, tapi kenyataan berkata lain. Kyai Hanan tidak mengijinkan Annisa melanjutkan kuliah, malah dinikahkan  dengan Samsudin (Reza Rahadian). ', '2009-01-15', 131, 'Indonesia', NULL, 0, 0, 'mov558130c25371c.mp4', '84387ada17d64e332640b13a76a7e15532.jpeg', NULL, '2015-08-13 10:26:05', NULL, NULL),
(12, 75, 0, 'XXL – Double Extra LARGE', 'XXL bercerita tentang seorang pemuda bernama Kasep (Aming) yang didaulat meneruskan kepemimpinan ayahnya (Candil) di geng berlatar etnis Sunda, ‘Barudak Lieur’. Sejak ayah Kasep yang karismatik menghilang tak tentu rimbanya Barudak Lieur mengalami krisis karena terus menerus ditekan oleh geng saingan yang bernama ‘Wong Kenthir’. Kasep yang dianggap mewarisi kemampuan ayahnya lalu jadi inspirasi bagi Barudak Lieur untuk mengembalikan kejayaan masa lalu.    Tanggung jawab yang begitu besar terasa berat untuk dipikul Kasep. Salah satu alasannya ialah Kasep menderita rasa rendah diri karena ukuran alat kelaminnya tidak menunjang. Demi mengatasi krisis eksistensi mereka, Barudak Lieur pun mengusahakan pengobatan tradisional bagi Kasep.  Kebetulan Mak Siat (Sarah Sechan), seorang ahli pengobatan alat kelamin pria yang dulu sangat tersohor baru saja keluar dari penjara. Ia bertekad mengembalikan nama harum padepokan ‘Manuk Riang’ yang diwariskan oleh gurunya. Namun, niat Mak Siat itu terganjal oleh sepak terjang Mak Lampir (Tessy) seorang ahli pengobatan sejenis yang menjadi saingannya. Mak Lampir berhasil merebut pasien-pasiennya saat Mak Siat meringkuk di penjara.  ', '2009-11-26', 87, 'Indonesia', NULL, 0, 0, 'mov558133b8e822d.mp4', '78381ce4951caa9e8ee02ed9175dccf84f.jpeg', NULL, '2015-08-13 10:26:05', NULL, NULL),
(13, 76, 0, 'Miracle', 'Siswa-siswi kelas 3 suatu SMU akan berdarmawisata. Beberapa menit sebelum berangkat, Kinar (Keira Shabira), siswi kelas 3 Sosial 1, mendapat penglihatan kalau bis kelas mereka akan kecelakaan dan terbakar. Kinar berusaha memperingatkan teman-teman dan guru tapi tidak digubris.     Kinar malah diseret turun oleh ketua angkatan, Satyo (Lian Firman) dan wali kelas, Pak Irawan (Robertino). Kaka (Andry Ilham), sahabat Satyo ikutan turun, tapi ia melarang Elisa (Audrey) pacarnya untuk turun. Selain itu masih ada Ago (Dhitra Marfie), Tania (Lady Veronica), Mey (Nadilla Ernesta) dan Aldi (Wishnu Wijaya) yang akhirnya turun karena suatu alasan. Bis kelas itu berangkat duluan, sedangkan mereka yang turun, rencananya dinaikkan ke bis untuk guru.     Bis kelas 3 Sosial 1 itu ternyata mengalami kecelakaan seperti penglihatan Kinar. Semuanya mati...Delapan orang yang turun selamat; Satyo, Pak Irawan, Kaka, Ago, Tania, Mey, Aldi dan Kinar sendiri...    Tapi ternyata kematian tidak berhenti begitu saja. Satu persatu mereka mati. Diawali oleh Kaka, Pak Irawan dan Tania...  Kinar berhasil memecahkan teka-teki kalau kematian itu berurutan dari huruf awal nama membentuk suatu kalimat: KITA MATI...', '2007-12-13', 105, 'Indonesia', NULL, 0, 0, 'mov55813af55ea3a.mp4', '', NULL, '2015-08-13 10:26:05', NULL, NULL),
(14, 77, 0, 'Red Cobex', 'eng Red CobeX beranggotakan ibu-ibu dari berbagai daerah, yaitu Mama Ana (Tika Panggabean-Ambon), Tante Lisa (Indy Barends-Manado), Yu Halimah (Aida Nurmala-Tegal), Mbok Bariah (Sarah Sechan-Madura) dan Cik Meymey (Cut Mini-Cina keturunan) adalah sekumpulan ibu yang membela kaum lemah dan sangat anti kemaksiatan. Mereka tak segan-segan menyakiti orang-orang yang mengambil keuntungan dari hasil bisnis kotor. Bersama Yopie (Lukman Sardi), anak tunggal Mama Ana yang lugu, Geng Red CobeX kerap beraksi preman dengan meringkus dan main hakim sendiri.    Suatu hari Geng Red CobeX ditangkap polisi dan dipenjara karena dianggap meresahkan masyarakat. Setahun setelah kejadian itu, Yopie dibebaskan dari penjara dan menumpang pada Ramli (Irfan Hakim), sahabatnya sejak kecil. Namun istri Ramli, Ipah (Shanty), rupanya tak kuat menampung Yopie. Alhasil Ramli melakukan berbagai macam cara supaya Yopie berubah dan bahkan menyarankan Yopie untuk tinggal bersama ayahnya.    Yopie bingung dengan hidupnya, sisi dia yang lugu merasa bahwa Mamanya melakukan kejahatan untuk kebenaran, di sisi lain dia mulai menyadari bahwa ia harus bersikap sewajarnya orang lain. Ditengah kebingungan ia bertemu dengan Astuti (Revalina S Temat), gadis Jawa yang bekerja di sebuah restoran. Astuti yang sempat mengira Yopie adalah pencopet, akhirnya terkesan dengan kebaikan Yopie dan menawarkan pekerjaan sebagai pelayan di tempat ia bekerja.    Keakraban Yopie dan Astuti mendapat berbagai pro dan kontra dari keluarga Astuti. Apalagi setelah mendengar latar belakang Yopie yang mempunyai ibu di penjara. Singkat cerita Yopie dan Astuti akhirnya berniat untuk tunangan dihadiri oleh kedua keluarga masing-masing terganggu oleh kedatangan preman untuk melakukan penggusuran di sekitar rumah Astuti. Para preman yang ternyata mantan kekasih Mama Ana pun bertarung melawan Mama Ana bersama Geng Red CobeX. Pergulatan sengit berlangsung, akankah Geng Red CobeX keluar sebagai pemenang? Bagaimana nasib kisah cinta Yopie dengan Astuti? Apakah keluarga Astuti mau berbesan dengan Mama Ana dan Geng Red CobeX-nya?', '2010-06-17', 102, 'Indonesia', NULL, 0, 0, 'mov55b6579db3fe9.mp4', '8328fae84ba42cb4bbbb3c3da478059051.jpeg', NULL, '2015-08-13 10:26:05', NULL, NULL),
(15, 78, 0, 'Si Kabayan Turun Kota', 'Kabayan (Didi Petet) yang karena terpengaruh seorang teman, pergi ke kota. Di kota, Saribanon (Nurul Arifin) yang ayahnya pernah dibantu Kabayan ketika dirampok, diam-diam menaruh hati. Hubungannya dengan Iteung (Paramitha Rusady), pacarnya di desa, sempat renggang tetapi akhirnya keduanya pun menikah', '1989-00-00', 90, 'Indonesia', NULL, 0, 0, 'mov55b65a52d0188.mp4', '73e8f93e531f09ba502f3bac7507674c7e.jpeg', NULL, '2015-08-13 10:26:05', NULL, NULL),
(16, 79, 0, 'Basahhh', 'Dimas, Ojan, Didot, dan Alvin tergabung dalam geng Macho. Mereka dalam proses pencarian jati diri dalam usia pubertas. Dimas, Ojan, dan Alvin sudah mendapat mimpi basah, tapi Didot belum. Itu sering menjadi masalah, pasalnya Didot suka tidak menyambung kalau diajak bicara soal cewek. Dimas, Ojan, dan Alvin menduga ada sesuatu yang tidak beres dengan sahabat mereka.    Mereka pun menganalisis dan menyimpulkan kalau semua itu terjadi karena Didot belum pernah mengalami mimpi basah. Mereka perihatin dan berusaha mencari cara agar Didot mendapatkan mimpi basah. Maka dimulailah petualangan geng Macho yang akhirnya terlibat perseteruan dengan geng Imut yang salah satu anggotanya Anissa, cewek berkerudung yang jadi idola Didot. Tetapi teman-teman Didot yaitu Dimas, Ojan, dan Alvin lebih tertarik kepada geng Seksi pelatih bola voli pantai geng Imut.', '2008-08-21', 90, 'Indonesia', NULL, 0, 0, 'mov55b65ba71a19c.mp4', '77d6a6d96a39821297943633066806adda.jpeg', NULL, '2015-08-13 10:26:05', NULL, NULL),
(17, 80, 0, 'Heart', 'Rachel (Nirina Zubir) adalah gadis yang tomboy, enerjik, berpenampilan cuek dan penuh inisiatif. Rachel hidup dipegunungan Puncak yang asri, dan meskipun bukan orang terkaya didaerahnya, Rachel hidup dengan bahagia bersama sahabatnya sejak kecil, Farel (Irwansyah). Kegiatan mereka sehari-hari diisi dengan kebanyakan bermain bola basket, kegiatan yang mereka sangat nikmati sejak kecil. Mereka juga membuat sebuah rumah pohon, dimana Rachel pernah diam-diam mengukir sesuatu pada pohonnya. Farel tidak pernah tahu apa yang Rachel ukir disana.    Suatu hari ditoko buku, Farrel secara tidak sengaja bertemu dengan Luna (Acha Septriasa), gadis cantik, feminin dan lembut. Farel seketika jatuh cinta pada Luna dan meskipun pertemuan mereka berlangsung canggung, Luna setuju untuk bertemu dengan Farel lagi. Farel mengharapkan bantuan dari Rachel untuk meluluhkan hati Luna, namun Rachel merasakan sesuatu yang tidak pernah ia rasakan sebelumnya, yaitu rasa cemburu. Meskipun begitu demi nama sahabat, Rachel setuju untuk membuat rencana-rencana untuk meluluhkan hati Luna.  Rencana-rencana mereka pun berhasil, Luna semakin luluh hatinya dan semakin menyukai Farel, tapi membuat Rachel semakin terluka. Lambat laun, Rachel mengubah penampilannya. Ia mencoba memakai dress seperti Luna, dan memakai berbagai macam aksesoris seperti anting-anting dan gelang, dan memakai make-up. Farel pun menyadari perubahan dari Rachel, namun bukannya tertarik pada Rachel seperti yang diharapkannya, Farel malah merasa bahwa Rachel menjadi aneh dan telah berubah. Rachel, semakin terluka, berpura-pura meyakinkan Farrel bahwa ia tetaplah Rachael yang dulu dan tidak berubah.    Hari demi hari berlalu dan Farrel bersama Lunna kian dekat. Rachael jadi sangat jarang bertemu Farrel, let alone untuk bermain basket bersama. Farrel pun mengajak Lunna untuk berperahu didanau, namun perahu mereka oleng dan mereka terjatuh. Farrel yang merasa semuanya lucu tertawa, tapi berhenti ketika ia sadar bahwa Lunna menggigil tidak berhenti. Farrel pun sadar bahwa Lunna sebenarnya sedang sakit. Ditempat lain, Rachael yang sendirian dengan kesal menusuk-nusuk tanah dengan sebilah pisau, bahkan juga menusuk bola basket dari tim yang sedang bermain sampai kempes.    Dihari lain, Farrel sedang bersama Lunna disebuah taman. Rachael melihat mereka berjauhan dan mendapati Farrel berciuman dengan Lunna, menghancurkan hatinya seutuhnya dan membuat ia berlari tak tentu arah. Yang Rachael tidak tahu adalah, bahwa saat berciuman dengan Farrel, Lunna memuntahkan darah dari mulutnya, dan harus segera dirawat dirumah sakit. Rachael yang berlari tanpa tujuan, jatuh disekitar lereng gunung kearah jurang dan dikirim pula kerumah sakit yang sama dengan Lunna. Rachael pun mengetahui kenyataan pahit bahwa kakinya harus segera diamputasi karena bisa membahayakan hidupnya.    Farrel setiap hari menjenguk Lunna dan Rachael dirumah sakit, namun Rachael sadar bahwa ia hanya menjenguknya sesekali dan lebih sering menjenguk Lunna. Rachael menjadi semakin marah pada Farrel, namun Rachael dan Farrel menyadari bahwa Lunna sakit parah dan benar-benar membutuhkan donor hati agar bisa bertahan hidup. Ayah Lunna, Adam (Ari Sihasale) dan Farrel berusaha mencari donor kesana kemari tapi tidak berhasil mendapatkannya. Waktu Lunna pun semakin tipis dan Lunna pun mendekati kematiannya.    Farrel lalu diperlihatkan berjalan kesebuah pemakaman menuju sebuah makam yang masih baru, dan disebuah twist cerita dilihatkan kalau itu adalah makam Rachael, bukan Lunna yang tadi sekarat. Ternyata Rachael mendonorkan hatinya kepada Lunna, bukan untuk menyelamatkan nyawa Lunna yang sangat ia benci karena mencuri Farrel darinya, tapi agar dia bisa terus hidup ditubuh Lunna sebagai hati yang memikirkan dan mencintai Farrel sampai mati. Rachael juga meninggalkan pesan agar Farrel melihat kerumah pohon mereka, tempat Rachael kecil mengukir sesuatu di awal film.    Farrel, telah menikah dengan Lunna dan memiliki anak, pergi ketempat mereka biasa bermain basket dan naik keatas rumah pohon. Disanalah Farrel menyadari bahwa Rachael pernah mengukir "Rachael love Farrel", dan ia pun menyadari betapa Rachael mencintainya sejak ia kecil. Farrel pun menangis keras dirumah pohon itu karena keterlambatannya menyadari ketulusan hati Rachael padanya.', '2006-05-11', 125, 'Indonesia', NULL, 0, 0, 'mov55b9f9a2aeda2.mp4', '800afcb277dd568bee25784ef7e519d773.jpeg', NULL, '2015-08-13 10:26:05', NULL, NULL),
(18, 81, 0, 'Get Married 2', 'Empat tahun Mae dan Rendy menikah. Namun tidak seperti ketiga sahabat Mae: Eman, Guntoro dan Beni yang sudah menikah juga dan memiliki anak, Mae dan Rendy belum dikaruniai anak. Saat Rendy gagal datang di acara ulangtahun pernikahannya sendiri, Mae pun ngambek dan minta pulang ke rumah orangtuanya. Pak Mardi dan Bu Mardi bukannya membujuk Mae supaya kembali ke suami, mereka malah mendukung Mae menceraikan Rendy karena Rendy gagal memberikan mereka cucu.    Mae dan Rendy mencoba berbagai cara untuk bisa mempunyai anak. Mae merasa mungkin sikapnya yang terlalu garang membuat pasukan Rendy jadi lemas. Jadi, dengan ‘dandanan cantik’ Mae datang ke kantor Rendy untuk memberi kejutan. Mae kaget melihat Rendy ternyata sedang berdua dengan wanita cantik bernama Vivi. Mae pun langsung minta cerai. Rendy mencoba mengirim ibunya untuk membawa Mae pulang', '2009-09-18', 90, 'Indonesia', NULL, 0, 0, 'mov55b9faa90a8cf.mp4', '790a6ac83fcab8cc49ec54d2baa1a83281.jpeg', NULL, '2015-08-13 10:26:05', NULL, NULL),
(19, 82, 0, 'Virgin 2', 'Tentang persahabatan dua orang remaja putri Tina dan Nadya yang terjerumus ke profesi kelam yang seharusnya tidak mereka lakukan di usia mereka. Masa remaja bukanlah hal yang mudah bagi mereka. Persahabatan seringkali harus dibayar dengan mahal, dan diakhiri kematian tragis, justru ketika mereka ingin merubah jalan hidupnya.    Tina (Christina Santika, 16 th), sebelumnya seorang siswi SMA dengan kepribadian yang cuek dan lebih pendiam, dia hanya memiliki satu orang sahabat bisu bernama Kenny (Neyna Lisa Bartlett), Kenny bisu akibat usaha bunuh diri yang gagal dan mengakibatkan pita suaranya rusak. Tina diusir oleh Ibunya karena dituduh telah menggoda kekasih Ibunya. Kenyataannya, kekasih Ibunyalah yang ingin mencumbu Tina. Tina berusaha membela diri, tapi Ibunya lebih mementingkan eksistensi hubungannya dengan sang kekasih. Setelah kejadian itu, Tina kehilangan tempat bernaung, dia bertemu dengan temannya bernama Steffie (Wichita Satari). Steffi menunjukkan betapa baik hatinya sebagai seorang teman. Tina terharu oleh kemurahan hati Steffi yang mau menampungnya. Tapi semua itu hanya kebohongan belaka, karena Steffi menjual Tina pada seorang Mucikari yang bernama Yama. Tina disekap di sebuah apartemen, diperkosa oleh Yama dan kemudian dipaksa untuk melayani klien-klien Yama. Hingga akhirnya Tina menemukan satu kesempatan untuk lari dari Yama. Di dalam proses pelarian itulah akhirnya Tina bertemu dengan Nadya.    Nadya (Joanna Alexandra, 19 th), berprofesi sebagai seorang Disc Jockey. Nadya diusir oleh orang tuanya gara-gara ketahuan hamil oleh Raymond (Ramon Y Tungka), seorang remaja yang jadi bandar narkoba. Setelah Raymond ditangkap Polisi, Nadya hidup dengan sahabatnya yang bernama Mitha (Smitha Anjani, 19 th). Mitha menumbuhkan semangat Nadya setelah ditinggal Raymond, mereka bersahabat sejak SMA. Namun sayang Mitha seorang pecandu berat, yang akhirnya lebih memilih narkoba, daripada sahabatnya Nadya.    Pertemuan Tina dengan Nadya, membuat mereka saling melengkapi satu sama lain. Tina merasa telah menemukan seseorang yang merubah pandangannya tentang hidup. Nadya juga merasa telah menemukan seseorang yang menyayanginya, dan mau mengerti dirinya, seorang sahabat sejati. Apalagi yang diperlukan dalam hidup di luar keluarga, selain sahabat yang mengerti…! Banyak hal mereka lakukan bersama-sama. Dari mulai tinggal, hingga terpaksa jual kehormatan, karena mereka membutuhkan uang banyak untuk menyelamatkan Mitha akibat hutangnya yang besar pada bandar narkoba, bahkan akibat penyiksaan yang diderita Mitha, tangannya perlu diamputasi. Mitha terbaring dalam keadaan koma, sebagai sahabat mereka harus siap melakukan apa saja termasuk mengambil jalan pintas, melakukan kebaikan dengan cara buruk, tentunya harus siap menuai akibatnya. Nadya mengalami keguguran dan pendarahan hebat hingga ia meninggal. Sementara Tina yang berusaha mencari pertolongan, malah ditemukan oleh Yama. Kembali Yama menganiaya Tina hingga babak belur. Tina sudah tidak kuat lagi, dalam ketidak berdayaan akhirnya Tina menemukan keberanian untuk melawan, dan Tina mengakhiri kebiadaban Yama. Tetapi, Tina tidak bisa menyelamatkan Nadya, seperti juga dia tidak bisa menyelamatkan Kenny yang memilih menabrakkan dirinya ke mobil dan mati, daripada hidup dalam kepedihan berkepanjangan.', '2009-05-28', 80, 'Indonesia', NULL, 0, 0, 'mov55b9fd6f329a2.mp4', '741040918c96d6a717d0ede66543bdeb44.jpeg', NULL, '2015-08-13 10:26:05', NULL, NULL),
(20, 83, 0, 'Lantai 13', 'Luna (Widi Mulia) adalah wanita yang selama setahun menganggur dan akhirnya, salah satu CV yang ia kirimkan diterima. Ia diterima untuk panggilan kerja di sebuah perusahaan Imperindo Visitama di Lantai 13 sebuah gedung kantor Imperial. Luna datang bersama pacarnya yang seorang jurnalis, Rafael (Aryo Wahab) yang terus menerus menanyakan kepada resepsionis mengenai ribut-ribut seorang perempuan yang kesurupan di depan pintu kantor. Kemudian setelah Rafael meninggalkan Luna untuk meliput kejadian ribut itu, seorang wanita cantik dan ramah bernama Laras (Virnie Ismail) memperkenalkan diri sebagai sekretaris Imperindo dan mengajak Luna masuk ke dalam lift menuju Lantai 13. Di Lantai 13, Laras menjelaskan bahwa prosedur penerimaan adalah melalui direkturnya sendiri, dan lantai 13 terlihat agak berantakan karena dalam masa renovasi. Luna memasuki sebuah kamar dimana duduk 12 gadis lain. Setelah ia duduk, Luna merasakan ada yang aneh, tidak ada satupun gadis itu yang berbicara sama sekali. Lalu, lampu mati-nyala berkali-kali dan berakhir menyala kembali dengan hasil, ke-12 gadis itu sudah menghilang. Merasa ada yang tidak beres, Luna segera lari keluar menuju lift. Dijalan menuju lift ia dikejar ke-12 gadis itu. Luna segera memasuki lift dan turun kebawah, dan melihat tombol lift yang tidak mencantumkan tombol 13 sama sekali. Akhirnya Luna berhasil kembali kebawah. Rafael diceritakan pengalaman, tapi urung percaya. Apalagi Lantai 13 ternyata tidak ada di gedung ini. Luna, masih merasa terteror, ditemani Rafael ke lantai 14 dimana Imperindo berada dan berkenalan dengan Ibu HRDnya Siska (Bella Esperance Lee) dan direktur utamanya Albert (Lucky Hakim) yang merangkap sebagai pemilik gedung. Wawancara itu menyimpulkan, bahwa undangan kerja yang ditujukan kepada Luna seharusnya dikirimkan setahun yang lalu. Tulisan lantai 13pun dianggap salah tulis.    Keesokannya Luna mulai bekerja dan merasa betah. Namun Rafael yang menjadi tertarik mengusut berita seputar Imperial, mengatakan Luna lebih baik untuk tidak bekerja disana. Luna ditempatkan di kursi sekretaris Pak Albert. Saat pagi ia menaiki lift, ia sampai lagi di lantai 13, kali ini ia melihat 12 gadis, Laras, dan satu orang lagi. Lalu Luna kembali ke depan lift utama secara tiba-tiba. Siangnya, karena merasa terteror oleh masalah penglihatannya, ia mendiskusikan hal tersebut dengan Pak Albert sepulang teman Pak Albert yang berjasa bagi perusahaan, Kuntara (Tio Pakusadewo). Luna merasa Kuntara adalah orang yang ia lihat di lantai 13. Pak Albert mengatakan semua itu hanyalah ilusi. Keesokan siangnya, di tengah makan siang bersama teman-temannya, Luna ditelepon Rafael bahwa dinyatakan seorang pria bernama Ilfan hilang. Ilfan adalah pacar Caca, perempuan yang kesurupan di awal film. Seusai makan siang, di kantor, Pak Albert pergi, membuat Luna dipanggil Inge (Ivy Batuta) dan Widi (Dhawiya Zaida), mereka ngerumpi soal pengalaman seram yang mereka dapatkan di gedung Imperial. Sampai pada giliran Luna, Luna menceritakan semua pengalamannya di lantai 13. Setelah itu, Siska datang dan membubarkan semuanya. Sampai ia menuruni tangga dan bertemu hantu. Keesokannya ia tidak masuk kerja.    Pak Albert menjadi gampang naik darah karena urusan hilangnya Ilfan dan Caca yang membuatnya terseret ke polisi. Ia menyuruh Luna untuk mengambil arsip Caca di ruangan Siska. Luna yang melihat-lihat arsip, menemukan dua belas arsip yang ditumpuk, dan arsip Laras. Luna heran dan menanyakan perihal arsip-arsip wanita yang ternyata sama dengan gadis-gadis yang ia lihat di Lantai 13. Ia takut karena semua arsip gadis-gadis itu, melamar sebagai sekretaris, sama seperti dirinya. Luna meminta Albert untuk menemaninya mengecek pintu tangga darurat yang pernah Luna lihat, bisa masuk ke Lantai 13. Albert menyetujuinya dan nanti sore akan menemani. Di kantor Rafael, Rafael mengecek undangan surat Luna yang sekarang dan setahun yang lalu. Pembantu Luna memberikan undangan setahun yang lalu itu, yang ternyata belum diberikan kepada Luna lewat dari tanggal yang tertera. Undangan satu tahun yang lalu berisi informasi, tetapi, undangan yang Luna terima sekarang, hanya tercantumkan kop perusahaan saja. Tapi Luna bisa melihat isi undangan itu, entah bagaimana caranya. Kemudian Rafael mencocokkan undangan ini dengan berita seputar Kuntara yang terkenal sebagai penyelaras tumbal. Rafael mencium adanya bahaya dan menelepon Luna yang tengah bersama Albert menuruni tangga darurat, dan langsung pergi menjemput Luna. Sinyal tak bisa mencapai dan Luna akhirnya memasuki Lantai 13 bersama Albert. Luna tiba-tiba terjatuh dan menyaksikan apa yang sebenarnya terjadi setahun yang lalu.    Lantai 13 benar-benar ada. Lantai itu hanya bisa dicapai dengan tangga darurat dan dengan magis, bisa mengantar 12 gadis dan Laras ke lantai tersebut dengan menggunakan lift. Lalu, saat Laras mengadakan briefing kepada 12 gadis tersebut, mereka semua keracunan dan meninggal. Laras tidak mengetahui apa yang terjadi sebenarnya. Sang pemilik gedung, Albert, rupanya ingin kantornya yang ditempati banyak makhluk halus bisa tenang, sekaligus bisnisnya lancar. Ia menyewa Kuntara untuk melancarkan datangnya cita-cita tersebut. Kuntara berkata bahwa tumbal 13 gadis yang dimatikan dalam waktu yang bersamaan akan membuat hal tersebut terjadi. Namun, Luna yang seharusnya menjadi gadis ke-13, tidak datang, terpaksa Albert membunuh Laras yang selama ini dekat dengannya. Sebelum mati, Laras berkata bahwa ia mengandung anak Albert. Albert membawa Luna ke tumpukan mayat 13 gadis. Albert menceritakan kebenciannya kepada Luna karena ialah sebab Laras mati. Kuntara mempersingkat prolog Albert, dan Albert siap menusuk Luna dengan linggis. Rafael berhasil masuk ke kantor, ke lantai 14, dan menuruni tangga darurat, tapi pintu lantai 13 terkunci. Saat Albert ingin menusuk, suara Laras menggema, ia berkata bahwa, arwahnya yang seharusnya dipasung Kuntara, ternyata bebas karena Kuntara memasung arwah bayi Laras. Laraspun bisa gentayangan dan memperingatkan Luna selama ini. Kuntara dibunuh di lantai 13 sementara Albert di lift. Luna akhirnya bisa terbangun dari kelumpuhannya, keluar lewat tangga darurat dan bertemu Rafael, segera pergi dari gedung itu.    Film berakhir dengan seorang calon pegawai baru (Maia Estianty) di sebuah gedung pencakar langit lain. Ia menunggu turunnya lift. Lift terbuka dan ia masuk lift tersebut, ketika pintu menutup tiba-tiba Kuntara berada di sebelahnya.', '2007-06-07', 107, 'Indonesia', NULL, 0, 0, 'mov55b9fed5c16a3.mp4', '813723f23a21b818d1a0d0ce231d15076f.jpeg', NULL, '2015-08-13 10:26:05', NULL, NULL),
(21, 84, 0, 'Wanita', 'Lisa (Meriam Bellina) diperkosa secara sadis oleh Hengky (Tyas Wahono) dan kawan-kawannya, Hengky dan Baron (Jack Maland, Sigit Subangun), lalu dibuang di jalan. Akibatnya, Lisa menderita sakit jiwa. Ia dirawat oleh dr. Iwan (Herman Felani), seorang dokter jiwa, sedang kasusnya ditangani oleh Kapten (Pol) Markus (Mathias Muchus), sahabat Iwan. Kasus ini sukar terpecahkan, karena Lisa menderita amnesia alias lupa masa lalunya. Perawatan di rumah sakit selesai, dan Lisa diajak tinggal di rumah Iwan. Kasus ini untuk Iwan ada duga segi: menyelesaikan tesis doktor dan spesialisasinya dan tuntutan tanggungjawab profesinya. Sedang Markus penasaran karenya banyaknya kasus perkosaan yang tak bisa diselesaikan. Penyelidikan Iwan dan Markus akhirnya bisa menemukan ibu dan adik-adik Lisa. Dengan foto keluarganya itu, ingatan Lisa mulai pulih. Bersamaan dengan berangsur sembuhnya Lisa, Iwan mulai jatuh hati, apalagi Lisa tak hanya menata rumah Iwan tapi juga membuka kios bunga. Dalam keadaan sudah "damai" ini, Hengky dkk muncul lagi. Mula-mula menampakkan diri di kios, lalu meneror Lisa di jalan. Untung Iwan datang dan terjadi perkelahian. Iwan kalah, tapi Hengky dkk diseret ke polisi. Markus yang berusaha menyeret Hengky dkk, kekurangan bukti. Ia dibebaskan pengadilan. Maka Lisa bertindak sendiri. Dikuntitnya Hengky dkk dan akhirnya dengan nekad ditabraknya mereka. Dua kawan Hengky yang dulu ikut memperkosanya, tewas, sedang Hengky hanya terluka. Maka Lisa tampil di pengadilan sebagai terdakwa. Ia dihukum sembilan tahun penjara. Setelah vonis, di luar gedung, ia melihat Hengky mengejeknya. Lisa meledak. Pestol polisi direnggutnya, dan Hengky dihabisi. Pengadilan banding mengukuhkan hukumannya.', '1990-00-00', 76, 'Indonesia', NULL, 0, 0, 'mov55ba3085bfb63.mp4', '662473c904dbc53fda33ebe18c1ef8f3cd.jpeg', NULL, '2015-08-13 10:26:05', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `movies_casts`
--

CREATE TABLE `movies_casts` (
`id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `person_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movies_casts`
--

INSERT INTO `movies_casts` (`id`, `movie_id`, `person_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 2, 7),
(7, 2, 8),
(8, 2, 9),
(9, 2, 10),
(10, 3, 12),
(11, 3, 13),
(12, 3, 14),
(13, 4, 7),
(14, 4, 16),
(15, 5, 18),
(16, 5, 19),
(17, 6, 10),
(18, 6, 21),
(19, 6, 22),
(20, 7, 7),
(21, 7, 24),
(22, 7, 25),
(25, 8, 2),
(26, 8, 5);

-- --------------------------------------------------------

--
-- Table structure for table `movies_directors`
--

CREATE TABLE `movies_directors` (
`id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `person_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movies_directors`
--

INSERT INTO `movies_directors` (`id`, `movie_id`, `person_id`) VALUES
(1, 1, 6),
(2, 2, 11),
(3, 3, 15),
(4, 4, 17),
(5, 5, 20),
(6, 6, 23),
(7, 7, 26),
(10, 8, 1),
(11, 8, 3);

-- --------------------------------------------------------

--
-- Table structure for table `movies_genres`
--

CREATE TABLE `movies_genres` (
`id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `movie_genre_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movies_genres`
--

INSERT INTO `movies_genres` (`id`, `movie_id`, `movie_genre_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 1),
(4, 2, 2),
(5, 3, 2),
(6, 4, 2),
(7, 5, 2),
(8, 6, 2),
(9, 6, 3),
(10, 7, 2),
(13, 8, 1),
(14, 8, 2);

-- --------------------------------------------------------

--
-- Table structure for table `movie_clips`
--

CREATE TABLE `movie_clips` (
`id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text,
  `play_count` int(11) NOT NULL,
  `view_count` int(11) NOT NULL,
  `image_url` text NOT NULL,
  `url_type_id` int(11) NOT NULL,
  `video_url` text NOT NULL,
  `last_update_by_member_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movie_clips`
--

INSERT INTO `movie_clips` (`id`, `movie_id`, `member_id`, `title`, `description`, `play_count`, `view_count`, `image_url`, `url_type_id`, `video_url`, `last_update_by_member_id`, `created_at`, `updated_at`, `status_id`) VALUES
(1, 1, 1, 'trailer', NULL, 0, 0, '59d479947b19b689a565ffade2a0aed101.jpeg', 1, 'trailer-cinta-brontosaurus-852x476-505-1-kbps.mp4', NULL, '2015-07-08 05:33:29', NULL, NULL),
(2, 2, 1, 'trailer', NULL, 0, 0, '6087bfbd03cdbf4b52599e7b061453938f.jpeg', 1, 'trailer-get-married-852x638-505-0-kbps.mp4', NULL, '2015-07-08 05:37:08', NULL, NULL),
(3, 3, 1, 'trailer', NULL, 0, 0, '61a6df7d36508b5ce599611199b63db7a6.jpeg', 1, 'trailer-virgin-2-852x466-505-4-kbps.mp4', NULL, '2015-07-08 05:38:33', NULL, NULL),
(4, 4, 1, 'trailer', NULL, 0, 0, '623f818a3b50f478e3a8e6b07e1b71fae3.jpeg', 1, 'hafalan-shalat-delisa-trailer-852x476-505-2-kbps.mp4', NULL, '2015-07-08 05:38:50', NULL, NULL),
(5, 5, 1, 'trailer', NULL, 0, 0, '636f5118aaa4258a00975a064238cb74f8.jpeg', 1, 'operation-wedding-trailer-852x476-506-1-kbps.mp4', NULL, '2015-07-08 05:39:17', NULL, NULL),
(6, 6, 1, 'trailer', NULL, 0, 0, '646565531280fec350a26755a3eff86e87.jpeg', 1, 'trailer-slank-nggak-ada-matinya-1280x720-909-3-kbps.mp4', NULL, '2015-07-08 05:42:05', NULL, NULL),
(7, 7, 1, 'trailer', NULL, 0, 0, '659c2f008fbd7bb0630d1f65092f197206.jpeg', 1, 'trailer-purple-love-2-menit-852x638-505-1-kbps.mp4', NULL, '2015-07-08 05:42:41', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `movie_comments`
--

CREATE TABLE `movie_comments` (
`id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `rate` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movie_comments`
--

INSERT INTO `movie_comments` (`id`, `movie_id`, `member_id`, `description`, `rate`, `created_at`, `updated_at`, `status_id`) VALUES
(1, 1, 1, '123', 5, '2015-08-09 13:45:51', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `movie_genres`
--

CREATE TABLE `movie_genres` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `img_string` text
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movie_genres`
--

INSERT INTO `movie_genres` (`id`, `name`, `img_string`) VALUES
(0, 'all', 'comedy'),
(1, 'Comedy', 'comedy'),
(2, 'Drama', 'drama'),
(3, 'Documentary', 'documentary');

-- --------------------------------------------------------

--
-- Table structure for table `movie_likes`
--

CREATE TABLE `movie_likes` (
`id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movie_likes`
--

INSERT INTO `movie_likes` (`id`, `movie_id`, `member_id`) VALUES
(3, 1, 0),
(4, 5, 2),
(6, 2, 2),
(7, 2, 0),
(8, 3, 0),
(9, 4, 1),
(10, 4, 0),
(11, 7, 2),
(12, 1, 2),
(28, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `movie_plays`
--

CREATE TABLE `movie_plays` (
`id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `device_id` int(11) DEFAULT NULL,
  `device_name` varchar(255) DEFAULT NULL,
  `ip_address` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movie_plays`
--

INSERT INTO `movie_plays` (`id`, `movie_id`, `member_id`, `device_id`, `device_name`, `ip_address`, `created_at`, `updated_at`, `status_id`) VALUES
(1, 1, 0, 1, 'Samsung A3', '214.289.123.321', '2015-06-18 04:46:51', NULL, NULL),
(2, 5, 2, 2, 'Iphone 5S', '214.289.123.322', '2015-06-18 04:46:51', NULL, NULL),
(3, 7, 2, 1, 'Samsung Note 3', '214.289.123.323', '2015-06-18 04:46:51', NULL, NULL),
(4, 1, 1, 2, 'Iphone 4s', '214.289.123.324', '2015-06-18 04:46:51', NULL, NULL),
(5, 1, 0, 1, 'Lg G4', '214.289.123.325', '2015-06-18 04:46:51', NULL, NULL),
(6, 5, 2, 2, 'Samsung A3', '214.289.123.326', '2015-06-18 04:46:51', NULL, NULL),
(7, 7, 2, 1, 'Iphone 5S', '214.289.123.327', '2015-06-18 04:46:51', NULL, NULL),
(8, 1, 1, 2, 'Samsung Note 3', '214.289.123.328', '2015-06-18 04:46:51', NULL, NULL),
(9, 5, 0, 1, 'Iphone 4s', '214.289.123.329', '2015-06-18 04:46:51', NULL, NULL),
(10, 7, 2, 2, 'Lg G4', '214.289.123.330', '2015-06-18 04:46:51', NULL, NULL),
(11, 5, 2, 1, 'Samsung A3', '214.289.123.331', '2015-06-18 04:46:51', NULL, NULL),
(12, 7, 1, 2, 'Iphone 5S', '214.289.123.332', '2015-06-18 04:46:51', NULL, NULL),
(13, 1, 0, 1, 'Samsung Note 3', '214.289.123.333', '2015-06-18 04:46:51', NULL, NULL),
(14, 1, 2, 2, 'Iphone 4s', '214.289.123.334', '2015-06-18 04:46:51', NULL, NULL),
(15, 5, 2, 1, 'Samsung A3', '214.289.123.335', '2015-06-18 04:46:51', NULL, NULL),
(16, 7, 1, 2, 'Iphone 5S', '214.289.123.336', '2015-06-18 04:46:51', NULL, NULL),
(17, 4, 0, 1, 'Samsung Note 3', '214.289.123.337', '2015-06-18 04:46:51', NULL, NULL),
(18, 7, 2, 2, 'Iphone 4s', '214.289.123.338', '2015-06-18 04:46:51', NULL, NULL),
(19, 1, 2, 1, 'Lg G4', '214.289.123.339', '2015-06-18 04:46:51', NULL, NULL),
(20, 1, 1, 2, 'Samsung A3', '214.289.123.321', '2015-06-18 04:46:51', NULL, NULL),
(21, 5, 1, 1, 'Iphone 5S', '214.289.123.322', '2015-06-18 04:46:51', NULL, NULL),
(22, 7, 0, 2, 'Samsung Note 3', '214.289.123.323', '2015-06-18 04:46:51', NULL, NULL),
(23, 5, 2, 1, 'Samsung A3', '214.289.123.324', '2015-06-18 04:46:51', NULL, NULL),
(24, 7, 2, 2, 'Iphone 5S', '214.289.123.325', '2015-06-18 04:46:51', NULL, NULL),
(25, 7, 1, 1, 'Samsung Note 3', '214.289.123.326', '2015-06-18 04:46:51', NULL, NULL),
(26, 1, 0, 2, 'Iphone 4s', '214.289.123.327', '2015-06-18 04:46:51', NULL, NULL),
(27, 5, 2, 1, 'Lg G4', '214.289.123.328', '2015-06-18 04:46:51', NULL, NULL),
(28, 7, 2, 2, 'Iphone 4s', '214.289.123.329', '2015-06-18 04:46:51', NULL, NULL),
(29, 1, 1, 1, 'Lg G4', '214.289.123.330', '2015-06-18 04:46:51', NULL, NULL),
(30, 5, 0, 2, 'Samsung A3', '214.289.123.331', '2015-06-18 04:46:51', NULL, NULL),
(31, 7, 2, 1, 'Iphone 5S', '214.289.123.332', '2015-06-18 04:46:51', NULL, NULL),
(32, 4, 2, 2, 'Samsung Note 3', '214.289.123.333', '2015-06-18 04:46:51', NULL, NULL),
(33, 1, 1, 1, 'Iphone 4s', '214.289.123.334', '2015-06-18 04:46:51', NULL, NULL),
(34, 4, 0, 2, 'Lg G4', '214.289.123.335', '2015-06-18 04:46:51', NULL, NULL),
(35, 7, 2, 1, 'Iphone 5S', '214.289.123.336', '2015-06-18 04:46:51', NULL, NULL),
(36, 1, 2, 2, 'Samsung A3', '214.289.123.337', '2015-06-18 04:46:51', NULL, NULL),
(37, 1, 1, 1, 'Iphone 5S', '214.289.123.338', '2015-06-18 04:46:51', NULL, NULL),
(38, 5, 0, 2, 'Samsung Note 3', '214.289.123.339', '2015-06-18 04:46:51', NULL, NULL),
(39, 7, 2, 1, 'Iphone 4s', '214.289.123.359', '2015-06-18 04:46:51', NULL, NULL),
(40, 1, 2, 2, 'Lg G4', '214.289.123.360', '2015-06-18 04:46:51', NULL, NULL),
(41, 5, 1, 1, 'Samsung Note 3', '214.289.123.361', '2015-06-18 04:46:51', NULL, NULL),
(42, 7, 1, 2, 'Iphone 4s', '214.289.123.362', '2015-06-18 04:46:51', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `movie_prices`
--

CREATE TABLE `movie_prices` (
`id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `expiry_days` int(11) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movie_prices`
--

INSERT INTO `movie_prices` (`id`, `movie_id`, `expiry_days`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 50, '2015-06-25 03:44:04', NULL),
(2, 1, 5, 100, '2015-06-25 03:44:04', NULL),
(3, 5, 1, 20, '2015-07-26 12:33:13', NULL),
(4, 2, NULL, 0, '2015-07-26 12:41:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `music_albums`
--

CREATE TABLE `music_albums` (
`id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `artist_id` int(11) NOT NULL,
  `description` text,
  `image_url` text,
  `last_update_by_member_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `music_albums`
--

INSERT INTO `music_albums` (`id`, `member_id`, `title`, `artist_id`, `description`, `image_url`, `last_update_by_member_id`, `created_at`, `updated_at`, `status_id`) VALUES
(1, 1, 'Bintang disurga', 2, NULL, '6937e485eb6a4892b1a35c22bb35313d90.jpeg', NULL, '2015-08-06 03:51:15', NULL, NULL),
(2, 1, 'Manusia 1/2  Dewa', 1, NULL, '704dcfe63f219d865fad4bcbd4a0b47411.jpeg', NULL, '2015-08-06 08:52:44', NULL, NULL),
(3, 1, 'Laskar Cinta', 4, NULL, '71c0f5dcda56c250d002d68d4dce925d4b.jpeg', NULL, '2015-08-06 08:53:41', NULL, NULL),
(4, 1, 'Road to Abbey', 3, NULL, '72b4bdcd8ddada2e5205ae023ff705efe2.jpeg', NULL, '2015-08-06 12:07:35', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `music_songs`
--

CREATE TABLE `music_songs` (
`id` int(11) NOT NULL,
  `music_album_id` int(11) NOT NULL,
  `video_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `url_type_id` int(11) NOT NULL,
  `song_url` text,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `track` int(11) DEFAULT NULL,
  `play_count` int(11) NOT NULL,
  `view_count` int(11) NOT NULL,
  `image_url` text,
  `last_update_by_member_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
`id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `notices_category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `persons`
--

CREATE TABLE `persons` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text,
  `birthday` date DEFAULT NULL,
  `gender_id` int(11) DEFAULT NULL,
  `job_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `persons`
--

INSERT INTO `persons` (`id`, `name`, `description`, `birthday`, `gender_id`, `job_id`, `created_at`, `updated_at`, `status_id`) VALUES
(1, 'Raditya Dika', NULL, NULL, NULL, NULL, '2015-05-11 04:14:33', NULL, NULL),
(2, 'Eriska Reinisa', NULL, NULL, NULL, NULL, '2015-05-11 04:14:33', NULL, NULL),
(3, 'Soleh Solihun', NULL, NULL, NULL, NULL, '2015-05-11 04:14:33', NULL, NULL),
(4, 'Pamela Bowie', NULL, NULL, NULL, NULL, '2015-05-11 04:16:45', NULL, NULL),
(5, 'Tyas Mirasih', NULL, NULL, NULL, NULL, '2015-05-11 04:16:45', NULL, NULL),
(6, 'ajar Nugros', NULL, NULL, NULL, NULL, '2015-05-11 04:16:45', NULL, NULL),
(7, 'Nirina Zubir', NULL, NULL, NULL, NULL, '2015-05-11 04:19:31', NULL, NULL),
(8, 'Aming', NULL, NULL, NULL, NULL, '2015-05-11 04:19:31', NULL, NULL),
(9, 'Desta', NULL, NULL, NULL, NULL, '2015-05-18 09:56:15', NULL, NULL),
(10, 'Ringgo Agus Rahman', NULL, NULL, NULL, NULL, '2015-05-18 09:56:15', NULL, NULL),
(11, 'Hanung Bramantyo', NULL, NULL, NULL, NULL, '2015-05-18 09:56:15', NULL, NULL),
(12, 'Laudya Chintya Bella', NULL, NULL, NULL, NULL, '2015-05-18 09:57:20', NULL, NULL),
(13, 'Ardina Rasti', NULL, NULL, NULL, NULL, '2015-06-14 08:19:54', NULL, NULL),
(14, 'Angie', NULL, NULL, NULL, NULL, '2015-06-14 08:19:54', NULL, NULL),
(15, 'Hanny Saputra', NULL, NULL, NULL, NULL, '2015-06-14 08:19:54', NULL, NULL),
(16, 'Reza Rahadian', NULL, NULL, NULL, NULL, '2015-06-14 08:19:54', NULL, NULL),
(17, 'Sony Gaokasak', NULL, NULL, NULL, NULL, '2015-06-14 08:19:54', NULL, NULL),
(18, 'Yuki Kato', NULL, NULL, NULL, NULL, '2015-06-14 08:19:54', NULL, NULL),
(19, 'Bucek', NULL, NULL, NULL, NULL, '2015-06-14 08:19:54', NULL, NULL),
(20, 'Monty Tiwa', NULL, NULL, NULL, NULL, '2015-06-14 08:19:54', NULL, NULL),
(21, 'Adipati Dolken', NULL, NULL, NULL, NULL, '2015-06-14 08:19:54', NULL, NULL),
(22, 'Ricky Harun', NULL, NULL, NULL, NULL, '2015-06-14 08:19:54', NULL, NULL),
(23, 'Fajar Bustomi', NULL, NULL, NULL, NULL, '2015-06-14 08:39:15', NULL, NULL),
(24, 'Kirana Larasati', NULL, NULL, NULL, NULL, '2015-06-14 08:39:15', NULL, NULL),
(25, 'Pasha', NULL, NULL, NULL, NULL, '2015-06-14 08:40:32', NULL, NULL),
(26, 'Guntur Soeharjanto', NULL, NULL, NULL, NULL, '2015-06-14 08:40:32', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `points`
--

CREATE TABLE `points` (
`id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `point_category_id` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status_id` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `points`
--

INSERT INTO `points` (`id`, `member_id`, `point_category_id`, `total`, `created_at`, `updated_at`, `status_id`) VALUES
(1, 1, 1, 50, '2015-07-22 18:59:13', NULL, NULL),
(2, 1, 1, 50, '2015-07-22 18:59:23', NULL, NULL),
(3, 1, 1, 50, '2015-07-22 19:00:30', NULL, NULL),
(4, 1, 1, 50, '2015-07-22 19:00:56', NULL, NULL),
(5, 1, 1, 50, '2015-08-02 15:11:47', NULL, NULL),
(6, 1, 1, 5000, '2015-08-02 15:12:03', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
`id` int(11) NOT NULL,
  `video_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` text,
  `image_url` text,
  `link_url` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `video_id`, `title`, `description`, `image_url`, `link_url`, `created_at`, `updated_at`, `status_id`) VALUES
(1, 2, 'Get Married', 'Tonton Gratis hanya di nomad sekarang juga.', NULL, NULL, '2015-08-11 10:55:01', NULL, NULL),
(2, 64, 'RTV', 'Saksikan siaran langsung RTV langsung dari gengaman tangan anda.', NULL, NULL, '2015-08-11 10:54:56', NULL, NULL),
(3, 18, 'Mari Masak', 'Belajar masak tanpa repot melalui nomad.', NULL, NULL, '2015-08-11 10:54:48', NULL, NULL),
(4, NULL, 'Cek Fanpage Kami', NULL, '680da143d6baf906b4c88307076cd9451e.jpeg', 'https://www.facebook.com/nomadindo', '2015-08-11 11:02:34', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
`id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id`, `name`) VALUES
(1, 'active'),
(2, 'inactive');

-- --------------------------------------------------------

--
-- Table structure for table `tv_shows`
--

CREATE TABLE `tv_shows` (
`id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text,
  `image_url` text,
  `last_update_by_member_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tv_shows`
--

INSERT INTO `tv_shows` (`id`, `member_id`, `title`, `description`, `image_url`, `last_update_by_member_id`, `created_at`, `updated_at`, `status_id`) VALUES
(1, 1, 'FTV', NULL, NULL, NULL, '2015-08-06 03:51:15', NULL, NULL),
(2, 1, '-', NULL, NULL, NULL, '2015-08-06 08:52:44', NULL, NULL),
(3, 1, '-', NULL, NULL, NULL, '2015-08-06 08:53:41', NULL, NULL),
(4, 1, 'Happy Trees Friend', NULL, NULL, NULL, '2015-08-06 12:07:35', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tv_shows_categories`
--

CREATE TABLE `tv_shows_categories` (
`id` int(11) NOT NULL,
  `tv_show_id` int(11) NOT NULL,
  `tv_show_category_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tv_shows_categories`
--

INSERT INTO `tv_shows_categories` (`id`, `tv_show_id`, `tv_show_category_id`) VALUES
(1, 1, 1),
(2, 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tv_show_categories`
--

CREATE TABLE `tv_show_categories` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `img_string` text
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tv_show_categories`
--

INSERT INTO `tv_show_categories` (`id`, `name`, `img_string`) VALUES
(0, 'All', 'comedy'),
(1, 'humor', 'comedy'),
(2, 'cartoon', 'comedy');

-- --------------------------------------------------------

--
-- Table structure for table `tv_show_episodes`
--

CREATE TABLE `tv_show_episodes` (
`id` int(11) NOT NULL,
  `tv_show_id` int(11) NOT NULL,
  `video_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `url_type_id` int(11) NOT NULL,
  `video_url` text,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `season` int(11) DEFAULT NULL,
  `episode` int(11) DEFAULT NULL,
  `play_count` int(11) NOT NULL,
  `view_count` int(11) NOT NULL,
  `image_url` text,
  `last_update_by_member_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tv_show_episodes`
--

INSERT INTO `tv_show_episodes` (`id`, `tv_show_id`, `video_id`, `member_id`, `url_type_id`, `video_url`, `title`, `description`, `season`, `episode`, `play_count`, `view_count`, `image_url`, `last_update_by_member_id`, `created_at`, `updated_at`, `status_id`) VALUES
(1, 1, 52, 1, 1, 'ftv-ustadz-jaka-full-movie-852x466-504-8-kbps.mp4', 'Ustadz Jaka', NULL, NULL, NULL, 1, 17, '855dbf7c11e52ebafdec91199ef841da88.jpeg', NULL, '2015-08-06 03:52:11', NULL, NULL),
(4, 1, 53, 1, 1, 'ftv-kepadamu-aku-berserah-full-movie-852x466-504-8-kbps.mp4', 'Kepadamu Aku Berserah', NULL, NULL, NULL, 0, 0, '868c7a08762581e53d8493480de95b39f4.jpeg', NULL, '2015-08-06 09:23:39', NULL, NULL),
(5, 1, 54, 1, 1, 'ftv-kutemukan-engkau-di-setiap-tahajudku-full-movie-852x466-504-8-kbps.mp4', 'Kutemukan Engkau di Setiap Tahajudku', NULL, NULL, NULL, 0, 0, '8786257d9457a713c8250cc8c21f9e3551.jpeg', NULL, '2015-08-06 09:23:39', NULL, NULL),
(8, 4, 55, 1, 2, 'opAinuVvKfw', 'One Foot In Grave', NULL, 1, 1, 0, 1, NULL, NULL, '2015-08-06 12:12:27', NULL, NULL),
(9, 4, 56, 1, 2, 'R_KEUb1Qkgk', 'Lesser of Two Evils', NULL, 1, 3, 0, 0, NULL, NULL, '2015-08-06 12:12:27', NULL, NULL),
(10, 4, 57, 1, 2, 'lRcKvSn-TKM', 'The Third Degre', NULL, 1, 2, 0, 0, NULL, NULL, '2015-08-06 12:14:44', NULL, NULL),
(11, 4, 58, 1, 2, 'OyvYuSPIJrY', 'Marooned FIve', NULL, 2, 1, 0, 0, NULL, NULL, '2015-08-06 12:14:44', NULL, NULL),
(12, 4, 59, 1, 2, 'y0dihusPRII', 'Deep Six', NULL, 2, 2, 0, 0, NULL, NULL, '2015-08-06 12:15:02', NULL, NULL),
(13, 4, 60, 1, 2, 'pqg-lE3641c', 'Seventh Heaven', NULL, 2, 3, 0, 0, NULL, NULL, '2015-08-06 12:15:02', NULL, NULL),
(14, 4, 61, 1, 2, 'VgD5VeB7NaQ', 'behind the eight ball', NULL, 1, 4, 0, 0, NULL, NULL, '2015-08-06 12:15:21', NULL, NULL),
(15, 4, 62, 1, 2, '6WrAYm-mFQg', 'Nine Lives', NULL, 2, 5, 0, 0, NULL, NULL, '2015-08-06 12:15:21', NULL, NULL),
(16, 1, 87, 1, 1, 'ftv-cahaya-cahaya-cintamu.mp4', 'Cahaya Cahaya Cintamu', NULL, NULL, NULL, 0, 0, '886aaf1d2b413af7232c02e366f7736f7c.jpeg', NULL, '2015-08-19 03:31:04', NULL, NULL),
(17, 1, 88, 1, 1, 'ftv-kepadamu-aku-berserah-full-movie-852x466-504-8-kbps.mp4', 'Kepadamu Aku Berserah', NULL, NULL, NULL, 0, 0, NULL, NULL, '2015-08-19 03:31:04', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tv_show_episode_comments`
--

CREATE TABLE `tv_show_episode_comments` (
`id` int(11) NOT NULL,
  `tv_show_episode_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=240 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tv_show_episode_comments`
--

INSERT INTO `tv_show_episode_comments` (`id`, `tv_show_episode_id`, `member_id`, `description`, `created_at`, `updated_at`, `status_id`) VALUES
(1, 1, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. Pellentesque vehicula vitae enim vel aliquam. Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(2, 2, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(3, 3, 2, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(4, 4, 0, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(5, 5, 1, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(6, 6, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(7, 7, 0, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(8, 8, 1, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(9, 9, 2, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(10, 10, 0, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(11, 11, 1, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(12, 12, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(13, 13, 0, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(14, 14, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. Pellentesque vehicula vitae enim vel aliquam. Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(15, 15, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(16, 16, 0, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(17, 17, 1, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(18, 18, 2, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(19, 19, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(20, 20, 1, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(21, 21, 2, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(22, 22, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. Pellentesque vehicula vitae enim vel aliquam. Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(23, 23, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(24, 24, 2, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(25, 25, 0, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(26, 26, 1, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(27, 27, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(28, 28, 0, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(29, 29, 1, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(30, 30, 2, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(31, 31, 0, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(32, 32, 1, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(33, 33, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(34, 34, 0, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(35, 35, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. Pellentesque vehicula vitae enim vel aliquam. Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(36, 36, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(37, 37, 0, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(38, 1, 1, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(39, 2, 2, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(40, 3, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(41, 4, 1, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(42, 5, 2, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(43, 6, 0, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(44, 7, 1, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(45, 8, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(46, 9, 0, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(47, 10, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. Pellentesque vehicula vitae enim vel aliquam. Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(48, 11, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(49, 12, 0, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(50, 13, 1, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(51, 14, 2, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(52, 15, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(53, 16, 1, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(54, 17, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(55, 18, 0, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(56, 19, 1, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(57, 20, 2, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(58, 21, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(59, 22, 1, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(60, 23, 2, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(61, 24, 0, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(62, 25, 1, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(63, 26, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(64, 27, 0, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(65, 28, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. Pellentesque vehicula vitae enim vel aliquam. Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(66, 29, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(67, 30, 0, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(68, 31, 1, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(69, 32, 2, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(70, 33, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(71, 34, 1, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(72, 35, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. Pellentesque vehicula vitae enim vel aliquam. Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(73, 36, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(74, 37, 1, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(75, 1, 2, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(76, 2, 0, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(77, 3, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(78, 4, 2, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(79, 5, 0, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(80, 6, 1, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(81, 7, 2, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(82, 8, 0, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(83, 9, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(84, 10, 2, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(85, 11, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. Pellentesque vehicula vitae enim vel aliquam. Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(86, 12, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(87, 13, 2, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(88, 14, 0, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(89, 15, 1, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(90, 16, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(91, 17, 0, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(92, 18, 1, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(93, 19, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. Pellentesque vehicula vitae enim vel aliquam. Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(94, 20, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(95, 21, 1, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(96, 22, 2, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(97, 23, 0, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(98, 24, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(99, 25, 2, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(100, 26, 0, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(101, 27, 1, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(102, 28, 2, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(103, 29, 0, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(104, 30, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(105, 31, 2, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(106, 32, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. Pellentesque vehicula vitae enim vel aliquam. Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(107, 33, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(108, 34, 2, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(109, 35, 0, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(110, 36, 1, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(111, 37, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(112, 1, 0, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(113, 2, 1, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(114, 3, 2, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(115, 4, 0, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(116, 5, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(117, 6, 2, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(118, 7, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. Pellentesque vehicula vitae enim vel aliquam. Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(119, 8, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(120, 9, 2, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(121, 10, 0, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(122, 11, 1, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(123, 12, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(124, 13, 0, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(125, 14, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(126, 15, 2, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(127, 16, 0, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(128, 17, 1, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(129, 18, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(130, 19, 0, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(131, 20, 1, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(132, 21, 2, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(133, 22, 0, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(134, 23, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(135, 24, 2, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(136, 25, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. Pellentesque vehicula vitae enim vel aliquam. Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(137, 26, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(138, 27, 2, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(139, 28, 0, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(140, 29, 1, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(141, 30, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(142, 31, 0, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(143, 32, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. Pellentesque vehicula vitae enim vel aliquam. Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(144, 33, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(145, 34, 0, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(146, 35, 1, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(147, 36, 2, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(148, 37, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(149, 1, 1, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(150, 2, 2, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(151, 3, 0, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(152, 4, 1, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(153, 5, 2, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(154, 6, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(155, 7, 1, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(156, 8, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. Pellentesque vehicula vitae enim vel aliquam. Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(157, 9, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(158, 10, 1, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(159, 11, 2, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(160, 12, 0, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(161, 13, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(162, 14, 2, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(163, 15, 0, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(164, 16, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. Pellentesque vehicula vitae enim vel aliquam. Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(165, 17, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(166, 18, 0, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(167, 19, 1, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(168, 20, 2, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(169, 21, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(170, 22, 1, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(171, 23, 2, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(172, 24, 0, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(173, 25, 1, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(174, 26, 2, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(175, 27, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(176, 28, 1, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(177, 29, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. Pellentesque vehicula vitae enim vel aliquam. Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(178, 30, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(179, 31, 1, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(180, 32, 2, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(181, 33, 0, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(182, 34, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(183, 35, 2, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(184, 36, 0, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(185, 37, 1, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(186, 1, 2, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(187, 2, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(188, 3, 1, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(189, 4, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. Pellentesque vehicula vitae enim vel aliquam. Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(190, 5, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(191, 6, 1, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(192, 7, 2, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(193, 8, 0, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(194, 9, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(195, 10, 2, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(196, 11, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(197, 12, 1, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(198, 13, 2, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(199, 14, 0, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(200, 15, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(201, 16, 2, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(202, 17, 0, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(203, 18, 1, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(204, 19, 2, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(205, 20, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(206, 21, 1, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(207, 22, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. Pellentesque vehicula vitae enim vel aliquam. Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(208, 23, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(209, 24, 1, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(210, 25, 2, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(211, 26, 0, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(212, 27, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(213, 28, 2, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(214, 29, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. Pellentesque vehicula vitae enim vel aliquam. Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(215, 30, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(216, 31, 2, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL);
INSERT INTO `tv_show_episode_comments` (`id`, `tv_show_episode_id`, `member_id`, `description`, `created_at`, `updated_at`, `status_id`) VALUES
(217, 32, 0, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(218, 33, 1, 'Pellentesque vehicula vitae enim vel aliquam.', '2015-07-01 13:06:11', NULL, NULL),
(219, 34, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis suscipit mauris. Integer fermentum velit a augue sodales tincidunt. ', '2015-07-01 13:06:11', NULL, NULL),
(220, 35, 0, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(221, 36, 1, 'Suspendisse dignissim sit amet sem quis maximus. Proin tristique aliquam felis. Etiam a bibendum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus', '2015-07-01 13:06:11', NULL, NULL),
(222, 37, 2, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer porttitor ut mauris vitae pellentesque. Nullam porttitor diam nisi, nec sagittis eros tincidunt et. Sed volutpat suscipit diam in elementum. ', '2015-07-01 13:06:11', NULL, NULL),
(223, 1, 1, '123', '2015-07-01 13:06:11', NULL, NULL),
(224, 1, 1, '123', '2015-07-01 13:06:11', NULL, NULL),
(225, 1, 1, '123', '2015-07-01 13:06:11', NULL, NULL),
(226, 1, 1, '123', '2015-07-01 13:06:11', NULL, NULL),
(227, 1, 1, '123', '2015-07-01 13:06:11', NULL, NULL),
(228, 1, 1, '123', '2015-07-01 13:06:11', NULL, NULL),
(229, 1, 1, '123', '2015-07-01 13:06:11', NULL, NULL),
(230, 1, 1, '123', '2015-07-01 13:06:11', NULL, NULL),
(231, 1, 1, '123', '2015-07-01 13:06:11', NULL, NULL),
(232, 1, 1, '123', '2015-07-01 13:06:11', NULL, NULL),
(233, 1, 1, '123', '2015-07-01 13:06:11', NULL, NULL),
(234, 1, 1, '123', '2015-07-08 16:43:56', NULL, NULL),
(235, 1, 1, '123', '2015-07-22 16:09:29', NULL, NULL),
(236, 1, 1, '123', '2015-08-08 14:41:13', NULL, NULL),
(237, 1, 1, '123', '2015-08-08 14:42:19', NULL, NULL),
(238, 1, 1, '123', '2015-08-08 14:43:50', NULL, NULL),
(239, 1, 1, '123', '2015-08-08 16:54:24', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tv_show_episode_likes`
--

CREATE TABLE `tv_show_episode_likes` (
`id` int(11) NOT NULL,
  `tv_show_episode_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tv_show_episode_likes`
--

INSERT INTO `tv_show_episode_likes` (`id`, `tv_show_episode_id`, `member_id`) VALUES
(3, 1, 0),
(4, 5, 2),
(6, 2, 2),
(7, 2, 0),
(8, 3, 0),
(9, 4, 1),
(10, 4, 0),
(11, 7, 2),
(12, 1, 2),
(14, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tv_show_episode_plays`
--

CREATE TABLE `tv_show_episode_plays` (
`id` int(11) NOT NULL,
  `tv_show_episode_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `device_id` int(11) DEFAULT NULL,
  `device_name` varchar(255) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tv_show_episode_plays`
--

INSERT INTO `tv_show_episode_plays` (`id`, `tv_show_episode_id`, `member_id`, `device_id`, `device_name`, `ip_address`, `created_at`, `updated_at`, `status_id`) VALUES
(1, 1, 0, 1, 'Nexus 7', '214.289.123.321', '2015-06-18 04:43:10', NULL, NULL),
(2, 4, 2, 2, 'Iphone 4', '214.289.123.322', '2015-06-18 04:43:10', NULL, NULL),
(3, 7, 2, 1, 'Samsung S4', '214.289.123.323', '2015-06-18 04:43:10', NULL, NULL),
(4, 10, 1, 2, 'Iphone 5', '214.289.123.324', '2015-06-18 04:43:10', NULL, NULL),
(5, 13, 0, 1, 'Lg G3', '214.289.123.325', '2015-06-18 04:43:10', NULL, NULL),
(6, 16, 2, 2, 'Iphone 5S', '214.289.123.326', '2015-06-18 04:43:10', NULL, NULL),
(7, 19, 2, 1, 'Nexus 7', '214.289.123.327', '2015-06-18 04:43:10', NULL, NULL),
(8, 22, 1, 2, 'Iphone 4', '214.289.123.328', '2015-06-18 04:43:10', NULL, NULL),
(9, 25, 0, 1, 'Samsung S4', '214.289.123.329', '2015-06-18 04:43:10', NULL, NULL),
(10, 28, 2, 2, 'Iphone 5', '214.289.123.330', '2015-06-18 04:43:10', NULL, NULL),
(11, 31, 2, 1, 'Lg G3', '214.289.123.331', '2015-06-18 04:43:10', NULL, NULL),
(12, 34, 1, 2, 'Iphone 5S', '214.289.123.332', '2015-06-18 04:43:10', NULL, NULL),
(13, 2, 0, 1, 'Nexus 7', '214.289.123.333', '2015-06-18 04:43:10', NULL, NULL),
(14, 5, 2, 2, 'Iphone 4', '214.289.123.334', '2015-06-18 04:43:10', NULL, NULL),
(15, 8, 2, 1, 'Samsung S4', '214.289.123.335', '2015-06-18 04:43:10', NULL, NULL),
(16, 11, 1, 2, 'Iphone 5', '214.289.123.336', '2015-06-18 04:43:10', NULL, NULL),
(17, 14, 0, 1, 'Lg G3', '214.289.123.337', '2015-06-18 04:43:10', NULL, NULL),
(18, 17, 2, 2, 'Iphone 5S', '214.289.123.338', '2015-06-18 04:43:10', NULL, NULL),
(19, 20, 2, 1, 'Nexus 7', '214.289.123.339', '2015-06-18 04:43:10', NULL, NULL),
(20, 23, 1, 2, 'Iphone 4', '214.289.123.321', '2015-06-18 04:43:10', NULL, NULL),
(21, 26, 1, 1, 'Samsung S4', '214.289.123.322', '2015-06-18 04:43:10', NULL, NULL),
(22, 1, 0, 2, 'Iphone 5', '214.289.123.323', '2015-06-18 04:43:10', NULL, NULL),
(23, 4, 2, 1, 'Lg G3', '214.289.123.324', '2015-06-18 04:43:10', NULL, NULL),
(24, 7, 2, 2, 'Iphone 5S', '214.289.123.325', '2015-06-18 04:43:10', NULL, NULL),
(25, 1, 1, 1, 'Nexus 7', '214.289.123.326', '2015-06-18 04:43:10', NULL, NULL),
(26, 4, 0, 2, 'Iphone 4', '214.289.123.327', '2015-06-18 04:43:10', NULL, NULL),
(27, 7, 2, 1, 'Samsung S4', '214.289.123.328', '2015-06-18 04:43:10', NULL, NULL),
(28, 10, 2, 2, 'Iphone 5', '214.289.123.329', '2015-06-18 04:43:10', NULL, NULL),
(29, 2, 1, 1, 'Lg G3', '214.289.123.330', '2015-06-18 04:43:10', NULL, NULL),
(30, 5, 0, 2, 'Iphone 5S', '214.289.123.331', '2015-06-18 04:43:10', NULL, NULL),
(31, 8, 2, 1, 'Nexus 7', '214.289.123.332', '2015-06-18 04:43:10', NULL, NULL),
(32, 11, 2, 2, 'Iphone 4', '214.289.123.333', '2015-06-18 04:43:10', NULL, NULL),
(33, 14, 1, 1, 'Samsung S4', '214.289.123.334', '2015-06-18 04:43:10', NULL, NULL),
(34, 17, 0, 2, 'Iphone 5', '214.289.123.335', '2015-06-18 04:43:10', NULL, NULL),
(35, 20, 2, 1, 'Lg G3', '214.289.123.336', '2015-06-18 04:43:10', NULL, NULL),
(36, 23, 2, 2, 'Iphone 5S', '214.289.123.337', '2015-06-18 04:43:10', NULL, NULL),
(37, 1, 1, 1, 'Nexus 7', '214.289.123.338', '2015-06-18 04:43:10', NULL, NULL),
(38, 4, 0, 2, 'Iphone 4', '214.289.123.339', '2015-06-18 04:43:10', NULL, NULL),
(39, 7, 2, 1, 'Samsung S4', '214.289.123.359', '2015-06-18 04:43:10', NULL, NULL),
(40, 10, 2, 2, 'Iphone 5', '214.289.123.360', '2015-06-18 04:43:10', NULL, NULL),
(41, 13, 1, 1, 'Lg G3', '214.289.123.361', '2015-06-18 04:43:10', NULL, NULL),
(42, 16, 1, 2, 'Iphone 5S', '214.289.123.362', '2015-06-18 04:43:10', NULL, NULL),
(43, 1, 1, 0, '0', '0', '2015-07-04 17:41:16', NULL, NULL),
(44, 1, 1, 0, '0', '0', '2015-07-22 16:12:38', NULL, NULL),
(45, 2, 2, 0, '0', '0', '2015-07-22 16:12:43', NULL, NULL),
(46, 1, 1, 0, '0', '0', '2015-07-25 17:03:27', NULL, NULL),
(47, 1, 1, 0, '0', '0', '2015-08-01 18:35:12', NULL, NULL),
(48, 1, 1, 0, '0', '0', '2015-08-01 18:35:34', NULL, NULL),
(49, 1, 1, 0, '0', '0', '2015-08-01 18:35:46', NULL, NULL),
(50, 1, 1, 0, '0', '0', '2015-08-08 14:45:27', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tv_show_episode_prices`
--

CREATE TABLE `tv_show_episode_prices` (
`id` int(11) NOT NULL,
  `tv_show_episode_id` int(11) NOT NULL,
  `expiry_days` int(11) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tv_show_episode_prices`
--

INSERT INTO `tv_show_episode_prices` (`id`, `tv_show_episode_id`, `expiry_days`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 50, '2015-06-25 03:44:04', NULL),
(2, 1, 5, 100, '2015-06-25 03:44:04', NULL),
(3, 5, 1, 20, '2015-07-26 12:33:13', NULL),
(4, 2, NULL, 0, '2015-07-26 12:41:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `url_types`
--

CREATE TABLE `url_types` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `url_types`
--

INSERT INTO `url_types` (`id`, `name`) VALUES
(1, 'local'),
(2, 'youtube'),
(3, 'direct');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
`id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `member_level_id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `member_id`, `member_level_id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'admin', 'tUu1qHcde0diwUol3xeI-18MuHkkprQI', '$2y$13$nJ1WDlBaGcbCdbNC5.5l4.sgy.OMEKCqtDQOdQ2OWpgiKRWYyzzne', 'RkD_Jw0_8HEedzLk7MM-ZKEFfYR7VbMr_1392559490', 'sfriesen@jenkins.info', 10, 1392559490, 1392559490);

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Snickers Indonesia', '2015-07-22 13:49:32', NULL, NULL),
(2, 'Telkomesl', '2015-07-22 13:49:32', NULL, NULL),
(3, 'Oreo Asia', '2015-07-22 14:28:06', NULL, NULL),
(4, 'Axis', '2015-07-22 14:28:06', NULL, NULL),
(5, 'Frisian Flag\r\n', '2015-07-22 14:28:14', NULL, NULL),
(6, 'Ambi Pur Indonesia', '2015-07-22 14:48:55', NULL, NULL),
(7, 'Indosat\r\n', '2015-07-22 14:48:55', NULL, NULL),
(8, 'Tokopedia', '2015-07-22 14:51:57', NULL, NULL),
(9, 'Olx Indonesia', '2015-07-22 14:51:57', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
`id` int(11) NOT NULL,
  `video_type_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `video_type_id`, `created_at`, `updated_at`, `status_id`) VALUES
(1, 1, '2015-06-30 17:00:00', NULL, NULL),
(2, 1, '2015-06-30 17:00:00', NULL, NULL),
(3, 1, '2015-06-30 17:00:00', NULL, NULL),
(4, 1, '2015-06-30 17:00:00', NULL, NULL),
(5, 1, '2015-06-30 17:00:00', NULL, NULL),
(6, 1, '2015-06-30 17:00:00', NULL, NULL),
(7, 1, '2015-06-30 17:00:00', NULL, NULL),
(8, 2, '2015-06-30 17:00:00', NULL, NULL),
(11, 2, '2015-06-30 17:00:00', NULL, NULL),
(12, 2, '2015-06-30 17:00:00', NULL, NULL),
(13, 2, '2015-06-30 17:00:00', NULL, NULL),
(14, 2, '2015-06-30 17:00:00', NULL, NULL),
(15, 2, '2015-06-30 17:00:00', NULL, NULL),
(16, 2, '2015-06-30 17:00:00', NULL, NULL),
(17, 2, '2015-06-30 17:00:00', NULL, NULL),
(18, 2, '2015-06-30 17:00:00', NULL, NULL),
(19, 2, '2015-06-30 17:00:00', NULL, NULL),
(20, 2, '2015-06-30 17:00:00', NULL, NULL),
(21, 2, '2015-06-30 17:00:00', NULL, NULL),
(22, 2, '2015-06-30 17:00:00', NULL, NULL),
(23, 2, '2015-06-30 17:00:00', NULL, NULL),
(24, 2, '2015-06-30 17:00:00', NULL, NULL),
(25, 2, '2015-06-30 17:00:00', NULL, NULL),
(26, 2, '2015-06-30 17:00:00', NULL, NULL),
(27, 2, '2015-06-30 17:00:00', NULL, NULL),
(28, 2, '2015-06-30 17:00:00', NULL, NULL),
(29, 2, '2015-06-30 17:00:00', NULL, NULL),
(30, 2, '2015-06-30 17:00:00', NULL, NULL),
(31, 2, '2015-06-30 17:00:00', NULL, NULL),
(32, 2, '2015-06-30 17:00:00', NULL, NULL),
(33, 2, '2015-06-30 17:00:00', NULL, NULL),
(34, 2, '2015-06-30 17:00:00', NULL, NULL),
(35, 2, '2015-06-30 17:00:00', NULL, NULL),
(36, 2, '2015-06-30 17:00:00', NULL, NULL),
(37, 2, '2015-06-30 17:00:00', NULL, NULL),
(38, 2, '2015-06-30 17:00:00', NULL, NULL),
(39, 2, '2015-06-30 17:00:00', NULL, NULL),
(40, 2, '2015-06-30 17:00:00', NULL, NULL),
(41, 2, '2015-06-30 17:00:00', NULL, NULL),
(42, 2, '2015-06-30 17:00:00', NULL, NULL),
(43, 2, '2015-06-30 17:00:00', NULL, NULL),
(44, 2, '2015-06-30 17:00:00', NULL, NULL),
(45, 2, '2015-06-30 17:00:00', NULL, NULL),
(46, 2, '2015-06-30 17:00:00', NULL, NULL),
(50, 2, '2015-06-30 17:00:00', NULL, NULL),
(51, 1, '2015-07-07 06:41:03', NULL, NULL),
(52, 4, '2015-08-06 03:52:40', NULL, NULL),
(53, 4, '2015-08-06 08:51:25', NULL, NULL),
(54, 4, '2015-08-06 12:10:43', NULL, NULL),
(55, 4, '2015-08-06 12:07:57', NULL, NULL),
(56, 4, '2015-08-06 12:07:57', NULL, NULL),
(57, 4, '2015-08-06 12:08:05', NULL, NULL),
(58, 4, '2015-08-06 12:08:05', NULL, NULL),
(59, 4, '2015-08-06 12:17:04', NULL, NULL),
(60, 4, '2015-08-06 12:17:04', NULL, NULL),
(61, 4, '2015-08-06 12:17:11', NULL, NULL),
(62, 4, '2015-08-06 12:17:11', NULL, NULL),
(63, 1, '2015-08-08 11:16:40', NULL, NULL),
(64, 5, '2015-08-09 09:03:29', NULL, NULL),
(65, 3, '2015-08-09 16:50:31', NULL, NULL),
(66, 3, '2015-08-09 16:50:39', NULL, NULL),
(67, 3, '2015-08-09 16:50:39', NULL, NULL),
(68, 3, '2015-08-09 16:50:45', NULL, NULL),
(69, 3, '2015-08-09 16:50:45', NULL, NULL),
(70, 3, '2015-08-09 16:50:52', NULL, NULL),
(71, 3, '2015-08-09 16:50:52', NULL, NULL),
(72, 1, '2015-08-13 10:52:30', NULL, NULL),
(73, 1, '2015-08-13 10:52:30', NULL, NULL),
(74, 1, '2015-08-13 10:52:30', NULL, NULL),
(75, 1, '2015-08-13 10:52:30', NULL, NULL),
(76, 1, '2015-08-13 10:52:30', NULL, NULL),
(77, 1, '2015-08-13 10:52:30', NULL, NULL),
(78, 1, '2015-08-13 10:52:30', NULL, NULL),
(79, 1, '2015-08-13 10:52:30', NULL, NULL),
(80, 1, '2015-08-13 10:52:30', NULL, NULL),
(81, 1, '2015-08-13 10:52:30', NULL, NULL),
(82, 1, '2015-08-13 10:52:30', NULL, NULL),
(83, 1, '2015-08-13 10:52:30', NULL, NULL),
(84, 1, '2015-08-13 10:52:30', NULL, NULL),
(85, 1, '2015-08-13 10:52:30', NULL, NULL),
(86, 1, '2015-08-13 10:52:30', NULL, NULL),
(87, 4, '2015-08-19 03:27:51', NULL, NULL),
(88, 4, '2015-08-19 03:27:51', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `video_purchases`
--

CREATE TABLE `video_purchases` (
`id` int(11) NOT NULL,
  `video_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `point` double NOT NULL,
  `expiry_days` int(11) NOT NULL,
  `expired_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `video_purchases`
--

INSERT INTO `video_purchases` (`id`, `video_id`, `member_id`, `point`, `expiry_days`, `expired_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 50, 3, '2015-08-02 04:02:30', '2015-06-24 04:02:30', NULL),
(2, 1, 1, 50, 3, '2015-08-27 04:09:17', '2015-06-24 04:09:17', NULL),
(4, 1, 1, 50, 3, '2015-05-07 04:09:37', '2015-06-24 04:09:37', NULL),
(5, 1, 1, 50, 3, '2015-08-02 04:32:54', '2015-06-24 04:32:54', NULL),
(7, 2, 1, 50, 3, '2015-06-30 21:40:01', '2015-06-27 14:40:01', NULL),
(8, 7, 1, 50, 3, '2015-06-30 21:41:18', '2015-06-27 14:41:18', NULL),
(12, 4, 1, 0, 7, '2015-07-07 21:53:55', '2015-07-04 14:53:55', NULL),
(23, 1, 1, 50, 5, '2015-08-07 15:07:05', '2015-08-02 15:07:06', NULL),
(24, 1, 1, 50, 5, '2015-08-07 15:07:44', '2015-08-02 15:07:44', NULL),
(25, 1, 1, 50, 5, '2015-08-07 15:07:54', '2015-08-02 15:07:54', NULL),
(26, 1, 1, 50, 5, '2015-08-07 15:10:51', '2015-08-02 15:10:51', NULL),
(27, 1, 1, 50, 5, '2015-08-07 15:10:59', '2015-08-02 15:10:59', NULL),
(28, 1, 1, 50, 5, '2015-08-17 09:20:41', '2015-08-12 09:20:42', NULL),
(29, 1, 1, 50, 5, '2015-08-17 09:20:47', '2015-08-12 09:20:47', NULL),
(30, 1, 1, 50, 7, '2015-08-19 09:46:50', '2015-08-12 09:46:50', NULL),
(31, 1, 1, 50, 7, '2015-08-19 09:47:12', '2015-08-12 09:47:13', NULL),
(32, 1, 1, 50, 7, '2015-08-19 10:04:10', '2015-08-12 10:04:10', NULL),
(33, 1, 2, 50, 7, '2015-08-19 10:04:23', '2015-08-12 10:04:23', NULL),
(34, 65, 1, 50, 5, '2015-08-17 17:13:57', '2015-08-12 17:13:57', NULL),
(35, 1, 1, 50, 5, '2015-08-17 17:25:06', '2015-08-12 17:25:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `video_types`
--

CREATE TABLE `video_types` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `video_types`
--

INSERT INTO `video_types` (`id`, `name`) VALUES
(1, 'Movie'),
(2, 'Edutainment'),
(3, 'Event'),
(4, 'TV Show'),
(5, 'Live Channel');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ad_images`
--
ALTER TABLE `ad_images`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ad_videos`
--
ALTER TABLE `ad_videos`
 ADD PRIMARY KEY (`id`), ADD KEY `ad_id` (`ad_id`), ADD KEY `vendor_id` (`vendor_id`), ADD KEY `url_type_id` (`url_type_id`);

--
-- Indexes for table `ad_videos_categories`
--
ALTER TABLE `ad_videos_categories`
 ADD PRIMARY KEY (`id`), ADD KEY `edutaiment_id` (`ad_video_id`), ADD KEY `category_id` (`ad_video_category_id`);

--
-- Indexes for table `ad_video_categories`
--
ALTER TABLE `ad_video_categories`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ad_video_comments`
--
ALTER TABLE `ad_video_comments`
 ADD PRIMARY KEY (`id`), ADD KEY `movie_id` (`ad_video_id`), ADD KEY `user_id` (`member_id`);

--
-- Indexes for table `ad_video_likes`
--
ALTER TABLE `ad_video_likes`
 ADD PRIMARY KEY (`id`), ADD KEY `movie_id` (`ad_video_id`), ADD KEY `member_id` (`member_id`);

--
-- Indexes for table `ad_video_plays`
--
ALTER TABLE `ad_video_plays`
 ADD PRIMARY KEY (`id`), ADD KEY `edutainment_id` (`ad_video_id`), ADD KEY `member_id` (`member_id`);

--
-- Indexes for table `artists`
--
ALTER TABLE `artists`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `edutainments`
--
ALTER TABLE `edutainments`
 ADD PRIMARY KEY (`id`), ADD KEY `video_id` (`video_id`), ADD KEY `member_id` (`member_id`), ADD KEY `last_update_by_member_id` (`last_update_by_member_id`), ADD KEY `url_type_id` (`url_type_id`);

--
-- Indexes for table `edutainments_categories`
--
ALTER TABLE `edutainments_categories`
 ADD PRIMARY KEY (`id`), ADD KEY `edutaiment_id` (`edutainment_id`), ADD KEY `category_id` (`edutainment_category_id`);

--
-- Indexes for table `edutainment_categories`
--
ALTER TABLE `edutainment_categories`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `edutainment_comments`
--
ALTER TABLE `edutainment_comments`
 ADD PRIMARY KEY (`id`), ADD KEY `movie_id` (`edutainment_id`), ADD KEY `user_id` (`member_id`);

--
-- Indexes for table `edutainment_likes`
--
ALTER TABLE `edutainment_likes`
 ADD PRIMARY KEY (`id`), ADD KEY `movie_id` (`edutainment_id`), ADD KEY `user_id` (`member_id`);

--
-- Indexes for table `edutainment_plays`
--
ALTER TABLE `edutainment_plays`
 ADD PRIMARY KEY (`id`), ADD KEY `edutainment_id` (`edutainment_id`), ADD KEY `member_id` (`member_id`);

--
-- Indexes for table `edutainment_prices`
--
ALTER TABLE `edutainment_prices`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
 ADD PRIMARY KEY (`id`), ADD KEY `video_id` (`video_id`), ADD KEY `member_id` (`member_id`);

--
-- Indexes for table `events_categories`
--
ALTER TABLE `events_categories`
 ADD PRIMARY KEY (`id`), ADD KEY `edutaiment_id` (`event_id`), ADD KEY `category_id` (`event_category_id`);

--
-- Indexes for table `event_categories`
--
ALTER TABLE `event_categories`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_comments`
--
ALTER TABLE `event_comments`
 ADD PRIMARY KEY (`id`), ADD KEY `movie_id` (`event_id`), ADD KEY `user_id` (`member_id`);

--
-- Indexes for table `event_likes`
--
ALTER TABLE `event_likes`
 ADD PRIMARY KEY (`id`), ADD KEY `event_id` (`event_id`), ADD KEY `member_id` (`member_id`);

--
-- Indexes for table `event_plays`
--
ALTER TABLE `event_plays`
 ADD PRIMARY KEY (`id`), ADD KEY `edutainment_id` (`event_id`), ADD KEY `member_id` (`member_id`);

--
-- Indexes for table `event_prices`
--
ALTER TABLE `event_prices`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `live_channels`
--
ALTER TABLE `live_channels`
 ADD PRIMARY KEY (`id`), ADD KEY `video_id` (`video_id`), ADD KEY `member_id` (`member_id`), ADD KEY `last_update_by_member_id` (`last_update_by_member_id`), ADD KEY `url_type_id` (`url_type_id`);

--
-- Indexes for table `live_channels_categories`
--
ALTER TABLE `live_channels_categories`
 ADD PRIMARY KEY (`id`), ADD KEY `edutaiment_id` (`live_channel_id`), ADD KEY `category_id` (`live_channel_category_id`);

--
-- Indexes for table `live_channel_categories`
--
ALTER TABLE `live_channel_categories`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `live_channel_comments`
--
ALTER TABLE `live_channel_comments`
 ADD PRIMARY KEY (`id`), ADD KEY `movie_id` (`live_channel_id`), ADD KEY `user_id` (`member_id`);

--
-- Indexes for table `live_channel_likes`
--
ALTER TABLE `live_channel_likes`
 ADD PRIMARY KEY (`id`), ADD KEY `movie_id` (`live_channel_id`), ADD KEY `user_id` (`member_id`);

--
-- Indexes for table `live_channel_plays`
--
ALTER TABLE `live_channel_plays`
 ADD PRIMARY KEY (`id`), ADD KEY `edutainment_id` (`live_channel_id`), ADD KEY `member_id` (`member_id`);

--
-- Indexes for table `live_channel_prices`
--
ALTER TABLE `live_channel_prices`
 ADD PRIMARY KEY (`id`), ADD KEY `live_channel_id` (`live_channel_id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `username` (`username`), ADD UNIQUE KEY `unique_id` (`unique_id`), ADD UNIQUE KEY `email` (`email`), ADD KEY `member_level_id` (`member_level_id`);

--
-- Indexes for table `member_levels`
--
ALTER TABLE `member_levels`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member_watchlists`
--
ALTER TABLE `member_watchlists`
 ADD PRIMARY KEY (`id`), ADD KEY `member_id` (`member_id`), ADD KEY `video_id` (`video_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
 ADD PRIMARY KEY (`id`), ADD KEY `member_id` (`member_id`), ADD KEY `to_member_id` (`to_member_id`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
 ADD PRIMARY KEY (`version`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
 ADD PRIMARY KEY (`id`), ADD KEY `video_id` (`video_id`), ADD KEY `video_id_2` (`video_id`), ADD KEY `member_id` (`member_id`), ADD KEY `last_update_by_member_id` (`last_update_by_member_id`);

--
-- Indexes for table `movies_casts`
--
ALTER TABLE `movies_casts`
 ADD PRIMARY KEY (`id`), ADD KEY `movie_id` (`movie_id`), ADD KEY `person_id` (`person_id`);

--
-- Indexes for table `movies_directors`
--
ALTER TABLE `movies_directors`
 ADD PRIMARY KEY (`id`), ADD KEY `movie_id` (`movie_id`), ADD KEY `person_id` (`person_id`);

--
-- Indexes for table `movies_genres`
--
ALTER TABLE `movies_genres`
 ADD PRIMARY KEY (`id`), ADD KEY `movie_id` (`movie_id`), ADD KEY `genre_id` (`movie_genre_id`);

--
-- Indexes for table `movie_clips`
--
ALTER TABLE `movie_clips`
 ADD PRIMARY KEY (`id`), ADD KEY `movie_id` (`movie_id`);

--
-- Indexes for table `movie_comments`
--
ALTER TABLE `movie_comments`
 ADD PRIMARY KEY (`id`), ADD KEY `movie_id` (`movie_id`), ADD KEY `user_id` (`member_id`);

--
-- Indexes for table `movie_genres`
--
ALTER TABLE `movie_genres`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movie_likes`
--
ALTER TABLE `movie_likes`
 ADD PRIMARY KEY (`id`), ADD KEY `movie_id` (`movie_id`), ADD KEY `member_id` (`member_id`);

--
-- Indexes for table `movie_plays`
--
ALTER TABLE `movie_plays`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movie_prices`
--
ALTER TABLE `movie_prices`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `music_albums`
--
ALTER TABLE `music_albums`
 ADD PRIMARY KEY (`id`), ADD KEY `member_id` (`member_id`), ADD KEY `last_update_by_member_id` (`last_update_by_member_id`), ADD KEY `member_id_2` (`member_id`), ADD KEY `last_update_by_member_id_2` (`last_update_by_member_id`);

--
-- Indexes for table `music_songs`
--
ALTER TABLE `music_songs`
 ADD PRIMARY KEY (`id`), ADD KEY `video_id` (`video_id`), ADD KEY `member_id` (`member_id`), ADD KEY `last_update_by_member_id` (`last_update_by_member_id`), ADD KEY `url_type_id` (`url_type_id`), ADD KEY `tv_show_id` (`music_album_id`), ADD KEY `video_id_2` (`video_id`), ADD KEY `member_id_2` (`member_id`), ADD KEY `url_type_id_2` (`url_type_id`), ADD KEY `last_update_by_member_id_2` (`last_update_by_member_id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `persons`
--
ALTER TABLE `persons`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `points`
--
ALTER TABLE `points`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
 ADD PRIMARY KEY (`id`), ADD KEY `video_id` (`video_id`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tv_shows`
--
ALTER TABLE `tv_shows`
 ADD PRIMARY KEY (`id`), ADD KEY `member_id` (`member_id`), ADD KEY `last_update_by_member_id` (`last_update_by_member_id`), ADD KEY `member_id_2` (`member_id`), ADD KEY `last_update_by_member_id_2` (`last_update_by_member_id`);

--
-- Indexes for table `tv_shows_categories`
--
ALTER TABLE `tv_shows_categories`
 ADD PRIMARY KEY (`id`), ADD KEY `edutaiment_id` (`tv_show_id`), ADD KEY `category_id` (`tv_show_category_id`);

--
-- Indexes for table `tv_show_categories`
--
ALTER TABLE `tv_show_categories`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tv_show_episodes`
--
ALTER TABLE `tv_show_episodes`
 ADD PRIMARY KEY (`id`), ADD KEY `video_id` (`video_id`), ADD KEY `member_id` (`member_id`), ADD KEY `last_update_by_member_id` (`last_update_by_member_id`), ADD KEY `url_type_id` (`url_type_id`), ADD KEY `tv_show_id` (`tv_show_id`), ADD KEY `video_id_2` (`video_id`), ADD KEY `member_id_2` (`member_id`), ADD KEY `url_type_id_2` (`url_type_id`), ADD KEY `last_update_by_member_id_2` (`last_update_by_member_id`);

--
-- Indexes for table `tv_show_episode_comments`
--
ALTER TABLE `tv_show_episode_comments`
 ADD PRIMARY KEY (`id`), ADD KEY `movie_id` (`tv_show_episode_id`), ADD KEY `user_id` (`member_id`);

--
-- Indexes for table `tv_show_episode_likes`
--
ALTER TABLE `tv_show_episode_likes`
 ADD PRIMARY KEY (`id`), ADD KEY `movie_id` (`tv_show_episode_id`), ADD KEY `member_id` (`member_id`);

--
-- Indexes for table `tv_show_episode_plays`
--
ALTER TABLE `tv_show_episode_plays`
 ADD PRIMARY KEY (`id`), ADD KEY `edutainment_id` (`tv_show_episode_id`), ADD KEY `member_id` (`member_id`);

--
-- Indexes for table `tv_show_episode_prices`
--
ALTER TABLE `tv_show_episode_prices`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `url_types`
--
ALTER TABLE `url_types`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
 ADD PRIMARY KEY (`id`), ADD KEY `video_type_id` (`video_type_id`);

--
-- Indexes for table `video_purchases`
--
ALTER TABLE `video_purchases`
 ADD PRIMARY KEY (`id`), ADD KEY `video_id` (`video_id`), ADD KEY `user_id` (`member_id`);

--
-- Indexes for table `video_types`
--
ALTER TABLE `video_types`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `ad_images`
--
ALTER TABLE `ad_images`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ad_videos`
--
ALTER TABLE `ad_videos`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `ad_videos_categories`
--
ALTER TABLE `ad_videos_categories`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT for table `ad_video_categories`
--
ALTER TABLE `ad_video_categories`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `ad_video_comments`
--
ALTER TABLE `ad_video_comments`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=238;
--
-- AUTO_INCREMENT for table `ad_video_likes`
--
ALTER TABLE `ad_video_likes`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `ad_video_plays`
--
ALTER TABLE `ad_video_plays`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `artists`
--
ALTER TABLE `artists`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `edutainments`
--
ALTER TABLE `edutainments`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `edutainments_categories`
--
ALTER TABLE `edutainments_categories`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `edutainment_categories`
--
ALTER TABLE `edutainment_categories`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `edutainment_comments`
--
ALTER TABLE `edutainment_comments`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=236;
--
-- AUTO_INCREMENT for table `edutainment_likes`
--
ALTER TABLE `edutainment_likes`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=77;
--
-- AUTO_INCREMENT for table `edutainment_plays`
--
ALTER TABLE `edutainment_plays`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `edutainment_prices`
--
ALTER TABLE `edutainment_prices`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `events_categories`
--
ALTER TABLE `events_categories`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `event_categories`
--
ALTER TABLE `event_categories`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `event_comments`
--
ALTER TABLE `event_comments`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=237;
--
-- AUTO_INCREMENT for table `event_likes`
--
ALTER TABLE `event_likes`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `event_plays`
--
ALTER TABLE `event_plays`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `event_prices`
--
ALTER TABLE `event_prices`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `live_channels`
--
ALTER TABLE `live_channels`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `live_channels_categories`
--
ALTER TABLE `live_channels_categories`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `live_channel_categories`
--
ALTER TABLE `live_channel_categories`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `live_channel_comments`
--
ALTER TABLE `live_channel_comments`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=236;
--
-- AUTO_INCREMENT for table `live_channel_likes`
--
ALTER TABLE `live_channel_likes`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=78;
--
-- AUTO_INCREMENT for table `live_channel_plays`
--
ALTER TABLE `live_channel_plays`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `live_channel_prices`
--
ALTER TABLE `live_channel_prices`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `member_levels`
--
ALTER TABLE `member_levels`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `member_watchlists`
--
ALTER TABLE `member_watchlists`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `movies_casts`
--
ALTER TABLE `movies_casts`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `movies_directors`
--
ALTER TABLE `movies_directors`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `movies_genres`
--
ALTER TABLE `movies_genres`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `movie_clips`
--
ALTER TABLE `movie_clips`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `movie_comments`
--
ALTER TABLE `movie_comments`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `movie_genres`
--
ALTER TABLE `movie_genres`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `movie_likes`
--
ALTER TABLE `movie_likes`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `movie_plays`
--
ALTER TABLE `movie_plays`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `movie_prices`
--
ALTER TABLE `movie_prices`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `music_albums`
--
ALTER TABLE `music_albums`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `music_songs`
--
ALTER TABLE `music_songs`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `persons`
--
ALTER TABLE `persons`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `points`
--
ALTER TABLE `points`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tv_shows`
--
ALTER TABLE `tv_shows`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tv_shows_categories`
--
ALTER TABLE `tv_shows_categories`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tv_show_categories`
--
ALTER TABLE `tv_show_categories`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tv_show_episodes`
--
ALTER TABLE `tv_show_episodes`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `tv_show_episode_comments`
--
ALTER TABLE `tv_show_episode_comments`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=240;
--
-- AUTO_INCREMENT for table `tv_show_episode_likes`
--
ALTER TABLE `tv_show_episode_likes`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `tv_show_episode_plays`
--
ALTER TABLE `tv_show_episode_plays`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `tv_show_episode_prices`
--
ALTER TABLE `tv_show_episode_prices`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `url_types`
--
ALTER TABLE `url_types`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=89;
--
-- AUTO_INCREMENT for table `video_purchases`
--
ALTER TABLE `video_purchases`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `video_types`
--
ALTER TABLE `video_types`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `ad_videos`
--
ALTER TABLE `ad_videos`
ADD CONSTRAINT `ad_videos_ibfk_1` FOREIGN KEY (`ad_id`) REFERENCES `ads` (`id`),
ADD CONSTRAINT `ad_videos_ibfk_2` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`id`),
ADD CONSTRAINT `ad_videos_ibfk_3` FOREIGN KEY (`url_type_id`) REFERENCES `url_types` (`id`);

--
-- Constraints for table `edutainments`
--
ALTER TABLE `edutainments`
ADD CONSTRAINT `edutainments_ibfk_1` FOREIGN KEY (`video_id`) REFERENCES `videos` (`id`),
ADD CONSTRAINT `edutainments_ibfk_2` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`),
ADD CONSTRAINT `edutainments_ibfk_3` FOREIGN KEY (`last_update_by_member_id`) REFERENCES `members` (`id`),
ADD CONSTRAINT `edutainments_ibfk_4` FOREIGN KEY (`url_type_id`) REFERENCES `url_types` (`id`);

--
-- Constraints for table `edutainments_categories`
--
ALTER TABLE `edutainments_categories`
ADD CONSTRAINT `edutainments_categories_ibfk_2` FOREIGN KEY (`edutainment_category_id`) REFERENCES `edutainment_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `edutainments_categories_ibfk_3` FOREIGN KEY (`edutainment_id`) REFERENCES `edutainments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `edutainment_comments`
--
ALTER TABLE `edutainment_comments`
ADD CONSTRAINT `edutainment_comments_ibfk_1` FOREIGN KEY (`edutainment_id`) REFERENCES `edutainments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `edutainment_comments_ibfk_2` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `edutainment_likes`
--
ALTER TABLE `edutainment_likes`
ADD CONSTRAINT `edutainment_likes_ibfk_1` FOREIGN KEY (`edutainment_id`) REFERENCES `edutainments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `edutainment_likes_ibfk_2` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `edutainment_plays`
--
ALTER TABLE `edutainment_plays`
ADD CONSTRAINT `edutainment_plays_ibfk_1` FOREIGN KEY (`edutainment_id`) REFERENCES `edutainments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `edutainment_plays_ibfk_2` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `events`
--
ALTER TABLE `events`
ADD CONSTRAINT `events_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`),
ADD CONSTRAINT `events_ibfk_2` FOREIGN KEY (`video_id`) REFERENCES `videos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `events_categories`
--
ALTER TABLE `events_categories`
ADD CONSTRAINT `events_categories_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `events_categories_ibfk_2` FOREIGN KEY (`event_category_id`) REFERENCES `event_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `event_likes`
--
ALTER TABLE `event_likes`
ADD CONSTRAINT `event_likes_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `event_likes_ibfk_2` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `live_channels`
--
ALTER TABLE `live_channels`
ADD CONSTRAINT `live_channels_ibfk_4` FOREIGN KEY (`last_update_by_member_id`) REFERENCES `members` (`id`),
ADD CONSTRAINT `live_channels_ibfk_1` FOREIGN KEY (`video_id`) REFERENCES `videos` (`id`),
ADD CONSTRAINT `live_channels_ibfk_2` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`),
ADD CONSTRAINT `live_channels_ibfk_3` FOREIGN KEY (`url_type_id`) REFERENCES `url_types` (`id`);

--
-- Constraints for table `live_channels_categories`
--
ALTER TABLE `live_channels_categories`
ADD CONSTRAINT `live_channels_categories_ibfk_2` FOREIGN KEY (`live_channel_category_id`) REFERENCES `live_channel_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `live_channels_categories_ibfk_1` FOREIGN KEY (`live_channel_id`) REFERENCES `live_channels` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `live_channel_likes`
--
ALTER TABLE `live_channel_likes`
ADD CONSTRAINT `live_channel_likes_ibfk_2` FOREIGN KEY (`live_channel_id`) REFERENCES `live_channels` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `live_channel_likes_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `live_channel_plays`
--
ALTER TABLE `live_channel_plays`
ADD CONSTRAINT `live_channel_plays_ibfk_2` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `live_channel_plays_ibfk_1` FOREIGN KEY (`live_channel_id`) REFERENCES `live_channels` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `live_channel_prices`
--
ALTER TABLE `live_channel_prices`
ADD CONSTRAINT `live_channel_prices_ibfk_1` FOREIGN KEY (`live_channel_id`) REFERENCES `live_channels` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `members`
--
ALTER TABLE `members`
ADD CONSTRAINT `members_ibfk_1` FOREIGN KEY (`member_level_id`) REFERENCES `member_levels` (`id`);

--
-- Constraints for table `member_watchlists`
--
ALTER TABLE `member_watchlists`
ADD CONSTRAINT `member_watchlists_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `member_watchlists_ibfk_2` FOREIGN KEY (`video_id`) REFERENCES `videos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
ADD CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`),
ADD CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`to_member_id`) REFERENCES `members` (`id`);

--
-- Constraints for table `movies`
--
ALTER TABLE `movies`
ADD CONSTRAINT `movies_ibfk_1` FOREIGN KEY (`video_id`) REFERENCES `videos` (`id`),
ADD CONSTRAINT `movies_ibfk_2` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`),
ADD CONSTRAINT `movies_ibfk_3` FOREIGN KEY (`last_update_by_member_id`) REFERENCES `members` (`id`);

--
-- Constraints for table `movies_casts`
--
ALTER TABLE `movies_casts`
ADD CONSTRAINT `movies_casts_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `movies_casts_ibfk_2` FOREIGN KEY (`person_id`) REFERENCES `persons` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `movies_directors`
--
ALTER TABLE `movies_directors`
ADD CONSTRAINT `movies_directors_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `movies_directors_ibfk_2` FOREIGN KEY (`person_id`) REFERENCES `persons` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `movies_genres`
--
ALTER TABLE `movies_genres`
ADD CONSTRAINT `movies_genres_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `movies_genres_ibfk_2` FOREIGN KEY (`movie_genre_id`) REFERENCES `movie_genres` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `movie_clips`
--
ALTER TABLE `movie_clips`
ADD CONSTRAINT `movie_clips_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `movie_comments`
--
ALTER TABLE `movie_comments`
ADD CONSTRAINT `movie_comments_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `movie_comments_ibfk_2` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `movie_likes`
--
ALTER TABLE `movie_likes`
ADD CONSTRAINT `movie_likes_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `movie_likes_ibfk_2` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sliders`
--
ALTER TABLE `sliders`
ADD CONSTRAINT `sliders_ibfk_1` FOREIGN KEY (`video_id`) REFERENCES `videos` (`id`);

--
-- Constraints for table `tv_shows_categories`
--
ALTER TABLE `tv_shows_categories`
ADD CONSTRAINT `tv_shows_categories_ibfk_1` FOREIGN KEY (`tv_show_id`) REFERENCES `tv_shows` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tv_show_episodes`
--
ALTER TABLE `tv_show_episodes`
ADD CONSTRAINT `tv_show_episodes_ibfk_1` FOREIGN KEY (`tv_show_id`) REFERENCES `tv_shows` (`id`),
ADD CONSTRAINT `tv_show_episodes_ibfk_2` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`),
ADD CONSTRAINT `tv_show_episodes_ibfk_3` FOREIGN KEY (`url_type_id`) REFERENCES `url_types` (`id`),
ADD CONSTRAINT `tv_show_episodes_ibfk_4` FOREIGN KEY (`last_update_by_member_id`) REFERENCES `members` (`id`),
ADD CONSTRAINT `tv_show_episodes_ibfk_5` FOREIGN KEY (`video_id`) REFERENCES `videos` (`id`);

--
-- Constraints for table `videos`
--
ALTER TABLE `videos`
ADD CONSTRAINT `videos_ibfk_1` FOREIGN KEY (`video_type_id`) REFERENCES `video_types` (`id`);

--
-- Constraints for table `video_purchases`
--
ALTER TABLE `video_purchases`
ADD CONSTRAINT `video_purchases_ibfk_1` FOREIGN KEY (`video_id`) REFERENCES `videos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `video_purchases_ibfk_2` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
