-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: transportmanagement
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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `username` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `user_img` blob,
  `caption` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`username`),
  UNIQUE KEY `password` (`password`),
  KEY `user_index` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('Alice','f5f75389bdbeddbbd70ac31c0245e42e',NULL,'User Image'),('Amit','f039eb446cc0bd7c5ad12b7a0e2a1dae',NULL,'User Image'),('Daniel','e7f84ff145ced31368756c41af7fef9c',NULL,'User Image'),('David','889211b122daa7f9f917d3d3b3475514',NULL,'User Image'),('Emily','f6244d2fc24ec05bedfbf7a84a42ddd4',NULL,'User Image'),('First_A','367ec700665670e8b07b6d10292ae521',NULL,'User Image'),('First_B','01e54c813479b1ee86c20875258307f8',NULL,'User Image'),('First_C','c8091c1f0ba01ee8f40bff623e97cf23',NULL,'User Image'),('First_D','3af97df0f613f6cf48e680e21a301710',NULL,'User Image'),('First_E','545269de19e5b868282731db913b3983',NULL,'User Image'),('First_F','25eb68f5bcc2a69681938078e949fe67',NULL,'User Image'),('First_G','0b97c298a0294bb79f699d214c6ac60f',NULL,'User Image'),('First_H','6a7872e18226d4e68ecada00e8016504',NULL,'User Image'),('First_I','12f55726019b4032d8f30333d3d2905b',NULL,'User Image'),('First_J','8cf527de4f1df1d846c21306c4940505',NULL,'User Image'),('Jessica','3bbd1873056226d83e6371a24d340340',NULL,'User Image'),('John','6d40e095b7f43848dc76ec017592da29',NULL,'User Image'),('Michael','fdec10f5e0fc93e0dadc8c53b9802623',NULL,'User Image'),('Olivia','6fe76ed19c9386c1389512a53aaaa6c6',NULL,'User Image'),('Sophia','4d4cc5ce3071ce7dbb117a1e5503a3be',NULL,'User Image'),('Staff_First_A','64365f17a60f009dace98a55177331ba',NULL,'User Image'),('Staff_First_AB','a9aa1268b3c1c41e15aeb9589edc0712',NULL,'User Image'),('Staff_First_B','c2e0aebc715af5ce90b185082d889bb0',NULL,'User Image'),('Staff_First_C','ab7f1d4ce9960a536ec233eee7be3582',NULL,'User Image'),('Staff_First_D','440c0936f5ce7799b5a32e2641b05c9e',NULL,'User Image'),('Staff_First_E','98eb08ac1f206f59523e0f0a02efb1d7',NULL,'User Image'),('Staff_First_F','21dff12bd6309650b5d18d93568e0cb4',NULL,'User Image'),('Staff_First_G','35ebf7c30ba8da21673d9ee3e2bcbf14',NULL,'User Image'),('Staff_First_H','d5c701967461252c7d8bb7eb46c282e6',NULL,'User Image'),('Staff_First_I','a0b2f51cd7a0d42913a5561c54d6a054',NULL,'User Image'),('Staff_First_J','5b81ad3b25619c80c146ca3004ee7768',NULL,'User Image'),('Stu_First_A','5bdec017e346a5bd66afd86ac5660a2f',NULL,'User Image'),('Stu_First_B','24821e985bef7c1cc3b2d56015ce3a04',NULL,'User Image'),('Stu_First_C','465b8c625857dcf1b0d48522d4c61c8e',NULL,'User Image'),('Stu_First_D','f55d8eaba2eb7e006217e529d088f69b',NULL,'User Image'),('Stu_First_E','f2311c94bf51464419074d87d89b094c',NULL,'User Image'),('Stu_First_F','17aad745de99a367103c3bcd84c30527',NULL,'User Image'),('Stu_First_G','837833171fdb562e0811471c91950359',NULL,'User Image'),('Stu_First_H','f75cd39aa25d44ef38b693270baadbcd',NULL,'User Image'),('Stu_First_I','90f22438ba81255d0ae3fd0e025a6e9a',NULL,'User Image'),('Stu_First_J','8aec9969ca3e8503372144375b493d59',NULL,'User Image');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-16 23:27:03
