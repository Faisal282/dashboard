-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 07, 2018 at 02:29 PM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portofolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `posting`
--

CREATE TABLE `posting` (
  `id` int(11) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `isi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posting`
--

INSERT INTO `posting` (`id`, `judul`, `gambar`, `isi`) VALUES
(1, 'Pengertian Posting', 'komputer.JPG', 'Posting adalah kegiatan untuk membuat artikel agar muncul di dalam media tersebut, yakni media internet. Kata-kata posting tidak hanya di gunakan dalam artikel dalam blog, tapi status dalam jejaring sosial seperti facebook dan tweet dalam twitter juga termasuk posting. Biasanya posting bermanfaat untuk memberi informasi.\r\nCara membuat posting\r\nLangkah2 membuat posting/thread\r\n1. Klik “post a new topic”\r\n2. Ketik Judul posting di box tab subject\r\n3. Ketik isi teks posting anda di dalam box teks yg tersedia\r\n4. Klik “send”. Finish\r\n*5. Untuk membalas posting yg sudah ada, klik “post reply” pada bagian bawahnya\r\n\r\nTips\r\n– Untuk meng-insert gambar di dalam posting; upload dulu file gambar anda (sebaiknya di imageshack.us). Klik ikon gambar, kemudian copy link file photo anda yg telah diupload ke dalam box yg tersedia. contoh pada gambar di bawah.\r\n\r\n– Apabila di posting anda ada link-nya (contoh: http://fukuoka.cool.ne.jp/ppifukuoka/), sebaiknya link tersebut di beri kode. Caranya; blok dulu link yg dimaksud kemudian klik ikon “code” seperti terlihat pada gambar di bawah.\r\n\r\n– Tersedia ikon Bold, Italic, Underline dan Script untuk membuat special karakter\r\n– Tersedia pula ikon “video” untuk memasukkan file video streaming langsung (e.g. Youtube, etc)\r\n– Sebaiknya “preview” dulu posting anda untuk mensimulasi hasil akhirnya\r\n– Klik “Edit” sekiranya ada perbaikan setelah posting ter-publish\r\n– Tersedia emoticon di sebelah bila diperlukan (highly recommended)'),
(2, 'Cavs Vs GSW', '', 'There were no controversial foul reversals, no gaffes and not nearly as much competitive spirit. This time around, LeBron James and the Cleveland Cavaliers were simply outplayed by Stephen Curry and the Golden State Warriors, with a huge fourth quarter closing a 122-103 win in Game 2 of the N.B.A. finals Sunday night at Oracle Arena in Oakland.\r\n\r\nCurry was electric, pouring in a finals-record nine 3-pointers as part of a 33-point effort. The two-time winner of the N.B.A.’s Most Valuable Player Award also contributed eight assists and seven rebounds.\r\n\r\nBut unlike James, who has so often had to go it alone, Curry had help from the entirety of his team’s eight-man rotation, with Kevin Durant contributing 26 points, Klay Thompson having 20 and the team’s surprising choice as a starting center, JaVale McGee, scoring 12.\r\n\r\nCleveland did everything it could to slow down Golden State’s runs for the first three quarters. Coach Tyronn Lue snuffed out a few rallies with smart timeouts, and James tried to keep up with the hot-shooting Warriors. But after the game entered the fourth quarter still somewhat competitive, Curry put it away with five of his 3-pointers coming in that final period.\r\n\r\n[Get Marc Stein’s N.B.A. insights sent directly to your inbox. Sign up by here.]\r\n\r\nThe impact of Curry’s explosion in the fourth was so extreme that Cleveland pulled its starters with more than four minutes remaining and the score well out of hand.'),
(3, 'Ramdhan tahun 2018 ', '', 'Hallo Ini berhasil Di edit \r\n'),
(12, 'asddsa', 'avatar-01.jpg', 'asddsa'),
(13, 'ddssaa', 'avatar-01.jpg', 'ddssaa');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(8) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `username`, `password`, `gambar`) VALUES
(1, 'faisallionel@gmail.com', 'Faisal Affan\r\n', '020802', 'faisal.JPG');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posting`
--
ALTER TABLE `posting`
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
-- AUTO_INCREMENT for table `posting`
--
ALTER TABLE `posting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
