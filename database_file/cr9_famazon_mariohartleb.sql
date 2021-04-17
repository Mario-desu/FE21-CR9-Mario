-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 17. Apr 2021 um 17:00
-- Server-Version: 10.4.18-MariaDB
-- PHP-Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `cr9_famazon_mariohartleb`
--
CREATE DATABASE IF NOT EXISTS `cr9_famazon_mariohartleb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `cr9_famazon_mariohartleb`;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `beer`
--

CREATE TABLE `beer` (
  `beerID` int(11) NOT NULL,
  `beerName` varchar(55) DEFAULT NULL,
  `fk_breweryID` int(11) DEFAULT NULL,
  `fk_beerType` int(11) DEFAULT NULL,
  `alcCont` decimal(2,1) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `beer`
--

INSERT INTO `beer` (`beerID`, `beerName`, `fk_breweryID`, `fk_beerType`, `alcCont`, `description`) VALUES
(1, 'Hirter Privat Pils', 1, 2, '5.0', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet,'),
(2, 'Hirter Märzen', 1, 1, '5.2', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet,'),
(3, 'Stiegl Goldbräu', 2, 1, '4.8', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet,'),
(4, 'Stiegl Columbus', 2, 4, '4.7', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet,'),
(5, 'Murauer Märzen', 1, 1, '5.0', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet,'),
(6, 'Murauer Dunkel', 3, 3, '5.5', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet,'),
(7, 'Ottakringer Helles', 4, 2, '5.0', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet,'),
(8, 'Ottakringer Bock', 4, 5, '6.9', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet,');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `beer_type`
--

CREATE TABLE `beer_type` (
  `beerTypeID` int(11) NOT NULL,
  `typeName` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `beer_type`
--

INSERT INTO `beer_type` (`beerTypeID`, `typeName`) VALUES
(1, 'Märzen'),
(2, 'Pils'),
(3, 'Dark'),
(4, 'Pale Ale'),
(5, 'Bock');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `brewery`
--

CREATE TABLE `brewery` (
  `breweryID` int(11) NOT NULL,
  `breweryName` varchar(55) DEFAULT NULL,
  `breweryEmail` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `brewery`
--

INSERT INTO `brewery` (`breweryID`, `breweryName`, `breweryEmail`, `website`) VALUES
(1, 'Hirter', 'office@hirter.at', 'https://www.hirterbier.at/'),
(2, 'Stiegl', 'office@stiegl.at', 'https://www.stiegl.at/'),
(3, 'Murauer', 'office@murauerbier.at', 'https://www.murauerbier.at/'),
(4, 'Ottakringer', 'office@ottakringer.at', 'https://www.ottakringerbrauerei.at/');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `carrier`
--

CREATE TABLE `carrier` (
  `carrierID` int(11) NOT NULL,
  `carrierName` varchar(55) DEFAULT NULL,
  `carrierEmail` varchar(255) DEFAULT NULL,
  `phoneNumber` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `carrier`
--

INSERT INTO `carrier` (`carrierID`, `carrierName`, `carrierEmail`, `phoneNumber`) VALUES
(1, 'DHL', 'office@dhl.at', '+43-1-5553337'),
(2, 'DPD', 'office@dpd.at', '+43-1-7779991'),
(3, 'UPS', 'office@ups.at', '+43-1-4445556');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `customer`
--

CREATE TABLE `customer` (
  `customerID` int(11) NOT NULL,
  `lastName` varchar(55) DEFAULT NULL,
  `firstName` varchar(55) DEFAULT NULL,
  `fk_custAddress` int(11) DEFAULT NULL,
  `phoneNumber` varchar(55) DEFAULT NULL,
  `fk_loginDataID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `customer`
--

INSERT INTO `customer` (`customerID`, `lastName`, `firstName`, `fk_custAddress`, `phoneNumber`, `fk_loginDataID`) VALUES
(1, 'Scudders', 'Lesya', 65, '+43-1-5553777', NULL),
(2, 'Ronci', 'Pansie', 61, '+54-713-584-7841', NULL),
(3, 'Martignon', 'Georgianne', 62, '+62-314-491-6766', NULL),
(4, 'Digginson', 'Nani', 63, '+66-185-800-8976', NULL),
(5, 'Basketter', 'Rustin', 64, '+355-803-931-9292', NULL),
(6, 'Bramham', 'Porty', 66, '+62-330-865-2955', NULL),
(7, 'Bramham', 'Porty', 67, '+62-330-865-2955', NULL),
(8, 'Jessope', 'Malorie', 68, '+86-335-662-9008', NULL),
(9, 'Blees', 'Thomasa', 69, '+54-848-456-7145', NULL),
(10, 'Shrimpton', 'Haroun', 70, '+66-210-833-4827', NULL),
(11, 'Crux', 'Betteann', 71, '+48-721-727-6278', NULL),
(12, 'Gladstone', 'Ermanno', 72, '+86-493-645-7888', NULL),
(13, 'Frediani\'', 'Pyotr\'', 73, '+63-316-175-6911', NULL),
(14, 'Pickthorne', 'Rudolph', 74, '+63-560-144-8137', NULL),
(15, 'Edeson', 'George', 75, '+62-627-759-9887', NULL),
(16, 'Koubek', 'Jerrie', 76, '+54-415-320-3039', NULL),
(17, 'Lockey', 'Son', 77, '+86-103-180-1271', NULL),
(18, 'Boulsher', 'Lazarus', 78, '+86-315-944-8718', NULL),
(19, 'Crepel', 'Neddie', 79, '+233-794-610-0918', NULL),
(20, 'Matschoss', 'Kelcy', 80, '+86-747-333-9364', NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `customer_address`
--

CREATE TABLE `customer_address` (
  `custAddressID` int(11) NOT NULL,
  `street` varchar(55) DEFAULT NULL,
  `streetNumber` int(11) DEFAULT NULL,
  `fk_zipCode` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `customer_address`
--

INSERT INTO `customer_address` (`custAddressID`, `street`, `streetNumber`, `fk_zipCode`) VALUES
(61, 'Washington', 3, 8731),
(62, 'Rutledge', 64, 6850),
(63, 'Springs', 604, 8010),
(64, 'Hovde', 66151, 7540),
(65, 'Glacier Hill', 2649, 7093),
(66, 'Moose', 48, 8750),
(67, 'Toban', 28, 9020),
(68, '6th', 5, 4020),
(69, 'Elgar', 46010, 2130),
(70, 'Tony', 560, 7111),
(71, 'Gale', 1, 5020),
(72, 'Annamark', 353, 9800),
(73, 'Redwing', 6, 6450),
(74, 'Knutson', 29664, 3430),
(75, 'Manley', 728, 6882),
(76, 'Sheridan', 65, 1220),
(77, 'Scott', 64, 1190),
(78, 'Londonderry', 30, 1030),
(79, '1st', 812, 1010),
(80, 'Independence', 71136, 3341);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `invoice`
--

CREATE TABLE `invoice` (
  `invoiceID` int(11) NOT NULL,
  `fk_orderInvID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `invoice`
--

INSERT INTO `invoice` (`invoiceID`, `fk_orderInvID`) VALUES
(1, 9),
(2, 10),
(3, 13),
(4, 14),
(5, 15),
(6, 16),
(7, 17),
(8, 18),
(9, 19),
(10, 20),
(11, 21),
(12, 22),
(13, 23),
(14, 23),
(15, 25),
(16, 26);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `logindata`
--

CREATE TABLE `logindata` (
  `loginID` int(11) NOT NULL,
  `email` varchar(55) DEFAULT NULL,
  `password` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `logindata`
--

INSERT INTO `logindata` (`loginID`, `email`, `password`) VALUES
(1, 'rben0@etsy.com', 'EodbBY9LJOh'),
(2, 'dpimblett1@trellian.com', 'tVTqKM4'),
(3, 'cjoselson2@last.fm', 'bW6BUyS'),
(4, 'thaylands3@twitter.com', 'W0vxXZwwq0Z'),
(5, 'kthomassen4@omniture.com', 'Tm7ZVp'),
(6, 'inavan5@histats.com', 'fJWSVpT'),
(7, 'spottiphar6@shutterfly.com', 'l4Q28LzO'),
(8, 'vmurkus7@statcounter.com', 'NqjHOBc'),
(9, 'jeite8@liveinternet.ru', 'sa17ZP'),
(10, 'sstoltz9@samsung.com', 'Ntpmr1oB6fL'),
(11, 'lsutherela@infoseek.co.jp', 'NVEy0Qw'),
(12, 'kdyneb@netvibes.com', '7uGKiV'),
(13, 'blilleyc@ca.gov', 'vATExuNNIF7'),
(14, 'hwinpennyd@ucoz.com', 'JEPeebrPu'),
(15, 'bcotee@hc360.com', 'betYbHmYbdM'),
(16, 'zcarncrossf@nsw.gov.au', 'TReyho'),
(17, 'adimeloeg@cbslocal.com', '4DgSoao2f'),
(18, 'skuhnth@example.com', 's8Hbh9vtP'),
(19, 'dwadlowi@cloudflare.com', '2pXAfa'),
(20, 'rben0@etsy.com', 'EodbBY9LJOh'),
(21, 'dpimblett1@trellian.com', 'tVTqKM4'),
(22, 'cjoselson2@last.fm', 'bW6BUyS'),
(23, 'thaylands3@twitter.com', 'W0vxXZwwq0Z'),
(24, 'kthomassen4@omniture.com', 'Tm7ZVp'),
(25, 'inavan5@histats.com', 'fJWSVpT'),
(26, 'spottiphar6@shutterfly.com', 'l4Q28LzO'),
(27, 'vmurkus7@statcounter.com', 'NqjHOBc'),
(28, 'jeite8@liveinternet.ru', 'sa17ZP'),
(29, 'sstoltz9@samsung.com', 'Ntpmr1oB6fL'),
(30, 'lsutherela@infoseek.co.jp', 'NVEy0Qw'),
(31, 'kdyneb@netvibes.com', '7uGKiV'),
(32, 'blilleyc@ca.gov', 'vATExuNNIF7'),
(33, 'hwinpennyd@ucoz.com', 'JEPeebrPu'),
(34, 'bcotee@hc360.com', 'betYbHmYbdM'),
(35, 'zcarncrossf@nsw.gov.au', 'TReyho'),
(36, 'adimeloeg@cbslocal.com', '4DgSoao2f'),
(37, 'skuhnth@example.com', 's8Hbh9vtP'),
(38, 'dwadlowi@cloudflare.com', '2pXAfa'),
(39, 'icattachj@dropbox.com', 'AZohjNV');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `orders`
--

CREATE TABLE `orders` (
  `orderID` int(11) NOT NULL,
  `fk_customerID` int(11) DEFAULT NULL,
  `fk_productID` int(11) DEFAULT NULL,
  `itemQuant` int(11) DEFAULT NULL,
  `orderTime` datetime DEFAULT NULL,
  `fk_payMethod` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `orders`
--

INSERT INTO `orders` (`orderID`, `fk_customerID`, `fk_productID`, `itemQuant`, `orderTime`, `fk_payMethod`) VALUES
(9, 18, 2, 3, '2021-04-17 14:56:22', 3),
(10, 4, 5, 5, '2021-04-17 14:56:22', 3),
(13, 12, 7, 3, '2021-04-17 15:00:47', 2),
(14, 5, 10, 3, '2021-04-17 15:00:47', 4),
(15, 8, 7, 3, '2021-04-17 15:00:47', 2),
(16, 14, 10, 3, '2021-04-17 15:00:47', 4),
(17, 15, 11, 11, '2021-04-17 15:02:13', 1),
(18, 3, 6, 7, '2021-04-17 15:02:13', 3),
(19, 1, 8, 8, '2021-04-17 15:02:13', 2),
(20, 2, 6, 9, '2021-04-17 15:02:13', 4),
(21, 14, 9, 2, '2021-04-17 15:02:13', 1),
(22, 16, 11, 11, '2021-04-17 15:02:13', 1),
(23, 17, 6, 7, '2021-04-17 15:02:13', 3),
(24, 18, 8, 8, '2021-04-17 15:02:13', 2),
(25, 10, 6, 9, '2021-04-17 15:02:13', 4),
(26, 11, 9, 2, '2021-04-17 15:02:13', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `payment_method`
--

CREATE TABLE `payment_method` (
  `payMethodID` int(11) NOT NULL,
  `payMethodName` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `payment_method`
--

INSERT INTO `payment_method` (`payMethodID`, `payMethodName`) VALUES
(1, 'Mastercard'),
(2, 'Visa'),
(3, 'American Express'),
(4, 'PayPal');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `product`
--

CREATE TABLE `product` (
  `productID` int(11) NOT NULL,
  `fk_beerID` int(11) DEFAULT NULL,
  `bottleSize` decimal(3,2) DEFAULT NULL,
  `price` decimal(3,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `product`
--

INSERT INTO `product` (`productID`, `fk_beerID`, `bottleSize`, `price`) VALUES
(1, 2, '0.33', '0.89'),
(2, 2, '0.50', '1.20'),
(3, 1, '0.50', '1.40'),
(4, 6, '0.50', '1.20'),
(5, 5, '0.50', '0.99'),
(6, 5, '0.33', '0.79'),
(7, 8, '0.33', '1.40'),
(8, 7, '0.50', '0.89'),
(9, 4, '0.33', '1.20'),
(10, 4, '1.00', '3.50'),
(11, 3, '0.33', '0.79'),
(12, 3, '0.50', '1.10');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `shipping`
--

CREATE TABLE `shipping` (
  `shippingID` int(11) NOT NULL,
  `fk_carrierID` int(11) DEFAULT NULL,
  `shippingDate` date DEFAULT NULL,
  `fk_orderShiID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `shipping`
--

INSERT INTO `shipping` (`shippingID`, `fk_carrierID`, `shippingDate`, `fk_orderShiID`) VALUES
(1, 1, '2021-04-18', 9),
(2, 3, '2021-04-18', 10),
(3, 2, '2021-04-18', 13),
(4, 3, '2021-04-18', 14),
(5, 2, '2021-04-19', 15),
(6, 1, '2021-04-19', 16),
(7, 2, '2021-04-19', 17),
(8, 3, '2021-04-19', 18),
(9, 1, '2021-04-20', 19),
(10, 2, '2021-04-20', 20),
(11, 3, '2021-04-20', 21),
(12, 1, '2021-04-21', 22),
(13, 2, '2021-04-21', 23),
(14, 3, '2021-04-21', 24),
(15, 1, '2021-04-21', 25),
(16, 2, '2021-04-21', 26);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `zipcode`
--

CREATE TABLE `zipcode` (
  `zipCode` int(11) NOT NULL,
  `city` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `zipcode`
--

INSERT INTO `zipcode` (`zipCode`, `city`) VALUES
(1010, 'Wien'),
(1030, 'Wien'),
(1190, 'Wien'),
(1220, 'Wien'),
(2130, 'Mistelbach'),
(3341, 'Ybbsitz'),
(3430, 'Tulln'),
(4020, 'Linz'),
(5020, 'Salzburg'),
(6450, 'Sölden'),
(6850, 'Dornbirn'),
(6882, 'Vils'),
(7093, 'Jois'),
(7111, 'Parndorf'),
(7540, 'Güssing'),
(8010, 'Graz'),
(8731, 'Bischoffeld'),
(8750, 'Judenburg'),
(9020, 'Klagenfurt'),
(9800, 'Spittal an der Drau');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `beer`
--
ALTER TABLE `beer`
  ADD PRIMARY KEY (`beerID`),
  ADD KEY `fk_breweryID` (`fk_breweryID`),
  ADD KEY `fk_beerType` (`fk_beerType`);

--
-- Indizes für die Tabelle `beer_type`
--
ALTER TABLE `beer_type`
  ADD PRIMARY KEY (`beerTypeID`);

--
-- Indizes für die Tabelle `brewery`
--
ALTER TABLE `brewery`
  ADD PRIMARY KEY (`breweryID`);

--
-- Indizes für die Tabelle `carrier`
--
ALTER TABLE `carrier`
  ADD PRIMARY KEY (`carrierID`);

--
-- Indizes für die Tabelle `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customerID`),
  ADD KEY `fk_custAddressID` (`fk_custAddress`),
  ADD KEY `fk_loginDataID` (`fk_loginDataID`),
  ADD KEY `fk_loginDataID_2` (`fk_loginDataID`);

--
-- Indizes für die Tabelle `customer_address`
--
ALTER TABLE `customer_address`
  ADD PRIMARY KEY (`custAddressID`),
  ADD KEY `fk_zipCode` (`fk_zipCode`);

--
-- Indizes für die Tabelle `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoiceID`),
  ADD KEY `fk_orderInvID` (`fk_orderInvID`);

--
-- Indizes für die Tabelle `logindata`
--
ALTER TABLE `logindata`
  ADD PRIMARY KEY (`loginID`);

--
-- Indizes für die Tabelle `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderID`),
  ADD KEY `fk_productID` (`fk_productID`),
  ADD KEY `fk_payMethod` (`fk_payMethod`),
  ADD KEY `fk_customerID` (`fk_customerID`),
  ADD KEY `fk_customerID_2` (`fk_customerID`);

--
-- Indizes für die Tabelle `payment_method`
--
ALTER TABLE `payment_method`
  ADD PRIMARY KEY (`payMethodID`);

--
-- Indizes für die Tabelle `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productID`),
  ADD KEY `fk_beerID` (`fk_beerID`);

--
-- Indizes für die Tabelle `shipping`
--
ALTER TABLE `shipping`
  ADD PRIMARY KEY (`shippingID`),
  ADD KEY `fk_carrierID` (`fk_carrierID`),
  ADD KEY `fk_orderShiID` (`fk_orderShiID`);

--
-- Indizes für die Tabelle `zipcode`
--
ALTER TABLE `zipcode`
  ADD PRIMARY KEY (`zipCode`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `beer`
--
ALTER TABLE `beer`
  MODIFY `beerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT für Tabelle `beer_type`
--
ALTER TABLE `beer_type`
  MODIFY `beerTypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT für Tabelle `brewery`
--
ALTER TABLE `brewery`
  MODIFY `breweryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT für Tabelle `carrier`
--
ALTER TABLE `carrier`
  MODIFY `carrierID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT für Tabelle `customer`
--
ALTER TABLE `customer`
  MODIFY `customerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT für Tabelle `customer_address`
--
ALTER TABLE `customer_address`
  MODIFY `custAddressID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT für Tabelle `invoice`
--
ALTER TABLE `invoice`
  MODIFY `invoiceID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT für Tabelle `logindata`
--
ALTER TABLE `logindata`
  MODIFY `loginID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT für Tabelle `orders`
--
ALTER TABLE `orders`
  MODIFY `orderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT für Tabelle `payment_method`
--
ALTER TABLE `payment_method`
  MODIFY `payMethodID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT für Tabelle `product`
--
ALTER TABLE `product`
  MODIFY `productID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT für Tabelle `shipping`
--
ALTER TABLE `shipping`
  MODIFY `shippingID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `beer`
--
ALTER TABLE `beer`
  ADD CONSTRAINT `fk_beerType` FOREIGN KEY (`fk_beerType`) REFERENCES `beer_type` (`beerTypeID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_breweryID` FOREIGN KEY (`fk_breweryID`) REFERENCES `brewery` (`breweryID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints der Tabelle `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `fk_custAddressID` FOREIGN KEY (`fk_custAddress`) REFERENCES `customer_address` (`custAddressID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints der Tabelle `customer_address`
--
ALTER TABLE `customer_address`
  ADD CONSTRAINT `fk_zipCode` FOREIGN KEY (`fk_zipCode`) REFERENCES `zipcode` (`zipCode`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints der Tabelle `invoice`
--
ALTER TABLE `invoice`
  ADD CONSTRAINT `fk_orderInvID` FOREIGN KEY (`fk_orderInvID`) REFERENCES `orders` (`orderID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints der Tabelle `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `fk_payMethod` FOREIGN KEY (`fk_payMethod`) REFERENCES `payment_method` (`payMethodID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_productID` FOREIGN KEY (`fk_productID`) REFERENCES `product` (`productID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`fk_customerID`) REFERENCES `customer` (`customerID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints der Tabelle `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `fk_beerID` FOREIGN KEY (`fk_beerID`) REFERENCES `beer` (`beerID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints der Tabelle `shipping`
--
ALTER TABLE `shipping`
  ADD CONSTRAINT `fk_carrierID` FOREIGN KEY (`fk_carrierID`) REFERENCES `carrier` (`carrierID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_orderShiID` FOREIGN KEY (`fk_orderShiID`) REFERENCES `orders` (`orderID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
