CREATE DATABASE  IF NOT EXISTS `citat` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `citat`;
-- MySQL dump 10.13  Distrib 5.7.12, for osx10.9 (x86_64)
--
-- Host: 127.0.0.1    Database: citat
-- ------------------------------------------------------
-- Server version	5.7.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `t_bitacora`
--

DROP TABLE IF EXISTS `t_bitacora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_bitacora` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Evento` varchar(80) DEFAULT NULL,
  `Fecha` datetime DEFAULT NULL,
  `t_cita_Id` int(11) NOT NULL,
  `t_usuario_Id` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_t_bitacora_t_cita1_idx` (`t_cita_Id`),
  KEY `fk_t_bitacora_t_usuario1_idx` (`t_usuario_Id`),
  CONSTRAINT `fk_t_bitacora_t_cita1` FOREIGN KEY (`t_cita_Id`) REFERENCES `t_cita` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_t_bitacora_t_usuario1` FOREIGN KEY (`t_usuario_Id`) REFERENCES `t_usuario` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_bitacora`
--

LOCK TABLES `t_bitacora` WRITE;
/*!40000 ALTER TABLE `t_bitacora` DISABLE KEYS */;
INSERT INTO `t_bitacora` VALUES (1,'Se agendo la cita','2018-09-29 02:50:40',18,42),(2,'Se agendo la cita','2018-09-29 02:52:33',19,42),(3,'Se agendo la cita','2018-09-29 02:54:38',20,42),(4,'Se agendo la cita','2018-09-29 14:55:15',22,42),(5,'Se agendo la cita','2018-09-29 14:55:30',23,42),(6,'Se agendo la cita','2018-09-29 15:18:32',24,42),(7,'Se agendo la cita','2018-09-29 16:55:26',25,42),(8,'Se agendo la cita','2018-09-29 16:56:02',26,42),(9,'Se agendo la cita','2018-09-29 16:57:18',27,42),(10,'Se agendo la cita','2018-09-29 16:58:38',28,42),(11,'Se agendo la cita','2018-09-29 16:59:38',29,42),(12,'Se agendo la cita','2018-09-29 21:03:14',31,42),(13,'Se agendo la cita','2018-09-29 23:38:52',32,42),(14,'Se agendo la cita','2018-09-29 23:44:08',33,42),(15,'Se agendo la cita','2018-09-30 00:08:41',34,42),(16,'Se agendo la cita','2018-09-30 01:11:32',35,42);
/*!40000 ALTER TABLE `t_bitacora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_cita`
--

DROP TABLE IF EXISTS `t_cita`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_cita` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Fecha_Cita` datetime DEFAULT NULL,
  `Descripcion` varchar(80) DEFAULT NULL,
  `Precio` double DEFAULT NULL,
  `Status` varchar(45) DEFAULT NULL,
  `Comentarios` text,
  `log` text,
  `t_usuario_Id` int(11) NOT NULL,
  `t_horario_Id` int(11) NOT NULL,
  `t_empresa_Id` int(11) NOT NULL,
  `t_servicios_idServicio` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_t_cita_t_usuario1_idx` (`t_usuario_Id`),
  KEY `fk_t_cita_t_horario1_idx` (`t_horario_Id`),
  KEY `fk_t_cita_t_empresa1_idx` (`t_empresa_Id`),
  KEY `fk_t_cita_t_servicios1_idx` (`t_servicios_idServicio`),
  CONSTRAINT `fk_t_cita_t_empresa1` FOREIGN KEY (`t_empresa_Id`) REFERENCES `t_empresa` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_t_cita_t_horario1` FOREIGN KEY (`t_horario_Id`) REFERENCES `t_horario` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_t_cita_t_servicios1` FOREIGN KEY (`t_servicios_idServicio`) REFERENCES `t_servicios` (`idServicio`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_t_cita_t_usuario1` FOREIGN KEY (`t_usuario_Id`) REFERENCES `t_usuario` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_cita`
--

LOCK TABLES `t_cita` WRITE;
/*!40000 ALTER TABLE `t_cita` DISABLE KEYS */;
INSERT INTO `t_cita` VALUES (17,'2018-08-12 12:00:00','nose que poner',100,'Agendada','Cita agendada por Tirso','Sun Aug 12 00:29:52 CDT 2018 Cita agendada por el usuario Tirso',74,4,40,4),(18,'2018-09-29 02:50:19','',0,'Agendada','Cita agendada 2','2018-09-29 02:50:19 creada',42,11,40,4),(19,'2018-09-29 02:52:33','',0,'Pendiente','cita agendada 3','2018-09-29 02:52:33 creada',42,10,40,4),(20,'2018-09-29 02:54:38','',0,'Pendiente','cita agendada 4','2018-09-29 02:54:37 creada',42,11,40,4),(21,'2018-09-29 12:00:00','lolol no se ',50,'Agendada','Cita agendada por Tirso','Sat Sep 29 13:36:21 CDT 2018 Cita agendada por el usuario Tirso',74,8,40,1),(22,'2018-09-29 14:55:15','',0,'Pendiente','sañldfalsk','2018-09-29 14:55:14 creada',42,8,40,1),(23,'2018-09-29 14:55:30','',0,'Pendiente','lolsjfkdsj','2018-09-29 14:55:29 creada',42,13,40,4),(24,'2018-09-29 15:18:32','',50.5,'Pendiente','skjdflksjf','2018-09-29 15:18:31 creada',42,8,40,1),(25,'2018-09-29 16:55:26','',50.5,'Pendiente','pintar de Rojo ','2018-09-29 16:55:25 creada',42,8,40,1),(26,'2018-09-29 16:56:02','',50.5,'Pendiente','','2018-09-29 16:56:02 creada',42,8,40,1),(27,'2018-09-29 16:57:18','',60,'Pendiente','cortes de Barba y bigote ','2018-09-29 16:57:18 creada',42,12,40,3),(28,'2018-09-29 16:58:38','',50,'Pendiente','Barba y bigote','2018-09-29 16:58:37 creada',42,4,40,5),(29,'2018-09-29 16:59:38','',120,'Pendiente','barba','2018-09-29 16:59:38 creada',42,12,40,8),(30,'2018-10-06 12:00:00','Para jorge',80,'Agendada','Cita agendada por Tirso','Sat Sep 29 17:05:40 CDT 2018 Cita agendada por el usuario Tirso',74,8,40,1),(31,'2018-10-06 12:00:00','',50.5,'Pendiente','corte','2018-09-29 21:03:13 creada',42,8,40,1),(32,'2018-09-30 20:00:00','Corte Super cool',500,'Agendada','corte frances lol','2018-09-29 23:38:51 creada',42,22,40,1),(33,'2018-09-30 20:00:00','',100,'Cancelada','corte','2018-09-29 23:44:07 creada',42,22,40,4),(34,'2018-10-03 13:30:00','',50.5,'Pendiente','ok','2018-09-30 00:08:41 creada',42,15,40,1),(35,'2018-10-24 12:00:00','',50.5,'Pendiente','nnhh','2018-09-30 01:11:31 creada',42,14,40,1);
/*!40000 ALTER TABLE `t_cita` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_empresa`
--

DROP TABLE IF EXISTS `t_empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_empresa` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre_Fiscal` varchar(200) DEFAULT NULL,
  `Nombre_Comercial` varchar(200) DEFAULT NULL,
  `Codigo_Postal` varchar(10) DEFAULT NULL,
  `Direccion` varchar(45) DEFAULT NULL,
  `Colonia` varchar(45) DEFAULT NULL,
  `Ciudad` varchar(45) DEFAULT NULL,
  `Municipio` varchar(45) DEFAULT NULL,
  `Estado` varchar(45) DEFAULT NULL,
  `Pais` varchar(45) DEFAULT NULL,
  `Estatus` varchar(45) DEFAULT NULL,
  `Fecha_Registro` datetime DEFAULT NULL,
  `Logo` longblob,
  `Ubicacion` varchar(200) DEFAULT NULL,
  `t_giro_idGiro` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_t_empresa_t_giro1_idx` (`t_giro_idGiro`),
  CONSTRAINT `fk_t_empresa_t_giro1` FOREIGN KEY (`t_giro_idGiro`) REFERENCES `t_giro` (`idGiro`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_empresa`
--

LOCK TABLES `t_empresa` WRITE;
/*!40000 ALTER TABLE `t_empresa` DISABLE KEYS */;
INSERT INTO `t_empresa` VALUES (40,'citat sa de cv','citat mod','91700','conocida 478A','centro','veracruz','veracruz','veracruz','Mexico','Inactiva','2017-04-01 22:04:59','jÉd÷Z²7ÝjŸ®êp¡èŸjÊh}ß)jÉè~9jÉd','Ubiciacion',1),(48,'Mi primera empresa sa de cv','Mi primera empresa','6998','Conocida 5678','Rosa','Mexico','Santa Fe','Mexico','MÃ©xico','Activa','2017-04-01 21:40:15','jÉd÷Z²7ÝjŸ®êp¡èŸjÊh}ß)jÉè~9jÉd','Ubicacion',1),(49,'MI segunda empresa sa de cv','Mi segunda empresa','98990','Conocida 445','AlvedaÃ±o','Mexico','Cuajimalpa','Mexico','Mexico','Activa','2017-07-01 20:25:55',NULL,'Ubicacion',1),(50,'Mi otra empresa sa de cv','Mi otra empresa','78999','Direccion 567','Cuajimalpa','Mexico','Cuajimalpa','Mexico','Mexico','Activa','2017-07-03 12:00:01',NULL,'Ubicacion',1),(51,'morphy','tirso@admin.com','70420','morphy','tirso@admin.com','tirso@admin.com','morphy','tirso@admin.com','tirso@admin.com',NULL,'2017-08-20 21:05:10',NULL,NULL,1),(52,'Empresa uno sa de cv','Empresa razon social1','98700','Conocida 567','formando hogar','Mexico','Las vegas','CDMX','MÃ©xico','','2017-08-20 21:21:14','jÉd÷Z²7ÝjŸ®êp¡èŸjÊh}ß)jÉè~9jÉd',NULL,1),(53,'Empresa uno sa de cv','Empresa razon social2','98700','Conocida 567','formando hogar','Mexico','Las vegas','CDMX','MÃ©xico','','2017-08-20 21:27:02','jÉd÷Z²7ÝjŸ®êp¡èŸjÊh}ß)jÉè~9jÉd',NULL,1),(54,'Empresa uno sa de cv','Empresa razon social3','98700','Conocida 567','formando hogar','Mexico','Las vegas','CDMX','MÃ©xico','Activa','2017-09-03 20:48:11','jÉd÷Z²7ÝjŸ®êp¡èŸjÊh}ß)jÉè~9jÉd',NULL,1),(55,'oaxaca','oaxaca','87797','oaxaca','oaxaca','oaxaca','oaxaca','oaxaca','oaxaca','Activa','2017-09-03 21:01:27','',NULL,1),(56,'oaxaca','koriCorp','98787','oaxaca','oaxaca','oaxaca','oaxaca','oaxaca','oaxaca','Activa','2017-09-06 22:43:37','',NULL,1),(57,'hola Mundo','Hola que tal','98787','oaxaca','oaxaca','oaxaca','oaxaca','oaxaca','oaxaca','Activa','2017-09-06 22:45:43','',NULL,1),(58,'oaxaca','prueba','98787','oaxaca','oaxaca','oaxaca','oaxaca','oaxaca','oaxaca','Activa','2017-09-06 22:47:25','',NULL,1),(59,'oaxaca','loq que sea','98798','oaxaca','oaxaca','oaxaca','oaxaca','oaxaca','oaxaca','Activa','2017-09-06 22:50:44','',NULL,1),(60,'kjhkjhjk','hkjhkjhk','97897','kjhkjhjk','jhkjhjk','oaxaca','kjhkjhkj','jkhkjhkj','jkhkjkjh','Activa','2017-09-09 00:01:25','',NULL,1);
/*!40000 ALTER TABLE `t_empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_giro`
--

DROP TABLE IF EXISTS `t_giro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_giro` (
  `idGiro` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(60) DEFAULT NULL,
  `descripcion` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`idGiro`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_giro`
--

LOCK TABLES `t_giro` WRITE;
/*!40000 ALTER TABLE `t_giro` DISABLE KEYS */;
INSERT INTO `t_giro` VALUES (1,'Medico','doctores');
/*!40000 ALTER TABLE `t_giro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_grupo`
--

DROP TABLE IF EXISTS `t_grupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_grupo` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) DEFAULT NULL,
  `Permiso` varchar(45) DEFAULT NULL,
  `Descripcion` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_grupo`
--

LOCK TABLES `t_grupo` WRITE;
/*!40000 ALTER TABLE `t_grupo` DISABLE KEYS */;
INSERT INTO `t_grupo` VALUES (115,'ROOT','ROOT','Usuario con permisos totales'),(116,'Admin','Total','Permiso superior sobre una empresa'),(117,'Supervisor','Lectura y Escritura','Permiso sobre todo menos cambio de passwords'),(118,'Lectura','Lectura','Lectura de algunos modulos'),(119,'Cliente','Cliente','Clientes de empresas - clientes de nuestros clientes');
/*!40000 ALTER TABLE `t_grupo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_horario`
--

DROP TABLE IF EXISTS `t_horario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_horario` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Dia` varchar(45) DEFAULT NULL,
  `Hora` time DEFAULT NULL,
  `Activo` varchar(10) DEFAULT NULL,
  `t_empresa_Id1` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_t_horario_t_empresa1_idx` (`t_empresa_Id1`),
  CONSTRAINT `fk_t_horario_t_empresa1` FOREIGN KEY (`t_empresa_Id1`) REFERENCES `t_empresa` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_horario`
--

LOCK TABLES `t_horario` WRITE;
/*!40000 ALTER TABLE `t_horario` DISABLE KEYS */;
INSERT INTO `t_horario` VALUES (1,'Martes','11:20:00','Activo',40),(2,'Lunes','12:40:00','Activo',40),(3,'Lunes','11:40:00','Activo',40),(4,'Domingo','12:00:00','Activo',40),(5,'Lunes','22:30:00','Activo',40),(6,'Lunes','14:50:00','Activo',40),(7,'Lunes','11:20:00','Activo',40),(8,'Sabado','12:00:00','Activo',40),(9,'Viernes','12:00:00','Activo',40),(10,'Sabado','14:00:00','Activo',40),(11,'Sabado','13:00:00','Activo',40),(12,'Domingo','13:00:00','Activo',40),(13,'Sabado','13:30:00','Activo',40),(14,'Miercoles','12:00:00','Activo',40),(15,'Miercoles','13:30:00','Activo',40),(16,'Jueves','14:00:00','Activo',40),(17,'Jueves','13:30:00','Activo',40),(18,'Viernes','14:00:00','Activo',40),(19,'Viernes','13:30:00','Activo',40),(20,'Martes','13:30:00','Activo',40),(21,'Sabado','23:00:00','Activo',40),(22,'Domingo','20:00:00','Activo',40),(23,'Sabado','22:00:00','Activo',40),(24,'Sabado','23:59:00','Activo',40);
/*!40000 ALTER TABLE `t_horario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_nueva_cuenta`
--

DROP TABLE IF EXISTS `t_nueva_cuenta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_nueva_cuenta` (
  `idNuevaCuenta` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(60) DEFAULT NULL,
  `apellidoPaterno` varchar(60) DEFAULT NULL,
  `apellidoMaterno` varchar(60) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`idNuevaCuenta`),
  UNIQUE KEY `idNuevaCuenta_UNIQUE` (`idNuevaCuenta`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_nueva_cuenta`
--

LOCK TABLES `t_nueva_cuenta` WRITE;
/*!40000 ALTER TABLE `t_nueva_cuenta` DISABLE KEYS */;
INSERT INTO `t_nueva_cuenta` VALUES (1,'Tirso ','Reyes ','Hernandez','tirso.reyes.hdez@gmail.com','5583444396','2018-07-26 20:44:12',0);
/*!40000 ALTER TABLE `t_nueva_cuenta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_nueva_empresa`
--

DROP TABLE IF EXISTS `t_nueva_empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_nueva_empresa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo_Postal` varchar(5) DEFAULT NULL,
  `colonia` varchar(80) DEFAULT NULL,
  `direccion` varchar(120) DEFAULT NULL,
  `estado` varchar(80) DEFAULT NULL,
  `municipio` varchar(80) DEFAULT NULL,
  `nombre_Comercial` varchar(120) DEFAULT NULL,
  `nombre_Fiscal` varchar(120) DEFAULT NULL,
  `idCliente` int(11) DEFAULT NULL,
  `nombreCliente` varchar(80) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `fecha_Solicitud` datetime DEFAULT NULL,
  `estatus` varchar(10) DEFAULT NULL,
  `fecha_Activacion` datetime DEFAULT NULL,
  `ciudad` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_nueva_empresa`
--

LOCK TABLES `t_nueva_empresa` WRITE;
/*!40000 ALTER TABLE `t_nueva_empresa` DISABLE KEYS */;
INSERT INTO `t_nueva_empresa` VALUES (1,'05500','colonia','direccion','estado','municipio','Mi nueva empresa comercial','Mi nueva empresa Fiscal',42,'Tirso Reyes Hdez','tirso@admin.com','2018-04-01 17:50:46','pendiente','2018-04-01 17:50:46','ciudad'),(2,'05000','Cuajimalpa','conocida','CDMX','Cuajimalpa de morelos','mi empresa comercial segunda prueba','mi empresa fiscal segunda prueba sa de cv',42,'Tirso Reyes HernÃ¡ndez','tirso@admin.com','2018-05-27 14:30:20','pendiente','2018-05-27 14:30:20','CDMX'),(3,'05000','Cuajimalpa','conocida','CDMX','Cuajimalpa de morelos','mi empresa comercial segunda prueba2','mi empresa fiscal segunda prueba sa de cv',42,'Tirso Reyes HernÃ¡ndez','tirso@admin.com','2018-05-27 15:01:03','pendiente','2018-05-27 15:01:03','CDMX'),(4,'05000','knÃ±lkn','Ã±lknÃ±lkn','knÃ±lkn','Ã±lknÃ±lknÃ±l','Mi primera empresa','Ã±sladkflÃ±k',42,'Tirso Reyes HernÃ¡ndez','tirso@admin.com','2018-05-27 15:33:20','pendiente','2018-05-27 15:33:20','Ã±lkÃ±lk');
/*!40000 ALTER TABLE `t_nueva_empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_pago`
--

DROP TABLE IF EXISTS `t_pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_pago` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Fecha_Pago` datetime DEFAULT NULL,
  `Numero_Pago` int(11) DEFAULT NULL,
  `Metodo_Pago` varchar(45) DEFAULT NULL,
  `Tipo_Pago` varchar(45) DEFAULT NULL,
  `Monto_Pago` double DEFAULT NULL,
  `Descripcion` varchar(45) DEFAULT NULL,
  `t_empresa_IdEmpresa` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_t_pago_t_empresa1_idx` (`t_empresa_IdEmpresa`),
  CONSTRAINT `fk_t_pago_t_empresa1` FOREIGN KEY (`t_empresa_IdEmpresa`) REFERENCES `t_empresa` (`Id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_pago`
--

LOCK TABLES `t_pago` WRITE;
/*!40000 ALTER TABLE `t_pago` DISABLE KEYS */;
INSERT INTO `t_pago` VALUES (1,'2018-07-29 13:00:00',201807,'Efectivo','Normal',249,'Pago Julio 2018',40),(2,'2018-08-20 14:50:00',201808,'Efectivo','Normal',249,'Pago Agosto 2018',40),(3,'2018-09-22 15:25:00',201809,'Efectivo','Normal',249,'Pago Septiembre 2018',40);
/*!40000 ALTER TABLE `t_pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_servicios`
--

DROP TABLE IF EXISTS `t_servicios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_servicios` (
  `idServicio` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `descripcion` varchar(80) DEFAULT NULL,
  `precio` double DEFAULT NULL,
  `status` varchar(11) DEFAULT '1',
  `t_empresa_Id` int(11) NOT NULL,
  PRIMARY KEY (`idServicio`),
  KEY `fk_t_servicios_t_empresa1_idx` (`t_empresa_Id`),
  CONSTRAINT `fk_t_servicios_t_empresa1` FOREIGN KEY (`t_empresa_Id`) REFERENCES `t_empresa` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_servicios`
--

LOCK TABLES `t_servicios` WRITE;
/*!40000 ALTER TABLE `t_servicios` DISABLE KEYS */;
INSERT INTO `t_servicios` VALUES (1,'Corte de pelo caballero','Se corta el pelo',50.5,'Activo',40),(2,'Corte de pelo dama','Se corta pelo',120.6,'Activo',40),(3,'Pedicure caballero','',60,'Activo',40),(4,'Pedicure dama','Pedicure para dama',100,'Activo',40),(5,'barbaro','',50,'Activo',40),(6,'masaje de pies','',400,'Activo',40),(7,'masaje de manos','',66.8,'Activo',40),(8,'Un servicio mas mio','',120,'Activo',40);
/*!40000 ALTER TABLE `t_servicios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_token`
--

DROP TABLE IF EXISTS `t_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_token` (
  `idToken` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(700) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`idToken`),
  UNIQUE KEY `idToken_UNIQUE` (`idToken`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_token`
--

LOCK TABLES `t_token` WRITE;
/*!40000 ALTER TABLE `t_token` DISABLE KEYS */;
INSERT INTO `t_token` VALUES (1,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjoxLCJ2YWx1ZXMiOiI0MiYmdGlyc29AYWRtaW4uY29tJiZUaXJzbyBSZXllcyBIZGV6IiwiZXhwIjoxNTIwNDAwODA4fQ.1rkgdR2xNiPfqT_Egi4iAG67443dKVGABFgyT3xYnwMAlPPnC8xzZOPeTQ2nE9GcJzSQA1Xh5VCbMY_GAMdEcQ','2018-03-07 00:00:00','E'),(2,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjoyLCJ2YWx1ZXMiOiI0MiYmdGlyc29AYWRtaW4uY29tJiZUaXJzbyBSZXllcyBIZGV6IiwiZXhwIjoxNTIwNDgxNzAxfQ.7wblSQyDdHBX5deLtIIZ3eQp70XJoYmFTGsnJKm-w-VXCX9iA3g4M5u5xAcCqzIsMeAHD8aFYYnzEhO31GczTw','2018-03-07 00:00:00','E'),(3,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjozLCJ2YWx1ZXMiOiI0MiYmdGlyc29AYWRtaW4uY29tJiZUaXJzbyBSZXllcyBIZGV6IiwiZXhwIjoxNTIwNDgxNzI5fQ.ZnY82zuq1hZ4Gnv5J9rdGMD_oDWAAs4b_0nBAZ1lWABVCvVtiTHT6HfpWH8zQFpanCObIzrsp6RxmP7FkOUu4w','2018-03-07 00:00:00','E'),(4,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjo0LCJ2YWx1ZXMiOiI0MiYmdGlyc29AYWRtaW4uY29tJiZUaXJzbyBSZXllcyBIZGV6IiwiZXhwIjoxNTIwNDgxNzMwfQ.-8EJLt1BAS1JLzZNwxazFzyWq3ls7fd-OwkasRognJlmpRIshT0CY6eA4HAuqAY4Hs4-jOjrMgaxmMRDSsAkEQ','2018-03-07 00:00:00','E'),(5,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjo1LCJ2YWx1ZXMiOiI0MiYmdGlyc29AYWRtaW4uY29tJiZUaXJzbyBSZXllcyBIZGV6IiwiZXhwIjoxNTIwNDgxNzMyfQ.oc4lrJksgnN6h_LjwRxBI3ozg12TuIV98ozed-NTecAg74PT9pWf1CuiL6PepZy_t8cg7rcvyjYHNitWcsndZg','2018-03-07 00:00:00','E'),(6,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjo2LCJ2YWx1ZXMiOiI0MiYmdGlyc29AYWRtaW4uY29tJiZUaXJzbyBSZXllcyBIZGV6IiwiZXhwIjoxNTIwNDgxNzMzfQ.qqAJaoxFYn6E5Ee-w2yfA2Lni6cC0IVPbEvxLw1_z70qbKu3AEsc3W6bkX-q3H2rdUZd0TMPQWZjSw87IlIe_w','2018-03-07 00:00:00','E'),(7,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjo3LCJ2YWx1ZXMiOiI0MiYmdGlyc29AYWRtaW4uY29tJiZUaXJzbyBSZXllcyBIZGV6IiwiZXhwIjoxNTIwNDgxNzMzfQ.YOrc0YS4fDSuYkmlhnTDkbdyUkSRhx4FXogzQJmmdqTkbFevM132mruVRH_2m6UQvUWsZfu5XAvfL7aMkpLZMA','2018-03-07 00:00:00','E'),(8,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjo4LCJ2YWx1ZXMiOiI0MiYmdGlyc29AYWRtaW4uY29tJiZUaXJzbyBSZXllcyBIZGV6IiwiZXhwIjoxNTIwNDgxNzM0fQ.1_XY5Q5vNZxcyhv-YetBjqECr-mLfjoNAi79MNUC1AFPBs6ZnHLFU0Az6SuZukuMyWhJHEouE1arqvIE_Gz_9w','2018-03-07 00:00:00','E'),(9,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjo5LCJ2YWx1ZXMiOiI0MiYmdGlyc29AYWRtaW4uY29tJiZUaXJzbyBSZXllcyBIZGV6IiwiZXhwIjoxNTIwNDgxNzM1fQ.xMn-vqTmshbBm9Ob5N9491gc1Kc2PDDQvEuy8M8i33chSTRTQ5qBA8lmhqpXXUGXkjj5zYu5qD9eMJ-BamO5fg','2018-03-07 00:00:00','E'),(10,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjoxMCwidmFsdWVzIjoiNDImJnRpcnNvQGFkbWluLmNvbSYmVGlyc28gUmV5ZXMgSGRleiIsImV4cCI6MTUyMDQ4MTc2OX0.jVe7fmay_F87LQZJo9JsDUS-4ilc2UO-rWAizU2KuQOSITkTlxQ2u9nvMUXGC_kjLQuKHgtfuVC9AWzrYzKe8w','2018-03-07 00:00:00','E'),(11,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjoxMSwidmFsdWVzIjoiNDImJnRpcnNvQGFkbWluLmNvbSYmVGlyc28gUmV5ZXMgSGRleiIsImV4cCI6MTUyMDQ4MjI3Mn0._V74MEBVOy0juu-JrIkvfr4joS8YPoMf_K1PeskvOlMAlzTe24XeOJ429ttfrHTYd5qCDjINBYssjYMiNRenmw','2018-03-07 00:00:00','E'),(12,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjoxMiwidmFsdWVzIjoiNDImJnRpcnNvQGFkbWluLmNvbSYmVGlyc28gUmV5ZXMgSGRleiIsImV4cCI6MTUyMDcyOTgyMn0.ZrlEXFJo2Zi0Y3RnCH931ciydSi9FMhxHkxisMwnCh2JWkaO-EvMatPSJGsV9R3JKJlkgYv7rKaumekalzcrmg','2018-03-10 00:00:00','E'),(13,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjoxMywidmFsdWVzIjoiNDImJnRpcnNvQGFkbWluLmNvbSYmVGlyc28gUmV5ZXMgSGRleiIsImV4cCI6MTUyMDkxNDIwMn0.RWvuw8RKdilEZhkpMYTqjHSroxnuwICjpEb4AdtZ5-PCwfR4i4wLsMnrt-sDDE3o6dBg7CPiFdqhlt1svXv1Ag','2018-03-12 00:00:00','E'),(14,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjoxNCwidmFsdWVzIjoiNDImJnRpcnNvQGFkbWluLmNvbSYmVGlyc28mJlJleWVzJiZIZGV6IiwiZXhwIjoxNTIxNDI5MzU4fQ.auBwV7dxOKo8yGqu2WgtgnW0HSSUft_9KQfzssAh8_8Kipba7zWwOg-FoifS-4YcFIgfyf4MwjM5rCucJbJPEQ','2018-03-18 00:00:00','E'),(15,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjoxNSwidmFsdWVzIjoiNDImJnRpcnNvQGFkbWluLmNvbSYmVGlyc28mJlJleWVzJiZIZGV6IiwiZXhwIjoxNTIxNDI5ODg3fQ.FtAzbl2DwTbFjT0Bv6XtVk7O-2ADOGdxRmtArlziTPIoV1vPi6pSc-8fALBVkcgR4V6MHOGdP8aw4k_ImFSasg','2018-03-18 00:00:00','E'),(16,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjoxNiwidmFsdWVzIjoiNDImJnRpcnNvQGFkbWluLmNvbSYmVGlyc28mJlJleWVzJiZIZGV6IiwiZXhwIjoxNTIxNDI5OTA0fQ.rikCPUkwZ89-4YRTHuaZgRUM4NYofNzaoVZ18K4GYeXe_oHLx6VqN9PGiV78D1XCJLEdjSPGtL5Lxo4DA1-uVA','2018-03-18 00:00:00','E'),(17,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjoxNywidmFsdWVzIjoiNDImJnRpcnNvQGFkbWluLmNvbSYmVGlyc28mJlJleWVzJiZIZGV6IiwiZXhwIjoxNTIxNDI5OTA2fQ._A5NPwAUcQeJARCFV7w87vsWVypT8v-P5KlAaa92CBICjsCia_GtwhDepyly6G7y0lGAEsVxFN2jNJLOm4JAaQ','2018-03-18 00:00:00','E'),(18,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjoxOCwidmFsdWVzIjoiNDImJnRpcnNvQGFkbWluLmNvbSYmVGlyc28mJlJleWVzJiZIZGV6IiwiZXhwIjoxNTIxNDI5OTQzfQ.CIzR23nLmbfMoKZf4v2eV3BJUUwS3ARQxWJav6bnmQVng5_mfnB0vrcBuQj3xz8VCFpK2HmzeWeY_wNG01oUEw','2018-03-18 00:00:00','E'),(19,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjoxOSwidmFsdWVzIjoiNDImJnRpcnNvQGFkbWluLmNvbSYmVGlyc28mJlJleWVzJiZIZGV6IiwiZXhwIjoxNTIxNDI5OTcyfQ.Ou0LDld5JJsPZZdNK2s_R8nfAcjElhA965uFARcpWHGUy31PFkq1x9tzgS3eZg0e9KMJF5Hw8Vzfw6ImLIchkg','2018-03-18 00:00:00','E'),(20,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjoyMCwidmFsdWVzIjoiNDIiLCJleHAiOjE1MjE1MTYxMjN9.hjkI7OiW8aIK8Kgovihj8rfyCtw227nm_4WJkf4NerJg-YNYLL63a4Q0S0AeqoTTPscu3OgkVSzFcwencemLcw','2018-03-19 00:00:00','E'),(21,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjoyMSwidmFsdWVzIjoiNDIiLCJleHAiOjE1MjE1MTY0NDl9.dpiYMPn_pejGMSMGdZMXrLLSr1wFMvU8o9FbNQEAGPcplWsLehZh5RIlNYs06eVxZD0-_eG-fEGZZkQEwdGIvg','2018-03-19 00:00:00','E'),(22,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjoyMiwidmFsdWVzIjoiNDIiLCJleHAiOjE1MjE1MTY4NTd9.EI-SSdyyUnI0RPFxmYTP2Dsh6zABYh-qBTDejC-TqjmyeP3iJ7AKDUgbvDNdYch8Hs4wFE48zzLl7D7gtMKRXA','2018-03-19 00:00:00','E'),(23,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjoyMywidmFsdWVzIjoiNDIiLCJleHAiOjE1MjE1MTczMTZ9.zVSuL5UDvQyfh-bUeEMDx2JCXoTw7UX9URRhhyWxN-mAbBLdxtCTmyWdtn8Gvioy5B9qiLv-7Q-lvNon_8OI4Q','2018-03-19 00:00:00','E'),(24,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjoyNCwidmFsdWVzIjoiNDIiLCJleHAiOjE1MjE2MDIyODJ9.-F4H0A6uB4l5yXwV6vfxq7frkskTZXuResQQpPxyZKjgzp6T5lQYFDFe_sUCTUNsGI-tNjv1d0mLjB9rJMm4BA','2018-03-20 00:00:00','E'),(25,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjoyNSwidmFsdWVzIjoiNDIiLCJleHAiOjE1MjE2MDI4MDR9.S-SX6gygnC0UI0-EIoZB-2KA-YRj5o3ij67wdUv9M7ZRSWn3fZ4XMh833EG5oPKsCWG12tt_bxfL3IBbnt7XEg','2018-03-20 00:00:00','E'),(26,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjoyNiwidmFsdWVzIjoiNDIiLCJleHAiOjE1MjE4NzY3NTZ9.lkbfviWbjh-6oUngytC7aK_n2iUDK_BzR9enjigEeHjSFLxpbFiNAhEy8Zdra8j9iaIBWvCmgjDy7i_kIzA1qA','2018-03-24 00:00:00','E'),(27,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjoyNywidmFsdWVzIjoiNDIiLCJleHAiOjE1MjE4NzY3NjB9.GeSM1tZO-gNjUIZD62XKXeZDYftSz3WqURNRYZiJ9i2KYT4i1RDBO1dHoPfM3ATqOa0gpCyYNvw1Wof57qjcMw','2018-03-24 00:00:00','E'),(28,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJmZWxpcGVAYWRtaW4uY29tIiwiaWRUb2tlbiI6MjgsInZhbHVlcyI6IjQ3IiwiZXhwIjoxNTIxODc2ODY1fQ.yF9SrdZcYydsXzHsi6gkt4n0nPcqAWeSbIWvcVC6018gwLGYOhgggS7eR98PzJn1iEfdcrcoeedHTnwGia-AnQ','2018-03-24 00:00:00','E'),(29,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjoyOSwidmFsdWVzIjoiNDIiLCJleHAiOjE1MjE5MDc5NDR9.pMvmwjNjJAO5pV2B3oAl1asxQewtR9Ca1AUG8hB_x-QKJcdtQ8GFve66TpcFbXZV8IoU8QFM9X_u3LZdeRCZsA','2018-03-24 00:00:00','E'),(30,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJmZWxpcGVAYWRtaW4uY29tIiwiaWRUb2tlbiI6MzAsInZhbHVlcyI6IjQ3IiwiZXhwIjoxNTIxOTE4ODcxfQ.JXSsF5c1EPQL7vt2YZlTMCLFoJ7kSeqgZExp6tFGYlpbIH0E6LYLCDUjksNzYJNx9ztB78kmR6ikGmYezwecbw','2018-03-24 00:00:00','E'),(31,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJmZWxpcGVAYWRtaW5ubm4uY29tIiwiaWRUb2tlbiI6MzEsInZhbHVlcyI6IjUwIiwiZXhwIjoxNTIxOTUxNjEyfQ.53FnfUm09KYySPES4cDO3HFyOO5yE7FflKLCAqbeDKHQjQjSYT_lcEgnuo7dY3Ru_IwRevAdzFD2RkTgdEVNIA','2018-03-24 00:00:00','E'),(32,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJmZWxpcGVAYWRtaW5ubm4uY29tIiwiaWRUb2tlbiI6MzIsInZhbHVlcyI6IjUwIiwiZXhwIjoxNTczNzk0MTk1fQ.6qBYLpbQKY9AnXhZWWLw4-Inp27pgcQ79HAVjQW9puNY2EJj6j9AprGrltx60SwcOMMaJIl0lJIfsy-2t2eY4w','2018-03-25 00:00:00','E'),(33,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJmZWxpcGVAYWRtaW5ubm4uY29tIiwiaWRUb2tlbiI6MzMsInZhbHVlcyI6IjUwIiwiZXhwIjoxNTczNzk0MTk3fQ.Qlvps30f9KpCcNDSYGydF3052IgYMHPeYwMgzgBIxWcC2W7_B1zWPmtgWoXuKb_VmdjqkxAqaqSW6BY-6E8a8w','2018-03-25 00:00:00','E'),(34,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJmZWxpcGVAYWRtaW4uY29tIiwiaWRUb2tlbiI6MzQsInZhbHVlcyI6IjQ3IiwiZXhwIjoxNTczODA4MzQ0fQ.XA_axxEjKBztv4J_f5MwLg4gPgm-whJWNqRofeqzIlgUxuBkEqXwEvSuWThRvVoHes3ZO4MSFQFAJzeY7V13AQ','2018-03-25 00:00:00','E'),(35,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJmZWxpcGVAYWRtaW4uY29tIiwiaWRUb2tlbiI6MzUsInZhbHVlcyI6IjQ3IiwiZXhwIjoxNTczODA5MTAxfQ.gO97SgBiX8lxErTk17Gb89QmoG-RjBPZ5ZQqCf7XmwrClQlIeslYcm8zygOY7skhRe52zMIW0sVvNzMuMhPEAA','2018-03-25 00:00:00','E'),(36,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJmZWxpcGVAYWRtaW4uY29tIiwiaWRUb2tlbiI6MzYsInZhbHVlcyI6IjQ3IiwiZXhwIjoxNTczODA5MTIxfQ.0Vhei4TrVC12OzIE9se27i4gap9q46p5km8XYMstYxL8v6C7QYfBvM4eIORBFm4Gl3dQlZxvllcHvqNXUVAWyg','2018-03-25 00:00:00','E'),(37,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJmZWxpcGVAYWRtaW4uY29tIiwiaWRUb2tlbiI6MzcsInZhbHVlcyI6IjQ3IiwiZXhwIjoxNTczODA5NTc3fQ.QoKa9z_fGUMxYcdpue5o5B_CSmjxP9NyK8HWlYCNwbYFyqLAuOuhl6W4xyjSbPuIRSzn8PxNuuRMLDHc--jtkA','2018-03-25 00:00:00','E'),(38,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJmZWxpcGVAYWRtaW4uY29tIiwiaWRUb2tlbiI6MzgsInZhbHVlcyI6IjQ3IiwiZXhwIjoxNTczODEwMTQyfQ.mqtAlBsc3Q_ks0m70qWOrdvR2OiaJknrmUglzNcg2KB8G_w-lI54nti574hxEceaCJJsRLznPQbyxhpUtl2ULg','2018-03-25 00:00:00','E'),(39,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJmZWxpcGVAYWRtaW4uY29tIiwiaWRUb2tlbiI6MzksInZhbHVlcyI6IjQ3IiwiZXhwIjoxNTczODMyNDkzfQ.ThVHRQZuxttiXngjcR1ahVUaA8tITd0ig9ok23ebOPnzbltoiO9pxllpxassN5W-2GTt0aUvkb92KONuu-YJcg','2018-03-25 00:00:00','E'),(40,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjo0MCwidmFsdWVzIjoiNDIiLCJleHAiOjE1NzQyMjI0NTN9.SQ_Z4Z4XnectGOojr5eNiiRicunFFvzqaNw5CdH-G6fwIFyQMQnqEkpiqtiftwJkQmcbVsqgBxXVJ-nYXroZqw','2018-03-29 00:00:00','E'),(41,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjo0MSwidmFsdWVzIjoiNDIiLCJleHAiOjE1NzQyMjI0NjJ9.gDKPnZX9SIgXwl51x8cFrMUbH6uk3MFLMs_UEYZo-lRUHASUUZ-wzNtgEk9LAtAr2baxK_ZgfYHQhfuEraC-XA','2018-03-29 00:00:00','E'),(42,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjo0MiwidmFsdWVzIjoiNDIiLCJleHAiOjE1NzQyMjMzOTl9.8pyjg09H3IZonxTY6o1ImYOMJws8M2FixypySWB_Zl-EIiBjiaZ5L6fSFR5Ih_09SV4VMprcIJiU_YiSRKjTjA','2018-03-29 00:00:00','E'),(43,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjo0MywidmFsdWVzIjoiNDIiLCJleHAiOjE1NzQyMjM0MzR9.HntxbISnHukuqdwZ9UmRsJfDmGQwUauw2fd7xVCiCeHV3ywL0AH6lTF5Kzq9-l2O2t4lzJLBMXz4vbHYwAs58A','2018-03-29 00:00:00','E'),(44,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjo0NCwidmFsdWVzIjoiNDIiLCJleHAiOjE1NzQyMjU0NTB9.Bw2W_2XnybtDdFFlsWDYU9KzPWWgGWgV4c1oXTYZjlhUi0IvjNDLy_YU9pjRaKDTsb53_kQtLWj-q0vwHRwEIQ','2018-03-29 00:00:00','E'),(45,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjo0NSwidmFsdWVzIjoiNDIiLCJleHAiOjE1NzQyMjU3Njl9.58Sx8PhiDIqZvs9c9YOaWMnCkIUjGM5GEfvkBXU-_jdHliH55r2NlfqL5AnsubPl6IhcjgeuiRdbiZ9VBuyTlA','2018-03-29 00:00:00','E'),(46,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjo0NiwidmFsdWVzIjoiNDIiLCJleHAiOjE1NzQyMjgzODd9.1btxPt7MgztJUo3NZSGxfOgAv96XXVQIPJlejShhO2v-tHRyKAzIIXN20KAEVKli4Bma-zLqbCfgoOvaJ2h6ow','2018-03-30 00:00:00','E'),(47,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjo0NywidmFsdWVzIjoiNDIiLCJleHAiOjE1NzQzMDQwMjN9.iXGzfFjNAzvHxrv7zOjJ608WFsRBMPhA80E-mVdI9COagUSDAV2liV6hwa7moPSruu_8TAvvSU_Lm8_9xkolUA','2018-03-30 00:00:00','E'),(48,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjo0OCwidmFsdWVzIjoiNDIiLCJleHAiOjE1NzQzMDQwNzV9.xbfp8pFkyDnNOOUpGSjdBi-22Tr6tpVsFTsDtquehwnW3xWamKUgomUlU-9w47_xoSPDTwHdPf6mJKFH4wuGvQ','2018-03-30 00:00:00','E'),(49,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjo0OSwidmFsdWVzIjoiNDIiLCJleHAiOjE1NzQzMDQxNzR9.o7bKH4vnEasI_yGrfhif2x-Bp1i10yh2HR-2tD8HBlGzyKW6W_0EJO2QcE9hb1BC3qiVCpNhGjf3AABeZNov8w','2018-03-30 00:00:00','E'),(50,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjo1MCwidmFsdWVzIjoiNDIiLCJleHAiOjE1NzQzMDQ4NDB9.OBnVrZ4dZl3_XRxAVfXP6hIBNXqjxpmYKk_hQNA5W47ojz-x3hRpsrDZv6oyMQkB3USdMl3OhaLW0n3zAAId_g','2018-03-30 00:00:00','E'),(51,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjo1MSwidmFsdWVzIjoiNDIiLCJleHAiOjE1NzQzMDUyODh9.fO1TU4xJ9eYP2_WqEFSmaBEmpE0E4Ct53I5j7YDb0ocLprcJ0QWo315ndH9x72Yu_PVsxd5ltrmckJe4SdQn3g','2018-03-30 00:00:00','E'),(52,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjo1MiwidmFsdWVzIjoiNDIiLCJleHAiOjE1NzQzMDU0MTV9.FBkHnyF4pGUxqa9bKte9R_5fcXBn3feDyWRfgdAYxVgeBojmX7Z0ZrwgqrtjWusPtIU_JMmSjqNW0E9RDC37NA','2018-03-30 00:00:00','E'),(53,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjo1MywidmFsdWVzIjoiNDIiLCJleHAiOjE1NzQzMDU4NzB9.kocXnA133x87iTc0WkC2hBVQQhQeac67wC7ckMQpx5Cx014vxr9wcvVk7G9x_rVfFBHyyWj9AusBQi_N_j0OTQ','2018-03-30 00:00:00','E'),(54,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjo1NCwidmFsdWVzIjoiNDIiLCJleHAiOjE1NzQzMDYwNDR9.IInfEJd9A4nPxo3ljcBfGu8uXSK7nRutMBJ0TgkPR6Mn-BjEDK-_GLUIgKO4TaFdDNgn_6qFOjt2Tvchz-tq5Q','2018-03-30 00:00:00','E'),(55,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjo1NSwidmFsdWVzIjoiNDIiLCJleHAiOjE1NzQzMDY2Mzh9.ClZusac6qlDgDQT7ue_WmGWfoiPca79zoKi8ChF6_hXC6toqeF9LsyYuLACYKUW-i5B-GeD1aIx8LALR077zxg','2018-03-30 00:00:00','E'),(56,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjo1NiwidmFsdWVzIjoiNDIiLCJleHAiOjE1NzQzMDg1MzR9.flRhugf2R4XobEg1lQDDfA2rZFkn-Xc5B8gjcSw4q_SoA-nJ8bRk55UctCtJ6tSOcee1dvm5CyL6UoSjGfIQHg','2018-03-30 00:00:00','E'),(57,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjo1NywidmFsdWVzIjoiNDIiLCJleHAiOjE1NzQzMDg3NzF9.TLCABNhXakVvQEAFE7f9tAvwzUfzg_vYfbmVEfZwe_Py71wbtQvHuSmvEc32jO2qQWa864SaA_SlCpPuzomOMQ','2018-03-30 00:00:00','E'),(58,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjo1OCwidmFsdWVzIjoiNDIiLCJleHAiOjE1NzQzMDg5MTZ9.LNSP0uJUB8nryBCDG-2SBzDxvCWVADv9yTyADMG382vbrfThJ_zsowQxf8wjXCFQbyxlik905h3WK2f-r0HI3Q','2018-03-30 00:00:00','E'),(59,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjo1OSwidmFsdWVzIjoiNDIiLCJleHAiOjE1NzQzMDk0NTh9.ff5Ks2rE-DRNVJIz7wzd5ZOoNVl0rUbCccdgaQGaZtPeH_zy1hdoA1EdeXqyVpXae4eeHLJei-2rk3WZaDZAnQ','2018-03-30 00:00:00','E'),(60,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjo2MCwidmFsdWVzIjoiNDIiLCJleHAiOjE1NzQzMDk3NTl9.pGJglDDcCJLT1GgjCzcBsPGOiDZKF4ZuMVH6AWoS0s5328cOpWX4uZvK1RgzGrB6TdpHJOJ4CcmUP2gryalNvA','2018-03-30 00:00:00','E'),(61,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjo2MSwidmFsdWVzIjoiNDIiLCJleHAiOjE1NzQzMTAyMjB9.I1lYzgGyCZfKl78GlJg5BzBnvj3gXMdB13iB1t7meOF7j5a61zjunO6MqrPmdLQG2b054qusz6tRVqqc1BHAFg','2018-03-30 00:00:00','E'),(62,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjo2MiwidmFsdWVzIjoiNDIiLCJleHAiOjE1NzQzMTIwNzF9.i096Lm0FWN1B9vQoZbvRz9YB--DwES0uXt6ZWIldQkaPNAi2Ww0j9BlUSo3nfbeaL_4fiewCGBvlBstfjuOMHA','2018-03-30 00:00:00','E'),(63,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjo2MywidmFsdWVzIjoiNDIiLCJleHAiOjE1NzQzMTIyMDN9.yLakd7fu-rp-_AGssT9t68jzQaDoeU4E0eO0gqupVrjPsj3azzuaNltMhs2TeRSbRQVFTYExBQ6hQ3e4P4djqw','2018-03-30 00:00:00','E'),(64,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjo2NCwidmFsdWVzIjoiNDIiLCJleHAiOjE1NzQzMTI0MjB9.ZluaNOyuoeoTGSZkpMt2Z5grIM4qXYZFcqtPw7YJIXLxhA6EsESGb8TdLFzlsgqqC7R4ljSdPq_h08Q6mA5Xng','2018-03-31 00:00:00','E'),(65,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjo2NSwidmFsdWVzIjoiNDIiLCJleHAiOjE1NzQzMTI1NDJ9.WKcRvjHcN-irvh1YNSXghq8r1kJ4X5ymItt8DmDnfnwNWnoFPCr0MefnZcuubP9GVxPT17lSPzEAHD0oczAg_w','2018-03-31 00:00:00','E'),(66,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjo2NiwidmFsdWVzIjoiNDIiLCJleHAiOjE1NzQzMTI4NDl9.pzJBxWh3W8rjs3IAqkWN_kLepX41daHBVLD0vtTh2nYf2iOHMMFGr3LdcB2hG8oDpAEvoyUwrUh_-xocadRDwQ','2018-03-31 00:00:00','E'),(67,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjo2NywidmFsdWVzIjoiNDIiLCJleHAiOjE1NzQzMTI5NDN9.lWgkcyuHyP0GUq2cAUQ9KHvt-BM0MCToIjJ6pYxvyhnnZ4J9bYqDjtr9b0JWH6UB8KsKrQ9RV5HYOYi3vSyU1w','2018-03-31 00:00:00','E'),(68,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjo2OCwidmFsdWVzIjoiNDIiLCJleHAiOjE1NzQzMTMwMjV9.FvnqA2zbYFtQJhAOv8xdxnRyxa6pl1wU9TnnIRFxCKGGTfG7FIbDKSSnwNjVWjySJUP1Cnjinjzs4WineIKXsw','2018-03-31 00:00:00','E'),(69,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjo2OSwidmFsdWVzIjoiNDIiLCJleHAiOjE1NzQzMTMzMTd9.zdEe9v7LCR13YDAhAZWQoSwbtjh7z21gIhbHLuneTatv1j_k4G6EkeSSF2Zm9INuwxxwLdnZaBuQR-OVMfHPYQ','2018-03-31 00:00:00','E'),(70,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjo3MCwidmFsdWVzIjoiNDIiLCJleHAiOjE1NzQzMTQ1MjZ9.2T2exIShYAgC3L7wkhvRuypSeGjcJEMJO-qjkPPtWulQv0wLgVYnNbhuSCSoabWgAON1Cir1RYM92inql92vZQ','2018-03-31 00:00:00','E'),(71,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjo3MSwidmFsdWVzIjoiNDIiLCJleHAiOjE1NzQzMTYwMDN9.AaXiIjzDMgGnZavi9T3VjOZqkA8eieuIrboHaQsKBP5O5ugqWcSFsQrekv3nJRsNa8D9nI-50ZtNP52MSxcKsg','2018-03-31 00:00:00','E'),(72,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjo3MiwidmFsdWVzIjoiNDIiLCJleHAiOjE1NzQzMTY5NTl9.NFuPPC6yv9qk8tF6zG98f6LeouFI9HusNud8MBpOGfFcq5VPOQlEyUIC_5gtYMzb-krEi7Lp-xVWXSrqtv6vWg','2018-03-31 00:00:00','E'),(73,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjo3MywidmFsdWVzIjoiNDIiLCJleHAiOjE1NzQzMTczMTh9.sxIlZHpq3bkZ_jPymNXC8m_Y_oupN1jiR465tZoFUvzFGn16uDXbjbVgdmtVHCF-95vnWoWLqmvm4b7w08W6eA','2018-03-31 00:00:00','E'),(74,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjo3NCwidmFsdWVzIjoiNDIiLCJleHAiOjE1NzQzMTc1NTd9.dAuUNwkQVX0N64kuZXMRxZXh0L9yFfFvfq-MWz2g3Wy_xR1MfBwQqBZ1P4N5uVZsElUKS7wU9PWZDLMT7z6yqg','2018-03-31 00:00:00','E'),(75,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjo3NSwidmFsdWVzIjoiNDIiLCJleHAiOjE1NzQzMTc2Njl9.chWHqeHmltuMVqhCQk4NLz20oFYom9oO_nKOTtJ21e1ZCKoKZ02a8AirXtMQD2Ai0stZZpZudJi500bZXfWJNg','2018-03-31 00:00:00','E'),(76,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjo3NiwidmFsdWVzIjoiNDIiLCJleHAiOjE1NzQzMTc3MTV9.VqeVkZUCvm9LC-eylJezEW5wh2tkhPCN839ijE5e9rB-JssKMM062TuD0vg7Ml8gG383YRjg9WZ5QTr9sPvFWA','2018-03-31 00:00:00','E'),(77,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjo3NywidmFsdWVzIjoiNDIiLCJleHAiOjE1NzQzMTc5ODF9.T0hORXcxca4_35JhSVetkBLd1xQJp8vEXMm5oM3mKh1PxcnahHUA-NHFinrQ13rzk9L5-C_XdwzUd6V-pFhZaw','2018-03-31 00:00:00','E'),(78,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJyb290QHJvb3QuY29tIiwiaWRUb2tlbiI6NzgsInZhbHVlcyI6IjU4IiwiZXhwIjoxNTc0MzE5NzUzfQ.rUpurWd4NLctzcgYQ4oh7wiDWom8L9Zn1NSgx2OH5z-X6sd9xaBTI4KThcIdWZd0z0IcYXtQxlk2gJKwQ8QeSQ','2018-03-31 00:00:00','E'),(79,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJyb290QHJvb3QuY29tIiwiaWRUb2tlbiI6NzksInZhbHVlcyI6IjU4IiwiZXhwIjoxNTc0MzE5OTY4fQ.Ef5fSYr-ZpQkQcp-4v7p-KZFcbWDGSRAzWA9YgyhP6s_Vrx49O9UcaNEgqjeoGAisqYH3LdQHKZHYVYzVuFB7w','2018-03-31 00:00:00','E'),(80,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJyb290QHJvb3QuY29tIiwiaWRUb2tlbiI6ODAsInZhbHVlcyI6IjU4IiwiZXhwIjoxNTc0MzIwMzM2fQ.DpzxcWHnV-zK65jpoP5qBtwNWUvaosFkCz7OgAsPRSfJnUntEBXBuh7UqCnLEa15SzwE1cG3OoCm7qFb3bCwkA','2018-03-31 00:00:00','E'),(81,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJyb290QHJvb3QuY29tIiwiaWRUb2tlbiI6ODEsInZhbHVlcyI6IjU4IiwiZXhwIjoxNTc0MzIwNDExfQ.qmq_mTC47XB4ytRioChpvYE0phoqv6MoYbJsVGZToL9SJW_QfI-2QHxvULCqnebQ3rrNpbkTL0fOGy_2QggKWQ','2018-03-31 00:00:00','E'),(82,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJyb290QHJvb3QuY29tIiwiaWRUb2tlbiI6ODIsInZhbHVlcyI6IjU4IiwiZXhwIjoxNTc0MzIzNjQ4fQ.si4RbfZ_arw3Ky15t83gGHd5BquURVugkGpRRYXFl84rg_5DWPNoGV9v5wTC_TKw86mlX4y-lyyq59FjizBQlA','2018-03-31 00:00:00','E'),(83,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJyb290QHJvb3QuY29tIiwiaWRUb2tlbiI6ODMsInZhbHVlcyI6IjU4IiwiZXhwIjoxNTc0MzI0NDM3fQ.CMpQYjNtyhInZ6YF8-pty49qZ8Jlp_WrO9vIKjOJkCBdoV8FmpOCd2iYpZcPHCBrIVg_qyPFztGtu586kRMG2Q','2018-03-31 00:00:00','E'),(84,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJtaUBtaS5jb20iLCJpZFRva2VuIjo4NCwidmFsdWVzIjoiNTkiLCJleHAiOjE1NzQzMjQ1ODB9.i8-11Y6DVnF1VgEcrH96h5RUw_D0mD0iHvRk4ks8eDr0viNm2eiyk2-1dmCAsTgUlLP7iz1RfShrvXVtrAq8jQ','2018-03-31 00:00:00','E'),(85,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJtaUBtaS5jb20iLCJpZFRva2VuIjo4NSwidmFsdWVzIjoiNTkiLCJleHAiOjE1NzQzMjY5Nzd9.BUETxeeK8qEey8SevSH478BNW4eRZIy6fcJcs80E7TbAdIcoy62l1CNlVVLLi5AZyvGrfLyh8fIc7GcNkTmeWQ','2018-03-31 00:00:00','E'),(86,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJtaUBtaS5jb20iLCJpZFRva2VuIjo4NiwidmFsdWVzIjoiNTkiLCJleHAiOjE1NzQzNzgxMDN9.Ukdz-ffeQUX8eUGbLVifKiszomANS1Fdf6K6wUc_CLLt1EMyFuzwjdZ0YpLvXbbAVcaBPFeSpCk3TRxKV5YgGA','2018-03-31 00:00:00','E'),(87,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJyb290QHJvb3QuY29tIiwiaWRUb2tlbiI6ODcsInZhbHVlcyI6IjU4IiwiZXhwIjoxNTc0Mzk0NjAxfQ.0A9TZ2kxdexI76UZ0Pr-2eq1GlhCzeoyOw1u0Xf2nSVb_cIDNPgzPYcbhvSzWcLHj437j6wgh1af5AgKQK6-qA','2018-03-31 00:00:00','E'),(88,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJyb290QHJvb3QuY29tIiwiaWRUb2tlbiI6ODgsInZhbHVlcyI6IjU4IiwiZXhwIjoxNTc0Mzk0NjQwfQ.p70QmxYYNLSscGcYdwD4EfGn5Mp9M9atUNKqopExv7_tfINny-pYCxsZoys8aWYyJnQgx5nqzxhqEua7Io0wFA','2018-03-31 00:00:00','E'),(89,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJyb290QHJvb3QuY29tIiwiaWRUb2tlbiI6ODksInZhbHVlcyI6IjU4IiwiZXhwIjoxNTc0Mzk0NjY1fQ.aizUtQak6mZ3ZT3M7-qyH-e9JBYrmTGV8rVm81b6rVqf7Gw-r6QxQhhfDpYogkzjaKHAhgY_0IH21bbf1Dp9Hg','2018-03-31 00:00:00','E'),(90,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJqZXN1c0BhZG1pbi5jb20iLCJpZFRva2VuIjo5MCwidmFsdWVzIjoiNjAiLCJleHAiOjE1NzQzOTQ5MTh9.-6yz6tCi-3EGybabgX3SWQS8YIJs9lKyswsi4YHkc_5Gf_f2esl6dtLYwzI3w7eSjU1bZuiDQUql0XLGqW7PgA','2018-03-31 00:00:00','E'),(91,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ5ZXNzaWsxMjIxQGhvdG1haWwuY29tIiwiaWRUb2tlbiI6OTEsInZhbHVlcyI6IjYxIiwiZXhwIjoxNTc0Mzk1NDg3fQ.8oJrjkHLnjiay2yfpLOc1FjkuIIy4xDHkAKghZGwk41VBL75lmztMbCLLU4mSnQrZtN7hljI4Y2rejqo1jgjjg','2018-03-31 00:00:00','E'),(92,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ5ZXNzaWsxMjIxQGhvdG1haWwuY29tIiwiaWRUb2tlbiI6OTIsInZhbHVlcyI6IjYxIiwiZXhwIjoxNTc0Mzk1NjMxfQ.iOleoROZLuTwWxH7AnMVQn58sM5nRMeOn9MB_o9UXQhgW1GUk-O4y-ULAtr9va5FY-p37FYfyhO5X31vYf3Bpw','2018-03-31 00:00:00','E'),(93,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ5ZXNzaWsxMjIxQGhvdG1haWwuY29tIiwiaWRUb2tlbiI6OTMsInZhbHVlcyI6IjYxIiwiZXhwIjoxNTc0Mzk1NjUyfQ.E0kOEgv7DebzPnweTmedcDbIiSuSqvjkAy5RRtlHgypP75q_zGr2Y1obt-IzVIqeD--6L2aweDcwbFpvNHugtA','2018-03-31 00:00:00','E'),(94,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ5ZXNzaWsxMjIxQGhvdG1haWwuY29tIiwiaWRUb2tlbiI6OTQsInZhbHVlcyI6IjYxIiwiZXhwIjoxNTc0Mzk1NjgxfQ.FX5pyj6RFI8JLgux0znWhCTkUk7yXIuSTDyXK-t3PhbJE-iaIWeII5vrl2dYdhlwgexFhINSIWkH8IQDVKbM_w','2018-03-31 00:00:00','E'),(95,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJyb290QHJvb3QuY29tIiwiaWRUb2tlbiI6OTUsInZhbHVlcyI6IjU4IiwiZXhwIjoxNTc0Mzk1NzM2fQ.yuaV9wPtWr5fTRfrBgZHTuH8n2xjq4cfZ4XXDH7AoZLXuGrbw1aiQhiuHsdyfr4zYo7aEs_L2befSsO3PfMxVQ','2018-03-31 00:00:00','E'),(96,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjo5NiwidmFsdWVzIjoiNDIiLCJleHAiOjE1OTAwNDMwMDF9.uJliPpT6tBXmMBU5X1GiDgCMC9hqYMBeUOsbkI4XTCKAOCFzGxh4OPfOnqUZ3Pq3Jn2NxVUnNSKHpy96jKB1Ag','2018-09-29 00:00:00','E'),(97,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjo5NywidmFsdWVzIjoiNDIiLCJleHAiOjE1OTAwNDMxMzB9.XhNMJkeZXd2q0G6IKuHBM5QEqnSBwmnx_5RZ_e47OWmZOnPmOPUOIMn78xhCosoi-woDtMYFhY1yXSDSV6ciBQ','2018-09-29 00:00:00','E'),(98,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjo5OCwidmFsdWVzIjoiNDIiLCJleHAiOjE1OTAwNDM0MDh9.t02FhltA5oi2u02wbk_P3qDQU4B__dkT7GopiA116j2jX64hkr1_8zWPBBVkpql1sKdnaYLg8tbxspXHX0BDIA','2018-09-29 00:00:00','E'),(99,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjo5OSwidmFsdWVzIjoiNDIiLCJleHAiOjE1OTAwNDM5ODV9.9wbnuHFGjPIkuUGkLXsQxPa9BZv3RvEDgtypVuK6WtyCYngPKzTYwKd7M3Z5MAOhtx_Q7qNpDKvQnFBEbBiQWg','2018-09-29 00:00:00','E'),(100,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjoxMDAsInZhbHVlcyI6IjQyIiwiZXhwIjoxNTkwMDQ0NTM3fQ.otLonzYbFVJOel5hksYIaVcKKxk8excCbcrMRHjRM1KobELWQphqPO7muD-zH7jZ8_ojI-M_ngkyv3XTULDHIQ','2018-09-29 00:00:00','E'),(101,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjoxMDEsInZhbHVlcyI6IjQyIiwiZXhwIjoxNTkwMDQ1Mjg0fQ.kXMLHNnAQCgqOADdI-y8kkNbOqPD9BNb1f0R9-2RSSzH8yfJmLICKYhS9CwziW011nVljUyEEiU7hIzm0GJbGQ','2018-09-29 00:00:00','E'),(102,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjoxMDIsInZhbHVlcyI6IjQyIiwiZXhwIjoxNTkwMDQ1NDE1fQ.HYQJvhSiwVlNZjd9m--k6Bzp9fS5PMXDIGAwlCFaRbh9OApK_MVxhIBYQLqJHQtOlbDwgTMOtNcxq3brdC2bgw','2018-09-29 00:00:00','E'),(103,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjoxMDMsInZhbHVlcyI6IjQyIiwiZXhwIjoxNTkwMDQ1NDkwfQ.0o0rryCA948tLaF31tvBs4gud_U64fZy6erwNBSwobsI_91vNku6gg7iWC6ZL24dMPJAy6MTmZ6zxvFLrQRdxg','2018-09-29 00:00:00','E'),(104,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjoxMDQsInZhbHVlcyI6IjQyIiwiZXhwIjoxNTkwMDQ1NjAyfQ.g3yILGVpm3UgwLroVQXieYqymQS6hfIgf8cKvp9YUkO2Ouo9Hj2YzJ5Gv9zZRsH6aHu7Ye-O19VloaUpe5nXUA','2018-09-29 00:00:00','E'),(105,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjoxMDUsInZhbHVlcyI6IjQyIiwiZXhwIjoxNTkwMDQ1ODU4fQ.JNMgP7I_t072R-IP-njvUBLYpGOqsIYnOK6l-5Xckcgj_bW8m8DnIWsECCwukC-cxqUznIyGCQ_u9H6rO207XQ','2018-09-29 00:00:00','E'),(106,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjoxMDYsInZhbHVlcyI6IjQyIiwiZXhwIjoxNTkwMDgyODExfQ.Pam_wHzggjHaQFj2OH9iDSqNMoBLacUyRPmZOt82qiR-ipMDEfaUdsTa4LTtdq_HlR4Pdy6htR0zv-sbt-JpSg','2018-09-29 00:00:00','E'),(107,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjoxMDcsInZhbHVlcyI6IjQyIiwiZXhwIjoxNTkwMDg4MzkyfQ.wqCkl1vlTFDSqFcWnw63o42I-AFJsj3p2I80ueGkQz4d8Fzh_izCegNLjcTtjQCvP7vOuNQRFzB2s-1UYkKOnQ','2018-09-29 00:00:00','E'),(108,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjoxMDgsInZhbHVlcyI6IjQyIiwiZXhwIjoxNTkwMDg4NTYwfQ.qNVjUp8e3TdrqWbAaTpp4XhlGOypMk0aPi93cVd1RlU1t5Z-g8Z-he0W2J1HLM7Vd9-z3RETH4rRaREl5rm-iw','2018-09-29 00:00:00','E'),(109,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjoxMDksInZhbHVlcyI6IjQyIiwiZXhwIjoxNTkwMDg4NjIzfQ.x0G03gZtiFLJzpBH1OKi957tEB-JLf7k20_HKYWkAS7N3beJeXRHZvzCm9jJ59Wa4QZRpb0BhQ8euEBIVMcK_A','2018-09-29 00:00:00','E'),(110,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjoxMTAsInZhbHVlcyI6IjQyIiwiZXhwIjoxNTkwMDg4NjcyfQ.BD043PEQanH_ztfcGlk7x640b4OP6arn85RCxRPWRocpeZ2yCH3avQ77UTckPOEaGsIV2HWRPZI5u4ysa1gC3A','2018-09-29 00:00:00','E'),(111,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjoxMTEsInZhbHVlcyI6IjQyIiwiZXhwIjoxNTkwMDkwODkwfQ.RDt_jZMNfE_0WQN7HCqMdKDA2ppRpEAwvX2_frwo_lpTNXCowvlw7hDuTeihTseSMauVlln3HVjAGy2-6MFPBw','2018-09-29 00:00:00','E'),(112,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjoxMTIsInZhbHVlcyI6IjQyIiwiZXhwIjoxNTkwMDkyMjg4fQ.lrnJhogNmnKV8yASDqHbxv3U8a7hknUkD1hO1r0ItdwFB59pNGQWUH9adPFfMTcNIVCfQ8Q6WDUgZ5JOxsmloA','2018-09-29 00:00:00','E'),(113,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjoxMTMsInZhbHVlcyI6IjQyIiwiZXhwIjoxNTkwMDkzMzcyfQ.XKc22uUaMq_6j8vtFo8LCMPbA4ppiUrq3HI8jKhQcsnzIOt-avV1u43HRSH6FxEuPAXisUbVQ3bzcSI8QESQUA','2018-09-29 00:00:00','E'),(114,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjoxMTQsInZhbHVlcyI6IjQyIiwiZXhwIjoxNTkwMDkzOTYyfQ.GMSGc49q88zxI8taYTKw3D5aTPUpvVnesWK8gqkAzmdiXvRGWM2KPVVpcynXE6QDNYTPAryoSPj10ldqWfP2dg','2018-09-29 00:00:00','E'),(115,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjoxMTUsInZhbHVlcyI6IjQyIiwiZXhwIjoxNTkwMDk0MjE0fQ.WoARm4qBU9JLjX-EosOmGEc8DGAx7bokQO3T4qlE55bUHEjRjgfhZjgwL0zt8pHVp6m7ICLy80pFcT-D__gfsg','2018-09-29 00:00:00','E'),(116,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjoxMTYsInZhbHVlcyI6IjQyIiwiZXhwIjoxNTkwMDk1NTE2fQ.zq_qEkuUoFu0AkQGaBpqxL46TOAtfTQFlzOy60GrVob4CmYJhmkXzh5CK0zmoDvjYCZ1XflTbCS_Sr811Yd80A','2018-09-29 00:00:00','E'),(117,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjoxMTcsInZhbHVlcyI6IjQyIiwiZXhwIjoxNTkwMDk2MTE0fQ.DX7076tVG4F3_UTpEvq22uVwAJv0BJEhH-x4Y7_Cgsoa76GLTeyzlbB75Av7SqKKjm65Ci63Jf5ZBpI9ADeNmw','2018-09-29 00:00:00','E'),(118,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjoxMTgsInZhbHVlcyI6IjQyIiwiZXhwIjoxNTkwMDk2Mjk3fQ.M_E7lY4agvph20R148a_6V40MoFLjDreWxUVUXTNp--OBJqv_97RqckOBA9Xo4g5nqdCKDiuu-f2LDxNYDX05A','2018-09-29 00:00:00','E'),(119,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjoxMTksInZhbHVlcyI6IjQyIiwiZXhwIjoxNTkwMDk2NjM0fQ.N1T7WCBdH20-TyXc_cb4yFXbJJ1vuMtVlMQdCdfOqGtA2hD3lwZ8X-MfPV8jl_JjxLvorvs9QuNe9hx5sJGn4Q','2018-09-29 00:00:00','E'),(120,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjoxMjAsInZhbHVlcyI6IjQyIiwiZXhwIjoxNTkwMDk2NzkyfQ.H-abuZtvQ6XNvOuS18cWkDHmFMJZCptffBrSAJsaQxMmITadtFzdnLHPuB3XHxhVZucp97z5mKuAjcbdRUhpAw','2018-09-29 00:00:00','E'),(121,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjoxMjEsInZhbHVlcyI6IjQyIiwiZXhwIjoxNTkwMDk3MDAwfQ.OlyeaHMuZk-6_zINCiXz1Oteic5EHEZS_ukLxiJmZ2uH5wvkLmuaxxmFHqzlwvZBVvwX7axa84RITN4Lgs3HaQ','2018-09-29 00:00:00','E'),(122,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjoxMjIsInZhbHVlcyI6IjQyIiwiZXhwIjoxNTkwMDk3MjU2fQ._zbBJlTO8XcfSJkDZl8Ai66bij3YaigpsrqQx0tKy0ufpC6VuJ5RIvrX-I_-hrmtB6InVra981xIxdflGGPcCg','2018-09-29 00:00:00','E'),(123,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjoxMjMsInZhbHVlcyI6IjQyIiwiZXhwIjoxNTkwMDk3MzgyfQ.N1snLSYAgptBBBa6D6C7mxa1I1wwPFUDYlG8LfE3W6WqATnc3P6WctD5rOi7MQuMEjC-LoCA1YOfFlZnzR-5VQ','2018-09-29 00:00:00','E'),(124,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjoxMjQsInZhbHVlcyI6IjQyIiwiZXhwIjoxNTkwMDk3NDU4fQ.4gTgPwDfuDKu__EZD5VN6IlK6-oPNWHcPIkVig5Ic5gSz4Z8cy7UGhue6iFgG4VXypa3Lw095F_zmC4bt-YZww','2018-09-29 00:00:00','E'),(125,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjoxMjUsInZhbHVlcyI6IjQyIiwiZXhwIjoxNTkwMDk3NjA0fQ.TuR54J-PkMnJ8lakytm2_E1ByKPKgjociOGVgb6mfcDXF1jSod-NMceaViwRDzAjgUnYzVuJ4LptNhU1Uu2yEA','2018-09-29 00:00:00','E'),(126,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjoxMjYsInZhbHVlcyI6IjQyIiwiZXhwIjoxNTkwMDk3OTgzfQ.sxiLErdRpd4hBS4AuR6totlusvAmMdIdn3AYvdt-TAPbtcNPC6wnfbush7BUfKSEEbrkD9xkW9u0vf4KBHVEoA','2018-09-29 00:00:00','E'),(127,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjoxMjcsInZhbHVlcyI6IjQyIiwiZXhwIjoxNTkwMDk4MDk2fQ.XT6D5CHTYM_58dNsA0AEHDzXaVYMs8FRWB522aaB7PQlR0WBxqcBm779Sn9M4UvvoShxryHPnuoCRkA1YA5IvQ','2018-09-29 00:00:00','E'),(128,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjoxMjgsInZhbHVlcyI6IjQyIiwiZXhwIjoxNTkwMDk4MTQ4fQ.sPmd1tXaZDJLoJ5vTBFMWkDtLPWb4RMbcMFYX7iwA4VZ2g13BzXUlFu7_ENbi8XtjJbAVyszUwaFMuiqEE41Yw','2018-09-29 00:00:00','E'),(129,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjoxMjksInZhbHVlcyI6IjQyIiwiZXhwIjoxNTkwMDk4Mjg4fQ.JC-cLGYYzC0Va_RMsi6AEk4SWhmNOAUW3cm4lvSBeGWVbzVqShkXPyIVPm_AEeS8rHhQmozY5xq-ME6n7u9E5Q','2018-09-29 00:00:00','E'),(130,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjoxMzAsInZhbHVlcyI6IjQyIiwiZXhwIjoxNTkwMTAwMjc3fQ.EoBQjRH1Syeit-jN6sG1ToBtOXMVxM8FJmy4VXBvB0vTeZxz_ls2NPNz2BU7PRa9SfRNHJvdElxBSsATGPLQgQ','2018-09-29 00:00:00','E'),(131,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjoxMzEsInZhbHVlcyI6IjQyIiwiZXhwIjoxNTkwMTAwMjg3fQ.yt2B3Lho_jpyaL0KRsB7PVDrvMCwnOJOtWQr76wwpbNZayTN_uTIuj-gDFdp4nFywiKIWJ5LZ6Ifn7UXg8dd7A','2018-09-29 00:00:00','E'),(132,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjoxMzIsInZhbHVlcyI6IjQyIiwiZXhwIjoxNTkwMTEwNjQ4fQ.CUlVz_7Wg3M7vofM4RBenjkkfdww553RFwRMwCfxAiJlt5mSbfd3pknh0y56SVmy5G4v0vQHsCpLt_AsriGmjw','2018-09-29 00:00:00','E'),(133,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjoxMzMsInZhbHVlcyI6IjQyIiwiZXhwIjoxNTkwMTEwOTg3fQ.DJL7orf5EqohHHRu7V7LHwjA7JCGYb1m2_-pOqvoJTqC-UDbGf4516y005rcEmn6eONzObt-zvm6EGiuK5E7Hg','2018-09-29 00:00:00','E'),(134,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjoxMzQsInZhbHVlcyI6IjQyIiwiZXhwIjoxNTkwMTEyNzE3fQ.5YO0NfTGe7lMUxcOGZDOUqucPgIOeNmrVIpvEEm_7MlSnpnItqjbgWRIxr7aZ-5Tbp_-eCpx5x5_eqwTFKEEGg','2018-09-29 00:00:00','E'),(135,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjoxMzUsInZhbHVlcyI6IjQyIiwiZXhwIjoxNTkwMTEyNzI2fQ.7yx5TVyzV7lw8VtGKDWTZuS0gTp6ke9GMjwm0ZCdGcPOvjsUfHn19BuO6CK-5arfTbFeUAspyb6_rBiOISE-gw','2018-09-29 00:00:00','E'),(136,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjoxMzYsInZhbHVlcyI6IjQyIiwiZXhwIjoxNTkwMTEyODE5fQ.8heRczwr8J6zyMmoSURITmvsngouEA-m2l1eb188CWK71teEIv63ZolMgk9wsHmTiqawjprM7OcqEVAbatx-oQ','2018-09-29 00:00:00','E'),(137,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjoxMzcsInZhbHVlcyI6IjQyIiwiZXhwIjoxNTkwMTE0MjM5fQ.2519y1uEXayJyDpVJQr-Gkven4XbQRYy04TpN68_EzTGvC3y7PWvdm5OTe8KdRSZ5TIHvYENhNJmDCq3XV5kMg','2018-09-29 00:00:00','E'),(138,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjoxMzgsInZhbHVlcyI6IjQyIiwiZXhwIjoxNTkwMTE0MjU1fQ.tEBmlMjt5hfgZDMJjZ_84Lab086MkXSt7WeAJvTCMXd0zauvUFxlGzjXNGqVgi3TJACsuxlpu5lZE4sDNEwO_w','2018-09-29 00:00:00','E'),(139,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjoxMzksInZhbHVlcyI6IjQyIiwiZXhwIjoxNTkwMTE0MjY1fQ.Q1mV6wLxcMvDtFtnCz2TFqlaYoquOeXKZUMZySvv_kuAGi6nUbu1vMSzBHSwcw8PJXdZDHSjcF2g5QJLgzPqRg','2018-09-29 00:00:00','E'),(140,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjoxNDAsInZhbHVlcyI6IjQyIiwiZXhwIjoxNTkwMTE1MzY1fQ.oh6xeCa9ReBLA-Sbcd_Lb658di5soUx0r-lGEGIbwI7lQRIYMaqL20iaZ8_H1gNdScW6fTj10pGYWH8C-tYjNw','2018-09-29 00:00:00','E'),(141,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjaWRlbGdvbGZvQGdtYWlsLmNvbSIsImlkVG9rZW4iOjE0MSwidmFsdWVzIjoiODUiLCJleHAiOjE1OTAxMTg1OTF9.A6GBcsuXnqAIqE8G6D0fuKfqCzKIVcyp9p9ZEuT3s8v47SURWP3VgTNyLKHJMsB-fGejkCVA58pAAr4zwRYQrA','2018-09-29 00:00:00','E'),(142,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjoxNDIsInZhbHVlcyI6IjQyIiwiZXhwIjoxNTkwMTE5NjMzfQ.HEmGtjwGOAnfCEOcsh_fjzlhYd_sys0tFHZXff5o3a01mo7rO0v0oo9t8EGVZGdSFGiylVdO4kKh7PhDRT5-Ig','2018-09-29 00:00:00','E'),(143,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjoxNDMsInZhbHVlcyI6IjQyIiwiZXhwIjoxNTkwMTE5NjM0fQ._XgbycChjle9-Pbr7dED5WBFgyTIBUZWhcU9hWs2u8Hs4-0qU518dASLmzv2eN7aoLzt6ZEqahHmCGmZOotBCw','2018-09-29 00:00:00','E'),(144,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjoxNDQsInZhbHVlcyI6IjQyIiwiZXhwIjoxNTkwMTE5ODY1fQ.YJp598K5ANrgkDQGqUsQjSXq5YMtp1wYxiUOZMUvptOupX1k2PMLicaVtL5i4qU7H7uba6VJ2S1sTYsm-OSkug','2018-09-29 00:00:00','E'),(145,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjoxNDUsInZhbHVlcyI6IjQyIiwiZXhwIjoxNTkwMTE5ODcyfQ.rJ5zdq28GZ8JDWVYMoDZF0YQR81c4o8RN6T10VKRUU0RjFJ59JrjZM4G7_5wlkeoY_PTaNCz0gTh4-Bb1WOM7Q','2018-09-29 00:00:00','E'),(146,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjoxNDYsInZhbHVlcyI6IjQyIiwiZXhwIjoxNTkwMTIwMDk0fQ.crMWsP-gxtF3a29qaIQow373FklUitS6KwqS0VW0x93N3IB5J7X9-s7y2bozW31WDNt8F9J1Asx0ZCqn_z2pNQ','2018-09-29 00:00:00','E'),(147,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjoxNDcsInZhbHVlcyI6IjQyIiwiZXhwIjoxNTkwMTIwMTA0fQ.bSSduUkhFfJ46dMFoq12rrufagcoP841j0O70Ng-G1cAgJfWKqtp6egx9b2XZ3ZBOabZSMRYf14TkQFd1sUoqw','2018-09-29 00:00:00','E'),(148,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjoxNDgsInZhbHVlcyI6IjQyIiwiZXhwIjoxNTkwMTIwMTE4fQ.vrDvCBtcmwGkaapzkinXH8bwVnR-0dWf7KUBMqFe9Rxu_FlGcOaCsmfTjf1GeyR5jqpxmHiYu6SJsgpb1X8h1g','2018-09-29 00:00:00','E'),(149,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjoxNDksInZhbHVlcyI6IjQyIiwiZXhwIjoxNTkwMTIyMjM0fQ.KK-2nJvZMOWbfenTWCI8FRR4vQHfv9za5cgqMO7F8DQnGJ-O7qod7dlkiigjSdQRW-WDl1pMDxrlWAbz2TG4Hw','2018-09-29 00:00:00','E'),(150,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjoxNTAsInZhbHVlcyI6IjQyIiwiZXhwIjoxNTkwMTIyMjk0fQ.8a8HpmOsmo_cNYe2oic9LyQJ8TyUT5wfHuL5rD95ZtjgZp4u1g1j37zhNF6mvjLFiE_emAQJH-61GNLvnDDAAw','2018-09-29 00:00:00','E'),(151,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjoxNTEsInZhbHVlcyI6IjQyIiwiZXhwIjoxNTkwMTIyNjIzfQ.mMionY5JRdIRW-RBg_VVLyWqraukLMXYerohI-5XI2uG8bZM0swnoMBf6TPoIqxYy7-m3raTswF5-t3DqvIdYQ','2018-09-29 00:00:00','E'),(152,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjoxNTIsInZhbHVlcyI6IjQyIiwiZXhwIjoxNTkwMTI0MDk3fQ.KorKnnu5YUxs8c9mipskgKFmzvVWGm3Rc4o5J91S93KUNQjxWm5e8P8lp_Co6BquPkhvpsTolr7M5CdaxzJJgg','2018-09-30 00:00:00','E'),(153,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjoxNTMsInZhbHVlcyI6IjQyIiwiZXhwIjoxNTkwMTI0MzUxfQ.M7Au2Ofu5sAg6ufxZab8ee-Mn7vSFHis0zhZC_c8PykR1YVA-AM2dtC0aG0JmoEEvhV3WAwEWHf7EoTnfdr6hg','2018-09-30 00:00:00','E'),(154,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjoxNTQsInZhbHVlcyI6IjQyIiwiZXhwIjoxNTkwMTI0NTA3fQ.Vn7n3OcPklTK2oOSlcT0IrBtx16zZn8nE03gmD8iGD_ulE0ZUU0U7pNaQNdu9HFWtL3o5fVtiN3eKzjsk4O19g','2018-09-30 00:00:00','E'),(155,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjoxNTUsInZhbHVlcyI6IjQyIiwiZXhwIjoxNTkwMTI0ODI0fQ.D1VAKg4tJY2ff8kNgtuUhSc-cXa4o5v3S7E3HV-j9SaFXPE6k3_VgF1xcZoRYjIGuNdntANYc_2qyLerC5vkQQ','2018-09-30 00:00:00','E'),(156,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjoxNTYsInZhbHVlcyI6IjQyIiwiZXhwIjoxNTkwMTI1MzI0fQ.OX03UO12eUaVoV-L6jUI_vhxarIDrm-M0D7lH5Xkz6L9Uc8NqBFIvNffyQpiK_aYG0Kkx0bRS5b6bpwbbmbgsA','2018-09-30 00:00:00','E'),(157,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjoxNTcsInZhbHVlcyI6IjQyIiwiZXhwIjoxNTkwMTI1MzgxfQ.L3pUpHVrljuRAnKOeyXypKVTOkxUbru8tWb5zYNt8QrmwMJnS1KV_mSSJDt-yPiz5fpcMwPX66TU4Eo7v_osbQ','2018-09-30 00:00:00','E'),(158,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjoxNTgsInZhbHVlcyI6IjQyIiwiZXhwIjoxNTkwMTI1NDQwfQ.eOUqrFcxyXoiHPNnkokEjEaS2KavQ9Oc2jKRFqVeSTn-YcpKIMIEO54g-ffhdBxarANbgXtCoouWtrNhaJZXiQ','2018-09-30 00:00:00','E'),(159,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjoxNTksInZhbHVlcyI6IjQyIiwiZXhwIjoxNTkwMTI2MjE1fQ.4tA0XQyXvixGI_iWnATgg5iPVjpsRG4vD9P3w2yZFUzwxdFNPXcCzly5B6_PRYLa4pgbQXpVcZe0_o9TBW6s0A','2018-09-30 00:00:00','E'),(160,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjoxNjAsInZhbHVlcyI6IjQyIiwiZXhwIjoxNTkwMTI2MzY0fQ.p-zSwZBsFWc2uhGc5HF9S_rWS4hSypiv2UrCrMb8Gft25QOnCYWGrMf4-q-zja50qzM6r_oIwYto8D9bCiyoQw','2018-09-30 00:00:00','E'),(161,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjoxNjEsInZhbHVlcyI6IjQyIiwiZXhwIjoxNTkwMTI2OTA4fQ.hYlxORiRn0uQjjo4cMBhdIZk6EGyRVb6HDgD0YcZxI2pAtsWPwxWr3mZgqoHXXgJZqkLz34xCqfihRdAwxoy7w','2018-09-30 00:00:00','E'),(162,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjoxNjIsInZhbHVlcyI6IjQyIiwiZXhwIjoxNTkwMTI3MTM0fQ.82aoWzqXm_vNDNh53uuI6UX7h4ANRC9nb_j5ANmaMcx70gc_WYMrePoCoDpG9cH7gCXvUBLUPiwCRQzjTxutzg','2018-09-30 00:00:00','E'),(163,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjoxNjMsInZhbHVlcyI6IjQyIiwiZXhwIjoxNTkwMTI3MzA4fQ.GmyICVkZiD_Q6bpmz29nc1e_frRddYKTzBwGup8eMKaYys-IcyAFIDMGSreQ_f13HUXwAs3cSMcnHf0zsohxBg','2018-09-30 00:00:00','E'),(164,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjoxNjQsInZhbHVlcyI6IjQyIiwiZXhwIjoxNTkwMTI3MzQwfQ.NaBfVhQmgFUn_boEQEkb9EJI7z23z2GRh-YfsUBHVw7kNyDH__tjCVuUu06J5UYDO5HqGuSiJXh6I0ZjQgmARQ','2018-09-30 00:00:00','E'),(165,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjoxNjUsInZhbHVlcyI6IjQyIiwiZXhwIjoxNTkwMTI3NTk1fQ.imLTcbjzGG-HZr15M1J2b_bzAER9Eb3Fq7oA7SecZNutiNbhM719LYDqsJKbbfUGmrITpSkwBHTXqOekpkYH2w','2018-09-30 00:00:00','E'),(166,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjoxNjYsInZhbHVlcyI6IjQyIiwiZXhwIjoxNTkwMTI3NjAxfQ.gNHhorXSUVHcJTlD0GZGUXxxoISjYX59zITT2wTkEBiwNxq06EicsCGcpCQp7G9fSRSAyW0ORDJmVI4wcC9NHQ','2018-09-30 00:00:00','E'),(167,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjoxNjcsInZhbHVlcyI6IjQyIiwiZXhwIjoxNTkwMTI3ODU5fQ._WCUIa3rOG1GjWynaw2Ag7_E57EES5udUR5uhVkIwpqi6vQSOA_4jiZ2e2Ni2xNefkMvlPN0A02xxXMxsaTI7g','2018-09-30 00:00:00','E'),(168,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aXJzb0BhZG1pbi5jb20iLCJpZFRva2VuIjoxNjgsInZhbHVlcyI6IjQyIiwiZXhwIjoxNTkwMTI3OTIzfQ.f0NsPnYnPuKg9DHvDfZ_enFWi4Hw6uudHUsQLhIV0sz6orDjO-nUdP23EW9zSL4TAUCmb7kALraZU8WgoFwj9w','2018-09-30 00:00:00','E');
/*!40000 ALTER TABLE `t_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_usuario`
--

DROP TABLE IF EXISTS `t_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_usuario` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Apellido_Paterno` varchar(45) DEFAULT NULL,
  `Apellido_Materno` varchar(45) DEFAULT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Celular` varchar(15) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `Pass` varchar(700) DEFAULT NULL,
  `Ultimo_Acceso` datetime DEFAULT NULL,
  `Ultima_Ubicacion` varchar(200) DEFAULT NULL,
  `Acceso_From` varchar(45) DEFAULT NULL,
  `Token` varchar(700) DEFAULT NULL,
  `Estatus` varchar(15) DEFAULT NULL,
  `avatar` blob,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_usuario`
--

LOCK TABLES `t_usuario` WRITE;
/*!40000 ALTER TABLE `t_usuario` DISABLE KEYS */;
INSERT INTO `t_usuario` VALUES (42,'Reyes','HernÃ¡ndez','Tirso','5583444396','tirso@admin.com','3de90b01662cfe956cbc44dfd85cccdd10593965ed543296c62a0122a2cc89f24f9182e98296c11b27ec9a8f4311e143605965a87a3ea43038cb237902456525','2017-09-17 11:12:42','Ultima UbicaciÃ³n','WEB','42-daa32836e1fb8025c8d0cf2d36c7b3a07d181bf589cacab017f7de5c4a6dc8c3362ea0fb3709cf721e8253b76c9f2164b3f0cb20675bd30efcebec498472e341','Activo',NULL),(43,'Lopez','Fernandez','Jorge','2299663354','jorge@lopez.com','bb4e8fcdae831054349d3164d82830bdef92e5f5e238e5c643f13675d7b51a63c426cdc900918dbdb94790f73a5b3ad517f3efa429d218bdd014393b059c8d8f','2017-04-05 09:21:19','UltimaUbicacion','nuevo','0','Inactivo',NULL),(44,'Montano','Pineda','Juan Manuel','5566899000','juan@manuel.com','3de90b01662cfe956cbc44dfd85cccdd10593965ed543296c62a0122a2cc89f24f9182e98296c11b27ec9a8f4311e143605965a87a3ea43038cb237902456525','2017-07-26 22:46:00','Ultima Ubicacion','WEB','44-bafa2a9a0527ce7492f536da1dc67f501e225ae69c94e4302804e3ae72b68f6576c613b09a0ca5218655ca83157c26a53585e0560f2e4535dd33de71a39dcbfa',NULL,NULL),(45,'HernÃ¡ndez','Reyes','Tirso','5566778899','tirso@root.com','3de90b01662cfe956cbc44dfd85cccdd10593965ed543296c62a0122a2cc89f24f9182e98296c11b27ec9a8f4311e143605965a87a3ea43038cb237902456525','2017-09-09 00:54:28','jkj','WEB','45-442f6826265bbd479b5a0d71630c17808833b6cd5f386c21ae5207f9a6800ac506a232f997255c42827540806e06f67acd4a1335346768a357a4a2780163a90c','Activo',NULL),(46,'Reyes','Hernandez','Felipe de Jesus','5559887739','felipe1@admin.com','3de90b01662cfe956cbc44dfd85cccdd10593965ed543296c62a0122a2cc89f24f9182e98296c11b27ec9a8f4311e143605965a87a3ea43038cb237902456525','2018-03-07 22:54:07','pendiente','appMovil','url activacion pendiente','pendiente','no dispoble'),(47,'Reyes','Hernandez','Felipe de Jesus','5559887739','felipe@admin.com','3de90b01662cfe956cbc44dfd85cccdd10593965ed543296c62a0122a2cc89f24f9182e98296c11b27ec9a8f4311e143605965a87a3ea43038cb237902456525','2018-03-24 02:23:55','pendiente','appMovil','url activacion pendiente','pendiente','no dispoble'),(48,'Reyes','Hernandez','Felipe de Jesus','5559887739','felipe@adminn.com','3de90b01662cfe956cbc44dfd85cccdd10593965ed543296c62a0122a2cc89f24f9182e98296c11b27ec9a8f4311e143605965a87a3ea43038cb237902456525','2018-03-24 14:03:54','pendiente','appMovil','url activacion pendiente','pendiente','no dispoble'),(49,'Reyes','Hernandez','Felipe de Jesus','5559887739','felipe@adminnn.com','3de90b01662cfe956cbc44dfd85cccdd10593965ed543296c62a0122a2cc89f24f9182e98296c11b27ec9a8f4311e143605965a87a3ea43038cb237902456525','2018-03-24 20:09:08','pendiente','appMovil','url activacion pendiente','pendiente','no dispoble'),(50,'Reyes','Hernandez','Felipe de Jesus','5559887739','felipe@adminnnn.com','3de90b01662cfe956cbc44dfd85cccdd10593965ed543296c62a0122a2cc89f24f9182e98296c11b27ec9a8f4311e143605965a87a3ea43038cb237902456525','2018-03-24 23:09:54','pendiente','appMovil','url activacion pendiente','pendiente','no dispoble'),(51,'Reyes','Hdez','Felipe','3333333333','chuy@admin.com','cd3d9970dda34d78b025e77fee93ce96827bb9227b3126ce682a15eabdb8977b770126f826a486e4b7711aa47bfeca603d6ebb691eb88bdf2377ba1f2461f556','2018-03-27 02:44:20','pendiente','appMovil','url activacion pendiente','pendiente','no dispoble'),(52,'Reyes','Hernandez','Felipe de Jesus','5559887739','felipe@adminnnnn.com','3de90b01662cfe956cbc44dfd85cccdd10593965ed543296c62a0122a2cc89f24f9182e98296c11b27ec9a8f4311e143605965a87a3ea43038cb237902456525','2018-03-29 20:47:55','pendiente','appMovil','url activacion pendiente','pendiente','no dispoble'),(53,'HernÃ¡ndez ','Pacheco','Miriam','5548384818','miriamhp07@gmail.com','1ab21bca5cd168ce369e36e516b26b0673798ee41fe86f9694e1d9f361caae6c7d0a7606459c3ac63208c2b99c2c1d29db86ca96261d679f64fffdfc9c4a4529','2018-03-29 21:19:50','pendiente','appMovil','url activacion pendiente','pendiente','no dispoble'),(54,'Reyes','Hernandez','Felipe de Jesus','5559887739','felipe@adminnnnnn.com','3de90b01662cfe956cbc44dfd85cccdd10593965ed543296c62a0122a2cc89f24f9182e98296c11b27ec9a8f4311e143605965a87a3ea43038cb237902456525','2018-03-31 01:38:01','pendiente','appMovil','url activacion pendiente','pendiente','no dispoble'),(55,'Reyes','Hernandez','Felipe','5540969954','admin@admin.com','3de90b01662cfe956cbc44dfd85cccdd10593965ed543296c62a0122a2cc89f24f9182e98296c11b27ec9a8f4311e143605965a87a3ea43038cb237902456525','2018-03-31 01:42:21','pendiente','appMovil','url activacion pendiente','pendiente','no dispoble'),(56,'Reyes','Hernandez','Felipe de Jesus','5559887739','felipe@adminnnnnnn.com','3de90b01662cfe956cbc44dfd85cccdd10593965ed543296c62a0122a2cc89f24f9182e98296c11b27ec9a8f4311e143605965a87a3ea43038cb237902456525','2018-03-31 01:58:02','pendiente','appMovil','url activacion pendiente','pendiente','no dispoble'),(57,'reyes','hernandez','felipe','5540969954','admin@adminn.com','3de90b01662cfe956cbc44dfd85cccdd10593965ed543296c62a0122a2cc89f24f9182e98296c11b27ec9a8f4311e143605965a87a3ea43038cb237902456525','2018-03-31 01:59:54','pendiente','appMovil','url activacion pendiente','pendiente','no dispoble'),(58,'root','root','root','5540969954','root@root.com','421932077e5f0ecc94e5e7c56e32f885c5b5679ae36b3ccb12316d0e7bbd72e8027fb9b901f80d4ba00af033db125ca5f50e614d9f9fabc614d5d28a96f2db96','2018-03-31 02:02:08','pendiente','appMovil','url activacion pendiente','pendiente','no dispoble'),(59,'Hernandez','Pacheco','Miriam','5540699964','mi@mi.com','b0d171e131ca94e4ddb10d997b6886830ae86edbb2696f2c4289a8bad2eb5cc64b4d22ff3d43fc44f60dabec136b63baa7cc6fdf1ccd08c8f3cabaefd03a6011','2018-03-31 03:22:43','pendiente','appMovil','url activacion pendiente','pendiente','no dispoble'),(60,'reyes','hernandez','felipe','1234567890','jesus@admin.com','3de90b01662cfe956cbc44dfd85cccdd10593965ed543296c62a0122a2cc89f24f9182e98296c11b27ec9a8f4311e143605965a87a3ea43038cb237902456525','2018-03-31 22:54:43','pendiente','appMovil','url activacion pendiente','pendiente','no dispoble'),(61,'Ortiz','Rodriguez','Yessica','2291040915','yessik1221@hotmail.com','9030adf2617601b96bb8bd3bd6a10118a68b04b7c888ac31e5e5f1f1bd7f7a2b70d5954f48018811b6eb30911f041c65618b36bb4d1b967be9e88b3e200de986','2018-03-31 23:04:04','pendiente','appMovil','url activacion pendiente','pendiente','no dispoble'),(62,'LÃ³pez','Perez','Jose','727827837','jose@lopez.com','78f42e5496da3758e6fdf2e0bac20bda898df9faa2ee122e5380fd4c9d3e849e470bc1967224d188fc4baaf805a01b765b65908e2678593011fcde42968b0f9b','2018-04-06 23:31:38','','web','','Activo',''),(63,'Loera','Lopez','joel','98923893829','joel@loera.com','4694db5e15a80f20d027f04de3cc1b1b47d43bf37789f5b6aac4a05a264e2deeb6f573f74b5f101fdfd95130f9dc68a80b8a26db090246adf8228d377afa5ca3','2018-04-06 23:43:22','','web','','Activo',''),(64,'apellido','apellido2','donnombre','982982983','nombre@nombre.com','df75028a19ddca5c369a730e791291d8b42d50a4c51c380e7fe5b6fb8f17811155c2ed46e6492eec79ce459619d4bc38f249f51c543cb626758a7d17c2e92b93','2018-04-06 23:46:12','','web','','Activo',''),(65,'aslkdjalsk','lskjflkds','lkjsfldk','8292839','tutu@gmail.com','d57e0935386a59a7938f4444e39243933779be946e268cc2dd90b889065df984ccd105b1b8ad38689650fa54f16f13202277716e2729130fdef63f1be81a5b9d','2018-04-06 23:54:31','','web','','Activo',''),(66,'pater','mother','name','celu','name@name.com','49d19ea8e41352dfdf0e96f4809810c73812d092d3a42fb47d128eb959eaa2c79d9c75f403c7533aec965d66a7f4402c978af9e3921776d3c1d5d9aeed13dc97','2018-04-07 00:18:35','','web','','Activo',''),(67,'adfasfd','asdfasf','asdfas','adsfafs','asdfas@gmail.com','895d108556f2397f74c8584f30c9154e4a05148d957bf6454b604b06620decc87933ba2902f2db9f83b09c70596fbbe1f991fbf972b082cfaec00f1bc4d156e9','2018-04-07 00:20:51','','web','','Activo',''),(68,'adfaf','asfas','nom','987979','kdkd@kdkdkd.com','75d5b14b629c785c568c16ac5f366ba3309118512607baf3ae822b62a51e35be4ca7ac5cb5ad13e31a63864b937e069c502632a461757b146eb90e10f62b4106','2018-04-07 00:24:03','','web','','Activo',''),(69,'asdfsa','kljlk','lkjlkj','ljlkjlkj','sdflk@djkld.com','c9d71b108e28abcb68db391e5904577514be8cde018bc4102ef783285404ad1ad0d116e3711556ca80bf7778aaa13b717f1dbf4d9c1794c56ad74dc70925597d','2018-04-07 00:25:50','','web','','Activo',''),(70,'adsfa','asdfsa','asdfaasfda','asdfasfd','sdfa@jsdlk.com','7e8fbb013fc9fb9ebed5f18f43cf33a4b5967125577c3d8c07aae0b38c51bbb9f08b619d7d05d0cc5d2a3b52d990dc03804cb2eb6b640c71ecd0db5f1dd1d21d','2018-04-07 00:32:16','','web','','Activo',''),(71,'sdfadf','asdfa','asdfsa','987987','jdkfsl@jdkds.com','b93a124ef86746c894c87ac7bd6ff559297364caeef6daa0c3011396260ffc5a37237d94a0042dfea64ba10411d40b10bc26ec552cb1a9f56961c886aa5c516d','2018-04-07 00:55:38','','web','','Activo',''),(72,'aslkdjl','lkjlkj','lkjkl','lkjlkjl','jkls@gmail.com','17eae35508719d792782a188cff9829a8a1ddcfa9dd78bb09ee205b2d64360423ba36cfa750d065f84567ad07e1ba73b5baf8544e9f62386a2c2785c6973f217','2018-04-07 01:00:49','','web','','Activo',''),(73,'xcvzvcz','zxcvzxv','zxcvz','234523452hsfj','kljdkls@lskjdf.com','7668f1b6642461a8a4c5cdfc53095b18fb28098c2e5c2cf5b7b9fd490130e73c316f66a1450ba4ac172b5f009f75b5474ca5cf1f11355f947aa6cc5bd289eb57','2018-04-07 01:03:49','','web','','Activo',''),(74,'user','pat','pet','9898989','pet@jsdlfksl.com','5d6a40a5bb2df8bb06a7d856d0046015006ecede8153b77f41669057d24bd25b181afb95026f1622616a0c32da3d8393c29d58d131a178bd8ce215895286627f','2018-04-07 01:06:22','','web','','Activo',''),(75,'reyes','reyes','reyes','55555','reyes@reyes.com','bf8436b91d6d6e3a5d34bf98bf6fe10042c07ff2d0ad639da454fe30cdb4427165fea31b7340f85ee6d903dfdfbeb292ef5fe8917860a287dc21f63182ea8ae3','2018-04-07 01:08:00','','web','','Activo',''),(76,'lllll','lllll','lllll','55555','lllll@lllll.com','ebc741a68b751474c6865167b5f6b1b3aba286aa14a7cea86fe8f89fa7a8f6af702be81048a9cc0aaafa402fdca261a9f4ccd98a0383813242217e0aed72ba91','2018-04-07 11:53:07','','mobile','','Activo',''),(77,'romero','brisuela','lecturaman','5566778899','romero@brisuela.com','d03cfcbc646cf7c8f61878a127a8c21d0468158eb7c89786ca0d9ccfbc3b48f4e12b383d7b7ab1cc61e7eb4f202c15953ad2b93766782c03c8d9eeb1b3dd8d66','2018-05-27 15:46:46','','web','','Activo',''),(78,'romero','brisuela','super','775588999','romero@brisuelasuper.com','d03cfcbc646cf7c8f61878a127a8c21d0468158eb7c89786ca0d9ccfbc3b48f4e12b383d7b7ab1cc61e7eb4f202c15953ad2b93766782c03c8d9eeb1b3dd8d66','2018-05-27 15:49:28','','web','','Activo',''),(79,'ribon','sonson','sonson','55667788900','ribonsonson@hotmail.com','f7cf77af070003430f6fef5020d0512601a6e0ae18e21ec24b5feee84df085cbe32bb350f23882832ce941b46f6993a51c2d27a6d10a0699484798c4507e665e','2018-07-29 16:40:32','','mobile','','Activo',''),(80,'don','nadie','mister','55778899600','donnadie@mistar.com','328a09354f172404f0e760bc658fea34bd763ee9fbdbb64292c24c1de08d41fd53f11014e39f7108f03d49200541515eaeaa8191b1d6180aae69176cfec26adc','2018-07-29 16:47:00','','mobile','','Activo',''),(81,'Felipe','Felipe','Felipe','1234567890','felipe@felipe.com','355cdc08eb5cd67996c674961ed653c25a7f00453a265b2a8bce82b4827409300c783c457e57c9901fc2e200bfcb5eb6df43076a0a2fefba221a364aadd66678','2018-09-29 15:52:58','pendiente','appMovil','url activacion pendiente','pendiente','no dispoble'),(84,'Lopez','Fernandez','Jorge ','2291276940','cidelgol@gmail.com','cc24e2b9ceaf81ff70c7249f69a23edd1f83a910c32dc80138c2aa8a4fa75eda27ae874e53653f274a9da8dfa0821059acde20a9c7afb23854103b3ebaf7a126','2018-09-29 21:52:10','Pendiente','appMovil','84trs2c89c2c6-8219-4914-b824-8fc69063afe2','Activo','no dispoble'),(85,'Lopez','Fernandez','Jorge','2291276940','cidemsodfimso@gmail.com','cc24e2b9ceaf81ff70c7249f69a23edd1f83a910c32dc80138c2aa8a4fa75eda27ae874e53653f274a9da8dfa0821059acde20a9c7afb23854103b3ebaf7a126','2018-09-29 22:34:26','Pendiente','appMovil','85trs6682e5fe-7bf8-4760-b0bb-140172708c30','Activo','no dispoble'),(86,'Perez','Castellano','Jorge','2291276940','ventasdfksandfkajn@gmail.com','cc24e2b9ceaf81ff70c7249f69a23edd1f83a910c32dc80138c2aa8a4fa75eda27ae874e53653f274a9da8dfa0821059acde20a9c7afb23854103b3ebaf7a126','2018-09-29 23:04:08','Pendiente','appMovil','86trsf0f0fc2d-b276-491a-8977-3fdab70bd87b','Pendiente','no dispoble'),(87,'Lop','Fer','Jorge','2291276940','jormasdfklas@gmail.com','cc24e2b9ceaf81ff70c7249f69a23edd1f83a910c32dc80138c2aa8a4fa75eda27ae874e53653f274a9da8dfa0821059acde20a9c7afb23854103b3ebaf7a126','2018-09-29 23:09:44','Pendiente','appMovil','87trse0a17b9c-3e04-48bc-b8da-dcf53b4f2785','Pendiente','no dispoble'),(88,'Loo','Fer','Jor','2291276940','contaasmdlfsamnl@gmail.com','cc24e2b9ceaf81ff70c7249f69a23edd1f83a910c32dc80138c2aa8a4fa75eda27ae874e53653f274a9da8dfa0821059acde20a9c7afb23854103b3ebaf7a126','2018-09-29 23:26:03','Pendiente','appMovil','88trs3886683b-e65b-4329-b2e1-779630be0d33','Pendiente','no dispoble'),(89,'Fgg','Ffhh','Jor','2291276940','contoaspsskssjsjsjs@gmail.com','cc24e2b9ceaf81ff70c7249f69a23edd1f83a910c32dc80138c2aa8a4fa75eda27ae874e53653f274a9da8dfa0821059acde20a9c7afb23854103b3ebaf7a126','2018-09-29 23:31:03','Pendiente','appMovil','89trsc995ac4e-b207-4e71-a7e2-aca4b62d0321','Pendiente','no dispoble'),(90,'Lio','Fdhh','Jir','2291276940','jorge.locorona@gmail.com','cc24e2b9ceaf81ff70c7249f69a23edd1f83a910c32dc80138c2aa8a4fa75eda27ae874e53653f274a9da8dfa0821059acde20a9c7afb23854103b3ebaf7a126','2018-09-29 23:34:47','Pendiente','appMovil','90trs376a3353-64e7-47d2-8ca7-219233b11539','Pendiente','no dispoble');
/*!40000 ALTER TABLE `t_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_usuario_grupo_empresa`
--

DROP TABLE IF EXISTS `t_usuario_grupo_empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_usuario_grupo_empresa` (
  `t_empresa_Id` int(11) NOT NULL,
  `t_usuario_Id` int(11) NOT NULL,
  `t_grupo_Id` int(11) NOT NULL,
  PRIMARY KEY (`t_empresa_Id`,`t_usuario_Id`,`t_grupo_Id`),
  KEY `fk_t_usuario_grupo_empresa_t_usuario1_idx` (`t_usuario_Id`),
  KEY `fk_t_usuario_grupo_empresa_t_grupo1_idx` (`t_grupo_Id`),
  CONSTRAINT `fk_t_usuario_grupo_empresa_t_empresa1` FOREIGN KEY (`t_empresa_Id`) REFERENCES `t_empresa` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_t_usuario_grupo_empresa_t_grupo1` FOREIGN KEY (`t_grupo_Id`) REFERENCES `t_grupo` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_t_usuario_grupo_empresa_t_usuario1` FOREIGN KEY (`t_usuario_Id`) REFERENCES `t_usuario` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_usuario_grupo_empresa`
--

LOCK TABLES `t_usuario_grupo_empresa` WRITE;
/*!40000 ALTER TABLE `t_usuario_grupo_empresa` DISABLE KEYS */;
INSERT INTO `t_usuario_grupo_empresa` VALUES (40,42,116),(48,42,116),(49,44,116),(50,44,116),(40,45,115),(40,63,117),(40,73,118),(40,74,118),(40,74,119),(40,75,117),(40,76,119),(40,77,118),(40,78,117),(40,79,119),(40,80,119);
/*!40000 ALTER TABLE `t_usuario_grupo_empresa` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-30 15:37:12
