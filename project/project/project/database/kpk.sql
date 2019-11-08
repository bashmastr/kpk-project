-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 01, 2019 at 06:40 PM
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
-- Table structure for table `colleges`
--

CREATE TABLE `colleges` (
  `collegeId` int(11) NOT NULL,
  `collegeName` varchar(225) NOT NULL,
  `collegeInfo` varchar(255) DEFAULT 'empty',
  `distId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `colleges`
--

INSERT INTO `colleges` (`collegeId`, `collegeName`, `collegeInfo`, `distId`) VALUES
(1, 'peshwar-college', 'empty', 1),
(2, 'mardan-college', 'empty', 3),
(3, 'charsada-college', 'empty', 4);

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `distId` int(11) NOT NULL,
  `distName` varchar(225) NOT NULL,
  `distInfo` varchar(255) DEFAULT 'empty'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`distId`, `distName`, `distInfo`) VALUES
(1, 'peshawar', 'empty'),
(2, 'peshawar', 'empty'),
(3, 'mardan', 'empty'),
(4, 'charsada', 'empty');

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
-- Indexes for table `colleges`
--
ALTER TABLE `colleges`
  ADD PRIMARY KEY (`collegeId`),
  ADD UNIQUE KEY `collegeId` (`collegeId`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`distId`),
  ADD UNIQUE KEY `distId` (`distId`);

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
-- AUTO_INCREMENT for table `colleges`
--
ALTER TABLE `colleges`
  MODIFY `collegeId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `distId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `colleges`
--
ALTER TABLE `colleges`
  ADD CONSTRAINT `colleges_ibfk_1` FOREIGN KEY (`collegeId`) REFERENCES `districts` (`distId`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



-- get districts : it will return all districts from table
select distName from districts;
 

-- change value 4 according to districts required college to extract all colleges in selected districts
select collegeName from colleges where colleges.distId = 4;

