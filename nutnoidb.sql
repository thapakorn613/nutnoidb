-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2019 at 09:18 PM
-- Server version: 10.3.8-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nutnoidb`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `id` int(10) NOT NULL,
  `project_name` varchar(255) NOT NULL,
  `teacher_id1` int(10) DEFAULT NULL,
  `teacher_id2` int(10) DEFAULT NULL,
  `teacher_id3` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`id`, `project_name`, `teacher_id1`, `teacher_id2`, `teacher_id3`) VALUES
(1, 'Banana Marathon', 1, 2, 3),
(2, 'virtual reality human anatomy', 4, 5, 6),
(3, 'Program to Develop Reading in Junior High School Students with Learning Disability', 5, 4, 1),
(4, ' Fantasy Grand Arena', 5, 6, 1),
(5, 'Learning and Development Application Through PSP', 5, 4, 6),
(6, 'Service Queuing Application', 5, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `teamup` varchar(255) NOT NULL,
  `googlecalendar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id`, `name`, `surname`, `email`, `teamup`, `googlecalendar`) VALUES
(1, 'lachana', '', 'lachana@cmu.com', 'lachana@teamup', 'lachana@gmail.com'),
(2, 'sakgasit', '', 'sakgasit@cmu.com', 'sakgasit@teamup', 'sakgasit@gmail.com'),
(3, 'narissara', '', 'narissara@cmu.com', 'narissara@teamup', 'narissara@gmail.com'),
(4, 'narathip', '', 'narathip@cmu.com', 'narathip@teamup', 'narathip@gmail.com'),
(5, 'juggapong', '', 'juggapong@cmu.com', 'juggapong@teamup', 'juggapong@gmail.com'),
(6, 'patiwet', '', 'patiwet@cmu.com', 'patiwet@teamup', 'patiwet@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `timebooking`
--

CREATE TABLE `timebooking` (
  `booking_id` int(10) NOT NULL,
  `datetime` datetime DEFAULT NULL,
  `project_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `timebooking`
--

INSERT INTO `timebooking` (`booking_id`, `datetime`, `project_id`) VALUES
(1, '2019-03-22 09:30:00', 1),
(2, '2019-03-23 10:00:00', 2),
(3, '2019-03-22 10:30:00', 1),
(4, '2019-03-22 11:00:00', 1),
(5, '2019-03-22 11:30:00', 2),
(6, '2019-03-22 12:00:00', 2),
(7, '2019-03-23 10:30:00', 2),
(8, '2019-03-23 13:00:00', 2),
(9, '2019-03-24 10:30:00', 3),
(10, '2019-03-24 10:00:00', 3),
(11, '2019-03-24 09:30:00', 3),
(12, '2019-03-24 11:00:00', 4),
(13, '2019-03-25 11:30:00', 1),
(14, '2019-03-25 11:00:03', 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `booking_id` int(10) DEFAULT NULL,
  `haveWaitTable` tinyint(4) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_id` int(10) DEFAULT NULL,
  `type` char(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `booking_id`, `haveWaitTable`, `email`, `password`, `project_id`, `type`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'ภูมิ', 4, 1, 'chawalidpunyajarern@gmail.com', '$2y$10$axiLsVMoK/FiW.TGXmU9M.kaeTLTtaonAaD6y.DxpY92yqZBWl.wy', 2, NULL, NULL, '2019-03-19 10:40:45', '2019-03-19 10:40:45'),
(2, 'art', NULL, 1, 'art@gmail.com', '$2y$10$/v.UBoB4qeWd7ho8QNSCX.zwfJHgT4dlzE52UZrSUGCV9id2Or6PK', NULL, 'admin', 'LOzfsrpI1kkthEvnxXZ0Ght4QGtOlneLMIVtlaEOB4RbuPHAZro8gbe2vGjb', '2019-03-21 02:56:25', '2019-03-27 02:44:42'),
(3, 'thapakorn', NULL, 1, 'thapakorn@gmail.com', '$2y$10$6HWcUrQp9aFq3yfAwFhgWuU/PXIo8rgQ94M1WBPzSzQDXWidlMly2', 1, NULL, 'lyEPjd2FWDdXoDOflfGswrnubCr0dcGqgZEpsgt443nSfUSwwB6RzFlKDrrz', '2019-03-21 11:11:15', '2019-03-27 02:44:17'),
(4, 'green', 9, 1, 'green@gmail.com', '$2y$10$UuAuOlmNKjgxzTD6MG1SlOEEivNe6OYq1FvndMW8Sn6FOjEFRpCyG', 3, NULL, 'i15mVwoyGmRo1fDCWDbetLrjpvME0xlkdjpVaUzrZldeWundhw4ggzAKLb9d', '2019-03-27 01:54:53', '2019-03-27 01:54:53');

-- --------------------------------------------------------

--
-- Table structure for table `waitconfirm`
--

CREATE TABLE `waitconfirm` (
  `wait_id` int(10) NOT NULL,
  `status_confirm` tinyint(2) DEFAULT NULL,
  `status_submit` tinyint(4) DEFAULT NULL,
  `project_id` int(10) NOT NULL,
  `booking_id1` int(10) DEFAULT NULL,
  `booking_id2` int(10) DEFAULT NULL,
  `booking_id3` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `waitconfirm`
--

INSERT INTO `waitconfirm` (`wait_id`, `status_confirm`, `status_submit`, `project_id`, `booking_id1`, `booking_id2`, `booking_id3`) VALUES
(4, NULL, 1, 1, 3, 4, 13),
(5, 1, 1, 2, 2, 4, 10),
(11, 1, 1, 3, 9, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_teacher_id1` (`teacher_id1`),
  ADD KEY `project_teacher_id2` (`teacher_id2`),
  ADD KEY `project_teacher_id3` (`teacher_id3`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timebooking`
--
ALTER TABLE `timebooking`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `timebooking_project_id` (`project_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_project_id` (`project_id`),
  ADD KEY `users_booking_id` (`booking_id`);

--
-- Indexes for table `waitconfirm`
--
ALTER TABLE `waitconfirm`
  ADD PRIMARY KEY (`wait_id`),
  ADD KEY `wait_project_id` (`project_id`),
  ADD KEY `wait_booking_id1` (`booking_id1`),
  ADD KEY `wait_booking_id2` (`booking_id2`),
  ADD KEY `wait_booking_id3` (`booking_id3`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `timebooking`
--
ALTER TABLE `timebooking`
  MODIFY `booking_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `waitconfirm`
--
ALTER TABLE `waitconfirm`
  MODIFY `wait_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `project_teacher_id1` FOREIGN KEY (`teacher_id1`) REFERENCES `teacher` (`id`),
  ADD CONSTRAINT `project_teacher_id2` FOREIGN KEY (`teacher_id2`) REFERENCES `teacher` (`id`),
  ADD CONSTRAINT `project_teacher_id3` FOREIGN KEY (`teacher_id3`) REFERENCES `teacher` (`id`);

--
-- Constraints for table `timebooking`
--
ALTER TABLE `timebooking`
  ADD CONSTRAINT `timebooking_project_id` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_booking_id` FOREIGN KEY (`booking_id`) REFERENCES `timebooking` (`booking_id`),
  ADD CONSTRAINT `users_project_id` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`);

--
-- Constraints for table `waitconfirm`
--
ALTER TABLE `waitconfirm`
  ADD CONSTRAINT `wait_booking_id1` FOREIGN KEY (`booking_id1`) REFERENCES `timebooking` (`booking_id`),
  ADD CONSTRAINT `wait_booking_id2` FOREIGN KEY (`booking_id2`) REFERENCES `timebooking` (`booking_id`),
  ADD CONSTRAINT `wait_booking_id3` FOREIGN KEY (`booking_id3`) REFERENCES `timebooking` (`booking_id`),
  ADD CONSTRAINT `wait_project_id` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
