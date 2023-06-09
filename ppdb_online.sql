-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2023 at 03:34 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ppdb_online`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_12_26_184135_create_agama_table', 1),
(5, '2020_12_26_184850_create_jurusan_table', 1),
(6, '2020_12_26_185449_create_penghasilan_ortu_table', 1),
(7, '2020_12_26_185934_create_jenis_kelamin_table', 1),
(8, '2020_12_26_190125_create_pekerjaan_ortu_table', 1),
(9, '2020_12_26_190939_create_peserta_ppdb__table', 1),
(10, '2020_12_26_194227_create_hasil_table', 1),
(11, '2020_12_27_144723_create_biodata_ortu_table', 1),
(12, '2021_03_21_063834_add_id_peserta_ppdb_in_tbl_biodata_ortu', 1),
(13, '2021_03_21_151616_delete_some_column_in_hasil_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_agama`
--

CREATE TABLE `tbl_agama` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_agama` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_agama`
--

INSERT INTO `tbl_agama` (`id`, `nama_agama`, `created_at`, `updated_at`) VALUES
(1, 'islam', NULL, NULL),
(2, 'Katolik', '2023-06-08 03:00:37', '2023-06-08 03:00:37'),
(3, 'Protestan', '2023-06-08 03:00:50', '2023-06-08 03:00:50'),
(4, 'Hindu', '2023-06-08 03:01:01', '2023-06-08 03:01:01'),
(5, 'Buddha', '2023-06-08 03:01:06', '2023-06-08 03:01:14'),
(6, 'Konghucu', '2023-06-08 03:01:31', '2023-06-08 03:01:31');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_biodata_ortu`
--

CREATE TABLE `tbl_biodata_ortu` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_pekerjaan_ayah` bigint(20) UNSIGNED NOT NULL,
  `id_pekerjaan_ibu` bigint(20) UNSIGNED NOT NULL,
  `id_penghasilan_ayah` bigint(20) UNSIGNED NOT NULL,
  `id_penghasilan_ibu` bigint(20) UNSIGNED NOT NULL,
  `nama_ayah` varchar(255) NOT NULL,
  `nama_ibu` varchar(255) NOT NULL,
  `no_tlp` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_peserta_ppdb` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_biodata_ortu`
--

INSERT INTO `tbl_biodata_ortu` (`id`, `id_pekerjaan_ayah`, `id_pekerjaan_ibu`, `id_penghasilan_ayah`, `id_penghasilan_ibu`, `nama_ayah`, `nama_ibu`, `no_tlp`, `created_at`, `updated_at`, `id_peserta_ppdb`) VALUES
(4, 1, 1, 2, 2, '123123', 'dasdas', 2131312, '2023-06-08 03:07:52', '2023-06-08 03:07:52', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hasil`
--

CREATE TABLE `tbl_hasil` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nis` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(100) DEFAULT 'MENUNGGU'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_hasil`
--

INSERT INTO `tbl_hasil` (`id`, `nis`, `created_at`, `updated_at`, `status`) VALUES
(4, 4, '2023-06-08 03:07:52', '2023-06-08 03:08:03', 'DITERIMA');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jenis_kelamin`
--

CREATE TABLE `tbl_jenis_kelamin` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jenis_kelamin` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_jenis_kelamin`
--

INSERT INTO `tbl_jenis_kelamin` (`id`, `jenis_kelamin`, `created_at`, `updated_at`) VALUES
(1, 'laki-laki', NULL, NULL),
(2, 'Perempuan', '2023-06-08 03:01:43', '2023-06-08 03:01:43');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pekerjaan_ortu`
--

CREATE TABLE `tbl_pekerjaan_ortu` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_pekerjaan` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_pekerjaan_ortu`
--

INSERT INTO `tbl_pekerjaan_ortu` (`id`, `nama_pekerjaan`, `created_at`, `updated_at`) VALUES
(1, 'buruh', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_penghasilan_ortu`
--

CREATE TABLE `tbl_penghasilan_ortu` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `penghasilan_ortu` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_penghasilan_ortu`
--

INSERT INTO `tbl_penghasilan_ortu` (`id`, `penghasilan_ortu`, `created_at`, `updated_at`) VALUES
(2, 500000, '2023-06-08 03:03:01', '2023-06-08 03:03:01');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_peserta_ppdb`
--

CREATE TABLE `tbl_peserta_ppdb` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_jenis_kelamin` bigint(20) UNSIGNED NOT NULL,
  `id_agama` bigint(20) UNSIGNED NOT NULL,
  `id_penghasilan_ortu` bigint(20) UNSIGNED NOT NULL,
  `id_pekerjaan_ortu` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `tempat_lahir` varchar(255) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `asal_sekolah` varchar(255) NOT NULL,
  `alamat` longtext NOT NULL,
  `no_telp` varchar(255) NOT NULL,
  `nama_ortu` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_peserta_ppdb`
--

INSERT INTO `tbl_peserta_ppdb` (`id`, `id_jenis_kelamin`, `id_agama`, `id_penghasilan_ortu`, `id_pekerjaan_ortu`, `nama`, `tempat_lahir`, `tanggal_lahir`, `asal_sekolah`, `alamat`, `no_telp`, `nama_ortu`, `created_at`, `updated_at`) VALUES
(4, 2, 3, 2, 1, 'udin', 'asdas', '2002-06-12', 'sad', 'asd', '2321321', '123123', '2023-06-08 03:07:52', '2023-06-08 03:07:52');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Developer', 'admin@admin.com', NULL, '$2y$10$NJBCLGHVFLjXpuh6j90xJOUgUQu06aYeBGKuVjp.x0Mto9zMOIX0O', NULL, '2023-06-07 05:34:26', '2023-06-07 05:34:26'),
(2, 'aditya', 'adit@gmail.com', NULL, '$2y$10$NMlYj6rOkdyqk8xSnxCtHO/BsMffBdDRX40lv5T7QrHLVFnJ5LmBS', NULL, '2023-06-08 03:16:00', '2023-06-08 03:25:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `tbl_agama`
--
ALTER TABLE `tbl_agama`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_biodata_ortu`
--
ALTER TABLE `tbl_biodata_ortu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_biodata_ortu_id_pekerjaan_ayah_foreign` (`id_pekerjaan_ayah`),
  ADD KEY `tbl_biodata_ortu_id_pekerjaan_ibu_foreign` (`id_pekerjaan_ibu`),
  ADD KEY `tbl_biodata_ortu_id_penghasilan_ayah_foreign` (`id_penghasilan_ayah`),
  ADD KEY `tbl_biodata_ortu_id_penghasilan_ibu_foreign` (`id_penghasilan_ibu`),
  ADD KEY `tbl_biodata_ortu_id_peserta_ppdb_foreign` (`id_peserta_ppdb`);

--
-- Indexes for table `tbl_hasil`
--
ALTER TABLE `tbl_hasil`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_hasil_nis_foreign` (`nis`);

--
-- Indexes for table `tbl_jenis_kelamin`
--
ALTER TABLE `tbl_jenis_kelamin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_pekerjaan_ortu`
--
ALTER TABLE `tbl_pekerjaan_ortu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_penghasilan_ortu`
--
ALTER TABLE `tbl_penghasilan_ortu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_peserta_ppdb`
--
ALTER TABLE `tbl_peserta_ppdb`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_peserta_ppdb_id_jenis_kelamin_foreign` (`id_jenis_kelamin`),
  ADD KEY `tbl_peserta_ppdb_id_agama_foreign` (`id_agama`),
  ADD KEY `tbl_peserta_ppdb_id_penghasilan_ortu_foreign` (`id_penghasilan_ortu`),
  ADD KEY `tbl_peserta_ppdb_id_pekerjaan_ortu_foreign` (`id_pekerjaan_ortu`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_agama`
--
ALTER TABLE `tbl_agama`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_biodata_ortu`
--
ALTER TABLE `tbl_biodata_ortu`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_hasil`
--
ALTER TABLE `tbl_hasil`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_jenis_kelamin`
--
ALTER TABLE `tbl_jenis_kelamin`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_pekerjaan_ortu`
--
ALTER TABLE `tbl_pekerjaan_ortu`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_penghasilan_ortu`
--
ALTER TABLE `tbl_penghasilan_ortu`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_peserta_ppdb`
--
ALTER TABLE `tbl_peserta_ppdb`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_biodata_ortu`
--
ALTER TABLE `tbl_biodata_ortu`
  ADD CONSTRAINT `tbl_biodata_ortu_id_pekerjaan_ayah_foreign` FOREIGN KEY (`id_pekerjaan_ayah`) REFERENCES `tbl_pekerjaan_ortu` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tbl_biodata_ortu_id_pekerjaan_ibu_foreign` FOREIGN KEY (`id_pekerjaan_ibu`) REFERENCES `tbl_pekerjaan_ortu` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tbl_biodata_ortu_id_penghasilan_ayah_foreign` FOREIGN KEY (`id_penghasilan_ayah`) REFERENCES `tbl_penghasilan_ortu` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tbl_biodata_ortu_id_penghasilan_ibu_foreign` FOREIGN KEY (`id_penghasilan_ibu`) REFERENCES `tbl_penghasilan_ortu` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tbl_biodata_ortu_id_peserta_ppdb_foreign` FOREIGN KEY (`id_peserta_ppdb`) REFERENCES `tbl_peserta_ppdb` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_hasil`
--
ALTER TABLE `tbl_hasil`
  ADD CONSTRAINT `tbl_hasil_nis_foreign` FOREIGN KEY (`nis`) REFERENCES `tbl_peserta_ppdb` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_peserta_ppdb`
--
ALTER TABLE `tbl_peserta_ppdb`
  ADD CONSTRAINT `tbl_peserta_ppdb_id_agama_foreign` FOREIGN KEY (`id_agama`) REFERENCES `tbl_agama` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tbl_peserta_ppdb_id_jenis_kelamin_foreign` FOREIGN KEY (`id_jenis_kelamin`) REFERENCES `tbl_jenis_kelamin` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tbl_peserta_ppdb_id_pekerjaan_ortu_foreign` FOREIGN KEY (`id_pekerjaan_ortu`) REFERENCES `tbl_pekerjaan_ortu` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tbl_peserta_ppdb_id_penghasilan_ortu_foreign` FOREIGN KEY (`id_penghasilan_ortu`) REFERENCES `tbl_penghasilan_ortu` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
