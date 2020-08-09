-- phpMyAdmin SQL Dump
-- version 4.0.10.15
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Jeu 25 Mai 2017 à 14:50
-- Version du serveur: 5.5.55-0+deb7u1
-- Version de PHP: 5.4.45-0+deb7u8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `projet1617_49`
--

-- --------------------------------------------------------

--
-- Structure de la table `Consomme`
--

CREATE TABLE IF NOT EXISTS `Consomme` (
  `nombre_p` int(11) DEFAULT NULL,
  `ID_PRODUIT` int(11) NOT NULL,
  `ID_PANIER` int(11) NOT NULL,
  PRIMARY KEY (`ID_PRODUIT`,`ID_PANIER`),
  KEY `FK_Consomme_ID_PANIER` (`ID_PANIER`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `Jour`
--

CREATE TABLE IF NOT EXISTS `Jour` (
  `ID_JOUR` int(11) NOT NULL AUTO_INCREMENT,
  `date_jour` date DEFAULT NULL,
  PRIMARY KEY (`ID_JOUR`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `Panier`
--

CREATE TABLE IF NOT EXISTS `Panier` (
  `ID_PANIER` int(11) NOT NULL AUTO_INCREMENT,
  `statut` int(11) DEFAULT NULL,
  `ID_PERSONNE` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_PANIER`),
  KEY `FK_Panier_ID_PERSONNE` (`ID_PERSONNE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `Personne`
--

CREATE TABLE IF NOT EXISTS `Personne` (
  `ID_PERSONNE` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(25) DEFAULT NULL,
  `prenom` varchar(25) DEFAULT NULL,
  `adressemail` varchar(25) DEFAULT NULL,
  `motsdepasse` varchar(25) DEFAULT NULL,
  `droit` int(11) DEFAULT NULL,
  `abonnement` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID_PERSONNE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `Plage`
--

CREATE TABLE IF NOT EXISTS `Plage` (
  `ID_PLAGE` int(11) NOT NULL AUTO_INCREMENT,
  `heure_debut` varchar(128) DEFAULT NULL,
  `heure_fin` varchar(128) DEFAULT NULL,
  `ID_JOUR` int(11) NOT NULL,
  PRIMARY KEY (`ID_PLAGE`),
  KEY `FK_Plage_ID_JOUR` (`ID_JOUR`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `Produit`
--

CREATE TABLE IF NOT EXISTS `Produit` (
  `ID_PRODUIT` int(11) NOT NULL AUTO_INCREMENT,
  `nom_p` varchar(25) DEFAULT NULL,
  `description_p` text,
  `image_p` varchar(25) DEFAULT NULL,
  `prix_p` decimal(15,3) DEFAULT NULL,
  `type_p` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`ID_PRODUIT`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=82 ;

--
-- Contenu de la table `Produit`
--

INSERT INTO `Produit` (`ID_PRODUIT`, `nom_p`, `description_p`, `image_p`, `prix_p`, `type_p`) VALUES
(1, 'Sandwich Basquaise', 'Volaille, poivrons, tomates, champignons, oignons', 'SandwichColor', 2.400, '0'),
(2, 'Sandwich Comté', 'Comté, tomates', 'SandwichColor', 2.400, '0'),
(3, 'Sandwich Hamburger', 'Sauce hamburger, oignons, bœuf, tomates', 'SandwichColor', 2.400, '0'),
(4, 'Sandwich Liégeois', 'Brie, salade verte, ciboulette', 'SandwichColor', 2.400, '0'),
(5, 'Sandwich Light', 'radis, cantadou, carottes, concombres', 'SandwichColor', 2.400, '0'),
(6, 'Sandwich Montbéliard', 'cantadou, saucisse de Montbéliard, chou, carottes', 'SandwichColor', 2.400, '0'),
(7, 'Sandwich Normand', 'Vache qui rit, jambon cru, pommes de terre, pommes', 'SandwichColor', 2.400, '0'),
(8, 'Sandwich Occitan', ' œuf, salade verte, tomates', 'SandwichColor', 2.400, '0'),
(9, 'Sandwich Parisien', 'Beurre, cornichons, jambon blanc', 'SandwichColor', 2.400, '0'),
(10, 'Sandwich Mexicain', 'Tomates, volaille, épices mexicaines, haricots rouges, maïs', 'SandwichColor', 2.700, '0'),
(11, 'Grilladin', NULL, 'PaniniColor', 3.500, '1'),
(12, 'Panini Nutella', 'Nutella ', 'PaniniColor', 1.600, '1'),
(13, 'Panini 3 Fromages', 'Fromage à pizza, emmental, chèvre', 'PaniniColor', 2.400, '1'),
(14, 'Panini Auvergnat', 'Fromage à pizza, bleu de Bresse, jambon cru, tomates', 'PaniniColor', 2.400, '1'),
(15, 'Panini Bolognaise', 'Boeuf, oignons, sauce tomate, emmental, fromage à pizza', 'PaniniColor', 2.400, '1'),
(16, 'Panini Campagnard', 'Lardons, emmental, cantadou', 'PaniniColor', 2.400, '1'),
(17, 'Panini Carbonara', 'Lardons, oignons, crème fraîche, emmental', 'PaniniColor', 2.400, '1'),
(18, 'Panini Fermier', 'Volaille, emmental, fromage à pizza', 'PaniniColor', 2.400, '1'),
(19, 'Panini Fish', 'Tomates, poisson pané, fromage à pizza, emmental', 'PaniniColor', 2.400, '1'),
(20, 'Panini Indien', 'Volaille, tomates, mozzarella, emmental, curry, fromage à pizza', 'PaniniColor', 2.400, '1'),
(21, 'Yaourt aux fruits', NULL, 'Dessert', 0.800, '2'),
(22, 'Yaourt nature ou aromatis', NULL, 'Dessert', 0.700, '2'),
(23, 'Yaourt suisse ou à la gre', '', 'Dessert', 1.000, '2'),
(24, 'Yaourt gourmand', NULL, 'Dessert', 1.200, '2'),
(25, 'Compote de fruits', NULL, 'Dessert', 0.900, '2'),
(26, 'Mousse', NULL, 'Dessert', 1.000, '2'),
(27, 'Salade de fruits frais', NULL, 'Dessert', 1.200, '2'),
(28, 'Salade de fruits au sirop', NULL, 'Dessert', 1.000, '2'),
(29, 'Donut', NULL, 'Dessert', 1.200, '2'),
(30, 'Beignet fourré', NULL, 'Dessert', 1.200, '2'),
(57, 'Hot-dog', NULL, 'Autres', 2.300, '3'),
(58, 'Croque-monsieur', '', 'Autres', 2.300, '3'),
(59, 'Tarte salée', NULL, 'Autres', 2.300, '3'),
(60, 'Cheesburger', NULL, 'Autres', 2.700, '3'),
(61, 'Frites (100 grs)', NULL, 'Autres', 1.500, '3'),
(62, 'Frites (150 grs)', NULL, 'Autres', 2.000, '3'),
(63, 'Boîte à pâtes ou riz', NULL, 'Autres', 2.300, '3'),
(64, 'Pain', NULL, 'Autres', 0.400, '3'),
(65, 'Petit déjeuner 1', 'Boisson chaude, tartine ou croissant', 'Autres', 1.600, '3'),
(66, 'Petit déjeuner 2', 'Boisson chaude, tartine ou croissant, jus d’orange, yaourt ou fruit', 'Autres', 3.000, '3'),
(67, 'Salade fraîcheur - 350 ml', NULL, 'Salades', 1.800, '4'),
(68, 'Salade fraîcheur - 450 ml', NULL, 'Salades', 2.600, '4'),
(69, 'Salade fraîcheur - 750 ml', NULL, 'Salades', 2.900, '4'),
(70, 'Sauce supplémentaire', 'Pour accompagner votre grilladin : Ketchup, mayonnaise, barbecue, hamburger\r\n\r\nPour accompagner vos frites : Sauce mayonnaise uniquement', 'Sauces2', 0.500, '5'),
(71, 'Dosette ketchup ou mayonn', NULL, 'Sauces2', 0.100, '5'),
(72, 'Coca, Nestea… (33cl) ', NULL, 'Boisson', 1.200, '6'),
(73, 'Eau (50cl) ', NULL, 'Boisson', 0.700, '6'),
(74, 'Café expresso', NULL, 'Boisson', 0.600, '6'),
(75, 'Thé (Divers parfums)', NULL, 'Boisson', 0.900, '6'),
(76, 'Cappuccino', NULL, 'Boisson', 1.000, '6'),
(77, 'Chocolat chaud', NULL, 'Boisson', 1.000, '6'),
(78, 'Lait froid ou chaud', NULL, 'Boisson', 1.000, '6'),
(79, 'Jus d’orange pressée', NULL, 'Boisson', 1.200, '6'),
(80, 'Grand café', NULL, 'Boisson', 1.200, '6'),
(81, 'Café gourmand', NULL, 'Boisson', 1.300, '6');

-- --------------------------------------------------------

--
-- Structure de la table `Stock`
--

CREATE TABLE IF NOT EXISTS `Stock` (
  `ID_STOCK` int(11) NOT NULL AUTO_INCREMENT,
  `date_dispo` date DEFAULT NULL,
  `nombre_dispo` int(11) DEFAULT NULL,
  `ID_PRODUIT` int(11) NOT NULL,
  PRIMARY KEY (`ID_STOCK`),
  KEY `FK_Stock_ID_PRODUIT` (`ID_PRODUIT`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `Consomme`
--
ALTER TABLE `Consomme`
  ADD CONSTRAINT `FK_Consomme_ID_PANIER` FOREIGN KEY (`ID_PANIER`) REFERENCES `Panier` (`ID_PANIER`),
  ADD CONSTRAINT `FK_Consomme_ID_PRODUIT` FOREIGN KEY (`ID_PRODUIT`) REFERENCES `Produit` (`ID_PRODUIT`);

--
-- Contraintes pour la table `Panier`
--
ALTER TABLE `Panier`
  ADD CONSTRAINT `FK_Panier_ID_PERSONNE` FOREIGN KEY (`ID_PERSONNE`) REFERENCES `Personne` (`ID_PERSONNE`);

--
-- Contraintes pour la table `Plage`
--
ALTER TABLE `Plage`
  ADD CONSTRAINT `FK_Plage_ID_JOUR` FOREIGN KEY (`ID_JOUR`) REFERENCES `Jour` (`ID_JOUR`);

--
-- Contraintes pour la table `Stock`
--
ALTER TABLE `Stock`
  ADD CONSTRAINT `FK_Stock_ID_PRODUIT` FOREIGN KEY (`ID_PRODUIT`) REFERENCES `Produit` (`ID_PRODUIT`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
