-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 07, 2023 at 05:16 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `happi_hub_crud`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `division` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `division`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Abdul Alim', 'Feni', 'alimifypros@gmail.com', NULL, '$2y$10$oNCFL0plKDqdCim8ucRlC.cPebI6qGBJclm2eDkvZ435upY/e5zw6', NULL, '2023-08-07 01:43:31', '2023-08-07 01:43:31'),
(2, 'Abdul Alim', 'Feni', 'alimifypro@gmail.com', NULL, '$2y$10$R.9nP2PHxrFSPlynsNUdLenyDcPljG91b0XEXXIwYx7nBmld2hPBW', NULL, '2023-08-07 01:43:56', '2023-08-07 01:43:56'),
(3, 'Abdul Alim', 'Feni', 'alimifypro_admin@gmail.com', NULL, '$2y$10$muJesYaqJgKt.Tg.NuCsZOC86ooYP.aBCutv8M0LqP./YyX0OxRF2', NULL, '2023-08-07 02:20:52', '2023-08-07 02:20:52'),
(5, 'Abdul Alim', 'Feni', 'alimifyproz@gmail.com', NULL, '$2y$10$QOZoAns2TfbKIpcPpdZnquOMrsTbU7/9mdPHb0V78fotkBD66c0Ze', NULL, '2023-08-07 05:09:49', '2023-08-07 06:33:41'),
(6, 'Abdul Alim 1', 'Feni', 'admin@gmail.com', NULL, '$2y$10$2pNU07FrDNgaZZOZhpZ6YeoR2caoDnCYliLaPs7Q.AdAqAXLazZq2', NULL, '2023-08-07 08:30:14', '2023-08-07 08:51:56');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_08_07_054703_create_admins_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\Admin', 2, 'admin_token', '3a9ff1afb56287481415a81a9bca2ca3e1bb3a6ca80d08f109c9b4424f8e7d15', '[\"*\"]', NULL, NULL, '2023-08-07 01:46:42', '2023-08-07 01:46:42'),
(2, 'App\\Models\\Admin', 2, 'admin_token', 'f29ac1fd9ce015b308bd1872127ba54950ca0eb1a70abf9784a02382d9e0abf3', '[\"*\"]', NULL, NULL, '2023-08-07 01:46:47', '2023-08-07 01:46:47'),
(3, 'App\\Models\\Admin', 2, 'admin_token', 'acc0cdba40fbe54b7818a8013ffe9aaf2eea1adaef0d2bc13da108f0496a67c0', '[\"*\"]', NULL, NULL, '2023-08-07 01:46:48', '2023-08-07 01:46:48'),
(4, 'App\\Models\\Admin', 2, 'admin_token', '6e268860afc721e033bbf9ba67e20a5a3b90ce24222be32fe31c7e64cfba3a23', '[\"*\"]', NULL, NULL, '2023-08-07 01:46:49', '2023-08-07 01:46:49'),
(5, 'App\\Models\\Admin', 2, 'admin_token', 'd1c04da4b3e01046e4965de61da1509fe306dcde3ac5c8c6c1472c424a3d829e', '[\"*\"]', NULL, NULL, '2023-08-07 01:46:52', '2023-08-07 01:46:52'),
(6, 'App\\Models\\Admin', 2, 'admin_token', '2e447f2a6a8544a1035c682e9110d889cc8d11983baf8334a5d93768312c9745', '[\"*\"]', NULL, NULL, '2023-08-07 01:47:39', '2023-08-07 01:47:39'),
(7, 'App\\Models\\Admin', 2, 'admin_token', '829caeed24d41580e0030a32f1bb149dffa489bb48adb18eef14108bddc82f19', '[\"*\"]', NULL, NULL, '2023-08-07 01:48:33', '2023-08-07 01:48:33'),
(8, 'App\\Models\\Admin', 2, 'admin_token', '7a86425fe185b9ed15adfe796bcfd67912f0fd59c6f74e2dab6bc3a1bb83aa95', '[\"*\"]', NULL, NULL, '2023-08-07 01:48:57', '2023-08-07 01:48:57'),
(9, 'App\\Models\\Admin', 2, 'admin_token', 'a343c4a7400795fc7253829e70f4e66c3c5f20602ae8a5fbad5ff91797702374', '[\"*\"]', NULL, NULL, '2023-08-07 01:49:15', '2023-08-07 01:49:15'),
(10, 'App\\Models\\Admin', 2, 'admin_token', 'bbcb9270d9c6806d1b94bf7100d711fef32d93981d910a1a74fce49b6f15d70b', '[\"*\"]', NULL, NULL, '2023-08-07 01:49:23', '2023-08-07 01:49:23'),
(11, 'App\\Models\\Admin', 2, 'admin_token', '5b0ee971f6f23884c18268ac573b8f0e200d3e58237269ed3d0be514288beb31', '[\"*\"]', NULL, NULL, '2023-08-07 01:49:24', '2023-08-07 01:49:24'),
(12, 'App\\Models\\Admin', 2, 'admin_token', '2b85429988acf384006bc0c353ddae7f2021d3d3d3189c2f8e07b72b04883e78', '[\"*\"]', NULL, NULL, '2023-08-07 01:49:24', '2023-08-07 01:49:24'),
(13, 'App\\Models\\Admin', 2, 'admin_token', '0457721360945f50e1a1ff36426071cda8e0e3a3bb933a397a6aca5b4c7248ef', '[\"*\"]', NULL, NULL, '2023-08-07 01:49:25', '2023-08-07 01:49:25'),
(14, 'App\\Models\\Admin', 2, 'admin_token', 'c955320ea2645f902edddd76eccc18b41fbc0e5ae783edc6edfec8e0c506e8d0', '[\"*\"]', NULL, NULL, '2023-08-07 02:17:16', '2023-08-07 02:17:16'),
(15, 'App\\Models\\Admin', 2, 'admin_token', '3a0b536907624cef56a5e19815d7e2b0123941da2ffe503f8b10c96169b120ee', '[\"*\"]', NULL, NULL, '2023-08-07 02:17:47', '2023-08-07 02:17:47'),
(16, 'App\\Models\\Admin', 2, 'admin_token', '5b259f855c5f2eb68dc195e1ec0ca80c3944d83cd9acbe2e2b9b963d5aadf393', '[\"*\"]', NULL, NULL, '2023-08-07 02:18:01', '2023-08-07 02:18:01'),
(17, 'App\\Models\\Admin', 2, 'admin_token', '2061a1370cb575ff82c3f8086b9b7c73ac8caf397696273661c00cb534ccf057', '[\"*\"]', NULL, NULL, '2023-08-07 02:37:31', '2023-08-07 02:37:31'),
(18, 'App\\Models\\Admin', 2, 'admin_token', 'bc8259e92b5f74cc78ad5244b3daacd76839a7417ed07e00b9b09e643c1240f2', '[\"*\"]', NULL, NULL, '2023-08-07 02:43:49', '2023-08-07 02:43:49'),
(19, 'App\\Models\\Admin', 2, 'admin_token', 'f96d6037d02507e4739c6cdf3af3c264df05b8e81b5d0c7f3d3000d9a9395c73', '[\"*\"]', NULL, NULL, '2023-08-07 02:49:10', '2023-08-07 02:49:10'),
(20, 'App\\Models\\Admin', 4, 'admin_token', '5b80c4ea4838f2686cd70fb3b67282e10dc2973c6c6fdac43087718940c4a797', '[\"*\"]', NULL, NULL, '2023-08-07 02:49:15', '2023-08-07 02:49:15'),
(21, 'App\\Models\\Admin', 2, 'admin_token', 'b66e1fa332912f5774df0dd6db1d15b6a7c7d5bf32a74d2fda551713deb1b70a', '[\"*\"]', NULL, NULL, '2023-08-07 02:49:24', '2023-08-07 02:49:24'),
(22, 'App\\Models\\Admin', 2, 'admin_token', '8458f0e7daa9fea7ceb217dc6a77dd4a4649303d401635dd096556c09af35fd6', '[\"*\"]', NULL, NULL, '2023-08-07 02:49:25', '2023-08-07 02:49:25'),
(23, 'App\\Models\\Admin', 2, 'admin_token', '0e6265fd5e19eaf23b3e71f1a877a926fdc8e1fd57b1837b96473864da27cd52', '[\"*\"]', NULL, NULL, '2023-08-07 02:49:27', '2023-08-07 02:49:27'),
(24, 'App\\Models\\Admin', 2, 'admin_token', '522d27ce9bc342b065dc4d95b935a6c25bf080abaf28d55a150def15c1c5bbbf', '[\"*\"]', NULL, NULL, '2023-08-07 02:49:28', '2023-08-07 02:49:28'),
(25, 'App\\Models\\User', 5, 'web_token', '0e9e157b3b621ac2888623ee76a191b91dcec8d5116d4cfc63a428bc9e3cd359', '[\"*\"]', NULL, NULL, '2023-08-07 02:49:54', '2023-08-07 02:49:54'),
(26, 'App\\Models\\User', 5, 'web_token', 'b337266fb1220b0883b5e64fefb4de0d56a738d7afe48c02c2524e94c3a7dc1c', '[\"*\"]', NULL, NULL, '2023-08-07 04:38:49', '2023-08-07 04:38:49'),
(27, 'App\\Models\\Admin', 4, 'admin_token', 'd9a2847a4f58c16635508e1a81a064248babda0098ae76c2eda3bdbd44b6b08d', '[\"*\"]', NULL, NULL, '2023-08-07 04:38:52', '2023-08-07 04:38:52'),
(29, 'App\\Models\\User', 5, 'web_token', 'fc242218d08f77fd5e976d55ec71f98ce96a71b82d67fa232e45bb46443e18c2', '[\"*\"]', NULL, NULL, '2023-08-07 04:38:58', '2023-08-07 04:38:58'),
(30, 'App\\Models\\User', 5, 'web_token', 'cb9e2f2c38f71f238378ec566799b0a354efc7e54ad0f014076448f3dce15318', '[\"*\"]', '2023-08-07 05:51:44', NULL, '2023-08-07 05:42:11', '2023-08-07 05:51:44'),
(33, 'App\\Models\\User', 6, 'web_token', 'f6161f6454618d479f94486e9c6fed262105be60d6dbcc487f1510d0181019ec', '[\"*\"]', NULL, NULL, '2023-08-07 07:03:35', '2023-08-07 07:03:35'),
(34, 'App\\Models\\Admin', 4, 'admin_token', '8f5b618fefea24a1622339d03a53e747e439aecc2db894ddf76abc29e8c62920', '[\"*\"]', '2023-08-07 07:03:53', NULL, '2023-08-07 07:03:41', '2023-08-07 07:03:53'),
(35, 'App\\Models\\Admin', 4, 'admin_token', '7d6eaa1a075d84a6aa9333fb02fdc9925f360a201a6b220026cc9b0c7143102a', '[\"*\"]', NULL, NULL, '2023-08-07 07:21:36', '2023-08-07 07:21:36'),
(36, 'App\\Models\\User', 6, 'web_token', '04ee6e534443c2b4c47f14ada3c115199e94fd60ddceef6e7a5f9040ef0452e6', '[\"*\"]', '2023-08-07 08:27:22', NULL, '2023-08-07 08:17:03', '2023-08-07 08:27:22'),
(37, 'App\\Models\\Admin', 4, 'admin_token', 'a20b621df0307163a21316f86ed7ec60b328dc254fca9ae0420a642cd411abb6', '[\"*\"]', NULL, NULL, '2023-08-07 08:31:19', '2023-08-07 08:31:19'),
(39, 'App\\Models\\Admin', 4, 'admin_token', '41f49a03562c835c179ba86deb7a2cd3cb187f345cf14ff1f454d50e4e093d07', '[\"*\"]', '2023-08-07 08:53:16', NULL, '2023-08-07 08:39:06', '2023-08-07 08:53:16'),
(40, 'App\\Models\\Admin', 6, 'admin_token', 'd1b2607c91a8f7d6a5d5371c9907ff4871f4eb63985720b190165af208062dcd', '[\"*\"]', '2023-08-07 09:10:11', NULL, '2023-08-07 08:56:07', '2023-08-07 09:10:11'),
(41, 'App\\Models\\User', 15, 'web_token', '583a3fbd24d97abc68748cc0bd6ce9081656c40066516386d9025f94b0b59cd8', '[\"*\"]', '2023-08-07 09:12:48', NULL, '2023-08-07 09:12:31', '2023-08-07 09:12:48');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `division` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `division`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'Abdul Alim', 'Feni', 'alimifypros@gmail.com', NULL, '$2y$10$K2DRFDlReGOT5iLP4lB8B.qs8CyXcLo62YXkckx0e27uO4Xyshcg.', NULL, '2023-08-06 23:59:51', '2023-08-06 23:59:51'),
(4, 'Abdul Alim', 'Feni', 'alimifypro_admin@gmail.com', NULL, '$2y$10$woq2vvLEY.8IsY62fmYifelK2f..udjtWYXJbqVjTnLXUUjsxA3Gu', NULL, '2023-08-07 02:49:42', '2023-08-07 02:49:42'),
(5, 'Abdul Alim', 'Feni', 'alimifypro2@gmail.com', NULL, '$2y$10$TGHbTW3BnlmMoIB8VEYDvO9lC3mLSiNrxtZ6.htyoJfuC0hLxznXO', NULL, '2023-08-07 02:49:47', '2023-08-07 06:54:28'),
(6, 'Abdul Alim Real', 'Feni', 'alimifypro@gmail.com', NULL, '$2y$10$J/hcQaNUJAWbVeLU6IncOOktvsba41KLAHPi1nn6w.Fdn0yCqLLyu', NULL, '2023-08-07 06:56:58', '2023-08-07 08:21:27'),
(8, 'Abdul Alim', 'Feni', 'alimifypro4@gmail.com', NULL, '$2y$10$WZvynCDl8SbgS.fFMfsm3Onc8KSwoEzT91VJiBWFZP5ZsqODE7SGm', NULL, '2023-08-07 08:15:06', '2023-08-07 08:15:06'),
(9, 'User', 'Feni', 'user@gmail.com', NULL, '$2y$10$Q1bEm4c1R2fzPG/qX/w3/eT.hYxdYDHbLkE1wWClqtCr34rB4rGje', NULL, '2023-08-07 09:11:08', '2023-08-07 09:11:08'),
(10, 'User 2', 'Feni', 'user2@gmail.com', NULL, '$2y$10$FBb2Ado14irQUStg/iTx6ehmnpDWU1lnMWf2R0eQToIUh2CiEjlOq', NULL, '2023-08-07 09:11:13', '2023-08-07 09:11:13'),
(11, 'User 3', 'Feni', 'user3@gmail.com', NULL, '$2y$10$Ee0qOXKz8mxM4QdPZVSS7u.njYERNRtfGaph4CcpIbhtqFoYP8Gou', NULL, '2023-08-07 09:11:25', '2023-08-07 09:11:25'),
(12, 'User 4', 'Feni', 'user4@gmail.com', NULL, '$2y$10$tp9qKc7X3pPDN56tj.vfhOIaJnbWcPgpvkN2twpCwrAl.QUCXCoXO', NULL, '2023-08-07 09:11:34', '2023-08-07 09:11:34'),
(13, 'User 5', 'Feni', 'user5@gmail.com', NULL, '$2y$10$U91NNoqDJzthb91MxiIf9udbHDvDMq2v4j/Nul6prm1qgPz3k5.zC', NULL, '2023-08-07 09:11:44', '2023-08-07 09:11:44'),
(14, 'User 6', 'Feni', 'user6@gmail.com', NULL, '$2y$10$zNvaxnTLJnBdW5jzrPliq.ItRPhEt2GW8QGma/sUc9xvYSXYSlyvG', NULL, '2023-08-07 09:11:53', '2023-08-07 09:11:53'),
(15, 'User 7', 'Feni', 'user7@gmail.com', NULL, '$2y$10$Dn/4bGvffIie1Zwa7V4RoeOSkVzVgtfkNNmlMUF1eaopu/HBX8bd6', NULL, '2023-08-07 09:12:12', '2023-08-07 09:12:12'),
(16, 'User 8', 'Feni', 'user8@gmail.com', NULL, '$2y$10$V.DkmEick58taA1SSfWYROkuzQiUArsuZ5Zyv7OHTsXK4T1RrpOfe', NULL, '2023-08-07 09:12:21', '2023-08-07 09:12:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
