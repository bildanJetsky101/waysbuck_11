-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 28, 2022 at 11:06 AM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `waysbuck`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) NOT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `sub_total` bigint(20) DEFAULT NULL,
  `qty` bigint(20) DEFAULT NULL,
  `transaction_id` bigint(20) DEFAULT NULL,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `cart_id` bigint(20) NOT NULL,
  `product_cart_response_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `desc` text,
  `price` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `qty` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `desc`, `price`, `image`, `qty`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Coffee Late', NULL, 30000, NULL, NULL, NULL, NULL, NULL),
(3, 'Americano', NULL, 30000, NULL, NULL, NULL, NULL, NULL),
(8, 'Iced Cappucino', '', 23000, '', 0, NULL, '2022-08-26 16:17:50.034', '2022-08-26 16:17:50.034'),
(9, '', '', 0, '', 0, NULL, '2022-08-26 16:54:34.505', '2022-08-26 16:54:34.505'),
(10, '', '', 0, '', 0, NULL, '2022-08-26 16:54:40.750', '2022-08-26 16:54:40.750'),
(11, '', '', 0, '', 0, NULL, '2022-08-26 16:54:52.886', '2022-08-26 16:54:52.886'),
(12, '', '', 0, '', 0, NULL, '2022-08-26 16:57:47.113', '2022-08-26 16:57:47.113'),
(15, '', '', 0, '', 0, NULL, '2022-08-26 16:59:19.279', '2022-08-26 16:59:19.279'),
(16, 'iced milk', '', 0, '', 0, NULL, '2022-08-26 16:59:28.552', '2022-08-26 16:59:28.552'),
(17, '', '', 60000, '', 0, NULL, '2022-08-26 16:59:35.068', '2022-08-26 16:59:35.068'),
(18, '', '', 0, '', 0, NULL, '2022-08-26 17:02:12.575', '2022-08-26 17:02:12.575'),
(19, '', '', 0, '', 0, NULL, '2022-08-26 17:03:17.842', '2022-08-26 17:03:17.842'),
(20, '', '', 0, '', 0, NULL, '2022-08-26 17:03:32.288', '2022-08-26 17:03:32.288'),
(21, 'iced milk 2', '', 0, '', 0, NULL, '2022-08-26 17:03:36.133', '2022-08-26 17:03:36.133'),
(22, '', '', 6000000, '', 0, NULL, '2022-08-26 17:03:39.500', '2022-08-26 17:03:39.500'),
(23, '', '', 0, '', 0, NULL, '2022-08-26 17:04:08.100', '2022-08-26 17:04:08.100'),
(24, '', '', 0, '', 0, NULL, '2022-08-26 17:05:36.090', '2022-08-26 17:05:36.090'),
(25, '', '', 0, '', 0, NULL, '2022-08-26 17:07:03.558', '2022-08-26 17:07:03.558'),
(26, '', '', 0, '', 0, NULL, '2022-08-26 17:07:13.273', '2022-08-26 17:07:13.273'),
(27, '', '', 0, '', 0, NULL, '2022-08-26 17:07:14.233', '2022-08-26 17:07:14.233'),
(28, '', '', 0, '', 0, NULL, '2022-08-26 17:07:20.270', '2022-08-26 17:07:20.270'),
(29, '', '', 0, '', 0, NULL, '2022-08-26 17:35:15.860', '2022-08-26 17:35:15.860'),
(30, 'iguig', '', 0, '', 0, NULL, '2022-08-26 17:35:19.292', '2022-08-26 17:35:19.292'),
(31, '', '', 4000000, '', 0, NULL, '2022-08-26 17:35:24.165', '2022-08-26 17:35:24.165'),
(32, '', '', 0, '', 0, NULL, '2022-08-26 17:35:31.995', '2022-08-26 17:35:31.995'),
(33, '', '', 0, '', 0, NULL, '2022-08-26 17:36:50.271', '2022-08-26 17:36:50.271'),
(34, 'espresso', '', 0, '', 0, NULL, '2022-08-26 17:37:17.656', '2022-08-26 17:37:17.656');

-- --------------------------------------------------------

--
-- Table structure for table `product_cart_responses`
--

CREATE TABLE `product_cart_responses` (
  `id` bigint(20) NOT NULL,
  `name` longtext,
  `desc` longtext,
  `price` bigint(20) DEFAULT NULL,
  `image` longtext,
  `qty` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `address` text,
  `user_id` bigint(20) DEFAULT NULL,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `topings`
--

CREATE TABLE `topings` (
  `cart_id` bigint(20) NOT NULL,
  `toping_cart_response_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `toping_cart_responses`
--

CREATE TABLE `toping_cart_responses` (
  `id` bigint(20) NOT NULL,
  `name` longtext,
  `image` longtext,
  `price` bigint(20) DEFAULT NULL,
  `qty` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `toping_cart_responses`
--

INSERT INTO `toping_cart_responses` (`id`, `name`, `image`, `price`, `qty`) VALUES
(2, 'Bobba', NULL, 3000, NULL),
(3, 'White Chocolate', NULL, 4000, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `price` bigint(20) DEFAULT NULL,
  `total` bigint(20) DEFAULT NULL,
  `status` varchar(25) DEFAULT NULL,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transaction_responses`
--

CREATE TABLE `transaction_responses` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `status`, `created_at`, `updated_at`) VALUES
(3, 'bildan', 'bildan@mail.com', '$2a$10$K8/onAMqcwxwCwl0nLNrGue5dgwTuUZ5w0LYJEscW/XlJaxNCHYF.', 'admin', '2022-08-24 17:52:28.182', '2022-08-24 17:52:28.182'),
(4, 'rizzki', 'rizzki@mail.com', '$2a$10$g5nKMp4M8d0zYgwModGZDOzvbeOItmM/U7SQD4NVmiEalnK2T16ai', 'user', '2022-08-24 18:23:02.232', '2022-08-24 18:23:02.232'),
(5, 'userbaru', 'userbaru@mail.com', '$2a$10$5NojM2huIUZbc88l92exaOTWNvVxlr2BceJRbyV0u.3B1hjPogGKi', 'user', '2022-08-26 16:51:48.407', '2022-08-26 16:51:48.407');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_transactions_cart` (`transaction_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`cart_id`,`product_cart_response_id`),
  ADD KEY `fk_product_product_cart_response` (`product_cart_response_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_products_user` (`user_id`);

--
-- Indexes for table `product_cart_responses`
--
ALTER TABLE `product_cart_responses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_profiles_user` (`user_id`);

--
-- Indexes for table `topings`
--
ALTER TABLE `topings`
  ADD PRIMARY KEY (`cart_id`,`toping_cart_response_id`),
  ADD KEY `fk_topings_toping_cart_response` (`toping_cart_response_id`);

--
-- Indexes for table `toping_cart_responses`
--
ALTER TABLE `toping_cart_responses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_transactions_user` (`user_id`);

--
-- Indexes for table `transaction_responses`
--
ALTER TABLE `transaction_responses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `product_cart_responses`
--
ALTER TABLE `product_cart_responses`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `toping_cart_responses`
--
ALTER TABLE `toping_cart_responses`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaction_responses`
--
ALTER TABLE `transaction_responses`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `fk_carts_transaction` FOREIGN KEY (`transaction_id`) REFERENCES `transaction_responses` (`id`),
  ADD CONSTRAINT `fk_transactions_cart` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `fk_product_cart` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`),
  ADD CONSTRAINT `fk_product_product_cart_response` FOREIGN KEY (`product_cart_response_id`) REFERENCES `product_cart_responses` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_products_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `fk_profiles_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `topings`
--
ALTER TABLE `topings`
  ADD CONSTRAINT `fk_topings_cart` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`),
  ADD CONSTRAINT `fk_topings_toping_cart_response` FOREIGN KEY (`toping_cart_response_id`) REFERENCES `toping_cart_responses` (`id`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `fk_transactions_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
