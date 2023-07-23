-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : db
-- Généré le : ven. 21 juil. 2023 à 12:08
-- Version du serveur : 8.0.33
-- Version de PHP : 8.1.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `rpg_poo`
--

-- --------------------------------------------------------

--
-- Structure de la table `characters`
--

CREATE TABLE `characters` (
  `id_character` int NOT NULL,
  `role` varchar(20) NOT NULL,
  `health` int NOT NULL,
  `damage` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `characters`
--

INSERT INTO `characters` (`id_character`, `role`, `health`, `damage`) VALUES
(1, 'rogue', 90, 90),
(2, 'mage', 120, 60),
(3, 'warrior', 150, 30),
(4, 'priest', 170, 10),
(5, 'gollum', 25, 6),
(6, 'creep', 50, 12),
(7, 'rat taupe nu', 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `evenements_magiques`
--

CREATE TABLE `evenements_magiques` (
  `id` int NOT NULL,
  `nom_rencontre` varchar(100) DEFAULT NULL,
  `effet_pv` int DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `evenements_magiques`
--

INSERT INTO `evenements_magiques` (`id`, `nom_rencontre`, `effet_pv`, `description`) VALUES
(1, 'Rencontre amicale', 8, 'Vous croisez le chemin d\'un groupe de voyageurs amicaux qui vous offrent leur aide et leurs connaissances.'),
(2, 'Source de guérison', 10, 'Au détour d\'un sentier forestier, vous découvrez une source dont l\'eau guérit miraculeusement vos blessures.'),
(3, 'Esprit bienveillant', 5, 'L\'esprit d\'un ancien protecteur se manifeste pour vous apporter soutien et courage dans vos épreuves.'),
(4, 'Elixir curatif trouvé', 7, 'Dans une vieille malle abandonnée, vous trouvez un élixir aux propriétés curatives étonnantes.'),
(5, 'Rencontre avec un guérisseur', 6, 'Un guérisseur errant croise votre route et vous prodigue des soins précieux.'),
(6, 'Protecteur mystérieux', 4, 'Un énigmatique protecteur vous prête main-forte dans votre quête, décimant vos ennemis.'),
(7, 'Fontaine de vie', 9, 'Une majestueuse fontaine dégage une aura bienfaisante qui restaure votre vitalité.'),
(8, 'Repos régénérateur', 3, 'Vous trouvez un abri sûr où vous pouvez vous reposer et récupérer un peu de votre énergie.'),
(9, 'Alliance avec une créature puissante', 10, 'Vous gagnez la confiance d\'une créature légendaire qui vous octroie une part de sa force.'),
(10, 'Bénédictions des anciens', 8, 'Les esprits ancestraux vous accordent leurs bénédictions pour vous aider dans votre quête.'),
(11, 'Artefact de guérison', 7, 'Vous mettez la main sur un ancien artefact dont les pouvoirs de guérison vous revitalisent.'),
(12, 'Rencontre avec une déesse guérisseuse', 10, 'Une déesse de la guérison se matérialise et vous accorde sa bienveillance.'),
(13, 'Source d\'énergie revitalisante', 6, 'Une énergie mystique émane d\'un autel sacré, vous régénérant instantanément.'),
(14, 'Prière à la lueur de la lune', 5, 'Sous la lumière bienfaisante de la lune, vos prières sont exaucées, vous rendant votre vitalité.'),
(15, 'Charme de régénération', 9, 'Un charmant bijou s\'avère être un puissant artefact de régénération pour vous.'),
(16, 'Rencontre avec un sorcier bien intentionné', 7, 'Un sorcier bienveillant vous offre sa magie pour panser vos blessures.'),
(17, 'Oasis de guérison', 8, 'Vous découvrez une oasis cachée dont les eaux prodiguent une guérison instantanée.'),
(18, 'Entraînement de résistance', 3, 'Un maître combattant vous enseigne des techniques pour renforcer votre résistance aux attaques.'),
(19, 'Remède miraculeux', 10, 'Un remède rare et miraculeux vous guérit de toutes vos blessures et maladies.'),
(20, 'Cérémonie de guérison ancienne', 6, 'Vous assistez à une cérémonie ancestrale qui restaure votre force et vitalité.'),
(21, 'Cristal de soins', 4, 'Un cristal précieux possède des propriétés de guérison qui vous soulagent de vos maux.'),
(22, 'Rencontre avec un alchimiste compatissant', 7, 'Un alchimiste généreux vous offre une potion de guérison qu\'il a lui-même créée.'),
(23, 'Souffle de dragon curatif', 9, 'Un dragon bienveillant souffle sur vous, vous imprégnant de sa guérison draconique.'),
(24, 'Temple de la guérison', 10, 'Vous découvrez un ancien temple dédié à la guérison où vos blessures sont miraculeusement soignées.'),
(25, 'Sort de restauration', 6, 'Un puissant mage lance un sort de restauration sur vous, vous rendant vos forces.'),
(26, 'Rencontre avec une nymphe guérisseuse', 8, 'Une nymphe de la nature vous prodigue ses soins guérisseurs.'),
(27, 'Fluide de guérison magique', 7, 'Vous trouvez une fiole de fluide magique aux propriétés curatives inestimables.'),
(28, 'Bénédiction de la déesse de la vie', 10, 'La déesse de la vie vous bénit de sa grâce, restaurant vos forces et vous protégeant.'),
(29, 'Antidote puissant', 9, 'Vous découvrez un antidote puissant qui neutralise tout poison et maladie.'),
(30, 'Charme de régénération', 5, 'Un étrange talisman que vous portez depuis longtemps se révèle être une source de régénération.'),
(31, 'Rencontre avec une entité bienveillante', 8, 'Une entité céleste vous accorde sa bienveillance, vous conférant une guérison miraculeuse.'),
(32, 'Potion de vitalité', 7, 'Vous dénichez une potion de vitalité rare qui restaure votre énergie vitale.'),
(33, 'Eau de source bénite', 6, 'Une eau de source bénite par des prêtres sacrés vous revitalise.'),
(34, 'Repos au cœur de la nature', 4, 'Vous trouvez refuge au cœur de la nature, où votre corps et votre esprit se régénèrent.'),
(35, 'Guérison divine', 10, 'Une lumière divine vous enveloppe et vous restaure intégralement.'),
(36, 'Sort de guérison', 7, 'Un sort puissant vous guérit de vos blessures et élimine vos affections.'),
(37, 'Rencontre avec une guérisseuse elfique', 8, 'Une guérisseuse elfique vous prodigue ses soins ancestraux, rétablissant votre vitalité.'),
(38, 'Graine de régénération', 6, 'Une graine mystique que vous plantez pousse instantanément en un arbre dont les fruits vous guérissent.'),
(39, 'Soin prodigué par une licorne', 9, 'Une licorne légendaire apparaît et vous prodigue un soin purificateur.'),
(40, 'Étreinte bienveillante d\'un esprit ancien', 10, 'L\'esprit d\'un ancien gardien vous entoure d\'une étreinte bienveillante qui vous guérit.');

-- --------------------------------------------------------

--
-- Structure de la table `evenements_malveillants`
--

CREATE TABLE `evenements_malveillants` (
  `id` int NOT NULL,
  `nom_rencontre` varchar(100) DEFAULT NULL,
  `effet_pv` int DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `evenements_malveillants`
--

INSERT INTO `evenements_malveillants` (`id`, `nom_rencontre`, `effet_pv`, `description`) VALUES
(1, 'Piège empoisonné', -5, 'Un piège sournois dissimulé vous blesse et vous empoisonne.'),
(2, 'Attaque surprise d\'une horde de créatures', -8, 'Une horde de créatures maléfiques vous surprend, vous laissant blessé et démuni.'),
(3, 'Malédiction sombre', -7, 'Une puissante malédiction s\'abat sur vous, drainant votre vitalité et vous plongeant dans les ténèbres.'),
(4, 'Rencontre avec un voleur', -4, 'Un voleur sournois vous attaque, vous dérobant vos biens et vous infligeant des blessures.'),
(5, 'Vol d\'une potion de vie', -6, 'On vous dérobe une précieuse potion de vie, vous privant de son pouvoir guérisseur.'),
(6, 'Source empoisonnée', -3, 'Vous buvez par inadvertance d\'une source empoisonnée, vous infligeant des blessures graves.'),
(7, 'Blessure infectée', -6, 'Une blessure que vous aviez négligée s\'infecte, vous affaiblissant considérablement.'),
(8, 'Rencontre avec un sorcier maléfique', -9, 'Un sorcier maléfique vous maudit, vous privant de votre vitalité et vous infligeant des souffrances.'),
(9, 'Piège maudit', -8, 'Un piège maudit vous blesse profondément, drainant votre énergie vitale.'),
(10, 'Sort drainant', -5, 'Un sort maléfique vous draine de votre énergie, vous laissant affaibli.'),
(11, 'Pacte maléfique', -7, 'Vous êtes tenté de faire un pacte avec une entité sombre, mais cela vous coûte votre vitalité.'),
(12, 'Poison insidieux', -4, 'Vous êtes victime d\'un poison insidieux qui vous affaiblit progressivement.'),
(13, 'Attaque d\'un monstre sauvage', -6, 'Un monstre sauvage vous attaque, vous laissant blessé et démuni.'),
(14, 'Rencontre avec une Banshee', -9, 'Vous êtes confronté à une Banshee, dont le cri vous fait perdre votre énergie vitale.'),
(15, 'Malédiction vampirique', -8, 'Une malédiction vampirique vous frappe, vous privant de votre vitalité.'),
(16, 'Artefact maudit', -7, 'Vous touchez un artefact maudit qui vous inflige une perte d\'énergie vitale.'),
(17, 'Poison corrosif', -5, 'Un poison corrosif vous inflige des blessures persistantes et ronge votre vitalité.'),
(18, 'Pacte démoniaque', -6, 'Vous êtes tenté de faire un pacte avec un démon, mais cela vous coûte une partie de votre énergie vitale.'),
(19, 'Rencontre avec une créature des ténèbres', -8, 'Une créature des ténèbres vous attaque, drainant votre énergie vitale.'),
(20, 'Sort d\'affaiblissement', -4, 'Un sort maléfique vous affaiblit temporairement, diminuant votre vitalité.'),
(21, 'Influence maléfique', -7, 'Vous êtes influencé par des forces maléfiques qui vous drainent de votre énergie.'),
(22, 'Marque de la mort', -6, 'Vous êtes marqué d\'une malédiction mortelle qui vous fait perdre progressivement votre vitalité.'),
(23, 'Rencontre avec un nécromancien', -9, 'Un nécromancien sombre vous attaque et tente de s\'emparer de votre énergie vitale.'),
(24, 'Malédiction ancienne', -8, 'Une malédiction ancienne vous atteint, vous privant d\'une partie de votre énergie vitale.'),
(25, 'Poison paralysant', -5, 'Un poison paralysant vous affaiblit, rendant vos mouvements difficiles.'),
(26, 'Attaque d\'un loup-garou', -7, 'Vous êtes attaqué par un loup-garou qui vous inflige des blessures et draine votre vitalité.'),
(27, 'Sort drainant', -6, 'Un sort maléfique vous draine de votre énergie, vous laissant affaibli.'),
(28, 'Rencontre avec un démon mineur', -8, 'Un démon mineur vous attaque, vous privant d\'une partie de votre énergie vitale.'),
(29, 'Piège ensorcelé', -5, 'Un piège ensorcelé vous blesse gravement, vous privant d\'une partie de votre vitalité.'),
(30, 'Fléau des âmes', -7, 'Vous êtes frappé par un fléau sombre qui vous prive de votre énergie vitale.'),
(31, 'Blessure empoisonnée', -4, 'Une blessure empoisonnée vous affaiblit progressivement.'),
(32, 'Influence démoniaque', -6, 'Vous êtes sous l\'emprise d\'une influence démoniaque qui vous prive de votre vitalité.'),
(33, 'Attaque d\'un spectre', -9, 'Un spectre maléfique vous attaque, drainant votre énergie vitale.'),
(34, 'Source maudite', -8, 'Vous buvez par inadvertance d\'une source maudite, vous infligeant des blessures graves.'),
(35, 'Malédiction de faiblesse', -7, 'Vous êtes maudit par une malédiction de faiblesse qui vous prive d\'une partie de votre énergie vitale.'),
(36, 'Rencontre avec un sorcier noir', -5, 'Un sorcier noir vous attaque, drainant votre énergie vitale.'),
(37, 'Sortilège de dégénérescence', -6, 'Un sortilège sombre vous dégénère progressivement, vous privant de votre vitalité.'),
(38, 'Piège ensorcelé', -8, 'Un piège ensorcelé vous blesse profondément, vous privant d\'une partie de votre énergie vitale.'),
(39, 'Rencontre avec une goule', -9, 'Une goule maléfique vous attaque, vous privant d\'une partie de votre vitalité.'),
(40, 'Pouvoir vampirique', -7, 'Un ennemi doté de pouvoirs vampiriques vous draine de votre énergie vitale.'),
(41, 'Poison mortel', -6, 'Un poison mortel vous affaiblit rapidement, drainant votre vitalité.'),
(42, 'Influence sombre', -5, 'Vous êtes sous l\'influence d\'une force sombre qui vous prive de votre vitalité.'),
(43, 'Malédiction dévorante', -8, 'Une malédiction dévorante vous prive de votre énergie vitale.'),
(44, 'Rencontre avec une sorcière maléfique', -9, 'Une sorcière maléfique vous attaque, vous drainant de votre énergie vitale.'),
(45, 'Sort de dégradation', -7, 'Un sort sombre vous dégrade progressivement, vous privant de votre vitalité.'),
(46, 'Piège maudit', -6, 'Un piège maudit vous blesse profondément, drainant votre énergie vitale.'),
(47, 'Attaque de zombies', -8, 'Vous êtes attaqué par une horde de zombies qui vous inflige des blessures et vous draine de votre vitalité.'),
(48, 'Influence démoniaque', -5, 'Vous êtes sous l\'emprise d\'une influence démoniaque qui vous prive de votre vitalité.'),
(49, 'Blessure maudite', -7, 'Une blessure maudite vous affaiblit progressivement, vous privant de votre vitalité.'),
(50, 'Rencontre avec une entité maléfique', -9, 'Une entité maléfique vous attaque, vous privant de votre énergie vitale.'),
(51, 'Sortilège de malchance', -8, 'Un sortilège de malchance vous afflige, vous privant de votre vitalité.'),
(52, 'Vol d\'énergie vitale', -6, 'Votre énergie vitale est drainée par un sort maléfique.'),
(53, 'Attaque d\'une araignée géante', -7, 'Une araignée géante vous attaque, vous infligeant des blessures et vous drainant de votre vitalité.'),
(54, 'Rencontre avec un démon mineur', -8, 'Un démon mineur vous attaque, vous privant d\'une partie de votre énergie vitale.'),
(55, 'Sort drainant', -5, 'Un sort maléfique vous draine de votre énergie, vous laissant affaibli.'),
(56, 'Piège ensorcelé', -6, 'Un piège ensorcelé vous blesse gravement, vous privant d\'une partie de votre vitalité.'),
(57, 'Malédiction surnaturelle', -9, 'Une malédiction surnaturelle vous prive de votre énergie vitale.'),
(58, 'Pacte avec les ombres', -8, 'Vous êtes tenté de faire un pacte avec les ombres, mais cela vous coûte votre vitalité.'),
(59, 'Influence démoniaque', -7, 'Vous êtes sous l\'emprise d\'une influence démoniaque qui vous prive de votre vitalité.'),
(60, 'Vol d\'âme', -10, 'Une force maléfique vous vole une partie de votre âme, vous laissant affaibli et vulnérable.');

-- --------------------------------------------------------

--
-- Structure de la table `stephanoide`
--

CREATE TABLE `stephanoide` (
  `id` int NOT NULL,
  `nom` varchar(100) NOT NULL,
  `points_de_vie` int NOT NULL,
  `points_de_degats` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `stephanoide`
--

INSERT INTO `stephanoide` (`id`, `nom`, `points_de_vie`, `points_de_degats`) VALUES
(1, 'Stéphane, Fléau des Abysses', 14200, 137000000),
(2, 'Stéphane, Seigneur du Chaos', 14900, 137500000),
(3, 'Stéphane, Dévoreur d\'Âmes', 13750, 137250000),
(4, 'Stéphane, L\'Écorcheur', 12500, 137000000),
(5, 'Stéphane, Gardien des Ombres', 14050, 137400000),
(6, 'Stéphane, Le Déchu', 14500, 137000000),
(7, 'Stéphane, Le Tourmenteur', 13000, 137000000),
(8, 'Stéphane, Le Sombre Prophète', 14750, 137000000),
(9, 'Stéphane, Le Ravageur', 13900, 137000000),
(10, 'Stéphane, Le Destructeur de Mondes', 15000, 137000000),
(11, 'Stéphane, Maître des Cauchemars', 13500, 137000000),
(12, 'Stéphane, Le Hurleur', 13300, 137000000),
(13, 'Stéphane, Le Faucheur d\'Âmes', 12950, 137000000),
(14, 'Stéphane, Le Banni des Ténèbres', 13250, 137000000),
(15, 'Stéphane, Le Fléau Corrompu', 14350, 137000000),
(16, 'Stéphane, Le Sombre Traqueur', 12800, 137000000),
(17, 'Stéphane, Le Briseur d\'Espoir', 13650, 137000000),
(18, 'Stéphane, Le Spectre Maudit', 12650, 137000000),
(19, 'Stéphane, Le Fléau Infini', 15000, 137500000),
(20, 'Stéphane, Le Videur de Lumière', 13100, 137000000);

-- --------------------------------------------------------

--
-- Structure de la table `tresors`
--

CREATE TABLE `tresors` (
  `nom` varchar(27) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `effet` int DEFAULT NULL,
  `titre` varchar(65) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `tresors`
--

INSERT INTO `tresors` (`nom`, `effet`, `titre`) VALUES
('Épée du Roi Arthur', 60, 'Légendaire épée d\'Excalibur aux pouvoirs magiques.'),
('Armure du Haut Chevalier', 28, 'Robuste armure forgée par les maîtres artisans.'),
('Amulette du héros', 20, 'Talisman puissant conférant force et protection.'),
('Bouclier des mines Nains', 22, 'Bouclier indestructible forgé dans les profondeurs des montagnes.'),
('Potion de vie', 40, 'Breuvage mystique redonnant santé et vitalité.'),
('Grand hache Nordique', 45, ':Arme massive taillée dans la glace nordique.'),
('Arc de Pegas: ', 20, 'Arc légendaire capable de décocher des flèches enflammées.'),
('Dague de l\'Ombre ', 18, 'Dague agile qui permet de se fondre dans les ténèbres.'),
('Marteau du Tonnerre ', 31, 'Marteau imposant créant des éclairs destructeurs.'),
('Fouet', 22, 'Fouet pour manipuler les ennemis.'),
('Lance du Dragon ', 19, 'Lance puissante qui inflige des dégâts acérés.'),
('Bâton des Éléments Anciens ', 17, 'Bâton mystique invoquant les forces élémentaires.'),
('Hache des Brumes Magiques ', 34, 'Hache ensorcelée capable de trancher l\'espace-temps.'),
('Glaive de la Lune ', 36, 'Glaive imprégné de l\'énergie de la lune.'),
('Frappeur de Minotaure ', 35, 'Massue massive réduisant les ennemis en cendres.');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `characters`
--
ALTER TABLE `characters`
  ADD PRIMARY KEY (`id_character`);

--
-- Index pour la table `evenements_magiques`
--
ALTER TABLE `evenements_magiques`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `evenements_malveillants`
--
ALTER TABLE `evenements_malveillants`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `stephanoide`
--
ALTER TABLE `stephanoide`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `characters`
--
ALTER TABLE `characters`
  MODIFY `id_character` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `evenements_magiques`
--
ALTER TABLE `evenements_magiques`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT pour la table `evenements_malveillants`
--
ALTER TABLE `evenements_malveillants`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT pour la table `stephanoide`
--
ALTER TABLE `stephanoide`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
