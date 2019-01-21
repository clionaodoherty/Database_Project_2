-- phpMyAdmin SQL Dump
-- version 4.4.15.9
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 27, 2018 at 10:21 AM
-- Server version: 5.5.60-MariaDB
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codoherty18`
--

-- Dumping data for table `Apartment`
--

INSERT INTO `Apartment` VALUES
(100, 1, 2, 1, 600, 3),
(100, 2, 3, 2, 1000, 2),
(102, 10, 1, 1, 400, 6),
(105, 4, 4, 2, 1200, 4),
(105, 5, 4, 3, 1300, 7),
(105, 11, 2, 2, 750, 5),
(105, 12, 3, 2, 1100, 1),
(106, 3, 3, 3, 1300, 9),
(203, 21, 2, 2, 890, NULL),
(204, 7, 4, 3, 1500, 8),
(305, 10, 2, 2, 800, 10);

--
-- Dumping data for table `Building`

--
-- Dumping data for table `Guest`
--

INSERT INTO `Guest` VALUES
(62, 'Bethany', 'Cosgrave', 1, 203, 21);

--
-- Dumping data for table `Lease`
--

INSERT INTO `Lease` VALUES
(1, 100, 1, 18, '2018-09-01', 9, 250),
(2, 100, 2, 15, '2018-08-31', 10, 320),
(3, 102, 10, 14, '2017-09-01', 12, 200),
(4, 105, 4, 17, '2018-09-03', 10, 390),
(5, 105, 5, 13, '2017-08-31', 11, 410),
(6, 105, 11, 12, '2018-08-27', 9, 300),
(7, 105, 12, 18, '2017-08-31', 12, 380),
(8, 106, 3, 16, '2018-09-03', 10, 450),
(9, 204, 7, 15, '2018-08-01', 12, 500),
(10, 305, 10, 12, '2018-10-01', 6, 300);

--
-- Dumping data for table `ManagerOffices`
--

INSERT INTO `ManagerOffices` VALUES
(12, 105, 11),
(12, 305, 10),
(13, 105, 5),
(14, 102, 10),
(15, 100, 2),
(15, 204, 7),
(16, 106, 3),
(17, 105, 4),
(18, 100, 1),
(18, 105, 12);

--
-- Dumping data for table `Person`
--



--
-- Dumping data for table `Skill`
--

INSERT INTO `Skill` VALUES
(1, 'Carpentry'),
(2, 'Plumbing'),
(3, 'Electrical');

--
-- Dumping data for table `TenantLease`
--

INSERT INTO `TenantLease` VALUES
(1, 7),
(2, 2),
(3, 1),
(4, 4),
(5, 6),
(6, 3),
(7, 5),
(8, 9),
(9, 8),
(10, 10);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
