 -- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 30-08-2023 a las 01:08:18
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
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `codigoCliente` int(10) NOT NULL,
  `nombreCliente` varchar(20) NOT NULL,
  `apellidoCliente` varchar(20) NOT NULL,
  `telefonoCliente` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`codigoCliente`, `nombreCliente`, `apellidoCliente`, `telefonoCliente`) VALUES
(3, 'jhojan sebatian', 'camargo', 1323212),
(4, 'jose ilber', 'cardoso guzman', 64766767),
(5, 'andrik ', 'clavijo', 9876875),
(7, 'alejandra ', 'diaz torrez', 785675),
(8, 'rafael stiven', 'londoño camacho', 56465464),
(9, 'carol lizeth', 'muñoz muñoz ', 876544),
(10, 'jessica liliana', 'naranjo ballesteros', 56757567),
(11, 'jhon fredy ', 'peñaloza', 47564634),
(12, 'jefferson steve ', 'saavedra ', 67456456),
(13, 'carlos fabian ', 'solano paz', 67456356),
(14, 'jessica carolina ', 'zabala cespedes', 5464453),
(15, 'mathyo', 'bedoya roa', 56376373),
(16, 'adriana geraldine', 'romero sierra', 0),
(17, 'jhon juan', 'benitez duarte', 1321541),
(18, ' david camilo', 'bolivar', 343433),
(19, 'jcarlos sebatian', 'alvarez', 534343),
(20, 'fabian ', 'diaz camargo', 646666),
(21, 'diego', 'mateus', 944444),
(22, 'andrea', 'castañeda', 432332),
(23, 'lina', 'romero bejarano', 4353452),
(24, 'daniela', 'londoño ', 645345),
(25, 'lizeth', 'rodriguez', 87565464),
(26, 'jessica liliana', 'naranjo ballesteros', 56757567),
(27, 'jhon fredy ', 'peñaloza', 47564634),
(28, 'jefferson steve ', 'saavedra ', 67456456),
(29, 'carlos fabian ', 'solano paz', 67456356),
(30, 'jessica carolina ', 'zabala cespedes', 5464453),
(31, 'mathyo', 'bedoya roa', 56376373),
(32, 'adriana geraldine', 'romero sierra', 0),
(33, 'juanito', 'bermunez', 22112111),
(34, 'marco', 'solis', 2147483647),
(35, 'marco antonio', 'solis', 2147483647),
(36, 'fabian david', 'ariza duarte', 2147483647),
(42, 'xx', 'xx', 22),
(111, 'lucas ', 'dalto', 7877878),
(112, 'cesar3333', 'boliva555', 343433),
(154, 'jhon alexander', 'el mejor', 241558),
(212, 'cesar3333', 'boliva555', 343433),
(3244, 'fdsf', 'fsf', 756),
(32445, 'fdsf', 'fsf', 756),
(324456, 'fdsf', 'fsf', 756),
(3244567, 'fdsf', 'fsf', 756);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle`
--

CREATE TABLE `detalle` (
  `codigoDetalle` int(10) NOT NULL,
  `itemDetalle` int(10) NOT NULL,
  `cantidadSolicitadaDetalle` int(10) NOT NULL,
  `cantidadRecibidaDetalle` int(10) NOT NULL,
  `valorTotalDetalle` int(10) NOT NULL,
  `descripcionCompraDetalle` varchar(30) NOT NULL,
  `codigoFactura` int(10) NOT NULL,
  `codigoProducto` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `detalle`
--

INSERT INTO `detalle` (`codigoDetalle`, `itemDetalle`, `cantidadSolicitadaDetalle`, `cantidadRecibidaDetalle`, `valorTotalDetalle`, `descripcionCompraDetalle`, `codigoFactura`, `codigoProducto`) VALUES
(1, 1, 11, 10, 100000, ' descontando 1 producto  falta', 1, 10),
(2, 8, 21, 20, 55000, 'barritas ', 2, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `disparadorfactura`
--

CREATE TABLE `disparadorfactura` (
  `disparadorFactura` int(10) NOT NULL,
  `codigoFactura` int(10) NOT NULL,
  `fechaFactura` date NOT NULL,
  `numeroFactura` int(10) NOT NULL,
  `totalBienesFactura` int(10) NOT NULL,
  `valorTotalFactura` int(10) NOT NULL,
  `codigoCliente` int(10) NOT NULL,
  `codigoEmpleado` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `disparadorfactura`
--

INSERT INTO `disparadorfactura` (`disparadorFactura`, `codigoFactura`, `fechaFactura`, `numeroFactura`, `totalBienesFactura`, `valorTotalFactura`, `codigoCliente`, `codigoEmpleado`) VALUES
(1, 5, '2021-05-13', 1, 12, 200000, 2147483647, 2147483647);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `codigoEmpleado` int(10) NOT NULL,
  `nombreEmpleado` varchar(20) NOT NULL,
  `apellidoEmpleado` varchar(20) NOT NULL,
  `identificacionEmpleado` int(10) NOT NULL,
  `cargoEmpleado` varchar(20) NOT NULL,
  `telefonoEmpleado` int(10) NOT NULL,
  `correoEmpleado` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`codigoEmpleado`, `nombreEmpleado`, `apellidoEmpleado`, `identificacionEmpleado`, `cargoEmpleado`, `telefonoEmpleado`, `correoEmpleado`) VALUES
(1, 'james', 'rodriguez', 45345345, 'bodeguero', 435345, 'james@gmail.com'),
(2, 'leonel  ', 'diaz', 456456, 'bodeguero', 4535345, 'leo@gmailcom'),
(3, 'katerin', 'suarez', 10245634, 'cajero', 435345, 'katerin@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `codigoFactura` int(10) NOT NULL,
  `fechaFactura` date NOT NULL,
  `numeroFactura` int(10) NOT NULL,
  `totalbienesFactura` int(10) NOT NULL,
  `valorTotalFactura` int(10) NOT NULL,
  `codigoCliente` int(10) NOT NULL,
  `codigoEmpleado` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `factura`
--

INSERT INTO `factura` (`codigoFactura`, `fechaFactura`, `numeroFactura`, `totalbienesFactura`, `valorTotalFactura`, `codigoCliente`, `codigoEmpleado`) VALUES
(1, '2021-05-01', 1, 12, 200000, 18, 3),
(2, '2021-05-08', 2, 3, 10000, 6, 1),
(3, '2021-05-13', 1, 12, 200000, 32, 1),
(4, '2021-05-05', 3, 4, 10000, 10, 3),
(5, '2021-05-13', 1, 12, 200000, 1, 1);

--
-- Disparadores `factura`
--
DELIMITER $$
CREATE TRIGGER `ENTRADA` AFTER INSERT ON `factura` FOR EACH ROW INSERT INTO disparadorfactura (
codigoFactura,
fechaFactura,
numeroFactura,
totalbienesFactura,
valorTotalFactura,
codigoCliente,
codigoEmpleado) values (new.codigoFactura,
new.fechaFactura,
new.numeroFactura,
new.totalbienesFactura,
new.valorTotalFactura,now(),now())
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nuevosproductos`
--

CREATE TABLE `nuevosproductos` (
  `precioProducto` int(10) NOT NULL,
  `nombreProducto` varchar(10) NOT NULL,
  `cantidadProducto` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `nuevosproductos`
--

INSERT INTO `nuevosproductos` (`precioProducto`, `nombreProducto`, `cantidadProducto`) VALUES
(12, '0', 1),
(12, '0', 1),
(12, '0', 1),
(12, 'barrilete', 1),
(12, 'arroz', 20),
(1000, 'yuca', 10),
(1000, 'yuca', 10),
(1000, 'pan', 10),
(2000, 'poker', 10),
(2000, 'malta', 10),
(2000, 'mariguan', 10),
(2000, 'arroz', 10),
(2000, 'pana', 10),
(2000, 'mariguan', 10),
(2000, 'aji', 10),
(2000, 'papas', 10),
(2000, 'papas', 10),
(111, 'nom', 11),
(555, 'hhh', 7),
(1200, 'dutrazno', 1),
(1200, 'aguila', 1),
(1200, 'aguila', 1),
(1555, '5545545', 545454),
(444, '44444', 4444),
(1111, 'lulo', 1111),
(12122, 'PLATANO', 1);

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `codigoProveedor` int(10) NOT NULL,
  `nombreProveedor` varchar(20) NOT NULL,
  `identificacionProveedor` int(10) NOT NULL,
  `telefonoProveedor` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`codigoProveedor`, `nombreProveedor`, `identificacionProveedor`, `telefonoProveedor`) VALUES
(1, 'diana', 12313212, 54634653),
(2, 'incauca', 53453453, 5435),
(3, 'margarita', 324324, 56235654),
(4, 'postobon', 4535345, 543534),
(5, 'babaria', 43535345, 543534),
(6, 'ramo', 4353452, 545345),
(7, 'superricas', 6456, 6456456),
(8, 'cocacola', 234423, 4564545),
(9, 'quala', 3432423, 5464564),
(10, 'bimbo', 54654, 456546);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`codigoCliente`);

--
-- Indices de la tabla `detalle`
--
ALTER TABLE `detalle`
  ADD PRIMARY KEY (`codigoDetalle`),
  ADD KEY `codigoFactura` (`codigoFactura`),
  ADD KEY `codigoProducto` (`codigoProducto`);

--
-- Indices de la tabla `disparadorfactura`
--
ALTER TABLE `disparadorfactura`
  ADD PRIMARY KEY (`disparadorFactura`),
  ADD KEY `codigoCliente` (`codigoCliente`),
  ADD KEY `codigoEmpleado` (`codigoEmpleado`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`codigoEmpleado`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`codigoFactura`),
  ADD KEY `codigoCliente` (`codigoCliente`),
  ADD KEY `codigoEmpleado` (`codigoEmpleado`);

--
-- Indices de la tabla `nuevosproductos`
--
ALTER TABLE `nuevosproductos`
  ADD KEY `cantidadProductos` (`cantidadProducto`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`codigoProducto`),
  ADD KEY `codigoProveedor` (`codigoProveedor`),
  ADD KEY `codigoEmpleado` (`codigoEmpleado`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`codigoProveedor`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `codigoCliente` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3244568;

--
-- AUTO_INCREMENT de la tabla `detalle`
--
ALTER TABLE `detalle`
  MODIFY `codigoDetalle` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `disparadorfactura`
--
ALTER TABLE `disparadorfactura`
  MODIFY `disparadorFactura` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `empleado`
--
ALTER TABLE `empleado`
  MODIFY `codigoEmpleado` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `factura`
--
ALTER TABLE `factura`
  MODIFY `codigoFactura` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `codigoProducto` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `codigoProveedor` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
