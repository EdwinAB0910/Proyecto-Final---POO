-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-02-2025 a las 01:27:36
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `viaje`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datosd`
--

CREATE TABLE `datosd` (
  `CODDATOS` char(4) NOT NULL,
  `CODD` char(2) DEFAULT NULL,
  `FECHA` varchar(8) DEFAULT NULL,
  `HORA` varchar(10) DEFAULT NULL,
  `BUS` char(2) DEFAULT NULL,
  `COSTO` decimal(8,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `datosd`
--

INSERT INTO `datosd` (`CODDATOS`, `CODD`, `FECHA`, `HORA`, `BUS`, `COSTO`) VALUES
('D001', '01', '12/04/24', '16:00', '1', 180.0),
('D002', '02', '13/04/24', '08:00', '2', 80.0),
('D003', '03', '13/04/24', '18:00', '3', 50.0),
('D004', '04', '14/04/24', '20:00', '1', 75.0),
('D005', '05', '15/04/24', '10:00', '2', 120.0),
('D006', '06', '15/04/24', '22:00', '3', 140.0),
('D007', '01', '16/04/24', '19:00', '1', 180.0),
('D008', '02', '17/04/24', '21:00', '2', 80.0),
('D009', '03', '18/04/24', '18:00', '3', 50.0),
('D010', '04', '19/04/24', '22:00', '1', 75.0),
('D011', '05', '20/04/24', '23:45', '2', 120.0),
('D012', '06', '21/04/24', '18:30', '3', 140.0),
('D013', '01', '22/04/24', '16:40', '1', 180.0),
('D014', '02', '22/04/24', '17:30', '2', 80.0),
('D015', '03', '22/04/24', '20:45', '3', 50.0),
('D016', '04', '23/04/24', '15:20', '1', 75.0),
('D017', '05', '23/04/24', '19:50', '2', 120.0),
('D018', '06', '24/04/24', '18:10', '3', 140.0),
('D019', '01', '25/04/24', '19:25', '1', 180.0),
('D020', '02', '26/04/24', '23:30', '2', 80.0),
('D021', '03', '27/04/24', '18:20', '3', 50.0),
('D022', '04', '28/04/24', '22:00', '1', 75.0),
('D023', '05', '29/04/24', '13:00', '2', 120.0),
('D024', '06', '30/04/24', '09:00', '3', 140.0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `destino`
--

CREATE TABLE `destino` (
  `CODD` char(2) NOT NULL,
  `NOMbre` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `destino`
--

INSERT INTO `destino` (`CODD`, `NOMbre`) VALUES
('01', 'Arequipa'),
('02', 'Huanuco'),
('03', 'Ica'),
('04', 'Trujillo'),
('05', 'Piura'),
('06', 'Tumbes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pasajero`
--

CREATE TABLE `pasajero` (
  `NROBOLETO` char(6) NOT NULL,
  `CODDATOS` char(4) DEFAULT NULL,
  `NOMBRE` varchar(25) DEFAULT NULL,
  `TIPO` char(1) DEFAULT NULL,
  `ASIENTO` int(11) NOT NULL,
  `PAGO` decimal(8,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pasajero`
--

INSERT INTO `pasajero` (`NROBOLETO`, `CODDATOS`, `NOMBRE`, `TIPO`, `ASIENTO`, `PAGO`) VALUES
('000001', 'D001', 'Yamila Avellaneda', '1', 1, 80.0),
('000002', 'D002', 'Manuel Barranca', '2', 3, 60.0),
('000003', 'D003', 'Miriam Yery', '3', 4, 50.0),
('000004', 'D004', 'Fernando Tabarez', '1', 10, 100.0),
('000005', 'D005', 'Timo Sanchez', '2', 15, 50.0),
('000006', 'D006', 'Facundo Racho', '3', 9, 30.0),
('000007', 'D007', 'Maria Avila', '1', 6, 120.0),
('000008', 'D008', 'Yomar Ureta', '2', 3, 100.0),
('000009', 'D009', 'Francisco Villa', '3', 4, 70.0),
('000010', 'D010', 'Magaly Pica', '1', 10, 75.0),
('000011', 'D011', 'Raul Asencio', '2', 18, 65.0),
('000012', 'D012', 'Mario Villanueva', '3', 11, 55.0),
('000013', 'D013', 'Ana Sira', '1', 7, 45.0),
('000014', 'D014', 'Domingo Tito', '2', 2, 85.0),
('000015', 'D015', 'Paolo Chumpi', '3', 16, 67.0),
('000016', 'D016', 'Federico Garcia', '1', 13, 84.0),
('000017', 'D017', 'Samuel Pijuan', '2', 5, 45.0),
('000018', 'D018', 'Paola Ricra', '3', 1, 65.0),
('000019', 'D019', 'Miguel Gonzales', '1', 19, 55.0),
('000020', 'D020', 'Fabian Hureña', '2', 20, 89.0),
('000021', 'D021', 'Martin Quispe', '3', 15, 45.0),
('000022', 'D022', 'Alberto Cueva', '1', 6, 74.0),
('000023', 'D023', 'Fabiana Lance', '2', 3, 65.0),
('000024', 'D024', 'Tertulia Jacobo', '3', 7, 60.0),
('000025', 'D025', 'Mary Bartun', '2', 12, 80.0),
('000026', 'D026', 'Violeta Ramon', '3', 16, 95.0),
('000027', 'D027', 'Cristopher Tomaz', '1', 11, 50.0),
('000028', 'D004', 'Leny Sandoval', '1', 8, 89.0),
('000029', 'D005', 'Keila Cifuentes', '2', 4, 58.0),
('000030', 'D006', 'Stefany Gomez', '3', 18, 67.0),
('000031', 'D007', 'Rosario Chavez', '1', 7, 95.0),
('000032', 'D008', 'Marco Pinto', '2', 13, 45.0),
('000033', 'D009', 'Daniel Luz', '3', 2, 100.0),
('000034', 'D010', 'Fabricio Villanueva', '1', 5, 110.0),
('000035', 'D011', 'Alejandro Tahuazo', '2', 6, 120.0),
('000036', 'D012', 'Maribel Gimenez', '3', 9, 85.0),
('000037', 'D013', 'Edwin Mariscal', '1', 10, 65.0),
('000038', 'D014', 'Italo Vercci', '2', 20, 78.0),
('000039', 'D015', 'Florinda Wayta', '3', 12, 95.0),
('000040', 'D016', 'Zamiria Hernan', '1', 9, 75.0),
('000041', 'D017', 'Heidi Casafranca', '2', 5, 30.0),
('000042', 'D018', 'Enrique Lopez', '3', 1, 86.0),
('000043', 'D019', 'Fer Huallay', '1', 6, 76.0),
('000044', 'D020', 'Teresa Goril', '2', 4, 95.0),
('000045', 'D021', 'Camila Mayta', '3', 15, 64.0),
('000046', 'D022', 'Gabriel Choca', '1', 2, 45.0),
('000047', 'D023', 'Fernando Julian', '2', 1, 100.0),
('000048', 'D024', 'Fernanda Santi', '3', 8, 106.0),
('000049', 'D001', 'Camilo Yañez', '1', 20, 104.0),
('000050', 'D002', 'Roman Herbi', '2', 9, 57.0),
('000051', 'D003', 'Fito Targues', '3', 16, 95.0),
('000052', 'D004', 'Mario Huaman', '1', 18, 100.0),
('000053', 'D005', 'Sergio Hamilton', '2', 3, 65.0),
('000054', 'D006', 'Manolo Trebol', '3', 2, 79.0),
('000055', 'D007', 'Jose Nova', '1', 17, 85.0),
('000056', 'D008', 'Juan Reynoso', '2', 15, 100.0),
('000057', 'D009', 'Hugo Rigas', '3', 11, 110.0),
('000058', 'D010', 'Samuel Llantay', '1', 5, 84.0),
('000059', 'D011', 'Piero Xixa', '2', 9, 65.0),
('000060', 'D012', 'Diego Tamusho', '3', 14, 85.0),
('000061', 'D013', 'Andrea Tenerife', '1', 12, 95.0),
('000062', 'D014', 'Gino Fabiansky', '2', 10, 100.0),
('000063', 'D015', 'Zaul Porto', '3', 8, 101.0),
('000064', 'D016', 'Laura Quinto', '1', 17, 106.0),
('000065', 'D017', 'Lilo Tamaroc', '2', 2, 102.0),
('000066', 'D018', 'Leon Ruiz', '3', 8, 90.0),
('000067', 'D019', 'Jasmin Hureña', '1', 10, 80.0),
('000068', 'D020', 'Rodrigo Ferrari', '2', 20, 70.0),
('000069', 'D021', 'Ana Garcia', '3', 9, 60.0),
('000070', 'D022', 'Luis Avellaneda', '1', 7, 80.0),
('000071', 'D023', 'Alex Zampallo', '2', 6, 95.0),
('000072', 'D024', 'Josefa Gorsky', '3', 19, 84.0),
('000074', 'D007', 'Edwin Aguirre', '1', 1, 90.0),
('000075', 'D007', 'Anthony Farfan', '3', 20, 126.0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `datosd`
--
ALTER TABLE `datosd`
  ADD PRIMARY KEY (`CODDATOS`);

--
-- Indices de la tabla `destino`
--
ALTER TABLE `destino`
  ADD PRIMARY KEY (`CODD`);

--
-- Indices de la tabla `pasajero`
--
ALTER TABLE `pasajero`
  ADD PRIMARY KEY (`NROBOLETO`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
