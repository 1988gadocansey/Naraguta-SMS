-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 22, 2015 at 06:42 PM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `phylio_school_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `attitude`
--

CREATE TABLE IF NOT EXISTS `attitude` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `att` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `attitude`
--

INSERT INTO `attitude` (`id`, `att`) VALUES
(1, 'Calm'),
(2, 'Playfull');

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

CREATE TABLE IF NOT EXISTS `banks` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `bname` varchar(40) NOT NULL,
  `branch` varchar(40) NOT NULL,
  `accountno` varchar(40) NOT NULL,
  `accountname` varchar(100) NOT NULL,
  `accounttype` varchar(20) NOT NULL,
  `dates` varchar(20) NOT NULL,
  `totaldeposits` decimal(30,2) NOT NULL,
  `totalwithdrawal` decimal(30,2) NOT NULL,
  `currentbalance` decimal(30,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `banks`
--

INSERT INTO `banks` (`id`, `bname`, `branch`, `accountno`, `accountname`, `accounttype`, `dates`, `totaldeposits`, `totalwithdrawal`, `currentbalance`) VALUES
(1, 'GGFF', 'GFGF', 'GFGFGF', 'FDFD', 'DFD', 'GFDF', 96.00, 179.00, -83.00),
(2, 'GCB', 'ucc', '30210101016579', 'alex allotey', 'savings', ' 03/05/2009', 16482.00, -4470.00, 20952.00),
(3, 'ADB', 'ucc', '5454767476', 'juga', 'savings', '20/03/2009', 505.00, 14.00, 491.00),
(4, 'BARCLAYS', 'CAPE COAST', 'H67676', 'YTTYTYT', 'CURRENT', '1289520000', 0.00, 0.00, 0.00),
(5, 'CAL BANK', 'CAPE', '54655', 'GFAH', 'CURRENT', '1266624000', 0.00, 0.00, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `calendar`
--

CREATE TABLE IF NOT EXISTS `calendar` (
  `cid` int(90) NOT NULL AUTO_INCREMENT,
  `semester` varchar(20) NOT NULL,
  `year` varchar(20) NOT NULL,
  `dates1` varchar(50) NOT NULL,
  `dates2` varchar(50) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `calendar`
--

INSERT INTO `calendar` (`cid`, `semester`, `year`, `dates1`, `dates2`) VALUES
(1, '3', '2009/2010', '1272844800', '1280966400'),
(2, '1', '2010/2011', '1284422400', '1292544000'),
(3, '2', '2010/2011', '1294704000', '1302134400'),
(4, '3', '2010/2011', '1304035200', '1309478400');

-- --------------------------------------------------------

--
-- Table structure for table `classcode`
--

CREATE TABLE IF NOT EXISTS `classcode` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `program` varchar(500) NOT NULL,
  `form` int(10) NOT NULL,
  `subProg` varchar(9) NOT NULL,
  `code` varchar(50) NOT NULL,
  `nextClass` varchar(9) NOT NULL,
  `teacherId` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `classcode`
--

INSERT INTO `classcode` (`id`, `program`, `form`, `subProg`, `code`, `nextClass`, `teacherId`) VALUES
(1, 'BASIC', 6, '', 'BASIC 6', 'JHS 1', ''),
(2, 'BASIC', 5, '', 'BASIC 5', 'BASIC 6', ''),
(3, 'BASIC', 4, '', 'BASIC 4', 'BASIC 5', ''),
(4, 'BASIC', 3, '', 'BASIC 3', 'BASIC 4', ''),
(5, 'BASIC', 2, '', 'BASIC 2', 'BASIC 3', ''),
(6, 'BASIC', 1, '', 'BASIC 1', 'BASIC 2', ''),
(7, 'KINDERGARTEN', 2, '', 'KG2', 'BASIC 1', ''),
(8, 'KINDERGARTEN', 1, '', 'KG1', 'KG2', ''),
(9, 'NURSERY ', 2, '', 'NURSERY 2', 'KG1', ''),
(10, 'NURSERY ', 1, '', 'NURSERY 1', 'NURSERY 2', ''),
(11, 'CRECHE', 0, '', 'CRECHE', 'NURSERY 1', '');

-- --------------------------------------------------------

--
-- Table structure for table `class_teacher_report`
--

CREATE TABLE IF NOT EXISTS `class_teacher_report` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `con` varchar(5000) NOT NULL,
  `grade` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `class_teacher_report`
--

INSERT INTO `class_teacher_report` (`id`, `con`, `grade`) VALUES
(1, 'Satisfactory', 0),
(2, 'Quite good', 0),
(3, 'Well behaved student', 0),
(4, 'Respectful and socialble', 0);

-- --------------------------------------------------------

--
-- Table structure for table `comment_report`
--

CREATE TABLE IF NOT EXISTS `comment_report` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `con` varchar(5000) NOT NULL,
  `grade` int(11) NOT NULL,
  `type` varchar(900) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

--
-- Dumping data for table `comment_report`
--

INSERT INTO `comment_report` (`id`, `con`, `grade`, `type`) VALUES
(22, 'Satisfactory', 9, 'conduct'),
(23, 'Satisfactory', 9, 'form_master_report'),
(24, 'Satisfactory', 9, 'head_master_report'),
(25, 'Satisfactory', 9, 'house_master_report'),
(26, 'impressive', 4, 'head_master_report'),
(27, 'Obedient', 1, 'conduct'),
(28, 'Calm', 2, 'conduct'),
(29, 'Reading', 1, 'interest'),
(30, 'Playing Games', 2, 'interest'),
(31, 'Calm Always', 1, 'interest'),
(32, 'Self-Composed', 2, 'interest'),
(33, 'Calm', 1, 'attitude'),
(34, 'Well behaved', 2, 'attitude'),
(35, 'respective', 3, 'attitude'),
(36, 'Can do better', 1, 'form_master_report'),
(37, 'focused and well composed', 3, 'form_master_report'),
(38, 'Can do better', 1, 'head_master_report'),
(39, 'Should work harder', 5, 'head_master_report');

-- --------------------------------------------------------

--
-- Table structure for table `conduct`
--

CREATE TABLE IF NOT EXISTS `conduct` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `con` varchar(5000) NOT NULL,
  `grade` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `conduct`
--

INSERT INTO `conduct` (`id`, `con`, `grade`) VALUES
(1, 'Satisfactory', 0),
(2, 'Quite good', 0),
(3, 'Well behaved student', 0),
(4, 'Respectful and socialble', 0);

-- --------------------------------------------------------

--
-- Table structure for table `head_master_report`
--

CREATE TABLE IF NOT EXISTS `head_master_report` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `con` varchar(5000) NOT NULL,
  `grade` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `head_master_report`
--

INSERT INTO `head_master_report` (`id`, `con`, `grade`) VALUES
(1, 'Satisfactory', 0),
(2, 'Quite good', 0),
(3, 'Well behaved student', 0),
(4, 'Respectful and socialble', 0);

-- --------------------------------------------------------

--
-- Table structure for table `indexno`
--

CREATE TABLE IF NOT EXISTS `indexno` (
  `no` varchar(11) NOT NULL,
  `year` varchar(11) NOT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `indexno`
--

INSERT INTO `indexno` (`no`, `year`) VALUES
('133', '2015');

-- --------------------------------------------------------

--
-- Table structure for table `interest`
--

CREATE TABLE IF NOT EXISTS `interest` (
  `id` int(23) NOT NULL AUTO_INCREMENT,
  `interest` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `interest`
--

INSERT INTO `interest` (`id`, `interest`) VALUES
(1, 'Interested in nothing, should change attitude'),
(2, 'very plafull at all times ');

-- --------------------------------------------------------

--
-- Table structure for table `receiptno`
--

CREATE TABLE IF NOT EXISTS `receiptno` (
  `id` int(11) NOT NULL,
  `no` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `receiptno`
--

INSERT INTO `receiptno` (`id`, `no`) VALUES
(1, 104);

-- --------------------------------------------------------

--
-- Table structure for table `sent`
--

CREATE TABLE IF NOT EXISTS `sent` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `number` varchar(20) NOT NULL,
  `message` varchar(9000) NOT NULL,
  `status` varchar(900) NOT NULL,
  `dates` varchar(900) NOT NULL,
  `type` varchar(200) NOT NULL,
  `name` mediumtext NOT NULL,
  `term` int(11) NOT NULL,
  `year` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `sent`
--

INSERT INTO `sent` (`id`, `number`, `message`, `status`, `dates`, `type`, `name`, `term`, `year`) VALUES
(1, '0505284060', 'Hi Otuteye, Godstaff Kweku ,you have just paid GHc    as Academic fees leaving a  Bal of GHc 2853  Thank You.', 'Delivered', '1440159956', 'feeAlert', '', 0, ''),
(2, '0505284060', 'Hi Otuteye, Godstaff Kweku ,you have just paid GHc 111   as PTA fees leaving a  Bal of GHc 2742  Thank You.', 'Delivered', '1440160055', 'feeAlert', '', 0, ''),
(3, '0505284060', 'Hi Otuteye, Godstaff Kweku ,you have just paid GHc 222   as Academic fees leaving a  Bal of GHc 2520  Thank You.', 'Delivered', '1440161624', 'feeAlert', '', 0, ''),
(4, '0505284060', 'Hi Otuteye, Grace Akowkow ,you have just paid GHc 88   as Academic fees leaving a  Bal of GHc 3945  Thank You.', 'Not Delivered', '1440197706', 'feeAlert', '13423', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_academic_year`
--

CREATE TABLE IF NOT EXISTS `tbl_academic_year` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BEGINS` varchar(100) NOT NULL,
  `ENDS` varchar(100) NOT NULL,
  `TERM` int(11) DEFAULT NULL,
  `YEAR` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `BEGINS` (`BEGINS`,`ENDS`),
  UNIQUE KEY `BEGINS_2` (`BEGINS`,`ENDS`,`TERM`,`YEAR`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_academic_year`
--

INSERT INTO `tbl_academic_year` (`ID`, `BEGINS`, `ENDS`, `TERM`, `YEAR`) VALUES
(1, '515800800', '615800800', 1, '2014/2015'),
(2, '615800800', '618800800', 2, '2014/2015');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_auth`
--

CREATE TABLE IF NOT EXISTS `tbl_auth` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER` int(11) NOT NULL COMMENT 'links to workers table',
  `USER_SINCE` varchar(100) DEFAULT NULL,
  `USER_TYPE` varchar(30) DEFAULT NULL,
  `USERNAME` text,
  `PASSWORD` text,
  `ACTIVE` int(11) NOT NULL DEFAULT '1' COMMENT '1 means enabled,0 means disabled',
  `NET_ADD` text,
  `LAST_LOGIN` varchar(90) NOT NULL,
  `LAST_LOGOUT` varchar(90) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `USER` (`USER`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13424 ;

--
-- Dumping data for table `tbl_auth`
--

INSERT INTO `tbl_auth` (`ID`, `USER`, `USER_SINCE`, `USER_TYPE`, `USERNAME`, `PASSWORD`, `ACTIVE`, `NET_ADD`, `LAST_LOGIN`, `LAST_LOGOUT`) VALUES
(13416, 4, '1435788000', 'Teacher', 'sirgas', 'c4ca4238a0b923820dcc509a6f75849b', 0, '192.168.199.111', '1438156800', '1438156873'),
(13423, 3, '1438117854', 'Administrator', 'agnes', 'c4ca4238a0b923820dcc509a6f75849b', 1, '667.878.787.878', '1440252635', '1439668363');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bill`
--

CREATE TABLE IF NOT EXISTS `tbl_bill` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `type` varchar(200) NOT NULL,
  `descr` varchar(5000) NOT NULL,
  `program` varchar(200) NOT NULL,
  `form` varchar(9) NOT NULL,
  `subProg` varchar(9) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `stu` varchar(9000) NOT NULL,
  `stuType` varchar(200) NOT NULL,
  `sex` varchar(200) NOT NULL,
  `bill_type` varchar(100) NOT NULL COMMENT 'fresh students or continuing students',
  `term` int(11) NOT NULL,
  `year` varchar(100) NOT NULL COMMENT 'academic year',
  `Applied` int(11) NOT NULL DEFAULT '0' COMMENT '1 means applied, 0 means pending',
  `inputeddated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tbl_bill`
--

INSERT INTO `tbl_bill` (`id`, `type`, `descr`, `program`, `form`, `subProg`, `amount`, `stu`, `stuType`, `sex`, `bill_type`, `term`, `year`, `Applied`, `inputeddated`) VALUES
(2, 'Academic', 'Library fees for fresh students', '', '6', '', 320.00, '', '', '', 'Continuing Students', 1, '2014/2015', 1, '2015-08-19 06:01:04'),
(3, 'PTA', 'PTA dues for students', '', '6', '', 900.00, '', '', '', 'Continuing Students', 1, '2014/2015', 1, '2015-08-19 06:03:54'),
(4, 'Academic', 'Oliver twist books', '', 'all', '', 900.00, '', '', '', 'Fresh Students', 1, '2014/2015', 0, '2015-08-19 19:38:08');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_classes`
--

CREATE TABLE IF NOT EXISTS `tbl_classes` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `teacherId` varchar(20) NOT NULL,
  `year` varchar(20) NOT NULL,
  `term` varchar(20) NOT NULL,
  `nextClass` varchar(20) NOT NULL,
  `academic_fee` decimal(20,2) NOT NULL,
  `pta_fees` decimal(20,2) NOT NULL,
  `others` double NOT NULL,
  `inputeddate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `tbl_classes`
--

INSERT INTO `tbl_classes` (`id`, `name`, `teacherId`, `year`, `term`, `nextClass`, `academic_fee`, `pta_fees`, `others`, `inputeddate`) VALUES
(1, 'BASIC 1', 'AGM20153', '2014/2015', '', 'BASIC 2', 0.00, 0.00, 0, '0000-00-00 00:00:00'),
(2, 'BASIC 2', 'AGM20155', '2014/2015', '1', 'BASIC 3', 0.00, 0.00, 0, '0000-00-00 00:00:00'),
(3, 'BASIC 3', 'AGM20153', '2014/2015', '1', 'BASIC 4', 0.00, 0.00, 0, '0000-00-00 00:00:00'),
(4, 'BASIC 4', 'AGM20155', '2014/2015', '1', '', 0.00, 0.00, 0, '0000-00-00 00:00:00'),
(5, 'BASIC 5', 'AGM20153', '2014/2015', '1', '', 0.00, 0.00, 0, '0000-00-00 00:00:00'),
(6, 'BASIC 6', 'AGM20153', '2014/2015', '1', '', 320.00, 900.00, 0, '2015-08-19 06:03:54'),
(7, 'JHS 1', 'AGM20155', '2014/2015', '1', '', 0.00, 0.00, 0, '0000-00-00 00:00:00'),
(8, 'JHS 2', 'AGM20153', '2014/2015', '1', '', 0.00, 0.00, 0, '0000-00-00 00:00:00'),
(9, 'JHS 3', 'AGM20155', '2014/2015', '1', '', 0.00, 0.00, 0, '0000-00-00 00:00:00'),
(10, 'Creche', 'AGM20153', '2014/2015', '1', '', 0.00, 0.00, 0, '0000-00-00 00:00:00'),
(11, 'KG 1', 'AGM20155', '2014/2015', '1', '', 0.00, 0.00, 0, '0000-00-00 00:00:00'),
(12, 'KG 2', 'AGM20153', '2014/2015', '1', '', 0.00, 0.00, 0, '0000-00-00 00:00:00'),
(13, 'Nursery 1', 'AGM20155', '2014/2015', '1', '', 0.00, 0.00, 0, '0000-00-00 00:00:00'),
(14, 'Nursery 2', 'AGM20153', '2014/2015', '1', '', 0.00, 0.00, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_class_members`
--

CREATE TABLE IF NOT EXISTS `tbl_class_members` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `class` varchar(20) NOT NULL,
  `student` varchar(20) NOT NULL,
  `year` varchar(20) NOT NULL,
  `term` varchar(20) NOT NULL,
  `attendance` varchar(20) NOT NULL,
  `conduct` varchar(5000) NOT NULL,
  `attitude` varchar(2000) NOT NULL,
  `interest` varchar(2000) NOT NULL,
  `promotedTo` varchar(20) NOT NULL,
  `house_mast_report` varchar(5000) NOT NULL,
  `form_mast_report` varchar(5000) NOT NULL,
  `head_mast_report` varchar(5000) NOT NULL,
  `total` decimal(4,1) NOT NULL,
  `position` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `class` (`class`,`student`,`year`,`term`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='CREATES A CLASS FOR STUDENTS' AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tbl_class_members`
--

INSERT INTO `tbl_class_members` (`id`, `class`, `student`, `year`, `term`, `attendance`, `conduct`, `attitude`, `interest`, `promotedTo`, `house_mast_report`, `form_mast_report`, `head_mast_report`, `total`, `position`) VALUES
(3, 'BASIC 6', 'AGM2015115', '2014/2015', '1', '2', 'Well behaved student', 'Calm', 'Interested in nothing, should change attitude', 'JHS 1', '', 'Quite good', '', 874.7, '1/2'),
(4, 'BASIC 6', 'AGM2015125', '2014/2015', '1', '', '', '', '', '', '', '', '', 0.0, ''),
(5, 'JHS 2', 'AGM2015131', '2014/2015', '1', '', '', '', '', '', '', '', '', 0.0, '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_combination`
--

CREATE TABLE IF NOT EXISTS `tbl_combination` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) NOT NULL,
  `sub1` varchar(500) NOT NULL,
  `sub2` varchar(500) NOT NULL,
  `sub3` varchar(500) NOT NULL,
  `sub4` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `tbl_combination`
--

INSERT INTO `tbl_combination` (`id`, `name`, `sub1`, `sub2`, `sub3`, `sub4`) VALUES
(6, 'Econs|F-Acc|BM|C-Acc', 'Economics', 'Financial Accounting', 'Business Management', 'Cost Accounting'),
(7, 'Econs|F-Acc|BM|E-math', 'Economics', 'Financial Accounting', 'Business Management', 'Elective Maths'),
(16, 'Txtls|GKA|Crmics|Econs', 'Textiles', 'General Knowledge in Art (GKA)', 'Ceramics', 'Economics'),
(17, 'GD|GKA|Crmics|Econs', 'Graphic Design', 'General Knowledge in Art (GKA)', 'Ceramics', 'Economics'),
(18, 'Georg|Econs|Gvnt|Frnch', 'Geography', 'Economics', 'Government', 'French'),
(19, 'Georg|Econs|Gvnt|CRS', 'Geography', 'Economics', 'Government', 'Christian Religious Studies (CRS)'),
(20, 'Bio|Chem|Phsics|E-math', 'Biology', 'Chemistry', 'Physics', 'Elective Maths'),
(21, 'Chem|Econs|F&N|MinL', 'Chemistry', 'Economics', 'Food and Nutrition', 'Management in Living'),
(22, 'Chem|GKA|F&N|MinL', 'Chemistry', 'General Knowledge in Art (GKA)', 'Food and Nutrition', 'Management in Living'),
(23, 'Chem|C&T|MinL|GKA', 'Chemistry', 'Clothing and Textiles', 'Management in Living', 'General Knowledge in Art (GKA)'),
(24, 'Chem|C&T|MinL|Econs', 'Chemistry', 'Clothing and Textiles', 'Management in Living', 'Economics'),
(25, 'Georg|Econs|E-math|Frnch', 'Geography', 'Economics', 'Elective Maths', 'French'),
(26, 'Georg|Econs|E-math|CRS', 'Geography', 'Economics', 'Elective Maths', 'Christian Religious Studies (CRS)'),
(27, 'Txtls|GKA|Crmics|', 'Textiles', 'General Knowledge in Art (GKA)', 'Ceramics', 'SELECT SUBJECT'),
(28, 'GD|GKA|Crmics|', 'Graphic Design', 'General Knowledge in Art (GKA)', 'Ceramics', 'SELECT SUBJECT'),
(29, 'Georg|Econs|Hist|Frnch', 'Geography', 'Economics', 'History', 'French'),
(30, 'Georg|Econs|Hist|CRS', 'Geography', 'Economics', 'History', 'Christian Religious Studies (CRS)'),
(31, 'C&T|Econs|GKA|MinL', 'Clothing and Textiles', 'Economics', 'General Knowledge in Art (GKA)', 'Management in Living'),
(32, 'F&N|Econs|GKA|MinL', 'Food and Nutrition', 'Economics', 'General Knowledge in Art (GKA)', 'Management in Living'),
(33, 'Hist|Englsh-Lit|Econs|Frnch', 'History', 'English Literature', 'Economics', 'French'),
(34, 'Gvnt|Englsh-Lit|Frnch|Econs', 'Government', 'English Literature', 'French', 'Economics'),
(35, 'F&N|MinL|Chem|Frnch', 'Food and Nutrition', 'Management in Living', 'Chemistry', 'French'),
(36, 'F&N|MinL|Chem|GKA', 'Food and Nutrition', 'Management in Living', 'Chemistry', 'General Knowledge in Art (GKA)');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_config`
--

CREATE TABLE IF NOT EXISTS `tbl_config` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(100) NOT NULL,
  `SCHOOL_TYPE` int(11) DEFAULT NULL,
  `SCHOOL_ADDRESS` varchar(200) DEFAULT NULL,
  `SCHOOL_TELEPHONE` varchar(200) DEFAULT NULL,
  `SCHOOL_EMAIL` varchar(200) DEFAULT NULL,
  `SCHOOL_MOTTO` varchar(200) DEFAULT NULL,
  `SCHOOL_HEAD` varchar(100) NOT NULL,
  `SCHOOL_ACCOUNTANT` varchar(100) NOT NULL,
  `OPEN_TIME` varchar(20) NOT NULL,
  `CLOSE_TIME` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_config`
--

INSERT INTO `tbl_config` (`ID`, `NAME`, `SCHOOL_TYPE`, `SCHOOL_ADDRESS`, `SCHOOL_TELEPHONE`, `SCHOOL_EMAIL`, `SCHOOL_MOTTO`, `SCHOOL_HEAD`, `SCHOOL_ACCOUNTANT`, `OPEN_TIME`, `CLOSE_TIME`) VALUES
(2, 'Glorious Academy', 3, 'P.O.BOX 16,Sege-Ada', '0505284060', 'gadocansey@gmail.com', 'Aim high', 'Mr Gad Ocansey', 'Mrs Agnes Ocansey', '3:51 AM', '3:51 AM');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_country`
--

CREATE TABLE IF NOT EXISTS `tbl_country` (
  `Code` char(3) NOT NULL DEFAULT '',
  `Name` char(52) NOT NULL DEFAULT '',
  `Continent` enum('Asia','Europe','North America','Africa','Oceania','Antarctica','South America') NOT NULL DEFAULT 'Asia',
  `Region` char(26) NOT NULL DEFAULT '',
  `SurfaceArea` float(10,2) NOT NULL DEFAULT '0.00',
  `IndepYear` smallint(6) DEFAULT NULL,
  `Population` int(11) NOT NULL DEFAULT '0',
  `LifeExpectancy` float(3,1) DEFAULT NULL,
  `GNP` float(10,2) DEFAULT NULL,
  `GNPOld` float(10,2) DEFAULT NULL,
  `LocalName` char(45) NOT NULL DEFAULT '',
  `GovernmentForm` char(45) NOT NULL DEFAULT '',
  `HeadOfState` char(60) DEFAULT NULL,
  `Capital` int(11) DEFAULT NULL,
  `Code2` char(2) NOT NULL DEFAULT '',
  PRIMARY KEY (`Code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_country`
--

INSERT INTO `tbl_country` (`Code`, `Name`, `Continent`, `Region`, `SurfaceArea`, `IndepYear`, `Population`, `LifeExpectancy`, `GNP`, `GNPOld`, `LocalName`, `GovernmentForm`, `HeadOfState`, `Capital`, `Code2`) VALUES
('ABW', 'Aruba', 'North America', 'Caribbean', 193.00, NULL, 103000, 78.4, 828.00, 793.00, 'Aruba', 'Nonmetropolitan Territory of The Netherlands', 'Beatrix', 129, 'AW'),
('AFG', 'Afghanistan', 'Asia', 'Southern and Central Asia', 652090.00, 1919, 22720000, 45.9, 5976.00, NULL, 'Afganistan/Afqanestan', 'Islamic Emirate', 'Mohammad Omar', 1, 'AF'),
('AGO', 'Angola', 'Africa', 'Central Africa', 1246700.00, 1975, 12878000, 38.3, 6648.00, 7984.00, 'Angola', 'Republic', 'José Eduardo dos Santos', 56, 'AO'),
('AIA', 'Anguilla', 'North America', 'Caribbean', 96.00, NULL, 8000, 76.1, 63.20, NULL, 'Anguilla', 'Dependent Territory of the UK', 'Elisabeth II', 62, 'AI'),
('ALB', 'Albania', 'Europe', 'Southern Europe', 28748.00, 1912, 3401200, 71.6, 3205.00, 2500.00, 'Shqipëria', 'Republic', 'Rexhep Mejdani', 34, 'AL'),
('AND', 'Andorra', 'Europe', 'Southern Europe', 468.00, 1278, 78000, 83.5, 1630.00, NULL, 'Andorra', 'Parliamentary Coprincipality', '', 55, 'AD'),
('ANT', 'Netherlands Antilles', 'North America', 'Caribbean', 800.00, NULL, 217000, 74.7, 1941.00, NULL, 'Nederlandse Antillen', 'Nonmetropolitan Territory of The Netherlands', 'Beatrix', 33, 'AN'),
('ARE', 'United Arab Emirates', 'Asia', 'Middle East', 83600.00, 1971, 2441000, 74.1, 37966.00, 36846.00, 'Al-Imarat al-´Arabiya al-Muttahida', 'Emirate Federation', 'Zayid bin Sultan al-Nahayan', 65, 'AE'),
('ARG', 'Argentina', 'South America', 'South America', 2780400.00, 1816, 37032000, 75.1, 340238.00, 323310.00, 'Argentina', 'Federal Republic', 'Fernando de la Rúa', 69, 'AR'),
('ARM', 'Armenia', 'Asia', 'Middle East', 29800.00, 1991, 3520000, 66.4, 1813.00, 1627.00, 'Hajastan', 'Republic', 'Robert Kotšarjan', 126, 'AM'),
('ASM', 'American Samoa', 'Oceania', 'Polynesia', 199.00, NULL, 68000, 75.1, 334.00, NULL, 'Amerika Samoa', 'US Territory', 'George W. Bush', 54, 'AS'),
('ATA', 'Antarctica', 'Antarctica', 'Antarctica', 13120000.00, NULL, 0, NULL, 0.00, NULL, '–', 'Co-administrated', '', NULL, 'AQ'),
('ATF', 'French Southern territories', 'Antarctica', 'Antarctica', 7780.00, NULL, 0, NULL, 0.00, NULL, 'Terres australes françaises', 'Nonmetropolitan Territory of France', 'Jacques Chirac', NULL, 'TF'),
('ATG', 'Antigua and Barbuda', 'North America', 'Caribbean', 442.00, 1981, 68000, 70.5, 612.00, 584.00, 'Antigua and Barbuda', 'Constitutional Monarchy', 'Elisabeth II', 63, 'AG'),
('AUS', 'Australia', 'Oceania', 'Australia and New Zealand', 7741220.00, 1901, 18886000, 79.8, 351182.00, 392911.00, 'Australia', 'Constitutional Monarchy, Federation', 'Elisabeth II', 135, 'AU'),
('AUT', 'Austria', 'Europe', 'Western Europe', 83859.00, 1918, 8091800, 77.7, 211860.00, 206025.00, 'Österreich', 'Federal Republic', 'Thomas Klestil', 1523, 'AT'),
('AZE', 'Azerbaijan', 'Asia', 'Middle East', 86600.00, 1991, 7734000, 62.9, 4127.00, 4100.00, 'Azärbaycan', 'Federal Republic', 'Heydär Äliyev', 144, 'AZ'),
('BDI', 'Burundi', 'Africa', 'Eastern Africa', 27834.00, 1962, 6695000, 46.2, 903.00, 982.00, 'Burundi/Uburundi', 'Republic', 'Pierre Buyoya', 552, 'BI'),
('BEL', 'Belgium', 'Europe', 'Western Europe', 30518.00, 1830, 10239000, 77.8, 249704.00, 243948.00, 'België/Belgique', 'Constitutional Monarchy, Federation', 'Albert II', 179, 'BE'),
('BEN', 'Benin', 'Africa', 'Western Africa', 112622.00, 1960, 6097000, 50.2, 2357.00, 2141.00, 'Bénin', 'Republic', 'Mathieu Kérékou', 187, 'BJ'),
('BFA', 'Burkina Faso', 'Africa', 'Western Africa', 274000.00, 1960, 11937000, 46.7, 2425.00, 2201.00, 'Burkina Faso', 'Republic', 'Blaise Compaoré', 549, 'BF'),
('BGD', 'Bangladesh', 'Asia', 'Southern and Central Asia', 143998.00, 1971, 129155000, 60.2, 32852.00, 31966.00, 'Bangladesh', 'Republic', 'Shahabuddin Ahmad', 150, 'BD'),
('BGR', 'Bulgaria', 'Europe', 'Eastern Europe', 110994.00, 1908, 8190900, 70.9, 12178.00, 10169.00, 'Balgarija', 'Republic', 'Petar Stojanov', 539, 'BG'),
('BHR', 'Bahrain', 'Asia', 'Middle East', 694.00, 1971, 617000, 73.0, 6366.00, 6097.00, 'Al-Bahrayn', 'Monarchy (Emirate)', 'Hamad ibn Isa al-Khalifa', 149, 'BH'),
('BHS', 'Bahamas', 'North America', 'Caribbean', 13878.00, 1973, 307000, 71.1, 3527.00, 3347.00, 'The Bahamas', 'Constitutional Monarchy', 'Elisabeth II', 148, 'BS'),
('BIH', 'Bosnia and Herzegovina', 'Europe', 'Southern Europe', 51197.00, 1992, 3972000, 71.5, 2841.00, NULL, 'Bosna i Hercegovina', 'Federal Republic', 'Ante Jelavic', 201, 'BA'),
('BLR', 'Belarus', 'Europe', 'Eastern Europe', 207600.00, 1991, 10236000, 68.0, 13714.00, NULL, 'Belarus', 'Republic', 'Aljaksandr Lukašenka', 3520, 'BY'),
('BLZ', 'Belize', 'North America', 'Central America', 22696.00, 1981, 241000, 70.9, 630.00, 616.00, 'Belize', 'Constitutional Monarchy', 'Elisabeth II', 185, 'BZ'),
('BMU', 'Bermuda', 'North America', 'North America', 53.00, NULL, 65000, 76.9, 2328.00, 2190.00, 'Bermuda', 'Dependent Territory of the UK', 'Elisabeth II', 191, 'BM'),
('BOL', 'Bolivia', 'South America', 'South America', 1098581.00, 1825, 8329000, 63.7, 8571.00, 7967.00, 'Bolivia', 'Republic', 'Hugo Bánzer Suárez', 194, 'BO'),
('BRA', 'Brazil', 'South America', 'South America', 8547403.00, 1822, 170115000, 62.9, 776739.00, 804108.00, 'Brasil', 'Federal Republic', 'Fernando Henrique Cardoso', 211, 'BR'),
('BRB', 'Barbados', 'North America', 'Caribbean', 430.00, 1966, 270000, 73.0, 2223.00, 2186.00, 'Barbados', 'Constitutional Monarchy', 'Elisabeth II', 174, 'BB'),
('BRN', 'Brunei', 'Asia', 'Southeast Asia', 5765.00, 1984, 328000, 73.6, 11705.00, 12460.00, 'Brunei Darussalam', 'Monarchy (Sultanate)', 'Haji Hassan al-Bolkiah', 538, 'BN'),
('BTN', 'Bhutan', 'Asia', 'Southern and Central Asia', 47000.00, 1910, 2124000, 52.4, 372.00, 383.00, 'Druk-Yul', 'Monarchy', 'Jigme Singye Wangchuk', 192, 'BT'),
('BVT', 'Bouvet Island', 'Antarctica', 'Antarctica', 59.00, NULL, 0, NULL, 0.00, NULL, 'Bouvetøya', 'Dependent Territory of Norway', 'Harald V', NULL, 'BV'),
('BWA', 'Botswana', 'Africa', 'Southern Africa', 581730.00, 1966, 1622000, 39.3, 4834.00, 4935.00, 'Botswana', 'Republic', 'Festus G. Mogae', 204, 'BW'),
('CAF', 'Central African Republic', 'Africa', 'Central Africa', 622984.00, 1960, 3615000, 44.0, 1054.00, 993.00, 'Centrafrique/Bê-Afrîka', 'Republic', 'Ange-Félix Patassé', 1889, 'CF'),
('CAN', 'Canada', 'North America', 'North America', 9970610.00, 1867, 31147000, 79.4, 598862.00, 625626.00, 'Canada', 'Constitutional Monarchy, Federation', 'Elisabeth II', 1822, 'CA'),
('CCK', 'Cocos (Keeling) Islands', 'Oceania', 'Australia and New Zealand', 14.00, NULL, 600, NULL, 0.00, NULL, 'Cocos (Keeling) Islands', 'Territory of Australia', 'Elisabeth II', 2317, 'CC'),
('CHE', 'Switzerland', 'Europe', 'Western Europe', 41284.00, 1499, 7160400, 79.6, 264478.00, 256092.00, 'Schweiz/Suisse/Svizzera/Svizra', 'Federation', 'Adolf Ogi', 3248, 'CH'),
('CHL', 'Chile', 'South America', 'South America', 756626.00, 1810, 15211000, 75.7, 72949.00, 75780.00, 'Chile', 'Republic', 'Ricardo Lagos Escobar', 554, 'CL'),
('CHN', 'China', 'Asia', 'Eastern Asia', 9572900.00, -1523, 1277558000, 71.4, 982268.00, 917719.00, 'Zhongquo', 'People''sRepublic', 'Jiang Zemin', 1891, 'CN'),
('CIV', 'Côte d’Ivoire', 'Africa', 'Western Africa', 322463.00, 1960, 14786000, 45.2, 11345.00, 10285.00, 'Côte d’Ivoire', 'Republic', 'Laurent Gbagbo', 2814, 'CI'),
('CMR', 'Cameroon', 'Africa', 'Central Africa', 475442.00, 1960, 15085000, 54.8, 9174.00, 8596.00, 'Cameroun/Cameroon', 'Republic', 'Paul Biya', 1804, 'CM'),
('COD', 'Congo, The Democratic Republic of the', 'Africa', 'Central Africa', 2344858.00, 1960, 51654000, 48.8, 6964.00, 2474.00, 'République Démocratique du Congo', 'Republic', 'Joseph Kabila', 2298, 'CD'),
('COG', 'Congo', 'Africa', 'Central Africa', 342000.00, 1960, 2943000, 47.4, 2108.00, 2287.00, 'Congo', 'Republic', 'Denis Sassou-Nguesso', 2296, 'CG'),
('COK', 'Cook Islands', 'Oceania', 'Polynesia', 236.00, NULL, 20000, 71.1, 100.00, NULL, 'The Cook Islands', 'Nonmetropolitan Territory of New Zealand', 'Elisabeth II', 583, 'CK'),
('COL', 'Colombia', 'South America', 'South America', 1138914.00, 1810, 42321000, 70.3, 102896.00, 105116.00, 'Colombia', 'Republic', 'Andrés Pastrana Arango', 2257, 'CO'),
('COM', 'Comoros', 'Africa', 'Eastern Africa', 1862.00, 1975, 578000, 60.0, 4401.00, 4361.00, 'Komori/Comores', 'Republic', 'Azali Assoumani', 2295, 'KM'),
('CPV', 'Cape Verde', 'Africa', 'Western Africa', 4033.00, 1975, 428000, 68.9, 435.00, 420.00, 'Cabo Verde', 'Republic', 'António Mascarenhas Monteiro', 1859, 'CV'),
('CRI', 'Costa Rica', 'North America', 'Central America', 51100.00, 1821, 4023000, 75.8, 10226.00, 9757.00, 'Costa Rica', 'Republic', 'Miguel Ángel Rodríguez Echeverría', 584, 'CR'),
('CUB', 'Cuba', 'North America', 'Caribbean', 110861.00, 1902, 11201000, 76.2, 17843.00, 18862.00, 'Cuba', 'Socialistic Republic', 'Fidel Castro Ruz', 2413, 'CU'),
('CXR', 'Christmas Island', 'Oceania', 'Australia and New Zealand', 135.00, NULL, 2500, NULL, 0.00, NULL, 'Christmas Island', 'Territory of Australia', 'Elisabeth II', 1791, 'CX'),
('CYM', 'Cayman Islands', 'North America', 'Caribbean', 264.00, NULL, 38000, 78.9, 1263.00, 1186.00, 'Cayman Islands', 'Dependent Territory of the UK', 'Elisabeth II', 553, 'KY'),
('CYP', 'Cyprus', 'Asia', 'Middle East', 9251.00, 1960, 754700, 76.7, 9333.00, 8246.00, 'Kýpros/Kibris', 'Republic', 'Glafkos Klerides', 2430, 'CY'),
('CZE', 'Czech Republic', 'Europe', 'Eastern Europe', 78866.00, 1993, 10278100, 74.5, 55017.00, 52037.00, '¸esko', 'Republic', 'Václav Havel', 3339, 'CZ'),
('DEU', 'Germany', 'Europe', 'Western Europe', 357022.00, 1955, 82164700, 77.4, 2133367.00, 2102826.00, 'Deutschland', 'Federal Republic', 'Johannes Rau', 3068, 'DE'),
('DJI', 'Djibouti', 'Africa', 'Eastern Africa', 23200.00, 1977, 638000, 50.8, 382.00, 373.00, 'Djibouti/Jibuti', 'Republic', 'Ismail Omar Guelleh', 585, 'DJ'),
('DMA', 'Dominica', 'North America', 'Caribbean', 751.00, 1978, 71000, 73.4, 256.00, 243.00, 'Dominica', 'Republic', 'Vernon Shaw', 586, 'DM'),
('DNK', 'Denmark', 'Europe', 'Nordic Countries', 43094.00, 800, 5330000, 76.5, 174099.00, 169264.00, 'Danmark', 'Constitutional Monarchy', 'Margrethe II', 3315, 'DK'),
('DOM', 'Dominican Republic', 'North America', 'Caribbean', 48511.00, 1844, 8495000, 73.2, 15846.00, 15076.00, 'República Dominicana', 'Republic', 'Hipólito Mejía Domínguez', 587, 'DO'),
('DZA', 'Algeria', 'Africa', 'Northern Africa', 2381741.00, 1962, 31471000, 69.7, 49982.00, 46966.00, 'Al-Jaza’ir/Algérie', 'Republic', 'Abdelaziz Bouteflika', 35, 'DZ'),
('ECU', 'Ecuador', 'South America', 'South America', 283561.00, 1822, 12646000, 71.1, 19770.00, 19769.00, 'Ecuador', 'Republic', 'Gustavo Noboa Bejarano', 594, 'EC'),
('EGY', 'Egypt', 'Africa', 'Northern Africa', 1001449.00, 1922, 68470000, 63.3, 82710.00, 75617.00, 'Misr', 'Republic', 'Hosni Mubarak', 608, 'EG'),
('ERI', 'Eritrea', 'Africa', 'Eastern Africa', 117600.00, 1993, 3850000, 55.8, 650.00, 755.00, 'Ertra', 'Republic', 'Isayas Afewerki [Isaias Afwerki]', 652, 'ER'),
('ESH', 'Western Sahara', 'Africa', 'Northern Africa', 266000.00, NULL, 293000, 49.8, 60.00, NULL, 'As-Sahrawiya', 'Occupied by Marocco', 'Mohammed Abdel Aziz', 2453, 'EH'),
('ESP', 'Spain', 'Europe', 'Southern Europe', 505992.00, 1492, 39441700, 78.8, 553233.00, 532031.00, 'España', 'Constitutional Monarchy', 'Juan Carlos I', 653, 'ES'),
('EST', 'Estonia', 'Europe', 'Baltic Countries', 45227.00, 1991, 1439200, 69.5, 5328.00, 3371.00, 'Eesti', 'Republic', 'Lennart Meri', 3791, 'EE'),
('ETH', 'Ethiopia', 'Africa', 'Eastern Africa', 1104300.00, -1000, 62565000, 45.2, 6353.00, 6180.00, 'YeItyop´iya', 'Republic', 'Negasso Gidada', 756, 'ET'),
('FIN', 'Finland', 'Europe', 'Nordic Countries', 338145.00, 1917, 5171300, 77.4, 121914.00, 119833.00, 'Suomi', 'Republic', 'Tarja Halonen', 3236, 'FI'),
('FJI', 'Fiji Islands', 'Oceania', 'Melanesia', 18274.00, 1970, 817000, 67.9, 1536.00, 2149.00, 'Fiji Islands', 'Republic', 'Josefa Iloilo', 764, 'FJ'),
('FLK', 'Falkland Islands', 'South America', 'South America', 12173.00, NULL, 2000, NULL, 0.00, NULL, 'Falkland Islands', 'Dependent Territory of the UK', 'Elisabeth II', 763, 'FK'),
('FRA', 'France', 'Europe', 'Western Europe', 551500.00, 843, 59225700, 78.8, 1424285.00, 1392448.00, 'France', 'Republic', 'Jacques Chirac', 2974, 'FR'),
('FRO', 'Faroe Islands', 'Europe', 'Nordic Countries', 1399.00, NULL, 43000, 78.4, 0.00, NULL, 'Føroyar', 'Part of Denmark', 'Margrethe II', 901, 'FO'),
('FSM', 'Micronesia, Federated States of', 'Oceania', 'Micronesia', 702.00, 1990, 119000, 68.6, 212.00, NULL, 'Micronesia', 'Federal Republic', 'Leo A. Falcam', 2689, 'FM'),
('GAB', 'Gabon', 'Africa', 'Central Africa', 267668.00, 1960, 1226000, 50.1, 5493.00, 5279.00, 'Le Gabon', 'Republic', 'Omar Bongo', 902, 'GA'),
('GBR', 'United Kingdom', 'Europe', 'British Islands', 242900.00, 1066, 59623400, 77.7, 1378330.00, 1296830.00, 'United Kingdom', 'Constitutional Monarchy', 'Elisabeth II', 456, 'GB'),
('GEO', 'Georgia', 'Asia', 'Middle East', 69700.00, 1991, 4968000, 64.5, 6064.00, 5924.00, 'Sakartvelo', 'Republic', 'Eduard Ševardnadze', 905, 'GE'),
('GHA', 'Ghana', 'Africa', 'Western Africa', 238533.00, 1957, 20212000, 57.4, 7137.00, 6884.00, 'Ghana', 'Republic', 'John Kufuor', 910, 'GH'),
('GIB', 'Gibraltar', 'Europe', 'Southern Europe', 6.00, NULL, 25000, 79.0, 258.00, NULL, 'Gibraltar', 'Dependent Territory of the UK', 'Elisabeth II', 915, 'GI'),
('GIN', 'Guinea', 'Africa', 'Western Africa', 245857.00, 1958, 7430000, 45.6, 2352.00, 2383.00, 'Guinée', 'Republic', 'Lansana Conté', 926, 'GN'),
('GLP', 'Guadeloupe', 'North America', 'Caribbean', 1705.00, NULL, 456000, 77.0, 3501.00, NULL, 'Guadeloupe', 'Overseas Department of France', 'Jacques Chirac', 919, 'GP'),
('GMB', 'Gambia', 'Africa', 'Western Africa', 11295.00, 1965, 1305000, 53.2, 320.00, 325.00, 'The Gambia', 'Republic', 'Yahya Jammeh', 904, 'GM'),
('GNB', 'Guinea-Bissau', 'Africa', 'Western Africa', 36125.00, 1974, 1213000, 49.0, 293.00, 272.00, 'Guiné-Bissau', 'Republic', 'Kumba Ialá', 927, 'GW'),
('GNQ', 'Equatorial Guinea', 'Africa', 'Central Africa', 28051.00, 1968, 453000, 53.6, 283.00, 542.00, 'Guinea Ecuatorial', 'Republic', 'Teodoro Obiang Nguema Mbasogo', 2972, 'GQ'),
('GRC', 'Greece', 'Europe', 'Southern Europe', 131626.00, 1830, 10545700, 78.4, 120724.00, 119946.00, 'Elláda', 'Republic', 'Kostis Stefanopoulos', 2401, 'GR'),
('GRD', 'Grenada', 'North America', 'Caribbean', 344.00, 1974, 94000, 64.5, 318.00, NULL, 'Grenada', 'Constitutional Monarchy', 'Elisabeth II', 916, 'GD'),
('GRL', 'Greenland', 'North America', 'North America', 2166090.00, NULL, 56000, 68.1, 0.00, NULL, 'Kalaallit Nunaat/Grønland', 'Part of Denmark', 'Margrethe II', 917, 'GL'),
('GTM', 'Guatemala', 'North America', 'Central America', 108889.00, 1821, 11385000, 66.2, 19008.00, 17797.00, 'Guatemala', 'Republic', 'Alfonso Portillo Cabrera', 922, 'GT'),
('GUF', 'French Guiana', 'South America', 'South America', 90000.00, NULL, 181000, 76.1, 681.00, NULL, 'Guyane française', 'Overseas Department of France', 'Jacques Chirac', 3014, 'GF'),
('GUM', 'Guam', 'Oceania', 'Micronesia', 549.00, NULL, 168000, 77.8, 1197.00, 1136.00, 'Guam', 'US Territory', 'George W. Bush', 921, 'GU'),
('GUY', 'Guyana', 'South America', 'South America', 214969.00, 1966, 861000, 64.0, 722.00, 743.00, 'Guyana', 'Republic', 'Bharrat Jagdeo', 928, 'GY'),
('HKG', 'Hong Kong', 'Asia', 'Eastern Asia', 1075.00, NULL, 6782000, 79.5, 166448.00, 173610.00, 'Xianggang/Hong Kong', 'Special Administrative Region of China', 'Jiang Zemin', 937, 'HK'),
('HMD', 'Heard Island and McDonald Islands', 'Antarctica', 'Antarctica', 359.00, NULL, 0, NULL, 0.00, NULL, 'Heard and McDonald Islands', 'Territory of Australia', 'Elisabeth II', NULL, 'HM'),
('HND', 'Honduras', 'North America', 'Central America', 112088.00, 1838, 6485000, 69.9, 5333.00, 4697.00, 'Honduras', 'Republic', 'Carlos Roberto Flores Facussé', 933, 'HN'),
('HRV', 'Croatia', 'Europe', 'Southern Europe', 56538.00, 1991, 4473000, 73.7, 20208.00, 19300.00, 'Hrvatska', 'Republic', 'Štipe Mesic', 2409, 'HR'),
('HTI', 'Haiti', 'North America', 'Caribbean', 27750.00, 1804, 8222000, 49.2, 3459.00, 3107.00, 'Haïti/Dayti', 'Republic', 'Jean-Bertrand Aristide', 929, 'HT'),
('HUN', 'Hungary', 'Europe', 'Eastern Europe', 93030.00, 1918, 10043200, 71.4, 48267.00, 45914.00, 'Magyarország', 'Republic', 'Ferenc Mádl', 3483, 'HU'),
('IDN', 'Indonesia', 'Asia', 'Southeast Asia', 1904569.00, 1945, 212107000, 68.0, 84982.00, 215002.00, 'Indonesia', 'Republic', 'Abdurrahman Wahid', 939, 'ID'),
('IND', 'India', 'Asia', 'Southern and Central Asia', 3287263.00, 1947, 1013662000, 62.5, 447114.00, 430572.00, 'Bharat/India', 'Federal Republic', 'Kocheril Raman Narayanan', 1109, 'IN'),
('IOT', 'British Indian Ocean Territory', 'Africa', 'Eastern Africa', 78.00, NULL, 0, NULL, 0.00, NULL, 'British Indian Ocean Territory', 'Dependent Territory of the UK', 'Elisabeth II', NULL, 'IO'),
('IRL', 'Ireland', 'Europe', 'British Islands', 70273.00, 1921, 3775100, 76.8, 75921.00, 73132.00, 'Ireland/Éire', 'Republic', 'Mary McAleese', 1447, 'IE'),
('IRN', 'Iran', 'Asia', 'Southern and Central Asia', 1648195.00, 1906, 67702000, 69.7, 195746.00, 160151.00, 'Iran', 'Islamic Republic', 'Ali Mohammad Khatami-Ardakani', 1380, 'IR'),
('IRQ', 'Iraq', 'Asia', 'Middle East', 438317.00, 1932, 23115000, 66.5, 11500.00, NULL, 'Al-´Iraq', 'Republic', 'Saddam Hussein al-Takriti', 1365, 'IQ'),
('ISL', 'Iceland', 'Europe', 'Nordic Countries', 103000.00, 1944, 279000, 79.4, 8255.00, 7474.00, 'Ísland', 'Republic', 'Ólafur Ragnar Grímsson', 1449, 'IS'),
('ISR', 'Israel', 'Asia', 'Middle East', 21056.00, 1948, 6217000, 78.6, 97477.00, 98577.00, 'Yisra’el/Isra’il', 'Republic', 'Moshe Katzav', 1450, 'IL'),
('ITA', 'Italy', 'Europe', 'Southern Europe', 301316.00, 1861, 57680000, 79.0, 1161755.00, 1145372.00, 'Italia', 'Republic', 'Carlo Azeglio Ciampi', 1464, 'IT'),
('JAM', 'Jamaica', 'North America', 'Caribbean', 10990.00, 1962, 2583000, 75.2, 6871.00, 6722.00, 'Jamaica', 'Constitutional Monarchy', 'Elisabeth II', 1530, 'JM'),
('JOR', 'Jordan', 'Asia', 'Middle East', 88946.00, 1946, 5083000, 77.4, 7526.00, 7051.00, 'Al-Urdunn', 'Constitutional Monarchy', 'Abdullah II', 1786, 'JO'),
('JPN', 'Japan', 'Asia', 'Eastern Asia', 377829.00, -660, 126714000, 80.7, 3787042.00, 4192638.00, 'Nihon/Nippon', 'Constitutional Monarchy', 'Akihito', 1532, 'JP'),
('KAZ', 'Kazakstan', 'Asia', 'Southern and Central Asia', 2724900.00, 1991, 16223000, 63.2, 24375.00, 23383.00, 'Qazaqstan', 'Republic', 'Nursultan Nazarbajev', 1864, 'KZ'),
('KEN', 'Kenya', 'Africa', 'Eastern Africa', 580367.00, 1963, 30080000, 48.0, 9217.00, 10241.00, 'Kenya', 'Republic', 'Daniel arap Moi', 1881, 'KE'),
('KGZ', 'Kyrgyzstan', 'Asia', 'Southern and Central Asia', 199900.00, 1991, 4699000, 63.4, 1626.00, 1767.00, 'Kyrgyzstan', 'Republic', 'Askar Akajev', 2253, 'KG'),
('KHM', 'Cambodia', 'Asia', 'Southeast Asia', 181035.00, 1953, 11168000, 56.5, 5121.00, 5670.00, 'Kâmpuchéa', 'Constitutional Monarchy', 'Norodom Sihanouk', 1800, 'KH'),
('KIR', 'Kiribati', 'Oceania', 'Micronesia', 726.00, 1979, 83000, 59.8, 40.70, NULL, 'Kiribati', 'Republic', 'Teburoro Tito', 2256, 'KI'),
('KNA', 'Saint Kitts and Nevis', 'North America', 'Caribbean', 261.00, 1983, 38000, 70.7, 299.00, NULL, 'Saint Kitts and Nevis', 'Constitutional Monarchy', 'Elisabeth II', 3064, 'KN'),
('KOR', 'South Korea', 'Asia', 'Eastern Asia', 99434.00, 1948, 46844000, 74.4, 320749.00, 442544.00, 'Taehan Min’guk (Namhan)', 'Republic', 'Kim Dae-jung', 2331, 'KR'),
('KWT', 'Kuwait', 'Asia', 'Middle East', 17818.00, 1961, 1972000, 76.1, 27037.00, 30373.00, 'Al-Kuwayt', 'Constitutional Monarchy (Emirate)', 'Jabir al-Ahmad al-Jabir al-Sabah', 2429, 'KW'),
('LAO', 'Laos', 'Asia', 'Southeast Asia', 236800.00, 1953, 5433000, 53.1, 1292.00, 1746.00, 'Lao', 'Republic', 'Khamtay Siphandone', 2432, 'LA'),
('LBN', 'Lebanon', 'Asia', 'Middle East', 10400.00, 1941, 3282000, 71.3, 17121.00, 15129.00, 'Lubnan', 'Republic', 'Émile Lahoud', 2438, 'LB'),
('LBR', 'Liberia', 'Africa', 'Western Africa', 111369.00, 1847, 3154000, 51.0, 2012.00, NULL, 'Liberia', 'Republic', 'Charles Taylor', 2440, 'LR'),
('LBY', 'Libyan Arab Jamahiriya', 'Africa', 'Northern Africa', 1759540.00, 1951, 5605000, 75.5, 44806.00, 40562.00, 'Libiya', 'Socialistic State', 'Muammar al-Qadhafi', 2441, 'LY'),
('LCA', 'Saint Lucia', 'North America', 'Caribbean', 622.00, 1979, 154000, 72.3, 571.00, NULL, 'Saint Lucia', 'Constitutional Monarchy', 'Elisabeth II', 3065, 'LC'),
('LIE', 'Liechtenstein', 'Europe', 'Western Europe', 160.00, 1806, 32300, 78.8, 1119.00, 1084.00, 'Liechtenstein', 'Constitutional Monarchy', 'Hans-Adam II', 2446, 'LI'),
('LKA', 'Sri Lanka', 'Asia', 'Southern and Central Asia', 65610.00, 1948, 18827000, 71.8, 15706.00, 15091.00, 'Sri Lanka/Ilankai', 'Republic', 'Chandrika Kumaratunga', 3217, 'LK'),
('LSO', 'Lesotho', 'Africa', 'Southern Africa', 30355.00, 1966, 2153000, 50.8, 1061.00, 1161.00, 'Lesotho', 'Constitutional Monarchy', 'Letsie III', 2437, 'LS'),
('LTU', 'Lithuania', 'Europe', 'Baltic Countries', 65301.00, 1991, 3698500, 69.1, 10692.00, 9585.00, 'Lietuva', 'Republic', 'Valdas Adamkus', 2447, 'LT'),
('LUX', 'Luxembourg', 'Europe', 'Western Europe', 2586.00, 1867, 435700, 77.1, 16321.00, 15519.00, 'Luxembourg/Lëtzebuerg', 'Constitutional Monarchy', 'Henri', 2452, 'LU'),
('LVA', 'Latvia', 'Europe', 'Baltic Countries', 64589.00, 1991, 2424200, 68.4, 6398.00, 5639.00, 'Latvija', 'Republic', 'Vaira Vike-Freiberga', 2434, 'LV'),
('MAC', 'Macao', 'Asia', 'Eastern Asia', 18.00, NULL, 473000, 81.6, 5749.00, 5940.00, 'Macau/Aomen', 'Special Administrative Region of China', 'Jiang Zemin', 2454, 'MO'),
('MAR', 'Morocco', 'Africa', 'Northern Africa', 446550.00, 1956, 28351000, 69.1, 36124.00, 33514.00, 'Al-Maghrib', 'Constitutional Monarchy', 'Mohammed VI', 2486, 'MA'),
('MCO', 'Monaco', 'Europe', 'Western Europe', 1.50, 1861, 34000, 78.8, 776.00, NULL, 'Monaco', 'Constitutional Monarchy', 'Rainier III', 2695, 'MC'),
('MDA', 'Moldova', 'Europe', 'Eastern Europe', 33851.00, 1991, 4380000, 64.5, 1579.00, 1872.00, 'Moldova', 'Republic', 'Vladimir Voronin', 2690, 'MD'),
('MDG', 'Madagascar', 'Africa', 'Eastern Africa', 587041.00, 1960, 15942000, 55.0, 3750.00, 3545.00, 'Madagasikara/Madagascar', 'Federal Republic', 'Didier Ratsiraka', 2455, 'MG'),
('MDV', 'Maldives', 'Asia', 'Southern and Central Asia', 298.00, 1965, 286000, 62.2, 199.00, NULL, 'Dhivehi Raajje/Maldives', 'Republic', 'Maumoon Abdul Gayoom', 2463, 'MV'),
('MEX', 'Mexico', 'North America', 'Central America', 1958201.00, 1810, 98881000, 71.5, 414972.00, 401461.00, 'México', 'Federal Republic', 'Vicente Fox Quesada', 2515, 'MX'),
('MHL', 'Marshall Islands', 'Oceania', 'Micronesia', 181.00, 1990, 64000, 65.5, 97.00, NULL, 'Marshall Islands/Majol', 'Republic', 'Kessai Note', 2507, 'MH'),
('MKD', 'Macedonia', 'Europe', 'Southern Europe', 25713.00, 1991, 2024000, 73.8, 1694.00, 1915.00, 'Makedonija', 'Republic', 'Boris Trajkovski', 2460, 'MK'),
('MLI', 'Mali', 'Africa', 'Western Africa', 1240192.00, 1960, 11234000, 46.7, 2642.00, 2453.00, 'Mali', 'Republic', 'Alpha Oumar Konaré', 2482, 'ML'),
('MLT', 'Malta', 'Europe', 'Southern Europe', 316.00, 1964, 380200, 77.9, 3512.00, 3338.00, 'Malta', 'Republic', 'Guido de Marco', 2484, 'MT'),
('MMR', 'Myanmar', 'Asia', 'Southeast Asia', 676578.00, 1948, 45611000, 54.9, 180375.00, 171028.00, 'Myanma Pye', 'Republic', 'kenraali Than Shwe', 2710, 'MM'),
('MNG', 'Mongolia', 'Asia', 'Eastern Asia', 1566500.00, 1921, 2662000, 67.3, 1043.00, 933.00, 'Mongol Uls', 'Republic', 'Natsagiin Bagabandi', 2696, 'MN'),
('MNP', 'Northern Mariana Islands', 'Oceania', 'Micronesia', 464.00, NULL, 78000, 75.5, 0.00, NULL, 'Northern Mariana Islands', 'Commonwealth of the US', 'George W. Bush', 2913, 'MP'),
('MOZ', 'Mozambique', 'Africa', 'Eastern Africa', 801590.00, 1975, 19680000, 37.5, 2891.00, 2711.00, 'Moçambique', 'Republic', 'Joaquím A. Chissano', 2698, 'MZ'),
('MRT', 'Mauritania', 'Africa', 'Western Africa', 1025520.00, 1960, 2670000, 50.8, 998.00, 1081.00, 'Muritaniya/Mauritanie', 'Republic', 'Maaouiya Ould Sid´Ahmad Taya', 2509, 'MR'),
('MSR', 'Montserrat', 'North America', 'Caribbean', 102.00, NULL, 11000, 78.0, 109.00, NULL, 'Montserrat', 'Dependent Territory of the UK', 'Elisabeth II', 2697, 'MS'),
('MTQ', 'Martinique', 'North America', 'Caribbean', 1102.00, NULL, 395000, 78.3, 2731.00, 2559.00, 'Martinique', 'Overseas Department of France', 'Jacques Chirac', 2508, 'MQ'),
('MUS', 'Mauritius', 'Africa', 'Eastern Africa', 2040.00, 1968, 1158000, 71.0, 4251.00, 4186.00, 'Mauritius', 'Republic', 'Cassam Uteem', 2511, 'MU'),
('MWI', 'Malawi', 'Africa', 'Eastern Africa', 118484.00, 1964, 10925000, 37.6, 1687.00, 2527.00, 'Malawi', 'Republic', 'Bakili Muluzi', 2462, 'MW'),
('MYS', 'Malaysia', 'Asia', 'Southeast Asia', 329758.00, 1957, 22244000, 70.8, 69213.00, 97884.00, 'Malaysia', 'Constitutional Monarchy, Federation', 'Salahuddin Abdul Aziz Shah Alhaj', 2464, 'MY'),
('MYT', 'Mayotte', 'Africa', 'Eastern Africa', 373.00, NULL, 149000, 59.5, 0.00, NULL, 'Mayotte', 'Territorial Collectivity of France', 'Jacques Chirac', 2514, 'YT'),
('NAM', 'Namibia', 'Africa', 'Southern Africa', 824292.00, 1990, 1726000, 42.5, 3101.00, 3384.00, 'Namibia', 'Republic', 'Sam Nujoma', 2726, 'NA'),
('NCL', 'New Caledonia', 'Oceania', 'Melanesia', 18575.00, NULL, 214000, 72.8, 3563.00, NULL, 'Nouvelle-Calédonie', 'Nonmetropolitan Territory of France', 'Jacques Chirac', 3493, 'NC'),
('NER', 'Niger', 'Africa', 'Western Africa', 1267000.00, 1960, 10730000, 41.3, 1706.00, 1580.00, 'Niger', 'Republic', 'Mamadou Tandja', 2738, 'NE'),
('NFK', 'Norfolk Island', 'Oceania', 'Australia and New Zealand', 36.00, NULL, 2000, NULL, 0.00, NULL, 'Norfolk Island', 'Territory of Australia', 'Elisabeth II', 2806, 'NF'),
('NGA', 'Nigeria', 'Africa', 'Western Africa', 923768.00, 1960, 111506000, 51.6, 65707.00, 58623.00, 'Nigeria', 'Federal Republic', 'Olusegun Obasanjo', 2754, 'NG'),
('NIC', 'Nicaragua', 'North America', 'Central America', 130000.00, 1838, 5074000, 68.7, 1988.00, 2023.00, 'Nicaragua', 'Republic', 'Arnoldo Alemán Lacayo', 2734, 'NI'),
('NIU', 'Niue', 'Oceania', 'Polynesia', 260.00, NULL, 2000, NULL, 0.00, NULL, 'Niue', 'Nonmetropolitan Territory of New Zealand', 'Elisabeth II', 2805, 'NU'),
('NLD', 'Netherlands', 'Europe', 'Western Europe', 41526.00, 1581, 15864000, 78.3, 371362.00, 360478.00, 'Nederland', 'Constitutional Monarchy', 'Beatrix', 5, 'NL'),
('NOR', 'Norway', 'Europe', 'Nordic Countries', 323877.00, 1905, 4478500, 78.7, 145895.00, 153370.00, 'Norge', 'Constitutional Monarchy', 'Harald V', 2807, 'NO'),
('NPL', 'Nepal', 'Asia', 'Southern and Central Asia', 147181.00, 1769, 23930000, 57.8, 4768.00, 4837.00, 'Nepal', 'Constitutional Monarchy', 'Gyanendra Bir Bikram', 2729, 'NP'),
('NRU', 'Nauru', 'Oceania', 'Micronesia', 21.00, 1968, 12000, 60.8, 197.00, NULL, 'Naoero/Nauru', 'Republic', 'Bernard Dowiyogo', 2728, 'NR'),
('NZL', 'New Zealand', 'Oceania', 'Australia and New Zealand', 270534.00, 1907, 3862000, 77.8, 54669.00, 64960.00, 'New Zealand/Aotearoa', 'Constitutional Monarchy', 'Elisabeth II', 3499, 'NZ'),
('OMN', 'Oman', 'Asia', 'Middle East', 309500.00, 1951, 2542000, 71.8, 16904.00, 16153.00, '´Uman', 'Monarchy (Sultanate)', 'Qabus ibn Sa´id', 2821, 'OM'),
('PAK', 'Pakistan', 'Asia', 'Southern and Central Asia', 796095.00, 1947, 156483000, 61.1, 61289.00, 58549.00, 'Pakistan', 'Republic', 'Mohammad Rafiq Tarar', 2831, 'PK'),
('PAN', 'Panama', 'North America', 'Central America', 75517.00, 1903, 2856000, 75.5, 9131.00, 8700.00, 'Panamá', 'Republic', 'Mireya Elisa Moscoso Rodríguez', 2882, 'PA'),
('PCN', 'Pitcairn', 'Oceania', 'Polynesia', 49.00, NULL, 50, NULL, 0.00, NULL, 'Pitcairn', 'Dependent Territory of the UK', 'Elisabeth II', 2912, 'PN'),
('PER', 'Peru', 'South America', 'South America', 1285216.00, 1821, 25662000, 70.0, 64140.00, 65186.00, 'Perú/Piruw', 'Republic', 'Valentin Paniagua Corazao', 2890, 'PE'),
('PHL', 'Philippines', 'Asia', 'Southeast Asia', 300000.00, 1946, 75967000, 67.5, 65107.00, 82239.00, 'Pilipinas', 'Republic', 'Gloria Macapagal-Arroyo', 766, 'PH'),
('PLW', 'Palau', 'Oceania', 'Micronesia', 459.00, 1994, 19000, 68.6, 105.00, NULL, 'Belau/Palau', 'Republic', 'Kuniwo Nakamura', 2881, 'PW'),
('PNG', 'Papua New Guinea', 'Oceania', 'Melanesia', 462840.00, 1975, 4807000, 63.1, 4988.00, 6328.00, 'Papua New Guinea/Papua Niugini', 'Constitutional Monarchy', 'Elisabeth II', 2884, 'PG'),
('POL', 'Poland', 'Europe', 'Eastern Europe', 323250.00, 1918, 38653600, 73.2, 151697.00, 135636.00, 'Polska', 'Republic', 'Aleksander Kwasniewski', 2928, 'PL'),
('PRI', 'Puerto Rico', 'North America', 'Caribbean', 8875.00, NULL, 3869000, 75.6, 34100.00, 32100.00, 'Puerto Rico', 'Commonwealth of the US', 'George W. Bush', 2919, 'PR'),
('PRK', 'North Korea', 'Asia', 'Eastern Asia', 120538.00, 1948, 24039000, 70.7, 5332.00, NULL, 'Choson Minjujuui In´min Konghwaguk (Bukhan)', 'Socialistic Republic', 'Kim Jong-il', 2318, 'KP'),
('PRT', 'Portugal', 'Europe', 'Southern Europe', 91982.00, 1143, 9997600, 75.8, 105954.00, 102133.00, 'Portugal', 'Republic', 'Jorge Sampãio', 2914, 'PT'),
('PRY', 'Paraguay', 'South America', 'South America', 406752.00, 1811, 5496000, 73.7, 8444.00, 9555.00, 'Paraguay', 'Republic', 'Luis Ángel González Macchi', 2885, 'PY'),
('PSE', 'Palestine', 'Asia', 'Middle East', 6257.00, NULL, 3101000, 71.4, 4173.00, NULL, 'Filastin', 'Autonomous Area', 'Yasser (Yasir) Arafat', 4074, 'PS'),
('PYF', 'French Polynesia', 'Oceania', 'Polynesia', 4000.00, NULL, 235000, 74.8, 818.00, 781.00, 'Polynésie française', 'Nonmetropolitan Territory of France', 'Jacques Chirac', 3016, 'PF'),
('QAT', 'Qatar', 'Asia', 'Middle East', 11000.00, 1971, 599000, 72.4, 9472.00, 8920.00, 'Qatar', 'Monarchy', 'Hamad ibn Khalifa al-Thani', 2973, 'QA'),
('REU', 'Réunion', 'Africa', 'Eastern Africa', 2510.00, NULL, 699000, 72.7, 8287.00, 7988.00, 'Réunion', 'Overseas Department of France', 'Jacques Chirac', 3017, 'RE'),
('ROM', 'Romania', 'Europe', 'Eastern Europe', 238391.00, 1878, 22455500, 69.9, 38158.00, 34843.00, 'România', 'Republic', 'Ion Iliescu', 3018, 'RO'),
('RUS', 'Russian Federation', 'Europe', 'Eastern Europe', 17075400.00, 1991, 146934000, 67.2, 276608.00, 442989.00, 'Rossija', 'Federal Republic', 'Vladimir Putin', 3580, 'RU'),
('RWA', 'Rwanda', 'Africa', 'Eastern Africa', 26338.00, 1962, 7733000, 39.3, 2036.00, 1863.00, 'Rwanda/Urwanda', 'Republic', 'Paul Kagame', 3047, 'RW'),
('SAU', 'Saudi Arabia', 'Asia', 'Middle East', 2149690.00, 1932, 21607000, 67.8, 137635.00, 146171.00, 'Al-´Arabiya as-Sa´udiya', 'Monarchy', 'Fahd ibn Abdul-Aziz al-Sa´ud', 3173, 'SA'),
('SDN', 'Sudan', 'Africa', 'Northern Africa', 2505813.00, 1956, 29490000, 56.6, 10162.00, NULL, 'As-Sudan', 'Islamic Republic', 'Omar Hassan Ahmad al-Bashir', 3225, 'SD'),
('SEN', 'Senegal', 'Africa', 'Western Africa', 196722.00, 1960, 9481000, 62.2, 4787.00, 4542.00, 'Sénégal/Sounougal', 'Republic', 'Abdoulaye Wade', 3198, 'SN'),
('SGP', 'Singapore', 'Asia', 'Southeast Asia', 618.00, 1965, 3567000, 80.1, 86503.00, 96318.00, 'Singapore/Singapura/Xinjiapo/Singapur', 'Republic', 'Sellapan Rama Nathan', 3208, 'SG'),
('SGS', 'South Georgia and the South Sandwich Islands', 'Antarctica', 'Antarctica', 3903.00, NULL, 0, NULL, 0.00, NULL, 'South Georgia and the South Sandwich Islands', 'Dependent Territory of the UK', 'Elisabeth II', NULL, 'GS'),
('SHN', 'Saint Helena', 'Africa', 'Western Africa', 314.00, NULL, 6000, 76.8, 0.00, NULL, 'Saint Helena', 'Dependent Territory of the UK', 'Elisabeth II', 3063, 'SH'),
('SJM', 'Svalbard and Jan Mayen', 'Europe', 'Nordic Countries', 62422.00, NULL, 3200, NULL, 0.00, NULL, 'Svalbard og Jan Mayen', 'Dependent Territory of Norway', 'Harald V', 938, 'SJ'),
('SLB', 'Solomon Islands', 'Oceania', 'Melanesia', 28896.00, 1978, 444000, 71.3, 182.00, 220.00, 'Solomon Islands', 'Constitutional Monarchy', 'Elisabeth II', 3161, 'SB'),
('SLE', 'Sierra Leone', 'Africa', 'Western Africa', 71740.00, 1961, 4854000, 45.3, 746.00, 858.00, 'Sierra Leone', 'Republic', 'Ahmed Tejan Kabbah', 3207, 'SL'),
('SLV', 'El Salvador', 'North America', 'Central America', 21041.00, 1841, 6276000, 69.7, 11863.00, 11203.00, 'El Salvador', 'Republic', 'Francisco Guillermo Flores Pérez', 645, 'SV'),
('SMR', 'San Marino', 'Europe', 'Southern Europe', 61.00, 885, 27000, 81.1, 510.00, NULL, 'San Marino', 'Republic', NULL, 3171, 'SM'),
('SOM', 'Somalia', 'Africa', 'Eastern Africa', 637657.00, 1960, 10097000, 46.2, 935.00, NULL, 'Soomaaliya', 'Republic', 'Abdiqassim Salad Hassan', 3214, 'SO'),
('SPM', 'Saint Pierre and Miquelon', 'North America', 'North America', 242.00, NULL, 7000, 77.6, 0.00, NULL, 'Saint-Pierre-et-Miquelon', 'Territorial Collectivity of France', 'Jacques Chirac', 3067, 'PM'),
('STP', 'Sao Tome and Principe', 'Africa', 'Central Africa', 964.00, 1975, 147000, 65.3, 6.00, NULL, 'São Tomé e Príncipe', 'Republic', 'Miguel Trovoada', 3172, 'ST'),
('SUR', 'Suriname', 'South America', 'South America', 163265.00, 1975, 417000, 71.4, 870.00, 706.00, 'Suriname', 'Republic', 'Ronald Venetiaan', 3243, 'SR'),
('SVK', 'Slovakia', 'Europe', 'Eastern Europe', 49012.00, 1993, 5398700, 73.7, 20594.00, 19452.00, 'Slovensko', 'Republic', 'Rudolf Schuster', 3209, 'SK'),
('SVN', 'Slovenia', 'Europe', 'Southern Europe', 20256.00, 1991, 1987800, 74.9, 19756.00, 18202.00, 'Slovenija', 'Republic', 'Milan Kucan', 3212, 'SI'),
('SWE', 'Sweden', 'Europe', 'Nordic Countries', 449964.00, 836, 8861400, 79.6, 226492.00, 227757.00, 'Sverige', 'Constitutional Monarchy', 'Carl XVI Gustaf', 3048, 'SE'),
('SWZ', 'Swaziland', 'Africa', 'Southern Africa', 17364.00, 1968, 1008000, 40.4, 1206.00, 1312.00, 'kaNgwane', 'Monarchy', 'Mswati III', 3244, 'SZ'),
('SYC', 'Seychelles', 'Africa', 'Eastern Africa', 455.00, 1976, 77000, 70.4, 536.00, 539.00, 'Sesel/Seychelles', 'Republic', 'France-Albert René', 3206, 'SC'),
('SYR', 'Syria', 'Asia', 'Middle East', 185180.00, 1941, 16125000, 68.5, 65984.00, 64926.00, 'Suriya', 'Republic', 'Bashar al-Assad', 3250, 'SY'),
('TCA', 'Turks and Caicos Islands', 'North America', 'Caribbean', 430.00, NULL, 17000, 73.3, 96.00, NULL, 'The Turks and Caicos Islands', 'Dependent Territory of the UK', 'Elisabeth II', 3423, 'TC'),
('TCD', 'Chad', 'Africa', 'Central Africa', 1284000.00, 1960, 7651000, 50.5, 1208.00, 1102.00, 'Tchad/Tshad', 'Republic', 'Idriss Déby', 3337, 'TD'),
('TGO', 'Togo', 'Africa', 'Western Africa', 56785.00, 1960, 4629000, 54.7, 1449.00, 1400.00, 'Togo', 'Republic', 'Gnassingbé Eyadéma', 3332, 'TG'),
('THA', 'Thailand', 'Asia', 'Southeast Asia', 513115.00, 1350, 61399000, 68.6, 116416.00, 153907.00, 'Prathet Thai', 'Constitutional Monarchy', 'Bhumibol Adulyadej', 3320, 'TH'),
('TJK', 'Tajikistan', 'Asia', 'Southern and Central Asia', 143100.00, 1991, 6188000, 64.1, 1990.00, 1056.00, 'Toçikiston', 'Republic', 'Emomali Rahmonov', 3261, 'TJ'),
('TKL', 'Tokelau', 'Oceania', 'Polynesia', 12.00, NULL, 2000, NULL, 0.00, NULL, 'Tokelau', 'Nonmetropolitan Territory of New Zealand', 'Elisabeth II', 3333, 'TK'),
('TKM', 'Turkmenistan', 'Asia', 'Southern and Central Asia', 488100.00, 1991, 4459000, 60.9, 4397.00, 2000.00, 'Türkmenostan', 'Republic', 'Saparmurad Nijazov', 3419, 'TM'),
('TMP', 'East Timor', 'Asia', 'Southeast Asia', 14874.00, NULL, 885000, 46.0, 0.00, NULL, 'Timor Timur', 'Administrated by the UN', 'José Alexandre Gusmão', 1522, 'TP'),
('TON', 'Tonga', 'Oceania', 'Polynesia', 650.00, 1970, 99000, 67.9, 146.00, 170.00, 'Tonga', 'Monarchy', 'Taufa''ahau Tupou IV', 3334, 'TO'),
('TTO', 'Trinidad and Tobago', 'North America', 'Caribbean', 5130.00, 1962, 1295000, 68.0, 6232.00, 5867.00, 'Trinidad and Tobago', 'Republic', 'Arthur N. R. Robinson', 3336, 'TT'),
('TUN', 'Tunisia', 'Africa', 'Northern Africa', 163610.00, 1956, 9586000, 73.7, 20026.00, 18898.00, 'Tunis/Tunisie', 'Republic', 'Zine al-Abidine Ben Ali', 3349, 'TN'),
('TUR', 'Turkey', 'Asia', 'Middle East', 774815.00, 1923, 66591000, 71.0, 210721.00, 189122.00, 'Türkiye', 'Republic', 'Ahmet Necdet Sezer', 3358, 'TR'),
('TUV', 'Tuvalu', 'Oceania', 'Polynesia', 26.00, 1978, 12000, 66.3, 6.00, NULL, 'Tuvalu', 'Constitutional Monarchy', 'Elisabeth II', 3424, 'TV'),
('TWN', 'Taiwan', 'Asia', 'Eastern Asia', 36188.00, 1945, 22256000, 76.4, 256254.00, 263451.00, 'T’ai-wan', 'Republic', 'Chen Shui-bian', 3263, 'TW'),
('TZA', 'Tanzania', 'Africa', 'Eastern Africa', 883749.00, 1961, 33517000, 52.3, 8005.00, 7388.00, 'Tanzania', 'Republic', 'Benjamin William Mkapa', 3306, 'TZ'),
('UGA', 'Uganda', 'Africa', 'Eastern Africa', 241038.00, 1962, 21778000, 42.9, 6313.00, 6887.00, 'Uganda', 'Republic', 'Yoweri Museveni', 3425, 'UG'),
('UKR', 'Ukraine', 'Europe', 'Eastern Europe', 603700.00, 1991, 50456000, 66.0, 42168.00, 49677.00, 'Ukrajina', 'Republic', 'Leonid Kutšma', 3426, 'UA'),
('UMI', 'United States Minor Outlying Islands', 'Oceania', 'Micronesia/Caribbean', 16.00, NULL, 0, NULL, 0.00, NULL, 'United States Minor Outlying Islands', 'Dependent Territory of the US', 'George W. Bush', NULL, 'UM'),
('URY', 'Uruguay', 'South America', 'South America', 175016.00, 1828, 3337000, 75.2, 20831.00, 19967.00, 'Uruguay', 'Republic', 'Jorge Batlle Ibáñez', 3492, 'UY'),
('USA', 'United States', 'North America', 'North America', 9363520.00, 1776, 278357000, 77.1, 8510700.00, 8110900.00, 'United States', 'Federal Republic', 'George W. Bush', 3813, 'US'),
('UZB', 'Uzbekistan', 'Asia', 'Southern and Central Asia', 447400.00, 1991, 24318000, 63.7, 14194.00, 21300.00, 'Uzbekiston', 'Republic', 'Islam Karimov', 3503, 'UZ'),
('VAT', 'Holy See (Vatican City State)', 'Europe', 'Southern Europe', 0.40, 1929, 1000, NULL, 9.00, NULL, 'Santa Sede/Città del Vaticano', 'Independent Church State', 'Johannes Paavali II', 3538, 'VA'),
('VCT', 'Saint Vincent and the Grenadines', 'North America', 'Caribbean', 388.00, 1979, 114000, 72.3, 285.00, NULL, 'Saint Vincent and the Grenadines', 'Constitutional Monarchy', 'Elisabeth II', 3066, 'VC'),
('VEN', 'Venezuela', 'South America', 'South America', 912050.00, 1811, 24170000, 73.1, 95023.00, 88434.00, 'Venezuela', 'Federal Republic', 'Hugo Chávez Frías', 3539, 'VE'),
('VGB', 'Virgin Islands, British', 'North America', 'Caribbean', 151.00, NULL, 21000, 75.4, 612.00, 573.00, 'British Virgin Islands', 'Dependent Territory of the UK', 'Elisabeth II', 537, 'VG'),
('VIR', 'Virgin Islands, U.S.', 'North America', 'Caribbean', 347.00, NULL, 93000, 78.1, 0.00, NULL, 'Virgin Islands of the United States', 'US Territory', 'George W. Bush', 4067, 'VI'),
('VNM', 'Vietnam', 'Asia', 'Southeast Asia', 331689.00, 1945, 79832000, 69.3, 21929.00, 22834.00, 'Viêt Nam', 'Socialistic Republic', 'Trân Duc Luong', 3770, 'VN'),
('VUT', 'Vanuatu', 'Oceania', 'Melanesia', 12189.00, 1980, 190000, 60.6, 261.00, 246.00, 'Vanuatu', 'Republic', 'John Bani', 3537, 'VU'),
('WLF', 'Wallis and Futuna', 'Oceania', 'Polynesia', 200.00, NULL, 15000, NULL, 0.00, NULL, 'Wallis-et-Futuna', 'Nonmetropolitan Territory of France', 'Jacques Chirac', 3536, 'WF'),
('WSM', 'Samoa', 'Oceania', 'Polynesia', 2831.00, 1962, 180000, 69.2, 141.00, 157.00, 'Samoa', 'Parlementary Monarchy', 'Malietoa Tanumafili II', 3169, 'WS'),
('YEM', 'Yemen', 'Asia', 'Middle East', 527968.00, 1918, 18112000, 59.8, 6041.00, 5729.00, 'Al-Yaman', 'Republic', 'Ali Abdallah Salih', 1780, 'YE'),
('YUG', 'Yugoslavia', 'Europe', 'Southern Europe', 102173.00, 1918, 10640000, 72.4, 17000.00, NULL, 'Jugoslavija', 'Federal Republic', 'Vojislav Koštunica', 1792, 'YU'),
('ZAF', 'South Africa', 'Africa', 'Southern Africa', 1221037.00, 1910, 40377000, 51.1, 116729.00, 129092.00, 'South Africa', 'Republic', 'Thabo Mbeki', 716, 'ZA'),
('ZMB', 'Zambia', 'Africa', 'Eastern Africa', 752618.00, 1964, 9169000, 37.2, 3377.00, 3922.00, 'Zambia', 'Republic', 'Frederick Chiluba', 3162, 'ZM'),
('ZWE', 'Zimbabwe', 'Africa', 'Eastern Africa', 390757.00, 1980, 11669000, 37.8, 5951.00, 8670.00, 'Zimbabwe', 'Republic', 'Robert G. Mugabe', 4068, 'ZW');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_courses`
--

CREATE TABLE IF NOT EXISTS `tbl_courses` (
  `id` int(90) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `teacherId` varchar(500) NOT NULL,
  `classId` varchar(20) NOT NULL,
  `year` varchar(20) NOT NULL,
  `term` varchar(20) NOT NULL,
  `code` varchar(20) NOT NULL,
  `inputeddate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`,`teacherId`,`classId`,`year`,`term`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `tbl_courses`
--

INSERT INTO `tbl_courses` (`id`, `name`, `teacherId`, `classId`, `year`, `term`, `code`, `inputeddate`) VALUES
(3, 'Computer', 'AGM201558', 'BASIC 6', '2014/2015', '1', '', '2015-07-23 20:57:58'),
(4, 'R.M.E', 'AGM20155', 'BASIC 6', '2014/2015', '1', '', '2015-07-16 04:22:04'),
(5, 'Christian Religious Studies (CRS)', 'HCS003', 'BASIC 6', '', '', '', '2015-07-16 04:22:04'),
(6, 'Computer', 'HCS001', 'BASIC 2', '', '', '', '2015-07-16 04:22:04'),
(7, 'Computer', 'AGM20155', '2H2', '', '', '', '2015-07-16 04:22:04'),
(8, 'Computer', 'HCS001', '1S1', '', '', '', '2015-07-16 04:22:04'),
(9, 'Government', 'HCS003', 'BASIC 6', '', '', '', '2015-07-16 04:22:04'),
(10, 'Government', 'HCS003', '2H3', '', '', '', '2015-07-16 04:22:04'),
(11, 'Government', 'HCS003', '1H2', '', '', '', '2015-07-16 04:22:04'),
(12, 'Mathematics', 'HCS004', '2H1', '', '', '', '2015-07-16 04:22:04'),
(13, 'Mathematics', 'HCS004', '2S1', '', '', '', '2015-07-16 04:22:04'),
(14, 'Mathematics', 'HCS004', '3C2', '', '', '', '2015-07-16 04:22:04'),
(15, 'Physics', 'HCS005', '3S1', '', '', '', '2015-07-16 04:22:04'),
(16, 'Physics', 'HCS005', '3S2', '', '', '', '2015-07-16 04:22:04'),
(17, 'Intergrated Science', 'HCS005', '2C1', '', '', '', '2015-07-16 04:22:04'),
(18, 'Intergrated Science', 'HCS005', '2C2', '', '', '', '2015-07-16 04:22:04'),
(19, 'Intergrated Science', 'HCS005', '2H1', '', '', '', '2015-07-16 04:22:04'),
(20, 'Intergrated Science', 'HCS005', '2H2', '', '', '', '2015-07-16 04:22:04'),
(21, 'Intergrated Science', 'HCS005', '2H3', '', '', '', '2015-07-16 04:22:04'),
(22, 'Intergrated Science', 'HCS005', '2S1', '', '', '', '2015-07-16 04:22:04'),
(23, 'Intergrated Science', 'HCS005', '2S2', '', '', '', '2015-07-16 04:22:04'),
(24, 'Computer', 'HCS001', '1C2', '', '', '', '2015-07-16 04:22:04'),
(25, 'Computer', 'HCS001', '1H1', '', '', '', '2015-07-16 04:22:04'),
(26, 'Computer', 'HCS001', '1H2', '', '', '', '2015-07-16 04:22:04'),
(27, 'Computer', 'HCS001', '1H3', '', '', '', '2015-07-16 04:22:04'),
(28, 'Computer', 'HCS001', '1S2', '', '', '', '2015-07-16 04:22:04'),
(29, 'Economics', 'HCS003', '1C1', '', '', '', '2015-07-16 04:22:04'),
(30, 'Financial Accounting', 'HCS003', '1C1', '', '', '', '2015-07-16 04:22:04'),
(31, 'Intergrated Science', 'HCS003', '1C1', '', '', '', '2015-07-16 04:22:04'),
(35, 'R.M.E', 'AGM20153', 'BASIC 6', '2014/2015', '1', '', '2015-07-16 04:22:04'),
(36, 'Government', 'AGM20153', 'BASIC 6', '2014/2015', '1', '', '2015-07-16 04:22:04');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_designation`
--

CREATE TABLE IF NOT EXISTS `tbl_designation` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `designation` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `tbl_designation`
--

INSERT INTO `tbl_designation` (`id`, `designation`) VALUES
(1, 'Conservancr'),
(2, 'Porters'),
(3, 'Artisans'),
(4, 'Head Teacher'),
(5, 'Bursar'),
(7, 'Administrator'),
(8, 'Messenger'),
(9, 'Teacher'),
(10, 'Clerk');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_fee_ledger`
--

CREATE TABLE IF NOT EXISTS `tbl_fee_ledger` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RECEIPT` int(11) NOT NULL,
  `CLASS` varchar(11) NOT NULL,
  `STUDENT` varchar(50) DEFAULT NULL,
  `FEE_TYPE` varchar(50) DEFAULT NULL,
  `AMOUNT` decimal(2,0) DEFAULT NULL,
  `DESCRIPTION` varchar(100) DEFAULT NULL,
  `CHEQUE_NO` varchar(32) NOT NULL,
  `TERM` int(11) DEFAULT NULL,
  `YEAR` varchar(20) DEFAULT NULL,
  `RECEIVED_BY` int(11) NOT NULL,
  `NULLIFIER` double NOT NULL,
  `VIEW` int(11) NOT NULL DEFAULT '1' COMMENT '1 means visible,0 means invisble',
  `INPUTEDDATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `tbl_fee_ledger`
--

INSERT INTO `tbl_fee_ledger` (`ID`, `RECEIPT`, `CLASS`, `STUDENT`, `FEE_TYPE`, `AMOUNT`, `DESCRIPTION`, `CHEQUE_NO`, `TERM`, `YEAR`, `RECEIVED_BY`, `NULLIFIER`, `VIEW`, `INPUTEDDATE`) VALUES
(1, 100, 'BASIC 6', '4', 'Academic', -10, 'Fees Payment', 'DSDSD', 1, '2014/2015', 13423, 0, 0, '2015-08-22 14:58:23'),
(2, 100, 'BASIC 6', '4', 'Academic', 16, 'Fees Payment', 'JJJ', 1, '2014/2015', 13423, 10, 1, '2015-08-22 15:14:29'),
(3, 100, 'BASIC 6', '4', 'Academic', 46, 'Fees Payment', 'HV', 1, '2014/2015', 13423, 0, 1, '2015-08-22 14:25:02'),
(4, 100, 'BASIC 6', '4', 'Academic', -20, 'Fees Payment', 'dsd', 1, '2014/2015', 13423, 0, 1, '2015-08-22 14:25:02'),
(5, 100, 'BASIC 6', '4', 'Academic', -4, 'Fees Payment', 'jdsjd22', 1, '2014/2015', 13423, 0, 1, '2015-08-22 14:25:02'),
(6, 100, 'BASIC 6', '4', 'PTA', 56, 'Fees Payment', 'hjhjhj', 1, '2014/2015', 13423, 0, 1, '2015-08-22 14:25:02'),
(7, 100, 'BASIC 6', '', 'PTA', 93, 'Fees Payment', 'djskd', 1, '2014/2015', 13423, 0, 1, '2015-08-22 14:25:02'),
(8, 100, 'BASIC 6', '', 'PTA', 99, 'Fees Payment', 'dsdsd', 1, '2014/2015', 13423, 0, 1, '2015-08-22 14:25:02'),
(9, 100, 'BASIC 6', '', 'PTA', 99, 'Fees Payment', 'dsdsd', 1, '2014/2015', 13423, 0, 1, '2015-08-22 14:25:02'),
(10, 100, 'BASIC 6', '4', 'PTA', 56, 'Fees Payment', '3i300333', 1, '2014/2015', 13423, 0, 1, '2015-08-22 14:25:02'),
(11, 100, 'BASIC 6', '', 'Academic', 99, 'Fees Payment', 'sdjskd', 1, '2014/2015', 13423, 0, 1, '2015-08-22 14:25:02'),
(12, 100, 'BASIC 6', '', 'Academic', 99, 'Fees Payment', 'sdjskd', 1, '2014/2015', 13423, 0, 1, '2015-08-22 14:25:02'),
(13, 100, 'BASIC 6', '', 'Academic', 99, 'Fees Payment', 'sdjskd', 1, '2014/2015', 13423, 0, 1, '2015-08-22 14:25:02'),
(14, 100, 'BASIC 6', '', 'Academic', 99, 'Fees Payment', 'sdjskd', 1, '2014/2015', 13423, 0, 1, '2015-08-22 14:25:02'),
(15, 100, 'BASIC 6', '', 'Academic', 99, 'Fees Payment', 'sdjskd', 1, '2014/2015', 13423, 0, 1, '2015-08-22 14:25:02'),
(16, 101, 'BASIC 6', '', 'PTA', 99, 'Fees Payment', '339339', 1, '2014/2015', 13423, 0, 1, '2015-08-22 14:25:02'),
(17, 102, 'BASIC 6', '', 'Academic', 99, 'Fees Payment', 'd338383', 1, '2014/2015', 13423, 0, 1, '2015-08-22 14:25:02'),
(18, 103, 'BASIC 5', '', 'Academic', 88, 'Fees Payment', '8989', 1, '2014/2015', 13423, 0, 1, '2015-08-22 14:25:02');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gradedefinition`
--

CREATE TABLE IF NOT EXISTS `tbl_gradedefinition` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `grade` varchar(10) NOT NULL,
  `lower` decimal(4,1) NOT NULL,
  `upper` decimal(4,1) NOT NULL,
  `valu` int(9) NOT NULL,
  `comment` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `tbl_gradedefinition`
--

INSERT INTO `tbl_gradedefinition` (`id`, `grade`, `lower`, `upper`, `valu`, `comment`) VALUES
(1, 'A1', 81.0, 100.0, 1, 'Excellent'),
(2, 'B2', 71.0, 80.9, 2, 'Very Good'),
(3, 'B3', 66.0, 70.9, 3, 'Good'),
(4, 'C4', 61.0, 65.9, 4, 'Credit'),
(5, 'C5', 56.0, 60.9, 4, 'Credit'),
(6, 'C6', 51.0, 55.9, 4, 'Credit'),
(7, 'D7', 46.0, 50.9, 5, 'Pass'),
(8, 'E8', 40.0, 45.9, 5, 'Weak Pass'),
(9, 'F9', 0.0, 39.9, 6, 'Fail');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_grades`
--

CREATE TABLE IF NOT EXISTS `tbl_grades` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `courseId` varchar(20) NOT NULL,
  `stuId` varchar(200) NOT NULL,
  `quiz1` varchar(5) NOT NULL,
  `quiz2` varchar(5) NOT NULL,
  `quiz3` varchar(5) NOT NULL,
  `quiz4` varchar(5) NOT NULL,
  `exam` varchar(5) NOT NULL,
  `total` decimal(4,1) NOT NULL,
  `grade` varchar(10) NOT NULL,
  `comments` varchar(500) NOT NULL,
  `year` varchar(20) NOT NULL,
  `term` varchar(20) NOT NULL,
  `posInSubject` varchar(9) NOT NULL,
  `class` varchar(20) NOT NULL,
  `inputeddate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='handes grADING' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_grades`
--

INSERT INTO `tbl_grades` (`id`, `courseId`, `stuId`, `quiz1`, `quiz2`, `quiz3`, `quiz4`, `exam`, `total`, `grade`, `comments`, `year`, `term`, `posInSubject`, `class`, `inputeddate`) VALUES
(1, '4', 'AGM2015115', '10.00', '10.00', '10.00', '', '100.0', 79.0, 'B2', 'Very Good', '2014/2015', '1', '1/2', 'BASIC 6', '2015-07-16 14:34:31'),
(2, '4', 'AGM2015120', '1.00', '1.00', '1.00', '', '100.0', 70.9, 'B3', 'Good', '2014/2015', '1', '1/1', 'BASIC 6', '2015-07-23 23:39:40');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gradesguide`
--

CREATE TABLE IF NOT EXISTS `tbl_gradesguide` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `year` varchar(2000) NOT NULL,
  `term` int(11) NOT NULL,
  `course` varchar(200) NOT NULL,
  `class` varchar(200) NOT NULL,
  `quiz1` varchar(20) NOT NULL,
  `quiz2` varchar(20) NOT NULL,
  `quiz3` varchar(20) NOT NULL,
  `quiz4` varchar(20) NOT NULL,
  `inputeddate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `term` (`term`,`course`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='contains quizes setup for each class and term in a year' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_gradesguide`
--

INSERT INTO `tbl_gradesguide` (`id`, `year`, `term`, `course`, `class`, `quiz1`, `quiz2`, `quiz3`, `quiz4`, `inputeddate`) VALUES
(1, '2014/2015', 1, 'R.M.E', 'BASIC 6', '10', '10', '10', '', '2015-07-16 14:34:31');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_grade_scheme`
--

CREATE TABLE IF NOT EXISTS `tbl_grade_scheme` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `COMMENT` varchar(90) DEFAULT NULL,
  `LOWER` double DEFAULT NULL,
  `UPPER` double DEFAULT NULL,
  `VALUE` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Grades are picked from here' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_grade_scheme`
--

INSERT INTO `tbl_grade_scheme` (`ID`, `COMMENT`, `LOWER`, `UPPER`, `VALUE`) VALUES
(1, 'Excellent', 75, 100, 1),
(2, 'Very Good', 70, 74, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_house`
--

CREATE TABLE IF NOT EXISTS `tbl_house` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `house` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `tbl_house`
--

INSERT INTO `tbl_house` (`id`, `house`) VALUES
(1, 'St. Theresa''s'),
(2, 'St. Agnes'''),
(3, 'St. Ann''s'),
(4, 'St. Joseph''s'),
(5, 'St. Maria''s'),
(6, 'St.Catherine''s'),
(7, 'Our Lady''s'),
(8, 'Arch Bishop Amissah''s'),
(9, 'ST.  CORNELIAS''');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mails`
--

CREATE TABLE IF NOT EXISTS `tbl_mails` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) DEFAULT NULL,
  `MAIL` text,
  `FROM` int(11) DEFAULT NULL,
  `SUBJECT` varchar(300) DEFAULT NULL,
  `CARBON_COPY` varchar(300) DEFAULT NULL,
  `REPLY` int(11) DEFAULT NULL,
  `FORWARDED` int(11) DEFAULT NULL,
  `READ_` int(11) DEFAULT NULL COMMENT '1 means read . 0 means new',
  `INPUTEDDATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_mails`
--

INSERT INTO `tbl_mails` (`ID`, `USER_ID`, `MAIL`, `FROM`, `SUBJECT`, `CARBON_COPY`, `REPLY`, `FORWARDED`, `READ_`, `INPUTEDDATE`) VALUES
(1, 13412, 'The system is designed using PHP as the programming language and MySQL as a relational database support. The system runs on Apache Server and PHP version not lower than 5.1.3 and MySQL 5.1.2. The system was designed on the tenants of Object Oriented Software Design and other advanced data structures. Please talk about the following', 13412, 'Staff Meeting today', NULL, NULL, NULL, 0, '2015-05-23 20:38:02'),
(2, 13412, 'Gp', 13412, 'sdsdsdsd', NULL, NULL, NULL, 0, '2015-05-23 20:43:06');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menu`
--

CREATE TABLE IF NOT EXISTS `tbl_menu` (
  `id` int(20) NOT NULL,
  `name` varchar(900) NOT NULL,
  `link` varchar(900) NOT NULL,
  `icon` varchar(900) NOT NULL,
  `target` varchar(90) NOT NULL,
  `position` int(2) NOT NULL,
  `parentid` int(50) NOT NULL,
  `type` int(11) NOT NULL COMMENT 'whether a module or just a menu',
  `order_` int(11) NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_menu`
--

INSERT INTO `tbl_menu` (`id`, `name`, `link`, `icon`, `target`, `position`, `parentid`, `type`, `order_`) VALUES
(0, 'Assign Teachers', 'assign_teachers', '', '', 0, 4, 0, 0),
(1, 'School Administration', '', 'images/addusers.png', 'main', 0, 0, 1, 1),
(2, 'Academics Module', '', 'images/addusers.png', 'main', 1, 0, 1, 2),
(3, 'Bursaries', '', '', '', 0, 0, 0, 3),
(4, 'Staff Module', '', '', '', 0, 0, 0, 5),
(6, 'Bulk Upload and Downloads', 'images/addusers.png', 'images/addusers.png', 'main', 9, 0, 1, 6),
(8, 'User Management', '', 'images/addusers.png', 'main', 0, 0, 1, 7),
(80, 'Setup School', 'setup', '', '', 0, 1, 0, 0),
(100, 'Add Student', 'addStudent', 'images/addusers.png', 'main', 1, 1, 1, 0),
(101, 'View Students', 'students', 'images/addusers.png', 'main', 2, 1, 1, 0),
(121, 'Class List', 'class_list', '', '', 0, 2, 0, 0),
(123, 'Class Teachers', 'class_teacher', '', '', 0, 4, 0, 0),
(150, 'Prepare Reports', 'reports', '', '101', 1, 2, 0, 0),
(151, 'Backup database', 'db_backup', '', '101', 2, 6, 0, 0),
(153, 'Send Text Message to Students', 'send_student_text', '', '101', 2, 101, 0, 0),
(156, 'view students Detailed Information', 'view_stu_data', '', '101', 4, 101, 0, 0),
(204, 'Print Report card', 'terminal_report', 'images/addusers.png', 'main', 3, 2, 0, 0),
(205, 'Academic Calender', 'calender', 'images/addusers.png', 'main', 4, 2, 0, 0),
(206, 'Assessments', 'assessment', 'images/addusers.png', 'main', 5, 2, 0, 0),
(231, 'Pay Bill', 'Pay_fees', '', '', 0, 3, 0, 0),
(256, 'Assign Course Lecturer', 'assign_lecturer', '', '203', 3, 203, 0, 0),
(303, 'View Fee Payment', 'payment_records', 'images/addusers.png', 'main', 3, 3, 0, 0),
(304, 'Prepare Bill', 'prepare_bill', 'images/addusers.png', 'main', 4, 3, 0, 0),
(306, 'Print Bill', 'print_bill', 'images/addusers.png', 'main', 6, 30000, 0, 0),
(401, 'Add Worker', 'addworker', 'images/addusers.png', 'main', 1, 4, 0, 0),
(402, 'View Workers', 'viewworkers', 'images/addusers.png', 'main', 2, 4, 0, 0),
(501, 'Accounts', 'users', 'images/addusers.png', 'main', 1, 8, 0, 0),
(503, 'View Access Log', 'userlog', 'images/addusers.png', 'main', 3, 8, 0, 0),
(504, 'Logout', 'logout', 'images/addusers.png', 'main', 4, 8, 0, 0),
(601, 'Import Students Bio Data', 'bulk_upload_students', 'images/addusers.png', 'main', 2, 6, 0, 0),
(603, 'upload Assessments', 'import_ass', 'images/addusers.png', 'main', 3, 6900, 0, 0),
(909, 'Fees Ledger', 'ledger', '', '', 0, 3, 0, 4),
(910, 'Add Transactions', 'add_transaction', '', '', 0, 909, 0, 0),
(911, 'View Transactions Ledger', 'view_transaction_ledger', '', '', 0, 909, 909, 0),
(912, 'Receipts And Payment', 'receipt_payment', '', '', 0, 909, 0, 0),
(913, 'Income and Expenditure', 'income_expenditure', '', '', 0, 909, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_modules`
--

CREATE TABLE IF NOT EXISTS `tbl_modules` (
  `ID` int(20) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(20) NOT NULL,
  `MODULES` varchar(1000) NOT NULL COMMENT 'Specific areas permission has been granted',
  `INPUTEDDATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY `id` (`ID`),
  UNIQUE KEY `USER_ID` (`USER_ID`),
  UNIQUE KEY `USER_ID_2` (`USER_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Handles permission on various system modules' AUTO_INCREMENT=22 ;

--
-- Dumping data for table `tbl_modules`
--

INSERT INTO `tbl_modules` (`ID`, `USER_ID`, `MODULES`, `INPUTEDDATE`) VALUES
(21, 13423, '80,100,101,121,150,204,205,206,231,303,304,306,0,123,401,402,151,601,603,501,503,504,910,911,912,913,1,2,3,4,6,8,909', '2015-08-21 22:53:58');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_position`
--

CREATE TABLE IF NOT EXISTS `tbl_position` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `position` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `tbl_position`
--

INSERT INTO `tbl_position` (`id`, `position`) VALUES
(1, 'carpenter'),
(2, 'electrican'),
(3, 'plumber'),
(4, 'head'),
(5, 'assistant head'),
(6, 'Labourer'),
(7, 'Adm Assisstant'),
(8, 'Senior Adm Assistant'),
(9, 'Principal Adm Assistant'),
(10, 'Chief Adm Assistant'),
(11, 'Head Teacher'),
(12, 'Class Teacher');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_program`
--

CREATE TABLE IF NOT EXISTS `tbl_program` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(20) DEFAULT NULL,
  `NAME` varchar(100) DEFAULT NULL,
  `DEPARTMENT` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_program`
--

INSERT INTO `tbl_program` (`ID`, `CODE`, `NAME`, `DEPARTMENT`) VALUES
(1, 'WER', 'General Arts', 'Arts'),
(2, 'SCI', 'Science', 'Science');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_regions`
--

CREATE TABLE IF NOT EXISTS `tbl_regions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(30) DEFAULT NULL,
  `INPUTEDDATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `tbl_regions`
--

INSERT INTO `tbl_regions` (`ID`, `NAME`, `INPUTEDDATE`) VALUES
(1, 'Greater Accra', '2014-02-01 02:29:07'),
(2, 'Volta ', '2014-02-01 02:29:07'),
(3, 'Ashanti', '2014-02-01 02:29:22'),
(4, 'Upper West', '2014-02-01 02:29:22'),
(5, 'Upper East', '2014-02-01 02:29:40'),
(6, 'Brong Ahafo', '2014-02-01 02:29:40'),
(7, 'Northern', '2014-02-01 02:29:56'),
(8, 'Eastern', '2014-02-01 02:29:56'),
(9, 'Central', '2014-02-01 02:30:07'),
(10, 'Western', '2014-02-01 02:30:07');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student`
--

CREATE TABLE IF NOT EXISTS `tbl_student` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SURNAME` varchar(40) DEFAULT NULL,
  `OTHERNAMES` varchar(40) DEFAULT NULL,
  `TITLE` varchar(10) DEFAULT NULL,
  `GENDER` varchar(10) DEFAULT NULL,
  `INDEXNO` varchar(40) DEFAULT NULL,
  `DOB` varchar(20) DEFAULT NULL,
  `AGE` int(11) DEFAULT NULL,
  `STUDENT_TYPE` varchar(30) DEFAULT NULL,
  `REGION` varchar(30) DEFAULT NULL,
  `HOMETOWN` varchar(40) DEFAULT NULL,
  `NATIONALITY` varchar(30) DEFAULT NULL,
  `PHONE` varchar(10) DEFAULT NULL,
  `PREVIOUS_SCHOOL` varchar(50) DEFAULT NULL,
  `PROGRAMME` varchar(80) DEFAULT NULL,
  `HOUSE` varchar(100) NOT NULL,
  `CLASS_ADMITED` varchar(11) DEFAULT NULL,
  `RELIGION` varchar(100) DEFAULT NULL,
  `RESIDENCE_ADDRESS` varchar(80) DEFAULT NULL,
  `CONTACT_ADDRESS` varchar(80) DEFAULT NULL,
  `DISABILITY` varchar(100) NOT NULL,
  `CLASS` varchar(20) DEFAULT NULL,
  `EMAIL` text,
  `SUBJECT_COMBINATIONS` text COMMENT 'various subject combinations',
  `DATE_ADMITED` varchar(11) DEFAULT NULL,
  `IS_SCHOLARSHIP` char(4) DEFAULT NULL,
  `GUARDIAN_NAME` varchar(200) DEFAULT NULL,
  `GUARDIAN_PHONE` text NOT NULL,
  `GUARDIAN_RELATIONSHIP` varchar(90) NOT NULL,
  `GUARDIAN_ADDRESS` varchar(200) NOT NULL,
  `YEAR_GROUP` varchar(20) NOT NULL,
  `ISSUES` text NOT NULL,
  `BILLS` double NOT NULL,
  `BILLS_PAID` double NOT NULL,
  `PTA_OWING` double NOT NULL,
  `OTHER_BILLS` double NOT NULL,
  `ACADEMIC_OWING` double NOT NULL,
  `BILLS_OWING` double NOT NULL,
  `STATUS` varchar(100) NOT NULL COMMENT 'Deferred,Completed,Dead,Suspension',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `INDEXNO` (`INDEXNO`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `tbl_student`
--

INSERT INTO `tbl_student` (`ID`, `SURNAME`, `OTHERNAMES`, `TITLE`, `GENDER`, `INDEXNO`, `DOB`, `AGE`, `STUDENT_TYPE`, `REGION`, `HOMETOWN`, `NATIONALITY`, `PHONE`, `PREVIOUS_SCHOOL`, `PROGRAMME`, `HOUSE`, `CLASS_ADMITED`, `RELIGION`, `RESIDENCE_ADDRESS`, `CONTACT_ADDRESS`, `DISABILITY`, `CLASS`, `EMAIL`, `SUBJECT_COMBINATIONS`, `DATE_ADMITED`, `IS_SCHOLARSHIP`, `GUARDIAN_NAME`, `GUARDIAN_PHONE`, `GUARDIAN_RELATIONSHIP`, `GUARDIAN_ADDRESS`, `YEAR_GROUP`, `ISSUES`, `BILLS`, `BILLS_PAID`, `PTA_OWING`, `OTHER_BILLS`, `ACADEMIC_OWING`, `BILLS_OWING`, `STATUS`) VALUES
(4, 'Otuteye', 'Godstaff Kweku', NULL, 'Male', 'AGM2015115', ' 2007-03-21', NULL, 'Boarding', 'Greater Accra', 'Sege-Ada', 'Paraguay', NULL, NULL, 'Father', 'St. Ann''s', 'BASIC 2', 'Christianity', NULL, 'UC13,Cape Coast', 'Blind', 'BASIC 6', NULL, NULL, ' 2015-08-18', NULL, 'Dr Luke', '0505284060', 'Father', 'P.O.BOX 18,Ada', '2014/2015', '', 5236, 2696, 900, -37, 3920, 2540, 'Defered'),
(7, 'Otuteye', 'Grace Akowkow', NULL, 'Female', 'AGM2015125', ' 1988-05-11', NULL, 'Day', 'Greater Accra', 'Sege-Ada', 'Ghana', NULL, NULL, 'Guardian', 'St. Joseph''s', 'BASIC 1', 'Christianity', NULL, 'P.BOX.UCC 12', 'None', 'BASIC 6', NULL, NULL, ' 2015-08-18', NULL, 'Salomey Buemle', '0505284060', 'Relative', 'UC13,KNUST,Kumasi', '2015/2016', '', 4033, 88, 0, 345, 3600, 3945, ''),
(8, 'Anane', 'Joshua', NULL, 'Male', 'AGM2015131', ' 2013-02-06', NULL, 'Boarding', 'Central', 'Elmina', 'Ghana', NULL, NULL, 'Father', 'Arch Bishop Amissah''s', 'JHS 1', 'Christianity', NULL, 'P.BOX.UCC 12', 'None', 'JHS 2', NULL, NULL, ' 2015-08-19', NULL, 'Gideon Djan', '0243348522', 'Father', 'P.O.BOX 243,Elmina', '2015/2016', '', 4033, 0, 0, 433, 3600, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subjects`
--

CREATE TABLE IF NOT EXISTS `tbl_subjects` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `type` varchar(100) NOT NULL,
  `shortcode` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `tbl_subjects`
--

INSERT INTO `tbl_subjects` (`id`, `name`, `type`, `shortcode`) VALUES
(1, 'Geography', 'elective', 'Georg'),
(2, 'Economics', 'elective', 'Econs'),
(3, 'History', 'elective', 'Hist'),
(4, 'Elective Maths', 'elective', 'E-math'),
(5, 'Christian Religious Studies (CRS)', 'elective', 'CRS'),
(6, 'French', 'elective', 'Frnch'),
(7, 'Government', 'elective', 'Gvnt'),
(8, 'Financial Accounting', 'elective', 'F-Acc'),
(9, 'Cost Accounting', 'elective', 'C-Acc'),
(10, 'Business Management', 'elective', 'BM'),
(11, 'Graphic Design', 'elective', 'GD'),
(12, 'General Knowledge in Art (GKA)', 'elective', 'GKA'),
(13, 'Picture Making', 'elective', 'PM'),
(14, 'Ceramics', 'elective', 'Crmics'),
(15, 'Textiles', 'elective', 'Txtls'),
(16, 'Management in Living', 'elective', 'MinL'),
(17, 'Food and Nutrition', 'elective', 'F&N'),
(19, 'Clothing and Textiles', 'elective', 'C&T'),
(20, 'Physics', 'elective', 'Phsics'),
(21, 'Chemistry', 'elective', 'Chem'),
(22, 'Biology', 'elective', 'Bio'),
(23, 'Mathematics', 'core', 'Math'),
(24, 'Social Studies', 'core', 'SS'),
(25, 'English Language', 'core', 'Eng'),
(26, 'Intergrated Science', 'core', 'Sci'),
(27, 'Computer', 'core', 'ICT'),
(28, 'English Literature', 'elective', 'Englsh-Lit'),
(29, 'Music', 'elective', 'music'),
(30, 'Twi', 'elective', 'Twi'),
(31, 'Physical Education', 'core', 'PE'),
(32, 'Leather Work', 'elective', 'LW'),
(33, 'Sculpture', 'elective', 'sculp'),
(35, 'R.M.E', 'core', 'R.M.E'),
(36, 'Agriculture', 'core', 'Agric');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_system_log`
--

CREATE TABLE IF NOT EXISTS `tbl_system_log` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USERNAME` varchar(30) DEFAULT NULL,
  `EVENT_TYPE` varchar(50) DEFAULT NULL,
  `ACTIVITIES` varchar(300) DEFAULT NULL,
  `HOSTNAME` varchar(30) DEFAULT NULL,
  `IP` varchar(20) DEFAULT NULL,
  `BROWSER_VERSION` varchar(80) DEFAULT NULL,
  `MAC_ADDRESS` text NOT NULL,
  `SESSION_ID` text NOT NULL,
  `INPUTEDDATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=118 ;

--
-- Dumping data for table `tbl_system_log`
--

INSERT INTO `tbl_system_log` (`ID`, `USERNAME`, `EVENT_TYPE`, `ACTIVITIES`, `HOSTNAME`, `IP`, `BROWSER_VERSION`, `MAC_ADDRESS`, `SESSION_ID`, `INPUTEDDATE`) VALUES
(1, '', 'Login', 'System denied access to gad  with wrong credentials at  01/01/1970197019701970', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chro', 'A0-1D-48-6E-47-38', 'b8kbme43b92ltq6mve0kpr5pq7', '2015-07-23 22:18:07'),
(2, '', 'Login', '0', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chro', 'A0-1D-48-6E-47-38', 'b8kbme43b92ltq6mve0kpr5pq7', '2015-07-23 22:18:08'),
(3, '13416', 'Login', 'Login into the system', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chro', 'A0-1D-48-6E-47-38', 'b8kbme43b92ltq6mve0kpr5pq7', '2015-07-23 22:23:21'),
(4, '13416', 'Login', '0', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chro', 'A0-1D-48-6E-47-38', 'b8kbme43b92ltq6mve0kpr5pq7', '2015-07-23 22:49:44'),
(5, '13416', 'Login', '1', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chro', 'A0-1D-48-6E-47-38', 'b8kbme43b92ltq6mve0kpr5pq7', '2015-07-23 22:50:56'),
(6, '13416', 'System denied access to sss  with wrong credential', '', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chro', 'A0-1D-48-6E-47-38', 'b8kbme43b92ltq6mve0kpr5pq7', '2015-07-23 23:14:26'),
(7, '13416', 'Logout', ' has logout   from the system  ', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chro', 'A0-1D-48-6E-47-38', 'b8kbme43b92ltq6mve0kpr5pq7', '2015-07-23 23:14:27'),
(8, '13416', '0', '', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chro', 'A0-1D-48-6E-47-38', 'b8kbme43b92ltq6mve0kpr5pq7', '2015-07-23 23:14:27'),
(9, '', 'System denied access to gad  with wrong credential', '', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chro', 'A0-1D-48-6E-47-38', 'b8kbme43b92ltq6mve0kpr5pq7', '2015-07-23 23:15:02'),
(10, '', 'Logout', ' has logout   from the system  ', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chro', 'A0-1D-48-6E-47-38', 'b8kbme43b92ltq6mve0kpr5pq7', '2015-07-23 23:15:02'),
(11, '', '0', '', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chro', 'A0-1D-48-6E-47-38', 'b8kbme43b92ltq6mve0kpr5pq7', '2015-07-23 23:15:03'),
(12, '13416', 'Login', 'Login into the system', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chro', 'A0-1D-48-6E-47-38', 'b8kbme43b92ltq6mve0kpr5pq7', '2015-07-23 23:15:32'),
(13, '13416', 'Login', 'Sirgas has Login into the system', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chro', 'A0-1D-48-6E-47-38', 'b8kbme43b92ltq6mve0kpr5pq7', '2015-07-23 23:57:50'),
(15, '13416', 'Logout', ' has logout   from the system  ', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chro', 'A0-1D-48-6E-47-38', 'b8kbme43b92ltq6mve0kpr5pq7', '2015-07-24 00:23:29'),
(16, '13416', '0', '', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chro', 'A0-1D-48-6E-47-38', 'b8kbme43b92ltq6mve0kpr5pq7', '2015-07-24 00:23:29'),
(17, '13416', 'Login', 'Sirgas has Login into the system', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chro', 'A0-1D-48-6E-47-38', 'b8kbme43b92ltq6mve0kpr5pq7', '2015-07-24 00:25:40'),
(18, '13416', 'Logout', ' has logout   from the system  ', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chro', 'A0-1D-48-6E-47-38', 'b8kbme43b92ltq6mve0kpr5pq7', '2015-07-24 00:25:59'),
(19, '13416', '0', '', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chro', 'A0-1D-48-6E-47-38', 'b8kbme43b92ltq6mve0kpr5pq7', '2015-07-24 00:25:59'),
(20, '13416', 'Login', 'Sirgas has Login into the system', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chro', 'A0-1D-48-6E-47-38', 'b8kbme43b92ltq6mve0kpr5pq7', '2015-07-24 00:29:41'),
(21, '13416', 'Logout', ' has logout   from the system  ', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chro', 'A0-1D-48-6E-47-38', 'b8kbme43b92ltq6mve0kpr5pq7', '2015-07-24 00:29:51'),
(22, '13416', 'Login', 'Sirgas has Login into the system', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chro', 'A0-1D-48-6E-47-38', 'b8kbme43b92ltq6mve0kpr5pq7', '2015-07-24 00:32:26'),
(23, '13416', 'Logout', ' has logout   from the system  ', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chro', 'A0-1D-48-6E-47-38', 'b8kbme43b92ltq6mve0kpr5pq7', '2015-07-24 00:32:33'),
(24, '13416', 'Login', 'Sirgas has Login into the system', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chro', 'A0-1D-48-6E-47-38', 'b8kbme43b92ltq6mve0kpr5pq7', '2015-07-24 00:33:46'),
(25, '13416', 'Logout', ' has logout   from the system  ', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chro', 'A0-1D-48-6E-47-38', 'b8kbme43b92ltq6mve0kpr5pq7', '2015-07-24 00:34:06'),
(26, '13416', 'Login', 'Sirgas has Login into the system', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chro', 'A0-1D-48-6E-47-38', 'b8kbme43b92ltq6mve0kpr5pq7', '2015-07-24 00:35:41'),
(27, '13416', 'Logout', ' has logout   from the system  ', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chro', 'A0-1D-48-6E-47-38', 'b8kbme43b92ltq6mve0kpr5pq7', '2015-07-24 00:35:46'),
(28, '', 'Logout', ' has logout   from the system  ', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chro', 'A0-1D-48-6E-47-38', 'b8kbme43b92ltq6mve0kpr5pq7', '2015-07-24 00:36:33'),
(29, '13416', 'Login', 'Sirgas has Login into the system', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chro', 'A0-1D-48-6E-47-38', 'b8kbme43b92ltq6mve0kpr5pq7', '2015-07-24 00:36:46'),
(30, '13416', 'Logout', ' has logout   from the system  ', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chro', 'A0-1D-48-6E-47-38', 'b8kbme43b92ltq6mve0kpr5pq7', '2015-07-24 00:36:52'),
(31, '13416', 'Login', 'Sirgas has Login into the system', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chro', 'A0-1D-48-6E-47-38', 'b8kbme43b92ltq6mve0kpr5pq7', '2015-07-24 00:40:27'),
(32, '13416', 'Logout', 'sirgas has logout   from the system  ', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chro', 'A0-1D-48-6E-47-38', 'b8kbme43b92ltq6mve0kpr5pq7', '2015-07-24 00:40:33'),
(33, '13416', 'Login', 'Sirgas has Login into the system', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chro', 'A0-1D-48-6E-47-38', 'b8kbme43b92ltq6mve0kpr5pq7', '2015-07-24 00:41:04'),
(34, '13416', 'Login', 'Sirgas has Login into the system', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chro', 'A0-1D-48-6E-47-38', '869vt71g1vip21g1jr38k3pui7', '2015-07-24 14:22:21'),
(35, '13416', 'Login', 'Sirgas has Login into the system', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chro', 'A0-1D-48-6E-47-38', '869vt71g1vip21g1jr38k3pui7', '2015-07-24 17:40:39'),
(36, '13416', 'Login', 'Sirgas has Login into the system', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chro', 'A0-1D-48-6E-47-38', '869vt71g1vip21g1jr38k3pui7', '2015-07-24 18:35:31'),
(37, '13416', 'Login', 'Sirgas has Login into the system', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chro', 'A0-1D-48-6E-47-38', '869vt71g1vip21g1jr38k3pui7', '2015-07-24 22:12:40'),
(38, '13416', 'Login', 'Sirgas has Login into the system', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chro', 'A0-1D-48-6E-47-38', '869vt71g1vip21g1jr38k3pui7', '2015-07-25 06:25:49'),
(39, '13416', 'Login', 'Sirgas has Login into the system', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chro', 'A0-1D-48-6E-47-38', '869vt71g1vip21g1jr38k3pui7', '2015-07-25 06:26:06'),
(40, '13416', 'Login', 'Sirgas has Login into the system', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chro', 'A0-1D-48-6E-47-38', '869vt71g1vip21g1jr38k3pui7', '2015-07-25 06:26:25'),
(41, '13412', 'Login', 'webmaster has Login into the system', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chro', 'A0-1D-48-6E-47-38', '869vt71g1vip21g1jr38k3pui7', '2015-07-25 06:26:33'),
(42, '13416', 'Login', 'Sirgas has Login into the system', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chro', 'A0-1D-48-6E-47-38', '869vt71g1vip21g1jr38k3pui7', '2015-07-25 06:27:46'),
(43, '13412', 'Login', 'webmaster has Login into the system', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chro', 'A0-1D-48-6E-47-38', '869vt71g1vip21g1jr38k3pui7', '2015-07-25 06:29:06'),
(44, '13416', 'Login', 'Sirgas has Login into the system', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chro', 'A0-1D-48-6E-47-38', '869vt71g1vip21g1jr38k3pui7', '2015-07-25 06:29:54'),
(45, '13416', 'Login', 'sirgas has Login into the system', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:40.0) Gecko/20100101 Firefox/40.0', 'A0-1D-48-6E-47-38', '62hpre5aqu0qi5rjrs9raq7iv4', '2015-07-25 06:31:12'),
(46, '13416', 'Login', 'sirgas has Login into the system', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:40.0) Gecko/20100101 Firefox/40.0', 'A0-1D-48-6E-47-38', '62hpre5aqu0qi5rjrs9raq7iv4', '2015-07-25 19:02:34'),
(47, '13416', 'Login', 'sirgas has Login into the system', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:40.0) Gecko/20100101 Firefox/40.0', 'A0-1D-48-6E-47-38', '62hpre5aqu0qi5rjrs9raq7iv4', '2015-07-26 04:22:49'),
(48, '13416', 'Login', 'sirgas has Login into the system', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', 'A0-1D-48-6E-47-38', 'huaoaivksj3ec8gqooh5qtnhd3', '2015-07-26 04:36:59'),
(49, '13416', 'Login', 'sirgas has Login into the system', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', 'A0-1D-48-6E-47-38', '54eq16n81mq2ti5mac7cdtbh04', '2015-07-26 16:43:31'),
(50, '13416', 'Login', 'sirgas has Login into the system', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', 'A0-1D-48-6E-47-38', '54eq16n81mq2ti5mac7cdtbh04', '2015-07-26 18:09:36'),
(51, '13416', 'Login', 'sirgas has Login into the system', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', 'A0-1D-48-6E-47-38', '54eq16n81mq2ti5mac7cdtbh04', '2015-07-26 23:04:19'),
(52, '13416', 'Login', 'sirgas has Login into the system', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', 'A0-1D-48-6E-47-38', 'i0ks2dn8iai6hs6ffremp1j027', '2015-07-27 07:29:56'),
(53, '13416', 'Login', 'sirgas has Login into the system', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', 'A0-1D-48-6E-47-38', 'i0ks2dn8iai6hs6ffremp1j027', '2015-07-27 08:40:46'),
(54, '13416', 'Login', 'sirgas has Login into the system', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', 'A0-1D-48-6E-47-38', 'i0ks2dn8iai6hs6ffremp1j027', '2015-07-27 08:47:12'),
(55, '13416', 'Login', 'sirgas has Login into the system', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', 'A0-1D-48-6E-47-38', 'i0ks2dn8iai6hs6ffremp1j027', '2015-07-27 10:35:32'),
(56, '13416', 'Login', 'sirgas has Login into the system', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', 'A0-1D-48-6E-47-38', '7arphufup0319e71g2dlp7ehj1', '2015-07-27 12:25:39'),
(57, '13416', 'Login', 'sirgas has Login into the system', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', 'A0-1D-48-6E-47-38', 'lrsm7jt577gn8o958k9pub5pt1', '2015-07-27 12:33:56'),
(58, '13416', 'Login', 'Sirgas has Login into the system', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chro', 'A0-1D-48-6E-47-38', 'rtg1cn4g9qiia9bipjm101p731', '2015-07-27 13:04:35'),
(59, '13416', 'Login', 'Sirgas has Login into the system', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chro', 'A0-1D-48-6E-47-38', 'rtg1cn4g9qiia9bipjm101p731', '2015-07-27 15:28:12'),
(60, '13416', 'Login', 'Sirgas has Login into the system', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chro', 'A0-1D-48-6E-47-38', 'c5jb8hdtil6gp7puonaia13ru2', '2015-07-27 16:02:55'),
(61, '13416', 'Login', 'Sirgas has Login into the system', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chro', 'A0-1D-48-6E-47-38', 'c5jb8hdtil6gp7puonaia13ru2', '2015-07-28 07:03:52'),
(62, '13416', 'Login', 'sirgas has Login into the system', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:40.0) Gecko/20100101 Firefox/40.0', 'A0-1D-48-6E-47-38', 'bt52nk55he83kcc27gctdqkp16', '2015-07-28 08:56:12'),
(63, '13416', 'Login', 'Sirgas has Login into the system', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chro', 'A0-1D-48-6E-47-38', 'cbg9iu7r5h3ibjl46bp4s5pne5', '2015-07-28 15:22:52'),
(64, '', 'Logout', ' has logout   from the system  ', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chro', 'A0-1D-48-6E-47-38', 'dmsoc1e6p9k1k25tjpvvf796e2', '2015-07-28 19:08:32'),
(65, '13416', 'Login', 'Sirgas has Login into the system', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chro', 'A0-1D-48-6E-47-38', 'dmsoc1e6p9k1k25tjpvvf796e2', '2015-07-28 19:08:48'),
(66, '13423', 'Login', 'agnes has Login into the system', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chro', 'A0-1D-48-6E-47-38', 'pjmu2qgcu4vahjqde8ktev9cd0', '2015-07-28 21:38:52'),
(67, '13423', 'Login', 'agnes has Login into the system', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chro', 'A0-1D-48-6E-47-38', 'pjmu2qgcu4vahjqde8ktev9cd0', '2015-07-28 21:40:43'),
(68, '13423', 'Logout', 'agnes has logout   from the system  ', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chro', 'A0-1D-48-6E-47-38', 'pjmu2qgcu4vahjqde8ktev9cd0', '2015-07-28 21:46:32'),
(69, '13423', 'Login', 'agnes has Login into the system', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chro', 'A0-1D-48-6E-47-38', 'pjmu2qgcu4vahjqde8ktev9cd0', '2015-07-28 21:46:55'),
(70, '13423', 'Logout', 'agnes has logout   from the system  ', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chro', 'A0-1D-48-6E-47-38', 'pjmu2qgcu4vahjqde8ktev9cd0', '2015-07-28 21:47:30'),
(71, '13416', 'Login', 'Sirgas has Login into the system', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chro', 'A0-1D-48-6E-47-38', 'pjmu2qgcu4vahjqde8ktev9cd0', '2015-07-28 21:47:38'),
(72, '13416', 'Logout', 'sirgas has logout   from the system  ', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chro', 'A0-1D-48-6E-47-38', 'pjmu2qgcu4vahjqde8ktev9cd0', '2015-07-28 21:59:15'),
(73, '13423', 'Login', 'agnes has Login into the system', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chro', 'A0-1D-48-6E-47-38', 'pjmu2qgcu4vahjqde8ktev9cd0', '2015-07-28 21:59:25'),
(74, '13423', 'Logout', 'agnes has logout   from the system  ', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chro', 'A0-1D-48-6E-47-38', 'pjmu2qgcu4vahjqde8ktev9cd0', '2015-07-28 22:03:04'),
(75, '13416', 'Login', 'Sirgas has Login into the system', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chro', 'A0-1D-48-6E-47-38', 'pjmu2qgcu4vahjqde8ktev9cd0', '2015-07-28 22:03:11'),
(76, '13416', 'Logout', 'sirgas has logout   from the system  ', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chro', 'A0-1D-48-6E-47-38', 'pjmu2qgcu4vahjqde8ktev9cd0', '2015-07-28 22:06:15'),
(77, '13416', 'Login', 'Sirgas has Login into the system', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chro', 'A0-1D-48-6E-47-38', 'pjmu2qgcu4vahjqde8ktev9cd0', '2015-07-28 22:06:24'),
(78, '13416', 'Login', 'Sirgas has Login into the system', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chro', 'A0-1D-48-6E-47-38', 'pjmu2qgcu4vahjqde8ktev9cd0', '2015-07-29 08:00:00'),
(79, '13416', 'Logout', 'sirgas has logout   from the system  ', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chro', 'A0-1D-48-6E-47-38', 'pjmu2qgcu4vahjqde8ktev9cd0', '2015-07-29 08:01:13'),
(80, '13423', 'Login', 'agnes has Login into the system', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chro', 'A0-1D-48-6E-47-38', 'pjmu2qgcu4vahjqde8ktev9cd0', '2015-07-29 08:04:05'),
(81, '13423', 'Login', 'agnes has Login into the system', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chro', 'A0-1D-48-6E-47-38', 'k9ollnenvderkflp03cmpu8i51', '2015-07-29 08:50:55'),
(82, '13423', 'Login', 'agnes has Login into the system', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chro', 'A0-1D-48-6E-47-38', 'k9ollnenvderkflp03cmpu8i51', '2015-07-29 10:33:46'),
(83, '13423', 'Login', 'agnes has Login into the system', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chro', '16-DB-30-DE-1E-7B', 'sovi4pmikqgsts1rh4dhlkapn1', '2015-08-04 07:21:57'),
(84, '', 'Logout', ' has logout   from the system  ', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:40.0) Gecko/20100101 Firefox/40.0', 'A0-1D-48-6E-47-38', 'ja0u7v8lsjn0r274iousqu7pp1', '2015-08-06 12:22:08'),
(85, '13423', 'Login', 'agnes has Login into the system', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:40.0) Gecko/20100101 Firefox/40.0', 'A0-1D-48-6E-47-38', 'ja0u7v8lsjn0r274iousqu7pp1', '2015-08-06 12:22:17'),
(86, '13423', 'Login', 'agnes has Login into the system', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:40.0) Gecko/20100101 Firefox/40.0', 'A0-1D-48-6E-47-38', 'imofalcvdmv81ke9csm8dcgn16', '2015-08-07 08:34:43'),
(87, '13423', 'Login', 'agnes has Login into the system', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:40.0) Gecko/20100101 Firefox/40.0', 'A0-1D-48-6E-47-38', 'p6n180ih00cpia9g0m8mmg1e61', '2015-08-12 08:21:11'),
(88, '13423', 'Login', 'agnes has Login into the system', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:40.0) Gecko/20100101 Firefox/40.0', 'A0-1D-48-6E-47-38', 'p6n180ih00cpia9g0m8mmg1e61', '2015-08-12 09:31:46'),
(89, '13423', 'Login', 'agnes has Login into the system', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:40.0) Gecko/20100101 Firefox/40.0', 'A0-1D-48-6E-47-38', 'qolovt9hilhphms5n28f5n4af1', '2015-08-15 15:28:40'),
(90, '13423', 'Login', 'agnes has Login into the system', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:40.0) Gecko/20100101 Firefox/40.0', 'A0-1D-48-6E-47-38', 'qolovt9hilhphms5n28f5n4af1', '2015-08-15 16:28:40'),
(91, '13423', 'Logout', 'agnes has logout   from the system  ', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:40.0) Gecko/20100101 Firefox/40.0', 'A0-1D-48-6E-47-38', 'qolovt9hilhphms5n28f5n4af1', '2015-08-15 19:52:43'),
(92, '13423', 'Login', 'agnes has Login into the system', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:40.0) Gecko/20100101 Firefox/40.0', 'A0-1D-48-6E-47-38', 'qolovt9hilhphms5n28f5n4af1', '2015-08-15 20:45:23'),
(93, '13423', 'Login', 'agnes has Login into the system', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:40.0) Gecko/20100101 Firefox/40.0', 'A0-1D-48-6E-47-38', 'qolovt9hilhphms5n28f5n4af1', '2015-08-16 04:26:45'),
(94, '13423', 'Login', 'agnes has Login into the system', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:40.0) Gecko/20100101 Firefox/40.0', 'A0-1D-48-6E-47-38', '4hkon8dtuh58ik6q12vgtadaa3', '2015-08-16 22:02:08'),
(95, '13423', 'Login', 'agnes has Login into the system', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', 'A2-CA-94-1A-93-AA', 'eb8gc1alu96lecj39vu7etb793', '2015-08-17 17:56:42'),
(96, '13423', 'Login', 'agnes has Login into the system', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64; rv:40.0) Gecko/20100101 Firefox/40.0', 'A2-CA-94-1A-93-AA', '5it96u1g98q1kefrq8otabck33', '2015-08-18 19:24:37'),
(97, '13423', 'Login', 'agnes has Login into the system', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64; rv:40.0) Gecko/20100101 Firefox/40.0', 'A2-CA-94-1A-93-AA', 'u69dj1j63l8ogbdls8gvsck193', '2015-08-18 20:31:25'),
(98, '13423', 'Login', 'agnes has Login into the system', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64; rv:40.0) Gecko/20100101 Firefox/40.0', 'A2-CA-94-1A-93-AA', 'u69dj1j63l8ogbdls8gvsck193', '2015-08-18 21:50:25'),
(99, '13423', 'Login', 'agnes has Login into the system', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64; rv:40.0) Gecko/20100101 Firefox/40.0', 'A2-CA-94-1A-93-AA', 'u69dj1j63l8ogbdls8gvsck193', '2015-08-18 22:39:26'),
(100, '13423', 'Login', 'agnes has Login into the system', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64; rv:40.0) Gecko/20100101 Firefox/40.0', 'A2-CA-94-1A-93-AA', 'u69dj1j63l8ogbdls8gvsck193', '2015-08-18 23:22:23'),
(101, '13423', 'Login', 'agnes has Login into the system', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64; rv:40.0) Gecko/20100101 Firefox/40.0', 'A2-CA-94-1A-93-AA', 'u69dj1j63l8ogbdls8gvsck193', '2015-08-19 00:47:44'),
(102, '13423', 'Login', 'agnes has Login into the system', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64; rv:40.0) Gecko/20100101 Firefox/40.0', 'A2-CA-94-1A-93-AA', 'u69dj1j63l8ogbdls8gvsck193', '2015-08-19 02:34:19'),
(103, '13423', 'Login', 'agnes has Login into the system', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64; rv:40.0) Gecko/20100101 Firefox/40.0', 'A2-CA-94-1A-93-AA', 'u69dj1j63l8ogbdls8gvsck193', '2015-08-19 16:16:04'),
(104, '13423', 'Login', 'agnes has Login into the system', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64; rv:40.0) Gecko/20100101 Firefox/40.0', 'A2-CA-94-1A-93-AA', '45tjbr32uhf7f9nim47a3fbu94', '2015-08-19 15:24:58'),
(105, '13423', 'Login', 'agnes has Login into the system', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64; rv:40.0) Gecko/20100101 Firefox/40.0', 'A2-CA-94-1A-93-AA', '45tjbr32uhf7f9nim47a3fbu94', '2015-08-19 17:41:25'),
(106, '13423', 'Login', 'agnes has Login into the system', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64; rv:40.0) Gecko/20100101 Firefox/40.0', 'A2-CA-94-1A-93-AA', '45tjbr32uhf7f9nim47a3fbu94', '2015-08-20 07:59:34'),
(107, '13423', 'Login', 'agnes has Login into the system', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64; rv:40.0) Gecko/20100101 Firefox/40.0', 'A2-CA-94-1A-93-AA', '45tjbr32uhf7f9nim47a3fbu94', '2015-08-20 09:34:43'),
(108, '13423', 'Login', 'agnes has Login into the system', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64; rv:40.0) Gecko/20100101 Firefox/40.0', 'A2-CA-94-1A-93-AA', '45tjbr32uhf7f9nim47a3fbu94', '2015-08-20 13:51:25'),
(109, '13423', 'Login', 'agnes has Login into the system', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64; rv:40.0) Gecko/20100101 Firefox/40.0', 'A2-CA-94-1A-93-AA', '45tjbr32uhf7f9nim47a3fbu94', '2015-08-20 15:50:37'),
(110, '13423', 'Login', 'agnes has Login into the system', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64; rv:40.0) Gecko/20100101 Firefox/40.0', 'A2-CA-94-1A-93-AA', '45tjbr32uhf7f9nim47a3fbu94', '2015-08-20 18:17:54'),
(111, '13423', 'Login', 'agnes has Login into the system', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64; rv:40.0) Gecko/20100101 Firefox/40.0', 'A2-CA-94-1A-93-AA', '817eo4djvsnknb6cebl3e1mkk5', '2015-08-21 07:11:58'),
(112, '13423', 'Login', 'agnes has Login into the system', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64; rv:40.0) Gecko/20100101 Firefox/40.0', 'A2-CA-94-1A-93-AA', '817eo4djvsnknb6cebl3e1mkk5', '2015-08-21 12:07:25'),
(113, '13423', 'Login', 'agnes has Login into the system', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64; rv:40.0) Gecko/20100101 Firefox/40.0', 'A2-CA-94-1A-93-AA', '817eo4djvsnknb6cebl3e1mkk5', '2015-08-21 22:06:55'),
(114, '13423', 'Login', 'agnes has Login into the system', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64; rv:40.0) Gecko/20100101 Firefox/40.0', 'A2-CA-94-1A-93-AA', '817eo4djvsnknb6cebl3e1mkk5', '2015-08-22 06:54:58'),
(115, '13423', 'Login', 'agnes has Login into the system', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64; rv:40.0) Gecko/20100101 Firefox/40.0', 'A2-CA-94-1A-93-AA', '817eo4djvsnknb6cebl3e1mkk5', '2015-08-22 08:54:47'),
(116, '13423', 'Login', 'agnes has Login into the system', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64; rv:40.0) Gecko/20100101 Firefox/40.0', 'A2-CA-94-1A-93-AA', '817eo4djvsnknb6cebl3e1mkk5', '2015-08-22 12:48:08'),
(117, '13423', 'Login', 'agnes has Login into the system', 'localhost', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64; rv:40.0) Gecko/20100101 Firefox/40.0', 'A2-CA-94-1A-93-AA', '817eo4djvsnknb6cebl3e1mkk5', '2015-08-22 14:10:34');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transactions`
--

CREATE TABLE IF NOT EXISTS `tbl_transactions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `tbl_transactions`
--

INSERT INTO `tbl_transactions` (`ID`, `NAME`) VALUES
(1, 'Login'),
(2, 'Logout'),
(3, 'Transcript'),
(4, 'Result Change'),
(5, 'Result Entered'),
(6, 'SMS'),
(7, 'Create'),
(8, 'Delete'),
(9, 'Read'),
(10, 'Update'),
(11, 'Assign Teachers'),
(12, 'Bills preparations'),
(13, 'Bills Adjustments'),
(14, 'Class Export');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_workers`
--

CREATE TABLE IF NOT EXISTS `tbl_workers` (
  `ids` int(11) NOT NULL AUTO_INCREMENT,
  `emp_number` varchar(100) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `surname` varchar(200) NOT NULL,
  `designation` varchar(200) NOT NULL,
  `position` varchar(50) NOT NULL,
  `grade` varchar(200) NOT NULL,
  `ssnit` varchar(40) NOT NULL,
  `placeofresidence` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` text NOT NULL,
  `dob` varchar(20) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `marital` varchar(15) NOT NULL,
  `education` varchar(100) NOT NULL,
  `hometown` varchar(100) NOT NULL,
  `mother` varchar(100) NOT NULL,
  `father` varchar(100) NOT NULL,
  `dependentsNo` varchar(5) NOT NULL,
  `salary` decimal(20,2) NOT NULL,
  `dateHired` varchar(20) NOT NULL,
  `leaves` varchar(20) NOT NULL,
  `empStatus` varchar(50) NOT NULL,
  `title` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `teaches` int(11) NOT NULL,
  `INPUTEDDATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ids`),
  UNIQUE KEY `emp_number` (`emp_number`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tbl_workers`
--

INSERT INTO `tbl_workers` (`ids`, `emp_number`, `Name`, `surname`, `designation`, `position`, `grade`, `ssnit`, `placeofresidence`, `address`, `phone`, `dob`, `sex`, `marital`, `education`, `hometown`, `mother`, `father`, `dependentsNo`, `salary`, `dateHired`, `leaves`, `empStatus`, `title`, `email`, `teaches`, `INPUTEDDATE`) VALUES
(3, 'AGM20153', 'Abigail', 'Owusu', 'Teacher', 'Senior Adm Assistant', 'Senior', '20019-202', 'nungua', 'P.O.BOX 16,Sege-Ada', '0505284060', '275439600', 'Female', 'Married', 'Doctorate', 'Cape Coast', 'hun', 'john', '9', 8900.00, '1423609200', 'On Leave', 'Permanent', 'Mrs.', 'cashallsam@gmail.com', 0, '2015-07-29 09:12:06'),
(4, 'AGM20155', 'Ampah Gabriel', 'Sam', 'Teacher', 'Class Teacher', '', '12883-929', 'North Ola - Cape Coast', 'UC13,Cape Coast', '0505284060', '515800800', 'Male', 'Married', 'Masters', 'Winneba', 'Eunice Sam', 'Timothy Sam', '4', 4090.00, '1419894000', 'On Leave', 'Permanent', 'Dr.', 'gas@ucc.edu.gh', 0, '2015-07-29 10:35:11');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_workersgrade`
--

CREATE TABLE IF NOT EXISTS `tbl_workersgrade` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `grade` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `tbl_workersgrade`
--

INSERT INTO `tbl_workersgrade` (`id`, `grade`) VALUES
(5, 'Senior'),
(6, 'Junior'),
(7, 'Intermediate'),
(8, 'Chief');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_worker_no`
--

CREATE TABLE IF NOT EXISTS `tbl_worker_no` (
  `id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_worker_no`
--

INSERT INTO `tbl_worker_no` (`id`) VALUES
(6);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
