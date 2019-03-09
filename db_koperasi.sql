-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2019 at 01:42 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.0.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_koperasi`
--

-- --------------------------------------------------------

--
-- Table structure for table `table_benefits`
--

CREATE TABLE `table_benefits` (
  `benefits_id` int(11) NOT NULL,
  `benefits_name` varchar(255) NOT NULL,
  `benefits_desc` text NOT NULL,
  `benefits_image` text NOT NULL,
  `benefits_status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_benefits`
--

INSERT INTO `table_benefits` (`benefits_id`, `benefits_name`, `benefits_desc`, `benefits_image`, `benefits_status`) VALUES
(1, 'Kampanye Proyek', 'Anda bisa mulai berinvestasi. Pilih Proyek dan Lihat Investasi Anda berjalan membawa kebaikan.', 'benefits-image-00001.png', 1),
(2, 'Konsisten & Menguntungkan', 'Anda dapat berinvestasi dengan institusi, pengembang, dan kontraktor terpercaya. Diversifikasi portofolio investasi anda.', 'benefits-image-00002.png', 1),
(3, 'Teknologi Keuangan', 'Investasi, bisa anda lakukan kapan saja dan dimana saja. Pilih proyek yang anda sukai.', 'benefits-image-00003.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `table_company`
--

CREATE TABLE `table_company` (
  `company_id` int(11) NOT NULL,
  `company_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_company`
--

INSERT INTO `table_company` (`company_id`, `company_name`) VALUES
(1, 'Bangun Sultra Mandiri');

-- --------------------------------------------------------

--
-- Table structure for table `table_media`
--

CREATE TABLE `table_media` (
  `media_id` int(11) NOT NULL,
  `media_name` varchar(255) NOT NULL,
  `media_link` text NOT NULL,
  `media_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_media`
--

INSERT INTO `table_media` (`media_id`, `media_name`, `media_link`, `media_type`) VALUES
(1, 'Profil Perusahaan', 'https://www.youtube.com/embed/lBlQWgrU0DU', 'video'),
(2, 'Video Portfolio', 'https://www.youtube.com/embed/AORh-aQ8v0E', 'video'),
(3, 'Proses Daftar Investor Baru', 'proses-daftar-investor.png', 'gambar');

-- --------------------------------------------------------

--
-- Table structure for table `table_project`
--

CREATE TABLE `table_project` (
  `project_id` int(11) NOT NULL,
  `project_name` varchar(255) NOT NULL,
  `project_desc` text NOT NULL,
  `project_image` text NOT NULL,
  `project_status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_project`
--

INSERT INTO `table_project` (`project_id`, `project_name`, `project_desc`, `project_image`, `project_status`) VALUES
(1, 'Perumahan Andunohu', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore.', 'project-image-0001.jpg', 1),
(2, 'Perumahan Lepo-lepo', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore.', 'project-image-0002.jpg', 1),
(3, 'Perumahan Baruga', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore.', 'project-image-0003.jpg', 1),
(4, 'Perumahan Abeli', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore.', 'project-image-0004.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `table_testimoni`
--

CREATE TABLE `table_testimoni` (
  `testimoni_id` int(11) NOT NULL,
  `testimoni_name` varchar(255) NOT NULL,
  `testimoni_desc` text NOT NULL,
  `testimoni_image` text NOT NULL,
  `testimoni_rate` int(5) NOT NULL,
  `testimoni_status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_testimoni`
--

INSERT INTO `table_testimoni` (`testimoni_id`, `testimoni_name`, `testimoni_desc`, `testimoni_image`, `testimoni_rate`, `testimoni_status`) VALUES
(1, 'Tiyan', 'Accessories Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker, projector, hardware.', 'testi-man.png', 4, 1),
(2, 'Mey', 'Accessories Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker, projector, hardware.', 'testi-girl.png', 5, 1),
(3, 'Riksan', 'Accessories Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker, projector, hardware.', 'testi-man.png', 5, 1),
(4, 'Ryan', 'Accessories Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker, projector, hardware.', 'testi-man.png', 4, 1),
(5, 'Indah', 'Accessories Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker, projector, hardware.', 'testi-girl.png', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `table_user`
--

CREATE TABLE `table_user` (
  `user_id` varchar(50) NOT NULL,
  `user_name` varchar(200) NOT NULL,
  `user_password` text NOT NULL,
  `user_email` varchar(200) NOT NULL,
  `user_firstname` varchar(100) NOT NULL,
  `user_lastname` varchar(100) NOT NULL,
  `user_phone` varchar(16) NOT NULL,
  `user_address` text NOT NULL,
  `user_codeactivation` varchar(50) NOT NULL,
  `user_registrationdate` datetime NOT NULL,
  `user_image` text NOT NULL,
  `user_status` char(1) NOT NULL,
  `user_group` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_user`
--

INSERT INTO `table_user` (`user_id`, `user_name`, `user_password`, `user_email`, `user_firstname`, `user_lastname`, `user_phone`, `user_address`, `user_codeactivation`, `user_registrationdate`, `user_image`, `user_status`, `user_group`) VALUES
('user20190210110054425', 'admin@bsm.com', '6eea9b7ef19179a06954edd0f6c05ceb', 'admin@bsm.com', 'Admin', 'Bangun SULTRA Mandiri', '082322331144', 'Jalan Supu Yusuf, No. 9, Kelurahan Mandonga, Kota Kendari', '20190209101854596', '2019-02-21 17:30:00', 'user-img-20190309095423.png', 'Y', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `table_benefits`
--
ALTER TABLE `table_benefits`
  ADD PRIMARY KEY (`benefits_id`);

--
-- Indexes for table `table_company`
--
ALTER TABLE `table_company`
  ADD PRIMARY KEY (`company_id`);

--
-- Indexes for table `table_media`
--
ALTER TABLE `table_media`
  ADD PRIMARY KEY (`media_id`);

--
-- Indexes for table `table_project`
--
ALTER TABLE `table_project`
  ADD PRIMARY KEY (`project_id`);

--
-- Indexes for table `table_testimoni`
--
ALTER TABLE `table_testimoni`
  ADD PRIMARY KEY (`testimoni_id`);

--
-- Indexes for table `table_user`
--
ALTER TABLE `table_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `table_benefits`
--
ALTER TABLE `table_benefits`
  MODIFY `benefits_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `table_company`
--
ALTER TABLE `table_company`
  MODIFY `company_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `table_media`
--
ALTER TABLE `table_media`
  MODIFY `media_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `table_project`
--
ALTER TABLE `table_project`
  MODIFY `project_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `table_testimoni`
--
ALTER TABLE `table_testimoni`
  MODIFY `testimoni_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
