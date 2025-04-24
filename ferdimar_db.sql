-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-04-2025 a las 20:43:53
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ferdimar_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contactos`
--

CREATE TABLE `contactos` (
  `id` int(11) NOT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `ubicacion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `contactos`
--

INSERT INTO `contactos` (`id`, `telefono`, `email`, `ubicacion`) VALUES
(1, '+580412-9426467', 'tpmferdima@gmail.com', 'Puerto la Cruz, Calle Neveri, Fundación Pozuelo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `mision` text NOT NULL,
  `vision` text NOT NULL,
  `servicios` text NOT NULL,
  `contacto_telefono` varchar(20) DEFAULT NULL,
  `contacto_email` varchar(100) DEFAULT NULL,
  `ubicacion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`id`, `nombre`, `mision`, `vision`, `servicios`, `contacto_telefono`, `contacto_email`, `ubicacion`) VALUES
(1, 'Ferdimar C.A', 'Impulsar el éxito de nuestros clientes a través de publicidad y marketing.', 'Ser la agencia líder en publicidad y marketing en la región.', 'Publicidad, marketing, diseño y producción de material publicitario.', '+580412-9426467', 'tpmferdima@gmail.com', 'Puerto la Cruz, Calle Neveri, Fundación Pozuelo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyectos`
--

CREATE TABLE `proyectos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text NOT NULL,
  `imagen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proyectos`
--

INSERT INTO `proyectos` (`id`, `nombre`, `descripcion`, `imagen`) VALUES
(1, 'Lonchera Osito', 'Proyecto de diseño de lonchera para niños.', 'lonchera-osito-inter.jpg'),
(2, 'Barrida de Mercadeo PLC', 'Campaña de mercadeo para productos de consumo.', 'barrida de mercadeo plc.jpeg'),
(3, 'Afiche Plumorese PLC', 'Diseño de afiche publicitario para Plumorese.', 'afiche plumorese plc.jpeg'),
(4, 'Congelados KV', 'Campaña publicitaria para productos congelados.', 'Congelados-KV-2.jpg'),
(5, 'Oscar 1', 'Diseño de material publicitario para Oscar.', 'oscar1.png'),
(6, 'Oscar 2', 'Diseño de material publicitario para Oscar.', 'oscar2.png'),
(7, 'Charvenca 1', 'Campaña publicitaria para Charvenca.', 'charvenca1.png'),
(8, 'Charvenca 2', 'Campaña publicitaria para Charvenca.', 'charvenca2.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `testimonios`
--

CREATE TABLE `testimonios` (
  `id` int(11) NOT NULL,
  `cliente_nombre` varchar(100) NOT NULL,
  `contenido` text NOT NULL,
  `imagen_cliente` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `testimonios`
--

INSERT INTO `testimonios` (`id`, `cliente_nombre`, `contenido`, `imagen_cliente`) VALUES
(1, 'Empresas Bimbo', 'El equipo de Ferdimar, C.A. entendió nuestras necesidades y desarrolló una campaña publicitaria efectiva que superó nuestras expectativas. ¡Los recomendamos ampliamente!', 'face1.jpeg'),
(2, 'Oscar Mayer', 'Gracias a Ferdimar, C.A., nuestro negocio ha crecido significativamente. Su creatividad y profesionalismo nos han ayudado a destacar en el mercado.', 'face2.jpeg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `contactos`
--
ALTER TABLE `contactos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `testimonios`
--
ALTER TABLE `testimonios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `contactos`
--
ALTER TABLE `contactos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `empresa`
--
ALTER TABLE `empresa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `testimonios`
--
ALTER TABLE `testimonios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
