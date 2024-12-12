-- MySQL dump 10.13  Distrib 8.0.39, for Linux (armv7l)
--
-- Host: localhost    Database: qortex_test
-- ------------------------------------------------------
-- Server version	8.0.39-0ubuntu0.20.04.1

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
-- Table structure for table `album_song`
--

DROP TABLE IF EXISTS `album_song`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `album_song` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `album_id` bigint unsigned NOT NULL,
  `song_id` bigint unsigned NOT NULL,
  `track_num` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=227 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album_song`
--

LOCK TABLES `album_song` WRITE;
/*!40000 ALTER TABLE `album_song` DISABLE KEYS */;
INSERT INTO `album_song` VALUES (1,1,1,1,NULL,NULL),(2,1,2,2,NULL,NULL),(3,1,3,3,NULL,NULL),(4,4,3,3,NULL,NULL),(5,1,4,4,NULL,NULL),(6,3,4,4,NULL,NULL),(7,1,5,5,NULL,NULL),(8,1,6,6,NULL,NULL),(9,1,7,7,NULL,NULL),(10,3,7,5,NULL,NULL),(11,4,7,6,NULL,NULL),(12,1,8,8,NULL,NULL),(13,1,9,9,NULL,NULL),(14,1,10,10,NULL,NULL),(15,2,11,1,NULL,NULL),(16,3,11,6,NULL,NULL),(17,2,12,2,NULL,NULL),(18,2,13,3,NULL,NULL),(19,2,14,4,NULL,NULL),(20,2,15,5,NULL,NULL),(21,2,16,6,NULL,NULL),(22,2,17,7,NULL,NULL),(23,3,18,1,NULL,NULL),(24,4,18,8,NULL,NULL),(25,3,19,2,NULL,NULL),(26,3,20,3,NULL,NULL),(27,3,21,7,NULL,NULL),(28,3,22,8,NULL,NULL),(29,4,23,1,NULL,NULL),(30,4,24,2,NULL,NULL),(31,4,25,4,NULL,NULL),(32,4,26,5,NULL,NULL),(33,4,27,7,NULL,NULL),(34,4,28,9,NULL,NULL),(35,4,29,10,NULL,NULL),(36,4,30,11,NULL,NULL),(37,5,31,1,NULL,NULL),(38,5,32,2,NULL,NULL),(39,5,33,3,NULL,NULL),(40,5,34,4,NULL,NULL),(41,6,34,5,NULL,NULL),(42,5,35,5,NULL,NULL),(43,7,35,7,NULL,NULL),(44,8,35,11,NULL,NULL),(45,5,36,6,NULL,NULL),(46,5,37,7,NULL,NULL),(47,5,38,8,NULL,NULL),(48,6,39,1,NULL,NULL),(49,6,40,2,NULL,NULL),(50,6,41,3,NULL,NULL),(51,6,42,4,NULL,NULL),(52,8,42,6,NULL,NULL),(53,6,43,6,NULL,NULL),(54,6,44,7,NULL,NULL),(55,8,44,14,NULL,NULL),(56,6,45,8,NULL,NULL),(57,6,46,9,NULL,NULL),(58,7,47,1,NULL,NULL),(59,7,48,2,NULL,NULL),(60,7,49,3,NULL,NULL),(61,7,50,4,NULL,NULL),(62,7,51,5,NULL,NULL),(63,7,52,6,NULL,NULL),(64,7,53,8,NULL,NULL),(65,8,53,9,NULL,NULL),(66,7,54,9,NULL,NULL),(67,7,55,10,NULL,NULL),(68,7,56,11,NULL,NULL),(69,7,57,12,NULL,NULL),(70,7,58,13,NULL,NULL),(71,8,59,1,NULL,NULL),(72,8,60,2,NULL,NULL),(73,8,61,3,NULL,NULL),(74,8,62,4,NULL,NULL),(75,8,63,5,NULL,NULL),(76,8,64,7,NULL,NULL),(77,8,65,8,NULL,NULL),(78,8,66,10,NULL,NULL),(79,8,67,12,NULL,NULL),(80,8,68,13,NULL,NULL),(81,9,69,1,NULL,NULL),(82,9,70,2,NULL,NULL),(83,9,71,3,NULL,NULL),(84,9,72,4,NULL,NULL),(85,12,72,8,NULL,NULL),(86,9,73,5,NULL,NULL),(87,9,74,6,NULL,NULL),(88,9,75,7,NULL,NULL),(89,10,75,4,NULL,NULL),(90,11,75,6,NULL,NULL),(91,9,76,8,NULL,NULL),(92,9,77,9,NULL,NULL),(93,9,78,10,NULL,NULL),(94,9,79,11,NULL,NULL),(95,11,79,8,NULL,NULL),(96,9,80,12,NULL,NULL),(97,9,81,13,NULL,NULL),(98,10,82,1,NULL,NULL),(99,10,83,2,NULL,NULL),(100,10,84,3,NULL,NULL),(101,10,85,5,NULL,NULL),(102,11,85,10,NULL,NULL),(103,10,86,6,NULL,NULL),(104,11,86,9,NULL,NULL),(105,10,87,7,NULL,NULL),(106,12,87,14,NULL,NULL),(107,10,88,8,NULL,NULL),(108,11,88,12,NULL,NULL),(109,10,89,9,NULL,NULL),(110,12,89,5,NULL,NULL),(111,10,90,10,NULL,NULL),(112,12,90,15,NULL,NULL),(113,10,91,11,NULL,NULL),(114,12,91,10,NULL,NULL),(115,11,91,12,NULL,NULL),(116,10,92,12,NULL,NULL),(117,10,93,13,NULL,NULL),(118,10,94,14,NULL,NULL),(119,10,95,15,NULL,NULL),(120,10,96,16,NULL,NULL),(121,10,97,17,NULL,NULL),(122,11,98,1,NULL,NULL),(123,11,99,2,NULL,NULL),(124,11,100,3,NULL,NULL),(125,12,100,17,NULL,NULL),(126,11,101,4,NULL,NULL),(127,11,102,5,NULL,NULL),(128,11,103,7,NULL,NULL),(129,12,103,7,NULL,NULL),(130,11,104,11,NULL,NULL),(131,12,105,1,NULL,NULL),(132,12,106,2,NULL,NULL),(133,12,107,3,NULL,NULL),(134,12,108,4,NULL,NULL),(135,12,109,6,NULL,NULL),(136,12,110,9,NULL,NULL),(137,12,111,11,NULL,NULL),(138,12,112,12,NULL,NULL),(139,12,113,13,NULL,NULL),(140,12,114,16,NULL,NULL),(141,13,115,1,NULL,NULL),(142,13,116,2,NULL,NULL),(143,13,117,3,NULL,NULL),(144,16,117,6,NULL,NULL),(145,13,118,4,NULL,NULL),(146,13,119,5,NULL,NULL),(147,16,119,12,NULL,NULL),(148,13,120,6,NULL,NULL),(149,16,120,5,NULL,NULL),(150,13,121,7,NULL,NULL),(151,13,122,8,NULL,NULL),(152,13,123,9,NULL,NULL),(153,15,123,15,NULL,NULL),(154,13,124,10,NULL,NULL),(155,16,124,13,NULL,NULL),(156,13,125,11,NULL,NULL),(157,13,126,12,NULL,NULL),(158,13,127,13,NULL,NULL),(159,13,128,14,NULL,NULL),(160,13,129,15,NULL,NULL),(161,13,130,16,NULL,NULL),(162,13,131,17,NULL,NULL),(163,13,132,18,NULL,NULL),(164,16,132,11,NULL,NULL),(165,13,133,19,NULL,NULL),(166,16,133,23,NULL,NULL),(167,13,134,20,NULL,NULL),(168,14,135,1,NULL,NULL),(169,14,136,2,NULL,NULL),(170,14,137,3,NULL,NULL),(171,14,138,4,NULL,NULL),(172,14,139,5,NULL,NULL),(173,14,140,6,NULL,NULL),(174,14,141,7,NULL,NULL),(175,14,142,8,NULL,NULL),(176,14,143,9,NULL,NULL),(177,14,144,10,NULL,NULL),(178,16,144,17,NULL,NULL),(179,14,145,11,NULL,NULL),(180,14,146,12,NULL,NULL),(181,15,146,16,NULL,NULL),(182,14,147,13,NULL,NULL),(183,14,148,14,NULL,NULL),(184,14,149,15,NULL,NULL),(185,14,150,16,NULL,NULL),(186,14,151,17,NULL,NULL),(187,14,152,18,NULL,NULL),(188,15,153,1,NULL,NULL),(189,15,154,2,NULL,NULL),(190,15,155,3,NULL,NULL),(191,15,156,4,NULL,NULL),(192,15,157,5,NULL,NULL),(193,15,158,6,NULL,NULL),(194,15,159,7,NULL,NULL),(195,15,160,8,NULL,NULL),(196,15,161,9,NULL,NULL),(197,15,162,10,NULL,NULL),(198,15,163,11,NULL,NULL),(199,15,164,12,NULL,NULL),(200,16,164,14,NULL,NULL),(201,15,165,13,NULL,NULL),(202,15,166,14,NULL,NULL),(203,15,167,17,NULL,NULL),(204,16,168,1,NULL,NULL),(205,16,169,2,NULL,NULL),(206,16,170,3,NULL,NULL),(207,16,171,4,NULL,NULL),(208,16,172,7,NULL,NULL),(209,16,173,8,NULL,NULL),(210,16,174,9,NULL,NULL),(211,16,175,10,NULL,NULL),(212,16,176,15,NULL,NULL),(213,16,177,16,NULL,NULL),(214,16,178,18,NULL,NULL),(215,16,179,19,NULL,NULL),(216,16,180,20,NULL,NULL),(217,16,181,21,NULL,NULL),(218,16,182,22,NULL,NULL),(219,17,183,1,NULL,NULL),(220,17,184,2,NULL,NULL),(221,17,185,3,NULL,NULL),(222,18,186,1,NULL,NULL),(223,18,187,2,NULL,NULL),(224,18,188,3,NULL,NULL),(225,18,189,4,NULL,NULL),(226,18,183,5,NULL,NULL);
/*!40000 ALTER TABLE `album_song` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `albums`
--

DROP TABLE IF EXISTS `albums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `albums` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` bigint unsigned NOT NULL,
  `artist_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `albums`
--

LOCK TABLES `albums` WRITE;
/*!40000 ALTER TABLE `albums` DISABLE KEYS */;
INSERT INTO `albums` VALUES (1,'45',1982,1,NULL,NULL,NULL),(2,'Начальник камчатки',1984,1,NULL,NULL,NULL),(3,'Ночь',1986,1,NULL,NULL,NULL),(4,'Это не любовь',1985,1,NULL,NULL,NULL),(5,'Let It Be',1970,2,NULL,NULL,NULL),(6,'Hey Jude',1970,2,NULL,NULL,NULL),(7,'Abbey Road',1969,2,NULL,NULL,NULL),(8,'Yellow Submarine',1969,2,NULL,NULL,NULL),(9,'Playing the Angel',2005,3,NULL,NULL,NULL),(10,'Exciter',2001,3,NULL,NULL,NULL),(11,'The Singles 86 - 98',1998,3,NULL,NULL,NULL),(12,'Ultra',1997,3,NULL,NULL,NULL),(13,'Субботним вечером в Свердловске',1986,4,NULL,NULL,NULL),(14,'Не беда',1990,4,NULL,NULL,NULL),(15,'Четвёртый стул',1991,4,NULL,NULL,NULL),(16,'Давай вернёмся',1992,4,NULL,NULL,NULL),(17,'Альбом1',1999,8,'2024-11-29 17:49:39','2024-11-29 17:49:39',NULL),(18,'Альбом2',2003,8,'2024-11-29 17:49:39','2024-11-29 17:49:39',NULL),(19,'Альбом новый ',2024,8,'2024-11-29 17:49:39','2024-11-29 17:49:39',NULL),(20,'Баста 3',2010,5,NULL,NULL,NULL),(21,'Trench',2018,6,NULL,NULL,NULL),(22,'That’s the Spirit',2015,7,NULL,NULL,NULL);
/*!40000 ALTER TABLE `albums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artists`
--

DROP TABLE IF EXISTS `artists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artists`
--

LOCK TABLES `artists` WRITE;
/*!40000 ALTER TABLE `artists` DISABLE KEYS */;
INSERT INTO `artists` VALUES (1,'Кино',NULL,NULL,NULL),(2,'The Beatles',NULL,NULL,NULL),(3,'Depeche Mode',NULL,NULL,NULL),(4,'ЧайФ',NULL,NULL,NULL),(5,'Баста','2024-11-28 18:47:23','2024-11-28 18:47:23',NULL),(6,'Twenty one pilots','2024-11-28 18:47:42','2024-11-28 18:47:42',NULL),(7,'Bring Me the Horizon','2024-11-28 18:48:28','2024-11-28 18:48:28',NULL),(8,'Певец','2024-11-29 17:49:39','2024-11-29 17:49:39',NULL);
/*!40000 ALTER TABLE `artists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `songs`
--

DROP TABLE IF EXISTS `songs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `songs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=190 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `songs`
--

LOCK TABLES `songs` WRITE;
/*!40000 ALTER TABLE `songs` DISABLE KEYS */;
INSERT INTO `songs` VALUES (1,'Время есть, а денег нет',NULL,NULL,NULL),(2,'Просто хочешь ты знать',NULL,NULL,NULL),(3,'Алюминиевые огурцы',NULL,NULL,NULL),(4,'Танец',NULL,NULL,NULL),(5,'Солнечные дни',NULL,NULL,NULL),(6,'Бездельник #1',NULL,NULL,NULL),(7,'Бездельник #2',NULL,NULL,NULL),(8,'Электричка',NULL,NULL,NULL),(9,'Восьмиклассница',NULL,NULL,NULL),(10,'Мои друзья',NULL,NULL,NULL),(11,'Последний герой',NULL,NULL,NULL),(12,'Каждую ночь',NULL,NULL,NULL),(13,'Транквилизатор',NULL,NULL,NULL),(14,'Сюжет',NULL,NULL,NULL),(15,'Гость',NULL,NULL,NULL),(16,'Камчатка',NULL,NULL,NULL),(17,'Троллейбус',NULL,NULL,NULL),(18,'Видели ночь',NULL,NULL,NULL),(19,'Фильмы',NULL,NULL,NULL),(20,'Твой номер',NULL,NULL,NULL),(21,'Жизнь в стёклах',NULL,NULL,NULL),(22,'Анархия',NULL,NULL,NULL),(23,'Это не любовь',NULL,NULL,NULL),(24,'Весна',NULL,NULL,NULL),(25,'Город',NULL,NULL,NULL),(26,'Это - любовь',NULL,NULL,NULL),(27,'Я объявляю свой дом',NULL,NULL,NULL),(28,'Саша',NULL,NULL,NULL),(29,'Верь мне',NULL,NULL,NULL),(30,'Дети проходных дворов',NULL,NULL,NULL),(31,'Two Of Us',NULL,NULL,NULL),(32,'Dig A Pony',NULL,NULL,NULL),(33,'Across The Universe',NULL,NULL,NULL),(34,'I Me Mine',NULL,NULL,NULL),(35,'Here Comes The Sun',NULL,NULL,NULL),(36,'Dig It',NULL,NULL,NULL),(37,'Let It Be',NULL,NULL,NULL),(38,'Maggie May',NULL,NULL,NULL),(39,'Can\'t Buy Me Love',NULL,NULL,NULL),(40,'Paperback Writer',NULL,NULL,NULL),(41,'Rain',NULL,NULL,NULL),(42,'Back In The Ussr',NULL,NULL,NULL),(43,'Revolution',NULL,NULL,NULL),(44,'Martha My Dear',NULL,NULL,NULL),(45,'Hey Jude',NULL,NULL,NULL),(46,'Old Brown Shoe',NULL,NULL,NULL),(47,'Come Together',NULL,NULL,NULL),(48,'Something',NULL,NULL,NULL),(49,'Maxwell\'s Silver Hammer',NULL,NULL,NULL),(50,'Oh! Darling',NULL,NULL,NULL),(51,'Octopus\'s Garden',NULL,NULL,NULL),(52,'I Want You ( She\'s So Heavy)',NULL,NULL,NULL),(53,'Ob-La-Di Ob-La-Da',NULL,NULL,NULL),(54,'Because',NULL,NULL,NULL),(55,'You Never Give Me Your Money',NULL,NULL,NULL),(56,'Sun King',NULL,NULL,NULL),(57,'Mean Mr. Mustard',NULL,NULL,NULL),(58,'Polythene Pam',NULL,NULL,NULL),(59,'Yellow Submarine',NULL,NULL,NULL),(60,'Only A Northern Song',NULL,NULL,NULL),(61,'All Together Now',NULL,NULL,NULL),(62,'Hey Bulldog',NULL,NULL,NULL),(63,'It\'s All Too Much',NULL,NULL,NULL),(64,'Dear Prudence',NULL,NULL,NULL),(65,'Glass Onion',NULL,NULL,NULL),(66,'Wild Honey Pie',NULL,NULL,NULL),(67,'While My Guitar Gently Weeps',NULL,NULL,NULL),(68,'Happiness Is The Warm Gun',NULL,NULL,NULL),(69,'Goodnight Lovers',NULL,NULL,NULL),(70,'I Am You',NULL,NULL,NULL),(71,'Breathe',NULL,NULL,NULL),(72,'Condemnation',NULL,NULL,NULL),(73,'I Feel Loved',NULL,NULL,NULL),(74,'Comatose',NULL,NULL,NULL),(75,'Useless',NULL,NULL,NULL),(76,'Freelove',NULL,NULL,NULL),(77,'Dead Of Night',NULL,NULL,NULL),(78,'When The Body Speaks',NULL,NULL,NULL),(79,'The Sweetest Condition',NULL,NULL,NULL),(80,'Shine',NULL,NULL,NULL),(81,'Dream On',NULL,NULL,NULL),(82,'Everything Counts, Live',NULL,NULL,NULL),(83,'Little 15',NULL,NULL,NULL),(84,'Only When I Lose Myself',NULL,NULL,NULL),(85,'Home',NULL,NULL,NULL),(86,'It\'s No Good',NULL,NULL,NULL),(87,'Policy Of Truth',NULL,NULL,NULL),(88,'Barrel Of A Gun',NULL,NULL,NULL),(89,'In Your Room',NULL,NULL,NULL),(90,'Enjoy The Silence',NULL,NULL,NULL),(91,'Personal Jesus',NULL,NULL,NULL),(92,'Behind The Wheel',NULL,NULL,NULL),(93,'Never Let Me Down Again',NULL,NULL,NULL),(94,'Strangelove',NULL,NULL,NULL),(95,'A Question Of Time',NULL,NULL,NULL),(96,'A Question Of Lust',NULL,NULL,NULL),(97,'Stripped',NULL,NULL,NULL),(98,'Insight',NULL,NULL,NULL),(99,'The Bottom Line',NULL,NULL,NULL),(100,'Halo',NULL,NULL,NULL),(101,'Freestate',NULL,NULL,NULL),(102,'Sister Of Night',NULL,NULL,NULL),(103,'Mercy In You',NULL,NULL,NULL),(104,'The Love Thieves',NULL,NULL,NULL),(105,'Higher Love',NULL,NULL,NULL),(106,'One Caress',NULL,NULL,NULL),(107,'Rush',NULL,NULL,NULL),(108,'Get Right With Me',NULL,NULL,NULL),(109,'Judas',NULL,NULL,NULL),(110,'Walking In My Shoes',NULL,NULL,NULL),(111,'I Feel You',NULL,NULL,NULL),(112,'Clean',NULL,NULL,NULL),(113,'Blue Dress',NULL,NULL,NULL),(114,'Waiting For The Night',NULL,NULL,NULL),(115,'Волна простоты',NULL,NULL,NULL),(116,'Телефонный разговор',NULL,NULL,NULL),(117,'Я был солдатом',NULL,NULL,NULL),(118,'Камнепад',NULL,NULL,NULL),(119,'Завяжи мне глаза',NULL,NULL,NULL),(120,'Мне не хватает',NULL,NULL,NULL),(121,'Как жаль',NULL,NULL,NULL),(122,'Это',NULL,NULL,NULL),(123,'Как тебя зовут?',NULL,NULL,NULL),(124,'Мой блюз',NULL,NULL,NULL),(125,'Традиционная',NULL,NULL,NULL),(126,'Моя квартира',NULL,NULL,NULL),(127,'Дурные сны',NULL,NULL,NULL),(128,'Джинсовый фрак',NULL,NULL,NULL),(129,'Жизнь в розовом дыму',NULL,NULL,NULL),(130,'Гвадалахарский салон',NULL,NULL,NULL),(131,'Это',NULL,NULL,NULL),(132,'Квадратный вальс',NULL,NULL,NULL),(133,'Рок-н-ролл этой ночи',NULL,NULL,NULL),(134,'Блюз ночного дворника',NULL,NULL,NULL),(135,'Он сам',NULL,NULL,NULL),(136,'Реклама',NULL,NULL,NULL),(137,'Я правильный мальчик',NULL,NULL,NULL),(138,'Италия',NULL,NULL,NULL),(139,'Легенда о былых мужьях',NULL,NULL,NULL),(140,'Совет',NULL,NULL,NULL),(141,'Пиво',NULL,NULL,NULL),(142,'Ты сказала',NULL,NULL,NULL),(143,'Зинаида',NULL,NULL,NULL),(144,'Открытие',NULL,NULL,NULL),(145,'Шаляй-Валяй',NULL,NULL,NULL),(146,'Твои слова красивы',NULL,NULL,NULL),(147,'Четверть века',NULL,NULL,NULL),(148,'Белая ворона',NULL,NULL,NULL),(149,'Вольный ветер',NULL,NULL,NULL),(150,'Пилот Косяков',NULL,NULL,NULL),(151,'Балалайка-блюз',NULL,NULL,NULL),(152,'Вместе теплей',NULL,NULL,NULL),(153,'Rock\'n\'roll этой ночи',NULL,NULL,NULL),(154,'Rock\'n\'roll это я',NULL,NULL,NULL),(155,'Будильник',NULL,NULL,NULL),(156,'Если все будут делать то же…',NULL,NULL,NULL),(157,'Религия',NULL,NULL,NULL),(158,'Мама, мы все актеры этого театра',NULL,NULL,NULL),(159,'Кот (музыка — Владимир Бегунов)',NULL,NULL,NULL),(160,'Это',NULL,NULL,NULL),(161,'Дуля с маком (Исповедь металлиста)',NULL,NULL,NULL),(162,'Ошейник',NULL,NULL,NULL),(163,'В городе трех революций',NULL,NULL,NULL),(164,'С войны',NULL,NULL,NULL),(165,'Гады',NULL,NULL,NULL),(166,'Крепость',NULL,NULL,NULL),(167,'Не беда',NULL,NULL,NULL),(168,'Поплачь о нём',NULL,NULL,NULL),(169,'Ковбои',NULL,NULL,NULL),(170,'Утро прощай',NULL,NULL,NULL),(171,'Вчера была любовь',NULL,NULL,NULL),(172,'Всему своё время',NULL,NULL,NULL),(173,'Что такое зима',NULL,NULL,NULL),(174,'Неохота',NULL,NULL,NULL),(175,'Вперёд',NULL,NULL,NULL),(176,'Матрос',NULL,NULL,NULL),(177,'Оставь нам нашу любовь',NULL,NULL,NULL),(178,'Там, где нет ничего (Молодёжная)',NULL,NULL,NULL),(179,'Никто не услышит (Ой-йо)',NULL,NULL,NULL),(180,'По-другому не прожить (Псы)',NULL,NULL,NULL),(181,'Давай вернёмся (Про бухло)',NULL,NULL,NULL),(182,'Ты моя крепость',NULL,NULL,NULL),(183,'Песня о единице','2024-11-29 20:29:52','2024-11-29 20:29:52',NULL),(184,'  Мелодия для двойки','2024-11-29 20:29:52','2024-11-29 20:29:52',NULL),(185,' Тройка тоже норм','2024-11-29 20:29:52','2024-11-29 20:29:52',NULL),(186,'первая песня','2024-11-29 20:31:45','2024-11-29 20:31:45',NULL),(187,'вторая песня','2024-11-29 20:31:45','2024-11-29 20:31:45',NULL),(188,'третья песенка','2024-11-29 20:31:45','2024-11-29 20:31:45',NULL),(189,'  Четвёртая песня!','2024-11-29 20:31:45','2024-11-29 20:31:45',NULL);
/*!40000 ALTER TABLE `songs` ENABLE KEYS */;
UNLOCK TABLES;

-- Dump completed on 2024-12-03  1:04:44
