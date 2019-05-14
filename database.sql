-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:8889
-- Generation Time: 14 Mei 2019 pada 17.14
-- Versi Server: 5.6.35
-- PHP Version: 7.0.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `tesis_weather`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_cuaca_harian`
--

CREATE TABLE `tbl_cuaca_harian` (
  `id_cuaca_harian` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `deskripsi` varchar(50) NOT NULL,
  `suhu_maks` int(11) NOT NULL,
  `suhu_min` int(11) NOT NULL,
  `presip` int(11) NOT NULL,
  `angin` varchar(50) NOT NULL,
  `kelembapan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_cuaca_harian`
--

INSERT INTO `tbl_cuaca_harian` (`id_cuaca_harian`, `tanggal`, `deskripsi`, `suhu_maks`, `suhu_min`, `presip`, `angin`, `kelembapan`) VALUES
(1, '0000-00-00', 'Badai Petir Terpencar', 31, 25, 50, 'BL 11 km/j', 74),
(2, '0000-00-00', 'Badai Petir Terpencar', 32, 24, 40, 'BD 12 km/j', 78),
(3, '0000-00-00', 'Sebagian Berawan', 32, 24, 20, 'BD 12 km/j', 76),
(4, '0000-00-00', 'Sebagian Berawan', 32, 24, 20, 'S 15 km/j', 73),
(5, '0000-00-00', 'Sebagian Berawan', 33, 23, 10, 'SBD 15 km/j', 70),
(6, '0000-00-00', 'Sebagian Besar Terik', 33, 24, 20, 'SBD 13 km/j', 71),
(7, '0000-00-00', 'Sebagian Berawan', 33, 24, 20, 'SBD 15 km/j', 73),
(8, '0000-00-00', 'Badai Petir Terpencar', 32, 24, 40, 'SBD 13 km/j', 76),
(9, '0000-00-00', 'Badai Petir', 31, 24, 80, 'STG 12 km/j', 80),
(10, '0000-00-00', 'Badai Petir', 31, 25, 80, 'SBD 13 km/j', 79),
(11, '0000-00-00', 'Badai Petir', 31, 24, 80, 'TTG 14 km/j', 78),
(12, '0000-00-00', 'Badai Petir Terpencar', 31, 25, 40, 'TTG 15 km/j', 78),
(13, '0000-00-00', 'Badai Petir Terpencar', 31, 25, 50, 'TTG 15 km/j', 77),
(14, '0000-00-00', 'Badai Petir Terpencar', 31, 25, 50, 'TTG 15 km/j', 77),
(15, '0000-00-00', 'Badai Petir Terpencar', 31, 24, 50, 'TTG 15 km/j', 78),
(16, '0000-00-00', 'Badai Petir Terpencar', 31, 25, 50, 'BL 11 km/j', 74),
(17, '0000-00-00', 'Badai Petir Terpencar', 32, 24, 40, 'BD 12 km/j', 78),
(18, '0000-00-00', 'Sebagian Berawan', 32, 24, 20, 'BD 12 km/j', 76),
(19, '0000-00-00', 'Sebagian Berawan', 32, 24, 20, 'S 15 km/j', 73),
(20, '0000-00-00', 'Sebagian Berawan', 33, 23, 10, 'SBD 15 km/j', 70),
(21, '0000-00-00', 'Sebagian Besar Terik', 33, 24, 20, 'SBD 13 km/j', 71),
(22, '0000-00-00', 'Sebagian Berawan', 33, 24, 20, 'SBD 15 km/j', 73),
(23, '0000-00-00', 'Badai Petir Terpencar', 32, 24, 40, 'SBD 13 km/j', 76),
(24, '0000-00-00', 'Badai Petir', 31, 24, 80, 'STG 12 km/j', 80),
(25, '0000-00-00', 'Badai Petir', 31, 25, 80, 'SBD 13 km/j', 79),
(26, '0000-00-00', 'Badai Petir', 31, 24, 80, 'TTG 14 km/j', 78),
(27, '0000-00-00', 'Badai Petir Terpencar', 31, 25, 40, 'TTG 15 km/j', 78),
(28, '0000-00-00', 'Badai Petir Terpencar', 31, 25, 50, 'TTG 15 km/j', 77),
(29, '0000-00-00', 'Badai Petir Terpencar', 31, 25, 50, 'TTG 15 km/j', 77),
(30, '0000-00-00', 'Badai Petir Terpencar', 31, 24, 50, 'TTG 15 km/j', 78);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_cuaca_perjam`
--

CREATE TABLE `tbl_cuaca_perjam` (
  `id_cuaca_perjam` int(11) NOT NULL,
  `tgl` date NOT NULL,
  `waktu` varchar(255) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `suhu` varchar(255) NOT NULL,
  `terasa` varchar(255) NOT NULL,
  `presip` varchar(255) NOT NULL,
  `kelembapan` varchar(255) NOT NULL,
  `angin` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_cuaca_perjam`
--

INSERT INTO `tbl_cuaca_perjam` (`id_cuaca_perjam`, `tgl`, `waktu`, `deskripsi`, `suhu`, `terasa`, `presip`, `kelembapan`, `angin`) VALUES
(1, '2019-05-14', '11:30', 'Badai Petir', '31°', '38°', '65%', '72%', 'SBD 5 km/j'),
(2, '2019-05-14', '12:00', 'Badai Petir Terpencar', '31°', '38°', '60%', '72%', 'BBL 6 km/j'),
(3, '2019-05-14', '13:00', 'Badai Petir Terpencar', '31°', '39°', '50%', '72%', 'BL 8 km/j'),
(4, '2019-05-14', '14:00', 'Badai Petir Terpencar', '31°', '38°', '50%', '71%', 'BBL 11 km/j'),
(5, '2019-05-14', '15:00', 'Badai Petir Terpencar', '31°', '38°', '40%', '75%', 'BBL 12 km/j'),
(6, '2019-05-14', '16:00', 'Sebagian Besar Berawan', '30°', '37°', '25%', '77%', 'BL 10 km/j'),
(7, '2019-05-14', '17:00', 'Sebagian Besar Berawan', '30°', '37°', '20%', '77%', 'UBL 10 km/j'),
(8, '2019-05-14', '18:00', 'Sebagian Besar Berawan', '29°', '35°', '15%', '82%', 'TL 8 km/j'),
(9, '2019-05-14', '19:00', 'Berawan', '28°', '34°', '20%', '88%', 'TTL 5 km/j'),
(10, '2019-05-14', '20:00', 'Berawan', '28°', '33°', '15%', '92%', 'STG 4 km/j'),
(11, '2019-05-14', '21:00', 'Berawan', '27°', '33°', '5%', '94%', 'TG 5 km/j'),
(12, '2019-05-14', '22:00', 'Berawan', '27°', '32°', '5%', '93%', 'TG 6 km/j'),
(13, '2019-05-14', '23:00', 'Berawan', '27°', '32°', '10%', '94%', 'TG 5 km/j'),
(14, '2019-05-14', '01:00', 'Berawan', '26°', '30°', '15%', '95%', 'TG 5 km/j'),
(15, '2019-05-14', '02:00', 'Berawan', '26°', '30°', '15%', '94%', 'TG 4 km/j');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_cuaca_harian`
--
ALTER TABLE `tbl_cuaca_harian`
  ADD PRIMARY KEY (`id_cuaca_harian`);

--
-- Indexes for table `tbl_cuaca_perjam`
--
ALTER TABLE `tbl_cuaca_perjam`
  ADD PRIMARY KEY (`id_cuaca_perjam`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_cuaca_harian`
--
ALTER TABLE `tbl_cuaca_harian`
  MODIFY `id_cuaca_harian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `tbl_cuaca_perjam`
--
ALTER TABLE `tbl_cuaca_perjam`
  MODIFY `id_cuaca_perjam` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;