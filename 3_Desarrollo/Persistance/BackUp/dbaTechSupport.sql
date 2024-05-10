/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `dbatechsupport`;
CREATE DATABASE IF NOT EXISTS `dbatechsupport` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `dbatechsupport`;

DROP TABLE IF EXISTS `ciudad`;
CREATE TABLE IF NOT EXISTS `ciudad` (
  `idCiudad` char(36) NOT NULL,
  `idDepartamento` char(36) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `Activo` bit(1) DEFAULT b'1',
  `Actualiza` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idCiudad`),
  KEY `idDepartamento` (`idDepartamento`),
  CONSTRAINT `ciudad_ibfk_1` FOREIGN KEY (`idDepartamento`) REFERENCES `departamento` (`idDepartamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DELETE FROM `ciudad`;
INSERT INTO `ciudad` (`idCiudad`, `idDepartamento`, `nombre`, `Activo`, `Actualiza`) VALUES
	('61ecd3f1-fffa-11ee-a74f-d408ab4249a8', 'ae6532f6-fff5-11ee-a74f-d408ab4249a8', 'Medellin', b'1', '2024-04-21 11:15:34'),
	('61ee19ec-fffa-11ee-a74f-d408ab4249a8', 'ae6532f6-fff5-11ee-a74f-d408ab4249a8', 'Bello', b'1', '2024-04-21 11:15:34'),
	('61eeafb5-fffa-11ee-a74f-d408ab4249a8', 'ae6532f6-fff5-11ee-a74f-d408ab4249a8', 'Envigado', b'1', '2024-04-21 11:15:34'),
	('61effa5b-fffa-11ee-a74f-d408ab4249a8', 'ae66790a-fff5-11ee-a74f-d408ab4249a8', 'Leticia', b'1', '2024-04-21 11:15:34'),
	('61f0fec9-fffa-11ee-a74f-d408ab4249a8', 'ae6708d5-fff5-11ee-a74f-d408ab4249a8', 'Tunja', b'1', '2024-04-21 11:15:34'),
	('61f1b8f9-fffa-11ee-a74f-d408ab4249a8', 'ae67b8cb-fff5-11ee-a74f-d408ab4249a8', 'Cartagena', b'1', '2024-04-21 11:15:34'),
	('61f26bc7-fffa-11ee-a74f-d408ab4249a8', 'ae68bd8d-fff5-11ee-a74f-d408ab4249a8', 'Cucuta', b'1', '2024-04-21 11:15:34'),
	('61f30247-fffa-11ee-a74f-d408ab4249a8', 'ae696085-fff5-11ee-a74f-d408ab4249a8', 'San Cristobal', b'1', '2024-04-21 11:15:34'),
	('61f3eaf7-fffa-11ee-a74f-d408ab4249a8', 'ae696085-fff5-11ee-a74f-d408ab4249a8', 'Rubio', b'1', '2024-04-21 11:15:34'),
	('61f4c864-fffa-11ee-a74f-d408ab4249a8', 'ae69fa88-fff5-11ee-a74f-d408ab4249a8', 'Merida', b'1', '2024-04-21 11:15:34'),
	('61f56824-fffa-11ee-a74f-d408ab4249a8', 'ae6a83a8-fff5-11ee-a74f-d408ab4249a8', 'Trujillo', b'1', '2024-04-21 11:15:34'),
	('61f5fea4-fffa-11ee-a74f-d408ab4249a8', 'ae6b88b0-fff5-11ee-a74f-d408ab4249a8', 'Maracaibo', b'1', '2024-04-21 11:15:34');

DROP TABLE IF EXISTS `departamento`;
CREATE TABLE IF NOT EXISTS `departamento` (
  `idDepartamento` char(36) NOT NULL,
  `idPais` char(36) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `Activo` bit(1) DEFAULT b'1',
  `Actualiza` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idDepartamento`),
  KEY `idPais` (`idPais`),
  CONSTRAINT `departamento_ibfk_1` FOREIGN KEY (`idPais`) REFERENCES `pais` (`idPais`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DELETE FROM `departamento`;
INSERT INTO `departamento` (`idDepartamento`, `idPais`, `nombre`, `Activo`, `Actualiza`) VALUES
	('ae6532f6-fff5-11ee-a74f-d408ab4249a8', '1e62c82e-fff1-11ee-a74f-d408ab4249a8', 'Antioquia', b'1', '2024-04-21 10:41:55'),
	('ae66790a-fff5-11ee-a74f-d408ab4249a8', '1e62c82e-fff1-11ee-a74f-d408ab4249a8', 'Amazonas', b'1', '2024-04-21 10:41:55'),
	('ae6708d5-fff5-11ee-a74f-d408ab4249a8', '1e62c82e-fff1-11ee-a74f-d408ab4249a8', 'Boyaca', b'1', '2024-04-21 10:41:55'),
	('ae67b8cb-fff5-11ee-a74f-d408ab4249a8', '1e62c82e-fff1-11ee-a74f-d408ab4249a8', 'Bolivar', b'1', '2024-04-21 10:41:55'),
	('ae68bd8d-fff5-11ee-a74f-d408ab4249a8', '1e62c82e-fff1-11ee-a74f-d408ab4249a8', 'Norte de Santander', b'1', '2024-04-21 10:41:55'),
	('ae696085-fff5-11ee-a74f-d408ab4249a8', '9be0219b-fff1-11ee-a74f-d408ab4249a8', 'Tachira', b'1', '2024-04-21 10:41:55'),
	('ae69fa88-fff5-11ee-a74f-d408ab4249a8', '9be0219b-fff1-11ee-a74f-d408ab4249a8', 'Merida', b'1', '2024-04-21 10:41:55'),
	('ae6a83a8-fff5-11ee-a74f-d408ab4249a8', '9be0219b-fff1-11ee-a74f-d408ab4249a8', 'Trujillo', b'1', '2024-04-21 10:41:55'),
	('ae6b88b0-fff5-11ee-a74f-d408ab4249a8', '9be0219b-fff1-11ee-a74f-d408ab4249a8', 'Maracaibo', b'1', '2024-04-21 10:41:55');

DROP TABLE IF EXISTS `detallediagnostico`;
CREATE TABLE IF NOT EXISTS `detallediagnostico` (
  `idDetalleDiagnostico` char(36) NOT NULL,
  `idDiagnostico` char(36) DEFAULT NULL,
  `observaciones` varchar(255) DEFAULT NULL,
  `fechaDiagnostico` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Activo` bit(1) DEFAULT b'1',
  `Actualiza` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idDetalleDiagnostico`),
  KEY `idDiagnostico` (`idDiagnostico`),
  CONSTRAINT `detallediagnostico_ibfk_1` FOREIGN KEY (`idDiagnostico`) REFERENCES `diagnostico` (`idDiagnostico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DELETE FROM `detallediagnostico`;
INSERT INTO `detallediagnostico` (`idDetalleDiagnostico`, `idDiagnostico`, `observaciones`, `fechaDiagnostico`, `Activo`, `Actualiza`) VALUES
	('31165084-0270-11ef-a74f-d408ab4249a8', '30285874-026c-11ef-a74f-d408ab4249a8', 'El conector de la pantalla se encontraba sulfatado y se procedió a limpiarlo.', '2024-04-24 14:23:55', b'1', '2024-04-24 14:23:55'),
	('3117e847-0270-11ef-a74f-d408ab4249a8', '302a126e-026c-11ef-a74f-d408ab4249a8', 'Se realizó la limpieza de la placa madre y se procedió a cambiar el conector de carga.', '2024-04-24 14:23:55', b'1', '2024-04-24 14:23:55'),
	('37ddafe3-0270-11ef-a74f-d408ab4249a8', '30285874-026c-11ef-a74f-d408ab4249a8', 'El conector de la pantalla se encontraba sulfatado y se procedió a limpiarlo.', '2024-04-24 14:24:06', b'1', '2024-04-24 14:24:06'),
	('37dea82e-0270-11ef-a74f-d408ab4249a8', '302a126e-026c-11ef-a74f-d408ab4249a8', 'Se realizó la limpieza de la placa madre y se procedió a cambiar el conector de carga.', '2024-04-24 14:24:06', b'1', '2024-04-24 14:24:06'),
	('37df07be-0270-11ef-a74f-d408ab4249a8', '302a126e-026c-11ef-a74f-d408ab4249a8', 'Se le hizo aumento de la Memoria RAM por solicitud del usuario, se añadio un modulo de 8GB DDR4.', '2024-04-24 14:24:06', b'1', '2024-04-24 14:24:06');

DROP TABLE IF EXISTS `detallefactura`;
CREATE TABLE IF NOT EXISTS `detallefactura` (
  `idDetalleFactura` char(36) NOT NULL,
  `idFactura` char(36) DEFAULT NULL,
  `idDiagnostico` char(36) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `subtotal` decimal(12,2) DEFAULT NULL,
  `Activo` bit(1) DEFAULT b'1',
  `Actualiza` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idDetalleFactura`),
  KEY `idFactura` (`idFactura`),
  KEY `idDiagnostico` (`idDiagnostico`),
  CONSTRAINT `detallefactura_ibfk_1` FOREIGN KEY (`idFactura`) REFERENCES `factura` (`idFactura`),
  CONSTRAINT `detallefactura_ibfk_2` FOREIGN KEY (`idDiagnostico`) REFERENCES `diagnostico` (`idDiagnostico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DELETE FROM `detallefactura`;
INSERT INTO `detallefactura` (`idDetalleFactura`, `idFactura`, `idDiagnostico`, `descripcion`, `subtotal`, `Activo`, `Actualiza`) VALUES
	('e992a6eb-0276-11ef-a74f-d408ab4249a8', '19ef2d30-0274-11ef-a74f-d408ab4249a8', '30285874-026c-11ef-a74f-d408ab4249a8', 'Cambio de pantalla', 100000.00, b'1', '2024-04-24 15:12:01'),
	('e994c94f-0276-11ef-a74f-d408ab4249a8', '19f0da6f-0274-11ef-a74f-d408ab4249a8', '302a126e-026c-11ef-a74f-d408ab4249a8', 'Reparacion placa madre', 250000.00, b'1', '2024-04-24 15:12:02'),
	('e995617d-0276-11ef-a74f-d408ab4249a8', '19f159dc-0274-11ef-a74f-d408ab4249a8', '302acdeb-026c-11ef-a74f-d408ab4249a8', 'Aumento memoria RAM', 1550000.00, b'1', '2024-04-24 15:12:02');

DROP TABLE IF EXISTS `diagnostico`;
CREATE TABLE IF NOT EXISTS `diagnostico` (
  `idDiagnostico` char(36) NOT NULL,
  `idDispositivo` char(36) DEFAULT NULL,
  `idEmpleado` char(36) DEFAULT NULL,
  `idEstadoDiagnostico` char(36) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `fechaInicio` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fechaFin` datetime DEFAULT NULL,
  `activo` bit(1) DEFAULT b'1',
  `actualiza` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idDiagnostico`),
  KEY `idDispositivo` (`idDispositivo`),
  KEY `idEmpleado` (`idEmpleado`),
  KEY `idEstadoDiagnostico` (`idEstadoDiagnostico`),
  CONSTRAINT `diagnostico_ibfk_1` FOREIGN KEY (`idDispositivo`) REFERENCES `dispositivo` (`idDispositivo`),
  CONSTRAINT `diagnostico_ibfk_2` FOREIGN KEY (`idEmpleado`) REFERENCES `empleado` (`idEmpleado`),
  CONSTRAINT `diagnostico_ibfk_3` FOREIGN KEY (`idEstadoDiagnostico`) REFERENCES `estadodiagnostico` (`idEstadoDiagnostico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DELETE FROM `diagnostico`;
INSERT INTO `diagnostico` (`idDiagnostico`, `idDispositivo`, `idEmpleado`, `idEstadoDiagnostico`, `descripcion`, `fechaInicio`, `fechaFin`, `activo`, `actualiza`) VALUES
	('30285874-026c-11ef-a74f-d408ab4249a8', 'fc21fcd6-0269-11ef-a74f-d408ab4249a8', 'e079276c-0107-11ef-a74f-d408ab4249a8', '319bc138-0269-11ef-a74f-d408ab4249a8', 'Dispositivo entra a reparación por daño en la pantalla.', '2021-06-01 00:00:00', '2021-06-01 00:00:00', b'1', '2024-04-24 13:55:15'),
	('302a126e-026c-11ef-a74f-d408ab4249a8', 'fc21fcd6-0269-11ef-a74f-d408ab4249a8', 'e079276c-0107-11ef-a74f-d408ab4249a8', '319bc138-0269-11ef-a74f-d408ab4249a8', 'Dispositivo entra a reparación por daño en la placa madre.', '2023-06-01 00:00:00', '2023-06-05 00:00:00', b'1', '2024-04-24 13:55:15'),
	('302acdeb-026c-11ef-a74f-d408ab4249a8', 'fc2300ac-0269-11ef-a74f-d408ab4249a8', 'e0787892-0107-11ef-a74f-d408ab4249a8', '319bc138-0269-11ef-a74f-d408ab4249a8', 'Dispositivo entra a reparación por daño en la MEMORIA RAM.', '2024-04-01 00:00:00', '2023-04-12 00:00:00', b'1', '2024-04-24 13:55:15');

DROP TABLE IF EXISTS `direccion`;
CREATE TABLE IF NOT EXISTS `direccion` (
  `idDireccion` char(36) NOT NULL,
  `idCiudad` char(36) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `zipCode` varchar(15) DEFAULT NULL,
  `Activo` bit(1) DEFAULT b'1',
  `Actualiza` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idDireccion`),
  KEY `idCiudad` (`idCiudad`),
  CONSTRAINT `direccion_ibfk_1` FOREIGN KEY (`idCiudad`) REFERENCES `ciudad` (`idCiudad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DELETE FROM `direccion`;
INSERT INTO `direccion` (`idDireccion`, `idCiudad`, `direccion`, `zipCode`, `Activo`, `Actualiza`) VALUES
	('6679e31f-00d1-11ef-a74f-d408ab4249a8', '61ee19ec-fffa-11ee-a74f-d408ab4249a8', 'Carrera 48 #44-08 APTO 302, Manchester', '051053', b'1', '2024-04-22 12:54:43'),
	('667c1520-00d1-11ef-a74f-d408ab4249a8', '61ecd3f1-fffa-11ee-a74f-d408ab4249a8', ' Carrera 56C N° 51-110, Centro', '050015', b'1', '2024-04-22 12:54:43'),
	('667cc2e0-00d1-11ef-a74f-d408ab4249a8', '61ee19ec-fffa-11ee-a74f-d408ab4249a8', 'Diagonal 54 #44-15 APTO 1404, Ciudad Niquia', '051050', b'1', '2024-04-22 12:54:43'),
	('667d7526-00d1-11ef-a74f-d408ab4249a8', '61ee19ec-fffa-11ee-a74f-d408ab4249a8', 'Calle 45 N° 61-40, Salento', '051053', b'1', '2024-04-22 12:54:43');

DROP TABLE IF EXISTS `dispositivo`;
CREATE TABLE IF NOT EXISTS `dispositivo` (
  `idDispositivo` char(36) NOT NULL,
  `idUsuario` char(36) DEFAULT NULL,
  `idTipoDispositivo` char(36) DEFAULT NULL,
  `marca` varchar(255) DEFAULT NULL,
  `modelo` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `Activo` bit(1) DEFAULT b'1',
  `Actualiza` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idDispositivo`),
  KEY `idUsuario` (`idUsuario`),
  KEY `idTipoDispositivo` (`idTipoDispositivo`),
  CONSTRAINT `dispositivo_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`),
  CONSTRAINT `dispositivo_ibfk_2` FOREIGN KEY (`idTipoDispositivo`) REFERENCES `tipodispositivo` (`idTipoDispositivo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DELETE FROM `dispositivo`;
INSERT INTO `dispositivo` (`idDispositivo`, `idUsuario`, `idTipoDispositivo`, `marca`, `modelo`, `color`, `Activo`, `Actualiza`) VALUES
	('fc20a43d-0269-11ef-a74f-d408ab4249a8', '1c1890ca-01ba-11ef-a74f-d408ab4249a8', 'f3b5d91f-0268-11ef-a74f-d408ab4249a8', 'XIAOMI', 'REDMI NOTE 11S', 'Azul', b'1', '2024-04-24 13:39:29'),
	('fc21fcd6-0269-11ef-a74f-d408ab4249a8', '1c19df3d-01ba-11ef-a74f-d408ab4249a8', 'f3b5d91f-0268-11ef-a74f-d408ab4249a8', 'SAMSUNG', 'GALAXY 10', 'Azul', b'1', '2024-04-24 13:39:29'),
	('fc2300ac-0269-11ef-a74f-d408ab4249a8', '1c1890ca-01ba-11ef-a74f-d408ab4249a8', 'f3b4f8de-0268-11ef-a74f-d408ab4249a8', 'XIAOMI', 'REDMI NOTE 11S', 'Azul', b'1', '2024-04-24 13:39:29');

DROP TABLE IF EXISTS `empleado`;
CREATE TABLE IF NOT EXISTS `empleado` (
  `idEmpleado` char(36) NOT NULL,
  `idSede` char(36) DEFAULT NULL,
  `idTipoEmpleado` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `apellido` varchar(255) DEFAULT NULL,
  `celular` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `Activo` bit(1) DEFAULT b'1',
  `Actualiza` datetime DEFAULT CURRENT_TIMESTAMP,
  `fecha_ingreso` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idEmpleado`),
  KEY `idSede` (`idSede`),
  KEY `idTipoEmpleado` (`idTipoEmpleado`),
  CONSTRAINT `empleado_ibfk_1` FOREIGN KEY (`idSede`) REFERENCES `sede` (`idSede`),
  CONSTRAINT `empleado_ibfk_2` FOREIGN KEY (`idTipoEmpleado`) REFERENCES `tipoempleado` (`idTipoEmpleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DELETE FROM `empleado`;
INSERT INTO `empleado` (`idEmpleado`, `idSede`, `idTipoEmpleado`, `nombre`, `apellido`, `celular`, `email`, `Activo`, `Actualiza`, `fecha_ingreso`) VALUES
	('e07689e2-0107-11ef-a74f-d408ab4249a8', 'ee4adb39-0105-11ef-a74f-d408ab4249a8', '1010d420-00ef-11ef-a74f-d408ab4249a8', 'Juan', 'Perez', '1234567890', 'jp@empresa.com', b'1', '2024-04-22 19:24:41', '2024-04-23 00:24:41'),
	('e0787892-0107-11ef-a74f-d408ab4249a8', 'ee4c043e-0105-11ef-a74f-d408ab4249a8', '10116267-00ef-11ef-a74f-d408ab4249a8', 'Alejandro', 'Ramos', '1234567890', 'ar@empresa.com', b'1', '2024-04-22 19:24:41', '2024-04-23 00:24:41'),
	('e079276c-0107-11ef-a74f-d408ab4249a8', 'ee4d1462-0105-11ef-a74f-d408ab4249a8', '100eb74c-00ef-11ef-a74f-d408ab4249a8', 'Jesus', 'Moncada', '1234567890', 'jm@empresa.com', b'1', '2024-04-22 19:24:41', '2024-04-23 00:24:41');

DROP TABLE IF EXISTS `empresa`;
CREATE TABLE IF NOT EXISTS `empresa` (
  `idEmpresa` char(36) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `Activo` bit(1) DEFAULT b'1',
  `Actualiza` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idEmpresa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DELETE FROM `empresa`;
INSERT INTO `empresa` (`idEmpresa`, `nombre`, `Activo`, `Actualiza`) VALUES
	('d338e6d7-0102-11ef-a74f-d408ab4249a8', 'Digital Store', b'1', '2024-04-22 18:48:31'),
	('d339da05-0102-11ef-a74f-d408ab4249a8', 'Apple Store', b'1', '2024-04-22 18:48:31'),
	('d33a3a1c-0102-11ef-a74f-d408ab4249a8', 'Digital MTX', b'1', '2024-04-22 18:48:31'),
	('d33aa791-0102-11ef-a74f-d408ab4249a8', 'NVIDIA', b'1', '2024-04-22 18:48:31'),
	('d476b79d-0102-11ef-a74f-d408ab4249a8', 'Digital Store', b'1', '2024-04-22 18:48:33'),
	('d477874d-0102-11ef-a74f-d408ab4249a8', 'Apple Store', b'1', '2024-04-22 18:48:33'),
	('d478040e-0102-11ef-a74f-d408ab4249a8', 'Digital MTX', b'1', '2024-04-22 18:48:33'),
	('d4785ef5-0102-11ef-a74f-d408ab4249a8', 'NVIDIA', b'1', '2024-04-22 18:48:33');

DROP TABLE IF EXISTS `estadodiagnostico`;
CREATE TABLE IF NOT EXISTS `estadodiagnostico` (
  `idEstadoDiagnostico` char(36) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `Activo` bit(1) DEFAULT b'1',
  `Actualiza` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idEstadoDiagnostico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DELETE FROM `estadodiagnostico`;
INSERT INTO `estadodiagnostico` (`idEstadoDiagnostico`, `descripcion`, `Activo`, `Actualiza`) VALUES
	('319a4125-0269-11ef-a74f-d408ab4249a8', 'En Proceso', b'1', '2024-04-24 13:33:49'),
	('319b22af-0269-11ef-a74f-d408ab4249a8', 'Finalizado', b'1', '2024-04-24 13:33:49'),
	('319bc138-0269-11ef-a74f-d408ab4249a8', 'Entregado', b'1', '2024-04-24 13:33:49'),
	('319cb7b3-0269-11ef-a74f-d408ab4249a8', 'Cancelado', b'1', '2024-04-24 13:33:49'),
	('319d7e5f-0269-11ef-a74f-d408ab4249a8', 'En Espera', b'1', '2024-04-24 13:33:49'),
	('319e71c1-0269-11ef-a74f-d408ab4249a8', 'En Revision', b'1', '2024-04-24 13:33:49'),
	('319f46ea-0269-11ef-a74f-d408ab4249a8', 'En Reparacion', b'1', '2024-04-24 13:33:49'),
	('31a01fd8-0269-11ef-a74f-d408ab4249a8', 'En Espera de Repuesto', b'1', '2024-04-24 13:33:49');

DROP TABLE IF EXISTS `estadofactura`;
CREATE TABLE IF NOT EXISTS `estadofactura` (
  `idEstadoFactura` char(36) NOT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `Activo` bit(1) DEFAULT b'1',
  `Actualiza` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idEstadoFactura`),
  UNIQUE KEY `estado` (`estado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DELETE FROM `estadofactura`;
INSERT INTO `estadofactura` (`idEstadoFactura`, `estado`, `Activo`, `Actualiza`) VALUES
	('d2331583-0272-11ef-a74f-d408ab4249a8', 'Pendiente', b'1', '2024-04-24 14:42:44'),
	('d233d20b-0272-11ef-a74f-d408ab4249a8', 'Pagada', b'1', '2024-04-24 14:42:44'),
	('d2361503-0272-11ef-a74f-d408ab4249a8', 'Anulada', b'1', '2024-04-24 14:42:44'),
	('d238a3c6-0272-11ef-a74f-d408ab4249a8', 'En Proceso', b'1', '2024-04-24 14:42:44');

DROP TABLE IF EXISTS `factura`;
CREATE TABLE IF NOT EXISTS `factura` (
  `idFactura` char(36) NOT NULL,
  `idUsuario` char(36) DEFAULT NULL,
  `idEstadoFactura` char(36) DEFAULT NULL,
  `fecha` datetime DEFAULT CURRENT_TIMESTAMP,
  `Activo` bit(1) DEFAULT b'1',
  `Actualiza` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idFactura`),
  KEY `idUsuario` (`idUsuario`),
  KEY `idEstadoFactura` (`idEstadoFactura`),
  CONSTRAINT `factura_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`),
  CONSTRAINT `factura_ibfk_2` FOREIGN KEY (`idEstadoFactura`) REFERENCES `estadofactura` (`idEstadoFactura`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DELETE FROM `factura`;
INSERT INTO `factura` (`idFactura`, `idUsuario`, `idEstadoFactura`, `fecha`, `Activo`, `Actualiza`) VALUES
	('19ef2d30-0274-11ef-a74f-d408ab4249a8', '1c1890ca-01ba-11ef-a74f-d408ab4249a8', 'd233d20b-0272-11ef-a74f-d408ab4249a8', '2021-06-01 00:00:00', b'1', '2024-04-24 14:51:54'),
	('19f0da6f-0274-11ef-a74f-d408ab4249a8', '1c1890ca-01ba-11ef-a74f-d408ab4249a8', 'd233d20b-0272-11ef-a74f-d408ab4249a8', '2024-04-01 00:00:00', b'1', '2024-04-24 14:51:54'),
	('19f159dc-0274-11ef-a74f-d408ab4249a8', '1c19df3d-01ba-11ef-a74f-d408ab4249a8', 'd233d20b-0272-11ef-a74f-d408ab4249a8', '2023-06-01 00:00:00', b'1', '2024-04-24 14:51:54');

DROP TABLE IF EXISTS `pais`;
CREATE TABLE IF NOT EXISTS `pais` (
  `idPais` char(36) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `Activo` bit(1) DEFAULT b'1',
  `Actualiza` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idPais`),
  UNIQUE KEY `const_unique` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DELETE FROM `pais`;
INSERT INTO `pais` (`idPais`, `nombre`, `Activo`, `Actualiza`) VALUES
	('1e62c82e-fff1-11ee-a74f-d408ab4249a8', 'Colombia', b'1', '2024-04-21 10:09:15'),
	('9be0219b-fff1-11ee-a74f-d408ab4249a8', 'Venezuela', b'1', '2024-04-21 10:12:46');

DROP TABLE IF EXISTS `sede`;
CREATE TABLE IF NOT EXISTS `sede` (
  `idSede` char(36) NOT NULL,
  `idEmpresa` char(36) DEFAULT NULL,
  `idDireccion` char(36) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `Activo` bit(1) DEFAULT b'1',
  `Actualiza` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idSede`),
  KEY `idEmpresa` (`idEmpresa`),
  KEY `idDireccion` (`idDireccion`),
  CONSTRAINT `sede_ibfk_1` FOREIGN KEY (`idEmpresa`) REFERENCES `empresa` (`idEmpresa`),
  CONSTRAINT `sede_ibfk_2` FOREIGN KEY (`idDireccion`) REFERENCES `direccion` (`idDireccion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DELETE FROM `sede`;
INSERT INTO `sede` (`idSede`, `idEmpresa`, `idDireccion`, `nombre`, `email`, `Activo`, `Actualiza`) VALUES
	('ee4adb39-0105-11ef-a74f-d408ab4249a8', 'd338e6d7-0102-11ef-a74f-d408ab4249a8', '667c1520-00d1-11ef-a74f-d408ab4249a8', 'Digital Store - Medellin', 'digiMedellin@empresa.com', b'1', '2024-04-22 19:10:45'),
	('ee4c043e-0105-11ef-a74f-d408ab4249a8', 'd338e6d7-0102-11ef-a74f-d408ab4249a8', '667d7526-00d1-11ef-a74f-d408ab4249a8', 'Digital Store - Bello', 'digiBello@empresa.com', b'1', '2024-04-22 19:10:45'),
	('ee4c7d31-0105-11ef-a74f-d408ab4249a8', 'd33aa791-0102-11ef-a74f-d408ab4249a8', '6679e31f-00d1-11ef-a74f-d408ab4249a8', 'NVIDIA - Bello', 'nvidia_bello@empresa.com', b'1', '2024-04-22 19:10:45'),
	('ee4d1462-0105-11ef-a74f-d408ab4249a8', 'd339da05-0102-11ef-a74f-d408ab4249a8', '667cc2e0-00d1-11ef-a74f-d408ab4249a8', 'Apple - Bello', 'appleBello@empresa.com', b'1', '2024-04-22 19:10:45'),
	('ee4e4859-0105-11ef-a74f-d408ab4249a8', 'd33a3a1c-0102-11ef-a74f-d408ab4249a8', '667c1520-00d1-11ef-a74f-d408ab4249a8', 'DigitalMTX - Medellin', 'digitalMedellin@empresa.com', b'1', '2024-04-22 19:10:45');

DROP TABLE IF EXISTS `tipodispositivo`;
CREATE TABLE IF NOT EXISTS `tipodispositivo` (
  `idTipoDispositivo` char(36) NOT NULL,
  `Nombre` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `Activo` bit(1) DEFAULT b'1',
  `Actualiza` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idTipoDispositivo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DELETE FROM `tipodispositivo`;
INSERT INTO `tipodispositivo` (`idTipoDispositivo`, `Nombre`, `descripcion`, `Activo`, `Actualiza`) VALUES
	('f3b4f8de-0268-11ef-a74f-d408ab4249a8', 'Computadora', 'Dispositivo electronico que permite procesar informacion', b'1', '2024-04-24 13:32:06'),
	('f3b5d91f-0268-11ef-a74f-d408ab4249a8', 'Celular', 'Dispositivo electronico que permite comunicacion inalambrica', b'1', '2024-04-24 13:32:06'),
	('f3b6c121-0268-11ef-a74f-d408ab4249a8', 'Tablet', 'Dispositivo electronico que permite procesar informacion', b'1', '2024-04-24 13:32:06'),
	('f3b8114e-0268-11ef-a74f-d408ab4249a8', 'Smartwatch', 'Dispositivo electronico que permite recibir notificaciones', b'1', '2024-04-24 13:32:06'),
	('f3b8dc6a-0268-11ef-a74f-d408ab4249a8', 'Consola de Videojuegos', 'Dispositivo electronico que permite jugar videojuegos', b'1', '2024-04-24 13:32:06'),
	('f3b9a058-0268-11ef-a74f-d408ab4249a8', 'Impresora', 'Dispositivo electronico que permite imprimir documentos', b'1', '2024-04-24 13:32:06'),
	('f3ba5b2b-0268-11ef-a74f-d408ab4249a8', 'Router', 'Dispositivo electronico que permite conexion a internet', b'1', '2024-04-24 13:32:06');

DROP TABLE IF EXISTS `tipodocumento`;
CREATE TABLE IF NOT EXISTS `tipodocumento` (
  `idTipoDocumento` char(36) NOT NULL,
  `Nombre` varchar(255) DEFAULT NULL,
  `Activo` bit(1) DEFAULT b'1',
  `Actualiza` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idTipoDocumento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DELETE FROM `tipodocumento`;
INSERT INTO `tipodocumento` (`idTipoDocumento`, `Nombre`, `Activo`, `Actualiza`) VALUES
	('740c253f-01b7-11ef-a74f-d408ab4249a8', 'Cedula de Ciudadania', b'1', '2024-04-23 16:21:30'),
	('740d148a-01b7-11ef-a74f-d408ab4249a8', 'Tarjeta de Identidad', b'1', '2024-04-23 16:21:30'),
	('740e147a-01b7-11ef-a74f-d408ab4249a8', 'Cedula de Extranjeria', b'1', '2024-04-23 16:21:30'),
	('740ee50d-01b7-11ef-a74f-d408ab4249a8', 'Pasaporte', b'1', '2024-04-23 16:21:30'),
	('740f7a08-01b7-11ef-a74f-d408ab4249a8', 'Permiso Especial de Permanencia', b'1', '2024-04-23 16:21:30');

DROP TABLE IF EXISTS `tipoempleado`;
CREATE TABLE IF NOT EXISTS `tipoempleado` (
  `idTipoEmpleado` char(36) NOT NULL,
  `cargo` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `Activo` bit(1) DEFAULT b'1',
  `Actualiza` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idTipoEmpleado`),
  UNIQUE KEY `descripcion` (`descripcion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DELETE FROM `tipoempleado`;
INSERT INTO `tipoempleado` (`idTipoEmpleado`, `cargo`, `descripcion`, `Activo`, `Actualiza`) VALUES
	('100eb74c-00ef-11ef-a74f-d408ab4249a8', 'Tecnico Apple', 'Tecnico especializado en reparacion de dispositivos Apple', b'1', '2024-04-22 16:27:03'),
	('1010d420-00ef-11ef-a74f-d408ab4249a8', 'Tecnico Soporte Computadoras', 'Tecnico especializado en soporte tecnico De hardware y software', b'1', '2024-04-22 16:27:03'),
	('10116267-00ef-11ef-a74f-d408ab4249a8', 'Tecnico Soporte Celulares', 'Tecnico especializado en soporte tecnico Celulares', b'1', '2024-04-22 16:27:03');

DROP TABLE IF EXISTS `tipogenero`;
CREATE TABLE IF NOT EXISTS `tipogenero` (
  `idTipoGenero` char(36) NOT NULL,
  `Nombre` varchar(255) DEFAULT NULL,
  `Activo` bit(1) DEFAULT b'1',
  `Actualiza` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idTipoGenero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DELETE FROM `tipogenero`;
INSERT INTO `tipogenero` (`idTipoGenero`, `Nombre`, `Activo`, `Actualiza`) VALUES
	('422e0a3c-01b7-11ef-a74f-d408ab4249a8', 'Masculino', b'1', '2024-04-23 16:20:07'),
	('422f34bc-01b7-11ef-a74f-d408ab4249a8', 'Femenino', b'1', '2024-04-23 16:20:07'),
	('422fb6ed-01b7-11ef-a74f-d408ab4249a8', 'No Binario', b'1', '2024-04-23 16:20:07'),
	('42308977-01b7-11ef-a74f-d408ab4249a8', 'Otro', b'1', '2024-04-23 16:20:07');

DROP TABLE IF EXISTS `tipousuario`;
CREATE TABLE IF NOT EXISTS `tipousuario` (
  `idTipoUsuario` char(36) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `Activo` bit(1) DEFAULT b'1',
  `Actualiza` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idTipoUsuario`),
  UNIQUE KEY `descripcion` (`descripcion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DELETE FROM `tipousuario`;
INSERT INTO `tipousuario` (`idTipoUsuario`, `nombre`, `descripcion`, `Activo`, `Actualiza`) VALUES
	('0a4c6d31-01b7-11ef-a74f-d408ab4249a8', 'Persona Natural', 'Individuo  que desempeña y ejerce obligaciones a título personal.', b'1', '2024-04-23 16:18:33'),
	('0a4de4c6-01b7-11ef-a74f-d408ab4249a8', 'Persona Juridica', 'Sociedad conformada por una o más personas, por ejemplo, una empresa.', b'1', '2024-04-23 16:18:33'),
	('0a4e5f54-01b7-11ef-a74f-d408ab4249a8', 'Empresa', 'Organización conformada por un grupo de personas que se dedican a actividades comerciales.', b'1', '2024-04-23 16:18:33');

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `idUsuario` char(36) NOT NULL,
  `idTipoUsuario` char(36) DEFAULT NULL,
  `idTipoGenero` char(36) DEFAULT NULL,
  `idTipoDocumento` char(36) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `Activo` bit(1) DEFAULT b'1',
  `Actualiza` datetime DEFAULT CURRENT_TIMESTAMP,
  `numeroDocumento` varchar(20) NOT NULL,
  PRIMARY KEY (`idUsuario`),
  UNIQUE KEY `fk_numero_documento_usuario` (`numeroDocumento`),
  KEY `fk_usuario_tipoUsuario` (`idTipoUsuario`),
  KEY `fk_usuario_tipoGenero` (`idTipoGenero`),
  KEY `fk_usuario_tipoDocumento` (`idTipoDocumento`),
  CONSTRAINT `fk_usuario_tipoDocumento` FOREIGN KEY (`idTipoDocumento`) REFERENCES `tipodocumento` (`idTipoDocumento`),
  CONSTRAINT `fk_usuario_tipoGenero` FOREIGN KEY (`idTipoGenero`) REFERENCES `tipogenero` (`idTipoGenero`),
  CONSTRAINT `fk_usuario_tipoUsuario` FOREIGN KEY (`idTipoUsuario`) REFERENCES `tipousuario` (`idTipoUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DELETE FROM `usuario`;
INSERT INTO `usuario` (`idUsuario`, `idTipoUsuario`, `idTipoGenero`, `idTipoDocumento`, `nombre`, `apellido`, `telefono`, `email`, `Activo`, `Actualiza`, `numeroDocumento`) VALUES
	('1c1890ca-01ba-11ef-a74f-d408ab4249a8', '0a4c6d31-01b7-11ef-a74f-d408ab4249a8', '422e0a3c-01b7-11ef-a74f-d408ab4249a8', '740c253f-01b7-11ef-a74f-d408ab4249a8', 'Luis', 'Ojeda', '3132269647', 'luisokj@gmail.com', b'1', '2024-04-23 16:40:31', '1090228914'),
	('1c19df3d-01ba-11ef-a74f-d408ab4249a8', '0a4c6d31-01b7-11ef-a74f-d408ab4249a8', '422f34bc-01b7-11ef-a74f-d408ab4249a8', '740d148a-01b7-11ef-a74f-d408ab4249a8', 'Juan', 'Perez', '3221234567', 'juan_perez@gmail.com', b'1', '2024-04-23 16:40:31', '123456789'),
	('1c1b2f54-01ba-11ef-a74f-d408ab4249a8', '0a4de4c6-01b7-11ef-a74f-d408ab4249a8', '42308977-01b7-11ef-a74f-d408ab4249a8', '740c253f-01b7-11ef-a74f-d408ab4249a8', 'Carlos', 'Ramos', '123456789', 'empresa@empresa.com', b'1', '2024-04-23 16:40:31', '999999999');

DROP PROCEDURE IF EXISTS `createciudad`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `createciudad`(
IN `P_idDepartamento` char(36),
IN `P_nombre` varchar(255)
)
BEGIN
        
        INSERT INTO ciudad(idDepartamento, nombre)
        VALUES(P_idDepartamento, P_nombre);
        END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `createdepartamento`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `createdepartamento`(
IN `P_idPais` char(36),
IN `P_nombre` varchar(255)
)
BEGIN
        
        INSERT INTO departamento(idPais, nombre)
        VALUES(P_idPais, P_nombre);
        END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `createdetallediagnostico`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `createdetallediagnostico`(
IN `P_idDiagnostico` char(36),
IN `P_observaciones` varchar(255),
IN `P_fechaDiagnostico` datetime
)
BEGIN
        
        INSERT INTO detallediagnostico(idDiagnostico, observaciones, fechaDiagnostico)
        VALUES(P_idDiagnostico, P_observaciones, P_fechaDiagnostico);
        END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `createdetallefactura`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `createdetallefactura`(
IN `P_idFactura` char(36),
IN `P_idDiagnostico` char(36),
IN `P_descripcion` varchar(255),
IN `P_subtotal` decimal(12,2)
)
BEGIN
        
        INSERT INTO detallefactura(idFactura, idDiagnostico, descripcion, subtotal)
        VALUES(P_idFactura, P_idDiagnostico, P_descripcion, P_subtotal);
        END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `creatediagnostico`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `creatediagnostico`(
IN `P_idDispositivo` char(36),
IN `P_idEmpleado` char(36),
IN `P_idEstadoDiagnostico` char(36),
IN `P_descripcion` varchar(255),
IN `P_fechaInicio` datetime,
IN `P_fechaFin` datetime
)
BEGIN
        
        INSERT INTO diagnostico(idDispositivo, idEmpleado, idEstadoDiagnostico, descripcion, fechaInicio, fechaFin)
        VALUES(P_idDispositivo, P_idEmpleado, P_idEstadoDiagnostico, P_descripcion, P_fechaInicio, P_fechaFin);
        END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `createdireccion`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `createdireccion`(
IN `P_idCiudad` char(36),
IN `P_direccion` varchar(255),
IN `P_zipCode` varchar(15)
)
BEGIN
        
        INSERT INTO direccion(idCiudad, direccion, zipCode)
        VALUES(P_idCiudad, P_direccion, P_zipCode);
        END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `createdispositivo`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `createdispositivo`(
IN `P_idUsuario` char(36),
IN `P_idTipoDispositivo` char(36),
IN `P_marca` varchar(255),
IN `P_modelo` varchar(255),
IN `P_color` varchar(255)
)
BEGIN
        
        INSERT INTO dispositivo(idUsuario, idTipoDispositivo, marca, modelo, color)
        VALUES(P_idUsuario, P_idTipoDispositivo, P_marca, P_modelo, P_color);
        END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `createempleado`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `createempleado`(
IN `P_idSede` char(36),
IN `P_idTipoEmpleado` varchar(255),
IN `P_nombre` varchar(255),
IN `P_apellido` varchar(255),
IN `P_celular` varchar(255),
IN `P_email` varchar(255),
IN `P_fechaIngreso` TIMESTAMP	
)
BEGIN
        
        INSERT INTO empleado(idSede, idTipoEmpleado, nombre, apellido, celular, email,fecha_ingreso)
        VALUES(P_idSede, P_idTipoEmpleado, P_nombre, P_apellido, P_celular, P_email, P_fechaIngreso);
        END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `createempresa`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `createempresa`(
IN `P_nombre` varchar(255)
)
BEGIN
        
        INSERT INTO empresa(nombre)
        VALUES(P_nombre);
        END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `createestadodiagnostico`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `createestadodiagnostico`(
IN `P_descripcion` varchar(255)
)
BEGIN
        
        INSERT INTO estadodiagnostico(descripcion)
        VALUES(P_descripcion);
        END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `createestadofactura`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `createestadofactura`(
IN `P_estado` varchar(255)
)
BEGIN
        
        INSERT INTO estadofactura(estado)
        VALUES(P_estado);
        END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `createfactura`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `createfactura`(
IN `P_idUsuario` char(36),
IN `P_idEstadoFactura` char(36),
IN `P_fecha` datetime
)
BEGIN
        
        INSERT INTO factura(idUsuario, idEstadoFactura, fecha)
        VALUES(P_idUsuario, P_idEstadoFactura, P_fecha);
        END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `createpais`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `createpais`(
IN `P_nombre` varchar(255)
)
BEGIN
        
        INSERT INTO pais(nombre)
        VALUES(P_nombre);
        END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `createsede`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `createsede`(
IN `P_idEmpresa` char(36),
IN `P_idDireccion` char(36),
IN `P_nombre` varchar(255),
IN `P_email` varchar(255)
)
BEGIN
        
        INSERT INTO sede(idEmpresa, idDireccion, nombre, email)
        VALUES(P_idEmpresa, P_idDireccion, P_nombre, P_email);
        END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `createtipodocumento`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `createtipodocumento`(
IN `P_Nombre` varchar(255)
)
BEGIN
        
        INSERT INTO tipodocumento(Nombre)
        VALUES(P_Nombre);
        END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `createtipoempleado`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `createtipoempleado`(
IN `P_cargo` varchar(255),
IN `P_descripcion` varchar(255)
)
BEGIN
        
        INSERT INTO tipoempleado(cargo, descripcion)
        VALUES(P_cargo, P_descripcion);
        END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `createtipogenero`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `createtipogenero`(
IN `P_Nombre` varchar(255)
)
BEGIN
        
        INSERT INTO tipogenero(Nombre)
        VALUES(P_Nombre);
        END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `createtipousuario`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `createtipousuario`(
IN `P_nombre` varchar(255),
IN `P_descripcion` varchar(255)
)
BEGIN
        
        INSERT INTO tipousuario(nombre, descripcion)
        VALUES(P_nombre, P_descripcion);
        END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `createusuario`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `createusuario`(
IN `P_idTipoUsuario` char(36),
IN `P_idTipoGenero` char(36),
IN `P_idTipoDocumento` char(36),
IN `P_numeroDocumento` varchar(20),
IN `P_nombre` varchar(50),
IN `P_apellido` varchar(50),
IN `P_telefono` varchar(20),
IN `P_email` varchar(100)
)
BEGIN
        
        INSERT INTO usuario(idTipoUsuario, idTipoGenero, idTipoDocumento, numeroDocumento, nombre, apellido, telefono, email)
        VALUES(P_idTipoUsuario, P_idTipoGenero, P_idTipoDocumento,P_numeroDocumento, P_nombre, P_apellido, P_telefono, P_email);
        END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `deleteciudad`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteciudad`(
            IN `P_idCiudad` char(36)
            )
BEGIN

            UPDATE ciudad
            SET Activo = 0
            WHERE idCiudad = P_idCiudad
            AND Activo = 1;

            END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `deletedepartamento`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `deletedepartamento`(
            IN `P_idDepartamento` char(36)
            )
BEGIN

            UPDATE departamento
            SET Activo = 0
            WHERE idDepartamento = P_idDepartamento
            AND Activo = 1;

            END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `deletedetallediagnostico`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `deletedetallediagnostico`(
            IN `P_idDetalleDiagnostico` char(36)
            )
BEGIN

            UPDATE detallediagnostico
            SET Activo = 0
            WHERE idDetalleDiagnostico = P_idDetalleDiagnostico
            AND Activo = 1;

            END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `deletedetallefactura`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `deletedetallefactura`(
            IN `P_idDetalleFactura` char(36)
            )
BEGIN

            UPDATE detallefactura
            SET Activo = 0
            WHERE idDetalleFactura = P_idDetalleFactura
            AND Activo = 1;

            END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `deletediagnostico`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `deletediagnostico`(
            IN `P_idDiagnostico` char(36)
            )
BEGIN

            UPDATE diagnostico
            SET Activo = 0
            WHERE idDiagnostico = P_idDiagnostico
            AND Activo = 1;

            END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `deletedireccion`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `deletedireccion`(
            IN `P_idDireccion` char(36)
            )
BEGIN

            UPDATE direccion
            SET Activo = 0
            WHERE idDireccion = P_idDireccion
            AND Activo = 1;

            END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `deletedispositivo`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `deletedispositivo`(
            IN `P_idDispositivo` char(36)
            )
BEGIN

            UPDATE dispositivo
            SET Activo = 0
            WHERE idDispositivo = P_idDispositivo
            AND Activo = 1;

            END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `deleteempleado`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteempleado`(
            IN `P_idEmpleado` char(36)
            )
BEGIN

            UPDATE empleado
            SET Activo = 0
            WHERE idEmpleado = P_idEmpleado
            AND Activo = 1;

            END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `deleteempresa`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteempresa`(
            IN `P_idEmpresa` char(36)
            )
BEGIN

            UPDATE empresa
            SET Activo = 0
            WHERE idEmpresa = P_idEmpresa
            AND Activo = 1;

            END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `deleteestadodiagnostico`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteestadodiagnostico`(
            IN `P_idEstadoDiagnostico` char(36)
            )
BEGIN

            UPDATE estadodiagnostico
            SET Activo = 0
            WHERE idEstadoDiagnostico = P_idEstadoDiagnostico
            AND Activo = 1;

            END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `deleteestadofactura`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteestadofactura`(
            IN `P_idEstadoFactura` char(36)
            )
BEGIN

            UPDATE estadofactura
            SET Activo = 0
            WHERE idEstadoFactura = P_idEstadoFactura
            AND Activo = 1;

            END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `deletefactura`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `deletefactura`(
            IN `P_idFactura` char(36)
            )
BEGIN

            UPDATE factura
            SET Activo = 0
            WHERE idFactura = P_idFactura
            AND Activo = 1;

            END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `deletepais`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `deletepais`(
            IN `P_idPais` char(36)
            )
BEGIN

            UPDATE pais
            SET Activo = 0
            WHERE idPais = P_idPais
            AND Activo = 1;

            END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `deletesede`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `deletesede`(
            IN `P_idSede` char(36)
            )
BEGIN

            UPDATE sede
            SET Activo = 0
            WHERE idSede = P_idSede
            AND Activo = 1;

            END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `deletetipodispositivo`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `deletetipodispositivo`(
            IN `P_idTipoDispositivo` char(36)
            )
BEGIN

            UPDATE tipodispositivo
            SET Activo = 0
            WHERE idTipoDispositivo = P_idTipoDispositivo
            AND Activo = 1;

            END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `deletetipodocumento`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `deletetipodocumento`(
            IN `P_idTipoDocumento` char(36)
            )
BEGIN

            UPDATE tipodocumento
            SET Activo = 0
            WHERE idTipoDocumento = P_idTipoDocumento
            AND Activo = 1;

            END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `deletetipoempleado`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `deletetipoempleado`(
            IN `P_idTipoEmpleado` char(36)
            )
BEGIN

            UPDATE tipoempleado
            SET Activo = 0
            WHERE idTipoEmpleado = P_idTipoEmpleado
            AND Activo = 1;

            END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `deletetipogenero`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `deletetipogenero`(
            IN `P_idTipoGenero` char(36)
            )
BEGIN

            UPDATE tipogenero
            SET Activo = 0
            WHERE idTipoGenero = P_idTipoGenero
            AND Activo = 1;

            END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `deletetipousuario`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `deletetipousuario`(
            IN `P_idTipoUsuario` char(36)
            )
BEGIN

            UPDATE tipousuario
            SET Activo = 0
            WHERE idTipoUsuario = P_idTipoUsuario
            AND Activo = 1;

            END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `deleteusuario`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteusuario`(
            IN `P_idUsuario` char(36)
            )
BEGIN

            UPDATE usuario
            SET Activo = 0
            WHERE idUsuario = P_idUsuario
            AND Activo = 1;

            END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `readciudad`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `readciudad`()
BEGIN
        
        SELECT * FROM ciudad WHERE Activo = 1;
        
        END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `readciudadid`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `readciudadid`(IN `P_idciudad` CHAR (36))
BEGIN
        
        SELECT * FROM ciudad
        WHERE idciudad = P_idciudad
        AND Activo = 1;
        
        END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `readdepartamento`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `readdepartamento`()
BEGIN
        
        SELECT * FROM departamento WHERE Activo = 1;
        
        END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `readdepartamentoid`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `readdepartamentoid`(IN `P_iddepartamento` CHAR (36))
BEGIN
        
        SELECT * FROM departamento
        WHERE iddepartamento = P_iddepartamento
        AND Activo = 1;
        
        END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `readdetallediagnostico`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `readdetallediagnostico`()
BEGIN
        
        SELECT * FROM detallediagnostico WHERE Activo = 1;
        
        END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `readdetallediagnosticoid`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `readdetallediagnosticoid`(IN `P_iddetallediagnostico` CHAR (36))
BEGIN
        
        SELECT * FROM detallediagnostico
        WHERE iddetallediagnostico = P_iddetallediagnostico
        AND Activo = 1;
        
        END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `readdetallefactura`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `readdetallefactura`()
BEGIN
        
        SELECT * FROM detallefactura WHERE Activo = 1;
        
        END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `readdetallefacturaid`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `readdetallefacturaid`(IN `P_iddetallefactura` CHAR (36))
BEGIN
        
        SELECT * FROM detallefactura
        WHERE iddetallefactura = P_iddetallefactura
        AND Activo = 1;
        
        END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `readdiagnostico`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `readdiagnostico`()
BEGIN
        
        SELECT * FROM diagnostico WHERE Activo = 1;
        
        END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `readdiagnosticoid`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `readdiagnosticoid`(IN `P_iddiagnostico` CHAR (36))
BEGIN
        
        SELECT * FROM diagnostico
        WHERE iddiagnostico = P_iddiagnostico
        AND Activo = 1;
        
        END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `readdireccion`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `readdireccion`()
BEGIN
        
        SELECT * FROM direccion WHERE Activo = 1;
        
        END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `readdireccionid`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `readdireccionid`(IN `P_iddireccion` CHAR (36))
BEGIN
        
        SELECT * FROM direccion
        WHERE iddireccion = P_iddireccion
        AND Activo = 1;
        
        END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `readdispositivo`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `readdispositivo`()
BEGIN
        
        SELECT * FROM dispositivo WHERE Activo = 1;
        
        END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `readdispositivoid`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `readdispositivoid`(IN `P_iddispositivo` CHAR (36))
BEGIN
        
        SELECT * FROM dispositivo
        WHERE iddispositivo = P_iddispositivo
        AND Activo = 1;
        
        END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `readempleado`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `readempleado`()
BEGIN
        
        SELECT * FROM empleado WHERE Activo = 1;
        
        END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `readempleadoid`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `readempleadoid`(IN `P_idempleado` CHAR (36))
BEGIN
        
        SELECT * FROM empleado
        WHERE idempleado = P_idempleado
        AND Activo = 1;
        
        END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `readempresa`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `readempresa`()
BEGIN
        
        SELECT * FROM empresa WHERE Activo = 1;
        
        END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `readempresaid`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `readempresaid`(IN `P_idempresa` CHAR (36))
BEGIN
        
        SELECT * FROM empresa
        WHERE idempresa = P_idempresa
        AND Activo = 1;
        
        END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `readestadodiagnostico`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `readestadodiagnostico`()
BEGIN
        
        SELECT * FROM estadodiagnostico WHERE Activo = 1;
        
        END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `readestadodiagnosticoid`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `readestadodiagnosticoid`(IN `P_idestadodiagnostico` CHAR (36))
BEGIN
        
        SELECT * FROM estadodiagnostico
        WHERE idestadodiagnostico = P_idestadodiagnostico
        AND Activo = 1;
        
        END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `readestadofactura`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `readestadofactura`()
BEGIN
        
        SELECT * FROM estadofactura WHERE Activo = 1;
        
        END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `readestadofacturaid`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `readestadofacturaid`(IN `P_idestadofactura` CHAR (36))
BEGIN
        
        SELECT * FROM estadofactura
        WHERE idestadofactura = P_idestadofactura
        AND Activo = 1;
        
        END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `readfactura`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `readfactura`()
BEGIN
        
        SELECT * FROM factura WHERE Activo = 1;
        
        END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `readfacturaid`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `readfacturaid`(IN `P_idfactura` CHAR (36))
BEGIN
        
        SELECT * FROM factura
        WHERE idfactura = P_idfactura
        AND Activo = 1;
        
        END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `readpais`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `readpais`()
BEGIN
        
        SELECT * FROM pais WHERE Activo = 1;
        
        END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `readpaisid`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `readpaisid`(IN `P_idpais` CHAR (36))
BEGIN
        
        SELECT * FROM pais
        WHERE idpais = P_idpais
        AND Activo = 1;
        
        END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `readsede`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `readsede`()
BEGIN
        
        SELECT * FROM sede WHERE Activo = 1;
        
        END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `readsedeid`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `readsedeid`(IN `P_idsede` CHAR (36))
BEGIN
        
        SELECT * FROM sede
        WHERE idsede = P_idsede
        AND Activo = 1;
        
        END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `readtipodispositivo`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `readtipodispositivo`()
BEGIN
        
        SELECT * FROM tipodispositivo WHERE Activo = 1;
        
        END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `readtipodispositivoid`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `readtipodispositivoid`(IN `P_idtipodispositivo` CHAR (36))
BEGIN
        
        SELECT * FROM tipodispositivo
        WHERE idtipodispositivo = P_idtipodispositivo
        AND Activo = 1;
        
        END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `readtipodocumento`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `readtipodocumento`()
BEGIN
        
        SELECT * FROM tipodocumento WHERE Activo = 1;
        
        END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `readtipodocumentoid`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `readtipodocumentoid`(IN `P_idtipodocumento` CHAR (36))
BEGIN
        
        SELECT * FROM tipodocumento
        WHERE idtipodocumento = P_idtipodocumento
        AND Activo = 1;
        
        END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `readtipoempleado`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `readtipoempleado`()
BEGIN
        
        SELECT * FROM tipoempleado WHERE Activo = 1;
        
        END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `readtipoempleadoid`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `readtipoempleadoid`(IN `P_idtipoempleado` CHAR (36))
BEGIN
        
        SELECT * FROM tipoempleado
        WHERE idtipoempleado = P_idtipoempleado
        AND Activo = 1;
        
        END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `readtipogenero`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `readtipogenero`()
BEGIN
        
        SELECT * FROM tipogenero WHERE Activo = 1;
        
        END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `readtipogeneroid`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `readtipogeneroid`(IN `P_idtipogenero` CHAR (36))
BEGIN
        
        SELECT * FROM tipogenero
        WHERE idtipogenero = P_idtipogenero
        AND Activo = 1;
        
        END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `readtipousuario`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `readtipousuario`()
BEGIN
        
        SELECT * FROM tipousuario WHERE Activo = 1;
        
        END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `readtipousuarioid`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `readtipousuarioid`(IN `P_idtipousuario` CHAR (36))
BEGIN
        
        SELECT * FROM tipousuario
        WHERE idtipousuario = P_idtipousuario
        AND Activo = 1;
        
        END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `readusuario`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `readusuario`()
BEGIN
        
        SELECT * FROM usuario WHERE Activo = 1;
        
        END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `readusuarioid`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `readusuarioid`(IN `P_idusuario` CHAR (36))
BEGIN
        
        SELECT * FROM usuario
        WHERE idusuario = P_idusuario
        AND Activo = 1;
        
        END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `updateciudad`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateciudad`(
                IN `P_idCiudad` char(36),
                IN `P_idDepartamento` char(36),
                IN `P_nombre` varchar(255)
        )
BEGIN
        UPDATE ciudad
            SET idDepartamento = P_idDepartamento,
                nombre = P_nombre
        WHERE idCiudad = P_idCiudad
        AND Activo = 1;

        END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `updatedepartamento`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `updatedepartamento`(
                IN `P_idDepartamento` char(36),
                IN `P_idPais` char(36),
                IN `P_nombre` varchar(255)
        )
BEGIN
        UPDATE departamento
        SET 
                idPais = P_idPais,
                nombre = P_nombre
        WHERE idDepartamento = P_idDepartamento
        AND Activo = 1;

        END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `updatedetallediagnostico`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `updatedetallediagnostico`(
                IN `P_idDetalleDiagnostico` char(36),
                IN `P_idDiagnostico` char(36),
                IN `P_observaciones` varchar(255),
                IN `P_fechaDiagnostico` datetime
        )
BEGIN
        UPDATE detallediagnostico
        SET 
                idDiagnostico = P_idDiagnostico,
                observaciones = P_observaciones,
                fechaDiagnostico = P_fechaDiagnostico
        WHERE idDetalleDiagnostico = P_idDetalleDiagnostico
        AND Activo = 1;

        END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `updatedetallefactura`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `updatedetallefactura`(
                IN `P_idDetalleFactura` char(36),
                IN `P_idFactura` char(36),
                IN `P_idDiagnostico` char(36),
                IN `P_descripcion` varchar(255),
                IN `P_subtotal` decimal(12,2)
        )
BEGIN
        UPDATE detallefactura
        SET 
                idFactura = P_idFactura,
                idDiagnostico = P_idDiagnostico,
                descripcion = P_descripcion,
                subtotal = P_subtotal
        WHERE idDetalleFactura = P_idDetalleFactura
        AND Activo = 1;

        END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `updatediagnostico`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `updatediagnostico`(
                IN `P_idDiagnostico` char(36),
                IN `P_idDispositivo` char(36),
                IN `P_idEmpleado` char(36),
                IN `P_idEstadoDiagnostico` char(36),
                IN `P_descripcion` varchar(255),
                IN `P_fechaInicio` datetime,
                IN `P_fechaFin` datetime
        )
BEGIN
        UPDATE diagnostico
        SET 
                idDispositivo = P_idDispositivo,
                idEmpleado = P_idEmpleado,
                idEstadoDiagnostico = P_idEstadoDiagnostico,
                descripcion = P_descripcion,
                fechaInicio = P_fechaInicio,
                fechaFin = P_fechaFin
        WHERE idDiagnostico = P_idDiagnostico
        AND Activo = 1;

        END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `updatedireccion`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `updatedireccion`(
                IN `P_idDireccion` char(36),
                IN `P_idCiudad` char(36),
                IN `P_direccion` varchar(255),
                IN `P_zipCode` varchar(15)
        )
BEGIN
        UPDATE direccion
        SET 
                idCiudad = P_idCiudad,
                direccion = P_direccion,
                zipCode = P_zipCode
        WHERE idDireccion = P_idDireccion
        AND Activo = 1;

        END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `updatedispositivo`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `updatedispositivo`(
                IN `P_idDispositivo` char(36),
                IN `P_idUsuario` char(36),
                IN `P_idTipoDispositivo` char(36),
                IN `P_marca` varchar(255),
                IN `P_modelo` varchar(255),
                IN `P_color` varchar(255)
        )
BEGIN
        UPDATE dispositivo
        SET 
                idUsuario = P_idUsuario,
                idTipoDispositivo = P_idTipoDispositivo,
                marca = P_marca,
                modelo = P_modelo,
                color = P_color
        WHERE idDispositivo = P_idDispositivo
        AND Activo = 1;

        END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `updateempleado`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateempleado`(
                IN `P_idEmpleado` char(36),
                IN `P_idSede` char(36),
                IN `P_idTipoEmpleado` varchar(255),
                IN `P_nombre` varchar(255),
                IN `P_apellido` varchar(255),
                IN `P_celular` varchar(255),
                IN `P_email` varchar(255),
                IN `P_fechaIngreso` TIMESTAMP
        )
BEGIN
        UPDATE empleado
        SET 
                idSede = P_idSede,
                idTipoEmpleado = P_idTipoEmpleado,
                nombre = P_nombre,
                apellido = P_apellido,
                celular = P_celular,
                email = P_email,
                fecha_ingreso = P_fechaIngreso
        WHERE idEmpleado = P_idEmpleado
        AND Activo = 1;

        END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `updateempresa`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateempresa`(
                IN `P_idEmpresa` char(36),
                IN `P_nombre` varchar(255)
        )
BEGIN
        UPDATE empresa
        SET 
                nombre = P_nombre
        WHERE idEmpresa = P_idEmpresa
        AND Activo = 1;

        END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `updateestadodiagnostico`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateestadodiagnostico`(
                IN `P_idEstadoDiagnostico` char(36),
                IN `P_descripcion` varchar(255)
        )
BEGIN
        UPDATE estadodiagnostico
        SET 
                descripcion = P_descripcion
        WHERE idEstadoDiagnostico = P_idEstadoDiagnostico
        AND Activo = 1;

        END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `updateestadofactura`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateestadofactura`(
                IN `P_idEstadoFactura` char(36),
                IN `P_estado` varchar(255)
        )
BEGIN
        UPDATE estadofactura
        SET 
                estado = P_estado
        WHERE idEstadoFactura = P_idEstadoFactura
        AND Activo = 1;

        END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `updatefactura`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `updatefactura`(
                IN `P_idFactura` char(36),
                IN `P_idUsuario` char(36),
                IN `P_idEstadoFactura` char(36),
                IN `P_fecha` datetime
        )
BEGIN
        UPDATE factura
        SET 
                idUsuario = P_idUsuario,
                idEstadoFactura = P_idEstadoFactura,
                fecha = P_fecha
        WHERE idFactura = P_idFactura
        AND Activo = 1;

        END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `updatepais`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `updatepais`(
                IN `P_idPais` char(36),
                IN `P_nombre` varchar(255)
        )
BEGIN
        UPDATE pais
        SET 
                nombre = P_nombre
        WHERE idPais = P_idPais
        AND Activo = 1;

        END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `updatesede`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `updatesede`(
                IN `P_idSede` char(36),
                IN `P_idEmpresa` char(36),
                IN `P_idDireccion` char(36),
                IN `P_nombre` varchar(255),
                IN `P_email` varchar(255)
        )
BEGIN
        UPDATE sede
        SET 
                idEmpresa = P_idEmpresa,
                idDireccion = P_idDireccion,
                nombre = P_nombre,
                email = P_email
        WHERE idSede = P_idSede
        AND Activo = 1;

        END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `updatetipodispositivo`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `updatetipodispositivo`(
                IN `P_idTipoDispositivo` char(36),
                IN `P_Nombre` varchar(255),
                IN `P_Descripcion` varchar(255)
        )
BEGIN
        UPDATE tipodispositivo
        SET 
                Nombre = P_Nombre,
                Descripcion = P_Descripcion
        WHERE idTipoDispositivo = P_idTipoDispositivo
        AND Activo = 1;

        END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `updatetipodocumento`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `updatetipodocumento`(
            IN `P_idTipoDocumento` char(36),
            IN `P_Nombre` varchar(255)
        )
BEGIN
    UPDATE tipodocumento
        SET Nombre = P_Nombre
    WHERE idTipoGenero = P_idTipoDocumento
    AND Activo = 1;

    END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `updatetipoempleado`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `updatetipoempleado`(
                IN `P_idTipoEmpleado` char(36),
                IN `P_cargo` varchar(255),
                IN `P_descripcion` varchar(255)
        )
BEGIN
        UPDATE tipoempleado
        SET 
                cargo = P_cargo,
                descripcion = P_descripcion
        WHERE idTipoEmpleado = P_idTipoEmpleado
        AND Activo = 1;

        END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `updatetipogenero`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `updatetipogenero`(
                IN `P_idTipoGenero` char(36),
                IN `P_Nombre` varchar(255)
        )
BEGIN
        UPDATE tipogenero
        SET 
                Nombre = P_Nombre
        WHERE idTipoGenero = P_idTipoGenero
        AND Activo = 1;

        END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `updatetipousuario`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `updatetipousuario`(
                IN `P_idTipoUsuario` char(36),
                IN `P_nombre` varchar(255),
                IN `P_descripcion` varchar(255)
        )
BEGIN
        UPDATE tipousuario
        SET 
                nombre = P_nombre,
                descripcion = P_descripcion
        WHERE idTipoUsuario = P_idTipoUsuario
        AND Activo = 1;

        END//
DELIMITER ;

DROP PROCEDURE IF EXISTS `updateusuario`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateusuario`(
                IN `P_idUsuario` char(36),
                IN `P_idTipoUsuario` char(36),
                IN `P_idTipoGenero` char(36),
                IN `P_idTipoDocumento` char(36),
                IN `P_numeroDocumento` varchar(20),
                IN `P_nombre` varchar(50),
                IN `P_apellido` varchar(50),
                IN `P_telefono` varchar(20),
                IN `P_email` varchar(100)
        )
BEGIN
        UPDATE usuario
        SET 
                idTipoUsuario = P_idTipoUsuario,
                idTipoGenero = P_idTipoGenero,
                idTipoDocumento = P_idTipoDocumento,
                numeroDocumento = P_numeroDocumento,
                nombre = P_nombre,
                apellido = P_apellido,
                telefono = P_telefono,
                email = P_email
        WHERE idUsuario = P_idUsuario
        AND Activo = 1;

        END//
DELIMITER ;

DROP TRIGGER IF EXISTS `ciudad_before_insert`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='IGNORE_SPACE,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE DEFINER=`root`@`localhost` TRIGGER `ciudad_before_insert` BEFORE INSERT ON `ciudad` FOR EACH ROW BEGIN
    SET NEW.Idciudad = UUID();
    SET NEW.Actualiza = CURRENT_TIMESTAMP;
    END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

DROP TRIGGER IF EXISTS `departamento_before_insert`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='IGNORE_SPACE,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE DEFINER=`root`@`localhost` TRIGGER `departamento_before_insert` BEFORE INSERT ON `departamento` FOR EACH ROW BEGIN
    SET NEW.Iddepartamento = UUID();
    SET NEW.Actualiza = CURRENT_TIMESTAMP;
    END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

DROP TRIGGER IF EXISTS `detalleDiagnostico_before_insert`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='IGNORE_SPACE,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE DEFINER=`root`@`localhost` TRIGGER `detalleDiagnostico_before_insert` BEFORE INSERT ON `detallediagnostico` FOR EACH ROW BEGIN
    SET NEW.IddetalleDiagnostico = UUID();
    SET NEW.Actualiza = CURRENT_TIMESTAMP;
    END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

DROP TRIGGER IF EXISTS `detalleFactura_before_insert`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='IGNORE_SPACE,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE DEFINER=`root`@`localhost` TRIGGER `detalleFactura_before_insert` BEFORE INSERT ON `detallefactura` FOR EACH ROW BEGIN
    SET NEW.IddetalleFactura = UUID();
    SET NEW.Actualiza = CURRENT_TIMESTAMP;
    END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

DROP TRIGGER IF EXISTS `diagnostico_before_insert`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='IGNORE_SPACE,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE DEFINER=`root`@`localhost` TRIGGER `diagnostico_before_insert` BEFORE INSERT ON `diagnostico` FOR EACH ROW BEGIN
    SET NEW.Iddiagnostico = UUID();
    SET NEW.Actualiza = CURRENT_TIMESTAMP;
    END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

DROP TRIGGER IF EXISTS `direccion_before_insert`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='IGNORE_SPACE,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE DEFINER=`root`@`localhost` TRIGGER `direccion_before_insert` BEFORE INSERT ON `direccion` FOR EACH ROW BEGIN
    SET NEW.Iddireccion = UUID();
    SET NEW.Actualiza = CURRENT_TIMESTAMP;
    END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

DROP TRIGGER IF EXISTS `dispositivo_before_insert`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='IGNORE_SPACE,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE DEFINER=`root`@`localhost` TRIGGER `dispositivo_before_insert` BEFORE INSERT ON `dispositivo` FOR EACH ROW BEGIN
    SET NEW.Iddispositivo = UUID();
    SET NEW.Actualiza = CURRENT_TIMESTAMP;
    END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

DROP TRIGGER IF EXISTS `empleado_before_insert`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='IGNORE_SPACE,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE DEFINER=`root`@`localhost` TRIGGER `empleado_before_insert` BEFORE INSERT ON `empleado` FOR EACH ROW BEGIN
    SET NEW.Idempleado = UUID();
    SET NEW.Actualiza = CURRENT_TIMESTAMP;
    END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

DROP TRIGGER IF EXISTS `empresa_before_insert`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='IGNORE_SPACE,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE DEFINER=`root`@`localhost` TRIGGER `empresa_before_insert` BEFORE INSERT ON `empresa` FOR EACH ROW BEGIN
    SET NEW.Idempresa = UUID();
    SET NEW.Actualiza = CURRENT_TIMESTAMP;
    END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

DROP TRIGGER IF EXISTS `estadoDiagnostico_before_insert`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='IGNORE_SPACE,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE DEFINER=`root`@`localhost` TRIGGER `estadoDiagnostico_before_insert` BEFORE INSERT ON `estadodiagnostico` FOR EACH ROW BEGIN
    SET NEW.IdestadoDiagnostico = UUID();
    SET NEW.Actualiza = CURRENT_TIMESTAMP;
    END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

DROP TRIGGER IF EXISTS `estadoFactura_before_insert`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='IGNORE_SPACE,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE DEFINER=`root`@`localhost` TRIGGER `estadoFactura_before_insert` BEFORE INSERT ON `estadofactura` FOR EACH ROW BEGIN
    SET NEW.IdestadoFactura = UUID();
    SET NEW.Actualiza = CURRENT_TIMESTAMP;
    END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

DROP TRIGGER IF EXISTS `factura_before_insert`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='IGNORE_SPACE,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE DEFINER=`root`@`localhost` TRIGGER `factura_before_insert` BEFORE INSERT ON `factura` FOR EACH ROW BEGIN
    SET NEW.Idfactura = UUID();
    SET NEW.Actualiza = CURRENT_TIMESTAMP;
    END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

DROP TRIGGER IF EXISTS `pais_before_insert`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='IGNORE_SPACE,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE DEFINER=`root`@`localhost` TRIGGER `pais_before_insert` BEFORE INSERT ON `pais` FOR EACH ROW BEGIN
    SET NEW.Idpais = UUID();
    SET NEW.Actualiza = CURRENT_TIMESTAMP;
    END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

DROP TRIGGER IF EXISTS `sede_before_insert`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='IGNORE_SPACE,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE DEFINER=`root`@`localhost` TRIGGER `sede_before_insert` BEFORE INSERT ON `sede` FOR EACH ROW BEGIN
    SET NEW.Idsede = UUID();
    SET NEW.Actualiza = CURRENT_TIMESTAMP;
    END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

DROP TRIGGER IF EXISTS `tipoDispositivo_before_insert`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='IGNORE_SPACE,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE DEFINER=`root`@`localhost` TRIGGER `tipoDispositivo_before_insert` BEFORE INSERT ON `tipodispositivo` FOR EACH ROW BEGIN
    SET NEW.IdtipoDispositivo = UUID();
    SET NEW.Actualiza = CURRENT_TIMESTAMP;
    END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

DROP TRIGGER IF EXISTS `tipoDocumento_before_insert`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='IGNORE_SPACE,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE DEFINER=`root`@`localhost` TRIGGER `tipoDocumento_before_insert` BEFORE INSERT ON `tipodocumento` FOR EACH ROW BEGIN
    SET NEW.IdtipoDocumento = UUID();
    SET NEW.Actualiza = CURRENT_TIMESTAMP;
    END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

DROP TRIGGER IF EXISTS `tipoEmpleado_before_insert`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='IGNORE_SPACE,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE DEFINER=`root`@`localhost` TRIGGER `tipoEmpleado_before_insert` BEFORE INSERT ON `tipoempleado` FOR EACH ROW BEGIN
    SET NEW.IdtipoEmpleado = UUID();
    SET NEW.Actualiza = CURRENT_TIMESTAMP;
    END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

DROP TRIGGER IF EXISTS `tipoGenero_before_insert`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='IGNORE_SPACE,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE DEFINER=`root`@`localhost` TRIGGER `tipoGenero_before_insert` BEFORE INSERT ON `tipogenero` FOR EACH ROW BEGIN
    SET NEW.IdtipoGenero = UUID();
    SET NEW.Actualiza = CURRENT_TIMESTAMP;
    END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

DROP TRIGGER IF EXISTS `tipoUsuario_before_insert`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='IGNORE_SPACE,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE DEFINER=`root`@`localhost` TRIGGER `tipoUsuario_before_insert` BEFORE INSERT ON `tipousuario` FOR EACH ROW BEGIN
    SET NEW.IdtipoUsuario = UUID();
    SET NEW.Actualiza = CURRENT_TIMESTAMP;
    END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

DROP TRIGGER IF EXISTS `usuario_before_insert`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='IGNORE_SPACE,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE DEFINER=`root`@`localhost` TRIGGER `usuario_before_insert` BEFORE INSERT ON `usuario` FOR EACH ROW BEGIN
    SET NEW.Idusuario = UUID();
    SET NEW.Actualiza = CURRENT_TIMESTAMP;
    END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
