-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2024 at 03:11 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u434660344_hrmsapi_v1`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `empid` varchar(255) DEFAULT NULL,
  `current_address_line_1` varchar(255) DEFAULT NULL,
  `current_address_line_2` varchar(255) DEFAULT NULL,
  `current_address_city` varchar(255) DEFAULT NULL,
  `current_address_state` varchar(255) DEFAULT NULL,
  `current_address_country` varchar(255) DEFAULT NULL,
  `current_address_pincode` varchar(255) DEFAULT NULL,
  `permanent_address_line_1` varchar(255) DEFAULT NULL,
  `permanent_address_line_2` varchar(255) DEFAULT NULL,
  `permanent_address_city` varchar(255) DEFAULT NULL,
  `permanent_address_state` varchar(255) DEFAULT NULL,
  `permanent_address_country` varchar(255) DEFAULT NULL,
  `permanent_address_pincode` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `empid`, `current_address_line_1`, `current_address_line_2`, `current_address_city`, `current_address_state`, `current_address_country`, `current_address_pincode`, `permanent_address_line_1`, `permanent_address_line_2`, `permanent_address_city`, `permanent_address_state`, `permanent_address_country`, `permanent_address_pincode`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '1003', 'gsf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-18 04:54:36', '2024-03-18 05:01:21'),
(2, '1001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-19 05:37:37', '2024-03-19 05:37:37');

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `header_image` varchar(255) DEFAULT NULL,
  `header_image_url` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `file_url` varchar(255) DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL COMMENT 'emp_id',
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL COMMENT 'emp_id',
  `target_audiance` int(11) DEFAULT NULL COMMENT 'for all_emp=1 ,particular_emp=2',
  `notify_by_email` int(11) DEFAULT NULL COMMENT 'for yes=1 ,no=2',
  `employee_response` int(11) DEFAULT NULL,
  `published_on` date DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `header_image` varchar(255) DEFAULT NULL,
  `header_image_url` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `file_url` varchar(255) DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL COMMENT 'emp_id',
  `updated_by` bigint(20) UNSIGNED NOT NULL COMMENT 'emp_id',
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sub_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `published_on` date DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `empid` varchar(255) NOT NULL,
  `team_id` varchar(255) DEFAULT NULL,
  `attendance_time` varchar(255) NOT NULL,
  `attendance_date` varchar(255) NOT NULL,
  `effective_hours` varchar(255) DEFAULT NULL,
  `gross_hours` varchar(255) DEFAULT NULL,
  `time_out` varchar(255) DEFAULT NULL,
  `arrival_on` varchar(255) DEFAULT NULL,
  `status` enum('present','absent') NOT NULL,
  `present_request` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendances`
--

INSERT INTO `attendances` (`id`, `empid`, `team_id`, `attendance_time`, `attendance_date`, `effective_hours`, `gross_hours`, `time_out`, `arrival_on`, `status`, `present_request`, `created_at`, `updated_at`) VALUES
(11, '1001', NULL, '18:09:29', '2024-04-04', '00:00:22', '00:00:22', '18:09:51', '08:39', 'present', NULL, '2024-04-03 07:09:29', '2024-04-03 07:09:51'),
(12, '1001', NULL, '18:09:29', '2024-04-03', '00:00:22', '00:00:22', '18:09:51', '08:39', 'present', NULL, '2024-04-03 07:09:29', '2024-04-03 07:09:51'),
(13, '1001', NULL, '18:09:29', '2024-04-02', '00:00:22', '00:00:22', '18:09:51', '08:39', 'present', NULL, '2024-04-02 07:09:29', '2024-04-02 07:09:51'),
(14, '1001', NULL, '18:09:29', '2024-04-01', '00:00:22', '00:00:22', '18:09:51', '08:39', 'present', NULL, '2024-04-01 07:09:29', '2024-04-01 07:09:51');

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

CREATE TABLE `banks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `account_number` bigint(20) UNSIGNED NOT NULL,
  `ifsc_code` varchar(255) NOT NULL,
  `branch` varchar(255) NOT NULL,
  `corporation_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `alias_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL COMMENT 'emp_id',
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL COMMENT 'emp_id',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `company_profiles`
--

CREATE TABLE `company_profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_of_legal_entity` varchar(255) DEFAULT NULL,
  `signatory_name` varchar(255) DEFAULT NULL,
  `father_name` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `pan` varchar(255) DEFAULT NULL,
  `Date_of_corporation` date DEFAULT NULL,
  `company_identification_number` varchar(255) DEFAULT NULL,
  `registered_office_address` varchar(255) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `ifsc_code` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `corporation_id` varchar(255) DEFAULT NULL,
  `pan_of_the_company` varchar(255) DEFAULT NULL,
  `tan` varchar(255) DEFAULT NULL,
  `tan_circle_number` varchar(255) DEFAULT NULL,
  `corporation_income_tax_location` varchar(255) DEFAULT NULL,
  `pf_number` varchar(255) DEFAULT NULL,
  `pf_registration_date` date DEFAULT NULL,
  `esi_number` varchar(255) DEFAULT NULL,
  `esi_registration_date` date DEFAULT NULL,
  `pt_number` varchar(255) DEFAULT NULL,
  `pt_registration_date` date DEFAULT NULL,
  `establishment_id` varchar(255) DEFAULT NULL,
  `registration_date` date DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `empid` varchar(255) NOT NULL,
  `document_id` varchar(255) NOT NULL,
  `document_type` enum('adhar','pan','voter_id','driving_license','passport') NOT NULL,
  `attechment` varchar(255) DEFAULT NULL,
  `document_name` varchar(255) DEFAULT NULL,
  `document_number` varchar(255) NOT NULL,
  `date_of_birth` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `parent_name` varchar(255) DEFAULT NULL,
  `blood_group` varchar(255) DEFAULT NULL,
  `issued_on` varchar(255) DEFAULT NULL,
  `place_on_issue` varchar(255) DEFAULT NULL,
  `expire_on` varchar(255) DEFAULT NULL,
  `country_code` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `empid`, `document_id`, `document_type`, `attechment`, `document_name`, `document_number`, `date_of_birth`, `name`, `address`, `gender`, `parent_name`, `blood_group`, `issued_on`, `place_on_issue`, `expire_on`, `country_code`, `created_at`, `updated_at`) VALUES
(13, '1001', 'Aadhaarcardtype', 'adhar', 'uploads/documents/1711950054_pexels-photo-891059.jpeg', NULL, '234543434678655544', '2024-04-02', 'Ankit', 'Hardoi', 'male', NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-01 05:40:05', '2024-04-01 05:40:54');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `empid` varchar(255) NOT NULL,
  `current_address` varchar(255) DEFAULT NULL,
  `permanent_address` varchar(255) DEFAULT NULL,
  `father_name` varchar(255) DEFAULT NULL,
  `mother_name` varchar(255) DEFAULT NULL,
  `blood_group` varchar(255) DEFAULT NULL,
  `marital_status` varchar(255) DEFAULT NULL,
  `role` enum('user') NOT NULL,
  `role_id` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `empid`, `current_address`, `permanent_address`, `father_name`, `mother_name`, `blood_group`, `marital_status`, `role`, `role_id`, `deleted_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '1001', 'noida', 'noida', 'kk', 'sita', 'B+', 'single', 'user', 3, NULL, NULL, '2024-03-08 01:56:31', '2024-03-14 03:32:11');

-- --------------------------------------------------------

--
-- Table structure for table `employee_bank_details`
--

CREATE TABLE `employee_bank_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `empid` varchar(255) NOT NULL,
  `account_holder_name` varchar(255) DEFAULT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `ifsc_code` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_bank_details`
--

INSERT INTO `employee_bank_details` (`id`, `empid`, `account_holder_name`, `account_number`, `bank_name`, `ifsc_code`, `branch`, `deleted_at`, `created_at`, `updated_at`) VALUES
(4, '1001', 'kishan', '1023546', 'pnb', '2024-04-05', '2', NULL, '2024-03-01 01:26:25', '2024-03-07 05:27:05');

-- --------------------------------------------------------

--
-- Table structure for table `employee_education`
--

CREATE TABLE `employee_education` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `empid` varchar(255) NOT NULL,
  `qualification` varchar(255) DEFAULT NULL,
  `education_type` varchar(255) DEFAULT NULL,
  `institution` varchar(255) DEFAULT NULL,
  `field_of_study` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `percentage` varchar(255) DEFAULT NULL,
  `collage_name` varchar(255) DEFAULT NULL,
  `attechment` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_education`
--

INSERT INTO `employee_education` (`id`, `empid`, `qualification`, `education_type`, `institution`, `field_of_study`, `start_date`, `end_date`, `percentage`, `collage_name`, `attechment`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '1001', 'sd', NULL, 'dfa', 'df', '1999-05-02', '1999-02-02', '25', 'dFd', NULL, NULL, '2024-03-16 03:29:12', '2024-03-19 05:58:55'),
(2, '1001', 'diploma', 'diploma', 'sdpc', 'ec', '2019-02-05', '2024-02-06', '74', 'fgdf', 'C:\\xampp\\tmp\\phpBC4C.tmp', NULL, '2024-03-16 03:29:38', '2024-03-16 03:29:38'),
(3, '1001', 'diploma', 'diploma', 'sdpc', 'ec', '2019-02-05', '2024-02-06', '74', 'fgdf', 'C:\\xampp\\tmp\\php1991.tmp', NULL, '2024-03-16 03:33:19', '2024-03-16 03:33:19'),
(4, '1001', 'diploma', 'diploma', 'sdpc', 'ec', '2019-02-05', '2024-02-06', '74', 'fgdf', 'uploads/documents/1710591146_download.jpg', NULL, '2024-03-16 06:42:26', '2024-03-16 06:42:26');

-- --------------------------------------------------------

--
-- Table structure for table `employee_experiences`
--

CREATE TABLE `employee_experiences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `empid` varchar(255) DEFAULT NULL,
  `previous_company` varchar(255) DEFAULT NULL,
  `job_title` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_experiences`
--

INSERT INTO `employee_experiences` (`id`, `empid`, `previous_company`, `job_title`, `image`, `start_date`, `end_date`, `location`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '1001', 'Iottech Software', 'web Developer', 'uploads/experince/1710742798_user.jpg', '2024-03-30', '2024-03-30', 'Hello', 'hii', NULL, '2024-03-18 00:46:36', '2024-03-30 06:32:17'),
(2, '1001', 'smc', 'assembly', NULL, '1999-02-02', '2005-02-02', 'noida', NULL, NULL, '2024-03-18 00:46:48', '2024-03-18 00:46:48'),
(3, '1001', 'smc1', 'assembly', 'uploads/experince/1710742828_user.jpg', '1999-02-02', '2005-02-02', 'noida', NULL, NULL, '2024-03-18 00:50:28', '2024-03-18 00:50:28'),
(4, '1003', NULL, NULL, 'uploads/experince/1710762228_user.jpg', NULL, NULL, NULL, NULL, NULL, '2024-03-18 04:49:22', '2024-03-18 06:13:48');

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
-- Table structure for table `job_titles`
--

CREATE TABLE `job_titles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `empid` varchar(255) NOT NULL,
  `join_date` varchar(255) NOT NULL,
  `job_title` varchar(255) NOT NULL,
  `time_type` varchar(255) NOT NULL,
  `reporting_manager` varchar(255) NOT NULL,
  `legal_entity` varchar(255) NOT NULL,
  `business_unit` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_titles`
--

INSERT INTO `job_titles` (`id`, `empid`, `join_date`, `job_title`, `time_type`, `reporting_manager`, `legal_entity`, `business_unit`, `department`, `location`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '1001', '2024-02-04', 'IT', 'permanent', 'prevaeen', 'smc', 'noida', 'Assambly', 'noida', NULL, '2024-03-08 04:39:57', '2024-03-08 04:39:57'),
(3, '1002', '2024-02-04', 'IT', 'permanent', 'prevaeen', 'smc', 'noida', 'Assambly', 'noida', NULL, '2024-03-08 05:04:58', '2024-03-08 05:04:58');

-- --------------------------------------------------------

--
-- Table structure for table `leaves`
--

CREATE TABLE `leaves` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `empid` varchar(255) NOT NULL,
  `from_date` varchar(255) DEFAULT NULL,
  `to_date` varchar(255) DEFAULT NULL,
  `leave_type` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `notify_employee` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leaves`
--

INSERT INTO `leaves` (`id`, `empid`, `from_date`, `to_date`, `leave_type`, `note`, `notify_employee`, `status`, `created_at`, `updated_at`) VALUES
(1, '1001', '2024-03-08', '2024-04-04', 'sick leave', 'leave', 'preevn sir', 'approved', '2024-03-05 03:24:38', '2024-03-05 03:53:07'),
(5, '1002', '2024-03-07', '2024-04-04', 'sick leave', 'leave', 'preevn sir', 'pending', '2024-03-05 03:36:42', '2024-03-05 03:36:42'),
(7, '1003', '2020-02-02', '2020-02-03', 'paid', 'leave', 'sir', 'pending', '2024-03-05 06:41:43', '2024-03-05 06:41:43');

-- --------------------------------------------------------

--
-- Table structure for table `leave_types`
--

CREATE TABLE `leave_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `leave_type` varchar(255) DEFAULT NULL,
  `no_of_leave` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leave_types`
--

INSERT INTO `leave_types` (`id`, `leave_type`, `no_of_leave`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'pl', '20', 'active', '2024-03-06 06:25:20', '2024-03-06 01:42:51', '2024-03-06 06:25:20'),
(2, 'cl', '12', 'active', '2024-03-06 01:46:16', '2024-03-06 01:43:48', '2024-03-06 01:46:16'),
(3, 'paid leave', '12', 'active', NULL, '2024-03-06 01:43:53', '2024-03-06 01:43:53'),
(4, 'cl', '12', 'active', NULL, '2024-03-06 01:44:01', '2024-03-06 01:44:01'),
(5, 'pl', '20', 'active', NULL, '2024-03-06 06:19:00', '2024-03-06 06:19:00'),
(6, 'pl', '20', 'active', NULL, '2024-03-06 06:19:43', '2024-03-06 06:19:43');

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
(9, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(10, '2019_08_19_000000_create_failed_jobs_table', 1),
(11, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(12, '2024_02_26_022401_create_roles_table', 1),
(14, '2024_02_28_051757_create_company_profiles_table', 1),
(17, '2024_03_01_062902_create_employee_bank_details_table', 3),
(18, '2024_03_01_072509_create_otp_table', 4),
(24, '2024_03_05_071630_create_leaves_table', 6),
(25, '2024_03_05_095317_create_categories_table', 7),
(26, '2024_03_05_114646_create_sub_categories_table', 7),
(27, '2024_03_06_062533_create_leave_types_table', 7),
(29, '2024_03_04_062811_create_attendances_table', 8),
(30, '2024_03_06_093235_create_orgs_table', 9),
(31, '2024_03_06_121727_create_time_tables_table', 10),
(32, '2014_10_12_000000_create_users_table', 11),
(33, '2024_02_28_051638_create_employees_table', 11),
(34, '2024_03_06_052656_create_articles_table', 11),
(35, '2024_03_06_103006_create_announcement_table', 11),
(36, '2024_03_06_115949_create_banks_table', 11),
(37, '2024_03_07_063500_create_polls_table', 11),
(38, '2024_03_08_055454_create_job_titles_table', 11),
(40, '2024_03_11_061105_create_documents_table', 12),
(41, '2024_03_12_064703_add_column_to_work_email', 13),
(43, '2024_03_01_074500_create_employee_education_table', 14),
(45, '2024_03_16_131343_create_signatures_table', 15),
(48, '2024_03_01_050957_create_employee_experiences_table', 16),
(49, '2024_03_18_092811_create_addresses_table', 17),
(51, '2024_03_18_104257_create_relations_table', 18),
(52, '2024_03_21_114531_create_w_f_h_s_table', 18);

-- --------------------------------------------------------

--
-- Table structure for table `orgs`
--

CREATE TABLE `orgs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `short_name` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `background_cover` varchar(255) DEFAULT NULL,
  `desc` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orgs`
--

INSERT INTO `orgs` (`id`, `short_name`, `logo`, `background_cover`, `desc`, `created_at`, `updated_at`) VALUES
(7, 'smc4', 'images/1709726740_download.jpg', 'images/1709726740_download1.jpg', 'login page', '2024-03-06 05:16:10', '2024-03-06 06:35:40'),
(8, 'smc2', 'images/1709726427_download.jpg', 'images/1709726427_download1.jpg', 'login page', '2024-03-06 06:30:28', '2024-03-06 06:30:28'),
(9, 'smc2', 'images/1709726567_download.jpg', 'images/1709726567_download1.jpg', 'login page', '2024-03-06 06:32:47', '2024-03-06 06:32:47');

-- --------------------------------------------------------

--
-- Table structure for table `otp`
--

CREATE TABLE `otp` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `otp` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `extra_field` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `partial_days`
--

CREATE TABLE `partial_days` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `empid` varchar(255) DEFAULT NULL,
  `from_date` varchar(255) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `minutes` varchar(255) DEFAULT NULL,
  `notify` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT 'pending',
  `approved_by` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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

-- --------------------------------------------------------

--
-- Table structure for table `polls`
--

CREATE TABLE `polls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `about` text NOT NULL,
  `poll_detail` text DEFAULT NULL,
  `options` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`options`)),
  `file` varchar(255) DEFAULT NULL,
  `file_url` varchar(255) DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL COMMENT 'emp_id',
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL COMMENT 'emp_id',
  `target_audiance` int(11) DEFAULT NULL COMMENT 'for all_emp=1 ,particular_emp=2',
  `notify_by_email` int(11) DEFAULT NULL COMMENT 'for yes=1 ,no=2',
  `published_on` date DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `relations`
--

CREATE TABLE `relations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `empid` varchar(255) DEFAULT NULL,
  `relation` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `profession` varchar(255) DEFAULT NULL,
  `date_of_birth` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(255) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `signatures`
--

CREATE TABLE `signatures` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `empid` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `degination` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `signatures`
--

INSERT INTO `signatures` (`id`, `empid`, `name`, `degination`, `image`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '1001', 'Ritik', 'web', 'uploads/signature/1711950094_pexels-photo-891059.jpeg', NULL, '2024-03-16 08:15:51', '2024-04-01 05:41:34'),
(2, '1002', 'kishan', 'it', 'uploads/signature/1710739123_user.jpg', NULL, '2024-03-16 08:33:32', '2024-03-17 23:48:43'),
(4, '1003', 'kishan', 'it', 'uploads/signature/1710739136_user.jpg', NULL, '2024-03-17 23:48:56', '2024-03-17 23:48:56');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `time_tables`
--

CREATE TABLE `time_tables` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `incomeing_time` varchar(255) DEFAULT NULL,
  `outgoing_time` varchar(255) DEFAULT NULL,
  `break` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `time_tables`
--

INSERT INTO `time_tables` (`id`, `incomeing_time`, `outgoing_time`, `break`, `deleted_at`, `created_at`, `updated_at`) VALUES
(2, '10:30', '7:00', '60', NULL, '2024-03-27 00:32:25', '2024-03-27 00:32:25'),
(3, '10:00', '7:00', '60', NULL, '2024-03-27 09:45:35', '2024-03-27 09:45:35');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `display_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `work_email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `work_type` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `no_of_employee` varchar(255) DEFAULT NULL,
  `country_code` varchar(255) DEFAULT NULL,
  `cover` varchar(255) DEFAULT NULL,
  `empid` bigint(20) UNSIGNED DEFAULT NULL,
  `role` enum('admin','superadmin','user') NOT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `residence_phone` varchar(255) DEFAULT NULL,
  `skype` varchar(255) DEFAULT NULL,
  `physically_handicapped` varchar(255) DEFAULT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  `about` varchar(255) DEFAULT NULL,
  `job_about` varchar(255) DEFAULT NULL,
  `summery` text DEFAULT NULL,
  `intrest` varchar(255) DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `middle_name`, `last_name`, `image`, `display_name`, `email`, `work_email`, `phone`, `work_type`, `company_name`, `no_of_employee`, `country_code`, `cover`, `empid`, `role`, `gender`, `date_of_birth`, `residence_phone`, `skype`, `physically_handicapped`, `nationality`, `about`, `job_about`, `summery`, `intrest`, `role_id`, `email_verified_at`, `password`, `deleted_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', NULL, 'admin', NULL, NULL, 'admin@gmail.com', NULL, '9876543210', NULL, 'smc', '500', 'india', 'image', 1000, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, '$2y$12$V1KgbNOoLuTm65j/rz688uSUg/cu8RTl43RzKbqKFvoFxj2FpMdZi', NULL, NULL, '2024-03-08 01:39:14', '2024-03-08 01:39:14'),
(2, 'kishan', 'kk', 'kishan', 'uploads/profile/1710237591_user.jpg', NULL, 'user@gmail.com', NULL, '123457890', NULL, NULL, NULL, NULL, NULL, 1001, 'user', NULL, '1999-02-04', NULL, 'job:hb', NULL, 'indiand', '<p>hello world</p>', '<p>yes</p><p>&nbsp;</p>', '<p>kishan is web developer</p>', '<p>cricket</p>', 3, NULL, '$2y$12$8r.0ApbN5ndeyFZdczS.6udOf8TYFMPC.AnuE4WG1JZMZ2kzYKowq', NULL, NULL, '2024-03-08 01:45:00', '2024-03-30 12:49:14'),
(3, 'kishan', NULL, 'chauhan', 'uploads/profile/1710237591_user.jpg', 'chauhankishan', 'chauhan@gmail.com', NULL, '9871679231', 'full time', NULL, NULL, NULL, NULL, 1003, 'user', 'male', '1999-08-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, '$2y$12$2C3Z11GJa0x84IwRc2ciROUpkvgVLEGKGVKKCpr8kqmaQzmI5Q1oy', NULL, NULL, '2024-03-12 04:29:51', '2024-03-12 04:29:51');

-- --------------------------------------------------------

--
-- Table structure for table `w_f_h_s`
--

CREATE TABLE `w_f_h_s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `empid` varchar(255) DEFAULT NULL,
  `from_date` varchar(255) DEFAULT NULL,
  `to_date` varchar(255) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `notify` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT 'Pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `w_f_h_s`
--

INSERT INTO `w_f_h_s` (`id`, `empid`, `from_date`, `to_date`, `reason`, `notify`, `status`, `created_at`, `updated_at`) VALUES
(1, '1001', '2024-02-06', '2024-02-06', 'jjj', NULL, 'approved', '2024-03-27 01:54:18', '2024-03-27 02:03:47'),
(2, '1001', '2024-03-27', '2024-03-29', 'aad', NULL, 'Pending', '2024-03-27 11:42:35', '2024-03-27 11:42:35'),
(3, '1001', '2024-03-28', '2024-03-29', 'aad', NULL, 'Pending', '2024-03-27 12:46:16', '2024-03-27 12:46:16'),
(4, '1001', '2024-03-27', '2024-03-28', 'work from home due to healt issue', NULL, 'Pending', '2024-03-27 14:08:27', '2024-03-27 14:08:27'),
(5, '1001', '2023/08/07', '2024/07/06', 'hdshgsdhgsgsgs', NULL, 'Pending', '2024-03-28 11:13:52', '2024-03-28 11:13:52'),
(6, '1001', '2024-03-29', '2024-03-28', 'Hello', 'Hello', 'Pending', '2024-03-29 06:29:48', '2024-03-29 06:29:48'),
(7, '1001', '2024-03-13', '2024-03-14', 'That is a reason', 'Ritik Bajpai', 'Pending', '2024-03-29 06:31:43', '2024-03-29 06:31:43'),
(8, '1001', '2024-03-30', '2024-03-30', 'whf', 'suresh', 'Pending', '2024-03-29 11:07:20', '2024-03-29 11:07:20'),
(9, '1001', '2024-03-23', '2024-03-31', 'whf test', 'suresh', 'Pending', '2024-03-29 11:30:09', '2024-03-29 11:30:09'),
(10, '1001', '2024-03-05', '2024-02-28', 'sakshi test', 'sakshi', 'Pending', '2024-03-29 13:12:50', '2024-03-29 13:12:50'),
(11, '1001', '2024-03-05', '2024-03-06', 'erhge', 'sakshi', 'Pending', '2024-03-30 12:45:05', '2024-03-30 12:45:05'),
(12, '1001', '2024-02-27', '2024-02-28', 'jkjlk', 'jkl', 'Pending', '2024-03-30 12:51:52', '2024-03-30 12:51:52'),
(13, '1001', '2024-03-31', '2024-04-02', 'work', 'kishan', 'Pending', '2024-03-30 13:14:25', '2024-03-30 13:14:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `addresses_empid_unique` (`empid`);

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_profiles`
--
ALTER TABLE `company_profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `documents_document_id_unique` (`document_id`),
  ADD UNIQUE KEY `documents_document_number_unique` (`document_number`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employees_empid_unique` (`empid`);

--
-- Indexes for table `employee_bank_details`
--
ALTER TABLE `employee_bank_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employee_bank_details_empid_unique` (`empid`);

--
-- Indexes for table `employee_education`
--
ALTER TABLE `employee_education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_experiences`
--
ALTER TABLE `employee_experiences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `job_titles`
--
ALTER TABLE `job_titles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `job_titles_empid_unique` (`empid`);

--
-- Indexes for table `leaves`
--
ALTER TABLE `leaves`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `leaves_empid_unique` (`empid`);

--
-- Indexes for table `leave_types`
--
ALTER TABLE `leave_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orgs`
--
ALTER TABLE `orgs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otp`
--
ALTER TABLE `otp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partial_days`
--
ALTER TABLE `partial_days`
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
-- Indexes for table `polls`
--
ALTER TABLE `polls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `relations`
--
ALTER TABLE `relations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signatures`
--
ALTER TABLE `signatures`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `signatures_empid_unique` (`empid`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time_tables`
--
ALTER TABLE `time_tables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_empid_unique` (`empid`),
  ADD UNIQUE KEY `users_work_email_unique` (`work_email`);

--
-- Indexes for table `w_f_h_s`
--
ALTER TABLE `w_f_h_s`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `banks`
--
ALTER TABLE `banks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `company_profiles`
--
ALTER TABLE `company_profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employee_bank_details`
--
ALTER TABLE `employee_bank_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `employee_education`
--
ALTER TABLE `employee_education`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `employee_experiences`
--
ALTER TABLE `employee_experiences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_titles`
--
ALTER TABLE `job_titles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `leaves`
--
ALTER TABLE `leaves`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `leave_types`
--
ALTER TABLE `leave_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `orgs`
--
ALTER TABLE `orgs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `otp`
--
ALTER TABLE `otp`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `partial_days`
--
ALTER TABLE `partial_days`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `polls`
--
ALTER TABLE `polls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `relations`
--
ALTER TABLE `relations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `signatures`
--
ALTER TABLE `signatures`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `time_tables`
--
ALTER TABLE `time_tables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `w_f_h_s`
--
ALTER TABLE `w_f_h_s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
