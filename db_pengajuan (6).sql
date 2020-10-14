-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Okt 2020 pada 09.47
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_pengajuan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `akun`
--

CREATE TABLE `akun` (
  `id` int(11) NOT NULL,
  `tahun` int(4) NOT NULL,
  `id_satker` int(50) NOT NULL,
  `mak` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `akun`
--

INSERT INTO `akun` (`id`, `tahun`, `id_satker`, `mak`, `keterangan`) VALUES
(7, 2020, 6, '3038.001.051.A.521211', 'Penerbitan e_jurnal Ilmiah MTI-Belanja Bahan'),
(8, 2020, 6, '3038.001.051.A.521213', 'Penerbitan e_jurnal Ilmiah MTI-Honor Output Kegiatan'),
(9, 2020, 6, '3038.001.051.A.521219', 'Penerbitan e_jurnal Ilmiah MTI-Belanja Barang Non Operasional Lainnya'),
(10, 2020, 6, '3038.001.051.A.521811', 'Penerbitan e_jurnal Ilmiah MTI-Belanja Barang Persediaan Barang Konsumsi'),
(11, 2020, 6, '3038.001.051.A.524119', 'Penerbitan e_jurnal Ilmiah MTI-Beban Perjalanan Dinas Paket Meeting Luar Kota'),
(12, 2020, 6, '3038.001.051.B.521211', 'Penerbitan e-jurnal DIAKOM-Belanja Bahan'),
(13, 2020, 6, '3038.001.051.B.521213', 'Penerbitan e-jurnal DIAKOM-Honor Output Kegiatan'),
(14, 2020, 6, '3038.001.051.B.521219', 'Penerbitan e-jurnal DIAKOM-Belanja Barang Non Operasional Lainnya'),
(15, 2020, 6, '3038.001.051.B.521811', 'Penerbitan e-jurnal DIAKOM-Belanja Barang Persediaan Barang Konsumsi'),
(16, 2020, 6, '3038.001.051.B.524119', 'Penerbitan e-jurnal DIAKOM-Beban Perjalanan Dinas Paket Meeting Luar Kota'),
(17, 2020, 6, '3038.001.051.C.521211', 'Penjaminan Mutu, Pemrosesan dan Pemeliharaan Akreditasi e-Jurnal -Belanja Bahan'),
(18, 2020, 6, '3038.001.051.C.522151', 'Penjaminan Mutu, Pemrosesan dan Pemeliharaan Akreditasi e-Jurnal -Belanja Jasa Profesi'),
(19, 2020, 6, '3038.001.051.C.524119', 'Penjaminan Mutu, Pemrosesan dan Pemeliharaan Akreditasi e-Jurnal -Beban Perjalanan Dinas Paket Meeting Luar Kota'),
(20, 2020, 6, '3038.001.052.A.521211', 'Knowledge Sharing dan Penulisan KTI-Belanja Bahan'),
(21, 2020, 6, '3038.001.052.A.521219', 'Knowledge Sharing dan Penulisan KTI-Belanja Barang Non Operasional Lainnya'),
(22, 2020, 6, '3038.001.052.A.522151', 'Knowledge Sharing dan Penulisan KTI-Belanja Jasa Profesi'),
(23, 2020, 6, '3038.001.052.A.524114', 'Knowledge Sharing dan Penulisan KTI-Paket Meeting Dalam Kota'),
(24, 2020, 6, '3038.001.052.A.524119', 'Knowledge Sharing dan Penulisan KTI-Beban Perjalanan Dinas Paket Meeting Luar Kota'),
(25, 2020, 6, '3038.001.052.A.5241211', 'Knowledge Sharing dan Penulisan KTI-Belanja Perjalanan Luar Negeri'),
(26, 2020, 6, '3038.001.052.B.521211', 'Penyelenggaraan Konferensi Internasional-Belanja Bahan'),
(27, 2020, 6, '3038.001.052.B.521213', 'Penyelenggaraan Konferensi Internasional-Honor Output Kegiatan'),
(28, 2020, 6, '3038.001.052.B.521219', 'Penyelenggaraan Konferensi Internasional-Belanja Barang Non Operasional Lainnya'),
(29, 2020, 6, '3038.001.052.B.521811', 'Penyelenggaraan Konferensi Internasional-Belanja Barang Persediaan Barang Konsumsi'),
(30, 2020, 6, '3038.001.052.B.522151', 'Penyelenggaraan Konferensi Internasional-Belanja Jasa Profesi'),
(31, 2020, 6, '3038.001.052.B.524111', 'Penyelenggaraan Konferensi Internasional-Belanja Perjalanan Biasa'),
(32, 2020, 6, '3038.001.052.B.524114', 'Penyelenggaraan Konferensi Internasional-Paket Meeting Dalam Kota'),
(33, 2020, 6, '3038.001.052.B.524119', 'Penyelenggaraan Konferensi Internasional-Beban Perjalanan Dinas Paket Meeting Luar Kota'),
(34, 2020, 6, '3038.002.051.A.521211', 'Penatalaksanaan proses dan/Pemeliharaan Akreditasi-Belanja Bahan'),
(35, 2020, 6, '3038.002.051.A.521811', 'Penatalaksanaan proses dan/Pemeliharaan Akreditasi-Belanja Barang Persediaan Barang Konsumsi'),
(36, 2020, 6, '3038.002.051.A.521219', 'Penatalaksanaan proses dan/Pemeliharaan Akreditasi-Belanja Barang Non Operasional Lainnya'),
(37, 2020, 6, '3038.002.051.A.522151', 'Penatalaksanaan proses dan/Pemeliharaan Akreditasi-Belanja Jasa Profesi'),
(38, 2020, 6, '3038.002.051.A.524119', 'Penatalaksanaan proses dan/Pemeliharaan Akreditasi-Beban Perjalanan Dinas Paket Meeting Luar Kota'),
(39, 2020, 6, '3038.002.052.A.521211', 'Asesmen dan Penjaminan Mutu-Belanja Bahan'),
(40, 2020, 6, '3038.002.052.A.521811', 'Asesmen dan Penjaminan Mutu-Belanja Barang Persediaan Barang Konsumsi'),
(41, 2020, 6, '3038.002.052.A.522151', 'Asesmen dan Penjaminan Mutu-Belanja Jasa Profesi'),
(42, 2020, 6, '3038.002.052.A.524119', 'Asesmen dan Penjaminan Mutu-Beban Perjalanan Dinas Paket Meeting Luar Kota'),
(43, 2020, 6, '3038.967.051.A.521211', 'Penelitian Jangka Panjang 1 (survei)-Belanja Bahan'),
(44, 2020, 6, '3038.967.051.A.521213', 'Penelitian Jangka Panjang 1 (survei)-Honor Output Kegiatan'),
(45, 2020, 6, '3038.967.051.A.521811', 'Penelitian Jangka Panjang 1 (survei)-Belanja Barang Persediaan Barang Konsumsi'),
(46, 2020, 6, '3038.967.051.A.522151', 'Penelitian Jangka Panjang 1 (survei)-Belanja Jasa Profesi'),
(47, 2020, 6, '3038.967.051.A.524111', 'Penelitian Jangka Panjang 1 (survei)-Belanja Perjalanan Biasa'),
(48, 2020, 6, '3038.967.051.A.524114', 'Penelitian Jangka Panjang 1 (survei)-Belanja Perjalanan Dinas Paket Meeting Dalam Kota'),
(49, 2020, 6, '3038.967.051.A.524119', 'Penelitian Jangka Panjang 1 (survei)-Beban Perjalanan Dinas Paket Meeting Luar Kota'),
(50, 2020, 6, '3038.967.051.B.521211', 'Penelitian Jangka Panjang 2 (kualitatif-wawancara mendalam)-Belanja Bahan'),
(51, 2020, 6, '3038.967.051.B.521213', 'Penelitian Jangka Panjang 2 (kualitatif-wawancara mendalam)-Honor Output Kegiatan'),
(52, 2020, 6, '3038.967.051.B.521811', 'Penelitian Jangka Panjang 2 (kualitatif-wawancara mendalam)-Belanja Barang Persediaan Barang Konsumsi'),
(53, 2020, 6, '3038.967.051.B.522151', 'Penelitian Jangka Panjang 2 (kualitatif-wawancara mendalam)-Belanja Jasa Profesi'),
(54, 2020, 6, '3038.967.051.B.524111', 'Penelitian Jangka Panjang 2 (kualitatif-wawancara mendalam)-Belanja Perjalanan Biasa'),
(55, 2020, 6, '3038.967.051.B.524114', 'Penelitian Jangka Panjang 2 (kualitatif-wawancara mendalam)-Belanja Perjalanan Dinas Paket Meeting Dalam Kota'),
(56, 2020, 6, '3038.967.051.B.524119', 'Penelitian Jangka Panjang 2 (kualitatif-wawancara mendalam)-Beban Perjalanan Dinas Paket Meeting Luar Kota'),
(57, 2020, 6, '3038.967.051.C.521211', 'Survei Penggunaan TIK -Belanja Bahan'),
(58, 2020, 6, '3038.967.051.C.521213', 'Survei Penggunaan TIK -Honor Output Kegiatan'),
(59, 2020, 6, '3038.967.051.C.521219', 'Survei Penggunaan TIK -Belanja Barang Non Operasional Lainnya'),
(60, 2020, 6, '3038.967.051.C.521811', 'Survei Penggunaan TIK -Belanja Barang Persediaan Barang Konsumsi'),
(61, 2020, 6, '3038.967.051.C.522151', 'Survei Penggunaan TIK -Belanja Jasa Profesi'),
(62, 2020, 6, '3038.967.051.C.524111', 'Survei Penggunaan TIK -Belanja Perjalanan Biasa'),
(63, 2020, 6, '3038.967.051.C.524114', 'Survei Penggunaan TIK -Belanja Perjalanan Dinas Paket Meeting Dalam Kota'),
(64, 2020, 6, '3038.967.051.C.524119', 'Survei Penggunaan TIK -Beban Perjalanan Dinas Paket Meeting Luar Kota'),
(65, 2020, 6, '3038.967.051.D.521211', 'Studi Singkat Aktual Bidang APTIKA dan IKP 1-Belanja Bahan'),
(66, 2020, 6, '3038.967.051.D.521213', 'Studi Singkat Aktual Bidang APTIKA dan IKP 1-Honor Output Kegiatan'),
(67, 2020, 6, '3038.967.051.D.521811', 'Studi Singkat Aktual Bidang APTIKA dan IKP 1-Belanja Barang Persediaan Barang Konsumsi'),
(68, 2020, 6, '3038.967.051.D.522151', 'Studi Singkat Aktual Bidang APTIKA dan IKP 1-Belanja Jasa Profesi'),
(69, 2020, 6, '3038.967.051.D.524111', 'Studi Singkat Aktual Bidang APTIKA dan IKP 1-Belanja Perjalanan Biasa'),
(70, 2020, 6, '3038.967.051.D.524114', 'Studi Singkat Aktual Bidang APTIKA dan IKP 1-Belanja Perjalanan Dinas Paket Meeting Dalam Kota'),
(71, 2020, 6, '3038.967.051.D.524119', 'Studi Singkat Aktual Bidang APTIKA dan IKP 1-Beban Perjalanan Dinas Paket Meeting Luar Kota'),
(72, 2020, 6, '3038.967.051.E.521211', 'Studi Singkat Aktual Bidang APTIKA IKP 2-Belanja Bahan'),
(73, 2020, 6, '3038.967.051.E.521213', 'Studi Singkat Aktual Bidang APTIKA IKP 2-Honor Output Kegiatan'),
(74, 2020, 6, '3038.967.051.E.521811', 'Studi Singkat Aktual Bidang APTIKA IKP 2-Belanja Barang Persediaan Barang Konsumsi'),
(75, 2020, 6, '3038.967.051.E.522151', 'Studi Singkat Aktual Bidang APTIKA IKP 2-Belanja Jasa Profesi'),
(76, 2020, 6, '3038.967.051.E.524111', 'Studi Singkat Aktual Bidang APTIKA IKP 2-Belanja Perjalanan Biasa'),
(77, 2020, 6, '3038.967.051.E.524114', 'Studi Singkat Aktual Bidang APTIKA IKP 2-Belanja Perjalanan Dinas Paket Meeting Dalam Kota'),
(78, 2020, 6, '3038.967.051.E.524119', 'Studi Singkat Aktual Bidang APTIKA IKP 2-Beban Perjalanan Dinas Paket Meeting Luar Kota'),
(79, 2020, 6, '3038.967.051.F.521211', 'Penyusunan Program, Kerjasama dan Evaluasi Penelitian-Belanja Bahan'),
(80, 2020, 6, '3038.967.051.F.521811', 'Penyusunan Program, Kerjasama dan Evaluasi Penelitian-Belanja Barang Persediaan Barang Konsumsi'),
(81, 2020, 6, '3038.967.051.F.522151', 'Penyusunan Program, Kerjasama dan Evaluasi Penelitian-Belanja Jasa Profesi'),
(82, 2020, 6, '3038.967.051.F.524111', 'Penyusunan Program, Kerjasama dan Evaluasi Penelitian-Belanja Perjalanan Biasa'),
(83, 2020, 6, '3038.967.051.F.524114', 'Penyusunan Program, Kerjasama dan Evaluasi Penelitian-Belanja Perjalanan Dinas Paket Meeting Dalam Kota'),
(84, 2020, 6, '3038.967.051.F.524119', 'Penyusunan Program, Kerjasama dan Evaluasi Penelitian-Beban Perjalanan Dinas Paket Meeting Luar Kota'),
(85, 2020, 6, '3038.967.051.F.5241211', 'Penyusunan Program, Kerjasama dan Evaluasi Penelitian-Belanja Perjalanan Luar Negeri'),
(86, 2020, 6, '3038.967.051.070.521211', 'Penyusunan Laporan-Belanja Bahan'),
(87, 2020, 6, '3038.967.051.070.521811', 'Penyusunan Laporan-Belanja Barang Persediaan Barang Konsumsi'),
(88, 2020, 6, '3038.967.051.070.522151', 'Penyusunan Laporan-Belanja Jasa Profesi'),
(89, 2020, 6, '3038.967.051.070.522191', 'Penyusunan Laporan-Belanja Jasa Lainnya'),
(90, 2020, 6, '3038.967.051.F.521219', 'Penyusunan Program, Kerjasama dan Evaluasi Penelitian-Belanja Barang Non Operasional Lainnya'),
(92, 2020, 4, '4146.007.001.G.521211', 'TA&CTA - Belanja Bahan (RM)'),
(93, 2020, 4, '4146.007.001.G.521213', 'TA&CTA - Belanja Honor Output Kegiatan (RM)'),
(94, 2020, 4, '4146.007.001.G.521219', 'TA&CTA - Belanja Barang Non Operasional Lainnya (RM)'),
(95, 2020, 4, '4146.007.001.G.522151', 'TA&CTA - Beban Jasa Profesi (RM)'),
(96, 2020, 4, '4146.007.001.G.521811', 'TA&CTA - Belanja Barang Persediaan Barang Konsumsi'),
(97, 2020, 4, '4146.007.001.G.522191', 'TA&CTA - Beban Jasa Lainnya (RM)'),
(98, 2020, 4, '4146.007.001.G.524111', 'TA&CTA - Belanja Perjalanan Biasa (RM)'),
(99, 2020, 4, '4146.007.001.G.524114', 'TA&CTA - Belanja Perjalanan Dinas Paket Meeting Dalam Kota (RM)'),
(100, 2020, 4, '4146.007.001.G.524119', 'TA&CTA - Belanja Perjalanan Lainnya (RM)'),
(101, 2020, 4, '4146.007.001.G.526312', 'TA&CTA - Belanja Barang untuk Bantuan Lainnya yang memiliki Karakteristik Banper (uang) (RM)'),
(102, 2020, 4, '4146.007.001.G.522141', 'TA&CTA - Belanja Sewa (RM)'),
(103, 2020, 4, '4146.007.001.G.524113', 'TA&CTA - Belanja Perjalanan Dinas Dalam Kota'),
(104, 2020, 4, '4146.007.001.G.521131', 'TA&CTA - Belanja Barang Operasional - Penanganan Pandemi COVID-'),
(105, 2020, 4, '	4146.007.001.G.524115', 'TA&CTA - Belanja Perjalanan Biasa-Penanganan Pandemi Covid-19'),
(106, 2020, 4, '4146.007.001.051.G. 522192', 'TA&CTA - Belanja Jasa - Penanganan Pandemi Covid-19 (RM)'),
(107, 0, 0, '4146.007.001.G.524115\r\n', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_pengajuan`
--

CREATE TABLE `detail_pengajuan` (
  `id` int(11) NOT NULL,
  `no_sptjb` varchar(255) NOT NULL,
  `nominal` int(11) NOT NULL,
  `id_akun` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `id_pengajuan` int(11) NOT NULL,
  `pph` int(11) NOT NULL,
  `ppn` int(11) NOT NULL,
  `keterangan_verifikasi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `detail_pengajuan`
--

INSERT INTO `detail_pengajuan` (`id`, `no_sptjb`, `nominal`, `id_akun`, `keterangan`, `id_pengajuan`, `pph`, `ppn`, `keterangan_verifikasi`) VALUES
(1, '1', 2000000, '1', 'revisi spp', 1, 0, 0, ''),
(3, '2', 4000000, '2', 'ok', 1, 0, 0, ''),
(5, '1/sptjb', 30000000, '1', 'ok', 4, 0, 0, ''),
(7, '5', 500000, '2', 'revisi kwitansi', 6, 0, 0, ''),
(8, '8', 4000000, '1', 'revisi kwitansi 2', 8, 300000, 40000, ''),
(9, '5', 3000000, '1', 'revisi kwitansi 1', 8, 400000, 10000, ''),
(11, '6/sptjb', 3000000, '1', 'revisi kwitansi 3', 11, 400000, 200000, ''),
(13, '1/sptjb', 100000, '1', 'ok', 5, 100, 200, ''),
(15, '1/sptjb', 2000, '2', 'januari', 26, 10, 1, ''),
(16, '4/sptjb', 3000, '2', '', 5, 2, 5, ''),
(17, '10/sptjb', 2000, '1', '', 7, 0, 0, ''),
(18, '11/sptjb', 2000, '1', '', 19, 0, 0, ''),
(19, '12/sptjb', 1000, '1', '', 21, 0, 0, ''),
(20, '13/sptjb', 1000, '2', '', 22, 0, 0, ''),
(21, '14/sptjb', 1000, '1', '', 22, 0, 0, ''),
(22, '1/sptjb', 3000000, '100', 'ok', 27, 100, 100, ''),
(23, '1/sptb', 1000000, '2', '', 28, 100, 100, ''),
(24, '1/sptjb', 5000000, '2', 'ok', 29, 100, 200, ''),
(26, '1/sptjb', 50000000, '1', 'januari', 31, 0, 0, ''),
(27, '1/sptjb', 2000000, '1', 'ok', 33, 300000, 0, ''),
(28, '1/sptjb', 1000000, '2', '', 34, 100, 0, 'undangan kurang,kwitansi kurang ok'),
(29, '2/sptb', 2000, '2', '', 34, 100, 0, 'notulensi kurang'),
(30, '1/sptjb', 50000000, '1', '', 35, 0, 0, 'notulensi kurang'),
(31, '2/sptjb', 50000000, '91', '', 36, 0, 0, 'kurang undangan'),
(32, '2/sptjb', 60000000, '1', '', 36, 0, 0, ''),
(33, '1/sptjb', 50000000, '1', '', 38, 0, 0, ''),
(34, '3', 10000000, '2', '', 39, 0, 0, ''),
(288, '55/sptjb', 3893500, '67', '', 42, 0, 0, ''),
(289, '54/sptjb', 1942000, '52', '', 42, 0, 0, ''),
(290, '53/sptjb', 4262520, '79', '', 42, 0, 0, ''),
(291, '52/sptjb', 8540688, '21', '', 42, 0, 0, ''),
(292, '51/sptjb', 2399880, '90', '', 42, 0, 0, ''),
(293, '50/sptjb', 2616259, '14', '', 42, 0, 0, ''),
(294, '49/sptjb', 399000, '12', '', 42, 0, 0, ''),
(295, '48/sptjb', 822869, '79', '', 42, 0, 0, ''),
(296, '47/sptjb', 420000, '65', '', 42, 0, 0, ''),
(297, '46/sptjb', 406000, '86', '', 42, 0, 0, ''),
(298, '45/sptjb', 4781932, '21', '', 42, 0, 0, ''),
(299, '44/sptjb', 5384000, '84', '', 42, 0, 0, ''),
(300, '43/sptjb', 6800000, '68', '', 42, 1020000, 0, ''),
(301, '42/sptjb', 3400000, '53', '', 42, 600000, 0, ''),
(302, '41/sptjb', 1800000, '22', '', 42, 270000, 0, ''),
(303, '1/sptjb', 2000000, '18', '', 43, 300000, 0, ''),
(304, '1/sptjb', 2000000, '88', '', 44, 300000, 0, ''),
(305, '2/sptjb', 5000000, '102', '', 47, 1000000, 0, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis`
--

CREATE TABLE `jenis` (
  `id` int(11) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jenis`
--

INSERT INTO `jenis` (`id`, `keterangan`) VALUES
(1, 'LS'),
(2, 'GU'),
(3, 'kontrak');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_pengajuan`
--

CREATE TABLE `jenis_pengajuan` (
  `id` int(11) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jenis_pengajuan`
--

INSERT INTO `jenis_pengajuan` (`id`, `keterangan`, `link`) VALUES
(1, 'Perjalanan Dinas Dalam Negeri', 'v_pd_dn'),
(2, 'Perjalanan dinas Luar Negeri', 'v_pd_ln'),
(3, 'Honor', 'v_honor'),
(4, 'Jasa Profesi', 'v_jasprof'),
(5, 'Pengadan < 50 Juta', 'v_pengadaankurang50'),
(6, 'GU', 'detail_pengajuan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `k_cair`
--

CREATE TABLE `k_cair` (
  `id` int(11) NOT NULL,
  `time_add` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `k_cair`
--

INSERT INTO `k_cair` (`id`, `time_add`) VALUES
(15, '2020-06-22 06:46:30'),
(16, '2020-06-22 06:56:26'),
(17, '2020-06-22 06:57:51'),
(19, '2020-06-23 14:50:21'),
(20, '2020-06-23 15:16:23'),
(21, '2020-06-23 15:27:43'),
(22, '2020-07-02 17:53:24'),
(24, '2020-07-09 03:32:18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nodin`
--

CREATE TABLE `nodin` (
  `id` int(11) NOT NULL,
  `id_jenis` int(11) NOT NULL,
  `p_pengajuan` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `id_satker` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `no_nodin` varchar(255) NOT NULL,
  `status_pengajuan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `nodin`
--

INSERT INTO `nodin` (`id`, `id_jenis`, `p_pengajuan`, `tanggal`, `id_satker`, `id_user`, `no_nodin`, `status_pengajuan`) VALUES
(1, 2, 'bayu', '2020-06-08', 2, 1, '12', 0),
(2, 2, 'bayu', '2020-06-08', 2, 1, '', 0),
(3, 3, 'handi', '2020-06-09', 1, 1, '', 0),
(4, 2, 'bayu yy', '2020-06-08', 2, 1, '', 0),
(5, 1, 'handi', '2020-06-09', 1, 1, '', 0),
(8, 1, 'bayu', '2020-06-09', 2, 1, '2', 0),
(9, 2, 'bayu', '2020-06-14', 1, 1, '1', 0),
(10, 1, 'arif', '2020-06-14', 4, 1, '13', 0),
(11, 1, 'bayu', '2020-06-15', 1, 1, '15', 0),
(12, 1, 'bayu', '2020-06-20', 4, 8, '', 0),
(15, 1, 'bayu', '2020-06-20', 5, 8, '12', 0),
(17, 1, 'bayu', '2020-06-22', 5, 8, '15', 0),
(18, 2, 'bayu', '2020-06-22', 5, 8, '', 1),
(19, 1, 'yudo', '2020-06-25', 6, 8, '1', 1),
(20, 2, 'bayuu', '2020-07-02', 4, 8, '14', 1),
(21, 2, 'bayu', '2020-07-03', 6, 8, '2', 0),
(23, 1, 'bayu', '2020-07-09', 6, 8, '1', 1),
(24, 1, 'Ipul', '2020-07-09', 6, 8, '', 0),
(25, 1, 'bayu', '2020-07-09', 6, 8, '1', 1),
(26, 1, 'bayu yudo', '2020-10-14', 6, 1, '1', 0),
(27, 1, 'bayu yudo', '2020-10-14', 4, 9, '1', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pencairan`
--

CREATE TABLE `pencairan` (
  `id` int(11) NOT NULL,
  `id_pengajuan` int(11) NOT NULL,
  `nominal` int(11) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `id_satker` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `spm` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pencairan`
--

INSERT INTO `pencairan` (`id`, `id_pengajuan`, `nominal`, `keterangan`, `tanggal`, `id_satker`, `status`, `spm`) VALUES
(1, 1, 2000000, 'ok', '2020-06-19', 2, 15, '40017'),
(3, 0, 60000000, 'panjar ok', '2020-06-19', 3, 15, ''),
(4, 0, 50000000, 'tf ok', '2020-06-20', 2, 15, ''),
(15, 27, 2999800, 'Pengajuan', '2020-06-14', 4, 16, '70005'),
(16, 6, 500000, 'Pengajuan', '2020-06-08', 2, 15, '40005'),
(17, 5, 102693, 'Pengajuan', '2020-06-08', 2, 15, '40003'),
(18, 0, 50000000, 'panjar', '2020-06-22', 3, 15, ''),
(19, 4, 10000000, 'Pengajuan', '2020-06-08', 3, 17, '40001'),
(22, 0, 60000000, '', '2020-06-23', 5, 19, 'Panjar TUP'),
(24, 0, 3000000, '', '2020-06-23', 3, 20, 'panjar TUP'),
(25, 33, 1700000, 'Pengajuan', '2020-06-22', 5, 21, '40015'),
(26, 11, 2400000, 'Pengajuan', '2020-06-08', 2, 22, 'Panjar GU'),
(27, 0, 50000000, '', '2020-06-23', 5, 21, 'Panjar TUP'),
(28, 0, 50000001, '', '2020-06-24', 4, 21, 'Panjar TUP'),
(29, 38, 50000000, 'Pengajuan', '2020-06-25', 6, 22, '40002'),
(30, 43, 1700000, 'Pengajuan', '2020-07-09', 6, 24, '40001'),
(33, 44, 1700000, 'Pengajuan', '2020-07-09', 6, 0, '40001');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengajuan`
--

CREATE TABLE `pengajuan` (
  `id` int(11) NOT NULL,
  `SPM` int(11) NOT NULL,
  `status_verifikasi` int(11) NOT NULL,
  `status_kppn` int(11) NOT NULL,
  `status_spm` int(11) NOT NULL,
  `status_sp2d` int(11) NOT NULL,
  `upload` varchar(255) NOT NULL,
  `id_nodin` int(11) NOT NULL,
  `sp2d` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `verifikasi_kasubbag_v` varchar(50) NOT NULL,
  `id_jenis_pengajuan` int(11) NOT NULL,
  `penolakan_kppn` varchar(255) NOT NULL,
  `file_spm` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pengajuan`
--

INSERT INTO `pengajuan` (`id`, `SPM`, `status_verifikasi`, `status_kppn`, `status_spm`, `status_sp2d`, `upload`, `id_nodin`, `sp2d`, `created_at`, `verifikasi_kasubbag_v`, `id_jenis_pengajuan`, `penolakan_kppn`, `file_spm`) VALUES
(4, 40001, 1, 6, 5, 7, 'Kisi2-PBTI-28-05-2020-020343.pdf', 2, '', '2020-07-13 07:53:12', '1', 0, '', 'adasdas'),
(5, 40003, 0, 6, 5, 7, '2020_05_14_10_27_06 (1).pdf', 1, '', '2020-06-22 06:45:13', '', 0, '', ''),
(6, 40005, 0, 1, 0, 7, '0', 2, '', '2020-06-22 06:45:10', '', 0, '', ''),
(7, 40006, 0, 0, 5, 0, '0', 1, '', '2020-06-20 11:00:27', '', 0, '', ''),
(8, 40009, 0, 0, 0, 0, '650 - Nodin cuti lebaran 2020 perbaikan hasil ratas-28-05-2020-040358.pdf', 1, '', '2020-06-20 11:00:29', '', 0, '', ''),
(11, 40008, 0, 1, 0, 7, 'Panduan Permohonan SrE iOTENTIK-Kominfo v1-28-05-2020-220726.2', 1, '', '2020-06-23 15:26:50', '', 0, '', ''),
(15, 400013, 0, 0, 0, 0, '', 1, '', '2020-06-26 10:36:33', '', 0, '', ''),
(16, 40013, 0, 0, 0, 0, '', 1, '', '2020-06-26 10:36:30', '', 0, '', ''),
(17, 40013, 0, 0, 0, 0, '', 1, '', '2020-06-26 10:36:26', '', 0, '', ''),
(19, 400133, 0, 0, 0, 0, '', 1, '', '2020-06-25 05:01:50', '', 0, 'ok', ''),
(20, 50000, 0, 0, 0, 0, '', 1, '', '2020-06-20 11:00:33', '', 0, '', ''),
(21, 500001, 0, 0, 0, 0, '', 1, '', '2020-06-20 11:00:34', '', 0, '', ''),
(22, 40023, 0, 0, 0, 0, '', 1, '', '2020-06-20 11:00:35', '', 0, '', ''),
(26, 70001, 4, 0, 0, 0, '', 3, '', '2020-06-14 07:17:44', 'v_pd_dn', 0, '', ''),
(27, 70005, 4, 6, 5, 7, '0', 10, '', '2020-06-19 10:24:13', 'v_pd_dn', 0, '', ''),
(28, 40001, 4, 0, 0, 0, '', 11, '', '2020-06-15 06:47:34', 'v_pd_dn', 0, '', ''),
(29, 40001, 4, 0, 0, 0, 'spp-40001-20-06-2020-170846.pdf', 15, '', '2020-06-21 08:06:07', '1', 1, '', ''),
(30, 40002, 0, 0, 0, 0, '', 15, '', '2020-06-21 08:06:12', '0', 1, '', ''),
(31, 40016, 0, 0, 0, 0, '', 1, '', '2020-06-26 10:36:18', '', 0, '', ''),
(32, 40026, 12, 0, 0, 0, '', 15, '', '2020-06-25 05:47:56', '0', 3, '', ''),
(33, 40015, 12, 6, 5, 7, 'dokumentasi diakom 17-6-20-40015-22-06-2020-140748.pdf', 17, 'qeqweqwe', '2020-06-25 05:50:08', '1', 4, 'revisi uraian spp', ''),
(34, 40020, 4, 0, 0, 0, 'SK Big Data Final_11052020 (1)-40020-22-06-2020-144902.pdf', 18, '', '2020-06-26 09:10:29', '1', 6, 'ganti spp', ''),
(35, 40001, 4, 0, 0, 0, '', 19, '', '2020-07-02 17:06:44', '1', 2, '', ''),
(36, 40001, 4, 0, 0, 0, '', 20, '', '2020-07-02 10:26:45', '', 6, '', ''),
(38, 40002, 12, 6, 5, 7, '', 19, '', '2020-07-15 12:09:56', '1', 4, 'Gantgi redaksi', '40002-15-07-2020-190956-173 big data 13 juli aston bekasi (2).pdf'),
(39, 40004, 0, 0, 0, 0, '', 19, '', '2020-07-15 12:08:29', '', 3, '', '40004-15-07-2020-190829.FGD PANCASILA PUSLITBANG APTIKAIKPpdf'),
(42, 40001, 0, 0, 0, 0, '', 21, '0', '2020-07-14 10:13:09', '', 6, '', 'Undangan FGD Pembumian Pancasila Ibu Irene 15 Juli 2020-40001-14-07-2020-171309.pdf'),
(43, 40001, 4, 6, 5, 7, '103Pra penyusunan laporan SAI semeter I TA 2020-40001-09-07-2020-100705.pdf', 23, '180000000000000000000', '2020-07-14 06:09:59', '1', 4, 'salah uraian', 'Undangan FGD Pembumian Pancasila Deputi IV KSP 15 Juli 2020-40001-14-07-2020-130958.pdf'),
(44, 40001, 12, 6, 5, 7, '103Pra penyusunan laporan SAI semeter I TA 2020-40001-09-07-2020-110741.pdf', 25, '13231231231111', '2020-07-14 06:17:01', '1', 4, '', '009 KOMINFO Mba Fitri 15 July 2020 (1)-40001-14-07-2020-131701.pdf'),
(45, 40002, 0, 0, 0, 0, '40002-15-07-2020-191201-FGD PANCASILA PUSLITBANG APTIKAIKP.pdf', 24, '', '2020-07-15 12:12:01', '', 6, '', 'Undangan FGD Pembumian Pancasila Internal 15 Juli 2020-40002-14-07-2020-171257.pdf'),
(46, 50001, 0, 0, 0, 0, '', 26, '', '2020-10-14 07:36:12', '', 5, '', ''),
(47, 40003, 0, 0, 0, 0, '', 27, '', '2020-10-14 07:43:52', '', 5, '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `satker`
--

CREATE TABLE `satker` (
  `id` int(11) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `prefik` varchar(255) NOT NULL,
  `ppk` varchar(255) NOT NULL,
  `nip_ppk` int(20) NOT NULL,
  `pimpinan` varchar(50) NOT NULL,
  `nip_pimpinan` int(20) NOT NULL,
  `bpp` varchar(50) NOT NULL,
  `nip_bpp` int(20) NOT NULL,
  `ttd` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `satker`
--

INSERT INTO `satker` (`id`, `keterangan`, `prefik`, `ppk`, `nip_ppk`, `pimpinan`, `nip_pimpinan`, `bpp`, `nip_bpp`, `ttd`) VALUES
(1, 'Keuangan', 'BLSDM.1', 'Ani Ratnasari', 12121, 'Haryati', 3123123, 'Aldy Saputra', 13123, ''),
(2, 'Kepegawaian', 'BLSDM.1', 'Ani Ratnasari', 212321, 'Haryati', 131231, 'Sigit', 31231, ''),
(3, 'PPP', 'BLSDM.1', '', 0, '0', 0, 'nisa', 0, ''),
(4, 'Umum', '', 'Ani Ratnasari', 0, 'Haryati', 0, 'Kunto', 0, ''),
(5, 'pusdiklat', '', '', 0, '0', 0, 'ayu', 0, ''),
(6, 'Puslitbang Aptika dan IKP', 'BLSDM.3', 'Lidya Agustina', 0, 'Sunarno', 0, 'Fitri', 0, 'lidya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nip` varchar(18) NOT NULL,
  `name` varchar(255) NOT NULL,
  `id_satker` int(11) NOT NULL,
  `jabatan` varchar(255) NOT NULL,
  `user_level` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `last_login` datetime NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` int(1) NOT NULL,
  `ttd` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `nip`, `name`, `id_satker`, `jabatan`, `user_level`, `username`, `password`, `last_login`, `image`, `status`, `ttd`) VALUES
(1, '195408131983121001', 'aldy', 1, 'Bendahara Pengeluaran', 1, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', '2020-10-14 09:34:11', '', 1, ''),
(3, '199108012014032002', 'bayu', 2, 'staff', 2, 'bayu', '12dea96fec20593566ab75692c9949596833adc9', '2020-10-14 09:42:02', '', 1, ''),
(4, '199108012014032002', 'handi', 1, 'staff', 2, 'handi', '12dea96fec20593566ab75692c9949596833adc9', '2020-10-14 09:40:35', '', 1, 'handi'),
(5, '199108012014032002', 'ana', 1, 'staff', 3, 'ana', '12dea96fec20593566ab75692c9949596833adc9', '2020-07-15 14:08:16', '', 1, ''),
(6, '199108012014032002', 'priyo', 1, 'staff', 4, 'priyo', '12dea96fec20593566ab75692c9949596833adc9', '2020-07-14 08:38:13', '', 1, ''),
(7, '199108012014032002', 'aldy ben', 1, 'benahara', 5, 'aldy1', '12dea96fec20593566ab75692c9949596833adc9', '2020-07-15 13:58:32', '', 1, ''),
(8, '199108012014032001', 'Bayu Y', 6, 'staff adminsitasi', 6, 'Bayu1', '37974419a792b5e2d44822522806bc70e45d7c1a', '2020-07-15 14:10:40', 'no_image.jpg', 1, ''),
(9, '199108012014032002', 'sari', 4, 'bpp', 6, 'sari', '12dea96fec20593566ab75692c9949596833adc9', '2020-10-14 09:42:50', '', 1, ''),
(12, '', 'Hendri Jamaludin', 2, 'Kasubbag Verifikasi', 7, 'hendri', '12dea96fec20593566ab75692c9949596833adc9', '2020-07-10 06:39:11', '', 1, 'hendri');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_groups`
--

CREATE TABLE `user_groups` (
  `id` int(11) NOT NULL,
  `group_name` varchar(150) NOT NULL,
  `group_level` int(11) NOT NULL,
  `group_status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user_groups`
--

INSERT INTO `user_groups` (`id`, `group_name`, `group_level`, `group_status`) VALUES
(1, 'Admin', 1, 1),
(2, 'verifikator', 2, 1),
(3, 'spm', 3, 1),
(4, 'kppn', 4, 1),
(5, 'bendahara', 5, 1),
(6, 'bpp', 6, 1),
(7, 'Kasubbag Verifikasi', 7, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `verifikasi`
--

CREATE TABLE `verifikasi` (
  `id` int(11) NOT NULL,
  `rkakl` varchar(55) NOT NULL,
  `kode_anggaran` varchar(55) NOT NULL,
  `spp` varchar(55) NOT NULL,
  `sptb` varchar(55) NOT NULL,
  `daftar_nominatif` varchar(55) NOT NULL,
  `st` varchar(55) NOT NULL,
  `sp2d` varchar(55) NOT NULL,
  `rincian` varchar(55) NOT NULL,
  `pengeluaran_rill` varchar(55) NOT NULL,
  `tanda_tiba` varchar(55) NOT NULL,
  `tiket_pesawat` varchar(55) NOT NULL,
  `boardingpass` varchar(55) NOT NULL,
  `spd` varchar(55) NOT NULL,
  `invoice_hotel` varchar(55) NOT NULL,
  `lapgas` varchar(55) NOT NULL,
  `undangan` varchar(55) NOT NULL,
  `sp_setneg` varchar(55) NOT NULL,
  `visa_paspor` varchar(55) NOT NULL,
  `nd_pengajuan` varchar(55) NOT NULL,
  `sk` varchar(55) NOT NULL,
  `ssp` varchar(55) NOT NULL,
  `sktjm_kpa` varchar(55) NOT NULL,
  `sk_honor` varchar(55) NOT NULL,
  `tanda_terima_honor` varchar(55) NOT NULL,
  `jadwal_kegiatan` varchar(55) NOT NULL,
  `absensi` varchar(55) NOT NULL,
  `materi_narsum` varchar(55) NOT NULL,
  `faktur_pajak` varchar(55) NOT NULL,
  `npwp` varchar(55) NOT NULL,
  `no_rek` varchar(55) NOT NULL,
  `kwitansi` varchar(55) NOT NULL,
  `alamat_lengkap_penyedia` varchar(55) NOT NULL,
  `id_pengajuan` int(11) NOT NULL,
  `status_pengajuan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `verifikasi`
--

INSERT INTO `verifikasi` (`id`, `rkakl`, `kode_anggaran`, `spp`, `sptb`, `daftar_nominatif`, `st`, `sp2d`, `rincian`, `pengeluaran_rill`, `tanda_tiba`, `tiket_pesawat`, `boardingpass`, `spd`, `invoice_hotel`, `lapgas`, `undangan`, `sp_setneg`, `visa_paspor`, `nd_pengajuan`, `sk`, `ssp`, `sktjm_kpa`, `sk_honor`, `tanda_terima_honor`, `jadwal_kegiatan`, `absensi`, `materi_narsum`, `faktur_pajak`, `npwp`, `no_rek`, `kwitansi`, `alamat_lengkap_penyedia`, `id_pengajuan`, `status_pengajuan`) VALUES
(1, '1', '2', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, ''),
(3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, ''),
(4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, ''),
(5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, ''),
(6, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, ''),
(7, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, ''),
(19, '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 18, ''),
(24, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 23, ''),
(49, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 26, ''),
(51, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 27, ''),
(57, '1', '1', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 28, ''),
(64, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', 32, '0'),
(66, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 29, '1'),
(68, '1', '1', '1', '1', '1', '', '0', '', '', '', '', '', '', '', '', '', '', '', '1', '1', '1', '', '', '', '', '', '', '', '', '', '', '', 33, '1'),
(71, '1', '1', '1', '1', '1', '', '1', '', '', '', '', '', '', '', '', '', '', '', '1', '1', '1', '1', '1', '1', '1', '1', '1', '', '', '', '', '', 35, '1'),
(74, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 34, '1'),
(75, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 36, '1'),
(76, '1', '1', '1', '1', '1', '', '1', '', '', '', '', '', '', '', '', '', '', '', '1', '1', '1', '', '', '', '', '', '', '', '', '', '', '', 38, '1'),
(79, '1', '1', '1', '1', '1', '', '1', '', '', '', '', '', '', '', '', '', '', '', '1', '1', '1', '1', '1', '1', '1', '1', '1', '', '', '', '', '', 44, '1'),
(80, '1', '1', '1', '1', '1', '', '1', '', '', '', '', '', '', '', '', '', '', '', '1', '1', '1', '1', '1', '1', '1', '1', '1', '', '', '', '', '', 43, '1');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mak` (`mak`);

--
-- Indeks untuk tabel `detail_pengajuan`
--
ALTER TABLE `detail_pengajuan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jenis`
--
ALTER TABLE `jenis`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jenis_pengajuan`
--
ALTER TABLE `jenis_pengajuan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `k_cair`
--
ALTER TABLE `k_cair`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `nodin`
--
ALTER TABLE `nodin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pencairan`
--
ALTER TABLE `pencairan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengajuan`
--
ALTER TABLE `pengajuan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `satker`
--
ALTER TABLE `satker`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_groups`
--
ALTER TABLE `user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `group_level` (`group_level`);

--
-- Indeks untuk tabel `verifikasi`
--
ALTER TABLE `verifikasi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `akun`
--
ALTER TABLE `akun`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT untuk tabel `detail_pengajuan`
--
ALTER TABLE `detail_pengajuan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=306;

--
-- AUTO_INCREMENT untuk tabel `jenis`
--
ALTER TABLE `jenis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `jenis_pengajuan`
--
ALTER TABLE `jenis_pengajuan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `k_cair`
--
ALTER TABLE `k_cair`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `nodin`
--
ALTER TABLE `nodin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `pencairan`
--
ALTER TABLE `pencairan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT untuk tabel `pengajuan`
--
ALTER TABLE `pengajuan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT untuk tabel `satker`
--
ALTER TABLE `satker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `user_groups`
--
ALTER TABLE `user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `verifikasi`
--
ALTER TABLE `verifikasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
