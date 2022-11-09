-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2022 at 07:55 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `music_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `instruments`
--

CREATE TABLE `instruments` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `brand name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(255) NOT NULL,
  `type` enum('guitar','drum','bass','turntables') NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `instruments`
--

INSERT INTO `instruments` (`id`, `name`, `brand name`, `price`, `photo`, `type`, `description`) VALUES
(1, 'Klassical guitar', 'band_1', 550, 'Klassical-guitar.jpg', 'guitar', 'The classical guitar (also known as the nylon-string guitar or Spanish guitar) is a member of the guitar family used in classical music and other styles.'),
(2, 'Electric Guitar', 'Band_2', 500, 'Electric-Guitar.jpg', 'guitar', 'An electric guitar is a guitar that requires external amplification in order to be heard at typical performance volumes, unlike a standard acoustic guitar'),
(3, 'drummer', 'Band_2', 900, 'drummer.jpg', 'drum', 'A drummer is a percussionist who creates music using drums. Hand drummers in Berkeley, California, about 1966. Drummer at a party in Canjambari.'),
(4, 'Hip-hop', 'Band_3', 350, 'Hip-Hope.png', 'turntables', 'urntablism is the art of manipulating sounds and creating new music, sound effects, mixes and other creative sounds and beats, typically by using two or more turntables and a cross fader-equipped DJ mixer.[1]');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `instruments`
--
ALTER TABLE `instruments`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `instruments`
--
ALTER TABLE `instruments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
