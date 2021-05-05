-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 05 mai 2021 à 13:37
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP : 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `apicirkwi`
--

-- --------------------------------------------------------

--
-- Structure de la table `pokemon`
--

CREATE TABLE `pokemon` (
  `id` int(11) NOT NULL,
  `nom` varchar(250) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `pokemon`
--

INSERT INTO `pokemon` (`id`, `nom`, `description`) VALUES
(1, 'Dracaufeu', 'Dracaufeu, connu au Japon sous le nom de Lizardon, est un Pokémon de la franchise Pokémon de Nintendo et Game Freak. Créé par Atsuko Nishida, Charizard est apparu pour la première fois dans les jeux vidéo Pokémon Rouge et Bleu et les suites suivantes.'),
(2, 'Pikachu', 'Pikachu est une espèce de Pokémon, une créature de fiction issue de la franchise médiatique Pokémon de Nintendo. Il est apparu la première fois au Japon en 1996, dans les jeux vidéo Pokémon Vert et Pokémon Rouge, créés par Satoshi Tajiri. '),
(3, 'Bulbizarre', 'Bulbizarre, connu sous le nom de Fushigidane au Japon, est le premier Pokémon du dicton de monstres de la franchise Pokémon de Nintendo et Game Freak, appelé PokéDex. Conçu par Atsuko Nishida, Bulbasaur a fait ses débuts dans Pokémon Rouge et Bleu en tant que Pokémon'),
(4, 'Evoli', 'Evoli est une espèce de Pokémon de la franchise Pokémon de Nintendo et Game Freak. Créé par Ken Sugimori, il est apparu pour la première fois dans les jeux vidéo Pokémon Rouge et Bleu. Il est ensuite apparu dans divers produits dérivés, titres dérivés et adaptations animées et imprimées de la franchise.');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `pokemon`
--
ALTER TABLE `pokemon`
  ADD UNIQUE KEY `id` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
