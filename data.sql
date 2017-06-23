-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2017 at 05:45 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `banksys`
--
CREATE DATABASE IF NOT EXISTS `banksys` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `banksys`;

--
-- Dumping data for table `authority`
--

INSERT INTO `authority` (`AUTHORITY_ID`, `AUTHORITY_NAME`, `MODULE_ID`, `STATUS`, `CREATED_BY`, `CREATED_DATE`, `LAST_MODIFIED_BY`, `LAST_MODIFIED_DATE`) VALUES
(1, 'ebank@ebank_VIEW', 1, 1, 'SYSTEM', '2017-06-20', 'SYSTEM', '2017-06-20'),
(2, 'admin@admin_VIEW', 2, 1, 'SYSTEM', '2017-06-21', 'SYSTEM', '2017-06-21'),
(3, 'module@moduleManagement_VIEW', 2, 1, 'SYSTEM', '2017-06-21', 'SYSTEM', '2017-06-21'),
(4, 'module@moduleManagement_CREATE', 2, 1, 'SYSTEM', '2017-06-23', 'SYSTEM', '2017-06-23');

--
-- Dumping data for table `module`
--

INSERT INTO `module` (`MODULE_ID`, `MODULE_NAME`, `DESCRIPTION`, `STATUS`, `CREATED_BY`, `CREATED_DATE`, `LAST_MODIFIED_BY`, `LAST_MODIFIED_DATE`) VALUES
(1, 'EBANK', 'EBank Home', 1, 'SYSTEM', '2017-06-20', '1', '2017-06-20'),
(2, 'Admin', 'Admin Module', 1, 'SYSTEM', '2017-06-23', 'SYSTEM', '2017-06-23');

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`USER_ID`, `USERNAME`, `PASSWORD`, `ENABLED`, `USER_TYPE_ID`, `CREATED_BY`, `CREATED_DATE`, `LAST_MODIFIED_BY`, `LAST_MODIFIED_DATE`) VALUES
(2, 'lakiya', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 1, 1, 'SYSTEM', '2017-06-20', 'SYSTEM', '2017-06-20');

--
-- Dumping data for table `user_login_audit`
--

INSERT INTO `user_login_audit` (`USER_LOGIN_AUDIT_ID`, `USERNAME`, `LOGIN_DATE`, `LOGOUT_DATE`, `REMOTE_ADDRESS`) VALUES
(1, 'lakiya', '2017-06-23', NULL, '0:0:0:0:0:0:0:1'),
(2, 'lakiya', '2017-06-23', NULL, '0:0:0:0:0:0:0:1'),
(3, 'lakiya', '2017-06-23', NULL, '0:0:0:0:0:0:0:1'),
(4, 'lakiya', '2017-06-23', NULL, '0:0:0:0:0:0:0:1'),
(5, 'lakiya', '2017-06-23', NULL, '0:0:0:0:0:0:0:1'),
(6, 'lakiya', '2017-06-23', NULL, '0:0:0:0:0:0:0:1');

--
-- Dumping data for table `user_type`
--

INSERT INTO `user_type` (`USER_TYPE_ID`, `USER_TYPE`, `DESCRIPTION`, `STATUS`, `CREATED_BY`, `CREATED_DATE`, `LAST_MODIFIED_BY`, `LAST_MODIFIED_DATE`) VALUES
(1, 1, 'ADMIN', 1, 'SYSTEM', '2017-06-20', 'SYSTEM', '2017-06-20');

--
-- Dumping data for table `user_type_authority`
--

INSERT INTO `user_type_authority` (`USER_TYPE_AUTHORITY_ID`, `USER_TYPE_ID`, `AUTHORITY_ID`, `STATUS`, `CREATED_BY`, `CREATED_DATE`, `LAST_MODIFIED_BY`, `LAST_MODIFIED_DATE`) VALUES
(1, 1, 1, 1, 'SYSTEM', '2017-06-20', 'SYSTEM', '2017-06-20'),
(2, 1, 2, 1, 'SYSTEM', '2017-06-21', 'SYSTEM', '2017-06-21'),
(3, 1, 3, 1, 'SYSTEM', '2017-06-21', 'SYSTEM', '2017-06-21'),
(4, 1, 4, 1, 'SYSTEM', '2017-06-23', 'SYSTEM', '2017-06-23');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
