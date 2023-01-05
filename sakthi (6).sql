-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 06, 2023 at 12:36 AM
-- Server version: 10.3.37-MariaDB-cll-lve
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sakthi`
--

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `image` longblob NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblamc`
--

CREATE TABLE `tblamc` (
  `amc_id` int(11) NOT NULL,
  `amc_date` datetime NOT NULL,
  `amc_ref` varchar(200) NOT NULL,
  `amc_no` varchar(100) NOT NULL,
  `amc_name` varchar(200) NOT NULL,
  `amc_cgst` varchar(100) NOT NULL,
  `amc_sgst` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblamc`
--

INSERT INTO `tblamc` (`amc_id`, `amc_date`, `amc_ref`, `amc_no`, `amc_name`, `amc_cgst`, `amc_sgst`, `created_at`) VALUES
(2, '2022-11-15 00:00:00', 'ramesh', 'ramewaram001', 'thiruchencode', '8', '8', '2022-11-15 18:29:31'),
(5, '2022-11-30 00:00:00', '345  ', '67899', '- Select one -', '2', '3', '2022-11-30 14:09:32'),
(6, '2022-11-30 00:00:00', 'vasanthi', '7777', '- Select one -', '3', '2', '2022-11-30 15:40:18'),
(7, '2022-12-01 00:00:00', 'KUMAR', '6789', '- Select one -', '1', '1', '2022-12-01 05:25:52'),
(9, '2022-12-01 00:00:00', 'kaviya', '00987', '- Select one -', '2', '1', '2022-12-01 08:17:47'),
(13, '2022-12-15 00:00:00', 'SUPREME@0001', '00001', '- Select one -', '9', '9', '2022-12-15 05:06:48'),
(15, '2022-12-15 00:00:00', 'SUPREME@0001', '0001', '- Select one -', '9', '9', '2022-12-15 05:07:42'),
(16, '2022-12-28 00:00:00', 'kaviya', '99999999', '- Select one -', '9', '', '2022-12-28 09:13:36'),
(17, '2022-12-30 00:00:00', 'enakutha', '7', 'revathi computers', '5', '7', '2022-12-30 09:59:41'),
(18, '2023-01-04 00:00:00', 'JOHN', '00000876', 'DHOSTH ASSOCIATION', '3', '3', '2023-01-04 09:58:41'),
(19, '2023-01-04 00:00:00', 'KANAGA', '77768', 'OHM SAKTHI XEROX', '3', '3', '2023-01-04 10:01:32'),
(24, '2023-01-05 00:00:00', '1578', '1578', 'MEKALAI XEROX', '9', '9', '2023-01-05 11:03:11'),
(25, '2023-01-05 00:00:00', '1578', '1578', 'MEKALAI XEROX', '9', '9', '2023-01-05 11:03:12'),
(26, '2023-01-05 00:00:00', '5032', '5032/2022-23', 'LUCKY XEROX', '9', '9', '2023-01-05 12:31:10'),
(27, '2023-01-05 00:00:00', '', '', '- Select one -', '', '', '2023-01-05 18:49:43'),
(28, '2023-01-05 00:00:00', 'Test_ref', 'Test_amno001', 'malika AC', '10', '10', '2023-01-05 18:59:33');

-- --------------------------------------------------------

--
-- Table structure for table `tblamc_details`
--

CREATE TABLE `tblamc_details` (
  `amc_id` int(11) NOT NULL,
  `amc_no` varchar(200) NOT NULL,
  `amc_details` varchar(200) NOT NULL,
  `amc_qty` varchar(200) NOT NULL,
  `amc_rate` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblamc_details`
--

INSERT INTO `tblamc_details` (`amc_id`, `amc_no`, `amc_details`, `amc_qty`, `amc_rate`) VALUES
(1, 'kanthamalai', 'kavalq', '100', '8'),
(2, 'kanthamalai', 'serapaa', '1000', '20'),
(3, 'kanthamalai', 'kavalq', '100', '8'),
(4, 'kanthamalai', 'serapaa', '1000', '20'),
(5, 'ramewaram001', 'siva ', '1000', '10'),
(6, 'ramewaram001', 'om sakthi', '1900', '10'),
(7, '67899', '- Select one -', '4000', '1'),
(8, '00987', '- Select one -', '9000', '7'),
(9, '00987', '- Select one -', '9000', '7'),
(10, '00987', 'null', '', ''),
(11, '00987', '- Select one -', '7000', '2'),
(12, '00001', '- Select one -', '1', '7000'),
(13, '00001', '- Select one -', '1', '7000'),
(14, '0001', '- Select one -', '1', '7000'),
(15, '99999999', 'CANON IR 2525 BLADE', '9000', '9'),
(16, '7', 'CANON IR 4570 DRUM', '900', '8'),
(17, '00000876', 'KONICA MINOLTA 164 BLADE', '700000', '2'),
(18, '00000876', 'CANON IR 4570 BLADE', '60000', '1'),
(19, '77768', 'KONICA MINOLTA 164 BLADE', '8000', '2'),
(20, '77768', 'TOSHIBA 163 DRUM', '30000', '1'),
(21, '5431/2022-23', 'XEROX WORK CENTRE 7535 DRUM', '7500', '1 NO'),
(22, '5431/2022-23', 'XEROX WORK CENTRE 7535 DRUM', '7500', '1 NO'),
(23, '5431/2022-23', 'XEROX WORK CENTRE 7535 DRUM', '7500', '1 NO'),
(24, '5431/2022-23', 'XEROX WORK CENTRE 7535 DRUM', '7500', '1 NO'),
(25, '1578', 'CANON IR 4570 DRUM', '10000', '1 NO'),
(26, '1578', 'CANON IR 4570 DRUM', '10000', '1 NO'),
(27, '5032/2022-23', 'CANON IR 4570 DRUM', '10000', '1'),
(28, '5032/2022-23', 'null', '', ''),
(29, '5032/2022-23', 'null', '', ''),
(30, 'Test_amno001', 'CANON IR 4570 BLADE', '2', '299');

-- --------------------------------------------------------

--
-- Table structure for table `tblbiller`
--

CREATE TABLE `tblbiller` (
  `idno` int(10) NOT NULL,
  `bfname` varchar(100) DEFAULT NULL,
  `blname` varchar(100) DEFAULT NULL,
  `bgender` varchar(100) DEFAULT NULL,
  `bcompany` varchar(100) DEFAULT NULL,
  `bphone` varchar(100) DEFAULT NULL,
  `bemail` varchar(100) DEFAULT NULL,
  `buname` varchar(100) DEFAULT NULL,
  `bpwd` varchar(100) DEFAULT NULL,
  `bstatus` varchar(100) DEFAULT NULL,
  `bgroup` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbiller`
--

INSERT INTO `tblbiller` (`idno`, `bfname`, `blname`, `bgender`, `bcompany`, `bphone`, `bemail`, `buname`, `bpwd`, `bstatus`, `bgroup`) VALUES
(5, 'kali', 'udan', 'Male', 'miga', '23984798', 'thandiya', 'sandlar', '234', '1', ''),
(7, 'revathi', 'revathi', 'Female', 'computers', '987656453', 'revathi@gmail.com', 'revathi', '678', '2', 'hello'),
(8, 'abi', 'abiya', 'Male', 'november', '8767564323', 'kumar@gmail.com', 'abiya', '890', '2', 'hello'),
(9, 'noor', 'noor', 'Male', 'dell', '980000876', 'noor@gmail.com', 'noor', 'noor', '1', 'iiiiiii'),
(10, 'supreme electronic services', 'supreme electronic services', 'Male', 'supreme electronic services', '9003354099', 'sakthicopier2019@gmail.com', 'SUPREME@001', 'Supreme@001', '-Select-', 'SUPPLIER'),
(11, 'ravathi', 'ravathi', 'Female', 'ravathi AC compiler', '7200725543', 'ravikumar@gmail.com', 'revathi', '4567', '1', 'hello'),
(12, 'KL', 'COPIER', '-Select-', 'SRI KL ENTERPRISES', '9791211885', 'klcopier2023@gmail.com', 'KLCOPIER@888', 'KLCOPIER@888', '-Select-', 'SUPPLIER'),
(13, 'KL', 'COPIER', '-Select-', 'SRI KL ENTERPRISES', '9791211885', 'klcopier2023@gmail.com', 'KLCOPIER@888', 'KLCOPIER@888', '-Select-', 'SUPPLIER'),
(14, 'anbu', 'anbu', 'Male', 'anbu&go', '0465578', 'anbu@gmail.com', 'anbu', 'anbu', '1', 'good'),
(15, 'revathi', 'revathi', '-Select-', 'computers', '987656453', 'revathi@gmail.com', 'revathi', '678', '-Select-', 'hiji'),
(16, 'SAHUL', '', 'Male', 'NEW CRYSTAL COPIER', '9791211885', 'newcrystalcopier2023@gmail.com', 'CRYSTAL@2023', 'CRYSTAL@2023', '1', 'SUPPLIER');

-- --------------------------------------------------------

--
-- Table structure for table `tblbrand`
--

CREATE TABLE `tblbrand` (
  `brid` int(11) NOT NULL,
  `brcreatedate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `brname` varchar(199) NOT NULL,
  `br_remarks` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbrand`
--

INSERT INTO `tblbrand` (`brid`, `brcreatedate`, `brname`, `br_remarks`) VALUES
(1, '2022-10-04 01:36:15', '', ''),
(2, '2022-10-04 01:36:59', '2', '2'),
(3, '2022-10-04 01:37:11', 'two', 'three'),
(4, '2022-10-06 14:17:46', 'bala', '123'),
(5, '2022-11-29 13:53:08', 'lenovo', 'Good'),
(6, '2022-11-29 13:54:34', 'one', 'two'),
(7, '2022-11-29 13:54:48', 'ethuvechiyaeee', 'amman'),
(8, '2022-11-30 09:24:19', 'acer', ''),
(9, '2022-12-01 07:29:53', 'i phone', ''),
(10, '2022-12-01 15:48:21', 'hello', ''),
(11, '2022-12-01 15:49:25', 'ji', ''),
(12, '2022-12-02 12:13:52', 'CANON', ''),
(13, '2022-12-02 12:14:05', 'KONICA MINOLTA', ''),
(14, '2022-12-02 12:14:32', 'KYOCERA', ''),
(15, '2022-12-02 12:14:32', 'KYOCERA', ''),
(16, '2022-12-03 07:26:49', 'ji', ''),
(17, '2022-12-03 07:52:47', 'hp', ''),
(18, '2022-12-03 07:55:32', 'lenovo', ''),
(19, '2022-12-08 10:40:01', 'SHARP', ''),
(20, '2022-12-08 10:40:12', 'SINDOH', ''),
(21, '2022-12-08 10:40:12', 'SINDOH', ''),
(22, '2022-12-08 10:40:20', 'TOSHIBA', ''),
(23, '2022-12-08 10:48:40', 'XEROX WORKCENTRE', ''),
(24, '2023-01-04 07:23:06', 'phone', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `catid` int(11) NOT NULL,
  `catname` varchar(100) NOT NULL,
  `catremarks` varchar(100) NOT NULL,
  `cat_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`catid`, `catname`, `catremarks`, `cat_time`) VALUES
(1, '', '', '2022-10-03 10:39:45'),
(2, '', '', '2022-10-03 10:39:45'),
(3, '', '', '2022-10-03 10:39:45'),
(4, '', '', '2022-10-03 10:39:45'),
(5, '', '', '2022-10-03 10:39:45'),
(6, 'om', 'nama', '2022-10-03 10:39:45'),
(7, '', '', '2022-10-03 10:43:22'),
(8, 'thalae', 'lallae loo', '2022-10-03 10:43:56'),
(9, '', '', '2022-10-03 10:46:27'),
(10, 'abc', '123', '2022-10-04 01:21:26'),
(11, '', '', '2022-10-04 01:25:20'),
(12, '', '', '2022-10-04 01:33:42'),
(13, 'amman kovil', 'aadi varum', '2022-11-29 13:55:06'),
(14, 'hello', '', '2022-12-01 07:31:55'),
(15, 'SUPERMAX', '', '2022-12-02 12:15:43'),
(16, 'OPC', '', '2022-12-02 12:15:54'),
(17, 'KHUSHI', '', '2022-12-02 12:16:01'),
(18, 'BOMBAY', '', '2022-12-02 12:16:13'),
(19, 'BHAVYA', '', '2022-12-02 12:16:21'),
(20, 'MITSUYO', '', '2022-12-02 12:40:41'),
(21, 'MITSUYO', '', '2022-12-02 12:40:41'),
(22, 'opc', '', '2022-12-03 07:56:40');

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomer`
--

CREATE TABLE `tblcustomer` (
  `idno` int(10) NOT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `caddress` varchar(200) NOT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `uname` varchar(100) DEFAULT NULL,
  `pwd` varchar(100) DEFAULT NULL,
  `cstatus` varchar(100) DEFAULT NULL,
  `cgroup` varchar(100) DEFAULT NULL,
  `cus_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcustomer`
--

INSERT INTO `tblcustomer` (`idno`, `fname`, `lname`, `gender`, `company`, `caddress`, `phone`, `email`, `uname`, `pwd`, `cstatus`, `cgroup`, `cus_type`) VALUES
(2, '', '', '-Select-', '', '', '', '', '', '', '-Select-', '', ''),
(15, '', '', '', '', '', '', '', '', '', '', '', ''),
(19, 'vasanthi', 'acer shop', '', '', '', '046145567', 'vasanthi@gmail.com', 'A4', '', '', '30000', '0'),
(20, 'ravi', 'ravi', 'Male', 'phone shop', '', '04612345', '123vema@gmail.com', 'ravikumar', '899', '2', 'ram', '0'),
(21, 'noor', 'noor', '', '', '', '9000007656', 'noor@gmail.com', 'A5', '', '', '2200000', '0'),
(25, 'malika', 'malika AC', '', '', '', '88', 'malika@gmail.com', 'AC 005', '', '', '29000', '1'),
(26, 'malika', 'malika', 'Female', 'malika AC', '', '8765432123', 'malika@gmail.com', 'malika', '1234', '2', 'good', '0'),
(27, 'VILLAVARAYAR & SONS', 'VILLAVARAYAR & SONS', '', '', '', '9443172023', 'sakthicopier2019@gmail.com', 'KONICA MINOLTA 164', '', '', '10000', '0'),
(28, 'DHOSTH ', 'ASSOCIATION', 'Male', 'DHOSTH ASSOCIATION', '', '9443172023', 'sakthicopier2019@gmail.com', 'DHOSTH@0001', 'DHOSTH@0001', '1', 'RENTAL CUSTOMER', '0'),
(29, 'LUCKY ', 'XEROX', 'Male', 'LUCKY XEROX', '', '6385524253', 'sakthicopier2023@gmail.com', 'LUCKY@0001', 'LUCKY@0001', '1', 'CUSTOMER', '0'),
(30, 'JAI XEROX', 'JAI XEROX', '', '', '', '6385524251', 'sakthicopier2000@gmail.com', 'XEROX 5855', '', '', '110000', '0'),
(31, 'RAJATHI ', 'SHREE XEROX', '', '', '', '9940790149', 'sreecomputers@gmail.com', 'XEROX 5855', '', '', '110000', '0'),
(32, 'PARAMESHWARI', 'ADVOCATE', 'Female', 'OHM SAKTHI XEROX', '', '6385524250', 'sakthicopier2028@gmail.com', 'OHMSAKTHI@999', 'OHMSAKTHI@999', '1', 'CUSTOMER', '0'),
(33, 'kaviya', 'kaviya', 'Female', 'chemicals.ltd', '', '8877654323', 'kaviya@gmail.com', 'kaviya', 'kaviya', '1', 'good', '0'),
(34, 'SAMUEL', 'SAMUEL TRADERS', '', '', '', '7598138079', 'samueltraders2023@gmail.com', 'canon3225', '', '', '0', '0'),
(35, 'MEKALAI', '', 'Female', 'MEKALAI XEROX', '', '9943933617', 'mekalaixerox2023@gmail.com', 'MEKALAI@2023', 'MEKALAI@2023', '1', 'CUSTOMER', '0'),
(39, 'MR.X', 'Tuty', '', 'MR.X Shop', '', '226100', '123vema@gmail.com', 'musci2', '', '', '12000', '0'),
(40, 'add_name', 'add_lname', 'Male', 'add_shop', 'address_text', '2289118', '123vema@gmail.com', 'musci2', '12', '1', 'Good', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tblexpense`
--

CREATE TABLE `tblexpense` (
  `id` int(11) NOT NULL,
  `exp_date` datetime NOT NULL,
  `exp_name1` varchar(200) NOT NULL,
  `exp_name2` varchar(200) NOT NULL,
  `exp_amount` varchar(100) NOT NULL,
  `exp_amount_type` varchar(100) NOT NULL,
  `exp_remark` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblexpense`
--

INSERT INTO `tblexpense` (`id`, `exp_date`, `exp_name1`, `exp_name2`, `exp_amount`, `exp_amount_type`, `exp_remark`) VALUES
(1, '2022-11-13 00:00:00', 'others', 'busines exp', '35000', 'cash', 'ok'),
(2, '2022-11-20 00:00:00', '1', '', '199', 'cash', 'good'),
(3, '2022-11-20 00:00:00', 'others', 'Working proper', '299', 'IOB', 'done'),
(4, '2022-11-30 00:00:00', '1', '', '6000', 'emi', 'good'),
(5, '2022-11-30 00:00:00', 'others', 'office expense', '3000', '300', 'gi'),
(6, '2022-11-30 00:00:00', '-Select-', '', '', '', ''),
(7, '2022-11-30 00:00:00', '1', '', '7500', '6000', 'hi'),
(8, '2022-11-30 00:00:00', '1', '', '7500', '6000', 'hi'),
(9, '2022-11-30 00:00:00', '-Select-', '', '700', 'emi', 'hiii'),
(10, '2022-12-01 00:00:00', '2', 'EB BILL', '10000', 'CASH', 'HI'),
(11, '2022-12-01 00:00:00', '-Select-', '', '', '', ''),
(12, '2022-12-01 00:00:00', '2', '', '1000', 'Book', 'Good'),
(13, '0008-07-08 00:00:00', '2', '', '78', '878', '7878'),
(14, '2022-12-01 00:00:00', 'others', 'office  rend', '5000', 'rent', 'this month'),
(15, '2022-12-05 00:00:00', '1', '', '5000', 'rent', 'hi'),
(16, '2022-12-05 00:00:00', 'others', 'revathi', '7000', 'rent', 'hello'),
(17, '2022-12-17 00:00:00', 'others', 'A.KANNAN', '200', 'CASH', 'NALUMAVADI EXP'),
(18, '2022-12-17 00:00:00', 'others', 'A.KANNAN', '200', 'CASH', 'NALUMAVADI EXP'),
(19, '2022-12-28 00:00:00', 'others', 'renuka', '5000', 'rent', 'good');

-- --------------------------------------------------------

--
-- Table structure for table `tblnew_invoice_rental`
--

CREATE TABLE `tblnew_invoice_rental` (
  `inv_ren_idno` int(11) NOT NULL,
  `inv_ren_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `inv_ren_date` datetime NOT NULL,
  `inv_ren_cname` varchar(299) NOT NULL,
  `inv_ren_code` varchar(199) NOT NULL,
  `inv_ren_mno` varchar(199) NOT NULL,
  `inv_ren_slno` varchar(289) NOT NULL,
  `inv_ren_mread` varchar(200) NOT NULL,
  `inv_ren_pread` varchar(199) NOT NULL,
  `inv_ren_mdate` datetime NOT NULL,
  `inv_ren_pdate` datetime NOT NULL,
  `inv_ren_sgst` int(11) NOT NULL,
  `inv_ren_cgst` int(11) NOT NULL,
  `inv_ren_pcc` varchar(100) NOT NULL,
  `inv_ren_sno1` varchar(199) NOT NULL,
  `inv_ren_month_rent` varchar(199) NOT NULL,
  `inv_ren_bno` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblnew_invoice_rental`
--

INSERT INTO `tblnew_invoice_rental` (`inv_ren_idno`, `inv_ren_created`, `inv_ren_date`, `inv_ren_cname`, `inv_ren_code`, `inv_ren_mno`, `inv_ren_slno`, `inv_ren_mread`, `inv_ren_pread`, `inv_ren_mdate`, `inv_ren_pdate`, `inv_ren_sgst`, `inv_ren_cgst`, `inv_ren_pcc`, `inv_ren_sno1`, `inv_ren_month_rent`, `inv_ren_bno`) VALUES
(2, '2022-11-15 18:43:03', '2022-11-15 00:00:00', '1', 'code music', '001', 'm091', '1000', '800', '2022-11-15 00:00:00', '2022-11-15 00:00:00', 7, 7, '1200', '500', '1200', 'music01'),
(4, '2022-11-29 15:05:32', '2022-11-29 00:00:00', '2', 'code', 'm001', 's001', '2000', '1000', '2022-11-29 00:00:00', '2022-11-29 00:00:00', 0, 0, '2', '1000', '1020', '001ok'),
(5, '2022-11-30 13:20:42', '2022-11-30 00:00:00', '1', '9876', '23456789', '7890', 'good service', 'good', '2022-11-30 00:00:00', '2022-11-30 00:00:00', 0, 0, '500', '4500', '5000', '0002'),
(6, '2022-11-30 13:24:31', '2022-11-30 00:00:00', '3', '7899', '45678904', '890', 'asdfghjkl', 'asdfghj', '2022-11-30 00:00:00', '2022-11-30 00:00:00', 4, 5, '500', '3500', '4000', '003'),
(7, '2022-11-30 15:31:06', '2022-11-30 00:00:00', '2', '9876', '23456789', '987', 'hiiiiiiiiiiiii', 'hhhhiiiiiiiiiiiii', '2022-11-30 00:00:00', '2022-11-30 00:00:00', 0, 0, '400', '300', '4000', '12345'),
(8, '2022-11-30 15:32:57', '2022-11-30 00:00:00', '4', '7654', '456789', '654', 'hello', 'hello', '2022-11-30 00:00:00', '2022-11-30 00:00:00', 0, 0, '8', '77', '700', '123456'),
(9, '2022-11-30 15:37:21', '2022-11-30 00:00:00', '2', '7899', '456789', '888', 'hi', '', '2022-11-30 00:00:00', '2022-11-30 00:00:00', 2, 1, '', '', '', '12345'),
(12, '2022-12-01 16:01:23', '2022-12-01 00:00:00', 'vasanth@gmail.com', '888', '8888777777777777', '7777', 'hih', 'hiiiiiiiiiii', '2022-12-01 00:00:00', '2022-12-01 00:00:00', 0, 0, '777777777', '6666666', '500', '1111'),
(14, '2022-12-05 10:47:31', '2022-12-05 00:00:00', 'revathi computers', '9898', '9000987654', '9898', 'hiii', 'hiiii', '2022-12-05 00:00:00', '2022-12-05 00:00:00', 0, 0, '20000', '200', '20000', '9898'),
(15, '2022-12-14 06:20:05', '2022-12-14 00:00:00', 'VILLAVARAYAR & SONS', 'SCN1023050418', 'KONICA MINOLTA 164', 'A0XX041118554', '135549', '134867', '2022-12-14 00:00:00', '2022-11-14 00:00:00', 9, 9, '40', '0', '2000', '1822'),
(16, '2022-12-14 08:11:27', '2022-12-14 00:00:00', 'VILLAVARAYAR & SONS', 'SCN1023050418', 'KONICA MINOLTA 164', 'A0XX041118554', '135549', '134867', '2022-12-14 00:00:00', '2022-11-14 00:00:00', 0, 0, '40', '4000', '2000', '331'),
(17, '2022-12-16 09:44:14', '2022-12-16 00:00:00', 'phone shop', '628', '8878654321', '908', 'hello', 'good', '2022-12-16 00:00:00', '2022-12-16 00:00:00', 2, 3, '3', '500', '6000', '689'),
(18, '2022-12-16 10:26:11', '2022-12-16 00:00:00', 'malika AC', '628', '7890876545', '888', 'hello', 'good', '2022-12-16 00:00:00', '2022-12-16 00:00:00', 0, 0, '100', '200', '5000', '005'),
(19, '2022-12-16 10:30:58', '2022-12-16 00:00:00', 'malika AC', '628', '9876565434', '888', 'good', 'good', '2022-12-16 00:00:00', '2022-12-16 00:00:00', 1, 1, '5', '200', '6000', '004'),
(21, '2022-12-28 09:05:43', '2022-12-28 00:00:00', 'vasanth@gmail.com', '628', '876543456', '999', 'hp', 'hp', '2022-12-28 00:00:00', '2022-12-28 00:00:00', 9, 9, '8', '9', '8000', '112345'),
(22, '2022-12-30 09:28:34', '2022-12-30 00:00:00', '-select-', '', '', '', '', '', '2022-12-30 00:00:00', '2022-12-30 00:00:00', 0, 0, '04', '', '', ''),
(23, '2022-12-30 09:28:43', '2022-12-30 00:00:00', '-select-', '', '', '', '', '', '2022-12-30 00:00:00', '2022-12-30 00:00:00', 0, 0, '06', '', '', ''),
(24, '2022-12-30 09:32:43', '2022-12-30 00:00:00', 'malika AC', '5', '66', '6', 'hi', 'hi', '2022-12-30 00:00:00', '2022-12-30 00:00:00', 9, 9, '5', '300', '3000', '1'),
(25, '2022-12-30 09:35:50', '2022-12-30 00:00:00', 'revathi computers', '4', '3456789', '87654', 'jh', 'jiiiii', '2022-12-30 00:00:00', '2022-12-30 00:00:00', 0, 0, '9', '90', '400', '3'),
(26, '2023-01-04 06:45:20', '2023-01-04 00:00:00', 'DHOSTH ASSOCIATION', '099', '0098', '0987', 'hello', 'hi', '2023-01-04 00:00:00', '2023-01-04 00:00:00', 8, 8, '0.8', '70', '6700', '009'),
(27, '2023-01-04 07:18:44', '2023-01-04 00:00:00', 'revathi computers', '1993', '0097', '0098', 'hii', 'hello', '2023-01-04 00:00:00', '2023-01-04 00:00:00', 5, 5, '99', '60', '5000', '1993'),
(28, '2023-01-04 07:41:37', '2023-01-04 00:00:00', 'phone shop', '1977', '9987', '9876', 'GOOD', 'GOOD', '2023-01-04 00:00:00', '2023-01-04 00:00:00', 0, 0, '0.5', '4', '400', '19966'),
(29, '2023-01-04 07:44:42', '2023-01-04 00:00:00', 'phone shop', 'V11', 'VM1', '89', '2000', '100', '2023-01-04 00:00:00', '2023-01-04 00:00:00', 0, 0, '0.40', '200', '210', 'V12'),
(30, '2023-01-04 08:07:42', '2023-01-04 00:00:00', 'phone shop', '789', 'A3', 'A55', 'GOOD', 'GOOD', '2023-01-04 00:00:00', '2023-01-04 00:00:00', 8, 8, '050', '8', '5000', '19988'),
(31, '2023-01-04 09:03:27', '2023-01-04 00:00:00', 'malika AC', '987', '', '8', 'HI', 'HI', '2023-01-04 00:00:00', '2023-01-04 00:00:00', 4, 5, '0.50', '99', '700', '9956'),
(32, '2023-01-05 04:49:34', '2023-01-05 00:00:00', 'OHM SAKTHI XEROX', 'SCN1023050418', '', 'A0XX041118554', '15000', '12000', '2023-01-05 00:00:00', '2023-01-05 00:00:00', 0, 0, '0.90', '7000', '4000', '1868'),
(33, '2023-01-05 18:20:51', '2023-01-05 00:00:00', 'MEKALAI XEROX', 'SCN1023050418', 'KONICA MINOLTA 164', '', '120000', '90000', '2023-01-05 00:00:00', '2023-01-05 00:00:00', 0, 0, '0.90', '4500', '4000', '3599'),
(34, '2023-01-05 10:52:55', '2023-01-05 00:00:00', 'MEKALAI XEROX', 'SCN1023050418', 'KONICA MINOLTA 164', 'A0XX041118554', '15000', '7000', '2023-01-05 00:00:00', '2023-01-05 00:00:00', 9, 9, '0.90', '5000', '4000', '1629'),
(35, '2023-01-05 18:41:37', '2023-01-05 00:00:00', 'add_shop', '001', 'modelgst', 'Test Sno', '12000', '10000', '2023-01-05 00:00:00', '2023-01-05 00:00:00', 10, 10, '0.20', '1000', '2000', 'Test_001');

-- --------------------------------------------------------

--
-- Table structure for table `tblnew_invoice_sales`
--

CREATE TABLE `tblnew_invoice_sales` (
  `inv_sal_idno` int(11) NOT NULL,
  `inv_sal_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `inv_sal_date` datetime NOT NULL,
  `inv_sal_ref` varchar(200) NOT NULL,
  `inv_sal_bno` varchar(100) NOT NULL,
  `inv_sal_cname` varchar(200) NOT NULL,
  `inv_sal_cgst` varchar(100) NOT NULL,
  `inv_sal_sgst` varchar(199) NOT NULL,
  `inv_sal_scharge` varchar(100) NOT NULL,
  `inv_sal_fcharge` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblnew_invoice_sales`
--

INSERT INTO `tblnew_invoice_sales` (`inv_sal_idno`, `inv_sal_created`, `inv_sal_date`, `inv_sal_ref`, `inv_sal_bno`, `inv_sal_cname`, `inv_sal_cgst`, `inv_sal_sgst`, `inv_sal_scharge`, `inv_sal_fcharge`) VALUES
(1, '2022-11-12 22:50:59', '2022-11-12 00:00:00', 'balaref', 'bala1001', 'bala', '7', '7', '90', '890'),
(2, '2022-11-15 06:11:07', '2022-11-15 00:00:00', 'hi', 'one', 'one customer', '7', '7', '200', '20'),
(3, '2022-11-15 06:16:17', '2022-11-15 00:00:00', 'sastha', 'tharma', 'nana', '7', '7', '100', '200'),
(4, '2022-11-15 06:40:37', '0000-00-00 00:00:00', '', '', '', '8', '8', '', '200'),
(5, '2022-11-30 08:47:06', '2022-11-30 00:00:00', 'aaron', '1986', '- Select one -', '9', '7', '3', '7'),
(6, '2022-11-30 08:47:18', '2022-11-30 00:00:00', 'aaron', '1986', '- Select one -', '9', '7', '3', '7'),
(7, '2022-11-30 08:48:37', '2022-11-30 00:00:00', 'aaron', '1986', '- Select one -', '9', '7', '3', '7'),
(8, '2022-11-30 15:35:14', '2022-11-30 00:00:00', 'vasanthi', '678', '- Select one -', '4', '3', '200', '500'),
(9, '2022-11-30 15:35:42', '2022-11-30 00:00:00', 'vasanthi', '678', '- Select one -', '4', '3', '200', '500'),
(10, '2022-12-01 05:24:57', '2022-12-01 00:00:00', 'REVATHI', '7890', 'vasanth@gmail.com', '3', '2', '500', '400'),
(17, '2022-12-30 09:50:10', '2022-12-30 00:00:00', 'ranu', '1', 'revathi computers', '5', '5', '500', '600'),
(18, '2022-12-30 09:54:22', '2022-12-30 00:00:00', 'natha', '666', 'malika AC', '3', '3', '300', '900'),
(19, '2023-01-04 09:20:19', '2023-01-04 00:00:00', 'ANU', '8897', 'chemicals.ltd', '3', '4', '5', '4');

-- --------------------------------------------------------

--
-- Table structure for table `tblnew_invoice_sales_details`
--

CREATE TABLE `tblnew_invoice_sales_details` (
  `inv_sal_idno` int(11) NOT NULL,
  `inv_sal_desc` varchar(200) NOT NULL,
  `inv_sal_qty` varchar(200) NOT NULL,
  `inv_sal_rate` varchar(200) NOT NULL,
  `inv_sal_bno` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblnew_invoice_sales_details`
--

INSERT INTO `tblnew_invoice_sales_details` (`inv_sal_idno`, `inv_sal_desc`, `inv_sal_qty`, `inv_sal_rate`, `inv_sal_bno`) VALUES
(1, '3', '3', '3', ''),
(2, '4', '4', '4', ''),
(3, '2', '2', '2', 'bno'),
(4, '2', '2', '2', 'a1billno'),
(5, '2', '2', '2', 'a1billno'),
(6, '1', '1', '1', 't1bno'),
(7, '4', '4', '4', 't1bno'),
(8, '1', '1', '1', 'un alagal'),
(9, '5', '5', '5', 'un alagal'),
(10, '1', '1', '1', 'bala1001'),
(11, '5', '5', '5', 'bala1001'),
(12, '1', '1', '1', 'one'),
(13, '3', '3', '3', 'one'),
(14, '1', '2000', '19', 'tharma'),
(15, '3', '100', '10', 'tharma'),
(16, '1', '190', '8', ''),
(17, '2', '200', '12', ''),
(18, '1', '190', '8', ''),
(19, '2', '200', '12', ''),
(20, '2', '23', '100', ''),
(21, '3', '228', '10', ''),
(22, '2', '23', '100', ''),
(23, '3', '228', '10', ''),
(24, '3', '399', '90', ''),
(25, '5', '23', '100', ''),
(26, '3', '399', '90', ''),
(27, '5', '23', '100', ''),
(28, '3', '399', '90', ''),
(29, '5', '23', '100', ''),
(30, '3', '399', '90', ''),
(31, '5', '23', '100', ''),
(32, '3', '399', '90', ''),
(33, '5', '23', '100', ''),
(34, '1', '1200', '10', ''),
(35, '1', '1', '1', ''),
(36, '1', '1', '1', ''),
(37, '- Select one -', '7000', '9', '1986'),
(38, '- Select one -', '7000', '9', '1986'),
(39, '- Select one -', '7000', '9', '1986'),
(40, 'i phone', '888888', '4', '55555555'),
(41, 'CANON IR 4570 DRUM', '1800', '1', '0001'),
(42, 'CANON IR 2016 DRUM', '1800', '2', '0001'),
(43, 'AC', '29000', '2', '008'),
(44, 'TOSHIBA 163 DRUM', '1999', '1', '1998'),
(45, 'CANON IR 2016 DRUM', '6000', '1', '7'),
(46, 'null', '7000', '2', '7'),
(47, 'KONICA MINOLTA 164 BLADE', '3000', '9', '1'),
(48, 'CANON IR 4570 DRUM', '5000', '7', '1'),
(49, 'KONICA MINOLTA 164 BLADE', '4000', '2', '666'),
(50, 'CANON IR 1600 DRUM', '7000', '7', '8897');

-- --------------------------------------------------------

--
-- Table structure for table `tblnew_purchase`
--

CREATE TABLE `tblnew_purchase` (
  `pid` int(11) NOT NULL,
  `pdate` datetime NOT NULL,
  `preference` varchar(200) NOT NULL,
  `pbillno` varchar(100) NOT NULL,
  `psupplier` varchar(100) NOT NULL,
  `pcgst` varchar(10) NOT NULL,
  `psgst` varchar(10) NOT NULL,
  `pupload` varchar(500) NOT NULL,
  `pothercharge` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblnew_purchase`
--

INSERT INTO `tblnew_purchase` (`pid`, `pdate`, `preference`, `pbillno`, `psupplier`, `pcgst`, `psgst`, `pupload`, `pothercharge`) VALUES
(2, '2022-11-15 00:00:00', 'ponalu', 'soodam', 'surakaiya', '6', '6', '', '60'),
(3, '2022-11-30 00:00:00', '', '78900', '- Select one -', '3', '2', '', '300'),
(4, '2022-11-30 00:00:00', '', '78900', '- Select one -', '3', '2', '', '300'),
(5, '2022-11-30 00:00:00', '', '78900', '- Select one -', '3', '2', '', '300'),
(6, '2022-11-30 00:00:00', '', '78900', '- Select one -', '3', '2', '', '300'),
(7, '2022-11-30 00:00:00', '', '78900', '- Select one -', '3', '2', '', '300'),
(8, '2022-11-30 00:00:00', '', '78900', '- Select one -', '3', '2', '', '300'),
(9, '2022-11-30 00:00:00', 'revathi', '4567', '- Select one -', '2', '3', '', '400'),
(10, '2022-11-30 00:00:00', 'revathi', '4567', '- Select one -', '2', '3', '', '400'),
(11, '2022-11-30 00:00:00', 'arun', '678', '- Select one -', '4', '2', '', '300'),
(12, '2022-11-30 00:00:00', 'revathi', '7890', '- Select one -', '2', '1', '', '700'),
(13, '2022-11-30 00:00:00', 'revathi', '7890', '- Select one -', '2', '1', '', '700'),
(14, '2022-11-30 00:00:00', 'revathi', '7890', '- Select one -', '2', '1', '', '700'),
(15, '2022-11-30 00:00:00', 'revathi', '7890', '- Select one -', '2', '1', '', '700'),
(16, '2022-11-30 00:00:00', 'revathi', '7890', '- Select one -', '2', '1', '', '700'),
(17, '2022-11-30 00:00:00', 'revathi', '7890', '- Select one -', '2', '1', '', '700'),
(18, '2022-11-30 00:00:00', 'revathi', '7890', '- Select one -', '2', '1', '', '700'),
(19, '2022-11-30 00:00:00', 'revathi', '789', '- Select one -', '5', '2', '', '600'),
(20, '2022-12-01 00:00:00', 'kavitha', '55', '- Select one -', '2', '1', '', '500'),
(21, '2022-12-01 00:00:00', '6000', '9800', '- Select one -', '1', '1', '', '300'),
(22, '2022-12-01 00:00:00', '6000', '9800', '- Select one -', '1', '1', '', '300'),
(23, '2022-12-01 00:00:00', '789', '0098', '- Select one -', '2', '1', '', '300'),
(24, '2022-12-01 00:00:00', '', '5555', '- Select one -', '2', '1', '', '200'),
(25, '2022-12-15 00:00:00', 'SUPREME@0001', '1870', '- Select one -', '9', '9', '4.jpg', '250'),
(26, '2022-12-28 00:00:00', 'kaviya', '99999', '- Select one -', '9', '9', '12345.jpg', '900'),
(27, '2022-12-28 00:00:00', 'kaviya123', '111', '- Select one -', '9', '9', 'pngtree-photographs-of-beautiful-women-cheering-indoors-during-the-olympic-games-image_787825.jpg', '900'),
(28, '2022-12-28 00:00:00', 'kamala', '88888', '- Select one -', '9', '9', 'pngtree-photographs-of-beautiful-women-cheering-indoors-during-the-olympic-games-image_787825.jpg', '6'),
(29, '2023-01-04 00:00:00', 'REVATHI', '34', '- Select one -', '4', '4', 'helpbox-contact.jpg', '5'),
(30, '2023-01-04 00:00:00', 'kaviya', '89', '- Select one -', '8', '8', 'download.jfif', '9'),
(31, '2023-01-05 00:00:00', 'CRYSTAL@0001', '2368', '- Select one -', '9', '9', 'drum.jpg', '250');

-- --------------------------------------------------------

--
-- Table structure for table `tblnew_purchase_details`
--

CREATE TABLE `tblnew_purchase_details` (
  `pid` int(11) NOT NULL,
  `pbillno` varchar(100) NOT NULL,
  `pdetails` varchar(1000) NOT NULL,
  `prate` varchar(100) NOT NULL,
  `pqty` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblnew_purchase_details`
--

INSERT INTO `tblnew_purchase_details` (`pid`, `pbillno`, `pdetails`, `prate`, `pqty`) VALUES
(1, 'mariamma', '1', '10', '100'),
(2, 'mariamma', '1', '19', '120'),
(3, 'mariamma', '1', '10', '100'),
(4, 'mariamma', '1', '19', '120'),
(5, 'mariamma', '1', '10', '100'),
(6, 'mariamma', '1', '19', '120'),
(7, 'soodam', '1', '20', '200'),
(8, 'soodam', '1', '100', '1200'),
(9, '9800', '- Select one -', '8', '9000'),
(10, '0098', '- Select one -', '2', '89003'),
(11, '5555', '- Select one -', '2', '78'),
(12, '1870', '- Select one -', '1', '1'),
(13, '99999', '- Select one -', '8', '8000'),
(14, '111', '- Select one -', '8', '8000'),
(15, '88888', '- Select one -', '8', '8000'),
(16, '34', '- Select one -', '3', '4000'),
(17, '89', '- Select one -', '99', '9000');

-- --------------------------------------------------------

--
-- Table structure for table `tblnew_quote_rental`
--

CREATE TABLE `tblnew_quote_rental` (
  `idno` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `qno` varchar(100) NOT NULL,
  `qdate` datetime NOT NULL,
  `qto` varchar(100) NOT NULL,
  `qsubject` varchar(500) NOT NULL,
  `qdesc` varchar(1000) NOT NULL,
  `qrental_amount` varchar(100) NOT NULL,
  `qfree_copies` varchar(100) NOT NULL,
  `qadditional` varchar(100) NOT NULL,
  `qaggrement` varchar(100) NOT NULL,
  `qdeposit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblnew_quote_rental`
--

INSERT INTO `tblnew_quote_rental` (`idno`, `created_date`, `qno`, `qdate`, `qto`, `qsubject`, `qdesc`, `qrental_amount`, `qfree_copies`, `qadditional`, `qaggrement`, `qdeposit`) VALUES
(1, '2022-10-04 11:14:51', '', '0000-00-00 00:00:00', '', '', '', '', '', '', '', 0),
(4, '2022-10-16 02:25:08', '', '2022-10-16 00:00:00', '', '', '', '', '', '', '', 0),
(5, '2022-11-20 13:31:05', '33', '2022-11-20 00:00:00', 'Tamil', 'one', 'one', '400', '40', '80', 'ok', 1000),
(6, '2022-11-29 14:21:05', '23', '2022-11-29 00:00:00', '200', 'karumaari theye nee ', 'Music', 'muthumari ', '200', '200', '200', 200),
(7, '2022-11-30 10:15:23', '4', '2022-11-30 00:00:00', '5', 'hi', 'hi', '22000', '500', '4000', '6000', 8000),
(8, '2022-11-30 10:15:58', '7', '2022-11-30 00:00:00', '6', 'hello', 'hello', '7000', '700', '800', '8000', 8000),
(9, '2022-11-30 10:16:40', '5', '2022-11-30 00:00:00', '6', 'rj', 'rj', '80000', '700', '600', '8000', 8900),
(10, '2022-11-30 13:56:58', '8', '2022-11-30 00:00:00', '9', 'kumar', 'hi', '7000', '700', '600', '800', 8000),
(12, '2022-12-05 10:42:26', '6', '2022-12-05 00:00:00', '10', 'dell', 'good', '220000', '4month', '3000', '5', 50000),
(15, '2022-12-14 05:46:14', '0001', '2022-12-14 00:00:00', 'SAKTHI COPIER, TIRUNELVELI-627001', 'PROFORMA INVOICE', 'COPIER\r\nPRINTER\r\nSCANNER', '4000', '7000', '0.50', 'MINIMUM TWO YEARS', 0),
(17, '2022-12-16 10:29:28', '2', '2022-12-16 00:00:00', 'malika', 'revathi', 'good', '30000', '300', '200', '5000', 5000),
(18, '2022-12-28 09:10:27', '77', '2022-12-28 00:00:00', 'VILLAVARAYAR & SONS', 'mr.pp', 'hi', '8000', '90', '9', '9999', 99999),
(19, '2023-01-03 08:17:07', '00011', '2023-01-03 00:00:00', 'DHOSTH ASSOCIATION', 'PROFORMA INVOICE', 'KM225I', '4000', '7000', '0.80', '2 YEARS', 20000),
(20, '2023-01-03 08:22:21', '00011', '2023-01-03 00:00:00', 'LUCKY XEROX', 'PROFORMA INVOICE', 'KM225', '4000', '8000', '0.80', 'TWO YEARES', 20000),
(21, '2023-01-03 12:34:54', '99', '2023-01-03 00:00:00', 'LUCKY XEROX', 'PROFORMA INVOICE', 'KM225', '4000', '8000', '0.80', '2 YEARS', 20000),
(22, '2023-01-04 05:53:55', '345', '2023-01-04 00:00:00', 'OHM SAKTHI XEROX', 'PROFORMA INVOICE', 'CANON', '5000', '10000', '0.75', 'TWO YEARS', 25000),
(23, '2023-01-05 10:37:04', '8765', '2023-01-05 00:00:00', 'MEKALAI XEROX', 'PROFORMA INVOICE', '5955', '2500', '5000', '0.50', 'TWO YEARS', 10000),
(24, '2023-01-05 17:19:45', 'mrx001', '2023-01-05 00:00:00', 'MR.X Shop', 'demo subject', 'desc1', '12000', '2000', '120', 'signed', 5000);

-- --------------------------------------------------------

--
-- Table structure for table `tblpayment`
--

CREATE TABLE `tblpayment` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `pay_amt` varchar(100) NOT NULL,
  `pay_date` datetime NOT NULL,
  `pay_billno` varchar(100) NOT NULL,
  `pay_remarks` varchar(200) NOT NULL,
  `pay_mode` varchar(100) NOT NULL,
  `pay_type` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpayment`
--

INSERT INTO `tblpayment` (`id`, `created_at`, `pay_amt`, `pay_date`, `pay_billno`, `pay_remarks`, `pay_mode`, `pay_type`) VALUES
(1, '2022-11-19 16:31:21', '8', '2022-08-08 00:00:00', '', 'unnai', 'makkal', ''),
(2, '2022-11-19 16:32:35', '10', '2022-07-07 00:00:00', '', 'ho2', 'hi', ''),
(3, '2022-11-19 16:32:59', '10', '2022-07-07 00:00:00', '', 'ho2', 'hi', ''),
(4, '2022-11-19 16:33:04', '8', '2022-08-08 00:00:00', '', 'unnai', 'makkal', ''),
(5, '2022-11-19 16:34:43', '10', '2022-08-08 00:00:00', '', '', 'arumaraigal', ''),
(6, '2022-11-19 16:38:28', '80', '2019-06-06 00:00:00', 'music01', 'one', 'hi', ''),
(7, '2022-11-20 07:17:12', '10', '2022-11-11 00:00:00', 'music01', 'ok', 'cash', 'Rental'),
(8, '2022-11-20 07:22:17', '100', '2022-11-02 00:00:00', 'bala1001', 'ok', 'cash', 'Sales'),
(9, '2022-11-20 07:38:27', '1000', '2022-02-20 00:00:00', 'ramewaram001', 'cash', 'ok', 'AMC'),
(10, '2022-11-20 07:45:09', '299', '2022-11-19 00:00:00', 'ramewaram001', 'done', 'GPAY', 'AMC'),
(11, '2022-11-20 08:06:54', '1200', '2022-11-19 00:00:00', 'soodam', 'vilathi veera', 'ayyapa', 'Purchase'),
(12, '2022-12-15 05:29:47', '200', '2022-12-15 00:00:00', '1870', 'nill ', 'a/c', 'Purchase'),
(13, '2022-12-17 06:22:01', '249', '2022-12-15 00:00:00', '1822', 'NILL BALANCE', 'CASH', 'Rental'),
(14, '2022-12-17 06:24:55', '211', '2022-12-15 00:00:00', '331', 'NILL BALANCE', 'CASH', 'Rental'),
(15, '2022-12-17 06:24:55', '211', '2022-12-15 00:00:00', '331', 'NILL BALANCE', 'CASH', 'Rental'),
(16, '2022-12-17 06:26:13', '8100', '2022-12-15 00:00:00', '0001', 'NIL', 'CASH', 'Sales'),
(17, '2022-12-17 06:26:14', '8100', '2022-12-15 00:00:00', '0001', 'NIL', 'CASH', 'Sales'),
(18, '2022-12-17 06:27:55', '8100', '2022-12-15 00:00:00', '0001', 'NIL', 'CASH', 'AMC'),
(19, '2022-12-28 09:27:41', '600', '2023-01-01 00:00:00', '1998', 'k', 'gpay', 'Sales'),
(20, '2022-12-28 09:36:37', '7000', '2023-01-01 00:00:00', '88888', 'good', 'UPI', 'Purchase'),
(21, '2023-01-04 07:19:52', '70000', '2023-01-04 00:00:00', '1993', 'good', 'emi', 'Rental'),
(22, '2023-01-04 10:12:41', '5000', '2023-01-14 00:00:00', '89', 'good', 'A/C', 'Purchase');

-- --------------------------------------------------------

--
-- Table structure for table `tblpromotion`
--

CREATE TABLE `tblpromotion` (
  `pid` int(11) NOT NULL,
  `promo_title` varchar(200) NOT NULL,
  `promo_model` varchar(200) NOT NULL,
  `promo_details` varchar(200) NOT NULL,
  `promo_specs` varchar(230) NOT NULL,
  `promo_offer` varchar(200) NOT NULL,
  `promo_img` varchar(500) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpromotion`
--

INSERT INTO `tblpromotion` (`pid`, `promo_title`, `promo_model`, `promo_details`, `promo_specs`, `promo_offer`, `promo_img`, `created_at`) VALUES
(1, '5', '5', '5', '5', '5', '', '2022-11-12 22:03:43'),
(2, 'one', '', 'three', 'four', 'five', '', '2022-11-12 22:04:44'),
(3, 'packet', 'enake', 'enakaa', 'music', 'ma', '', '2022-11-12 22:06:01');

-- --------------------------------------------------------

--
-- Table structure for table `tblrent_invoice`
--

CREATE TABLE `tblrent_invoice` (
  `idno` int(10) NOT NULL,
  `billno` varchar(100) DEFAULT NULL,
  `rdate` varchar(100) DEFAULT NULL,
  `cname` varchar(100) DEFAULT NULL,
  `rcode` varchar(100) DEFAULT NULL,
  `modelno` varchar(100) DEFAULT NULL,
  `serialno` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblrent_invoice`
--

INSERT INTO `tblrent_invoice` (`idno`, `billno`, `rdate`, `cname`, `rcode`, `modelno`, `serialno`) VALUES
(2, '4', '0004-08-04', '-select-', '4', '4', '4');

-- --------------------------------------------------------

--
-- Table structure for table `tblrent_invoice_details`
--

CREATE TABLE `tblrent_invoice_details` (
  `idno` int(10) NOT NULL,
  `billno` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `meter_read` varchar(100) DEFAULT NULL,
  `doread` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblrent_minvoice`
--

CREATE TABLE `tblrent_minvoice` (
  `idno` int(11) NOT NULL,
  `mrdate` date DEFAULT NULL,
  `reference` varchar(100) DEFAULT NULL,
  `biller` varchar(100) DEFAULT NULL,
  `customer` varchar(100) DEFAULT NULL,
  `cgst` varchar(100) DEFAULT NULL,
  `sgst` varchar(100) DEFAULT NULL,
  `search` varchar(100) DEFAULT NULL,
  `scharge` varchar(100) DEFAULT NULL,
  `packing` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblrent_minvoice`
--

INSERT INTO `tblrent_minvoice` (`idno`, `mrdate`, `reference`, `biller`, `customer`, `cgst`, `sgst`, `search`, `scharge`, `packing`) VALUES
(1, '2022-10-05', '', '', '', '', '', '', '', ''),
(2, '2022-10-05', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblrent_minvoice_details`
--

CREATE TABLE `tblrent_minvoice_details` (
  `idno` int(11) NOT NULL,
  `customer` varchar(100) DEFAULT NULL,
  `details` varchar(100) DEFAULT NULL,
  `quantity` varchar(100) DEFAULT NULL,
  `rate` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblrent_mquotation`
--

CREATE TABLE `tblrent_mquotation` (
  `idno` int(10) NOT NULL,
  `rmqdate` varchar(100) DEFAULT NULL,
  `rmqto` varchar(100) DEFAULT NULL,
  `rmqsubject` varchar(100) DEFAULT NULL,
  `rmqdetails` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblrent_mquotation_details`
--

CREATE TABLE `tblrent_mquotation_details` (
  `idno` int(11) NOT NULL,
  `rqmto` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `amount` varchar(100) DEFAULT NULL,
  `fcopy` varchar(100) DEFAULT NULL,
  `addition` varchar(100) DEFAULT NULL,
  `agree` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblrent_quotation`
--

CREATE TABLE `tblrent_quotation` (
  `idno` int(10) NOT NULL,
  `rqdate` varchar(100) DEFAULT NULL,
  `rqto` varchar(100) DEFAULT NULL,
  `rqsubject` varchar(100) DEFAULT NULL,
  `rqdetails` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblrent_quotation`
--

INSERT INTO `tblrent_quotation` (`idno`, `rqdate`, `rqto`, `rqsubject`, `rqdetails`) VALUES
(1, '2022-12-16', 'malika', '', ''),
(2, '2022-12-16', 'malika', '02', ''),
(3, '2022-12-16', 'malika', '02', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblrent_quotation_details`
--

CREATE TABLE `tblrent_quotation_details` (
  `idno` int(11) NOT NULL,
  `rqdate` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `ramount` varchar(100) DEFAULT NULL,
  `fcopy` varchar(100) DEFAULT NULL,
  `addition` varchar(100) DEFAULT NULL,
  `agree` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblsales_payment`
--

CREATE TABLE `tblsales_payment` (
  `idno` int(11) NOT NULL,
  `pay_date` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `pay_type` varchar(100) NOT NULL,
  `pay_amount` varchar(100) NOT NULL,
  `remarks` varchar(200) NOT NULL,
  `customer_name` varchar(200) NOT NULL,
  `bill_no` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblsales_payment`
--

INSERT INTO `tblsales_payment` (`idno`, `pay_date`, `created_at`, `pay_type`, `pay_amount`, `remarks`, `customer_name`, `bill_no`) VALUES
(1, '2022-12-31 00:00:00', '2022-11-05 02:06:02', '100', '100', 'Good', 'velyil', 'un alagal'),
(2, '2022-11-12 00:00:00', '2022-11-07 06:05:38', '122', '7800', 'hi', 'velyil2', 'un alagal1');

-- --------------------------------------------------------

--
-- Table structure for table `tblservice_engg`
--

CREATE TABLE `tblservice_engg` (
  `idno` int(11) NOT NULL,
  `sfname` varchar(100) NOT NULL,
  `slname` varchar(100) NOT NULL,
  `sgender` varchar(100) NOT NULL,
  `scompany` varchar(100) NOT NULL,
  `sphone` varchar(199) NOT NULL,
  `semail` varchar(100) NOT NULL,
  `suname` varchar(100) NOT NULL,
  `spwd` varchar(100) NOT NULL,
  `sstatus` varchar(100) NOT NULL,
  `sgroup` varchar(199) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblservice_engg`
--

INSERT INTO `tblservice_engg` (`idno`, `sfname`, `slname`, `sgender`, `scompany`, `sphone`, `semail`, `suname`, `spwd`, `sstatus`, `sgroup`) VALUES
(1, 'new', 'n', 'Male', '', 'h', '123vema@gmail.com', '5', '8', '1', '13'),
(2, 'ravi', 'ravikumarr', 'Male', '', '9876543421', 'ravi@gmail.com', 'kumar', '900', '1', 'muruga'),
(4, 'ram', 'ram', 'Male', '', '78965443', 'ravi@.com', 'ram', '789', '2', 'arulvel'),
(5, 'ram', 'ram', 'Male', '', '78965443', 'ravi@.com', 'ram', '789', '2', 'arulvel'),
(6, 'onetwo', '5', '-Select-', '', '5', '5', '5', '5', '-Select-', '5'),
(7, 'anu', 'anushya', 'Female', '', '8976543212', 'pavi@gmail.com', 'anu', '765', '2', 'ki'),
(8, 'noor', 'noor', 'Female', '', '900006545', 'noor@gmail.com', 'noor', 'noor', '2', 'hello'),
(9, 'ravikumar', 'kumar', 'Male', '', '8889977665', 'ravi@gmail.com', 'ravikumar', '678', '1', 'hiii'),
(10, 'A.KANNAN', '', 'Male', '', '9489120413', 'sakthicopier2019@gmail.com', 'KANNAN@0001', 'KANNAN@0001', '-Select-', 'STAFF'),
(11, 'A.KANNAN', '', 'Male', '', '9489120413', 'sakthicopier2019@gmail.com', 'KANNAN@0001', 'KANNAN@0001', '-Select-', 'STAFF'),
(12, 'ATHI', 'MARISELVAM', 'Male', '', '6385524256', 'athi2023@gmail.com', 'ATHI@0001', 'ATHI@0001', '1', 'STAFF'),
(13, 'ram', 'ram', 'Male', '', '3456788764', 'ram@gmail.com', 'ram', 'ram', '1', 'good'),
(14, 'ANTONY ', 'AAKASHI', 'Male', '', '6385524253', 'antonyaakash2023@gmail.com', 'AAKASH@2023', 'AAKASH@2023', '1', 'STAFF');

-- --------------------------------------------------------

--
-- Table structure for table `tblsparesdata`
--

CREATE TABLE `tblsparesdata` (
  `sidno` int(11) NOT NULL,
  `sdate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `spare_date` datetime NOT NULL,
  `spare_qno` varchar(100) NOT NULL,
  `spare_to` varchar(200) NOT NULL,
  `spare_subject` varchar(500) NOT NULL,
  `spare_sgst` varchar(100) NOT NULL,
  `spare_cgst` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblsparesdata`
--

INSERT INTO `tblsparesdata` (`sidno`, `sdate`, `spare_date`, `spare_qno`, `spare_to`, `spare_subject`, `spare_sgst`, `spare_cgst`) VALUES
(1, '2022-11-20 15:41:57', '2022-11-20 00:00:00', 'hi', 'helo', 'how are you', '5', '5'),
(2, '2022-11-29 14:22:23', '2022-11-29 00:00:00', 'thayee', 'amma', 'amma', '7', '7'),
(3, '2022-11-30 13:19:20', '2022-11-30 00:00:00', '7', '6', '8', '9', '8'),
(4, '2022-11-30 13:58:31', '2022-11-30 00:00:00', '8', 'revathi', '9', '3', '5'),
(5, '2022-11-30 13:59:51', '2022-11-30 00:00:00', '7', '7', '6', '4', '3'),
(6, '2022-11-30 14:00:42', '2022-11-30 00:00:00', '1', '3', '2', '2', '2'),
(7, '2022-12-01 08:01:55', '2022-12-01 00:00:00', '9', '6', '7', '1', '2'),
(8, '2022-12-05 10:43:48', '2022-12-05 00:00:00', '10', 'noor', '5', '2', '1'),
(9, '2022-12-14 05:55:24', '2022-12-14 00:00:00', '0001', 'SAKTHI COPIER, TIRUNELVELI - 627001', 'PROFORMA INVOICE', '18', '18'),
(10, '2022-12-16 10:12:44', '2022-12-16 00:00:00', '11', 'revathi', '01', '1', '2'),
(11, '2022-12-16 10:22:51', '2022-12-16 00:00:00', '15', 'malika', 'AC', '1', '2'),
(12, '2022-12-28 09:23:55', '2022-12-28 00:00:00', '1998', '1999', 'hp', '7', '6'),
(13, '2023-01-03 10:05:33', '2023-01-03 00:00:00', '0012', 'EXPERTZ, THOOTHUKUDI -3', 'KM 225I', '9', '9'),
(14, '2023-01-03 10:05:33', '2023-01-03 00:00:00', '0012', 'EXPERTZ, THOOTHUKUDI -3', 'KM 225I', '9', '9'),
(15, '2023-01-05 10:43:14', '2023-01-05 00:00:00', '575', 'MEKALAI XEROX', '', '', ''),
(16, '2023-01-05 17:57:28', '2023-01-05 00:00:00', '001_text', 'add_shop', 'Try to buy', '4', '3');

-- --------------------------------------------------------

--
-- Table structure for table `tblspare_adata`
--

CREATE TABLE `tblspare_adata` (
  `sidno` int(11) NOT NULL,
  `sdate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `spare_qno` varchar(100) NOT NULL,
  `spare_desc` varchar(500) NOT NULL,
  `spare_rate` varchar(100) NOT NULL,
  `spare_amount` varchar(100) NOT NULL,
  `spare_qty` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblspare_adata`
--

INSERT INTO `tblspare_adata` (`sidno`, `sdate`, `spare_qno`, `spare_desc`, `spare_rate`, `spare_amount`, `spare_qty`) VALUES
(1, '2022-10-05 09:24:37', 'Q1', 'Test p1', 'test rate', 'test amt', 'test qty'),
(2, '2022-10-05 09:26:52', '7', '7', '7', '7', '7'),
(3, '2022-10-05 09:26:52', '7', '90', '909', '09', '90'),
(4, '2022-10-05 09:28:05', '777', 'Facewash', '900', '3600', '4'),
(5, '2022-10-05 09:28:05', '777', 'Protein', '1200', '2400', '2'),
(6, '2022-10-05 09:29:22', '1234', 'Mouse', '100', '120', '2'),
(7, '2022-10-05 09:29:22', '1234', 'Pen', '200', '400', '2'),
(8, '2022-10-15 15:09:12', 'a1', 'a1 par', 'a1 rate', 'a1100', 'a1 qty'),
(9, '2022-10-15 15:09:12', 'a1', 'a1 par2', 'a2 rate', 'a1 reqt', 'a1 qty2'),
(10, '2022-10-27 21:48:56', 'testqno', 'test p1', '1200', '36000', '3'),
(11, '2022-10-27 21:48:56', 'testqno', 'test p3', '100', '2000', '2'),
(12, '2022-11-15 18:36:09', 'raja gali ammal', 'Cannon 1250', '12000', '89000', '7'),
(13, '2022-11-20 15:41:57', 'hi', 'Tuticorin', '23', '1000', '3'),
(14, '2022-11-20 15:41:57', 'hi', 'T2', '100', '1200', '19'),
(15, '2022-11-29 14:22:23', 'thayee', 'amma', '29', '299', '20'),
(16, '2022-11-29 14:22:23', 'thayee', 'poovukum', '200', '2000', '20'),
(17, '2022-11-30 13:58:31', '8', 'hi', '9000', '90000', '89000'),
(18, '2022-11-30 13:58:31', '8', '7000', '8000', '9000', '800'),
(19, '2022-12-01 08:01:55', '9', 'hello', '5000', '5000', '5'),
(20, '2022-12-05 10:43:48', '10', 'good', '220000', '2200000\n', '6'),
(21, '2022-12-14 05:55:24', '0001', 'KONICA MINOLTA 205i\nCOPIER \nNETWORK PRINTER\nCOLOUR SCANNER', '65000', '65000', '1'),
(22, '2022-12-16 10:12:44', '11', 'hi', '29000', '30000', '5'),
(23, '2022-12-16 10:22:51', '15', 'AC', '30000', '29000', '1'),
(24, '2022-12-28 09:23:55', '1998', 'hole', '800', '9800', '8'),
(25, '2023-01-03 10:05:33', '0012', 'KM 225', '78000', '156000', '2 NOS'),
(26, '2023-01-03 10:05:33', '0012', 'KM 225', '78000', '156000', '2 NOS'),
(27, '2023-01-05 10:43:14', '575', 'KM 225i ', '58000', '58000', '1NO'),
(28, '2023-01-05 10:43:14', '575', 'TN118 TONER CARTRIDGE', '2600', '2600', '1 NO'),
(29, '2023-01-05 10:43:14', '575', '', '', '', ''),
(30, '2023-01-05 17:57:28', '001_text', 'XEROX WORK CENTRE 5225 DRUM', '12', '100', '20');

-- --------------------------------------------------------

--
-- Table structure for table `tblstock`
--

CREATE TABLE `tblstock` (
  `idno` int(10) NOT NULL,
  `pname` varchar(100) DEFAULT NULL,
  `ptype` varchar(100) DEFAULT NULL,
  `pcode` varchar(100) DEFAULT NULL,
  `weight` varchar(100) DEFAULT NULL,
  `brand` varchar(100) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `punit` varchar(100) DEFAULT NULL,
  `mrp` varchar(100) DEFAULT NULL,
  `sprice` varchar(100) DEFAULT NULL,
  `promotion` varchar(100) DEFAULT NULL,
  `hsn` varchar(100) DEFAULT NULL,
  `tax` varchar(100) DEFAULT NULL,
  `alert` varchar(100) DEFAULT NULL,
  `pimage` varchar(200) DEFAULT NULL,
  `invdetail` varchar(100) DEFAULT NULL,
  `supply_name` varchar(100) DEFAULT NULL,
  `partno` varchar(100) DEFAULT NULL,
  `supply_price` varchar(100) DEFAULT NULL,
  `purchase_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblstock`
--

INSERT INTO `tblstock` (`idno`, `pname`, `ptype`, `pcode`, `weight`, `brand`, `category`, `punit`, `mrp`, `sprice`, `promotion`, `hsn`, `tax`, `alert`, `pimage`, `invdetail`, `supply_name`, `partno`, `supply_price`, `purchase_date`) VALUES
(5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
(14, 'CANON IR 4570 DRUM', '', '001', '', 'CANON', 'BOMBAY', '3', '2800', '1600', '', '9973', '18', '3', 'WhatsApp Image 2022-11-19 at 17.12.25.jpeg', '001', 'SRI KL ENTERPRISES', 'DBM151122', '490', '2022-12-02 00:00:00'),
(15, 'CANON IR 4570 DRUM', '', '002', '', 'CANON', 'OPC', '4', '3000', '1600', '', '9973', '18', '5', 'WhatsApp Image 2022-11-19 at 17.12.31.jpeg', '002', 'VIJEX & COMPANY', 'DVJ151122', '560', '2022-12-02 00:00:00'),
(16, 'CANON IR 4570 DRUM', '', '003', '', 'CANON', 'SUPERMAX', '6', '2000', '1200', '', '9973', '18', '5', 'WhatsApp Image 2022-11-19 at 17.12.27.jpeg', '003', 'SRI KL ENTERPRISES', 'DKL151122', '350', '2022-12-02 00:00:00'),
(17, 'CANON IR 4570 DRUM', '', '004', '', 'CANON', 'KHUSHI', '1', '1600', '800', '', '9973', '18', '5', 'WhatsApp Image 2022-11-19 at 17.12.23.jpeg', '004', 'SRI KL ENTERPRISES', 'DKU151122', '280', '2022-12-02 00:00:00'),
(18, 'CANON IR 2525 DRUM', '', '005', '', 'CANON', 'SUPERMAX', '1', '3200', '2400', '', '9973', '18', '5', 'WhatsApp Image 2022-11-19 at 17.12.24.jpeg', '005', 'SRI KL ENTERPRISES', 'DSM151122', '380', '2022-12-02 00:00:00'),
(19, 'CANON IR 2525 DRUM', '', '006', '', 'CANON', 'BHAVYA', '1', '3200', '2400', '', '9973', '18', '5', 'WhatsApp Image 2022-11-19 at 17.12.31 (2).jpeg', '006', 'SRI KL ENTERPRISES', 'DBY151122', '380', '2022-12-02 00:00:00'),
(21, 'CANON IR 4225 DRUM', '', '008', '', 'CANON', '', '1', '3200', '2400', '', '9973', '18', '5', 'WhatsApp Image 2022-11-19 at 17.12.32.jpeg', '008', 'SRI KL ENTERPRISES', 'DGF151122', '400', '2022-12-02 00:00:00'),
(22, 'CANON IR 3300 DRUM', '', '009', '', 'CANON', 'KHUSHI', '1', '1000', '700', '', '9973', '18', '5', 'WhatsApp Image 2022-11-19 at 17.12.32 (2).jpeg', '009', 'SRI KL ENTERPRISES', 'DKU151122', '280', '2022-12-02 00:00:00'),
(23, 'CANON IR 3300 DRUM', '', '010', '', 'CANON', 'SUPERMAX', '1', '1500', '850', '', '9973', '18', '5', 'WhatsApp Image 2022-11-19 at 17.12.32 (1).jpeg', '010', 'SRI KL ENTERPRISES', 'D33151122', '310', '2022-12-02 00:00:00'),
(24, 'CANON IR 2525 DRUM', '', '007', '', 'CANON', 'MITSUYO', '1', '3200', '2400', '', '9973', '18', '5', 'WhatsApp Image 2022-11-19 at 17.12.31 (1).jpeg', '007', 'SRI KL ENTERPRISES', 'DMS151122', '380', '2022-12-02 00:00:00'),
(27, 'CANON IR 2016 DRUM', '', '011', '', 'CANON', 'SUPERMAX', '2', '3200', '2400', '', '9973', '18', '5', 'WhatsApp Image 2022-11-19 at 17.12.33.jpeg', '011', 'SRI KL ENTERPRISES', 'DSM161122', '380', '2022-12-06 00:00:00'),
(28, 'CANON IR 1600 DRUM', '', '012', '', 'CANON', '', '2', '3200', '2400', '', '9973', '18', '5', 'WhatsApp Image 2022-11-19 at 17.12.34.jpeg', '012', 'SRI KL ENTERPRISES', 'DCN161122', '430', '2022-12-06 00:00:00'),
(29, 'KONICA MINOLTA 164 DRUM', '', '013', '', 'KONICA MINOLTA', 'SUPERMAX', '4', '3300', '2600', '', '9973', '18', '5', 'WhatsApp Image 2022-11-19 at 17.12.33 (1).jpeg', '013', 'SRI KL ENTERPRISES', 'DKM161122', '430', '2022-12-06 00:00:00'),
(30, 'KYOCERA 1620 DRUM', '', '014', '', 'KYOCERA', '', '3', '3300', '2600', '', '9973', '18', '5', 'WhatsApp Image 2022-11-19 at 17.12.35 (1).jpeg', '014', 'SRI KL ENTERPRISES', 'DKY161122', '430', '2022-12-06 00:00:00'),
(31, 'KYOCERA 1800 OPC DRUM', '', '015', '', 'KYOCERA', 'OPC', '2', '3600', '2800', '', '9973', '18', '5', 'WhatsApp Image 2022-11-19 at 17.12.34 (1).jpeg', '015', 'GREEN FORCE', 'DTK161122', '1593', '2022-12-06 00:00:00'),
(32, 'KYOCERA 180 DRUM', '', '016', '', 'KYOCERA', '', '1', '3200', '2600', '', '9973', '18', '5', 'WhatsApp Image 2022-11-19 at 17.12.35.jpeg', '016', 'SRI KL ENTERPRISES', 'DKY171122', '550', '2022-12-08 00:00:00'),
(33, 'SHARP 5316 SUPERMAX DRUM', '', '017', '', 'SHARP', 'SUPERMAX', '1', '3800', '3200', '', '9973', '18', '5', 'WhatsApp Image 2022-11-19 at 17.12.35 (1).jpeg', '017', 'SRI KL ENTERPRISES', 'DSH161122', '600', '2022-12-08 00:00:00'),
(34, 'SHARP 6020 SUPERMAX DRUM', '', '018', '', 'SHARP', 'SUPERMAX', '2', '3800', '3200', '', '9973', '18', '5', 'WhatsApp Image 2022-11-19 at 17.12.35 (2).jpeg', '018', 'SRI KL ENTERPRISES', 'DAR161122', '600', '2022-12-08 00:00:00'),
(35, 'SINDOH 410 DRUM', '', '019', '', 'SINDOH', 'OPC', '2', '4200', '3500', '', '9973', '18', '5', 'WhatsApp Image 2022-11-19 at 17.12.36.jpeg', '019', 'CLASSIC COPIER SYSTEMS', 'DCL161122', '1062', '2022-12-08 00:00:00'),
(36, 'TOSHIBA 163 DRUM', '', '020', '', 'TOSHIBA', 'SUPERMAX', '1', '3200', '2800', '', '9973', '18', '5', 'WhatsApp Image 2022-11-19 at 17.12.36 (1).jpeg', '020', 'SRI KL ENTERPRISES', 'DTH161122', '500', '2022-12-08 00:00:00'),
(37, 'XEROX WORK CENTRE 7535 DRUM', '', '021', '', 'XEROX WORKCENTRE', 'SUPERMAX', '3', '2500', '1680', '', '9973', '18', '5', 'WhatsApp Image 2022-11-19 at 17.12.37.jpeg', '021', 'SRI KL ENTERPRISES', 'DWC161122', '500', '2022-12-08 00:00:00'),
(38, 'XEROX WORK CENTRE 5225 DRUM', '', '022', '', 'XEROX WORKCENTRE', '', '2', '3200', '2600', '', '9973', '18', '5', 'WhatsApp Image 2022-11-19 at 17.12.37 (1).jpeg', '022', 'SRI KL ENTERPRISES', 'DXW161122', '460', '2022-12-08 00:00:00'),
(39, 'CANON IR 4570 BLADE', '', '023', '', 'CANON', '', '10', '350', '250', '', '9973', '18', '5', '4570 BLADE.jpeg', '023', 'VIJEX & COMPANY', 'BVJ161122', '100', '2022-12-08 00:00:00'),
(40, 'CANON IR 2525 BLADE', '', '024', '', 'CANON', '', '3', '750', '450', '', '9973', '18', '5', '2525 BLADE.jpeg', '024', 'SRI KL ENTERPRISES', 'B2525161122', '120', '2022-12-08 00:00:00'),
(41, 'KONICA MINOLTA 164 BLADE', '', '025', '', 'KONICA MINOLTA', '', '4', '750', '450', '', '9973', '18', '5', '164 BLADE.jpeg', '025', 'SRI KL ENTERPRISES', 'B164161122', '140', '2022-12-08 00:00:00'),
(42, 'CANON IR 2016 BLADE', '', '026', '', 'CANON', '', '2', '750', '450', '', '9973', '18', '5', '2016 BLADE.jpeg', '026', 'SRI KL ENTERPRISES', 'BCN161122', '100', '2022-12-08 00:00:00'),
(43, 'KYOCERA 1800 BLADE', '', '027', '', 'KYOCERA', '', '2', '750', '450', '', '9973', '18', '5', '1800 BLADE.jpeg', '027', 'SRI KL ENTERPRISES', 'B1800171122', '180', '2022-12-08 00:00:00'),
(44, 'SINDOH 410 BLADE', '', '028', '', 'SINDOH', '', '3', '1200', '750', '', '9973', '18', '3', 'SINDOH 410 BLADE.jpeg', '028', 'CLASSIC COPIER SYSTEMS', 'BSH171122', '354', '2022-12-08 00:00:00'),
(45, 'XEROX WORK CENTRE 5790 BLADE', '', '029', '', 'XEROX WORKCENTRE', '', '2', '1200', '750', '', '9973', '18', '5', '5790 BLADE.jpeg', '029', 'SRI KL ENTERPRISES', 'B5790171122', '120', '2022-12-08 00:00:00'),
(46, 'XEROX WORK CENTRE 5655 BLADE', '', '030', '', 'XEROX WORKCENTRE', '', '2', '1200', '750', '', '9973', '18', '5', '5655 BLADE.jpeg', '030', 'SRI KL ENTERPRISES', 'B5655171122', '120', '2022-12-08 00:00:00'),
(47, 'XEROX WORK CENTRE 5955 BLADE', '', '031', '', 'XEROX WORKCENTRE', '', '5', '1200', '750', '', '9973', '18', '5', '5955 BLADE.jpeg', '031', 'SRI KL ENTERPRISES', 'B5955171122', '190', '2022-12-08 00:00:00'),
(48, 'XEROX WORK CENTRE 7535 BLADE', '', '032', '', 'XEROX WORKCENTRE', '', '6', '1200', '750', '', '9973', '18', '5', '7535 BLADE.jpeg', '032', 'SRI KL ENTERPRISES', 'B7535171122', '350', '2022-12-08 00:00:00'),
(49, 'XEROX WORK CENTRE 7535 TRANSFER CLEANING BLADE', '', '033', '', 'XEROX WORKCENTRE', '', '2', '2000', '1000', '', '9973', '18', '5', '7535 TRANSFER CLEANING BLADE.jpeg', '033', 'SRI KL ENTERPRISES', 'B7535171122', '480', '2022-12-08 00:00:00'),
(51, 'TN118 TONER CARTRIDGE', '', '034', '', 'KONICA MINOLTA', '', '3', '3200', '2600', '', '9973', '18', '5', 'konica-minolta-tn-118-toner-cartridges.webp', '034', 'NEW CRYSTAL COPIER', 'TN118NCC03012023', '1888', '2023-01-03 00:00:00'),
(52, 'cemera', '', '9987', '', 'hp', 'BHAVYA', '2', '18000', '2200', '', '001', '5', '8', 'Gombak_Selangor_Batu-Caves-01.jpg', 'pvt.ltd', 'chemicals', '005', '12000', '2023-01-04 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblamc`
--
ALTER TABLE `tblamc`
  ADD PRIMARY KEY (`amc_id`);

--
-- Indexes for table `tblamc_details`
--
ALTER TABLE `tblamc_details`
  ADD PRIMARY KEY (`amc_id`);

--
-- Indexes for table `tblbiller`
--
ALTER TABLE `tblbiller`
  ADD PRIMARY KEY (`idno`);

--
-- Indexes for table `tblbrand`
--
ALTER TABLE `tblbrand`
  ADD PRIMARY KEY (`brid`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`catid`);

--
-- Indexes for table `tblcustomer`
--
ALTER TABLE `tblcustomer`
  ADD PRIMARY KEY (`idno`);

--
-- Indexes for table `tblexpense`
--
ALTER TABLE `tblexpense`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblnew_invoice_rental`
--
ALTER TABLE `tblnew_invoice_rental`
  ADD PRIMARY KEY (`inv_ren_idno`);

--
-- Indexes for table `tblnew_invoice_sales`
--
ALTER TABLE `tblnew_invoice_sales`
  ADD PRIMARY KEY (`inv_sal_idno`);

--
-- Indexes for table `tblnew_invoice_sales_details`
--
ALTER TABLE `tblnew_invoice_sales_details`
  ADD PRIMARY KEY (`inv_sal_idno`);

--
-- Indexes for table `tblnew_purchase`
--
ALTER TABLE `tblnew_purchase`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `tblnew_purchase_details`
--
ALTER TABLE `tblnew_purchase_details`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `tblnew_quote_rental`
--
ALTER TABLE `tblnew_quote_rental`
  ADD PRIMARY KEY (`idno`);

--
-- Indexes for table `tblpayment`
--
ALTER TABLE `tblpayment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpromotion`
--
ALTER TABLE `tblpromotion`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `tblrent_invoice`
--
ALTER TABLE `tblrent_invoice`
  ADD PRIMARY KEY (`idno`);

--
-- Indexes for table `tblrent_invoice_details`
--
ALTER TABLE `tblrent_invoice_details`
  ADD PRIMARY KEY (`idno`);

--
-- Indexes for table `tblrent_minvoice`
--
ALTER TABLE `tblrent_minvoice`
  ADD PRIMARY KEY (`idno`);

--
-- Indexes for table `tblrent_minvoice_details`
--
ALTER TABLE `tblrent_minvoice_details`
  ADD PRIMARY KEY (`idno`);

--
-- Indexes for table `tblrent_mquotation`
--
ALTER TABLE `tblrent_mquotation`
  ADD PRIMARY KEY (`idno`);

--
-- Indexes for table `tblrent_mquotation_details`
--
ALTER TABLE `tblrent_mquotation_details`
  ADD PRIMARY KEY (`idno`);

--
-- Indexes for table `tblrent_quotation`
--
ALTER TABLE `tblrent_quotation`
  ADD PRIMARY KEY (`idno`);

--
-- Indexes for table `tblrent_quotation_details`
--
ALTER TABLE `tblrent_quotation_details`
  ADD PRIMARY KEY (`idno`);

--
-- Indexes for table `tblsales_payment`
--
ALTER TABLE `tblsales_payment`
  ADD PRIMARY KEY (`idno`);

--
-- Indexes for table `tblservice_engg`
--
ALTER TABLE `tblservice_engg`
  ADD PRIMARY KEY (`idno`);

--
-- Indexes for table `tblsparesdata`
--
ALTER TABLE `tblsparesdata`
  ADD PRIMARY KEY (`sidno`);

--
-- Indexes for table `tblspare_adata`
--
ALTER TABLE `tblspare_adata`
  ADD PRIMARY KEY (`sidno`);

--
-- Indexes for table `tblstock`
--
ALTER TABLE `tblstock`
  ADD PRIMARY KEY (`idno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblamc`
--
ALTER TABLE `tblamc`
  MODIFY `amc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tblamc_details`
--
ALTER TABLE `tblamc_details`
  MODIFY `amc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tblbiller`
--
ALTER TABLE `tblbiller`
  MODIFY `idno` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tblbrand`
--
ALTER TABLE `tblbrand`
  MODIFY `brid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `catid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tblcustomer`
--
ALTER TABLE `tblcustomer`
  MODIFY `idno` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `tblexpense`
--
ALTER TABLE `tblexpense`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tblnew_invoice_rental`
--
ALTER TABLE `tblnew_invoice_rental`
  MODIFY `inv_ren_idno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tblnew_invoice_sales`
--
ALTER TABLE `tblnew_invoice_sales`
  MODIFY `inv_sal_idno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tblnew_invoice_sales_details`
--
ALTER TABLE `tblnew_invoice_sales_details`
  MODIFY `inv_sal_idno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `tblnew_purchase`
--
ALTER TABLE `tblnew_purchase`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tblnew_purchase_details`
--
ALTER TABLE `tblnew_purchase_details`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tblnew_quote_rental`
--
ALTER TABLE `tblnew_quote_rental`
  MODIFY `idno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tblpayment`
--
ALTER TABLE `tblpayment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tblpromotion`
--
ALTER TABLE `tblpromotion`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblrent_invoice`
--
ALTER TABLE `tblrent_invoice`
  MODIFY `idno` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblrent_invoice_details`
--
ALTER TABLE `tblrent_invoice_details`
  MODIFY `idno` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblrent_minvoice`
--
ALTER TABLE `tblrent_minvoice`
  MODIFY `idno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblrent_minvoice_details`
--
ALTER TABLE `tblrent_minvoice_details`
  MODIFY `idno` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblrent_mquotation`
--
ALTER TABLE `tblrent_mquotation`
  MODIFY `idno` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblrent_mquotation_details`
--
ALTER TABLE `tblrent_mquotation_details`
  MODIFY `idno` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblrent_quotation`
--
ALTER TABLE `tblrent_quotation`
  MODIFY `idno` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblrent_quotation_details`
--
ALTER TABLE `tblrent_quotation_details`
  MODIFY `idno` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblsales_payment`
--
ALTER TABLE `tblsales_payment`
  MODIFY `idno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblservice_engg`
--
ALTER TABLE `tblservice_engg`
  MODIFY `idno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tblsparesdata`
--
ALTER TABLE `tblsparesdata`
  MODIFY `sidno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tblspare_adata`
--
ALTER TABLE `tblspare_adata`
  MODIFY `sidno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tblstock`
--
ALTER TABLE `tblstock`
  MODIFY `idno` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
