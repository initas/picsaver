-- phpMyAdmin SQL Dump
-- version 4.2.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Aug 08, 2015 at 06:28 PM
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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=latin1;

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
(21, 2, NULL, 'purple_love_xlg.jpg', 'Uploaded from nomad', 'phpFkiuOS', '1029fb62552f4613d010e50abf47a201bf4.jpeg', 519821, 'image/jpeg', 1053, 1500, NULL, NULL, '2015-06-14 09:09:52', '2015-06-14 00:32:40', NULL),
(22, 2, NULL, 'KW-1.jpg', 'Uploaded from nomad edutainment', 'phpupo6TJ', '2252714fca223c34480f74444ab5bdffad.jpeg', 149972, 'image/jpeg', 1080, 1003, NULL, NULL, '2015-06-15 07:04:08', '2015-06-15 00:04:08', NULL),
(23, 2, NULL, 'Bola-Basket.jpg', 'Uploaded from nomad edutainment', 'phpS5uaeq', '2368640e9bbe63b86c92e87a852f607960.jpeg', 128407, 'image/jpeg', 1080, 1003, '2015-04-29 04:15:36', NULL, '2015-06-15 07:08:24', '2015-06-15 00:08:24', NULL),
(24, 2, NULL, 'Yoga.jpg', 'Uploaded from nomad edutainment', 'php4kl7GA', '24dc258e5cf0b4150fba82adc27387b29d.jpeg', 106102, 'image/jpeg', 1080, 1003, '2015-04-29 04:18:24', NULL, '2015-06-15 07:12:17', '2015-06-15 00:12:17', NULL),
(25, 2, NULL, 'Fun-in-Bali.jpg', 'Uploaded from nomad edutainment', 'phpJpCF2q', '25ec57c330cf91843f731a735baf1b4e99.jpeg', 229511, 'image/jpeg', 1080, 1003, NULL, NULL, '2015-06-15 07:12:47', '2015-06-15 00:12:47', NULL),
(26, 2, NULL, 'pasarsanta-gondola-ice-cream.jpg', 'Uploaded from nomad edutainment', 'phpHtcPJD', '26abb532c21db0c07bf2a77131057baff1.jpeg', 164630, 'image/jpeg', 1080, 1003, '2015-05-18 03:05:30', NULL, '2015-06-15 07:20:54', '2015-06-15 00:20:54', NULL),
(27, 2, NULL, 'pasarsanta-roast-beef-gusto.jpg', 'Uploaded from nomad edutainment', 'phpFhUvf7', '275dd109964b477e399b8b8922648e4f6a.jpeg', 123731, 'image/jpeg', 1080, 1003, NULL, NULL, '2015-06-15 07:26:14', '2015-06-15 00:26:14', NULL),
(28, 2, NULL, 'photography-AR-Test.jpg', 'Uploaded from nomad edutainment', 'phpiX44MF', '287f54dea7ebcba65e4512664c87c44d4d.jpeg', 87383, 'image/jpeg', 1080, 1003, NULL, NULL, '2015-06-15 07:26:56', '2015-06-15 00:26:56', NULL),
(29, 2, NULL, 'Beauty-Story.jpg', 'Uploaded from nomad edutainment', 'phpD8MED7', '291e0738e2136342257e2b5b6122299869.jpeg', 75097, 'image/jpeg', 1080, 1003, NULL, NULL, '2015-06-15 07:27:42', '2015-06-15 00:27:42', NULL),
(30, 2, NULL, 'langsung-enak-chicken-grilled-salad.jpg', 'Uploaded from nomad edutainment', 'phpIiyHGE', '3064c366f6f8e892a32e2f27ecc631c050.jpeg', 152017, 'image/jpeg', 1080, 1003, NULL, NULL, '2015-06-15 07:28:23', '2015-06-15 00:28:23', NULL),
(31, 2, NULL, 'selebriti-1.jpg', 'Uploaded from nomad edutainment', 'phphrHcJy', '31fed353ff9e920992490caf7d9e46e7a1.jpeg', 126132, 'image/jpeg', 1080, 1003, '2015-04-29 07:02:58', NULL, '2015-06-15 07:28:59', '2015-06-15 00:28:59', NULL),
(32, 2, NULL, 'selebriti-eduard-betz.jpg', 'Uploaded from nomad edutainment', 'phprFwXMk', '32c0d91aaa572e76f70ce907a66268847c.jpeg', 80282, 'image/jpeg', 1080, 1003, NULL, NULL, '2015-06-15 07:29:30', '2015-06-15 00:29:30', NULL),
(33, 2, NULL, 'KW-2.jpg', 'Uploaded from nomad edutainment', 'php0LKoJZ', '338f74f0a93e3b81ad4474f8688b49ebd2.jpeg', 234589, 'image/jpeg', 1080, 1003, NULL, NULL, '2015-06-15 07:29:54', '2015-06-15 00:29:54', NULL),
(34, 2, NULL, 'pasarsanta-tsurro.jpg', 'Uploaded from nomad edutainment', 'php7vFsUF', '34f8f98ff2e98a1ab7c78fdb13e15ceddf.jpeg', 166532, 'image/jpeg', 1080, 1003, '2015-05-18 03:11:10', NULL, '2015-06-15 07:30:53', '2015-06-15 00:30:53', NULL),
(35, 2, NULL, 'selebriti-nigel-baker-photographer.jpg', 'Uploaded from nomad edutainment', 'phphCJK2A', '357079876c969447a08f28152df19bec2c.jpeg', 85319, 'image/jpeg', 1080, 1003, NULL, NULL, '2015-06-15 07:31:24', '2015-06-15 00:31:24', NULL),
(36, 2, NULL, 'sabrina-kitchen-panacotta.jpg', 'Uploaded from nomad edutainment', 'php7jvse0', '3685c9b03a4574b96f7704d76aeeb83146.jpeg', 354703, 'image/jpeg', 1080, 1003, NULL, NULL, '2015-06-15 07:31:56', '2015-06-15 00:31:56', NULL),
(37, 2, NULL, 'sabrina-kitchen-pumpkin-soup.jpg', 'Uploaded from nomad edutainment', 'phpXvGE9s', '3770cf275c9ff23c170252d26d986e74ff.jpeg', 274438, 'image/jpeg', 1080, 1003, NULL, NULL, '2015-06-15 07:33:38', '2015-06-15 00:33:38', NULL),
(38, 2, NULL, 'sabrina-kitchen-roasted-chicken.jpg', 'Uploaded from nomad edutainment', 'phpPeJM3W', '38dc02bf0fa6842c5b881ebc9f92e0cb00.jpeg', 118119, 'image/jpeg', 1080, 1003, '2015-05-18 03:08:48', NULL, '2015-06-15 07:34:13', '2015-06-15 00:34:13', NULL),
(39, 2, NULL, 'langsung-enak-chicken-grilled-salad.jpg', 'Uploaded from nomad edutainment', 'phpccD6AA', '39a72d5251b1a8044192089fe0fe586b71.jpeg', 152017, 'image/jpeg', 1080, 1003, NULL, NULL, '2015-06-15 07:34:40', '2015-06-15 00:34:40', NULL),
(40, 2, NULL, 'langsung-enak-sosis-gulung-telor.jpg', 'Uploaded from nomad edutainment', 'phpsZGeTl', '402e8146a72d33a608ad06418abde90dbb.jpeg', 225481, 'image/jpeg', 1080, 1003, NULL, NULL, '2015-06-15 07:35:18', '2015-06-15 00:35:18', NULL),
(41, 2, NULL, 'belajar-pemrogaman-android.jpg', 'Uploaded from nomad edutainment', 'phpctoLfw', '415f9570c6eb7f6858685ce6c699fa1eee.jpeg', 70015, 'image/jpeg', 1080, 1003, NULL, NULL, '2015-06-15 07:36:08', '2015-06-15 00:36:08', NULL),
(42, 2, NULL, 'belajar-seni-merangkai-bunga.jpg', 'Uploaded from nomad edutainment', 'php49Fvgj', '42a907d9fa3ce39fbdd79bf78957b9c321.jpeg', 146537, 'image/jpeg', 1080, 1003, NULL, NULL, '2015-06-15 07:36:48', '2015-06-15 00:36:48', NULL),
(43, 2, NULL, 'belajar-tari-bali.jpg', 'Uploaded from nomad edutainment', 'phpmpyScE', '430371e8360cdb8a5d3e4601e255c884e2.jpeg', 176209, 'image/jpeg', 1080, 1003, NULL, NULL, '2015-06-15 07:37:33', '2015-06-15 00:37:33', NULL),
(44, 2, NULL, 'KW-3.jpg', 'Uploaded from nomad edutainment', 'php1xteaQ', '444da6d02fcb81adfb2ea63218791f97a7.jpeg', 265310, 'image/jpeg', 1080, 1003, NULL, NULL, '2015-06-15 07:37:59', '2015-06-15 00:37:59', NULL),
(45, 2, NULL, 'belajar-gitar-bersama-andy-pradipta.jpg', 'Uploaded from nomad edutainment', 'phpOmKuw4', '4575a3e4edd85fbe2a9abd90e6a8b5dcea.jpeg', 147732, 'image/jpeg', 1080, 1003, NULL, NULL, '2015-06-15 07:38:27', '2015-06-15 00:38:27', NULL),
(46, 2, NULL, 'belajar-gitar-bersama-andy-pradipta.jpg', 'Uploaded from nomad edutainment', 'phpfoAy0M', '46a2bad565fdbc3b7d372b086170ca4d86.jpeg', 147732, 'image/jpeg', 1080, 1003, NULL, NULL, '2015-06-15 07:38:31', '2015-06-15 00:38:31', NULL),
(47, 2, NULL, 'tips-pohon-mangga-cepat-berbuah.jpg', 'Uploaded from nomad edutainment', 'phpaAsFzQ', '47c5a1e9d0941f7456656919af4e19efec.jpeg', 286195, 'image/jpeg', 1080, 1003, NULL, NULL, '2015-06-15 07:41:22', '2015-06-15 00:41:22', NULL),
(48, 2, NULL, 'kisah-suksses-setelah-putus-sekolah.jpg', 'Uploaded from nomad edutainment', 'phpZyKT5D', '48ea1b1e19e46691ea52f3acadfbac4f08.jpeg', 56121, 'image/jpeg', 1080, 1003, NULL, NULL, '2015-06-15 07:41:46', '2015-06-15 00:41:46', NULL),
(49, 2, NULL, 'kursus-membuat-bakso.jpg', 'Uploaded from nomad edutainment', 'phpUb4eDI', '49d78ea062048aa840ccb08bf3cfaa209f.jpeg', 190385, 'image/jpeg', 1080, 1003, NULL, NULL, '2015-06-15 07:42:08', '2015-06-15 00:42:08', NULL),
(50, 2, NULL, 'resep-dan-cara-membuat-ice-cream.jpg', 'Uploaded from nomad edutainment', 'phpPnthBH', '508c65793289eeac0a8598ff09fa610ba2.jpeg', 203465, 'image/jpeg', 1080, 1003, NULL, NULL, '2015-06-15 07:42:41', '2015-06-15 00:42:41', NULL),
(51, 2, NULL, 'kursus-mekanik-motor.jpg', 'Uploaded from nomad edutainment', 'phpYwbJQC', '51135e6b28cc4cecdfd42cfaa1b709b54b.jpeg', 124096, 'image/jpeg', 1080, 1003, NULL, NULL, '2015-06-15 07:43:18', '2015-06-15 00:43:18', NULL),
(52, 2, NULL, 'pertandingan-kemahiran-bengkel-automotif.jpg', 'Uploaded from nomad edutainment', 'phpV4BiEU', '52ea8d39f89aec00e94b08a0b3e0b6233f.jpeg', 111239, 'image/jpeg', 1080, 1003, NULL, NULL, '2015-06-15 07:43:51', '2015-06-15 00:43:51', NULL),
(53, 2, NULL, 'rally-dakar.jpg', 'Uploaded from nomad edutainment', 'phpjXdGh4', '53a66ec8e74fbb31ee9352379a6fd8556d.jpeg', 269028, 'image/jpeg', 1080, 1003, NULL, NULL, '2015-06-15 07:44:19', '2015-06-15 00:44:19', NULL),
(54, 2, NULL, 'KW-4.jpg', 'Uploaded from nomad edutainment', 'phpIn3wr6', '545832c7c02a81e9d7bf2b594798777ab5.jpeg', 136693, 'image/jpeg', 1080, 1003, NULL, NULL, '2015-06-15 07:44:52', '2015-06-15 00:44:52', NULL),
(55, 2, NULL, 'Belajar-2.jpg', 'Uploaded from nomad edutainment', 'phpNrsxJ7', '55bd16475638c891fa290a445ede6cebfc.jpeg', 128198, 'image/jpeg', 1080, 1002, NULL, NULL, '2015-06-15 07:45:15', '2015-06-15 00:45:15', NULL),
(56, 2, NULL, 'Belajar-1.jpg', 'Uploaded from nomad edutainment', 'phptn4esG', '56af606777eaa14d0435ae7a855f42cb50.jpeg', 76379, 'image/jpeg', 1080, 1003, NULL, NULL, '2015-06-15 07:45:30', '2015-06-15 00:45:30', NULL),
(57, 2, NULL, 'Belajar-3.jpg', 'Uploaded from nomad edutainment', 'phpwkDNer', '57a405a4733ceb7e9d9259d018d9096c3c.jpeg', 79619, 'image/jpeg', 1080, 1003, NULL, NULL, '2015-06-15 07:45:49', '2015-06-15 00:45:49', NULL),
(58, 2, NULL, 'Belajar-4.jpg', 'Uploaded from nomad edutainment', 'phphbUprd', '584cd1de55878a036dd33558e64df3d341.jpeg', 117024, 'image/jpeg', 1080, 1003, NULL, NULL, '2015-06-15 07:46:07', '2015-06-15 00:46:07', NULL),
(59, 2, NULL, 'trailercintabrontosaurus.jpg', 'Uploaded from nomad movie clip', 'phpwo6VLO', '59d479947b19b689a565ffade2a0aed101.jpeg', 3370, 'image/jpeg', 169, 95, NULL, NULL, '2015-07-08 05:33:30', '2015-07-07 22:33:30', NULL),
(60, 2, NULL, 'trailergetmarried.jpg', 'Uploaded from nomad movie clip', 'phpXs8bRC', '6087bfbd03cdbf4b52599e7b061453938f.jpeg', 4278, 'image/jpeg', 169, 95, NULL, NULL, '2015-07-08 05:37:08', '2015-07-07 22:37:08', NULL),
(61, 2, NULL, 'trailervirgin.jpg', 'Uploaded from nomad movie clip', 'phpj9TXYJ', '61a6df7d36508b5ce599611199b63db7a6.jpeg', 3342, 'image/jpeg', 169, 95, NULL, NULL, '2015-07-08 05:38:33', '2015-07-07 22:38:33', NULL),
(62, 2, NULL, 'hafalanshalatdelisatrailer.jpg', 'Uploaded from nomad movie clip', 'phpWOwGdf', '623f818a3b50f478e3a8e6b07e1b71fae3.jpeg', 1038, 'image/jpeg', 169, 95, NULL, NULL, '2015-07-08 05:38:50', '2015-07-07 22:38:50', NULL),
(63, 2, NULL, 'operationweddingtrailer.jpg', 'Uploaded from nomad movie clip', 'php8TtHUf', '636f5118aaa4258a00975a064238cb74f8.jpeg', 4686, 'image/jpeg', 169, 95, NULL, NULL, '2015-07-08 05:39:17', '2015-07-07 22:39:17', NULL),
(64, 2, NULL, 'trailerslanknggakadamatinya.jpg', 'Uploaded from nomad movie clip', 'php5OrzDz', '646565531280fec350a26755a3eff86e87.jpeg', 3838, 'image/jpeg', 169, 95, NULL, NULL, '2015-07-08 05:42:05', '2015-07-07 22:42:05', NULL),
(65, 2, NULL, 'trailerpurplelove.jpg', 'Uploaded from nomad movie clip', 'phpMVQbVZ', '659c2f008fbd7bb0630d1f65092f197206.jpeg', 4354, 'image/jpeg', 169, 95, NULL, NULL, '2015-07-08 05:42:41', '2015-07-07 22:42:41', NULL),
(66, 2, NULL, '2008_horikita.jpg', 'Uploaded from nomad movie', 'phpWGfbVk', '662473c904dbc53fda33ebe18c1ef8f3cd.jpeg', 79632, 'image/jpeg', 350, 347, NULL, NULL, '2015-08-08 11:16:42', '2015-08-08 04:16:42', NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=67;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
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
