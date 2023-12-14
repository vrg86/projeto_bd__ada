-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: escola
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `presenca`
--

DROP TABLE IF EXISTS `presenca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `presenca` (
  `id_aluno` int DEFAULT NULL,
  `id_materia` int DEFAULT NULL,
  `id_professor` int DEFAULT NULL,
  `presenca` varchar(1) DEFAULT NULL,
  `data_aula` date DEFAULT NULL,
  `tempo_permanencia` int DEFAULT NULL,
  `hora_entrada` time DEFAULT NULL,
  `hora_saida` time DEFAULT NULL,
  KEY `fk_aluno_presenca` (`id_aluno`),
  KEY `fk_professor_presenca` (`id_professor`),
  KEY `fk_materia_presenca` (`id_materia`),
  CONSTRAINT `fk_aluno_presenca` FOREIGN KEY (`id_aluno`) REFERENCES `alunos` (`id_aluno`),
  CONSTRAINT `fk_materia_presenca` FOREIGN KEY (`id_materia`) REFERENCES `materias` (`id_materia`),
  CONSTRAINT `fk_professor_presenca` FOREIGN KEY (`id_professor`) REFERENCES `professores` (`id_professor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `presenca`
--

LOCK TABLES `presenca` WRITE;
/*!40000 ALTER TABLE `presenca` DISABLE KEYS */;
INSERT INTO `presenca` VALUES (1,1,1,'1','2023-01-10',180,'19:00:00','22:00:00'),(2,2,2,'1','2023-01-11',150,'19:30:00','22:00:00'),(3,3,3,'1','2023-01-12',120,'20:00:00','22:00:00'),(4,4,4,'1','2023-01-13',160,'19:30:00','22:10:00'),(5,1,1,'1','2023-01-14',170,'19:00:00','21:50:00'),(6,2,2,'1','2023-01-15',140,'19:15:00','21:35:00'),(7,3,3,'1','2023-01-16',180,'19:45:00','22:45:00'),(8,4,4,'1','2023-01-17',130,'19:20:00','21:30:00'),(9,1,1,'1','2023-01-18',150,'19:45:00','22:15:00'),(10,2,2,'1','2023-01-19',160,'19:15:00','21:55:00'),(11,3,3,'1','2023-01-20',140,'19:30:00','21:50:00'),(12,4,4,'1','2023-01-21',180,'19:00:00','22:00:00'),(13,1,1,'1','2023-01-22',170,'19:00:00','21:50:00'),(14,2,2,'1','2023-01-23',140,'19:15:00','21:35:00'),(15,3,3,'1','2023-01-24',160,'19:30:00','22:10:00'),(16,4,4,'1','2023-01-25',150,'19:45:00','22:15:00'),(17,1,1,'1','2023-01-26',180,'19:00:00','22:00:00'),(18,2,2,'1','2023-01-27',130,'19:30:00','21:40:00'),(19,3,3,'1','2023-01-28',170,'19:15:00','21:55:00'),(20,4,4,'1','2023-01-29',140,'19:45:00','21:05:00');
/*!40000 ALTER TABLE `presenca` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-09 21:56:01
