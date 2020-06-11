-- MySQL dump 10.13  Distrib 5.7.30, for Linux (x86_64)
--
-- Host: localhost    Database: cric_db
-- ------------------------------------------------------
-- Server version	5.7.30-0ubuntu0.16.04.1

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add user',3,'add_user'),(10,'Can change user',3,'change_user'),(11,'Can delete user',3,'delete_user'),(12,'Can view user',3,'view_user'),(13,'Can add group',4,'add_group'),(14,'Can change group',4,'change_group'),(15,'Can delete group',4,'delete_group'),(16,'Can view group',4,'view_group'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add base',7,'add_base'),(26,'Can change base',7,'change_base'),(27,'Can delete base',7,'delete_base'),(28,'Can view base',7,'view_base'),(29,'Can add teams',8,'add_teams'),(30,'Can change teams',8,'change_teams'),(31,'Can delete teams',8,'delete_teams'),(32,'Can view teams',8,'view_teams'),(33,'Can add points table',9,'add_pointstable'),(34,'Can change points table',9,'change_pointstable'),(35,'Can delete points table',9,'delete_pointstable'),(36,'Can view points table',9,'view_pointstable'),(37,'Can add countries',10,'add_countries'),(38,'Can change countries',10,'change_countries'),(39,'Can delete countries',10,'delete_countries'),(40,'Can view countries',10,'view_countries'),(41,'Can add players',11,'add_players'),(42,'Can change players',11,'change_players'),(43,'Can delete players',11,'delete_players'),(44,'Can view players',11,'view_players'),(45,'Can add matches',12,'add_matches'),(46,'Can change matches',12,'change_matches'),(47,'Can delete matches',12,'delete_matches'),(48,'Can view matches',12,'view_matches');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$120000$sdQmRT97au50$etTywpWk/rzA9mFdPEp4rQs0iW0szx7N6kTmUAgTuEo=','2020-06-11 06:11:22.164656',1,'pavan','','','pavan@gmail.com',1,1,'2020-06-11 05:56:20.940153');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country_info`
--

DROP TABLE IF EXISTS `country_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `country_code` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country_info`
--

LOCK TABLES `country_info` WRITE;
/*!40000 ALTER TABLE `country_info` DISABLE KEYS */;
INSERT INTO `country_info` VALUES (1,'india','IN'),(2,'Pakistan','PK'),(3,'Austrailia','AU');
/*!40000 ALTER TABLE `country_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crickinfo_base`
--

DROP TABLE IF EXISTS `crickinfo_base`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crickinfo_base` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crickinfo_base`
--

LOCK TABLES `crickinfo_base` WRITE;
/*!40000 ALTER TABLE `crickinfo_base` DISABLE KEYS */;
INSERT INTO `crickinfo_base` VALUES (1,'2020-06-11 06:00:06.276102','2020-06-11 06:13:30.425336',1),(2,'2020-06-11 06:00:50.062669','2020-06-11 06:00:50.062728',1),(3,'2020-06-11 06:01:13.068563','2020-06-11 06:03:49.199282',1),(4,'2020-06-11 06:01:36.240712','2020-06-11 06:01:36.240768',1);
/*!40000 ALTER TABLE `crickinfo_base` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2020-06-11 05:58:06.712710','3','AU',1,'[{\"added\": {}}]',10,1),(2,'2020-06-11 06:00:06.290274','1','IN',1,'[{\"added\": {}}]',8,1),(3,'2020-06-11 06:00:50.228066','2','retete ertertert',1,'[{\"added\": {}}]',11,1),(4,'2020-06-11 06:01:13.103643','3','erteterterter ertertert',1,'[{\"added\": {}}]',11,1),(5,'2020-06-11 06:01:36.390084','4','Matches object (4)',1,'[{\"added\": {}}]',12,1),(6,'2020-06-11 06:03:31.963959','1','IN',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',8,1),(7,'2020-06-11 06:03:49.202086','3','erteterterter ertertert',2,'[{\"changed\": {\"fields\": [\"country\"]}}]',11,1),(8,'2020-06-11 06:05:59.436826','1','IN',2,'[{\"changed\": {\"fields\": [\"logo\"]}}]',8,1),(9,'2020-06-11 06:13:30.478185','1','IN',2,'[{\"changed\": {\"fields\": [\"logo\"]}}]',8,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(4,'auth','group'),(2,'auth','permission'),(3,'auth','user'),(5,'contenttypes','contenttype'),(7,'crickinfo','base'),(10,'crickinfo','countries'),(12,'crickinfo','matches'),(11,'crickinfo','players'),(9,'crickinfo','pointstable'),(8,'crickinfo','teams'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2020-06-10 16:55:45.696973'),(2,'auth','0001_initial','2020-06-10 16:55:57.267002'),(3,'admin','0001_initial','2020-06-10 16:56:00.500358'),(4,'admin','0002_logentry_remove_auto_add','2020-06-10 16:56:00.563804'),(5,'admin','0003_logentry_add_action_flag_choices','2020-06-10 16:56:00.614585'),(6,'contenttypes','0002_remove_content_type_name','2020-06-10 16:56:02.183459'),(7,'auth','0002_alter_permission_name_max_length','2020-06-10 16:56:02.329275'),(8,'auth','0003_alter_user_email_max_length','2020-06-10 16:56:02.540733'),(9,'auth','0004_alter_user_username_opts','2020-06-10 16:56:02.611049'),(10,'auth','0005_alter_user_last_login_null','2020-06-10 16:56:03.412121'),(11,'auth','0006_require_contenttypes_0002','2020-06-10 16:56:03.457057'),(12,'auth','0007_alter_validators_add_error_messages','2020-06-10 16:56:03.518240'),(13,'auth','0008_alter_user_username_max_length','2020-06-10 16:56:03.658349'),(14,'auth','0009_alter_user_last_name_max_length','2020-06-10 16:56:03.803465'),(15,'crickinfo','0001_initial','2020-06-10 16:56:21.086603'),(16,'sessions','0001_initial','2020-06-10 16:56:22.024283');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('r8hltcp9snjpqdtir9kb61n6ic8m4wem','ZTI1MDIxZjdmZTAyMzhiNWU1MDdkZWFhZDIxNmQyMWY1OTkwNTRjYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiYWY1Yzk5Y2VmNjJjODc3NjNlMjI4M2NlYzNhOGM1Nzg5OGFmMGNjOSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2020-06-25 05:57:45.070617'),('w06x87508rwgqfwbluamm062t06dtn7o','MmI5MjdiMGQzOGE4MWQ2NTIzOTEzNDFjZjJjMDYwNDNkYjJlNDA0ZDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiJhZjVjOTljZWY2MmM4Nzc2M2UyMjgzY2VjM2E4YzU3ODk4YWYwY2M5In0=','2020-06-25 06:11:22.264955');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `match_info`
--

DROP TABLE IF EXISTS `match_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `match_info` (
  `base_ptr_id` int(11) NOT NULL,
  `team1_id` int(11) NOT NULL,
  `team2_id` int(11) NOT NULL,
  `winner_id` int(11) NOT NULL,
  PRIMARY KEY (`base_ptr_id`),
  KEY `match_info_team1_id_4aacab55_fk_team_info_base_ptr_id` (`team1_id`),
  KEY `match_info_team2_id_bc278148_fk_team_info_base_ptr_id` (`team2_id`),
  KEY `match_info_winner_id_c127c156_fk_team_info_base_ptr_id` (`winner_id`),
  CONSTRAINT `match_info_base_ptr_id_a07ef4a3_fk_crickinfo_base_id` FOREIGN KEY (`base_ptr_id`) REFERENCES `crickinfo_base` (`id`),
  CONSTRAINT `match_info_team1_id_4aacab55_fk_team_info_base_ptr_id` FOREIGN KEY (`team1_id`) REFERENCES `team_info` (`base_ptr_id`),
  CONSTRAINT `match_info_team2_id_bc278148_fk_team_info_base_ptr_id` FOREIGN KEY (`team2_id`) REFERENCES `team_info` (`base_ptr_id`),
  CONSTRAINT `match_info_winner_id_c127c156_fk_team_info_base_ptr_id` FOREIGN KEY (`winner_id`) REFERENCES `team_info` (`base_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `match_info`
--

LOCK TABLES `match_info` WRITE;
/*!40000 ALTER TABLE `match_info` DISABLE KEYS */;
INSERT INTO `match_info` VALUES (4,1,1,1);
/*!40000 ALTER TABLE `match_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player_info`
--

DROP TABLE IF EXISTS `player_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `player_info` (
  `base_ptr_id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `jersey_number` varchar(3) NOT NULL,
  `total_matches` int(11) NOT NULL,
  `runs` int(11) NOT NULL,
  `highest_scores` int(11) NOT NULL,
  `fifties` int(11) NOT NULL,
  `hundreds` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `team_id` int(11) NOT NULL,
  PRIMARY KEY (`base_ptr_id`),
  KEY `player_info_country_id_81ca9297_fk_country_info_id` (`country_id`),
  KEY `player_info_team_id_ba6bc3d1_fk_team_info_base_ptr_id` (`team_id`),
  CONSTRAINT `player_info_base_ptr_id_9070df5c_fk_crickinfo_base_id` FOREIGN KEY (`base_ptr_id`) REFERENCES `crickinfo_base` (`id`),
  CONSTRAINT `player_info_country_id_81ca9297_fk_country_info_id` FOREIGN KEY (`country_id`) REFERENCES `country_info` (`id`),
  CONSTRAINT `player_info_team_id_ba6bc3d1_fk_team_info_base_ptr_id` FOREIGN KEY (`team_id`) REFERENCES `team_info` (`base_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player_info`
--

LOCK TABLES `player_info` WRITE;
/*!40000 ALTER TABLE `player_info` DISABLE KEYS */;
INSERT INTO `player_info` VALUES (2,'retete','ertertert','','ert',0,10,0,0,0,1,1),(3,'erteterterter','ertertert','PlayerImages/appoin.png','ert',0,10,0,0,0,1,1);
/*!40000 ALTER TABLE `player_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `points_table`
--

DROP TABLE IF EXISTS `points_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `points_table` (
  `base_ptr_id` int(11) NOT NULL,
  `match` int(11) NOT NULL,
  `points` int(11) NOT NULL,
  `wins` int(11) NOT NULL,
  `lose` int(11) NOT NULL,
  `team_id` int(11) NOT NULL,
  PRIMARY KEY (`base_ptr_id`),
  KEY `points_table_team_id_73cd50dd_fk_team_info_base_ptr_id` (`team_id`),
  CONSTRAINT `points_table_base_ptr_id_8d7ecaf6_fk_crickinfo_base_id` FOREIGN KEY (`base_ptr_id`) REFERENCES `crickinfo_base` (`id`),
  CONSTRAINT `points_table_team_id_73cd50dd_fk_team_info_base_ptr_id` FOREIGN KEY (`team_id`) REFERENCES `team_info` (`base_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `points_table`
--

LOCK TABLES `points_table` WRITE;
/*!40000 ALTER TABLE `points_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `points_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team_info`
--

DROP TABLE IF EXISTS `team_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team_info` (
  `base_ptr_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `team_code` varchar(10) NOT NULL,
  `logo` varchar(100) DEFAULT NULL,
  `clubstate` varchar(50) NOT NULL,
  PRIMARY KEY (`base_ptr_id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `team_info_name_team_code_ad6b006b_uniq` (`name`,`team_code`),
  CONSTRAINT `team_info_base_ptr_id_f1cfce91_fk_crickinfo_base_id` FOREIGN KEY (`base_ptr_id`) REFERENCES `crickinfo_base` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_info`
--

LOCK TABLES `team_info` WRITE;
/*!40000 ALTER TABLE `team_info` DISABLE KEYS */;
INSERT INTO `team_info` VALUES (1,'India','IN','TeamLogo/red.png','Test');
/*!40000 ALTER TABLE `team_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-11 12:10:45
