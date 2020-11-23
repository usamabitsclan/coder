-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2020 at 03:18 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crud`
--

-- --------------------------------------------------------

--
-- Table structure for table `car_models`
--

CREATE TABLE `car_models` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` double NOT NULL,
  `transmission` enum('Approved','NotApproved') NOT NULL,
  `color` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `car_models`
--

INSERT INTO `car_models` (`id`, `name`, `price`, `transmission`, `color`, `created_at`, `updated_at`) VALUES
(28, 'yes ', 123123, 'Approved', 'mes', '2020-11-19 09:53:15', '2020-11-20 15:22:26'),
(29, 'last', 123123, 'NotApproved', 'red', '2020-11-19 10:14:41', '2020-11-20 15:32:44'),
(30, 'dy dea', 213123, 'Approved', 'ly lia', '2020-11-20 07:52:35', '2020-11-20 07:52:59'),
(32, 'aaa', 0, 'NotApproved', 'aaa', '2020-11-20 11:08:54', '2020-11-20 11:08:54'),
(33, 'aaaa', 0, 'NotApproved', 'aaa', '2020-11-20 11:09:12', '2020-11-20 11:09:12'),
(34, 'as', 12, 'Approved', 'as', '2020-11-20 11:10:06', '2020-11-20 11:10:06'),
(35, 'sa', 0, 'Approved', 'sa', '2020-11-20 11:10:19', '2020-11-20 11:10:19'),
(36, 'Usama', 123123, 'Approved', 'Blue', '2020-11-20 15:22:53', '2020-11-20 15:22:53'),
(37, 'Hello', 123123, 'NotApproved', 'REDESR', '2020-11-20 15:30:46', '2020-11-20 15:30:46');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `start_event` datetime NOT NULL,
  `end_event` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `start_event`, `end_event`) VALUES
(1, 'Meeting with Mike', '2019-11-08 12:00:00', '2019-11-08 13:00:00'),
(4, 'Meeting with Mike', '2019-11-11 15:30:00', '2019-11-11 16:30:00'),
(5, 'hey', '2020-11-12 00:00:00', '2020-11-13 00:00:00'),
(6, 'hi', '2020-11-11 06:00:00', '2020-11-12 01:00:00'),
(9, 'ahlajsd', '2020-11-01 00:00:00', '2020-11-06 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(11) NOT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `uploaded_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `file_name`, `uploaded_on`) VALUES
(2, 'Laravel-best-PHP-Framework-1568x1045_(1)2.jpg', '2020-11-16 11:35:40'),
(3, 'Laravel-best-PHP-Framework-1568x1045_(1)3.jpg', '2020-11-17 16:15:48'),
(4, 'SEO1.png', '2020-11-17 16:16:20');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_role` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(60) NOT NULL,
  `password` varchar(50) NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_role`, `name`, `email`, `password`, `created_at`) VALUES
(4, 2, '1', '1@gmail.com', '123123', '2020-11-13'),
(5, 2, 'Usama', 'Usama@gmail.com', '123123', '2020-11-13'),
(6, 1, '2', '2@gmail.com', '123123', '2020-11-13'),
(7, 2, 'User Role', 'UserRole@gmail.com', '123123', '2020-11-13'),
(8, 2, 'Usama`', '123@gmail.com', '123123', '2020-11-13'),
(9, 2, 'Junaid', 'junaid@bitsclan.com', 'admin123', '2020-11-13'),
(10, 2, 'Sohail Khan', 'sohail@mail.com', '123456789', '2020-11-13'),
(11, 2, 'DataTables', 'Datatable@gmail.com', '123123', '2020-11-16'),
(12, 2, 'hello', 'MAILING@GMAIL.COM', '123123', '2020-11-16'),
(14, 2, 'ARSLANNNNN', 'pappi@gmail.com', '123123', '2020-11-20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `car_models`
--
ALTER TABLE `car_models`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `car_models`
--
ALTER TABLE `car_models`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
