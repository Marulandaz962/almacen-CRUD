-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-08-2024 a las 09:23:01
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `almacen_app`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `reference` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `createdAt` date NOT NULL,
  `updatedAt` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `blogs`
--

INSERT INTO `blogs` (`id`, `name`, `category`, `reference`, `status`, `createdAt`, `updatedAt`) VALUES
(1, 'pc', 'Tecnologia', 121, 1, '0000-00-00', '2024-08-13'),
(2, 'Título 2', 'Contenido de mi segundo post', 122, 0, '0000-00-00', '0000-00-00'),
(3, 'Título 3', 'Contenido de mi tercer post', 123, 0, '0000-00-00', '0000-00-00'),
(4, 'Título 4', 'Contenido de mi cuarto post', 124, 0, '0000-00-00', '0000-00-00'),
(5, 'Título 5', 'Contenido de mi quinto post', 125, 0, '0000-00-00', '0000-00-00'),
(6, 'Título 6', 'Contenido de mi sexto post', 126, 0, '0000-00-00', '0000-00-00'),
(40, 'lavadora', 'electrodomestico', 127, 1, '2024-08-13', '2024-08-13'),
(42, 'Lampara', 'Electrodomesticos', 128, 1, '2024-08-13', '2024-08-13'),
(43, 'mouse', 'Tecnologia', 130, 1, '2024-08-13', '2024-08-13');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reference` (`reference`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
