-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2023 at 06:59 PM
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
-- Database: `farmers_diary`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `address_id` int(11) NOT NULL,
  `village` varchar(50) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `zip_code` int(11) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`address_id`, `village`, `city`, `state`, `zip_code`, `country`) VALUES
(1, 'Rampura', 'Dhaka', 'Dhaka', 1219, 'Bangladesh'),
(2, 'Motijheel', 'Dhaka', 'Dhaka', 1000, 'Bangladesh'),
(3, 'Shahbagh', 'Dhaka', 'Dhaka', 1000, 'Bangladesh'),
(4, 'Mohakhali', 'Dhaka', 'Dhaka', 1212, 'Bangladesh'),
(5, 'Lalbagh', 'Dhaka', 'Dhaka', 1211, 'Bangladesh'),
(6, 'Gol dangi', 'Faridpur', 'Dhaka', 1000, 'Bangladesh'),
(7, 'Dhanmondi', 'Dhaka', 'Dhaka', 1209, 'Bangladesh'),
(8, 'Baridhara', 'Dhaka', 'Dhaka', 1206, 'Bangladesh'),
(9, 'Mohammadpur', 'Dhaka', 'Dhaka', 4182, 'Bangladesh'),
(10, 'Pilkhana', 'Dhaka', 'Dhaka', 1211, 'Bangladesh');

-- --------------------------------------------------------

--
-- Table structure for table `buyer`
--

CREATE TABLE `buyer` (
  `buyer_id` int(11) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `nid` int(11) DEFAULT NULL,
  `gender` varchar(5) DEFAULT NULL,
  `dof` date DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `passwords` varchar(250) DEFAULT NULL,
  `trade_license` varchar(30) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buyer`
--

INSERT INTO `buyer` (`buyer_id`, `name`, `nid`, `gender`, `dof`, `phone`, `passwords`, `trade_license`, `address_id`) VALUES
(1, 'Sabbir Ahmed', 11111, 'Male', '2013-01-01', 1978568945, '3465456', '4563654', 1),
(2, 'Md Alamin', 567467, 'Male', '1998-03-23', 1345456567, '4565467', '653675367', 2),
(3, 'Md Jobaer Hossain', 456456, 'Male', '1996-03-21', 197689455, '345456346', '5678564', 3),
(4, 'Md Galib Hossain', 456545, 'Male', '1993-03-26', 234674832, '45645', '345345', 4),
(5, 'Ashraful Shawun', 3456456, 'Male', '1994-03-10', 24556567, '345345', '4574567', 5),
(6, 'Shakhwat Hossain', 456546, 'Male', '1993-03-27', 23423434, '345345', '4564563', 6),
(7, 'Atikur Rahman', 4345656, 'Male', '2004-03-25', 234324, '456567', '35567', 7),
(8, 'Arko Islam', 2346354, 'Male', '1997-03-07', 23453456, '43645456', '4456', 8),
(9, 'Tonmoy Islam', 4356456, 'Male', '1994-03-12', 23423, '234556', '254645', 9),
(10, 'Raju Ahmed', 5657, 'Male', '1996-03-30', 346456, '334535', '344535', 10);

-- --------------------------------------------------------

--
-- Table structure for table `farmers`
--

CREATE TABLE `farmers` (
  `farmer_id` int(11) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `nid` int(11) DEFAULT NULL,
  `gender` varchar(5) DEFAULT NULL,
  `dof` date DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `passwords` varchar(250) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `farmers`
--

INSERT INTO `farmers` (`farmer_id`, `name`, `nid`, `gender`, `dof`, `phone`, `passwords`, `address_id`) VALUES
(1, 'Mahin Rahman', 34534, 'Male', '2003-03-22', 197345689, '23452', 7),
(2, 'Shariful Islam', 23465, 'Male', '1997-03-13', 235734, '34534', 2),
(3, 'Motaleb Hosen', 34756, 'Male', '2005-03-18', 3453452, '34534', 7),
(4, 'Akash Sheikh', 56756, 'Male', '1996-05-24', 45756745, '3453', 6),
(5, 'Ridoy Hasan', 54756, 'Male', '1997-03-13', 456547, '24563567', 6),
(6, 'Murad Khan', 45647, 'Male', '1999-03-31', 345345, '23456456', 7),
(7, 'Raisul Chowdhury', 456456, 'Male', '1996-03-28', 2345, '356456', 6),
(8, 'Kawsar Islam', 456536, 'Male', '1998-03-25', 2342234, '34534', 7),
(9, 'Mehedi Islam', 4563456, 'Male', '1997-03-15', 32464567, '34534', 5),
(10, 'Torikul Islam', 37456, 'Male', '1999-03-24', 234556, '345346', 7);

-- --------------------------------------------------------

--
-- Table structure for table `mediator`
--

CREATE TABLE `mediator` (
  `mediator_id` int(11) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `nid` int(11) DEFAULT NULL,
  `gender` varchar(5) DEFAULT NULL,
  `dof` date DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `passwords` varchar(250) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mediator`
--

INSERT INTO `mediator` (`mediator_id`, `name`, `nid`, `gender`, `dof`, `phone`, `passwords`, `address_id`) VALUES
(1, 'Nasim Hasan', 3456456, 'Male', '1998-06-27', 23478, '45646', 7),
(2, 'Biplop Saha', 346567, 'Male', '1997-03-29', 34566, '656345', 7),
(3, 'Ripon Hasan', 4365456, 'Male', '1994-03-15', 34564, '34542', 7),
(4, 'Suman Haque', 356757, 'Male', '2004-03-05', 235745, '4566456', 5),
(5, 'Shamim Hasan', 3456456, 'Male', '1993-03-31', 456354, '45645', 7),
(6, 'Sabbir Islam', 4356456, 'Male', '2000-03-10', 23543456, '34567', 7),
(7, 'Rafayet Miandad', 3567456, 'Male', '2003-03-28', 4573567, '355675', 7),
(8, 'Maruful Islam', 3567567, 'Male', '2004-03-24', 357567, '4574567', 1),
(9, 'Mirazul Islam', 34567367, 'Male', '2003-03-13', 35567567, '45756', 6),
(10, 'Khalid Hasan', 46744, 'Male', '1994-03-26', 2456567, '4575767', 3);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `buyer_id` int(11) DEFAULT NULL,
  `farmer_id` int(11) DEFAULT NULL,
  `mediator_id` int(11) DEFAULT NULL,
  `dates` date DEFAULT NULL,
  `total_price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `buyer_id`, `farmer_id`, `mediator_id`, `dates`, `total_price`) VALUES
(1, 1, 1, 1, '2023-03-10', 15),
(2, 2, 2, 4, '2023-03-09', 20),
(3, 3, 3, 3, '2023-03-31', 25),
(4, 4, 4, 4, '2023-02-07', 30),
(5, 5, 5, 5, '2023-03-06', 35),
(6, 6, 6, 6, '2023-03-27', 40),
(7, 7, 7, 7, '2023-03-20', 45),
(8, 8, 8, 8, '2023-03-05', 50),
(9, 9, 9, 9, '2023-03-11', 55),
(10, 10, 10, 10, '2023-03-31', 60);

-- --------------------------------------------------------

--
-- Table structure for table `products_details`
--

CREATE TABLE `products_details` (
  `product_details_id` int(11) NOT NULL,
  `Name` varchar(15) DEFAULT NULL,
  `Weight` int(11) DEFAULT NULL,
  `Unit` varchar(11) DEFAULT NULL,
  `Price` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products_details`
--

INSERT INTO `products_details` (`product_details_id`, `Name`, `Weight`, `Unit`, `Price`, `product_id`, `Date`) VALUES
(1, 'Alu', 1, 'kg', 100, 1, '2023-03-23'),
(2, 'Peyaj', 2, 'kg', 300, 2, '2023-03-17'),
(3, 'Morich', 1, 'kg', 50, 3, '2023-03-15'),
(4, 'Roshun', 2, 'kg', 300, 4, '2023-03-24'),
(5, 'Ada', 1, 'kg', 100, 5, '2023-03-24'),
(6, 'Morich', 2, 'kg', 100, 6, '2023-03-30'),
(7, 'Gajor', 5, 'kg', 200, 7, '2023-03-18'),
(8, 'Shosha', 5, 'kg', 300, 8, '2023-03-18'),
(9, 'Kacha Holud', 6, 'kg', 300, 9, '2023-03-15'),
(10, 'Shosha', 5, 'kg', 200, 10, '2023-03-30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`address_id`);

--
-- Indexes for table `buyer`
--
ALTER TABLE `buyer`
  ADD PRIMARY KEY (`buyer_id`),
  ADD KEY `address_id` (`address_id`);

--
-- Indexes for table `farmers`
--
ALTER TABLE `farmers`
  ADD PRIMARY KEY (`farmer_id`),
  ADD KEY `address_id` (`address_id`);

--
-- Indexes for table `mediator`
--
ALTER TABLE `mediator`
  ADD PRIMARY KEY (`mediator_id`),
  ADD KEY `address_id` (`address_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `buyer_id` (`buyer_id`),
  ADD KEY `farmer_id` (`farmer_id`),
  ADD KEY `mediator_id` (`mediator_id`);

--
-- Indexes for table `products_details`
--
ALTER TABLE `products_details`
  ADD PRIMARY KEY (`product_details_id`),
  ADD KEY `product_id` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `buyer`
--
ALTER TABLE `buyer`
  MODIFY `buyer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `farmers`
--
ALTER TABLE `farmers`
  MODIFY `farmer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `mediator`
--
ALTER TABLE `mediator`
  MODIFY `mediator_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `products_details`
--
ALTER TABLE `products_details`
  MODIFY `product_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `buyer`
--
ALTER TABLE `buyer`
  ADD CONSTRAINT `buyer_ibfk_1` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`);

--
-- Constraints for table `farmers`
--
ALTER TABLE `farmers`
  ADD CONSTRAINT `farmers_ibfk_1` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`);

--
-- Constraints for table `mediator`
--
ALTER TABLE `mediator`
  ADD CONSTRAINT `mediator_ibfk_1` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`buyer_id`) REFERENCES `buyer` (`buyer_id`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`farmer_id`) REFERENCES `farmers` (`farmer_id`),
  ADD CONSTRAINT `products_ibfk_3` FOREIGN KEY (`mediator_id`) REFERENCES `mediator` (`mediator_id`);

--
-- Constraints for table `products_details`
--
ALTER TABLE `products_details`
  ADD CONSTRAINT `products_details_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
