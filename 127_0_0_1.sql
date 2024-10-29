-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-10-2024 a las 17:11:08
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `backend`
--
CREATE DATABASE IF NOT EXISTS `backend` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `backend`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `id_p` int(10) NOT NULL,
  `nombre_p` varchar(20) NOT NULL,
  `apellido_p` varchar(20) NOT NULL,
  `id_tp_p` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`id_p`, `nombre_p`, `apellido_p`, `id_tp_p`) VALUES
(1, 'carlos', 'pradera', 1),
(2, 'juan', 'toro', 1),
(3, 'pedro', 'torres', 1),
(4, 'teresa', 'pradera', 2),
(5, 'teresa', 'sanchez', 2),
(6, 'alosnos', 'acosta', 2),
(7, 'carlos', 'pradera', 3),
(8, 'anderson', 'jujutso', 3),
(9, 'goyo', 'tupapi', 3),
(10, 'sharon', 'gonzales', 4),
(11, 'nicolle', 'gonzales', 4),
(12, 'natalia', 'saledo', 4),
(13, 'maria', 'saledo', 5),
(14, 'maria', 'catalan', 5),
(15, 'teresa', 'catalan', 5),
(16, 'nicolle', 'parada', 6),
(17, 'andres', 'parada', 6),
(18, 'arles', 'palermo', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_perosonas`
--

CREATE TABLE `tipo_perosonas` (
  `id_tp` int(10) NOT NULL,
  `nombre_tp` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_perosonas`
--

INSERT INTO `tipo_perosonas` (`id_tp`, `nombre_tp`) VALUES
(1, 'Administrativo'),
(2, 'Rector'),
(3, 'Docente'),
(4, 'Estudiante'),
(5, 'conductor'),
(6, 'seguridad');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`id_p`),
  ADD KEY `id_tp_p_fk` (`id_tp_p`);

--
-- Indices de la tabla `tipo_perosonas`
--
ALTER TABLE `tipo_perosonas`
  ADD PRIMARY KEY (`id_tp`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `id_p` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `tipo_perosonas`
--
ALTER TABLE `tipo_perosonas`
  MODIFY `id_tp` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `persona`
--
ALTER TABLE `persona`
  ADD CONSTRAINT `id_tp_p_fk` FOREIGN KEY (`id_tp_p`) REFERENCES `tipo_perosonas` (`id_tp`);
--
-- Base de datos: `backend-arlex`
--
CREATE DATABASE IF NOT EXISTS `backend-arlex` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `backend-arlex`;
--
-- Base de datos: `bdestdie`
--
CREATE DATABASE IF NOT EXISTS `bdestdie` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bdestdie`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `analisisderiesgo`
--

CREATE TABLE `analisisderiesgo` (
  `idanalisis` int(11) NOT NULL,
  `listaclinton` varchar(20) DEFAULT NULL,
  `centralesderiesgo` varchar(20) DEFAULT NULL,
  `certificado` varchar(20) DEFAULT NULL,
  `inmuebles` int(11) DEFAULT NULL,
  `pagos` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `avaluos`
--

CREATE TABLE `avaluos` (
  `idavaluo` int(11) NOT NULL,
  `fecha` varchar(20) DEFAULT NULL,
  `valor` varchar(20) DEFAULT NULL,
  `descripcion` varchar(20) DEFAULT NULL,
  `inmueble` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `citas`
--

CREATE TABLE `citas` (
  `idcita` int(11) NOT NULL,
  `fecha` varchar(20) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `inmueble` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `idcliente` int(11) NOT NULL,
  `nombre` varchar(20) DEFAULT NULL,
  `tipocliente` int(11) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`idcliente`, `nombre`, `tipocliente`, `telefono`) VALUES
(8, 'Karoll Valeria', 1, '3506136549'),
(9, 'Juanito Alimaña', 1, '3173053066');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `idempleado` int(11) NOT NULL,
  `nombre` varchar(20) DEFAULT NULL,
  `tipoempleado` int(11) DEFAULT NULL,
  `oficina` varchar(20) DEFAULT NULL,
  `correo` varchar(20) DEFAULT NULL,
  `comisiones` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inmueble`
--

CREATE TABLE `inmueble` (
  `idinmueble` int(11) NOT NULL,
  `direccion` varchar(20) DEFAULT NULL,
  `tipoinmueble` int(11) DEFAULT NULL,
  `descripcion` varchar(500) DEFAULT NULL,
  `propietario` varchar(20) DEFAULT NULL,
  `foto` varchar(20) DEFAULT NULL,
  `valor` varchar(50) DEFAULT NULL,
  `comercial` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `inmueble`
--

INSERT INTO `inmueble` (`idinmueble`, `direccion`, `tipoinmueble`, `descripcion`, `propietario`, `foto`, `valor`, `comercial`) VALUES
(5, 'direccioncasa1', 1, 'Maravilloso Apartamento Exterior, Hermosa Vista Panoramica, Excelente Iluminacion Natural, 8vo Nivel, Lindas Zonas Sociales, Ascensor, Garaje Cubierto, Buena Ubicacion en Sector Estrategico, cerca a Fundacion Cardio Infantil', 'Joseph', 'assets/casa 1.png', '$298.000.000', 'Pedro'),
(6, 'direccioncasa2', 1, 'lujoso y hermoso apartamento como nuevo, en la mejor zona de la ciudad, barrio y edificio exclusivo, en un área 85 metros muy bien distribuida encontramos una cocina abierta, con electrodomésticos funcionales, una barra americana muy útil y diferente, que se integra con un espacio de sala comedor agradable, iluminada y con ventilación natural y mucho mas.', 'Esteban', 'assets/casa 2.png', '$ 740.000.000', 'Pedro'),
(7, 'direccioncasa3', 1, 'apartamento completamente amueblado ubicado en el poblado en la transversal superior cerca al complejo de la superior y al centro comercial el tesoro.', 'Diego', 'assets/casa 3.png', '$ 810.000.000', 'Pedro'),
(8, 'direccioncasa4', 1, 'Casa que respira naturaleza, solo tiene un vecino y lo separa el jardín, colinde con el club ecuestre de la policía. Se encuentra en un conjunto residencial con un estilo muy campestre (Delmonte 2) Área privada de 150 mt2, y un jardín de más de 100 mt2. Es una casa de 3 pisos así', 'Stiven', 'assets/casa 4.png', '$ 950.000.000', 'Pedro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagos`
--

CREATE TABLE `pagos` (
  `idpagos` int(11) NOT NULL,
  `tipopagos` int(11) DEFAULT NULL,
  `consignacion` varchar(20) DEFAULT NULL,
  `descripcion` varchar(20) DEFAULT NULL,
  `clientes` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipocliente`
--

CREATE TABLE `tipocliente` (
  `idtipocliente` int(11) NOT NULL,
  `descripcion` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipocliente`
--

INSERT INTO `tipocliente` (`idtipocliente`, `descripcion`) VALUES
(1, 'Comercial'),
(2, 'Administrador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoempleados`
--

CREATE TABLE `tipoempleados` (
  `idtipoempleados` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoinmueble`
--

CREATE TABLE `tipoinmueble` (
  `idtipoinmueble` int(11) NOT NULL,
  `descripcioninmueble` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipoinmueble`
--

INSERT INTO `tipoinmueble` (`idtipoinmueble`, `descripcioninmueble`) VALUES
(1, 'Casa'),
(2, 'Apartamento');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipopagos`
--

CREATE TABLE `tipopagos` (
  `idtipos` int(11) NOT NULL,
  `tipopago` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `analisisderiesgo`
--
ALTER TABLE `analisisderiesgo`
  ADD PRIMARY KEY (`idanalisis`),
  ADD KEY `Inmuebles` (`inmuebles`),
  ADD KEY `Pagos` (`pagos`);

--
-- Indices de la tabla `avaluos`
--
ALTER TABLE `avaluos`
  ADD PRIMARY KEY (`idavaluo`),
  ADD KEY `Inmueble` (`inmueble`);

--
-- Indices de la tabla `citas`
--
ALTER TABLE `citas`
  ADD PRIMARY KEY (`idcita`),
  ADD KEY `Inmueble` (`inmueble`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`idcliente`),
  ADD KEY `TipoCliente` (`tipocliente`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`idempleado`),
  ADD KEY `TipoEmpleado` (`tipoempleado`);

--
-- Indices de la tabla `inmueble`
--
ALTER TABLE `inmueble`
  ADD PRIMARY KEY (`idinmueble`),
  ADD KEY `TipoInmueble` (`tipoinmueble`);

--
-- Indices de la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD PRIMARY KEY (`idpagos`),
  ADD KEY `TipoPagos` (`tipopagos`),
  ADD KEY `Clientes` (`clientes`);

--
-- Indices de la tabla `tipocliente`
--
ALTER TABLE `tipocliente`
  ADD PRIMARY KEY (`idtipocliente`);

--
-- Indices de la tabla `tipoempleados`
--
ALTER TABLE `tipoempleados`
  ADD PRIMARY KEY (`idtipoempleados`);

--
-- Indices de la tabla `tipoinmueble`
--
ALTER TABLE `tipoinmueble`
  ADD PRIMARY KEY (`idtipoinmueble`);

--
-- Indices de la tabla `tipopagos`
--
ALTER TABLE `tipopagos`
  ADD PRIMARY KEY (`idtipos`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `analisisderiesgo`
--
ALTER TABLE `analisisderiesgo`
  MODIFY `idanalisis` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `citas`
--
ALTER TABLE `citas`
  MODIFY `idcita` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `idcliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `idempleado` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `inmueble`
--
ALTER TABLE `inmueble`
  MODIFY `idinmueble` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `pagos`
--
ALTER TABLE `pagos`
  MODIFY `idpagos` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipocliente`
--
ALTER TABLE `tipocliente`
  MODIFY `idtipocliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tipoempleados`
--
ALTER TABLE `tipoempleados`
  MODIFY `idtipoempleados` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipoinmueble`
--
ALTER TABLE `tipoinmueble`
  MODIFY `idtipoinmueble` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT de la tabla `tipopagos`
--
ALTER TABLE `tipopagos`
  MODIFY `idtipos` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `analisisderiesgo`
--
ALTER TABLE `analisisderiesgo`
  ADD CONSTRAINT `analisisderiesgo_ibfk_1` FOREIGN KEY (`inmuebles`) REFERENCES `inmueble` (`idinmueble`),
  ADD CONSTRAINT `analisisderiesgo_ibfk_2` FOREIGN KEY (`pagos`) REFERENCES `pagos` (`idpagos`);

--
-- Filtros para la tabla `avaluos`
--
ALTER TABLE `avaluos`
  ADD CONSTRAINT `avaluos_ibfk_1` FOREIGN KEY (`inmueble`) REFERENCES `inmueble` (`idinmueble`);

--
-- Filtros para la tabla `citas`
--
ALTER TABLE `citas`
  ADD CONSTRAINT `citas_ibfk_1` FOREIGN KEY (`inmueble`) REFERENCES `inmueble` (`idinmueble`);

--
-- Filtros para la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `Relacion1` FOREIGN KEY (`tipocliente`) REFERENCES `tipocliente` (`idtipocliente`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD CONSTRAINT `empleados_ibfk_1` FOREIGN KEY (`tipoempleado`) REFERENCES `tipoempleados` (`idtipoempleados`);

--
-- Filtros para la tabla `inmueble`
--
ALTER TABLE `inmueble`
  ADD CONSTRAINT `inmueble_ibfk_1` FOREIGN KEY (`tipoinmueble`) REFERENCES `tipoinmueble` (`idtipoinmueble`);

--
-- Filtros para la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD CONSTRAINT `pagos_ibfk_1` FOREIGN KEY (`tipopagos`) REFERENCES `tipopagos` (`idtipos`),
  ADD CONSTRAINT `pagos_ibfk_2` FOREIGN KEY (`clientes`) REFERENCES `clientes` (`idcliente`);
--
-- Base de datos: `bdsamnim`
--
CREATE DATABASE IF NOT EXISTS `bdsamnim` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bdsamnim`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alquileres`
--

CREATE TABLE `alquileres` (
  `id_alquiler` int(6) UNSIGNED NOT NULL,
  `inmueble_id` int(6) UNSIGNED NOT NULL,
  `persona_id` int(6) UNSIGNED NOT NULL,
  `precio_alquiler` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `alquileres`
--

INSERT INTO `alquileres` (`id_alquiler`, `inmueble_id`, `persona_id`, `precio_alquiler`) VALUES
(1, 2, 7, 876.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `analisis_riesgos`
--

CREATE TABLE `analisis_riesgos` (
  `id_analisis` int(6) UNSIGNED NOT NULL,
  `inmueble_id` int(6) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `analisis_riesgos`
--

INSERT INTO `analisis_riesgos` (`id_analisis`, `inmueble_id`) VALUES
(2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `avaluos`
--

CREATE TABLE `avaluos` (
  `id_avaluo` int(6) UNSIGNED NOT NULL,
  `persona_id` int(6) UNSIGNED NOT NULL,
  `inmueble_id` int(6) UNSIGNED NOT NULL,
  `valor_inmueble` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `avaluos`
--

INSERT INTO `avaluos` (`id_avaluo`, `persona_id`, `inmueble_id`, `valor_inmueble`) VALUES
(8, 7, 2, 78854.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `citas`
--

CREATE TABLE `citas` (
  `id_cita` int(6) UNSIGNED NOT NULL,
  `persona_id` int(6) UNSIGNED NOT NULL,
  `inmueble_id` int(6) UNSIGNED NOT NULL,
  `fecha_cita` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `citas`
--

INSERT INTO `citas` (`id_cita`, `persona_id`, `inmueble_id`, `fecha_cita`) VALUES
(54, 7, 2, '2024-06-10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `id_compra` int(6) UNSIGNED NOT NULL,
  `inmueble_id` int(6) UNSIGNED NOT NULL,
  `persona_id` int(6) UNSIGNED NOT NULL,
  `precio_compra` decimal(10,2) NOT NULL,
  `fecha_compra` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `compras`
--

INSERT INTO `compras` (`id_compra`, `inmueble_id`, `persona_id`, `precio_compra`, `fecha_compra`) VALUES
(77, 2, 7, 55.00, '2024-06-30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuentas_de_cobro`
--

CREATE TABLE `cuentas_de_cobro` (
  `id_cuenta` int(6) UNSIGNED NOT NULL,
  `alquiler_id` int(6) UNSIGNED NOT NULL,
  `fecha_cuenta` date NOT NULL,
  `valor` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cuentas_de_cobro`
--

INSERT INTO `cuentas_de_cobro` (`id_cuenta`, `alquiler_id`, `fecha_cuenta`, `valor`) VALUES
(22, 1, '2024-06-02', 2321.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inmuebles`
--

CREATE TABLE `inmuebles` (
  `id_inmueble` int(6) UNSIGNED NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `tipo` int(6) UNSIGNED NOT NULL,
  `precio` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `inmuebles`
--

INSERT INTO `inmuebles` (`id_inmueble`, `direccion`, `tipo`, `precio`) VALUES
(2, 'cali', 1, 4.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE `personas` (
  `id_persona` int(6) UNSIGNED NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `tipo` int(6) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`id_persona`, `nombre`, `apellido`, `email`, `tipo`) VALUES
(7, 'lo', 'flo', 'kook@', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas_alquiler`
--

CREATE TABLE `personas_alquiler` (
  `id_pa` int(6) UNSIGNED NOT NULL,
  `alquiler_id` int(6) UNSIGNED NOT NULL,
  `persona_id` int(6) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `personas_alquiler`
--

INSERT INTO `personas_alquiler` (`id_pa`, `alquiler_id`, `persona_id`) VALUES
(11, 1, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas_compra`
--

CREATE TABLE `personas_compra` (
  `id_pc` int(6) UNSIGNED NOT NULL,
  `compra_id` int(6) UNSIGNED NOT NULL,
  `persona_id` int(6) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `personas_compra`
--

INSERT INTO `personas_compra` (`id_pc`, `compra_id`, `persona_id`) VALUES
(33, 77, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas_venta`
--

CREATE TABLE `personas_venta` (
  `id_pv` int(6) UNSIGNED NOT NULL,
  `venta_id` int(6) UNSIGNED NOT NULL,
  `persona_id` int(6) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `personas_venta`
--

INSERT INTO `personas_venta` (`id_pv`, `venta_id`, `persona_id`) VALUES
(334, 33, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursales`
--

CREATE TABLE `sucursales` (
  `id_sucursal` int(6) UNSIGNED NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `ubicacion_geografica` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sucursales`
--

INSERT INTO `sucursales` (`id_sucursal`, `nombre`, `ubicacion_geografica`) VALUES
(1, 'la 80', 'bogota');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_inmueble`
--

CREATE TABLE `tipo_inmueble` (
  `id_ti` int(6) UNSIGNED NOT NULL,
  `descripcion_inmueble` varchar(255) NOT NULL,
  `estado` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_inmueble`
--

INSERT INTO `tipo_inmueble` (`id_ti`, `descripcion_inmueble`, `estado`) VALUES
(1, 'casa', 'vendida');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_persona`
--

CREATE TABLE `tipo_persona` (
  `id_tp` int(6) UNSIGNED NOT NULL,
  `descripcion_persona` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_persona`
--

INSERT INTO `tipo_persona` (`id_tp`, `descripcion_persona`) VALUES
(1, 'cliente'),
(2, 'propietario'),
(3, 'secretaria'),
(4, 'inquilino'),
(6, 'deudor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id_ventas` int(6) UNSIGNED NOT NULL,
  `inmueble_id` int(6) UNSIGNED NOT NULL,
  `persona_id` int(6) UNSIGNED NOT NULL,
  `precio_venta` decimal(10,2) NOT NULL,
  `fecha_venta` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id_ventas`, `inmueble_id`, `persona_id`, `precio_venta`, `fecha_venta`) VALUES
(33, 2, 7, 656.00, '2024-05-07');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alquileres`
--
ALTER TABLE `alquileres`
  ADD PRIMARY KEY (`id_alquiler`),
  ADD KEY `inmueble_id` (`inmueble_id`),
  ADD KEY `persona_id` (`persona_id`);

--
-- Indices de la tabla `analisis_riesgos`
--
ALTER TABLE `analisis_riesgos`
  ADD PRIMARY KEY (`id_analisis`),
  ADD KEY `inmueble_id` (`inmueble_id`);

--
-- Indices de la tabla `avaluos`
--
ALTER TABLE `avaluos`
  ADD PRIMARY KEY (`id_avaluo`),
  ADD KEY `persona_id` (`persona_id`),
  ADD KEY `inmueble_id` (`inmueble_id`);

--
-- Indices de la tabla `citas`
--
ALTER TABLE `citas`
  ADD PRIMARY KEY (`id_cita`),
  ADD KEY `persona_id` (`persona_id`),
  ADD KEY `inmueble_id` (`inmueble_id`);

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`id_compra`),
  ADD KEY `inmueble_id` (`inmueble_id`),
  ADD KEY `persona_id` (`persona_id`);

--
-- Indices de la tabla `cuentas_de_cobro`
--
ALTER TABLE `cuentas_de_cobro`
  ADD PRIMARY KEY (`id_cuenta`),
  ADD KEY `alquiler_id` (`alquiler_id`);

--
-- Indices de la tabla `inmuebles`
--
ALTER TABLE `inmuebles`
  ADD PRIMARY KEY (`id_inmueble`),
  ADD KEY `tipo` (`tipo`);

--
-- Indices de la tabla `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`id_persona`),
  ADD KEY `tipo` (`tipo`);

--
-- Indices de la tabla `personas_alquiler`
--
ALTER TABLE `personas_alquiler`
  ADD PRIMARY KEY (`id_pa`),
  ADD KEY `alquiler_id` (`alquiler_id`),
  ADD KEY `persona_id` (`persona_id`);

--
-- Indices de la tabla `personas_compra`
--
ALTER TABLE `personas_compra`
  ADD PRIMARY KEY (`id_pc`),
  ADD KEY `compra_id` (`compra_id`),
  ADD KEY `persona_id` (`persona_id`);

--
-- Indices de la tabla `personas_venta`
--
ALTER TABLE `personas_venta`
  ADD PRIMARY KEY (`id_pv`),
  ADD KEY `venta_id` (`venta_id`),
  ADD KEY `persona_id` (`persona_id`);

--
-- Indices de la tabla `sucursales`
--
ALTER TABLE `sucursales`
  ADD PRIMARY KEY (`id_sucursal`);

--
-- Indices de la tabla `tipo_inmueble`
--
ALTER TABLE `tipo_inmueble`
  ADD PRIMARY KEY (`id_ti`);

--
-- Indices de la tabla `tipo_persona`
--
ALTER TABLE `tipo_persona`
  ADD PRIMARY KEY (`id_tp`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id_ventas`),
  ADD KEY `inmueble_id` (`inmueble_id`),
  ADD KEY `persona_id` (`persona_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alquileres`
--
ALTER TABLE `alquileres`
  MODIFY `id_alquiler` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `analisis_riesgos`
--
ALTER TABLE `analisis_riesgos`
  MODIFY `id_analisis` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `avaluos`
--
ALTER TABLE `avaluos`
  MODIFY `id_avaluo` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `citas`
--
ALTER TABLE `citas`
  MODIFY `id_cita` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `id_compra` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT de la tabla `cuentas_de_cobro`
--
ALTER TABLE `cuentas_de_cobro`
  MODIFY `id_cuenta` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `inmuebles`
--
ALTER TABLE `inmuebles`
  MODIFY `id_inmueble` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `personas`
--
ALTER TABLE `personas`
  MODIFY `id_persona` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `personas_alquiler`
--
ALTER TABLE `personas_alquiler`
  MODIFY `id_pa` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `personas_compra`
--
ALTER TABLE `personas_compra`
  MODIFY `id_pc` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `personas_venta`
--
ALTER TABLE `personas_venta`
  MODIFY `id_pv` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=335;

--
-- AUTO_INCREMENT de la tabla `sucursales`
--
ALTER TABLE `sucursales`
  MODIFY `id_sucursal` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tipo_inmueble`
--
ALTER TABLE `tipo_inmueble`
  MODIFY `id_ti` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tipo_persona`
--
ALTER TABLE `tipo_persona`
  MODIFY `id_tp` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id_ventas` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alquileres`
--
ALTER TABLE `alquileres`
  ADD CONSTRAINT `alquileres_ibfk_1` FOREIGN KEY (`inmueble_id`) REFERENCES `inmuebles` (`id_inmueble`),
  ADD CONSTRAINT `alquileres_ibfk_2` FOREIGN KEY (`persona_id`) REFERENCES `personas` (`id_persona`);

--
-- Filtros para la tabla `analisis_riesgos`
--
ALTER TABLE `analisis_riesgos`
  ADD CONSTRAINT `analisis_riesgos_ibfk_1` FOREIGN KEY (`inmueble_id`) REFERENCES `inmuebles` (`id_inmueble`);

--
-- Filtros para la tabla `avaluos`
--
ALTER TABLE `avaluos`
  ADD CONSTRAINT `avaluos_ibfk_1` FOREIGN KEY (`persona_id`) REFERENCES `personas` (`id_persona`),
  ADD CONSTRAINT `avaluos_ibfk_2` FOREIGN KEY (`inmueble_id`) REFERENCES `inmuebles` (`id_inmueble`);

--
-- Filtros para la tabla `citas`
--
ALTER TABLE `citas`
  ADD CONSTRAINT `citas_ibfk_1` FOREIGN KEY (`persona_id`) REFERENCES `personas` (`id_persona`),
  ADD CONSTRAINT `citas_ibfk_2` FOREIGN KEY (`inmueble_id`) REFERENCES `inmuebles` (`id_inmueble`);

--
-- Filtros para la tabla `compras`
--
ALTER TABLE `compras`
  ADD CONSTRAINT `compras_ibfk_1` FOREIGN KEY (`inmueble_id`) REFERENCES `inmuebles` (`id_inmueble`),
  ADD CONSTRAINT `compras_ibfk_2` FOREIGN KEY (`persona_id`) REFERENCES `personas` (`id_persona`);

--
-- Filtros para la tabla `cuentas_de_cobro`
--
ALTER TABLE `cuentas_de_cobro`
  ADD CONSTRAINT `cuentas_de_cobro_ibfk_1` FOREIGN KEY (`alquiler_id`) REFERENCES `alquileres` (`id_alquiler`);

--
-- Filtros para la tabla `inmuebles`
--
ALTER TABLE `inmuebles`
  ADD CONSTRAINT `inmuebles_ibfk_1` FOREIGN KEY (`tipo`) REFERENCES `tipo_inmueble` (`id_ti`);

--
-- Filtros para la tabla `personas`
--
ALTER TABLE `personas`
  ADD CONSTRAINT `personas_ibfk_1` FOREIGN KEY (`tipo`) REFERENCES `tipo_persona` (`id_tp`);

--
-- Filtros para la tabla `personas_alquiler`
--
ALTER TABLE `personas_alquiler`
  ADD CONSTRAINT `personas_alquiler_ibfk_1` FOREIGN KEY (`alquiler_id`) REFERENCES `alquileres` (`id_alquiler`),
  ADD CONSTRAINT `personas_alquiler_ibfk_2` FOREIGN KEY (`persona_id`) REFERENCES `personas` (`id_persona`);

--
-- Filtros para la tabla `personas_compra`
--
ALTER TABLE `personas_compra`
  ADD CONSTRAINT `personas_compra_ibfk_1` FOREIGN KEY (`compra_id`) REFERENCES `compras` (`id_compra`),
  ADD CONSTRAINT `personas_compra_ibfk_2` FOREIGN KEY (`persona_id`) REFERENCES `personas` (`id_persona`);

--
-- Filtros para la tabla `personas_venta`
--
ALTER TABLE `personas_venta`
  ADD CONSTRAINT `personas_venta_ibfk_1` FOREIGN KEY (`venta_id`) REFERENCES `ventas` (`id_ventas`),
  ADD CONSTRAINT `personas_venta_ibfk_2` FOREIGN KEY (`persona_id`) REFERENCES `personas` (`id_persona`);

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`inmueble_id`) REFERENCES `inmuebles` (`id_inmueble`),
  ADD CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`persona_id`) REFERENCES `personas` (`id_persona`);
--
-- Base de datos: `campamento`
--
CREATE DATABASE IF NOT EXISTS `campamento` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `campamento`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividad`
--

CREATE TABLE `actividad` (
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `actividad`
--

INSERT INTO `actividad` (`nombre`) VALUES
('Artesanía'),
('Música'),
('Natación'),
('Pintura'),
('Senderismo'),
('Teatro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `casa`
--

CREATE TABLE `casa` (
  `nombre` varchar(50) NOT NULL,
  `calle` varchar(50) NOT NULL,
  `codigo_postal` int(11) NOT NULL,
  `cupos` int(11) DEFAULT NULL,
  `comarca` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `casa`
--

INSERT INTO `casa` (`nombre`, `calle`, `codigo_postal`, `cupos`, `comarca`) VALUES
('Casa Colonia 1', 'Carrer de la Pau', 30, 100, 1),
('Casa Colonia 10', 'Carrer del Sol', 90, 160, 5),
('Casa Colonia 11', '545', 1415, 20, 1),
('Casa Colonia 12', '58', 12120, 10, 1),
('Casa Colonia 13', '56', 101110, 23, 2),
('Casa Colonia 2', 'Carrer de l\'Amistat', 13, 80, 1),
('Casa Colonia 3', 'Carrer de la Llibertat', 89, 120, 2),
('Casa Colonia 4', 'Carrer del Progrés', 50, 150, 2),
('Casa Colonia 5', 'Carrer de la Marina', 70, 90, 3),
('Casa Colonia 6', 'Carrer del Mar', 88, 70, 3),
('Casa Colonia 7', 'Carrer de les Flors', 83, 110, 4),
('Casa Colonia 8', 'Carrer dels Pins', 92, 130, 4),
('Casa Colonia 9', 'Carrer de Sant Jordi', 20, 140, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `casa_actividades`
--

CREATE TABLE `casa_actividades` (
  `nombre_actividad` varchar(50) DEFAULT NULL,
  `nombre_casa` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `casa_actividades`
--

INSERT INTO `casa_actividades` (`nombre_actividad`, `nombre_casa`) VALUES
('Natación', 'Casa Colonia 1'),
('Pintura', 'Casa Colonia 1'),
('Música', 'Casa Colonia 2'),
('Senderismo', 'Casa Colonia 2'),
('Teatro', 'Casa Colonia 3'),
('Artesanía', 'Casa Colonia 3'),
('Natación', 'Casa Colonia 4'),
('Música', 'Casa Colonia 4'),
('Pintura', 'Casa Colonia 5'),
('Senderismo', 'Casa Colonia 5'),
('Teatro', 'Casa Colonia 6'),
('Artesanía', 'Casa Colonia 6'),
('Natación', 'Casa Colonia 7'),
('Pintura', 'Casa Colonia 7'),
('Música', 'Casa Colonia 8'),
('Senderismo', 'Casa Colonia 8'),
('Teatro', 'Casa Colonia 9'),
('Artesanía', 'Casa Colonia 9'),
('Natación', 'Casa Colonia 10'),
('Música', 'Casa Colonia 10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comarca`
--

CREATE TABLE `comarca` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `numero_habitantes` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `comarca`
--

INSERT INTO `comarca` (`id`, `nombre`, `numero_habitantes`) VALUES
(1, 'Comarca A', 50),
(2, 'Comarca B', 30),
(3, 'Comarca C', 45),
(4, 'Comarca D', 60),
(5, 'Comarca E', 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evaluacion`
--

CREATE TABLE `evaluacion` (
  `puntuacion` int(11) DEFAULT NULL,
  `nombre_actividad` varchar(50) DEFAULT NULL,
  `id_niño` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `evaluacion`
--

INSERT INTO `evaluacion` (`puntuacion`, `nombre_actividad`, `id_niño`) VALUES
(10, 'Artesanía', 1),
(9, 'Música', 2),
(8, 'Natación', 3),
(6, 'Senderismo', 4),
(8, 'Teatro', 5),
(8, 'Natación', 1),
(7, 'Pintura', 2),
(9, 'Música', 3),
(6, 'Senderismo', 4),
(8, 'Teatro', 5),
(7, 'Natación', 6),
(9, 'Pintura', 7),
(8, 'Música', 8),
(6, 'Senderismo', 9),
(7, 'Teatro', 10),
(9, 'Natación', 11),
(8, 'Pintura', 12),
(6, 'Música', 13),
(7, 'Senderismo', 14),
(9, 'Teatro', 15),
(8, 'Natación', 16),
(7, 'Pintura', 17),
(6, 'Música', 18),
(9, 'Senderismo', 19),
(8, 'Teatro', 20),
(7, 'Natación', 1),
(6, 'Pintura', 2),
(9, 'Música', 3),
(8, 'Senderismo', 4),
(7, 'Teatro', 5),
(9, 'Natación', 6),
(8, 'Pintura', 7),
(6, 'Música', 8),
(7, 'Senderismo', 9),
(9, 'Teatro', 10),
(8, 'Teatro', NULL),
(6, 'Teatro', NULL),
(2, 'Artesanía', 29),
(4, 'Música', 28),
(3, 'Artesanía', 23),
(2, 'Música', 17),
(1, 'Natación', 26),
(3, 'Senderismo', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habitacion`
--

CREATE TABLE `habitacion` (
  `code` varchar(50) DEFAULT NULL,
  `casa` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `habitacion`
--

INSERT INTO `habitacion` (`code`, `casa`) VALUES
('A1', 'Casa Colonia 1'),
('A2', 'Casa Colonia 1'),
('A3', 'Casa Colonia 1'),
('A4', 'Casa Colonia 1'),
('A5', 'Casa Colonia 1'),
('A1', 'Casa Colonia 2'),
('A2', 'Casa Colonia 2'),
('A3', 'Casa Colonia 2'),
('A4', 'Casa Colonia 2'),
('A5', 'Casa Colonia 2'),
('A1', 'Casa Colonia 3'),
('A2', 'Casa Colonia 3'),
('A3', 'Casa Colonia 3'),
('A4', 'Casa Colonia 3'),
('A5', 'Casa Colonia 3'),
('A1', 'Casa Colonia 4'),
('A2', 'Casa Colonia 4'),
('A3', 'Casa Colonia 4'),
('A4', 'Casa Colonia 4'),
('A5', 'Casa Colonia 4'),
('A1', 'Casa Colonia 5'),
('A2', 'Casa Colonia 5'),
('A3', 'Casa Colonia 5'),
('A4', 'Casa Colonia 5'),
('A5', 'Casa Colonia 5'),
('A1', 'Casa Colonia 6'),
('A2', 'Casa Colonia 6'),
('A3', 'Casa Colonia 6'),
('A4', 'Casa Colonia 6'),
('A5', 'Casa Colonia 6'),
('A1', 'Casa Colonia 7'),
('A2', 'Casa Colonia 7'),
('A3', 'Casa Colonia 7'),
('A4', 'Casa Colonia 7'),
('A5', 'Casa Colonia 7'),
('A1', 'Casa Colonia 8'),
('A2', 'Casa Colonia 8'),
('A3', 'Casa Colonia 8'),
('A4', 'Casa Colonia 8'),
('A5', 'Casa Colonia 8'),
('A1', 'Casa Colonia 9'),
('A2', 'Casa Colonia 9'),
('A3', 'Casa Colonia 9'),
('A4', 'Casa Colonia 9'),
('A5', 'Casa Colonia 9'),
('A1', 'Casa Colonia 10'),
('A2', 'Casa Colonia 10'),
('A3', 'Casa Colonia 10'),
('A4', 'Casa Colonia 10'),
('A5', 'Casa Colonia 10'),
('A6', 'Casa Colonia 1'),
('A7', 'Casa Colonia 1'),
('A8', 'Casa Colonia 1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `niño`
--

CREATE TABLE `niño` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `telefono_padre1` int(11) DEFAULT NULL,
  `telefono_padre2` int(11) DEFAULT NULL,
  `nombre_casa` varchar(50) DEFAULT NULL,
  `comarca_residencia` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `niño`
--

INSERT INTO `niño` (`id`, `nombre`, `telefono_padre1`, `telefono_padre2`, `nombre_casa`, `comarca_residencia`) VALUES
(1, 'Alejandro Martínez', 600123001, 600123002, 'Casa Colonia 1', 1),
(2, 'Lucía Gómez', 600123003, 600123004, 'Casa Colonia 1', 1),
(3, 'Marcos Fernández', 600123005, 600123006, 'Casa Colonia 2', 2),
(4, 'Sofía Sánchez', 600123007, 600123008, 'Casa Colonia 2', 2),
(5, 'Daniela López', 600123009, 600123010, 'Casa Colonia 3', 3),
(6, 'Pablo García', 600123011, 600123012, 'Casa Colonia 3', 3),
(7, 'Martina Rodríguez', 600123013, 600123014, 'Casa Colonia 4', 4),
(8, 'Hugo Pérez', 600123015, 600123016, 'Casa Colonia 4', 4),
(9, 'Carla Hernández', 600123017, 600123018, 'Casa Colonia 5', 5),
(10, 'Lucas González', 600123019, 600123020, 'Casa Colonia 5', 5),
(11, 'Elena Torres', 600123021, 600123022, 'Casa Colonia 6', 1),
(12, 'Mario Ruiz', 600123023, 600123024, 'Casa Colonia 6', 1),
(13, 'Adriana Díaz', 600123025, 600123026, 'Casa Colonia 7', 2),
(14, 'Javier Moreno', 600123027, 600123028, 'Casa Colonia 7', 2),
(15, 'Valeria Jiménez', 600123029, 600123030, 'Casa Colonia 8', 3),
(16, 'Mateo Ramos', 600123031, 600123032, 'Casa Colonia 8', 3),
(17, 'Laura Vega', 600123033, 600123034, 'Casa Colonia 9', 4),
(18, 'Dario Castillo', 600123035, 600123036, 'Casa Colonia 9', 4),
(19, 'Nuria Silva', 600123037, 600123038, 'Casa Colonia 10', 5),
(20, 'Tomás Romero', 600123039, 600123040, 'Casa Colonia 10', 5),
(21, 'Alejandro Martínez', 600123001, 600123002, 'Casa Colonia 1', 1),
(22, 'María Rodríguez', 600123003, 600123004, 'Casa Colonia 2', 2),
(23, 'José García', 600123005, 600123006, 'Casa Colonia 3', 1),
(24, 'Ana López', 600123007, 600123008, 'Casa Colonia 3', 2),
(25, 'Carlos Pérez', 600123009, 600123010, 'Casa Colonia 1', 1),
(26, 'Laura Sánchez', 600123011, 600123012, 'Casa Colonia 3', 1),
(27, 'Javier González', 600123013, 600123014, 'Casa Colonia 2', 2),
(28, 'Isabel Martín', 600123015, 600123016, 'Casa Colonia 3', 1),
(29, 'Sergio Ruiz', 600123017, 600123018, 'Casa Colonia 1', 1),
(30, 'Elena Gómez', 600123019, 600123020, 'Casa Colonia 3', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tutor`
--

CREATE TABLE `tutor` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `telefono` int(11) DEFAULT NULL,
  `casa` varchar(50) DEFAULT NULL,
  `id_rol` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tutor`
--

INSERT INTO `tutor` (`id`, `nombre`, `telefono`, `casa`, `id_rol`) VALUES
(1, 'Tutor 1', 123456789, 'Casa Colonia 1', 1),
(2, 'Director 1', 987654321, 'Casa Colonia 1', 2),
(3, 'Tutor 2', 234567890, 'Casa Colonia 2', 1),
(4, 'Director 2', 876543210, 'Casa Colonia 2', 2),
(5, 'Tutor 3', 345678901, 'Casa Colonia 3', 1),
(6, 'Director 3', 765432109, 'Casa Colonia 3', 2),
(7, 'Tutor 4', 456789012, 'Casa Colonia 3', 1),
(8, 'Tutor 5', 567890123, 'Casa Colonia 4', 1),
(9, 'Director 4', 654321098, 'Casa Colonia 5', 2),
(10, 'Tutor 6', 678901234, 'Casa Colonia 5', 1),
(11, 'Director 5', 543210987, 'Casa Colonia 6', 2),
(12, 'Tutor 7', 789012345, 'Casa Colonia 7', 1),
(13, 'Tutor 8', 890123456, 'Casa Colonia 7', 1),
(14, 'Director 6', 432109876, 'Casa Colonia 7', 2),
(15, 'Tutor 9', 901234567, 'Casa Colonia 8', 1),
(16, 'Director 7', 321098765, 'Casa Colonia 8', 2),
(17, 'Tutor 10', 112345678, 'Casa Colonia 9', 1),
(18, 'Director 8', 210987654, 'Casa Colonia 10', 2),
(19, 'Tutor 11', 223456789, 'Casa Colonia 10', 1),
(20, 'Tutor 12', 334567890, 'Casa Colonia 10', 1),
(21, 'Director 9', 109876543, 'Casa Colonia 10', 2),
(22, 'Juan Pérez', 600111222, 'Casa Colonia 1', 1),
(23, 'María Rodríguez', 600333444, 'Casa Colonia 2', 1),
(24, 'Pedro Gómez', 600555666, 'Casa Colonia 3', 1),
(25, 'Ana Martínez', 600777888, 'Casa Colonia 3', 1),
(26, 'José López', 600999000, 'Casa Colonia 1', 1),
(27, 'Sofía García', 600111222, 'Casa Colonia 3', 1),
(28, 'Carlos Sánchez', 600333444, 'Casa Colonia 2', 1),
(29, 'Laura González', 600555666, 'Casa Colonia 3', 1),
(30, 'Javier Fernández', 600777888, 'Casa Colonia 1', 1),
(31, 'Elena Ruiz', 600999000, 'Casa Colonia 3', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tutor_rol`
--

CREATE TABLE `tutor_rol` (
  `id_rol` int(11) NOT NULL,
  `nombre_rol` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tutor_rol`
--

INSERT INTO `tutor_rol` (`id_rol`, `nombre_rol`) VALUES
(1, 'Tutor'),
(2, 'Director');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actividad`
--
ALTER TABLE `actividad`
  ADD PRIMARY KEY (`nombre`);

--
-- Indices de la tabla `casa`
--
ALTER TABLE `casa`
  ADD PRIMARY KEY (`nombre`),
  ADD KEY `fk_comarca` (`comarca`);

--
-- Indices de la tabla `casa_actividades`
--
ALTER TABLE `casa_actividades`
  ADD KEY `fk_actividad` (`nombre_actividad`),
  ADD KEY `fk_casas` (`nombre_casa`);

--
-- Indices de la tabla `comarca`
--
ALTER TABLE `comarca`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `evaluacion`
--
ALTER TABLE `evaluacion`
  ADD KEY `fk_actividades` (`nombre_actividad`),
  ADD KEY `fk_niño` (`id_niño`);

--
-- Indices de la tabla `habitacion`
--
ALTER TABLE `habitacion`
  ADD KEY `fk_casa` (`casa`);

--
-- Indices de la tabla `niño`
--
ALTER TABLE `niño`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_nombre_casa` (`nombre_casa`),
  ADD KEY `fk_id_comarca` (`comarca_residencia`);

--
-- Indices de la tabla `tutor`
--
ALTER TABLE `tutor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_casa_tutor` (`casa`),
  ADD KEY `id_rol` (`id_rol`);

--
-- Indices de la tabla `tutor_rol`
--
ALTER TABLE `tutor_rol`
  ADD PRIMARY KEY (`id_rol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comarca`
--
ALTER TABLE `comarca`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `niño`
--
ALTER TABLE `niño`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `tutor`
--
ALTER TABLE `tutor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `tutor_rol`
--
ALTER TABLE `tutor_rol`
  MODIFY `id_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `casa`
--
ALTER TABLE `casa`
  ADD CONSTRAINT `fk_comarca` FOREIGN KEY (`comarca`) REFERENCES `comarca` (`id`);

--
-- Filtros para la tabla `casa_actividades`
--
ALTER TABLE `casa_actividades`
  ADD CONSTRAINT `fk_actividad` FOREIGN KEY (`nombre_actividad`) REFERENCES `actividad` (`nombre`),
  ADD CONSTRAINT `fk_casas` FOREIGN KEY (`nombre_casa`) REFERENCES `casa` (`nombre`);

--
-- Filtros para la tabla `evaluacion`
--
ALTER TABLE `evaluacion`
  ADD CONSTRAINT `fk_actividades` FOREIGN KEY (`nombre_actividad`) REFERENCES `actividad` (`nombre`),
  ADD CONSTRAINT `fk_niño` FOREIGN KEY (`id_niño`) REFERENCES `niño` (`id`);

--
-- Filtros para la tabla `habitacion`
--
ALTER TABLE `habitacion`
  ADD CONSTRAINT `fk_casa` FOREIGN KEY (`casa`) REFERENCES `casa` (`nombre`);

--
-- Filtros para la tabla `niño`
--
ALTER TABLE `niño`
  ADD CONSTRAINT `fk_nombre_casa` FOREIGN KEY (`nombre_casa`) REFERENCES `casa` (`nombre`),
  ADD CONSTRAINT `niño_ibfk_1` FOREIGN KEY (`comarca_residencia`) REFERENCES `comarca` (`id`);

--
-- Filtros para la tabla `tutor`
--
ALTER TABLE `tutor`
  ADD CONSTRAINT `fk_casa_tutor` FOREIGN KEY (`casa`) REFERENCES `casa` (`nombre`),
  ADD CONSTRAINT `tutor_ibfk_1` FOREIGN KEY (`id_rol`) REFERENCES `tutor_rol` (`id_rol`);
--
-- Base de datos: `colegio`
--
CREATE DATABASE IF NOT EXISTS `colegio` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `colegio`;
--
-- Base de datos: `dblocalservicios`
--
CREATE DATABASE IF NOT EXISTS `dblocalservicios` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dblocalservicios`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitud`
--

CREATE TABLE `solicitud` (
  `id_solicitud` int(100) NOT NULL,
  `Fecha_realizacion` date NOT NULL,
  `Fecha_entrega` date NOT NULL,
  `Servicio` varchar(50) NOT NULL,
  `Descripcion` text NOT NULL,
  `Cliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(100) NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `Apellido` varchar(20) NOT NULL,
  `Correo` varchar(40) NOT NULL,
  `Direccion` varchar(20) NOT NULL,
  `Documento` bigint(20) NOT NULL,
  `Celular` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `solicitud`
--
ALTER TABLE `solicitud`
  ADD PRIMARY KEY (`id_solicitud`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `solicitud`
--
ALTER TABLE `solicitud`
  MODIFY `id_solicitud` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(100) NOT NULL AUTO_INCREMENT;
--
-- Base de datos: `ejemplo1`
--
CREATE DATABASE IF NOT EXISTS `ejemplo1` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ejemplo1`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE `alumno` (
  `ID` int(11) NOT NULL,
  `identificacion` varchar(10) DEFAULT NULL,
  `nombre` varchar(10) DEFAULT NULL,
  `apellido` varchar(10) DEFAULT NULL,
  `edad` int(3) DEFAULT NULL,
  `telefono` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `alumno`
--

INSERT INTO `alumno` (`ID`, `identificacion`, `nombre`, `apellido`, `edad`, `telefono`) VALUES
(1, '121221', 'diomedes', 'diaz', 15, '1224578');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumno`
--
ALTER TABLE `alumno`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Base de datos: `inmobiliaria`
--
CREATE DATABASE IF NOT EXISTS `inmobiliaria` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `inmobiliaria`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comisiones`
--

CREATE TABLE `comisiones` (
  `id_comision` int(11) NOT NULL,
  `id_persona` int(11) NOT NULL,
  `monto_comision` double NOT NULL,
  `tipo_servicio` int(11) NOT NULL,
  `estado` varchar(30) NOT NULL,
  `fecha_generacion` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `comisiones`
--

INSERT INTO `comisiones` (`id_comision`, `id_persona`, `monto_comision`, `tipo_servicio`, `estado`, `fecha_generacion`) VALUES
(100, 13, 500, 2, 'pagado', '2023-06-20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inmuebles`
--

CREATE TABLE `inmuebles` (
  `id_inmueble` int(11) NOT NULL,
  `id_persona` int(11) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `barrio` varchar(50) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `descripcion` varchar(250) NOT NULL,
  `analisis_inmueble` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `inmuebles`
--

INSERT INTO `inmuebles` (`id_inmueble`, `id_persona`, `direccion`, `barrio`, `tipo`, `descripcion`, `analisis_inmueble`) VALUES
(1112, 11, 'xd', 'xdavenue', 'casa', 'bonita', 'aprobado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pago_cuenta`
--

CREATE TABLE `pago_cuenta` (
  `numero_cuenta` int(11) NOT NULL,
  `id_persona` int(11) NOT NULL,
  `tipo_servicio` int(11) NOT NULL,
  `monto_pago` int(11) NOT NULL,
  `estado` varchar(30) NOT NULL,
  `fecha_pago` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pago_cuenta`
--

INSERT INTO `pago_cuenta` (`numero_cuenta`, `id_persona`, `tipo_servicio`, `monto_pago`, `estado`, `fecha_pago`) VALUES
(191919, 12, 2, 10000000, 'pagado', '2023-06-22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE `personas` (
  `id_persona` int(11) NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `tipo_persona` int(11) NOT NULL,
  `identificacion` varchar(11) NOT NULL,
  `nombre` varchar(11) NOT NULL,
  `apellido` varchar(11) NOT NULL,
  `telefono_persona` varchar(11) NOT NULL,
  `email_persona` varchar(50) NOT NULL,
  `info_persona` varchar(250) NOT NULL,
  `analisis_persona` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`id_persona`, `id_sucursal`, `tipo_persona`, `identificacion`, `nombre`, `apellido`, `telefono_persona`, `email_persona`, `info_persona`, `analisis_persona`) VALUES
(11, 10, 4, '1011089654', 'Juana', 'Valdez', '3139865372', 'juana@gmail.com', 'Ingeniera de software', 'Aprobado'),
(12, 10, 4, '10129381238', 'Pepito', 'Perez', '1023912382', 'pepito@gmail.com', 'Propietario', 'Aprobado'),
(13, 10, 2, '993128312', 'Henry', 'Gomez', '1283123032', 'henry@gmail.com', 'Comercial', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona_servicio`
--

CREATE TABLE `persona_servicio` (
  `id_persona_servicio` int(11) NOT NULL,
  `id_persona_uno` int(11) NOT NULL,
  `id_persona_dos` int(11) NOT NULL,
  `id_persona_tres` int(11) NOT NULL,
  `id_inmueble` int(11) NOT NULL,
  `id_comision` int(11) NOT NULL,
  `numero_cuenta` int(11) NOT NULL,
  `tipo_servicio` int(11) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_final` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `persona_servicio`
--

INSERT INTO `persona_servicio` (`id_persona_servicio`, `id_persona_uno`, `id_persona_dos`, `id_persona_tres`, `id_inmueble`, `id_comision`, `numero_cuenta`, `tipo_servicio`, `fecha_inicio`, `fecha_final`) VALUES
(1, 11, 12, 13, 1112, 100, 191919, 2, '2024-05-15', '2024-05-31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursales`
--

CREATE TABLE `sucursales` (
  `id_sucursal` int(11) NOT NULL,
  `ciudad` int(11) NOT NULL,
  `direccion_sucursal` varchar(40) NOT NULL,
  `telefono_sucursal` varchar(40) NOT NULL,
  `email_sucursal` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sucursales`
--

INSERT INTO `sucursales` (`id_sucursal`, `ciudad`, `direccion_sucursal`, `telefono_sucursal`, `email_sucursal`) VALUES
(10, 1, 'Carrera 15B 45', '9009998', 'sucursal10@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_personas`
--

CREATE TABLE `tipo_personas` (
  `secretario` int(11) NOT NULL,
  `comercial` int(11) NOT NULL,
  `analista` int(11) NOT NULL,
  `cliente` int(11) NOT NULL,
  `empresa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_personas`
--

INSERT INTO `tipo_personas` (`secretario`, `comercial`, `analista`, `cliente`, `empresa`) VALUES
(1, 2, 3, 4, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_servicios`
--

CREATE TABLE `tipo_servicios` (
  `compra` int(11) NOT NULL,
  `venta` int(11) NOT NULL,
  `alquiler` int(11) NOT NULL,
  `estudio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_servicios`
--

INSERT INTO `tipo_servicios` (`compra`, `venta`, `alquiler`, `estudio`) VALUES
(1, 2, 3, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ubicacion_geografica`
--

CREATE TABLE `ubicacion_geografica` (
  `ciudad` varchar(30) NOT NULL,
  `departamento` varchar(30) NOT NULL,
  `id_ciudad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ubicacion_geografica`
--

INSERT INTO `ubicacion_geografica` (`ciudad`, `departamento`, `id_ciudad`) VALUES
('Bogotá', 'Cundinamarca', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comisiones`
--
ALTER TABLE `comisiones`
  ADD PRIMARY KEY (`id_comision`),
  ADD KEY `persona_comision` (`id_persona`);

--
-- Indices de la tabla `inmuebles`
--
ALTER TABLE `inmuebles`
  ADD PRIMARY KEY (`id_inmueble`),
  ADD KEY `persona_inmueble` (`id_persona`);

--
-- Indices de la tabla `pago_cuenta`
--
ALTER TABLE `pago_cuenta`
  ADD PRIMARY KEY (`numero_cuenta`),
  ADD KEY `persona_cuenta` (`id_persona`);

--
-- Indices de la tabla `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`id_persona`),
  ADD KEY `sucursal_persona` (`id_sucursal`);

--
-- Indices de la tabla `persona_servicio`
--
ALTER TABLE `persona_servicio`
  ADD PRIMARY KEY (`id_persona_servicio`),
  ADD KEY `persona_uno` (`id_persona_uno`),
  ADD KEY `persona_dos` (`id_persona_dos`),
  ADD KEY `persona_tres` (`id_persona_tres`),
  ADD KEY `inmueble_servicio` (`id_inmueble`),
  ADD KEY `cuenta_servicio` (`numero_cuenta`),
  ADD KEY `comision_servicio` (`id_comision`);

--
-- Indices de la tabla `sucursales`
--
ALTER TABLE `sucursales`
  ADD PRIMARY KEY (`id_sucursal`),
  ADD KEY `ciudad_sucursal` (`ciudad`);

--
-- Indices de la tabla `ubicacion_geografica`
--
ALTER TABLE `ubicacion_geografica`
  ADD PRIMARY KEY (`id_ciudad`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comisiones`
--
ALTER TABLE `comisiones`
  ADD CONSTRAINT `persona_comision` FOREIGN KEY (`id_persona`) REFERENCES `personas` (`id_persona`);

--
-- Filtros para la tabla `inmuebles`
--
ALTER TABLE `inmuebles`
  ADD CONSTRAINT `persona_inmueble` FOREIGN KEY (`id_persona`) REFERENCES `personas` (`id_persona`);

--
-- Filtros para la tabla `pago_cuenta`
--
ALTER TABLE `pago_cuenta`
  ADD CONSTRAINT `persona_cuenta` FOREIGN KEY (`id_persona`) REFERENCES `personas` (`id_persona`);

--
-- Filtros para la tabla `personas`
--
ALTER TABLE `personas`
  ADD CONSTRAINT `sucursal_persona` FOREIGN KEY (`id_sucursal`) REFERENCES `sucursales` (`id_sucursal`);

--
-- Filtros para la tabla `persona_servicio`
--
ALTER TABLE `persona_servicio`
  ADD CONSTRAINT `comision_servicio` FOREIGN KEY (`id_comision`) REFERENCES `comisiones` (`id_comision`),
  ADD CONSTRAINT `cuenta_servicio` FOREIGN KEY (`numero_cuenta`) REFERENCES `pago_cuenta` (`numero_cuenta`),
  ADD CONSTRAINT `inmueble_servicio` FOREIGN KEY (`id_inmueble`) REFERENCES `inmuebles` (`id_inmueble`),
  ADD CONSTRAINT `persona_dos` FOREIGN KEY (`id_persona_dos`) REFERENCES `personas` (`id_persona`),
  ADD CONSTRAINT `persona_tres` FOREIGN KEY (`id_persona_tres`) REFERENCES `personas` (`id_persona`),
  ADD CONSTRAINT `persona_uno` FOREIGN KEY (`id_persona_uno`) REFERENCES `personas` (`id_persona`);

--
-- Filtros para la tabla `sucursales`
--
ALTER TABLE `sucursales`
  ADD CONSTRAINT `ciudad_sucursal` FOREIGN KEY (`ciudad`) REFERENCES `ubicacion_geografica` (`id_ciudad`);
--
-- Base de datos: `maquillaje`
--
CREATE DATABASE IF NOT EXISTS `maquillaje` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `maquillaje`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoría`
--

CREATE TABLE `categoría` (
  `ID_Categoria` int(11) NOT NULL,
  `Nombre` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `ID_Cliente` int(11) NOT NULL,
  `Nombre` varchar(255) DEFAULT NULL,
  `Apellido` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Dirección` varchar(255) DEFAULT NULL,
  `Ciudad` varchar(70) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`ID_Cliente`, `Nombre`, `Apellido`, `Email`, `Dirección`, `Ciudad`) VALUES
(10625455, 'Laura', 'Sánchez', 'laura@example.com', 'Calle 789 ', 'Boyaca'),
(12306652, 'Ana', 'Martínez', 'ana@example.com', 'Calle Principal ', 'Casanare'),
(102256946, 'María', 'Gómez', 'maria@example.com', 'Calle 123 ', 'Bogotá'),
(102356551, 'Juan', 'Pérez', 'juan@example.com', 'Avenida Principal ', 'Popayan'),
(106356565, 'Pedro', 'López', 'pedro@example.com', 'Avenida 456 ', 'Cali'),
(106562652, 'Laura', 'Vargas', 'lauvar@gmail.com', 'Calle 72 ', 'Bogota');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `ID_Compra` int(11) NOT NULL,
  `Fecha` date DEFAULT NULL,
  `Total` decimal(10,2) DEFAULT NULL,
  `ID_Cliente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalles_compra`
--

CREATE TABLE `detalles_compra` (
  `ID_Detalle` int(11) NOT NULL,
  `ID_Compra` int(11) DEFAULT NULL,
  `ID_Producto` int(11) DEFAULT NULL,
  `Cantidad` int(11) DEFAULT NULL,
  `Precio_unitario` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `ID_Producto` int(11) NOT NULL,
  `Nombre` varchar(255) DEFAULT NULL,
  `Precio` decimal(10,2) DEFAULT NULL,
  `Cantidad` int(11) DEFAULT NULL,
  `ID_Categoria` int(11) DEFAULT NULL,
  `ID_Proveedor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `ID_Proveedor` int(11) NOT NULL,
  `Nombre` varchar(255) DEFAULT NULL,
  `Dirección` varchar(255) DEFAULT NULL,
  `Teléfono` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoría`
--
ALTER TABLE `categoría`
  ADD PRIMARY KEY (`ID_Categoria`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`ID_Cliente`);

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`ID_Compra`),
  ADD KEY `ID_Cliente` (`ID_Cliente`);

--
-- Indices de la tabla `detalles_compra`
--
ALTER TABLE `detalles_compra`
  ADD PRIMARY KEY (`ID_Detalle`),
  ADD KEY `ID_Compra` (`ID_Compra`),
  ADD KEY `ID_Producto` (`ID_Producto`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`ID_Producto`),
  ADD KEY `ID_Categoria` (`ID_Categoria`),
  ADD KEY `ID_Proveedor` (`ID_Proveedor`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`ID_Proveedor`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `compras`
--
ALTER TABLE `compras`
  ADD CONSTRAINT `compras_ibfk_1` FOREIGN KEY (`ID_Cliente`) REFERENCES `clientes` (`ID_Cliente`);

--
-- Filtros para la tabla `detalles_compra`
--
ALTER TABLE `detalles_compra`
  ADD CONSTRAINT `detalles_compra_ibfk_1` FOREIGN KEY (`ID_Compra`) REFERENCES `compras` (`ID_Compra`),
  ADD CONSTRAINT `detalles_compra_ibfk_2` FOREIGN KEY (`ID_Producto`) REFERENCES `producto` (`ID_Producto`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`ID_Categoria`) REFERENCES `categoría` (`ID_Categoria`),
  ADD CONSTRAINT `producto_ibfk_2` FOREIGN KEY (`ID_Proveedor`) REFERENCES `proveedor` (`ID_Proveedor`);
--
-- Base de datos: `northwind`
--
CREATE DATABASE IF NOT EXISTS `northwind` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `northwind`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `CategoryID` int(11) NOT NULL,
  `CategoryName` varchar(25) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`CategoryID`, `CategoryName`, `Description`) VALUES
(1, 'Beverages', 'Soft drinks, coffees, teas, beers, and ales'),
(2, 'Condiments', 'Sweet and savory sauces, relishes, spreads, and seasonings'),
(3, 'Confections', 'Desserts, candies, and sweet breads'),
(4, 'Dairy Products', 'Cheeses'),
(5, 'Grains/Cereals', 'Breads, crackers, pasta, and cereal'),
(6, 'Meat/Poultry', 'Prepared meats'),
(7, 'Produce', 'Dried fruit and bean curd'),
(8, 'Seafood', 'Seaweed and fish');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `customers`
--

CREATE TABLE `customers` (
  `CustomerID` int(11) NOT NULL,
  `CustomerName` varchar(50) DEFAULT NULL,
  `ContactName` varchar(50) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `City` varchar(20) DEFAULT NULL,
  `PostalCode` varchar(10) DEFAULT NULL,
  `Country` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `customers`
--

INSERT INTO `customers` (`CustomerID`, `CustomerName`, `ContactName`, `Address`, `City`, `PostalCode`, `Country`) VALUES
(1, 'Alfreds Futterkiste', 'Maria Anders', 'Obere Str. 57', 'Berlin', '12209', 'Germany'),
(2, 'Ana Trujillo Emparedados y helados', 'Ana Trujillo', 'Avda. de la Constitución 2222', 'México D.F.', '5021', 'Mexico'),
(3, 'Antonio Moreno Taquería', 'Antonio Moreno', 'Mataderos 2312', 'México D.F.', '5023', 'Mexico'),
(4, 'Around the Horn', 'Thomas Hardy', '120 Hanover Sq.', 'London', 'WA1 1DP', 'UK'),
(5, 'Berglunds snabbköp', 'Christina Berglund', 'Berguvsvägen 8', 'Luleå', 'S-958 22', 'Sweden'),
(6, 'Blauer See Delikatessen', 'Hanna Moos', 'Forsterstr. 57', 'Mannheim', '68306', 'Germany'),
(7, 'Blondel père et fils', 'Frédérique Citeaux', '24, place Kléber', 'Strasbourg', '67000', 'France'),
(8, 'Bólido Comidas preparadas', 'Martín Sommer', 'C/ Araquil, 67', 'Madrid', '28023', 'Spain'),
(9, 'Bon app\'\'', 'Laurence Lebihans', '12, rue des Bouchers', 'Marseille', '13008', 'France'),
(10, 'Bottom-Dollar Marketse', 'Elizabeth Lincoln', '23 Tsawassen Blvd.', 'Tsawassen', 'T2F 8M4', 'Canada'),
(11, 'B\'\'s Beverages', 'Victoria Ashworth', 'Fauntleroy Circus', 'London', 'EC2 5NT', 'UK'),
(12, 'Cactus Comidas para llevar', 'Patricio Simpson', 'Cerrito 333', 'Buenos Aires', '1010', 'Argentina'),
(13, 'Centro comercial Moctezuma', 'Francisco Chang', 'Sierras de Granada 9993', 'México D.F.', '5022', 'Mexico'),
(14, 'Chop-suey Chinese', 'Yang Wang', 'Hauptstr. 29', 'Bern', '3012', 'Switzerland'),
(15, 'Comércio Mineiro', 'Pedro Afonso', 'Av. dos Lusíadas, 23', 'São Paulo', '05432-043', 'Brazil'),
(16, 'Consolidated Holdings', 'Elizabeth Brown', 'Berkeley Gardens 12 Brewery', 'London', 'WX1 6LT', 'UK'),
(17, 'Drachenblut Delikatessend', 'Sven Ottlieb', 'Walserweg 21', 'Aachen', '52066', 'Germany'),
(18, 'Du monde entier', 'Janine Labrune', '67, rue des Cinquante Otages', 'Nantes', '44000', 'France'),
(19, 'Eastern Connection', 'Ann Devon', '35 King George', 'London', 'WX3 6FW', 'UK'),
(20, 'Ernst Handel', 'Roland Mendel', 'Kirchgasse 6', 'Graz', '8010', 'Austria'),
(21, 'Familia Arquibaldo', 'Aria Cruz', 'Rua Orós, 92', 'São Paulo', '05442-030', 'Brazil'),
(22, 'FISSA Fabrica Inter. Salchichas S.A.', 'Diego Roel', 'C/ Moralzarzal, 86', 'Madrid', '28034', 'Spain'),
(23, 'Folies gourmandes', 'Martine Rancé', '184, chaussée de Tournai', 'Lille', '59000', 'France'),
(24, 'Folk och fä HB', 'Maria Larsson', 'Åkergatan 24', 'Bräcke', 'S-844 67', 'Sweden'),
(25, 'Frankenversand', 'Peter Franken', 'Berliner Platz 43', 'München', '80805', 'Germany'),
(26, 'France restauration', 'Carine Schmitt', '54, rue Royale', 'Nantes', '44000', 'France'),
(27, 'Franchi S.p.A.', 'Paolo Accorti', 'Via Monte Bianco 34', 'Torino', '10100', 'Italy'),
(28, 'Furia Bacalhau e Frutos do Mar', 'Lino Rodriguez', 'Jardim das rosas n. 32', 'Lisboa', '1675', 'Portugal'),
(29, 'Galería del gastrónomo', 'Eduardo Saavedra', 'Rambla de Cataluña, 23', 'Barcelona', '8022', 'Spain'),
(30, 'Godos Cocina Típica', 'José Pedro Freyre', 'C/ Romero, 33', 'Sevilla', '41101', 'Spain'),
(31, 'Gourmet Lanchonetes', 'André Fonseca', 'Av. Brasil, 442', 'Campinas', '04876-786', 'Brazil'),
(32, 'Great Lakes Food Market', 'Howard Snyder', '2732 Baker Blvd.', 'Eugene', '97403', 'USA'),
(33, 'GROSELLA-Restaurante', 'Manuel Pereira', '5ª Ave. Los Palos Grandes', 'Caracas', '1081', 'Venezuela'),
(34, 'Hanari Carnes', 'Mario Pontes', 'Rua do Paço, 67', 'Rio de Janeiro', '05454-876', 'Brazil'),
(35, 'HILARIÓN-Abastos', 'Carlos Hernández', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', '5022', 'Venezuela'),
(36, 'Hungry Coyote Import Store', 'Yoshi Latimer', 'City Center Plaza 516 Main St.', 'Elgin', '97827', 'USA'),
(37, 'Hungry Owl All-Night Grocers', 'Patricia McKenna', '8 Johnstown Road', 'Cork', '', 'Ireland'),
(38, 'Island Trading', 'Helen Bennett', 'Garden House Crowther Way', 'Cowes', 'PO31 7PJ', 'UK'),
(39, 'Königlich Essen', 'Philip Cramer', 'Maubelstr. 90', 'Brandenburg', '14776', 'Germany'),
(40, 'La corne d\'\'abondance', 'Daniel Tonini', '67, avenue de l\'\'Europe', 'Versailles', '78000', 'France'),
(41, 'La maison d\'\'Asie', 'Annette Roulet', '1 rue Alsace-Lorraine', 'Toulouse', '31000', 'France'),
(42, 'Laughing Bacchus Wine Cellars', 'Yoshi Tannamuri', '1900 Oak St.', 'Vancouver', 'V3F 2K1', 'Canada'),
(43, 'Lazy K Kountry Store', 'John Steel', '12 Orchestra Terrace', 'Walla Walla', '99362', 'USA'),
(44, 'Lehmanns Marktstand', 'Renate Messner', 'Magazinweg 7', 'Frankfurt a.M.', '60528', 'Germany'),
(45, 'Let\'\'s Stop N Shop', 'Jaime Yorres', '87 Polk St. Suite 5', 'San Francisco', '94117', 'USA'),
(46, 'LILA-Supermercado', 'Carlos González', 'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 'Barquisimeto', '3508', 'Venezuela'),
(47, 'LINO-Delicateses', 'Felipe Izquierdo', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', '4980', 'Venezuela'),
(48, 'Lonesome Pine Restaurant', 'Fran Wilson', '89 Chiaroscuro Rd.', 'Portland', '97219', 'USA'),
(49, 'Magazzini Alimentari Riuniti', 'Giovanni Rovelli', 'Via Ludovico il Moro 22', 'Bergamo', '24100', 'Italy'),
(50, 'Maison Dewey', 'Catherine Dewey', 'Rue Joseph-Bens 532', 'Bruxelles', 'B-1180', 'Belgium'),
(51, 'Mère Paillarde', 'Jean Fresnière', '43 rue St. Laurent', 'Montréal', 'H1J 1C3', 'Canada'),
(52, 'Morgenstern Gesundkost', 'Alexander Feuer', 'Heerstr. 22', 'Leipzig', '4179', 'Germany'),
(53, 'North/South', 'Simon Crowther', 'South House 300 Queensbridge', 'London', 'SW7 1RZ', 'UK'),
(54, 'Océano Atlántico Ltda.', 'Yvonne Moncada', 'Ing. Gustavo Moncada 8585 Piso 20-A', 'Buenos Aires', '1010', 'Argentina'),
(55, 'Old World Delicatessen', 'Rene Phillips', '2743 Bering St.', 'Anchorage', '99508', 'USA'),
(56, 'Ottilies Käseladen', 'Henriette Pfalzheim', 'Mehrheimerstr. 369', 'Köln', '50739', 'Germany'),
(57, 'Paris spécialités', 'Marie Bertrand', '265, boulevard Charonne', 'Paris', '75012', 'France'),
(58, 'Pericles Comidas clásicas', 'Guillermo Fernández', 'Calle Dr. Jorge Cash 321', 'México D.F.', '5033', 'Mexico'),
(59, 'Piccolo und mehr', 'Georg Pipps', 'Geislweg 14', 'Salzburg', '5020', 'Austria'),
(60, 'Princesa Isabel Vinhoss', 'Isabel de Castro', 'Estrada da saúde n. 58', 'Lisboa', '1756', 'Portugal'),
(61, 'Que Delícia', 'Bernardo Batista', 'Rua da Panificadora, 12', 'Rio de Janeiro', '02389-673', 'Brazil'),
(62, 'Queen Cozinha', 'Lúcia Carvalho', 'Alameda dos Canàrios, 891', 'São Paulo', '05487-020', 'Brazil'),
(63, 'QUICK-Stop', 'Horst Kloss', 'Taucherstraße 10', 'Cunewalde', '1307', 'Germany'),
(64, 'Rancho grande', 'Sergio Gutiérrez', 'Av. del Libertador 900', 'Buenos Aires', '1010', 'Argentina'),
(65, 'Rattlesnake Canyon Grocery', 'Paula Wilson', '2817 Milton Dr.', 'Albuquerque', '87110', 'USA'),
(66, 'Reggiani Caseifici', 'Maurizio Moroni', 'Strada Provinciale 124', 'Reggio Emilia', '42100', 'Italy'),
(67, 'Ricardo Adocicados', 'Janete Limeira', 'Av. Copacabana, 267', 'Rio de Janeiro', '02389-890', 'Brazil'),
(68, 'Richter Supermarkt', 'Michael Holz', 'Grenzacherweg 237', 'Genève', '1203', 'Switzerland'),
(69, 'Romero y tomillo', 'Alejandra Camino', 'Gran Vía, 1', 'Madrid', '28001', 'Spain'),
(70, 'Santé Gourmet', 'Jonas Bergulfsen', 'Erling Skakkes gate 78', 'Stavern', '4110', 'Norway'),
(71, 'Save-a-lot Markets', 'Jose Pavarotti', '187 Suffolk Ln.', 'Boise', '83720', 'USA'),
(72, 'Seven Seas Imports', 'Hari Kumar', '90 Wadhurst Rd.', 'London', 'OX15 4NB', 'UK'),
(73, 'Simons bistro', 'Jytte Petersen', 'Vinbæltet 34', 'København', '1734', 'Denmark'),
(74, 'Spécialités du monde', 'Dominique Perrier', '25, rue Lauriston', 'Paris', '75016', 'France'),
(75, 'Split Rail Beer & Ale', 'Art Braunschweiger', 'P.O. Box 555', 'Lander', '82520', 'USA'),
(76, 'Suprêmes délices', 'Pascale Cartrain', 'Boulevard Tirou, 255', 'Charleroi', 'B-6000', 'Belgium'),
(77, 'The Big Cheese', 'Liz Nixon', '89 Jefferson Way Suite 2', 'Portland', '97201', 'USA'),
(78, 'The Cracker Box', 'Liu Wong', '55 Grizzly Peak Rd.', 'Butte', '59801', 'USA'),
(79, 'Toms Spezialitäten', 'Karin Josephs', 'Luisenstr. 48', 'Münster', '44087', 'Germany'),
(80, 'Tortuga Restaurante', 'Miguel Angel Paolino', 'Avda. Azteca 123', 'México D.F.', '5033', 'Mexico'),
(81, 'Tradição Hipermercados', 'Anabela Domingues', 'Av. Inês de Castro, 414', 'São Paulo', '05634-030', 'Brazil'),
(82, 'Trail\'\'s Head Gourmet Provisioners', 'Helvetius Nagy', '722 DaVinci Blvd.', 'Kirkland', '98034', 'USA'),
(83, 'Vaffeljernet', 'Palle Ibsen', 'Smagsløget 45', 'Århus', '8200', 'Denmark'),
(84, 'Victuailles en stock', 'Mary Saveley', '2, rue du Commerce', 'Lyon', '69004', 'France'),
(85, 'Vins et alcools Chevalier', 'Paul Henriot', '59 rue de l\'\'Abbaye', 'Reims', '51100', 'France'),
(86, 'Die Wandernde Kuh', 'Rita Müller', 'Adenauerallee 900', 'Stuttgart', '70563', 'Germany'),
(87, 'Wartian Herkku', 'Pirkko Koskitalo', 'Torikatu 38', 'Oulu', '90110', 'Finland'),
(88, 'Wellington Importadora', 'Paula Parente', 'Rua do Mercado, 12', 'Resende', '08737-363', 'Brazil'),
(89, 'White Clover Markets', 'Karl Jablonski', '305 - 14th Ave. S. Suite 3B', 'Seattle', '98128', 'USA'),
(90, 'Wilman Kala', 'Matti Karttunen', 'Keskuskatu 45', 'Helsinki', '21240', 'Finland'),
(91, 'Wolski', 'Zbyszek', 'ul. Filtrowa 68', 'Walla', '01-012', 'Poland');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `employees`
--

CREATE TABLE `employees` (
  `EmployeeID` int(11) NOT NULL,
  `LastName` varchar(15) DEFAULT NULL,
  `FirstName` varchar(15) DEFAULT NULL,
  `BirthDate` datetime DEFAULT NULL,
  `Photo` varchar(25) DEFAULT NULL,
  `Notes` varchar(1024) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `employees`
--

INSERT INTO `employees` (`EmployeeID`, `LastName`, `FirstName`, `BirthDate`, `Photo`, `Notes`) VALUES
(1, 'Davolio', 'Nancy', '1968-12-08 00:00:00', 'EmpID1.pic', 'Education includes a BA in psychology from Colorado State University. She also completed (The Art of the Cold Call). Nancy is a member of \'Toastmasters International\'.'),
(2, 'Fuller', 'Andrew', '1952-02-19 00:00:00', 'EmpID2.pic', 'Andrew received his BTS commercial and a Ph.D. in international marketing from the University of Dallas. He is fluent in French and Italian and reads German. He joined the company as a sales representative, was promoted to sales manager and was then named vice president of sales. Andrew is a member of the Sales Management Roundtable, the Seattle Chamber of Commerce, and the Pacific Rim Importers Association.'),
(3, 'Leverling', 'Janet', '1963-08-30 00:00:00', 'EmpID3.pic', 'Janet has a BS degree in chemistry from Boston College). She has also completed a certificate program in food retailing management. Janet was hired as a sales associate and was promoted to sales representative.'),
(4, 'Peacock', 'Margaret', '1958-09-19 00:00:00', 'EmpID4.pic', 'Margaret holds a BA in English literature from Concordia College and an MA from the American Institute of Culinary Arts. She was temporarily assigned to the London office before returning to her permanent post in Seattle.'),
(5, 'Buchanan', 'Steven', '1955-03-04 00:00:00', 'EmpID5.pic', 'Steven Buchanan graduated from St. Andrews University, Scotland, with a BSC degree. Upon joining the company as a sales representative, he spent 6 months in an orientation program at the Seattle office and then returned to his permanent post in London, where he was promoted to sales manager. Mr. Buchanan has completed the courses \'Successful Telemarketing\' and \'International Sales Management\'. He is fluent in French.'),
(6, 'Suyama', 'Michael', '1963-07-02 00:00:00', 'EmpID6.pic', 'Michael is a graduate of Sussex University (MA, economics) and the University of California at Los Angeles (MBA, marketing). He has also taken the courses \'Multi-Cultural Selling\' and \'Time Management for the Sales Professional\'. He is fluent in Japanese and can read and write French, Portuguese, and Spanish.'),
(7, 'King', 'Robert', '1960-05-29 00:00:00', 'EmpID7.pic', 'Robert King served in the Peace Corps and traveled extensively before completing his degree in English at the University of Michigan and then joining the company. After completing a course entitled \'Selling in Europe\', he was transferred to the London office.'),
(8, 'Callahan', 'Laura', '1958-01-09 00:00:00', 'EmpID8.pic', 'Laura received a BA in psychology from the University of Washington. She has also completed a course in business French. She reads and writes French.'),
(9, 'Dodsworth', 'Anne', '1969-07-02 00:00:00', 'EmpID9.pic', 'Anne has a BA degree in English from St. Lawrence College. She is fluent in French and German.'),
(10, 'West', 'Adam', '1928-09-19 00:00:00', 'EmpID10.pic', 'An old chum.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orderdetails`
--

CREATE TABLE `orderdetails` (
  `OrderDetailID` int(11) NOT NULL,
  `OrderID` int(11) DEFAULT NULL,
  `ProductID` int(11) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `orderdetails`
--

INSERT INTO `orderdetails` (`OrderDetailID`, `OrderID`, `ProductID`, `Quantity`) VALUES
(1, 10248, 11, 12),
(2, 10248, 42, 10),
(3, 10248, 72, 5),
(4, 10249, 14, 9),
(5, 10249, 51, 40),
(6, 10250, 41, 10),
(7, 10250, 51, 35),
(8, 10250, 65, 15),
(9, 10251, 22, 6),
(10, 10251, 57, 15),
(11, 10251, 65, 20),
(12, 10252, 20, 40),
(13, 10252, 33, 25),
(14, 10252, 60, 40),
(15, 10253, 31, 20),
(16, 10253, 39, 42),
(17, 10253, 49, 40),
(18, 10254, 24, 15),
(19, 10254, 55, 21),
(20, 10254, 74, 21),
(21, 10255, 2, 20),
(22, 10255, 16, 35),
(23, 10255, 36, 25),
(24, 10255, 59, 30),
(25, 10256, 53, 15),
(26, 10256, 77, 12),
(27, 10257, 27, 25),
(28, 10257, 39, 6),
(29, 10257, 77, 15),
(30, 10258, 2, 50),
(31, 10258, 5, 65),
(32, 10258, 32, 6),
(33, 10259, 21, 10),
(34, 10259, 37, 1),
(35, 10260, 41, 16),
(36, 10260, 57, 50),
(37, 10260, 62, 15),
(38, 10260, 70, 21),
(39, 10261, 21, 20),
(40, 10261, 35, 20),
(41, 10262, 5, 12),
(42, 10262, 7, 15),
(43, 10262, 56, 2),
(44, 10263, 16, 60),
(45, 10263, 24, 28),
(46, 10263, 30, 60),
(47, 10263, 74, 36),
(48, 10264, 2, 35),
(49, 10264, 41, 25),
(50, 10265, 17, 30),
(51, 10265, 70, 20),
(52, 10266, 12, 12),
(53, 10267, 40, 50),
(54, 10267, 59, 70),
(55, 10267, 76, 15),
(56, 10268, 29, 10),
(57, 10268, 72, 4),
(58, 10269, 33, 60),
(59, 10269, 72, 20),
(60, 10270, 36, 30),
(61, 10270, 43, 25),
(62, 10271, 33, 24),
(63, 10272, 20, 6),
(64, 10272, 31, 40),
(65, 10272, 72, 24),
(66, 10273, 10, 24),
(67, 10273, 31, 15),
(68, 10273, 33, 20),
(69, 10273, 40, 60),
(70, 10273, 76, 33),
(71, 10274, 71, 20),
(72, 10274, 72, 7),
(73, 10275, 24, 12),
(74, 10275, 59, 6),
(75, 10276, 10, 15),
(76, 10276, 13, 10),
(77, 10277, 28, 20),
(78, 10277, 62, 12),
(79, 10278, 44, 16),
(80, 10278, 59, 15),
(81, 10278, 63, 8),
(82, 10278, 73, 25),
(83, 10279, 17, 15),
(84, 10280, 24, 12),
(85, 10280, 55, 20),
(86, 10280, 75, 30),
(87, 10281, 19, 1),
(88, 10281, 24, 6),
(89, 10281, 35, 4),
(90, 10282, 30, 6),
(91, 10282, 57, 2),
(92, 10283, 15, 20),
(93, 10283, 19, 18),
(94, 10283, 60, 35),
(95, 10283, 72, 3),
(96, 10284, 27, 15),
(97, 10284, 44, 21),
(98, 10284, 60, 20),
(99, 10284, 67, 5),
(100, 10285, 1, 45),
(101, 10285, 40, 40),
(102, 10285, 53, 36),
(103, 10286, 35, 100),
(104, 10286, 62, 40),
(105, 10287, 16, 40),
(106, 10287, 34, 20),
(107, 10287, 46, 15),
(108, 10288, 54, 10),
(109, 10288, 68, 3),
(110, 10289, 3, 30),
(111, 10289, 64, 9),
(112, 10290, 5, 20),
(113, 10290, 29, 15),
(114, 10290, 49, 15),
(115, 10290, 77, 10),
(116, 10291, 13, 20),
(117, 10291, 44, 24),
(118, 10291, 51, 2),
(119, 10292, 20, 20),
(120, 10293, 18, 12),
(121, 10293, 24, 10),
(122, 10293, 63, 5),
(123, 10293, 75, 6),
(124, 10294, 1, 18),
(125, 10294, 17, 15),
(126, 10294, 43, 15),
(127, 10294, 60, 21),
(128, 10294, 75, 6),
(129, 10295, 56, 4),
(130, 10296, 11, 12),
(131, 10296, 16, 30),
(132, 10296, 69, 15),
(133, 10297, 39, 60),
(134, 10297, 72, 20),
(135, 10298, 2, 40),
(136, 10298, 36, 40),
(137, 10298, 59, 30),
(138, 10298, 62, 15),
(139, 10299, 19, 15),
(140, 10299, 70, 20),
(141, 10300, 66, 30),
(142, 10300, 68, 20),
(143, 10301, 40, 10),
(144, 10301, 56, 20),
(145, 10302, 17, 40),
(146, 10302, 28, 28),
(147, 10302, 43, 12),
(148, 10303, 40, 40),
(149, 10303, 65, 30),
(150, 10303, 68, 15),
(151, 10304, 49, 30),
(152, 10304, 59, 10),
(153, 10304, 71, 2),
(154, 10305, 18, 25),
(155, 10305, 29, 25),
(156, 10305, 39, 30),
(157, 10306, 30, 10),
(158, 10306, 53, 10),
(159, 10306, 54, 5),
(160, 10307, 62, 10),
(161, 10307, 68, 3),
(162, 10308, 69, 1),
(163, 10308, 70, 5),
(164, 10309, 4, 20),
(165, 10309, 6, 30),
(166, 10309, 42, 2),
(167, 10309, 43, 20),
(168, 10309, 71, 3),
(169, 10310, 16, 10),
(170, 10310, 62, 5),
(171, 10311, 42, 6),
(172, 10311, 69, 7),
(173, 10312, 28, 4),
(174, 10312, 43, 24),
(175, 10312, 53, 20),
(176, 10312, 75, 10),
(177, 10313, 36, 12),
(178, 10314, 32, 40),
(179, 10314, 58, 30),
(180, 10314, 62, 25),
(181, 10315, 34, 14),
(182, 10315, 70, 30),
(183, 10316, 41, 10),
(184, 10316, 62, 70),
(185, 10317, 1, 20),
(186, 10318, 41, 20),
(187, 10318, 76, 6),
(188, 10319, 17, 8),
(189, 10319, 28, 14),
(190, 10319, 76, 30),
(191, 10320, 71, 30),
(192, 10321, 35, 10),
(193, 10322, 52, 20),
(194, 10323, 15, 5),
(195, 10323, 25, 4),
(196, 10323, 39, 4),
(197, 10324, 16, 21),
(198, 10324, 35, 70),
(199, 10324, 46, 30),
(200, 10324, 59, 40),
(201, 10324, 63, 80),
(202, 10325, 6, 6),
(203, 10325, 13, 12),
(204, 10325, 14, 9),
(205, 10325, 31, 4),
(206, 10325, 72, 40),
(207, 10326, 4, 24),
(208, 10326, 57, 16),
(209, 10326, 75, 50),
(210, 10327, 2, 25),
(211, 10327, 11, 50),
(212, 10327, 30, 35),
(213, 10327, 58, 30),
(214, 10328, 59, 9),
(215, 10328, 65, 40),
(216, 10328, 68, 10),
(217, 10329, 19, 10),
(218, 10329, 30, 8),
(219, 10329, 38, 20),
(220, 10329, 56, 12),
(221, 10330, 26, 50),
(222, 10330, 72, 25),
(223, 10331, 54, 15),
(224, 10332, 18, 40),
(225, 10332, 42, 10),
(226, 10332, 47, 16),
(227, 10333, 14, 10),
(228, 10333, 21, 10),
(229, 10333, 71, 40),
(230, 10334, 52, 8),
(231, 10334, 68, 10),
(232, 10335, 2, 7),
(233, 10335, 31, 25),
(234, 10335, 32, 6),
(235, 10335, 51, 48),
(236, 10336, 4, 18),
(237, 10337, 23, 40),
(238, 10337, 26, 24),
(239, 10337, 36, 20),
(240, 10337, 37, 28),
(241, 10337, 72, 25),
(242, 10338, 17, 20),
(243, 10338, 30, 15),
(244, 10339, 4, 10),
(245, 10339, 17, 70),
(246, 10339, 62, 28),
(247, 10340, 18, 20),
(248, 10340, 41, 12),
(249, 10340, 43, 40),
(250, 10341, 33, 8),
(251, 10341, 59, 9),
(252, 10342, 2, 24),
(253, 10342, 31, 56),
(254, 10342, 36, 40),
(255, 10342, 55, 40),
(256, 10343, 64, 50),
(257, 10343, 68, 4),
(258, 10343, 76, 15),
(259, 10344, 4, 35),
(260, 10344, 8, 70),
(261, 10345, 8, 70),
(262, 10345, 19, 80),
(263, 10345, 42, 9),
(264, 10346, 17, 36),
(265, 10346, 56, 20),
(266, 10347, 25, 10),
(267, 10347, 39, 50),
(268, 10347, 40, 4),
(269, 10347, 75, 6),
(270, 10348, 1, 15),
(271, 10348, 23, 25),
(272, 10349, 54, 24),
(273, 10350, 50, 15),
(274, 10350, 69, 18),
(275, 10351, 38, 20),
(276, 10351, 41, 13),
(277, 10351, 44, 77),
(278, 10351, 65, 10),
(279, 10352, 24, 10),
(280, 10352, 54, 20),
(281, 10353, 11, 12),
(282, 10353, 38, 50),
(283, 10354, 1, 12),
(284, 10354, 29, 4),
(285, 10355, 24, 25),
(286, 10355, 57, 25),
(287, 10356, 31, 30),
(288, 10356, 55, 12),
(289, 10356, 69, 20),
(290, 10357, 10, 30),
(291, 10357, 26, 16),
(292, 10357, 60, 8),
(293, 10358, 24, 10),
(294, 10358, 34, 10),
(295, 10358, 36, 20),
(296, 10359, 16, 56),
(297, 10359, 31, 70),
(298, 10359, 60, 80),
(299, 10360, 28, 30),
(300, 10360, 29, 35),
(301, 10360, 38, 10),
(302, 10360, 49, 35),
(303, 10360, 54, 28),
(304, 10361, 39, 54),
(305, 10361, 60, 55),
(306, 10362, 25, 50),
(307, 10362, 51, 20),
(308, 10362, 54, 24),
(309, 10363, 31, 20),
(310, 10363, 75, 12),
(311, 10363, 76, 12),
(312, 10364, 69, 30),
(313, 10364, 71, 5),
(314, 10365, 11, 24),
(315, 10366, 65, 5),
(316, 10366, 77, 5),
(317, 10367, 34, 36),
(318, 10367, 54, 18),
(319, 10367, 65, 15),
(320, 10367, 77, 7),
(321, 10368, 21, 5),
(322, 10368, 28, 13),
(323, 10368, 57, 25),
(324, 10368, 64, 35),
(325, 10369, 29, 20),
(326, 10369, 56, 18),
(327, 10370, 1, 15),
(328, 10370, 64, 30),
(329, 10370, 74, 20),
(330, 10371, 36, 6),
(331, 10372, 20, 12),
(332, 10372, 38, 40),
(333, 10372, 60, 70),
(334, 10372, 72, 42),
(335, 10373, 58, 80),
(336, 10373, 71, 50),
(337, 10374, 31, 30),
(338, 10374, 58, 15),
(339, 10375, 14, 15),
(340, 10375, 54, 10),
(341, 10376, 31, 42),
(342, 10377, 28, 20),
(343, 10377, 39, 20),
(344, 10378, 71, 6),
(345, 10379, 41, 8),
(346, 10379, 63, 16),
(347, 10379, 65, 20),
(348, 10380, 30, 18),
(349, 10380, 53, 20),
(350, 10380, 60, 6),
(351, 10380, 70, 30),
(352, 10381, 74, 14),
(353, 10382, 5, 32),
(354, 10382, 18, 9),
(355, 10382, 29, 14),
(356, 10382, 33, 60),
(357, 10382, 74, 50),
(358, 10383, 13, 20),
(359, 10383, 50, 15),
(360, 10383, 56, 20),
(361, 10384, 20, 28),
(362, 10384, 60, 15),
(363, 10385, 7, 10),
(364, 10385, 60, 20),
(365, 10385, 68, 8),
(366, 10386, 24, 15),
(367, 10386, 34, 10),
(368, 10387, 24, 15),
(369, 10387, 28, 6),
(370, 10387, 59, 12),
(371, 10387, 71, 15),
(372, 10388, 45, 15),
(373, 10388, 52, 20),
(374, 10388, 53, 40),
(375, 10389, 10, 16),
(376, 10389, 55, 15),
(377, 10389, 62, 20),
(378, 10389, 70, 30),
(379, 10390, 31, 60),
(380, 10390, 35, 40),
(381, 10390, 46, 45),
(382, 10390, 72, 24),
(383, 10391, 13, 18),
(384, 10392, 69, 50),
(385, 10393, 2, 25),
(386, 10393, 14, 42),
(387, 10393, 25, 7),
(388, 10393, 26, 70),
(389, 10393, 31, 32),
(390, 10394, 13, 10),
(391, 10394, 62, 10),
(392, 10395, 46, 28),
(393, 10395, 53, 70),
(394, 10395, 69, 8),
(395, 10396, 23, 40),
(396, 10396, 71, 60),
(397, 10396, 72, 21),
(398, 10397, 21, 10),
(399, 10397, 51, 18),
(400, 10398, 35, 30),
(401, 10398, 55, 120),
(402, 10399, 68, 60),
(403, 10399, 71, 30),
(404, 10399, 76, 35),
(405, 10399, 77, 14),
(406, 10400, 29, 21),
(407, 10400, 35, 35),
(408, 10400, 49, 30),
(409, 10401, 30, 18),
(410, 10401, 56, 70),
(411, 10401, 65, 20),
(412, 10401, 71, 60),
(413, 10402, 23, 60),
(414, 10402, 63, 65),
(415, 10403, 16, 21),
(416, 10403, 48, 70),
(417, 10404, 26, 30),
(418, 10404, 42, 40),
(419, 10404, 49, 30),
(420, 10405, 3, 50),
(421, 10406, 1, 10),
(422, 10406, 21, 30),
(423, 10406, 28, 42),
(424, 10406, 36, 5),
(425, 10406, 40, 2),
(426, 10407, 11, 30),
(427, 10407, 69, 15),
(428, 10407, 71, 15),
(429, 10408, 37, 10),
(430, 10408, 54, 6),
(431, 10408, 62, 35),
(432, 10409, 14, 12),
(433, 10409, 21, 12),
(434, 10410, 33, 49),
(435, 10410, 59, 16),
(436, 10411, 41, 25),
(437, 10411, 44, 40),
(438, 10411, 59, 9),
(439, 10412, 14, 20),
(440, 10413, 1, 24),
(441, 10413, 62, 40),
(442, 10413, 76, 14),
(443, 10414, 19, 18),
(444, 10414, 33, 50),
(445, 10415, 17, 2),
(446, 10415, 33, 20),
(447, 10416, 19, 20),
(448, 10416, 53, 10),
(449, 10416, 57, 20),
(450, 10417, 38, 50),
(451, 10417, 46, 2),
(452, 10417, 68, 36),
(453, 10417, 77, 35),
(454, 10418, 2, 60),
(455, 10418, 47, 55),
(456, 10418, 61, 16),
(457, 10418, 74, 15),
(458, 10419, 60, 60),
(459, 10419, 69, 20),
(460, 10420, 9, 20),
(461, 10420, 13, 2),
(462, 10420, 70, 8),
(463, 10420, 73, 20),
(464, 10421, 19, 4),
(465, 10421, 26, 30),
(466, 10421, 53, 15),
(467, 10421, 77, 10),
(468, 10422, 26, 2),
(469, 10423, 31, 14),
(470, 10423, 59, 20),
(471, 10424, 35, 60),
(472, 10424, 38, 49),
(473, 10424, 68, 30),
(474, 10425, 55, 10),
(475, 10425, 76, 20),
(476, 10426, 56, 5),
(477, 10426, 64, 7),
(478, 10427, 14, 35),
(479, 10428, 46, 20),
(480, 10429, 50, 40),
(481, 10429, 63, 35),
(482, 10430, 17, 45),
(483, 10430, 21, 50),
(484, 10430, 56, 30),
(485, 10430, 59, 70),
(486, 10431, 17, 50),
(487, 10431, 40, 50),
(488, 10431, 47, 30),
(489, 10432, 26, 10),
(490, 10432, 54, 40),
(491, 10433, 56, 28),
(492, 10434, 11, 6),
(493, 10434, 76, 18),
(494, 10435, 2, 10),
(495, 10435, 22, 12),
(496, 10435, 72, 10),
(497, 10436, 46, 5),
(498, 10436, 56, 40),
(499, 10436, 64, 30),
(500, 10436, 75, 24),
(501, 10437, 53, 15),
(502, 10438, 19, 15),
(503, 10438, 34, 20),
(504, 10438, 57, 15),
(505, 10439, 12, 15),
(506, 10439, 16, 16),
(507, 10439, 64, 6),
(508, 10439, 74, 30),
(509, 10440, 2, 45),
(510, 10440, 16, 49),
(511, 10440, 29, 24),
(512, 10440, 61, 90),
(513, 10441, 27, 50),
(514, 10442, 11, 30),
(515, 10442, 54, 80),
(516, 10442, 66, 60),
(517, 10443, 11, 6),
(518, 10443, 28, 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE `orders` (
  `OrderID` int(11) NOT NULL,
  `CustomerID` int(11) DEFAULT NULL,
  `EmployeeID` int(11) DEFAULT NULL,
  `OrderDate` datetime DEFAULT NULL,
  `ShipperID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `orders`
--

INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `ShipperID`) VALUES
(10248, 90, 5, '1996-07-04 00:00:00', 3),
(10249, 81, 6, '1996-07-05 00:00:00', 1),
(10250, 34, 4, '1996-07-08 00:00:00', 2),
(10251, 84, 3, '1996-07-08 00:00:00', 1),
(10252, 76, 4, '1996-07-09 00:00:00', 2),
(10253, 34, 3, '1996-07-10 00:00:00', 2),
(10254, 14, 5, '1996-07-11 00:00:00', 2),
(10255, 68, 9, '1996-07-12 00:00:00', 3),
(10256, 88, 3, '1996-07-15 00:00:00', 2),
(10257, 35, 4, '1996-07-16 00:00:00', 3),
(10258, 20, 1, '1996-07-17 00:00:00', 1),
(10259, 13, 4, '1996-07-18 00:00:00', 3),
(10260, 55, 4, '1996-07-19 00:00:00', 1),
(10261, 61, 4, '1996-07-19 00:00:00', 2),
(10262, 65, 8, '1996-07-22 00:00:00', 3),
(10263, 20, 9, '1996-07-23 00:00:00', 3),
(10264, 24, 6, '1996-07-24 00:00:00', 3),
(10265, 7, 2, '1996-07-25 00:00:00', 1),
(10266, 87, 3, '1996-07-26 00:00:00', 3),
(10267, 25, 4, '1996-07-29 00:00:00', 1),
(10268, 33, 8, '1996-07-30 00:00:00', 3),
(10269, 89, 5, '1996-07-31 00:00:00', 1),
(10270, 87, 1, '1996-08-01 00:00:00', 1),
(10271, 75, 6, '1996-08-01 00:00:00', 2),
(10272, 65, 6, '1996-08-02 00:00:00', 2),
(10273, 63, 3, '1996-08-05 00:00:00', 3),
(10274, 85, 6, '1996-08-06 00:00:00', 1),
(10275, 49, 1, '1996-08-07 00:00:00', 1),
(10276, 80, 8, '1996-08-08 00:00:00', 3),
(10277, 52, 2, '1996-08-09 00:00:00', 3),
(10278, 5, 8, '1996-08-12 00:00:00', 2),
(10279, 44, 8, '1996-08-13 00:00:00', 2),
(10280, 5, 2, '1996-08-14 00:00:00', 1),
(10281, 69, 4, '1996-08-14 00:00:00', 1),
(10282, 69, 4, '1996-08-15 00:00:00', 1),
(10283, 46, 3, '1996-08-16 00:00:00', 3),
(10284, 44, 4, '1996-08-19 00:00:00', 1),
(10285, 63, 1, '1996-08-20 00:00:00', 2),
(10286, 63, 8, '1996-08-21 00:00:00', 3),
(10287, 67, 8, '1996-08-22 00:00:00', 3),
(10288, 66, 4, '1996-08-23 00:00:00', 1),
(10289, 11, 7, '1996-08-26 00:00:00', 3),
(10290, 15, 8, '1996-08-27 00:00:00', 1),
(10291, 61, 6, '1996-08-27 00:00:00', 2),
(10292, 81, 1, '1996-08-28 00:00:00', 2),
(10293, 80, 1, '1996-08-29 00:00:00', 3),
(10294, 65, 4, '1996-08-30 00:00:00', 2),
(10295, 85, 2, '1996-09-02 00:00:00', 2),
(10296, 46, 6, '1996-09-03 00:00:00', 1),
(10297, 7, 5, '1996-09-04 00:00:00', 2),
(10298, 37, 6, '1996-09-05 00:00:00', 2),
(10299, 67, 4, '1996-09-06 00:00:00', 2),
(10300, 49, 2, '1996-09-09 00:00:00', 2),
(10301, 86, 8, '1996-09-09 00:00:00', 2),
(10302, 76, 4, '1996-09-10 00:00:00', 2),
(10303, 30, 7, '1996-09-11 00:00:00', 2),
(10304, 80, 1, '1996-09-12 00:00:00', 2),
(10305, 55, 8, '1996-09-13 00:00:00', 3),
(10306, 69, 1, '1996-09-16 00:00:00', 3),
(10307, 48, 2, '1996-09-17 00:00:00', 2),
(10308, 2, 7, '1996-09-18 00:00:00', 3),
(10309, 37, 3, '1996-09-19 00:00:00', 1),
(10310, 77, 8, '1996-09-20 00:00:00', 2),
(10311, 18, 1, '1996-09-20 00:00:00', 3),
(10312, 86, 2, '1996-09-23 00:00:00', 2),
(10313, 63, 2, '1996-09-24 00:00:00', 2),
(10314, 65, 1, '1996-09-25 00:00:00', 2),
(10315, 38, 4, '1996-09-26 00:00:00', 2),
(10316, 65, 1, '1996-09-27 00:00:00', 3),
(10317, 48, 6, '1996-09-30 00:00:00', 1),
(10318, 38, 8, '1996-10-01 00:00:00', 2),
(10319, 80, 7, '1996-10-02 00:00:00', 3),
(10320, 87, 5, '1996-10-03 00:00:00', 3),
(10321, 38, 3, '1996-10-03 00:00:00', 2),
(10322, 58, 7, '1996-10-04 00:00:00', 3),
(10323, 39, 4, '1996-10-07 00:00:00', 1),
(10324, 71, 9, '1996-10-08 00:00:00', 1),
(10325, 39, 1, '1996-10-09 00:00:00', 3),
(10326, 8, 4, '1996-10-10 00:00:00', 2),
(10327, 24, 2, '1996-10-11 00:00:00', 1),
(10328, 28, 4, '1996-10-14 00:00:00', 3),
(10329, 75, 4, '1996-10-15 00:00:00', 2),
(10330, 46, 3, '1996-10-16 00:00:00', 1),
(10331, 9, 9, '1996-10-16 00:00:00', 1),
(10332, 51, 3, '1996-10-17 00:00:00', 2),
(10333, 87, 5, '1996-10-18 00:00:00', 3),
(10334, 84, 8, '1996-10-21 00:00:00', 2),
(10335, 37, 7, '1996-10-22 00:00:00', 2),
(10336, 60, 7, '1996-10-23 00:00:00', 2),
(10337, 25, 4, '1996-10-24 00:00:00', 3),
(10338, 55, 4, '1996-10-25 00:00:00', 3),
(10339, 51, 2, '1996-10-28 00:00:00', 2),
(10340, 9, 1, '1996-10-29 00:00:00', 3),
(10341, 73, 7, '1996-10-29 00:00:00', 3),
(10342, 25, 4, '1996-10-30 00:00:00', 2),
(10343, 44, 4, '1996-10-31 00:00:00', 1),
(10344, 89, 4, '1996-11-01 00:00:00', 2),
(10345, 63, 2, '1996-11-04 00:00:00', 2),
(10346, 65, 3, '1996-11-05 00:00:00', 3),
(10347, 21, 4, '1996-11-06 00:00:00', 3),
(10348, 86, 4, '1996-11-07 00:00:00', 2),
(10349, 75, 7, '1996-11-08 00:00:00', 1),
(10350, 41, 6, '1996-11-11 00:00:00', 2),
(10351, 20, 1, '1996-11-11 00:00:00', 1),
(10352, 28, 3, '1996-11-12 00:00:00', 3),
(10353, 59, 7, '1996-11-13 00:00:00', 3),
(10354, 58, 8, '1996-11-14 00:00:00', 3),
(10355, 4, 6, '1996-11-15 00:00:00', 1),
(10356, 86, 6, '1996-11-18 00:00:00', 2),
(10357, 46, 1, '1996-11-19 00:00:00', 3),
(10358, 41, 5, '1996-11-20 00:00:00', 1),
(10359, 72, 5, '1996-11-21 00:00:00', 3),
(10360, 7, 4, '1996-11-22 00:00:00', 3),
(10361, 63, 1, '1996-11-22 00:00:00', 2),
(10362, 9, 3, '1996-11-25 00:00:00', 1),
(10363, 17, 4, '1996-11-26 00:00:00', 3),
(10364, 19, 1, '1996-11-26 00:00:00', 1),
(10365, 3, 3, '1996-11-27 00:00:00', 2),
(10366, 29, 8, '1996-11-28 00:00:00', 2),
(10367, 83, 7, '1996-11-28 00:00:00', 3),
(10368, 20, 2, '1996-11-29 00:00:00', 2),
(10369, 75, 8, '1996-12-02 00:00:00', 2),
(10370, 14, 6, '1996-12-03 00:00:00', 2),
(10371, 41, 1, '1996-12-03 00:00:00', 1),
(10372, 62, 5, '1996-12-04 00:00:00', 2),
(10373, 37, 4, '1996-12-05 00:00:00', 3),
(10374, 91, 1, '1996-12-05 00:00:00', 3),
(10375, 36, 3, '1996-12-06 00:00:00', 2),
(10376, 51, 1, '1996-12-09 00:00:00', 2),
(10377, 72, 1, '1996-12-09 00:00:00', 3),
(10378, 24, 5, '1996-12-10 00:00:00', 3),
(10379, 61, 2, '1996-12-11 00:00:00', 1),
(10380, 37, 8, '1996-12-12 00:00:00', 3),
(10381, 46, 3, '1996-12-12 00:00:00', 3),
(10382, 20, 4, '1996-12-13 00:00:00', 1),
(10383, 4, 8, '1996-12-16 00:00:00', 3),
(10384, 5, 3, '1996-12-16 00:00:00', 3),
(10385, 75, 1, '1996-12-17 00:00:00', 2),
(10386, 21, 9, '1996-12-18 00:00:00', 3),
(10387, 70, 1, '1996-12-18 00:00:00', 2),
(10388, 72, 2, '1996-12-19 00:00:00', 1),
(10389, 10, 4, '1996-12-20 00:00:00', 2),
(10390, 20, 6, '1996-12-23 00:00:00', 1),
(10391, 17, 3, '1996-12-23 00:00:00', 3),
(10392, 59, 2, '1996-12-24 00:00:00', 3),
(10393, 71, 1, '1996-12-25 00:00:00', 3),
(10394, 36, 1, '1996-12-25 00:00:00', 3),
(10395, 35, 6, '1996-12-26 00:00:00', 1),
(10396, 25, 1, '1996-12-27 00:00:00', 3),
(10397, 60, 5, '1996-12-27 00:00:00', 1),
(10398, 71, 2, '1996-12-30 00:00:00', 3),
(10399, 83, 8, '1996-12-31 00:00:00', 3),
(10400, 19, 1, '1997-01-01 00:00:00', 3),
(10401, 65, 1, '1997-01-01 00:00:00', 1),
(10402, 20, 8, '1997-01-02 00:00:00', 2),
(10403, 20, 4, '1997-01-03 00:00:00', 3),
(10404, 49, 2, '1997-01-03 00:00:00', 1),
(10405, 47, 1, '1997-01-06 00:00:00', 1),
(10406, 62, 7, '1997-01-07 00:00:00', 1),
(10407, 56, 2, '1997-01-07 00:00:00', 2),
(10408, 23, 8, '1997-01-08 00:00:00', 1),
(10409, 54, 3, '1997-01-09 00:00:00', 1),
(10410, 10, 3, '1997-01-10 00:00:00', 3),
(10411, 10, 9, '1997-01-10 00:00:00', 3),
(10412, 87, 8, '1997-01-13 00:00:00', 2),
(10413, 41, 3, '1997-01-14 00:00:00', 2),
(10414, 21, 2, '1997-01-14 00:00:00', 3),
(10415, 36, 3, '1997-01-15 00:00:00', 1),
(10416, 87, 8, '1997-01-16 00:00:00', 3),
(10417, 73, 4, '1997-01-16 00:00:00', 3),
(10418, 63, 4, '1997-01-17 00:00:00', 1),
(10419, 68, 4, '1997-01-20 00:00:00', 2),
(10420, 88, 3, '1997-01-21 00:00:00', 1),
(10421, 61, 8, '1997-01-21 00:00:00', 1),
(10422, 27, 2, '1997-01-22 00:00:00', 1),
(10423, 31, 6, '1997-01-23 00:00:00', 3),
(10424, 51, 7, '1997-01-23 00:00:00', 2),
(10425, 41, 6, '1997-01-24 00:00:00', 2),
(10426, 29, 4, '1997-01-27 00:00:00', 1),
(10427, 59, 4, '1997-01-27 00:00:00', 2),
(10428, 66, 7, '1997-01-28 00:00:00', 1),
(10429, 37, 3, '1997-01-29 00:00:00', 2),
(10430, 20, 4, '1997-01-30 00:00:00', 1),
(10431, 10, 4, '1997-01-30 00:00:00', 2),
(10432, 75, 3, '1997-01-31 00:00:00', 2),
(10433, 60, 3, '1997-02-03 00:00:00', 3),
(10434, 24, 3, '1997-02-03 00:00:00', 2),
(10435, 16, 8, '1997-02-04 00:00:00', 2),
(10436, 7, 3, '1997-02-05 00:00:00', 2),
(10437, 87, 8, '1997-02-05 00:00:00', 1),
(10438, 79, 3, '1997-02-06 00:00:00', 2),
(10439, 51, 6, '1997-02-07 00:00:00', 3),
(10440, 71, 4, '1997-02-10 00:00:00', 2),
(10441, 55, 3, '1997-02-10 00:00:00', 2),
(10442, 20, 3, '1997-02-11 00:00:00', 2),
(10443, 66, 8, '1997-02-12 00:00:00', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `ProductID` int(11) NOT NULL,
  `ProductName` varchar(50) DEFAULT NULL,
  `SupplierID` int(11) DEFAULT NULL,
  `CategoryID` int(11) DEFAULT NULL,
  `Unit` varchar(25) DEFAULT NULL,
  `Price` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `Unit`, `Price`) VALUES
(1, 'Chais', 1, 1, '10 boxes x 20 bags', 18),
(2, 'Chang', 1, 1, '24 - 12 oz bottles', 19),
(3, 'Aniseed Syrup', 1, 2, '12 - 550 ml bottles', 10),
(4, 'Chef Anton\'s Cajun Seasoning', 2, 2, '48 - 6 oz jars', 22),
(5, 'Chef Anton\'s Gumbo Mix', 2, 2, '36 boxes', 21),
(6, 'Grandma\'s Boysenberry Spread', 3, 2, '12 - 8 oz jars', 25),
(7, 'Uncle Bob\'s Organic Dried Pears', 3, 7, '12 - 1 lb pkgs.', 30),
(8, 'Northwoods Cranberry Sauce', 3, 2, '12 - 12 oz jars', 40),
(9, 'Mishi Kobe Niku', 4, 6, '18 - 500 g pkgs.', 97),
(10, 'Ikura', 4, 8, '12 - 200 ml jars', 31),
(11, 'Queso Cabrales', 5, 4, '1 kg pkg.', 21),
(12, 'Queso Manchego La Pastora', 5, 4, '10 - 500 g pkgs.', 38),
(13, 'Konbu', 6, 8, '2 kg box', 6),
(14, 'Tofu', 6, 7, '40 - 100 g pkgs.', 23),
(15, 'Genen Shouyu', 6, 2, '24 - 250 ml bottles', 16),
(16, 'Pavlova', 7, 3, '32 - 500 g boxes', 17),
(17, 'Alice Mutton', 7, 6, '20 - 1 kg tins', 39),
(18, 'Carnarvon Tigers', 7, 8, '16 kg pkg.', 63),
(19, 'Teatime Chocolate Biscuits', 8, 3, '10 boxes x 12 pieces', 9),
(20, 'Sir Rodney\'s Marmalade', 8, 3, '30 gift boxes', 81),
(21, 'Sir Rodney\'s Scones', 8, 3, '24 pkgs. x 4 pieces', 10),
(22, 'Gustaf\'s Knäckebröd', 9, 5, '24 - 500 g pkgs.', 21),
(23, 'Tunnbröd', 9, 5, '12 - 250 g pkgs.', 9),
(24, 'Guaraná Fantástica', 10, 1, '12 - 355 ml cans', 5),
(25, 'NuNuCa Nuß-Nougat-Creme', 11, 3, '20 - 450 g glasses', 14),
(26, 'Gumbär Gummibärchen', 11, 3, '100 - 250 g bags', 31),
(27, 'Schoggi Schokolade', 11, 3, '100 - 100 g pieces', 44),
(28, 'Rössle Sauerkraut', 12, 7, '25 - 825 g cans', 46),
(29, 'Thüringer Rostbratwurst', 12, 6, '50 bags x 30 sausgs.', 124),
(30, 'Nord-Ost Matjeshering', 13, 8, '10 - 200 g glasses', 26),
(31, 'Gorgonzola Telino', 14, 4, '12 - 100 g pkgs', 13),
(32, 'Mascarpone Fabioli', 14, 4, '24 - 200 g pkgs.', 32),
(33, 'Geitost', 15, 4, '500 g', 3),
(34, 'Sasquatch Ale', 16, 1, '24 - 12 oz bottles', 14),
(35, 'Steeleye Stout', 16, 1, '24 - 12 oz bottles', 18),
(36, 'Inlagd Sill', 17, 8, '24 - 250 g jars', 19),
(37, 'Gravad lax', 17, 8, '12 - 500 g pkgs.', 26),
(38, 'Côte de Blaye', 18, 1, '12 - 75 cl bottles', 264),
(39, 'Chartreuse verte', 18, 1, '750 cc per bottle', 18),
(40, 'Boston Crab Meat', 19, 8, '24 - 4 oz tins', 18),
(41, 'Jack\'s New England Clam Chowder', 19, 8, '12 - 12 oz cans', 10),
(42, 'Singaporean Hokkien Fried Mee', 20, 5, '32 - 1 kg pkgs.', 14),
(43, 'Ipoh Coffee', 20, 1, '16 - 500 g tins', 46),
(44, 'Gula Malacca', 20, 2, '20 - 2 kg bags', 19),
(45, 'Røgede sild', 21, 8, '1k pkg.', 10),
(46, 'Spegesild', 21, 8, '4 - 450 g glasses', 12),
(47, 'Zaanse koeken', 22, 3, '10 - 4 oz boxes', 10),
(48, 'Chocolade', 22, 3, '10 pkgs.', 13),
(49, 'Maxilaku', 23, 3, '24 - 50 g pkgs.', 20),
(50, 'Valkoinen suklaa', 23, 3, '12 - 100 g bars', 16),
(51, 'Manjimup Dried Apples', 24, 7, '50 - 300 g pkgs.', 53),
(52, 'Filo Mix', 24, 5, '16 - 2 kg boxes', 7),
(53, 'Perth Pasties', 24, 6, '48 pieces', 33),
(54, 'Tourtière', 25, 6, '16 pies', 7),
(55, 'Pâté chinois', 25, 6, '24 boxes x 2 pies', 24),
(56, 'Gnocchi di nonna Alice', 26, 5, '24 - 250 g pkgs.', 38),
(57, 'Ravioli Angelo', 26, 5, '24 - 250 g pkgs.', 20),
(58, 'Escargots de Bourgogne', 27, 8, '24 pieces', 13),
(59, 'Raclette Courdavault', 28, 4, '5 kg pkg.', 55),
(60, 'Camembert Pierrot', 28, 4, '15 - 300 g rounds', 34),
(61, 'Sirop d\'érable', 29, 2, '24 - 500 ml bottles', 29),
(62, 'Tarte au sucre', 29, 3, '48 pies', 49),
(63, 'Vegie-spread', 7, 2, '15 - 625 g jars', 44),
(64, 'Wimmers gute Semmelknödel', 12, 5, '20 bags x 4 pieces', 33),
(65, 'Louisiana Fiery Hot Pepper Sauce', 2, 2, '32 - 8 oz bottles', 21),
(66, 'Louisiana Hot Spiced Okra', 2, 2, '24 - 8 oz jars', 17),
(67, 'Laughing Lumberjack Lager', 16, 1, '24 - 12 oz bottles', 14),
(68, 'Scottish Longbreads', 8, 3, '10 boxes x 8 pieces', 13),
(69, 'Gudbrandsdalsost', 15, 4, '10 kg pkg.', 36),
(70, 'Outback Lager', 7, 1, '24 - 355 ml bottles', 15),
(71, 'Fløtemysost', 15, 4, '10 - 500 g pkgs.', 22),
(72, 'Mozzarella di Giovanni', 14, 4, '24 - 200 g pkgs.', 35),
(73, 'Röd Kaviar', 17, 8, '24 - 150 g jars', 15),
(74, 'Longlife Tofu', 4, 7, '5 kg pkg.', 10),
(75, 'Rhönbräu Klosterbier', 12, 1, '24 - 0.5 l bottles', 8),
(76, 'Lakkalikööri', 23, 1, '500 ml', 18),
(77, 'Original Frankfurter grüne Soße', 12, 2, '12 boxes', 13);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `shippers`
--

CREATE TABLE `shippers` (
  `ShipperID` int(11) NOT NULL,
  `ShipperName` varchar(25) DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `shippers`
--

INSERT INTO `shippers` (`ShipperID`, `ShipperName`, `Phone`) VALUES
(1, 'Speedy Express', '(503) 555-9831'),
(2, 'United Package', '(503) 555-3199'),
(3, 'Federal Shipping', '(503) 555-9931');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `suppliers`
--

CREATE TABLE `suppliers` (
  `SupplierID` int(11) NOT NULL,
  `SupplierName` varchar(50) DEFAULT NULL,
  `ContactName` varchar(50) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `City` varchar(20) DEFAULT NULL,
  `PostalCode` varchar(10) DEFAULT NULL,
  `Country` varchar(15) DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `suppliers`
--

INSERT INTO `suppliers` (`SupplierID`, `SupplierName`, `ContactName`, `Address`, `City`, `PostalCode`, `Country`, `Phone`) VALUES
(1, 'Exotic Liquid', 'Charlotte Cooper', '49 Gilbert St.', 'Londona', 'EC1 4SD', 'UK', '(171) 555-2222'),
(2, 'New Orleans Cajun Delights', 'Shelley Burke', 'P.O. Box 78934', 'New Orleans', '70117', 'USA', '(100) 555-4822'),
(3, 'Grandma Kelly\'s Homestead', 'Regina Murphy', '707 Oxford Rd.', 'Ann Arbor', '48104', 'USA', '(313) 555-5735'),
(4, 'Tokyo Traders', 'Yoshi Nagase', '9-8 Sekimai Musashino-shi', 'Tokyo', '100', 'Japan', '(03) 3555-5011'),
(5, 'Cooperativa de Quesos \'Las Cabras\'', 'Antonio del Valle Saavedra', 'Calle del Rosal 4', 'Oviedo', '33007', 'Spain', '(98) 598 76 54'),
(6, 'Mayumi\'s', 'Mayumi Ohno', '92 Setsuko Chuo-ku', 'Osaka', '545', 'Japan', '(06) 431-7877'),
(7, 'Pavlova, Ltd.', 'Ian Devling', '74 Rose St. Moonie Ponds', 'Melbourne', '3058', 'Australia', '(03) 444-2343'),
(8, 'Specialty Biscuits, Ltd.', 'Peter Wilson', '29 King\'s Way', 'Manchester', 'M14 GSD', 'UK', '(161) 555-4448'),
(9, 'PB Knäckebröd AB', 'Lars Peterson', 'Kaloadagatan 13', 'Göteborg', 'S-345 67', 'Sweden', '031-987 65 43'),
(10, 'Refrescos Americanas LTDA', 'Carlos Diaz', 'Av. das Americanas 12.890', 'São Paulo', '5442', 'Brazil', '(11) 555 4640'),
(11, 'Heli Süßwaren GmbH & Co. KG', 'Petra Winkler', 'Tiergartenstraße 5', 'Berlin', '10785', 'Germany', '(010) 9984510'),
(12, 'Plutzer Lebensmittelgroßmärkte AG', 'Martin Bein', 'Bogenallee 51', 'Frankfurt', '60439', 'Germany', '(069) 992755'),
(13, 'Nord-Ost-Fisch Handelsgesellschaft mbH', 'Sven Petersen', 'Frahmredder 112a', 'Cuxhaven', '27478', 'Germany', '(04721) 8713'),
(14, 'Formaggi Fortini s.r.l.', 'Elio Rossi', 'Viale Dante, 75', 'Ravenna', '48100', 'Italy', '(0544) 60323'),
(15, 'Norske Meierier', 'Beate Vileid', 'Hatlevegen 5', 'Sandvika', '1320', 'Norway', '(0)2-953010'),
(16, 'Bigfoot Breweries', 'Cheryl Saylor', '3400 - 8th Avenue Suite 210', 'Bend', '97101', 'USA', '(503) 555-9931'),
(17, 'Svensk Sjöföda AB', 'Michael Björn', 'Brovallavägen 231', 'Stockholm', 'S-123 45', 'Sweden', '08-123 45 67'),
(18, 'Aux joyeux ecclésiastiques', 'Guylène Nodier', '203, Rue des Francs-Bourgeois', 'Paris', '75004', 'France', '(1) 03.83.00.68'),
(19, 'New England Seafood Cannery', 'Robb Merchant', 'Order Processing Dept. 2100 Paul Revere Blvd.', 'Boston', '2134', 'USA', '(617) 555-3267'),
(20, 'Leka Trading', 'Chandra Leka', '471 Serangoon Loop, Suite #402', 'Singapore', '512', 'Singapore', '555-8787'),
(21, 'Lyngbysild', 'Niels Petersen', 'Lyngbysild Fiskebakken 10', 'Lyngby', '2800', 'Denmark', '43844108'),
(22, 'Zaanse Snoepfabriek', 'Dirk Luchte', 'Verkoop Rijnweg 22', 'Zaandam', '9999 ZZ', 'Netherlands', '(12345) 1212'),
(23, 'Karkki Oy', 'Anne Heikkonen', 'Valtakatu 12', 'Lappeenranta', '53120', 'Finland', '(953) 10956'),
(24, 'G\'day, Mate', 'Wendy Mackenzie', '170 Prince Edward Parade Hunter\'s Hill', 'Sydney', '2042', 'Australia', '(02) 555-5914'),
(25, 'Ma Maison', 'Jean-Guy Lauzon', '2960 Rue St. Laurent', 'Montréal', 'H1J 1C3', 'Canada', '(514) 555-9022'),
(26, 'Pasta Buttini s.r.l.', 'Giovanni Giudici', 'Via dei Gelsomini, 153', 'Salerno', '84100', 'Italy', '(089) 6547665'),
(27, 'Escargots Nouveaux', 'Marie Delamare', '22, rue H. Voiron', 'Montceau', '71300', 'France', '85.57.00.07'),
(28, 'Gai pâturage', 'Eliane Noz', 'Bat. B 3, rue des Alpes', 'Annecy', '74000', 'France', '38.76.98.06'),
(29, 'Forêts d\'érables', 'Chantal Goulet', '148 rue Chasseur', 'Ste-Hyacinthe', 'J2S 7S8', 'Canada', '(514) 555-2955');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`CategoryID`);

--
-- Indices de la tabla `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Indices de la tabla `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`EmployeeID`);

--
-- Indices de la tabla `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`OrderDetailID`),
  ADD KEY `OrderID` (`OrderID`),
  ADD KEY `ProductID` (`ProductID`);

--
-- Indices de la tabla `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderID`),
  ADD KEY `EmployeeID` (`EmployeeID`),
  ADD KEY `CustomerID` (`CustomerID`),
  ADD KEY `ShipperID` (`ShipperID`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ProductID`),
  ADD KEY `CategoryID` (`CategoryID`),
  ADD KEY `SupplierID` (`SupplierID`);

--
-- Indices de la tabla `shippers`
--
ALTER TABLE `shippers`
  ADD PRIMARY KEY (`ShipperID`);

--
-- Indices de la tabla `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`SupplierID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `CategoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `customers`
--
ALTER TABLE `customers`
  MODIFY `CustomerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT de la tabla `employees`
--
ALTER TABLE `employees`
  MODIFY `EmployeeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `OrderDetailID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=519;

--
-- AUTO_INCREMENT de la tabla `orders`
--
ALTER TABLE `orders`
  MODIFY `OrderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10444;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `ProductID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT de la tabla `shippers`
--
ALTER TABLE `shippers`
  MODIFY `ShipperID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `SupplierID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD CONSTRAINT `orderdetails_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `orders` (`OrderID`),
  ADD CONSTRAINT `orderdetails_ibfk_2` FOREIGN KEY (`ProductID`) REFERENCES `products` (`ProductID`);

--
-- Filtros para la tabla `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`EmployeeID`) REFERENCES `employees` (`EmployeeID`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`CustomerID`) REFERENCES `customers` (`CustomerID`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`ShipperID`) REFERENCES `shippers` (`ShipperID`);

--
-- Filtros para la tabla `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`CategoryID`) REFERENCES `categories` (`CategoryID`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`SupplierID`) REFERENCES `suppliers` (`SupplierID`);
--
-- Base de datos: `northwinddw`
--
CREATE DATABASE IF NOT EXISTS `northwinddw` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `northwinddw`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dimcliente`
--

CREATE TABLE `dimcliente` (
  `ClienteKey` int(11) NOT NULL,
  `ClienteID` varchar(5) NOT NULL,
  `NombreCliente` varchar(100) DEFAULT NULL,
  `Contacto` varchar(100) DEFAULT NULL,
  `Ciudad` varchar(50) DEFAULT NULL,
  `País` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `dimcliente`
--

INSERT INTO `dimcliente` (`ClienteKey`, `ClienteID`, `NombreCliente`, `Contacto`, `Ciudad`, `País`) VALUES
(1, '1', 'Alfreds Futterkiste', 'Maria Anders', 'Berlin', 'Germany'),
(2, '2', 'Ana Trujillo Emparedados y helados', 'Ana Trujillo', 'México D.F.', 'Mexico'),
(3, '3', 'Antonio Moreno Taquería', 'Antonio Moreno', 'México D.F.', 'Mexico'),
(4, '4', 'Around the Horn', 'Thomas Hardy', 'London', 'UK'),
(5, '5', 'Berglunds snabbköp', 'Christina Berglund', 'Luleå', 'Sweden'),
(6, '6', 'Blauer See Delikatessen', 'Hanna Moos', 'Mannheim', 'Germany'),
(7, '7', 'Blondel père et fils', 'Frédérique Citeaux', 'Strasbourg', 'France'),
(8, '8', 'Bólido Comidas preparadas', 'Martín Sommer', 'Madrid', 'Spain'),
(9, '9', 'Bon app\'\'', 'Laurence Lebihans', 'Marseille', 'France'),
(10, '10', 'Bottom-Dollar Marketse', 'Elizabeth Lincoln', 'Tsawassen', 'Canada'),
(11, '11', 'B\'\'s Beverages', 'Victoria Ashworth', 'London', 'UK'),
(12, '12', 'Cactus Comidas para llevar', 'Patricio Simpson', 'Buenos Aires', 'Argentina'),
(13, '13', 'Centro comercial Moctezuma', 'Francisco Chang', 'México D.F.', 'Mexico'),
(14, '14', 'Chop-suey Chinese', 'Yang Wang', 'Bern', 'Switzerland'),
(15, '15', 'Comércio Mineiro', 'Pedro Afonso', 'São Paulo', 'Brazil'),
(16, '16', 'Consolidated Holdings', 'Elizabeth Brown', 'London', 'UK'),
(17, '17', 'Drachenblut Delikatessend', 'Sven Ottlieb', 'Aachen', 'Germany'),
(18, '18', 'Du monde entier', 'Janine Labrune', 'Nantes', 'France'),
(19, '19', 'Eastern Connection', 'Ann Devon', 'London', 'UK'),
(20, '20', 'Ernst Handel', 'Roland Mendel', 'Graz', 'Austria'),
(21, '21', 'Familia Arquibaldo', 'Aria Cruz', 'São Paulo', 'Brazil'),
(22, '22', 'FISSA Fabrica Inter. Salchichas S.A.', 'Diego Roel', 'Madrid', 'Spain'),
(23, '23', 'Folies gourmandes', 'Martine Rancé', 'Lille', 'France'),
(24, '24', 'Folk och fä HB', 'Maria Larsson', 'Bräcke', 'Sweden'),
(25, '25', 'Frankenversand', 'Peter Franken', 'München', 'Germany'),
(26, '26', 'France restauration', 'Carine Schmitt', 'Nantes', 'France'),
(27, '27', 'Franchi S.p.A.', 'Paolo Accorti', 'Torino', 'Italy'),
(28, '28', 'Furia Bacalhau e Frutos do Mar', 'Lino Rodriguez', 'Lisboa', 'Portugal'),
(29, '29', 'Galería del gastrónomo', 'Eduardo Saavedra', 'Barcelona', 'Spain'),
(30, '30', 'Godos Cocina Típica', 'José Pedro Freyre', 'Sevilla', 'Spain'),
(31, '31', 'Gourmet Lanchonetes', 'André Fonseca', 'Campinas', 'Brazil'),
(32, '32', 'Great Lakes Food Market', 'Howard Snyder', 'Eugene', 'USA'),
(33, '33', 'GROSELLA-Restaurante', 'Manuel Pereira', 'Caracas', 'Venezuela'),
(34, '34', 'Hanari Carnes', 'Mario Pontes', 'Rio de Janeiro', 'Brazil'),
(35, '35', 'HILARIÓN-Abastos', 'Carlos Hernández', 'San Cristóbal', 'Venezuela'),
(36, '36', 'Hungry Coyote Import Store', 'Yoshi Latimer', 'Elgin', 'USA'),
(37, '37', 'Hungry Owl All-Night Grocers', 'Patricia McKenna', 'Cork', 'Ireland'),
(38, '38', 'Island Trading', 'Helen Bennett', 'Cowes', 'UK'),
(39, '39', 'Königlich Essen', 'Philip Cramer', 'Brandenburg', 'Germany'),
(40, '40', 'La corne d\'\'abondance', 'Daniel Tonini', 'Versailles', 'France'),
(41, '41', 'La maison d\'\'Asie', 'Annette Roulet', 'Toulouse', 'France'),
(42, '42', 'Laughing Bacchus Wine Cellars', 'Yoshi Tannamuri', 'Vancouver', 'Canada'),
(43, '43', 'Lazy K Kountry Store', 'John Steel', 'Walla Walla', 'USA'),
(44, '44', 'Lehmanns Marktstand', 'Renate Messner', 'Frankfurt a.M.', 'Germany'),
(45, '45', 'Let\'\'s Stop N Shop', 'Jaime Yorres', 'San Francisco', 'USA'),
(46, '46', 'LILA-Supermercado', 'Carlos González', 'Barquisimeto', 'Venezuela'),
(47, '47', 'LINO-Delicateses', 'Felipe Izquierdo', 'I. de Margarita', 'Venezuela'),
(48, '48', 'Lonesome Pine Restaurant', 'Fran Wilson', 'Portland', 'USA'),
(49, '49', 'Magazzini Alimentari Riuniti', 'Giovanni Rovelli', 'Bergamo', 'Italy'),
(50, '50', 'Maison Dewey', 'Catherine Dewey', 'Bruxelles', 'Belgium'),
(51, '51', 'Mère Paillarde', 'Jean Fresnière', 'Montréal', 'Canada'),
(52, '52', 'Morgenstern Gesundkost', 'Alexander Feuer', 'Leipzig', 'Germany'),
(53, '53', 'North/South', 'Simon Crowther', 'London', 'UK'),
(54, '54', 'Océano Atlántico Ltda.', 'Yvonne Moncada', 'Buenos Aires', 'Argentina'),
(55, '55', 'Old World Delicatessen', 'Rene Phillips', 'Anchorage', 'USA'),
(56, '56', 'Ottilies Käseladen', 'Henriette Pfalzheim', 'Köln', 'Germany'),
(57, '57', 'Paris spécialités', 'Marie Bertrand', 'Paris', 'France'),
(58, '58', 'Pericles Comidas clásicas', 'Guillermo Fernández', 'México D.F.', 'Mexico'),
(59, '59', 'Piccolo und mehr', 'Georg Pipps', 'Salzburg', 'Austria'),
(60, '60', 'Princesa Isabel Vinhoss', 'Isabel de Castro', 'Lisboa', 'Portugal'),
(61, '61', 'Que Delícia', 'Bernardo Batista', 'Rio de Janeiro', 'Brazil'),
(62, '62', 'Queen Cozinha', 'Lúcia Carvalho', 'São Paulo', 'Brazil'),
(63, '63', 'QUICK-Stop', 'Horst Kloss', 'Cunewalde', 'Germany'),
(64, '64', 'Rancho grande', 'Sergio Gutiérrez', 'Buenos Aires', 'Argentina'),
(65, '65', 'Rattlesnake Canyon Grocery', 'Paula Wilson', 'Albuquerque', 'USA'),
(66, '66', 'Reggiani Caseifici', 'Maurizio Moroni', 'Reggio Emilia', 'Italy'),
(67, '67', 'Ricardo Adocicados', 'Janete Limeira', 'Rio de Janeiro', 'Brazil'),
(68, '68', 'Richter Supermarkt', 'Michael Holz', 'Genève', 'Switzerland'),
(69, '69', 'Romero y tomillo', 'Alejandra Camino', 'Madrid', 'Spain'),
(70, '70', 'Santé Gourmet', 'Jonas Bergulfsen', 'Stavern', 'Norway'),
(71, '71', 'Save-a-lot Markets', 'Jose Pavarotti', 'Boise', 'USA'),
(72, '72', 'Seven Seas Imports', 'Hari Kumar', 'London', 'UK'),
(73, '73', 'Simons bistro', 'Jytte Petersen', 'København', 'Denmark'),
(74, '74', 'Spécialités du monde', 'Dominique Perrier', 'Paris', 'France'),
(75, '75', 'Split Rail Beer & Ale', 'Art Braunschweiger', 'Lander', 'USA'),
(76, '76', 'Suprêmes délices', 'Pascale Cartrain', 'Charleroi', 'Belgium'),
(77, '77', 'The Big Cheese', 'Liz Nixon', 'Portland', 'USA'),
(78, '78', 'The Cracker Box', 'Liu Wong', 'Butte', 'USA'),
(79, '79', 'Toms Spezialitäten', 'Karin Josephs', 'Münster', 'Germany'),
(80, '80', 'Tortuga Restaurante', 'Miguel Angel Paolino', 'México D.F.', 'Mexico'),
(81, '81', 'Tradição Hipermercados', 'Anabela Domingues', 'São Paulo', 'Brazil'),
(82, '82', 'Trail\'\'s Head Gourmet Provisioners', 'Helvetius Nagy', 'Kirkland', 'USA'),
(83, '83', 'Vaffeljernet', 'Palle Ibsen', 'Århus', 'Denmark'),
(84, '84', 'Victuailles en stock', 'Mary Saveley', 'Lyon', 'France'),
(85, '85', 'Vins et alcools Chevalier', 'Paul Henriot', 'Reims', 'France'),
(86, '86', 'Die Wandernde Kuh', 'Rita Müller', 'Stuttgart', 'Germany'),
(87, '87', 'Wartian Herkku', 'Pirkko Koskitalo', 'Oulu', 'Finland'),
(88, '88', 'Wellington Importadora', 'Paula Parente', 'Resende', 'Brazil'),
(89, '89', 'White Clover Markets', 'Karl Jablonski', 'Seattle', 'USA'),
(90, '90', 'Wilman Kala', 'Matti Karttunen', 'Helsinki', 'Finland'),
(91, '91', 'Wolski', 'Zbyszek', 'Walla', 'Poland');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dimempleado`
--

CREATE TABLE `dimempleado` (
  `EmpleadoKey` int(11) NOT NULL,
  `EmpleadoID` int(11) NOT NULL,
  `NombreEmpleado` varchar(100) DEFAULT NULL,
  `Título` varchar(50) DEFAULT NULL,
  `Ciudad` varchar(50) DEFAULT NULL,
  `País` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `dimempleado`
--

INSERT INTO `dimempleado` (`EmpleadoKey`, `EmpleadoID`, `NombreEmpleado`, `Título`, `Ciudad`, `País`) VALUES
(1, 1, 'NancyDavolio', NULL, NULL, NULL),
(2, 2, 'AndrewFuller', NULL, NULL, NULL),
(3, 3, 'JanetLeverling', NULL, NULL, NULL),
(4, 4, 'MargaretPeacock', NULL, NULL, NULL),
(5, 5, 'StevenBuchanan', NULL, NULL, NULL),
(6, 6, 'MichaelSuyama', NULL, NULL, NULL),
(7, 7, 'RobertKing', NULL, NULL, NULL),
(8, 8, 'LauraCallahan', NULL, NULL, NULL),
(9, 9, 'AnneDodsworth', NULL, NULL, NULL),
(10, 10, 'AdamWest', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dimfecha`
--

CREATE TABLE `dimfecha` (
  `FechaKey` int(11) NOT NULL,
  `Fecha` date NOT NULL,
  `Año` int(11) NOT NULL,
  `Trimestre` int(11) NOT NULL,
  `Mes` int(11) NOT NULL,
  `Dia` int(11) NOT NULL,
  `NombreMes` varchar(20) DEFAULT NULL,
  `NombreDia` varchar(20) DEFAULT NULL,
  `EsFinDeSemana` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `dimfecha`
--

INSERT INTO `dimfecha` (`FechaKey`, `Fecha`, `Año`, `Trimestre`, `Mes`, `Dia`, `NombreMes`, `NombreDia`, `EsFinDeSemana`) VALUES
(19960704, '1996-07-04', 1996, 3, 7, 4, 'July', 'Thursday', 0),
(19960705, '1996-07-05', 1996, 3, 7, 5, 'July', 'Friday', 0),
(19960708, '1996-07-08', 1996, 3, 7, 8, 'July', 'Monday', 0),
(19960709, '1996-07-09', 1996, 3, 7, 9, 'July', 'Tuesday', 0),
(19960710, '1996-07-10', 1996, 3, 7, 10, 'July', 'Wednesday', 0),
(19960711, '1996-07-11', 1996, 3, 7, 11, 'July', 'Thursday', 0),
(19960712, '1996-07-12', 1996, 3, 7, 12, 'July', 'Friday', 0),
(19960715, '1996-07-15', 1996, 3, 7, 15, 'July', 'Monday', 0),
(19960716, '1996-07-16', 1996, 3, 7, 16, 'July', 'Tuesday', 0),
(19960717, '1996-07-17', 1996, 3, 7, 17, 'July', 'Wednesday', 0),
(19960718, '1996-07-18', 1996, 3, 7, 18, 'July', 'Thursday', 0),
(19960719, '1996-07-19', 1996, 3, 7, 19, 'July', 'Friday', 0),
(19960722, '1996-07-22', 1996, 3, 7, 22, 'July', 'Monday', 0),
(19960723, '1996-07-23', 1996, 3, 7, 23, 'July', 'Tuesday', 0),
(19960724, '1996-07-24', 1996, 3, 7, 24, 'July', 'Wednesday', 0),
(19960725, '1996-07-25', 1996, 3, 7, 25, 'July', 'Thursday', 0),
(19960726, '1996-07-26', 1996, 3, 7, 26, 'July', 'Friday', 0),
(19960729, '1996-07-29', 1996, 3, 7, 29, 'July', 'Monday', 0),
(19960730, '1996-07-30', 1996, 3, 7, 30, 'July', 'Tuesday', 0),
(19960731, '1996-07-31', 1996, 3, 7, 31, 'July', 'Wednesday', 0),
(19960801, '1996-08-01', 1996, 3, 8, 1, 'August', 'Thursday', 0),
(19960802, '1996-08-02', 1996, 3, 8, 2, 'August', 'Friday', 0),
(19960805, '1996-08-05', 1996, 3, 8, 5, 'August', 'Monday', 0),
(19960806, '1996-08-06', 1996, 3, 8, 6, 'August', 'Tuesday', 0),
(19960807, '1996-08-07', 1996, 3, 8, 7, 'August', 'Wednesday', 0),
(19960808, '1996-08-08', 1996, 3, 8, 8, 'August', 'Thursday', 0),
(19960809, '1996-08-09', 1996, 3, 8, 9, 'August', 'Friday', 0),
(19960812, '1996-08-12', 1996, 3, 8, 12, 'August', 'Monday', 0),
(19960813, '1996-08-13', 1996, 3, 8, 13, 'August', 'Tuesday', 0),
(19960814, '1996-08-14', 1996, 3, 8, 14, 'August', 'Wednesday', 0),
(19960815, '1996-08-15', 1996, 3, 8, 15, 'August', 'Thursday', 0),
(19960816, '1996-08-16', 1996, 3, 8, 16, 'August', 'Friday', 0),
(19960819, '1996-08-19', 1996, 3, 8, 19, 'August', 'Monday', 0),
(19960820, '1996-08-20', 1996, 3, 8, 20, 'August', 'Tuesday', 0),
(19960821, '1996-08-21', 1996, 3, 8, 21, 'August', 'Wednesday', 0),
(19960822, '1996-08-22', 1996, 3, 8, 22, 'August', 'Thursday', 0),
(19960823, '1996-08-23', 1996, 3, 8, 23, 'August', 'Friday', 0),
(19960826, '1996-08-26', 1996, 3, 8, 26, 'August', 'Monday', 0),
(19960827, '1996-08-27', 1996, 3, 8, 27, 'August', 'Tuesday', 0),
(19960828, '1996-08-28', 1996, 3, 8, 28, 'August', 'Wednesday', 0),
(19960829, '1996-08-29', 1996, 3, 8, 29, 'August', 'Thursday', 0),
(19960830, '1996-08-30', 1996, 3, 8, 30, 'August', 'Friday', 0),
(19960902, '1996-09-02', 1996, 3, 9, 2, 'September', 'Monday', 0),
(19960903, '1996-09-03', 1996, 3, 9, 3, 'September', 'Tuesday', 0),
(19960904, '1996-09-04', 1996, 3, 9, 4, 'September', 'Wednesday', 0),
(19960905, '1996-09-05', 1996, 3, 9, 5, 'September', 'Thursday', 0),
(19960906, '1996-09-06', 1996, 3, 9, 6, 'September', 'Friday', 0),
(19960909, '1996-09-09', 1996, 3, 9, 9, 'September', 'Monday', 0),
(19960910, '1996-09-10', 1996, 3, 9, 10, 'September', 'Tuesday', 0),
(19960911, '1996-09-11', 1996, 3, 9, 11, 'September', 'Wednesday', 0),
(19960912, '1996-09-12', 1996, 3, 9, 12, 'September', 'Thursday', 0),
(19960913, '1996-09-13', 1996, 3, 9, 13, 'September', 'Friday', 0),
(19960916, '1996-09-16', 1996, 3, 9, 16, 'September', 'Monday', 0),
(19960917, '1996-09-17', 1996, 3, 9, 17, 'September', 'Tuesday', 0),
(19960918, '1996-09-18', 1996, 3, 9, 18, 'September', 'Wednesday', 0),
(19960919, '1996-09-19', 1996, 3, 9, 19, 'September', 'Thursday', 0),
(19960920, '1996-09-20', 1996, 3, 9, 20, 'September', 'Friday', 0),
(19960923, '1996-09-23', 1996, 3, 9, 23, 'September', 'Monday', 0),
(19960924, '1996-09-24', 1996, 3, 9, 24, 'September', 'Tuesday', 0),
(19960925, '1996-09-25', 1996, 3, 9, 25, 'September', 'Wednesday', 0),
(19960926, '1996-09-26', 1996, 3, 9, 26, 'September', 'Thursday', 0),
(19960927, '1996-09-27', 1996, 3, 9, 27, 'September', 'Friday', 0),
(19960930, '1996-09-30', 1996, 3, 9, 30, 'September', 'Monday', 0),
(19961001, '1996-10-01', 1996, 4, 10, 1, 'October', 'Tuesday', 0),
(19961002, '1996-10-02', 1996, 4, 10, 2, 'October', 'Wednesday', 0),
(19961003, '1996-10-03', 1996, 4, 10, 3, 'October', 'Thursday', 0),
(19961004, '1996-10-04', 1996, 4, 10, 4, 'October', 'Friday', 0),
(19961007, '1996-10-07', 1996, 4, 10, 7, 'October', 'Monday', 0),
(19961008, '1996-10-08', 1996, 4, 10, 8, 'October', 'Tuesday', 0),
(19961009, '1996-10-09', 1996, 4, 10, 9, 'October', 'Wednesday', 0),
(19961010, '1996-10-10', 1996, 4, 10, 10, 'October', 'Thursday', 0),
(19961011, '1996-10-11', 1996, 4, 10, 11, 'October', 'Friday', 0),
(19961014, '1996-10-14', 1996, 4, 10, 14, 'October', 'Monday', 0),
(19961015, '1996-10-15', 1996, 4, 10, 15, 'October', 'Tuesday', 0),
(19961016, '1996-10-16', 1996, 4, 10, 16, 'October', 'Wednesday', 0),
(19961017, '1996-10-17', 1996, 4, 10, 17, 'October', 'Thursday', 0),
(19961018, '1996-10-18', 1996, 4, 10, 18, 'October', 'Friday', 0),
(19961021, '1996-10-21', 1996, 4, 10, 21, 'October', 'Monday', 0),
(19961022, '1996-10-22', 1996, 4, 10, 22, 'October', 'Tuesday', 0),
(19961023, '1996-10-23', 1996, 4, 10, 23, 'October', 'Wednesday', 0),
(19961024, '1996-10-24', 1996, 4, 10, 24, 'October', 'Thursday', 0),
(19961025, '1996-10-25', 1996, 4, 10, 25, 'October', 'Friday', 0),
(19961028, '1996-10-28', 1996, 4, 10, 28, 'October', 'Monday', 0),
(19961029, '1996-10-29', 1996, 4, 10, 29, 'October', 'Tuesday', 0),
(19961030, '1996-10-30', 1996, 4, 10, 30, 'October', 'Wednesday', 0),
(19961031, '1996-10-31', 1996, 4, 10, 31, 'October', 'Thursday', 0),
(19961101, '1996-11-01', 1996, 4, 11, 1, 'November', 'Friday', 0),
(19961104, '1996-11-04', 1996, 4, 11, 4, 'November', 'Monday', 0),
(19961105, '1996-11-05', 1996, 4, 11, 5, 'November', 'Tuesday', 0),
(19961106, '1996-11-06', 1996, 4, 11, 6, 'November', 'Wednesday', 0),
(19961107, '1996-11-07', 1996, 4, 11, 7, 'November', 'Thursday', 0),
(19961108, '1996-11-08', 1996, 4, 11, 8, 'November', 'Friday', 0),
(19961111, '1996-11-11', 1996, 4, 11, 11, 'November', 'Monday', 0),
(19961112, '1996-11-12', 1996, 4, 11, 12, 'November', 'Tuesday', 0),
(19961113, '1996-11-13', 1996, 4, 11, 13, 'November', 'Wednesday', 0),
(19961114, '1996-11-14', 1996, 4, 11, 14, 'November', 'Thursday', 0),
(19961115, '1996-11-15', 1996, 4, 11, 15, 'November', 'Friday', 0),
(19961118, '1996-11-18', 1996, 4, 11, 18, 'November', 'Monday', 0),
(19961119, '1996-11-19', 1996, 4, 11, 19, 'November', 'Tuesday', 0),
(19961120, '1996-11-20', 1996, 4, 11, 20, 'November', 'Wednesday', 0),
(19961121, '1996-11-21', 1996, 4, 11, 21, 'November', 'Thursday', 0),
(19961122, '1996-11-22', 1996, 4, 11, 22, 'November', 'Friday', 0),
(19961125, '1996-11-25', 1996, 4, 11, 25, 'November', 'Monday', 0),
(19961126, '1996-11-26', 1996, 4, 11, 26, 'November', 'Tuesday', 0),
(19961127, '1996-11-27', 1996, 4, 11, 27, 'November', 'Wednesday', 0),
(19961128, '1996-11-28', 1996, 4, 11, 28, 'November', 'Thursday', 0),
(19961129, '1996-11-29', 1996, 4, 11, 29, 'November', 'Friday', 0),
(19961202, '1996-12-02', 1996, 4, 12, 2, 'December', 'Monday', 0),
(19961203, '1996-12-03', 1996, 4, 12, 3, 'December', 'Tuesday', 0),
(19961204, '1996-12-04', 1996, 4, 12, 4, 'December', 'Wednesday', 0),
(19961205, '1996-12-05', 1996, 4, 12, 5, 'December', 'Thursday', 0),
(19961206, '1996-12-06', 1996, 4, 12, 6, 'December', 'Friday', 0),
(19961209, '1996-12-09', 1996, 4, 12, 9, 'December', 'Monday', 0),
(19961210, '1996-12-10', 1996, 4, 12, 10, 'December', 'Tuesday', 0),
(19961211, '1996-12-11', 1996, 4, 12, 11, 'December', 'Wednesday', 0),
(19961212, '1996-12-12', 1996, 4, 12, 12, 'December', 'Thursday', 0),
(19961213, '1996-12-13', 1996, 4, 12, 13, 'December', 'Friday', 0),
(19961216, '1996-12-16', 1996, 4, 12, 16, 'December', 'Monday', 0),
(19961217, '1996-12-17', 1996, 4, 12, 17, 'December', 'Tuesday', 0),
(19961218, '1996-12-18', 1996, 4, 12, 18, 'December', 'Wednesday', 0),
(19961219, '1996-12-19', 1996, 4, 12, 19, 'December', 'Thursday', 0),
(19961220, '1996-12-20', 1996, 4, 12, 20, 'December', 'Friday', 0),
(19961223, '1996-12-23', 1996, 4, 12, 23, 'December', 'Monday', 0),
(19961224, '1996-12-24', 1996, 4, 12, 24, 'December', 'Tuesday', 0),
(19961225, '1996-12-25', 1996, 4, 12, 25, 'December', 'Wednesday', 0),
(19961226, '1996-12-26', 1996, 4, 12, 26, 'December', 'Thursday', 0),
(19961227, '1996-12-27', 1996, 4, 12, 27, 'December', 'Friday', 0),
(19961230, '1996-12-30', 1996, 4, 12, 30, 'December', 'Monday', 0),
(19961231, '1996-12-31', 1996, 4, 12, 31, 'December', 'Tuesday', 0),
(19970101, '1997-01-01', 1997, 1, 1, 1, 'January', 'Wednesday', 0),
(19970102, '1997-01-02', 1997, 1, 1, 2, 'January', 'Thursday', 0),
(19970103, '1997-01-03', 1997, 1, 1, 3, 'January', 'Friday', 0),
(19970106, '1997-01-06', 1997, 1, 1, 6, 'January', 'Monday', 0),
(19970107, '1997-01-07', 1997, 1, 1, 7, 'January', 'Tuesday', 0),
(19970108, '1997-01-08', 1997, 1, 1, 8, 'January', 'Wednesday', 0),
(19970109, '1997-01-09', 1997, 1, 1, 9, 'January', 'Thursday', 0),
(19970110, '1997-01-10', 1997, 1, 1, 10, 'January', 'Friday', 0),
(19970113, '1997-01-13', 1997, 1, 1, 13, 'January', 'Monday', 0),
(19970114, '1997-01-14', 1997, 1, 1, 14, 'January', 'Tuesday', 0),
(19970115, '1997-01-15', 1997, 1, 1, 15, 'January', 'Wednesday', 0),
(19970116, '1997-01-16', 1997, 1, 1, 16, 'January', 'Thursday', 0),
(19970117, '1997-01-17', 1997, 1, 1, 17, 'January', 'Friday', 0),
(19970120, '1997-01-20', 1997, 1, 1, 20, 'January', 'Monday', 0),
(19970121, '1997-01-21', 1997, 1, 1, 21, 'January', 'Tuesday', 0),
(19970122, '1997-01-22', 1997, 1, 1, 22, 'January', 'Wednesday', 0),
(19970123, '1997-01-23', 1997, 1, 1, 23, 'January', 'Thursday', 0),
(19970124, '1997-01-24', 1997, 1, 1, 24, 'January', 'Friday', 0),
(19970127, '1997-01-27', 1997, 1, 1, 27, 'January', 'Monday', 0),
(19970128, '1997-01-28', 1997, 1, 1, 28, 'January', 'Tuesday', 0),
(19970129, '1997-01-29', 1997, 1, 1, 29, 'January', 'Wednesday', 0),
(19970130, '1997-01-30', 1997, 1, 1, 30, 'January', 'Thursday', 0),
(19970131, '1997-01-31', 1997, 1, 1, 31, 'January', 'Friday', 0),
(19970203, '1997-02-03', 1997, 1, 2, 3, 'February', 'Monday', 0),
(19970204, '1997-02-04', 1997, 1, 2, 4, 'February', 'Tuesday', 0),
(19970205, '1997-02-05', 1997, 1, 2, 5, 'February', 'Wednesday', 0),
(19970206, '1997-02-06', 1997, 1, 2, 6, 'February', 'Thursday', 0),
(19970207, '1997-02-07', 1997, 1, 2, 7, 'February', 'Friday', 0),
(19970210, '1997-02-10', 1997, 1, 2, 10, 'February', 'Monday', 0),
(19970211, '1997-02-11', 1997, 1, 2, 11, 'February', 'Tuesday', 0),
(19970212, '1997-02-12', 1997, 1, 2, 12, 'February', 'Wednesday', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dimproducto`
--

CREATE TABLE `dimproducto` (
  `ProductoKey` int(11) NOT NULL,
  `ProductoID` int(11) NOT NULL,
  `NombreProducto` varchar(100) NOT NULL,
  `Categoría` varchar(100) DEFAULT NULL,
  `Proveedor` varchar(100) DEFAULT NULL,
  `PrecioUnitario` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `dimproducto`
--

INSERT INTO `dimproducto` (`ProductoKey`, `ProductoID`, `NombreProducto`, `Categoría`, `Proveedor`, `PrecioUnitario`) VALUES
(1, 1, 'Chais', 'Beverages', 'Exotic Liquid', 18.00),
(2, 2, 'Chang', 'Beverages', 'Exotic Liquid', 19.00),
(3, 24, 'Guaraná Fantástica', 'Beverages', 'Refrescos Americanas LTDA', 5.00),
(4, 34, 'Sasquatch Ale', 'Beverages', 'Bigfoot Breweries', 14.00),
(5, 35, 'Steeleye Stout', 'Beverages', 'Bigfoot Breweries', 18.00),
(6, 38, 'Côte de Blaye', 'Beverages', 'Aux joyeux ecclésiastiques', 264.00),
(7, 39, 'Chartreuse verte', 'Beverages', 'Aux joyeux ecclésiastiques', 18.00),
(8, 43, 'Ipoh Coffee', 'Beverages', 'Leka Trading', 46.00),
(9, 67, 'Laughing Lumberjack Lager', 'Beverages', 'Bigfoot Breweries', 14.00),
(10, 70, 'Outback Lager', 'Beverages', 'Pavlova, Ltd.', 15.00),
(11, 75, 'Rhönbräu Klosterbier', 'Beverages', 'Plutzer Lebensmittelgroßmärkte AG', 8.00),
(12, 76, 'Lakkalikööri', 'Beverages', 'Karkki Oy', 18.00),
(13, 3, 'Aniseed Syrup', 'Condiments', 'Exotic Liquid', 10.00),
(14, 4, 'Chef Anton\'s Cajun Seasoning', 'Condiments', 'New Orleans Cajun Delights', 22.00),
(15, 5, 'Chef Anton\'s Gumbo Mix', 'Condiments', 'New Orleans Cajun Delights', 21.00),
(16, 6, 'Grandma\'s Boysenberry Spread', 'Condiments', 'Grandma Kelly\'s Homestead', 25.00),
(17, 8, 'Northwoods Cranberry Sauce', 'Condiments', 'Grandma Kelly\'s Homestead', 40.00),
(18, 15, 'Genen Shouyu', 'Condiments', 'Mayumi\'s', 16.00),
(19, 44, 'Gula Malacca', 'Condiments', 'Leka Trading', 19.00),
(20, 61, 'Sirop d\'érable', 'Condiments', 'Forêts d\'érables', 29.00),
(21, 63, 'Vegie-spread', 'Condiments', 'Pavlova, Ltd.', 44.00),
(22, 65, 'Louisiana Fiery Hot Pepper Sauce', 'Condiments', 'New Orleans Cajun Delights', 21.00),
(23, 66, 'Louisiana Hot Spiced Okra', 'Condiments', 'New Orleans Cajun Delights', 17.00),
(24, 77, 'Original Frankfurter grüne Soße', 'Condiments', 'Plutzer Lebensmittelgroßmärkte AG', 13.00),
(25, 16, 'Pavlova', 'Confections', 'Pavlova, Ltd.', 17.00),
(26, 19, 'Teatime Chocolate Biscuits', 'Confections', 'Specialty Biscuits, Ltd.', 9.00),
(27, 20, 'Sir Rodney\'s Marmalade', 'Confections', 'Specialty Biscuits, Ltd.', 81.00),
(28, 21, 'Sir Rodney\'s Scones', 'Confections', 'Specialty Biscuits, Ltd.', 10.00),
(29, 25, 'NuNuCa Nuß-Nougat-Creme', 'Confections', 'Heli Süßwaren GmbH & Co. KG', 14.00),
(30, 26, 'Gumbär Gummibärchen', 'Confections', 'Heli Süßwaren GmbH & Co. KG', 31.00),
(31, 27, 'Schoggi Schokolade', 'Confections', 'Heli Süßwaren GmbH & Co. KG', 44.00),
(32, 47, 'Zaanse koeken', 'Confections', 'Zaanse Snoepfabriek', 10.00),
(33, 48, 'Chocolade', 'Confections', 'Zaanse Snoepfabriek', 13.00),
(34, 49, 'Maxilaku', 'Confections', 'Karkki Oy', 20.00),
(35, 50, 'Valkoinen suklaa', 'Confections', 'Karkki Oy', 16.00),
(36, 62, 'Tarte au sucre', 'Confections', 'Forêts d\'érables', 49.00),
(37, 68, 'Scottish Longbreads', 'Confections', 'Specialty Biscuits, Ltd.', 13.00),
(38, 11, 'Queso Cabrales', 'Dairy Products', 'Cooperativa de Quesos \'Las Cabras\'', 21.00),
(39, 12, 'Queso Manchego La Pastora', 'Dairy Products', 'Cooperativa de Quesos \'Las Cabras\'', 38.00),
(40, 31, 'Gorgonzola Telino', 'Dairy Products', 'Formaggi Fortini s.r.l.', 13.00),
(41, 32, 'Mascarpone Fabioli', 'Dairy Products', 'Formaggi Fortini s.r.l.', 32.00),
(42, 33, 'Geitost', 'Dairy Products', 'Norske Meierier', 3.00),
(43, 59, 'Raclette Courdavault', 'Dairy Products', 'Gai pâturage', 55.00),
(44, 60, 'Camembert Pierrot', 'Dairy Products', 'Gai pâturage', 34.00),
(45, 69, 'Gudbrandsdalsost', 'Dairy Products', 'Norske Meierier', 36.00),
(46, 71, 'Fløtemysost', 'Dairy Products', 'Norske Meierier', 22.00),
(47, 72, 'Mozzarella di Giovanni', 'Dairy Products', 'Formaggi Fortini s.r.l.', 35.00),
(48, 22, 'Gustaf\'s Knäckebröd', 'Grains/Cereals', 'PB Knäckebröd AB', 21.00),
(49, 23, 'Tunnbröd', 'Grains/Cereals', 'PB Knäckebröd AB', 9.00),
(50, 42, 'Singaporean Hokkien Fried Mee', 'Grains/Cereals', 'Leka Trading', 14.00),
(51, 52, 'Filo Mix', 'Grains/Cereals', 'G\'day, Mate', 7.00),
(52, 56, 'Gnocchi di nonna Alice', 'Grains/Cereals', 'Pasta Buttini s.r.l.', 38.00),
(53, 57, 'Ravioli Angelo', 'Grains/Cereals', 'Pasta Buttini s.r.l.', 20.00),
(54, 64, 'Wimmers gute Semmelknödel', 'Grains/Cereals', 'Plutzer Lebensmittelgroßmärkte AG', 33.00),
(55, 9, 'Mishi Kobe Niku', 'Meat/Poultry', 'Tokyo Traders', 97.00),
(56, 17, 'Alice Mutton', 'Meat/Poultry', 'Pavlova, Ltd.', 39.00),
(57, 29, 'Thüringer Rostbratwurst', 'Meat/Poultry', 'Plutzer Lebensmittelgroßmärkte AG', 124.00),
(58, 53, 'Perth Pasties', 'Meat/Poultry', 'G\'day, Mate', 33.00),
(59, 54, 'Tourtière', 'Meat/Poultry', 'Ma Maison', 7.00),
(60, 55, 'Pâté chinois', 'Meat/Poultry', 'Ma Maison', 24.00),
(61, 7, 'Uncle Bob\'s Organic Dried Pears', 'Produce', 'Grandma Kelly\'s Homestead', 30.00),
(62, 14, 'Tofu', 'Produce', 'Mayumi\'s', 23.00),
(63, 28, 'Rössle Sauerkraut', 'Produce', 'Plutzer Lebensmittelgroßmärkte AG', 46.00),
(64, 51, 'Manjimup Dried Apples', 'Produce', 'G\'day, Mate', 53.00),
(65, 74, 'Longlife Tofu', 'Produce', 'Tokyo Traders', 10.00),
(66, 10, 'Ikura', 'Seafood', 'Tokyo Traders', 31.00),
(67, 13, 'Konbu', 'Seafood', 'Mayumi\'s', 6.00),
(68, 18, 'Carnarvon Tigers', 'Seafood', 'Pavlova, Ltd.', 63.00),
(69, 30, 'Nord-Ost Matjeshering', 'Seafood', 'Nord-Ost-Fisch Handelsgesellschaft mbH', 26.00),
(70, 36, 'Inlagd Sill', 'Seafood', 'Svensk Sjöföda AB', 19.00),
(71, 37, 'Gravad lax', 'Seafood', 'Svensk Sjöföda AB', 26.00),
(72, 40, 'Boston Crab Meat', 'Seafood', 'New England Seafood Cannery', 18.00),
(73, 41, 'Jack\'s New England Clam Chowder', 'Seafood', 'New England Seafood Cannery', 10.00),
(74, 45, 'Røgede sild', 'Seafood', 'Lyngbysild', 10.00),
(75, 46, 'Spegesild', 'Seafood', 'Lyngbysild', 12.00),
(76, 58, 'Escargots de Bourgogne', 'Seafood', 'Escargots Nouveaux', 13.00),
(77, 73, 'Röd Kaviar', 'Seafood', 'Svensk Sjöföda AB', 15.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factventas`
--

CREATE TABLE `factventas` (
  `VentaKey` int(11) NOT NULL,
  `FechaKey` int(11) NOT NULL,
  `ProductoKey` int(11) NOT NULL,
  `ClienteKey` int(11) NOT NULL,
  `EmpleadoKey` int(11) NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `PrecioUnitario` decimal(10,2) NOT NULL,
  `MontoTotal` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `factventas`
--

INSERT INTO `factventas` (`VentaKey`, `FechaKey`, `ProductoKey`, `ClienteKey`, `EmpleadoKey`, `Cantidad`, `PrecioUnitario`, `MontoTotal`) VALUES
(1, 19960717, 2, 20, 1, 50, 19.00, 950.00),
(2, 19960717, 5, 20, 1, 65, 21.00, 1365.00),
(3, 19960717, 32, 20, 1, 6, 32.00, 192.00),
(4, 19960801, 36, 87, 1, 30, 19.00, 570.00),
(5, 19960801, 43, 87, 1, 25, 46.00, 1150.00),
(6, 19960807, 24, 49, 1, 12, 5.00, 60.00),
(7, 19960807, 59, 49, 1, 6, 55.00, 330.00),
(8, 19960820, 1, 63, 1, 45, 18.00, 810.00),
(9, 19960820, 40, 63, 1, 40, 18.00, 720.00),
(10, 19960820, 53, 63, 1, 36, 33.00, 1188.00),
(11, 19960828, 20, 81, 1, 20, 81.00, 1620.00),
(12, 19960829, 18, 80, 1, 12, 63.00, 756.00),
(13, 19960829, 24, 80, 1, 10, 5.00, 50.00),
(14, 19960829, 63, 80, 1, 5, 44.00, 220.00),
(15, 19960829, 75, 80, 1, 6, 8.00, 48.00),
(16, 19960912, 49, 80, 1, 30, 20.00, 600.00),
(17, 19960912, 59, 80, 1, 10, 55.00, 550.00),
(18, 19960912, 71, 80, 1, 2, 22.00, 44.00),
(19, 19960916, 30, 69, 1, 10, 26.00, 260.00),
(20, 19960916, 53, 69, 1, 10, 33.00, 330.00),
(21, 19960916, 54, 69, 1, 5, 7.00, 35.00),
(22, 19960920, 42, 18, 1, 6, 14.00, 84.00),
(23, 19960920, 69, 18, 1, 7, 36.00, 252.00),
(24, 19960925, 32, 65, 1, 40, 32.00, 1280.00),
(25, 19960925, 58, 65, 1, 30, 13.00, 390.00),
(26, 19960925, 62, 65, 1, 25, 49.00, 1225.00),
(27, 19960927, 41, 65, 1, 10, 10.00, 100.00),
(28, 19960927, 62, 65, 1, 70, 49.00, 3430.00),
(29, 19961009, 6, 39, 1, 6, 25.00, 150.00),
(30, 19961009, 13, 39, 1, 12, 6.00, 72.00),
(31, 19961009, 14, 39, 1, 9, 23.00, 207.00),
(32, 19961009, 31, 39, 1, 4, 13.00, 52.00),
(33, 19961009, 72, 39, 1, 40, 35.00, 1400.00),
(34, 19961029, 18, 9, 1, 20, 63.00, 1260.00),
(35, 19961029, 41, 9, 1, 12, 10.00, 120.00),
(36, 19961029, 43, 9, 1, 40, 46.00, 1840.00),
(37, 19961111, 38, 20, 1, 20, 264.00, 5280.00),
(38, 19961111, 41, 20, 1, 13, 10.00, 130.00),
(39, 19961111, 44, 20, 1, 77, 19.00, 1463.00),
(40, 19961111, 65, 20, 1, 10, 21.00, 210.00),
(41, 19961119, 10, 46, 1, 30, 31.00, 930.00),
(42, 19961119, 26, 46, 1, 16, 31.00, 496.00),
(43, 19961119, 60, 46, 1, 8, 34.00, 272.00),
(44, 19961122, 39, 63, 1, 54, 18.00, 972.00),
(45, 19961122, 60, 63, 1, 55, 34.00, 1870.00),
(46, 19961126, 69, 19, 1, 30, 36.00, 1080.00),
(47, 19961126, 71, 19, 1, 5, 22.00, 110.00),
(48, 19961203, 36, 41, 1, 6, 19.00, 114.00),
(49, 19961205, 31, 91, 1, 30, 13.00, 390.00),
(50, 19961205, 58, 91, 1, 15, 13.00, 195.00),
(51, 19961209, 31, 51, 1, 42, 13.00, 546.00),
(52, 19961209, 28, 72, 1, 20, 46.00, 920.00),
(53, 19961209, 39, 72, 1, 20, 18.00, 360.00),
(54, 19961217, 7, 75, 1, 10, 30.00, 300.00),
(55, 19961217, 60, 75, 1, 20, 34.00, 680.00),
(56, 19961217, 68, 75, 1, 8, 13.00, 104.00),
(57, 19961218, 24, 70, 1, 15, 5.00, 75.00),
(58, 19961218, 28, 70, 1, 6, 46.00, 276.00),
(59, 19961218, 59, 70, 1, 12, 55.00, 660.00),
(60, 19961218, 71, 70, 1, 15, 22.00, 330.00),
(61, 19961225, 2, 71, 1, 25, 19.00, 475.00),
(62, 19961225, 14, 71, 1, 42, 23.00, 966.00),
(63, 19961225, 25, 71, 1, 7, 14.00, 98.00),
(64, 19961225, 26, 71, 1, 70, 31.00, 2170.00),
(65, 19961225, 31, 71, 1, 32, 13.00, 416.00),
(66, 19961225, 13, 36, 1, 10, 6.00, 60.00),
(67, 19961225, 62, 36, 1, 10, 49.00, 490.00),
(68, 19961227, 23, 25, 1, 40, 9.00, 360.00),
(69, 19961227, 71, 25, 1, 60, 22.00, 1320.00),
(70, 19961227, 72, 25, 1, 21, 35.00, 735.00),
(71, 19970101, 29, 19, 1, 21, 124.00, 2604.00),
(72, 19970101, 35, 19, 1, 35, 18.00, 630.00),
(73, 19970101, 49, 19, 1, 30, 20.00, 600.00),
(74, 19970101, 30, 65, 1, 18, 26.00, 468.00),
(75, 19970101, 56, 65, 1, 70, 38.00, 2660.00),
(76, 19970101, 65, 65, 1, 20, 21.00, 420.00),
(77, 19970101, 71, 65, 1, 60, 22.00, 1320.00),
(78, 19970106, 3, 47, 1, 50, 10.00, 500.00),
(79, 19960725, 17, 7, 2, 30, 39.00, 1170.00),
(80, 19960725, 70, 7, 2, 20, 15.00, 300.00),
(81, 19960809, 28, 52, 2, 20, 46.00, 920.00),
(82, 19960809, 62, 52, 2, 12, 49.00, 588.00),
(83, 19960814, 24, 5, 2, 12, 5.00, 60.00),
(84, 19960814, 55, 5, 2, 20, 24.00, 480.00),
(85, 19960814, 75, 5, 2, 30, 8.00, 240.00),
(86, 19960902, 56, 85, 2, 4, 38.00, 152.00),
(87, 19960909, 66, 49, 2, 30, 17.00, 510.00),
(88, 19960909, 68, 49, 2, 20, 13.00, 260.00),
(89, 19960917, 62, 48, 2, 10, 49.00, 490.00),
(90, 19960917, 68, 48, 2, 3, 13.00, 39.00),
(91, 19960923, 28, 86, 2, 4, 46.00, 184.00),
(92, 19960923, 43, 86, 2, 24, 46.00, 1104.00),
(93, 19960923, 53, 86, 2, 20, 33.00, 660.00),
(94, 19960923, 75, 86, 2, 10, 8.00, 80.00),
(95, 19960924, 36, 63, 2, 12, 19.00, 228.00),
(96, 19961011, 2, 24, 2, 25, 19.00, 475.00),
(97, 19961011, 11, 24, 2, 50, 21.00, 1050.00),
(98, 19961011, 30, 24, 2, 35, 26.00, 910.00),
(99, 19961011, 58, 24, 2, 30, 13.00, 390.00),
(100, 19961028, 4, 51, 2, 10, 22.00, 220.00),
(101, 19961028, 17, 51, 2, 70, 39.00, 2730.00),
(102, 19961028, 62, 51, 2, 28, 49.00, 1372.00),
(103, 19961104, 8, 63, 2, 70, 40.00, 2800.00),
(104, 19961104, 19, 63, 2, 80, 9.00, 720.00),
(105, 19961104, 42, 63, 2, 9, 14.00, 126.00),
(106, 19961129, 21, 20, 2, 5, 10.00, 50.00),
(107, 19961129, 28, 20, 2, 13, 46.00, 598.00),
(108, 19961129, 57, 20, 2, 25, 20.00, 500.00),
(109, 19961129, 64, 20, 2, 35, 33.00, 1155.00),
(110, 19961211, 41, 61, 2, 8, 10.00, 80.00),
(111, 19961211, 63, 61, 2, 16, 44.00, 704.00),
(112, 19961211, 65, 61, 2, 20, 21.00, 420.00),
(113, 19961219, 45, 72, 2, 15, 10.00, 150.00),
(114, 19961219, 52, 72, 2, 20, 7.00, 140.00),
(115, 19961219, 53, 72, 2, 40, 33.00, 1320.00),
(116, 19961224, 69, 59, 2, 50, 36.00, 1800.00),
(117, 19961230, 35, 71, 2, 30, 18.00, 540.00),
(118, 19961230, 55, 71, 2, 120, 24.00, 2880.00),
(119, 19970103, 26, 49, 2, 30, 31.00, 930.00),
(120, 19970103, 42, 49, 2, 40, 14.00, 560.00),
(121, 19970103, 49, 49, 2, 30, 20.00, 600.00),
(122, 19970107, 11, 56, 2, 30, 21.00, 630.00),
(123, 19970107, 69, 56, 2, 15, 36.00, 540.00),
(124, 19970107, 71, 56, 2, 15, 22.00, 330.00),
(125, 19970114, 19, 21, 2, 18, 9.00, 162.00),
(126, 19970114, 33, 21, 2, 50, 3.00, 150.00),
(127, 19970122, 26, 27, 2, 2, 31.00, 62.00),
(128, 19960708, 22, 84, 3, 6, 21.00, 126.00),
(129, 19960708, 57, 84, 3, 15, 20.00, 300.00),
(130, 19960708, 65, 84, 3, 20, 21.00, 420.00),
(131, 19960710, 31, 34, 3, 20, 13.00, 260.00),
(132, 19960710, 39, 34, 3, 42, 18.00, 756.00),
(133, 19960710, 49, 34, 3, 40, 20.00, 800.00),
(134, 19960715, 53, 88, 3, 15, 33.00, 495.00),
(135, 19960715, 77, 88, 3, 12, 13.00, 156.00),
(136, 19960726, 12, 87, 3, 12, 38.00, 456.00),
(137, 19960805, 10, 63, 3, 24, 31.00, 744.00),
(138, 19960805, 31, 63, 3, 15, 13.00, 195.00),
(139, 19960805, 33, 63, 3, 20, 3.00, 60.00),
(140, 19960805, 40, 63, 3, 60, 18.00, 1080.00),
(141, 19960805, 76, 63, 3, 33, 18.00, 594.00),
(142, 19960816, 15, 46, 3, 20, 16.00, 320.00),
(143, 19960816, 19, 46, 3, 18, 9.00, 162.00),
(144, 19960816, 60, 46, 3, 35, 34.00, 1190.00),
(145, 19960816, 72, 46, 3, 3, 35.00, 105.00),
(146, 19960919, 4, 37, 3, 20, 22.00, 440.00),
(147, 19960919, 6, 37, 3, 30, 25.00, 750.00),
(148, 19960919, 42, 37, 3, 2, 14.00, 28.00),
(149, 19960919, 43, 37, 3, 20, 46.00, 920.00),
(150, 19960919, 71, 37, 3, 3, 22.00, 66.00),
(151, 19961003, 35, 38, 3, 10, 18.00, 180.00),
(152, 19961016, 26, 46, 3, 50, 31.00, 1550.00),
(153, 19961016, 72, 46, 3, 25, 35.00, 875.00),
(154, 19961017, 18, 51, 3, 40, 63.00, 2520.00),
(155, 19961017, 42, 51, 3, 10, 14.00, 140.00),
(156, 19961017, 47, 51, 3, 16, 10.00, 160.00),
(157, 19961105, 17, 65, 3, 36, 39.00, 1404.00),
(158, 19961105, 56, 65, 3, 20, 38.00, 760.00),
(159, 19961112, 24, 28, 3, 10, 5.00, 50.00),
(160, 19961112, 54, 28, 3, 20, 7.00, 140.00),
(161, 19961125, 25, 9, 3, 50, 14.00, 700.00),
(162, 19961125, 51, 9, 3, 20, 53.00, 1060.00),
(163, 19961125, 54, 9, 3, 24, 7.00, 168.00),
(164, 19961127, 11, 3, 3, 24, 21.00, 504.00),
(165, 19961206, 14, 36, 3, 15, 23.00, 345.00),
(166, 19961206, 54, 36, 3, 10, 7.00, 70.00),
(167, 19961212, 74, 46, 3, 14, 10.00, 140.00),
(168, 19961216, 20, 5, 3, 28, 81.00, 2268.00),
(169, 19961216, 60, 5, 3, 15, 34.00, 510.00),
(170, 19961223, 13, 17, 3, 18, 6.00, 108.00),
(171, 19970109, 14, 54, 3, 12, 23.00, 276.00),
(172, 19970109, 21, 54, 3, 12, 10.00, 120.00),
(173, 19970110, 33, 10, 3, 49, 3.00, 147.00),
(174, 19970110, 59, 10, 3, 16, 55.00, 880.00),
(175, 19970114, 1, 41, 3, 24, 18.00, 432.00),
(176, 19970114, 62, 41, 3, 40, 49.00, 1960.00),
(177, 19970114, 76, 41, 3, 14, 18.00, 252.00),
(178, 19970115, 17, 36, 3, 2, 39.00, 78.00),
(179, 19970115, 33, 36, 3, 20, 3.00, 60.00),
(180, 19970121, 9, 88, 3, 20, 97.00, 1940.00),
(181, 19970121, 13, 88, 3, 2, 6.00, 12.00),
(182, 19970121, 70, 88, 3, 8, 15.00, 120.00),
(183, 19970121, 73, 88, 3, 20, 15.00, 300.00),
(184, 19970129, 50, 37, 3, 40, 16.00, 640.00),
(185, 19970129, 63, 37, 3, 35, 44.00, 1540.00),
(186, 19970131, 26, 75, 3, 10, 31.00, 310.00),
(187, 19970131, 54, 75, 3, 40, 7.00, 280.00),
(188, 19970203, 56, 60, 3, 28, 38.00, 1064.00),
(189, 19970203, 11, 24, 3, 6, 21.00, 126.00),
(190, 19970203, 76, 24, 3, 18, 18.00, 324.00),
(191, 19970205, 46, 7, 3, 5, 12.00, 60.00),
(192, 19970205, 56, 7, 3, 40, 38.00, 1520.00),
(193, 19970205, 64, 7, 3, 30, 33.00, 990.00),
(194, 19970205, 75, 7, 3, 24, 8.00, 192.00),
(195, 19970206, 19, 79, 3, 15, 9.00, 135.00),
(196, 19970206, 34, 79, 3, 20, 14.00, 280.00),
(197, 19970206, 57, 79, 3, 15, 20.00, 300.00),
(198, 19970210, 27, 55, 3, 50, 44.00, 2200.00),
(199, 19970211, 11, 20, 3, 30, 21.00, 630.00),
(200, 19970211, 54, 20, 3, 80, 7.00, 560.00),
(201, 19970211, 66, 20, 3, 60, 17.00, 1020.00),
(202, 19960708, 41, 34, 4, 10, 10.00, 100.00),
(203, 19960708, 51, 34, 4, 35, 53.00, 1855.00),
(204, 19960708, 65, 34, 4, 15, 21.00, 315.00),
(205, 19960709, 20, 76, 4, 40, 81.00, 3240.00),
(206, 19960709, 33, 76, 4, 25, 3.00, 75.00),
(207, 19960709, 60, 76, 4, 40, 34.00, 1360.00),
(208, 19960716, 27, 35, 4, 25, 44.00, 1100.00),
(209, 19960716, 39, 35, 4, 6, 18.00, 108.00),
(210, 19960716, 77, 35, 4, 15, 13.00, 195.00),
(211, 19960718, 21, 13, 4, 10, 10.00, 100.00),
(212, 19960718, 37, 13, 4, 1, 26.00, 26.00),
(213, 19960719, 41, 55, 4, 16, 10.00, 160.00),
(214, 19960719, 57, 55, 4, 50, 20.00, 1000.00),
(215, 19960719, 62, 55, 4, 15, 49.00, 735.00),
(216, 19960719, 70, 55, 4, 21, 15.00, 315.00),
(217, 19960719, 21, 61, 4, 20, 10.00, 200.00),
(218, 19960719, 35, 61, 4, 20, 18.00, 360.00),
(219, 19960729, 40, 25, 4, 50, 18.00, 900.00),
(220, 19960729, 59, 25, 4, 70, 55.00, 3850.00),
(221, 19960729, 76, 25, 4, 15, 18.00, 270.00),
(222, 19960814, 19, 69, 4, 1, 9.00, 9.00),
(223, 19960814, 24, 69, 4, 6, 5.00, 30.00),
(224, 19960814, 35, 69, 4, 4, 18.00, 72.00),
(225, 19960815, 30, 69, 4, 6, 26.00, 156.00),
(226, 19960815, 57, 69, 4, 2, 20.00, 40.00),
(227, 19960819, 27, 44, 4, 15, 44.00, 660.00),
(228, 19960819, 44, 44, 4, 21, 19.00, 399.00),
(229, 19960819, 60, 44, 4, 20, 34.00, 680.00),
(230, 19960819, 67, 44, 4, 5, 14.00, 70.00),
(231, 19960823, 54, 66, 4, 10, 7.00, 70.00),
(232, 19960823, 68, 66, 4, 3, 13.00, 39.00),
(233, 19960830, 1, 65, 4, 18, 18.00, 324.00),
(234, 19960830, 17, 65, 4, 15, 39.00, 585.00),
(235, 19960830, 43, 65, 4, 15, 46.00, 690.00),
(236, 19960830, 60, 65, 4, 21, 34.00, 714.00),
(237, 19960830, 75, 65, 4, 6, 8.00, 48.00),
(238, 19960906, 19, 67, 4, 15, 9.00, 135.00),
(239, 19960906, 70, 67, 4, 20, 15.00, 300.00),
(240, 19960910, 17, 76, 4, 40, 39.00, 1560.00),
(241, 19960910, 28, 76, 4, 28, 46.00, 1288.00),
(242, 19960910, 43, 76, 4, 12, 46.00, 552.00),
(243, 19960926, 34, 38, 4, 14, 14.00, 196.00),
(244, 19960926, 70, 38, 4, 30, 15.00, 450.00),
(245, 19961007, 15, 39, 4, 5, 16.00, 80.00),
(246, 19961007, 25, 39, 4, 4, 14.00, 56.00),
(247, 19961007, 39, 39, 4, 4, 18.00, 72.00),
(248, 19961010, 4, 8, 4, 24, 22.00, 528.00),
(249, 19961010, 57, 8, 4, 16, 20.00, 320.00),
(250, 19961010, 75, 8, 4, 50, 8.00, 400.00),
(251, 19961014, 59, 28, 4, 9, 55.00, 495.00),
(252, 19961014, 65, 28, 4, 40, 21.00, 840.00),
(253, 19961014, 68, 28, 4, 10, 13.00, 130.00),
(254, 19961015, 19, 75, 4, 10, 9.00, 90.00),
(255, 19961015, 30, 75, 4, 8, 26.00, 208.00),
(256, 19961015, 38, 75, 4, 20, 264.00, 5280.00),
(257, 19961015, 56, 75, 4, 12, 38.00, 456.00),
(258, 19961024, 23, 25, 4, 40, 9.00, 360.00),
(259, 19961024, 26, 25, 4, 24, 31.00, 744.00),
(260, 19961024, 36, 25, 4, 20, 19.00, 380.00),
(261, 19961024, 37, 25, 4, 28, 26.00, 728.00),
(262, 19961024, 72, 25, 4, 25, 35.00, 875.00),
(263, 19961025, 17, 55, 4, 20, 39.00, 780.00),
(264, 19961025, 30, 55, 4, 15, 26.00, 390.00),
(265, 19961030, 2, 25, 4, 24, 19.00, 456.00),
(266, 19961030, 31, 25, 4, 56, 13.00, 728.00),
(267, 19961030, 36, 25, 4, 40, 19.00, 760.00),
(268, 19961030, 55, 25, 4, 40, 24.00, 960.00),
(269, 19961031, 64, 44, 4, 50, 33.00, 1650.00),
(270, 19961031, 68, 44, 4, 4, 13.00, 52.00),
(271, 19961031, 76, 44, 4, 15, 18.00, 270.00),
(272, 19961101, 4, 89, 4, 35, 22.00, 770.00),
(273, 19961101, 8, 89, 4, 70, 40.00, 2800.00),
(274, 19961106, 25, 21, 4, 10, 14.00, 140.00),
(275, 19961106, 39, 21, 4, 50, 18.00, 900.00),
(276, 19961106, 40, 21, 4, 4, 18.00, 72.00),
(277, 19961106, 75, 21, 4, 6, 8.00, 48.00),
(278, 19961107, 1, 86, 4, 15, 18.00, 270.00),
(279, 19961107, 23, 86, 4, 25, 9.00, 225.00),
(280, 19961122, 28, 7, 4, 30, 46.00, 1380.00),
(281, 19961122, 29, 7, 4, 35, 124.00, 4340.00),
(282, 19961122, 38, 7, 4, 10, 264.00, 2640.00),
(283, 19961122, 49, 7, 4, 35, 20.00, 700.00),
(284, 19961122, 54, 7, 4, 28, 7.00, 196.00),
(285, 19961126, 31, 17, 4, 20, 13.00, 260.00),
(286, 19961126, 75, 17, 4, 12, 8.00, 96.00),
(287, 19961126, 76, 17, 4, 12, 18.00, 216.00),
(288, 19961205, 58, 37, 4, 80, 13.00, 1040.00),
(289, 19961205, 71, 37, 4, 50, 22.00, 1100.00),
(290, 19961213, 5, 20, 4, 32, 21.00, 672.00),
(291, 19961213, 18, 20, 4, 9, 63.00, 567.00),
(292, 19961213, 29, 20, 4, 14, 124.00, 1736.00),
(293, 19961213, 33, 20, 4, 60, 3.00, 180.00),
(294, 19961213, 74, 20, 4, 50, 10.00, 500.00),
(295, 19961220, 10, 10, 4, 16, 31.00, 496.00),
(296, 19961220, 55, 10, 4, 15, 24.00, 360.00),
(297, 19961220, 62, 10, 4, 20, 49.00, 980.00),
(298, 19961220, 70, 10, 4, 30, 15.00, 450.00),
(299, 19970103, 16, 20, 4, 21, 17.00, 357.00),
(300, 19970103, 48, 20, 4, 70, 13.00, 910.00),
(301, 19970116, 38, 73, 4, 50, 264.00, 13200.00),
(302, 19970116, 46, 73, 4, 2, 12.00, 24.00),
(303, 19970116, 68, 73, 4, 36, 13.00, 468.00),
(304, 19970116, 77, 73, 4, 35, 13.00, 455.00),
(305, 19970117, 2, 63, 4, 60, 19.00, 1140.00),
(306, 19970117, 47, 63, 4, 55, 10.00, 550.00),
(307, 19970117, 61, 63, 4, 16, 29.00, 464.00),
(308, 19970117, 74, 63, 4, 15, 10.00, 150.00),
(309, 19970120, 60, 68, 4, 60, 34.00, 2040.00),
(310, 19970120, 69, 68, 4, 20, 36.00, 720.00),
(311, 19970127, 56, 29, 4, 5, 38.00, 190.00),
(312, 19970127, 64, 29, 4, 7, 33.00, 231.00),
(313, 19970127, 14, 59, 4, 35, 23.00, 805.00),
(314, 19970130, 17, 20, 4, 45, 39.00, 1755.00),
(315, 19970130, 21, 20, 4, 50, 10.00, 500.00),
(316, 19970130, 56, 20, 4, 30, 38.00, 1140.00),
(317, 19970130, 59, 20, 4, 70, 55.00, 3850.00),
(318, 19970130, 17, 10, 4, 50, 39.00, 1950.00),
(319, 19970130, 40, 10, 4, 50, 18.00, 900.00),
(320, 19970130, 47, 10, 4, 30, 10.00, 300.00),
(321, 19970210, 2, 71, 4, 45, 19.00, 855.00),
(322, 19970210, 16, 71, 4, 49, 17.00, 833.00),
(323, 19970210, 29, 71, 4, 24, 124.00, 2976.00),
(324, 19970210, 61, 71, 4, 90, 29.00, 2610.00),
(325, 19960704, 11, 90, 5, 12, 21.00, 252.00),
(326, 19960704, 42, 90, 5, 10, 14.00, 140.00),
(327, 19960704, 72, 90, 5, 5, 35.00, 175.00),
(328, 19960711, 24, 14, 5, 15, 5.00, 75.00),
(329, 19960711, 55, 14, 5, 21, 24.00, 504.00),
(330, 19960711, 74, 14, 5, 21, 10.00, 210.00),
(331, 19960731, 33, 89, 5, 60, 3.00, 180.00),
(332, 19960731, 72, 89, 5, 20, 35.00, 700.00),
(333, 19960904, 39, 7, 5, 60, 18.00, 1080.00),
(334, 19960904, 72, 7, 5, 20, 35.00, 700.00),
(335, 19961003, 71, 87, 5, 30, 22.00, 660.00),
(336, 19961018, 14, 87, 5, 10, 23.00, 230.00),
(337, 19961018, 21, 87, 5, 10, 10.00, 100.00),
(338, 19961018, 71, 87, 5, 40, 22.00, 880.00),
(339, 19961120, 24, 41, 5, 10, 5.00, 50.00),
(340, 19961120, 34, 41, 5, 10, 14.00, 140.00),
(341, 19961120, 36, 41, 5, 20, 19.00, 380.00),
(342, 19961121, 16, 72, 5, 56, 17.00, 952.00),
(343, 19961121, 31, 72, 5, 70, 13.00, 910.00),
(344, 19961121, 60, 72, 5, 80, 34.00, 2720.00),
(345, 19961204, 20, 62, 5, 12, 81.00, 972.00),
(346, 19961204, 38, 62, 5, 40, 264.00, 10560.00),
(347, 19961204, 60, 62, 5, 70, 34.00, 2380.00),
(348, 19961204, 72, 62, 5, 42, 35.00, 1470.00),
(349, 19961210, 71, 24, 5, 6, 22.00, 132.00),
(350, 19961227, 21, 60, 5, 10, 10.00, 100.00),
(351, 19961227, 51, 60, 5, 18, 53.00, 954.00),
(352, 19960705, 14, 81, 6, 9, 23.00, 207.00),
(353, 19960705, 51, 81, 6, 40, 53.00, 2120.00),
(354, 19960724, 2, 24, 6, 35, 19.00, 665.00),
(355, 19960724, 41, 24, 6, 25, 10.00, 250.00),
(356, 19960801, 33, 75, 6, 24, 3.00, 72.00),
(357, 19960802, 20, 65, 6, 6, 81.00, 486.00),
(358, 19960802, 31, 65, 6, 40, 13.00, 520.00),
(359, 19960802, 72, 65, 6, 24, 35.00, 840.00),
(360, 19960806, 71, 85, 6, 20, 22.00, 440.00),
(361, 19960806, 72, 85, 6, 7, 35.00, 245.00),
(362, 19960827, 13, 61, 6, 20, 6.00, 120.00),
(363, 19960827, 44, 61, 6, 24, 19.00, 456.00),
(364, 19960827, 51, 61, 6, 2, 53.00, 106.00),
(365, 19960903, 11, 46, 6, 12, 21.00, 252.00),
(366, 19960903, 16, 46, 6, 30, 17.00, 510.00),
(367, 19960903, 69, 46, 6, 15, 36.00, 540.00),
(368, 19960905, 2, 37, 6, 40, 19.00, 760.00),
(369, 19960905, 36, 37, 6, 40, 19.00, 760.00),
(370, 19960905, 59, 37, 6, 30, 55.00, 1650.00),
(371, 19960905, 62, 37, 6, 15, 49.00, 735.00),
(372, 19960930, 1, 48, 6, 20, 18.00, 360.00),
(373, 19961111, 50, 41, 6, 15, 16.00, 240.00),
(374, 19961111, 69, 41, 6, 18, 36.00, 648.00),
(375, 19961115, 24, 4, 6, 25, 5.00, 125.00),
(376, 19961115, 57, 4, 6, 25, 20.00, 500.00),
(377, 19961118, 31, 86, 6, 30, 13.00, 390.00),
(378, 19961118, 55, 86, 6, 12, 24.00, 288.00),
(379, 19961118, 69, 86, 6, 20, 36.00, 720.00),
(380, 19961203, 1, 14, 6, 15, 18.00, 270.00),
(381, 19961203, 64, 14, 6, 30, 33.00, 990.00),
(382, 19961203, 74, 14, 6, 20, 10.00, 200.00),
(383, 19961223, 31, 20, 6, 60, 13.00, 780.00),
(384, 19961223, 35, 20, 6, 40, 18.00, 720.00),
(385, 19961223, 46, 20, 6, 45, 12.00, 540.00),
(386, 19961223, 72, 20, 6, 24, 35.00, 840.00),
(387, 19961226, 46, 35, 6, 28, 12.00, 336.00),
(388, 19961226, 53, 35, 6, 70, 33.00, 2310.00),
(389, 19961226, 69, 35, 6, 8, 36.00, 288.00),
(390, 19970123, 31, 31, 6, 14, 13.00, 182.00),
(391, 19970123, 59, 31, 6, 20, 55.00, 1100.00),
(392, 19970124, 55, 41, 6, 10, 24.00, 240.00),
(393, 19970124, 76, 41, 6, 20, 18.00, 360.00),
(394, 19970207, 12, 51, 6, 15, 38.00, 570.00),
(395, 19970207, 16, 51, 6, 16, 17.00, 272.00),
(396, 19970207, 64, 51, 6, 6, 33.00, 198.00),
(397, 19970207, 74, 51, 6, 30, 10.00, 300.00),
(398, 19960826, 3, 11, 7, 30, 10.00, 300.00),
(399, 19960826, 64, 11, 7, 9, 33.00, 297.00),
(400, 19960911, 40, 30, 7, 40, 18.00, 720.00),
(401, 19960911, 65, 30, 7, 30, 21.00, 630.00),
(402, 19960911, 68, 30, 7, 15, 13.00, 195.00),
(403, 19960918, 69, 2, 7, 1, 36.00, 36.00),
(404, 19960918, 70, 2, 7, 5, 15.00, 75.00),
(405, 19961002, 17, 80, 7, 8, 39.00, 312.00),
(406, 19961002, 28, 80, 7, 14, 46.00, 644.00),
(407, 19961002, 76, 80, 7, 30, 18.00, 540.00),
(408, 19961004, 52, 58, 7, 20, 7.00, 140.00),
(409, 19961022, 2, 37, 7, 7, 19.00, 133.00),
(410, 19961022, 31, 37, 7, 25, 13.00, 325.00),
(411, 19961022, 32, 37, 7, 6, 32.00, 192.00),
(412, 19961022, 51, 37, 7, 48, 53.00, 2544.00),
(413, 19961023, 4, 60, 7, 18, 22.00, 396.00),
(414, 19961029, 33, 73, 7, 8, 3.00, 24.00),
(415, 19961029, 59, 73, 7, 9, 55.00, 495.00),
(416, 19961108, 54, 75, 7, 24, 7.00, 168.00),
(417, 19961113, 11, 59, 7, 12, 21.00, 252.00),
(418, 19961113, 38, 59, 7, 50, 264.00, 13200.00),
(419, 19961128, 34, 83, 7, 36, 14.00, 504.00),
(420, 19961128, 54, 83, 7, 18, 7.00, 126.00),
(421, 19961128, 65, 83, 7, 15, 21.00, 315.00),
(422, 19961128, 77, 83, 7, 7, 13.00, 91.00),
(423, 19970107, 1, 62, 7, 10, 18.00, 180.00),
(424, 19970107, 21, 62, 7, 30, 10.00, 300.00),
(425, 19970107, 28, 62, 7, 42, 46.00, 1932.00),
(426, 19970107, 36, 62, 7, 5, 19.00, 95.00),
(427, 19970107, 40, 62, 7, 2, 18.00, 36.00),
(428, 19970123, 35, 51, 7, 60, 18.00, 1080.00),
(429, 19970123, 38, 51, 7, 49, 264.00, 12936.00),
(430, 19970123, 68, 51, 7, 30, 13.00, 390.00),
(431, 19970128, 46, 66, 7, 20, 12.00, 240.00),
(432, 19960722, 5, 65, 8, 12, 21.00, 252.00),
(433, 19960722, 7, 65, 8, 15, 30.00, 450.00),
(434, 19960722, 56, 65, 8, 2, 38.00, 76.00),
(435, 19960730, 29, 33, 8, 10, 124.00, 1240.00),
(436, 19960730, 72, 33, 8, 4, 35.00, 140.00),
(437, 19960808, 10, 80, 8, 15, 31.00, 465.00),
(438, 19960808, 13, 80, 8, 10, 6.00, 60.00),
(439, 19960812, 44, 5, 8, 16, 19.00, 304.00),
(440, 19960812, 59, 5, 8, 15, 55.00, 825.00),
(441, 19960812, 63, 5, 8, 8, 44.00, 352.00),
(442, 19960812, 73, 5, 8, 25, 15.00, 375.00),
(443, 19960813, 17, 44, 8, 15, 39.00, 585.00),
(444, 19960821, 35, 63, 8, 100, 18.00, 1800.00),
(445, 19960821, 62, 63, 8, 40, 49.00, 1960.00),
(446, 19960822, 16, 67, 8, 40, 17.00, 680.00),
(447, 19960822, 34, 67, 8, 20, 14.00, 280.00),
(448, 19960822, 46, 67, 8, 15, 12.00, 180.00),
(449, 19960827, 5, 15, 8, 20, 21.00, 420.00),
(450, 19960827, 29, 15, 8, 15, 124.00, 1860.00),
(451, 19960827, 49, 15, 8, 15, 20.00, 300.00),
(452, 19960827, 77, 15, 8, 10, 13.00, 130.00),
(453, 19960909, 40, 86, 8, 10, 18.00, 180.00),
(454, 19960909, 56, 86, 8, 20, 38.00, 760.00),
(455, 19960913, 18, 55, 8, 25, 63.00, 1575.00),
(456, 19960913, 29, 55, 8, 25, 124.00, 3100.00),
(457, 19960913, 39, 55, 8, 30, 18.00, 540.00),
(458, 19960920, 16, 77, 8, 10, 17.00, 170.00),
(459, 19960920, 62, 77, 8, 5, 49.00, 245.00),
(460, 19961001, 41, 38, 8, 20, 10.00, 200.00),
(461, 19961001, 76, 38, 8, 6, 18.00, 108.00),
(462, 19961021, 52, 84, 8, 8, 7.00, 56.00),
(463, 19961021, 68, 84, 8, 10, 13.00, 130.00),
(464, 19961114, 1, 58, 8, 12, 18.00, 216.00),
(465, 19961114, 29, 58, 8, 4, 124.00, 496.00),
(466, 19961128, 65, 29, 8, 5, 21.00, 105.00),
(467, 19961128, 77, 29, 8, 5, 13.00, 65.00),
(468, 19961202, 29, 75, 8, 20, 124.00, 2480.00),
(469, 19961202, 56, 75, 8, 18, 38.00, 684.00),
(470, 19961212, 30, 37, 8, 18, 26.00, 468.00),
(471, 19961212, 53, 37, 8, 20, 33.00, 660.00),
(472, 19961212, 60, 37, 8, 6, 34.00, 204.00),
(473, 19961212, 70, 37, 8, 30, 15.00, 450.00),
(474, 19961216, 13, 4, 8, 20, 6.00, 120.00),
(475, 19961216, 50, 4, 8, 15, 16.00, 240.00),
(476, 19961216, 56, 4, 8, 20, 38.00, 760.00),
(477, 19961231, 68, 83, 8, 60, 13.00, 780.00),
(478, 19961231, 71, 83, 8, 30, 22.00, 660.00),
(479, 19961231, 76, 83, 8, 35, 18.00, 630.00),
(480, 19961231, 77, 83, 8, 14, 13.00, 182.00),
(481, 19970102, 23, 20, 8, 60, 9.00, 540.00),
(482, 19970102, 63, 20, 8, 65, 44.00, 2860.00),
(483, 19970108, 37, 23, 8, 10, 26.00, 260.00),
(484, 19970108, 54, 23, 8, 6, 7.00, 42.00),
(485, 19970108, 62, 23, 8, 35, 49.00, 1715.00),
(486, 19970113, 14, 87, 8, 20, 23.00, 460.00),
(487, 19970116, 19, 87, 8, 20, 9.00, 180.00),
(488, 19970116, 53, 87, 8, 10, 33.00, 330.00),
(489, 19970116, 57, 87, 8, 20, 20.00, 400.00),
(490, 19970121, 19, 61, 8, 4, 9.00, 36.00),
(491, 19970121, 26, 61, 8, 30, 31.00, 930.00),
(492, 19970121, 53, 61, 8, 15, 33.00, 495.00),
(493, 19970121, 77, 61, 8, 10, 13.00, 130.00),
(494, 19970204, 2, 16, 8, 10, 19.00, 190.00),
(495, 19970204, 22, 16, 8, 12, 21.00, 252.00),
(496, 19970204, 72, 16, 8, 10, 35.00, 350.00),
(497, 19970205, 53, 87, 8, 15, 33.00, 495.00),
(498, 19970212, 11, 66, 8, 6, 21.00, 126.00),
(499, 19970212, 28, 66, 8, 12, 46.00, 552.00),
(500, 19960712, 2, 68, 9, 20, 19.00, 380.00),
(501, 19960712, 16, 68, 9, 35, 17.00, 595.00),
(502, 19960712, 36, 68, 9, 25, 19.00, 475.00),
(503, 19960712, 59, 68, 9, 30, 55.00, 1650.00),
(504, 19960723, 16, 20, 9, 60, 17.00, 1020.00),
(505, 19960723, 24, 20, 9, 28, 5.00, 140.00),
(506, 19960723, 30, 20, 9, 60, 26.00, 1560.00),
(507, 19960723, 74, 20, 9, 36, 10.00, 360.00),
(508, 19961008, 16, 71, 9, 21, 17.00, 357.00),
(509, 19961008, 35, 71, 9, 70, 18.00, 1260.00),
(510, 19961008, 46, 71, 9, 30, 12.00, 360.00),
(511, 19961008, 59, 71, 9, 40, 55.00, 2200.00),
(512, 19961008, 63, 71, 9, 80, 44.00, 3520.00),
(513, 19961016, 54, 9, 9, 15, 7.00, 105.00),
(514, 19961218, 24, 21, 9, 15, 5.00, 75.00),
(515, 19961218, 34, 21, 9, 10, 14.00, 140.00),
(516, 19970110, 41, 10, 9, 25, 10.00, 250.00),
(517, 19970110, 44, 10, 9, 40, 19.00, 760.00),
(518, 19970110, 59, 10, 9, 9, 55.00, 495.00);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vistaventasporcategoria`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vistaventasporcategoria` (
`Categoría` varchar(100)
,`TotalCantidad` decimal(32,0)
,`TotalVentas` decimal(32,2)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vistaventasporproducto`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vistaventasporproducto` (
`NombreProducto` varchar(100)
,`TotalCantidad` decimal(32,0)
,`TotalVentas` decimal(32,2)
);

-- --------------------------------------------------------

--
-- Estructura para la vista `vistaventasporcategoria`
--
DROP TABLE IF EXISTS `vistaventasporcategoria`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vistaventasporcategoria`  AS SELECT `p`.`Categoría` AS `Categoría`, sum(`f`.`Cantidad`) AS `TotalCantidad`, sum(`f`.`MontoTotal`) AS `TotalVentas` FROM (`factventas` `f` join `dimproducto` `p` on(`f`.`ProductoKey` = `p`.`ProductoKey`)) GROUP BY `p`.`Categoría` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vistaventasporproducto`
--
DROP TABLE IF EXISTS `vistaventasporproducto`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vistaventasporproducto`  AS SELECT `p`.`NombreProducto` AS `NombreProducto`, sum(`f`.`Cantidad`) AS `TotalCantidad`, sum(`f`.`MontoTotal`) AS `TotalVentas` FROM (`factventas` `f` join `dimproducto` `p` on(`f`.`ProductoKey` = `p`.`ProductoKey`)) GROUP BY `p`.`NombreProducto` ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `dimcliente`
--
ALTER TABLE `dimcliente`
  ADD PRIMARY KEY (`ClienteKey`);

--
-- Indices de la tabla `dimempleado`
--
ALTER TABLE `dimempleado`
  ADD PRIMARY KEY (`EmpleadoKey`);

--
-- Indices de la tabla `dimfecha`
--
ALTER TABLE `dimfecha`
  ADD PRIMARY KEY (`FechaKey`);

--
-- Indices de la tabla `dimproducto`
--
ALTER TABLE `dimproducto`
  ADD PRIMARY KEY (`ProductoKey`);

--
-- Indices de la tabla `factventas`
--
ALTER TABLE `factventas`
  ADD PRIMARY KEY (`VentaKey`),
  ADD KEY `FechaKey` (`FechaKey`),
  ADD KEY `ProductoKey` (`ProductoKey`),
  ADD KEY `ClienteKey` (`ClienteKey`),
  ADD KEY `EmpleadoKey` (`EmpleadoKey`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `dimcliente`
--
ALTER TABLE `dimcliente`
  MODIFY `ClienteKey` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT de la tabla `dimempleado`
--
ALTER TABLE `dimempleado`
  MODIFY `EmpleadoKey` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `dimproducto`
--
ALTER TABLE `dimproducto`
  MODIFY `ProductoKey` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT de la tabla `factventas`
--
ALTER TABLE `factventas`
  MODIFY `VentaKey` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=519;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `factventas`
--
ALTER TABLE `factventas`
  ADD CONSTRAINT `factventas_ibfk_1` FOREIGN KEY (`FechaKey`) REFERENCES `dimfecha` (`FechaKey`),
  ADD CONSTRAINT `factventas_ibfk_2` FOREIGN KEY (`ProductoKey`) REFERENCES `dimproducto` (`ProductoKey`),
  ADD CONSTRAINT `factventas_ibfk_3` FOREIGN KEY (`ClienteKey`) REFERENCES `dimcliente` (`ClienteKey`),
  ADD CONSTRAINT `factventas_ibfk_4` FOREIGN KEY (`EmpleadoKey`) REFERENCES `dimempleado` (`EmpleadoKey`);
--
-- Base de datos: `personas`
--
CREATE DATABASE IF NOT EXISTS `personas` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `personas`;
--
-- Base de datos: `personasbd`
--
CREATE DATABASE IF NOT EXISTS `personasbd` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `personasbd`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE `personas` (
  `id` int(11) NOT NULL,
  `nombres` varchar(20) NOT NULL,
  `apellidos` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`id`, `nombres`, `apellidos`) VALUES
(1, 'Diomedes', 'Contreras'),
(2, 'Andres', 'Castillo'),
(5, 'Sara', 'Torres');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `personas`
--
ALTER TABLE `personas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Base de datos: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Volcado de datos para la tabla `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"snap_to_grid\":\"off\",\"angular_direct\":\"direct\",\"relation_lines\":\"true\"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Volcado de datos para la tabla `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'database', 'NorthWind', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"structure_or_data_forced\":\"0\",\"table_select[]\":[\"categories\",\"customers\",\"employees\",\"orderdetails\",\"orders\",\"products\",\"shippers\",\"suppliers\"],\"table_structure[]\":[\"categories\",\"customers\",\"employees\",\"orderdetails\",\"orders\",\"products\",\"shippers\",\"suppliers\"],\"table_data[]\":[\"categories\",\"customers\",\"employees\",\"orderdetails\",\"orders\",\"products\",\"shippers\",\"suppliers\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@DATABASE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_columns\":\"something\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Estructura de la tabla @TABLE@\",\"latex_structure_continued_caption\":\"Estructura de la tabla @TABLE@ (continúa)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Contenido de la tabla @TABLE@\",\"latex_data_continued_caption\":\"Contenido de la tabla @TABLE@ (continúa)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"structure_and_data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"structure_and_data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_procedure_function\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_create_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}'),
(2, 'root', 'table', 'backend', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"allrows\":\"1\",\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@TABLE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_columns\":\"something\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Estructura de la tabla @TABLE@\",\"latex_structure_continued_caption\":\"Estructura de la tabla @TABLE@ (continúa)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Contenido de la tabla @TABLE@\",\"latex_data_continued_caption\":\"Contenido de la tabla @TABLE@ (continúa)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"csv_removeCRLF\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

--
-- Volcado de datos para la tabla `pma__pdf_pages`
--

INSERT INTO `pma__pdf_pages` (`db_name`, `page_nr`, `page_descr`) VALUES
('campamento', 1, 'camp');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Volcado de datos para la tabla `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"backend\",\"table\":\"persona\"},{\"db\":\"backend\",\"table\":\"tipo_perosonas\"},{\"db\":\"northwinddw\",\"table\":\"vistaventasporcategoria\"},{\"db\":\"northwinddw\",\"table\":\"vistaventasporproducto\"},{\"db\":\"northwinddw\",\"table\":\"dimproducto\"},{\"db\":\"northwinddw\",\"table\":\"factventas\"},{\"db\":\"northwinddw\",\"table\":\"dimcliente\"},{\"db\":\"northwind\",\"table\":\"products\"},{\"db\":\"northwinddw\",\"table\":\"dimfecha\"},{\"db\":\"parcial\",\"table\":\"clientes\"}]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

--
-- Volcado de datos para la tabla `pma__table_coords`
--

INSERT INTO `pma__table_coords` (`db_name`, `table_name`, `pdf_page_number`, `x`, `y`) VALUES
('campamento', 'actividad', 1, 1006, 256),
('campamento', 'casa', 1, 625, 307),
('campamento', 'casa_actividades', 1, 874, 81),
('campamento', 'comarca', 1, 330, 449),
('campamento', 'evaluacion', 1, 1072, 386),
('campamento', 'habitacion', 1, 252, 126),
('campamento', 'niño', 1, 818, 532),
('campamento', 'tutor', 1, 252, 260),
('campamento', 'tutor_rol', 1, 33, 419);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Volcado de datos para la tabla `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'campamento', 'casa', '{\"sorted_col\":\"`casa`.`comarca` ASC\"}', '2024-07-25 13:57:54'),
('root', 'searchproject', 'tblusuarios', '{\"sorted_col\":\"`tblusuarios`.`DatosPersonales` DESC\"}', '2024-04-18 16:57:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Volcado de datos para la tabla `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2024-10-29 16:11:03', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"es\",\"Console\\/Height\":478.98638,\"NavigationWidth\":286}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indices de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indices de la tabla `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indices de la tabla `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indices de la tabla `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indices de la tabla `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indices de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indices de la tabla `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indices de la tabla `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indices de la tabla `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indices de la tabla `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indices de la tabla `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Base de datos: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
