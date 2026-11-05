-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  sam. 14 nov. 2020 à 18:19
-- Version du serveur :  5.7.24
-- Version de PHP :  7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `gestioncb`
--

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `clients`;
CREATE TABLE IF NOT EXISTS `clients` (
  `id` int(25) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `prenom` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `datenaissance` date NOT NULL,
  `adresse` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `tel` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `clients`
--

INSERT INTO `clients` (`id`, `nom`, `prenom`, `datenaissance`, `adresse`, `tel`) VALUES
(1, 'Sekma', 'Mounir', '1981-08-17', 'Kuweit', 25132413),
(3, 'Abidi', 'Mohamed Ali', '1983-03-01', 'Rades', 98412365),
(4, 'Meherzi', 'Jamel', '1978-06-14', 'Bizerte', 20149875),
(5, 'Hamdoun', 'Mariem', '1980-11-12', 'ISET Bizerte', 111111111);

-- --------------------------------------------------------

--
-- Structure de la table `compte`
--

DROP TABLE IF EXISTS `comptes`;
CREATE TABLE IF NOT EXISTS `comptes` (
  `id` bigint(15) NOT NULL AUTO_INCREMENT,
  `numcompte` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `codebank` int(11) NOT NULL,
  `codeguichet` int(11) NOT NULL,
  `clerib` int(11) NOT NULL,
  `titulaire` int(25) NOT NULL,
  `solde` double NOT NULL,
  `devise` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'TND',
  `datecreation` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=90383584189 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `comptes`
--

INSERT INTO `comptes` (`id`, `numcompte`, `codebank`, `codeguichet`, `clerib`, `titulaire`, `solde`, `devise`, `datecreation`) VALUES
(1, '53326429272', 92324, 68623, 39, 1849616396, 3620, 'TND', '18-5-2017'),
(2, '90383584188', 64892, 84319, 71, 587075625, 3705, 'TND', '18-5-2017');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
