-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2021 at 12:14 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `payroll_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
`adminId` int(11) NOT NULL,
  `empId` int(11) NOT NULL,
  `username` varchar(50) COLLATE ascii_bin NOT NULL,
  `password` varchar(50) COLLATE ascii_bin NOT NULL,
  `activate` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=ascii COLLATE=ascii_bin;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminId`, `empId`, `username`, `password`, `activate`) VALUES
(1, 1, 'admin', 'password', 1);

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE IF NOT EXISTS `company` (
`compId` int(11) NOT NULL,
  `compName` varchar(255) COLLATE ascii_bin NOT NULL,
  `address` varchar(255) COLLATE ascii_bin NOT NULL,
  `registrationNo` varchar(100) COLLATE ascii_bin NOT NULL,
  `numberOfEmp` int(11) NOT NULL,
  `levelOne` int(11) NOT NULL,
  `levelTwo` int(11) NOT NULL,
  `levelThree` int(11) NOT NULL,
  `levelFour` int(11) NOT NULL,
  `levelFive` int(11) NOT NULL,
  `oneS` int(11) NOT NULL,
  `oneL` int(11) NOT NULL,
  `twoS` int(11) NOT NULL,
  `twoL` int(11) NOT NULL,
  `threeS` int(11) NOT NULL,
  `threeL` int(11) NOT NULL,
  `fourS` int(11) NOT NULL,
  `fourL` int(11) NOT NULL,
  `fiveS` int(11) NOT NULL,
  `fiveL` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=ascii COLLATE=ascii_bin;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`compId`, `compName`, `address`, `registrationNo`, `numberOfEmp`, `levelOne`, `levelTwo`, `levelThree`, `levelFour`, `levelFive`, `oneS`, `oneL`, `twoS`, `twoL`, `threeS`, `threeL`, `fourS`, `fourL`, `fiveS`, `fiveL`) VALUES
(1, 'Rescoden Company International', 'Post Office Box 24 , Kumasi Ghana', 'GH123344', 6, 9, 60, 100, 80, 69, 30, 0, 20, 0, 50, 0, 60, 0, 70, 0);

-- --------------------------------------------------------

--
-- Table structure for table `emplog`
--

CREATE TABLE IF NOT EXISTS `emplog` (
`empLogId` int(11) NOT NULL,
  `empId` int(11) NOT NULL,
  `username` varchar(50) COLLATE ascii_bin NOT NULL,
  `password` varchar(50) COLLATE ascii_bin NOT NULL,
  `activate` tinyint(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=ascii COLLATE=ascii_bin;

--
-- Dumping data for table `emplog`
--

INSERT INTO `emplog` (`empLogId`, `empId`, `username`, `password`, `activate`) VALUES
(1, 2, 'davidson', 'password', 1),
(4, 1, 'solomon', 'kingot', 1),
(6, 6, 'appiah', 'password', 1),
(7, 7, 'blessed', 'bless', 1),
(8, 8, 'sharaf', 'king', 1),
(9, 10, 'johnwalker', 'password', 1);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE IF NOT EXISTS `employee` (
`empId` int(11) NOT NULL,
  `name` varchar(255) COLLATE ascii_bin NOT NULL,
  `phone` int(10) NOT NULL,
  `email` varchar(50) COLLATE ascii_bin NOT NULL,
  `level` int(10) NOT NULL,
  `designation` varchar(100) COLLATE ascii_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=ascii COLLATE=ascii_bin;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`empId`, `name`, `phone`, `email`, `level`, `designation`) VALUES
(1, 'Christine', 1245557850, 'christine@gmail.com', 1, 'Designer'),
(2, 'Davidson', 2147483647, 'davidson@gmail.com', 1, 'Web Master'),
(3, 'Appiah Stephen', 244301310, 'appiah@gmail.com', 1, 'Designer'),
(4, 'Michael Amponsem', 24330123, 'ot.solo@gmail.com', 5, 'Administrator'),
(6, 'Solomon Otoo', 512365376, 'at@gmail.com', 4, 'Web Master'),
(9, 'Bruno Den', 2147483647, 'denbru@gmail.com', 4, 'Software Engineer'),
(10, 'John Walker', 1457546960, 'johnwalker@gmail.com', 3, 'App Developer');

-- --------------------------------------------------------

--
-- Table structure for table `inbox`
--

CREATE TABLE IF NOT EXISTS `inbox` (
`inboxId` int(11) NOT NULL,
  `empId` int(11) NOT NULL,
  `username` varchar(255) COLLATE ascii_bin NOT NULL,
  `title` varchar(255) COLLATE ascii_bin NOT NULL,
  `content` longtext COLLATE ascii_bin NOT NULL,
  `viewed` enum('0','1') COLLATE ascii_bin NOT NULL DEFAULT '0',
  `recievedDate` varchar(255) COLLATE ascii_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=ascii COLLATE=ascii_bin;

--
-- Dumping data for table `inbox`
--

INSERT INTO `inbox` (`inboxId`, `empId`, `username`, `title`, `content`, `viewed`, `recievedDate`) VALUES
(44, 1, 'Appiah Stephen', 'Hi man', 'thanks', '0', '3rd December 2014, 7:01:31 am'),
(45, 1, 'Appiah Stephen', 'man', 'your welcome', '0', '3rd December 2014, 7:02:30 am'),
(47, 1, 'Appiah Stephen', 'hello Appiah', 'Hi', '0', '3rd December 2014, 11:10:32 am'),
(48, 5, 'Appiah Osei Tutu', 'hi David', 'how are you', '0', '3rd December 2014, 11:42:54 am'),
(53, 3, 'Appiah Osei Tutu', 'yes', 'yes', '', '3rd December 2014, 12:45:48 pm'),
(54, 3, 'Appiah Osei Tutu', 'Dear Sir,', 'I''m glad to inform you that , the system is now working perfectly', '', '3rd December 2014, 1:10:02 pm'),
(55, 2, 'Appiah Stephen', 'Congratulation', 'you are welcome to Rescoden Company Internation.Enjoy working with us', '', '3rd December 2014, 1:30:48 pm'),
(56, 1, 'Clement Osei Tutu', 'Hi Appiah', 'I like for you to know that', '', '3rd December 2014, 1:52:50 pm'),
(57, 2, 'Appiah Osei Tutu', 'Money come', 'come take your', '', '3rd December 2014, 1:55:46 pm'),
(58, 3, 'Clement Osei Tutu', 'Delay to pay our salary', 'Please we would like to know when you will pay our salary', '', '3rd December 2014, 1:56:58 pm'),
(61, 0, 'Appiah Stephen', 'all again', 'all agin', '', '3rd December 2014, 5:46:54 pm'),
(62, 1, 'Clement Osei Tutu', 'Fund Raising', 'manager ', '', '3rd December 2014, 6:00:34 pm'),
(63, 3, 'Clement Osei Tutu', 'Allowance Enquiry', 'We would like to know the the status of our allowances', '', '3rd December 2014, 6:02:07 pm'),
(64, 7, 'Appiah Osei Tutu', 'Hey Boi', 'How are you doing', '', '3rd December 2014, 8:17:32 pm'),
(65, 7, 'Appiah Stephen', 'Thanks', 'Thanks Blessed for your good work...keep it up!', '', '6th December 2014, 4:19:37 pm');

-- --------------------------------------------------------

--
-- Table structure for table `managerlog`
--

CREATE TABLE IF NOT EXISTS `managerlog` (
`managerId` int(11) NOT NULL,
  `empId` int(11) NOT NULL,
  `username` varchar(50) COLLATE ascii_bin NOT NULL,
  `password` varchar(50) COLLATE ascii_bin NOT NULL,
  `activate` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=ascii COLLATE=ascii_bin;

--
-- Dumping data for table `managerlog`
--

INSERT INTO `managerlog` (`managerId`, `empId`, `username`, `password`, `activate`) VALUES
(1, 3, 'manager', 'password', 1);

-- --------------------------------------------------------

--
-- Table structure for table `outbox`
--

CREATE TABLE IF NOT EXISTS `outbox` (
`outboxId` int(11) NOT NULL,
  `empId` int(11) NOT NULL,
  `username` varchar(255) COLLATE ascii_bin NOT NULL,
  `title` varchar(255) COLLATE ascii_bin NOT NULL,
  `content` longtext COLLATE ascii_bin NOT NULL,
  `sendDate` varchar(255) COLLATE ascii_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=ascii COLLATE=ascii_bin;

--
-- Dumping data for table `outbox`
--

INSERT INTO `outbox` (`outboxId`, `empId`, `username`, `title`, `content`, `sendDate`) VALUES
(102, 3, 'Appiah Stephen', 'hello Appiah', 'Hi', '3rd December 2014, 11:10:32 am'),
(105, 1, 'Appiah Osei Tutu', 'Hi manager', 'How are you doing?', '3rd December 2014, 12:01:04 pm'),
(106, 3, 'Appiah Stephen', 'Hi Administrator', 'get me the index number of A', '3rd December 2014, 12:07:40 pm'),
(107, 1, 'Appiah Osei Tutu', 'Hi Manager,', 'I would like you to know ', '3rd December 2014, 12:12:32 pm'),
(108, 1, 'Appiah Osei Tutu', 'yes', 'yes', '3rd December 2014, 12:45:48 pm'),
(109, 1, 'Appiah Osei Tutu', 'Dear Sir,', 'I''m glad to inform you that , the system is now working perfectly', '3rd December 2014, 1:10:02 pm'),
(110, 3, 'Appiah Stephen', 'Congratulation', 'you are welcome to Rescoden Company Internation.Enjoy working with us', '3rd December 2014, 1:30:48 pm'),
(112, 1, 'Appiah Osei Tutu', 'Money come', 'come take your', '3rd December 2014, 1:55:46 pm'),
(113, 2, 'Clement Osei Tutu', 'Delay to pay our salary', 'Please we would like to know when you will pay our salary', '3rd December 2014, 1:56:58 pm'),
(117, 2, 'Clement Osei Tutu', 'Fund Raising', 'manager ', '3rd December 2014, 6:00:34 pm'),
(118, 2, 'Clement Osei Tutu', 'Allowance Enquiry', 'We would like to know the the status of our allowances', '3rd December 2014, 6:02:07 pm'),
(119, 1, 'Appiah Osei Tutu', 'Hey Boi', 'How are you doing', '3rd December 2014, 8:17:32 pm'),
(120, 3, 'Appiah Stephen', 'Thanks', 'Thanks Blessed for your good work...keep it up!', '6th December 2014, 4:19:37 pm'),
(121, 1, 'Christine', 'WELCOME', 'welcome to the company mr. walker. we''re glad that you decided to join our company as app developer. wishing you all the best for your upcoming days.', '2nd April 2021, 12:07:04 pm');

-- --------------------------------------------------------

--
-- Table structure for table `payroll`
--

CREATE TABLE IF NOT EXISTS `payroll` (
`payrollId` int(11) NOT NULL,
  `name` varchar(255) COLLATE ascii_bin NOT NULL,
  `empId` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `basicSalary` int(11) NOT NULL,
  `numOfLeaves` int(11) NOT NULL,
  `salaryPerDay` int(11) NOT NULL,
  `deduction` int(11) NOT NULL,
  `netSalary` int(11) NOT NULL,
  `allowance` int(11) NOT NULL,
  `bonus` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=ascii COLLATE=ascii_bin;

--
-- Dumping data for table `payroll`
--

INSERT INTO `payroll` (`payrollId`, `name`, `empId`, `date`, `basicSalary`, `numOfLeaves`, `salaryPerDay`, `deduction`, `netSalary`, `allowance`, `bonus`) VALUES
(90, 'Appiah Osei Tutu', 1, '2016-07-06 23:37:03', 0, 0, 0, 50, 2050, 200, 100),
(91, 'Solomon Otoo', 6, '2016-07-06 23:53:43', 0, 0, 0, 100, 2600, 200, 100),
(92, 'Davidson', 2, '2021-04-02 10:10:16', 0, 0, 0, 27, 338, 60, 35);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
 ADD PRIMARY KEY (`compId`);

--
-- Indexes for table `emplog`
--
ALTER TABLE `emplog`
 ADD PRIMARY KEY (`empLogId`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
 ADD PRIMARY KEY (`empId`);

--
-- Indexes for table `inbox`
--
ALTER TABLE `inbox`
 ADD PRIMARY KEY (`inboxId`);

--
-- Indexes for table `managerlog`
--
ALTER TABLE `managerlog`
 ADD PRIMARY KEY (`managerId`);

--
-- Indexes for table `outbox`
--
ALTER TABLE `outbox`
 ADD PRIMARY KEY (`outboxId`);

--
-- Indexes for table `payroll`
--
ALTER TABLE `payroll`
 ADD PRIMARY KEY (`payrollId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
MODIFY `compId` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `emplog`
--
ALTER TABLE `emplog`
MODIFY `empLogId` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
MODIFY `empId` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `inbox`
--
ALTER TABLE `inbox`
MODIFY `inboxId` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT for table `managerlog`
--
ALTER TABLE `managerlog`
MODIFY `managerId` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `outbox`
--
ALTER TABLE `outbox`
MODIFY `outboxId` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=122;
--
-- AUTO_INCREMENT for table `payroll`
--
ALTER TABLE `payroll`
MODIFY `payrollId` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=93;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
