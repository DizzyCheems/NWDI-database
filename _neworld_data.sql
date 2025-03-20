-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2025 at 04:00 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `	neworld_data`
--

-- --------------------------------------------------------

--
-- Table structure for table `adjustment`
--

CREATE TABLE `adjustment` (
  `id` int(11) NOT NULL,
  `employee_id` varchar(255) NOT NULL,
  `company_id` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `adjustment_date` date DEFAULT '0001-01-01',
  `reason` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `remarks` text DEFAULT NULL,
  `target_cutoff` date DEFAULT '0001-01-01',
  `created_on` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adjustment`
--

INSERT INTO `adjustment` (`id`, `employee_id`, `company_id`, `amount`, `adjustment_date`, `reason`, `created_at`, `updated_at`, `remarks`, `target_cutoff`, `created_on`) VALUES
(5, '30517', 1, 100.00, '2001-01-01', NULL, '2024-12-11 13:15:55', '2024-12-19 06:14:56', 'ag', '2001-01-01', '2024-12-11 13:15:55'),
(6, '4', 1, 6000.00, '2001-01-01', NULL, '2024-12-13 01:19:15', '2024-12-19 06:15:04', '123', '2001-01-01', '2024-12-13 01:19:15'),
(9, '4C-0009', 1, 4.00, '0001-01-01', NULL, '2024-12-19 07:40:49', '2024-12-19 07:40:49', 'sf', '2024-06-15', '2024-12-19 07:40:49'),
(10, '4C-0009', 1, 1.00, '0001-01-01', NULL, '2024-12-19 17:26:02', '2024-12-19 17:26:02', 'w', '2024-06-30', '2024-12-19 17:26:02');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `user_role` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `company_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `firstname`, `lastname`, `photo`, `user_role`, `status`, `company_id`, `branch_id`, `created_on`) VALUES
(1, 'system_admin', 'password', 'System', 'Admin', 'employee.png', 'system_admin', 'Active', 1, 1, '2022-12-05'),
(2, 'hr_admin', 'password', 'HR', 'Admin', 'employee.png', 'hr_admin', 'Active', 1, 1, '2022-12-05'),
(3, 'hr_personnel', '1234', 'HR', 'Personnel', 'girl.jpg', 'hr_personnel', 'Active', 1, 1, '2022-12-06'),
(4, '30517', 'password', 'Maria Crisser', 'Abad', 'HR.png', 'employee', 'Active', 1, 1, '2023-06-29'),
(5, '4C-0009', 'test1234', 'Raphaela', 'Matias', '', 'employee', 'Active', 1, 1, '2024-04-08'),
(6, '4C-00010', 'test1234', 'Mariecor', 'Deliverio', '', 'manager', 'Active', 1, 1, '2024-04-08'),
(7, 'supervisor', 'abiva', 'Ronnie', 'Pilarca', '', 'supervisor', 'Active', 1, 1, '2024-04-29'),
(8, '15312', 'abiva123', 'RAPHAEL', 'CRISTOBAL', '', 'employee', 'Active', 1, 0, '2024-06-11'),
(10, 'supervisor', 'pass123', 'Supervisor', 'Supervisor', 'employee.png', 'supervisor', 'Active', 1, 1, '2024-12-16'),
(13, 'finance', 'pass123', 'Ian', 'Sangano', 'finance.png', 'finance', 'Active', 1, 1, '2024-12-21'),
(14, 'T001', '123456', 'Juan', 'Cruz', '', 'hr_admin', 'Active', 1, 1, '2025-02-05'),
(15, 'test3', 'password', 'Test1', 'Test2', '', 'system_admin', 'Active', 1, 1, '2025-02-21');

-- --------------------------------------------------------

--
-- Table structure for table `announcement`
--

CREATE TABLE `announcement` (
  `id` int(11) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` varchar(500) NOT NULL,
  `company_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `creation_date` date NOT NULL,
  `check_status` varchar(11) DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `announcement`
--

INSERT INTO `announcement` (`id`, `subject`, `message`, `company_id`, `branch_id`, `creation_date`, `check_status`) VALUES
(1, 'HRIS Update', 'Testing ongoing', 1, 1, '2024-04-15', NULL),
(2, 'HRIS Update', 'test', 1, 1, '2024-04-23', NULL),
(3, 'HRIS Update As of April 23', 'test', 1, 1, '2024-04-23', 'yes'),
(4, 'Test', 'Test', 1, 1, '2024-04-23', NULL),
(5, 'HRIS Update', 'test', 1, 1, '2024-08-03', NULL),
(6, 'HR Test', 'Test', 1, 1, '2024-08-04', NULL),
(7, 'Software Update', 'Changes Apply', 1, 1, '2024-12-24', 'yes'),
(8, 'HH', 'ss', 1, 1, '2024-12-24', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `approval`
--

CREATE TABLE `approval` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL DEFAULT 0,
  `aid` int(11) NOT NULL DEFAULT 0,
  `employee_id` varchar(15) NOT NULL,
  `name` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `rdate` date NOT NULL,
  `description` varchar(100) NOT NULL,
  `days_hours` varchar(100) NOT NULL DEFAULT 'N.A.',
  `leavetype` varchar(100) NOT NULL DEFAULT 'N.A.',
  `availablebalance` double NOT NULL DEFAULT 0,
  `date_set` date NOT NULL DEFAULT '0001-01-01',
  `numofdays` varchar(100) NOT NULL DEFAULT 'N.A.',
  `timein` time NOT NULL DEFAULT '00:00:00',
  `timeout` time NOT NULL DEFAULT '00:00:00',
  `ot_hr` double NOT NULL DEFAULT 0,
  `n_hr` double NOT NULL DEFAULT 0,
  `un_hr` double NOT NULL DEFAULT 0,
  `holid` varchar(100) NOT NULL DEFAULT 'N.A.',
  `old_sched` varchar(100) NOT NULL DEFAULT 'N.A.',
  `new_sched` varchar(100) NOT NULL DEFAULT 'N.A.',
  `shift_id` int(11) NOT NULL DEFAULT 0,
  `reason` varchar(100) NOT NULL,
  `company_id` int(11) NOT NULL,
  `approver1` varchar(100) NOT NULL,
  `approver2` varchar(100) NOT NULL,
  `proxyapprover1` varchar(100) NOT NULL,
  `proxyapprover2` varchar(100) NOT NULL,
  `is_id` int(11) NOT NULL,
  `approved_by` varchar(100) NOT NULL DEFAULT 'N.A.',
  `action_date` date NOT NULL,
  `action_time` time NOT NULL,
  `action` varchar(100) NOT NULL,
  `update_date` date NOT NULL,
  `update_time` time NOT NULL,
  `end_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `approval`
--

INSERT INTO `approval` (`id`, `uid`, `aid`, `employee_id`, `name`, `status`, `rdate`, `description`, `days_hours`, `leavetype`, `availablebalance`, `date_set`, `numofdays`, `timein`, `timeout`, `ot_hr`, `n_hr`, `un_hr`, `holid`, `old_sched`, `new_sched`, `shift_id`, `reason`, `company_id`, `approver1`, `approver2`, `proxyapprover1`, `proxyapprover2`, `is_id`, `approved_by`, `action_date`, `action_time`, `action`, `update_date`, `update_time`, `end_date`) VALUES
(1, 5, 0, '4C-0009', 'Raphaela Matias', 'Disapproved', '2024-04-10', 'Overtime Request', '11.17 Hours', '', 0, '2024-04-09', '', '09:00:00', '20:10:00', 11.17, 0, 0, '', '', '', 0, 'holiday - test', 1, '', '', '', '', 20, 'System Admin', '2024-04-10', '11:11:19', 'Create', '2024-12-19', '18:44:43', NULL),
(2, 5, 0, '4C-0009', 'Raphaela Matiass', 'Pending For Approval', '2024-04-10', 'Undertime Request', '7 Hours', '', 0, '2024-04-11', '', '09:00:00', '16:00:00', 0, 0, 7, '', '', 'gd', 0, 'holiday - test', 1, '', '', '', '', 20, '', '2024-04-10', '11:11:37', 'Create', '2024-12-16', '15:56:29', NULL),
(3, 5, 0, '4C-0009', 'Raphaela Matias', 'Disapproved', '2024-04-10', '0', '0', '', 0, '0000-00-00', '', '00:00:00', '00:00:00', 0, 0, 0, '', 'Fixed CWW 1 07:30:00-17:30:00', 'Gliding 8hrs 07:00:00-17:00:00', 4, 'testing', 1, '', '', '', '', 20, '', '2024-04-10', '20:11:51', 'Create', '2024-12-16', '16:14:06', NULL),
(4, 5, 0, '4C-0009', 'Raphaela Matias', 'Disapproved', '2024-04-10', 'Vacation Leave Request', '1 Day', 'Vacation Leave', 4, '2024-04-15', '1', '00:00:00', '00:00:00', 0, 0, 0, '', '', '', 0, 'test', 1, '', '', '', '', 20, 'System Admin', '2024-04-10', '12:16:47', 'Create', '2024-12-16', '16:14:00', NULL),
(5, 5, 0, '4C-0009', 'Raphaela Matias', 'Disapproved', '2024-04-11', 'Leave without pay', '5 Days', 'Vacation Leave', 0, '2024-04-11', '5', '00:00:00', '00:00:00', 0, 0, 0, '', '', '', 0, 'test', 1, '4C-00010', 'hr_admin', '', '', 20, 'HR Admin', '2024-04-11', '16:21:00', 'Create', '2024-12-18', '08:54:50', NULL),
(6, 5, 0, '4C-0009', 'Raphaela Matias', 'Approved', '2024-04-11', 'Overtime Request', 'N.A.', 'N.A.', 0, '2024-04-11', '', '09:00:00', '20:00:00', 11, 0, 0, '', '', '', 0, 'testing', 1, '4C-00010', 'hr_admin', '', '', 20, 'System Admin', '2024-04-11', '09:35:20', 'Create', '2025-03-01', '16:49:21', NULL),
(7, 5, 0, '4C-0009', 'Raphaela Matias', 'Pending For Approval', '2024-04-11', 'Undertime Request', '7 Hours', '', 0, '2024-04-11', '', '09:00:00', '16:00:00', 0, 0, 7, '', '', '', 0, 'testing', 1, '4C-00010', 'hr_admin', '', '', 20, 'Mariecor Deliverio', '2024-04-11', '09:37:12', 'Create', '2024-12-16', '15:56:29', NULL),
(8, 5, 0, '4C-0009', 'Raphaela Matias', 'Approved', '2024-04-11', 'Change Work Schedule Request', '0', '', 0, '0000-00-00', '', '00:00:00', '00:00:00', 0, 0, 0, '', 'Fixed CWW 1 07:30:00-17:30:00', 'Morning Shift 00:00:00-00:00:00', 4, 'testing', 1, '4C-00010', 'hr_admin', '', '', 20, 'System Admin', '2024-04-11', '18:37:27', 'Create', '2024-12-16', '15:56:29', NULL),
(9, 5, 0, '4C-0009', 'Raphaela Matias', 'Pending For Approval', '2024-04-14', 'Undertime Request', '5.85 Hours', '', 0, '2024-04-12', '', '09:09:00', '15:00:00', 0, 0, 5.85, '', '', '', 0, 'test', 1, '4C-00010', 'hr_admin', '', '', 20, 'HR Admin', '2024-04-14', '10:17:03', 'Create', '2024-12-16', '15:56:29', NULL),
(10, 5, 0, '4C-0009', 'Raphaela Matias', 'Approved', '2024-04-15', 'Personal Leave Request', '2 Days', 'Personal Leave', 8, '2024-04-23', '2', '00:00:00', '00:00:00', 0, 0, 0, '', '', '', 0, 'test', 1, '4C-00010', 'hr_admin', '', '', 20, 'Mariecor Deliverio', '2024-04-15', '09:55:07', 'Create', '2024-12-16', '16:09:49', NULL),
(11, 5, 0, '4C-0009', 'Raphaela Matias', 'Approved', '2024-04-15', 'N.A.', 'N.A.', 'N.A.', 0, '2024-04-15', '', '09:00:00', '21:00:00', 12, 0, 0, '', '', '', 0, 'test', 1, '4C-00010', 'hr_admin', '', '', 20, 'Mariecor Deliverio', '2024-04-15', '09:55:29', 'Create', '2024-12-16', '15:56:29', NULL),
(12, 5, 0, '4C-0009', 'Raphaela Matias', 'Pending For Approval', '2024-04-15', 'Undertime Request', '6 Hours', '', 0, '2024-04-11', '', '09:00:00', '15:00:00', 0, 0, 6, '', '', '', 0, 'test', 1, '4C-00010', 'hr_admin', '', '', 20, 'Mariecor Deliverio', '2024-04-15', '09:55:52', 'Create', '2024-12-16', '15:56:29', NULL),
(13, 5, 0, '4C-0009', 'Raphaela Matias', 'Approved', '2024-04-15', 'Change Work Schedule Request', '0', '', 0, '0000-00-00', '', '00:00:00', '00:00:00', 0, 0, 0, '', 'Gliding 8hrs 07:00:00-17:00:00', '', 3, 'test', 1, '4C-00010', 'hr_admin', '', '', 20, 'Mariecor Deliverio', '2024-04-15', '18:56:00', 'Create', '2024-12-16', '15:56:29', NULL),
(14, 6, 0, '4C-00010', 'Mariecor Deliverio', 'Approved', '2024-04-16', 'Vacation Leave Request', '1 Day', 'Vacation Leave', 9, '2024-04-23', '1', '00:00:00', '00:00:00', 0, 0, 0, '', '', '', 0, 'test', 1, '4C-00010', 'hr_admin', '', '', 1, 'HR Admin', '2024-04-16', '15:15:36', 'Create', '2024-12-16', '15:56:29', NULL),
(15, 6, 0, '4C-00010', 'Mariecor Deliverio', 'Approved', '2024-04-16', 'Overtime Request', '11 Hours', '', 0, '2024-04-15', '', '09:00:00', '20:00:00', 11, 0, 0, '', '', '', 0, 'test', 1, '4C-00010', 'hr_admin', '', '', 1, 'HR Admin', '2024-04-16', '15:28:38', 'Create', '2024-12-16', '15:56:29', NULL),
(16, 6, 0, '4C-00010', 'Mariecor Deliverio', 'Approved', '2024-04-16', 'Undertime Request', '6 Hours', '', 0, '2024-04-12', '', '09:00:00', '15:00:00', 0, 0, 6, '', '', 'lol', 0, 'test', 1, '4C-00010', 'hr_admin', '', '', 1, 'HR Admin', '2024-04-16', '15:29:10', 'Create', '2024-12-16', '15:56:29', NULL),
(17, 5, 0, '4C-0009', 'Raphaela Matias', 'Approved', '2024-04-22', 'Personal Leave Request', '1 Day', 'Personal Leave', 7, '2024-05-02', '1', '00:00:00', '00:00:00', 0, 0, 0, '', '', '', 0, 'test', 1, '4C-00010', 'hr_admin', '', '', 20, 'Mariecor Deliverio', '2024-04-22', '14:03:55', 'Create', '2024-12-16', '16:35:43', NULL),
(18, 5, 0, '4C-0009', 'Raphaela Matias', 'Approved', '2024-04-22', 'N.A.', 'N.A.', 'N.A.', 0, '2024-04-22', '', '09:00:00', '22:00:00', 13, 0, 0, '', '', '', 0, 'test', 1, '4C-00010', 'hr_admin', '', '', 20, 'Mariecor Deliverio', '2024-04-22', '14:04:14', 'Create', '2024-12-16', '15:56:29', NULL),
(19, 5, 0, '4C-0009', 'Raphaela Matias', 'Pending For Approval', '2024-04-22', 'Undertime Request', '7 Hours', '', 0, '2024-04-23', '', '09:00:00', '16:00:00', 0, 0, 7, '', '', '', 0, 'test', 1, '4C-00010', 'hr_admin', '', '', 20, 'Mariecor Deliverio', '2024-04-22', '14:04:33', 'Create', '2024-12-16', '15:56:29', NULL),
(20, 5, 0, '4C-0009', 'Raphaela Matias', 'Approved', '2024-04-22', 'Change Work Schedule Request', '0', '', 0, '0000-00-00', '', '00:00:00', '00:00:00', 0, 0, 0, '', 'Flexi WW 00:00:00-23:59:00', 'Reg 8hrs Shift 1 07:00:00-16:00:00', 6, 'test', 1, '4C-00010', 'hr_admin', '', '', 20, 'Mariecor Deliverio', '2024-04-22', '23:04:45', 'Create', '2024-12-16', '15:56:29', NULL),
(21, 0, 30368, '4C-0009', 'Raphaela Matias', 'Pending For Approval', '2024-08-02', 'Time-in / Time-out Request', '', '', 0, '2024-07-11', '', '14:29:03', '00:00:00', 0, 0, 0, '', '', '', 6, 'Official Business', 1, '4C-00010', 'hr_admin', '', '', 0, '', '2024-08-02', '21:16:54', 'Update', '2024-12-16', '15:56:29', NULL),
(22, 0, 30368, '4C-0009', 'Raphaela Matias', 'Pending For Approval', '2024-08-02', 'Time-in / Time-out Request', '', '', 0, '2024-07-11', '', '14:29:03', '00:00:00', 0, 0, 0, '', '', '', 6, 'Official Business', 1, '4C-00010', 'hr_admin', '', '', 0, '', '2024-08-02', '21:16:55', 'Update', '2024-12-16', '15:56:29', NULL),
(23, 0, 30368, '4C-0009', 'Raphaela Matias', 'Pending For Approval', '2024-08-02', 'Time-in / Time-out Request', '', '', 0, '2024-07-11', '', '14:29:03', '00:00:00', 0, 0, 0, '', '', '', 6, 'Official Business', 1, '4C-00010', 'hr_admin', '', '', 0, 'HR Admin', '2024-08-02', '21:16:56', 'Update', '2024-12-16', '15:56:29', NULL),
(24, 5, 0, '4C-0009', 'Raphaela Matias', 'Pending For Approval', '2024-08-02', 'Vacation Leave Request', '1 Day', 'Vacation Leave', 6, '2024-08-07', '1', '00:00:00', '00:00:00', 0, 0, 0, '', '', '', 0, 'testing ', 1, '4C-00010', 'hr_admin', '', '', 20, 'Mariecor Deliverio', '2024-08-02', '12:19:09', 'Create', '2024-12-16', '15:56:29', NULL),
(25, 5, 0, '4C-0009', 'Raphaela Matias', 'Approved', '2024-08-02', 'N.A.', 'N.A.', 'N.A.', 0, '2024-08-03', '', '09:00:00', '18:00:00', 9, 0, 0, '', '', '', 0, 'test ', 1, '4C-00010', 'hr_admin', '', '', 20, 'Mariecor Deliverio', '2024-08-02', '12:21:30', 'Create', '2024-12-16', '15:56:29', NULL),
(26, 7, 0, '1102', 'Ronnie Pilarca', 'Approved', '2024-09-19', 'Overtime Request', '4 Hours', '', 0, '2024-09-20', '', '11:15:00', '15:15:00', 4, 0, 0, '', '', '', 0, 'x', 1, '', '', '', '', 1, '', '2024-09-19', '11:15:49', 'Create', '2024-12-16', '15:56:29', NULL),
(27, 1, 0, 'system_admin', 'System Admin', 'Approved', '2024-12-12', '7', '0', '', 0, '0000-00-00', '', '00:00:00', '00:00:00', 0, 0, 0, '', 'Gliding CWW 06:30:00-18:00:00', 'Flexi WW 00:00:00-23:59:00', 3, 'sf', 1, '4C-00010', 'hr_admin', '', '', 0, '', '2024-12-12', '11:28:44', 'Create', '2024-12-16', '15:56:29', NULL),
(28, 1, 0, 'system_admin', 'System Admin', 'Approved', '2024-12-12', '7', '0', '', 0, '0000-00-00', '', '00:00:00', '00:00:00', 0, 0, 0, '', 'Gliding CWW 06:30:00-18:00:00', 'Fixed CWW 1 07:30:00-17:30:00', 1, 'Change Work Schedule Request', 1, '4C-00010', 'hr_admin', '', '', 0, '', '2024-12-12', '11:30:42', 'Create', '2024-12-16', '15:56:29', NULL),
(29, 0, 33915, 'system_admin', 'System Admin', 'Approved', '2024-12-13', 'Time-in / Time-out Request', '', '', 0, '2024-12-13', '', '08:56:47', '08:56:56', 0, 0, 0, '', '', '', 5, '`123', 1, '4C-00010', 'hr_admin', '', '', 0, '', '2024-12-13', '02:04:25', 'Update', '2024-12-16', '15:56:29', NULL),
(30, 1, 0, 'system_admin', 'System Admin', 'Approved', '2024-12-13', 'Change Work Schedule Request', '0', '', 0, '0000-00-00', '', '00:00:00', '00:00:00', 0, 0, 0, '', '2', 'Flexi WW 06:30:00-18:00:00', 2, '123', 1, '4C-00010', 'hr_admin', '', '', 0, 'System Admin', '2024-12-13', '02:04:41', 'Create', '2025-02-24', '14:51:02', NULL),
(31, 5, 0, '4C-0009', 'Raphaela Matias', 'Pending For Approval', '2024-12-13', 'Vacation Leave Request', '1 Day', 'Vacation Leave', 4, '2024-12-13', '1', '00:00:00', '00:00:00', 0, 0, 0, '', '', '', 0, 'Sick', 1, '', '', '', '', 20, '', '2024-12-13', '15:23:18', 'Create', '2024-12-16', '15:56:29', NULL),
(32, 5, 0, '4C-0009', 'Raphaela Matias', 'Approved', '2024-12-13', 'Break Request', '1 Day', 'Break', 50, '2024-12-13', '1', '00:00:00', '00:00:00', 0, 0, 0, '', '', '', 0, 'Breaktime', 1, '', '', '', '', 20, '', '2024-12-13', '15:32:26', 'Create', '2024-12-19', '13:19:04', NULL),
(33, 5, 0, '4C-0009', 'Raphaela Matias', 'Approved', '2024-12-14', 'Vacation Leave Request', '1 Day', 'Vacation Leave', 4, '2024-12-14', '1', '00:00:00', '00:00:00', 0, 0, 0, '', '', '', 0, 'Tired', 1, '', '', '', '', 20, '', '2024-12-14', '17:40:46', 'Create', '2024-12-19', '13:18:56', NULL),
(34, 0, 33769, 'system_admin', 'System Admin', 'Approved', '2024-12-18', 'Time-in / Time-out Request', '', '', 0, '2024-12-18', '', '18:58:58', '12:00:00', 0, 0, 0, '', '', '', 5, 'q', 1, '4C-00010', 'hr_admin', '', '', 0, 'HR Admin', '2024-12-18', '13:07:42', 'Update', '2024-12-18', '13:07:42', NULL),
(35, 0, 33772, 'hr_admin', 'HR Admin', 'Approved', '2024-12-18', 'Time-in / Time-out Request', 'N.A.', 'N.A.', 0, '2024-12-19', 'N.A.', '11:09:37', '11:12:36', 0, 0, 0, 'N.A.', 'N.A.', 'N.A.', 5, '-----', 1, '4C-00010', 'hr_admin', '', '', 0, 'HR Admin', '2024-12-18', '21:11:52', 'Update', '2024-12-18', '21:11:52', NULL),
(36, 0, 33772, 'hr_admin', 'HR Admin', 'Pending For Approval', '2024-12-18', 'Time-in / Time-out Request', 'N.A.', 'N.A.', 0, '2024-12-19', 'N.A.', '01:09:00', '02:12:00', 0, 0, 0, 'N.A.', 'N.A.', 'N.A.', 5, 'wOrk', 1, '4C-00010', 'hr_admin', '', '', 0, 'N.A.', '2024-12-18', '21:12:22', 'Update', '2024-12-18', '21:12:22', NULL),
(37, 0, 33772, 'hr_admin', 'HR Admin', 'Approved', '2024-12-18', 'Time-in / Time-out Request', 'N.A.', 'N.A.', 0, '2024-12-19', 'N.A.', '14:09:00', '11:12:36', 0, 0, 0, 'N.A.', 'N.A.', 'N.A.', 5, '-----', 1, '4C-00010', 'hr_admin', '', '', 0, 'HR Admin', '2024-12-18', '21:12:53', 'Update', '2024-12-18', '21:12:53', NULL),
(38, 1, 0, 'system_admin', 'System Admin', 'Approved', '2024-12-18', 'N.A.', 'N.A.', 'N.A.', 0, '2024-12-19', 'N.A.', '14:23:00', '15:23:00', 1, 0, 0, 'N.A.', 'N.A.', 'N.A.', 0, 'IU', 1, '4C-00010', 'hr_admin', '', '', 0, 'N.A.', '2024-12-18', '13:23:35', 'Create', '2024-12-18', '13:23:35', NULL),
(39, 1, 0, 'system_admin', 'System Admin', 'Approved', '2024-12-19', 'Change Work Schedule Request', '0', 'N.A.', 0, '0001-01-01', 'N.A.', '00:00:00', '00:00:00', 0, 0, 0, 'N.A.', 'Gliding 8hrs 07:00:00 17:00:00', 'Gliding 8hrs 07:00:00-17:00:00', 4, 'HH', 1, '4C-00010', 'hr_admin', '', '', 0, 'System Admin', '2024-12-19', '02:11:43', 'Create', '2025-02-25', '03:01:56', NULL),
(40, 1, 0, 'system_admin', 'System Admin', 'Approved', '2024-12-19', 'Change Work Schedule Request', '0', 'N.A.', 0, '0001-01-01', 'N.A.', '00:00:00', '00:00:00', 0, 0, 0, 'N.A.', 'Reg 8hrs Shift 2 07:00:00 17:19:00', 'Reg 8hrs Shift 2 07:00:00-17:19:00', 16, 'TR', 1, '4C-00010', 'hr_admin', '', '', 0, 'System Admin', '2024-12-19', '02:20:40', 'Create', '2025-02-25', '03:02:27', NULL),
(41, 0, 33778, 'system_admin', 'System Admin', 'Pending For Approval', '2024-12-19', 'Time-in / Time-out Request', 'N.A.', 'N.A.', 0, '2024-12-20', 'N.A.', '01:12:50', '01:13:02', 0, 0, 0, 'N.A.', 'N.A.', 'N.A.', 5, '-----', 1, '4C-00010', 'hr_admin', '', '', 0, 'N.A.', '2024-12-19', '09:15:45', 'Update', '2024-12-19', '09:15:45', NULL),
(42, 1, 0, 'system_admin', 'System Admin', 'Approved', '2024-12-19', 'N.A.', 'N.A.', 'N.A.', 0, '2024-12-20', 'N.A.', '08:00:00', '09:00:00', 1, 0, 0, 'N.A.', 'N.A.', 'HG', 0, '', 1, '4C-00010', 'hr_admin', '', '', 0, 'N.A.', '2024-12-19', '01:19:08', 'Create', '2024-12-19', '01:19:08', NULL),
(43, 0, 33778, 'system_admin', 'System Admin', 'Pending For Approval', '2024-12-19', 'Time-in / Time-out Request', 'N.A.', 'N.A.', 0, '2024-12-20', 'N.A.', '01:12:00', '01:13:00', 0, 0, 0, 'N.A.', 'N.A.', 'N.A.', 5, '-----', 1, '4C-00010', 'hr_admin', '', '', 0, 'N.A.', '2024-12-19', '23:36:32', 'Update', '2024-12-19', '23:36:32', NULL),
(44, 0, 33775, '31217', 'MARK CUMPA', 'Pending For Approval', '2024-12-19', 'Time-in / Time-out Request', 'N.A.', 'N.A.', 0, '2024-12-10', 'N.A.', '12:15:00', '12:15:00', 0, 0, 0, 'N.A.', 'N.A.', 'N.A.', 7, 'qJUY', 1, '', '', '', '', 0, 'N.A.', '2024-12-19', '23:59:13', 'Update', '2024-12-19', '23:59:13', NULL),
(45, 0, 33778, 'system_admin', 'System Admin', 'Pending For Approval', '2024-12-20', 'Time-in / Time-out Request', 'N.A.', 'N.A.', 0, '2024-12-20', 'N.A.', '01:12:50', '01:13:02', 0, 0, 0, 'N.A.', 'N.A.', 'N.A.', 5, 'ht', 1, '4C-00010', 'hr_admin', '', '', 0, 'N.A.', '2024-12-20', '00:03:48', 'Update', '2024-12-20', '00:03:48', NULL),
(46, 0, 33777, 'system_admin', 'System Admin', 'Pending For Approval', '2024-12-20', 'Time-in / Time-out Request', 'N.A.', 'N.A.', 0, '2024-12-19', 'N.A.', '15:39:43', '00:00:00', 0, 0, 0, 'N.A.', 'N.A.', 'N.A.', 5, 'ht', 1, '4C-00010', 'hr_admin', '', '', 0, 'N.A.', '2024-12-20', '00:03:54', 'Update', '2024-12-20', '00:03:54', NULL),
(47, 0, 33776, '4C-0009', 'Raphaela Matias', 'Pending For Approval', '2024-12-20', 'Time-in / Time-out Request', 'N.A.', 'N.A.', 0, '2024-12-03', 'N.A.', '13:45:00', '13:46:00', 0, 0, 0, 'N.A.', 'N.A.', 'N.A.', 6, 'bf', 1, '4C-00010', 'hr_admin', '', '', 0, 'N.A.', '2024-12-20', '00:04:14', 'Update', '2024-12-20', '00:04:14', NULL),
(48, 0, 33773, '30517', 'Maria Criser Abad', 'Pending For Approval', '2024-12-20', 'Time-in / Time-out Request', 'N.A.', 'N.A.', 0, '2024-12-01', 'N.A.', '11:45:00', '11:45:00', 0, 0, 0, 'N.A.', 'N.A.', 'N.A.', 3, 'yk', 1, '', '', '', '', 0, 'N.A.', '2024-12-20', '00:04:26', 'Update', '2024-12-20', '00:04:26', NULL),
(49, 0, 33774, 'supervisor', 'Ronnie Pilarca', 'Disapproved', '2024-12-20', 'Time-in / Time-out Request', 'N.A.', 'N.A.', 0, '2024-12-01', 'N.A.', '02:45:00', '11:45:00', 0, 0, 0, 'N.A.', 'N.A.', 'N.A.', 3, 'rf', 1, 'system_admin', 'system_admin', '', '', 0, 'N.A.', '2024-12-20', '00:05:57', 'Update', '2024-12-20', '00:05:57', NULL),
(50, 0, 33778, 'system_admin', 'System Admin', 'Approved', '2024-12-20', 'Time-in / Time-out Request', 'N.A.', 'N.A.', 0, '2024-12-20', 'N.A.', '01:12:50', '01:13:02', 0, 0, 0, 'N.A.', 'N.A.', 'N.A.', 5, 'uu', 1, '4C-00010', 'hr_admin', '', '', 0, 'N.A.', '2024-12-20', '00:06:33', 'Update', '2024-12-20', '00:06:33', NULL),
(51, 0, 33778, 'system_admin', 'System Admin', 'Disapproved', '2024-12-20', 'Time-in / Time-out Request', 'N.A.', 'N.A.', 0, '2024-12-20', 'N.A.', '01:12:50', '01:13:02', 0, 0, 0, 'N.A.', 'N.A.', 'N.A.', 5, 'mm', 1, '4C-00010', 'hr_admin', '', '', 0, 'N.A.', '2024-12-20', '00:06:41', 'Update', '2024-12-20', '00:06:41', NULL),
(67, 1, 1001, 'E1234', 'John Doe', 'Pending For Approval', '2024-01-01', 'Change Work Schedule Request', '8', 'Paid Leave', 10, '2024-01-01', '2', '08:00:00', '17:00:00', 2, 8, 0, 'N.A.', '9:00 AM - 5:00 PM', '9:00 AM - 5:00 PM', 1, 'Personal Reasons', 101, 'Jane Smith', 'Mike Johnson', 'Sarah Lee', 'Tom Wright', 1, 'System Admin', '0000-00-00', '00:00:00', 'Approved', '0000-00-00', '00:00:00', NULL),
(68, 2, 1002, 'E5678', 'Alice Cooper', 'Approved', '2024-01-10', 'Change Work Schedule Request', '6', 'Sick Leave', 5, '2024-01-10', '1', '09:00:00', '15:00:00', 1, 7, 1, 'N.A.', '9:00 AM - 3:00 PM', '9:00 AM - 3:00 PM', 2, 'Medical Emergency', 102, 'Linda Turner', 'Greg Black', 'James Miller', 'Laura Green', 2, 'Mark Black', '0000-00-00', '00:00:00', 'Approved', '0000-00-00', '00:00:00', NULL),
(69, 3, 1003, 'E9101', 'Charlie Lee', 'Approved', '2024-02-01', 'Change Work Schedule Request', '8', 'Unpaid Leave', 20, '2024-02-01', '3', '07:00:00', '15:00:00', 0, 7, 0, 'N.A.', '7:00 AM - 3:00 PM', '7:00 AM - 3:00 PM', 3, 'Personal Reasons', 103, 'Emily Clark', 'James Walker', 'Kate Brown', 'Paul Stevens', 3, 'Nathan Johnson', '0000-00-00', '00:00:00', 'Rejected', '0000-00-00', '00:00:00', NULL),
(70, 0, 33794, '10613', 'ANGELI PICAZO', 'Disapproved', '2024-12-21', 'Time-in / Time-out Request', 'N.A.', 'N.A.', 0, '2024-12-20', 'N.A.', '09:00:00', '18:00:00', 0, 0, 0, 'N.A.', 'N.A.', 'N.A.', 1, 'GG', 1, '', '', '', '', 0, 'N.A.', '2024-12-21', '03:18:49', 'Update', '2024-12-21', '03:18:49', NULL),
(71, 1, 0, 'system_admin', 'System Admin', 'Approved', '2024-12-23', 'Undertime Request', '1 Hour', 'N.A.', 0, '2024-12-23', 'N.A.', '17:07:00', '18:07:00', 0, 0, 1, 'N.A.', 'N.A.', 'N.A.', 0, 'dd', 1, '4C-00010', 'hr_admin', '', '', 0, 'HR Admin', '2024-12-23', '17:08:00', 'Create', '2024-12-24', '03:56:33', NULL),
(72, 1, 0, 'system_admin', 'System Admin', 'Approved', '2024-12-23', 'Overtime Request', '1 Hour', 'N.A.', 0, '2024-12-23', 'N.A.', '22:51:00', '23:51:00', 1, 0, 0, 'N.A.', 'N.A.', 'N.A.', 0, '', 1, '4C-00010', 'hr_admin', '', '', 0, 'HR Admin', '2024-12-23', '21:51:29', 'Create', '2024-12-24', '10:56:29', NULL),
(73, 0, 30368, '4C-0009', 'Raphaela Matias', 'For Approval', '2024-12-24', 'Time-in / Time-out Request', 'N.A.', 'N.A.', 0, '2024-07-11', 'N.A.', '14:29:03', '00:00:00', 0, 0, 0, 'N.A.', 'N.A.', 'N.A.', 6, 'ad', 1, '4C-00010', 'hr_admin', '', '', 20, 'N.A.', '2024-12-24', '07:54:39', 'Update', '2024-12-24', '07:54:39', NULL),
(74, 0, 30368, '4C-0009', 'Raphaela Matias', 'Pending For Approval', '2024-12-24', 'Time-in / Time-out Request', 'N.A.', 'N.A.', 0, '2024-07-11', 'N.A.', '14:29:03', '00:00:00', 0, 0, 0, 'N.A.', 'N.A.', 'N.A.', 6, 'a', 1, '4C-00010', 'hr_admin', '', '', 20, 'N.A.', '2024-12-24', '07:56:29', 'Update', '2024-12-24', '07:56:29', NULL),
(75, 0, 33798, 'system_admin', 'System Admin', 'Pending For Approval', '2024-12-26', 'Time-in / Time-out Request', 'N.A.', 'N.A.', 0, '2024-12-23', 'N.A.', '16:25:54', '00:00:00', 0, 0, 0, 'N.A.', 'N.A.', 'N.A.', 5, 'ad', 1, '4C-00010', 'hr_admin', '', '', 0, 'N.A.', '2024-12-26', '04:46:52', 'Update', '2024-12-26', '04:46:52', NULL),
(76, 1, 0, 'system_admin', 'System Admin', 'Disapproved', '2024-12-26', 'N.A.', 'N.A.', 'N.A.', 0, '2024-12-26', 'N.A.', '19:37:00', '21:37:00', 2, 0, 0, 'N.A.', 'N.A.', 'N.A.', 0, 'a', 1, '4C-00010', 'hr_admin', '', '', 0, 'System Admin', '2024-12-26', '18:37:36', 'Create', '2025-01-27', '16:51:26', NULL),
(77, 1, 0, 'system_admin', 'System Admin', 'Approved', '2025-02-07', 'Change Work Schedule Request', '0', 'N.A.', 0, '0001-01-01', 'N.A.', '00:00:00', '00:00:00', 0, 0, 0, 'N.A.', 'Gliding CWW 10:34:00-18:00:00', 'Gliding 8hrs 11:43:00-19:30:00', 1, 'aa', 1, '4C-00010', 'hr_admin', '', '', 0, 'N.A.', '2025-02-07', '02:31:33', 'Create', '2025-02-07', '02:31:33', NULL),
(78, 1, 0, 'system_admin', 'System Admin', 'Approved', '2025-02-07', 'Change Work Schedule Request', '0', 'N.A.', 0, '0001-01-01', 'N.A.', '00:00:00', '00:00:00', 0, 0, 0, 'N.A.', 'Gliding CWW 10:34:00-18:00:00', 'Gliding 8hrs 07:00:00-17:00:00', 4, 'S', 1, '4C-00010', 'hr_admin', '', '', 0, 'HR Admin', '2025-02-07', '08:54:37', 'Create', '2025-02-07', '08:54:37', NULL),
(79, 1, 0, 'system_admin', 'System Admin', 'Approved', '2025-02-07', 'Change Work Schedule Request', '0', 'N.A.', 0, '0001-01-01', 'N.A.', '00:00:00', '00:00:00', 0, 0, 0, 'N.A.', 'Gliding CWW 10:34:00-18:00:00', 'Fixed CWW 2 07:00:00-17:00:00', 2, 's', 1, '4C-00010', 'hr_admin', '', '', 0, 'HR Admin', '2025-02-07', '09:43:27', 'Create', '2025-02-07', '09:43:27', NULL),
(80, 1, 0, 'system_admin', 'System Admin', 'Approved', '2025-02-10', 'Overtime Request', 'N.A.', 'N.A.', 0, '2025-02-10', 'N.A.', '09:49:00', '20:49:00', 11, 0, 0, 'N.A.', 'N.A.', 'N.A.', 0, 'ww', 1, '4C-00010', 'hr_admin', '', '', 0, 'N.A.', '2025-02-10', '08:49:21', 'Create', '2025-02-10', '08:49:21', NULL),
(81, 1, 0, 'system_admin', 'System Admin', 'Approved', '2025-02-10', 'Overtime Request', 'N.A.', 'N.A.', 0, '2025-02-10', 'N.A.', '10:13:00', '22:13:00', 12, 0, 0, 'N.A.', 'N.A.', 'N.A.', 0, 'ad', 1, '4C-00010', 'hr_admin', '', '', 0, 'N.A.', '2025-02-10', '10:13:39', 'Create', '2025-02-10', '10:13:39', NULL),
(82, 1, 0, 'system_admin', 'System Admin', 'Approved', '2025-02-10', 'Overtime Request', 'N.A.', 'N.A.', 0, '2025-02-10', 'N.A.', '10:13:00', '22:13:00', 12, 0, 0, 'N.A.', 'N.A.', 'N.A.', 0, 'oo', 1, '4C-00010', 'hr_admin', '', '', 0, 'N.A.', '2025-02-10', '10:14:27', 'Create', '2025-02-10', '10:14:27', NULL),
(83, 1, 0, 'system_admin', 'System Admin', 'Disapproved', '2025-02-10', 'Overtime Request', 'N.A.', 'N.A.', 0, '2025-02-10', 'N.A.', '10:14:00', '22:14:00', 12, 0, 0, 'N.A.', 'N.A.', 'N.A.', 0, 'p', 1, '4C-00010', 'hr_admin', '', '', 0, 'System Admin', '2025-02-10', '10:14:52', 'Create', '2025-03-01', '16:49:02', NULL),
(84, 1, 0, 'system_admin', 'System Admin', 'For Approval', '2025-02-10', 'Undertime Request', '12.02 Hours', 'N.A.', 0, '2025-02-10', 'N.A.', '10:18:00', '22:19:00', 0, 0, 12.02, 'N.A.', 'N.A.', 'N.A.', 0, 'sf', 1, '4C-00010', 'hr_admin', '', '', 0, 'N.A.', '2025-02-10', '10:18:28', 'Create', '2025-02-10', '10:18:28', NULL),
(85, 1, 0, 'system_admin', 'System Admin', 'For Approval', '2025-02-10', 'Undertime Request', '0.97 Hours', 'N.A.', 0, '2025-02-10', 'N.A.', '17:41:00', '16:43:00', 0, 0, 0.97, 'N.A.', 'N.A.', 'N.A.', 0, 'a', 1, '4C-00010', 'hr_admin', '', '', 0, 'N.A.', '2025-02-10', '16:41:08', 'Create', '2025-02-10', '16:41:08', NULL),
(86, 1, 1001, 'E1234', 'John Doe', 'Approved', '2024-01-01', 'Change Work Schedule Request', '8', 'Paid Leave', 10, '2024-01-01', '2', '08:00:00', '17:00:00', 2, 8, 0, 'N.A.', '9:00 AM - 5:00 PM', 'Fixed CWW 2 07:00:00-17:00:00', 1, 'Personal Reasons', 101, 'Jane Smith', 'Mike Johnson', 'Sarah Lee', 'Tom Wright', 1, 'System Admin', '0000-00-00', '00:00:00', 'Approved', '0000-00-00', '00:00:00', NULL),
(87, 2, 1002, 'E5678', 'Alice Cooper', 'Approved', '2024-01-10', 'Change Work Schedule Request', '6', 'Sick Leave', 5, '2024-01-10', '1', '09:00:00', '15:00:00', 1, 7, 1, 'N.A.', '9:00 AM - 3:00 PM', '9:00 AM - 3:00 PM', 2, 'Medical Emergency', 102, 'Linda Turner', 'Greg Black', 'James Miller', 'Laura Green', 2, 'Mark Black', '0000-00-00', '00:00:00', 'Approved', '0000-00-00', '00:00:00', NULL),
(88, 3, 1003, 'E9101', 'Charlie Lee', 'Disapproved', '2024-02-01', 'Change Work Schedule Request', '8', 'Unpaid Leave', 20, '2024-02-01', '3', '07:00:00', '15:00:00', 0, 7, 0, 'N.A.', '7:00 AM - 3:00 PM', '- Select -', 3, 'Personal Reasons', 103, 'Emily Clark', 'James Walker', 'Kate Brown', 'Paul Stevens', 3, 'HR Admin', '0000-00-00', '00:00:00', 'Rejected', '0000-00-00', '00:00:00', NULL),
(89, 0, 33825, 'hr_admin', 'HR Admin', 'Approved', '2025-02-18', 'Time-in / Time-out Request', 'N.A.', 'N.A.', 0, '2025-02-18', 'N.A.', '10:48:05', '10:52:12', 0, 0, 0, 'N.A.', 'N.A.', 'N.A.', 5, 'ff', 1, '4C-00010', 'hr_admin', '', '', 0, 'HR Admin', '2025-02-18', '03:52:51', 'Update', '2025-02-18', '03:53:01', NULL),
(90, 5, 0, '4C-0009', 'Raphaela Matias', 'Approved', '2025-02-20', 'N.A.', 'N.A.', 'N.A.', 0, '2025-02-20', 'N.A.', '15:02:00', '16:02:00', 1, 0, 0, 'N.A.', 'N.A.', 'N.A.', 0, '1', 1, 's', 's', 's', 's', 20, 'N.A.', '2025-02-20', '14:03:22', 'Create', '2025-02-20', '14:03:22', NULL),
(91, 1, 0, 'system_admin', '', 'Approved', '2025-02-20', 'N.A.', 'N.A.', 'N.A.', 0, '2025-02-20', 'N.A.', '15:10:00', '16:10:00', 1, 0, 0, 'N.A.', 'N.A.', 'N.A.', 0, '1', 1, '4C-00010', 'hr_admin', 'hr_admin', 'hr_admin', 0, 'N.A.', '2025-02-20', '14:10:53', 'Create', '2025-02-20', '14:10:53', NULL),
(92, 2, 0, 'hr_admin', 'Maria Criser Abad', 'Approved', '2025-02-20', 'N.A.', 'N.A.', 'N.A.', 0, '2025-02-20', 'N.A.', '14:14:00', '15:14:00', 1, 0, 0, 'N.A.', 'N.A.', 'N.A.', 0, '1', 1, '1', '1', '1', '1', 0, 'N.A.', '2025-02-20', '14:14:37', 'Create', '2025-02-20', '14:14:37', NULL),
(93, 5, 0, '4C-0009', 'Raphaela Matias', 'Approved', '2025-02-20', 'N.A.', 'N.A.', 'N.A.', 0, '2025-02-20', 'N.A.', '14:15:00', '15:15:00', 1, 0, 0, 'N.A.', 'N.A.', 'N.A.', 0, '1', 1, '1', '1', '1', '1', 20, 'N.A.', '2025-02-20', '14:15:39', 'Create', '2025-02-20', '14:15:39', NULL),
(94, 4, 0, '30517', '', 'Approved', '2025-02-20', 'Overtime Request', '1 Hour', 'N.A.', 0, '2025-02-20', 'N.A.', '14:19:00', '15:19:00', 1, 0, 0, 'N.A.', 'N.A.', 'N.A.', 0, '1', 1, 'supervisor', 'system_admin', 'hr_admin', 'hr_admin', 1, 'HR Admin', '2025-02-20', '14:19:05', 'Create', '2025-03-01', '16:07:48', NULL),
(95, 0, 33800, '10613', 'ANGELI PICAZO', 'Pending For Approval', '2025-02-20', 'Time-in / Time-out Request', 'N.A.', 'N.A.', 0, '2024-12-20', 'N.A.', '09:00:00', '00:00:00', 0, 0, 0, 'N.A.', 'N.A.', 'N.A.', 1, 'ww', 1, '', '', '', '', 0, 'N.A.', '2025-02-20', '08:05:56', 'Update', '2025-02-20', '08:05:56', NULL),
(96, 0, 33822, '11512', 'ROSBEL BARRIO', 'Pending For Approval', '2025-02-20', 'Time-in / Time-out Request', 'N.A.', 'N.A.', 0, '2025-02-20', 'N.A.', '08:00:00', '08:00:00', 0, 0, 0, 'N.A.', 'N.A.', 'N.A.', 1, 'p', 1, '', '', '', '', 0, 'N.A.', '2025-02-20', '08:06:35', 'Update', '2025-02-20', '08:06:35', NULL),
(97, 0, 33822, '11512', 'ROSBEL BARRIO', 'Pending For Approval', '2025-02-20', 'Time-in / Time-out Request', 'N.A.', 'N.A.', 0, '2025-02-20', 'N.A.', '08:00:00', '08:00:00', 0, 0, 0, 'N.A.', 'N.A.', 'N.A.', 1, 'da', 1, '', '', '', '', 0, 'N.A.', '2025-02-20', '08:06:53', 'Update', '2025-02-20', '08:06:53', NULL),
(98, 0, 33824, 'system_admin', 'System Admin', 'Approved', '2025-02-20', 'Time-in / Time-out Request', 'N.A.', 'N.A.', 0, '2025-02-18', 'N.A.', '10:45:28', '11:03:53', 0, 0, 0, 'N.A.', 'N.A.', 'N.A.', 5, 'da', 1, '4C-00010', 'hr_admin', '', '', 0, 'HR Admin', '2025-02-20', '08:07:00', 'Update', '2025-02-20', '08:07:00', NULL),
(99, 0, 33822, '11512', 'ROSBEL BARRIO', 'Approved', '2025-02-20', 'Time-in / Time-out Request', 'N.A.', 'N.A.', 0, '2025-02-20', 'N.A.', '08:00:00', '08:00:00', 0, 0, 0, 'N.A.', 'N.A.', 'N.A.', 1, 'sa', 1, '', '', '', '', 0, 'HR Admin', '2025-02-20', '08:18:07', 'Update', '2025-02-20', '08:18:07', NULL),
(100, 0, 33822, '11512', 'ROSBEL BARRIO', 'Approved', '2025-02-20', 'Time-in / Time-out Request', 'N.A.', 'N.A.', 0, '2025-02-20', 'N.A.', '08:00:00', '08:00:00', 0, 0, 0, 'N.A.', 'N.A.', 'N.A.', 1, 'add', 1, '', '', '', '', 0, 'N.A.', '2025-02-20', '08:19:38', 'Update', '2025-02-20', '08:19:38', NULL),
(101, 2, 0, 'hr_admin', '', 'Approved', '2025-02-20', 'N.A.', 'N.A.', 'N.A.', 0, '2025-02-20', 'N.A.', '15:51:00', '16:51:00', 1, 0, 0, 'N.A.', 'N.A.', 'N.A.', 0, 'r', 1, '4C-00010', 'hr_admin', 'hr_admin', 'hr_admin', 0, 'N.A.', '2025-02-20', '15:51:39', 'Create', '2025-02-20', '15:51:39', NULL),
(102, 0, 33822, '11512', 'ROSBEL BARRIO', 'Approved', '2025-02-20', 'Time-in / Time-out Request', 'N.A.', 'N.A.', 0, '2025-02-20', 'N.A.', '08:00:00', '08:50:00', 0, 0, 0, 'N.A.', 'N.A.', 'N.A.', 1, 'add', 1, '', '', '', '', 0, 'HR Admin', '2025-02-20', '09:07:48', 'Update', '2025-02-20', '09:07:48', NULL),
(103, 0, 33825, 'hr_admin', 'HR Admin', 'Pending For Approval', '2025-02-20', 'Time-in / Time-out Request', 'N.A.', 'N.A.', 0, '2025-02-18', 'N.A.', '10:48:05', '10:56:00', 0, 0, 0, 'N.A.', 'N.A.', 'N.A.', 5, 'extra minute', 1, '4C-00010', 'hr_admin', '', '', 0, 'N.A.', '2025-02-20', '09:08:43', 'Update', '2025-02-20', '09:08:43', NULL),
(104, 0, 33820, 'system_admin', 'System Admin', 'Pending For Approval', '2025-02-20', 'Time-in / Time-out Request', 'N.A.', 'N.A.', 0, '2025-02-10', 'N.A.', '07:58:41', '08:10:00', 0, 0, 0, 'N.A.', 'N.A.', 'N.A.', 5, 'te', 1, '4C-00010', 'hr_admin', '', '', 0, 'N.A.', '2025-02-20', '09:09:59', 'Update', '2025-02-20', '09:09:59', NULL),
(105, 0, 33824, 'system_admin', 'System Admin', '', '2025-02-22', 'Time-in / Time-out Request', 'N.A.', 'N.A.', 0, '2025-02-18', 'N.A.', '10:45:28', '12:03:00', 0, 0, 0, 'N.A.', 'N.A.', 'N.A.', 5, 's', 1, '4C-00010', 'hr_admin', '', '', 0, 'N.A.', '2025-02-22', '05:38:57', 'Update', '2025-02-22', '05:38:57', NULL),
(106, 0, 33824, 'system_admin', 'System Admin', '', '2025-02-22', 'Time-in / Time-out Request', 'N.A.', 'N.A.', 0, '2025-02-18', 'N.A.', '10:45:28', '11:03:53', 0, 0, 0, 'N.A.', 'N.A.', 'N.A.', 5, 'd', 1, '4C-00010', 'hr_admin', '', '', 0, 'N.A.', '2025-02-22', '05:43:30', 'Update', '2025-02-22', '05:43:30', NULL),
(107, 0, 33819, 'system_admin', 'System Admin', '', '2025-02-22', 'Time-in / Time-out Request', 'N.A.', 'N.A.', 0, '2025-02-06', 'N.A.', '00:52:00', '22:57:00', 0, 0, 0, 'N.A.', 'N.A.', 'N.A.', 5, 'testing', 1, '4C-00010', 'hr_admin', '', '', 0, 'N.A.', '2025-02-22', '05:44:36', 'Update', '2025-02-22', '05:44:36', NULL),
(108, 1, 0, 'system_admin', 'System Admin', 'Approved', '2025-02-22', 'Change Work Schedule Request', '0', 'N.A.', 0, '0001-01-01', 'N.A.', '00:00:00', '00:00:00', 0, 0, 0, 'N.A.', '2', 'Fixed CWW 2 07:00:00-17:00:00', 2, 'as', 1, '4C-00010', 'hr_admin', '', '', 0, 'System Admin', '2025-02-22', '06:37:37', 'Create', '2025-02-24', '14:45:41', NULL),
(109, 1, 0, 'system_admin', 'System Admin', 'Pending For Approval', '2025-02-22', 'Undertime Request', '1 Hour', 'N.A.', 0, '2025-02-22', 'N.A.', '18:09:00', '17:09:00', 0, 0, 1, 'N.A.', 'N.A.', 'N.A.', 0, '1', 1, '4C-00010', 'hr_admin', '', '', 0, 'N.A.', '2025-02-22', '16:09:13', 'Create', '2025-02-22', '16:09:13', NULL),
(110, 2, 0, 'hr_admin', 'HR Admin', 'For Approval', '2025-02-22', 'Maria Criser Abad - Personal Leave Request', '1 Day', 'Maria Criser Abad - Personal Leave', 4, '2025-02-22', '1', '00:00:00', '00:00:00', 0, 0, 0, 'N.A.', 'N.A.', 'N.A.', 0, '1', 1, '4C-00010', 'hr_admin', '', '', 0, 'N.A.', '2025-02-22', '17:57:18', 'Create', '2025-02-22', '17:57:18', NULL),
(111, 2, 0, 'hr_admin', 'HR Admin', 'For Approval', '2025-02-22', 'JULIUS RUSSELL CRUZ - Vacation Leave Request', '7 Days', 'JULIUS RUSSELL CRUZ - Vacation Leave', 43, '2025-02-22', '7', '00:00:00', '00:00:00', 0, 0, 0, 'N.A.', 'N.A.', 'N.A.', 0, 'ad', 1, '4C-00010', 'hr_admin', '', '', 0, 'N.A.', '2025-02-22', '18:01:13', 'Create', '2025-02-22', '18:01:13', NULL),
(112, 2, 0, 'hr_admin', 'HR Admin', 'Pending For Approval', '2025-02-22', 'sdf fsd - Vacation Leave Request', '1 Day', 'sdf fsd - Vacation Leave', 24, '2025-02-22', '1', '00:00:00', '00:00:00', 0, 0, 0, 'N.A.', 'N.A.', 'N.A.', 0, 'i', 1, '4C-00010', 'hr_admin', '', '', 0, 'N.A.', '2025-02-22', '18:03:57', 'Create', '2025-02-22', '18:03:57', NULL),
(113, 1, 0, 'system_admin', 'System Admin', 'Pending For Approval', '2025-02-22', 'Raphaela Matias - Break Request', '1 Day', 'Raphaela Matias - Break', 50, '2025-02-22', '1', '00:00:00', '00:00:00', 0, 0, 0, 'N.A.', 'N.A.', 'N.A.', 0, '1', 1, '4C-00010', 'hr_admin', '', '', 0, 'N.A.', '2025-02-22', '18:16:29', 'Create', '2025-02-22', '18:16:29', NULL),
(114, 1, 0, 'system_admin', 'System Admin', 'Pending For Approval', '2025-02-22', 'RONNIE PILARCA - Personal Leave Request', '1 Day', 'RONNIE PILARCA - Personal Leave', 2, '2025-02-22', '1', '00:00:00', '00:00:00', 0, 0, 0, 'N.A.', 'N.A.', 'N.A.', 0, 'tt', 1, '4C-00010', 'hr_admin', '', '', 0, 'N.A.', '2025-02-22', '18:16:44', 'Create', '2025-02-22', '18:16:44', NULL),
(115, 5, 0, '4C-0009', 'Raphaela Matias', 'Pending For Approval', '2025-02-23', 'Undertime Request', '1 Hour', 'N.A.', 0, '2025-02-23', 'N.A.', '21:10:00', '22:10:00', 0, 0, 1, 'N.A.', 'N.A.', 'N.A.', 0, 'rr', 1, '', '', '', '', 20, 'N.A.', '2025-02-23', '21:10:33', 'Create', '2025-02-23', '21:10:33', NULL),
(116, 5, 0, '4C-0009', '', 'Approved', '2025-02-23', 'N.A.', 'N.A.', 'N.A.', 0, '2025-02-23', 'N.A.', '13:25:00', '14:25:00', 1, 0, 0, 'N.A.', 'N.A.', 'N.A.', 0, 'd', 1, 'supervisor', 'system_admin', 'hr_admin', 'hr_admin', 20, 'N.A.', '2025-02-23', '23:25:54', 'Create', '2025-02-23', '23:25:54', NULL),
(117, 0, 33825, 'hr_admin', 'HR Admin', 'Approved', '2025-02-24', 'Time-in / Time-out Request', 'N.A.', 'N.A.', 0, '2025-02-18', 'N.A.', '10:48:05', '10:55:06', 0, 0, 0, 'N.A.', 'N.A.', 'N.A.', 5, 'ss', 1, '4C-00010', 'hr_admin', '', '', 0, 'N.A.', '2025-02-24', '13:49:44', 'Update', '2025-02-24', '13:49:44', NULL),
(118, 0, 33825, 'hr_admin', 'HR Admin', 'Approved', '2025-02-24', 'Time-in / Time-out Request', 'N.A.', 'N.A.', 0, '2025-02-18', 'N.A.', '10:48:05', '10:55:06', 0, 0, 0, 'N.A.', 'N.A.', 'N.A.', 5, 'rr', 1, '4C-00010', 'hr_admin', '', '', 0, 'N.A.', '2025-02-24', '13:51:21', 'Update', '2025-02-24', '13:51:21', NULL),
(119, 0, 33822, '11512', 'ROSBEL BARRIO', '', '2025-02-24', 'Time-in / Time-out Request', 'N.A.', 'N.A.', 0, '2025-02-20', 'N.A.', '08:00:00', '08:50:00', 0, 0, 0, 'N.A.', 'N.A.', 'N.A.', 1, 'fh', 1, '', '', '', '', 0, 'N.A.', '2025-02-24', '13:56:29', 'Update', '2025-02-24', '13:56:29', NULL),
(120, 0, 33822, '11512', 'ROSBEL BARRIO', 'Approved', '2025-02-24', 'Time-in / Time-out Request', 'N.A.', 'N.A.', 0, '2025-02-20', 'N.A.', '08:00:00', '08:50:00', 0, 0, 0, 'N.A.', 'N.A.', 'N.A.', 1, 'ad', 1, '', '', '', '', 0, 'N.A.', '2025-02-24', '13:57:25', 'Update', '2025-02-24', '13:57:25', NULL),
(121, 0, 33824, 'system_admin', 'System Admin', 'Approved', '2025-02-24', 'Time-in / Time-out Request', 'N.A.', 'N.A.', 0, '2025-02-18', 'N.A.', '10:45:28', '11:03:53', 0, 0, 0, 'N.A.', 'N.A.', 'N.A.', 5, 'dd', 1, '4C-00010', 'hr_admin', '', '', 0, 'N.A.', '2025-02-24', '14:00:19', 'Update', '2025-02-24', '14:00:19', NULL),
(122, 0, 33829, '14312', 'JAIME ERNACIO, JR.', 'Approved', '2025-02-24', 'Time-in / Time-out Request', 'N.A.', 'N.A.', 0, '2025-02-08', 'N.A.', '15:30:00', '15:30:00', 0, 0, 0, 'N.A.', 'N.A.', 'N.A.', 7, 'qq', 1, '', '', '', '', 0, 'N.A.', '2025-02-24', '14:17:04', 'Update', '2025-02-24', '14:17:04', NULL),
(123, 0, 33823, '30517', 'Maria Criser Abad', '', '2025-02-24', 'Time-in / Time-out Request', 'N.A.', 'N.A.', 0, '2025-02-08', 'N.A.', '08:00:00', '08:00:00', 0, 0, 0, 'N.A.', 'N.A.', 'N.A.', 3, 'qq', 1, '', '', '', '', 0, 'N.A.', '2025-02-24', '14:17:18', 'Update', '2025-02-24', '14:17:18', NULL),
(124, 0, 33823, '30517', 'Maria Criser Abad', '', '2025-02-24', 'Time-in / Time-out Request', 'N.A.', 'N.A.', 0, '2025-02-08', 'N.A.', '08:00:00', '08:00:00', 0, 0, 0, 'N.A.', 'N.A.', 'N.A.', 3, 'qq', 1, '', '', '', '', 0, 'N.A.', '2025-02-24', '14:17:32', 'Update', '2025-02-24', '14:17:32', NULL),
(125, 0, 33827, '11512', 'ROSBEL BARRIO', 'Approved', '2025-02-24', 'Time-in / Time-out Request', 'N.A.', 'N.A.', 0, '2025-02-01', 'N.A.', '15:30:00', '15:30:00', 0, 0, 0, 'N.A.', 'N.A.', 'N.A.', 1, 'wq', 1, '', '', '', '', 0, 'N.A.', '2025-02-24', '14:17:53', 'Update', '2025-02-24', '14:17:53', NULL),
(126, 0, 33823, '30517', 'Maria Criser Abad', 'Approved', '2025-02-24', 'Time-in / Time-out Request', 'N.A.', 'N.A.', 0, '2025-02-08', 'N.A.', '08:00:00', '08:00:00', 0, 0, 0, 'N.A.', 'N.A.', 'N.A.', 3, 'qw', 1, '', '', '', '', 0, 'N.A.', '2025-02-24', '14:18:12', 'Update', '2025-02-24', '14:18:12', NULL),
(127, 0, 33828, '14012', 'JONATHAN ADONIS', 'Approved', '2025-02-24', 'Time-in / Time-out Request', 'N.A.', 'N.A.', 0, '2025-02-01', 'N.A.', '15:30:00', '15:30:00', 0, 0, 0, 'N.A.', 'N.A.', 'N.A.', 3, 'dd', 1, '', '', '', '', 0, 'N.A.', '2025-02-24', '14:26:57', 'Update', '2025-02-24', '14:26:57', NULL),
(128, 4, 0, '30517', 'Maria Criser Abad', 'Approved', '2024-05-01', 'Overtime Request', 'N.A.', 'N.A.', 0, '2024-05-01', 'N.A.', '11:07:00', '00:07:00', 11, 0, 0, 'N.A.', 'Fixed CWW 1 07:30:00-17:30:00', 'N.A.', 0, 'ww', 1, 'supervisor', 'system_admin', 'hr_admin', 'hr_admin', 1, 'System Admin', '2025-02-28', '11:07:31', 'Create', '2025-03-01', '16:49:34', NULL),
(129, 4, 0, '30517', '', 'Approved', '2025-02-28', 'N.A.', 'N.A.', 'N.A.', 0, '2024-05-08', 'N.A.', '01:08:00', '04:08:00', 3, 0, 0, 'N.A.', 'N.A.', 'N.A.', 0, 'rr', 1, 'supervisor', 'system_admin', 'hr_admin', 'hr_admin', 1, 'N.A.', '2025-02-28', '11:08:30', 'Create', '2025-02-28', '11:08:30', NULL),
(131, 4, 0, '30517', 'Maria Criser Abad', 'Disapproved', '2024-05-08', 'N.A.', 'N.A.', 'N.A.', 0, '2024-05-08', 'N.A.', '11:17:00', '13:17:00', 2, 0, 0, 'N.A.', 'N.A.', 'N.A.', 0, 'd', 1, 'supervisor', 'system_admin', 'hr_admin', 'hr_admin', 1, 'System Admin', '2025-02-28', '11:17:39', 'Create', '2025-02-28', '11:21:58', NULL),
(132, 4, 0, '30517', 'Maria Criser Abad', 'Approved', '2025-02-28', 'Undertime Request', '11 Hours', 'N.A.', 0, '2025-05-07', 'N.A.', '11:20:00', '00:20:00', 0, 0, 11, 'N.A.', 'N.A.', 'N.A.', 0, 'rr', 1, '', '', '', '', 1, 'System Admin', '2025-02-28', '11:20:43', 'Create', '2025-02-28', '04:21:55', NULL),
(133, 1, 0, 'system_admin', 'System Admin', 'Approved', '2025-02-28', 'Undertime Request', '1 Hour', 'N.A.', 0, '2025-02-28', 'N.A.', '22:40:00', '23:40:00', 0, 0, 1, 'N.A.', 'N.A.', 'N.A.', 0, 'w', 1, '4C-00010', 'hr_admin', '', '', 0, 'HR Admin', '2025-02-28', '22:41:27', 'Create', '2025-03-01', '09:04:27', NULL),
(134, 5, 0, '4C-0009', 'Raphaela Matias', 'Approved', '2025-02-28', 'Undertime Request', '1 Hour', 'N.A.', 0, '2025-02-28', 'N.A.', '22:44:00', '23:44:00', 0, 0, 1, 'N.A.', 'N.A.', 'N.A.', 0, 'w', 1, '', '', '', '', 20, 'HR Admin', '2025-02-28', '22:44:23', 'Create', '2025-02-28', '15:44:48', NULL),
(135, 4, 0, '30517', 'Maria Criser Abad', 'Approved', '2024-05-01', 'Undertime Request', '11 Hours', 'N.A.', 0, '2024-05-01', 'N.A.', '23:45:00', '12:45:00', 0, 0, 11, 'N.A.', 'Fixed CWW 1 07:30:00-17:30:00', 'N.A.', 0, 'w', 1, '', '', '', '', 1, 'N.A.', '2025-02-28', '22:45:32', 'Create', '2025-02-28', '22:45:32', NULL),
(136, 4, 0, '30517', 'Maria Criser Abad', 'Approved', '2024-05-17', 'Undertime Request', '1 Hour', 'N.A.', 0, '2025-05-16', 'N.A.', '22:45:00', '23:45:00', 0, 0, 1, 'N.A.', 'N.A.', 'N.A.', 0, 'e', 1, '', '', '', '', 1, 'HR Admin', '2025-02-28', '22:46:03', 'Create', '2025-03-01', '09:52:00', NULL),
(137, 1, 0, 'system_admin', 'System Admin', 'Disapproved', '2025-03-01', 'N.A.', 'N.A.', 'N.A.', 0, '2025-03-01', 'N.A.', '16:02:00', '17:02:00', 1, 0, 0, 'N.A.', 'N.A.', 'N.A.', 0, 'w', 1, '4C-00010', 'hr_admin', 'hr_admin', 'hr_admin', 0, 'HR Admin', '2025-03-01', '16:02:31', 'Create', '2025-03-01', '16:04:16', NULL),
(140, 2, 0, 'hr_admin', 'HR Admin', 'Approved', '2025-03-01', 'Overtime Request', '1 Hour', 'N.A.', 0, '2025-03-01', 'N.A.', '17:00:00', '18:00:00', 1, 0, 0, 'N.A.', 'Gliding CWW 10:34:00-18:00:00', 'N.A.', 0, 'r', 1, '4C-00010', 'hr_admin', 'hr_admin', 'hr_admin', 0, 'HR Admin', '2025-03-01', '17:00:46', 'Create', '2025-03-01', '17:14:39', NULL),
(141, 0, 27650, '36324', 'MERRIAM CONDE', 'Pending For Approval', '2025-03-01', 'Time-in / Time-out Request', 'N.A.', 'N.A.', 0, '2024-06-29', 'N.A.', '07:36:00', '12:32:00', 0, 0, 0, 'N.A.', 'N.A.', 'N.A.', 1, 'Early', 1, '', '', '', '', 0, 'N.A.', '2025-03-01', '10:18:52', 'Update', '2025-03-01', '10:18:52', NULL),
(142, 0, 28492, '21212', 'MARVIN ANDALUZ', 'Pending For Approval', '2025-03-01', 'Time-in / Time-out Request', 'N.A.', 'N.A.', 0, '2024-05-17', 'N.A.', '09:26:00', '11:00:00', 0, 0, 0, 'N.A.', 'N.A.', 'N.A.', 1, 'Early', 1, '', '', '', '', 0, 'N.A.', '2025-03-01', '10:20:49', 'Update', '2025-03-01', '10:20:49', NULL),
(143, 0, 33826, '15412', 'HELEN DE GUZMAN', 'Pending For Approval', '2025-03-01', 'Time-in / Time-out Request', 'N.A.', 'N.A.', 0, '2025-02-01', 'N.A.', '10:15:00', '01:00:00', 0, 0, 0, 'N.A.', 'N.A.', 'N.A.', 3, 'e', 1, '', '', '', '', 0, 'N.A.', '2025-03-01', '10:28:09', 'Update', '2025-03-01', '10:28:09', NULL),
(144, 0, 33826, '15412', 'HELEN DE GUZMAN', 'Pending For Approval', '2025-03-01', 'Time-in / Time-out Request', 'N.A.', 'N.A.', 0, '2025-02-01', 'N.A.', '20:15:00', '01:00:00', 0, 0, 0, 'N.A.', 'N.A.', 'N.A.', 3, 'Early', 1, '', '', '', '', 0, 'N.A.', '2025-03-01', '10:29:04', 'Update', '2025-03-01', '10:29:04', NULL),
(145, 0, 33821, '4C-0009', 'Raphaela Matias', 'Pending For Approval', '2025-03-01', 'Time-in / Time-out Request', 'N.A.', 'N.A.', 0, '2025-02-01', 'N.A.', '06:00:00', '07:00:00', 0, 0, 0, 'N.A.', 'N.A.', 'N.A.', 6, 'Early', 0, '', '', '', '', 0, 'N.A.', '2025-03-01', '10:55:01', 'Update', '2025-03-01', '10:55:01', NULL),
(146, 0, 27588, '30517', 'Maria Criser Abad', 'Pending For Approval', '2025-03-01', 'Time-in / Time-out Request', 'N.A.', 'N.A.', 0, '2024-06-27', 'N.A.', '08:30:00', '17:49:00', 0, 0, 0, 'N.A.', 'N.A.', 'N.A.', 2, 'Early', 0, '', '', '', '', 0, 'N.A.', '2025-03-01', '10:58:09', 'Update', '2025-03-01', '10:58:09', NULL),
(147, 0, 36317, '36340', 'RAFAEL PAMPLONA', 'Pending For Approval', '2025-03-01', 'Time-in / Time-out Request', 'N.A.', 'N.A.', 0, '2024-01-11', 'N.A.', '06:18:00', '10:05:00', 0, 0, 0, 'N.A.', 'N.A.', 'N.A.', 2, 'Early', 0, '', '', '', '', 0, 'N.A.', '2025-03-01', '11:06:41', 'Update', '2025-03-01', '11:06:41', NULL),
(148, 0, 33820, 'system_admin', 'System Admin', 'Pending For Approval', '2025-03-01', 'Time-in / Time-out Request', 'N.A.', 'N.A.', 0, '2025-02-10', 'N.A.', '07:58:41', '08:02:50', 0, 0, 0, 'N.A.', 'N.A.', 'N.A.', 0, 's', 0, '', '', '', '', 0, 'N.A.', '2025-03-01', '11:07:06', 'Update', '2025-03-01', '11:07:06', NULL),
(149, 2, 0, 'hr_admin', 'HR Admin', 'Approved', '2025-03-03', 'Change Work Schedule Request', '0', 'N.A.', 0, '2025-03-03', 'N.A.', '00:00:00', '00:00:00', 0, 0, 0, 'N.A.', 'Flexi WW 06:30:00 18:00:00', 'Flexi WW 06:30:00-18:00:00', 13, 'Try this', 1, '4C-00010', 'hr_admin', '', '', 0, 'HR Admin', '2025-03-03', '15:08:56', 'Create', '2025-03-03', '15:09:25', '2025-03-10'),
(150, 2, 0, 'hr_admin', 'HR Admin', 'Approved', '2025-03-03', 'Change Work Schedule Request', '0', 'N.A.', 0, '2025-03-04', 'N.A.', '00:00:00', '00:00:00', 0, 0, 0, 'N.A.', 'Reg 8hrs Shift 2 07:30:00 16:30:00', 'Reg 8hrs Shift 2 07:30:00-16:30:00', 7, 'qe', 1, '4C-00010', 'hr_admin', '', '', 0, 'HR Admin', '2025-03-03', '17:36:50', 'Create', '2025-03-03', '17:36:57', '2025-03-05'),
(151, 2, 0, 'hr_admin', 'HR Admin', 'Approved', '2025-03-03', 'Change Work Schedule Request', '0', 'N.A.', 0, '2025-03-01', 'N.A.', '00:00:00', '00:00:00', 0, 0, 0, 'N.A.', 'Gliding 8hrs 07:43:00 13:30:00', 'Gliding 8hrs 07:43:00-13:30:00', 17, 'ff', 1, '4C-00010', 'hr_admin', '', '', 0, 'HR Admin', '2025-03-03', '18:29:32', 'Create', '2025-03-03', '18:31:24', '2025-03-02'),
(152, 2, 0, 'hr_admin', 'HR Admin', 'Approved', '2025-03-03', 'Change Work Schedule Request', '0', 'N.A.', 0, '2025-03-05', 'N.A.', '00:00:00', '00:00:00', 0, 0, 0, 'N.A.', 'Gliding CWW 10:34:00-18:00:00', 'Flexi WW 00:00:00 23:59:00', 18, 'EE', 1, '4C-00010', 'hr_admin', '', '', 0, 'HR Admin', '2025-03-03', '18:35:02', 'Create', '2025-03-03', '18:35:07', '2025-03-14'),
(153, 2, 0, 'hr_admin', 'HR Admin', 'Approved', '2025-03-03', 'Change Work Schedule Request', '0', 'N.A.', 0, '2025-03-04', 'N.A.', '00:00:00', '00:00:00', 0, 0, 0, 'N.A.', 'Fixed CWW 2 07:00:00-17:00:00', 'Reg 8hrs Shift 2 07:00:00 17:19:00', 16, 'RE', 1, '4C-00010', 'hr_admin', '', '', 0, 'HR Admin', '2025-03-03', '18:39:10', 'Create', '2025-03-03', '18:40:26', '2025-03-14'),
(154, 2, 0, 'hr_admin', 'HR Admin', 'Approved', '2025-03-03', 'Change Work Schedule Request', '0', 'N.A.', 0, '2025-03-05', 'N.A.', '00:00:00', '00:00:00', 0, 0, 0, 'N.A.', 'Fixed CWW 2 07:00:00-17:00:00', 'Gliding 8hrs 07:43:00 13:30:00', 17, 'WD', 1, '4C-00010', 'hr_admin', '', '', 0, 'HR Admin', '2025-03-03', '18:42:09', 'Create', '2025-03-03', '18:42:21', '2025-03-06'),
(155, 2, 0, 'hr_admin', 'HR Admin', 'Pending For Approval', '2025-03-03', 'Change Work Schedule Request', '10', 'N.A.', 0, '2025-03-05', 'N.A.', '00:00:00', '00:00:00', 0, 0, 0, 'N.A.', 'Fixed CWW 2 07:00:00-17:00:00', 'Fixed CWW 2 07:00:00-17:00:00', 11, 'TT', 1, '4C-00010', 'hr_admin', '', '', 0, 'N.A.', '2025-03-03', '19:18:42', 'Create', '2025-03-03', '19:18:42', '2025-03-14'),
(156, 2, 0, 'hr_admin', 'HR Admin', 'Approved', '2025-03-03', 'Change Work Schedule Request', '10', 'N.A.', 0, '2025-03-04', '6', '00:00:00', '00:00:00', 0, 0, 0, 'N.A.', 'Fixed CWW 2 07:00:00-17:00:00', 'Fixed CWW 1 07:30:00-17:30:00', 14, 'GG', 1, '4C-00010', 'hr_admin', '', '', 0, 'N.A.', '2025-03-03', '19:24:47', 'Create', '2025-03-03', '19:24:47', '2025-03-10'),
(161, 5, 0, '4C-0009', 'Raphaela Matias', 'Pending For Approval', '2025-03-04', 'Change Work Schedule Request', '5.7833333333333', 'N.A.', 0, '2025-03-04', '3', '00:00:00', '00:00:00', 0, 0, 0, 'N.A.', 'Reg 8hrs Shift 1 07:00:00-16:00:00', 'Gliding 8hrs 07:43:00-13:30:00', 19, 'HHA', 1, '', '', '', '', 20, 'N.A.', '2025-03-04', '04:28:55', 'Create', '2025-03-04', '04:28:55', '2025-03-07'),
(162, 5, 0, '4C-0009', 'Raphaela Matias', 'Approved', '2025-03-04', 'Change Work Schedule Request', '10', 'N.A.', 0, '2025-03-04', '3', '00:00:00', '00:00:00', 0, 0, 0, 'N.A.', 'Reg 8hrs Shift 1 07:00:00-16:00:00', '- Select -', 11, 'TRR', 1, '', '', '', '', 20, 'System Admin', '2025-03-04', '04:31:06', 'Create', '2025-03-04', '04:31:06', '2025-03-07'),
(163, 2, 0, 'hr_admin', 'HR Admin', 'Approved', '2025-03-08', 'Change Work Schedule Request', '10', 'N.A.', 0, '2025-03-08', '7', '00:00:00', '00:00:00', 0, 0, 0, 'N.A.', 'Fixed CWW 2 07:00:00-17:00:00', 'Fixed CWW 1 07:30:00 17:30:00', 15, 'TESTING', 1, '4C-00010', 'hr_admin', '', '', 0, 'HR Admin', '2025-03-08', '13:58:13', 'Create', '2025-03-08', '13:58:23', '2025-03-15'),
(164, 1, 0, 'system_admin', 'System Admin', 'Pending For Approval', '2025-03-13', 'JOCELYN MANANSALA - Personal Leave Request', '2 Days', 'JOCELYN MANANSALA - Personal Leave', 2, '2025-03-13', '2', '00:00:00', '00:00:00', 0, 0, 0, 'N.A.', 'N.A.', 'N.A.', 0, '1', 1, '4C-00010', 'hr_admin', '', '', 0, 'N.A.', '2025-03-13', '14:17:45', 'Create', '2025-03-13', '14:17:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `employee_id` varchar(15) NOT NULL,
  `name` varchar(100) NOT NULL,
  `ti_date` date NOT NULL,
  `time_in` time NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `shift_id` int(11) NOT NULL,
  `statusUpdate` varchar(100) NOT NULL DEFAULT 'Pending For Approval',
  `to_date` date NOT NULL,
  `time_out` time NOT NULL,
  `num_hr` varchar(50) NOT NULL DEFAULT '8',
  `n_hr` varchar(100) NOT NULL DEFAULT '0',
  `ot_hr` varchar(4) NOT NULL,
  `remarks` varchar(100) NOT NULL,
  `reason` varchar(100) NOT NULL DEFAULT '-----',
  `holid` varchar(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `gstat` int(11) NOT NULL,
  `approver1` varchar(100) NOT NULL,
  `approver2` varchar(100) NOT NULL,
  `proxyapprover1` varchar(100) NOT NULL,
  `proxyapprover2` varchar(100) NOT NULL,
  `device_time_in` varchar(100) NOT NULL,
  `device_time_out` varchar(100) NOT NULL DEFAULT 'Browser',
  `grace_period` int(11) DEFAULT 0,
  `day` varchar(80) NOT NULL DEFAULT 'N.A.'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `employee_id`, `name`, `ti_date`, `time_in`, `status`, `shift_id`, `statusUpdate`, `to_date`, `time_out`, `num_hr`, `n_hr`, `ot_hr`, `remarks`, `reason`, `holid`, `company_id`, `gstat`, `approver1`, `approver2`, `proxyapprover1`, `proxyapprover2`, `device_time_in`, `device_time_out`, `grace_period`, `day`) VALUES
(1, 'EMP001', 'John Doe', '2023-11-20', '08:00:00', 1, 1, 'Pending For Approval', '2023-11-20', '17:00:00', '9', '0', '0', 'On time', '-----', '0', 1, 1, 'Manager1', 'Manager2', 'Proxy1', 'Proxy2', '08:00:00', '17:00:00', 4, 'Monday');

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `id` int(11) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `bir_num` varchar(100) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `contact` varchar(100) DEFAULT NULL,
  `created_on` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`id`, `company_id`, `name`, `bir_num`, `address`, `contact`, `created_on`) VALUES
(1, 1, 'Main Office', '', '', '', '2023-02-13'),
(2, 1, '2', '1', '1', '1', '2024-12-20'),
(3, 1, 'Las Pinas', '', '', '', '2025-03-19'),
(4, 1, 'Mirasol', '', '', '', '2025-03-19'),
(5, 1, 'Meralco', '', '', '', '2025-03-19'),
(6, 1, 'Dagupan', '', '', '', '2025-03-19'),
(7, 1, 'Lingayen', '', '', '', '2025-03-19'),
(8, 1, 'Sta. Maria', '', '', '', '2025-03-19'),
(9, 1, 'Cebu', '', '', '', '2025-03-19'),
(10, 1, 'Sta. Rosa Laguna', '', '', '', '2025-03-19'),
(11, 1, 'Mediscan', '', '', '', '2025-03-19'),
(12, 1, 'SM Bayshore', '', '', '', '2025-03-19'),
(13, 1, 'Lipa', '', '', '', '2025-03-19'),
(14, 1, 'Davao', '', '', '', '2025-03-19'),
(15, 1, 'Baliwag', '', '', '', '2025-03-19'),
(16, 1, 'Tarlac', '', '', '', '2025-03-19'),
(17, 1, 'Parañaque', '', '', '', '2025-03-19'),
(18, 1, 'Tagaytay', '', '', '', '2025-03-19'),
(19, 1, 'Novaliches', '', '', '', '2025-03-19'),
(20, 1, 'Makati', '', '', '', '2025-03-19'),
(21, 1, 'Ongpin', '', '', '', '2025-03-19'),
(22, 1, 'PCS', '', '', '', '2025-03-19'),
(23, 1, 'Baesa', '', '', '', '2025-03-19'),
(24, 1, 'Malabon', '', '', '', '2025-03-19'),
(25, 1, 'D. Tuazon', '', '', '', '2025-03-19'),
(26, 1, 'Meralco - PCR', '', '', '', '2025-03-19'),
(27, 1, 'Mirasol Brothers', '', '', '', '2025-03-19');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL,
  `tin_num` varchar(100) NOT NULL,
  `sss_num` varchar(100) NOT NULL,
  `pagibig_num` varchar(100) NOT NULL,
  `philhealth_num` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `name`, `address`, `tin_num`, `sss_num`, `pagibig_num`, `philhealth_num`, `contact`, `created_on`) VALUES
(1, 'Abiva Publishing House Inc.', '', '', '', '', '', '', '2023-02-13');

-- --------------------------------------------------------

--
-- Table structure for table `cws`
--

CREATE TABLE `cws` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `employee_id` varchar(15) NOT NULL,
  `name` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL,
  `creation_date` date NOT NULL,
  `old_schedule` varchar(100) NOT NULL,
  `new_schedule` varchar(100) NOT NULL,
  `shift_id` int(11) NOT NULL,
  `reason` varchar(100) NOT NULL,
  `approver1` varchar(100) NOT NULL,
  `approver2` varchar(100) NOT NULL,
  `proxyapprover1` varchar(100) NOT NULL,
  `proxyapprover2` varchar(100) NOT NULL,
  `company_id` int(11) NOT NULL,
  `action_date` date NOT NULL,
  `action_time` time NOT NULL,
  `action` varchar(100) NOT NULL,
  `update_date` date NOT NULL,
  `update_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dm_cashadvances`
--

CREATE TABLE `dm_cashadvances` (
  `id` int(11) NOT NULL,
  `date_advance` date NOT NULL,
  `employee_id` varchar(15) NOT NULL,
  `amount` double NOT NULL,
  `company_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `dm_cashadvances`
--

INSERT INTO `dm_cashadvances` (`id`, `date_advance`, `employee_id`, `amount`, `company_id`) VALUES
(1, '2024-05-15', '4C-0009', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dm_companyloans`
--

CREATE TABLE `dm_companyloans` (
  `id` int(11) NOT NULL,
  `employee_id` varchar(15) NOT NULL,
  `amount` double NOT NULL,
  `interest` double NOT NULL,
  `service_charge` double NOT NULL,
  `net_proceeds` double NOT NULL,
  `description` varchar(200) NOT NULL,
  `cut_off_paid` varchar(100) NOT NULL,
  `cut_off_month` double NOT NULL,
  `remaining_balance` double NOT NULL,
  `company_id` int(11) NOT NULL,
  `created_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `dm_companyloans`
--

INSERT INTO `dm_companyloans` (`id`, `employee_id`, `amount`, `interest`, `service_charge`, `net_proceeds`, `description`, `cut_off_paid`, `cut_off_month`, `remaining_balance`, `company_id`, `created_on`) VALUES
(1, 'supervisor', 100, 2, 100, 202, 'CAR LOAN', '1 Month', 101, 202, 1, '2024-12-19 15:47:30'),
(3, '10111', 100, 6, 200, 306, 'CAR LOAN', '3 Months', 51, 306, 1, '2025-02-10 22:05:01'),
(4, '10111', 100, 6, 200, 306, 'LAB AVAILMENT', '3 Months', 51, 306, 1, '2025-02-10 22:05:01');

-- --------------------------------------------------------

--
-- Table structure for table `dm_govtloans`
--

CREATE TABLE `dm_govtloans` (
  `id` int(11) NOT NULL,
  `employee_id` varchar(15) NOT NULL,
  `amount` double NOT NULL,
  `description` varchar(100) NOT NULL,
  `cut_off_paid` varchar(100) NOT NULL,
  `cut_off_month` double NOT NULL,
  `remaining_balance` double NOT NULL,
  `company_id` int(11) NOT NULL,
  `created_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `dm_govtloans`
--

INSERT INTO `dm_govtloans` (`id`, `employee_id`, `amount`, `description`, `cut_off_paid`, `cut_off_month`, `remaining_balance`, `company_id`, `created_on`) VALUES
(1, '4C-0009', 100, 'SSS SALARY LOAN', '1 Month', 100, 100, 1, '2025-02-07 16:45:32'),
(3, '11012', 100, 'SSS CALAMITY LOAN', '2 Months', 50, 100, 1, '2025-02-10 22:10:55'),
(5, '10613', 100, 'SSS SALARY LOAN', '4 Months', 25, 100, 1, '2025-02-10 22:11:25'),
(7, '30517', 100, 'SSS SALARY LOAN', '1 Month', 100, 100, 1, '2025-02-11 11:28:50'),
(11, '30517', 100, 'SSS CALAMITY LOAN', '2 Months', 50, 100, 1, '2025-02-10 22:10:55'),
(12, '30517', 100, 'PAGIBIG CALAMITY LOAN', '2 Months', 50, 100, 1, '2025-02-10 22:10:55'),
(13, '30517', 100, 'PAGIBIG SALARY LOAN', '2 Months', 50, 100, 1, '2025-02-10 22:10:55');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `employee_id` varchar(15) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `middlename` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `user_role` varchar(50) DEFAULT NULL,
  `empproftype` int(11) DEFAULT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `bdate` date DEFAULT NULL,
  `bplace` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `cstatus` varchar(100) DEFAULT NULL,
  `citizenship` varchar(100) DEFAULT NULL,
  `religion` varchar(100) DEFAULT NULL,
  `language` varchar(100) DEFAULT NULL,
  `bloodtype` varchar(100) DEFAULT NULL,
  `height` varchar(100) DEFAULT NULL,
  `weight` varchar(100) DEFAULT NULL,
  `sss_num` varchar(100) DEFAULT NULL,
  `tin_num` varchar(100) DEFAULT NULL,
  `pi_num` varchar(100) DEFAULT NULL,
  `phil_num` varchar(100) DEFAULT NULL,
  `tel_num` varchar(100) DEFAULT NULL,
  `mobile_num` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `ecp` varchar(100) DEFAULT NULL,
  `etel` varchar(100) DEFAULT NULL,
  `current_num` varchar(100) DEFAULT NULL,
  `current_street` varchar(100) DEFAULT NULL,
  `current_municipality` varchar(100) DEFAULT NULL,
  `current_cityprovince` varchar(100) DEFAULT NULL,
  `current_zipcode` varchar(100) DEFAULT NULL,
  `permanent_num` varchar(100) DEFAULT NULL,
  `permanent_street` varchar(100) DEFAULT NULL,
  `permanent_municipality` varchar(100) DEFAULT NULL,
  `permanent_cityprovince` varchar(100) DEFAULT NULL,
  `permanent_zipcode` varchar(100) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `date_hired` date DEFAULT NULL,
  `date_to` date DEFAULT NULL,
  `regularization_date` date DEFAULT NULL,
  `years_in_service` int(11) DEFAULT NULL,
  `position_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `shift_id` int(11) DEFAULT NULL,
  `is_id` int(11) DEFAULT NULL,
  `costcenter_id` int(11) DEFAULT NULL,
  `payclass_id` int(11) DEFAULT NULL,
  `siteassignment_id` int(11) DEFAULT NULL,
  `basepay` double DEFAULT NULL,
  `basic_allowance` double DEFAULT NULL,
  `user_taxable` double DEFAULT NULL,
  `taxable_percent` double DEFAULT NULL,
  `user_nontaxable` double DEFAULT NULL,
  `nontaxable_percent` double DEFAULT NULL,
  `restday` varchar(50) DEFAULT NULL,
  `factor_days` int(11) DEFAULT NULL,
  `dailyrate` double DEFAULT NULL,
  `hourrate` double DEFAULT NULL,
  `sss_id` int(11) DEFAULT NULL,
  `benefit_1` double DEFAULT NULL,
  `benefit_2` double DEFAULT NULL,
  `benefit_3` double DEFAULT NULL,
  `benefit_4` double DEFAULT NULL,
  `deduction_philhealth` double DEFAULT NULL,
  `deduction_pagibig` double DEFAULT NULL,
  `pagibig_premium` double DEFAULT NULL,
  `bankacc` varchar(100) DEFAULT NULL,
  `sss_contri_employee` double DEFAULT NULL,
  `sss_employee_trigger` int(11) DEFAULT NULL,
  `sss_contri_employer` double DEFAULT NULL,
  `sss_employer_trigger` int(11) DEFAULT NULL,
  `sss_contri_ecc` double DEFAULT NULL,
  `sss_contri_ee` double DEFAULT NULL,
  `sss_contri_er` double DEFAULT NULL,
  `assigned_supervisor_status` int(11) DEFAULT NULL,
  `created_on` date DEFAULT NULL,
  `empid_approvers_status` int(11) DEFAULT NULL,
  `biometric_id` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `employee_id`, `password`, `firstname`, `middlename`, `lastname`, `user_role`, `empproftype`, `photo`, `company_id`, `branch_id`, `bdate`, `bplace`, `gender`, `cstatus`, `citizenship`, `religion`, `language`, `bloodtype`, `height`, `weight`, `sss_num`, `tin_num`, `pi_num`, `phil_num`, `tel_num`, `mobile_num`, `email`, `ecp`, `etel`, `current_num`, `current_street`, `current_municipality`, `current_cityprovince`, `current_zipcode`, `permanent_num`, `permanent_street`, `permanent_municipality`, `permanent_cityprovince`, `permanent_zipcode`, `status`, `date_hired`, `date_to`, `regularization_date`, `years_in_service`, `position_id`, `department_id`, `shift_id`, `is_id`, `costcenter_id`, `payclass_id`, `siteassignment_id`, `basepay`, `basic_allowance`, `user_taxable`, `taxable_percent`, `user_nontaxable`, `nontaxable_percent`, `restday`, `factor_days`, `dailyrate`, `hourrate`, `sss_id`, `benefit_1`, `benefit_2`, `benefit_3`, `benefit_4`, `deduction_philhealth`, `deduction_pagibig`, `pagibig_premium`, `bankacc`, `sss_contri_employee`, `sss_employee_trigger`, `sss_contri_employer`, `sss_employer_trigger`, `sss_contri_ecc`, `sss_contri_ee`, `sss_contri_er`, `assigned_supervisor_status`, `created_on`, `empid_approvers_status`, `biometric_id`) VALUES
(1, 'system_admin', 'password', 'System', '', 'Admin', 'system_admin', 1, 'admin1.jpg', 1, 1, '1975-01-01', '', '', '', '', '', '', '', '', '', '', '', '', '', '12323232232', '12242412421', '', ' 2324424', ' ', ' ', ' ', ' ', ' ', ' ', '22', ' ', ' ', ' ', ' 88421', 'Active', '0000-00-00', '0000-00-00', '0000-00-00', 0, 0, 0, 5, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Monday and Sunday', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '3092870733787', 0, 0, 0, 0, 0, 0, 0, 1, '2024-05-14', NULL, NULL),
(2, 'hr_admin', 'abiva', 'HR', '', 'Admin', 'hr_admin', 1, '4c.jpg', 1, 1, '1975-01-01', '', '', '', '', '', '', '', '', '', '', '', '', '', '  235325235', '  0', 'sdfsg@mail.com', '  ', '234123', '  ', '  ', '  sv', '  ', '  ', '  124124121232', '  ', '  ', '  ', '  ', 'Active', '0000-00-00', '0000-00-00', '0000-00-00', 0, 0, 0, 2, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '5937943268509', 0, 0, 0, 0, 0, 0, 0, 1, '2024-05-14', NULL, NULL),
(3, 'hr_personnel', '1234', 'HR', '', 'Personnel', 'hr_personnel', 1, 'girl.jpg', 1, 1, '1975-01-01', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Active', '0000-00-00', '0000-00-00', '0000-00-00', 0, 0, 0, 5, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '0411104448522', 0, 0, 0, 0, 0, 0, 0, 1, '2024-05-14', NULL, NULL),
(4, '30517', 'password1234', 'Maria Criser', 'Coteng', 'Abad', 'employee', 1, 'HR.png', 1, 1, '1975-01-01', 'Manila', 'Female', 'Single', 'Filipino', 'Roman Catholic', '', '', '', '', '3332470538', '248-356-998', '108000832140', 'Â 070504213909', '', '9178381081', 'scienceteam@abiva.com.ph', '', '', '2968 Int. 11 Rizal Ave. ', 'Sta. Cruz', '', 'Rizal', '1014', '2968 Int. 11 Rizal Ave. ', 'Sta. Cruz', 'Manila', 'Rizal', '1014', 'Active', '2017-06-13', '2025-02-05', '2017-12-13', 6, 25, 14, 3, 1, 0, 2, 0, 34883, 1, 0, 0, 34883, 100, 'Saturday and Sunday', 313, 1341.65, 167.71, 45, 1, 1, 1, 1, 697.66, 200, 0, '4241692744420', 900, 1, 1900, 1, 30, 270, 570, 0, '2024-05-14', NULL, NULL),
(5, '4C-0009', 'password1234', 'Raphaela', 'Matias', 'Matias', 'employee', 1, '', 1, 1, '1975-01-01', 'Legazpi Albay', 'Female', 'Single', 'Filipino', 'Roman Catholic', 'English / Tagalog', 'O', '5\'4', '63', '04-4566198-1', '31799174600', '121223107223', '09-202711349-6', '09516320658', '09616067037', 'da@4corners.com.ph', '', '2231546', '13', 'Jade St.', 'Laguna', 'Binan', '4024', '13', 'Jade St.', 'Laguna', 'Binan', '4024', 'Active', '2024-03-11', '2024-04-11', '2024-04-01', 0, 33, 9, 6, 20, 0, 2, 0, 30000, 0, 0, 0, 0, 0, 'Saturday and Sunday', 313, 0, 0, 53, 0, 0, 0, 0, 0, 0, 0, '9975150683871', 900, 1, 1900, 1, 30, 450, 950, 0, '2024-05-14', NULL, NULL),
(6, '4C-00010', 'test1234', 'Mariecor', 'Unsure', 'Deliverio', 'manager', 1, '', 1, 1, '1975-01-01', 'Dumagueto', 'Female', 'Single', 'Filipino', '', '', '', '', '', 'na', 'na', 'na', 'na', '', '09178852677', 'cor@4corners.com.ph', '', '', 'na', 'na', 'na', 'na', 'na', 'na', 'na', 'na', 'na', 'na', 'Active', '2022-01-01', '2024-04-08', '2022-06-30', 2, 34, 9, 6, 1, 0, 1, 0, 80000, 0, 0, 0, 0, 0, 'Saturday', 313, 0, 0, 53, 0, 0, 0, 0, 0, 0, 0, '7150675493432', 900, 1, 1900, 1, 30, 450, 950, 1, '2024-05-14', NULL, NULL),
(7, 'supervisor', 'abiva', 'Ronnie', 'Heramis', 'Pilarca', 'supervisor', 1, '', 1, 1, '1975-01-01', 'Antique', 'Male', 'Married', 'Filipino', 'Protestant', 'Tagalog', 'O', '5\'4', '63kg', '0378738279', '177014931', '107000741565', 'Â 190894935689', '0271826237', '9338181743', 'rapha@4corners.com.ph', '', '', '0', 'Citrus', 'San Jose Del Monte', 'Bulacan', '3023', '0', 'Citrus', 'San Jose Del Monte', 'Bulacan', '3023', 'Active', '1994-01-01', '2024-04-29', '1994-06-01', 30, 12, 2, 3, 1, 1, 2, 1, 33680, 0, 0, 0, 0, 0, 'Saturday', 313, 0, 0, 53, 0, 0, 0, 0, 0, 0, 0, '5827925722885', 900, 1, 1900, 1, 30, 450, 950, 0, '2024-05-14', NULL, NULL),
(39119, '320', 'password1234', 'Melisa', 'Vergabera', 'Miclat', 'Employee', NULL, NULL, NULL, 0, '1986-01-02', 'Parañaque City', 'Female', 'Married', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3405950464', '252-326-218', '101001255161', '010506314300', '09499965778', '09499965778', 'vergaberamonamelisa@yahoo.com', NULL, NULL, NULL, '819 Tramo St. Manuyo Uno', NULL, 'Las Piñas City', '1744', NULL, NULL, NULL, NULL, NULL, 'Regular', '2014-11-10', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '320'),
(39120, '3849', 'password1234', 'Mickhaella', 'Boñodora', 'Encina', 'Employee', NULL, NULL, NULL, 0, '2000-08-19', 'Parañaque City', 'Female', 'Single', 'Filipino', 'Born Again Christian', NULL, NULL, NULL, NULL, '3520628451', '658-374-922', '121350436670', '082501568402', '09165934530', '09165934530', 'mickhaellaencina777@gmail.com', NULL, NULL, NULL, '249 G. Iemelif Rd. San Nicolas Ii', NULL, 'Bacoor City, Cavite', '4102', NULL, NULL, NULL, NULL, NULL, 'Probationary', '2024-09-30', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3849'),
(39121, '3578', 'password1234', 'Richelle', 'Sahagun', 'Alingog', 'Employee', NULL, NULL, NULL, 0, '1982-08-01', 'Maragondon, Cavite', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3380342265', '226-934-189', '101002894556', '190898994701', '09176049717', '09176049717', 'richelle.alingog@gmail.com', NULL, NULL, NULL, '47 Leningrad St. Phase 3 Bf Homes', NULL, 'Parañaque City', '1718', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-05-15', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3578'),
(39122, '2235', 'password1234', 'Marnie', 'Duyor', 'Suarez', 'Employee', NULL, NULL, NULL, 0, '1978-05-14', 'Cagayan Valley', 'Female', 'Married', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3360660491', '297-151-023', '121014027324', '190894448923', '09475440052', '09475440052', 'suarezmarnie78@gmail.com', NULL, NULL, NULL, 'B1 L56 Cerritos Trails, Molino Iii', NULL, 'Bacoor City, Cavite', '4102', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-01-25', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2235'),
(39123, '2300', 'password1234', 'Marian', 'Mamitag', 'Hilvano', 'Employee', NULL, NULL, NULL, 0, '1992-04-13', 'Pasay City', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3443051503', '323-949-273', '121165555450', '010521520960', '09153168056', '09153168056', 'marianhilvano6@gmail.com', NULL, NULL, NULL, 'B8 L14 Phase 2, Dahlia St. Soldiers Hills Iv, Molino Vi', NULL, 'Bacoor City, Cavite', '4102', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-04-20', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2300'),
(39124, '3638', 'password1234', 'Satuki', 'Aljibe', 'Tanaka', 'Employee', NULL, NULL, NULL, 0, '2000-05-08', 'Parañaque City', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '0646124379', '633-315-243', '121323949335', '132518744538', '09683576742', '09683576742', 'satukitanaka08@gmail.com', NULL, NULL, NULL, 'B28 L11 Antequera St. Montefaro West Village, Alapan I-B', NULL, 'Imus City, Cavite', '4103', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-07-24', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3638'),
(39125, '3728', 'password1234', 'Asel Joy', 'Manugas', 'Guinoo', 'Employee', NULL, NULL, NULL, 0, '1982-08-01', 'Maragondon, Cavite', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3525251959', '641-077-881', '121319000556', '010266103269', '09354949067', '09354949067', 'guinooaseljoy@gmail.com', NULL, NULL, NULL, 'B14 L11 Phase 1 Christ The King Subd. Talon Kwatro', NULL, 'Las Piñas City', '1747', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-02-05', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3728'),
(39126, '3856', 'password1234', 'Itchi Ann Denniece', 'Bono', 'Aquino', 'Employee', NULL, NULL, NULL, 0, '2001-06-03', 'Biñan, Laguna', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3534583362', '659-770-987', '121351855071', '080269419958', '09369482843', '09369482843', 'aquinoitchiann@gmail.com', NULL, NULL, NULL, '583 A. Mabini St. Poblacion 4', NULL, 'Indang, Cavite', '4122', NULL, NULL, NULL, NULL, NULL, 'Probationary', '2024-10-14', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3856'),
(39127, '3446', 'password1234', 'Ma Theresa', 'Senaon', 'Madelo', 'Employee', NULL, NULL, NULL, 0, '1980-12-05', 'Pasay City', 'Female', 'Single', 'Filipino', 'Born Again Christian', NULL, NULL, NULL, NULL, '3354693759', '244-977-388', '121019120791', '080505486068', '09281966842', '09281966842', 'asereth672@gmail.com', NULL, NULL, NULL, '1385 Mangga St. Caa Phase I - B', NULL, 'Las Piñas City', '1740', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-11-07', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3446'),
(39128, '3554', 'password1234', 'Christine', 'Chapla', 'Lahina', 'Employee', NULL, NULL, NULL, 0, '1991-12-26', 'Ifugao', 'Female', 'Single', 'Filipino', 'Iglesia Ni Cristo', NULL, NULL, NULL, NULL, '3462176692', '332-149-992', '121176214225', '042504654642', '09312070819', '09312070819', 'tinla2891@gmail.com', NULL, NULL, NULL, '363 Mla St. Purok 5, Llamera Compound, Lower Bicutan', NULL, 'Taguig City', '1631', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-04-11', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3554'),
(39129, '3589', 'password1234', 'Rene Jay', 'Dafon', 'Jimenez', 'Employee', NULL, NULL, NULL, 0, '1985-06-19', 'Cotabato', 'Male', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '0938733711', '285-215-718', '121150572482', '160253186620', '09161986376', '09161986376', 'renejaydjimenez@gmail.com', NULL, NULL, NULL, 'Unit F 2580 Santos Compound, Naga Rd., Pulanglupa Uno', NULL, 'Las Piñas City', '1742', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-06-05', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3589'),
(39130, '3595', 'password1234', 'Grazella Eunice', 'Badeo', 'Seguido', 'Employee', NULL, NULL, NULL, 0, '1992-01-20', 'Parañaque City', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3491161542', '514-130-634', '121274853824', '010523891559', '09524774981', '09524774981', 'ge.seguido1@gmail.com', NULL, NULL, NULL, '61 Geneva St. Bf Homes Phase 3', NULL, 'Parañaque City', '1720', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-06-13', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3595'),
(39131, '3750', 'password1234', 'Ericka Mae', NULL, 'Domino', 'Employee', NULL, NULL, NULL, 0, '2000-09-29', 'Manila', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3529823286', '647-578-835', '121339153955', '082505895416', '09158114159', '09158114159', 'erickadominooo03@gmail.com ', NULL, NULL, NULL, 'B3 L9 Greenvillas Phase 1 Buhay Na Tubig', NULL, 'Imus City, Cavite', '4103', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-04-01', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3750'),
(39132, '2023', 'password1234', 'Angelica', 'Cabanos', 'Satparam', 'Employee', NULL, NULL, NULL, 0, '1996-06-08', 'Iriga City', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3458666792', '500-736-574', '121271026111', '080261330389', '09489046343', '09489046343', 'angelicasatparam@gmail.com', NULL, NULL, NULL, '0084 Purok 1, San Roque', NULL, 'San Pedro City, Laguna', '4023', NULL, NULL, NULL, NULL, NULL, 'Regular', '2020-10-28', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023'),
(39133, '3614', 'password1234', 'Shojin Mae', 'De Asis', 'Lavaro', 'Employee', NULL, NULL, NULL, 0, '1987-02-21', 'Manila', 'Female', 'Married', 'Filipino', 'Born Again Christian', NULL, NULL, NULL, NULL, '3395386054', '248-251-291', '121131310592', '010505503118', '09568909845', '09568909845', 'sheenhizon21@gmail.com', NULL, NULL, NULL, '7 St. James Ave. Lopez Village, Bf', NULL, 'Parañaque City', '1700', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-07-10', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3614'),
(39134, '3772', 'password1234', 'Kimuel', 'Labanon', 'Lozano', 'Employee', NULL, NULL, NULL, 0, '1996-03-17', 'Pampanga', 'Female', 'Married', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3450689751', '348-743-140', '121141938383', '010257623144', '09930801604', '09930801604', 'labanonkim@gmail.com', NULL, NULL, NULL, 'B28 L46 Mahogany St. Soldiers Hills Iv, Molino Vi', NULL, 'Bacoor City, Cavite', '4102', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-04-15', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3772'),
(39135, '3797', 'password1234', 'Marife', 'Maurillo', 'Hutalla', 'Employee', NULL, NULL, NULL, 0, '1992-07-01', 'Naga City', 'Female', 'Married', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '0426469636', '650-682-944', '121197889999', '010261305734', '09946223803', '09946223803', 'marifehutalla070192@gmail.com', NULL, NULL, NULL, '#14 Taurus St. Pamplona Dos', NULL, 'Las Piñas City', '1740', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-05-27', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3797'),
(39136, '266', 'password1234', 'Jenny', 'Tongol', 'Dela Peña', 'Employee', NULL, NULL, NULL, 0, '1980-07-16', 'Masbate', 'Female', 'Married', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3387874626', '233-184-759', '108000326603', '190903364061', '09171789500', '09171789500', 'jenny.delapena@nwdi.com.ph', NULL, NULL, NULL, 'Unit 1227 Avida Towers Intima, Zulueta St., Brgy. 678, Paco, Manila', NULL, 'Manila', '1007', NULL, NULL, NULL, NULL, NULL, 'Regular', '2003-11-12', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '266'),
(39137, '3866', 'password1234', 'Edralyn', 'Romeroso', 'Lamac', 'Employee', NULL, NULL, NULL, 0, '1994-11-14', 'Marinduque', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '0429178144', '453-069-415', '121118241899', '080257660722', '09281425613', '09281425613', 'lamacedralyn14@gmail.com', NULL, NULL, NULL, '1870 Sh Loyola, Sampaloc, Manila', NULL, 'Manila', '1008', NULL, NULL, NULL, NULL, NULL, 'Probationary', '2024-10-21', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3866'),
(39138, '2347', 'password1234', 'Charhyz', 'Villena', 'Pascual', 'Employee', NULL, NULL, NULL, 0, '1998-11-23', 'Isabela', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3505257397', '610-474-509', '121283072297', '020274508982', '09684318371', '09684318371', 'pascualcharhyz98@yahoo.com', NULL, NULL, NULL, '1762 Unit D 4Th Floor Quiricada Street, Brgy. 323, Manila', NULL, 'Manila', '1003', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-06-06', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2347'),
(39139, '2194', 'password1234', 'Desilee', 'Tiongson', 'Pascual', 'Employee', NULL, NULL, NULL, 0, '1969-12-18', 'Manila', 'Female', 'Divorced', 'Filipino', 'Islam', NULL, NULL, NULL, NULL, '3312855144', '152-970-711', '121100073423', '190252648252', '9323687170', '9323687170', 'sameerahdes@gmail.com', NULL, NULL, NULL, 'Old 16A New20, Sta. Ana St., Sto. Rosario Village, Baritan, Malabon ', NULL, 'Manila', '1420', NULL, NULL, NULL, NULL, NULL, 'Regular', '2021-10-07', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2194'),
(39140, '3593', 'password1234', 'Wilbert', 'Valdez', 'Kong', 'Employee', NULL, NULL, NULL, 0, '1996-05-17', 'Caloocan', 'Male', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3490261663', '382-682-710', '121274767007', '020512346155', '09687319842', '09687319842', 'wilbertkong18@gmail.com', NULL, NULL, NULL, '112 Ignacio St., Barangay 75 Pasay', NULL, 'Pasay', '1300', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-06-13', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3593'),
(39141, '3640', 'password1234', 'Carl John ', 'Lacson', 'Ramos', 'Employee', NULL, NULL, NULL, 0, '1999-05-19', 'Dagupan City', 'Male', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '0249331925', '723-336-575', '121322512074', '052514072035', '09216551678', '09216551678', 'johncarlramos21@yahoo.com', NULL, NULL, NULL, '838 Kb Arizona Tower, P. Campa St., Manila', NULL, 'Manila', '1008', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-07-31', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3640'),
(39142, '3652', 'password1234', 'Norshima', 'Panda-ag', 'Alinog', 'Employee', NULL, NULL, NULL, 0, '1998-04-28', 'Lumbatan, Lanao Del Sur', 'Female', 'Single', 'Filipino', 'Islam', NULL, NULL, NULL, NULL, '3495793725', '397-192-402', '121284501352', '022517328530', '09177950518', '09177950518', 'alinognorshima28@gmail.com', NULL, NULL, NULL, '2345 Concha St., San Andres Bukid, Manila', NULL, 'Manila', '1017', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-08-07', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3652'),
(39143, '3673', 'password1234', 'Alliah ', 'Santiago', 'Merez', 'Employee', NULL, NULL, NULL, 0, '1997-07-07', 'Romblon', 'Female', 'Single', 'Filipino', 'Christian', NULL, NULL, NULL, NULL, '3497611876', '389-040-384', '121275268292', '020274791064', '09519960543', '09519960543', 'aleyaaaaaaangmerez@gmail.com', NULL, NULL, NULL, '851 Gerardo St., Sampaloc, Manila', NULL, 'Manila', '1008', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-08-29', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3673'),
(39144, '3698', 'password1234', 'Denielle Ella', 'Pitargue', 'Adobo', 'Employee', NULL, NULL, NULL, 0, '2000-02-10', 'Samar', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3521631272', '613-648-701', '121304099415', '020274072556', '09270115961', '09270115961', 'deniellaadobo2@gmail.com', NULL, NULL, NULL, '1500 A&P Building, Perdigon Street, Barangay 682, Paco, Manila', NULL, 'Manila', '1007', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-10-09', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3698'),
(39145, '3841', 'password1234', 'Gwyneth Marianne', 'Bañares', 'Cruz', 'Employee', NULL, NULL, NULL, 0, '2000-12-06', 'Quezon City', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '0253000747', '657-989-365', '121349314200', '072505023723', '09065887763', '09065887763', 'gwynethmariannec@gmail.com', NULL, NULL, NULL, '2587 Vista Taft Residences, Taft Avenue, Barangay 709, Manila', NULL, 'Manila', '1004', NULL, NULL, NULL, NULL, NULL, 'Probationary', '2024-09-02', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3841'),
(39146, '260', 'password1234', 'Clarissa', 'Tan', 'De Castro', 'Employee', NULL, NULL, NULL, 0, '1987-09-18', 'Lucena City', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3422321306', '409-502-466', '121108012019', '030511418751', '09167309296', '09167309296', 'clarissadecastro918@gmail.com', NULL, NULL, NULL, '220 Dr. Alejos St., Brgy Paang Bundok, La Loma, Quezon City', NULL, 'Quezon City ', '1114', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-06-11', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '260'),
(39147, '748', 'password1234', 'Magdalena', 'Anzia', 'Talang', 'Employee', NULL, NULL, NULL, 0, '1989-10-31', '                     Tuguegarao City', '                Female', '              Married', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '0127191821', '314-129-829', '121208618793', '062012741214', '09543943449', '09543943449', 'magzanzia31@gmail.com', NULL, NULL, NULL, '27A Narra St., Capatan, Tuguegarao City', NULL, 'Tuguegarao City, Cagayan ', '1400', NULL, NULL, NULL, NULL, NULL, 'Regular', '2017-09-11', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '748'),
(39148, '3500', 'password1234', 'Kathleen Naomi', 'Tapia', 'Bitong', 'Employee', NULL, NULL, NULL, 0, '1998-08-14', 'Dasmariñas Cavite', 'Female', 'Married', 'Filipino', 'Baptist', NULL, NULL, NULL, NULL, '3524217813', '624-620-763', '121314428758', '212010301308', '09289268221', '09289268221', 'katbitong@gmail.com', NULL, NULL, NULL, '3876 Dangal St., Brgy 617, Bacood, Sta. Mesa, Metro Manila', NULL, 'Sta. Mesa Metro Manila', '1008', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-02-06', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3500'),
(39149, '3848', 'password1234', 'Marjorie', 'Ambaic', 'Villas ', 'Employee', NULL, NULL, NULL, 0, '1995-10-26', 'Calugusan Lamitan City, Basilan', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '0448613884', '659-380-009', '121286488298', '202501507794', '09164240298', '09164240298', 'mvillas182@gmail.com', NULL, NULL, NULL, '1408 Vbk Building Geliños Street, Brgy. 342, Sta.Cruz, Manila ', NULL, 'Manila', '1003', NULL, NULL, NULL, NULL, NULL, 'Probationary', '2024-09-23', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3848'),
(39150, '990', 'password1234', 'Pauline Angelica', 'Menor', 'Datiles', 'Employee', NULL, NULL, NULL, 0, '1997-11-28', 'Echague, Isabela', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3488043709', '756-294-354', '121258710441', '062518188408', '09760114725', '09760114725', 'paulineangelicadatiles@gmail.com ', NULL, NULL, NULL, '2017N Rivergreen Residenses, Pedro Gil Street, Santa Ana, Manila', NULL, 'Manila', '1009', NULL, NULL, NULL, NULL, NULL, 'Regular', '2019-10-03', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '990'),
(39151, '3863', 'password1234', 'Norlainie', 'Mipangkat', 'Tanog', 'Employee', NULL, NULL, NULL, 0, '1996-07-07', 'Iligan City', 'Female', 'Married', 'Filipino', 'Islam', NULL, NULL, NULL, NULL, '3524328553', '621-208-026', '121314879532', '010268597552', '09357858626', '09357858626', 'tanognorlainie@gmail.com', NULL, NULL, NULL, '4557 Casino St., Brgy. Palanan, Makati City', NULL, 'Makati City', '1235', NULL, NULL, NULL, NULL, NULL, 'Probationary', '2024-10-21', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3863'),
(39152, '3876', 'password1234', 'Hiyasmin', 'Gulle', 'Carungay', 'Employee', NULL, NULL, NULL, 0, '1973-01-16', 'Quezon City', 'Female', 'Married', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3319988315', '904-509-901', '121000092125', '192008803850', '09157175979', '09157175979', 'carungayhiyasmin@gmail.com', NULL, NULL, NULL, '184-A1 20Th Ave. East Rembo, Taguig City', NULL, 'Taguig City', '1643', NULL, NULL, NULL, NULL, NULL, 'Probationary', '2024-11-18', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3876'),
(39153, '676', 'password1234', 'Neliza', 'Gammuas', 'Corpuz', 'Employee', NULL, NULL, NULL, 0, '1984-03-19', 'Gattaran Cagayan', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3409376879', '336-289-140', '121195778841', '020507488014', '09214332621', '09214332621', 'nelizacorpuz2010@gmail.com', NULL, NULL, NULL, 'Block 1, Lot 12A, Violago Homes Subd., Bagong Silangan, Quezon City', NULL, 'Quezon City', '1119', NULL, NULL, NULL, NULL, NULL, 'Regular', '2017-04-07', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '676'),
(39154, '845', 'password1234', 'Dina', 'Bautista', 'Naboya', 'Employee', NULL, NULL, NULL, 0, '1981-10-16', 'Manila', 'Female', 'Annulled', 'Filipino', 'Born Again Christian', NULL, NULL, NULL, NULL, '3362922894', '303-617-218', '101003088804', '190894792713', '09298817369', '09298817369', 'dina_fabia@yahoo.com', NULL, NULL, NULL, 'Block 8, Lot 3, Woodcress Phase 2, Lancaster New City, Bgry. Tapia, General Trias, Cavite', NULL, 'General Trias, Cavite', '4107', NULL, NULL, NULL, NULL, NULL, 'Regular', '2018-06-29', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '845'),
(39155, '1047', 'password1234', 'Maria Bernadeth', 'Espenida', 'Galvez', 'Employee', NULL, NULL, NULL, 0, '1989-08-30', 'Manila', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3424872222', '463-752-044', '121083789739', '030251848374', '09509504466', '09509504466', 'badeth0830@gmail.com', NULL, NULL, NULL, '18 Halcon I, Brgy. Santa Teresita, Quezon City', NULL, 'Quezon City', '1119', NULL, NULL, NULL, NULL, NULL, 'Regular', '2020-07-20', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1047'),
(39156, '3692', 'password1234', 'Desiree Joy', 'Nas', 'Bermas', 'Employee', NULL, NULL, NULL, 0, '2001-03-06', 'San Juan Manila', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3528013110', '605-627-905', '121329011369', '022536417404', '09623176598', '09623176598', 'desireenas0306@gmail.com', NULL, NULL, NULL, '1236 A Craig St., Sampaloc, Manila', NULL, 'Metro Manila', '1008', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-10-02', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3692'),
(39157, '3864', 'password1234', 'Hershey Miles', 'Martinez', 'Vinuya', 'Employee', NULL, NULL, NULL, 0, '2000-06-15', 'Manila', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3523289075', '385-808-903', '121310944775', '022501392468', '09067673678', '09067673678', 'hersheyvinuya@gmail.com', NULL, NULL, NULL, '120 E D. Aquino St., Grace Park West, Caloocan City', NULL, 'Caloocan City', '1405', NULL, NULL, NULL, NULL, NULL, 'Probationary', '2024-10-21', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3864'),
(39158, '806', 'password1234', 'Victor ', 'Buenviaje', 'Ramilo', 'Employee', NULL, NULL, NULL, 0, '1994-09-19', 'Batangas City ', 'Male', 'Single', 'Filipino', 'Iglesia ni Cristo ', NULL, NULL, NULL, NULL, '3458696791', '483-573-002', '121169069841', '020266984201', '09478566421', '09478566421', 'victor.ramilo@nwdi.com.ph', NULL, NULL, NULL, '#5151 San Gregorio St., Gen. T. De Leon, Valenzuela City', NULL, 'Valenzuela', '1442', NULL, NULL, NULL, NULL, NULL, NULL, '2018-03-05', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '806'),
(39159, '3843', 'password1234', 'Margie', 'Ayala', 'Bolima', 'Employee', NULL, NULL, NULL, 0, '1973-09-28', 'Pagbilao, Quezon', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3320371018', '201-558-444', '109001950063', '190514191895', '09156183819', '9156183819', 'margie.bolima@nwdi.com.ph', NULL, NULL, NULL, '3206 East Tower Lumiere Residences Bagong Ilog, Pasig City', NULL, 'Pasig City', '1600', NULL, NULL, NULL, NULL, NULL, 'Probationary', '2024-09-09', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3843'),
(39160, '3760', 'password1234', 'Rochelle', 'Franco', 'Reyes', 'Employee', NULL, NULL, NULL, 0, '1985-08-08', 'Taguig City', 'Female ', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3487652609', '748-530-688', '121249251867', '010264573217', '09653782968', '9653782968', 'chellefrancoreyeees@gmail.com', NULL, NULL, NULL, '258 Manuel L Quezon St. Hagonoy Taguig City', NULL, 'Taguig City', '1630', NULL, NULL, NULL, NULL, NULL, 'Probationary', '2024-09-30', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3760'),
(39161, '3721', 'password1234', 'Samuel', 'Habig', 'Orolfo', 'Employee', NULL, NULL, NULL, 0, '1998-04-01', 'Mandaluyong City', 'Male', 'Singe', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3521644353', '614-504-689', '121304416403', '022515675640', '09173175018', '09173175018', 'shorolfo@gmail.com', NULL, NULL, NULL, '719 Agudo Street Barangka Drive Mandaluyong City', NULL, 'Mandaluyong City', '1550', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-01-22', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3721'),
(39162, '2129', 'password1234', 'Manny', 'Garunay', 'Simangan', 'Employee', NULL, NULL, NULL, 0, '1987-12-14', 'Cagayan Valley', 'Male', 'Married', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3423908511', '405-764-238', '121016648093', '010511906380', '09973059921', '9973059921', 'ynnamanagnamis@yahoo.com', NULL, NULL, NULL, '32 C Sgt. Pascua St. Bagong Ilog', NULL, 'Pasig City', '1600', NULL, NULL, NULL, NULL, NULL, 'Regular', '2021-05-10', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2129'),
(39163, '3586', 'password1234', 'Catherine Joy', 'Reginio', 'Salonga', 'Employee', NULL, NULL, NULL, 0, '2000-05-23', 'Pasig City', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3524925309', '633-330-162', '121320185072', '010266603628', '09281901990', '9281901990', 'catherinesalonga23@gmail.com', NULL, NULL, NULL, '41 R Valdez St. Bagong Ilog ', NULL, 'Pasig City', '1600', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-05-29', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3586'),
(39164, '3775', 'password1234', 'Loren Aura Jonedine', 'Cuison', 'Dasalla', 'Employee', NULL, NULL, NULL, 0, '1988-12-21', 'Rizal', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3509376753', '376-893-383', '121293189614', '062504228288', '09565405476', '9565405476', 'lajdasalla@gmail.com', NULL, NULL, NULL, '181-I 25Th Ave. Brgy. East Rembo', NULL, 'Taguig City', '1643', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-04-15', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3775'),
(39165, '2118', 'password1234', 'Irene Ross', 'Thiam', 'Taboy', 'Employee', NULL, NULL, NULL, 0, '1997-06-06', 'Nueva Vizcaya', 'Femaile', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3479273850', '356-688-892', '121235934779', '010263714860', '09567517829', '9567517829', 'irenerossthiam@gmail.com', NULL, NULL, NULL, 'Diamond Tower, Mariveles St. Highway Hills Mandaluyong City', NULL, 'Mandaluyong City', '1550', NULL, NULL, NULL, NULL, NULL, 'Regular', '2021-04-28', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2118'),
(39166, '2383', 'password1234', 'Kim', 'Añano', 'Jabinal', 'Employee', NULL, NULL, NULL, 0, '1992-05-05', 'Motiong Samar', 'Male', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3479484432', '707-776-312', '121237600816', '030263551210', '09516685837', '9516685837', 'jabinalkim8@gmail.com', NULL, NULL, NULL, '9D 6Th Avenue Brgy Socorro Murphy', NULL, 'Cubao Quezon City', '1138', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-07-18', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2383'),
(39167, '3515', 'password1234', 'Rosenette', 'Guitering', 'Lim', 'Employee', NULL, NULL, NULL, 0, '1995-01-16', 'Pasig City', 'Female', 'Married', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3462649462', '331-698-622', '121182253901', '062503743456', '09776140093', '09776140093', 'limrosenette@gmail.com', NULL, NULL, NULL, 'B9G L10 Kaunlaran Village Caloocan city ', NULL, 'Valenzuela', '1409', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-02-20', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3515'),
(39168, '2119', 'password1234', 'Ceejay', 'Bonifacio', 'Banal', 'Employee', NULL, NULL, NULL, 0, '1998-09-22', 'Pasig City', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3463081676', '392-728-832', '121282107752', '010259216104', '09758011088', '9758011088', 'ceejaybanal922@gmail.com', NULL, NULL, NULL, '3905 G. Guinto St. Pinagbuhatan', NULL, 'Pasig City', '1602', NULL, NULL, NULL, NULL, NULL, 'Regular', '2021-04-28', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2119'),
(39169, '3718', 'password1234', 'Lindsey Anne', 'Aromin', 'Mariano', 'Employee', NULL, NULL, NULL, 0, '2001-05-10', 'Cabanatuan City', 'Female', 'Single', 'Filipino', 'Penticost', NULL, NULL, NULL, NULL, '0250539978', '640-857-314', '121333420007', '212511642989', '09931314825', '9931314825', 'marianolindseyanne@gmail.com', NULL, NULL, NULL, '1152 Bernales St. Rosario', NULL, 'Pasig City', '1600', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-01-22', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3718'),
(39170, '3892', 'password1234', 'Farshada', 'Mandangan', 'Abi', 'Employee', NULL, NULL, NULL, 0, '1996-10-19', 'Zamboanga del Sur', 'Female', 'Single', 'Filipino', 'Islam', NULL, NULL, NULL, NULL, '10-1525372-8', '439-665-437', '1213-5658-8483', '14-251334497-9', '09709507865', '09709507865', 'farshadaabi@gmail.com', NULL, NULL, NULL, 'Gastambide St. Legarda Manila', NULL, 'Manila', '1008', NULL, NULL, NULL, NULL, NULL, 'Probationary', '2025-01-27', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3892'),
(39171, '2042', 'password1234', 'Maria Angela', 'Vidal', 'Sanchez', 'Employee', NULL, NULL, NULL, 0, '1997-12-20', 'Manila ', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3475250880', '386-160-318', '121224109412', '080264495818', '09355348579', '9355348579', 'anggesanchez30@gmail.com', NULL, NULL, NULL, 'Diamond Tower, Mariveles St. Highway Hills Mandaluyong City', NULL, 'Mandaluyong City', '1550', NULL, NULL, NULL, NULL, NULL, 'Regular', '2020-12-08', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2042'),
(39172, '165', 'password1234', 'Evonne', 'Dy', 'Makanas', 'Employee', NULL, NULL, NULL, 0, '1978-09-26', 'Bangkok, Thailand', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3340060642', '212-749-255', '108000325048', '190903364940', '09667780848', '9667780848', 'evonnedy@gmail.com', NULL, NULL, NULL, '516 M.V. Delos Santos Street Unit 502 Sampaloc Manila', NULL, 'Sampaloc Manila', '1008', NULL, NULL, NULL, NULL, NULL, 'Regular', '2003-01-04', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '165'),
(39173, '146', 'password1234', 'Elvie', 'Monterubio', 'Panganiban', 'Employee', NULL, NULL, NULL, 0, '1987-04-19', 'Quezon City', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3316211603', '200-599-960', '108000314961', '190903365017', '09054858114', '9054858114', 'elviepanganiban19@yahoo.com', NULL, NULL, NULL, '7 Parklane St. Bgry. Sangandaan Gsis Vill. Proj. 8 Quezon City', NULL, 'Quezon City', '1106', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-03-04', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '146'),
(39174, '3592', 'password1234', 'Jayrelyn', 'Enorio', 'Luces', 'Employee', NULL, NULL, NULL, 0, '1987-01-07', 'Limay Bataan ', 'Female ', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3499460067', '633-292-091', '121318864791', '072501158527', '09673695592', '9673695592', 'jyrlynlcs@gmail.com', NULL, NULL, NULL, '1 F General Atienza St. San Antonio', NULL, 'Pasig City ', '1600', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-06-13', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3592'),
(39175, '3754', 'password1234', 'Sherba', 'Usban', 'Basar', 'Employee', NULL, NULL, NULL, 0, '1994-09-18', 'Jolo Sulu', 'Female', 'Married', 'Filipino', 'Muslim', NULL, NULL, NULL, NULL, '1013737822', '539-120-543', '121268060006', '140253133968', '09664518160', '9664518160', 'basarsherba@gmail.ccom', NULL, NULL, NULL, '1229 Concepcion St. Brgy 470 ', NULL, 'Sampaloc Manila', '1000', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-04-01', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3754'),
(39176, '2149', 'password1234', 'Melvin', 'Reyes', 'Tacugue', 'Employee', NULL, NULL, NULL, 0, '1998-12-17', 'Zamboanga Sibugay City', 'Male', 'Married', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '1013120617', '373-714-855', '121249603200', '140252985014', '09074792955', '9074792955', 'melvin.tacugue@nwdi.com.ph', NULL, NULL, NULL, '25 Korea St. Brgy. Nangka, Marikina City', NULL, 'Marikina City', '1808', NULL, NULL, NULL, NULL, NULL, 'Regular', '2021-06-03', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2149'),
(39177, '2246', 'password1234', 'Joy', 'Fernandez', 'Valdez', 'Employee', NULL, NULL, NULL, 0, '1988-10-09', 'Dagupan City', 'Female', 'Married', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '0234754232', '323-339-095', '121113454855', '050253451723', '09317933229', '09317933229', 'joy.gatpo@nwdi.com.ph', NULL, NULL, NULL, '61 Pantal Dist.', NULL, 'Dagupan City', '2400', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-02-16', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2246'),
(39178, '2226', 'password1234', 'Daizyree', 'Ramos', 'Avelino', 'Employee', NULL, NULL, NULL, 0, '1993-12-04', 'Dagupan City', 'Female', 'Single', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '0242387468', '763-609-389', '121231551948', '052525686310', '09485103448', '09485103448', 'cute_daizyree@yahoo.com', NULL, NULL, NULL, '21 Lasip Grande', NULL, 'Dagupan City', '2400', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-01-05', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2226'),
(39179, '2227', 'password1234', 'Imelda', 'Romero', 'Dela Cruz', 'Employee', NULL, NULL, NULL, 0, '1966-12-17', 'Dagupan City', 'Female', 'Single', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '0209967562', '168-801-104', '121006402219', '050500592017', '09204159587', '09204159587', 'irdcmel17@yahoo.com', NULL, NULL, NULL, '217 Pantal West', NULL, 'Dagupan City', '2400', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-01-05', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2227'),
(39180, '2259', 'password1234', 'Mary Grace', NULL, 'Centino', 'Employee', NULL, NULL, NULL, 0, '1995-02-11', 'Dagupan City', 'Female', 'Single', 'Filipino', 'Christian', NULL, NULL, NULL, NULL, '0235498283', '725-117-224', '121283904377', '050258101437', '09487166614', '09487166614', 'mgcf.klebsi@gmail.com', NULL, NULL, NULL, '268 Salaan ', NULL, 'Mangaldan', '2432', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-02-15', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2259'),
(39181, '2386', 'password1234', 'Jeanette', 'De Guzman', 'Biado', 'Employee', NULL, NULL, NULL, 0, '1966-12-17', 'Mangaldan City', 'Female', 'Single', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '0244632894', '723-816-216', '121249108811', '050257087856', '09661884313', '09661884313', 'jeanettebiado16@gmail.com', NULL, NULL, NULL, '199 Malabago', NULL, 'Mangaldan', '2432', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-07-18', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2386');
INSERT INTO `employees` (`id`, `employee_id`, `password`, `firstname`, `middlename`, `lastname`, `user_role`, `empproftype`, `photo`, `company_id`, `branch_id`, `bdate`, `bplace`, `gender`, `cstatus`, `citizenship`, `religion`, `language`, `bloodtype`, `height`, `weight`, `sss_num`, `tin_num`, `pi_num`, `phil_num`, `tel_num`, `mobile_num`, `email`, `ecp`, `etel`, `current_num`, `current_street`, `current_municipality`, `current_cityprovince`, `current_zipcode`, `permanent_num`, `permanent_street`, `permanent_municipality`, `permanent_cityprovince`, `permanent_zipcode`, `status`, `date_hired`, `date_to`, `regularization_date`, `years_in_service`, `position_id`, `department_id`, `shift_id`, `is_id`, `costcenter_id`, `payclass_id`, `siteassignment_id`, `basepay`, `basic_allowance`, `user_taxable`, `taxable_percent`, `user_nontaxable`, `nontaxable_percent`, `restday`, `factor_days`, `dailyrate`, `hourrate`, `sss_id`, `benefit_1`, `benefit_2`, `benefit_3`, `benefit_4`, `deduction_philhealth`, `deduction_pagibig`, `pagibig_premium`, `bankacc`, `sss_contri_employee`, `sss_employee_trigger`, `sss_contri_employer`, `sss_employer_trigger`, `sss_contri_ecc`, `sss_contri_ee`, `sss_contri_er`, `assigned_supervisor_status`, `created_on`, `empid_approvers_status`, `biometric_id`) VALUES
(39182, '3474', 'password1234', 'Jonah', 'Cadile', 'Castro', 'Employee', NULL, NULL, NULL, 0, '1995-03-29', 'Dagupan City', 'Female', 'Single', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '0241200818', '333-207-144', '121187929106', '050255999726', '09661655530', '09661655530', 'kwonjonah15@gmail.com', NULL, NULL, NULL, '193 Malabago', NULL, 'Calasiao', '2418', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-12-05', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3474'),
(39183, '3486', 'password1234', 'Maria Antonete', 'Mallari', 'Rodas', 'Employee', NULL, NULL, NULL, 0, '1997-10-12', 'Dagupan City', 'Female', 'Single', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '3489168751', '608-973-244', '121262119455', '052512944329', '09207209006', '09207209006', 'tonette2012012@gmail.com', NULL, NULL, NULL, '0074 Sitio Puelay Caranglaan', NULL, 'Mangaldan', '2432', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-01-09', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3486'),
(39184, '3427', 'password1234', 'Auniely Joy', 'Gacula', 'Idanan', 'Employee', NULL, NULL, NULL, 0, '1993-11-09', 'Dagupan City', 'Female', 'Married', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '0240031208', '616-349-825', '121159493840', '020266216271', '09260741911', '09260741911', 'yleinalucag@gmail.com', NULL, NULL, NULL, '344 Malabago', NULL, 'Mangaldan', '2432', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-10-03', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3427'),
(39185, '3426', 'password1234', 'Garry', 'Rosario', 'Dela Cruz', 'Employee', NULL, NULL, NULL, 0, '1985-01-12', 'San Carlos City', 'Male', 'Married', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '0225420258', '273-698-378', '128000024035', '050501313286', '09608574993', '09608574993', 'garrydc64@gmail.com', NULL, NULL, NULL, '154 Nansangaan Agdao', NULL, 'San Carlos City', '2420', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-10-03', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3426'),
(39186, '3495', 'password1234', 'Alison', 'Tamondong', 'Posadas', 'Employee', NULL, NULL, NULL, 0, '1999-01-10', 'San Carlos City', 'Female', 'Single', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '0129455992', '755-911-764', '121257894524', '052517044210', '09567057323', '09567057323', 'alisonposadas1999@gmail.com', NULL, NULL, NULL, '247 Talang ', NULL, 'San Carlos City', '2420', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-01-23', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3495'),
(39187, '3494', 'password1234', 'Mary Queen', 'Gomez', 'Cruz', 'Employee', NULL, NULL, NULL, 0, '1998-03-30', 'Quezon City Manila', 'Female', 'Single', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '0245937501', '727-198-085', '121313231322', '050258668763', '09919450292', '09919450292', 'maryqueencruz@gmail.com', NULL, NULL, NULL, '86 Malimpec', NULL, 'Bayambang Pangasinan', '2423', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-01-23', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3494'),
(39188, '3436', 'password1234', 'Mary Grace ', 'Cuison', 'Domalanta', 'Employee', NULL, NULL, NULL, 0, '1993-03-22', 'San Carlos City', 'Female', 'Married', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '0236813472', '456-821-685', '121119868371', '050502472116', '09103096930', '09103096930', 'domalantagracecuison@gmail.com', NULL, NULL, NULL, 'Malabago ', NULL, 'Calasiao', '2418', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-10-17', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3436'),
(39189, '3621', 'password1234', 'Pauline Mae', 'Doctolera', 'Manganaan', 'Employee', NULL, NULL, NULL, 0, '1999-01-06', 'San Fabian Pangasinan', 'Female', 'Single', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '3476378758', '732-656-714', '121227277512', '050256367162', '09927159288', '09927159288', 'paumanganaan@gmail.com', NULL, NULL, NULL, '27 Galvan St Brgy Iv', NULL, 'Dagupan City', '2400', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-07-10', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3621'),
(39190, '3885', 'password1234', 'Lea', 'Ferrer', 'Garcia', 'Employee', NULL, NULL, NULL, 0, '1996-11-06', 'San Carlos City', 'Female', 'Single', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '3516561506', '620-930-625', '121294247418', '052505335228', '09482414768', '09482414768', 'leylenggarcia@gmail.com', NULL, NULL, NULL, 'Purok 1 Brgy Tandoc', NULL, 'San Carlos City', '2420', NULL, NULL, NULL, NULL, NULL, 'Probationary', '2025-01-06', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3885'),
(39191, '2277', 'password1234', 'Genson', 'Estioko', 'Navarro', 'Employee', NULL, NULL, NULL, 0, '1979-08-20', 'Dagupan City ', 'Male', 'Single', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '0216893425', '929-932-925', '121095208456', '190259768725', '09284430671', '09284430671', 'genson082079@yahoo.com', NULL, NULL, NULL, '190 Mayombo District', NULL, 'Dagupan City', '2400', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-03-17', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2277'),
(39192, '2253', 'password1234', 'Alfredo', 'Martinez', 'Cuaresma', 'Employee', NULL, NULL, NULL, 0, '1987-11-15', 'Bugallon Pangasinan', 'Male', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3430194606', '285-922-503', '121102526825', '050253903055', '09560375266', '09560375266', 'alfredo.cuaresma@nwdi.com.ph', NULL, NULL, NULL, '140 Cayanga, Bugallon, Pangasinan', NULL, 'Pangasinan', '2416', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-02-17', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2253'),
(39193, '3441', 'password1234', 'Clarissa', 'De Venecia', 'Mamis', 'Employee', NULL, NULL, NULL, 0, '1991-09-07', 'Pangasinan', 'Female', 'Married', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '0237295701', '490-321-282', '121132239540', '050502544214', '09265795810', '09265795810', 'clarissadevenecia@gmail.com', NULL, NULL, NULL, '09 Baay East ', NULL, 'Lingayen, Pangasinan', '2401', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-10-24', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3441'),
(39194, '3401', 'password1234', 'Marie Fransel Kate', 'Sagudang', 'Galla', 'Employee', NULL, NULL, NULL, 0, '1998-08-11', 'Pangasinan', 'Female', 'Single', 'Filipino', 'Born Again Christian', NULL, NULL, NULL, NULL, '0247381537', '612-878-805', '121304788881', '052513985002', '09270776387', '09270776387', 'kategalla0811@gmail.com', NULL, NULL, NULL, 'Poblacion', NULL, 'Lingayen, Pangasinan', '2401', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-08-15', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3401'),
(39195, '3623', 'password1234', 'Lloyd Paul', 'Cruz', 'Viray', 'Employee', NULL, NULL, NULL, 0, '1998-02-05', 'Pangasinan', 'Male', 'Married', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '0248029979', '767-339-869', '121311059103', '052530217086', '09657395992', '09657395992', 'viray_lloyd@yahoo.com', NULL, NULL, NULL, '#28 Brgy. Sapinit', NULL, 'San Carlos City, Pangasinan', '2420', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-07-10', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3623'),
(39196, '3635', 'password1234', 'Patrick', 'Rosario', 'Deogracias', 'Employee', NULL, NULL, NULL, 0, '1998-06-22', 'Pangasinan', 'Male', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '0248923240', '343-180-767', '121322975102', '052511447526', '09506565690', '09506565690', 'patrickdeogracias0622@gmail.com', NULL, NULL, NULL, 'Brgy. Camaley', NULL, 'Binmaley, Pangasinan', '2417', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-03-18', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3635'),
(39197, '3884', 'password1234', 'Charmaine', 'Quitazol', 'Olores', 'Employee', NULL, NULL, NULL, 0, '1995-11-03', 'Pangasinan', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3494951762', '713-008-022', '121242824386', '050257593468', '09663803245', '09663803245', 'charmaineolores@gmail.com', NULL, NULL, NULL, '#189 Masidem, Bani, Pangasinan', NULL, 'Bani, Pangasinan', '2407', NULL, NULL, NULL, NULL, NULL, 'Probationary', '2025-01-06', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3884'),
(39198, '3452', 'password1234', 'Aila Keschelle', 'Rufo', 'De Vera ', 'Employee', NULL, NULL, NULL, 0, '1997-03-05', 'Pangasinan', 'Female', 'Single', 'Filipino', 'Iglesia Ni Cristo', NULL, NULL, NULL, NULL, '0244649078', '351-088-796', '121238896490', '052520117261', '09064070881', '09064070881', 'ailakeschelledevera@gmail.com', NULL, NULL, NULL, '369 Riverside St., Malibong', NULL, 'Urbiztondo, Pangasinan', '2414', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-11-07', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3452'),
(39199, '3684', 'password1234', 'Delfa Mae', 'Elefanio', 'Sales', 'Employee', NULL, NULL, NULL, 0, '2000-06-28', 'Pangasinan', 'Female', 'Single', 'Filipino', 'Born Again Christian', NULL, NULL, NULL, NULL, '0250000669', '640-117-455', '121314652608', '052517227072', '09261367818', '09261367818', 'delfamaesales@gmal.com', NULL, NULL, NULL, '211 Capataan', NULL, 'San Carlos City, Pangasinan', '2420', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-09-18', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3684'),
(39200, '3468', 'password1234', 'Jelly Anne', 'Salazar', 'Perez', 'Employee', NULL, NULL, NULL, 0, '1997-05-19', 'Quezon City', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '0245024689', '619-994-527', '121242079115', '052512141897', '09090648082', '09090648082', 'perezjas788@gmail.com', NULL, NULL, NULL, '082 Asinan', NULL, 'Bugallon, Pangasinan', '2416', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-12-05', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3468'),
(39201, '3599', 'password1234', 'Maria Rocelle', 'Tandoc', 'Ubando', 'Employee', NULL, NULL, NULL, 0, '1993-07-11', 'Pangasinan', 'Female', 'Married', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '0236114854', '329-265-366', '121157015323', '050254646633', '09617513254', '09617513254', 'abadcelle@gmail.com', NULL, NULL, NULL, '352 Tonton Lingayen, Pangasinan', NULL, 'Lingayen, Pangasinan', '2401', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-06-13', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3599'),
(39202, '2388', 'password1234', 'Lani', 'Dacones', 'Garcia', 'Employee', NULL, NULL, NULL, 0, '1972-11-27', 'Sual, Pangasinan', 'Female', 'Single', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '3336047721', '191-346-215', '104002852575', '190504715314', '09917420501', '09917420501', 'lani.garcia@nwdi.com.ph', NULL, NULL, NULL, 'Phase 3D Blk 8 Lot 4 Parlina St. La Residencia Subd. Calumpit Bulacan', NULL, 'Calumpit Bulacan', '3003', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-07-21', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2388'),
(39203, '3473', 'password1234', 'Mark Errole', 'Lunsod', 'Martin', 'Employee', NULL, NULL, NULL, 0, '1994-01-29', 'Manila', 'Male', 'Single', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '3455032235', '766-847-802', '121260042391', '210253921166', '09163626095', '09163626095', 'errole.martin4438@gmail.com', NULL, NULL, NULL, 'Block 25 Lot 17 Magnolia St. Golden Hills, Loma De Gato', NULL, 'Marilao,Bulacan', '3019', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-12-05', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3473'),
(39204, '3479', 'password1234', 'Maria Leonora', 'Alvaro', 'Villanueva', 'Employee', NULL, NULL, NULL, 0, '1992-03-22', 'Sta. Maria Bulacan', 'Female', 'Single', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '3446607226', '411-536-624', '121122841716', '020262195024', '09763338592', '09763338592', 'leavillanueva032292@yahoo.com', NULL, NULL, NULL, '1400 Lambakin Marilao Bulacan', NULL, 'Marilao,Bulacan', '3019', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-01-09', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3479'),
(39205, '3501', 'password1234', 'Myra', 'Castillo', 'Ignacio', 'Employee', NULL, NULL, NULL, 0, '1989-07-01', 'Bocaue, Bulacan', 'Female', 'Married', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '3434661753', '488-527-495', '121064975146', '210501333373', '09333325207', '09333325207', 'myra_castillo07@yahoo.com', NULL, NULL, NULL, '189 Sto. Cristo', NULL, 'Angat, Bulacan', '3012', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-02-06', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3501'),
(39206, '3557', 'password1234', 'Amira', 'Quinawayan', 'Bautista', 'Employee', NULL, NULL, NULL, 0, '2000-01-19', 'Manila', 'Female', 'Single', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '3480662913', '769-951-726', '121274434556', '212508789766', '09271825132', '09271825132', 'qb.amiraa@gmail.com', NULL, NULL, NULL, '#146 Matang Tubig St. Guyong', NULL, 'Santa Maria, Bulacan', '3022', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-04-11', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3557'),
(39207, '3656', 'password1234', 'Deborah', 'Bagiw', 'Banoey', 'Employee', NULL, NULL, NULL, 0, '1992-11-07', 'Baguio City', 'Female', 'Single', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '124248188', '327-151-805', '121161983466', '050502571459', '09468995136', '09468995136', 'deborahbanoey@gmail.com', NULL, NULL, NULL, 'Catmon Sta. Maria Bulacan', NULL, 'Sta. Maria, Bulacan', '3017', NULL, NULL, NULL, NULL, NULL, 'Probationary', '2024-08-20', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3656'),
(39208, '3477', 'password1234', 'Hyacinth', 'Digsay', 'Cruz', 'Employee', NULL, NULL, NULL, 0, '1998-08-09', 'Pasig City', 'Female', 'Single', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '3505964567', '769-736-623', '121283667085', '012513412175', '09392650658', '09392650658', 'rrthyacinth@gmail.com', NULL, NULL, NULL, '194 Sitio Putol, Brgy. Bulac', NULL, 'Sta. Maria, Bulacan', '3022', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-01-03', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3477'),
(39209, '3511', 'password1234', 'Joannvil', 'Bag-Ao', 'Dysoco', 'Employee', NULL, NULL, NULL, 0, '1988-02-13', 'Surigao Del Norte', 'Female', 'Married', 'Filipino', 'Seventh Day Adventist', NULL, NULL, NULL, NULL, '3436375403', '453-983-944', '121080622318', '210501875680', '09516745988', '09516745988', 'dysoco.joann@gmail.com', NULL, NULL, NULL, 'Block 10 Lot 37 Glendale Residences, Sta. Clara', NULL, 'Sta. Maria, Bulacan', '3022', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-02-20', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3511'),
(39210, '3547', 'password1234', 'Ace', 'Delfin', 'Berdan', 'Employee', NULL, NULL, NULL, 0, '1986-08-15', 'San Jose, Antique', 'Male', 'Married', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '3417479755', '286-826-788', '121087908533', '010509486536', '09954514946', '09954514946', 'aceberdan08@gmail.com', NULL, NULL, NULL, '#52 Ompoc Subdivision, Villarica St. Poblacion', NULL, 'Sta. Maria, Bulacan', '3022', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-04-03', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3547'),
(39211, '3471', 'password1234', 'Jemmalyn', 'Esquillo', 'Dayao', 'Employee', NULL, NULL, NULL, 0, '2000-06-05', 'Matungao, Bulacan', 'Female', 'Single', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '3523232886', '619-249-703', '922338776870', '212501609207', '09567483913', '09567483913', 'dayaojemmalyne@gmail.com', NULL, NULL, NULL, 'Unit 5, Waling Waling St., Tjs Matungao', NULL, 'Bulakan,Bulacan', '3017', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-12-05', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3471'),
(39212, '3470', 'password1234', 'Jasmine', 'Martinez', 'Juan', 'Employee', NULL, NULL, NULL, 0, '1991-01-17', 'Bulacan', 'Female', 'Married', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '3427078311', '294-819-625', '121211038607', '210250899488', '09176438967', '09176438967', 'jasmine27villano@gmail.com', NULL, NULL, NULL, '467 Hulo, Caysio', NULL, 'Santa Maria, Bulacan', '3022', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-12-05', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3470'),
(39213, '3739', 'password1234', 'Flordeliza', 'Bernardo', 'Villamin', 'Employee', NULL, NULL, NULL, 0, '1979-08-05', 'Santa Maria, Bulacan', 'Female', 'Married', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '3354617942', '218-038-865', '121213985503', '070000858917', '09552884766', '09552884766', 'laramonchie05@gmail.com', NULL, NULL, NULL, '123 J. Bernardo St, Poblacion', NULL, 'Pandi, Bulacan', '3014', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-03-04', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3739'),
(39214, '3549', 'password1234', 'Camille', 'Cervantes', 'Bunag', 'Employee', NULL, NULL, NULL, 0, '1995-10-07', 'Bulakan, Bulacan', 'Female', 'Single', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '3447003463', '318-702-468', '121125042093', '210252673940', '09365717115', '09365717115', 'camille.bunag@nwdi.com.ph', NULL, NULL, NULL, '77 Camino Street, Maysantol Bulakan, Bulacan', NULL, 'Bulakan, Bulacan', '3017', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-04-03', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3549'),
(39215, '3691', 'password1234', 'Karen Oshin', 'Cabigas', 'Yap', 'Employee', NULL, NULL, NULL, 0, '1990-10-31', 'Talisay City, Cebu', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '0631777391', '309-684-326', '12101047885', '120510255971', '09329446934', '09329446934', 'ykarenoshin@gmail.com', NULL, NULL, NULL, 'Tres Aliños St., Miramar, Poblacion, Talisay City, Cebu', NULL, 'Talisay City, Cebu', '6045', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-10-02', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3691'),
(39216, '3499', 'password1234', 'Joane Pearl', 'Kilat', 'Duran', 'Employee', NULL, NULL, NULL, 0, '1998-10-11', 'Siquijor, Siquijor', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3493820027', '370-563-066', '12127062409', '160508100709', '09675214636', '09675214636', 'joanepearlduran22@gmail.com', NULL, NULL, NULL, 'J. Alcantara St., Sambag Ii, Cebu City', NULL, 'Cebu City, Cebu', '6000', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-02-06', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3499'),
(39217, '3585', 'password1234', 'Stephanie Dawn', 'Tale', 'Laspiñas', 'Employee', NULL, NULL, NULL, 0, '1998-07-08', 'Dumaguete City, Negros Oriental', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3516556317', '633-275-505', '12129424865', '122521274865', '09759425654', '09759425654', 'Taleofthedawn@gmail.com', NULL, NULL, NULL, 'J. Urgello St., Sambag 1, Cebu City', NULL, 'Cebu City, Cebu', '6000', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-03-18', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3585'),
(39218, '3832', 'password1234', 'Mike Nosmas', 'Llanda', 'Castro', 'Employee', NULL, NULL, NULL, 0, '2000-12-07', 'Zambonga Del Sur ', 'Male', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '1015338465', '657-148-819', '12133397824', '142508152123', '09998821123', '09998821123', 'mike.castro.rt@gmail.com', NULL, NULL, NULL, 'Block 14 Lot 9, Camella Homes - Tiguma, Pagadian City, Zamboanga Del Sur', NULL, 'Cebu City, Cebu', '6000', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-08-05', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3832'),
(39219, '3576', 'password1234', 'Frances Antoinette', 'Alpuerto', 'Cruz', 'Employee', NULL, NULL, NULL, 0, '1998-06-12', 'Ozamis City, Misamis Occidental', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3505930902', '504-101-279', '12128366706', '122540246228', '09205133676', '09205133676', 'francesantoinette@gmail.com', NULL, NULL, NULL, '35 - A Junquera Extension, Cebu City, Cebu', NULL, 'Cebu City, Cebu', '6000', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-05-15', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3576'),
(39220, '3619', 'password1234', 'Rubelyn', 'Porio', 'Roilo', 'Employee', NULL, NULL, NULL, 0, '1998-02-16', 'Panalitan, Catmon, Cebu', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3470038450', '339-758-689', '12120734532', '122508179136', '09772480579', '09772480579', 'rroilo101@gmail.com', NULL, NULL, NULL, 'J. Alcantara St., Sambag I, Cebu City', NULL, 'Cebu City, Cebu', '6000', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-07-10', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3619'),
(39221, '3819', 'password1234', 'Nicolas III', 'Evasco', 'Cañete', 'Employee', NULL, NULL, NULL, 0, '1992-01-01', 'Plaridel, Misamis Occidental', 'Male', 'Single', 'Filipino', 'Born Again Christian', NULL, NULL, NULL, NULL, '0634676237', '484-132-242', '12110721438', '120512834073', '09950138842', '09950138842', 'nicolasthethird2014@gmail.com', NULL, NULL, NULL, '64V Urgello St., Sambag 2, Cebu City', NULL, 'Cebu City, Cebu', '6000', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-06-24', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3819'),
(39222, '3887', 'password1234', 'Solange ', 'Ferrer', 'Quiñanola', 'Employee', NULL, NULL, NULL, 0, '1991-11-05', 'Cebu City, Cebu', 'Female', 'Married', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '0634677171', '315-785-954', '12110552843', '120513976637', '09450821495', '09450821495', 'solangefquinanola@gmail.com', NULL, NULL, NULL, '133 Ibq Bldg. Aznar Road, Sambag Ii, Cebu City, Cebu', NULL, 'Cebu City, Cebu', '6000', NULL, NULL, NULL, NULL, NULL, 'Probationary', '2025-01-06', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3887'),
(39223, '3454', 'password1234', 'Eden Merl', 'Donaire', 'Aparta', 'Employee', NULL, NULL, NULL, 0, '1998-06-22', 'Lianga, Surigar Del Sur', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '0643374355', '516-899-064', '12130987308', '120258440906', '09459653458', '09459653458', 'edenaparta4@gmail.com', NULL, NULL, NULL, 'Sitio Roadside, Brgy. Looc, Mandaue City', NULL, 'Mandaue City, Cebu', '6014', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-11-03', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3454'),
(39224, '3460', 'password1234', 'Aileen', 'Chiuten', 'Labor', 'Employee', NULL, NULL, NULL, 0, '1970-02-04', 'Cebu City', 'Female', 'Married', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '0613285319', '149-426-034', '164000590961', '120504518278', '09173207122', '09173207122', 'aileen.labor@nwdi.com.ph', NULL, NULL, NULL, 'San Carlos Heights Subdivision, Quiot, Cebu City', NULL, 'Cebu City', '6000', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-11-14', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3460'),
(39225, '3777', 'password1234', 'Lara Aira', 'Malibiran', 'Aldana', 'Employee', NULL, NULL, NULL, 0, '1993-12-27', 'Sta  Rosa Laguna', 'Female', 'Single', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '3466494477', '717-377-386', '121195726375', '082518527548', '09231040269', '09231040269', 'lamaldana@nwdi.com.ph', NULL, NULL, NULL, '900 Zavalla St Brgy Malusak', NULL, 'Santa Rosa Laguna', '4026', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-04-15', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3777'),
(39226, '3776', 'password1234', 'Pauline', 'Sicapore', 'Jimenez', 'Employee', NULL, NULL, NULL, 0, '1994-11-24', 'Pasig City, Metro Manila', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3470980566', '484-085-008', '121210463148', '10261969608', '09999945764', '09999945764', 'psjimenez@nwdi.com.ph', NULL, NULL, NULL, 'B4 L3 Quincy Street, Augusta, Brgy. Don Jose', NULL, ' Sta Rosa City, Laguna', '4026', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-04-15', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3776'),
(39227, '3778', 'password1234', 'Lady Thea', 'Iglesia', 'Factoran', 'Employee', NULL, NULL, NULL, 0, '1998-11-26', 'Dasmariñas Cavite', 'Female', 'Single', 'Filipino', 'Baptist', NULL, NULL, NULL, NULL, '3469313076', '348-524-605', '121204771727', '80263247292', '09398668282', '09398668282', 'theacoups@gmail.com', NULL, NULL, NULL, 'Garden Villas 1 Olympia Park Subd Brgy Labas', NULL, ' Sta Rosa City, Laguna', '4026', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-04-15', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3778'),
(39228, '3809', 'password1234', 'Arian Daniel', 'Nieto', 'Era', 'Employee', NULL, NULL, NULL, 0, '2001-03-09', 'Biñan City, Laguna', 'Male', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '0448001991', '652-069-919', '121343695079', '80269204013', '09614450753', '09614450753', 'arianera110@gmail.com', NULL, NULL, NULL, 'B8 Lot21 Rosewood Homes Brgy. Tagapo', NULL, 'Santa Rosa City, Laguna', '4026', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-06-19', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3809'),
(39229, '3781', 'password1234', 'Mary-Ann', 'Salosa', 'Balon', 'Employee', NULL, NULL, NULL, 0, '1975-06-07', 'Sta. Rosa,  Laguna', 'Female', 'Single', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '3336661822', '911-947-679', '121003273446', '80504276094', '09266129696', '09266129696', 'annebalon7@gmail.com', NULL, NULL, NULL, 'B8 L6 Phase Ii Howard, Village, Tagapo, Sta. Rosa, Laguna', NULL, 'Santa Rosa Laguna', '4026', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-04-15', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3781'),
(39230, '3768', 'password1234', 'Karen Rea', 'Amparo', 'Beniga', 'Employee', NULL, NULL, NULL, 0, '2000-02-26', 'Parañaque City', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '0833051310', '648-207-467', '121340254219', '12507842109', '09950525438', '09950525438', 'k.beniga@nwdi.com.ph', NULL, NULL, NULL, 'B6 L1 Grandriverside Villa Brgy. Market Area', NULL, 'Santa Rosa City, Laguna', '4026', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-04-15', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3768'),
(39231, '3853', 'password1234', 'Audria Nicole', 'Baccol', 'Sobrevega', 'Employee', NULL, NULL, NULL, 0, '1996-01-02', 'San Pedro Laguna', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3462804566', '331-928-454', '121182904306', '82517120673', '09353081562', '09353081562', 'ansobrevega@gmail.com', NULL, NULL, NULL, 'Blk 7 Lot 14 Renault St. Garden Villas 1 Brgy Labas', NULL, ' Sta Rosa City, Laguna', '4026', NULL, NULL, NULL, NULL, NULL, 'Probationary', '2024-07-10', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3853'),
(39232, '3837', 'password1234', 'Kwin Czaira', 'Magbanlag', 'Peñafiel', 'Employee', NULL, NULL, NULL, 0, '2000-04-25', 'Camarines Norte', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3509527874', '506-210-225', '121287227046', '80268366281', '09773729330', '09773729330', 'kwinczairaofficial@gmail.com', NULL, NULL, NULL, 'B1 L28 Ph3 Bella Solana Subd., Brgy. Bigaa', NULL, 'Cabuyao, Laguna', '4025', NULL, NULL, NULL, NULL, NULL, 'Probationary', '2024-08-20', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3837'),
(39233, '156', 'password1234', 'Faustino', 'Babao', 'Dueñas Jr.', 'Employee', NULL, NULL, NULL, 0, '1972-04-11', 'Oriental Mindoro', 'Male', 'Married', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '3340409070', '200-488-626', '105000847099', '190887829075', '09163083974', '09163083974', 'jhundueñas@yahoo.com', NULL, NULL, NULL, '2252 A Topacio St., San Andres Bukid, Manila', NULL, 'Manila City', '1017', NULL, NULL, NULL, NULL, NULL, 'Regular', '2016-09-16', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '156'),
(39234, '2011', 'password1234', 'Jessica', 'Lavarias', 'Ibana', 'Employee', NULL, NULL, NULL, 0, '1998-01-16', 'Manila', 'Female', 'Single', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '3489635048', '736-730-230', '121262637757', '020273255894', '09327411625', '09327411625', 'jessicaibana16@gmail.com', NULL, NULL, NULL, '1567 7Th St., Fabie Subd., Paco, Manila', NULL, 'Manila City', '1007', NULL, NULL, NULL, NULL, NULL, 'Regular', '2020-10-12', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011'),
(39235, '3883', 'password1234', 'Clarissa', 'Clapis', 'Echipare', 'Employee', NULL, NULL, NULL, 0, '1999-04-11', 'Manila City', 'Female', 'Single', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '3483879240', '366-297-208', '121248878616', '020272128457', '09550340563', '09550340563', 'clarissa.echipare@nwdi.com.ph', NULL, NULL, NULL, '995 Cementeras St. Pandacan Manila', NULL, 'Manila City', '1011', NULL, NULL, NULL, NULL, NULL, 'Probationary', '2025-01-06', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3883'),
(39236, '597', 'password1234', 'Jelly Lane', 'Reli', 'Viajar', 'Employee', NULL, NULL, NULL, 0, '1989-10-13', 'Manila', 'Female', 'Married', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3400535978', '245-573-143', '121144011050', '010512108054', '09456288048', '09456288048', 'jlrviajar@nwdi.com.ph', NULL, NULL, NULL, '2106 Pista St Sta Cruz Manila', NULL, 'Sta Cruz Manila', '1003', NULL, NULL, NULL, NULL, NULL, 'Regular', '2016-08-17', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '597'),
(39237, '3811', 'password1234', 'Alexandra Marie', 'Silvestre', 'Dela Cerna', 'Employee', NULL, NULL, NULL, 0, '2001-04-09', 'Quezon City', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3530754137', '652-495-274', '121339681449', '010267619137', '09687309350', '09687309350', 'alexandramarie.delacerna@gmail.com', NULL, NULL, NULL, '63 Dpn Carlos Revilla, Brgy 148 ', NULL, 'Pasay City', '1300', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-06-24', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3811'),
(39238, '3810', 'password1234', 'Edreline', 'Magpali', 'Francisco', 'Employee', NULL, NULL, NULL, 0, '2000-09-28', 'Manila', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3496070104', '652-594-666', '121340815627', '032512542491', '09955475024', '09955475024', 'edrelinef@gmail.com', NULL, NULL, NULL, 'Blk 21 L9 Beverlyhills St. Palmera Springs 4 Caloocan City', NULL, 'Caloocan City', '1421', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-06-24', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3810'),
(39239, '3823', 'password1234', 'Andrea Faye', 'Sergio', 'Zuñiga', 'Employee', NULL, NULL, NULL, 0, '2000-10-30', 'Pasay', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3530930676', '654-377-137', '121341701763', '010267732545', '09171167449', '09171167449', 'afayezuniga30@gmail.com', NULL, NULL, NULL, 'P32-22 12Th 9Th Street, Barangay 183', NULL, 'Pasay City', '1300', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-07-15', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3823'),
(39240, '3873', 'password1234', 'Kristine Joy', NULL, 'Gador', 'Employee', NULL, NULL, NULL, 0, '1991-12-31', 'Noveleta Cavite', 'Female', 'Single', 'Filipino', 'Born Again', NULL, NULL, NULL, NULL, '3428480034', '371-662-156', '121280553417', '012002310781', '09177270468', '09177270468', 'kristinejoyrrt@gmail.com', NULL, NULL, NULL, '1114 M. Salud St.San Antonio 2 Noveleta Cavite', NULL, 'Noveleta Cavite', '4105', NULL, NULL, NULL, NULL, NULL, 'Probationary', '2024-11-04', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3873'),
(39241, '3868', 'password1234', 'Bonamoore', 'Dela Cruz', 'Lambino', 'Employee', NULL, NULL, NULL, 0, '1999-08-27', 'San Fernando ', 'Female', 'Single ', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '0130254975', '642-999-079', '121301974263', '052512466443', '09457389969', '09457389969', 'lambinobonamoore@gmail.com', NULL, NULL, NULL, 'Blk 2 Lot 41, Mahogany St., Habay II Bacoor Cavite', NULL, 'Cavite', '4102', NULL, NULL, NULL, NULL, NULL, 'Probationary', '2024-10-28', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3868'),
(39242, '3822', 'password1234', 'Rodrigo ', 'Mondala', 'Villacrucis Jr.', 'Employee', NULL, NULL, NULL, 0, '1990-02-24', 'Lipa', 'Male', 'Married', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '0428661555', '448-547-246', '121111635664', '090254005613', '09662262362', '09662262362', 'rjvillacrucis@yahoo.com', NULL, NULL, NULL, '107 Catalina Village', NULL, 'Lipa City, Batangas', '4217', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-07-08', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3822'),
(39243, '3812', 'password1234', 'Maricon', 'Cuevas', 'Guce', 'Employee', NULL, NULL, NULL, 0, '2000-12-09', 'San Jose, Batangas', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '0448101228', '650-804-568', '121342413214', '092508259443', '09171663255', '09171663255', 'mcguce9@gmail.com', NULL, NULL, NULL, '0052 Sitio Pook Brgy Pinagtung-Ulan', NULL, 'San Jose, Batangas', '4227', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-06-24', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3812'),
(39244, '3813', 'password1234', 'Elwyn Maeve', 'Duran', 'De Ramos', 'Employee', NULL, NULL, NULL, 0, '2000-07-13', 'Lemery, Batangas', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '0448140771', '652-497-732', '121342651375', '092510381396', '09287160259', '09287160259', 'elwynmaeve.deramos@gmail.com', NULL, NULL, NULL, '9 Molave Ave. Hacienda Villas, Tierra Alta', NULL, 'Taal, Batangas', '4208', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-06-24', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3813'),
(39245, '3854', 'password1234', 'Daniella Nicole', 'Conti', 'Libuit', 'Employee', NULL, NULL, NULL, 0, '2000-08-28', 'Lipa', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '0449473706', '661-242-879', '121352419974', '092538958699', '09167265267', '09167265267', 'daniellanicole.libuit@gmail.com', NULL, NULL, NULL, 'P. Olan Street Marauwoy', NULL, 'Lipa, Batangas', '4217', NULL, NULL, NULL, NULL, NULL, 'Probationary', '2024-10-14', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3854'),
(39246, '3886', 'password1234', 'Jesusa Almira', 'Norberte', 'Dimaculangan', 'Employee', NULL, NULL, NULL, 0, '2000-12-23', 'Lipa', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '0449879151', '667-406-342', '121355946857', '092505319895', '09672588046', '09672588046', 'jesusadimaculangan@gmail.com', NULL, NULL, NULL, 'Purok 5 Bagong Pook Ave Brgy Bagong Pook', NULL, 'Lipa, Batangas', '4217', NULL, NULL, NULL, NULL, NULL, 'Probationary', '2025-01-06', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3886'),
(39247, '3814', 'password1234', 'Mary Geane', 'Dinglasan', 'Tasoy', 'Employee', NULL, NULL, NULL, 0, '1978-11-18', 'Ibaan, Batangas', 'Female', 'Married', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '0434066306', '395-183-948', '121006274033', '090253414587', '09657001397', '09657001397', 'dinglasanmarygeane@gmail.com', NULL, NULL, NULL, '048 Munting Tubig', NULL, 'Ibaan, Batangas', '4230', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-06-24', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3814'),
(39248, '3526', 'password1234', 'Angelique', 'Sabijon', 'Chang', 'Employee', NULL, NULL, NULL, 0, '1988-12-04', 'Makati City', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3412565224', '282-380-369', '121147126184', '010510882186', '09260515989', '09260515989', 'angeliquechangrrt@gmail.com', NULL, NULL, NULL, '215 Sitio Balugbog, Tilambo', NULL, 'Taysan, Batangas', '4228', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-03-06', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3526'),
(39249, '921', 'password1234', 'Irene', 'Ollorsa', 'Oliquino', 'Employee', NULL, NULL, NULL, 0, '1984-07-04', 'Albay', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '0417492272', '305-530-782', '121005635450', '020503304903', '09619222773', '09619222773', 'ireneoliquino88@gmail.con', NULL, NULL, NULL, 'Glo Marie Subd. Dominador', NULL, 'Alitagtag, Batangas', '4205', NULL, NULL, NULL, NULL, NULL, 'Regular', '2019-02-28', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '921'),
(39250, '3858', 'password1234', 'Angeline', 'Racelis', 'Ofilan', 'Employee', NULL, NULL, NULL, 0, '2002-03-27', 'Lipa', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '0448945617', '656-051-193', '121352618989', '092505700440', '09989008949', '09989008949', 'angeline.ofilan@nwdi.com.ph', NULL, NULL, NULL, '079 Brgy. Tipacan', NULL, 'Lipa Batangas', '4217', NULL, NULL, NULL, NULL, NULL, 'Probationary', '2024-10-14', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3858');
INSERT INTO `employees` (`id`, `employee_id`, `password`, `firstname`, `middlename`, `lastname`, `user_role`, `empproftype`, `photo`, `company_id`, `branch_id`, `bdate`, `bplace`, `gender`, `cstatus`, `citizenship`, `religion`, `language`, `bloodtype`, `height`, `weight`, `sss_num`, `tin_num`, `pi_num`, `phil_num`, `tel_num`, `mobile_num`, `email`, `ecp`, `etel`, `current_num`, `current_street`, `current_municipality`, `current_cityprovince`, `current_zipcode`, `permanent_num`, `permanent_street`, `permanent_municipality`, `permanent_cityprovince`, `permanent_zipcode`, `status`, `date_hired`, `date_to`, `regularization_date`, `years_in_service`, `position_id`, `department_id`, `shift_id`, `is_id`, `costcenter_id`, `payclass_id`, `siteassignment_id`, `basepay`, `basic_allowance`, `user_taxable`, `taxable_percent`, `user_nontaxable`, `nontaxable_percent`, `restday`, `factor_days`, `dailyrate`, `hourrate`, `sss_id`, `benefit_1`, `benefit_2`, `benefit_3`, `benefit_4`, `deduction_philhealth`, `deduction_pagibig`, `pagibig_premium`, `bankacc`, `sss_contri_employee`, `sss_employee_trigger`, `sss_contri_employer`, `sss_employer_trigger`, `sss_contri_ecc`, `sss_contri_ee`, `sss_contri_er`, `assigned_supervisor_status`, `created_on`, `empid_approvers_status`, `biometric_id`) VALUES
(39251, '2364', 'password1234', 'Syril Alyssa', 'Pasia', 'Te', 'Employee', NULL, NULL, NULL, 0, '1997-08-15', 'Davao City', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '03496454296', '378-384-534', '121274290397', '162507650503', '09454456911', '09454456911', 'alyssa.te15@gmail.com', NULL, NULL, NULL, '10 Apollo St. Doña Vicenta Village, Davao City', NULL, 'Davao City, Davao Del Sur', '8000', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-07-08', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2364'),
(39252, '2367', 'password1234', 'Jorgen', 'Sion', 'Posadas', 'Employee', NULL, NULL, NULL, 0, '1997-11-22', 'Aleosan North Cotabato', 'Male', 'Single', 'Filipino', 'Baptist', NULL, NULL, NULL, NULL, '0941547350', '770-952-677', '121200010813', '170504168029', '09759147173', '09759147173', 'shanemay_oliverio@yahoo.com.ph', NULL, NULL, NULL, 'Lapu-Lapu Ext. Brgy. Zone 3, Digos City', NULL, 'Digos City, Davao Del Sur', '8002', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-07-08', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2367'),
(39253, '2366', 'password1234', 'Shane May', 'Oliverio', 'Bolongcas', 'Employee', NULL, NULL, NULL, 0, '1995-01-04', 'Digos City', 'Female', 'Married', 'Filipino', 'Seventh Day Adventist', NULL, NULL, NULL, NULL, '3440910317', '501-416-218', '121183929952', '162510779711', '09511995028', '09511995028', 'jposadas@nwdi.com.ph', NULL, NULL, NULL, '34 Generoso St. Obrero, Brgy.18B, Davao City', NULL, 'Davao City, Davao Del Sur', '8000', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-07-08', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2366'),
(39254, '3483', 'password1234', 'Carlos', 'Gomito', 'Montejo', 'Employee', NULL, NULL, NULL, 0, '1983-11-25', 'Davao City', 'Male', 'Single', 'Filipino', 'Iglesia Ni Cristo ', NULL, NULL, NULL, NULL, '0940233270', '490-885-495', '121178684861', '160253360078', '09171394368', '09171394368', 'carlz_montejo23@yahoo.com', NULL, NULL, NULL, '14 Polaris St. Gsis Heights Matina ', NULL, 'Davao City', '8000', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-01-09', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3483'),
(39255, '3625', 'password1234', 'Jessica', 'Ague', 'Ranario', 'Employee', NULL, NULL, NULL, 0, '1995-12-09', 'Surigao Del Sur', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '0943698155', '715-986-053', '121237836998', '182502237676', '09467145206', '09467145206', 'jessicaranario1808@gmail.com', NULL, NULL, NULL, 'Block 13 Lot 10 Sirba Street, Sir Matina', NULL, 'Davao City', '8000', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-07-10', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3625'),
(39256, '2368', 'password1234', 'Kimberly Anne', 'Legaspo', 'Escoba', 'Employee', NULL, NULL, NULL, 0, '1995-02-17', 'Tagum City', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '0946337099', '749-435-080', '121256772076', '160258119743', '09662068013', '09662068013', 'kimberly.escoba@nwdi.com.ph', NULL, NULL, NULL, 'Prk.12-B, St.John Bucana Davao Ctiy', NULL, 'Davao City, Davao Del Sur', '8000', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-07-08', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2368'),
(39257, '2360', 'password1234', 'Shaira Mae', 'Pit', 'Sy', 'Employee', NULL, NULL, NULL, 0, '1995-04-14', 'Tagum City', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3493453009', '764-927-795', '121269441776', '160508094229', '09053922349', '09053922349', 'shairamaesy@gmail.com', NULL, NULL, NULL, 'Jade St. Marfori Subd., Brgy.9-A, Davao City', NULL, 'Davao City, Davao Del Sur', '8000', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-06-13', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2360'),
(39258, '3610', 'password1234', 'Catherine Jane', 'See', 'Agapay', 'Employee', NULL, NULL, NULL, 0, '2000-09-21', 'Davao City', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '0949103385', '633-303-063', '121321085326', '160259418205', '09336921712', '09336921712', 'catherinejane@gmail.com', NULL, NULL, NULL, 'Blk.31, Lot4, Nha Maa, Davao City', NULL, 'Davao City, Davao Del Sur', '8000', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-06-26', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3610'),
(39259, '3518', 'password1234', 'Rechiel', 'Cedeno', 'Wayan', 'Employee', NULL, NULL, NULL, 0, '1988-04-18', 'Samal City', 'Female', 'Married', 'Filipino', 'Baptist', NULL, NULL, NULL, NULL, '0932731751', '418-492-704', '121067892787', '080511393543', '09164070728', '09164070728', 'rechiel.wayan@nwdi.com.ph', NULL, NULL, NULL, '#162 Diamond St., Mineral Village, Brgy.19-B, Bajada, Davao City', NULL, 'Davao City', '8000', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-02-20', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3518'),
(39260, '1052', 'password1234', 'Roselle', 'Angulo', 'Sales', 'Employee', NULL, NULL, NULL, 0, '1992-08-20', 'Candaba', 'Female', 'Single', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '3451613894', '472-106-698', '121146674173', '210502182565', '09069684989', '09069684989', 'roselleguevarasales@gmail.com', NULL, NULL, NULL, '0822 Caldo St. Mandili', NULL, 'Candaba, Pampanga', '2013', NULL, NULL, NULL, NULL, NULL, 'Regular', '2020-07-29', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1052'),
(39261, '2392', 'password1234', 'Carmela', 'Faustino', 'Lising', 'Employee', NULL, NULL, NULL, 0, '1994-04-19', 'Sta Cruz, Manila', 'Female', 'Single', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '3463815606', '334-877-948', '121198243908', '020268166425', '09773266801', '09773266801', 'mela_lising@yahoo.com', NULL, NULL, NULL, 'Purok 2 Tanawan', NULL, 'Bustos, Bulacan', '3007', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-08-01', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2392'),
(39262, '2398', 'password1234', 'Rowena', 'Cruz', 'Alejo', 'Employee', NULL, NULL, NULL, 0, '1969-06-11', 'Plaridel, Bulacan', 'Female', 'Married', 'Filipino', 'Born Again Christian (Jil)', NULL, NULL, NULL, NULL, '3307749544', '154-757-888', '121000907798', '190257906268', '09762335340', '09762335340', 'rowenacalejo@gmail.com', NULL, NULL, NULL, 'Blk 28 Lot 5 Ph 3 La Mirada Subd., Banga 1,', NULL, 'Plaridel, Bulacan', '3004', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-08-15', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2398'),
(39263, '3425', 'password1234', 'Regine Angeli', 'Rivera', 'Villanueva', 'Employee', NULL, NULL, NULL, 0, '1992-06-27', 'Baliuag, Bulacan', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3444776065', '452-218-617', '121117607898', '030511727231', '09165035638', '09165035638', 'rarvxxvii@gmail.com', NULL, NULL, NULL, 'Block 17 Lot 29 Yakal Street Lapid\'S Ville, Tambubong', NULL, 'San Rafael, Bulacan', '3008', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-10-03', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3425'),
(39264, '2027', 'password1234', 'Diana Mae', 'Directo', 'Cunanan', 'Employee', NULL, NULL, NULL, 0, '1995-12-30', 'Baliuag ', 'Female ', 'Married ', 'Filipino ', 'Christian (Bornagain) ', NULL, NULL, NULL, NULL, '3462373246', '333-045-128', '121187444168', '210254153510', '09920390047', '09920390047', 'dianamaecunanan0530@gmail.com', NULL, NULL, NULL, ' 209 Ramos/Talavera St, Calantipay', NULL, 'Baliuag, Bulacan ', '3006', NULL, NULL, NULL, NULL, NULL, 'Regular', '2020-11-03', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2027'),
(39265, '2196', 'password1234', 'Jemalyn', 'Tiongson', 'Bernardino', 'Employee', NULL, NULL, NULL, 0, '1994-11-18', 'Pulilan Bulacan', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3471884179', '358-125-353', '121289126514', '212520836524', '09264089230', '09264089230', 'jemalynbernardino00@yahoo.com', NULL, NULL, NULL, '289 San Francisco, Paltao', NULL, 'Pulilan, Bulacan', '3005', NULL, NULL, NULL, NULL, NULL, 'Regular', '2021-10-18', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2196'),
(39266, '3408', 'password1234', 'Sahra Shaine ', 'Batongbacal', 'Telles', 'Employee', NULL, NULL, NULL, 0, '1993-10-06', 'Malolos', 'Female', 'Single', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '3445649104', '330-826-929', '121178982510', '030259962850', '09224569504', '09224569504', 'shaine10069321@gmail.com', NULL, NULL, NULL, '43 Esguerra Street Sta Peregrina ', NULL, 'Pulilan, Bulacan', '3005', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-08-31', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3408'),
(39267, '3747', 'password1234', 'Christina Marie', 'Lagado', 'Enolva', 'Employee', NULL, NULL, NULL, 0, '1999-03-31', 'Pulilan Bulacan', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3520321088', '376-584-343', '121302047015', '212505413617', '09690663598', '09690663598', NULL, NULL, NULL, NULL, '025 Kalye Onse, Dampol 1St', NULL, 'Pulilan, Bulacan', '3005', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-03-18', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3747'),
(39268, '3536', 'password1234', 'Kathleen May ', 'Gonzales', 'Ucol', 'Employee', NULL, NULL, NULL, 0, '1993-05-07', 'Cabanatuan City', 'Female', 'Single', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '3455852512', '325-971-308', '121160904576', '210253556670', '09567609091', '09567609091', 'ucolkathleenmay05@gmail.com', NULL, NULL, NULL, '212 Purok 2 Panabingan', NULL, 'San Antonio, Nueva Ecija', '3108', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-03-20', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3536'),
(39269, '3544', 'password1234', 'Divine Grace', 'Dugkem', 'Hernandez', 'Employee', NULL, NULL, NULL, 0, '1992-12-25', 'Tabuk City, Kalinga', 'Female', 'Single', 'Filipino', 'Ccp', NULL, NULL, NULL, NULL, '0125845920', '497-635-377', '121193040310', '070510682015', '09456043912', '09456043912', '1225gracedivine@gmail.com', NULL, NULL, NULL, 'Block 5 Lot 4 Masigasig St. Matatalaib', NULL, 'Tarlac, Tarlac', '2300', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-03-27', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3544'),
(39270, '3521', 'password1234', 'Krystel Joy', 'Arellano', 'Ecle', 'Employee', NULL, NULL, NULL, 0, '1999-10-02', 'Pura Tarlac', 'Female', 'Single', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '0247820894', '624-632-444', '121308213716', '070260698573', '09499376247', '09499376247', 'arellanokrysteljoy@gmail.com', NULL, NULL, NULL, 'Purok 3 Estipona ', NULL, 'Pura, Tarlac', '2312', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-02-20', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3521'),
(39271, '3545', 'password1234', 'Jessica', 'Palabay', 'Bondoc', 'Employee', NULL, NULL, NULL, 0, '1992-10-25', 'Tuba, Benguet', 'Female', 'Single', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '3469757205', '712-191-776', '121206264214', '042241501110', '09301999315', '09301999315', 'jessica25bondoc@gmail.com', NULL, NULL, NULL, 'Block 5 Lot 4 Masigasig St. Matatalaib', NULL, 'Tarlac, Tarlac', '2300', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-03-27', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3545'),
(39272, '3560', 'password1234', 'Karen', 'Navarro', 'Gomez', 'Employee', NULL, NULL, NULL, 0, '1984-02-25', 'Tarlac City', 'Female', 'Single', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '0220243980', '220-483-338', '121039092823', '020505411863', '09925856457', '09925856457', 'renzky2584@yahoo.com', NULL, NULL, NULL, 'Sitio Riverside', NULL, 'Balanti, Tarlac', '2301', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-04-17', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3560'),
(39273, '3733', 'password1234', 'Rea', 'Bondoc', 'Bergonio', 'Employee', NULL, NULL, NULL, 0, '2001-05-25', 'Balibago Segundo, Tarlac', 'Female', 'Single', 'Filipino', 'Iglesia Ni Cristo', NULL, NULL, NULL, NULL, '3476372398', '346-869-346', '121227258662', '070259234539', '09382923700', '09382923700', 'reabergonio05@gmail.com', NULL, NULL, NULL, '437 Zone 3', NULL, 'Balibago Segundo, Tarlac', '2305', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-02-07', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3733'),
(39274, '3790', 'password1234', 'Cristine Joy', 'Tejada', 'Navarro', 'Employee', NULL, NULL, NULL, 0, '2000-08-26', 'Sta. Ignacia Tarlac', 'Female', 'Single', 'Filipino', 'Methodist', NULL, NULL, NULL, NULL, '0251626518', '649-333-039', '121340562150', '070261653352', '09939365377', '09939365377', 'cristinejoyn9@gmail.com', NULL, NULL, NULL, 'Baldios', NULL, 'Sta. Ignacia, Tarlac', '2303', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-05-06', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3790'),
(39275, '3552', 'password1234', 'Tracy Lorn', 'Robiños', 'Quindiagan', 'Employee', NULL, NULL, NULL, 0, '1987-04-03', 'Olangapo City', 'Female', 'Married', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '0228979803', '362-405-549', '121107930696', '052537052007', '09171404080', '09171404080', 'trquindiagan@gmail.com', NULL, NULL, NULL, 'Cacamilingan Norte', NULL, 'Camiling, Tarlac', '2306', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-04-03', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3552'),
(39276, '3833', 'password1234', 'Jean-Ann Marie', 'Samoy', 'Arrojo', 'Employee', NULL, NULL, NULL, 0, '1997-06-04', 'Gerona Tarlac', 'Female', 'Single', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '0235579982', '775-939-176', '121311482558', '070261312164', '09687246668', '09687246668', 'arrojojam97@yahoo.com', NULL, NULL, NULL, 'Acacia Street Buenlag', NULL, 'Gerona, Tarlac', '2302', NULL, NULL, NULL, NULL, NULL, 'Probationary', '2024-08-20', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3833'),
(39277, '3663', 'password1234', 'Ashley Nicole', 'Quiazon', 'Jimenez', 'Employee', NULL, NULL, NULL, 0, '2003-03-17', 'Tarlac City', 'Female', 'Single', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '0249772199', '633-726-152', '121326683759', '072515674994', '09078676781', '09078676781', 'ashleynicolejimenez0@gmail.com', NULL, NULL, NULL, '161 Sampaguita St. San Francisco', NULL, 'Tarlac, Tarlac', '2300', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-08-22', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3663'),
(39278, '2264', 'password1234', 'Edmar John', 'Galera', 'Malicia', 'Employee', NULL, NULL, NULL, 0, '1987-11-02', 'Janiuay Iloilo', 'Male', 'Married', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3429583927', '431-819-680', '121053129052', '020256236118', '09563388725', '09563388725', 'edmar.malicia@gmail.com', NULL, NULL, NULL, 'B12 Lot 39 Cordova St. Camella 2D Brgy. Putatan ', NULL, 'Muntinlupa City', '1772', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-03-23', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2264'),
(39279, '3872', 'password1234', 'Maria Isabel', 'Doctolero', 'Ang', 'Employee', NULL, NULL, NULL, 0, '2001-10-05', 'Las Piñas', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3533287575', '655-527-461', '12134712803', '012501328004', '09053472724', '09053472724', 'ma.isabelang@gmail.com', NULL, NULL, NULL, 'Aristocrat Village Admiral', NULL, 'Las Pinas City', '1740', NULL, NULL, NULL, NULL, NULL, 'Probationary', '2024-10-28', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3872'),
(39280, '2278', 'password1234', 'Jurezah Carol', 'Estrebilla', 'Borja', 'Employee', NULL, NULL, NULL, 0, '1994-08-02', 'Pasay City', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3472964292', '382-273-362', '121268507202', '010523540217', '09562489271', '09562489271', 'jurezahceb@gmail.com', NULL, NULL, NULL, '114 Waling Waling St. Corner Cadena De Amor St., Ups Iv, Brgy. Marcelo Green Village, Sucat', NULL, 'Parañaque City', '1713', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-03-23', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2278'),
(39281, '2273', 'password1234', 'Monica Lorraine', 'Magsombol', 'Maranan', 'Employee', NULL, NULL, NULL, 0, '1991-04-28', 'Quezon City', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3442013681', '446-364-914', '121108740040', '010518960216', '09951394953', '09951394953', 'monicalorrainemaranan@gmail.com', NULL, NULL, NULL, 'B5 L9 Ph1 Dona Remedios Rufino St Garden City Subd Brgy San Isidro', NULL, 'Paranaque City', '1700', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-03-23', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2273'),
(39282, '2284', 'password1234', 'Maribeth', 'Cagungao', 'Bulan', 'Employee', NULL, NULL, NULL, 0, '1989-11-05', 'Quezon City', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3335071497', '194-085-585', '121040503046', '080509065229', '09152742867', '09152742867', 'kakizakimari@gmail.com', NULL, NULL, NULL, '19-12 Iban St. Phase 7 Brgy. Bagong Silang Bahy Pag-Asa Subdivision Imus ', NULL, 'Cavite City', '4102', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-03-28', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2284'),
(39283, '3534', 'password1234', 'Janeena', 'Santos', 'Cornelio', 'Employee', NULL, NULL, NULL, 0, '1995-03-04', 'Metro Manila', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3455324574', '325-535-874', '121161371581', '012500841271', '09175750304', '09175750304', 'janeenacornelio95@gmail.com', NULL, NULL, NULL, 'B1 L4 Veraville Vista Grande Bf Resort Village Talon Dos', NULL, 'Las Pinas City', '1747', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-03-20', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3534'),
(39284, '3859', 'password1234', 'Ma. Carmela', 'Nacario', 'Mangao', 'Employee', NULL, NULL, NULL, 0, '2000-02-22', 'Camarines Sur', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3520758606', '610-383-379', '121301274619', '012510482857', '09270088141', '09270088141', 'mangao.carmela@gmail.com', NULL, NULL, NULL, 'B29 L7 Purok 4 Babas St. Central Bicutan Taguig', NULL, 'Taguig City', '1631', NULL, NULL, NULL, NULL, NULL, 'Probationary', '2024-10-14', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3859'),
(39285, '2276', 'password1234', 'Ulyssa', 'Dadivas', 'Contante', 'Employee', NULL, NULL, NULL, 0, '1995-11-01', 'Parañaque', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3455029824', '324-170-331', '121158350508', '082538058331', '09920519080', '09920519080', 'ulyssacontante@yahoo.com', NULL, NULL, NULL, 'B8 L21 Ashberry Estate Subdivision Manuyo Dos', NULL, 'Las Pinas City', '1745', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-03-21', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2276'),
(39286, '3764', 'password1234', 'Rohaida', 'Managza', 'Sultan', 'Employee', NULL, NULL, NULL, 0, '1996-03-22', 'Lanao Del Norte', 'Female', 'Single', 'Filipino', 'Islam', NULL, NULL, NULL, NULL, '3469758990', '735-918-187', '121206336238', '152026622055', '09074227855', '09074227855', 'sultanrohaida20@gmail.com', NULL, NULL, NULL, 'B7 L8 Jamcel Arciaga Villa Homes Bayanan', NULL, 'Muntinlupa City', '1771', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-04-08', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3764'),
(39287, '3871', 'password1234', 'Jonathan', 'Gonzales', 'Pabalan', 'Employee', NULL, NULL, NULL, 0, '1972-11-15', 'Parañaque', 'Male', 'Married', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3336580314', '216-072-702', '121012853760', '190515433132', '09629353866', '09629353866', 'jonathanpabalan@Yahoo.com', NULL, NULL, NULL, '8304 San Fernando St. Subdivision 8', NULL, 'Paranaque City', '1715', NULL, NULL, NULL, NULL, NULL, 'Probationary', '2024-10-28', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3871'),
(39288, '3469', 'password1234', 'Jonnalyn', 'Asis', 'Curio', 'Employee', NULL, NULL, NULL, 0, '1985-03-15', 'Camarines Norte', 'Female', 'Married', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3455029824', '324-170-331', '121158350508', '082538058331', '09369697133', '09369697133', 'jonnacurio@gmail.com', NULL, NULL, NULL, '18A Bonifacio St. Tuazon Village Pamplona Uno', NULL, 'Las Pinas City', '1740', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-12-05', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3469'),
(39289, '3688', 'password1234', 'Patricia Paula', 'Matira', 'Orilla', 'Employee', NULL, NULL, NULL, 0, '1995-08-03', 'Quezon City', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3469758990', '735-918-187', '121206336238', '152026622055', '09164946092', '09164946092', 'patriciapaulaorilla@gmail.com', NULL, NULL, NULL, '10A Barangay St. Purok 6A Lower Bicutan', NULL, 'Paranaque City', '1632', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-09-18', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3688'),
(39290, '3689', 'password1234', 'Rona Jan', 'Castillo', 'Hernandez', 'Employee', NULL, NULL, NULL, 0, '1996-01-16', 'Manila', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3336580314', '216-072-702', '121012853760', '190515433132', '09611491466', '09611491466', 'ronahernandez79@gmail.com', NULL, NULL, NULL, '19415 A. Mendoza St., Matatdo, Paranaque', NULL, 'Paranaque City', '1700', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-10-02', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3689'),
(39291, '3538', 'password1234', 'Reggie', 'Blanza', 'Ortiz', 'Employee', NULL, NULL, NULL, 0, '1990-12-10', 'Dasmariñas, Cavite', 'Female', 'Married', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '3407900289', '316-405-328', '121105101888', '080256174425', '09669038710', '09669038710', 'ortiz.rb0527@gmail.com', NULL, NULL, NULL, '59 Jp Rizal St., Galicia Ii', NULL, 'Mendez, Cavite', '4121', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-03-20', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3538'),
(39292, '3680', 'password1234', 'Maria Angelica', 'Sapinas', 'Mojica', 'Employee', NULL, NULL, NULL, 0, '1995-02-24', 'Alfonso, Cavite', 'Female', 'Single', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '3474713373', '741-666-681', '121222828350', '082500312730', '09456344793', '09456344793', 'mariaangelicamojica95@gmail.com', NULL, NULL, NULL, '48B Taywanak Ilaya', NULL, 'Alfonso,Cavite', '4123', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-09-11', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3680'),
(39293, '2289', 'password1234', 'Bianca', 'Robles', 'Benedicto', 'Employee', NULL, NULL, NULL, 0, '1994-08-01', 'Sta. Cruz, Manila', 'Female', 'Single', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '3452824048', '324-955-966', '121150649668', '022509370781', '09369762916', '09369762916', 'yanksbenedicto@gmail.com', NULL, NULL, NULL, '267 M. Esguerra St., Miguel Mojica', NULL, 'Mendez, Cavite', '4121', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-04-04', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2289'),
(39294, '3417', 'password1234', 'Lehel Joanne', 'Ancheta', 'Padan', 'Employee', NULL, NULL, NULL, 0, '1995-09-01', 'Baguio City', 'Female', 'Single', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '0126916298', '711-355-904', '121240682489', '042502041430', '09274572548', '09274572548', 'joannepadan@yahoomail.com', NULL, NULL, NULL, '-', NULL, 'Tagaytay City', '4120', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-09-19', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3417'),
(39295, '3765', 'password1234', 'John Francis', 'Cerera', 'Reloza', 'Employee', NULL, NULL, NULL, 0, '1999-03-30', 'Manila', 'Male', 'Single', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '3529515387', '646-768-652', '121338501837', '032005287153', '09275137360', '09275137360', 'reloza12@gmail.com', NULL, NULL, NULL, 'Ubejam St., Purok 4, Lalaan Ii', NULL, 'Silang, Cavite', '4118', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-04-08', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3765'),
(39296, '3852', 'password1234', 'Angelica Marie', 'Bioc', 'Dasargo', 'Employee', NULL, NULL, NULL, 0, '1997-05-03', 'Vigan City, Ilocos Sur', 'Female', 'Single', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '3496148719', '380-111-956', '121272470504', '162524978261', '09219319038', '09219319038', 'angelicamariedasargo@gmail.com', NULL, NULL, NULL, 'Vilbay Maitim East', NULL, 'Tagaytay City', '4120', NULL, NULL, NULL, NULL, NULL, 'Probationary', '2024-09-30', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3852'),
(39297, '2319', 'password1234', 'Freya Virtue', 'Villanueva', 'Salazar', 'Employee', NULL, NULL, NULL, 0, '1991-10-28', 'Dasmariñas, Cavite', 'Female', 'Single', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '3437991297', '447-684-594', '121091005055', '010519502548', '09190957415', '09153289174', 'freyavirtuesalzar@gmail.com', NULL, NULL, NULL, '146 A. Mabini St., Poclacion Uno', NULL, 'Amadeo, Cavite', '4119', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-04-19', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2319'),
(39298, '2315', 'password1234', 'Lea', 'Texon', 'Marzan', 'Employee', NULL, NULL, NULL, 0, '1990-12-29', 'Manila', 'Female', 'Single', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '3434533001', '443-380-804', '121060804294', '080255029952', '09683221327', '09683221327', 'lea29marzan@gmail.com', NULL, NULL, NULL, 'Blk8 L64 Molino Homes 2, Salitran 3', NULL, 'Dasmariñas, Cavite', '4114', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-04-19', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2315'),
(39299, '3655', 'password1234', 'Patricia', 'Dimapilis', 'Ortiz', 'Employee', NULL, NULL, NULL, 0, '1997-08-05', 'Manila', 'Female', 'Single', 'Filipino', 'Born Again Christian', NULL, NULL, NULL, NULL, '3489343615', '373-117-715', '121280936858', '010523790817', '09278048175', '09278048175', 'pdmlortiz@gmail.com', NULL, NULL, NULL, '59 Jp Rizal St., Galicia Ii', NULL, 'Mendez, Cavite', '4121', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-08-14', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3655'),
(39300, '3791', 'password1234', 'Noelle  Pauline', 'Manuel', 'Regalado', 'Employee', NULL, NULL, NULL, 0, '2001-06-20', 'Dasmariñas, Cavite', 'Female', 'Single', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '3531093868', '381-317-544', '121340651885', '082536219281', '09174466592', '09174466592', 'noelleregalado@gmail.com', NULL, NULL, NULL, 'Metro South Avenue Blk. 16, L44 Metro South Subdivision, Manggahan', NULL, 'General Trias, Cavite', '4107', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-05-06', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3791'),
(39301, '3836', 'password1234', 'Dyan Grace', 'Bello', 'Buduan', 'Employee', NULL, NULL, NULL, 0, '2000-01-29', 'Makati', 'Female', 'Single', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '3531119360', '657-083-840', '121339900611', '082508940870', '09277286689', '09277286689', 'dyangracebuduan@gmail.com', NULL, NULL, NULL, 'B12 L7 Bougainvilla St., Ches 1, Brgy. Lapidario', NULL, 'Trece Martires, Cavite', '4109', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-08-20', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3836'),
(39302, '3406', 'password1234', 'Katherine Joy', NULL, 'Bunyi', 'Employee', NULL, NULL, NULL, 0, '1987-07-18', 'Dasmariñas Cavite', 'Female ', 'Single', 'Filipino ', 'Catholic', NULL, NULL, NULL, NULL, '3419094442', '282-217-100', '121082695033', '080513706719', '09393889986', '09393889986', 'katbunyi01@gmail.com', NULL, NULL, NULL, '065 Sub Road Maitim 2Nd East Tagaytay', NULL, 'Tagaytay', '4120', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-08-22', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3406'),
(39303, '3572', 'password1234', 'Vince Yuri', 'Torion', 'Matienzo', 'Employee', NULL, NULL, NULL, 0, '1998-12-21', 'Tagaytay City', 'Male', 'Single', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '3509041495', '617-429-315', '121285661960', '082507119405', '09053131421', '09053131421', 'yurimatienzo52@gmail.com', NULL, NULL, NULL, 'Galicia Iii', NULL, 'Mendez, Cavite', '4121', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-05-15', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3572'),
(39304, '3707', 'password1234', 'Kristine Mae', 'Samar', 'Venancio', 'Employee', NULL, NULL, NULL, 0, '2001-04-04', 'Naga City', 'Female', 'Single', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '3483710383', '629-469-500', '121248413011', '080265812191', '09940506164', '09940506164', 'venanciokristinemae0@gmail.com', NULL, NULL, NULL, 'Blk23 L10 Imperial Homes, Tartaria', NULL, 'Silang, Cavite', '4118', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-10-23', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3707'),
(39305, '3762', 'password1234', 'Shane', 'Dionela', 'Esparas', 'Employee', NULL, NULL, NULL, 0, '1999-04-22', 'Carmona, Cavite', 'Female', 'Single', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '0443319523', '647-965-528', '121299286375', '082504623722', '09617958790', '09617958790', 'shanedesparas@gmail.com', NULL, NULL, NULL, 'B4 L6 Denniela Executive Homes Amontay Rd., Brgy Zone 3', NULL, 'Dasmariñas, Cavite', '4114', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-04-08', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3762'),
(39306, '2335', 'password1234', 'Jhennilynn', 'Luzande', 'Aldave', 'Employee', NULL, NULL, NULL, 0, '2001-04-04', 'Naga City', 'Female', 'Single', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '3368754150', '226-579-569', '190900860777', '190900860777', '09709666218', '09709666218', 'aldavejhennilynn@gmail.com', NULL, NULL, NULL, '140 San Pedro St., Bukal', NULL, 'Mendez, Cavite', '4121', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-05-23', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2335'),
(39307, '437', 'password1234', 'Jennifer', 'Tormes', 'Suba', 'Employee', NULL, NULL, NULL, 0, '1994-02-07', 'Bicol, Camarines Sur', 'Female', 'Married', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3450272676', '468-576-101', '121045228956', '020511212090', '09951691639', '09951691639', 'JENNIFER.SUBA0207@GMAIL.COM', NULL, NULL, NULL, 'Sitio 1 Castro Compound Brgy Sta. Lucia Novaliches Quezon City ', NULL, 'Bicol, Camariness Sur ', '1117', NULL, NULL, NULL, NULL, NULL, 'Regular', '2015-09-08', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '437'),
(39308, '714', 'password1234', 'April Joy', 'Damayo', 'Doringo', 'Employee', NULL, NULL, NULL, 0, '1989-04-15', 'Quezon City ', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3413654749', '339-666-854', '121045228956', '030251347316', '09424656591', '09424656591', 'JOYDORINGO15172027@GMAIL.COM', NULL, NULL, NULL, 'Blk 10 Lot 1 Happy St. Maligaya Novaliches Quezon City', NULL, 'Cataduanes', '1118', NULL, NULL, NULL, NULL, NULL, 'Regular', '2017-06-24', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '714'),
(39309, '439', 'password1234', 'Arnold', 'Valencia', 'Azul', 'Employee', NULL, NULL, NULL, 0, '1985-05-27', 'Novaliches Quezon City ', 'Male', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3406634912', '268-463-152', '107008541574', '030503652435', '09330406297', '09330406297', 'ARNOLDAZUL@YAHOO.COM', NULL, NULL, NULL, '600 Llano Road Brgy 167 Caloocan City ', NULL, 'Quezon City ', '1422', NULL, NULL, NULL, NULL, NULL, 'Regular', '2015-09-17', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '439'),
(39310, '2086', 'password1234', 'Mary Samantha', 'Borrel', 'Macapagal', 'Employee', NULL, NULL, NULL, 0, '1994-08-10', 'Manila', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3501482205', '392-730-550', '121279127771', '030266067522', '09687059903', '09687059903', 'SAMACAPAGAL081094@GMAIL.COM', NULL, NULL, NULL, '1045 F. Salvador Ave. Jordan Plains Subd. Brgy Sta. Monica Novaliches Quezon City', NULL, 'Manila', '1117', NULL, NULL, NULL, NULL, NULL, 'Regular', '2021-03-03', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2086'),
(39311, '2330', 'password1234', 'Rouen', 'Juatan', 'Bassi', 'Employee', NULL, NULL, NULL, 0, '1979-12-16', 'Quezon City ', 'Female', 'Maried', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3349374067', '225-265-348', '121121737349', '190896015722', '09152425528', '09152425528', 'rouenbass@gmail.com', NULL, NULL, NULL, '595-A Franco. Cmpd. Holy Cross St. San Bartolome Novaliches Quezon City', NULL, 'Quezon City ', '1116', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-05-21', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2330'),
(39312, '429', 'password1234', 'Aylin', 'Brillantes', 'Verano', 'Employee', NULL, NULL, NULL, 0, '1992-07-15', 'Quezon City ', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3441150024', '441-090-417', '121106590449', '030254800348', '09275703714', '09275703714', 'LILCHICC1592@GMAIL.COM', NULL, NULL, NULL, 'Blk 1 Lot 8 Dormitory Phase 2 Nagkaisang Nayon Novaliches Quezon City ', NULL, 'Quezon City ', '1125', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-04-04', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '429'),
(39313, '3574', 'password1234', 'Amelia', 'Zamora', 'Rionda', 'Employee', NULL, NULL, NULL, 0, '1970-04-23', 'Sta. Cruz Manila', 'Female', 'Married', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3320707271', '909-966-814', '121006363755', '190523629623', '09167846015', '09167846015', 'AMELIAJR23@YAHOO.COM', NULL, NULL, NULL, 'Lot 53 Blk 1 Comp. 5 King William St. Kasiyahan Village Bagbag Novaliches Quezon City', NULL, 'Quezon City ', '1116', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-05-15', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3574'),
(39314, '3877', 'password1234', 'Georgie', 'Buenaventura', 'Ibona', 'Employee', NULL, NULL, NULL, 0, '2000-09-15', 'Caloocan City ', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3480545072', '663-568-347', '121239721411', '030267740557', '09219321235', '09219321235', 'GEORGIE.IBONA@GMAIL.COM', NULL, NULL, NULL, 'Phase 9 Package 3C Block 32 Lot 6 Bagong Silang Caloocan City', NULL, 'Caloocan City', '1428', NULL, NULL, NULL, NULL, NULL, 'Probationary', '2024-11-18', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3877'),
(39315, '712', 'password1234', 'Allyn', 'Abedoza', 'Lucero', 'Employee', NULL, NULL, NULL, 0, '1995-06-10', 'San Juan, Lavezares, Northern Samar', 'Female', 'Married', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3467599025', '339-783-445', '121201624810', '030261463993', '09353001509', '09353001509', 'LUCEROALLYN95@GMAIL.COM', NULL, NULL, NULL, 'Blk 23 Lot 14 Solar Urban Homes Brgy Bagumbong North Caloocan City ', NULL, 'Northern Samar', '1421', NULL, NULL, NULL, NULL, NULL, 'Regular', '2017-06-24', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '712'),
(39316, '1092', 'password1234', 'Charlene', 'Pascual', 'Lazo', 'Employee', NULL, NULL, NULL, 0, '1997-11-14', 'Quezon City ', 'Female', 'Married', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3496653026', '383-002-851', '121273846040', '032514998204', '09977281986', '09977281986', 'LAZO.CHARLENE14@GMAIL.COM', NULL, NULL, NULL, 'Blk 3 Lot 2 Carissa Homes Tierra Nova Royale 1 Bagumbong Caloocan City', NULL, 'Quezon City ', '1421', NULL, NULL, NULL, NULL, NULL, 'Regular', '2020-09-23', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1092'),
(39317, '2399', 'password1234', 'Ken', 'Ancheta', 'De Los Trinos', 'Employee', NULL, NULL, NULL, 0, '1994-12-11', 'Mamburao Occidental, Mindoro', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3461650407', '613-650-862', '121303314662', '090254755795', '9364609168', '09364609168', 'KENDELOSTRINOS@GMAIL.COM', NULL, NULL, NULL, '55 Alley 2 Road 6 Project 6 , Quezon City ', NULL, 'Mindoro', '1100', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-08-15', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2399'),
(39318, '464', 'password1234', 'Marichu', 'Saplan', 'Montemayor', 'Employee', NULL, NULL, NULL, 0, '1987-04-23', 'Nazareth , Dagupan City ', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '0229155833', '477-858-764', '121034129122', '050502018938', '09282923026', '09282923026', 'MARICHUMONTEMAYOR@YAHOO.COM', NULL, NULL, NULL, 'Mnagsaing, Calasiao, Pangasinan', NULL, 'Pangasinan', '2418', NULL, NULL, NULL, NULL, NULL, 'Regular', '2015-12-02', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '464');
INSERT INTO `employees` (`id`, `employee_id`, `password`, `firstname`, `middlename`, `lastname`, `user_role`, `empproftype`, `photo`, `company_id`, `branch_id`, `bdate`, `bplace`, `gender`, `cstatus`, `citizenship`, `religion`, `language`, `bloodtype`, `height`, `weight`, `sss_num`, `tin_num`, `pi_num`, `phil_num`, `tel_num`, `mobile_num`, `email`, `ecp`, `etel`, `current_num`, `current_street`, `current_municipality`, `current_cityprovince`, `current_zipcode`, `permanent_num`, `permanent_street`, `permanent_municipality`, `permanent_cityprovince`, `permanent_zipcode`, `status`, `date_hired`, `date_to`, `regularization_date`, `years_in_service`, `position_id`, `department_id`, `shift_id`, `is_id`, `costcenter_id`, `payclass_id`, `siteassignment_id`, `basepay`, `basic_allowance`, `user_taxable`, `taxable_percent`, `user_nontaxable`, `nontaxable_percent`, `restday`, `factor_days`, `dailyrate`, `hourrate`, `sss_id`, `benefit_1`, `benefit_2`, `benefit_3`, `benefit_4`, `deduction_philhealth`, `deduction_pagibig`, `pagibig_premium`, `bankacc`, `sss_contri_employee`, `sss_employee_trigger`, `sss_contri_employer`, `sss_employer_trigger`, `sss_contri_ecc`, `sss_contri_ee`, `sss_contri_er`, `assigned_supervisor_status`, `created_on`, `empid_approvers_status`, `biometric_id`) VALUES
(39319, '3717', 'password1234', 'Roxan Rommel', 'Taylo', 'Escalante', 'Employee', NULL, NULL, NULL, 0, '1973-11-27', 'Pasay, Malibay', 'Male', 'Married', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3345363865', '205-625-077', '108000336974', '190508166137', '09753801138', '09753801138', 'ROMMELESCALANTE273128@GMAIL.COM', NULL, NULL, NULL, 'Area C 229 Jp Rizal St. Brgy Bagong Silang Q. C', NULL, 'Quezon City ', '1428', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-01-15', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3717'),
(39320, '3723', 'password1234', 'Erica', 'Macandog', 'Badillo', 'Employee', NULL, NULL, NULL, 0, '2000-10-15', 'San Juan, Batanggas', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3529099065', '608-916-372', '121334286338', '092508796295', '09303786945', '09303786945', 'ERICABADILLO1515@GMAIL.COM', NULL, NULL, NULL, '5255 Spazio Bernardo Condominium, Sauyo Novaliches Q. C', NULL, 'San Juan Batanggas', '1116', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-01-29', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3723'),
(39321, '3671', 'password1234', 'Mary Jane', 'Camcam', 'Juan', 'Employee', NULL, NULL, NULL, 0, '1978-12-14', 'Mcu, Caloocan City ', 'Female', 'Married', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3370156704', '217-804-228', '121001440467', '030250307345', '09054484348', '09054484348', 'MARYJANEJUAN3@GMAIL.COM', NULL, NULL, NULL, '10 Datu Sumakwel St. Urduja Village Caloocan City ', NULL, 'Caloocan City', '1428', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-08-29', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3671'),
(39322, '894', 'password1234', 'Mildred Ann', 'Clemente', 'Tomas', 'Employee', NULL, NULL, NULL, 0, '1995-11-09', 'Quezon City ', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3444662454', '710-508-264', '121230216128', '032511380552', '09360810590', '09360810590', 'MILDRED.TOMASS@GMAIL.COM', NULL, NULL, NULL, '45 Pasacola St. Nagkaisang Nayon Novaliches Quezon City ', NULL, 'Quezon City ', '1125', NULL, NULL, NULL, NULL, NULL, 'Regular', '2018-10-15', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '894'),
(39323, '2181', 'password1234', 'Marita', 'Bueno', 'Lim', 'Employee', NULL, NULL, NULL, 0, '1988-11-02', 'Valenzuela City ', 'Female', 'Married', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3421567226', '447--738-194', '121080222079', '220000932663', '09761803839', '09761803839', 'MARITA_BUENO@YAHOO.COM', NULL, NULL, NULL, '1-A Pasacola St. Area D. Brgy Nagkaisang Nayon Novaliches Quezon City ', NULL, 'Roxas City /Capiz/Negros Occidental', '1125', NULL, NULL, NULL, NULL, NULL, 'Regular', '2021-08-18', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2181'),
(39324, '3548', 'password1234', 'Ly-An', NULL, 'Catagcatag', 'Employee', NULL, NULL, NULL, 0, '1996-01-12', 'Quezon City ', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3476608499', '718-734-564', '121228103152', '030263032299', '09169607468', '09169607468', 'LYANVERANO88@GMAIL.COM', NULL, NULL, NULL, 'Riverdales St. Foresthill Brgy Sta. Monica Novaliches Quezon City ', NULL, 'Quezon City ', '1117', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-04-03', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3548'),
(39325, '975', 'password1234', 'Rica Joy ', 'Tablang', 'Capistrano', 'Employee', NULL, NULL, NULL, 0, '1993-02-17', 'Quezon City ', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3432927169', '433-001-092', '121119692036', '032000620512', '09105658066', '09105658066', 'CRICAJOY17@GMAIK.COM', NULL, NULL, NULL, '22 Victoria St. Brgy Gulod Novaliches Quezon City', NULL, 'Quezon City ', '1117', NULL, NULL, NULL, NULL, NULL, 'Regular', '2019-08-22', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '975'),
(39326, '3651', 'password1234', 'Kaila Micaela', 'Pasamba', 'Esmeria', 'Employee', NULL, NULL, NULL, 0, '1999-11-06', 'Quezon City ', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3484675304', '747-309-460', '121250988296', '032510552198', '09773664619', '09773664619', 'KAILAMICAELA.ESMERIA@GMAIL.COM', NULL, NULL, NULL, '28 Rebisco Road Brgy Nagkaisang Nayon Novaliches Quezon  City ', NULL, 'Quezon City ', '1125', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-08-07', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3651'),
(39327, '3756', 'password1234', 'Mediatrix', 'Padrilan', 'Castro', 'Employee', NULL, NULL, NULL, 0, '2000-08-10', 'Quezon City ', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3526725400', '633-174-892', '121323943876', '030268926891', '09158744256', '09158744256', 'MEDIATRIXCASTROP@GMAIL.COM', NULL, NULL, NULL, '2035 St. Josep St. Brgy 185 Tala Caloocan City ', NULL, 'Quezon City ', '1427', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-04-01', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3756'),
(39328, '3740', 'password1234', 'Shella', 'Nocquiao', 'Monterola', 'Employee', NULL, NULL, NULL, 0, '2000-12-19', 'Cawayan, Masbate', 'Female', 'Single', 'Filipino', 'Born Again', NULL, NULL, NULL, NULL, '3526394035', '386-283-482', '121322980467', '102538581949', '09358327144', '09358327144', 'shellanmonterola@gmail.com', NULL, NULL, NULL, 'Blk. 28 Lot 4 Diamond St. Villanova Subd. Nagkaisang Nayon Novaliches Q.C', NULL, 'Novaliches Quezon City ', '1125', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-03-11', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3740'),
(39329, '963', 'password1234', 'Cristina ', 'Fulleros', 'Joven', 'Employee', NULL, NULL, NULL, 0, '1977-12-30', 'Caloocan City ', 'Female', 'Married', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3357262598', '193-269-932', '121049136583', '190517285475', '09455316206', '09455316206', 'tinsnevoj@gmail.com', NULL, NULL, NULL, '23 Silangan Park Marulas ', NULL, 'Valenzuela City', '1440', NULL, NULL, NULL, NULL, NULL, 'Regular', '2019-07-08', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '963'),
(39330, '3894', 'password1234', 'Sheryl', 'Ramirez', 'Latorre', 'Employee', NULL, NULL, NULL, 0, '1980-04-12', 'Marinduque', 'Female', 'Widowed', 'Filipino', 'Christian', NULL, NULL, NULL, NULL, '3361098745', '237-060-786', '121256678012', '190265914903', '09174845593', '09174845593', 'sheryl.latorre29@gmail.com', NULL, NULL, NULL, '159 Molave Park Merville Subd', NULL, 'Paranaque City ', '1709', NULL, NULL, NULL, NULL, NULL, 'Probationary', '2025-01-27', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3894'),
(39331, '2156', 'password1234', 'Miraflor', 'Dalin', 'Tagufa', 'Employee', NULL, NULL, NULL, 0, '1995-10-29', 'Rodriguez Rizal', 'Female', 'Single', 'Filipino', 'Born Again Christian', NULL, NULL, NULL, NULL, '3506027458', '398-083-916', '121284011961', '032510009338', '09166237173', '09166237173', 'florrrry@gmail.com', NULL, NULL, NULL, 'Block 18 Lot 1 Theresa Heights Metro Manila Hills San Jose Rodriguez', NULL, 'Rizal', '1860', NULL, NULL, NULL, NULL, NULL, 'Regular', '2021-06-17', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2156'),
(39332, '472', 'password1234', 'Allison Gail', 'Amoroso', 'Chua', 'Employee', NULL, NULL, NULL, 0, '1991-10-25', 'Quezon City ', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3451758681', '479-068-810', '121159797751', '030512891469', '09161374743', '09161374743', 'allichoon@gmail.com', NULL, NULL, NULL, '69Bb Calamba St. Brgy Lourdes Quezon City', NULL, 'Quezon City ', '1114', NULL, NULL, NULL, NULL, NULL, 'Regular', '2016-01-06', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '472'),
(39333, '732', 'password1234', 'Karen', 'Dampil', 'Castillo', 'Employee', NULL, NULL, NULL, 0, '1991-10-01', 'Lubao Pampanga', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '0240537317', '487-193-040', '121175310198', '070510394338', '09260613268', '09260613268', 'karendcastillo57@gmail.com', NULL, NULL, NULL, '1C 2Nd Ave North Signal', NULL, 'Taguig City', '1630', NULL, NULL, NULL, NULL, NULL, 'Regular', '2017-08-01', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '732'),
(39334, '138', 'password1234', 'Carlito Rogelio ', 'Natan', 'Salvador', 'Employee', NULL, NULL, NULL, 0, '1990-01-12', 'Sta Cruz,Manila', 'Male', 'Married', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3438538581', '439-104-809', '121089853996', '220001608959', '09273304529', '09273304529', 'carlitosalvador012@gmail.com', NULL, NULL, NULL, '835 Salazar St. Binondo Manila', NULL, 'Manila City', '1008', NULL, NULL, NULL, NULL, NULL, 'Regular', '2018-04-19', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '138'),
(39335, '2143', 'password1234', 'Rogelio', 'Magiliman', 'Sulit ', 'Employee', NULL, NULL, NULL, 0, '1996-08-05', 'Los Baños, Laguna', 'Male', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '0429911291', '460-651-696', '914273822245', '080258400449', '09262723521', '09262723521', 'sulitpatrick8@gmail.com', NULL, NULL, NULL, 'Blk 20 Lot 1 Phase 1 Villa De Calamba Brgy. La Mesa Calamba City, Laguna', NULL, 'Calamba City, Laguna', '4028', NULL, NULL, NULL, NULL, NULL, 'Regular', '2021-05-31', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2143'),
(39336, '3430', 'password1234', 'Roneth-Ann', 'Garcia', 'Dones', 'Employee', NULL, NULL, NULL, 0, '1995-10-29', 'Gapan City, Nueva Ecija', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '0243238930', '616-384-904', '121226378180', '210255411076', '09278084429', '09278084429', 'ronethannd@gmail.com', NULL, NULL, NULL, '3255 F. Riverview Compound Tambo, Paranaque', NULL, 'Paranaque City ', '1701', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-10-10', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3430'),
(39337, '3802', 'password1234', 'Lovely Jairra', 'De Torres', 'Cruzat', 'Employee', NULL, NULL, NULL, 0, '1999-11-17', 'Fabrica, Lobo, Batangas', 'Female', 'Single', 'Filipino', 'Born Again Christian', NULL, NULL, NULL, NULL, '0445834048', '633-156-190', '121327572212', '092506206008', '09158860246', '09158860246', 'jairracruzat@gmail.com', NULL, NULL, NULL, 'City Residences, P. Martinez Street, Bagong Silang, Mandaluyong', NULL, 'Mandaluyong City', '1550', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-06-10', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3802'),
(39338, '3818', 'password1234', 'Naejell', NULL, 'Roa', 'Employee', NULL, NULL, NULL, 0, '2000-08-14', 'Leyte', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3531931247', '652-649-177', '121344206404', '010265294400', '09561370030', '09561370030', 'naejellr@gmail.com', NULL, NULL, NULL, 'The Grand Midori Legazpi St. Legazpi Village, Makati City', NULL, 'Makati City', '1229', NULL, NULL, NULL, NULL, NULL, 'Probationary', '2024-06-24', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3818'),
(39339, '2338', 'password1234', 'Jessielyn', 'Cabayacruz', 'Samson', 'Employee', NULL, NULL, NULL, 0, '1994-12-21', 'Zamboanga City', 'Female', 'Single', 'Filipino', 'Christian', NULL, NULL, NULL, NULL, '1012363860', '499-932-894', '121226567623', '140502387932', '09563353145', '09563353145', 'samsonjessielyn@gmail.com', NULL, NULL, NULL, 'Smdc Charm Resiences Felix Ave, San Isidro Cainta Rizal', NULL, 'Cainta, Rizal', '1900', NULL, NULL, NULL, NULL, NULL, 'Probationary', '2024-08-20', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2338'),
(39340, '596', 'password1234', 'Iryl May', 'Sapon', 'Nator', 'Employee', NULL, NULL, NULL, 0, '1988-05-24', 'Cebu City', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3422614453', '331-582-276', '121179332467', '010256924973', '09272558540', '09272558540', 'iryl657@gmail.com', NULL, NULL, NULL, '1C 2Nd Ave North Signal ', NULL, 'Taguig City', '1630', NULL, NULL, NULL, NULL, NULL, 'Regular', '2016-08-22', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '596'),
(39341, '790', 'password1234', 'Angelica', 'Acojedo', 'Fidel', 'Employee', NULL, NULL, NULL, 0, '1996-11-29', 'Angono Rizal', 'Female', 'Single', 'Filipino', 'Christian', NULL, NULL, NULL, NULL, '3471547076', '342-587-565', '121212168541', '212501662841', '09057718894', '09057718894', 'gelfidel.af@gmail.com', NULL, NULL, NULL, '4234 Laredo St Palanan', NULL, 'Makati City', '1226', NULL, NULL, NULL, NULL, NULL, 'Regular', '2017-11-27', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '790'),
(39342, '1015', 'password1234', 'Kimberly ', 'Rivera', 'Uy', 'Employee', NULL, NULL, NULL, 0, '1997-09-04', 'Quezon City ', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3491702736', '773-015-761', '121266714681', '030265359279', '09773064506', '09773064506', 'kimberly.rivera.uy@gmail.com', NULL, NULL, NULL, '8 Unrubia St Bgy Marilag Proj 4', NULL, 'Quezon City ', '1109', NULL, NULL, NULL, NULL, NULL, 'Regular', '2020-01-29', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1015'),
(39343, '906', 'password1234', 'Melissa', 'Taguinod', 'Manuel', 'Employee', NULL, NULL, NULL, 0, '1996-01-11', 'Junction Pinukpuk, Kalinga', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3479521706', '742-960-113', '121236666382', '030263503216', '09976644838', '09976644838', 'manuelmelissa799@gmail.com', NULL, NULL, NULL, 'Palanan, Makati', NULL, 'Makati City', '1235', NULL, NULL, NULL, NULL, NULL, 'Regular', '2018-12-03', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '906'),
(39344, '3546', 'password1234', 'Athina Joy', 'Gautani', 'Esbeg', 'Employee', NULL, NULL, NULL, 0, '1997-11-11', 'Athens, Greece', 'Female', 'Single', 'Greek', 'Roman Catholic', NULL, NULL, NULL, NULL, '3495073270', '624-519-915', '121258261500', '050258017037', '09296625612', '09296625612', 'joyathina.esbeg@gmail.com', NULL, NULL, NULL, '6878 Washington Street, Pio Del Pilar, Makati City', NULL, 'Makati City', '1226', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-04-03', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3546'),
(39345, '3695', 'password1234', 'Bianca Nicole', 'Sisa', 'Mallari', 'Employee', NULL, NULL, NULL, 0, '2001-06-03', 'Concepcion, Tarlac', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '0250079852', '635-264-566', '121329038554', '072537326833', '09462802202', '09462802202', 'mallaribiancanicoles@gmail.com', NULL, NULL, NULL, 'Blk 10, Lot 45 Brgy. Cristo Rey, Capas, Tarlac', NULL, 'Tarlac City', '2300', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-10-02', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3695'),
(39346, '3708', 'password1234', 'Kernalyn', 'Manajil', 'Kiramat', 'Employee', NULL, NULL, NULL, 0, '1988-08-14', 'Zamboanga City', 'Female', 'Single', 'Filipino', 'Islam', NULL, NULL, NULL, NULL, '1013682003', '402-925-469', '121103339511', '202024096914', '09666745885', '09666745885', 'kernalynmkiramat@gmail.com', NULL, NULL, NULL, 'Avida Tower Centera Unit 1614 ', NULL, 'Mandaluyong City', '1550', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-10-23', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3708'),
(39347, '1006', 'password1234', 'Melanie', 'Ortega', 'Milo', 'Employee', NULL, NULL, NULL, 0, '1989-12-11', 'Lingayen, Pangasinan', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '0228170013', '308-261-623', '121042665331', '030506737830', '09531368575', '09531368575', 'melaniemilo11@gmail.com', NULL, NULL, NULL, 'Unit 301 1651 Nla Residences Kahilom 3 Brgy. 853 Pandacan Manila', NULL, 'Manila City', '1011', NULL, NULL, NULL, NULL, NULL, 'Regular', '2019-12-03', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1006'),
(39348, '1059', 'password1234', 'Dzry', 'Metiong', 'Oquendo', 'Employee', NULL, NULL, NULL, 0, '1998-08-08', 'Libertad Antique', 'Female', 'Single', 'Filipino', 'Iglesia Filipina Independiente', NULL, NULL, NULL, NULL, '3484928747', '748-609-196', '121251564456', '010264742744', '09611547349', '09611547349', 'oquendodzry08@gmail.com', NULL, NULL, NULL, '4286 Emilia St Palanan, Makati', NULL, 'Makati City', '1235', NULL, NULL, NULL, NULL, NULL, 'Regular', '2020-08-03', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1059'),
(39349, '2373', 'password1234', 'Mary Joy', 'Siruma', 'Ombao', 'Employee', NULL, NULL, NULL, 0, '1995-12-31', 'Presentacion, Camarines Sur', 'Female', 'Single', 'Filipino', 'Protestant', NULL, NULL, NULL, NULL, '0514187600', '345-552-920', '121217267732', '100252825708', '09977613859', '09977613859', 'marymeombao@gmail.com', NULL, NULL, NULL, '168 D. Villaruel St. Brgy. 28, Pasay City', NULL, 'Pasay City', '1300', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-07-04', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2373'),
(39350, '3562', 'password1234', 'Myra', 'Paquidongan', 'Igoy', 'Employee', NULL, NULL, NULL, 0, '1998-06-28', 'Davao City', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3486781610', '753-033-590', '121256819743', '020272845779', '09381011475', '09381011475', 'myra.igoy2128@gmail.com', NULL, NULL, NULL, '524-D Inocencio Street, Pasay City', NULL, 'Pasay City', '1300', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-04-17', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3562'),
(39351, '3770', 'password1234', 'Maria Sandra', 'Bascos', 'Timosan', 'Employee', NULL, NULL, NULL, 0, '1993-03-21', 'Villasis, Pangasinan', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3436502357', '325-560-709', '121147309098', '030257013037', '09562692105', '09562692105', 'mtimosan90@gmail.com', NULL, NULL, NULL, '252 Sen Gil Puyat Ave. Pio Del Pilar Makaticity', NULL, 'Makati City', '1226', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-04-15', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3770'),
(39352, '132', 'password1234', 'Myla-Rose', 'Siruma', 'Berizo', 'Employee', NULL, NULL, NULL, 0, '1985-11-01', 'Camarines Sur', 'Female', 'Single', 'Filipino', 'Born Again Christian', NULL, NULL, NULL, NULL, '505933986', '306-986-391', '121070188189', '010509316363', '09668426590', '09668426590', 'mylaroseberizo@gmail.com', NULL, NULL, NULL, '168-D Villaruel St., Pasay City', NULL, 'Pasay City', '1300', NULL, NULL, NULL, NULL, NULL, 'Regular', '2010-03-02', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '132'),
(39353, '3653', 'password1234', 'Aries Tynne', 'Pasion', 'Stella', 'Employee', NULL, NULL, NULL, 0, '1987-09-13', 'Manila', 'Male', 'Single', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '3434070535', '265-944-667', '121021217970', '110505788613', '09567464626', '09567464626', 'ariestynne.stella@gmail.com', NULL, NULL, NULL, '712 Balingkit St. Leveriza Malate Manila', NULL, 'Manila', '1004', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-08-07', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3653'),
(39354, '448', 'password1234', 'Maria Theresa', NULL, 'Yap', 'Employee', NULL, NULL, NULL, 0, '1962-12-20', 'Manila', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '0364681712', '182-454-172', '121159466174', '190250378940', '09178134018', '09178134018', 'drathess@gmail.com', NULL, NULL, NULL, '1667 D. Eugenio St.', NULL, 'Manila ', '1012', NULL, NULL, NULL, NULL, NULL, 'Regular', '2015-10-05', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '448'),
(39355, '2275', 'password1234', 'Maria Ana', 'Rael', 'Duro', 'Employee', NULL, NULL, NULL, 0, '1978-12-12', 'Leyte', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3342524937', '209-947-207', '121101869447', '190895543652', '09065791610', '09065791610', 'ana_duro26@yahoo.com', NULL, NULL, NULL, 'A-1268 Gate 6 Parola', NULL, 'Manila ', '1012', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-03-21', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2275'),
(39356, '2250', 'password1234', 'Michelle ', 'David', 'Uy', 'Employee', NULL, NULL, NULL, 0, '1976-10-16', 'Nueva Ecija', 'Female', 'Married ', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3325747595', '624-974-340', '121007146380', '190258566304', '09669613054', '09669613054', 'danreychel@yahoo.com', NULL, NULL, NULL, '1089 A Don Quijote St', NULL, 'Manila ', '1015', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-02-18', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2250'),
(39357, '3413', 'password1234', 'Hannah Denise', 'Chua', 'Dee', 'Employee', NULL, NULL, NULL, 0, '1995-03-27', 'Manila', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3502148182', '321-891-864', '121305105677', '022502371960', '09052495863', '09052495863', 'denise_dee95@yahoo.com', NULL, NULL, NULL, '431 Jaboneras St. Binondo', NULL, 'Manila ', '1108', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-08-31', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3413'),
(39358, '3570', 'password1234', 'Sunshine', 'Rebucas', 'Cajano', 'Employee', NULL, NULL, NULL, 0, '1991-01-30', 'Laguna', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3515988067', '453-502-672', '121293725722', '020276830024', '09267511905', '09267511905', 'shinecajano@gmail.com', NULL, NULL, NULL, '504 Bldg5 Gsis Metro Homes', NULL, 'Mania', '1108', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-05-02', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3570'),
(39359, '740', 'password1234', 'Maria Cristina', 'Jagonoy', 'Apolinar', 'Employee', NULL, NULL, NULL, 0, '1973-03-07', 'Manila', 'Female', 'Married ', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3331605236', '194-788-300', '121195865331', '190254429353', '09664160344', '09664160344', 'mcristinaapolinar@gmail.com', NULL, NULL, NULL, '1410-A H Lacson St. Sta Cruz Manila', NULL, 'Manila ', '1014', NULL, NULL, NULL, NULL, NULL, 'Regular', '2017-08-17', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '740'),
(39360, '123', 'password1234', 'Charie May', 'Escosio', 'Sapno', 'Employee', NULL, NULL, NULL, 0, '1990-05-09', 'Manila', 'Female', 'Married ', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3429513269', '435-130-090', '121097207301', '030511133625', '09959622240', '09959622240', 'charie_escosio0509@yahoo.com.ph', NULL, NULL, NULL, '728 J Solis Tondo Manila', NULL, 'Manila ', '1013', NULL, NULL, NULL, NULL, NULL, 'Regular', '2013-07-18', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '123'),
(39361, '3742', 'password1234', 'Hannah', 'Jainal', 'Omar', 'Employee', NULL, NULL, NULL, 0, '1998-06-18', 'Zamboanga', 'Female', 'Single', 'Filipino', 'Muslim', NULL, NULL, NULL, NULL, '1014823007', '612-973-640', '121335565102', '140253353259', '09363590392', '09363590392', 'hannahomar06@gmail.com', NULL, NULL, NULL, 'Sta. Barbara Ayer Village Abg Drive ', NULL, 'Zamboanga', '7000', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-03-11', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3742'),
(39362, '3896', 'password1234', 'Nicole Anne', 'Atienza', 'Lopena', 'Employee', NULL, NULL, NULL, 0, '2001-08-15', 'Taguig City', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '0447969830', NULL, '121341668857', '092504930868', '09761126446', '09761126446', 'nicolelopena39@gmail.com', NULL, NULL, NULL, 'Blk 7 Lot 17 Transville Banaybanay Lipa City', NULL, 'Lipa City, Batangas', '4217', NULL, NULL, NULL, NULL, NULL, 'Probationary', '2025-01-27', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3896'),
(39363, '80', 'password1234', 'Jennifer', 'Arjona', 'Gallardo', 'Employee', NULL, NULL, NULL, 0, '1983-08-01', 'Navotas', 'Female', 'Married ', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3398316584', '244-695-120', '108000339147', '030502194859', '09262620167', '09262620167', 'fhaye.arjona@gmail.com', NULL, NULL, NULL, '373 L Santos St. Navotas City', NULL, 'Navotas City', '1485', NULL, NULL, NULL, NULL, NULL, 'Regular', '2006-02-16', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '80'),
(39364, '2198', 'password1234', 'Marie Joy', 'Rumbaua', 'Deza', 'Employee', NULL, NULL, NULL, 0, '1996-06-13', 'Cagayan', 'Female', 'Married ', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3459495399', '331-686-485', '121171304879', '062503787631', '09056065686', '09056065686', 'mariejoyrumbaua250@gmail.com', NULL, NULL, NULL, '2439 Legarda St. Brgy 412, Sampaloc Manila', NULL, 'Manila ', '1008', NULL, NULL, NULL, NULL, NULL, 'Regular', '2021-10-18', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2198'),
(39365, '3662', 'password1234', 'Regine', 'Operario', 'Gallardo', 'Employee', NULL, NULL, NULL, 0, '1992-01-01', 'Manila', 'Female', 'Married ', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3442618604', '293-235-327', '121112001528', '020261680786', '09086545455', '09086545455', 'operarioregine04@yahoo.com', NULL, NULL, NULL, '1540 B.P Guevarra St.', NULL, 'Manila ', '1003', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-08-22', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3662'),
(39366, '2173', 'password1234', 'Angelica', 'Bacleon', 'Constantino', 'Employee', NULL, NULL, NULL, 0, '1993-07-27', 'Caloocan City', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3448533356', '470-008-123', '121132400855', '020263806426', '09063161995', '09063161995', 'angelconstantino1127@gmail.com', NULL, NULL, NULL, '810 Bucaneg St. Tondo', NULL, 'Manila ', '1012', NULL, NULL, NULL, NULL, NULL, 'Regular', '2021-08-09', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2173'),
(39367, '285', 'password1234', 'Jaime', 'Mejos', 'Guerrero', 'Employee', NULL, NULL, NULL, 0, '1970-04-28', 'Manila', 'Male', 'Married ', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3304406132', '296-806-040', '105001332164', '030504814803', '09322422765', '09322422765', 'guerrerojames533@gmail.com', NULL, NULL, NULL, '34 Dafot St', NULL, 'Quezon City ', '4332', NULL, NULL, NULL, NULL, NULL, 'Regular', '2009-11-13', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '285'),
(39368, '3665', 'password1234', 'Czarina Mae ', 'Jose', 'Pascual', 'Employee', NULL, NULL, NULL, 0, '1998-10-02', 'Quezon City ', 'Female', 'Single', 'Filipino', 'Iglesia Ni Cristo', NULL, NULL, NULL, NULL, '3485673402', '741-239-092', '12125093201-0', '020272649279', '09750276813', '09750276813', 'czarina.pascual@nwdi.com.ph', NULL, NULL, NULL, '#14B Pascual Mang David St. Baesa Quezon City', NULL, 'Quezon City ', '1106', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-08-22', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3665'),
(39369, '51', 'password1234', 'Annabelle', 'Lim', 'Ng', 'Employee', NULL, NULL, NULL, 0, '1980-08-22', 'Manila', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3376889169', '217-970-958', '108000287128', '190899784034', '09165506330', '09165506330', 'annabelle.ng@nwdi.com.ph', NULL, NULL, NULL, '1041 Instuccion St. Sampaloc Manila', NULL, 'Quezon City ', '1126', NULL, NULL, NULL, NULL, NULL, 'Regular', '2007-07-02', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51'),
(39370, '933', 'password1234', 'Jessa Jean', 'Tendencia', 'Bercades', 'Employee', NULL, NULL, NULL, 0, '1987-12-27', 'Valenzuela City', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3407926506', '264-036-053', '121137940996', '010505626856', '09278721542', '09278721542', 'bercadesjessajean@yahoo.com', NULL, NULL, NULL, 'Blk 25 Lot 13 Northville 1B Punturin Valenzuela City', NULL, 'Valenzuela City ', '1447', NULL, NULL, NULL, NULL, NULL, 'Regular', '2019-04-05', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '933'),
(39371, '2262', 'password1234', 'Pamela Angelica', 'Navata', 'Versoza', 'Employee', NULL, NULL, NULL, 0, '1998-09-16', 'Quezon City', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3516283253', '606-593-293', '121294190872', '010267461509', '09957397000', '09957397000', 'pamela.versoza@nwdi.com.ph', NULL, NULL, NULL, 'Blk 3 Lot 30 Enclave At Kingspoint King Nicolas St. Kingspoint Subd. Brgy. Bagbag Quezon City', NULL, 'Quezon City', '1116', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-03-02', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2262'),
(39372, '2304', 'password1234', 'Jennica', 'Rosario', 'Poserio', 'Employee', NULL, NULL, NULL, 0, '1997-08-16', 'Dagupan City, Pangasinan', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '0246542364', '772-009-099', '121273405460', '052518918184', '09762437658', '09762437658', 'jennicaposerio16@gmail.com', NULL, NULL, NULL, 'Victoria Sports Tower Edsa South Triangle, Quezon City', NULL, 'Quezon City', '1103', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-04-25', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2304'),
(39373, '3503', 'password1234', 'Paulynne', 'Rosal', 'Dumlao', 'Employee', NULL, NULL, NULL, 0, '2000-04-27', 'Santiago, Isabela', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3523930670', '616-435-611', '121314209750', '030267128754', '09688843790', '09688843790', 'dumlao.paulynne@gmail.com', NULL, NULL, NULL, '57 B Road 7, Project 6, Quezon City', NULL, 'Quezon City', '1100', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-02-06', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3503'),
(39374, '3719', 'password1234', 'Denisse ', 'Cruz', 'Haz', 'Employee', NULL, NULL, NULL, 0, '1982-01-06', 'Manila City', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3423312796', '400-266-729', '121078605256', '192008877897', '09174769338', '09174769338', 'denissechaz1682@gmail.com', NULL, NULL, NULL, '14 St. Patrick St. Barangka Marikina City', NULL, 'Marikina City', '1803', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-01-22', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3719'),
(39375, '3661', 'password1234', 'Vincent William', 'Canuto', 'Reyes', 'Employee', NULL, NULL, NULL, 0, '1998-02-14', 'Manila City', 'Male', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3527132542', '633-450-284', '121325669714', '030269890440', '09154433951', '09154433951', 'vincentreyes96@gmail.com', NULL, NULL, NULL, '81 P Tupaz St. Dona Rosario Subd. Novaliches Quezon City', NULL, 'Quezon City', '1106', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-02-19', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3661'),
(39376, '3745', 'password1234', 'Melvin', 'Caplas', 'Tanacio', 'Employee', NULL, NULL, NULL, 0, '1998-05-13', 'Sudipen, La Union', 'Male', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '0130239518', '612-737-317', '121303589942', '052508437463', '09667622294', '09667622294', 'melvintanacio13@gmail.com', NULL, NULL, NULL, 'Montemayor St. Mariblo Quezon City', NULL, 'Quezon City', '1104', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-03-18', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3745'),
(39377, '2301', 'password1234', 'Rhodora', 'Alejo', 'Aquino', 'Employee', NULL, NULL, NULL, 0, '1973-04-10', 'Navotas City', 'Female', 'Married', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3345674868', '205-623-092', '121148985922', '020275256588', '09668534271', '09668534271', 'rhodoraaquino973@gmail.com', NULL, NULL, NULL, 'B4 L17 Ph3A Estella Homes Subd. Marilao Bulacan', NULL, 'Marilao Bulacan', '3019', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-04-20', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2301'),
(39378, '3565', 'password1234', 'Camille Micah', 'Dionco', 'Samadan', 'Employee', NULL, NULL, NULL, 0, '1990-02-16', 'Quezon City', 'Female', 'Single', 'Filipino', 'Born Again Christian', NULL, NULL, NULL, NULL, '3432520605', '640-102-185', '121318547611', '030259470508', '09664222278', '09664222278', 'samadanmicahcamille@gmail.com', NULL, NULL, NULL, 'Sitio1 Paguio Cmpd. Sta. Lucia Novaliches Quezon City', NULL, 'Quezon City', '1123', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-05-02', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3565'),
(39379, '3588', 'password1234', 'Maylene', 'Maranan', 'Rivera', 'Employee', NULL, NULL, NULL, 0, '1997-05-15', 'Quezon City', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3469932703', '341-543-131', '121217483934', '032517162883', '09064872570', '09064872570', 'maylenerivera4@gmail.com', NULL, NULL, NULL, 'B2 L14 Saint Claire Santiago Subd. Novaliches Quezon City', NULL, 'Quezon City', '1123', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-05-29', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3588'),
(39380, '3583', 'password1234', 'Leopoldo', 'De Leola', 'Bendicio', 'Employee', NULL, NULL, NULL, 0, '1972-09-30', 'Nasugbu Batangas', 'Male', 'Married', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3333974509', '223-933-622', '121007983535', '020502522222', '09282861525', '09282861525', 'bendicioleopoldo1@gmail.com', NULL, NULL, NULL, '326 I. Lopez St. Brgy. Hagdang Bato Itaas Mandaluyong City', NULL, 'Mandaluyong City', '1550', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-05-22', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3583'),
(39381, '3741', 'password1234', 'Ramona', 'Sahidulla', 'Sirail', 'Employee', NULL, NULL, NULL, 0, '1998-12-06', 'Zamboanga City', 'Female', 'Single', 'Filipino', 'Muslim', NULL, NULL, NULL, NULL, '1014842295', '646-947-271', '121334472699', '140253354085', '09053256096', '09053256096', 'ramona.sirail2024@gamil.com', NULL, NULL, NULL, '1010 Vicente Cruz St. Sampaloc Manila', NULL, 'Sampaloc Manila', '1008', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-03-11', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3741'),
(39382, '664', 'password1234', 'Janette', 'Dare', 'Santos', 'Employee', NULL, NULL, NULL, 0, '1978-01-28', 'Guagua Pampanga', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3394694268', '244-750-148', '109004451019', '010504844582', '09266757039', '09266757039', 'jdsantos0128@gmail.com', NULL, NULL, NULL, '25 Binga St. Cor. Masiway St. Napocor Village Tandang Sora Quezon City', NULL, 'Quezon City', '1116', NULL, NULL, NULL, NULL, NULL, 'Regular', '2017-03-06', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '664'),
(39383, '935', 'password1234', 'Aiza', 'Velasco', 'Saliganan', 'Employee', NULL, NULL, NULL, 0, '1987-10-14', 'Quezon City', 'Female', 'Married', 'Filipino', 'Born Again Christian', NULL, NULL, NULL, NULL, '3416875101', '278-792-139', '121077780640', '030505772748', '09957731182', '09957731182', 'saligananaiza@gmail.com', NULL, NULL, NULL, 'B50 L10 Eastwood Residences Ph7 Brgy. San Isidro Rodriguez Rizal', NULL, 'Rodriguez Rizal', '1860', NULL, NULL, NULL, NULL, NULL, 'Regular', '2019-04-12', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '935'),
(39384, '2183', 'password1234', 'John Raymar', 'Agravante', 'Palay', 'Employee', NULL, NULL, NULL, 0, '1990-08-26', 'Manila City', 'Male', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3442462795', '316-152-759', '121107079185', '010518516650', '09273952592', '09273952592', 'johnpalay@gmail.com', NULL, NULL, NULL, '82 4Th St. New Manila Quezon City', NULL, 'Quezon City', '1112', NULL, NULL, NULL, NULL, NULL, 'Regular', '2021-09-03', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2183'),
(39385, '3701', 'password1234', 'Lady Jamaica', 'Canlas', 'Fallaria', 'Employee', NULL, NULL, NULL, 0, '1997-09-15', 'Quezon City', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3523817900', '744-489-039', '121316572535', '030267414684', '09095512174', '09095512174', 'canlaslj15@gmail.com', NULL, NULL, NULL, 'Kapalaran St, Litex Rd. Brgy. Commnwealth Quezon City', NULL, 'Quezon City', '1121', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-10-16', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3701'),
(39386, '3808', 'password1234', 'Charline', 'Balbaera', 'Labatorio', 'Employee', NULL, NULL, NULL, 0, '1985-11-12', 'Nueva Ecija', 'Female', 'Married', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3407266198', '258-965-040', '121035080691', '010252654203', '09459841589', '09459841589', 'charlinelabatorio@gmail.com', NULL, NULL, NULL, '21 N. Ponce St. Brgy. Sta. Lucia Novaliches Quezon City', NULL, 'Quezon City', '1123', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-06-18', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3808');
INSERT INTO `employees` (`id`, `employee_id`, `password`, `firstname`, `middlename`, `lastname`, `user_role`, `empproftype`, `photo`, `company_id`, `branch_id`, `bdate`, `bplace`, `gender`, `cstatus`, `citizenship`, `religion`, `language`, `bloodtype`, `height`, `weight`, `sss_num`, `tin_num`, `pi_num`, `phil_num`, `tel_num`, `mobile_num`, `email`, `ecp`, `etel`, `current_num`, `current_street`, `current_municipality`, `current_cityprovince`, `current_zipcode`, `permanent_num`, `permanent_street`, `permanent_municipality`, `permanent_cityprovince`, `permanent_zipcode`, `status`, `date_hired`, `date_to`, `regularization_date`, `years_in_service`, `position_id`, `department_id`, `shift_id`, `is_id`, `costcenter_id`, `payclass_id`, `siteassignment_id`, `basepay`, `basic_allowance`, `user_taxable`, `taxable_percent`, `user_nontaxable`, `nontaxable_percent`, `restday`, `factor_days`, `dailyrate`, `hourrate`, `sss_id`, `benefit_1`, `benefit_2`, `benefit_3`, `benefit_4`, `deduction_philhealth`, `deduction_pagibig`, `pagibig_premium`, `bankacc`, `sss_contri_employee`, `sss_employee_trigger`, `sss_contri_employer`, `sss_employer_trigger`, `sss_contri_ecc`, `sss_contri_ee`, `sss_contri_er`, `assigned_supervisor_status`, `created_on`, `empid_approvers_status`, `biometric_id`) VALUES
(39387, '2389', 'password1234', 'Marya Celine', 'Herrera', 'Buan', 'Employee', NULL, NULL, NULL, 0, '1967-04-08', 'Manila', 'Female', 'Married', 'Filipino', 'Iglesia', NULL, NULL, NULL, NULL, '3302582553', '117-627-865', '107001530603', '030513621635', '09477245940', '09477245940', 'maryaceline.buan@nwdi.com.ph', NULL, NULL, NULL, '196 Rivera St. Baesa Caloocan City', NULL, 'Caloocan City', '1401', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-07-25', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2389'),
(39388, '58', 'password1234', 'Rolando', 'Cansino', 'Suyat', 'Employee', NULL, NULL, NULL, 0, '1967-03-16', 'Manila City', 'Male', 'Married', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3404298114', '154-187-484', '108000279313', '192007660665', '09102024054', '09102024054', 'rolandsuyat16@gmail.com', NULL, NULL, NULL, 'Pagrai Hills Unit 5 Brgy. Mayamot Antipolo City Rizal', NULL, 'City Rizal', '1870', NULL, NULL, NULL, NULL, NULL, 'Regular', '2007-02-03', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '58'),
(39389, '601', 'password1234', 'Rachelle', 'Acera', 'Crisostomo', 'Employee', NULL, NULL, NULL, 0, '1995-08-28', 'Isabela', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3461826590', '332-919-202', '121179530060', '030260122432', '09398573465', '09398573465', 'rachelle.crisostomo@nwdi.com.ph', NULL, NULL, NULL, 'Sarafen Appartments Sampaguita Ave. Nomar Subd 2 San Bartome Quezon City', NULL, 'Quezon City ', '1116', NULL, NULL, NULL, NULL, NULL, 'Regular', '2016-09-15', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '601'),
(39390, '1024', 'password1234', 'Apple', 'Quia-Ot', 'Saga', 'Employee', NULL, NULL, NULL, 0, '1997-09-01', 'Bohol', 'Female', 'Single', 'Filipino', 'Uccp', NULL, NULL, NULL, NULL, '3492511201', '352-358-454', '121268178449', '022512170580', '09153905468', '09153905468', 'applesaga3@gmail.com', NULL, NULL, NULL, '61 Makisig St. Area 1 Pinalagad Malinta Valenzuela City', NULL, 'Valenzuela City', '1440', NULL, NULL, NULL, NULL, NULL, 'Regular', '2020-02-28', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1024'),
(39391, '2039', 'password1234', 'Katrina', 'Palma', 'Supnet', 'Employee', NULL, NULL, NULL, 0, '1995-05-11', 'Manila City ', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3475881958', '744-598-982', '121251212708', '030263481263', '09173887109', '09173887109', 'katrinasupnet@gmail.com', NULL, NULL, NULL, 'B4 L25 Beryl Street Villa Hermano Iv Quezon City', NULL, 'Quezon City ', '1117', NULL, NULL, NULL, NULL, NULL, 'Regular', '2020-11-24', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2039'),
(39392, '2047', 'password1234', 'Kimberly Claire', 'Lagrimas', 'Chong', 'Employee', NULL, NULL, NULL, 0, '1999-03-18', 'Quezon City ', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3488705885', '754-899-928', '121260853369', '022504306406', '09668329681', '09668329681', 'kimberly_chong18@yahoo.com', NULL, NULL, NULL, '514 Rubyville Subd., Baesa Barangay 160, Caloocan City', NULL, 'Caloocan City', '1401', NULL, NULL, NULL, NULL, NULL, 'Regular', '2021-01-04', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2047'),
(39393, '3596', 'password1234', 'Jenny Lyn', 'Rizado', 'Nanlabi', 'Employee', NULL, NULL, NULL, 0, '1983-09-09', 'North Cotabato ', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3402674057', '442-437-978', '121103128806', '030511282361', '09083438483', '09083438483', 'jennynanlabi@gmail.com', NULL, NULL, NULL, 'L1 B3 La Chesa Hts Alcantara St Banlat Rd T. Sora ', NULL, 'Quezon City ', '1116', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-06-13', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3596'),
(39394, '3736', 'password1234', 'Marilou', 'Alfaro', 'Abear', 'Employee', NULL, NULL, NULL, 0, '1982-11-06', 'Manila City ', 'Female', 'Married ', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3393041362', '251-285-878', '101000769375', '010509589505', '09672481060', '09672481060', 'maloualfaro@yahoo.com', NULL, NULL, NULL, '248 Rivera St. Ext. Sta. Quiteria Caloocan City', NULL, 'Caloocan City', '1402', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-02-19', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3736'),
(39395, '3737', 'password1234', 'Kathleen Kate', 'Galanza', 'Montillana', 'Employee', NULL, NULL, NULL, 0, '1998-11-11', 'Oriental Mindoro', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3493132032', '645-476-222', '121269468938', '020274079356', '09672284359', '09672284359', 'katmontillana_08@gmail.com', NULL, NULL, NULL, 'Unit 222 Bsq Plaza Bldg. D, Baesa Caloocan City ', NULL, 'Caloocan City', '1401', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-03-04', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3737'),
(39396, '3801', 'password1234', 'Trisha Mhae', 'De Guzman', 'Jaen', 'Employee', NULL, NULL, NULL, 0, '2001-01-20', 'Batangas City ', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3530813120', '615-688-656', '121339894696', '022506745539', '09565822421', '09565822421', 'jaentrishamhae@gmail.com', NULL, NULL, NULL, '135 Reparo Road Baesa Barangay 161 Caloocan City', NULL, 'Caloocan City', '1401', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-06-10', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3801'),
(39397, '641', 'password1234', 'Eloisa', 'Arandia', 'Saez', 'Employee', NULL, NULL, NULL, 0, '1994-11-18', 'Quezon City ', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3462979190', '455-341-116', '121184293900', '030260331090', '09169382357', '09169382357', 'eloisa.saez@yahoo.com', NULL, NULL, NULL, '39 B.M.A Mangga Street Barangay Tatalon Quezon City', NULL, 'Quezon City ', '1113', NULL, NULL, NULL, NULL, NULL, 'Regular', '2017-01-18', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '641'),
(39398, '847', 'password1234', 'Rochelle Noreen', 'Reyes', 'Son', 'Employee', NULL, NULL, NULL, 0, '1992-02-18', 'Manila City ', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3424787647', '291-623-101', '121179861648', '032513341082', '09177701483', '09177701483', 'noreenrrt@gmail.com', NULL, NULL, NULL, 'L-7 B-21 Doña Engracia St. Greenfields 3 Subd. ', NULL, 'Quezon City ', '1117', NULL, NULL, NULL, NULL, NULL, 'Regular', '2018-07-05', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '847'),
(39399, '1096', 'password1234', 'Louella Samantha', 'Romitman', 'Enriquez', 'Employee', NULL, NULL, NULL, 0, '1997-12-15', 'Zamboanga city', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3486885257', '764-951-845', '121251142149', '030263390454', '09626801012 ', '09626801012 ', 'samnrqz@gmail.com', NULL, NULL, NULL, 'B41 l15 villa Luisa north', NULL, 'Quezon City ', '1421', NULL, NULL, NULL, NULL, NULL, 'Regular', '2020-09-29', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1096'),
(39400, '241201', 'password1234', 'Jannissa May', 'Chavez', 'De Chavez', 'Employee', NULL, NULL, NULL, 0, '2000-06-07', 'Quezon City', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3529010824', '643-760-230', '121334040721', '030266953379', ' 09155879426', ' 09155879426', 'jannissa.dechavez00@gmail.com', NULL, NULL, NULL, '#16M Rivera Compound st. Brgy Sta. Lucia Novaliches Quezon City', NULL, 'Quezon City ', '1117', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-01-29', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '241201'),
(39401, '3763', 'password1234', 'Elaine', 'Macandong', 'Badillo', 'Employee', NULL, NULL, NULL, 0, '1999-07-27', 'Batangas City ', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3529262931', '647-964-680', '121334526002', '092508796279', '09205458781', '09205458781', 'elainebadillo27@gmail.com', NULL, NULL, NULL, 'Enrico 255, Cluster 2, Spazio Bernardo Sauyo', NULL, 'Quezon City ', '1116', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-04-08', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3763'),
(39402, '3842', 'password1234', 'Jovito Jr.', 'Pag-Iwayan', 'Lariba', 'Employee', NULL, NULL, NULL, 0, '1990-05-26', 'Leyte', 'Male', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3420426643', '319-453-317', '121156883310', '020506366004', '09309307913', '09309307913', '                   laribajp.26@gmail.com', NULL, NULL, NULL, '1116 Maharlika Hills Upper Banlat Brgy. Tandang Sora', NULL, 'Quezon City ', '1116', NULL, NULL, NULL, NULL, NULL, 'Probationary', '2024-09-02', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3842'),
(39403, '241001', 'password1234', 'Emma', 'Alcantara', 'Finuliar', 'Employee', NULL, NULL, NULL, 0, '1999-10-10', 'Manila City ', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3480982499', '720-937-553', '121302728431', '030264444310', '09100250234', '09100250234', 'finuliaremma@gmail.com', NULL, NULL, NULL, '154 Tendido St. Brgy. San Jose Quezon City', NULL, 'Quezon City ', '1555', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-01-29', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '241001'),
(39404, '3773', 'password1234', 'Jeannie', 'Bognalos', 'Bile', 'Employee', NULL, NULL, NULL, 0, '1986-11-29', 'Albay ', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3402782172', '310-459-103', '121092578912', '080506741495', '09630066270', '09630066270', 'jeanbile23@gmail.com', NULL, NULL, NULL, '36 Kasoy St Brgy Commonwealth Quezon City', NULL, 'Quezon City ', '1121', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-04-15', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3773'),
(39405, '3783', 'password1234', 'Amelyn', 'Dellamas', 'Mapusao', 'Employee', NULL, NULL, NULL, 0, '1992-06-20', 'Albay ', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3438972406', '317-285-639', '121123697231', '030255711802', '09055274565', '09055274565', 'dellamasamelyn20@gmail.com', NULL, NULL, NULL, '#29 Dormitory Phase I Brgy. Nagkaisang Nayon', NULL, 'Quezon City ', '1125', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-04-22', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3783'),
(39406, '3798', 'password1234', 'Elizabeth', 'Ramos', 'Gatdula', 'Employee', NULL, NULL, NULL, 0, '1980-08-08', 'Manila', 'Female', 'Married', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3369893544', '247-049-354', '121087746278', '010503508619', '09922125237', '09922125237', 'elizabethgatdula868@gmail.com', NULL, NULL, NULL, '2412 f.huertas st. Sta. Cruz manila ', NULL, 'Manila', '1014', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-05-27', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3798'),
(39407, '3821', 'password1234', 'Kimberly Alyssa', 'Dela Cruz', 'Jaramillo', 'Employee', NULL, NULL, NULL, 0, '2000-07-27', 'Manila City ', 'Female', 'Single', 'Filipino', 'Born Again ', NULL, NULL, NULL, NULL, '3512159899', '398-466-380', '121344656281', '032513635957', '0945836679', '0945836679', 'jaramillokimberlyalyssa@gmail.com', NULL, NULL, NULL, '28 D Sampaguita St San Pedro 9 Subd Bagbag Quezon City', NULL, 'Quezon City ', '1116', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-07-08', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3821'),
(39408, '3855', 'password1234', 'Angela Jean', 'Gatdula', 'Gascon', 'Employee', NULL, NULL, NULL, 0, '1999-03-06', 'Manila City ', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3534715554', '661-712-870', '121352143863', '132525804759', '09695384350', '09695384350', 'angelajeangg@gmail.com', NULL, NULL, NULL, 'B6 L23 Garcia St., Hobart Village, Brgy. Kaligayahan, Novaliches, Quezon City', NULL, 'Quezon City ', '1124', NULL, NULL, NULL, NULL, NULL, 'Probationary', '2024-10-14', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3855'),
(39409, '694', 'password1234', 'Cecile', 'Bandojo', 'Rosos', 'Employee', NULL, NULL, NULL, 0, '1989-11-04', 'Quezon City ', 'Female', 'Married', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3421140148', '309-056-001', '121150040513', '030510954072', '09077006643', '09077006643', 'zerofour_cecile@yahoo.com', NULL, NULL, NULL, '348 Cabal Lane Baesa Rd. Sta. Quiteria Caloocan City', NULL, 'Caloocan City', '1402', NULL, NULL, NULL, NULL, NULL, 'Regular', '2017-05-24', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '694'),
(39410, '173', 'password1234', 'Maria Lourdes', 'Bonado', 'Lazaro', 'Employee', NULL, NULL, NULL, 0, '1973-12-20', 'Manila', 'Female', 'Married', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3347812220', '902-302-282', '108000338025', '190903364177', '09497332860', '09497332860', 'malou.lazaro96@gmail.com', NULL, NULL, NULL, '69- General Avenue, Brgy Tandang Sora, Proj 8', NULL, 'Quezon City ', '1106', NULL, NULL, NULL, NULL, NULL, 'Regular', '1997-06-15', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '173'),
(39411, '3591', 'password1234', 'Cherry', 'Garcia', 'Leongson', 'Employee', NULL, NULL, NULL, 0, '1978-07-24', 'Manila', 'Female', 'Married', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3366145266', '503-533-336', '121175036657', '020250459018', '09205216226', '09205216226', 'cherry2478@gmail.com', NULL, NULL, NULL, '250 C. Arellano St. Baritan', NULL, 'Malabon City', '1470', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-06-13', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3591'),
(39412, '447', 'password1234', 'Marie Isabelle', 'Dela Cruz', 'Yu', 'Employee', NULL, NULL, NULL, 0, '1994-06-29', 'Quezon City', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3454134613', '475-840-856', '121159466596', '020265890696', '09954582692', '09954582692', 'yumarieisabelle@gmail.com', NULL, NULL, NULL, '20C Benefits St. Gsis Village Project 8 Brgy Tandang Sora', NULL, 'Quezon City ', '1116', NULL, NULL, NULL, NULL, NULL, 'Regular', '2015-10-05', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '447'),
(39413, '2063', 'password1234', 'Daisy', 'Cortez', 'Sales', 'Employee', NULL, NULL, NULL, 0, '1974-12-21', 'Tarlac', 'Female', 'Married', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3340865643', '192-458-109', '121125177097', '190259683916', '09770889627', '09770889627', 'daisycortez_1974@yahoo.com', NULL, NULL, NULL, '49 Camia St. Simeon Doon Cmpd. Marulas', NULL, 'Valenzuela City', '1440', NULL, NULL, NULL, NULL, NULL, 'Regular', '2021-02-10', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063'),
(39414, '2083', 'password1234', 'Annalou', 'Mercado', 'Ilagan', 'Employee', NULL, NULL, NULL, 0, '1995-12-17', 'Valenzuela', 'Female', 'Married', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3463760023', '766-588-950', '121183309427', '022512097611', '09950327538', '09950327538', 'annaloum21@gmail.com', NULL, NULL, NULL, '650-26 Templora St. Santolan', NULL, 'Valenzuela City', '1478', NULL, NULL, NULL, NULL, NULL, 'Regular', '2021-03-02', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2083'),
(39415, '861', 'password1234', 'Jenalyn', 'Belza', 'Cate', 'Employee', NULL, NULL, NULL, 0, '1992-09-23', 'Valenzuela', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3450588645', '007-249-758', '121141330316', '020264633592', '09672665225', '09672665225', 'cate_jenalyn@yahoo.com', NULL, NULL, NULL, '111 Peras St Rd 1 Dulo Marulas', NULL, 'Valenzuela City', '1440', NULL, NULL, NULL, NULL, NULL, 'Regular', '2018-08-03', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '861'),
(39416, '3448', 'password1234', 'Sheila Vee Marie ', 'Tuplano', 'Arcilla', 'Employee', NULL, NULL, NULL, 0, '1993-03-03', 'Valenzuela', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3441655451', '445-089-611', '121129476354', '010255898812', '09975600186', '09975600186', 'sheilavee3@gmail.com', NULL, NULL, NULL, '82 Diam St Brgy Gtdl', NULL, 'Valenzuela City', '1442', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-11-07', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3448'),
(39417, '3563', 'password1234', 'Mariel', 'Rosita', 'De Andres', 'Employee', NULL, NULL, NULL, 0, '1996-10-26', 'Masbate', 'Female', 'Single', 'Filipino', 'Seven Days Adventist ', NULL, NULL, NULL, NULL, '3484474990', '762-335-316', '121279859205', '020274051362', '09569982404', '09569982404', 'jenny.delapena@nwdi.com.ph', NULL, NULL, NULL, '19-A Gulayan St. Catmon', NULL, 'Malabon City', '1470', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-04-17', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3563'),
(39418, '3630', 'password1234', 'Keezhia', 'San Diego', 'Virgino', 'Employee', NULL, NULL, NULL, 0, '1997-04-23', 'Tarlac', 'Female', 'Single', 'Filipino', 'Protestant', NULL, NULL, NULL, NULL, '3526137933', '633-283-780', '121323503035', '020274281899', '09064190609', '09064190609', 'kitsvirgino@gmail.com', NULL, NULL, NULL, '714 L. Tolentino St. Brgy 88 ', NULL, 'Caloocan City', '1400', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-07-17', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3630'),
(39419, '3683', 'password1234', 'Jeanette', 'Del Rosario', 'Iglesia', 'Employee', NULL, NULL, NULL, 0, '1993-12-14', 'Batangas', 'Female', 'Married', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '0427905982', '471-160-016', '121169765367', '020267385034', '09976535324', '09976535324', 'jeanettedelrosario143@gmail.com', NULL, NULL, NULL, 'Lot A4 Pantihan 4 Naval Flores', NULL, 'Malabon City', '1471', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-09-18', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3683'),
(39420, '334', 'password1234', 'Melissa Li-Ann', 'Muli', 'Ureta', 'Employee', NULL, NULL, NULL, 0, '1991-08-17', 'Manila', 'Female', 'Married', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3447624059', '468-263-809', '121159653444', '020511052611', '09507441623', '09507441623', 'muli_melissa17@yahoo.com', NULL, NULL, NULL, 'B9 L3 Marrytown Place Brgy Bulac', NULL, 'Sta. Maria, Bulacan', '3022', NULL, NULL, NULL, NULL, NULL, 'Regular', '2020-07-27', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '334'),
(39421, '39', 'password1234', 'Charlene', 'Tio', 'Loo', 'Employee', NULL, NULL, NULL, 0, '1984-01-20', 'Manila', 'Female', 'Single', 'Taiwanise', 'Born Again Christian ', NULL, NULL, NULL, NULL, '3395190635', '239-306-970', '108000335397', '030501393025', '09236748586', '09236748586', 'char3_99@yahoo.com', NULL, NULL, NULL, 'Unit 15 Silverwood Townhouse Victoneta Avenue Potrero', NULL, 'Malabon City', '1475', NULL, NULL, NULL, NULL, NULL, 'Regular', '2005-06-01', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '39'),
(39422, '2125', 'password1234', 'Trizzia Maye', 'Sala', 'Velilla', 'Employee', NULL, NULL, NULL, 0, '1998-10-03', 'Davao', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3504233477', '377-561-443', '121282009393', '162504829162', '09474891770', '09474891770', 'velillatrizzia9@gmail.com', NULL, NULL, NULL, 'Blk 13 Building 6 Disiplina Vill Bignay', NULL, 'Valenzuela City', '1440', NULL, NULL, NULL, NULL, NULL, 'Regular', '2021-05-04', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2125'),
(39423, '2326', 'password1234', 'Ma. Theresa', 'Sarreal', 'Angeles', 'Employee', NULL, NULL, NULL, 0, '1998-02-24', 'Bulacan', 'Female', 'Married', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3505653043', '614-081-880', '121286982590', '212520505285', '09493414575', '09493414575', 'angelestheresa58@gmail.com', NULL, NULL, NULL, 'L3 B18 P2 Rafaela Homes Brgy. Makinabang', NULL, 'Baliuag, Bulacan', '3006', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-05-10', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2326'),
(39424, '3555', 'password1234', 'Frances Jane', 'Malda', 'Pascua', 'Employee', NULL, NULL, NULL, 0, '1999-08-08', 'Cagayan', 'Female', 'Single', 'Filipino', 'Born Again Christian ', NULL, NULL, NULL, NULL, '0130925327', '632-832-050', '121315098761', '060254236341', '09610109545', '09610109545', 'francesjanepascua1@gmail.com', NULL, NULL, NULL, '63 Del Monte St. Brgy. Potrero', NULL, 'Malabon City', '1475', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-04-11', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3555'),
(39425, '3558', 'password1234', 'Mc John', 'Solinap', 'Pamado', 'Employee', NULL, NULL, NULL, 0, '1988-08-10', 'Ilo-Ilo', 'Male', 'Married', 'Filipino', 'Born Again Christian ', NULL, NULL, NULL, NULL, '3429876647', '415-333-060', '121058944375', '020256465087', '09053387466', '09053387466', 'pamadomcjohn@gmail.com', NULL, NULL, NULL, '01 Oriental St Brgy Saog', NULL, 'Marilao, Bulacan', '3019', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-04-17', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3558'),
(39426, '3827', 'password1234', 'Noemi', 'Rivera', 'Solano', 'Employee', NULL, NULL, NULL, 0, '1969-08-11', 'Manila', 'Female', 'Married', 'Filipino', 'Iglesia Ni Kristo', NULL, NULL, NULL, NULL, '3304663263', '188-792-217', '105000107012', '190511038980', '09939071006', '09939071006', 'solano504@yahoo.com', NULL, NULL, NULL, '1009 J. Trinidad St. Brgy Tondo North', NULL, 'Manila', '1013', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-08-05', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3827'),
(39427, '912', 'password1234', 'Marites', 'Daz', 'Ballesteros', 'Employee', NULL, NULL, NULL, 0, '1982-12-25', 'Albay', 'Female', 'Married', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3384659255', '300-753-906', '121072076421', '020500956365', '09331327342', '09331327342', 'mdazballesteros@gmail.com', NULL, NULL, NULL, 'B30 L17 Northville 2A R. Jacinto St Canumay West', NULL, 'Valenzuela City', '1443', NULL, NULL, NULL, NULL, NULL, 'Regular', '2019-01-14', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '912'),
(39428, '823', 'password1234', 'Sheila', 'Brizuela', 'Ras', 'Employee', NULL, NULL, NULL, 0, '1982-04-06', 'Albay', 'Female', 'Married', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3369677689', '407-292-716', '121066738141', '030505525112', '09054990128', '09054990128', 'mashel2806@gmail.com', NULL, NULL, NULL, '739 Libis Baesa Brgy 160', NULL, 'Caloocan City', '1401', NULL, NULL, NULL, NULL, NULL, 'Regular', '2020-02-20', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '823'),
(39429, '2034', 'password1234', 'Carmela', 'Fajardo', 'Canceran', 'Employee', NULL, NULL, NULL, 0, '1992-10-19', 'Isabela', 'Female', 'Married', 'Filipino', 'Jehova\'A Witnesses', NULL, NULL, NULL, NULL, '3437860014', '315-633-119', '121087874478', '030510634604', '09975545827', '09975545827', 'carmelafajardo19@gmail.com', NULL, NULL, NULL, '970 Gloria V Dulo Rosal St Talipapa', NULL, 'Quezon City ', '1116', NULL, NULL, NULL, NULL, NULL, 'Regular', '2020-11-09', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2034'),
(39430, '2170', 'password1234', 'Jastine', 'Destreza', 'Parreño', 'Employee', NULL, NULL, NULL, 0, '1997-04-22', 'Valenzuela', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3470356718', '505-325-235', '121208461619', '020269581698', '09764235200', '09764235200', 'jastineparreno1997@gmail.com', NULL, NULL, NULL, '38 A Antonio St. Brgy Rincon', NULL, 'Valenzuela City', '1444', NULL, NULL, NULL, NULL, NULL, 'Regular', '2021-07-27', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2170'),
(39431, '3407', 'password1234', 'Princess', 'Manalang', 'Ramos', 'Employee', NULL, NULL, NULL, 0, '1997-10-17', 'Zambales', 'Female', 'Single', 'Filipino', 'Jehova\'A Witnesses', NULL, NULL, NULL, NULL, '3474707596', '347-583-647', '121224181953', '022508789681', '09085242741', '09085242741', 'princess.m.ramos33@gmail.com', NULL, NULL, NULL, '28 Mc Arthur Highway Brgy Potrero ', NULL, 'Malabon City', '1475', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-08-31', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3407'),
(39432, '3650', 'password1234', 'Alyssa Ness', 'Rimon', 'Quizel', 'Employee', NULL, NULL, NULL, 0, '1995-05-16', 'Malabon', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3466110094', '335-946-002', '121193621123', '022509798420', '09682347442', '09682347442', 'qalyssaness@gmail.com', NULL, NULL, NULL, '21 Palmario St Brgy Tonsuya', NULL, 'Malabon City', '1446', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-08-07', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3650'),
(39433, '89', 'password1234', 'Randy', 'Abrillo', 'Concepcion', 'Employee', NULL, NULL, NULL, 0, '1974-09-09', 'Bulacan', 'Male', 'Married', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3322479280', '214-661-299', '121055159449', '030506095820', '09950998792', '09950998792', 'concepcionrandy7499@gmail.com', NULL, NULL, NULL, '1663 F. Varona St. Tondo Brgy 79', NULL, 'Manila', '1013', NULL, NULL, NULL, NULL, NULL, 'Regular', '2010-02-23', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '89'),
(39434, '3857', 'password1234', 'Leonil', 'Gomez', 'Fuerzas', 'Employee', NULL, NULL, NULL, 0, '1998-10-05', 'Dumaguete City', 'Male', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3497309816', '380-169-832', '121274994123', '020272185647', '09215339952', '09215339952', 'LEONIL.FUERZAS01@GMAIL.COM', NULL, NULL, NULL, '#15 F Santiago St Parada', NULL, 'Valenzuela City', '1440', NULL, NULL, NULL, NULL, NULL, 'Probationary', '2024-10-14', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3857'),
(39435, '2274', 'password1234', 'Jemalyn', 'Bernardo', 'Alvarado', 'Employee', NULL, NULL, NULL, 0, '1987-10-16', 'Bulacan', 'Female', 'Married', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '3418807216', '446-059-350', '121096133146', '212002012402', '09277753197', '3/16/2022', 'jemalynbernando@gmail.com', NULL, NULL, NULL, '#297 Tandang Manang St. Brgy. Parada', NULL, 'Valenzuela City', '1440', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-09-16', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2274'),
(39436, '3463', 'password1234', 'Grace', 'Borja', 'Miranda', 'Employee', NULL, NULL, NULL, 0, '1989-05-30', 'Batangas', 'Female', 'Married', 'Filipino', 'Christian Born Again', NULL, NULL, NULL, NULL, '3416325703', '277-988-664', '121039436041', '10508571394', '09614043916', '11/14/2022', 'ghiemiranda302810@gmail.com', NULL, NULL, NULL, '55 Blk 33N Lot 10 Bangayngay Street Dagat Dagatan', NULL, 'Caloocan City', '1400', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-05-14', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3463'),
(39437, '32', 'password1234', 'Michelle', 'Estrella', 'Marquez', 'Employee', NULL, NULL, NULL, 0, '1982-08-03', 'Manila', 'Female', 'Married', 'Filipino', 'Born Again', NULL, NULL, NULL, NULL, '3385932722', '228-957-674', '101003128382', '190903328529', '09059128755', '09059128755', 'nathajairah@gmail.com', NULL, NULL, NULL, 'Blk 9 Lot 3 Phase 3 Taurus St Beverly Home Prenza Ii ', NULL, 'Marilao, Bulacan', '3019', NULL, NULL, NULL, NULL, NULL, 'Regular', '2013-03-05', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '32'),
(39438, '982', 'password1234', 'Aprille Kyle', 'Porlante', 'Agbayani', 'Employee', NULL, NULL, NULL, 0, '1997-04-03', 'Cagayan', 'Female', 'Single', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '3486921108', '751-482-781', '121257693500', '022517410407', '09566611360', '09566611360', 'aaprillek@gmail.com', NULL, NULL, NULL, '1064B Valdez Street Sampaloc', NULL, 'Manila', '1008', NULL, NULL, NULL, NULL, NULL, 'Regular', '2019-09-10', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '982'),
(39439, '2187', 'password1234', 'Jenalyn', 'Baro', 'Galinato', 'Employee', NULL, NULL, NULL, 0, '1999-01-13', 'Abra', 'Female', 'Single', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '3510446740', '509-890-036', '121287678443', '030266669646', '09269163221', '09269163221', 'jgalinato359@gmail.com', NULL, NULL, NULL, '871 Instruccion Street Sampaloc', NULL, 'Manila', '1008', NULL, NULL, NULL, NULL, NULL, 'Regular', '2021-09-16', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2187'),
(39440, '862', 'password1234', 'Bernabeth', 'Corpuz', 'Alseco', 'Employee', NULL, NULL, NULL, 0, '1989-08-30', 'Cagayan Valley', 'Female', 'Single', 'Filipino', 'Methodist', NULL, NULL, NULL, NULL, '121590525', '426-021-253', '121049179791', '030509768621', '09335090991', '09335090991', 'ba301989@gmail.com', NULL, NULL, NULL, '#7 Pagasa Compound Ampid 1, San Mateo', NULL, 'Rizal', '1850', NULL, NULL, NULL, NULL, NULL, 'Regular', '2018-08-09', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '862'),
(39441, '2137', 'password1234', 'Diana Rose', 'Angala', 'Abaya', 'Employee', NULL, NULL, NULL, 0, '1998-05-25', 'Mabini, Gamu,Isabela', 'Female', 'Single', 'Filipino', 'Christian', NULL, NULL, NULL, NULL, '3505280348', '398-084-925', '121283141035', '030266283969', '09057752625', '09057752625', 'abayadiana@icloud.com', NULL, NULL, NULL, 'Unit 218 Prima Residences, 243 Quezon Avenue, Brgy Tatalon', NULL, 'Quezon City', '1113', NULL, NULL, NULL, NULL, NULL, 'Regular', '2021-05-24', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2137'),
(39442, '29', 'password1234', 'Richard', 'Marcayda', 'Romero', 'Employee', NULL, NULL, NULL, 0, '1980-07-11', 'Manila', 'Male', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3360100838', '209-581-477', '108000320844', '190903364398', '09215689090', '09215689090', 'richard_m_romero@yahoo.com', NULL, NULL, NULL, '2196 P. Florentino St. ', NULL, 'Sampaloc Manila', '1008', NULL, NULL, NULL, NULL, NULL, 'Regular', '2002-05-08', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '29'),
(39443, '3438', 'password1234', 'Jane', 'Crisostomo', 'Mole', 'Employee', NULL, NULL, NULL, 0, '1992-01-06', 'New Washington, Aklan', 'Female', 'Single', 'Filipino', 'Iglesia Ni Cristo', NULL, NULL, NULL, NULL, '3427536455', '410-371-287', '121055042898', '010512053624', '09480361011', '09480361011', 'janemolerrt@gmail.com', NULL, NULL, NULL, 'Blk 4 lot 4 phase 2 ugnayang saranay bagumbong caloocan city ', NULL, 'Caloocan City', '1421', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-10-24', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3438'),
(39444, '3727', 'password1234', 'Yela Eryka May', 'Ycong', 'Magalong', 'Employee', NULL, NULL, NULL, 0, '2000-04-05', 'Manila', 'Female', 'Single', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '3512585515', '347-944-608', '121334364024', '030267836821', '09959335051', '09959335051', 'erykamagalong@gmail.com', NULL, NULL, NULL, '20 Angelo Street La Loma', NULL, 'Quezon City', '1114', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-01-30', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3727'),
(39445, '3738', 'password1234', 'Dhayang-Iman', 'Sangkula', 'Tagayan', 'Employee', NULL, NULL, NULL, 0, '2000-01-08', 'Zambonga City', 'Female', 'Single', 'Filipino', 'Islam', NULL, NULL, NULL, NULL, '1014842253', '645-476-214', '121334425661', '142510810952', '09709487430', '09709487430', 'dhayangimantagayan@gmail.com', NULL, NULL, NULL, '1010 Vicente Cruz Street Sampaloc', NULL, 'Manila', '1008', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-03-04', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3738'),
(39446, '3817', 'password1234', 'Ricel May', 'Cervantes', 'Barretto ', 'Employee', NULL, NULL, NULL, 0, '1999-02-21', 'Bulacan', 'Female', 'Married', 'Filipino', 'Iglesia Ni Cristo', NULL, NULL, NULL, NULL, '3494054313', '376-037-917', '121283812260', '210502724791', '09051731009', '09051731009', 'ricelcervantes02@gmai.com', NULL, NULL, NULL, '365 A. Ponciano Street Bayugo Meycauayan', NULL, 'Bulacan', '3020', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-06-24', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3817'),
(39447, '3846', 'password1234', 'Angelica', 'Bordallo', 'Donaire', 'Employee', NULL, NULL, NULL, 0, '2001-04-22', 'Samar', 'Female', 'Single', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '3534239315', '659-096-947', '121350722819', '130256303664', '09155626657', '09155626657', 'agathadonaire2001@gmail.com', NULL, NULL, NULL, '1351 Maria Blas Building Herrera Sta, Cruz', NULL, 'Manila', '1008', NULL, NULL, NULL, NULL, NULL, 'Probationary', '2024-09-16', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3846'),
(39448, '2384', 'password1234', 'Khadija Joyce ', 'Galido', 'Yusop', 'Employee', NULL, NULL, NULL, 0, '1990-11-19', 'Jolo Sulu', 'Female', 'Single', 'Filipino', 'Islam', NULL, NULL, NULL, NULL, '1011935794', '950-895-856', '121183728596', '140252430926', '09654155605', '09654155605', 'joycejaewoon@gmail.com', NULL, NULL, NULL, 'Blk51 L15 Narra 3 Bulihan Silang', NULL, 'Cavite', '4118', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-07-18', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2384'),
(39449, '56', 'password1234', 'Norilyn', 'Plata', 'Sulit', 'Employee', NULL, NULL, NULL, 0, '1983-02-09', 'Batangas', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3404659313', '253-213-418', '108000280024', '030503616803', '09285545736', '09285545736', 'norilynsulit@gmail.com', NULL, NULL, NULL, 'Blk3 Lot14 Samar 1 Luzon Ave. Brgy Matandang Balara', NULL, 'Quezon City', '1119', NULL, NULL, NULL, NULL, NULL, 'Regular', '2007-02-26', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '56'),
(39450, '857', 'password1234', 'Rachelle Ann', 'Lindo', 'Garcia', 'Employee', NULL, NULL, NULL, 0, '1986-10-15', 'Quezon City', 'Female', 'Married', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3413474741', '439-103-678', '121103537403', '220001574426', '09266824030', '09266824030', 'lindo.rachelleann@gmail.com', NULL, NULL, NULL, '111-J Santol Street Balingasa Balintawak', NULL, 'Quezon City', '1115', NULL, NULL, NULL, NULL, NULL, 'Regular', '2018-07-23', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '857'),
(39451, '1099', 'password1234', 'Arline', 'Crisostomo', 'Dumalaog', 'Employee', NULL, NULL, NULL, 0, '1978-10-24', 'La Union', 'Female', 'Married', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3361734504', '217-658-434', '121108719934', '190895940279', '09053094708', '09053094708', 'arlinedumalaog@yahoo.com', NULL, NULL, NULL, '26E Blk A Sto. Nino Street San Antonio', NULL, 'Quezon City', '1105', NULL, NULL, NULL, NULL, NULL, 'Regular', '2020-10-06', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1099'),
(39452, '2044', 'password1234', 'Andrea Joyce', 'Regueta', 'Dayandayan', 'Employee', NULL, NULL, NULL, 0, '1996-11-06', 'Manila', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3472896768', '343-559-419', '121216959925', '022500767727', '09971751533', '09971751533', 'andrea_dayandayan@yahoo.com', NULL, NULL, NULL, '145 Pasig Street Maypajo Brgy 30', NULL, 'Caloocan City', '1400', NULL, NULL, NULL, NULL, NULL, 'Regular', '2020-12-15', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2044'),
(39453, '2311', 'password1234', 'Jeannevie', 'Parallag', 'Quinan', 'Employee', NULL, NULL, NULL, 0, '1993-08-28', 'Cagayan', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3454036504', '473-812-080', '121184293900', '62013130928', '09212306704', '09212306704', 'quinanjenivie@yahoo.com', NULL, NULL, NULL, '31St Sgt. Catolos St. Pinagkaisahan', NULL, 'Quezon City', '1111', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-05-02', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2311'),
(39454, '2214', 'password1234', 'Zachary ', 'James', 'Placido', 'Employee', NULL, NULL, NULL, 0, '1998-01-07', 'Manila', 'Male', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3504547011', '358-465-144', '121282317481', '22513797366', '09686057204', '09686057204', 'zacharyjamesplacido@gmail.com', NULL, NULL, NULL, '1051 J Marzan Street Sampaloc', NULL, 'Manila', '1008', NULL, NULL, NULL, NULL, NULL, 'Regular', '2021-12-01', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2214'),
(39455, '3419', 'password1234', 'Sheila', 'Dejito', 'Viovicente', 'Employee', NULL, NULL, NULL, 0, '2000-01-13', 'Leyte', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3522295390', '615-094-220', '121307253783', '30264888308', '09122543902', '09122543902', 'viovicentesheila@gmail.com', NULL, NULL, NULL, '14 Kalayaan B Batasan Hills', NULL, 'Quezon City', '1126', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-09-19', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3419');
INSERT INTO `employees` (`id`, `employee_id`, `password`, `firstname`, `middlename`, `lastname`, `user_role`, `empproftype`, `photo`, `company_id`, `branch_id`, `bdate`, `bplace`, `gender`, `cstatus`, `citizenship`, `religion`, `language`, `bloodtype`, `height`, `weight`, `sss_num`, `tin_num`, `pi_num`, `phil_num`, `tel_num`, `mobile_num`, `email`, `ecp`, `etel`, `current_num`, `current_street`, `current_municipality`, `current_cityprovince`, `current_zipcode`, `permanent_num`, `permanent_street`, `permanent_municipality`, `permanent_cityprovince`, `permanent_zipcode`, `status`, `date_hired`, `date_to`, `regularization_date`, `years_in_service`, `position_id`, `department_id`, `shift_id`, `is_id`, `costcenter_id`, `payclass_id`, `siteassignment_id`, `basepay`, `basic_allowance`, `user_taxable`, `taxable_percent`, `user_nontaxable`, `nontaxable_percent`, `restday`, `factor_days`, `dailyrate`, `hourrate`, `sss_id`, `benefit_1`, `benefit_2`, `benefit_3`, `benefit_4`, `deduction_philhealth`, `deduction_pagibig`, `pagibig_premium`, `bankacc`, `sss_contri_employee`, `sss_employee_trigger`, `sss_contri_employer`, `sss_employer_trigger`, `sss_contri_ecc`, `sss_contri_ee`, `sss_contri_er`, `assigned_supervisor_status`, `created_on`, `empid_approvers_status`, `biometric_id`) VALUES
(39456, '3433', 'password1234', 'Christalyn', 'Galano', 'Saportesa', 'Employee', NULL, NULL, NULL, 0, '1993-09-02', 'Manila', 'Female', 'Single', 'Filipino', 'Christian Born Again', NULL, NULL, NULL, NULL, '3437951376', '434-836-454', '121080298658', '20509817228', '09960675441', '09960675441', 'saportesachristalyn@yahoo.com', NULL, NULL, NULL, '617 Mejorada Street', NULL, 'Manila', '1012', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-10-10', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3433'),
(39457, '3450', 'password1234', 'Jeanne', 'Garay', 'Navarette', 'Employee', NULL, NULL, NULL, 0, '1987-10-04', 'Antique', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3410403061', '284-380-973', '121001776784', '20508099712', '09104008178', '09104008178', 'jeannenavarette@gmail.com', NULL, NULL, NULL, 'U41 B1 Blpc Comp Rd 3 Bagong Pag Asa', NULL, 'Quezon City', '1105', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-11-07', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3450'),
(39458, '3561', 'password1234', 'Mhaylord', 'Lozano', 'Cajimat', 'Employee', NULL, NULL, NULL, 0, '1996-06-21', 'Isabela', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '0125773762', '328-397-328', '121169856698', '60502085789', '09668829809', '09668829809', 'mhaylordcajimat@gmail.com', NULL, NULL, NULL, '13B Wakas St. La Loma', NULL, 'Quezon City', '1102', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-10-17', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3561'),
(39459, '3882', 'password1234', 'Kimberly', 'Rocales', 'Arriza', 'Employee', NULL, NULL, NULL, 0, '1999-01-23', 'Manila', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3482876354', '391-654-146', '121261807930', '22501298321', '09952390951', '09952390951', 'kimrocales18@gmail.com', NULL, NULL, NULL, '22 Bagong Nayon Galas', NULL, 'Quezon City', '1113', NULL, NULL, NULL, NULL, NULL, 'Probationary', '2025-06-06', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3882'),
(39460, '93', 'password1234', 'Eujeann', 'Parucha', 'Antay', 'Employee', NULL, NULL, NULL, 0, '1982-10-15', 'Ilagan Isabela', 'Female', 'Married', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '03385673243', '225-469-359', '106000008712', '190900541817', '09171341015', '09171341015', 'eparuchaantay@gmail.com', NULL, NULL, NULL, '78 Sampaguita Ave. Mapayapa 1, Brgy Pasong Tamo', NULL, 'Quezon City ', '1107', NULL, NULL, NULL, NULL, NULL, 'Regular', '2012-07-02', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '93'),
(39461, '406', 'password1234', 'Kathleen', 'Cabsag', 'Santos', 'Employee', NULL, NULL, NULL, 0, '1973-03-19', 'Guadalupe Makati City', 'Female ', 'Married', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3321839232', '201-990-901', '121090479006', '190508481202', '09205484919', '09205484919', 'kcabsag@gmail.com', NULL, NULL, NULL, 'C3 Door 6 Up Makaturing St Brgy Maresa', NULL, 'Quezon City ', '1115', NULL, NULL, NULL, NULL, NULL, 'Regular', '2015-07-02', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '406'),
(39462, '389', 'password1234', 'Cernan', 'Santiago', 'Lopez', 'Employee', NULL, NULL, NULL, 0, '1976-07-22', 'Guimba, Nueva Ecija', 'Male', 'Married', 'Filipino', 'Born Again', NULL, NULL, NULL, NULL, '3340392789', '913-704-636', '101002946643', '090500277954', '09938994590', '09938994590', 'cernanlopez093@gmail.com', NULL, NULL, NULL, 'B16 L50 Lomadegato Grand Villas Marilao', NULL, 'Bulacan', '3019', NULL, NULL, NULL, NULL, NULL, 'Regular', '2015-06-08', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '389'),
(39463, '2218', 'password1234', 'Abigail', 'Banares', 'Luciano', 'Employee', NULL, NULL, NULL, 0, '1995-09-14', 'Manila City', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3456419297', '480-673-548', '121164543849', '032508895665', '09557321725', '09557321725', ' luciano.abigail14@gmail.co', NULL, NULL, NULL, '842 MAYON ST. LA LOMA ', NULL, 'Quezon City ', '1114', NULL, NULL, NULL, NULL, NULL, 'Regular', '2021-12-07', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2218'),
(39464, '536', 'password1234', 'Jhoebert Jhun ', 'Borja', 'Visquera', 'Employee', NULL, NULL, NULL, 0, '1992-06-16', 'Manila', 'Male', 'Married', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3452675048', '471-915-127', '121149394249', '020265374345', '09566900609', '09566900609', 'vizwafujhoe@gmail.com', NULL, NULL, NULL, '1235 Cristobal st. Sampaloc manila', NULL, 'Manila', '1008', NULL, NULL, NULL, NULL, NULL, 'Regular', '2019-02-26', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '536'),
(39465, '1097', 'password1234', 'Royce Lorenzo', 'Dugang', 'Mustaza', 'Employee', NULL, NULL, NULL, 0, '1997-03-14', 'Pasig City', 'Male', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3478860714', '479-354-845', '121234694735', '032508783824', '09179327867', '09179327867', 'mustazaroyce@gmail.com', NULL, NULL, NULL, '57 Dangay St Veterans Village ', NULL, 'Quezon City', '1105', NULL, NULL, NULL, NULL, NULL, 'Regular', '2020-09-29', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1097'),
(39466, '2117', 'password1234', 'Romark Jordan', 'Bimbo', 'Carascal', 'Employee', NULL, NULL, NULL, 0, '1996-02-24', 'Quezon City', 'Male', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3471515930', '752-368-334', '121258248211', '020271386932', '09994978738', '09994978738', 'rjcarascal@gmail.com', NULL, NULL, NULL, '5 Yakal St. Filinvest 2 Northview 2 Batasan Hills Quezon City', NULL, 'Quezon City ', '1126', NULL, NULL, NULL, NULL, NULL, 'Regular', '2021-04-20', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2117'),
(39467, '875', 'password1234', 'Irish Claire', 'Lachica', 'Garidan', 'Employee', NULL, NULL, NULL, 0, '1999-11-04', 'Manila City', 'Female', 'Single', 'Filipino', 'Iglesia Ni Cristo', NULL, NULL, NULL, NULL, '3478723550', '350-174-182', '121233821612', '032510213024', '09617981182', '09617981182', ' lachicaaicee@icloud.com', NULL, NULL, NULL, '5 Baco st. Sta Teresita', NULL, 'Quezon City ', '1114', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-02-03', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '875'),
(39468, '2133', 'password1234', 'Diana Ross', 'Torres', 'Pailma', 'Employee', NULL, NULL, NULL, 0, '1989-04-01', 'Zamboanga City', 'Female', 'Married ', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3416269160', '940-270-485', '121004419237', '210501573242', '09176896949', '09176896949', 'drpailma01@gmail.com', NULL, NULL, NULL, '175- B mangosteen street Bilog Balangkas Valenzuela City', NULL, 'Valenzuela City', '1445', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-03-07', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2133'),
(39469, '3566', 'password1234', 'Alberto', 'Ordoña', 'Rivera', 'Employee', NULL, NULL, NULL, 0, '1968-11-21', 'Tubao, La Union', 'Male', 'Married ', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '0393153774', '175-708-324', '105000106802', '190511037720', '09568705517', '09568705517', 'riveraoklab21@gmail.com', NULL, NULL, NULL, '36 CDC st. la 36 CDC st. la Loma,Quezon City', NULL, 'Quezon City ', '1114', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-04-24', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3566'),
(39470, '3580', 'password1234', 'Kate Daniel', 'Marcos', 'Martin', 'Employee', NULL, NULL, NULL, 0, '1998-05-17', 'Valenzuela City', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3494514125', '374-125-057', '121271818853', '020273667610', '09950661233', '09950661233', 'katedanielmartin17@gmail.com', NULL, NULL, NULL, '897 Puso St Coloong 1', NULL, 'Valenzuela City', '1445', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-05-15', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3580'),
(39471, '2356', 'password1234', 'Ma. Ciantel', 'Pimentel', 'Anunciacion', 'Employee', NULL, NULL, NULL, 0, '1998-10-15', 'Manlila', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3484827631', '750-538-739', '121251268394', '012501149428', '09286850776', '09286850776', 'ciantelpimentel@gmail.com', NULL, NULL, NULL, '1323 sta. Maria st. Tondo manila ', NULL, 'Tondo Manila', '1012', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-06-15', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2356'),
(39472, '3581', 'password1234', 'Aisalyn', 'Saluan', 'Jumah', 'Employee', NULL, NULL, NULL, 0, '1995-08-23', 'Zamboanga City', 'Female', 'Married', 'Filipino', 'Islam', NULL, NULL, NULL, NULL, '3479937882', '367-255-450', '121237997470', '020271627948', '09972902623', '09972902623', 'aisalynalejo23@gmail.com', NULL, NULL, NULL, 'Zip code: 1012', NULL, 'Manila', '1001', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-05-15', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3581'),
(39473, '3416', 'password1234', 'Odessa Alexandria', 'Ramos', 'Jardin', 'Employee', NULL, NULL, NULL, 0, '1993-07-28', 'Caloocan City', 'Female ', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3487960663', '359-681-859', '121259288087', '030256619748', '09561308637', '09561308637', 'jardinodie@gmail.com', NULL, NULL, NULL, 'Blk 4 Lot 7&8 Perciuncula St., St. Francis Village, Brgy. San Bartolome, Novaliches', NULL, 'Novaliches', '1116', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-09-19', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3416'),
(39474, '2337', 'password1234', 'Emie Rose', 'Macandog', 'Badillo', 'Employee', NULL, NULL, NULL, 0, '1992-06-09', 'San Juan Batangas', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3442713486', '468-318-077', '121106722944', '092015219795', '09317322237', '09317322237', 'ehmzesor@gmail.com', NULL, NULL, NULL, '842 Mayon St Brgy Maharlika', NULL, 'Quezon City', '1114', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-05-19', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2337'),
(39475, '2231', 'password1234', 'Francis Marconi', 'Aquino', 'Mangonon', 'Employee', NULL, NULL, NULL, 0, '1969-09-12', 'Tacurong, Sultan Kudarat', 'Male', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3339470340', '206-663-632', '12110711474', '010504239409', '09178831197', '09178831197', 'francismangonon@gmail.com', NULL, NULL, NULL, '72 Payna St. Veterans Village, Project 7', NULL, 'Quezon City', '1105', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-01-05', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2231'),
(39476, '2161', 'password1234', 'Ezekiel', 'Manalo', 'Pineda', 'Employee', NULL, NULL, NULL, 0, '1982-11-11', 'Manila', 'Male', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3381301836', '446-605-076', '12110098537', '010517376545', '09179057673', '09179057673', 'ezechikiel@yahoo.com', NULL, NULL, NULL, '66 Tandang Sora Avenue', NULL, 'Quezon City', '1116', NULL, NULL, NULL, NULL, NULL, 'Regular', '2021-06-28', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2161'),
(39477, '518', 'password1234', 'Lorenn Ann', 'Andoy', 'Obamos', 'Employee', NULL, NULL, NULL, 0, '1991-01-22', 'Manila', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3426174025', '434-077-345', '121083806791', '020259191999', '09489708791', '09489708791', 'aesiaobamos@gmail.com', NULL, NULL, NULL, 'Blk 1 Lot 5 Sta Maria St Sagrado Village Brgy 167 ', NULL, 'Caloocan City', '1400', NULL, NULL, NULL, NULL, NULL, 'Regular', '2016-04-16', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '518'),
(39478, '2210', 'password1234', 'Kenneth', 'Narciso', 'Perez', 'Employee', NULL, NULL, NULL, 0, '1990-04-24', 'Makati City', 'Male', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3435575372', '332-234-096', '121081157515', '220000724874', '09563393527', '09563393527', 'kenperez2415@yahoo.com', NULL, NULL, NULL, '46 Sampaguita St., Pfci Floodway Brgy. San Andres', NULL, 'Cainta Rizal', '1900', NULL, NULL, NULL, NULL, NULL, 'Regular', '2020-10-05', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2210'),
(39479, '2294', 'password1234', 'Josua', 'Festin', 'Abao', 'Employee', NULL, NULL, NULL, 0, '1994-06-24', 'Quezon City', 'Male', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3437991970', '341-676-918', '121163101236', '030259045730', '09452889505', '09452889505', 'josuabao24@gmail.com', NULL, NULL, NULL, '28 Alibangbang St., Project 7, Veterans Village', NULL, 'Quezon City', '1105', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-04-11', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2294'),
(39480, '2295', 'password1234', 'Irish', 'Ronquillo', 'Tan', 'Employee', NULL, NULL, NULL, 0, '1999-01-01', 'Sison Pangasinan', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3493941566', '603-111-689', '121284776501', '020273916092', '09959454438', '09959454438', 'irishronquillotan01@gmail.com', NULL, NULL, NULL, 'Blk2 Lot37 Ph2 Villa Crystal Bagumbong Dulo', NULL, 'Caloocan City', '1421', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-04-11', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2295'),
(39481, '2328', 'password1234', 'Therese Anne', 'Pioquid', 'Peleo', 'Employee', NULL, NULL, NULL, 0, '1998-09-03', 'Manila', 'Female', 'Single', 'Filipino', 'Christian', NULL, NULL, NULL, NULL, '3489526115', '361-201-831', '121264215094', '020273289292', '09356714137', '09356714137', 'theapeleo@gmail.com', NULL, NULL, NULL, '04 Simoun St., Acacia', NULL, 'Malabon City', '1474', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-05-10', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2328'),
(39482, '2334', 'password1234', 'Ryan Christopher', 'Ng', 'Bernabe', 'Employee', NULL, NULL, NULL, 0, '1998-11-02', 'Caloocan', 'Male', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3476102571', '609-388-377', '121235192041', '022509288414', '09561790341', '09561790341', 'ryanng783@gmail.com', NULL, NULL, NULL, '3 Fe St., Don Pedro Marulas', NULL, 'Valenzuela City', '1440', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-05-19', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2334'),
(39483, '2342', 'password1234', 'Jhon Michael', 'Cordero', 'Delizo', 'Employee', NULL, NULL, NULL, 0, '1996-08-07', 'Quezon City', 'Male', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3476332891', '350-406-927', '121226166920', '030263036308', '09943935802', '09943935802', 'mdelizo001@gmail.com', NULL, NULL, NULL, '046 Don Julio Gregorio St., Brgy. Bagbag Novaliches', NULL, 'Quezon City', '1116', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-05-25', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2342'),
(39484, '2350', 'password1234', 'Alvin Jr.', 'Lim', 'Dela Cruz', 'Employee', NULL, NULL, NULL, 0, '1997-02-15', 'Manila', 'Male', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3493082755', '610-473-516', ' 121299318255', '020272549886', '09942449572', '09942449572', 'ajlim756@gmail.com', NULL, NULL, NULL, '4C Talilong St., Brgy. Tinajeros', NULL, 'Malabon City', '1470', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-06-06', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2350'),
(39485, '2362', 'password1234', 'John Derek', 'Fabela', 'David', 'Employee', NULL, NULL, NULL, 0, '1996-05-13', 'Quezon City', 'Male', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3520580447', '612-526-769', '121300365761', '012500987063', '09152088614', '09152088614', 'johnderekfdavid@gmail.com', NULL, NULL, NULL, '301 Rd. 1 Bagong Pag-Asa ', NULL, 'Quezon City', '1105', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-06-27', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2362'),
(39486, '2372', 'password1234', 'John Sherwin', 'Garcia', 'Tolentino', 'Employee', NULL, NULL, NULL, 0, '1997-05-03', 'Quezon City', 'Male', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3458441865', '331-531-018', '121170603904', '020511814759', '09510795002', '09510795002', 'sherwintolentino545@gmail.com', NULL, NULL, NULL, '228 Purok 3A, Luzon Avenue, Brgy. Culiat ', NULL, 'Quezon City', '1128', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-07-01', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2372'),
(39487, '3415', 'password1234', 'Criselda', 'Yuga', 'Acosta', 'Employee', NULL, NULL, NULL, 0, '1994-06-06', 'Lubao Pampanga', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3468563982', '709-461-744', '121203144420', '020269204487', '09455590007', '09455590007', 'acriseldaacosta@gmail.com', NULL, NULL, NULL, '1120 A4 Batangas St., Brgy. 221 Zone 21 Tondo', NULL, 'Manila City', '1012', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-09-05', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3415'),
(39488, '3492', 'password1234', 'Zia', 'Tolentino', 'Francisco', 'Employee', NULL, NULL, NULL, 0, '1998-05-18', 'Malabon City', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3493046474', '768-053-179', '121313528537', '022508840008', '09394278687', '09394278687', 'ziafrancisco0518@gmail.com', NULL, NULL, NULL, '2458 N1-G Camachile St., Brgy. 746, Sta. Ana', NULL, 'Manila City', '1009', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-01-23', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3492'),
(39489, '3517', 'password1234', 'Jazleene Keith', 'Del Rosario', 'Motus', 'Employee', NULL, NULL, NULL, 0, '1995-01-22', 'Quezon City', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3508585105', '399-319-929', '121313510722', '020274421720', '09358912408', '09358912408', 'jazmotus@gmail.com', NULL, NULL, NULL, '739 B3-B Solis St., Gagalangin, Brgy. 162, Tondo', NULL, 'Manila City', '1300', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-02-20', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3517'),
(39490, '3525', 'password1234', 'Carl Cristian', 'Evangelio', 'Ejercito', 'Employee', NULL, NULL, NULL, 0, '1996-10-10', 'Antique', 'Male', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3479998494', '751-154-044', '121216479181', '020269999927', '09318740262', '09318740262', 'oshimory.ph@gmail.com', NULL, NULL, NULL, 'Blk 30-D Lot 4 Langara St., Brgy. 14', NULL, 'Caloocan City', '1400', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-03-06', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3525'),
(39491, '3666', 'password1234', 'Angie Rhea', 'Balsote', 'Bueno', 'Employee', NULL, NULL, NULL, 0, '1998-02-02', 'Quezon City', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3520305787', '633-326-673', '121299470882', '030267794573', '09353034530', '09353034530', 'bangierhea@gmail.com', NULL, NULL, NULL, 'Phase 4B Blk 107 Lot 10 Package 7, Bagong Silang', NULL, 'Caloocan City', '1428', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-08-22', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3666'),
(39492, '3711', 'password1234', 'James Jude', NULL, 'Nuya', 'Employee', NULL, NULL, NULL, 0, '1997-10-31', 'Manila', 'Male', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3483566922', '742-890-835', '121215419376', '020269999943', '09267347358', '09267347358', 'jamesjude67@gmail.com', NULL, NULL, NULL, '1778 Int. 28 New Antipolo St., Sta. Cruz', NULL, 'Manila City', '1003', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-11-06', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3711'),
(39493, '3726', 'password1234', 'Jhon Jexel', 'Espiritu', 'Estrada', 'Employee', NULL, NULL, NULL, 0, '1997-12-04', 'Valenzuela', 'Male', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3485021708', '720-552-816', '121247879394', '022512812256', '09296428737', '09296428737', 'jexelestrada@gmail.com', NULL, NULL, NULL, '6184 Balanti St., Brgy. Ugong', NULL, 'Valenzuela City', '1440', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-01-29', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3726'),
(39494, '3753', 'password1234', 'Mark Normel', 'Ocampo', 'Roldan	', 'Employee', NULL, NULL, NULL, 0, '1990-03-28', 'Manila', 'Male', 'Married', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3420803208', '271-106-381', '121031668817', '020508331585', '09092084968', '09092084968', 'mroldan737@yahoo.com', NULL, NULL, NULL, '603 Panday Pira St., Tondo', NULL, 'Manila City', '1013', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-10-01', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3753'),
(39495, '3769', 'password1234', 'Mia Angelica', 'Abelardo', 'Carabbacan', 'Employee', NULL, NULL, NULL, 0, '1995-10-24', 'Bayombong, Nueva Vizcaya', 'Female', 'Single', 'Filipino', 'Christian', NULL, NULL, NULL, NULL, '3516624524', '722-959-518', '121294598855', '062512355981', '09278547433', '09278547433', 'miaangelica.carabbacan24@gmail.com', NULL, NULL, NULL, 'Danielle\'S Mansion, Congressional Avenue, Brgy. Bahay Toro', NULL, 'Quezon City', '1106', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-10-15', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3769'),
(39496, '3796', 'password1234', 'Hayley Keam', 'Chavez', 'Acio', 'Employee', NULL, NULL, NULL, 0, '1996-08-20', 'Quezon City', 'Female', 'Single', 'Filipino', 'Christian', NULL, NULL, NULL, NULL, '3473850651', '650-677-696', '121269482663', '032513797256', '09682278096', '09682278096', 'hayleyacio20@gmail.com', NULL, NULL, NULL, '34 Airforce Road Brgy. Holy Spirit', NULL, 'Quezon City', '1127', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-11-27', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3796'),
(39497, '3805', 'password1234', 'Rizaline Joyce', 'Pascua', 'Intal', 'Employee', NULL, NULL, NULL, 0, '1985-05-08', 'Manila', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3417699535', '227-079-641', '121078470967', '110504475603', '09069393011', '09069393011', 'sanriogirlkitty@gmail.com', NULL, NULL, NULL, '2240 Fernandez St., Laguna Ext., Brgy. 153 Zone 14 Gagalangin ', NULL, 'Manila City', '1013', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-12-10', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3805'),
(39498, '3507', 'password1234', 'Tweetums Joi', 'Caliboso', 'Reveche', 'Employee', NULL, NULL, NULL, 0, '1991-02-19', 'Sta. Cruz Laguna', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3455510757', '333-219-414', '121166076793', '020266801107', '09773305099', '09773305099', 'tjreveche@gmail.com', NULL, NULL, NULL, '1181 Meding St., San Andres Bukid, Brgy. 731, Malate', NULL, 'Manila City', '1004', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-02-06', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3507'),
(39499, '3880', 'password1234', 'Debbie Ann', 'Pinto', 'Sardinia', 'Employee', NULL, NULL, NULL, 0, '1980-04-19', 'Olongapo City', 'Female', 'Widowed', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '3372884760', '241-242-249', '121032707148', '020502336305', '09266391996', '09266391996', 'debbie.sardinia@nwdi.com.ph', NULL, NULL, NULL, '83 Unit B Women\'S Club, Sto. Nin?O, Galas, Quezon City', NULL, 'Quezon City', '1113', NULL, NULL, NULL, NULL, NULL, 'Probationary', '2024-06-02', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3880'),
(39500, '688', 'password1234', 'Isah Ray', 'Enrico', 'Lorico', 'Employee', NULL, NULL, NULL, 0, '1995-11-11', 'Caloocan City', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3466112021', '337-252-558', '121198051133', '022511613349', '09921332315', '09434274665', 'isahray.lorico@nwdi.com.ph', NULL, NULL, NULL, '2379 Eleud Street, Angeles Extention/Fortune Village 1/General T. De Leon/Valenzuela City', NULL, 'Valenzuela City', '1442', NULL, NULL, NULL, NULL, NULL, 'Regular', '2017-05-08', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '688'),
(39501, '61', 'password1234', 'Christopher Thaddeus', 'Aldovino', 'Mañago', 'Employee', NULL, NULL, NULL, 0, '1983-10-27', 'Lucena City', 'Male', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '419787503', '264-483-984', '108000302371', '030504529505', '09274325295', '09274325295', 'chris.manago27@gmail.com ', NULL, NULL, NULL, '13 Lanao St Brgy Sto Cristo, Bago Bantay, Qc', NULL, 'Quezon City', '1105', NULL, NULL, NULL, NULL, NULL, 'Regular', '2008-05-19', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61'),
(39502, '3579', 'password1234', 'Hanelyn', 'Pasaol', 'Damondamon', 'Employee', NULL, NULL, NULL, 0, '1994-05-21', 'Quezon City', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3450896489', '315-725-849', '121141800737', '020266232382', '09163920051', '09163920051', 'hanelyn.damondamon@nwdi.com.ph', NULL, NULL, NULL, 'Blk 7 Lot 9 Ph 2 Natividad Subd Deparo', NULL, 'Caloocan City', '1420', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-05-15', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3579'),
(39503, '988', 'password1234', 'Kristel Dianne ', 'Alcaraz', 'Dionisio', 'Employee', NULL, NULL, NULL, 0, '1994-06-01', 'Quezon City', 'Female', 'Single', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '3451202771', '352-341-794', '121153414229', '020511426406', '09913913948', '09913913948', 'kdionisio01@gmail.com', NULL, NULL, NULL, '18D Aniceta St. Kaingin Road, Brgy. Apolonio Samson', NULL, 'Quezon City ', '1106', NULL, NULL, NULL, NULL, NULL, 'Regular', '2019-09-26', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '988'),
(39504, '2224', 'password1234', 'Micah', 'Garcia', 'Miranda', 'Employee', NULL, NULL, NULL, 0, '1997-10-27', 'Nueva Ecija', 'Female', 'Single', 'Filipino', 'Christian', NULL, NULL, NULL, NULL, '0240832287', '722-235-684', '121225577426', '212510953115', '09197318764', '09197318764', 'micahm818@gmail.com', NULL, NULL, NULL, '24C Manga St. Bgry Katipunan Munoz Quezon City', NULL, 'Quezon City', '1105', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-01-03', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2224'),
(39505, '904', 'password1234', 'Bea Antoinette', 'Tagubilin', 'Aguilar', 'Employee', NULL, NULL, NULL, 0, '1998-09-12', 'Parañaque City', 'Female', 'Single', 'Filipino', 'Iglesia Ni Cristo', NULL, NULL, NULL, NULL, '3480280544', '352-492-601', '121238929359', '012500549333', '09399456517', '09399456517', 'beaaguilar37@gmail.com', NULL, NULL, NULL, '2041 Elias St Brgy 352, Sta Cruz Manila', NULL, 'Manila City', '1014', NULL, NULL, NULL, NULL, NULL, 'Regular', '2018-11-26', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '904'),
(39506, '2115', 'password1234', 'Maria Christine', 'Tayem', 'Real', 'Employee', NULL, NULL, NULL, 0, '1998-06-22', 'Quezon City', 'Female', 'Married', 'Filipino', 'Roman Catholic ', NULL, NULL, NULL, NULL, '3486983638', '398-078-474', '121251783433', '030265069912', '09491286031', '09491286031', 'mariachristine.real@nwdi.com.ph', NULL, NULL, NULL, '12 Freedom Park 5, Batasan Hills, Qc', NULL, 'Quezon City ', '1126', NULL, NULL, NULL, NULL, NULL, 'Regular', '2021-04-15', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2115'),
(39507, '57', 'password1234', 'Gladys', 'Abud', 'Temblor', 'Employee', NULL, NULL, NULL, 0, '1987-09-18', 'Culaba Biliran', 'Female', 'Married', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3407590013', '400-617-137', '121070013005', '030506009843', '09223741287', '09223741287', 'gladysabud1987@gmail.com', NULL, NULL, NULL, 'Blk 5 Lot 5 Silver Eight Phase 2 Hoa Llano Road Brgy 167 North Caloocan City', NULL, 'North Coloocan City', '1400', NULL, NULL, NULL, NULL, NULL, 'Regular', '2010-07-22', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '57'),
(39508, '501', 'password1234', 'Aida', 'Rivera', 'De Veyra', 'Employee', NULL, NULL, NULL, 0, '1990-01-11', 'Quezon City ', 'Female', 'Single', 'Filipino', 'Born Again Christian', NULL, NULL, NULL, NULL, '3430737940', '321-348-812', '121141182325', '030257503204', '09152149930', '09152149930', 'dadevey90@gmail.com', NULL, NULL, NULL, ' 52-B Masikap St Brgy Pinyahan Quezon City Metro Manila', NULL, 'Quezon City ', '1100', NULL, NULL, NULL, NULL, NULL, 'Regular', '2016-08-29', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '501'),
(39509, '1035', 'password1234', 'Mara', 'Gragasin', 'Mendoza', 'Employee', NULL, NULL, NULL, 0, '1995-06-07', 'Quezon City', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3493807532', '763-927-327', '121270639619', '022511844065', '09066039508', '09066039508', 'maramendozaa@yahoo.com', NULL, NULL, NULL, '004 E Cabral St. Brgy Maysan ', NULL, 'Valenzuela City', '1440', NULL, NULL, NULL, NULL, NULL, 'Regular', '2020-12-08', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1035'),
(39510, '1039', 'password1234', 'Danica', 'Osmeña', 'Rillo', 'Employee', NULL, NULL, NULL, 0, '1998-10-22', 'Valenzuela City', 'Female', 'Single', 'Filipino', 'Iglesia Ni Cristo', NULL, NULL, NULL, NULL, '3489347569', '362-504-388', '121262116260', '022512941226', '09052620293', '09052620293', 'danicarillo22@gmail.com', NULL, NULL, NULL, '3086 Gumamela Ext.\nBarangay/ Subdivision Gen T. De Leon', NULL, 'Valenzuela City', '1442', NULL, NULL, NULL, NULL, NULL, 'Regular', '2021-01-01', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1039'),
(39511, '2201', 'password1234', 'Beverly', 'Prestosa', 'Moleño', 'Employee', NULL, NULL, NULL, 0, '1998-03-23', 'Malabon City ', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3484994506', '362-518-473', '121251577223', '022509469354', '09212194532', '09212194532', 'beverlymoleno26@gmail.com ', NULL, NULL, NULL, '54 Gozon Compound Letre Malabon City', NULL, 'Malabon City', '1473', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-05-02', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2201'),
(39512, '2040', 'password1234', 'Dimple Joy', 'Dignadice', 'Baculi', 'Employee', NULL, NULL, NULL, 0, '1992-12-11', 'Quezon City', 'Female', 'Single', 'Filipino', 'Christian', NULL, NULL, NULL, NULL, '3443322698', '446-314-045', '121137693033', '030002688081', '09190013032', '09190013032', 'dimplejoydb@gmail.com', NULL, NULL, NULL, '98 San Pedro Bautista, San Francisco Del Monte', NULL, 'Quezon City', '1105', NULL, NULL, NULL, NULL, NULL, 'Regular', '2020-11-26', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2040'),
(39513, '2036', 'password1234', 'Lea', 'Escala', 'Dagli', 'Employee', NULL, NULL, NULL, 0, '1987-12-22', 'Manila', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3416544746', '436-333-555', '121034367847', '030252064229', '09688925886', '09688925886', 'ledagli08@yahoo.com', NULL, NULL, NULL, '#1 Sampaguita St. Roxas Circle Old Sauyo Road Novaliches Quezon City', NULL, 'Quezon City', '1116', NULL, NULL, NULL, NULL, NULL, 'Regular', '2020-11-24', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2036'),
(39514, '2223', 'password1234', 'Ailyn', 'Icaca', 'Fernandez', 'Employee', NULL, NULL, NULL, 0, '1989-05-23', 'Quezon City', 'Female', 'Single', 'Filipino', 'Born Again Christian', NULL, NULL, NULL, NULL, '3432738963', '406-189-227', '121120406872', '010516275737', '09075179129', '09075179129', 'aifernandez052389@gmail.com', NULL, NULL, NULL, 'Phase 2 Blk 2 Lot 10 B Pascualer Ville. Brgy. San Bartolome, Novaliches Quezon City', NULL, 'Quezon City', '1116', NULL, NULL, NULL, NULL, NULL, 'Regular', '2021-12-28', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2223'),
(39515, '2055', 'password1234', 'Neriza', NULL, 'Montecillo', 'Employee', NULL, NULL, NULL, 0, '1992-05-22', 'Roca', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3446383537', '320-039-526', '121129031146', '030256672177', '09989968348', '09989968348', 'montecilloriz@gmail.com', NULL, NULL, NULL, 'Block 3 Lot 1 Aquarius St. Goodwill Townhomes I Bagbag Quezon City ', NULL, 'Quezon City', '1116', NULL, NULL, NULL, NULL, NULL, 'Regular', '2021-01-20', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2055'),
(39516, '2065', 'password1234', 'Ginger Micole', 'Jose', 'Moraga', 'Employee', NULL, NULL, NULL, 0, '1999-04-22', 'Quezon City', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3482307221', '375-065-025', '121272027011', '020273677012', '09171771822', '09171771822', 'gingermoraga@yahoo.com', NULL, NULL, NULL, '482 Kalye7 Centro, Lawang Bato, Valenzuela', NULL, 'Valenzuela City', '1447', NULL, NULL, NULL, NULL, NULL, 'Regular', '2021-02-11', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2065'),
(39517, '2140', 'password1234', 'Antonio Bryle Jinky', 'Santos', 'Gamboa', 'Employee', NULL, NULL, NULL, 0, '1995-07-04', 'Conception, Tarlac', 'Male', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3505582813', '398-030-558', '121283312564', '020274202727', '09260067847', '09260067847', 'tongamboa4444@gmail.com', NULL, NULL, NULL, 'Champaca St. Bagong Nayon Bagbaguin Valenzuela City', NULL, 'Valenzuela City', '1440', NULL, NULL, NULL, NULL, NULL, 'Regular', '2021-05-31', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2140'),
(39518, '2299', 'password1234', 'Noime', 'Bernardino', 'Distor', 'Employee', NULL, NULL, NULL, 0, '1978-07-28', 'Quezon', 'Female', 'Married', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3375292168', '239-772-132', '121078729782', '190904599771', '09771173132', '09771173132', 'noimedistor0802@gmail.com', NULL, NULL, NULL, '36 Remarville Avenue Bagbag Novaliches Quezon City\nMetro Manila', NULL, 'Quezon City ', '1116', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-04-18', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2299'),
(39519, '2302', 'password1234', 'Maiah Criselle', 'Tapel', 'Cruz', 'Employee', NULL, NULL, NULL, 0, '1998-04-12', 'Malolos City', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3480333048', '751-920-220', '121239222070', '032516659288', '09166051892', '09166051892', 'maiah.cruz@gmail.com', NULL, NULL, NULL, '187 D Tuazon St., Brgy Maharlika', NULL, 'Quezon City', '1114', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-04-25', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2302'),
(39520, '2292', 'password1234', 'Genesis', 'Macacando', 'Nicolas', 'Employee', NULL, NULL, NULL, 0, '1998-09-16', 'Quezon City', 'Male', 'Single', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '3482455681', '381-291-566', '121216539858', '022506253733', '09994775852', '09994775852', 'genesisnicolastv@gmail.com', NULL, NULL, NULL, '19 Bethzaida St. Brgy. San Agustin, Novaliches', NULL, 'Quezon City ', '1117', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-05-10', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2292'),
(39521, '2380', 'password1234', 'Crislyn Jene', 'Balbarez', 'Leocadio', 'Employee', NULL, NULL, NULL, 0, '1996-12-10', ' Manila', 'Female', 'Single', 'Filipino', 'Christian', NULL, NULL, NULL, NULL, '3471129672', '377-716-215', '121214821092', '032512538184', '09171341277', '09171341277', 'crislynjenel@gmail.com', NULL, NULL, NULL, '21 West Riverside St. San Francisco Brgy. Del Monte Quezon City.', NULL, 'Quezon City', '1105', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-07-09', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2380'),
(39522, '626', 'password1234', 'Rhea Valerie', 'Quiray', 'Macarasig', 'Employee', NULL, NULL, NULL, 0, '1991-03-16', 'Manila', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3445881098', '455-329-832', '121119698407', '020262417876', '09562582936', '09562582936', 'rhea.valerie082408@gmail.com', NULL, NULL, NULL, '2454A Callejon L. T. Earnshaw St Gagalangin Tondo Manila', NULL, 'Metro Manila', '1012', NULL, NULL, NULL, NULL, NULL, 'Regular', '2016-11-04', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '626'),
(39523, '3447', 'password1234', 'Munchkin Celina', 'Waje ', 'Ratac', 'Employee', NULL, NULL, NULL, 0, '1997-02-02', 'Cavite City ', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3455264139', '326-737-445', '121159272634', '080260382504', '09771413802', '09771413802', 'ratacmunchkin@gmail.com', NULL, NULL, NULL, 'Blk 27 Lot 23 Westwood Highlands Langkaan 1 Dasmarinas City Cavite', NULL, 'Cavite', '4114', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-11-07', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3447'),
(39524, '3493', 'password1234', 'Gemaica', 'Peradilla', 'Perez', 'Employee', NULL, NULL, NULL, 0, '1995-09-15', 'Oriental Mindoro', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3493853188', '624-653-545', '920155261577', '092515022483', '09970789139', '09970789139', 'gemaicaperez@yahoo.com', NULL, NULL, NULL, 'No. 76 NS Amoranto Quezon City', NULL, 'Quezon City', '1114', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-01-23', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3493');
INSERT INTO `employees` (`id`, `employee_id`, `password`, `firstname`, `middlename`, `lastname`, `user_role`, `empproftype`, `photo`, `company_id`, `branch_id`, `bdate`, `bplace`, `gender`, `cstatus`, `citizenship`, `religion`, `language`, `bloodtype`, `height`, `weight`, `sss_num`, `tin_num`, `pi_num`, `phil_num`, `tel_num`, `mobile_num`, `email`, `ecp`, `etel`, `current_num`, `current_street`, `current_municipality`, `current_cityprovince`, `current_zipcode`, `permanent_num`, `permanent_street`, `permanent_municipality`, `permanent_cityprovince`, `permanent_zipcode`, `status`, `date_hired`, `date_to`, `regularization_date`, `years_in_service`, `position_id`, `department_id`, `shift_id`, `is_id`, `costcenter_id`, `payclass_id`, `siteassignment_id`, `basepay`, `basic_allowance`, `user_taxable`, `taxable_percent`, `user_nontaxable`, `nontaxable_percent`, `restday`, `factor_days`, `dailyrate`, `hourrate`, `sss_id`, `benefit_1`, `benefit_2`, `benefit_3`, `benefit_4`, `deduction_philhealth`, `deduction_pagibig`, `pagibig_premium`, `bankacc`, `sss_contri_employee`, `sss_employee_trigger`, `sss_contri_employer`, `sss_employer_trigger`, `sss_contri_ecc`, `sss_contri_ee`, `sss_contri_er`, `assigned_supervisor_status`, `created_on`, `empid_approvers_status`, `biometric_id`) VALUES
(39525, '2242', 'password1234', 'Elton Jhon', 'Porbido', 'Bautista', 'Employee', NULL, NULL, NULL, 0, '1992-08-07', 'Quezon City', 'Male', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3461810632', '514-606-543', '121293968253', '032500154194', NULL, NULL, 'bautista0792@gmail.com', NULL, NULL, NULL, 'Purok 2 Brgy Salvacion Rosales, Pangasinan', NULL, 'Pangasinan', '2441', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-02-06', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2242'),
(39526, '2230', 'password1234', 'Marjorie Grace', 'Sandoval', 'Santos', 'Employee', NULL, NULL, NULL, 0, '1979-02-13', 'Manila', 'Female', 'Married', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3429690991', '414-669-785', '121126412270', '030510950166', '09158785440', '09158785440', 'eirojram14@gmail.com', NULL, NULL, NULL, '2225 Karapatan St. Brgy. 351, Sta. Cruz, Metro Manila', NULL, 'Metro Manila', '1014', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-01-12', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2230'),
(39527, '2339', 'password1234', 'Kimberly Shane', 'Musqueda', 'Samane', 'Employee', NULL, NULL, NULL, 0, '1997-09-21', 'Zamboanga Del Sur', 'Female', 'Single', 'Filipino', 'Iglesia Ni Cristo', NULL, NULL, NULL, NULL, '3518919651', '610-474-922', '121298627364', '032518632190', '09184320943', '09184320943', 'kimberlyshanesamane@gmail.com ', NULL, NULL, NULL, 'Blk 6 Lot 3 Neill Property, Upper Banlat Tandang Sora Quezon City', NULL, 'Quezon City', '1116', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-06-06', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2339'),
(39528, '3424', 'password1234', 'Rafael Justin ', 'Manzo', 'Katipunan', 'Employee', NULL, NULL, NULL, 0, '2000-02-26', 'Manila', 'Male', 'Single', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '3466603459', '347-412-523', '121223665316', '022504127080', '09364145232', '09364145232', 'rafaeljustinkatipunan@gmail.com', NULL, NULL, NULL, '479 Talakitok St., Brgy. 22', NULL, 'Caloocan', '1400', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-10-03', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3424'),
(39529, '3569', 'password1234', 'Jewel Dhienice', 'Aromin', 'Pajes', 'Employee', NULL, NULL, NULL, 0, '2000-03-23', 'Manila City', 'Female', 'Single', 'Filipino', 'Born Again', NULL, NULL, NULL, NULL, '3484222757', '638-705-739', '121318715553', '022502794969', '09273963743', '09273963743', 'jeweldpajes@gmail.com', NULL, NULL, NULL, '1966 Rizal Avenue, Sta Cruz, Manila', NULL, 'Manila City', '1014', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-05-02', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3569'),
(39530, '3603', 'password1234', 'Fatima  Therese', 'Desiderio', 'Gubac', 'Employee', NULL, NULL, NULL, 0, '1995-01-19', 'Tarlac City', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '246612809', '606-110-952', '121293435519', '072514781436', '09491632419', '09491632419', 'gubacfatima@gmail.com', NULL, NULL, NULL, 'A.H Lacson Ave., Sampaloc Manila', NULL, 'Manila City', '1008', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-06-13', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3603'),
(39531, '3682', 'password1234', 'Ma. Andrea', 'Edrozo', 'Domingo', 'Employee', NULL, NULL, NULL, 0, '1997-08-13', 'Quezon City', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3498854616', '383-842-334', '121276757918', '032513830210', '09310508743', '09310508743', 'domingoandrea13@gmail.com', NULL, NULL, NULL, '12 Scout Reyes St. Roxas District Quezon City ', NULL, 'Quezon City', '1103', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-09-18', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3682'),
(39532, '3720', 'password1234', 'Jessielyn', 'Mendoza', 'Pedreza', 'Employee', NULL, NULL, NULL, 0, '1989-05-22', 'Quezon City', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3420134896', '296-804-586', '121064648299', '030506293274', '09663057713', '09663057713', 'jessielynpedreza22@gmail.com', NULL, NULL, NULL, '030 Riverside St. Unit 3 Barangay Commonwealth, Quezon City', NULL, 'Quezon City', '1121', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-01-22', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3720'),
(39533, '3730', 'password1234', 'Geian Niña', 'Aquino', 'Silvero', 'Employee', NULL, NULL, NULL, 0, '1999-01-17', ' Eastern Samar', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3488557266', '006-713-150', '121288922751', '132028218919', '09678079244', '09678079244', 'geianinaquino@gmail.com', NULL, NULL, NULL, '1537 Bato-Bato St. Brgy Commonwealth, Quezon City', NULL, 'Quezon City', '1121', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-02-05', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3730'),
(39534, '3743', 'password1234', 'Mary Grace', 'Zafe', 'Ferreria', 'Employee', NULL, NULL, NULL, 0, '1993-07-21', 'Manila City', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3459689419', '331-726-769', '121171780710', '030259750942', '09750270101', '09750270101', 'mgferreria@gmail.com', NULL, NULL, NULL, '155 Mariveles Street, Barangay San Isidro Labrador, La Loma, Quezon City', NULL, 'Quezon City', '1114', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-03-11', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3743'),
(39535, '3749', 'password1234', 'James Ildefonzo', 'Caslib', 'Tianzon', 'Employee', NULL, NULL, NULL, 0, '1996-09-06', 'Sta. Mesa, Manila', 'Male', 'Married', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3470771393', '343-491-338', '121209861702', '020269671646', '09610280092', '09610280092', 'tianzonjames13@yahoo.com', NULL, NULL, NULL, '4232 Orosco St. Brgy. Mapulang Lupa, Valenzuela City', NULL, 'Valenzuela City', '1448', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-03-25', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3749'),
(39536, '3645', 'password1234', 'Mary Valerie', 'Alejos', 'Regino', 'Employee', NULL, NULL, NULL, 0, '1998-12-02', 'Caloocan City', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3466603682', '633-283-274', '121223741851', '032528068528', '09158652929', '09158652929', 'valerieregino098@gmail.com', NULL, NULL, NULL, '349 Libis Espina Street, Brgy 12, Caloocan City', NULL, 'Caloocan City', '1400', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-08-07', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3645'),
(39537, '3731', 'password1234', 'Jennylyn', 'Tolentino', 'Peña', 'Employee', NULL, NULL, NULL, 0, '1998-10-25', 'Pampanga', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3512731194', '376-763-203', '121290134162', '070260280374', '09289735238', '09289735238', 'penajennylyn43@gmail.com', NULL, NULL, NULL, 'El Grande Homes, Gen T Deleon, Valenzuela ', NULL, 'Valenzuela City', '1440', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-02-05', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3731'),
(39538, '3766', 'password1234', 'John Emmanuel', 'Madlos', 'Tan', 'Employee', NULL, NULL, NULL, 0, '1999-12-28', 'Manila City', 'Male', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3530420416', '647-798-537', '121338588639', '022505116066', '09051754327', '09051754327', 'johnetan028@gmail.com', NULL, NULL, NULL, 'B4 Galanto Cmpd Cleofer Street Sta Quiteria Caloocan City ', NULL, 'Caloocan City', '1401', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-04-08', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3766'),
(39539, '2378', 'password1234', 'Cristina', 'Aguilar', 'Sentinellar', 'Employee', NULL, NULL, NULL, 0, '1991-06-29', 'La Union', 'Female', 'Married', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3455142837', '436-431-412', '121158411711', '210253500892', '09970611705', '09970611705', 'ca.sentinellar@gmail.com', NULL, NULL, NULL, '722-A T. Alfonso St., Sampaloc, Manila', NULL, 'Manila', '1008', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-04-15', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2378'),
(39540, '3792', 'password1234', 'Krizzia Mae', 'Saddam', 'Paliwanan', 'Employee', NULL, NULL, NULL, 0, '1999-07-08', 'Cagayan', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '131145533', '626-580-189', '121319585009', '060254463992', '09691488107', '09691488107', 'paliwanankrizziamae@gmail.com', NULL, NULL, NULL, '76A Sta. Catalina Street, Barangay Saint Peter, Santa Mesa Heights Quezon City', NULL, 'Quezon City', '1114', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-05-06', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3792'),
(39541, '3787', 'password1234', 'Anjelica', 'Macaalay', 'Tesorio', 'Employee', NULL, NULL, NULL, 0, '1994-08-05', 'Caloocan City', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3466287668', '336-755-086', '121195387184', '020268744682', '09150577504', '09150577504', 'anjeltesorio06@gmail.com', NULL, NULL, NULL, '7 Pasong Balite, Marulas, Valenzuela', NULL, 'Valenzuela City', '1440', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-05-06', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3787'),
(39542, '3794', 'password1234', 'Teodorico Jr.', 'Diaz', 'Palita', 'Employee', NULL, NULL, NULL, 0, '2001-01-18', 'Nueva Vizcaya', 'Male', 'Single', 'Filipino', 'Christian', NULL, NULL, NULL, NULL, '132551650', '649-906-300', '121341274248', '062510977403', '09973482713', '09973482713', 'joshuapalita@gmail.com', NULL, NULL, NULL, '14 Kalayaan B Batasan Hills Quezon City', NULL, 'Quezon City', '1126', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-05-13', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3794'),
(39543, '3799', 'password1234', 'Jeanemie Iubil', 'Palatino', 'Narte', 'Employee', NULL, NULL, NULL, 0, '2000-02-08', 'Puerto Princesa City', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '447750036', '650-592-006', '121340326189', '092529746883', '09064321802', '09064321802', 'jeanemienarte@gmail.com', NULL, NULL, NULL, '819 The One Padre Campa Street, Brgy. 396', NULL, 'Manila', '1008', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-05-27', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3799'),
(39544, '3830', 'password1234', 'Charmaine Roshelle', 'Sioson', 'Nantes', 'Employee', NULL, NULL, NULL, 0, '2000-06-30', 'Cotabato City', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '951896839', '656-018-109', '121347104128', '020275479900', '09954546513', '09954546513', 'charmainesnantes@gmail.com ', NULL, NULL, NULL, 'Timanan, Barangay Romongaob, South Upi, Maguindanao', NULL, 'Mindanao', '9603', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-08-05', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3830'),
(39545, '3835', 'password1234', 'Dominique Danielles', 'Cabida', 'Romualdo', 'Employee', NULL, NULL, NULL, 0, '1997-01-12', 'Quezon City', 'Female', 'Single', 'Filipino', 'Christian', NULL, NULL, NULL, NULL, '3471668463', '341-900-291', '121212979465', '012503439164', '09957724102', '09957724102', 'romualdoddc@gmail.com', NULL, NULL, NULL, '28 Pangilinan Compound, Tandang Sora, Quezon City', NULL, 'Quezon City', '1116', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-08-20', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3835'),
(39546, '3850', 'password1234', 'Queenie Samantha ', 'Sena', 'Lazaro', 'Employee', NULL, NULL, NULL, 0, '2001-06-18', 'Manila', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3534409695', '345-777-761', '121351584465', '032511743027', '09275950463', '09275950463', 'qslazaro18@gmail.com ', NULL, NULL, NULL, 'Blk 19 Lot 31-B, Narra St., Violago Homes, Parkwood Hills Subdivision, Brgy. Bagong Silangan, Quezon', NULL, 'Quezon City', '1119', NULL, NULL, NULL, NULL, NULL, 'Probationary', '2024-09-30', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3850'),
(39547, '3780', 'password1234', 'Alyssa Bernadette', 'Salar', 'Marata', 'Employee', NULL, NULL, NULL, 0, '1999-02-06', 'Manila', 'Female', 'Single', 'Filipino', 'Roman Catholic ', NULL, NULL, NULL, NULL, '832953529', '610-683-177', '121339072348', '180253415361', '09474108834', '09474108834', 'bernadette.marata@gmail.com', NULL, NULL, NULL, '36 Obanic St. Don Fabian Village,Brgy. Commonwealth', NULL, 'Quezon City ', '1121', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-04-15', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3780'),
(39548, '3874', 'password1234', 'Rena', 'Ladion', 'Chowdhury', 'Employee', NULL, NULL, NULL, 0, '2000-12-27', 'Pangasinan', 'Female', 'Single', 'Filipino', 'Islam', NULL, NULL, NULL, NULL, '3534845822', '663-375-762', '121332009967', '022507790112', '09950242611', '09950242611', 'renaladionchowdhury@gmail.com', NULL, NULL, NULL, '24 B Alejo Rivera St. Sta. Quiteria Caloocan City', NULL, 'Coloocan City', '1402', NULL, NULL, NULL, NULL, NULL, 'Probationary', '2024-11-11', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3874'),
(39549, '3875', 'password1234', 'Mary Grace', 'Recto', 'Gacu', 'Employee', NULL, NULL, NULL, 0, '1999-06-26', ' San Andres, Romblon ', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '449658110', '663-376-562', '121354095660', '092525076263', '09150976699', '09150976699', 'marygracegacu13@gmail.com', NULL, NULL, NULL, 'Blk 26 Lot 11 Kasoy St. Brgy Commonwealth, Quezon City', NULL, 'Quezon City ', '1121', NULL, NULL, NULL, NULL, NULL, 'Probationary', '2024-11-18', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3875'),
(39550, '3713', NULL, 'Rex', 'Santos', 'Navarro', 'Finance', NULL, NULL, NULL, 0, '1976-12-13', 'Baguio City', 'Male', 'Married', 'Filipino', 'Evangelical Christian', NULL, NULL, NULL, NULL, '3360799498', '207-004-998', '121014133409', '010500474721', '09165070984', '09165070984', 'rexnavarro@yahoo.com', NULL, NULL, NULL, '88-D Road 3, Project 6, Quezon City', NULL, 'rexnavarro@yahoo.com', '1100', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-01-03', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3713'),
(39551, '1040', NULL, 'Rowena', 'Delmo', 'Ninobla', 'Finance', NULL, NULL, NULL, 0, '1973-02-11', 'Quezon City', 'Female', 'Married', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '3320756976', '175-181-856', '121011337442', '190520117907', '09173031805', '09173031805', 'rowena.ninobla@nwdi.com.ph', NULL, NULL, NULL, '119 Kaliraya St Cluster 4 Tatalon Quezon City', NULL, 'Quezon City', '1113', NULL, NULL, NULL, NULL, NULL, 'Regular', '2020-07-01', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1040'),
(39552, '945', 'password1234', 'Nery', 'Rambuyon', 'De la Peña', 'Employee', NULL, NULL, NULL, 0, '1967-11-13', 'Cagayan Valley', 'Female', 'Married', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '0398021937', '198-651-925', '104002757679', '190890689608', '09664992616', '09664992616', 'nery.delapena@nwdi.com.ph', NULL, NULL, NULL, 'Progressive Village, Danarose Residences Block 2, Lot 1 Bacoor Molino Iii Cavite City', NULL, 'Cavite', '4102', NULL, NULL, NULL, NULL, NULL, 'Regular', '2019-05-20', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '945'),
(39553, '752', NULL, 'Olivia', 'Maliwat', 'Dela Cruz', 'Finance', NULL, NULL, NULL, 0, '1970-10-08', 'Manila', 'Female', 'Married', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '3332551046', '134-165-641', '107001575721', '190521660019', '09208250162', '09208250162', 'olive.delacruz@nwdi.com.ph', NULL, NULL, NULL, '111 Jp Ramoy St., Talipapa, Novaliches', NULL, 'Caloocan City', '1400', NULL, NULL, NULL, NULL, NULL, 'Regular', '2017-09-11', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '752'),
(39554, '450', 'password1234', 'Maribel', 'Santos', 'Merin', 'Employee', NULL, NULL, NULL, 0, '1973-10-03', 'Aurora Quezon', 'Female', 'Married', 'Filipino', 'Born Again Christian', NULL, NULL, NULL, NULL, '0211285656', '196-133-812', '121059849022', '070000595908', '09563050397', '09563050397', 'maribel.merin@nwdi.com.ph', NULL, NULL, NULL, '26 Kapitan Akong Street, Marulas Valenzuela City', NULL, 'Valenzuela City', '1440', NULL, NULL, NULL, NULL, NULL, 'Regular', '2015-10-05', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '450'),
(39555, '62', 'password1234', 'Gerlie', 'Nota', 'Angoring', 'Employee', NULL, NULL, NULL, 0, '1976-03-25', 'Ozamiz City', 'Female', 'Maried', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '0810505164', '901-501-085', '121059597690', '020505843062', '09264297624', '09264297624', 'gerlie.angoring@nwdi.com.ph', NULL, NULL, NULL, 'Block 68 Lot 36 Las Palmas Subdivision Caypombo, Sta. Maria Bulcan', NULL, 'Sta. Maria, Bulcan', '3022', NULL, NULL, NULL, NULL, NULL, 'Regular', '2012-07-24', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '62'),
(39556, '184', 'password1234', 'Marivic', 'Olegario', 'Pecajas', 'Employee', NULL, NULL, NULL, 0, '1982-01-29', 'Sapang Bulacan', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3382251914', '297-813-771', '121117577336', '030506567005', '09169316784', '09169316784', 'marivic.pecajas@nwd.com.ph', NULL, NULL, NULL, 'Blk. 45 Area G, Brgy. Citrus Sapang Palay Of Sdjm', NULL, 'San Jose Del Monte City', '3023', NULL, NULL, NULL, NULL, NULL, 'Regular', '2014-03-11', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '184'),
(39557, '3860', 'password1234', 'Miguel Troy', 'Castor', 'Supapo', 'Employee', NULL, NULL, NULL, 0, '1996-09-27', 'Quezon City', 'Male', 'Married', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '3472507329', '348-148-474', '121215566069', '020270079459', '09182178601', '09182178601', 'migueltroy.supapo@nwdi.com.ph', NULL, NULL, NULL, '40 F Herrera St. Proj8. Quezon City', NULL, 'Quezon City', '1106', NULL, NULL, NULL, NULL, NULL, 'Probationary', '2024-10-14', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3860'),
(39558, '2168', 'password1234', 'Stephanie', 'Gatchalian', 'Maquiling', 'Employee', NULL, NULL, NULL, 0, '1995-01-14', 'Manila', 'Female', 'Single', 'Filipino', 'Born Again Christian', NULL, NULL, NULL, NULL, '3459610488', '342-936-106', '121171577986', '020267204277', '09295693617', '09295693617', 'stephanie.maquiling@nwdi.com.ph', NULL, NULL, NULL, '24D Jojo St. Baesa Quezon City', NULL, 'Quezon City', '1106', NULL, NULL, NULL, NULL, NULL, 'Regular', '2021-07-22', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2168'),
(39559, '835', 'password1234', 'Laiza', 'Dela Paz', 'Nazareno', 'Employee', NULL, NULL, NULL, 0, '1995-06-13', 'Rizal', 'Female', 'Single', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '3452253758', '500-353-162', '121154480486', '010258116173', '09352038970', '09352038970', 'laiza.nazareno@nwdi.com.ph', NULL, NULL, NULL, 'Block 19 Lot 26 Road 21 Clayton Heights Subd, Brgy. Guinayang ', NULL, 'San Mateo, Rizal', '1850', NULL, NULL, NULL, NULL, NULL, 'Regular', '2018-05-30', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '835'),
(39560, '581', 'password1234', 'Peter Genesis', 'Plateros', 'Viray', 'Employee', NULL, NULL, NULL, 0, '1995-07-14', 'Caloocan City', 'Male', 'Single', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '3459988709', '331-523-988', '121172464296', '020267452327', '09095906671', '09095906671', 'peter.viray@nwdi.com.ph', NULL, NULL, NULL, '6047 Sitio Libis Kabatuhan, Gen T. De Leon, Valenzuela City', NULL, 'Valenzuela City', '1442', NULL, NULL, NULL, NULL, NULL, 'Regular', '2016-07-13', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '581'),
(39561, '919', 'password1234', 'Jennifer', 'Urban', 'Garcia', 'Employee', NULL, NULL, NULL, 0, '1980-03-15', 'Caloocan City', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3368434742', '243-391-378', '121003924775', '030250180531', '09163327611', '09163327611', 'jennifer.garcia@nwdi.com.ph', NULL, NULL, NULL, '# 43 Macaneneng St., Bagong Barrio Caloocan City', NULL, 'Caloocan City', '1400', NULL, NULL, NULL, NULL, NULL, 'Regular', '2019-02-18', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '919'),
(39562, '2363', 'password1234', 'Diana Jean', 'Ladion', 'Enciso', 'Employee', NULL, NULL, NULL, 0, '1994-07-18', 'Malpoc Agusan Del Norte', 'Female', 'Married', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '3444759448', '343-995-104', '121213654127', '022506664997', '09231082537', '09231082537', 'dianajean.ladion@nwdi.com.ph', NULL, NULL, NULL, 'U-2212 Met 3 Sen Gil Puyat Ave Pio Del Pilar Makati City', NULL, 'Makati City', '1200', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-07-04', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2363'),
(39563, '2082', 'password1234', 'Luis John', 'Mortifero', 'Amores', 'Employee', NULL, NULL, NULL, 0, '1997-11-29', 'Caloocan City', 'Male', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3454324740', '476-301-390', '121172227281', '022504536800', '09456657250', '09456657250', 'luisjohn.amores@nwdi.com.ph', NULL, NULL, NULL, 'Blk 12 King St, Exodus Floodway, Sta Ana', NULL, 'Taytay, Rizal', '1920', NULL, NULL, NULL, NULL, NULL, 'Regular', '2021-03-02', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2082'),
(39564, '2006', 'password1234', 'Marlon', 'Hornada', 'Beroy', 'Employee', NULL, NULL, NULL, 0, '1998-12-02', 'Quezon City', 'Male', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3482462881', '383-006-196', '121245243885', '032511648466', '09615104864', '09615104864', 'marlon.beroy@nwdi.com.ph', NULL, NULL, NULL, '696 Road 2 Matandang Balara, Tandang Sora Quezon City', NULL, 'Quezon City ', '1444', NULL, NULL, NULL, NULL, NULL, 'Regular', '2020-10-06', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2006'),
(39565, '2155', 'password1234', 'Erjohn', 'Parcia', 'Meñosa ', 'Employee', NULL, NULL, NULL, 0, '1996-06-20', 'Pangasinan', 'Male', 'Single', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '3483891147', '464-192-625', '121248643968', '030264263391', '09062890301', '09062890301', 'erjohn.menosa@nwdi.com.ph', NULL, NULL, NULL, '#35 Insurance Street. Brgy. Sangandaan Project 8, Quezon City', NULL, 'Quezon City', '1106', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-02-06', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2155'),
(39566, '3541', 'password1234', 'Denver', 'Solis', 'Tabasan', 'Employee', NULL, NULL, NULL, 0, '1997-12-28', 'Valenzuela City', 'Male', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '129512835', '395-363-289', '121258709538', '062013125657', '09611359268', '09611359268', 'denver.tabasan@nwdi.com.ph', NULL, NULL, NULL, '#42 Sapang Bakaw, Brgy. Lawang Bato, Valenzuela City', NULL, 'Valenzuela City', '1442', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-03-20', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3541'),
(39567, '624', 'password1234', 'Jayson', 'Diamse', 'Mabutas', 'Employee', NULL, NULL, NULL, 0, '1995-05-12', 'Caloocan City', 'Male', 'Married', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '3463491774', '489-336-091', '121185394856', '022512378130', '09266874701', '09266874701', 'jayson.mabutas@nwdi.com.ph', NULL, NULL, NULL, '048 Daisy St., Payatas Area A, Quezon City', NULL, 'Quezon City ', '1119', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-09-12', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '624'),
(39568, '780', 'password1234', 'Jerome', 'Allera', 'Abairo', 'Employee', NULL, NULL, NULL, 0, '1993-10-15', 'Valenzuela City', 'Male', 'Single', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '3436581080', '460-397-567', '121081296995', '020264900396', '09458446388', '09458446388', 'jerome.abairo@nwdi.com.ph', NULL, NULL, NULL, 'B8 L35 Beverly Homes Barangay Prenza 2 Marilao Bulaca', NULL, 'Marilao Bulacan', '3019', NULL, NULL, NULL, NULL, NULL, 'Regular', '2017-11-08', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '780'),
(39569, '3643', 'password1234', 'Khrizza Anne', 'Caridad', 'Pua', 'Employee', NULL, NULL, NULL, 0, '1996-07-24', 'Manila', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3472770693', '366-853-791', '121216174594', '020270112650', '09361521516', '09361521516', 'khrizza.pua@nwdi.com.ph', NULL, NULL, NULL, '27L Tullahan Road Sta. Quiteria Caloocan City', NULL, 'Caloocan City', '1402', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-08-07', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3643'),
(39570, '2019', 'password1234', 'Jeza', 'Puliran', 'Rosas', 'Employee', NULL, NULL, NULL, 0, '1996-08-17', 'Southern Leyte', 'Female', 'Single', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '3468070019', '752-734-074', '121224722077', '020272515612', '09050962273', '09050962273', 'jeza.rosas@nwdi.com.ph', NULL, NULL, NULL, '319 F. Roman St. Brgy Salapan San Juan City', NULL, 'San Juan City', '1500', NULL, NULL, NULL, NULL, NULL, 'Regular', '2020-10-19', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019'),
(39571, '2312', 'password1234', 'Marinel', 'Lipata', 'Alcober', 'Employee', NULL, NULL, NULL, 0, '1994-05-29', 'Sta. Maria, Bulacan', 'Female', 'Married', 'Filipino', 'Adventist', NULL, NULL, NULL, NULL, '3520143266', '609-389-600', '121289299897', '092018550239', '09941265139', '09941265139', 'marinel.alcober@nwdi.com.ph', NULL, NULL, NULL, '270 Interior 3C Loans St. Sangandaan, Project 8, Quezon City', NULL, 'Quezon City', '1106', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-05-06', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2312'),
(39572, '3861', 'password1234', 'Jerome ', 'Ramirez', 'Mingi', 'Employee', NULL, NULL, NULL, 0, '1998-03-26', 'Valenzuela City', 'Male', 'Single', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '3494769213', '381-903-914', '121272813258', '090257219851', '09092401601', '09092401601', 'jerome.mingi@nwdi.com.ph', NULL, NULL, NULL, '1012 Don Quijote St., Brgy. 478, Sampaloc, Manila', NULL, 'Manila City', '1008', NULL, NULL, NULL, NULL, NULL, 'Probationary', '2024-10-15', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3861'),
(39573, '1014', 'password1234', 'Nixon', 'Tiongco', 'De Jesus', 'Employee', NULL, NULL, NULL, 0, '1962-05-07', 'Manila', 'Male', 'Married', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '0372443816', '125-618-227', '121032036825', '190513138206', '09177913879', '09177913879', 'nixontdj@yahoo.com', NULL, NULL, NULL, '2170 M. Carreon St. Sta. Ana Manila', NULL, 'Manila City', '1009', NULL, NULL, NULL, NULL, NULL, 'Regular', '2020-06-01', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1014'),
(39574, '934', 'password1234', 'Rebecca', 'Patun-og', 'Bajamonde', 'Employee', NULL, NULL, NULL, 0, '1980-03-25', 'Manila', 'Female', 'Marriend', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3373305950', '220-661-712', '108002562655', '190897696340', '09054110382', '09054110382', 'becca.bajamonde@gmail.com', NULL, NULL, NULL, '152 Tanguile St., Madera Homes 1, Brgy. San Roque, Cainta, Rizal', NULL, 'Cainta Rizal ', '1900', NULL, NULL, NULL, NULL, NULL, 'Regular', '2019-05-04', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '934'),
(39575, '711', 'password1234', 'Honey Jane', 'Cabusas', 'Amba', 'Employee', NULL, NULL, NULL, 0, '1994-06-16', 'Clarin, Misamis Occidental', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3467832562', '335-808-154', '121219372231', '020512033076', '09183209348', '09183209348', 'c.honeyjane@yahoo.com', NULL, NULL, NULL, '107 Bayanihan St. Brgy. 159 Caloocan City', NULL, 'Caloocan City', '1400', NULL, NULL, NULL, NULL, NULL, 'Regular', '2017-06-23', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '711'),
(39576, '817', 'password1234', 'Regine', 'Rante', 'Inguito', 'Employee', NULL, NULL, NULL, 0, '1995-12-17', 'San Jose Del Monte Bulacan', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3463940526', '702-663-897', '121190384752', '132503287718', '09306696690', '09306696690', 'inguito95@yahoo.com', NULL, NULL, NULL, '29 Ipil-Ipil Extension St. Brgy. Capri Quezon City', NULL, 'Quezon City ', '1117', NULL, NULL, NULL, NULL, NULL, 'Regular', '2018-03-04', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '817'),
(39577, '1082', 'password1234', 'Clarissa Marie', 'Farro', 'Cadion', 'Employee', NULL, NULL, NULL, 0, '1996-10-25', 'Manila', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3467542483', '345-739-726', '121201343791', '020269000547', '09465476864', '09465476864', 'clarissa.cadion24@gmail.com', NULL, NULL, NULL, '75 Araneta Ave. Potrero Malabon City', NULL, 'Malabon City', '1475', NULL, NULL, NULL, NULL, NULL, 'Regular', '2020-10-09', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1082'),
(39578, '2268', 'password1234', 'Gabriel Blue', 'Arevalo', 'Garcia', 'Employee', NULL, NULL, NULL, 0, '2002-05-21', 'Quezon City', 'Male', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3520175674', '610-470-483', '121275344136', '030266789234', '09668755771', '09668755771', 'garciagabrielblue@gmail.com', NULL, NULL, NULL, '9 Alley 3 Aib St. Sto. Domingo Quezon City', NULL, 'Quezon City ', '1100', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-09-03', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2268'),
(39579, '3590', 'password1234', 'Joan', 'Obenza', 'Hersalia', 'Employee', NULL, NULL, NULL, 0, '1996-05-19', 'Davao Del Sur', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3445377094', '317-744-620', '121124377133', '020262898424', '09192640722', '09192640722', 'joanhersalia.jfc@gmail.com', NULL, NULL, NULL, '97 Sampaguita St. Baesa Caloocan City', NULL, 'Caloocan City', '1400', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-06-13', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3590'),
(39580, '3647', 'password1234', 'Kathleen', 'Gokioco', 'Apostol', 'Employee', NULL, NULL, NULL, 0, '1997-07-10', 'Manila', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3467946555', '274-351-422', '121200375384', '022512254571', '09480920940', '09480920940', 'kathleenapostol.7@gmail.com', NULL, NULL, NULL, 'Blk 2 Bukid Malinta Valenzuela City', NULL, 'Valenzuela City', '1440', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-07-08', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3647'),
(39581, '37', 'password1234', 'Ryan', 'Monsalud', 'Aldave', 'Employee', NULL, NULL, NULL, 0, '1982-10-25', 'Zambales', 'Male', 'Married', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3404732913', '257-769-255', '108000279269', '030504405946', '09515943400', '09515943400', 'ryan.aldave1025@gmail.com', NULL, NULL, NULL, '190 Greenville Home Bayanihan Caloocan City', NULL, 'Caloocan City', '1401', NULL, NULL, NULL, NULL, NULL, 'Regular', '2007-02-16', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '37'),
(39582, '131', 'password1234', 'Constante', 'Dalafu', 'Dulin', 'Employee', NULL, NULL, NULL, 0, '1966-12-22', 'Tuguegarao City', 'Male', 'Married', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '0390047553', '135-784-107', '108000327125', '190511030807', '09174172030', '09174172030', 'tante.dulin@yahoo.com', NULL, NULL, NULL, '2 D Cypress Village, Apolonia Samson, Quezon City', NULL, 'Quezon City ', '1106', NULL, NULL, NULL, NULL, NULL, 'Regular', '2002-01-03', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '131'),
(39583, '3505', 'password1234', 'Alyssa Mae', 'Mara', 'Quitlong', 'Employee', NULL, NULL, NULL, 0, '1997-03-06', 'Quezon City', 'Female', 'Single', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '3469792244', '341-221-274', '121205228066', '030257415712', '09859449112', '09859449112', 'alyssamae.quitlong@yahoo.com', NULL, NULL, NULL, '395 Ascoville Rd, Malaria, Caloocan City', NULL, 'Caloocan City', '1400', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-02-06', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3505'),
(39584, '125', 'password1234', 'Manny', 'Quirao', 'Joren', 'Employee', NULL, NULL, NULL, 0, '1970-07-01', 'Capiz', 'Male', 'Married', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '3323007745', '232-932-727', '108000328881', '030500444939', '09193404194', '09193404194', 'mannyqjoran@gmail.com', NULL, NULL, NULL, '#54 Sampaguita St, Bagong Barrio, Caloocan City', NULL, 'Caloocan City', '1502', NULL, NULL, NULL, NULL, NULL, 'Regular', '2002-02-15', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '125'),
(39585, '438', 'password1234', 'Jenree', 'Confesor', 'Tayco', 'Employee', NULL, NULL, NULL, 0, '1974-11-16', 'Negros Occidental', 'Male', 'Single', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '3345876116', '412-963-742', '121079275193', '020505627033', '09184736064', '09184736064', 'tjenree@gmail.com', NULL, NULL, NULL, 'B5 L5 Ph2 Mapulang Lupa, Pandi, Bulacan', NULL, 'Bulacan', '3014', NULL, NULL, NULL, NULL, NULL, 'Regular', '2015-09-10', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '438'),
(39586, '802', 'password1234', 'Henry', 'Betos', 'Sarmiento', 'Employee', NULL, NULL, NULL, 0, '1976-01-22', 'Quezon City', 'Male', 'Married', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '3341480920', '203-845-747', '121067063689', '190518447983', '08987001922', '08987001922', 'henrysarmiento227@gmail.com', NULL, NULL, NULL, '30 Burgos St., Concepcion, Malabon City', NULL, 'Malabon City', '1470', NULL, NULL, NULL, NULL, NULL, 'Regular', '2018-02-06', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '802'),
(39587, '2174', 'password1234', 'Dennis', 'Hubayan', 'Herbosa', 'Employee', NULL, NULL, NULL, 0, '1984-11-16', 'Rizal', 'Male', 'Married', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '3387848843', '307-621-688', '121086258759', '032001318127', '09051147072', '09051147072', 'dennisherbosa67@gmail.com', NULL, NULL, NULL, '16 Waling-waling St. Payatas Quezon City', NULL, 'Quezon City ', '1119', NULL, NULL, NULL, NULL, NULL, 'Regular', '2021-06-08', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2174'),
(39588, '2238', 'password1234', 'Jonnie ', 'Ativo', 'Loria', 'Employee', NULL, NULL, NULL, 0, '1978-06-15', 'Bicol', 'Male', 'Married', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '3346997256', '213-700-918', '121244976687', '190892941959', '9325342856', '09325342856', 'loriajonnie44@gmail.com', NULL, NULL, NULL, '96 P. Florentino St, Brgy. Sto. Domingo, Quezon City', NULL, 'Quezon City ', '1110', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-01-27', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2238'),
(39589, '2391', 'password1234', 'Cristopher', 'Benigay', 'Pasco', 'Employee', NULL, NULL, NULL, 0, '1981-10-13', 'Cebu', 'Male', 'Single', 'Filipino', ' Mormon', NULL, NULL, NULL, NULL, '3372053203', '444-513-944', '121102869936', '010516182585', '9918279432', '09918279432', 'pascocristopher13@gmail.com', NULL, NULL, NULL, '1342 A Bernardino Que Grande, Ugong Valenzuela City', NULL, 'Valenzuela City', '1440', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-08-03', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2391'),
(39590, '3491', 'password1234', 'Ruben ', 'Melgar', 'Vargas', 'Employee', NULL, NULL, NULL, 0, '1978-02-04', 'Catanduanes', 'Male', 'Married', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '3387106608', '703-335-183', '107001114646', '030507838096', '9276470724', '09276470724', 'rubenvarga0026@gmail.com', NULL, NULL, NULL, '1-I Garnet St, Cypress Village, Apolonia Samson, Quezon City', NULL, 'Quezon City ', '1106', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-01-23', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3491'),
(39591, '3602', 'password1234', 'Redentor', 'Salvador', 'Diamzon', 'Employee', NULL, NULL, NULL, 0, '1975-03-24', 'Manila', 'Male', 'Married', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '3323238488', '221-895-489', '121109189890', '030511455126', '9694191984', '09694191984', 'redendiamzon@gmail.com', NULL, NULL, NULL, '2415 Felix Huertas St., Sta. Cruz Manila', NULL, 'Manila', '1014', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-06-13', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3602'),
(39592, '3600', 'password1234', 'Lee', 'Jumawid', 'Cosadio', 'Employee', NULL, NULL, NULL, 0, '1993-04-05', 'Quezon City', 'Male', 'Married', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '3445674425', '496-500-548', '121160349439', '030258834867', '9333298889', '09333298889', 'leecosadio34@gmail.com', NULL, NULL, NULL, '063 Ilang Ilang St., Payatas, Quezon City', NULL, '', '1119', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-06-13', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3600');
INSERT INTO `employees` (`id`, `employee_id`, `password`, `firstname`, `middlename`, `lastname`, `user_role`, `empproftype`, `photo`, `company_id`, `branch_id`, `bdate`, `bplace`, `gender`, `cstatus`, `citizenship`, `religion`, `language`, `bloodtype`, `height`, `weight`, `sss_num`, `tin_num`, `pi_num`, `phil_num`, `tel_num`, `mobile_num`, `email`, `ecp`, `etel`, `current_num`, `current_street`, `current_municipality`, `current_cityprovince`, `current_zipcode`, `permanent_num`, `permanent_street`, `permanent_municipality`, `permanent_cityprovince`, `permanent_zipcode`, `status`, `date_hired`, `date_to`, `regularization_date`, `years_in_service`, `position_id`, `department_id`, `shift_id`, `is_id`, `costcenter_id`, `payclass_id`, `siteassignment_id`, `basepay`, `basic_allowance`, `user_taxable`, `taxable_percent`, `user_nontaxable`, `nontaxable_percent`, `restday`, `factor_days`, `dailyrate`, `hourrate`, `sss_id`, `benefit_1`, `benefit_2`, `benefit_3`, `benefit_4`, `deduction_philhealth`, `deduction_pagibig`, `pagibig_premium`, `bankacc`, `sss_contri_employee`, `sss_employee_trigger`, `sss_contri_employer`, `sss_employer_trigger`, `sss_contri_ecc`, `sss_contri_ee`, `sss_contri_er`, `assigned_supervisor_status`, `created_on`, `empid_approvers_status`, `biometric_id`) VALUES
(39593, '3675', 'password1234', 'Alex', 'Confesor', 'Regala', 'Employee', NULL, NULL, NULL, 0, '1972-12-05', 'Bacolod City', 'Male', 'Married', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '712367031', '217-288-937', '107000638074', '190895270680', '9535518450', '09535518450', 'alex45@gmail.com', NULL, NULL, NULL, '109 Matutum St., Brgy. Manresa, Quezon City', NULL, 'Quezon City ', '1115', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-08-29', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3675'),
(39594, '3693', 'password1234', 'Marlo', 'Fernando', 'Peralta', 'Employee', NULL, NULL, NULL, 0, '1995-10-07', 'Manila', 'Male', 'Single', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '3458564797', '449-288-924', '121168391828', '030259446496', '09685324874', '09685324874', 'marloperalta_78@yahoo.com', NULL, NULL, NULL, '721 Bagong Silangan St. Binondo Manila', NULL, 'Manila', '1010', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-10-02', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3693'),
(39595, '3705', 'password1234', 'Joseph', 'Supnet', 'Rubiato', 'Employee', NULL, NULL, NULL, 0, '1990-11-02', 'Quezon City', 'Male', 'Single', 'Filipino', 'Born Again', NULL, NULL, NULL, NULL, '3454502122', '495-494-341', '121157049894', '030258617661', '9910324014', '09910324014', 'rubiatojoseph44@gmail.com', NULL, NULL, NULL, '63 Bulacan St, Brgy. Payatas, Quezon City', NULL, 'Quezon City ', '1119', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-10-23', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3705'),
(39596, '3839', 'password1234', 'Ronel', 'Caysido', 'De Guzman', 'Employee', NULL, NULL, NULL, 0, '1985-07-01', 'Bulacan', 'Male', 'Married', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '3382585570', '407-004-117', '106000783972', '030505745775', '9317908613', '09317908613', 'ronelcaysido4@gmail.com', NULL, NULL, NULL, '#5 Doña Elena St., Punturin, Valenzuela City', NULL, 'Valenzuela City', '1147', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-08-21', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3839'),
(39597, '2213', 'password1234', 'Gemma', 'Lumongsod', 'Marquez', 'Employee', NULL, NULL, NULL, 0, '1984-09-11', 'Manila City', 'Female', 'Single', 'Filipino', 'Iglesia Ni Cristo', NULL, NULL, NULL, NULL, '3389360882', '304-137-096', '104002944903', '10504431245', '09776153012', '09776153012', 'ghemskymarquez@mail.com', NULL, NULL, NULL, 'B29 L21 Ph12 Bagong Silang ', NULL, 'Caloocan City', '1428', NULL, NULL, NULL, NULL, NULL, 'Regular', '2021-12-01', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2213'),
(39598, '2323', 'password1234', 'Rogelio', 'Pellazar', 'Bucio Jr. ', 'Employee', NULL, NULL, NULL, 0, '1975-06-14', 'Caloocan City', 'Male', 'Married', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '3328167185', '726-635-805', '121186384766', '190905263793', '09471594042', '09471594042', 'bucio.rogelio14@gmail.com', NULL, NULL, NULL, '135 University Ave. Potrero ', NULL, 'Malabon City', '1475', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-06-05', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2323'),
(39599, '467', 'password1234', 'Rachel', 'Mendoza', 'De Guzman', 'Employee', NULL, NULL, NULL, 0, '1988-06-09', 'Manila', 'Female', 'Married', 'Filipino', 'Christian', NULL, NULL, NULL, NULL, '3409659651', '399-114-880', '121089883693', '210500699056', '9190967259', '09190967259', 'rachel.mendoza@nwdi.com.ph', NULL, NULL, NULL, '1571 Basilio St., Brgy. 494, Sampaloc, Manila', NULL, 'Manila', '1008', NULL, NULL, NULL, NULL, NULL, 'Regular', '2016-01-04', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '467'),
(39600, '2172', 'password1234', 'Dolly', 'Lupenario', 'Soroan', 'Employee', NULL, NULL, NULL, 0, '1988-04-10', 'Camarines Sur', 'Female', 'Married', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3423757092', '265-380-233', '121060798355', '030507324602', '09391667619', '09391667619', 'neosoroan@gmail.com', NULL, NULL, NULL, 'Lot 1 Blk 11 Unit 1 Atis Road, Pagrai Hills, Brgy. Mayamot Antipolo City', NULL, 'Antipolo', '1870', NULL, NULL, NULL, NULL, NULL, 'Regular', '2021-08-09', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2172'),
(39601, '2015', 'password1234', 'Maria Luisa', 'Floriano', 'Dela Cruz', 'Employee', NULL, NULL, NULL, 0, '1987-05-23', 'Manial', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '0415272449', '233-380-900', '106000049555', '080512051913', '09426656529', '09426656529', 'luidc0523@gmail.com ', NULL, NULL, NULL, '42J Samson Cmpd. Selecta Drive Brgy. Pag Ibig Sa Nayon ', NULL, 'Quezon City', '1115', NULL, NULL, NULL, NULL, NULL, 'Regular', '2020-10-12', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015'),
(39602, '976', 'password1234', 'Elaine ', 'Labanar', 'Artificio', 'Employee', NULL, NULL, NULL, 0, '1993-12-12', 'Odiongan, Romblon', 'Female', 'Single', 'Filipino', 'Christian', NULL, NULL, NULL, NULL, '0427528466', '330-323-482', '121148272692', '120514433254', '09560926798', '09560926798', 'elainealabanar@gmail.com', NULL, NULL, NULL, 'Unit V Purok 8 Adarna Street Brgy Commonwealth Quezon City', NULL, 'Quezon City', '1121', NULL, NULL, NULL, NULL, NULL, 'Regular', '2019-08-22', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '976'),
(39603, '1087', 'password1234', 'Perlie Asuncion', 'Verdadero', 'Oczon', 'Employee', NULL, NULL, NULL, 0, '1990-03-24', 'Caloocan City', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3422536816', '400-491-648', '121032746059', '010510024465', '09198988169', '09198988169', 'perlieoczon@gmail.com', NULL, NULL, NULL, 'No. 43 Mc Arthur Hi-Way Isabelle De Valenzuela Condominium Barangay Marulas, Valenzuela City. Philip', NULL, 'Valenzuela City', '1440', NULL, NULL, NULL, NULL, NULL, 'Regular', '2020-09-15', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1087'),
(39604, '2110', 'password1234', 'Jennie Rose', 'Tanutan', 'Sobrepeña', 'Employee', NULL, NULL, NULL, 0, '1992-10-18', 'Manila', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3437606414', '439-050-100', '121139697486', '030510985962', '09612518876', '09612518876', 'sobrepenajennierose@gmail.com', NULL, NULL, NULL, '42, Dollar St., Barangka, Marikina City', NULL, 'Marikina City', '	1803', NULL, NULL, NULL, NULL, NULL, 'Regular', '2021-04-12', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2110'),
(39605, '2176', 'password1234', 'Ma. Cecilia', 'Merana', 'San Pedro', 'Employee', NULL, NULL, NULL, 0, '1973-03-29', 'Manila', 'Female', 'Married', 'Filipino', 'Christian', NULL, NULL, NULL, NULL, '0398136000', '260-487-463', '121150337828', '190893536292', '09612312077', '09612312077', 'kencestwentyone@gmail.com', NULL, NULL, NULL, '171 Isarog St. Laloma Qc.  1114', NULL, 'Quezon City', '1114', NULL, NULL, NULL, NULL, NULL, 'Regular', '2021-08-09', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2176'),
(39606, '2385', 'password1234', 'Ciara Mae', 'Jorge', 'Sare', 'Employee', NULL, NULL, NULL, 0, '1995-04-21', 'Batac Ilocos Norte', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3452731270', '335-284-389', '121149762784', '022502501406', '09507171006', '09507171006', 'jorgeciasare@gmail.com', NULL, NULL, NULL, 'Blk 513 Lot 3 Bongavilia St Heritage Home Marilao Bulacan', NULL, 'Marilao Bulacan', '3019', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-07-18', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2385'),
(39607, '2096', 'password1234', 'Dianne Aira', 'Ferrer', 'Arizala', 'Employee', NULL, NULL, NULL, 0, '1995-03-23', 'Quezon City', 'Female', 'Married', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3450356437', '485-213-792', '121153501819', '032515432832', '09698805963', '09698805963', 'diannefrrr@gmail.com', NULL, NULL, NULL, '5A Christine Street Parkway Village Brgy Apolonio Samson Quezon City', NULL, 'Quezon City', '1106', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-09-19', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2096'),
(39608, '3540', 'password1234', 'Dorothy', 'Moralijo', 'Clores', 'Employee', NULL, NULL, NULL, 0, '1994-08-29', 'Sta Cruz Manila', 'Female', 'Married', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3459664010', '329-717-124', '121171979522', '030259708474', '09294985296', '09294985296', 'dsomollomoralijo0029@gmail.com', NULL, NULL, NULL, '98C Toctokan St. Masambong Qc.', NULL, 'Quezon City', '1115', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-03-20', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3540'),
(39609, '3667', 'password1234', 'Aaron', 'Frio', 'Villarino', 'Employee', NULL, NULL, NULL, 0, '2000-07-05', 'Quezon City', 'Male', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3526989631', '633-271-664', '121325195265', '030267507445', '09691678087', '09691678087', 'villarinoaaron2001@gmail.com', NULL, NULL, NULL, 'Blk. 9 Lot 5, 2Nd Street Gillian Hills Subdivision, Brgy 167 Llano', NULL, 'Caloocan City', '1400', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-08-22', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3667'),
(39610, '3785', 'password1234', 'Chelly', 'Javier', 'Vera', 'Employee', NULL, NULL, NULL, 0, '1994-06-24', 'Quezon City', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3454479970', '323-732-555', '121129311232', '020266023228', '09059580835', '09059580835', 'verachelly24@gmail.com', NULL, NULL, NULL, '18 Ramon Saint Martin Village Talipapa Novaliches Quezon City', NULL, 'Quezon City', '1116', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-04-29', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3785'),
(39611, '3795', 'password1234', 'Patricia Marie', 'Joven', 'Dayego', 'Employee', NULL, NULL, NULL, 0, '1994-09-27', 'Quezon City', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3451332890', '478-036-717', '121143885442', '030257713306', '09179070445', '09179070445', 'patriciadayego06@gmail.com', NULL, NULL, NULL, '36 Parinas St. Brgy. Bahay Toro Project 8', NULL, 'Quezon City', '1106', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-05-27', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3795'),
(39612, '3826', 'password1234', 'Rizza Meh', 'Miedes', 'Tan', 'Employee', NULL, NULL, NULL, 0, '1992-06-08', 'Caloocan City', 'Female', 'Married', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3440305977', '491-141-115', '121096657132', '020260178114', '09056344637', '09056344637', 'tanrizzamm@gmail.com', NULL, NULL, NULL, '161 Perpetua St. Maypajo Caloocan City', NULL, 'Caloocan City', '1410', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-07-22', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3826'),
(39613, '3888', 'password1234', 'Lovely', 'Patacsil', 'Cornel', 'Employee', NULL, NULL, NULL, 0, '1990-04-17', 'Sampaloc, Manila', 'Female', 'single', 'Filipino', 'Christian', NULL, NULL, NULL, NULL, '3428035272', '311-054-367', '121029745429', '192012722490', '09936457163', '09936457163', 'lovelypatacsilcornel@gmail.com', NULL, NULL, NULL, '15 Amuslan St. Brgy. Masambong ', NULL, 'Quezon City', '1115', NULL, NULL, NULL, NULL, NULL, 'Probationary', '2025-01-06', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3888'),
(39614, '2329', 'password1234', 'John Marvin', 'Lalu', 'Magsino', 'Employee', NULL, NULL, NULL, 0, '1983-11-23', 'Manila', 'Male', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3403042659', '241-002-346', '121074055716', '010251540077', '09167229469', '09167229469', 'johnmarvin.magsino@nwdi.com.ph', NULL, NULL, NULL, 'B11 L1 Monaco Ave.,  Grand Monaco Southpoint, San Isidro Paranaque', NULL, 'Paranaque City', '1700', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-05-18', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2329'),
(39615, '2255', 'password1234', 'Ricardo', 'De Guzman', 'Filoteo', 'Employee', NULL, NULL, NULL, 0, '1981-03-12', 'Bustos Bulacan', 'Male', 'Married', 'Filam', 'Roman Catholic', NULL, NULL, NULL, NULL, '3373530204', '216-459-055', '121036642976', '190894322970', '09650844820', '09650844820', 'rikki.filoteo@gmail.com', NULL, NULL, NULL, '1107 Genius Control, San Pedro, San Simon, Pampanga', NULL, 'Pampanga', '2015', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-02-21', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2255'),
(39616, '2298', 'password1234', 'Ricky', 'Avenido', 'Valmores', 'Employee', NULL, NULL, NULL, 0, '1983-08-01', 'Ayungon Negros Oriental', 'Male', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3376463941', '229-366-630', '101000761427', '032515020984', '09610060876', '09610060876', 'valmores.ricky@gmail.com', NULL, NULL, NULL, '32 Kalayaan C Batasan Hills Q.C', NULL, 'Quezon City ', '1126', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-04-18', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2298'),
(39617, '981', 'password1234', 'Venerald', 'Manito', 'Liao', 'Employee', NULL, NULL, NULL, 0, '1995-01-17', 'Valenzuela', 'Male', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3461719241', '330-742-583', '121178674257', '020267697044', '09611049678', '09611049678', 'veneraldliao@gmail.com', NULL, NULL, NULL, '4361 L.Bernardino St. Gtdl', NULL, 'Valenzuela City', NULL, NULL, NULL, NULL, NULL, NULL, 'Regular', '2019-09-09', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '981'),
(39618, '2240', 'password1234', 'Bienvenido III', 'Castillo', 'Macacando', 'Employee', NULL, NULL, NULL, 0, '1988-12-16', 'Caloocan (Grace Park)', 'Male', 'Married', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3453425145', '485-144-907', '121152645863', '030254438290', '09053859349', '09053859349', 'bienmacacando@gmail.com', NULL, NULL, NULL, '8 Leyland St. Brixtonville Subd ', NULL, 'Camarin Caloocan City', '1420', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-01-27', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2240'),
(39619, '2325', 'password1234', 'April Rose', 'Belen', 'Eugenio', 'Employee', NULL, NULL, NULL, 0, '1995-04-01', 'Nueva Ecija', 'Female', 'Single', 'Filopino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3437916654', '449-374-487', '121093100319', '030257439166', '09298960867', '09298960867', 'aprilroseeugenio@gmail.com', NULL, NULL, NULL, 'B13 L20 Victoria Trails San Isidro Rodriguez Rizal', NULL, 'Rizal', '1860', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-05-06', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2325'),
(39620, '2001', 'password1234', 'Kurt', 'Macasil', 'Añover', 'Employee', NULL, NULL, NULL, 0, '1997-02-08', 'Antipolo City', 'Male', 'Married', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3472806923', '348-734-497', '121216692505', '010262406119', '09311609606', '09311609606', 'kurtanover@gmail.com', NULL, NULL, NULL, '15 Sitio Gumamela 2, Brgy Sta Cruz, Antipolo City', NULL, 'Antipolo City', '1870', NULL, NULL, NULL, NULL, NULL, 'Regular', '2020-10-05', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2001'),
(39621, '1076', 'password1234', 'Sebastian', 'Rufo', 'Igayac', 'Employee', NULL, NULL, NULL, 0, '1998-10-28', 'Quezon City', 'Male', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3464068342', ' 335-699-162', '121186077655', '030260912425', '09669305496', '09669305496', 'sebastian.igayac@gmail.com', NULL, NULL, NULL, '18 Socorro St. Carmel 3 Subd. Tandang Sora Quezon City', NULL, 'Quezon City ', '1116', NULL, NULL, NULL, NULL, NULL, 'Regular', '2020-09-01', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1076'),
(39622, '3677', 'password1234', 'Jhon Carlos ', 'Jabas', 'Drilon', 'Employee', NULL, NULL, NULL, 0, '2001-11-06', 'Manila City', 'Male', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3527132144', '633-321-935', '121325622956', '092503376905', '09958841627', '09958841627', 'jhoncarlosdrilon0411@gmail.com', NULL, NULL, NULL, '72 Payna Veterans Village Quezon City', NULL, 'Quezon City ', '1105', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-09-04', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3677'),
(39623, '3676', 'password1234', 'Andrei James', 'Pono', 'Pantia', 'Employee', NULL, NULL, NULL, 0, '2000-11-04', 'Calatagan, Batangas', 'Male', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3527134663', '398-377-057', '121325638875', '022501154443', '09566180625', '09566180625', 'vonmeanshopee@gmail.com', NULL, NULL, NULL, '106 B. Pachecho Street Tondo Manila', NULL, 'Manila City', '1012', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-09-04', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3676'),
(39624, '3735', 'password1234', 'Jhona Lyn', 'Sanchez', 'Longamen', 'Employee', NULL, NULL, NULL, 0, '1998-07-25', 'Quezon City', 'Female ', 'Married', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3478543303', '506-717-356', '121286765278', '030266610595', '09617521218', '09617521218', 'jhonalynlongamen0725@gmail.com', NULL, NULL, NULL, '1354 Dantes Gajudo Compound Balintawak', NULL, 'Quezon City', '1106', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-02-19', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3735'),
(39625, '3758', 'password1234', 'John Paolo', 'Murillo', 'Fadera', 'Employee', NULL, NULL, NULL, 0, '2001-04-12', 'Oriental Mindoro', 'Male', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3526534963', '647-183-771', '121321204999', '092515059247', '09159838428', '09159838428', 'paolofadera11@gmail.com', NULL, NULL, NULL, '239 J. Marzan St. Sampaloc Manila', NULL, 'Sampaloc Manila', '1008', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-04-01', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3758'),
(39626, '3751', 'password1234', 'Jamielyn ', NULL, 'Corpuz', 'Employee', NULL, NULL, NULL, 0, '1999-05-15', 'Quezon City', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3504234023', '776-156-545', '121281999604', '030266255337', '09926561502', '09926561502', 'corpuzjamielyn@gmail.com', NULL, NULL, NULL, 'Lot 35, Blk 31 #6 Santa Lucia Quezon City', NULL, 'Quezon City ', '1117', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-04-01', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3751'),
(39627, '3847', 'password1234', 'Thems Adrianne', 'Norico', 'Casarino', 'Employee', NULL, NULL, NULL, 0, '2002-11-23', 'Quezon City', 'Male', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3520775058', '624-512-260', '121317516337', '030267862350', '09129094311', '09129094311', 'themsadrianne.casarino23@gmail.com', NULL, NULL, NULL, '065 Kaunlaran St. Brgy Commonwealth Quezon City', NULL, 'Quezon City ', '1121', NULL, NULL, NULL, NULL, NULL, 'Probationary', '2024-09-16', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3847'),
(39628, '1019', NULL, 'Sophia Ann', 'Baje', 'Sarraga', 'System Admin', NULL, NULL, NULL, 0, '1998-08-15', 'Quezon City', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3491923395', '362-047-541', '121267228983', '020273466232', '099457583889', '099457583889', 'piasarraga@gmail.com', NULL, NULL, NULL, '131 JA Santos St., 6th Ave., Caloocan City', NULL, 'Caloocan City', '1405', NULL, NULL, NULL, NULL, NULL, 'Regular', '2020-02-10', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1019'),
(39629, '2297', NULL, 'Ruth', 'Iso', 'Palita', 'System Admin', NULL, NULL, NULL, 0, '0990-07-28', 'Samar', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3432888839', '423-203-115', '121035991171', '030253440321', '09973927336', '09973927336', 'ruth.palita84@gmail.com', NULL, NULL, NULL, '14 kalayaan B. Batasan Hills Quezon City', NULL, 'Quezon City', '1126', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-04-18', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2297'),
(39630, '3411', NULL, 'Millet', 'Callo', 'Dungca', 'HR Admin', NULL, NULL, NULL, 0, '2000-01-03', 'Pampanga', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '0246986412', '614-082-890', '121301439395', '070261635656', '09351182457', '09351182457', 'dungcamillet3@gmail.com', NULL, NULL, NULL, 'Phase 3 Package 3 Block 66 Lot Excess Bagong Silang Caloocan City', NULL, 'Caloocan City', '1428', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-08-31', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3411'),
(39631, '3793', 'password1234', 'Winona Rheeve', 'Capuyan', 'Angeles', 'Employee', NULL, NULL, NULL, 0, '2000-07-01', 'Manila', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3524464501', '649-468-112', '121315518257', '022504522532', '09174648770', '09174648770', 'angeleswinonarhv@gmail.com', NULL, NULL, NULL, '36 Kapanalig St. Brgy 28 Caloocan City', NULL, 'Caloocan City', '1401', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-05-08', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3793'),
(39632, '3829', 'password1234', 'Samantha Shane', 'Ungoda', 'Singh', 'Employee', NULL, NULL, NULL, 0, '2002-09-03', 'Real Quezon', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3533437930', '632-097-335', '121345834800', '082541333432', '09457141657', '09457141657', 'singhshaney22@gmail.com', NULL, NULL, NULL, '409 Mayon St. Brgy. Salvacion, Quezon City', NULL, 'Quezon City', '1100', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-08-06', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3829'),
(39633, '87', 'password1234', 'Mary Ann', 'Flores', 'Pineda', 'Employee', NULL, NULL, NULL, 0, '1979-02-05', 'Manila', 'Female', 'Married', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3385700064', '221-678-318', '121059641275', '020508243724', '09234720907', '09234720907', 'ann.pineda@nwdi.com.ph', NULL, NULL, NULL, '903 Matimyas Street, Sampaloc Manila', NULL, 'Manila', '1008', NULL, NULL, NULL, NULL, NULL, 'Regular', '2012-07-05', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '87'),
(39634, '120', 'password1234', 'Rachelle', 'Valencia', 'Sanguyo', 'Employee', NULL, NULL, NULL, 0, '1977-01-19', 'Quezon City', 'Female', 'Married', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3324818289', '177-782-774', '121118061967', '030501933623', '09228311451', '09228311451', 'rachelle.sanguyo@nwdi.com.ph', NULL, NULL, NULL, '6A Virgo St. Remarville Subd. Bagbag, Quezon City', NULL, 'Quezon City ', '1116', NULL, NULL, NULL, NULL, NULL, 'Regular', '2014-03-04', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '120'),
(39635, '552', 'password1234', 'Froilan Jr.', 'Lanuza', 'Delos Santos', 'Employee', NULL, NULL, NULL, 0, '1991-05-07', 'Caloocan City', 'Male', 'Married', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3436885391', '331-763-013', '121082404307', '020259123284', '09750487391', '09750487391', 'froilan.delossantos@nwdi.com.ph', NULL, NULL, NULL, '756 San Juan St. Brgy. Tuktukan ', NULL, 'Bulacan', '3015', NULL, NULL, NULL, NULL, NULL, 'Regular', '2020-09-15', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '552'),
(39636, '2021', 'password1234', 'Jonathan', 'Frianela', 'Valdez', 'Employee', NULL, NULL, NULL, 0, '1989-07-28', 'Urdaneta Pangasinan', 'Male', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '119161542', '267-764-863', '121159658827', '040500984130', '09666900688', '09666900688', 'jonathan.valdez@nwdi.com.ph', NULL, NULL, NULL, 'Block 107 Lot 10 Phase 4 Springtown Villas Bucal', NULL, 'Tanza, Cavite', '4108', NULL, NULL, NULL, NULL, NULL, 'Regular', '2020-10-21', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021'),
(39637, '2077', 'password1234', 'Ma. Lourdes', 'King', 'Garalde', 'Employee', NULL, NULL, NULL, 0, '1978-05-19', 'Bulacan', 'Female', 'Annulled', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3373190327', '928-507-811', '102001209477', '190893627735', '09178952572', '09178952572', 'lourdes.king@nwdi.com.ph', NULL, NULL, NULL, '201 Lakas Ng Marami St. Brgy 3., Sangandaan', NULL, 'Caloocan City', '1400', NULL, NULL, NULL, NULL, NULL, 'Regular', '2021-03-01', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2077'),
(39638, '3434', 'password1234', 'Alex', 'Raganit', 'Rampas', 'Employee', NULL, NULL, NULL, 0, '1975-03-09', 'Dagupan City', 'Male', 'Married', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '216801925', '199-328-141', '121049220232', '050500018981', '09658379320', '09658379320', 'alex.rampas@nwdi.com.ph', NULL, NULL, NULL, 'Blk. 20 Lot 6&7 Grand Royale Subd., Poblacion, Bugallon, Pangasinan', NULL, 'Bugallon', '2416', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-10-03', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3434'),
(39639, '3530', 'password1234', 'Khareen', 'Clemente', 'Domingo', 'Employee', NULL, NULL, NULL, 0, '1980-11-29', 'Romblon', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3365745939', '223-226-145', '121032213037', '020502042786', '09153110094', '09153110094', 'khareen.domingo@nwdi.com.ph', NULL, NULL, NULL, '10 Luskot St. Brgy. Don Manue, Quezon City', NULL, 'Quezon City ', '1113', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-03-06', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3530'),
(39640, '3539', 'password1234', 'Rachel Ann', 'Ramos', 'Calahat', 'Employee', NULL, NULL, NULL, 0, '1997-01-14', 'Quezon City', 'Female', 'Single', 'Filipino', 'Born Again-Christian', NULL, NULL, NULL, NULL, '3449907570', '744-817-826', '121181290248', '030260262471', '09658301142', '09658301142', 'rachelann.calahat@nwdi.com.ph', NULL, NULL, NULL, '3558 San Isidro St. Brgy 178, Camarin Caloocan City', NULL, 'Caloocan City', '1400', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-03-20', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3539'),
(39641, '3712', 'password1234', 'Murphy Ron', 'Larawan', 'Riguer', 'Employee', NULL, NULL, NULL, 0, '1988-08-30', 'Cebu City', 'Male', 'Married', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '630319116', '315-604-026', '121099849575', '120509074955', '09933041142', '09933041142', 'rlriguer@nwdi.onmicrosoft.com', NULL, NULL, NULL, 'Sta. Theresa Village 5, Lower Mohon', NULL, 'Talisay City, Cebu', '6045', NULL, NULL, NULL, NULL, NULL, 'Regular', '2023-11-06', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3712'),
(39642, '3788', 'password1234', 'Larry', 'Orongan', 'Raflores', 'Employee', NULL, NULL, NULL, 0, '1983-10-03', 'Quezon City', 'Male', 'Married', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '0412179781', '262-124-712', '121011026293', '030501871415', '09163039931', '09163039931', 'larry.raflores@nwdi.com.ph', NULL, NULL, NULL, '1012 Inosluban', NULL, 'Lipa City', '4217', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-05-06', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3788'),
(39643, '3806', 'password1234', 'Aubrey', 'Escubio', 'Bayonito', 'Employee', NULL, NULL, NULL, 0, '1981-10-12', 'Naga City', 'Female', 'Married', 'Filipino', 'Born Again Christian', NULL, NULL, NULL, NULL, '3405485971', '253-917-888', '102001234912', '010510943401', '09157587588', '09157587588', 'aubrey.bayonito@nwdi.com.ph', NULL, NULL, NULL, 'Block 1 Lot 19A Ilang Ilang Street Garden City 3 Subd Paranaque City', NULL, 'Paranaque City', '1700', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-06-10', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3806'),
(39644, '3816', 'password1234', 'Jerald', 'Santos', 'Gaerlan', 'Employee', NULL, NULL, NULL, 0, '1993-07-07', 'Sta Cruz Manila', 'Male', 'Married', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '3444934535', '321-253-227', '121137977351', '030255916080', '09942519010', '0994 251 9010', 'jerald.gaerlan@nwdi.com.ph', NULL, NULL, NULL, '924 Karunungan St. Purok 5, Area F, ', NULL, 'City Of San Jose Del Monte, Bulacan', '3024', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-06-24', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3816'),
(39645, '3815', 'password1234', 'Jelynn', 'Arimado', 'Dela Cruz', 'Employee', NULL, NULL, NULL, 0, '1996-11-17', 'Cardona Rizal', 'Female', 'Married', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3438280224', '748-673-504', '121237803237', '032004926810', '09283060651', '9283060651', 'jelynn.delacruz@nwdi.com.ph', NULL, NULL, NULL, '212 P. Gomez St. Libis', NULL, 'Binangonan Rizal', '1940', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-06-24', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3815'),
(39646, '3828', 'password1234', 'Jeremiah Jane ', 'Barnes', 'Dichoso', 'Employee', NULL, NULL, NULL, 0, '1989-01-05', 'Bicol', 'Female', 'Married', 'Filipino', 'The Church Of Jesus Christ Of Latter Day Saints', NULL, NULL, NULL, NULL, '3427710349', '411-331-183', '121117993739', '030508948162', '09662612792', '09662612792', 'jane.dichoso@nwdi.com.ph', NULL, NULL, NULL, '82B Basa St., Brgy Paltok, Qc', NULL, 'Quezon City', '1105', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-08-05', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3828'),
(39647, '3870', 'password1234', 'Abigael', NULL, 'Piedad', 'Employee', NULL, NULL, NULL, 0, '1993-10-09', 'Sta. Cruz Manila', 'Female', 'Single', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '0123732886', '450-780-293', '121110911299', '060501716041', '09195795179', '09195795179', 'abigael.piedad@nwdi.com.ph', NULL, NULL, NULL, '586 Sampaguita St Blossomville Subd Sto Cristo Tarlac City', NULL, 'Tarlac', '2300', NULL, NULL, NULL, NULL, NULL, 'Regular', '2025-04-21', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3870'),
(39648, '3878', 'password1234', 'Dessa Mae', 'Pines', 'Caccam', 'Employee', NULL, NULL, NULL, 0, '2000-04-19', 'Malabon City', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3520424079', '663-377-023', '121300054098', '020276240243', '09174747798', '09174747798', 'dessamae.caccam@nwdi.com.ph', NULL, NULL, NULL, 'Blk 13 Lot 4 Phase 2 Area 3 Dagat-Dagatan Malabon City', NULL, 'Malabon City', '1472', NULL, NULL, NULL, NULL, NULL, 'Probationary', '2024-05-18', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3878'),
(39649, '2308', 'password1234', 'Narciso Jr', 'Delos Reyes', 'Ramos', 'Employee', NULL, NULL, NULL, 0, '1995-08-02', 'Tanay Rizal', 'Male', 'Single', 'Filipino', 'Christian', NULL, NULL, NULL, NULL, '3518232118', '757-534-551', '121296309496', '030267464789', '09192798665', '09192798665', 'narcisodelosreyesramos@gmail.com', NULL, NULL, NULL, 'Tower E 532 Charm Residences', NULL, 'Cainta Rizal', '1900', NULL, NULL, NULL, NULL, NULL, 'Regular', '2022-04-07', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2308'),
(39650, '3752', 'password1234', 'Chris', 'Respicio', 'Sales', 'Employee', NULL, NULL, NULL, 0, '1995-03-24', 'Lagawe Ifugao', 'Female', 'Single', 'Filipino', 'Born Again', NULL, NULL, NULL, NULL, '3490360425', '763-161-616', '121264643510', '030265234972', '09457291029', '09457291029', 'chrisrespiciosales@gmail.com', NULL, NULL, NULL, '8 Katubusan Street', NULL, 'San Juan City', '1500', NULL, NULL, NULL, NULL, NULL, 'Regular', '2024-04-01', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3752'),
(39651, '194', 'password1234', 'Julius', 'Guinto', 'Sibal', 'Employee', NULL, NULL, NULL, 0, '1978-03-30', 'Palayan City Nueva Ecija', 'Male', 'Married', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '3367642933', '206-582-345', '108000277637', '190903364061', ' 09976900379', ' 09976900379', 'julius.sibal@nwdi.com.ph', NULL, NULL, NULL, 'Lot 4 Block 155 Roma Amor St Barangay Rizal Makati', NULL, 'Makati City', '1218', NULL, NULL, NULL, NULL, NULL, 'Regular', '1998-03-15', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '194'),
(39652, '418', 'password1234', 'Ronald Rhey', 'Del Castillo', 'Dela Cruz', 'Employee', NULL, NULL, NULL, 0, '1989-08-26', 'Quezon City', 'Male', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3427264196', '410-887-426', '121067401882', '010511671502', '09171149363', '09171149363', 'ronaldrhey.delacruz@nwdi.com.ph', NULL, NULL, NULL, 'B3 L2 Marcelo Homes Brgy 167 Llano Caloocan City', NULL, 'Caloocan City', '1422', NULL, NULL, NULL, NULL, NULL, 'Regular', '2015-08-04', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '418'),
(39653, '3882', 'password1234', 'Kimberly Arriza', 'Rocales', 'Arriza', 'Employee', NULL, NULL, NULL, 0, '1999-01-23', 'Manila City, Metro Manila', 'Female', 'Single', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '3482876354', '391-654-146', '121261807930', '022501298321', '09952390951', '09952390951', 'kimrocales18@gmail.com', NULL, NULL, NULL, '22 Bagong Nayon', NULL, 'Quezon City', '1110', NULL, NULL, NULL, NULL, NULL, 'Probationary', '2025-06-01', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3882'),
(39654, '3893', 'password1234', 'John Wesly', 'Tabac', 'Pascual', 'Employee', NULL, NULL, NULL, 0, '1996-09-20', 'Naguilian La Union', 'Male', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '3502088747', '776-142-419', '121279854980', '062500469655', '09171196425', '09171196425', 'pascual.johnwesly@gmail.com', NULL, NULL, NULL, '#165 Sitio Junction Pajo, Guesset Naguilian, La Union', NULL, 'La Union', '2511', NULL, NULL, NULL, NULL, NULL, 'Probationary', '2025-01-27', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3893'),
(39655, '3895', 'password1234', 'Rachelle', 'Flores', 'Abelong', 'Employee', NULL, NULL, NULL, 0, '1991-10-09', 'Manila City, Metro Manila', 'Female', 'Single', 'Filipino', 'Christian', NULL, NULL, NULL, NULL, '3434664608', '312-378-381', '121125499081', '220000498513', '09774810163', '09774810163', 'racheabelong@gmail.com', NULL, NULL, NULL, 'Phase 9 package 4 block 13 lot 12 Bagong Silang Caloocan City', NULL, 'Caloocan City', '1428', NULL, NULL, NULL, NULL, NULL, 'Probationary', '2025-01-27', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3895'),
(39656, '3897', 'password1234', 'Allondra Jade', 'Dagli', 'Salamero', 'Employee', NULL, NULL, NULL, 0, '2001-01-23', 'Candelaria, Quezon', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '0133489187', NULL, '121352645010', '022542706442', '09171194569', '09171194569', 'allondrajadesalamero@gmail.com', NULL, NULL, NULL, '6515 Metrohomes, Sta Mesa Manila', NULL, 'Manila', '1016', NULL, NULL, NULL, NULL, NULL, 'Probationary', '2025-02-03', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3897'),
(39657, '3898', 'password1234', 'Charisse May', 'Ramirez', 'Andres', 'Employee', NULL, NULL, NULL, 0, '1987-03-12', 'Manila City, Metro Manila', 'Female', 'Single', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '3414237408', '272-269-807', '121090953373', '010507167603', '09453976232', '09453976232', 'charizandres@yahoo.com', NULL, NULL, NULL, 'Llamado St. Asis 3 Mendez-Nunez, Cavite', NULL, 'Cavite', '4121', NULL, NULL, NULL, NULL, NULL, 'Probationary', '2025-02-03', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3898'),
(39658, '3899', 'password1234', 'Kim Cyril', 'Ocado', 'De Vera', 'Employee', NULL, NULL, NULL, 0, '2000-09-07', 'Tarlac CIty, Tarlac', 'Female', 'Single', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, '0250007125', '637-125-059', '121347490772', '052512034950', '09271751498', '09271751498', 'devera.kimcyril.o@gmail.com', NULL, NULL, NULL, '#977 Calugay St. Poblacion. Bugallon, Pangasinan', NULL, 'Pangasinan', '2416', NULL, NULL, NULL, NULL, NULL, 'Probationary', '2025-02-03', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3899'),
(39659, '3900', 'password1234', 'Marck Christian', 'Sagun', 'Padua', 'Employee', NULL, NULL, NULL, 0, '1992-12-31', 'Manila City, Metro Manila', 'Male', 'Single', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '3437349807', '316-100-520', '121086620032', '010254966431', '09293669497', '09293669497', 'marckcand2@gmail.com', NULL, NULL, NULL, 'Blk 8 Lot 20 Everlasting Homes Talon 4 Las Piñas City', NULL, 'Las Piñas City', '1747', NULL, NULL, NULL, NULL, NULL, 'Probationary', '2025-02-03', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3900'),
(39660, '3901', 'password1234', 'Felize Angeli', 'Reyes', 'Dimatera', 'Employee', NULL, NULL, NULL, 0, '2001-04-20', 'Manila City, Metro Manila', 'Female', 'Single', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '3534409695', '345-777-761', '121351584465', '032510797514', '09565027542', '09565027542', 'Felize.Angeli.D@gmail.com', NULL, NULL, NULL, '66 Daniel St. Filinvest Heights Subd. Brgy. Bagong Silangan, Quezon City', NULL, 'Quezon City', '1119', NULL, NULL, NULL, NULL, NULL, 'Probationary', '2025-02-03', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3901');
INSERT INTO `employees` (`id`, `employee_id`, `password`, `firstname`, `middlename`, `lastname`, `user_role`, `empproftype`, `photo`, `company_id`, `branch_id`, `bdate`, `bplace`, `gender`, `cstatus`, `citizenship`, `religion`, `language`, `bloodtype`, `height`, `weight`, `sss_num`, `tin_num`, `pi_num`, `phil_num`, `tel_num`, `mobile_num`, `email`, `ecp`, `etel`, `current_num`, `current_street`, `current_municipality`, `current_cityprovince`, `current_zipcode`, `permanent_num`, `permanent_street`, `permanent_municipality`, `permanent_cityprovince`, `permanent_zipcode`, `status`, `date_hired`, `date_to`, `regularization_date`, `years_in_service`, `position_id`, `department_id`, `shift_id`, `is_id`, `costcenter_id`, `payclass_id`, `siteassignment_id`, `basepay`, `basic_allowance`, `user_taxable`, `taxable_percent`, `user_nontaxable`, `nontaxable_percent`, `restday`, `factor_days`, `dailyrate`, `hourrate`, `sss_id`, `benefit_1`, `benefit_2`, `benefit_3`, `benefit_4`, `deduction_philhealth`, `deduction_pagibig`, `pagibig_premium`, `bankacc`, `sss_contri_employee`, `sss_employee_trigger`, `sss_contri_employer`, `sss_employer_trigger`, `sss_contri_ecc`, `sss_contri_ee`, `sss_contri_er`, `assigned_supervisor_status`, `created_on`, `empid_approvers_status`, `biometric_id`) VALUES
(39661, '3902', 'password1234', 'Clodeene Marie', 'Lumugong', 'Mendoza', 'Employee', NULL, NULL, NULL, 0, '2000-04-06', 'Mandaluyong City', 'Female', 'Single', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '3536327186', '668-685-199', '121356659542', '012502376002', '09776695948', '09776695948', 'clodeenemendoza4@gmail.com', NULL, NULL, NULL, '106 JB Miguel St. Bambang Pasig', NULL, 'Pasig City', '1600', NULL, NULL, NULL, NULL, NULL, 'Probationary', '2025-02-03', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3902'),
(39662, '419', 'password1234', 'Ronaldo', 'Abit', 'Pagadora', 'Employee', NULL, NULL, NULL, 0, '1978-08-31', 'Manila', 'Male', 'Married', 'Filipino', 'Catholic', NULL, NULL, NULL, NULL, '3422156924', '400-027-434', '121008720988', '192001783080', '09484059940', '09484059940', 'ronaldpagadora@gmail.com', NULL, NULL, NULL, '1661 Estrada St., San Andres Bukid, Manila', NULL, 'Manila', '1017', NULL, NULL, NULL, NULL, NULL, 'Regular', '2015-08-01', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '419'),
(39663, '283', 'password1234', 'Shakeys Czarina', 'Chico', 'Cañada', 'Employee', NULL, NULL, NULL, 0, '1989-02-06', 'Manila', 'Female', 'Married', 'Filipino', 'Iglesia Ni Cristo', NULL, NULL, NULL, NULL, '3422156924', '400-027-434', '121008720988', '020506384010', '09517857018', '09517857018', 's.czarina_chico@yahoo.com', NULL, NULL, NULL, 'Bldg. 7-408 Permanent Housing, Balut, Tondo, Manila', NULL, 'Manila', '1013', NULL, NULL, NULL, NULL, NULL, 'Regular', '2017-03-16', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '283'),
(39664, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employees_bkup`
--

CREATE TABLE `employees_bkup` (
  `id` int(11) NOT NULL,
  `employee_id` varchar(15) NOT NULL,
  `password` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `middlename` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) NOT NULL,
  `user_role` varchar(50) NOT NULL,
  `empproftype` int(11) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `company_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `bdate` date NOT NULL,
  `bplace` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `cstatus` varchar(100) NOT NULL,
  `citizenship` varchar(100) NOT NULL,
  `religion` varchar(100) DEFAULT NULL,
  `language` varchar(100) DEFAULT NULL,
  `bloodtype` varchar(100) DEFAULT NULL,
  `height` varchar(100) DEFAULT NULL,
  `weight` varchar(100) DEFAULT NULL,
  `sss_num` varchar(100) NOT NULL,
  `tin_num` varchar(100) NOT NULL,
  `pi_num` varchar(100) NOT NULL,
  `phil_num` varchar(100) NOT NULL,
  `tel_num` varchar(100) NOT NULL,
  `mobile_num` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `ecp` varchar(100) NOT NULL,
  `etel` varchar(100) NOT NULL,
  `current_num` varchar(100) NOT NULL,
  `current_street` varchar(100) NOT NULL,
  `current_municipality` varchar(100) NOT NULL,
  `current_cityprovince` varchar(100) NOT NULL,
  `current_zipcode` varchar(100) NOT NULL,
  `permanent_num` varchar(100) NOT NULL,
  `permanent_street` varchar(100) NOT NULL,
  `permanent_municipality` varchar(100) NOT NULL,
  `permanent_cityprovince` varchar(100) NOT NULL,
  `permanent_zipcode` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL,
  `date_hired` date NOT NULL,
  `date_to` date NOT NULL,
  `regularization_date` date NOT NULL,
  `years_in_service` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `shift_id` int(11) NOT NULL,
  `is_id` int(11) NOT NULL,
  `costcenter_id` int(11) NOT NULL,
  `payclass_id` int(11) NOT NULL,
  `siteassignment_id` int(11) NOT NULL,
  `basepay` double NOT NULL,
  `basic_allowance` double NOT NULL,
  `user_taxable` double NOT NULL,
  `taxable_percent` double NOT NULL,
  `user_nontaxable` double NOT NULL,
  `nontaxable_percent` double NOT NULL,
  `restday` varchar(50) NOT NULL,
  `factor_days` int(11) NOT NULL,
  `dailyrate` double NOT NULL,
  `hourrate` double NOT NULL,
  `sss_id` int(11) NOT NULL,
  `benefit_1` double NOT NULL,
  `benefit_2` double NOT NULL,
  `benefit_3` double NOT NULL,
  `benefit_4` double NOT NULL,
  `deduction_philhealth` double NOT NULL,
  `deduction_pagibig` double NOT NULL,
  `pagibig_premium` double NOT NULL,
  `bankacc` varchar(100) NOT NULL,
  `sss_contri_employee` double NOT NULL,
  `sss_employee_trigger` int(11) NOT NULL,
  `sss_contri_employer` double NOT NULL,
  `sss_employer_trigger` int(11) NOT NULL,
  `sss_contri_ecc` double NOT NULL,
  `sss_contri_ee` double NOT NULL,
  `sss_contri_er` double NOT NULL,
  `assigned_supervisor_status` int(11) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `employees_bkup`
--

INSERT INTO `employees_bkup` (`id`, `employee_id`, `password`, `firstname`, `middlename`, `lastname`, `user_role`, `empproftype`, `photo`, `company_id`, `branch_id`, `bdate`, `bplace`, `gender`, `cstatus`, `citizenship`, `religion`, `language`, `bloodtype`, `height`, `weight`, `sss_num`, `tin_num`, `pi_num`, `phil_num`, `tel_num`, `mobile_num`, `email`, `ecp`, `etel`, `current_num`, `current_street`, `current_municipality`, `current_cityprovince`, `current_zipcode`, `permanent_num`, `permanent_street`, `permanent_municipality`, `permanent_cityprovince`, `permanent_zipcode`, `status`, `date_hired`, `date_to`, `regularization_date`, `years_in_service`, `position_id`, `department_id`, `shift_id`, `is_id`, `costcenter_id`, `payclass_id`, `siteassignment_id`, `basepay`, `basic_allowance`, `user_taxable`, `taxable_percent`, `user_nontaxable`, `nontaxable_percent`, `restday`, `factor_days`, `dailyrate`, `hourrate`, `sss_id`, `benefit_1`, `benefit_2`, `benefit_3`, `benefit_4`, `deduction_philhealth`, `deduction_pagibig`, `pagibig_premium`, `bankacc`, `sss_contri_employee`, `sss_employee_trigger`, `sss_contri_employer`, `sss_employer_trigger`, `sss_contri_ecc`, `sss_contri_ee`, `sss_contri_er`, `assigned_supervisor_status`, `created_on`) VALUES
(1, 'system_admin', 'password', 'System', '', 'Admin', 'system_admin', 1, 'admin.jpg', 1, 1, '2022-12-01', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Active', '0000-00-00', '0000-00-00', '0000-00-00', 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 1, '2022-12-05'),
(2, 'hr_admin', 'abiva', 'HR', '', 'Admin', 'hr_admin', 1, 'employee.png', 1, 1, '2022-12-01', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Active', '0000-00-00', '0000-00-00', '0000-00-00', 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 1, '2022-12-05'),
(3, 'hr_personnel', '1234', 'HR', '', 'Personnel', 'hr_personnel', 1, 'girl.jpg', 1, 1, '2022-12-01', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Active', '0000-00-00', '0000-00-00', '0000-00-00', 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 1, '2022-12-06'),
(4, '30517', 'abiva', 'Maria Criser', 'Coteng', 'Abad', 'employee', 1, 'HR.png', 1, 1, '1975-12-01', 'Manila', 'Female', 'Single', 'Filipino', 'Roman Catholic', 'Tagalog', '', '', '', '3332470538', '248-356-998', '108000832140', 'Â 070504213909', '', '9178381081', 'scienceteam@abiva.com.ph', '', '', '2968 Int. 11 Rizal Ave. ', 'Sta. Cruz', 'Manila', 'Rizal', '1014', '2968 Int. 11 Rizal Ave. ', 'Sta. Cruz', 'Manila', 'Rizal', '1014', 'Inactive', '2017-06-13', '2024-04-15', '2017-12-13', 6, 25, 14, 3, 1, 0, 2, 0, 34883, 0, 0, 0, 34883, 100, 'Sunday', 313, 1341.65, 167.71, 45, 0, 0, 0, 0, 697.66, 200, 0, '6113611268514', 900, 0, 1700, 0, 30, 225, 425, 0, '2023-06-29'),
(5, '4C-0009', 'test1234', 'Raphaela', 'Matias', 'Matias', 'employee', 1, '', 1, 1, '1994-01-23', 'Legazpi Albay', 'Female', 'Single', 'Filipino', 'Roman Catholic', 'English / Tagalog', 'O', '5\'4', '63', '04-4566198-1', '31799174600', '121223107223', '09-202711349-6', '09516320658', '09616067037', 'rapha@4corners.com.ph', '', '', '13', 'Jade St.', 'Laguna', 'Binan', '4024', '13', 'Jade St.', 'Laguna', 'Binan', '4024', 'Active', '2024-03-11', '2024-04-11', '2024-04-01', 0, 33, 9, 6, 20, 0, 2, 0, 30000, 0, 0, 0, 0, 0, 'Saturday', 313, 0, 0, 45, 0, 0, 0, 0, 600, 200, 0, '2959107443', 900, 0, 1700, 0, 30, 225, 425, 0, '2024-04-08'),
(6, '4C-00010', 'test1234', 'Mariecor', 'Unsure', 'Deliverio', 'manager', 1, '', 1, 1, '1975-03-11', 'Dumagueto', 'Female', 'Single', 'Filipino', '', '', '', '', '', 'na', 'na', 'na', 'na', '', '09178852677', 'cor@4corners.com.ph', '', '', 'na', 'na', 'na', 'na', 'na', 'na', 'na', 'na', 'na', 'na', 'Active', '2022-01-01', '2024-04-08', '2022-06-30', 2, 34, 9, 6, 1, 0, 1, 0, 80000, 0, 0, 0, 0, 0, 'Saturday', 313, 0, 0, 45, 0, 0, 0, 0, 1600, 200, 0, '0', 900, 0, 1700, 0, 30, 225, 425, 1, '2024-04-08'),
(7, '1102', 'abiva', 'Ronnie', 'Heramis', 'Pilarca', 'employee', 1, '', 1, 1, '1965-05-20', 'Antique', 'Male', 'Married', 'Filipino', 'Protestant', 'Tagalog', 'O', '5\'4', '63kg', '0378738279', '177014931', '107000741565', 'Â 190894935689', '0271826237', '9338181743', 'rapha@4corners.com.ph', '', '', '0', 'Citrus', 'San Jose Del Monte', 'Bulacan', '3023', '0', 'Citrus', 'San Jose Del Monte', 'Bulacan', '3023', 'Active', '1994-01-01', '2024-04-29', '1994-06-01', 30, 12, 2, 3, 1, 1, 2, 1, 33680, 0, 0, 0, 0, 0, 'Saturday', 313, 0, 0, 45, 0, 0, 0, 0, 673.6, 200, 0, '6113611917067', 900, 0, 1700, 0, 30, 225, 425, 0, '2024-04-29');

-- --------------------------------------------------------

--
-- Table structure for table `employee_status`
--

CREATE TABLE `employee_status` (
  `id` int(11) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `employee_status`
--

INSERT INTO `employee_status` (`id`, `description`) VALUES
(1, 'Regular'),
(2, 'Probationary');

-- --------------------------------------------------------

--
-- Table structure for table `er_approvers`
--

CREATE TABLE `er_approvers` (
  `id` int(11) NOT NULL,
  `deptID` int(11) NOT NULL,
  `approver1` varchar(100) NOT NULL,
  `approver2` varchar(100) NOT NULL,
  `proxyapprover1` varchar(100) NOT NULL,
  `proxyapprover2` varchar(100) NOT NULL,
  `company_id` int(11) NOT NULL,
  `empid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `er_approvers`
--

INSERT INTO `er_approvers` (`id`, `deptID`, `approver1`, `approver2`, `proxyapprover1`, `proxyapprover2`, `company_id`, `empid`) VALUES
(1, 9, '4C-00010', 'hr_admin', '', '', 1, 0),
(2, 3, 'hr_admin', 'hr_personnel', '', '', 1, 0),
(3, 13, 'system_admin', 'hr_admin', '', '', 1, 0),
(4, 1, 'hr_admin', '', '', '', 1, 0),
(5, 0, 'system_admin', 'system_admin', '', '', 1, 2),
(6, 0, 'system_admin', 'system_admin', '', '', 1, 2),
(7, 0, 'system_admin', 'system_admin', '', '', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `er_benefits`
--

CREATE TABLE `er_benefits` (
  `id` int(11) NOT NULL,
  `description` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `er_benefits`
--

INSERT INTO `er_benefits` (`id`, `description`, `type`, `status`, `company_id`) VALUES
(1, '123', 'Taxable', 'Active', 1),
(2, 'List of Allowances', 'Allowance', 'Active', 1),
(3, 'Basic Allowance', 'Allowance', 'Active', 1),
(4, 'Developmental Allowance', 'Allowance', 'Active', 1),
(5, 'PCO Allowance', 'Allowance', 'Active', 1),
(6, 'Responsibility Allowance', 'Allowance', 'Active', 1),
(7, 'Transportation Allowance', 'Allowance', 'Active', 1),
(8, 'Molecular Allowance', 'Allowance', 'Active', 1),
(9, 'Hazard Pay', 'Allowance', 'Active', 1),
(10, 'Licensure', 'Allowance', 'Active', 1),
(11, 'DT Allowance', 'Allowance', 'Active', 1),
(12, 'HIV Allowance', 'Allowance', 'Active', 1),
(13, 'Communication Allowance', 'Allowance', 'Active', 1);

-- --------------------------------------------------------

--
-- Table structure for table `er_costcenter`
--

CREATE TABLE `er_costcenter` (
  `id` int(11) NOT NULL,
  `description` varchar(100) NOT NULL,
  `company_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `er_costcenter`
--

INSERT INTO `er_costcenter` (`id`, `description`, `company_id`) VALUES
(1, 'R&F', 1);

-- --------------------------------------------------------

--
-- Table structure for table `er_deduction`
--

CREATE TABLE `er_deduction` (
  `id` int(11) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `er_deduction`
--

INSERT INTO `er_deduction` (`id`, `description`, `status`, `company_id`) VALUES
(2, 'sss', 'Active', 1),
(3, 'SSS Deduction', 'Active', 1),
(4, 'PagIbig Deduction', 'Active', 1),
(5, 'SSSCalamity', 'Active', 1),
(6, 'PagibigCalamity', 'Active', 1),
(7, 'Tax Due', 'Active', 1),
(8, 'Company Loan', 'Active', 1),
(9, 'Company Car', 'Active', 1),
(10, 'Laboratory Availment', 'Active', 1),
(11, 'Other Deduction', 'Active', 1);

-- --------------------------------------------------------

--
-- Table structure for table `er_department`
--

CREATE TABLE `er_department` (
  `id` int(11) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  `department_approvers_status` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `er_department`
--

INSERT INTO `er_department` (`id`, `description`, `department_approvers_status`, `company_id`) VALUES
(1, 'Accounting', 1, 1),
(2, 'Admin', 0, 1),
(3, 'Billing & Collection', 1, 1),
(4, 'Cebu Office', 0, 1),
(5, 'Corporate Planning', 0, 1),
(6, 'CPED', 0, 1),
(7, 'Customer & Product Support', 0, 1),
(8, 'Davao Office', 0, 1),
(9, 'Human Resources', 1, 1),
(10, 'Marketing', 0, 1),
(11, 'MIS', 0, 1),
(12, 'Production Group', 0, 1),
(13, 'Production/CDD', 1, 1),
(14, 'Production/EDP', 0, 1),
(15, 'Sales', 0, 1),
(16, 'Warehouse & Delivery', 0, 1),
(17, 'Operations', 1, 1),
(18, 'Laboratory', 1, 1),
(19, 'Imaging', 1, 1),
(20, 'Customer Care', 1, 1),
(21, 'Finance & Accounting', 1, 1),
(22, 'Admin and Facilities', 1, 1),
(23, 'Customer Care Associate', 1, 1),
(24, 'DT-Imaging', 1, 1),
(25, 'Main Imaging', 1, 1),
(26, 'Industrial Medicine', 1, 1),
(27, 'Main Laboratory', 1, 1),
(28, 'Accounting', 1, 1),
(29, 'Purchasing', 1, 1),
(30, 'Admin and Facilities', 1, 1),
(31, 'Total Quality', 1, 1),
(32, 'ICT', 1, 1),
(33, 'HRD', 1, 1),
(34, 'Sales & Marketing', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `er_division`
--

CREATE TABLE `er_division` (
  `id` int(11) NOT NULL,
  `description` varchar(100) NOT NULL,
  `company_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `er_payclass`
--

CREATE TABLE `er_payclass` (
  `id` int(11) NOT NULL,
  `description` varchar(100) NOT NULL,
  `company_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `er_payclass`
--

INSERT INTO `er_payclass` (`id`, `description`, `company_id`) VALUES
(1, 'Confidential', 1),
(2, 'R&F', 1),
(3, 'SS', 1);

-- --------------------------------------------------------

--
-- Table structure for table `er_position`
--

CREATE TABLE `er_position` (
  `id` int(11) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `er_position`
--

INSERT INTO `er_position` (`id`, `description`, `company_id`) VALUES
(57, 'Branch Supervisor', 1),
(58, 'Clinic Staff', 1),
(59, 'Laboratory Supervisor', 1),
(60, 'Medical Laboratory Scientist', 1),
(61, 'Jr. Medical Laboratory Scientist', 1),
(62, 'Drug Test Analyst/Medical Laboratory Scientist', 1),
(63, 'Radiologic Technologist Assistant', 1),
(64, 'Senior Imaging Technologist', 1),
(65, 'Radiologic Technologist', 1),
(66, 'Customer Care Associate', 1),
(67, 'Branch Manager', 1),
(68, 'Drug Test Analyst', 1),
(69, 'Radiology Nurse', 1),
(70, 'Bookkeeper', 1),
(71, 'Laboratory Supervisor (In-Training)', 1),
(72, 'Messenger', 1),
(73, 'Medical Laboratory Scientist/Drug Test Analyst', 1),
(74, 'Medical Laboratory Scientist/HIV Analyst', 1),
(75, 'Jr. Medical Laboratory Scientist/DTA', 1),
(76, 'CT Scan Supervisor', 1),
(77, 'Branch Supervisor (In-Training)', 1),
(78, 'Jr. Medical Laboratory Scientist/Drug Test Analyst', 1),
(79, 'Medical Laboratory Scientist/DTA', 1),
(80, 'DTA/Medical Laboratory Scientist', 1),
(81, 'Swabber/Phlebotomist', 1),
(82, 'Imaging Supervisor', 1),
(83, 'Clinic Nurse', 1),
(84, 'Authorized Specimen Collector', 1),
(85, 'Primary Care Physician', 1),
(86, 'Cardiac Technologist', 1),
(87, 'Janitor', 1),
(88, 'Drug Test  Analyst/Medical Laboratory Scientist', 1),
(89, 'Drug Test Analyst/Jr. Medical Laboratory Scientist', 1),
(90, 'Imaging Staff', 1),
(91, 'Imaging Manager', 1),
(92, 'Chief Cardiac Technologist', 1),
(93, 'Assistant Chief Radiologic Technologist', 1),
(94, 'Radiologic Technology Assistant', 1),
(95, 'Medical Director', 1),
(96, 'IMD Staff', 1),
(97, 'Medical Processing Supervisor', 1),
(98, 'Medical Processing Coordinator', 1),
(99, 'Field Coordinator', 1),
(100, 'IMD Nurse', 1),
(101, 'IMD-Admin and Compliance Coordinator', 1),
(102, 'Senior Laboratory Manager', 1),
(103, 'Laboratory Manager', 1),
(104, 'Laboratory Supervisor (Home Service/Phleb)', 1),
(105, 'Laboratory Training Specialist (In-Training)', 1),
(106, 'Drug Testing Laboratory Supervisor', 1),
(107, 'Laboratory Section Supervisor Pre-Post Analytics', 1),
(108, 'Laboratory Section Supervisor Chemistry and Immuno', 1),
(109, 'Laboratory Supervisor Microbiology and Hispatology (In-Training)', 1),
(110, 'Home Service Coordinator', 1),
(111, 'Pre/Post-Analytical Staff', 1),
(112, 'Home Service Staff', 1),
(113, 'Chief Finance Controller', 1),
(114, 'Finance and Accounting Manager', 1),
(115, 'Assistant Accounting Manager (Affliates)', 1),
(116, 'General Accountant', 1),
(117, 'Accounting Supervisor (Billing and Collection)', 1),
(118, 'Accounting Supervisor (General Accounting)', 1),
(119, 'Accounting Supervisor (Credits and Collections)', 1),
(120, 'Accounting Assistant (Collection)', 1),
(121, 'Accounting Assistant (Treasury)', 1),
(122, 'Accounting Assistant (Collection)', 1),
(123, 'Accounting Officer (Billing)', 1),
(124, 'Accounting Assistant (General Accounting)', 1),
(125, 'Accounting Assistant  (Billing)', 1),
(126, 'Accounting Assistant (Accounts Payable)', 1),
(127, 'Accounting Assistant (Collection)', 1),
(128, 'Accounting Assistant (Accounts Payable)', 1),
(129, 'Accounting Assistant (Billing)', 1),
(130, 'Accounting', 1),
(131, 'Accounting Assistant (Accounts Payable)', 1),
(132, 'Purchasing Manager', 1),
(133, 'Purchasing Supervisor', 1),
(134, 'Purchasing Staff', 1),
(135, 'Purchasing Officer', 1),
(136, 'Helper', 1),
(137, 'Inventory and Control Assistant', 1),
(138, 'Admin & Facilities Manager', 1),
(139, 'Admin Assistant', 1),
(140, 'Maintenance Staff', 1),
(141, 'Driver', 1),
(142, 'Multiskilled Worker', 1),
(143, 'Aircon Technician', 1),
(144, 'Logistics Supervisor', 1),
(145, 'Logistics Dispatcher', 1),
(146, 'Total Quality Manager', 1),
(147, 'Total Quality Supervisor', 1),
(148, 'Customer Service Supervisor', 1),
(149, 'Customer Service Representative', 1),
(150, 'Total Quality Staff', 1),
(151, 'ICT Manager', 1),
(152, 'ICT Infrastructure Supervisor', 1),
(153, 'Information Systems Development Supervisor', 1),
(154, 'Jr. Network Administrator', 1),
(155, 'Jr. Service Desk Support Engr.', 1),
(156, 'Jr. Service Desk Analyst', 1),
(157, 'Jr. System Developer', 1),
(158, 'Jr. Helpdesk Analyst', 1),
(159, 'Jr. System Administrator', 1),
(160, 'Jr. End User Computing Specialist', 1),
(161, 'HR Supervisor', 1),
(162, 'Comp and Ben Officer', 1),
(163, 'Comp and Ben Staff', 1),
(164, 'HR Recruitment Staff', 1),
(165, 'HR Admin Staff', 1),
(166, 'Senior Area Sales Supervisor', 1),
(167, 'Sales Executive', 1),
(168, 'Area Sales Supervisor (South)', 1),
(169, 'National Key Account Sales Supervisor', 1),
(170, 'Sales Admin Asssistant', 1),
(171, 'HMO Coordinator', 1),
(172, 'Sales and Marketing Executive', 1),
(173, 'National Sales Manager', 1),
(174, 'Marketing Specialist', 1),
(175, 'Area Operations Manager (South)', 1),
(176, 'Area Operations Manager (North)', 1),
(177, 'Molecular Laboratory Scientist', 1),
(178, 'Building and Admin Officer', 1);

-- --------------------------------------------------------

--
-- Table structure for table `er_schedules`
--

CREATE TABLE `er_schedules` (
  `id` int(11) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  `time_in` time DEFAULT NULL,
  `time_out` time DEFAULT NULL,
  `ndiff` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `working_days` int(11) DEFAULT NULL,
  `s_trigger` int(11) DEFAULT NULL,
  `approver1` varchar(100) DEFAULT NULL,
  `approver2` varchar(100) DEFAULT NULL,
  `proxyapprover1` varchar(100) DEFAULT NULL,
  `proxyapprover2` varchar(100) DEFAULT NULL,
  `emp_id` varchar(100) DEFAULT NULL,
  `dateFrom` varchar(100) DEFAULT NULL,
  `dateTo` varchar(100) DEFAULT NULL,
  `grace_period` int(11) DEFAULT 5
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `er_schedules`
--

INSERT INTO `er_schedules` (`id`, `description`, `time_in`, `time_out`, `ndiff`, `company_id`, `working_days`, `s_trigger`, `approver1`, `approver2`, `proxyapprover1`, `proxyapprover2`, `emp_id`, `dateFrom`, `dateTo`, `grace_period`) VALUES
(193, 'Monday, Tuesday, Wednesday, Thursday, Friday', '08:00:00', '17:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(194, 'Monday, Tuesday, Wednesday, Thursday, Friday', '08:00:00', '17:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(195, 'Monday, Tuesday, Wednesday, Thursday, Friday', '07:00:00', '16:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(196, 'Monday, Tuesday, Wednesday, Thursday, Friday, Saturday', '08:00:00', '17:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(197, 'Monday, Tuesday, Wednesday, Thursday, Friday, Saturday', '04:00:00', '13:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(198, 'Monday, Tuesday, Wednesday, Thursday, Friday', '04:30:00', '14:30:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(199, 'Monday, Tuesday, Wednesday, Thursday, Friday', '05:00:00', '14:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(200, 'Monday, Tuesday, Wednesday, Thursday, Friday, Saturday', '09:00:00', '18:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(201, 'Monday, Tuesday, Wednesday, Friday, Saturday', '06:00:00', '15:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(202, 'Monday, Tuesday, Wednesday, Thursday, Friday', '06:30:00', '15:30:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(203, 'Monday, Tuesday, Wednesday, Saturday, Sunday', '08:00:00', '17:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(204, 'Tuesday, Wednesday, Thursday, Friday, Saturday', '06:00:00', '15:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(205, 'Monday, Tuesday, Friday, Saturday, Sunday', '08:00:00', '17:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(206, 'Tuesday, Wednesday, Friday, Saturday, Sunday', '05:30:00', '14:30:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(207, 'Sunday, Monday, Tuesday, Wednesday, Thursday', '05:30:00', '14:30:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(208, 'Monday, Wednesday, Thursday, Friday, Saturday', '05:00:00', '16:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(209, 'Tuesday, Thursday, Friday, Saturday, Sunday', '04:00:00', '13:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(210, 'Monday, Tuesday, Wednesday, Thursday, Friday', '06:00:00', '15:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(211, 'Monday, Thursday, Friday, Saturday, Sunday', '05:30:00', '14:30:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(212, 'Monday, Tuesday, Wednesday, Thursday, Friday', '09:00:00', '18:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(213, 'Monday, Tuesday, Wednesday, Thursday, Friday', '09:30:00', '18:30:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(214, 'Monday, Tuesday, Wednesday, Thursday, Friday', '07:00:00', '17:30:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(215, 'Monday, Tuesday, Wednesday, Thursday, Friday', '05:30:00', '16:30:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(216, 'Sunday, Monday, Tuesday, Wednesday, Thursday', '05:30:00', '16:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(217, 'Tuesday, Wednesday, Thursday, Friday, Saturday', '09:00:00', '19:30:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(218, 'Tuesday, Wednesday, Thursday, Friday, Saturday', '06:00:00', '16:30:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(219, 'Monday, Tuesday, Wednesday, Thursday, Friday', '06:00:00', '16:30:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(220, 'Tuesday, Wednesday, Thursday, Friday, Saturday', '09:00:00', '18:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(221, 'Monday, Tuesday, Wednesday, Friday, Sunday', '07:00:00', '16:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(222, 'Monday, Tuesday, Wednesday, Thursday, Saturday', '07:00:00', '16:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(223, 'Monday, Tuesday, Friday, Saturday, Sunday', '06:00:00', '15:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(224, 'Monday, Wednesday, Thursday, Saturday, Sunday', '08:00:00', '17:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(225, 'Monday, Tuesday, Thursday, Friday, Saturday', '07:00:00', '16:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(226, 'Monday, Tuesday, Wednesday, Saturday, Sunday', '06:00:00', '15:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(227, 'Wednesday, Thursday, Friday, Saturday, Sunday', '06:00:00', '15:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(228, 'Monday, Tuesday, Wednesday, Thursday, Saturday', '08:00:00', '17:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(229, 'Sunday, Monday, Tuesday, Wednesday, Thursday', '06:00:00', '15:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(230, 'Tuesday, Wednesday, Thursday, Friday, Saturday', '06:00:00', '15:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(231, 'Monday, Tuesday, Wednesday, Friday, Saturday', '06:00:00', '15:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(232, 'Monday, Thursday, Friday, Saturday, Sunday', '06:00:00', '15:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(233, 'Monday, Wednesday, Thursday, Friday, Saturday', '06:00:00', '15:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(234, 'Monday, Wednesday, Thursday, Saturday, Sunday', '06:00:00', '15:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(235, 'Monday, Tuesday, Thursday, Friday, Sunday', '06:00:00', '15:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(236, 'Wednesday, Thursday, Friday, Saturday, Sunday', '06:00:00', '15:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(237, 'Thursday, Friday, Saturday', '08:00:00', '17:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(238, 'Monday, Tuesday, Wednesday, Thursday, Friday', '04:30:00', '13:30:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(239, 'Tuesday, Wednesday, Thursday, Friday, Saturday', '07:00:00', '16:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(240, 'Monday, Tuesday, Wednesday, Thursday, Friday', '11:00:00', '20:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(241, 'Monday, Tuesday, Wednesday, Thursday, Saturday', '06:00:00', '15:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(242, 'Tuesday, Wednesday, Thursday, Friday, Sunday', '06:00:00', '15:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(243, 'Monday, Tuesday, Wednesday, Thursday, Friday', '06:00:00', '12:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(244, 'Tuesday, Thursday, Friday, Saturday, Sunday', '06:00:00', '15:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(245, 'Monday, Tuesday, Thursday, Friday', '05:30:00', '14:30:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(246, 'Monday, Tuesday, Thursday, Friday, Saturday', '05:30:00', '14:30:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(247, 'Tuesday, Wednesday, Thursday, Friday', '06:00:00', '15:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(248, 'Monday, Tuesday, Thursday, Friday', '05:30:00', '14:30:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(249, 'Tuesday, Wednesday, Thursday, Friday, Saturday', '07:00:00', '16:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(250, 'Monday, Tuesday, Wednesday, Friday', '08:00:00', '17:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(251, 'Monday, Tuesday, Wednesday, Thursday, Friday', '05:30:00', '14:30:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(252, 'Monday, Tuesday, Wednesday, Thursday, Friday', '03:30:00', '12:30:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(253, 'Monday, Wednesday, Thursday, Friday', '09:00:00', '18:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(254, 'Monday, Tuesday, Wednesday, Sunday', '06:00:00', '15:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(255, 'Monday, Tuesday, Thursday, Friday', '08:00:00', '17:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(256, 'Monday, Wednesday, Thursday, Saturday, Sunday', '06:00:00', '15:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(257, 'Monday, Tuesday, Wednesday, Thursday, Friday', '08:00:00', '14:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(258, 'Monday, Tuesday, Wednesday, Friday, Saturday', '10:00:00', '19:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(259, 'Sunday, Monday, Tuesday, Wednesday, Thursday', '06:00:00', '15:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(260, 'Monday, Thursday, Friday, Saturday, Sunday', '11:00:00', '20:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(261, 'Sunday, Monday, Tuesday, Wednesday, Thursday', '09:00:00', '18:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(262, 'Monday, Wednesday, Thursday, Friday, Saturday', '09:00:00', '18:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(263, 'Tuesday, Wednesday, Friday, Saturday', '10:00:00', '19:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(264, 'Tuesday, Wednesday, Thursday, Friday, Saturday', '11:00:00', '20:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(265, 'Monday, Tuesday, Wednesday, Saturday, Sunday', '10:00:00', '19:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(266, 'Monday, Tuesday, Friday', '09:00:00', '18:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(267, 'Sunday, Monday, Tuesday, Wednesday, Thursday', '08:00:00', '17:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(268, 'Wednesday, Thursday, Friday, Saturday, Sunday', '09:00:00', '18:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(269, 'Monday, Thursday, Friday, Saturday, Sunday', '08:00:00', '17:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(270, 'Monday, Thursday, Friday, Saturday, Sunday', '06:00:00', '15:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(271, 'Monday, Tuesday, Wednesday, Thursday, Friday', '12:00:00', '21:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(272, 'Tuesday, Wednesday, Thursday, Friday, Saturday', '08:00:00', '17:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(273, 'Monday, Thursday, Friday, Saturday, Sunday', '08:00:00', '17:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(274, 'Monday, Tuesday, Thursday, Friday, Saturday', '08:00:00', '17:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(275, 'Monday, Tuesday, Wednesday, Friday, Sunday', '08:00:00', '17:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(276, 'Tuesday, Wednesday, Thursday, Saturday, Sunday', '06:00:00', '15:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(277, 'Monday, Tuesday, Wednesday, Thursday, Friday', '09:00:00', '20:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(278, 'Monday, Tuesday, Wednesday, Friday, Saturday', '08:00:00', '17:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(279, 'Monday, Tuesday, Wednesday, Friday, Saturday', '08:30:00', '17:30:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(280, 'Monday, Tuesday, Wednesday, Thursday, Friday', '04:00:00', '13:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(281, 'Tuesday, Thursday, Friday, Saturday, Sunday', '08:00:00', '17:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(282, 'Monday, Wednesday, Thursday, Friday, Saturday', '08:00:00', '17:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(283, 'Monday, Wednesday, Friday, Saturday, Sunday', '06:00:00', '15:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(284, 'Monday, Tuesday, Wednesday, Friday, Saturday', '09:00:00', '18:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(285, 'Monday, Wednesday, Friday, Saturday, Sunday', '09:00:00', '18:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(286, 'Monday, Tuesday, Thursday, Saturday, Sunday', '06:00:00', '15:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(287, 'Monday, Tuesday, Thursday, Friday, Saturday', '06:00:00', '15:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(288, 'Monday, Tuesday, Wednesday, Friday, Sunday', '06:00:00', '15:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(289, 'Monday, Tuesday, Wednesday, Thursday, Saturday', '07:00:00', '16:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(290, 'Monday, Tuesday, Wednesday, Friday, Saturday', '07:00:00', '18:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(291, 'Monday, Wednesday, Thursday, Saturday, Sunday', '07:00:00', '16:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(292, 'Monday, Tuesday, Thursday, Saturday, Sunday', '07:00:00', '16:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(293, 'Monday, Wednesday, Thursday, Friday, Sunday', '07:00:00', '18:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(294, 'Wednesday, Thursday, Friday, Saturday, Sunday', '07:00:00', '16:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(295, 'Tuesday, Wednesday, Thursday, Friday, Saturday', '08:00:00', '17:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(296, 'Monday, Tuesday, Thursday, Friday, Saturday', '07:00:00', '16:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(297, 'Monday, Wednesday, Thursday, Friday, Saturday', '06:00:00', '15:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(298, 'Monday, Tuesday, Wednesday, Friday, Saturday', '06:00:00', '15:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(299, 'Tuesday, Wednesday, Friday, Saturday, Sunday', '06:00:00', '15:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(300, 'Monday, Tuesday, Friday, Saturday, Sunday', '07:00:00', '18:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(301, 'Wednesday, Thursday, Friday, Saturday, Sunday', '08:00:00', '17:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(302, 'Tuesday, Thursday, Friday, Saturday, Sunday', '06:00:00', '15:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(303, 'Tuesday, Wednesday, Thursday, Saturday, Sunday', '07:00:00', '16:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(304, 'Monday, Wednesday, Thursday, Friday, Sunday', '06:00:00', '15:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(305, 'Monday, Tuesday, Wednesday, Thursday, Friday, Saturday', '07:00:00', '16:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5),
(306, 'Monday, Tuesday, Wednesday, Friday, Saturday', '07:00:00', '16:00:00', 0, 1, 0, 0, '', '', '', '', '', '', '', 5);

-- --------------------------------------------------------

--
-- Table structure for table `er_siteassignment`
--

CREATE TABLE `er_siteassignment` (
  `id` int(11) NOT NULL,
  `description` varchar(100) NOT NULL,
  `company_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `er_siteassignment`
--

INSERT INTO `er_siteassignment` (`id`, `description`, `company_id`) VALUES
(1, 'Onsite', 1),
(2, 'INsite', 1),
(3, 'Test', 1);

-- --------------------------------------------------------

--
-- Table structure for table `er_supervisor`
--

CREATE TABLE `er_supervisor` (
  `id` int(11) NOT NULL,
  `employee_id` varchar(15) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `er_supervisor`
--

INSERT INTO `er_supervisor` (`id`, `employee_id`, `name`, `company_id`) VALUES
(23, '320', 'Miclat Melisa Vergabera', 1),
(24, '266', 'Dela Peña Jenny Tongol', 1),
(25, '3843', 'Bolima Margie Ayala', 1),
(26, '2246', 'Valdez Joy Fernandez', 1),
(27, '3441', 'Mamis Clarissa De Venecia', 1),
(28, '2388', 'Garcia Lani Dacones', 1),
(29, '3691', 'Yap Karen Oshin Cabigas', 1),
(30, '3777', 'Aldana Lara Aira Malibiran', 1),
(31, '597', 'Viajar Jelly Lane Reli', 1),
(32, '3822', 'Villacrucis Jr. Rodrigo Mondala', 1),
(33, '2364', 'Te Syril Alyssa Pasia', 1),
(34, '1052', 'Sales Roselle Angulo', 1),
(35, '3536', 'Ucol Kathleen May Gonzales', 1),
(36, '2264', 'Malicia Edmar John Galera', 1),
(37, '3538', 'Ortiz Reggie Blanza', 1),
(38, '437', 'Suba Jennifer Tormes', 1),
(39, '963', 'Joven Cristina Fulleros', 1),
(40, '3653', 'Stella Aries Tynne Pasion', 1),
(41, '51', 'Ng Annabelle Lim', 1),
(42, '601', 'Crisostomo Rachelle Acera', 1),
(43, '173', 'Lazaro Maria Lourdes Bonado', 1),
(44, '2274', 'Alvarado Jemalyn Bernardo', 1),
(45, '3463', 'Miranda Grace Borja', 1),
(46, '56', 'Sulit Norilyn Plata', 1),
(47, '93', 'Antay Eujeann Parucha', 1),
(48, '2231', 'Mangonon Francis Marconi Aquino', 1),
(49, '3880', 'Sardinia Debbie Ann Pinto', 1),
(50, '688', 'Lorico Isah Ray Enrico', 1),
(51, '3713', 'Navarro Rex Santos', 1),
(52, '1040', 'Ninobla Rowena Delmo', 1),
(53, '1014', 'De Jesus Nixon Tiongco', 1),
(54, '131', 'Dulin Constante Dalafu', 1),
(55, '467', 'De Guzman Rachel Mendoza', 1),
(56, '2329', 'Magsino John Marvin Lalu', 1),
(57, '3828', 'Dichoso Jeremiah Jane Barnes', 1),
(58, '194', 'Sibal Julius Guinto', 1),
(59, '418', 'Dela Cruz Ronald Rhey Del Castillo', 1),
(60, '320', 'Miclat Melisa Vergabera', 1),
(61, '266', 'Dela Peña Jenny Tongol', 1),
(62, '3843', 'Bolima Margie Ayala', 1),
(63, '2246', 'Valdez Joy Fernandez', 1),
(64, '3441', 'Mamis Clarissa De Venecia', 1),
(65, '2388', 'Garcia Lani Dacones', 1),
(66, '3691', 'Yap Karen Oshin Cabigas', 1),
(67, '3777', 'Aldana Lara Aira Malibiran', 1),
(68, '597', 'Viajar Jelly Lane Reli', 1),
(69, '3822', 'Villacrucis Jr. Rodrigo Mondala', 1),
(70, '2364', 'Te Syril Alyssa Pasia', 1),
(71, '1052', 'Sales Roselle Angulo', 1),
(72, '3536', 'Ucol Kathleen May Gonzales', 1),
(73, '2264', 'Malicia Edmar John Galera', 1),
(74, '3538', 'Ortiz Reggie Blanza', 1),
(75, '437', 'Suba Jennifer Tormes', 1),
(76, '963', 'Joven Cristina Fulleros', 1),
(77, '3653', 'Stella Aries Tynne Pasion', 1),
(78, '51', 'Ng Annabelle Lim', 1),
(79, '601', 'Crisostomo Rachelle Acera', 1),
(80, '173', 'Lazaro Maria Lourdes Bonado', 1),
(81, '2274', 'Alvarado Jemalyn Bernardo', 1),
(82, '3463', 'Miranda Grace Borja', 1),
(83, '56', 'Sulit Norilyn Plata', 1),
(84, '93', 'Antay Eujeann Parucha', 1),
(85, '2231', 'Mangonon Francis Marconi Aquino', 1),
(86, '3880', 'Sardinia Debbie Ann Pinto', 1),
(87, '688', 'Lorico Isah Ray Enrico', 1),
(88, '3713', 'Navarro Rex Santos', 1),
(89, '1040', 'Ninobla Rowena Delmo', 1),
(90, '1014', 'De Jesus Nixon Tiongco', 1),
(91, '131', 'Dulin Constante Dalafu', 1),
(92, '467', 'De Guzman Rachel Mendoza', 1),
(93, '2329', 'Magsino John Marvin Lalu', 1),
(94, '3828', 'Dichoso Jeremiah Jane Barnes', 1),
(95, '194', 'Sibal Julius Guinto', 1),
(96, '418', 'Dela Cruz Ronald Rhey Del Castillo', 1);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `employee_id` varchar(15) NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `created_on` date NOT NULL,
  `status` varchar(100) NOT NULL DEFAULT '0',
  `company_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `employee_id`, `start`, `end`, `created_on`, `status`, `company_id`) VALUES
(3, 'Labor Day', 'System', '2024-05-01 00:00:00', '2024-05-01 23:59:59', '2024-04-15', '', 1),
(4, 'New Years Day', 'System', '2024-01-01 00:00:00', '2024-01-01 23:59:59', '2024-06-27', '', 1),
(5, 'Maundy Thursday', 'System', '2024-03-28 00:00:00', '2024-03-28 23:59:59', '2024-06-27', '', 1),
(6, 'Good Friday', 'System', '2024-03-29 00:00:00', '2024-03-29 23:59:59', '2024-06-27', '', 1),
(7, 'Araw ng Kagitingan', 'System', '2024-04-09 00:00:00', '2024-04-09 23:59:59', '2024-06-27', '', 1),
(8, 'Eid Fitr', 'System', '2024-04-10 00:00:00', '2024-04-10 23:59:59', '2024-06-27', '', 1),
(9, 'Independence Day', 'System', '2024-06-12 00:00:00', '2024-06-12 23:59:59', '2024-06-27', '', 1),
(10, 'Eid Adha', 'System', '2024-06-17 00:00:00', '2024-06-17 23:59:59', '2024-06-27', '', 1),
(11, 'National Heroes Day', 'System', '2024-08-26 00:00:00', '2024-08-26 23:59:59', '2024-06-27', '', 1),
(12, 'Bonifacio Day', 'System', '2024-11-30 00:00:00', '2024-11-30 23:59:59', '2024-06-27', '', 1),
(13, 'Christmas Day', 'System', '2024-12-25 00:00:00', '2024-12-25 23:59:59', '2024-06-27', '', 1),
(14, 'Rizal Day', 'System', '2024-12-30 00:00:00', '2024-12-30 23:59:59', '2024-06-27', '', 1),
(15, 'Ninoy Aquino Day', 'System', '2024-08-21 00:00:00', '2024-08-21 23:59:59', '2024-06-27', '', 1),
(16, 'All Saints Day', 'System', '2024-11-01 00:00:00', '2024-11-01 23:59:59', '2024-06-27', '', 1),
(17, 'Feast of the Immaculate Conception', 'System', '2024-12-08 00:00:00', '2024-12-08 23:59:59', '2024-06-27', '', 1),
(18, 'Last Day of the Year', 'System', '2024-12-31 00:00:00', '2024-12-31 23:59:59', '2024-06-27', '', 1),
(19, 'Chines New Year', 'System', '2024-02-09 00:00:00', '2024-02-09 23:59:59', '2024-06-27', '', 1),
(20, 'Black Saturday', 'System', '2024-03-30 00:00:00', '2024-03-30 23:59:59', '2024-06-27', '', 1),
(21, 'All Souls Day', 'System', '2024-11-02 00:00:00', '2024-11-02 23:59:59', '2024-06-27', '', 1),
(22, 'Christmas Eve', 'System', '2024-12-24 00:00:00', '2024-12-24 23:59:59', '2024-06-27', '', 1),
(23, 'Time-In : 02:29 PM', '4C-0009', '2024-07-11 14:29:00', '2024-07-11 00:00:00', '2024-07-11', '', 1),
(24, 'Time-In : 14:29:03', '4C-0009', '2024-08-02 21:17:18', '2024-08-02 21:17:18', '2024-08-02', 'Edit', 1),
(25, 'Time-Out : 00:00:00', '4C-0009', '2024-08-02 21:17:18', '2024-08-02 21:17:18', '2024-08-02', 'Edit', 1),
(26, 'test', 'System', '2024-08-03 00:00:00', '2024-08-03 23:59:59', '2024-08-03', '', 1),
(27, 'Time-In : 12:22 PM', 'system_admin', '2024-12-10 12:22:00', '2024-12-10 00:00:00', '2024-12-10', '', 1),
(28, 'Time-Out : 03:39 PM', 'system_admin', '2024-12-10 15:39:00', '2024-12-10 15:39:00', '2024-12-10', '', 1),
(35, 'Time-In : 03:08 PM', '1102', '2024-12-12 15:08:00', '2024-12-12 00:00:00', '2024-12-12', '', 1),
(36, 'Time-Out : 03:12 PM', '1102', '2024-12-12 15:12:00', '2024-12-12 15:12:00', '2024-12-12', '', 1),
(37, 'Time-In : 03:26 PM', 'hr_admin', '2024-12-12 15:26:00', '2024-12-12 00:00:00', '2024-12-12', '', 1),
(38, 'Time-Out : 03:26 PM', 'hr_admin', '2024-12-12 15:26:00', '2024-12-12 15:26:00', '2024-12-12', '', 1),
(41, 'Time-In : 06:10 PM', 'system_admin', '2024-12-12 18:10:00', '2024-12-12 00:00:00', '2024-12-12', '', 1),
(42, 'Time-Out : 06:10 PM', 'system_admin', '2024-12-12 18:10:00', '2024-12-12 18:10:00', '2024-12-12', '', 1),
(43, 'Time-In : 08:40 AM', 'hr_admin', '2024-12-13 08:40:00', '2024-12-13 00:00:00', '2024-12-13', '', 1),
(44, 'Time-Out : 08:41 AM', 'hr_admin', '2024-12-13 08:41:00', '2024-12-13 08:41:00', '2024-12-13', '', 1),
(45, 'Time-In : 08:56 AM', 'system_admin', '2024-12-13 08:56:00', '2024-12-13 00:00:00', '2024-12-13', '', 1),
(46, 'Time-Out : 08:56 AM', 'system_admin', '2024-12-13 08:56:00', '2024-12-13 08:56:00', '2024-12-13', '', 1),
(47, 'Time In', '4C-0009', '2024-12-03 08:45:00', '2024-12-03 08:45:00', '2024-12-13', 'Active', 1),
(48, 'Time Out', '4C-0009', '2024-12-03 08:45:00', '2024-12-03 08:45:00', '2024-12-13', 'Active', 1),
(57, 'Time-In : 10:59 AM', 'system_admin', '2024-12-19 10:59:00', '2024-12-19 00:00:00', '2024-12-19', '0', 1),
(58, 'Time-Out : 10:59 AM', 'system_admin', '2024-12-19 10:59:00', '2024-12-19 10:59:00', '2024-12-19', '0', 1),
(59, 'TT', 'System', '2024-12-19 00:00:00', '2024-12-19 23:59:59', '2024-12-19', '0', 1),
(60, 'Time-In : 11:09 AM', 'hr_admin', '2024-12-19 11:09:00', '2024-12-19 00:00:00', '2024-12-19', '0', 1),
(61, 'Time-Out : 11:09 AM', 'hr_admin', '2024-12-19 11:09:00', '2024-12-19 11:09:00', '2024-12-19', '0', 1),
(62, 'Time-Out : 11:12 AM', 'hr_admin', '2024-12-19 11:12:00', '2024-12-19 11:12:00', '2024-12-19', '0', 1),
(63, 'Time In', '30517', '2024-12-01 11:45:00', '2024-12-01 11:45:00', '2024-12-18', 'Active', 1),
(64, 'Time Out', '30517', '2024-12-01 11:45:00', '2024-12-01 11:45:00', '2024-12-18', 'Active', 1),
(65, 'Time In', 'supervisor', '2024-12-01 02:45:00', '2024-12-01 02:45:00', '2024-12-18', 'Active', 1),
(66, 'Time Out', 'supervisor', '2024-12-02 11:45:00', '2024-12-02 11:45:00', '2024-12-18', 'Active', 1),
(67, 'Time In', '31217', '2024-12-10 12:15:00', '2024-12-10 12:15:00', '2024-12-18', 'Active', 1),
(68, 'Time Out', '31217', '2024-12-11 12:15:00', '2024-12-11 12:15:00', '2024-12-18', 'Active', 1),
(69, 'Time In', '4C-0009', '2024-12-03 13:45:00', '2024-12-03 13:45:00', '2024-12-18', 'Active', 1),
(70, 'Time Out', '4C-0009', '2024-12-04 13:46:00', '2024-12-04 13:46:00', '2024-12-18', 'Active', 1),
(71, 'Time-In : 18:58:58', 'system_admin', '2024-12-18 20:57:27', '2024-12-18 20:57:27', '2024-12-18', 'Edit', 1),
(72, 'Time-Out : 12:00:00', 'system_admin', '2024-12-18 20:57:27', '2024-12-18 20:57:27', '2024-12-18', 'Edit', 1),
(73, 'Time-In : 11:09:37', 'hr_admin', '2024-12-18 21:13:28', '2024-12-18 21:13:28', '2024-12-18', 'Edit', 1),
(74, 'Time-Out : 11:12:36', 'hr_admin', '2024-12-18 21:13:28', '2024-12-18 21:13:28', '2024-12-18', 'Edit', 1),
(75, 'Time-In : 14:09:00', 'hr_admin', '2024-12-18 21:13:34', '2024-12-18 21:13:34', '2024-12-18', 'Edit', 1),
(76, 'Time-Out : 11:12:36', 'hr_admin', '2024-12-18 21:13:34', '2024-12-18 21:13:34', '2024-12-18', 'Edit', 1),
(77, 'Time-In : 03:39 PM', 'system_admin', '2024-12-19 15:39:00', '2024-12-19 00:00:00', '2024-12-19', '0', 1),
(78, 'Time-In : 01:12 AM', 'system_admin', '2024-12-20 01:12:00', '2024-12-20 00:00:00', '2024-12-20', '0', 1),
(79, 'Time-Out : 01:13 AM', 'system_admin', '2024-12-20 01:13:00', '2024-12-20 01:13:00', '2024-12-20', '0', 1),
(80, 'MED Holiday', 'System', '2024-12-21 00:00:00', '2024-12-21 23:59:59', '2024-12-20', '0', 1),
(82, 'Time-In : 02:37 PM', 'hr_admin', '2024-12-20 14:37:00', '2024-12-20 00:00:00', '2024-12-20', '0', 1),
(83, 'Time-Out : 03:18 PM', 'system_admin', '2024-12-20 15:18:00', '2024-12-20 15:18:00', '2024-12-20', '0', 1),
(84, 'ad', 'System', '0002-12-12 00:00:00', '0002-12-12 23:59:59', '2024-12-20', '0', 1),
(88, 'Time-In : 04:30 PM', 'system_admin', '2024-12-23 16:30:00', '2024-12-23 00:00:00', '2024-12-23', '0', 1),
(89, 'Time-In : 03:56 PM', 'system_admin', '2025-02-06 15:56:00', '2025-02-06 00:00:00', '2025-02-06', '0', 1),
(90, 'Time-Out : 03:57 PM', 'system_admin', '2025-02-06 15:57:00', '2025-02-06 15:57:00', '2025-02-06', '0', 1),
(91, 'tt', 'System', '2024-01-01 00:00:00', '2024-01-01 23:59:59', '2025-02-08', '0', 1),
(92, '1', 'System', '0023-03-12 00:00:00', '0023-03-12 23:59:59', '2025-02-08', '0', 1),
(93, 'Time-In : 08:02 AM', 'system_admin', '2025-02-10 08:02:00', '2025-02-10 00:00:00', '2025-02-10', '0', 1),
(94, 'Time-Out : 08:02 AM', 'system_admin', '2025-02-10 08:02:00', '2025-02-10 08:02:00', '2025-02-10', '0', 1),
(95, 'Time In', '4C-0009', '2025-02-01 08:00:00', '2025-02-01 08:00:00', '2025-02-10', 'Active', 1),
(96, 'Time Out', '4C-0009', '2025-02-01 08:00:00', '2025-02-01 08:00:00', '2025-02-10', 'Active', 1),
(97, 'Time In', '11512', '2025-02-20 08:00:00', '2025-02-20 08:00:00', '2025-02-10', 'Active', 1),
(98, 'Time Out', '11512', '2025-02-11 08:00:00', '2025-02-11 08:00:00', '2025-02-10', 'Active', 1),
(99, 'Time In', '30517', '2025-02-08 08:00:00', '2025-02-08 08:00:00', '2025-02-10', 'Active', 1),
(100, 'Time Out', '30517', '2025-02-07 08:00:00', '2025-02-07 08:00:00', '2025-02-10', 'Active', 1),
(101, 'Time-In : 10:49 AM', 'system_admin', '2025-02-18 10:49:00', '2025-02-18 00:00:00', '2025-02-18', '0', 1),
(102, 'Time-Out : 10:49 AM', 'system_admin', '2025-02-18 10:49:00', '2025-02-18 10:49:00', '2025-02-18', '0', 1),
(103, 'Time-Out : 10:49 AM', 'system_admin', '2025-02-18 10:49:00', '2025-02-18 10:49:00', '2025-02-18', '0', 1),
(104, 'Time-Out : 10:49 AM', 'system_admin', '2025-02-18 10:49:00', '2025-02-18 10:49:00', '2025-02-18', '0', 1),
(105, 'Time-Out : 10:50 AM', 'system_admin', '2025-02-18 10:50:00', '2025-02-18 10:50:00', '2025-02-18', '0', 1),
(113, 'Time-Out : 11:03 AM', 'system_admin', '2025-02-18 11:03:00', '2025-02-18 11:03:00', '2025-02-18', '0', 1),
(114, 'Time In', '15412', '2025-02-01 15:15:00', '2025-02-01 15:15:00', '2025-02-20', 'Active', 1),
(115, 'Time Out', '15412', '2025-02-01 16:15:00', '2025-02-01 16:15:00', '2025-02-20', 'Active', 1),
(116, 'Time-In : 08:00:00', '11512', '2025-02-20 08:34:05', '2025-02-20 08:34:05', '2025-02-20', 'Edit', 1),
(117, 'Time-Out : 08:00:00', '11512', '2025-02-20 08:34:05', '2025-02-20 08:34:05', '2025-02-20', 'Edit', 1),
(118, 'Time-In : 10:45:28', 'system_admin', '2025-02-20 08:34:12', '2025-02-20 08:34:12', '2025-02-20', 'Edit', 1),
(119, 'Time-Out : 11:03:53', 'system_admin', '2025-02-20 08:34:12', '2025-02-20 08:34:12', '2025-02-20', 'Edit', 1),
(120, 'Time In', '11512', '2025-02-01 15:30:00', '2025-02-01 15:30:00', '2025-02-20', 'Active', 1),
(121, 'Time Out', '11512', '2025-02-02 15:30:00', '2025-02-02 15:30:00', '2025-02-20', 'Active', 1),
(122, 'Time In', '14012', '2025-02-01 15:30:00', '2025-02-01 15:30:00', '2025-02-20', 'Active', 1),
(123, 'Time Out', '14012', '2025-02-03 15:30:00', '2025-02-03 15:30:00', '2025-02-20', 'Active', 1),
(124, 'Time In', '14312', '2025-02-08 15:30:00', '2025-02-08 15:30:00', '2025-02-20', 'Active', 1),
(125, 'Time Out', '14312', '2025-02-09 15:30:00', '2025-02-09 15:30:00', '2025-02-20', 'Active', 1),
(126, 'Time-In : 08:00:00', '11512', '2025-02-20 09:08:03', '2025-02-20 09:08:03', '2025-02-20', 'Edit', 1),
(127, 'Time-Out : 08:50:00', '11512', '2025-02-20 09:08:03', '2025-02-20 09:08:03', '2025-02-20', 'Edit', 1),
(128, 'Time-In : 08:57 AM', 'system_admin', '2025-03-04 08:57:00', '2025-03-04 00:00:00', '2025-03-04', '0', 1),
(145, 'Time-In : 10:40 AM', 'hr_admin', '2025-03-04 10:40:00', '2025-03-04 00:00:00', '2025-03-04', '0', 1),
(146, 'Time-In : 08:58 PM', 'hr_admin', '2025-03-08 20:58:00', '2025-03-08 00:00:00', '2025-03-08', '0', 1),
(148, 'Time-In : 08:56 PM', 'system_admin', '2025-03-09 20:56:00', '2025-03-09 00:00:00', '2025-03-09', '0', 1),
(149, 'Time-In : 09:47 AM', 'system_admin', '2025-03-15 09:47:00', '2025-03-15 00:00:00', '2025-03-15', '0', 1),
(150, 'Time-Out : 06:15 PM', 'system_admin', '2025-03-15 18:15:00', '2025-03-15 18:15:00', '2025-03-15', '0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `holiday`
--

CREATE TABLE `holiday` (
  `id` int(11) NOT NULL,
  `description` varchar(100) NOT NULL,
  `holiday_date` date NOT NULL,
  `holiday_day` varchar(100) NOT NULL,
  `holid` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `holiday`
--

INSERT INTO `holiday` (`id`, `description`, `holiday_date`, `holiday_day`, `holid`, `company_id`, `branch_id`) VALUES
(1, 'Labor Day', '2025-05-01', '1', 1, 1, 1),
(2, 'New Years Day', '2025-01-01', '1', 1, 1, 1),
(3, 'Maundy Thursday', '2025-03-28', '28', 1, 1, 1),
(4, 'Good Friday', '2025-03-29', '29', 1, 1, 1),
(5, 'Araw ng Kagitingan', '2025-04-09', '9', 1, 1, 1),
(6, 'Eid Fitr', '2025-04-10', '10', 1, 1, 1),
(7, 'Independence Day', '2025-06-12', '12', 1, 1, 1),
(8, 'Eid Adha', '2025-06-17', '17', 1, 1, 1),
(9, 'National Heroes Day', '2025-08-26', '26', 1, 1, 1),
(10, 'Bonifacio Day', '2025-11-30', '30', 1, 1, 1),
(11, 'Christmas Day', '2025-12-25', '25', 1, 1, 1),
(12, 'Rizal Day', '2025-12-30', '30', 1, 1, 1),
(13, 'Ninoy Aquino Day', '2025-08-21', '21', 2, 1, 1),
(14, 'All Saints Day', '2025-11-01', '1', 1, 1, 1),
(15, 'Feast of the Immaculate Conception', '2025-12-08', '8', 1, 1, 1),
(16, 'Last Day of the Year', '2025-12-31', '31', 1, 1, 1),
(17, 'Chines New Year', '2025-02-09', '9', 2, 1, 1),
(18, 'Black Saturday', '2025-03-30', '30', 1, 1, 1),
(19, 'All Souls Day', '2025-11-02', '2', 1, 1, 1),
(20, 'Christmas Eve', '2025-12-24', '24', 1, 1, 1),
(21, 'TT', '2025-12-19', '19', 1, 1, 1),
(22, 'MED Holiday', '2025-12-21', '21', 1, 1, 1),
(24, 'tt', '2025-05-02', '2', 1, 1, 0),
(25, '1', '2025-05-02', '2', 2, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `lm_assigned_leaves`
--

CREATE TABLE `lm_assigned_leaves` (
  `id` int(11) NOT NULL,
  `employee_id` varchar(15) DEFAULT NULL,
  `lt_id` int(11) DEFAULT NULL,
  `ltype` varchar(100) DEFAULT NULL,
  `credit` double DEFAULT NULL,
  `default_value` double DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lm_assigned_leaves`
--

INSERT INTO `lm_assigned_leaves` (`id`, `employee_id`, `lt_id`, `ltype`, `credit`, `default_value`, `status`, `company_id`) VALUES
(272, 'John Smith', 1, 'Personal Leave', 2, 0, 'Pending', 1),
(273, 'Andrea Joyce Da', 2, 'Vacation Leave', 1, 0, 'Pending', 1),
(274, 'Ailyn Fernandez', 2, 'Vacation Leave', 1, 0, 'Pending', 1),
(275, 'Criselda Acosta', 2, 'Vacation Leave', 1, 0, 'Pending', 1),
(276, 'Amira Bautista', 2, 'Vacation Leave', 2, 0, 'Pending', 1),
(277, 'Pauline Jimenez', 2, 'Vacation Leave', 2, 0, 'Pending', 1),
(278, 'Diana Jean Enci', 3, 'Leave w/o Pay', 16, 0, 'Pending', 1),
(279, 'Mary Samantha M', 3, 'Leave w/o Pay', 15, 0, 'Pending', 1);

-- --------------------------------------------------------

--
-- Table structure for table `lm_earned_leaves`
--

CREATE TABLE `lm_earned_leaves` (
  `id` int(11) NOT NULL,
  `uinput` double NOT NULL,
  `accumulated_points` double NOT NULL,
  `january` date NOT NULL,
  `february` date NOT NULL,
  `march` date NOT NULL,
  `april` date NOT NULL,
  `may` date NOT NULL,
  `june` date NOT NULL,
  `july` date NOT NULL,
  `august` date NOT NULL,
  `september` date NOT NULL,
  `october` date NOT NULL,
  `november` date NOT NULL,
  `december` date NOT NULL,
  `status` varchar(50) NOT NULL,
  `forfeit_date` datetime NOT NULL,
  `lttypes` varchar(100) NOT NULL,
  `company_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lm_leavetype`
--

CREATE TABLE `lm_leavetype` (
  `id` int(11) NOT NULL,
  `description` varchar(100) NOT NULL,
  `days` int(11) NOT NULL,
  `epoints` double NOT NULL,
  `default_value` double NOT NULL,
  `status_reg` int(11) NOT NULL,
  `status_prob` int(11) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `counter` int(11) NOT NULL DEFAULT 0,
  `company_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lm_leavetype`
--

INSERT INTO `lm_leavetype` (`id`, `description`, `days`, `epoints`, `default_value`, `status_reg`, `status_prob`, `gender`, `counter`, `company_id`) VALUES
(1, 'Vacation Leave', 30, 24, 24, 1, 0, 'Both', 141, 1),
(2, 'Personal Leave', 15, 2, 2, 1, 0, 'Both', 270, 1),
(3, 'Break', 1, 0, 0, 1, 2, 'Both', 1, 1),
(4, 't', 1, 0, 0, 1, 2, 'Male', 0, 1),
(5, 'Paternity Leave', 7, 0, 0, 1, 1, 'All', 0, 1),
(6, 'Maternity Leave', 105, 0, 0, 1, 1, 'All', 0, 1),
(7, 'Victims of Violence Against Women and Their Children (VAWC) Leave', 10, 0, 0, 1, 1, 'All', 0, 1),
(8, 'Parental Leave for Solo Parents', 7, 0, 0, 1, 1, 'All', 0, 1),
(9, 'Special Leave Benefit for Women', 60, 0, 0, 1, 1, 'All', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `logs_contacts`
--

CREATE TABLE `logs_contacts` (
  `id` int(11) NOT NULL,
  `employee_id` int(144) NOT NULL DEFAULT 0,
  `contact_type` varchar(50) DEFAULT NULL,
  `contact_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `contact_details` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `tel_num` varchar(20) DEFAULT NULL,
  `mobile_num` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `ecp` varchar(100) DEFAULT NULL,
  `etel` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `logs_contacts`
--

INSERT INTO `logs_contacts` (`id`, `employee_id`, `contact_type`, `contact_date`, `contact_details`, `created_at`, `updated_at`, `tel_num`, `mobile_num`, `email`, `ecp`, `etel`) VALUES
(6, 0, NULL, '2024-12-11 01:26:03', NULL, '2024-12-11 01:26:03', '2024-12-12 10:21:05', '  235325235', '12', 'sdfsg@mail.coms', '  ', '234123'),
(7, 0, NULL, '2024-12-12 10:20:30', NULL, '2024-12-12 10:20:30', '2024-12-12 10:20:30', ' ', ' 0', '', ' ', ' '),
(8, 0, NULL, '2024-12-12 10:20:50', NULL, '2024-12-12 10:20:50', '2024-12-12 10:20:50', ' ', ' 0', '', ' ', ' '),
(9, 0, NULL, '2024-12-12 10:21:47', NULL, '2024-12-12 10:21:47', '2024-12-12 10:21:47', '12323232232', '12242412421', '', ' 2324424', ' '),
(10, 4, NULL, '2024-12-13 07:33:12', NULL, '2024-12-13 07:33:12', '2024-12-13 07:33:22', '7753532423', '09616067037', 'rapha@4corners.com.ph', '', ''),
(11, 4, NULL, '2024-12-24 03:50:31', NULL, '2024-12-24 03:50:31', '2024-12-24 03:50:31', '09516320658', '09616067037', 'da@4corners.com.ph', '', '2231546'),
(12, 0, NULL, '2024-12-29 09:48:19', NULL, '2024-12-29 09:48:19', '2024-12-29 09:48:19', '12323232232', '12242412421', '', ' 2324424', ' ');

-- --------------------------------------------------------

--
-- Table structure for table `logs_schedule`
--

CREATE TABLE `logs_schedule` (
  `id` int(11) NOT NULL,
  `action` varchar(100) NOT NULL,
  `log_date` date NOT NULL,
  `employee_id` varchar(15) NOT NULL,
  `name` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `creation_date` date NOT NULL,
  `old_schedule` varchar(100) NOT NULL,
  `new_schedule` varchar(100) NOT NULL DEFAULT 'N.A.',
  `shift_id` int(11) NOT NULL,
  `reason` varchar(100) NOT NULL,
  `approver1` varchar(100) NOT NULL,
  `approver2` varchar(100) NOT NULL,
  `proxyapprover1` varchar(100) NOT NULL,
  `proxyapprover2` varchar(100) NOT NULL,
  `is_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `action_date` date NOT NULL,
  `action_time` time NOT NULL,
  `update_date` date NOT NULL,
  `update_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `logs_schedule`
--

INSERT INTO `logs_schedule` (`id`, `action`, `log_date`, `employee_id`, `name`, `status`, `creation_date`, `old_schedule`, `new_schedule`, `shift_id`, `reason`, `approver1`, `approver2`, `proxyapprover1`, `proxyapprover2`, `is_id`, `company_id`, `action_date`, `action_time`, `update_date`, `update_time`) VALUES
(1, 'Create', '2024-04-10', '4C-0009', 'Raphaela Matias', 'For Approval', '2024-04-10', 'Fixed CWW 1 07:30:00-17:30:00', '0000-00-00', 4, 'testing', '', '', '', '', 20, 1, '2024-04-10', '20:11:51', '2024-04-10', '20:11:51'),
(2, 'Create', '2024-04-11', '4C-0009', 'Raphaela Matias', 'For Approval', '2024-04-11', 'Fixed CWW 1 07:30:00-17:30:00', '0000-00-00', 4, 'testing', '4C-00010', 'hr_admin', '', '', 20, 1, '2024-04-11', '18:37:27', '2024-04-11', '18:37:27'),
(3, 'Create', '2024-04-15', '4C-0009', 'Raphaela Matias', 'For Approval', '2024-04-15', 'Gliding 8hrs 07:00:00-17:00:00', '0000-00-00', 3, 'test', '4C-00010', 'hr_admin', '', '', 20, 1, '2024-04-15', '18:56:00', '2024-04-15', '18:56:00'),
(4, 'Create', '2024-04-22', '4C-0009', 'Raphaela Matias', 'For Approval', '2024-04-22', 'Flexi WW 00:00:00-23:59:00', '0000-00-00', 6, 'test', '4C-00010', 'hr_admin', '', '', 20, 1, '2024-04-22', '23:04:45', '2024-04-22', '23:04:45'),
(5, 'Create', '2024-12-12', 'system_admin', 'System Admin', 'For Approval', '2024-12-12', 'Gliding CWW 06:30:00-18:00:00', '0000-00-00', 3, 'sf', '4C-00010', 'hr_admin', '', '', 0, 1, '2024-12-12', '11:28:44', '2024-12-12', '11:28:44'),
(6, 'Create', '2024-12-12', 'system_admin', 'System Admin', 'For Approval', '2024-12-12', 'Gliding CWW 06:30:00-18:00:00', '0000-00-00', 1, 'Change Work Schedule Request', '4C-00010', 'hr_admin', '', '', 0, 1, '2024-12-12', '11:30:42', '2024-12-12', '11:30:42'),
(7, 'Create', '2024-12-13', 'system_admin', 'System Admin', 'For Approval', '2024-12-13', 'Gliding CWW 06:30:00-18:00:00', '0000-00-00', 2, '123', '4C-00010', 'hr_admin', '', '', 0, 1, '2024-12-13', '02:04:41', '2024-12-13', '02:04:41'),
(8, 'Create', '2024-12-19', 'system_admin', 'System Admin', 'For Approval', '2024-12-19', 'Gliding CWW 10:34:00-18:00:00', 'Reg 8hrs Shift 2 07:00:00-17:19:00', 16, 'TR', '4C-00010', 'hr_admin', '', '', 0, 1, '2024-12-19', '02:20:40', '2024-12-19', '02:20:40'),
(9, 'Create', '2025-02-07', 'system_admin', 'System Admin', 'For Approval', '2025-02-07', 'Gliding CWW 10:34:00-18:00:00', 'Gliding 8hrs 11:43:00-19:30:00', 1, 'aa', '4C-00010', 'hr_admin', '', '', 0, 1, '2025-02-07', '02:31:33', '2025-02-07', '02:31:33'),
(10, 'Create', '2025-02-07', 'system_admin', 'System Admin', 'For Approval', '2025-02-07', 'Gliding CWW 10:34:00-18:00:00', 'Gliding 8hrs 07:00:00-17:00:00', 4, 'S', '4C-00010', 'hr_admin', '', '', 0, 1, '2025-02-07', '08:54:37', '2025-02-07', '08:54:37'),
(11, 'Create', '2025-02-07', 'system_admin', 'System Admin', 'For Approval', '2025-02-07', 'Gliding CWW 10:34:00-18:00:00', 'Fixed CWW 2 07:00:00-17:00:00', 2, 's', '4C-00010', 'hr_admin', '', '', 0, 1, '2025-02-07', '09:43:27', '2025-02-07', '09:43:27'),
(12, 'Create', '2025-02-22', 'system_admin', 'System Admin', 'Pending For Approval', '2025-02-22', 'Gliding CWW 10:34:00-18:00:00', 'Fixed CWW 2 07:00:00-17:00:00', 2, 'as', '4C-00010', 'hr_admin', '', '', 0, 1, '2025-02-22', '06:37:37', '2025-02-22', '06:37:37'),
(13, 'Create', '2025-03-03', 'hr_admin', 'HR Admin', 'Pending For Approval', '2025-03-03', 'Gliding CWW 10:34:00-18:00:00', 'Flexi WW 06:30:00-18:00:00', 13, 'Try this', '4C-00010', 'hr_admin', '', '', 0, 1, '2025-03-03', '15:08:56', '2025-03-03', '15:08:56'),
(14, 'Create', '2025-03-03', 'hr_admin', 'HR Admin', 'Pending For Approval', '2025-03-03', 'Gliding 8hrs 11:43:00-19:30:00', 'Reg 8hrs Shift 2 07:30:00-16:30:00', 7, 'qe', '4C-00010', 'hr_admin', '', '', 0, 1, '2025-03-03', '17:36:50', '2025-03-03', '17:36:50'),
(15, 'Create', '2025-03-03', 'hr_admin', 'HR Admin', 'Pending For Approval', '2025-03-03', 'Gliding 8hrs 11:43:00-19:30:00', 'Gliding 8hrs 07:43:00-13:30:00', 17, 'ff', '4C-00010', 'hr_admin', '', '', 0, 1, '2025-03-03', '18:29:32', '2025-03-03', '18:29:32'),
(16, 'Create', '2025-03-03', 'hr_admin', 'HR Admin', 'Pending For Approval', '2025-03-03', 'Gliding CWW 10:34:00-18:00:00', 'Flexi WW 00:00:00-23:59:00', 18, 'EE', '4C-00010', 'hr_admin', '', '', 0, 1, '2025-03-03', '18:35:02', '2025-03-03', '18:35:02'),
(17, 'Create', '2025-03-03', 'hr_admin', 'HR Admin', 'Pending For Approval', '2025-03-03', 'Fixed CWW 2 07:00:00-17:00:00', 'Reg 8hrs Shift 2 07:00:00-17:19:00', 16, 'RE', '4C-00010', 'hr_admin', '', '', 0, 1, '2025-03-03', '18:39:10', '2025-03-03', '18:39:10'),
(18, 'Create', '2025-03-03', 'hr_admin', 'HR Admin', 'Pending For Approval', '2025-03-03', 'Fixed CWW 2 07:00:00-17:00:00', 'Gliding 8hrs 07:43:00-13:30:00', 17, 'WD', '4C-00010', 'hr_admin', '', '', 0, 1, '2025-03-03', '18:42:09', '2025-03-03', '18:42:09'),
(19, 'Create', '2025-03-03', 'hr_admin', 'HR Admin', 'Pending For Approval', '2025-03-03', 'Fixed CWW 2 07:00:00-17:00:00', 'Fixed CWW 2 07:00:00-17:00:00', 11, 'TT', '4C-00010', 'hr_admin', '', '', 0, 1, '2025-03-03', '19:18:42', '2025-03-03', '19:18:42'),
(20, 'Create', '2025-03-03', 'hr_admin', 'HR Admin', 'Pending For Approval', '2025-03-03', 'Fixed CWW 2 07:00:00-17:00:00', 'Fixed CWW 1 07:30:00-17:30:00', 14, 'GG', '4C-00010', 'hr_admin', '', '', 0, 1, '2025-03-03', '19:24:47', '2025-03-03', '19:24:47'),
(21, 'Create', '2025-03-04', '4C-0009', 'Raphaela Matias', 'Pending For Approval', '2025-03-04', 'Reg 8hrs Shift 1 07:00:00-16:00:00', 'Flexi WW 00:00:00-23:59:00', 18, 'HUI', '', '', '', '', 20, 1, '2025-03-04', '04:17:27', '2025-03-04', '04:17:27'),
(22, 'Create', '2025-03-04', '4C-0009', 'Raphaela Matias', 'Pending For Approval', '2025-03-04', 'Reg 8hrs Shift 1 07:00:00-16:00:00', 'Gliding 8hrs 07:43:00-13:30:00', 17, 'DD', '', '', '', '', 20, 1, '2025-03-04', '04:20:32', '2025-03-04', '04:20:32'),
(23, 'Create', '2025-03-04', '4C-0009', 'Raphaela Matias', 'Pending For Approval', '2025-03-04', 'Reg 8hrs Shift 1 07:00:00-16:00:00', 'Flexi WW 00:00:00-23:59:00', 18, 'YY', '', '', '', '', 20, 1, '2025-03-04', '04:23:53', '2025-03-04', '04:23:53'),
(24, 'Create', '2025-03-04', '4C-0009', 'Raphaela Matias', 'Pending For Approval', '2025-03-04', 'Reg 8hrs Shift 1 07:00:00-16:00:00', 'Fixed CWW 1 07:30:00-17:30:00', 10, 'wqs', '', '', '', '', 20, 1, '2025-03-04', '04:26:25', '2025-03-04', '04:26:25'),
(25, 'Create', '2025-03-04', '4C-0009', 'Raphaela Matias', 'Pending For Approval', '2025-03-04', 'Reg 8hrs Shift 1 07:00:00-16:00:00', 'Gliding 8hrs 07:43:00-13:30:00', 19, 'HHA', '', '', '', '', 20, 1, '2025-03-04', '04:28:55', '2025-03-04', '04:28:55'),
(26, 'Create', '2025-03-04', '4C-0009', 'Raphaela Matias', 'Pending For Approval', '2025-03-04', 'Reg 8hrs Shift 1 07:00:00-16:00:00', 'Fixed CWW 2 07:00:00-17:00:00', 11, 'TRR', '', '', '', '', 20, 1, '2025-03-04', '04:31:06', '2025-03-04', '04:31:06'),
(27, 'Create', '2025-03-08', 'hr_admin', 'HR Admin', 'Pending For Approval', '2025-03-08', 'Fixed CWW 2 07:00:00-17:00:00', 'Fixed CWW 1 07:30:00-17:30:00', 15, 'TESTING', '4C-00010', 'hr_admin', '', '', 0, 1, '2025-03-08', '13:58:13', '2025-03-08', '13:58:13');

-- --------------------------------------------------------

--
-- Table structure for table `payregister_logs`
--

CREATE TABLE `payregister_logs` (
  `EmployeeID` int(11) DEFAULT 0,
  `Lastname` varchar(255) DEFAULT '',
  `Middlename` varchar(255) DEFAULT '',
  `Firstname` varchar(255) DEFAULT '',
  `Branch` varchar(255) DEFAULT '',
  `Department` varchar(255) DEFAULT '',
  `Position` varchar(255) DEFAULT '',
  `BasicPayMonthly` decimal(15,2) DEFAULT 0.00,
  `BasicPaySemi` decimal(15,2) DEFAULT 0.00,
  `Allowance` decimal(15,2) DEFAULT 0.00,
  `MolecularAllowance` decimal(15,2) DEFAULT 0.00,
  `Licensure` decimal(15,2) DEFAULT 0.00,
  `Days` int(11) DEFAULT 0,
  `PerDay` decimal(15,2) DEFAULT 0.00,
  `ActualBasic` decimal(15,2) DEFAULT 0.00,
  `Absent` decimal(15,2) DEFAULT 0.00,
  `Late` decimal(15,2) DEFAULT 0.00,
  `Adjustment` decimal(15,2) DEFAULT 0.00,
  `GrossBasicPay` decimal(15,2) DEFAULT 0.00,
  `OvertimeND` decimal(15,2) DEFAULT 0.00,
  `OvertimeRegular` decimal(15,2) DEFAULT 0.00,
  `OvertimeSpecial` decimal(15,2) DEFAULT 0.00,
  `OvertimeLegal` decimal(15,2) DEFAULT 0.00,
  `OvertimeTotal` decimal(15,2) DEFAULT 0.00,
  `AdjustmentOT` decimal(15,2) DEFAULT 0.00,
  `TotalOvertime` decimal(15,2) DEFAULT 0.00,
  `Commission` decimal(15,2) DEFAULT 0.00,
  `GrossTaxableCompensation` decimal(15,2) DEFAULT 0.00,
  `BasicAllowance` decimal(15,2) DEFAULT 0.00,
  `CommunicationAllowance` decimal(15,2) DEFAULT 0.00,
  `HazardPay` decimal(15,2) DEFAULT 0.00,
  `DrugTestAnalystAllowance` decimal(15,2) DEFAULT 0.00,
  `Others` decimal(15,2) DEFAULT 0.00,
  `OtherNonTaxableComp` decimal(15,2) DEFAULT 0.00,
  `GrossSalary` decimal(15,2) DEFAULT 0.00,
  `SSS_Employee` decimal(15,2) DEFAULT 0.00,
  `SSS_Employer` decimal(15,2) DEFAULT 0.00,
  `SSS_ECC` decimal(15,2) DEFAULT 0.00,
  `SSS_MP_EE` decimal(15,2) DEFAULT 0.00,
  `SSS_MP_ER` decimal(15,2) DEFAULT 0.00,
  `PHIC_Employee` decimal(15,2) DEFAULT 0.00,
  `PHIC_Employer` decimal(15,2) DEFAULT 0.00,
  `PAGIBIG_Employee` decimal(15,2) DEFAULT 0.00,
  `PAGIBIG_Employer` decimal(15,2) DEFAULT 0.00,
  `TotalContributions_EmployeeShare` decimal(15,2) DEFAULT 0.00,
  `Tax` decimal(15,2) DEFAULT 0.00,
  `TaxAdjJuly15` decimal(15,2) DEFAULT 0.00,
  `TaxDeductedCommission` decimal(15,2) DEFAULT 0.00,
  `SSS_SalaryLoan` decimal(15,2) DEFAULT 0.00,
  `SSS_CalamityLoan` decimal(15,2) DEFAULT 0.00,
  `PAGIBIG_MultiPurposeLoan` decimal(15,2) DEFAULT 0.00,
  `PAGIBIG_CalamityLoan` decimal(15,2) DEFAULT 0.00,
  `CarLoan` decimal(15,2) DEFAULT 0.00,
  `AR` decimal(15,2) DEFAULT 0.00,
  `Medical` decimal(15,2) DEFAULT 0.00,
  `CashAdv` decimal(15,2) DEFAULT 0.00,
  `AdvancesAgainstSalary` decimal(15,2) DEFAULT 0.00,
  `TotalDeduction` decimal(15,2) DEFAULT 0.00,
  `Net` decimal(15,2) DEFAULT 0.00,
  `NetTaxableCompensation` decimal(15,2) DEFAULT 0.00,
  `ThirteenthMonthAccrual` decimal(15,2) DEFAULT 0.00,
  `GrossCompensation` decimal(15,2) DEFAULT 0.00,
  `Hold` decimal(15,2) DEFAULT 0.00,
  `LicensurePayslip` decimal(15,2) DEFAULT 0.00,
  `Due` decimal(15,2) DEFAULT 0.00,
  `TaxRefund` decimal(15,2) DEFAULT 0.00,
  `TaxExcess` decimal(15,2) DEFAULT 0.00,
  `TaxMultiplier` decimal(15,2) DEFAULT 0.00,
  `BaseTax` decimal(15,2) DEFAULT 0.00,
  `date_range` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pay_register`
--

CREATE TABLE `pay_register` (
  `id` int(11) NOT NULL,
  `employee_id` varchar(15) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `middlename` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `branch` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL,
  `basepay` double NOT NULL,
  `semi_basepay` double NOT NULL,
  `allowance` double NOT NULL,
  `molecular_allowance` double NOT NULL,
  `licensure` double NOT NULL,
  `days` int(11) NOT NULL,
  `per_day` double NOT NULL,
  `actual_basic` double NOT NULL,
  `absent` double NOT NULL,
  `late` double NOT NULL,
  `adjustment` double NOT NULL,
  `gross_basic_pay` double NOT NULL,
  `overtime_nd` double NOT NULL,
  `overtime_regular` double NOT NULL,
  `overtime_special` double NOT NULL,
  `overtime_legal` double NOT NULL,
  `overtime_total` double NOT NULL,
  `adjustment_ot` double NOT NULL,
  `total_overtime` double NOT NULL,
  `commission` double NOT NULL,
  `gross_taxable_compensation` double NOT NULL,
  `basic_allowance` double NOT NULL,
  `licensure_1` double NOT NULL,
  `communication_allowance` double NOT NULL,
  `hazard_pay` double NOT NULL,
  `drug_test` double NOT NULL,
  `others` double NOT NULL,
  `other_non_taxable_compensation` double NOT NULL,
  `gross_salary` double NOT NULL,
  `sss_employee` double NOT NULL,
  `sss_employer` double NOT NULL,
  `sss_ecc` double NOT NULL,
  `sss_mp_ee` double NOT NULL,
  `sss_mp_er` double NOT NULL,
  `phic_employee` double NOT NULL,
  `phic_employer` double NOT NULL,
  `pagibig_employee` double NOT NULL,
  `pagibig_employer` double NOT NULL,
  `total_contributions_employee` double NOT NULL,
  `tax` double NOT NULL,
  `tax_deducted_commission` double NOT NULL,
  `sss_salary_loan` double NOT NULL,
  `sss_calamity_loan` double NOT NULL,
  `pagibig_multi_purpose_loan` double NOT NULL,
  `pagibig_calamity_loan` double NOT NULL,
  `car_loan` double NOT NULL,
  `a_r` double NOT NULL,
  `medical` double NOT NULL,
  `cash_advance` double NOT NULL,
  `advances_against_salary` double NOT NULL,
  `total_deduction` double NOT NULL,
  `net` double NOT NULL,
  `net_taxable_compensation` double NOT NULL,
  `month_13_accrual` double NOT NULL,
  `gross_compensation` double NOT NULL,
  `hold` double NOT NULL,
  `licensure_payslip` double NOT NULL,
  `due` double NOT NULL,
  `tax_refund` double NOT NULL,
  `tax_excess` double NOT NULL,
  `tax_multiplier` double NOT NULL,
  `base_tax` double NOT NULL,
  `cut_off_remarks` varchar(100) NOT NULL,
  `date_created` date NOT NULL,
  `date_update` date NOT NULL,
  `time_update` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pm_cutoff`
--

CREATE TABLE `pm_cutoff` (
  `id` int(11) NOT NULL,
  `start_day` date NOT NULL,
  `end_day` date NOT NULL,
  `payout_date` date NOT NULL,
  `remarks` varchar(100) NOT NULL,
  `company_id` int(11) NOT NULL,
  `step` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pm_cutoff`
--

INSERT INTO `pm_cutoff` (`id`, `start_day`, `end_day`, `payout_date`, `remarks`, `company_id`, `step`) VALUES
(1, '2024-03-01', '2024-03-15', '2024-03-15', 'March 1-15, 2024', 1, 3),
(2, '2024-05-01', '2024-05-15', '2024-05-15', '1st CutOff', 1, 3),
(3, '2024-05-16', '2024-05-31', '2024-05-30', 'May 16-31, 2024', 1, 3),
(4, '2024-06-01', '2024-06-15', '2024-06-15', '1st CutOff', 1, 3),
(5, '2024-06-16', '2024-06-30', '2024-06-30', '1st CutOff', 1, 3),
(6, '2024-06-01', '2024-06-15', '2024-06-15', '1st CutOff', 1, 3),
(7, '2024-02-13', '2024-02-14', '2024-05-14', '1st CutOff', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `pm_months_to_pay`
--

CREATE TABLE `pm_months_to_pay` (
  `id` int(11) NOT NULL,
  `description` varchar(100) NOT NULL,
  `value` int(11) NOT NULL,
  `company_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pm_months_to_pay`
--

INSERT INTO `pm_months_to_pay` (`id`, `description`, `value`, `company_id`) VALUES
(1, '1 Month', 1, 1),
(2, '2 Months', 2, 1),
(3, '3 Months', 3, 1),
(4, '4 Months', 4, 1),
(5, '5 Months', 5, 1),
(6, '6 Months', 6, 1),
(7, '7 Months', 7, 1),
(8, '8 Months', 8, 1),
(9, '9 Months', 9, 1),
(10, '10 Months', 10, 1),
(11, '11 Months', 11, 1),
(12, '12 Months', 12, 1),
(13, '13 Months', 13, 1),
(14, '14 Months', 14, 1),
(15, '15 Months', 15, 1),
(16, '16 Months', 16, 1),
(17, '17 Months', 17, 1),
(18, '18 Months', 18, 1),
(19, '19 Months', 19, 1),
(20, '20 Months', 20, 1),
(21, '21 Months', 21, 1),
(22, '22 Months', 22, 1),
(23, '23 Months', 23, 1),
(24, '24 Months', 24, 1),
(25, 'Test Loan', 2000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pm_payout_schedules`
--

CREATE TABLE `pm_payout_schedules` (
  `id` int(11) NOT NULL,
  `description` varchar(100) NOT NULL,
  `company_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pm_payout_schedules`
--

INSERT INTO `pm_payout_schedules` (`id`, `description`, `company_id`) VALUES
(1, '1st CutOff', 1),
(2, '2nd CutOff', 1),
(3, '1st and 2nd CutOff', 1),
(4, 'March 1-15, 2024', 1),
(5, 'March 16-30, 2024', 1),
(6, 'May 1-15, 2024', 1),
(7, 'May 16-31, 2024', 1),
(8, 'June 1-15 2024', 1),
(9, 'June 16-30 2024', 1),
(10, 'ad', 1),
(11, 'February 6-14, 2025', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pm_service_charge`
--

CREATE TABLE `pm_service_charge` (
  `id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `company_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pm_service_charge`
--

INSERT INTO `pm_service_charge` (`id`, `amount`, `company_id`) VALUES
(10, 100, 1),
(11, 200, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sql_logs`
--

CREATE TABLE `sql_logs` (
  `log` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sss`
--

CREATE TABLE `sss` (
  `id` int(11) NOT NULL,
  `description` varchar(100) NOT NULL,
  `min` decimal(50,2) NOT NULL,
  `max` decimal(50,2) NOT NULL,
  `basepay` double(10,2) NOT NULL,
  `sss_employer` double NOT NULL,
  `sss_employee` double NOT NULL,
  `sss_ecc` double NOT NULL,
  `sss_mp_er` double NOT NULL,
  `sss_mp_ee` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sss`
--

INSERT INTO `sss` (`id`, `description`, `min`, `max`, `basepay`, `sss_employer`, `sss_employee`, `sss_ecc`, `sss_mp_er`, `sss_mp_ee`) VALUES
(1, '5,250 - 5,749.99', 5250.00, 5749.99, 5000.00, 500, 250, 10, 0, 0),
(2, '5,750 - 6,249.99', 5750.00, 6249.99, 5500.00, 550, 275, 10, 0, 0),
(3, '6,250 - 6,749.99', 6250.00, 6749.99, 6000.00, 600, 300, 10, 0, 0),
(4, '6,750 - 7,249.99', 6750.00, 7249.99, 6500.00, 650, 325, 10, 0, 0),
(5, '7,250 - 7,749.99', 7250.00, 7749.99, 7000.00, 700, 350, 10, 0, 0),
(6, '7,750 - 8,249.99', 7750.00, 8249.99, 7500.00, 750, 375, 10, 0, 0),
(7, '8,250 - 8,749.99', 8250.00, 8749.99, 8000.00, 800, 400, 10, 0, 0),
(8, '8,750 - 9,249.99', 8750.00, 9249.99, 8500.00, 850, 425, 10, 0, 0),
(9, '9,250 - 9,749.99', 9250.00, 9749.99, 9000.00, 900, 450, 10, 0, 0),
(10, '9,750 - 10,249.99', 9750.00, 10249.99, 9500.00, 950, 475, 10, 0, 0),
(11, '10,250 - 10,749.99', 10250.00, 10749.99, 10000.00, 1000, 500, 10, 0, 0),
(12, '10,750 - 11,249.99', 10750.00, 11249.99, 10500.00, 1050, 525, 10, 0, 0),
(13, '11,250 - 11,749.99', 11250.00, 11749.99, 11000.00, 1100, 550, 10, 0, 0),
(14, '11,750 - 12,249.99', 11750.00, 12249.99, 11500.00, 1150, 575, 10, 0, 0),
(15, '12,250 - 12,749.99', 12250.00, 12749.99, 12000.00, 1200, 600, 10, 0, 0),
(16, '12,750 - 13,249.99', 12750.00, 13249.99, 12500.00, 1250, 625, 10, 0, 0),
(17, '13,250 - 13,749.99', 13250.00, 13749.99, 13000.00, 1300, 650, 10, 0, 0),
(18, '13,750 - 14,249.99', 13750.00, 14249.99, 13500.00, 1350, 675, 10, 0, 0),
(19, '14,250 - 14,749.99', 14250.00, 14749.99, 14000.00, 1400, 700, 10, 0, 0),
(20, '14,750 - 15,249.99', 14750.00, 15249.99, 14500.00, 1450, 725, 10, 0, 0),
(21, '15,250 - 15,749.99', 15250.00, 15749.99, 15000.00, 1500, 750, 30, 0, 0),
(22, '15,750 - 16,249.99', 15750.00, 16249.99, 15500.00, 1550, 775, 30, 0, 0),
(23, '16,250 - 16,749.99', 16250.00, 16749.99, 16000.00, 1600, 800, 30, 0, 0),
(24, '16,750 - 17,249.99', 16750.00, 17249.99, 16500.00, 1650, 825, 30, 0, 0),
(25, '17,250 - 17,749.99', 17250.00, 17749.99, 17000.00, 1700, 850, 30, 0, 0),
(26, '17,750 - 18,249.99', 17750.00, 18249.99, 17500.00, 1750, 875, 30, 0, 0),
(27, '18,250 - 18,749.99', 18250.00, 18749.99, 18000.00, 1800, 900, 30, 0, 0),
(28, '18,750 - 19,249.99', 18750.00, 19249.99, 18500.00, 1850, 925, 30, 0, 0),
(29, '19,250 - 19,749.99', 19250.00, 19749.99, 19000.00, 1900, 950, 30, 0, 0),
(30, '19,750 - 20,249.99', 19750.00, 20249.99, 19500.00, 1950, 975, 30, 0, 0),
(31, '20,250 - 20,749.99', 20250.00, 20749.99, 20000.00, 2000, 1000, 30, 50, 25),
(32, '20,750 - 21,249.99', 20750.00, 21249.99, 20000.00, 2000, 1000, 30, 100, 50),
(33, '21,250 - 21,749.99', 21250.00, 21749.99, 20000.00, 2000, 1000, 30, 150, 75),
(34, '21,750 - 22,249.99', 21750.00, 22249.99, 20000.00, 2000, 1000, 30, 200, 100),
(35, '22,250 - 22,749.99', 22250.00, 22749.99, 20000.00, 2000, 1000, 30, 250, 125),
(36, '22,750 - 23,249.99', 22750.00, 23249.99, 20000.00, 2000, 1000, 30, 300, 150),
(37, '23,250 - 23,749.99', 23250.00, 23749.99, 20000.00, 2000, 1000, 30, 350, 175),
(38, '23,750 - 24,249.99', 23750.00, 24249.99, 20000.00, 2000, 1000, 30, 400, 200),
(39, '24,250 - 24,749.99', 24250.00, 24749.99, 20000.00, 2000, 1000, 30, 450, 225),
(40, '24,750 - 25,249.99', 24750.00, 25249.99, 20000.00, 2000, 1000, 30, 500, 250),
(41, '25,250 - 25,749.99', 25250.00, 25749.99, 20000.00, 2000, 1000, 30, 550, 275),
(42, '25,750 - 26,249.99', 25750.00, 26249.99, 20000.00, 2000, 1000, 30, 600, 300),
(43, '26,250 - 26,749.99', 26250.00, 26749.99, 20000.00, 2000, 1000, 30, 650, 325),
(44, '26,750 - 27,249.99', 26750.00, 27249.99, 20000.00, 2000, 1000, 30, 700, 350),
(45, '27,250 - 27,749.99', 27250.00, 27749.99, 20000.00, 2000, 1000, 30, 750, 375),
(46, '27,750 - 28,249.99', 27750.00, 28249.99, 20000.00, 2000, 1000, 30, 800, 400),
(47, '28,250 - 28,749 .99', 28250.00, 28749.99, 20000.00, 2000, 1000, 30, 850, 425),
(48, '28,750 - 29,249.99', 28750.00, 29249.99, 20000.00, 2000, 1000, 30, 900, 450),
(49, '29,250 - 29,749.99', 29250.00, 29749.99, 20000.00, 2000, 1000, 30, 950, 475),
(50, '29,750 - 30,249.99', 29750.00, 30249.99, 20000.00, 2000, 1000, 30, 1000, 500),
(51, '30,250 - 30,749.99', 30250.00, 30749.99, 20000.00, 2000, 1000, 30, 1050, 525),
(52, '30,750 - 31,249.99', 30750.00, 31249.99, 20000.00, 2000, 1000, 30, 1100, 550),
(53, '31,250 - 31,749.99', 31250.00, 31749.99, 20000.00, 2000, 1000, 30, 1150, 575),
(54, '31,750 - 32,249.99', 31750.00, 32249.99, 20000.00, 2000, 1000, 30, 1200, 600),
(55, '32,250 - 32,749.99', 32250.00, 32749.99, 20000.00, 2000, 1000, 30, 1250, 625),
(56, '32,750 - 33,249.99', 32750.00, 33249.99, 20000.00, 2000, 1000, 30, 1300, 650),
(57, '33,250 - 33,749.99', 33250.00, 33749.99, 20000.00, 2000, 1000, 30, 1350, 675),
(58, '33,750 - 34,249.99', 33750.00, 34249.99, 20000.00, 2000, 1000, 30, 1400, 700),
(59, '34,250 - 34,749.99', 34250.00, 34749.99, 20000.00, 2000, 1000, 30, 1450, 725),
(60, '34,750 - Over', 34750.00, 0.00, 20000.00, 2000, 1000, 30, 1500, 750);

-- --------------------------------------------------------

--
-- Table structure for table `tblholiday`
--

CREATE TABLE `tblholiday` (
  `id` int(11) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblholiday`
--

INSERT INTO `tblholiday` (`id`, `description`) VALUES
(1, 'Regular Holidays'),
(2, 'Special non working days'),
(3, 'Special working days');

-- --------------------------------------------------------

--
-- Table structure for table `withholding_tax_tbl`
--

CREATE TABLE `withholding_tax_tbl` (
  `id` int(11) NOT NULL,
  `min` double NOT NULL,
  `max` double NOT NULL,
  `percentage` double NOT NULL,
  `excess` double NOT NULL,
  `amount` double NOT NULL,
  `company_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `withholding_tax_tbl`
--

INSERT INTO `withholding_tax_tbl` (`id`, `min`, `max`, `percentage`, `excess`, `amount`, `company_id`) VALUES
(1, 0, 10417, 0, 0, 0, 1),
(2, 10417.01, 16666, 20, 10417.01, 0, 1),
(3, 16667, 33332, 25, 16667, 1250, 1),
(4, 33333, 83332, 30, 33333, 5416.67, 1),
(5, 83333, 333332, 32, 83333, 20416.67, 1),
(6, 333333, 1000000000, 35, 333333, 100416.67, 1);

-- --------------------------------------------------------

--
-- Table structure for table `_log`
--

CREATE TABLE `_log` (
  `log` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adjustment`
--
ALTER TABLE `adjustment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `announcement`
--
ALTER TABLE `announcement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `approval`
--
ALTER TABLE `approval`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cws`
--
ALTER TABLE `cws`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dm_cashadvances`
--
ALTER TABLE `dm_cashadvances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dm_companyloans`
--
ALTER TABLE `dm_companyloans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dm_govtloans`
--
ALTER TABLE `dm_govtloans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees_bkup`
--
ALTER TABLE `employees_bkup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_status`
--
ALTER TABLE `employee_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `er_approvers`
--
ALTER TABLE `er_approvers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `er_benefits`
--
ALTER TABLE `er_benefits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `er_costcenter`
--
ALTER TABLE `er_costcenter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `er_deduction`
--
ALTER TABLE `er_deduction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `er_department`
--
ALTER TABLE `er_department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `er_division`
--
ALTER TABLE `er_division`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `er_payclass`
--
ALTER TABLE `er_payclass`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `er_position`
--
ALTER TABLE `er_position`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `er_schedules`
--
ALTER TABLE `er_schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `er_siteassignment`
--
ALTER TABLE `er_siteassignment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `er_supervisor`
--
ALTER TABLE `er_supervisor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `holiday`
--
ALTER TABLE `holiday`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lm_assigned_leaves`
--
ALTER TABLE `lm_assigned_leaves`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lm_earned_leaves`
--
ALTER TABLE `lm_earned_leaves`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lm_leavetype`
--
ALTER TABLE `lm_leavetype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs_contacts`
--
ALTER TABLE `logs_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs_schedule`
--
ALTER TABLE `logs_schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pay_register`
--
ALTER TABLE `pay_register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pm_cutoff`
--
ALTER TABLE `pm_cutoff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pm_months_to_pay`
--
ALTER TABLE `pm_months_to_pay`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pm_payout_schedules`
--
ALTER TABLE `pm_payout_schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pm_service_charge`
--
ALTER TABLE `pm_service_charge`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sss`
--
ALTER TABLE `sss`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblholiday`
--
ALTER TABLE `tblholiday`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withholding_tax_tbl`
--
ALTER TABLE `withholding_tax_tbl`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adjustment`
--
ALTER TABLE `adjustment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `announcement`
--
ALTER TABLE `announcement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `approval`
--
ALTER TABLE `approval`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38755;

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cws`
--
ALTER TABLE `cws`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dm_cashadvances`
--
ALTER TABLE `dm_cashadvances`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dm_companyloans`
--
ALTER TABLE `dm_companyloans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `dm_govtloans`
--
ALTER TABLE `dm_govtloans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39665;

--
-- AUTO_INCREMENT for table `employees_bkup`
--
ALTER TABLE `employees_bkup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `employee_status`
--
ALTER TABLE `employee_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `er_approvers`
--
ALTER TABLE `er_approvers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `er_benefits`
--
ALTER TABLE `er_benefits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `er_costcenter`
--
ALTER TABLE `er_costcenter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `er_deduction`
--
ALTER TABLE `er_deduction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `er_department`
--
ALTER TABLE `er_department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `er_division`
--
ALTER TABLE `er_division`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `er_payclass`
--
ALTER TABLE `er_payclass`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `er_position`
--
ALTER TABLE `er_position`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

--
-- AUTO_INCREMENT for table `er_schedules`
--
ALTER TABLE `er_schedules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=307;

--
-- AUTO_INCREMENT for table `er_siteassignment`
--
ALTER TABLE `er_siteassignment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `er_supervisor`
--
ALTER TABLE `er_supervisor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `holiday`
--
ALTER TABLE `holiday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `lm_assigned_leaves`
--
ALTER TABLE `lm_assigned_leaves`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=280;

--
-- AUTO_INCREMENT for table `lm_earned_leaves`
--
ALTER TABLE `lm_earned_leaves`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lm_leavetype`
--
ALTER TABLE `lm_leavetype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `logs_contacts`
--
ALTER TABLE `logs_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `logs_schedule`
--
ALTER TABLE `logs_schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `pay_register`
--
ALTER TABLE `pay_register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pm_cutoff`
--
ALTER TABLE `pm_cutoff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pm_months_to_pay`
--
ALTER TABLE `pm_months_to_pay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `pm_payout_schedules`
--
ALTER TABLE `pm_payout_schedules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `pm_service_charge`
--
ALTER TABLE `pm_service_charge`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `sss`
--
ALTER TABLE `sss`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `tblholiday`
--
ALTER TABLE `tblholiday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `withholding_tax_tbl`
--
ALTER TABLE `withholding_tax_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
