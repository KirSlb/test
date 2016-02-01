-- phpMyAdmin SQL Dump
-- version 4.0.10.10
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 01 2016 г., 12:19
-- Версия сервера: 5.6.26
-- Версия PHP: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `laravel`
--

-- --------------------------------------------------------

--
-- Структура таблицы `blogs`
--

CREATE TABLE IF NOT EXISTS `blogs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `active` tinyint(1) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `blogs`
--

INSERT INTO `blogs` (`id`, `active`, `title`, `slug`, `image`, `body`, `created_at`, `updated_at`) VALUES
(1, 1, 'Запись', 'record', 'ZUSpfdonYeYB0zLKUXXhqropBh83pEya.jpg', '<p>Что-то</p>\n', '2016-01-31 13:22:15', '2016-01-31 13:22:15'),
(2, 1, 'Запись 2', 'record2', 'U7txu7K3oRS4GvPS3rUOSuqZ2Sd04bBk.jpg', '<h3>Явление 4</h3>\n\n<table align="center">\n	<tbody>\n		<tr>\n			<td>\n			<p>София,&nbsp;Лиза,&nbsp;Молчалин,&nbsp;Фамусов.</p>\n			</td>\n		</tr>\n	</tbody>\n</table>\n\n<table align="center">\n	<tbody>\n		<tr>\n			<td>\n			<p>Фамусов</p>\n			Что за оказия! Молчалин, ты, брат?\n\n			<p>Молчалин</p>\n			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Я-с.\n\n			<p>Фамусов</p>\n			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Зачем же здесь? и в этот час?&nbsp;<br />\n			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;И Софья!.. Здравствуй, Софья, что ты&nbsp;<br />\n			Так рано поднялась! а? для какой заботы?&nbsp;<br />\n			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;И как вас бог не в пору вместе свел?\n			<p>София</p>\n			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Он только что теперь вошел.\n\n			<p>Молчалин</p>\n			Сейчас с прогулки.\n\n			<p>Фамусов</p>\n			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Друг, нельзя ли для прогулок&nbsp;<br />\n			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Подальше выбрать закоулок?&nbsp;<br />\n			А ты, сударыня, чуть из постели прыг,&nbsp;<br />\n			С мужчиной! с молодым! &mdash; Занятье для девицы!&nbsp;<br />\n			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Всю ночь читает небылицы,&nbsp;<br />\n			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;И вот плоды от этих книг!&nbsp;<br />\n			А все Кузнецкий мост, и вечные французы,&nbsp;<br />\n			Оттуда моды к нам, и авторы, и музы:&nbsp;<br />\n			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Губители карманов и сердец!&nbsp;<br />\n			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Когда избавит нас творец&nbsp;<br />\n			От шляпок их! чепцов! и шпилек! и булавок!&nbsp;<br />\n			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;И книжных и бисквитных лавок!\n			<p>София</p>\n			</td>\n		</tr>\n	</tbody>\n</table>\n', '2016-01-31 13:38:21', '2016-01-31 13:38:21'),
(3, 1, 'Запись 3', 'record3', 'xwphCTh030fKH5hXSZywg5aLr3N6sgKY.jpg', '<h3>Явление 5</h3>\n\n<table align="center">\n	<tbody>\n		<tr>\n			<td>\n			<table align="center">\n				<tbody>\n					<tr>\n						<td>\n						<p>София,&nbsp;Лиза.</p>\n						</td>\n					</tr>\n				</tbody>\n			</table>\n\n			<p>Лиза</p>\n			Ну вот у праздника! ну вот вам и потеха!&nbsp;<br />\n			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Однако нет, теперь уж не до смеха;&nbsp;<br />\n			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;В глазах темно, и замерла душа;&nbsp;<br />\n			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Грех не беда, молва не хороша.\n			<p>София</p>\n			Что мне молва? Кто хочет, так и судит,&nbsp;<br />\n			Да батюшка задуматься принудит:&nbsp;<br />\n			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Брюзглив, неугомонен, скор,&nbsp;<br />\n			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Таков всегда, а с этих пор...&nbsp;<br />\n			Ты можешь посудить...\n			<p>Лиза</p>\n			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Сужу-с не по рассказам;&nbsp;<br />\n			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Запрет он вас; &mdash; добро еще со мной;&nbsp;<br />\n			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;А то, помилуй бог, как разом&nbsp;<br />\n			Меня, Молчалина и всех с двора долой.\n			<p>София</p>\n			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Подумаешь, как счастье своенравно!&nbsp;<br />\n			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Бывает хуже, с рук сойдет;&nbsp;<br />\n			Когда ж печальное ничто на ум нейдет;&nbsp;<br />\n			Забылись музыкой, и время шло так плавно;&nbsp;<br />\n			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Судьба нас будто берегла;&nbsp;<br />\n			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Ни беспокойства, ни сомненья...&nbsp;<br />\n			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;А горе ждет из-за угла.</td>\n		</tr>\n	</tbody>\n</table>\n', '2016-01-31 13:39:42', '2016-01-31 13:39:42'),
(4, 1, 'Запись 4', 'record4', 'yxH1d3C6I5cDYQQdm3smOW2hkKuSglGV.jpg', '<p>В середине августа, перед рождением молодого месяца, вдруг наступили отвратительные погоды, какие так свойственны северному побережью Черного моря. То по целым суткам тяжело лежал над землею и морем густой туман, и тогда огромная сирена на маяке ревела днем и ночью, точно бешеный бык. То с утра до утра шел не переставая мелкий, как водяная пыль, дождик, превращавший глинистые дороги и тропинки в сплошную густую грязь, в которой увязали надолго возы и экипажи. То задувал с северо-запада, со стороны степи свирепый ураган; от него верхушки деревьев раскачивались, пригибаясь и выпрямляясь, точно волны в бурю, гремели по ночам железные кровли дач, и казалось, будто кто-то бегает по ним в подкованных сапогах, вздрагивали оконные рамы, хлопали двери, и дико завывало в печных трубах. Несколько рыбачьих баркасов заблудилось в море, а два и совсем не вернулись: только спустя неделю повыбрасывало трупы рыбаков в разных местах берега.</p>\n', '2016-01-31 13:41:40', '2016-01-31 14:36:26'),
(5, 1, 'Запись 5', 'record5', 'LbhrJ5zZv75S6y0FTnLDpFKRx0nzvJBv.jpg', '<h3>Явление 8</h3>\n\n<table align="center">\n	<tbody>\n		<tr>\n			<td>\n			<p>София,&nbsp;Лиза,&nbsp;Чацкий,&nbsp;Фамусов.</p>\n			</td>\n		</tr>\n	</tbody>\n</table>\n\n<table align="center">\n	<tbody>\n		<tr>\n			<td>\n			<p>Фамусов</p>\n			Вот и другой.\n\n			<p>София</p>\n			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Ах, батюшка, сон в руку.\n\n			<table align="center">\n				<tbody>\n					<tr>\n						<td>\n						<p>(Уходит.)</p>\n						</td>\n					</tr>\n				</tbody>\n			</table>\n\n			<p>Фамусов</p>\n\n			<table align="center">\n				<tbody>\n					<tr>\n						<td>\n						<p>(ей вслед вполголоса)</p>\n						</td>\n					</tr>\n				</tbody>\n			</table>\n			&nbsp;&nbsp;&nbsp;&nbsp;Проклятый сон.</td>\n		</tr>\n	</tbody>\n</table>\n\n<h3>Явление 9</h3>\n\n<table align="center">\n	<tbody>\n		<tr>\n			<td>\n			<p>Фамусов,&nbsp;Чацкий&nbsp;(смотрит на дверь, в которую София вышла).</p>\n			</td>\n		</tr>\n	</tbody>\n</table>\n\n<table align="center">\n	<tbody>\n		<tr>\n			<td>\n			<p>Фамусов</p>\n			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Ну выкинул ты штуку!&nbsp;<br />\n			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Три года не писал двух слов!&nbsp;<br />\n			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;И грянул вдруг как с облаков.\n			<table align="center">\n				<tbody>\n					<tr>\n						<td>\n						<p>Обнимаются.</p>\n						</td>\n					</tr>\n				</tbody>\n			</table>\n			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Здорово, друг, здорово, брат, здорово!&nbsp;<br />\n			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Рассказывай, чай у тебя готово&nbsp;<br />\n			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Собранье важное вестей?&nbsp;<br />\n			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Садись-ка, объяви скорей.\n			<table align="center">\n				<tbody>\n					<tr>\n						<td>\n						<p>Садятся.</p>\n\n						<p>&nbsp;</p>\n						</td>\n					</tr>\n				</tbody>\n			</table>\n			</td>\n		</tr>\n	</tbody>\n</table>\n', '2016-01-31 13:44:05', '2016-01-31 13:44:05'),
(6, 1, 'Запись 6', 'record6', 'cOghqAXtLOT85Mr79TSS699BIXGfXVnr.jpg', '<p>Обитатели пригородного морского курорта &mdash; большей частью греки и евреи, жизнелюбивые и мнительные, как все южане, &mdash; поспешно перебирались в город. По размякшему шоссе без конца тянулись ломовые дроги, перегруженные всяческими домашними вещами: тюфяками, диванами, сундуками, стульями, умывальниками, самоварами. Жалко, и грустно, и противно было глядеть сквозь мутную кисею дождя на этот жалкий скарб, казавшийся таким изношенным, грязным и нищенским; на горничных и кухарок, сидевших на верху воза на мокром брезенте с какими-то утюгами, жестянками и корзинками в руках, на запотевших, обессилевших лошадей, которые то и дело останавливались, дрожа коленями, дымясь и часто нося боками, на сипло ругавшихся дрогалей, закутанных от дождя в рогожи. Еще печальнее было видеть оставленные дачи с их внезапным простором, пустотой и оголенностью, с изуродованными клумбами, разбитыми стеклами, брошенными собаками и всяческим дачным сором из окурков, бумажек, черепков, коробочек и аптекарских пузырьков.</p>\n', '2016-01-31 13:45:22', '2016-01-31 14:36:52');

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
('2016_01_27_165717_create_galleries_table', 4),
('2016_01_31_161952_create_blogs_table', 5),
('2016_02_01_084706_create_presses_table', 6);

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
-- Структура таблицы `presses`
--

CREATE TABLE IF NOT EXISTS `presses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `active` tinyint(1) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8_unicode_ci NOT NULL,
  `published_at` timestamp NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `presses`
--

INSERT INTO `presses` (`id`, `active`, `title`, `slug`, `image`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Запись 1', 'record1', '9rmtdoCTAvt1HFxGHevJ18u0ZRoSONVe.jpg', '<p>sdfsdfsdfsd sdfsdfs dsffs</p>\n', '0000-00-00 00:00:00', '2016-02-01 04:18:10', '2016-02-01 04:19:18');

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
