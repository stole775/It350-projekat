-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2022 at 07:19 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `prodajaautomobila`
--
CREATE DATABASE IF NOT EXISTS `prodajaautomobila` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `prodajaautomobila`;

-- --------------------------------------------------------

--
-- Table structure for table `gorivo`
--

CREATE TABLE `gorivo` (
  `naziv_goriva` enum('Bezolovni','Dizel','Metan','Elektricni','Gas','Hibrid') NOT NULL,
  `id_gorivo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gorivo`
--

INSERT INTO `gorivo` (`naziv_goriva`, `id_gorivo`) VALUES
('Bezolovni', 1),
('Dizel', 2),
('Metan', 3),
('Elektricni', 4),
('Gas', 5),
('Hibrid', 6);

-- --------------------------------------------------------

--
-- Table structure for table `kontakt`
--

CREATE TABLE `kontakt` (
  `ime` text NOT NULL,
  `prezime` text NOT NULL,
  `poruka` text NOT NULL,
  `broj` text NOT NULL,
  `imeNaloga` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kontakt`
--

INSERT INTO `kontakt` (`ime`, `prezime`, `poruka`, `broj`, `imeNaloga`) VALUES
('ana', 'matejic', 'neka poruka', '381', 'nema korisnika'),
('ana', 'matejic', 'druga poruka', '381', 'nema korisnika'),
('mladen', 'stolic', 'moja poruka', '9879', 'nije_korisnik'),
('irena', 'stolic', 'poruka', '254625346', 'nema korisnika'),
('as', 'aas12312', '213123', '12321312', 'irena'),
('sadsfs', 'sdafsda', '112321', '1232131', 'ana'),
('ygufgyvghv', 'hvjhv', '12121212', '576576', 'ana'),
('', '', '', '', 'nije_korisnik');

-- --------------------------------------------------------

--
-- Table structure for table `korisnici`
--

CREATE TABLE `korisnici` (
  `id_korisnika` int(11) NOT NULL,
  `name` text NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `admin` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `korisnici`
--

INSERT INTO `korisnici` (`id_korisnika`, `name`, `username`, `password`, `admin`) VALUES
(6, 'mladen', 'mladen.stole@gmail.com', '202cb962ac59075b964b07152d234b70', 1),
(7, 'nekoime', 'nekoime@mejl.com', '202cb962ac59075b964b07152d234b70', 0),
(8, 'ana', 'ana@mejl.com', '202cb962ac59075b964b07152d234b70', 0),
(10, 'ana', 'ana.matejic679@gmail.com', '202cb962ac59075b964b07152d234b70', 0),
(15, 'jovan', 'coja@j.j', '202cb962ac59075b964b07152d234b70', 0),
(19, 'noviKorisnik', 'novi@n.n', '202cb962ac59075b964b07152d234b70', 0);

-- --------------------------------------------------------

--
-- Table structure for table `marka`
--

CREATE TABLE `marka` (
  `naziv_marke` varchar(15) DEFAULT NULL,
  `id_marka` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `marka`
--

INSERT INTO `marka` (`naziv_marke`, `id_marka`) VALUES
('Audi', 1),
('BMW', 2),
('Mercedes', 3),
('Alfa Romeo', 4),
('Ford', 5),
('Peugeot', 6),
('Mazda', 7),
('Honda', 8),
('Toyota', 9),
('Citroen', 10),
('Reno', 11);

-- --------------------------------------------------------

--
-- Table structure for table `model`
--

CREATE TABLE `model` (
  `naziv_modela` varchar(15) NOT NULL,
  `id_model` int(11) NOT NULL,
  `marka_FK` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `model`
--

INSERT INTO `model` (`naziv_modela`, `id_model`, `marka_FK`) VALUES
('A1', 1, 1),
('A2', 2, 1),
('A3', 3, 1),
('A4', 4, 1),
('A6', 5, 1),
('A6', 6, 1),
('A7', 7, 1),
('A8', 8, 1),
('Giulietta', 9, 4),
('Stelvio', 10, 4),
('Serie 3', 11, 2),
('C4', 12, 10),
('Focus', 13, 5),
('Mustang', 14, 5),
('Civic', 15, 8),
('RX-8', 16, 7),
('206', 18, 6),
('Camry', 19, 9),
('E-Class', 20, 3),
('C-Class', 21, 3);

-- --------------------------------------------------------

--
-- Table structure for table `oglas`
--

CREATE TABLE `oglas` (
  `naziv_oglasa` varchar(30) NOT NULL,
  `id_gorivo` int(11) NOT NULL,
  `id_marka` int(11) NOT NULL,
  `id_model` int(11) NOT NULL,
  `url_slika` text NOT NULL,
  `cena` int(11) NOT NULL,
  `id_korisnika` int(11) NOT NULL,
  `id_oglasa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `oglas`
--

INSERT INTO `oglas` (`naziv_oglasa`, `id_gorivo`, `id_marka`, `id_model`, `url_slika`, `cena`, `id_korisnika`, `id_oglasa`) VALUES
('prvi oglas', 2, 1, 6, 'https://gcdn.polovniautomobili.com/user-images/thumbs/1830/18308744/73d1fbf489da-800x600.jpg', 0, 0, 1),
('drugi oglas', 1, 2, 11, 'https://www.bmw.rs/content/dam/bmw/common/all-models/3-series/series-overview/bmw-3er-overview-page-ms-07.jpg', 0, 0, 2),
('ana', 3, 1, 5, 'https://www.bmw.rs/content/dam/bmw/common/all-models/3-series/series-overview/bmw-3er-overview-page-ms-07.jpg', 2112323, 10, 39),
('123423', 2, 1, 2, '1.png', 23412, 15, 52);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gorivo`
--
ALTER TABLE `gorivo`
  ADD PRIMARY KEY (`id_gorivo`);

--
-- Indexes for table `korisnici`
--
ALTER TABLE `korisnici`
  ADD PRIMARY KEY (`id_korisnika`);

--
-- Indexes for table `marka`
--
ALTER TABLE `marka`
  ADD PRIMARY KEY (`id_marka`);

--
-- Indexes for table `model`
--
ALTER TABLE `model`
  ADD PRIMARY KEY (`id_model`),
  ADD KEY `marka_FK` (`marka_FK`);

--
-- Indexes for table `oglas`
--
ALTER TABLE `oglas`
  ADD PRIMARY KEY (`id_oglasa`),
  ADD KEY `id_gorivo` (`id_gorivo`,`id_marka`,`id_model`),
  ADD KEY `id_model` (`id_model`),
  ADD KEY `id_marka` (`id_marka`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gorivo`
--
ALTER TABLE `gorivo`
  MODIFY `id_gorivo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `korisnici`
--
ALTER TABLE `korisnici`
  MODIFY `id_korisnika` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `marka`
--
ALTER TABLE `marka`
  MODIFY `id_marka` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `model`
--
ALTER TABLE `model`
  MODIFY `id_model` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `oglas`
--
ALTER TABLE `oglas`
  MODIFY `id_oglasa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model`
--
ALTER TABLE `model`
  ADD CONSTRAINT `model_ibfk_1` FOREIGN KEY (`marka_FK`) REFERENCES `marka` (`id_marka`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `oglas`
--
ALTER TABLE `oglas`
  ADD CONSTRAINT `oglas_ibfk_2` FOREIGN KEY (`id_gorivo`) REFERENCES `gorivo` (`id_gorivo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `oglas_ibfk_3` FOREIGN KEY (`id_model`) REFERENCES `model` (`id_model`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `oglas_ibfk_4` FOREIGN KEY (`id_marka`) REFERENCES `marka` (`id_marka`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
