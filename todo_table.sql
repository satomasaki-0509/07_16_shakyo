-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 24, 2020 at 02:56 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gsacf_d07_16`
--

-- --------------------------------------------------------

--
-- Table structure for table `todo_table`
--

CREATE TABLE `todo_table` (
  `id` int(12) NOT NULL,
  `todo` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deadline` date NOT NULL,
  `created_at` datetime NOT NULL,
  `update_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `todo_table`
--

INSERT INTO `todo_table` (`id`, `todo`, `deadline`, `created_at`, `update_at`) VALUES
(1, 'JSの課題', '2020-12-25', '2020-12-19 15:48:27', '2020-12-19 15:48:27'),
(2, 'phpの課題', '2020-12-26', '2020-12-19 15:49:07', '2020-12-19 15:49:07'),
(3, 'htmlの課題', '2020-12-27', '2020-12-19 15:50:07', '2020-12-19 15:50:07'),
(4, 'cssの課題', '2020-12-28', '2020-12-19 15:50:22', '2020-12-19 15:50:22'),
(5, 'jQueryの課題', '2020-12-29', '2020-12-19 15:50:40', '2020-12-19 15:50:40'),
(6, 'SQLの課題', '2020-12-29', '2020-12-19 15:51:18', '2020-12-19 15:51:18'),
(7, 'Rubyの課題', '2020-12-30', '2020-12-19 15:51:59', '2020-12-19 15:51:59'),
(8, 'Node.jsの課題', '2020-12-31', '2020-12-19 15:52:50', '2020-12-19 15:52:50'),
(9, 'Laravelの課題', '2020-01-01', '2020-12-19 15:53:12', '2020-12-19 15:53:12'),
(10, 'Cake.phpの課題', '2020-01-02', '2020-12-19 15:53:38', '2020-12-19 15:53:38'),
(12, 'test', '2020-12-19', '2020-12-19 17:17:47', '2020-12-19 17:17:47'),
(13, 'test', '2020-12-19', '2020-12-19 17:17:54', '2020-12-19 17:17:54'),
(14, 'test', '2020-12-19', '2020-12-19 17:18:25', '2020-12-19 17:18:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `todo_table`
--
ALTER TABLE `todo_table`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `todo_table`
--
ALTER TABLE `todo_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
