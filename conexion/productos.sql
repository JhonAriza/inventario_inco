-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 30-08-2023 a las 00:50:18
-- Versión del servidor: 5.7.33
-- Versión de PHP: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `inventario`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `codigoProducto` int(10) NOT NULL,
  `precioProducto` int(10) NOT NULL,
  `nombreProducto` varchar(10) NOT NULL,
  `cantidadProducto` int(10) NOT NULL,
  `ivaProducto` int(10) NOT NULL,
  `descripcionProducto` varchar(20) NOT NULL,
  `ubicacionProducto` varchar(15) NOT NULL,
  `fechaEntradaProducto` date NOT NULL,
  `codigoProveedor` int(10) NOT NULL,
  `codigoEmpleado` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`codigoProducto`, `precioProducto`, `nombreProducto`, `cantidadProducto`, `ivaProducto`, `descripcionProducto`, `ubicacionProducto`, `fechaEntradaProducto`, `codigoProveedor`, `codigoEmpleado`) VALUES
(1, 1111, 'lulo', 1111, 1111, '1111', '111', '0001-11-11', 1, 1),
(2, 12122, 'PLATANO', 1, 1, '111', '11', '1111-11-11', 1, 1);

--
-- Disparadores `productos`
--
DELIMITER $$
CREATE TRIGGER `NUEVOSCREAR_I` AFTER INSERT ON `productos` FOR EACH ROW INSERT  INTO nuevosproductos(
nombreProducto,
precioProducto,
cantidadProducto
) VALUES (
new.nombreProducto,
new.precioProducto,
new.cantidadProducto
)
$$
DELIMITER ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`codigoProducto`),
  ADD KEY `codigoProveedor` (`codigoProveedor`),
  ADD KEY `codigoEmpleado` (`codigoEmpleado`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `codigoProducto` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`codigoProveedor`) REFERENCES `proveedor` (`codigoProveedor`),
  ADD CONSTRAINT `productos_ibfk_2` FOREIGN KEY (`codigoEmpleado`) REFERENCES `empleado` (`codigoEmpleado`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
