-- phpMyAdmin SQL Dump
-- version 4.4.15.9
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 27, 2018 at 10:53 AM
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

--
-- Dumping data for table `Building`
--

INSERT INTO `Building` VALUES
(100, 'Malone Avenue', 'Belfast', 'BT94FQ'),
(101, 'Eglantine', 'Belfast', 'BT95FE'),
(102, 'Wesley Avenue', 'Belfast', 'BT97FR'),
(103, 'Stranmillis Gardens', 'Belfast', 'BT95RF'),
(104, 'Slieve Foy', 'Belfast', 'BT343NR'),
(105, 'Seaview', 'Belfast', 'BT343NH'),
(106, 'Sandhurst Drive', 'Belfast', 'BT90GF'),
(203, 'University Avenue', 'Belfast', 'BT105EW'),
(204, 'Fitzroy ', 'Belfast', 'BT100JI'),
(305, 'Ardmore Park', 'Belfast', 'BT174JH');

--
-- Dumping data for table `Person`
--

INSERT INTO `Person` VALUES
(1, 'Beth', 'McAvoy', 'Maureen McAvoy', '07596037764'),
(2, 'Cliona', 'O''Doherty', 'Elaine O''Doherty', '07824563780'),
(3, 'Sarahrose ', 'Smyth', 'Joanne Smyth', '07565435675'),
(4, 'Tracy', 'Saunders', 'Sam Saunders', '05476890765'),
(5, 'James', 'Stitt', 'Matthew Ferguson', '07865436785'),
(6, 'Conor', 'McDonnell', 'Joe McDonnell', '07854678674'),
(7, 'Laura', 'Moran', 'Janet Moran', '07865789675'),
(8, 'Patrick', 'O''Neill', 'Cathal O''Neill', '06756890712'),
(9, 'Colm', 'Brown', 'Bernie Brown', '05643123232'),
(10, 'Meabh', 'MacCrory', 'Stephen MacCrory', '07865123423'),
(11, 'Orlaith', 'Hughes', 'Brenda Hughes', '07654382771'),
(12, 'Leah', 'Hillen', 'Brian Hillen', '07889362817'),
(13, 'Moyagh', 'Gallagher', 'Eddie Gallagher', '08763524197'),
(14, 'Emma', 'Finnegan', 'Ian Finnegan', '07587653928'),
(15, 'Helen', 'Monaghan', 'Jane Monaghan', '08663528971'),
(16, 'Eve', 'McCartan', 'Alex McCartan', '08552836792'),
(17, 'Aine', 'Lynch', 'Joe Lynch', '07665349871'),
(18, 'Conor', 'Jones', 'Tirnan Jones', '09865242718');

--
-- Dumping data for table `Apartment`
--

INSERT INTO `Apartment` VALUES
(100, 1, 2, 1, 600, 18),
(100, 2, 3, 2, 1000, 15),
(102, 10, 1, 1, 400, 14),
(105, 4, 4, 2, 1200, 17),
(105, 5, 4, 3, 1300, 13),
(105, 11, 2, 2, 750, 12),
(105, 12, 3, 2, 1100, 18),
(106, 3, 3, 3, 1300, 16),
(203, 21, 1, 1, 900, 12),
(204, 7, 4, 3, 1500, 15),
(305, 10, 2, 2, 800, 12);

--
-- Dumping data for table `Tenants`
--

INSERT INTO `Tenants` VALUES
(1, 34251745),
(2, 67453278),
(3, 23569845),
(4, 80453786),
(5, 80456367),
(6, 87561089),
(7, 80674536),
(10, 81234567),
(14, 85452645),
(15, 67548394);

--
-- Dumping data for table `Employee`
--

INSERT INTO `Employee` VALUES
(3, 3700),
(5, 4000),
(8, 4200),
(9, 4400),
(10, 4200),
(11, 6000),
(12, 4600),
(13, 3000),
(16, 4800),
(17, 3400),
(18, 3200);

--
-- Dumping data for table `Skill`
--

INSERT INTO `Skill` VALUES
(1, 'Carpentry'),
(2, 'Plumbing'),
(3, 'Electrical');

--
-- Dumping data for table `Technician`
--

INSERT INTO `Technician` VALUES
(1, 9),
(2, 3),
(2, 8),
(3, 5),
(3, 10);

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



--
-- Dumping data for table `Guest`
--

INSERT INTO `Guest` VALUES
(1, 'Beth', 'Cosgrave', 2, 203, 21);



--
-- Dumping data for table `ManagerOffices`
--

INSERT INTO `ManagerOffices` VALUES
(12, 105, 11),
(12, 203, 21),
(12, 305, 10),
(13, 105, 5),
(14, 102, 10),
(15, 100, 2),
(15, 204, 7),
(16, 106, 3),
(17, 105, 4),
(18, 100, 1),
(18, 105, 12);


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
