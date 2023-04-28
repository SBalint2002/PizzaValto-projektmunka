-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2023 at 08:40 PM
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
-- Database: `pizza`
--

-- --------------------------------------------------------

--
-- Table structure for table `new_orders`
--

CREATE TABLE `new_orders` (
  `id` bigint(20) NOT NULL,
  `order_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `new_orders`
--

INSERT INTO `new_orders` (`id`, `order_id`) VALUES
(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `order_date` datetime DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `ready` bit(1) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `location`, `order_date`, `phone_number`, `price`, `ready`, `user_id`) VALUES
(1, 'Budapest, Thököly út 48-54, 1146', '2023-04-20 20:38:28', '06306461813', 16430, b'1', 1),
(2, '1045, Budapest, Nap utca 2', '2023-04-20 20:39:19', '06304567543', 9900, b'0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_pizza`
--

CREATE TABLE `order_pizza` (
  `id` bigint(20) NOT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `pizza_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_pizza`
--

INSERT INTO `order_pizza` (`id`, `order_id`, `pizza_id`) VALUES
(1, 1, 1),
(2, 1, 1),
(3, 1, 1),
(4, 1, 1),
(5, 1, 2),
(6, 1, 3),
(7, 1, 3),
(8, 2, 1),
(9, 2, 2),
(10, 2, 2),
(11, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `pizzas`
--

CREATE TABLE `pizzas` (
  `id` bigint(20) NOT NULL,
  `available` bit(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pizzas`
--

INSERT INTO `pizzas` (`id`, `available`, `description`, `name`, `picture`, `price`) VALUES
(1, b'1', 'Ízletes és bőséges pizza, amelynek alapja a paradicsomos pizza szósz, tetején pedig rengeteg hús és sajt található.', 'Húsimádó', 'https://i.imgur.com/pK3cuaw.png', 2550),
(2, b'1', 'A pizza alapja paradicsomszósz, amelyet finom mozzarella sajt és gombaszeletek borítanak', 'Gombás', 'https://i.imgur.com/bzHROy0.png', 2450),
(3, b'1', 'Alapja a paradicsomszósz és a mozzarella sajt. A tetején friss bazsalikomlevelek találhatók, amelyek még több ízt és frissességet adnak a pizzának.', 'Margaritás', 'https://i.imgur.com/QNnmVHB.png', 1890),
(4, b'1', 'Egy klasszikus pizza melyet paradicsomos szósszal, füstölt mozzarellával és friss bazsalikommal készítünk. Tetején parmezán sajt található.', 'Olasz-sajtos', 'https://i.imgur.com/CshnnIL.png', 2450),
(5, b'1', 'A Sajtos pizza tartalmazza a friss paradicsomos szószt, a többféle sajtot és a fűszereket, amelyek ízletes és laktató ételt biztosítanak.', 'Sajtos', 'https://i.imgur.com/0WJKBJk.png', 1990),
(6, b'1', 'A Pepperóni pizza paradicsomos szósz, sok-sok füstölt sajt és csípős pepperóni szalámi kombinációjából áll.', 'Pepperóni', 'https://i.imgur.com/8YkIUNu.png', 2550),
(7, b'1', 'Egy édes-sós ízekkel gazdagított pizza sonkával és friss ananásszal.', 'Hawaii', 'https://i.imgur.com/zyMWSML.png', 2690),
(8, b'1', 'A BBQ Csirke pizza pikáns barbecue szósszal, friss csirkemellel, pirított hagymával és paprikával készül, amely ízekben és állagban is változatos élményt nyújt.', 'BBQ Csirke', 'https://i.imgur.com/8CM608L.png', 2850),
(9, b'0', 'A világ egyik legnépszerűbb pizzája a pepperónis, amelyet Kínától, az Egyesült Államokon át Belgiumig minden pizzériában tudunk rendelni.', 'Húsimádó2', 'https://i.imgur.com/pK3cuaw.png', 2230);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `first_name`, `last_name`, `password`, `role`) VALUES
(1, 'tesztelek@gmail.com', 'Elek', 'Teszt', '$2y$10$U8tiH/xFU9wmNYPsUjysKu24DCGTC24IWW89Oc.MyAi8781yotTsG', 'ADMIN'),
(2, 'tesztbela@gmail.com', 'Béla', 'Teszt', '$2y$10$YhOd0NNAbt0pE9DErRUOxus7xWAkidAaDtDpO2WDYtXjmReuHSrDK', 'USER'),
(3, 'tesztjanos@gmail.com', 'János', 'Teszt', '$2y$10$WfMZ0yO5FPQaWegGBl6o0.y2by0EMo1xdobXOGDmQA2gcK8nxEBnu', 'USER');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `new_orders`
--
ALTER TABLE `new_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK2df7jcat3ykdi01a6g6uc8jre` (`order_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK32ql8ubntj5uh44ph9659tiih` (`user_id`);

--
-- Indexes for table `order_pizza`
--
ALTER TABLE `order_pizza`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKqjlkqm2jah8asffn5smwrot4n` (`order_id`),
  ADD KEY `FKq1d534u6os9e0289upyb23exj` (`pizza_id`);

--
-- Indexes for table `pizzas`
--
ALTER TABLE `pizzas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_6dotkott2kjsp8vw4d0m25fb7` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `new_orders`
--
ALTER TABLE `new_orders`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order_pizza`
--
ALTER TABLE `order_pizza`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `pizzas`
--
ALTER TABLE `pizzas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `new_orders`
--
ALTER TABLE `new_orders`
  ADD CONSTRAINT `FK2df7jcat3ykdi01a6g6uc8jre` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FK32ql8ubntj5uh44ph9659tiih` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `order_pizza`
--
ALTER TABLE `order_pizza`
  ADD CONSTRAINT `FKq1d534u6os9e0289upyb23exj` FOREIGN KEY (`pizza_id`) REFERENCES `pizzas` (`id`),
  ADD CONSTRAINT `FKqjlkqm2jah8asffn5smwrot4n` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
