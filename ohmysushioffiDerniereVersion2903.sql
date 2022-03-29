-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 29 mars 2022 à 16:06
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ohmysushioffi`
--

-- --------------------------------------------------------

--
-- Structure de la table `accueilcrud`
--

DROP TABLE IF EXISTS `accueilcrud`;
CREATE TABLE IF NOT EXISTS `accueilcrud` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(250) NOT NULL,
  `texte` varchar(250) NOT NULL,
  `image` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `actualites`
--

DROP TABLE IF EXISTS `actualites`;
CREATE TABLE IF NOT EXISTS `actualites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(250) DEFAULT NULL,
  `id_category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_category` (`id_category`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `actualites`
--

INSERT INTO `actualites` (`id`, `name`, `description`, `image`, `id_category`) VALUES
(2, 'ss', '<p>ssss</p>', '618a4fa670155.jfif', 2),
(6, 'vvvv', '<p>vvvvv</p>', '618a4fcc4029a.jpg', 6),
(7, 'Titre de bg la ', 'salut ca va ? ', '621fa081d2b4a.jfif', 7);

-- --------------------------------------------------------

--
-- Structure de la table `actucategory`
--

DROP TABLE IF EXISTS `actucategory`;
CREATE TABLE IF NOT EXISTS `actucategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `actucategory`
--

INSERT INTO `actucategory` (`id`, `label`) VALUES
(2, 'nh'),
(6, 'f'),
(7, 'c'),
(8, 'Rg');

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `username` varchar(250) NOT NULL,
  `company` varchar(50) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`id`, `name`, `username`, `company`, `email`, `password`) VALUES
(1, 'ozipekgbgb', 'Mounir', 'Oh My Sushi', 'ozipek.mu@gmail.com', '$2y$10$bK5vKFWbvSWnodAQUFwxaOvEwDXUzF2KMYzoQ6/rBoV.UmlIKwAZG');

-- --------------------------------------------------------

--
-- Structure de la table `adress`
--

DROP TABLE IF EXISTS `adress`;
CREATE TABLE IF NOT EXISTS `adress` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `company` varchar(250) DEFAULT NULL,
  `address` varchar(250) NOT NULL,
  `postal` int(11) NOT NULL,
  `city` varchar(250) NOT NULL,
  `country` varchar(250) NOT NULL DEFAULT 'France',
  `phone` varchar(250) NOT NULL,
  `priorite` varchar(20) DEFAULT NULL,
  `id_users` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `adress_users_FK` (`id_users`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `adress`
--

INSERT INTO `adress` (`id`, `name`, `company`, `address`, `postal`, `city`, `country`, `phone`, `priorite`, `id_users`) VALUES
(12, 'Maison', '', '13 rue Ernest Sarloutte', 54700, 'Pont-à-Mousson', 'France', '+33665190433', 'principal', 7);

-- --------------------------------------------------------

--
-- Structure de la table `bg`
--

DROP TABLE IF EXISTS `bg`;
CREATE TABLE IF NOT EXISTS `bg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bg` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `label`) VALUES
(4, 'Starter'),
(5, 'Sashimi'),
(6, 'Plats cuisinés'),
(7, 'Brochettes'),
(8, 'Poké bowl'),
(9, 'Cousti Roll / 6 pcs'),
(11, 'Maki / 6 pcs'),
(12, 'California Roll / 6 pcs'),
(13, 'Spring Roll / 6pcs'),
(14, 'Egg Roll / 6pcs'),
(15, 'White Roll / 6pcs'),
(16, 'Sushi / 2pcs'),
(17, 'Boissons'),
(18, 'Desserts');

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `billingadress` text NOT NULL,
  `deliveryadress` text NOT NULL,
  `methodelivraison` varchar(250) DEFAULT NULL,
  `heureLivraison` varchar(250) DEFAULT NULL,
  `note` text,
  `status` varchar(250) NOT NULL DEFAULT 'Attente',
  `id_users` int(11) NOT NULL,
  `id_promo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_users_FK` (`id_users`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `orders`
--

INSERT INTO `orders` (`id`, `orderdate`, `billingadress`, `deliveryadress`, `methodelivraison`, `heureLivraison`, `note`, `status`, `id_users`, `id_promo`) VALUES
(50, '2022-03-09 13:02:58', 'Maison : 13 rue Ernest Sarloutte 54700 Pont-à-Mousson', 'Maison : 13 rue Ernest Sarloutte 54700 Pont-à-Mousson', 'livraison', '17:00', NULL, 'Attente', 7, 2),
(51, '2022-03-09 13:08:57', 'Maison : 13 rue Ernest Sarloutte 54700 Pont-à-Mousson', 'Maison : 13 rue Ernest Sarloutte 54700 Pont-à-Mousson', 'emporter', '13:10', NULL, 'Préparation', 7, 2),
(52, '2022-03-09 15:13:10', 'Maison : 13 rue Ernest Sarloutte 54700 Pont-à-Mousson', 'Maison : 13 rue Ernest Sarloutte 54700 Pont-à-Mousson', 'emporter', '16:30', NULL, 'Attente', 7, NULL),
(53, '2022-03-29 17:55:01', 'Maison : 13 rue Ernest Sarloutte 54700 Pont-à-Mousson', 'Maison : 13 rue Ernest Sarloutte 54700 Pont-à-Mousson', '<br />\r\n<font size=\'1\'><table class=\'xdebug-error xe-notice\' dir=\'ltr\' border=\'1\' cellspacing=\'0\' cellpadding=\'1\'>\r\n<tr><th align=\'left\' bgcolor=\'#f57900\' colspan=', '16:55', NULL, 'Attente', 7, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `orderslines`
--

DROP TABLE IF EXISTS `orderslines`;
CREATE TABLE IF NOT EXISTS `orderslines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `quantityproducts` varchar(250) NOT NULL,
  `price` varchar(250) NOT NULL,
  `id_products` int(11) NOT NULL,
  `id_orders` int(11) DEFAULT NULL,
  `nem` int(11) DEFAULT NULL,
  `wasabi` int(11) DEFAULT NULL,
  `sale` int(11) DEFAULT NULL,
  `sucre` int(11) DEFAULT NULL,
  `gingembre` int(11) DEFAULT NULL,
  `couvert` int(11) DEFAULT NULL,
  `baguette` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orderslines_products_FK` (`id_products`),
  KEY `orderslines_orders0_FK` (`id_orders`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `orderslines`
--

INSERT INTO `orderslines` (`id`, `name`, `quantityproducts`, `price`, `id_products`, `id_orders`, `nem`, `wasabi`, `sale`, `sucre`, `gingembre`, `couvert`, `baguette`) VALUES
(55, 'test Image', '6', '33', 36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, 'produit de bg', '4', '12', 37, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 'test 3', '2', '88', 33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, 'test 3', '2', '88', 33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, 'test Image', '2', '33', 36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, 'test 3', '1', '88', 33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, 'test 3', '2', '88', 33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, 'test Image', '2', '33', 36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, 'test 3', '1', '88', 33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, 'test 3', '1', '88', 33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, 'test Image', '3', '33', 36, 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, 'test 3', '2', '88', 33, 51, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, 'test Image', '3', '33', 36, 52, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, 'test 3', '1', '88', 33, 53, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` text NOT NULL,
  `name` varchar(250) NOT NULL,
  `image` varchar(250) DEFAULT NULL,
  `price` varchar(20) NOT NULL,
  `id_category` int(11) NOT NULL,
  `id_tva` int(11) DEFAULT NULL,
  `stoc` varchar(250) DEFAULT 'enstock',
  `affichageCrud` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `products_category_FK` (`id_category`),
  KEY `products_tva0_FK` (`id_tva`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `description`, `name`, `image`, `price`, `id_category`, `id_tva`, `stoc`, `affichageCrud`) VALUES
(33, '', 'test 3', '621e677a2983b.jpg', '88', 4, 7, 'enstock', 0),
(36, 'test image du Mounir', 'test Image', '621e69b7e8941.jpg', '33', 4, 7, 'enstock', 0),
(39, 'ouaouaoauaou', 'uouoauaou', '6228b0846d5e0.jfif', '77', 6, 8, 'enstock', 0);

-- --------------------------------------------------------

--
-- Structure de la table `promo`
--

DROP TABLE IF EXISTS `promo`;
CREATE TABLE IF NOT EXISTS `promo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `duree` text,
  `date_promo` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `temps` varchar(250) NOT NULL DEFAULT 'MINUTE',
  `image` varchar(250) DEFAULT NULL,
  `text` text,
  `debut` datetime DEFAULT CURRENT_TIMESTAMP,
  `fin` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `recruitment`
--

DROP TABLE IF EXISTS `recruitment`;
CREATE TABLE IF NOT EXISTS `recruitment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(250) DEFAULT NULL,
  `category` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `recruitment`
--

INSERT INTO `recruitment` (`id`, `name`, `description`, `image`, `category`) VALUES
(3, 'c', 'zssccccc', NULL, 'Restaurent');

-- --------------------------------------------------------

--
-- Structure de la table `setting`
--

DROP TABLE IF EXISTS `setting`;
CREATE TABLE IF NOT EXISTS `setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `valeur` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `setting`
--

INSERT INTO `setting` (`id`, `valeur`) VALUES
(1, 'fermer');

-- --------------------------------------------------------

--
-- Structure de la table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `cle` varchar(250) NOT NULL,
  `valeur` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `settings`
--

INSERT INTO `settings` (`cle`, `valeur`) VALUES
('magasin', 'ouvert');

-- --------------------------------------------------------

--
-- Structure de la table `tva`
--

DROP TABLE IF EXISTS `tva`;
CREATE TABLE IF NOT EXISTS `tva` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rate` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `tva`
--

INSERT INTO `tva` (`id`, `rate`) VALUES
(7, '10.00'),
(8, '20.00');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lastname` varchar(250) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `lastname`, `firstname`, `email`, `password`) VALUES
(7, 'Ozipek', 'Muharrem', 'ozipek.mu@gmail.com', '$2y$10$Y/ZbnX1xPeSq.bH/xgO.yevGdqDpjPgfMr5.O43QFxKfnwDS/Iady');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `actualites`
--
ALTER TABLE `actualites`
  ADD CONSTRAINT `actualites_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `actucategory` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Contraintes pour la table `adress`
--
ALTER TABLE `adress`
  ADD CONSTRAINT `adress_users_FK` FOREIGN KEY (`id_users`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_users_FK` FOREIGN KEY (`id_users`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `orderslines`
--
ALTER TABLE `orderslines`
  ADD CONSTRAINT `orderslines_orders0_FK` FOREIGN KEY (`id_orders`) REFERENCES `orders` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Contraintes pour la table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_tva0_FK` FOREIGN KEY (`id_tva`) REFERENCES `tva` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
