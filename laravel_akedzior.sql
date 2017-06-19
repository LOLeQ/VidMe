-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Czas generowania: 09 Cze 2017, 10:50
-- Wersja serwera: 10.0.29-MariaDB-0+deb8u1
-- Wersja PHP: 5.6.30-0+deb8u1
use vidme


--
-- Baza danych: `laravel_akedzior`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Rozne', '2017-03-24 08:27:42', '2017-03-24 08:28:47'),
(2, 'Muzyka', '2017-03-24 08:29:31', '2017-03-24 08:29:31'),
(3, 'Tutoriale', '2017-03-24 08:29:40', '2017-03-24 08:29:40'),
(4, 'Fails', '2017-03-24 08:53:33', '2017-03-24 08:53:33');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `category_video`
--

CREATE TABLE IF NOT EXISTS `category_video` (
  `category_id` int(10) unsigned NOT NULL,
  `video_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `category_video`
--

INSERT INTO `category_video` (`category_id`, `video_id`, `created_at`, `updated_at`) VALUES
(3, 3, '2017-03-24 08:39:02', '2017-03-24 08:39:02'),
(2, 2, '2017-03-24 08:40:35', '2017-03-24 08:40:35'),
(1, 1, '2017-03-24 08:40:55', '2017-03-24 08:40:55'),
(3, 4, '2017-03-24 09:24:34', '2017-03-24 09:24:34'),
(1, 7, '2017-03-27 06:34:27', '2017-03-27 06:34:27'),
(3, 7, '2017-03-27 06:34:27', '2017-03-27 06:34:27');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2017_03_22_192048_create_videos_table', 1),
('2017_03_23_151458_create_categories_table', 1),
('2017_03_23_151950_create_category_video_table', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Jan Nowak', 'jnowak@netizens.pl', '$2y$10$VYkj3.vdTcJnh2PI86MciuDyNW1EbOtVNvB7LVJH9g82TPedBraV6', 'tB83NaYxpdxNI1sG5HSRVOk48cQlRtdUebuaCRYKODllWICjgpLDFEGwzlKO', '2017-03-24 08:32:44', '2017-06-09 06:49:13'),
(2, 'Piotr Kowalsk', 'pkowalski@netizens.pl', '$2y$10$jxsTEW8qVD6z0dKtQKa/4.ZO9.wWhXsRXhBV.FQ42R4cAaKO9eqOm', NULL, '2017-03-24 12:07:49', '2017-03-24 12:07:49');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `videos`
--

CREATE TABLE IF NOT EXISTS `videos` (
`id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `videos`
--

INSERT INTO `videos` (`id`, `user_id`, `title`, `url`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 'Strzelamy!', 'https://www.youtube.com/embed/30GYVORYNHM', 'Łączy nas piłka', '2017-03-24 08:33:33', '2017-03-24 08:33:33'),
(2, 1, 'Shape of You [Official Video]', 'https://www.youtube.com/embed/JGwWNGJdvx8', 'Ed Sheeran', '2017-03-24 08:34:52', '2017-03-24 08:34:52'),
(3, 1, 'Kurs PHP odc. 2: System logowania do strony. Sesja. Wstrzykiwanie SQL', 'https://www.youtube.com/embed/Pp578w7C9hE', 'Tematem przewodnim drugiego odcinka serii PHP będzie stworzenie systemu logowania do strony. I to takiego systemu, który będzie łączył się z bazą danych MySQL. Jeśli zaś chodzi o bezpieczeństwo tworzonego systemu logowania, to póki co zabezpieczymy naszą witrynę przed tzw. wstrzykiwaniem SQL.', '2017-03-24 08:36:17', '2017-03-24 08:36:17'),
(4, 1, 'Kurs PHP odc. 3: Formularz rejestracji. Captcha. Hashowanie haseł', 'https://www.youtube.com/embed/fMJw90n8M60', 'Przygotowałem dla Państwa trzeci odcinek serii PHP, w którym omówimy wszystkie meandry tworzenia skryptu rejestracji dla nowego użytkownika, tworzącego swoje własne konto w aplikacji webowej. Rejestracja, podobnie jak logowanie, to jedna z najważniejszych funkcjonalności strony internetowej - absolutny klasyk, taki must-have. Mam nadzieję, że zdołam Wam to oddać, przekazać w pełni, poruszając jak najwięcej poziomów taksonomii nauczania.', '2017-03-24 09:00:32', '2017-03-24 09:24:34'),
(7, 1, 'Part 2 - What is MVC [How to Build a Blog with Laravel 5 Series] ', 'https://www.youtube.com/embed/8o_nA66D5EQ', 'Do you understand MVC? Model-View-Controller is a programming paradigm present in almost every modern web framework. If you have worked with other frameworks then you are possibly familiar with this concept and you should continue onto Part 3 of our series on How to Build a Blog with Laravel 5. However if you do not understand what MVC is or what we mean by "Model View Controller" then you need to brush up on that skill before continuing on. I have another video that I recommend you want first that explains what MVC is in a more general theory. After watching that video then you can continue to part 3, but understand that you will need to understand the concept in that video before you continue on with this series or you will find yourself lost.', '2017-03-27 06:34:27', '2017-03-27 06:34:27');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_video`
--
ALTER TABLE `category_video`
 ADD KEY `category_video_category_id_foreign` (`category_id`), ADD KEY `category_video_video_id_foreign` (`video_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
 ADD KEY `password_resets_email_index` (`email`), ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
 ADD PRIMARY KEY (`id`), ADD KEY `videos_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `categories`
--
ALTER TABLE `categories`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT dla tabeli `videos`
--
ALTER TABLE `videos`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `category_video`
--
ALTER TABLE `category_video`
ADD CONSTRAINT `category_video_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
ADD CONSTRAINT `category_video_video_id_foreign` FOREIGN KEY (`video_id`) REFERENCES `videos` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `videos`
--
ALTER TABLE `videos`
ADD CONSTRAINT `videos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
