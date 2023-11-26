-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 05, 2021 at 01:45 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.3.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `SHRC`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `password` text DEFAULT NULL,
  `token` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`, `token`) VALUES
(1, 'coyboy', NULL, '$2a$10$c4BnWyqRcKRHdkjjDoH6dOe/H9.szWmOqLIqukzF9/nj9hUWhxg3i', NULL),
(7, 'coyboy1', 'coyboy1@gmail.com', '$2a$10$yOH4BIAC9ZIpQE/U7D060OEgz.aOC95/VfnuVcjOMGqJ9JshJe3ke', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NywiaWF0IjoxNjMwNjAzMTU5LCJleHAiOjE2MzA2MTMxNTl9.hJgBpintiLwzkDOFo9FdFr3VkR4tqdm2nElvTAzLC0U'),
(8, 'coyboy2', 'coyboy2@gmail.com', '$2a$10$EvdZl5xHjKhUATGqQrHz6O2GxmDibIL0CvBBsmNYPvFdTzBe7Hm12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `affectedLimb`
--

CREATE TABLE `affectedLimb` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `affectedLimb`
--

INSERT INTO `affectedLimb` (`id`, `name`) VALUES
(14, 'Head'),
(15, 'Neck'),
(16, 'Chest'),
(17, 'Abdomen'),
(18, 'Back'),
(19, 'Lower Limb'),
(20, 'Hip'),
(21, 'Shoulder'),
(22, 'Elbow'),
(23, 'Wrist'),
(24, 'Knee'),
(25, 'Ankle'),
(26, 'Upper Limb');

-- --------------------------------------------------------

--
-- Table structure for table `affectedLimbInjuredSidePatient`
--

CREATE TABLE `affectedLimbInjuredSidePatient` (
  `id` int(11) NOT NULL,
  `patientID` int(11) DEFAULT NULL,
  `affectedLimbID` int(11) DEFAULT NULL,
  `injuredSideID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `affectedLimbInjuredSidePatient`
--

INSERT INTO `affectedLimbInjuredSidePatient` (`id`, `patientID`, `affectedLimbID`, `injuredSideID`) VALUES
(115, 5, 15, 240),
(118, 5, 14, 240),
(125, 5, 16, 240),
(127, 5, 15, 3),
(128, 5, 14, 3),
(129, NULL, 14, 240),
(130, NULL, 18, 240),
(131, NULL, 16, 3),
(133, 19, 14, 240),
(134, 19, 16, 3),
(135, 20, 16, 240),
(136, 21, 22, 3),
(137, 23, 14, 240),
(138, 23, 16, 3),
(139, 5, 22, 3),
(140, 15, 26, 240),
(141, 15, 24, 3),
(142, 24, 14, 240),
(143, 24, 17, 3);

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `date` text DEFAULT NULL,
  `time` time DEFAULT NULL,
  `sessionNb` int(11) DEFAULT NULL,
  `patientID` int(11) DEFAULT NULL,
  `txID` int(11) DEFAULT NULL,
  `doctorID` int(11) DEFAULT NULL,
  `paymentMethodID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `date`, `time`, `sessionNb`, `patientID`, `txID`, `doctorID`, `paymentMethodID`) VALUES
(6, '2021-08-10', '14:48:00', 2, 5, 2, 2, 2),
(10, '2021-08-18', '18:03:00', NULL, 18, 2, 2, 2),
(14, '2021-09-01', '10:00:00', 1, 18, 1, 6, 2),
(15, '2021-09-08', '16:24:30', NULL, 5, NULL, NULL, NULL),
(17, '2021-09-08', '16:24:30', NULL, 5, NULL, NULL, NULL),
(18, '2021-09-08', '16:24:30', NULL, 5, NULL, NULL, NULL),
(21, '2021-09-07', '16:24:30', NULL, 5, NULL, NULL, NULL),
(22, '2021-08-27', '22:18:30', NULL, 5, NULL, NULL, NULL),
(27, '2021-08-29', '22:18:30', NULL, 5, NULL, NULL, NULL),
(28, '2021-08-30', '22:18:30', 2, 5, 7, 15, 2),
(32, '2021-08-30', '22:18:30', 3, 5, 7, 14, 2),
(33, '2021-08-29', '16:23:30', 2, 5, 7, 2, 2),
(37, '2021-09-07', '10:30:00', 2, 19, 2, 15, 2),
(39, '2021-08-10', '18:18:30', NULL, 5, NULL, NULL, NULL),
(40, '2021-09-02', '09:00:00', 2, 24, 7, 6, 2);

-- --------------------------------------------------------

--
-- Table structure for table `dailyTX`
--

CREATE TABLE `dailyTX` (
  `id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `note` text DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `affectedID` int(11) DEFAULT NULL,
  `injuredSideID` int(11) DEFAULT NULL,
  `txID` int(11) DEFAULT NULL,
  `diagnosisID` int(11) DEFAULT NULL,
  `toolID` int(11) DEFAULT NULL,
  `patientID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dailyTX`
--

INSERT INTO `dailyTX` (`id`, `date`, `note`, `rating`, `affectedID`, `injuredSideID`, `txID`, `diagnosisID`, `toolID`, `patientID`) VALUES
(64, '2021-09-26', 'aaj', 3, 17, 3, 2, 7, 1, 5),
(68, '2021-08-30', 'good', 3, 16, 240, 2, 1, 1, 19),
(69, '2021-09-02', 'done', 4, 17, 3, 7, 6, 1, 24);

-- --------------------------------------------------------

--
-- Table structure for table `diagnosis`
--

CREATE TABLE `diagnosis` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `diagnosis`
--

INSERT INTO `diagnosis` (`id`, `name`) VALUES
(1, 'shoulder pain'),
(2, 'leg pain'),
(6, 'abdomen'),
(7, 'foot pain'),
(8, 'chest pain'),
(9, 'head affect');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `phoneNumber` int(11) DEFAULT NULL,
  `percentage` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`id`, `name`, `phoneNumber`, `percentage`) VALUES
(2, 'fakher abu hamda', 506020, 30),
(6, 'elie saade', 3333333, 5),
(14, 'mohamad ahmad', 2, 5),
(15, 'fadi nabbut', 70809060, 2),
(16, 'saad halime', 3506040, 100),
(17, 'omar abu hamda', 70080900, 20);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `timeIN` time DEFAULT NULL,
  `timeOUT` time DEFAULT NULL,
  `totalHours` double DEFAULT NULL,
  `email` text DEFAULT NULL,
  `password` text DEFAULT NULL,
  `subAdmin` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `injuredSide`
--

CREATE TABLE `injuredSide` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `injuredSide`
--

INSERT INTO `injuredSide` (`id`, `name`) VALUES
(3, 'left1'),
(240, 'right1');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `id` int(11) NOT NULL,
  `firstName` text DEFAULT NULL,
  `lastName` text DEFAULT NULL,
  `fatherName` text DEFAULT NULL,
  `motherName` text DEFAULT NULL,
  `spouseFamily` text DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `dateCreation` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `jobOccupation` text DEFAULT NULL,
  `city` text DEFAULT NULL,
  `nationality` text DEFAULT NULL,
  `mobileNumber` text DEFAULT NULL,
  `homeNumber` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `sex` text DEFAULT NULL,
  `blood` text DEFAULT NULL,
  `status` text DEFAULT NULL,
  `report` text DEFAULT NULL,
  `totalSession` int(11) DEFAULT 0,
  `insurance` text DEFAULT NULL,
  `religion` text DEFAULT NULL,
  `name` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `firstName`, `lastName`, `fatherName`, `motherName`, `spouseFamily`, `birthday`, `dateCreation`, `time`, `jobOccupation`, `city`, `nationality`, `mobileNumber`, `homeNumber`, `email`, `address`, `weight`, `height`, `sex`, `blood`, `status`, `report`, `totalSession`, `insurance`, `religion`, `name`) VALUES
(5, 'samib', 'd', 'omar1', 'joe', 'ma3louf', '2021-02-01', '2021-08-05', '16:18:30', 'manager ', 'tripoli', 'lebanese', '405060300', '26504080', 'fadi@gmail.com', '4372 Rockford Mountain Lane e', 50, 200, 'male', 'B-', 'Seperated', 'aaa', 3, NULL, 'Christian', 'undefined undefined'),
(8, 'aaan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'aaan aaan'),
(9, 'c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(10, 'baraaaaaaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(11, 'www', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(12, 'wwwz', 'fdd', 'aaaa', 'aaa', 'asas', '2021-08-31', NULL, NULL, 'asas', 'asaas', 'qqq', '40506080', '405060879', 'asas', 'ccddc', 8, 4, 'female', 'B+', 'Single', NULL, 0, 'zxzccxvvc', 'Christian', NULL),
(13, 'jj', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aaaaaadd', 0, NULL, NULL, NULL),
(14, 'lk', 'aad', 'sa', 'ss', 's2', '2021-08-31', NULL, NULL, '2', '22', '2', '-1', '2', '2', '2', 1, 2, 'male', 'B+', 'Single', NULL, 0, '2', 'Christian', NULL),
(15, 'ashraf5', 'haydar', NULL, NULL, NULL, '2021-08-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(18, 'mari', 'hanna', 'joe', 'hanna', 'eli', '2021-09-06', NULL, NULL, 'programmer', 'lebanon', 'lebaneese', '70430287', '70456598', 'coyboy@gmail.com', 'mar ilias', 31, 50, 'male', 'B-', 'Married', NULL, 2, 'visa', 'Muslim', NULL),
(19, 'baraa', 'abuhamda', 'fadi', 'hanna', NULL, '2021-08-25', NULL, NULL, 'programmer', NULL, NULL, '75060808', '4050607', NULL, NULL, 64, 178, 'male', NULL, 'Single', 'the patient is done his therapy\na\na\na', 1, NULL, 'Muslim', 'undefined undefined'),
(20, 'joe', 'fadi', 'aaaa', NULL, NULL, '2021-02-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'male', NULL, NULL, NULL, 0, NULL, 'Christian', 'undefined undefined'),
(21, 'sami', 'abu hamda', NULL, NULL, NULL, '2021-02-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'female', 'AB-', NULL, NULL, 0, NULL, NULL, 'undefined undefined'),
(22, 'sara', 'salam', NULL, NULL, NULL, '2021-02-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 169, 'female', 'A+', NULL, NULL, 0, NULL, 'Christian', 'undefined undefined'),
(23, 'baraa', 'fadi', NULL, NULL, NULL, '2021-02-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'male', NULL, NULL, 'thi patient will be good', 0, NULL, NULL, 'undefined undefined'),
(24, 'omar', 'abdallah', 'othman', NULL, NULL, '1996-10-10', NULL, NULL, 'programmer', 'mshmsh', 'lebanees', '79175660', '0675421', 'omar@gmail.com', 'had ljemee3....', 70, 170, 'male', 'O+', 'Single', 'omar has ....', 1, 'USAID', 'Muslim', 'undefined undefined');

-- --------------------------------------------------------

--
-- Table structure for table `patientDiagnosis`
--

CREATE TABLE `patientDiagnosis` (
  `id` int(11) NOT NULL,
  `patientID` int(11) DEFAULT NULL,
  `diagnosisID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patientDiagnosis`
--

INSERT INTO `patientDiagnosis` (`id`, `patientID`, `diagnosisID`) VALUES
(29, 19, 1),
(30, 20, 8),
(31, 23, 1),
(41, 5, 1),
(42, 15, 7),
(47, 5, 2),
(49, 24, 7);

-- --------------------------------------------------------

--
-- Table structure for table `paymentMethod`
--

CREATE TABLE `paymentMethod` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `paymentMethod`
--

INSERT INTO `paymentMethod` (`id`, `name`) VALUES
(1, 'visa'),
(2, 'cash');

-- --------------------------------------------------------

--
-- Table structure for table `physicl`
--

CREATE TABLE `physicl` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `physicl`
--

INSERT INTO `physicl` (`id`, `name`) VALUES
(1, 'Sedentary (None)'),
(4, 'Active (1-2 Times)'),
(5, 'Athletic (3 Times or more)');

-- --------------------------------------------------------

--
-- Table structure for table `physPatient`
--

CREATE TABLE `physPatient` (
  `id` int(11) NOT NULL,
  `physID` int(11) DEFAULT NULL,
  `patientID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `physPatient`
--

INSERT INTO `physPatient` (`id`, `physID`, `patientID`) VALUES
(61, 1, 19),
(62, 1, 20),
(63, 1, 23),
(64, 5, 15),
(65, 5, 5),
(66, 1, 24);

-- --------------------------------------------------------

--
-- Table structure for table `smoking`
--

CREATE TABLE `smoking` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `smoking`
--

INSERT INTO `smoking` (`id`, `name`) VALUES
(15, 'Non Smoker'),
(16, '0-10 Cigarettes Daily'),
(17, '10-20 Cigarettes Daily'),
(18, '20+ Cigarettes Daily'),
(19, '1-2 Hookah Weekly'),
(20, '2-4 Hookah Weekly'),
(21, '4+ Hookah Weekly');

-- --------------------------------------------------------

--
-- Table structure for table `smokingPatient`
--

CREATE TABLE `smokingPatient` (
  `id` int(11) NOT NULL,
  `smokingID` int(11) DEFAULT NULL,
  `patientID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `smokingPatient`
--

INSERT INTO `smokingPatient` (`id`, `smokingID`, `patientID`) VALUES
(6, 15, 5),
(7, 17, 19),
(8, 15, 20),
(9, 15, 23),
(10, 20, 15),
(11, 15, 24);

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id` int(11) NOT NULL,
  `fileSrc` text DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`id`, `fileSrc`, `description`) VALUES
(71, 'fileSrc-1629272199298-SHRC_UI.pdf', 'this project can be....'),
(72, 'fileSrc-1629272213711-Untitled Diagram.pdf', 'uwegduydWJ'),
(73, 'fileSrc-1630312396194-Untitled Diagram.pdf', 'this project can be....'),
(74, 'fileSrc-1629272489275-SHRC_UI.pdf', 'this project can be....'),
(75, 'fileSrc-1629272595428-SHRC_UI.pdf', 'this project can be....'),
(76, 'fileSrc-1629272643524-SHRC_UI.pdf', 'this project can be....'),
(77, 'fileSrc-1629272711346-SHRC_UI.pdf', 'this project can be....'),
(78, 'fileSrc-1630240368010-Untitled Diagram.pdf', 'this project have ....'),
(79, 'fileSrc-1630306952943-UserStory-ProjectBrief-Proposal.docx', 'this project can ...'),
(80, 'fileSrc-1629273166150-Untitled Diagram.pdf', 'adddddd'),
(81, 'fileSrc-1629556251279-download.png', 'MVVM'),
(82, 'fileSrc-1629656474197-Nadine El Mohmd cv.docx', 'this project can be....'),
(85, 'fileSrc-1630240388174-SHRC_UI.pdf', 'SHRC'),
(86, 'fileSrc-1630240446285-Untitled Diagram (1).jpg', 'asa'),
(87, 'fileSrc-1630240486034-Untitled Diagram (1).jpg', 'asa'),
(88, 'fileSrc-1630240543414-SHRC_UI.pdf', 'this project can be....'),
(91, 'fileSrc-1630301106681-Untitled Diagram.pdf', 'this project have ....'),
(93, 'fileSrc-1630301169734-Untitled Diagram.pdf', 'this project can be....'),
(96, 'fileSrc-1630307002797-Untitled Diagram.jpg', 'this project can be....'),
(104, 'fileSrc-1630605797300-fileSrc-1629186779475-fakher (1).docx', 'this ..'),
(105, 'fileSrc-1630605806941-Screenshot from 2021-09-01 15-09-34.png', 'www');

-- --------------------------------------------------------

--
-- Table structure for table `testType`
--

CREATE TABLE `testType` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `testType`
--

INSERT INTO `testType` (`id`, `name`) VALUES
(1, 'history'),
(4, 'thermalPhoto'),
(5, 'thermalPhoto0000'),
(6, 'thermal111111'),
(7, 'cv');

-- --------------------------------------------------------

--
-- Table structure for table `testTypeTest`
--

CREATE TABLE `testTypeTest` (
  `id` int(11) NOT NULL,
  `testID` int(11) DEFAULT NULL,
  `testTypeID` int(11) DEFAULT NULL,
  `patientID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `testTypeTest`
--

INSERT INTO `testTypeTest` (`id`, `testID`, `testTypeID`, `patientID`) VALUES
(8, NULL, 1, 5),
(9, NULL, 1, 5),
(10, NULL, 1, 5),
(11, NULL, 1, 5),
(14, NULL, 1, 5),
(40, 73, 1, 5),
(41, 78, 4, 5),
(42, 79, 5, 5),
(43, 80, 6, 5),
(44, 81, 6, 5),
(45, 82, 7, 5),
(48, 85, 7, 5),
(49, 88, 5, 5),
(52, 91, 1, 19),
(54, 93, 5, 19),
(57, 96, 1, 5),
(65, 104, 1, 24),
(66, 105, 6, 24);

-- --------------------------------------------------------

--
-- Table structure for table `tool`
--

CREATE TABLE `tool` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tool`
--

INSERT INTO `tool` (`id`, `name`) VALUES
(1, 'machine'),
(6, 'machine2');

-- --------------------------------------------------------

--
-- Table structure for table `tx`
--

CREATE TABLE `tx` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tx`
--

INSERT INTO `tx` (`id`, `name`, `price`) VALUES
(1, 'tx2', 2333),
(2, 'Rp', 20000),
(7, 'TX55', 120000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `affectedLimb`
--
ALTER TABLE `affectedLimb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `affectedLimbInjuredSidePatient`
--
ALTER TABLE `affectedLimbInjuredSidePatient`
  ADD PRIMARY KEY (`id`),
  ADD KEY `patientID` (`patientID`),
  ADD KEY `injuredSideID` (`injuredSideID`),
  ADD KEY `affectedLimbID` (`affectedLimbID`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `drID` (`doctorID`),
  ADD KEY `txIDD` (`txID`),
  ADD KEY `patientID1` (`patientID`);

--
-- Indexes for table `dailyTX`
--
ALTER TABLE `dailyTX`
  ADD PRIMARY KEY (`id`),
  ADD KEY `toolID` (`toolID`),
  ADD KEY `diagnosisID` (`diagnosisID`),
  ADD KEY `affectedID` (`affectedID`),
  ADD KEY `patientIDD` (`patientID`),
  ADD KEY `injuredIDD` (`injuredSideID`),
  ADD KEY `tx_dailyTX` (`txID`);

--
-- Indexes for table `diagnosis`
--
ALTER TABLE `diagnosis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `injuredSide`
--
ALTER TABLE `injuredSide`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patientDiagnosis`
--
ALTER TABLE `patientDiagnosis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `patientDiagnosisID` (`diagnosisID`),
  ADD KEY `diagnosisPatientID` (`patientID`);

--
-- Indexes for table `paymentMethod`
--
ALTER TABLE `paymentMethod`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `physicl`
--
ALTER TABLE `physicl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `physPatient`
--
ALTER TABLE `physPatient`
  ADD PRIMARY KEY (`id`),
  ADD KEY `patientPhysID` (`physID`),
  ADD KEY `physPatientID` (`patientID`);

--
-- Indexes for table `smoking`
--
ALTER TABLE `smoking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smokingPatient`
--
ALTER TABLE `smokingPatient`
  ADD PRIMARY KEY (`id`),
  ADD KEY `smokingPatientID` (`patientID`),
  ADD KEY `patientSmokingID` (`smokingID`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testType`
--
ALTER TABLE `testType`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testTypeTest`
--
ALTER TABLE `testTypeTest`
  ADD PRIMARY KEY (`id`),
  ADD KEY `testTypeID` (`testTypeID`),
  ADD KEY `patientID2` (`patientID`),
  ADD KEY `testID` (`testID`);

--
-- Indexes for table `tool`
--
ALTER TABLE `tool`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tx`
--
ALTER TABLE `tx`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `affectedLimb`
--
ALTER TABLE `affectedLimb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `affectedLimbInjuredSidePatient`
--
ALTER TABLE `affectedLimbInjuredSidePatient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `dailyTX`
--
ALTER TABLE `dailyTX`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `diagnosis`
--
ALTER TABLE `diagnosis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `injuredSide`
--
ALTER TABLE `injuredSide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=244;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `patientDiagnosis`
--
ALTER TABLE `patientDiagnosis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `paymentMethod`
--
ALTER TABLE `paymentMethod`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `physicl`
--
ALTER TABLE `physicl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `physPatient`
--
ALTER TABLE `physPatient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `smoking`
--
ALTER TABLE `smoking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `smokingPatient`
--
ALTER TABLE `smokingPatient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `testType`
--
ALTER TABLE `testType`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `testTypeTest`
--
ALTER TABLE `testTypeTest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `tool`
--
ALTER TABLE `tool`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tx`
--
ALTER TABLE `tx`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `affectedLimbInjuredSidePatient`
--
ALTER TABLE `affectedLimbInjuredSidePatient`
  ADD CONSTRAINT `affectedLimbID` FOREIGN KEY (`affectedLimbID`) REFERENCES `affectedLimb` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `injuredSideID` FOREIGN KEY (`injuredSideID`) REFERENCES `injuredSide` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `patientID` FOREIGN KEY (`patientID`) REFERENCES `patient` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `appointment`
--
ALTER TABLE `appointment`
  ADD CONSTRAINT `drID` FOREIGN KEY (`doctorID`) REFERENCES `doctor` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `patientID1` FOREIGN KEY (`patientID`) REFERENCES `patient` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `txIDD` FOREIGN KEY (`txID`) REFERENCES `tx` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `dailyTX`
--
ALTER TABLE `dailyTX`
  ADD CONSTRAINT `affectedID` FOREIGN KEY (`affectedID`) REFERENCES `affectedLimb` (`id`),
  ADD CONSTRAINT `diagnosisID` FOREIGN KEY (`diagnosisID`) REFERENCES `diagnosis` (`id`),
  ADD CONSTRAINT `injuredIDD` FOREIGN KEY (`injuredSideID`) REFERENCES `injuredSide` (`id`),
  ADD CONSTRAINT `patientIDD` FOREIGN KEY (`patientID`) REFERENCES `patient` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `toolID` FOREIGN KEY (`toolID`) REFERENCES `tool` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `tx_dailyTX` FOREIGN KEY (`txID`) REFERENCES `tx` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `patientDiagnosis`
--
ALTER TABLE `patientDiagnosis`
  ADD CONSTRAINT `diagnosisPatientID` FOREIGN KEY (`patientID`) REFERENCES `patient` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `patientDiagnosisID` FOREIGN KEY (`diagnosisID`) REFERENCES `diagnosis` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `physPatient`
--
ALTER TABLE `physPatient`
  ADD CONSTRAINT `physPatientID` FOREIGN KEY (`patientID`) REFERENCES `patient` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `smokingPatient`
--
ALTER TABLE `smokingPatient`
  ADD CONSTRAINT `patientSmokingID` FOREIGN KEY (`smokingID`) REFERENCES `smoking` (`id`),
  ADD CONSTRAINT `smokingPatientID` FOREIGN KEY (`patientID`) REFERENCES `patient` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `testTypeTest`
--
ALTER TABLE `testTypeTest`
  ADD CONSTRAINT `patientID2` FOREIGN KEY (`patientID`) REFERENCES `patient` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `testID` FOREIGN KEY (`testID`) REFERENCES `test` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `testTypeID` FOREIGN KEY (`testTypeID`) REFERENCES `testType` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
