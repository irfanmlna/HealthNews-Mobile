-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2024 at 05:56 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbkesehatan`
--

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `isi_berita` text NOT NULL,
  `gambar_berita` varchar(255) NOT NULL,
  `tgl_berita` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id`, `judul`, `isi_berita`, `gambar_berita`, `tgl_berita`) VALUES
(1, 'Apakah Kafein Berpengaruh pada Jantung? Berikut Penjelasan Ahli...', 'Apakah kafein berpengaruh pada jantung? Dokter spesialis jantung dan pembuluh darah dr. Alexandra Gabriella, Sp.J.P FIHA menjelaskan, mengonsumsi kafein bisa mengakibatkan irama jantung menjadi cepat atau aritmia. \r\n\r\nHal itu karena kafein mengandung zat simpatomimetik yang memicu kenaikan tekanan darah. “Kafein itu membawa agen simpatomimetik, artinya dia memang sebenarnya ditemukan zat untuk memicu saraf simpatis yang memicu tubuh kita tensi tinggi, detak bertambah jadi cepat,” kata dokter Gabriella dikutip dari Antara, Jumat (7/6/2024). \r\n\r\nKarena efek tersebut, Gabriella menyarankan untuk orang dengan riwayat darah tinggi dan dengan gangguan irama jantung atau aritmia sebaiknya hindari konsumsi kafein terlalu sering. Jika tidak memiliki riwayat masalah aritmia, sebaiknya mengonsumsi kafein secukupnya dan untuk menghilangkan kantuk saja. Selain kafein, faktor lain yang dapat memengaruhi irama jantung yaitu stres. Dokter Gabriella mengatakan, stres bisa memicu gangguan irama jantung menjadi cepat atau aritmia karena hormonal. “Jadi kalau ada gangguan hormonal itu juga bisa menyebabkan gangguan detak jantungnya jadi cepat atau aritmia, salah satu yang memicu kalau stres memicu detang jantung tambahan,” katanya.\r\n', 'berita1.jpg', '2024-06-09 17:43:04'),
(2, 'Penyebab Mata Silinder dan Cara Mengobatinya\r\n', 'Penyebab Mata Silinder Mata silinder adalah gangguan refraksi mata, sama halnya dengan rabun jauh (miopia) atau rabun dekat (hiperopia), yang terjadi akibat mata tidak mampu membiaskan cahaya sehingga titik fokus tidak tepat pada retina. Dilansir dari American Academy of Ophthalmology, mata silinder disebabkan oleh kelengkungan kornea atau lensa mata yang tidak teratur. Bila kornea atau lensa mata tidak melengkung secara merata, maka sinar cahaya tidak akan dibiaskan dengan benar. Hal inilah yang membuat pandangan menjadi kabur atau terdistorsi pada jarak dekat atau pun jauh. Mata silinder boleh dibilang sebagai keluhan mata yang sangat umum. Sayangnya, hingga kini para ahli belum mengetahui pasti mengapa bentuk kornea dapat berbeda pada setiap orang. Namun, ada dugaan kalau penyebab mata silinder ini faktor genetik dari orangtua. Di samping itu, seseorang juga bisa mengalami astigmatisme ketika mengalami cedera mata atau operasi mata.\r\n', 'berita2.jpg', '2024-06-09 17:43:04'),
(3, '11 Makanan untuk Bantu Menurunkan Kolesterol Tinggi', 'Daftar makanan untuk bantu menurunkan kolesterol tinggi Berikut macam makanan yang bisa membantu Anda menurunkan kolesterol tinggi: Gandum utuh Dikutip dari Health, studi menunjukkan bahwa mengonsumsi gandum utuh secara teratur dapat secara signifikan mengurangi faktor risiko penyakit jantung, termasuk kadar kolesterol total dan LDL yang tinggi. Gandum utuh merupakan sumber terkonsentrasi serat larut yang disebut beta-glukan, yang membantu menurunkan kolesterol dengan mencegah penyerapan kolesterol di saluran pencernaan dan meningkatkan ekskresi kolesterol melalui tinja. Kacang almond Kacang-kacangan dan biji-bijian merupakan sumber yang kaya serat larut dan dapat membantu menurunkan kadar kolesterol, jika dikonsumsi sebagai bagian dari pola makan bergizi. Almond adalah jenis kacang populer yang secara konsisten dikaitkan dengan manfaat kesehatan jantung, termasuk penurunan kadar kolesterol. Tinjauan pada 2023 terhadap 19 penelitian menemukan bahwa konsumsi kacang-kacangan, termasuk almond, efektif untuk menurunkan kadar kolesterol total, kolesterol LDL, dan trigliserida, yang dapat membantu meningkatkan kesehatan jantung. Baca juga: Penyakit Apa yang Bisa Menyebabkan Kolesterol Tinggi? Ini Ulasannya... Kacang kenari Seperti kacang almond, kenari merupakan sumber serat larut yang sangat baik, yang efektif untuk menurunkan kadar kolesterol. Selain serat, kenari mengandung asam lemak tak jenuh ganda (PUFA), termasuk asam α-linoleat, yang mengaktifkan reseptor LDL yang membantu menghilangkan kelebihan LDL dari darah. Buah beri Buah beri ini merupakan sumber serat yang sangat baik dan nutrisi pelindung jantung lainnya serta senyawa tanaman seperti flavonoid.\r\n\r\nArtikel ini telah tayang di Kompas.com dengan judul \"11 Makanan untuk Bantu Menurunkan Kolesterol Tinggi\", Klik untuk baca: https://health.kompas.com/read/24F07120000968/11-makanan-untuk-bantu-menurunkan-kolesterol-tinggi.\r\n\r\n\r\nKompascom+ baca berita tanpa iklan: https://kmp.im/plus6\r\nDownload aplikasi: https://kmp.im/app6', 'berita3.jpg', '2024-06-09 17:47:57');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `no_bp` int(255) NOT NULL,
  `no_hp` int(255) NOT NULL,
  `email` int(255) NOT NULL,
  `tanggal_input` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id`, `nama`, `no_bp`, `no_hp`, `email`, `tanggal_input`) VALUES
(1, 'Budi cahya', 2147483647, 2147483647, 0, 2147483647),
(2, 'yanto banteng', 213123123, 81203123, 0, 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `tgl_daftar` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `fullname`, `tgl_daftar`) VALUES
(1, '1', '1', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2024-06-09 22:40:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
