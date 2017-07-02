-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 02, 2017 at 12:15 PM
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `address_book`
--

INSERT INTO `address_book` (`ADDRESS_BOOK_ID`, `ADDRESS_LINE1`, `ADDRESS_LINE2`, `ADDRESS_LINE3`, `CITY`, `COUNTRY`, `TELEPHONE`, `MOBILE`, `EMAIL`, `STATUS`, `CREATED_BY`, `CREATED_DATE`, `LAST_MODIFIED_BY`, `LAST_MODIFIED_DATE`) VALUES
(1, '186, Aluthgama', 'Bandaragama', NULL, 'Bandaragama', 'Sri Lanka', '0382290674', '0772250808', 'ranasinghe5@gmail.com', 0, 'lakiya', '2017-06-24', 'lakiya', '2017-06-24'),
(4, '158', 'Colombo', NULL, 'Colombo', 'Sri Lanka', '0335565555', '0772250828', 'muthumin@gmail.com', 1, 'lakiya', '2017-07-01', 'lakiya', '2017-07-01');

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
  `CREATED_DATE` datetime NOT NULL,
  `LAST_MODIFIED_BY` varchar(100) NOT NULL,
  `LAST_MODIFIED_DATE` datetime NOT NULL,
  PRIMARY KEY (`AUTHORITY_ID`),
  UNIQUE KEY `AUTHORITY_NAME` (`AUTHORITY_NAME`),
  KEY `FK14kg8hwua63ec3dqkek2u9li7` (`MODULE_ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=43 ;

--
-- Dumping data for table `authority`
--

INSERT INTO `authority` (`AUTHORITY_ID`, `AUTHORITY_NAME`, `MODULE_ID`, `STATUS`, `CREATED_BY`, `CREATED_DATE`, `LAST_MODIFIED_BY`, `LAST_MODIFIED_DATE`) VALUES
(1, 'ebank@ebank_VIEW', 1, 1, 'SYSTEM', '2017-06-20 00:00:00', 'SYSTEM', '2017-06-20 00:00:00'),
(2, 'admin@admin_VIEW', 2, 1, 'SYSTEM', '2017-06-21 00:00:00', 'SYSTEM', '2017-06-21 00:00:00'),
(3, 'admin@moduleManagement_VIEW', 2, 1, 'SYSTEM', '2017-06-21 00:00:00', 'SYSTEM', '2017-06-21 00:00:00'),
(4, 'admin@moduleManagement_CREATE', 2, 1, 'SYSTEM', '2017-06-23 00:00:00', 'SYSTEM', '2017-06-23 00:00:00'),
(5, 'admin@customerManagement_VIEW', 1, 1, 'SYSTEM', '2017-06-24 00:00:00', 'SYSTEM', '2017-06-24 00:00:00'),
(6, 'admin@customerManagement_CREATE', 1, 1, 'SYSTEM', '2017-06-24 00:00:00', 'SYSTEM', '2017-06-24 00:00:00'),
(7, 'admin@customerManagement_UPDATE', 2, 1, 'SYSTEM', '2017-06-26 00:00:00', 'SYSTEM', '2017-06-26 00:00:00'),
(8, 'admin@customerManagement_DELETE', 2, 1, 'SYSTEM', '2017-06-26 00:00:00', 'SYSTEM', '2017-06-26 00:00:00'),
(9, 'admin@accountTypeManagement_VIEW', 2, 1, 'SYSTEM', '2017-06-26 00:00:00', 'SYSTEM', '2017-06-26 00:00:00'),
(10, 'admin@accountTypeManagement_CREATE', 2, 1, 'SYSTEM', '2017-06-26 00:00:00', 'SYSTEM', '2017-06-26 00:00:00'),
(11, 'admin@accountTypeManagement_UPDATE', 2, 1, 'SYSTEM', '2017-06-26 00:00:00', 'SYSTEM', '2017-06-26 00:00:00'),
(12, 'admin@authorityManagement_VIEW', 2, 1, 'SYSTEM', '2017-06-28 00:00:00', 'SYSTEM', '2017-06-28 00:00:00'),
(13, 'admin@authorityManagement_CREATE', 2, 1, 'SYSTEM', '2017-06-28 00:00:00', 'SYSTEM', '2017-06-28 00:00:00'),
(14, 'admin@authorityManagement_UPDATE', 2, 1, 'SYSTEM', '2017-06-28 00:00:00', 'SYSTEM', '2017-06-28 00:00:00'),
(15, 'admin@customerAccountManagement_VIEW', 2, 1, 'lakiya', '2017-06-28 00:00:00', 'lakiya', '2017-06-28 00:00:00'),
(16, 'admin@customerAccountManagement_CREATE', 2, 1, 'lakiya', '2017-06-28 00:00:00', 'lakiya', '2017-06-28 00:00:00'),
(17, 'admin@customerAccountManagement_UPDATE', 2, 1, 'lakiya', '2017-06-28 00:00:00', 'lakiya', '2017-06-28 00:00:00'),
(18, 'ebank@accountInquiry_VIEW', 1, 1, 'lakiya', '2017-06-28 00:00:00', 'lakiya', '2017-06-28 00:00:00'),
(19, 'ebank@ownAccountTransfer_VIEW', 1, 1, 'lakiya', '2017-06-28 00:00:00', 'lakiya', '2017-06-28 00:00:00'),
(20, 'ebank@ownAccountTransfer_TRANSFER', 1, 1, 'lakiya', '2017-06-29 00:00:00', 'lakiya', '2017-06-29 00:00:00'),
(21, 'ebank@thirdPartyAccountTransfer_VIEW', 1, 1, 'lakiya', '2017-06-30 00:00:00', 'lakiya', '2017-06-30 00:00:00'),
(22, 'ebank@thirdPartyAccountTransfer_TRANSFER', 1, 1, 'lakiya', '2017-06-30 00:00:00', 'lakiya', '2017-06-30 00:00:00'),
(23, 'ebank@billPayment_VIEW', 1, 1, 'lakiya', '2017-07-02 00:00:00', 'lakiya', '2017-07-02 00:00:00'),
(24, 'ebank@billPayment_PAY', 1, 1, 'lakiya', '2017-07-02 00:00:00', 'lakiya', '2017-07-02 00:00:00'),
(25, 'ebank@loginHistory_VIEW', 1, 1, 'lakiya', '2017-07-02 00:00:00', 'lakiya', '2017-07-02 00:00:00'),
(26, 'ebank@paymentHistory_VIEW', 1, 1, 'lakiya', '2017-07-02 00:00:00', 'lakiya', '2017-07-02 00:00:00'),
(27, 'admin@moduleManagement_UPDATE', 2, 1, 'lakiya', '2017-07-02 00:00:00', 'lakiya', '2017-07-02 00:00:00'),
(28, 'admin@moduleManagement_DELETE', 2, 1, 'lakiya', '2017-07-02 00:00:00', 'lakiya', '2017-07-02 00:00:00'),
(29, 'Test', 1, 0, 'lakiya', '2017-07-02 00:00:00', 'lakiya', '2017-07-02 00:00:00'),
(30, 'Test123232', 1, 0, 'lakiya', '2017-07-02 00:00:00', 'lakiya', '2017-07-02 00:00:00'),
(31, 'admin@authorityManagement_DELETE', 2, 1, 'lakiya', '2017-07-02 00:00:00', 'lakiya', '2017-07-02 00:00:00'),
(32, 'admin@userTypeManagement_VIEW', 2, 1, 'lakiya', '2017-07-02 00:00:00', 'lakiya', '2017-07-02 00:00:00'),
(33, 'admin@userTypeManagement_CREATE', 2, 1, 'lakiya', '2017-07-02 00:00:00', 'lakiya', '2017-07-02 00:00:00'),
(34, 'admin@userTypeManagement_UPDATE', 2, 1, 'lakiya', '2017-07-02 00:00:00', 'lakiya', '2017-07-02 00:00:00'),
(35, 'admin@moduleSearch_VIEW', 2, 1, 'lakiya', '2017-07-02 16:33:34', 'lakiya', '2017-07-02 16:33:34'),
(36, 'admin@authoritySearch_VIEW', 2, 1, 'lakiya', '2017-07-02 16:33:55', 'lakiya', '2017-07-02 16:33:55'),
(37, 'admin@userTypeSearch_VIEW', 2, 1, 'lakiya', '2017-07-02 16:46:53', 'lakiya', '2017-07-02 16:46:53'),
(38, 'admin@userTypeManagement_DELETE', 2, 1, 'lakiya', '2017-07-02 16:48:58', 'lakiya', '2017-07-02 16:48:58'),
(39, 'admin@userTypeAuthorityManagement_VIEW', 2, 1, 'lakiya', '2017-07-02 16:53:39', 'lakiya', '2017-07-02 16:53:39'),
(40, 'admin@userTypeAuthorityManagement_CREATE', 2, 1, 'lakiya', '2017-07-02 16:53:48', 'lakiya', '2017-07-02 16:53:48'),
(41, 'admin@userTypeAuthorityManagement_UPDATE', 2, 1, 'lakiya', '2017-07-02 16:55:20', 'lakiya', '2017-07-02 16:55:20'),
(42, 'admin@accountTypeSearch_VIEW', 2, 1, 'lakiya', '2017-07-02 17:37:14', 'lakiya', '2017-07-02 17:37:14');

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
(1, 'Bank of Ceylon', 1),
(2, 'Hatton National Bank', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bill_payment`
--

CREATE TABLE IF NOT EXISTS `bill_payment` (
  `BILL_PAYMENT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `FROM_ACCOUNT_ID` int(11) NOT NULL,
  `PAYMENT_TYPE` int(11) NOT NULL,
  `REFERENCE_NO` varchar(100) NOT NULL,
  `PAYMENT_DATE` datetime NOT NULL,
  `AMOUNT` double NOT NULL,
  `ACCOUNT_BALANCE` double NOT NULL,
  `TRANSFER_STATUS` int(11) NOT NULL,
  `STATUS` int(11) NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `CREATED_BY` varchar(100) NOT NULL,
  `LAST_MODIFIED_DATE` datetime NOT NULL,
  `LAST_MODIFIED_BY` varchar(100) NOT NULL,
  PRIMARY KEY (`BILL_PAYMENT_ID`),
  KEY `FKr4xriewyem6ccebck5buaeu87` (`FROM_ACCOUNT_ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `bill_payment`
--

INSERT INTO `bill_payment` (`BILL_PAYMENT_ID`, `FROM_ACCOUNT_ID`, `PAYMENT_TYPE`, `REFERENCE_NO`, `PAYMENT_DATE`, `AMOUNT`, `ACCOUNT_BALANCE`, `TRANSFER_STATUS`, `STATUS`, `CREATED_DATE`, `CREATED_BY`, `LAST_MODIFIED_DATE`, `LAST_MODIFIED_BY`) VALUES
(1, 2, 0, '0772250828', '2017-07-02 10:08:00', 300, 16000, 0, 1, '2017-07-02 10:07:19', 'lakiya', '2017-07-02 10:07:19', 'lakiya'),
(2, 1, 0, '0772250828', '2017-07-02 00:00:00', 100, 13000, 0, 1, '2017-07-02 14:51:46', 'lakiya', '2017-07-02 14:51:46', 'lakiya');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CUSTOMER_ID`, `NIC`, `NIC_ISSUE_DATE`, `PASSPORT_NO`, `FULL_NAME`, `FIRST_NAME`, `MIDDLE_NAME`, `LAST_NAME`, `ADDRESS_BOOK_ID`, `USER_ID`, `DATE_OF_BIRTH`, `GENDER`, `MONTHLY_INCOME`, `OCCUPATION`, `INCOME_TAX_PAY_STATUS`, `STATUS`, `CREATED_DATE`, `CREATED_BY`, `LAST_MODIFIED_DATE`, `LAST_MODIFIED_BY`) VALUES
(1, '933582965V', '2017-10-10', '85454111', 'Lakshitha Ranasinghe', 'Lakshitha', '', 'Ranasinghe', 1, 2, '1994-11-12', 1, 120000, 'Software Engineer', NULL, 1, '2017-06-24', 'lakiya', '2017-06-24', 'lakiya'),
(2, '939548745V', '1993-01-24', '12123333-233', 'Muthu Devendra', 'muthu', '', 'Devendra', 4, 3, '1993-07-05', 1, 200, 'Developer', NULL, 1, '2017-07-01', 'lakiya', '2017-07-01', 'lakiya');

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
(1, 2, '20170628000001', '2017-06-07', '2017-06-30', 13000, 0, 1, 1, 0, 'lakiya', '2017-06-28', 'lakiya', '2017-07-02'),
(2, 4, '20170628000002', '2017-06-02', '2017-06-30', 11900, 0, 1, 1, 0, 'lakiya', '2017-06-28', 'lakiya', '2017-07-02');

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
  `CREATED_DATE` datetime NOT NULL,
  `LAST_MODIFIED_BY` varchar(100) NOT NULL,
  `LAST_MODIFIED_DATE` datetime NOT NULL,
  PRIMARY KEY (`MODULE_ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `module`
--

INSERT INTO `module` (`MODULE_ID`, `MODULE_NAME`, `DESCRIPTION`, `STATUS`, `CREATED_BY`, `CREATED_DATE`, `LAST_MODIFIED_BY`, `LAST_MODIFIED_DATE`) VALUES
(1, 'EBank', 'EBank', 1, 'SYSTEM', '2017-06-20 00:00:00', 'SYSTEM', '2017-06-20 00:00:00'),
(2, 'Admin', 'Admin', 1, 'SYSTEM', '2017-06-23 00:00:00', 'SYSTEM', '2017-06-23 00:00:00');

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
  `FROM_ACCOUNT_BALANCE` double NOT NULL,
  `TO_ACCOUNT_BALANCE` double NOT NULL,
  `DESCRIPTION` varchar(512) NOT NULL,
  `TRANSFER_DATE` datetime NOT NULL,
  `STATUS` int(11) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `CREATED_BY` varchar(100) NOT NULL,
  `LAST_MODIFIED_DATE` date NOT NULL,
  `LAST_MODIFIED_BY` varchar(100) NOT NULL,
  PRIMARY KEY (`OWN_ACCOUNT_TRANSFER_ID`),
  KEY `FKhcyb8nrx4kwtv06okxffrg6yn` (`FROM_ACCOUNT_ID`),
  KEY `FKem9nlo66lf07yrgyhgknqh22f` (`TO_ACCOUNT_ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `own_account_transfer`
--

INSERT INTO `own_account_transfer` (`OWN_ACCOUNT_TRANSFER_ID`, `FROM_ACCOUNT_ID`, `TO_ACCOUNT_ID`, `AMOUNT`, `FROM_ACCOUNT_BALANCE`, `TO_ACCOUNT_BALANCE`, `DESCRIPTION`, `TRANSFER_DATE`, `STATUS`, `CREATED_DATE`, `CREATED_BY`, `LAST_MODIFIED_DATE`, `LAST_MODIFIED_BY`) VALUES
(1, 2, 1, 700, 16000, 13700, 'Fund Transfer', '2017-07-02 10:01:30', 1, '2017-07-02', 'lakiya', '2017-07-02', 'lakiya'),
(2, 1, 2, 300, 13400, 16300, 'ReTransfer', '2017-07-02 10:01:54', 1, '2017-07-02', 'lakiya', '2017-07-02', 'lakiya'),
(3, 2, 1, 200, 15800, 13600, 'Fund Transfer', '2017-07-02 10:22:44', 1, '2017-07-02', 'lakiya', '2017-07-02', 'lakiya'),
(4, 1, 2, 400, 13200, 16200, 'Fund Retransfer', '2017-07-02 10:26:39', 1, '2017-07-02', 'lakiya', '2017-07-02', 'lakiya'),
(5, 1, 2, 200, 13000, 16400, 'Fund Transfer', '2017-07-02 10:35:27', 1, '2017-07-02', 'lakiya', '2017-07-02', 'lakiya'),
(6, 2, 1, 400, 16000, 13400, 'Fund Transfer', '2017-07-02 10:35:55', 1, '2017-07-02', 'lakiya', '2017-07-02', 'lakiya'),
(7, 1, 2, 200, 13200, 16200, 'Fund Transfer', '2017-07-02 11:00:34', 1, '2017-07-02', 'lakiya', '2017-07-02', 'lakiya'),
(8, 2, 1, 4000, 12200, 12800, 'Fund Transfer', '2017-07-02 13:01:03', 1, '2017-07-02', 'lakiya', '2017-07-02', 'lakiya'),
(9, 2, 1, 300, 11900, 13100, 'Fund Transfer', '2017-07-02 13:03:00', 1, '2017-07-02', 'lakiya', '2017-07-02', 'lakiya');

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
  `TRANSFER_DATE` datetime NOT NULL,
  `STATUS` int(11) NOT NULL,
  `TRANSFER_STATUS` int(11) NOT NULL,
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `third_party_transfer`
--

INSERT INTO `third_party_transfer` (`THIRD_PARTY_ACCOUNT_TRANSFER_ID`, `FROM_ACCOUNT_ID`, `AMOUNT`, `ACCOUNT_BALANCE`, `DESCRIPTION`, `TRANSFER_DATE`, `STATUS`, `TRANSFER_STATUS`, `RECEIVER_NAME`, `BANK`, `BRANCH`, `ACCOUNT_NO`, `CREATED_BY`, `CREATED_DATE`, `LAST_MODIFIED_BY`, `LAST_MODIFIED_DATE`) VALUES
(7, 1, 400, 12800, NULL, '2017-07-02 00:00:00', 1, 0, 'Lakshitha Ranasinghe', '2', 'Colombo', '1821000000001', 'lakiya', '2017-07-02', 'lakiya', '2017-07-02'),
(8, 1, 250, 12550, NULL, '2017-07-02 00:00:00', 1, 0, 'Lakshitha Ranasinghe', '2', 'Colombo', '1821000000001', 'lakiya', '2017-07-02', 'lakiya', '2017-07-02'),
(9, 1, 300, 12250, NULL, '2017-07-02 00:00:00', 1, 0, 'Lakshitha Ranasinghe', '1', 'Colombo', '1821000000001', 'lakiya', '2017-07-02', 'lakiya', '2017-07-02'),
(10, 1, 300, 11950, NULL, '2017-07-02 00:00:00', 1, 0, 'Lakshitha Ranasinghe', '1', 'Colombo', '1821000000001', 'lakiya', '2017-07-02', 'lakiya', '2017-07-02'),
(11, 1, 300, 11650, NULL, '2017-07-02 00:00:00', 1, 0, 'Lakshitha Ranasinghe', '1', 'Colombo', '1821000000001', 'lakiya', '2017-07-02', 'lakiya', '2017-07-02'),
(12, 1, 400, 11250, NULL, '2017-07-02 00:00:00', 1, 0, 'Lakshitha Ranasinghe', '2', 'Colombo', '1821000000001', 'lakiya', '2017-07-02', 'lakiya', '2017-07-02'),
(13, 1, 400, 10850, NULL, '2017-07-02 00:00:00', 1, 0, 'Lakshitha Ranasinghe', '2', 'Colombo', '1821000000001', 'lakiya', '2017-07-02', 'lakiya', '2017-07-02'),
(14, 1, 350, 10500, NULL, '2017-07-02 00:00:00', 1, 0, 'Lakshitha Ranasinghe', '1', 'Colombo', '1821000000001', 'lakiya', '2017-07-02', 'lakiya', '2017-07-02'),
(15, 1, 350, 10150, NULL, '2017-07-02 00:00:00', 1, 0, 'Lakshitha Ranasinghe', '1', 'Colombo', '1821000000001', 'lakiya', '2017-07-02', 'lakiya', '2017-07-02'),
(16, 1, 350, 9800, NULL, '2017-07-02 00:00:00', 1, 0, 'Lakshitha Ranasinghe', '1', 'Colombo', '1821000000001', 'lakiya', '2017-07-02', 'lakiya', '2017-07-02'),
(17, 1, 300, 9500, NULL, '2017-07-02 00:00:00', 1, 0, 'Lakshitha Ranasinghe', '1', 'Colombo', '1821000000001', 'lakiya', '2017-07-02', 'lakiya', '2017-07-02'),
(18, 1, 400, 9100, NULL, '2017-07-02 00:00:00', 1, 0, 'Lakshitha Ranasinghe', '2', 'Colombo', '1821000000001', 'lakiya', '2017-07-02', 'lakiya', '2017-07-02'),
(19, 1, 300, 8800, NULL, '2017-07-02 00:00:00', 1, 0, 'Lakshitha Ranasinghe', '1', 'Colombo', '12323999-00000', 'lakiya', '2017-07-02', 'lakiya', '2017-07-02'),
(20, 2, 200, 11900, NULL, '2017-07-02 00:00:00', 1, 1, 'Lakshitha Ranasinghe', '2', 'Colombo', '1821000000001', 'lakiya', '2017-07-02', 'lakiya', '2017-07-02');

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`USER_ID`, `USERNAME`, `PASSWORD`, `ENABLED`, `USER_TYPE_ID`, `CREATED_BY`, `CREATED_DATE`, `LAST_MODIFIED_BY`, `LAST_MODIFIED_DATE`) VALUES
(2, 'lakiya', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 1, 1, 'SYSTEM', '2017-06-20', 'SYSTEM', '2017-06-20'),
(3, 'muthu', 'f685036afa7be0292157a4a0a59614032c32d14a', 1, 1, 'lakiya', '2017-07-01', 'lakiya', '2017-07-01');

-- --------------------------------------------------------

--
-- Table structure for table `user_login_audit`
--

CREATE TABLE IF NOT EXISTS `user_login_audit` (
  `USER_LOGIN_AUDIT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USERNAME` varchar(256) NOT NULL,
  `LOGIN_DATE` datetime NOT NULL,
  `LOGOUT_DATE` datetime DEFAULT NULL,
  `REMOTE_ADDRESS` varchar(100) NOT NULL,
  PRIMARY KEY (`USER_LOGIN_AUDIT_ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=65 ;

--
-- Dumping data for table `user_login_audit`
--

INSERT INTO `user_login_audit` (`USER_LOGIN_AUDIT_ID`, `USERNAME`, `LOGIN_DATE`, `LOGOUT_DATE`, `REMOTE_ADDRESS`) VALUES
(2, 'lakiya', '2017-07-01 13:35:07', '2017-07-01 13:35:14', '0:0:0:0:0:0:0:1'),
(3, 'lakiya', '2017-07-01 13:38:35', NULL, '0:0:0:0:0:0:0:1'),
(4, 'lakiya', '2017-07-01 14:09:17', NULL, '0:0:0:0:0:0:0:1'),
(5, 'lakiya', '2017-07-01 15:07:53', NULL, '0:0:0:0:0:0:0:1'),
(6, 'lakiya', '2017-07-01 15:12:36', NULL, '0:0:0:0:0:0:0:1'),
(7, 'lakiya', '2017-07-01 15:14:41', NULL, '0:0:0:0:0:0:0:1'),
(8, 'lakiya', '2017-07-01 15:17:28', NULL, '0:0:0:0:0:0:0:1'),
(9, 'muthu', '2017-07-01 15:23:24', NULL, '0:0:0:0:0:0:0:1'),
(10, 'muthu', '2017-07-01 15:25:57', NULL, '0:0:0:0:0:0:0:1'),
(11, 'muthu', '2017-07-01 15:26:45', NULL, '0:0:0:0:0:0:0:1'),
(12, 'muthu', '2017-07-01 15:27:14', '2017-07-01 15:28:24', '0:0:0:0:0:0:0:1'),
(13, 'lakiya', '2017-07-01 15:28:27', '2017-07-01 15:29:20', '0:0:0:0:0:0:0:1'),
(14, 'lakiya', '2017-07-01 15:29:23', '2017-07-01 15:29:25', '0:0:0:0:0:0:0:1'),
(15, 'lakiya', '2017-07-01 15:29:28', '2017-07-01 15:29:30', '0:0:0:0:0:0:0:1'),
(16, 'lakiya', '2017-07-01 15:29:33', NULL, '0:0:0:0:0:0:0:1'),
(17, 'lakiya', '2017-07-01 19:02:56', NULL, '0:0:0:0:0:0:0:1'),
(18, 'lakiya', '2017-07-01 20:27:55', NULL, '0:0:0:0:0:0:0:1'),
(19, 'lakiya', '2017-07-01 20:43:22', NULL, '0:0:0:0:0:0:0:1'),
(20, 'lakiya', '2017-07-01 20:51:30', NULL, '0:0:0:0:0:0:0:1'),
(21, 'lakiya', '2017-07-01 20:51:51', NULL, '0:0:0:0:0:0:0:1'),
(22, 'lakiya', '2017-07-01 21:14:32', NULL, '0:0:0:0:0:0:0:1'),
(23, 'lakiya', '2017-07-01 21:24:13', NULL, '0:0:0:0:0:0:0:1'),
(24, 'lakiya', '2017-07-01 21:34:13', NULL, '0:0:0:0:0:0:0:1'),
(25, 'lakiya', '2017-07-01 23:13:18', NULL, '0:0:0:0:0:0:0:1'),
(26, 'lakiya', '2017-07-01 23:52:49', NULL, '0:0:0:0:0:0:0:1'),
(27, 'lakiya', '2017-07-01 23:59:39', NULL, '0:0:0:0:0:0:0:1'),
(28, 'lakiya', '2017-07-02 00:30:05', NULL, '0:0:0:0:0:0:0:1'),
(29, 'lakiya', '2017-07-02 00:32:54', NULL, '0:0:0:0:0:0:0:1'),
(30, 'lakiya', '2017-07-02 00:58:19', NULL, '0:0:0:0:0:0:0:1'),
(31, 'lakiya', '2017-07-02 01:57:51', NULL, '0:0:0:0:0:0:0:1'),
(32, 'lakiya', '2017-07-02 01:59:41', NULL, '0:0:0:0:0:0:0:1'),
(33, 'lakiya', '2017-07-02 09:53:45', NULL, '0:0:0:0:0:0:0:1'),
(34, 'lakiya', '2017-07-02 10:07:02', NULL, '0:0:0:0:0:0:0:1'),
(35, 'lakiya', '2017-07-02 10:16:55', NULL, '0:0:0:0:0:0:0:1'),
(36, 'lakiya', '2017-07-02 10:22:25', NULL, '0:0:0:0:0:0:0:1'),
(37, 'lakiya', '2017-07-02 12:42:14', NULL, '0:0:0:0:0:0:0:1'),
(38, 'lakiya', '2017-07-02 12:51:39', NULL, '0:0:0:0:0:0:0:1'),
(39, 'lakiya', '2017-07-02 12:55:44', NULL, '0:0:0:0:0:0:0:1'),
(40, 'lakiya', '2017-07-02 14:01:36', NULL, '0:0:0:0:0:0:0:1'),
(41, 'lakiya', '2017-07-02 14:47:56', NULL, '0:0:0:0:0:0:0:1'),
(42, 'lakiya', '2017-07-02 14:51:26', NULL, '0:0:0:0:0:0:0:1'),
(43, 'lakiya', '2017-07-02 14:53:25', NULL, '0:0:0:0:0:0:0:1'),
(44, 'lakiya', '2017-07-02 15:09:00', NULL, '0:0:0:0:0:0:0:1'),
(45, 'lakiya', '2017-07-02 15:30:12', NULL, '0:0:0:0:0:0:0:1'),
(46, 'lakiya', '2017-07-02 15:31:31', NULL, '0:0:0:0:0:0:0:1'),
(47, 'lakiya', '2017-07-02 15:36:29', NULL, '0:0:0:0:0:0:0:1'),
(48, 'lakiya', '2017-07-02 15:51:21', NULL, '0:0:0:0:0:0:0:1'),
(49, 'lakiya', '2017-07-02 15:51:46', NULL, '0:0:0:0:0:0:0:1'),
(50, 'lakiya', '2017-07-02 16:07:57', NULL, '0:0:0:0:0:0:0:1'),
(51, 'lakiya', '2017-07-02 16:08:11', NULL, '0:0:0:0:0:0:0:1'),
(52, 'lakiya', '2017-07-02 16:11:18', NULL, '0:0:0:0:0:0:0:1'),
(53, 'lakiya', '2017-07-02 16:33:02', NULL, '0:0:0:0:0:0:0:1'),
(54, 'lakiya', '2017-07-02 16:34:11', NULL, '0:0:0:0:0:0:0:1'),
(55, 'lakiya', '2017-07-02 16:46:29', NULL, '0:0:0:0:0:0:0:1'),
(56, 'lakiya', '2017-07-02 16:47:11', '2017-07-02 16:49:09', '0:0:0:0:0:0:0:1'),
(57, 'lakiya', '2017-07-02 16:49:11', '2017-07-02 16:51:38', '0:0:0:0:0:0:0:1'),
(58, 'lakiya', '2017-07-02 16:51:40', NULL, '0:0:0:0:0:0:0:1'),
(59, 'lakiya', '2017-07-02 16:53:18', '2017-07-02 16:56:57', '0:0:0:0:0:0:0:1'),
(60, 'lakiya', '2017-07-02 16:57:00', NULL, '0:0:0:0:0:0:0:1'),
(61, 'lakiya', '2017-07-02 17:13:01', '2017-07-02 17:14:19', '0:0:0:0:0:0:0:1'),
(62, 'lakiya', '2017-07-02 17:14:22', '2017-07-02 17:35:12', '0:0:0:0:0:0:0:1'),
(63, 'lakiya', '2017-07-02 17:36:22', '2017-07-02 17:37:25', '0:0:0:0:0:0:0:1'),
(64, 'lakiya', '2017-07-02 17:37:27', NULL, '0:0:0:0:0:0:0:1');

-- --------------------------------------------------------

--
-- Table structure for table `user_type`
--

CREATE TABLE IF NOT EXISTS `user_type` (
  `USER_TYPE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_TYPE` varchar(100) NOT NULL,
  `DESCRIPTION` varchar(256) DEFAULT NULL,
  `STATUS` int(11) NOT NULL,
  `CREATED_BY` varchar(256) NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `LAST_MODIFIED_BY` varchar(256) NOT NULL,
  `LAST_MODIFIED_DATE` datetime NOT NULL,
  PRIMARY KEY (`USER_TYPE_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `user_type`
--

INSERT INTO `user_type` (`USER_TYPE_ID`, `USER_TYPE`, `DESCRIPTION`, `STATUS`, `CREATED_BY`, `CREATED_DATE`, `LAST_MODIFIED_BY`, `LAST_MODIFIED_DATE`) VALUES
(1, 'Admin', 'ADMIN', 1, 'SYSTEM', '2017-06-20 00:00:00', 'SYSTEM', '2017-06-20 00:00:00'),
(2, 'Customer', 'Normal Savings Account', 1, 'lakiya', '2017-07-01 00:00:00', 'lakiya', '2017-07-01 00:00:00'),
(3, 'Test', 'Test User', 0, 'lakiya', '2017-07-02 00:00:00', 'lakiya', '2017-07-02 16:49:40'),
(4, 'Test', 'Test', 0, 'lakiya', '2017-07-02 16:11:30', 'lakiya', '2017-07-02 16:49:31'),
(5, 'Test', 'Test User', 0, 'lakiya', '2017-07-02 16:27:54', 'lakiya', '2017-07-02 16:49:51'),
(6, 'Test', 'Test', 0, 'lakiya', '2017-07-02 16:29:06', 'lakiya', '2017-07-02 16:49:45');

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=41 ;

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
(20, 1, 20, 1, 'SYSTEM', '2017-06-28', 'SYSTEM', '2017-06-28'),
(21, 1, 21, 1, 'lakiya', '2017-06-30', 'lakiya', '2017-06-30'),
(22, 1, 22, 1, 'lakiya', '2017-06-30', 'lakiya', '2017-06-30'),
(23, 1, 23, 1, 'lakiya', '2017-07-02', 'lakiya', '2017-07-02'),
(24, 1, 24, 1, 'lakiya', '2017-07-02', 'lakiya', '2017-07-02'),
(25, 1, 25, 1, 'lakiya', '2017-07-02', 'lakiya', '2017-07-02'),
(26, 1, 26, 1, 'lakiya', '2017-07-02', 'lakiya', '2017-07-02'),
(27, 1, 27, 1, 'lakiya', '2017-07-02', 'lakiya', '2017-07-02'),
(28, 1, 28, 1, 'lakiya', '2017-07-02', 'lakiya', '2017-07-02'),
(29, 1, 31, 1, 'lakiya', '2017-07-02', 'lakiya', '2017-07-02'),
(30, 1, 32, 1, 'lakiya', '2017-07-02', 'lakiya', '2017-07-02'),
(31, 1, 33, 1, 'lakiya', '2017-07-02', 'lakiya', '2017-07-02'),
(32, 1, 34, 1, 'lakiya', '2017-07-02', 'lakiya', '2017-07-02'),
(33, 1, 35, 1, 'lakiya', '2017-07-02', 'lakiya', '2017-07-02'),
(34, 1, 36, 1, 'lakiya', '2017-07-02', 'lakiya', '2017-07-02'),
(35, 1, 37, 1, 'lakiya', '2017-07-02', 'lakiya', '2017-07-02'),
(36, 1, 38, 1, 'lakiya', '2017-07-02', 'lakiya', '2017-07-02'),
(37, 1, 39, 1, 'lakiya', '2017-07-02', 'lakiya', '2017-07-02'),
(38, 1, 40, 1, 'lakiya', '2017-07-02', 'lakiya', '2017-07-02'),
(39, 1, 41, 1, 'lakiya', '2017-07-02', 'lakiya', '2017-07-02'),
(40, 1, 42, 1, 'lakiya', '2017-07-02', 'lakiya', '2017-07-02');

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
