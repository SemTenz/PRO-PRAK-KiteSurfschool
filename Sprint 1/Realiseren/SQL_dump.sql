-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: kitesurfschool
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_reset_tokens_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2024_03_18_145149_create_products_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Priveles 2.5 uur','Poep aan een stokje',175.00,'product1.png','2024-03-18 14:08:28','2024-03-18 14:08:28'),(2,'1 Dagdeel','Lorem ipsum dolor sit amet, consectetur adipiscing elit.',75.00,'product2.png','2024-03-18 14:08:28','2024-03-18 14:08:28'),(3,'3 Dagdelen','Lorem ipsum dolor sit amet, consectetur adipiscing elit.',100.00,'product3.png','2024-03-18 14:08:28','2024-03-18 14:08:28'),(4,'5 Dagdelen','Lorem ipsum dolor sit amet, consectetur adipiscing elit.',150.00,'product4.png','2024-03-18 14:08:28','2024-03-18 14:08:28');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usertype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Schuyler Pollich I','rondricka@example.net','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','reZMp2aA8X','2024-03-18 14:08:27','2024-03-18 14:08:27'),(2,'Claire Ebert','wbahringer@example.net','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','WSr1aV7k8m','2024-03-18 14:08:27','2024-03-18 14:08:27'),(3,'Dulce Swift','jacquelyn06@example.net','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','SjYVaTaIB9','2024-03-18 14:08:27','2024-03-18 14:08:27'),(4,'Rocky Strosin','ewunsch@example.com','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','pamwn8bG2M','2024-03-18 14:08:27','2024-03-18 14:08:27'),(5,'Dayana Nienow','reinger.price@example.com','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','kqde4dJQaA','2024-03-18 14:08:27','2024-03-18 14:08:27'),(6,'Raphael Hintz','tito.langosh@example.com','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','2xJSIESihl','2024-03-18 14:08:27','2024-03-18 14:08:27'),(7,'Rickie Ritchie','reichert.willa@example.org','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','TI1Ftjcvop','2024-03-18 14:08:27','2024-03-18 14:08:27'),(8,'Raymundo Hamill','santiago60@example.net','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','qV3hbtzMTh','2024-03-18 14:08:27','2024-03-18 14:08:27'),(9,'Dexter Hammes','pauer@example.com','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','b4lSOj2FRB','2024-03-18 14:08:27','2024-03-18 14:08:27'),(10,'Mr. Wilson Jacobi','pascale.kunze@example.net','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','krOICFgTxy','2024-03-18 14:08:27','2024-03-18 14:08:27'),(11,'Dr. Ted Jacobi Jr.','blair04@example.org','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','7e0yEDgc8s','2024-03-18 14:08:27','2024-03-18 14:08:27'),(12,'Ralph Lesch','mohammed.rosenbaum@example.com','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','JA8FaEcy1T','2024-03-18 14:08:27','2024-03-18 14:08:27'),(13,'Mac Haley Jr.','raleigh27@example.org','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','S3vVm2F7j7','2024-03-18 14:08:27','2024-03-18 14:08:27'),(14,'Marian Veum III','aboyer@example.net','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','2bckXN9KQC','2024-03-18 14:08:27','2024-03-18 14:08:27'),(15,'Valentina Brown','linda94@example.org','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','PG9nL8MgYw','2024-03-18 14:08:27','2024-03-18 14:08:27'),(16,'Aurelio Bode','sylvia.ortiz@example.net','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','HU3ewthd1w','2024-03-18 14:08:27','2024-03-18 14:08:27'),(17,'Dr. Haylee Kub DVM','edythe.okon@example.org','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','ktq7RYiYaT','2024-03-18 14:08:27','2024-03-18 14:08:27'),(18,'Alexane Williamson','cyundt@example.org','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','Ok3GfrcdaM','2024-03-18 14:08:27','2024-03-18 14:08:27'),(19,'Mr. Virgil Schinner II','jamie20@example.net','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','fC7oRtsGZF','2024-03-18 14:08:27','2024-03-18 14:08:27'),(20,'Mrs. Edythe Swift','vincenza.marvin@example.com','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','DX1ekV2Rvg','2024-03-18 14:08:27','2024-03-18 14:08:27'),(21,'Prof. Taurean Abbott','kuvalis.godfrey@example.com','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','Mk55I15Cia','2024-03-18 14:08:27','2024-03-18 14:08:27'),(22,'Moses Wisoky V','alivia50@example.org','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','DNHE1uSgfL','2024-03-18 14:08:27','2024-03-18 14:08:27'),(23,'Lesley Deckow','ayla.crooks@example.com','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','ud4sOyWxfx','2024-03-18 14:08:27','2024-03-18 14:08:27'),(24,'Fannie Huel','dock26@example.net','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','mKWtpay667','2024-03-18 14:08:27','2024-03-18 14:08:27'),(25,'Prof. Zachariah Buckridge','hayden.smith@example.com','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','A4eFHXAPJ1','2024-03-18 14:08:27','2024-03-18 14:08:27'),(26,'Jayde Lindgren PhD','tanya32@example.com','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','0nPjuFTlx1','2024-03-18 14:08:27','2024-03-18 14:08:27'),(27,'Mr. Ulices Pagac II','rwitting@example.com','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','6kIcw3f2dd','2024-03-18 14:08:27','2024-03-18 14:08:27'),(28,'Noelia Ward MD','melvina.weissnat@example.org','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','iUP6byPKtR','2024-03-18 14:08:27','2024-03-18 14:08:27'),(29,'Leland Wiegand','evie01@example.org','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','bVOGDBr4i8','2024-03-18 14:08:27','2024-03-18 14:08:27'),(30,'Vince Prohaska','smith.brody@example.net','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','yIgQJI75fl','2024-03-18 14:08:27','2024-03-18 14:08:27'),(31,'Dr. Destini Johns','odonnelly@example.com','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','ovMD3Cps0z','2024-03-18 14:08:27','2024-03-18 14:08:27'),(32,'Eda Kilback','oconnell.hal@example.org','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','9avb5FCWlS','2024-03-18 14:08:27','2024-03-18 14:08:27'),(33,'Prof. Marquis Gorczany','alec78@example.net','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','mcSq1xnki7','2024-03-18 14:08:27','2024-03-18 14:08:27'),(34,'Virginia Towne','roger.haley@example.org','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','2nywWINYVP','2024-03-18 14:08:27','2024-03-18 14:08:27'),(35,'Leatha Dietrich','daugherty.malika@example.org','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','gUij56HtSc','2024-03-18 14:08:27','2024-03-18 14:08:27'),(36,'Emmy Ernser DVM','norris.schaden@example.net','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','2Zulu9QCfn','2024-03-18 14:08:27','2024-03-18 14:08:27'),(37,'Marjorie Wiza','aheathcote@example.org','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','H9Mmaeiu2F','2024-03-18 14:08:27','2024-03-18 14:08:27'),(38,'Dr. Jamaal Flatley','prosacco.maribel@example.com','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','o9JlgcD5L7','2024-03-18 14:08:27','2024-03-18 14:08:27'),(39,'Miss Roma Muller','cordia.connelly@example.org','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','xZ7AtTETxs','2024-03-18 14:08:27','2024-03-18 14:08:27'),(40,'Ms. Isabella Purdy','jarrell.west@example.net','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','c0OskTo4NT','2024-03-18 14:08:27','2024-03-18 14:08:27'),(41,'Therese Howe','arutherford@example.org','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','ECrLqq9Plc','2024-03-18 14:08:27','2024-03-18 14:08:27'),(42,'Jo Feest I','susan.hammes@example.com','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','o7LrEDfiuF','2024-03-18 14:08:27','2024-03-18 14:08:27'),(43,'Sophia Senger','bertram58@example.com','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','MR6pcDW8vm','2024-03-18 14:08:27','2024-03-18 14:08:27'),(44,'Kellie Carroll','gabriel05@example.net','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','YBpa4LZZua','2024-03-18 14:08:27','2024-03-18 14:08:27'),(45,'Ivory Doyle','lind.enola@example.com','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','4aEAws4hS3','2024-03-18 14:08:27','2024-03-18 14:08:27'),(46,'Prof. Xzavier Kohler','nolson@example.org','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','hJKvciJAvV','2024-03-18 14:08:27','2024-03-18 14:08:27'),(47,'Dr. Serenity Lockman','borer.mozelle@example.com','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','TdOSEiKkXe','2024-03-18 14:08:27','2024-03-18 14:08:27'),(48,'Vena Schumm','madison44@example.net','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','1mZCJjwnd4','2024-03-18 14:08:27','2024-03-18 14:08:27'),(49,'Oscar Hudson','nbode@example.net','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','B7EU5L4odE','2024-03-18 14:08:27','2024-03-18 14:08:27'),(50,'Bernhard Lemke','tianna.kemmer@example.org','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','GUdAbW3q67','2024-03-18 14:08:27','2024-03-18 14:08:27'),(51,'Kendrick Cole','rweissnat@example.net','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','D7nJXv5feP','2024-03-18 14:08:27','2024-03-18 14:08:27'),(52,'Prof. Eric Franecki','xklocko@example.org','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','v0AkStQNVU','2024-03-18 14:08:27','2024-03-18 14:08:27'),(53,'Danny Langworth','aletha80@example.org','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','ypdKgsANGc','2024-03-18 14:08:27','2024-03-18 14:08:27'),(54,'Lou Waters','aurore82@example.net','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','frUvOKhZKX','2024-03-18 14:08:27','2024-03-18 14:08:27'),(55,'Carmen Lang','ruecker.baby@example.net','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','hzuPhr96eL','2024-03-18 14:08:27','2024-03-18 14:08:27'),(56,'Herminio Reichert','mollie27@example.net','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','qnpVqWpsnV','2024-03-18 14:08:27','2024-03-18 14:08:27'),(57,'Alessandro D\'Amore','jeramie.stroman@example.org','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','rSulQ7AAvD','2024-03-18 14:08:27','2024-03-18 14:08:27'),(58,'Cathrine Morar','lakin.tomasa@example.com','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','InTbd2egXd','2024-03-18 14:08:27','2024-03-18 14:08:27'),(59,'Jonathan Fisher','isaac.deckow@example.org','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','bcRjWFfR0W','2024-03-18 14:08:27','2024-03-18 14:08:27'),(60,'Mr. Kay Robel','sawayn.katelyn@example.net','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','2l8edm1Gf0','2024-03-18 14:08:27','2024-03-18 14:08:27'),(61,'Cristobal Emmerich','zieme.fleta@example.com','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','GFNpa1qjt8','2024-03-18 14:08:27','2024-03-18 14:08:27'),(62,'Edward Wilderman','schmitt.kavon@example.org','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','tz0qDB30C0','2024-03-18 14:08:27','2024-03-18 14:08:27'),(63,'Miss Wendy Waters','quigley.athena@example.net','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','JtR8acBg1d','2024-03-18 14:08:27','2024-03-18 14:08:27'),(64,'Dr. Santa Bernier III','lilyan03@example.org','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','sDqrp5oFYj','2024-03-18 14:08:27','2024-03-18 14:08:27'),(65,'Alejandra Raynor','uriel82@example.net','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','hb017xiLfI','2024-03-18 14:08:27','2024-03-18 14:08:27'),(66,'Mrs. Katarina Casper','denesik.jo@example.net','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','8WazGwYES0','2024-03-18 14:08:27','2024-03-18 14:08:27'),(67,'Alyson Farrell II','von.reina@example.net','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','ny1nhQjtgu','2024-03-18 14:08:27','2024-03-18 14:08:27'),(68,'Deon Gibson DDS','knader@example.net','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','98PUzdRoXW','2024-03-18 14:08:27','2024-03-18 14:08:27'),(69,'Jarrell Jast','nels.cormier@example.com','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','iT9IdiXOa2','2024-03-18 14:08:27','2024-03-18 14:08:27'),(70,'Lavern Ratke','hmosciski@example.com','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','mic8IWZnC9','2024-03-18 14:08:27','2024-03-18 14:08:27'),(71,'Lukas Tromp','kautzer.zena@example.com','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','Y4S8VCY0xg','2024-03-18 14:08:27','2024-03-18 14:08:27'),(72,'Consuelo Crist','hortense77@example.org','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','XYHrnemAOn','2024-03-18 14:08:27','2024-03-18 14:08:27'),(73,'Dr. Arthur Glover III','justine80@example.com','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','XgIJ9bCTFE','2024-03-18 14:08:27','2024-03-18 14:08:27'),(74,'Miss Daniela Price I','jaiden.wisoky@example.org','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','LwnqUa7c1D','2024-03-18 14:08:27','2024-03-18 14:08:27'),(75,'Hope Homenick','ybradtke@example.net','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','5VbxN4dTgB','2024-03-18 14:08:27','2024-03-18 14:08:27'),(76,'Serenity Bartell','asporer@example.com','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','OBqxdo8zpx','2024-03-18 14:08:27','2024-03-18 14:08:27'),(77,'Miss Rosalyn Murray','lonnie.lesch@example.com','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','AzgfXBaj5Z','2024-03-18 14:08:27','2024-03-18 14:08:27'),(78,'Miss Adrianna Jenkins Jr.','iwindler@example.com','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','jC9371jTf5','2024-03-18 14:08:27','2024-03-18 14:08:27'),(79,'Dina Sipes','stewart.crooks@example.org','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','SbhSDwvYoh','2024-03-18 14:08:27','2024-03-18 14:08:27'),(80,'Giuseppe Bauch','theresia70@example.org','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','zc8rMuwvhS','2024-03-18 14:08:27','2024-03-18 14:08:27'),(81,'Alisha Gislason','colten.king@example.net','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','JkE6gD0FA8','2024-03-18 14:08:27','2024-03-18 14:08:27'),(82,'Aileen Kohler','jaskolski.raina@example.org','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','BkqNfaI0wq','2024-03-18 14:08:27','2024-03-18 14:08:27'),(83,'Forrest Effertz','rkunde@example.org','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','yAkck2efJf','2024-03-18 14:08:27','2024-03-18 14:08:27'),(84,'Jaren Kunze','mayra.lindgren@example.net','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','qjdnPsVT6t','2024-03-18 14:08:27','2024-03-18 14:08:27'),(85,'Arjun Satterfield','aleffler@example.org','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','ZKCIF0Yswh','2024-03-18 14:08:27','2024-03-18 14:08:27'),(86,'Ida Sipes','jonatan.nolan@example.com','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','uTTuS2hLBb','2024-03-18 14:08:27','2024-03-18 14:08:27'),(87,'Shyann Dietrich','schneider.ralph@example.com','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','Cm3OvMrtkS','2024-03-18 14:08:27','2024-03-18 14:08:27'),(88,'Emory Tremblay','gusikowski.amya@example.com','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','Bsy1rnXcaK','2024-03-18 14:08:27','2024-03-18 14:08:27'),(89,'Prof. Michel Gusikowski','kuvalis.zita@example.net','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','4tgCeCFFFA','2024-03-18 14:08:27','2024-03-18 14:08:27'),(90,'Davon Pollich Sr.','ardith.ohara@example.com','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','Vxl2GEQ7Sh','2024-03-18 14:08:27','2024-03-18 14:08:27'),(91,'Giles Tillman','evan84@example.org','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','CYGApPUpIV','2024-03-18 14:08:27','2024-03-18 14:08:27'),(92,'Frieda Witting','raphaelle.jast@example.com','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','PXxhAZNiY5','2024-03-18 14:08:27','2024-03-18 14:08:27'),(93,'Carroll Weimann Jr.','bogisich.sienna@example.net','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','sXIP7ljBzE','2024-03-18 14:08:27','2024-03-18 14:08:27'),(94,'Mr. Josue Senger','valentine.hirthe@example.org','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','BYKqMjjRMz','2024-03-18 14:08:27','2024-03-18 14:08:27'),(95,'Madelynn McCullough','evert85@example.com','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','NSuLjeN1tg','2024-03-18 14:08:27','2024-03-18 14:08:27'),(96,'Dr. Torrance Romaguera','ora.gulgowski@example.org','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','qsRJPZJRjF','2024-03-18 14:08:27','2024-03-18 14:08:27'),(97,'Gladyce Emmerich','brisa.rempel@example.com','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','WKmLNTYOoD','2024-03-18 14:08:27','2024-03-18 14:08:27'),(98,'Judah Wolff','schowalter.turner@example.com','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','QrhmU4O2ZI','2024-03-18 14:08:27','2024-03-18 14:08:27'),(99,'Yesenia Schmidt','halvorson.linwood@example.org','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','Jd3MckkzUv','2024-03-18 14:08:27','2024-03-18 14:08:27'),(100,'Myrtice Cole','kirlin.coralie@example.org','2024-03-18 14:08:27','$2y$12$uuFZeAW.BKoLcVLhavkSBuqdVlTtQwed59Mt/0GtLbDQ11TH7E7pK','user','Hj0LSl4sPU','2024-03-18 14:08:27','2024-03-18 14:08:27'),(101,'admin','admin@gmail.com',NULL,'$2y$12$oxJE7RfM8eH9twGkoLlMv.qjdZB0kuJCsCJlLuNFYTD7HBMvH6pZ.','admin',NULL,'2024-03-18 14:08:28','2024-03-18 14:08:28');
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

-- Dump completed on 2024-03-19 10:35:20
