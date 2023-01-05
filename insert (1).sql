-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 05, 2023 at 08:10 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `insert`
--

-- --------------------------------------------------------

--
-- Table structure for table `in_pay`
--

CREATE TABLE `in_pay` (
  `ipidno` int(11) NOT NULL,
  `ipinvo` varchar(100) DEFAULT NULL,
  `ipamount` varchar(100) DEFAULT NULL,
  `ipshipname` varchar(100) DEFAULT NULL,
  `ipshipinvoice` varchar(100) DEFAULT NULL,
  `ipshipinvoice_date` varchar(100) DEFAULT NULL,
  `ipstatus` varchar(100) DEFAULT NULL,
  `ipremarks` varchar(100) DEFAULT NULL,
  `ippay_mode` varchar(100) DEFAULT NULL,
  `ippay_date` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `out_pay`
--

CREATE TABLE `out_pay` (
  `opidno` int(11) NOT NULL,
  `opinvo` varchar(100) DEFAULT NULL,
  `opto` varchar(100) DEFAULT NULL,
  `opshipdate` varchar(100) DEFAULT NULL,
  `opamount` varchar(100) DEFAULT NULL,
  `opshipname` varchar(100) DEFAULT NULL,
  `opshipinvoice` varchar(100) DEFAULT NULL,
  `opstatus` varchar(100) DEFAULT NULL,
  `opremarks` varchar(100) DEFAULT NULL,
  `oppay_mode` varchar(100) DEFAULT NULL,
  `oppay_date` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `out_pay`
--

INSERT INTO `out_pay` (`opidno`, `opinvo`, `opto`, `opshipdate`, `opamount`, `opshipname`, `opshipinvoice`, `opstatus`, `opremarks`, `oppay_mode`, `oppay_date`) VALUES
(1, '009', 'good', '2022-12-21', '2022', 'anu', '008', 'paid', '', 'tmb', '2022-12-21');

-- --------------------------------------------------------

--
-- Table structure for table `ship`
--

CREATE TABLE `ship` (
  `sno` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `district` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `gst` varchar(100) DEFAULT NULL,
  `remark` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ship`
--

INSERT INTO `ship` (`sno`, `name`, `mobile`, `email`, `address`, `district`, `state`, `country`, `gst`, `remark`) VALUES
(1, 'mus', 'mus', 'musemail', 'musadd', 'musdis', 'om stae', 'om country', 'om gst', 'om remark');

-- --------------------------------------------------------

--
-- Table structure for table `ship1`
--

CREATE TABLE `ship1` (
  `sno` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `district` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `gst` varchar(100) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `ex_acname` varchar(100) NOT NULL,
  `ex_acno` varchar(100) NOT NULL,
  `ex_ifsc` varchar(100) NOT NULL,
  `ex_swiftcode` varchar(100) NOT NULL,
  `ex_adcode` varchar(100) NOT NULL,
  `ex_bankname` varchar(100) NOT NULL,
  `ex_bankaddress` varchar(100) NOT NULL,
  `ex_bankstate` varchar(100) NOT NULL,
  `ex_bankdist` varchar(100) NOT NULL,
  `ex_bankcountry` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ship1`
--

INSERT INTO `ship1` (`sno`, `name`, `mobile`, `email`, `address`, `district`, `state`, `country`, `gst`, `remark`, `ex_acname`, `ex_acno`, `ex_ifsc`, `ex_swiftcode`, `ex_adcode`, `ex_bankname`, `ex_bankaddress`, `ex_bankstate`, `ex_bankdist`, `ex_bankcountry`) VALUES
(1, 'muru', 'muruga', 'muruga@gmail.com', 'muruga', '234', '234state', 'murugacountry', 'murugagst', 'muruga remark', 'tuty', '324', '234', '2432424', '4', '24242', '4', '24242', '24', '42');

-- --------------------------------------------------------

--
-- Table structure for table `ship1_party`
--

CREATE TABLE `ship1_party` (
  `pidno` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(400) NOT NULL,
  `gst` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ship1_party`
--

INSERT INTO `ship1_party` (`pidno`, `name`, `mobile`, `district`, `remark`, `email`, `address`, `gst`) VALUES
(1, '', '', '', '', '', '', ''),
(2, 'bala', '93483789767', 'TUTY', 'Good', 'gab@gmail.com', 'tuty', '33TN1234'),
(3, 'havei', '78', 'MDU', '457', '878', '78', '44TN878'),
(4, 'mdu', '98787', 'MDU', 'ok', 'mdu', '23', '44TN'),
(5, 'revathi', '9456783929', 'thoothukudi', 'good', 'revathi@gmail.com', 'thoothukudi', '600056789'),
(6, 'AARON', '987654342', 'TUTY', 'Good', 'johndavidraj21011995@gmail.com', 'TUTICORIN', ''),
(7, 'HP', '987654342', 'TUTY', '457', 'jellysoftveera@gmail.com', 'TUTICORIN', '44TN878'),
(8, 'test0', '9093438977', 'TUTY', 'Good', 'test0@gmail.com', '3d', '33TN98798789789798'),
(9, '', '', '', '', '', '', ''),
(10, 'test0', '9093438977', 'TUTY', 'Good', 'test0@gmail.com', '3d', '33TN98798789789798'),
(11, 'noor', '9456783929', 'thoothukudi', 'good', 'revathi@gmail.com', 'thoothukudi', ''),
(12, 'KANNAN', '9456783929', 'thoothukudi', 'good', 'revathi@gmail.com', 'thoothukudi', ''),
(13, 'MURUGAN', '9456783929', 'thoothukudi', 'good', 'revathi@gmail.com', 'thoothukudi', 'EA-98\"8765'),
(14, 'MURUGAN', '9456783929', 'thoothukudi', 'good', 'revathi@gmail.com', 'thoothukudi', 'EA-98\"8765'),
(15, 'selva', '9878765655', 'madu', 'fine', 'ab123456@gmail.com', '23', ''),
(16, 'selva', '9878765655', 'madu', 'fine', 'ab123456@gmail.com', '23', ''),
(17, 'selva', '9878765655', 'madu', 'fine', 'ab123456@gmail.com', '23', ''),
(18, '', '', '', '', '', '', ''),
(19, 'selva', '9878765655', 'madu', 'fine', 'ab123456@gmail.com', '23', '334689689789'),
(20, 'uname', 'umobileno', 'udistrict', 'uremark', 'uemail', 'uaddress', 'ugsno'),
(21, 'SEAGULL ENTERPRISES, TUTICORIN', '', '', '', '', '', '33AHRPA9952D1ZA');

-- --------------------------------------------------------

--
-- Table structure for table `ship2`
--

CREATE TABLE `ship2` (
  `sno` int(11) NOT NULL,
  `date` varchar(100) DEFAULT NULL,
  `supplier` varchar(100) DEFAULT NULL,
  `cargo` varchar(100) DEFAULT NULL,
  `package` varchar(100) DEFAULT NULL,
  `netweight` varchar(100) DEFAULT NULL,
  `gsweight` varchar(100) DEFAULT NULL,
  `sbno` varchar(100) DEFAULT NULL,
  `bcno` varchar(100) DEFAULT NULL,
  `vessel` varchar(100) DEFAULT NULL,
  `discharge` varchar(100) DEFAULT NULL,
  `blno` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ship2`
--

INSERT INTO `ship2` (`sno`, `date`, `supplier`, `cargo`, `package`, `netweight`, `gsweight`, `sbno`, `bcno`, `vessel`, `discharge`, `blno`) VALUES
(1, '2022-12-21', 'ravi', 'A3', '5', '2003', '2002', '998', '2022-12-21', 'good', '5', '001');

-- --------------------------------------------------------

--
-- Table structure for table `tblbill`
--

CREATE TABLE `tblbill` (
  `idno` int(11) NOT NULL,
  `bdate` datetime DEFAULT NULL,
  `bino` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
  `bexporter` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
  `borigin` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
  `bdesign` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
  `bfrate` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
  `binsure` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
  `bfob` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
  `bconsignee` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
  `bvessno` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
  `bflno` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
  `pay_term` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
  `con_no` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
  `arn` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
  `ext_date` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
  `iec_no` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
  `pan_no` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
  `gst_no` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
  `Inv_title` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
  `btotal_bag` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
  `bslno_bag` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
  `bnet_wt` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
  `bgross_wt` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
  `Inv_buyer` varchar(100) NOT NULL,
  `Inv_hsn` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblcoo`
--

CREATE TABLE `tblcoo` (
  `coidno` int(11) NOT NULL,
  `coexport` varchar(100) DEFAULT NULL,
  `coconsigne` varchar(100) DEFAULT NULL,
  `coremarks` varchar(100) DEFAULT NULL,
  `conotify` varchar(100) DEFAULT NULL,
  `coprecare` varchar(100) DEFAULT NULL,
  `coreceipt` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
  `covsno` varchar(100) DEFAULT NULL,
  `coflno` varchar(100) DEFAULT NULL,
  `copol` varchar(100) DEFAULT NULL,
  `copod` varchar(100) DEFAULT NULL,
  `cofinal` varchar(100) DEFAULT NULL,
  `cooino` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblcoo_details`
--

CREATE TABLE `tblcoo_details` (
  `coidno` int(11) NOT NULL,
  `comarks` varchar(100) DEFAULT NULL,
  `codesc` varchar(100) DEFAULT NULL,
  `coqty` varchar(100) DEFAULT NULL,
  `covalue` varchar(100) DEFAULT NULL,
  `cooino` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbldetails`
--

CREATE TABLE `tbldetails` (
  `idno` int(11) NOT NULL,
  `dino` varchar(100) DEFAULT NULL,
  `dmno` varchar(100) DEFAULT NULL,
  `dnpack` varchar(100) DEFAULT NULL,
  `dinfo` varchar(100) DEFAULT NULL,
  `dqty` varchar(100) DEFAULT NULL,
  `drate` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblgst`
--

CREATE TABLE `tblgst` (
  `gstbno` varchar(255) DEFAULT NULL,
  `igst` varchar(255) DEFAULT NULL,
  `sgst` varchar(255) DEFAULT NULL,
  `cgst` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblgst`
--

INSERT INTO `tblgst` (`gstbno`, `igst`, `sgst`, `cgst`) VALUES
('hobeno', '', '9', '9'),
('hobeno', '', '9', '9'),
('hobeno-copy', '', '9', '9'),
('002sbNO', '', '8', '8'),
('new SBNO1', '', '8', '8'),
('TX BENO', '', '8', '7'),
('TxtBENO', '', '8', '8');

-- --------------------------------------------------------

--
-- Table structure for table `tblin_pay_history`
--

CREATE TABLE `tblin_pay_history` (
  `pdate` datetime DEFAULT NULL,
  `pbno` varchar(255) DEFAULT NULL,
  `amt` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblnotify`
--

CREATE TABLE `tblnotify` (
  `sno` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `district` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblquote`
--

CREATE TABLE `tblquote` (
  `qidno` int(11) NOT NULL,
  `qdate` datetime DEFAULT NULL,
  `qino` varchar(100) DEFAULT NULL,
  `qparticular` varchar(100) DEFAULT NULL,
  `qamount` varchar(100) DEFAULT NULL,
  `e1` varchar(200) DEFAULT NULL,
  `e2` varchar(200) DEFAULT NULL,
  `e3` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblquote_details1`
--

CREATE TABLE `tblquote_details1` (
  `jaino` varchar(100) DEFAULT NULL,
  `jaidno` int(11) NOT NULL,
  `japarticular` varchar(100) DEFAULT NULL,
  `jaamount` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblquote_details2`
--

CREATE TABLE `tblquote_details2` (
  `jasidno` int(11) NOT NULL,
  `jasino` varchar(100) DEFAULT NULL,
  `jasparticular` varchar(100) DEFAULT NULL,
  `jasamount` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbltaxable_temp`
--

CREATE TABLE `tbltaxable_temp` (
  `idno` int(11) NOT NULL,
  `temp_bno` varchar(100) DEFAULT NULL,
  `temp_bno2` varchar(100) DEFAULT NULL,
  `temp_bno3` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltaxable_temp`
--

INSERT INTO `tbltaxable_temp` (`idno`, `temp_bno`, `temp_bno2`, `temp_bno3`) VALUES
(1, 'kondaduvom', 'hobeno', 'hoinvoice'),
(2, 'kondaduvom-copy-1', 'hobeno', 'hoinvoice'),
(3, 'kondaduvom-copy', 'hobeno-copy', 'hoinvoice-copy'),
(4, '002', '002sbNO', '002invoice no'),
(5, 'new001', 'new SBNO1', 'new InVNO01'),
(6, 'TX01', 'TX BENO', 'Tx No'),
(7, 'TXT01', 'TxtBENO', 'TXT Invoice no'),
(8, 'new_test', 'newSBNO', 'new_invono'),
(9, 'new_test', 'newSBNO', 'new_invono'),
(10, 'you', 'theem', 'dhum'),
(11, 'onetwo', 'onetwo sbno', 'onetwo invo'),
(12, 'fan01', 'fanSBNO', 'fan invoiceno'),
(13, '', '555', '6555555'),
(14, '555555555', 'hiiiiii', '765'),
(15, '5', '8765', '8888888'),
(16, '1998', '987', '9876'),
(17, '9876', '009', '876'),
(18, '98', '876', '98765'),
(19, '76', '009', '9009876'),
(20, '88', 'SB88', 'inv88'),
(21, '278', '0987', '0986'),
(22, '765', '0000005', '0000007'),
(23, '00005', '0098', '98000'),
(24, 'DCM/22-23/006', '12534525', 'SE/22*23/250'),
(25, '732', '987654', '000987'),
(26, '456', '009', '008'),
(27, '595', '0009', '000009'),
(28, '12', '009', '99'),
(29, '23', '23', '23'),
(30, '45', '0009', '00094'),
(31, '56', '009', '987'),
(32, 'DCM/22-23/006', '125354', 'SE/22-23/005'),
(33, '555', '1253', '02'),
(34, '555555', '12536', '253'),
(35, '7777', '66666', '44444'),
(36, '9999', '987', '9877'),
(37, 'dcm00018', 'ads', 'adfs'),
(38, '00018', 'adfs', 'adfs'),
(39, '2', '8', '9'),
(40, '5', '55', '7'),
(41, '1995', '555', '22'),
(42, '40', '55', '55'),
(43, '8', '5', '50'),
(44, 'DCM/2022-23/019', '1256586', 'SE/22-23/006'),
(45, 'DCM/2022-23/019', '1258568', '1258668'),
(46, '019', '1256453', 'SE/22-23/005'),
(47, 'DCM/2022-23/019', '1254565', 'SE/22-23/005'),
(48, 'DCM/2022-23/020', '12546253', 'SE/22-23/006'),
(49, 'DCM', '12344/02-01-2023', 'DT./02-01-23'),
(50, 'DCM/2022-23-22', 'KAMARAJ', '22-23/005/24'),
(51, 'DCM/2022-23/019', 'S.B/B.E.NO.&Dt.SE/12588562/02-01-2023', '&Dt.SE/22-23/005//02-01-23'),
(52, 'v1', 'v2', 'vinvo'),
(53, 'DCM/2022-23/30', 'BE.NO&12345677/02-01-2023', 'NO.&DT.SE/22-23/005/02-012023'),
(54, 'DCM/2022-23/33', 'S.B/B.E.NO.&DT.1285562/02-012023', '&DT.SE/22-23/005/01-02-23'),
(55, '57', '5679', '56789'),
(56, '5678', '67899amc', 'fcl');

-- --------------------------------------------------------

--
-- Table structure for table `tbltaxbill`
--

CREATE TABLE `tbltaxbill` (
  `tbidno` int(11) NOT NULL,
  `tbdate` datetime DEFAULT NULL,
  `tbno` varchar(100) DEFAULT NULL,
  `tbto` varchar(100) DEFAULT NULL,
  `tbper` varchar(100) DEFAULT NULL,
  `tbpart` varchar(100) DEFAULT NULL,
  `ex_bno1` varchar(100) DEFAULT NULL,
  `ex_dt1` datetime DEFAULT NULL,
  `ex_bno2` varchar(100) DEFAULT NULL,
  `ex_dt2` datetime DEFAULT NULL,
  `ex_status` varchar(199) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltaxbill`
--

INSERT INTO `tbltaxbill` (`tbidno`, `tbdate`, `tbno`, `tbto`, `tbper`, `tbpart`, `ex_bno1`, `ex_dt1`, `ex_bno2`, `ex_dt2`, `ex_status`) VALUES
(1, '2022-09-03 00:00:00', 'andry998', 'andru001', '- Select one -', 'arasancargo', 'iraivan', '2022-09-03 00:00:00', 'maranthal', '2022-09-03 00:00:00', '0'),
(4, '2022-09-04 00:00:00', 'kondaduvom-copy', 'kondaduvom', 'thararai', 'hocargo', 'hobeno-copy', '2022-09-04 00:00:00', 'hoinvoice-copy', '2022-09-04 00:00:00', '1'),
(5, '2022-09-07 00:00:00', 'bno001', 'heloshipper', '- Select one -', 'helo cargo', 'helosbno', '2022-09-07 00:00:00', 'heloinvo', '2022-09-07 00:00:00', '0'),
(6, '2022-09-15 00:00:00', '002', 'bala', '002per', '002cargo', '002sbNO', '2022-09-15 00:00:00', '002invoice no', '2022-09-15 00:00:00', '1'),
(7, '2022-09-19 00:00:00', 'new001', 'bala', 'new per', 'new cargo', 'new SBNO1', '2022-09-19 00:00:00', 'new InVNO01', '2022-09-19 00:00:00', '1'),
(8, '2022-09-20 00:00:00', 'Pen001', 'Pen01 per', 'havei', 'Pen01 cargo', 'pen01 SBNO', '2022-09-20 00:00:00', 'Pen01 Invo', '2022-09-20 00:00:00', '0'),
(9, '2022-09-22 00:00:00', 'TX01', 'bala', 'Tx per', 'Tx cargo', 'TX BENO', '2022-08-22 00:00:00', 'Tx No', '2022-09-22 00:00:00', '1'),
(10, '2022-09-26 00:00:00', 'TXT01', 'mdu', 'TXT01', 'TXTcargo', 'TxtBENO', '2022-09-26 00:00:00', 'TXT Invoice no', '2022-09-26 00:00:00', '1'),
(14, '2022-10-27 00:00:00', 'you', 'bala', 'sum', 'dhoom', 'theem', '2022-10-27 00:00:00', 'dhum', '2022-10-27 00:00:00', '1'),
(15, '2022-11-14 00:00:00', 'onetwo', 'havei', 'onetwoper', 'onetwo cargo', 'onetwo sbno', '2022-11-14 00:00:00', 'onetwo invo', '2022-11-14 00:00:00', '1'),
(16, '2022-11-23 00:00:00', 'fan01', 'bala', 'fanper', 'fancargo', 'fanSBNO', '2022-11-23 00:00:00', 'fan invoiceno', '2022-11-23 00:00:00', '1'),
(17, '2022-12-05 00:00:00', 'pno', 'pno', 'bala', 'pno\'si', 'working', '2022-12-05 00:00:00', 'single', '2022-12-05 00:00:00', '0'),
(18, '2022-12-05 00:00:00', 'pno', 'pno', 'bala', 'pno\'si', 'working', '2022-12-05 00:00:00', 'single', '2022-12-05 00:00:00', '0'),
(19, '2022-12-05 00:00:00', 'pentanic001', 'pentanic per', 'bala', 'pentani 14\' HCL 200\"', 'DCM/54/23', '2022-12-05 00:00:00', 'DCM 530/D6', '2022-12-05 00:00:00', '0'),
(24, '2022-12-15 00:00:00', '5', 'revathi', 'rrrrrrrrrrrrr', 'dell', '8765', '2022-12-15 00:00:00', '8888888', '2022-12-15 00:00:00', '1'),
(25, '2022-12-21 00:00:00', 'r001', 'ravi', 'revathi', 'EN-B\"00876\"', '0098', '2022-12-21 00:00:00', '0098', '2022-12-21 00:00:00', '0'),
(26, '2022-12-21 00:00:00', '1998', 'revathi', 'HI', 'EN-I\"900876', '987', '2022-12-21 00:00:00', '9876', '2022-12-21 00:00:00', '1'),
(27, '2022-12-21 00:00:00', '9876', 'bala', 'HIIII', 'EN-98765', '009', '2022-12-21 00:00:00', '876', '2022-12-21 00:00:00', '1'),
(28, '2022-12-21 00:00:00', '98', 'havei', 'HELLO', 'EN-679\"0098', '876', '2022-12-21 00:00:00', '98765', '2022-12-21 00:00:00', '1'),
(29, '2022-12-21 00:00:00', '67', 'HELLO', 'AARON', 'EN-B00\"987', '9876', '2022-12-21 00:00:00', '000987', '2022-12-21 00:00:00', '0'),
(30, '2022-12-21 00:00:00', '76', 'HP', 'HEE', 'EN-E\"09876', '009', '2022-12-21 00:00:00', '9009876', '2022-12-21 00:00:00', '1'),
(31, '2022-12-22 00:00:00', '88', 'test0', 'per88', 'cargo88\"', 'SB88', '2022-12-22 00:00:00', 'inv88', '2022-12-22 00:00:00', '1'),
(32, '2022-12-22 00:00:00', '9999', 'HIIIIIIII', 'noor', 'EN-\"09875\"', '098776', '2022-12-22 00:00:00', '009876', '2022-12-22 00:00:00', '0'),
(33, '2022-12-22 00:00:00', '9999', 'HII', 'KANNAN', 'ER-098\"98\"', 'HELLO', '2022-12-22 00:00:00', '0987', '2022-12-22 00:00:00', '0'),
(34, '2022-12-22 00:00:00', '1998', 'HELLO', 'AARON', 'WN-0098\"9876', 'HIII', '2022-12-22 00:00:00', 'HELLO', '2022-12-22 00:00:00', '0'),
(35, '2022-12-22 00:00:00', '278', 'MURUGAN', 'MURUGA', 'EN-098\"789', '0987', '2022-12-22 00:00:00', '0986', '2022-12-22 00:00:00', '1'),
(36, '2022-12-22 00:00:00', '765', 'bala', 'kanaga', '', '0000005', '2022-12-22 00:00:00', '0000007', '2022-12-22 00:00:00', '1'),
(37, '2022-12-22 00:00:00', '00005', 'MURUGAN', 'hello', 'en\"09876\"', '0098', '2022-12-22 00:00:00', '98000', '2022-12-22 00:00:00', '1'),
(38, '2022-12-22 00:00:00', 'oho', 'ohoper', 'uname', 'ohoper 12 xHCL\"', 'ohosbno', '2022-12-22 00:00:00', 'oho invo', '2022-12-22 00:00:00', '0'),
(39, '2022-12-23 00:00:00', 'DCM/22-23/005', 'MV. OCEAN STAR', 'SEAGULL ENTERPRISES, TUTICORIN', 'BIG ONION - 1 X 20\'FCL - 450 BAGS', '1253586', '2022-12-23 00:00:00', 'SE/22-23/002', '2022-12-23 00:00:00', '0'),
(40, '2022-12-23 00:00:00', '732', 'SEAGULL ENTERPRISES, TUTICORIN', 'HIIII', 'EN-09876\"009', '987654', '2022-12-23 00:00:00', '000987', '2022-12-23 00:00:00', '1'),
(41, '2022-12-23 00:00:00', '456', 'MURUGAN', 'hiii', '120\"fcl-100%cotten', '009', '2022-12-23 00:00:00', '008', '2022-12-23 00:00:00', '1'),
(42, '2022-12-23 00:00:00', '12', 'HP', 'JI', '120\"FCL&', '009', '2022-12-23 00:00:00', '99', '2022-12-23 00:00:00', '1'),
(43, '2022-12-23 00:00:00', '23', 'SEAGULL ENTERPRISES, TUTICORIN', '12', '120\"FCLCOTTEN100@', '23', '2022-12-23 00:00:00', '23', '2022-12-23 00:00:00', '1'),
(44, '2022-12-23 00:00:00', '45', 'SEAGULL ENTERPRISES, TUTICORIN', '45', '120\"FCL-100$', '0009', '2022-12-23 00:00:00', '00094', '2022-12-23 00:00:00', '1'),
(45, '2022-12-23 00:00:00', '56', 'SEAGULL ENTERPRISES, TUTICORIN', '89', '99\"-FCL:00987!65', '009', '2022-12-23 00:00:00', '987', '2022-12-23 00:00:00', '1'),
(46, '2022-12-27 00:00:00', '7777', 'SEAGULL ENTERPRISES, TUTICORIN', 'gggg', '120/400FNl\"300%', '66666', '2022-12-27 00:00:00', '44444', '2022-12-27 00:00:00', '1'),
(47, '2022-12-28 00:00:00', '9999', 'MURUGAN', 'hi', '120Fcl\"400%', '987', '2022-12-28 00:00:00', '9877', '2022-12-28 00:00:00', '1'),
(48, '2022-12-28 00:00:00', '7800', 'jioo', 'bala', 'en349*%', '', '2022-12-28 00:00:00', '', '2022-12-28 00:00:00', '0'),
(49, '2022-12-31 00:00:00', 'dcm0018', 'mv', 'SEAGULL ENTERPRISES, TUTICORIN', '100% 20\'fcl (20 Bags) - cotton', 'sdfs', '2022-12-31 00:00:00', 'sdfs', '2022-12-31 00:00:00', '0'),
(50, '2023-01-02 00:00:00', '2', 'hi', 'bala', '120FCl*230%', '99', '2023-01-02 00:00:00', '78', '2023-01-02 00:00:00', '0'),
(51, '2023-01-02 00:00:00', '2', 'havei', '55', '120rcl%8', '8', '2023-01-02 00:00:00', '9', '2023-01-02 00:00:00', '1'),
(52, '2023-01-02 00:00:00', '5', 'havei', '44', '44&', '55', '2023-01-02 00:00:00', '7', '2023-01-02 00:00:00', '1'),
(53, '2023-01-02 00:00:00', '9000', 'hi', 'uname', '%##55', '88', '2023-01-02 00:00:00', '77', '2023-01-02 00:00:00', '0'),
(54, '2023-01-02 00:00:00', '1995', '5', 'SEAGULL ENTERPRISES, TUTICORIN', '120fcl120%', '852', '2023-01-02 00:00:00', '853', '2023-01-02 00:00:00', '0'),
(55, '2023-01-02 00:00:00', '1995', 'SEAGULL ENTERPRISES, TUTICORIN', '5', '120fcl\"220\"5', '555', '2023-01-02 00:00:00', '22', '2023-01-02 00:00:00', '1'),
(56, '2023-01-02 00:00:00', '40', 'SEAGULL ENTERPRISES, TUTICORIN', '5', 'fcl120\"5%66$', '55', '2023-01-02 00:00:00', '55', '2023-01-02 00:00:00', '1'),
(57, '2023-01-02 00:00:00', '8', 'SEAGULL ENTERPRISES, TUTICORIN', '4', '20%', '5', '2023-01-02 00:00:00', '50', '2023-01-02 00:00:00', '1'),
(58, '2023-01-02 00:00:00', 'DCM/2022-23/018', 'MV. OCEAN PROBE V.22100S', 'SEAGULL ENTERPRISES, TUTICORIN', '10 PKGS - 100% COTTON FABRICS & ELASTICS (1X20\'FCL)', '12588562', '2023-01-02 00:00:00', 'SE/22-23/005', '2023-01-02 00:00:00', '0'),
(59, '2023-01-02 00:00:00', 'DCM/2022-23/019', 'SEAGULL ENTERPRISES, TUTICORIN', 'MV. OCEAN PROBE V.22100S', '10 PKGS COTTON', '1254565', '2023-01-02 00:00:00', 'SE/22-23/005', '2023-01-02 00:00:00', '1'),
(60, '2023-01-02 00:00:00', 'DCM', 'SEAGULL ENTERPRISES, TUTICORIN', 'VOC', 'PKGS-100%COTTON', '12344/02-01-2023', '2023-01-02 00:00:00', 'DT./02-01-23', '2023-01-02 00:00:00', '1'),
(61, '2023-01-02 00:00:00', 'DCM/2022-23/019', 'AARON', 'MV.OCEAN PROOBE V.22100S', '10 PKGS-100%COTTON FABRICS&ELASTICS(1X20\'FCL)', 'S.B/B.E.NO.&Dt.SE/12588562/02-01-2023', '2023-01-02 00:00:00', '&Dt.SE/22-23/005//02-01-23', '2023-01-02 00:00:00', '1'),
(62, '2023-01-02 00:00:00', 'v1', 'bala', 'v2', 'v22', 'v2', '2023-01-02 00:00:00', 'vinvo', '2023-01-02 00:00:00', '1'),
(63, '2023-01-02 00:00:00', 'DCM/2022-23/30', 'SEAGULL ENTERPRISES, TUTICORIN', 'MV RAVI', 'B.E.NO.$DT.100%\"COTTEN FABRICS&EEZASTKS.(1X20\'FCL)', 'BE.NO&12345677/02-01-2023', '2023-01-02 00:00:00', 'NO.&DT.SE/22-23/005/02-012023', '2023-01-02 00:00:00', '1'),
(64, '2023-01-03 00:00:00', 'DCM/2022-23/31', 'MV.OCEAN PROBE V.22100S', 'SEAGULL ENTERPRISES, TUTICORIN', '10PKGS-100%COTTON FABRICS&ELASTICS(1X20\'FCL)', 'S.B/B.E.NO&DT.12588562/02-01-2023', '2023-01-03 00:00:00', '&DT.SE/22-23/005/02-01-23', '2023-01-03 00:00:00', '0'),
(65, '2023-01-03 00:00:00', 'DCM/2022-23/33', 'SEAGULL ENTERPRISES, TUTICORIN', 'M.V.OCEANPROBEV.22100S', '10PKGS-100%COTTON FABRICS&ELASTICS(1X20\'FCL', 'S.B/B.E.NO.&DT.1285562/02-012023', '2023-01-03 00:00:00', '&DT.SE/22-23/005/01-02-23', '2023-01-03 00:00:00', '1'),
(66, '2023-01-03 00:00:00', '57', 'noor', 'HI', '10PKGS-100%COTTON FABRICS&ELASTICS(1X20\'FCL)', '5679', '2023-01-03 00:00:00', '56789', '2023-01-03 00:00:00', '1'),
(67, '2023-01-04 00:00:00', '5678', 'SEAGULL ENTERPRISES, TUTICORIN', 'kaviya', '100%cotten(\"20\"0)', '67899amc', '2023-01-04 00:00:00', 'fcl', '2023-01-04 00:00:00', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbltaxdetails`
--

CREATE TABLE `tbltaxdetails` (
  `tidno` int(11) NOT NULL,
  `tbno` varchar(100) DEFAULT NULL,
  `tpart` varchar(100) DEFAULT NULL,
  `tamt` varchar(100) DEFAULT NULL,
  `hsn` varchar(100) NOT NULL,
  `ex_bno1` varchar(199) NOT NULL,
  `tax_info` varchar(10) NOT NULL,
  `new_cgst` varchar(10) NOT NULL,
  `new_sgst` varchar(10) NOT NULL,
  `new_igst` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltaxdetails`
--

INSERT INTO `tbltaxdetails` (`tidno`, `tbno`, `tpart`, `tamt`, `hsn`, `ex_bno1`, `tax_info`, `new_cgst`, `new_sgst`, `new_igst`) VALUES
(1, 'andry998', 'naduvil', '2300', 'manithan', 'iraivan', '0', '', '', ''),
(2, 'andry998', 'iraiva', '1000', '234', 'iraivan', '0', '', '', ''),
(3, 'andry998', 'manam', '2000', '234', 'iraivan', '0', '', '', ''),
(4, 'andry998', 'ninru ketpavan ', '1300', '23', 'iraivan', '0', '', '', ''),
(5, 'andry998', 'music', '1000', '3', 'iraivan', '0', '', '', ''),
(6, 'andry998', 'music2', '2000', '23', 'iraivan', '0', '', '', ''),
(7, 'andry998', 'than manama ', '2000', '23', 'iraivan', '0', '', '', ''),
(8, 'andry998', 'enbar', '2000', '23', 'iraivan', '0', '', '', ''),
(9, 'andry998', 'kunathai ilakinrar', '1909', '132', 'iraivan', '0', '', '', ''),
(15, 'kondaduvom-copy', 'hop', '819', '189', 'hobeno-copy', '1', '', '', ''),
(16, 'kondaduvom-copy', 'any12', '8900', '12', 'hobeno-copy', '1', '', '', ''),
(17, 'kondaduvom-copy', 'nenjikula', '9000', '1290', 'hobeno-copy', '1', '', '', ''),
(18, 'kondaduvom-copy', 'onu illa', '1890', '1290', 'hobeno-copy', '1', '', '', ''),
(19, 'bno001', '89', '1000', '899', 'helosbno', '0', '', '', ''),
(20, '002', 'one', '1000', 'onhs', '002sbNO', '1', '', '', ''),
(21, '002', 'Two', '2300', 'thsn', '002sbNO', '1', '', '', ''),
(22, 'new001', 'one', '1200', 'one12', 'new SBNO1', '1', '', '', ''),
(23, 'new001', 'ninai thodum nin adiyar', '1900', 'N12', 'new SBNO1', '1', '', '', ''),
(24, 'Pen001', 'Pen01 p', '12000', '122', 'pen01 SBNO', '0', '', '', ''),
(25, 'TX01', 'Tpart01', '9000', 'T1209', 'TX BENO', '1', '', '', ''),
(26, 'TX01', 'T02', '4500', 'T00', 'TX BENO', '1', '', '', ''),
(27, 'TXT01', 'TXT p1', '1900', '10', 'TxtBENO', '1', '', '', ''),
(28, 'TXT01', 'TXT2', '7800', 'H20', 'TxtBENO', '1', '', '', ''),
(32, 'you', 'sum1', '900', 's01', 'theem', '1', '8', '8', ''),
(33, 'you', 'dhum2', '1000', 'd91', 'theem', '1', '8', '8', ''),
(34, 'you', 'dherara', '2300', 'd8', 'theem', '1', '9', '9', ''),
(35, 'onetwo', '12p1', '190', 'p98', 'onetwo sbno', '1', '', '', '8'),
(36, 'onetwo', '12p3', '900', 'kj989', 'onetwo sbno', '1', '8', '8', ''),
(37, 'fan01', 'p1', '900', 'huu', 'fanSBNO', '1', '8', '8', ''),
(38, 'fan01', 'p2', '100', 'p97', 'fanSBNO', '1', '', '', '8'),
(39, 'one', '78', '787', '78', '78', '0', '', '', ''),
(40, 'onehack', '78', '787', '78', '78hack', '0', '', '', ''),
(41, 'hack01', 'hack1', '900.00', '', 'hacksb', '0', '', '', ''),
(42, 'hack01', 'hack2', '190.00', '', 'hacksb', '0', '', '', ''),
(43, 'hackbno', 'one', '89', '', 'hack sbo', '0', '', '', ''),
(44, 'hack', '7', '7', '7', 'one', '0', '', '', ''),
(45, 'one0.2', '6', '6', '6', 'hack', '0', '', '', ''),
(46, 'one0.2', '6', '6', '6', 'hack', '0', '', '', ''),
(47, 'hi slash', 's4 slash', '899', '', 'ok slask', '0', '', '', ''),
(48, 'hi slash', 's4 slash', '899', '', 'ok slask', '0', '', '', ''),
(49, 'hi slash', 's4 slash', '899', '', 'ok slask', '0', '', '', ''),
(50, 'oneslash', 'one', '23', '', 'hi helo', '0', '', '', ''),
(51, 'oneslash', 'one', '23', '', 'hi helo', '0', '', '', ''),
(52, 'hp01', 'hp1', '199', '', 'hp sbno', '0', '', '', ''),
(53, 'hp01', 'hp2', '1200', '', 'hp sbno', '0', '', '', ''),
(54, 'pno', 's1', '100', '1', 'working', '0', '', '', ''),
(55, 'pno', 's2', '200', '', 'working', '0', '', '', ''),
(56, 'pentanic001', 'D1', '1980', '', 'DCM/54/23', '0', '', '', ''),
(57, 'pentanic001', 'D3', '23', '', 'DCM/54/23', '0', '', '', ''),
(61, '5', '4', '400000', '3', '8765', '1', '2', '2', '2'),
(62, 'r001', '5', '6000', '6', '0098', '0', '', '', ''),
(63, 'r001', '4', '899', '7', '0098', '0', '', '', ''),
(64, '1998', '500', '6000', '6', '987', '1', '9', '9', ''),
(65, '1998', '', '', '', '987', '1', '9', '9', ''),
(66, '9876', 'HI', '50000', '6', '009', '1', '9', '9', ''),
(67, '9876', 'HELLO', '8000', '7', '009', '1', '9', '9', ''),
(68, '98', 'HIII', '90877', '5', '876', '1', '9', '9', ''),
(69, '98', '', '7000', '5', '876', '1', '9', '9', ''),
(70, '67', 'HI', '86000', '8', '9876', '0', '', '', ''),
(71, '67', 'HI', '98000', '7', '9876', '0', '', '', ''),
(72, '76', 'HE', '7000', '5', '009', '1', '9', '9', ''),
(73, '76', 'HELLO', '8000', '5', '009', '1', '9', '9', ''),
(74, '88', 'one1', '900', '78', 'SB88', '1', '8', '8', ''),
(75, '88', 'two', '900', '56', 'SB88', '1', '', '', '9'),
(76, '9999', 'HI', '20000', '098', '098776', '0', '', '', ''),
(77, '9999', 'HELLO', '30000', '98', '098776', '0', '', '', ''),
(78, '9999', 'HI', '9000', '98', 'HELLO', '0', '', '', ''),
(79, '9999', 'JI', '8000', '9', 'HELLO', '0', '', '', ''),
(80, '1998', 'HR', '9000', '8', 'HIII', '0', '', '', ''),
(81, '1998', 'HR', '70000', '8', 'HIII', '0', '', '', ''),
(82, '278', 'A', '9000', '5', '0987', '1', '9', '9', ''),
(83, '278', 'B', '8000', '6', '0987', '1', '9', '9', ''),
(84, '765', 'c', '7000', '6', '0000005', '1', '9', '9', ''),
(85, '765', 'd', '7800', '8', '0000005', '1', '8', '9', ''),
(86, '00005', 'f', '8000', '5', '0098', '1', '9', '9', ''),
(87, '00005', 't', '8000', '5', '0098', '1', '9', '9', ''),
(88, 'oho', 'p1', '200', '23', 'ohosbno', '0', '', '', ''),
(89, 'oho', 'p2', '388', '23', 'ohosbno', '0', '', '', ''),
(90, 'DCM/22-23/005', 'TRAILER HIRE', '5500.00', '1253', '1253586', '0', '', '', ''),
(91, 'DCM/22-23/005', 'DRIVER BATTA', '100.00', '12535', '1253586', '0', '', '', ''),
(92, 'DCM/22-23/005', 'PALLETS COST', '5000.00', '12536', '1253586', '0', '', '', ''),
(93, 'DCM/22-23/005', 'LIFT ON', '400.00', '1253', '1253586', '0', '', '', ''),
(94, 'DCM/22-23/005', 'MISCE. EXPENSES', '500.00', '12453', '1253586', '0', '', '', ''),
(95, 'DCM/22-23/006', 'FREIGHT', '60000.00', '1253', '12534525', '1', '', '', '5'),
(96, 'DCM/22-23/006', 'THC', '2500.00', '1253', '12534525', '1', '9', '9', ''),
(97, 'DCM/22-23/006', 'BL CHARGES', '1500.00', '1253', '12534525', '1', '9', '9', ''),
(98, 'DCM/22-23/006', 'PALLETS', '5000.00', '1253', '12534525', '1', '6', '6', ''),
(99, '732', 'HI', '9000', '7', '987654', '1', '9', '9', ''),
(100, '732', 'HIII', '899', '9', '987654', '1', '8', '8', ''),
(101, '456', 'iiii', '7000', '5', '009', '1', '9', '9', ''),
(102, '456', 'hii', '8000', '6', '009', '1', '9', '8', ''),
(103, '595', 'COTTEN', '8000', '5', '0009', '1', '9', '9', ''),
(104, '595', 'COTTEN', '7000', '4', '0009', '1', '6', '6', ''),
(105, '12', 'COTTEN', '5000', '5', '009', '1', '5', '5', ''),
(106, '23', 'HP', '4000', '4', '23', '1', '4', '4', ''),
(107, '45', 'COTTEN', '9000', '5', '0009', '1', '9', '9', ''),
(108, '56', 'K', '9000', '8', '009', '1', '5', '4', ''),
(109, 'DCM/22-23/006', 'FREIGHT', '60000.00', '12', '125354', '1', '', '', '5'),
(110, 'DCM/22-23/006', 'THC', '2500.00', '1253', '125354', '1', '9', '9', ''),
(111, 'DCM/22-23/006', 'PALLETS', '5000.00', '12536', '125354', '1', '6', '6', ''),
(112, '555', 'fre', '200.00', '', '1253', '1', '', '', '5'),
(113, '555', 'thc', '100.00', '', '1253', '1', '9', '9', ''),
(114, '555', 'pal', '1000.00', '', '1253', '1', '6', '6', ''),
(115, '555555', 'frt', '100.00', '', '12536', '1', '', '', '5'),
(116, '555555', 'thc', '200.00', '', '12536', '1', '9', '9', ''),
(117, '555555', 'bl ', '500.00', '', '12536', '1', '9', '9', ''),
(118, '555555', 'pallets', '1000.00', '', '12536', '1', '6', '6', ''),
(119, '7777', 'ggg', '9000', '7', '66666', '1', '9', '9', ''),
(120, '9999', 'hii', '8000', '5', '987', '1', '9', '9', ''),
(121, '9999', 'hii', '7000', '5', '987', '1', '9', '9', ''),
(122, '7800', 'hi', '8999', '6', '', '0', '', '', ''),
(123, '7800', '84', '5000', '4', '', '0', '', '', ''),
(124, '7800', 'hii', '6000', '7', '', '0', '', '', ''),
(125, '7800', '8', '899', '8', '', '0', '', '', ''),
(126, '7800', '', '', '', '', '0', '', '', ''),
(127, 'dcm0018', 'thc', '100.00', 'asdfs', 'sdfs', '0', '', '', ''),
(128, 'dcm0018', 'asdfs', '200.00', 'dafd', 'sdfs', '0', '', '', ''),
(129, 'dcm00018', 'adfs', '5000.00', '', 'ads', '1', '9', '9', ''),
(130, 'dcm00018', 'asfsfd', '1000.00', 'ads', 'ads', '1', '', '', '5'),
(131, '00018', 'adfs', '1000.00', 'adfs', 'adfs', '1', '9', '9', ''),
(132, '00018', 'aasas', '1000.00', 'adfsa', 'adfs', '1', '', '', '5'),
(133, '2', 'hi', '4000', '3', '99', '0', '', '', ''),
(134, '2', 'hi', '5000', '8', '8', '1', '5', '5', ''),
(135, '5', 'hi', '550', '5', '55', '1', '5', '4', ''),
(136, '9000', 'hi', '700', '77', '88', '0', '', '', ''),
(137, '1995', 'HELLO', '5000', '5', '852', '0', '', '', ''),
(138, '1995', 'HI', '52000', '7', '852', '0', '', '', ''),
(139, '1995', 'HI', '10000', '5', '555', '1', '5', '5', ''),
(140, '1995', 'HELLO', '2000', '2', '555', '1', '2', '2', ''),
(141, '40', 'JI', '5000', '5', '55', '1', '5', '2', ''),
(142, '8', 'JIU', '500.00', '5', '5', '1', '5', '5', ''),
(143, 'DCM/2022-23/018', 'LIFT ON', '400.00', '1256352', '12588562', '0', '', '', ''),
(144, 'DCM/2022-23/018', 'TRAILER HIRE', '5500.00', '1253654', '12588562', '0', '', '', ''),
(145, 'DCM/2022-23/018', 'MISCE. EXP', '500.00', '125325', '12588562', '0', '', '', ''),
(146, 'DCM/2022-23/018', 'DRIVER BATTA', '100.00', '12535', '12588562', '0', '', '', ''),
(147, 'DCM/2022-23/018', 'PALLETS CHARGES', '6000.00', '125365', '12588562', '0', '', '', ''),
(148, 'DCM/2022-23/019', 'FREIGHT', '120000.00', '12532', '1256586', '1', '', '', '5'),
(149, 'DCM/2022-23/019', 'THC', '2500.00', '12536', '1256586', '1', '9', '9', ''),
(150, 'DCM/2022-23/019', 'BL CHARGES', '2500.00', '125365', '1256586', '1', '9', '9', ''),
(151, 'DCM/2022-23/019', 'SURRENDER BL CHARGES', '1500.00', '125463', '1256586', '1', '9', '9', ''),
(152, 'DCM/2022-23/019', 'PALLETS CHARGS', '6000.00', '125365', '1256586', '1', '6', '6', ''),
(153, 'DCM/2022-23/019', 'FREIGHT', '120000.00', '125465', '1258568', '1', '', '', '5'),
(154, 'DCM/2022-23/019', 'THC', '2500.00', '12545', '1258568', '1', '9', '9', ''),
(155, '019', 'FREIGHT', '120000.00', '12546', '1256453', '1', '', '', '5'),
(156, '019', 'THC', '2500.00', '1254563', '1256453', '1', '9', '9', ''),
(157, 'DCM/2022-23/019', 'FREIGHT', '120000.00', '12536', '1254565', '1', '', '', '5'),
(158, 'DCM/2022-23/019', 'THC', '2500.00', '12536', '1254565', '1', '9', '9', ''),
(159, 'DCM/2022-23/020', 'FREIGHT', '120000.00', '125364', '12546253', '1', '', '', '5'),
(160, 'DCM/2022-23/020', 'THC', '2500.00', '125463', '12546253', '1', '9', '9', ''),
(161, 'DCM', 'LIFT', '5000', '5', '12344/02-01-2023', '1', '8', '2', ''),
(162, 'DCM/2022-23-22', 'HI', '50000', '5', 'KAMARAJ', '1', '6', '6', ''),
(163, 'DCM/2022-23/019', 'LIFT ON', '120000', '99', 'S.B/B.E.NO.&Dt.SE/12588562/02-01-2023', '1', '8', '6', ''),
(164, 'DCM/2022-23/019', 'THC', '700000', '7', 'S.B/B.E.NO.&Dt.SE/12588562/02-01-2023', '1', '9', '9', ''),
(165, 'DCM/2022-23/019', 'FREIGHT', '500', '23456', 'S.B/B.E.NO.&Dt.SE/12588562/02-01-2023', '1', '9', '8', ''),
(166, 'v1', 'p1', '100', 'p90', 'v2', '1', '', '', '8'),
(167, 'v1', 'p2', '80', 'p23', 'v2', '1', '7', '7', ''),
(168, 'DCM/2022-23/30', 'PALLETS CHAEGS', '7000', '', 'BE.NO&12345677/02-01-2023', '1', '8', '7', ''),
(169, 'DCM/2022-23/30', 'THC', '7000', '4', 'BE.NO&12345677/02-01-2023', '1', '', '', '6'),
(170, 'DCM/2022-23/31', 'LIFTON', '400', '1256352', 'S.B/B.E.NO&DT.12588562/02-01-2023', '0', '', '', ''),
(171, 'DCM/2022-23/33', 'LIFT', '600', '1234', 'S.B/B.E.NO.&DT.1285562/02-012023', '1', '6', '6', ''),
(172, 'DCM/2022-23/33', 'BL CHARGES', '6000', '12445', 'S.B/B.E.NO.&DT.1285562/02-012023', '1', '7', '7', ''),
(173, 'DCM/2022-23/33', 'THC', '7000', '76678', 'S.B/B.E.NO.&DT.1285562/02-012023', '1', '7', '7', ''),
(174, 'DCM/2022-23/33', 'FRELGHT', '7800000', '567898', 'S.B/B.E.NO.&DT.1285562/02-012023', '1', '', '', '5'),
(175, 'DCM/2022-23/33', 'SURRENDER BL CHARGES', '800000', '4567', 'S.B/B.E.NO.&DT.1285562/02-012023', '1', '', '', '8'),
(176, 'DCM/2022-23/33', 'PALLETS CHARGS', '7000000', '6789', 'S.B/B.E.NO.&DT.1285562/02-012023', '1', '', '', '6'),
(177, '57', 'HP', '60000', '888', '5679', '1', '6', '6', ''),
(178, '5678', 'hp', '700', '8', '67899amc', '1', '9', '4', ''),
(179, '5678', 'dell', '900', '8', '67899amc', '1', '9', '9', ''),
(180, '5678', 'acer', '9000', '6', '67899amc', '1', '8', '8', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbltaxdetails1`
--

CREATE TABLE `tbltaxdetails1` (
  `jaidno` int(11) NOT NULL,
  `jaino` varchar(100) DEFAULT NULL,
  `japarticular` varchar(100) DEFAULT NULL,
  `jaamount` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `in_pay`
--
ALTER TABLE `in_pay`
  ADD PRIMARY KEY (`ipidno`);

--
-- Indexes for table `out_pay`
--
ALTER TABLE `out_pay`
  ADD PRIMARY KEY (`opidno`);

--
-- Indexes for table `ship`
--
ALTER TABLE `ship`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `ship1`
--
ALTER TABLE `ship1`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `ship1_party`
--
ALTER TABLE `ship1_party`
  ADD PRIMARY KEY (`pidno`);

--
-- Indexes for table `ship2`
--
ALTER TABLE `ship2`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `tblbill`
--
ALTER TABLE `tblbill`
  ADD PRIMARY KEY (`idno`);

--
-- Indexes for table `tblcoo`
--
ALTER TABLE `tblcoo`
  ADD PRIMARY KEY (`coidno`);

--
-- Indexes for table `tblcoo_details`
--
ALTER TABLE `tblcoo_details`
  ADD PRIMARY KEY (`coidno`);

--
-- Indexes for table `tbldetails`
--
ALTER TABLE `tbldetails`
  ADD PRIMARY KEY (`idno`);

--
-- Indexes for table `tblnotify`
--
ALTER TABLE `tblnotify`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `tblquote`
--
ALTER TABLE `tblquote`
  ADD PRIMARY KEY (`qidno`);

--
-- Indexes for table `tblquote_details1`
--
ALTER TABLE `tblquote_details1`
  ADD PRIMARY KEY (`jaidno`);

--
-- Indexes for table `tblquote_details2`
--
ALTER TABLE `tblquote_details2`
  ADD PRIMARY KEY (`jasidno`);

--
-- Indexes for table `tbltaxable_temp`
--
ALTER TABLE `tbltaxable_temp`
  ADD PRIMARY KEY (`idno`);

--
-- Indexes for table `tbltaxbill`
--
ALTER TABLE `tbltaxbill`
  ADD PRIMARY KEY (`tbidno`);

--
-- Indexes for table `tbltaxdetails`
--
ALTER TABLE `tbltaxdetails`
  ADD PRIMARY KEY (`tidno`);

--
-- Indexes for table `tbltaxdetails1`
--
ALTER TABLE `tbltaxdetails1`
  ADD PRIMARY KEY (`jaidno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `in_pay`
--
ALTER TABLE `in_pay`
  MODIFY `ipidno` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `out_pay`
--
ALTER TABLE `out_pay`
  MODIFY `opidno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ship`
--
ALTER TABLE `ship`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ship1`
--
ALTER TABLE `ship1`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ship1_party`
--
ALTER TABLE `ship1_party`
  MODIFY `pidno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `ship2`
--
ALTER TABLE `ship2`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbill`
--
ALTER TABLE `tblbill`
  MODIFY `idno` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblcoo`
--
ALTER TABLE `tblcoo`
  MODIFY `coidno` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblcoo_details`
--
ALTER TABLE `tblcoo_details`
  MODIFY `coidno` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbldetails`
--
ALTER TABLE `tbldetails`
  MODIFY `idno` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblnotify`
--
ALTER TABLE `tblnotify`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblquote`
--
ALTER TABLE `tblquote`
  MODIFY `qidno` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblquote_details1`
--
ALTER TABLE `tblquote_details1`
  MODIFY `jaidno` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblquote_details2`
--
ALTER TABLE `tblquote_details2`
  MODIFY `jasidno` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltaxable_temp`
--
ALTER TABLE `tbltaxable_temp`
  MODIFY `idno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `tbltaxbill`
--
ALTER TABLE `tbltaxbill`
  MODIFY `tbidno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `tbltaxdetails`
--
ALTER TABLE `tbltaxdetails`
  MODIFY `tidno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT for table `tbltaxdetails1`
--
ALTER TABLE `tbltaxdetails1`
  MODIFY `jaidno` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
