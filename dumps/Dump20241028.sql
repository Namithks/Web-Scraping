-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: electronica
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `assemblies_and_subsystems`
--

DROP TABLE IF EXISTS `assemblies_and_subsystems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assemblies_and_subsystems` (
  `id` int NOT NULL AUTO_INCREMENT,
  `categories` varchar(255) DEFAULT NULL,
  `exhibitors` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assemblies_and_subsystems`
--

LOCK TABLES `assemblies_and_subsystems` WRITE;
/*!40000 ALTER TABLE `assemblies_and_subsystems` DISABLE KEYS */;
INSERT INTO `assemblies_and_subsystems` VALUES (1,'Assemblies and subsystems',45),(2,'Assemblies for control applications',11),(3,'Printer assemblies (printing and marking systems)',4),(4,'Assemblies, miscellaneous',8),(5,'Hybrid modules (including multi-chip modules)',10),(6,'Servo-technology / drive elements',20);
/*!40000 ALTER TABLE `assemblies_and_subsystems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `automotive`
--

DROP TABLE IF EXISTS `automotive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `automotive` (
  `id` int NOT NULL AUTO_INCREMENT,
  `categories` varchar(255) DEFAULT NULL,
  `exhibitors` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `automotive`
--

LOCK TABLES `automotive` WRITE;
/*!40000 ALTER TABLE `automotive` DISABLE KEYS */;
INSERT INTO `automotive` VALUES (1,'Drives with combustion engines',8),(2,'Electrical and hybrid electrical vehicles (EVs and HEVs)',92),(3,'Chassis',5),(4,'Interior / comfort',51),(5,'Body / safety',25),(6,'Active safety',10),(7,'Electrical on-board power supply',108),(8,'Construction and test',12);
/*!40000 ALTER TABLE `automotive` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `displays`
--

DROP TABLE IF EXISTS `displays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `displays` (
  `id` int NOT NULL AUTO_INCREMENT,
  `categories` varchar(255) DEFAULT NULL,
  `exhibitors` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `displays`
--

LOCK TABLES `displays` WRITE;
/*!40000 ALTER TABLE `displays` DISABLE KEYS */;
INSERT INTO `displays` VALUES (1,'Liquid crystal display (LCD)',101),(2,'Plasma display panel (PDP)',2),(3,'Cathode ray tube (CRT)',1),(4,'Organic light-emitting diode (OLED)',41),(5,'EL display',1),(6,'Field emission display (FED)',1),(7,'Light emitting diode (LED)',27),(8,'E-paper',20),(9,'Peripheral equipment for displays',64);
/*!40000 ALTER TABLE `displays` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `electromechanics`
--

DROP TABLE IF EXISTS `electromechanics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `electromechanics` (
  `id` int NOT NULL AUTO_INCREMENT,
  `categories` varchar(255) DEFAULT NULL,
  `exhibitors` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `electromechanics`
--

LOCK TABLES `electromechanics` WRITE;
/*!40000 ALTER TABLE `electromechanics` DISABLE KEYS */;
INSERT INTO `electromechanics` VALUES (1,'Electromechanics / System peripherals',660),(2,'Relays, switches and keybords',186),(3,'Interconnection components / systems',358),(4,'Interconnection components, specialized',212),(5,'Casing technology',184);
/*!40000 ALTER TABLE `electromechanics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `electronic_design`
--

DROP TABLE IF EXISTS `electronic_design`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `electronic_design` (
  `id` int NOT NULL AUTO_INCREMENT,
  `categories` varchar(255) DEFAULT NULL,
  `exhibitors` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `electronic_design`
--

LOCK TABLES `electronic_design` WRITE;
/*!40000 ALTER TABLE `electronic_design` DISABLE KEYS */;
INSERT INTO `electronic_design` VALUES (1,'Electronic design (ED / EDA)',62),(2,'CAD / CAE tools',13),(3,'Generation software',9),(4,'Test software',7),(5,'Software for special applications',11),(6,'Peripheral equipment for ED / EDA environments',1),(7,'ED / EDA services',38),(8,'Design and development systems',8);
/*!40000 ALTER TABLE `electronic_design` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `embedded_systems`
--

DROP TABLE IF EXISTS `embedded_systems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `embedded_systems` (
  `id` int NOT NULL AUTO_INCREMENT,
  `categories` varchar(255) DEFAULT NULL,
  `exhibitors` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `embedded_systems`
--

LOCK TABLES `embedded_systems` WRITE;
/*!40000 ALTER TABLE `embedded_systems` DISABLE KEYS */;
INSERT INTO `embedded_systems` VALUES (1,'Embedded systems',184),(2,'Development tools, software',28),(3,'Development tools, hardware',31),(4,'Hardware',77),(5,'Peripheral systems',22),(6,'DDI and other network-technology components',16),(7,'Memories and memory peripherals',36),(8,'System solutions',38),(9,'Embedded vision',16);
/*!40000 ALTER TABLE `embedded_systems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ems_electronic_manufacturing_services`
--

DROP TABLE IF EXISTS `ems_electronic_manufacturing_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ems_electronic_manufacturing_services` (
  `id` int NOT NULL AUTO_INCREMENT,
  `categories` varchar(255) DEFAULT NULL,
  `exhibitors` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ems_electronic_manufacturing_services`
--

LOCK TABLES `ems_electronic_manufacturing_services` WRITE;
/*!40000 ALTER TABLE `ems_electronic_manufacturing_services` DISABLE KEYS */;
INSERT INTO `ems_electronic_manufacturing_services` VALUES (1,'EMS electronic manufacturing services',335),(2,'EMS (component / chip carrier manufacturing)',98),(3,'EMS (component construction and equipment manufacturing)',194),(4,'Product development',102),(5,'Intermediate / semifinished goods, materials',71),(6,'Hybrid components / assemblies',21),(7,'Prototyping',91);
/*!40000 ALTER TABLE `ems_electronic_manufacturing_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `micro__and_nanosystems`
--

DROP TABLE IF EXISTS `micro__and_nanosystems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `micro__and_nanosystems` (
  `id` int NOT NULL AUTO_INCREMENT,
  `categories` varchar(255) DEFAULT NULL,
  `exhibitors` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `micro__and_nanosystems`
--

LOCK TABLES `micro__and_nanosystems` WRITE;
/*!40000 ALTER TABLE `micro__and_nanosystems` DISABLE KEYS */;
INSERT INTO `micro__and_nanosystems` VALUES (1,'Micro- and nanosystems',89),(2,'Microsystems',43),(3,'MEMS',55),(4,'Nanotechnology',3);
/*!40000 ALTER TABLE `micro__and_nanosystems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passive_components`
--

DROP TABLE IF EXISTS `passive_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `passive_components` (
  `id` int NOT NULL AUTO_INCREMENT,
  `categories` varchar(255) DEFAULT NULL,
  `exhibitors` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passive_components`
--

LOCK TABLES `passive_components` WRITE;
/*!40000 ALTER TABLE `passive_components` DISABLE KEYS */;
INSERT INTO `passive_components` VALUES (1,'Passive components',408),(2,'Inductors and accessories',136),(3,'Capacitors',111),(4,'Resistors',95),(5,'Radiofrequency and microwave components',103),(6,'Polymer components',11),(7,'Nonlinear high-voltage components',7),(8,'Passive components, miscellaneous',44),(9,'Piezoelectric components',30),(10,'Magnetic and electro ceramic products',45);
/*!40000 ALTER TABLE `passive_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pcbs_and_other_circuit_carriers`
--

DROP TABLE IF EXISTS `pcbs_and_other_circuit_carriers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pcbs_and_other_circuit_carriers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `categories` varchar(255) DEFAULT NULL,
  `exhibitors` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pcbs_and_other_circuit_carriers`
--

LOCK TABLES `pcbs_and_other_circuit_carriers` WRITE;
/*!40000 ALTER TABLE `pcbs_and_other_circuit_carriers` DISABLE KEYS */;
INSERT INTO `pcbs_and_other_circuit_carriers` VALUES (1,'PCBs and other circuit carriers',259),(2,'Non-PTH single- and double-sided PCBs',33),(3,'Double-sided PCBs, PTH',77),(4,'Multilayer PCBs (ML)',173),(5,'Special PCBs',176),(6,'Injection molded circuits, MID / 3D-MID',9),(7,'Ceramic PCBs',36),(8,'PCBs for backplanes / bus systems',13),(9,'Accessories for PCBs',21);
/*!40000 ALTER TABLE `pcbs_and_other_circuit_carriers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `power_supplies`
--

DROP TABLE IF EXISTS `power_supplies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `power_supplies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `categories` varchar(255) DEFAULT NULL,
  `exhibitors` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `power_supplies`
--

LOCK TABLES `power_supplies` WRITE;
/*!40000 ALTER TABLE `power_supplies` DISABLE KEYS */;
INSERT INTO `power_supplies` VALUES (1,'Power supplies',321),(2,'Transformers',83),(3,'Coilware for specific applications',25),(4,'Accessories for coilware',22),(5,'Power supplies, DC output',133),(6,'Power supplies, AC output',30),(7,'Frequency converters',4),(8,'UPS systems',14),(9,'Special power supplies',63),(10,'Batteries',100),(11,'Accessories',17);
/*!40000 ALTER TABLE `power_supplies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `printed_flexible_electronics`
--

DROP TABLE IF EXISTS `printed_flexible_electronics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `printed_flexible_electronics` (
  `id` int NOT NULL AUTO_INCREMENT,
  `categories` varchar(255) DEFAULT NULL,
  `exhibitors` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `printed_flexible_electronics`
--

LOCK TABLES `printed_flexible_electronics` WRITE;
/*!40000 ALTER TABLE `printed_flexible_electronics` DISABLE KEYS */;
INSERT INTO `printed_flexible_electronics` VALUES (1,'Printed, flexible electronics',113),(2,'Materials',16),(3,'Manufacturing processes',23),(4,'Electronics assembly and packaging, system integration',37),(5,'Inspection and test systems',13),(6,'Devices',27),(7,'Applications',15);
/*!40000 ALTER TABLE `printed_flexible_electronics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `category_name` (`category_name`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (14,'Assemblies and Subsystems'),(13,'Automotive'),(3,'Displays'),(9,'Electromechanics'),(7,'Electronic Design'),(2,'Embedded Systems'),(12,'EMS Electronic Manufacturing Services'),(4,'Micro- and Nanosystems'),(8,'Passive Components'),(11,'PCBs and Other Circuit Carriers'),(10,'Power Supplies'),(17,'Printed Flexible Electronics'),(18,'SEMICON Europa'),(1,'Semiconductors'),(5,'Sensor Technology'),(16,'Services'),(6,'Test and Measurement'),(15,'Wireless');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semicon_europa`
--

DROP TABLE IF EXISTS `semicon_europa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `semicon_europa` (
  `id` int NOT NULL AUTO_INCREMENT,
  `categories` varchar(255) DEFAULT NULL,
  `exhibitors` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semicon_europa`
--

LOCK TABLES `semicon_europa` WRITE;
/*!40000 ALTER TABLE `semicon_europa` DISABLE KEYS */;
INSERT INTO `semicon_europa` VALUES (1,'Photovoltaic Device Manufacturing',4),(2,'Packaging and Assembly Equipment',21),(3,'Flat Panel Display Equipment',1),(4,'Other Equipment',12),(5,'Inspection & Measurement Products',29),(6,'MEMS Equipment',3),(7,'Nanotechnology Equipment and Tools',4),(8,'PV Equipment',8),(9,'Process Equipment',28),(10,'Test Equipment',19),(11,'Packaging and Assembly Materials',10),(12,'Chemicals & Solids',8),(13,'Gases',1),(14,'Mask Making Materials',1),(15,'Nanotechnology Materials',3),(16,'PV Materials',1),(17,'Process Materials',9),(18,'Substrates',7),(19,'Test Materials',2),(20,'Components, Parts & Accessories',29),(21,'Sub-systems',18),(22,'PV Systems',1),(23,'Factory Monitoring & Control Systems (FMCS)',10),(24,'HVAC, Temperature, Humidity, Contamination Control',5),(25,'Material Handling Systems',5),(26,'Communication Software',2),(27,'Design Software',1),(28,'Manufacturing Software',4),(29,'Simulation, Analysis; Modeling Software',2),(30,'Manufacturing Services',13),(31,'Manufacturing Services or Consulting',16),(32,'Associations',2),(33,'Distribution and Logistics',1),(34,'Financial Services',1),(35,'Professional Services',2),(36,'Support Products',5),(37,'Printed, Organic, Flexible and Large Area',9),(38,'Other',2),(39,'Electronic Components',6),(40,'Electronic Applications',4);
/*!40000 ALTER TABLE `semicon_europa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semiconductors`
--

DROP TABLE IF EXISTS `semiconductors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `semiconductors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `categories` varchar(255) DEFAULT NULL,
  `exhibitors` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semiconductors`
--

LOCK TABLES `semiconductors` WRITE;
/*!40000 ALTER TABLE `semiconductors` DISABLE KEYS */;
INSERT INTO `semiconductors` VALUES (1,'Diodes',104),(2,'Transistors',96),(3,'Thyristors',17),(4,'Power semiconductor modules',101),(5,'Power management ICs',99),(6,'Opto semiconductor components',92),(7,'Accessories for discrete semiconductors',7),(8,'Logic circuits',55),(9,'Microprocessors (see Embedded systems)',21),(10,'Memory (see Embedded systems)',15),(11,'Application-specific ICs (ASSP)',54),(12,'Data / signal transformer ICs',55),(13,'ICs, special designs (including ASICs / CSICs)',79);
/*!40000 ALTER TABLE `semiconductors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sensor_technology`
--

DROP TABLE IF EXISTS `sensor_technology`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sensor_technology` (
  `id` int NOT NULL AUTO_INCREMENT,
  `categories` varchar(255) DEFAULT NULL,
  `exhibitors` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sensor_technology`
--

LOCK TABLES `sensor_technology` WRITE;
/*!40000 ALTER TABLE `sensor_technology` DISABLE KEYS */;
INSERT INTO `sensor_technology` VALUES (1,'Sensor technology',182),(2,'Sensors for geometrical parameters',50),(3,'Sensors for mechanical parameters',33),(4,'Sensors for time and time-based parameters',17),(5,'Sensors for temperature and caloric parameters',48),(6,'Sensors for climatic parameters',24),(7,'Sensors for optical and acoustic parameters',14),(8,'Sensors for electrical and magnetical parameters',46),(9,'Sensors for chemical parameters',1),(10,'Sensors for biological parameters',3),(11,'Sensor elements by technology',78),(12,'Gas sensors',11),(13,'Chemical, biological and medical sensors',7);
/*!40000 ALTER TABLE `sensor_technology` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `services` (
  `id` int NOT NULL AUTO_INCREMENT,
  `categories` varchar(255) DEFAULT NULL,
  `exhibitors` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (1,'Information',26),(2,'Institutions / organizations',30),(3,'Business concepts / business development',18),(4,'Electronics development / approval / testing / certification',94);
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_and_measurement`
--

DROP TABLE IF EXISTS `test_and_measurement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test_and_measurement` (
  `id` int NOT NULL AUTO_INCREMENT,
  `categories` varchar(255) DEFAULT NULL,
  `exhibitors` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_and_measurement`
--

LOCK TABLES `test_and_measurement` WRITE;
/*!40000 ALTER TABLE `test_and_measurement` DISABLE KEYS */;
INSERT INTO `test_and_measurement` VALUES (1,'Test and measurement',220),(2,'Measuring / testing of geometric parameters',12),(3,'Mechanical parameters',12),(4,'Time and time-based parameters',5),(5,'Thermal units',11),(6,'Environmental parameters',7),(7,'Chemical and biological parameters',3),(8,'Optical and acoustical parameters',9),(9,'Image / pattern recognition and processing',26),(10,'Electrical parameters',166),(11,'Specialized laboratory / test equipment',43);
/*!40000 ALTER TABLE `test_and_measurement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wireless`
--

DROP TABLE IF EXISTS `wireless`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wireless` (
  `id` int NOT NULL AUTO_INCREMENT,
  `categories` varchar(255) DEFAULT NULL,
  `exhibitors` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wireless`
--

LOCK TABLES `wireless` WRITE;
/*!40000 ALTER TABLE `wireless` DISABLE KEYS */;
INSERT INTO `wireless` VALUES (1,'Cellular systems',24),(2,'Non-cellular systems',44),(3,'Wireless applications',76),(4,'Business partners',5);
/*!40000 ALTER TABLE `wireless` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-28 11:06:13
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: main_products
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `category_name` (`category_name`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (14,'Assemblies and Subsystems'),(13,'Automotive'),(3,'Displays'),(9,'Electromechanics'),(7,'Electronic Design'),(2,'Embedded Systems'),(12,'EMS Electronic Manufacturing Services'),(4,'Micro- and Nanosystems'),(8,'Passive Components'),(11,'PCBs and Other Circuit Carriers'),(10,'Power Supplies'),(17,'Printed Flexible Electronics'),(18,'SEMICON Europa'),(1,'Semiconductors'),(5,'Sensor Technology'),(16,'Services'),(6,'Test and Measurement'),(15,'Wireless');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-28 11:06:14
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: company
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `companydetails`
--

DROP TABLE IF EXISTS `companydetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `companydetails` (
  `About` varchar(255) DEFAULT NULL,
  `Details` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companydetails`
--

LOCK TABLES `companydetails` WRITE;
/*!40000 ALTER TABLE `companydetails` DISABLE KEYS */;
INSERT INTO `companydetails` VALUES ('Company Name','electronica'),('CEOs','Dr. Reinhard Pfeiffer, Stefan Rummel'),('Website URL','https://electronica.de/en/'),('Address','Messe München GmbH\nMessegelände\n81823 München\nGermany'),('Phone','49 89 949-20720'),('Fax','49 89 949-9720729'),('E-mail:','newsline@messe-muenchen.de'),('Website','www.messe-muenchen.de');
/*!40000 ALTER TABLE `companydetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_links`
--

DROP TABLE IF EXISTS `social_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_links` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Platform` varchar(255) DEFAULT NULL,
  `Link` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_links`
--

LOCK TABLES `social_links` WRITE;
/*!40000 ALTER TABLE `social_links` DISABLE KEYS */;
INSERT INTO `social_links` VALUES (1,'LinkedIn','https://www.linkedin.com/company/electronicafair/'),(2,'Twitter','https://twitter.com/ep_mmi?lang=en'),(3,'Facebook','https://www.facebook.com/electronicaIndia.productronicaIndia/'),(4,'YouTube','https://www.youtube.com/user/electronicaFair');
/*!40000 ALTER TABLE `social_links` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-28 11:06:14
