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
-- Table structure for table `alunos`
--

DROP TABLE IF EXISTS `alunos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alunos` (
  `id_aluno` int NOT NULL,
  `nome_completo` varchar(255) DEFAULT NULL,
  `nome_pai` varchar(255) DEFAULT NULL,
  `nome_mae` varchar(255) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `cpf` varchar(11) DEFAULT NULL,
  `idade` int DEFAULT NULL,
  `materia` varchar(255) DEFAULT NULL,
  `data_matricula` date DEFAULT NULL,
  `turma_id` int DEFAULT NULL,
  `professor_curso` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_aluno`),
  UNIQUE KEY `cpf` (`cpf`),
  KEY `fk_turma_aluno` (`turma_id`),
  CONSTRAINT `fk_turma_aluno` FOREIGN KEY (`turma_id`) REFERENCES `turmas` (`id_turma`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alunos`
--

LOCK TABLES `alunos` WRITE;
/*!40000 ALTER TABLE `alunos` DISABLE KEYS */;
INSERT INTO `alunos` VALUES (1,'Alice Silva','Carlos Silva','Maria Silva','Rua A, 123','12345678901',18,'Ciência da Computação','2023-01-10',1,'Prof. João'),(2,'Bruno Santos','Pedro Santos','Ana Santos','Rua B, 456','23456789012',19,'Engenharia de Dados','2023-01-11',2,'Prof. Maria'),(3,'Carla Oliveira','José Oliveira','Patrícia Oliveira','Rua C, 789','34567890123',20,'Sistemas de Informação','2023-01-12',3,'Prof. Carlos'),(4,'Daniel Lima','Fernando Lima','Cristina Lima','Rua D, 987','45678901287',21,'Engenharia de Software','2023-01-13',4,'Prof. Ana'),(5,'Eva Pereira','Roberto Pereira','Laura Pereira','Rua E, 321','56789982345',22,'Análise de Dados','2023-01-14',1,'Prof. João'),(6,'Felipe Santos','Maurício Santos','Camila Santos','Rua F, 654','63490123456',23,'Ciência da Computação','2023-01-15',2,'Prof. Maria'),(7,'Gabriel Costa','Luiz Costa','Sandra Costa','Rua G, 987','78908934567',24,'Análise de Sistemas','2023-01-16',3,'Prof. Carlos'),(8,'Helena Rocha','Antônio Rocha','Carolina Rocha','Rua H, 654','89096345678',25,'Sistemas de Informação','2023-01-17',4,'Prof. Ana'),(9,'Isaac Oliveira','Ricardo Oliveira','Fernanda Oliveira','Rua I, 321','90156456789',26,'Engenharia de Software','2023-01-18',1,'Prof. João'),(10,'Júlia Lima','Fábio Lima','Renata Lima','Rua J, 987','10987654321',27,'Análise de Dados','2023-01-19',2,'Prof. Maria'),(11,'Kauan Pereira','Alberto Pereira','Isabel Pereira','Rua K, 654','23456789088',28,'Ciência da Computação','2023-01-20',3,'Prof. Carlos'),(12,'Laura Santos','Eduardo Santos','Mariana Santos','Rua L, 321','34567893333',19,'Engenharia de Dados','2023-01-21',4,'Prof. Ana'),(13,'Mateus Oliveira','Paulo Oliveira','Beatriz Oliveira','Rua M, 987','45678901234',20,'Sistemas de Informação','2023-01-22',1,'Prof. João'),(14,'Nina Costa','Sérgio Costa','Tatiane Costa','Rua N, 654','56789012345',21,'Engenharia de Software','2023-01-23',2,'Prof. Maria'),(15,'Otávio Rocha','Marcelo Rocha','Juliana Rocha','Rua O, 321','67890123456',22,'Análise de Dados','2023-01-24',3,'Prof. Carlos'),(16,'Pedro Oliveira','Antônio Oliveira','Fernanda Oliveira','Rua P, 987','78901234567',24,'Ciência da Computação','2023-01-25',4,'Prof. Ana'),(17,'Quiteria Lima','Ricardo Lima','Luciana Lima','Rua Q, 654','89012345678',24,'Análise de Sistemas','2023-01-26',1,'Prof. João'),(18,'Rafaela Santos','João Santos','Aline Santos','Rua R, 321','90123456789',25,'Sistemas de Informação','2023-01-27',2,'Prof. Maria'),(19,'Samuel Oliveira','Roberto Oliveira','Gisele Oliveira','Rua S, 987','90123456780',26,'Engenharia de Software','2023-01-28',3,'Prof. Carlos'),(20,'Tatiane Pereira','Luiz Pereira','Elaine Pereira','Rua T, 654','89012345670',27,'Análise de Dados','2023-01-29',4,'Prof. Ana');
/*!40000 ALTER TABLE `alunos` ENABLE KEYS */;
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
