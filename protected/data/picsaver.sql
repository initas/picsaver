-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2015 at 05:39 PM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `picsaver`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE IF NOT EXISTS `albums` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `user_id`, `name`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Fermentum', 'Vestibulum fermentum accumsan metus, vitae commodo dui feugiat nec.', '2015-03-31 05:12:00', NULL, NULL),
(2, 1, 'Feugiat', NULL, '2015-03-31 05:12:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE IF NOT EXISTS `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `album_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `image_name` varchar(255) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `image_size` int(11) NOT NULL,
  `image_mime` varchar(45) NOT NULL,
  `image_width` double NOT NULL,
  `image_height` double NOT NULL,
  `image_date_taken` timestamp NULL DEFAULT NULL,
  `sign_number` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `album_id` (`album_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `user_id`, `album_id`, `name`, `description`, `image_name`, `image_url`, `image_size`, `image_mime`, `image_width`, `image_height`, `image_date_taken`, `sign_number`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 'Donec nec', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In iaculis sem eu venenatis luctus. Vestibulum ultrices sem est, vel tristique leo mollis eget. Nunc eu egestas odio.', 'anata.jpg', '1cd3b20ca1197a74f8bba91d03d511d2d.jpg', 74536, 'image/jpeg', 1, 0, NULL, NULL, '2015-04-06 18:49:00', '2015-03-29 12:02:37', NULL),
(2, 1, 2, 'justo id justo', 'Vestibulum fermentum accumsan metus, vitae commodo dui feugiat nec.', '', '02c078846b5bb6bea507ace3477f62a8.jpg', 0, '', 1, 0, NULL, NULL, '2015-04-06 18:49:00', '2015-03-27 14:59:24', NULL),
(3, 2, 2, 'tempor malesuada', 'Phasellus vel scelerisque lacus. Mauris vel lectus ac urna vulputate vehicula ut et orci. Vivamus lacinia iaculis lacus, non posuere neque laoreet quis. Aenean at neque eu tellus laoreet faucibus a a nulla. Phasellus scelerisque turpis quis dapibus aliquam.', '', '4b85c2f9b3c322d980c3cf7a770e270d.jpg', 0, '', 1, 0, NULL, NULL, '2015-04-06 18:49:00', '2015-03-27 14:59:24', NULL),
(4, 2, NULL, 'Lorem ipsum dolor', NULL, '1mb.PNG', '6effbd79f65c2a2eef400522d2ec7ade.jpg', 42375, 'image/png', 1, 0, NULL, NULL, '2015-04-06 18:49:00', '2015-03-28 02:00:54', NULL),
(5, 2, 2, NULL, NULL, 'anata.jpg', '7cd29e285a54cb6a7e25d807a571bfc8.jpg', 74536, 'image/jpeg', 1, 0, NULL, NULL, '2015-04-06 18:49:00', '2015-03-28 07:59:55', NULL),
(6, 2, 1, 'consectetur adipiscing elit', 'Suspendisse commodo posuere lacus, in scelerisque dolor semper vehicula. Nulla vel velit vestibulum dui ullamcorper luctus. Quisque felis dui, tempus sit amet viverra id, ornare et lorem.', 'anata.jpg', '9f9a35d065353bcc5e83387c17b583cb.jpg', 74536, 'image/jpeg', 1, 0, NULL, NULL, '2015-04-06 18:49:00', '2015-03-28 07:57:50', NULL),
(7, 2, 1, 'Etiam vehicula ex in sem lacinia pellentesque', 'Nulla et ipsum a lorem fermentum sodales id eu urna. Suspendisse sit amet tortor eu nunc aliquet molestie quis eu urna.', '1mb.PNG', '073423dd1301b3322b4230bc9192e36f.jpg', 42375, 'image/png', 1, 0, NULL, NULL, '2015-04-06 18:49:00', '2015-03-28 08:06:13', NULL),
(8, 2, 1, NULL, 'Donec nec justo id justo tempor malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam vehicula ex in sem lacinia pellentesque. Proin rhoncus massa ut magna suscipit aliquet. Suspendisse potenti. In pharetra vestibulum commodo. Curabitur tortor nisl, posuere non mattis sed, tempor ac justo. Morbi quis condimentum quam, at bibendum est. Sed at metus nec libero laoreet rhoncus consectetur in diam.', 'p4.jpg', '2131231231231231231232343454645.jpg', 2860, 'image/jpeg', 1, 0, NULL, NULL, '2015-04-06 18:49:00', '2015-03-29 12:00:25', NULL),
(9, 2, 1, NULL, NULL, 'p4.jpg', '4113186_20131017080951.jpg', 2860, 'image/jpeg', 2, 0, NULL, NULL, '2015-04-06 18:50:27', '2015-03-29 12:00:49', NULL),
(10, 2, NULL, 'Etiam vitae tempus justo', 'Etiam vitae tempus justo, id porttitor est.', 'p4.jpg', '9345724b615824fa912c60b76827163d.jpg', 2860, 'image/jpeg', 1, 0, NULL, NULL, '2015-04-06 18:49:00', '2015-03-29 12:00:52', NULL),
(11, 2, NULL, NULL, NULL, 'p4.jpg', '51590525e313e0f292deded83c22c167.jpg', 2860, 'image/jpeg', 1, 0, NULL, NULL, '2015-04-06 18:49:00', '2015-03-29 12:01:07', NULL),
(12, 2, NULL, NULL, 'Vivamus euismod non tellus eu accumsan. ', 'p5.jpg', 'a5fb9fae68628569a92ff9c14bfd66b0.jpg', 11168, 'image/jpeg', 1, 0, NULL, NULL, '2015-04-06 18:49:00', '2015-03-29 13:14:11', NULL),
(13, 2, NULL, 'Morbi quis', ' Morbi quis condimentum quam, at bibendum est. Sed at metus nec libero laoreet rhoncus consectetur in diam.', 'p5.jpg', 'ab97601f17015694fec63facafaf90aa.jpg', 11168, 'image/jpeg', 1, 0, NULL, NULL, '2015-04-06 18:49:00', '2015-03-29 13:15:20', NULL),
(14, 2, NULL, 'gravida', 'Vivamus at lacinia ante, accumsan gravida justo. Suspendisse nec luctus dolor. Fusce non lacus justo. Donec aliquam sagittis dapibus. Aliquam at nunc at ex varius feugiat.', 'p5.jpg', 'bd0fe3522531b4fc35dbef0b5be00edb.jpg', 11168, 'image/jpeg', 1, 0, NULL, NULL, '2015-04-06 18:49:00', '2015-03-29 13:17:00', NULL),
(15, 1, NULL, NULL, NULL, 'bg.png', '233188524326fe27a92a47721b5be25d1f.png', 17920, 'image/png', 1, 0, NULL, '1427795865112423', '2015-04-06 18:49:00', '2015-03-31 02:57:58', NULL),
(21, 1, NULL, NULL, NULL, '20150405_183259.jpg', '2136a7a7b27c25707890db2cd0c4d3c1d0.jpg', 3102194, 'image/jpeg', 4128, 2322, '2015-04-05 11:32:59', '1428440205130861', '2015-04-07 20:57:12', '2015-04-07 13:57:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `image_downloads`
--

CREATE TABLE IF NOT EXISTS `image_downloads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `image_id` (`image_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `image_likes`
--

CREATE TABLE IF NOT EXISTS `image_likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `image_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `image_id` (`image_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `image_likes`
--

INSERT INTO `image_likes` (`id`, `user_id`, `image_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 1, 1, '2015-03-27 00:33:02', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `image_pins`
--

CREATE TABLE IF NOT EXISTS `image_pins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `image_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `image_id` (`image_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `image_pins`
--

INSERT INTO `image_pins` (`id`, `user_id`, `image_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 2, '2015-03-28 14:12:22', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `image_tags`
--

CREATE TABLE IF NOT EXISTS `image_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `image_id` (`image_id`),
  KEY `tag_id` (`tag_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `image_tags`
--

INSERT INTO `image_tags` (`id`, `image_id`, `tag_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(7, 11, 7, '2015-03-29 19:01:07', NULL, NULL),
(8, 11, 8, '2015-03-29 19:01:07', NULL, NULL),
(10, 1, 8, '2015-03-29 19:06:19', NULL, NULL),
(11, 1, 9, '2015-03-29 19:07:16', NULL, NULL),
(12, 12, 7, '2015-03-29 20:14:11', NULL, NULL),
(13, 12, 8, '2015-03-29 20:14:11', NULL, NULL),
(14, 13, 7, '2015-03-29 20:15:20', NULL, NULL),
(15, 13, 8, '2015-03-29 20:15:20', NULL, NULL),
(16, 14, 7, '2015-03-29 20:17:00', NULL, NULL),
(17, 14, 8, '2015-03-29 20:17:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `image_views`
--

CREATE TABLE IF NOT EXISTS `image_views` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `image_id` (`image_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `image_views`
--

INSERT INTO `image_views` (`id`, `image_id`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, '2015-03-26 22:45:55', NULL, NULL),
(2, 1, 2, '2015-03-26 22:45:55', NULL, NULL),
(3, 2, 1, '2015-03-26 22:46:09', NULL, NULL),
(4, 2, 1, '2015-03-26 22:46:09', NULL, NULL),
(5, 2, 1, '2015-03-26 22:46:18', NULL, NULL),
(6, 2, 1, '2015-03-26 22:46:18', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission`
--

CREATE TABLE IF NOT EXISTS `permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `privileges`
--

CREATE TABLE IF NOT EXISTS `privileges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `privileges`
--

INSERT INTO `privileges` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Administrator', '2015-03-22 01:36:48', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `privilege_permissions`
--

CREATE TABLE IF NOT EXISTS `privilege_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `privilege_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `privilege_id` (`privilege_id`),
  KEY `permission_id` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE IF NOT EXISTS `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(7, 'dummy', '2015-03-29 12:01:07', '2015-03-29 12:01:07', NULL),
(8, '2015', '2015-03-29 12:01:07', '2015-03-29 12:01:07', NULL),
(9, 'masterpiece', '2015-03-29 12:07:16', '2015-03-29 12:07:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fb_id` text NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image_name` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `image_size` varchar(45) DEFAULT NULL,
  `image_mime` varchar(45) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `privilege_id` int(11) NOT NULL DEFAULT '1',
  `last_login` timestamp NULL DEFAULT NULL,
  `last_seen` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_privilege_id` (`privilege_id`),
  KEY `privilege_id` (`privilege_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fb_id`, `username`, `password`, `email`, `name`, `image_name`, `image_url`, `image_size`, `image_mime`, `remember_token`, `privilege_id`, `last_login`, `last_seen`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '', 'admin', 'a', 'admin@icodea.com', 'Administrator', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2015-03-22 01:37:06', NULL, NULL),
(2, '', 'febri', 'a', 'febri@icodea.com', 'Muhammad Febriansyah', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2015-03-26 22:44:52', '2015-03-29 08:21:47', NULL),
(3, '', 'lala', '', 'lala@icodea.com', 'lala', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2015-03-29 07:47:34', '2015-03-29 07:47:34', NULL),
(4, '', 'lalaa', '', 'lalaa@icodea.com', '', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2015-03-29 07:47:44', '2015-03-29 07:47:44', NULL),
(5, '', 'lalaaa', '', 'lalaaa@icodea.com', '', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2015-03-29 07:57:57', '2015-03-29 07:57:57', NULL),
(6, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2015-03-29 08:08:32', '2015-03-29 08:08:32', NULL),
(7, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2015-03-29 08:08:36', '2015-03-29 08:08:36', NULL);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `images_ibfk_3` FOREIGN KEY (`album_id`) REFERENCES `albums` (`id`);

--
-- Constraints for table `image_downloads`
--
ALTER TABLE `image_downloads`
  ADD CONSTRAINT `image_downloads_ibfk_1` FOREIGN KEY (`image_id`) REFERENCES `images` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `image_downloads_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `image_likes`
--
ALTER TABLE `image_likes`
  ADD CONSTRAINT `image_likes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `image_likes_ibfk_2` FOREIGN KEY (`image_id`) REFERENCES `images` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `image_pins`
--
ALTER TABLE `image_pins`
  ADD CONSTRAINT `image_pins_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `image_pins_ibfk_2` FOREIGN KEY (`image_id`) REFERENCES `images` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `image_tags`
--
ALTER TABLE `image_tags`
  ADD CONSTRAINT `image_tags_ibfk_1` FOREIGN KEY (`image_id`) REFERENCES `images` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `image_tags_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `image_views`
--
ALTER TABLE `image_views`
  ADD CONSTRAINT `image_views_ibfk_1` FOREIGN KEY (`image_id`) REFERENCES `images` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `image_views_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `privilege_permissions`
--
ALTER TABLE `privilege_permissions`
  ADD CONSTRAINT `privilege_permissions_ibfk_1` FOREIGN KEY (`privilege_id`) REFERENCES `privileges` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `privilege_permissions_ibfk_2` FOREIGN KEY (`permission_id`) REFERENCES `permission` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_2` FOREIGN KEY (`privilege_id`) REFERENCES `privileges` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
