-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-10-2022 a las 06:31:39
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `gym`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencia`
--

CREATE TABLE `asistencia` (
  `Id_asistencia` int(11) NOT NULL,
  `Cedula` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `FechaIng` datetime NOT NULL,
  `FechaSal` datetime DEFAULT NULL,
  `Fecha` date NOT NULL,
  `Estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `asistencia`
--

INSERT INTO `asistencia` (`Id_asistencia`, `Cedula`, `FechaIng`, `FechaSal`, `Fecha`, `Estado`) VALUES
(1, '1839948', '2022-10-01 19:50:33', '2022-10-01 19:50:37', '2022-10-01', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados_asignaciones`
--

CREATE TABLE `estados_asignaciones` (
  `Id` int(11) NOT NULL,
  `Tipo` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `estados_asignaciones`
--

INSERT INTO `estados_asignaciones` (`Id`, `Tipo`) VALUES
(1, 'En prestamo'),
(2, 'Devuelto');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagenesrutina`
--

CREATE TABLE `imagenesrutina` (
  `Id_imagen` int(11) NOT NULL,
  `Ruta` text COLLATE utf8_unicode_ci NOT NULL,
  `Estado` int(11) NOT NULL,
  `Categoria` int(11) NOT NULL,
  `Nombre` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `imagenesrutina`
--

INSERT INTO `imagenesrutina` (`Id_imagen`, `Ruta`, `Estado`, `Categoria`, `Nombre`) VALUES
(1, '../Rutinas/pan con cafe.jpg', 1, 1, 'Pecho inclinado'),
(2, '../Rutinas/2.jpg', 1, 1, 'Nombre1'),
(3, '../Rutinas/3.jpg', 1, 1, 'Nombre1'),
(4, '../Rutinas/4.jpg', 1, 1, 'Nombre1'),
(5, '../Rutinas/5.jpg', 1, 1, 'Nombre1'),
(6, '../Rutinas/6.jpg', 1, 1, 'Nombre7'),
(7, '../Rutinas/7.jpg', 1, 1, 'Nombre7'),
(8, '../Rutinas/8.jpg', 1, 1, 'Nombre8'),
(9, '../Rutinas/9.jpg', 1, 1, 'Nombre9'),
(10, '../Rutinas/10.jpg', 1, 1, 'Nombre10'),
(11, '../Rutinas/11.jpg', 1, 1, 'Nombre1'),
(12, '../Rutinas/12.jpg', 1, 1, 'Nombre1'),
(13, '../Rutinas/13.jpg', 1, 1, 'Nombre1'),
(14, '../Rutinas/14.jpg', 1, 1, 'Nombre1'),
(15, '../Rutinas/15.jpg', 1, 1, 'Nombre1'),
(16, '../Rutinas/16.jpg', 1, 1, 'Nombre7'),
(17, '../Rutinas/17.jpg', 1, 1, 'Nombre7'),
(18, '../Rutinas/18.jpg', 1, 1, 'Nombre8'),
(19, '../Rutinas/19.jpg', 1, 1, 'Nombre9'),
(20, '../Rutinas/20.jpg', 1, 1, 'Nombre10'),
(21, '../Rutinas/21.jpg', 1, 1, 'Nombre1'),
(22, '../Rutinas/22.jpg', 1, 1, 'Nombre1'),
(23, '../Rutinas/23.jpg', 1, 1, 'Nombre1'),
(24, '../Rutinas/24.jpg', 1, 1, 'Nombre1'),
(25, '../Rutinas/25.jpg', 1, 1, 'Nombre1'),
(26, '../Rutinas/26.jpg', 1, 1, 'Nombre7'),
(27, '../Rutinas/27.jpg', 1, 1, 'Nombre7'),
(28, '../Rutinas/28.jpg', 1, 1, 'Nombre8'),
(29, '../Rutinas/29.jpg', 1, 1, 'Nombre9'),
(30, '../Rutinas/30.jpg', 1, 1, 'Nombre10'),
(31, '../Rutinas/31.jpg', 1, 1, 'Nombre1'),
(32, '../Rutinas/32.jpg', 1, 1, 'Nombre1'),
(33, '../Rutinas/33.jpg', 1, 1, 'Nombre1'),
(34, '../Rutinas/34.jpg', 1, 1, 'Nombre1'),
(35, '../Rutinas/35.jpg', 1, 1, 'Nombre1'),
(36, '../Rutinas/36.jpg', 1, 1, 'Nombre7'),
(37, '../Rutinas/37.jpg', 1, 1, 'Nombre7'),
(38, '../Rutinas/38.jpg', 1, 1, 'Nombre8'),
(39, '../Rutinas/39.jpg', 1, 1, 'Nombre9'),
(40, '../Rutinas/40.jpg', 1, 1, 'Nombre10'),
(41, '../Rutinas/41.jpg', 1, 1, 'Nombre1'),
(42, '../Rutinas/42.jpg', 1, 1, 'Nombre1'),
(43, '../Rutinas/43.jpg', 1, 1, 'Nombre1'),
(44, '../Rutinas/44.jpg', 1, 1, 'Nombre1'),
(45, '../Rutinas/45.jpg', 1, 1, 'Nombre1'),
(46, '../Rutinas/46.jpg', 1, 1, 'Nombre7'),
(47, '../Rutinas/47.jpg', 1, 1, 'Nombre7'),
(48, '../Rutinas/48.jpg', 1, 1, 'Nombre8'),
(49, '../Rutinas/49.jpg', 1, 1, 'Nombre9'),
(50, '../Rutinas/50.jpg', 1, 1, 'Nombre10'),
(51, '../Rutinas/51.jpg', 1, 1, 'Nombre1'),
(52, '../Rutinas/52.jpg', 1, 1, 'Nombre1'),
(53, '../Rutinas/53.jpg', 1, 1, 'Nombre1'),
(54, '../Rutinas/54.jpg', 1, 1, 'Nombre1'),
(55, '../Rutinas/55.jpg', 1, 1, 'Nombre1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mvto_asignacion`
--

CREATE TABLE `mvto_asignacion` (
  `Id` int(11) NOT NULL,
  `Id_entrenador` int(11) NOT NULL,
  `Id_usuario` int(11) NOT NULL,
  `Id_producto` int(11) NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `Observaciones` text COLLATE utf8_unicode_ci NOT NULL,
  `Fecha_asignacion` date NOT NULL,
  `Fecha_sys` datetime NOT NULL,
  `Fecha_devolucion` date DEFAULT NULL,
  `Estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `mvto_asignacion`
--

INSERT INTO `mvto_asignacion` (`Id`, `Id_entrenador`, `Id_usuario`, `Id_producto`, `Cantidad`, `Observaciones`, `Fecha_asignacion`, `Fecha_sys`, `Fecha_devolucion`, `Estado`) VALUES
(1, 2147483647, 345678, 2, 25, 'Prueba numero 1', '2022-10-05', '2022-10-08 22:16:56', '2022-10-08', 2),
(2, 2147483647, 1839948, 2, 28, 'Prueba numero dos', '2022-10-08', '2022-10-08 22:17:25', '2022-10-09', 2),
(3, 2147483647, 19877366, 1, 80, 'Prueba 3', '2022-10-05', '2022-10-08 23:15:10', NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `Id_producto` int(11) NOT NULL,
  `Nombre` text COLLATE utf8_unicode_ci NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `Tipo_producto` int(11) NOT NULL,
  `Fecha_creacion` datetime NOT NULL,
  `QR` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`Id_producto`, `Nombre`, `Cantidad`, `Tipo_producto`, `Fecha_creacion`, `QR`) VALUES
(1, 'Balon de balones', 232, 2, '2022-10-03 16:53:50', 'QR/Productos/1.png'),
(2, 'Raqueta Semi Profesional', 30, 2, '2022-10-08 21:36:24', 'QR/Productos/2.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rutinas`
--

CREATE TABLE `rutinas` (
  `Id_rutina` int(11) NOT NULL,
  `Id_entrenador` int(11) NOT NULL,
  `Id_persona` int(11) NOT NULL,
  `Fecha_rutina` date NOT NULL,
  `Rutina` text COLLATE utf8_unicode_ci NOT NULL,
  `Estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `rutinas`
--

INSERT INTO `rutinas` (`Id_rutina`, `Id_entrenador`, `Id_persona`, `Fecha_rutina`, `Rutina`, `Estado`) VALUES
(1, 1122334455, 1105689, '2021-04-08', 'pierna, pecho', 0),
(5, 1122334455, 1003633691, '2021-06-04', 'Brazo espalda, abdomen  ', 1),
(6, 12345678, 1105689, '2021-06-04', 'cardio piernas', 1),
(7, 12345678, 1003633691, '2021-09-02', 'veinte serie de brazo \r\n3 series de abdominales\r\n', 1),
(8, 12345678, 995234, '2021-07-22', 'pierna abdominales', 1),
(9, 12345678, 1108457132, '2021-07-12', 'cardio', 1),
(10, 1122334455, 345678, '2022-09-29', 'Prueba 1, modificada', 1),
(11, 1122334455, 19877366, '2022-09-27', 'Prueba 2', 0),
(12, 1122334455, 1003633691, '2022-09-30', 'Prueba en reunion hoy', 1),
(13, 2147483647, 1108457132, '2022-10-26', 'Prueba final', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rutinas_imagenes`
--

CREATE TABLE `rutinas_imagenes` (
  `Id_cons` int(11) NOT NULL,
  `Id_Rutina` int(11) NOT NULL,
  `Id_imagen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `rutinas_imagenes`
--

INSERT INTO `rutinas_imagenes` (`Id_cons`, `Id_Rutina`, `Id_imagen`) VALUES
(4, 10, 2),
(5, 10, 3),
(6, 10, 10),
(91, 11, 6),
(92, 11, 7),
(93, 11, 8),
(94, 11, 28),
(95, 12, 1),
(96, 12, 10),
(97, 12, 21),
(98, 13, 1),
(99, 13, 22),
(100, 13, 27);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos_productos`
--

CREATE TABLE `tipos_productos` (
  `Id` int(11) NOT NULL,
  `Nombre_tipo` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tipos_productos`
--

INSERT INTO `tipos_productos` (`Id`, `Nombre_tipo`) VALUES
(1, 'Pesas'),
(2, 'Discos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `Id_usuario` int(11) NOT NULL,
  `Nickname` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Name` text COLLATE utf8_unicode_ci NOT NULL,
  `Cargo` text COLLATE utf8_unicode_ci NOT NULL,
  `Permiso` int(11) NOT NULL,
  `Estado` int(11) NOT NULL,
  `Entrenador` int(11) NOT NULL,
  `QR` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`Id_usuario`, `Nickname`, `Password`, `Name`, `Cargo`, `Permiso`, `Estado`, `Entrenador`, `QR`) VALUES
(34567, '34567', '25f9e794323b453885f5181f1b624d0b', 'juan lopez', 'Asistente al Gym', 4, 1, 1122334455, NULL),
(345678, '345678', '25f9e794323b453885f5181f1b624d0b', 'andrez hernadez lopez', 'Asistente al Gym', 4, 1, 12345678, NULL),
(995234, '995234', '25f9e794323b453885f5181f1b624d0b', 'ABADIE	FOSSATTI	MARIA INES', 'Asistente al Gym', 4, 1, 995234, NULL),
(1249609, '1249609', '25f9e794323b453885f5181f1b624d0b', 'ABAL	NICOLARI	RAQUEL ELIZABET', 'Asistente al Gym', 4, 1, 1249609, NULL),
(1385554, '1385554', '25f9e794323b453885f5181f1b624d0b', 'ABALDE	MARTINEZ	MARÍA ROSARIO', 'Asistente al Gym', 4, 1, 1385554, '../QR/1385554.png'),
(1839948, '1839948', '25f9e794323b453885f5181f1b624d0b', 'Hernando botero Echeverry ', 'Asistente al Gym', 4, 1, 1122334455, '../QR/1839948.png'),
(12345678, '12345678', '25f9e794323b453885f5181f1b624d0b', 'Entrenador Numero Dos', 'Entrenador', 2, 1, 12345678, NULL),
(19877366, '19877366', '25f9e794323b453885f5181f1b624d0b', 'Alonso peralta Camargo ', 'Asistente al Gym', 4, 1, 12345678, '../QR/19877366.png'),
(1003633691, '1003633691', '25f9e794323b453885f5181f1b624d0b', 'Sergio Camacha', 'Asistente al Gym', 4, 1, 1122334455, '../QR/1003633691.png'),
(1105689328, 'ADMIN', '25f9e794323b453885f5181f1b624d0b', 'Administrador web', 'Administrador Web', 3, 1, 0, NULL),
(1108457132, '1108457132', '25f9e794323b453885f5181f1b624d0b', 'cristian chacon ramirez', 'Asistente al Gym', 4, 1, 1108457132, NULL),
(1122334455, '1122334455', '25f9e794323b453885f5181f1b624d0b', 'Entrenador Numero Uno', 'Entrenador', 2, 1, 1122334455, NULL),
(2147483647, '11056902323', '25f9e794323b453885f5181f1b624d0b', 'Camilo Enrique Aviles', 'Entrenador II', 2, 1, 2147483647, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asistencia`
--
ALTER TABLE `asistencia`
  ADD PRIMARY KEY (`Id_asistencia`);

--
-- Indices de la tabla `estados_asignaciones`
--
ALTER TABLE `estados_asignaciones`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `imagenesrutina`
--
ALTER TABLE `imagenesrutina`
  ADD PRIMARY KEY (`Id_imagen`);

--
-- Indices de la tabla `mvto_asignacion`
--
ALTER TABLE `mvto_asignacion`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`Id_producto`);

--
-- Indices de la tabla `rutinas`
--
ALTER TABLE `rutinas`
  ADD PRIMARY KEY (`Id_rutina`);

--
-- Indices de la tabla `rutinas_imagenes`
--
ALTER TABLE `rutinas_imagenes`
  ADD PRIMARY KEY (`Id_cons`);

--
-- Indices de la tabla `tipos_productos`
--
ALTER TABLE `tipos_productos`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`Id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `asistencia`
--
ALTER TABLE `asistencia`
  MODIFY `Id_asistencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `estados_asignaciones`
--
ALTER TABLE `estados_asignaciones`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `imagenesrutina`
--
ALTER TABLE `imagenesrutina`
  MODIFY `Id_imagen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT de la tabla `mvto_asignacion`
--
ALTER TABLE `mvto_asignacion`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `Id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `rutinas`
--
ALTER TABLE `rutinas`
  MODIFY `Id_rutina` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `rutinas_imagenes`
--
ALTER TABLE `rutinas_imagenes`
  MODIFY `Id_cons` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `tipos_productos`
--
ALTER TABLE `tipos_productos`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
