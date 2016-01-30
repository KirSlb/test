-- phpMyAdmin SQL Dump
-- version 4.0.10.10
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 30 2016 г., 21:07
-- Версия сервера: 5.6.26
-- Версия PHP: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `test`
--

-- --------------------------------------------------------

--
-- Структура таблицы `galleries`
--

CREATE TABLE IF NOT EXISTS `galleries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `weight` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `galleries`
--

INSERT INTO `galleries` (`id`, `project_id`, `active`, `weight`, `image`, `alt`, `title`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 4, 'hba1qO4DJLIJsqoQSxZ06GDiomtkGs8X.jpg', 'image', 'title', '2016-01-29 13:02:36', '2016-01-30 09:59:34'),
(2, 2, 1, 3, 'yG9U5VDAo4CyoQbFizOXBnp5JOyQNLyF.jpg', 'alt', 'title', '2016-01-30 10:00:45', '2016-01-30 10:00:45'),
(3, 2, 1, 2, 'QrHoROl4eyZGV2otZEGQChitL5JfyVsC.jpg', 'alt', 'title', '2016-01-30 10:01:29', '2016-01-30 10:01:29'),
(4, 2, 1, 4, 'Ita2UnJIt7C5wiaXyghq6vgfE1sIJISG.jpg', 'alt', 'title', '2016-01-30 10:02:12', '2016-01-30 10:02:12'),
(5, 1, 1, 1, '4YRTH4vZDuXmJrsw1CPKJggZkK7CRK7w.jpg', 'alt', 'title', '2016-01-30 10:04:01', '2016-01-30 10:04:01'),
(6, 1, 0, 2, '4FvKfm4K3GKsnF6BH4C6A1o5MopDH2Wk.jpg', 'alt', 'title', '2016-01-30 10:04:44', '2016-01-30 10:04:44');

-- --------------------------------------------------------

--
-- Структура таблицы `menus`
--

CREATE TABLE IF NOT EXISTS `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `active` tinyint(1) NOT NULL,
  `weight` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `menus`
--

INSERT INTO `menus` (`id`, `active`, `weight`, `title`, `url`, `position`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Home', '/', 'left', '2016-01-23 09:19:51', '2016-01-23 09:21:11'),
(2, 1, 2, 'Progects', '/progects', 'left', '2016-01-23 09:22:46', '2016-01-23 09:22:46'),
(3, 1, 3, 'About', '/about-us', 'left', '2016-01-23 09:24:20', '2016-01-23 09:24:20'),
(4, 1, 4, 'Blog', '/blog', 'right', '2016-01-23 09:25:03', '2016-01-23 09:25:03'),
(5, 1, 5, 'Press', '/press', 'right', '2016-01-23 09:25:58', '2016-01-23 09:25:58'),
(6, 1, 6, 'Contact', '/contact-us', 'right', '2016-01-23 09:26:31', '2016-01-23 09:27:31');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_01_23_133433_create_menus_table', 2),
('2016_01_26_164554_create_sliders_table', 3),
('2016_01_27_164639_create_projects_table', 4),
('2016_01_27_165717_create_galleries_table', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `projects`
--

CREATE TABLE IF NOT EXISTS `projects` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `active` tinyint(1) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `projects`
--

INSERT INTO `projects` (`id`, `active`, `title`, `slug`, `image`, `content`, `created_at`, `updated_at`) VALUES
(1, 1, 'First', 'first', 'CkTTMekKwrllOnFVTGUESfVMz2X8zLJE.jpg', '<p>content</p>\n', '2016-01-29 12:58:04', '2016-01-29 12:58:04'),
(2, 1, 'Second', 'second', 'oJAnUBoowxG1RyCMxPf9ldED8eJgmFvh.jpg', '<p>Content</p>\n', '2016-01-29 13:00:19', '2016-01-29 13:00:56');

-- --------------------------------------------------------

--
-- Структура таблицы `sliders`
--

CREATE TABLE IF NOT EXISTS `sliders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `active` tinyint(1) NOT NULL,
  `weight` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `sliders`
--

INSERT INTO `sliders` (`id`, `active`, `weight`, `image`, `created_at`, `updated_at`) VALUES
(4, 1, 1, 'Lt7sG3uYT3ofVeajA1jGf0P6qRBtQTMF.jpg', '2016-01-28 12:00:48', '2016-01-28 12:03:49'),
(5, 1, 2, '0iPktJ6iu4OW5RDu6Pmz1fuRXwDN36wx.jpg', '2016-01-28 12:04:13', '2016-01-28 12:04:13'),
(6, 1, 3, 'Z7XcPsWSlRhQBXWa8WCc9VxzCzGNmGZ3.jpg', '2016-01-28 12:04:33', '2016-01-28 12:04:33');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'kir-sl@ya.ru', '$2y$10$2oZz/XdEUD5oryfdT3UFf.B8Ohd1zq5tHHCmJ9uSa9cg14nqbnDqu', 'iR73wGGQ20n575uBRS7oByAqIDb1hDeRvuIoiUN0aAh1W9wEYzmyQIuKdsHQ', '2016-01-23 04:04:52', '2016-01-23 07:01:10');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
