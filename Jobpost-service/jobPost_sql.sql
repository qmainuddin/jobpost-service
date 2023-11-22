CREATE DATABASE  IF NOT EXISTS `job-post` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `job-post`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: job-post
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `job_post`
--

DROP TABLE IF EXISTS `job_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_post` (
  `is_published` bit(1) NOT NULL,
  `job_type` tinyint NOT NULL,
  `status` tinyint DEFAULT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `last_modified_date` datetime(6) NOT NULL,
  `user_id` bigint NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_post`
--

LOCK TABLES `job_post` WRITE;
/*!40000 ALTER TABLE `job_post` DISABLE KEYS */;
INSERT INTO `job_post` VALUES (_binary '',1,NULL,'2023-11-22 17:20:00.000000',1,'2023-11-22 17:20:00.000000',1,'Fairfield','Google','Software Engineer','Iowa','United States','Software Engineer'),(_binary '\0',1,NULL,'2023-11-22 17:21:00.000000',2,'2023-11-22 17:21:00.000000',1,'New York','Apple','Product Designer','New York','United States','Product Designer'),(_binary '',2,NULL,'2023-11-22 17:22:00.000000',3,'2023-11-22 17:22:00.000000',1,'San Francisco','Meta','Data Scientist','California','United States','Data Scientist'),(_binary '\0',3,NULL,'2023-11-22 17:23:00.000000',4,'2023-11-22 17:23:00.000000',1,'Seattle','Amazon','Marketing Manager','Washington','United States','Marketing Manager'),(_binary '',1,NULL,'2023-11-22 17:24:00.000000',5,'2023-11-22 17:24:00.000000',1,'Austin','Netflix','Software Engineer','Texas','United States','Software Engineer');
/*!40000 ALTER TABLE `job_post` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-22 17:22:52
