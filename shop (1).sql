-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2019 at 07:55 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(3) NOT NULL,
  `user_id` int(3) NOT NULL,
  `product_title` varchar(20) NOT NULL,
  `model` varchar(10) NOT NULL,
  `color` varchar(10) NOT NULL,
  `quantity` int(3) NOT NULL,
  `price` int(5) NOT NULL,
  `equal` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `product_title`, `model`, `color`, `quantity`, `price`, `equal`) VALUES
(1, 3, 'Zenski duks', 'X style', 'aqua', 3, 6000, 18000),
(2, 0, 'Zenska majica', 'Cosmos', 'purple', 3, 3500, 10500),
(3, 0, 'Zenska majica', 'Cosmos', 'purple', 3, 3500, 10500),
(4, 2, 'Zenska majica', 'Cosmos', 'purple', 3, 3500, 10500),
(5, 2, 'Zenska majica', 'Cosmos', 'purple', 2, 3500, 7000),
(6, 11, 'Zenska bluza', 'Frogster', 'yellow', 1, 5500, 5500),
(7, 11, 'Zenski duks', 'Cosmos', 'red', 2, 5880, 11760),
(8, 10, 'Zenski duks', 'X style', 'aqua', 1, 6000, 6000),
(9, 3, 'Zenska majica', 'Cosmos', 'purple', 0, 3500, 0),
(10, 3, 'Zenski dzemper', 'X Style', 'purple', 1, 6500, 6500),
(11, 2, 'Zenska bluza', 'Frogster', 'yellow', 1, 5500, 5500),
(12, 2, 'Zenski duks', 'X style', 'orange', 1, 6000, 6000);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(4) NOT NULL,
  `imgSrc` varchar(30) NOT NULL,
  `productTitle` varchar(20) NOT NULL,
  `model` varchar(15) NOT NULL,
  `price` varchar(8) NOT NULL,
  `color1` varchar(10) NOT NULL,
  `color2` varchar(10) NOT NULL,
  `color3` varchar(10) NOT NULL,
  `collection` varchar(8) NOT NULL,
  `newCol` varchar(20) NOT NULL,
  `popular` varchar(20) NOT NULL,
  `action` varchar(20) NOT NULL,
  `description` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `imgSrc`, `productTitle`, `model`, `price`, `color1`, `color2`, `color3`, `collection`, `newCol`, `popular`, `action`, `description`) VALUES
(1, 'img/product1.jpg', 'Zenska majica', 'Cosmos', '3500', 'purple', 'green', 'red', 'female', 'false', 'true', 'false', '1 Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut'),
(2, 'img/product2.jpg', 'Zenski duks', 'X style', '6000', 'orange', 'aqua', 'black', 'female', 'false', 'false', 'false', '2 Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut'),
(3, 'img/product3.jpg', 'Zenski dzemper', 'X Style', '6500', 'purple', 'yellow', 'red', 'female', 'true', 'true', 'false', '3 Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut'),
(4, 'img/product4.jpg', 'Zenska bluza', 'Frogster', '5500', 'red', 'yellow', 'blue', 'female', 'true', 'true', 'false', '4 Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi u'),
(5, 'img/product5.jpg', 'Zenska bluza', 'North West', '11880', 'purple', 'orange', 'blue', 'female', 'true', 'true', 'false', '5 Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut'),
(6, 'img/product6.jpg', 'Zenska bluza', 'V style', '4280', 'purple', 'green', 'red', 'female', 'false', 'false', 'true', '6 Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi u'),
(7, 'img/product7.jpg', 'Zenski duks', 'Cosmos', '5880', 'blue', 'green', 'red', 'female', 'true', 'true', 'false', '7 Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut'),
(8, 'img/product8.jpg', 'Zenska majica', 'North West', '8880', 'blue', 'green', 'orange', 'female', 'true', 'false', 'true', '8 Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi u'),
(9, 'img/product9.jpg', 'Zenska majica', 'North West', '1990', 'yellow', 'red', 'green', 'female', 'true', 'false', 'false', '9 Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut'),
(10, 'img/product10.jpg', 'Zenska bluza', 'North West', '4880', 'blue', 'black', 'orange', 'female', 'false', 'true', 'false', '10 Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi u'),
(11, 'img/product11.jpg', 'Zenska kosulja', 'North West', '2100', 'green', 'yellow', 'purple', 'female', 'true', 'false', 'true', '11 Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi u'),
(12, 'img/product12.jpg', 'Muska majica', 'Legendary', '4880', 'blue', 'yellow', 'green', 'male', 'true', 'false', 'true', '12 Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi u'),
(13, 'img/product13.jpg', 'Muski duks', 'Frogster', '4500', 'blue', 'red', 'green', 'male', 'false', 'false', 'true', '13 Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi u'),
(14, 'img/product14.jpg', 'Muska jakna', 'Cosmos', '12000', 'orange', 'black', 'green', 'male', 'false', 'true', 'true', '14 Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi u'),
(15, 'img/product15.jpg', 'Muski duks', 'Frogster', '4880', 'blue', 'yellow', 'green', 'male', 'true', 'false', 'false', '15 Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi u'),
(16, 'img/product16.jpg', 'Muski prsluk', 'North West', '4280', 'purple', 'green', 'red', 'male', 'true', 'false', 'false', '16 Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi u');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `ime` varchar(20) NOT NULL,
  `prezime` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `sifra` varchar(20) NOT NULL,
  `adresa` varchar(30) NOT NULL,
  `postanski_broj` varchar(6) NOT NULL,
  `Grad` varchar(15) NOT NULL,
  `Telefon` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `ime`, `prezime`, `email`, `sifra`, `adresa`, `postanski_broj`, `Grad`, `Telefon`) VALUES
(1, 'Rade', 'Mrkic', 'mrkic78@gmail.com', '063624922', 'Sterijina 7', '37000', 'Krusevac', 63624922),
(2, 'Luka', 'Mrkic', 'luka@gmail.com', '12345', 'Sterijina 7', '37000', 'Krusevac', 63123456),
(3, 'Danilo', 'Vesovic', 'danilo@gmail.com', '12345', 'Sarajveska 18', '42000', 'Sarajevo', 69123123),
(4, 'Jelena', 'Mrkic', 'jelena@gmail.com', '12345', 'Belovic 7a', '37000', 'Krusevac', 66123456),
(5, 'Vildana', 'Meheljic', 'vildana@gmail.com', '12345', 'Bosanska 26', '44000', 'Sarajevo', 65789789),
(6, 'Milos', 'Cevrljakovic', 'milos@gmail.com', '12345', 'Seletova 33', '37000', 'Krusevac', 63444555),
(7, 'Marko', 'Cevrljakovic', 'marko@gmail.com', '12345', 'Alekse Nenadovica 33', '37000', 'Krusevac', 37123456),
(8, 'Janko', 'Jankovic', 'janko@gmail.com', '12345', 'Jankova 28', '36000', 'Kraljevo', 36123123),
(9, 'Sinisa', 'Karamehmetovic', 'sinisa@gmail.com', '12345', 'sinisa@gmail.com', '17000', 'Vranje', 16123456),
(10, 'Julija', 'Stefanovic', 'julija@gmail.com', '12345', 'Balsiceva 38', '11000', 'Beograd', 11),
(11, 'Bobana', 'Cvetkovic', 'bobana@gmail.com', '12345', 'Manojlovce bb', '16000', 'Lekovac', 16742142);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
