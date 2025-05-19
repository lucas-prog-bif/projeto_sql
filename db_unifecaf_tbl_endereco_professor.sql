-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: db_unifecaf
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tbl_endereco_professor`
--

DROP TABLE IF EXISTS `tbl_endereco_professor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_endereco_professor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `logradouro` varchar(45) NOT NULL,
  `cidade` varchar(45) NOT NULL,
  `bairro` varchar(45) NOT NULL,
  `estado` varchar(45) NOT NULL,
  `pais` varchar(45) NOT NULL,
  `id_unifecaf` int NOT NULL,
  `id_professores` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_endereco_proferssor_unifecaf` (`id_unifecaf`),
  KEY `fk_endereco_professor_professor` (`id_professores`),
  CONSTRAINT `fk_endereco_proferssor_unifecaf` FOREIGN KEY (`id_unifecaf`) REFERENCES `tbl_unifecaf` (`id`),
  CONSTRAINT `fk_endereco_professor_professor` FOREIGN KEY (`id_professores`) REFERENCES `tbl_professores` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_endereco_professor`
--

LOCK TABLES `tbl_endereco_professor` WRITE;
/*!40000 ALTER TABLE `tbl_endereco_professor` DISABLE KEYS */;
INSERT INTO `tbl_endereco_professor` VALUES (1,'estrada dos mirandas 210','sao paulos','jd umarizal','sao paulo','brasil',1,1),(2,'rua roberto bachi 38','sao paulos','jd pulma','sao paulo','brasil',2,2),(3,'rua franco de toleto 23  ','sao paulos','jd pacarana','sao paulo','brasil',3,3);
/*!40000 ALTER TABLE `tbl_endereco_professor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-19 16:36:02
