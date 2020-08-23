-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : db
-- Généré le : Dim 23 août 2020 à 15:37
-- Version du serveur :  5.7.31
-- Version de PHP : 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `esync`
--

-- --------------------------------------------------------

--
-- Structure de la table `esync_alarmshistory`
--

CREATE TABLE `esync_alarmshistory` (
  `TagId` int(11) NOT NULL DEFAULT '0',
  `StationId` int(11) NOT NULL DEFAULT '0',
  `_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Status` int(11) NOT NULL DEFAULT '0',
  `Type` int(11) NOT NULL DEFAULT '0',
  `UserAck` varchar(50) DEFAULT NULL,
  `Description` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `esync_alarmshistory`
--

INSERT INTO `esync_alarmshistory` (`TagId`, `StationId`, `_date`, `Status`, `Type`, `UserAck`, `Description`) VALUES
(164, 5, '2017-12-21 15:01:33', 2, 3, '', ''),
(164, 5, '2017-12-21 15:02:55', 4, 0, '', ''),
(164, 5, '2017-12-21 15:02:56', 2, 3, '', '');

-- --------------------------------------------------------

--
-- Structure de la table `esync_alarmstatus`
--

CREATE TABLE `esync_alarmstatus` (
  `Val` int(11) NOT NULL DEFAULT '0',
  `Name` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `esync_alarmstatus`
--

INSERT INTO `esync_alarmstatus` (`Val`, `Name`) VALUES
(0, ''),
(1, 'PreTrigger'),
(2, 'ALM'),
(3, 'ACK'),
(4, 'RTN'),
(5, 'END');

-- --------------------------------------------------------

--
-- Structure de la table `esync_alarmtypes`
--

CREATE TABLE `esync_alarmtypes` (
  `Val` int(11) NOT NULL DEFAULT '0',
  `Name` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `esync_alarmtypes`
--

INSERT INTO `esync_alarmtypes` (`Val`, `Name`) VALUES
(0, ''),
(1, 'High'),
(2, 'Low'),
(3, 'Level'),
(4, 'HiHi'),
(5, 'LoLo');

-- --------------------------------------------------------

--
-- Structure de la table `esync_certificates`
--

CREATE TABLE `esync_certificates` (
  `CommonName` varchar(100) NOT NULL DEFAULT '',
  `Certificate` text NOT NULL,
  `PVK` text NOT NULL,
  `Type` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Type of object that holds the certificate : 0=eWON 1=User',
  `Id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'User Id or eWON Id (according to Type)',
  `IP` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'VPN IP Address of ''object''  when it is connected. (0 if not connected)',
  `ConnectedSince` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Timestamp of current connection (0 if not connected)',
  `RemappedCommonName` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Contains certificates and live VPN conection info about the ';

-- --------------------------------------------------------

--
-- Structure de la table `esync_connectionshistory`
--

CREATE TABLE `esync_connectionshistory` (
  `CommonName` varchar(100) NOT NULL DEFAULT '',
  `Id` int(11) NOT NULL DEFAULT '0',
  `Type` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `Event` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `IP` int(11) NOT NULL DEFAULT '0',
  `_Time` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='History of VPN connections';

--
-- Déchargement des données de la table `esync_connectionshistory`
--

INSERT INTO `esync_connectionshistory` (`CommonName`, `Id`, `Type`, `Event`, `IP`, `_Time`) VALUES
('eWON', 3, 0, 3, -1062731495, 1513336932),
('eWON', 3, 0, 3, -1062731495, 1513336940),
('eWON', 3, 0, 3, -1062731495, 1513337060),
('eWON', 3, 0, 3, -1062731495, 1513337180),
('eWON', 3, 0, 3, -1062731495, 1513337301),
('eWON', 3, 0, 3, -1062731495, 1513337421),
('eWON', 3, 0, 3, -1062731495, 1513337542),
('eWON', 3, 0, 3, -1062731495, 1513337662),
('eWON', 3, 0, 3, -1062731495, 1513337782),
('eWON', 3, 0, 3, -1062731495, 1513337903),
('eWON', 3, 0, 3, -1062731495, 1513338023),
('eWON', 3, 0, 3, -1062731495, 1513338144),
('eWON', 3, 0, 3, -1062731495, 1513338264),
('eWON', 3, 0, 3, -1062731495, 1513338385),
('eWON', 3, 0, 3, -1062731495, 1513338505),
('Groupe3', 6, 0, 3, -1062720081, 1513860010),
('Groupe3', 6, 0, 3, -1062720081, 1513860071),
('Groupe3', 6, 0, 3, -1062720081, 1513860132),
('Groupe2', 5, 0, 3, -1062720065, 1513860183),
('Groupe3', 6, 0, 3, -1062720081, 1513860192),
('Groupe2', 5, 0, 3, -1062720065, 1513860244),
('Groupe3', 6, 0, 3, -1062720081, 1513860253),
('Groupe2', 5, 0, 3, -1062720065, 1513860305),
('Groupe3', 6, 0, 3, -1062720081, 1513860314),
('Groupe2', 5, 0, 3, -1062720065, 1513860366),
('Groupe3', 6, 0, 3, -1062720081, 1513860375),
('Groupe2', 5, 0, 3, -1062720065, 1513860428),
('Groupe3', 6, 0, 3, -1062720081, 1513860436),
('Groupe2', 5, 0, 3, -1062720065, 1513860489),
('Groupe3', 6, 0, 3, -1062720081, 1513860496),
('Groupe3', 6, 0, 3, -1062720081, 1513860557),
('Groupe2', 5, 0, 3, -1062720065, 1513860601),
('Groupe3', 6, 0, 3, -1062720081, 1513860618),
('Groupe2', 5, 0, 3, -1062720065, 1513860662),
('Groupe3', 6, 0, 3, -1062720081, 1513860679),
('Groupe2', 5, 0, 3, -1062720065, 1513860723),
('Groupe3', 6, 0, 3, -1062720081, 1513860740),
('Groupe2', 5, 0, 3, -1062720065, 1513860784),
('Groupe3', 6, 0, 3, -1062720081, 1513860800),
('Groupe2', 5, 0, 3, -1062720065, 1513860846),
('Groupe3', 6, 0, 3, -1062720081, 1513860862),
('Groupe2', 5, 0, 3, -1062720065, 1513860907),
('Groupe3', 6, 0, 3, -1062720081, 1513860922),
('Groupe2', 5, 0, 3, -1062720065, 1513860969),
('Groupe3', 6, 0, 3, -1062720081, 1513860983),
('Groupe2', 5, 0, 3, -1062720065, 1513861030),
('Groupe3', 6, 0, 3, -1062720081, 1513861044),
('Groupe2', 5, 0, 3, -1062720065, 1513861091),
('Groupe3', 6, 0, 3, -1062720081, 1513861105),
('Groupe2', 5, 0, 3, -1062720065, 1513861153),
('Groupe3', 6, 0, 3, -1062720081, 1513861166),
('Groupe2', 5, 0, 3, -1062720065, 1513861214),
('Groupe3', 6, 0, 3, -1062720081, 1513861227),
('Groupe2', 5, 0, 3, -1062720065, 1513861275),
('Groupe3', 6, 0, 3, -1062720081, 1513861287),
('Groupe2', 5, 0, 3, -1062720065, 1513861336),
('Groupe3', 6, 0, 3, -1062720081, 1513861348),
('Groupe2', 5, 0, 3, -1062720065, 1513861397),
('Groupe3', 6, 0, 3, -1062720081, 1513861409),
('Groupe2', 5, 0, 3, -1062720065, 1513861458),
('Groupe3', 6, 0, 3, -1062720081, 1513861470),
('Groupe2', 5, 0, 3, -1062720065, 1513861520),
('Groupe3', 6, 0, 3, -1062720081, 1513861531),
('Groupe2', 5, 0, 3, -1062720065, 1513861581),
('Groupe3', 6, 0, 3, -1062720081, 1513861591),
('Groupe2', 5, 0, 3, -1062720065, 1513861642),
('Groupe3', 6, 0, 3, -1062720081, 1513861652),
('Groupe2', 5, 0, 3, -1062720065, 1513861703),
('Groupe3', 6, 0, 3, -1062720081, 1513861713),
('Groupe2', 5, 0, 3, -1062720065, 1513861764),
('Groupe3', 6, 0, 3, -1062720081, 1513861773),
('Groupe2', 5, 0, 3, -1062720065, 1513861826),
('Groupe3', 6, 0, 3, -1062720081, 1513861834),
('Groupe2', 5, 0, 3, -1062720065, 1513861887),
('Groupe3', 6, 0, 3, -1062720081, 1513861895),
('Groupe2', 5, 0, 3, -1062720065, 1513861948),
('Groupe3', 6, 0, 3, -1062720081, 1513861956),
('Groupe2', 5, 0, 3, -1062720065, 1513862009),
('Groupe3', 6, 0, 3, -1062720081, 1513862016),
('Groupe2', 5, 0, 3, -1062720065, 1513862070),
('Groupe3', 6, 0, 3, -1062720081, 1513862077),
('Groupe2', 5, 0, 3, -1062720065, 1513862132),
('Groupe3', 6, 0, 3, -1062720081, 1513862150),
('Groupe2', 5, 0, 3, -1062720065, 1513862193),
('Groupe3', 6, 0, 3, -1062720081, 1513862211),
('Groupe2', 5, 0, 3, -1062720065, 1513862254),
('Groupe3', 6, 0, 3, -1062720081, 1513862272),
('Groupe2', 5, 0, 3, -1062720065, 1513862315),
('Groupe3', 6, 0, 3, -1062720081, 1513862333),
('Groupe2', 5, 0, 3, -1062720065, 1513862376),
('Groupe3', 6, 0, 3, -1062720081, 1513862395),
('Groupe2', 5, 0, 3, -1062720065, 1513862438),
('Groupe2', 5, 0, 3, -1062720065, 1513862500),
('Groupe2', 5, 0, 3, -1062720065, 1513862562),
('Groupe2', 5, 0, 3, -1062720065, 1513862625),
('Groupe3', 6, 0, 3, -1062720081, 1513862643),
('Groupe2', 5, 0, 3, -1062720065, 1513862686),
('Groupe2', 5, 0, 3, -1062720065, 1513862747),
('Groupe2', 5, 0, 3, -1062720065, 1513862809),
('Groupe2', 5, 0, 3, -1062720065, 1513862870),
('Groupe3', 6, 0, 3, -1062720081, 1513862891),
('Groupe2', 5, 0, 3, -1062720065, 1513862931),
('Groupe3', 6, 0, 3, -1062720081, 1513862952),
('Groupe2', 5, 0, 3, -1062720065, 1513862992),
('Groupe3', 6, 0, 3, -1062720081, 1513863012),
('Groupe2', 5, 0, 3, -1062720065, 1513863053),
('Groupe3', 6, 0, 3, -1062720081, 1513863073),
('Groupe2', 5, 0, 3, -1062720065, 1513863115),
('Groupe3', 6, 0, 3, -1062720081, 1513863138),
('Groupe2', 5, 0, 3, -1062720065, 1513863176),
('Groupe3', 6, 0, 3, -1062720081, 1513863204),
('Groupe2', 5, 0, 3, -1062720065, 1513863238),
('Groupe3', 6, 0, 3, -1062720081, 1513863268),
('Groupe2', 5, 0, 3, -1062720065, 1513863300),
('Groupe3', 6, 0, 3, -1062720081, 1513863331),
('Groupe2', 5, 0, 3, -1062720065, 1513863363),
('Groupe3', 6, 0, 3, -1062720081, 1513863398),
('Groupe2', 5, 0, 3, -1062720065, 1513863425),
('Groupe2', 5, 0, 3, -1062720065, 1513863486),
('Groupe3', 6, 0, 3, -1062720081, 1513863520),
('Groupe2', 5, 0, 3, -1062720065, 1513863548),
('Groupe3', 6, 0, 3, -1062720081, 1513863581),
('Groupe2', 5, 0, 3, -1062720065, 1513863609),
('Groupe3', 6, 0, 3, -1062720081, 1513863641),
('Groupe2', 5, 0, 3, -1062720065, 1513863671),
('Groupe3', 6, 0, 3, -1062720081, 1513863702),
('Groupe2', 5, 0, 3, -1062720065, 1513863732),
('Groupe3', 6, 0, 3, -1062720081, 1513863763),
('Groupe2', 5, 0, 3, -1062720065, 1513863793),
('Groupe3', 6, 0, 3, -1062720081, 1513863824),
('Groupe2', 5, 0, 3, -1062720065, 1513863854),
('Groupe3', 6, 0, 3, -1062720081, 1513863885),
('Groupe2', 5, 0, 3, -1062720065, 1513863916),
('Groupe2', 5, 0, 3, -1062720065, 1513863977),
('Groupe3', 6, 0, 3, -1062720081, 1513864006),
('Groupe2', 5, 0, 3, -1062720065, 1513864038),
('Groupe3', 6, 0, 3, -1062720081, 1513864067),
('Groupe2', 5, 0, 3, -1062720065, 1513864100),
('Groupe3', 6, 0, 3, -1062720081, 1513864127),
('Groupe2', 5, 0, 3, -1062720065, 1513864161),
('Groupe3', 6, 0, 3, -1062720081, 1513864188),
('Groupe2', 5, 0, 3, -1062720065, 1513864222),
('Groupe3', 6, 0, 3, -1062720081, 1513864249),
('Groupe2', 5, 0, 3, -1062720065, 1513864283),
('Groupe2', 5, 0, 3, -1062720065, 1513864344),
('Groupe3', 6, 0, 3, -1062720081, 1513864370),
('Groupe2', 5, 0, 3, -1062720065, 1513864405),
('Groupe3', 6, 0, 3, -1062720081, 1513864431),
('Groupe2', 5, 0, 3, -1062720065, 1513864466),
('Groupe3', 6, 0, 3, -1062720081, 1513864492),
('Groupe2', 5, 0, 3, -1062720065, 1513864527),
('Groupe3', 6, 0, 3, -1062720081, 1513864552),
('Groupe2', 5, 0, 3, -1062720065, 1513864588),
('Groupe3', 6, 0, 3, -1062720081, 1513864613),
('Groupe2', 5, 0, 3, -1062720065, 1513864650),
('Groupe3', 6, 0, 3, -1062720081, 1513864674),
('Groupe2', 5, 0, 3, -1062720065, 1513864711),
('Groupe2', 5, 0, 3, -1062720065, 1513864772),
('Groupe3', 6, 0, 3, -1062720081, 1513864795),
('Groupe2', 5, 0, 3, -1062720065, 1513864833),
('Groupe3', 6, 0, 3, -1062720081, 1513864856),
('Groupe2', 5, 0, 3, -1062720065, 1513864894),
('Groupe3', 6, 0, 3, -1062720081, 1513864917),
('Groupe2', 5, 0, 3, -1062720065, 1513864955),
('Groupe3', 6, 0, 3, -1062720081, 1513864978),
('Groupe2', 5, 0, 3, -1062720065, 1513865016),
('Groupe3', 6, 0, 3, -1062720081, 1513865039),
('Groupe2', 5, 0, 3, -1062720065, 1513865077),
('Groupe3', 6, 0, 3, -1062720081, 1513865099),
('Groupe2', 5, 0, 3, -1062720065, 1513865139),
('Groupe3', 6, 0, 3, -1062720081, 1513865160),
('Groupe2', 5, 0, 3, -1062720065, 1513865200),
('Groupe3', 6, 0, 3, -1062720081, 1513865221),
('Groupe2', 5, 0, 3, -1062720065, 1513865261),
('Groupe3', 6, 0, 3, -1062720081, 1513865282),
('Groupe2', 5, 0, 3, -1062720065, 1513865322),
('Groupe3', 6, 0, 3, -1062720081, 1513865343),
('Groupe2', 5, 0, 3, -1062720065, 1513865383),
('Groupe3', 6, 0, 3, -1062720081, 1513865404),
('Groupe2', 5, 0, 3, -1062720065, 1513865444),
('Groupe3', 6, 0, 3, -1062720081, 1513865465),
('Groupe2', 5, 0, 3, -1062720065, 1513865505),
('Groupe2', 5, 0, 3, -1062720065, 1513865566),
('Groupe3', 6, 0, 3, -1062720081, 1513865586),
('Groupe2', 5, 0, 3, -1062720065, 1513865627),
('Groupe2', 5, 0, 3, -1062720065, 1513865687),
('Groupe2', 5, 0, 3, -1062720065, 1513865748),
('Groupe2', 5, 0, 3, -1062720065, 1513865809),
('Groupe3', 6, 0, 3, -1062720081, 1513865856),
('Groupe2', 5, 0, 3, -1062720065, 1513865870),
('Groupe3', 6, 0, 3, -1062720081, 1513865917),
('Groupe2', 5, 0, 3, -1062720065, 1513865931),
('Groupe2', 5, 0, 3, -1062720065, 1513865992),
('Groupe3', 6, 0, 3, -1062720081, 1513866041),
('Groupe2', 5, 0, 3, -1062720065, 1513866053),
('Groupe3', 6, 0, 3, -1062720081, 1513866102),
('Groupe2', 5, 0, 3, -1062720065, 1513866114),
('Groupe3', 6, 0, 3, -1062720081, 1513866163),
('Groupe2', 5, 0, 3, -1062720065, 1513866175),
('Groupe3', 6, 0, 3, -1062720081, 1513866224),
('Groupe2', 5, 0, 3, -1062720065, 1513866235),
('Groupe3', 6, 0, 3, -1062720081, 1513866285),
('Groupe2', 5, 0, 3, -1062720065, 1513866296),
('Groupe3', 6, 0, 3, -1062720081, 1513866346),
('Groupe2', 5, 0, 3, -1062720065, 1513866357),
('Groupe3', 6, 0, 3, -1062720081, 1513866407),
('Groupe2', 5, 0, 3, -1062720065, 1513866418),
('Groupe3', 6, 0, 3, -1062720081, 1513866468),
('Groupe2', 5, 0, 3, -1062720065, 1513866479),
('Groupe3', 6, 0, 3, -1062720081, 1513866529),
('Groupe2', 5, 0, 3, -1062720065, 1513866540),
('Groupe3', 6, 0, 3, -1062720081, 1513866590),
('Groupe2', 5, 0, 3, -1062720065, 1513866601),
('Groupe3', 6, 0, 3, -1062720081, 1513866664),
('Groupe2', 5, 0, 3, -1062720065, 1513866665),
('Groupe3', 6, 0, 3, -1062720081, 1513866725),
('Groupe2', 5, 0, 3, -1062720065, 1513866725),
('Groupe1', 4, 0, 3, -1062720073, 1513866773),
('Groupe3', 6, 0, 3, -1062720081, 1513866786),
('Groupe2', 5, 0, 3, -1062720065, 1513866786),
('Groupe1', 4, 0, 3, -1062720073, 1513866834),
('Groupe3', 6, 0, 3, -1062720081, 1513866847),
('Groupe2', 5, 0, 3, -1062720065, 1513866847),
('Groupe1', 4, 0, 3, -1062720073, 1513866894),
('Groupe3', 6, 0, 3, -1062720081, 1513866908),
('Groupe2', 5, 0, 3, -1062720065, 1513866908),
('Groupe1', 4, 0, 3, -1062720073, 1513866955),
('Groupe2', 5, 0, 3, -1062720065, 1513866968),
('Groupe3', 6, 0, 3, -1062720081, 1513866969),
('Groupe1', 4, 0, 3, -1062720073, 1513867015),
('Groupe2', 5, 0, 3, -1062720065, 1513867029),
('Groupe3', 6, 0, 3, -1062720081, 1513867033),
('Groupe1', 4, 0, 3, -1062720073, 1513867076),
('Groupe2', 5, 0, 3, -1062720065, 1513867090),
('Groupe3', 6, 0, 3, -1062720081, 1513867094),
('Groupe1', 4, 0, 3, -1062720073, 1513867137),
('Groupe2', 5, 0, 3, -1062720065, 1513867151),
('Groupe1', 4, 0, 3, -1062720073, 1513867197),
('Groupe2', 5, 0, 3, -1062720065, 1513867211),
('Groupe3', 6, 0, 3, -1062720081, 1513867215),
('Groupe1', 4, 0, 3, -1062720073, 1513867258),
('Groupe2', 5, 0, 3, -1062720065, 1513867272),
('Groupe1', 4, 0, 3, -1062720073, 1513867319),
('Groupe2', 5, 0, 3, -1062720065, 1513867333),
('Groupe3', 6, 0, 3, -1062720081, 1513867336),
('Groupe1', 4, 0, 3, -1062720073, 1513867379),
('Groupe2', 5, 0, 3, -1062720065, 1513867393),
('Groupe3', 6, 0, 3, -1062720081, 1513867398),
('Groupe1', 4, 0, 3, -1062720073, 1513867440),
('Groupe2', 5, 0, 3, -1062720065, 1513867454),
('Groupe3', 6, 0, 3, -1062720081, 1513867462),
('Groupe1', 4, 0, 3, -1062720073, 1513867501),
('Groupe2', 5, 0, 3, -1062720065, 1513867515),
('Groupe3', 6, 0, 3, -1062720081, 1513867523),
('Groupe1', 4, 0, 3, -1062720073, 1513867561),
('Groupe2', 5, 0, 3, -1062720065, 1513867576),
('Groupe3', 6, 0, 3, -1062720081, 1513867584),
('Groupe1', 4, 0, 3, -1062720073, 1513867622),
('Groupe2', 5, 0, 3, -1062720065, 1513867636),
('Groupe3', 6, 0, 3, -1062720081, 1513867645),
('Groupe1', 4, 0, 3, -1062720073, 1513867683),
('Groupe2', 5, 0, 3, -1062720065, 1513867698),
('Groupe3', 6, 0, 3, -1062720081, 1513867706),
('Groupe1', 4, 0, 3, -1062720073, 1513867743),
('Groupe2', 5, 0, 3, -1062720065, 1513867759),
('Groupe3', 6, 0, 3, -1062720081, 1513867767),
('Groupe1', 4, 0, 3, -1062720073, 1513867804),
('Groupe2', 5, 0, 3, -1062720065, 1513867824),
('Groupe3', 6, 0, 3, -1062720081, 1513867828),
('Groupe1', 4, 0, 3, -1062720073, 1513867865),
('Groupe2', 5, 0, 3, -1062720065, 1513867884),
('Groupe3', 6, 0, 3, -1062720081, 1513867889),
('Groupe2', 5, 0, 3, -1062720065, 1513867945),
('Groupe3', 6, 0, 3, -1062720081, 1513867950),
('Groupe2', 5, 0, 3, -1062720065, 1513868006),
('Groupe3', 6, 0, 3, -1062720081, 1513868011);

-- --------------------------------------------------------

--
-- Structure de la table `esync_connectiontypes`
--

CREATE TABLE `esync_connectiontypes` (
  `Val` int(11) NOT NULL DEFAULT '0',
  `Name` varchar(45) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `esync_connectiontypes`
--

INSERT INTO `esync_connectiontypes` (`Val`, `Name`) VALUES
(0, 'Unknown'),
(1, 'Permanent'),
(2, 'Switched'),
(5, 'ADSL'),
(9, 'GPRS'),
(13, 'LAN'),
(18, 'PSTN'),
(22, 'GSM');

-- --------------------------------------------------------

--
-- Structure de la table `esync_folders`
--

CREATE TABLE `esync_folders` (
  `Id` int(11) NOT NULL,
  `Name` varchar(45) NOT NULL DEFAULT '',
  `Parent` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `esync_globals`
--

CREATE TABLE `esync_globals` (
  `dummyid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `IPFilter` int(11) NOT NULL DEFAULT '0',
  `IPAddress` int(11) NOT NULL DEFAULT '0',
  `SubnetMask` int(11) NOT NULL DEFAULT '-256' COMMENT 'default val = 255.255.255.0',
  `Hostname` varchar(100) NOT NULL DEFAULT '',
  `VpnServerIp` int(11) NOT NULL DEFAULT '168296449' COMMENT 'default val = 10.8.0.1',
  `VpnDhcpSubnetMask` int(11) NOT NULL DEFAULT '-32768' COMMENT 'default val = 255.255.128.0',
  `VpnStaticIpSubnet` int(11) NOT NULL DEFAULT '168329216' COMMENT 'default val = 10.8.128.0',
  `VpnStaticSubnetMask` int(11) NOT NULL DEFAULT '-32768' COMMENT 'default val = 255.255.128.0',
  `VpnLanIpSubnet` int(11) NOT NULL DEFAULT '168361984' COMMENT 'default val = 10.9.0.0',
  `VpnLanSubnetMask` int(11) NOT NULL DEFAULT '-65536' COMMENT 'default val = 255.255.0.0',
  `Company` varchar(100) NOT NULL DEFAULT '-',
  `Country` varchar(45) NOT NULL DEFAULT '-',
  `Province` varchar(45) NOT NULL DEFAULT '-',
  `City` varchar(45) NOT NULL DEFAULT '-',
  `VpnPort` int(10) UNSIGNED NOT NULL DEFAULT '1194',
  `KeepAlive` int(10) UNSIGNED NOT NULL DEFAULT '40',
  `KeepAliveGprs` int(10) UNSIGNED NOT NULL DEFAULT '120',
  `TimestampFormat` varchar(30) NOT NULL DEFAULT 'd/m/Y H:i:s',
  `DefaultSynchroPassword` varchar(45) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Global settings';

--
-- Déchargement des données de la table `esync_globals`
--

INSERT INTO `esync_globals` (`dummyid`, `IPFilter`, `IPAddress`, `SubnetMask`, `Hostname`, `VpnServerIp`, `VpnDhcpSubnetMask`, `VpnStaticIpSubnet`, `VpnStaticSubnetMask`, `VpnLanIpSubnet`, `VpnLanSubnetMask`, `Company`, `Country`, `Province`, `City`, `VpnPort`, `KeepAlive`, `KeepAliveGprs`, `TimestampFormat`, `DefaultSynchroPassword`) VALUES
(0, 0, 0, -256, '', 168296449, -32768, 168329216, -32768, 168361984, -65536, '-', '-', '-', '-', 1194, 40, 120, 'd/m/Y H:i:s', 'main01');

-- --------------------------------------------------------

--
-- Structure de la table `esync_guids`
--

CREATE TABLE `esync_guids` (
  `guid` varchar(40) NOT NULL DEFAULT '',
  `StationId` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `esync_guids`
--

INSERT INTO `esync_guids` (`guid`, `StationId`) VALUES
('2289302e31333830', 3),
('2750302e37393239', 6),
('6849302e39383132', 5),
('3884302e36333038', 4);

-- --------------------------------------------------------

--
-- Structure de la table `esync_livealarms`
--

CREATE TABLE `esync_livealarms` (
  `TagId` int(11) NOT NULL DEFAULT '0',
  `StationId` int(11) NOT NULL DEFAULT '0',
  `AlarmTime` datetime DEFAULT NULL,
  `AlarmStatus` int(11) DEFAULT NULL,
  `AlarmType` int(11) DEFAULT NULL,
  `StatusTime` datetime DEFAULT NULL,
  `UserAck` varchar(50) DEFAULT NULL,
  `Description` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `esync_quality`
--

CREATE TABLE `esync_quality` (
  `Val` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `Name` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `esync_quality`
--

INSERT INTO `esync_quality` (`Val`, `Name`) VALUES
(0, 'Bad'),
(1, 'Good'),
(2, 'Initial');

-- --------------------------------------------------------

--
-- Structure de la table `esync_revocations`
--

CREATE TABLE `esync_revocations` (
  `CommonName` varchar(100) NOT NULL DEFAULT '',
  `_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Certificate` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='List of revoked certificates';

-- --------------------------------------------------------

--
-- Structure de la table `esync_stations`
--

CREATE TABLE `esync_stations` (
  `Id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL DEFAULT '',
  `ModBusId` int(11) NOT NULL DEFAULT '0',
  `Description` varchar(100) DEFAULT '0',
  `HTTime` int(11) NOT NULL DEFAULT '0',
  `HTMsec` int(11) NOT NULL DEFAULT '0',
  `HTIntrasec` int(11) NOT NULL DEFAULT '0',
  `HATime` int(11) NOT NULL DEFAULT '0',
  `CrcConfig` int(11) NOT NULL DEFAULT '0',
  `EVTime` int(11) NOT NULL DEFAULT '-1',
  `Appointment` int(11) NOT NULL DEFAULT '0',
  `IP` varchar(15) NOT NULL DEFAULT '0.0.0.0',
  `SN` varchar(12) NOT NULL DEFAULT '0000-0000-00',
  `Suspend` tinyint(4) NOT NULL DEFAULT '0',
  `HostName` varchar(45) NOT NULL DEFAULT '',
  `ConnectionType` int(11) NOT NULL DEFAULT '0',
  `Path` varchar(100) NOT NULL DEFAULT '',
  `Info` text NOT NULL,
  `Password` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `Folder` int(11) NOT NULL DEFAULT '-1',
  `eWonLogin` varchar(45) NOT NULL DEFAULT 'adm',
  `eWonPassword` varchar(45) NOT NULL DEFAULT 'adm',
  `VpnIP` int(11) NOT NULL DEFAULT '0' COMMENT 'Static VPN IP. 0 means DHCP.',
  `LanIP` int(11) NOT NULL DEFAULT '0' COMMENT 'IP on LAN interface of eWON (Optional). Used to create routes to LAN over VPN.',
  `LanSubnet` int(11) NOT NULL DEFAULT '0' COMMENT 'Subnet mask on LAN interface of eWON (Optional). Used to create routes to LAN over VPN.',
  `LastSynchro` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `esync_stations`
--

INSERT INTO `esync_stations` (`Id`, `Name`, `ModBusId`, `Description`, `HTTime`, `HTMsec`, `HTIntrasec`, `HATime`, `CrcConfig`, `EVTime`, `Appointment`, `IP`, `SN`, `Suspend`, `HostName`, `ConnectionType`, `Path`, `Info`, `Password`, `Folder`, `eWonLogin`, `eWonPassword`, `VpnIP`, `LanIP`, `LanSubnet`, `LastSynchro`) VALUES
(3, 'eWON', 100, '', 0, 0, 0, 0, 23545, -1, 0, '192.168.1.25', '1716-0403-21', 0, '', 0, '', '', 'main01', -1, 'adm', 'adm', 0, -1, -1, 1513338505),
(4, 'Groupe1', 0, '1709-0140-21', 0, 0, 0, 0, -1, -1, 0, '0.0.0.0', '1709-0140-21', 0, '', 0, '', '', 'main01', -1, 'adm', 'adm', 0, -1, -1, 0),
(5, 'Groupe2', 100, '', 0, 0, 0, 1513864976, 11244, -1, 0, '192.168.45.191', '1710-0129-21', 0, '', 0, '', '', 'main01', -1, 'adm', 'adm', 0, -1, -1, 1513866296),
(6, 'Groupe3', 100, '', 0, 0, 0, 1513851094, 20084, -1, 0, '192.168.45.175', '1709-0137-21', 0, '', 0, '', 'Ewon groupe 3', 'main01', -1, 'adm', 'adm', 0, -1, -1, 1513866285);

-- --------------------------------------------------------

--
-- Structure de la table `esync_tagpages`
--

CREATE TABLE `esync_tagpages` (
  `StationId` int(11) NOT NULL DEFAULT '0',
  `PageId` int(11) NOT NULL DEFAULT '0',
  `PageName` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='List the name of each tags page in each station';

--
-- Déchargement des données de la table `esync_tagpages`
--

INSERT INTO `esync_tagpages` (`StationId`, `PageId`, `PageName`) VALUES
(3, 1, 'Par défaut'),
(3, 2, 'Système'),
(5, 1, 'Par défaut'),
(5, 2, 'Système'),
(6, 1, 'Par défaut'),
(6, 2, 'Système');

-- --------------------------------------------------------

--
-- Structure de la table `esync_tags`
--

CREATE TABLE `esync_tags` (
  `Id` int(11) NOT NULL,
  `StationId` int(11) NOT NULL DEFAULT '-1',
  `eWONTagId` int(11) NOT NULL DEFAULT '-1',
  `Name` varchar(50) NOT NULL DEFAULT '',
  `Description` varchar(50) NOT NULL DEFAULT '',
  `Val` double NOT NULL DEFAULT '0',
  `AlarmStatus` int(11) NOT NULL DEFAULT '0',
  `AlarmType` int(11) NOT NULL DEFAULT '0',
  `AlarmHint` text NOT NULL,
  `Quality` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `Page` int(11) NOT NULL DEFAULT '0',
  `Type` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `ReadOnly` tinyint(3) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `esync_tags`
--

INSERT INTO `esync_tags` (`Id`, `StationId`, `eWONTagId`, `Name`, `Description`, `Val`, `AlarmStatus`, `AlarmType`, `AlarmHint`, `Quality`, `Page`, `Type`, `ReadOnly`) VALUES
(1, 3, 1, 'INT', '', 0, 0, 0, '', 192, 1, 2, 0),
(2, 3, 2, 'Boolean', '', 0, 0, 0, '', 24, 1, 0, 0),
(3, 3, 3, 'virguleFlottante', '', 0, 0, 0, '', 192, 1, 1, 0),
(4, 3, 4, 'DWORD', '', 0, 0, 0, '', 192, 1, 3, 0),
(5, 6, 4, 'Z5_colonne_lumineuse', '', 0, 0, 0, '', 192, 1, 0, 0),
(6, 6, 46, 'Z6_colonne_lumineuse', '/', 0, 0, 0, '', 192, 1, 0, 0),
(7, 6, 48, 'Z5_def_sec_op_omron', '/', 1, 0, 0, '', 192, 1, 0, 0),
(8, 6, 49, 'Z5_Bp_acqui_defaut', '/', 0, 0, 0, '', 192, 1, 0, 0),
(9, 6, 50, 'Z5_Rtc_général', '/', 1, 0, 0, '', 192, 1, 0, 0),
(10, 6, 51, 'Z5_Sel_Standar', '/', 1, 0, 0, '', 192, 1, 0, 0),
(11, 6, 52, 'Z5_Sel_maintenance', '/', 0, 0, 0, '', 192, 1, 0, 0),
(12, 6, 53, 'Z5_Defaut_Bloquant', '/', 0, 0, 0, '', 192, 1, 0, 0),
(13, 6, 54, 'Z5_Defaut_Non_Bloquant', '/', 0, 0, 0, '', 192, 1, 0, 0),
(14, 6, 55, 'Z5_Defaut_General', '/', 0, 0, 0, '', 192, 1, 0, 0),
(15, 6, 60, 'Z5_Defaut_Variateur_Reseau', '/', 0, 0, 0, '', 192, 1, 0, 0),
(16, 6, 61, 'Z5_Defaut_Variateur', '/', 0, 0, 0, '', 192, 1, 0, 0),
(17, 6, 62, 'Z5_Defaut_Secop', '/', 0, 0, 0, '', 192, 1, 0, 0),
(18, 6, 63, 'Z5_Defaut_Disc_Verin_Bras_1', '/', 0, 0, 0, '', 192, 1, 0, 0),
(19, 6, 64, 'Z5_Defaut_Disc_Verin_Bras_2', '/', 0, 0, 0, '', 192, 1, 0, 0),
(20, 6, 65, 'Z5_Defaut_Disc_Verin_Bras_3', '/', 0, 0, 0, '', 192, 1, 0, 0),
(21, 6, 66, 'Z5_Defaut_Cohe_Verin_Bras_1', '/', 0, 0, 0, '', 192, 1, 0, 0),
(22, 6, 67, 'Z5_Defaut_Cohe_Verin_Bras_2', '/', 0, 0, 0, '', 192, 1, 0, 0),
(23, 6, 68, 'Z5_Defaut_Cohe_Verin_Bras_3', '/', 0, 0, 0, '', 192, 1, 0, 0),
(24, 6, 69, 'Z5_Defaut_Disc_Verin_Hori', '/', 0, 0, 0, '', 192, 1, 0, 0),
(25, 6, 70, 'Z5_Defaut_Disc_Verin_vert', '/', 0, 0, 0, '', 192, 1, 0, 0),
(26, 6, 71, 'Z5_Defaut_Cohe_Verin_Hori', '/', 0, 0, 0, '', 192, 1, 0, 0),
(27, 6, 72, 'Z5_Defaut_Cohe_Verin_Vert', '/', 0, 0, 0, '', 192, 1, 0, 0),
(28, 6, 73, 'Z5_Defaut_Au', '/', 0, 0, 0, '', 192, 1, 0, 0),
(29, 6, 76, 'Z5_voyant_rouge', '/', 0, 0, 0, '', 192, 1, 0, 0),
(30, 6, 77, 'Z5_voyant_orange', '/', 1, 0, 0, '', 192, 1, 0, 0),
(31, 6, 78, 'Z5_voyant_vert', '/', 0, 0, 0, '', 192, 1, 0, 0),
(32, 6, 79, 'Z5_voyant_en_service', '/', 1, 0, 0, '', 192, 1, 0, 0),
(33, 6, 80, 'Z5_Gyrophare_Maintenance', '/', 0, 0, 0, '', 192, 1, 0, 0),
(34, 6, 81, 'Z5_Autor_Mise_Ser_Cont_gen', '/', 1, 0, 0, '', 192, 1, 0, 0),
(35, 6, 82, 'Z5_Bypass_cpt_Omron', '/', 0, 0, 0, '', 192, 1, 0, 0),
(36, 6, 83, 'Z5_Descendre_chariot', '/', 0, 0, 0, '', 192, 1, 0, 0),
(37, 6, 84, 'Z5_EV_Vide', '/', 0, 0, 0, '', 192, 1, 0, 0),
(38, 6, 85, 'Z5_EV_Plus_Vide', '/', 1, 0, 0, '', 192, 1, 0, 0),
(39, 6, 86, 'Z6_M_moteur_presse_hmi', '/', 0, 0, 0, '', 192, 1, 0, 0),
(40, 6, 87, 'Z6_var_born_1', '/', 0, 0, 0, '', 192, 1, 0, 0),
(41, 6, 88, 'Z6_var_born_2', '/', 0, 0, 0, '', 192, 1, 0, 0),
(42, 6, 89, 'Z6_var_born_3', '/', 1, 0, 0, '', 192, 1, 0, 0),
(43, 6, 90, 'Z6_var_born_4', '/', 0, 0, 0, '', 192, 1, 0, 0),
(44, 6, 91, 'Z6_var_born_5', '/', 1, 0, 0, '', 192, 1, 0, 0),
(45, 6, 92, 'Z6_distributeur_air_hmi', '/', 0, 0, 0, '', 192, 1, 0, 0),
(46, 6, 93, 'Z6_Autorisation_service', '/', 1, 0, 0, '', 192, 1, 0, 0),
(47, 6, 94, 'Z6_voyant_service', '/', 1, 0, 0, '', 192, 1, 0, 0),
(48, 6, 95, 'Z6_colonne_vert', '/', 0, 0, 0, '', 192, 1, 0, 0),
(49, 6, 96, 'Z6_colonne_orange', '/', 1, 0, 0, '', 192, 1, 0, 0),
(50, 6, 97, 'Z6_colonne_rouge', '/', 0, 0, 0, '', 192, 1, 0, 0),
(51, 6, 98, 'Z6_colonne_bleu', '/', 0, 0, 0, '', 192, 1, 0, 0),
(52, 6, 99, 'Z6_EV_monter_machoire', '/', 0, 0, 0, '', 192, 1, 0, 0),
(53, 6, 100, 'Z6_fermer_pince', '/', 0, 0, 0, '', 192, 1, 0, 0),
(54, 6, 101, 'Z6_EV_ouvrir_pince', '/', 0, 0, 0, '', 192, 1, 0, 0),
(55, 6, 102, 'Z6_EV_soufflerie', '/', 0, 0, 0, '', 192, 1, 0, 0),
(56, 6, 103, 'Z6_defaut_prev_K', '/', 1, 0, 0, '', 192, 1, 0, 0),
(57, 6, 104, 'Z6_defaut_th_pompe', '/', 0, 0, 0, '', 192, 1, 0, 0),
(58, 6, 105, 'Z6_defaut_var_conv', '/', 0, 0, 0, '', 192, 1, 0, 0),
(59, 6, 106, 'Z6_selecteur_auto', '/', 0, 0, 0, '', 192, 1, 0, 0),
(60, 6, 107, 'Z6_selecteur_manu', '/', 0, 0, 0, '', 192, 1, 0, 0),
(61, 6, 108, 'Z6_rtc_m_pompe', '/', 0, 0, 0, '', 192, 1, 0, 0),
(62, 6, 109, 'Z6_selecteur_distance', '/', 0, 0, 0, '', 192, 1, 0, 0),
(63, 6, 110, 'Z6_Bp_test_lampe', '/', 0, 0, 0, '', 192, 1, 0, 0),
(64, 6, 111, 'Z6_rtc_general', '/', 1, 0, 0, '', 192, 1, 0, 0),
(65, 6, 112, 'Z6_bp_RAZ', '/', 0, 0, 0, '', 192, 1, 0, 0),
(66, 6, 113, 'Z6_selecteur_m_degradee', '/', 0, 0, 0, '', 192, 1, 0, 0),
(67, 6, 114, 'Z6_bp_marche_degradee', '/', 0, 0, 0, '', 192, 1, 0, 0),
(68, 6, 115, 'Z6_defaut_prev_fuse', '/', 1, 0, 0, '', 192, 1, 0, 0),
(69, 6, 116, 'Z6_Presse_bas_ASI_hmi', '/', 1, 0, 0, '', 192, 1, 0, 0),
(70, 6, 117, 'Z6_presence_capteur_p_b', '/', 1, 0, 0, '', 192, 1, 0, 0),
(71, 6, 118, 'Z6_Presse_milieu_ASI_hmi', '/', 0, 0, 0, '', 192, 1, 0, 0),
(72, 6, 119, 'Z6_presence_capteur_p_m', '/', 1, 0, 0, '', 192, 1, 0, 0),
(73, 6, 120, 'Z6_Presse_haut_ASI_hmi', '/', 0, 0, 0, '', 192, 1, 0, 0),
(74, 6, 121, 'Z6_presence_capteur_p_h', '/', 1, 0, 0, '', 192, 1, 0, 0),
(75, 6, 122, 'Z6_RTC_distrib', '/', 0, 0, 0, '', 192, 1, 0, 0),
(76, 6, 123, 'Z6_capteur_machoire_bas', '/', 0, 0, 0, '', 192, 1, 0, 0),
(77, 6, 124, 'Z6_capteur_machoire_ouverte', '/', 0, 0, 0, '', 192, 1, 0, 0),
(78, 6, 125, 'Z6_capteur_machoire_ferme', '/', 0, 0, 0, '', 192, 1, 0, 0),
(79, 6, 126, 'Z6_defaut_AU', '/', 0, 0, 0, '', 192, 1, 0, 0),
(80, 6, 127, 'Z6_defaut_bloq', '/', 0, 0, 0, '', 192, 1, 0, 0),
(81, 6, 128, 'Z6_defaut_capteur_presse', '/', 0, 0, 0, '', 192, 1, 0, 0),
(82, 6, 129, 'Z6_defaut_cohe_ma', '/', 0, 0, 0, '', 192, 1, 0, 0),
(83, 6, 130, 'Z6_defaut_cohe_pi', '/', 0, 0, 0, '', 192, 1, 0, 0),
(84, 6, 131, 'Z6_defaut_comparaison', '/', 0, 0, 0, '', 192, 1, 2, 0),
(85, 6, 132, 'Z6_defaut_disc_ma_bas', '/', 0, 0, 0, '', 192, 1, 0, 0),
(86, 6, 133, 'Z6_defaut_disc_ma_haut', '/', 0, 0, 0, '', 192, 1, 0, 0),
(87, 6, 134, 'Z6_defaut_disc_pi_fe', '/', 0, 0, 0, '', 192, 1, 0, 0),
(88, 6, 135, 'Z6_defaut_disc_pi_ou', '/', 0, 0, 0, '', 192, 1, 0, 0),
(89, 6, 136, 'Z6_defaut_disc_pres_bas', '/', 0, 0, 0, '', 192, 1, 0, 0),
(90, 6, 137, 'Z6_defaut_disc_pres_haut', '/', 0, 0, 0, '', 192, 1, 0, 0),
(91, 6, 138, 'Z6_defaut_disc_pres_milieu', '/', 0, 0, 0, '', 192, 1, 0, 0),
(92, 6, 139, 'Z6_defaut_disc_disj_pompe', '/', 0, 0, 0, '', 192, 1, 0, 0),
(93, 6, 140, 'Z6_defaut_disc_festo', '/', 0, 0, 0, '', 192, 1, 0, 0),
(94, 6, 141, 'Z6_defaut_general', '/', 0, 0, 0, '', 192, 1, 0, 0),
(95, 6, 142, 'Z6_defaut_nb_comparasion', '/', 0, 0, 0, '', 192, 1, 2, 0),
(96, 6, 143, 'Z6_defaut_non_bloq', '/', 0, 0, 0, '', 192, 1, 0, 0),
(97, 6, 144, 'Z6_defaut_permanent', '/', 0, 0, 0, '', 192, 1, 0, 0),
(98, 6, 145, 'Z6_defaut_preventa', '/', 0, 0, 0, '', 192, 1, 0, 0),
(99, 6, 146, 'Z6_defaut_rtc_pompe', '/', 0, 0, 0, '', 192, 1, 0, 0),
(100, 6, 147, 'Z6_defaut_var', '/', 0, 0, 0, '', 192, 1, 0, 0),
(101, 6, 148, 'Z6_m_conv_av_hmi', '/', 0, 0, 0, '', 192, 1, 0, 0),
(102, 6, 149, 'Z6_m_conv_ar_hmi', '/', 0, 0, 0, '', 192, 1, 0, 0),
(103, 6, 150, 'Z6_vitesse_conv_hmi', '/', 5, 0, 0, '', 192, 1, 2, 0),
(104, 6, 151, 'Z6_bp_ev_charge_hmi', '/', 0, 0, 0, '', 192, 1, 0, 0),
(105, 6, 152, 'Z6_bp_presse_milieu_hmi', '/', 0, 0, 0, '', 192, 1, 0, 0),
(106, 6, 153, 'Z6_bp_presse_haut_hmi', '/', 0, 0, 0, '', 192, 1, 0, 0),
(107, 6, 154, 'Z6_bp_presse_bas_hmi', '/', 0, 0, 0, '', 192, 1, 0, 0),
(108, 6, 300, 'Z5_AU', '/', 1, 0, 0, '', 192, 1, 0, 0),
(109, 6, 301, 'Z5_Bp_test_lampe', '/', 0, 0, 0, '', 192, 1, 0, 0),
(110, 6, 302, 'Z5_Bouton_tournant_clé', '/', 0, 0, 0, '', 192, 1, 0, 0),
(111, 6, 303, 'Z5_Capt_vide', '/', 0, 0, 0, '', 192, 1, 0, 0),
(112, 6, 304, 'Z5_capt_ch_haut', '/', 0, 0, 0, '', 192, 1, 0, 0),
(113, 6, 305, 'Z5_capt_ch_bas', '/', 1, 0, 0, '', 192, 1, 0, 0),
(114, 6, 306, 'Z5_capt_ch_avancé', '/', 0, 0, 0, '', 192, 1, 0, 0),
(115, 6, 307, 'Z5_capt_ch_reculé', '/', 1, 0, 0, '', 192, 1, 0, 0),
(116, 6, 308, 'Z5_capt_bras1_haut', '/', 1, 0, 0, '', 192, 1, 0, 0),
(117, 6, 309, 'Z5_capt_bras1_bas_hmi', '', 0, 0, 0, '', 192, 1, 0, 0),
(118, 6, 310, 'Z5_capt_bras2_haut', '/', 1, 0, 0, '', 192, 1, 0, 0),
(119, 6, 311, 'Z5_capt_bras2_bas', '/', 0, 0, 0, '', 192, 1, 0, 0),
(120, 6, 312, 'Z5_capt_bras3_haut', '/', 1, 0, 0, '', 192, 1, 0, 0),
(121, 6, 313, 'Z5_capt_bras3_bas', '/', 0, 0, 0, '', 192, 1, 0, 0),
(122, 6, 314, 'Z5_bp_descendre_bras', '/', 0, 0, 0, '', 192, 1, 0, 0),
(123, 6, 315, 'Z5_bp_monter_chariot', '/', 0, 0, 0, '', 192, 1, 0, 0),
(124, 6, 316, 'Z5_bp_descendre_chariot', '/', 0, 0, 0, '', 192, 1, 0, 0),
(125, 6, 317, 'Z5_bp_reculer_chariot', '/', 0, 0, 0, '', 192, 1, 0, 0),
(126, 6, 318, 'Z5_bp_avancer_chariot', '/', 0, 0, 0, '', 192, 1, 0, 0),
(127, 6, 319, 'Z5_bp_monter_bras', '/', 1, 0, 0, '', 192, 1, 0, 0),
(128, 6, 320, 'Z5_Bp_vide', '/', 0, 0, 0, '', 192, 1, 0, 0),
(129, 6, 321, 'Z5_bp_avancer_tapis', '/', 0, 0, 0, '', 192, 1, 0, 0),
(130, 6, 322, 'Z5_dde_mode_manuel', '/', 1, 0, 0, '', 192, 1, 0, 0),
(131, 6, 323, 'Z5_dde_mode_automatique', '/', 0, 0, 0, '', 192, 1, 0, 0),
(132, 6, 324, 'Z5_Dde_acqui_defaut', '/', 0, 0, 0, '', 192, 1, 0, 0),
(133, 6, 325, 'Z5_dde_mode_maintenance', '/', 0, 0, 0, '', 192, 1, 0, 0),
(134, 6, 326, 'Z5_dde_acy_local', '/', 1, 0, 0, '', 192, 1, 0, 0),
(135, 6, 327, 'Z5_dde_dcy_local', '/', 0, 0, 0, '', 192, 1, 0, 0),
(136, 6, 328, 'Z5_consigneconv', '/', 0, 0, 0, '', 192, 1, 2, 0),
(137, 6, 329, 'Z5_Ev1_monter_chariot', '/', 0, 0, 0, '', 192, 1, 0, 0),
(138, 6, 330, 'Z5_Ev2_avancer_chariot', '/', 0, 0, 0, '', 192, 1, 0, 0),
(139, 6, 331, 'Z5_Ev2_reculer_chariot', '/', 1, 0, 0, '', 192, 1, 0, 0),
(140, 6, 332, 'Z5_Ev3_descendre_bras', '/', 0, 0, 0, '', 192, 1, 0, 0),
(141, 6, 333, 'Z5_Ev3_monter_bras', '/', 1, 0, 0, '', 192, 1, 0, 0),
(142, 6, 374, 'Z5_Sel_auto', '/', 0, 0, 0, '', 192, 1, 0, 0),
(143, 6, 375, 'Z5_Sel_manu', '/', 0, 0, 0, '', 192, 1, 0, 0),
(144, 6, 376, 'Z5_Sel_Distance', '/', 0, 0, 0, '', 192, 1, 0, 0),
(145, 6, 377, 'Z6_EV_P_vanne_decharge', '/', 0, 0, 0, '', 192, 1, 0, 0),
(146, 6, 378, 'Z6_EV_P_descendre', '/', 0, 0, 0, '', 192, 1, 0, 0),
(147, 6, 379, 'Z6_EV_P_monter', '/', 0, 0, 0, '', 192, 1, 0, 0),
(148, 5, 1, 'VOY_VERT_Z4', '', 0, 0, 0, '', 192, 1, 0, 1),
(149, 5, 2, 'BP_TEST_LAMPE_Z4', 'boutton lampe', 0, 0, 0, '', 192, 1, 0, 0),
(150, 5, 3, 'ModeAuto_Z4', 'auto z4', 0, 0, 0, '', 192, 1, 0, 0),
(151, 5, 4, 'ArretUrgence_Z4', '', 1, 0, 0, '', 192, 1, 0, 0),
(152, 5, 5, 'DEF_MaquePression_Z4', '', 0, 0, 0, '', 192, 1, 0, 0),
(153, 5, 6, 'DEF_AU_Z4', '', 0, 0, 0, '', 192, 1, 0, 0),
(154, 5, 7, 'DEF_Bloquant_Z4', '', 0, 0, 0, '', 192, 1, 0, 0),
(155, 5, 8, 'DEF_COHE_PRESSHAUT_Z4', '', 0, 0, 0, '', 192, 1, 0, 0),
(156, 5, 9, 'DEF_GENERAL_Z4', '', 0, 0, 0, '', 192, 1, 0, 0),
(157, 5, 10, 'DEF_TENSION1_Z4', '', 1, 0, 0, '', 192, 1, 0, 0),
(158, 5, 11, 'DEF_PERMANENT_Z4', '', 0, 0, 0, '', 192, 1, 0, 0),
(159, 5, 12, 'RTC_GENERAL_Z4', 'retour du contacteur général', 0, 0, 0, '', 192, 1, 0, 0),
(160, 5, 13, 'SECU_GENERALEOK_Z4', '', 1, 0, 0, '', 192, 1, 0, 0),
(161, 5, 14, 'VOY_ENSERVICE_Z4', 'Voyant mise en service', 0, 0, 0, '', 192, 1, 0, 0),
(162, 5, 15, 'VOY_ORANGE_Z4', '', 0, 0, 0, '', 192, 1, 0, 0),
(163, 5, 16, 'VOY_ROUGE_Z4', '', 0, 0, 0, '', 192, 1, 0, 0),
(164, 5, 18, 'VOY_BLEU_Z4', '', 0, 2, 3, 'coucou', 192, 1, 0, 0),
(165, 5, 19, 'AFFICH_PRESSION_Z3', '', 0, 0, 0, '', 192, 1, 3, 0),
(166, 5, 20, 'ALARM_TEMPHAUTE_Z3', 'Alarme de temperature haute', 0, 0, 0, '', 192, 1, 0, 0),
(167, 5, 21, 'AU_Z3', '', 1, 0, 0, '', 192, 1, 0, 0),
(168, 5, 22, 'CPT_BAS_PRESSE_Z4', 'CAPTEUR BAS', 1, 0, 0, '', 192, 1, 0, 0),
(169, 5, 23, 'CPT_COUTEAU_RENTRE_1_Z4', '', 1, 0, 0, '', 192, 1, 0, 0),
(170, 5, 24, 'CPT_COUTEAU_RENTRE_2_Z4', '', 1, 0, 0, '', 192, 1, 0, 0),
(171, 5, 25, 'CPT_COUTEAU_RENTRE_3_Z4', '', 1, 0, 0, '', 192, 1, 0, 0),
(172, 5, 26, 'CPT_COUTEAU_SORTI_1_Z4', '', 0, 0, 0, '', 192, 1, 0, 0),
(173, 5, 27, 'CPT_COUTEAU_SORTI_2_Z4', '', 0, 0, 0, '', 192, 1, 0, 0),
(174, 5, 28, 'CPT_COUTEAU_SORTI_3_Z4', '', 0, 0, 0, '', 192, 1, 0, 0),
(175, 5, 29, 'CPT_ENCLUME_BAS1_Z4', '', 1, 0, 0, '', 192, 1, 0, 0),
(176, 5, 30, 'CPT_ENCLUME_BAS2_Z4', '', 1, 0, 0, '', 192, 1, 0, 0),
(177, 5, 31, 'CPT_ENCLUME_BAS3_Z4', '', 1, 0, 0, '', 192, 1, 0, 0),
(178, 5, 32, 'CPT_ENCLUME_HAUT1_Z4', '', 0, 0, 0, '', 192, 1, 0, 0),
(179, 5, 33, 'CPT_ENCLUME_HAUT2_Z4', '', 0, 0, 0, '', 192, 1, 0, 0),
(180, 5, 34, 'CPT_ENCLUME_HAUT3_Z4', '', 0, 0, 0, '', 192, 1, 0, 0),
(181, 5, 35, 'CPT_FC_V14_GAUCHE_Z4', '', 1, 0, 0, '', 192, 1, 0, 0),
(182, 5, 36, 'CPT_PICKUP_BAS1_Z4', '', 1, 0, 0, '', 192, 1, 0, 0),
(183, 5, 37, 'CPT_PICKUP_BAS2_Z4', '', 1, 0, 0, '', 192, 1, 0, 0),
(184, 5, 38, 'CPT_PICKUP_BAS3_Z4', '', 1, 0, 0, '', 192, 1, 0, 0),
(185, 5, 39, 'CPT_PICKUP_HAUT1_Z4', '', 0, 0, 0, '', 192, 1, 0, 0),
(186, 5, 40, 'CPT_PICKUP_HAUT2_Z4', '', 0, 0, 0, '', 192, 1, 0, 0),
(187, 5, 41, 'CPT_PICKUP_HAUT3_Z4', '', 0, 0, 0, '', 192, 1, 0, 0),
(188, 5, 42, 'CPT_PICKUP_RENTRE1_Z4', '', 0, 0, 0, '', 192, 1, 0, 0),
(189, 5, 43, 'CPT_PICKUP_RENTRE2_Z4', '', 0, 0, 0, '', 192, 1, 0, 0),
(190, 5, 44, 'CPT_PICKUP_RENTRE3_Z4', '', 0, 0, 0, '', 192, 1, 0, 0),
(191, 5, 45, 'CPT_PICKUP_SORTI_1_Z4', '', 1, 0, 0, '', 192, 1, 0, 0),
(192, 5, 46, 'CPT_PICKUP_SORTI_2_Z4', '', 1, 0, 0, '', 192, 1, 0, 0),
(193, 5, 47, 'CPT_PICKUP_SORTI_3_Z4', '', 1, 0, 0, '', 192, 1, 0, 0),
(194, 5, 48, 'CPT_PINCE_FIXE_OUVERT_Z4', '', 0, 0, 0, '', 192, 1, 0, 0),
(195, 5, 49, 'CPT_PINCE_MOBILE_DROIT_O_Z4', '', 1, 0, 0, '', 192, 1, 0, 0),
(196, 5, 50, 'CPT_PINCE_MOBILE_GAUCH_O_Z4', '', 1, 0, 0, '', 192, 1, 0, 0),
(197, 5, 51, 'CPT_POUSSOIR_BAS1_Z4', '', 0, 0, 0, '', 192, 1, 0, 0),
(198, 5, 52, 'CPT_POUSSOIR_BAS2_Z4', '', 0, 0, 0, '', 192, 1, 0, 0),
(199, 5, 53, 'CPT_POUSSOIR_BAS3_Z4', '', 0, 0, 0, '', 192, 1, 0, 0),
(200, 5, 54, 'CPT_POUSSOIR_HAUT1_Z4', '', 1, 0, 0, '', 192, 1, 0, 0),
(201, 5, 55, 'CPT_POUSSOIR_HAUT2_Z4', '', 1, 0, 0, '', 192, 1, 0, 0),
(202, 5, 56, 'CPT_POUSSOIR_HAUT3_Z4', '', 1, 0, 0, '', 192, 1, 0, 0),
(203, 5, 57, 'CPT_PRESSE_HAUT_Z4', '', 0, 0, 0, '', 192, 1, 0, 0),
(204, 5, 58, 'CPT_PRESSE_MILLIEU_Z4', '', 0, 0, 0, '', 192, 1, 0, 0),
(205, 5, 59, 'DEF_COHERENCE_BAS_Z3', '', 0, 0, 0, '', 192, 1, 0, 0),
(206, 5, 60, 'DEF_COHERENCE_HAUT_Z3', '', 0, 0, 0, '', 192, 1, 0, 0),
(207, 5, 61, 'DEF_COHERENCE_MILIEU_Z3', '', 0, 0, 0, '', 192, 1, 0, 0),
(208, 5, 62, 'DEF_DIS_BAS', '', 0, 0, 0, '', 192, 1, 0, 0),
(209, 5, 63, 'DEF_DIS_HAUT', '', 0, 0, 0, '', 192, 1, 0, 0),
(210, 5, 64, 'DEF_DIS_MILIEU', '', 0, 0, 0, '', 192, 1, 0, 0),
(211, 5, 65, 'DEF_ELECTRIQUE_REGLO_Z3', '', 0, 0, 0, '', 192, 1, 0, 0),
(212, 5, 66, 'DEF_FLASH_Z3', '', 0, 0, 0, '', 192, 1, 0, 0),
(213, 5, 67, 'DEF_MANQUE_PRESSION_Z3', '', 0, 0, 0, '', 192, 1, 0, 0),
(214, 5, 68, 'DEF_BARRIERE_Z3', '', 0, 0, 0, '', 192, 1, 0, 0),
(215, 5, 69, 'DEF_TERHMIQUE_POMPEHYDRA_Z3', '', 0, 0, 0, '', 192, 1, 0, 0),
(216, 5, 71, 'DEF_TERHMIQUE_POMPE_Z3', '', 1, 0, 0, '', 192, 1, 0, 0),
(217, 5, 72, 'DEF_AU_Z3', '', 0, 0, 0, '', 192, 1, 0, 0),
(218, 5, 73, 'DEF_Bloquant_Z3', '', 1, 0, 0, '', 192, 1, 0, 0),
(219, 5, 74, 'DEF_GENERAL_Z3', '', 1, 0, 0, '', 192, 1, 0, 0),
(220, 5, 75, 'DEF_NON_BLOQUANT_Z3', '', 0, 0, 0, '', 192, 1, 0, 0),
(221, 5, 76, 'DEF_PERMANENT_Z3', '', 1, 0, 0, '', 192, 1, 0, 0),
(222, 5, 77, 'VOY_ENSERVICE_Z3', '', 1, 0, 0, '', 192, 1, 0, 0),
(223, 5, 78, 'VOY_ROUGE_Z3', '', 1, 0, 0, '', 192, 1, 0, 0),
(224, 5, 79, 'VOY_ORANGE_Z3', '', 1, 0, 0, '', 192, 1, 0, 0),
(225, 5, 80, 'VOY_VERT_Z3', '', 0, 0, 0, '', 192, 1, 0, 0),
(226, 5, 81, 'MODE_MANU_Z3', '', 1, 0, 0, '', 192, 1, 0, 0),
(227, 5, 82, 'MODE_AUTO_Z3', '', 0, 0, 0, '', 192, 1, 0, 0),
(228, 5, 83, 'PINCE_3.1_BAS_Z3', '', 1, 0, 0, '', 192, 1, 0, 0),
(229, 5, 84, 'PINCE_3.1_HAUT_Z3', '', 0, 0, 0, '', 192, 1, 0, 0),
(230, 5, 85, 'PINCE_3.2_BAS_Z3', '', 1, 0, 0, '', 192, 1, 0, 0),
(231, 5, 86, 'PINCE_3.2_HAUT_Z3', '', 0, 0, 0, '', 192, 1, 0, 0),
(232, 5, 87, 'PINCE_3.3_BAS_Z3', '', 1, 0, 0, '', 192, 1, 0, 0),
(233, 5, 88, 'PINCE_3.3_HAUT_Z3', '', 0, 0, 0, '', 192, 1, 0, 0),
(234, 5, 89, 'PINCE_3.4_BAS_Z3', '', 1, 0, 0, '', 192, 1, 0, 0),
(235, 5, 90, 'PINCE_3.4_HAUT_Z3', '', 0, 0, 0, '', 192, 1, 0, 0),
(236, 5, 91, 'PINCE_3.5_BAS_Z3', '', 1, 0, 0, '', 192, 1, 0, 0),
(237, 5, 92, 'PINCE_3.5_HAUT_Z3', '', 0, 0, 0, '', 192, 1, 0, 0),
(238, 5, 93, 'PINCE_3.6_BAS_Z3', '', 1, 0, 0, '', 192, 1, 0, 0),
(239, 5, 94, 'PINCE_3.6_HAUT_Z3', '', 0, 0, 0, '', 192, 1, 0, 0),
(240, 5, 95, 'PINCE_4.1_BAS_Z4', '', 1, 0, 0, '', 192, 1, 0, 0),
(241, 5, 96, 'PINCE_4.1_HAUT_Z4', '', 0, 0, 0, '', 192, 1, 0, 0),
(242, 5, 97, 'PINCE_4.2_BAS_Z4', '', 1, 0, 0, '', 192, 1, 0, 0),
(243, 5, 98, 'PINCE_4.2_HAUT_Z4', '', 0, 0, 0, '', 192, 1, 0, 0),
(244, 5, 99, 'PINCE_4.3_BAS_Z4', '', 1, 0, 0, '', 192, 1, 0, 0),
(245, 5, 100, 'PINCE_4.3_HAUT_Z4', '', 0, 0, 0, '', 192, 1, 0, 0),
(246, 5, 101, 'ModeMaintenance_Z4', '', 0, 0, 0, '', 192, 1, 0, 0),
(247, 5, 102, 'MODE_MANU_Z4', '', 0, 0, 0, '', 192, 1, 0, 0),
(248, 5, 103, 'BP_Degrade', '', 0, 0, 0, '', 192, 1, 0, 0),
(249, 5, 104, 'BP_Degrade_Z3', '', 0, 0, 0, '', 192, 1, 0, 0),
(250, 5, 105, 'VOY_BLEU_Z3', '', 0, 0, 0, '', 192, 1, 0, 0),
(251, 5, 106, 'BP_TEST_LAMPE_Z3', '', 0, 0, 0, '', 192, 1, 0, 0),
(252, 5, 110, 'Mode_Local_Z3', '', 0, 0, 0, '', 192, 1, 0, 0),
(253, 5, 111, 'Mode_Degrade_Z3', '', 0, 0, 0, '', 192, 1, 0, 0),
(254, 5, 112, 'Mode_Local_Z4', '', 0, 0, 0, '', 192, 1, 0, 0),
(255, 5, 113, 'Mode_Degrade_Z4', '', 0, 0, 0, '', 192, 1, 0, 0),
(256, 5, 114, 'WAN_ON', 'Status of Ethernet connection', 0, 0, 0, '', 192, 1, 0, 0),
(257, 5, -1, 'wancnx', '', 0, 0, 0, '', 192, 1, 2, 1);

--
-- Déclencheurs `esync_tags`
--
DELIMITER $$
CREATE TRIGGER `esync_tags_AFTER_INSERT` AFTER INSERT ON `esync_tags` FOR EACH ROW BEGIN
	INSERT INTO symfony.tags SELECT esync.esync_tags.name, esync.esync_tags.Val FROM esync.esync_tags WHERE id = NEW.Id;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `esync_tags_AFTER_UPDATE` AFTER UPDATE ON `esync_tags` FOR EACH ROW BEGIN
	INSERT INTO symfony.tags SELECT esync.esync_tags.name, esync.esync_tags.Val FROM esync.esync_tags WHERE id = NEW.Id;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Structure de la table `esync_tagshistory`
--

CREATE TABLE `esync_tagshistory` (
  `TagId` int(11) NOT NULL DEFAULT '0',
  `_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `msec` smallint(6) NOT NULL DEFAULT '0',
  `Val` double NOT NULL DEFAULT '0',
  `Quality` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `esync_users`
--

CREATE TABLE `esync_users` (
  `Id` int(10) UNSIGNED NOT NULL,
  `Username` varchar(45) NOT NULL DEFAULT '',
  `Password` varchar(45) NOT NULL DEFAULT '',
  `FullName` varchar(100) NOT NULL DEFAULT '',
  `Information` text NOT NULL,
  `Rights` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `TimeStampFormat` varchar(30) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='users and passwords';

--
-- Déchargement des données de la table `esync_users`
--

INSERT INTO `esync_users` (`Id`, `Username`, `Password`, `FullName`, `Information`, `Rights`, `TimeStampFormat`) VALUES
(1, 'adm', 'adm', 'Admin', 'Default administrator. In production, this user should be deleted or its password should be modified.', 15, '');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `esync_alarmshistory`
--
ALTER TABLE `esync_alarmshistory`
  ADD UNIQUE KEY `UniqueEvents` (`TagId`,`StationId`,`_date`,`Status`,`Type`),
  ADD KEY `status_history_idx` (`Status`),
  ADD KEY `type_history_idx` (`Type`),
  ADD KEY `station_alarmshistory_idx` (`StationId`);

--
-- Index pour la table `esync_alarmstatus`
--
ALTER TABLE `esync_alarmstatus`
  ADD UNIQUE KEY `Val` (`Val`);

--
-- Index pour la table `esync_alarmtypes`
--
ALTER TABLE `esync_alarmtypes`
  ADD UNIQUE KEY `Val` (`Val`);

--
-- Index pour la table `esync_certificates`
--
ALTER TABLE `esync_certificates`
  ADD PRIMARY KEY (`CommonName`),
  ADD KEY `stationuser` (`Type`,`Id`);

--
-- Index pour la table `esync_connectionshistory`
--
ALTER TABLE `esync_connectionshistory`
  ADD KEY `type_time` (`Type`,`_Time`);

--
-- Index pour la table `esync_connectiontypes`
--
ALTER TABLE `esync_connectiontypes`
  ADD PRIMARY KEY (`Val`);

--
-- Index pour la table `esync_folders`
--
ALTER TABLE `esync_folders`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UniqueName` (`Name`,`Parent`);

--
-- Index pour la table `esync_globals`
--
ALTER TABLE `esync_globals`
  ADD PRIMARY KEY (`dummyid`);

--
-- Index pour la table `esync_guids`
--
ALTER TABLE `esync_guids`
  ADD KEY `station_guid_idx` (`StationId`);

--
-- Index pour la table `esync_livealarms`
--
ALTER TABLE `esync_livealarms`
  ADD UNIQUE KEY `OneAlarmPerTag` (`TagId`),
  ADD KEY `station` (`StationId`,`TagId`),
  ADD KEY `status_idx` (`AlarmStatus`),
  ADD KEY `type_idx` (`AlarmType`);

--
-- Index pour la table `esync_quality`
--
ALTER TABLE `esync_quality`
  ADD UNIQUE KEY `Val` (`Val`);

--
-- Index pour la table `esync_stations`
--
ALTER TABLE `esync_stations`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `name` (`Name`),
  ADD KEY `connectiontype_idx` (`ConnectionType`);

--
-- Index pour la table `esync_tagpages`
--
ALTER TABLE `esync_tagpages`
  ADD UNIQUE KEY `Unique` (`StationId`,`PageId`);

--
-- Index pour la table `esync_tags`
--
ALTER TABLE `esync_tags`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Quality` (`Quality`),
  ADD KEY `AlarmStatus` (`AlarmStatus`),
  ADD KEY `AlarmType` (`AlarmType`),
  ADD KEY `station` (`StationId`,`Name`),
  ADD KEY `tag_tagpage_idx` (`StationId`,`Page`);

--
-- Index pour la table `esync_tagshistory`
--
ALTER TABLE `esync_tagshistory`
  ADD UNIQUE KEY `TagsHistory` (`TagId`,`_date`,`msec`) USING HASH,
  ADD KEY `TagsHistoryDesc` (`TagId`,`_date`,`msec`),
  ADD KEY `TagHistoryAllTagsDesc` (`_date`,`msec`);

--
-- Index pour la table `esync_users`
--
ALTER TABLE `esync_users`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `esync_folders`
--
ALTER TABLE `esync_folders`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `esync_stations`
--
ALTER TABLE `esync_stations`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `esync_tags`
--
ALTER TABLE `esync_tags`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=258;

--
-- AUTO_INCREMENT pour la table `esync_users`
--
ALTER TABLE `esync_users`
  MODIFY `Id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `esync_alarmshistory`
--
ALTER TABLE `esync_alarmshistory`
  ADD CONSTRAINT `station_alarmshistory` FOREIGN KEY (`StationId`) REFERENCES `esync_stations` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `status_history` FOREIGN KEY (`Status`) REFERENCES `esync_alarmstatus` (`Val`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `tag_alarmshistory` FOREIGN KEY (`TagId`) REFERENCES `esync_tags` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `type_history` FOREIGN KEY (`Type`) REFERENCES `esync_alarmtypes` (`Val`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `esync_guids`
--
ALTER TABLE `esync_guids`
  ADD CONSTRAINT `station_guid` FOREIGN KEY (`StationId`) REFERENCES `esync_stations` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `esync_livealarms`
--
ALTER TABLE `esync_livealarms`
  ADD CONSTRAINT `station` FOREIGN KEY (`StationId`) REFERENCES `esync_stations` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `status` FOREIGN KEY (`AlarmStatus`) REFERENCES `esync_alarmstatus` (`Val`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `tag` FOREIGN KEY (`TagId`) REFERENCES `esync_tags` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `type` FOREIGN KEY (`AlarmType`) REFERENCES `esync_alarmtypes` (`Val`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `esync_stations`
--
ALTER TABLE `esync_stations`
  ADD CONSTRAINT `connectiontype` FOREIGN KEY (`ConnectionType`) REFERENCES `esync_connectiontypes` (`Val`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `esync_tagpages`
--
ALTER TABLE `esync_tagpages`
  ADD CONSTRAINT `station_tagpage` FOREIGN KEY (`StationId`) REFERENCES `esync_stations` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `esync_tags`
--
ALTER TABLE `esync_tags`
  ADD CONSTRAINT `tag_alarmstatus` FOREIGN KEY (`AlarmStatus`) REFERENCES `esync_alarmstatus` (`Val`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `tag_alarmtype` FOREIGN KEY (`AlarmType`) REFERENCES `esync_alarmtypes` (`Val`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `tag_station` FOREIGN KEY (`StationId`) REFERENCES `esync_stations` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tag_tagpage` FOREIGN KEY (`StationId`,`Page`) REFERENCES `esync_tagpages` (`StationId`, `PageId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `esync_tagshistory`
--
ALTER TABLE `esync_tagshistory`
  ADD CONSTRAINT `tag_history` FOREIGN KEY (`TagId`) REFERENCES `esync_tags` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
