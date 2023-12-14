-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 14 déc. 2023 à 23:23
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `news`
--

-- --------------------------------------------------------

--
-- Structure de la table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `titre` varchar(90) NOT NULL,
  `description` text NOT NULL,
  `datepublication` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `news`
--

INSERT INTO `news` (`id`, `titre`, `description`, `datepublication`) VALUES
(1, 'L\'UE ouvre les négociations d\'adhésion avec Kiev, Zelensky salue une \"victoire\" pour l\'Ukr', 'Réunis en sommet à Bruxelles, les dirigeants de l\'Union européenne ont décidé l\'ouverture de négociations d\'adhésion avec l\'Ukraine et la Moldavie. Une annonce inattendue alors que la Hongrie exprimait son opposition à une telle décision. Volodymyr Zelensky a immédiatement salué une \"victoire pour l\'Ukraine\" et \"toute l\'Europe\".', '2023-12-14 21:40:42'),
(2, 'L\'actualité en Tunisie', 'La Tunisie est en proie à une grave crise économique et financière. Elle se traduit notamment par des pénuries chroniques de produits alimentaires de base. En outre, de vives tensions politiques traversent le pays depuis que le président Kais Saied s\'est emparé des pleins pouvoir en juillet 2021, 10 ans après la révolution de Jasmin et la chute de Ben Ali.', '2023-12-14 22:18:36'),
(3, 'L\'actualité en Tunisie', 'La Tunisie est en proie à une grave crise économique et financière. Elle se traduit notamment par des pénuries chroniques de produits alimentaires de base. En outre, de vives tensions politiques traversent le pays depuis que le président Kais Saied s\'est emparé des pleins pouvoir en juillet 2021, 10 ans après la révolution de Jasmin et la chute de Ben Ali.', '2023-12-14 22:18:43'),
(4, 'Tunisie : Kaïes Saïed, plus de deux ans de pleins pouvoirs', 'Le dirigeant tunisien, Kaïs Saïed, s\'est fendu dernièrement d\'une nouvelle déclaration polémique et antisémite. La tempête Daniel en Libye serait, dit-il, la preuve de \"l\'infiltration sioniste\" dans la région. Mais pour l\'Union européenne, le dirigeant reste un partenaire incontournable dans la lutte contre l\'immigration clandestine. Selon Sophie Bessis, historienne et politiste, spécialiste de la Tunisie, \"la politique européenne vis-à-vis de la Tunisie est pratiquement dictée aujourd\'hui par Madame Giorgia Meloni.\"', '2023-12-14 22:20:55'),
(5, 'La bouteille d’huile d’olive à quinze dinars le litre révélée', 'La bouteille d’huile d’olive d’un litre qui sera commercialisée au prix de quinze dinars a été révélée. C’était au cours d’une visite effectuée par le ministre de l’Agriculture, Abdelmonem Belati dans l’une des usines privées dédiées au remplissage des quantités prévues par le programme national de consommation d’huile d’olive.\r\nPour rappel, le ministère de l’Agriculture, en application des instructions du chef de l’Etat, a consacré un quota de 10.500 tonnes d’huile d’olive extra vierge à la consommation nationale. Dans ce cadre, le litre sera vendu au prix de quinze dinars. Notons, toutefois, que la quantité dédiée à ce programme reste inférieure à la consommation nationale d’huile d’olive estimée à près de quarante mille tonnes.', '2023-12-14 22:22:11'),
(7, 'ECONOMIELa sécheresse du canal de Panama impacte le commerce maritime mondial', 'ECONOMIELa sécheresse du canal de Panama impacte le commerce maritime mondialLa sécheresse du canal de Panama impacte le commerce maritime mondial\r\nParMohamed Ben Abderrazek | Il y a 2 heures\r\nFacebook Twitter LinkedIn WhatsApp \r\n\r\nLa sécheresse sévère qui frappe le canal de Panama a jeté une ombre pesante sur le flux habituel du commerce maritime mondial, en particulier pour les navires céréaliers. Cette crise a contraint les expéditeurs de céréales en vrac à chercher des solutions alternatives face aux embouteillages et aux coûts croissants.', '2023-12-14 22:32:37');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
