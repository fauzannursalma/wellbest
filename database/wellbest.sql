-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 13, 2025 at 11:17 AM
-- Server version: 8.4.3
-- PHP Version: 8.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wellbest`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `machines`
--

CREATE TABLE `machines` (
  `id` bigint UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `machine_category_id` bigint UNSIGNED NOT NULL,
  `warehouse` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `machines`
--

INSERT INTO `machines` (`id`, `code`, `name`, `machine_category_id`, `warehouse`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'MCH-001', 'CNC Milling Machine', 1, 'Gudang A', 1, '2025-08-13 03:15:00', '2025-08-13 03:15:00', NULL),
(2, 'MCH-002', 'Hydraulic Press', 2, 'Gudang B', 1, '2025-08-13 03:15:00', '2025-08-13 03:15:00', NULL),
(3, 'MCH-003', 'Laser Cutter', 1, 'Gudang A', 0, '2025-08-13 03:15:00', '2025-08-13 03:15:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `machine_categories`
--

CREATE TABLE `machine_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `machine_categories`
--

INSERT INTO `machine_categories` (`id`, `code`, `name`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'CUT', 'Cutting', 'Mesin potong', NULL, NULL, NULL),
(2, 'DRIL', 'Drilling', 'Mesin bor', NULL, NULL, NULL),
(3, 'WELD', 'Welding', 'Mesin las', NULL, NULL, NULL),
(4, 'GRIN', 'Grinding', 'Mesin penggiling', NULL, NULL, NULL),
(5, 'ASSEMBLY', 'Assembly', 'Mesin perakitan', NULL, NULL, NULL),
(6, 'PACKING', 'Packing', 'Mesin pengepakan', NULL, NULL, NULL),
(7, 'TESTING', 'Testing', 'Mesin pengujian', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_08_07_110846_create_machine_categories_table', 1),
(5, '2025_08_07_113858_create_ng_defects_table', 1),
(6, '2025_08_07_113909_create_processes_table', 1),
(7, '2025_08_07_114245_create_machines_table', 1),
(8, '2025_08_07_125116_create_routing_processes_table', 1),
(9, '2025_08_13_082616_create_permission_tables', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(3, 'App\\Models\\User', 3);

-- --------------------------------------------------------

--
-- Table structure for table `ng_defects`
--

CREATE TABLE `ng_defects` (
  `id` bigint UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ng_defects`
--

INSERT INTO `ng_defects` (`id`, `code`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'NG-001', 'Baut tidak kencang', NULL, NULL, NULL),
(2, 'NG-002', 'Cat tidak merata', NULL, NULL, NULL),
(3, 'NG-003', 'Pemasangan tidak sejajar', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'view_role', 'web', '2025-08-13 03:15:00', '2025-08-13 03:15:00'),
(2, 'view_any_role', 'web', '2025-08-13 03:15:00', '2025-08-13 03:15:00'),
(3, 'create_role', 'web', '2025-08-13 03:15:00', '2025-08-13 03:15:00'),
(4, 'update_role', 'web', '2025-08-13 03:15:00', '2025-08-13 03:15:00'),
(5, 'delete_role', 'web', '2025-08-13 03:15:00', '2025-08-13 03:15:00'),
(6, 'delete_any_role', 'web', '2025-08-13 03:15:00', '2025-08-13 03:15:00'),
(7, 'view_machine', 'web', '2025-08-13 03:15:01', '2025-08-13 03:15:01'),
(8, 'view_any_machine', 'web', '2025-08-13 03:15:01', '2025-08-13 03:15:01'),
(9, 'create_machine', 'web', '2025-08-13 03:15:01', '2025-08-13 03:15:01'),
(10, 'update_machine', 'web', '2025-08-13 03:15:01', '2025-08-13 03:15:01'),
(11, 'restore_machine', 'web', '2025-08-13 03:15:01', '2025-08-13 03:15:01'),
(12, 'restore_any_machine', 'web', '2025-08-13 03:15:01', '2025-08-13 03:15:01'),
(13, 'replicate_machine', 'web', '2025-08-13 03:15:01', '2025-08-13 03:15:01'),
(14, 'reorder_machine', 'web', '2025-08-13 03:15:01', '2025-08-13 03:15:01'),
(15, 'delete_machine', 'web', '2025-08-13 03:15:01', '2025-08-13 03:15:01'),
(16, 'delete_any_machine', 'web', '2025-08-13 03:15:01', '2025-08-13 03:15:01'),
(17, 'force_delete_machine', 'web', '2025-08-13 03:15:02', '2025-08-13 03:15:02'),
(18, 'force_delete_any_machine', 'web', '2025-08-13 03:15:02', '2025-08-13 03:15:02'),
(19, 'view_machine::category', 'web', '2025-08-13 03:15:02', '2025-08-13 03:15:02'),
(20, 'view_any_machine::category', 'web', '2025-08-13 03:15:02', '2025-08-13 03:15:02'),
(21, 'create_machine::category', 'web', '2025-08-13 03:15:02', '2025-08-13 03:15:02'),
(22, 'update_machine::category', 'web', '2025-08-13 03:15:02', '2025-08-13 03:15:02'),
(23, 'restore_machine::category', 'web', '2025-08-13 03:15:02', '2025-08-13 03:15:02'),
(24, 'restore_any_machine::category', 'web', '2025-08-13 03:15:02', '2025-08-13 03:15:02'),
(25, 'replicate_machine::category', 'web', '2025-08-13 03:15:02', '2025-08-13 03:15:02'),
(26, 'reorder_machine::category', 'web', '2025-08-13 03:15:02', '2025-08-13 03:15:02'),
(27, 'delete_machine::category', 'web', '2025-08-13 03:15:03', '2025-08-13 03:15:03'),
(28, 'delete_any_machine::category', 'web', '2025-08-13 03:15:03', '2025-08-13 03:15:03'),
(29, 'force_delete_machine::category', 'web', '2025-08-13 03:15:03', '2025-08-13 03:15:03'),
(30, 'force_delete_any_machine::category', 'web', '2025-08-13 03:15:03', '2025-08-13 03:15:03'),
(31, 'view_ng::defect', 'web', '2025-08-13 03:15:03', '2025-08-13 03:15:03'),
(32, 'view_any_ng::defect', 'web', '2025-08-13 03:15:03', '2025-08-13 03:15:03'),
(33, 'create_ng::defect', 'web', '2025-08-13 03:15:03', '2025-08-13 03:15:03'),
(34, 'update_ng::defect', 'web', '2025-08-13 03:15:03', '2025-08-13 03:15:03'),
(35, 'restore_ng::defect', 'web', '2025-08-13 03:15:03', '2025-08-13 03:15:03'),
(36, 'restore_any_ng::defect', 'web', '2025-08-13 03:15:03', '2025-08-13 03:15:03'),
(37, 'replicate_ng::defect', 'web', '2025-08-13 03:15:03', '2025-08-13 03:15:03'),
(38, 'reorder_ng::defect', 'web', '2025-08-13 03:15:04', '2025-08-13 03:15:04'),
(39, 'delete_ng::defect', 'web', '2025-08-13 03:15:04', '2025-08-13 03:15:04'),
(40, 'delete_any_ng::defect', 'web', '2025-08-13 03:15:04', '2025-08-13 03:15:04'),
(41, 'force_delete_ng::defect', 'web', '2025-08-13 03:15:04', '2025-08-13 03:15:04'),
(42, 'force_delete_any_ng::defect', 'web', '2025-08-13 03:15:04', '2025-08-13 03:15:04'),
(43, 'view_process', 'web', '2025-08-13 03:15:04', '2025-08-13 03:15:04'),
(44, 'view_any_process', 'web', '2025-08-13 03:15:04', '2025-08-13 03:15:04'),
(45, 'create_process', 'web', '2025-08-13 03:15:04', '2025-08-13 03:15:04'),
(46, 'update_process', 'web', '2025-08-13 03:15:05', '2025-08-13 03:15:05'),
(47, 'restore_process', 'web', '2025-08-13 03:15:05', '2025-08-13 03:15:05'),
(48, 'restore_any_process', 'web', '2025-08-13 03:15:06', '2025-08-13 03:15:06'),
(49, 'replicate_process', 'web', '2025-08-13 03:15:06', '2025-08-13 03:15:06'),
(50, 'reorder_process', 'web', '2025-08-13 03:15:06', '2025-08-13 03:15:06'),
(51, 'delete_process', 'web', '2025-08-13 03:15:06', '2025-08-13 03:15:06'),
(52, 'delete_any_process', 'web', '2025-08-13 03:15:06', '2025-08-13 03:15:06'),
(53, 'force_delete_process', 'web', '2025-08-13 03:15:06', '2025-08-13 03:15:06'),
(54, 'force_delete_any_process', 'web', '2025-08-13 03:15:06', '2025-08-13 03:15:06'),
(55, 'view_routing::process', 'web', '2025-08-13 03:15:06', '2025-08-13 03:15:06'),
(56, 'view_any_routing::process', 'web', '2025-08-13 03:15:07', '2025-08-13 03:15:07'),
(57, 'create_routing::process', 'web', '2025-08-13 03:15:07', '2025-08-13 03:15:07'),
(58, 'update_routing::process', 'web', '2025-08-13 03:15:07', '2025-08-13 03:15:07'),
(59, 'restore_routing::process', 'web', '2025-08-13 03:15:07', '2025-08-13 03:15:07'),
(60, 'restore_any_routing::process', 'web', '2025-08-13 03:15:07', '2025-08-13 03:15:07'),
(61, 'replicate_routing::process', 'web', '2025-08-13 03:15:07', '2025-08-13 03:15:07'),
(62, 'reorder_routing::process', 'web', '2025-08-13 03:15:07', '2025-08-13 03:15:07'),
(63, 'delete_routing::process', 'web', '2025-08-13 03:15:08', '2025-08-13 03:15:08'),
(64, 'delete_any_routing::process', 'web', '2025-08-13 03:15:08', '2025-08-13 03:15:08'),
(65, 'force_delete_routing::process', 'web', '2025-08-13 03:15:08', '2025-08-13 03:15:08'),
(66, 'force_delete_any_routing::process', 'web', '2025-08-13 03:15:08', '2025-08-13 03:15:08'),
(67, 'view_user', 'web', '2025-08-13 03:15:08', '2025-08-13 03:15:08'),
(68, 'view_any_user', 'web', '2025-08-13 03:15:08', '2025-08-13 03:15:08'),
(69, 'create_user', 'web', '2025-08-13 03:15:08', '2025-08-13 03:15:08'),
(70, 'update_user', 'web', '2025-08-13 03:15:09', '2025-08-13 03:15:09'),
(71, 'restore_user', 'web', '2025-08-13 03:15:09', '2025-08-13 03:15:09'),
(72, 'restore_any_user', 'web', '2025-08-13 03:15:09', '2025-08-13 03:15:09'),
(73, 'replicate_user', 'web', '2025-08-13 03:15:09', '2025-08-13 03:15:09'),
(74, 'reorder_user', 'web', '2025-08-13 03:15:09', '2025-08-13 03:15:09'),
(75, 'delete_user', 'web', '2025-08-13 03:15:09', '2025-08-13 03:15:09'),
(76, 'delete_any_user', 'web', '2025-08-13 03:15:09', '2025-08-13 03:15:09'),
(77, 'force_delete_user', 'web', '2025-08-13 03:15:10', '2025-08-13 03:15:10'),
(78, 'force_delete_any_user', 'web', '2025-08-13 03:15:10', '2025-08-13 03:15:10');

-- --------------------------------------------------------

--
-- Table structure for table `processes`
--

CREATE TABLE `processes` (
  `id` bigint UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `machine_category_id` bigint UNSIGNED NOT NULL,
  `order` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `processes`
--

INSERT INTO `processes` (`id`, `code`, `name`, `machine_category_id`, `order`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'PRC-001', 'Cutting Material', 1, 1, '2025-08-13 03:15:00', '2025-08-13 03:15:00', NULL),
(2, 'PRC-002', 'Assembly Unit', 5, 2, '2025-08-13 03:15:00', '2025-08-13 03:15:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'super_admin', 'web', '2025-08-13 03:15:00', '2025-08-13 03:15:00'),
(2, 'staff_machine', 'web', '2025-08-13 03:15:10', '2025-08-13 03:15:10'),
(3, 'staff_production', 'web', '2025-08-13 03:15:10', '2025-08-13 03:15:10');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 2),
(12, 2),
(13, 2),
(14, 2),
(15, 2),
(16, 2),
(17, 2),
(18, 2),
(19, 2),
(20, 2),
(21, 2),
(22, 2),
(23, 2),
(24, 2),
(25, 2),
(26, 2),
(27, 2),
(28, 2),
(29, 2),
(30, 2),
(67, 2),
(68, 2),
(69, 2),
(70, 2),
(71, 2),
(72, 2),
(73, 2),
(74, 2),
(75, 2),
(76, 2),
(77, 2),
(78, 2),
(31, 3),
(32, 3),
(33, 3),
(34, 3),
(35, 3),
(36, 3),
(37, 3),
(38, 3),
(39, 3),
(40, 3),
(41, 3),
(42, 3),
(43, 3),
(44, 3),
(45, 3),
(46, 3),
(47, 3),
(48, 3),
(49, 3),
(50, 3),
(51, 3),
(52, 3),
(53, 3),
(54, 3),
(55, 3),
(56, 3),
(57, 3),
(58, 3),
(59, 3),
(60, 3),
(61, 3),
(62, 3),
(63, 3),
(64, 3),
(65, 3),
(66, 3);

-- --------------------------------------------------------

--
-- Table structure for table `routing_processes`
--

CREATE TABLE `routing_processes` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('SxreEB9w70atR2S1q57dTIsiBNodReyhz7IEuq8L', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiVDVRSEt3Nks4VEswNm5EcGttVzR1M2s3TzVQOE4yZ09qQndrZTloOSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly93ZWxsYmVzdC50ZXN0L3Byb2R1Y3Rpb24iO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTIkeXFBR2JISjFpOGJZVmtlUTYzaVBjT1RwcktqZU52TVA5WkFyWlZVNEI5L3U4Q0w4UXhqSnEiO30=', 1755080337);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'admin@example.com', NULL, '$2y$12$yqAGbHJ1i8bYVkeQ63iPcOTprKjeNvMP9ZArZVU4B9/u8CL8QxjJq', NULL, '2025-08-13 03:15:11', '2025-08-13 03:15:11'),
(2, 'Staff Machine', 'staffmachine@example.com', NULL, '$2y$12$QofeOF8G2r2VDgfJnnUJzu4CB/IavDPiHLLacQDRMJsdI/V6LG2T6', NULL, '2025-08-13 03:15:12', '2025-08-13 03:15:12'),
(3, 'Staff Production', 'staffproduction@example.com', NULL, '$2y$12$0wWtzj.QDwZzwRGWAwu9MO4XHBldBqii/X533TzSXVkBpnSKGt/eS', NULL, '2025-08-13 03:15:12', '2025-08-13 03:15:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `machines`
--
ALTER TABLE `machines`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `machines_code_unique` (`code`),
  ADD KEY `machines_machine_category_id_foreign` (`machine_category_id`);

--
-- Indexes for table `machine_categories`
--
ALTER TABLE `machine_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `machine_categories_code_unique` (`code`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `ng_defects`
--
ALTER TABLE `ng_defects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ng_defects_code_unique` (`code`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `processes`
--
ALTER TABLE `processes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `processes_code_unique` (`code`),
  ADD KEY `processes_machine_category_id_foreign` (`machine_category_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `routing_processes`
--
ALTER TABLE `routing_processes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `machines`
--
ALTER TABLE `machines`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `machine_categories`
--
ALTER TABLE `machine_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `ng_defects`
--
ALTER TABLE `ng_defects`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `processes`
--
ALTER TABLE `processes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `routing_processes`
--
ALTER TABLE `routing_processes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `machines`
--
ALTER TABLE `machines`
  ADD CONSTRAINT `machines_machine_category_id_foreign` FOREIGN KEY (`machine_category_id`) REFERENCES `machine_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `processes`
--
ALTER TABLE `processes`
  ADD CONSTRAINT `processes_machine_category_id_foreign` FOREIGN KEY (`machine_category_id`) REFERENCES `machine_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
