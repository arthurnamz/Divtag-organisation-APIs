-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2019 at 07:59 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myapi`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `title`, `detail`, `created_at`, `updated_at`) VALUES
(1, 'Welcome ', 'This is a welcoming events in this year', '2019-04-09 12:04:16', '2019-04-09 12:04:16');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phoneNumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qualification` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `name`, `gender`, `phoneNumber`, `qualification`, `department`, `district`, `created_at`, `updated_at`) VALUES
(1, 'Arthur Mwang\'onda', 'Male', '0993120740', 'Bachelors Degree', 'IT Department', 'Karonga', '2019-04-09 12:14:04', '2019-04-09 12:14:04');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_num` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employmentType` enum('permanent','part_time') COLLATE utf8mb4_unicode_ci NOT NULL,
  `dept_id` int(10) UNSIGNED DEFAULT NULL,
  `title_id` int(10) UNSIGNED DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` enum('Male','Female','Other') COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middlenames` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_hash` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cellophone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `office_num` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marital_status` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `employee_num`, `position`, `employmentType`, `dept_id`, `title_id`, `dob`, `gender`, `first_name`, `middlenames`, `last_name`, `link_hash`, `email`, `cellophone`, `telephone`, `office_num`, `marital_status`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Director of Research Postgraduate Studies & Outreach Services', 'permanent', 23, 4, NULL, 'Male', 'Alfred', '', 'Maluwa', NULL, 'aomaluwa@must.ac.mw', '0888 675498  0999 612700', '8202 / 01478202', '103', '', '2017-08-10 23:51:31', '2017-08-10 23:51:31'),
(2, NULL, 'University Librarian', 'permanent', 16, 1, NULL, 'Male', 'Martin ', '', 'Thawani', NULL, 'mthawani@must.ac.mw', '0888 874836    0999 874836', '8199 / 01478199', '110', '', '2017-08-10 23:51:31', '2017-08-10 23:51:31'),
(3, NULL, 'Executive Dean - MIT', 'permanent', NULL, 4, NULL, 'Male', 'Davies', '', 'Mweta', NULL, 'dmweta@must.ac.mw', '0888 364444  0997 322192', '8278 / 01478242', '85', '', '2017-08-10 23:51:31', '2017-08-10 23:51:31'),
(4, NULL, 'Assistant Registrar - Academic & Administration', 'permanent', 6, 3, NULL, 'Male', 'Martha', '', 'Sambani', NULL, 'msambani@must.ac.mw', '0888 875665  0999 875665', '8242 / 01478242', '108', '', '2017-08-10 23:51:32', '2017-08-10 23:51:32'),
(5, NULL, 'Finance Manager', 'permanent', 4, 1, NULL, 'Male', 'Joseph', '', 'Muheka', NULL, 'jmuheka@must.ac.mw', '0888 600184', '8360 / 01478360', '33', '', '2017-08-10 23:51:32', '2017-08-10 23:51:32'),
(6, NULL, 'Communications Manager', 'permanent', 21, 1, NULL, 'Male', 'James', '', 'Mphande', NULL, 'jmphande@must.ac.mw', '0999 858447  0888 858447', '8201 / 01478013', '104', '', '2017-08-10 23:51:32', '2017-08-10 23:51:32'),
(7, NULL, 'Estates Development Manager', 'permanent', 3, 1, NULL, 'Male', 'Charles', '', 'Makamo', NULL, 'cmakamo@must.ac.mw', '0888 389211', '8241 / 01478241', '109', '', '2017-08-10 23:51:32', '2017-08-10 23:51:32'),
(8, NULL, 'Acting ICT Manager', 'permanent', 1, 1, NULL, 'Male', 'Walusungu', 'Gonamulonga', 'Gondwe', NULL, 'wgondwe@must.ac.mw', '0999 259572', '8332 / 01478332', '40', '', '2017-08-10 23:51:32', '2017-08-10 23:51:32'),
(9, NULL, 'Acting Executive Dean - Academy of Medical  Sciences', 'permanent', NULL, 5, NULL, 'Male', 'Wilson', '', 'Mandala', NULL, 'wmandala@must.ac.mw', '0888 858454', '01 478317/8317', '50', '', '2017-08-10 23:51:32', '2017-09-15 05:06:29'),
(10, NULL, 'Procurement Officer', 'permanent', 2, 1, NULL, 'Male', 'Chiyembekezo ', '', 'Tewete', NULL, 'ctewete@must.ac.mw', '0999 303616  0888 977779', '8381', '41', '', '2017-08-10 23:51:32', '2017-08-10 23:51:32'),
(11, NULL, 'Internal Auditor', 'permanent', 22, 1, NULL, 'Male', 'Emmanuel', 'F.L', 'Chizinga', NULL, 'echizinga@must.ac.mw', '0888 892403', '8250 / 01478250', '101', '', '2017-08-10 23:51:32', '2017-08-10 23:51:32'),
(12, NULL, 'Staff Associate', 'permanent', 8, 1, NULL, 'Male', 'Andrew', '', 'Mtewa', NULL, 'amtewa@must.ac.mw', '0999 643272', '8266', '89', '', '2017-08-10 23:51:32', '2017-08-10 23:51:32'),
(13, NULL, 'Staff Associate', 'permanent', 8, 1, NULL, 'Male', 'Bruno', '', 'Malipa', NULL, 'bmalipa@must.ac.mw', '0999 320281   0886 455426', '8264', '58', '', '2017-08-10 23:51:32', '2017-08-10 23:51:32'),
(14, NULL, 'Lecturer/HOD Earth Sciences', 'permanent', 12, 1, NULL, 'Male', 'Chikondi', '', 'Chisenga', NULL, 'cchisenga@must.ac.mw', '0884 509954  0999 050566', '', '59', '', '2017-08-10 23:51:32', '2017-09-15 05:02:57'),
(15, NULL, 'Staff Associate  - CSIT', 'permanent', 10, 12, NULL, 'Male', 'Chimwemwe', '', 'Mtegha', NULL, 'cmtegha@must.ac.mw', '', '8266', '89', '', '2017-08-10 23:51:32', '2017-08-10 23:51:32'),
(16, NULL, 'Lecturer', 'permanent', 15, 1, NULL, 'Male', 'Chimwemwe', '', 'Tewesa', NULL, 'ctewesa@must.ac.mw', '0881 823907', '8313', '55', '', '2017-08-10 23:51:32', '2017-08-10 23:51:32'),
(17, NULL, 'Staff Associate - Physics', 'permanent', 8, 1, NULL, 'Male', 'Chisomo', '', 'Daka', NULL, 'cdaka@must.ac.mw', '0991 656598', '8286', '80', '', '2017-08-10 23:51:32', '2017-08-10 23:51:32'),
(18, NULL, 'Staff Associate', 'permanent', 8, 1, NULL, 'Male', 'Clement', '', 'Malanda', NULL, 'cmalanda@must.ac.mw', '0881 974362   ', '8293', '70', '', '2017-08-10 23:51:32', '2017-08-10 23:51:32'),
(19, NULL, 'Staff Associate', 'permanent', 8, 1, NULL, 'Male', 'Danger', '', 'Masangwi', NULL, 'dmasangwi@must.ac.mw', '0884 658471', '8346', '65', '', '2017-08-10 23:51:32', '2017-08-10 23:51:32'),
(20, NULL, 'Lecturer/HOD Engineering', 'permanent', 13, 1, NULL, 'Male', 'Edwin', '', 'Khundi', NULL, 'ekhundi@must.ac.mw', '0888 988298   0886 459555', '8263', '84', '', '2017-08-10 23:51:32', '2017-08-10 23:51:32'),
(21, NULL, 'Staff Associate', 'permanent', 12, 1, NULL, 'Male', 'Elias', '', 'Chikalamo', NULL, 'echikalamo@must.ac.mw', '0884 147958   0995 921119', '8342', '59', '', '2017-08-10 23:51:32', '2017-08-10 23:51:32'),
(22, NULL, 'Senior Lecturer/Postgraduate Programmes Coordinator', 'permanent', 23, 2, NULL, 'Male', 'Ella', 'Kangaude', 'Ulaya', NULL, 'eulaya@must.ac.mw', '0888 405050  0995 505151', '8279 / 01478279', '43', '', '2017-08-10 23:51:32', '2017-08-10 23:51:32'),
(23, NULL, 'Staff Associate - NSCES', 'permanent', 12, 1, NULL, 'Male', 'Emmauel', '', 'Chinkaka', NULL, 'echinkaka@must.ac.mw', '0882 896838', '8347', '61', '', '2017-08-10 23:51:32', '2017-08-10 23:51:32'),
(24, NULL, 'Staff Associate - Physics', 'permanent', 8, 1, NULL, 'Male', 'Eric', '', 'Samikwa', NULL, 'esamikwa@must.ac.mw', '0888 558338', '8286', '80', '', '2017-08-10 23:51:32', '2017-08-10 23:51:32'),
(25, NULL, 'Staff Associate -  Chemistry', 'permanent', 8, 12, NULL, 'Male', 'Esmie', '', 'Mposa', NULL, 'emposa@must.ac.mw', '0993 077094', '8272', '87', '', '2017-08-10 23:51:32', '2017-08-10 23:51:32'),
(26, NULL, 'Staff Associate - NSCES', 'permanent', 12, 12, NULL, 'Male', 'Esther', '', 'Mabedi', NULL, 'emabedi@must.ac.mw', '0995 643 874', '', '', '', '2017-08-10 23:51:32', '2017-08-10 23:51:32'),
(27, NULL, 'Staff Associate - Applied Studies', 'permanent', 8, 3, NULL, 'Male', 'Fides', '', 'Mboma', NULL, 'fmboma@must.ac.mw', '0884 771238', '8264', '92', '', '2017-08-10 23:51:33', '2017-08-10 23:51:33'),
(28, NULL, 'Staff Associate - Physics', 'permanent', 8, 1, NULL, 'Male', 'Francis', '', 'Benard', NULL, 'fbenard@must.ac.mw', '0882 329135', '8286', '80', '', '2017-08-10 23:51:33', '2017-08-10 23:51:33'),
(29, NULL, 'Staff Associate', 'permanent', 14, 1, NULL, 'Male', 'Francis', '', 'Chauluka', NULL, 'fchauluka@must.ac.mw', '0881 192031', '8345', '63', '', '2017-08-10 23:51:33', '2017-08-10 23:51:33'),
(30, NULL, 'Staff Associate', 'permanent', 12, 1, NULL, 'Male', 'Fredrick', '', 'Josiya', NULL, 'fjosiya@must.ac.mw', '0885 717481', '8346', '65', '', '2017-08-10 23:51:33', '2017-08-10 23:51:33'),
(31, NULL, 'Lecturer/HOD Biological Sciences', 'permanent', 9, 4, NULL, 'Male', 'Gama', '', 'Bandawe', NULL, 'gbandawe@must.ac.mw', '0994 421962', '8273', '76', '', '2017-08-10 23:51:33', '2017-08-10 23:51:33'),
(32, NULL, 'Lecturer', 'permanent', 9, 1, NULL, 'Male', 'Gift', 'G', 'Moyo', NULL, 'gmoyo@must.ac.mw', '0888 580944   0993 092262', '', '90', '', '2017-08-10 23:51:33', '2017-09-15 05:02:36'),
(33, NULL, 'Staff Associate - Engineering', 'permanent', 13, 1, NULL, 'Male', 'Grecium', '', 'Chisoni', NULL, 'gchisoni@must.ac.mw', '0884 532893  0993 859508', '8280', '81', '', '2017-08-10 23:51:33', '2017-08-10 23:51:33'),
(34, NULL, 'Associate Professor', 'permanent', 13, 4, NULL, 'Male', 'Hankie', '', 'Uluko', NULL, 'huluko@must.ac.mw', '0999 362465', '', '5', '', '2017-08-10 23:51:33', '2017-09-15 06:16:41'),
(35, NULL, 'Staff Associate', 'permanent', 8, 1, NULL, 'Male', 'Happy', '', 'Chikalamo', NULL, 'hchikalamo@must.ac.mw', '0884 500492', '8346', '65', '', '2017-08-10 23:51:33', '2017-08-10 23:51:33'),
(36, NULL, 'Staff Associate', 'permanent', 14, 1, NULL, 'Male', 'Hope', '', 'Chamdimba', NULL, 'hchamdimba@must.ac.mw', '0884 548850', '', '72', '', '2017-08-10 23:51:33', '2017-08-10 23:51:33'),
(37, NULL, 'Staff Associate - Engineering', 'permanent', 13, 12, NULL, 'Male', 'Jennifer', '', 'Manda', NULL, 'jmanda@must.ac.mw', '', '', '', '', '2017-08-10 23:51:33', '2017-08-10 23:51:33'),
(38, NULL, 'Lecturer - Applied Studies', 'permanent', 8, 1, NULL, 'Male', 'John', '', 'Mbotwa', NULL, 'jmbotwa@must.ac.mw', '0997 162704', '8264', '92', '', '2017-08-10 23:51:33', '2017-08-10 23:51:33'),
(39, NULL, 'Staff Associate - Engineering', 'permanent', 13, 1, NULL, 'Male', 'John', '', 'Ellard', NULL, 'jellard@must.ac.mw', '', '', '', '', '2017-08-10 23:51:33', '2017-08-10 23:51:33'),
(40, NULL, 'Staff Associate', 'permanent', 14, 3, NULL, 'Male', 'Joyce', '', 'Chivunga', NULL, 'jchivunga@must.ac.mw', '0888 668890', '', '', '', '2017-08-10 23:51:33', '2017-09-05 03:42:34'),
(41, NULL, 'Lecturer - Chemistry', 'permanent', 8, 2, NULL, 'Male', 'Judith', 'Chitedze', 'Kumatso', NULL, 'jckumatso@must.ac.mw', '0884 570757  0999 253996', '8268', '86', '', '2017-08-10 23:51:33', '2017-08-10 23:51:33'),
(42, NULL, 'Staff Associate', 'permanent', 13, 1, NULL, 'Male', 'Kent', '', 'Kafatia', NULL, 'kkafatia@must.ac.mw', '0999 544477', '8030', '', '', '2017-08-10 23:51:33', '2017-09-15 06:09:57'),
(43, NULL, 'Senior Lecturer', 'permanent', 8, 1, NULL, 'Male', 'Kondwani', '', 'Magamba', NULL, 'kmagamba@must.ac.mw', '0992 423126', '8224', '92', '', '2017-08-10 23:51:33', '2017-08-10 23:51:33'),
(44, NULL, 'Lecturer', 'permanent', 10, 1, NULL, 'Male', 'Kondwani', '', 'Makanda', NULL, 'kmakanda@must.ac.mw', '0881 365045', '8272', '87', '', '2017-08-10 23:51:33', '2017-08-10 23:51:33'),
(45, NULL, 'Lecturer', 'permanent', 15, 1, NULL, 'Male', 'Kondwani', '', 'Mkandawire', NULL, 'kmkandawire@must.ac.mw', '0884 517465  0882 453521', '8272', '87', '', '2017-08-10 23:51:33', '2017-08-10 23:51:33'),
(46, NULL, 'Senior Lecturer', 'permanent', 13, 4, NULL, 'Male', 'Lameck', '', 'Nkhonjera', NULL, 'lnkhonjera@must.ac.mw', '0994 008250   0885 745666', '8280', '81', '', '2017-08-10 23:51:33', '2017-08-10 23:51:33'),
(47, NULL, 'Staff Associate', 'permanent', 8, 2, NULL, 'Male', 'Linda', 'Muwanya', 'Banda', NULL, 'lbanda@must.ac.mw', '0888 611135', '8266', '89', '', '2017-08-10 23:51:33', '2017-08-10 23:51:33'),
(48, NULL, 'Lecturer', 'permanent', 13, 2, NULL, 'Male', 'Lucy', '', 'Msungeni', NULL, 'lmsungeni@must.ac.mw', '0999 674119   0888 262459', '8280', '81', '', '2017-08-10 23:51:33', '2017-08-10 23:51:33'),
(49, NULL, 'Lecturer', 'permanent', 13, 1, NULL, 'Male', 'Mac Joe', '', 'Kumcheza', NULL, 'mkumcheza@must.ac.mw', '0888 846446', '8304', '57', '', '2017-08-10 23:51:33', '2017-09-15 05:04:41'),
(50, NULL, 'Staff Associate', 'permanent', 11, 1, NULL, 'Male', 'Malazi', '', 'Mkandawire', NULL, 'mamkandawire@must.ac.mw', '0995 329095', '8343', '60', '', '2017-08-10 23:51:33', '2017-08-10 23:51:33'),
(51, NULL, 'Lecturer', 'permanent', 15, 2, NULL, 'Male', 'Marion', 'Chirwa', 'Kajombo', NULL, 'mckajombo@must.ac.mw', '0881 770106', '8268', '87', '', '2017-08-10 23:51:33', '2017-08-10 23:51:33'),
(52, NULL, 'Staff Associate', 'permanent', 12, 1, NULL, 'Male', 'McDonald', '', 'Mtonda', NULL, 'mcmtonda@must.ac.mw', '0888 752536', '8347', '61', '', '2017-08-10 23:51:33', '2017-08-10 23:51:33'),
(53, NULL, 'Staff Associate - CSIT', 'permanent', 10, 1, NULL, 'Male', 'Menard', '', 'Phiri', NULL, 'mephiri@must.ac.mw', '0999 434019', '8270', '88', '', '2017-08-10 23:51:34', '2017-08-10 23:51:34'),
(54, NULL, 'Staff Associate -  Physics', 'permanent', 8, 1, NULL, 'Male', 'Mixon', '', 'Faluweki', NULL, 'mfaluweki@must.ac.mw', '0882 341568', '', '70', '', '2017-08-10 23:51:34', '2017-08-10 23:51:34'),
(55, NULL, 'Lecturer - Chemistry', 'permanent', 8, 1, NULL, 'Male', 'Moses', '', 'Kamiyango', NULL, 'mkamiyango@must.ac.mw', '0995 416468', '8268', '86', '', '2017-08-10 23:51:34', '2017-08-10 23:51:34'),
(56, NULL, 'Lecturer', 'permanent', 13, 1, NULL, 'Male', 'Moses', '', 'Kansiya Line', NULL, 'mline@must.ac.mw', '0999 266233', '8280', '81', '', '2017-08-10 23:51:34', '2017-08-10 23:51:34'),
(57, NULL, 'Staff Associate', 'permanent', 11, 3, NULL, 'Male', 'Patricia', '', 'Gomani', NULL, 'pgomani@must.ac.mw', '0881 986650', '8343', '60', '', '2017-08-10 23:51:34', '2017-08-10 23:51:34'),
(58, NULL, 'Lecturer', 'permanent', 9, 4, NULL, 'Male', 'Paul ', '', 'Makocho', NULL, 'pmakocho@must.ac.mw', '0881 368101', '8398', '90', '', '2017-08-10 23:51:34', '2017-08-10 23:51:34'),
(59, NULL, 'Staff Associate', 'permanent', 8, 1, NULL, 'Male', 'Perfecto', '', 'Mnjeza', NULL, 'pmnjeza@must.ac.mw', '0881 267246', '8293', '70', '', '2017-08-10 23:51:34', '2017-08-10 23:51:34'),
(60, NULL, 'Lecturer', 'permanent', 15, 1, NULL, 'Male', 'Peter', '', 'Jiyajiya', NULL, 'pjiyajiya@must.ac.mw', '0888 799957  0999 799957', '8313', '55', '', '2017-08-10 23:51:34', '2017-08-10 23:51:34'),
(61, NULL, 'Staff Associate', 'permanent', 13, 1, NULL, 'Male', 'Phillip', '', 'Nyambi', NULL, 'pnyambi@must.ac.mw', '0882 888217', '8346', '65', '', '2017-08-10 23:51:34', '2017-08-10 23:51:34'),
(62, NULL, 'Lecturer/HOD CSIT', 'permanent', 10, 3, NULL, 'Male', 'Priscilla', '', 'Maliwichi', NULL, 'pmaliwichi@must.ac.mw', '0888 855825', '8302', '75', '', '2017-08-10 23:51:34', '2017-08-10 23:51:34'),
(63, NULL, 'Staff Associate', 'permanent', 10, 1, NULL, 'Male', 'Ralph', '', 'Tambala', NULL, 'rtambala@must.ac.mw', '0888 615609  0999 630380', '', '87', '', '2017-08-10 23:51:34', '2017-09-15 05:02:12'),
(64, NULL, 'Staff Associate', 'permanent', 12, 1, NULL, 'Male', 'Richard', '', 'Mvula', NULL, 'rmvula@must.ac.mw', '0888 971550   0995 871550', '8349', '62', '', '2017-08-10 23:51:34', '2017-08-10 23:51:34'),
(65, NULL, 'Lecturer', 'permanent', 13, 1, NULL, 'Male', 'Richard', '', 'Chilipa', NULL, 'rchilipa@must.ac.mw', '0994 069262', '8304', '57', '', '2017-08-10 23:51:34', '2017-09-15 05:05:06'),
(66, NULL, 'Lecturer', 'permanent', 8, 1, NULL, 'Male', 'Roderick', '', 'Chimombo', NULL, 'rchimombo@must.ac.mw', '0999 089128   0888 678728', '8304', '', '', '2017-08-10 23:51:34', '2017-08-10 23:51:34'),
(67, NULL, 'Lecturer', 'permanent', 10, 1, NULL, 'Male', 'Rodrick ', '', 'Hiwa', NULL, 'rhiwa@must.ac.mw', '0996 884884', '8270', '', '', '2017-08-10 23:51:34', '2017-08-10 23:51:34'),
(68, NULL, 'Staff Associate', 'permanent', 15, 1, NULL, 'Male', 'Saizi', '', 'Kimu', NULL, 'saikimu@must.ac.mw', '0999 643204  0884 932785', '8313', '55', '', '2017-08-10 23:51:34', '2017-08-10 23:51:34'),
(69, NULL, 'Lecturer', 'permanent', 9, 2, NULL, 'Male', 'Shanmuga', 'Priya', 'Samson', NULL, 'psamson@must.ac.mw', '0881 819566  0991 258701', '8272', '88', '', '2017-08-10 23:51:34', '2017-08-10 23:51:34'),
(70, NULL, 'Staff Associate', 'permanent', 12, 1, NULL, 'Male', 'Steven', '', 'Gondwe', NULL, 'sgondwe@must.ac.mw', '0881 964630   0995 480044', '8347', '61', '', '2017-08-10 23:51:34', '2017-08-10 23:51:34'),
(71, NULL, 'Staff Associate', 'permanent', 8, 1, NULL, 'Male', 'Sylvester', '', 'Chisale', NULL, 'schisale@must.ac.mw', '0888 375445', '8293', '70', '', '2017-08-10 23:51:34', '2017-08-10 23:51:34'),
(72, NULL, 'Lecturer', 'permanent', 8, 1, NULL, 'Male', 'Symon', '', 'Chibaya', NULL, 'schibaya@must.ac.mw', '0888 346196', '8264', '92', '', '2017-08-10 23:51:34', '2017-08-10 23:51:34'),
(73, NULL, 'Staff Associate', 'permanent', 11, 2, NULL, 'Male', 'Tamara', '', 'Kamanga', NULL, 'tnthara@must.ac.mw', '0888 158814', '8350', '64', '', '2017-08-10 23:51:34', '2017-08-10 23:51:34'),
(74, NULL, 'Staff Associate', 'permanent', 8, 12, NULL, 'Male', 'Thandiwe', '', 'Alide', NULL, 'talide@must.ac.mw', '0991 348394', '8266', '89', '', '2017-08-10 23:51:34', '2017-08-10 23:51:34'),
(75, NULL, 'Staff Associate', 'permanent', 11, 2, NULL, 'Male', 'Thokozani', '', 'Kapichi', NULL, 'tkapichi@must.ac.mw', '0881 897443    0996126335', '8343', '60', '', '2017-08-10 23:51:35', '2017-08-10 23:51:35'),
(76, NULL, 'Staff Associate', 'permanent', 14, 2, NULL, 'Male', 'Thokozani', '', 'Mtewa', NULL, 'tmtewa@must.ac.mw', '0992 409344', '8345', '63', '', '2017-08-10 23:51:35', '2017-08-10 23:51:35'),
(77, NULL, 'Lecturer', 'permanent', 9, 1, NULL, 'Male', 'Thomson', '', 'Msiska', NULL, 'tmsiska@must.ac.mw', '0991 614002', '8265', '90', '', '2017-08-10 23:51:35', '2017-08-10 23:51:35'),
(78, NULL, 'Staff Associate', 'permanent', 12, 1, NULL, 'Male', 'Timothy', '', 'Shaba', NULL, 'tshaba@must.ac.mw', '0881 539145', '8349', '62', '', '2017-08-10 23:51:35', '2017-08-10 23:51:35'),
(79, NULL, 'Staff Associate', 'permanent', 11, 1, NULL, 'Male', 'Vincent', '', 'Katonda', NULL, 'vkatonda@must.ac.mw', '0884 471835', '8350', '64', '', '2017-08-10 23:51:35', '2017-08-10 23:51:35'),
(80, NULL, 'Staff Associate', 'permanent', 12, 1, NULL, 'Male', 'Wilson', '', 'Tchongwe', NULL, 'wtchongwe@must.ac.mw', '0888 558359   0993 096565', '8346', '65', '', '2017-08-10 23:51:35', '2017-08-10 23:51:35'),
(81, NULL, 'Staff Associate', 'permanent', 13, 12, NULL, 'Male', 'Wongani', '', 'Mzembe', NULL, 'jmzembe@must.ac.mw', '0881 744430', '', '', '', '2017-08-10 23:51:35', '2017-08-10 23:51:35'),
(82, NULL, 'Accounts Assistant', 'permanent', 4, 1, NULL, 'Male', 'Andrew', '', 'Kananji', NULL, 'akananji@must.ac.mw', '0999 413340', '8364', '31/32', '', '2017-08-10 23:51:35', '2017-08-10 23:51:35'),
(83, NULL, 'Stores Officer', 'permanent', 2, 1, NULL, 'Male', 'Andrew ', '', 'Simengwa', NULL, 'asimengwa@must.ac.mw', '0888 356788', '8368', '26', '', '2017-08-10 23:51:35', '2017-08-10 23:51:35'),
(84, NULL, 'Procurement Assistant', 'permanent', 2, 12, NULL, 'Male', 'Catherine ', '', 'Khumbanyiwa', NULL, 'ckhumbanyiwa@must.ac.mw', '0884 533827', '8330', '38', '', '2017-08-10 23:51:35', '2017-08-10 23:51:35'),
(85, NULL, 'Assistant Accountant', 'permanent', 4, 3, NULL, 'Male', 'Chrissie', '', 'Phombeya', NULL, 'cphombeya@must.ac.mw', '0999 959815', '8361', '31/32', '', '2017-08-10 23:51:35', '2017-08-10 23:51:35'),
(86, NULL, 'Accounts Supervisor', 'permanent', 4, 1, NULL, 'Male', 'Daniel', '', 'Singini', NULL, 'dsingini@must.ac.mw', '0884 500027  0998 134844', '8323', '36', '', '2017-08-10 23:51:35', '2017-08-10 23:51:35'),
(87, NULL, 'Accounts Assistant', 'permanent', 4, 1, NULL, 'Male', 'Lusayo', '', 'Kamphale', NULL, 'lkamphale@must.ac.mw', '0999 857005', '8363', '31/32', '', '2017-08-10 23:51:35', '2017-08-10 23:51:35'),
(88, NULL, 'Buildings Liaison Officer', 'permanent', 3, 1, NULL, 'Male', 'Frank', '', 'Kampapalala', NULL, 'fkampapalala@must.ac.mw', '0999 511708    0882 362500', '8255', '93', '', '2017-08-10 23:51:35', '2017-08-10 23:51:35'),
(89, NULL, 'Sewer Attendant', 'permanent', 3, 1, NULL, 'Male', 'Joseph', '', 'Kuseli', NULL, 'jkuseli@must.ac.mw', '0995 678034   0884 968565', '8371', '30', '', '2017-08-10 23:51:35', '2017-08-10 23:51:35'),
(90, NULL, 'University Electrician', 'permanent', 3, 1, NULL, 'Male', 'Mechias', '', 'Juani', NULL, 'mjuani@must.ac.mw', '0999 371146', '8371', '30', '', '2017-08-10 23:51:35', '2017-08-10 23:51:35'),
(91, NULL, 'Carpenter', 'permanent', 3, 1, NULL, 'Male', 'Paul', '', 'Ngilazi', NULL, 'pngilazi@must.ac.mw', '0881 897534', '8371', '30', '', '2017-08-10 23:51:35', '2017-08-10 23:51:35'),
(92, NULL, 'Secretary - Research Postgraduate Studies & Outreach Services', 'permanent', 23, 12, NULL, 'Male', 'Brenda ', '', 'Makanani', NULL, 'bmakanani@must.ac.mw', '0888 853769', '8206', '102', '', '2017-08-10 23:51:36', '2017-08-10 23:51:36'),
(93, NULL, 'Secretary - Assistant Registrar (HRM)', 'permanent', 5, 12, NULL, 'Male', 'Edna', '', 'Munthali', NULL, 'emunthali@must.ac.mw', '0888 565372', '8222', '115', '', '2017-08-10 23:51:36', '2017-08-10 23:51:36'),
(94, NULL, 'Secretary', 'permanent', 27, 2, NULL, 'Male', 'Emma', '', 'Mbilizi', NULL, 'embilizi@must.ac.mw', '0999 303448', '8226 / 01478226', '291', '', '2017-08-10 23:51:36', '2017-09-15 05:09:49'),
(95, NULL, 'Secretary', 'permanent', NULL, 12, NULL, 'Female', 'Eunice', '', 'Gwaza', NULL, 'egwaza@must.ac.mw', '0888 861865', '8309', '44', '', '2017-08-10 23:51:36', '2017-09-15 07:38:26'),
(96, NULL, 'Personal Assistant to the Vice Chancellor', 'permanent', 24, 2, NULL, 'Male', 'Florence', '', 'Chisambiro', NULL, 'fchisambiro@must.ac.mw', '0888 951329', '8231/ 01478231', '121', '', '2017-08-10 23:51:36', '2017-09-05 03:46:49'),
(97, NULL, 'Executive Assistant - NSCES', 'permanent', NULL, 12, NULL, 'Male', 'Ireen', '', 'Kalonga', NULL, 'ikalonga@must.ac.mw', '0888 920304', '8289', '68', '', '2017-08-10 23:51:36', '2017-08-10 23:51:36'),
(98, NULL, 'Secretary - AR (Academic)', 'permanent', 6, 12, NULL, 'Male', 'Ireen', '', 'Mtipende', NULL, 'imtipende@must.ac.mw', '0884 541738', '8203 / 01478203', '107', '', '2017-08-10 23:51:36', '2017-08-10 23:51:36'),
(99, NULL, 'Personal Assistant to the University Registrar', 'permanent', 25, 2, NULL, 'Male', 'Lizzie', '', 'Nyirenda', NULL, 'lnyirenda@must.ac.mw', '0888 874383  0999 874383', '8219 / 01478219', '112', '', '2017-08-10 23:51:36', '2017-08-10 23:51:36'),
(100, NULL, 'Executive Assistant', 'permanent', NULL, 2, NULL, 'Male', 'Mirriam', '', 'Kumsinda', NULL, 'mkumsinda@must.ac.mw', '0888 460367  0999 460367', '', '', '', '2017-08-10 23:51:36', '2017-08-10 23:51:36'),
(101, NULL, 'Secretary - Finance & Investment', 'permanent', 4, 2, NULL, 'Male', 'Sarah', '', 'Ngalawa', NULL, 'sngalawa@must.ac.mw', '0888 663541', '8223', '115', '', '2017-08-10 23:51:36', '2017-08-10 23:51:36'),
(102, NULL, 'ICT Technician', 'permanent', 1, 1, NULL, 'Male', 'Charles', 'Isaac', 'Kotokwa', NULL, 'ckotokwa@must.ac.mw', '0888 747152  0999 563200', '8533', '20', '', '2017-08-10 23:51:36', '2017-08-10 23:51:36'),
(103, NULL, 'ICT Technician', 'permanent', 1, 1, NULL, 'Male', 'Mathias', 'Samuel', 'Mbewe', NULL, 'mmbewe@must.ac.mw', '0999 910466  0888 410466', '8516', '22', '', '2017-08-10 23:51:36', '2017-08-10 23:51:36'),
(104, NULL, 'ICT Technician', 'permanent', 1, 1, NULL, 'Male', 'Webster', '', 'Moyo', NULL, 'wmoyo@must.ac.mw', '0995 455441', '8532', '20', '', '2017-08-10 23:51:37', '2017-08-10 23:51:37'),
(105, NULL, 'Workshop Assistant', 'permanent', 18, 1, NULL, 'Male', 'Alex', '', 'Makwinja', NULL, 'amakwinja@must.ac.mw', '0994 286607', '8371', 'IRC', '', '2017-08-10 23:51:37', '2017-08-10 23:51:37'),
(106, NULL, 'Sales Assistant', 'permanent', 18, 1, NULL, 'Male', 'Amos ', '', 'Mphande', NULL, 'amphande@must.ac.mw', '0999 946549    0888 966770', '8389', 'IRC', '', '2017-08-10 23:51:37', '2017-08-10 23:51:37'),
(107, NULL, 'Research Officer (M)', 'permanent', 18, 1, NULL, 'Male', 'Austin', 'K', 'Nyirenda', NULL, 'anyirenda@must.ac.mw', '0888 524016', '8391', 'IRC', '', '2017-08-10 23:51:37', '2017-08-10 23:51:37'),
(108, NULL, 'Artisan', 'permanent', 18, 1, NULL, 'Male', 'Geoffrey', '', 'Levi', NULL, 'glevi@must.ac.mw', '0888 524319', '8371', 'IRC', '', '2017-08-10 23:51:37', '2017-08-10 23:51:37'),
(109, NULL, 'Carpenter', 'permanent', 18, 1, NULL, 'Male', 'Hannock ', '', 'Kamphokoto', NULL, 'hkamphokoto@must.ac.mw', '0999 318147', '8371', 'IRC', '', '2017-08-10 23:51:37', '2017-08-10 23:51:37'),
(110, NULL, 'Artisan', 'permanent', 18, 1, NULL, 'Male', 'Jimmy', '', 'Mussa', NULL, 'jmussa@must.ac.mw', '0999 367822     0993 695168', '8371', 'IRC', '', '2017-08-10 23:51:37', '2017-08-10 23:51:37'),
(111, NULL, 'Senior Lecturer', 'permanent', 18, 4, NULL, 'Male', 'John', '', 'Taulo', NULL, 'jtaulo@must.ac.mw', '0888 870399', '8411', '16', '', '2017-08-10 23:51:37', '2017-08-25 21:16:37'),
(112, NULL, 'Research Fellow', 'permanent', 18, 1, NULL, 'Male', 'Joseph', '', 'Issa', NULL, 'jissa@must.ac.mw', '0881 792245', '8411', '16', '', '2017-08-10 23:51:37', '2017-08-10 23:51:37'),
(113, NULL, 'Senior Research Fellow', 'permanent', 18, 1, NULL, 'Male', 'Kingsley', '', 'Kalonda', NULL, 'kkalonda@must.ac.mw', '0888 825485', '8405', 'IRC', '', '2017-08-10 23:51:37', '2017-08-10 23:51:37'),
(114, NULL, 'Research Officer (E)', 'permanent', 18, 1, NULL, 'Male', 'Leonard', '', 'Mwakayoka', NULL, 'lmwakayoka@must.ac.mw', '0888 853476', '8390', 'IRC', '', '2017-08-10 23:51:37', '2017-08-10 23:51:37'),
(115, NULL, 'Technician', 'permanent', 18, 1, NULL, 'Male', 'Moses', '', 'Mkandawire', NULL, 'mmkandawire@must.ac.mw', '0888 751656', '8371', 'IRC', '', '2017-08-10 23:51:37', '2017-08-10 23:51:37'),
(116, NULL, 'Senior Research Fellow', 'permanent', 18, 1, NULL, 'Male', 'Robert', '', 'Mkandawire', NULL, 'rmkandawire@must.ac.mw', '0996 604606', '8394', 'IRC', '', '2017-08-10 23:51:37', '2017-08-10 23:51:37'),
(117, NULL, 'Artisan', 'permanent', 18, 1, NULL, 'Male', 'Robert', '', 'Gondwe', NULL, 'rgondwe@must.ac.mw', '0888 876765 ', '8371', 'IRC', '', '2017-08-10 23:51:37', '2017-08-10 23:51:37'),
(118, NULL, 'Artisan', 'permanent', 18, 1, NULL, 'Male', 'Ronald', '', 'Kafere', NULL, 'rkafere@must.ac.mw', '0995 363810', '8371', 'IRC', '', '2017-08-10 23:51:37', '2017-08-10 23:51:37'),
(119, NULL, 'Research Fellow', 'permanent', 18, 2, NULL, 'Male', 'Tabitha', '', 'Nindi', NULL, 'tnindi@must.ac.mw', '0996 882882', '8414', '', '', '2017-08-10 23:51:37', '2017-09-15 05:05:51'),
(120, NULL, 'Library Assistant', 'permanent', 16, 1, NULL, 'Male', 'Bunnett ', '', 'Chauluka', NULL, 'bchauluka@must.ac.mw', '0991 508134', '8466', '35', '', '2017-08-10 23:51:37', '2017-08-10 23:51:37'),
(121, NULL, 'Library Guard', 'permanent', NULL, 2, NULL, 'Male', 'Catherine', '', 'Bwanali', NULL, 'cbwanali@must.ac.mw', '0888 526469', 'Library Entrance', '34', '', '2017-08-10 23:51:38', '2017-08-10 23:51:38'),
(122, NULL, 'Library Assistant', 'permanent', 16, 3, NULL, 'Male', 'Chifundo ', '', 'Chipendo', NULL, 'cchipendo@must.ac.mw', '0888 117170', '8465', '31', '', '2017-08-10 23:51:38', '2017-08-10 23:51:38'),
(123, NULL, 'Library Assistant', 'permanent', 16, 1, NULL, 'Male', 'Evance', '', 'Kambwiri', NULL, 'ekambwiri@must.ac.mw', '0888 563220', '8465', '31', '', '2017-08-10 23:51:38', '2017-08-10 23:51:38'),
(124, NULL, 'Library Guard', 'permanent', 16, 1, NULL, 'Male', 'Hanleck', '', 'Matinga', NULL, 'hmatinga@must.ac.mw', '0888 580001', 'Library Entrance', '34', '', '2017-08-10 23:51:38', '2017-08-10 23:51:38'),
(125, NULL, 'Library Guard', 'permanent', 16, 1, NULL, 'Male', 'John', 'A', 'Palapasa', NULL, 'jpalapasa@must.ac.mw', '0884 944697   0999 068262', 'Library Entrance', '34', '', '2017-08-10 23:51:38', '2017-08-10 23:51:38'),
(126, NULL, 'Library Guard', 'permanent', 16, 3, NULL, 'Male', 'Malire', '', 'James', NULL, 'mjames@must.ac.mw', '0888 820151  0991 554678', 'Library Entrance', '34', '', '2017-08-10 23:51:38', '2017-08-10 23:51:38'),
(127, NULL, 'Library Assistant', 'permanent', 16, 1, NULL, 'Male', 'Mlonyeni', '', 'Chisi', NULL, 'mlchisi@must.ac.mw', '0888 701600', '8504', '33', '', '2017-08-10 23:51:38', '2017-08-10 23:51:38'),
(128, NULL, 'Library Guard', 'permanent', 16, 3, NULL, 'Male', 'Selina', '', 'Chimwendo', NULL, 'schimwendo@must.ac.mw', '0888 697161', 'Library Entrance', '34', '', '2017-08-10 23:51:38', '2017-08-10 23:51:38'),
(129, NULL, 'Library Assistant', 'permanent', 16, 1, NULL, 'Male', 'Stuart ', '', 'Chikusilo', NULL, 'schikusilo@must.ac.mw', '0999 559350', '8504', '33', '', '2017-08-10 23:51:38', '2017-08-10 23:51:38'),
(130, NULL, 'Library Assistant', 'permanent', 16, 1, NULL, 'Male', 'Yamikani ', '', 'Kamcholoti', NULL, 'ykamcholoti@must.ac.mw', '0881 001166', '8466', '35', '', '2017-08-10 23:51:38', '2017-08-10 23:51:38'),
(131, NULL, 'Laboratory Technician - Chemistry', 'permanent', 8, 1, NULL, 'Male', 'Allan', '', 'Basikolo', NULL, 'abasikolo@must.ac.mw', '0999 418138', '8116', '14', '', '2017-08-10 23:51:38', '2017-08-10 23:51:38'),
(132, NULL, 'Laboratory Technician - Chemistry', 'permanent', 8, 3, NULL, 'Male', 'Alice', '', 'Ndalama', NULL, 'andalama@must.ac.mw', '0888 113148', '8028', '13', '', '2017-08-10 23:51:38', '2017-08-10 23:51:38'),
(133, NULL, 'Laboratory Technician - Physics', 'permanent', 8, 1, NULL, 'Male', 'Charles', '', 'Banda', NULL, 'bandac@must.ac.mw', '0999 744258   0884 144258 ', '8017', 'TB3', '', '2017-08-10 23:51:38', '2017-08-10 23:51:38'),
(134, NULL, 'Laboratory Technician - Mechanical Engineering', 'permanent', 13, 1, NULL, 'Male', 'Henry', '', 'Chiphaka', NULL, 'hchiphaka@must.ac.mw', '0888 317846  0997 756636', '8005', 'TB4.4', '', '2017-08-10 23:51:38', '2017-08-10 23:51:38'),
(135, NULL, 'Laboratory Technician - Biological Sciences', 'permanent', 9, 1, NULL, 'Male', 'Jeverson', '', 'Mwale', NULL, 'jmwale@must.ac.mw', '0999 316299', '8011', 'TB4.1', '', '2017-08-10 23:51:38', '2017-08-10 23:51:38'),
(136, NULL, 'Laboratory Technician - Chemistry', 'permanent', 8, 1, NULL, 'Male', 'Joseph', '', 'Kumphanda', NULL, 'jkumphanda@must.ac.mw', '0999 618723  0881 266485', '8003', 'TB4.1', '', '2017-08-10 23:51:38', '2017-09-15 05:05:34'),
(137, NULL, 'Laboratory Technician - Biological Sciences', 'permanent', 9, 1, NULL, 'Male', 'Yohanny', '', 'Kazembe', NULL, 'ykazembe@must.ac.mw', '0888 303197    0999 411254', '8011', '', '', '2017-08-10 23:51:38', '2017-08-10 23:51:38'),
(138, NULL, 'Receptionist', 'permanent', 6, 3, NULL, 'Male', 'Gift ', '', 'Mkwezalamba', NULL, 'gmkwezalamba@must.ac.mw', '0999 803332', '8052 / 01478000', 'Rec', '', '2017-08-10 23:51:38', '2017-08-10 23:51:38'),
(139, NULL, 'Receptionist', 'permanent', 17, 3, NULL, 'Male', 'Hilda', '', 'Mtenje', NULL, 'hmtenje@must.ac.mw', '0888 824261  0993 606847', '8052 / 01478000', 'Rec', '', '2017-08-10 23:51:38', '2017-08-10 23:51:38'),
(140, NULL, 'Registry Clerk', 'permanent', 17, 1, NULL, 'Male', 'Khumbo', '', 'Phiri', NULL, 'kphiri@must.ac.mw', '0881 477561', '8399', '8', '', '2017-08-10 23:51:38', '2017-08-10 23:51:38'),
(141, NULL, 'Office Assistant', 'permanent', 6, 1, NULL, 'Male', 'Louldon ', '', 'Mpawa', NULL, 'lmpawa@must.ac.mw', '0882 824834', '8251', '98', '', '2017-08-10 23:51:38', '2017-08-10 23:51:38'),
(142, NULL, 'Office Assistant', 'permanent', 6, 3, NULL, 'Male', 'Rhoda ', '', 'Magalasi', NULL, 'rmagalasi@must.ac.mw', '0888 862826', '8251', '98', '', '2017-08-10 23:51:38', '2017-08-10 23:51:38'),
(143, NULL, 'Office Assistant', 'permanent', 6, 2, NULL, 'Male', 'Stella', '', 'Chikale', NULL, 'schikale@must.ac.mw', '0881 515249', '8251', '98', '', '2017-08-10 23:51:39', '2017-08-10 23:51:39'),
(144, NULL, 'Nursing Sister', 'permanent', 26, 3, NULL, 'Male', 'Mtisunge', '', 'Mpakati', NULL, 'mmpakati@must.ac.mw', '0882 545255', '8353', '1', '', '2017-08-10 23:51:39', '2017-08-10 23:51:39'),
(145, NULL, 'Clinical Officer', 'permanent', 26, 1, NULL, 'Male', 'Precious', 'Lonjezo', 'Chipatala', NULL, 'pchipatala@must.ac.mw', '0881 768689', '8384', '2', '', '2017-08-10 23:51:39', '2017-08-10 23:51:39'),
(146, NULL, 'Driver', 'permanent', 7, 1, NULL, 'Male', 'Elliot ', '', 'Bamusi', NULL, 'ebamusi@must.ac.mw', '0888 699125', '8336', '25', '', '2017-08-10 23:51:39', '2017-08-10 23:51:39'),
(147, NULL, 'Driver', 'permanent', 7, 1, NULL, 'Male', 'Gift ', '', 'Kapyepye', NULL, 'gkapyepye@must.ac.mw', '0888 872114', '8336', '25', '', '2017-08-10 23:51:39', '2017-08-10 23:51:39'),
(148, NULL, 'Driver', 'permanent', 7, 1, NULL, 'Male', 'Leo ', '', 'Bwanali', NULL, 'lbwanali@must.ac.mw', '0999 408765', '8336', '25', '', '2017-08-10 23:51:39', '2017-08-10 23:51:39'),
(149, NULL, 'Driver', 'permanent', 7, 1, NULL, 'Male', 'Michael ', 'Mark', 'Sichali', NULL, 'msichali@must.ac.mw', '0999 033443  0882 431477', '8336', '25', '', '2017-08-10 23:51:39', '2017-08-10 23:51:39'),
(150, NULL, 'Driver', 'permanent', 7, 1, NULL, 'Male', 'Milton', '', 'Galeza', NULL, 'mgaleza@must.ac.mw', '0999 467400  0881 542180', '8336', '25', '', '2017-08-10 23:51:39', '2017-08-10 23:51:39'),
(151, NULL, 'Driver', 'permanent', 7, 1, NULL, 'Male', 'Moses', '', 'Masula', NULL, 'mmasula@must.ac.mw', '0888 859590  0998 682028', '8336', '25', '', '2017-08-10 23:51:39', '2017-08-10 23:51:39'),
(152, NULL, 'Driver', 'permanent', 7, 1, NULL, 'Male', 'Patrick', '', 'Mawindo', NULL, 'pmawindo@must.ac.mw', '0888 746455  0999 694190', '8336', '25', '', '2017-08-10 23:51:39', '2017-08-10 23:51:39'),
(153, NULL, 'Driver', 'permanent', 7, 1, NULL, 'Male', 'Wickner', '', 'Chipuwa', NULL, 'wchipuwa@must.ac.mw', '0999 360356', '8336', '25', '', '2017-08-10 23:51:39', '2017-08-10 23:51:39'),
(154, NULL, 'Security Officer', 'permanent', 20, 1, NULL, 'Male', 'Amon', '', 'Kamtule', NULL, 'akamtule@must.ac.mw', '0881 621194', '8366', '24', '', '2017-08-10 23:51:39', '2017-08-10 23:51:39'),
(155, NULL, 'Security Officer', 'permanent', 20, 1, NULL, 'Male', 'Faston', '', 'Misinde', NULL, 'fmisinde@must.ac.mw', '0888 128415  0999 260843', '8366', '24', '', '2017-08-10 23:51:39', '2017-08-10 23:51:39'),
(156, NULL, 'Lecturer', 'permanent', 28, 12, NULL, 'Female', 'Comfort', NULL, 'Mtontha', NULL, 'cmtontha@must.ac.mw', '0992 959321', '8307', '53', '', '2017-08-25 21:21:37', '2017-09-05 03:28:05'),
(157, '', 'Deputy Vice Chancellor', 'permanent', 27, 5, NULL, 'Male', 'Jonathan', 'I', 'Makuwira', NULL, 'jmakuwira@must.ac.mw', '0888 250 685/0998 769 957', '8217 / 01478217', '116', '', '2017-09-05 03:21:40', '2017-09-05 03:25:12'),
(158, NULL, 'Lecturer', 'permanent', 28, 1, NULL, 'Male', 'Noel', NULL, 'Mweta', NULL, 'nmweta@must.ac.mw', '0884 489418', '8307', '53', '', '2017-09-05 03:33:54', '2017-09-05 03:33:54'),
(159, NULL, 'Assitant Librarian - Technical Services', 'permanent', 16, 1, NULL, 'Male', 'Alexander', NULL, 'Kashitigu', NULL, 'akashitigu@must.ac.mw', '0885 905 861 0999 253784', '8418', '27', '', '2017-09-15 04:43:24', '2017-09-15 04:43:24'),
(160, NULL, 'Assistant Librarian - Reader Services', 'permanent', 16, 12, NULL, 'Female', 'Khumbo', NULL, 'Ng\'ong\'ola', NULL, 'kngongola@must.ac.mw', '0999 445990', '8417', '29', '', '2017-09-15 04:46:25', '2017-09-15 04:54:04'),
(161, NULL, 'Secretary - Academy of Medical Sciences', 'permanent', NULL, 2, NULL, 'Female', 'Yamikani', NULL, 'Gama', NULL, 'ygama@must.ac.mw', '0888 554630', '8316', '49', '', '2017-09-15 06:04:44', '2017-09-15 06:04:44'),
(162, 'AD122', 'technician', 'permanent', 7, NULL, '2018-03-16', 'Female', 'trying', 'trial', 'try', NULL, 'ine@eee', '2332', '233222', NULL, 'single', '2018-03-27 16:55:49', '2018-03-27 16:55:49'),
(163, 'AD123', 'Carpentar', 'permanent', 23, 4, NULL, 'Male', 'Madalitso', 'marita', 'Nyemba', 'ddffaaa', 'madanyemba@must.ac.mw', '0888 675498  0999 612700', '8202 / 01478202', '103', 'single', '2019-11-21 12:13:42', '2019-11-21 12:13:42');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_04_09_044236_create_products_table', 1),
(9, '2019_04_09_115937_create_appointments_table', 2),
(10, '2019_04_09_120750_create_doctors_table', 3),
(11, '2019_11_21_132559_employees', 4);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
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
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'Nwmg3DRRz1XUPyHAHQL3rQ2U6QnQ8Gzvut4iiHP5', 'http://localhost', 1, 0, 0, '2019-05-08 07:13:59', '2019-05-08 07:13:59'),
(2, NULL, 'Laravel Password Grant Client', 'VHU1sMH5RZmLurPP81fs8COXpjBzTolnvRbJKg7I', 'http://localhost', 0, 1, 0, '2019-05-08 07:13:59', '2019-05-08 07:13:59');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2019-05-08 07:13:59', '2019-05-08 07:13:59');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `detail`, `created_at`, `updated_at`) VALUES
(1, 'Mango', 'This is an African fruit', NULL, NULL),
(2, 'Biscuit', 'From Europe ', '2019-04-09 06:32:00', '2019-04-09 06:32:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
