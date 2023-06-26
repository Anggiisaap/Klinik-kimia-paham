-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2023 at 08:53 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `klinik`
--

-- --------------------------------------------------------

--
-- Table structure for table `apotek`
--

CREATE TABLE `apotek` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_apotek` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `alamat` text NOT NULL,
  `masa_berlaku` varchar(50) NOT NULL,
  `kewenangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `apotek`
--

INSERT INTO `apotek` (`id`, `nama_apotek`, `created_at`, `updated_at`, `alamat`, `masa_berlaku`, `kewenangan`) VALUES
(1, 'Kimia Paham', NULL, NULL, 'Jalan Radio Dalam Raya No. 8 RT 05 RW 008, Gandaria Utara, Kebayoran Baru', '5 Tahun', 'Mentri/Kepala Badan, Bupati/Walikota');

-- --------------------------------------------------------

--
-- Table structure for table `apoteker`
--

CREATE TABLE `apoteker` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_apoteker` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `umur` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `apotek_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `apoteker`
--

INSERT INTO `apoteker` (`id`, `nama_apoteker`, `alamat`, `umur`, `jenis_kelamin`, `created_at`, `updated_at`, `apotek_id`, `user_id`) VALUES
(17, 'Hafizh', 'Suliliran Baru', '21', 'Laki - Laki', '2023-06-23 19:33:28', '2023-06-23 20:24:46', 1, 2020),
(18, 'Anggi', 'Jalan Nusa Indah', '20', 'Laki - Laki', '2023-06-23 20:02:29', '2023-06-23 20:02:29', 1, 1313),
(19, 'Rezki', 'Suliliran Baru', '21', 'Laki - Laki', '2023-06-23 20:07:07', '2023-06-23 20:07:07', 1, 1515),
(20, 'Ariesta', 'Blok C', '21', 'Laki - Laki', '2023-06-23 20:08:37', '2023-06-23 20:24:59', 1, 1414),
(22, 'Wahyuu', 'AWS', '21', 'Laki - Laki', '2023-06-23 21:06:48', '2023-06-23 21:06:56', 1, 1616);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2023_06_08_132030_create_obats_table', 1),
(3, '2023_06_08_132121_create_pasiens_table', 1),
(4, '2023_06_08_132151_create_apotekers_table', 1),
(5, '2023_06_08_132215_create_apoteks_table', 1),
(6, '2023_06_08_132314_create_obat_pasiens_table', 1),
(7, '2023_06_08_132121_create_pasien_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `obat`
--


CREATE TABLE `obat` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jenis_obat` varchar(50) NOT NULL,
  `nama_obat` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `apotek_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `obat`
--

INSERT INTO `obat` (`id`, `jenis_obat`, `nama_obat`, `created_at`, `updated_at`, `apotek_id`) VALUES
(1023, 'Oles', 'Kenalog', '2023-06-23 05:19:31', '2023-06-23 05:19:31', 1),
(1111, 'Inhaler', 'Mometasone', '2023-06-23 04:18:16', '2023-06-23 04:18:16', 1),
(1313, 'Cair', 'Siladex', '2023-06-09 02:47:24', '2023-06-09 02:47:24', 1),
(1414, 'Tablet', 'Paramex', '2023-06-14 06:34:43', '2023-06-23 04:31:10', 1),
(1766, 'Oles', 'Fungiderm', '2023-06-23 04:41:47', '2023-06-23 04:41:47', 1),
(2020, 'Sirup', 'Combi', '2023-06-10 02:46:34', '2023-06-23 04:25:19', 1),
(2211, 'Oles', 'Benzolac', '2023-06-23 05:02:55', '2023-06-23 05:02:55', 1),
(2318, 'Tablet', 'Diapet', '2023-06-23 04:49:40', '2023-06-23 04:49:40', 1),
(2341, 'Kapsul', 'Amoxilin', '2023-06-23 04:08:50', '2023-06-23 04:08:50', 1),
(2355, 'Oles', 'Betason', '2023-06-23 04:29:14', '2023-06-23 04:29:14', 1),
(2399, 'Implan', 'KB', '2023-06-23 04:20:44', '2023-06-23 04:20:44', 1),
(2571, 'Suntik', 'Insulin', '2023-06-23 04:15:27', '2023-06-23 04:15:27', 1),
(4329, 'Oles', 'Acnes', '2023-06-23 05:01:37', '2023-06-23 05:01:37', 1),
(4443, 'Tablet', 'Fenamin', '2023-06-23 05:06:23', '2023-06-23 05:06:23', 1),
(4545, 'Sirup', 'Kaolin', '2023-06-23 04:48:28', '2023-06-23 04:48:28', 1),
(5555, 'Tablet', 'Pamol', '2023-06-23 04:45:35', '2023-06-23 04:45:35', 1),
(5631, 'Tablet', 'Bodrex', '2023-06-23 04:32:37', '2023-06-23 04:32:37', 1),
(6271, 'Tablet', 'Sangobion', '2023-06-23 05:14:06', '2023-06-23 05:14:06', 1),
(6565, 'Sirup', 'Mixagrip', '2023-06-23 04:37:50', '2023-06-23 04:37:50', 1),
(6790, 'Sirup', 'Lasrin', '2023-06-23 04:34:07', '2023-06-23 04:34:07', 1),
(7321, 'Tablet', 'Dexametason', '2023-06-23 04:46:55', '2023-06-23 04:46:55', 1),
(7653, 'Tablet', 'Panadol', '2023-06-23 04:36:08', '2023-06-23 04:36:08', 1),
(7771, 'Tablet', 'Lodia', '2023-06-23 04:54:31', '2023-06-23 04:54:31', 1),
(8712, 'Tablet', 'Asam Mefenamat', '2023-06-23 05:09:13', '2023-06-23 05:09:13', 1),
(8823, 'Tablet', 'Ponstan', '2023-06-23 05:16:43', '2023-06-23 05:16:43', 1),
(8858, 'Tablet', 'Cimetidine', '2023-06-23 04:59:38', '2023-06-23 05:00:01', 1),
(9090, 'Sirup', 'Konidin OBH', '2023-06-23 05:04:27', '2023-06-23 05:04:27', 1),
(9149, 'Tablet', 'Carbidu', '2023-06-23 05:11:35', '2023-06-23 05:11:35', 1),
(9876, 'Oles', 'Kalpanax', '2023-06-23 04:43:26', '2023-06-23 04:43:26', 1),
(9999, 'Tetes', 'Insto', '2023-06-23 21:06:07', '2023-06-23 21:06:07', 1);

-- --------------------------------------------------------

--
-- Table structure for table `obat_pasien`
--

CREATE TABLE `obat_pasien` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `obat_id` int(11) NOT NULL,
  `pasien_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `obat_pasien`
--

INSERT INTO `obat_pasien` (`id`, `created_at`, `updated_at`, `obat_id`, `pasien_id`) VALUES
(1, NULL, NULL, 1313, 12),
(2, NULL, NULL, 1414, 19),
(3, NULL, NULL, 1023, 21),
(4, NULL, NULL, 1111, 23),
(5, NULL, NULL, 1766, 24),
(6, NULL, NULL, 2020, 25),
(7, NULL, NULL, 2211, 26),
(8, NULL, NULL, 2318, 27),
(9, NULL, NULL, 2341, 28),
(10, NULL, NULL, 2355, 29),
(11, NULL, NULL, 2399, 30),
(12, NULL, NULL, 2571, 31),
(13, NULL, NULL, 4329, 32),
(14, NULL, NULL, 4443, 33),
(15, NULL, NULL, 4545, 34),
(16, NULL, NULL, 5555, 35),
(17, NULL, NULL, 5631, 36),
(18, NULL, NULL, 6271, 37),
(19, NULL, NULL, 6565, 38),
(20, NULL, NULL, 6790, 39),
(21, NULL, NULL, 7321, 40),
(22, NULL, NULL, 7653, 41),
(23, NULL, NULL, 7771, 42),
(24, NULL, NULL, 8712, 43),
(25, NULL, NULL, 8823, 44);

-- --------------------------------------------------------

--
-- Table structure for table `pasiens`
--

CREATE TABLE `pasiens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_pasien` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(50) NOT NULL,
  `umur` varchar(50) NOT NULL,
  `keluhan` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `obat_id` int(11) NOT NULL,
  `apotek_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pasiens`
--

INSERT INTO `pasiens` (`id`, `nama_pasien`, `jenis_kelamin`, `umur`, `keluhan`, `created_at`, `updated_at`, `obat_id`, `apotek_id`) VALUES
(17, 'Jamal', 'Laki - Laki', '10', 'Mual-Mual', '2023-06-14 06:34:02', '2023-06-23 04:10:53', 1414, 1),
(19, 'Jamal Chan', 'Laki - Laki', '21', 'Mual', '2023-06-16 20:31:15', '2023-06-23 21:04:36', 2020, 1),
(21, 'Anggi', 'Laki - Laki', '20', 'Mual-Mual', '2023-06-21 01:33:07', '2023-06-21 01:33:19', 1313, 1),
(23, 'Hafizh', 'Laki - Laki', '20', 'Demam', '2023-06-23 04:09:54', '2023-06-23 04:09:54', 2341, 1),
(24, 'Rezki', 'Laki - Laki', '20', 'Sakit Mata', '2023-06-23 04:13:13', '2023-06-23 04:13:13', 9999, 1),
(25, 'Wahyu', 'Laki - Laki', '25', 'Diabetes', '2023-06-23 04:16:27', '2023-06-23 04:16:27', 2571, 1),
(26, 'Asep', 'Laki - Laki', '15', 'Asma', '2023-06-23 04:18:48', '2023-06-23 04:18:48', 1111, 1),
(27, 'Cantika', 'Perempuan', '28', 'Mencegah kehamilan', '2023-06-23 04:22:40', '2023-06-23 04:22:40', 2399, 1),
(28, 'Boby', 'Laki - Laki', '12', 'Batuk', '2023-06-23 04:24:54', '2023-06-23 04:24:54', 1313, 1),
(29, 'Eko Suprato', 'Laki - Laki', '25', 'Alergi', '2023-06-23 04:30:23', '2023-06-23 04:30:23', 2355, 1),
(30, 'Windy', 'Perempuan', '19', 'Pusing', '2023-06-23 04:33:11', '2023-06-23 04:33:11', 5631, 1),
(31, 'Salsa Gumilang', 'Perempuan', '16', 'Batuk', '2023-06-23 04:34:58', '2023-06-23 04:34:58', 6790, 1),
(32, 'Gilang Gerung', 'Laki - Laki', '20', 'Demam', '2023-06-23 04:37:06', '2023-06-23 04:37:06', 7653, 1),
(33, 'Denis', 'Laki - Laki', '18', 'Flu', '2023-06-23 04:38:52', '2023-06-23 04:38:52', 6565, 1),
(34, 'Antonia Saga', 'Laki - Laki', '25', 'Jamur dan Gatal-gatal', '2023-06-23 04:42:48', '2023-06-23 04:44:50', 1766, 1),
(35, 'Yunia', 'Perempuan', '20', 'Jamur', '2023-06-23 04:44:27', '2023-06-23 04:44:27', 9876, 1),
(36, 'Justin', 'Laki - Laki', '23', 'Demam', '2023-06-23 04:46:05', '2023-06-23 04:46:05', 5555, 1),
(37, 'Adrian', 'Laki - Laki', '23', 'Gatal - gatal', '2023-06-23 04:47:30', '2023-06-23 04:47:30', 7321, 1),
(38, 'Sindy', 'Perempuan', '17', 'Diare', '2023-06-23 04:49:04', '2023-06-23 04:49:04', 4545, 1),
(39, 'Rendy', 'Laki - Laki', '23', 'Diare', '2023-06-23 04:51:57', '2023-06-23 04:51:57', 2318, 1),
(41, 'Albert', 'Laki - Laki', '21', 'Diare', '2023-06-23 04:57:37', '2023-06-23 04:57:37', 7771, 1),
(42, 'Julian', 'Laki - Laki', '21', 'Asam lambung', '2023-06-23 05:00:31', '2023-06-23 05:00:31', 8858, 1),
(43, 'Yunita Lestari', 'Perempuan', '19', 'Jerawat', '2023-06-23 05:02:25', '2023-06-23 05:02:25', 4329, 1),
(44, 'Jaka Fitrah', 'Laki - Laki', '20', 'Jerawat', '2023-06-23 05:03:31', '2023-06-23 05:03:31', 2211, 1),
(45, 'Armandon Wowiling', 'Laki - Laki', '17', 'Batuk', '2023-06-23 05:05:14', '2023-06-23 05:05:14', 9090, 1),
(46, 'Eka Yunia', 'Perempuan', '18', 'Nyeri', '2023-06-23 05:06:54', '2023-06-23 05:06:54', 4443, 1),
(47, 'Ihsan', 'Laki - Laki', '21', 'Nyeri', '2023-06-23 05:10:39', '2023-06-23 05:10:39', 8712, 1),
(48, 'Wulan Pengesti', 'Perempuan', '22', 'Radang Tenggorokan', '2023-06-23 05:12:21', '2023-06-23 05:12:21', 9149, 1),
(49, 'Kurniati', 'Perempuan', '18', 'Anemia', '2023-06-23 05:14:47', '2023-06-23 05:14:47', 6271, 1),
(50, 'Roni Sentory', 'Laki - Laki', '19', 'Sakit Gigi', '2023-06-23 05:17:22', '2023-06-23 05:17:22', 8823, 1),
(51, 'Ariesta', 'Laki - Laki', '21', 'Pusing', '2023-06-23 21:05:29', '2023-06-23 21:05:29', 9999, 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `level` varchar(50) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `level`, `remember_token`, `created_at`, `updated_at`) VALUES
(1313, 'Anggi Saputra', 'anggisptra1616@gmail.com', NULL, '$2y$10$st6YMzE0s0OBzTMo2PiehefotiJd4/MW7yXOSSoftcQd7Z3ZMttBO', 'admin', NULL, '2023-06-25 19:43:51', '2023-06-25 19:43:51'),
(1414, 'Ariesta', 'rrprashinta@gmail.com', NULL, '$2y$10$8jk0RGaFjZsIhKpEDKy50./U0nYztpL7yMSjOEbmKdRL/mmRLySee', 'apoteker', NULL, '2023-06-23 20:04:25', '2023-06-23 20:04:25'),
(1515, 'Rezki', 'anggisptra0909@gmail.com', NULL, '$2y$10$f72Up9rQt9ypxJA86g/F4uweka.8aFb8jqAqeaOtMNCbOGWuXPl1W', 'admin', NULL, '2023-06-23 20:05:25', '2023-06-23 20:05:25'),
(1616, 'Wahyu', 'wahyu1212@gmail.com', NULL, '$2y$10$zaVU.QY7d3bcZfryrQPQyOGmH7Fm7Sjhkdsx81gPKUR6.UdFSgbEG', 'apoteker', NULL, '2023-06-23 20:06:09', '2023-06-23 20:06:09'),
(2020, 'Hafizh', 'muhammadnurrachim22@gmail.com', NULL, '$2y$10$L4xOShU2ogdvIJStWjXRK.C37m7gm1.ccffz0noEJwBQSDVLXEeJa', 'apoteker', NULL, '2023-06-23 19:30:05', '2023-06-23 19:30:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apotek`
--
ALTER TABLE `apotek`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `apoteker`
--
ALTER TABLE `apoteker`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `obat_pasien`
--
ALTER TABLE `obat_pasien`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pasiens`
--
ALTER TABLE `pasiens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `apotek`
--
ALTER TABLE `apotek`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `apoteker`
--
ALTER TABLE `apoteker`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `obat`
--
ALTER TABLE `obat`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10000;

--
-- AUTO_INCREMENT for table `obat_pasien`
--
ALTER TABLE `obat_pasien`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `pasiens`
--
ALTER TABLE `pasiens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2203;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
