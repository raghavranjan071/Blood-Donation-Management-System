-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 19, 2019 at 11:54 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bbdms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '5c428d8875d2948607f3e3fe134d71b4', '2017-06-18 12:22:38'),
(2, 'archit', 'archit123', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblblooddonars`
--

CREATE TABLE `tblblooddonars` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `MobileNumber` char(11) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Gender` varchar(20) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `BloodGroup` varchar(20) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Message` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblblooddonars`
--

INSERT INTO `tblblooddonars` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Gender`, `Age`, `BloodGroup`, `Address`, `Message`, `PostingDate`, `status`) VALUES
(1, 'Anuj Kumar', '9999857868', 'anuj@gmail.com', 'Male', 27, 'O+', 'ghaziabad', ' d hd hd fh d', '2017-06-30 20:14:16', 1),
(6, 'Archit Jain', '452178965', 'archit@gmail.com', 'Male', 20, 'A-', 'Delhi', 'Save life', '2019-10-19 06:47:51', 1),
(7, 'Mansi Bisht', '4578963210', 'mansi@gmail.com', 'Female', 20, 'AB-', 'Noida', ' Save a life', '2019-10-19 06:48:57', 1),
(8, 'Ajay Pratap Singh', '7459632198', 'ajay@gmail.com', 'Male', 20, 'O-', 'Gurugram', ' Happy to help', '2019-10-19 06:50:05', 1),
(9, 'Mohit Pandey', '7845322106', 'mohit@gmail.com', 'Male', 21, 'A+', 'Ghaziabad', ' Save everyday', '2019-10-19 06:51:05', 1),
(10, 'Akansha Tyagi', '4517896321', 'akansha@gmail.com', 'Female', 25, 'AB+', 'Noida', ' Hello everyone', '2019-10-19 06:52:09', 1),
(11, 'Arpit Goel', '4213364942', 'arpit@gmail.com', 'Male', 32, 'O+', 'Delhi', ' It feels great to help', '2019-10-19 06:54:20', 1),
(12, 'Anukriti Goswami', '7896541230', 'anukriti@gmail.com', 'Female', 20, 'B+', 'Noida', ' Happy to be blood donor', '2019-10-19 06:56:31', 1),
(13, 'Anushka Tyagi', '7963211456', 'anushka@gmail.com', 'Female', 23, 'B-', 'Gurugram', ' Ask me anytime you need any help', '2019-10-19 06:57:24', 1),
(14, 'Anjali Tyagi', '5498733216', 'anjali@gmail.com', 'Female', 20, 'B-', 'Delhi', ' Feels good to help others', '2019-10-19 07:03:54', 1),
(15, 'Vaibhav', '9874563210', 'vaibhav@gmail.com', 'Male', 25, 'A-', 'Ghaziabad', ' Being donor is good', '2019-10-19 07:05:47', 1),
(16, 'Ashish Sharma', '9875146300', 'ashish@gmail.com', 'Male', 35, 'AB-', 'Ghaziabad', ' I am ashish', '2019-10-19 07:06:35', 1),
(17, 'Arvind', '6987412355', 'arvind@gmail.com', 'Male', 45, 'O-', 'Noida', ' I am arvind', '2019-10-19 07:07:18', 1),
(18, 'Aarushi', '5796632145', 'aarushi@gmail.com', 'Female', 45, 'A+', 'Gurugram', ' I help others', '2019-10-19 07:08:32', 1),
(19, 'Harsh Mishra', '8384840106', 'harsh@gmail.com', 'Male', 45, 'AB+', 'Gurugram', ' Hello', '2019-10-19 07:09:21', 1),
(20, 'Ayush Srivastava', '8756421313', 'ayush@gmail.com', 'Male', 45, 'B+', 'Delhi', ' Yes I donate', '2019-10-19 07:10:40', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblbloodgroup`
--

CREATE TABLE `tblbloodgroup` (
  `id` int(11) NOT NULL,
  `BloodGroup` varchar(20) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbloodgroup`
--

INSERT INTO `tblbloodgroup` (`id`, `BloodGroup`, `PostingDate`) VALUES
(1, 'A-', '2017-06-30 20:33:50'),
(2, 'AB-', '2017-06-30 20:34:00'),
(3, 'O-', '2017-06-30 20:34:05'),
(5, 'A+', '2017-06-30 20:34:13'),
(6, 'AB+', '2017-06-30 20:34:18'),
(7, 'O+', '2019-10-17 18:57:32'),
(8, 'B+', '2019-10-19 05:13:21'),
(9, 'B-', '2019-10-19 05:13:25');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext DEFAULT NULL,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'Ghaziabad																							', 'architjain.12@yahoo.in', '9873955774');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(1, 'Anuj Kumar', 'webhostingamigo@gmail.com', '2147483647', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '2017-06-18 10:03:07', 1),
(2, 'caasda', 'webhostingamigo@gmail.com', '42342342', 'drftghjk', '2017-06-30 21:17:09', NULL),
(3, 'caasda', 'webhostingamigo@gmail.com', '42342342', 'drftghjk', '2017-06-30 21:21:30', NULL),
(4, 'te', 'sdfsdf@gmail.com', '75787875545', 'sfsdf sdg hs h sh', '2017-07-01 07:19:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(2, 'Why Become Donor', 'donor', '<p style=\"margin-bottom: 15px; padding: 0px; -webkit-font-smoothing: subpixel-antialiased; font-family: &quot;Frank Ruhl Libre&quot;, Georgia, serif; touch-action: manipulation; font-size: 1.5em; line-height: 1.75em; color: rgb(51, 51, 51);\">Donating blood regularly has proved beneficial not only for the recipient but also the donor. It is helpful for the vital organs, and it reduces risk for chronic diseases such as cancer and stroke.</p><p style=\"margin-bottom: 15px; padding: 0px; -webkit-font-smoothing: subpixel-antialiased; font-family: &quot;Frank Ruhl Libre&quot;, Georgia, serif; touch-action: manipulation; font-size: 1.5em; line-height: 1.75em; color: rgb(51, 51, 51);\">For certain treatments like chemotherapy, blood is required on a daily basis, whereas victims of accident may require up to 100 units of blood transfusion. In India, blood shortage is&nbsp;more than 2 million pint and counting.</p><p style=\"margin-bottom: 15px; padding: 0px; -webkit-font-smoothing: subpixel-antialiased; font-family: &quot;Frank Ruhl Libre&quot;, Georgia, serif; touch-action: manipulation; font-size: 1.5em; line-height: 1.75em; color: rgb(51, 51, 51);\">This World Blood Donor Day, &nbsp;here are 13 reasons why you should donate blood:</p><p style=\"margin-bottom: 15px; padding: 0px; -webkit-font-smoothing: subpixel-antialiased; font-family: &quot;Frank Ruhl Libre&quot;, Georgia, serif; touch-action: manipulation; font-size: 1.5em; line-height: 1.75em; color: rgb(51, 51, 51);\"><a href=\"https://images.firstpost.com/wp-content/uploads/2017/06/blood-donor-2.jpg\" style=\"margin: 0px; padding: 0px; -webkit-font-smoothing: subpixel-antialiased; color: rgb(237, 40, 36); cursor: pointer; touch-action: manipulation;\"><img class=\"alignnone size-full wp-image-3594423\" src=\"https://images.firstpost.com/optimize/_GFxRDoJbHc_4VdZmEcd44Qh6PM=/images.firstpost.com/wp-content/uploads/2017/06/blood-donor-2.jpg\" alt=\" World Blood Donor Day: 13 Reasons why you should donate blood\" width=\"825\" height=\"500\" style=\"margin: 0px; padding: 0px; -webkit-font-smoothing: subpixel-antialiased; background-position: center center; background-repeat: no-repeat; background-size: cover; display: inline-block; width: 860.004px; height: auto;\"></a></p><p style=\"margin-bottom: 15px; padding: 0px; -webkit-font-smoothing: subpixel-antialiased; font-family: &quot;Frank Ruhl Libre&quot;, Georgia, serif; touch-action: manipulation; font-size: 1.5em; line-height: 1.75em; color: rgb(51, 51, 51);\"><span style=\"margin: 0px; padding: 0px; -webkit-font-smoothing: subpixel-antialiased; font-weight: 700; touch-action: manipulation;\">1. Reduce risk of heart attacks and liver ailment</span></p><p style=\"margin-bottom: 15px; padding: 0px; -webkit-font-smoothing: subpixel-antialiased; font-family: &quot;Frank Ruhl Libre&quot;, Georgia, serif; touch-action: manipulation; font-size: 1.5em; line-height: 1.75em; color: rgb(51, 51, 51);\">Donating blood regularly is beneficial to prevent and reduce heart attacks and liver ailment. The risk of heart and liver related problem is caused by the iron overload in the body. Donating blood helps in maintaining the iron level in the body and thus reduce those risk.</p><p style=\"margin-bottom: 15px; padding: 0px; -webkit-font-smoothing: subpixel-antialiased; font-family: &quot;Frank Ruhl Libre&quot;, Georgia, serif; touch-action: manipulation; font-size: 1.5em; line-height: 1.75em; color: rgb(51, 51, 51);\">&nbsp;</p><p style=\"margin-bottom: 15px; padding: 0px; -webkit-font-smoothing: subpixel-antialiased; font-family: &quot;Frank Ruhl Libre&quot;, Georgia, serif; touch-action: manipulation; font-size: 1.5em; line-height: 1.75em; color: rgb(51, 51, 51);\"><a href=\"https://images.firstpost.com/wp-content/uploads/2017/06/Untitled-design7.jpg\" style=\"margin: 0px; padding: 0px; -webkit-font-smoothing: subpixel-antialiased; color: rgb(237, 40, 36); cursor: pointer; touch-action: manipulation;\"><img class=\"alignnone size-full wp-image-3594393\" src=\"https://images.firstpost.com/optimize/4mww-xzMTuFVsEfk6SRNibi94vc=/images.firstpost.com/wp-content/uploads/2017/06/Untitled-design7.jpg\" alt=\"Untitled design\" width=\"825\" height=\"500\" style=\"margin: 0px; padding: 0px; -webkit-font-smoothing: subpixel-antialiased; background-position: center center; background-repeat: no-repeat; background-size: cover; display: inline-block; width: 860.004px; height: auto;\"></a></p><p style=\"margin-bottom: 15px; padding: 0px; -webkit-font-smoothing: subpixel-antialiased; font-family: &quot;Frank Ruhl Libre&quot;, Georgia, serif; touch-action: manipulation; font-size: 1.5em; line-height: 1.75em; color: rgb(51, 51, 51);\"><span style=\"margin: 0px; padding: 0px; -webkit-font-smoothing: subpixel-antialiased; font-weight: 700; touch-action: manipulation;\">2. Lower the risk of cancer</span></p><p style=\"margin-bottom: 15px; padding: 0px; -webkit-font-smoothing: subpixel-antialiased; font-family: &quot;Frank Ruhl Libre&quot;, Georgia, serif; touch-action: manipulation; font-size: 1.5em; line-height: 1.75em; color: rgb(51, 51, 51);\">Cancer is the most feared and deadly disease. Blood donation helps in lowering the risk of cancer. By donating blood regularly the iron level in the blood is balanced and the risk of cancer-related to the liver, lungs, and intestine gets lower.</p><p style=\"margin-bottom: 15px; padding: 0px; -webkit-font-smoothing: subpixel-antialiased; font-family: &quot;Frank Ruhl Libre&quot;, Georgia, serif; touch-action: manipulation; font-size: 1.5em; line-height: 1.75em; color: rgb(51, 51, 51);\"><a href=\"https://images.firstpost.com/wp-content/uploads/2017/06/what-is-cancer.jpg\" style=\"margin: 0px; padding: 0px; -webkit-font-smoothing: subpixel-antialiased; color: rgb(237, 40, 36); cursor: pointer; touch-action: manipulation;\"><img class=\"alignnone size-full wp-image-3594307\" src=\"https://images.firstpost.com/optimize/98c65hfxxm9K0YQAPvswXbVDoi4=/images.firstpost.com/wp-content/uploads/2017/06/what-is-cancer.jpg\" alt=\"what-is-cancer\" width=\"825\" height=\"500\" style=\"margin: 0px; padding: 0px; -webkit-font-smoothing: subpixel-antialiased; background-position: center center; background-repeat: no-repeat; background-size: cover; display: inline-block; width: 860.004px; height: auto;\"></a></p><p style=\"margin-bottom: 15px; padding: 0px; -webkit-font-smoothing: subpixel-antialiased; font-family: &quot;Frank Ruhl Libre&quot;, Georgia, serif; touch-action: manipulation; font-size: 1.5em; line-height: 1.75em; color: rgb(51, 51, 51);\">&nbsp;</p><p style=\"margin-bottom: 15px; padding: 0px; -webkit-font-smoothing: subpixel-antialiased; font-family: &quot;Frank Ruhl Libre&quot;, Georgia, serif; touch-action: manipulation; font-size: 1.5em; line-height: 1.75em; color: rgb(51, 51, 51);\"><span style=\"margin: 0px; padding: 0px; -webkit-font-smoothing: subpixel-antialiased; font-weight: 700; touch-action: manipulation;\">3. New blood cells</span></p><p style=\"margin-bottom: 15px; padding: 0px; -webkit-font-smoothing: subpixel-antialiased; font-family: &quot;Frank Ruhl Libre&quot;, Georgia, serif; touch-action: manipulation; font-size: 1.5em; line-height: 1.75em; color: rgb(51, 51, 51);\">Once we donate blood, the body tries to restore the blood loss. This helps in the production of the new blood cells and maintain good health.</p><p style=\"margin-bottom: 15px; padding: 0px; -webkit-font-smoothing: subpixel-antialiased; font-family: &quot;Frank Ruhl Libre&quot;, Georgia, serif; touch-action: manipulation; font-size: 1.5em; line-height: 1.75em; color: rgb(51, 51, 51);\"><a href=\"https://images.firstpost.com/wp-content/uploads/2017/06/RBCsWBCsPlatelets.jpg\" style=\"margin: 0px; padding: 0px; -webkit-font-smoothing: subpixel-antialiased; color: rgb(237, 40, 36); cursor: pointer; touch-action: manipulation;\"><img class=\"alignnone size-full wp-image-3594311\" src=\"https://images.firstpost.com/optimize/x9BFGwtmxKbCAe1rg8EbPAfiMqQ=/images.firstpost.com/wp-content/uploads/2017/06/RBCsWBCsPlatelets.jpg\" alt=\"RBCsWBCsPlatelets\" width=\"825\" height=\"500\" style=\"margin: 0px; padding: 0px; -webkit-font-smoothing: subpixel-antialiased; background-position: center center; background-repeat: no-repeat; background-size: cover; display: inline-block; width: 860.004px; height: auto;\"></a></p><p style=\"margin-bottom: 15px; padding: 0px; -webkit-font-smoothing: subpixel-antialiased; font-family: &quot;Frank Ruhl Libre&quot;, Georgia, serif; touch-action: manipulation; font-size: 1.5em; line-height: 1.75em; color: rgb(51, 51, 51);\"><span style=\"margin: 0px; padding: 0px; -webkit-font-smoothing: subpixel-antialiased; font-weight: 700; touch-action: manipulation;\">4. Reduced risk of hemochromatosis</span></p><p style=\"margin-bottom: 15px; padding: 0px; -webkit-font-smoothing: subpixel-antialiased; font-family: &quot;Frank Ruhl Libre&quot;, Georgia, serif; touch-action: manipulation; font-size: 1.5em; line-height: 1.75em; color: rgb(51, 51, 51);\">Hemochromatosis is a disease that occurs due to increase in the absorption of iron by the body. Blood donation helps in reducing iron overload in the body and prevent Hemochromatosis.</p><p style=\"margin-bottom: 15px; padding: 0px; -webkit-font-smoothing: subpixel-antialiased; font-family: &quot;Frank Ruhl Libre&quot;, Georgia, serif; touch-action: manipulation; font-size: 1.5em; line-height: 1.75em; color: rgb(51, 51, 51);\"><a href=\"https://images.firstpost.com/wp-content/uploads/2017/06/Hemochromatosis.jpg\" style=\"margin: 0px; padding: 0px; -webkit-font-smoothing: subpixel-antialiased; color: rgb(237, 40, 36); cursor: pointer; touch-action: manipulation;\"><img class=\"alignnone size-full wp-image-3594315\" src=\"https://images.firstpost.com/optimize/elvYyf4G57ehzvWuvqj6A3TNp3c=/images.firstpost.com/wp-content/uploads/2017/06/Hemochromatosis.jpg\" alt=\"Hemochromatosis\" width=\"825\" height=\"500\" style=\"margin: 0px; padding: 0px; -webkit-font-smoothing: subpixel-antialiased; background-position: center center; background-repeat: no-repeat; background-size: cover; display: inline-block; width: 860.004px; height: auto;\"></a></p><p style=\"margin-bottom: 15px; padding: 0px; -webkit-font-smoothing: subpixel-antialiased; font-family: &quot;Frank Ruhl Libre&quot;, Georgia, serif; touch-action: manipulation; font-size: 1.5em; line-height: 1.75em; color: rgb(51, 51, 51);\"><span style=\"margin: 0px; padding: 0px; -webkit-font-smoothing: subpixel-antialiased; font-weight: 700; touch-action: manipulation;\">5. Maintain Weight</span></p><p style=\"margin-bottom: 15px; padding: 0px; -webkit-font-smoothing: subpixel-antialiased; font-family: &quot;Frank Ruhl Libre&quot;, Georgia, serif; touch-action: manipulation; font-size: 1.5em; line-height: 1.75em; color: rgb(51, 51, 51);\">It is recommended to donate blood for those who are overweight. Regularly donating blood helps in weight loss and burn fat up to 650 calories.</p><p style=\"margin-bottom: 15px; padding: 0px; -webkit-font-smoothing: subpixel-antialiased; font-family: &quot;Frank Ruhl Libre&quot;, Georgia, serif; touch-action: manipulation; font-size: 1.5em; line-height: 1.75em; color: rgb(51, 51, 51);\">&nbsp;</p><p style=\"margin-bottom: 15px; padding: 0px; -webkit-font-smoothing: subpixel-antialiased; font-family: &quot;Frank Ruhl Libre&quot;, Georgia, serif; touch-action: manipulation; font-size: 1.5em; line-height: 1.75em; color: rgb(51, 51, 51);\"><a href=\"https://images.firstpost.com/wp-content/uploads/2017/06/MaintainWeight.jpg\" style=\"margin: 0px; padding: 0px; -webkit-font-smoothing: subpixel-antialiased; color: rgb(237, 40, 36); cursor: pointer; touch-action: manipulation;\"><img class=\"alignnone size-full wp-image-3594317\" src=\"https://images.firstpost.com/optimize/2Hvvyjpum2j-DsxdWRBkpl0m06k=/images.firstpost.com/wp-content/uploads/2017/06/MaintainWeight.jpg\" alt=\"MaintainWeight\" width=\"825\" height=\"500\" style=\"margin: 0px; padding: 0px; -webkit-font-smoothing: subpixel-antialiased; background-position: center center; background-repeat: no-repeat; background-size: cover; display: inline-block; width: 860.004px; height: auto;\"></a></p><p style=\"margin-bottom: 15px; padding: 0px; -webkit-font-smoothing: subpixel-antialiased; font-family: &quot;Frank Ruhl Libre&quot;, Georgia, serif; touch-action: manipulation; font-size: 1.5em; line-height: 1.75em; color: rgb(51, 51, 51);\"><span style=\"margin: 0px; padding: 0px; -webkit-font-smoothing: subpixel-antialiased; font-weight: 700; touch-action: manipulation;\">6. Helps prevent premature ageing.</span></p><div id=\"FirstPost_Wap_New/FirstPost_Wap_New_World/FirstPost_Wap_New_World_Internal/FirstPost_Wap_New_World_Internal_Between_Sections_300x250_2\" class=\"between-300x250\" style=\"margin: 0px; padding: 0px; -webkit-font-smoothing: subpixel-antialiased; font-family: &quot;Frank Ruhl Libre&quot;, Georgia, serif; touch-action: manipulation; color: rgb(51, 51, 51); text-align: center;\"><div class=\"ad-section text-center\" style=\"margin: 0px; padding: 0px; -webkit-font-smoothing: subpixel-antialiased; touch-action: manipulation;\"></div></div><p style=\"margin-bottom: 15px; padding: 0px; -webkit-font-smoothing: subpixel-antialiased; font-family: &quot;Frank Ruhl Libre&quot;, Georgia, serif; touch-action: manipulation; font-size: 1.5em; line-height: 1.75em; color: rgb(51, 51, 51);\">While donating blood, you not only lose weight but it also helps in reducing stress. Stress is one of the reasons that triggers premature ageing. Blood donation helps in reducing stress on your mind and body. Also, keeps the skin tight and wrinkle-free.</p><p style=\"margin-bottom: 15px; padding: 0px; -webkit-font-smoothing: subpixel-antialiased; font-family: &quot;Frank Ruhl Libre&quot;, Georgia, serif; touch-action: manipulation; font-size: 1.5em; line-height: 1.75em; color: rgb(51, 51, 51);\"><a href=\"https://images.firstpost.com/wp-content/uploads/2017/06/prematureageing.jpg\" style=\"margin: 0px; padding: 0px; -webkit-font-smoothing: subpixel-antialiased; color: rgb(237, 40, 36); cursor: pointer; touch-action: manipulation;\"><img class=\"alignnone size-full wp-image-3594319\" src=\"https://images.firstpost.com/optimize/D-KMOpbbwAoPqn_cbLJ1IjkHO5c=/images.firstpost.com/wp-content/uploads/2017/06/prematureageing.jpg\" alt=\"prematureageing\" width=\"825\" height=\"516\" style=\"margin: 0px; padding: 0px; -webkit-font-smoothing: subpixel-antialiased; background-position: center center; background-repeat: no-repeat; background-size: cover; display: inline-block; width: 860.004px; height: auto;\"></a></p><p style=\"margin-bottom: 15px; padding: 0px; -webkit-font-smoothing: subpixel-antialiased; font-family: &quot;Frank Ruhl Libre&quot;, Georgia, serif; touch-action: manipulation; font-size: 1.5em; line-height: 1.75em; color: rgb(51, 51, 51);\"><span style=\"margin: 0px; padding: 0px; -webkit-font-smoothing: subpixel-antialiased; font-weight: 700; touch-action: manipulation;\">&nbsp;7.&nbsp;</span><span style=\"margin: 0px; padding: 0px; -webkit-font-smoothing: subpixel-antialiased; font-weight: 700; touch-action: manipulation;\">Speeds up healing process</span></p><p style=\"margin-bottom: 15px; padding: 0px; -webkit-font-smoothing: subpixel-antialiased; font-family: &quot;Frank Ruhl Libre&quot;, Georgia, serif; touch-action: manipulation; font-size: 1.5em; line-height: 1.75em; color: rgb(51, 51, 51);\">The body tries to adjust to the loss of red blood the cells we donate blood, these adjustments also help in accelerating the wound healing process.</p><p style=\"margin-bottom: 15px; padding: 0px; -webkit-font-smoothing: subpixel-antialiased; font-family: &quot;Frank Ruhl Libre&quot;, Georgia, serif; touch-action: manipulation; font-size: 1.5em; line-height: 1.75em; color: rgb(51, 51, 51);\"><a href=\"https://images.firstpost.com/wp-content/uploads/2017/06/healing-process.jpg\" style=\"margin: 0px; padding: 0px; -webkit-font-smoothing: subpixel-antialiased; color: rgb(237, 40, 36); cursor: pointer; touch-action: manipulation;\"><img class=\"alignnone size-full wp-image-3594321\" src=\"https://images.firstpost.com/optimize/29pG8Y64CoiJDSHyuNbHwtGovks=/images.firstpost.com/wp-content/uploads/2017/06/healing-process.jpg\" alt=\"healing process\" width=\"825\" height=\"500\" style=\"margin: 0px; padding: 0px; -webkit-font-smoothing: subpixel-antialiased; background-position: center center; background-repeat: no-repeat; background-size: cover; display: inline-block; width: 860.004px; height: auto;\"></a></p><p style=\"margin-bottom: 15px; padding: 0px; -webkit-font-smoothing: subpixel-antialiased; font-family: &quot;Frank Ruhl Libre&quot;, Georgia, serif; touch-action: manipulation; font-size: 1.5em; line-height: 1.75em; color: rgb(51, 51, 51);\"><span style=\"margin: 0px; padding: 0px; -webkit-font-smoothing: subpixel-antialiased; font-weight: 700; touch-action: manipulation;\">8. Lower cholesterol level</span></p><p style=\"margin-bottom: 15px; padding: 0px; -webkit-font-smoothing: subpixel-antialiased; font-family: &quot;Frank Ruhl Libre&quot;, Georgia, serif; touch-action: manipulation; font-size: 1.5em; line-height: 1.75em; color: rgb(51, 51, 51);\">Blood contains iron, if the iron in blood is overloaded it can increase the chances of blockage in blood vessels. Blood donation can help to reduce the amount of iron in the blood thus helps in lower cholesterol.</p><p style=\"margin-bottom: 15px; padding: 0px; -webkit-font-smoothing: subpixel-antialiased; font-family: &quot;Frank Ruhl Libre&quot;, Georgia, serif; touch-action: manipulation; font-size: 1.5em; line-height: 1.75em; color: rgb(51, 51, 51);\"><a href=\"https://images.firstpost.com/wp-content/uploads/2017/06/cholesterol-level.jpg\" style=\"margin: 0px; padding: 0px; -webkit-font-smoothing: subpixel-antialiased; color: rgb(237, 40, 36); cursor: pointer; touch-action: manipulation;\"><img class=\"alignnone size-full wp-image-3594325\" src=\"https://images.firstpost.com/optimize/KQzy_CSurWsTq8AIHB4ScUY0Zjs=/images.firstpost.com/wp-content/uploads/2017/06/cholesterol-level.jpg\" alt=\"cholesterol level\" width=\"825\" height=\"500\" style=\"margin: 0px; padding: 0px; -webkit-font-smoothing: subpixel-antialiased; background-position: center center; background-repeat: no-repeat; background-size: cover; display: inline-block; width: 860.004px; height: auto;\"></a></p><p style=\"margin-bottom: 15px; padding: 0px; -webkit-font-smoothing: subpixel-antialiased; font-family: &quot;Frank Ruhl Libre&quot;, Georgia, serif; touch-action: manipulation; font-size: 1.5em; line-height: 1.75em; color: rgb(51, 51, 51);\"><span style=\"margin: 0px; padding: 0px; -webkit-font-smoothing: subpixel-antialiased; font-weight: 700; touch-action: manipulation;\">9. Free Medical checkup</span></p><p style=\"margin-bottom: 15px; padding: 0px; -webkit-font-smoothing: subpixel-antialiased; font-family: &quot;Frank Ruhl Libre&quot;, Georgia, serif; touch-action: manipulation; font-size: 1.5em; line-height: 1.75em; color: rgb(51, 51, 51);\">Every donor goes through a routine checkup prior to donation. Body temperature is checked along with blood pressure, hemoglobin and pulse. Blood is tested for 13 infectious disease like HIV, West Nile Virus, hepatitis B and C and Syphilis. It gives you a cost free quick look into your health.</p><p style=\"margin-bottom: 15px; padding: 0px; -webkit-font-smoothing: subpixel-antialiased; font-family: &quot;Frank Ruhl Libre&quot;, Georgia, serif; touch-action: manipulation; font-size: 1.5em; line-height: 1.75em; color: rgb(51, 51, 51);\">&nbsp;</p><p style=\"margin-bottom: 15px; padding: 0px; -webkit-font-smoothing: subpixel-antialiased; font-family: &quot;Frank Ruhl Libre&quot;, Georgia, serif; touch-action: manipulation; font-size: 1.5em; line-height: 1.75em; color: rgb(51, 51, 51);\"><a href=\"https://images.firstpost.com/wp-content/uploads/2017/06/FreeMedicalcheckup.jpg\" style=\"margin: 0px; padding: 0px; -webkit-font-smoothing: subpixel-antialiased; color: rgb(237, 40, 36); cursor: pointer; touch-action: manipulation;\"><img class=\"alignnone size-full wp-image-3594327\" src=\"https://images.firstpost.com/optimize/na7pGod_uGhqAmQsiSOykAQCNu8=/images.firstpost.com/wp-content/uploads/2017/06/FreeMedicalcheckup.jpg\" alt=\"FreeMedicalcheckup\" width=\"825\" height=\"500\" style=\"margin: 0px; padding: 0px; -webkit-font-smoothing: subpixel-antialiased; background-position: center center; background-repeat: no-repeat; background-size: cover; display: inline-block; width: 860.004px; height: auto;\"></a></p><p style=\"margin-bottom: 15px; padding: 0px; -webkit-font-smoothing: subpixel-antialiased; font-family: &quot;Frank Ruhl Libre&quot;, Georgia, serif; touch-action: manipulation; font-size: 1.5em; line-height: 1.75em; color: rgb(51, 51, 51);\"><span style=\"margin: 0px; padding: 0px; -webkit-font-smoothing: subpixel-antialiased; font-weight: 700; touch-action: manipulation;\">10. Live a longer life</span></p><p style=\"margin-bottom: 15px; padding: 0px; -webkit-font-smoothing: subpixel-antialiased; font-family: &quot;Frank Ruhl Libre&quot;, Georgia, serif; touch-action: manipulation; font-size: 1.5em; line-height: 1.75em; color: rgb(51, 51, 51);\">The people who involve in the altruistic work have proven to live a longer life. Blood donation is altruistic works so it not only save lives of other but also helps you live longer and healthier.</p><p style=\"margin-bottom: 15px; padding: 0px; -webkit-font-smoothing: subpixel-antialiased; font-family: &quot;Frank Ruhl Libre&quot;, Georgia, serif; touch-action: manipulation; font-size: 1.5em; line-height: 1.75em; color: rgb(51, 51, 51);\"><a href=\"https://images.firstpost.com/wp-content/uploads/2017/06/100th-birthday-cake-007.jpg\" style=\"margin: 0px; padding: 0px; -webkit-font-smoothing: subpixel-antialiased; color: rgb(237, 40, 36); cursor: pointer; touch-action: manipulation;\"><img class=\"alignnone size-full wp-image-3594329\" src=\"https://images.firstpost.com/optimize/_SksU3jqMH9bgFdVfzqsfPTowzk=/images.firstpost.com/wp-content/uploads/2017/06/100th-birthday-cake-007.jpg\" alt=\"100th-birthday-cake-007\" width=\"825\" height=\"500\" style=\"margin: 0px; padding: 0px; -webkit-font-smoothing: subpixel-antialiased; background-position: center center; background-repeat: no-repeat; background-size: cover; display: inline-block; width: 860.004px; height: auto;\"></a></p><p style=\"margin-bottom: 15px; padding: 0px; -webkit-font-smoothing: subpixel-antialiased; font-family: &quot;Frank Ruhl Libre&quot;, Georgia, serif; touch-action: manipulation; font-size: 1.5em; line-height: 1.75em; color: rgb(51, 51, 51);\"><span style=\"margin: 0px; padding: 0px; -webkit-font-smoothing: subpixel-antialiased; font-weight: 700; touch-action: manipulation;\">11. Psychological Upliftment</span></p><p style=\"margin-bottom: 15px; padding: 0px; -webkit-font-smoothing: subpixel-antialiased; font-family: &quot;Frank Ruhl Libre&quot;, Georgia, serif; touch-action: manipulation; font-size: 1.5em; line-height: 1.75em; color: rgb(51, 51, 51);\">Beside all the heathy benefits that we obtain by donating blood, we also get the powerful benefit psychologically by helping the one in need.</p><p style=\"margin-bottom: 15px; padding: 0px; -webkit-font-smoothing: subpixel-antialiased; font-family: &quot;Frank Ruhl Libre&quot;, Georgia, serif; touch-action: manipulation; font-size: 1.5em; line-height: 1.75em; color: rgb(51, 51, 51);\"><a href=\"https://images.firstpost.com/wp-content/uploads/2017/06/psyuplift.jpg\" style=\"margin: 0px; padding: 0px; -webkit-font-smoothing: subpixel-antialiased; color: rgb(237, 40, 36); cursor: pointer; touch-action: manipulation;\"><img class=\"alignnone size-full wp-image-3594331\" src=\"https://images.firstpost.com/optimize/9dbdFTkqoyil2ixp0Y7FSgSSL30=/images.firstpost.com/wp-content/uploads/2017/06/psyuplift.jpg\" alt=\"psyuplift\" width=\"825\" height=\"500\" style=\"margin: 0px; padding: 0px; -webkit-font-smoothing: subpixel-antialiased; background-position: center center; background-repeat: no-repeat; background-size: cover; display: inline-block; width: 860.004px; height: auto;\"></a></p><p style=\"margin-bottom: 15px; padding: 0px; -webkit-font-smoothing: subpixel-antialiased; font-family: &quot;Frank Ruhl Libre&quot;, Georgia, serif; touch-action: manipulation; font-size: 1.5em; line-height: 1.75em; color: rgb(51, 51, 51);\"><span style=\"margin: 0px; padding: 0px; -webkit-font-smoothing: subpixel-antialiased; font-weight: 700; touch-action: manipulation;\">12. Blood storage</span></p><p style=\"margin-bottom: 15px; padding: 0px; -webkit-font-smoothing: subpixel-antialiased; font-family: &quot;Frank Ruhl Libre&quot;, Georgia, serif; touch-action: manipulation; font-size: 1.5em; line-height: 1.75em; color: rgb(51, 51, 51);\">There is no other method to manufacture blood; the only way to collect blood is from the people who are willing to donate. The blood that we donate is also stored at the blood bank after their usage and used in future when needed. Some chemicals are added to it in order to preserve it for long time and use it in future when needed.</p><p style=\"margin-bottom: 15px; padding: 0px; -webkit-font-smoothing: subpixel-antialiased; font-family: &quot;Frank Ruhl Libre&quot;, Georgia, serif; touch-action: manipulation; font-size: 1.5em; line-height: 1.75em; color: rgb(51, 51, 51);\"><a href=\"https://images.firstpost.com/wp-content/uploads/2017/06/Bloodstorage.jpg\" style=\"margin: 0px; padding: 0px; -webkit-font-smoothing: subpixel-antialiased; color: rgb(237, 40, 36); cursor: pointer; touch-action: manipulation;\"><img class=\"alignnone size-full wp-image-3594333\" src=\"https://images.firstpost.com/optimize/7FQw85w6-DH7VVUVeRi1VABieA4=/images.firstpost.com/wp-content/uploads/2017/06/Bloodstorage.jpg\" alt=\"Bloodstorage\" width=\"825\" height=\"500\" style=\"margin: 0px; padding: 0px; -webkit-font-smoothing: subpixel-antialiased; background-position: center center; background-repeat: no-repeat; background-size: cover; display: inline-block; width: 860.004px; height: auto;\"></a></p><p style=\"margin-bottom: 15px; padding: 0px; -webkit-font-smoothing: subpixel-antialiased; font-family: &quot;Frank Ruhl Libre&quot;, Georgia, serif; touch-action: manipulation; font-size: 1.5em; line-height: 1.75em; color: rgb(51, 51, 51);\"><span style=\"margin: 0px; padding: 0px; -webkit-font-smoothing: subpixel-antialiased; font-weight: 700; touch-action: manipulation;\">&nbsp;13.&nbsp;</span><span style=\"margin: 0px; padding: 0px; -webkit-font-smoothing: subpixel-antialiased; font-weight: 700; touch-action: manipulation;\">Save lives</span></p><p style=\"margin-bottom: 15px; padding: 0px; -webkit-font-smoothing: subpixel-antialiased; font-family: &quot;Frank Ruhl Libre&quot;, Georgia, serif; touch-action: manipulation; font-size: 1.5em; line-height: 1.75em; color: rgb(51, 51, 51);\">Every time we donate one pint of blood it helps save three lives, so if we donate four times in a year we end up saving 12 lives. We don’t have to be a superhero to save someone, a simple act of donating blood can also save lives.</p>'),
(3, 'About Us ', 'aboutus', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat</span>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblblooddonars`
--
ALTER TABLE `tblblooddonars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbloodgroup`
--
ALTER TABLE `tblbloodgroup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblblooddonars`
--
ALTER TABLE `tblblooddonars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tblbloodgroup`
--
ALTER TABLE `tblbloodgroup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
