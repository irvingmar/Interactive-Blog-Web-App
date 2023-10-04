-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 04, 2023 at 11:14 AM
-- Server version: 8.0.34
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `marmole7_finalproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogposts`
--

CREATE TABLE `blogposts` (
  `blogpost_id` int NOT NULL,
  `user_id` int NOT NULL,
  `blogpost_title` varchar(255) NOT NULL,
  `blogpost_body` text NOT NULL,
  `blogpost_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blogposts`
--

INSERT INTO `blogposts` (`blogpost_id`, `user_id`, `blogpost_title`, `blogpost_body`, `blogpost_timestamp`) VALUES
(1, 0, 'Axolotl', 'colors', '2023-05-03 18:51:11'),
(10, 3, 'Favorite City\'s', 'Leon, Gto\r\nTokyo, Japan', '2023-05-04 17:07:02'),
(3, 0, 'Vehicles', 'LFA', '2023-05-03 18:52:39'),
(4, 3, 'info 440', 'tough tough', '2023-05-03 19:30:16'),
(11, 3, 'favorite food', 'taco', '2023-05-04 17:31:36'),
(13, 3, 'test', 'test', '2023-05-20 01:14:51'),
(9, 3, 'webdesign', 'I like this class', '2023-05-04 16:16:33');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int NOT NULL,
  `user_id` int NOT NULL,
  `blogpost_id` int NOT NULL,
  `comment_body` text NOT NULL,
  `comment_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `user_id`, `blogpost_id`, `comment_body`, `comment_timestamp`) VALUES
(1, 0, 1, 'Beatiful', '2023-05-03 18:56:38'),
(2, 0, 2, 'Amazing', '2023-05-03 18:57:03'),
(3, 0, 3, 'My favorite car.', '2023-05-03 18:57:26'),
(4, 1, 2, 'noice', '2023-05-03 19:26:30'),
(5, 3, 4, 'very good', '2023-05-04 16:15:41'),
(6, 4, 11, '', '2023-05-20 01:13:39'),
(7, 4, 11, 'aasa', '2023-05-20 01:13:41');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pass` char(64) NOT NULL,
  `registration_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `first_name`, `last_name`, `email`, `pass`, `registration_date`) VALUES
(1, 'Jose', 'Lopez', 'Joselopez@gmail.com', 'd74ff0ee8da3b9806b18c877dbf29bbde50b5bd8e4dad7a3a725000feb82e8f1', '2023-05-03 19:03:06'),
(2, 'Rafiq', 'Ramat', 'Rafiq@gmail.com', 'd74ff0ee8da3b9806b18c877dbf29bbde50b5bd8e4dad7a3a725000feb82e8f1', '2023-05-03 19:04:17'),
(3, 'Irving', 'Mar', 'Irving@gmail.com', 'd74ff0ee8da3b9806b18c877dbf29bbde50b5bd8e4dad7a3a725000feb82e8f1', '2023-05-03 19:04:48'),
(4, 'as', 'a', 'asdf', 'f0e4c2f76c58916ec258f246851bea091d14d4247a2fc3e18694461b1816e13b', '2023-05-20 01:13:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogposts`
--
ALTER TABLE `blogposts`
  ADD PRIMARY KEY (`blogpost_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `user_id` (`user_id`,`blogpost_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogposts`
--
ALTER TABLE `blogposts`
  MODIFY `blogpost_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
