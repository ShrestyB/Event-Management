-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2019 at 03:57 AM
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
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `event_id` int(11) NOT NULL,
  `event_title` varchar(50) NOT NULL,
  `event_price` int(11) DEFAULT NULL,
  `participents` int(100) DEFAULT 0,
  `img_link` text DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`event_id`, `event_title`, `event_price`, `participents`, `img_link`, `type_id`) VALUES
(1, 'Product thinking', 100, 0, 'images/pt.jpg', 1),
(2, 'Cryptohunt', 50, 2, 'images/crypto1.png', 1),
(3, 'Technical-Quiz', 50, 2, 'images/quiz.png', 1),
(4, 'Competitive-Coding', 50, 1, 'images/coding.jpg', 1),
(5, 'Around the World ', 50, 1, 'images/atw.jpg', 2),
(6, 'Counter-Strike', 100, 1, 'images/cs.jpg\r\n', 2),
(7, 'Amethyst', 100, 1, 'images/onstage.jpg', 3),
(8, 'Ablaze', 100, 0, 'images/dance.png', 3),
(9, 'Melodia', 50, 0, 'images/sing.png', 3),
(10, 'Nzest', 100, 0, 'images/idol.png', 3),
(11, 'Masala moves', 50, 0, 'images/cook.png', 4),
(12, 'Cineshaam', 200, 0, 'images/offstage.jpg', 4),
(13, 'Mehandi drawing', 100, 0, 'images/m.jpg', 4),
(14, 'Face painting', 50, 0, 'images/fp.jpg', 4);

-- --------------------------------------------------------

--
-- Table structure for table `event_info`
--

CREATE TABLE `event_info` (
  `event_id` int(10) NOT NULL,
  `Date` date DEFAULT NULL,
  `time` varchar(20) NOT NULL,
  `location` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event_info`
--

INSERT INTO `event_info` (`event_id`, `Date`, `time`, `location`) VALUES
(1, '2023-04-16', '3.00pm', 'C001'),
(2, '2023-04-16', '1.00pm', 'D007'),
(3, '2023-04-16', '11.00am', 'E101'),
(4, '2023-04-16', '9.30am', 'E216'),
(5, '2023-04-17', '10.00am', 'B101'),
(6, '2023-04-17', '11.00am', 'C006'),
(7, '2023-04-17', '9.30pm', 'OSAIL GROUND'),
(8, '2023-04-17', '7.00pm', 'OSAIL GROUND'),
(9, '2023-04-17', '5.00pm', 'E-BLOCK GROUND'),
(10, '2023-04-17', '6.00pm', 'E-BLOCK GROUND'),
(11, '2023-04-16', '10.30am', 'D008'),
(12, '2023-04-16', '10.00am', 'C003'),
(13, '2023-04-15', '3.00pm', 'E002'),
(14, '2023-04-15', '2.00pm', 'B102');

-- --------------------------------------------------------

--
-- Table structure for table `event_type`
--

CREATE TABLE `event_type` (
  `type_id` int(10) NOT NULL,
  `type_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event_type`
--

INSERT INTO `event_type` (`type_id`, `type_title`) VALUES
(1, 'Technical Events'),
(2, 'Gaming Events'),
(3, 'On Stage Events'),
(4, 'Off Stage Events');

-- --------------------------------------------------------

--
-- Table structure for table `participent`
--

CREATE TABLE `participent` (
  `usn` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `branch` varchar(11) NOT NULL,
  `sem` int(11) NOT NULL,
  `email` varchar(300) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `college` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `participent`
--

INSERT INTO `participent` (`usn`, `name`, `branch`, `sem`, `email`, `phone`, `college`) VALUES
('21BCP316', 'Shresty', 'CSE', 5, 'shresty@gmail.com', '8123300011', 'PDEU'),
('21BCP283', 'Charmi', 'CSE', 5, 'c@GMAIL.COM', '9934736623', 'PDEU'),
('21BCP308', 'Rashi', 'CSE', 5, 'rashi@gmail.com', '7888387323', 'PDEU'),
('21BCP163', 'Tanya', 'CSE', 5, 'tk@saividya.ac.in', '8998848488', 'PDEU'),
('21BCP292', 'Kinshu', 'CSE', 5, 'kinshu@gmail.com', '9858787438', 'PDEU'),
('21BCP002', 'Yatri', 'CSE', 5, 'yatri@gmail.com', '7897854345', 'PDEU');

-- --------------------------------------------------------

--
-- Table structure for table `registered`
--

CREATE TABLE `registered` (
  `rid` int(11) NOT NULL,
  `usn` varchar(20) DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registered`
--

INSERT INTO `registered` (`rid`, `usn`, `event_id`) VALUES
(1, '21BCP316', 2),
(2, '21BCP283', 4),
(3, '21BCP308', 2),
(4, '21BCP163', 3),
(5, '21BCP292', 3),
(6, '21BCE039', 5),
(8, '21BME038', 6),
(10, '21BCP002', 7);

--
-- Triggers `registered`
--
DELIMITER $$
CREATE TRIGGER `count` AFTER INSERT ON `registered` FOR EACH ROW update events
set events.participents=events.participents+1
WHERE events.event_id=new.event_id
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `staff_coordinator`
--

CREATE TABLE `staff_coordinator` (
  `stid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff_coordinator`
--

INSERT INTO `staff_coordinator` (`stid`, `name`, `phone`, `event_id`) VALUES
(1, 'Amitava', '987654321', 1),
(2, 'Amita', '9956436123', 2),
(3, 'Shaan', '9887329321', 3),
(4, 'Ganguly', '9256436789', 4),
(5, 'Rahul', '9956406101', 5),
(6, 'Urvashi', '9123436310', 6),
(7, 'Eshika', '9456231610', 7),
(8, 'Dinesh', '9789436110', 8),
(9, 'Shubham', '9256412310', 9),
(10, 'Sai', '995615610', 10),
(11, 'Reha', '9256473510', 11),
(12, 'Annanya', '9345636610', 12),
(13, 'Sushmita', '9848476464', 13),
(14, 'Bhavya', '9876543210', 14);

-- --------------------------------------------------------

--
-- Table structure for table `student_coordinator`
--

CREATE TABLE `student_coordinator` (
  `sid` int(11) NOT NULL,
  `st_name` varchar(100) NOT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_coordinator`
--

INSERT INTO `student_coordinator` (`sid`, `st_name`, `phone`, `event_id`) VALUES
(1, 'Shresty Bohra', '6956436610', 1),
(2, 'Ami Naik', '7956436123', 2),
(3, 'Kushal ', '8956436456', 3),
(4, 'Jinal', '6956436789', 4),
(5, 'Nisarg', '7956436101', 5),
(6, 'Dhwani', '8123436610', 6),
(7, 'Rashida', '6456436610', 7),
(8, 'Manthan', '7789436610', 8),
(9, 'Vidhi', '7956412310', 9),
(10, 'Meet', '7956445610', 10),
(11, 'Shrina', '6956473510', 11),
(12, 'Utsav', '8955636610', 12),
(13, 'Hrishi', '8994874384', 13),
(14, 'Krishna', 9876534245, 14);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `event_info`
--
ALTER TABLE `event_info`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `event_type`
--
ALTER TABLE `event_type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `participent`
--
ALTER TABLE `participent`
  ADD PRIMARY KEY (`usn`);

--
-- Indexes for table `registered`
--
ALTER TABLE `registered`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `staff_coordinator`
--
ALTER TABLE `staff_coordinator`
  ADD PRIMARY KEY (`stid`);

--
-- Indexes for table `student_coordinator`
--
ALTER TABLE `student_coordinator`
  ADD PRIMARY KEY (`sid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `event_info`
--
ALTER TABLE `event_info`
  MODIFY `event_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `registered`
--
ALTER TABLE `registered`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `staff_coordinator`
--
ALTER TABLE `staff_coordinator`
  MODIFY `stid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `student_coordinator`
--
ALTER TABLE `student_coordinator`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
