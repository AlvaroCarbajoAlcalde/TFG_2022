-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-03-2022 a las 09:40:05
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `balloonsim`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `admins`
--

INSERT INTO `admins` (`id`, `name`, `password`, `created_at`, `updated_at`) VALUES
(1, 'd033e22ae348aeb5660fc2140aec35850c4da997', 'd033e22ae348aeb5660fc2140aec35850c4da997', '2022-03-13 14:13:02', '2022-03-13 14:13:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `flights`
--

CREATE TABLE `flights` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `user` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `flights`
--

INSERT INTO `flights` (`id`, `date`, `user`, `created_at`, `updated_at`) VALUES
(28, '2022-03-21', 'anon', '2022-03-21 06:27:35', '2022-03-21 06:27:35'),
(29, '2022-03-21', 'anon', '2022-03-21 06:57:51', '2022-03-21 06:57:51');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(7, '2022_02_28__create_takeoff_points_table', 2),
(8, '2022_02_28_1_create_takeoff_points_table', 3),
(9, '2022_03_11_140512_create_users_table', 4),
(10, '2022_03_13_143435_create_admins_table', 5),
(11, '2022_03_14_143435_create_admins_table', 6),
(12, '2022_03_20_170944_create_flights_table', 7),
(13, '2022_03_21_170944_create_flights_table', 8),
(14, '2022_03_22_170944_create_flights_table', 9),
(15, '2022_03_23_170944_create_flights_table', 10),
(16, '2022_03_24_170944_create_flights_table', 11),
(17, '2022_03_25_170944_create_flights_table', 12),
(18, '2022_03_26_170944_create_flights_table', 13),
(19, '2022_03_20_193423_create_routes_table', 14);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
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
-- Estructura de tabla para la tabla `routes`
--

CREATE TABLE `routes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `flight` int(11) NOT NULL,
  `seconds` int(11) NOT NULL,
  `lat` double NOT NULL,
  `lon` double NOT NULL,
  `altitude` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `routes`
--

INSERT INTO `routes` (`id`, `flight`, `seconds`, `lat`, `lon`, `altitude`, `created_at`, `updated_at`) VALUES
(177, 28, 0, 42.64976, -3.02136, 1767, '2022-03-21 06:27:56', '2022-03-21 06:27:56'),
(178, 28, 3, 42.64976, -3.02136, 1767, '2022-03-21 06:27:59', '2022-03-21 06:27:59'),
(179, 28, 6, 42.65067, -3.02136, 1767, '2022-03-21 06:28:02', '2022-03-21 06:28:02'),
(180, 28, 9, 42.64976, -3.01971, 1767, '2022-03-21 06:28:05', '2022-03-21 06:28:05'),
(181, 28, 12, 42.65189, -3.01724, 1767, '2022-03-21 06:28:08', '2022-03-21 06:28:08'),
(182, 28, 15, 42.64641, -3.0193, 1767, '2022-03-21 06:28:11', '2022-03-21 06:28:11'),
(183, 28, 18, 42.64125, -3.02382, 1767, '2022-03-21 06:28:14', '2022-03-21 06:28:14'),
(184, 28, 21, 42.63669, -3.02506, 1767, '2022-03-21 06:28:17', '2022-03-21 06:28:17'),
(185, 28, 24, 42.63152, -3.02794, 1767, '2022-03-21 06:28:20', '2022-03-21 06:28:20'),
(186, 28, 27, 42.62787, -3.0267, 1767, '2022-03-21 06:28:23', '2022-03-21 06:28:23'),
(187, 28, 30, 42.62392, -3.0267, 1767, '2022-03-21 06:28:26', '2022-03-21 06:28:26'),
(188, 28, 33, 42.61966, -3.02465, 1767, '2022-03-21 06:28:29', '2022-03-21 06:28:29'),
(189, 28, 36, 42.61571, -3.02218, 1767, '2022-03-21 06:28:32', '2022-03-21 06:28:32'),
(190, 28, 39, 42.61267, -3.0193, 1767, '2022-03-21 06:28:35', '2022-03-21 06:28:35'),
(191, 28, 42, 42.60872, -3.01354, 1767, '2022-03-21 06:28:38', '2022-03-21 06:28:38'),
(192, 28, 45, 42.60385, -3.01025, 1767, '2022-03-21 06:28:41', '2022-03-21 06:28:41'),
(193, 28, 48, 42.59929, -3.00531, 1767, '2022-03-21 06:28:44', '2022-03-21 06:28:44'),
(194, 28, 51, 42.59564, -3.00038, 1767, '2022-03-21 06:28:47', '2022-03-21 06:28:47'),
(195, 29, 0, 42.55703, -2.97282, 1721, '2022-03-21 06:58:24', '2022-03-21 06:58:24'),
(196, 29, 3, 42.56129, -2.97282, 1721, '2022-03-21 06:58:27', '2022-03-21 06:58:27'),
(197, 29, 6, 42.57923, -2.97282, 1721, '2022-03-21 06:58:30', '2022-03-21 06:58:30'),
(198, 29, 9, 42.58926, -2.97282, 1721, '2022-03-21 06:58:33', '2022-03-21 06:58:33'),
(199, 29, 12, 42.61571, -2.97282, 1721, '2022-03-21 06:58:36', '2022-03-21 06:58:36'),
(200, 29, 15, 42.62909, -2.97282, 1721, '2022-03-21 06:58:39', '2022-03-21 06:58:39'),
(201, 29, 18, 42.65675, -2.97282, 1721, '2022-03-21 06:58:42', '2022-03-21 06:58:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `takeoff_points`
--

CREATE TABLE `takeoff_points` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `x` double NOT NULL DEFAULT 0,
  `z` double NOT NULL DEFAULT 0,
  `y` double NOT NULL DEFAULT 0,
  `lat` double DEFAULT NULL,
  `lon` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `takeoff_points`
--

INSERT INTO `takeoff_points` (`id`, `name`, `description`, `x`, `z`, `y`, `lat`, `lon`, `created_at`, `updated_at`) VALUES
(1, 'Instalaciones de Globos Arcoiris', 'Finca de despegue de Globos Arcoirirs, Km 459, N-232, Cuzcurrita de Río Tirón.', 3830, 3945, 30.7, 42.556537, -2.97265, '2022-02-28 08:41:47', '2022-03-10 13:24:51'),
(3, 'Carretera Anguciana', 'Finca de despegue situada entre las localidades de Haro y Anguciana, carretera LR-202.', 5015, 4190, 24.71, 42.572362780592805, -2.8752175345636917, '2022-03-19 11:34:29', '2022-03-19 17:17:04'),
(4, 'Bugedo', 'Finca de despegue en Bugedo, Burgos.', 3240, 5470, 32.9, 42.64976, -3.02136, '2022-03-19 11:44:21', '2022-03-19 17:15:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `created_at`, `updated_at`) VALUES
(5, 'Valentin', '9b880dd8ba6decdd294d303015d4efd385343336', '2022-03-11 13:54:35', '2022-03-11 13:54:35'),
(6, 'Alvaro', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '2022-03-11 14:15:27', '2022-03-11 14:15:27'),
(7, 'anon', '61518fb1715ab4d698aca32a7840ac7b2e507d3e', '2022-03-20 16:39:15', '2022-03-20 16:39:15');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_name_unique` (`name`);

--
-- Indices de la tabla `flights`
--
ALTER TABLE `flights`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `routes`
--
ALTER TABLE `routes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `takeoff_points`
--
ALTER TABLE `takeoff_points`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `takeoff_points_name_unique` (`name`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_name_unique` (`name`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT de la tabla `flights`
--
ALTER TABLE `flights`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `routes`
--
ALTER TABLE `routes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- AUTO_INCREMENT de la tabla `takeoff_points`
--
ALTER TABLE `takeoff_points`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
