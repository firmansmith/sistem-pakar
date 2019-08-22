-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 22, 2019 at 01:02 PM
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
-- Table structure for table `hasil_diagnosa`
--

CREATE TABLE `hasil_diagnosa` (
  `id_diagnosa` int(2) NOT NULL,
  `kode_diagnosa` varchar(4) NOT NULL,
  `deskripsi` text NOT NULL,
  `kelebihan` text NOT NULL,
  `kekurangan` text NOT NULL,
  `saran` text NOT NULL,
  `jurusan` text NOT NULL,
  `karir` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hasil_diagnosa`
--

INSERT INTO `hasil_diagnosa` (`id_diagnosa`, `kode_diagnosa`, `deskripsi`, `kelebihan`, `kekurangan`, `saran`, `jurusan`, `karir`) VALUES
(1, 'ESFJ', '<p>\n	<span style=\"color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\">Extraversion (E): ESFJ senang memiliki banyak teman dan berinteraksi dengan mereka.</span><br style=\"outline: 0px; transition: all 0.3s ease 0s; color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\" />\n	<br style=\"outline: 0px; transition: all 0.3s ease 0s; color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\" />\n	<span style=\"color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\">Sensing (S): ESFJ menggunakan lima panca indera mereka saat memperoleh informasi dan menyukai detail akan sesuatu.</span><br style=\"outline: 0px; transition: all 0.3s ease 0s; color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\" />\n	<br style=\"outline: 0px; transition: all 0.3s ease 0s; color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\" />\n	<span style=\"color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\">Feeling (F): ESFJ menggunakan perasaan mereka saat memutuskan sesuatu dan sensitif pada kebutuhan orang lain.</span><br style=\"outline: 0px; transition: all 0.3s ease 0s; color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\" />\n	<br style=\"outline: 0px; transition: all 0.3s ease 0s; color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\" />\n	<span style=\"color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\">Judging (J): ESFJ senang pada lingkungan yang terstruktur dan terorganisir dengan baik.</span><br style=\"outline: 0px; transition: all 0.3s ease 0s; color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\" />\n	<br style=\"outline: 0px; transition: all 0.3s ease 0s; color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\" />\n	<span style=\"color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\">ESFJ merupakan pribadi yang mencintai orang lain, mereka bersikap hangat dengan orang lain. Mereka menggunakan Sensing dan Judging untuk mendapatkan informasi detail tentang orang lain dan menjadikan informasi tersebut sebagai&nbsp;</span><i style=\"outline: 0px; transition: all 0.3s ease 0s; color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\">supportive judgments</i><span style=\"color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\">. Mereka biasanya sangat baik dalam membaca orang lain dan mengerti sudut pandang mereka. Orang lain biasanya senang berada di dekat ESFJ karena ESFJ memiliki kemampuan untuk membuat orang lain merasa nyaman dengan mereka.</span><br style=\"outline: 0px; transition: all 0.3s ease 0s; color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\" />\n	<br style=\"outline: 0px; transition: all 0.3s ease 0s; color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\" />\n	<span style=\"color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\">Orang dengan kepribadian ESFJ melihat tanggung jawab sebagai hal yang serius. Mereka membutuhkan keamanan dan stabilitas serta memiliki fokus yang detail terhadap kehidupan. Mereka dapat melihat dan melakukan hal yang dibutuhkan sebelum orang lain melihat atau melakukannya. Mereka nyaman untuk melakukan pekerjaan tersebut dan biasanya sangat baik dalam mengerjakannya.&nbsp;</span><br style=\"outline: 0px; transition: all 0.3s ease 0s; color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\" />\n	<br style=\"outline: 0px; transition: all 0.3s ease 0s; color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\" />\n	<br style=\"outline: 0px; transition: all 0.3s ease 0s; color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\" />\n	<span style=\"color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\">ESFJ hangat dan enerjik. Mereka membutuhkan penerimaan dari orang lain untuk merasa baik bagi diri mereka sendiri. Mereka tersakiti karena perbedaan dan tidak mengerti ketidakbaikan. Mereka senang memberi dan membuat orang lain bahagia. Mereka ingin diri mereka diapresiasi apa adanya. Mereka juga sangan sensitif pada orang lain dan memberikan perhatian nyata secara tulus. Mereka merupakan individu yang kadang merasa berat melihat atau menerima kebenaran yang sulit tentang seseorang yang mereka sayangi.</span><br style=\"outline: 0px; transition: all 0.3s ease 0s; color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\" />\n	<br style=\"outline: 0px; transition: all 0.3s ease 0s; color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\" />\n	<span style=\"color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\">Semua ESFJ memiliki kecenderungan untuk mengontrol lingkungan mereka. Fungsi dominan mereka membutuhkan struktur dan terorganisasi. Mereka sangat nyaman dengan lingkungan yang terstruktur, dan tidak nyaman dengan sesuatu yang abstrak, teoritis, atau analisis impersonal. Mereka nyaman membuat tata tertib dan struktur dan sangat baik dalam mengerjakan pekerjaan mengenai hal tersebut.&nbsp;</span><br style=\"outline: 0px; transition: all 0.3s ease 0s; color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\" />\n	<br style=\"outline: 0px; transition: all 0.3s ease 0s; color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\" />\n	<span style=\"color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\">ESFJ menghargai dan percaya pada hukum dan aturan yang berlaku, mereka juga percaya bahwa orang laih seharusnya juga demikian. Mereka cenderung menerima aturan tanpa mempertanyakannya atau mengerti tentangnya. Kepribadian ESFJ banyak dimiliki oleh perempuan, namun laki-laki yang berkepribadian ESFJ biasanya tidak tampil feminim, atau sesuai dengan gender mereka untuk menjadi maskulin sedangkan ESFJ wanita biasanya tampil feminim.</span></p>\n', '<p>\n	<i style=\"outline: 0px; transition: all 0.3s ease 0s; color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\">Kekuatan yang dimiliki oleh orang yang memiliki kepribadian ESFJ antara lain:</i><br style=\"outline: 0px; transition: all 0.3s ease 0s; color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\" />\n	<br style=\"outline: 0px; transition: all 0.3s ease 0s; color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\" />\n	<span style=\"color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\">1. Memiliki kemampuan praktikal yang kuat</span><br style=\"outline: 0px; transition: all 0.3s ease 0s; color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\" />\n	<br style=\"outline: 0px; transition: all 0.3s ease 0s; color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\" />\n	<span style=\"color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\">ESFJ memiliki kemampuan manejerial yang baik dengan melakukan tugas sehari-hari dengan baik dan senang membuat orang yang ada di sekitar mereka terawat dengan baik.</span><br style=\"outline: 0px; transition: all 0.3s ease 0s; color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\" />\n	<br style=\"outline: 0px; transition: all 0.3s ease 0s; color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\" />\n	<span style=\"color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\">2. Perasaan kuat pada tugas/pekerjaan</span><br style=\"outline: 0px; transition: all 0.3s ease 0s; color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\" />\n	<br style=\"outline: 0px; transition: all 0.3s ease 0s; color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\" />\n	<span style=\"color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\">Orang yang memiliki kepribadian ESFJ memiliki perasaan tanggung jawab yang kuat pada tugas yang diberikan untuk mereka.&nbsp;</span><br style=\"outline: 0px; transition: all 0.3s ease 0s; color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\" />\n	<br style=\"outline: 0px; transition: all 0.3s ease 0s; color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\" />\n	<span style=\"color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\">3. Sangat loyal</span><br style=\"outline: 0px; transition: all 0.3s ease 0s; color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\" />\n	<br style=\"outline: 0px; transition: all 0.3s ease 0s; color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\" />\n	<span style=\"color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\">ESFJ memiliki kepribadian yang sangat loyal dan terpercaya baik sebagai pasangan dan pekerja. ESFJ merupakan pilar dari kelompok mereka, apakah itu keluarga, komunitas, grup, dan lainnya. Mereka akan menjadi orang yang selalu bisa diandalkan.</span><br style=\"outline: 0px; transition: all 0.3s ease 0s; color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\" />\n	<br style=\"outline: 0px; transition: all 0.3s ease 0s; color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\" />\n	<span style=\"color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\">4. Sensitif dan hangat</span><br style=\"outline: 0px; transition: all 0.3s ease 0s; color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\" />\n	<br style=\"outline: 0px; transition: all 0.3s ease 0s; color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\" />\n	<span style=\"color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\">Kepribadian ESFJ akan mencari keharmonisan dan peduli pada perasaan orang lain, menjadi berhati-hati untuk tidak menyakiti siapapun. ESFJ merupakan pemain tim yang kuat dan menciptakan solusi win-win bagi kelompoknya.</span></p>\n<p>\n	<span style=\"color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\">5. Bagus dalam berhubungan dengan orang lain</span></p>\n<p>\n	<span style=\"color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\"><span style=\"color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\">Kepribadian yang dimiliki membuat ESFJ disukai oleh orang lain. Mereka tidak ada masalah dalam berhubungan dengan orang lain atau mengikuti aturan sosial untuk membantu mereka mendapatkan peran aktif dalam komunitasnya.</span></span></p>\n', '<p>\n	<span style=\"color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\">1. Khawatir dengan status sosial mereka</span><br style=\"outline: 0px; transition: all 0.3s ease 0s; color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\" />\n	<br style=\"outline: 0px; transition: all 0.3s ease 0s; color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\" />\n	<span style=\"color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\">Orang ESFJ cenderung selalu khawatir dengan status sosial mereka sehingga akan berdampak pada keputusan-keputusan yang mereka ambil. Hal ini bisa membatasi kreativitas mereka untuk berkembang.</span><br style=\"outline: 0px; transition: all 0.3s ease 0s; color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\" />\n	<br style=\"outline: 0px; transition: all 0.3s ease 0s; color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\" />\n	<span style=\"color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\">2. Tidak fleksibel</span><br style=\"outline: 0px; transition: all 0.3s ease 0s; color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\" />\n	<br style=\"outline: 0px; transition: all 0.3s ease 0s; color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\" />\n	<span style=\"color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\">ESFJ mementingkan apa yang diterima secara umum dan akan khawatir dengan apapun yang tidak konvensional atau di luar mainstream. Orang dengan kepribadian ini kadang memaksa kepercayaan mereka sendiri untuk menjadi umum seperti yang lain.</span><br style=\"outline: 0px; transition: all 0.3s ease 0s; color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\" />\n	<br style=\"outline: 0px; transition: all 0.3s ease 0s; color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\" />\n	<span style=\"color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\">3. Enggan untuk berinovasi dan berimprovisasi</span><br style=\"outline: 0px; transition: all 0.3s ease 0s; color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\" />\n	<br style=\"outline: 0px; transition: all 0.3s ease 0s; color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\" />\n	<span style=\"color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\">Seperti sifat mereka yang cenderung kritis pada hal yang tak biasa, ESFJ kadang tidak ingin keluar dari zona nyaman mereka, selalu takut untuk menjadi berbeda.</span><br style=\"outline: 0px; transition: all 0.3s ease 0s; color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\" />\n	<br style=\"outline: 0px; transition: all 0.3s ease 0s; color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\" />\n	<span style=\"color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\">4. Lemah menghadapi kritikan</span><br style=\"outline: 0px; transition: all 0.3s ease 0s; color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\" />\n	<br style=\"outline: 0px; transition: all 0.3s ease 0s; color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\" />\n	<span style=\"color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\">ESFJ tidak menyukai konflik dan mereka akan sangat bertahan dan tersakiti jika ada yang mengkritik kebiasaan, kepercayaan, atau tradisi yang mereka miliki.</span><br style=\"outline: 0px; transition: all 0.3s ease 0s; color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\" />\n	<br style=\"outline: 0px; transition: all 0.3s ease 0s; color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\" />\n	<span style=\"color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\">5. Terlalu membutuhkan apresiasi</span><br style=\"outline: 0px; transition: all 0.3s ease 0s; color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\" />\n	<br style=\"outline: 0px; transition: all 0.3s ease 0s; color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\" />\n	<span style=\"color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\">ESFJ terlalu ingin mendengar apresiasi dari sekitarnya. Jika mereka tidak diapresiasi maka mereka akan mencoba untuk mendapatkannya dengan membuktikan bahwa mereka juga berharga.</span><br style=\"outline: 0px; transition: all 0.3s ease 0s; color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\" />\n	<br style=\"outline: 0px; transition: all 0.3s ease 0s; color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\" />\n	<span style=\"color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\">6. Terlalu&nbsp;</span><i style=\"outline: 0px; transition: all 0.3s ease 0s; color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\">selfless</i><br style=\"outline: 0px; transition: all 0.3s ease 0s; color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\" />\n	<span style=\"color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\">Orang ESFJ kadang mencoba untuk mencari perhatian yang kadang tidak dibutuhkan orang lain. Lebih jauh lagi ESFJ sering menolak kebutuhannya sendiri dan lebih fokus pada kebutuhan sekitarnya.</span></p>\n', '<p>\n	none</p>\n', '<p>\n	none</p>\n', '<ol>\n	<li>\n		<span style=\"color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\">&nbsp;tenaga penjualan</span></li>\n	<li>\n		<span style=\"color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\">pekerja kesehatan</span></li>\n	<li>\n		<span style=\"color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\">pekerja sosial</span></li>\n	<li>\n		<span style=\"color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\">public relation</span></li>\n	<li>\n		<span style=\"color: rgb(94, 94, 94); font-family: Montserrat, sans-serif; font-size: 15px;\">pekerja simpan-pinjam.</span></li>\n</ol>\n');

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
(34, 1, 'relasi kategori', 'admin/relasi_kategori', 'glyphicon glyphicon-pencil', 5, 1, 'Admin'),
(35, 1, 'hasil diagnosa', 'admin/hasil_diagnosa', 'glyphicon glyphicon-pushpin', 6, 1, 'Admin');

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
(21, 'user1', 'firman', 'muhamad.firman34@gmail.com', 'f52a49684359196a05a0c1d0bd266130', 'pelajar', NULL),
(22, 'bambang', 'bambang', 'admin@admin.com', '202cb962ac59075b964b07152d234b70', 'Pelajar', 'Laki-laki');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hasil_diagnosa`
--
ALTER TABLE `hasil_diagnosa`
  ADD PRIMARY KEY (`id_diagnosa`);

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
-- AUTO_INCREMENT for table `hasil_diagnosa`
--
ALTER TABLE `hasil_diagnosa`
  MODIFY `id_diagnosa` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tjm_menu`
--
ALTER TABLE `tjm_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
