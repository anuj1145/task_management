-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2024 at 06:29 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crud_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `email`, `phone_number`, `password`, `created_at`, `updated_at`) VALUES
(2, 'Noelia Toy', 'prohaska.buford@example.com', '+17045763659', '$2y$12$8gRGehxH3XSzPRIGlfYZP.9jZdbQXkwHct.tZDvQ8wrPWSFnscKcK', '2024-03-11 05:02:47', '2024-03-12 03:36:48'),
(3, 'Mrs. Trisha Zieme', 'romaguera.billie@example.net', '+1 (425) 905-2087', '$2y$12$4iw.IflTo/wRVb6FyTvbwuQgkdiUDiMG.8DyUq.eijzJaKVKbbT1q', '2024-03-11 05:02:47', '2024-03-12 03:38:39'),
(4, 'Taya Botsford', 'bayer.jeff@example.com', '+1-906-856-1402', '$2y$12$4POFKZZ1TMGcBVA6xS/w.OKIS2lgAda28r.agQQHGwiQs7sFa.N0C', '2024-03-11 05:02:47', '2024-03-11 05:02:47'),
(5, 'Hildegard Balistreri', 'lubowitz.madison@example.net', '1-562-504-9830', '$2y$12$gTkeoXKrs73X9tOl14WkqOORPQU7ZdMJtSWVqel815UyXI9/dI3C.', '2024-03-11 05:02:47', '2024-03-11 05:02:47'),
(6, 'Dr. Destinee Hansen PhD', 'kylie35@example.org', '985.864.2722', '$2y$12$B4PWHdfy096t3ga7vZdHY.Kar8wJS.9HxRLPJ9Iv6EQC5m6DXll1G', '2024-03-11 05:02:47', '2024-03-11 05:02:47'),
(16, 'anuj', 'anuj@gmail.com', '8888999988', '$2y$12$/r7HHv/OKLHvi12bmtIQa.f0KM6e76kIsa8HoPTOJdiZnnrrIVqCa', '2024-03-12 09:22:57', '2024-03-12 09:22:57');

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
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2024_03_07_035714_create_posts_table', 2),
(11, '2024_03_07_035944_create_employees_table', 2),
(12, '2024_03_11_192009_create_projects_table', 3),
(13, '2024_03_11_192221_create_modules_table', 4),
(14, '2024_03_11_192614_create_sub_modules_table', 5),
(15, '2024_03_11_192828_create_tasks_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `project_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Front end', '2024-03-12 09:50:55', '2024-03-12 09:50:55'),
(2, 2, 'Back end', '2024-03-12 09:51:24', '2024-03-12 09:51:24');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'G8iOVo5sgCqF4IrpQeysznyWwPFhialVqi9JFrYl', NULL, 'http://localhost', 1, 0, 0, '2024-03-06 13:36:28', '2024-03-06 13:36:28'),
(2, NULL, 'Laravel Password Grant Client', 'J7Z30X9lE5318EdgVdoFjEc85mO1sCGPXXbQN0oh', 'users', 'http://localhost', 0, 1, 0, '2024-03-06 13:36:28', '2024-03-06 13:36:28');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2024-03-06 13:36:28', '2024-03-06 13:36:28');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 'App\\Models\\User', 1, 'LaravelAuthApp', '341a3c1d385c021bb14fe22ce84eaa8381a77682cf0728d92849a777c2aa1f31', '[\"*\"]', NULL, NULL, '2024-03-11 03:11:22', '2024-03-11 03:11:22'),
(2, 'App\\Models\\Employee', 1, 'LaravelAuthApp', 'de99c98436e594fe865f65e98ab9e5c126af4de8f4e77b5088659db18c69e663', '[\"*\"]', NULL, NULL, '2024-03-11 04:44:45', '2024-03-11 04:44:45'),
(3, 'App\\Models\\Employee', 7, 'LaravelAuthApp', '22b3400af2b0feeebd2bac8ad221067f99ea54eb039731fe7cd08edcd20bfcff', '[\"*\"]', NULL, NULL, '2024-03-11 05:05:14', '2024-03-11 05:05:14'),
(4, 'App\\Models\\User', 1, 'LaravelAuthApp', '1feb7dfa07d34a0b7ecdbf0f7d01dec20889d14dbff983a6a96f90a4a1cec15a', '[\"*\"]', NULL, NULL, '2024-03-11 05:38:53', '2024-03-11 05:38:53'),
(5, 'App\\Models\\Employee', 8, 'LaravelAuthApp', '3dc43afc8998c74dcbbf7eda53593c911830029ddcd8b62867a010233af9fb50', '[\"*\"]', NULL, NULL, '2024-03-11 06:59:02', '2024-03-11 06:59:02'),
(6, 'App\\Models\\Employee', 9, 'LaravelAuthApp', 'fed51e755785511f59648d6b885d39dda4934cf18eada467e8c90a02d94defde', '[\"*\"]', NULL, NULL, '2024-03-11 06:59:08', '2024-03-11 06:59:08'),
(7, 'App\\Models\\Employee', 10, 'LaravelAuthApp', 'f01f5add97e82ad47459a6a101e87831c211a5338ff837bf6326228cef09f932', '[\"*\"]', NULL, NULL, '2024-03-11 07:01:37', '2024-03-11 07:01:37'),
(8, 'App\\Models\\Employee', 11, 'LaravelAuthApp', '397df512e4ca9bc07608279fa0adb03cde6de6776dae0b3421d61cedf2d62dfc', '[\"*\"]', NULL, NULL, '2024-03-11 07:02:06', '2024-03-11 07:02:06'),
(9, 'App\\Models\\User', 1, 'LaravelAuthApp', '37e09fa35a6b2ba59c10062f259334008a77c612804a7f9336a02a2d02e7d98d', '[\"*\"]', NULL, NULL, '2024-03-11 07:16:47', '2024-03-11 07:16:47'),
(10, 'App\\Models\\User', 1, 'LaravelAuthApp', 'c816ab96e065dde01d03785554665eaf125db1a7e92369bb910767f10c790701', '[\"*\"]', NULL, NULL, '2024-03-11 07:16:59', '2024-03-11 07:16:59'),
(11, 'App\\Models\\User', 1, 'LaravelAuthApp', 'a47271fe05f81ed56c9adf07a6d52b0e26d65ce03d594fc185dfc726b187a7a2', '[\"*\"]', NULL, NULL, '2024-03-11 08:03:23', '2024-03-11 08:03:23'),
(12, 'App\\Models\\User', 1, 'LaravelAuthApp', '76a7587bd14aec27bd8c817585fd8e12c66825e0b186d20889bc4429ff7b4ff9', '[\"*\"]', NULL, NULL, '2024-03-11 08:07:08', '2024-03-11 08:07:08'),
(13, 'App\\Models\\User', 1, 'LaravelAuthApp', 'e9b4729b9b49294cb7361e92ef8e4cf94897b59d70cefa925d31a63ae661e21d', '[\"*\"]', NULL, NULL, '2024-03-11 08:07:21', '2024-03-11 08:07:21'),
(14, 'App\\Models\\User', 1, 'LaravelAuthApp', 'e23575ef39a146209881fffe1ebcdd61093cee6d5ac3e32a754985e03c82e695', '[\"*\"]', NULL, NULL, '2024-03-11 08:07:25', '2024-03-11 08:07:25'),
(15, 'App\\Models\\User', 1, 'LaravelAuthApp', '1cb74f1120b0e7ccd2225f24d6660b912ca2653eb31d237c39708786e8c801f1', '[\"*\"]', NULL, NULL, '2024-03-11 08:07:26', '2024-03-11 08:07:26'),
(16, 'App\\Models\\User', 1, 'LaravelAuthApp', 'a4a0b099281ce737ceb3770dbf65156f4381d2083f08fa74c19f114a13520931', '[\"*\"]', NULL, NULL, '2024-03-11 08:08:49', '2024-03-11 08:08:49'),
(17, 'App\\Models\\User', 1, 'LaravelAuthApp', '8a999c8c68b8f2c9f0a9af204bbabbe684f0ce6664c74ece805db821771ef344', '[\"*\"]', NULL, NULL, '2024-03-11 08:09:03', '2024-03-11 08:09:03'),
(18, 'App\\Models\\User', 1, 'LaravelAuthApp', 'ee3a87138729ca315184dca184a4634d813f060ba731dfd4210998397456d944', '[\"*\"]', NULL, NULL, '2024-03-11 08:09:15', '2024-03-11 08:09:15'),
(19, 'App\\Models\\User', 1, 'LaravelAuthApp', '1826b720c605416a3a45ed2fa888f6fb69705a2aa0c094dba2e056a78c14f672', '[\"*\"]', NULL, NULL, '2024-03-11 08:10:30', '2024-03-11 08:10:30'),
(20, 'App\\Models\\User', 1, 'LaravelAuthApp', '19e2aaecc0ed26b0c045ee6b4b50c66a29813067151d705b9e3750b528bc428b', '[\"*\"]', NULL, NULL, '2024-03-11 08:10:59', '2024-03-11 08:10:59'),
(21, 'App\\Models\\User', 1, 'LaravelAuthApp', '830d9fe8f14921000894a521bb69cf000d34e28111c72f152be3b63f65f2021f', '[\"*\"]', NULL, NULL, '2024-03-11 08:13:40', '2024-03-11 08:13:40'),
(22, 'App\\Models\\User', 1, 'LaravelAuthApp', 'bb2ed1414c7bbcef14e6dde1e62babff954ea7634bdb9c8977d4ef0f1116a9a7', '[\"*\"]', NULL, NULL, '2024-03-11 08:13:58', '2024-03-11 08:13:58'),
(23, 'App\\Models\\User', 1, 'LaravelAuthApp', 'cbbf895ac57bf9ffb1081499084cfeede577e2196a017e275b5baeb6ba360a7e', '[\"*\"]', NULL, NULL, '2024-03-11 08:14:25', '2024-03-11 08:14:25'),
(24, 'App\\Models\\User', 1, 'LaravelAuthApp', 'c5e2ac2fd4a7573ccd53211902b6268896a47b8832375a4d976afb7232e3e6cd', '[\"*\"]', NULL, NULL, '2024-03-11 08:15:36', '2024-03-11 08:15:36'),
(25, 'App\\Models\\User', 1, 'LaravelAuthApp', 'b3078d54280d098a38a72c1797deff899e714d9999b73a6f41d930d800c97af9', '[\"*\"]', NULL, NULL, '2024-03-11 08:15:54', '2024-03-11 08:15:54'),
(26, 'App\\Models\\User', 1, 'LaravelAuthApp', '7e5cfac430de283f14e2d5291e6a75aabba54f2674111d42e2ebef4d9f2d58bc', '[\"*\"]', NULL, NULL, '2024-03-11 08:16:19', '2024-03-11 08:16:19'),
(27, 'App\\Models\\User', 1, 'LaravelAuthApp', 'add6bf111c7939b7051f20996559ab94767209caf2af0ebcd7037543d1421acb', '[\"*\"]', NULL, NULL, '2024-03-11 08:17:27', '2024-03-11 08:17:27'),
(28, 'App\\Models\\User', 1, 'LaravelAuthApp', '4ad58b4682215b657400834d8a444341c27bae28e9903b2d8baacd9d889b98db', '[\"*\"]', NULL, NULL, '2024-03-11 08:17:37', '2024-03-11 08:17:37'),
(29, 'App\\Models\\User', 1, 'LaravelAuthApp', 'e8b1bf9cb5bf17400c5b19fffb7178ef092e02fc8e2d692b042b58ce2cc2dcbf', '[\"*\"]', NULL, NULL, '2024-03-11 08:17:56', '2024-03-11 08:17:56'),
(30, 'App\\Models\\User', 1, 'LaravelAuthApp', '851084c2f9dc354b0090fda3b2ecb5dcb8e48b4393b793a9684333d8b5711865', '[\"*\"]', NULL, NULL, '2024-03-11 08:18:56', '2024-03-11 08:18:56'),
(31, 'App\\Models\\User', 1, 'LaravelAuthApp', '12f6e3399430c5a9233af81c0ad0c63c0b29b67a3a15db478d2b2df4f6005897', '[\"*\"]', NULL, NULL, '2024-03-11 08:18:57', '2024-03-11 08:18:57'),
(32, 'App\\Models\\User', 1, 'LaravelAuthApp', '8cf2d4ce9e0800f5dbe32ae26c99d1eebbe121413580cd287e016a9fc1e73cef', '[\"*\"]', NULL, NULL, '2024-03-11 08:18:58', '2024-03-11 08:18:58'),
(33, 'App\\Models\\User', 1, 'LaravelAuthApp', 'e41aaa2eaadf77a451fcc7f0e351510f6b2bf735920fbda13405929486d1922c', '[\"*\"]', NULL, NULL, '2024-03-11 08:19:42', '2024-03-11 08:19:42'),
(34, 'App\\Models\\User', 1, 'LaravelAuthApp', '9e3ecfb22ff5a6b618c334be4caa1f9f446c6f8b53348b581d3cedc996bb1da1', '[\"*\"]', NULL, NULL, '2024-03-11 08:19:55', '2024-03-11 08:19:55'),
(35, 'App\\Models\\Employee', 7, 'authToken', 'cdd2731e073fe4d8deb2be866d129ddf8082d0dc032767268e0f714f4012affe', '[\"*\"]', NULL, NULL, '2024-03-11 09:54:17', '2024-03-11 09:54:17'),
(36, 'App\\Models\\Employee', 7, 'authToken', '001e07245d9be56ea0cb9b64bc3e4038c129cc18b1e7053db2d5dddff73cc435', '[\"*\"]', NULL, NULL, '2024-03-11 09:56:13', '2024-03-11 09:56:13'),
(37, 'App\\Models\\Employee', 7, 'authToken', '175e214473d458c3dc02f508cfbececba6af378e4a41365064361e923e89ffec', '[\"*\"]', NULL, NULL, '2024-03-11 09:56:39', '2024-03-11 09:56:39'),
(38, 'App\\Models\\Employee', 7, 'authToken', '64091625dad1067365c1d2c1ea56dd66d97dca65f5c3eb25135a325a00888580', '[\"*\"]', NULL, NULL, '2024-03-11 09:57:45', '2024-03-11 09:57:45'),
(39, 'App\\Models\\Employee', 7, 'authToken', '6ac2496ee7f3d858d1012e9e7828798f50a095b8d957d5716b8842b8fc077806', '[\"*\"]', NULL, NULL, '2024-03-11 09:58:37', '2024-03-11 09:58:37'),
(40, 'App\\Models\\Employee', 7, 'authToken', '0399daf4617fe92096dc04e4a6dfbccd0f27236cf30efae93f86dd817a723de2', '[\"*\"]', NULL, NULL, '2024-03-11 09:59:51', '2024-03-11 09:59:51'),
(41, 'App\\Models\\Employee', 7, 'authToken', '39c7146b3b1b769747ebde86c108f691ff812cb42c13363459734c345b4adbe1', '[\"*\"]', NULL, NULL, '2024-03-11 10:00:08', '2024-03-11 10:00:08'),
(42, 'App\\Models\\Employee', 7, 'authToken', '7e427c61f92751fb2bf0fa487055cfa13605eaa85abc4de4d3363e4830b7c1c3', '[\"*\"]', NULL, NULL, '2024-03-11 10:03:30', '2024-03-11 10:03:30'),
(43, 'App\\Models\\Employee', 7, 'authToken', 'c866c79160b3006422b539bf43ebae5ccb7b3bf722f8a16284e55ad560e203a0', '[\"*\"]', NULL, NULL, '2024-03-11 10:04:29', '2024-03-11 10:04:29'),
(44, 'App\\Models\\Employee', 7, 'authToken', '3133308023f6f9c9c9fc39d99362ca70634ffc16899b7051d5ad18be7c26d5c8', '[\"*\"]', NULL, NULL, '2024-03-11 10:04:44', '2024-03-11 10:04:44'),
(45, 'App\\Models\\Employee', 7, 'authToken', '64d792bec177e06cc2c7df551edc6f311d1e7530a3f942a9e5b1ccd09d220e7f', '[\"*\"]', NULL, NULL, '2024-03-11 10:05:24', '2024-03-11 10:05:24'),
(46, 'App\\Models\\Employee', 7, 'authToken', 'bd30219149e5e46968052d82e36c774d4b9c7ac1fbcf1cfa37d669ac17c0dcc7', '[\"*\"]', NULL, NULL, '2024-03-11 10:05:31', '2024-03-11 10:05:31'),
(47, 'App\\Models\\Employee', 7, 'authToken', '193ed21ee0db6f650430e9580be502c7abd735e219e8a31ea8c996e8576f1344', '[\"*\"]', NULL, NULL, '2024-03-11 10:05:59', '2024-03-11 10:05:59'),
(48, 'App\\Models\\Employee', 7, 'authToken', '44c486458ed3e2d6ae8a17e7c9f90468922a1758dad47c9576d9ad69f931ddfa', '[\"*\"]', NULL, NULL, '2024-03-11 10:06:48', '2024-03-11 10:06:48'),
(49, 'App\\Models\\Employee', 7, 'authToken', '9dd3d8b7a1360b25e9279c9c3cdfe5e91e24367235c7c948fe24692921fa0b8c', '[\"*\"]', NULL, NULL, '2024-03-11 10:07:39', '2024-03-11 10:07:39'),
(50, 'App\\Models\\Employee', 7, 'authToken', 'a2b5f6a690e09dd0c19d7a992ebb3d7e0276c1c604d41c928ca11042c99de899', '[\"*\"]', NULL, NULL, '2024-03-11 10:07:56', '2024-03-11 10:07:56'),
(51, 'App\\Models\\Employee', 7, 'authToken', 'd70a0ed103eea3f736a0eb34176e139ffdb7c138843e77b7b560301a6af73236', '[\"*\"]', NULL, NULL, '2024-03-11 10:08:20', '2024-03-11 10:08:20'),
(52, 'App\\Models\\Employee', 7, 'authToken', '11bbeb4f90c342724ee7637439db5edfc0bc07cbc4391d06b8b7fc479719b41b', '[\"*\"]', NULL, NULL, '2024-03-11 10:09:41', '2024-03-11 10:09:41'),
(53, 'App\\Models\\Employee', 7, 'authToken', '1f69a2ed5ae75fccd3f89785b9e99f05c6dfc5df921c8491f90d88b18c55b5b6', '[\"*\"]', NULL, NULL, '2024-03-11 10:09:55', '2024-03-11 10:09:55'),
(54, 'App\\Models\\Employee', 7, 'authToken', '1dd3819e477d475b8ffe3bcefe4a6efc1139178e74b1ab7a267ff0fe67153a68', '[\"*\"]', NULL, NULL, '2024-03-11 10:11:30', '2024-03-11 10:11:30'),
(55, 'App\\Models\\Employee', 7, 'authToken', 'dce599852a3d0467d428159d395be5b87f6816b87d6dac55296b569d9c254f1f', '[\"*\"]', NULL, NULL, '2024-03-11 10:12:10', '2024-03-11 10:12:10'),
(56, 'App\\Models\\Employee', 7, 'authToken', 'b43dff150d95e6ac2b86d4136201987d11eaf098b298663df41e9da0f6045fff', '[\"*\"]', NULL, NULL, '2024-03-11 10:14:56', '2024-03-11 10:14:56'),
(57, 'App\\Models\\Employee', 7, 'authToken', '91e7796c2f0f3c815037618472b4f2d2b4a98b3d858751fd9cbff511d5043be8', '[\"*\"]', NULL, NULL, '2024-03-11 10:15:23', '2024-03-11 10:15:23'),
(58, 'App\\Models\\Employee', 7, 'authToken', 'd59925e212fb4858b242336fab9ca858b4f4d3b46c6e60ade166b0a1f00aba54', '[\"*\"]', NULL, NULL, '2024-03-11 10:16:20', '2024-03-11 10:16:20'),
(59, 'App\\Models\\Employee', 7, 'authToken', '3f0f1e6111c574bcd6adb4fc2e3a6098f6617b2b4c33e633690bbaeda703fa6a', '[\"*\"]', NULL, NULL, '2024-03-11 10:17:32', '2024-03-11 10:17:32'),
(60, 'App\\Models\\Employee', 7, 'authToken', '27596bd90afe98b1ceb40cfa6d89ab5532dabece7185004bb811f9865a5398d8', '[\"*\"]', NULL, NULL, '2024-03-11 10:18:39', '2024-03-11 10:18:39'),
(61, 'App\\Models\\Employee', 7, 'authToken', 'fc058351f5a5870d65163c25857b32433cec68608ff16bd9554ac827466416de', '[\"*\"]', NULL, NULL, '2024-03-11 10:19:40', '2024-03-11 10:19:40'),
(62, 'App\\Models\\Employee', 7, 'authToken', 'a99e28b9f1053e6882213693172c5ebe8cbf5294437cb3d4578586bdab768fc1', '[\"*\"]', NULL, NULL, '2024-03-11 10:20:44', '2024-03-11 10:20:44'),
(63, 'App\\Models\\Employee', 7, 'authToken', '17023e1a4e691acb5798a54b3280b51883df7bbbc82312ebb5a88ea380b96e8a', '[\"*\"]', NULL, NULL, '2024-03-11 10:20:58', '2024-03-11 10:20:58'),
(64, 'App\\Models\\Employee', 7, 'authToken', 'c8795a8d1636f1157e0dd2eaf14249c8b098f3e9f606a2a25337ed8ce04d48e7', '[\"*\"]', NULL, NULL, '2024-03-11 10:23:16', '2024-03-11 10:23:16'),
(65, 'App\\Models\\Employee', 7, 'authToken', 'eef55f483e6648b0206e66b4e995f2771a4a32b16162554208447883f2104951', '[\"*\"]', NULL, NULL, '2024-03-11 10:23:32', '2024-03-11 10:23:32'),
(66, 'App\\Models\\Employee', 7, 'authToken', '9608d5f474a882cb25cc9307f852664657cbe36f4149211162a33f293456a158', '[\"*\"]', NULL, NULL, '2024-03-11 10:23:49', '2024-03-11 10:23:49'),
(67, 'App\\Models\\User', 1, 'LaravelAuthApp', '941ae8f67f7c06450101820dcc322ee69c452f11c6702c7c9067efd0c6c178a4', '[\"*\"]', NULL, NULL, '2024-03-11 10:25:36', '2024-03-11 10:25:36'),
(68, 'App\\Models\\User', 1, 'LaravelAuthApp', 'b210b8b97ea386ae14f18f76a168207d949368a3652ce5c4b57d9808b956fc0d', '[\"*\"]', NULL, NULL, '2024-03-11 10:26:18', '2024-03-11 10:26:18'),
(69, 'App\\Models\\User', 1, 'LaravelAuthApp', '699381513640461fc8d5b582cae6490be560921df59dba6b29170bc2ff0fca14', '[\"*\"]', NULL, NULL, '2024-03-11 10:27:39', '2024-03-11 10:27:39'),
(70, 'App\\Models\\User', 1, 'LaravelAuthApp', '5e5c417553cb1be18d10b1ac51f8d14e82ffb9140771bc7d3d213109b3c2a352', '[\"*\"]', NULL, NULL, '2024-03-11 10:28:31', '2024-03-11 10:28:31'),
(71, 'App\\Models\\User', 1, 'LaravelAuthApp', 'b6d5da44bf97ddf4a87c99aad673b669b2fa05587c617d80ab18c458ecb24a50', '[\"*\"]', NULL, NULL, '2024-03-11 10:28:59', '2024-03-11 10:28:59'),
(72, 'App\\Models\\User', 1, 'LaravelAuthApp', '667b6bd73a5faf5d0d534b0ee0bb4232ff502fe561389dbea58c647383aa0a7f', '[\"*\"]', NULL, NULL, '2024-03-11 10:30:07', '2024-03-11 10:30:07'),
(73, 'App\\Models\\User', 1, 'LaravelAuthApp', '603f46c1a15d189f601bf80372fd6167c10c02bd145209dcbc402557f8dc4b3e', '[\"*\"]', NULL, NULL, '2024-03-11 10:30:29', '2024-03-11 10:30:29'),
(74, 'App\\Models\\User', 1, 'LaravelAuthApp', '43543abd7cee6fc7ac9f1889d3ef604b4de916c01de660eec2f1943eefb27a05', '[\"*\"]', NULL, NULL, '2024-03-11 10:31:45', '2024-03-11 10:31:45'),
(75, 'App\\Models\\User', 1, 'LaravelAuthApp', '11dfdde1992ed50453abe4e9852d7a83c7b72bbee1cc9bbc225fb82911040c87', '[\"*\"]', NULL, NULL, '2024-03-11 10:32:17', '2024-03-11 10:32:17'),
(76, 'App\\Models\\User', 1, 'LaravelAuthApp', '6bdf78dba9aa3492cce0f2196dffac1d8eab02954eb6eb3980c411d447d3c2d6', '[\"*\"]', NULL, NULL, '2024-03-11 10:32:58', '2024-03-11 10:32:58'),
(77, 'App\\Models\\User', 1, 'LaravelAuthApp', '2f700a0e680df4332b4b8cfa79667d98642224c2256f3f2cdb36cda87631fbbf', '[\"*\"]', NULL, NULL, '2024-03-11 11:07:04', '2024-03-11 11:07:04'),
(78, 'App\\Models\\Employee', 16, 'authToken', '8ff1e42ca976bbdf8bcb3d081b802d03899ccec513a71a7830902e8727a8809a', '[\"*\"]', NULL, NULL, '2024-03-12 10:27:25', '2024-03-12 10:27:25'),
(79, 'App\\Models\\Employee', 16, 'authToken', '257f7a00d2bee4eef0112c2fc43611519f3a1c3b83003b01233f8dfc18900eda', '[\"*\"]', NULL, NULL, '2024-03-12 10:27:43', '2024-03-12 10:27:43'),
(80, 'App\\Models\\Employee', 16, 'authToken', 'c1dedb53931a19b6451988b4ea12a526c0618bc72aecec59130c6e57600d1754', '[\"*\"]', NULL, NULL, '2024-03-12 10:28:22', '2024-03-12 10:28:22'),
(81, 'App\\Models\\Employee', 16, 'authToken', 'c8821250d774d7aa5a85828be9bd179eca4559fe808a4c70e1fe5781db0e3dd6', '[\"*\"]', NULL, NULL, '2024-03-12 11:19:48', '2024-03-12 11:19:48'),
(82, 'App\\Models\\Employee', 16, 'authToken', '157075e2b9ff684f3e05033f450f200c1bc770f1bc9a0f653c0dd35b576c954d', '[\"*\"]', NULL, NULL, '2024-03-12 11:19:57', '2024-03-12 11:19:57'),
(83, 'App\\Models\\Employee', 16, 'authToken', 'ab0c3fc7a050a0bd174754546fbf81890a494d40b4b887a70dfa3887d8f00204', '[\"*\"]', NULL, NULL, '2024-03-12 11:54:54', '2024-03-12 11:54:54');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` text NOT NULL,
  `description` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `members` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `name`, `members`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Banner design and development', '2', 'project', '2024-03-12 09:48:25', '2024-03-12 09:48:25'),
(2, 'CRM design', '4', 'crm', '2024-03-12 09:49:06', '2024-03-12 09:49:06');

-- --------------------------------------------------------

--
-- Table structure for table `sub_modules`
--

CREATE TABLE `sub_modules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED DEFAULT NULL,
  `module_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_modules`
--

INSERT INTO `sub_modules` (`id`, `project_id`, `module_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Banner design module', '2024-03-12 09:53:05', '2024-03-12 09:53:05'),
(2, 2, 2, 'CRM database module', '2024-03-12 09:53:37', '2024-03-12 09:53:37');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED DEFAULT NULL,
  `module_id` bigint(20) UNSIGNED DEFAULT NULL,
  `submodule_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `type` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `project_id`, `module_id`, `submodule_id`, `name`, `start_date`, `end_date`, `type`, `status`, `created_at`, `updated_at`) VALUES
(6, 2, 2, 2, 'CRM data', '2024-03-15', '2024-03-15', 'development', 'complete', '2024-03-12', '2024-03-12'),
(7, 1, 1, 1, 'Website', '2024-03-16', '2024-03-17', 'development', 'todo', '2024-03-12', '2024-03-12'),
(8, 2, 2, 2, 'CRM design development', '2024-03-18', '2024-03-19', 'development', 'todo', '2024-03-12', '2024-03-12'),
(9, 1, 1, 1, 'Website banner', '2024-03-15', '2024-03-16', 'development', 'todo', '2024-03-12', '2024-03-12');

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
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Anuj Kr', 'anuj120@gmail.com', NULL, '$2y$12$WJue7/2qWb.InSXNnKGt.etf7dOAqDxhE3rMjtrHR8EnkPFR45Fsq', NULL, '2024-03-11 03:11:22', '2024-03-11 03:11:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `modules_project_id_index` (`project_id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_modules`
--
ALTER TABLE `sub_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_modules_project_id_index` (`project_id`),
  ADD KEY `sub_modules_module_id_index` (`module_id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tasks_project_id_index` (`project_id`),
  ADD KEY `tasks_module_id_index` (`module_id`),
  ADD KEY `tasks_submodule_id_index` (`submodule_id`);

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
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sub_modules`
--
ALTER TABLE `sub_modules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `modules`
--
ALTER TABLE `modules`
  ADD CONSTRAINT `modules_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `sub_modules`
--
ALTER TABLE `sub_modules`
  ADD CONSTRAINT `sub_modules_module_id_foreign` FOREIGN KEY (`module_id`) REFERENCES `modules` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sub_modules_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_module_id_foreign` FOREIGN KEY (`module_id`) REFERENCES `modules` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tasks_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tasks_submodule_id_foreign` FOREIGN KEY (`submodule_id`) REFERENCES `sub_modules` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
