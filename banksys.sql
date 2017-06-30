-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 30, 2017 at 02:56 PM
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
  `MOBILE_BANK_AVAILABILITY` int(1) DEFAULT NULL,
  `ONLINE_BANK_AVAILABILITY` int(1) DEFAULT NULL,
  `PASSBOOK_AVAILABILITY` int(11) DEFAULT NULL,
  `STATUS` int(11) NOT NULL,
  `CREATED_BY` varchar(100) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `LAST_MODIFIED_BY` varchar(100) NOT NULL,
  `LAST_MODIFIED_DATE` date NOT NULL,
  PRIMARY KEY (`ACCOUNT_ID`),
  KEY `FKq9dxl66qvrrtu7rrgchjh5vej` (`ACCOUNT_TYPE_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`ACCOUNT_ID`, `ACCOUNT_TYPE_ID`, `INTEREST_CAL_METHOD`, `MOBILE_BANK_AVAILABILITY`, `ONLINE_BANK_AVAILABILITY`, `PASSBOOK_AVAILABILITY`, `STATUS`, `CREATED_BY`, `CREATED_DATE`, `LAST_MODIFIED_BY`, `LAST_MODIFIED_DATE`) VALUES
(2, 1, 0, NULL, NULL, NULL, 1, 'lakiya', '2017-06-28', 'lakiya', '2017-06-28'),
(4, 1, 1, NULL, 1, NULL, 1, 'lakiya', '2017-06-28', 'lakiya', '2017-06-28');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `account_type`
--

INSERT INTO `account_type` (`ACCOUNT_TYPE_ID`, `ACCOUNT_TYPE_NAME`, `DESCRIPTION`, `MIN_DEPOSIT`, `MIN_AGE`, `MAX_AGE`, `ANNUAL_COST`, `STATUS`, `CREATED_DATE`, `CREATED_BY`, `LAST_MODIFIED_DATE`, `LAST_MODIFIED_BY`) VALUES
(1, 'Savings', 'Normal Savings Account', 500, 18, 70, 150, 1, '2017-06-26', 'lakiya', '2017-06-26', 'lakiya');

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `authority`
--

INSERT INTO `authority` (`AUTHORITY_ID`, `AUTHORITY_NAME`, `MODULE_ID`, `STATUS`, `CREATED_BY`, `CREATED_DATE`, `LAST_MODIFIED_BY`, `LAST_MODIFIED_DATE`) VALUES
(1, 'ebank@ebank_VIEW', 1, 1, 'SYSTEM', '2017-06-20', 'SYSTEM', '2017-06-20'),
(2, 'admin@admin_VIEW', 2, 1, 'SYSTEM', '2017-06-21', 'SYSTEM', '2017-06-21'),
(3, 'admin@moduleManagement_VIEW', 2, 1, 'SYSTEM', '2017-06-21', 'SYSTEM', '2017-06-21'),
(4, 'admin@moduleManagement_CREATE', 2, 1, 'SYSTEM', '2017-06-23', 'SYSTEM', '2017-06-23'),
(5, 'admin@customerManagement_VIEW', 1, 1, 'SYSTEM', '2017-06-24', 'SYSTEM', '2017-06-24'),
(6, 'admin@customerManagement_CREATE', 1, 1, 'SYSTEM', '2017-06-24', 'SYSTEM', '2017-06-24'),
(7, 'admin@customerManagement_UPDATE', 2, 1, 'SYSTEM', '2017-06-26', 'SYSTEM', '2017-06-26'),
(8, 'admin@customerManagement_DELETE', 2, 1, 'SYSTEM', '2017-06-26', 'SYSTEM', '2017-06-26'),
(9, 'admin@accountTypeManagement_VIEW', 2, 1, 'SYSTEM', '2017-06-26', 'SYSTEM', '2017-06-26'),
(10, 'admin@accountTypeManagement_CREATE', 2, 1, 'SYSTEM', '2017-06-26', 'SYSTEM', '2017-06-26'),
(11, 'admin@accountTypeManagement_UPDATE', 2, 1, 'SYSTEM', '2017-06-26', 'SYSTEM', '2017-06-26'),
(12, 'admin@authorityManagement_VIEW', 2, 1, 'SYSTEM', '2017-06-28', 'SYSTEM', '2017-06-28'),
(13, 'admin@authorityManagement_CREATE', 2, 1, 'SYSTEM', '2017-06-28', 'SYSTEM', '2017-06-28'),
(14, 'admin@authorityManagement_UPDATE', 2, 1, 'SYSTEM', '2017-06-28', 'SYSTEM', '2017-06-28'),
(15, 'admin@customerAccountManagement_VIEW', 2, 1, 'lakiya', '2017-06-28', 'lakiya', '2017-06-28'),
(16, 'admin@customerAccountManagement_CREATE', 2, 1, 'lakiya', '2017-06-28', 'lakiya', '2017-06-28'),
(17, 'admin@customerAccountManagement_UPDATE', 2, 1, 'lakiya', '2017-06-28', 'lakiya', '2017-06-28'),
(18, 'ebank@accountInquiry_VIEW', 1, 1, 'lakiya', '2017-06-28', 'lakiya', '2017-06-28'),
(19, 'ebank@ownAccountTransfer_VIEW', 1, 1, 'lakiya', '2017-06-28', 'lakiya', '2017-06-28'),
(20, 'ebank@ownAccountTransfer_TRANSFER', 1, 1, 'lakiya', '2017-06-29', 'lakiya', '2017-06-29');

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE IF NOT EXISTS `bank` (
  `BANK_ID` int(11) NOT NULL AUTO_INCREMENT,
  `BANK_NAME` varchar(100) NOT NULL,
  `STATUS` int(11) NOT NULL,
  PRIMARY KEY (`BANK_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`BANK_ID`, `BANK_NAME`, `STATUS`) VALUES
(1, 'Bank of Ceylon', 0),
(2, 'Hatton National Bank', 0);

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
(1, '933582965V', '2017-10-10', '85454111', 'Lakshitha Ranasinghe', 'Lakshitha', '', 'Ranasinghe', 1, 2, '1994-11-12', 1, 120000, 'Software Engineer', NULL, 1, '2017-06-24', 'lakiya', '2017-06-24', 'lakiya');

-- --------------------------------------------------------

--
-- Table structure for table `customer_account`
--

CREATE TABLE IF NOT EXISTS `customer_account` (
  `CUSTOMER_ACCOUNT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ACCOUNT_ID` int(11) NOT NULL,
  `ACCOUNT_NO` varchar(20) NOT NULL,
  `START_DATE` date NOT NULL,
  `END_DATE` date NOT NULL,
  `AVAILABLE_BALANCE` double NOT NULL,
  `CURRENCY_ID` int(11) NOT NULL,
  `CUSTOMER_ID` int(11) NOT NULL,
  `STATUS` int(11) NOT NULL,
  `VERSION` int(11) NOT NULL,
  `CREATED_BY` varchar(100) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `LAST_MODIFIED_BY` varchar(100) NOT NULL,
  `LAST_MODIFIED_DATE` date NOT NULL,
  PRIMARY KEY (`CUSTOMER_ACCOUNT_ID`),
  KEY `FKq2875cwa4anm45j8yf49stjkv` (`ACCOUNT_ID`),
  KEY `FK7cqiu8phqi0bygrlaqtm01fsj` (`CUSTOMER_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `customer_account`
--

INSERT INTO `customer_account` (`CUSTOMER_ACCOUNT_ID`, `ACCOUNT_ID`, `ACCOUNT_NO`, `START_DATE`, `END_DATE`, `AVAILABLE_BALANCE`, `CURRENCY_ID`, `CUSTOMER_ID`, `STATUS`, `VERSION`, `CREATED_BY`, `CREATED_DATE`, `LAST_MODIFIED_BY`, `LAST_MODIFIED_DATE`) VALUES
(1, 2, '20170628000001', '2017-06-07', '2017-06-30', 14500, 0, 1, 1, 0, 'lakiya', '2017-06-28', 'lakiya', '2017-06-29'),
(2, 4, '20170628000002', '2017-06-02', '2017-06-30', 15500, 0, 1, 1, 0, 'lakiya', '2017-06-28', 'lakiya', '2017-06-29');

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
-- Table structure for table `no_generator`
--

CREATE TABLE IF NOT EXISTS `no_generator` (
  `NO_GEN_ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(100) NOT NULL,
  `PREVIOUS_NO` int(11) NOT NULL,
  `NEXT_NO` int(11) NOT NULL,
  PRIMARY KEY (`NO_GEN_ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `no_generator`
--

INSERT INTO `no_generator` (`NO_GEN_ID`, `NAME`, `PREVIOUS_NO`, `NEXT_NO`) VALUES
(1, 'Account', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `own_account_transfer`
--

CREATE TABLE IF NOT EXISTS `own_account_transfer` (
  `OWN_ACCOUNT_TRANSFER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `FROM_ACCOUNT_ID` int(11) NOT NULL,
  `TO_ACCOUNT_ID` int(100) NOT NULL,
  `AMOUNT` double NOT NULL,
  `ACCOUNT_BALANCE` double NOT NULL,
  `DESCRIPTION` varchar(512) NOT NULL,
  `TRANSFER_DATE` date NOT NULL,
  `STATUS` int(11) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `CREATED_BY` varchar(100) NOT NULL,
  `LAST_MODIFIED_DATE` date NOT NULL,
  `LAST_MODIFIED_BY` varchar(100) NOT NULL,
  PRIMARY KEY (`OWN_ACCOUNT_TRANSFER_ID`),
  KEY `FKhcyb8nrx4kwtv06okxffrg6yn` (`FROM_ACCOUNT_ID`),
  KEY `FKem9nlo66lf07yrgyhgknqh22f` (`TO_ACCOUNT_ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `own_account_transfer`
--

INSERT INTO `own_account_transfer` (`OWN_ACCOUNT_TRANSFER_ID`, `FROM_ACCOUNT_ID`, `TO_ACCOUNT_ID`, `AMOUNT`, `ACCOUNT_BALANCE`, `DESCRIPTION`, `TRANSFER_DATE`, `STATUS`, `CREATED_DATE`, `CREATED_BY`, `LAST_MODIFIED_DATE`, `LAST_MODIFIED_BY`) VALUES
(1, 1, 2, 2500, 0, 'Init Test', '2017-06-29', 1, '2017-06-29', 'lakiya', '2017-06-29', 'lakiya'),
(2, 1, 2, 1300, 0, '', '2017-06-29', 1, '2017-06-29', 'lakiya', '2017-06-29', 'lakiya'),
(3, 1, 2, 200, 0, '', '2017-06-29', 1, '2017-06-29', 'lakiya', '2017-06-29', 'lakiya'),
(4, 2, 1, 3500, 15500, '', '2017-06-29', 1, '2017-06-29', 'lakiya', '2017-06-29', 'lakiya');

-- --------------------------------------------------------

--
-- Table structure for table `third_party_transfer`
--

CREATE TABLE IF NOT EXISTS `third_party_transfer` (
  `THIRD_PARTY_ACCOUNT_TRANSFER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `FROM_ACCOUNT_ID` int(11) NOT NULL,
  `AMOUNT` double NOT NULL,
  `ACCOUNT_BALANCE` double NOT NULL,
  `DESCRIPTION` varchar(100) DEFAULT NULL,
  `TRANSFER_DATE` date NOT NULL,
  `STATUS` int(11) NOT NULL,
  `RECEIVER_NAME` varchar(100) NOT NULL,
  `BANK` varchar(100) NOT NULL,
  `BRANCH` varchar(100) NOT NULL,
  `ACCOUNT_NO` varchar(100) NOT NULL,
  `CREATED_BY` varchar(100) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `LAST_MODIFIED_BY` varchar(100) NOT NULL,
  `LAST_MODIFIED_DATE` date NOT NULL,
  PRIMARY KEY (`THIRD_PARTY_ACCOUNT_TRANSFER_ID`),
  KEY `FKtjhpengc5upa0i37wybdv1v97` (`FROM_ACCOUNT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=126 ;

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
(53, 'lakiya', '2017-06-24', NULL, '0:0:0:0:0:0:0:1'),
(54, 'lakiya', '2017-06-24', NULL, '0:0:0:0:0:0:0:1'),
(55, 'lakiya', '2017-06-24', NULL, '0:0:0:0:0:0:0:1'),
(56, 'lakiya', '2017-06-24', NULL, '0:0:0:0:0:0:0:1'),
(57, 'lakiya', '2017-06-24', NULL, '0:0:0:0:0:0:0:1'),
(58, 'lakiya', '2017-06-24', NULL, '0:0:0:0:0:0:0:1'),
(59, 'lakiya', '2017-06-26', NULL, '0:0:0:0:0:0:0:1'),
(60, 'lakiya', '2017-06-26', NULL, '0:0:0:0:0:0:0:1'),
(61, 'lakiya', '2017-06-26', NULL, '0:0:0:0:0:0:0:1'),
(62, 'lakiya', '2017-06-26', NULL, '0:0:0:0:0:0:0:1'),
(63, 'lakiya', '2017-06-27', NULL, '0:0:0:0:0:0:0:1'),
(64, 'lakiya', '2017-06-27', NULL, '0:0:0:0:0:0:0:1'),
(65, 'lakiya', '2017-06-27', NULL, '0:0:0:0:0:0:0:1'),
(66, 'lakiya', '2017-06-27', NULL, '0:0:0:0:0:0:0:1'),
(67, 'lakiya', '2017-06-28', NULL, '0:0:0:0:0:0:0:1'),
(68, 'lakiya', '2017-06-28', NULL, '0:0:0:0:0:0:0:1'),
(69, 'lakiya', '2017-06-28', NULL, '0:0:0:0:0:0:0:1'),
(70, 'lakiya', '2017-06-28', NULL, '0:0:0:0:0:0:0:1'),
(71, 'lakiya', '2017-06-28', NULL, '0:0:0:0:0:0:0:1'),
(72, 'lakiya', '2017-06-28', NULL, '0:0:0:0:0:0:0:1'),
(73, 'lakiya', '2017-06-28', NULL, '0:0:0:0:0:0:0:1'),
(74, 'lakiya', '2017-06-28', NULL, '0:0:0:0:0:0:0:1'),
(75, 'lakiya', '2017-06-28', NULL, '0:0:0:0:0:0:0:1'),
(76, 'lakiya', '2017-06-28', NULL, '0:0:0:0:0:0:0:1'),
(77, 'lakiya', '2017-06-28', NULL, '0:0:0:0:0:0:0:1'),
(78, 'lakiya', '2017-06-28', NULL, '0:0:0:0:0:0:0:1'),
(79, 'lakiya', '2017-06-28', NULL, '0:0:0:0:0:0:0:1'),
(80, 'lakiya', '2017-06-28', NULL, '0:0:0:0:0:0:0:1'),
(81, 'lakiya', '2017-06-28', NULL, '0:0:0:0:0:0:0:1'),
(82, 'lakiya', '2017-06-28', NULL, '0:0:0:0:0:0:0:1'),
(83, 'lakiya', '2017-06-28', NULL, '0:0:0:0:0:0:0:1'),
(84, 'lakiya', '2017-06-29', NULL, '0:0:0:0:0:0:0:1'),
(85, 'lakiya', '2017-06-29', NULL, '0:0:0:0:0:0:0:1'),
(86, 'lakiya', '2017-06-29', NULL, '0:0:0:0:0:0:0:1'),
(87, 'lakiya', '2017-06-29', NULL, '0:0:0:0:0:0:0:1'),
(88, 'lakiya', '2017-06-29', NULL, '0:0:0:0:0:0:0:1'),
(89, 'lakiya', '2017-06-29', NULL, '0:0:0:0:0:0:0:1'),
(90, 'lakiya', '2017-06-29', NULL, '0:0:0:0:0:0:0:1'),
(91, 'lakiya', '2017-06-30', NULL, '0:0:0:0:0:0:0:1'),
(92, 'lakiya', '2017-06-30', NULL, '0:0:0:0:0:0:0:1'),
(93, 'lakiya', '2017-06-30', NULL, '0:0:0:0:0:0:0:1'),
(94, 'lakiya', '2017-06-30', NULL, '0:0:0:0:0:0:0:1'),
(95, 'lakiya', '2017-06-30', NULL, '0:0:0:0:0:0:0:1'),
(96, 'lakiya', '2017-06-30', NULL, '0:0:0:0:0:0:0:1'),
(97, 'lakiya', '2017-06-30', NULL, '0:0:0:0:0:0:0:1'),
(98, 'lakiya', '2017-06-30', NULL, '0:0:0:0:0:0:0:1'),
(99, 'lakiya', '2017-06-30', NULL, '0:0:0:0:0:0:0:1'),
(100, 'lakiya', '2017-06-30', NULL, '0:0:0:0:0:0:0:1'),
(101, 'lakiya', '2017-06-30', NULL, '0:0:0:0:0:0:0:1'),
(102, 'lakiya', '2017-06-30', NULL, '0:0:0:0:0:0:0:1'),
(103, 'lakiya', '2017-06-30', NULL, '0:0:0:0:0:0:0:1'),
(104, 'lakiya', '2017-06-30', NULL, '0:0:0:0:0:0:0:1'),
(105, 'lakiya', '2017-06-30', NULL, '0:0:0:0:0:0:0:1'),
(106, 'lakiya', '2017-06-30', NULL, '0:0:0:0:0:0:0:1'),
(107, 'lakiya', '2017-06-30', NULL, '0:0:0:0:0:0:0:1'),
(108, 'lakiya', '2017-06-30', NULL, '0:0:0:0:0:0:0:1'),
(109, 'lakiya', '2017-06-30', NULL, '0:0:0:0:0:0:0:1'),
(110, 'lakiya', '2017-06-30', NULL, '0:0:0:0:0:0:0:1'),
(111, 'lakiya', '2017-06-30', NULL, '0:0:0:0:0:0:0:1'),
(112, 'lakiya', '2017-06-30', NULL, '0:0:0:0:0:0:0:1'),
(113, 'lakiya', '2017-06-30', NULL, '0:0:0:0:0:0:0:1'),
(114, 'lakiya', '2017-06-30', NULL, '0:0:0:0:0:0:0:1'),
(115, 'lakiya', '2017-06-30', NULL, '0:0:0:0:0:0:0:1'),
(116, 'lakiya', '2017-06-30', NULL, '0:0:0:0:0:0:0:1'),
(117, 'lakiya', '2017-06-30', NULL, '0:0:0:0:0:0:0:1'),
(118, 'lakiya', '2017-06-30', NULL, '0:0:0:0:0:0:0:1'),
(119, 'lakiya', '2017-06-30', NULL, '0:0:0:0:0:0:0:1'),
(120, 'lakiya', '2017-06-30', NULL, '0:0:0:0:0:0:0:1'),
(121, 'lakiya', '2017-06-30', NULL, '0:0:0:0:0:0:0:1'),
(122, 'lakiya', '2017-06-30', NULL, '0:0:0:0:0:0:0:1'),
(123, 'lakiya', '2017-06-30', NULL, '0:0:0:0:0:0:0:1'),
(124, 'lakiya', '2017-06-30', NULL, '0:0:0:0:0:0:0:1'),
(125, 'lakiya', '2017-06-30', NULL, '0:0:0:0:0:0:0:1');

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `user_type_authority`
--

INSERT INTO `user_type_authority` (`USER_TYPE_AUTHORITY_ID`, `USER_TYPE_ID`, `AUTHORITY_ID`, `STATUS`, `CREATED_BY`, `CREATED_DATE`, `LAST_MODIFIED_BY`, `LAST_MODIFIED_DATE`) VALUES
(1, 1, 1, 1, 'SYSTEM', '2017-06-20', 'SYSTEM', '2017-06-20'),
(2, 1, 2, 1, 'SYSTEM', '2017-06-21', 'SYSTEM', '2017-06-21'),
(3, 1, 3, 1, 'SYSTEM', '2017-06-21', 'SYSTEM', '2017-06-21'),
(4, 1, 4, 1, 'SYSTEM', '2017-06-23', 'SYSTEM', '2017-06-23'),
(5, 1, 5, 1, 'SYSTEM', '2017-06-24', 'SYSTEM', '2017-06-24'),
(6, 1, 6, 1, 'SYSTEM', '2017-06-24', 'SYSTEM', '2017-06-24'),
(7, 1, 7, 1, 'SYSTEM', '2017-06-26', 'SYSTEM', '2017-06-26'),
(8, 1, 8, 1, 'SYSTEM', '2017-06-26', 'SYSTEM', '2017-06-26'),
(9, 1, 9, 1, 'SYSTEM', '2017-06-26', 'SYSTEM', '2017-06-26'),
(10, 1, 10, 1, 'SYSTEM', '2017-06-26', 'SYSTEM', '2017-06-26'),
(11, 1, 11, 1, 'SYSTEM', '2017-06-26', 'SYSTEM', '2017-06-26'),
(12, 1, 12, 1, 'SYSTEM', '2017-06-28', 'SYSTEM', '2017-06-28'),
(13, 1, 13, 1, 'SYSTEM', '2017-06-28', 'SYSTEM', '2017-06-28'),
(14, 1, 14, 1, 'SYSTEM', '2017-06-28', 'SYSTEM', '2017-06-28'),
(15, 1, 15, 1, 'SYSTEM', '2017-06-28', 'SYSTEM', '2017-06-28'),
(16, 1, 16, 1, 'SYSTEM', '2017-06-28', 'SYSTEM', '2017-06-28'),
(17, 1, 17, 1, 'SYSTEM', '2017-06-28', 'SYSTEM', '2017-06-28'),
(18, 1, 18, 1, 'SYSTEM', '2017-06-28', 'SYSTEM', '2017-06-28'),
(19, 1, 19, 1, 'SYSTEM', '2017-06-28', 'SYSTEM', '2017-06-28'),
(20, 1, 20, 1, 'SYSTEM', '2017-06-28', 'SYSTEM', '2017-06-28');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `FKq9dxl66qvrrtu7rrgchjh5vej` FOREIGN KEY (`ACCOUNT_TYPE_ID`) REFERENCES `account_type` (`ACCOUNT_TYPE_ID`);

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `FK8ws3y30jy96un88k0n9bv9h2m` FOREIGN KEY (`ADDRESS_BOOK_ID`) REFERENCES `address_book` (`ADDRESS_BOOK_ID`),
  ADD CONSTRAINT `FKotmglp27tdxou3cbyymib718u` FOREIGN KEY (`ADDRESS_BOOK_ID`) REFERENCES `address_book` (`ADDRESS_BOOK_ID`);

--
-- Constraints for table `customer_account`
--
ALTER TABLE `customer_account`
  ADD CONSTRAINT `FK7cqiu8phqi0bygrlaqtm01fsj` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `customer` (`CUSTOMER_ID`),
  ADD CONSTRAINT `FKq2875cwa4anm45j8yf49stjkv` FOREIGN KEY (`ACCOUNT_ID`) REFERENCES `account` (`ACCOUNT_ID`);

--
-- Constraints for table `third_party_transfer`
--
ALTER TABLE `third_party_transfer`
  ADD CONSTRAINT `FKtjhpengc5upa0i37wybdv1v97` FOREIGN KEY (`FROM_ACCOUNT_ID`) REFERENCES `customer_account` (`CUSTOMER_ACCOUNT_ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
