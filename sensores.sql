-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-11-2020 a las 19:44:19
-- Versión del servidor: 10.1.30-MariaDB
-- Versión de PHP: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sensores`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sensor`
--

CREATE TABLE `sensor` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `humedad` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `modelo` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nombre` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `temperatura` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `sensor`
--

INSERT INTO `sensor` (`id`, `descripcion`, `humedad`, `modelo`, `nombre`, `temperatura`) VALUES
(1, 'todo terreno', '60%', 'BBC', 'Ambos', '11°C'),
(2, 'si jala', '38%', 'JDHH', 'Ambos', '31°C'),
(3, 'Chido', '38%', 'BBCC', 'Bravos', '34°C');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `sensor`
--
ALTER TABLE `sensor`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `sensor`
--
ALTER TABLE `sensor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
