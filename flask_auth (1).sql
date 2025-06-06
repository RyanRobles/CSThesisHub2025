-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2025 at 05:55 AM
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
-- Database: `flask_auth`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_action_history`
--

CREATE TABLE `admin_action_history` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `action_type` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `target_id` int(11) DEFAULT NULL,
  `target_type` varchar(50) DEFAULT NULL,
  `performed_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_action_history`
--

INSERT INTO `admin_action_history` (`id`, `admin_id`, `action_type`, `description`, `target_id`, `target_type`, `performed_at`) VALUES
(1, 8, 'thesis_upload', 'Uploaded new thesis file: GEOSPATIAL_IDENTIFICATION_OF_POVERTY.jpg', 363, 'thesis_submission', '2025-05-30 03:11:04'),
(2, 8, 'thesis_reject', 'Rejected thesis submission 363', 363, 'thesis_submission', '2025-05-30 03:11:41'),
(3, 8, 'thesis_upload', 'Uploaded new thesis file: GEOSPATIAL_IDENTIFICATION_OF_POVERTY.jpg', 364, 'thesis_submission', '2025-05-30 03:11:47'),
(4, 8, 'thesis_reject', 'Rejected thesis submission 364', 364, 'thesis_submission', '2025-05-30 03:12:04'),
(5, 8, 'thesis_permanent_delete', 'Permanently deleted thesis: 364', 364, 'thesis_submission', '2025-05-30 03:12:07'),
(6, 8, 'thesis_permanent_delete', 'Permanently deleted thesis: 363', 363, 'thesis_submission', '2025-05-30 03:12:08'),
(7, 8, 'thesis_upload', 'Uploaded new thesis file: GEOSPATIAL_IDENTIFICATION_OF_POVERTY.jpg', 365, 'thesis_submission', '2025-05-30 03:12:16'),
(8, 8, 'thesis_reject', 'Rejected thesis submission 365', 365, 'thesis_submission', '2025-05-30 03:12:42'),
(9, 8, 'thesis_upload', 'Uploaded new thesis file: GEOSPATIAL_IDENTIFICATION_OF_POVERTY.jpg', 366, 'thesis_submission', '2025-05-30 03:13:03'),
(10, 8, 'thesis_approve', 'Approved and published thesis 366 as 95', 95, 'published_thesis', '2025-05-30 03:13:23'),
(11, 8, 'thesis_permanent_delete', 'Permanently deleted thesis: 365', 365, 'thesis_submission', '2025-05-30 03:13:27'),
(12, 8, 'thesis_delete', 'Deleted published thesis 95', 95, 'published_thesis', '2025-05-30 03:13:37'),
(13, 8, 'thesis_upload', 'Uploaded new thesis file: GEOSPATIAL_IDENTIFICATION_OF_POVERTY.jpg', 367, 'thesis_submission', '2025-05-30 03:13:46'),
(14, 8, 'thesis_approve', 'Approved and published thesis 367 as 96', 96, 'published_thesis', '2025-05-30 03:14:12'),
(15, 8, 'thesis_upload', 'Uploaded new thesis file: 2022_CVSU_IMUS_ANDROID_MAPPING_APP.jpg', 368, 'thesis_submission', '2025-05-30 03:15:14'),
(16, 8, 'thesis_approve', 'Approved and published thesis 368 as 97', 97, 'published_thesis', '2025-05-30 03:15:48'),
(17, 8, 'thesis_upload', 'Uploaded new thesis file: 2023_GAPA_STUDENT_GATE_PASS.jpg', 369, 'thesis_submission', '2025-05-30 03:16:04'),
(18, 8, 'thesis_approve', 'Approved and published thesis 369 as 98', 98, 'published_thesis', '2025-05-30 03:16:38'),
(19, 8, 'thesis_upload', 'Uploaded new thesis file: 2023_LOST_CATS_AND_DOGS.jpg', 370, 'thesis_submission', '2025-05-30 03:17:07'),
(20, 8, 'thesis_approve', 'Approved and published thesis 370 as 99', 99, 'published_thesis', '2025-05-30 03:17:25'),
(21, 8, 'thesis_delete', 'Deleted published thesis 99', 99, 'published_thesis', '2025-05-30 03:17:33'),
(22, 8, 'thesis_upload', 'Uploaded new thesis file: 2023_LOST_CATS_AND_DOGS.jpg', 371, 'thesis_submission', '2025-05-30 03:17:44'),
(23, 8, 'thesis_approve', 'Approved and published thesis 371 as 100', 100, 'published_thesis', '2025-05-30 03:18:32'),
(24, 8, 'thesis_upload', 'Uploaded new thesis file: 2023_Subsurface_Irrigation_System_for_SAUR_FARM_Using_Treshhold_Algo.jpg', 372, 'thesis_submission', '2025-05-30 03:18:48'),
(25, 8, 'thesis_approve', 'Approved and published thesis 372 as 101', 101, 'published_thesis', '2025-05-30 03:19:13'),
(26, 8, 'thesis_upload', 'Uploaded new thesis file: 2024_ENHANCING_WORKFORCE_MANAGEMENT.jpg', 373, 'thesis_submission', '2025-05-30 03:19:34'),
(27, 8, 'thesis_approve', 'Approved and published thesis 373 as 102', 102, 'published_thesis', '2025-05-30 03:20:11'),
(28, 8, 'thesis_upload', 'Uploaded new thesis file: AN_ONLINE_VOTING_SYSTEM.jpg', 374, 'thesis_submission', '2025-05-30 03:20:32'),
(29, 8, 'thesis_approve', 'Approved and published thesis 374 as 103', 103, 'published_thesis', '2025-05-30 03:21:31'),
(30, 8, 'thesis_upload', 'Uploaded new thesis file: BARANGAY_ALAPAN-2A.jpg', 375, 'thesis_submission', '2025-05-30 03:21:50'),
(31, 8, 'thesis_approve', 'Approved and published thesis 375 as 104', 104, 'published_thesis', '2025-05-30 03:22:29'),
(32, 8, 'thesis_upload', 'Uploaded new thesis file: CLOUD-BASED_INVENTORY_MANAGEMENT_SYSTEM.jpg', 376, 'thesis_submission', '2025-05-30 03:22:42'),
(33, 8, 'thesis_approve', 'Approved and published thesis 376 as 105', 105, 'published_thesis', '2025-05-30 03:23:23'),
(34, 8, 'thesis_upload', 'Uploaded new thesis file: ENHANCING_VIRTUAL_CONFERENCING.jpg', 377, 'thesis_submission', '2025-05-30 03:23:38'),
(35, 8, 'thesis_approve', 'Approved and published thesis 377 as 106', 106, 'published_thesis', '2025-05-30 03:24:07'),
(36, 8, 'thesis_upload', 'Uploaded new thesis file: GAME_SIMULATION_FOR_ALTERNATIVE_LEARNING.jpg', 378, 'thesis_submission', '2025-05-30 03:24:18'),
(37, 8, 'thesis_approve', 'Approved and published thesis 378 as 107', 107, 'published_thesis', '2025-05-30 03:25:05'),
(38, 8, 'thesis_upload', 'Uploaded new thesis file: MOBILE_EXAMINATION_CHECKER.jpg', 379, 'thesis_submission', '2025-05-30 03:25:24'),
(39, 8, 'thesis_approve', 'Approved and published thesis 379 as 108', 108, 'published_thesis', '2025-05-30 03:25:51'),
(40, 8, 'thesis_upload', 'Uploaded new thesis file: ONLINE_CLASS_ATTENDANCE_AND_RECITATIONMON.jpg', 380, 'thesis_submission', '2025-05-30 03:26:36'),
(41, 8, 'thesis_approve', 'Approved and published thesis 380 as 109', 109, 'published_thesis', '2025-05-30 03:27:14'),
(42, 8, 'thesis_upload', 'Uploaded new thesis file: SELF-ASSESSMENT_INTEGRATION_OF_PROGRAMMING_PROFICIENCY.jpg', 381, 'thesis_submission', '2025-05-30 03:27:24'),
(43, 8, 'thesis_approve', 'Approved and published thesis 381 as 110', 110, 'published_thesis', '2025-05-30 03:27:50'),
(44, 8, 'thesis_upload', 'Uploaded new thesis file: WEB_BASED_CONTACT_TRACING_SYSTEM.pdf', 382, 'thesis_submission', '2025-06-06 01:53:48'),
(45, 8, 'thesis_upload', 'Uploaded new thesis file: SUBSURFACE_IRRIGATION_SYSTEM.pdf', 383, 'thesis_submission', '2025-06-06 01:55:24'),
(46, 8, 'thesis_upload', 'Uploaded new thesis file: SUBSURFACE_IRRIGATION_SYSTEM.pdf', 384, 'thesis_submission', '2025-06-06 01:59:16'),
(47, 8, 'thesis_upload', 'Uploaded new thesis file: ENHANCING_WORKFORCE.pdf', 385, 'thesis_submission', '2025-06-06 02:04:27'),
(48, 8, 'thesis_upload', 'Uploaded new thesis file: GEOSPATIAL_IDENTIFICATION_OF_POVERTY_.pdf', 386, 'thesis_submission', '2025-06-06 11:21:34'),
(49, 8, 'thesis_upload', 'Uploaded new thesis file: FACIAL_RECOGNITION_FOR_PAYROLL_AND_ATTENDANCE.pdf', 387, 'thesis_submission', '2025-06-06 11:25:46'),
(50, 8, 'thesis_upload', 'Uploaded new thesis file: GEOSPATIAL_IDENTIFICATION_OF_POVERTY_.pdf', 388, 'thesis_submission', '2025-06-06 11:25:57'),
(51, 8, 'thesis_upload', 'Uploaded new thesis file: MOBILE_MEDICINE.pdf', 389, 'thesis_submission', '2025-06-06 11:27:48'),
(52, 8, 'thesis_upload', 'Uploaded new thesis file: MOBILE_MEDICINE.pdf', 390, 'thesis_submission', '2025-06-06 11:37:20');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `created_at`) VALUES
(3, 'Algorithm', 'Anything related to Algorithm', '2025-05-29 19:09:29'),
(4, 'Data Analytics', 'Anything related to Data Analytics', '2025-05-29 19:09:36'),
(5, 'Facial Recognition', 'Anything related to Facial Recognition', '2025-05-29 19:09:45'),
(6, 'Gamification', 'Anything related to Gamification', '2025-05-29 19:09:53'),
(7, 'Machine Learning', 'Anything related to Machine Learning', '2025-05-29 19:10:01'),
(8, 'Medical Field', 'Anything related to Medicine', '2025-05-29 19:10:07'),
(9, 'Mobile', 'Anything Mobile Related', '2025-05-29 19:10:13'),
(10, 'RFID', 'Anything related to RFID', '2025-05-29 19:10:21'),
(11, 'System', 'Anything related to System', '2025-05-29 19:10:28');

-- --------------------------------------------------------

--
-- Table structure for table `published_theses`
--

CREATE TABLE `published_theses` (
  `id` int(11) NOT NULL,
  `submission_id` int(11) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `authors` text NOT NULL,
  `school` varchar(255) NOT NULL,
  `year_made` varchar(4) NOT NULL,
  `keywords` text NOT NULL,
  `published_by` int(11) NOT NULL,
  `published_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `num_pages` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT 0,
  `deleted_at` datetime DEFAULT NULL,
  `deletion_scheduled` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `published_theses`
--

INSERT INTO `published_theses` (`id`, `submission_id`, `file_path`, `title`, `authors`, `school`, `year_made`, `keywords`, `published_by`, `published_at`, `num_pages`, `is_deleted`, `deleted_at`, `deletion_scheduled`) VALUES
(96, 367, 'c:\\Users\\USER\\Documents\\GitHub\\CSThesisHub\\flask_auth_app\\static\\uploads\\published\\367_GEOSPATIAL_IDENTIFICATION_OF_POVERTY_AREAS_MACHINE_LEARNING_APPROACH_FOR_DSWD_IMUS.pdf', 'GEOSPATIAL IDENTIFICATION OF POVERTY AREAS: MACHINE LEARNING APPROACH FOR DSWD IMUS', 'ROMMEL M. MACAPOBRE, NIRO S REGALADO', 'Cavite State University - Imus Campus', '2024', '', 8, '2025-05-29 19:14:12', 9, 0, NULL, NULL),
(97, 368, 'c:\\Users\\USER\\Documents\\GitHub\\CSThesisHub\\flask_auth_app\\static\\uploads\\published\\368_CVSU_IMUS_ANDROID_MAPPING_APP_ENHANCING_CAMPUS_ACCESSIBILITY_AND_EFFICIENCY.pdf', 'CVSU IMUS ANDROID MAPPING APP: ENHANCING CAMPUS ACCESSIBILITY AND EFFICIENCY', 'ANDRES JOHN RYAN L, BERBASA SHAUN PRINCE L, JOROLAN VINCE LOUPER R', 'Cavite State University - Imus Campus', '2022', '', 8, '2025-05-29 19:15:48', 6, 0, NULL, NULL),
(98, 369, 'c:\\Users\\USER\\Documents\\GitHub\\CSThesisHub\\flask_auth_app\\static\\uploads\\published\\369_GaPa_STUDENT_GATE_PASS_INFORMATION_SYSTEM_USING_RFID_WITH_METAL_DETECTOR_FOR_CAVITE_STATE_UNIVERSITY_-_IMUS_CAMPU.pdf', 'GaPa: STUDENT GATE PASS INFORMATION SYSTEM USING RFID WITH METAL DETECTOR FOR CAVITE STATE UNIVERSITY - IMUS CAMPU', 'BORJA ANDREA MIRABELA D, MARTIN ELEINA JOELLE G, MEDALLA ALMIRA L', 'Cavite State University - Imus Campus', '2023', '', 8, '2025-05-29 19:16:38', 6, 0, NULL, NULL),
(100, 371, 'c:\\Users\\USER\\Documents\\GitHub\\CSThesisHub\\flask_auth_app\\static\\uploads\\published\\371_LOST_CATS_AND_DOGS_REPORTING_AND_REGISTRATION_SYSTEM_FOR_IMUS_ANIMAL_POUND_WITH_BREED_IDENTIFIER.pdf', 'LOST CATS AND DOGS REPORTING AND REGISTRATION SYSTEM FOR IMUS ANIMAL POUND WITH BREED IDENTIFIER', 'SALES MERLIN MIGUEL C, DE JUAN MARTIENE ANN, PEREZ ACE J', 'Cavite State University - Imus Campus', '2023', '', 8, '2025-05-29 19:18:32', 5, 0, NULL, NULL),
(101, 372, 'c:\\Users\\USER\\Documents\\GitHub\\CSThesisHub\\flask_auth_app\\static\\uploads\\published\\372_SUBSURFACE_IRRIGATION_SYSTEM_FOR_SAUR_FARM_USING_THRESHOLD_ALGORITHM.pdf', 'SUBSURFACE IRRIGATION SYSTEM FOR SAUR FARM USING THRESHOLD ALGORITHM', 'CAPUA, KYLE ANTHONY D, CARRASCO CARLOS MIGUEL I, OLAIRA ZAMIR TIMOTHY V', 'Cavite State University - Imus Campus', '2023', '', 8, '2025-05-29 19:19:13', 5, 0, NULL, NULL),
(102, 373, 'c:\\Users\\USER\\Documents\\GitHub\\CSThesisHub\\flask_auth_app\\static\\uploads\\published\\373_ENHANCING_WORKFORCE_MANAGEMENT_IMPLEMENTING_A_DATA_ANALYTICS_DRIVEN_EMPLOYMENT_SYSTEM_FOR_PESO_IMUS.pdf', 'ENHANCING WORKFORCE MANAGEMENT: IMPLEMENTING A DATA ANALYTICS DRIVEN EMPLOYMENT SYSTEM FOR PESO IMUS', 'ABUT RENZ MARK, ESPINEA PAUL CHRISTIAN, NEBRES JOHN MICHAEL', 'Cavite State University - Imus Campus', '2024', '', 8, '2025-05-29 19:20:11', 4, 0, NULL, NULL),
(103, 374, 'c:\\Users\\USER\\Documents\\GitHub\\CSThesisHub\\flask_auth_app\\static\\uploads\\published\\374_AN_ONLINE_VOTING_SYSTEM_FOR_CAVITE_STATE_UNIVERSITY_IMUS.pdf', 'AN ONLINE VOTING SYSTEM FOR CAVITE STATE UNIVERSITY IMUS', 'CHRISTIAN ANDREY TURLA SALONOY, DIANA ALTAREJOS GUTIERREZ, ERICA SHEINA LANSANG BERTULFO', 'Cavite State University - Imus Campus', '2022', '', 8, '2025-05-29 19:21:31', 5, 0, NULL, NULL),
(104, 375, 'c:\\Users\\USER\\Documents\\GitHub\\CSThesisHub\\flask_auth_app\\static\\uploads\\published\\375_BARANGAY_ALAPAN_-_2A_IMUS_CITY_CAVITE_HEALTH_CENTER_SYSTEM_WITH_DATA_ANALYTICS_SYSTEM_AND_EMAIL_NOTIFICATION.pdf', 'BARANGAY ALAPAN - 2A, IMUS CITY, CAVITE HEALTH CENTER SYSTEM WITH DATA ANALYTICS SYSTEM AND EMAIL NOTIFICATION', 'CEREZO JOVANY T, MAGDUA JEZEL A, MARASIGAN KATRINA ALEXA Q', 'Cavite State University - Imus Campus', '2022', '', 8, '2025-05-29 19:22:29', 6, 0, NULL, NULL),
(105, 376, 'c:\\Users\\USER\\Documents\\GitHub\\CSThesisHub\\flask_auth_app\\static\\uploads\\published\\376_CLOUD-BASED_INVENTORY_MANAGEMENT_SYSTEM_WITH_QR_CODE_FOR_SUPPLIES_OFFICE_IN_CAVITE_STATE_UNIVERSITY-IMUS_ENHANCING_EFFICIENCY_AND_ACCESSIBILITY.pdf', 'CLOUD-BASED INVENTORY MANAGEMENT SYSTEM WITH QR CODE FOR SUPPLIES OFFICE IN CAVITE STATE UNIVERSITY-IMUS: ENHANCING EFFICIENCY AND ACCESSIBILITY', 'MARIA CRISANTA P BORJA, JOVELYN A DELA CRUZ, KEICE V ZOLETA', 'Cavite State University - Imus Campus', '2024', '', 8, '2025-05-29 19:23:23', 7, 0, NULL, NULL),
(106, 377, 'c:\\Users\\USER\\Documents\\GitHub\\CSThesisHub\\flask_auth_app\\static\\uploads\\published\\377_ENHANCING_VIRTUAL_CONFERENCING_THE_INTEGRATION_OF_GAMIFICATION_IN_AN_INTERACTIVE_3D_SPACE_ENVIRONMENT.pdf', 'ENHANCING VIRTUAL CONFERENCING: THE INTEGRATION OF GAMIFICATION IN AN INTERACTIVE 3D SPACE ENVIRONMENT', 'CHARNELLE P ESTRIBOR, FRANZ EMSLEY L MANIBOG, KERCHEI C PALEN', 'Cavite State University - Imus Campus', '2024', '', 8, '2025-05-29 19:24:07', 5, 0, NULL, NULL),
(107, 378, 'c:\\Users\\USER\\Documents\\GitHub\\CSThesisHub\\flask_auth_app\\static\\uploads\\published\\378_GAME_SIMULATION_FOR_ALTERNATIVE_LEARNING_IN_BASIC_PYTHON_FOR_CS_AND_IT_STUDENTS_OF_CAVITE_STATE_UNIVERSITY_-_IMUS_CAMPUS.pdf', 'GAME SIMULATION FOR ALTERNATIVE LEARNING IN BASIC PYTHON FOR CS AND IT STUDENTS OF CAVITE STATE UNIVERSITY - IMUS CAMPUS', 'GARGAR GLENN ACE LIMWELL B, GERVACIO RONNETH JOY V, TOPACIO KHAIZTER VASH N', 'Cavite State University - Imus Campus', '2023', '', 8, '2025-05-29 19:25:05', 4, 0, NULL, NULL),
(108, 379, 'c:\\Users\\USER\\Documents\\GitHub\\CSThesisHub\\flask_auth_app\\static\\uploads\\published\\379_MOBILE_EXAMINATION_CHECKER_APPLICATION_FOR_CAVITE_STATE_UNIVERSITY_-_IMUS_CAMPUS.pdf', 'MOBILE EXAMINATION CHECKER APPLICATION FOR CAVITE STATE UNIVERSITY - IMUS CAMPUS', 'JEIGO M RUBIS, RENZO A OMPAD, CHRISTINNE LOR P RAMOS', 'Cavite State University - Imus Campus', '2022', '', 8, '2025-05-29 19:25:51', 5, 0, NULL, NULL),
(109, 380, 'c:\\Users\\USER\\Documents\\GitHub\\CSThesisHub\\flask_auth_app\\static\\uploads\\published\\380_ONLINE_CLASS_ATTENDANCE_AND_RECITATION_MONITORING_SYSTEM.pdf', 'ONLINE CLASS ATTENDANCE AND RECITATION MONITORING SYSTEM', 'SOMIDO ALJON, PAYOMO JERRICO O, ARMENTA JOHN AIVAN G', 'Cavite State University - Imus Campus', '2022', '', 8, '2025-05-29 19:27:14', 4, 0, NULL, NULL),
(110, 381, 'c:\\Users\\USER\\Documents\\GitHub\\CSThesisHub\\flask_auth_app\\static\\uploads\\published\\381_SELF-ASSESSMENT_INTEGRATION_OF_PROGRAMMING_PROFICIENCY_THROUGH_MOBILE_GAME_FOR_DCS_STUDENTS.pdf', 'SELF-ASSESSMENT INTEGRATION OF PROGRAMMING PROFICIENCY THROUGH MOBILE GAME FOR DCS STUDENTS  ', 'CARLO T CASTRO, PATRICK JAMES F FETIZANAN, RENZO C CRUZ', 'Cavite State University - Imus Campus', '2022', '', 8, '2025-05-29 19:27:50', 6, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `thesis_categories`
--

CREATE TABLE `thesis_categories` (
  `thesis_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `thesis_categories`
--

INSERT INTO `thesis_categories` (`thesis_id`, `category_id`) VALUES
(96, 7),
(97, 9),
(98, 10),
(98, 11),
(100, 4),
(100, 11),
(101, 3),
(101, 11),
(102, 4),
(102, 11),
(103, 11),
(104, 4),
(104, 11),
(105, 10),
(105, 11),
(106, 6),
(107, 6),
(108, 9),
(109, 11),
(110, 9);

-- --------------------------------------------------------

--
-- Table structure for table `thesis_pages`
--

CREATE TABLE `thesis_pages` (
  `id` int(11) NOT NULL,
  `thesis_id` int(11) NOT NULL,
  `page_number` int(11) NOT NULL,
  `page_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `thesis_pages`
--

INSERT INTO `thesis_pages` (`id`, `thesis_id`, `page_number`, `page_text`) VALUES
(10, 96, 1, 'CamScanner\n'),
(11, 96, 2, 'CamScanner\n'),
(12, 96, 3, 'CamScanner\n'),
(13, 96, 4, 'CamScanner\n'),
(14, 96, 5, 'CamScanner\n'),
(15, 96, 6, 'CamScanner\n'),
(16, 96, 7, 'CamScanner\n'),
(17, 96, 8, 'CamScanner\n'),
(18, 96, 9, 'CamScanner\n'),
(19, 97, 1, 'CamScanner\n'),
(20, 97, 2, 'CamScanner\n'),
(21, 97, 3, 'CamScanner\n'),
(22, 97, 4, 'CamScanner\n'),
(23, 97, 5, 'CamScanner\n'),
(24, 97, 6, 'CamScanner\n'),
(25, 98, 1, 'CamScanner\n'),
(26, 98, 2, 'CamScanner\n'),
(27, 98, 3, 'CamScanner\n'),
(28, 98, 4, 'CamScanner\n'),
(29, 98, 5, 'CamScanner\n'),
(30, 98, 6, 'CamScanner\n'),
(36, 100, 1, 'CamScanner\n'),
(37, 100, 2, 'CamScanner\n'),
(38, 100, 3, 'CamScanner\n'),
(39, 100, 4, 'CamScanner\n'),
(40, 100, 5, 'CamScanner\n'),
(41, 101, 1, 'CamScanner\n'),
(42, 101, 2, 'CamScanner\n'),
(43, 101, 3, 'CamScanner\n'),
(44, 101, 4, 'CamScanner\n'),
(45, 101, 5, 'CamScanner\n'),
(46, 102, 1, 'CamScanner\n'),
(47, 102, 2, 'CamScanner\n'),
(48, 102, 3, 'CamScanner\n'),
(49, 102, 4, 'CamScanner\n'),
(50, 103, 1, 'CamScanner\n'),
(51, 103, 2, 'CamScanner\n'),
(52, 103, 3, 'CamScanner\n'),
(53, 103, 4, 'CamScanner\n'),
(54, 103, 5, 'CamScanner\n'),
(55, 104, 1, 'CamScanner\n'),
(56, 104, 2, 'CamScanner\n'),
(57, 104, 3, 'CamScanner\n'),
(58, 104, 4, 'CamScanner\n'),
(59, 104, 5, 'CamScanner\n'),
(60, 104, 6, 'CamScanner\n'),
(61, 105, 1, 'CamScanner\n'),
(62, 105, 2, 'CamScanner\n'),
(63, 105, 3, 'CamScanner\n'),
(64, 105, 4, 'CamScanner\n'),
(65, 105, 5, 'CamScanner\n'),
(66, 105, 6, 'CamScanner\n'),
(67, 105, 7, 'CamScanner\n'),
(68, 106, 1, 'CamScanner\n'),
(69, 106, 2, 'CamScanner\n'),
(70, 106, 3, 'CamScanner\n'),
(71, 106, 4, 'CamScanner\n'),
(72, 106, 5, 'CamScanner\n'),
(73, 107, 1, 'CamScanner\n'),
(74, 107, 2, 'CamScanner\n'),
(75, 107, 3, 'CamScanner\n'),
(76, 107, 4, 'CamScanner\n'),
(77, 108, 1, 'CamScanner\n'),
(78, 108, 2, 'CamScanner\n'),
(79, 108, 3, 'CamScanner\n'),
(80, 108, 4, 'CamScanner\n'),
(81, 108, 5, 'CamScanner\n'),
(82, 109, 1, 'CamScanner\n'),
(83, 109, 2, 'CamScanner\n'),
(84, 109, 3, 'CamScanner\n'),
(85, 109, 4, 'CamScanner\n'),
(86, 110, 1, 'CamScanner\n'),
(87, 110, 2, 'CamScanner\n'),
(88, 110, 3, 'CamScanner\n'),
(89, 110, 4, 'CamScanner\n'),
(90, 110, 5, 'CamScanner\n'),
(91, 110, 6, 'CamScanner\n');

-- --------------------------------------------------------

--
-- Table structure for table `thesis_submissions`
--

CREATE TABLE `thesis_submissions` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `original_filename` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `authors` text DEFAULT NULL,
  `school` varchar(255) DEFAULT NULL,
  `year_made` varchar(4) DEFAULT NULL,
  `keywords` text DEFAULT NULL,
  `extracted_text` longtext DEFAULT NULL,
  `status` enum('pending','approved','rejected') DEFAULT 'pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `revised_file_path` varchar(255) DEFAULT NULL,
  `num_pages` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `file_persisted` tinyint(1) DEFAULT 0,
  `file_reuploaded` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `thesis_submissions`
--

INSERT INTO `thesis_submissions` (`id`, `admin_id`, `file_path`, `original_filename`, `title`, `authors`, `school`, `year_made`, `keywords`, `extracted_text`, `status`, `created_at`, `updated_at`, `revised_file_path`, `num_pages`, `deleted_at`, `file_persisted`, `file_reuploaded`) VALUES
(366, 8, 'c:\\Users\\USER\\Documents\\GitHub\\CSThesisHub\\flask_auth_app\\static\\uploads\\submissions\\366_GEOSPATIAL_IDENTIFICATION_OF_POVERTY_.pdf', 'GEOSPATIAL_IDENTIFICATION_OF_POVERTY.jpg', 'GEOSPATIAL IDENTIFICATION OF POVERTY AREAS: MACHINE LEARNING APPROACH FOR DSWD IMUS', ' ROMMEL M. MACAPOBRE, NIRO S REGALADO', 'Cavite State University - Imus Campus', '2024', NULL, 'GEOSPATIAL IDENTIFICATION OF POVERTY AREAS: MACHINE LEARNING\nAPPROACH FOR DSWD IMUS\n\nUndergraduate Thesis\nSubmitted to the Faculty of the\nDepartment of Computer Studies\nCavite State University\nImus, Cavite\n\nIn partial fulfilment\nof the requirements for the degree\nBachelor of Science in Computer Science\n\nROMMEL M. MACAPOBRE\nNIRO S. REGALADO\nSeptember 2024', 'approved', '2025-05-29 19:13:03', '2025-05-29 19:13:23', NULL, 9, NULL, 1, 1),
(367, 8, 'c:\\Users\\USER\\Documents\\GitHub\\CSThesisHub\\flask_auth_app\\static\\uploads\\submissions\\367_GEOSPATIAL_IDENTIFICATION_OF_POVERTY_.pdf', 'GEOSPATIAL_IDENTIFICATION_OF_POVERTY.jpg', 'GEOSPATIAL IDENTIFICATION OF POVERTY AREAS: MACHINE LEARNING APPROACH FOR DSWD IMUS', 'ROMMEL M. MACAPOBRE, NIRO S REGALADO', 'Cavite State University - Imus Campus', '2024', NULL, 'GEOSPATIAL IDENTIFICATION OF POVERTY AREAS: MACHINE LEARNING\nAPPROACH FOR DSWD IMUS\n\nUndergraduate Thesis\nSubmitted to the Faculty of the\nDepartment of Computer Studies\nCavite State University\nImus, Cavite\n\nIn partial fulfilment\nof the requirements for the degree\nBachelor of Science in Computer Science\n\nROMMEL M. MACAPOBRE\nNIRO S. REGALADO\nSeptember 2024', 'approved', '2025-05-29 19:13:46', '2025-05-29 19:14:12', NULL, 9, NULL, 1, 1),
(368, 8, 'c:\\Users\\USER\\Documents\\GitHub\\CSThesisHub\\flask_auth_app\\static\\uploads\\submissions\\368_CVSU_IMUS_ANDROID_MAPPING.pdf', '2022_CVSU_IMUS_ANDROID_MAPPING_APP.jpg', 'CVSU IMUS ANDROID MAPPING APP: ENHANCING CAMPUS ACCESSIBILITY AND EFFICIENCY', 'ANDRES JOHN RYAN L, BERBASA SHAUN PRINCE L, JOROLAN VINCE LOUPER R', 'Cavite State University - Imus Campus', '2022', NULL, 'CVSU IMUS ANDROID MAPPING APP: ENHANCING CAMPUS ACCESSIBILITY\nAND EFFICIENCY\n\nUndergraduate Thesis\nSubmitted to the Faculty of the\nDepartment of Computer Studies\nCavite State University — mus Campus\nImus City, Cavite\n\nIn partial fulfillment of the\nRequirements for the degree\nBachelor of Science in Computer Science\n\nANDRES, JOHN RYAN L\nBERBASA, SHAUN PRINCE L\nJOROLAN, VINCE LOUPER R\n\nAugust 2022', 'approved', '2025-05-29 19:15:14', '2025-05-29 19:15:48', NULL, 6, NULL, 1, 1),
(369, 8, 'c:\\Users\\USER\\Documents\\GitHub\\CSThesisHub\\flask_auth_app\\static\\uploads\\submissions\\369_GAPA_STUDENT_GATE_PASS_IS.pdf', '2023_GAPA_STUDENT_GATE_PASS.jpg', 'GaPa: STUDENT GATE PASS INFORMATION SYSTEM USING RFID WITH METAL DETECTOR FOR CAVITE STATE UNIVERSITY - IMUS CAMPU', 'BORJA ANDREA MIRABELA D, MARTIN ELEINA JOELLE G, MEDALLA ALMIRA L', 'Cavite State University - Imus Campus', '2023', NULL, 'GaPa: STUDENT GATE PASS INFORMATION SYSTEM USING RFID WITH\nMETAL DETECTOR FOR CAVITE STATE UNIVERSITY - IMUS CAMPUS\n\nUndergraduate Thesis\nsubmitted to the faculty of the\nDepartment of Computer Studies\nCavite State University\nImus, Cavite\n\nIn partial fulfillment\nof the requirements for the degree\nBachelor of Science in Computer Science\n\nBORJA, ANDREA MIRABELA D.\nMARTIN, ELEINA JOELLE G.\nMEDALLA, ALMIRA L.\n2023', 'approved', '2025-05-29 19:16:04', '2025-05-29 19:16:38', NULL, 6, NULL, 1, 1),
(370, 8, 'c:\\Users\\USER\\Documents\\GitHub\\CSThesisHub\\flask_auth_app\\static\\uploads\\submissions\\370_LOST_CATS_AND_DOGS.pdf', '2023_LOST_CATS_AND_DOGS.jpg', 'LOST CATS AND DOGS REPORTING AND REGISTRATION SYSTEM FOR IMUS ANIMAL POUND WITH BREED IDENTIFIER', 'SALES MERLIN MIGUEL C, DE JUAN MARTIENE ANN, PEREZ ACE J', 'Cavite State University - Imus Campus', '2023', NULL, 'LOST CATS AND DOGS REPORTING AND REGISTRATION SYSTEM FOR IMUS\nANIMAL POUND WITH BREED IDENTIFIER\n\nAn Undergraduate Thesis\nSubmitted to the Faculty of the\nDepartment of Computer Studies\nCavite State University\nImus Campus, Cavite City\n\nIn partial fulfillment\nof the requirement for the degree of\nBachelor of Science in Computer Science\n\nSALES, MERLIN MIGUEL C.\nDE JUAN, MARTIENE ANN\nPEREZ, ACE J.\n\nJuly 2023', 'approved', '2025-05-29 19:17:07', '2025-05-29 19:17:25', NULL, 5, NULL, 1, 1),
(371, 8, 'c:\\Users\\USER\\Documents\\GitHub\\CSThesisHub\\flask_auth_app\\static\\uploads\\submissions\\371_LOST_CATS_AND_DOGS.pdf', '2023_LOST_CATS_AND_DOGS.jpg', 'LOST CATS AND DOGS REPORTING AND REGISTRATION SYSTEM FOR IMUS ANIMAL POUND WITH BREED IDENTIFIER', 'SALES MERLIN MIGUEL C, DE JUAN MARTIENE ANN, PEREZ ACE J', 'Cavite State University - Imus Campus', '2023', NULL, 'LOST CATS AND DOGS REPORTING AND REGISTRATION SYSTEM FOR IMUS\nANIMAL POUND WITH BREED IDENTIFIER\n\nAn Undergraduate Thesis\nSubmitted to the Faculty of the\nDepartment of Computer Studies\nCavite State University\nImus Campus, Cavite City\n\nIn partial fulfillment\nof the requirement for the degree of\nBachelor of Science in Computer Science\n\nSALES, MERLIN MIGUEL C.\nDE JUAN, MARTIENE ANN\nPEREZ, ACE J.\n\nJuly 2023', 'approved', '2025-05-29 19:17:44', '2025-05-29 19:18:32', NULL, 5, NULL, 1, 1),
(372, 8, 'c:\\Users\\USER\\Documents\\GitHub\\CSThesisHub\\flask_auth_app\\static\\uploads\\submissions\\372_SUBSURFACE_IRRIGATION_SYSTEM.pdf', '2023_Subsurface_Irrigation_System_for_SAUR_FARM_Using_Treshhold_Algo.jpg', 'SUBSURFACE IRRIGATION SYSTEM FOR SAUR FARM USING THRESHOLD ALGORITHM', 'CAPUA, KYLE ANTHONY D, CARRASCO CARLOS MIGUEL I, OLAIRA ZAMIR TIMOTHY V', 'Cavite State University - Imus Campus', '2023', NULL, 'SUBSURFACE IRRIGATION SYSTEM FOR SAUR FARM USING\nTHRESHOLD ALGORITHM\n\nUndergraduate Thesis\nSubmitted to the faculty of the\nDepartment of Computer Studies\nCavite State University\nImus, Cavite\n\nIn partial fulfilment\nof the requirements for the degree\nBachelor of Science in Computer Science\n\nCAPUA, KYLE ANTHONY D.\nCARRASCO, CARLOS MIGUEL I.\nOLAIRA, ZAMIR TIMOTHY V.\nJuly 2023', 'approved', '2025-05-29 19:18:48', '2025-05-29 19:19:13', NULL, 5, NULL, 1, 1),
(373, 8, 'c:\\Users\\USER\\Documents\\GitHub\\CSThesisHub\\flask_auth_app\\static\\uploads\\submissions\\373_ENHANCING_WORKFORCE.pdf', '2024_ENHANCING_WORKFORCE_MANAGEMENT.jpg', 'ENHANCING WORKFORCE MANAGEMENT: IMPLEMENTING A DATA ANALYTICS DRIVEN EMPLOYMENT SYSTEM FOR PESO IMUS', 'ABUT RENZ MARK, ESPINEA PAUL CHRISTIAN, NEBRES JOHN MICHAEL', 'Cavite State University - Imus Campus', '2024', NULL, 'ENHANCING WORKFORCE MANAGEMENT: IMPLEMENTING A DATA\nANALYTICS DRIVEN EMPLOYMENT SYSTEM FOR PESO IMUS\n\nUndergraduate Thesis\nSubmitted to the Faculty of the\nDepartment of Computer Studies\nCavite State University - Imus Campus\nCity of Imus, Cavite\n\nIn partiat fulfillment of the\nRequirements for the degree\nBachelor Science in Computer Science\n\nABUT, RENZ MARK\nESPINEA, PAUL CHRISTIAN\nNEBRES, JOHN MICHAEL\nSeptember 2024', 'approved', '2025-05-29 19:19:34', '2025-05-29 19:20:11', NULL, 4, NULL, 1, 1),
(374, 8, 'c:\\Users\\USER\\Documents\\GitHub\\CSThesisHub\\flask_auth_app\\static\\uploads\\submissions\\374_AN_ONLINE_VOTING_SYSTEM_FOR_CAVITE_STATE_UNIVERSITY.pdf', 'AN_ONLINE_VOTING_SYSTEM.jpg', 'AN ONLINE VOTING SYSTEM FOR CAVITE STATE UNIVERSITY IMUS', 'CHRISTIAN ANDREY TURLA SALONOY, DIANA ALTAREJOS GUTIERREZ, ERICA SHEINA LANSANG BERTULFO', 'Cavite State University - Imus Campus', '2022', NULL, 'AN ONLINE VOTING SYSTEM FOR CAVITE STATE UNIVERSITY IMUS CAMPUS\n\nUndergraduate Thesis\nSubmitted to the Faculty of the\nDepartment of Computer Studies\nCavite State University — Imus Campus\n\nIn partial fulfillment of the\nRequirements for the degree\nBachelor of Science in Computer Science\n\nCHRISTIAN ANDREY TURLA SALONOY\nDIANA ALTAREJOS GUTIERREZ\nERICA SHEINA LANSANG BERTULFO\n\nJune 2022', 'approved', '2025-05-29 19:20:32', '2025-05-29 19:21:31', NULL, 5, NULL, 1, 1),
(375, 8, 'c:\\Users\\USER\\Documents\\GitHub\\CSThesisHub\\flask_auth_app\\static\\uploads\\submissions\\375_BARANGAY_ALAPAN-2A.pdf', 'BARANGAY_ALAPAN-2A.jpg', 'BARANGAY ALAPAN - 2A, IMUS CITY, CAVITE HEALTH CENTER SYSTEM WITH DATA ANALYTICS SYSTEM AND EMAIL NOTIFICATION', 'CEREZO JOVANY T, MAGDUA JEZEL A, MARASIGAN KATRINA ALEXA Q', 'Cavite State University - Imus Campus', '2022', NULL, 'BARANGAY ALAPAN - 2A, IMUS CITY, CAVITE HEALTH\nCENTER SYSTEM WITH DATA ANALYTICS SYSTEM AND\nEMAIL NOTIFICATION\n\nUndergraduate Thesis\nsubmitted to the faculty of the\nDepartment of Computer Studies\nCavite State University\nImus, Cavite\n\nIn partial fulfillment\nof the requirements for the degree\nBachelor of Science in Computer Science\n\nCEREZO, JOVANY T.\nMAGDUA, JEZEL A.\nMARASIGAN, KATRINA ALEXA Q.\nJune 2022', 'approved', '2025-05-29 19:21:50', '2025-05-29 19:22:29', NULL, 6, NULL, 1, 1),
(376, 8, 'c:\\Users\\USER\\Documents\\GitHub\\CSThesisHub\\flask_auth_app\\static\\uploads\\submissions\\376_CLOUD_BASED_INVENTORY_MANAGEMENT_SYSTEM_WITH_QR_CODE_FOR_SUPPLIES_OFFICE_IN_CAVITE_STATE_UNIVERSITY_IMUS_ENHANCING_EFFICIENCY_ANF_ACCESSIBILITY.pdf', 'CLOUD-BASED_INVENTORY_MANAGEMENT_SYSTEM.jpg', 'CLOUD-BASED INVENTORY MANAGEMENT SYSTEM WITH QR CODE FOR SUPPLIES OFFICE IN CAVITE STATE UNIVERSITY-IMUS: ENHANCING EFFICIENCY AND ACCESSIBILITY', 'MARIA CRISANTA P BORJA, JOVELYN A DELA CRUZ, KEICE V ZOLETA', 'Cavite State University - Imus Campus', '2024', NULL, 'CLOUD-BASED INVENTORY MANAGEMENT SYSTEM WITH QR CODE FOR\nSUPPLIES OFFICE IN CAVITE STATE UNIVERSITY-IMUS: ENHANCING\nEFFICIENCY AND ACCESSIBILITY\n\nUndergraduate Thesis\n” Submitted to the Faculty of the\nDepartment of Computer Studies\nCavite State University\nImus, Cavite\n\nIn partial fulfiliment\nof the requirements for the degree\nBachelor of Science in Computer Science\n\nMARIA CRISANTA P. BORJA\nJOVELYN A, DELA CRUZ\nKEICE V. ZOLETA\nSeptember 2024', 'approved', '2025-05-29 19:22:42', '2025-05-29 19:23:23', NULL, 7, NULL, 1, 1),
(377, 8, 'c:\\Users\\USER\\Documents\\GitHub\\CSThesisHub\\flask_auth_app\\static\\uploads\\submissions\\377_ENHANCING_VIRTUAL_CONFERENCING.pdf', 'ENHANCING_VIRTUAL_CONFERENCING.jpg', 'ENHANCING VIRTUAL CONFERENCING: THE INTEGRATION OF GAMIFICATION IN AN INTERACTIVE 3D SPACE ENVIRONMENT', 'CHARNELLE P ESTRIBOR, FRANZ EMSLEY L MANIBOG, KERCHEI C PALEN', 'Cavite State University - Imus Campus', '2024', NULL, 'ENHANCING VIRTUAL CONFERENCING: THE INTEGRATION\nOF GAMIFICATION IN AN INTERACTIVE\n3D SPACE ENVIRONMENT\n\nUndergraduate Thesis\nSubmitted to the Facultyof the\nDepartment of Computer Studies\nCavite State University\nImus City, Cavite\n\nIn partial fulfillment\nOf the requirements for the degree\nBachelor of Science in Computer Science\n\nCHARNELLE P. ESTRIBOR\nFRANZ EMSLEY L. MANIBOG\nKERCHE! C. PALEN\nSeptember 2024', 'approved', '2025-05-29 19:23:38', '2025-05-29 19:24:07', NULL, 5, NULL, 1, 1),
(378, 8, 'c:\\Users\\USER\\Documents\\GitHub\\CSThesisHub\\flask_auth_app\\static\\uploads\\submissions\\378_GAME_SIMULATION_FOR_ALTERNATIVE_LEARNING.pdf', 'GAME_SIMULATION_FOR_ALTERNATIVE_LEARNING.jpg', 'GAME SIMULATION FOR ALTERNATIVE LEARNING IN BASIC PYTHON FOR CS AND IT STUDENTS OF CAVITE STATE UNIVERSITY - IMUS CAMPUS', 'GARGAR GLENN ACE LIMWELL B, GERVACIO RONNETH JOY V, TOPACIO KHAIZTER VASH N', 'Cavite State University - Imus Campus', '2023', NULL, 'GAME SIMULATION FOR ALTERNATIVE LEARNING IN BASIC PYTHON FOR\nCS AND IT STUDENTS OF CAVITE STATE UNIVERSITY - IMUS CAMPUS\n\nAn Undergraduate Thesis\nSubmitted to the Faculty of the\nDepartment of Computer Studies\nCavite State University\nImus Campus, Cavite\n\nIn partial fulfillment\nof the requirements for the degree of\nBachelor of Science in Computer Science\n\nGARGAR, GLENN ACE LIMWELL B.\nGERVACIO, RONNETH JOY V.\nTOPACIO, KHAIZTER VASH N.\n\nJuly 2023', 'approved', '2025-05-29 19:24:18', '2025-05-29 19:25:05', NULL, 4, NULL, 1, 1),
(379, 8, 'c:\\Users\\USER\\Documents\\GitHub\\CSThesisHub\\flask_auth_app\\static\\uploads\\submissions\\379_MOBILE_EXAMINATION_CHECKER.pdf', 'MOBILE_EXAMINATION_CHECKER.jpg', 'MOBILE EXAMINATION CHECKER APPLICATION FOR CAVITE STATE UNIVERSITY - IMUS CAMPUS', 'JEIGO M RUBIS, RENZO A OMPAD, CHRISTINNE LOR P RAMOS', 'Cavite State University - Imus Campus', '2022', NULL, 'MOBILE EXAMINATION CHECKER APPLICATION FOR\nCAVITE STATE UNIVERSITY - IMUS CAMPUS\n\nAn Undergraduate Thesis\nSubmitted to the Department of the Computer Studies\nCavite State University- mus Campus\nCity of Imus, Cavite\n\nIn partial fulfillment\nof the requirements for the degree\nBachelor of Science in Computer Science\n\nJEIGO M. RUBIS\nRENZO A. OMPAD\nCHRISTINNE LOR P. RAMOS\nJune, 2022', 'approved', '2025-05-29 19:25:24', '2025-05-29 19:25:51', NULL, 5, NULL, 1, 1),
(380, 8, 'c:\\Users\\USER\\Documents\\GitHub\\CSThesisHub\\flask_auth_app\\static\\uploads\\submissions\\380_ONLINE_CLASS_ATTENDANCE_AND_RECITATION_MONITORING_SYSTEM.pdf', 'ONLINE_CLASS_ATTENDANCE_AND_RECITATIONMON.jpg', 'ONLINE CLASS ATTENDANCE AND RECITATION MONITORING SYSTEM', 'SOMIDO ALJON, PAYOMO JERRICO O, ARMENTA JOHN AIVAN G', 'Cavite State University - Imus Campus', '2022', NULL, 'ONLINE CLASS ATTENDANCE AND RECITATION\nMONITORING SYSTEM\n\nA Capstone Project\nSubmitted to the faculty of\nDepartment of Computer Studies\nCavite State University - Imus Campus\nCavite\n\nIn partial fulfilment of the\nRequirements for the degree\nBachelor of Science in Computer Science\n\nArmenta, John Aivan G.\nPayomo, Jerrico O.\nSomido, Aljon\nJanuary 2022', 'approved', '2025-05-29 19:26:36', '2025-05-29 19:27:14', NULL, 4, NULL, 1, 1),
(381, 8, 'c:\\Users\\USER\\Documents\\GitHub\\CSThesisHub\\flask_auth_app\\static\\uploads\\submissions\\381_SELF_ASSESSMENT_INTEGRATION_OF_PROGRAMMING_PROFICIENCY_THROUGH_MOBILE_GAME_FOR_DCS_STUDENTS.pdf', 'SELF-ASSESSMENT_INTEGRATION_OF_PROGRAMMING_PROFICIENCY.jpg', 'SELF-ASSESSMENT INTEGRATION OF PROGRAMMING PROFICIENCY THROUGH MOBILE GAME FOR DCS STUDENTS  ', 'CARLO T CASTRO, PATRICK JAMES F FETIZANAN, RENZO C CRUZ', 'Cavite State University - Imus Campus', '2022', NULL, 'SELF-ASSESSMENT INTEGRATION OF PROGRAMMING\n\nPROFICIENCY THROUGH MOBILE GAME\nFOR DCS STUDENTS\n\nUndergraduate Thesis Manuscript\nSubmitted to the Faculty of the\nDepartment of Computer Studies\nCavite State University — Imus Campus\n\nCavite\n\nIn partial fulfillment of the\nRequirement for the degree\n\nBachelor of Science in Computer Science\n\nCARLO T. CASTRO\nPATRICK JAMES F. FETIZANAN\nRENZO C. CRUZ\nJune 2022', 'approved', '2025-05-29 19:27:24', '2025-05-29 19:27:50', NULL, 6, NULL, 1, 1),
(382, 8, 'c:\\Users\\USER\\Documents\\GitHub\\CSThesisHub\\flask_auth_app\\static\\uploads\\submissions\\WEB_BASED_CONTACT_TRACING_SYSTEM.pdf', 'WEB_BASED_CONTACT_TRACING_SYSTEM.pdf', 'Not Found', 'Not Found', 'Cavite State University - Imus Campus', 'Not ', NULL, 'CamScanner\n\n\nCamScanner\n\n\n', 'pending', '2025-06-05 17:53:48', '2025-06-05 17:53:48', NULL, NULL, NULL, 0, 0),
(383, 8, 'c:\\Users\\USER\\Documents\\GitHub\\CSThesisHub\\flask_auth_app\\static\\uploads\\submissions\\SUBSURFACE_IRRIGATION_SYSTEM.pdf', 'SUBSURFACE_IRRIGATION_SYSTEM.pdf', 'Not Found', 'Not Found', 'Cavite State University - Imus Campus', 'Not ', NULL, 'CamScanner\n\n\nCamScanner\n\n\n', 'pending', '2025-06-05 17:55:24', '2025-06-05 17:55:24', NULL, NULL, NULL, 0, 0),
(384, 8, 'c:\\Users\\USER\\Documents\\GitHub\\CSThesisHub\\flask_auth_app\\static\\uploads\\submissions\\SUBSURFACE_IRRIGATION_SYSTEM.pdf', 'SUBSURFACE_IRRIGATION_SYSTEM.pdf', 'Not Found', 'Not Found', 'Cavite State University - Imus Campus', 'Not ', NULL, 'CamScanner\n\n\nCamScanner\n\n\n', 'pending', '2025-06-05 17:59:16', '2025-06-05 17:59:16', NULL, NULL, NULL, 0, 0),
(385, 8, 'c:\\Users\\USER\\Documents\\GitHub\\CSThesisHub\\flask_auth_app\\static\\uploads\\submissions\\ENHANCING_WORKFORCE.pdf', 'ENHANCING_WORKFORCE.pdf', 'Not Found', 'Not Found', 'Cavite State University - Imus Campus', 'Not ', NULL, 'CamScanner\n\n\nCamScanner\n\n\n', 'pending', '2025-06-05 18:04:27', '2025-06-05 18:04:27', NULL, NULL, NULL, 0, 0),
(386, 8, 'c:\\Users\\USER\\Documents\\GitHub\\CSThesisHub\\flask_auth_app\\static\\uploads\\submissions\\GEOSPATIAL_IDENTIFICATION_OF_POVERTY_.pdf', 'GEOSPATIAL_IDENTIFICATION_OF_POVERTY_.pdf', 'Not Found', 'Not Found', 'Cavite State University - Imus Campus', 'Not ', NULL, 'CamScanner\n\nCamScanner\n\nCamScanner\n\nCamScanner\n\nCamScanner\n\nCamScanner\n\nCamScanner\n\nCamScanner\n\nCamScanner', 'pending', '2025-06-06 03:21:34', '2025-06-06 03:21:34', NULL, NULL, NULL, 0, 0),
(387, 8, 'c:\\Users\\USER\\Documents\\GitHub\\CSThesisHub\\flask_auth_app\\static\\uploads\\submissions\\FACIAL_RECOGNITION_FOR_PAYROLL_AND_ATTENDANCE.pdf', 'FACIAL_RECOGNITION_FOR_PAYROLL_AND_ATTENDANCE.pdf', 'Not Found', 'Not Found', 'Cavite State University - Imus Campus', 'Not ', NULL, 'CamScanner\nCamScanner\n', 'pending', '2025-06-06 03:25:46', '2025-06-06 03:25:46', NULL, NULL, NULL, 0, 0),
(388, 8, 'c:\\Users\\USER\\Documents\\GitHub\\CSThesisHub\\flask_auth_app\\static\\uploads\\submissions\\GEOSPATIAL_IDENTIFICATION_OF_POVERTY_.pdf', 'GEOSPATIAL_IDENTIFICATION_OF_POVERTY_.pdf', 'Not Found', 'Not Found', 'Cavite State University - Imus Campus', 'Not ', NULL, 'CamScanner\nCamScanner\n', 'pending', '2025-06-06 03:25:57', '2025-06-06 03:25:57', NULL, NULL, NULL, 0, 0),
(389, 8, 'c:\\Users\\USER\\Documents\\GitHub\\CSThesisHub\\flask_auth_app\\static\\uploads\\submissions\\MOBILE_MEDICINE.pdf', 'MOBILE_MEDICINE.pdf', 'Not Found', 'Not Found', 'Cavite State University - Imus Campus', 'Not ', NULL, 'CamScanner\n\n\nCamScanner\n\n\n', 'pending', '2025-06-06 03:27:48', '2025-06-06 03:27:48', NULL, NULL, NULL, 0, 0),
(390, 8, 'c:\\Users\\USER\\Documents\\GitHub\\CSThesisHub\\flask_auth_app\\static\\uploads\\submissions\\MOBILE_MEDICINE.pdf', 'MOBILE_MEDICINE.pdf', 'Not Found', 'Not Found', 'Cavite State University - Imus Campus', 'Not ', NULL, '', 'pending', '2025-06-06 03:37:20', '2025-06-06 03:37:20', NULL, NULL, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `thesis_versions`
--

CREATE TABLE `thesis_versions` (
  `id` int(11) NOT NULL,
  `thesis_id` int(11) NOT NULL,
  `edited_title` varchar(255) DEFAULT NULL,
  `edited_authors` text DEFAULT NULL,
  `edited_school` varchar(255) DEFAULT NULL,
  `edited_year_made` varchar(4) DEFAULT NULL,
  `edited_keywords` text DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `edited_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `thesis_versions`
--

INSERT INTO `thesis_versions` (`id`, `thesis_id`, `edited_title`, `edited_authors`, `edited_school`, `edited_year_made`, `edited_keywords`, `notes`, `edited_by`, `created_at`) VALUES
(1, 363, 'Not Found', 'Not Found', 'Cavite State University - Imus Campus', 'Not ', NULL, '', 8, '2025-05-29 19:11:41'),
(2, 364, 'Not Found', 'Not Found', 'Cavite State University - Imus Campus', 'Not ', NULL, '', 8, '2025-05-29 19:12:04'),
(3, 365, 'Not Found', 'Not Found', 'Cavite State University - Imus Campus', 'Not ', NULL, '', 8, '2025-05-29 19:12:42'),
(4, 366, 'GEOSPATIAL IDENTIFICATION OF POVERTY AREAS: MACHINE LEARNING APPROACH FOR DSWD IMUS', ' ROMMEL M. MACAPOBRE, NIRO S REGALADO', 'Cavite State University - Imus Campus', '2024', NULL, '', 8, '2025-05-29 19:13:23'),
(5, 367, 'GEOSPATIAL IDENTIFICATION OF POVERTY AREAS: MACHINE LEARNING APPROACH FOR DSWD IMUS', 'ROMMEL M. MACAPOBRE, NIRO S REGALADO', 'Cavite State University - Imus Campus', '2024', NULL, '', 8, '2025-05-29 19:14:12'),
(6, 368, 'CVSU IMUS ANDROID MAPPING APP: ENHANCING CAMPUS ACCESSIBILITY AND EFFICIENCY', 'ANDRES JOHN RYAN L, BERBASA SHAUN PRINCE L, JOROLAN VINCE LOUPER R', 'Cavite State University - Imus Campus', '2022', NULL, '', 8, '2025-05-29 19:15:48'),
(7, 369, 'GaPa: STUDENT GATE PASS INFORMATION SYSTEM USING RFID WITH METAL DETECTOR FOR CAVITE STATE UNIVERSITY - IMUS CAMPU', 'BORJA ANDREA MIRABELA D, MARTIN ELEINA JOELLE G, MEDALLA ALMIRA L', 'Cavite State University - Imus Campus', '2023', NULL, '', 8, '2025-05-29 19:16:38'),
(8, 370, 'LOST CATS AND DOGS REPORTING AND REGISTRATION SYSTEM FOR IMUS ANIMAL POUND WITH BREED IDENTIFIER', 'SALES MERLIN MIGUEL C, DE JUAN MARTIENE ANN, PEREZ ACE J', 'Cavite State University - Imus Campus', '2023', NULL, '', 8, '2025-05-29 19:17:25'),
(9, 371, 'LOST CATS AND DOGS REPORTING AND REGISTRATION SYSTEM FOR IMUS ANIMAL POUND WITH BREED IDENTIFIER', 'SALES MERLIN MIGUEL C, DE JUAN MARTIENE ANN, PEREZ ACE J', 'Cavite State University - Imus Campus', '2023', NULL, '', 8, '2025-05-29 19:18:32'),
(10, 372, 'SUBSURFACE IRRIGATION SYSTEM FOR SAUR FARM USING THRESHOLD ALGORITHM', 'CAPUA, KYLE ANTHONY D, CARRASCO CARLOS MIGUEL I, OLAIRA ZAMIR TIMOTHY V', 'Cavite State University - Imus Campus', '2023', NULL, '', 8, '2025-05-29 19:19:13'),
(11, 373, 'ENHANCING WORKFORCE MANAGEMENT: IMPLEMENTING A DATA ANALYTICS DRIVEN EMPLOYMENT SYSTEM FOR PESO IMUS', 'ABUT RENZ MARK, ESPINEA PAUL CHRISTIAN, NEBRES JOHN MICHAEL', 'Cavite State University - Imus Campus', '2024', NULL, '', 8, '2025-05-29 19:20:11'),
(12, 374, 'AN ONLINE VOTING SYSTEM FOR CAVITE STATE UNIVERSITY IMUS', 'CHRISTIAN ANDREY TURLA SALONOY, DIANA ALTAREJOS GUTIERREZ, ERICA SHEINA LANSANG BERTULFO', 'Cavite State University - Imus Campus', '2022', NULL, '', 8, '2025-05-29 19:21:31'),
(13, 375, 'BARANGAY ALAPAN - 2A, IMUS CITY, CAVITE HEALTH CENTER SYSTEM WITH DATA ANALYTICS SYSTEM AND EMAIL NOTIFICATION', 'CEREZO JOVANY T, MAGDUA JEZEL A, MARASIGAN KATRINA ALEXA Q', 'Cavite State University - Imus Campus', '2022', NULL, '', 8, '2025-05-29 19:22:29'),
(14, 376, 'CLOUD-BASED INVENTORY MANAGEMENT SYSTEM WITH QR CODE FOR SUPPLIES OFFICE IN CAVITE STATE UNIVERSITY-IMUS: ENHANCING EFFICIENCY AND ACCESSIBILITY', 'MARIA CRISANTA P BORJA, JOVELYN A DELA CRUZ, KEICE V ZOLETA', 'Cavite State University - Imus Campus', '2024', NULL, '', 8, '2025-05-29 19:23:23'),
(15, 377, 'ENHANCING VIRTUAL CONFERENCING: THE INTEGRATION OF GAMIFICATION IN AN INTERACTIVE 3D SPACE ENVIRONMENT', 'CHARNELLE P ESTRIBOR, FRANZ EMSLEY L MANIBOG, KERCHEI C PALEN', 'Cavite State University - Imus Campus', '2024', NULL, '', 8, '2025-05-29 19:24:07'),
(16, 378, 'GAME SIMULATION FOR ALTERNATIVE LEARNING IN BASIC PYTHON FOR CS AND IT STUDENTS OF CAVITE STATE UNIVERSITY - IMUS CAMPUS', 'GARGAR GLENN ACE LIMWELL B, GERVACIO RONNETH JOY V, TOPACIO KHAIZTER VASH N', 'Cavite State University - Imus Campus', '2023', NULL, '', 8, '2025-05-29 19:25:05'),
(17, 379, 'MOBILE EXAMINATION CHECKER APPLICATION FOR CAVITE STATE UNIVERSITY - IMUS CAMPUS', 'JEIGO M RUBIS, RENZO A OMPAD, CHRISTINNE LOR P RAMOS', 'Cavite State University - Imus Campus', '2022', NULL, '', 8, '2025-05-29 19:25:51'),
(18, 380, 'ONLINE CLASS ATTENDANCE AND RECITATION MONITORING SYSTEM', 'SOMIDO ALJON, PAYOMO JERRICO O, ARMENTA JOHN AIVAN G', 'Cavite State University - Imus Campus', '2022', NULL, '', 8, '2025-05-29 19:27:14'),
(19, 381, 'SELF-ASSESSMENT INTEGRATION OF PROGRAMMING PROFICIENCY THROUGH MOBILE GAME FOR DCS STUDENTS  ', 'CARLO T CASTRO, PATRICK JAMES F FETIZANAN, RENZO C CRUZ', 'Cavite State University - Imus Campus', '2022', NULL, '', 8, '2025-05-29 19:27:50');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(80) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('user','admin') NOT NULL DEFAULT 'user',
  `email` text NOT NULL,
  `is_verified` tinyint(1) DEFAULT 0,
  `verification_code` text DEFAULT NULL,
  `code_expires` datetime DEFAULT NULL,
  `google_id` varchar(255) DEFAULT NULL,
  `is_google_auth` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`, `email`, `is_verified`, `verification_code`, `code_expires`, `google_id`, `is_google_auth`) VALUES
(8, 'admin2025', 'scrypt:32768:8:1$ioJg56s33nLFUA2N$61c3ce9bbc863b712bc2ee697685f9dcdbb63688c4aedfc43a2a501fe0174c74bd77d59c8f78f740a0a69598889a2e399650481f3a403fe6b24118efaa91765f', 'admin', '', 1, NULL, NULL, NULL, 0),
(26, 'ryanchristian.robles', 'scrypt:32768:8:1$QsPFdGbREw5c2SSp$9bfd2e5ce6190b9010ed06301ecf78f9a2df6bd3a32cfd295c77e2a494922958fb0178fbefc2d17e392eed3689c5013c6a882965722cdf1a24e3ccff73b59631', 'user', 'ryanchristian.robles@cvsu.edu.ph', 1, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_bookmarks`
--

CREATE TABLE `user_bookmarks` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `thesis_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_view_history`
--

CREATE TABLE `user_view_history` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `thesis_id` int(11) NOT NULL,
  `viewed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_view_history`
--

INSERT INTO `user_view_history` (`id`, `user_id`, `thesis_id`, `viewed_at`) VALUES
(48, 8, 101, '2025-05-29 19:19:16'),
(49, 8, 100, '2025-05-29 19:19:19'),
(50, 8, 98, '2025-05-29 19:19:21'),
(51, 8, 103, '2025-05-29 19:21:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_action_history`
--
ALTER TABLE `admin_action_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `published_theses`
--
ALTER TABLE `published_theses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `submission_id` (`submission_id`),
  ADD KEY `published_by` (`published_by`);
ALTER TABLE `published_theses` ADD FULLTEXT KEY `ft_title` (`title`);
ALTER TABLE `published_theses` ADD FULLTEXT KEY `ft_authors` (`authors`);
ALTER TABLE `published_theses` ADD FULLTEXT KEY `ft_keywords` (`keywords`);

--
-- Indexes for table `thesis_categories`
--
ALTER TABLE `thesis_categories`
  ADD PRIMARY KEY (`thesis_id`,`category_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `thesis_pages`
--
ALTER TABLE `thesis_pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `thesis_id` (`thesis_id`);
ALTER TABLE `thesis_pages` ADD FULLTEXT KEY `ft_page_text` (`page_text`);
ALTER TABLE `thesis_pages` ADD FULLTEXT KEY `page_text` (`page_text`);

--
-- Indexes for table `thesis_submissions`
--
ALTER TABLE `thesis_submissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `thesis_versions`
--
ALTER TABLE `thesis_versions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `thesis_id` (`thesis_id`),
  ADD KEY `edited_by` (`edited_by`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `user_bookmarks`
--
ALTER TABLE `user_bookmarks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_bookmark` (`user_id`,`thesis_id`),
  ADD KEY `thesis_id` (`thesis_id`);

--
-- Indexes for table `user_view_history`
--
ALTER TABLE `user_view_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `thesis_id` (`thesis_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_action_history`
--
ALTER TABLE `admin_action_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `published_theses`
--
ALTER TABLE `published_theses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `thesis_pages`
--
ALTER TABLE `thesis_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `thesis_submissions`
--
ALTER TABLE `thesis_submissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=391;

--
-- AUTO_INCREMENT for table `thesis_versions`
--
ALTER TABLE `thesis_versions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `user_bookmarks`
--
ALTER TABLE `user_bookmarks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_view_history`
--
ALTER TABLE `user_view_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_action_history`
--
ALTER TABLE `admin_action_history`
  ADD CONSTRAINT `admin_action_history_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `published_theses`
--
ALTER TABLE `published_theses`
  ADD CONSTRAINT `fk_published_submission` FOREIGN KEY (`submission_id`) REFERENCES `thesis_submissions` (`id`),
  ADD CONSTRAINT `published_theses_ibfk_1` FOREIGN KEY (`submission_id`) REFERENCES `thesis_submissions` (`id`),
  ADD CONSTRAINT `published_theses_ibfk_2` FOREIGN KEY (`published_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `thesis_categories`
--
ALTER TABLE `thesis_categories`
  ADD CONSTRAINT `thesis_categories_ibfk_1` FOREIGN KEY (`thesis_id`) REFERENCES `published_theses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `thesis_categories_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `thesis_pages`
--
ALTER TABLE `thesis_pages`
  ADD CONSTRAINT `thesis_pages_ibfk_1` FOREIGN KEY (`thesis_id`) REFERENCES `published_theses` (`id`);

--
-- Constraints for table `thesis_submissions`
--
ALTER TABLE `thesis_submissions`
  ADD CONSTRAINT `thesis_submissions_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `thesis_versions`
--
ALTER TABLE `thesis_versions`
  ADD CONSTRAINT `thesis_versions_ibfk_2` FOREIGN KEY (`edited_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `user_bookmarks`
--
ALTER TABLE `user_bookmarks`
  ADD CONSTRAINT `user_bookmarks_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_bookmarks_ibfk_2` FOREIGN KEY (`thesis_id`) REFERENCES `published_theses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_view_history`
--
ALTER TABLE `user_view_history`
  ADD CONSTRAINT `user_view_history_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_view_history_ibfk_2` FOREIGN KEY (`thesis_id`) REFERENCES `published_theses` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
