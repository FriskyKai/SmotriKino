-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 19 2025 г., 11:18
-- Версия сервера: 8.0.30
-- Версия PHP: 8.2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `kinocity.ru`
--

-- --------------------------------------------------------

--
-- Структура таблицы `actors`
--

CREATE TABLE `actors` (
  `id` bigint UNSIGNED NOT NULL,
  `surname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` date NOT NULL,
  `bio` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `actors`
--

INSERT INTO `actors` (`id`, `surname`, `name`, `birthday`, `bio`, `photo`, `created_at`, `updated_at`) VALUES
(1, 'ДиКаприо', 'Леонардо', '1974-11-11', 'Американский актёр и продюсер', 'assets/images/photos/actors/leodikaprio.jpg', NULL, NULL),
(2, 'Питт', 'Брэд', '1963-12-18', 'Американский актёр и продюсер', 'assets/images/photos/actors/breadpitt.jpg', NULL, NULL),
(3, 'Джоли', 'Анджелина', '1975-06-04', 'Американская актриса и режиссёр', 'assets/images/photos/actors/angelinajoli.jpg', NULL, NULL),
(4, 'Харди', 'Том', '1977-09-15', 'Британский актёр и продюсер', 'assets/images/photos/actors/tomhardi.jpg', NULL, NULL),
(5, 'Робертс', 'Джулия', '1967-10-28', 'Американская актриса и продюсер', 'assets/images/photos/actors/jouliarobert.jpg', NULL, NULL),
(6, 'Смит', 'Уилл', '1968-09-25', 'Американский актёр и рэпер', 'assets/images/photos/actors/willsmit.jpg', NULL, NULL),
(7, 'Уотсон', 'Эмма', '1990-04-15', 'Британская актриса и модель', 'assets/images/photos/actors/emmawotson.jpg', NULL, NULL),
(8, 'Хемсворт', 'Крис', '1983-08-11', 'Австралийский актёр', 'assets/images/photos/actors/chrishemsvort.jpg', NULL, NULL),
(9, 'Лоуренс', 'Дженнифер', '1990-08-15', 'Американская актриса', 'assets/images/photos/actors/jenniferlourens.jpg', NULL, NULL),
(10, 'Депп', 'Джонни', '1963-06-09', 'Американский актёр и музыкант', 'assets/images/photos/actors/jonniedepp.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `age_ratings`
--

CREATE TABLE `age_ratings` (
  `id` bigint UNSIGNED NOT NULL,
  `age` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `age_ratings`
--

INSERT INTO `age_ratings` (`id`, `age`, `created_at`, `updated_at`) VALUES
(1, '4+', NULL, NULL),
(2, '6+', NULL, NULL),
(3, '8+', NULL, NULL),
(4, '12+', NULL, NULL),
(5, '16+', NULL, NULL),
(6, '18+', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `directors`
--

CREATE TABLE `directors` (
  `id` bigint UNSIGNED NOT NULL,
  `surname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` date NOT NULL,
  `bio` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `directors`
--

INSERT INTO `directors` (`id`, `surname`, `name`, `birthday`, `bio`, `photo`, `created_at`, `updated_at`) VALUES
(1, 'Нолан', 'Кристофер', '1970-07-30', 'Британский кинорежиссёр, сценарист и продюсер', 'assets/images/photos/directors/cristofernolan.jpg', NULL, NULL),
(2, 'Кэмерон', 'Джеймс', '1954-08-16', 'Канадский режиссёр, создатель \"Титаника\" и \"Аватара\"', 'assets/images/photos/directors/kemeron.jpg', NULL, NULL),
(3, 'Тарантино', 'Квентин', '1963-03-27', 'Американский режиссёр, сценарист и актёр', 'assets/images/photos/directors/tarantino.jpg', NULL, NULL),
(4, 'Скорсезе', 'Мартин', '1942-11-17', 'Американский режиссёр, продюсер и сценарист', 'assets/images/photos/directors/scorcese.jpg', NULL, NULL),
(5, 'Бертон', 'Тим', '1958-08-25', 'Американский режиссёр, продюсер и мультипликатор', 'assets/images/photos/directors/berton.jpg', NULL, NULL),
(6, 'Исии', 'Тосимаса', '2000-12-12', 'Японский режиссёр аниме', 'assets/images/photos/directors/toshimasa.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `favorites`
--

CREATE TABLE `favorites` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `media_id` bigint UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `favorites`
--

INSERT INTO `favorites` (`id`, `user_id`, `media_id`, `date`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2000-01-01', NULL, NULL),
(2, 1, 2, '2000-01-01', NULL, NULL),
(3, 2, 1, '2000-01-02', NULL, NULL),
(4, 2, 2, '2000-01-02', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `genres`
--

CREATE TABLE `genres` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `genres`
--

INSERT INTO `genres` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Боевик', NULL, NULL),
(2, 'Комедия', NULL, NULL),
(3, 'Драма', NULL, NULL),
(4, 'Мелодрама', NULL, NULL),
(5, 'Триллер', NULL, NULL),
(6, 'Ужасы', NULL, NULL),
(7, 'Фантастика', NULL, NULL),
(8, 'Фэнтези', NULL, NULL),
(9, 'Детектив', NULL, NULL),
(10, 'Анимация', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `media`
--

CREATE TABLE `media` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint(1) NOT NULL,
  `duration` int NOT NULL,
  `release` date NOT NULL,
  `rating` decimal(3,1) NOT NULL,
  `episodes` int DEFAULT NULL,
  `preview` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contentURL` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `studio_id` bigint UNSIGNED NOT NULL,
  `age_rating_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `media`
--

INSERT INTO `media` (`id`, `name`, `description`, `type`, `duration`, `release`, `rating`, `episodes`, `preview`, `contentURL`, `studio_id`, `age_rating_id`, `created_at`, `updated_at`) VALUES
(1, 'Начало', 'Фильм о проникновении в сны', 0, 148, '2010-07-16', '8.8', NULL, 'assets/images/photos/previews/begin.jpg', 'https://vk.com/video-220018529_456240825', 1, 3, NULL, NULL),
(2, 'Аватар', 'Фантастика о планете Пандора', 0, 162, '2009-12-18', '7.8', NULL, 'assets/images/photos/previews/avatar.jpg', 'https://vk.com/video-220018529_456243242', 2, 3, NULL, NULL),
(3, 'Криминальное чтиво', 'Культовый фильм Тарантино', 0, 154, '1994-10-14', '8.9', NULL, 'assets/images/photos/previews/criminalfiction.jpg', 'https://vk.com/video-220018529_456239747', 3, 5, NULL, NULL),
(4, 'Темный рыцарь', 'Бэтмен против Джокера', 0, 152, '2008-07-18', '9.0', NULL, 'assets/images/photos/previews/darkknight.jpg', 'https://vk.com/video-202376773_456239247', 1, 4, NULL, NULL),
(5, 'Титаник', 'История любви на затонувшем корабле', 0, 195, '1997-12-19', '7.8', NULL, 'assets/images/photos/previews/titanik.jpg', 'https://vk.com/video-220018529_456243275', 3, 3, NULL, NULL),
(6, 'Интерстеллар', 'Путешествие через червоточину', 0, 169, '2014-11-07', '8.6', NULL, 'assets/images/photos/previews/interstellar.jpg', 'https://vk.com/video-220018529_456243270', 1, 3, NULL, NULL),
(7, 'Матрица', 'Фильм о виртуальной реальности', 0, 136, '1999-03-31', '8.7', NULL, 'assets/images/photos/previews/matrix.jpg', 'https://vk.com/video-220018529_456240812', 1, 4, NULL, NULL),
(8, 'Форрест Гамп', 'Жизнь человека с низким IQ', 0, 142, '1994-07-06', '8.8', NULL, 'assets/images/photos/previews/forestgump.jpg', 'https://vk.com/video-220018529_456243272', 3, 3, NULL, NULL),
(9, 'Бойцовский клуб', 'Подпольный клуб драки', 0, 139, '1999-11-11', '8.8', NULL, 'assets/images/photos/previews/fightclub.jpg', 'https://vk.com/video-220018529_456243245', 4, 5, NULL, NULL),
(10, 'Пираты Карибского моря', 'Приключения Джека Воробья', 0, 143, '2003-07-09', '8.0', NULL, 'assets/images/photos/previews/caribbean.jpg', 'https://vk.com/video-220018529_456243470', 4, 3, NULL, NULL),
(11, 'Гарри Поттер и Философский камень', 'Первая часть о юном волшебнике', 0, 152, '2001-11-16', '7.6', NULL, 'assets/images/photos/previews/harrypotter.jpg', 'https://vk.com/video-220018529_456243267', 1, 2, NULL, NULL),
(12, 'Властелин колец: Братство кольца', 'Путешествие в Мордор', 0, 178, '2001-12-19', '8.8', NULL, 'assets/images/photos/previews/lotr.jpg', 'https://vk.com/video-194718512_456240013', 1, 3, NULL, NULL),
(13, 'Джанго освобожденный', 'Вестерн о мести и свободе', 0, 165, '2012-12-25', '8.4', NULL, 'assets/images/photos/previews/jango.jpg', 'https://vk.com/video-220018529_456243301', 5, 5, NULL, NULL),
(14, 'Однажды в Голливуде', 'История Голливуда 1969 года', 0, 161, '2019-07-26', '7.6', NULL, 'assets/images/photos/previews/hollywood.jpg', 'https://vk.com/video-220018529_456243321', 5, 5, NULL, NULL),
(15, 'Достать ножи', 'Детектив с неожиданной развязкой', 0, 130, '2019-11-27', '7.9', NULL, 'assets/images/photos/previews/knivesout.jpg', 'https://vk.com/video-220018529_456243993', 7, 3, NULL, NULL),
(16, 'Дюна', 'Фантастическая сага о пустынной планете', 0, 155, '2021-10-22', '8.0', NULL, 'assets/images/photos/previews/duna.jpg', 'https://vk.com/video-220018529_456243287', 1, 3, NULL, NULL),
(17, 'Человек-паук: Нет пути домой', 'Мультивселенная Человека-паука', 0, 148, '2021-12-17', '8.2', NULL, 'assets/images/photos/previews/spiderman.jpg', 'https://vk.com/video495558048_456240864', 5, 3, NULL, NULL),
(18, 'Оппенгеймер', 'Биография создателя атомной бомбы', 0, 180, '2023-07-21', '8.5', NULL, 'assets/images/photos/previews/oppengeimer.jpg', 'https://vk.com/video-220018529_456244232', 6, 4, NULL, NULL),
(19, 'Барби', 'Комедия о кукле Барби', 0, 114, '2023-07-21', '7.0', NULL, 'assets/images/photos/previews/barbie.jpg', 'https://vk.com/video-220018529_456240874', 1, 3, NULL, NULL),
(20, 'Джон Уик 4', 'Боевик о наемном убийце', 0, 169, '2023-03-24', '7.7', NULL, 'assets/images/photos/previews/johnwick.jpg', 'https://vk.com/video-229347221_456239166', 8, 5, NULL, NULL),
(21, 'Восемьдесят-шесть (86)', 'Долгое время республику Сан-Магнолию осаждала империя Гиадиан, создавшая серию беспилотных дронов под названием «Легион».', 1, 25, '2021-04-11', '8.3', 24, 'assets/images/photos/previews/86.jpg', 'https://vk.com/video-185087421_456241704', 12, 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `media_actors`
--

CREATE TABLE `media_actors` (
  `id` bigint UNSIGNED NOT NULL,
  `actor_id` bigint UNSIGNED NOT NULL,
  `media_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `media_actors`
--

INSERT INTO `media_actors` (`id`, `actor_id`, `media_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 1, 5, NULL, NULL),
(3, 1, 13, NULL, NULL),
(4, 1, 14, NULL, NULL),
(5, 2, 9, NULL, NULL),
(6, 2, 14, NULL, NULL),
(7, 4, 1, NULL, NULL),
(8, 4, 4, NULL, NULL),
(9, 7, 11, NULL, NULL),
(10, 10, 10, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `media_directors`
--

CREATE TABLE `media_directors` (
  `id` bigint UNSIGNED NOT NULL,
  `director_id` bigint UNSIGNED NOT NULL,
  `media_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `media_directors`
--

INSERT INTO `media_directors` (`id`, `director_id`, `media_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 1, 4, NULL, NULL),
(3, 1, 6, NULL, NULL),
(4, 1, 18, NULL, NULL),
(5, 2, 2, NULL, NULL),
(6, 2, 5, NULL, NULL),
(7, 3, 3, NULL, NULL),
(8, 3, 13, NULL, NULL),
(9, 3, 14, NULL, NULL),
(10, 6, 21, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `media_footages`
--

CREATE TABLE `media_footages` (
  `id` bigint UNSIGNED NOT NULL,
  `media_id` bigint UNSIGNED NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `media_footages`
--

INSERT INTO `media_footages` (`id`, `media_id`, `photo`, `created_at`, `updated_at`) VALUES
(1, 1, 'assets/images/photos/footages/begin/frame1.jpg', NULL, NULL),
(2, 1, 'assets/images/photos/footages/begin/frame2.jpg', NULL, NULL),
(3, 1, 'assets/images/photos/footages/begin/frame3.jpg', NULL, NULL),
(4, 1, 'assets/images/photos/footages/begin/frame4.jpg', NULL, NULL),
(5, 2, 'assets/images/photos/footages/avatar/frame1.jpg', NULL, NULL),
(6, 2, 'assets/images/photos/footages/avatar/frame2.jpg', NULL, NULL),
(7, 2, 'assets/images/photos/footages/avatar/frame3.jpg', NULL, NULL),
(8, 2, 'assets/images/photos/footages/avatar/frame4.jpg', NULL, NULL),
(9, 2, 'assets/images/photos/footages/avatar/frame5.jpg', NULL, NULL),
(10, 3, 'assets/images/photos/footages/criminalfiction/frame1.jpg', NULL, NULL),
(11, 3, 'assets/images/photos/footages/criminalfiction/frame2.jpg', NULL, NULL),
(12, 3, 'assets/images/photos/footages/criminalfiction/frame3.jpg', NULL, NULL),
(13, 3, 'assets/images/photos/footages/criminalfiction/frame4.jpg', NULL, NULL),
(14, 4, 'assets/images/photos/footages/darkknight/frame1.jpg', NULL, NULL),
(15, 4, 'assets/images/photos/footages/darkknight/frame2.jpg', NULL, NULL),
(16, 4, 'assets/images/photos/footages/darkknight/frame3.jpg', NULL, NULL),
(17, 5, 'assets/images/photos/footages/titanik/frame1.jpg', NULL, NULL),
(18, 5, 'assets/images/photos/footages/titanik/frame2.jpg', NULL, NULL),
(19, 5, 'assets/images/photos/footages/titanik/frame3.jpg', NULL, NULL),
(20, 6, 'assets/images/photos/footages/interstellar/frame1.jpg', NULL, NULL),
(21, 6, 'assets/images/photos/footages/interstellar/frame2.jpg', NULL, NULL),
(22, 6, 'assets/images/photos/footages/interstellar/frame3.jpg', NULL, NULL),
(23, 6, 'assets/images/photos/footages/interstellar/frame4.jpg', NULL, NULL),
(24, 7, 'assets/images/photos/footages/matrix/frame1.jpg', NULL, NULL),
(25, 7, 'assets/images/photos/footages/matrix/frame2.jpg', NULL, NULL),
(26, 7, 'assets/images/photos/footages/matrix/frame3.jpg', NULL, NULL),
(27, 8, 'assets/images/photos/footages/forestgump/frame1.jpg', NULL, NULL),
(28, 8, 'assets/images/photos/footages/forestgump/frame2.jpg', NULL, NULL),
(29, 8, 'assets/images/photos/footages/forestgump/frame3.jpg', NULL, NULL),
(30, 8, 'assets/images/photos/footages/forestgump/frame4.jpg', NULL, NULL),
(31, 8, 'assets/images/photos/footages/forestgump/frame5.jpg', NULL, NULL),
(32, 9, 'assets/images/photos/footages/fightclub/frame1.jpg', NULL, NULL),
(33, 9, 'assets/images/photos/footages/fightclub/frame2.jpg', NULL, NULL),
(34, 9, 'assets/images/photos/footages/fightclub/frame3.jpg', NULL, NULL),
(35, 10, 'assets/images/photos/footages/caribbean/frame1.jpg', NULL, NULL),
(36, 10, 'assets/images/photos/footages/caribbean/frame2.jpg', NULL, NULL),
(37, 10, 'assets/images/photos/footages/caribbean/frame3.jpg', NULL, NULL),
(38, 11, 'assets/images/photos/footages/harrypotter/frame1.jpg', NULL, NULL),
(39, 11, 'assets/images/photos/footages/harrypotter/frame2.jpg', NULL, NULL),
(40, 11, 'assets/images/photos/footages/harrypotter/frame3.jpg', NULL, NULL),
(41, 11, 'assets/images/photos/footages/harrypotter/frame4.jpg', NULL, NULL),
(42, 12, 'assets/images/photos/footages/lotr/frame1.jpg', NULL, NULL),
(43, 12, 'assets/images/photos/footages/lotr/frame2.jpg', NULL, NULL),
(44, 12, 'assets/images/photos/footages/lotr/frame3.jpg', NULL, NULL),
(45, 13, 'assets/images/photos/footages/jango/frame1.jpg', NULL, NULL),
(46, 13, 'assets/images/photos/footages/jango/frame2.jpg', NULL, NULL),
(47, 13, 'assets/images/photos/footages/jango/frame3.jpg', NULL, NULL),
(48, 14, 'assets/images/photos/footages/hollywood/frame1.jpg', NULL, NULL),
(49, 14, 'assets/images/photos/footages/hollywood/frame2.jpg', NULL, NULL),
(50, 14, 'assets/images/photos/footages/hollywood/frame3.jpg', NULL, NULL),
(51, 15, 'assets/images/photos/footages/knivesout/frame1.jpg', NULL, NULL),
(52, 15, 'assets/images/photos/footages/knivesout/frame2.jpg', NULL, NULL),
(53, 15, 'assets/images/photos/footages/knivesout/frame3.jpg', NULL, NULL),
(54, 16, 'assets/images/photos/footages/duna/frame1.jpg', NULL, NULL),
(55, 16, 'assets/images/photos/footages/duna/frame2.jpg', NULL, NULL),
(56, 16, 'assets/images/photos/footages/duna/frame3.jpg', NULL, NULL),
(57, 17, 'assets/images/photos/footages/spiderman/frame1.jpg', NULL, NULL),
(58, 17, 'assets/images/photos/footages/spiderman/frame2.jpg', NULL, NULL),
(59, 17, 'assets/images/photos/footages/spiderman/frame3.jpg', NULL, NULL),
(60, 18, 'assets/images/photos/footages/oppengeimer/frame1.jpg', NULL, NULL),
(61, 18, 'assets/images/photos/footages/oppengeimer/frame2.jpg', NULL, NULL),
(62, 18, 'assets/images/photos/footages/oppengeimer/frame3.jpg', NULL, NULL),
(63, 19, 'assets/images/photos/footages/barbie/frame1.jpg', NULL, NULL),
(64, 19, 'assets/images/photos/footages/barbie/frame2.jpg', NULL, NULL),
(65, 19, 'assets/images/photos/footages/barbie/frame3.jpg', NULL, NULL),
(66, 20, 'assets/images/photos/footages/johnwick/frame1.jpg', NULL, NULL),
(67, 20, 'assets/images/photos/footages/johnwick/frame2.jpg', NULL, NULL),
(68, 20, 'assets/images/photos/footages/johnwick/frame3.jpg', NULL, NULL),
(69, 20, 'assets/images/photos/footages/johnwick/frame4.jpg', NULL, NULL),
(70, 21, 'assets/images/photos/footages/86/frame1.jpg', NULL, NULL),
(71, 21, 'assets/images/photos/footages/86/frame2.jpg', NULL, NULL),
(72, 21, 'assets/images/photos/footages/86/frame3.jpg', NULL, NULL),
(73, 21, 'assets/images/photos/footages/86/frame4.jpg', NULL, NULL),
(74, 21, 'assets/images/photos/footages/86/frame5.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `media_genres`
--

CREATE TABLE `media_genres` (
  `id` bigint UNSIGNED NOT NULL,
  `media_id` bigint UNSIGNED NOT NULL,
  `genre_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `media_genres`
--

INSERT INTO `media_genres` (`id`, `media_id`, `genre_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 1, 5, NULL, NULL),
(3, 1, 7, NULL, NULL),
(4, 2, 1, NULL, NULL),
(5, 2, 7, NULL, NULL),
(6, 2, 8, NULL, NULL),
(7, 3, 1, NULL, NULL),
(8, 3, 3, NULL, NULL),
(9, 3, 2, NULL, NULL),
(10, 4, 1, NULL, NULL),
(11, 4, 5, NULL, NULL),
(12, 4, 7, NULL, NULL),
(13, 5, 3, NULL, NULL),
(14, 5, 4, NULL, NULL),
(15, 6, 3, NULL, NULL),
(16, 6, 7, NULL, NULL),
(17, 7, 1, NULL, NULL),
(18, 7, 7, NULL, NULL),
(19, 8, 3, NULL, NULL),
(20, 8, 2, NULL, NULL),
(21, 9, 3, NULL, NULL),
(22, 9, 5, NULL, NULL),
(23, 10, 1, NULL, NULL),
(24, 10, 8, NULL, NULL),
(25, 11, 8, NULL, NULL),
(26, 11, 3, NULL, NULL),
(27, 12, 1, NULL, NULL),
(28, 12, 8, NULL, NULL),
(29, 13, 1, NULL, NULL),
(30, 13, 3, NULL, NULL),
(31, 13, 2, NULL, NULL),
(32, 14, 3, NULL, NULL),
(33, 14, 2, NULL, NULL),
(34, 15, 9, NULL, NULL),
(35, 15, 2, NULL, NULL),
(36, 16, 1, NULL, NULL),
(37, 16, 7, NULL, NULL),
(38, 17, 1, NULL, NULL),
(39, 17, 7, NULL, NULL),
(40, 17, 8, NULL, NULL),
(41, 18, 3, NULL, NULL),
(42, 18, 5, NULL, NULL),
(43, 19, 2, NULL, NULL),
(44, 19, 4, NULL, NULL),
(45, 19, 7, NULL, NULL),
(46, 20, 1, NULL, NULL),
(47, 20, 5, NULL, NULL),
(48, 21, 1, NULL, NULL),
(49, 21, 7, NULL, NULL),
(50, 21, 10, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_roles_table', 1),
(2, '0001_01_01_000001_create_users_table', 1),
(3, '0001_01_01_000002_create_directors_table', 1),
(4, '0001_01_01_000003_create_actors_table', 1),
(5, '0001_01_01_000004_create_genres_table', 1),
(6, '0001_01_01_000005_create_studios_table', 1),
(7, '0001_01_01_000006_create_age_ratings_table', 1),
(8, '0001_01_01_000007_create_media_table', 1),
(9, '0001_01_01_000008_create_media_footages_table', 1),
(10, '0001_01_01_000009_create_media_genres_table', 1),
(11, '0001_01_01_000010_create_media_directors_table', 1),
(12, '0001_01_01_000011_create_media_actors_table', 1),
(13, '0001_01_01_000012_create_favorites_table', 1),
(14, '0001_01_01_000013_create_reviews_table', 1),
(15, '0001_01_01_000014_create_jobs_table', 1),
(16, '0001_01_01_000015_create_cache_table', 1),
(17, '0001_01_01_000016_create_personal_access_tokens_table', 1),
(18, '2025_05_11_082006_create_series_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `media_id` bigint UNSIGNED NOT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `media_id`, `text`, `rating`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Тестовый комментарий!', 10, NULL, NULL),
(2, 1, 2, 'Тестовый второй комментарий!', 2, NULL, NULL),
(3, 2, 1, 'Тестовый ещё комментарий!', 5, NULL, NULL),
(4, 2, 2, 'Тестовый супер комментарий!', 7, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `code`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Администратор', '2025-06-19 05:18:35', '2025-06-19 05:18:35'),
(2, 'user', 'Пользователь', '2025-06-19 05:18:35', '2025-06-19 05:18:35');

-- --------------------------------------------------------

--
-- Структура таблицы `series`
--

CREATE TABLE `series` (
  `id` bigint UNSIGNED NOT NULL,
  `media_id` bigint UNSIGNED NOT NULL,
  `series_number` int NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `series`
--

INSERT INTO `series` (`id`, `media_id`, `series_number`, `url`, `created_at`, `updated_at`) VALUES
(1, 21, 1, 'https://vk.com/video-185087421_456241704', NULL, NULL),
(2, 21, 2, 'https://vk.com/video-185087421_456241705', NULL, NULL),
(3, 21, 3, 'https://vk.com/video-185087421_456241706', NULL, NULL),
(4, 21, 4, 'https://vk.com/video-185087421_456241707', NULL, NULL),
(5, 21, 5, 'https://vk.com/video-185087421_456241708', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `studios`
--

CREATE TABLE `studios` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `studios`
--

INSERT INTO `studios` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Warner Bros. Pictures', NULL, NULL),
(2, '20th Century Studios', NULL, NULL),
(3, 'Paramount Pictures', NULL, NULL),
(4, 'Walt Disney Studios Motion Pictures', NULL, NULL),
(5, 'Sony Pictures Entertainment', NULL, NULL),
(6, 'Universal Studios', NULL, NULL),
(7, 'Netflix', NULL, NULL),
(8, 'Lionsgate', NULL, NULL),
(9, 'Columbia Pictures', NULL, NULL),
(10, 'DreamWorks', NULL, NULL),
(11, 'A-1 Pictures', NULL, NULL),
(12, 'Wit Studio', NULL, NULL),
(13, 'MAPPA', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  `surname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` date NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `role_id`, `surname`, `name`, `email`, `password`, `birthday`, `avatar`, `api_token`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'Adminov', 'Admin', 'admin@mail.ru', '$2y$12$el2w7t5g9pdcG6pb3yv2Ven0nJhozXhJMRSiWxFsiYs1RQ5mK26bO', '2000-01-01', 'assets/images/photos/avatars/admin.jpg', '1', '1', '2025-06-19 05:18:35', '2025-06-19 05:18:35'),
(2, 2, 'Userov', 'User', 'user@mail.ru', '$2y$12$sgy8RtA7JfgJimjzFGPOT.P53RNLPE/HNoedzHhEVda9pEG9EQ6Pm', '2000-01-01', 'assets/images/photos/avatars/user.png', '2', '2', '2025-06-19 05:18:35', '2025-06-19 05:18:35');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `actors`
--
ALTER TABLE `actors`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `age_ratings`
--
ALTER TABLE `age_ratings`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Индексы таблицы `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Индексы таблицы `directors`
--
ALTER TABLE `directors`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `favorites_user_id_foreign` (`user_id`),
  ADD KEY `favorites_media_id_foreign` (`media_id`);

--
-- Индексы таблицы `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Индексы таблицы `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_studio_id_foreign` (`studio_id`),
  ADD KEY `media_age_rating_id_foreign` (`age_rating_id`);

--
-- Индексы таблицы `media_actors`
--
ALTER TABLE `media_actors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_actors_actor_id_foreign` (`actor_id`),
  ADD KEY `media_actors_media_id_foreign` (`media_id`);

--
-- Индексы таблицы `media_directors`
--
ALTER TABLE `media_directors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_directors_director_id_foreign` (`director_id`),
  ADD KEY `media_directors_media_id_foreign` (`media_id`);

--
-- Индексы таблицы `media_footages`
--
ALTER TABLE `media_footages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_footages_media_id_foreign` (`media_id`);

--
-- Индексы таблицы `media_genres`
--
ALTER TABLE `media_genres`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_genres_media_id_foreign` (`media_id`),
  ADD KEY `media_genres_genre_id_foreign` (`genre_id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_user_id_foreign` (`user_id`),
  ADD KEY `reviews_media_id_foreign` (`media_id`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `series`
--
ALTER TABLE `series`
  ADD PRIMARY KEY (`id`),
  ADD KEY `series_media_id_foreign` (`media_id`);

--
-- Индексы таблицы `studios`
--
ALTER TABLE `studios`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_api_token_unique` (`api_token`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `actors`
--
ALTER TABLE `actors`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `age_ratings`
--
ALTER TABLE `age_ratings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `directors`
--
ALTER TABLE `directors`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `genres`
--
ALTER TABLE `genres`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `media_actors`
--
ALTER TABLE `media_actors`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `media_directors`
--
ALTER TABLE `media_directors`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `media_footages`
--
ALTER TABLE `media_footages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT для таблицы `media_genres`
--
ALTER TABLE `media_genres`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `series`
--
ALTER TABLE `series`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `studios`
--
ALTER TABLE `studios`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_media_id_foreign` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`),
  ADD CONSTRAINT `favorites_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ограничения внешнего ключа таблицы `media`
--
ALTER TABLE `media`
  ADD CONSTRAINT `media_age_rating_id_foreign` FOREIGN KEY (`age_rating_id`) REFERENCES `age_ratings` (`id`),
  ADD CONSTRAINT `media_studio_id_foreign` FOREIGN KEY (`studio_id`) REFERENCES `studios` (`id`);

--
-- Ограничения внешнего ключа таблицы `media_actors`
--
ALTER TABLE `media_actors`
  ADD CONSTRAINT `media_actors_actor_id_foreign` FOREIGN KEY (`actor_id`) REFERENCES `actors` (`id`),
  ADD CONSTRAINT `media_actors_media_id_foreign` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`);

--
-- Ограничения внешнего ключа таблицы `media_directors`
--
ALTER TABLE `media_directors`
  ADD CONSTRAINT `media_directors_director_id_foreign` FOREIGN KEY (`director_id`) REFERENCES `directors` (`id`),
  ADD CONSTRAINT `media_directors_media_id_foreign` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`);

--
-- Ограничения внешнего ключа таблицы `media_footages`
--
ALTER TABLE `media_footages`
  ADD CONSTRAINT `media_footages_media_id_foreign` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`);

--
-- Ограничения внешнего ключа таблицы `media_genres`
--
ALTER TABLE `media_genres`
  ADD CONSTRAINT `media_genres_genre_id_foreign` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`id`),
  ADD CONSTRAINT `media_genres_media_id_foreign` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`);

--
-- Ограничения внешнего ключа таблицы `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_media_id_foreign` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`),
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ограничения внешнего ключа таблицы `series`
--
ALTER TABLE `series`
  ADD CONSTRAINT `series_media_id_foreign` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`);

--
-- Ограничения внешнего ключа таблицы `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
