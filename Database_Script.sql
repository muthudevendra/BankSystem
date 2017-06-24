-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 24, 2017 at 05:29 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `banksys`
--
CREATE DATABASE IF NOT EXISTS `banksys` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `banksys`;

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE IF NOT EXISTS `account` (
  `ACCOUNT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ACCOUNT_TYPE_ID` int(11) NOT NULL,
  `INTEREST_CAL_METHOD` int(11) NOT NULL,
  `MOBILE_BANK_AVAILABILITY` tinyint(1) NOT NULL,
  `ONLINE_BANK_AVAILABILITY` tinyint(1) NOT NULL,
  `PASSBOOK_AVAILABILITY` int(11) NOT NULL,
  `STATUS` int(11) NOT NULL,
  `CREATED_BY` varchar(100) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `LAST_MODIFIED_BY` varchar(100) NOT NULL,
  `LAST_MODIFIED_DATE` date NOT NULL,
  PRIMARY KEY (`ACCOUNT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `account_type`
--

CREATE TABLE IF NOT EXISTS `account_type` (
  `ACCOUNT_TYPE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ACCOUNT_TYPE_NAME` varchar(256) NOT NULL,
  `DESCRIPTION` varchar(512) NOT NULL,
  `MIN_DEPOSIT` double DEFAULT NULL,
  `MIN_AGE` int(11) DEFAULT NULL,
  `MAX_AGE` int(11) DEFAULT NULL,
  `ANNUAL_COST` double DEFAULT NULL,
  `STATUS` int(11) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `CREATED_BY` varchar(100) NOT NULL,
  `LAST_MODIFIED_DATE` date NOT NULL,
  `LAST_MODIFIED_BY` varchar(100) NOT NULL,
  PRIMARY KEY (`ACCOUNT_TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `address_book`
--

CREATE TABLE IF NOT EXISTS `address_book` (
  `ADDRESS_BOOK_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ADDRESS_LINE1` varchar(256) NOT NULL,
  `ADDRESS_LINE2` varchar(256) DEFAULT NULL,
  `ADDRESS_LINE3` varchar(256) DEFAULT NULL,
  `CITY` varchar(256) DEFAULT NULL,
  `COUNTRY` varchar(256) DEFAULT NULL,
  `TELEPHONE` varchar(15) NOT NULL,
  `MOBILE` varchar(15) NOT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `STATUS` int(11) NOT NULL,
  `CREATED_BY` varchar(100) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `LAST_MODIFIED_BY` varchar(100) NOT NULL,
  `LAST_MODIFIED_DATE` date NOT NULL,
  PRIMARY KEY (`ADDRESS_BOOK_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `address_book`
--

INSERT INTO `address_book` (`ADDRESS_BOOK_ID`, `ADDRESS_LINE1`, `ADDRESS_LINE2`, `ADDRESS_LINE3`, `CITY`, `COUNTRY`, `TELEPHONE`, `MOBILE`, `EMAIL`, `STATUS`, `CREATED_BY`, `CREATED_DATE`, `LAST_MODIFIED_BY`, `LAST_MODIFIED_DATE`) VALUES
(1, '186, Aluthgama', 'Bandaragama', NULL, 'Bandaragama', 'Sri Lanka', '0382290674', '0772250808', 'ranasinghe5@gmail.com', 0, 'lakiya', '2017-06-24', 'lakiya', '2017-06-24');

-- --------------------------------------------------------

--
-- Table structure for table `authority`
--

CREATE TABLE IF NOT EXISTS `authority` (
  `AUTHORITY_ID` int(11) NOT NULL AUTO_INCREMENT,
  `AUTHORITY_NAME` varchar(100) NOT NULL,
  `MODULE_ID` int(11) NOT NULL,
  `STATUS` int(11) NOT NULL,
  `CREATED_BY` varchar(100) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `LAST_MODIFIED_BY` varchar(100) NOT NULL,
  `LAST_MODIFIED_DATE` date NOT NULL,
  PRIMARY KEY (`AUTHORITY_ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `authority`
--

INSERT INTO `authority` (`AUTHORITY_ID`, `AUTHORITY_NAME`, `MODULE_ID`, `STATUS`, `CREATED_BY`, `CREATED_DATE`, `LAST_MODIFIED_BY`, `LAST_MODIFIED_DATE`) VALUES
(1, 'ebank@ebank_VIEW', 1, 1, 'SYSTEM', '2017-06-20', 'SYSTEM', '2017-06-20'),
(2, 'admin@admin_VIEW', 2, 1, 'SYSTEM', '2017-06-21', 'SYSTEM', '2017-06-21'),
(3, 'admin@moduleManagement_VIEW', 2, 1, 'SYSTEM', '2017-06-21', 'SYSTEM', '2017-06-21'),
(4, 'admin@moduleManagement_CREATE', 2, 1, 'SYSTEM', '2017-06-23', 'SYSTEM', '2017-06-23'),
(5, 'admin@customerManagement_VIEW', 1, 1, 'SYSTEM', '2017-06-24', 'SYSTEM', '2017-06-24'),
(6, 'admin@customerManagement_CREATE', 1, 1, 'SYSTEM', '2017-06-24', 'SYSTEM', '2017-06-24');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `CUSTOMER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `NIC` varchar(15) NOT NULL,
  `NIC_ISSUE_DATE` date NOT NULL,
  `PASSPORT_NO` varchar(50) DEFAULT NULL,
  `FULL_NAME` varchar(256) NOT NULL,
  `FIRST_NAME` varchar(256) NOT NULL,
  `MIDDLE_NAME` varchar(256) DEFAULT NULL,
  `LAST_NAME` varchar(256) NOT NULL,
  `ADDRESS_BOOK_ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `DATE_OF_BIRTH` date NOT NULL,
  `GENDER` int(11) NOT NULL,
  `MONTHLY_INCOME` double DEFAULT NULL,
  `OCCUPATION` varchar(200) DEFAULT NULL,
  `INCOME_TAX_PAY_STATUS` tinyint(1) DEFAULT NULL,
  `STATUS` int(11) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `CREATED_BY` varchar(100) NOT NULL,
  `LAST_MODIFIED_DATE` date NOT NULL,
  `LAST_MODIFIED_BY` varchar(100) NOT NULL,
  PRIMARY KEY (`CUSTOMER_ID`),
  KEY `FK8ws3y30jy96un88k0n9bv9h2m` (`ADDRESS_BOOK_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CUSTOMER_ID`, `NIC`, `NIC_ISSUE_DATE`, `PASSPORT_NO`, `FULL_NAME`, `FIRST_NAME`, `MIDDLE_NAME`, `LAST_NAME`, `ADDRESS_BOOK_ID`, `USER_ID`, `DATE_OF_BIRTH`, `GENDER`, `MONTHLY_INCOME`, `OCCUPATION`, `INCOME_TAX_PAY_STATUS`, `STATUS`, `CREATED_DATE`, `CREATED_BY`, `LAST_MODIFIED_DATE`, `LAST_MODIFIED_BY`) VALUES
(1, '933582965V', '2017-10-10', '85454111', 'Lakshitha Ranasinghe', 'Lakshitha', '', 'Ranasinghe', 1, 0, '1994-11-12', 1, 60000, 'Software Engineer', NULL, 1, '2017-06-24', 'lakiya', '2017-06-24', 'lakiya');

-- --------------------------------------------------------

--
-- Table structure for table `customer_account`
--

CREATE TABLE IF NOT EXISTS `customer_account` (
  `CUSTOMER_ACCOUNT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ACCOUNT_ID` int(11) NOT NULL,
  `START_DATE` date NOT NULL,
  `END_DATE` date NOT NULL,
  `AVAILABLE_BALANCE` double NOT NULL,
  `CUSTOMER_ID` int(11) NOT NULL,
  `STATUS` int(11) NOT NULL,
  `CREATED_BY` varchar(100) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `LAST_MODIFIED_BY` varchar(100) NOT NULL,
  `LAST_MODIFIED_DATE` date NOT NULL,
  PRIMARY KEY (`CUSTOMER_ACCOUNT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

CREATE TABLE IF NOT EXISTS `module` (
  `MODULE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `MODULE_NAME` varchar(100) NOT NULL,
  `DESCRIPTION` varchar(100) DEFAULT NULL,
  `STATUS` int(11) NOT NULL,
  `CREATED_BY` varchar(100) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `LAST_MODIFIED_BY` varchar(100) NOT NULL,
  `LAST_MODIFIED_DATE` date NOT NULL,
  PRIMARY KEY (`MODULE_ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `module`
--

INSERT INTO `module` (`MODULE_ID`, `MODULE_NAME`, `DESCRIPTION`, `STATUS`, `CREATED_BY`, `CREATED_DATE`, `LAST_MODIFIED_BY`, `LAST_MODIFIED_DATE`) VALUES
(1, 'EBANK', 'EBank Home', 1, 'SYSTEM', '2017-06-20', 'SYSTEM', '2017-06-20'),
(2, 'Admin', 'Admin Module', 1, 'SYSTEM', '2017-06-23', 'SYSTEM', '2017-06-23');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `USER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USERNAME` varchar(100) NOT NULL,
  `PASSWORD` varchar(100) NOT NULL,
  `ENABLED` int(1) NOT NULL,
  `USER_TYPE_ID` int(11) NOT NULL,
  `CREATED_BY` varchar(256) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `LAST_MODIFIED_BY` varchar(256) NOT NULL,
  `LAST_MODIFIED_DATE` date NOT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`USER_ID`, `USERNAME`, `PASSWORD`, `ENABLED`, `USER_TYPE_ID`, `CREATED_BY`, `CREATED_DATE`, `LAST_MODIFIED_BY`, `LAST_MODIFIED_DATE`) VALUES
(2, 'lakiya', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 1, 1, 'SYSTEM', '2017-06-20', 'SYSTEM', '2017-06-20');

-- --------------------------------------------------------

--
-- Table structure for table `user_login_audit`
--

CREATE TABLE IF NOT EXISTS `user_login_audit` (
  `USER_LOGIN_AUDIT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USERNAME` varchar(256) NOT NULL,
  `LOGIN_DATE` date NOT NULL,
  `LOGOUT_DATE` date DEFAULT NULL,
  `REMOTE_ADDRESS` varchar(100) NOT NULL,
  PRIMARY KEY (`USER_LOGIN_AUDIT_ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=54 ;

--
-- Dumping data for table `user_login_audit`
--

INSERT INTO `user_login_audit` (`USER_LOGIN_AUDIT_ID`, `USERNAME`, `LOGIN_DATE`, `LOGOUT_DATE`, `REMOTE_ADDRESS`) VALUES
(1, 'lakiya', '2017-06-23', NULL, '0:0:0:0:0:0:0:1'),
(2, 'lakiya', '2017-06-23', NULL, '0:0:0:0:0:0:0:1'),
(3, 'lakiya', '2017-06-23', NULL, '0:0:0:0:0:0:0:1'),
(4, 'lakiya', '2017-06-23', NULL, '0:0:0:0:0:0:0:1'),
(5, 'lakiya', '2017-06-23', NULL, '0:0:0:0:0:0:0:1'),
(6, 'lakiya', '2017-06-23', NULL, '0:0:0:0:0:0:0:1'),
(7, 'lakiya', '2017-06-23', NULL, '0:0:0:0:0:0:0:1'),
(8, 'lakiya', '2017-06-23', NULL, '0:0:0:0:0:0:0:1'),
(9, 'lakiya', '2017-06-24', NULL, '0:0:0:0:0:0:0:1'),
(10, 'lakiya', '2017-06-24', NULL, '0:0:0:0:0:0:0:1'),
(11, 'lakiya', '2017-06-24', NULL, '0:0:0:0:0:0:0:1'),
(12, 'lakiya', '2017-06-24', NULL, '0:0:0:0:0:0:0:1'),
(13, 'lakiya', '2017-06-24', NULL, '0:0:0:0:0:0:0:1'),
(14, 'lakiya', '2017-06-24', NULL, '0:0:0:0:0:0:0:1'),
(15, 'lakiya', '2017-06-24', NULL, '0:0:0:0:0:0:0:1'),
(16, 'lakiya', '2017-06-24', NULL, '0:0:0:0:0:0:0:1'),
(17, 'lakiya', '2017-06-24', NULL, '0:0:0:0:0:0:0:1'),
(18, 'lakiya', '2017-06-24', NULL, '0:0:0:0:0:0:0:1'),
(19, 'lakiya', '2017-06-24', NULL, '0:0:0:0:0:0:0:1'),
(20, 'lakiya', '2017-06-24', NULL, '0:0:0:0:0:0:0:1'),
(21, 'lakiya', '2017-06-24', NULL, '0:0:0:0:0:0:0:1'),
(22, 'lakiya', '2017-06-24', NULL, '0:0:0:0:0:0:0:1'),
(23, 'lakiya', '2017-06-24', NULL, '0:0:0:0:0:0:0:1'),
(24, 'lakiya', '2017-06-24', NULL, '0:0:0:0:0:0:0:1'),
(25, 'lakiya', '2017-06-24', NULL, '0:0:0:0:0:0:0:1'),
(26, 'lakiya', '2017-06-24', NULL, '0:0:0:0:0:0:0:1'),
(27, 'lakiya', '2017-06-24', NULL, '0:0:0:0:0:0:0:1'),
(28, 'lakiya', '2017-06-24', NULL, '0:0:0:0:0:0:0:1'),
(29, 'lakiya', '2017-06-24', NULL, '0:0:0:0:0:0:0:1'),
(30, 'lakiya', '2017-06-24', NULL, '0:0:0:0:0:0:0:1'),
(31, 'lakiya', '2017-06-24', NULL, '0:0:0:0:0:0:0:1'),
(32, 'lakiya', '2017-06-24', NULL, '0:0:0:0:0:0:0:1'),
(33, 'lakiya', '2017-06-24', NULL, '0:0:0:0:0:0:0:1'),
(34, 'lakiya', '2017-06-24', NULL, '0:0:0:0:0:0:0:1'),
(35, 'lakiya', '2017-06-24', NULL, '0:0:0:0:0:0:0:1'),
(36, 'lakiya', '2017-06-24', NULL, '0:0:0:0:0:0:0:1'),
(37, 'lakiya', '2017-06-24', NULL, '0:0:0:0:0:0:0:1'),
(38, 'lakiya', '2017-06-24', NULL, '0:0:0:0:0:0:0:1'),
(39, 'lakiya', '2017-06-24', NULL, '0:0:0:0:0:0:0:1'),
(40, 'lakiya', '2017-06-24', NULL, '0:0:0:0:0:0:0:1'),
(41, 'lakiya', '2017-06-24', NULL, '0:0:0:0:0:0:0:1'),
(42, 'lakiya', '2017-06-24', NULL, '0:0:0:0:0:0:0:1'),
(43, 'lakiya', '2017-06-24', NULL, '0:0:0:0:0:0:0:1'),
(44, 'lakiya', '2017-06-24', NULL, '0:0:0:0:0:0:0:1'),
(45, 'lakiya', '2017-06-24', NULL, '0:0:0:0:0:0:0:1'),
(46, 'lakiya', '2017-06-24', NULL, '0:0:0:0:0:0:0:1'),
(47, 'lakiya', '2017-06-24', NULL, '0:0:0:0:0:0:0:1'),
(48, 'lakiya', '2017-06-24', NULL, '0:0:0:0:0:0:0:1'),
(49, 'lakiya', '2017-06-24', NULL, '0:0:0:0:0:0:0:1'),
(50, 'lakiya', '2017-06-24', NULL, '0:0:0:0:0:0:0:1'),
(51, 'lakiya', '2017-06-24', NULL, '0:0:0:0:0:0:0:1'),
(52, 'lakiya', '2017-06-24', NULL, '0:0:0:0:0:0:0:1'),
(53, 'lakiya', '2017-06-24', NULL, '0:0:0:0:0:0:0:1');

-- --------------------------------------------------------

--
-- Table structure for table `user_type`
--

CREATE TABLE IF NOT EXISTS `user_type` (
  `USER_TYPE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_TYPE` int(11) NOT NULL,
  `DESCRIPTION` varchar(256) DEFAULT NULL,
  `STATUS` int(11) NOT NULL,
  `CREATED_BY` varchar(256) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `LAST_MODIFIED_BY` varchar(256) NOT NULL,
  `LAST_MODIFIED_DATE` date NOT NULL,
  PRIMARY KEY (`USER_TYPE_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user_type`
--

INSERT INTO `user_type` (`USER_TYPE_ID`, `USER_TYPE`, `DESCRIPTION`, `STATUS`, `CREATED_BY`, `CREATED_DATE`, `LAST_MODIFIED_BY`, `LAST_MODIFIED_DATE`) VALUES
(1, 1, 'ADMIN', 1, 'SYSTEM', '2017-06-20', 'SYSTEM', '2017-06-20');

-- --------------------------------------------------------

--
-- Table structure for table `user_type_authority`
--

CREATE TABLE IF NOT EXISTS `user_type_authority` (
  `USER_TYPE_AUTHORITY_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_TYPE_ID` int(11) NOT NULL,
  `AUTHORITY_ID` int(11) NOT NULL,
  `STATUS` int(11) NOT NULL,
  `CREATED_BY` varchar(100) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `LAST_MODIFIED_BY` varchar(100) NOT NULL,
  `LAST_MODIFIED_DATE` date NOT NULL,
  PRIMARY KEY (`USER_TYPE_AUTHORITY_ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `user_type_authority`
--

INSERT INTO `user_type_authority` (`USER_TYPE_AUTHORITY_ID`, `USER_TYPE_ID`, `AUTHORITY_ID`, `STATUS`, `CREATED_BY`, `CREATED_DATE`, `LAST_MODIFIED_BY`, `LAST_MODIFIED_DATE`) VALUES
(1, 1, 1, 1, 'SYSTEM', '2017-06-20', 'SYSTEM', '2017-06-20'),
(2, 1, 2, 1, 'SYSTEM', '2017-06-21', 'SYSTEM', '2017-06-21'),
(3, 1, 3, 1, 'SYSTEM', '2017-06-21', 'SYSTEM', '2017-06-21'),
(4, 1, 4, 1, 'SYSTEM', '2017-06-23', 'SYSTEM', '2017-06-23'),
(5, 1, 5, 1, 'SYSTEM', '2017-06-24', 'SYSTEM', '2017-06-24'),
(6, 1, 6, 1, 'SYSTEM', '2017-06-24', 'SYSTEM', '2017-06-24');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `FK8ws3y30jy96un88k0n9bv9h2m` FOREIGN KEY (`ADDRESS_BOOK_ID`) REFERENCES `address_book` (`ADDRESS_BOOK_ID`),
  ADD CONSTRAINT `FKotmglp27tdxou3cbyymib718u` FOREIGN KEY (`ADDRESS_BOOK_ID`) REFERENCES `address_book` (`ADDRESS_BOOK_ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
