-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 02, 2021 at 12:49 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jubari5`
--

-- --------------------------------------------------------

--
-- Table structure for table `adds`
--

CREATE TABLE `adds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `adds_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adds_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adds_text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` int(255) NOT NULL DEFAULT 1,
  `is_delete` int(255) NOT NULL DEFAULT 0,
  `how_create_it` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `adds_users`
--

CREATE TABLE `adds_users` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `adds_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1:send from admin',
  `is_delete` int(11) NOT NULL DEFAULT 0,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `airlines`
--

CREATE TABLE `airlines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `airline_code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `how_add_it` int(11) NOT NULL DEFAULT 1,
  `is_delete` int(11) NOT NULL DEFAULT 0,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `airline_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `carrier_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `IATA` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remark` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `airlines`
--

INSERT INTO `airlines` (`id`, `airline_code`, `how_add_it`, `is_delete`, `is_active`, `airline_name`, `country`, `carrier_code`, `code`, `IATA`, `remark`, `updated_at`, `created_at`) VALUES
(12, '365', 1, 0, 1, 'Yemenia', 'yemmen', '365', '365', '', '', '2021-01-24 16:14:02', '0000-00-00 00:00:00'),
(13, '111', 1, 0, 1, 'SES', 'yemmen', '111', '111', '', '', '2021-01-24 16:14:02', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `bus_services`
--

CREATE TABLE `bus_services` (
  `bus_id` varchar(170) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Issue_date` date NOT NULL,
  `refernce` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `passenger_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ses_status` int(11) NOT NULL,
  `bus_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Dep_city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `arr_city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `dep_date` date NOT NULL,
  `bus_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `due_to_supp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_cost` decimal(8,2) NOT NULL,
  `ses_cur_id` int(11) NOT NULL,
  `due_to_customer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cost` decimal(8,2) NOT NULL,
  `service_id` int(11) NOT NULL,
  `passnger_currency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` int(11) NOT NULL DEFAULT 0,
  `service_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_status` int(1) NOT NULL DEFAULT 0,
  `attachment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bill_num` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `errorlog` int(11) NOT NULL DEFAULT 0,
  `how_add_bill` int(11) NOT NULL DEFAULT 0,
  `bookmark` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `how_add_bookmark` int(11) NOT NULL DEFAULT 0,
  `manager_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bus_services`
--

INSERT INTO `bus_services` (`bus_id`, `Issue_date`, `refernce`, `passenger_name`, `ses_status`, `bus_number`, `Dep_city`, `arr_city`, `dep_date`, `bus_name`, `due_to_supp`, `provider_cost`, `ses_cur_id`, `due_to_customer`, `cost`, `service_id`, `passnger_currency`, `remark`, `deleted`, `service_status`, `created_at`, `updated_at`, `user_id`, `user_status`, `attachment`, `bill_num`, `errorlog`, `how_add_bill`, `bookmark`, `how_add_bookmark`, `manager_id`) VALUES
('a92f8b5b-d260-4a65-8138-8d31eeb5f6cf', '2021-01-28', 'nkn', 'nbbvh', 4, '1478523699', 'nsb/sjd/bj', 'arr', '2021-01-28', 'raha', '3', '500.00', 1, '1', '400.00', 2, 'YER', NULL, 0, 1, '2021-01-28 17:06:32', '2021-01-28 17:32:55', '1', 0, '666940.jpg,', NULL, 4, 0, '0', 0, NULL),
('d14c6872-6bd9-45b7-990c-0d0fc82d1141', '2021-01-28', 'uuid', 'name', 4, '1478523698', 'grf/hn', 'arr', '2021-01-28', 'mmmmmmm', '3', '5000.00', 1, '9', '400.00', 2, 'YER', 'mmmmmmmmmmmmmm', 0, 1, '2021-01-28 17:03:56', '2021-01-28 17:40:20', '9', 0, '462766.jpg,', NULL, 0, 0, '0', 0, 9);

-- --------------------------------------------------------

--
-- Table structure for table `car_services`
--

CREATE TABLE `car_services` (
  `car_id` varchar(255) CHARACTER SET utf8 NOT NULL,
  `Issue_date` date NOT NULL,
  `refernce` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `passenger_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ses_status` int(1) NOT NULL DEFAULT 1,
  `voucher_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `car_info` text COLLATE utf8_unicode_ci NOT NULL,
  `Dep_city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `arr_city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dep_date` date NOT NULL,
  `due_to_supp` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `provider_cost` decimal(50,0) NOT NULL,
  `ses_cur_id` int(11) NOT NULL,
  `due_to_customer` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cost` decimal(50,0) NOT NULL,
  `passnger_currency` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `service_id` int(11) NOT NULL,
  `remark` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0,
  `service_status` int(1) NOT NULL,
  `created_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_status` int(1) NOT NULL,
  `attachment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `errorlog` int(1) NOT NULL DEFAULT 0,
  `bill_num` int(11) NOT NULL DEFAULT 0,
  `how_add_bill` int(11) NOT NULL DEFAULT 0,
  `bookmark` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `how_add_bookmark` int(11) NOT NULL DEFAULT 0,
  `manager_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `car_services`
--

INSERT INTO `car_services` (`car_id`, `Issue_date`, `refernce`, `passenger_name`, `ses_status`, `voucher_number`, `car_info`, `Dep_city`, `arr_city`, `dep_date`, `due_to_supp`, `provider_cost`, `ses_cur_id`, `due_to_customer`, `cost`, `passnger_currency`, `service_id`, `remark`, `deleted`, `service_status`, `created_at`, `updated_at`, `user_id`, `user_status`, `attachment`, `errorlog`, `bill_num`, `how_add_bill`, `bookmark`, `how_add_bookmark`, `manager_id`) VALUES
('ad4e4811-7ace-445f-9fcb-3919c3e0827b', '2021-01-28', 'car 1updat', 'ali', 3, '1111111111', 'rtge', 'hgh/f`', 'jjj/jjj', '2021-01-28', '3', '5000', 1, '9', '400', 'YER', 3, NULL, 0, 1, '2021-01-28 20:00:45', '2021-01-28 20:25:13', '9', 0, '271234.jpg,', 1, 0, 0, '0', 0, 9);

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `cur_id` int(11) NOT NULL,
  `cur_name` varchar(10) NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`cur_id`, `cur_name`, `is_active`) VALUES
(1, 'YER ', 1),
(2, 'USD ', 1),
(3, 'SAR', 1);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `cus_id` int(11) NOT NULL,
  `cus_name` varchar(250) NOT NULL,
  `cus_account` bigint(20) NOT NULL,
  `contact_person` varchar(255) NOT NULL,
  `contact_title` varchar(255) NOT NULL,
  `telephon1` bigint(11) NOT NULL,
  `telephon2` bigint(11) NOT NULL,
  `fax1` varchar(255) NOT NULL,
  `fax2` varchar(255) NOT NULL,
  `whatsapp` bigint(11) NOT NULL,
  `cus_email` varchar(255) NOT NULL,
  `address` varchar(250) NOT NULL,
  `city` varchar(250) NOT NULL,
  `country` varchar(255) NOT NULL,
  `def_currency` varchar(255) NOT NULL,
  `vip` int(11) NOT NULL DEFAULT 1,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `is_delete` int(11) NOT NULL DEFAULT 0,
  `how_create_it` int(11) NOT NULL DEFAULT 0,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `is_active`, `deleted`, `created_at`, `remember_token`, `updated_at`) VALUES
(10, 'Head Office', 1, 0, '2020-12-23 08:03:38', NULL, '2021-01-28 17:50:55'),
(1, 'مبيعات', 1, 0, '2020-12-20 05:12:47', NULL, '2021-01-11 06:47:10'),
(6, 'Sales', 1, 0, '2020-12-20 05:13:01', NULL, '2021-01-27 08:23:50'),
(7, 'Accounts', 1, 0, '2020-12-20 05:13:12', NULL, '2021-01-25 02:51:33'),
(13, 'bfhgd', 0, 0, '2021-01-18 19:25:42', NULL, '2021-01-18 16:26:03'),
(14, 'department 12', 1, 0, '2021-01-28 07:09:26', NULL, '2021-01-28 04:09:26'),
(15, 'arabi', 1, 1, '2021-01-28 07:09:59', NULL, '2021-01-28 04:12:57');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `emp_id` bigint(20) UNSIGNED NOT NULL,
  `emp_first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emp_middel_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emp_thired_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emp_last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emp_hirdate` date NOT NULL,
  `emp_salary` decimal(8,2) NOT NULL,
  `emp_ssn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emp_mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dept_id` int(11) NOT NULL,
  `emp_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emp_photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `attchment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`emp_id`, `emp_first_name`, `emp_middel_name`, `emp_thired_name`, `emp_last_name`, `emp_hirdate`, `emp_salary`, `emp_ssn`, `emp_mobile`, `dept_id`, `emp_email`, `emp_photo`, `is_active`, `deleted`, `attchment`, `updated_at`, `created_at`, `account_number`) VALUES
(1, 'Sara', 'Nabeel', 'eee', 'Nabeel', '2020-12-28', '90000.00', '89089089089', '123456678', 1, 'sd.alwajeeh@gmail.com', '1607973796Diagram 1.jpg', 1, 0, '1609084998RCA_Warentee.pdf', '2021-01-05 07:57:17', '2020-12-27 16:03:18', '5689'),
(9, 'suad', 'abdd', 'hff', 'alwa', '2020-12-10', '90000.00', '12312312333', '123456789', 6, 'sd1.alwajeeh1@gmail.com', '160855551917.jpg', 1, 0, '1609138571 الحديث من التربية اسلامية ثالث ثانوي اليمن .pdf', '2020-12-28 06:56:11', '2020-12-28 06:56:11', '12345678'),
(11, 'Osama', 'Ahmed', 'Numan', 'Jubari', '2020-12-28', '80.00', '11111111111', '777777777', 10, 'os@jubari.net', '16085565008.jpg', 1, 0, '1609154501DOC011020-01102020171727(1).pdf', '2021-01-18 18:13:32', '2020-12-28 11:21:41', '123321312312'),
(20, 'eradah', 'mohamad', 'ali', 'alfaqeeh', '2021-01-24', '700000.00', '12341231231', '777777777', 7, 'eradahalfakeh@gmail.com', '160892195829.jpg', 1, 0, '1611472435RCA_Warentee.pdf', '2021-01-24 07:15:32', '2021-01-24 07:13:55', '23451'),
(21, 'shaima', 'ali', 'ali', 'ALFALAHI', '2021-01-10', '999999.99', '33333333333', '123456777', 6, 'alfalahyshyma@gmail.com', '16085559333.jpg', 0, 1, '', '2021-01-28 20:58:05', '2021-01-24 11:30:41', '4555');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `general_services`
--

CREATE TABLE `general_services` (
  `gen_id` varchar(170) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Issue_date` date NOT NULL,
  `refernce` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `passenger_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ses_status` int(11) NOT NULL,
  `voucher_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gen_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `due_to_supp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_cost` decimal(8,2) NOT NULL,
  `ses_cur_id` int(11) NOT NULL,
  `due_to_customer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cost` decimal(8,2) NOT NULL,
  `service_id` int(11) NOT NULL,
  `passnger_currency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` int(11) NOT NULL DEFAULT 0,
  `service_status` int(11) NOT NULL,
  `general_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_status` int(1) NOT NULL DEFAULT 0,
  `attachment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `busher_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `errorlog` int(11) NOT NULL DEFAULT 0,
  `bill_num` int(11) NOT NULL DEFAULT 0,
  `how_add_bill` int(11) NOT NULL DEFAULT 0,
  `bookmark` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `how_add_bookmark` int(11) NOT NULL DEFAULT 0,
  `manager_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `general_services`
--

INSERT INTO `general_services` (`gen_id`, `Issue_date`, `refernce`, `passenger_name`, `ses_status`, `voucher_number`, `gen_info`, `due_to_supp`, `provider_cost`, `ses_cur_id`, `due_to_customer`, `cost`, `service_id`, `passnger_currency`, `remark`, `deleted`, `service_status`, `general_status`, `created_at`, `updated_at`, `user_id`, `user_status`, `attachment`, `busher_time`, `errorlog`, `bill_num`, `how_add_bill`, `bookmark`, `how_add_bookmark`, `manager_id`) VALUES
('ee6aaeb4-93f1-4497-b8fa-f8ccf3fae357', '2021-01-28', 're', 'jhjm', 4, '1111111111', 'vhch', '1', '5000.00', 1, '9', '400.00', 7, 'YER', NULL, 0, 1, 1, '2021-01-28 17:13:08', '2021-01-28 17:23:47', '9', 0, '738103.jpg,', '2021-01-12', 1, 0, 0, '0', 0, 9);

-- --------------------------------------------------------

--
-- Table structure for table `hotel_services`
--

CREATE TABLE `hotel_services` (
  `hotel_id` varchar(170) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Issue_date` date NOT NULL,
  `refernce` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `passenger_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ses_status` int(11) NOT NULL,
  `voucher_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `check_out` date NOT NULL,
  `check_in` date NOT NULL,
  `due_to_supp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_cost` decimal(8,2) NOT NULL,
  `ses_cur_id` int(11) NOT NULL,
  `due_to_customer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cost` decimal(8,2) NOT NULL,
  `service_id` int(11) NOT NULL,
  `passnger_currency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` int(11) NOT NULL DEFAULT 0,
  `service_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_status` int(1) NOT NULL DEFAULT 0,
  `attachment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `hotel_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `errorlog` int(11) NOT NULL DEFAULT 0,
  `bill_num` int(11) NOT NULL DEFAULT 0,
  `how_add_bill` int(11) NOT NULL DEFAULT 0,
  `bookmark` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `how_add_bookmark` int(11) NOT NULL DEFAULT 0,
  `manager_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hotel_services`
--

INSERT INTO `hotel_services` (`hotel_id`, `Issue_date`, `refernce`, `passenger_name`, `ses_status`, `voucher_number`, `country`, `check_out`, `check_in`, `due_to_supp`, `provider_cost`, `ses_cur_id`, `due_to_customer`, `cost`, `service_id`, `passnger_currency`, `remark`, `deleted`, `service_status`, `created_at`, `updated_at`, `user_id`, `user_status`, `attachment`, `city`, `hotel_name`, `errorlog`, `bill_num`, `how_add_bill`, `bookmark`, `how_add_bookmark`, `manager_id`) VALUES
('7cd933a8-0520-4872-8fee-fc807ab6ed6d', '2021-01-28', 'hotel2', 'ahmed', 1, '1111111112', 'yemen', '2021-02-01', '2021-02-03', '3', '5000.00', 1, '9', '6000.00', 5, 'YER', 'remark', 0, 3, '2021-01-28 13:25:13', '2021-01-28 17:26:37', '9', 0, '448904.jpg,902149.jpg,', 'Sana\'a', 'Azal', 0, 0, 0, '0', 0, 9),
('af89cabc-cd32-4527-b412-f8be4ff37574', '2021-01-28', 'uuid', 'nbbvh', 1, '1111111113', 'yemen', '2021-01-28', '2021-01-28', '3', '200.00', 3, '9', '200.00', 5, 'YER', 'remark', 0, 1, '2021-01-28 13:29:36', '2021-01-28 17:26:10', '9', 0, '873068.jpg,', 'Sana\'a', 'hgjg', 1, 0, 0, '0', 0, 9),
('f9854b1a-3d4e-4f93-bb45-b5f91c6dc9d5', '2021-01-28', 'hotel 2', 'Ahmed', 2, '1111111111', 'yemen', '2021-02-05', '2021-01-28', '3', '210.00', 3, '9', '220.00', 5, 'SAR', NULL, 0, 1, '2021-01-28 13:22:10', '2021-01-28 17:25:57', '9', 0, '235660.jpg,677325.jpg,', 'Sana\'a', 'Azal', 1, 0, 0, '0', 0, 9);

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `remarker_id` int(11) NOT NULL,
  `editor_id` int(11) NOT NULL,
  `main_servic_id` int(11) NOT NULL,
  `service_id` varchar(170) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remark_body` text NOT NULL,
  `status` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `number` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `remarker_id`, `editor_id`, `main_servic_id`, `service_id`, `remark_body`, `status`, `date`, `updated_at`, `created_at`, `number`) VALUES
(290, 9, 9, 1, '72bf15fd-9bb6-4542-89b2-46bae2fb88d2', 'airline_name,Yemenia,number|passenger_name,shyma,ans ma|cost,210.00,cost', 0, '2021-01-28 20:23:25', NULL, NULL, '1111111112'),
(291, 9, 9, 7, 'ee6aaeb4-93f1-4497-b8fa-f8ccf3fae357', 'refernce,re,refertvnsbvfjs', 0, '2021-01-28 20:23:47', NULL, NULL, '1111111111'),
(293, 9, 9, 3, 'ad4e4811-7ace-445f-9fcb-3919c3e0827b', '', 0, '2021-01-28 20:25:13', NULL, NULL, '1111111111'),
(294, 9, 9, 4, 'b6ba4f32-47d2-4114-86f9-b203569d3b87', 'Issue_date,2021-01-28,dfmndsjkb', 0, '2021-01-28 20:25:34', NULL, NULL, '1111111111'),
(296, 9, 9, 5, 'f9854b1a-3d4e-4f93-bb45-b5f91c6dc9d5', 'passenger_name,Ahmed,jhdodeu', 0, '2021-01-28 20:25:57', NULL, NULL, '1111111111'),
(297, 9, 9, 5, 'af89cabc-cd32-4527-b412-f8be4ff37574', 'provider_cost,200.00,curr', 0, '2021-01-28 20:26:10', NULL, NULL, '1111111113');

-- --------------------------------------------------------

--
-- Table structure for table `medical_services`
--

CREATE TABLE `medical_services` (
  `med_id` varchar(170) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Issue_date` date NOT NULL,
  `refernce` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `passenger_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ses_status` int(11) NOT NULL,
  `document_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `med_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Dep_city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `arr_city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `dep_date` date NOT NULL,
  `due_to_supp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_cost` decimal(8,2) NOT NULL,
  `ses_cur_id` int(11) NOT NULL,
  `due_to_customer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cost` decimal(8,2) NOT NULL,
  `service_id` int(11) NOT NULL,
  `passnger_currency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` int(11) NOT NULL DEFAULT 0,
  `service_status` int(11) NOT NULL,
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_status` int(1) NOT NULL DEFAULT 0,
  `attachment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `errorlog` int(11) NOT NULL DEFAULT 0,
  `bill_num` int(11) NOT NULL DEFAULT 0,
  `how_add_bill` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `bookmark` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `how_add_bookmark` int(11) NOT NULL DEFAULT 0,
  `manager_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `medical_services`
--

INSERT INTO `medical_services` (`med_id`, `Issue_date`, `refernce`, `passenger_name`, `ses_status`, `document_number`, `from_city`, `med_info`, `Dep_city`, `arr_city`, `dep_date`, `due_to_supp`, `provider_cost`, `ses_cur_id`, `due_to_customer`, `cost`, `service_id`, `passnger_currency`, `remark`, `deleted`, `service_status`, `user_id`, `user_status`, `attachment`, `errorlog`, `bill_num`, `how_add_bill`, `created_at`, `updated_at`, `bookmark`, `how_add_bookmark`, `manager_id`) VALUES
('b6ba4f32-47d2-4114-86f9-b203569d3b87', '2021-01-28', 're', 'df', 4, '1111111111', 'edbd', 'nkjhk', '', '', '0000-00-00', '1', '500.00', 3, '9', '400.00', 4, 'YER', NULL, 0, 1, '9', 0, '816913.jpg,', 1, 0, 0, '2021-01-28 17:18:18', '2021-01-28 17:25:34', '0', 0, 9);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from` bigint(20) NOT NULL,
  `to` bigint(20) NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `from`, `to`, `message`, `is_read`, `created_at`, `updated_at`) VALUES
(2, 1, 2, 'xmmmmmmm', 1, '2021-01-08 05:18:18', '2021-01-17 14:06:16'),
(3, 2, 1, 'cmns,nc', 1, '2021-01-08 05:19:13', '2021-01-21 11:25:17'),
(4, 1, 2, 'cmcnncs', 1, '2021-01-08 05:19:22', '2021-01-17 14:06:16'),
(5, 2, 1, 'mn,', 1, '2021-01-17 09:13:51', '2021-01-21 11:25:17'),
(6, 2, 1, 'hi', 1, '2021-01-17 09:14:12', '2021-01-21 11:25:17'),
(7, 1, 2, 'hello', 1, '2021-01-17 09:14:35', '2021-01-17 14:06:16'),
(8, 2, 1, 'nnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn', 1, '2021-01-17 09:17:26', '2021-01-21 11:25:17'),
(9, 2, 1, 'njbjb', 1, '2021-01-17 09:22:48', '2021-01-21 11:25:17'),
(10, 3, 1, 'mmmmm', 1, '2021-01-17 09:23:11', '2021-01-21 11:24:28'),
(11, 2, 1, 'bbfjhdebf', 1, '2021-01-17 09:23:57', '2021-01-21 11:25:17'),
(12, 2, 1, 'bfbeh', 1, '2021-01-17 09:24:00', '2021-01-21 11:25:17'),
(13, 2, 1, 'hi', 1, '2021-01-17 14:04:37', '2021-01-21 11:25:17'),
(14, 2, 1, 'no', 1, '2021-01-17 14:05:05', '2021-01-21 11:25:17'),
(15, 1, 2, 'nmb', 1, '2021-01-17 14:06:12', '2021-01-17 14:06:16'),
(16, 1, 2, 'gegrvhewrhwjewj', 0, '2021-01-21 07:52:53', '2021-01-21 07:52:53'),
(17, 1, 2, 'eredajhdf', 0, '2021-01-21 07:56:03', '2021-01-21 07:56:03'),
(18, 1, 2, 'hi', 0, '2021-01-21 08:05:25', '2021-01-21 08:05:25'),
(19, 1, 2, 'hi', 0, '2021-01-21 09:44:38', '2021-01-21 09:44:38'),
(20, 1, 2, 'no', 0, '2021-01-21 09:48:34', '2021-01-21 09:48:34'),
(21, 1, 2, 'fine', 0, '2021-01-21 09:52:45', '2021-01-21 09:52:45'),
(22, 1, 3, 'j', 0, '2021-01-21 09:56:24', '2021-01-21 09:56:24'),
(23, 1, 3, 'hello', 0, '2021-01-21 09:56:53', '2021-01-21 09:56:53'),
(24, 1, 3, 'hello', 0, '2021-01-21 10:02:50', '2021-01-21 10:02:50'),
(25, 1, 3, 'hel', 0, '2021-01-21 10:04:55', '2021-01-21 10:04:55'),
(26, 1, 3, 'ghgf', 0, '2021-01-21 10:05:09', '2021-01-21 10:05:09'),
(27, 1, 3, 'hhhh', 0, '2021-01-21 10:07:02', '2021-01-21 10:07:02'),
(28, 1, 2, 'state', 0, '2021-01-21 10:08:35', '2021-01-21 10:08:35'),
(29, 1, 2, 'm,wsk', 0, '2021-01-21 10:09:03', '2021-01-21 10:09:03'),
(30, 1, 2, 'k', 0, '2021-01-21 10:10:10', '2021-01-21 10:10:10'),
(31, 1, 2, 'hellof', 0, '2021-01-21 10:11:03', '2021-01-21 10:11:03'),
(32, 1, 2, 'no', 0, '2021-01-21 10:12:09', '2021-01-21 10:12:09'),
(33, 1, 3, 'abod', 0, '2021-01-21 10:13:02', '2021-01-21 10:13:02'),
(34, 1, 2, 'test', 0, '2021-01-21 10:15:17', '2021-01-21 10:15:17'),
(35, 1, 2, 'scrol', 0, '2021-01-21 10:21:53', '2021-01-21 10:21:53'),
(36, 1, 2, 'g', 0, '2021-01-21 10:29:23', '2021-01-21 10:29:23'),
(37, 1, 2, 'ge', 0, '2021-01-21 11:01:36', '2021-01-21 11:01:36'),
(38, 1, 3, 'hjhreh', 0, '2021-01-21 11:03:22', '2021-01-21 11:03:22'),
(39, 1, 3, 'mam', 0, '2021-01-21 11:22:17', '2021-01-21 11:22:17'),
(40, 1, 3, 'hebhw', 0, '2021-01-21 11:23:40', '2021-01-21 11:23:40'),
(41, 1, 3, 'gy', 0, '2021-01-21 11:24:30', '2021-01-21 11:24:30'),
(42, 1, 2, 'no', 0, '2021-01-21 11:25:20', '2021-01-21 11:25:20'),
(43, 1, 9, 'ho', 1, '2021-01-25 03:45:22', '2021-02-02 08:44:14'),
(44, 1, 9, 'where', 1, '2021-01-25 03:45:52', '2021-02-02 08:44:14'),
(45, 9, 1, 'ho', 1, '2021-01-25 03:47:09', '2021-02-02 08:29:08'),
(46, 1, 9, 'soso', 1, '2021-01-25 03:56:47', '2021-02-02 08:44:14'),
(47, 1, 9, 'webq', 1, '2021-01-25 03:58:34', '2021-02-02 08:44:14'),
(48, 9, 1, 'in houds', 1, '2021-01-25 04:03:11', '2021-02-02 08:29:08'),
(49, 1, 9, 'quick', 1, '2021-01-25 04:06:22', '2021-02-02 08:44:14'),
(50, 9, 1, 'mhh', 1, '2021-01-25 04:07:06', '2021-02-02 08:29:08'),
(51, 9, 1, 'hhh', 1, '2021-01-25 04:07:10', '2021-02-02 08:29:08'),
(52, 9, 1, 'mbj', 1, '2021-01-25 04:09:23', '2021-02-02 08:29:08'),
(53, 9, 0, 'mhghjfyh', 1, '2021-01-25 04:10:54', '2021-02-02 08:44:19'),
(54, 9, 1, 'hi', 1, '2021-01-25 06:53:04', '2021-02-02 08:29:08'),
(55, 11, 9, 'sara', 1, '2021-01-25 06:54:09', '2021-02-02 08:44:16'),
(56, 9, 1, 'gfkjewfj', 1, '2021-01-25 06:57:31', '2021-02-02 08:29:08'),
(57, 1, 0, 'slam', 1, '2021-01-25 06:57:59', '2021-01-30 10:30:28'),
(58, 1, 0, 'how are you', 1, '2021-01-25 06:58:17', '2021-01-30 10:30:28'),
(59, 1, 0, 'dmnf,ds', 1, '2021-01-25 06:59:31', '2021-01-30 10:30:28'),
(61, 9, 1, 'fine', 1, '2021-01-25 07:07:25', '2021-02-02 08:29:08'),
(62, 1, 9, 'how', 1, '2021-01-25 07:11:42', '2021-02-02 08:44:14'),
(63, 1, 9, 'jj', 1, '2021-01-25 07:25:49', '2021-02-02 08:44:14'),
(64, 1, 9, 'nbjj', 1, '2021-01-25 07:25:55', '2021-02-02 08:44:14'),
(65, 1, 9, 'soso', 1, '2021-01-25 07:29:56', '2021-02-02 08:44:14'),
(66, 1, 9, 'i miss', 1, '2021-01-25 07:31:30', '2021-02-02 08:44:14'),
(67, 1, 9, 'ghftd', 1, '2021-01-25 07:32:14', '2021-02-02 08:44:14'),
(68, 1, 9, 'fine', 1, '2021-01-25 07:33:10', '2021-02-02 08:44:14'),
(69, 1, 9, 'hhhhhhhhh', 1, '2021-01-25 07:33:37', '2021-02-02 08:44:14'),
(70, 1, 9, 'nnnnnn', 1, '2021-01-25 07:34:35', '2021-02-02 08:44:14'),
(71, 1, 9, 'kk', 1, '2021-01-25 07:35:35', '2021-02-02 08:44:14'),
(72, 1, 9, 'mmmmmmmmm', 1, '2021-01-25 07:35:47', '2021-02-02 08:44:14'),
(73, 11, 9, 'oh hi', 1, '2021-01-25 09:14:51', '2021-02-02 08:44:16'),
(74, 11, 9, 'how are you', 1, '2021-01-25 09:16:27', '2021-02-02 08:44:16'),
(75, 11, 9, 'four', 1, '2021-01-25 09:16:56', '2021-02-02 08:44:16'),
(76, 11, 9, '5', 1, '2021-01-25 09:18:04', '2021-02-02 08:44:16'),
(77, 11, 9, 'ggggggggg', 1, '2021-01-25 09:18:37', '2021-02-02 08:44:16'),
(78, 9, 11, '6', 1, '2021-01-25 09:24:12', '2021-01-26 03:32:49'),
(79, 9, 11, '5', 1, '2021-01-25 09:30:03', '2021-01-26 03:32:49'),
(80, 9, 11, '0', 1, '2021-01-25 09:31:33', '2021-01-26 03:32:49'),
(81, 9, 11, 'nnnnnnn', 1, '2021-01-25 09:33:07', '2021-01-26 03:32:49'),
(82, 9, 11, 'alert', 1, '2021-01-25 09:33:54', '2021-01-26 03:32:49'),
(83, 9, 11, 'zero', 1, '2021-01-25 09:35:38', '2021-01-26 03:32:49'),
(84, 9, 11, 'alaa', 1, '2021-01-25 09:36:24', '2021-01-26 03:32:49'),
(85, 9, 11, 'vvvvvvvv', 1, '2021-01-25 09:36:54', '2021-01-26 03:32:49'),
(86, 9, 11, 'nnnnn', 1, '2021-01-25 09:37:38', '2021-01-26 03:32:49'),
(87, 9, 11, '0', 1, '2021-01-25 09:38:00', '2021-01-26 03:32:49'),
(88, 9, 0, 'hwllo', 1, '2021-01-25 09:38:25', '2021-02-02 08:44:19'),
(89, 11, 0, 'hi', 1, '2021-01-25 09:39:05', '2021-01-26 03:33:41'),
(90, 11, 0, 'nnnnnnn', 1, '2021-01-25 09:41:29', '2021-01-26 03:33:41'),
(91, 11, 0, 'nnnnnnnnnnnn', 1, '2021-01-25 09:42:15', '2021-01-26 03:33:41'),
(92, 11, 0, 'nnnnn', 1, '2021-01-25 09:42:25', '2021-01-26 03:33:41'),
(93, 11, 9, 'private', 1, '2021-01-25 09:42:48', '2021-02-02 08:44:16'),
(94, 11, 0, 'gropu', 1, '2021-01-25 09:42:55', '2021-01-26 03:33:41'),
(95, 11, 0, 'group', 1, '2021-01-25 09:45:02', '2021-01-26 03:33:41'),
(96, 11, 0, '5', 1, '2021-01-25 09:56:10', '2021-01-26 03:33:41'),
(97, 9, 0, 'alert', 1, '2021-01-25 09:57:00', '2021-02-02 08:44:19'),
(98, 9, 0, 'hamxza', 1, '2021-01-25 09:58:32', '2021-02-02 08:44:19'),
(99, 9, 0, 'hhhh', 1, '2021-01-25 09:59:40', '2021-02-02 08:44:19'),
(100, 9, 0, 'mmmmmmmmmm', 1, '2021-01-25 10:00:14', '2021-02-02 08:44:19'),
(101, 9, 0, 'mmmmmm', 1, '2021-01-25 10:02:50', '2021-02-02 08:44:19'),
(102, 11, 9, 'صباح الخير', 1, '2021-01-26 03:20:47', '2021-02-02 08:44:16'),
(103, 9, 11, 'صباح النور', 1, '2021-01-26 03:22:17', '2021-01-26 03:32:49'),
(104, 11, 0, 'سلام', 1, '2021-01-26 03:23:33', '2021-01-26 03:33:41'),
(105, 11, 0, 'كيف الحال', 1, '2021-01-26 03:24:06', '2021-01-26 03:33:41'),
(106, 11, 0, 'ان شاء الله اموركم طيبه', 1, '2021-01-26 03:24:33', '2021-01-26 03:33:41'),
(107, 9, 11, 'كيفك', 1, '2021-01-26 03:25:43', '2021-01-26 03:32:49'),
(108, 9, 11, ',dk hgydfi', 1, '2021-01-26 03:28:06', '2021-01-26 03:32:49'),
(109, 11, 9, 'soso', 1, '2021-01-26 03:30:59', '2021-02-02 08:44:16'),
(110, 11, 9, 'nfr', 1, '2021-01-26 03:31:52', '2021-02-02 08:44:16'),
(111, 11, 9, 'e,nkwe', 1, '2021-01-26 03:32:54', '2021-02-02 08:44:16'),
(112, 9, 11, 'dm', 0, '2021-01-26 03:33:39', '2021-01-26 03:33:39'),
(113, 9, 1, 'sara', 1, '2021-01-26 03:35:26', '2021-02-02 08:29:08'),
(114, 9, 1, 'how are you', 1, '2021-01-26 03:39:15', '2021-02-02 08:29:08'),
(115, 9, 1, 'do you com today?', 1, '2021-01-26 03:40:35', '2021-02-02 08:29:08'),
(120, 1, 9, 'صباح الخير', 1, '2021-01-26 03:49:38', '2021-02-02 08:44:14'),
(121, 9, 1, 'صباح النور', 1, '2021-01-26 03:50:01', '2021-02-02 08:29:08'),
(122, 1, 0, 'وعليكم السلام', 1, '2021-01-26 03:50:24', '2021-01-30 10:30:28'),
(123, 9, 0, 'كيف حالكم', 1, '2021-01-26 03:50:49', '2021-02-02 08:44:19'),
(124, 1, 9, 'hi', 1, '2021-01-26 07:01:29', '2021-02-02 08:44:14'),
(125, 1, 9, 'how old RE', 1, '2021-01-26 07:02:13', '2021-02-02 08:44:14'),
(126, 9, 1, 'hello', 1, '2021-01-26 07:03:21', '2021-02-02 08:29:08'),
(127, 9, 1, 'fine', 1, '2021-01-26 07:04:10', '2021-02-02 08:29:08'),
(128, 9, 1, 'and you', 1, '2021-01-26 07:05:10', '2021-02-02 08:29:08'),
(129, 1, 9, 'bvhj', 1, '2021-01-26 07:06:29', '2021-02-02 08:44:14'),
(130, 1, 9, 'bvfh', 1, '2021-01-26 07:10:02', '2021-02-02 08:44:14'),
(131, 1, 0, 'group', 1, '2021-01-26 07:10:52', '2021-01-30 10:30:28'),
(132, 1, 0, 'hi', 1, '2021-01-26 07:25:06', '2021-01-30 10:30:28'),
(133, 1, 0, 'pending', 1, '2021-01-26 07:25:51', '2021-01-30 10:30:28'),
(134, 1, 0, 'gg', 1, '2021-01-26 07:26:55', '2021-01-30 10:30:28'),
(135, 1, 0, 'hjguj', 1, '2021-01-26 07:27:02', '2021-01-30 10:30:28'),
(136, 1, 0, 'bbbbbbbbb', 1, '2021-01-26 07:27:18', '2021-01-30 10:30:28'),
(137, 1, 0, 'nnnnnnnn', 1, '2021-01-26 07:27:48', '2021-01-30 10:30:28'),
(138, 1, 0, 'hhjvhv', 1, '2021-01-26 07:27:55', '2021-01-30 10:30:28'),
(139, 1, 0, 'nnnnnnnnnnnnn', 1, '2021-01-26 07:28:09', '2021-01-30 10:30:28'),
(140, 1, 0, 'nnnnnnnnnnn', 1, '2021-01-26 07:28:55', '2021-01-30 10:30:28'),
(141, 1, 0, 'val', 1, '2021-01-26 07:29:05', '2021-01-30 10:30:28'),
(142, 1, 0, 'vadsa', 1, '2021-01-26 07:29:13', '2021-01-30 10:30:28'),
(143, 1, 9, 'suad', 1, '2021-01-26 07:29:37', '2021-02-02 08:44:14'),
(144, 1, 9, 'pppp', 1, '2021-01-26 07:30:19', '2021-02-02 08:44:14'),
(145, 1, 0, 'bjhvvh', 1, '2021-01-26 07:30:50', '2021-01-30 10:30:28'),
(146, 1, 0, 'bvv', 1, '2021-01-26 07:31:01', '2021-01-30 10:30:28'),
(147, 1, 0, 'mnbjh', 1, '2021-01-26 07:35:34', '2021-01-30 10:30:28'),
(148, 9, 0, 'abd', 1, '2021-01-26 07:36:33', '2021-02-02 08:44:19'),
(149, 9, 0, 'gri', 1, '2021-01-26 07:36:51', '2021-02-02 08:44:19'),
(150, 1, 0, 'mackdkfnd', 1, '2021-01-26 07:38:25', '2021-01-30 10:30:28'),
(151, 1, 0, 'name sgh', 1, '2021-01-26 07:39:39', '2021-01-30 10:30:28'),
(152, 1, 0, 'gytftdrtg', 1, '2021-01-26 07:41:42', '2021-01-30 10:30:28'),
(153, 9, 0, '30', 1, '2021-01-26 07:41:59', '2021-02-02 08:44:19'),
(154, 1, 0, 'hi now', 1, '2021-01-26 07:42:16', '2021-01-30 10:30:28'),
(155, 9, 0, 'hhhhhh', 1, '2021-01-26 07:49:25', '2021-02-02 08:44:19'),
(156, 9, 0, 'nnnnn', 1, '2021-01-26 07:50:15', '2021-02-02 08:44:19'),
(157, 1, 0, 'haja', 1, '2021-01-26 07:51:14', '2021-01-30 10:30:28'),
(158, 9, 0, 'n', 1, '2021-01-26 07:51:26', '2021-02-02 08:44:19'),
(159, 1, 0, 'mmmmmmmm', 1, '2021-01-26 07:52:07', '2021-01-30 10:30:28'),
(160, 1, 0, 'mmmmmmmmmmm', 1, '2021-01-26 07:52:24', '2021-01-30 10:30:28'),
(161, 9, 0, 'ggg', 1, '2021-01-26 07:53:56', '2021-02-02 08:44:19'),
(162, 9, 0, 'mnjkbm', 1, '2021-01-26 07:54:14', '2021-02-02 08:44:19'),
(163, 9, 0, 'ggggg', 1, '2021-01-26 07:55:36', '2021-02-02 08:44:19'),
(164, 1, 0, 'byfyhfh', 1, '2021-01-26 07:55:52', '2021-01-30 10:30:28'),
(165, 1, 0, 'end', 1, '2021-01-26 07:58:04', '2021-01-30 10:30:28'),
(166, 9, 0, 'jkgujgj', 1, '2021-01-26 07:58:20', '2021-02-02 08:44:19'),
(167, 1, 0, 'ggg', 1, '2021-01-26 07:59:04', '2021-01-30 10:30:28'),
(168, 9, 0, 'hhdtsh', 1, '2021-01-26 07:59:16', '2021-02-02 08:44:19'),
(169, 1, 0, 'vhdtg', 1, '2021-01-26 08:00:39', '2021-01-30 10:30:28'),
(170, 1, 0, 'bbbbbbbbbbbb', 1, '2021-01-26 08:01:36', '2021-01-30 10:30:28'),
(171, 9, 0, 'group', 1, '2021-01-26 08:02:24', '2021-02-02 08:44:19'),
(172, 9, 0, 'mmmmmmm', 1, '2021-01-26 08:03:00', '2021-02-02 08:44:19'),
(173, 1, 0, 'bbbbbbb', 1, '2021-01-26 08:03:12', '2021-01-30 10:30:28'),
(174, 9, 0, 'gggg', 1, '2021-01-26 08:04:19', '2021-02-02 08:44:19'),
(175, 1, 0, 'msjhvhytdth', 1, '2021-01-26 08:05:54', '2021-01-30 10:30:28'),
(176, 9, 0, 'ghfyhf', 1, '2021-01-26 08:06:08', '2021-02-02 08:44:19'),
(177, 1, 0, 'hujgujvk', 1, '2021-01-26 08:07:20', '2021-01-30 10:30:28'),
(178, 9, 0, 'bbbbbbbbbbbb', 1, '2021-01-26 08:07:32', '2021-02-02 08:44:19'),
(179, 1, 0, 'nnnnnnnnn', 1, '2021-01-26 08:07:41', '2021-01-30 10:30:28'),
(180, 9, 0, 'grup', 1, '2021-01-26 08:08:45', '2021-02-02 08:44:19'),
(181, 1, 0, 'bbbbb', 1, '2021-01-26 08:09:04', '2021-01-30 10:30:28'),
(182, 9, 0, 'nnnn', 1, '2021-01-26 08:09:15', '2021-02-02 08:44:19'),
(183, 9, 0, 'nbjhfhj', 1, '2021-01-26 08:09:36', '2021-02-02 08:44:19'),
(184, 1, 9, 'السلام عليكم', 1, '2021-01-26 08:12:51', '2021-02-02 08:44:14'),
(185, 9, 1, 'وعليكم السلام', 1, '2021-01-26 08:13:18', '2021-02-02 08:29:08'),
(186, 1, 0, 'السلام عليكم', 1, '2021-01-26 08:13:44', '2021-01-30 10:30:28'),
(187, 9, 0, 'اهلين', 1, '2021-01-26 08:14:01', '2021-02-02 08:44:19'),
(188, 1, 0, 'كيف الحال', 1, '2021-01-26 08:14:08', '2021-01-30 10:30:28'),
(189, 1, 9, 'كيف الحال', 1, '2021-01-26 08:14:25', '2021-02-02 08:44:14'),
(190, 9, 0, 'الحمد لله', 1, '2021-01-26 08:14:42', '2021-02-02 08:44:19'),
(191, 1, 0, 'hvhgc', 1, '2021-01-26 08:21:47', '2021-01-30 10:30:28'),
(192, 9, 1, 'salam', 1, '2021-01-30 10:25:05', '2021-02-02 08:29:08'),
(193, 1, 9, 'how are you', 1, '2021-01-30 10:26:22', '2021-02-02 08:44:14'),
(194, 1, 1, 'country', 1, '2021-01-30 10:27:02', '2021-01-30 10:28:14'),
(195, 1, 9, 'cuty', 1, '2021-01-30 10:28:12', '2021-02-02 08:44:14'),
(196, 1, 9, 'nm', 1, '2021-01-30 10:28:58', '2021-02-02 08:44:14'),
(197, 1, 9, 'mbjyhfh', 1, '2021-01-30 10:29:09', '2021-02-02 08:44:14'),
(198, 1, 9, ',,,,,,,,,,,,,,,,,,,,', 1, '2021-01-30 10:29:22', '2021-02-02 08:44:14'),
(199, 1, 0, 'cgfxf', 1, '2021-01-30 10:29:41', '2021-01-30 10:30:28'),
(200, 1, 0, 'mmmmmmmmmmmmmmmmmmmmmmm', 1, '2021-01-30 10:29:50', '2021-01-30 10:30:28'),
(201, 1, 9, 'nnnvgfxsrea', 1, '2021-01-30 10:30:04', '2021-02-02 08:44:14'),
(202, 1, 9, 'nnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn', 1, '2021-01-30 10:30:18', '2021-02-02 08:44:14'),
(203, 9, 1, 'hhhh', 1, '2021-02-02 08:28:25', '2021-02-02 08:29:08'),
(204, 1, 9, 'then', 1, '2021-02-02 08:29:06', '2021-02-02 08:44:14'),
(205, 9, 20, 'sdw', 0, '2021-02-02 08:44:28', '2021-02-02 08:44:28');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_08_19_000000_create_failed_jobs_table', 1),
(2, '2020_12_10_152801_department_table', 1),
(3, '2020_12_10_163821_employee_table', 1),
(4, '2020_12_11_004601_create_airlines_table', 1),
(5, '2020_12_12_063730_create_roles_table', 1),
(6, '2020_12_12_155020_create_adds_table', 1),
(7, '2020_12_12_180105_create__service_table', 1),
(8, '2020_12_15_010321_create_users_table', 1),
(9, '2020_12_16_195630_create__ticket_service_table', 2),
(10, '2020_12_17_065620_create__bus_service_table', 2),
(11, '2020_12_17_070154_create__hotel_service_table', 2),
(12, '2020_12_17_070528_create__car_service_table', 2),
(13, '2020_12_17_070844_create__visa_service_table', 2),
(14, '2020_12_17_071134_create__medical_service_table', 2),
(15, '2020_12_17_071603_create__general_service_table', 2),
(16, '2014_10_12_000000_create_users_table', 3),
(17, '2014_10_12_100000_create_password_resets_table', 4),
(18, '2020_12_12_063730_create_rolees_table', 4),
(19, '2020_12_19_193200_laratrust_setup_tables', 5);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `sender` int(11) NOT NULL,
  `resiver` int(11) NOT NULL,
  `body` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `main_service` int(11) DEFAULT 0,
  `servic_id` varchar(200) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `sender`, `resiver`, `body`, `status`, `main_service`, `servic_id`, `created_at`, `updated_at`) VALUES
(577, 1, 9, '<div class=dropdown-divider></div><a onclick=status_notify(\"Add Ticket Service\",1,9) href=/remark  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>The employeeSara  Nabeel Add New Services Ticket  <span class=float-right text-muted text-sm>2021-01-26 17:09:04</span></a>', 0, 1, '99cd7a43-0912-4f22-b414-28182e47a122', '2021-01-26 14:09:04', '2021-01-26'),
(578, 1, 1, '<div class=dropdown-divider></div><a onclick=status_notify(\"99cd7a43-0912-4f22-b414-28182e47a122\",1,1) href=/show_remark  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>the Sales Manager send  ticket servic number : 1111111111 to Accountent <span class=float-right text-muted text-sm>2021-01-26 17:17:39</span></a>', 0, 1, '99cd7a43-0912-4f22-b414-28182e47a122', '2021-01-26 14:17:39', '2021-01-26'),
(579, 20, 1, '<div class=dropdown-divider></div><a onclick=status_notify(\"99cd7a43-0912-4f22-b414-28182e47a122\",20,1) href=/show_remark  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>the accountent send  ticket servic number : 1111111111 to archive <span class=float-right text-muted text-sm>2021-01-26 17:21:59</span></a>', 0, 1, '99cd7a43-0912-4f22-b414-28182e47a122', '2021-01-26 14:21:59', '2021-01-26'),
(580, 9, 1, '<div class=dropdown-divider></div><a onclick=status_notify(\"72bf15fd-9bb6-4542-89b2-46bae2fb88d2\",9,1) href=/remark  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>The employeesuad  alwa Add New Services Ticket  <span class=float-right text-muted text-sm>2021-01-28 13:15:35</span></a>', 0, 1, '72bf15fd-9bb6-4542-89b2-46bae2fb88d2', '2021-01-28 10:15:35', '2021-01-28'),
(581, 9, 9, '<div class=dropdown-divider></div><a onclick=status_notify(\"72bf15fd-9bb6-4542-89b2-46bae2fb88d2\",9,9) href=/remark  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>The employeesuad  alwa Add New Services Ticket  <span class=float-right text-muted text-sm>2021-01-28 13:15:35</span></a>', 0, 1, '72bf15fd-9bb6-4542-89b2-46bae2fb88d2', '2021-01-28 10:15:35', '2021-01-28'),
(582, 9, 9, '<div class=dropdown-divider></div><a onclick=status_notify(\"72bf15fd-9bb6-4542-89b2-46bae2fb88d2\",9,9) href=/remark  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>The employeesuad  alwa Add New Services Ticket  <span class=float-right text-muted text-sm>2021-01-28 13:15:35</span></a>', 0, 1, '72bf15fd-9bb6-4542-89b2-46bae2fb88d2', '2021-01-28 10:15:35', '2021-01-28'),
(583, 9, 1, '<div class=dropdown-divider></div><a onclick=status_notify(\"72bf15fd-9bb6-4542-89b2-46bae2fb88d2\",9,1) href=/remark  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>The employeesuad abdd send Ticket Services to SaleManager  <span class=float-right text-muted text-sm>2021-01-28 13:16:37</span></a>', 0, 1, '72bf15fd-9bb6-4542-89b2-46bae2fb88d2', '2021-01-28 10:16:37', '2021-01-28'),
(584, 9, 9, '<div class=dropdown-divider></div><a onclick=status_notify(\"72bf15fd-9bb6-4542-89b2-46bae2fb88d2\",9,9) href=/remark  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>The employeesuad abdd send Ticket Services to SaleManager  <span class=float-right text-muted text-sm>2021-01-28 13:16:37</span></a>', 0, 1, '72bf15fd-9bb6-4542-89b2-46bae2fb88d2', '2021-01-28 10:16:37', '2021-01-28'),
(585, 9, 9, '<div class=dropdown-divider></div><a onclick=status_notify(\"72bf15fd-9bb6-4542-89b2-46bae2fb88d2\",9,9) href=/remark  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>The employeesuad abdd send Ticket Services to SaleManager  <span class=float-right text-muted text-sm>2021-01-28 13:16:37</span></a>', 0, 1, '72bf15fd-9bb6-4542-89b2-46bae2fb88d2', '2021-01-28 10:16:37', '2021-01-28'),
(586, 9, 1, '<div class=dropdown-divider></div><a onclick=status_notify(\"c9b5fefc-1ee0-4b66-ab6d-6514030dee19\",9,1) href=/remark  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>The employeesuad  alwa Add New Services Ticket  <span class=float-right text-muted text-sm>2021-01-28 13:19:06</span></a>', 0, 1, 'c9b5fefc-1ee0-4b66-ab6d-6514030dee19', '2021-01-28 10:19:06', '2021-01-28'),
(587, 9, 9, '<div class=dropdown-divider></div><a onclick=status_notify(\"c9b5fefc-1ee0-4b66-ab6d-6514030dee19\",9,9) href=/remark  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>The employeesuad  alwa Add New Services Ticket  <span class=float-right text-muted text-sm>2021-01-28 13:19:06</span></a>', 0, 1, 'c9b5fefc-1ee0-4b66-ab6d-6514030dee19', '2021-01-28 10:19:06', '2021-01-28'),
(588, 9, 9, '<div class=dropdown-divider></div><a onclick=status_notify(\"c9b5fefc-1ee0-4b66-ab6d-6514030dee19\",9,9) href=/remark  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>The employeesuad  alwa Add New Services Ticket  <span class=float-right text-muted text-sm>2021-01-28 13:19:06</span></a>', 0, 1, 'c9b5fefc-1ee0-4b66-ab6d-6514030dee19', '2021-01-28 10:19:06', '2021-01-28'),
(589, 9, 1, '<div class=dropdown-divider></div><a onclick=status_notify(\"66b7b5dd-34d1-45c4-a5c5-e41a71ec153b\",9,1) href=/remark  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>The employeesuad  alwa Add New Services Ticket  <span class=float-right text-muted text-sm>2021-01-28 15:58:10</span></a>', 0, 1, '66b7b5dd-34d1-45c4-a5c5-e41a71ec153b', '2021-01-28 12:58:10', '2021-01-28'),
(590, 9, 9, '<div class=dropdown-divider></div><a onclick=status_notify(\"66b7b5dd-34d1-45c4-a5c5-e41a71ec153b\",9,9) href=/remark  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>The employeesuad  alwa Add New Services Ticket  <span class=float-right text-muted text-sm>2021-01-28 15:58:10</span></a>', 0, 1, '66b7b5dd-34d1-45c4-a5c5-e41a71ec153b', '2021-01-28 12:58:10', '2021-01-28'),
(591, 9, 9, '<div class=dropdown-divider></div><a onclick=status_notify(\"66b7b5dd-34d1-45c4-a5c5-e41a71ec153b\",9,9) href=/remark  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>The employeesuad  alwa Add New Services Ticket  <span class=float-right text-muted text-sm>2021-01-28 15:58:10</span></a>', 0, 1, '66b7b5dd-34d1-45c4-a5c5-e41a71ec153b', '2021-01-28 12:58:10', '2021-01-28'),
(592, 9, 1, '<div class=dropdown-divider></div><a onclick=status_notify(\"66b7b5dd-34d1-45c4-a5c5-e41a71ec153b\",9,1) href=/remark  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>The employeesuad abdd send Ticket Services to SaleManager  <span class=float-right text-muted text-sm>2021-01-28 15:58:36</span></a>', 0, 1, '66b7b5dd-34d1-45c4-a5c5-e41a71ec153b', '2021-01-28 12:58:36', '2021-01-28'),
(593, 9, 9, '<div class=dropdown-divider></div><a onclick=status_notify(\"66b7b5dd-34d1-45c4-a5c5-e41a71ec153b\",9,9) href=/remark  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>The employeesuad abdd send Ticket Services to SaleManager  <span class=float-right text-muted text-sm>2021-01-28 15:58:37</span></a>', 0, 1, '66b7b5dd-34d1-45c4-a5c5-e41a71ec153b', '2021-01-28 12:58:37', '2021-01-28'),
(594, 9, 9, '<div class=dropdown-divider></div><a onclick=status_notify(\"66b7b5dd-34d1-45c4-a5c5-e41a71ec153b\",9,9) href=/remark  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>The employeesuad abdd send Ticket Services to SaleManager  <span class=float-right text-muted text-sm>2021-01-28 15:58:37</span></a>', 0, 1, '66b7b5dd-34d1-45c4-a5c5-e41a71ec153b', '2021-01-28 12:58:37', '2021-01-28'),
(595, 9, 1, '<div class=dropdown-divider></div><a onclick=status_notify(\"63fdcb15-5449-413e-983a-bac44627f67e\",9,1) href=/remark  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>The employeesuad  alwa Add New Services Ticket  <span class=float-right text-muted text-sm>2021-01-28 16:00:29</span></a>', 0, 1, '63fdcb15-5449-413e-983a-bac44627f67e', '2021-01-28 13:00:29', '2021-01-28'),
(596, 9, 9, '<div class=dropdown-divider></div><a onclick=status_notify(\"63fdcb15-5449-413e-983a-bac44627f67e\",9,9) href=/remark  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>The employeesuad  alwa Add New Services Ticket  <span class=float-right text-muted text-sm>2021-01-28 16:00:29</span></a>', 0, 1, '63fdcb15-5449-413e-983a-bac44627f67e', '2021-01-28 13:00:29', '2021-01-28'),
(597, 9, 9, '<div class=dropdown-divider></div><a onclick=status_notify(\"63fdcb15-5449-413e-983a-bac44627f67e\",9,9) href=/remark  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>The employeesuad  alwa Add New Services Ticket  <span class=float-right text-muted text-sm>2021-01-28 16:00:29</span></a>', 0, 1, '63fdcb15-5449-413e-983a-bac44627f67e', '2021-01-28 13:00:29', '2021-01-28'),
(598, 9, 1, '<div class=dropdown-divider></div><a onclick=status_notify(\"63fdcb15-5449-413e-983a-bac44627f67e\",9,1) href=/remark  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>The employeesuad abdd send Ticket Services to SaleManager  <span class=float-right text-muted text-sm>2021-01-28 16:02:37</span></a>', 0, 1, '63fdcb15-5449-413e-983a-bac44627f67e', '2021-01-28 13:02:37', '2021-01-28'),
(599, 9, 9, '<div class=dropdown-divider></div><a onclick=status_notify(\"63fdcb15-5449-413e-983a-bac44627f67e\",9,9) href=/remark  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>The employeesuad abdd send Ticket Services to SaleManager  <span class=float-right text-muted text-sm>2021-01-28 16:02:38</span></a>', 0, 1, '63fdcb15-5449-413e-983a-bac44627f67e', '2021-01-28 13:02:38', '2021-01-28'),
(600, 9, 9, '<div class=dropdown-divider></div><a onclick=status_notify(\"63fdcb15-5449-413e-983a-bac44627f67e\",9,9) href=/remark  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>The employeesuad abdd send Ticket Services to SaleManager  <span class=float-right text-muted text-sm>2021-01-28 16:02:38</span></a>', 0, 1, '63fdcb15-5449-413e-983a-bac44627f67e', '2021-01-28 13:02:38', '2021-01-28'),
(601, 9, 1, '<div class=dropdown-divider></div><a onclick=status_notify(\"72bf15fd-9bb6-4542-89b2-46bae2fb88d2\",9,1) href=/remark  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>The employeesuad abdd SEND <span class=\"text-success\">1</span> Services Ticket   <span class=float-right text-muted text-sm>2021-01-28 16:03:04</span></a>', 0, 1, '72bf15fd-9bb6-4542-89b2-46bae2fb88d2', '2021-01-28 13:03:04', '2021-01-28'),
(602, 9, 9, '<div class=dropdown-divider></div><a onclick=status_notify(\"72bf15fd-9bb6-4542-89b2-46bae2fb88d2\",9,9) href=/remark  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>The employeesuad abdd SEND <span class=\"text-success\">1</span> Services Ticket   <span class=float-right text-muted text-sm>2021-01-28 16:03:05</span></a>', 0, 1, '72bf15fd-9bb6-4542-89b2-46bae2fb88d2', '2021-01-28 13:03:05', '2021-01-28'),
(603, 9, 9, '<div class=dropdown-divider></div><a onclick=status_notify(\"72bf15fd-9bb6-4542-89b2-46bae2fb88d2\",9,9) href=/remark  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>The employeesuad abdd SEND <span class=\"text-success\">1</span> Services Ticket   <span class=float-right text-muted text-sm>2021-01-28 16:03:05</span></a>', 0, 1, '72bf15fd-9bb6-4542-89b2-46bae2fb88d2', '2021-01-28 13:03:05', '2021-01-28'),
(604, 9, 1, '<div class=dropdown-divider></div><a onclick=status_notify(\"f9854b1a-3d4e-4f93-bb45-b5f91c6dc9d5\",9,1) href=/remark  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>The employeesuad  alwa Add New Services Hotel  <span class=float-right text-muted text-sm>2021-01-28 16:22:10</span></a>', 0, 5, 'f9854b1a-3d4e-4f93-bb45-b5f91c6dc9d5', '2021-01-28 13:22:10', '2021-01-28'),
(605, 9, 9, '<div class=dropdown-divider></div><a onclick=status_notify(\"f9854b1a-3d4e-4f93-bb45-b5f91c6dc9d5\",9,9) href=/remark  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>The employeesuad  alwa Add New Services Hotel  <span class=float-right text-muted text-sm>2021-01-28 16:22:10</span></a>', 0, 5, 'f9854b1a-3d4e-4f93-bb45-b5f91c6dc9d5', '2021-01-28 13:22:10', '2021-01-28'),
(606, 9, 9, '<div class=dropdown-divider></div><a onclick=status_notify(\"f9854b1a-3d4e-4f93-bb45-b5f91c6dc9d5\",9,9) href=/remark  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>The employeesuad  alwa Add New Services Hotel  <span class=float-right text-muted text-sm>2021-01-28 16:22:10</span></a>', 0, 5, 'f9854b1a-3d4e-4f93-bb45-b5f91c6dc9d5', '2021-01-28 13:22:10', '2021-01-28'),
(607, 9, 1, '<div class=dropdown-divider></div><a onclick=status_notify(\"f9854b1a-3d4e-4f93-bb45-b5f91c6dc9d5\",9,1) href=/remark  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>The employeesuad abdd send Hotel Services to SaleManager  <span class=float-right text-muted text-sm>2021-01-28 16:24:15</span></a>', 0, 6, 'f9854b1a-3d4e-4f93-bb45-b5f91c6dc9d5', '2021-01-28 13:24:15', '2021-01-28'),
(608, 9, 9, '<div class=dropdown-divider></div><a onclick=status_notify(\"f9854b1a-3d4e-4f93-bb45-b5f91c6dc9d5\",9,9) href=/remark  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>The employeesuad abdd send Hotel Services to SaleManager  <span class=float-right text-muted text-sm>2021-01-28 16:24:16</span></a>', 0, 6, 'f9854b1a-3d4e-4f93-bb45-b5f91c6dc9d5', '2021-01-28 13:24:16', '2021-01-28'),
(609, 9, 9, '<div class=dropdown-divider></div><a onclick=status_notify(\"f9854b1a-3d4e-4f93-bb45-b5f91c6dc9d5\",9,9) href=/remark  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>The employeesuad abdd send Hotel Services to SaleManager  <span class=float-right text-muted text-sm>2021-01-28 16:24:16</span></a>', 0, 6, 'f9854b1a-3d4e-4f93-bb45-b5f91c6dc9d5', '2021-01-28 13:24:16', '2021-01-28'),
(610, 9, 1, '<div class=dropdown-divider></div><a onclick=status_notify(\"7cd933a8-0520-4872-8fee-fc807ab6ed6d\",9,1) href=/remark  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>The employeesuad  alwa Add New Services Hotel  <span class=float-right text-muted text-sm>2021-01-28 16:25:13</span></a>', 0, 5, '7cd933a8-0520-4872-8fee-fc807ab6ed6d', '2021-01-28 13:25:13', '2021-01-28'),
(611, 9, 9, '<div class=dropdown-divider></div><a onclick=status_notify(\"7cd933a8-0520-4872-8fee-fc807ab6ed6d\",9,9) href=/remark  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>The employeesuad  alwa Add New Services Hotel  <span class=float-right text-muted text-sm>2021-01-28 16:25:13</span></a>', 0, 5, '7cd933a8-0520-4872-8fee-fc807ab6ed6d', '2021-01-28 13:25:13', '2021-01-28'),
(612, 9, 9, '<div class=dropdown-divider></div><a onclick=status_notify(\"7cd933a8-0520-4872-8fee-fc807ab6ed6d\",9,9) href=/remark  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>The employeesuad  alwa Add New Services Hotel  <span class=float-right text-muted text-sm>2021-01-28 16:25:13</span></a>', 0, 5, '7cd933a8-0520-4872-8fee-fc807ab6ed6d', '2021-01-28 13:25:13', '2021-01-28'),
(613, 9, 1, '<div class=dropdown-divider></div><a onclick=status_notify(\"7cd933a8-0520-4872-8fee-fc807ab6ed6d\",9,1) href=/remark  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>The employeesuad abdd send Hotel Services to SaleManager  <span class=float-right text-muted text-sm>2021-01-28 16:26:39</span></a>', 0, 6, '7cd933a8-0520-4872-8fee-fc807ab6ed6d', '2021-01-28 13:26:39', '2021-01-28'),
(614, 9, 9, '<div class=dropdown-divider></div><a onclick=status_notify(\"7cd933a8-0520-4872-8fee-fc807ab6ed6d\",9,9) href=/remark  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>The employeesuad abdd send Hotel Services to SaleManager  <span class=float-right text-muted text-sm>2021-01-28 16:26:40</span></a>', 0, 6, '7cd933a8-0520-4872-8fee-fc807ab6ed6d', '2021-01-28 13:26:40', '2021-01-28'),
(615, 9, 9, '<div class=dropdown-divider></div><a onclick=status_notify(\"7cd933a8-0520-4872-8fee-fc807ab6ed6d\",9,9) href=/remark  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>The employeesuad abdd send Hotel Services to SaleManager  <span class=float-right text-muted text-sm>2021-01-28 16:26:40</span></a>', 0, 6, '7cd933a8-0520-4872-8fee-fc807ab6ed6d', '2021-01-28 13:26:40', '2021-01-28'),
(616, 9, 1, '<div class=dropdown-divider></div><a onclick=status_notify(\"af89cabc-cd32-4527-b412-f8be4ff37574\",9,1) href=/remark  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>The employeesuad  alwa Add New Services Hotel  <span class=float-right text-muted text-sm>2021-01-28 16:29:36</span></a>', 0, 5, 'af89cabc-cd32-4527-b412-f8be4ff37574', '2021-01-28 13:29:36', '2021-01-28'),
(617, 9, 9, '<div class=dropdown-divider></div><a onclick=status_notify(\"af89cabc-cd32-4527-b412-f8be4ff37574\",9,9) href=/remark  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>The employeesuad  alwa Add New Services Hotel  <span class=float-right text-muted text-sm>2021-01-28 16:29:36</span></a>', 0, 5, 'af89cabc-cd32-4527-b412-f8be4ff37574', '2021-01-28 13:29:36', '2021-01-28'),
(618, 9, 9, '<div class=dropdown-divider></div><a onclick=status_notify(\"af89cabc-cd32-4527-b412-f8be4ff37574\",9,9) href=/remark  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>The employeesuad  alwa Add New Services Hotel  <span class=float-right text-muted text-sm>2021-01-28 16:29:36</span></a>', 0, 5, 'af89cabc-cd32-4527-b412-f8be4ff37574', '2021-01-28 13:29:36', '2021-01-28'),
(619, 9, 1, '<div class=dropdown-divider></div><a onclick=status_notify(\"af89cabc-cd32-4527-b412-f8be4ff37574\",9,1) href=/remark  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>The employeesuad abdd send Hotel Services to SaleManager  <span class=float-right text-muted text-sm>2021-01-28 16:39:49</span></a>', 0, 6, 'af89cabc-cd32-4527-b412-f8be4ff37574', '2021-01-28 13:39:49', '2021-01-28'),
(620, 9, 9, '<div class=dropdown-divider></div><a onclick=status_notify(\"af89cabc-cd32-4527-b412-f8be4ff37574\",9,9) href=/remark  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>The employeesuad abdd send Hotel Services to SaleManager  <span class=float-right text-muted text-sm>2021-01-28 16:39:50</span></a>', 0, 6, 'af89cabc-cd32-4527-b412-f8be4ff37574', '2021-01-28 13:39:50', '2021-01-28'),
(621, 9, 9, '<div class=dropdown-divider></div><a onclick=status_notify(\"af89cabc-cd32-4527-b412-f8be4ff37574\",9,9) href=/remark  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>The employeesuad abdd send Hotel Services to SaleManager  <span class=float-right text-muted text-sm>2021-01-28 16:39:50</span></a>', 0, 6, 'af89cabc-cd32-4527-b412-f8be4ff37574', '2021-01-28 13:39:50', '2021-01-28'),
(622, 9, 1, '<div class=dropdown-divider></div><a onclick=status_notify(\"ad4e4811-7ace-445f-9fcb-3919c3e0827b\",9,1) href=/remark  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>The employeesuad  alwa Add New Services Car  <span class=float-right text-muted text-sm>2021-01-28 20:00:45</span></a>', 0, 3, 'ad4e4811-7ace-445f-9fcb-3919c3e0827b', '2021-01-28 17:00:45', '2021-01-28'),
(623, 9, 9, '<div class=dropdown-divider></div><a onclick=status_notify(\"ad4e4811-7ace-445f-9fcb-3919c3e0827b\",9,9) href=/remark  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>The employeesuad  alwa Add New Services Car  <span class=float-right text-muted text-sm>2021-01-28 20:00:45</span></a>', 0, 3, 'ad4e4811-7ace-445f-9fcb-3919c3e0827b', '2021-01-28 17:00:45', '2021-01-28'),
(624, 9, 9, '<div class=dropdown-divider></div><a onclick=status_notify(\"ad4e4811-7ace-445f-9fcb-3919c3e0827b\",9,9) href=/remark  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>The employeesuad  alwa Add New Services Car  <span class=float-right text-muted text-sm>2021-01-28 20:00:45</span></a>', 0, 3, 'ad4e4811-7ace-445f-9fcb-3919c3e0827b', '2021-01-28 17:00:45', '2021-01-28'),
(625, 9, 1, '<div class=dropdown-divider></div><a onclick=status_notify(\"ad4e4811-7ace-445f-9fcb-3919c3e0827b\",9,1) href=/remark  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>The employeesuad abdd send Car Services to SaleManager  <span class=float-right text-muted text-sm>2021-01-28 20:02:27</span></a>', 0, 3, 'ad4e4811-7ace-445f-9fcb-3919c3e0827b', '2021-01-28 17:02:27', '2021-01-28'),
(626, 9, 9, '<div class=dropdown-divider></div><a onclick=status_notify(\"ad4e4811-7ace-445f-9fcb-3919c3e0827b\",9,9) href=/remark  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>The employeesuad abdd send Car Services to SaleManager  <span class=float-right text-muted text-sm>2021-01-28 20:02:28</span></a>', 0, 3, 'ad4e4811-7ace-445f-9fcb-3919c3e0827b', '2021-01-28 17:02:28', '2021-01-28'),
(627, 9, 9, '<div class=dropdown-divider></div><a onclick=status_notify(\"ad4e4811-7ace-445f-9fcb-3919c3e0827b\",9,9) href=/remark  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>The employeesuad abdd send Car Services to SaleManager  <span class=float-right text-muted text-sm>2021-01-28 20:02:28</span></a>', 0, 3, 'ad4e4811-7ace-445f-9fcb-3919c3e0827b', '2021-01-28 17:02:28', '2021-01-28'),
(628, 9, 1, '<div class=dropdown-divider></div><a onclick=status_notify(\"d14c6872-6bd9-45b7-990c-0d0fc82d1141\",9,1) href=/remark  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>The employeesuad  alwa Add New Services Bus  <span class=float-right text-muted text-sm>2021-01-28 20:03:56</span></a>', 0, 2, 'd14c6872-6bd9-45b7-990c-0d0fc82d1141', '2021-01-28 17:03:56', '2021-01-28'),
(629, 9, 9, '<div class=dropdown-divider></div><a onclick=status_notify(\"d14c6872-6bd9-45b7-990c-0d0fc82d1141\",9,9) href=/remark  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>The employeesuad  alwa Add New Services Bus  <span class=float-right text-muted text-sm>2021-01-28 20:03:56</span></a>', 0, 2, 'd14c6872-6bd9-45b7-990c-0d0fc82d1141', '2021-01-28 17:03:56', '2021-01-28'),
(630, 9, 9, '<div class=dropdown-divider></div><a onclick=status_notify(\"d14c6872-6bd9-45b7-990c-0d0fc82d1141\",9,9) href=/remark  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>The employeesuad  alwa Add New Services Bus  <span class=float-right text-muted text-sm>2021-01-28 20:03:56</span></a>', 0, 2, 'd14c6872-6bd9-45b7-990c-0d0fc82d1141', '2021-01-28 17:03:56', '2021-01-28'),
(631, 9, 1, '<div class=dropdown-divider></div><a onclick=status_notify(\"d14c6872-6bd9-45b7-990c-0d0fc82d1141\",9,1) href=/remark  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>The employeesuad abdd send Bus Services to SaleManager  <span class=float-right text-muted text-sm>2021-01-28 20:05:52</span></a>', 0, 2, 'd14c6872-6bd9-45b7-990c-0d0fc82d1141', '2021-01-28 17:05:52', '2021-01-28'),
(632, 9, 9, '<div class=dropdown-divider></div><a onclick=status_notify(\"d14c6872-6bd9-45b7-990c-0d0fc82d1141\",9,9) href=/remark  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>The employeesuad abdd send Bus Services to SaleManager  <span class=float-right text-muted text-sm>2021-01-28 20:05:52</span></a>', 0, 2, 'd14c6872-6bd9-45b7-990c-0d0fc82d1141', '2021-01-28 17:05:52', '2021-01-28'),
(633, 9, 9, '<div class=dropdown-divider></div><a onclick=status_notify(\"d14c6872-6bd9-45b7-990c-0d0fc82d1141\",9,9) href=/remark  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>The employeesuad abdd send Bus Services to SaleManager  <span class=float-right text-muted text-sm>2021-01-28 20:05:53</span></a>', 0, 2, 'd14c6872-6bd9-45b7-990c-0d0fc82d1141', '2021-01-28 17:05:53', '2021-01-28'),
(634, 9, 20, '<div class=dropdown-divider></div><a onclick=status_notify(\"a92f8b5b-d260-4a65-8138-8d31eeb5f6cf\",9,20) href=/emp_bus  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>The employeesuad  alwa Add services Bus by you <span class=float-right text-muted text-sm>2021-01-28 20:06:32</span></a>', 0, 2, 'a92f8b5b-d260-4a65-8138-8d31eeb5f6cf', '2021-01-28 17:06:32', '2021-01-28'),
(635, 9, 1, '<div class=dropdown-divider></div><a onclick=status_notify(\"4b49535f-9a90-47f6-912d-ec3735aa2c90\",9,1) href=/remark  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>The employeesuad  alwa Add New Services Visa  <span class=float-right text-muted text-sm>2021-01-28 20:07:41</span></a>', 0, 6, '4b49535f-9a90-47f6-912d-ec3735aa2c90', '2021-01-28 17:07:41', '2021-01-28'),
(636, 9, 9, '<div class=dropdown-divider></div><a onclick=status_notify(\"4b49535f-9a90-47f6-912d-ec3735aa2c90\",9,9) href=/remark  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>The employeesuad  alwa Add New Services Visa  <span class=float-right text-muted text-sm>2021-01-28 20:07:41</span></a>', 0, 6, '4b49535f-9a90-47f6-912d-ec3735aa2c90', '2021-01-28 17:07:41', '2021-01-28'),
(637, 9, 9, '<div class=dropdown-divider></div><a onclick=status_notify(\"4b49535f-9a90-47f6-912d-ec3735aa2c90\",9,9) href=/remark  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>The employeesuad  alwa Add New Services Visa  <span class=float-right text-muted text-sm>2021-01-28 20:07:41</span></a>', 0, 6, '4b49535f-9a90-47f6-912d-ec3735aa2c90', '2021-01-28 17:07:41', '2021-01-28'),
(638, 9, 1, '<div class=dropdown-divider></div><a onclick=status_notify(\"4b49535f-9a90-47f6-912d-ec3735aa2c90\",9,1) href=/remark  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>The employeesuad abdd send Visa Services to SaleManager  <span class=float-right text-muted text-sm>2021-01-28 20:10:31</span></a>', 0, 6, '4b49535f-9a90-47f6-912d-ec3735aa2c90', '2021-01-28 17:10:31', '2021-01-28'),
(639, 9, 9, '<div class=dropdown-divider></div><a onclick=status_notify(\"4b49535f-9a90-47f6-912d-ec3735aa2c90\",9,9) href=/remark  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>The employeesuad abdd send Visa Services to SaleManager  <span class=float-right text-muted text-sm>2021-01-28 20:10:32</span></a>', 0, 6, '4b49535f-9a90-47f6-912d-ec3735aa2c90', '2021-01-28 17:10:32', '2021-01-28'),
(640, 9, 9, '<div class=dropdown-divider></div><a onclick=status_notify(\"4b49535f-9a90-47f6-912d-ec3735aa2c90\",9,9) href=/remark  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>The employeesuad abdd send Visa Services to SaleManager  <span class=float-right text-muted text-sm>2021-01-28 20:10:32</span></a>', 0, 6, '4b49535f-9a90-47f6-912d-ec3735aa2c90', '2021-01-28 17:10:32', '2021-01-28'),
(641, 9, 20, '<div class=dropdown-divider></div><a onclick=status_notify(\"9224a32d-7916-4351-875a-14755bb9b9fb\",9,20) href=/emp_visa  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>The employeesuad  alwa Add services Visa by you <span class=float-right text-muted text-sm>2021-01-28 20:11:11</span></a>', 0, 6, '9224a32d-7916-4351-875a-14755bb9b9fb', '2021-01-28 17:11:11', '2021-01-28'),
(642, 9, 1, '<div class=dropdown-divider></div><a onclick=status_notify(\"ee6aaeb4-93f1-4497-b8fa-f8ccf3fae357\",9,1) href=/remark  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>The employeesuad  alwa Add New Services General  <span class=float-right text-muted text-sm>2021-01-28 20:13:08</span></a>', 0, 7, 'ee6aaeb4-93f1-4497-b8fa-f8ccf3fae357', '2021-01-28 17:13:08', '2021-01-28'),
(643, 9, 9, '<div class=dropdown-divider></div><a onclick=status_notify(\"ee6aaeb4-93f1-4497-b8fa-f8ccf3fae357\",9,9) href=/remark  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>The employeesuad  alwa Add New Services General  <span class=float-right text-muted text-sm>2021-01-28 20:13:08</span></a>', 0, 7, 'ee6aaeb4-93f1-4497-b8fa-f8ccf3fae357', '2021-01-28 17:13:08', '2021-01-28'),
(644, 9, 9, '<div class=dropdown-divider></div><a onclick=status_notify(\"ee6aaeb4-93f1-4497-b8fa-f8ccf3fae357\",9,9) href=/remark  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>The employeesuad  alwa Add New Services General  <span class=float-right text-muted text-sm>2021-01-28 20:13:08</span></a>', 0, 7, 'ee6aaeb4-93f1-4497-b8fa-f8ccf3fae357', '2021-01-28 17:13:08', '2021-01-28'),
(645, 9, 1, '<div class=dropdown-divider></div><a onclick=status_notify(\"ee6aaeb4-93f1-4497-b8fa-f8ccf3fae357\",9,1) href=/remark  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>The employeesuad abdd send General Services to SaleManager  <span class=float-right text-muted text-sm>2021-01-28 20:17:31</span></a>', 0, 7, 'ee6aaeb4-93f1-4497-b8fa-f8ccf3fae357', '2021-01-28 17:17:31', '2021-01-28'),
(646, 9, 9, '<div class=dropdown-divider></div><a onclick=status_notify(\"ee6aaeb4-93f1-4497-b8fa-f8ccf3fae357\",9,9) href=/remark  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>The employeesuad abdd send General Services to SaleManager  <span class=float-right text-muted text-sm>2021-01-28 20:17:31</span></a>', 0, 7, 'ee6aaeb4-93f1-4497-b8fa-f8ccf3fae357', '2021-01-28 17:17:31', '2021-01-28'),
(647, 9, 9, '<div class=dropdown-divider></div><a onclick=status_notify(\"ee6aaeb4-93f1-4497-b8fa-f8ccf3fae357\",9,9) href=/remark  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>The employeesuad abdd send General Services to SaleManager  <span class=float-right text-muted text-sm>2021-01-28 20:17:32</span></a>', 0, 7, 'ee6aaeb4-93f1-4497-b8fa-f8ccf3fae357', '2021-01-28 17:17:32', '2021-01-28'),
(648, 9, 1, '<div class=dropdown-divider></div><a onclick=status_notify(\"b6ba4f32-47d2-4114-86f9-b203569d3b87\",9,1) href=/remark  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>The employeesuad  alwa Add New Services Medical  <span class=float-right text-muted text-sm>2021-01-28 20:18:18</span></a>', 0, 4, 'b6ba4f32-47d2-4114-86f9-b203569d3b87', '2021-01-28 17:18:18', '2021-01-28'),
(649, 9, 9, '<div class=dropdown-divider></div><a onclick=status_notify(\"b6ba4f32-47d2-4114-86f9-b203569d3b87\",9,9) href=/remark  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>The employeesuad  alwa Add New Services Medical  <span class=float-right text-muted text-sm>2021-01-28 20:18:18</span></a>', 0, 4, 'b6ba4f32-47d2-4114-86f9-b203569d3b87', '2021-01-28 17:18:18', '2021-01-28'),
(650, 9, 9, '<div class=dropdown-divider></div><a onclick=status_notify(\"b6ba4f32-47d2-4114-86f9-b203569d3b87\",9,9) href=/remark  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>The employeesuad  alwa Add New Services Medical  <span class=float-right text-muted text-sm>2021-01-28 20:18:18</span></a>', 0, 4, 'b6ba4f32-47d2-4114-86f9-b203569d3b87', '2021-01-28 17:18:18', '2021-01-28'),
(651, 9, 1, '<div class=dropdown-divider></div><a onclick=status_notify(\"b6ba4f32-47d2-4114-86f9-b203569d3b87\",9,1) href=/remark  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>The employeesuad abdd send Medical Services to SaleManager  <span class=float-right text-muted text-sm>2021-01-28 20:18:24</span></a>', 0, 4, 'b6ba4f32-47d2-4114-86f9-b203569d3b87', '2021-01-28 17:18:24', '2021-01-28'),
(652, 9, 9, '<div class=dropdown-divider></div><a onclick=status_notify(\"b6ba4f32-47d2-4114-86f9-b203569d3b87\",9,9) href=/remark  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>The employeesuad abdd send Medical Services to SaleManager  <span class=float-right text-muted text-sm>2021-01-28 20:18:25</span></a>', 0, 4, 'b6ba4f32-47d2-4114-86f9-b203569d3b87', '2021-01-28 17:18:25', '2021-01-28'),
(653, 9, 9, '<div class=dropdown-divider></div><a onclick=status_notify(\"b6ba4f32-47d2-4114-86f9-b203569d3b87\",9,9) href=/remark  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>The employeesuad abdd send Medical Services to SaleManager  <span class=float-right text-muted text-sm>2021-01-28 20:18:25</span></a>', 0, 4, 'b6ba4f32-47d2-4114-86f9-b203569d3b87', '2021-01-28 17:18:25', '2021-01-28'),
(654, 9, 9, '<div class=dropdown-divider></div><a onclick=status_notify(\"66b7b5dd-34d1-45c4-a5c5-e41a71ec153b\",9,9) href=/show_remark  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>the Sales Manager send  ticket servic number : 1111111114 to Accountent <span class=float-right text-muted text-sm>2021-01-28 20:22:32</span></a>', 0, 1, '66b7b5dd-34d1-45c4-a5c5-e41a71ec153b', '2021-01-28 17:22:32', '2021-01-28'),
(655, 9, 9, '<div class=dropdown-divider></div><a onclick=status_notify(\"72bf15fd-9bb6-4542-89b2-46bae2fb88d2\",9,9) href=/salesTicketLog  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>the Sales Manager send error about TICKET servic number : 1111111112 <span class=float-right text-muted text-sm>2021-01-28 20:23:25</span></a>', 0, 1, '72bf15fd-9bb6-4542-89b2-46bae2fb88d2', '2021-01-28 17:23:25', '2021-01-28'),
(656, 9, 9, '<div class=dropdown-divider></div><a onclick=status_notify(\"63fdcb15-5449-413e-983a-bac44627f67e\",9,9) href=/show_remark  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>the Sales Manager send  ticket servic number : 1111111115 to Accountent <span class=float-right text-muted text-sm>2021-01-28 20:23:32</span></a>', 0, 1, '63fdcb15-5449-413e-983a-bac44627f67e', '2021-01-28 17:23:32', '2021-01-28'),
(657, 9, 9, '<div class=dropdown-divider></div><a onclick=status_notify(\"ee6aaeb4-93f1-4497-b8fa-f8ccf3fae357\",9,9) href=/salesGenLog  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>the Sales Manager send error about GENERAL servic number : 1111111111 <span class=float-right text-muted text-sm>2021-01-28 20:23:47</span></a>', 0, 7, 'ee6aaeb4-93f1-4497-b8fa-f8ccf3fae357', '2021-01-28 17:23:47', '2021-01-28'),
(658, 9, 9, '<div class=dropdown-divider></div><a onclick=status_notify(\"d14c6872-6bd9-45b7-990c-0d0fc82d1141\",9,9) href=/salesBusLog  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>the Sales Manager send error about bus servic number : 1478523698 <span class=float-right text-muted text-sm>2021-01-28 20:24:42</span></a>', 0, 2, 'd14c6872-6bd9-45b7-990c-0d0fc82d1141', '2021-01-28 17:24:42', '2021-01-28'),
(659, 9, 9, '<div class=dropdown-divider></div><a onclick=status_notify(\"ad4e4811-7ace-445f-9fcb-3919c3e0827b\",9,9) href=/salesCarLog  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>the Sales Manager send error about CAR servic number : 1111111111 <span class=float-right text-muted text-sm>2021-01-28 20:25:13</span></a>', 0, 3, 'ad4e4811-7ace-445f-9fcb-3919c3e0827b', '2021-01-28 17:25:13', '2021-01-28'),
(660, 9, 9, '<div class=dropdown-divider></div><a onclick=status_notify(\"b6ba4f32-47d2-4114-86f9-b203569d3b87\",9,9) href=/salesMedLog  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>the Sales Manager send error about MEDICAL servic number : 1111111111 <span class=float-right text-muted text-sm>2021-01-28 20:25:34</span></a>', 0, 4, 'b6ba4f32-47d2-4114-86f9-b203569d3b87', '2021-01-28 17:25:34', '2021-01-28'),
(661, 9, 9, '<div class=dropdown-divider></div><a onclick=status_notify(\"4b49535f-9a90-47f6-912d-ec3735aa2c90\",9,9) href=/salesVisaLog  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>the Sales Manager send Error  about VISA servic number : 11112 <span class=float-right text-muted text-sm>2021-01-28 20:25:46</span></a>', 0, 6, '4b49535f-9a90-47f6-912d-ec3735aa2c90', '2021-01-28 17:25:46', '2021-01-28'),
(662, 9, 9, '<div class=dropdown-divider></div><a onclick=status_notify(\"f9854b1a-3d4e-4f93-bb45-b5f91c6dc9d5\",9,9) href=/salesHotelLog  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>the Sales Manager send Error about HOTEL servic number : 1111111111 <span class=float-right text-muted text-sm>2021-01-28 20:25:57</span></a>', 0, 5, 'f9854b1a-3d4e-4f93-bb45-b5f91c6dc9d5', '2021-01-28 17:25:57', '2021-01-28'),
(663, 9, 9, '<div class=dropdown-divider></div><a onclick=status_notify(\"af89cabc-cd32-4527-b412-f8be4ff37574\",9,9) href=/salesHotelLog  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>the Sales Manager send Error about HOTEL servic number : 1111111113 <span class=float-right text-muted text-sm>2021-01-28 20:26:10</span></a>', 0, 5, 'af89cabc-cd32-4527-b412-f8be4ff37574', '2021-01-28 17:26:10', '2021-01-28'),
(664, 9, 9, '<div class=dropdown-divider></div><a onclick=status_notify(\"7cd933a8-0520-4872-8fee-fc807ab6ed6d\",9,9) href=/show_remark  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>the Sales Manager send  medical servic number : 1111111112 to Accountent <span class=float-right text-muted text-sm>2021-01-28 20:26:37</span></a>', 0, 5, '7cd933a8-0520-4872-8fee-fc807ab6ed6d', '2021-01-28 17:26:37', '2021-01-28'),
(665, 20, 9, '<div class=dropdown-divider></div><a onclick=status_notify(\"66b7b5dd-34d1-45c4-a5c5-e41a71ec153b\",20,9) href=/service/show_ticket/4 class=dropdown-item><i class=text-danger fas fa-times mr-2></i>the accountent send  ticket servic number : 1111111114 to archive <span class=float-right text-muted text-sm>2021-01-28 20:30:45</span></a>', 0, 1, '66b7b5dd-34d1-45c4-a5c5-e41a71ec153b', '2021-01-28 17:30:45', '2021-01-28'),
(666, 20, 9, '<div class=dropdown-divider></div><a onclick=status_notify(\"66b7b5dd-34d1-45c4-a5c5-e41a71ec153b\",20,9) href=/manager_finish/1/9 class=dropdown-item><i class=text-danger fas fa-times mr-2></i>the accountent send  ticket servic number : 1111111114 to archive <span class=float-right text-muted text-sm>2021-01-28 20:30:45</span></a>', 0, 1, '66b7b5dd-34d1-45c4-a5c5-e41a71ec153b', '2021-01-28 17:30:45', '2021-01-28'),
(667, 20, 9, '<div class=dropdown-divider></div><a onclick=status_notify(\"66b7b5dd-34d1-45c4-a5c5-e41a71ec153b\",20,9) href=/remark class=dropdown-item><i class=text-danger fas fa-times mr-2></i>the accountent send  ticket servic number : 1111111114 to archive <span class=float-right text-muted text-sm>2021-01-28 20:30:45</span></a>', 0, 1, '66b7b5dd-34d1-45c4-a5c5-e41a71ec153b', '2021-01-28 17:30:45', '2021-01-28'),
(668, 1, 9, '<div class=dropdown-divider></div><a onclick=status_notify(\"a92f8b5b-d260-4a65-8138-8d31eeb5f6cf\",9,1) class=dropdown-item><i class=text-danger fas fa-times mr-2></i>The employeeSara  Nabeel Accept services Bus That Added by you <span class=float-right text-muted text-sm>2021-01-28 20:32:55</span></a>', 0, 2, 'a92f8b5b-d260-4a65-8138-8d31eeb5f6cf', '2021-01-28 17:32:55', '2021-01-28'),
(669, 1, 1, '<div class=dropdown-divider></div><a onclick=status_notify(\"a92f8b5b-d260-4a65-8138-8d31eeb5f6cf\",1,1) href=/remark  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>The employeeSara  Nabeel Add New Services Bus  <span class=float-right text-muted text-sm>2021-01-28 20:32:55</span></a>', 0, 2, 'a92f8b5b-d260-4a65-8138-8d31eeb5f6cf', '2021-01-28 17:32:55', '2021-01-28'),
(670, 1, 9, '<div class=dropdown-divider></div><a onclick=status_notify(\"a92f8b5b-d260-4a65-8138-8d31eeb5f6cf\",1,9) href=/remark  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>The employeeSara  Nabeel Add New Services Bus  <span class=float-right text-muted text-sm>2021-01-28 20:32:55</span></a>', 0, 2, 'a92f8b5b-d260-4a65-8138-8d31eeb5f6cf', '2021-01-28 17:32:55', '2021-01-28'),
(671, 1, 9, '<div class=dropdown-divider></div><a onclick=status_notify(\"a92f8b5b-d260-4a65-8138-8d31eeb5f6cf\",1,9) href=/remark  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>The employeeSara  Nabeel Add New Services Bus  <span class=float-right text-muted text-sm>2021-01-28 20:32:55</span></a>', 0, 2, 'a92f8b5b-d260-4a65-8138-8d31eeb5f6cf', '2021-01-28 17:32:55', '2021-01-28'),
(672, 1, 9, '<div class=\"dropdown-divider\"></div><a onclick=status_notify(\"9224a32d-7916-4351-875a-14755bb9b9fb\",1,9) href=/reject_visa  class=\"dropdown-item\"><i class=\"text-danger fas fa-times mr-2\"></i>The employee Sara  Nabeel Reject Visa service  That Added by you <span class=\"float-right text-muted text-sm\">2021-01-28 20:33:23</span></a>', 0, 6, '9224a32d-7916-4351-875a-14755bb9b9fb', '2021-01-28 17:33:23', '2021-01-28'),
(673, 9, 9, '<div class=dropdown-divider></div><a onclick=status_notify(\"72bf15fd-9bb6-4542-89b2-46bae2fb88d2\",9,9) href=/remark  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>The employeesuad abdd send Ticket Services to SaleManager  <span class=float-right text-muted text-sm>2021-01-28 20:38:34</span></a>', 0, 1, '72bf15fd-9bb6-4542-89b2-46bae2fb88d2', '2021-01-28 17:38:34', '2021-01-28'),
(674, 9, 9, '<div class=dropdown-divider></div><a onclick=status_notify(\"72bf15fd-9bb6-4542-89b2-46bae2fb88d2\",9,9) href=/remark  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>The employee suad abdd send updated Ticket Services to you  <span class=float-right text-muted text-sm>2021-01-28 20:38:34</span></a>', 0, 1, '72bf15fd-9bb6-4542-89b2-46bae2fb88d2', '2021-01-28 17:38:34', '2021-01-28'),
(675, 9, 9, '<div class=dropdown-divider></div><a onclick=status_notify(\"4b49535f-9a90-47f6-912d-ec3735aa2c90\",9,9) href=/remark  class=dropdown-item><i class=text-danger fas fa-times mr-2></i>The employeesuad  alwa edit Visa Services with remark <span class=float-right text-muted text-sm>2021-01-28 20:44:57</span></a>', 0, 6, '4b49535f-9a90-47f6-912d-ec3735aa2c90', '2021-01-28 17:44:57', '2021-01-28');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE `permission_user` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_delete` int(11) NOT NULL DEFAULT 0,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `how_add_it` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`, `is_delete`, `is_active`, `how_add_it`) VALUES
(5, 'admin', 'admin', 'Superadministrator yhgfgs', '2020-12-19 00:36:19', '2021-01-13 01:45:56', 0, 1, 0),
(2, 'sale_manager', 'sale_manager', 'Administrator', '2020-12-19 00:36:19', '2021-01-09 18:36:29', 0, 1, 11),
(3, 'sale_executive', 'sale_executive', 'is an employee how add services data and do some opration in it', '2020-12-19 00:36:20', '2021-01-08 01:38:54', 0, 1, 6),
(4, 'accountant', 'accountant', 'Role Nameghfhg', '2020-12-19 00:36:20', '2021-01-18 15:51:37', 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_delete` int(11) NOT NULL DEFAULT 0,
  `how_create_it` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`, `user_type`, `is_delete`, `how_create_it`) VALUES
(5, 9, 'App\\User', 0, 9),
(5, 18, 'App\\User', 0, 9),
(3, 11, 'App\\User', 0, 9),
(4, 10, 'App\\User', 0, 11),
(2, 1, 'App\\User', 0, 9),
(2, 9, 'App\\User', 0, 9),
(4, 20, 'App\\User', 0, 9),
(3, 21, 'App\\User', 0, 9);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `ser_id` bigint(20) UNSIGNED NOT NULL,
  `ser_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discrption` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` date DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `emp_id_how_create` int(11) NOT NULL,
  `updated_at` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`ser_id`, `ser_name`, `discrption`, `created_at`, `is_active`, `deleted`, `emp_id_how_create`, `updated_at`) VALUES
(1, 'Ticket 11', 'Traveling with jubari travel', '2020-12-20', 1, 0, 1, '2020-12-28 09:13:55'),
(2, 'Bus Services', 'translate between cites', '2020-12-20', 1, 0, 1, '2020-12-20 05:18:28'),
(3, 'Car Services', 'translate between cites', '2020-12-20', 1, 0, 1, '2020-12-20 05:18:49'),
(4, 'Medical Services', 'Take Reports', '2020-12-20', 1, 0, 1, '2020-12-20 05:23:48'),
(5, 'Hotel Services', '5 Strars hotel', '2020-12-20', 1, 0, 1, '2020-12-20 05:20:10'),
(6, 'Visa Service', 'Help to tack Visa for any country', '2020-12-20', 1, 0, 1, '2020-12-20 05:21:30'),
(7, 'General Service', 'Other Service', '2020-12-20', 0, 0, 1, '2021-01-28 20:59:06'),
(8, 'jkihik', ',mmmm', '2021-01-25', 0, 1, 9, '2021-01-28 07:26:01'),
(9, 'sdnkajbdk', 'nkjbkbk', '2021-01-28', 0, 1, 9, '2021-01-28 07:29:25'),
(10, 'ssssssss', 'ssssssssss', '2021-01-28', 0, 1, 9, '2021-01-28 07:31:36');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `s_no` bigint(20) UNSIGNED NOT NULL,
  `supplier_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_acc_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_remark` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `is_deleted` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`s_no`, `supplier_name`, `supplier_mobile`, `supplier_phone`, `supplier_email`, `supplier_photo`, `supplier_address`, `supplier_acc_no`, `supplier_remark`, `is_active`, `updated_at`, `created_at`, `is_deleted`) VALUES
(1, 'احمد الفلاحي', '777777777', '888888', 'sd.alwajeeh@gmail.com', '1609743231Capture.PNG', 'مذبح', '999999999', 'jkhgfdx', 1, '2021-01-24 15:58:45', '2021-01-04 03:53:51', 0),
(2, 'سمير الوجيه', '999999999', '0000000', 'sd.alwajeeh@gmail.com', '1609834373Capture.PNG', 'مذبح', '777', 'HGGFGFDD', 1, '2021-01-24 15:58:56', '2021-01-05 05:12:53', 1),
(3, 'محمد علي', '888888888', '999999', 'SD@FDHGF', '1611487514Capture.PNG', 'HGGH', '9999999999', 'GFTHGBF', 1, '2021-01-24 08:25:56', '2021-01-24 08:25:14', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sup_currency`
--

CREATE TABLE `sup_currency` (
  `id` int(11) NOT NULL,
  `sup_id` int(11) NOT NULL,
  `cur_id` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sup_currency`
--

INSERT INTO `sup_currency` (`id`, `sup_id`, `cur_id`, `updated_at`, `created_at`) VALUES
(17, 1, 2, '2021-01-20 09:31:01', NULL),
(18, 1, 3, '2021-01-20 09:31:06', NULL),
(19, 2, 1, '2021-01-05 08:12:54', NULL),
(20, 2, 2, '2021-01-05 08:12:54', NULL),
(21, 2, 3, '2021-01-05 08:12:54', NULL),
(22, 3, 1, '2021-01-05 09:27:17', NULL),
(23, 3, 2, '2021-01-05 09:27:17', NULL),
(24, 3, 3, '2021-01-05 09:27:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sup_services`
--

CREATE TABLE `sup_services` (
  `sup_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sup_services`
--

INSERT INTO `sup_services` (`sup_id`, `service_id`, `id`) VALUES
(1, 2, 13),
(2, 2, 14),
(2, 3, 15),
(2, 4, 16),
(2, 7, 17),
(2, 1, 18),
(2, 6, 19),
(1, 2, 20),
(1, 3, 21),
(1, 4, 22),
(1, 1, 23),
(1, 6, 24),
(1, 7, 25),
(3, 1, 26),
(3, 2, 27),
(3, 3, 28),
(3, 4, 29),
(3, 5, 30),
(3, 6, 31),
(3, 7, 32);

-- --------------------------------------------------------

--
-- Table structure for table `ticket_services`
--

CREATE TABLE `ticket_services` (
  `tecket_id` varchar(170) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Issue_date` date NOT NULL,
  `refernce` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `passenger_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `airline_id` int(11) NOT NULL,
  `ticket` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ses_status` int(11) NOT NULL,
  `ticket_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Dep_city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Dep_city2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `arr_city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `arr_city2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dep_date` date NOT NULL,
  `dep_date2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `due_to_supp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_cost` decimal(8,2) NOT NULL,
  `ses_cur_id` int(11) NOT NULL,
  `due_to_customer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost` decimal(8,2) NOT NULL,
  `service_id` int(11) NOT NULL DEFAULT 1,
  `passnger_currency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bursher_time` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` int(11) NOT NULL DEFAULT 0,
  `service_status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `attachment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_status` int(1) NOT NULL DEFAULT 0,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `errorlog` int(11) NOT NULL DEFAULT 0,
  `bill_num` int(11) NOT NULL DEFAULT 0,
  `how_add_bill` int(11) NOT NULL DEFAULT 0,
  `bookmark` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `how_add_bookmark` int(11) NOT NULL DEFAULT 0,
  `manager_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ticket_services`
--

INSERT INTO `ticket_services` (`tecket_id`, `Issue_date`, `refernce`, `passenger_name`, `airline_id`, `ticket`, `ses_status`, `ticket_number`, `Dep_city`, `Dep_city2`, `arr_city`, `arr_city2`, `dep_date`, `dep_date2`, `due_to_supp`, `provider_cost`, `ses_cur_id`, `due_to_customer`, `cost`, `service_id`, `passnger_currency`, `remark`, `bursher_time`, `deleted`, `service_status`, `created_at`, `updated_at`, `attachment`, `user_status`, `user_id`, `errorlog`, `bill_num`, `how_add_bill`, `bookmark`, `how_add_bookmark`, `manager_id`) VALUES
('63fdcb15-5449-413e-983a-bac44627f67e', '2021-01-28', 'ticket 2 update', 'suad ahmed', 12, '12', 1, '1111111115', 'dep/1up/dat/e', 'dep/1up/dat/e', 'arr/1up/dat/e', 'ARR', '2021-01-28', '2021-02-01', '1', '280.00', 3, '9', '300.00', 1, 'SAR', 'note', '', 0, 3, '2021-01-28 13:00:29', '2021-01-28 17:23:32', '509505.jpg,', 0, '9', 0, 0, 0, '0', 0, 9),
('66b7b5dd-34d1-45c4-a5c5-e41a71ec153b', '2021-01-28', 'ticket 1', 'shyma ali', 13, '13', 2, '1111111114', 'dep', '', 'qrr', '', '2021-01-28', '', '3', '200.00', 2, '9', '210.00', 1, 'USD', NULL, '', 0, 4, '2021-01-28 12:58:10', '2021-01-28 17:30:45', '630506.jpg,311493.jpg,924406.jpg,', 0, '9', 0, 2545, 20, '0', 0, 9),
('72bf15fd-9bb6-4542-89b2-46bae2fb88d2', '2021-01-28', 'refernacr', 'shymamnkj', 13, '12', 4, '1111111112', 'bhj/vjv', '', 'mmm/mmm/m', '', '2021-01-28', '2021-01-28', '3', '200.00', 2, '9', '2000.00', 1, 'USD', NULL, '', 0, 2, '2021-01-28 10:15:34', '2021-01-28 17:38:33', '759022.jpg,229562.jpg,', 0, '9', 0, 0, 0, '0', 0, 9),
('99cd7a43-0912-4f22-b414-28182e47a122', '2021-01-26', 'kje', 'njbjk', 12, '12', 1, '1111111111', 'mbj', '', 'nbh/m', '', '2021-01-26', '', '3', '200.00', 1, '1', '202.00', 1, 'YER', NULL, '', 0, 1, '2021-01-26 14:09:04', '2021-01-26 14:21:59', '727333.pdf,', 0, '1', 0, 2222, 20, '0', 0, 1),
('c9b5fefc-1ee0-4b66-ab6d-6514030dee19', '2021-01-28', 'sdbujasy', 'sdjkgsaj', 13, '13', 4, '1111111113', 'sds/d', 'sds/d', 'sad/d', 'mbjh', '2021-01-28', '2020-12-29', '3', '50000.00', 1, '9', '350.00', 1, 'SAR', 'nnnnnnnnnnn', '', 1, 1, '2021-01-28 10:19:06', '2021-01-28 13:02:54', '559757.jpg,', 0, '9', 0, 0, 0, '0', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `how_add_it` int(11) NOT NULL DEFAULT 1,
  `is_delete` int(11) NOT NULL DEFAULT 0,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pass` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `how_add_it`, `is_delete`, `is_active`, `email`, `email_verified_at`, `password`, `pass`, `remember_token`, `created_at`, `updated_at`) VALUES
(9, 'SOSO SO', 11, 0, 1, 'sd1.alwajeeh1@gmail.com', NULL, '$2y$10$Jp8FcAm.iq75EWc8ugKeAOuO6ZdzDa7X9tLjiN4QLndGOaMJhrw4W', 'ASASASAS', 'pHWQlg67eJFoFQ4MZCzxZGT0jJ5XWPV56jAhtLf5Egq1zGjRTAQdwt0y7fZ2', '2021-01-18 08:08:52', '2021-01-24 08:02:44'),
(20, 'eradah mohamad', 9, 0, 1, 'eradahalfakeh@gmail.com', NULL, '$2y$10$j39NZZJnPp/CF7qS1C.LM.4b7dU/PO3MAIZgcCRlEhT4jc5c/c5Zi', 'D9rsUcHA', NULL, '2021-01-24 08:39:18', '2021-01-24 08:39:18'),
(11, 'Ali Ahmed', 9, 0, 1, 'alfalahyshyma1@gmail.com', NULL, '$2y$10$DcHA/j25Kj8Bwom0qIi/SO9EjKlSOszTFs3fIp/0AEQjilZmU/9WC', 'L5q7cT45', 'p9ifrceaPKMfB6lQxWW3blE2yf6GCyzqCBpcT0SLVRWNT3z2qn6iOJIApHJD', '2021-01-24 08:31:29', '2021-01-24 08:31:29'),
(1, 'Sara Nabeel', 9, 0, 1, 'alfalahyshyma3@gmail.com', NULL, '$2y$10$DcHA/j25Kj8Bwom0qIi/SO9EjKlSOszTFs3fIp/0AEQjilZmU/9WC', 'L5q7cT45', '5KMoNi39RPDS1ftUwxEt7AAPdMgwKaTnEZR7zTlnKrjHRae6brjzOAefYpmP', '2021-01-24 08:31:29', '2021-01-24 08:31:29');

-- --------------------------------------------------------

--
-- Table structure for table `visa_services`
--

CREATE TABLE `visa_services` (
  `visa_id` varchar(170) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Issue_date` date NOT NULL,
  `refernce` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `passenger_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ses_status` int(11) NOT NULL,
  `voucher_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `visa_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `visa_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `due_to_supp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_cost` decimal(8,2) NOT NULL,
  `ses_cur_id` int(11) NOT NULL,
  `due_to_customer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cost` decimal(8,2) NOT NULL,
  `service_id` int(11) NOT NULL,
  `passnger_currency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` int(11) NOT NULL DEFAULT 0,
  `service_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `attachment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_status` int(11) NOT NULL DEFAULT 0,
  `errorlog` int(11) NOT NULL DEFAULT 0,
  `bill_num` int(11) NOT NULL DEFAULT 0,
  `how_add_bill` int(11) NOT NULL DEFAULT 0,
  `bookmark` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `how_add_bookmark` int(11) NOT NULL DEFAULT 0,
  `manager_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `visa_services`
--

INSERT INTO `visa_services` (`visa_id`, `Issue_date`, `refernce`, `passenger_name`, `ses_status`, `voucher_number`, `country`, `visa_type`, `visa_info`, `due_to_supp`, `provider_cost`, `ses_cur_id`, `due_to_customer`, `cost`, `service_id`, `passnger_currency`, `remark`, `deleted`, `service_status`, `created_at`, `updated_at`, `attachment`, `user_id`, `user_status`, `errorlog`, `bill_num`, `how_add_bill`, `bookmark`, `how_add_bookmark`, `manager_id`) VALUES
('4b49535f-9a90-47f6-912d-ec3735aa2c90', '2021-01-28', 'refernce', 'jhjm', 4, '11112', 'yemen', 'bhjbh', 'gytytyurffytdfffffffffffffffffffffffff', '3', '5000.00', 1, '21', '400.00', 6, 'YER', NULL, 0, 1, '2021-01-28 17:07:41', '2021-01-28 17:44:57', '619492.jpg,', 9, 0, 0, 0, 0, '0', 0, 9),
('9224a32d-7916-4351-875a-14755bb9b9fb', '2021-01-28', 're', 'name', 2, '11113', 'bvjhv', 'bnhvhvhcvh', 'gytytyurffytdfffffffffffffffffffffffff', '3', '5000.00', 1, '1', '400.00', 6, 'YER', NULL, 1, 1, '2021-01-28 17:11:11', '2021-01-28 17:34:12', '500817.jpg,', 9, 1, 2, 0, 0, '0', 0, NULL),
('dsvhjvje', '2020-12-01', 'fffff', 'fff', 2, '11111', 'efws', 'efsw', 'ffffffff', '2', '20.00', 2, '9', '20.00', 6, 'vhch', NULL, 0, 4, NULL, NULL, '', 9, 0, 0, 0, 0, '0', 0, 9);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adds`
--
ALTER TABLE `adds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adds_users`
--
ALTER TABLE `adds_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `airlines`
--
ALTER TABLE `airlines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bus_services`
--
ALTER TABLE `bus_services`
  ADD PRIMARY KEY (`bus_id`);

--
-- Indexes for table `car_services`
--
ALTER TABLE `car_services`
  ADD PRIMARY KEY (`car_id`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`cur_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`cus_id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `general_services`
--
ALTER TABLE `general_services`
  ADD PRIMARY KEY (`gen_id`);

--
-- Indexes for table `hotel_services`
--
ALTER TABLE `hotel_services`
  ADD PRIMARY KEY (`hotel_id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medical_services`
--
ALTER TABLE `medical_services`
  ADD PRIMARY KEY (`med_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`(191));

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`user_id`,`permission_id`,`user_type`),
  ADD KEY `permission_user_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`,`user_type`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`ser_id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `sup_currency`
--
ALTER TABLE `sup_currency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sup_services`
--
ALTER TABLE `sup_services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sup_id` (`sup_id`);

--
-- Indexes for table `ticket_services`
--
ALTER TABLE `ticket_services`
  ADD PRIMARY KEY (`tecket_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `visa_services`
--
ALTER TABLE `visa_services`
  ADD PRIMARY KEY (`visa_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adds`
--
ALTER TABLE `adds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `adds_users`
--
ALTER TABLE `adds_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `airlines`
--
ALTER TABLE `airlines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `cus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `emp_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=299;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=676;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `ser_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `s_no` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sup_currency`
--
ALTER TABLE `sup_currency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `sup_services`
--
ALTER TABLE `sup_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
