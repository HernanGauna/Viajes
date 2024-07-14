-- --------------------------------------------------------
-- Host:                         gara.ddns.net
-- Versión del servidor:         10.4.25-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.7.0.6850
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para cacusuarios
CREATE DATABASE IF NOT EXISTS `cacusuarios` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `cacusuarios`;

-- Volcando estructura para tabla cacusuarios.administradores
CREATE TABLE IF NOT EXISTS `administradores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usrid` int(11) NOT NULL,
  `esadmin` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla cacusuarios.administradores: ~4 rows (aproximadamente)
REPLACE INTO `administradores` (`id`, `usrid`, `esadmin`) VALUES
	(1, 1, 1),
	(3, 3, 1),
	(6, 17, 1),
	(7, 16, 1);

-- Volcando estructura para tabla cacusuarios.usuarios
CREATE TABLE IF NOT EXISTS `usuarios` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `Apellido` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Contrasena` varchar(50) NOT NULL,
  `FecNac` date NOT NULL,
  `Pais` varchar(50) NOT NULL,
  `activo` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Email` (`Email`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla cacusuarios.usuarios: ~15 rows (aproximadamente)
REPLACE INTO `usuarios` (`Id`, `Nombre`, `Apellido`, `Email`, `Contrasena`, `FecNac`, `Pais`, `activo`) VALUES
	(1, 'Roberto', 'Paz', 'robert@gmail.com', 'Magmagmag18', '1974-05-18', 'Argentina', 1),
	(2, 'lucas', 'leuchi', 'lucas@gmail.com', 'miau', '2015-12-11', 'Argentina', 1),
	(3, 'Adriana', 'aguirre', 'adri@gmail.com', 'Noadhe77', '1977-02-08', 'Argentina', 1),
	(4, 'Nico', 'Grimaldi', 'nicog@gmail.com', 'Simon664', '1944-01-05', 'Argentina', 0),
	(5, 'Mica.', 'shaniz', 'micashaniz@gmail.com', 'mik', '2000-12-16', 'Argentina', 0),
	(6, 'silvia', 'Cordova', 'silchu@gmail.com', 'tosoa', '1948-04-19', 'Argentina', 1),
	(7, 'Maricel', 'Gauna', 'maricela@yahoo.com', 'suegra', '1943-03-07', 'Argentina', 0),
	(8, 'Ronaldo', 'Garnacho', 'CR7@hotmail.com', 'Pablito21', '1972-09-21', 'Argentina', 1),
	(9, 'Alejandro', 'rawson', 'aleR@yahoo.com', 'Ale10river', '1976-07-26', 'Argentina', 1),
	(10, 'Ana', 'Pinzon', 'anaP@yahoo.com.ar', 'PabloDondeEstas10', '1971-03-03', 'Argentina', 1),
	(11, 'Elizabeth', 'Goliat', 'EliP@hotmail.com', 'MiaXionopeleen10', '1971-09-23', 'Argentina', 1),
	(13, 'Mariza', 'Garcia', 'Mariza@yahoo.com', 'MaryGarcia13', '1978-06-13', 'argentina', 1),
	(14, 'David', 'Hollan', 'DavidH@gmail.com', 'DavidH19', '1976-11-19', 'Argentina', 1),
	(16, 'Daniel', 'Wukong', 'wu@ejemplo.com', 'Daniwu10', '2024-07-04', 'argentina', 1),
	(17, 'jose', 'Gauna', 'jseGauna@gmail.com', 'jose0', '2024-07-05', 'argentina', 1);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
