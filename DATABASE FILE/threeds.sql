-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Waktu pembuatan: 26 Feb 2025 pada 04.24
-- Versi server: 10.11.10-MariaDB-log
-- Versi PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u287442801_threeds`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `comment` varchar(140) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `follow`
--

CREATE TABLE `follow` (
  `id` int(11) NOT NULL,
  `follower_id` int(11) NOT NULL,
  `following_id` int(11) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Dumping data untuk tabel `follow`
--

INSERT INTO `follow` (`id`, `follower_id`, `following_id`, `time`) VALUES
(193, 61, 63, '2025-02-17 16:53:58'),
(195, 64, 63, '2025-02-18 05:36:30'),
(196, 64, 61, '2025-02-18 05:36:32'),
(197, 61, 64, '2025-02-18 05:43:34'),
(202, 67, 61, '2025-02-26 02:42:32'),
(203, 67, 64, '2025-02-26 02:43:13'),
(204, 67, 63, '2025-02-26 02:43:34'),
(206, 68, 63, '2025-02-26 03:29:43'),
(207, 61, 67, '2025-02-26 05:06:36'),
(210, 64, 67, '2025-02-26 06:06:00'),
(211, 64, 62, '2025-02-26 06:06:01'),
(212, 64, 69, '2025-02-26 06:06:02'),
(213, 64, 68, '2025-02-26 06:06:49'),
(214, 64, 65, '2025-02-26 06:06:51'),
(215, 69, 68, '2025-02-26 06:07:43'),
(216, 69, 65, '2025-02-26 06:07:44'),
(217, 69, 66, '2025-02-26 06:07:45'),
(218, 69, 64, '2025-02-26 06:07:57'),
(219, 69, 61, '2025-02-26 06:07:59'),
(220, 69, 67, '2025-02-26 06:08:00'),
(221, 61, 69, '2025-02-26 06:09:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Dumping data untuk tabel `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `post_id`) VALUES
(321, 63, 737),
(322, 63, 737),
(323, 63, 737),
(324, 63, 737),
(325, 63, 737),
(326, 63, 737),
(328, 61, 737),
(329, 61, 736),
(330, 61, 736),
(335, 67, 739),
(336, 67, 739),
(346, 68, 746),
(347, 61, 751);

-- --------------------------------------------------------

--
-- Struktur dari tabel `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `notify_for` int(11) NOT NULL,
  `notify_from` int(11) NOT NULL,
  `target` int(11) NOT NULL,
  `type` enum('follow','like','retweet','qoute','comment','reply','mention') NOT NULL,
  `time` datetime NOT NULL,
  `count` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Dumping data untuk tabel `notifications`
--

INSERT INTO `notifications` (`id`, `notify_for`, `notify_from`, `target`, `type`, `time`, `count`, `status`) VALUES
(232, 63, 61, 0, 'follow', '2025-02-17 16:53:58', 0, 0),
(233, 63, 61, 737, 'like', '2025-02-17 16:58:13', 0, 0),
(234, 63, 64, 0, 'follow', '2025-02-18 05:36:30', 0, 0),
(235, 61, 64, 0, 'follow', '2025-02-18 05:36:32', 1, 0),
(236, 64, 61, 0, 'follow', '2025-02-18 05:43:34', 1, 0),
(239, 61, 67, 0, 'follow', '2025-02-26 02:42:32', 1, 0),
(243, 64, 67, 739, 'like', '2025-02-26 02:43:03', 1, 0),
(244, 64, 67, 739, 'like', '2025-02-26 02:43:03', 1, 0),
(245, 64, 67, 0, 'follow', '2025-02-26 02:43:13', 1, 0),
(246, 63, 67, 0, 'follow', '2025-02-26 02:43:33', 0, 0),
(247, 63, 68, 0, 'follow', '2025-02-26 03:29:43', 0, 0),
(248, 67, 61, 0, 'follow', '2025-02-26 05:06:36', 0, 0),
(249, 63, 68, 747, 'qoute', '2025-02-26 05:07:07', 0, 0),
(251, 67, 64, 0, 'follow', '2025-02-26 06:06:00', 0, 0),
(252, 62, 64, 0, 'follow', '2025-02-26 06:06:01', 0, 0),
(253, 69, 64, 0, 'follow', '2025-02-26 06:06:02', 1, 0),
(254, 68, 64, 0, 'follow', '2025-02-26 06:06:49', 0, 0),
(255, 65, 64, 0, 'follow', '2025-02-26 06:06:51', 0, 0),
(256, 67, 61, 745, 'retweet', '2025-02-26 06:07:09', 0, 0),
(257, 67, 61, 745, 'retweet', '2025-02-26 06:07:13', 0, 0),
(258, 67, 61, 751, 'qoute', '2025-02-26 06:07:26', 0, 0),
(259, 68, 69, 0, 'follow', '2025-02-26 06:07:43', 0, 0),
(260, 65, 69, 0, 'follow', '2025-02-26 06:07:44', 0, 0),
(261, 66, 69, 0, 'follow', '2025-02-26 06:07:45', 0, 0),
(262, 64, 69, 0, 'follow', '2025-02-26 06:07:57', 0, 0),
(263, 61, 69, 0, 'follow', '2025-02-26 06:07:59', 1, 0),
(264, 67, 69, 0, 'follow', '2025-02-26 06:08:00', 0, 0),
(265, 69, 61, 0, 'follow', '2025-02-26 06:09:29', 1, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `post_on`) VALUES
(736, 61, '2025-02-17 11:11:38'),
(737, 63, '2025-02-17 12:49:04'),
(738, 64, '2025-02-17 17:35:57'),
(739, 64, '2025-02-17 17:36:53'),
(740, 61, '2025-02-18 05:43:59'),
(741, 61, '2025-02-18 05:54:20'),
(742, 61, '2025-02-18 05:56:22'),
(743, 66, '2025-02-25 19:45:50'),
(744, 67, '2025-02-26 02:41:25'),
(745, 67, '2025-02-26 02:42:05'),
(746, 68, '2025-02-26 03:27:56'),
(747, 68, '2025-02-26 05:07:07'),
(748, 69, '2025-02-26 05:08:58'),
(749, 61, '2025-02-26 06:07:09'),
(750, 61, '2025-02-26 06:07:13'),
(751, 61, '2025-02-26 06:07:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `replies`
--

CREATE TABLE `replies` (
  `id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `reply` varchar(140) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `retweets`
--

CREATE TABLE `retweets` (
  `post_id` int(11) NOT NULL,
  `retweet_msg` varchar(140) DEFAULT NULL,
  `tweet_id` int(11) DEFAULT NULL,
  `retweet_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Dumping data untuk tabel `retweets`
--

INSERT INTO `retweets` (`post_id`, `retweet_msg`, `tweet_id`, `retweet_id`) VALUES
(747, 'this is your dad. ayah kamu sudah punya saham WIFI pas umur 18 tahun', 737, NULL),
(749, NULL, 745, NULL),
(750, NULL, 745, NULL),
(751, 'hai jawa', 745, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `trends`
--

CREATE TABLE `trends` (
  `id` int(11) NOT NULL,
  `hashtag` varchar(140) NOT NULL,
  `created_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Dumping data untuk tabel `trends`
--

INSERT INTO `trends` (`id`, `hashtag`, `created_on`) VALUES
(1, 'php', '2021-01-06 05:57:43'),
(4, 'hi', '2021-01-25 21:42:35'),
(5, 'alex', '2021-01-25 21:42:36'),
(6, '7oda', '2021-03-20 23:40:12'),
(9, 'js', '2021-04-02 03:24:28'),
(12, 'bro', '2021-04-02 03:31:38'),
(13, 'mysql', '2022-01-13 16:10:54'),
(14, 'explore', '2022-01-13 16:10:54'),
(15, 'fun', '2022-01-13 16:10:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tweets`
--

CREATE TABLE `tweets` (
  `post_id` int(11) NOT NULL,
  `status` varchar(140) DEFAULT NULL,
  `img` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Dumping data untuk tabel `tweets`
--

INSERT INTO `tweets` (`post_id`, `status`, `img`) VALUES
(736, 'Halo guys ini admin', 'tweet-67b2fd4a0a6ff.png'),
(737, 'Hello Kids', NULL),
(738, 'Heyyo', NULL),
(739, '', 'tweet-67b35795be285.png'),
(740, 'hell yeah', NULL),
(741, '', 'tweet-67b4046c1b9c8.jpg'),
(742, '', 'tweet-67b404e6c88ce.png'),
(743, 'Ghost', 'tweet-67be01ce9e224.jpeg'),
(744, 'jawa', NULL),
(745, '', 'tweet-67be635d7fbb5.png'),
(746, 'Last Week CN Class', 'tweet-67be6e1c67b48.jpg'),
(748, 'hai', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(40) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(32) NOT NULL,
  `name` varchar(40) NOT NULL,
  `img` varchar(255) NOT NULL DEFAULT 'default.jpg',
  `imgCover` varchar(255) NOT NULL DEFAULT 'cover.png',
  `bio` varchar(140) NOT NULL DEFAULT '',
  `location` varchar(255) NOT NULL DEFAULT '',
  `website` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `name`, `img`, `imgCover`, `bio`, `location`, `website`) VALUES
(59, 'testacc', 'test@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'Test Account', 'user-61def0bcc0f0d.jpg', 'cover.png', 'I practice what I post!', 'New Jersey', 'https://testwebsite.com/'),
(61, 'admin', 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'Admin Rayhan', 'user-67be944b8ab09.png', 'user-67be945b4ceb5.jpg', 'Jawwa', '', ''),
(62, 'gfghfhygyugu', 'nailhasakhiladewi455@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'nai', 'default.jpg', 'cover.png', '', '', ''),
(63, 'RezaTampan', 'reza06117@gmail.com', '314fe76b0975258daddac2b58e9cce0a', 'Reza Fahlevi', 'default.jpg', 'cover.png', '', '', ''),
(64, 'HabilBoyzz', 'habilramadhan1005@gmail.com', 'aed6ae66528b44304063d3c9fadf141b', 'Habil Ramadhan', 'user-67be86887069a.png', 'user-67b54caecfb02.jpeg', '', '', ''),
(65, 'hkvhvhkhv', 'hostingwebforus1@gmail.com', 'c313f64da57013e0c463dd28c8fe95fe', 'hmbkhvk', 'default.jpg', 'cover.png', '', '', ''),
(66, 'Allya', 'alvia@gmail.com', 'f760fb418dbbcc1d07814d67f3cb2eb0', 'Allya', 'default.jpg', 'cover.png', '', '', ''),
(67, 'jawa', 'jawa@gmail.com', '0192023a7bbd73250516f069df18b500', 'jawa', 'default.jpg', 'cover.png', '', '', ''),
(68, 'WinWin', 'azrielwmx1@gmail.com', 'e89b6e24edf824096b7bf2ac645ad473', 'Azriel', 'user-67be6fd5d3790.jpg', 'user-67be6fd5d3794.jpeg', '你好 我叫 天佑', '', ''),
(69, 'bokyakunomoau', 'twsasuw@gmail.com', '54aa40c4901451196a13fec430fa4fc8', 'boukyakunomaou', 'default.jpg', 'cover.png', '', '', ''),
(70, 'Huhu', 'huhu@gmail.com', 'bf5456e4aa2d24de4cfc971b1acc5734', 'Huh', 'default.jpg', 'cover.png', '', '', ''),
(71, 'jayden', 'marcus@gmail.com', '78db0f8357c22ad45970998f7747d151', 'marcus', 'default.jpg', 'cover.png', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `follow`
--
ALTER TABLE `follow`
  ADD PRIMARY KEY (`id`),
  ADD KEY `follower_id` (`follower_id`),
  ADD KEY `following_id` (`following_id`);

--
-- Indeks untuk tabel `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `likes_ibfk_2` (`post_id`);

--
-- Indeks untuk tabel `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_ibfk_1` (`notify_for`),
  ADD KEY `notifications_ibfk_2` (`notify_from`);

--
-- Indeks untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `retweets`
--
ALTER TABLE `retweets`
  ADD PRIMARY KEY (`post_id`) USING BTREE,
  ADD KEY `retweet_id` (`retweet_id`),
  ADD KEY `retweets_ibfk_2` (`tweet_id`);

--
-- Indeks untuk tabel `trends`
--
ALTER TABLE `trends`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hashtag` (`hashtag`);

--
-- Indeks untuk tabel `tweets`
--
ALTER TABLE `tweets`
  ADD PRIMARY KEY (`post_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT untuk tabel `follow`
--
ALTER TABLE `follow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=224;

--
-- AUTO_INCREMENT untuk tabel `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=348;

--
-- AUTO_INCREMENT untuk tabel `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=266;

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=752;

--
-- AUTO_INCREMENT untuk tabel `replies`
--
ALTER TABLE `replies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `trends`
--
ALTER TABLE `trends`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `follow`
--
ALTER TABLE `follow`
  ADD CONSTRAINT `follow_ibfk_1` FOREIGN KEY (`follower_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `follow_ibfk_2` FOREIGN KEY (`following_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `likes_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`notify_for`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `notifications_ibfk_2` FOREIGN KEY (`notify_from`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `replies`
--
ALTER TABLE `replies`
  ADD CONSTRAINT `replies_ibfk_1` FOREIGN KEY (`comment_id`) REFERENCES `comments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `replies_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `retweets`
--
ALTER TABLE `retweets`
  ADD CONSTRAINT `retweets_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `retweets_ibfk_2` FOREIGN KEY (`tweet_id`) REFERENCES `tweets` (`post_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `retweets_ibfk_3` FOREIGN KEY (`retweet_id`) REFERENCES `retweets` (`post_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tweets`
--
ALTER TABLE `tweets`
  ADD CONSTRAINT `tweets_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
