-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 10, 2022 at 07:31 PM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cst-391-milestone`
--

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `GAME_ID` int(11) NOT NULL,
  `NAME` varchar(45) DEFAULT NULL,
  `DESCRIPTION` text,
  `PRICE` int(11) DEFAULT NULL,
  `PLATFORM` text,
  `TYPE` varchar(45) DEFAULT NULL,
  `COUNTRY` varchar(45) DEFAULT NULL,
  `VERSION` text,
  `KEY` char(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`GAME_ID`, `NAME`, `DESCRIPTION`, `PRICE`, `PLATFORM`, `TYPE`, `COUNTRY`, `VERSION`, `KEY`) VALUES
(1, 'Rust', 'Rust is in its 8th year and has now had over 300 content updates, with a guaranteed content patch every month. From regular balance fixes and improvements to AI and graphics updates to adding content like new maps, musical instruments, trains and drones, as well as regular seasons and events, there’s always something interesting or dangerous (or both) happening on the island.', 30, 'PlayStation 4, Xbox One, PC', 'PC Game', 'US', '1.58.1', '1726-HjfJ-3J6d'),
(2, 'Battlefield 2042', 'Battlefields changing before your eyes. A cutting-edge arsenal at your disposal. The grand return of all-out warfare. Adapt and overcome in massive-scale 128 player battles* where dynamic storms, environmental hazards, total combat freedom, and Battlefield\'s signature destruction spark a new breed of Only in Battlefield moments.', 60, 'PC, XBOX, PlayStation 5', 'First Person Shooter', 'US', '0.5.9', '0650-U7q5-u232'),
(4, 'EDDITTED NAME', '', 30, 'PlayStation 4, Xbox One, PC', 'PC Game', 'US', '1.58.1', ''),
(6, 'UPDATED GAME NAME', '', 30, 'PlayStation 4, Xbox One, PC', 'PC Game', 'US', '1.58.1', '1726-HjfJ-3J6d'),
(7, 'NEW GAME NAME', 'Some decription', 30, 'PlayStation 4, Xbox One, PC', 'PC Game', 'US', '1.58.1', '1726-HjfJ-3J6d'),
(8, 'NEW GAME NAME', 'Some decription', 30, 'PlayStation 4, Xbox One, PC', 'PC Game', 'US', '1.58.1', '1726-HjfJ-3J6d');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `ID` int(11) NOT NULL,
  `IMAGE` text NOT NULL,
  `GAME_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`ID`, `IMAGE`, `GAME_ID`) VALUES
(1, 'https://www.mobygames.com/images/covers/l/506609-rust-linux-front-cover.jpg', 1),
(2, 'https://cdn.cloudflare.steamstatic.com/steam/apps/1517290/capsule_616x353.jpg?t=1640018853', 2),
(3, 'https://cdn.cloudflare.steamstatic.com/steam/apps/1517290/capsule_616x353.jpg?t=1640018853', 2),
(4, 'https://cdn.vox-cdn.com/thumbor/tCmiNAoEtPy0Vp4DBduMY1uH7jQ=/0x0:3840x2160/1200x675/filters:focal(1784x881:2398x1495)/cdn.vox-cdn.com/uploads/chorus_image/image/69427997/RevealScreenshot_04_EpicScale_3840x2160_NoLogo.0.jpeg', 2),
(5, 'https://cdn.cloudflare.steamstatic.com/steam/apps/252490/ss_e825b087b95e51c3534383cfd75ad6e8038147c3.1920x1080.jpg?t=1643315258', 1),
(6, 'https://cdn.cloudflare.steamstatic.com/steam/apps/252490/ss_2a8518810024a5fbf9c714e697a43a1201b5d53e.1920x1080.jpg?t=1643315258', 1),
(7, 'https://www.mobygames.com/images/covers/l/506609-rust-linux-front-cover.jpg', 4),
(8, 'https://cdn.cloudflare.steamstatic.com/steam/apps/252490/ss_e825b087b95e51c3534383cfd75ad6e8038147c3.1920x1080.jpg?t=1643315258', 4),
(9, 'https://cdn.cloudflare.steamstatic.com/steam/apps/252490/ss_2a8518810024a5fbf9c714e697a43a1201b5d53e.1920x1080.jpg?t=1643315258', 4),
(13, 'https://www.mobygames.com/images/covers/l/506609-rust-linux-front-cover.jpg', 6),
(14, 'https://cdn.cloudflare.steamstatic.com/steam/apps/252490/ss_e825b087b95e51c3534383cfd75ad6e8038147c3.1920x1080.jpg?t=1643315258', 6),
(15, 'https://cdn.cloudflare.steamstatic.com/steam/apps/252490/ss_2a8518810024a5fbf9c714e697a43a1201b5d53e.1920x1080.jpg?t=1643315258', 6),
(16, 'https://www.mobygames.com/images/covers/l/506609-rust-linux-front-cover.jpg', 8),
(17, 'https://cdn.cloudflare.steamstatic.com/steam/apps/252490/ss_e825b087b95e51c3534383cfd75ad6e8038147c3.1920x1080.jpg?t=1643315258', 8),
(18, 'https://cdn.cloudflare.steamstatic.com/steam/apps/252490/ss_2a8518810024a5fbf9c714e697a43a1201b5d53e.1920x1080.jpg?t=1643315258', 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`GAME_ID`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `GAME_ID` (`GAME_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `games`
--
ALTER TABLE `games`
  MODIFY `GAME_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `GAME_ID` FOREIGN KEY (`GAME_ID`) REFERENCES `games` (`GAME_ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
