-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2021 at 05:17 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_es`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_anak`
--

CREATE TABLE `data_anak` (
  `id` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `umur` int(11) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `nama_ortu` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_anak`
--

INSERT INTO `data_anak` (`id`, `nama`, `umur`, `gender`, `nama_ortu`) VALUES
(1, 'Matilda', 33, 'P', 'Maemunnah');

-- --------------------------------------------------------

--
-- Table structure for table `data_hasil`
--

CREATE TABLE `data_hasil` (
  `id` int(11) NOT NULL,
  `anak_id` int(11) NOT NULL,
  `hasil_id` int(11) NOT NULL,
  `pemeriksa_id` int(11) NOT NULL,
  `tgl_tes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_hasil`
--

INSERT INTO `data_hasil` (`id`, `anak_id`, `hasil_id`, `pemeriksa_id`, `tgl_tes`) VALUES
(1, 1, 3, 1, 1621428978),
(2, 1, 3, 1, 1621429848);

-- --------------------------------------------------------

--
-- Stand-in structure for view `data_hasil_joined`
-- (See below for the actual view)
--
CREATE TABLE `data_hasil_joined` (
`id` int(11)
,`tgl_tes` int(11)
,`nama` varchar(128)
,`umur` int(11)
,`gender` varchar(1)
,`nama_ortu` varchar(128)
,`keputusan` varchar(128)
);

-- --------------------------------------------------------

--
-- Table structure for table `hasil_keputusan`
--

CREATE TABLE `hasil_keputusan` (
  `id` int(11) NOT NULL,
  `keputusan` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hasil_keputusan`
--

INSERT INTO `hasil_keputusan` (`id`, `keputusan`) VALUES
(1, 'Normal'),
(2, 'Suspect'),
(3, 'Untestable');

-- --------------------------------------------------------

--
-- Table structure for table `sektor`
--

CREATE TABLE `sektor` (
  `id` int(11) NOT NULL,
  `sektor` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sektor`
--

INSERT INTO `sektor` (`id`, `sektor`) VALUES
(1, 'Personal Social'),
(2, 'Fine Motoric Adaptive'),
(3, 'Language'),
(4, 'Gross Motoric');

-- --------------------------------------------------------

--
-- Table structure for table `soal_access_main`
--

CREATE TABLE `soal_access_main` (
  `id` int(11) NOT NULL,
  `umur` int(11) NOT NULL,
  `soal_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `soal_access_main`
--

INSERT INTO `soal_access_main` (`id`, `umur`, `soal_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 2, 2),
(4, 2, 3),
(5, 3, 2),
(6, 3, 3),
(7, 3, 4),
(8, 4, 2),
(9, 4, 3),
(10, 4, 4),
(11, 5, 3),
(12, 5, 4),
(13, 5, 5),
(14, 6, 4),
(15, 6, 5),
(16, 6, 6),
(17, 7, 4),
(18, 7, 5),
(19, 7, 6),
(20, 8, 4),
(21, 8, 5),
(22, 8, 6),
(23, 9, 6),
(24, 9, 7),
(25, 9, 9),
(26, 10, 7),
(27, 10, 8),
(28, 10, 9),
(29, 11, 7),
(30, 11, 8),
(31, 11, 9),
(32, 11, 10),
(33, 12, 8),
(34, 12, 9),
(35, 12, 10),
(36, 12, 11),
(37, 13, 9),
(38, 13, 10),
(39, 13, 11),
(40, 14, 10),
(41, 14, 11),
(42, 14, 12),
(43, 14, 13),
(44, 15, 11),
(45, 15, 12),
(46, 15, 13),
(47, 16, 12),
(48, 16, 13),
(49, 16, 14),
(50, 17, 13),
(51, 17, 14),
(52, 17, 15),
(53, 18, 14),
(54, 18, 15),
(55, 18, 16),
(56, 19, 14),
(57, 19, 15),
(58, 19, 16),
(59, 20, 14),
(60, 20, 15),
(61, 20, 16),
(62, 21, 15),
(63, 21, 16),
(64, 21, 18),
(65, 22, 15),
(66, 22, 16),
(67, 22, 18),
(68, 23, 15),
(69, 23, 16),
(70, 23, 17),
(71, 23, 18),
(72, 24, 16),
(73, 24, 17),
(74, 24, 18),
(75, 24, 19),
(76, 27, 17),
(77, 27, 18),
(78, 27, 19),
(79, 30, 17),
(80, 30, 18),
(81, 30, 19),
(82, 33, 18),
(83, 33, 19),
(84, 33, 20),
(85, 33, 21),
(86, 36, 19),
(87, 36, 20),
(88, 36, 21),
(89, 39, 19),
(90, 39, 20),
(91, 39, 21),
(92, 39, 23),
(93, 42, 20),
(94, 42, 21),
(95, 42, 23),
(96, 42, 24),
(97, 45, 21),
(98, 45, 22),
(99, 45, 23),
(100, 45, 24),
(101, 48, 22),
(102, 48, 23),
(103, 48, 24),
(104, 48, 25),
(105, 51, 22),
(106, 51, 23),
(107, 51, 24),
(108, 51, 25),
(109, 54, 22),
(110, 54, 23),
(111, 54, 24),
(112, 54, 25),
(113, 57, 22),
(114, 57, 23),
(115, 57, 24),
(116, 57, 25),
(117, 60, 22),
(118, 60, 23),
(119, 60, 24),
(120, 60, 25),
(121, 63, 23),
(122, 63, 24),
(123, 63, 25),
(124, 66, 23),
(125, 66, 24),
(126, 66, 25),
(127, 69, 23),
(128, 69, 24),
(129, 69, 25),
(130, 72, 23),
(131, 72, 24),
(132, 72, 25),
(133, 1, 26),
(134, 2, 26),
(135, 2, 27),
(136, 3, 26),
(137, 3, 27),
(138, 3, 29),
(139, 4, 28),
(140, 4, 29),
(141, 4, 30),
(142, 5, 29),
(143, 5, 30),
(144, 5, 31),
(145, 6, 29),
(146, 6, 30),
(147, 6, 31),
(148, 7, 33),
(149, 7, 34),
(150, 7, 35),
(151, 8, 34),
(152, 8, 35),
(153, 8, 36),
(154, 9, 34),
(155, 9, 35),
(156, 9, 36),
(157, 10, 36),
(158, 10, 37),
(159, 10, 38),
(160, 11, 36),
(161, 11, 37),
(162, 11, 38),
(163, 12, 36),
(164, 12, 37),
(165, 12, 38),
(166, 13, 37),
(167, 13, 38),
(168, 13, 39),
(169, 14, 37),
(170, 14, 38),
(171, 14, 39),
(172, 15, 38),
(173, 15, 39),
(174, 15, 40),
(175, 16, 39),
(176, 16, 40),
(177, 16, 41),
(178, 17, 39),
(179, 17, 40),
(180, 17, 41),
(181, 18, 40),
(182, 18, 41),
(183, 18, 42),
(184, 19, 40),
(185, 19, 41),
(186, 19, 42),
(187, 20, 40),
(188, 20, 41),
(189, 20, 42),
(190, 21, 40),
(191, 21, 41),
(192, 21, 42),
(193, 22, 41),
(194, 22, 42),
(195, 22, 43),
(196, 23, 41),
(197, 23, 42),
(198, 23, 43),
(199, 24, 41),
(200, 24, 42),
(201, 24, 43),
(202, 27, 42),
(203, 27, 43),
(204, 27, 44),
(205, 30, 42),
(206, 30, 43),
(207, 30, 44),
(208, 33, 43),
(209, 33, 44),
(210, 33, 46),
(211, 36, 44),
(212, 36, 45),
(213, 36, 46),
(214, 39, 45),
(215, 39, 46),
(216, 39, 47),
(217, 42, 45),
(218, 42, 46),
(219, 42, 47),
(220, 45, 46),
(221, 45, 47),
(222, 45, 48),
(223, 48, 46),
(224, 48, 47),
(225, 48, 48),
(226, 51, 49),
(227, 51, 50),
(228, 51, 51),
(229, 54, 49),
(230, 54, 50),
(231, 54, 51),
(232, 57, 49),
(233, 57, 50),
(234, 57, 51),
(235, 60, 49),
(236, 60, 50),
(237, 60, 51),
(238, 63, 51),
(239, 63, 52),
(240, 63, 53),
(241, 66, 51),
(242, 66, 52),
(243, 66, 53),
(244, 69, 52),
(245, 69, 53),
(246, 69, 54),
(247, 72, 52),
(248, 72, 53),
(249, 72, 54),
(250, 1, 55),
(251, 1, 56),
(252, 2, 55),
(253, 2, 56),
(254, 2, 57),
(255, 2, 58),
(256, 2, 59),
(257, 3, 55),
(258, 3, 56),
(259, 3, 57),
(260, 3, 58),
(261, 3, 59),
(262, 4, 57),
(263, 4, 58),
(264, 4, 59),
(265, 4, 60),
(266, 5, 59),
(267, 5, 60),
(268, 5, 61),
(269, 5, 63),
(270, 6, 60),
(271, 6, 61),
(272, 6, 62),
(273, 6, 63),
(274, 7, 62),
(275, 7, 63),
(276, 7, 64),
(277, 7, 65),
(278, 7, 66),
(279, 8, 62),
(280, 8, 63),
(281, 8, 64),
(282, 8, 65),
(283, 8, 66),
(284, 9, 63),
(285, 9, 64),
(286, 9, 65),
(287, 9, 66),
(288, 10, 64),
(289, 10, 65),
(290, 10, 66),
(291, 10, 67),
(292, 11, 64),
(293, 11, 65),
(294, 11, 66),
(295, 11, 67),
(296, 12, 65),
(297, 12, 66),
(298, 12, 67),
(299, 12, 68),
(300, 13, 66),
(301, 13, 67),
(302, 13, 68),
(303, 13, 69),
(304, 14, 67),
(305, 14, 68),
(306, 14, 69),
(307, 14, 70),
(308, 15, 67),
(309, 15, 68),
(310, 15, 69),
(311, 15, 70),
(312, 16, 67),
(313, 16, 68),
(314, 16, 69),
(315, 16, 70),
(316, 17, 68),
(317, 17, 69),
(318, 17, 70),
(319, 17, 71),
(320, 18, 68),
(321, 18, 69),
(322, 18, 70),
(323, 18, 71),
(324, 19, 69),
(325, 19, 70),
(326, 19, 71),
(327, 20, 71),
(328, 20, 72),
(329, 20, 73),
(330, 20, 77),
(331, 21, 73),
(332, 21, 74),
(333, 21, 75),
(334, 21, 77),
(335, 22, 73),
(336, 22, 74),
(337, 22, 75),
(338, 22, 77),
(339, 23, 74),
(340, 23, 75),
(341, 23, 76),
(342, 23, 77),
(343, 24, 74),
(344, 24, 75),
(345, 24, 76),
(346, 24, 77),
(347, 27, 75),
(348, 27, 76),
(349, 27, 77),
(350, 27, 78),
(351, 30, 78),
(352, 30, 79),
(353, 30, 80),
(354, 30, 86),
(355, 33, 78),
(356, 33, 79),
(357, 33, 80),
(358, 33, 86),
(359, 36, 80),
(360, 36, 81),
(361, 36, 82),
(362, 36, 85),
(363, 36, 86),
(364, 39, 83),
(365, 39, 84),
(366, 39, 85),
(367, 39, 86),
(368, 42, 86),
(369, 42, 87),
(370, 42, 88),
(371, 42, 90),
(372, 45, 86),
(373, 45, 87),
(374, 45, 88),
(375, 45, 89),
(376, 45, 90),
(377, 48, 87),
(378, 48, 88),
(379, 48, 89),
(380, 48, 90),
(381, 51, 87),
(382, 51, 88),
(383, 51, 89),
(384, 51, 90),
(385, 54, 87),
(386, 54, 88),
(387, 54, 89),
(388, 54, 90),
(389, 57, 90),
(390, 57, 91),
(391, 57, 92),
(392, 57, 93),
(393, 60, 90),
(394, 60, 91),
(395, 60, 92),
(396, 60, 93),
(397, 63, 90),
(398, 63, 91),
(399, 63, 92),
(400, 63, 93),
(401, 66, 90),
(402, 66, 91),
(403, 66, 92),
(404, 66, 93),
(405, 69, 90),
(406, 69, 91),
(407, 69, 92),
(408, 69, 93),
(409, 72, 90),
(410, 72, 91),
(411, 72, 92),
(412, 72, 93),
(413, 1, 94),
(414, 1, 95),
(415, 2, 94),
(416, 2, 95),
(417, 2, 96),
(418, 3, 96),
(419, 3, 97),
(420, 3, 98),
(421, 3, 99),
(422, 4, 98),
(423, 4, 99),
(424, 4, 100),
(425, 4, 101),
(426, 4, 102),
(427, 5, 99),
(428, 5, 100),
(429, 5, 101),
(430, 5, 102),
(431, 6, 100),
(432, 6, 101),
(433, 6, 102),
(434, 6, 103),
(435, 7, 101),
(436, 7, 102),
(437, 7, 103),
(438, 8, 101),
(439, 8, 102),
(440, 8, 103),
(441, 8, 104),
(442, 9, 104),
(443, 9, 105),
(444, 9, 106),
(445, 10, 104),
(446, 10, 105),
(447, 10, 106),
(448, 11, 104),
(449, 11, 105),
(450, 11, 106),
(451, 11, 107),
(452, 12, 106),
(453, 12, 107),
(454, 12, 108),
(455, 13, 107),
(456, 13, 108),
(457, 13, 109),
(458, 13, 110),
(459, 14, 108),
(460, 14, 109),
(461, 14, 110),
(462, 14, 111),
(463, 15, 108),
(464, 15, 109),
(465, 15, 110),
(466, 15, 111),
(467, 16, 110),
(468, 16, 111),
(469, 16, 112),
(470, 17, 111),
(471, 17, 112),
(472, 17, 113),
(473, 18, 111),
(474, 18, 112),
(475, 18, 113),
(476, 19, 111),
(477, 19, 112),
(478, 19, 113),
(479, 19, 114),
(480, 20, 111),
(481, 20, 112),
(482, 20, 113),
(483, 20, 114),
(484, 21, 112),
(485, 21, 113),
(486, 21, 114),
(487, 21, 116),
(488, 22, 112),
(489, 22, 113),
(490, 22, 114),
(491, 22, 116),
(492, 23, 112),
(493, 23, 113),
(494, 23, 114),
(495, 23, 115),
(496, 23, 116),
(497, 24, 113),
(498, 24, 114),
(499, 24, 115),
(500, 24, 116),
(501, 27, 114),
(502, 27, 115),
(503, 27, 116),
(504, 30, 114),
(505, 30, 115),
(506, 30, 116),
(507, 33, 115),
(508, 33, 116),
(509, 33, 117),
(510, 33, 118),
(511, 36, 116),
(512, 36, 117),
(513, 36, 118),
(514, 36, 119),
(515, 39, 118),
(516, 39, 119),
(517, 39, 121),
(518, 42, 118),
(519, 42, 119),
(520, 42, 120),
(521, 42, 121),
(522, 45, 119),
(523, 45, 120),
(524, 45, 121),
(525, 48, 119),
(526, 48, 120),
(527, 48, 121),
(528, 48, 122),
(529, 51, 119),
(530, 51, 120),
(531, 51, 121),
(532, 51, 122),
(533, 54, 120),
(534, 54, 121),
(535, 54, 122),
(536, 54, 123),
(537, 57, 120),
(538, 57, 121),
(539, 57, 122),
(540, 57, 123),
(541, 57, 124),
(542, 60, 122),
(543, 60, 123),
(544, 60, 124),
(545, 60, 125),
(546, 63, 122),
(547, 63, 123),
(548, 63, 124),
(549, 63, 125),
(550, 66, 122),
(551, 66, 123),
(552, 66, 124),
(553, 66, 125),
(554, 69, 122),
(555, 69, 123),
(556, 69, 124),
(557, 69, 125),
(558, 72, 122),
(559, 72, 123),
(560, 72, 124),
(561, 72, 125);

-- --------------------------------------------------------

--
-- Stand-in structure for view `soal_full_main`
-- (See below for the actual view)
--
CREATE TABLE `soal_full_main` (
`id` int(11)
,`umur` int(11)
,`soal_id` int(11)
,`id_sektor` int(11)
,`desc_soal` varchar(256)
,`petunjuk` varchar(256)
);

-- --------------------------------------------------------

--
-- Table structure for table `soal_list`
--

CREATE TABLE `soal_list` (
  `id` int(11) NOT NULL,
  `id_sektor` int(11) NOT NULL,
  `desc_soal` varchar(256) NOT NULL,
  `petunjuk` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `soal_list`
--

INSERT INTO `soal_list` (`id`, `id_sektor`, `desc_soal`, `petunjuk`) VALUES
(1, 1, 'Menatap muka', 'None'),
(2, 1, 'Membalas senyum pemeriksa', 'Mengajak anak untuk tersenyum dengan memberi senyuman, berbicara dan melambaikan tangan, jangan menyentuh anak.'),
(3, 1, 'Tersenyum spontan', 'Mengajak anak untuk tersenyum dengan memberi senyuman, berbicara dan melambaikan tangan, jangan menyentuh anak.'),
(4, 1, 'Mengamati tangannya', 'Anak harus mengamati tangannya selama beberapa detik'),
(5, 1, 'Berusaha menggapai mainan', 'None'),
(6, 1, 'Makan sendiri', 'None'),
(7, 1, 'Tepuk tangan', 'None'),
(8, 1, 'Menyatakan keinginan', 'None'),
(9, 1, 'Daag-daag dengan tangan', 'None'),
(10, 1, 'Main bola dengan pemeriksa', 'None'),
(11, 1, 'Menirukan kegiatan', 'None'),
(12, 1, 'Minum dengan cangkir', 'None'),
(13, 1, 'Membantu di rumah', 'None'),
(14, 1, 'Menggunakan sendok dan garpu', 'None'),
(15, 1, 'Membuka pakaian', 'None'),
(16, 1, 'Menyuapi boneka', 'None'),
(17, 1, 'Memakai baju', 'None'),
(18, 1, 'Gosok gigi dengan bantuan', 'Orang tua dapat memberi petunjuk cara menggosok gigi dan menaruh pasta pada sikat gigi'),
(19, 1, 'Cuci dan mengeringkan tangan', 'None'),
(20, 1, 'Menyebut nama teman', 'None'),
(21, 1, 'Memakai T-shirt', 'None'),
(22, 1, 'Berpakaian tanpa bantuan', 'Anak tidak harus mampu menalikan sepatu atau mengancingkan baju/menutup resleting di bagian belakang'),
(23, 1, 'Bermain ular tangga / kartu', 'None'),
(24, 1, 'Gosok gigi tanpa bantuan', 'None'),
(25, 1, 'Mengambil makan', 'None'),
(26, 2, 'Mengikuti ke garis tengah', 'None'),
(27, 2, 'Mengikuti lewat garis tengah', 'None'),
(28, 2, 'Memegang icik-icik', 'None'),
(29, 2, 'Tangan Bersentuhan', 'None'),
(30, 2, 'Mengikuti 180 derajat', 'Gerakkan benang perlahan-laha, seperti busur secara bolak-balik dari satu sisi ke sisi yang lainnya kira-kira berjarak 20 cm di atas wajah anak'),
(31, 2, 'Mengamati manik-manik', 'None'),
(32, 2, 'Meraih', 'Lulus jika anak memegang kericikan yang disentuhkan ke belakang atau ujung jarinya'),
(33, 2, 'Mencari benang', 'Lulus jika anak berusaha mencari kemana benang hilang. Benang harus dijatuhkan secepatnya dari pandangan anak tanpa pemeriksa menggerakkan tangan'),
(34, 2, 'Menggaruk manik-manik', 'None'),
(35, 2, 'Memindahkan kubus', 'Anak harus memindahkan balok dari tangan satu ke tangan yang lainnya tanpa bantuan dari tubuhnya, mulut atau meja.'),
(36, 2, 'Mengambil dua buah kubus', 'None'),
(37, 2, 'Memegang dengan ibu jari dan jari', 'Lulus jika anak dapat mengambil manik-manik dengan menggunakan ibu jari dan jarinya (menjepit).'),
(38, 2, 'Membenturkan 2 kubus', 'None'),
(39, 2, 'Menaruh kubus di cangkir', 'None'),
(40, 2, 'Mencoret-coret', 'None'),
(41, 2, 'Ambil manik-manik ditunjukkan', 'None'),
(42, 2, 'Menara dari 2 kubus', 'None'),
(43, 2, 'Menara dari 4 kubus', 'None'),
(44, 2, 'Menara dari 6 kubus', 'None'),
(45, 2, 'Meniru garis vertikal', 'Garis boleh bervariasi, sekitar 30 derajat atau kurang dari garis yang dibuat oleh pemeriksa.'),
(46, 2, 'Menara dari 8 kubus', 'None'),
(47, 2, 'Menggoyangkan ibu jari', 'Buatlah genggaman tangan dengan ibu jari menghadap ke atas dan goyangkan ibu jari. Lulus jika anak dapat menirukan gerakan tanpa menggerakkan jari selain ibu jarinya.'),
(48, 2, 'Mencontoh O', 'Lulus jika membentuk lingkaran tertutup, gagal jika gerakan terus melingkar'),
(49, 2, 'Menggambar orang 3 bagian', 'Waktu menilai, setiap pasang (2 tangan, 2 kaki) dihitung sebagai 1 bagian'),
(50, 2, 'Mencontoh +', 'Lulus jika kedua garis berpotongan mendekati titik tengah'),
(51, 2, 'Memilih garis yang lebih panjang', 'Berikan gambar 2 garis vertikal dengan ukuran yang berbeda. Tanyakan garis mana yang lebih panjang? (bukan lebih besar). Putarlah ke atas secara terbalik dan ulangi. Lulus jika dapat menjawab dengan benar sebanyak 3 dari 3 kali atau 5 dari 6 kali.'),
(52, 2, 'Mencontoh persegi ditunjukkan', 'Biarkan anak mencontoh terlebih dahulu, jika gagal beri petunjuk.'),
(53, 2, 'Menggambar orang 6 bagian', 'Waktu menilai, setiap pasang (2 tangan, 2 kaki) dihitung sebagai 1 bagian'),
(54, 2, 'Mencontoh persegi', 'Biarkan anak mencontoh terlebih dahulu, jika gagal beri petunjuk.'),
(55, 3, 'Bereaksi terhadap bel', 'None'),
(56, 3, 'Bersuara', 'None'),
(57, 3, 'Oooo / Aaaah', 'None'),
(58, 3, 'Tertawa', 'None'),
(59, 3, 'Berteriak', 'None'),
(60, 3, 'Menoleh ke bunyi icik-icik', 'Masukkan 1 kubus ke dalam cangkir, kemudian kocok perlahan di dekat telinga anak tetapi di luar pandangan anak, ulangi pada telinga yang lain'),
(61, 3, 'Menoleh ke arah suara', 'None'),
(62, 3, 'Satu silabel', 'None'),
(63, 3, 'Meniru bunyi kata-kata', 'None'),
(64, 3, 'Papa/mama tidak spesifik', 'None'),
(65, 3, 'Kombinasi silabel', 'None'),
(66, 3, 'Mengoceh', 'None'),
(67, 3, 'Papa/mama spesifik', 'None'),
(68, 3, '1 kata', 'None'),
(69, 3, '2 kata', 'None'),
(70, 3, '3 kata', 'None'),
(71, 3, '6 kata', 'None'),
(72, 3, 'Menunjuk 2 gambar', 'Suruh anak untuk menunjuk ke arah gambar berdasarkan apa yang disebutkan oleh pemeriksa (1. Kucing, 2. Kuda, 3. Burung, 4. Anjing, 5. Manusia). Lulus 2 dari 5'),
(73, 3, 'Kombinasi kata', 'None'),
(74, 3, 'menyebut 1 gambar', 'Tunjukkan 1 gambar dan minta anak untuk menyebutkan namanya. Tidak lulus jika hanya menyebutkan suaranya.'),
(75, 3, 'Menyebut bagian badan', 'gunakan boneka, katakan pada anak untuk menunjukkan mana hidung, mata, telinga, mulut, tangan, kaki, perut, dan rambut. Lulus 6 dari 8.'),
(76, 3, 'Menunjuk 4 gambar', 'Suruh anak untuk menunjuk ke arah gambar berdasarkan apa yang disebutkan oleh pemeriksa (1. Kucing, 2. Kuda, 3. Burung, 4. Anjing, 5. Manusia). Lulus 4 dari 5'),
(77, 3, 'Bicara dengan dimengerti', 'None'),
(78, 3, 'Menyebut 4 gambar', 'Tunjukkan 4 gambar dan minta anak untuk menyebutkan namanya. Tidak lulus jika hanya menyebutkan suaranya.'),
(79, 3, 'Mengetahui 2 kegiatan', 'Gunakan gambar yang ada, tanyakan pada anak: mana yang terbang?... Mana yang berbunyi meong?... Mana yang berbicara?... Mana berlari berderap?.. Mana yang bergonggong?... Lulus 2 dari 5'),
(80, 3, 'Mengerti 2 kata sifat', 'Tanyakan pada anak, apa yang kamu lakukan bila kamu dingin?... Lelah?... Lapar?... Lulus 2 dari 3'),
(81, 3, 'Menyebut 1 warna', 'None'),
(82, 3, 'Kegunaan 2 benda', 'Tanyakan pada anak, apa gunanya cangkir?... Apa gunanya kursi?... Apa gunanya pensil?... Kata kata yang menunjukkan kegiatan harus termasuk dalam jawaban anak.'),
(83, 3, 'Menghitung 1 kubus', 'Lulus jika anak menyebutkan dengan benar berapa banyaknya jumlah kubus yang diujikan.'),
(84, 3, 'Kegunaan 3 benda', 'Tanyakan pada anak, apa gunanya cangkir?... Apa gunanya kursi?... Apa gunanya pensil?... Kata kata yang menunjukkan kegiatan harus termasuk dalam jawaban anak.'),
(85, 3, 'mengetahui 4 kegiatan', 'Gunakan gambar yang ada, tanyakan pada anak: mana yang terbang?... Mana yang berbunyi meong?... Mana yang berbicara?... Mana berlari berderap?.. Mana yang bergonggong?... Lulus 4 dari 5'),
(86, 3, 'Bicara semua dimengerti', 'None'),
(87, 3, 'Mengerti 4 kata depan', 'Katakan pada anak: letakkan kubus di atas meja, di bawah meja, di depan pemeriksa, di belakang pemeriksa. Lulus jika berhasil 4 dari 4 ( dilarang untuk memberi petunjuk menggunakan mata atau kepala).'),
(88, 3, 'Menyebut 4 warna', 'None'),
(89, 3, 'Mengartikan 5 kata', 'Tanyakan pada anak: apa itu bola? ? Danau?... Meja?... Rumah?... Pisang?... Gorden?...pagar?...langit-langit?... Lulus jika anak mampu menjelaskan beserta kegunaan, bentuk, dibuat dari apa dan kategori umum dari benda tersebut. Lulus 5 dari 8.'),
(90, 3, 'Mengetahui 3 kata sifat', 'Tanyakan pada anak, apa yang kamu lakukan bila kamu dingin?... Lelah?... Lapar?... Lulus 2 dari 3'),
(91, 3, 'Menghitung 5 kubus', 'Lulus jika anak menyebutkan dengan benar berapa banyaknya jumlah kubus yang diujikan.'),
(92, 3, 'Berlawanan 2', 'Tanyakan pada anak: jika kuda itu besar maka tikus itu?... Jika api itu panas, maka es itu?... Jika matahari bersinar pada siang hari, bulan bercahaya pada?.... Lulus jika berhasil 2 dari 3.'),
(93, 3, 'Mengartikan 7 kata', 'Tanyakan pada anak: apa itu bola? ? Danau?... Meja?... Rumah?... Pisang?... Gorden?...pagar?...langit-langit?... Lulus jika anak mampu menjelaskan beserta kegunaan, bentuk, dibuat dari apa dan kategori umum dari benda tersebut. Lulus 7 dari 8.'),
(94, 4, 'Gerakan seimbang', 'None'),
(95, 4, 'Mengangkat kepala', 'None'),
(96, 4, 'Kepala terangkat 45 derajat', 'None'),
(97, 4, 'Kepala terangkat 90 derajat', 'None'),
(98, 4, 'Duduk kepala tegak', 'None'),
(99, 4, 'Menumpu badan pada kaki', 'None'),
(100, 4, 'Dada terangkat menumpu satu lengan', 'None'),
(101, 4, 'Membalik', 'None'),
(102, 4, 'Bangkit kepala tegak', 'None'),
(103, 4, 'Duduk tanpa pegangan', 'None'),
(104, 4, 'Berdiri tanpa pegangan', 'None'),
(105, 4, 'Bangkit waktu berdiri', 'None'),
(106, 4, 'Bangkit terus duduk', 'None'),
(107, 4, 'Berdiri 2 detik', 'None'),
(108, 4, 'Berdiri sendiri', 'None'),
(109, 4, 'Membungkuk kemudian berdiri', 'None'),
(110, 4, 'Berjalan dengan baik', 'None'),
(111, 4, 'Berjalan mundur', 'None'),
(112, 4, 'Lari', 'None'),
(113, 4, 'Berjalan naik tangga', 'Anak hanya boleh menggunakan dinding atau kayu palang, bukan orang, tidak boleh merangkak.'),
(114, 4, 'Menendang bola ke depan', 'None'),
(115, 4, 'Melompat', 'None'),
(116, 4, 'Melempar bola, lengan ke atas', 'Anak harus melemparkan bola di atas bahu ke arah pemeriksa dengan jarak paling dekat 1 meter'),
(117, 4, 'Loncat jauh', 'Anak harus melompat melampaui panjang kertas (22 cm)'),
(118, 4, 'Berdiri satu kaki 1 detik', 'None'),
(119, 4, 'Berdiri satu kaki 2 detik', 'None'),
(120, 4, 'Melompat dengan satu kaki', 'None'),
(121, 4, 'Berdiri satu kaki 3 detik', 'None'),
(122, 4, 'Berdiri satu kaki 4 detik', 'None'),
(123, 4, 'Berdiri satu kaki 5 detik', 'None'),
(124, 4, 'Berjalan tumit ke jari kaki', 'Katakan pada anak untuk berjalan lurus ke depan dengan tumit berjarak 2.5 cm di depan ibu jari kaki yang lain. Pemeriksa boleh memberikan contoh.'),
(125, 4, 'Berdiri satu kaki 6 detik', 'None');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `username`, `password`) VALUES
(1, 'Ednagea Almira', 'ednagealmira', '$2y$10$ekZsSrpSx/DF1cVbZjjm/..cyx2mOl..RCWqNyVDoy2YIG0FC0EYa');

-- --------------------------------------------------------

--
-- Structure for view `data_hasil_joined`
--
DROP TABLE IF EXISTS `data_hasil_joined`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `data_hasil_joined`  AS  select `data_hasil`.`id` AS `id`,`data_hasil`.`tgl_tes` AS `tgl_tes`,`data_anak`.`nama` AS `nama`,`data_anak`.`umur` AS `umur`,`data_anak`.`gender` AS `gender`,`data_anak`.`nama_ortu` AS `nama_ortu`,`hasil_keputusan`.`keputusan` AS `keputusan` from ((`data_hasil` join `data_anak` on(`data_hasil`.`anak_id` = `data_anak`.`id`)) join `hasil_keputusan` on(`data_hasil`.`hasil_id` = `hasil_keputusan`.`id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `soal_full_main`
--
DROP TABLE IF EXISTS `soal_full_main`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `soal_full_main`  AS  select `soal_access_main`.`id` AS `id`,`soal_access_main`.`umur` AS `umur`,`soal_access_main`.`soal_id` AS `soal_id`,`soal_list`.`id_sektor` AS `id_sektor`,`soal_list`.`desc_soal` AS `desc_soal`,`soal_list`.`petunjuk` AS `petunjuk` from (`soal_access_main` join `soal_list` on(`soal_access_main`.`soal_id` = `soal_list`.`id`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_anak`
--
ALTER TABLE `data_anak`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_hasil`
--
ALTER TABLE `data_hasil`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hasil_keputusan`
--
ALTER TABLE `hasil_keputusan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sektor`
--
ALTER TABLE `sektor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `soal_access_main`
--
ALTER TABLE `soal_access_main`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `soal_list`
--
ALTER TABLE `soal_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_anak`
--
ALTER TABLE `data_anak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `data_hasil`
--
ALTER TABLE `data_hasil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `hasil_keputusan`
--
ALTER TABLE `hasil_keputusan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sektor`
--
ALTER TABLE `sektor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `soal_access_main`
--
ALTER TABLE `soal_access_main`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=562;

--
-- AUTO_INCREMENT for table `soal_list`
--
ALTER TABLE `soal_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
