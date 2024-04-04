-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : ven. 02 fév. 2024 à 14:10
-- Version du serveur : 5.7.39
-- Version de PHP : 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `Improve-U`
--

-- --------------------------------------------------------

--
-- Structure de la table `Aliment`
--

CREATE TABLE `Aliment` (
  `Aliment_id` int(11) NOT NULL,
  `Repas_id` int(11) NOT NULL,
  `Aliment_Type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Alimentation`
--

CREATE TABLE `Alimentation` (
  `Alimentation_id` int(11) NOT NULL,
  `Utilisateur_id` int(11) NOT NULL,
  `Regime_Alimentaire` varchar(20) NOT NULL,
  `Maintien_Calorique` int(11) NOT NULL,
  `Objectif_Calorique` int(11) NOT NULL,
  `Objectif_Proteines` int(11) NOT NULL,
  `Objectif_glucides` int(11) NOT NULL,
  `Objectif_lipides` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Alimentation_indesirable`
--

CREATE TABLE `Alimentation_indesirable` (
  `Alimentation_indesirable_id` int(11) NOT NULL,
  `Aliment_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Exercices`
--

CREATE TABLE `Exercices` (
  `Exercice_id` int(11) NOT NULL,
  `Exercice_nom` varchar(100) NOT NULL,
  `Exercice_type` varchar(100) NOT NULL,
  `Temps_repos` int(11) NOT NULL,
  `Repetitions_Serie1` int(11) NOT NULL,
  `Repetitions_Serie2` int(11) NOT NULL,
  `Repetitions_Serie3` int(11) NOT NULL,
  `Repetitions_Serie4` int(11) NOT NULL,
  `Exercice_Description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Historique_Sante`
--

CREATE TABLE `Historique_Sante` (
  `Historique_Santeid` int(11) NOT NULL,
  `Poids` int(11) NOT NULL,
  `Date_Sante` date NOT NULL,
  `Nombre_pas` int(11) NOT NULL,
  `Sommeil` int(11) NOT NULL,
  `Eau` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Historique_Sport`
--

CREATE TABLE `Historique_Sport` (
  `Historique_id` int(11) NOT NULL,
  `Utilisateur_id` int(11) NOT NULL,
  `Exercice_id` int(11) NOT NULL,
  `Date_Historique` date NOT NULL,
  `Poids_Serie1` int(11) NOT NULL,
  `Poids_Serie2` int(11) NOT NULL,
  `Poids_Serie3` int(11) NOT NULL,
  `Repetitions` int(11) NOT NULL,
  `Note` text NOT NULL,
  `Serie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Objectif_Sante`
--

CREATE TABLE `Objectif_Sante` (
  `Objectif_Sante_id` int(11) NOT NULL,
  `Objectif_Nombre_pas` int(11) NOT NULL,
  `Objectif_Poids` int(11) NOT NULL,
  `Objectif_Sommeil` int(11) NOT NULL,
  `Objectif_Eau` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Repas`
--

CREATE TABLE `Repas` (
  `Repas_id` int(11) NOT NULL,
  `Alimentation_id` int(11) NOT NULL,
  `Aliment_id` int(11) NOT NULL,
  `Quantite` int(11) NOT NULL,
  `Glucides` int(11) NOT NULL,
  `Calories` int(11) NOT NULL,
  `Lipides` int(11) NOT NULL,
  `Proteines` int(11) NOT NULL,
  `Description` text NOT NULL,
  `Duree` time NOT NULL,
  `Image` varchar(255) NOT NULL,
  `Difficulte` varchar(10) NOT NULL,
  `Saison` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Sante`
--

CREATE TABLE `Sante` (
  `Sante_id` int(11) NOT NULL,
  `Objectif_Sante_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Seances`
--

CREATE TABLE `Seances` (
  `Seance_id` int(11) NOT NULL,
  `Exercice1_id` int(11) NOT NULL,
  `Exercice2_id` int(11) NOT NULL,
  `Exercice3_id` int(11) NOT NULL,
  `Exercice4_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Sport`
--

CREATE TABLE `Sport` (
  `Sport_id` int(11) NOT NULL,
  `Niveau_Sport` char(10) NOT NULL,
  `Objectif_Sport` int(11) NOT NULL,
  `Seance_id` int(11) NOT NULL,
  `Utilisateur_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Utilisateur`
--

CREATE TABLE `Utilisateur` (
  `Utilisateur_id` int(11) NOT NULL,
  `Prenom` varchar(100) NOT NULL,
  `Nom` varchar(100) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Mot_Passe` varchar(255) NOT NULL,
  `Date_Naissance` date NOT NULL,
  `Date_Creation_Inscription` date NOT NULL,
  `Sexe` varchar(5) NOT NULL,
  `Poids` int(11) NOT NULL,
  `Taille` int(11) NOT NULL,
  `Niveau_Sport` char(10) NOT NULL,
  `Regime_Alimentaire` varchar(20) NOT NULL,
  `Objectif_Sante_id` int(11) NOT NULL,
  `Objectif_Sport_id` int(11) NOT NULL,
  `Objectif_Alimentaire_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Aliment`
--
ALTER TABLE `Aliment`
  ADD PRIMARY KEY (`Aliment_id`),
  ADD KEY `repas_idfk_1` (`Repas_id`);

--
-- Index pour la table `Alimentation`
--
ALTER TABLE `Alimentation`
  ADD PRIMARY KEY (`Alimentation_id`),
  ADD KEY `utilisateur_idfk_1` (`Utilisateur_id`);

--
-- Index pour la table `Alimentation_indesirable`
--
ALTER TABLE `Alimentation_indesirable`
  ADD PRIMARY KEY (`Alimentation_indesirable_id`),
  ADD KEY `aliment_idfk_1` (`Aliment_id`);

--
-- Index pour la table `Exercices`
--
ALTER TABLE `Exercices`
  ADD PRIMARY KEY (`Exercice_id`);

--
-- Index pour la table `Historique_Sport`
--
ALTER TABLE `Historique_Sport`
  ADD PRIMARY KEY (`Historique_id`),
  ADD KEY `historiquefk1` (`Utilisateur_id`),
  ADD KEY `historiquefk2` (`Exercice_id`);

--
-- Index pour la table `Objectif_Sante`
--
ALTER TABLE `Objectif_Sante`
  ADD PRIMARY KEY (`Objectif_Sante_id`);

--
-- Index pour la table `Repas`
--
ALTER TABLE `Repas`
  ADD PRIMARY KEY (`Repas_id`),
  ADD KEY `repas_ibfk_1` (`Aliment_id`),
  ADD KEY `repas_ibfk_2` (`Alimentation_id`);

--
-- Index pour la table `Sante`
--
ALTER TABLE `Sante`
  ADD PRIMARY KEY (`Sante_id`),
  ADD KEY `sante_ibfk_1` (`Objectif_Sante_id`);

--
-- Index pour la table `Seances`
--
ALTER TABLE `Seances`
  ADD PRIMARY KEY (`Seance_id`),
  ADD KEY `seances_exercicesfk_1` (`Exercice1_id`),
  ADD KEY `seances_exercicesfk_2` (`Exercice2_id`),
  ADD KEY `seances_exercicesfk_3` (`Exercice3_id`),
  ADD KEY `seances_exercicesfk_4` (`Exercice4_id`);

--
-- Index pour la table `Sport`
--
ALTER TABLE `Sport`
  ADD PRIMARY KEY (`Sport_id`),
  ADD KEY `seances_idfk_1` (`Seance_id`),
  ADD KEY `seances_idfk_2` (`Utilisateur_id`);

--
-- Index pour la table `Utilisateur`
--
ALTER TABLE `Utilisateur`
  ADD PRIMARY KEY (`Utilisateur_id`),
  ADD KEY `objectif_idfk_1` (`Objectif_Sante_id`),
  ADD KEY `objectif_idfk_2` (`Objectif_Sport_id`),
  ADD KEY `objectif_idfk_3` (`Objectif_Alimentaire_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `Aliment`
--
ALTER TABLE `Aliment`
  MODIFY `Aliment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `Alimentation`
--
ALTER TABLE `Alimentation`
  MODIFY `Alimentation_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `Alimentation_indesirable`
--
ALTER TABLE `Alimentation_indesirable`
  MODIFY `Alimentation_indesirable_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `Exercices`
--
ALTER TABLE `Exercices`
  MODIFY `Exercice_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `Historique_Sport`
--
ALTER TABLE `Historique_Sport`
  MODIFY `Historique_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `Objectif_Sante`
--
ALTER TABLE `Objectif_Sante`
  MODIFY `Objectif_Sante_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `Repas`
--
ALTER TABLE `Repas`
  MODIFY `Repas_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `Sante`
--
ALTER TABLE `Sante`
  MODIFY `Sante_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `Seances`
--
ALTER TABLE `Seances`
  MODIFY `Seance_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `Sport`
--
ALTER TABLE `Sport`
  MODIFY `Sport_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `Utilisateur`
--
ALTER TABLE `Utilisateur`
  MODIFY `Utilisateur_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `Aliment`
--
ALTER TABLE `Aliment`
  ADD CONSTRAINT `repas_idfk_1` FOREIGN KEY (`Repas_id`) REFERENCES `Repas` (`Repas_id`);

--
-- Contraintes pour la table `Alimentation`
--
ALTER TABLE `Alimentation`
  ADD CONSTRAINT `utilisateur_idfk_1` FOREIGN KEY (`Utilisateur_id`) REFERENCES `Utilisateur` (`Utilisateur_id`);

--
-- Contraintes pour la table `Alimentation_indesirable`
--
ALTER TABLE `Alimentation_indesirable`
  ADD CONSTRAINT `aliment_idfk_1` FOREIGN KEY (`Aliment_id`) REFERENCES `Aliment` (`Aliment_id`);

--
-- Contraintes pour la table `Historique_Sport`
--
ALTER TABLE `Historique_Sport`
  ADD CONSTRAINT `historiquefk1` FOREIGN KEY (`Utilisateur_id`) REFERENCES `Utilisateur` (`Utilisateur_id`),
  ADD CONSTRAINT `historiquefk2` FOREIGN KEY (`Exercice_id`) REFERENCES `Exercices` (`Exercice_id`);

--
-- Contraintes pour la table `Repas`
--
ALTER TABLE `Repas`
  ADD CONSTRAINT `repas_ibfk_1` FOREIGN KEY (`Aliment_id`) REFERENCES `Aliment` (`Aliment_id`),
  ADD CONSTRAINT `repas_ibfk_2` FOREIGN KEY (`Alimentation_id`) REFERENCES `Alimentation` (`Alimentation_id`);

--
-- Contraintes pour la table `Sante`
--
ALTER TABLE `Sante`
  ADD CONSTRAINT `sante_ibfk_1` FOREIGN KEY (`Objectif_Sante_id`) REFERENCES `Objectif_Sante` (`Objectif_Sante_id`);

--
-- Contraintes pour la table `Seances`
--
ALTER TABLE `Seances`
  ADD CONSTRAINT `seances_exercicesfk_1` FOREIGN KEY (`Exercice1_id`) REFERENCES `Exercices` (`Exercice_id`),
  ADD CONSTRAINT `seances_exercicesfk_2` FOREIGN KEY (`Exercice2_id`) REFERENCES `Exercices` (`Exercice_id`),
  ADD CONSTRAINT `seances_exercicesfk_3` FOREIGN KEY (`Exercice3_id`) REFERENCES `Exercices` (`Exercice_id`),
  ADD CONSTRAINT `seances_exercicesfk_4` FOREIGN KEY (`Exercice4_id`) REFERENCES `Exercices` (`Exercice_id`);

--
-- Contraintes pour la table `Sport`
--
ALTER TABLE `Sport`
  ADD CONSTRAINT `seances_idfk_1` FOREIGN KEY (`Seance_id`) REFERENCES `Seances` (`Seance_id`),
  ADD CONSTRAINT `seances_idfk_2` FOREIGN KEY (`Utilisateur_id`) REFERENCES `Utilisateur` (`Utilisateur_id`);

--
-- Contraintes pour la table `Utilisateur`
--
ALTER TABLE `Utilisateur`
  ADD CONSTRAINT `objectif_idfk_1` FOREIGN KEY (`Objectif_Sante_id`) REFERENCES `Sante` (`Sante_id`),
  ADD CONSTRAINT `objectif_idfk_2` FOREIGN KEY (`Objectif_Sport_id`) REFERENCES `Sport` (`Sport_id`),
  ADD CONSTRAINT `objectif_idfk_3` FOREIGN KEY (`Objectif_Alimentaire_id`) REFERENCES `Alimentation` (`Alimentation_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
