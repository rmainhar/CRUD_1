-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 30, 2018 at 07:52 PM
-- Server version: 5.5.57-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `techEdClasses`
--

-- --------------------------------------------------------

--
-- Table structure for table `Courses`
--

CREATE TABLE IF NOT EXISTS `Courses` (
  `courseName` varchar(48) COLLATE utf8_unicode_ci NOT NULL,
  `weighted` varchar(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`courseName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Courses`
--

INSERT INTO `Courses` (`courseName`, `weighted`) VALUES
('Computer Integrated Manufacturing', 'Y'),
('Mobile OS Development', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `studentID` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `studentName` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `class` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `year` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`studentID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=51 ;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`studentID`, `studentName`, `class`, `year`) VALUES
(12, 'Matthew S', 'Computer Science Principles', '9'),
(13, 'Rohan J', 'Computer Science Principles', '9'),
(14, 'Freddy', 'Computer Science Principles', '9'),
(15, 'Hanson', 'Computer Science Principles', '9'),
(16, 'Jose ', 'Computer Science Principles', '10'),
(17, 'Carter Hennen', 'Computer Science Principles', '9'),
(19, 'Trevor Fischer', 'Computer Science Principles', '12'),
(20, 'Preston Phan', 'Computer Science Principles', '9'),
(23, 'test', 'Computer Integrated Manufacturing', '9'),
(24, 'Zach Sussee', 'Computer Science Principles', '9'),
(25, 'Annet', 'Computer Science Principles', '9'),
(27, '5', 'Small Gas Engines', '12'),
(28, 'Andrew', 'Computer Integrated Manufacturing', '11'),
(30, 'jonathan oelkers', 'Computer Integrated Manufacturing', '9'),
(32, 'Scott Carpenter', 'Computer Science Principles', '11'),
(33, 'Jose', 'Woods 1', '9'),
(34, 'Jonathan Oelkers', 'Computer Science Principles', '11'),
(35, 'Adam Olsen', 'Computer Science Principles', '11'),
(36, 'Guy Fietti', 'Woods 1', '9'),
(38, 'test2', 'Computer Integrated Manufacturing', '9'),
(39, 'Aiden Schmitz', 'Computer Science Principles', '9'),
(40, 'name', 'Computer Science Principles', '9'),
(42, '', 'Computer Integrated Manufacturing', '9'),
(44, '', 'Computer Integrated Manufacturing', '9'),
(45, 'Harold Moran', 'Web Development', '11'),
(46, '', 'Computer Integrated Manufacturing', '9'),
(49, 'test', 'Computer Integrated Manufacturing', '9'),
(50, '', 'Computer Integrated Manufacturing', '9');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
