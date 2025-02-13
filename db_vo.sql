-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 26, 2024 at 10:44 AM
-- Server version: 10.3.39-MariaDB-cll-lve
-- PHP Version: 8.1.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jetn8168_vo`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_calendar`
--

CREATE TABLE `tbl_calendar` (
  `id` int(11) NOT NULL,
  `title` varchar(126) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `color` varchar(24) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `divisi_id` int(11) DEFAULT NULL,
  `create_by` varchar(64) DEFAULT NULL,
  `modified_by` varchar(64) DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_calendar`
--

INSERT INTO `tbl_calendar` (`id`, `title`, `description`, `color`, `start_date`, `end_date`, `create_at`, `divisi_id`, `create_by`, `modified_by`, `modified_at`) VALUES
(5, 'rat', 'uags', '#40E0D0', '2024-07-09', '2024-07-11', '2024-07-31 07:20:56', 1, 'Contoh staff', 'Contoh staff', '2024-07-31 07:21:33');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_divisi`
--

CREATE TABLE `tbl_divisi` (
  `id_divisi` int(11) NOT NULL,
  `divisi` varchar(255) DEFAULT NULL,
  `kode_divisi` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_divisi`
--

INSERT INTO `tbl_divisi` (`id_divisi`, `divisi`, `kode_divisi`) VALUES
(1, 'Group Information Technology and General affiar', 'ITGA/M'),
(2, 'Group Settlement and Custodian', 'CUS/M'),
(3, 'Group Sales and Marketing', 'MAR/M'),
(4, 'Group Accounting and finance', 'FIN/M'),
(5, 'Group compliance and Audit internal', 'CIA/M'),
(6, 'Group Risk Manajemen', 'RM/M');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_lampiran`
--

CREATE TABLE `tbl_lampiran` (
  `id_lampiran` int(11) NOT NULL,
  `nama_berkas` varchar(200) DEFAULT NULL,
  `ukuran` varchar(100) DEFAULT NULL,
  `token_lampiran` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_lampiran`
--

INSERT INTO `tbl_lampiran` (`id_lampiran`, `nama_berkas`, `ukuran`, `token_lampiran`) VALUES
(1, '7c7ecf0a681b9d8f71190f24e7d5ccd5.xlsx', '24.1', '391034e5177a9c9fa002984f41117aab'),
(2, 'da32378810e52e3a78c3880bcda62c74.xlsx', '24.1', 'a729da15bbf914dabd3e85443d945ba4'),
(3, 'c25265e9eb158b96d70ac192f7654184.xlsx', '24.1', 'f80156e93a5627c808ebc51c256af836'),
(4, 'da9619994e7eb81dd0653a7d751986f7.pdf', '508.91', '7dbfab78cc64f24cf1d6c8afe44d7b0f'),
(5, '81fd4caefb53d54cd693107416b70eb1.pdf', '930.19', '9bc6c1401d079de9f376f7f7be97887d'),
(6, 'd8a89caad3aa2746b56913b31cc732a1.PDF', '447.76', '7dfa92f29ebf6cb23484b24ffc3c64e5'),
(12, '2e2b20833ae12e00e035eed02de05e2e.pdf', '447.76', '6c343e0665fb7f7ccd1819cd260e9993'),
(9, 'a302fe34d29611b77e2b2b9b4eb1a32a.pdf', '177.38', 'd2d0bbae293fb60677cc73294a556073'),
(10, 'e5569162a143f04d537e0afed4095695.pdf', '177.38', 'eeb5384c735fda86685cbb2032d4d953'),
(13, 'c212cb3eb5c76f10a2193cfa2e150c46.pdf', '447.76', 'fe82a19aa7b9b4950b1645c8266a2839'),
(14, 'e55ea8ea5b2044e39d3a4deee8535d50.pdf', '447.76', '2c461d36843eaeece1b50d6c876db2dd'),
(15, '422bbb8b70dd3762ffded8218f0d021b.pdf', '447.76', 'c400b9945e5e4266579c5d44934ee83a'),
(16, '7dfc7fd44b42a005dd3f6a99b45a63bd.pdf', '2344.53', '42ed5ff30d2297d149073efd13c084ed'),
(17, 'a237edcc0ed2c073da88f50e81eaf791.pdf', '1024.25', 'b1c896e9250203ddc8ab2309c5b29959'),
(18, '95602ec7ffd32f4bd1f16a7168091ca8.pdf', '6769.42', 'ec541a2c14030f7693fdf8d694b7c5b0'),
(19, 'f87a2d5ae9f3ae6be7045cc5fb572ba4.pdf', '447.76', 'd55ed7ecb3b45f499174a7630ea67230');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_notula`
--

CREATE TABLE `tbl_notula` (
  `id_notula` int(11) NOT NULL,
  `jenis` varchar(255) DEFAULT NULL,
  `no_notula` varchar(50) DEFAULT NULL,
  `prioritas` varchar(200) DEFAULT NULL,
  `notulis` varchar(200) DEFAULT NULL,
  `divisi_id` int(11) DEFAULT NULL,
  `kategori` varchar(255) DEFAULT NULL,
  `tempat` varchar(255) DEFAULT NULL,
  `notula` varchar(255) DEFAULT NULL,
  `tgl_notula` varchar(255) DEFAULT NULL,
  `tgl_rapat` varchar(255) DEFAULT NULL,
  `tempat_rapat` varchar(255) DEFAULT NULL,
  `agenda` varchar(255) DEFAULT NULL,
  `penandatangan` int(11) DEFAULT NULL,
  `peserta` varchar(255) DEFAULT NULL,
  `kesimpulan` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_notula`
--

INSERT INTO `tbl_notula` (`id_notula`, `jenis`, `no_notula`, `prioritas`, `notulis`, `divisi_id`, `kategori`, `tempat`, `notula`, `tgl_notula`, `tgl_rapat`, `tempat_rapat`, `agenda`, `penandatangan`, `peserta`, `kesimpulan`) VALUES
(1, 'Notula', 'Nomor12345', 'Segera', '2', 1, 'Test Kategori', 'Semarang', 'Notula', '16-05-2024', '18-05-2024', 'Ruang rapat', 'Agenda', NULL, '3,4,1', '<p>ddd</p>'),
(2, 'Notula', 'Nomor123', 'Biasa', '2', 2, 'Test Kategori', 'Semarang', 'Notula', '24-05-2024', '24-05-2024', 'Ruang rapat', 'utru', NULL, '2,5', '<p>try ert&nbsp;</p>'),
(3, 'Notula', '001', 'Biasa', '6', 1, 'Notula Rapat', 'Bandung', 'Bandung', '15-07-2024', '01-07-2024', 'Bandung', 'test', NULL, '2,7,10,11,8,9,21,3,12,13,14,4,5,16,19,20,15,17,18', '<p>asxasxa</p>'),
(4, 'Notula', '71584121', 'Biasa', '22', 1, 'a', 'bejing', 'sya', '31-07-2024', '10-07-2024', 'baju', 'oentih', NULL, '2,7,11', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_surat`
--

CREATE TABLE `tbl_surat` (
  `id_surat` int(11) NOT NULL,
  `kode_id` int(11) DEFAULT NULL,
  `no_surat` text DEFAULT NULL,
  `jenis` varchar(255) DEFAULT NULL,
  `pengirim_id` int(11) DEFAULT NULL,
  `dv_pengirim` int(11) DEFAULT NULL,
  `dv_penerima` int(11) DEFAULT NULL,
  `perihal` text DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `kategori` varchar(255) DEFAULT NULL,
  `tempat` varchar(255) DEFAULT NULL,
  `lampiran` varchar(50) DEFAULT NULL,
  `token_lampiran` varchar(255) DEFAULT NULL,
  `cc` varchar(255) DEFAULT NULL,
  `prioritas` varchar(20) DEFAULT NULL,
  `penandatangan` int(11) DEFAULT NULL,
  `dibaca` int(11) DEFAULT NULL,
  `di` varchar(255) DEFAULT NULL,
  `tgl_persetujuan` varchar(20) DEFAULT NULL,
  `alasan` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `disposisi` int(11) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `alasan_disposisi` varchar(255) DEFAULT NULL,
  `status_disposisi` varchar(100) DEFAULT NULL,
  `tempat_rapat` varchar(255) DEFAULT NULL,
  `tgl_disposisi` varchar(50) DEFAULT NULL,
  `tgl_surat` varchar(12) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_surat`
--

INSERT INTO `tbl_surat` (`id_surat`, `kode_id`, `no_surat`, `jenis`, `pengirim_id`, `dv_pengirim`, `dv_penerima`, `perihal`, `keterangan`, `kategori`, `tempat`, `lampiran`, `token_lampiran`, `cc`, `prioritas`, `penandatangan`, `dibaca`, `di`, `tgl_persetujuan`, `alasan`, `status`, `disposisi`, `note`, `alasan_disposisi`, `status_disposisi`, `tempat_rapat`, `tgl_disposisi`, `tgl_surat`) VALUES
(22, 2, '002/ITGA/M/2024', 'Memo', 6, 1, 2, 'pembayaran biaya', '<p>test</p>', 'test', 'Bandung', '1 Lampiran', 'd55ed7ecb3b45f499174a7630ea67230', NULL, 'Biasa', 7, NULL, NULL, '2024-06-07', NULL, 'Approve', 9, NULL, 'untuk ditindak lanjuti\r\n', 'Disposisi', NULL, '2024-06-07', '2024-06-07'),
(21, 1, '001/ITGA/M/2024', 'Memo', 6, 1, 2, 'Permohonan Pembayaran Biaya Biznet', '<p class=\"MsoNormal\" style=\"margin-top:0cm;margin-right:6.0pt;margin-bottom:0cm;\r\nmargin-left:347.3pt;line-height:normal\"><br></p><p class=\"MsoNormal\" style=\"margin-bottom:0cm;line-height:normal\"><b style=\"font-size: 1rem;\"><span style=\"font-size:12.0pt;font-family:\"Arial\",sans-serif;mso-fareast-font-family:\r\n\"Times New Roman\";color:#333333;border:none windowtext 1.0pt;mso-border-alt:\r\nnone windowtext 0cm;padding:0cm\">Kepada Yth.</span></b></p><p class=\"MsoNormal\" style=\"margin-bottom:0cm;line-height:normal\"><span style=\"font-size:\r\n12.0pt;font-family:\"Arial\",sans-serif;mso-fareast-font-family:\"Times New Roman\";\r\ncolor:#333333\">\r\n<b><span style=\"border:none windowtext 1.0pt;mso-border-alt:none windowtext 0cm;\r\npadding:0cm\">HRD <o:p></o:p></span></b></span></p><p class=\"MsoNormal\" style=\"margin-bottom:13.2pt;line-height:normal\"><span style=\"font-size:12.0pt;font-family:\"Arial\",sans-serif;mso-fareast-font-family:\r\n\"Times New Roman\";color:#333333\">Dengan hormat,<br>\r\nSaya yang bertanda tangan dibawah ini :<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom:13.2pt;line-height:normal\"><span style=\"font-size:12.0pt;font-family:\"Arial\",sans-serif;mso-fareast-font-family:\r\n\"Times New Roman\";color:#333333\">Nama\r\n             \r\n                     :\r\n<br>\r\nTempat & tanggal Lahir        : <br>\r\nAlamat\r\n                                 :\r\n<br>\r\nNo. HP\r\n                                 :\r\n<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom:13.2pt;text-align:justify;line-height:\r\nnormal\"><span style=\"font-size:12.0pt;font-family:\"Arial\",sans-serif;\r\nmso-fareast-font-family:\"Times New Roman\";color:#333333\">Dengan ini\r\nmenyampaikan permohonan kepada Bapak/Ibu, agar kiranya dapat diterima menjadi\r\nsalah satu di Perusahaan PT bjb Sekuritas dengan posisi sebagai Office boy:<o:p></o:p></span></p><ol style=\"margin-top:0cm\" start=\"1\" type=\"1\">\r\n <li class=\"MsoNormal\" style=\"color:#333333;margin-bottom:0cm;line-height:normal;\r\n     mso-list:l0 level1 lfo1;tab-stops:list 36.0pt\"><span style=\"font-size:\r\n     12.0pt;font-family:\"Arial\",sans-serif;mso-fareast-font-family:\"Times New Roman\"\">Fotocopy\r\n     Ijazah Terakhir<o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"color:#333333;margin-bottom:0cm;line-height:normal;\r\n     mso-list:l0 level1 lfo1;tab-stops:list 36.0pt\"><span style=\"font-size:\r\n     12.0pt;font-family:\"Arial\",sans-serif;mso-fareast-font-family:\"Times New Roman\"\">Fotocopy\r\n     KTP<o:p></o:p></span></li>\r\n</ol><p class=\"MsoListParagraph\" style=\"margin-bottom:0cm;mso-add-space:auto;\r\ntext-indent:-18.0pt;line-height:normal;mso-list:l0 level1 lfo1;tab-stops:list 36.0pt\"><!--[if !supportLists]--><span style=\"font-size:12.0pt;font-family:\"Arial\",sans-serif;mso-fareast-font-family:\r\nArial;color:#333333\">3.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \"Times New Roman\";\">   \r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:\"Arial\",sans-serif;\r\nmso-fareast-font-family:\"Times New Roman\";color:#333333\">Curriculum vitae (CV) <o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-top:0cm;margin-right:0cm;margin-bottom:0cm;\r\nmargin-left:36.0pt;line-height:normal\"><span style=\"font-size:12.0pt;\r\nfont-family:\"Arial\",sans-serif;mso-fareast-font-family:\"Times New Roman\";\r\ncolor:#333333\"> </span></p><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"margin-bottom:13.2pt;line-height:normal\"><span style=\"font-size:12.0pt;font-family:\"Arial\",sans-serif;mso-fareast-font-family:\r\n\"Times New Roman\";color:#333333\">Demikian untuk menjadikan periksa adanya,\r\nbesar harapan saya untuk dapat diterima di Perusahaan ini.  Atas perhatian\r\ndan terkabulnya permohonan ini saya ucapkan Terima kasih.<o:p></o:p></span></p>', 'test', 'Bandung', '1 Lampiran', 'ec541a2c14030f7693fdf8d694b7c5b0', '2', 'Biasa', 7, NULL, NULL, '2024-06-07', NULL, 'Approve', 9, NULL, 'g', 'Disposisi', NULL, '2024-07-15', '2024-06-06'),
(23, 3, '001/DIR/M/2024', 'Surat', 22, 1, 2, 'Nota', '', 'Surat Keluar', 'Jayapura', '-', '359c479c4aa83deb5fc9ecdf851ffc75', '3', 'Segera', 7, NULL, NULL, '2024-11-22', NULL, 'Approve', NULL, NULL, NULL, 'Pending', NULL, NULL, '2024-07-19'),
(24, 4, '004/ITGA/M/2024', 'Memo', 6, 1, 4, 'Permohonan Pembayaran Biaya Biznet', '<p>Test</p>', 'Invoice', 'Bandung', '1 Lampiran', 'c37b6565376693bdfe6621d9fd1060c3', '2', 'Biasa', 2, NULL, NULL, '2024-11-24', NULL, 'Approve', NULL, NULL, NULL, 'Pending', NULL, NULL, '2024-11-24'),
(25, 5, '005/ITGA/M/2024', 'Memo', 6, 1, 4, 'Permohonan Pembayaran biaya biznet', '<p><font face=\"Source Sans Pro\">Sehubungan dengan terbitnya tagihan Virtual Compute, Invoice 29385 tanggal 11 Februari 2024, dengan ini kami sampaikan permohonan pembayaran biaya tersebut dokumen terlampir. Adapun pembayaran dilakukan secara secara tunai.</font></p><p><font face=\"Source Sans Pro\">Demikian atas perhatian dan kerjasama yang baik diucapkan terima kasih.&nbsp;</font></p><div><br></div>', 'test', 'Bandung', '1 Lampiran', 'ced9fbcfb87f00ed3023c1f6e7403927', '1,2', 'Biasa', 23, NULL, NULL, NULL, NULL, 'Pending', NULL, NULL, NULL, 'Pending', NULL, NULL, '2024-12-05'),
(26, 6, '006/ITGA/M/2024', 'Memo', 6, 1, 4, 'permohonana biaya', '<p>test</p>', 'pengadaan barang', 'bandung', '1 Lampiran', 'e4b4bbcc6d600e34856cbcb68ab39fb8', '4', 'Urgent', 7, NULL, NULL, NULL, 'TY', 'Ditolak', NULL, NULL, NULL, 'Pending', NULL, NULL, '2024-12-05');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(11) NOT NULL,
  `nip` varchar(255) DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `divisi_id` int(11) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `no_hp` varchar(255) DEFAULT NULL,
  `image` varchar(128) DEFAULT NULL,
  `password` varchar(256) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `ttd` varchar(255) DEFAULT NULL,
  `status` enum('on','off') NOT NULL,
  `date` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `nip`, `name`, `divisi_id`, `email`, `no_hp`, `image`, `password`, `role_id`, `ttd`, `status`, `date`) VALUES
(1, '123456789', 'Admin Utama', 1, 'admin@gmail.com', '081234567890', 'profile.svg', '$2y$10$tMks6rlOa0.aPinHe2C62euSDQKuSR5qWwPqB21KYtJlpq2I.dKOe', 1, 'kepala.png', 'on', '07-05-2024'),
(2, '12345687900', 'Test Nama 02', 1, 'demo1@gmail.com', '081234568790', NULL, '$2y$10$Zcntp5dyga292AUuuXql.eWJ5h75KGo0tAmtq7xI5BMn3.mD6.iBO', 2, NULL, 'on', '2024-05-09'),
(3, '1235645848947', 'Test Nama 03', 3, 'demo2@gmail.com', '081234568790', NULL, '$2y$10$64bhAzmkluO6dboTxaDvcuzospevyWDL1giuM0vthfoglRrj9jDaC', 3, NULL, 'on', '2024-05-13'),
(4, '1235645848547', 'Test Nama 04', 5, 'demo3@gmail.com', '081234568790', NULL, '$2y$10$yyayRDV7sa6rN5a/O43d/.CzY5kULRfZzRHLCSDnL8Nw.5RBBlzNK', 4, NULL, 'on', '2024-05-13'),
(5, '123456879123', 'Test Nama 05', 5, 'demo5@gmail.com', '081234568790', NULL, '$2y$10$73ZK/3IV6te0QgMZHs0XSOnUz6GSWR1IKtVtqwvGD47FazYeRO7Km', 5, NULL, 'on', '2024-05-23'),
(6, '002', 'Diki Ramdani', 1, 'dramdani@gmail.com', '083811557100', NULL, '$2y$10$VmG2EsF6Osvp6raggabeDOgJvbIs7UzfSVBVzLVS2FWXgVlvR8/Vu', 5, NULL, 'on', '2024-05-27'),
(7, '001', 'Budi Nugraha', 1, 'bnugraha@gmail.com', '00000111', NULL, '$2y$10$cmuNXWiq1P6tzTPliqB8J.52Ne/58uXaRTef/c7IkLVrOGY12swuq', 4, NULL, 'on', '2024-05-27'),
(8, '003', 'Irfan Budiman', 2, 'ibudiman@gmail.com', '003', NULL, '$2y$10$5zUGeQTC10fBg3exP9Md9OChZW0tDDvgHvYwPqWBKYz.afdjpklUq', 5, NULL, 'on', '2024-05-27'),
(9, '004', 'Agus Rohman', 4, 'agro@gmail.com', '00004', NULL, '$2y$10$iJUYwOLMMCVAQoq7oW2K5OwUzGu.6k7i00zFmUe.147CjEnnHTySS', 4, NULL, 'on', '2024-05-27'),
(10, '000', 'Destri Oksa Viali', 1, 'dviali@gmail.com', '0000', NULL, '$2y$10$D25DqCjOBq34SxqguS9wRuU3qcO0zT7FKnfJmnoiQp3zbTu7zrV2O', 5, NULL, 'on', '2024-05-29'),
(11, '00', 'Rivalda Aulia', 1, 'rvalda@gmail.com', '00000', NULL, '$2y$10$CTpbH9ay5VzFv98JpGxo7Oxk3lK7grXeD0UVw8jhOhU0gRZD1Bxaq', 5, NULL, 'on', '2024-05-29'),
(12, '213', 'Yongki Abdurrahman', 2, 'yongki@gmail.com', '1111', NULL, '$2y$10$2yXQ7t3huYEjk4UV.ucOoOxaglal8KnyBUL9kFh0veUPpedHhUKXO', 4, NULL, 'on', '2024-05-29'),
(13, '123', 'Muhammad Rifqy Fauzi', 2, 'mrifqy@gmail.com', '3333', NULL, '$2y$10$IrFUML69f7a1vbxojrirbemtP5DdeEgjDQLwwI1i7NFLVfAseBz9.', 5, NULL, 'on', '2024-05-29'),
(14, '90909', 'Selvika Octafiani Amadea', 4, 'svika@gmail.com', '12345', NULL, '$2y$10$X.s.n2bOa8f6fVn8zeSXJORdUmDXCR1tXtMnntZynfXiua8L584V2', 5, NULL, 'on', '2024-05-29'),
(15, '3456', 'Nuryane Komalasari', 6, 'nyane@gmail.com', '8987', NULL, '$2y$10$NIUAmDxnv4ET.xgq53.zNO7jyCs0sYeAoY46p2oNOLSKT1KjNkWWq', 4, NULL, 'on', '2024-05-29'),
(16, '33345', 'Risa Dwitanti', 5, 'risa@gmail.com', '77777', NULL, '$2y$10$JMRj.LnhSigBXQYefzBpgudXP7QIe.SJSmn6KU1d/CDpH.ZpWzqE2', 4, NULL, 'on', '2024-05-29'),
(17, '343434', 'Sheila Vip Levina', 6, 'sheila@gmail.com', '8888', NULL, '$2y$10$1R3twqj4cLzAfAvY/T9nOeyYeYM4HRrszLhBdz5Igmu8CqREapggy', 5, NULL, 'on', '2024-05-29'),
(18, '7777', 'Prita Haerani', 6, 'prita@gmail.com', '9999', NULL, '$2y$10$nEdL0BiMLAB5UzTFsseSm.3Ndk1xsn4R4B1.6nR4VTpFMPSPtWHhm', 5, NULL, 'on', '2024-05-29'),
(19, '1312', 'Reza Pahla', 5, 'echa@gmail.com', '000', NULL, '$2y$10$XkkGQCSCJ2450PelBlL6DOoq4b4Nsr3rSaXDpnJH5ZGsOfDuAYJ7W', 5, NULL, 'on', '2024-05-29'),
(20, '2222', 'Ratu Almira', 5, 'rmira@gmail.com', '999', NULL, '$2y$10$WeEmC8iDvsukFQ.wQ8wtWu/XJO5B9BIKOQ6T7hPTmhkDWuqzCmEfm', 5, NULL, 'on', '2024-05-29'),
(21, '999', 'Intan Nurcahya Tumbelaka', 2, 'intan@gmail.com', '0000', NULL, '$2y$10$EfLOwhldr8G819CBb.3FjeuNpw0xgRJahmUj/NuWi9SJzzjAfc2bq', 5, NULL, 'on', '2024-05-29'),
(22, '123456789123', 'Contoh staff', 1, 'staff@gmail.com', '081234567894', NULL, '$2y$10$RdE8rsgy.oTVYxlU3xyIl.bkPf90.xbNCTGRSsvozQpxl3zngH70y', 5, NULL, 'on', '2024-07-19'),
(23, '2', 'Maryadi Suwondo', 1, 'maryadi@gmail.com', '083811557100', NULL, '$2y$10$ebxVnqAaIurIuiBylOB3K.RV4py1yzrTdsPi39CHo3da3w37IP1O.', 2, NULL, 'on', '2024-12-05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_calendar`
--
ALTER TABLE `tbl_calendar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_divisi`
--
ALTER TABLE `tbl_divisi`
  ADD PRIMARY KEY (`id_divisi`);

--
-- Indexes for table `tbl_lampiran`
--
ALTER TABLE `tbl_lampiran`
  ADD PRIMARY KEY (`id_lampiran`);

--
-- Indexes for table `tbl_notula`
--
ALTER TABLE `tbl_notula`
  ADD PRIMARY KEY (`id_notula`);

--
-- Indexes for table `tbl_surat`
--
ALTER TABLE `tbl_surat`
  ADD PRIMARY KEY (`id_surat`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_calendar`
--
ALTER TABLE `tbl_calendar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_divisi`
--
ALTER TABLE `tbl_divisi`
  MODIFY `id_divisi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_lampiran`
--
ALTER TABLE `tbl_lampiran`
  MODIFY `id_lampiran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_notula`
--
ALTER TABLE `tbl_notula`
  MODIFY `id_notula` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_surat`
--
ALTER TABLE `tbl_surat`
  MODIFY `id_surat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
