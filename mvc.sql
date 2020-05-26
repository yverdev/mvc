-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: May 26, 2020 at 03:39 PM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mvc`
--

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`id`, `title`, `content`, `date`) VALUES
(1, 'Alibaba dépense sans compter dans le cloud', 'Le groupe chinois Alibaba, géant du e-commerce, va investir 26 milliards d’euros pour se renforcer dans le cloud (informatique dématérialisée) au cours des trois prochaines années. Un montant significatif, annoncé lundi 20 avril, puisqu’il représente plus de 40 % des revenus générés par la compagnie lors des quatre derniers trimestres.\r\nLa pandémie de Covid-19 a accru la pression sur l’économie mondiale, mais elle nous incite également à mettre davantage l’accent sur l’économie numérique », estime Jeff Zhang, président d’Alibaba Cloud Intelligence.', '2020-05-26 14:19:36'),
(2, 'La Silicon Valley', 'Aaron Levie, l’une des figures de la Silicon Valley, s’en étonnait début mai. « En 2020, on continue à parler de ce qui devait changer le monde en 2000 : les visioconférences, la fin du papier, le commerce en ligne. La différence est qu’il y a maintenant “un impératif à le faire ”, insiste le PDG de Box, une société de logiciels dématérialisés qui a vu la demande de services sur le cloud exploser. « Et la technologie est finalement prête », conclut-il.\r\n\r\nLa Silicon Valley était en quelque sorte préparée au virus. Dès les premiers cas de contamination, elle a renvoyé ses salariés chez eux. Deux mois et demi plus tard, elle fait figure de dernier pilier  avec le dollar  d’un modèle américain ébranlé.', '2020-05-26 14:20:33'),
(3, 'fgaergre', 'garrgerzgteh', '2020-05-26 14:57:45');

-- --------------------------------------------------------

--
-- Table structure for table `link_article_tag`
--

CREATE TABLE `link_article_tag` (
  `article_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `link_article_tag`
--

INSERT INTO `link_article_tag` (`article_id`, `tag_id`) VALUES
(1, 1),
(2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tag`
--

INSERT INTO `tag` (`id`, `name`) VALUES
(4, 'actu'),
(2, 'infos'),
(3, 'infos'),
(1, 'tech');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `link_article_tag`
--
ALTER TABLE `link_article_tag`
  ADD PRIMARY KEY (`article_id`,`tag_id`) USING BTREE,
  ADD KEY `tag_id` (`tag_id`),
  ADD KEY `article_id` (`article_id`) USING BTREE;

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name_index` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `link_article_tag`
--
ALTER TABLE `link_article_tag`
  ADD CONSTRAINT `link_article_tag_ibfk_1` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `link_article_tag_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
