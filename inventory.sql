-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2025 at 07:55 AM
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
-- Database: `inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `ProductID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Category` varchar(100) NOT NULL,
  `StockQuantity` int(11) NOT NULL CHECK (`StockQuantity` >= 0),
  `Price` decimal(10,2) NOT NULL CHECK (`Price` >= 0),
  `SupplierID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ProductID`, `Name`, `Category`, `StockQuantity`, `Price`, `SupplierID`) VALUES
(10, 'Smartwatch', 'Electronics', 1010, 150.00, 3),
(12, 'Flash Drive', 'Accessories', 60, 200.00, 2),
(13, 'Graphics Card', 'Electronics', 5, 45000.00, 3),
(14, 'Speaker', 'Accessories', 50, 3000.00, 2),
(15, 'Gaming Chair', 'Accessories', 10, 15000.00, 1),
(16, 'Hard Drive', 'Accessories', 20, 4000.00, 2),
(17, 'Power Bank', 'Accessories', 45, 2000.00, 1),
(18, 'Projector', 'Electronics', 6, 35000.00, 3),
(19, 'Keyboard and Mouse Combo', 'Accessories', 30, 3000.00, 1),
(20, 'Bluetooth Speaker', 'Accessories', 15, 5000.00, 2),
(21, 'LED TV', 'Electronics', 7, 40000.00, 3),
(22, 'Smartphone Case', 'Accessories', 50, 1000.00, 1),
(23, 'USB Hub', 'Accessories', 40, 1200.00, 2),
(24, 'Wireless Charger', 'Accessories', 35, 2500.00, 3),
(25, 'Digital Camera', 'Electronics', 10, 30000.00, 2),
(26, 'Microphone', 'Accessories', 20, 4000.00, 1),
(27, 'Fitness Tracker', 'Electronics', 15, 10000.00, 3),
(28, 'Cooling Pad', 'Accessories', 30, 1500.00, 2),
(29, 'External SSD', 'Accessories', 18, 8000.00, 3),
(30, 'VR Headset', 'Electronics', 5, 25000.00, 2),
(31, 'Wireless Earbuds', 'Accessories', 50, 4000.00, 1),
(32, 'Action Camera', 'Electronics', 8, 20000.00, 3),
(33, 'E-Reader', 'Electronics', 12, 15000.00, 2),
(34, 'Surge Protector', 'Accessories', 40, 1200.00, 1),
(35, 'Mouse Pad', 'Accessories', 100, 300.00, 2),
(36, 'Laptop Bag', 'Accessories', 50, 2500.00, 3),
(37, 'Drone', 'Electronics', 5, 50000.00, 2),
(38, 'HDMI Cable', 'Accessories', 60, 800.00, 1),
(39, 'Monitor Stand', 'Accessories', 20, 3000.00, 2),
(40, 'Gaming Console', 'Electronics', 7, 40000.00, 3),
(41, 'Electric Scooter', 'Electronics', 4, 60000.00, 2),
(42, 'Portable Projector', 'Electronics', 6, 25000.00, 3),
(43, 'Smart Home Hub', 'Electronics', 10, 15000.00, 1),
(44, 'Bluetooth Adapter', 'Accessories', 25, 1500.00, 2),
(45, 'Graphic Tablet', 'Accessories', 10, 8000.00, 3),
(46, 'Tripod', 'Accessories', 30, 2000.00, 1),
(47, 'Car Charger', 'Accessories', 40, 800.00, 2),
(48, 'Webcam Cover', 'Accessories', 60, 500.00, 3),
(49, 'CCTV Camera', 'Electronics', 10, 25000.00, 1),
(50, 'Gaming Laptop', 'Electronics', 5, 100000.00, 3),
(51, 'kangkong Chips', 'Accessories', 2500, 500.00, 1);

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `SupplierID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `ContactNumber` varchar(20) NOT NULL,
  `Address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`SupplierID`, `Name`, `ContactNumber`, `Address`) VALUES
(1, 'Tech Supplies Inc.', '09123456789', '123 Tech Street, Manila'),
(2, 'Best Hardware', '09234567890', '456 Hardware Ave, Cebu'),
(3, 'Gadget World', '09345678901', '789 Gadget Lane, Davao');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `TransactionID` int(11) NOT NULL,
  `ProductID` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Date` date NOT NULL,
  `CustomerOrSupplier` varchar(255) DEFAULT NULL,
  `TransactionType` varchar(50) DEFAULT NULL CHECK (`TransactionType` in ('Sale','Purchase'))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`TransactionID`, `ProductID`, `Quantity`, `Date`, `CustomerOrSupplier`, `TransactionType`) VALUES
(1, 20, 50, '2025-03-01', 'Supplier A', 'Purchase'),
(2, 21, 30, '2025-03-02', 'Supplier B', 'Purchase'),
(3, 22, 40, '2025-03-03', 'Customer X', 'Sale'),
(4, 23, 25, '2025-03-04', 'Customer Y', 'Sale'),
(5, 24, 15, '2025-03-05', 'Supplier C', 'Purchase'),
(6, 25, 35, '2025-03-06', 'Customer Z', 'Sale'),
(7, 26, 20, '2025-03-07', 'Supplier D', 'Purchase'),
(8, 27, 10, '2025-03-08', 'Customer A', 'Sale'),
(9, 28, 60, '2025-03-09', 'Supplier E', 'Purchase'),
(10, 29, 70, '2025-03-10', 'Customer B', 'Sale'),
(11, 30, 55, '2025-03-11', 'Supplier F', 'Purchase'),
(12, 31, 45, '2025-03-12', 'Customer C', 'Sale'),
(13, 32, 80, '2025-03-13', 'Supplier G', 'Purchase'),
(14, 33, 75, '2025-03-14', 'Customer D', 'Sale'),
(15, 34, 50, '2025-03-15', 'Supplier H', 'Purchase'),
(16, 35, 65, '2025-03-16', 'Customer E', 'Sale'),
(17, 36, 85, '2025-03-17', 'Supplier I', 'Purchase'),
(18, 37, 90, '2025-03-18', 'Customer F', 'Sale'),
(19, 38, 40, '2025-03-19', 'Supplier J', 'Purchase'),
(20, 39, 30, '2025-03-20', 'Customer G', 'Sale'),
(21, 16, 6, '2025-03-29', 'Best Hardware', 'Purchase'),
(22, 14, 2500, '2025-03-29', 'Best Hardware', 'Purchase'),
(23, 15, 80, '2025-03-29', 'Godwyn', 'Sale'),
(24, 20, 10, '2025-03-29', 'Godwyn', 'Sale'),
(25, 10, 10, '2025-03-29', 'Gad', 'Sale'),
(26, 10, 1000, '2025-03-29', 'Gadget World', 'Purchase');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserID` int(11) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `PasswordHash` varchar(255) NOT NULL,
  `Role` enum('Admin','Staff','Manager') NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserID`, `Username`, `PasswordHash`, `Role`, `first_name`, `last_name`) VALUES
(1, 'john_doe', '588+9PF8OZmpTyxvYS6KiI5bECaHjk4ZOYsjvTjsIho=', 'Admin', 'John', 'Doe'),
(2, 'jane_smith', '588+9PF8OZmpTyxvYS6KiI5bECaHjk4ZOYsjvTjsIho=', 'Manager', 'Jane', 'Smith'),
(3, 'mike_jones', '588+9PF8OZmpTyxvYS6KiI5bECaHjk4ZOYsjvTjsIho=', 'Staff', 'Mike', 'Jones'),
(4, 'lisa_brown', '588+9PF8OZmpTyxvYS6KiI5bECaHjk4ZOYsjvTjsIho=', 'Staff', 'Lisa', 'Brown'),
(5, 'tom_wilson', '588+9PF8OZmpTyxvYS6KiI5bECaHjk4ZOYsjvTjsIho=', 'Admin', 'Tom', 'Wilson'),
(6, 'lucy_davis', '588+9PF8OZmpTyxvYS6KiI5bECaHjk4ZOYsjvTjsIho=', 'Staff', 'Lucy', 'Davis'),
(7, 'chris_clark', '588+9PF8OZmpTyxvYS6KiI5bECaHjk4ZOYsjvTjsIho=', 'Manager', 'Chris', 'Clark'),
(8, 'susan_martin', '588+9PF8OZmpTyxvYS6KiI5bECaHjk4ZOYsjvTjsIho=', 'Staff', 'Susan', 'Martin'),
(9, 'david_lee', '588+9PF8OZmpTyxvYS6KiI5bECaHjk4ZOYsjvTjsIho=', 'Admin', 'David', 'Lee'),
(10, 'nancy_thomas', '588+9PF8OZmpTyxvYS6KiI5bECaHjk4ZOYsjvTjsIho=', 'Staff', 'Nancy', 'Thomas'),
(11, 'joseph_garcia', '588+9PF8OZmpTyxvYS6KiI5bECaHjk4ZOYsjvTjsIho=', 'Manager', 'Joseph', 'Garcia'),
(12, 'patricia_moore', '588+9PF8OZmpTyxvYS6KiI5bECaHjk4ZOYsjvTjsIho=', 'Admin', 'Patricia', 'Moore'),
(13, 'charles_jackson', '588+9PF8OZmpTyxvYS6KiI5bECaHjk4ZOYsjvTjsIho=', 'Staff', 'Charles', 'Jackson'),
(14, 'emily_lee', '588+9PF8OZmpTyxvYS6KiI5bECaHjk4ZOYsjvTjsIho=', 'Manager', 'Emily', 'Lee'),
(15, 'george_white', '588+9PF8OZmpTyxvYS6KiI5bECaHjk4ZOYsjvTjsIho=', 'Staff', 'George', 'White'),
(16, 'elizabeth_harris', '588+9PF8OZmpTyxvYS6KiI5bECaHjk4ZOYsjvTjsIho=', 'Staff', 'Elizabeth', 'Harris'),
(17, 'frank_martin', '588+9PF8OZmpTyxvYS6KiI5bECaHjk4ZOYsjvTjsIho=', 'Staff', 'Frank', 'Martin'),
(18, 'deborah_scott', '588+9PF8OZmpTyxvYS6KiI5bECaHjk4ZOYsjvTjsIho=', 'Admin', 'Deborah', 'Scott'),
(19, 'william_roberts', '588+9PF8OZmpTyxvYS6KiI5bECaHjk4ZOYsjvTjsIho=', 'Staff', 'William', 'Roberts'),
(20, 'karen_harris', '588+9PF8OZmpTyxvYS6KiI5bECaHjk4ZOYsjvTjsIho=', 'Manager', 'Karen', 'Harris'),
(21, 'paul_turner', '588+9PF8OZmpTyxvYS6KiI5bECaHjk4ZOYsjvTjsIho=', 'Staff', 'Paul', 'Turner'),
(22, 'sandra_walker', '588+9PF8OZmpTyxvYS6KiI5bECaHjk4ZOYsjvTjsIho=', 'Admin', 'Sandra', 'Walker'),
(23, 'robert_lee', '588+9PF8OZmpTyxvYS6KiI5bECaHjk4ZOYsjvTjsIho=', 'Manager', 'Robert', 'Lee'),
(24, 'nancy_perez', '588+9PF8OZmpTyxvYS6KiI5bECaHjk4ZOYsjvTjsIho=', 'Staff', 'Nancy', 'Perez'),
(25, 'dennis_young', '588+9PF8OZmpTyxvYS6KiI5bECaHjk4ZOYsjvTjsIho=', 'Manager', 'Dennis', 'Young'),
(26, 'betty_morris', '588+9PF8OZmpTyxvYS6KiI5bECaHjk4ZOYsjvTjsIho=', 'Staff', 'Betty', 'Morris'),
(27, 'jason_hall', '588+9PF8OZmpTyxvYS6KiI5bECaHjk4ZOYsjvTjsIho=', 'Admin', 'Jason', 'Hall'),
(28, 'denise_king', '588+9PF8OZmpTyxvYS6KiI5bECaHjk4ZOYsjvTjsIho=', 'Staff', 'Denise', 'King'),
(29, 'cynthia_adams', '588+9PF8OZmpTyxvYS6KiI5bECaHjk4ZOYsjvTjsIho=', 'Admin', 'Cynthia', 'Adams'),
(30, 'andy_baker', '588+9PF8OZmpTyxvYS6KiI5bECaHjk4ZOYsjvTjsIho=', 'Staff', 'Andy', 'Baker'),
(31, 'martha_carter', '588+9PF8OZmpTyxvYS6KiI5bECaHjk4ZOYsjvTjsIho=', 'Manager', 'Martha', 'Carter'),
(32, 'anthony_evans', '588+9PF8OZmpTyxvYS6KiI5bECaHjk4ZOYsjvTjsIho=', 'Admin', 'Anthony', 'Evans'),
(33, 'susan_hernandez', '588+9PF8OZmpTyxvYS6KiI5bECaHjk4ZOYsjvTjsIho=', 'Staff', 'Susan', 'Hernandez'),
(34, 'brian_garcia', '588+9PF8OZmpTyxvYS6KiI5bECaHjk4ZOYsjvTjsIho=', 'Manager', 'Brian', 'Garcia'),
(35, 'olivia_robinson', '588+9PF8OZmpTyxvYS6KiI5bECaHjk4ZOYsjvTjsIho=', 'Staff', 'Olivia', 'Robinson'),
(36, 'jack_davis', '588+9PF8OZmpTyxvYS6KiI5bECaHjk4ZOYsjvTjsIho=', 'Staff', 'Jack', 'Davis'),
(37, 'maria_wilson', '588+9PF8OZmpTyxvYS6KiI5bECaHjk4ZOYsjvTjsIho=', 'Manager', 'Maria', 'Wilson'),
(38, 'kevin_johnson', '588+9PF8OZmpTyxvYS6KiI5bECaHjk4ZOYsjvTjsIho=', 'Staff', 'Kevin', 'Johnson'),
(39, 'kimberly_moore', '588+9PF8OZmpTyxvYS6KiI5bECaHjk4ZOYsjvTjsIho=', 'Staff', 'Kimberly', 'Moore'),
(40, 'rachel_miller', '588+9PF8OZmpTyxvYS6KiI5bECaHjk4ZOYsjvTjsIho=', 'Admin', 'Rachel', 'Miller'),
(41, 'julia_gonzalez', '588+9PF8OZmpTyxvYS6KiI5bECaHjk4ZOYsjvTjsIho=', 'Staff', 'Julia', 'Gonzalez'),
(42, 'charles_ward', '588+9PF8OZmpTyxvYS6KiI5bECaHjk4ZOYsjvTjsIho=', 'Manager', 'Charles', 'Ward'),
(43, 'austin_russell', '588+9PF8OZmpTyxvYS6KiI5bECaHjk4ZOYsjvTjsIho=', 'Staff', 'Austin', 'Russell'),
(44, 'rebecca_brown', '588+9PF8OZmpTyxvYS6KiI5bECaHjk4ZOYsjvTjsIho=', 'Admin', 'Rebecca', 'Brown'),
(45, 'nicholas_smith', '588+9PF8OZmpTyxvYS6KiI5bECaHjk4ZOYsjvTjsIho=', 'Staff', 'Nicholas', 'Smith'),
(46, 'lily_james', '588+9PF8OZmpTyxvYS6KiI5bECaHjk4ZOYsjvTjsIho=', 'Staff', 'Lily', 'James'),
(47, 'william_stevens', '588+9PF8OZmpTyxvYS6KiI5bECaHjk4ZOYsjvTjsIho=', 'Admin', 'William', 'Stevens'),
(48, 'zoe_walker', '588+9PF8OZmpTyxvYS6KiI5bECaHjk4ZOYsjvTjsIho=', 'Staff', 'Zoe', 'Walker'),
(49, 'samuel_bell', '588+9PF8OZmpTyxvYS6KiI5bECaHjk4ZOYsjvTjsIho=', 'Admin', 'Samuel', 'Bell'),
(50, 'lori_king', '588+9PF8OZmpTyxvYS6KiI5bECaHjk4ZOYsjvTjsIho=', 'Staff', 'Lori', 'King'),
(51, 'admin', '588+9PF8OZmpTyxvYS6KiI5bECaHjk4ZOYsjvTjsIho=', 'Admin', 'Godwyn', 'Admin'),
(52, 'staff', '588+9PF8OZmpTyxvYS6KiI5bECaHjk4ZOYsjvTjsIho=', 'Staff', 'Godwyn', 'Staff'),
(53, 'manager', '588+9PF8OZmpTyxvYS6KiI5bECaHjk4ZOYsjvTjsIho=', 'Manager', 'Godwyn', 'Manager');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ProductID`),
  ADD KEY `SupplierID` (`SupplierID`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`SupplierID`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`TransactionID`),
  ADD KEY `ProductID` (`ProductID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `ProductID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `SupplierID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `TransactionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`SupplierID`) REFERENCES `suppliers` (`SupplierID`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`ProductID`) REFERENCES `products` (`ProductID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
