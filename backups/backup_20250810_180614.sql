-- MySQL dump 10.13  Distrib 9.0.1, for Win64 (x86_64)
--
-- Host: localhost    Database: babus3
-- ------------------------------------------------------
-- Server version	9.0.1

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add Testimonio',6,'add_testimonial'),(22,'Can change Testimonio',6,'change_testimonial'),(23,'Can delete Testimonio',6,'delete_testimonial'),(24,'Can view Testimonio',6,'view_testimonial'),(25,'Can add Insumo',7,'add_inventario'),(26,'Can change Insumo',7,'change_inventario'),(27,'Can delete Insumo',7,'delete_inventario'),(28,'Can view Insumo',7,'view_inventario'),(29,'Can add user profile',8,'add_userprofile'),(30,'Can change user profile',8,'change_userprofile'),(31,'Can delete user profile',8,'delete_userprofile'),(32,'Can view user profile',8,'view_userprofile'),(33,'Can add Fecha',9,'add_fecha'),(34,'Can change Fecha',9,'change_fecha'),(35,'Can delete Fecha',9,'delete_fecha'),(36,'Can view Fecha',9,'view_fecha'),(37,'Can add cita',10,'add_cita'),(38,'Can change cita',10,'change_cita'),(39,'Can delete cita',10,'delete_cita'),(40,'Can view cita',10,'view_cita'),(41,'Can add Factura',11,'add_factura'),(42,'Can change Factura',11,'change_factura'),(43,'Can delete Factura',11,'delete_factura'),(44,'Can view Factura',11,'view_factura'),(45,'Can add Detalle de Venta',12,'add_detalleventa'),(46,'Can change Detalle de Venta',12,'change_detalleventa'),(47,'Can delete Detalle de Venta',12,'delete_detalleventa'),(48,'Can view Detalle de Venta',12,'view_detalleventa'),(49,'Can add categoria',13,'add_categoria'),(50,'Can change categoria',13,'change_categoria'),(51,'Can delete categoria',13,'delete_categoria'),(52,'Can view categoria',13,'view_categoria'),(53,'Can add promocion',14,'add_promocion'),(54,'Can change promocion',14,'change_promocion'),(55,'Can delete promocion',14,'delete_promocion'),(56,'Can view promocion',14,'view_promocion'),(57,'Can add producto',15,'add_producto'),(58,'Can change producto',15,'change_producto'),(59,'Can delete producto',15,'delete_producto'),(60,'Can view producto',15,'view_producto'),(61,'Can add color',16,'add_color'),(62,'Can change color',16,'change_color'),(63,'Can delete color',16,'delete_color'),(64,'Can view color',16,'view_color'),(65,'Can add genero',17,'add_genero'),(66,'Can change genero',17,'change_genero'),(67,'Can delete genero',17,'delete_genero'),(68,'Can view genero',17,'view_genero'),(69,'Can add talla',18,'add_talla'),(70,'Can change talla',18,'change_talla'),(71,'Can delete talla',18,'delete_talla'),(72,'Can view talla',18,'view_talla');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_inicio_userprofile_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_inicio_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `inicio_userprofile` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2025-08-09 05:49:42.669104','1','azul',1,'[{\"added\": {}}]',16,1),(2,'2025-08-09 05:50:01.398521','1','Azul',2,'[{\"changed\": {\"fields\": [\"Nombre\"]}}]',16,1),(3,'2025-08-09 05:50:10.745826','2','Verde',1,'[{\"added\": {}}]',16,1),(4,'2025-08-09 05:51:24.632660','3','Negro',1,'[{\"added\": {}}]',16,1),(5,'2025-08-09 05:51:32.720668','4','Blanco',1,'[{\"added\": {}}]',16,1),(6,'2025-08-09 05:51:39.236844','5','Rojo',1,'[{\"added\": {}}]',16,1),(7,'2025-08-09 05:51:47.541071','6','Amarillo',1,'[{\"added\": {}}]',16,1),(8,'2025-08-09 05:51:58.293712','7','Naranja',1,'[{\"added\": {}}]',16,1),(9,'2025-08-09 05:52:01.381948','8','Morado',1,'[{\"added\": {}}]',16,1),(10,'2025-08-09 05:52:07.600077','9','Rosado',1,'[{\"added\": {}}]',16,1),(11,'2025-08-09 05:52:12.217256','10','Marron',1,'[{\"added\": {}}]',16,1),(12,'2025-08-09 05:52:30.837580','10','Marrón',2,'[{\"changed\": {\"fields\": [\"Nombre\"]}}]',16,1),(13,'2025-08-09 05:52:43.839181','1','Mujer',1,'[{\"added\": {}}]',17,1),(14,'2025-08-09 05:52:47.577903','2','Hombre',1,'[{\"added\": {}}]',17,1),(15,'2025-08-09 05:52:50.907167','3','Niño',1,'[{\"added\": {}}]',17,1),(16,'2025-08-09 05:52:53.068007','4','Niña',1,'[{\"added\": {}}]',17,1),(17,'2025-08-09 05:53:09.548997','5','Unisex',1,'[{\"added\": {}}]',17,1),(18,'2025-08-09 05:53:42.795087','1','18',1,'[{\"added\": {}}]',18,1),(19,'2025-08-09 05:53:45.108500','2','19',1,'[{\"added\": {}}]',18,1),(20,'2025-08-09 05:53:46.692568','3','20',1,'[{\"added\": {}}]',18,1),(21,'2025-08-09 05:53:47.765640','4','21',1,'[{\"added\": {}}]',18,1),(22,'2025-08-09 05:53:50.717993','5','22',1,'[{\"added\": {}}]',18,1),(23,'2025-08-09 05:53:53.914469','6','23',1,'[{\"added\": {}}]',18,1),(24,'2025-08-09 05:53:55.499159','7','24',1,'[{\"added\": {}}]',18,1),(25,'2025-08-09 05:53:56.867720','8','25',1,'[{\"added\": {}}]',18,1),(26,'2025-08-09 05:53:58.632668','9','26',1,'[{\"added\": {}}]',18,1),(27,'2025-08-09 05:54:00.215817','10','27',1,'[{\"added\": {}}]',18,1),(28,'2025-08-09 05:54:01.890416','11','28',1,'[{\"added\": {}}]',18,1),(29,'2025-08-09 05:54:07.288616','12','29',1,'[{\"added\": {}}]',18,1),(30,'2025-08-09 05:54:08.996923','13','30',1,'[{\"added\": {}}]',18,1),(31,'2025-08-09 05:54:10.536856','14','31',1,'[{\"added\": {}}]',18,1),(32,'2025-08-09 05:54:11.766861','15','32',1,'[{\"added\": {}}]',18,1),(33,'2025-08-09 05:54:12.914488','16','33',1,'[{\"added\": {}}]',18,1),(34,'2025-08-09 05:54:14.396141','17','34',1,'[{\"added\": {}}]',18,1),(35,'2025-08-09 05:54:18.059259','18','35',1,'[{\"added\": {}}]',18,1),(36,'2025-08-09 05:54:20.147834','19','36',1,'[{\"added\": {}}]',18,1),(37,'2025-08-09 06:29:32.834784','2','Nueva',1,'[{\"added\": {}}]',14,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(13,'inicio','categoria'),(10,'inicio','cita'),(16,'inicio','color'),(12,'inicio','detalleventa'),(11,'inicio','factura'),(9,'inicio','fecha'),(17,'inicio','genero'),(7,'inicio','inventario'),(15,'inicio','producto'),(14,'inicio','promocion'),(18,'inicio','talla'),(8,'inicio','userprofile'),(5,'sessions','session'),(6,'web','testimonial');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2025-08-09 05:45:49.754546'),(2,'contenttypes','0002_remove_content_type_name','2025-08-09 05:45:49.861674'),(3,'auth','0001_initial','2025-08-09 05:45:50.281100'),(4,'auth','0002_alter_permission_name_max_length','2025-08-09 05:45:50.380081'),(5,'auth','0003_alter_user_email_max_length','2025-08-09 05:45:50.388784'),(6,'auth','0004_alter_user_username_opts','2025-08-09 05:45:50.397090'),(7,'auth','0005_alter_user_last_login_null','2025-08-09 05:45:50.405363'),(8,'auth','0006_require_contenttypes_0002','2025-08-09 05:45:50.409455'),(9,'auth','0007_alter_validators_add_error_messages','2025-08-09 05:45:50.417777'),(10,'auth','0008_alter_user_username_max_length','2025-08-09 05:45:50.425239'),(11,'auth','0009_alter_user_last_name_max_length','2025-08-09 05:45:50.433616'),(12,'auth','0010_alter_group_name_max_length','2025-08-09 05:45:50.455484'),(13,'auth','0011_update_proxy_permissions','2025-08-09 05:45:50.466324'),(14,'auth','0012_alter_user_first_name_max_length','2025-08-09 05:45:50.476293'),(15,'inicio','0001_initial','2025-08-09 05:45:51.466902'),(16,'admin','0001_initial','2025-08-09 05:45:51.696639'),(17,'admin','0002_logentry_remove_auto_add','2025-08-09 05:45:51.709685'),(18,'admin','0003_logentry_add_action_flag_choices','2025-08-09 05:45:51.723874'),(19,'inicio','0002_cita_google_event_id','2025-08-09 05:45:51.764240'),(20,'inicio','0003_alter_cita_estado','2025-08-09 05:45:51.787891'),(21,'inicio','0004_alter_userprofile_email','2025-08-09 05:45:51.893715'),(22,'inicio','0005_alter_inventario_estado','2025-08-09 05:45:51.899000'),(23,'inicio','0006_alter_inventario_cantidad','2025-08-09 05:45:51.904422'),(24,'inicio','0007_rename_is_active_userprofile_estado_and_more','2025-08-09 05:45:52.010400'),(25,'inicio','0008_rename_estado_userprofile_is_active','2025-08-09 05:45:52.068746'),(26,'inicio','0009_userprofile_estado','2025-08-09 05:45:52.228106'),(27,'inicio','0010_alter_userprofile_estado','2025-08-09 05:45:52.243894'),(28,'inicio','0011_rename_email_userprofile_correo_and_more','2025-08-09 05:45:52.379286'),(29,'inicio','0012_remove_userprofile_estado','2025-08-09 05:45:52.440972'),(30,'inicio','0013_rename_numero_userprofile_documento_and_more','2025-08-09 05:45:52.540444'),(31,'inicio','0014_alter_userprofile_documento','2025-08-09 05:45:52.680365'),(32,'inicio','0015_alter_userprofile_documento','2025-08-09 05:45:52.693488'),(33,'inicio','0016_alter_userprofile_documento','2025-08-09 05:45:52.706818'),(34,'inicio','0017_alter_cita_motivo','2025-08-09 05:45:52.720981'),(35,'inicio','0018_fecha_final_fecha_inicio','2025-08-09 05:45:52.805907'),(36,'inicio','0019_alter_fecha_unique_together','2025-08-09 05:45:52.904691'),(37,'inicio','0020_alter_fecha_final_alter_fecha_inicio','2025-08-09 05:45:53.080576'),(38,'inicio','0021_fecha_fecha_hora_alter_fecha_final_and_more','2025-08-09 05:45:53.337111'),(39,'inicio','0022_alter_fecha_fecha_hora','2025-08-09 05:45:53.344090'),(40,'inicio','0023_alter_fecha_unique_together_remove_fecha_final_and_more','2025-08-09 05:45:53.454290'),(41,'inicio','0024_alter_cita_estado','2025-08-09 05:45:53.469587'),(42,'inicio','0025_alter_cita_estado','2025-08-09 05:45:53.483862'),(43,'inicio','0026_alter_cita_estado','2025-08-09 05:45:53.497918'),(44,'inicio','0027_userprofile_is_staff','2025-08-09 05:45:53.586398'),(45,'inicio','0028_alter_inventario_cantidad','2025-08-09 05:45:53.591620'),(46,'inicio','0029_inventario_cantidad_almacen_and_more','2025-08-09 05:45:53.708955'),(47,'inicio','0030_alter_inventario_options_venta','2025-08-09 05:45:53.832821'),(48,'inicio','0031_factura_detalleventa_delete_venta','2025-08-09 05:45:54.104018'),(49,'inicio','0032_remove_userprofile_acudiente_and_more','2025-08-09 05:45:54.331091'),(50,'inicio','0033_factura_cliente','2025-08-09 05:45:54.364368'),(51,'inicio','0034_alter_fecha_options_alter_fecha_unique_together_and_more','2025-08-09 05:45:54.459315'),(52,'inicio','0035_alter_fecha_options_alter_fecha_unique_together_and_more','2025-08-09 05:45:54.523539'),(53,'inicio','0036_alter_fecha_options_alter_fecha_unique_together_and_more','2025-08-09 05:45:54.605037'),(54,'inicio','0037_categoria_promocion_producto','2025-08-09 05:45:54.756561'),(55,'inicio','0038_alter_categoria_options_alter_producto_options_and_more','2025-08-09 05:45:55.284503'),(56,'inicio','0039_remove_producto_stock','2025-08-09 05:45:55.312133'),(57,'inicio','0040_remove_producto_precio','2025-08-09 05:45:55.335113'),(58,'inicio','0041_inventario_fecha_actualizacion_and_more','2025-08-09 05:45:55.613369'),(59,'inicio','0042_color_genero_talla_alter_categoria_options_and_more','2025-08-09 05:45:56.945190'),(60,'inicio','0043_remove_producto_precio','2025-08-09 05:45:56.993162'),(61,'sessions','0001_initial','2025-08-09 05:45:57.050289'),(62,'web','0001_initial','2025-08-09 05:45:57.148944'),(63,'web','0002_alter_testimonial_options_and_more','2025-08-09 05:45:57.294055'),(64,'inicio','0044_alter_inventario_unique_together_and_more','2025-08-09 07:52:53.837704');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('ikjwol7d1lipvhztlbefyyqfruhybznw','.eJxVjMEOwiAQRP-FsyFAyyIevfsNZNmlUjWQlPZk_Hdp0oNe5vDmzbxFwG3NYWtpCTOLi9Di9Msi0jOVveAHlnuVVMu6zFHuijzaJm-V0-t6uH8HGVvuazcO2rp4ngZCIm8dGA1-SBbYJ1DKQGdM4FBZxO6Rm9hYDyP2VCw-X8ixN1k:1ukpRN:hX0EbOoX2jzzylgTRHCXzGdxwIgeJoQGx4foJGIo7Os','2025-08-23 19:41:17.439996'),('lt5utc6rtb8qwk6ilvkk5pvxju6p51bh','.eJyNkluTojAQhf-LzwsGBCLzBl6QUUTE62xtURGCIEggwCJMzX_fsDN7fZqXPHTO-bq7-rwOPFRXkVeXmHpxMHgaCIMvf9cuyE9w1n8EN5RdCe-TrKLxhe8l_MdvyVskwKn-of0HEKEyYm4ojQQZXsbhyEe-r8pQEQVFHWFZCVSsACAqrBb4CkRARojpfBgGoqwqEmIv6KE-xQHOqhil5eDpdVAR1oyRWySqPAKaO1oo60e3m9vjc9FgXV2XqN5OrJuVT13H3pHKz13Yccb3hCuOGtWdlYleziKUji0qN13SiEez1hvgkK031st2asUcmGswVRdJcaer-awhxW2_M-5ZLuWogDtrufec46HT97opZvLxcPdQYqe28xhZS2GmpKCz6GyXh2q-dZbrvYeKJZpcz0stAK621dy5szBOohUXhDoHd7OetGBqCOeV-VCjzAEClNneFIcUl5H3a2FhOARCJGXxZNNR63RnQJPBNEObuetmzq1Uk459YWGLwXR00tFjQTtuu33uTocXIZ8cV50O5fC8bOckUEWnhg99Hkjm2ZUMgxS7qHjWfek4Zp1_dvRqGrOuUVXl5dNwSPrTivyVkGuKUR6XLBH34fts7EZpzE70niQRjIWRKokCVFQOJONETqF6uZUFEcMKXSQZSiBXitq_BsjnUZ6XH9Q-N33MGKmH_8GWmGWgYmjDnribE3eQbee2f04eptgigNpsteUItfE-nC2Yq_RJjllWvv4evmma_yfv1xle7yhOeYpRQLK0ZdbPGe4kiMPPy1N0wSy7397efgAyjCkV:1ul6Pt:FjSQqRQrLY8OWXv8FKSkaO8LFIE5hSO6DUksnwTqy1c','2025-08-24 13:48:53.314024');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inicio_categoria`
--

DROP TABLE IF EXISTS `inicio_categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inicio_categoria` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `inicio_categoria_nombre_a021fdfd_uniq` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inicio_categoria`
--

LOCK TABLES `inicio_categoria` WRITE;
/*!40000 ALTER TABLE `inicio_categoria` DISABLE KEYS */;
INSERT INTO `inicio_categoria` VALUES (2,'Pijamas'),(6,'que pelle');
/*!40000 ALTER TABLE `inicio_categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inicio_cita`
--

DROP TABLE IF EXISTS `inicio_cita`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inicio_cita` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `motivo` varchar(20) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `asistio` tinyint(1) NOT NULL,
  `paciente_id` bigint NOT NULL,
  `fecha_hora_id` bigint NOT NULL,
  `google_event_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `inicio_cita_paciente_id_693744bf_fk_inicio_userprofile_id` (`paciente_id`),
  KEY `inicio_cita_fecha_hora_id_4e1836cc_fk_inicio_fecha_id` (`fecha_hora_id`),
  CONSTRAINT `inicio_cita_fecha_hora_id_4e1836cc_fk_inicio_fecha_id` FOREIGN KEY (`fecha_hora_id`) REFERENCES `inicio_fecha` (`id`),
  CONSTRAINT `inicio_cita_paciente_id_693744bf_fk_inicio_userprofile_id` FOREIGN KEY (`paciente_id`) REFERENCES `inicio_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inicio_cita`
--

LOCK TABLES `inicio_cita` WRITE;
/*!40000 ALTER TABLE `inicio_cita` DISABLE KEYS */;
/*!40000 ALTER TABLE `inicio_cita` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inicio_color`
--

DROP TABLE IF EXISTS `inicio_color`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inicio_color` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inicio_color`
--

LOCK TABLES `inicio_color` WRITE;
/*!40000 ALTER TABLE `inicio_color` DISABLE KEYS */;
INSERT INTO `inicio_color` VALUES (6,'Amarillo'),(1,'Azul'),(4,'Blanco'),(10,'Marrón'),(8,'Morado'),(7,'Naranja'),(3,'Negro'),(5,'Rojo'),(9,'Rosado'),(2,'Verde');
/*!40000 ALTER TABLE `inicio_color` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inicio_detalleventa`
--

DROP TABLE IF EXISTS `inicio_detalleventa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inicio_detalleventa` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `cantidad_vendida` double NOT NULL,
  `precio_unitario` double NOT NULL,
  `subtotal` double NOT NULL,
  `producto_id` bigint NOT NULL,
  `factura_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `inicio_detalleventa_producto_id_783cdb8b_fk_inicio_inventario_id` (`producto_id`),
  KEY `inicio_detalleventa_factura_id_75165137_fk_inicio_factura_id` (`factura_id`),
  CONSTRAINT `inicio_detalleventa_factura_id_75165137_fk_inicio_factura_id` FOREIGN KEY (`factura_id`) REFERENCES `inicio_factura` (`id`),
  CONSTRAINT `inicio_detalleventa_producto_id_783cdb8b_fk_inicio_inventario_id` FOREIGN KEY (`producto_id`) REFERENCES `inicio_inventario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inicio_detalleventa`
--

LOCK TABLES `inicio_detalleventa` WRITE;
/*!40000 ALTER TABLE `inicio_detalleventa` DISABLE KEYS */;
INSERT INTO `inicio_detalleventa` VALUES (2,12,1000,12000,2,1);
/*!40000 ALTER TABLE `inicio_detalleventa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inicio_factura`
--

DROP TABLE IF EXISTS `inicio_factura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inicio_factura` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `fecha_venta` datetime(6) NOT NULL,
  `total_factura` double NOT NULL,
  `cliente` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inicio_factura`
--

LOCK TABLES `inicio_factura` WRITE;
/*!40000 ALTER TABLE `inicio_factura` DISABLE KEYS */;
INSERT INTO `inicio_factura` VALUES (1,'2025-08-09 08:02:08.687141',12000,NULL);
/*!40000 ALTER TABLE `inicio_factura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inicio_fecha`
--

DROP TABLE IF EXISTS `inicio_fecha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inicio_fecha` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `hora` time(6) NOT NULL,
  `disponible` tinyint(1) NOT NULL,
  `fecha_hora` datetime(6) NOT NULL,
  `asunto` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inicio_fecha`
--

LOCK TABLES `inicio_fecha` WRITE;
/*!40000 ALTER TABLE `inicio_fecha` DISABLE KEYS */;
/*!40000 ALTER TABLE `inicio_fecha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inicio_genero`
--

DROP TABLE IF EXISTS `inicio_genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inicio_genero` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inicio_genero`
--

LOCK TABLES `inicio_genero` WRITE;
/*!40000 ALTER TABLE `inicio_genero` DISABLE KEYS */;
INSERT INTO `inicio_genero` VALUES (2,'Hombre'),(1,'Mujer'),(4,'Niña'),(3,'Niño'),(5,'Unisex');
/*!40000 ALTER TABLE `inicio_genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inicio_inventario`
--

DROP TABLE IF EXISTS `inicio_inventario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inicio_inventario` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `producto_id` bigint NOT NULL,
  `cantidad` double NOT NULL,
  `estado` smallint unsigned NOT NULL,
  `cantidad_almacen` double NOT NULL,
  `cantidad_bodega` double NOT NULL,
  `fecha_actualizacion` date NOT NULL,
  `color_inventario_id` bigint NOT NULL,
  `talla_inventario_id` bigint NOT NULL,
  `genero_inventario_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `inicio_inventario_producto_id_talla_invent_75782583_uniq` (`producto_id`,`talla_inventario_id`,`color_inventario_id`,`genero_inventario_id`),
  KEY `inicio_inventario_producto_id_de9d16f2` (`producto_id`),
  KEY `inicio_inventario_color_inventario_id_2b395f5d_fk_inicio_co` (`color_inventario_id`),
  KEY `inicio_inventario_talla_inventario_id_e112d4d0_fk_inicio_ta` (`talla_inventario_id`),
  KEY `inicio_inventario_genero_inventario_id_7512ac62_fk_inicio_ge` (`genero_inventario_id`),
  CONSTRAINT `inicio_inventario_color_inventario_id_2b395f5d_fk_inicio_co` FOREIGN KEY (`color_inventario_id`) REFERENCES `inicio_color` (`id`),
  CONSTRAINT `inicio_inventario_genero_inventario_id_7512ac62_fk_inicio_ge` FOREIGN KEY (`genero_inventario_id`) REFERENCES `inicio_genero` (`id`),
  CONSTRAINT `inicio_inventario_producto_id_de9d16f2_fk_inicio_producto_id` FOREIGN KEY (`producto_id`) REFERENCES `inicio_producto` (`id`),
  CONSTRAINT `inicio_inventario_talla_inventario_id_e112d4d0_fk_inicio_ta` FOREIGN KEY (`talla_inventario_id`) REFERENCES `inicio_talla` (`id`),
  CONSTRAINT `inicio_inventario_chk_1` CHECK ((`estado` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inicio_inventario`
--

LOCK TABLES `inicio_inventario` WRITE;
/*!40000 ALTER TABLE `inicio_inventario` DISABLE KEYS */;
INSERT INTO `inicio_inventario` VALUES (2,13,12,1,0,12,'2025-08-10',4,1,1);
/*!40000 ALTER TABLE `inicio_inventario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inicio_producto`
--

DROP TABLE IF EXISTS `inicio_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inicio_producto` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  `descripcion` longtext NOT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  `categoria_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `inicio_producto_categoria_id_dd512906_fk_inicio_categoria_id` (`categoria_id`),
  CONSTRAINT `inicio_producto_categoria_id_dd512906_fk_inicio_categoria_id` FOREIGN KEY (`categoria_id`) REFERENCES `inicio_categoria` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inicio_producto`
--

LOCK TABLES `inicio_producto` WRITE;
/*!40000 ALTER TABLE `inicio_producto` DISABLE KEYS */;
INSERT INTO `inicio_producto` VALUES (10,'fasdfas','fasfdas','productos/22456-coche-7680x4320_M1qKhjD.jpg',6),(13,'mocasin','hjghg','productos/1311137.png',6),(14,'mocasino','vghjfghf','productos/141964-novela_visual-espacio-550x310_y2aELUG.jpg',2);
/*!40000 ALTER TABLE `inicio_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inicio_producto_color`
--

DROP TABLE IF EXISTS `inicio_producto_color`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inicio_producto_color` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `producto_id` bigint NOT NULL,
  `color_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `inicio_producto_color_producto_id_color_id_e75113d3_uniq` (`producto_id`,`color_id`),
  KEY `inicio_producto_color_color_id_8c548abf_fk_inicio_color_id` (`color_id`),
  CONSTRAINT `inicio_producto_color_color_id_8c548abf_fk_inicio_color_id` FOREIGN KEY (`color_id`) REFERENCES `inicio_color` (`id`),
  CONSTRAINT `inicio_producto_color_producto_id_21c454d9_fk_inicio_producto_id` FOREIGN KEY (`producto_id`) REFERENCES `inicio_producto` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inicio_producto_color`
--

LOCK TABLES `inicio_producto_color` WRITE;
/*!40000 ALTER TABLE `inicio_producto_color` DISABLE KEYS */;
INSERT INTO `inicio_producto_color` VALUES (6,10,1),(7,10,6),(11,13,4),(12,13,6),(13,14,1),(14,14,4),(15,14,6);
/*!40000 ALTER TABLE `inicio_producto_color` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inicio_producto_genero`
--

DROP TABLE IF EXISTS `inicio_producto_genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inicio_producto_genero` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `producto_id` bigint NOT NULL,
  `genero_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `inicio_producto_genero_producto_id_genero_id_1d857ac6_uniq` (`producto_id`,`genero_id`),
  KEY `inicio_producto_genero_genero_id_56a6fe34_fk_inicio_genero_id` (`genero_id`),
  CONSTRAINT `inicio_producto_gene_producto_id_b966e21f_fk_inicio_pr` FOREIGN KEY (`producto_id`) REFERENCES `inicio_producto` (`id`),
  CONSTRAINT `inicio_producto_genero_genero_id_56a6fe34_fk_inicio_genero_id` FOREIGN KEY (`genero_id`) REFERENCES `inicio_genero` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inicio_producto_genero`
--

LOCK TABLES `inicio_producto_genero` WRITE;
/*!40000 ALTER TABLE `inicio_producto_genero` DISABLE KEYS */;
INSERT INTO `inicio_producto_genero` VALUES (8,10,1),(9,10,2),(10,10,4),(15,13,1),(16,13,2),(17,14,1),(18,14,2),(19,14,4);
/*!40000 ALTER TABLE `inicio_producto_genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inicio_producto_talla`
--

DROP TABLE IF EXISTS `inicio_producto_talla`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inicio_producto_talla` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `producto_id` bigint NOT NULL,
  `talla_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `inicio_producto_talla_producto_id_talla_id_2d487afb_uniq` (`producto_id`,`talla_id`),
  KEY `inicio_producto_talla_talla_id_d3effb47_fk_inicio_talla_id` (`talla_id`),
  CONSTRAINT `inicio_producto_talla_producto_id_1e522a11_fk_inicio_producto_id` FOREIGN KEY (`producto_id`) REFERENCES `inicio_producto` (`id`),
  CONSTRAINT `inicio_producto_talla_talla_id_d3effb47_fk_inicio_talla_id` FOREIGN KEY (`talla_id`) REFERENCES `inicio_talla` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inicio_producto_talla`
--

LOCK TABLES `inicio_producto_talla` WRITE;
/*!40000 ALTER TABLE `inicio_producto_talla` DISABLE KEYS */;
INSERT INTO `inicio_producto_talla` VALUES (9,10,1),(10,10,2),(11,10,13),(12,10,14),(18,13,1),(19,13,2),(20,13,3),(21,13,4),(22,14,1),(23,14,2),(24,14,3);
/*!40000 ALTER TABLE `inicio_producto_talla` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inicio_promocion`
--

DROP TABLE IF EXISTS `inicio_promocion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inicio_promocion` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `titulo` varchar(200) NOT NULL,
  `descripcion` longtext,
  `imagen` varchar(100) DEFAULT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `activo` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inicio_promocion`
--

LOCK TABLES `inicio_promocion` WRITE;
/*!40000 ALTER TABLE `inicio_promocion` DISABLE KEYS */;
INSERT INTO `inicio_promocion` VALUES (1,'PROMOCION 2X2','EN ESTA PROMOCION SOLO POR LLEVAR LA COMPRA DE UN SET DE BABUCHAS TE LLEVAS 3 MAS','promociones/1326803.png','2025-08-12','2025-10-14',1),(2,'Nueva','La mejor','promociones/1311137.png','2025-08-11','2025-08-12',1);
/*!40000 ALTER TABLE `inicio_promocion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inicio_talla`
--

DROP TABLE IF EXISTS `inicio_talla`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inicio_talla` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inicio_talla`
--

LOCK TABLES `inicio_talla` WRITE;
/*!40000 ALTER TABLE `inicio_talla` DISABLE KEYS */;
INSERT INTO `inicio_talla` VALUES (1,'18'),(2,'19'),(3,'20'),(4,'21'),(5,'22'),(6,'23'),(7,'24'),(8,'25'),(9,'26'),(10,'27'),(11,'28'),(12,'29'),(13,'30'),(14,'31'),(15,'32'),(16,'33'),(17,'34'),(18,'35'),(19,'36');
/*!40000 ALTER TABLE `inicio_talla` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inicio_userprofile`
--

DROP TABLE IF EXISTS `inicio_userprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inicio_userprofile` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `tipo` smallint unsigned NOT NULL,
  `documento` int NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `celular` varchar(15) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT NULL,
  `is_superuser` tinyint(1) DEFAULT NULL,
  `is_staff` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `numero` (`documento`),
  CONSTRAINT `inicio_userprofile_chk_1` CHECK ((`tipo` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inicio_userprofile`
--

LOCK TABLES `inicio_userprofile` WRITE;
/*!40000 ALTER TABLE `inicio_userprofile` DISABLE KEYS */;
INSERT INTO `inicio_userprofile` VALUES (1,'pbkdf2_sha256$1000000$eD052p1OydYPDdR82SvyF9$HdYlQU8uuGcXZNwDX71EXhLWyDFc8IP9jeHwgbk3Ld8=','2025-08-09 19:41:17.430610',2,1052837477,'Sebastian u','imagenes/1346906.png','usebas51@gmail.com',NULL,1,1,1,1);
/*!40000 ALTER TABLE `inicio_userprofile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inicio_userprofile_groups`
--

DROP TABLE IF EXISTS `inicio_userprofile_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inicio_userprofile_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `userprofile_id` bigint NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `inicio_userprofile_groups_userprofile_id_group_id_2bc8ae9d_uniq` (`userprofile_id`,`group_id`),
  KEY `inicio_userprofile_groups_group_id_def10b5d_fk_auth_group_id` (`group_id`),
  CONSTRAINT `inicio_userprofile_g_userprofile_id_c8df1890_fk_inicio_us` FOREIGN KEY (`userprofile_id`) REFERENCES `inicio_userprofile` (`id`),
  CONSTRAINT `inicio_userprofile_groups_group_id_def10b5d_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inicio_userprofile_groups`
--

LOCK TABLES `inicio_userprofile_groups` WRITE;
/*!40000 ALTER TABLE `inicio_userprofile_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `inicio_userprofile_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inicio_userprofile_user_permissions`
--

DROP TABLE IF EXISTS `inicio_userprofile_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inicio_userprofile_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `userprofile_id` bigint NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `inicio_userprofile_user__userprofile_id_permissio_07f9f84e_uniq` (`userprofile_id`,`permission_id`),
  KEY `inicio_userprofile_u_permission_id_d9e4d0ad_fk_auth_perm` (`permission_id`),
  CONSTRAINT `inicio_userprofile_u_permission_id_d9e4d0ad_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `inicio_userprofile_u_userprofile_id_d93f5b0d_fk_inicio_us` FOREIGN KEY (`userprofile_id`) REFERENCES `inicio_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inicio_userprofile_user_permissions`
--

LOCK TABLES `inicio_userprofile_user_permissions` WRITE;
/*!40000 ALTER TABLE `inicio_userprofile_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `inicio_userprofile_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_testimonial`
--

DROP TABLE IF EXISTS `web_testimonial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `web_testimonial` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `profession` varchar(100) NOT NULL,
  `rating` int NOT NULL,
  `testimonial` longtext NOT NULL,
  `avatar_color` varchar(7) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_featured` tinyint(1) NOT NULL,
  `is_example` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `ip_address` char(39) DEFAULT NULL,
  `is_approved` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_testimonial`
--

LOCK TABLES `web_testimonial` WRITE;
/*!40000 ALTER TABLE `web_testimonial` DISABLE KEYS */;
/*!40000 ALTER TABLE `web_testimonial` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-08-10 18:06:15
