-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-02-2023 a las 03:53:02
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
-- Estructura de tabla para la tabla `carreras`
--

CREATE TABLE `carreras` (
  `Id` int(11) NOT NULL,
  `Nombre` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `carreras`
--

INSERT INTO `carreras` (`Id`, `Nombre`) VALUES
(1, 'Ingenieria de sistemas'),
(2, 'Ingenieria Civil');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`Id`, `Nombre`) VALUES
(1, 'Calentamiento'),
(2, 'Central'),
(3, 'Estiramiento');

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
-- Estructura de tabla para la tabla `fichas_tecnicas`
--

CREATE TABLE `fichas_tecnicas` (
  `id` int(11) NOT NULL,
  `Id_entrenador` bigint(20) NOT NULL,
  `Id_entre_cam` bigint(20) DEFAULT NULL,
  `Id_usuario` bigint(20) NOT NULL,
  `Estado` int(11) NOT NULL,
  `Id_carrera` int(11) NOT NULL,
  `Fecha` date NOT NULL,
  `Fecha_camb` datetime DEFAULT NULL,
  `Edad` int(11) NOT NULL,
  `Sexo` varchar(25) NOT NULL,
  `Pesokg` float NOT NULL,
  `Estaturacm` float NOT NULL,
  `Antebrazoizq` float NOT NULL,
  `Bicepizq` float NOT NULL,
  `Cuello` float NOT NULL,
  `Pechoexte` float NOT NULL,
  `antebrazoder` float NOT NULL,
  `Bicepder` float NOT NULL,
  `Cadera` float NOT NULL,
  `Abdomen` float NOT NULL,
  `PiernaIzq` float NOT NULL,
  `Gluteo` float NOT NULL,
  `Piernader` float NOT NULL,
  `Pantorrillaizq` float NOT NULL,
  `Pantorrillader` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `fichas_tecnicas`
--

INSERT INTO `fichas_tecnicas` (`id`, `Id_entrenador`, `Id_entre_cam`, `Id_usuario`, `Estado`, `Id_carrera`, `Fecha`, `Fecha_camb`, `Edad`, `Sexo`, `Pesokg`, `Estaturacm`, `Antebrazoizq`, `Bicepizq`, `Cuello`, `Pechoexte`, `antebrazoder`, `Bicepder`, `Cadera`, `Abdomen`, `PiernaIzq`, `Gluteo`, `Piernader`, `Pantorrillaizq`, `Pantorrillader`) VALUES
(1, 12345678, 12345678, 345678, 0, 1, '2023-02-12', '2023-02-12 13:31:10', 16, 'Femenino', 45.5, 85.5, 96.2, 45.5, 45.5, 87.5, 96.5, 45.6, 48.1, 45.6, 84.5, 45, 86.6, 34.3, 36.3),
(2, 12345678, NULL, 345678, 1, 1, '2023-02-12', '2023-02-12 13:31:10', 35, 'Masculino', 85.5, 85.5, 85.5, 85.5, 85.5, 85.5, 85.5, 85.5, 85.5, 85.5, 85.5, 85.5, 85.5, 85.5, 85.5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagenesrutina`
--

CREATE TABLE `imagenesrutina` (
  `Id_imagen` int(11) NOT NULL,
  `Fecha_camb` datetime NOT NULL,
  `Ruta` text COLLATE utf8_unicode_ci NOT NULL,
  `Estado` int(11) NOT NULL,
  `Categoria` int(11) NOT NULL,
  `categoria_tres` int(11) NOT NULL,
  `Nombre` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `imagenesrutina`
--

INSERT INTO `imagenesrutina` (`Id_imagen`, `Fecha_camb`, `Ruta`, `Estado`, `Categoria`, `categoria_tres`, `Nombre`) VALUES
(1, '2023-02-12 15:42:22', 'ABDOMINAL L LANZANDO LA PIERNA EN CIRCULO.gif', 1, 1, 3, 'ABDOMINAL L LANZANDO LA PIERNA EN CIRCULO'),
(2, '2023-02-12 15:44:02', 'ABDOMINAL L LANZANDOI LA PIERNA Y MANCUERNA.gif', 1, 1, 1, 'ABDOMINAL L LANZANDOI LA PIERNA Y MANCUERNA'),
(3, '2023-02-12 15:42:22', 'ABDOMINALES CON RUEDA.gif', 1, 1, 3, 'ABDOMINALES CON RUEDA'),
(4, '2023-02-12 15:42:22', 'ABDOMINALES EN L CON SACO.gif', 1, 1, 3, 'ABDOMINALES EN L CON SACO'),
(5, '2023-02-12 15:42:22', 'ARNOLD PRESS.gif', 1, 1, 3, 'ARNOLD PRESS'),
(6, '2023-02-12 15:42:22', 'ARRANCADA CON JERK LATERAL.gif', 1, 1, 3, 'ARRANCADA CON JERK LATERAL'),
(7, '2023-02-12 15:42:22', 'ARRANCADA CON JERK.gif', 1, 1, 3, 'ARRANCADA CON JERK'),
(8, '2023-02-12 15:42:22', 'ARRANCADA LATERAL.gif', 1, 1, 3, 'ARRANCADA LATERAL'),
(9, '2023-02-12 15:42:22', 'BACK LUNGE.gif', 1, 1, 3, 'BACK LUNGE'),
(10, '2023-02-12 15:42:22', 'BICEPS MARTILLO.gif', 1, 1, 3, 'BICEPS MARTILLO'),
(11, '2023-02-12 15:42:22', 'BLAST OFF PUSHUP.gif', 1, 1, 3, 'BLAST OFF PUSHUP'),
(12, '2023-02-12 15:42:22', 'BREAK DANCER.gif', 1, 1, 3, 'BREAK DANCER'),
(13, '2023-02-12 15:42:22', 'BURPEE CROSSFIT.gif', 1, 1, 3, 'BURPEE CROSSFIT'),
(14, '2023-02-12 15:42:22', 'BURPEE.gif', 1, 1, 3, 'BURPEE'),
(15, '2023-02-12 15:42:22', 'CLEAN O ORRANCADA.gif', 1, 1, 3, 'CLEAN O ORRANCADA'),
(16, '2023-02-12 15:42:22', 'CLIMBER JUMP.gif', 1, 1, 3, 'CLIMBER JUMP'),
(17, '2023-02-12 15:42:22', 'CRUNCH ABDOMINAL CON SACO.gif', 1, 1, 3, 'CRUNCH ABDOMINAL CON SACO'),
(18, '2023-02-12 15:42:22', 'DIAGONAL CHOP CON MANCUERNA.gif', 1, 1, 3, 'DIAGONAL CHOP CON MANCUERNA'),
(19, '2023-02-12 15:42:22', 'EL PUENTE CON BANCO.gif', 1, 1, 3, 'EL PUENTE CON BANCO'),
(20, '2023-02-12 15:42:22', 'EL PUENTE.gif', 1, 1, 3, 'EL PUENTE'),
(21, '2023-02-12 15:42:22', 'ELEVACION FRONTAL CON SACO.gif', 1, 1, 3, 'ELEVACION FRONTAL CON SACO'),
(22, '2023-02-12 15:42:22', 'EMPUJE DE CADERA CON BARRA.gif', 1, 1, 3, 'EMPUJE DE CADERA CON BARRA'),
(23, '2023-02-12 15:42:22', 'EMPUJE DE CADERA CON PIERNA.gif', 1, 1, 3, 'EMPUJE DE CADERA CON PIERNA'),
(24, '2023-02-12 15:42:22', 'EMPUJE DE CADERA CON SALTO.gif', 1, 1, 3, 'EMPUJE DE CADERA CON SALTO'),
(25, '2023-02-12 15:42:22', 'EMPUJE DE CADERA CON UNA PIERNA Y BARRA.gif', 1, 1, 3, 'EMPUJE DE CADERA CON UNA PIERNA Y BARRA'),
(26, '2023-02-12 15:42:22', 'EMPUJE DE CADERA.gif', 1, 1, 3, 'EMPUJE DE CADERA'),
(27, '2023-02-12 15:42:22', 'FELXIONES.gif', 1, 1, 3, 'FELXIONES'),
(28, '2023-02-12 15:42:22', 'FLEXION CON SACO.gif', 1, 1, 3, 'FLEXION CON SACO'),
(29, '2023-02-12 15:42:22', 'FLEXION DE BICEPS CON UN BRAZO.gif', 1, 1, 3, 'FLEXION DE BICEPS CON UN BRAZO'),
(30, '2023-02-12 15:42:22', 'FONDOS CON BANCO.gif', 1, 1, 3, 'FONDOS CON BANCO'),
(31, '2023-02-12 15:42:22', 'GHD EXTENSIONES.gif', 1, 1, 2, 'GHD EXTENSIONES'),
(32, '2023-02-12 15:42:22', 'GLUTEO BAND.gif', 1, 1, 2, 'GLUTEO BAND'),
(33, '2023-02-12 15:42:22', 'GOBLET SQUAT.gif', 1, 1, 2, 'GOBLET SQUAT'),
(34, '2023-02-12 15:42:22', 'HOMBRO FRONTAL.gif', 1, 1, 2, 'HOMBRO FRONTAL'),
(35, '2023-02-12 15:42:22', 'JUMPING JACKS.gif', 1, 1, 2, 'JUMPING JACKS'),
(36, '2023-02-12 15:42:22', 'LEVANTAMIENTO DE RODILLAS INTENSO.gif', 1, 1, 2, 'LEVANTAMIENTO DE RODILLAS INTENSO'),
(37, '2023-02-12 15:42:22', 'LEVANTAR RODILLAS 180 GRADOS.gif', 1, 1, 2, 'LEVANTAR RODILLAS 180 GRADOS'),
(38, '2023-02-12 15:42:22', 'LONG JUMP TO BACKWARD.gif', 1, 1, 2, 'LONG JUMP TO BACKWARD'),
(39, '2023-02-12 15:42:22', 'LOW BOX LATERAL RUNNER.gif', 1, 1, 2, 'LOW BOX LATERAL RUNNER'),
(40, '2023-02-12 15:42:22', 'LUNGE ANDANDO CON MANCUERNAS.gif', 1, 1, 2, 'LUNGE ANDANDO CON MANCUERNAS'),
(41, '2023-02-12 15:42:22', 'LUNGE ANDANDO.gif', 1, 1, 2, 'LUNGE ANDANDO'),
(42, '2023-02-12 15:42:22', 'LUNGE LATERAL CON UN BRAZO Y KETTELBELL.gif', 1, 1, 2, 'LUNGE LATERAL CON UN BRAZO Y KETTELBELL'),
(43, '2023-02-12 15:42:22', 'PESO MUERTO CROSSFIT.gif', 1, 1, 2, 'PESO MUERTO CROSSFIT'),
(44, '2023-02-12 15:42:22', 'PESO MUERTO ESPALDA.gif', 1, 1, 2, 'PESO MUERTO ESPALDA'),
(45, '2023-02-12 15:42:22', 'PESO MUERTO.gif', 1, 1, 2, 'PESO MUERTO'),
(46, '2023-02-12 15:42:22', 'PICK UP CON DISC.gif', 1, 1, 2, 'PICK UP CON DISC'),
(47, '2023-02-12 15:42:22', 'PLANCHA ABRIENDO PIERNAS.gif', 1, 1, 2, 'PLANCHA ABRIENDO PIERNAS'),
(48, '2023-02-12 15:42:22', 'POWER CLEAN CON SLAMBALL PELOTA.gif', 1, 1, 2, 'POWER CLEAN CON SLAMBALL PELOTA'),
(49, '2023-02-12 15:42:22', 'POWER CLEAN PELOTA MEDICINAL.gif', 1, 1, 2, 'POWER CLEAN PELOTA MEDICINAL'),
(50, '2023-02-12 15:42:22', 'POWER SKIP.gif', 1, 1, 2, 'POWER SKIP'),
(51, '2023-02-12 15:42:22', 'POWER SNATCH MANCUERNA.gif', 1, 1, 2, 'POWER SNATCH MANCUERNA'),
(52, '2023-02-12 15:42:22', 'POWER SNATCH.gif', 1, 1, 2, 'POWER SNATCH'),
(53, '2023-02-12 15:42:22', 'PRES DE HOMBRO CON BARRA.gif', 1, 1, 2, 'PRES DE HOMBRO CON BARRA'),
(54, '2023-02-12 15:42:22', 'PRES DE HOMBRO CON KETTELBELL.gif', 1, 1, 2, 'PRES DE HOMBRO CON KETTELBELL'),
(55, '2023-02-12 15:42:22', 'PRESS CON POSTURA DE PIE.gif', 1, 1, 2, 'PRESS CON POSTURA DE PIE'),
(56, '2023-02-12 15:42:22', 'PRESS FRANCES CON MANCUERNA.gif', 1, 1, 2, 'PRESS FRANCES CON MANCUERNA'),
(57, '2023-02-12 15:42:22', 'PUNCH SPEED.gif', 1, 1, 2, 'PUNCH SPEED'),
(58, '2023-02-12 15:42:22', 'PUNCH.gif', 1, 1, 2, 'PUNCH'),
(59, '2023-02-12 15:42:22', 'PUSH JERK.gif', 1, 1, 2, 'PUSH JERK'),
(60, '2023-02-12 15:42:22', 'PUSH PRES DE HOMBRO CON BARRA.gif', 1, 1, 2, 'PUSH PRES DE HOMBRO CON BARRA'),
(61, '2023-02-12 15:42:22', 'REMO CON DISCOS.gif', 1, 1, 1, 'REMO CON DISCOS'),
(62, '2023-02-12 15:42:22', 'ROTACION Y SEMI SENTADILLA CON SACO.gif', 1, 1, 1, 'ROTACION Y SEMI SENTADILLA CON SACO'),
(63, '2023-02-12 15:42:22', 'RUSSIAN TWIST CON DISCO.gif', 1, 1, 1, 'RUSSIAN TWIST CON DISCO'),
(64, '2023-02-12 15:42:22', 'SALTAR A LA CUERDA.gif', 1, 1, 1, 'SALTAR A LA CUERDA'),
(65, '2023-02-12 15:42:22', 'SALTAR LA CAJA Y GIRAR.gif', 1, 1, 1, 'SALTAR LA CAJA Y GIRAR'),
(66, '2023-02-12 15:42:22', 'SALTAR SOBRE LA CAJA.gif', 1, 1, 1, 'SALTAR SOBRE LA CAJA'),
(67, '2023-02-12 15:42:22', 'SEMICIRCLE MOUNTAIN CLIMBER.gif', 1, 1, 1, 'SEMICIRCLE MOUNTAIN CLIMBER'),
(68, '2023-02-12 15:42:22', 'SENTADILLA COMPLETA CON BARRA.gif', 1, 1, 1, 'SENTADILLA COMPLETA CON BARRA'),
(69, '2023-02-12 15:42:22', 'SENTADILLA CON CAJON Y SALTO.gif', 1, 1, 1, 'SENTADILLA CON CAJON Y SALTO'),
(70, '2023-02-12 15:42:22', 'SENTADILLA FRONTAL CON BARRA.gif', 1, 1, 1, 'SENTADILLA FRONTAL CON BARRA'),
(71, '2023-02-12 15:42:22', 'SENTADILLA GOLBET CON ROTACION.gif', 1, 1, 1, 'SENTADILLA GOLBET CON ROTACION'),
(72, '2023-02-12 15:42:22', 'SENTADILLA GOLBET.gif', 1, 1, 1, 'SENTADILLA GOLBET'),
(73, '2023-02-12 15:42:22', 'SENTADILLA LIBRE.gif', 1, 1, 1, 'SENTADILLA LIBRE'),
(74, '2023-02-12 15:42:22', 'SENTALLIDA SOBRE EL BANCO.gif', 1, 1, 1, 'SENTALLIDA SOBRE EL BANCO'),
(75, '2023-02-12 15:42:22', 'SENTANDILLA SUMO CON MANCUERNAS.gif', 1, 1, 1, 'SENTANDILLA SUMO CON MANCUERNAS'),
(76, '2023-02-12 15:42:22', 'SHUFFLE SWING KETTLEBELL.gif', 1, 1, 1, 'SHUFFLE SWING KETTLEBELL'),
(77, '2023-02-12 15:42:22', 'SIDE TRAIN CLIMBER.gif', 1, 1, 1, 'SIDE TRAIN CLIMBER'),
(78, '2023-02-12 15:42:22', 'SKATER JUMP.gif', 1, 1, 1, 'SKATER JUMP'),
(79, '2023-02-12 15:42:22', 'SLAM CON MANCUERNA.gif', 1, 1, 1, 'SLAM CON MANCUERNA'),
(80, '2023-02-12 15:42:22', 'SMASH PELOTA MEDICINAL.gif', 1, 1, 1, 'SMASH PELOTA MEDICINAL'),
(81, '2023-02-12 15:42:22', 'SPRINTER SKIP.gif', 1, 1, 1, 'SPRINTER SKIP'),
(82, '2023-02-12 15:42:22', 'SQUAT.gif', 1, 1, 1, 'SQUAT'),
(83, '2023-02-12 15:42:22', 'STEPUP JUMP.gif', 1, 1, 1, 'STEPUP JUMP'),
(84, '2023-02-12 15:42:22', 'SUMO DEADLIFT MANCUERNAS.gif', 1, 1, 1, 'SUMO DEADLIFT MANCUERNAS'),
(85, '2023-02-12 15:42:22', 'SUMO DEADLIFT.gif', 1, 1, 1, 'SUMO DEADLIFT'),
(86, '2023-02-12 15:42:22', 'SUPER SKATER JUMP.gif', 1, 1, 1, 'SUPER SKATER JUMP'),
(87, '2023-02-12 15:42:22', 'SWING CON SACO ARRIBA.gif', 1, 1, 1, 'SWING CON SACO ARRIBA'),
(88, '2023-02-12 15:42:22', 'SWING CON SACO.gif', 1, 1, 1, 'SWING CON SACO'),
(89, '2023-02-12 15:42:22', 'SWING KETTLEBELL.gif', 1, 1, 1, 'SWING KETTLEBELL'),
(90, '2023-02-12 15:42:22', 'SWING UP KETTLEBELL.gif', 1, 1, 1, 'SWING UP KETTLEBELL'),
(91, '2023-02-12 15:42:22', 'THRUSTER.gif', 1, 1, 1, 'THRUSTER'),
(92, '2023-02-12 15:42:22', 'UN BRAZO KETTLEBELL SNATCH.gif', 1, 1, 1, 'UN BRAZO KETTLEBELL SNATCH');

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
(3, 2147483647, 19877366, 1, 80, 'Prueba 3', '2022-10-05', '2022-10-08 23:15:10', NULL, 1),
(4, 12345678, 1249609, 1, 3, '123', '2023-02-12', '2023-02-12 10:53:32', '2023-02-12', 2);

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rutinas_imagenes`
--

CREATE TABLE `rutinas_imagenes` (
  `Id_cons` int(11) NOT NULL,
  `Id_Rutina` int(11) NOT NULL,
  `Id_imagen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(34567, '34567', '25f9e794323b453885f5181f1b624d0b', 'juan lopez', 'Asistente al Gym', 4, 1, 1122334455, ''),
(345678, '345678', '25f9e794323b453885f5181f1b624d0b', 'andrez hernadez lopez', 'Asistente al Gym', 4, 1, 12345678, ''),
(995234, '995234', '25f9e794323b453885f5181f1b624d0b', 'ABADIE	FOSSATTI	MARIA INES', 'Asistente al Gym', 4, 1, 995234, ''),
(1249609, '1249609', '25f9e794323b453885f5181f1b624d0b', 'ABAL	NICOLARI	RAQUEL ELIZABET', 'Asistente al Gym', 4, 1, 1249609, ''),
(1385554, '1385554', '25f9e794323b453885f5181f1b624d0b', 'ABALDE	MARTINEZ	MARÍA ROSARIO', 'Asistente al Gym', 4, 1, 1385554, ''),
(1839948, '1839948', '25f9e794323b453885f5181f1b624d0b', 'Hernando botero Echeverry ', 'Asistente al Gym', 4, 1, 1122334455, ''),
(12345678, '12345678', '25f9e794323b453885f5181f1b624d0b', 'Entrenador Numero Dos', 'Entrenador', 2, 1, 12345678, ''),
(19877366, '19877366', '25f9e794323b453885f5181f1b624d0b', 'Alonso peralta Camargo ', 'Asistente al Gym', 4, 1, 12345678, ''),
(1003633691, '1003633691', '25f9e794323b453885f5181f1b624d0b', 'Sergio Camacha', 'Asistente al Gym', 4, 1, 1122334455, ''),
(1105689328, 'ADMIN', '25f9e794323b453885f5181f1b624d0b', 'Administrador web', 'Administrador Web', 3, 1, 0, ''),
(1108457132, '1108457132', '25f9e794323b453885f5181f1b624d0b', 'cristian chacon ramirez', 'Asistente al Gym', 4, 1, 1108457132, ''),
(1122334455, '1122334455', '25f9e794323b453885f5181f1b624d0b', 'Entrenador Numero Uno', 'Entrenador', 2, 1, 1122334455, ''),
(2147483647, '11056902323', '25f9e794323b453885f5181f1b624d0b', 'Camilo Enrique Aviles', 'Entrenador II', 2, 1, 2147483647, '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asistencia`
--
ALTER TABLE `asistencia`
  ADD PRIMARY KEY (`Id_asistencia`);

--
-- Indices de la tabla `carreras`
--
ALTER TABLE `carreras`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `estados_asignaciones`
--
ALTER TABLE `estados_asignaciones`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `fichas_tecnicas`
--
ALTER TABLE `fichas_tecnicas`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT de la tabla `carreras`
--
ALTER TABLE `carreras`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `estados_asignaciones`
--
ALTER TABLE `estados_asignaciones`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `fichas_tecnicas`
--
ALTER TABLE `fichas_tecnicas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `imagenesrutina`
--
ALTER TABLE `imagenesrutina`
  MODIFY `Id_imagen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT de la tabla `mvto_asignacion`
--
ALTER TABLE `mvto_asignacion`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `Id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `rutinas`
--
ALTER TABLE `rutinas`
  MODIFY `Id_rutina` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rutinas_imagenes`
--
ALTER TABLE `rutinas_imagenes`
  MODIFY `Id_cons` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipos_productos`
--
ALTER TABLE `tipos_productos`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
