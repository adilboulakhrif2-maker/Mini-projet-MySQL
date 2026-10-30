-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 30 oct. 2026 à 14:01
-- Version du serveur : 8.4.7
-- Version de PHP : 8.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `mediamarkt`
--

-- --------------------------------------------------------

--
-- Structure de la table `smartphones`
--

DROP TABLE IF EXISTS `smartphones`;
CREATE TABLE IF NOT EXISTS `smartphones` (
  `id_nomdelatable` int NOT NULL AUTO_INCREMENT,
  `nom_de_smartphone` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `marque_de_smartphone` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `date_de_sortie` date NOT NULL,
  PRIMARY KEY (`id_nomdelatable`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `smartphones`
--

INSERT INTO `smartphones` (`id_nomdelatable`, `nom_de_smartphone`, `marque_de_smartphone`, `date_de_sortie`) VALUES
(1, 'iPhone 15', 'Apple', '2023-09-22'),
(2, 'Galaxy S24', 'Samsung', '2024-01-31'),
(3, 'Pixel 8', 'Google', '2023-10-12');

-- --------------------------------------------------------

--
-- Structure de la table `tvs`
--

DROP TABLE IF EXISTS `tvs`;
CREATE TABLE IF NOT EXISTS `tvs` (
  `id_nomdelatable` int NOT NULL AUTO_INCREMENT,
  `nom_de_tv` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `marque_de_tv` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `taille` double(20,2) NOT NULL,
  PRIMARY KEY (`id_nomdelatable`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `tvs`
--

INSERT INTO `tvs` (`id_nomdelatable`, `nom_de_tv`, `marque_de_tv`, `taille`) VALUES
(1, 'Samsung Neo QLED', 'Samsung', 55.00),
(2, 'LG OLED55C45LA', 'LG', 55.00),
(3, 'Sony Bravia XR-65A80L', 'Sony', 65.00);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

DROP TABLE IF EXISTS `utilisateurs`;
CREATE TABLE IF NOT EXISTS `utilisateurs` (
  `id_nomdelatable` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `prenom` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `age` int NOT NULL,
  `date_de_naissance` date NOT NULL,
  `adresse` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_nomdelatable`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id_nomdelatable`, `nom`, `prenom`, `age`, `date_de_naissance`, `adresse`, `email`) VALUES
(1, 'Das', 'Melio', 26, '2000-03-14', 'Bruxelles', 'melio.das@gmail.com'),
(2, 'Liones', 'Elisabeth', 31, '1995-07-22', 'Anvers', 'elisa.liones@outlook.be'),
(3, 'Soara', 'Vlad', 19, '2006-12-18', 'Rusie', 'vlad.soara@gmail.com');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
