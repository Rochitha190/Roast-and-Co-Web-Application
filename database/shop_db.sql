-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2026 at 09:06 AM
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
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `pid`, `name`, `price`, `quantity`, `image`) VALUES
(6, 4, 5, 'Cappuccino', 69, 1, 'cappuccino.jpg'),
(7, 5, 4, 'Black Coffee', 59, 1, 'black coffee.jpg'),
(8, 5, 3, 'Americano', 79, 1, 'americano.jpg'),
(9, 4, 3, 'Americano', 79, 1, 'americano.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(2, 4, 'Harshitha.D', 'harshu1172@gmail.com', '8197044396', 'Love this online coffee shop! great selection and delicious coffee, Highly recommended!!');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(2, 4, 'Harshitha', '8197044396', 'harshu1172@gmail.com', 'cash on delivery', 'flat no. btm 1st stage ,1st main ,1st cross ,thavarekere,bangalore thavarekere Bangalore Karnataka India - 560029', ', Cappuccino ( 1 ), Black Coffee ( 2 ), Mocha ( 3 )', 814, '12-May-2025', 'completed'),
(3, 5, 'Yathish', '0123456789', 'yathi@gmail.com', 'paytm', 'flat no. fhhkfdhg sf mumbai sf India - 560017', ', Americano ( 1 ), Cappuccino ( 2 )', 367, '23-May-2025', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category` varchar(20) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `details`, `price`, `image`) VALUES
(3, 'Americano', 'hot coffee', 'Every sip feels like a breeze', 79, 'americano.jpg'),
(4, 'Black Coffee', 'hot coffee', 'Pure perfection, no sugar needed', 59, 'black coffee.jpg'),
(5, 'Cappuccino', 'hot coffee', 'Sip, savour, and seize the day', 69, 'cappuccino.jpg'),
(6, 'Espresso', 'hot coffee', 'A miracle of chemistry in a cup', 56, 'espresso.jpg'),
(7, 'Cortado', 'hot coffee', 'Unbelievably Delicious', 62, 'cortado11.jpg'),
(9, 'Mocha', 'hot coffee', 'Every moment is mocha-licious', 47, 'is-mocha-coffee.jpg'),
(10, 'Affogato', 'cold coffee', 'Stay cool, sip iced coffee', 78, 'affogato.jpg'),
(11, 'Cold Brew', 'cold coffee', 'brew up for a warm heart', 87, 'cold brew.jpg'),
(12, 'Frappucino', 'cold coffee', 'blended, not stirred', 83, 'frapppucino.jpg'),
(13, 'Dalgona Iced Coffee', 'cold coffee', 'Whipped to perfection', 77, 'dalgona iced coffee.jpg'),
(15, 'Chocolate Cheesecake', 'desserts', 'cheeese it \r\n', 57, 'chocolate cheesecake.jpg'),
(17, 'Fried Icecream', 'desserts', 'Fried but chill', 63, 'fried ice cream.jpg'),
(18, 'Banana Pie', 'desserts', 'Don&#39;t tart it bcz it&#39;s pie', 56, 'banana pie.jpg'),
(19, 'Rum Cake', 'desserts', 'Savoring the sweetness in the rum', 79, 'rum cake.jpg'),
(20, 'Lemonade', 'non-coffee', 'Sunshine in a glass', 45, 'lemonade.jpg'),
(21, 'Hot Chocolate', 'non-coffee', 'Chocolate Therapy', 51, 'hot chocolate.jpg'),
(22, 'Smoothie', 'non-coffee', 'Happiness in a glass', 55, 'smoothie.jpg'),
(23, 'Strawberry Milkshake', 'non-coffee', 'Fruit syrup into a thick', 63, 'strawberry milkshake.jpg'),
(24, 'Vietnamese Iced Coffee', 'cold coffee', 'Iced to meet you', 62, 'vientamese iced coffee.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'user',
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`, `image`) VALUES
(4, 'Harshitha ', 'harshu1172@gmail.com', 'fd1fec8c95b83000e0fd06fe7a702640', 'user', 'female.jpeg'),
(5, 'Yathish', 'yathi@gmail.com', '0e73463a69a62dc4ff207f85127a3260', 'user', 'yathi.jpeg'),
(6, 'Rochitha D', 'drochitha@gmail.com', 'b76eb19ab5069fa4f69c6def2dcc96ce', 'admin', 'rochitha.jpeg'),
(7, 'admin B', 'admin02@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'admin', 'male.jpeg'),
(10, 'Yathish', 'yathi26@gmail.com', '79d8e340812f9db0bbfa508beb319dea', 'user', 'yathi.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `pid`, `name`, `price`, `image`) VALUES
(5, 4, 4, 'Black Coffee', 59, 'black coffee.jpg'),
(6, 5, 5, 'Cappuccino', 69, 'cappuccino.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
