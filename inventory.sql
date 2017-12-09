-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2017 at 09:35 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer_sales`
--

CREATE TABLE `customer_sales` (
  `id` int(55) NOT NULL,
  `name` varchar(55) NOT NULL,
  `gender` varchar(55) NOT NULL,
  `contact` varchar(55) NOT NULL,
  `address` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dealership`
--

CREATE TABLE `dealership` (
  `id` int(55) NOT NULL,
  `dealer_name` varchar(55) NOT NULL,
  `branch` varchar(55) NOT NULL,
  `dealer_id` varchar(55) NOT NULL,
  `contact` varchar(55) NOT NULL,
  `address` varchar(100) NOT NULL,
  `agent_name` varchar(30) NOT NULL,
  `agent_contact` varchar(30) NOT NULL,
  `date` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dealership`
--

INSERT INTO `dealership` (`id`, `dealer_name`, `branch`, `dealer_id`, `contact`, `address`, `agent_name`, `agent_contact`, `date`) VALUES
(2, 'ZXczcX', 'SAFASF', 'ASfASF', 'ASFASF', 'FASDFSDG', '', '', 'asfsfg'),
(3, 'Meat', 'MMMM', 'Mutton', 'meat Bengal', '50', '', '', 'KG'),
(6, 'aftabwwww', 'chittagong', '12345', '0181766679', 'loharaga', 'tanvir', '01521223567', '2017-04-04');

-- --------------------------------------------------------

--
-- Table structure for table `membership`
--

CREATE TABLE `membership` (
  `id` int(11) NOT NULL,
  `member_id` varchar(15) NOT NULL,
  `name` varchar(33) NOT NULL,
  `gender` varchar(15) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(55) NOT NULL,
  `mobile_no` varchar(15) NOT NULL,
  `nid` varchar(33) NOT NULL,
  `pre_address` varchar(80) NOT NULL,
  `per_address` varchar(80) NOT NULL,
  `payment` varchar(15) NOT NULL,
  `category` varchar(15) NOT NULL,
  `date` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `membership`
--

INSERT INTO `membership` (`id`, `member_id`, `name`, `gender`, `password`, `email`, `mobile_no`, `nid`, `pre_address`, `per_address`, `payment`, `category`, `date`) VALUES
(1, 'sdfa', 'sdfsd', 'Male', 'dfsdf', 'fsf@gmail.com', 'dfsff', 'dsfsd', 'dfsd', 'dsfsd', 'sdfsdf', 'Premium', '2017-04-20'),
(3, 'asdf', 'sdafdas', 'Female', 'asdf', 'sadfasd', 'ds', 'fsdafsadf', 'sdf', 'sdfas', 'sdf', 'Sliver', '2017-04-23'),
(4, 'sadf', 'asdf', 'Female', 'sdfas', 'dfasdf', 'sdf', 'asdf', 'asdfasd', 'fasdfasdf', 'sadfasdf', 'Sliver', '2017-04-24'),
(5, 'sadfas', 'dsafas', 'Female', 'sadf', 'asdfa', 'sadfas', 'asdfa', 'sadf', 'asdfasdf', 'asdfasdf', 'Sliver', '2017-04-16'),
(6, 'sdfsa', 'asdfasdf', 'Female', 'asdfasdf', 'asdf', 'asdf', 'asdfasdf', 'asdf', 'asdfasdf', 'sdafasdf', 'Premium', '2017-04-17'),
(7, 'sdfasdf', 'asdfasd', 'Female', 'sdafas', 'asdf', 'sdaf', 'asdfas', 'sdfas', 'sadfasdf', 'sadfas', 'Premium', '2017-04-23'),
(8, 'dfhd', 'fhsdfh', 'Male', 'sdfhsdh', 'sdfh', 'sdfh', 'sdfh', 'sdfhsdf', 'hsdhsd', 'fhsdhfsdsfh', 'Premium', '2017-04-17');

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `id` int(55) NOT NULL,
  `code` varchar(50) NOT NULL,
  `category` varchar(55) NOT NULL,
  `product_name` varchar(55) NOT NULL,
  `company_name` varchar(55) NOT NULL,
  `quantity` varchar(55) NOT NULL,
  `unit` varchar(55) NOT NULL,
  `per_unit_price` varchar(55) NOT NULL,
  `product_exp_date` varchar(55) NOT NULL,
  `purchase_date` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`id`, `code`, `category`, `product_name`, `company_name`, `quantity`, `unit`, `per_unit_price`, `product_exp_date`, `purchase_date`) VALUES
(15, 'weqw', 'Grocery', 'erqewrqew', 'ewred', 'ewrew', 'K.G', 'er11111', '2017-04-27', '2017-04-13'),
(16, 'adas', 'Grocery', 'asdfs', 'asdfas', 'sadsa', 'K.G', 'sadas', '2017-04-19', '2017-04-28'),
(17, 'sad', 'Diary', 'sadas', 'asD', 'DSax', 'Litre', 'sadx', '2017-04-27', '2017-04-20');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(55) NOT NULL,
  `quantity` varchar(55) NOT NULL,
  `unit` varchar(55) NOT NULL,
  `date` varchar(55) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(55) NOT NULL,
  `staff_id` varchar(55) NOT NULL,
  `password` varchar(55) NOT NULL,
  `name` varchar(55) NOT NULL,
  `gender` varchar(55) NOT NULL,
  `mobile_no` varchar(55) NOT NULL,
  `nid` varchar(55) NOT NULL,
  `pre_address` varchar(55) NOT NULL,
  `per_address` varchar(55) NOT NULL,
  `category` varchar(55) NOT NULL,
  `date` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `staff_id`, `password`, `name`, `gender`, `mobile_no`, `nid`, `pre_address`, `per_address`, `category`, `date`) VALUES
(2, 'tanvir123', '123456', 'Tanvir Bin Faysal Khan', 'Male', '01911893172', '12547856947852364', 'ctg', 'ctg', 'Manager', '2017-04-04');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id` int(55) NOT NULL,
  `agent_name` varchar(55) NOT NULL,
  `agent_number` varchar(55) NOT NULL,
  `slip_number` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer_sales`
--
ALTER TABLE `customer_sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dealership`
--
ALTER TABLE `dealership`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `membership`
--
ALTER TABLE `membership`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_code` (`code`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_product_id` (`product_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer_sales`
--
ALTER TABLE `customer_sales`
  MODIFY `id` int(55) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dealership`
--
ALTER TABLE `dealership`
  MODIFY `id` int(55) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `membership`
--
ALTER TABLE `membership`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `id` int(55) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(55) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(55) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(55) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `fk_product_id` FOREIGN KEY (`product_id`) REFERENCES `purchase` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
