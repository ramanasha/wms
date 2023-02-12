-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 12, 2023 at 06:32 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `garbagemsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

DROP TABLE IF EXISTS `tbladmin`;
CREATE TABLE IF NOT EXISTS `tbladmin` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 775095453, 'adminuser@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2022-08-02 12:23:36');

-- --------------------------------------------------------

--
-- Table structure for table `tblbin`
--

DROP TABLE IF EXISTS `tblbin`;
CREATE TABLE IF NOT EXISTS `tblbin` (
  `ID` int(5) NOT NULL AUTO_INCREMENT,
  `BinID` varchar(50) DEFAULT NULL,
  `Area` varchar(250) DEFAULT NULL,
  `Locality` varchar(250) DEFAULT NULL,
  `Landmark` varchar(250) DEFAULT NULL,
  `LoadType` varchar(100) DEFAULT NULL,
  `CyclePeriod` varchar(100) DEFAULT NULL,
  `Address` mediumtext,
  `DriverAssignee` varchar(150) DEFAULT NULL,
  `AssignDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Remark` varchar(250) DEFAULT NULL,
  `Status` varchar(250) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbin`
--

INSERT INTO `tblbin` (`ID`, `BinID`, `Area`, `Locality`, `Landmark`, `LoadType`, `CyclePeriod`, `Address`, `DriverAssignee`, `AssignDate`, `Remark`, `Status`, `UpdationDate`) VALUES
(4, 'bin-001', 'Nallur', 'Nallur temple bin', 'near the nallur temple north side', 'Medium', 'Weekly', '001', 'driver', '2023-02-12 17:13:21', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcomtracking`
--

DROP TABLE IF EXISTS `tblcomtracking`;
CREATE TABLE IF NOT EXISTS `tblcomtracking` (
  `ID` int(5) NOT NULL AUTO_INCREMENT,
  `ComplainNumber` int(10) DEFAULT NULL,
  `Remark` varchar(250) DEFAULT NULL,
  `Status` varchar(250) DEFAULT NULL,
  `RemarkDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcomtracking`
--

INSERT INTO `tblcomtracking` (`ID`, `ComplainNumber`, `Remark`, `Status`, `RemarkDate`) VALUES
(1, 526529361, 'Assign to driver', 'Approved', '2022-07-25 14:03:07'),
(2, 526529361, 'Driver is on the way', 'On the way', '2022-07-26 11:57:34'),
(3, 526529361, 'On the way', 'On the way', '2022-07-26 12:06:36'),
(4, 526529361, 'Completed', 'Completed', '2022-07-26 12:10:31'),
(5, 699612318, 'your complain hass been approved', 'Approved', '2022-07-27 10:42:01'),
(6, 699612318, 'On the way for collecting the garbage', 'On the way', '2022-08-14 06:18:28'),
(7, 792381847, 'Assign to driver', 'Approved', '2022-08-14 12:21:18'),
(8, 792381847, 'On the way for pickup garbage', 'On the way', '2022-08-14 12:22:54'),
(9, 792381847, 'Completed', 'Completed', '2022-08-14 12:23:12'),
(10, 654809115, 'keep eye on 11am', 'Approved', '2023-02-12 17:15:58');

-- --------------------------------------------------------

--
-- Table structure for table `tbldriver`
--

DROP TABLE IF EXISTS `tbldriver`;
CREATE TABLE IF NOT EXISTS `tbldriver` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `DriverID` varchar(20) DEFAULT NULL,
  `Name` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Address` mediumtext,
  `Password` varchar(200) DEFAULT NULL,
  `JoiningDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbldriver`
--

INSERT INTO `tbldriver` (`ID`, `DriverID`, `Name`, `MobileNumber`, `Email`, `Address`, `Password`, `JoiningDate`) VALUES
(7, 'driver', 'sha', 775094343, 'driver@gmail.com', 'Nallur Jaffna', 'f925916e2754e5e03f75dd58a5733251', '2023-02-12 17:11:51');

-- --------------------------------------------------------

--
-- Table structure for table `tbllodgedcomplain`
--

DROP TABLE IF EXISTS `tbllodgedcomplain`;
CREATE TABLE IF NOT EXISTS `tbllodgedcomplain` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `UserID` int(10) DEFAULT NULL,
  `ComplainNumber` int(10) DEFAULT NULL,
  `Area` varchar(250) DEFAULT NULL,
  `Locality` varchar(250) DEFAULT NULL,
  `Landmark` varchar(250) DEFAULT NULL,
  `Address` mediumtext,
  `Photo` varchar(250) DEFAULT NULL,
  `Note` mediumtext,
  `ComplainDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Remark` varchar(250) DEFAULT NULL,
  `Status` varchar(100) DEFAULT NULL,
  `AssignTo` varchar(100) DEFAULT NULL,
  `AssignDate` date DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbllodgedcomplain`
--

INSERT INTO `tbllodgedcomplain` (`ID`, `UserID`, `ComplainNumber`, `Area`, `Locality`, `Landmark`, `Address`, `Photo`, `Note`, `ComplainDate`, `Remark`, `Status`, `AssignTo`, `AssignDate`, `UpdationDate`) VALUES
(1, 1, 526529361, 'Mayur Vihar Phase 3', 'Hari Kunj', 'near relaince fresh', 'Urvarshi Apartment\r\nJ&J-806\r\nmayur vihar ph-3', '07c17b1eaf2560b85252e48de9ba4efd1658493045.jpg', NULL, '2022-07-22 12:30:45', 'Completed', 'Completed', 'vams123', '2022-07-26', '2022-07-27 10:43:11'),
(2, 2, 699612318, 'Kalyanpuri', 'jgjhghjgjhg', 'nera oppulent mall', 'K-0890, fghy,\r\nuytu,New Delhi', '006d51ca52039abf7231ba02bba35d681658493414.jpg', 'There is more than one week no one come to pic this garbage', '2022-07-22 12:36:54', 'On the way for collecting the garbage', 'On the way', 'vams123', '2022-07-27', '2022-08-14 06:18:28'),
(3, 2, 526529312, 'Mayur Vihar Phase 3', 'Hari Kunj', 'near relaince fresh', 'Urvarshi Apartment\r\nJ&J-806\r\nmayur vihar ph-3', '07c17b1eaf2560b85252e48de9ba4efd1658493045.jpg', NULL, '2022-07-22 12:30:45', 'Completed', 'Completed', 'vams123', '2022-07-26', '2022-07-27 10:43:16'),
(4, 3, 792381847, 'XYZ Street', 'ABC Locality', 'NA', 'A1232 Secor 5 Noida', '2c9e7ec0fc8c2cfbb3828177e70dfe1a1660479585.png', 'NA', '2022-08-14 12:19:45', 'Completed', 'Completed', 'vams123', '2022-08-14', '2022-08-14 12:23:13'),
(5, 4, 654809115, '1', '1', 'sdds', 'sfddsfs', 'd2aff8ca8064e92261b59c8ac7e31f881676218813.png', 'fgfgf', '2023-02-12 16:20:13', 'keep eye on 11am', 'Approved', 'driver', '2023-02-13', '2023-02-12 17:15:58');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

DROP TABLE IF EXISTS `tblpage`;
CREATE TABLE IF NOT EXISTS `tblpage` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext,
  `PageDescription` mediumtext,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` date DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`) VALUES
(1, 'aboutus', 'About Us', '<span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\"><b>\"Garbage Management System \"</b>&nbsp;</span><div><font color=\"#202124\" face=\"arial, sans-serif\"><span style=\"font-size: 16px;\">It helps garbage collector to maintain and view lodged Requests against Plastics.</span></font></div>', NULL, NULL, NULL),
(2, 'contactus', 'Contact Us', 'Nallur, Jaffna', 'info@gmail.com', 775085453, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbltracking`
--

DROP TABLE IF EXISTS `tbltracking`;
CREATE TABLE IF NOT EXISTS `tbltracking` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `BinID` varchar(250) DEFAULT NULL,
  `Remark` varchar(200) DEFAULT NULL,
  `Status` varchar(200) DEFAULT NULL,
  `UpdationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbltracking`
--

INSERT INTO `tbltracking` (`ID`, `BinID`, `Remark`, `Status`, `UpdationDate`) VALUES
(1, 'Bin-123', 'on the way', 'On The Way', '2022-07-27 10:54:01'),
(2, 'Bin-123', 'Garbage collected', 'Completed', '2022-07-27 10:53:56'),
(3, 'B-123', 'otw', 'On The Way', '2022-07-27 10:53:22'),
(4, 'B-123', 'completed', 'Completed', '2022-07-27 10:53:08'),
(5, '1', 'sada', 'On The Way', '2023-02-12 16:35:19');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

DROP TABLE IF EXISTS `tbluser`;
CREATE TABLE IF NOT EXISTS `tbluser` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `FullName` varchar(250) DEFAULT NULL,
  `UserName` varchar(250) DEFAULT NULL,
  `MobileNumber` bigint(20) DEFAULT NULL,
  `Email` varchar(250) DEFAULT NULL,
  `Password` varchar(250) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FullName`, `UserName`, `MobileNumber`, `Email`, `Password`, `RegDate`) VALUES
(1, 'Moshin', 'mos123', 7894566123, 'mos@gmail.com', '202cb962ac59075b964b07152d234b70', '2022-07-22 11:16:53'),
(2, 'test', 'test123', 7946547897, 'test@gmail.com', '202cb962ac59075b964b07152d234b70', '2022-07-22 12:34:42'),
(3, 'Joh Doe', 'Johndoe123', 1231231230, 'johndoe@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2022-08-14 12:18:44'),
(4, 'Ramana', 'ramana', 775085453, 'ramana@gmail.com', '54ab07ed99c112916f3a2178d4626bac', '2023-02-12 15:46:42');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
