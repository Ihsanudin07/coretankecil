-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Des 2021 pada 08.46
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coretankecil`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `banner`
--

CREATE TABLE `banner` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sampul` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `konten` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `banner`
--

INSERT INTO `banner` (`id`, `sampul`, `judul`, `konten`, `slug`, `created_at`, `updated_at`) VALUES
(2, '1639050702-08.jpg', 'Belajar Laravel', '<p>pp</p>', 'belajar-laravel', '2021-12-09 04:51:42', '2021-12-09 04:51:42'),
(3, '1639057091-bromo.jpg', 'belajar web laravel', '<p>bismillah</p>', 'belajar-web-laravel', '2021-12-09 06:38:11', '2021-12-09 06:38:11'),
(4, '1639145475-141107_pod_indonesia.jpg', 'Coba', '<p>sss</p>', 'coba', '2021-12-10 07:11:15', '2021-12-10 07:11:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id`, `nama`, `slug`, `created_at`, `updated_at`) VALUES
(13, 'Web Programming', 'web-programming', '2021-12-08 09:23:49', '2021-12-08 09:23:49'),
(14, 'Belajar Bahasa Pemograman', 'belajar-bahasa-pemograman', '2021-12-08 09:24:11', '2021-12-08 09:24:11'),
(15, 'Info Webinar Indonesia', 'info-webinar-indonesia', '2021-12-08 09:24:21', '2021-12-08 22:52:08'),
(16, 'Teknologi Industri', 'teknologi-industri', '2021-12-08 22:52:27', '2021-12-08 22:52:27'),
(17, 'Kategori Hari Ini', 'kategori-hari-ini', '2021-12-10 07:02:58', '2021-12-10 07:02:58');

-- --------------------------------------------------------

--
-- Struktur dari tabel `logo`
--

CREATE TABLE `logo` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gambar` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `logo`
--

INSERT INTO `logo` (`id`, `gambar`, `created_at`, `updated_at`) VALUES
(1, 'coetankecil.png', NULL, '2021-12-10 00:48:38');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_12_07_132708_create_kategori_table', 2),
(6, '2021_12_08_010021_create_post_table', 3),
(7, '2021_12_08_073356_add_id_kategori_to_post_table', 4),
(8, '2021_12_08_095008_create_tag_table', 5),
(9, '2021_12_08_122724_create_post_tag_table', 6),
(10, '2021_12_09_112923_create_banner_table', 7),
(11, '2021_12_10_071710_create_logo_table', 8),
(12, '2021_12_11_134021_add_id_user_to_post_table', 9);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('admin@gmail.com', '$2y$10$E1PY23Q9Kqbk4sHi3sVLCOvo8fZIEfW33FCYzPftG/8hBUZXXUbj.', '2021-12-11 02:05:14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `post`
--

CREATE TABLE `post` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_kategori` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `sampul` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `konten` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `post`
--

INSERT INTO `post` (`id`, `id_kategori`, `id_user`, `sampul`, `judul`, `konten`, `slug`, `created_at`, `updated_at`) VALUES
(10, 13, 1, '1638981004-background-kuliah-industri.png', 'Belajar Laravel', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. A arcu cursus vitae congue mauris rhoncus aenean vel. Ornare aenean euismod elementum nisi quis eleifend. Amet dictum sit amet justo donec enim. Nisl purus in mollis nunc sed id semper risus in. Sollicitudin tempor id eu nisl nunc mi ipsum faucibus. Tristique senectus et netus et malesuada fames ac turpis egestas. Sed lectus vestibulum mattis ullamcorper velit sed ullamcorper morbi. Morbi quis commodo odio aenean sed adipiscing. Mauris commodo quis imperdiet massa tincidunt nunc pulvinar sapien. Dictumst quisque sagittis purus sit amet. Aliquam sem fringilla ut morbi tincidunt augue interdum. Aliquam nulla facilisi cras fermentum odio eu. Ut diam quam nulla porttitor massa id neque aliquam. Vel orci porta non pulvinar neque laoreet suspendisse interdum consectetur. Morbi tristique senectus et netus et.&nbsp;</p><p>Gravida arcu ac tortor dignissim convallis aenean et tortor at. Vulputate odio ut enim blandit volutpat maecenas. Quis hendrerit dolor magna eget est lorem. Venenatis urna cursus eget nunc. Ut lectus arcu bibendum at varius vel pharetra vel. Duis convallis convallis tellus id interdum velit laoreet id. Bibendum at varius vel pharetra vel turpis nunc. Mus mauris vitae ultricies leo integer malesuada nunc vel risus. Elementum eu facilisis sed odio morbi quis commodo odio aenean. Velit laoreet id donec ultrices tincidunt arcu. Enim blandit volutpat maecenas volutpat blandit aliquam etiam erat velit. Gravida neque convallis a cras semper auctor neque vitae tempus. Molestie nunc non blandit massa enim. Bibendum est ultricies integer quis auctor elit sed. Nulla aliquet porttitor lacus luctus accumsan tortor posuere ac. Nunc non blandit massa enim nec. Morbi tincidunt ornare massa eget egestas purus viverra.</p>', 'belajar-laravel', '2021-12-08 09:26:49', '2021-12-08 18:36:23'),
(11, 15, 1, '1638982187-BG 100 hari HIMADIRA.jpeg', 'Webinar Ceria', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. A arcu cursus vitae congue mauris rhoncus aenean vel. Ornare aenean euismod elementum nisi quis eleifend. Amet dictum sit amet justo donec enim. Nisl purus in mollis nunc sed id semper risus in. Sollicitudin tempor id eu nisl nunc mi ipsum faucibus. Tristique senectus et netus et malesuada fames ac turpis egestas. Sed lectus vestibulum mattis ullamcorper velit sed ullamcorper morbi. Morbi quis commodo odio aenean sed adipiscing. Mauris commodo quis imperdiet massa tincidunt nunc pulvinar sapien. Dictumst quisque sagittis purus sit amet. Aliquam sem fringilla ut morbi tincidunt augue interdum. Aliquam nulla facilisi cras fermentum odio eu. Ut diam quam nulla porttitor massa id neque aliquam. Vel orci porta non pulvinar neque laoreet suspendisse interdum consectetur. Morbi tristique senectus et netus et.\r\n\r\nGravida arcu ac tortor dignissim convallis aenean et tortor at. Vulputate odio ut enim blandit volutpat maecenas. Quis hendrerit dolor magna eget est lorem. Venenatis urna cursus eget nunc. Ut lectus arcu bibendum at varius vel pharetra vel. Duis convallis convallis tellus id interdum velit laoreet id. Bibendum at varius vel pharetra vel turpis nunc. Mus mauris vitae ultricies leo integer malesuada nunc vel risus. Elementum eu facilisis sed odio morbi quis commodo odio aenean. Velit laoreet id donec ultrices tincidunt arcu. Enim blandit volutpat maecenas volutpat blandit aliquam etiam erat velit. Gravida neque convallis a cras semper auctor neque vitae tempus. Molestie nunc non blandit massa enim. Bibendum est ultricies integer quis auctor elit sed. Nulla aliquet porttitor lacus luctus accumsan tortor posuere ac. Nunc non blandit massa enim nec. Morbi tincidunt ornare massa eget egestas purus viverra.', 'webinar-ceria', '2021-12-08 09:49:47', '2021-12-08 09:49:47'),
(12, 15, 1, '1639017600-download (1).jfif', 'Webinar akbar', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nullam ac tortor vitae purus faucibus ornare suspendisse sed. Dolor morbi non arcu risus quis varius quam quisque. Vel pretium lectus quam id leo in vitae turpis. Consequat semper viverra nam libero justo laoreet sit amet cursus. Pellentesque nec nam aliquam sem. Elementum facilisis leo vel fringilla est ullamcorper. Nisi lacus sed viverra tellus in hac habitasse platea. Ultricies integer quis auctor elit sed. Varius duis at consectetur lorem donec massa. Est lorem ipsum dolor sit amet consectetur adipiscing. Lectus nulla at volutpat diam ut venenatis. Imperdiet massa tincidunt nunc pulvinar sapien et. Amet luctus venenatis lectus magna fringilla urna porttitor rhoncus. Sed arcu non odio euismod lacinia. Sed augue lacus viverra vitae congue. Ut sem nulla pharetra diam sit.</p><p>Ut etiam sit amet nisl purus in. Eu mi bibendum neque egestas congue quisque. Senectus et netus et malesuada. Et malesuada fames ac turpis egestas. Odio morbi quis commodo odio aenean sed adipiscing. Arcu dictum varius duis at consectetur lorem. Libero id faucibus nisl tincidunt eget nullam non nisi. Faucibus turpis in eu mi bibendum neque egestas congue quisque. Et malesuada fames ac turpis egestas sed tempus urna et. Maecenas sed enim ut sem viverra aliquet. Habitasse platea dictumst vestibulum rhoncus est pellentesque elit. Ultrices sagittis orci a scelerisque purus semper. Vitae justo eget magna fermentum iaculis. Fermentum posuere urna nec tincidunt praesent. Turpis massa tincidunt dui ut ornare. Nulla facilisi morbi tempus iaculis urna id. Convallis tellus id interdum velit laoreet. Massa ultricies mi quis hendrerit dolor. Elementum nisi quis eleifend quam adipiscing. Volutpat maecenas volutpat blandit aliquam etiam.</p>', 'webinar-akbar', '2021-12-08 19:40:00', '2021-12-10 22:53:23'),
(14, 14, 1, '1639144969-p334v69m1w521.jpg', 'post hari ini', '<p>hari ini</p>', 'post-hari-ini', '2021-12-10 07:02:49', '2021-12-10 07:02:49'),
(15, 17, 2, '1639320940-demo-tolak-ruu-hip-11_169.jpeg', 'Coba', '<p>bismillah</p>', 'coba', '2021-12-12 07:55:40', '2021-12-12 07:55:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `post_tag`
--

CREATE TABLE `post_tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_post` bigint(20) UNSIGNED NOT NULL,
  `id_tag` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `post_tag`
--

INSERT INTO `post_tag` (`id`, `id_post`, `id_tag`, `created_at`, `updated_at`) VALUES
(11, 10, 6, NULL, NULL),
(12, 10, 7, NULL, NULL),
(13, 10, 8, NULL, NULL),
(14, 11, 9, NULL, NULL),
(15, 11, 10, NULL, NULL),
(16, 12, 6, NULL, NULL),
(17, 12, 7, NULL, NULL),
(18, 12, 8, NULL, NULL),
(19, 12, 9, NULL, NULL),
(20, 12, 10, NULL, NULL),
(24, 14, 6, NULL, NULL),
(25, 15, 9, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tag`
--

CREATE TABLE `tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tag`
--

INSERT INTO `tag` (`id`, `nama`, `slug`, `created_at`, `updated_at`) VALUES
(6, 'java', 'java', '2021-12-08 09:24:28', '2021-12-08 09:24:28'),
(7, 'php', 'php', '2021-12-08 09:24:32', '2021-12-08 09:24:32'),
(8, 'laravel', 'laravel', '2021-12-08 09:24:40', '2021-12-08 09:24:40'),
(9, 'webinar asik banget', 'webinar-asik-banget', '2021-12-08 09:24:51', '2021-12-08 23:00:47'),
(10, 'telkom university', 'telkom-university', '2021-12-08 09:24:59', '2021-12-08 09:24:59'),
(11, 'elektronik', 'elektronik', '2021-12-08 23:00:33', '2021-12-08 23:00:33'),
(12, 'tag hari ini', 'tag-hari-ini', '2021-12-10 07:03:08', '2021-12-10 07:03:08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$Nhj2ANf7azz5xZl/Jcs9ceBKLWJ6M1Xwq0DWH3w.bRumjhnqDH9ve', NULL, '2021-12-07 05:00:47', '2021-12-11 03:15:06'),
(2, 'penulis', 'penulis@gmail.com', NULL, '$2y$10$qnal3XHhq9XYzsHX3U9RdefkhnuFr42usYVckG8GS1B8Vz1/bQtLm', NULL, '2021-12-12 07:51:46', '2021-12-12 07:51:46');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_tag_id_post_foreign` (`id_post`),
  ADD KEY `post_tag_id_tag_foreign` (`id_tag`);

--
-- Indeks untuk tabel `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `banner`
--
ALTER TABLE `banner`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `logo`
--
ALTER TABLE `logo`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `post`
--
ALTER TABLE `post`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `tag`
--
ALTER TABLE `tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `post_tag`
--
ALTER TABLE `post_tag`
  ADD CONSTRAINT `post_tag_id_post_foreign` FOREIGN KEY (`id_post`) REFERENCES `post` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `post_tag_id_tag_foreign` FOREIGN KEY (`id_tag`) REFERENCES `tag` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
