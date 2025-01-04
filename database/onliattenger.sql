-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 24, 2023 at 08:58 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onliattenger`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `email` varchar(200) NOT NULL,
  `fname` varchar(200) NOT NULL,
  `lname` varchar(200) NOT NULL,
  `attendance` varchar(200) NOT NULL,
  `date_time` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`email`, `fname`, `lname`, `attendance`, `date_time`) VALUES
('champak@gmail.com', 'Champak', 'Chacha', 'present', '2023-01-15'),
('champak@gmail.com', 'Champak', 'Chacha', 'present', '2023-01-23'),
('champak@gmail.com', 'Champak', 'Chacha', 'absent', '2023-01-24'),
('babitaji@gmail.com', 'BABITA', 'JI', 'absent', '2023-01-24');

-- --------------------------------------------------------

--
-- Table structure for table `leave_requests`
--

CREATE TABLE `leave_requests` (
  `email` varchar(200) NOT NULL,
  `fname` varchar(200) NOT NULL,
  `lname` varchar(200) NOT NULL,
  `message` text NOT NULL,
  `date_time` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `leave_requests`
--

INSERT INTO `leave_requests` (`email`, `fname`, `lname`, `message`, `date_time`) VALUES
('champak@gmail.com', 'Champak', 'Chacha', 'ill not come on 25-02-23 coz if illness', '2023-01-23'),
('babitaji@gmail.com', 'BABITA', 'JI', 'i want leave for tomorow', '2023-01-24'),
('babitaji@gmail.com', 'BABITA', 'JI', 'i need leave tomorow', '2023-01-24');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `message` text NOT NULL,
  `date_time` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`name`, `email`, `phone`, `message`, `date_time`) VALUES
('BABITAJI', 'babitaji@gmail.com', '1234567898', 'I want to join your college\r\n', '2023-01-24'),
('Doctor Hathi', 'hathi@gmail.com', '1234567899', 'hi', '2023-01-24'),
('Doctor Hathi', 'hathi@gmail.com', '1234567899', 'hi', '2023-01-24'),
('ssss', 's@gmail.com', '9876543210', 'Hi', '2023-01-24');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `email` varchar(200) NOT NULL,
  `fname` varchar(200) NOT NULL,
  `lname` varchar(200) NOT NULL,
  `password1` varchar(200) NOT NULL,
  `password2` varchar(200) NOT NULL,
  `dob` varchar(200) NOT NULL,
  `age_y` varchar(200) NOT NULL,
  `age_m` varchar(200) NOT NULL,
  `dp` varchar(200) NOT NULL,
  `gender` varchar(200) NOT NULL,
  `date_time` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`email`, `fname`, `lname`, `password1`, `password2`, `dob`, `age_y`, `age_m`, `dp`, `gender`, `date_time`) VALUES
('babitaji@gmail.com', 'BABITA', 'JI', '111', '111', '10/17/2001', '21', '3', 'taarak-mehta-ka-ooltah-chashmah-babita-ji-munmun-dutta-addresses-jethalal-as-dilip-bhai-001.jpg', 'Female', '2023-01-24'),
('bhaga@gmail.com', 'Bhageshwar', 'Udaywala', '111', '111', '01/01/1990', '33', '0', 'bagha.jpeg', 'Male', '2023-01-24'),
('bindi@gmail.com', 'BINDI', 'MASTER', '111', '111', '09/01/2001', '21', '4', 'tarak-mehta-spoiler.jpeg', 'Male', '2023-01-24'),
('champak@gmail.com', 'Champak', 'Chacha', '111', '111', '09/06/2001', '21', '4', '61876287.jpeg', 'Male', '2023-01-15'),
('hathi@gmail.com', 'DOCTOR', 'HATHI', '111', '111', '04/11/2002', '20', '9', 'dr-hathi_1531131793.jpeg', 'Male', '2023-01-24'),
('jetalal@gmail.com', 'JETALAL', 'GADA', '111', '111', '11/08/2001', '21', '2', 'D37C4A6A-44EE-4C42-B618-76A4A07030DD.jpeg', 'Male', '2023-01-24'),
('nattu@gmail.com', 'Nattu', 'Kaka', '111', '111', '03/23/1960', '62', '10', 'nattu.jpeg', 'Male', '2023-01-24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
