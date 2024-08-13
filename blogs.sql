-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-08-2024 a las 20:59:24
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
  `category` enum('Electrodomesticos','Tecnologia') NOT NULL,
  `reference` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `createdAt` date NOT NULL,
  `updatedAt` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `blogs`
--

INSERT INTO `blogs` (`id`, `name`, `category`, `reference`, `status`, `createdAt`, `updatedAt`) VALUES
(145, 'Producto 1', 'Tecnologia', 121, 0, '0000-00-00', '2024-08-13'),
(146, 'Producto 2', 'Tecnologia', 122, 1, '0000-00-00', '0000-00-00'),
(147, 'Producto 3', 'Electrodomesticos', 123, 1, '0000-00-00', '0000-00-00'),
(148, 'Producto 4', 'Tecnologia', 124, 1, '0000-00-00', '0000-00-00'),
(149, 'Producto 5', 'Electrodomesticos', 125, 1, '0000-00-00', '0000-00-00'),
(150, 'Producto 6', 'Tecnologia', 126, 1, '0000-00-00', '0000-00-00'),
(151, 'Producto 7', 'Electrodomesticos', 127, 1, '0000-00-00', '0000-00-00'),
(152, 'Producto 8', 'Tecnologia', 128, 1, '0000-00-00', '0000-00-00'),
(153, 'Producto 9', 'Electrodomesticos', 129, 1, '0000-00-00', '0000-00-00'),
(154, 'Producto 10', 'Tecnologia', 130, 1, '0000-00-00', '0000-00-00'),
(155, 'Producto 11', 'Electrodomesticos', 131, 1, '0000-00-00', '0000-00-00'),
(156, 'Producto 12', 'Tecnologia', 132, 1, '0000-00-00', '0000-00-00'),
(157, 'Producto 13', 'Electrodomesticos', 133, 1, '0000-00-00', '0000-00-00'),
(158, 'Producto 14', 'Tecnologia', 134, 1, '0000-00-00', '0000-00-00'),
(159, 'Producto 15', 'Electrodomesticos', 135, 1, '0000-00-00', '0000-00-00'),
(160, 'Producto 16', 'Tecnologia', 136, 1, '0000-00-00', '0000-00-00'),
(161, 'Producto 17', 'Electrodomesticos', 137, 1, '0000-00-00', '0000-00-00'),
(162, 'Producto 18', 'Tecnologia', 138, 1, '0000-00-00', '0000-00-00'),
(163, 'Producto 19', 'Electrodomesticos', 139, 1, '0000-00-00', '0000-00-00'),
(164, 'Producto 20', 'Tecnologia', 140, 1, '0000-00-00', '0000-00-00'),
(165, 'Producto 21', 'Electrodomesticos', 141, 1, '0000-00-00', '0000-00-00'),
(166, 'Producto 22', 'Tecnologia', 142, 1, '0000-00-00', '0000-00-00'),
(167, 'Producto 23', 'Electrodomesticos', 143, 1, '0000-00-00', '0000-00-00'),
(168, 'Producto 24', 'Tecnologia', 144, 1, '0000-00-00', '0000-00-00'),
(169, 'Producto 25', 'Electrodomesticos', 145, 1, '0000-00-00', '0000-00-00'),
(170, 'Producto 26', 'Tecnologia', 146, 1, '0000-00-00', '0000-00-00'),
(171, 'Producto 27', 'Electrodomesticos', 147, 1, '0000-00-00', '0000-00-00'),
(172, 'Producto 28', 'Tecnologia', 148, 1, '0000-00-00', '0000-00-00'),
(173, 'Producto 29', 'Electrodomesticos', 149, 1, '0000-00-00', '0000-00-00'),
(174, 'Producto 30', 'Tecnologia', 150, 1, '0000-00-00', '0000-00-00'),
(175, 'Producto 31', 'Electrodomesticos', 151, 1, '0000-00-00', '0000-00-00'),
(176, 'Producto 32', 'Tecnologia', 152, 1, '0000-00-00', '0000-00-00'),
(177, 'Producto 33', 'Electrodomesticos', 153, 1, '0000-00-00', '0000-00-00'),
(178, 'Producto 34', 'Tecnologia', 154, 1, '0000-00-00', '0000-00-00'),
(179, 'Producto 35', 'Electrodomesticos', 155, 1, '0000-00-00', '0000-00-00'),
(180, 'Producto 36', 'Tecnologia', 156, 1, '0000-00-00', '0000-00-00'),
(181, 'Producto 37', 'Electrodomesticos', 157, 1, '0000-00-00', '0000-00-00'),
(182, 'Producto 38', 'Tecnologia', 158, 1, '0000-00-00', '0000-00-00'),
(183, 'Producto 39', 'Electrodomesticos', 159, 1, '0000-00-00', '0000-00-00'),
(184, 'Producto 40', 'Tecnologia', 160, 1, '0000-00-00', '0000-00-00'),
(185, 'Producto 41', 'Electrodomesticos', 161, 1, '0000-00-00', '0000-00-00'),
(186, 'Producto 42', 'Tecnologia', 162, 1, '0000-00-00', '0000-00-00'),
(187, 'Producto 43', 'Electrodomesticos', 163, 1, '0000-00-00', '0000-00-00'),
(188, 'Producto 44', 'Tecnologia', 164, 1, '0000-00-00', '0000-00-00'),
(189, 'Producto 45', 'Electrodomesticos', 165, 1, '0000-00-00', '0000-00-00'),
(190, 'Producto 46', 'Tecnologia', 166, 1, '0000-00-00', '0000-00-00'),
(191, 'Producto 47', 'Electrodomesticos', 167, 1, '0000-00-00', '0000-00-00'),
(192, 'Producto 48', 'Tecnologia', 168, 1, '0000-00-00', '0000-00-00'),
(193, 'Producto 49', 'Electrodomesticos', 169, 1, '0000-00-00', '0000-00-00'),
(194, 'Producto 50', 'Tecnologia', 170, 1, '0000-00-00', '0000-00-00'),
(195, 'Producto 51', 'Electrodomesticos', 171, 1, '0000-00-00', '0000-00-00'),
(196, 'Producto 52', 'Tecnologia', 172, 1, '0000-00-00', '0000-00-00'),
(197, 'Producto 53', 'Electrodomesticos', 173, 1, '0000-00-00', '0000-00-00'),
(198, 'Producto 54', 'Tecnologia', 174, 1, '0000-00-00', '0000-00-00'),
(199, 'Producto 55', 'Electrodomesticos', 175, 1, '0000-00-00', '0000-00-00'),
(200, 'Producto 56', 'Tecnologia', 176, 1, '0000-00-00', '0000-00-00'),
(201, 'Producto 57', 'Electrodomesticos', 177, 1, '0000-00-00', '0000-00-00'),
(202, 'Producto 58', 'Tecnologia', 178, 1, '0000-00-00', '0000-00-00'),
(203, 'Producto 59', 'Electrodomesticos', 179, 1, '0000-00-00', '0000-00-00'),
(204, 'Producto 60', 'Tecnologia', 180, 1, '0000-00-00', '0000-00-00'),
(205, 'Producto 61', 'Electrodomesticos', 181, 1, '0000-00-00', '0000-00-00'),
(206, 'Producto 62', 'Tecnologia', 182, 1, '0000-00-00', '0000-00-00'),
(207, 'Producto 63', 'Electrodomesticos', 183, 1, '0000-00-00', '0000-00-00'),
(208, 'Producto 64', 'Tecnologia', 184, 1, '0000-00-00', '0000-00-00'),
(209, 'Producto 65', 'Electrodomesticos', 185, 1, '0000-00-00', '0000-00-00'),
(210, 'Producto 66', 'Tecnologia', 186, 1, '0000-00-00', '0000-00-00'),
(211, 'Producto 67', 'Electrodomesticos', 187, 1, '0000-00-00', '0000-00-00'),
(212, 'Producto 68', 'Tecnologia', 188, 1, '0000-00-00', '0000-00-00'),
(213, 'Producto 69', 'Electrodomesticos', 189, 1, '0000-00-00', '0000-00-00'),
(214, 'Producto 70', 'Tecnologia', 190, 1, '0000-00-00', '0000-00-00'),
(215, 'Producto 71', 'Electrodomesticos', 191, 1, '0000-00-00', '0000-00-00'),
(216, 'Producto 72', 'Tecnologia', 192, 1, '0000-00-00', '0000-00-00'),
(217, 'Producto 73', 'Electrodomesticos', 193, 1, '0000-00-00', '0000-00-00'),
(218, 'Producto 74', 'Tecnologia', 194, 1, '0000-00-00', '0000-00-00'),
(219, 'Producto 75', 'Electrodomesticos', 195, 1, '0000-00-00', '0000-00-00'),
(220, 'Producto 76', 'Tecnologia', 196, 1, '0000-00-00', '0000-00-00'),
(221, 'Producto 77', 'Electrodomesticos', 197, 1, '0000-00-00', '0000-00-00'),
(222, 'Producto 78', 'Tecnologia', 198, 1, '0000-00-00', '0000-00-00'),
(223, 'Producto 79', 'Electrodomesticos', 199, 1, '0000-00-00', '0000-00-00'),
(224, 'Producto 80', 'Tecnologia', 200, 1, '0000-00-00', '0000-00-00'),
(225, 'Producto 81', 'Electrodomesticos', 201, 1, '0000-00-00', '0000-00-00'),
(226, 'Producto 82', 'Tecnologia', 202, 1, '0000-00-00', '0000-00-00'),
(227, 'Producto 83', 'Electrodomesticos', 203, 1, '0000-00-00', '0000-00-00'),
(228, 'Producto 84', 'Tecnologia', 204, 1, '0000-00-00', '0000-00-00'),
(229, 'Producto 85', 'Electrodomesticos', 205, 1, '0000-00-00', '0000-00-00'),
(230, 'Producto 86', 'Tecnologia', 206, 1, '0000-00-00', '0000-00-00'),
(231, 'Producto 87', 'Electrodomesticos', 207, 1, '0000-00-00', '0000-00-00'),
(232, 'Producto 88', 'Tecnologia', 208, 1, '0000-00-00', '0000-00-00'),
(233, 'Producto 89', 'Electrodomesticos', 209, 1, '0000-00-00', '0000-00-00'),
(234, 'Producto 90', 'Tecnologia', 210, 1, '0000-00-00', '0000-00-00'),
(235, 'Producto 91', 'Electrodomesticos', 211, 1, '0000-00-00', '0000-00-00'),
(236, 'Producto 92', 'Tecnologia', 212, 1, '0000-00-00', '0000-00-00'),
(237, 'Producto 93', 'Electrodomesticos', 213, 1, '0000-00-00', '0000-00-00'),
(238, 'Producto 94', 'Tecnologia', 214, 1, '0000-00-00', '0000-00-00'),
(239, 'Producto 95', 'Electrodomesticos', 215, 1, '0000-00-00', '0000-00-00'),
(240, 'Producto 96', 'Tecnologia', 216, 1, '0000-00-00', '0000-00-00'),
(241, 'Producto 97', 'Electrodomesticos', 217, 1, '0000-00-00', '0000-00-00'),
(242, 'Producto 98', 'Tecnologia', 218, 1, '0000-00-00', '0000-00-00'),
(243, 'Producto 99', 'Electrodomesticos', 219, 1, '0000-00-00', '0000-00-00'),
(244, 'Producto 100', 'Tecnologia', 220, 1, '0000-00-00', '0000-00-00'),
(246, 'pradilla', 'Tecnologia', 3000, 0, '2024-08-13', '2024-08-13');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
