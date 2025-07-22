-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2025 at 10:57 AM
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
-- Database: `marketplace2899`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `nama`) VALUES
(1, 'admin@gmail.com', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Alvino');

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `id_artikel` int(11) NOT NULL,
  `judul_artikel` varchar(255) NOT NULL,
  `isi_artikel` text NOT NULL,
  `foto_artikel` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`id_artikel`, `judul_artikel`, `isi_artikel`, `foto_artikel`) VALUES
(1, 'Sejarah Roti Tawar', '<p>Roti tawar merupakan salah satu jenis roti paling populer di dunia yang berasal dari perkembangan roti beragi di Mesir Kuno. Seiring waktu, teknik pembuatannya berkembang di Eropa, terutama setelah Revolusi Industri yang memungkinkan produksi massal roti putih. Di Indonesia, roti tawar mulai dikenal pada masa kolonial Belanda dan kemudian menyebar luas ke masyarakat. Kini, roti tawar menjadi makanan sehari-hari yang praktis dan serbaguna, cocok untuk berbagai kalangan dan kebutuhan.</p>\r\n', 'download_(8).jpeg'),
(2, 'Proses Singkat Pembuatan Roti', '<p>Pembuatan roti dimulai dengan mencampur bahan utama seperti tepung, ragi, air, dan gula, lalu diuleni hingga kalis. Setelah itu, adonan difermentasi hingga mengembang, dibentuk sesuai keinginan, lalu difermentasi lagi. Langkah terakhir adalah memanggang adonan hingga matang dan berwarna keemasan, kemudian didinginkan sebelum disajikan.</p>\r\n', 'Korean_Cream_Cheese_Garlic_Bread_-_Nurtured_Homes.jpeg'),
(3, 'Macam-Macam Roti', '<p>Roti memiliki beragam jenis berdasarkan bahan, bentuk, dan cara pembuatannya. Beberapa di antaranya adalah <strong>roti tawar</strong> yang lembut dan praktis, <strong>roti gandum</strong> yang lebih sehat karena serat tinggi, <strong>croissant</strong> berlapis-lapis dan bertekstur renyah, serta <strong>roti manis</strong> seperti roti isi cokelat, keju, atau selai. Ada juga <strong>roti artisan</strong> seperti baguette atau sourdough yang dibuat dengan teknik tradisional. Setiap jenis roti memiliki cita rasa dan keunikan tersendiri, sesuai dengan selera dan kebutuhan konsumen.</p>\r\n', 'Korean_Garlic_Bread_Sedap_Gurih_Praktis_-_Resep___ResepKoki.jpeg'),
(4, 'Tingkat Kesukaan Roti Dunia', '<p>Tingkat kesukaan roti di dunia&nbsp;sangat beragam, tetapi beberapa jenis roti secara konsisten populer dan digemari.&nbsp;Roti canai, naan bawang putih mentega, dan baguette adalah beberapa contoh roti yang mendapat pengakuan global karena rasa dan teksturnya.&nbsp;Sementara itu, Turki dikenal sebagai negara dengan konsumsi roti tertinggi di dunia.&nbsp;</p>\r\n', 'CLAUDIA_JOSES_ARTISTIC_DEERING_ESTATE_WEDDING_—_Thierry_Isambert_Culinary_Event_Design.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `foto_kategori` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `foto_kategori`) VALUES
(8, 'Makanan', 'Classic_French_Croissants_101_Guide.jpg'),
(10, 'Donat', 'Baked_Cinnamon_Sugar_Donuts_30_Minutes1.jpg'),
(11, 'Minuman', 'download_(8)1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `keranjang`
--

CREATE TABLE `keranjang` (
  `id_keranjang` int(11) NOT NULL,
  `id_member_jual` int(11) NOT NULL,
  `id_member_beli` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id_member` int(11) NOT NULL,
  `email_member` varchar(100) NOT NULL,
  `password_member` varchar(100) NOT NULL,
  `nama_member` varchar(100) NOT NULL,
  `alamat_member` text NOT NULL,
  `wa_member` varchar(50) NOT NULL,
  `kode_distrik_member` varchar(10) NOT NULL,
  `nama_distrik_member` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id_member`, `email_member`, `password_member`, `nama_member`, `alamat_member`, `wa_member`, `kode_distrik_member`, `nama_distrik_member`) VALUES
(1, 'vino@gmail.com', 'f0e4876639b7963b2b6a6fd1258ff58fdffd0a85', 'Fransiskus', 'Brebes', '08666122312', '92', 'Kabupaten Brebes Jawa Tengah'),
(3, 'alyamadora@gmail.com', 'c6c7d29c4fe1870d0426cdab1370167215180369', 'Ansel', 'Salatiga', '0812368648211', '386', 'Kota Salatiga Jawa Tengah');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `id_member` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `harga_produk` int(11) NOT NULL,
  `foto_produk` varchar(255) NOT NULL,
  `deskripsi_produk` text NOT NULL,
  `berat_produk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `id_member`, `id_kategori`, `nama_produk`, `harga_produk`, `foto_produk`, `deskripsi_produk`, `berat_produk`) VALUES
(1, 1, 8, 'French Croissants', 35000, 'Classic_French_Croissants_101_Guide.jpg', 'roti atau pastry berbentuk bulan sabit yang populer di seluruh dunia, terutama dikenal sebagai kudapan khas Prancis', 360),
(2, 1, 8, 'Roti Gndum', 25000, 'Crusty_French_Baguette_Recipe__A_Taste_of_Paris1.jpg', 'roti atau pastry berbentuk bulan sabit yang populer di seluruh dunia, terutama dikenal sebagai kudapan khas Prancis', 360),
(3, 1, 8, 'Baked Muffins', 30000, 'Smells_Like_Home__The_Comfort_of_Freshly_Baked_Muffins1.jpg', 'Baked muffins adalah roti cepat saji manis dengan tekstur lembut, mengembang, dan cenderung merekah di bagian atasnya. Muffin dipanggang dalam wadah kecil berbentuk cangkir atau loyang dengan cekungan seukuran cangkir. ', 250),
(6, 1, 10, 'Donat Berliner', 50000, 'download_(10).jpeg', 'Donat berbentuk bulat, digoreng, dan biasanya berisi krim atau selai. ', 12),
(7, 1, 10, 'Donat Coklat', 50000, 'download_(11).jpeg', 'Dengan coklat lumer', 12),
(8, 1, 10, 'Donat Seres', 60000, 'Donuts_para_Comemorações_Especiais.jpeg', 'Dengan berbagai rasa seres', 12),
(9, 1, 10, 'Donat strawberry', 50000, 'download_(12).jpeg', 'Dengan rasa strawberry yang manis dan legit', 12),
(10, 1, 11, 'Coklat Cream', 10000, 'Chocolate_Brownie_Milkshake.jpeg', 'Dengan rasa coklat yang manis dan creamy', 120),
(11, 1, 11, 'Blueberry Milk', 10000, 'download_(13).jpeg', 'Dengan rasa segar dari blueberry dan manis dari susu', 120),
(12, 1, 11, 'Manggo Milk', 10000, 'download_(14).jpeg', 'Dengan rasa manis dan segar dari mangga perpaduan dengan susu', 120),
(13, 1, 11, 'Strawberry Milk', 10000, 'Easy_Korean_Strawberry_Milk_(3-Ingredient_Recipe!).jpeg', 'Manjakan harimu dengan kesegaran Strawberry Milkshake yang dibuat dari perpaduan sempurna strawberry segar pilihan, susu full cream yang creamy, dan es batu yang menyegarkan.\r\nRasanya manis-asam alami buah stroberi berpadu lembut di lidah, cocok untuk cuaca panas atau sebagai teman camilanmu!', 120);

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id_slider` int(11) NOT NULL,
  `caption_slider` text NOT NULL,
  `foto_slider` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id_slider`, `caption_slider`, `foto_slider`) VALUES
(2, '<p>NOYA</p>\r\n', 'Brown_and_White_Simple_Bakery_Shop_Presentation.png'),
(3, '<p>NOYA</p>\r\n', 'download_(5).jpg'),
(4, '<p>NOYA</p>\r\n', '¿Es_malo_comer_harina__Mitos_sobre_el_gluten_que_es_bueno_aclarar_-_Movida_Sana.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `kode_transaksi` varchar(50) NOT NULL,
  `id_member_beli` int(11) NOT NULL,
  `id_member_jual` int(11) NOT NULL,
  `tanggal_transaksi` datetime NOT NULL DEFAULT current_timestamp(),
  `belanja_transaksi` int(11) NOT NULL,
  `status_transaksi` enum('pesan','lunas','batal','dikirim','selesai') NOT NULL DEFAULT 'pesan',
  `ongkir_transaksi` int(11) NOT NULL,
  `total_transaksi` int(11) NOT NULL,
  `bayar_transaksi` int(11) NOT NULL,
  `distrik_pengirim` varchar(255) NOT NULL,
  `nama_pengirim` varchar(100) NOT NULL,
  `wa_pengirim` varchar(50) NOT NULL,
  `alamat_pengirim` text NOT NULL,
  `distrik_penerima` varchar(255) NOT NULL,
  `nama_penerima` varchar(100) NOT NULL,
  `wa_penerima` varchar(50) NOT NULL,
  `alamat_penerima` text NOT NULL,
  `nama_ekspedisi` varchar(100) NOT NULL,
  `layanan_ekspedisi` varchar(100) NOT NULL,
  `estimasi_ekspedisi` varchar(50) NOT NULL,
  `berat_ekspedisi` varchar(50) NOT NULL,
  `resi_ekspedisi` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `kode_transaksi`, `id_member_beli`, `id_member_jual`, `tanggal_transaksi`, `belanja_transaksi`, `status_transaksi`, `ongkir_transaksi`, `total_transaksi`, `bayar_transaksi`, `distrik_pengirim`, `nama_pengirim`, `wa_pengirim`, `alamat_pengirim`, `distrik_penerima`, `nama_penerima`, `wa_penerima`, `alamat_penerima`, `nama_ekspedisi`, `layanan_ekspedisi`, `estimasi_ekspedisi`, `berat_ekspedisi`, `resi_ekspedisi`) VALUES
(8, '202507141042488930', 3, 1, '2025-07-14 10:42:48', 250000, 'lunas', 70000, 320000, 320000, 'Kabupaten Brebes Jawa Tengah', 'Fransiskus', '08666122312', 'Brebes', 'Kota Salatiga Jawa Tengah', 'Ansel', '0812368648211', 'Salatiga', 'Jalur Nugraha Ekakurir (JNE)', 'JNE Trucking', '70000', '1116', 'JP1234567890'),
(9, '202507141050594390', 3, 1, '2025-07-14 10:50:59', 175000, 'lunas', 19000, 194000, 194000, 'Kabupaten Brebes Jawa Tengah', 'Fransiskus', '08666122312', 'Brebes', 'Kota Salatiga Jawa Tengah', 'Ansel', '0812368648211', 'Salatiga', 'Jalur Nugraha Ekakurir (JNE)', 'Yakin Esok Sampai', '19000', '1800', NULL),
(10, '202507141053229297', 3, 1, '2025-07-14 10:53:22', 440000, 'lunas', 70000, 510000, 510000, 'Kabupaten Brebes Jawa Tengah', 'Fransiskus', '08666122312', 'Brebes', 'Kota Salatiga Jawa Tengah', 'Ansel', '0812368648211', 'Salatiga', 'Jalur Nugraha Ekakurir (JNE)', 'JNE Trucking', '70000', '4880', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_detail`
--

CREATE TABLE `transaksi_detail` (
  `id_transaksi_detail` int(11) NOT NULL,
  `id_transaksi` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `nama_beli` varchar(255) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `jumlah_beli` int(11) NOT NULL,
  `waktu_rating` datetime DEFAULT NULL,
  `ulasan_rating` text DEFAULT NULL,
  `jumlah_rating` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi_detail`
--

INSERT INTO `transaksi_detail` (`id_transaksi_detail`, `id_transaksi`, `id_produk`, `nama_beli`, `harga_beli`, `jumlah_beli`, `waktu_rating`, `ulasan_rating`, `jumlah_rating`) VALUES
(12, 8, 1, 'French Croissants', 35000, 2, '2025-07-14 10:45:03', '', 5),
(13, 8, 6, 'Donat Berliner', 50000, 3, '2025-07-14 10:45:03', '', 5),
(14, 8, 10, 'Coklat Cream', 10000, 3, '2025-07-14 10:45:03', '', 5),
(15, 9, 1, 'French Croissants', 35000, 5, '2025-07-14 10:52:50', '', 5),
(16, 10, 2, 'Roti Gndum', 25000, 8, '2025-07-14 10:53:47', '', 5),
(17, 10, 3, 'Baked Muffins', 30000, 8, '2025-07-14 10:53:47', '', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id_artikel`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id_keranjang`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id_slider`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indexes for table `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  ADD PRIMARY KEY (`id_transaksi_detail`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id_artikel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id_keranjang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id_member` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id_slider` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  MODIFY `id_transaksi_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
