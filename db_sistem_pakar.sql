-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 14, 2019 at 01:31 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sistem_pakar`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(40) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `gambar` varchar(255) NOT NULL DEFAULT 'default.png',
  `theme` varchar(20) NOT NULL DEFAULT 'sb_admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`, `nama`, `status`, `gambar`, `theme`) VALUES
(2, 'admin@admin.com', 'admin', 'admin', 1, 'default.png', 'sb_admin');

-- --------------------------------------------------------

--
-- Table structure for table `hasil_user`
--

CREATE TABLE `hasil_user` (
  `id_hasil` int(3) NOT NULL,
  `id_user` int(3) NOT NULL,
  `id_soal` int(3) NOT NULL,
  `id_jawaban` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hasil_user`
--

INSERT INTO `hasil_user` (`id_hasil`, `id_user`, `id_soal`, `id_jawaban`) VALUES
(11, 21, 1, 1),
(12, 21, 2, 22),
(13, 21, 3, 52),
(14, 21, 4, 7),
(15, 21, 5, 77),
(16, 21, 1, 2),
(17, 21, 2, 21),
(18, 21, 3, 51),
(19, 21, 4, 8),
(20, 21, 5, 77),
(21, 21, 1, 1),
(22, 21, 2, 21),
(23, 21, 3, 51),
(24, 21, 4, 7),
(25, 21, 5, 77),
(26, 21, 1, 1),
(27, 21, 2, 21),
(28, 21, 3, 52),
(29, 21, 4, 8),
(30, 21, 5, 77);

-- --------------------------------------------------------

--
-- Table structure for table `jawaban`
--

CREATE TABLE `jawaban` (
  `id_jawaban` int(3) NOT NULL,
  `id_soal` int(3) NOT NULL,
  `jawaban` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jawaban`
--

INSERT INTO `jawaban` (`id_jawaban`, `id_soal`, `jawaban`) VALUES
(1, 1, 'Berinteraksi dengan banyak orang, termasuk orang asing'),
(2, 1, 'Berinteraksi dengan sedikit orang, yang dikenal'),
(3, 8, 'Berbicara dengan mudah dan panjang pada orang asing'),
(4, 8, 'Berbicara sedikit pada orang asing'),
(5, 15, 'Jarang dipertanyakan'),
(6, 15, 'Sering dipertanyakan'),
(7, 4, 'Jarang bertanya-tanya apa yang akan dikatakan'),
(8, 4, 'Melatih terlebih dahulu apa yang akan dikatakan'),
(9, 29, 'Fundamental'),
(10, 29, 'Tambahan'),
(11, 36, 'Mendiskusikan sebuah isu'),
(12, 36, 'Mencapai sebuah kesepakatan untuk sebuah isu'),
(13, 43, 'Penghakiman berdasarkan logika'),
(14, 43, 'penghakiman berdasarkan nilai-nilai/prinsip'),
(15, 50, 'Menjadi tidak pandang bulu'),
(16, 50, 'Menjadi kritis'),
(17, 57, 'Pernyataan final dan tidak dapat berubah'),
(18, 57, 'Pernyataan pendahuluan dan sementara'),
(19, 10, 'Mudah didekati'),
(20, 10, 'Sedikit pendiam'),
(21, 2, 'Terlambat, dengan bertambah semangat'),
(22, 2, 'Lebih awal, dengan energi yang terkuras'),
(23, 9, 'Cepat mengangkatnya pertama kali'),
(24, 9, 'Berharap orang lain akan menjawab'),
(25, 16, 'Praktis'),
(26, 16, 'Aneh'),
(27, 11, 'Realistis daripada spekulatif'),
(28, 11, 'Spekulatif daripada realistis'),
(29, 21, 'Berkhayal dan tidak memperhatikan apa yang terjadi '),
(30, 21, 'Melakukan sesuatu yang membosankan'),
(31, 31, 'Prinsip'),
(32, 31, 'Emosi'),
(33, 41, 'Diyakinkan'),
(34, 41, 'Disentuh'),
(35, 51, 'Sesuai dengan deadlines'),
(36, 51, 'Kapan saja'),
(37, 61, 'Berhati-hati'),
(38, 61, 'Menurut kata hati'),
(39, 22, 'Orang yang bijaksana'),
(40, 22, 'orang yang imajinatif'),
(41, 12, 'Apa yang sesungguhnya'),
(42, 12, 'Apa yang mungkin'),
(43, 32, 'Hukum daripada keadaan'),
(44, 32, 'Keadaan daripada hukum'),
(45, 42, 'Obyektif'),
(46, 42, 'Personal'),
(47, 52, 'Tepat waktu'),
(48, 52, 'tidak tergesa-gesa'),
(49, 62, 'Tidak selesai'),
(50, 62, 'selesai'),
(51, 3, 'Terus mengikuti apa yang terjadi dengan anggota lain'),
(52, 3, 'ketinggalan berita'),
(53, 13, 'Melakukan dengan cara biasanya / umum'),
(54, 13, 'melakukan dengan cara sendiri'),
(55, 23, 'Mengatakan apa yang mereka maksud dan mengartikan apa yang mereka katakan '),
(56, 23, 'Mengekspresikan sesuatu lebih menggunakan analogi'),
(57, 33, 'Konsisten pikiran'),
(58, 33, 'Hubungan manusia yang harmonis'),
(61, 53, 'Tetap dan diputuskan'),
(62, 53, 'Tidak tetap dan tidak diputuskan'),
(63, 63, 'Serius dan meyakinkan'),
(64, 63, 'Easy-going'),
(65, 14, 'Berbicara untuk mereka sendiri'),
(66, 14, 'mengilustrasikan prinsip'),
(67, 24, 'Sesuatu yang mengganggu'),
(68, 24, 'Cukup menarik'),
(69, 34, 'Tenang '),
(70, 34, 'Hangat'),
(71, 54, 'Dengan Seleksi yang hati-hati'),
(72, 54, 'Secara random '),
(73, 44, 'Tidak adil'),
(74, 44, 'Tidak kasihan'),
(75, 64, 'Telah dibayar'),
(76, 64, 'Mendapat pilihan untuk membeli'),
(77, 5, 'Mengawali pembicaraan'),
(78, 5, 'Menunggu untuk didekati'),
(79, 25, 'Membuat diri mereka cukup berguna'),
(80, 25, 'Cukup melatih fantasi mereka'),
(81, 35, 'Standar yang telah ada'),
(82, 35, 'Perasaan'),
(83, 45, 'Tegas daripada lembut'),
(84, 45, 'Lembut daripada tegas'),
(85, 55, 'Kemampuan mengorganisasikan dan melakukan metode'),
(86, 55, 'Kemampuan beradaptasi dan membuat sesuatu'),
(87, 65, 'Tak terbatas'),
(88, 65, 'Terbuka'),
(89, 6, 'Membuat bersemangat'),
(90, 6, 'Membebani diri'),
(91, 26, 'Melihat bagaimana orang lain berguna'),
(92, 26, 'Melihat bagaimana orang lain melihat'),
(93, 46, 'Pikiran saya'),
(94, 46, 'Hati saya'),
(95, 56, 'Kontrak'),
(96, 56, 'Tidak tetap'),
(97, 66, 'Kerapihan'),
(98, 66, 'Apa saja yang muncul'),
(99, 7, 'Banyak teman dengan hubungan singkat'),
(100, 7, 'Sedikit teman dengan hubungan panjang'),
(101, 17, 'Fakta'),
(102, 17, 'Prinsip'),
(103, 27, 'Produksi dan distribusi'),
(104, 27, 'Desain dan riset'),
(105, 37, '\" Orang yang logis \"'),
(106, 37, '\" Orang yang sangat sentimental \"'),
(107, 47, 'Kokoh'),
(108, 47, 'Mengabdi'),
(109, 67, 'Setelah sebuah keputusan'),
(110, 67, 'Sebelum sebuah keputusan'),
(111, 18, 'Pengalaman'),
(112, 18, 'Firasat'),
(113, 28, 'Lebih mempraktekan daripada banyak akal'),
(114, 28, 'Lebih banyak akal daripada mempraktekan '),
(115, 38, 'Memiliki alasan jelas'),
(116, 38, 'Memiliki perasaan kuat'),
(117, 48, 'Berpikir adil'),
(118, 48, 'Simpatik'),
(119, 58, 'Meyakinkan bahwa semuanya telah teratur'),
(120, 58, 'Membiarkan semuanya terjadi apa adanya'),
(121, 68, 'Dinegosiasikan kembali'),
(122, 68, 'Random dan sambil lalu'),
(123, 19, 'Memiliki perasaan kuat terhadap kenyataan'),
(124, 19, 'Memiliki imajinasi yang hidup'),
(125, 39, 'Menjadi terlalu penuh gairah'),
(126, 39, 'Menjadi terlalu obyektif'),
(127, 49, 'Keras kepala'),
(128, 49, 'Berhati lembut'),
(129, 59, 'Terstruktur dan terjadwal'),
(130, 59, 'Tidak terstruktur dan tidak terjadwal'),
(131, 69, 'Rutin daripada tidak karuan'),
(132, 69, 'Tidak karuan daripada rutin'),
(133, 20, 'Lebih harfiah / sebenarnya'),
(134, 20, 'Lebih bersifat kiasan / perlambangan'),
(135, 30, 'Mengidentifikasi orang lain'),
(136, 30, 'Menggunakan orang lain'),
(137, 40, 'Jelas dalam beralasan'),
(138, 40, 'kuat dalam berperasaan'),
(139, 60, 'Acara yang direncanakan'),
(140, 60, 'Acara yang tidak direncanakan'),
(141, 70, 'Berhati-hati daripada spontan'),
(142, 70, 'spontan daripada berhati-hati');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(3) NOT NULL,
  `kategori` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `kategori`) VALUES
(1, 'kepribadian'),
(2, 'memproses'),
(3, 'keputusan'),
(4, 'fleksibilitas');

-- --------------------------------------------------------

--
-- Table structure for table `relasi_kategori`
--

CREATE TABLE `relasi_kategori` (
  `id_relasi_kategori` int(4) NOT NULL,
  `id_kategori` int(4) NOT NULL,
  `id_soal` int(4) NOT NULL,
  `id_jawaban` int(4) NOT NULL,
  `kode_relasi` varchar(1) NOT NULL,
  `deskripsi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `relasi_kategori`
--

INSERT INTO `relasi_kategori` (`id_relasi_kategori`, `id_kategori`, `id_soal`, `id_jawaban`, `kode_relasi`, `deskripsi`) VALUES
(1, 1, 1, 1, 'E', 'Ekstrovert'),
(2, 1, 1, 2, 'I', 'Introvert'),
(3, 1, 2, 1, 'E', 'Ekstrovert'),
(4, 1, 2, 2, 'I', 'Introvert'),
(5, 1, 3, 1, 'E', 'Ekstrovert'),
(6, 1, 3, 2, 'I', 'Introvert'),
(7, 1, 4, 1, 'E', 'Ekstrovert'),
(8, 1, 4, 2, 'I', 'Introvert'),
(9, 1, 5, 1, 'E', 'Ekstrovert'),
(10, 1, 5, 2, 'I', 'Introvert'),
(11, 1, 6, 1, 'E', 'Ekstrovert'),
(12, 1, 6, 2, 'I', 'Introvert'),
(13, 1, 7, 1, 'E', 'Ekstrovert'),
(14, 1, 7, 2, 'I', 'Introvert'),
(15, 1, 8, 1, 'E', 'Ekstrovert'),
(16, 1, 8, 2, 'I', 'Introvert'),
(17, 1, 9, 1, 'E', 'Ekstrovert'),
(18, 1, 9, 2, 'I', 'Introvert'),
(19, 1, 10, 1, 'E', 'Ekstrovert'),
(20, 1, 10, 2, 'I', 'Introvert'),
(21, 2, 11, 1, 'S', 'Sensing'),
(22, 2, 11, 2, 'N', 'Intuition'),
(23, 2, 12, 1, 'S', 'Sensing'),
(24, 2, 12, 2, 'N', 'Intuition'),
(25, 2, 13, 1, 'S', 'Sensing'),
(26, 2, 13, 2, 'N', 'Intuition'),
(27, 2, 14, 1, 'S', 'Sensing'),
(28, 2, 14, 2, 'N', 'Intuition'),
(29, 2, 15, 1, 'S', 'Sensing'),
(30, 2, 15, 2, 'N', 'Intuition'),
(31, 2, 16, 1, 'S', 'Sensing'),
(32, 2, 16, 2, 'N', 'Intuition'),
(33, 2, 17, 1, 'S', 'Sensing'),
(34, 2, 17, 2, 'N', 'Intuition'),
(35, 2, 18, 1, 'S', 'Sensing'),
(36, 2, 18, 2, 'N', 'Intuition'),
(37, 2, 19, 1, 'S', 'Sensing'),
(38, 2, 19, 2, 'N', 'Intuition'),
(39, 2, 20, 1, 'S', 'Sensing'),
(40, 2, 20, 2, 'N', 'Intuition'),
(41, 2, 21, 1, 'S', 'Sensing'),
(42, 2, 21, 2, 'N', 'Intuition'),
(43, 2, 22, 1, 'S', 'Sensing'),
(44, 2, 22, 2, 'N', 'Intuition'),
(45, 2, 23, 1, 'S', 'Sensing'),
(46, 2, 23, 2, 'N', 'Intuition'),
(47, 2, 24, 1, 'S', 'Sensing'),
(48, 2, 24, 2, 'N', 'Intuition'),
(49, 2, 25, 1, 'S', 'Sensing'),
(50, 2, 25, 2, 'N', 'Intuition'),
(51, 2, 26, 1, 'S', 'Sensing'),
(52, 2, 26, 2, 'N', 'Intuition'),
(53, 2, 27, 1, 'S', 'Sensing'),
(54, 2, 27, 2, 'N', 'Intuition'),
(55, 2, 28, 1, 'S', 'Sensing'),
(56, 2, 28, 2, 'N', 'Intuition'),
(57, 2, 29, 1, 'S', 'Sensing'),
(58, 2, 29, 2, 'N', 'Intuition'),
(59, 2, 30, 1, 'S', 'Sensing'),
(60, 2, 30, 2, 'N', 'Intuition'),
(61, 3, 31, 1, 'T', 'Thinking'),
(62, 3, 31, 2, 'F', 'Feeling'),
(63, 3, 32, 1, 'T', 'Thinking'),
(64, 3, 32, 2, 'F', 'Feeling'),
(65, 3, 33, 1, 'T', 'Thinking'),
(66, 3, 33, 2, 'F', 'Feeling'),
(67, 3, 34, 1, 'T', 'Thinking'),
(68, 3, 34, 2, 'F', 'Feeling'),
(69, 3, 35, 1, 'T', 'Thinking'),
(70, 3, 35, 2, 'F', 'Feeling'),
(71, 3, 36, 1, 'T', 'Thinking'),
(72, 3, 36, 2, 'F', 'Feeling'),
(73, 3, 37, 1, 'T', 'Thinking'),
(74, 3, 37, 2, 'F', 'Feeling'),
(75, 3, 38, 1, 'T', 'Thinking'),
(76, 3, 38, 2, 'F', 'Feeling'),
(77, 3, 39, 1, 'T', 'Thinking'),
(78, 3, 39, 2, 'F', 'Feeling'),
(79, 3, 40, 1, 'T', 'Thinking'),
(80, 3, 40, 2, 'F', 'Feeling'),
(81, 3, 41, 1, 'T', 'Thinking'),
(82, 3, 41, 2, 'F', 'Feeling'),
(83, 3, 42, 1, 'T', 'Thinking'),
(84, 3, 42, 2, 'F', 'Feeling'),
(85, 3, 43, 1, 'T', 'Thingking'),
(86, 3, 43, 2, 'F', 'Feeling'),
(87, 3, 44, 1, 'T', 'Thinking'),
(88, 3, 44, 2, 'F', 'Feeling'),
(89, 3, 45, 1, 'T', 'Thinking'),
(90, 3, 45, 2, 'F', 'Feeling'),
(91, 3, 46, 1, 'T', 'Thinking'),
(92, 3, 46, 2, 'F', 'Feeling'),
(93, 3, 47, 1, 'T', 'Thinking'),
(94, 3, 47, 2, 'F', 'Feeling'),
(95, 3, 48, 1, 'T', 'Thinking'),
(96, 3, 48, 2, 'F', 'Feeling'),
(97, 3, 49, 1, 'T', 'Thinking'),
(98, 3, 49, 2, 'F', 'Feeling'),
(99, 3, 50, 1, 'T', 'Thinking'),
(100, 3, 50, 2, 'F', 'Feeling'),
(101, 4, 51, 1, 'J', 'Judging'),
(102, 4, 51, 2, 'P', 'Perceiving'),
(103, 4, 52, 1, 'J', 'Judging'),
(104, 4, 52, 2, 'P', 'Perceiving'),
(105, 4, 53, 1, 'J', 'Judging'),
(106, 4, 53, 2, 'P', 'Perceiving'),
(107, 4, 54, 1, 'J', 'Judging'),
(108, 4, 54, 2, 'P', 'Perceiving'),
(109, 4, 55, 1, 'J', 'Judging'),
(110, 4, 55, 2, 'P', 'Perceiving'),
(111, 4, 56, 1, 'J', 'Judging'),
(112, 4, 56, 2, 'P', 'Perceiving'),
(113, 4, 57, 1, 'J', 'Judging'),
(114, 4, 57, 2, 'P', 'Perceiving'),
(115, 4, 58, 1, 'J', 'Judging'),
(116, 4, 58, 2, 'P', 'Perceiving'),
(117, 4, 59, 1, 'J', 'Judging'),
(118, 4, 59, 2, 'P', 'Perceiving'),
(119, 4, 60, 1, 'J', 'Judging'),
(120, 4, 60, 2, 'P', 'Perceiving'),
(121, 4, 61, 1, 'J', 'Judging'),
(122, 4, 61, 2, 'P', 'Perceiving'),
(123, 4, 62, 1, 'J', 'Judging'),
(124, 4, 62, 2, 'P', 'Perceiving'),
(125, 4, 63, 1, 'J', 'Judging'),
(126, 4, 63, 2, 'P', 'Perceiving'),
(127, 4, 64, 1, 'J', 'Judging'),
(128, 4, 64, 2, 'P', 'Perceiving'),
(129, 4, 65, 1, 'J', 'Judging'),
(130, 4, 65, 2, 'P', 'Perceiving'),
(131, 4, 66, 1, 'J', 'Judging'),
(132, 4, 66, 2, 'P', 'Perceiving'),
(133, 4, 67, 1, 'J', 'Judging'),
(134, 4, 67, 2, 'P', 'Perceiving'),
(135, 4, 68, 1, 'J', 'Judging'),
(136, 4, 68, 2, 'P', 'Perceiving'),
(137, 4, 69, 1, 'J', 'Judging'),
(138, 4, 69, 2, 'P', 'Perceiving'),
(139, 4, 70, 1, 'J', 'Judging'),
(140, 4, 70, 2, 'P', 'Perceiving');

-- --------------------------------------------------------

--
-- Table structure for table `soal`
--

CREATE TABLE `soal` (
  `id_soal` int(3) NOT NULL,
  `id_kategori` int(1) NOT NULL,
  `soal` varchar(255) NOT NULL,
  `urutan` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `soal`
--

INSERT INTO `soal` (`id_soal`, `id_kategori`, `soal`, `urutan`) VALUES
(1, 1, 'Di sebuah pesta, saya :', 1),
(2, 1, 'Di sebuah pesta, saya pulang :', 8),
(3, 1, 'Di komunitas atau kelompok sosial saya cenderung :', 15),
(4, 1, 'Saat menelpon, saya :', 22),
(5, 1, 'Di perusahaan, saya :', 29),
(6, 1, 'Interaksi baru dengan orang lain akan :', 36),
(7, 1, 'Saya lebih memilih :', 43),
(8, 1, 'Saya itu :', 50),
(9, 1, 'Saat telepon berbunyi, saya akan :', 57),
(10, 1, 'Saya lebih cenderung :', 64),
(11, 2, 'Saya Lebih :', 2),
(12, 2, 'Saya lebih tertarik pada :', 9),
(13, 2, 'Saat melakukan hal sehari-hari, saya lebih suka :', 16),
(14, 2, 'Fakta :', 23),
(15, 2, 'Akal sehat bagi saya :', 30),
(16, 2, 'Saya lebih sering :', 37),
(17, 2, 'Saya lebih pada :', 44),
(18, 2, 'Saya lebih percaya pada :', 51),
(19, 2, 'Saya itu lebih :', 58),
(20, 2, 'Saat menulis, saya memilih :', 65),
(21, 2, 'Yang lebih buruk bagi saya adalah :', 3),
(22, 2, 'Saya lebih tertarik pada :', 9),
(23, 2, 'Penulis seharusnya :', 17),
(24, 2, 'Seorang pengkhayal adalah :', 24),
(25, 2, 'Anak-anak sering tidak :', 31),
(26, 2, 'Saya lebih suka :', 38),
(27, 2, 'Saya lebih tertarik dengan :', 45),
(28, 2, 'Saya merasa :', 52),
(29, 2, 'Saya lebih tergerak pada :', 59),
(30, 2, 'Sulit bagi saya untuk :', 66),
(31, 3, 'Saya lebih terkesan dengan :', 4),
(32, 3, 'Saat menghakimi orang, saya berdasarkan :\r\n\r\n', 11),
(33, 3, 'Saya lebih tertarik pada :', 18),
(34, 3, 'Saya adalah seorang yang lebih :', 25),
(35, 3, 'Saat membuat keputusan, saya lebih nyaman dengan :', 32),
(36, 3, 'Saya lebih puas saat :', 39),
(37, 3, 'Ini merupakan sebuah pujian bagi saya :', 46),
(38, 3, 'Orang yang lebih pantas mendapat pujian yaitu yang :', 53),
(39, 3, 'Yang terlihat salah lebih besar adalah :', 60),
(40, 3, 'Saya berharap bahwa saya akan lebih :', 67),
(41, 3, 'Saya lebih tergerak dengan :', 5),
(42, 3, 'Dalam hal memandang orang lain, saya akan cenderung :', 12),
(43, 3, 'Saya lebih nyaman membuat :', 19),
(44, 3, 'Lebih buruk jika :', 26),
(45, 3, 'Saya lebih :', 33),
(46, 3, 'Yang lebih mengatur saya adalah :', 40),
(47, 3, 'Saya lebih menilai diri saya sebagai pribadi yang :', 47),
(48, 3, 'Saya Cenderung :', 54),
(49, 3, 'Saya melihat diri saya sebenarnya :', 61),
(50, 3, 'Kesalahan yang lebih besar adalah :', 68),
(51, 4, 'Saya lebih memilih bekerja :', 6),
(52, 4, 'Saya lebih :', 13),
(53, 4, 'Saya ingin sesuatu :', 20),
(54, 4, 'Seharusnya selalu membiarkan semua terjadi :', 27),
(55, 4, 'Saya lebih bangga pada :', 34),
(56, 4, 'Saya lebih nyaman bekerja dengan :', 41),
(57, 4, 'Saya lebih memilih :', 48),
(58, 4, 'Saya orang yang :', 55),
(59, 4, 'Situasi yang membuat saya lebih tertarik adalah yang lebih :', 62),
(60, 4, 'Kesalahan yang lebih besar adalah :', 69),
(61, 4, 'Saya lebih cenderung memilih :', 7),
(62, 4, 'Saya terganggu memiliki pekerjaan yang :', 14),
(63, 4, 'Saya cenderung :', 21),
(64, 4, 'Saya merasa lebih baik jika :', 28),
(65, 4, 'Saya lebih menaruh nilai pada :', 35),
(66, 4, 'Saya cenderung pada :', 42),
(67, 4, 'Saya lebih nyaman :', 49),
(68, 4, 'Pada sebuah hubungan seharusnya bisa :', 56),
(69, 4, 'Saya adalah orang yang lebih :', 63),
(70, 4, 'Saya cenderung lebih :', 70);

-- --------------------------------------------------------

--
-- Table structure for table `tjm_menu`
--

CREATE TABLE `tjm_menu` (
  `id` int(11) NOT NULL,
  `parent_menu` int(11) NOT NULL DEFAULT '1',
  `nama_menu` varchar(50) NOT NULL,
  `url_menu` varchar(50) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `urutan` tinyint(3) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `type` enum('Admin') NOT NULL DEFAULT 'Admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tjm_menu`
--

INSERT INTO `tjm_menu` (`id`, `parent_menu`, `nama_menu`, `url_menu`, `icon`, `urutan`, `status`, `type`) VALUES
(1, 1, 'root', '/', '', 0, 0, 'Admin'),
(2, 1, 'dashboard', 'admin/dashboard', 'fa fa-fw fa-dashboard', 1, 1, 'Admin'),
(3, 1, 'User Admin', 'admin/useradmin', 'fa fa-users', 99, 0, 'Admin'),
(4, 1, 'Menu', 'admin/menu', 'fa fa-gear', 100, 1, 'Admin'),
(25, 1, 'Master', 'admin/master', 'fa fa-ticket', 2, 0, 'Admin'),
(31, 1, 'Kategori', 'admin/kategori', 'glyphicon glyphicon-th-large', 2, 1, 'Admin'),
(32, 1, 'Soal', 'admin/soal', 'glyphicon glyphicon-list-alt', 3, 1, 'Admin'),
(33, 1, 'jawaban', 'admin/jawaban', 'glyphicon glyphicon-ok', 4, 1, 'Admin'),
(34, 1, 'relasi kategori', 'admin/relasi_kategori', 'glyphicon glyphicon-pencil', 5, 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `nama_lengkap` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `kelamin` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `nama_lengkap`, `email`, `password`, `status`, `kelamin`) VALUES
(21, 'user1', 'firman', 'muhamad.firman34@gmail.com', 'f52a49684359196a05a0c1d0bd266130', 'pelajar', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hasil_user`
--
ALTER TABLE `hasil_user`
  ADD PRIMARY KEY (`id_hasil`);

--
-- Indexes for table `jawaban`
--
ALTER TABLE `jawaban`
  ADD PRIMARY KEY (`id_jawaban`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `relasi_kategori`
--
ALTER TABLE `relasi_kategori`
  ADD PRIMARY KEY (`id_relasi_kategori`);

--
-- Indexes for table `soal`
--
ALTER TABLE `soal`
  ADD PRIMARY KEY (`id_soal`);

--
-- Indexes for table `tjm_menu`
--
ALTER TABLE `tjm_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `hasil_user`
--
ALTER TABLE `hasil_user`
  MODIFY `id_hasil` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `jawaban`
--
ALTER TABLE `jawaban`
  MODIFY `id_jawaban` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `relasi_kategori`
--
ALTER TABLE `relasi_kategori`
  MODIFY `id_relasi_kategori` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `soal`
--
ALTER TABLE `soal`
  MODIFY `id_soal` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `tjm_menu`
--
ALTER TABLE `tjm_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
