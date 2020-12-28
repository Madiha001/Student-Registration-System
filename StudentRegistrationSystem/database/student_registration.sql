-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 28, 2020 at 08:57 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student_registration`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` int(11) NOT NULL,
  `course_name` varchar(255) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_name`, `teacher_id`) VALUES
(501, 'Data Science', 104),
(502, 'Data Structures', 105),
(503, 'Deep Learning', 101),
(504, 'Operating Systems', 102),
(505, 'Database Systems', 103),
(506, 'Organizational Behavior', 106),
(507, 'Economics', 109),
(508, 'Accounting-I', 107),
(509, 'Differential Equations', 110),
(510, 'Digital Logic Design', 108);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `dept_id` int(11) NOT NULL,
  `department_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dept_id`, `department_name`) VALUES
(1, 'Computer Science'),
(2, 'Business Administration'),
(3, 'Electrical Engineering'),
(4, 'Accounting & Finance'),
(5, 'Education'),
(6, 'Mathematics');

-- --------------------------------------------------------

--
-- Table structure for table `loginuserinfo`
--

CREATE TABLE `loginuserinfo` (
  `userId` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loginuserinfo`
--

INSERT INTO `loginuserinfo` (`userId`, `username`, `password`) VALUES
(1, 'madiha', '12345'),
(2, 'depeeka', '54321');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL,
  `student_name` varchar(255) DEFAULT NULL,
  `dept_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `semester` varchar(3) DEFAULT NULL,
  `phone_no` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `student_name`, `dept_id`, `course_id`, `semester`, `phone_no`) VALUES
(101, 'Madiha', 1, 504, '4th', '0333-2938722'),
(102, 'Depeeka', 1, 505, '4th', '0313-3938272'),
(103, 'Aliza', 4, 508, '1st', '0321-3848383'),
(104, 'Bisma', 4, 506, '6th', '0324-5040303'),
(105, 'Samreen', 2, 506, '8th', '0343-3939392'),
(106, 'Furqan Ahmed', 3, 510, '2nd', '0314-4559549'),
(107, 'Zeeshan', 5, 507, '3rd', '0344-4570127'),
(108, 'Ali Raza Muhammad', 2, 507, '3rd', '0313-9509392'),
(109, 'Maryam Zulfiqar', 1, 503, '5th', '0312-4852009'),
(110, 'Muzammil Hassan', 6, 506, '4th', '0320-9871265');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `teacher_id` int(11) NOT NULL,
  `teacher_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`teacher_id`, `teacher_name`) VALUES
(101, 'Ali Murtaza'),
(102, 'Raheel Memon'),
(103, 'Khalid Hussain'),
(104, 'Muhammad Noman'),
(105, 'Saif Hassan'),
(106, 'Mansoor Ahmed'),
(107, 'Asif Bhatti'),
(108, 'Fayyaz-ud-Din'),
(109, 'Faisal Arain'),
(110, 'Asif Memon');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`),
  ADD KEY `teacher_id` (`teacher_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `loginuserinfo`
--
ALTER TABLE `loginuserinfo`
  ADD PRIMARY KEY (`userId`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`),
  ADD KEY `dept_id` (`dept_id`),
  ADD KEY `course_id` (`course_id`) USING BTREE;

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacher_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `loginuserinfo`
--
ALTER TABLE `loginuserinfo`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `course_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`teacher_id`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `department` (`dept_id`),
  ADD CONSTRAINT `student_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
