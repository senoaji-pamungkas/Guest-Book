-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: db_tamu
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add karyawan',7,'add_karyawan'),(26,'Can change karyawan',7,'change_karyawan'),(27,'Can delete karyawan',7,'delete_karyawan'),(28,'Can view karyawan',7,'view_karyawan'),(29,'Can add tamu',8,'add_tamu'),(30,'Can change tamu',8,'change_tamu'),(31,'Can delete tamu',8,'delete_tamu'),(32,'Can view tamu',8,'view_tamu');
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
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$320000$rTt7gN7Cmir7i014fBJG7W$OvEX10v1FRIoce+nvFviFIrwIwrUqovwyit2lNUAnvQ=','2022-08-05 22:37:24.755221',1,'admin','','','admin@gmail.com',1,1,'2022-08-05 22:37:09.750513'),(2,'pbkdf2_sha256$320000$7LbryTZu8D55ZJ2tBusBBF$oANZ7SCdrnzARyyumVxT8zg5MTNMTf6J/iBi91x4VX0=','2022-08-08 07:03:01.370969',1,'seno','','','seno@gmail.com',1,1,'2022-08-08 07:02:49.017191'),(3,'pbkdf2_sha256$320000$73sY4Lxdq6UXtrv4EO2mTi$YInFYct3xkPCF4WhpsWsma3K/iliEHb0nNgWCIl/cM4=','2022-08-24 23:55:58.086019',1,'admin1','','','admin1@gmail.com',1,1,'2022-08-24 23:55:00.705733');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
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
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2022-08-05 22:37:49.158339','1','seno',1,'[{\"added\": {}}]',8,1),(2,'2022-08-05 23:46:33.497233','1','seno',1,'[{\"added\": {}}]',7,1),(3,'2022-08-06 00:12:40.889672','2','Seno',1,'[{\"added\": {}}]',7,1),(4,'2022-08-06 00:12:51.653608','1','seno',2,'[{\"changed\": {\"fields\": [\"Divisi\"]}}]',7,1),(5,'2022-08-06 00:23:45.547004','3','aji',1,'[{\"added\": {}}]',7,1),(6,'2022-08-06 00:50:12.015509','2','aji',1,'[{\"added\": {}}]',8,1),(7,'2022-08-06 00:52:27.208224','1','seno',2,'[{\"changed\": {\"fields\": [\"Foto\"]}}]',8,1),(8,'2022-08-06 01:57:20.606477','3','seno',1,'[{\"added\": {}}]',8,1),(9,'2022-08-06 04:37:52.497381','1','seno',3,'',8,1),(10,'2022-08-06 04:37:52.502721','2','aji',3,'',8,1),(11,'2022-08-06 04:37:52.505126','3','seno',3,'',8,1),(12,'2022-08-06 04:38:27.570809','4','seno',1,'[{\"added\": {}}]',8,1),(13,'2022-08-06 04:40:00.175188','5','aji',1,'[{\"added\": {}}]',8,1),(14,'2022-08-06 04:58:18.976161','5','aji',2,'[]',8,1),(15,'2022-08-06 05:08:12.291799','6','seno',1,'[{\"added\": {}}]',8,1),(16,'2022-08-06 05:10:40.320436','7','j',1,'[{\"added\": {}}]',8,1),(17,'2022-08-06 05:11:03.079678','8','kk',1,'[{\"added\": {}}]',8,1),(18,'2022-08-06 05:11:19.198931','9','kk',1,'[{\"added\": {}}]',8,1),(19,'2022-08-06 05:11:29.092366','9','kk',3,'',8,1),(20,'2022-08-06 05:11:29.095294','8','kk',3,'',8,1),(21,'2022-08-06 05:11:29.099289','7','j',3,'',8,1),(22,'2022-08-06 05:11:29.102340','6','seno',3,'',8,1),(23,'2022-08-06 05:11:29.106282','5','aji',3,'',8,1),(24,'2022-08-06 05:11:29.110306','4','seno',3,'',8,1),(25,'2022-08-06 06:00:07.569206','10','seno',1,'[{\"added\": {}}]',8,1),(26,'2022-08-08 07:03:45.624035','11','aldi',1,'[{\"added\": {}}]',8,2),(27,'2022-08-08 07:05:51.372260','12','nN',1,'[{\"added\": {}}]',8,2),(28,'2022-08-08 07:06:53.419347','12','nN',3,'',8,2),(29,'2022-08-08 07:06:53.462672','11','aldi',3,'',8,2),(30,'2022-08-08 07:06:53.464735','10','seno',3,'',8,2),(31,'2022-08-08 07:07:06.236252','13','seno',1,'[{\"added\": {}}]',8,2),(32,'2022-08-09 01:47:11.871353','1','jourdan',1,'[{\"added\": {}}]',7,2),(33,'2022-08-09 01:47:41.681126','1','jourdan',1,'[{\"added\": {}}]',8,2),(34,'2022-08-25 00:03:19.553302','2','seno',1,'[{\"added\": {}}]',8,3),(35,'2022-08-25 01:04:57.019651','3','aldi',1,'[{\"added\": {}}]',8,3),(36,'2022-08-25 01:09:19.360716','4','s',1,'[{\"added\": {}}]',8,3),(37,'2022-08-25 01:11:30.007039','5','m',1,'[{\"added\": {}}]',8,3),(38,'2022-08-25 01:17:37.975636','5','m',3,'',8,3),(39,'2022-08-25 01:17:37.989027','4','s',3,'',8,3),(40,'2022-08-25 01:17:37.992026','3','aldi',3,'',8,3),(41,'2022-08-25 01:17:37.993039','2','seno',3,'',8,3),(42,'2022-08-25 01:17:37.995027','1','jourdan',3,'',8,3),(43,'2022-08-26 04:07:46.637981','6','seno',1,'[{\"added\": {}}]',8,3),(44,'2022-08-26 04:14:37.011654','7','s',1,'[{\"added\": {}}]',8,3),(45,'2022-08-26 04:16:15.214414','8','m',1,'[{\"added\": {}}]',8,3),(46,'2022-08-28 10:15:32.607932','2','seno',1,'[{\"added\": {}}]',7,3),(47,'2022-08-28 10:18:37.645796','1','seno',1,'[{\"added\": {}}]',8,3),(48,'2022-08-31 04:08:27.531113','2','seno',3,'',7,3),(49,'2022-08-31 04:08:27.536689','1','jourdan',3,'',7,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'index','karyawan'),(8,'index','tamu'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2022-08-05 22:34:50.071594'),(2,'auth','0001_initial','2022-08-05 22:34:50.666437'),(3,'admin','0001_initial','2022-08-05 22:34:50.789798'),(4,'admin','0002_logentry_remove_auto_add','2022-08-05 22:34:50.802087'),(5,'admin','0003_logentry_add_action_flag_choices','2022-08-05 22:34:50.811098'),(6,'contenttypes','0002_remove_content_type_name','2022-08-05 22:34:50.877709'),(7,'auth','0002_alter_permission_name_max_length','2022-08-05 22:34:50.936101'),(8,'auth','0003_alter_user_email_max_length','2022-08-05 22:34:50.965927'),(9,'auth','0004_alter_user_username_opts','2022-08-05 22:34:50.982878'),(10,'auth','0005_alter_user_last_login_null','2022-08-05 22:34:51.053339'),(11,'auth','0006_require_contenttypes_0002','2022-08-05 22:34:51.056792'),(12,'auth','0007_alter_validators_add_error_messages','2022-08-05 22:34:51.069064'),(13,'auth','0008_alter_user_username_max_length','2022-08-05 22:34:51.091147'),(14,'auth','0009_alter_user_last_name_max_length','2022-08-05 22:34:51.117551'),(15,'auth','0010_alter_group_name_max_length','2022-08-05 22:34:51.141522'),(16,'auth','0011_update_proxy_permissions','2022-08-05 22:34:51.152080'),(17,'auth','0012_alter_user_first_name_max_length','2022-08-05 22:34:51.182358'),(18,'index','0001_initial','2022-08-05 22:34:51.229226'),(19,'index','0002_tamus','2022-08-05 22:34:51.260611'),(20,'index','0003_delete_tamus_rename_nama_tamu_name','2022-08-05 22:34:51.291567'),(21,'sessions','0001_initial','2022-08-05 22:34:51.330750'),(22,'index','0004_alter_karyawan_jeniskelamin','2022-08-05 23:46:05.132424'),(23,'index','0005_alter_karyawan_divisi','2022-08-06 00:49:31.265407'),(24,'index','0006_alter_karyawan_divisi','2022-08-06 00:49:31.273837'),(25,'index','0007_alter_karyawan_divisi','2022-08-06 00:49:31.283305'),(26,'index','0008_alter_karyawan_divisi_alter_tamu_foto','2022-08-06 01:07:29.470838'),(27,'index','0009_alter_karyawan_options_alter_tamu_options_and_more','2022-08-25 01:36:13.276000'),(28,'index','0010_alter_tamu_options_alter_tamu_karyawan','2022-08-28 10:12:42.799386'),(29,'index','0011_alter_tamu_karyawan','2022-08-28 10:12:42.816122'),(30,'index','0012_alter_tamu_karyawan','2022-08-28 10:12:42.821126'),(31,'index','0013_alter_tamu_karyawan','2022-08-28 10:12:42.825808'),(32,'index','0014_delete_tamu','2022-08-28 10:12:42.853233'),(33,'index','0015_tamu','2022-08-28 10:13:44.075637');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('38kqkxumsrft87iulubzygz5yz31sasx','.eJxVjEsOAiEQBe_C2hChGWxcuvcMpLsBGTWQzGdlvLtOMgvdvqp6LxVpXWpc5zzFMamzAnX43ZjkkdsG0p3arWvpbZlG1puidzrra0_5edndv4NKc_3WTEcREhNOMIARMD6wc5nYITgbPNLgYcBcikMfAAuhWCGWbJGDE_X-AOG-OA4:1oR0E2:PeXq_FaqpCmqhLYeuXslezLkXGvCgephfCj7XI-Xp1o','2022-09-07 23:55:58.095167'),('gmi7i4k2b7ith1gr3alrc6y9mdypm03i','.eJxVjDEOwjAMRe-SGUXYSWPKyM4ZKjsxpIASqWknxN1ppQ6w_vfef5uBlzkPS9NpGJM5GzCH3004PrVsID243KuNtczTKHZT7E6bvdakr8vu_h1kbnmte3YMhB4DHD1K0o6kEw8OgcSnKKcorIH0FoUInUIIPQUnKCRraT5f1Mk3vw:1oK5wa:jfLHYmf-2pBCrm13wxdC43---AXGlmWqC-Xa5OezHUE','2022-08-19 22:37:24.758445'),('s3bnn8wryjgm4128wjl7093ap9sab1nb','.eJxVjMsOwiAQRf-FtSGU14BL934DGRiQqoGktCvjv2uTLnR7zzn3xQJuaw3byEuYiZ2ZZKffLWJ65LYDumO7dZ56W5c58l3hBx382ik_L4f7d1Bx1G_tAUTJTvtivElIRU_Cu0IkBYAzyVqtRVYgHaholNOYPJhoKOs0WYzs_QHNrTdn:1oKwmz:QyHorgE3w3L_5_aoPl2Q8m1_Sph1wpIonuHhBmu6zic','2022-08-22 07:03:01.374149');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `karyawan`
--

DROP TABLE IF EXISTS `karyawan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `karyawan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `jenisKelamin` varchar(10) NOT NULL,
  `divisi` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `karyawan`
--

LOCK TABLES `karyawan` WRITE;
/*!40000 ALTER TABLE `karyawan` DISABLE KEYS */;
/*!40000 ALTER TABLE `karyawan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tamu`
--

DROP TABLE IF EXISTS `tamu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tamu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `namaIntansi` varchar(100) NOT NULL,
  `jaminan` varchar(100) NOT NULL,
  `keperluan` varchar(100) NOT NULL,
  `jumlahTamu` int(11) NOT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `waktu` datetime(6) NOT NULL,
  `karyawan_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tamu_karyawan_id_7b5d161e_fk_karyawan_id` (`karyawan_id`),
  CONSTRAINT `tamu_karyawan_id_7b5d161e_fk_karyawan_id` FOREIGN KEY (`karyawan_id`) REFERENCES `karyawan` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tamu`
--

LOCK TABLES `tamu` WRITE;
/*!40000 ALTER TABLE `tamu` DISABLE KEYS */;
/*!40000 ALTER TABLE `tamu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-12 17:54:53
