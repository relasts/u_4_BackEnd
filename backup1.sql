-- MariaDB dump 10.19  Distrib 10.6.16-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: u67400
-- ------------------------------------------------------
-- Server version	10.6.16-MariaDB-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `form_data`
--

DROP TABLE IF EXISTS `form_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_data` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fio` varchar(255) NOT NULL DEFAULT '',
  `number` varchar(11) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `date` bigint(20) NOT NULL,
  `radio` varchar(6) NOT NULL DEFAULT '',
  `bio` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_data`
--

LOCK TABLES `form_data` WRITE;
/*!40000 ALTER TABLE `form_data` DISABLE KEYS */;
INSERT INTO `form_data` VALUES (1,'Cfg  FFYV vgtyu','79181234567','lomart.vla@gmail.com',1230508800,'M',' GHVu uguvuv uugtvuyf yviyv ',0),(2,'Cfg  FFYV vgtyu','79181234567','lomart.vla@gmail.com',1453593600,'M',' HYF ytft yr fv7td ',0),(3,'dfsdf sfdsd wefwf','79829827839','poge@kubsu-dev.ru',1095465600,'M',' sgfdgdsgfdgdsfdbfgdfsgd fdssdfdds sdfsdfs',0),(4,'Стась СТась СтаСЬ','89642374329','dfhs@dgsfa.cgg',1083283200,'W',' fdddsg    ',2),(5,'Стась СТась СтаСЬ','89642374329','dfhs@dgsfa.cgg',1083283200,'W',' fdddsg    ',3),(6,'Стась СТась СтаСЬ','89642374329','dfhs@dgsfa.cgg',1083283200,'W',' fdddsg    ',4),(7,'Стась СТась СтаСЬ','89642374329','dfhs@dgsfa.cgg',1083283200,'M',' fdddsg    ыыыыыыыыыыыыыыыыыыыыыыыыыы',5),(8,'Лывд фывв вмывм','89645854224','asfvs@dsv.csf',990316800,'M','sadva',6),(9,'авыввыаы фыаым','89642374329','sdfsvfd@fvdsd.dafdsv',1019260800,'M','     adxzc ',0),(10,'авыввыаы фыаым','89642374329','sdfsvfd@fvdsd.dafdsv',1019260800,'M','     adxzc ',0);
/*!40000 ALTER TABLE `form_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_data_lang`
--

DROP TABLE IF EXISTS `form_data_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_data_lang` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_form` int(10) NOT NULL,
  `id_lang` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_data_lang`
--

LOCK TABLES `form_data_lang` WRITE;
/*!40000 ALTER TABLE `form_data_lang` DISABLE KEYS */;
INSERT INTO `form_data_lang` VALUES (1,1,1),(2,2,1),(3,3,4),(4,3,6),(5,3,10),(6,4,4),(7,5,3),(8,5,4),(9,5,6),(10,6,3),(11,6,4),(12,6,6),(14,7,7),(15,8,3),(16,8,8),(17,8,9),(18,9,8),(19,10,8);
/*!40000 ALTER TABLE `form_data_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `languages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'Pascal'),(2,'Python'),(3,'C'),(4,'C++'),(5,'PHP'),(6,'JavaScript'),(7,'Java'),(8,'Haskel'),(9,'Clojure'),(10,'Scala');
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(30) NOT NULL DEFAULT 'user',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'663a92ad8d47e','efe02553e8a5a42e478f18ccf3d4bd27','user'),(2,'663a94e414f5b','2067bd4bb3d01ce9d794165b59ed3ed7','user'),(3,'663a95c473cc2','9a23be8f81671e3960fbd231b2d491ef','user'),(4,'663a97eb75466','6d6837e091da5c38790ea4c4a4b12106','user'),(5,'663a98a81ea82','de34459e627aeae85431e9d950a83944','user'),(6,'663d32d6e1c10','158e48d80f2df3b43fae3f45caa77188','user');
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

-- Dump completed on 2024-05-13 17:38:45
