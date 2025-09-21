-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: instacook
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `ic_alergenos`
--

DROP TABLE IF EXISTS `ic_alergenos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ic_alergenos` (
  `idAlergeno` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`idAlergeno`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ic_alergenos`
--

LOCK TABLES `ic_alergenos` WRITE;
/*!40000 ALTER TABLE `ic_alergenos` DISABLE KEYS */;
INSERT INTO `ic_alergenos` VALUES (1,'Gluten'),(2,'Huevos'),(3,'Pescado'),(4,'Lácteos'),(5,'Crustáceos'),(6,'Mostaza'),(7,'Cacahuete'),(8,'Frutos de cáscara'),(9,'Apio'),(10,'Sésamo'),(11,'Altramuces'),(12,'Moluscos'),(13,'Soja'),(14,'Sulfitos');
/*!40000 ALTER TABLE `ic_alergenos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ic_categorias`
--

DROP TABLE IF EXISTS `ic_categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ic_categorias` (
  `idCategoria` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`idCategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ic_categorias`
--

LOCK TABLES `ic_categorias` WRITE;
/*!40000 ALTER TABLE `ic_categorias` DISABLE KEYS */;
INSERT INTO `ic_categorias` VALUES (1,'Postres'),(2,'Pastas'),(3,'Carnes '),(4,'Pescados'),(5,'Arroces'),(6,'Sopas'),(7,'Ensaladas'),(8,'Verduras y Hortalizas'),(9,'Salsas'),(10,'Tortillas'),(11,'Guisos'),(12,'Aperitivos'),(13,'Panes'),(14,'Masas'),(15,'Legumbres'),(16,'Rebozados'),(17,'Platos Internacionales'),(18,'Vegano'),(19,'Vegetariano'),(20,'Sin Gluten'),(21,'Desayunos'),(22,'Brunch'),(23,'Snacks'),(24,'Comida Rápida'),(25,'Batidos y Smoothies'),(26,'Tapas'),(27,'Comida Asiática'),(28,'Comida Mexicana'),(29,'Comida Italiana'),(30,'Navideños'),(31,'Fiestas y Celebraciones'),(32,'Para Niños'),(33,'Bebidas'),(34,'Helados y Sorbetes'),(35,'Recetas al Horno'),(36,'Recetas a la Parrilla'),(37,'Microondas'),(38,'Bajas en Calorías'),(39,'Keto'),(40,'Sin Lactosa');
/*!40000 ALTER TABLE `ic_categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ic_ingredientes`
--

DROP TABLE IF EXISTS `ic_ingredientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ic_ingredientes` (
  `idIngrediente` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idIngrediente`)
) ENGINE=InnoDB AUTO_INCREMENT=296 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ic_ingredientes`
--

LOCK TABLES `ic_ingredientes` WRITE;
/*!40000 ALTER TABLE `ic_ingredientes` DISABLE KEYS */;
INSERT INTO `ic_ingredientes` VALUES (1,'Harina'),(2,'Azúcar'),(3,'Sal'),(4,'Aceite de oliva'),(5,'Levadura química'),(6,'Huevos'),(7,'Leche'),(8,'Mantequilla'),(9,'Queso'),(10,'Tomate'),(11,'Cebolla'),(12,'Ajo'),(13,'Pimienta negra'),(14,'Orégano'),(15,'Albahaca'),(16,'Perejil'),(17,'Pollo'),(18,'Carne molida'),(19,'Merluza'),(20,'Gambas'),(21,'Zanahoria'),(22,'Patatas'),(23,'Espinacas'),(24,'Brócoli'),(25,'Champiñones'),(26,'Arroz'),(27,'Macarrones'),(28,'Nata líquida'),(29,'Vinagre balsámico'),(30,'Salsa de soja'),(31,'Pan rallado'),(32,'Maíz'),(33,'Lentejas'),(34,'Garbanzos'),(35,'Alubias'),(36,'Tofu'),(37,'Yogur natural'),(38,'Miel'),(39,'Mostaza'),(40,'Ketchup'),(41,'Mayonesa'),(42,'Salsa BBQ'),(43,'Pimiento amarillo'),(44,'Tomillo'),(45,'Canela'),(46,'Nuez moscada'),(47,'Pera'),(48,'Cilantro'),(49,'Limón'),(50,'Lima'),(51,'Naranja'),(52,'Manzana'),(53,'Plátano'),(54,'Fresas'),(55,'Arándanos'),(56,'Uvas'),(57,'Piña'),(58,'Coco rallado'),(59,'Almendras'),(60,'Nueces'),(61,'Avellanas'),(62,'Anacardos'),(63,'Chocolate amargo'),(64,'Chocolate con leche'),(65,'Gelatina'),(66,'Café'),(67,'Chocolate blanco'),(68,'Agua'),(69,'Vino tinto'),(70,'Vino blanco'),(71,'Cerveza'),(72,'Ron'),(73,'Whisky'),(74,'Vodka'),(75,'Hielo'),(76,'Hojaldre'),(77,'Masa para pizza'),(78,'Salsa de tomate'),(79,'Queso mozzarella'),(80,'Queso parmesano'),(81,'Queso crema'),(82,'Jamón cocido'),(83,'Tocino'),(84,'Salchicha'),(85,'Pepperoni'),(86,'Atún en lata'),(87,'Alcaparras'),(88,'Aceitunas negras'),(89,'Aceitunas verdes'),(90,'Pepinillos'),(91,'Espárragos'),(92,'Berenjena'),(93,'Calabacín'),(94,'Pimiento rojo'),(95,'Pimiento verde'),(96,'Repollo'),(97,'Coliflor'),(98,'Nata montada'),(99,'Cacao en polvo'),(100,'Azúcar glas'),(101,'Sésamo'),(102,'Chía'),(103,'Linaza'),(104,'Quinoa'),(105,'Trigo sarraceno'),(106,'Avena'),(107,'Cuscús'),(108,'Polvo de hornear'),(109,'Bicarbonato de sodio'),(110,'Extracto de vainilla'),(111,'Leche condensada'),(112,'Leche evaporada'),(113,'Crema agria'),(114,'Requesón'),(115,'Ricotta'),(116,'Queso azul'),(117,'Queso cheddar'),(118,'Queso gouda'),(119,'Queso brie'),(120,'Queso camembert'),(121,'Col'),(122,'Huevos de codorniz'),(123,'Tortillas de maíz'),(124,'Tortillas de harina'),(125,'Pasta de curry'),(126,'Leche de coco'),(127,'Pasta de miso'),(128,'Tahini'),(129,'Espaguetis'),(130,'Arroz integral'),(131,'Seitán'),(132,'Tomate frito'),(133,'Pimientos picantes'),(134,'Cúrcuma'),(135,'Jengibre fresco'),(136,'Tomate triturado'),(137,'Aceite de girasol'),(138,'Hojas de laurel'),(139,'Cuajada'),(140,'Romero'),(141,'Eneldo'),(142,'Comino'),(143,'Curry en polvo'),(144,'Paprika'),(145,'Wasabi'),(146,'Algas nori'),(147,'Algas wakame'),(148,'Vinagre de arroz'),(149,'Mirin'),(150,'Sake'),(151,'Salmón'),(152,'Atún fresco'),(153,'Vainilla'),(154,'Bacalao'),(155,'Trucha'),(156,'Pez espada'),(157,'Sardinas'),(158,'Anchoas'),(159,'Róbalo'),(160,'Lenguado'),(161,'Caballa'),(162,'Dorado'),(163,'Bonito'),(164,'Mero'),(165,'Anguila'),(166,'Pulpo'),(167,'Calamar'),(168,'Sepia'),(169,'Mejillones'),(170,'Almejas'),(171,'Vieiras'),(172,'Bogavante'),(173,'Langosta'),(174,'Cangrejo'),(175,'Pargo'),(176,'Tilapia'),(177,'Pez gato'),(178,'Carne de res'),(179,'Carne de cerdo'),(180,'Carne de cordero'),(181,'Carne de ternera'),(182,'Carne de cabra'),(183,'Pato'),(184,'Pavo'),(185,'Conejo'),(186,'Codorniz'),(187,'Jabalí'),(188,'Venado'),(189,'Buey'),(190,'Chuletón de res'),(191,'Costillas de cerdo'),(192,'Filete de ternera'),(193,'Lomo de cerdo'),(194,'Pechuga de pollo'),(195,'Muslo de pollo'),(196,'Alas de pollo'),(197,'Mollejas'),(198,'Hígado de res'),(199,'Riñones de cerdo'),(200,'Tocino ahumado'),(201,'Queso feta'),(202,'Queso manchego'),(203,'Leche entera'),(204,'Leche descremada'),(205,'Crema pastelera'),(206,'Salsa inglesa'),(207,'Salsa teriyaki'),(208,'Pasta de tomate'),(209,'Salsa picante'),(210,'Salsa tártara'),(211,'Salsa de ajo'),(212,'Salsa pesto'),(213,'Salsa bechamel'),(214,'Salsa de champiñones'),(215,'Pan de molde'),(216,'Pan integral'),(217,'Bizcochuelo'),(218,'Masa filo'),(219,'Galletas'),(220,'Croissants'),(221,'Helado de vainilla'),(222,'Helado de chocolate'),(223,'Frutas confitadas'),(224,'Pasas'),(225,'Malvaviscos'),(226,'Caramelo líquido'),(227,'Coulis de frutos rojos'),(228,'Azúcar moreno'),(229,'Aceite vegetal'),(230,'Aceite de sésamo'),(231,'Aceite de coco'),(232,'Grasa de pato'),(233,'Manteca de cerdo'),(234,'Caldo de pollo'),(235,'Caldo de pescado'),(236,'Caldo de paella'),(237,'Caldo de cocido'),(238,'Apio'),(239,'Láminas lasaña'),(240,'Pepino'),(241,'Vinagre'),(242,'Pan'),(243,'Calabaza'),(244,'Caldo de verduras'),(245,'Salsa césar'),(246,'Lechuga'),(247,'Jamón serrano'),(248,'Maizena'),(249,'Pan hamburguesa'),(250,'Guanciale'),(251,'Bacon'),(252,'Yemas'),(253,'Puerro'),(254,'Setas'),(255,'Masa empanadas'),(256,'Huevo cocido'),(257,'Pimentón dulce'),(258,'Chile en polvo'),(259,'Mermelada melocotón'),(260,'Mermelada de fresa'),(261,'Masa empanada'),(262,'Langostinos'),(263,'Levadura freca'),(264,'Levadura seca'),(265,'Chiule jalapeño'),(266,'Pimentón picante'),(267,'Caldo de carne'),(268,'Frijoles cocidos'),(269,'Frijoles '),(270,'Carne picada ternera'),(271,'Carne picada mixta'),(272,'Pasta de colores'),(273,'Tomate cherry'),(274,'Guisantes'),(275,'Guindilla'),(276,'Masa quebrada'),(277,'Pimientos de piquillo'),(278,'Boletus'),(279,'Cigala'),(280,'Azafrán'),(281,'Rape'),(282,'Jalapeños'),(283,'Sazonador'),(284,'Piñones'),(285,'Aguacate'),(286,'Cebolla Morada'),(287,'Mango');
/*!40000 ALTER TABLE `ic_ingredientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ic_ingredientesconalergenos`
--

DROP TABLE IF EXISTS `ic_ingredientesconalergenos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ic_ingredientesconalergenos` (
  `idIngrediente` int NOT NULL,
  `idAlergeno` int NOT NULL,
  PRIMARY KEY (`idIngrediente`,`idAlergeno`),
  KEY `idAlergeno` (`idAlergeno`),
  CONSTRAINT `ic_ingredientesconalergenos_ibfk_1` FOREIGN KEY (`idIngrediente`) REFERENCES `ic_ingredientes` (`idIngrediente`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `ic_ingredientesconalergenos_ibfk_2` FOREIGN KEY (`idAlergeno`) REFERENCES `ic_alergenos` (`idAlergeno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ic_ingredientesconalergenos`
--

LOCK TABLES `ic_ingredientesconalergenos` WRITE;
/*!40000 ALTER TABLE `ic_ingredientesconalergenos` DISABLE KEYS */;
INSERT INTO `ic_ingredientesconalergenos` VALUES (1,1),(26,1),(27,1),(76,1),(77,1),(215,1),(216,1),(217,1),(218,1),(219,1),(220,1),(239,1),(242,1),(249,1),(255,1),(261,1),(272,1),(276,1),(6,2),(122,2),(205,2),(217,2),(219,2),(239,2),(242,2),(245,2),(249,2),(252,2),(255,2),(256,2),(261,2),(272,2),(276,2),(151,3),(152,3),(154,3),(155,3),(156,3),(157,3),(158,3),(159,3),(160,3),(161,3),(162,3),(163,3),(164,3),(165,3),(175,3),(176,3),(177,3),(235,3),(236,3),(245,3),(281,3),(7,4),(28,4),(37,4),(81,4),(117,4),(118,4),(119,4),(120,4),(121,4),(201,4),(202,4),(203,4),(204,4),(205,4),(221,4),(222,4),(239,4),(242,4),(245,4),(249,4),(255,4),(261,4),(276,4),(20,5),(172,5),(173,5),(174,5),(236,5),(262,5),(279,5),(39,6),(210,6),(245,6),(59,8),(60,8),(61,8),(62,8),(9,9),(234,9),(235,9),(236,9),(237,9),(238,9),(101,10),(242,10),(249,10),(166,12),(167,12),(168,12),(169,12),(170,12),(171,12),(30,13),(127,13),(128,13),(129,13),(130,13),(132,13),(234,14),(235,14),(236,14),(237,14),(241,14),(245,14),(247,14),(250,14),(251,14),(259,14),(260,14),(267,14),(270,14),(271,14);
/*!40000 ALTER TABLE `ic_ingredientesconalergenos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ic_ingredientesporreceta`
--

DROP TABLE IF EXISTS `ic_ingredientesporreceta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ic_ingredientesporreceta` (
  `idReceta` int NOT NULL,
  `idIngrediente` int NOT NULL,
  `cantidad` varchar(50) DEFAULT NULL,
  `medida` varchar(20) NOT NULL,
  PRIMARY KEY (`idReceta`,`idIngrediente`),
  KEY `idIngrediente` (`idIngrediente`),
  CONSTRAINT `ic_ingredientesporreceta_ibfk_1` FOREIGN KEY (`idReceta`) REFERENCES `ic_recetas` (`idReceta`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `ic_ingredientesporreceta_ibfk_2` FOREIGN KEY (`idIngrediente`) REFERENCES `ic_ingredientes` (`idIngrediente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ic_ingredientesporreceta`
--

LOCK TABLES `ic_ingredientesporreceta` WRITE;
/*!40000 ALTER TABLE `ic_ingredientesporreceta` DISABLE KEYS */;
INSERT INTO `ic_ingredientesporreceta` VALUES (1,4,'1','ml'),(1,11,'1','ud'),(1,22,'3','uds'),(1,78,'3','uds'),(2,12,'4','uds'),(2,13,'1','pizca'),(2,17,'300','g'),(2,20,'12','uds'),(2,26,'340','g'),(2,78,'150','g'),(2,94,'70','g'),(2,95,'60','g'),(2,167,'200','g'),(2,168,'8','uds'),(2,235,'1','l'),(3,1,'80','g'),(3,7,'800','ml'),(3,8,'80','g'),(3,12,'2','uds'),(3,13,'1','cucharadita'),(3,21,'1','ud'),(3,79,'50','g'),(3,136,'650','g'),(3,181,'800','g'),(3,238,'2','uds'),(3,239,'12','uds'),(4,4,'50','ml'),(4,10,'1','kg'),(4,12,'1','ud'),(4,68,'300','ml'),(4,95,'1','ud'),(4,240,'100','g'),(4,241,'25','ml'),(4,242,'70','g'),(5,8,'10','g'),(5,10,'200','g'),(5,11,'100','g'),(5,12,'2','uds'),(5,17,'400','g'),(5,126,'200','ml'),(5,143,'1','chucharada'),(6,4,'1','cucharada'),(6,11,'50','g'),(6,12,'1','ud'),(6,22,'50','g'),(6,134,'1/2','cucharadita'),(6,142,'1/2','cucharadita'),(6,243,'375','g'),(6,244,'500','ml'),(7,10,'3','g'),(7,80,'15','g'),(7,242,'2','rebanadas'),(7,245,'100','g'),(7,246,'200','g'),(8,1,'50','g'),(8,6,'1','ud'),(8,8,'50','g'),(8,11,'25','g'),(8,12,'1','ud'),(8,31,'100','g'),(8,203,'50','ml'),(8,247,'85','g'),(9,4,'1','cucharadita'),(9,15,'8','hojas'),(9,77,'1','ud'),(9,79,'125','g'),(9,136,'200','g'),(10,2,'150','g'),(10,6,'3','uds'),(10,28,'200','ml'),(10,81,'500','g'),(10,248,'30','g'),(11,4,'10','g'),(11,10,'1','ud'),(11,11,'1','ud'),(11,14,'1','cucharadita'),(11,49,'1','ud'),(11,88,'50','g'),(11,201,'200','g'),(11,240,'1','ud'),(12,11,'25','g'),(12,13,'1','pizca'),(12,18,'100','g'),(12,41,'1','cucharada'),(12,90,'1','ud'),(12,117,'1','ud'),(12,135,'1','ud'),(12,246,'50','g'),(12,249,'1','ud'),(13,4,'15','ml'),(13,11,'1/2','ud'),(13,13,'1','cucharadita'),(13,43,'1/2','ud'),(13,44,'4','uds'),(13,49,'1','ud'),(13,94,'1/2','ud'),(13,95,'1/2','ud'),(13,151,'300','g'),(14,13,'1','pizca'),(14,80,'25','g'),(14,129,'100','g'),(14,250,'30','g'),(14,252,'2','ud'),(15,1,'240','g'),(15,2,'250','g'),(15,4,'145','ml'),(15,5,'8','g'),(15,6,'3','uds'),(15,37,'1','ud'),(16,4,'30','ml'),(16,11,'1/2','ud'),(16,12,'6','uds'),(16,14,'1','cucharadita'),(16,17,'1','kg'),(16,22,'4','uds'),(16,70,'200','ml'),(16,140,'1','ud'),(17,4,'20','g'),(17,12,'1','ud'),(17,21,'75','g'),(17,93,'75','g'),(17,121,'50','g'),(17,238,'10','g'),(17,244,'500','ml'),(17,253,'40','g'),(18,8,'40','g'),(18,11,'3','uds'),(18,26,'350','g'),(18,70,'200','ml'),(18,80,'100','g'),(18,244,'1','l'),(18,254,'250','g'),(19,6,'1','ud'),(19,11,'1','ud'),(19,86,'150','g'),(19,132,'175','g'),(19,255,'18','uds'),(19,256,'2','uds'),(20,1,'160','g'),(20,2,'200','g'),(20,6,'4','uds'),(20,8,'150','g'),(20,63,'180','g'),(20,99,'25','g'),(20,228,'80','uds'),(21,11,'1','ud'),(21,13,'1','pizca'),(21,17,'500','g'),(21,43,'1','ud'),(21,50,'1','ud'),(21,94,'1','ud'),(21,95,'1','ud'),(21,124,'8','uds'),(21,142,'1','cucharada'),(21,257,'1','cucharadita'),(22,2,'80','g'),(22,7,'1','l'),(22,8,'80','g'),(22,26,'140','g'),(22,45,'2','uds'),(22,49,'1','ud'),(23,6,'6','uds'),(23,11,'1/2','ud'),(23,41,'50','g'),(23,86,'2','uds'),(23,89,'3','uds'),(24,1,'180','g'),(24,2,'100','g'),(24,5,'1','cucharadita'),(24,6,'2','uds'),(24,7,'180','ml'),(24,8,'1','cucharada'),(24,49,'1','ud'),(24,52,'5','uds'),(24,259,'30','g'),(25,4,'3','cucharadas'),(25,11,'1','ud'),(25,21,'2','uds'),(25,68,'300','ml'),(25,93,'250','g'),(25,94,'1/2','ud'),(25,107,'300','g'),(25,143,'1','cucharadita'),(26,4,'150','ml'),(26,6,'1','ud'),(26,11,'300','g'),(26,86,'250','g'),(26,94,'1/2','ud'),(26,257,'1','cucharadita'),(27,4,'80','g'),(27,11,'300','g'),(27,12,'6','uds'),(27,19,'500','g'),(27,21,'200','g'),(27,68,'2','l'),(27,70,'175','ml'),(27,95,'100','g'),(27,136,'100','g'),(27,169,'500','g'),(27,170,'400','g'),(27,242,'50','g'),(27,253,'150','g'),(27,262,'300','g'),(28,1,'120','g'),(28,2,'20','g'),(28,5,'8','g'),(28,6,'1','ud'),(28,7,'160','ml'),(28,8,'20','g'),(28,153,'1/2','cucharadita'),(29,1,'375','g'),(29,2,'5','g'),(29,3,'6','g'),(29,8,'20','g'),(29,68,'215','ml'),(29,264,'7','g'),(30,4,'45','g'),(30,11,'250','g'),(30,12,'2','ud'),(30,18,'500','g'),(30,142,'1','cucharadita'),(30,234,'300','ml'),(30,257,'1','cucharadita'),(30,258,'1','cucharadita'),(30,265,'20','g'),(30,266,'1','cucharadita'),(30,268,'300','g'),(30,270,'400','g'),(31,2,'15','g'),(31,6,'4','uds'),(31,28,'200','ml'),(31,63,'180','g'),(32,1,'50','g'),(32,4,'2','cucharadas'),(32,6,'1','ud'),(32,8,'30','g'),(32,11,'80','g'),(32,12,'1','ud'),(32,16,'1','cucharada'),(32,31,'50','g'),(32,267,'400','ml'),(32,271,'500','g'),(33,41,'1','cucharada'),(33,82,'50','g'),(33,89,'6','uds'),(33,256,'1','g'),(33,272,'50','g'),(33,273,'4','uds'),(33,274,'30','g'),(34,1,'180','g'),(34,3,'4','g'),(34,6,'2','ud'),(34,7,'500','ml'),(34,8,'1','cucharada'),(35,4,'50','ml'),(35,12,'2','uds'),(35,16,'1','ud'),(35,154,'300','g'),(35,275,'1','ud'),(36,11,'1','ud'),(36,12,'3','ud'),(36,15,'1','ud'),(36,27,'160','g'),(36,68,'250','ml'),(36,79,'130','g'),(36,136,'800','g'),(37,4,'2','cucharadas'),(37,6,'3','uds'),(37,23,'300','g'),(37,79,'200','g'),(37,112,'200','g'),(37,276,'1','ud'),(38,8,'1','cucharada'),(38,10,'1','ud'),(38,17,'200','g'),(38,41,'1','cucharada'),(38,82,'2','uds'),(38,118,'4','uds'),(38,215,'8','ud'),(38,246,'3','uds'),(38,251,'6','uds'),(39,1,'40','g'),(39,4,'4','cucharadas'),(39,7,'400','ml'),(39,11,'1','ud'),(39,12,'2','uds'),(39,28,'200','ml'),(39,70,'100','ml'),(39,95,'1/2','ud'),(39,154,'300','g'),(39,277,'15','ud'),(40,1,'240','g'),(40,2,'160','g'),(40,5,'2,5','cucharaditas'),(40,6,'4','uds'),(40,8,'160','g'),(40,21,'320','g'),(40,45,'2','cucharaditas'),(40,81,'160','g'),(40,100,'320','g'),(40,137,'240','g'),(40,228,'160','g'),(41,45,'1','cucharadita'),(41,53,'2','ud'),(41,106,'100','g'),(42,4,'30','ml'),(42,11,'1/2','ud'),(42,42,'120','g'),(42,77,'1','ud'),(42,79,'100','g'),(42,95,'1/2','ud'),(42,136,'80','g'),(42,251,'50','g'),(42,270,'200','g'),(43,10,'1','ud'),(43,26,'150','g'),(43,32,'50','g'),(43,41,'1','cucharada'),(43,86,'1','ud'),(44,8,'40','g'),(44,63,'150','g'),(44,64,'150','g'),(44,67,'150','g'),(44,98,'450','g'),(44,139,'3','ud'),(44,203,'450','g'),(44,219,'80','g'),(45,2,'125','g'),(45,3,'125','g'),(45,4,'1','cucharadita'),(45,141,'2','cucharadas'),(45,151,'500','g'),(46,11,'1/2','ud'),(46,12,'1','ud'),(46,21,'3','uds'),(46,33,'250','g'),(46,43,'1/2','ud'),(46,94,'1/2','ud'),(46,95,'1/2','ud'),(46,136,'1','ud'),(46,238,'15','g'),(46,253,'1/2','ud'),(46,267,'1','l'),(47,3,'1','pizca'),(47,6,'2','ud'),(47,8,'10','g'),(48,6,'2','uds'),(48,8,'10','g'),(49,1,'1','cucharada'),(49,4,'30','ml'),(49,22,'500','g'),(49,234,'250','ml'),(49,241,'2','cucharada'),(49,257,'2','cucharaditas'),(49,266,'1','cucharadita'),(50,17,'500','g'),(50,101,'20','g'),(50,137,'30','ml'),(50,207,'3','cucharadas'),(51,4,'100','ml'),(51,20,'4','uds'),(51,26,'400','g'),(51,136,'200','g'),(51,167,'200','g'),(51,169,'8','uds'),(51,235,'1,6','l'),(51,257,'1','cucharadita'),(51,279,'4','uds'),(51,280,'5','g'),(51,281,'150','g'),(52,22,'1','unidad'),(52,33,'250','g'),(52,178,'100','g'),(53,4,'1','cucharada'),(53,10,'100','g'),(53,11,'100','g'),(53,32,'50','g'),(53,94,'100','g'),(53,166,'1,2','kg'),(53,270,'300','g'),(53,282,'30','g'),(53,283,'1','cucharada'),(54,4,'1','cucharada'),(54,22,'2','uds'),(54,257,'1','cucharada'),(54,266,'1','cucharada'),(55,4,'5','cucharadas'),(55,10,'3','ud'),(55,11,'2','uds'),(55,12,'6','uds'),(55,13,'1','pizca'),(55,44,'1','pizca'),(55,92,'1','ud'),(55,93,'1','ud'),(55,94,'2','uds'),(55,95,'1','ud'),(55,136,'800','g'),(55,140,'1','pizca'),(56,4,'75','ml'),(56,12,'1','ud'),(56,15,'20','g'),(56,27,'160','g'),(56,80,'25','g'),(56,284,'25','g'),(57,1,'2','cucharadas'),(57,8,'90','g'),(57,11,'1','kg'),(57,12,'2','ud'),(57,13,'1','pizca'),(57,44,'1','pizca'),(57,70,'75','ml'),(57,118,'100','g'),(57,242,'6','uds'),(57,267,'2','l'),(58,1,'1','cucharada'),(58,4,'3','cucharadas'),(58,12,'6','uds'),(58,13,'1','pizca'),(58,17,'1,5','kg'),(58,70,'200','ml'),(58,234,'400','ml'),(59,1,'150','g'),(59,2,'100','g'),(59,5,'4','g'),(59,6,'1','ud'),(59,8,'225','g'),(59,54,'250','g'),(59,63,'215','g'),(59,68,'125','ml'),(59,98,'200','g'),(59,99,'45','g'),(59,109,'2','g'),(59,137,'75','g'),(59,153,'1','cucharada'),(59,228,'100','g'),(60,3,'1','pizca'),(60,4,'30','ml'),(60,6,'2','ud'),(60,13,'1','pizca'),(60,20,'100','g'),(60,21,'1','unidad'),(60,26,'160','g'),(60,30,'25','ml'),(60,68,'280','ml'),(60,82,'100','g'),(60,274,'40','g'),(61,11,'1','unidad'),(61,33,'200','g'),(61,106,'50','g'),(62,48,'1','ramita'),(62,50,'2','unidad'),(62,151,'200','g'),(63,1,'200','g'),(63,2,'75','g'),(63,3,'1','pizca'),(63,6,'1','ud'),(63,8,'100','g'),(63,153,'1','cucharada'),(64,1,'190','g'),(64,2,'25','g'),(64,3,'1','pizca'),(64,5,'2','cucharaditas'),(64,6,'1','ud'),(64,7,'240','ml'),(64,8,'40','g'),(65,3,'1/2','cucharadita'),(65,4,'60','ml'),(65,12,'1','unidad'),(65,34,'400','g'),(65,49,'1','cucharada'),(65,68,'5','cucharadas'),(65,128,'1','cucharadas'),(65,142,'1/2','cucharadita'),(65,257,'1','pizca'),(66,8,'50','g'),(66,11,'35','g'),(66,13,'1','pizca'),(66,16,'1','cucharada'),(66,25,'250','g'),(66,26,'150','g'),(66,70,'50','ml'),(66,80,'50','g'),(66,244,'500','ml'),(67,10,'1','unidad'),(67,23,'50','g'),(67,77,'1','unidad'),(68,1,'200','g'),(68,2,'200','g'),(68,5,'1','cucharadita'),(68,6,'4','uds'),(68,8,'200','g'),(68,53,'2','ud'),(69,11,'1','ud'),(69,94,'1','unidad'),(69,179,'200','g'),(70,2,'120','g'),(70,6,'4','uds'),(70,153,'1','cucharada'),(70,203,'500','ml'),(70,226,'80','g'),(71,4,'25','g'),(71,11,'100','g'),(71,12,'1','ud'),(71,13,'1','pizca'),(71,22,'100','g'),(71,28,'500','ml'),(71,91,'400','g'),(72,30,'2','cucharadas'),(72,94,'1','unidad'),(72,181,'150','g'),(73,4,'5','cucharadas'),(73,28,'1,5','tazas'),(73,49,'2','cucharadas'),(73,104,'1/2','taza'),(73,273,'15','ud'),(73,285,'1','ud'),(73,286,'1','ud'),(73,287,'1','ud'),(74,1,'200','g'),(74,2,'150','g'),(74,3,'1','pizca'),(74,6,'8','uds'),(74,8,'220','g'),(74,49,'2','ud'),(74,252,'4','uds'),(75,6,'2','uds'),(75,25,'100','g'),(75,28,'50','ml'),(76,1,'25','g'),(76,4,'50','ml'),(76,6,'1','ud'),(76,13,'1','pizca'),(76,16,'1','cucharadita'),(76,31,'50','g'),(76,194,'300','g'),(77,23,'100','g'),(77,27,'100','g'),(77,213,'100','ml'),(78,129,'150','g'),(78,146,'1','lámina'),(78,151,'100','g'),(79,23,'50','g'),(79,49,'1','unidad'),(79,52,'1','unidad'),(80,21,'1','unidad'),(80,22,'2','uds'),(80,41,'2','cucharadas'),(80,86,'50','g'),(83,11,'1','unidad'),(83,18,'200','gr'),(83,21,'2','unidades'),(83,27,'200','gr'),(88,1,'150','g'),(88,3,'1','pizca'),(88,68,'100','ml');
/*!40000 ALTER TABLE `ic_ingredientesporreceta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ic_listas`
--

DROP TABLE IF EXISTS `ic_listas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ic_listas` (
  `idCarpeta` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idCarpeta`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ic_listas`
--

LOCK TABLES `ic_listas` WRITE;
/*!40000 ALTER TABLE `ic_listas` DISABLE KEYS */;
INSERT INTO `ic_listas` VALUES (1,'Cenas'),(2,'Cenas rápidas'),(5,'Postres'),(6,'Pastas'),(9,'Platos rapidos'),(10,'av'),(11,'Recetas faciles'),(12,'Postres');
/*!40000 ALTER TABLE `ic_listas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ic_listasdeusuarios`
--

DROP TABLE IF EXISTS `ic_listasdeusuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ic_listasdeusuarios` (
  `nombreUsu` varchar(50) NOT NULL,
  `idCarpeta` int NOT NULL,
  PRIMARY KEY (`nombreUsu`,`idCarpeta`),
  KEY `idCarpeta` (`idCarpeta`),
  CONSTRAINT `ic_listasdeusuarios_ibfk_1` FOREIGN KEY (`nombreUsu`) REFERENCES `ic_usuario` (`nombreUsu`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `ic_listasdeusuarios_ibfk_2` FOREIGN KEY (`idCarpeta`) REFERENCES `ic_listas` (`idCarpeta`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ic_listasdeusuarios`
--

LOCK TABLES `ic_listasdeusuarios` WRITE;
/*!40000 ALTER TABLE `ic_listasdeusuarios` DISABLE KEYS */;
INSERT INTO `ic_listasdeusuarios` VALUES ('albertoo',2),('albertoo',5),('lmillant',6),('mariescorpio',9),('lucasmr',11),('lmillant',12);
/*!40000 ALTER TABLE `ic_listasdeusuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ic_recetas`
--

DROP TABLE IF EXISTS `ic_recetas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ic_recetas` (
  `idReceta` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `preparacion` text,
  `raciones` int DEFAULT NULL,
  `dificultad` varchar(20) NOT NULL,
  `nombreUsu` varchar(50) NOT NULL,
  PRIMARY KEY (`idReceta`),
  KEY `ic_recetas_ibfk_1` (`nombreUsu`),
  CONSTRAINT `ic_recetas_ibfk_1` FOREIGN KEY (`nombreUsu`) REFERENCES `ic_usuario` (`nombreUsu`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ic_recetas`
--

LOCK TABLES `ic_recetas` WRITE;
/*!40000 ALTER TABLE `ic_recetas` DISABLE KEYS */;
INSERT INTO `ic_recetas` VALUES (1,'Tortilla de patatas','1.jpeg','Comenzamos pelando y cortando las patatas en laminas siempre homogéneas. De esta manera se va a pochar de manera perfecta.Las ponemos en una sartén con aceite de que las cubra y dejamos pochar a fuego medio bajo durante unos 30 minutos, dándole vueltas de vez en cuando para que no se pegue.Una vez cocinadas retiramos y reservamos.Mientras tanto cortamos en juliana fina la cebolla y la pochamos en una sartén con aceite y un poco de sal otra media hora. Una vez tengamos la patata y la cebolla lista retiramos y reservamos colando todo el aceite sobrante.Batimos en un bol los huevos y la yema. Un truco que me enseñaron es, antes de mezclar la patata y el huevo, dorar la patata a fuego fuerte en una sartén. Ahora mezclamos todo, rectificamos de sal y dejamos reposar unos 5 minutos que se mezcle todo bien.Cuajamos en una sartén antiadherente por ambos lados hasta que este hecha. ',4,'Fácil','mariacp'),(2,'Paella mixta','2.jpeg','Calienta en una paellera aceite y empezamos a dorar las 4 gambas enteras. Cuando estén listas las retiramos. Cortamos las verduras y las ponemos en una sartén junto con el pollo. Cuando estén hechas metemos los calamares, y cuando este el sofrito añadimos el caldo. Dejamos que hierva y cuando ya haga chup chup es el momento de añadir el arroz. Dejamos hervir el arroz con el caldo con el fuego fuerte 10 minutos y luego bájalo.Como es una paella con mariscos, mientras se va cocinando el arroz, vas a abrir los mejillones al vapor. Pon en una cazuela un poco de agua, con un dedo será suficiente, el equivalente a 4 cucharadas de agua más o menos.Una vez añadida el agua, pon los mejillones, enciende el fuego y tapa. En 5-6 minutos se habrán abierto. Casi al final de la cocción de la paella mixta, cuando queden 5 minutos, suma las gambas peladas y los mejillones.Déjala reposar unos minutos con un trapo y luego ¡Y ya puedes disfrutar de esta deliciosa paella con carne y mariscos!',6,'Media','albertoo'),(3,'Lasaña de carne','3.jpeg','Para el relleno, pochamos todas las verduras, previamente picadas, en una cacerola con aceite, sal y pimienta durante 15 minutos. Agregamos a la cacerola junto con la carne picada de ternera, removiendo para que no se apelmace. Cuando la carne cambie de color, añadimos el tomate natural triturado salpimentamos y cocemos 45-50 minutos a fuego bajo. Mientras tanto, preparamos la salsa bechamel calentando la mantequilla en una sartén y tostando ligeramente en ella la harina. Agregamos la leche poco a poco, salpimentamos y cocemos la salsa a fuego bajo durante 10 minutos mientras removemos con unas varillas. Montamos la lasaña en una fuente rectangular sobre una base de salsa bechamel. Colocamos capas de pasta, relleno de carne y salsa, terminando con una capa de pasta y cubriendo generosamente con bechamel. Espolvoreamos con queso rallado y cocemos en el horno precalentado a 200ºC con calor arriba y abajo, durante 30 minutos. Cuando la lasaña de carne esté dorada, la retiramos del horno y esperamos a que se atempere un poco antes de servir',6,'Media','lauramg'),(4,'Gazpacho andaluz','4.jpeg','Lava los tomates, retírales el pedúnculo y córtalos en dados. Lava un pimiento verde y un pepino; retira las pepitas y la parte blanca del pimiento verde italiano y trocea grosso modo ambos ingredientes; pela y retira el germen al diente de ajo y pícalo. Introduce en un recipiente los tomates, el pimiento verde, el pepino, el ajo, el aceite de oliva virgen extra, el vinagre de vino blanco, el pan, el agua fría y la sal. Tritura hasta obtener una mezcla homogénea y sin grumos.Refrigera el gazpacho andaluz durante 1 hora. Opcionalmente, acompaña el gazpacho con tomates cherry, aceite de oliva virgen extra, pepino y cebolla en daditos, y picatostes',4,'Fácil','adrianfr'),(5,'Pollo al curry','5.jpg','Cortamos la cebolla y el ajo. Los sofreímos en una sartén con la mantequilla',4,'Media','luciafdz'),(6,'Crema de calabaza','6.jpg','Pelamos y cortamos la calabaza. Cortamos las patatas, la cebolla y prensamos el ajo. Sofreímos y condimentamos la cebolla y el ajo. Incorporamos al sofrito la calabaza y las patatas. Vertemos el caldo y hervimos. Trituramos y salpimentamos, y servimos la crema decorada al gusto',3,'Fácil','raulhn'),(7,'Ensalada César','7.jpg','Tostamos el pan aceitado. Cortamos el pan en dados. Repartimos el cogollo de lechuga en un plato. Cubrimos con el pan y el parmesano. Repartimos la salsa por encima y servimos',2,'Fácil','ivanlm'),(8,'Croquetas de jamón','8.jpg','Cortamos el jamón. Picamos la cebolla y el ajo. Sofreímos la chalota y el ajo y agregamos el jamón. Tostamos la harina. Vertemos la leche. Cocinamos la mezcla. Disponemos la masa en una manga pastelera y la dejamos enfriar. Formamos las croquetas. Rebozamos las croquetas en huevo y pan rallado. Las freímos en aceite caliente y las dejamos escurrir sobre papel de cocina. Servimos',5,'Alta','noemicr'),(9,'Pizza margarita','9.jpg','Estiramos la masa. Ponemos sal al tomate triturado. Extendemos el tomate sobre la masa. Horneamos 2 minutos la masa con el tomate y repartimos la mozzarella',4,'Media','sandraqv'),(10,'Tarta de queso','10.jpg','Precalienta la freidora 5 minutos a 200 ℃. Mientras, echa en un bol todos los ingredientes. Mezcla los ingredientes con unas varillas. Humedece 1 hoja de papel vegetal y forra el interior del molde. Echa la mezcla en el molde y dale unos golpes secos para explotar las burbujas. Tapa la superficie con papel de aluminio, hazle unos agujeros e introduce el molde en la freidora de aire. Programa 170 ℃ y 45 minutos y a continuación, 200 ℃ y 8 minutos más. Deja reposar la tarta con la cubeta entreabierta 15 minutos y lleva a la nevera. Desmolda la tarta antes de servir',8,'Media','raulhn'),(11,'Ensalada griega','11.jpg','Picamos el tomate y el pepino. Cortamos la cebolla en juliana. Cortamos el queso feta. Ponemos los ingredientes en el cuenco. Añadimos las aceitunas.Preparamos el aliño con aceite, zumo de un limón, orégano y sal, y aliñamos',2,'Fácil','elena_ruiz'),(12,'Hamburguesa casera','12.jpg','Cortamos la lechuga, los pepinillos y la cebolla. Untamos la mayonesa en las  dos partes de abajo de los panes. Ponemos lechuga y queso sobre un pan y pepinillos sobre el otro. Mezclamos la carne picada con un poco de pimienta y sal, y hacemos la forma de la hamburguesa. Cocinamos las hamburguesas a la plancha. Las colocamos sobre los panes y añadimos la cebolla. Ponemos el pan con los pepinillos sobre el otro y tapamos con la parte superior del pan',1,'Media','noemicr'),(13,'Salmón al horno','13.jpg','Lavamos 3 pimientos (amarillo, rojo y verde) y cortamos 1/2 de cada uno. Cortamos los pimientos y la cebolla morada en tiras. Colocamos las verduras y el salmón sobre papel vegetal, salpimentamos, regamos con aceite de oliva virgen extra y condimentamos con tomillo. Doblamos el papel vegetal y cerramos bien el contorno. Asamos el papillote en el horno a 180 ºC con calor arriba y abajo, durante unos 15 minutos, hasta que se hinche. Retiramos el papillote del horno, lo abrimos y lo servimos inmediatamente acompañado de limón (opcional)',2,'Media','pedrosl'),(14,'Spaghetti carbonara','14.jpg','Salteamos el guanciale. Mezclamos las yemas de huevo con el queso. Cocemos los espaguetis. Agregamos los espaguetis cocidos a la mezcla de huevo y queso. Incorporamos el guanciale. Espolvoreamos con pimienta negra y servimos',2,'Media','martaqr'),(15,'Bizcocho de yogur','15.jpg','Para las medidas del azúcar(2), aceite(1) y la harina(3) podemos utilizar el vaso del yogur. Batimos las claras a punto de nieve y reservamos.Batimos el azúcar con las yemas. Vertemos el aceite en el bol de las yemas. Añadimos el yogur. Añadimos la harina a la mezcla. Agregamos las claras montadas. Vertemos la masa en el molde. Horneamos 50 minutos a 180 ºC. Desmoldamos y dejamos enfriar sobre una rejilla',8,'Fácil','marcosl'),(16,'Pollo al horno con patatas','16.jpg','Pelamos, lavamos y cortamos en rodajas las patatas. Las salpimentamos, las ponemos sobre una bandeja de horno engrasada y añadimos la cebolla y los ajos. Salpimentamos las piezas de pollo. Ponemos el pollo sobre la cama de patatas, vertemos el vino y añadimos el romero. Asamos el pollo con las patatas 45 minutos a 200 ºC y giramos las piezas. Devolvemos el pollo al horno para hornearlo otros 45 minutos y servimos',4,'Fácil','veronicavg'),(17,'Sopa de verduras','17.jpg','Picamos el ajo y el apio, y cortamos en cuadraditos el puerro, la col, la zanahoria y el calabacín. Hacemos un sofrito con el ajo, el puerro y el apio .Añadimos la zanahoria y el calabacín, y posteriormente la col. Añadimos el caldo de verduras. Cocinamos 20 minutos desde hervor y servimos',6,'Fácil','elena_ruiz'),(18,'Risotto de setas','18.jpg','Pochamos las chalotas con la mantequilla y añadimos las setas troceadas. Añadimos el arroz y lo integramos. Vertemos el vino blanco y dejamos que se evapore. Añadimos el caldo caliente poco a poco mientras removemos. Mantecamos el arroz añadiendo queso parmesano rallado. Servimos el risotto de setas recién hecho',2,'Media','raulhn'),(19,'Empanadillas de atún','19.jpg','Preparamos el relleno pochando la cebolla picada en un poco de aceite. Añadimos el atún en conserva, los huevos cocidos picados y la salsa de tomate. Salpimentamos al gusto y mezclamos bien. Estiramos los discos y rellenamos cada uno con la mezcla de atún, tomate y huevo. Doblamos la masa dando forma de media luna a las empanadillas y sellamos bien la unión. Pincelamos con huevo batido y horneamos a 180 ºC durante 20-25 minutos',6,'Fácil','noemicr'),(20,'Brownie de chocolate','20.jpg','Derretimos el chocolate y la mantequilla. Añadimos los dos tipos de azúcar',8,'Media','carlosrb'),(21,'Fajitas de pollo','21.jpg','Cortamos el pollo a tiras y las dejamos macerar en la nevera con las especias y un poco de aceite. Cortamos las verduras en juliana. Doramos las tiras de pollo en una sartén o wok. Añadimos las verduras en juliana. Calentamos las tortillas de trigo, las rellenamos con el pollo y las verduras, y servimos',6,'Alta','marcosl'),(22,'Arroz con leche','22.jpg','Hervimos la leche con la canela y el limón. Añadimos el arroz y reducimos a fuego bajo. Cocinamos a fuego lento unos 50 minutos removiendo. Retiramos las ramas de canela y la piel del limón. Incorporamos el azúcar y la mantequilla, y cocinamos 5 minutos más. Lo decoramos y servimos',5,'Fácil','juanperez'),(23,'Huevos rellenos','23.jpg','Cocemos los huevos y los dejamos enfriar en un bol con agua y hielo. Los cortamos, reservamos las claras y mezclamos las yemas con los demás ingredientes. Mezclamos el relleno y lo trituramos o no según preferencias. Rellenamos los huevos con la mezcla del relleno con cuchara o con manga pastelera y los servimos',4,'Media','martaqr'),(24,'Tarta de manzana','24.jpeg','Pelamos y cortamos 3 manzanas. Las ponemos en el vaso de la batidora con la leche. Añadimos los huevos. Añadimos la ralladura de limón, la harina de trigo, el azúcar y el impulsor. Trituramos y vertemos la masa en un molde redondo. Pelamos y cortamos en láminas 2 manzanas. Cubrimos la masa con las láminas de manzana y horneamos la tarta 30 minutos a 180 ºC. Sacamos la tarta del horno y la pintamos con mermelada de melocotón. Esperamos a que la tarta esté fría para servirla',3,'Fácil','marcosl'),(25,'Cuscús de verduras','25.jpg','Picamos las verduras en trozos muy pequeños y las sofreímos en una sartén con aceite durante unos minutos para que queden ligeramente duras. Salpimentamos',3,'Alta','jorgerm'),(26,'Empanada gallega','26.jpg','Para el relleno, trocear la cebolla y el pimiento. Pocharlos con el aceite y el pimentón. Incorporar el atún o bonito al sofrito, mezclar y reservar.  Precalentar el horno. Dividir la masa en dos partes y estirarlas. Repartir el relleno en la base. Tapar con la otra masa. Sellar los bordes. Pincelarla con huevo batido. Hornearla 40 minutos a 210 ºC. Comprobar el punto de cocción. Dejar enfriar y servir',3,'Alta','mariacp'),(27,'Sopa de marisco','27.jpg','Limpiamos las almejas en agua fría con sal durante 45 minutos. Para el caldo, sacamos las carcasas de los langostinos. Picamos parte de la cebolla, del puerro y la zanahoria y dejamos cuatro ajos enteros y con la piel. Sofreímos las verduras en una olla con aceite. Incorporamos la merluza y las cabezas y carcasas de los langostinos',6,'Media','sandraqv'),(28,'Tortitas americanas','28.jpeg','Mezclamos la leche, la mantequilla, la vainilla y el huevo. Agregamos el azúcar, la harina, la levadura química y la sal. Conseguiremos una masa homogénea, calentamos y engrasamos la sartén. Cocinamos las tortitas por ambos lados y repetimos con el resto de la masa. Servimos. Los podemos acompañar al gusto',4,'Alta','natalia_mr'),(29,'Pan casero','29.jpg','Mezclamos los ingredientes secos Agregamos la mantequilla y el agua templada. Amasamos y formamos una bola. La dejamos levar hasta que doble su tamaño. Sacamos el aire y formamos el pan. Lo dejamos levar de nuevo. Lo enharinamos. Hacemos un corte y lo horneamos 30 minutos a 200 ºC. Dejamos enfriar. Lo servimos. También lo podemos congelar',4,'Media','martaqr'),(30,'Chili con carne','30.jpg','Picamos el ajo y la cebolla y cortamos el chile en trocitos. Doramos la carne picada de ternera durante 5 minutos y después, la retiramos de la cazuela. Hacemos un sofrito con el ajo y la cebolla. Añadimos el chile jalapeño, el chile en polvo y el comino, mezclamos y añadimos el pimentón dulce, el picante y el tomate triturado. Añadimos la carne picada y la mezclamos. Añadimos el caldo de pollo y cocinamos a fuego medio-bajo, con la cazuela tapada, durante 25 minutos. Incorporamos los frijoles, los mezclamos bien y cocinamos 10 minutos más. Servimos',3,'Fácil','adrianfr'),(31,'Mousse de chocolate','31.jpg','Derretimos el chocolate. Mezclamos las yemas con el chocolate. Opcionalmente, incorporamos la nata montada. Batimos las claras con el azúcar. Integramos las claras montadas en la mezcla de chocolate. Repartimos la mousse en recipientes y la dejamos cuajar en la nevera. Servimos la mousse y la consumimos inmediatamente',6,'Fácil','anaglez'),(32,'Albóndigas en salsa','32.jpg','Rehogamos la cebolla picada. Mezclamos la cebolla rehogada con los demás ingredientes de las albóndigas. Formamos las albóndigas. Las doramos en una sartén con aceite. Preparamos el roux para la salsa mezclando la mantequilla, el aceite y la harina. Incorporamos el caldo para la salsa española. Añadimos las albóndigas, calentamos el conjunto y servimos',3,'Alta','diegomp'),(33,'Ensalada de pasta','33.jpg','Hervimos la pasta. Troceamos el huevo, los tomates, las aceitunas y el jamón. Mezclamos los ingredientes troceados con los guisantes y la mayonesa. Añadimos la pasta, mezclamos y dejamos enfriar. Servimos',6,'Fácil','veronicavg'),(34,'Crepes salados','34.jpg','Bate los huevos con la leche hasta integrar, agrega la harina e integra de nuevo. Añade la mantequilla derretida y la sal, mezcla hasta que no haya grumos y deja reposar en la nevera 30 minutos. Engrasa una sartén antiadherente con mantequilla y cuando esté caliente echa una porción de la masa. Cocina el crep durante 1 minuto y medio. Cuando el borde se despegue dale la vuelta. Cocina por el otro lado 1 minuto y retira. Continúa de la misma forma con toda la masa. Rellena los crepes a tu gusto y, ¡a disfrutar!',4,'Alta','elena_ruiz'),(35,'Bacalao al pil-pil','35.jpg','Pelar los ajos, cortarlos en rodajas finas y trocear la guindilla. Dorar los ajos con la guindilla en el aceite. Secar el bacalao y cocinar 5 o 6 minutos en el aceite con la piel hacia arriba. Voltear el bacalao y cocinar 2 minutos más. Retirar el bacalao, dejar templar el aceite y batir este con un colador. Reincorporar el bacalao a la cazuela y calentar un poco. Servir el bacalao con la salsa por encima. Decorar con ajo, guindilla y perejil picado',4,'Fácil','diegomp'),(36,'Macarrones gratinados','36.jpg','Precalienta el horno a 200 ℃ calor arriba y abajo. Mientras pela la cebolla y los dientes de ajo y pícalos bien fino. En una sartén pocha durante 10 minutos la cebolla y el ajo picado con un poco de aceite de oliva virgen extra y una pizca de sal. Adiciona el tomate natural triturado, el agua, los macarrones, salpimenta y cocina a fuego medio-alto durante 10 minutos. Dispón por toda la superficie de la sartén o fuente las hojas de albahaca troceadas. Cubre los macarrones con el queso rallado y hornea a 200 ℃ hasta que el queso se funda y se dore ligeramente. Saca la fuente del horno y decora con unas hojas de albahaca fresca. Emplata decorando con unas hojas de albahaca fresca y sirve inmediatamente',4,'Media','ivanlm'),(37,'Quiche de espinacas','37.jpg','Precalentamos el horno a 180 ºC con calor arriba y abajo, y salteamos las espinacas con un poco de aceite de oliva. Colocamos la lámina de masa quebrada en el molde. Esparcimos las espinacas salteadas sobre la masa',6,'Alta','anaglez'),(38,'Sándwich club','38.jpg','Untar una fina capa de mantequilla en uno de los lados de cada rebanada de pan. Salpimentar los filetes de pollo. Asarlos a la plancha con un poco de aceite de oliva. Dorar al gusto las lonchas de bacon. Formar un sándwich de bacon y queso con la mantequilla hacia afuera. Dorar el sándwich por los dos lados en una sartén caliente. Repetir esta vez con el sándwich de pollo y bacon. Untar ambos sándwiches con mayonesa. Colocar sobre uno la lechuga y el tomate en rodajas. Juntar ambos sándwiches. Cortar en triángulos sujetados con palillos. Servir enseguida. Acompañar con patatas fritas o ensalada',3,'Media','marcosl'),(39,'Pimientos rellenos','39.jpg','Cocemos el bacalao en la leche. Lo dejamos templar. Picamos el ajo, la cebolla y el pimiento. Pochamos estos vegetales, añadimos el vino y dejamos reducir. Añadimos la harina y la cocinamos. Colamos la leche infusionada. Añadimos la leche poco a poco al sofrito con harina. Incorporamos el bacalao desmigado. Mezclamos y dejamos enfriar esta mezcla antes de rellenar los pimientos. Rehogamos la cebolla y los pimientos para la salsa. Añadimos la nata para cocinar y trituramos. Rellenamos los pimientos con la mezcla de bacalao y los disponemos sobre la salsa. Servimos',6,'Fácil','sandraqv'),(40,'Tarta de zanahoria','40.jpg','Mezclamos los dos tipos de azúcar, los huevos y el aceite. Añadimos la zanahoria. Tamizamos la harina, la levadura y la canela. Precalentamos el horno a 180 ºC. Repartimos la masa en los 3 moldes y horneamos durante 30-35 minutos. Retiramos los bizcochos, dejamos enfriar, desmoldamos, cubrimos con film transparente y guardamos en la nevera. Preparamos la crema batiendo la mantequilla con el azúcar glas. Añadimos el queso crema y batimos. Colocamos el primer bizcocho y una capa de crema. Seguimos con el segundo bizcocho y otra capa de crema. Ponemos el último bizcocho y cubrimos con crema los laterales de la tarta. Cubrimos con crema la parte superior, la decoramos al gusto y, ¡a disfrutar!. Guardar en la nevera si no se consume en el momento',2,'Fácil','albertoo'),(41,'Galletas de avena','41.jpg','Aplastamos el plátano. Mezclamos el plátano con la avena y la canela. Repartimos en porciones. Horneamos y dejamos enfriar',6,'Alta','raulhn'),(42,'Pizza barbacoa','42.jpg','Picamos las verduras. Las pochamos. Añadimos la carne y parte de las salsas. Cocinamos. Estiramos la masa. Extendemos un poco del tomate triturado y salsa barbacoa sobre la masa. Extendemos el relleno de carne ya cocinado. Añadimos bacon y mozzarella. Decoramos con salsa barbacoa y cebolla. Horneamos 15 minutos a 220 ºC. Añadimos orégano al gusto y servimos',6,'Media','ivanlm'),(43,'Ensalada de arroz','43.jpg','Cocer el arroz, enjuagar y escurrir. Ponerlo en un bol con el tomate pelado y cortado, el maíz, el atún y la mayonesa. Mezclar y servir',2,'Alta','albertoo'),(44,'Tarta tres chocolates','44.jpg','Mezclamos la galleta y la mantequilla. Engrasamos y forramos el molde. Ponemos la base de galleta en el molde. Mezclamos parte de la leche con un sobre de cuajada. Calentamos parte de la leche y nata para la capa de chocolate negro. Añadimos el chocolate negro. Añadimos la mezcla de cuajada y calentamos. Ponemos la mezcla sobre la base de galleta y llevamos al congelador o a la nevera. Preparamos la capa de chocolate con leche de forma similar. Vertemos sobre la capa anterior y dejamos cuajar. Preparamos la capa de chocolate blanco del mismo modo. Vertemos sobre la capa anterior y dejamos cuajar por completo la tarta. Desmoldamos y servimos',5,'Fácil','lauramg'),(45,'Salmón marinado','45.jpg','Cortamos el salmón por la mitad. Mezclamos la sal con el azúcar y el eneldo. Cubrimos el salmón con esta mezcla, lo envolvemos en film y lo reservamos en la nevera como mínimo 24 horas. Lavamos el salmón. Lo pintamos con aceite. Lo cubrimos con eneldo. Servimos',2,'Fácil','juanperez'),(46,'Croquetas de setas','46.jpg','Sofreímos la cebolla y el ajo. Troceamos los boletus. Los incorporamos al sofrito. Añadimos y tostamos la harina. Vertemos la leche. Cocinamos el conjunto y dejamos enfriar. Formamos las croquetas. Rebozamos las croquetas en huevo y pan rallado. Freímos las croquetas en aceite caliente y las dejamos escurrir sobre papel de cocina antes de servir',3,'Fácil','sandraqv'),(47,'Lentejas estofadas','47.jpg','Preparamos todos los ingredientes, lavamos las lentejas y las dejamos en agua mientras picamos las verduras. Lavamos y troceamos las verduras. Escaldamos y escurrimos las lentejas. En una olla ponemos un poco de aceite de oliva suave, echamos las verduras y las sofreímos. Añadimos el tomate pelado y troceado el laurel y la ñora y removemos. Echamos las lentejas y las mezclamos bien y dejamos que se integren, y finalmente vamos añadiendo el caldo que tendremos hirviendo. Tapamos y dejamos cocer a fuego suave durante unos 40 minutos. Este tiempo es relativo, ya que dependerá del tipo de lenteja y de nuestros gustos. Añadimos un poco más de caldo si vemos que se nos quedan muy secas',5,'Media','luciafdz'),(48,'Tortilla francesa','48.jpg','Batir huevos y cocinar en sartén con sal y aceite.',4,'Fácil','jorgerm'),(49,'Patatas bravas','49.jpg','Cortamos las patatas en dados. Las freímos en aceite caliente. Hacemos la salsa brava añadiendo el pimentón al aceite caliente y la harina a continuación. Tostamos esta mezcla. Añadimos el caldo caliente poco a poco',5,'Media','noemicr'),(50,'Pollo teriyaki','50.jpg','Ponemos los ingredientes de la salsa teriyaki en un cazo. Cocinamos la salsa teriyaki y la reservamos. Cortamos las pechugas de pollo en tacos de bocado. Freímos los tacos de pollo hasta que se doren ligeramente. Vertemos la salsa teriyaki sobre el pollo. Cocinamos el pollo con la salsa. Añadimos el sésamo tostado encima. Servimos el pollo teriyaki con una guarnición al gusto',6,'Alta','pedrosl'),(51,'Paella de marisco','51.jpg','Nivelar la paella y marcar las gambas y las cigalas. Incorporar el calamar y los mejillones hasta que se abran. Cocinar el sofrito con el pimentón y el tomate triturado. Poner el caldo, rectificar de sal, echar el azafrán y cuando hierva, introducir el arroz y cocerlo 19 minutos. Bajar el fuego pasados los primeros 6 minutos e incorporar los tacos de rape. Incorporar las gambas, las cigalas y los mejillones. Bajar el fuego al mínimo hasta el minuto 19',3,'Alta','martaqr'),(52,'Guiso de lentejas','52.jpg','Cocer lentejas con verduras, chorizo y caldo.',6,'Fácil','albertoo'),(53,'Tacos mexicanos','53.jpg','Preparar la guarnición de los tacos mexicanos de carne. Saltear la carne en una sartén con aceite de oliva virgen extra. Reservar la carne tapada hasta el momento del emplatado. Calentar las tortillas de maíz y guardarlas calientes en un paño de algodón. Montar los tacos mexicanos con la carne y la guarnición. Presentar los tacos acompañados de alguna salsa y de lima en gajos',2,'Alta','natalia_mr'),(54,'Pulpo a la gallega','54.jpg','Lavar bien el pulpo. Asustar 3 veces el pulpo en agua hirviendo. Dejar cocer el pulpo. Cocer las patatas enteras y sin piel. Dejar reposar el pulpo cocido en el agua de cocción. Con el pulpo caliente, cortar los tentáculos. Cortar las rodajas de pulpo. Poner las patatas cocidas cortadas en rodajas en la base de un plato de madera. Poner por encima las rodajas de pulpo. Aliñar con sal gruesa, pimentón dulce y picante y aceite de oliva virgen extra',3,'Media','anaglez'),(55,'Ratatouille','55.jpg','Asar los pimientos, pelarlos y trocearlos. Sofreír la cebolla picada con 2 cucharadas de aceite, incorporar el ajo picado y rehogar un minuto más. Incorporar los tomates rallados o triturados, cocer hasta que espese. Agregar los pimientos, salpimentar y condimentar con tomillo y romero picado. Cortar los otros tomates, la berenjena y el calabacín en rodajas de medio centímetro. Repartir la salsa de tomate en la base del molde. Colocar las rodajas de verduras en círculos concéntricos, salpimentar. Mezclar ajo, tomillo y romero picados con 2 cucharadas de aceite y pintar las verduras. Tapar la fuente con papel de hornear y papel de aluminio y hornear 2 horas a 150 ºC. Destapar y hornear 30 minutos más a 180 ºC, esta vez, con calor solo arriba',4,'Fácil','marcosl'),(56,'Pasta al pesto','56.jpg','Tostamos los piñones. Pelamos el ajo y rallamos el queso. Trituramos los ingredientes de la salsa. Hervimos la pasta y la mezclamos con la salsa pesto',6,'Fácil','mariacp'),(57,'Sopa de cebolla','57.jpg','Cortamos en juliana las cebollas y laminamos los ajos. Los doramos con mantequilla y tomillo. Añadimos la harina, mezclamos y cocinamos, incorporamos el vino blanco, el caldo de carne y laurel. Cocinamos 30 minutos a fuego lento y salpimentamos. Servimos la sopa en tazones aptos para horno, añadimos el pan y el queso rallado.Gratinamos en el horno y servimos',5,'Fácil','adrianfr'),(58,'Pollo al ajillo','58.jpg','Limpiamos, troceamos, quitamos la piel del pollo y lo salpimentamos. Freímos los ajos enteros hasta que se doren. Retiramos los ajos y freímos el pollo. Pelamos y cortamos en láminas el resto de los ajos. Añadimos los ajos en láminas al pollo y cocinamos todo junto. Vertemos el vino y dejamos que se evapore. Añadimos la harina de trigo. Vertemos el caldo y tapamos la cacerola para cocinar el pollo entre 15 y 20 minutos. Servimos el pollo al ajillo caliente con un poco de perejil al gusto',6,'Alta','pedrosl'),(59,'Tarta de chocolate','59.jpg','Tamizamos la harina, el cacao, el bicarbonato y la levadura. Añadimos los dos tipos de azúcar. Por otro lado, mezclamos el aceite, el mantequilla, el agua caliente, el huevo y la vainilla en pasta. Vertemos los ingredientes líquidos sobre los húmedos y mezclamos. Horneamos en dos moldes durante 20-25 minutos a 180 ºC. Dejamos templar, desmoldamos y dejamos enfriar por completo. Para el relleno, calentamos la nata y la vertemos sobre el chocolate. Integramos y añadimos la mantequilla. Dejamos enfriar a temperatura ambiente. Cortamos las fresas. Ponemos el primer bizcocho y una porción de crema de chocolate. Colocamos las fresas. Cubrimos con el otro bizcocho y ponemos la crema de chocolate restante. Decoramos con fresas. Servimos',3,'Fácil','natalia_mr'),(60,'Arroz frito','60.jpg','Cuece el arroz durante 8 minutos a fuego alto bajando a fuego medio durante los siguientes 6 minutos. Mientras, cuece los brotes de soja durante 4 minutos. Escúrrelos y reserva hasta su uso. Trocea la zanahoria en daditos y saltéala en un wok con un poco de aceite. Agrega los brotes de soja cocidos y saltea un par de minutos más. Agrega los taquitos de jamón cocido, las gambas, los guisantes y saltea otros 5 minutos. Para la tortilla francesa, bate los huevos y échalos en una sartén caliente con un poco de aceite de oliva. Deja que cuaje y córtala en trozos de bocado. Pasa por agua el arroz cocido, calienta un poco de aceite en un wok y saltea el arroz durante unos minutos.. Añade la salsa de soja y saltea unos minutos más. Añade al wok las anteriores elaboraciones, condimenta con un poco de pimienta negra molida y jengibre en polvo, y continúa salteando unos minutos más. Rectifica el punto de sal si fuera necesario, emplata y sirve inmediatamente',4,'Alta','carlosrb'),(61,'Hamburguesa vegetariana','61.jpg','Prepara hamburguesas con garbanzos triturados, cebolla, avena y especias. Cocina a la plancha.',2,'Fácil','noemicr'),(62,'Ceviche de pescado','62.jpg','Marina pescado blanco en zumo de lima con cebolla morada, cilantro y ají. Servir frío.',2,'Alta','anaglez'),(63,'Galletas de mantequilla','63.jpg','Mezclamos la mantequilla con el azúcar y la sal. Añadimos el huevo, la vainilla y la harina. Dividimos la masa en dos. Formamos dos rulos con la masa y los envolvemos en film. Podemos meter los rulos en un rollo de cartón para darles forma redondeada. Los envolvemos en film. Los reservamos en la nevera. Precalentamos el horno y cortamos las galletas. Disponemos las galletas de mantequilla ya cortadas en una bandeja de horno. Las horneamos a 180 ºC durante 10 minutos. Las dejamos enfriar. Las servimos con un café o té. Guardamos las sobrantes en una caja de metal',12,'Fácil','adrianfr'),(64,'Panqueques','64.jpg','Tamizamos la harina con la levadura y la sal. Vertemos el azúcar, el huevo y la mantequilla fundida. Batimos mientras vamos añadiendo la leche. Cuando la masa esté homogénea, la cubrimos y la dejamos reposar 30 minutos. Calentamos una sartén, la untamos con mantequilla y vertemos una porción de masa en el centro. Cocinamos hasta que veamos burbujas en la superficie del panqueque. Lo volteamos, lo dejamos cocinar 1 minuto por el otro lado y si está dorado la retiramos. Hacemos el resto de los panqueques del mismo modo. Agregamos mantequilla y/o jarabe de arce u otras salsas. Los servimos recién hechos',6,'Fácil','sandraqv'),(65,'Hummus casero','65.jpg','Ponemos los garbanzos con la sal y el tahini en un vaso para triturar. Añadimos un diente de ajo pelado y sin germen. Añadimos el zumo de limón y el aceite. Agregamos el comino y el pimentón. Vertemos el agua. Trituramos hasta conseguir una textura suave. Aliñamos el hummus con aceite de oliva, unos garbanzos cocidos y pimentón, y lo servimos con pan o crudités',4,'Fácil','veronicavg'),(66,'Risotto de champiñones','66.jpg','Laminamos los champiñones. Los salteamos. Pochamos la chalota. Agregamos el arroz. Echamos un cucharón de caldo y cocinamos. Repetimos hasta terminar el caldo. Antes de terminar, añadimos los champiñones, la mantequilla y el parmesano. Mezclamos. Servimos con perejil picado',2,'Alta','natalia_mr'),(67,'Pizza vegetal','67.jpg','Extiende masa y cubre con tomate, champiñones, pimiento y queso. Hornea hasta dorar.',4,'Media','carlosrb'),(68,'Bizcocho de plátano','68.jpg','Precalentamos el horno y batimos el azúcar con los huevos. Agregamos los plátanos triturados, la mantequilla y la harina con el impulsor. Forramos el molde y vertemos la mezcla. Horneamos 50 minutos a 170 ºC y lo dejamos enfriar sobre una rejilla. Desmoldamos y dejamos enfriar totalmente sobre la rejilla. Servimos. Podemos congelar las porciones no consumidas',8,'Fácil','anaglez'),(69,'Brochetas de cerdo','69.jpg','Monta dados de cerdo marinados con verduras en palos y ásalos al horno o parrilla.',4,'Media','noemicr'),(70,'Flan casero','70.jpg','Ponemos el caramelo líquido en las flaneras. Precalentamos el horno a 170 ºC con calor arriba y abajo. Batimos muy bien los huevos y el azúcar. Vertemos la leche. Añadimos la vainilla. Repartimos la mezcla en las flaneras. Preparamos un baño maría y horneamos 40-45 minutos. Dejamos enfriar a temperatura ambiente. Pasamos los flanes a la nevera 4 horas como mínimo, desmoldamos y, ¡a disfrutar!',6,'Media','natalia_mr'),(71,'Crema de espárragos','71.jpg','Lavamos y cortamos los espárragos verdes, desechando el extremo inferior y reservando un par de puntas por persona. Cortamos el ajo, la cebolla y la patata. Hacemos un sofrito con el ajo y la cebolla. Incorporamos al sofrito los espárragos verdes y los rehogamos. Añadimos la patata. Incorporamos el agua y dejamos cocer 20 minutos desde el hervor. Comprobamos que los espárragos están bien cocidos. Trituramos la crema con la batidora. Añadimos pimienta negra molida y mezclamos. Hacemos a la plancha las puntas de espárragos. Servimos la crema',3,'Fácil','natalia_mr'),(72,'Wok de ternera','72.jpg','Saltea tiras de ternera con brócoli, cebolla, zanahoria y salsa de soja.',3,'Media','ivanlm'),(73,'Ensalada de quinoa','73.jpg','Lavar y escurrir la quinoa. Dorar la quinoa con aceite y añadir el agua y la sal. Cocer la quinoa y removerla con un tenedor. Trocear el aguacate, el mango, la cebolla morada y los tomates cherry. Preparar la vinagreta con el aceite de oliva, el zumo de limón, la sal y la pimienta negra. Mezclar la quinoa con las verduras troceadas y añadir la vinagreta. Mezclar bien la ensalada. Servir',2,'Fácil','natalia_mr'),(74,'Tarta de limón','74.jpg','Picamos la harina con la mantequilla y la sal. Añadimos el huevo. Hacemos una bola y refrigeramos. Estiramos la masa. Colocamos la masa en el molde, pinchamos con un tenedor y refrigeramos. Precalentamos el horno a 180 ºC con calor arriba y abajo. Horneamos 25 minutos y dejamos enfriar. Preparamos la crema de limón juntando los ingredientes de esta menos la mantequilla en un cazo a fuego medio. Retiramos del fuego y añadimos la mantequilla. Vertemos la crema sobre la base, dejamos enfriar y ya la tendríamos lista',6,'Alta','natalia_mr'),(75,'Revuelto de setas','75.jpg','Saltea setas y mezcla con huevos batidos. Cocinar a fuego lento.',2,'Fácil','adrianfr'),(76,'Pollo empanado','76.jpg','Aplanamos el pollo golpeándolo con un martillo de cocina o con la base de un cazo. Cubrimos con harina la pechuga de pollo. La rebozamos en huevo batido y pan rallado. Freímos el escalope en aceite caliente. Lo giramos y lo doramos por el otro lado. Lo escurrimos sobre papel de cocina y servimos',3,'Fácil','lauramg'),(77,'Lasaña vegetal','77.jpg','Capas de pasta, verduras salteadas y bechamel. Hornear hasta gratinar.',4,'Media','albertoo'),(78,'Sushi rolls','78.jpg','Extiende arroz en alga nori, añade pescado y vegetales, enrolla y corta.',2,'Alta','elena_ruiz'),(79,'Zumo detox verde','79.jpg','Licúa espinacas, manzana verde, apio, jengibre y zumo de limón.',2,'Fácil','anaglez'),(80,'Ensaladilla rusa','80.jpg','Mezcla patatas cocidas, zanahoria, guisantes, atún y mayonesa.',4,'Fácil','jorgerm'),(83,'Macarrones a la boloñesa','macarrones.jpg','Primero cortamos las verduras del tamaño que mas nos guste. A continuación sofreímos las verduras en una sartén con aceite. Cuando ya estén sofritas metemos la carne molida y dejamos que se haga. Mientras se hace la carne ponemos agua en una olla con aceite y sal, y a calentar. Cuando veamos que el agua hierva incorporamos los macarrones. Cuando la carne este hecha incorporamos el tomate frito. Retiramos la carne y los macarrones cuando veamos que esta todo hecho, mezclamos las dos cosas y a comer',2,'Fácil','lmillant'),(88,'Masa para pizza','masa.jpeg','Diluimos la levadura fresca en parte del agua. La mezclamos con la harina en un bol. Añadimos el resto del agua. Mezclamos los ingredientes dentro del bol. Llevamos la masa a una superficie enharinada y añadimos la sal. Añadimos el aceite. Amasamos con reposos. Dejamos fermentar la masa unas 2 horas. Comprobamos que la masa está lista. Dividimos la masa en dos. Formamos 2 bolas de masa y la usamos a conveniencia',1,'Medio','lucasmr');
/*!40000 ALTER TABLE `ic_recetas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ic_recetasporcategoria`
--

DROP TABLE IF EXISTS `ic_recetasporcategoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ic_recetasporcategoria` (
  `idReceta` int NOT NULL,
  `idCategoria` int NOT NULL,
  PRIMARY KEY (`idReceta`,`idCategoria`),
  KEY `idCategoria` (`idCategoria`),
  CONSTRAINT `ic_recetasporcategoria_ibfk_1` FOREIGN KEY (`idReceta`) REFERENCES `ic_recetas` (`idReceta`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `ic_recetasporcategoria_ibfk_2` FOREIGN KEY (`idCategoria`) REFERENCES `ic_categorias` (`idCategoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ic_recetasporcategoria`
--

LOCK TABLES `ic_recetasporcategoria` WRITE;
/*!40000 ALTER TABLE `ic_recetasporcategoria` DISABLE KEYS */;
INSERT INTO `ic_recetasporcategoria` VALUES (10,1),(15,1),(17,1),(20,1),(22,1),(24,1),(28,1),(31,1),(40,1),(41,1),(44,1),(48,1),(59,1),(63,1),(64,1),(68,1),(70,1),(74,1),(3,2),(9,2),(14,2),(33,2),(36,2),(37,2),(56,2),(66,2),(77,2),(83,2),(3,3),(5,3),(8,3),(12,3),(20,3),(21,3),(26,3),(30,3),(32,3),(50,3),(58,3),(69,3),(72,3),(76,3),(13,4),(18,4),(27,4),(35,4),(45,4),(51,4),(54,4),(62,4),(78,4),(80,4),(2,5),(22,5),(43,5),(51,5),(60,5),(4,6),(6,6),(18,6),(27,6),(57,6),(7,7),(11,7),(33,7),(43,7),(4,8),(6,8),(25,8),(37,8),(55,8),(73,8),(77,8),(1,10),(48,10),(75,10),(19,11),(52,11),(8,12),(46,12),(76,12),(26,13),(29,13),(9,14),(42,14),(67,14),(88,14),(19,15),(47,15),(52,15),(61,15),(8,16),(20,16),(5,17),(23,17),(36,17),(39,17),(49,17),(50,17),(53,17),(71,17),(78,17),(79,17),(65,18),(88,18),(25,19),(33,19),(37,19),(43,19),(67,19),(73,19),(77,19),(28,21),(74,21),(12,24),(21,24),(38,24),(42,24),(53,24),(67,24),(3,29),(9,29),(14,29),(33,29),(42,29),(56,29),(66,29),(67,29),(83,29);
/*!40000 ALTER TABLE `ic_recetasporcategoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ic_recetasporlistas`
--

DROP TABLE IF EXISTS `ic_recetasporlistas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ic_recetasporlistas` (
  `idCarpeta` int NOT NULL,
  `idReceta` int NOT NULL,
  PRIMARY KEY (`idCarpeta`,`idReceta`),
  KEY `idReceta` (`idReceta`),
  CONSTRAINT `ic_recetasporlistas_ibfk_1` FOREIGN KEY (`idCarpeta`) REFERENCES `ic_listas` (`idCarpeta`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `ic_recetasporlistas_ibfk_2` FOREIGN KEY (`idReceta`) REFERENCES `ic_recetas` (`idReceta`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ic_recetasporlistas`
--

LOCK TABLES `ic_recetasporlistas` WRITE;
/*!40000 ALTER TABLE `ic_recetasporlistas` DISABLE KEYS */;
INSERT INTO `ic_recetasporlistas` VALUES (10,8),(5,20),(9,21),(2,34),(9,38),(11,38);
/*!40000 ALTER TABLE `ic_recetasporlistas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ic_usuario`
--

DROP TABLE IF EXISTS `ic_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ic_usuario` (
  `nombreUsu` varchar(50) NOT NULL,
  `nombre` varchar(80) DEFAULT NULL,
  `correo` varchar(80) DEFAULT NULL,
  `password` varchar(80) DEFAULT NULL,
  `imagen` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`nombreUsu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ic_usuario`
--

LOCK TABLES `ic_usuario` WRITE;
/*!40000 ALTER TABLE `ic_usuario` DISABLE KEYS */;
INSERT INTO `ic_usuario` VALUES ('adrianfr','Adrián Fernández','adrianfr@example.com','adrian222','adrianfr.jpg'),('albertoo','Alberto Ortega','albertoo@example.com','alberto666','albertoo.jpg'),('anaglez','Ana González','anaglez@example.com','ana456','anaglez.jpg'),('carlosrb','Carlos Ramírez','carlosrb@example.com','carlos123','carlosrb.jpg'),('diegomp','Diego Martín','diegomp@example.com','diego444','diegomp.jpg'),('elena_ruiz','Elena Ruiz','elena_ruiz@example.com','elena321','elena_ruiz.jpg'),('ivanlm','Iván López','ivanlm@example.com','ivan888','ivanlm.jpg'),('jorgerm','Jorge Romero','jorgerm@example.com','jorge147','jorgerm.jpg'),('juanperez','Juan Pérez','juanperez@example.com','juan1234','juanperez.jpg'),('lauramg','Laura Martínez','lauramg@example.com','laura123','lauramg.jpeg'),('lmillant','Lara Millán Troya','laramillant13@gmail.com','laramt','foto.jpg'),('lucasmr','Lucas Lopez','lucas@example.com','lucas123','mifoto.jpg'),('luciafdz','Lucía Fernández','luciafdz@example.com','lucia963','luciafdz.jpg'),('marcosl','Marcos López','marcosl@example.com','marcos789','marcosl.jpg'),('mariacp','María Campos','mariacp@example.com','maria456','mariacp.jpg'),('mariescorpio','María Dolores Troya Peinado','mariescorpio65@hotmail.com','chicas5','hordDora.png'),('martaqr','Marta Quintana','martaqr@example.com','marta999','martaqr.jpg'),('natalia_mr','Natalia Márquez','natalia_mr@example.com','natalia111','natalia_mr.jpg'),('noemicr','Noemí Castro','noemicr@example.com','noemi555','noemicr.jpg'),('pedrosl','Pedro Salas','pedrosl@example.com','pedro321','pedrosl.jpg'),('raulhn','Raúl Hernández','raulhn@example.com','raul000','raulhn.jpg'),('sandraqv','Sandra Quiroga','sandraqv@example.com','sandra333','sandraqv.jpg'),('veronicavg','Verónica Vega','veronicavg@example.com','vero777','veronicavg.jpg');
/*!40000 ALTER TABLE `ic_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ic_valoracion`
--

DROP TABLE IF EXISTS `ic_valoracion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ic_valoracion` (
  `nombreUsu` varchar(50) NOT NULL,
  `idReceta` int NOT NULL,
  `valoracion` int DEFAULT NULL,
  `comentario` text,
  PRIMARY KEY (`nombreUsu`,`idReceta`),
  KEY `idReceta` (`idReceta`),
  CONSTRAINT `fk_ic_recetas` FOREIGN KEY (`idReceta`) REFERENCES `ic_recetas` (`idReceta`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `fk_ic_usuario` FOREIGN KEY (`nombreUsu`) REFERENCES `ic_usuario` (`nombreUsu`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ic_valoracion`
--

LOCK TABLES `ic_valoracion` WRITE;
/*!40000 ALTER TABLE `ic_valoracion` DISABLE KEYS */;
INSERT INTO `ic_valoracion` VALUES ('adrianfr',7,3,'No salió como esperaba, pero pasable.'),('adrianfr',8,3,'No salió como esperaba, pero pasable.'),('albertoo',1,4,'Un 10 de 10. Gracias.'),('albertoo',2,2,'No salió como esperaba, pero pasable.'),('albertoo',5,3,'¡Deliciosa! La repetiré pronto.'),('albertoo',9,1,'Un clásico que nunca falla.'),('albertoo',13,1,'Podría mejorar'),('albertoo',16,5,'Muy buena'),('albertoo',17,5,'Muy buena'),('albertoo',23,5,'Me encantó'),('albertoo',26,4,'Muy buena'),('albertoo',33,5,'No me gustó'),('albertoo',36,3,'Deliciosa'),('albertoo',42,3,'Deliciosa'),('albertoo',44,3,'No me gustó'),('albertoo',45,4,'Me encantó'),('albertoo',46,3,'Perfecta'),('albertoo',50,3,'Me encantó'),('albertoo',58,3,'Simple y rica'),('albertoo',59,4,'Deliciosa'),('albertoo',62,5,'Podría mejorar'),('albertoo',64,4,'Deliciosa'),('albertoo',70,3,'Perfecta'),('albertoo',75,4,'Perfecta'),('anaglez',10,5,'No me gustó mucho, esperaba más sabor.'),('carlosrb',2,3,'Me encantó, muy cremosa.'),('carlosrb',3,1,'La familia quedó encantada.'),('carlosrb',7,5,'Muy rica, la haré otra vez.'),('carlosrb',12,5,'Perfecta para una cena rápida.'),('carlosrb',14,1,'No me gustó'),('carlosrb',18,3,'Perfecta'),('carlosrb',26,5,'Repetiré'),('carlosrb',31,3,'Perfecta'),('carlosrb',34,5,'Perfecta'),('carlosrb',36,4,'Repetiré'),('carlosrb',46,3,'Me encantó'),('carlosrb',47,5,'Repetiré'),('carlosrb',48,4,'Deliciosa'),('carlosrb',53,4,'Perfecta'),('carlosrb',57,5,'Me encantó'),('carlosrb',61,5,'Repetiré'),('carlosrb',64,4,'Perfecta'),('carlosrb',69,3,'Podría mejorar'),('carlosrb',71,4,'Simple y rica'),('carlosrb',74,5,'Podría mejorar'),('carlosrb',75,4,'Simple y rica'),('carlosrb',77,4,'Simple y rica'),('diegomp',6,4,'Un clásico que nunca falla.'),('elena_ruiz',4,4,'La familia quedó encantada.'),('elena_ruiz',5,1,'Muy rica, la haré otra vez.'),('ivanlm',5,1,'Fácil de seguir y el resultado genial.'),('ivanlm',6,2,'Muy rica, la haré otra vez.'),('ivanlm',8,5,'No me gustó mucho, esperaba más sabor.'),('ivanlm',9,5,'Una receta sencilla y sabrosa.'),('ivanlm',10,4,'No salió como esperaba, pero pasable.'),('jorgerm',3,4,'Muy rica, la haré otra vez.'),('jorgerm',4,2,'Perfecta para una cena rápida.'),('jorgerm',8,4,'No me gustó mucho, esperaba más sabor.'),('jorgerm',12,1,'La mejor receta que he probado.'),('jorgerm',17,3,'Muy buena'),('jorgerm',18,5,'Repetiré'),('jorgerm',24,5,'Muy buena'),('jorgerm',32,5,'Repetiré'),('jorgerm',38,5,'No me gustó'),('jorgerm',42,5,'Repetiré'),('jorgerm',54,5,'Repetiré'),('jorgerm',67,5,'No me gustó'),('jorgerm',70,3,'Simple y rica'),('jorgerm',77,4,'Simple y rica'),('juanperez',2,5,'Me encantó, muy cremosa.'),('juanperez',4,2,'Una receta sencilla y sabrosa.'),('juanperez',8,4,'Una receta sencilla y sabrosa.'),('juanperez',11,5,'La mejor receta que he probado.'),('juanperez',12,1,'No me gustó'),('juanperez',14,1,'Me encantó'),('juanperez',19,4,'Simple y rica'),('juanperez',21,3,'No me gustó'),('juanperez',23,4,'Simple y rica'),('juanperez',25,5,'Perfecta'),('juanperez',28,5,'Deliciosa'),('juanperez',38,5,'Me encantó'),('juanperez',40,4,'Simple y rica'),('juanperez',47,5,'No me gustó'),('juanperez',49,5,'Podría mejorar'),('juanperez',54,3,'No me gustó'),('juanperez',66,3,'Podría mejorar'),('juanperez',73,4,'Muy buena'),('juanperez',74,3,'No me gustó'),('juanperez',76,5,'Simple y rica'),('juanperez',78,4,'Repetiré'),('lauramg',12,5,'La familia quedó encantada.'),('lmillant',27,4,'Me encanto'),('lucasmr',38,3,'Muy buena'),('luciafdz',5,4,'Un clásico que nunca falla.'),('luciafdz',9,2,'Me quedó un poco sosa, pero bien.'),('luciafdz',11,2,'Un clásico que nunca falla.'),('marcosl',4,3,'Fácil de seguir y el resultado genial.'),('marcosl',7,4,'Muy rica, la haré otra vez.'),('marcosl',8,5,'Un 10 de 10. Gracias.'),('marcosl',25,5,'Podría mejorar'),('marcosl',27,5,'No me gustó'),('marcosl',33,4,'Repetiré'),('marcosl',37,4,'Perfecta'),('marcosl',42,4,'Repetiré'),('marcosl',43,5,'Podría mejorar'),('marcosl',45,3,'Muy buena'),('marcosl',48,5,'Podría mejorar'),('marcosl',49,3,'No me gustó'),('marcosl',50,5,'Perfecta'),('marcosl',54,4,'Podría mejorar'),('marcosl',55,3,'Deliciosa'),('marcosl',70,5,'No me gustó'),('marcosl',72,4,'Me encantó'),('mariacp',1,3,'Una receta sencilla y sabrosa.'),('mariacp',3,1,'La mejor receta que he probado.'),('mariacp',5,2,'Un clásico que nunca falla.'),('mariacp',11,5,'Perfecta para una cena rápida.'),('mariacp',18,3,'Perfecta'),('mariacp',20,3,'Podría mejorar'),('mariacp',30,3,'Deliciosa'),('mariacp',37,3,'Deliciosa'),('mariacp',41,5,'Simple y rica'),('mariacp',43,4,'Deliciosa'),('mariacp',44,3,'Muy buena'),('mariacp',51,4,'Podría mejorar'),('mariacp',52,5,'Repetiré'),('mariacp',60,3,'Podría mejorar'),('mariacp',61,5,'Podría mejorar'),('mariacp',64,5,'No me gustó'),('mariacp',66,4,'Perfecta'),('mariacp',74,5,'No me gustó'),('mariacp',75,3,'Simple y rica'),('martaqr',1,1,'Algo complicada pero valió la pena.'),('martaqr',2,2,'Algo complicada pero valió la pena.'),('martaqr',6,4,'Me encantó, muy cremosa.'),('martaqr',8,4,'No salió como esperaba, pero pasable.'),('martaqr',10,3,'No salió como esperaba, pero pasable.'),('martaqr',11,1,'Perfecta para una cena rápida.'),('natalia_mr',15,5,'Repetiré'),('natalia_mr',21,3,'Podría mejorar'),('natalia_mr',22,4,'Simple y rica'),('natalia_mr',29,4,'Deliciosa'),('natalia_mr',34,4,'Repetiré'),('natalia_mr',45,3,'No me gustó'),('natalia_mr',56,3,'Simple y rica'),('natalia_mr',61,3,'Simple y rica'),('natalia_mr',66,4,'Me encantó'),('natalia_mr',68,3,'No me gustó'),('noemicr',2,4,'La mejor receta que he probado.'),('pedrosl',4,4,'Un clásico que nunca falla.'),('pedrosl',5,3,'Me encantó, muy cremosa.'),('raulhn',1,2,'No me gustó mucho, esperaba más sabor.'),('sandraqv',4,1,'Un 10 de 10. Gracias.'),('veronicavg',1,3,'Algo complicada pero valió la pena.'),('veronicavg',2,2,'Perfecta para una cena rápida.'),('veronicavg',12,1,'¡Deliciosa! La repetiré pronto.'),('veronicavg',13,5,'Me encantó'),('veronicavg',22,3,'No me gustó'),('veronicavg',24,5,'Simple y rica'),('veronicavg',30,5,'Podría mejorar'),('veronicavg',34,4,'Repetiré'),('veronicavg',35,5,'Simple y rica'),('veronicavg',36,4,'Muy buena'),('veronicavg',38,5,'Podría mejorar'),('veronicavg',39,3,'Muy buena'),('veronicavg',47,3,'Deliciosa'),('veronicavg',50,4,'Repetiré'),('veronicavg',55,3,'Muy buena'),('veronicavg',56,4,'Repetiré'),('veronicavg',57,3,'Me encantó'),('veronicavg',58,5,'Muy buena'),('veronicavg',63,5,'Me encantó'),('veronicavg',65,4,'Simple y rica'),('veronicavg',76,4,'Perfecta');
/*!40000 ALTER TABLE `ic_valoracion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vista_recetas_alergenos`
--

DROP TABLE IF EXISTS `vista_recetas_alergenos`;
/*!50001 DROP VIEW IF EXISTS `vista_recetas_alergenos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_recetas_alergenos` AS SELECT 
 1 AS `idReceta`,
 1 AS `nombreReceta`,
 1 AS `alergenos`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_recetas_buscador`
--

DROP TABLE IF EXISTS `vista_recetas_buscador`;
/*!50001 DROP VIEW IF EXISTS `vista_recetas_buscador`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_recetas_buscador` AS SELECT 
 1 AS `idReceta`,
 1 AS `nombre`,
 1 AS `imagen`,
 1 AS `nombreUsu`,
 1 AS `categorias`,
 1 AS `dificultad`,
 1 AS `media`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_recetas_valoracion`
--

DROP TABLE IF EXISTS `vista_recetas_valoracion`;
/*!50001 DROP VIEW IF EXISTS `vista_recetas_valoracion`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_recetas_valoracion` AS SELECT 
 1 AS `idReceta`,
 1 AS `nombre`,
 1 AS `imagen`,
 1 AS `nombreUsu`,
 1 AS `media`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'instacook'
--

--
-- Final view structure for view `vista_recetas_alergenos`
--

/*!50001 DROP VIEW IF EXISTS `vista_recetas_alergenos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_recetas_alergenos` AS select `r`.`idReceta` AS `idReceta`,`r`.`nombre` AS `nombreReceta`,group_concat(distinct `a`.`nombre` order by `a`.`nombre` ASC separator ', ') AS `alergenos` from (((`ic_recetas` `r` join `ic_ingredientesporreceta` `ir` on((`r`.`idReceta` = `ir`.`idReceta`))) join `ic_ingredientesconalergenos` `ia` on((`ir`.`idIngrediente` = `ia`.`idIngrediente`))) join `ic_alergenos` `a` on((`ia`.`idAlergeno` = `a`.`idAlergeno`))) group by `r`.`idReceta`,`r`.`nombre` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_recetas_buscador`
--

/*!50001 DROP VIEW IF EXISTS `vista_recetas_buscador`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_recetas_buscador` AS select `r`.`idReceta` AS `idReceta`,`r`.`nombre` AS `nombre`,`r`.`imagen` AS `imagen`,`r`.`nombreUsu` AS `nombreUsu`,group_concat(distinct `c`.`nombre` order by `c`.`nombre` ASC separator ', ') AS `categorias`,`r`.`dificultad` AS `dificultad`,coalesce(avg(`v`.`valoracion`),0) AS `media` from (((`ic_recetas` `r` join `ic_recetasporcategoria` `rc` on((`rc`.`idReceta` = `r`.`idReceta`))) join `ic_categorias` `c` on((`rc`.`idCategoria` = `c`.`idCategoria`))) left join `ic_valoracion` `v` on((`r`.`idReceta` = `v`.`idReceta`))) group by `r`.`idReceta`,`r`.`nombre`,`r`.`imagen`,`r`.`nombreUsu`,`r`.`dificultad` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_recetas_valoracion`
--

/*!50001 DROP VIEW IF EXISTS `vista_recetas_valoracion`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_recetas_valoracion` AS select `r`.`idReceta` AS `idReceta`,`r`.`nombre` AS `nombre`,`r`.`imagen` AS `imagen`,`r`.`nombreUsu` AS `nombreUsu`,coalesce(avg(`v`.`valoracion`),0) AS `media` from (`ic_recetas` `r` left join `ic_valoracion` `v` on((`r`.`idReceta` = `v`.`idReceta`))) group by `r`.`idReceta`,`r`.`nombre`,`r`.`imagen`,`r`.`nombreUsu` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-12 11:06:06
