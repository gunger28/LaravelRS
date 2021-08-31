-- MySQL dump 10.13  Distrib 5.7.33, for Win64 (x86_64)
--
-- Host: localhost    Database: laravel_mini
-- ------------------------------------------------------
-- Server version	5.7.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2021_08_30_134446_create_phonebooks_table',1),(6,'2021_08_30_205307_create_us_table',2),(7,'2021_08_30_205617_create_us_table',3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
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
-- Table structure for table `phonebooks`
--

DROP TABLE IF EXISTS `phonebooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phonebooks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `phonebooks_name_index` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phonebooks`
--

LOCK TABLES `phonebooks` WRITE;
/*!40000 ALTER TABLE `phonebooks` DISABLE KEYS */;
INSERT INTO `phonebooks` VALUES (1,'Tomasa Koepp','ydach@wehner.net','+2231519121127','2002-10-19 03:59:48','1996-08-15 14:53:49'),(2,'Tessie Boyle Jr.','anna78@bartell.com','+5456328510922','1995-08-12 20:20:24','1973-08-02 00:30:02'),(4,'Haskell Turner','rasheed58@yahoo.com','+7683139178843','1988-07-31 12:58:48','1974-04-28 04:33:48'),(5,'May Keeling','barney86@deckow.com','+4554045188402','2016-04-17 23:38:18','1991-08-08 14:32:56'),(6,'Aurelia Lind','hadley.rau@ferry.net','+1649821188861','1997-01-04 14:17:24','1983-09-12 09:30:59'),(7,'Noemi Schroeder','stephen.altenwerth@hotmail.com','+6878495508599','1994-09-11 17:08:18','1998-08-27 14:33:20'),(8,'Elaina Cormier','zkeebler@yahoo.com','+5771767152334','1979-02-25 14:11:12','1989-02-09 22:51:02'),(9,'Dandre Anderson MD','muller.joe@hotmail.com','+8531413341804','1994-04-03 01:27:24','2018-07-13 03:31:06'),(10,'Lee Dickinson','gibson.nasir@gmail.com','+2287766947668','1996-06-24 22:35:39','2017-08-07 04:06:39'),(11,'Luigi Labadie','marilie.hagenes@okon.net','+6665863838270','1991-04-16 04:52:33','1985-05-15 04:22:47'),(12,'Dr. Walker Dicki PhD','xmcclure@hotmail.com','+8271016634267','1994-04-26 18:25:39','1997-09-20 04:25:41'),(13,'Ms. Zora Konopelski DDS','jcremin@kemmer.org','+7306539564046','1989-06-12 08:17:05','1993-11-19 14:04:43'),(14,'Dominique Morissette DDS','fabian37@upton.com','+7452282406651','2015-05-12 11:49:06','2011-10-25 05:34:11'),(15,'Pattie Schimmel','houston.hagenes@hotmail.com','+9494790486824','1979-01-29 03:06:01','2012-07-10 10:27:49'),(16,'Letitia Towne','lubowitz.ethelyn@bashirian.com','+4546821014675','1982-12-03 02:15:50','1996-08-19 06:21:50'),(17,'Kamryn Hoeger','borer.newell@gmail.com','+6943021293139','2009-04-12 00:26:04','1984-01-24 20:13:52'),(18,'Prof. Isaias Walker','zanderson@gleason.com','+6178014978006','1973-11-05 21:09:03','2019-05-24 10:45:36'),(19,'Felton Ondricka Sr.','kacey22@yahoo.com','+5780118232080','2009-12-15 00:18:20','1996-08-27 08:04:30'),(20,'Tate Keebler','cmedhurst@conroy.biz','+3249189490890','2013-02-02 13:47:01','2017-02-02 18:35:13'),(21,'Prof. Arnoldo Anderson IV','pierre65@gmail.com','+1667219260370','1983-03-11 18:31:53','2021-01-19 17:21:09'),(22,'Dr. Marion Swaniawski','ortiz.vinnie@hintz.com','+4370470604350','1992-05-14 13:30:05','2016-08-03 13:43:34'),(23,'Patience Anderson','glakin@gmail.com','+8767796531615','1988-02-28 11:30:14','2002-04-22 16:25:35'),(24,'Mrs. Teagan Reichel MD','lesch.lou@deckow.com','+5844316349680','1977-09-23 21:14:59','1970-06-13 01:40:02'),(25,'Anabelle Medhurst','ireinger@yahoo.com','+1965557617764','1990-03-10 14:53:50','2014-04-28 14:36:50'),(26,'Ms. Savanna Schiller IV','amira86@price.com','+1909799430061','1998-11-18 07:09:06','2019-11-07 21:17:18'),(27,'Carolyn Cartwright V','bswaniawski@gmail.com','+1996112427735','1983-01-18 11:04:48','1981-06-30 14:52:03'),(28,'Maegan Carroll','dale.hoppe@torp.com','+7349474599236','1988-09-23 17:30:50','1984-10-11 09:27:56'),(29,'Dr. Arvel Mayert','beryl.smith@gmail.com','+4431224981928','1996-07-17 08:56:11','1985-11-11 15:08:31'),(30,'Dr. Kari Breitenberg DVM','robb57@gottlieb.info','+8156325647605','1977-02-24 02:39:00','2012-11-11 12:31:13'),(31,'Cleora Gleason','mfeil@thompson.net','+6987211289526','2018-09-04 00:09:37','2006-07-14 03:04:30'),(32,'Adam Denesik','zcorkery@gmail.com','+2756505818756','1987-06-10 06:16:03','1995-10-19 07:46:22'),(33,'Heath Schimmel','fborer@klocko.biz','+5593679192038','1992-05-22 04:37:02','2016-01-25 10:14:34'),(34,'Beulah Rodriguez','macejkovic.graciela@gmail.com','+3397158457586','1975-04-03 18:40:15','2005-12-15 16:52:34'),(35,'Mr. Rickey VonRueden DDS','nella.lebsack@donnelly.com','+3953589068642','2010-01-11 13:00:08','1976-12-18 14:56:10'),(36,'Aaliyah Homenick IV','llittel@yahoo.com','+6383272713149','1998-12-29 06:02:48','1985-01-11 03:34:25'),(37,'Christina Abbott','qreilly@tremblay.com','+9807488887010','1987-07-30 16:14:11','1990-11-04 08:42:23'),(38,'Antonia Kuphal','frieda95@spinka.info','+4736608020597','1997-01-16 07:37:53','1984-07-13 07:25:33'),(39,'Mrs. Roxanne Dickens','afay@yahoo.com','+9419503510309','1986-02-16 22:18:12','2002-07-25 07:39:38'),(40,'Abner Pfannerstill','charlotte22@gmail.com','+7863649098923','2009-09-02 00:22:50','1997-05-11 01:00:17'),(41,'Prof. Al Daugherty','cameron.collier@gmail.com','+5651525296860','2007-04-03 09:00:38','1977-04-12 18:56:46'),(42,'Miss Myrtice O\'Hara DVM','miller.emma@hotmail.com','+4529109166021','2010-12-31 07:44:39','2012-11-28 08:29:55'),(43,'Sonya Jacobson','will.adell@hotmail.com','+6936235308924','1984-04-14 17:32:44','2019-10-16 23:50:32'),(44,'Miss Burdette Sporer Jr.','sonny.kling@hayes.com','+8688951730866','2009-07-29 20:19:14','2004-11-12 16:42:48'),(45,'Ruben Gulgowski','lavon.borer@gaylord.net','+5338330341695','2013-03-03 04:09:46','2011-08-24 15:34:39'),(46,'Trent Stroman','wilderman.malinda@hotmail.com','+3526776198201','2006-06-01 08:13:29','1997-02-18 07:46:26'),(47,'Roma Quigley','blair.jerde@gutmann.org','+5005966541619','1980-01-22 09:02:37','1992-02-02 11:53:58'),(48,'Carlo Anderson','sharon.hyatt@hotmail.com','+4219585851757','2020-11-11 05:12:22','1993-07-07 22:32:33'),(49,'Prof. Geovany Morar','ledner.kailey@windler.com','+4983082910544','2008-11-02 03:44:25','1988-06-02 23:24:20'),(50,'Delores Predovic','donnie10@hotmail.com','+4895161927489','1978-04-05 16:03:27','1983-05-01 00:12:10'),(51,'Prof. Casper Kilback','ally22@price.com','+9336716898151','1989-12-06 11:27:15','1994-12-30 20:42:00'),(52,'Sincere Roberts','litzy67@hagenes.com','+4307774842563','1980-10-14 16:51:13','1992-05-17 21:09:51'),(53,'Caleb Pagac','mfriesen@yahoo.com','+4331459525398','1974-05-05 16:09:54','1978-06-16 19:18:13'),(54,'Eve Hickle MD','ressie.osinski@gmail.com','+9258030961365','1986-06-01 21:41:37','1996-05-24 20:32:50'),(55,'Mose Dietrich','leatha.mitchell@corwin.net','+9774088808667','1970-06-06 14:59:46','2012-12-20 18:20:32'),(56,'Mr. Kellen Sauer DDS','mathew67@yahoo.com','+7305970929440','2021-03-18 04:31:58','2003-09-06 17:30:43'),(57,'Rhoda Keebler','qlesch@yahoo.com','+5055592160157','1999-08-08 13:11:33','2018-11-28 17:45:06'),(58,'Lew Zulauf DDS','eula39@hotmail.com','+3797140982926','1979-12-07 19:22:40','2020-07-09 19:53:12'),(59,'Ignacio Ratke Jr.','pgreenholt@koss.com','+2043905940472','2005-03-21 12:07:31','1981-01-24 22:08:43'),(60,'Claudia Doyle','meggie76@gmail.com','+1020607700844','1971-10-19 09:17:21','1986-02-19 02:48:55'),(61,'Myles Tillman II','spinka.hilda@hackett.info','+2913453624881','1972-08-27 09:26:06','1997-06-24 00:09:53'),(62,'Chaz Hill','emile34@abernathy.info','+1569464758252','1974-06-27 18:14:27','2018-03-06 21:58:13'),(63,'Mr. Eduardo Gaylord','araceli.reynolds@mitchell.com','+3619237255069','2011-01-11 02:46:24','1994-02-25 09:36:41'),(64,'Mr. Wiley Dickens','russ.steuber@yahoo.com','+4237302655390','2006-11-12 00:54:41','1975-12-22 02:51:07'),(65,'Green Kuhn','lucy58@hotmail.com','+6186179408692','1980-02-20 13:30:16','1980-02-09 14:10:39'),(66,'Audie Fay','vleannon@macejkovic.com','+6479705349989','1998-02-26 03:29:01','1974-06-25 13:06:23'),(67,'Kian Gibson','alessia34@daugherty.com','+5274886931490','1986-01-17 21:02:41','2000-01-13 20:35:18'),(68,'Florian Cruickshank','dan88@balistreri.info','+1750579570044','1987-06-22 14:39:22','1975-12-14 18:41:13'),(69,'Ms. Lenora Walker Sr.','madelyn.torp@gmail.com','+7049163750794','1993-05-13 04:49:05','1995-02-01 16:21:38'),(70,'Dr. Lurline Adams','lgreenfelder@weber.com','+6950629378118','1985-01-10 19:22:15','1982-06-23 19:51:44'),(71,'Tianna Kemmer','monte.swift@blick.com','+3635785389887','2008-05-28 06:16:25','1989-05-09 02:16:34'),(72,'Felipa Lindgren','vivien.rohan@gmail.com','+6339616254814','2000-02-04 19:51:33','1987-01-02 09:13:53'),(73,'Eulalia Carter','marvin.darron@hotmail.com','+7890037194990','2009-10-01 04:35:36','1984-08-30 15:47:20'),(74,'Wallace Hauck','rempel.erich@kovacek.info','+6496256146185','1999-12-03 11:11:59','2002-01-08 19:21:37'),(75,'Mr. Victor Schultz Sr.','adriel.hudson@rowe.net','+6244231481983','1992-05-12 13:51:39','1990-11-20 21:24:36'),(76,'Clarissa Muller','samantha47@yahoo.com','+1903523181855','1974-01-21 20:06:54','1976-01-27 04:16:06'),(77,'Kenna Greenholt','xlind@crist.com','+2181289668399','1978-11-04 18:50:50','1978-01-14 02:12:06'),(78,'Leora Harvey','lula.hodkiewicz@emmerich.com','+7519026422181','1987-07-05 19:44:57','2006-09-28 04:10:09'),(79,'Keshaun Kling','emilia.toy@koepp.biz','+8042089521661','1989-10-04 02:04:50','1970-09-28 00:02:55'),(80,'Raul Jacobs','abshire.mariana@hoppe.biz','+6716221930948','2005-02-01 11:55:01','2002-05-22 07:26:28'),(81,'Holly Langosh II','justina.effertz@yahoo.com','+2038302463588','2006-02-25 14:29:49','1989-02-05 09:38:33'),(82,'Jerald Denesik','donato.reichel@gmail.com','+1847197644287','2015-02-09 21:01:55','1982-12-21 05:36:08'),(83,'Janis Labadie','pierre98@aufderhar.biz','+4721202928159','1979-12-22 09:07:48','2010-01-24 03:39:02'),(84,'Alfreda Johnston','gage.schmeler@gutkowski.net','+8257526938821','1984-09-21 21:59:47','2013-09-17 21:03:29'),(85,'Christiana Reinger','terrill74@gmail.com','+6778918797471','2019-06-30 17:53:09','1971-01-09 10:48:02'),(86,'Peyton Pagac','gorczany.orval@cronin.com','+7748936698907','2007-09-03 03:25:41','1970-08-10 14:56:53'),(87,'Ms. Vella Aufderhar MD','melvina69@yahoo.com','+3107512829141','1972-07-13 05:18:09','1993-09-23 09:25:10'),(88,'Enoch Lemke','fatima.anderson@yahoo.com','+5037281473477','1977-04-02 08:36:42','2006-03-02 19:43:37'),(89,'Sandrine Nienow Jr.','yadira31@kiehn.biz','+2972432721302','2000-10-07 20:56:35','1980-08-13 09:12:29'),(90,'Mr. Hoyt Gleichner','hettie.dibbert@gmail.com','+1507458074886','2004-08-12 15:43:42','1970-05-20 07:16:11'),(91,'Dr. Alejandrin Bins IV','zieme.enrique@yahoo.com','+5935299357615','1989-05-27 19:55:57','2013-05-26 16:18:56'),(92,'Keon Zulauf','hardy.shanahan@gmail.com','+2845814437651','1978-12-19 08:05:55','1976-04-12 22:33:28'),(93,'Agustin Grimes','oreilly.concepcion@oconnell.com','+7552941046678','1994-06-20 05:33:27','1974-06-15 10:36:29'),(94,'Frances Price II','berniece00@gmail.com','+6711630910369','1981-03-29 09:14:01','1992-03-15 20:02:05'),(95,'Ms. Shyann Wolff','graham.brennan@yahoo.com','+1121313691889','1998-12-31 10:14:56','1972-03-09 13:24:30'),(96,'Mrs. Wilhelmine Pfeffer','labadie.marquis@metz.com','+9657427159077','1972-12-17 10:19:24','1986-10-28 00:35:19'),(97,'Shawna Farrell DDS','cmills@hamill.com','+6291266689387','1977-01-27 01:32:00','1973-12-27 03:16:25'),(98,'Maximillian Goodwin','tziemann@gmail.com','+7055229731280','2010-12-09 23:35:43','2000-09-24 07:52:01'),(99,'Americo Turcotte','quentin83@hotmail.com','+2386523286141','1976-03-06 13:01:30','2019-10-18 03:46:17'),(100,'Vaughn Dicki','christ89@yahoo.com','+5447031037134','1978-01-09 13:35:53','1996-11-14 16:37:52'),(101,'Anton','gunger@mail.com','+895344245435',NULL,NULL),(102,'tyryrty','rtyrtytr@trejtr.com','+56435454356345',NULL,NULL),(103,'ewrw','poprtyghf@mail.com','+0875664543523',NULL,NULL),(104,'ewrw','poprtyghf@mail.com','+0875664543523',NULL,NULL),(105,'ewrw','poprtyghf@mail.com','+0875664543523',NULL,NULL),(106,'ewrw','poprtyghf@mail.com','+0875664543523',NULL,NULL),(107,'ewrw','poprtyghf@mail.com','+0875664543523',NULL,NULL),(108,'ewrw','poprtyghf@mail.com','+0875664543523',NULL,NULL),(109,'ewrw','poprtyghf@mail.com','+0875664543523',NULL,NULL),(110,'ewrw','poprtyghf@mail.com','+0875664543523',NULL,NULL),(111,'ewrw','poprtyghf@mail.com','+0875664543523',NULL,NULL),(112,'ewrw','poprtyghf@mail.com','+0875664543523',NULL,NULL);
/*!40000 ALTER TABLE `phonebooks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `us`
--

DROP TABLE IF EXISTS `us`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `us` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `us`
--

LOCK TABLES `us` WRITE;
/*!40000 ALTER TABLE `us` DISABLE KEYS */;
INSERT INTO `us` VALUES (5,'c','c','admin'),(11,'a','a','admin'),(14,'u','u','admin'),(16,'iu','po','user');
/*!40000 ALTER TABLE `us` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
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

-- Dump completed on 2021-08-31  7:13:27
