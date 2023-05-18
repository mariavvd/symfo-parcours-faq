-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Dim 14 Juillet 2019 à 20:02
-- Version du serveur :  5.7.20-0ubuntu0.16.04.1
-- Version de PHP :  7.2.20-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `oFaq`
--

-- --------------------------------------------------------

--
-- Structure de la table `anwser`
--

CREATE TABLE `anwser` (
  `id` int(11) NOT NULL,
  `question_id` int(11) DEFAULT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `is_activ` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `anwser`
--

INSERT INTO `anwser` (`id`, `question_id`, `body`, `created_at`, `updated_at`, `user_id`, `is_activ`) VALUES
(282, 322, 'Nam nemo consequatur voluptates. Ut recusandae quis labore facilis sit ea. Velit quia laudantium ea et.', '2019-04-23 23:15:09', '2019-04-25 04:55:51', 262, 1),
(283, 326, 'Fugiat maiores omnis quo aspernatur quod. Quibusdam exercitationem ab unde culpa rem sunt perferendis. Sapiente accusamus dolor voluptatem alias dignissimos nobis expedita.', '2019-04-09 03:56:15', '2019-06-20 01:19:34', 267, 1),
(284, 323, 'Facere officiis nostrum dolore nulla est ea quo. Unde alias sunt rerum fuga quasi placeat corporis. Odio quod totam quia tempora id reprehenderit voluptas maiores.', '2019-04-30 04:47:40', '2019-06-18 14:28:42', 257, 1),
(285, 321, 'Est error aspernatur magnam aut. Architecto officiis ea omnis velit. Quia minus sint quis voluptatem.', '2019-07-11 09:03:56', '2019-07-11 22:26:00', 270, 1),
(286, 326, 'Voluptate explicabo excepturi molestias occaecati quo culpa distinctio et. Exercitationem in corporis qui dolor sit. Natus non neque esse dicta architecto omnis. Consequatur nihil est sit.', '2019-07-09 22:59:36', '2019-07-10 04:29:26', 256, 0),
(287, 318, 'Aut et eius et dolorem rerum ab et. Voluptatem aperiam qui animi pariatur rerum explicabo. Id alias et qui placeat ut. Laudantium fugiat est officia.', '2019-05-27 22:04:44', '2019-06-08 04:20:23', 260, 1),
(288, 317, 'Quis aut consequatur eligendi minus aut ea eos. Blanditiis architecto magni deserunt ad cupiditate soluta dicta. Vel accusamus rerum vel fuga quo incidunt aperiam. Unde ut ullam dolores ut.', '2019-05-31 22:59:47', '2019-06-29 14:54:19', 274, 1),
(289, 319, 'Debitis aut magni qui qui. Quis sint quia quibusdam est ratione voluptatem. Consequatur suscipit saepe quia vero nesciunt nobis aperiam. Non iure nihil quia soluta nihil est dolorum.', '2019-04-07 19:38:51', '2019-05-29 20:23:22', 267, 1),
(290, 327, 'Unde enim molestiae autem id. Quo aliquid nam ex asperiores neque ea. Ut ut facilis qui sed sint.', '2019-06-09 20:20:48', '2019-06-10 09:48:43', 268, 0),
(291, 325, 'A tempora ipsam error vel laudantium. Assumenda a iusto perspiciatis dolor. Dolore unde nihil ducimus rerum est similique et.', '2019-06-21 19:59:58', '2019-07-09 11:03:15', 274, 1),
(292, 318, 'Est cupiditate a eum natus. Laudantium recusandae aliquam deleniti rerum qui vitae. Et explicabo possimus nesciunt voluptatibus ipsum. Fugit iste et et beatae totam repellendus.', '2019-05-13 01:47:47', '2019-06-04 06:18:41', 262, 1),
(293, 319, 'Odio at nostrum voluptatem et et ea ad. Tempore ab quis impedit itaque assumenda aut. Consequatur nulla explicabo commodi praesentium voluptatem.', '2019-06-20 16:59:30', '2019-06-30 19:56:42', 274, 0),
(294, 317, 'Praesentium itaque et reiciendis quo sapiente est. Quaerat voluptas vitae quia molestiae. Ea velit quo autem id.', '2019-04-27 06:19:24', '2019-06-22 13:30:22', 258, 0),
(295, 321, 'Accusantium rerum earum unde et ut corporis recusandae. Omnis explicabo expedita sed et. Aut facilis a eum et.', '2019-04-06 23:34:53', '2019-04-14 17:10:35', 273, 1),
(296, 328, 'Quasi rerum veritatis veritatis nam et quam. Voluptatem qui ut itaque iusto consequuntur. Consequuntur et cupiditate ea eligendi in ab facere sunt. Omnis ut et fugiat animi veniam ad animi.', '2019-06-17 19:00:19', '2019-07-07 20:53:48', 265, 0),
(297, 328, 'Accusamus iusto et quis voluptate recusandae vel. Aliquam dolor quasi eum et nihil. Ipsam odio quia consequuntur temporibus. Nihil ipsa officia sapiente.', '2019-04-24 20:30:41', '2019-04-25 14:24:45', 265, 1),
(298, 318, 'Fugiat doloremque ab unde a cumque culpa voluptatum. Facere totam similique voluptatum mollitia ab quo. Rerum accusantium laborum veniam iure doloremque possimus.', '2019-05-22 23:27:03', '2019-06-15 05:50:59', 262, 1),
(299, 327, 'Ut ex in nihil quidem est eum quia et. Quod sed illo unde sint. Ea nemo sed voluptatibus in. Est ratione natus perferendis fuga animi nulla.', '2019-06-05 14:57:47', '2019-07-02 00:30:17', 266, 1),
(300, 320, 'Eius architecto commodi eum at corporis facilis. Vero animi unde doloribus. Qui dolor vel consectetur debitis a animi.', '2019-07-02 06:43:10', '2019-07-08 09:54:51', 263, 0),
(301, 327, 'Sunt magni aut eaque vel. Molestias velit deleniti enim rerum sequi. Et nemo excepturi et eos vero hic quia.', '2019-05-03 17:40:16', '2019-05-05 16:18:31', 273, 1),
(302, 317, 'I think you should try this and that', '2019-07-13 15:14:53', '2019-07-13 15:14:53', NULL, 1),
(303, 317, 'I don\'t agree. An anonymous should not be allowed to answer', '2019-07-13 15:17:11', '2019-07-13 15:17:11', 282, 0),
(304, 333, 'Somewhere over the rainbow, skies are blue... why oh why can\'t I.', '2019-07-13 15:38:04', '2019-07-13 15:38:04', 282, 0),
(305, 332, 'I don\'t know what to say', '2019-07-13 17:25:21', '2019-07-13 17:25:21', 278, 0),
(306, 330, 'I\'m sure nobody has such a good answer to this question', '2019-07-13 17:26:43', '2019-07-13 17:26:43', 278, 0),
(307, 318, 'I guess I\'ll try one more time', '2019-07-13 17:28:10', '2019-07-13 17:28:10', 278, 0);

-- --------------------------------------------------------

--
-- Structure de la table `migration_versions`
--

CREATE TABLE `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `migration_versions`
--

INSERT INTO `migration_versions` (`version`, `executed_at`) VALUES
('20190708160418', '2019-07-08 16:04:35'),
('20190708161128', '2019-07-08 16:11:34'),
('20190708172138', '2019-07-08 17:21:55'),
('20190709192332', '2019-07-09 19:23:43'),
('20190709210551', '2019-07-09 21:06:03'),
('20190710194031', '2019-07-10 19:40:36'),
('20190710203153', '2019-07-10 20:32:06'),
('20190710203746', '2019-07-10 20:37:52'),
('20190710212627', '2019-07-10 21:26:41'),
('20190711195004', '2019-07-11 19:50:14'),
('20190711195953', '2019-07-11 20:00:05'),
('20190711200226', '2019-07-11 20:02:31'),
('20190712170848', '2019-07-12 17:09:00'),
('20190712182850', '2019-07-12 18:29:01'),
('20190712191501', '2019-07-12 19:15:11'),
('20190713160208', '2019-07-13 16:02:20');

-- --------------------------------------------------------

--
-- Structure de la table `question`
--

CREATE TABLE `question` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `question`
--

INSERT INTO `question` (`id`, `title`, `body`, `created_at`, `updated_at`, `user_id`, `is_active`) VALUES
(317, 'Enim sapiente occaecati natus. Reiciendis similique et laudantium vel nisi ea itaque. Et nihil beatae omnis voluptatibus quae sit veniam. Eos officiis et est nisi iusto amet neque.', 'Est est alias neque autem nihil. Repudiandae pariatur reprehenderit assumenda error consequatur. Ad iste minus ullam quidem.', '2019-05-05 21:57:05', '2019-05-15 23:42:12', 265, 1),
(318, 'Inventore perferendis voluptatem nisi quis consequatur ullam voluptas. Tempora repellat corporis excepturi sint dolores quaerat. Quia nisi accusantium natus voluptatem.', 'Dicta ipsa temporibus sit facere cupiditate doloremque odio. Asperiores quaerat eius accusamus sint. Earum ut consequatur facilis molestias.', '2019-05-28 18:38:27', '2019-07-01 06:35:45', 267, 1),
(319, 'Pariatur et libero explicabo quia sed ea. Unde voluptatem tempora beatae. Eum est molestiae et laboriosam. Odit omnis vel excepturi similique.', 'In laudantium omnis et. Laborum cupiditate corporis aliquid aut cumque consequuntur non qui. Maiores aliquid rerum autem qui est velit. Et necessitatibus tenetur doloremque iusto quibusdam fuga.', '2019-03-05 03:28:28', '2019-07-01 13:30:32', 273, 1),
(320, 'Facilis vel ut modi quia recusandae. Eligendi quo voluptas totam asperiores ab tenetur voluptatem. Reiciendis cum accusamus ut et nobis iste accusantium quaerat. Voluptas est tenetur sed possimus.', 'Quia molestiae alias quo quis inventore. Ea sit in ut qui fugiat dolores placeat.', '2019-01-16 19:29:31', '2019-03-09 09:59:48', 257, 0),
(321, 'Excepturi enim velit qui nam nesciunt non dolore quis. Eius et et omnis. Pariatur non ea vel.', 'Qui totam iste perspiciatis harum animi et ad. Perferendis fugiat et facere quisquam et quod velit. Ut rem repellendus ut sit laudantium.', '2019-02-05 21:32:50', '2019-05-22 18:42:31', 272, 1),
(322, 'Doloremque quasi vero nobis error fuga ut. Quia quasi sit dolore ad sunt est. Itaque cumque officiis ut quis quisquam consequatur asperiores. Magnam nostrum ea corrupti.', 'Voluptatem at enim tempora voluptas ut dolorem. Deserunt provident natus ipsam fugiat est ipsam quia. Sint mollitia sed facere qui sit. Ad iusto molestias iusto autem laboriosam nulla earum eius.', '2019-01-21 05:06:10', '2019-03-15 16:51:33', 269, 1),
(323, 'Recusandae omnis consequatur ut repellendus officiis nihil reprehenderit. Ut rem esse magnam iure. Sed velit aut omnis quod cupiditate.', 'Molestiae eum et eos fugiat voluptas. Consequuntur nostrum culpa in quod. Quae dignissimos sunt atque aut unde.', '2019-02-10 10:09:52', '2019-06-26 11:58:22', 266, 1),
(324, 'Iure voluptatibus dolorem totam. Sit enim adipisci sint velit rerum. Quia modi ducimus odio fuga vitae expedita vitae.', 'Ratione cumque commodi corrupti cum ratione animi maxime. Est quam provident vel tenetur asperiores.', '2019-02-23 09:27:52', '2019-07-05 13:43:04', 271, 1),
(325, 'Culpa dolores consectetur quod doloremque. Aut cupiditate aperiam occaecati adipisci veritatis vel voluptas. Cumque sed modi odit.', 'Numquam voluptatem harum sed quia. Aliquid neque voluptas est totam provident sunt. Est tempora qui minus officia.', '2019-05-14 21:16:54', '2019-07-07 06:48:41', 258, 1),
(326, 'Et accusamus veniam et adipisci libero qui. Maiores est ducimus molestiae aliquam officiis soluta. Saepe aspernatur quasi et sit.', 'Est possimus voluptas blanditiis et. Aut culpa reiciendis dolorum eaque accusantium exercitationem animi. Provident ipsa distinctio consequatur temporibus sunt officia et.', '2019-05-15 16:23:22', '2019-05-20 04:21:50', 274, 0),
(327, 'Corrupti vitae consectetur quia recusandae eligendi vel est. Asperiores vitae neque optio quod et consectetur ut expedita.', 'Pariatur vel laudantium et laborum. Dolores dolorum ad in et. Eius facilis dolor fugiat dicta. Voluptas est accusantium eveniet rerum architecto commodi est.', '2019-01-27 17:44:50', '2019-04-20 00:37:50', 272, 1),
(328, 'Non quos quia repellat expedita laudantium ducimus qui odit. Sed illo minima sit. Necessitatibus accusamus sed iure voluptatum excepturi sit.', 'Quis sit qui officia nihil quidem vel. Modi est qui inventore. Quos a minus quos laudantium porro.', '2019-03-17 22:25:55', '2019-05-28 19:25:27', 273, 1),
(329, 'Why do asteroids tast like bacon?', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quam officiis non incidunt minima quod deserunt culpa ut error et, a explicabo iure minus sequi voluptatum neque dolor inventore qui? Saepe voluptate architecto molestiae quos, illum fuga officiis reprehenderit magnam dolores iusto beatae non, minus error quae libero veniam facilis commodi aliquam. Libero alias neque eius nostrum id? Eos, officia ratione. Dignissimos recusandae, nobis eum iusto, officiis quasi cupiditate totam non harum sint, vel voluptatum! Non dignissimos nisi assumenda, illum quos nemo consectetur magni facilis facere quia nobis consequatur itaque a quaerat aperiam ea doloremque excepturi rem corrupti iusto nesciunt eveniet saepe alias? Esse, quas doloribus pariatur nostrum suscipit inventore animi commodi quidem amet consectetur architecto sunt nisi repellat ab iusto vero, perferendis id deleniti. Voluptatem repellendus iste inventore veniam illum dolores blanditiis! Magnam quis esse tempora, maxime sint est. Exercitationem pariatur, praesentium animi assumenda facere voluptas recusandae sed eum modi.', '2019-07-12 22:41:36', '2019-07-12 22:41:36', NULL, 0),
(330, 'zz', 'zz', '2019-07-12 22:44:41', '2019-07-12 22:44:41', NULL, 1),
(331, 'My brand new question', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Animi modi debitis totam dolor sunt sint eveniet magnam neque rerum, deleniti, at minus dolorem esse optio est doloremque. Quos voluptas impedit molestias reiciendis blanditiis nihil sapiente laboriosam corporis eius tempore vel numquam reprehenderit sequi fugit earum assumenda quam sint vero delectus, nostrum, aperiam ex debitis. Molestiae aliquid soluta, id tempore ipsa culpa quo pariatur. Possimus minima necessitatibus laborum vitae rerum culpa magnam dicta sed expedita quos?', '2019-07-13 10:49:32', '2019-07-13 10:49:32', 278, 0),
(332, 'my brand new question', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Et commodi aspernatur ut maxime molestias eligendi nobis dolor laboriosam blanditiis nam unde placeat laborum dicta ipsum, impedit iure corrupti sequi aliquam, tenetur corporis hic repellat rem illo. Blanditiis consequuntur placeat voluptatem cupiditate nesciunt perspiciatis aperiam eaque dolores maiores totam laborum, commodi ipsam, culpa odit distinctio similique rerum vel! Maxime harum velit, earum ipsum quae voluptatum accusantium et magni dolorem recusandae minus nam consectetur tenetur possimus atque!', '2019-07-13 10:57:16', '2019-07-13 10:57:16', 278, 1),
(333, 'why do heros have super powers', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Illo non asperiores autem quo voluptas consequuntur adipisci excepturi accusantium voluptate voluptates nulla, reiciendis eius fugiat temporibus?', '2019-07-13 14:28:17', '2019-07-13 14:28:17', NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `question_tag`
--

CREATE TABLE `question_tag` (
  `question_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `question_tag`
--

INSERT INTO `question_tag` (`question_id`, `tag_id`) VALUES
(317, 323),
(317, 324),
(318, 320),
(319, 316),
(319, 317),
(319, 321),
(320, 320),
(320, 323),
(321, 318),
(321, 323),
(322, 320),
(322, 324),
(323, 324),
(324, 322),
(324, 324),
(325, 316),
(325, 318),
(326, 321),
(327, 322),
(327, 323),
(329, 322),
(329, 323),
(329, 324),
(330, 317),
(333, 323);

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `tag`
--

CREATE TABLE `tag` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `tag`
--

INSERT INTO `tag` (`id`, `name`) VALUES
(316, 'Consequatur'),
(317, 'quisquam'),
(318, 'recusandae'),
(319, 'asperiores'),
(320, 'accusamus'),
(321, 'nihil'),
(322, 'repellat'),
(323, 'vero'),
(324, 'omnis'),
(326, 'culpa ter');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `roles` json NOT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`, `created_at`, `updated_at`, `roles`, `is_active`) VALUES
(256, 'emoen', 'heloise.littel@kiehn.com', '^@FxLpH>?R4Usi|', '2019-06-15 21:16:01', '2019-07-11 06:19:11', '["ROLE_MODERATOR"]', 0),
(257, 'donnelly.virginia', 'wisoky.clifford@gmail.com', 'a)bQsrun', '2019-01-17 14:46:38', '2019-05-15 20:07:27', '["ROLE_MODERATOR"]', 0),
(258, 'ericka.williamson', 'mathilde.reilly@yahoo.com', 'Lk><a.>40G|$7[', '2019-05-31 18:32:55', '2019-06-10 03:10:18', '["ROLE_MODERATOR"]', 0),
(259, 'lockman.annabell', 'pwill@hotmail.com', '<*d,-R"(?w4v9bOW&VH', '2019-02-23 14:28:46', '2019-03-27 18:36:23', '["ROLE_MODERATOR"]', 0),
(260, 'ubaldo69', 'kling.jacky@conn.com', 'WS%hSz_rQk&|X', '2019-01-31 12:27:15', '2019-05-11 21:57:23', '["ROLE_ADMIN"]', 0),
(261, 'ethelyn92', 'oromaguera@cartwright.org', 'AV7\\ert=[]g]A7:', '2018-12-27 05:47:50', '2019-05-07 09:30:00', '["ROLE_ADMIN"]', 0),
(262, 'brett.schaefer', 'cruecker@fay.com', '\'KBH&G', '2019-05-14 07:23:26', '2019-07-12 11:34:54', '["ROLE_USER"]', 0),
(263, 'mariano.mayert', 'tremaine82@ledner.com', '!t<]M)h[L}e(o', '2019-05-22 11:19:31', '2019-05-25 17:15:39', '["ROLE_MODERATOR"]', 0),
(264, 'tiana23', 'stephon97@yahoo.com', 'P7kw%cM,1', '2019-05-25 03:21:49', '2019-05-30 02:54:22', '["ROLE_USER"]', 0),
(265, 'deion.king', 'leda56@yahoo.com', '0e,i;)', '2019-07-08 11:19:26', '2019-07-09 06:45:14', '["ROLE_MODERATOR"]', 0),
(266, 'monroe18', 'feichmann@yahoo.com', 'EIr89IUW-\\y/,\'%', '2019-05-16 12:25:52', '2019-05-18 14:00:55', '["ROLE_ADMIN"]', 0),
(267, 'bella.bins', 'maryse.kulas@gmail.com', '$BV:4\'fpfpl&H\\#y', '2019-03-09 23:56:54', '2019-07-10 15:07:28', '["ROLE_MODERATOR"]', 0),
(268, 'crona.agnes', 'loyce.kuhic@yahoo.com', 'x$P2Y7VS>L"', '2019-05-31 10:42:43', '2019-07-02 02:16:16', '["ROLE_MODERATOR"]', 0),
(269, 'nels.cole', 'qwalsh@hotmail.com', 'h[4Dx4)70xB9ulqmx]W', '2019-05-09 11:34:24', '2019-07-08 11:50:38', '["ROLE_MODERATOR"]', 0),
(270, 'cordia.rippin', 'kbeahan@wiegand.org', '0&>"Ii9', '2019-03-22 11:03:35', '2019-04-14 09:04:37', '["ROLE_USER"]', 0),
(271, 'cherman', 'allan.schuster@yahoo.com', '<N0E|JTxlwC', '2019-06-16 22:32:51', '2019-06-18 23:29:06', '["ROLE_USER"]', 0),
(272, 'xavier.wuckert', 'macie41@tremblay.net', '%{1@~Rnt`P-tmL', '2019-05-26 11:23:52', '2019-06-02 16:07:16', '["ROLE_USER"]', 0),
(273, 'lbashirian', 'mante.rashawn@stracke.com', 'L^3Id,OzYa~%', '2019-05-26 00:14:07', '2019-07-07 18:39:58', '["ROLE_USER"]', 0),
(274, 'carole19', 'ehudson@simonis.com', 'GZzz|Wy`F(I~,"j[8', '2019-04-18 20:50:15', '2019-05-24 08:41:56', '["ROLE_ADMIN"]', 0),
(275, 'elvis.jaskolski', 'jayne55@yahoo.com', 'gx.$g4b)r~', '2019-03-11 07:30:29', '2019-04-10 00:49:22', '["ROLE_ADMIN"]', 0),
(277, 'Tartanpion', 'Tartanpion@gmail.com', '$2y$13$vZQELl.3hx2Rupb0Qe3hv.75iHuJ2d2oNDbX64KMb3FhpwJqd6azW', '2019-07-12 21:51:47', '2019-07-12 21:51:47', '["ROLE_USER"]', 0),
(278, 'malou', 'malou@gmail.com', 'jesaispasquoi\r\n', '2019-07-12 21:59:18', '2019-07-12 21:59:18', '["ROLE_ADMIN"]', 0),
(279, 'profTournesol', 'profTournesol@tmahl.com', '$2y$13$bgjd2P0xpKvK4wEOYGHv/ui1dSXHTFn0r8PMKNmZGA5V56JNLtpt.', '2019-07-12 22:05:51', '2019-07-12 22:05:51', '["ROLE_USER"]', 0),
(281, 'ET', 'ET@mlkj.se', '$2y$13$TK9kdDSC8DpNN2ma0U7MfO/Xsq0YZtAPx4VX7SlFK4Ff4euMpqV4C', '2019-07-12 22:07:15', '2019-07-12 22:07:15', '["ROLE_USER"]', 0),
(282, 'superman', 'superman@gmail.fr', '$2y$12$Lr6g89OXyrtefoOYCkterOzHTtzLtRHps7svjZpsiFX3PBvfTf4Nq', '2019-07-13 11:33:16', '2019-07-13 11:33:16', '["ROLE_ADMIN"]', 0);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `anwser`
--
ALTER TABLE `anwser`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_52B675AE1E27F6BF` (`question_id`),
  ADD KEY `IDX_52B675AEA76ED395` (`user_id`);

--
-- Index pour la table `migration_versions`
--
ALTER TABLE `migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_B6F7494EA76ED395` (`user_id`);

--
-- Index pour la table `question_tag`
--
ALTER TABLE `question_tag`
  ADD PRIMARY KEY (`question_id`,`tag_id`),
  ADD KEY `IDX_339D56FB1E27F6BF` (`question_id`),
  ADD KEY `IDX_339D56FBBAD26311` (`tag_id`);

--
-- Index pour la table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `anwser`
--
ALTER TABLE `anwser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=308;
--
-- AUTO_INCREMENT pour la table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=334;
--
-- AUTO_INCREMENT pour la table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `tag`
--
ALTER TABLE `tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=327;
--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=283;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `anwser`
--
ALTER TABLE `anwser`
  ADD CONSTRAINT `FK_52B675AE1E27F6BF` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`),
  ADD CONSTRAINT `FK_52B675AEA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `FK_B6F7494EA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `question_tag`
--
ALTER TABLE `question_tag`
  ADD CONSTRAINT `FK_339D56FB1E27F6BF` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_339D56FBBAD26311` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
