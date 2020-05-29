-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-05-2020 a las 22:34:17
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bdd_proyecto`
--
CREATE DATABASE IF NOT EXISTS `bdd_proyecto` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `bdd_proyecto`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
(2, 'pedrito', '$2y$10$4DuLUKqJ3CIdj9p3FQD/Y.AGi6RTxw3h.KhVidVbsGu.HjWraqOv2', '2020-05-29 07:53:17'),
(3, 'perla', '$2y$10$UDAFd8qgRxnUTAjJhUvBpOChJmcY3tph8y53KO2YjYkVb0AyWUhq.', '2020-05-29 07:56:12'),
(4, 'juna', '$2y$10$gne7LeQca7Uu.M4useMuqOG7rz5l4Nj1LiO8gaBJUTqXlQYTH2SXu', '2020-05-29 07:56:30'),
(5, '7878', '$2y$10$OIqJpjsUfk3UIdpjeLbeGuP24uY0onXCOIhd8DZSp65wrCpOhog2W', '2020-05-29 07:56:55'),
(6, 'chock', '$2y$10$ibfZUd67Dked33NYdDHnL.ArMSrKyiqG4OQ5wRnhjt8gH4TQCt5WK', '2020-05-29 08:00:42'),
(7, 'ruzzi', '$2y$10$j74SVVwvGVynVd25jNAxp.0TaBq.lqRMvQLZcCEFG..5FrcI9vKAC', '2020-05-29 08:14:02'),
(8, 'maria', '$2y$10$xfkHx81J0/u4DPPjcsFKuejXEH3B3qGbPhgbBnRPpXNILGH1OKN9.', '2020-05-29 08:39:56'),
(9, 'Blondie', '$2y$10$xGKEokClW.8YOFprIOKMCe4AmpWyUaEYzA5fXor10nXCxXkF5ZHQi', '2020-05-29 08:56:45'),
(10, 'Gloria', '$2y$10$/AJ8vP93erMKNl5wGE.pauV9O2VCrYUiq1R2DCN2JFbl20HZb2sZi', '2020-05-29 09:10:06'),
(11, 'Janett', '$2y$10$fMPlkHmvE4650IQZMRJ1i.a.88ZlzEyHlgP6pCkgK0yG4OUXnGspq', '2020-05-29 09:23:04'),
(12, 'marco', '$2y$10$U2WHwJrRXxso7DohswYt8u3Cl0lG5dVDHI5N3qcJFoDYCOjpyo3h6', '2020-05-29 15:28:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_catalogo`
--

CREATE TABLE `user_catalogo` (
  `noControl` varchar(14) COLLATE utf8_unicode_ci NOT NULL,
  `noControlE` varchar(14) COLLATE utf8_unicode_ci NOT NULL,
  `noControlP` varchar(14) COLLATE utf8_unicode_ci NOT NULL,
  `nombre` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `materia` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `proposito` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `tiempo` time NOT NULL,
  `fechI` date NOT NULL,
  `fechF` date NOT NULL,
  `costo` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `user_catalogo`
--

INSERT INTO `user_catalogo` (`noControl`, `noControlE`, `noControlP`, `nombre`, `materia`, `proposito`, `tiempo`, `fechI`, `fechF`, `costo`) VALUES
('105138186124', '09090910102222', '0012468901', 'Circuito electromagnético', 'Circuitos ', 'Realizar un circuito funcional', '08:30:00', '2020-01-12', '2020-01-19', '270'),
('151413121110', '1111111', '0000000020', 'Apoyo a problematicas ', 'Intervencion   ', 'Ayudar a las personas con problemas individuales', '01:00:00', '2020-02-11', '2020-02-11', '70'),
('18315060640046', '11121112', '123452', 'Base de datos de empresa', 'Base de datos', 'Almacenar información y datos importatnes,', '02:30:00', '2020-04-11', '2020-04-13', '50'),
('19200987653011', '32320', '976345678', 'Dibujo de planos de la escuela', 'Realiza dibujos de planos', 'Conocer la estructura y medidas precisas del entor', '06:30:00', '2020-03-09', '2020-03-15', '100');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_proyecto`
--

CREATE TABLE `user_proyecto` (
  `noControl` varchar(14) COLLATE utf8_unicode_ci NOT NULL,
  `nombre` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `apePat` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `apeMat` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `fechNac` date NOT NULL,
  `genero` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `especialidad` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `semestre` int(11) NOT NULL,
  `telefono` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `user_proyecto`
--

INSERT INTO `user_proyecto` (`noControl`, `nombre`, `apePat`, `apeMat`, `fechNac`, `genero`, `especialidad`, `semestre`, `telefono`, `email`) VALUES
('11220249632790', 'David', 'Montes', 'Rios ', '2002-11-11', 'H', 'Electricidad', 6, '7221399010', 'davxaran@hotmail.com'),
('151413121110', 'Blondie', 'Ronson', 'Ruzzi', '2000-11-11', 'M', 'Trabajo social', 6, '7212131415', 'ruzzi@gmail.com'),
('18315060640046', 'Cecilia', 'Ruiz', 'Esquivel', '2003-10-15', 'M', 'Programación', 4, '7293788584', 'ceciliaruizesquivel@gmail.com'),
('19200987653011', 'Guillermo', 'Alcántara', 'Mondragón', '2002-04-12', 'H', 'Construcción', 6, '7221399010', 'jesusguill415@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_ventas`
--

CREATE TABLE `user_ventas` (
  `noControlE` varchar(14) COLLATE utf8_unicode_ci NOT NULL,
  `noControlP` varchar(14) COLLATE utf8_unicode_ci NOT NULL,
  `materia` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `cantidad` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `user_ventas`
--

INSERT INTO `user_ventas` (`noControlE`, `noControlP`, `materia`, `cantidad`) VALUES
('1111111111', '0000010910', 'Dibujo de pieza', '2'),
('1122024963279', '0002109871', 'Fresado', '1'),
('1019876520', '0009873212', 'Planos', '1'),
('11121112', '123452', 'Base de datos', '2'),
('32320', '976345678', 'Realiza dibujos de planos', '5');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `user_catalogo`
--
ALTER TABLE `user_catalogo`
  ADD PRIMARY KEY (`noControlE`),
  ADD UNIQUE KEY `noControl` (`noControl`);

--
-- Indices de la tabla `user_proyecto`
--
ALTER TABLE `user_proyecto`
  ADD PRIMARY KEY (`noControl`);

--
-- Indices de la tabla `user_ventas`
--
ALTER TABLE `user_ventas`
  ADD PRIMARY KEY (`noControlP`),
  ADD KEY `noControlE` (`noControlE`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
