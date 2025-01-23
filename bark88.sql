-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 23, 2025 at 03:16 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bark88`
--

-- --------------------------------------------------------

--
-- Table structure for table `batch`
--

CREATE TABLE `batch` (
  `batch_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `unpacked_quantity` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `cost` float NOT NULL,
  `price` float NOT NULL,
  `expiration_date` date NOT NULL,
  `expiration_status` int(11) NOT NULL,
  `date_created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `archive_status` int(11) NOT NULL,
  `date_archived` datetime NOT NULL,
  `archived_by` int(11) NOT NULL,
  `archive_remarks` varchar(255) NOT NULL,
  `prepared_by` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `batch`
--

INSERT INTO `batch` (`batch_id`, `product_id`, `unpacked_quantity`, `quantity`, `cost`, `price`, `expiration_date`, `expiration_status`, `date_created`, `created_by`, `archive_status`, `date_archived`, `archived_by`, `archive_remarks`, `prepared_by`) VALUES
(10000100, 77, 0, 8, 500, 15, '2024-10-17', 3, '2024-10-07 14:37:37', 1, 1, '2024-11-09 01:05:22', 0, ' ', ''),
(10000101, 77, 0, 123, 500, 15, '0000-00-00', 0, '2024-10-15 16:36:09', 1, 1, '2024-11-09 01:05:49', 0, ' ', ''),
(10000102, 77, 0, 56, 500, 15, '0000-00-00', 0, '2024-10-18 00:23:20', 1, 1, '2024-11-09 01:05:42', 0, ' ', ''),
(10000103, 77, 0, 3, 500, 15, '2024-10-18', 3, '2024-10-18 00:23:37', 1, 1, '2024-11-09 01:05:31', 0, ' ', ''),
(10000104, 77, 0, 2, 500, 15, '2025-08-13', 1, '2024-10-18 22:59:41', 1, 1, '2024-11-09 01:05:37', 0, ' ', ''),
(10000105, 77, 0, 8, 500, 15, '0000-00-00', 0, '2024-11-09 02:15:24', 1, 0, '0000-00-00 00:00:00', 0, '', ''),
(10000106, 78, 0, 10, 500, 15, '0000-00-00', 0, '2024-11-12 15:27:18', 1, 0, '0000-00-00 00:00:00', 0, '', ''),
(10000107, 79, 0, 1233, 500, 1231230, '2024-12-12', 3, '2024-12-07 21:48:19', 1, 0, '0000-00-00 00:00:00', 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `batch_loss`
--

CREATE TABLE `batch_loss` (
  `id` int(11) NOT NULL,
  `batch_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `unpacked_loss` int(11) NOT NULL,
  `quantity_loss` int(11) NOT NULL,
  `remarks` varchar(11) NOT NULL,
  `archived_date` datetime NOT NULL,
  `archive_by` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `promo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `Expiry` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `Expiry`) VALUES
(1, 'Dog dry Food', 1),
(2, 'Cat dry food', 1),
(3, 'Cat wet food', 1),
(4, 'Hygiene Supplies', 1),
(5, 'Dog wet Food', 1),
(6, 'Dog Treats', 1),
(7, 'Cat Treats', 1),
(8, 'Vitamins', 1),
(9, 'Accessory', 0);

-- --------------------------------------------------------

--
-- Table structure for table `discount`
--

CREATE TABLE `discount` (
  `discount_id` int(11) NOT NULL,
  `discount_name` varchar(255) NOT NULL,
  `percent` int(11) NOT NULL,
  `discount_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `discount`
--

INSERT INTO `discount` (`discount_id`, `discount_name`, `percent`, `discount_status`) VALUES
(1, 'Senior Citizen', 20, 1),
(2, 'PWD', 20, 1),
(5, 'Student', 10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `barcode` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `repackable` int(11) NOT NULL,
  `retail_unit` int(11) NOT NULL,
  `wholesale_unit` int(11) NOT NULL,
  `cost` float NOT NULL,
  `price` float NOT NULL,
  `description` varchar(255) NOT NULL,
  `warning_level` int(11) NOT NULL,
  `wholesale_level` int(11) NOT NULL,
  `stock_status` int(11) NOT NULL,
  `date_created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `archive_status` int(11) NOT NULL,
  `date_archived` datetime NOT NULL,
  `archived_by` int(11) NOT NULL,
  `archive_remarks` varchar(255) NOT NULL,
  `archive_qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `barcode`, `product_name`, `category_id`, `repackable`, `retail_unit`, `wholesale_unit`, `cost`, `price`, `description`, `warning_level`, `wholesale_level`, `stock_status`, `date_created`, `created_by`, `archive_status`, `date_archived`, `archived_by`, `archive_remarks`, `archive_qty`) VALUES
(77, '2017282830018', 'test', 2, 0, 2, 8, 500, 15, '', 10, 22, 2, '2024-10-07 14:37:37', 1, 0, '0000-00-00 00:00:00', 0, '', 0),
(78, '2017313964187', '122', 1, 0, 1, 2, 500, 15, '', 10, 22, 2, '2024-11-12 15:27:18', 1, 0, '0000-00-00 00:00:00', 0, '', 0),
(79, '2017335792584', 'Holistic Puppy', 3, 0, 1, 2, 500, 1231230, '123', 123, 123, 1, '2024-12-07 21:48:19', 1, 0, '0000-00-00 00:00:00', 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `promo`
--

CREATE TABLE `promo` (
  `promo_id` int(11) NOT NULL,
  `promo_name` varchar(255) NOT NULL,
  `promo_type` varchar(255) NOT NULL,
  `promo_buy` int(11) NOT NULL,
  `promo_get` int(11) NOT NULL,
  `promo_discount` int(11) NOT NULL,
  `promo_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `promo`
--

INSERT INTO `promo` (`promo_id`, `promo_name`, `promo_type`, `promo_buy`, `promo_get`, `promo_discount`, `promo_status`) VALUES
(1, 'Buy 1 Take 1', 'bogo', 1, 1, 0, 1),
(2, '10% Off', 'discount', 0, 0, 10, 1),
(3, 'Buy 2 take 1', 'Bundle', 2, 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `promo_product`
--

CREATE TABLE `promo_product` (
  `prd_promo_id` int(11) NOT NULL,
  `batch_id` varchar(200) NOT NULL,
  `product_id` int(200) NOT NULL,
  `quantity_promo` int(11) NOT NULL,
  `remarks` varchar(200) NOT NULL,
  `archive_status` int(11) NOT NULL,
  `archive_date` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `archive_by` int(200) NOT NULL,
  `nameP` varchar(200) NOT NULL,
  `exp` datetime DEFAULT NULL,
  `exp_stats` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `security_question`
--

CREATE TABLE `security_question` (
  `id` int(11) NOT NULL,
  `questions` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `security_question`
--

INSERT INTO `security_question` (`id`, `questions`) VALUES
(1, 'What was the name of your first pet?'),
(2, 'What\'s your favorite food?'),
(3, 'what\'s your favorite sport?'),
(4, 'What is your mother\'s maiden name?'),
(5, 'What was the first thing you learned to cook?'),
(6, 'What\'s your worst habit?'),
(7, 'Mountains or ocean?'),
(8, 'If you were a vegetable, what vegetable would you be?'),
(9, 'Who was your favorite teacher?'),
(10, 'What is one of your favorite smells?');

-- --------------------------------------------------------

--
-- Table structure for table `system`
--

CREATE TABLE `system` (
  `system_id` int(200) NOT NULL,
  `logo` varchar(200) NOT NULL,
  `navbar_color` varchar(200) NOT NULL,
  `sidebar_color` varchar(200) NOT NULL,
  `hover_color` varchar(200) NOT NULL,
  `store_name` varchar(200) NOT NULL,
  `store_address` varchar(200) NOT NULL,
  `tin_number` varchar(200) NOT NULL,
  `contact` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system`
--

INSERT INTO `system` (`system_id`, `logo`, `navbar_color`, `sidebar_color`, `hover_color`, `store_name`, `store_address`, `tin_number`, `contact`) VALUES
(1, 'logo.png', '#7c2b25', '#5b1510', '#d8baba', 'Bark88 Pet Supplies and Accessories', 'Alaska st Carmona Estates, Carmona, 4116 Cavite', '009-491-731-011', '0968-665-0408');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `transaction_id` int(11) NOT NULL,
  `total` float NOT NULL,
  `amount_tendered` float NOT NULL,
  `change_amount` float NOT NULL,
  `vatable_sales` float NOT NULL,
  `vat_amount` float NOT NULL,
  `discount` int(11) NOT NULL,
  `date_created` datetime NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`transaction_id`, `total`, `amount_tendered`, `change_amount`, `vatable_sales`, `vat_amount`, `discount`, `date_created`, `created_by`) VALUES
(20230230, 15, 50, 35, 13.39, 1.61, 0, '2024-10-07 14:38:25', 1),
(20230231, 15, 1000, 985, 13.39, 1.61, 0, '2024-10-07 14:38:53', 1),
(20230232, 15, 20, 5, 13.39, 1.61, 0, '2024-11-12 11:56:53', 1);

-- --------------------------------------------------------

--
-- Table structure for table `transaction_items`
--

CREATE TABLE `transaction_items` (
  `t_item_id` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `wholesaleLevel` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `quantity_type` int(11) NOT NULL,
  `unit` varchar(255) NOT NULL,
  `cost` float NOT NULL,
  `price` float NOT NULL,
  `subtotal` float NOT NULL,
  `promo_freebie` varchar(255) NOT NULL,
  `promo_discount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaction_items`
--

INSERT INTO `transaction_items` (`t_item_id`, `transaction_id`, `product_id`, `wholesaleLevel`, `quantity`, `quantity_type`, `unit`, `cost`, `price`, `subtotal`, `promo_freebie`, `promo_discount`) VALUES
(166, 20230230, 77, 22, 1, 1, 'pcs', 500, 15, 15, 'None', 0),
(167, 20230231, 77, 22, 1, 1, 'pcs', 500, 15, 15, 'None', 0),
(168, 20230232, 77, 22, 1, 1, 'box', 500, 15, 15, 'None', 0);

-- --------------------------------------------------------

--
-- Table structure for table `unit_of_measurement`
--

CREATE TABLE `unit_of_measurement` (
  `unit_id` int(11) NOT NULL,
  `unit_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `unit_of_measurement`
--

INSERT INTO `unit_of_measurement` (`unit_id`, `unit_name`) VALUES
(1, 'pcs'),
(2, 'box'),
(3, 'kg'),
(8, 'sacks'),
(9, 'liters');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `profile_picture` varchar(100) NOT NULL,
  `security_question1` int(200) NOT NULL,
  `answer_1` varchar(200) NOT NULL,
  `security_question2` int(200) NOT NULL,
  `answer_2` varchar(200) NOT NULL,
  `login_attempt` int(11) NOT NULL,
  `next_attempt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `username`, `password`, `role`, `status`, `profile_picture`, `security_question1`, `answer_1`, `security_question2`, `answer_2`, `login_attempt`, `next_attempt`) VALUES
(1, 'Alex', 'Encila', 'Jalexx', '$2y$10$w/6fWZJZuynKKrddl3SqtOuQSjt7oqllEH8i2OnwJ1KdcEfQiYiZi', 1, 1, '5.jpg', 1, 'pitchie', 7, 'mountains', 3, '2025-01-01 17:37:04'),
(13, 'RJ', 'Dado', 'Rhenee', '$2y$10$zrjfPwjS40Uwjy5H7GulYelv38/t1QeNCLo6R5BU01wus4SZ1kxq2', 0, 1, '2.png', 1, 'asd', 6, 'asd', 0, NULL),
(14, 'Maria Azenith', 'Liscano', 'Azee', '$2y$10$UsWOd4aE93rLuBZTu6BCbOiZiE.POo83Q9uV6r8/jqFlKyMdpHY5i', 1, 1, 'cat.png', 3, 'asd', 7, 'asd', 0, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `batch`
--
ALTER TABLE `batch`
  ADD PRIMARY KEY (`batch_id`);

--
-- Indexes for table `batch_loss`
--
ALTER TABLE `batch_loss`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `discount`
--
ALTER TABLE `discount`
  ADD PRIMARY KEY (`discount_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `promo`
--
ALTER TABLE `promo`
  ADD PRIMARY KEY (`promo_id`);

--
-- Indexes for table `promo_product`
--
ALTER TABLE `promo_product`
  ADD PRIMARY KEY (`prd_promo_id`);

--
-- Indexes for table `security_question`
--
ALTER TABLE `security_question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system`
--
ALTER TABLE `system`
  ADD PRIMARY KEY (`system_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `transaction_items`
--
ALTER TABLE `transaction_items`
  ADD PRIMARY KEY (`t_item_id`);

--
-- Indexes for table `unit_of_measurement`
--
ALTER TABLE `unit_of_measurement`
  ADD PRIMARY KEY (`unit_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `batch`
--
ALTER TABLE `batch`
  MODIFY `batch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10000108;

--
-- AUTO_INCREMENT for table `batch_loss`
--
ALTER TABLE `batch_loss`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `discount`
--
ALTER TABLE `discount`
  MODIFY `discount_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `promo`
--
ALTER TABLE `promo`
  MODIFY `promo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `promo_product`
--
ALTER TABLE `promo_product`
  MODIFY `prd_promo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `security_question`
--
ALTER TABLE `security_question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `system`
--
ALTER TABLE `system`
  MODIFY `system_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20230233;

--
-- AUTO_INCREMENT for table `transaction_items`
--
ALTER TABLE `transaction_items`
  MODIFY `t_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- AUTO_INCREMENT for table `unit_of_measurement`
--
ALTER TABLE `unit_of_measurement`
  MODIFY `unit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
