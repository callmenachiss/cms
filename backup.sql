-- MySQL dump 10.13  Distrib 9.3.0, for macos15.2 (arm64)
--
-- Host: localhost    Database: student_db
-- ------------------------------------------------------
-- Server version	9.3.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `confirm_password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (40,'nachi@gmail.com','nachi','laruppiah','Nachi@123','Nachi@123','callmenachis'),(41,'mass@example.com','hello','muralu','klehf','klehf','master'),(42,'mama@gmail.com',NULL,NULL,'Nach123',NULL,'mama'),(43,'hi@gmail.com',NULL,NULL,'nac',NULL,'hi'),(44,'bye@gmail.com',NULL,NULL,'bye',NULL,'bye'),(45,'kjhkjh',NULL,NULL,'kjhkj',NULL,'jfhka'),(46,'kjbhkj',NULL,NULL,'kjbgkj',NULL,'jmbnfk'),(47,'jbnk, v',NULL,NULL,'bhkjdbv',NULL,'nbbvsf'),(48,'kjahav',NULL,NULL,'l,hjfoq',NULL,'dkjwbf'),(49,'priya@gmail.com',NULL,NULL,'priya12','priya12','priya'),(50,'maza@gmail.com',NULL,NULL,'Nachi','Nachi','maaza'),(51,'hello@gmail.com',NULL,NULL,'Nachi@89730','Nachi@89730','hello'),(53,'netlify@gmail.com',NULL,NULL,'netlify','netlify','netlifys'),(54,'mayaa1@gmail.com',NULL,NULL,'mayaa1@123','mayaa1@123','mayaa'),(56,'maya11a1@gmail.com',NULL,NULL,'maya11a1@123','maya11a1@123','mayaa111'),(57,'work@gmail.com',NULL,NULL,'work@123','work@123','hardwork');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-17 13:18:59
