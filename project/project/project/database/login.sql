-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 28, 2019 at 03:59 AM
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
-- Database: `login`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` INT(11) NOT NULL AUTO_INCREMENT UNIQUE,
  `cnic` varchar(255) NOT NULL UNIQUE PRIMARY KEY,
  `password` varchar(255) NOT NULL UNIQUE,
  `role` INT (1) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
 
  
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE districts (
    distId int(11) NOT NULL AUTO_INCREMENT UNIQUE,
    distName VARCHAR(225) NOT NULL,
    distInfo varchar(255)  DEFAULT "empty",
    PRIMARY KEY (distId)
);

CREATE TABLE colleges (
    collegeId int(11) NOT NULL AUTO_INCREMENT UNIQUE,
    collegeName VARCHAR(225) NOT NULL,
    collegeInfo varchar(255)  DEFAULT "empty",
    distId int(11) NOT NULL,

    PRIMARY KEY (collegeId),
    
    FOREIGN KEY (collegeId) REFERENCES districts(distId)
);
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `cnic`, `password`, `role`, `created_at`) VALUES
(1, "3202008080808987987", SHA1('1234'), 4, '2019-09-19 15:35:25'),
(2, 'bash2', '1235', 'director', '2019-09-19 15:35:25'),
(3, 'bash3', '1236', 'secretary', '2019-09-19 15:35:25'),
(9, 'ali', 'ali123', 'admin', '2019-09-19 15:43:39'),
(10, 'ali2', '1111', 'director', '2019-09-19 22:56:17'),
(11, 'admin', 'admin', 'admin', '2019-09-19 23:07:35'),
(13, 'tahseen', 'q123456', 'focal-person', '2019-09-20 12:22:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
