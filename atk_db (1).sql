-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 10, 2025 at 07:14 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `atk_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `coursetb`
--

CREATE TABLE `coursetb` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `createdDate` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `modifiedDate` varchar(100) NOT NULL,
  `duration` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `status` varchar(30) NOT NULL,
  `staffId` int(11) NOT NULL,
  `courseTypeId` int(11) NOT NULL,
  `photo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `coursetb`
--

INSERT INTO `coursetb` (`id`, `title`, `description`, `createdDate`, `modifiedDate`, `duration`, `price`, `status`, `staffId`, `courseTypeId`, `photo`) VALUES
(6, 'The Age of Sustainable Development', 'This course provides an in-depth introduction to the concept of sustainable development, including the environmental, economic, and social dimensions. It explores how we can use scientific knowledge and policy tools to build a more sustainable world.', '2025-07-05 20:47:46', '2025-07-06 23:24:37', 60, 124000, 'active', 0, 10, '../photo/course/_concept-of-sustainable-development.png'),
(7, 'From Climate Science to Act', 'A 4‑week MOOC exploring scientific evidence, regional impacts, and action strategies—including NDCs and carbon tracking—to build resilience in specific world regions.', '2025-07-01 23:37:19', '2025-07-01 01:10:03', 32, 150000, 'active', 0, 11, '../photo/course/_2-earths-climate-system-karsten-schneiderscience-photo-library.jpg'),
(8, 'fghjkl', 'akfhifdkvhihsd', '2025-07-05 20:59:55', '2025-07-05 21:00:21', 5, 3000, 'inActive', 0, 10, '../photo/course/_atk.jpg'),
(9, 'Green IT and Sustainable Technologies', 'This course explores how information technology can drive sustainability in organizations and communities. It covers energy-efficient computing, green data centers, sustainable software development, and the role of emerging technologies such as AI and IoT in achieving environmental goals. Students will gain practical skills to implement IT solutions that reduce carbon footprint and promote sustainability across sectors.', '2025-07-06 23:28:44', '2025-07-06 23:57:10', 40, 400000, 'active', 0, 10, '../photo/course/_Green IT and Sustainable Technologies.webp'),
(10, 'Environmental Management & Ethics', 'Designed for scientists and engineers facing complex environmental issues, this course covers:\r\n\r\nEnvironmental ethical dilemmas and the foundations of environmental ethics\r\n\r\nManagement approaches to “wicked” environmental problems\r\n\r\nDecision-support tools including cost-benefit analysis, risk assessment, and technology assessment\r\n\r\nEnvironmental regulations and key international principles of environmental management\r\n\r\nAnalysis and formulation of recommendations for environmental ethical dilemmas', '2025-08-09 21:49:35', '2025-08-09 22:05:00', 14, 200000, 'active', 0, 15, '../photo/course/_Environmental Management & Ethics.webp');

-- --------------------------------------------------------

--
-- Table structure for table `coursetypetb`
--

CREATE TABLE `coursetypetb` (
  `id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `createdDate` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `modifiedDate` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `coursetypetb`
--

INSERT INTO `coursetypetb` (`id`, `type`, `createdDate`, `modifiedDate`, `status`) VALUES
(3, 'type three', '', '', 'inActive'),
(4, 'type one', '', '', 'inActive'),
(10, 'Sustainable Development', '2025-06-22 20:48:54', '2025-07-01 00:22:26', 'active'),
(11, 'Climate Change', '2025-07-01 00:21:28', '2025-07-01 00:21:28', 'active'),
(12, 'Renewable Energy', '2025-07-01 00:22:45', '2025-07-01 00:22:45', 'active'),
(13, 'Circular Economy: Sustainable Materials Management', '2025-07-05 00:22:35', '2025-07-05 00:23:57', 'active'),
(14, 'Technology and Innovation for Sustainabilit', '2025-07-06 23:07:32', '2025-07-06 23:10:08', 'active'),
(15, 'Global Environmental Management', '2025-08-09 13:34:59', '2025-08-09 13:38:21', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `paymenttb`
--

CREATE TABLE `paymenttb` (
  `paymentId` int(11) NOT NULL,
  `method` varchar(50) NOT NULL,
  `status` varchar(30) NOT NULL,
  `createdDate` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `modifiedDate` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `paymenttb`
--

INSERT INTO `paymenttb` (`paymentId`, `method`, `status`, `createdDate`, `modifiedDate`) VALUES
(1, 'Kpay', 'active', '2025-06-23 13:22:25', '2025-06-30 23:59:25'),
(2, 'WavePay', 'active', '2025-06-23 13:22:33', '2025-06-23 13:22:33'),
(3, 'AYA Pay', 'active', '2025-06-23 13:22:55', '2025-06-23 13:22:55'),
(4, 'Visa Card', 'active', '2025-06-23 13:23:06', '2025-06-23 13:23:06'),
(5, 'MPU Card', 'active', '2025-06-23 13:23:13', '2025-06-23 13:23:13'),
(6, 'Ta Da', 'inActive', '2025-06-23 13:39:43', '2025-06-23 13:39:43'),
(7, 'too doo', 'inActive', '2025-06-23 13:40:10', '2025-06-23 13:40:10'),
(8, 'Ta Da', 'inActive', '2025-06-23 14:52:29', '2025-06-23 14:52:29'),
(9, 'Credit Card', 'active', '2025-06-23 16:35:07', '2025-06-23 16:57:36'),
(10, 'TT', 'inActive', '2025-06-23 16:57:11', '2025-06-23 16:57:11'),
(11, 'Debit Card', 'active', '2025-06-30 23:56:42', '2025-06-30 23:56:42'),
(12, 'Paypal', 'active', '2025-07-05 00:17:59', '2025-07-05 00:18:21'),
(13, 'MasterCard', 'active', '2025-07-06 21:37:37', '2025-07-06 21:42:44');

-- --------------------------------------------------------

--
-- Table structure for table `roletb`
--

CREATE TABLE `roletb` (
  `roleId` int(11) NOT NULL,
  `roleName` varchar(50) NOT NULL,
  `roleStatus` varchar(30) NOT NULL,
  `createdDate` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roletb`
--

INSERT INTO `roletb` (`roleId`, `roleName`, `roleStatus`, `createdDate`) VALUES
(1, 'Admin', 'inActive', '2025-06-19 23:37:13'),
(2, 'Staff', 'inActive', '2025-06-20 14:23:40'),
(3, 'Manager', 'inActive', '2025-06-20 14:23:47'),
(4, 'CEO', 'inactive', '2025-06-19 23:22:57'),
(5, 'CEO', 'active', '2025-07-05 21:03:48'),
(6, 'Admin', 'active', '2025-06-20 15:59:59'),
(7, 'Co Founder', 'active', '2025-06-20 16:13:05'),
(8, 'Manager', 'active', '2025-06-20 16:11:52'),
(9, 'CFO', 'inActive', '2025-06-19 23:37:45'),
(10, 'Marketing', 'active', '2025-06-30 21:12:52'),
(11, 'Founder', 'active', '2025-07-05 00:15:54'),
(12, 'Administrato', 'inActive', ''),
(13, 'Administrator', 'Active', '2025-07-06 21:26:01');

-- --------------------------------------------------------

--
-- Table structure for table `stafftb`
--

CREATE TABLE `stafftb` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `gender` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phoneNumber` varchar(20) NOT NULL,
  `dob` varchar(30) NOT NULL,
  `address` varchar(100) NOT NULL,
  `photo` text NOT NULL,
  `password` varchar(50) NOT NULL,
  `roleId` int(11) NOT NULL,
  `status` varchar(30) NOT NULL,
  `lastlogin` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stafftb`
--

INSERT INTO `stafftb` (`id`, `name`, `gender`, `email`, `phoneNumber`, `dob`, `address`, `photo`, `password`, `roleId`, `status`, `lastlogin`) VALUES
(1, 'Moon JunHui', 'Male', 'moonjunhui1997@gmail.com', '09988429786', '1996-08-16', 'china', '../photo/staff/_wjh.jpg', 'moonjunhui', 5, 'active', '2025-07-07 00:10:59'),
(2, 'Aye Thant Kyi', 'Female', 'ayethantkyi0@gmail.com', '09988429785', '2000-07-23', 'Yangon', '../photo/staff/_atk.jpg', 'yujin', 5, 'active', '2025-07-01 23:39:00'),
(3, 'Dino', 'Male', 'dino@gmail.com', '0998235689', '1999-02-11', 'Iksan-si, Jeollakbu-do, South Korea', '../photo/staff/_Dino.jfif', 'dinosaur', 10, 'active', '2025-07-07 00:19:13'),
(4, 'DK', 'Male', 'dokyeom18@gmail.com', '091821997', '1997-02-18', 'Mapo District, Seoul, South Korea', '../photo/staff/_DK.webp', 'dokyeom', 5, 'active', '2025-07-07 00:20:33'),
(5, 'Hansol Vernon Chwe', 'Male', 'vernon@gmail.com', '09887654321', '1997-02-18', 'Manhattan, New York City, U.S.', '../photo/staff/_Vernon.png', 'vernon', 11, 'active', '2025-07-07 00:29:49');

-- --------------------------------------------------------

--
-- Table structure for table `studentregistertb`
--

CREATE TABLE `studentregistertb` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `gender` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phoneNumber` varchar(20) NOT NULL,
  `dob` varchar(30) NOT NULL,
  `NRC` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `photo` text NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` varchar(30) NOT NULL,
  `lastlogin` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `studentregistertb`
--

INSERT INTO `studentregistertb` (`id`, `name`, `gender`, `email`, `phoneNumber`, `dob`, `NRC`, `address`, `photo`, `password`, `status`, `lastlogin`) VALUES
(1, 'Aye Thant Kyi', 'Female', 'ayethantkyi0@gmail.com', '09988429785', '2000-07-23', '12/yapatha(N)102331', 'Yangon', '../photo/student/_atk.jpg', 'atk', 'active', ''),
(2, 'Moon JunHui', 'Male', 'moonjunhui@gmail.com', '09988429785', '1997-06-04', '12/yapatha(N)102327', 'china', '../photo/student/_wjh.jpg', 'moonjunhui', 'active', '');

-- --------------------------------------------------------

--
-- Table structure for table `studenttb`
--

CREATE TABLE `studenttb` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `gender` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phoneNumber` varchar(20) NOT NULL,
  `dob` varchar(30) NOT NULL,
  `NRC` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `photo` text NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` varchar(30) NOT NULL,
  `lastlogin` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `studenttb`
--

INSERT INTO `studenttb` (`id`, `name`, `gender`, `email`, `phoneNumber`, `dob`, `NRC`, `address`, `photo`, `password`, `status`, `lastlogin`) VALUES
(8, 'Choi Seung-Cheol', 'Male', 'choiseungcheol@gmail.com', '0987653246', '1995-08-08', '', 'Daegu, South Korea', '../photo/staff/_scoups.webp', 'scoups', 'active', '2025-06-28 21:14:38'),
(10, 'Hoshi', 'Male', 'hoshi@gmail.com', '0978787865', '1996-06-15', '', 'Namyangju-si, Gyeonggi-do, South Korea', '../photo/student/_hoshi.webp', 'hoshi', 'active', '2025-06-27 20:52:49'),
(11, 'Kim Mingyu', 'Other', 'kimmingyu@gmail.com', '09785634231', '1997-04-06', '', 'Anyang-si, Gyeonggi-do, South Korea', '../photo/staff/_mingyu.webp', 'mingyu', 'active', '2025-07-05 00:10:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `coursetb`
--
ALTER TABLE `coursetb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coursetypetb`
--
ALTER TABLE `coursetypetb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paymenttb`
--
ALTER TABLE `paymenttb`
  ADD PRIMARY KEY (`paymentId`);

--
-- Indexes for table `roletb`
--
ALTER TABLE `roletb`
  ADD PRIMARY KEY (`roleId`);

--
-- Indexes for table `stafftb`
--
ALTER TABLE `stafftb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `studentregistertb`
--
ALTER TABLE `studentregistertb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `studenttb`
--
ALTER TABLE `studenttb`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `coursetb`
--
ALTER TABLE `coursetb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `coursetypetb`
--
ALTER TABLE `coursetypetb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `paymenttb`
--
ALTER TABLE `paymenttb`
  MODIFY `paymentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `roletb`
--
ALTER TABLE `roletb`
  MODIFY `roleId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `stafftb`
--
ALTER TABLE `stafftb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `studentregistertb`
--
ALTER TABLE `studentregistertb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `studenttb`
--
ALTER TABLE `studenttb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
