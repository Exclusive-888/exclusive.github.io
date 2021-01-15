-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2021 at 05:19 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `posnic`
--

-- --------------------------------------------------------

--
-- Table structure for table `category_details`
--

CREATE TABLE `category_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(120) NOT NULL,
  `category_description` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category_details`
--

INSERT INTO `category_details` (`id`, `category_name`, `category_description`) VALUES
(40, 'grossry', ''),
(41, 'SSSS', 'SSSS');

-- --------------------------------------------------------

--
-- Table structure for table `customer_details`
--

CREATE TABLE `customer_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_name` varchar(200) NOT NULL,
  `customer_address` varchar(500) NOT NULL,
  `customer_contact1` varchar(100) NOT NULL,
  `customer_contact2` varchar(100) NOT NULL,
  `balance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_details`
--

INSERT INTO `customer_details` (`id`, `customer_name`, `customer_address`, `customer_contact1`, `customer_contact2`, `balance`) VALUES
(23, 'Sakshi Patel', 'B-602, Shikhar Height', '9825067520', '', 1780);

-- --------------------------------------------------------

--
-- Table structure for table `stock_avail`
--

CREATE TABLE `stock_avail` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock_avail`
--

INSERT INTO `stock_avail` (`id`, `name`, `quantity`) VALUES
(46, 'SALT', 0),
(47, 'MAGGI', 0),
(48, 'SSSS', 6);

-- --------------------------------------------------------

--
-- Table structure for table `stock_details`
--

CREATE TABLE `stock_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `stock_id` varchar(120) NOT NULL,
  `stock_name` varchar(120) NOT NULL,
  `stock_quatity` int(11) NOT NULL,
  `supplier_id` varchar(250) NOT NULL,
  `company_price` decimal(10,2) NOT NULL,
  `selling_price` decimal(10,2) NOT NULL,
  `category` varchar(120) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `expire_date` datetime NOT NULL,
  `uom` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock_details`
--

INSERT INTO `stock_details` (`id`, `stock_id`, `stock_name`, `stock_quatity`, `supplier_id`, `company_price`, `selling_price`, `category`, `date`, `expire_date`, `uom`) VALUES
(59, 'SD1', 'SSSS', 0, 'SSS', '20.00', '20.00', 'SSS', '2021-01-04 20:24:03', '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `stock_entries`
--

CREATE TABLE `stock_entries` (
  `id` int(10) UNSIGNED NOT NULL,
  `stock_id` varchar(120) NOT NULL,
  `stock_name` varchar(260) NOT NULL,
  `stock_supplier_name` varchar(200) NOT NULL,
  `category` varchar(120) NOT NULL,
  `quantity` int(11) NOT NULL,
  `company_price` decimal(10,2) NOT NULL,
  `selling_price` decimal(10,2) NOT NULL,
  `opening_stock` int(11) NOT NULL,
  `closing_stock` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `username` varchar(120) NOT NULL,
  `type` varchar(50) NOT NULL,
  `salesid` varchar(120) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `payment` decimal(10,2) NOT NULL,
  `balance` decimal(10,2) NOT NULL,
  `mode` varchar(150) NOT NULL,
  `description` varchar(500) NOT NULL,
  `due` datetime NOT NULL,
  `subtotal` int(11) NOT NULL,
  `count1` int(11) NOT NULL,
  `billnumber` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock_entries`
--

INSERT INTO `stock_entries` (`id`, `stock_id`, `stock_name`, `stock_supplier_name`, `category`, `quantity`, `company_price`, `selling_price`, `opening_stock`, `closing_stock`, `date`, `username`, `type`, `salesid`, `total`, `payment`, `balance`, `mode`, `description`, `due`, `subtotal`, `count1`, `billnumber`) VALUES
(447, 'PR3', 'SSSS', 'SSS', '', 100, '20.00', '20.00', 0, 100, '2021-01-04 00:00:00', 'Exclusive', 'entry', '', '2000.00', '1000.00', '1000.00', 'cheque', 'KKKK', '2021-01-22 00:00:00', 2000, 1, 'PR3'),
(448, 'PR450', 'SSSS', '222', '', 56, '20.00', '20.00', 100, 156, '2021-01-04 00:00:00', 'Exclusive', 'entry', '', '1120.00', '120.00', '1000.00', 'cheque', '', '0000-00-00 00:00:00', 1120, 1, 'M21'),
(449, 'SD449', 'SSSS', '', '', 10, '0.00', '20.00', 156, 146, '2021-01-04 00:00:00', 'Exclusive', 'sales', 'SD449', '200.00', '0.00', '0.00', '', '', '0000-00-00 00:00:00', 0, 1, 'PR451'),
(450, 'SD450', 'SSSS', '', '', 140, '0.00', '20.00', 146, 6, '2021-01-10 00:00:00', 'Exclusive', 'sales', 'SD450', '2800.00', '0.00', '0.00', '', '', '0000-00-00 00:00:00', 0, 1, 'PR452');

-- --------------------------------------------------------

--
-- Table structure for table `stock_sales`
--

CREATE TABLE `stock_sales` (
  `id` int(10) NOT NULL,
  `transactionid` varchar(250) NOT NULL,
  `stock_name` varchar(200) NOT NULL,
  `category` varchar(120) NOT NULL,
  `supplier_name` varchar(200) NOT NULL,
  `selling_price` decimal(10,2) NOT NULL,
  `quantity` decimal(10,2) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `date` date NOT NULL,
  `username` varchar(120) NOT NULL,
  `customer_id` varchar(120) NOT NULL,
  `subtotal` decimal(10,2) NOT NULL,
  `payment` decimal(10,2) NOT NULL,
  `balance` decimal(10,2) NOT NULL,
  `discount` decimal(10,0) NOT NULL,
  `tax` decimal(10,0) NOT NULL,
  `tax_dis` varchar(100) NOT NULL,
  `dis_amount` decimal(10,0) NOT NULL,
  `grand_total` decimal(10,0) NOT NULL,
  `due` date NOT NULL,
  `mode` varchar(250) NOT NULL,
  `description` varchar(500) NOT NULL,
  `count1` int(11) NOT NULL,
  `billnumber` varchar(120) NOT NULL,
  `opp` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock_sales`
--

INSERT INTO `stock_sales` (`id`, `transactionid`, `stock_name`, `category`, `supplier_name`, `selling_price`, `quantity`, `amount`, `date`, `username`, `customer_id`, `subtotal`, `payment`, `balance`, `discount`, `tax`, `tax_dis`, `dis_amount`, `grand_total`, `due`, `mode`, `description`, `count1`, `billnumber`, `opp`) VALUES
(69, 'SD449', 'SSSS', '', '', '20.00', '10.00', '200.00', '2021-01-04', 'Exclusive', 'Sakshi Patel  ', '190.00', '190.00', '0.00', '5', '0', '', '10', '200', '2021-01-06', 'cheque', '', 1, 'PR451  ', 0),
(70, 'SD450', 'SSSS', '', '', '20.00', '140.00', '2800.00', '2021-01-10', 'Exclusive', 'Sakshi Patel', '2780.00', '1000.00', '1780.00', '0', '0', '', '20', '2800', '1970-01-01', 'cash', '', 1, 'PR452', 0);

-- --------------------------------------------------------

--
-- Table structure for table `stock_user`
--

CREATE TABLE `stock_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(120) NOT NULL,
  `password` varchar(120) NOT NULL,
  `user_type` varchar(20) NOT NULL,
  `answer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock_user`
--

INSERT INTO `stock_user` (`id`, `username`, `password`, `user_type`, `answer`) VALUES
(1, 'Exclusive', 'sakshi@123', 'admin', 'sakshi@123');

-- --------------------------------------------------------

--
-- Table structure for table `store_details`
--

CREATE TABLE `store_details` (
  `name` varchar(100) NOT NULL,
  `log` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `place` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `web` varchar(100) NOT NULL,
  `pin` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store_details`
--

INSERT INTO `store_details` (`name`, `log`, `type`, `address`, `place`, `city`, `phone`, `email`, `web`, `pin`) VALUES
('Patel Ware House', '2.png', 'image/png', 'pandesara', 'surat', 'surat', '03453552884', 'ssss', 'ssss', '60080'),
('Patel Ware House', '2.png', 'image/png', 'pandesara', 'surat', 'surat', '03453552884', 'ssss', 'ssss', '60080');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_details`
--

CREATE TABLE `supplier_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `supplier_name` varchar(200) NOT NULL,
  `supplier_address` varchar(500) NOT NULL,
  `supplier_contact1` varchar(100) NOT NULL,
  `supplier_contact2` varchar(100) NOT NULL,
  `balance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier_details`
--

INSERT INTO `supplier_details` (`id`, `supplier_name`, `supplier_address`, `supplier_contact1`, `supplier_contact2`, `balance`) VALUES
(52, 'SSS', 'SSS', '', '', 0),
(53, '222', 'Aveerbhav Society 1, Pandesaragam, Udhna, Surat, Gujarat, India', '5465656', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(50) NOT NULL,
  `customer` varchar(250) NOT NULL,
  `supplier` varchar(250) NOT NULL,
  `subtotal` decimal(10,2) NOT NULL,
  `payment` decimal(10,2) NOT NULL,
  `balance` decimal(10,2) NOT NULL,
  `due` datetime NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `rid` varchar(120) NOT NULL,
  `receiptid` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `type`, `customer`, `supplier`, `subtotal`, `payment`, `balance`, `due`, `date`, `rid`, `receiptid`) VALUES
(16, 'entry', '', '', '1131.00', '70.00', '61.00', '2014-02-15 00:00:00', '2014-02-15 15:54:19', 'PR274', ''),
(17, 'sales', 'Regular ', '', '50.00', '8.00', '42.00', '2014-02-22 00:00:00', '2014-02-22 06:42:59', 'SD291', 'RCPT16'),
(18, 'sales', 'tariq ', '', '108.00', '100.00', '8.00', '2014-04-09 00:00:00', '2014-04-09 06:12:14', 'SD399', 'RCPT17'),
(19, 'sales', 'tariq ', '', '108.00', '8.00', '0.00', '2014-05-11 00:00:00', '2014-05-11 05:01:24', 'SD399', 'RCPT18'),
(20, 'entry', '', '', '1131.00', '61.00', '0.00', '2014-05-11 00:00:00', '2014-05-11 05:02:06', 'PR274', ''),
(21, 'sales', 'Hostal ', '', '45.00', '36.00', '0.00', '2014-05-11 00:00:00', '2014-05-11 05:02:39', 'SD404', 'RCPT20'),
(22, 'sales', 'Hostal ', '', '300.00', '78.00', '222.00', '2014-05-13 00:00:00', '2014-05-13 11:24:59', 'SD416', 'RCPT21'),
(23, 'entry', '', '', '18009.00', '10.00', '16190.00', '2014-06-04 00:00:00', '2014-06-04 09:50:58', 'PR3', ''),
(24, 'entry', '', '', '18009.00', '10.00', '16180.00', '2014-06-04 00:00:00', '2014-06-04 09:51:32', 'PR3', ''),
(25, 'sales', 'Hostal ', '', '300.00', '200.00', '22.00', '2014-06-04 00:00:00', '2014-06-04 09:52:40', 'SD416', 'RCPT24'),
(26, 'sales', 'Hostal ', '', '800.00', '10.00', '790.00', '2014-06-04 00:00:00', '2014-06-04 10:12:08', 'SD403', 'RCPT25'),
(27, 'sales', 'Hostal ', '', '800.00', '10.00', '780.00', '2014-06-04 00:00:00', '2014-06-04 10:12:34', 'SD403', 'RCPT26'),
(28, 'sales', 'Hostal ', '', '800.00', '0.00', '780.00', '2014-06-04 00:00:00', '2014-06-04 10:12:41', 'SD403', 'RCPT27'),
(29, 'sales', 'Hostal ', '', '800.00', '20.00', '760.00', '2014-06-04 00:00:00', '2014-06-04 10:13:00', 'SD403', 'RCPT28'),
(30, 'sales', 'Hostal ', '', '800.00', '23.00', '737.00', '2014-06-04 00:00:00', '2014-06-04 10:13:34', 'SD403', 'RCPT29'),
(31, 'sales', 'Hostal ', '', '800.00', '0.00', '737.00', '2014-06-04 00:00:00', '2014-06-04 10:13:38', 'SD403', 'RCPT30'),
(32, 'entry', '', '', '6993.00', '22.00', '38.00', '2014-06-04 00:00:00', '2014-06-04 10:14:01', 'PR362', ''),
(33, 'sales', 'Hostal ', '', '800.00', '2.00', '735.00', '2014-06-04 00:00:00', '2014-06-04 10:14:27', 'SD403', 'RCPT32'),
(34, 'sales', 'Regular ', '', '26.00', '3.00', '3.00', '2014-06-04 00:00:00', '2014-06-04 10:39:48', 'SD440', 'RCPT33'),
(35, 'sales', 'Regular ', '', '26.00', '2.00', '1.00', '2014-06-11 00:00:00', '2014-06-11 04:04:29', 'SD440', 'RCPT34'),
(36, 'sales', 'Sakshi Patel   ', '', '190.00', '0.00', '0.00', '2021-01-06 00:00:00', '2021-01-06 16:42:51', 'SD449', 'RCPT35');

-- --------------------------------------------------------

--
-- Table structure for table `uom_details`
--

CREATE TABLE `uom_details` (
  `id` int(10) UNSIGNED ZEROFILL NOT NULL,
  `name` varchar(120) NOT NULL,
  `spec` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uom_details`
--

INSERT INTO `uom_details` (`id`, `name`, `spec`) VALUES
(0000000006, 'mtr', 'UOM1 Specification'),
(0000000007, 'UOM2', 'UOM2 Specification'),
(0000000008, 'UOM3', 'UOM3 Specification'),
(0000000009, 'UOM4', 'UOM4 Specification');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category_details`
--
ALTER TABLE `category_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_details`
--
ALTER TABLE `customer_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_avail`
--
ALTER TABLE `stock_avail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_details`
--
ALTER TABLE `stock_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_entries`
--
ALTER TABLE `stock_entries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_sales`
--
ALTER TABLE `stock_sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_user`
--
ALTER TABLE `stock_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier_details`
--
ALTER TABLE `supplier_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uom_details`
--
ALTER TABLE `uom_details`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category_details`
--
ALTER TABLE `category_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `customer_details`
--
ALTER TABLE `customer_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `stock_avail`
--
ALTER TABLE `stock_avail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `stock_details`
--
ALTER TABLE `stock_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `stock_entries`
--
ALTER TABLE `stock_entries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=451;

--
-- AUTO_INCREMENT for table `stock_sales`
--
ALTER TABLE `stock_sales`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `stock_user`
--
ALTER TABLE `stock_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `supplier_details`
--
ALTER TABLE `supplier_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `uom_details`
--
ALTER TABLE `uom_details`
  MODIFY `id` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
