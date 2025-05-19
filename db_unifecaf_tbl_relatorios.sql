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
-- Table structure for table `tbl_relatorios`
--

DROP TABLE IF EXISTS `tbl_relatorios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_relatorios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `relatorio_aluno` varchar(200) NOT NULL,
  `id_unifecaf` int NOT NULL,
  `id_professores` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_relatorios_unifecaf` (`id_unifecaf`),
  KEY `fk_relatorios_professores` (`id_professores`),
  CONSTRAINT `fk_relatorios_professores` FOREIGN KEY (`id_professores`) REFERENCES `tbl_professores` (`id`),
  CONSTRAINT `fk_relatorios_unifecaf` FOREIGN KEY (`id_unifecaf`) REFERENCES `tbl_unifecaf` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_relatorios`
--

LOCK TABLES `tbl_relatorios` WRITE;
/*!40000 ALTER TABLE `tbl_relatorios` DISABLE KEYS */;
INSERT INTO `tbl_relatorios` VALUES (1,'um bom aluno porem com muitas faltas',1,1),(2,'precisa se esforcar mais para que obtenha boas notas',2,2),(3,'exelente aluno, porem conversa muito durante as aulas',3,3);
/*!40000 ALTER TABLE `tbl_relatorios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-19 16:36:03
