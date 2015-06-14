-- phpMyAdmin SQL Dump
-- version 4.2.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Jun 14, 2015 at 04:21 PM
-- Server version: 5.5.38
-- PHP Version: 5.6.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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

CREATE TABLE `albums` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `user_id`, `name`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Fermentum', 'Vestibulum fermentum accumsan metus, vitae commodo dui feugiat nec.', '2015-03-31 05:12:00', NULL, NULL),
(2, 1, 'Feugiat', NULL, '2015-03-31 05:12:00', NULL, NULL),
(3, 2, 'ok', 'ok', '2015-05-20 23:40:38', '2015-05-20 23:40:38', NULL),
(4, 2, 'ok', 'ok', '2015-05-25 02:23:45', '2015-05-25 02:23:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
`id` int(11) NOT NULL,
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
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=latin1;

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
(15, 2, NULL, 'cinta_brontosaurus_xlg.jpg', 'Uploaded from nomad', 'phpQFjy0M', '966d3996c8f626571036165ede555986ab.jpeg', 471488, 'image/jpeg', 1053, 1500, NULL, NULL, '2015-06-14 09:09:19', '2015-06-14 00:26:41', NULL),
(16, 2, NULL, 'get_married_four_xlg.jpg', 'Uploaded from nomad', 'phpqCmxxg', '97388141548e7074463f280d60b422dff5.jpeg', 548332, 'image/jpeg', 1052, 1500, NULL, NULL, '2015-06-14 09:09:23', '2015-06-14 00:30:40', NULL),
(17, 2, NULL, '1c9aaca2366df9accbc0bdcee14e9c5d.jpg', 'Uploaded from nomad', 'phpo7A1cs', '98c15cbd70fdf5f8abe35f5d8401339b43.jpeg', 16084, 'image/jpeg', 236, 331, NULL, NULL, '2015-06-14 09:09:25', '2015-06-14 00:31:03', NULL),
(18, 2, NULL, 'hafalan_shalat_delisa_xlg.jpg', 'Uploaded from nomad', 'phpqYifZl', '993b4cc7a0829d02f1bc80e145053c06d0.jpeg', 567703, 'image/jpeg', 1052, 1500, NULL, NULL, '2015-06-14 09:09:28', '2015-06-14 00:31:21', NULL),
(19, 2, NULL, 'operation_wedding_ver3_xlg.jpg', 'Uploaded from nomad', 'phpsQK6gC', '100172bed37549f267bd13f7ef212757bc9.jpeg', 528863, 'image/jpeg', 1052, 1500, NULL, NULL, '2015-06-14 09:09:31', '2015-06-14 00:31:49', NULL),
(20, 2, NULL, 'slank_nggak_ada_matinya_xlg.jpg', 'Uploaded from nomad', 'phpATXQs4', '10174988b50642e4ecd7a81c8d7c15bf341.jpeg', 442951, 'image/jpeg', 1052, 1500, NULL, NULL, '2015-06-14 09:09:48', '2015-06-14 00:32:17', NULL),
(21, 2, NULL, 'purple_love_xlg.jpg', 'Uploaded from nomad', 'phpFkiuOS', '1029fb62552f4613d010e50abf47a201bf4.jpeg', 519821, 'image/jpeg', 1053, 1500, NULL, NULL, '2015-06-14 09:09:52', '2015-06-14 00:32:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `image_downloads`
--

CREATE TABLE `image_downloads` (
`id` int(11) NOT NULL,
  `image_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `image_likes`
--

CREATE TABLE `image_likes` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `image_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `image_likes`
--

INSERT INTO `image_likes` (`id`, `user_id`, `image_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 1, 1, '2015-03-27 00:33:02', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `image_pins`
--

CREATE TABLE `image_pins` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `image_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `image_pins`
--

INSERT INTO `image_pins` (`id`, `user_id`, `image_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 2, '2015-03-28 14:12:22', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `image_tags`
--

CREATE TABLE `image_tags` (
`id` int(11) NOT NULL,
  `image_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

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

CREATE TABLE `image_views` (
`id` int(11) NOT NULL,
  `image_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

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

CREATE TABLE `permission` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `privileges`
--

CREATE TABLE `privileges` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `privileges`
--

INSERT INTO `privileges` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Administrator', '2015-03-22 01:36:48', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `privilege_permissions`
--

CREATE TABLE `privilege_permissions` (
`id` int(11) NOT NULL,
  `privilege_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

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

CREATE TABLE `users` (
`id` int(11) NOT NULL,
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
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

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
-- Indexes for dumped tables
--

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
 ADD PRIMARY KEY (`id`), ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
 ADD PRIMARY KEY (`id`), ADD KEY `user_id` (`user_id`), ADD KEY `album_id` (`album_id`);

--
-- Indexes for table `image_downloads`
--
ALTER TABLE `image_downloads`
 ADD PRIMARY KEY (`id`), ADD KEY `image_id` (`image_id`), ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `image_likes`
--
ALTER TABLE `image_likes`
 ADD PRIMARY KEY (`id`), ADD KEY `user_id` (`user_id`), ADD KEY `image_id` (`image_id`);

--
-- Indexes for table `image_pins`
--
ALTER TABLE `image_pins`
 ADD PRIMARY KEY (`id`), ADD KEY `user_id` (`user_id`), ADD KEY `image_id` (`image_id`);

--
-- Indexes for table `image_tags`
--
ALTER TABLE `image_tags`
 ADD PRIMARY KEY (`id`), ADD KEY `image_id` (`image_id`), ADD KEY `tag_id` (`tag_id`);

--
-- Indexes for table `image_views`
--
ALTER TABLE `image_views`
 ADD PRIMARY KEY (`id`), ADD KEY `image_id` (`image_id`), ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `permission`
--
ALTER TABLE `permission`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `privileges`
--
ALTER TABLE `privileges`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `privilege_permissions`
--
ALTER TABLE `privilege_permissions`
 ADD PRIMARY KEY (`id`), ADD KEY `privilege_id` (`privilege_id`), ADD KEY `permission_id` (`permission_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`), ADD KEY `user_privilege_id` (`privilege_id`), ADD KEY `privilege_id` (`privilege_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=103;
--
-- AUTO_INCREMENT for table `image_downloads`
--
ALTER TABLE `image_downloads`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `image_likes`
--
ALTER TABLE `image_likes`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `image_pins`
--
ALTER TABLE `image_pins`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `image_tags`
--
ALTER TABLE `image_tags`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `image_views`
--
ALTER TABLE `image_views`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `permission`
--
ALTER TABLE `permission`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `privileges`
--
ALTER TABLE `privileges`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `privilege_permissions`
--
ALTER TABLE `privilege_permissions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
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
