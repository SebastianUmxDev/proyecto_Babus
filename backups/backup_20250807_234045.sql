-- MySQL dump 10.13  Distrib 9.0.1, for Win64 (x86_64)
--
-- Host: localhost    Database: babus1
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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add Testimonio',6,'add_testimonial'),(22,'Can change Testimonio',6,'change_testimonial'),(23,'Can delete Testimonio',6,'delete_testimonial'),(24,'Can view Testimonio',6,'view_testimonial'),(25,'Can add Insumo',7,'add_inventario'),(26,'Can change Insumo',7,'change_inventario'),(27,'Can delete Insumo',7,'delete_inventario'),(28,'Can view Insumo',7,'view_inventario'),(29,'Can add user profile',8,'add_userprofile'),(30,'Can change user profile',8,'change_userprofile'),(31,'Can delete user profile',8,'delete_userprofile'),(32,'Can view user profile',8,'view_userprofile'),(33,'Can add fecha',9,'add_fecha'),(34,'Can change fecha',9,'change_fecha'),(35,'Can delete fecha',9,'delete_fecha'),(36,'Can view fecha',9,'view_fecha'),(37,'Can add cita',10,'add_cita'),(38,'Can change cita',10,'change_cita'),(39,'Can delete cita',10,'delete_cita'),(40,'Can view cita',10,'view_cita'),(41,'Can add Factura',11,'add_factura'),(42,'Can change Factura',11,'change_factura'),(43,'Can delete Factura',11,'delete_factura'),(44,'Can view Factura',11,'view_factura'),(45,'Can add Detalle de Venta',12,'add_detalleventa'),(46,'Can change Detalle de Venta',12,'change_detalleventa'),(47,'Can delete Detalle de Venta',12,'delete_detalleventa'),(48,'Can view Detalle de Venta',12,'view_detalleventa');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(10,'inicio','cita'),(12,'inicio','detalleventa'),(11,'inicio','factura'),(9,'inicio','fecha'),(7,'inicio','inventario'),(8,'inicio','userprofile'),(5,'sessions','session'),(6,'web','testimonial');
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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2025-08-08 00:57:19.966770'),(2,'contenttypes','0002_remove_content_type_name','2025-08-08 00:57:20.104018'),(3,'auth','0001_initial','2025-08-08 00:57:20.676766'),(4,'auth','0002_alter_permission_name_max_length','2025-08-08 00:57:20.790529'),(5,'auth','0003_alter_user_email_max_length','2025-08-08 00:57:20.802709'),(6,'auth','0004_alter_user_username_opts','2025-08-08 00:57:20.813704'),(7,'auth','0005_alter_user_last_login_null','2025-08-08 00:57:20.823991'),(8,'auth','0006_require_contenttypes_0002','2025-08-08 00:57:20.829126'),(9,'auth','0007_alter_validators_add_error_messages','2025-08-08 00:57:20.839016'),(10,'auth','0008_alter_user_username_max_length','2025-08-08 00:57:20.849554'),(11,'auth','0009_alter_user_last_name_max_length','2025-08-08 00:57:20.859942'),(12,'auth','0010_alter_group_name_max_length','2025-08-08 00:57:20.885726'),(13,'auth','0011_update_proxy_permissions','2025-08-08 00:57:20.897655'),(14,'auth','0012_alter_user_first_name_max_length','2025-08-08 00:57:20.910863'),(15,'inicio','0001_initial','2025-08-08 00:57:22.097682'),(16,'admin','0001_initial','2025-08-08 00:57:22.356430'),(17,'admin','0002_logentry_remove_auto_add','2025-08-08 00:57:22.373748'),(18,'admin','0003_logentry_add_action_flag_choices','2025-08-08 00:57:22.392463'),(19,'inicio','0002_cita_google_event_id','2025-08-08 00:57:22.434667'),(20,'inicio','0003_alter_cita_estado','2025-08-08 00:57:22.454530'),(21,'inicio','0004_alter_userprofile_email','2025-08-08 00:57:22.559028'),(22,'inicio','0005_alter_inventario_estado','2025-08-08 00:57:22.565615'),(23,'inicio','0006_alter_inventario_cantidad','2025-08-08 00:57:22.571559'),(24,'inicio','0007_rename_is_active_userprofile_estado_and_more','2025-08-08 00:57:22.753172'),(25,'inicio','0008_rename_estado_userprofile_is_active','2025-08-08 00:57:22.820529'),(26,'inicio','0009_userprofile_estado','2025-08-08 00:57:23.014666'),(27,'inicio','0010_alter_userprofile_estado','2025-08-08 00:57:23.030457'),(28,'inicio','0011_rename_email_userprofile_correo_and_more','2025-08-08 00:57:23.191064'),(29,'inicio','0012_remove_userprofile_estado','2025-08-08 00:57:23.252839'),(30,'inicio','0013_rename_numero_userprofile_documento_and_more','2025-08-08 00:57:23.388622'),(31,'inicio','0014_alter_userprofile_documento','2025-08-08 00:57:23.536419'),(32,'inicio','0015_alter_userprofile_documento','2025-08-08 00:57:23.561644'),(33,'inicio','0016_alter_userprofile_documento','2025-08-08 00:57:23.581539'),(34,'inicio','0017_alter_cita_motivo','2025-08-08 00:57:23.599057'),(35,'inicio','0018_fecha_final_fecha_inicio','2025-08-08 00:57:23.697504'),(36,'inicio','0019_alter_fecha_unique_together','2025-08-08 00:57:23.773006'),(37,'inicio','0020_alter_fecha_final_alter_fecha_inicio','2025-08-08 00:57:23.982561'),(38,'inicio','0021_fecha_fecha_hora_alter_fecha_final_and_more','2025-08-08 00:57:24.296413'),(39,'inicio','0022_alter_fecha_fecha_hora','2025-08-08 00:57:24.304917'),(40,'inicio','0023_alter_fecha_unique_together_remove_fecha_final_and_more','2025-08-08 00:57:24.446828'),(41,'inicio','0024_alter_cita_estado','2025-08-08 00:57:24.466373'),(42,'inicio','0025_alter_cita_estado','2025-08-08 00:57:24.488588'),(43,'inicio','0026_alter_cita_estado','2025-08-08 00:57:24.507117'),(44,'inicio','0027_userprofile_is_staff','2025-08-08 00:57:24.614986'),(45,'inicio','0028_alter_inventario_cantidad','2025-08-08 00:57:24.622086'),(46,'inicio','0029_inventario_cantidad_almacen_and_more','2025-08-08 00:57:24.749639'),(47,'inicio','0030_alter_inventario_options_venta','2025-08-08 00:57:24.882846'),(48,'inicio','0031_factura_detalleventa_delete_venta','2025-08-08 00:57:25.167714'),(49,'inicio','0032_remove_userprofile_acudiente_and_more','2025-08-08 00:57:25.397904'),(50,'inicio','0033_factura_cliente','2025-08-08 00:57:25.432695'),(51,'inicio','0034_alter_fecha_options_alter_fecha_unique_together_and_more','2025-08-08 00:57:25.531644'),(52,'inicio','0035_alter_fecha_options_alter_fecha_unique_together_and_more','2025-08-08 00:57:25.603308'),(53,'sessions','0001_initial','2025-08-08 00:57:25.660370'),(54,'web','0001_initial','2025-08-08 00:57:25.768464'),(55,'web','0002_alter_testimonial_options_and_more','2025-08-08 00:57:25.933721'),(56,'inicio','0036_alter_fecha_options_alter_fecha_unique_together_and_more','2025-08-08 01:01:18.737185');
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
INSERT INTO `django_session` VALUES ('4w5by64s4ptckqg2auf73rq2zrg7ic97','.eJyNkl9zojAUxb-LzwtCIIB9w4pVtIKiVmZnhwkkQAAJJbgUO_3uG7fdv0_NY-49v3Pv3PM6itCly6MLJ21E8ehupI6-_P0Xo6Qk9a2AC1RnTE5Y3bU0lm8t8keVy48Mk2r60fsPIEc8F2oCFF2dED1NDB0mGiK6llpQJYkVA50oCbFik6iWbqUxIbEBzUSDwBQPmwAjhQho0hJM6o6iio_uXkcdE2aCPCAwkZFiB9rC2Awn199OgbLxFtIG5OkMz41tedhTP6xh3mf7kjgS3LLB-u5NBxjh_tR2uuPhe6efzsrZwaj5cYsW_rAedhtN9dXANJslD2daRF5I4_o2KKpM88u9el1aNASmvbF4GJ7dHX0CAXSR59YLb7HzzaVba2lxKlfzgc438VUKM1pe0X0WrmzsBPbODubbxcMJPNLcsHbsop3WSdR1wXTdNcWFZYpqQrF3S9KW8Dz6tbA6Hisq8qN6HruxFK0EcClg9oPtBJt-Lq0ny7Z4Ikd49lpj3uAV1CKnOznYarXq-ngG-9Q9pjQYpNTlyAU9dK8MP09ejlvpucg02wAHFurC-adjdGmpcM27ruF34zG7nRbIGWNZRVBDuUjEefw-m7hRRcWJ3pMEFEvVJjpQTWMiKaVVwsqcxAV_ZiDtUKxDU1ca4_mSZBglMmoa_kG95eYWM0G6wf9gOREZ6AT6wbsP_JN0hN62OLjlyxIMSEFDvd5JrPXIIXUWQsUT1hCRla-_h-_7_v_Jb-uMszOildwShFldDUL6OcGZYZp-vr1CMRHZ_fb29gO2qCmU:1ukBRo:wUrhYYB85fen6e0Aym_biVRQyWBhcAbdHUzHBx6urLY','2025-08-22 00:59:04.316534');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inicio_detalleventa`
--

LOCK TABLES `inicio_detalleventa` WRITE;
/*!40000 ALTER TABLE `inicio_detalleventa` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inicio_factura`
--

LOCK TABLES `inicio_factura` WRITE;
/*!40000 ALTER TABLE `inicio_factura` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inicio_fecha`
--

LOCK TABLES `inicio_fecha` WRITE;
/*!40000 ALTER TABLE `inicio_fecha` DISABLE KEYS */;
INSERT INTO `inicio_fecha` VALUES (6,'2025-08-07','23:56:00.000000',1,'2025-08-08 04:56:00.000000','ASUNTO'),(7,'2025-08-08','14:00:00.000000',1,'2025-08-08 19:00:00.000000','2'),(8,'2025-08-07','12:05:00.000000',1,'2025-08-07 17:05:00.000000','ASUNTO1'),(9,'2025-08-07','13:06:00.000000',1,'2025-08-07 18:06:00.000000','FASDAS'),(10,'2025-08-07','23:13:00.000000',1,'2025-08-08 04:13:00.000000','FASDAS2');
/*!40000 ALTER TABLE `inicio_fecha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inicio_inventario`
--

DROP TABLE IF EXISTS `inicio_inventario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inicio_inventario` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `producto` varchar(150) NOT NULL,
  `cantidad` double NOT NULL,
  `estado` smallint unsigned NOT NULL,
  `cantidad_almacen` double NOT NULL,
  `cantidad_bodega` double NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `inicio_inventario_chk_1` CHECK ((`estado` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inicio_inventario`
--

LOCK TABLES `inicio_inventario` WRITE;
/*!40000 ALTER TABLE `inicio_inventario` DISABLE KEYS */;
/*!40000 ALTER TABLE `inicio_inventario` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inicio_userprofile`
--

LOCK TABLES `inicio_userprofile` WRITE;
/*!40000 ALTER TABLE `inicio_userprofile` DISABLE KEYS */;
INSERT INTO `inicio_userprofile` VALUES (1,'pbkdf2_sha256$1000000$ZlwKY6eOCRJr2oMXKkB0vv$Pr6aQ3BdyAIS4Zrxg7ywy987zgoWnfxD0G3HnDKkRac=','2025-08-08 00:58:41.532396',2,1052837477,'Sebastian','','usebas51@gmail.com',NULL,1,1,1,1),(2,'',NULL,2,1052837476,'Catherine','imagenes/141964-novela_visual-espacio-550x310_mbB44dA.jpg','usebas51@gmail.com','1231231231',1,0,0,0);
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

-- Dump completed on 2025-08-07 23:40:45
