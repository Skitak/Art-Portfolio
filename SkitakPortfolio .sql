-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  Dim 29 avr. 2018 à 15:52
-- Version du serveur :  10.1.32-MariaDB
-- Version de PHP :  7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `SkitakPortfolio`
--

-- --------------------------------------------------------

--
-- Structure de la table `app_users`
--

CREATE TABLE `app_users` (
  `id` int(11) NOT NULL,
  `username` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_title` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `app_users`
--

INSERT INTO `app_users` (`id`, `username`, `password`, `about`, `about_title`) VALUES
(3, 'bas2205@live.fr', '$2y$13$LQTf/LvpEuEBJ4GQZdXHEOjfeYJcAEP3mLwLgyj93XM5h0sS6Bfni', 'fff ffffffffff fffffffff dffffffffffffffffff fffffffffffff ffffffffffffw qsd ddqsdd sqds ddsds dqsd qsd \r\nsqdfjsfcvbxcb\r\nqsdkfq xdf blqbs dfffffffff fffff  ffffffffff fffffffffff fffffff fffffff f ccxcx\r\nqsdfqnlnfsklns dqlndfg\r\nw ow\r\nqsjflsd<wxc\r\nsdffsd\r\nsqfdjs dsfv dsg\r\nsq;df bq qsfq\r\nAu revoir sd gdsh df zdrfsd cx fds', 'Bonjour à vous');

-- --------------------------------------------------------

--
-- Structure de la table `artwork`
--

CREATE TABLE `artwork` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `artwork`
--

INSERT INTO `artwork` (`id`, `project_id`, `image`, `thumbnail`) VALUES
(100, 1, '114a4869fd0e73627446f703e510f36d.jpeg', 'min_114a4869fd0e73627446f703e510f36d.jpeg'),
(101, 1, 'dc2119f75365263000e09d1493787c0d.jpeg', 'min_dc2119f75365263000e09d1493787c0d.jpeg'),
(102, 1, '1bce65b332dba1c8708597deecd27384.jpeg', 'min_1bce65b332dba1c8708597deecd27384.jpeg'),
(103, 1, '9a9fff2cf55e7cc68ef712cc074ac6b3.jpeg', 'min_9a9fff2cf55e7cc68ef712cc074ac6b3.jpeg'),
(104, 1, '55958fe80269308d66e8d88209961642.jpeg', 'min_55958fe80269308d66e8d88209961642.jpeg'),
(105, 1, '3860ea1f4b9e667330ae22d2261f3244.jpeg', 'min_3860ea1f4b9e667330ae22d2261f3244.jpeg'),
(106, 1, '336db771bf3d9907071cbed20dd0ecdb.jpeg', 'min_336db771bf3d9907071cbed20dd0ecdb.jpeg'),
(107, 1, 'f058fab8d22563033fdedb0f0e8868e9.jpeg', 'min_f058fab8d22563033fdedb0f0e8868e9.jpeg'),
(108, 1, 'f865353d4e28fbf45a73f6e29b24c615.jpeg', 'min_f865353d4e28fbf45a73f6e29b24c615.jpeg'),
(109, 1, 'fc66422ad5d9e7e99ecec527e5692a4f.jpeg', 'min_fc66422ad5d9e7e99ecec527e5692a4f.jpeg'),
(110, 1, '54d794671c73f50b15ffa2c2af09ac3d.jpeg', 'min_54d794671c73f50b15ffa2c2af09ac3d.jpeg'),
(111, 1, '4a40c59dd320af9622ad6cda7ea3324c.jpeg', 'min_4a40c59dd320af9622ad6cda7ea3324c.jpeg'),
(112, 1, '7b387bcd29781dcce5605d2781944533.jpeg', 'min_7b387bcd29781dcce5605d2781944533.jpeg'),
(113, 1, '68f133b58135dac7c01027cca390346e.jpeg', 'min_68f133b58135dac7c01027cca390346e.jpeg'),
(114, 1, '1e22490b105e9c077b64e28f9b8ae2fa.jpeg', 'min_1e22490b105e9c077b64e28f9b8ae2fa.jpeg'),
(115, 1, '8980617c50cff8fd5786596738b391ff.jpeg', 'min_8980617c50cff8fd5786596738b391ff.jpeg'),
(116, 1, '34cac91c68c1ad6e084362fff589a374.jpeg', 'min_34cac91c68c1ad6e084362fff589a374.jpeg'),
(117, 1, 'abbc1320d847a630610622e31b7abb75.jpeg', 'min_abbc1320d847a630610622e31b7abb75.jpeg'),
(118, 1, '34d4d790e3201d668df17d3fe7e0cbef.jpeg', 'min_34d4d790e3201d668df17d3fe7e0cbef.jpeg'),
(119, 1, '5b7709ab68d96d479423989a668dc124.jpeg', 'min_5b7709ab68d96d479423989a668dc124.jpeg'),
(120, 1, 'ebefa600703d227c4fc04bfb5459ae0d.jpeg', 'min_ebefa600703d227c4fc04bfb5459ae0d.jpeg'),
(121, 1, 'a119c25b92b9efc2c7a66667cd43ece6.jpeg', 'min_a119c25b92b9efc2c7a66667cd43ece6.jpeg'),
(122, 1, 'e997231b35e3e0ba2c266bb4d6abf947.jpeg', 'min_e997231b35e3e0ba2c266bb4d6abf947.jpeg'),
(123, 1, 'aea989c6d2ddb22010f3f2388166ba4d.jpeg', 'min_aea989c6d2ddb22010f3f2388166ba4d.jpeg'),
(124, 1, '5dcd0b6c7084e05f735498d01af81cee.jpeg', 'min_5dcd0b6c7084e05f735498d01af81cee.jpeg'),
(125, 2, '3686e6b6c04e32a3e4f30bf6b4819995.jpeg', 'min_3686e6b6c04e32a3e4f30bf6b4819995.jpeg'),
(126, 2, '901cc43db3631694696f765587dc5e44.jpeg', 'min_901cc43db3631694696f765587dc5e44.jpeg'),
(127, 2, '070a99465b0c87f8e9ea6a734921fb5e.jpeg', 'min_070a99465b0c87f8e9ea6a734921fb5e.jpeg'),
(128, 2, '959744157dc55e4f9c2918f6814368cb.jpeg', 'min_959744157dc55e4f9c2918f6814368cb.jpeg'),
(129, 2, '68e2f262cb8799ca64a240b2722d0078.jpeg', 'min_68e2f262cb8799ca64a240b2722d0078.jpeg'),
(130, 2, '20eaf0c79da7b030ef37138963fb0a92.jpeg', 'min_20eaf0c79da7b030ef37138963fb0a92.jpeg'),
(131, 2, 'c713a7fb1ed278ba9a041880e0fe012d.jpeg', 'min_c713a7fb1ed278ba9a041880e0fe012d.jpeg'),
(132, 2, '8049bd18bb965aee5b4c844f0aa5d951.jpeg', 'min_8049bd18bb965aee5b4c844f0aa5d951.jpeg'),
(133, 2, '59fea74e2d85397eb9057cc3a0865477.jpeg', 'min_59fea74e2d85397eb9057cc3a0865477.jpeg'),
(134, 2, '3e67b83298d10b90b9764165cc38fe4b.jpeg', 'min_3e67b83298d10b90b9764165cc38fe4b.jpeg'),
(135, 2, '67dcae92abd4c0346dcee6cedca70e94.jpeg', 'min_67dcae92abd4c0346dcee6cedca70e94.jpeg'),
(136, 2, 'c25014408ec9eff8dd4a76daebd75103.jpeg', 'min_c25014408ec9eff8dd4a76daebd75103.jpeg'),
(137, 2, 'e0db3423bf99dc1647db80e84d99c15f.jpeg', 'min_e0db3423bf99dc1647db80e84d99c15f.jpeg'),
(138, 2, '73a7c1c2d69ce761c17697a3abd1eb6b.jpeg', 'min_73a7c1c2d69ce761c17697a3abd1eb6b.jpeg'),
(140, 2, '14b84bb35308a8e011282c78fe329964.jpeg', 'min_14b84bb35308a8e011282c78fe329964.jpeg'),
(141, 2, '735cad1e19b8b3b8c0bc61427dd3f64f.jpeg', 'min_735cad1e19b8b3b8c0bc61427dd3f64f.jpeg'),
(142, 2, 'cc6c6a8fd59808631cf815e6cd886a63.jpeg', 'min_cc6c6a8fd59808631cf815e6cd886a63.jpeg'),
(143, 2, '0ff56461d20680781419dadb38719bbe.jpeg', 'min_0ff56461d20680781419dadb38719bbe.jpeg'),
(144, 2, '9fbf99bfccf691daefd60af90ef6bbe2.jpeg', 'min_9fbf99bfccf691daefd60af90ef6bbe2.jpeg'),
(145, 2, '9e0e534ec9980c5ba77b39bfe5a1868d.jpeg', 'min_9e0e534ec9980c5ba77b39bfe5a1868d.jpeg'),
(146, 2, '71f4d27081a1ed18f42342832c8fa59b.jpeg', 'min_71f4d27081a1ed18f42342832c8fa59b.jpeg'),
(148, 2, '256fe63acaaa93be305a7f1b98241250.jpeg', 'min_256fe63acaaa93be305a7f1b98241250.jpeg'),
(149, 2, '37e90c9c2eb60d207bc0189204e79913.jpeg', 'min_37e90c9c2eb60d207bc0189204e79913.jpeg'),
(150, 2, 'a329fd01b9152603fbc6306cc118af63.jpeg', 'min_a329fd01b9152603fbc6306cc118af63.jpeg'),
(151, 2, '6202798cb2ddcb22066beebca40c7341.jpeg', 'min_6202798cb2ddcb22066beebca40c7341.jpeg'),
(153, 2, '8f6de86bae50e222655cc5d78242d1e2.jpeg', 'min_8f6de86bae50e222655cc5d78242d1e2.jpeg'),
(154, 2, 'c9d6cb5bba768b0e706e91d8d4be241c.jpeg', 'min_c9d6cb5bba768b0e706e91d8d4be241c.jpeg'),
(156, 2, '7921e05998a8332084c1d790a9a32934.jpeg', 'min_7921e05998a8332084c1d790a9a32934.jpeg'),
(157, 2, 'f2baa578818fa9c0dee17be1dc1112b9.jpeg', 'min_f2baa578818fa9c0dee17be1dc1112b9.jpeg'),
(158, 2, '4b6ed6474e408913ddfe270ce9c82217.jpeg', 'min_4b6ed6474e408913ddfe270ce9c82217.jpeg'),
(159, 2, '40b96a4d98d6f9c9927965b473a2ad32.jpeg', 'min_40b96a4d98d6f9c9927965b473a2ad32.jpeg'),
(160, 2, 'ba6763cde69639069a0369f926b40718.jpeg', 'min_ba6763cde69639069a0369f926b40718.jpeg'),
(161, 2, '58068505084a10e60435ce3301cf2bd8.jpeg', 'min_58068505084a10e60435ce3301cf2bd8.jpeg'),
(162, 2, 'd8bb8649933544235e789b0e3f68e6b6.jpeg', 'min_d8bb8649933544235e789b0e3f68e6b6.jpeg'),
(163, 2, '2ca24c192dddd743d36059c03cd59285.jpeg', 'min_2ca24c192dddd743d36059c03cd59285.jpeg'),
(164, 2, '5ee8945d2b66647194ab918c7150ea78.jpeg', 'min_5ee8945d2b66647194ab918c7150ea78.jpeg'),
(165, 2, '308457261f6fafa340e5574a28b48f9f.jpeg', 'min_308457261f6fafa340e5574a28b48f9f.jpeg'),
(166, 2, 'c009b50d6903197386c1ea10c20094de.jpeg', 'min_c009b50d6903197386c1ea10c20094de.jpeg'),
(167, 2, '9008495c87d23af80a8aa6b933620b73.jpeg', 'min_9008495c87d23af80a8aa6b933620b73.jpeg'),
(168, 2, 'ee55b552149dc477b0fe197fd1e3feff.jpeg', 'min_ee55b552149dc477b0fe197fd1e3feff.jpeg'),
(169, 2, '3d6ae11b7d6aa53a50e32b0d167b951b.jpeg', 'min_3d6ae11b7d6aa53a50e32b0d167b951b.jpeg'),
(171, 2, 'ebd588ff69372a58e424050b89bfc857.jpeg', 'min_ebd588ff69372a58e424050b89bfc857.jpeg'),
(172, 2, 'cb9f787d0fa5ba74b83d28732bafc49f.jpeg', 'min_cb9f787d0fa5ba74b83d28732bafc49f.jpeg'),
(173, 2, '0459fb66eb92f44c8a15e23d2e2c3a87.jpeg', 'min_0459fb66eb92f44c8a15e23d2e2c3a87.jpeg'),
(174, 2, '7d5c344c579642dda43a3c0970730fc1.jpeg', 'min_7d5c344c579642dda43a3c0970730fc1.jpeg'),
(176, 2, '2b9be23fd0eed4b0680f5e8e738c51b7.jpeg', 'min_2b9be23fd0eed4b0680f5e8e738c51b7.jpeg'),
(177, 2, 'bb0aa5bb798c1c401dd411b1a42e526a.jpeg', 'min_bb0aa5bb798c1c401dd411b1a42e526a.jpeg'),
(179, 3, '1b28fecde54d90f26a445b19901be25e.jpeg', 'min_1b28fecde54d90f26a445b19901be25e.jpeg'),
(180, 3, 'eb0b8396876c20a7670d4b8b311bfc1d.jpeg', 'min_eb0b8396876c20a7670d4b8b311bfc1d.jpeg'),
(181, 3, '5e53c9ef285e8972972e21b39bec18df.jpeg', 'min_5e53c9ef285e8972972e21b39bec18df.jpeg'),
(182, 3, '3664e182e49d13e768b918872ff5aec1.jpeg', 'min_3664e182e49d13e768b918872ff5aec1.jpeg'),
(183, 3, 'f8fda14e142afa8bb209f8d23ec12904.jpeg', 'min_f8fda14e142afa8bb209f8d23ec12904.jpeg'),
(184, 3, 'd5cb58ca7a18c08a3a5d38649e765c19.jpeg', 'min_d5cb58ca7a18c08a3a5d38649e765c19.jpeg'),
(185, 3, '58ff34f1b2b37ec6262e20e989efc616.jpeg', 'min_58ff34f1b2b37ec6262e20e989efc616.jpeg'),
(186, 3, '66cb95a718a6a67262ddfa998c186c0a.jpeg', 'min_66cb95a718a6a67262ddfa998c186c0a.jpeg'),
(187, 3, '5d9a6f7147dbbf43740b873e767ff70e.jpeg', 'min_5d9a6f7147dbbf43740b873e767ff70e.jpeg'),
(188, 3, 'c0ae3bc30cb90dfb3920c0b5ff63da87.jpeg', 'min_c0ae3bc30cb90dfb3920c0b5ff63da87.jpeg'),
(189, 3, '0aea144a41c3ee6119dbae54b1aeff3f.jpeg', 'min_0aea144a41c3ee6119dbae54b1aeff3f.jpeg'),
(190, 3, '3267c19e60b5ee5ee857f11ad1332297.jpeg', 'min_3267c19e60b5ee5ee857f11ad1332297.jpeg'),
(191, 3, '6c1ca1c687306938f1933c5c9c1a05ca.jpeg', 'min_6c1ca1c687306938f1933c5c9c1a05ca.jpeg'),
(192, 3, '9efa7b6f2754c2b86ba5de9592d21630.jpeg', 'min_9efa7b6f2754c2b86ba5de9592d21630.jpeg'),
(193, 3, '1dffe0fefb57148e5fad7eacb2437b24.jpeg', 'min_1dffe0fefb57148e5fad7eacb2437b24.jpeg'),
(194, 3, '83345416c0d0579c25167fa61b1d53b3.jpeg', 'min_83345416c0d0579c25167fa61b1d53b3.jpeg'),
(195, 3, '6d0324508dca68783ab5c13421ac62d4.jpeg', 'min_6d0324508dca68783ab5c13421ac62d4.jpeg'),
(196, 3, '9ff296afe0a42d647dc9f151b9a5e226.jpeg', 'min_9ff296afe0a42d647dc9f151b9a5e226.jpeg'),
(197, 3, 'bba4e8d6bc84c3c4f56a0afb28e844f1.jpeg', 'min_bba4e8d6bc84c3c4f56a0afb28e844f1.jpeg'),
(198, 3, '303b7532841bf4ae0ae190c4a33fc1f7.jpeg', 'min_303b7532841bf4ae0ae190c4a33fc1f7.jpeg'),
(199, 3, '61a7b1602bd9f60f15d7fbce1800ff47.jpeg', 'min_61a7b1602bd9f60f15d7fbce1800ff47.jpeg'),
(200, 3, 'a5dd09633774813fc6b3f3fab756639e.jpeg', 'min_a5dd09633774813fc6b3f3fab756639e.jpeg'),
(201, 3, 'cd0400c0ed7c4965cfc84a62471c2029.jpeg', 'min_cd0400c0ed7c4965cfc84a62471c2029.jpeg'),
(202, 3, 'd245795f61ac5a5184df2bb5506cba52.jpeg', 'min_d245795f61ac5a5184df2bb5506cba52.jpeg'),
(203, 3, 'f8fa59021df15e654c3f8165fc205681.jpeg', 'min_f8fa59021df15e654c3f8165fc205681.jpeg'),
(204, 3, '6eaa73c6d3327fb33c40d1c2833cfc2a.jpeg', 'min_6eaa73c6d3327fb33c40d1c2833cfc2a.jpeg'),
(205, 3, '359854940011314e6c1be15edfc9fbd2.jpeg', 'min_359854940011314e6c1be15edfc9fbd2.jpeg'),
(206, 3, 'b72f3fe31ac22e8aeb7054fa062c3843.jpeg', 'min_b72f3fe31ac22e8aeb7054fa062c3843.jpeg'),
(207, 3, '7ed9be8473e0929e4c39c949e77ca00e.jpeg', 'min_7ed9be8473e0929e4c39c949e77ca00e.jpeg'),
(208, 3, '01e8f78eefb5a3967317982d3cc30e0e.jpeg', 'min_01e8f78eefb5a3967317982d3cc30e0e.jpeg'),
(209, 4, 'c1cf1e11ed745ba702ad7e7fe770f955.jpeg', 'min_c1cf1e11ed745ba702ad7e7fe770f955.jpeg'),
(210, 4, '348a5eb2dd547c9fd328241bdce28460.jpeg', 'min_348a5eb2dd547c9fd328241bdce28460.jpeg'),
(211, 4, '83ff2a0bbbb6a9f50fc287f0550372d6.jpeg', 'min_83ff2a0bbbb6a9f50fc287f0550372d6.jpeg'),
(212, 4, '96bbb95f2e00386a126dfe97d019dc90.jpeg', 'min_96bbb95f2e00386a126dfe97d019dc90.jpeg'),
(215, 4, 'bc2440d17c6783d5f3356f7f52958370.jpeg', 'min_bc2440d17c6783d5f3356f7f52958370.jpeg'),
(217, 4, '25969935208ed93bee90eb6a5a0b8a59.jpeg', 'min_25969935208ed93bee90eb6a5a0b8a59.jpeg'),
(218, 4, '890bea901f484c64071284d6ddb86c0e.jpeg', 'min_890bea901f484c64071284d6ddb86c0e.jpeg'),
(219, 4, '21e6600b7cf91966ad9f2df46bb4fa0b.jpeg', 'min_21e6600b7cf91966ad9f2df46bb4fa0b.jpeg'),
(221, 4, 'd509381fada4a20ed507ddb1ab2a883f.jpeg', 'min_d509381fada4a20ed507ddb1ab2a883f.jpeg'),
(222, 4, '2b404e14674e33db0e506ab6cc6160d1.jpeg', 'min_2b404e14674e33db0e506ab6cc6160d1.jpeg'),
(223, 4, 'fdcf9bc75e8f927034357a64bb854c65.jpeg', 'min_fdcf9bc75e8f927034357a64bb854c65.jpeg'),
(224, 4, 'a5073936ab6597edc0d1d2e4bbb18da2.jpeg', 'min_a5073936ab6597edc0d1d2e4bbb18da2.jpeg'),
(225, 4, 'e169fed093256cefb9f6b58dab2e7436.jpeg', 'min_e169fed093256cefb9f6b58dab2e7436.jpeg'),
(227, 4, '80194b35a88da7d255ef142e74e486ff.jpeg', 'min_80194b35a88da7d255ef142e74e486ff.jpeg'),
(228, 4, '2cf535499b22ee8423a85eddabed629e.jpeg', 'min_2cf535499b22ee8423a85eddabed629e.jpeg'),
(230, 4, '4ec0af4dd008e51443681e0336ad0aef.jpeg', 'min_4ec0af4dd008e51443681e0336ad0aef.jpeg'),
(231, 4, 'b0a543c3829035e7a2f2bb1df5f9956d.jpeg', 'min_b0a543c3829035e7a2f2bb1df5f9956d.jpeg'),
(232, 4, '6dea6f558b9d254871342f0bfdcc550a.jpeg', 'min_6dea6f558b9d254871342f0bfdcc550a.jpeg'),
(233, 4, 'fcc70fe4a287b07fbeab0660822768ca.jpeg', 'min_fcc70fe4a287b07fbeab0660822768ca.jpeg'),
(235, 4, '73cb0603d671e7ed3333ba6c2fdb6fe8.jpeg', 'min_73cb0603d671e7ed3333ba6c2fdb6fe8.jpeg'),
(236, 4, 'bb95bdde8781dfea3905473c6a95ee09.jpeg', 'min_bb95bdde8781dfea3905473c6a95ee09.jpeg'),
(237, 5, '667d191f9b792ed0da6bb07b767ab521.jpeg', 'min_667d191f9b792ed0da6bb07b767ab521.jpeg'),
(238, 5, 'f44c85d2897f4fdbc8ae88ca1dd11ea1.jpeg', 'min_f44c85d2897f4fdbc8ae88ca1dd11ea1.jpeg'),
(239, 5, '3fef752f5bc903fb8c5682dc6e1c2427.jpeg', 'min_3fef752f5bc903fb8c5682dc6e1c2427.jpeg'),
(240, 5, 'e219a71bf40a507f63feaad93caa8e3c.jpeg', 'min_e219a71bf40a507f63feaad93caa8e3c.jpeg'),
(241, 5, '051cf67a3b2a6641e23cc8ece8631eba.jpeg', 'min_051cf67a3b2a6641e23cc8ece8631eba.jpeg'),
(242, 5, '9741b3d75a3f060bb31e183d2b5e2db6.jpeg', 'min_9741b3d75a3f060bb31e183d2b5e2db6.jpeg'),
(243, 5, 'f87ad1380fce2a7991ef3fef68e00acb.jpeg', 'min_f87ad1380fce2a7991ef3fef68e00acb.jpeg'),
(244, 5, 'c0929764c2219276f5fd589fe4cfff91.jpeg', 'min_c0929764c2219276f5fd589fe4cfff91.jpeg'),
(245, 5, 'eb02487ad7e0b362701f8ba29775d0dc.jpeg', 'min_eb02487ad7e0b362701f8ba29775d0dc.jpeg'),
(246, 5, '42a0af28da260d0483e7ab1adf874f7b.jpeg', 'min_42a0af28da260d0483e7ab1adf874f7b.jpeg'),
(247, 5, 'ae0f42096343ebb21f451b7da61d0d9f.jpeg', 'min_ae0f42096343ebb21f451b7da61d0d9f.jpeg'),
(248, 5, 'cb17058bf5ced66cd7061320eed671de.jpeg', 'min_cb17058bf5ced66cd7061320eed671de.jpeg');

-- --------------------------------------------------------

--
-- Structure de la table `migration_versions`
--

CREATE TABLE `migration_versions` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `migration_versions`
--

INSERT INTO `migration_versions` (`version`) VALUES
('20180410185718'),
('20180410211727'),
('20180411140256'),
('20180411180219'),
('20180412205641'),
('20180412210544'),
('20180412224511'),
('20180422204814');

-- --------------------------------------------------------

--
-- Structure de la table `project`
--

CREATE TABLE `project` (
  `id` int(11) NOT NULL,
  `front_art_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `project`
--

INSERT INTO `project` (`id`, `front_art_id`, `name`, `description`, `color`, `display_order`) VALUES
(1, 121, '-30 °', 'Sortie à -30° Chicoutimi', '#FFFFFF', 2),
(2, 169, 'Val-Jalbert', 'Petit village reconstitué des années 1920 - Chicoutimi', '#008B8B', 3),
(3, 200, 'Random Chicoutimi', 'Quelque part sur une île', '#E374FF', 4),
(4, 218, 'Québec', 'Petit passage à Québec bien sympathique.', '#838AC1', 5),
(5, 240, 'Montreal', 'Peu de photos, sry', '#0082B9', 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `app_users`
--
ALTER TABLE `app_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_C2502824F85E0677` (`username`);

--
-- Index pour la table `artwork`
--
ALTER TABLE `artwork`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_881FC576166D1F9C` (`project_id`);

--
-- Index pour la table `migration_versions`
--
ALTER TABLE `migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_2FB3D0EE6ED9A3F3` (`front_art_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `app_users`
--
ALTER TABLE `app_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `artwork`
--
ALTER TABLE `artwork`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;

--
-- AUTO_INCREMENT pour la table `project`
--
ALTER TABLE `project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `artwork`
--
ALTER TABLE `artwork`
  ADD CONSTRAINT `FK_881FC576166D1F9C` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`);

--
-- Contraintes pour la table `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `FK_2FB3D0EE6ED9A3F3` FOREIGN KEY (`front_art_id`) REFERENCES `artwork` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
