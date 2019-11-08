-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 03, 2019 at 11:55 AM
-- Server version: 5.7.27-0ubuntu0.18.04.1
-- PHP Version: 7.2.19-0ubuntu0.18.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kpk`
--

-- --------------------------------------------------------

--
-- Table structure for table `applicationForm`
--

CREATE TABLE `applicationForm` (
  `applicationId` int(5) NOT NULL,
  `cnic` int(13) DEFAULT NULL,
  `currDist` int(4) DEFAULT NULL,
  `currClg` int(4) DEFAULT NULL,
  `desDist1` int(4) DEFAULT NULL,
  `desDist2` int(4) DEFAULT NULL,
  `decDist3` int(4) DEFAULT NULL,
  `desClg1` int(4) DEFAULT NULL,
  `desClg2` int(4) DEFAULT NULL,
  `desClg3` int(4) DEFAULT NULL,
  `medical` varchar(30) DEFAULT NULL,
  `disability` varchar(30) DEFAULT NULL,
  `postingDistOfSpouse` varchar(255) DEFAULT NULL,
  `nameOfPrincipal` varchar(30) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `colleges`
--

CREATE TABLE `colleges` (
  `collegeId` int(4) NOT NULL,
  `collegeName` varchar(30) DEFAULT NULL,
  `distId` int(4) DEFAULT NULL,
  `collegeInfo` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `distId` int(4) NOT NULL,
  `distName` varchar(30) DEFAULT NULL,
  `distInfo` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `cnic` int(13) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `fatherName` varchar(30) DEFAULT NULL,
  `domicile` varchar(30) DEFAULT NULL,
  `hardArea` varchar(30) DEFAULT NULL,
  `tenure` varchar(30) DEFAULT NULL,
  `seniority` varchar(30) DEFAULT NULL,
  `attendence` varchar(30) DEFAULT NULL,
  `maritalStatus` varchar(30) DEFAULT NULL,
  `subject` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `cnic` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` int(1) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `cnic`, `password`, `role`, `created_at`) VALUES
(8, '0000', '39dfa55283318d31afe5a3ff4a0e3253e2045e43', 4, '2019-09-28 15:12:45'),
(10, '0001', '7a6779700f09e1eafe9ad40e390f3a15b94dfa4b', 1, '2019-09-28 16:35:08'),
(1, '3202008080808987987', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 4, '2019-09-19 15:35:25'),
(6, '897897-34324', 'aaf4c61ddcc5e8a2dabede0f3b482cd9aea9434d', 3, '2019-09-28 15:11:36'),
(4, '898098', '5323677b3b14889aec730b21e2b8e60c740a0f82', 4, '2019-09-28 15:02:44'),
(2, '98098409328409', 'c2a6b03f190dfb2b4aa91f8af8d477a9bc3401dc', 1, '2019-09-28 14:48:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applicationForm`
--
ALTER TABLE `applicationForm`
  ADD PRIMARY KEY (`applicationId`),
  ADD KEY `currDist` (`currDist`),
  ADD KEY `desDist1` (`desDist1`),
  ADD KEY `desDist2` (`desDist2`),
  ADD KEY `decDist3` (`decDist3`),
  ADD KEY `desClg1` (`desClg1`),
  ADD KEY `desClg2` (`desClg2`),
  ADD KEY `desClg3` (`desClg3`),
  ADD KEY `cnic` (`cnic`);

--
-- Indexes for table `colleges`
--
ALTER TABLE `colleges`
  ADD PRIMARY KEY (`collegeId`),
  ADD KEY `distId` (`distId`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`distId`);

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`cnic`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`cnic`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `cnic` (`cnic`),
  ADD UNIQUE KEY `password` (`password`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `applicationForm`
--
ALTER TABLE `applicationForm`
  ADD CONSTRAINT `applicationForm_ibfk_1` FOREIGN KEY (`currDist`) REFERENCES `districts` (`distId`),
  ADD CONSTRAINT `applicationForm_ibfk_2` FOREIGN KEY (`desDist1`) REFERENCES `districts` (`distId`),
  ADD CONSTRAINT `applicationForm_ibfk_3` FOREIGN KEY (`desDist2`) REFERENCES `districts` (`distId`),
  ADD CONSTRAINT `applicationForm_ibfk_4` FOREIGN KEY (`decDist3`) REFERENCES `districts` (`distId`),
  ADD CONSTRAINT `applicationForm_ibfk_5` FOREIGN KEY (`desClg1`) REFERENCES `colleges` (`collegeId`),
  ADD CONSTRAINT `applicationForm_ibfk_6` FOREIGN KEY (`desClg2`) REFERENCES `colleges` (`collegeId`),
  ADD CONSTRAINT `applicationForm_ibfk_7` FOREIGN KEY (`desClg3`) REFERENCES `colleges` (`collegeId`),
  ADD CONSTRAINT `applicationForm_ibfk_8` FOREIGN KEY (`cnic`) REFERENCES `info` (`cnic`);

--
-- Constraints for table `colleges`
--
ALTER TABLE `colleges`
  ADD CONSTRAINT `colleges_ibfk_1` FOREIGN KEY (`distId`) REFERENCES `districts` (`distId`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
