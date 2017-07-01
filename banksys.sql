-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 01, 2017 at 04:09 PM
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

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `ACCOUNT_ID` int(11) NOT NULL,
  `ACCOUNT_TYPE_ID` int(11) NOT NULL,
  `INTEREST_CAL_METHOD` int(11) NOT NULL,
  `MOBILE_BANK_AVAILABILITY` int(1) DEFAULT NULL,
  `ONLINE_BANK_AVAILABILITY` int(1) DEFAULT NULL,
  `PASSBOOK_AVAILABILITY` int(11) DEFAULT NULL,
  `STATUS` int(11) NOT NULL,
  `CREATED_BY` varchar(100) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `LAST_MODIFIED_BY` varchar(100) NOT NULL,
  `LAST_MODIFIED_DATE` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `account_type` (
  `ACCOUNT_TYPE_ID` int(11) NOT NULL,
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
  `LAST_MODIFIED_BY` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account_type`
--

INSERT INTO `account_type` (`ACCOUNT_TYPE_ID`, `ACCOUNT_TYPE_NAME`, `DESCRIPTION`, `MIN_DEPOSIT`, `MIN_AGE`, `MAX_AGE`, `ANNUAL_COST`, `STATUS`, `CREATED_DATE`, `CREATED_BY`, `LAST_MODIFIED_DATE`, `LAST_MODIFIED_BY`) VALUES
(1, 'Savings', 'Normal Savings Account', 500, 18, 70, 150, 1, '2017-06-26', 'lakiya', '2017-06-26', 'lakiya');

-- --------------------------------------------------------

--
-- Table structure for table `address_book`
--

CREATE TABLE `address_book` (
  `ADDRESS_BOOK_ID` int(11) NOT NULL,
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
  `LAST_MODIFIED_DATE` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `authority` (
  `AUTHORITY_ID` int(11) NOT NULL,
  `AUTHORITY_NAME` varchar(100) NOT NULL,
  `MODULE_ID` int(11) NOT NULL,
  `STATUS` int(11) NOT NULL,
  `CREATED_BY` varchar(100) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `LAST_MODIFIED_BY` varchar(100) NOT NULL,
  `LAST_MODIFIED_DATE` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
(20, 'ebank@ownAccountTransfer_TRANSFER', 1, 1, 'lakiya', '2017-06-29', 'lakiya', '2017-06-29'),
(21, 'ebank@thirdPartyAccountTransfer_VIEW', 1, 1, 'lakiya', '2017-06-30', 'lakiya', '2017-06-30'),
(22, 'ebank@thirdPartyAccountTransfer_TRANSFER', 1, 1, 'lakiya', '2017-06-30', 'lakiya', '2017-06-30');

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE `bank` (
  `BANK_ID` int(11) NOT NULL,
  `BANK_NAME` varchar(100) NOT NULL,
  `STATUS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `bill_payment` (
  `BILL_PAYMENT_ID` int(11) NOT NULL,
  `FROM_ACCOUNT_ID` int(11) NOT NULL,
  `PAYMENT_TYPE` int(11) NOT NULL,
  `REFERENCE_NO` varchar(100) NOT NULL,
  `PAYMENT_DATE` date NOT NULL,
  `AMOUNT` double NOT NULL,
  `ACCOUNT_BALANCE` double NOT NULL,
  `TRANSFER_STATUS` int(11) NOT NULL,
  `STATUS` int(11) NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `CREATED_BY` varchar(100) NOT NULL,
  `LAST_MODIFIED_DATE` datetime NOT NULL,
  `LAST_MODIFIED_BY` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill_payment`
--

INSERT INTO `bill_payment` (`BILL_PAYMENT_ID`, `FROM_ACCOUNT_ID`, `PAYMENT_TYPE`, `REFERENCE_NO`, `PAYMENT_DATE`, `AMOUNT`, `ACCOUNT_BALANCE`, `TRANSFER_STATUS`, `STATUS`, `CREATED_DATE`, `CREATED_BY`, `LAST_MODIFIED_DATE`, `LAST_MODIFIED_BY`) VALUES
(3, 1, 0, '0772250828', '2017-07-01', 300, 14200, 0, 1, '2017-07-01 21:25:15', 'lakiya', '2017-07-01 21:25:15', 'lakiya');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CUSTOMER_ID` int(11) NOT NULL,
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
  `LAST_MODIFIED_BY` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `customer_account` (
  `CUSTOMER_ACCOUNT_ID` int(11) NOT NULL,
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
  `LAST_MODIFIED_DATE` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_account`
--

INSERT INTO `customer_account` (`CUSTOMER_ACCOUNT_ID`, `ACCOUNT_ID`, `ACCOUNT_NO`, `START_DATE`, `END_DATE`, `AVAILABLE_BALANCE`, `CURRENCY_ID`, `CUSTOMER_ID`, `STATUS`, `VERSION`, `CREATED_BY`, `CREATED_DATE`, `LAST_MODIFIED_BY`, `LAST_MODIFIED_DATE`) VALUES
(1, 2, '20170628000001', '2017-06-07', '2017-06-30', 14200, 0, 1, 1, 0, 'lakiya', '2017-06-28', 'lakiya', '2017-07-01'),
(2, 4, '20170628000002', '2017-06-02', '2017-06-30', 15500, 0, 1, 1, 0, 'lakiya', '2017-06-28', 'lakiya', '2017-07-01');

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

CREATE TABLE `module` (
  `MODULE_ID` int(11) NOT NULL,
  `MODULE_NAME` varchar(100) NOT NULL,
  `DESCRIPTION` varchar(100) DEFAULT NULL,
  `STATUS` int(11) NOT NULL,
  `CREATED_BY` varchar(100) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `LAST_MODIFIED_BY` varchar(100) NOT NULL,
  `LAST_MODIFIED_DATE` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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

CREATE TABLE `no_generator` (
  `NO_GEN_ID` int(11) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `PREVIOUS_NO` int(11) NOT NULL,
  `NEXT_NO` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `no_generator`
--

INSERT INTO `no_generator` (`NO_GEN_ID`, `NAME`, `PREVIOUS_NO`, `NEXT_NO`) VALUES
(1, 'Account', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `own_account_transfer`
--

CREATE TABLE `own_account_transfer` (
  `OWN_ACCOUNT_TRANSFER_ID` int(11) NOT NULL,
  `FROM_ACCOUNT_ID` int(11) NOT NULL,
  `TO_ACCOUNT_ID` int(100) NOT NULL,
  `AMOUNT` double NOT NULL,
  `FROM_ACCOUNT_BALANCE` double NOT NULL,
  `TO_ACCOUNT_BALANCE` double NOT NULL,
  `DESCRIPTION` varchar(512) NOT NULL,
  `TRANSFER_DATE` date NOT NULL,
  `STATUS` int(11) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `CREATED_BY` varchar(100) NOT NULL,
  `LAST_MODIFIED_DATE` date NOT NULL,
  `LAST_MODIFIED_BY` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `own_account_transfer`
--

INSERT INTO `own_account_transfer` (`OWN_ACCOUNT_TRANSFER_ID`, `FROM_ACCOUNT_ID`, `TO_ACCOUNT_ID`, `AMOUNT`, `FROM_ACCOUNT_BALANCE`, `TO_ACCOUNT_BALANCE`, `DESCRIPTION`, `TRANSFER_DATE`, `STATUS`, `CREATED_DATE`, `CREATED_BY`, `LAST_MODIFIED_DATE`, `LAST_MODIFIED_BY`) VALUES
(9, 1, 2, 2500, 12500, 17500, 'Fund Transfer', '2017-07-01', 1, '2017-07-01', 'lakiya', '2017-07-01', 'lakiya'),
(10, 2, 1, 2000, 15500, 14500, 'Re Transfer Funds', '2017-07-01', 1, '2017-07-01', 'lakiya', '2017-07-01', 'lakiya');

-- --------------------------------------------------------

--
-- Table structure for table `third_party_transfer`
--

CREATE TABLE `third_party_transfer` (
  `THIRD_PARTY_ACCOUNT_TRANSFER_ID` int(11) NOT NULL,
  `FROM_ACCOUNT_ID` int(11) NOT NULL,
  `AMOUNT` double NOT NULL,
  `ACCOUNT_BALANCE` double NOT NULL,
  `DESCRIPTION` varchar(100) DEFAULT NULL,
  `TRANSFER_DATE` date NOT NULL,
  `STATUS` int(11) NOT NULL,
  `TRANSFER_STATUS` int(11) NOT NULL,
  `RECEIVER_NAME` varchar(100) NOT NULL,
  `BANK` varchar(100) NOT NULL,
  `BRANCH` varchar(100) NOT NULL,
  `ACCOUNT_NO` varchar(100) NOT NULL,
  `CREATED_BY` varchar(100) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `LAST_MODIFIED_BY` varchar(100) NOT NULL,
  `LAST_MODIFIED_DATE` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `USER_ID` int(11) NOT NULL,
  `USERNAME` varchar(100) NOT NULL,
  `PASSWORD` varchar(100) NOT NULL,
  `ENABLED` int(1) NOT NULL,
  `USER_TYPE_ID` int(11) NOT NULL,
  `CREATED_BY` varchar(256) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `LAST_MODIFIED_BY` varchar(256) NOT NULL,
  `LAST_MODIFIED_DATE` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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

CREATE TABLE `user_login_audit` (
  `USER_LOGIN_AUDIT_ID` int(11) NOT NULL,
  `USERNAME` varchar(256) NOT NULL,
  `LOGIN_DATE` datetime NOT NULL,
  `LOGOUT_DATE` datetime DEFAULT NULL,
  `REMOTE_ADDRESS` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
(24, 'lakiya', '2017-07-01 21:34:13', NULL, '0:0:0:0:0:0:0:1');

-- --------------------------------------------------------

--
-- Table structure for table `user_type`
--

CREATE TABLE `user_type` (
  `USER_TYPE_ID` int(11) NOT NULL,
  `USER_TYPE` varchar(100) NOT NULL,
  `DESCRIPTION` varchar(256) DEFAULT NULL,
  `STATUS` int(11) NOT NULL,
  `CREATED_BY` varchar(256) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `LAST_MODIFIED_BY` varchar(256) NOT NULL,
  `LAST_MODIFIED_DATE` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_type`
--

INSERT INTO `user_type` (`USER_TYPE_ID`, `USER_TYPE`, `DESCRIPTION`, `STATUS`, `CREATED_BY`, `CREATED_DATE`, `LAST_MODIFIED_BY`, `LAST_MODIFIED_DATE`) VALUES
(1, 'Admin', 'ADMIN', 1, 'SYSTEM', '2017-06-20', 'SYSTEM', '2017-06-20'),
(2, 'Customer', 'Normal Savings Account', 1, 'lakiya', '2017-07-01', 'lakiya', '2017-07-01');

-- --------------------------------------------------------

--
-- Table structure for table `user_type_authority`
--

CREATE TABLE `user_type_authority` (
  `USER_TYPE_AUTHORITY_ID` int(11) NOT NULL,
  `USER_TYPE_ID` int(11) NOT NULL,
  `AUTHORITY_ID` int(11) NOT NULL,
  `STATUS` int(11) NOT NULL,
  `CREATED_BY` varchar(100) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `LAST_MODIFIED_BY` varchar(100) NOT NULL,
  `LAST_MODIFIED_DATE` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
(22, 1, 22, 1, 'lakiya', '2017-06-30', 'lakiya', '2017-06-30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`ACCOUNT_ID`),
  ADD KEY `FKq9dxl66qvrrtu7rrgchjh5vej` (`ACCOUNT_TYPE_ID`);

--
-- Indexes for table `account_type`
--
ALTER TABLE `account_type`
  ADD PRIMARY KEY (`ACCOUNT_TYPE_ID`);

--
-- Indexes for table `address_book`
--
ALTER TABLE `address_book`
  ADD PRIMARY KEY (`ADDRESS_BOOK_ID`);

--
-- Indexes for table `authority`
--
ALTER TABLE `authority`
  ADD PRIMARY KEY (`AUTHORITY_ID`);

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`BANK_ID`);

--
-- Indexes for table `bill_payment`
--
ALTER TABLE `bill_payment`
  ADD PRIMARY KEY (`BILL_PAYMENT_ID`),
  ADD KEY `FKr4xriewyem6ccebck5buaeu87` (`FROM_ACCOUNT_ID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CUSTOMER_ID`),
  ADD KEY `FK8ws3y30jy96un88k0n9bv9h2m` (`ADDRESS_BOOK_ID`);

--
-- Indexes for table `customer_account`
--
ALTER TABLE `customer_account`
  ADD PRIMARY KEY (`CUSTOMER_ACCOUNT_ID`),
  ADD KEY `FKq2875cwa4anm45j8yf49stjkv` (`ACCOUNT_ID`),
  ADD KEY `FK7cqiu8phqi0bygrlaqtm01fsj` (`CUSTOMER_ID`);

--
-- Indexes for table `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`MODULE_ID`);

--
-- Indexes for table `no_generator`
--
ALTER TABLE `no_generator`
  ADD PRIMARY KEY (`NO_GEN_ID`);

--
-- Indexes for table `own_account_transfer`
--
ALTER TABLE `own_account_transfer`
  ADD PRIMARY KEY (`OWN_ACCOUNT_TRANSFER_ID`),
  ADD KEY `FKhcyb8nrx4kwtv06okxffrg6yn` (`FROM_ACCOUNT_ID`),
  ADD KEY `FKem9nlo66lf07yrgyhgknqh22f` (`TO_ACCOUNT_ID`);

--
-- Indexes for table `third_party_transfer`
--
ALTER TABLE `third_party_transfer`
  ADD PRIMARY KEY (`THIRD_PARTY_ACCOUNT_TRANSFER_ID`),
  ADD KEY `FKtjhpengc5upa0i37wybdv1v97` (`FROM_ACCOUNT_ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`USER_ID`);

--
-- Indexes for table `user_login_audit`
--
ALTER TABLE `user_login_audit`
  ADD PRIMARY KEY (`USER_LOGIN_AUDIT_ID`);

--
-- Indexes for table `user_type`
--
ALTER TABLE `user_type`
  ADD PRIMARY KEY (`USER_TYPE_ID`);

--
-- Indexes for table `user_type_authority`
--
ALTER TABLE `user_type_authority`
  ADD PRIMARY KEY (`USER_TYPE_AUTHORITY_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `ACCOUNT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `account_type`
--
ALTER TABLE `account_type`
  MODIFY `ACCOUNT_TYPE_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `address_book`
--
ALTER TABLE `address_book`
  MODIFY `ADDRESS_BOOK_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `authority`
--
ALTER TABLE `authority`
  MODIFY `AUTHORITY_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `bank`
--
ALTER TABLE `bank`
  MODIFY `BANK_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `bill_payment`
--
ALTER TABLE `bill_payment`
  MODIFY `BILL_PAYMENT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `CUSTOMER_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `customer_account`
--
ALTER TABLE `customer_account`
  MODIFY `CUSTOMER_ACCOUNT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `module`
--
ALTER TABLE `module`
  MODIFY `MODULE_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `no_generator`
--
ALTER TABLE `no_generator`
  MODIFY `NO_GEN_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `own_account_transfer`
--
ALTER TABLE `own_account_transfer`
  MODIFY `OWN_ACCOUNT_TRANSFER_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `third_party_transfer`
--
ALTER TABLE `third_party_transfer`
  MODIFY `THIRD_PARTY_ACCOUNT_TRANSFER_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `USER_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `user_login_audit`
--
ALTER TABLE `user_login_audit`
  MODIFY `USER_LOGIN_AUDIT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `user_type`
--
ALTER TABLE `user_type`
  MODIFY `USER_TYPE_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user_type_authority`
--
ALTER TABLE `user_type_authority`
  MODIFY `USER_TYPE_AUTHORITY_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
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
