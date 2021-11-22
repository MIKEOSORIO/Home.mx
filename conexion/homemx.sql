-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 21-11-2021 a las 23:33:12
-- Versión del servidor: 5.7.31
-- Versión de PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `homemx`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `adicionales`
--

DROP TABLE IF EXISTS `adicionales`;
CREATE TABLE IF NOT EXISTS `adicionales` (
  `idadicionales` int(11) NOT NULL,
  `toallas` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`idadicionales`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `direccion`
--

DROP TABLE IF EXISTS `direccion`;
CREATE TABLE IF NOT EXISTS `direccion` (
  `iddireccion` int(11) NOT NULL,
  `calle` varchar(60) DEFAULT NULL,
  `colonia` varchar(50) DEFAULT NULL,
  `localidad` varchar(50) DEFAULT NULL,
  `cruzamiento1` varchar(50) DEFAULT NULL,
  `cruzamiento2` varchar(50) DEFAULT NULL,
  `codigopostal` int(11) DEFAULT NULL,
  PRIMARY KEY (`iddireccion`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresainfo`
--

DROP TABLE IF EXISTS `empresainfo`;
CREATE TABLE IF NOT EXISTS `empresainfo` (
  `idempresainfo` int(11) NOT NULL,
  `valores` text,
  `mision` text,
  `vision` text,
  `nosotros` text,
  PRIMARY KEY (`idempresainfo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagenes`
--

DROP TABLE IF EXISTS `imagenes`;
CREATE TABLE IF NOT EXISTS `imagenes` (
  `imagenes` int(11) NOT NULL,
  `imagen` varchar(45) DEFAULT NULL,
  `idpropiedad` int(11) DEFAULT NULL,
  PRIMARY KEY (`imagenes`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensaje`
--

DROP TABLE IF EXISTS `mensaje`;
CREATE TABLE IF NOT EXISTS `mensaje` (
  `idmensaje` int(11) NOT NULL,
  `mensaje` text,
  `remitente` int(11) DEFAULT NULL,
  `destinatario` int(11) DEFAULT NULL,
  `fechaenvio` datetime DEFAULT NULL,
  `tipomensaje` varchar(50) DEFAULT NULL,
  `usuario_idcliente` int(11) NOT NULL,
  PRIMARY KEY (`idmensaje`),
  KEY `usuario_idcliente` (`usuario_idcliente`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `propiedad`
--

DROP TABLE IF EXISTS `propiedad`;
CREATE TABLE IF NOT EXISTS `propiedad` (
  `idpropiedad` int(11) NOT NULL,
  `descripcion` text NOT NULL,
  `numcuartos` int(11) DEFAULT NULL,
  `espaciopersonas` int(11) DEFAULT NULL,
  `precio` double DEFAULT NULL,
  `estrellaspuntuacion` int(11) DEFAULT NULL,
  `fechaalta` date DEFAULT NULL,
  `cantidaddias` int(11) DEFAULT NULL,
  `cantidadnoche` int(11) DEFAULT NULL,
  `iddireccion` int(11) DEFAULT NULL,
  `idadicionales` int(11) DEFAULT NULL,
  `servicios` int(11) DEFAULT NULL,
  `idclientes` int(11) DEFAULT NULL,
  PRIMARY KEY (`idpropiedad`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `propiedad`
--

INSERT INTO `propiedad` (`idpropiedad`, `descripcion`, `numcuartos`, `espaciopersonas`, `precio`, `estrellaspuntuacion`, `fechaalta`, `cantidaddias`, `cantidadnoche`, `iddireccion`, `idadicionales`, `servicios`, `idclientes`) VALUES
(1, 'Habitacion en renta en propiedad ubicada en el Centro Historico de Mérida Yucatán.\r\n\r\nSe renta habitacion amplia, con closet, completamente amueblada. Contrato individual y sin costo extra, sin necesidad de aval.\r\n\r\n-La renta incluye la habitacion, uso de areas comunes (cocina equipada con refrigerador, microondas, etc. sala y comedor completamente amueblados), servicios de internet, agua y colecta de basura. ', 3, 4, 2550, 5, '2021-10-13', 4, 4, 1, 1, 1, 1),
(2, 'cuarto para rentar', 5, 4, 2550, 5, '2021-06-05', 5, 5, 2, 2, 2, 2),
(3, 'departamento en renta', 5, 4, 3500, 5, '2021-06-05', 5, 6, 3, 3, 3, 3),
(4, 'dffdf', 4, 4, 3500, 4, '2021-06-05', 4, 4, 4, 4, 4, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

DROP TABLE IF EXISTS `servicios`;
CREATE TABLE IF NOT EXISTS `servicios` (
  `servicios` int(11) NOT NULL,
  `internet` tinyint(4) NOT NULL,
  `comida` tinyint(4) NOT NULL,
  `limpieza` tinyint(4) NOT NULL,
  `amueblada` tinyint(4) NOT NULL,
  `parking` tinyint(4) NOT NULL,
  `alberca` tinyint(4) NOT NULL,
  `clima` tinyint(4) NOT NULL,
  `terraza` tinyint(4) NOT NULL,
  `lavanderia` tinyint(4) NOT NULL,
  `telefonia` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `idcliente` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(80) DEFAULT NULL,
  `apellidos` varchar(80) DEFAULT NULL,
  `correo` varchar(100) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `clave` varchar(200) NOT NULL,
  `fechaalta` date DEFAULT NULL,
  `iddireccion` int(11) DEFAULT NULL,
  PRIMARY KEY (`idcliente`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idcliente`, `nombre`, `apellidos`, `correo`, `usuario`, `clave`, `fechaalta`, `iddireccion`) VALUES
(1, 'Aaron ', 'Cen', 'aaroncen@gmail.com', 'aaron', 'aaron123', '2021-11-01', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
