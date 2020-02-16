-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2019 at 08:42 PM
-- Server version: 10.1.39-MariaDB
-- PHP Version: 7.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sports`
--

-- --------------------------------------------------------

--
-- Table structure for table `blue`
--

CREATE TABLE `blue` (
  `id` int(11) NOT NULL,
  `100m` bigint(20) NOT NULL DEFAULT '0',
  `200m` bigint(20) NOT NULL DEFAULT '0',
  `400m` bigint(20) NOT NULL DEFAULT '0',
  `800m` bigint(20) NOT NULL DEFAULT '0',
  `1500m` bigint(20) NOT NULL DEFAULT '0',
  `long_jump` bigint(20) NOT NULL DEFAULT '0',
  `high_jump` bigint(20) NOT NULL DEFAULT '0',
  `shotput` bigint(20) NOT NULL DEFAULT '0',
  `discuss` bigint(20) NOT NULL DEFAULT '0',
  `javelin` bigint(20) NOT NULL DEFAULT '0',
  `hop_step_jump` bigint(20) NOT NULL DEFAULT '0',
  `hurdles` bigint(20) NOT NULL DEFAULT '0',
  `obstacle` bigint(20) NOT NULL DEFAULT '0',
  `wheel_barrow` bigint(20) NOT NULL DEFAULT '0',
  `sacrace` bigint(20) NOT NULL DEFAULT '0',
  `coordination_race` bigint(20) NOT NULL DEFAULT '0',
  `slow_cycle` bigint(20) NOT NULL DEFAULT '0',
  `piggy_back` bigint(20) NOT NULL DEFAULT '0',
  `tug_o_war` bigint(20) NOT NULL DEFAULT '0',
  `tunnel_ball` bigint(20) NOT NULL DEFAULT '0',
  `relay_race` bigint(20) NOT NULL DEFAULT '0',
  `drill_jr` bigint(20) NOT NULL DEFAULT '0',
  `drill_sr` bigint(20) NOT NULL DEFAULT '0',
  `march_past` bigint(20) NOT NULL DEFAULT '0',
  `discipline` bigint(20) NOT NULL DEFAULT '0',
  `predecided` bigint(20) NOT NULL DEFAULT '0',
  `total` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blue`
--

INSERT INTO `blue` (`id`, `100m`, `200m`, `400m`, `800m`, `1500m`, `long_jump`, `high_jump`, `shotput`, `discuss`, `javelin`, `hop_step_jump`, `hurdles`, `obstacle`, `wheel_barrow`, `sacrace`, `coordination_race`, `slow_cycle`, `piggy_back`, `tug_o_war`, `tunnel_ball`, `relay_race`, `drill_jr`, `drill_sr`, `march_past`, `discipline`, `predecided`, `total`) VALUES
(1, 7, 9, 18, 20, 8, 0, 0, 0, 0, 0, 0, 9, 2, 18, 7, 0, 0, 12, 0, 8, 18, 15, 25, 25, 10, 345, 546);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `event_name` text NOT NULL,
  `point1` bigint(20) NOT NULL,
  `point2` bigint(20) NOT NULL,
  `point3` bigint(20) NOT NULL,
  `point4` bigint(20) NOT NULL,
  `event_type` text NOT NULL,
  `event_cat` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `event_name`, `point1`, `point2`, `point3`, `point4`, `event_type`, `event_cat`) VALUES
(1, '100m', 5, 3, 2, 0, 'ind', 'track'),
(2, '200m', 5, 3, 2, 0, 'ind', 'track'),
(3, '400m', 5, 3, 2, 0, 'ind', 'track'),
(4, '800m', 5, 3, 2, 0, 'ind', 'track'),
(5, '1500m', 5, 3, 2, 0, 'ind', 'track'),
(6, 'long_jump', 5, 3, 2, 0, 'ind', 'field'),
(7, 'high_jump', 5, 3, 2, 0, 'ind', 'field'),
(8, 'shotput', 5, 3, 2, 0, 'ind', 'field'),
(9, 'discuss', 5, 3, 2, 0, 'ind', 'field'),
(10, 'javelin', 5, 3, 2, 0, 'ind', 'field'),
(11, 'hop_step_jump', 5, 3, 2, 0, 'ind', 'field'),
(12, 'hurdles', 5, 3, 2, 0, 'ind', 'track'),
(13, 'obstacle', 5, 3, 2, 0, 'ind', 'track'),
(14, 'wheel_barrow', 10, 8, 6, 0, 'grp', 'field'),
(15, 'sacrace', 5, 3, 2, 0, 'ind', 'field'),
(16, 'coordination_race', 10, 8, 6, 0, 'grp', 'track'),
(17, 'slow_cycle', 5, 3, 2, 0, 'ind', 'field'),
(18, 'piggy_back', 10, 8, 6, 0, 'grp', 'track'),
(19, 'tug_o_war', 10, 8, 6, 0, 'grp', 'field'),
(20, 'tunnel_ball', 10, 8, 6, 0, 'grp', 'field'),
(21, 'relay_race', 10, 8, 6, 0, 'grp', 'field'),
(22, 'drill_jr', 30, 25, 15, 10, 'grp', 'field'),
(23, 'drill_sr', 30, 25, 15, 10, 'grp', 'field'),
(24, 'march_past', 30, 25, 15, 10, 'grp', 'field'),
(25, 'discipline', 40, 30, 20, 10, 'grp', 'field');

-- --------------------------------------------------------

--
-- Table structure for table `green`
--

CREATE TABLE `green` (
  `id` int(11) NOT NULL,
  `100m` bigint(20) NOT NULL DEFAULT '0',
  `200m` bigint(20) NOT NULL DEFAULT '0',
  `400m` bigint(20) NOT NULL DEFAULT '0',
  `800m` bigint(20) NOT NULL DEFAULT '0',
  `1500m` bigint(20) NOT NULL DEFAULT '0',
  `long_jump` bigint(20) NOT NULL DEFAULT '0',
  `high_jump` bigint(20) NOT NULL DEFAULT '0',
  `shotput` bigint(20) NOT NULL DEFAULT '0',
  `discuss` bigint(20) NOT NULL DEFAULT '0',
  `javelin` bigint(20) NOT NULL DEFAULT '0',
  `hop_step_jump` bigint(20) NOT NULL DEFAULT '0',
  `hurdles` bigint(20) NOT NULL DEFAULT '0',
  `obstacle` bigint(20) NOT NULL DEFAULT '0',
  `wheel_barrow` bigint(20) NOT NULL DEFAULT '0',
  `sacrace` bigint(20) NOT NULL DEFAULT '0',
  `coordination_race` bigint(20) NOT NULL DEFAULT '0',
  `slow_cycle` bigint(20) NOT NULL DEFAULT '0',
  `piggy_back` bigint(20) NOT NULL DEFAULT '0',
  `tug_o_war` bigint(20) NOT NULL DEFAULT '0',
  `tunnel_ball` bigint(20) NOT NULL DEFAULT '0',
  `relay_race` bigint(20) NOT NULL DEFAULT '0',
  `drill_jr` bigint(20) NOT NULL DEFAULT '0',
  `drill_sr` bigint(20) NOT NULL DEFAULT '0',
  `march_past` bigint(20) NOT NULL DEFAULT '0',
  `discipline` bigint(20) NOT NULL DEFAULT '0',
  `predecided` bigint(20) NOT NULL DEFAULT '0',
  `total` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `green`
--

INSERT INTO `green` (`id`, `100m`, `200m`, `400m`, `800m`, `1500m`, `long_jump`, `high_jump`, `shotput`, `discuss`, `javelin`, `hop_step_jump`, `hurdles`, `obstacle`, `wheel_barrow`, `sacrace`, `coordination_race`, `slow_cycle`, `piggy_back`, `tug_o_war`, `tunnel_ball`, `relay_race`, `drill_jr`, `drill_sr`, `march_past`, `discipline`, `predecided`, `total`) VALUES
(1, 9, 17, 22, 17, 0, 0, 0, 0, 0, 0, 0, 5, 8, 22, 6, 0, 0, 20, 6, 0, 14, 25, 30, 10, 20, 296, 507);

-- --------------------------------------------------------

--
-- Table structure for table `participants`
--

CREATE TABLE `participants` (
  `id` int(11) NOT NULL,
  `part_name` text NOT NULL,
  `house` text NOT NULL,
  `points` int(11) NOT NULL DEFAULT '0',
  `division` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `participants`
--

INSERT INTO `participants` (`id`, `part_name`, `house`, `points`, `division`) VALUES
(1, 'Ahmed Samin Syed', 'blue', 7, 'a'),
(2, 'Ayaan Saigal', 'blue', 12, 'a'),
(3, 'Barshan Roy', 'blue', 0, 'a'),
(4, 'Debashmiya Bhakta', 'blue', 3, 'a'),
(5, 'Shah Faisal', 'blue', 0, 'a'),
(6, 'Shahinoor Rahman', 'blue', 4, 'a'),
(7, 'Simon Gomes', 'blue', 14, 'a'),
(8, 'Vedant Kanodia', 'blue', 0, 'a'),
(9, 'Agnish Deb ', 'green', 0, 'a'),
(10, 'Ahijit Banerjee', 'green', 0, 'a'),
(11, 'Brandon Lee', 'green', 0, 'a'),
(12, 'Divyan Fernando', 'green', 0, 'a'),
(13, 'Divyant Bharwada', 'green', 0, 'a'),
(14, 'Navonil Sett', 'green', 8, 'a'),
(15, 'Prince Akash Mondal', 'green', 0, 'a'),
(16, 'Soupayan Biswas', 'green', 3, 'a'),
(17, 'Susmit Banerjee', 'green', 0, 'a'),
(18, 'Vaibhav Kabra', 'green', 7, 'a'),
(19, 'Ankur Roy', 'red', 5, 'a'),
(20, 'Shreyansh Patni', 'red', 2, 'a'),
(21, 'Siddhart Singh', 'red', 0, 'a'),
(22, 'Somdyuti Bhattacharya', 'red', 0, 'a'),
(23, 'Steven Lee', 'red', 0, 'a'),
(24, 'Sumeet Burnwal', 'red', 0, 'a'),
(25, 'Harsh Brian Dungdung', 'yellow', 0, 'a'),
(26, 'Nikhil Agarwal', 'yellow', 0, 'a'),
(27, 'Rishab Alex', 'yellow', 0, 'a'),
(28, 'Rupam Bhattacharya', 'yellow', 5, 'a'),
(29, 'Shreejay Chandra Das', 'yellow', 0, 'a'),
(30, 'Ayuj Dutta', 'blue', 0, 'b'),
(31, 'Cyrus Francis', 'blue', 0, 'b'),
(32, 'Hrithik Gupta', 'blue', 3, 'b'),
(33, 'Jay Joshi', 'blue', 0, 'b'),
(34, 'Md. Hateem', 'blue', 12, 'b'),
(35, 'Aalekh Chaudhury', 'green', 0, 'b'),
(36, 'Amaan Kaleem ', 'green', 0, 'b'),
(37, 'Ashley Suting', 'green', 7, 'b'),
(38, 'Dion Greenway', 'green', 0, 'b'),
(39, 'Maovia Mumtaz', 'green', 0, 'b'),
(40, 'Sanidhya Singh', 'green', 4, 'b'),
(41, 'Abhimanyu Kakrania', 'red', 0, 'b'),
(42, 'Casey Mendez', 'red', 0, 'b'),
(43, 'Dylan Liu', 'red', 0, 'b'),
(44, 'Errol Gonsalves', 'red', 16, 'b'),
(45, 'Justin Williams', 'yellow', 5, 'b'),
(46, 'Karan Chhabria', 'yellow', 0, 'b'),
(47, 'Keshav Khaitan', 'yellow', 0, 'b'),
(48, 'Letgouthang Kongsai', 'yellow', 11, 'b'),
(49, 'Satwik Das', 'yellow', 0, 'b'),
(50, 'Anushko Roy Choudhury', 'blue', 0, 'c'),
(51, 'Danesh Tarapore', 'blue', 2, 'c'),
(52, 'Dhrubajyoti Sengupta', 'blue', 2, 'c'),
(53, 'Rajdeep Adhikary', 'blue', 0, 'c'),
(54, 'Abhijit Chowdhury', 'green', 0, 'c'),
(55, 'Abhineel Saha', 'green', 0, 'c'),
(56, 'Ayovin Jana', 'green', 0, 'c'),
(57, 'Debopam Das', 'green', 0, 'c'),
(58, 'Jaden Greenway', 'green', 10, 'c'),
(59, 'Jitomanyu Datta', 'green', 0, 'c'),
(60, 'Subhadip Chowdhury', 'green', 0, 'c'),
(61, 'Abhik Chatterjee', 'red', 0, 'c'),
(62, 'Ryan Charlie', 'red', 10, 'c'),
(63, 'Sahil Ahmed', 'red', 18, 'c'),
(64, 'Samya Saha', 'red', 2, 'c'),
(65, 'Sushen Mitra', 'red', 0, 'c'),
(66, 'Avrajyoti Singh', 'yellow', 13, 'c'),
(67, 'Chris Das', 'yellow', 0, 'c'),
(68, 'Devesh agarwal', 'yellow', 0, 'c'),
(69, 'Ricardo Fernandes', 'yellow', 0, 'c'),
(70, 'Sayan Banerjee ', 'yellow', 0, 'c'),
(71, 'Shahid Mohammed', 'yellow', 0, 'c'),
(72, 'Subham Ghosh', 'yellow', 3, 'c'),
(73, 'Aritro Ckakraborty', 'blue', 0, 'd'),
(74, 'Arka Das', 'blue', 0, 'd'),
(75, 'Dylan Haokip', 'blue', 0, 'd'),
(76, 'Gautam Ganeriwala', 'blue', 3, 'd'),
(77, 'Prithwish chakraborty', 'blue', 0, 'd'),
(78, 'Rajarshee Dey', 'blue', 0, 'd'),
(79, 'Rhitam Roy', 'blue', 0, 'd'),
(80, 'Roushan Poddar', 'blue', 0, 'd'),
(81, 'Sagnik Dey', 'blue', 0, 'd'),
(82, 'Sayeedul sheikh', 'blue', 0, 'd'),
(83, 'Siddhant Sharma', 'blue', 0, 'd'),
(84, 'Spandan Dhara', 'blue', 2, 'd'),
(85, 'Aaryan Anand', 'green', 0, 'd'),
(86, 'Advait Nambiar', 'green', 2, 'd'),
(87, 'Jai Choraria', 'green', 0, 'd'),
(88, 'Luv Ronilawala', 'green', 0, 'd'),
(89, 'Rishit Roy', 'green', 0, 'd'),
(90, 'Sayantan Pal', 'green', 0, 'd'),
(91, 'Sherwin Owen Ireland', 'green', 10, 'd'),
(92, 'Shreyan Roy', 'green', 0, 'd'),
(93, 'Somya Shubhra Pal', 'green', 0, 'd'),
(94, 'Sreejata Bhattacharya', 'green', 0, 'd'),
(95, 'Yash Hemani', 'green', 0, 'd'),
(96, 'Aditya Kejriwal', 'red', 0, 'd'),
(97, 'Argha Kumar', 'red', 0, 'd'),
(98, 'Arkaparno Nandi', 'red', 2, 'd'),
(99, 'Bryain Shrestha', 'red', 15, 'd'),
(100, 'Debraj Roy Chowdhury', 'red', 0, 'd'),
(101, 'Jerom Roy', 'red', 0, 'd'),
(102, 'Joshua Arthur Attick', 'red', 0, 'd'),
(103, 'Kovidh Sarkar', 'red', 0, 'd'),
(104, 'Pathikreet Chowdhury', 'red', 0, 'd'),
(105, 'Rushan Mohammed', 'red', 0, 'd'),
(106, 'Shaikh Hossain', 'red', 0, 'd'),
(107, 'Vedant Birla', 'red', 0, 'd'),
(108, 'Anuran Mukherjee', 'yellow', 0, 'd'),
(109, 'Arryan Kanodia', 'yellow', 0, 'd'),
(110, 'Darryl Joseph Khan', 'yellow', 3, 'd'),
(111, 'Devansh Banthia', 'yellow', 0, 'd'),
(112, 'Md. Ayaan Mozumdar', 'yellow', 3, 'd'),
(113, 'Nitesh Mudaliar', 'yellow', 0, 'd'),
(114, 'Swapnil Saha', 'yellow', 0, 'd'),
(115, 'Tamoghna Chakraborty', 'yellow', 0, 'd'),
(116, 'Vishesh Goyal', 'yellow', 0, 'd'),
(117, 'Anshuman Jain', 'blue', 0, 'e'),
(118, 'Akshat Surana', 'blue', 0, 'e'),
(119, 'Arkopravo Saha', 'blue', 0, 'e'),
(120, 'Krish Goenka', 'blue', 0, 'e'),
(121, 'Om Chandra Routh', 'blue', 0, 'e'),
(122, 'Sahil Routh', 'blue', 0, 'e'),
(123, 'Sreejan Bose', 'blue', 0, 'e'),
(124, 'Srinjoy Kundu', 'blue', 0, 'e'),
(125, 'Tomoghna Das', 'blue', 0, 'e'),
(126, 'Wanhar Aziz', 'blue', 0, 'e'),
(127, 'Yash Pachisia', 'blue', 0, 'e'),
(128, 'Ahmed Vazin Syed', 'green', 6, 'e'),
(129, 'Debarghya Bhattacharya', 'green', 0, 'e'),
(130, 'Debarghya Sikder', 'green', 0, 'e'),
(131, 'Deepan Majumdar', 'green', 0, 'e'),
(132, 'Gaurav Agarwal ', 'green', 0, 'e'),
(133, 'Keertan Agarwal', 'green', 0, 'e'),
(134, 'Naman Chandak', 'green', 0, 'e'),
(135, 'Saksham Agarwal', 'green', 6, 'e'),
(136, 'Soham Dey', 'green', 3, 'e'),
(137, 'Soumyarup Pal', 'green', 0, 'e'),
(138, 'Trinav Roy', 'green', 0, 'e'),
(139, 'Vansh Goenka', 'green', 0, 'e'),
(140, 'Zyed Siddiqui', 'green', 2, 'e'),
(141, 'Aryan Bhatia', 'red', 0, 'e'),
(142, 'Devansh Gaggar', 'red', 0, 'e'),
(143, 'Harsh Jindal', 'red', 0, 'e'),
(144, 'Hrishit Jhunjhunwala', 'red', 0, 'e'),
(145, 'Ishaan Ghosh', 'red', 0, 'e'),
(146, 'Jason Gomes', 'red', 0, 'e'),
(147, 'Kanishk Agarwal', 'red', 0, 'e'),
(148, 'Kabir Gupta', 'red', 5, 'e'),
(149, 'Krish Bansal', 'red', 0, 'e'),
(150, 'Nishan Agarwal', 'red', 0, 'e'),
(151, 'Ryan Mukherjee', 'red', 15, 'e'),
(152, 'Shivam Thakur', 'red', 0, 'e'),
(153, 'Vansh Fatehpuria', 'red', 0, 'e'),
(154, 'Vishal Agarwal', 'red', 0, 'e'),
(155, 'Anurag Roy', 'yellow', 0, 'e'),
(156, 'Aryan Gomes', 'yellow', 3, 'e'),
(157, 'Devansh Agarwal', 'yellow', 0, 'e'),
(158, 'John Rohit Sharma ', 'yellow', 0, 'e'),
(159, 'Keshav Chhaparia', 'yellow', 0, 'e'),
(160, 'Krishay Choudhary', 'yellow', 0, 'e'),
(161, 'Lakshya Tulsyan', 'yellow', 0, 'e'),
(162, 'Samarjit Singh', 'yellow', 0, 'e'),
(163, 'Vanan Adit Didwania', 'yellow', 0, 'e'),
(164, 'Yash Pandey', 'yellow', 0, 'e'),
(165, 'Aahwan Surin', 'red', 5, 'f'),
(166, 'Adil Mallick', 'red', 0, 'f'),
(167, 'Aditya Jain', 'red', 0, 'f'),
(168, 'Ashmit Choraria', 'red', 0, 'f'),
(169, 'Ayush Rout', 'red', 0, 'f'),
(170, 'Bhavya Khandelwal', 'red', 0, 'f'),
(171, 'Debdoot Banerjee', 'red', 0, 'f'),
(172, 'Divyansh Tulsyan', 'red', 0, 'f'),
(173, 'Luval Jain', 'red', 0, 'f'),
(174, 'Mohakk Dudhoria', 'red', 0, 'f'),
(175, 'Tanush Murarka', 'red', 0, 'f'),
(176, 'Vaibhav Agarwal', 'red', 7, 'f'),
(177, 'Aahwan Surin', 'blue', 5, 'f'),
(178, 'Aaruni Ghosh', 'blue', 0, 'f'),
(179, 'Aritra Gomes', 'blue', 0, 'f'),
(180, 'Ayan Chandra', 'blue', 0, 'f'),
(181, 'Ayan Gomes', 'blue', 0, 'f'),
(182, 'Kalash Saigal', 'blue', 0, 'f'),
(183, 'Krish Kanodia', 'blue', 0, 'f'),
(184, 'Sandip Manna', 'blue', 2, 'f'),
(185, 'Smitendu Dutta', 'blue', 0, 'f'),
(186, 'Soham Seal', 'blue', 0, 'f'),
(187, 'Udhav Saria', 'blue', 0, 'f'),
(188, 'Vighnesha Agarwal', 'blue', 0, 'f'),
(189, 'Arjun Jhunjhunwala', 'green', 0, 'f'),
(190, 'Ayush Rout', 'green', 0, 'f'),
(191, 'Dhruv Daruka', 'green', 6, 'f'),
(192, 'Kashyap Mimani', 'green', 0, 'f'),
(193, 'Khushaal Saria', 'green', 0, 'f'),
(194, 'Md. Faheem Ahmed', 'green', 0, 'f'),
(195, 'Nirmal Jhawar', 'green', 0, 'f'),
(196, 'Tamishrah Kujur', 'green', 0, 'f'),
(197, 'Vaibhav Agarwal', 'green', 5, 'f'),
(198, 'Akshat Goyal', 'yellow', 0, 'f'),
(199, 'Bruce Fernandez', 'yellow', 0, 'f'),
(200, 'Kabir Agarwal', 'yellow', 0, 'f'),
(201, 'Kushal Kotecha', 'yellow', 0, 'f'),
(202, 'Mitadru Mazumder', 'yellow', 0, 'f'),
(203, 'Navoneel Sen', 'yellow', 0, 'f'),
(204, 'Piyush Verma', 'yellow', 0, 'f'),
(205, 'Rishit Dutta', 'yellow', 0, 'f'),
(206, 'Samudra Gupta', 'yellow', 10, 'f'),
(207, 'Siddharth Shroff', 'yellow', 0, 'f'),
(208, 'Vedant Thakur', 'yellow', 0, 'f'),
(209, 'Zoriyon Zion ', 'yellow', 0, 'f'),
(210, 'red', 'red', 0, ''),
(211, 'blue', 'blue', 0, ''),
(212, 'green', 'green', 0, ''),
(213, 'yellow', 'yellow', 0, ''),
(214, 'Savio Thomas', 'blue', 2, 'b');

-- --------------------------------------------------------

--
-- Table structure for table `red`
--

CREATE TABLE `red` (
  `id` int(11) NOT NULL,
  `100m` bigint(20) NOT NULL DEFAULT '0',
  `200m` bigint(20) NOT NULL DEFAULT '0',
  `400m` bigint(20) NOT NULL DEFAULT '0',
  `800m` bigint(20) NOT NULL DEFAULT '0',
  `1500m` bigint(20) NOT NULL DEFAULT '0',
  `long_jump` bigint(20) NOT NULL DEFAULT '0',
  `high_jump` bigint(20) NOT NULL DEFAULT '0',
  `shotput` bigint(20) NOT NULL DEFAULT '0',
  `discuss` bigint(20) NOT NULL DEFAULT '0',
  `javelin` bigint(20) NOT NULL DEFAULT '0',
  `hop_step_jump` bigint(20) NOT NULL DEFAULT '0',
  `hurdles` bigint(20) NOT NULL DEFAULT '0',
  `obstacle` bigint(20) NOT NULL DEFAULT '0',
  `wheel_barrow` bigint(20) NOT NULL DEFAULT '0',
  `sacrace` bigint(20) NOT NULL DEFAULT '0',
  `coordination_race` bigint(20) NOT NULL DEFAULT '0',
  `slow_cycle` bigint(20) NOT NULL DEFAULT '0',
  `piggy_back` bigint(20) NOT NULL DEFAULT '0',
  `tug_o_war` bigint(20) NOT NULL DEFAULT '0',
  `tunnel_ball` bigint(20) NOT NULL DEFAULT '0',
  `relay_race` bigint(20) NOT NULL DEFAULT '0',
  `drill_jr` bigint(20) NOT NULL DEFAULT '0',
  `drill_sr` bigint(20) NOT NULL DEFAULT '0',
  `march_past` bigint(20) NOT NULL DEFAULT '0',
  `discipline` bigint(20) NOT NULL DEFAULT '0',
  `predecided` bigint(20) NOT NULL DEFAULT '0',
  `total` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `red`
--

INSERT INTO `red` (`id`, `100m`, `200m`, `400m`, `800m`, `1500m`, `long_jump`, `high_jump`, `shotput`, `discuss`, `javelin`, `hop_step_jump`, `hurdles`, `obstacle`, `wheel_barrow`, `sacrace`, `coordination_race`, `slow_cycle`, `piggy_back`, `tug_o_war`, `tunnel_ball`, `relay_race`, `drill_jr`, `drill_sr`, `march_past`, `discipline`, `predecided`, `total`) VALUES
(1, 22, 20, 15, 10, 2, 0, 0, 0, 0, 0, 0, 11, 10, 18, 5, 0, 0, 24, 8, 6, 16, 30, 15, 30, 30, 270, 512);

-- --------------------------------------------------------

--
-- Table structure for table `yellow`
--

CREATE TABLE `yellow` (
  `id` int(11) NOT NULL,
  `100m` bigint(20) NOT NULL DEFAULT '0',
  `200m` bigint(20) NOT NULL DEFAULT '0',
  `400m` bigint(20) NOT NULL DEFAULT '0',
  `800m` bigint(20) NOT NULL DEFAULT '0',
  `1500m` bigint(20) NOT NULL DEFAULT '0',
  `long_jump` bigint(20) NOT NULL DEFAULT '0',
  `high_jump` bigint(20) NOT NULL DEFAULT '0',
  `shotput` bigint(20) NOT NULL DEFAULT '0',
  `discuss` bigint(20) NOT NULL DEFAULT '0',
  `javelin` bigint(20) NOT NULL DEFAULT '0',
  `hop_step_jump` bigint(20) NOT NULL DEFAULT '0',
  `hurdles` bigint(20) NOT NULL DEFAULT '0',
  `obstacle` bigint(20) NOT NULL DEFAULT '0',
  `wheel_barrow` bigint(20) NOT NULL DEFAULT '0',
  `sacrace` bigint(20) NOT NULL DEFAULT '0',
  `coordination_race` bigint(20) NOT NULL DEFAULT '0',
  `slow_cycle` bigint(20) NOT NULL DEFAULT '0',
  `piggy_back` bigint(20) NOT NULL DEFAULT '0',
  `tug_o_war` bigint(20) NOT NULL DEFAULT '0',
  `tunnel_ball` bigint(20) NOT NULL DEFAULT '0',
  `relay_race` bigint(20) NOT NULL DEFAULT '0',
  `drill_jr` bigint(20) NOT NULL DEFAULT '0',
  `drill_sr` bigint(20) NOT NULL DEFAULT '0',
  `march_past` bigint(20) NOT NULL DEFAULT '0',
  `discipline` bigint(20) NOT NULL DEFAULT '0',
  `predecided` bigint(20) NOT NULL DEFAULT '0',
  `total` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `yellow`
--

INSERT INTO `yellow` (`id`, `100m`, `200m`, `400m`, `800m`, `1500m`, `long_jump`, `high_jump`, `shotput`, `discuss`, `javelin`, `hop_step_jump`, `hurdles`, `obstacle`, `wheel_barrow`, `sacrace`, `coordination_race`, `slow_cycle`, `piggy_back`, `tug_o_war`, `tunnel_ball`, `relay_race`, `drill_jr`, `drill_sr`, `march_past`, `discipline`, `predecided`, `total`) VALUES
(1, 22, 11, 5, 3, 0, 0, 0, 0, 0, 0, 0, 5, 10, 14, 12, 0, 0, 16, 10, 10, 0, 10, 10, 15, 40, 338, 491);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blue`
--
ALTER TABLE `blue`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `green`
--
ALTER TABLE `green`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `participants`
--
ALTER TABLE `participants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `red`
--
ALTER TABLE `red`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `yellow`
--
ALTER TABLE `yellow`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blue`
--
ALTER TABLE `blue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `green`
--
ALTER TABLE `green`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `participants`
--
ALTER TABLE `participants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=215;

--
-- AUTO_INCREMENT for table `red`
--
ALTER TABLE `red`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `yellow`
--
ALTER TABLE `yellow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
