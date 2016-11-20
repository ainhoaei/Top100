-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-11-2016 a las 19:01:02
-- Versión del servidor: 10.1.16-MariaDB
-- Versión de PHP: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `top100`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `canciones`
--

CREATE TABLE `canciones` (
  `id` int(11) NOT NULL,
  `nombre_cancion` text NOT NULL,
  `interprete_id` int(11) NOT NULL,
  `puesto_ranking` int(2) NOT NULL,
  `estilos` int(11) NOT NULL,
  `letra` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estilos`
--

CREATE TABLE `estilos` (
  `id` int(2) NOT NULL,
  `nombre` text NOT NULL,
  `descrip` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `estilos`
--

INSERT INTO `estilos` (`id`, `nombre`, `descrip`) VALUES
(1, 'pop', 'La música pop (del inglés pop music, contracción de popular music) es un género de música popular que tuvo su origen a finales de los años 1950 como una derivación del rock and roll, en combinación con otros géneros musicales que estaban de moda en aquel momento. Los términos música pop y música popular se usan a menudo de manera indistinta, aunque el segundo tiene un sentido más amplio al dar cabida a otros géneros distintos del pop que se consideren populares. Como género, la música pop es muy ecléctica, tomando prestado a menudo elementos de otros estilos como el urban, dance, el rock, la música latina, el rhythm and blues o el folk. ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `info_cancion`
--

CREATE TABLE `info_cancion` (
  `id` int(2) NOT NULL,
  `nombre` text NOT NULL,
  `duracion` float NOT NULL,
  `letra` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `interprete`
--

CREATE TABLE `interprete` (
  `id` int(2) NOT NULL,
  `nombre` text NOT NULL,
  `descripcion` text NOT NULL,
  `num_miembros` int(2) NOT NULL,
  `nacionalidad` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `interprete`
--

INSERT INTO `interprete` (`id`, `nombre`, `descripcion`, `num_miembros`, `nacionalidad`) VALUES
(1, 'aaaaaaaa', 'yyyyy uuuuuu', 3, 'hhhhh');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estilos`
--
ALTER TABLE `estilos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `info_cancion`
--
ALTER TABLE `info_cancion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `interprete`
--
ALTER TABLE `interprete`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `canciones`
--
ALTER TABLE `canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `estilos`
--
ALTER TABLE `estilos`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `info_cancion`
--
ALTER TABLE `info_cancion`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `interprete`
--
ALTER TABLE `interprete`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
