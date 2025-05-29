-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: bd_acrivera
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

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
-- Table structure for table `directorio`
--

DROP TABLE IF EXISTS `directorio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `directorio` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `nom_usu` varchar(100) NOT NULL,
  `puesto` varchar(50) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `extencion` varchar(50) DEFAULT NULL,
  `area` varchar(50) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directorio`
--

LOCK TABLES `directorio` WRITE;
/*!40000 ALTER TABLE `directorio` DISABLE KEYS */;
INSERT INTO `directorio` VALUES (1,'Alejandro Rivera Bretón','Director General','direccion@acrivera.com.mx','3008','DG'),(2,'Karla Patricia Cázares Hernández','Asistente Dirección General','asistentedireccion@acrivera.com.mx','3008','DG'),(3,'Isaac Sánchez Peralta','Chofer','auxdireccion@acrivera.com.mx','3008','DG'),(4,'Luis Alberto Carbonell García','Director de Operaciones','direccionoperaciones@acrivera.com.mx','3048','DG'),(5,'Victor Remedios Santiago','Project Manager','proyectos@acrivera.com.mx','N/A','DG'),(6,'Cecilio Hernández González','Director financiero','dfinanzas@acrivera.com.mx','N/A','DF'),(7,'José Filiberto García Orozco','Contralor ','contraloria@acrivera.com.mx','N/A','CL'),(8,'Jorge Martínez Gómez','Jefe de Auditoría','auditorcontable@acrivera.com.mx','N/A','AUD'),(9,'Héctor Gerardo García Morales','Auxliar de Auditoría','auxauditorcontable@acrivera.com.mx','N/A','AUD'),(10,'Teresita del Carmen Morales Zavaleta','Gerente de Crédito y Cobranza','cyc@acrivera.com.mx','3050','CXC'),(11,'Jose Guillermo Pajaro Coatl','Ejecutivo de Crédito y Cobranza','credito01@acrivera.com.mx','3022','CXC'),(12,'Carlos Alberto Tela Romero','Ejecutivo de Crédito y Cobranza','credito03@acrivera.com.mx','3043','CXC'),(13,'Alejandro Rodríguez Ramírez','Ejecutivo de Crédito y Cobranza','cobrador01@acrivera.com.mx','3056','CXC'),(14,'Roberto Moyotl Osorio','Chofer','auxcyc@acrivera.com.mx','3056','CXC'),(16,'Angélica Patricia Ramírez de la Vega','Contador General','contabilidad@acrivera.com.mx','3052','CT'),(17,'Lucía Ivette Santiesteban Nava','Auxiliar Contable','auxcontable@acrivera.com.mx','3052','CT'),(18,'Lucero Simón del Carmen','Auxiliar Contable','auxcontable02@acrivera.com.mx','3052','CT'),(19,'Carlos Ignacio González Sedeño','Auxiliar Contable','gastos@acrivera.com.mx','3052','CT'),(20,'Ángel Roberto Coronado','Administrador de Egresos','egresos@acrivera.com.mx','3052','CT'),(21,'Isabel Zenteno Sánchez','Administrador de Ingresos','ingresos@acrivera.com.mx','3052','CT'),(22,'Norma Angélica García Martínez','Tesorería','tesoreria.acr@acrivera.com.mx','3051','TA'),(23,'Luz María Ortíz Linares','Auxiliar Tesorería','auxtesoreria@acrivera.com.mx','3051','TA'),(24,'María Getsemaní Benítez Flores','Caja','caja@acrivera.com.mx','3023','TA'),(25,'Marco Antonio Alvarado Lozano','Responsable de PLD','pld@acrivera.com.mx','3057','PLD'),(26,'Claudia del Carmen Gómez Cervantes','Analista PLD','analistapld@acrivera.com.mx','3057','PLD'),(27,'Omar Oliver Vázquez','Analista PLD','analistapld02@acrivera.com.mx','3057','PLD'),(28,'Miguel Calvario Esquina','Coordinador Enlace Financiero','coordef@acrivera.com.mx','3067','EF'),(29,'Mizadahin Guadalupe Bello Mendoza.','Enlace Financiero','enlacefinanciero01@acrivera.com.mx','3067','EF'),(30,'Blanca Iliana Cholula Cruz','Enlace Financiero','enlacefinanciero02@acrivera.com.mx','3067','EF'),(31,'Julio César Domínguez González','Asesor de Seguros','seguros@acrivera.com.mx','3026','EF'),(32,'Virginia Domínguez Amador','Gerencia de Recursos Humanos','gerenciarecursoshumanos@acrivera.com.mx','3047','RH'),(33,'Eyra Martinez Camacho','Jefe de relaciones laborales','jlaboral@acrivera.com.mx','3047','RH'),(34,'Ana Karen Gutiérrez Gutiérrez','Analista de Reclutamiento','reclutamiento@acrivera.com.mx','3047','RH'),(35,'Ana Karen Sevilla Pulido','Analista de Reclutamiento','reclutamiento02@acrivera.com.mx','3047','RH'),(36,'Lorena Pulido Ortíz','Auxiliar de Recursos Humanos','auxrh@acrivera.com.mx','3047','RH'),(37,'Elizabeth Ahuatl Romero','Coordinador de Nóminas','jnominas@acrivera.com.mx','3047','RH'),(38,'Uriel Noé López Meza','Auxiliar de Nóminas','nominas@acrivera.com.mx','3047','RH'),(39,'María Julieta Rivas Cortezano','Auxiliar de Nóminas','nominas.iz@acrivera.com.mx','3047','RH'),(40,'Juan Márquez Silvestre','Coordinador de Mejora Continua','cmc@acrivera.com.mx','3047','RH'),(41,'Jennifer Denisse Orozco Solís','Analista de Capacitación','training@acrivera.com.mx','3047','RH'),(42,'Miriam Aguilar Vivas','Recepcionista','recepcion@acrivera.com.mx','3000 / 3001','RH'),(43,'Antonio Flores Atempa','Supervisor de Vigilancia','vigilancia@acrivera.com.mx','3055','RH'),(44,'José Jesús Najar Rodríguez','Analista de Marketing','marketing@acrivera.com.mx','3047','MK'),(45,'Eder Armando Espinoza Fuentes','Community Manager','cmanager@acrivera.com.mx','3047','MK'),(46,'María Luisa Juárez Soria','Calidad y Satisfacción al Cliente','calidadclientes@acrivera.com.mx','3059','MK'),(47,'Jennifer Martínez García','Customer Experience','cxperiencia@acrivera.com.mx','3054','MK'),(48,'Julio Castillo Valerdi','Jefe de Sistemas','sistemas@acrivera.com.mx','3015','TI'),(49,'Leonardo Daniel Ramírez Morales','Auxiliar de Sistemas','auxsistemas@acrivera.com.mx','3015','TI'),(50,'Abel de Jesús Mora Flores','Coordinador  de Soporte Técnico','coordsistemas@acrivera.com.mxx','3090','TI'),(51,'José Arturo Moreno Aguilar','Soporte Técnico','soporte1@acrivera.com.mx','3090','TI'),(52,'Mario Javier Romero Mendoza','Soporte Técnico','soporte2@acrivera.com.mx','3090','TI'),(53,'Martha María Ramírez Rodríguez','Jefe de Compras','jcompras@acrivera.com.mx','3016','CS'),(54,'Sergio Morales Méndez','Comprador Indirectos','compras@acrivera.com.mx','3016','CS'),(55,'Maira Sánchez Moreno','Auxiliar Administrativo de Compras','auxcompras@acrivera.com.mx','3016','CS'),(56,'Sara Gabriela Montiel Villegas','Auxiliar Administrativo Compras','auxcompras02@acrivera.com.mx','3016','CS'),(57,'Emmanuel Morales Camaño','Comprador HyP','comprashyp@acrivera.com.mx','3016','CS'),(58,'Jovany Calderón Morales','Compras HyP','comprashyp02@acrivera.com.mx','3016','CS'),(59,'Israel Castellanos Deolarte','Comprador Servicio','compras02@acrivera.com.mx','3016','CS'),(60,'María Graciela Ramos Sánchez','Administración Almacén','administracionalmacen@acrivera.com.mx','3020 / 3021','AA'),(61,'Adrián Félix Martínez Orea','Jefe Almacén','jefealmacen@acrivera.com.mx','3020 / 3021','AA'),(62,'Román Campos Urbano','Supervisor de almacen','salmacen@acrivera.com.mx','3020 / 3021','AA'),(63,'Jessica Matamoros Peralta','Auxiliar Administrativo','talleralmacen@acrivera.com.mx','3020 / 3021','AA'),(64,'Rodrigo Dolores Contreras','Auxiliar Administrativo','auxiliaralmacen@acrivera.com.mx','3020 / 3021','AA'),(65,'Carlos Jovani Moreno Mora','Auxiliar Ventanilla Servicio','talleralmacen02@acrivera.com.mx','3020 / 3021','AA'),(66,'Omar Tepoz Hernández','Auxiliar Ventanilla Servicio','ventaspromotor01@acrivera.com.mx','3020 / 3021','AA'),(67,'Sergio Damián Almendra Díaz','Auxiliar Ventanilla Refacciones','ventanillarefacciones@acrivera.com.mx','3020 / 3021','AA'),(68,'Janin Olvera Olvera','Auxiliar Recibo de Mercancía','recepcionmaterial1@acrivera.com.mx','3020 / 3021','AA'),(69,'Christian Pablo Jiménez Pérez','Administrador de Planeadores','jplaneador.ec@acrivera.com.mx','3020 / 3021','AA'),(70,'Elizabeth Pérez Espegel','Planeador Comprador','planeador@acrivera.com.mx','3018 / 3019','AA'),(71,'Sandra Romero González','Auxiliar de Planeador','auxiliarplaneador@acrivera.com.mx','3020 / 3021','AA'),(72,'Cesar Jair Luciano Gutiérrez','Almacenista Total Parts','auxiliartotalparts@acrivera.com.mx','556 730 1001 - Ext. 113','AA'),(73,'Andrés Robles González','Gerente de Refacciones','gerenteventasrefacciones@acrivera.com.mx','3017','VR'),(74,'José Victor Chávez García','Jefe de Refacciones','jeferefacciones@acrivera.com.mx','3018 / 3019','VR'),(75,'Ernesto Pérez Michicol','Mostrador','ventasmostrador01@acrivera.com.mx','3024','VR'),(76,'Miguel Ángel Gámez Quecholac','Auxiliar Mostrador','ventasmostrador02@acrivera.com.mx','3025','VR'),(77,'Erik Adrián Bravo Hernández','Promotor de Refacciones','ventaspromotor02@acrivera.com.mx','3018 / 3019','VR'),(78,'Cesar Monterrubio González','Promotor de Refacciones','ventaspromotor03@acrivera.com.mx','3018 / 3019','VR'),(79,'Antonio Cabrera Caselín','Promotor de Refacciones','ventaspromotor04@acrivera.com.mx','3018 / 3019','VR'),(80,'Jesús Rair Castillo Lezama','Promotor de Refacciones','ventaspromotor05@acrivera.com.mx','3018 / 3019','VR'),(81,'Eric Rafael López Benítez','Promotor de Refacciones','auxiliarrefacciones@acrivera.com.mx','3018 / 3019','VR'),(82,'Ángel Leopoldo Cerezo López','Promotor de Refacciones','ventasmarketing02@acrivera.com.mx','3018 / 3019','VR'),(83,'Juan Manuel Flores Alfaro','Subgerente de Servicio','sgservicio@acrivera.com.mx','3039','SV'),(85,'Karina Bautista Chantre ','Auxiliar Administrativo','auxiliarservicio@acrivera.com.mx','3039','SV'),(86,'Mayrel Yaraseth de León Rodríguez','Asesor de Servicio','asesorservicio03@acrivera.com.mx','3054','SV'),(87,'Nestor Andrés Torres Pérez','Asesor de Servicio','asesorservicio05@acrivera.com.mx','3054','SV'),(88,'Brenda Andrea Osorio Palma','Administrador de Garantías','garantias@acrivera.com.mx','3013','SV'),(89,'Fátima Pérez Rojas','Auxiliar de Garantías','auxiliargarantias@acrivera.com.mx','3013','SV'),(90,'Narshi Nanda Cordero Gallegos','Auxiliar de Garantías','auxiliargarantias02@acrivera.com.mx','3013','SV'),(91,'Ulises Roberto Zavala Lara','Jefe de Hojalatería y Pintura','jefehojalateria@acrivera.com.mx','3049','HYP'),(92,'Giselle Nathaly Salinas Rodríguez','Auxiliar Administrativo','auxiliarhyp@acrivera.com.mx','3058','HYP'),(93,'Jesús Daniel García Gois','Valuador','valuacion@acrivera.com.mx','3058','HYP'),(94,'Abigail Moyano Salazar','Promotor de HyP','promotorhyp@acrivera.com.mx','3058','HYP'),(95,'José Carlos Rascón Papaqui','Asesor de HyP','asesorhyp@acrivera.com.mx','3031','HYP'),(96,'Erika Ramírez Soriano','Jefe de Administración Ventas','administracionventas01@acrivera.com.mx','3033','AV'),(97,'Elsa Mayra Castro Acatitla','Auxiliar Administrativo','administracionventas@acrivera.com.mx','3029','AV'),(98,'Alfonso Rivero Trespalacios','Gerencia de Ventas Carga','gerenteventascarga@acrivera.com.mx','3009','VC'),(99,'Alain Alberto Flores Aparicio','Auxiliar Administrativo','auxiliarcarga@acrivera.com.mx','3061','VC'),(100,'José Francisco Coello Luna','Ejecutivo de Ventas Carga','ventascarga01@acrivera.com.mx','3061','VC'),(101,'José Antonio Rossainz Ramírez','Ejecutivo de Ventas Carga','ventascarga02@acrivera.com.mx','3061','VC'),(102,'Efrén Tepoxtecatl Cotzomi','Ejecutivo de Ventas Carga','ventascarga03@acrivera.com.mx','3061','VC'),(103,'José Angel Ruíz Cordova','Ejecutivo de Ventas Carga','ventascarga05@acrivera.com.mx','3061','VC'),(104,'Fernando Manuel Coeto Ruiz','Ejecutivo de Ventas Carga','ventascarga06@acrivera.com.mx','3061','VC'),(105,'Uriel López Morales','Coordinador de Enlace Freightliner','enlacefl@acrivera.com.mx','3044 / 3045','VC'),(106,'Marco Antonio Tostado Carrera','Gerente de Ventas Carga FL360','gventasfl360@acrivera.com.mx','3028','VC'),(108,'José Luis Estrada Hernández','Gerente de Ventas Pasaje','gpasaje@acrivera.com.mx','3028','VP'),(109,'Javier Xochitiotzi Hernández','Ejecutivo de Ventas Pasaje','ventaspasaje01@acrivera.com.mx','3035','VP'),(110,'Fernando Felipe Hernández Gutiérrez','Ejecutivo de Ventas Pasaje','ventaspasaje04@acrivera.com.mx','3035','VP'),(111,'Martiniano Tobias Trujillo González','Gerente de Ventas Sprinter','gerentevanes@acrivera.com.mx','3027','VS'),(112,'Jonathan Teutli Téllez','BDC','bdc@acrivera.com.mx','3034','VS'),(113,'Cinthia Rocha Angulo','Ejecutivo de Ventas Sprinter','ventasvanes04@acrivera.com.mx','3034','VS'),(114,'Jehú Joel González Ramos','Ejecutivo de Ventas Sprinter','ventasvanes05@acrivera.com.mx','3034','VS'),(115,'Juan Luis López Orozco','Ejecutivo de Ventas Sprinter','ventasvanes06@acrivera.com.mx','3034','VS'),(116,'Miguel Ángel Hernández Potrero','Ejecutivo de Ventas Sprinter','ventasvanes07@acrivera.com.mx','3034','VS'),(117,'Jehú Joel González Ramos','Ejecutivo de Ventas Sprinter','fuerzamovilvanes@acrivera.com.mx','3034','VS'),(119,'Josué Abraham Hernández Islas','Auxiliar Administrativo Servicio','cexpress@acrivera.com.mx','0','AA'),(123,'Daniel Correa Domínguez','Ejecutivo de Crédito y Cobranza','credito02@vanesrivera.com.mx','0','CXC'),(124,'Indra Yamel Calderón Pérez','Analista de Reclutamiento','reclutamiento03@acrivera.com.mx','3047','RH'),(125,'Berenice Hernández Ponce','Customer Experience','cxperiencia@acrivera.com.mx','3054','MK'),(126,'César Augusto Rodríguez Herrera','Gerente de Servicio','gservicio@acrivera.com.mx','3012','SV'),(127,'Guadalupe Marroquín Trillo','Torre de Control','torrecontrol@acrivera.com.mx','3039','SV'),(128,'Carlos Alberto Bahena Delgado','Asesor de Servicio','asesorservicio04@acrivera.com.mx','3054','SV'),(129,'Francisco Morán González ','Coordinador de Entregas','auxiliarventas@acrivera.com.mx','0','AV');
/*!40000 ALTER TABLE `directorio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipo`
--

DROP TABLE IF EXISTS `equipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipo` (
  `id_equipo` int(11) NOT NULL AUTO_INCREMENT,
  `nombreEquipo` varchar(20) NOT NULL,
  `marca` varchar(20) NOT NULL,
  `modelo` varchar(20) NOT NULL,
  `no_serie` varchar(20) NOT NULL,
  `observaciones` text DEFAULT NULL,
  `id_usuario` int(11) NOT NULL,
  PRIMARY KEY (`id_equipo`),
  KEY `id_usuario` (`id_usuario`),
  CONSTRAINT `equipo_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipo`
--

LOCK TABLES `equipo` WRITE;
/*!40000 ALTER TABLE `equipo` DISABLE KEYS */;
/*!40000 ALTER TABLE `equipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evidencia`
--

DROP TABLE IF EXISTS `evidencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `evidencia` (
  `id_evidencia` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  `fecha` varchar(20) NOT NULL,
  `dispositivo` varchar(50) NOT NULL,
  `url_resguardo` varchar(100) DEFAULT NULL,
  `url_mantenimiento` varchar(100) DEFAULT NULL,
  `id_usuario` int(11) NOT NULL,
  `estatus` int(11) NOT NULL,
  `estatus_mant` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_evidencia`),
  KEY `id_usuario` (`id_usuario`),
  CONSTRAINT `evidencia_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=306 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evidencia`
--

LOCK TABLES `evidencia` WRITE;
/*!40000 ALTER TABLE `evidencia` DISABLE KEYS */;
INSERT INTO `evidencia` VALUES (1,'JOSE ARTURO MORENO AGUILAR','15/10/2024','PC-COMPLETA','RESGUARDO1.pdf','MANTENIMIENTO2.pdf',1,1,1),(2,'ANDRES ROBLES GONZALEZ','10/10/2024','PC-COMPLETA','RESGUARDO1.pdf',NULL,1,1,1),(3,'ANGEL LEOPOLDO CEREZO LOPEZ','11/07/2024','PC-COMPLETA','RESGUARDO1.pdf','MANTENIMIENTO1.pdf',1,1,1),(4,'ANGEL ROBERTO CORONADO','18/07/2024','PC-COMPLETA','RESGUARDO1.pdf',NULL,1,1,1),(5,'ANGELICA MARQUEZ RODRIGUEZ','18/09/2024','UPS','RESGUARDO1.pdf',NULL,1,1,1),(6,'ANTONIO CABRERA CASELIN','15/07/2024','PC-COMPLETA','RESGUARDO1.pdf','MANTENIMIENTO1.pdf',1,1,1),(7,'ANTONIO FLORES ATEMPA','14/08/2024','PC-COMPLETA','RESGUARDO1.pdf',NULL,1,1,1),(8,'ARTURO SALAMA HUERTA','28/08/2024','TABLET','RESGUARDO1.pdf',NULL,1,1,1),(9,'BLANCA ILIANA CHOLULA CRUZ','12/08/2024','IPAD MINI 4','RESGUARDO1.pdf',NULL,1,1,1),(10,'BRENDA ANDREA OSORIO PALMA','19/08/2024','PC-COMPLETA','RESGUARDO1.pdf',NULL,1,1,1),(11,'BRNARDINO ORTIZ SALDAÑA','02/09/2024','LAPTOP','RESGUARDO1.pdf',NULL,1,1,1),(12,'CARLOS ALBERTO TELA ROMERO','12/10/2024','PC-COMPLETA','RESGUARDO1.pdf','MANTENIMIENTO1.pdf',1,1,1),(13,'CARLOS IGNACIO GONZALEZ SEDEÑO','10/10/2024','UPS','RESGUARDO1.pdf',NULL,1,1,1),(14,'CARLOS JOVANI MORENO MORA','05/08/2024','PC-COMPLETA','RESGUARDO1.pdf',NULL,1,1,1),(15,'CECILIO HERNANDEZ GONZALEZ','22/07/2024','LAPTOP','RESGUARDO1.pdf',NULL,1,1,1),(16,'CHRISTIAN PABLO JIMENEZ PEREZ','22/08/2024','PC-COMPLETA','RESGUARDO1.pdf','MANTENIMIENTO1.pdf',1,1,1),(17,'DIEGO MARTINEZ PATRICIO','12/07/2024','PC-COMPLETA','RESGUARDO1.pdf',NULL,1,1,1),(19,'ELIZABETH AHUATL ROMERO','15/07/2024','PC-COMPLETA','RESGUARDO1.pdf',NULL,1,1,1),(20,'ELIZABETH PEREZ ESPEGEL','26/07/2024','PC-COMPLETA','RESGUARDO1.pdf','MANTENIMIENTO1.pdf',1,1,1),(21,'ELSA MAYRA CASTRO ACATITLA','05/08/2024','PC-COMPLETA','RESGUARDO1.pdf',NULL,1,1,1),(22,'EMMANUEL MORALES CAMAÑO','21/10/2024','PC-COMPLETA','RESGUARDO1.pdf','MANTENIMIENTO1.pdf',1,1,1),(23,'ERIK LOPEZ LOPEZ','15/10/2024','PC-COMPLETA','RESGUARDO1.pdf',NULL,1,1,1),(24,'ERIK ADRIAN BRAVO HERNANDEZ','08/07/2024','PC-COMPLETA','RESGUARDO1.pdf','MANTENIMIENTO1.pdf',1,1,1),(25,'ERIKA RAMIREZ SORIANO','08/10/2024','PC-COMPLETA','RESGUARDO1.pdf','MANTENIMIENTO1.pdf',1,1,1),(26,'ERNESTO PEREZ MICHICOL','06/07/2024','PC-COMPLETA','RESGUARDO1.pdf',NULL,1,1,1),(27,'FATIMA PEREZ ROJAS','15/08/2024','PC-COMPLETA','RESGUARDO1.pdf','MANTENIMIENTO1.pdf',1,1,1),(28,'FERNANDO FERNANDEZ HERNANDEZ','15/10/2024','PC-COMPLETA','RESGUARDO1.pdf',NULL,1,1,1),(29,'GUADALUPE CORTES SANCHEZ','19/07/2024','PC-COMPLETA','RESGUARDO1.pdf','MANTENIMIENTO1.pdf',1,1,1),(30,'HECTOR GERARDO GARCIA MORALES','23/09/2024','PC-COMPLETA','RESGUARDO1.pdf','MANTENIMIENTO1.pdf',1,1,1),(31,'HUGO ENRIQUE GUZMAN CERVANTES','09/10/2024','PC-COMPLETA','RESGUARDO1.pdf','MANTENIMIENTO1.pdf',1,1,1),(32,'IKER ANTONIO AGUILAR SANCHEZ','15/10/2024','PC-COMPLETA','RESGUARDO1.pdf',NULL,1,1,1),(33,'ISRAEL CASTELLANOS DEOLARTE','15/10/2024','PC-COMPLETA','RESGUARDO1.pdf',NULL,1,1,1),(34,'JENNIFER MARTINEZ GARCIA','15/10/2024','PC-COMPLETA','RESGUARDO1.pdf',NULL,1,1,1),(35,'JESUS RAIR CASTILLO LEZAMA','18/09/2024','UPS','RESGUARDO1.pdf',NULL,1,1,1),(36,'JOEL GONZALEZ RAMOS','15/10/2024','PC-COMPLETA','RESGUARDO1.pdf',NULL,1,1,1),(37,'JONATHAN TEUTLI TELLEZ','15/10/2024','PC-COMPLETA','RESGUARDO1.pdf',NULL,1,1,1),(38,'JORGE VAZQUEZ FIGUEROA','08/01/2024','PC-COMPLETA','RESGUARDO1.pdf',NULL,1,1,1),(39,'JOSE GUILLERMO PAJARO COATL','15/10/2024','PC-COMPLETA','RESGUARDO1.pdf',NULL,1,1,1),(40,'JOSE JESUS NAJAR RODRIGUEZ','11/09/2024','TABLET','RESGUARDO1.pdf',NULL,1,1,1),(41,'JOSE LUIS ESTRADA HERNANDEZ','15/10/2024','PC-COMPLETA','RESGUARDO1.pdf',NULL,1,1,1),(42,'JOSE MANUEL LUCAS MONDRAGON','27/08/2024','PC-COMPLETA','RESGUARDO1.pdf',NULL,1,1,1),(43,'JOSE VICTOR CHAVEZ GARCIA','10/10/2024','UPS','RESGUARDO1.pdf',NULL,1,1,1),(44,'JUAN CARLOS CAMPOS OROPEZA','15/10/2024','PC-COMPLETA','RESGUARDO1.pdf',NULL,1,1,1),(45,'JUAN LUIS LOPEZ OROZCO','15/10/2024','PC-COMPLETA','RESGUARDO1.pdf',NULL,1,1,1),(46,'JUAN MANUEL GUZMAN GARCIA','11/07/2024','PC-COMPLETA','RESGUARDO1.pdf','MANTENIMIENTO1.pdf',1,1,1),(47,'JULIO MARTINEZ SANCHEZ','19/07/2024','PC-COMPLETA','RESGUARDO1.pdf','MANTENIMIENTO1.pdf',1,1,1),(48,'KARINA BAUTISTA CHANTRE','15/10/2024','PC-COMPLETA','RESGUARDO1.pdf',NULL,1,1,1),(49,'KARINA LOPEZ RODRIGUEZ','15/10/2024','PC-COMPLETA','RESGUARDO1.pdf',NULL,1,1,1),(50,'LORENA PULIDO ORTIZ','10/10/2024','PC-COMPLETA','RESGUARDO1.pdf','MANTENIMIENTO1.pdf',1,1,1),(51,'LUCIA IVETTE SANTIESTEBAN NAVA','24/08/2024','PC-COMPLETA','RESGUARDO1.pdf','MANTENIMIENTO1.pdf',1,1,1),(52,'LUIS DANIEL JUAREZ VELAZQUEZ','17/07/2024','PC-COMPLETA','RESGUARDO1.pdf','MANTENIMIENTO1.pdf',1,1,1),(53,'LUIS GUILLERMO HUERTA VICENTE','15/10/2024','PC-COMPLETA','RESGUARDO1.pdf',NULL,1,1,1),(54,'MAGDALENA GUTIERREZ CERON','15/10/2024','PC-COMPLETA','RESGUARDO1.pdf',NULL,1,1,1),(55,'MARIA GETSAMANI BENITEZ FLORES','15/10/2024','PC-COMPLETA','RESGUARDO1.pdf',NULL,1,1,1),(56,'MARIA JULIETA RIVAS CORTEZANO','15/10/2024','PC-COMPLETA','RESGUARDO1.pdf',NULL,1,1,1),(57,'MARIA LUISA JUAREZ SORIA','15/10/2024','PC-COMPLETA','RESGUARDO1.pdf',NULL,1,1,1),(58,'MARIO JAVIER ROMERO MENDOZA','15/10/2024','PC-COMPLETA','RESGUARDO1.pdf',NULL,1,1,1),(59,'MARTHA MARIA RAMIREZ RODRIGUEZ','17/10/2024','LAPTOP','RESGUARDO1.pdf',NULL,1,1,1),(60,'MAURICIO ALVAREZ CRUZ','15/10/2024','PC-COMPLETA','RESGUARDO1.pdf',NULL,1,1,1),(61,'MAURO ANTELMO CAMACHO GUERRA','15/10/2024','PC-COMPLETA','RESGUARDO1.pdf',NULL,1,1,1),(62,'MIGUEL ANGEL GAMEZ QUECHOLAC','15/10/2024','PC-COMPLETA','RESGUARDO1.pdf',NULL,1,1,1),(63,'MIGUEL ANGEL HERNANDEZ POTRERO','15/10/2024','PC-COMPLETA','RESGUARDO1.pdf',NULL,1,1,1),(64,'MIGUEL CALVARIO ESQUINA','15/10/2024','PC-COMPLETA','RESGUARDO1.pdf',NULL,1,1,1),(65,'MIRIAM AGUILAR VIVAS','15/10/2024','PC-COMPLETA','RESGUARDO1.pdf',NULL,1,1,1),(66,'MIZADAHIN GUADALUPE BELLO MENDOZA','15/10/2024','PC-COMPLETA','RESGUARDO1.pdf',NULL,1,1,1),(67,'MONICA ARTEAGA MALDONADO','15/10/2024','PC-COMPLETA','RESGUARDO1.pdf',NULL,1,1,1),(68,'MONSERRAT MOTA SANCHEZ','15/10/2024','PC-COMPLETA','RESGUARDO1.pdf',NULL,1,1,1),(69,'NARSHI NANDA CORDERO GALLEGOS','15/10/2024','PC-COMPLETA','RESGUARDO1.pdf',NULL,1,1,1),(70,'NESTOR ANDRES','15/10/2024','PC-COMPLETA','RESGUARDO1.pdf',NULL,1,1,1),(71,'NORMA ANGELICA GARCIA MARTINEZ','15/10/2024','PC-COMPLETA','RESGUARDO1.pdf',NULL,1,1,1),(72,'OMAR GUTIERREZ DOMINGUEZ','15/10/2024','PC-COMPLETA','RESGUARDO1.pdf',NULL,1,1,1),(73,'OMAR MOISES ESPINOZA HERNANDEZ','15/10/2024','PC-COMPLETA','RESGUARDO1.pdf',NULL,1,1,1),(74,'PAULO CESAR SANCHEZ CONTRERAS','15/10/2024','PC-COMPLETA','RESGUARDO1.pdf',NULL,1,1,1),(75,'RAMOS LOPEZ ROMERO','15/10/2024','PC-COMPLETA','RESGUARDO1.pdf',NULL,1,1,1),(76,'RICARDO DE JESUS JUAREZ CORTEZ','15/10/2024','PC-COMPLETA','RESGUARDO1.pdf',NULL,1,1,1),(77,'ROBERTO MOYOTL OSORIO','15/10/2024','PC-COMPLETA','RESGUARDO1.pdf',NULL,1,1,1),(78,'RODRIGO DOLORES CONTRERAS','15/10/2024','PC-COMPLETA','RESGUARDO1.pdf',NULL,1,1,1),(79,'ROMAN CAMPOS URBANO','15/10/2024','PC-COMPLETA','RESGUARDO1.pdf',NULL,1,1,1),(80,'SANDRA ROMERO GONZALEZ','15/10/2024','PC-COMPLETA','RESGUARDO1.pdf',NULL,1,1,1),(81,'SARA GABRIELA MONTIEL VILLEGAS','15/10/2024','PC-COMPLETA','RESGUARDO1.pdf',NULL,1,1,1),(82,'SERGIO DAMIAN ALMENDRA DIAZ','15/10/2024','PC-COMPLETA','RESGUARDO1.pdf',NULL,1,1,1),(83,'SERGIO LOZADA HERNANDEZ','15/10/2024','PC-COMPLETA','RESGUARDO1.pdf',NULL,1,1,1),(84,'TERESITA DEL CARMEN MORALES ZAVALETA','15/10/2024','PC-COMPLETA','RESGUARDO1.pdf',NULL,1,1,1),(85,'VALERIA DENISE RIVERA ROJAS','15/10/2024','PC-COMPLETA','RESGUARDO1.pdf',NULL,1,1,1),(86,'VICTOR MANUEL CARMONA RODRIGUEZ','15/10/2024','PC-COMPLETA','RESGUARDO1.pdf',NULL,1,1,1),(87,'VIRGINIA GARCIA MONFIL','15/10/2024','PC-COMPLETA','RESGUARDO1.pdf',NULL,1,1,1),(88,'YVONNE CASTILLO MERLIN','15/10/2024','PC-COMPLETA','RESGUARDO1.pdf',NULL,1,1,1),(89,'_GABRIEL MEDINA','15/10/2024','PC-COMPLETA','RESGUARDO1.pdf',NULL,1,1,1),(90,'MIGUEL CALVARIO ESQUINA','15/10/2024','PC-COMPLETA','RESGUARDO2.pdf',NULL,1,1,1),(91,'MIGUEL CALVARIO ESQUINA','15/10/2024','PC-COMPLETA','RESGUARDO3.pdf',NULL,1,1,1),(92,'RAMOS LOPEZ ROMERO','15/10/2024','PC-COMPLETA','RESGUARDO2.pdf',NULL,1,1,1),(93,'OMAR MOISES ESPINOZA HERNANDEZ','15/10/2024','PC-COMPLETA','RESGUARDO2.pdf',NULL,1,1,1),(94,'OMAR GUTIERREZ DOMINGUEZ','15/10/2024','PC-COMPLETA','RESGUARDO2.pdf',NULL,1,1,1),(95,'MIZADAHIN GUADALUPE BELLO MENDOZA','15/10/2024','PC-COMPLETA','RESGUARDO2.pdf',NULL,1,1,1),(96,'MIRIAM AGUILAR VIVAS','15/10/2024','PC-COMPLETA','RESGUARDO2.pdf',NULL,1,1,1),(97,'MARIA LUISA JUAREZ SORIA','15/10/2024','PC-COMPLETA','RESGUARDO2.pdf',NULL,1,1,1),(98,'MARIA LUISA JUAREZ SORIA','15/10/2024','PC-COMPLETA','RESGUARDO3.pdf',NULL,1,1,1),(99,'MARIA GETSAMANI BENITEZ FLORES','15/10/2024','PC-COMPLETA','RESGUARDO2.pdf',NULL,1,1,1),(100,'MAGDALENA GUTIERREZ CERON','15/10/2024','PC-COMPLETA','RESGUARDO2.pdf',NULL,1,1,1),(101,'LORENA PULIDO ORTIZ','18/09/2024','PC-COMPLETA','RESGUARDO2.pdf',NULL,1,1,1),(102,'JOSE VICTOR CHAVEZ GARCIA','23/07/2024','PC-COMPLETA','RESGUARDO2.pdf','MANTENIMIENTO2.pdf',1,1,1),(103,'JOSE VICTOR CHAVEZ GARCIA','22/07/2024','PC-COMPLETA','RESGUARDO3.pdf','MANTENIMIENTO3.pdf',1,1,1),(104,'JOSE MANUEL LUCAS MONDRAGON','04/07/2024','PC-COMPLETA','RESGUARDO2.pdf',NULL,1,1,1),(105,'JOSE JESUS NAJAR RODRIGUEZ','08/08/2024','LAPTOP','RESGUARDO2.pdf','MANTENIMIENTO2.pdf',1,1,1),(106,'JORGE VAZQUEZ FIGUEROA','17/07/2024','PC-COMPLETA','RESGUARDO2.pdf','MANTENIMIENTO2.pdf',1,1,1),(107,'ANGELICA MARQUEZ RODRIGUEZ','02/09/2024','PC-COMPLETA','RESGUARDO2.pdf',NULL,1,1,1),(108,'ANGELICA MARQUEZ RODRIGUEZ','27/08/2024','PC-COMPLETA','RESGUARDO3.pdf','MANTENIMIENTO3.pdf',1,1,1),(109,'CARLOS IGNACIO GONZALEZ SEDEÑO','22/08/2024','PC-COMPLETA','RESGUARDO2.pdf',NULL,1,1,1),(110,'CARLOS IGNACIO GONZALEZ SEDEÑO','31/07/2024','PC-COMPLETA','RESGUARDO3.pdf','MANTENIMIENTO3.pdf',1,1,1),(111,'CECILIO HERNANDEZ GONZALEZ','22/01/2024','LAPTOP','RESGUARDO2.pdf',NULL,1,1,1),(112,'ERIK LOPEZ LOPEZ','15/10/2024','PC-COMPLETA','RESGUARDO2.pdf',NULL,1,1,1),(113,'ERIK LOPEZ LOPEZ','15/10/2024','PC-COMPLETA','RESGUARDO3.pdf',NULL,1,1,1),(114,'ERIK LOPEZ LOPEZ','15/10/2024','PC-COMPLETA','RESGUARDO4.pdf',NULL,1,1,1),(115,'ERIK LOPEZ LOPEZ','15/10/2024','PC-COMPLETA','RESGUARDO5.pdf',NULL,1,1,1),(116,'ERIK LOPEZ LOPEZ','15/10/2024','PC-COMPLETA','RESGUARDO6.pdf',NULL,1,1,1),(117,'ERIK LOPEZ LOPEZ','15/10/2024','PC-COMPLETA','RESGUARDO7.pdf',NULL,1,1,1),(118,'ERIK LOPEZ LOPEZ','15/10/2024','PC-COMPLETA','RESGUARDO8.pdf',NULL,1,1,1),(119,'ERIK LOPEZ LOPEZ','15/10/2024','PC-COMPLETA','RESGUARDO9.pdf',NULL,1,1,1),(120,'ERIKA RAMIREZ SORIANO','18/09/2024','PC-COMPLETA','RESGUARDO2.pdf',NULL,1,1,1),(121,'HUGO ENRIQUE GUZMAN CERVANTES','07/10/2024','PC-COMPLETA','RESGUARDO2.pdf','MANTENIMIENTO2.pdf',1,1,1),(122,'ANGEL LEOPOLDO CEREZO LOPEZ','08/10/2024','PC-COMPLETA',NULL,'MANTENIMIENTO2.pdf',1,1,1),(123,'BRENDA ANDREA OSORIO PALMA','17/08/2024','PC-COMPLETA',NULL,'MANTENIMIENTO2.pdf',1,1,1),(124,'CARLOS JOVANI MORENO MORA','05/07/2024','PC-COMPLETA',NULL,'MANTENIMIENTO2.pdf',1,1,1),(136,'ERIK LOPEZ LOPEZ','15/10/2024','LAPTOP','RESGUARDO_10.pdf',NULL,1,1,1),(137,'ERIK LOPEZ LOPEZ','31/10/2024','XENTRY',NULL,'MANTENIMIENTO_3.pdf',1,1,1),(140,'HUGO ENRIQUE GUZMAN CERVANTES','28/11/2024','XENTY','RESGUARDO_3.pdf','MANTENIMIENTO_1.pdf',1,1,1),(141,'SERGIO MORALES MENDEZ','29/10/2024','PC-COMPLETA','RESGUARDO_1.pdf',NULL,1,1,1),(142,'BERNARDO LOPEZ LOPEZ','25/10/2024','PC-COMPLETA','RESGUARDO_1.pdf',NULL,1,1,1),(144,'ELSA MAYRA CASTRO ACATITLA','05/07/2024','PC-COMPLETA','','MANTENIMIENTO2.pdf',1,1,1),(147,'JESUS RAIR CASTILLO LEZAMA','27/08/2024','PC-COMPLETA','RESGUARDO2.pdf',NULL,1,1,1),(148,'PEPE PICA PAPAS','04/11/2024','TABLET','RESGUARDO_1.pdf',NULL,1,1,1),(150,'JOSUE ABRAHAM HERNANDEZ ISLAS','11/11/2024','PC-COMPLETA','RESGUARDO_1.pdf',NULL,1,1,1),(151,'ERIKA RAMIREZ SORIANO','16/11/2024','LAPTOP','RESGUARDO_3.pdf',NULL,1,1,1),(152,'ANGEL ROBERTO CORONADO','19/11/2024','PC-COMPLETA','RESGUARDO_2.pdf',NULL,1,1,1),(153,'MONICA LEONOR MORALES BARQUET','20/11/2024','LAPTOP','RESGUARDO_1.pdf',NULL,1,1,1),(154,'JUAN CARLOS CAMPOS OROPEZA','21/11/2024','PC-COMPLETA','RESGUARDO_2.pdf',NULL,1,1,1),(155,'RODRIGO DOLORES CONTRERAS','25/11/2024','PC-COMPLETA','RESGUARDO_2.pdf',NULL,1,1,1),(156,'ERIKA RAMIREZ SORIANO','02/12/2024','MOUSE','RESGUARDO_4.pdf',NULL,1,1,1),(157,'GISELLE NATHALY SALINAS RODRIGUEZ','04/12/2024','PC-COMPLETA','RESGUARDO_1.pdf',NULL,1,1,1),(158,'ISRAEL CASTELLANOS DEOLARTE','06/01/2025','PC-COMPLETA','RESGUARDO_1.pdf','MANTENIMIENTO_1.pdf',1,1,1),(159,'URIEL NOE LOPEZ MEZA','26/12/2024','PC-COMPLETA','RESGUARDO_1.pdf',NULL,1,1,1),(160,'JOSE CARLOS RASCON PAPAQUI','21/12/2024','PC-COMPLETA','RESGUARDO_1.pdf',NULL,1,1,1),(161,'JESUS DANIEL GARCIA GOIS','19/12/2024','PC-COMPLETA','RESGUARDO_1.pdf',NULL,1,1,1),(162,'MAIRA SANCHEZ MORENO','11/01/2025','PC-COMPLETA','RESGUARDO_1.pdf','MANTENIMIENTO_1.pdf',1,1,1),(163,'JORGE MATINEZ GOMEZ','07/01/2025','LAPTOP','RESGUARDO_1.pdf',NULL,1,1,1),(166,'JUAN MANUEL LOPEZ ALFARO','08/01/2025','MOUSE','RESGUARDO_1.pdf',NULL,1,1,1),(187,'SARA GABRIELA MONTIEL VILLEGAS','13/01/2025','PC-COMPLETA','RESGUARDO_2.pdf','MANTENIMIENTO_1.pdf',1,1,1),(188,'MARTHA MARIA RAMIREZ RODRIGUEZ','11/01/2025','LAPTOP','RESGUARDO_2.pdf','MANTENIMIENTO_1.pdf',1,1,1),(189,'JOVANY CALDERON MORALES','08/01/2025','PC-COMPLETA','RESGUARDO_1.pdf','MANTENIMIENTO_1.pdf',1,1,1),(190,'SERGIO MORALES MENDEZ','07/01/2025','PC-COMPLETA','RESGUARDO_2.pdf','MANTENIMIENTO_1.pdf',1,1,1),(191,'EMMANUEL MORALES CAMAÑO','09/01/2025','PC-COMPLETA','RESGUARDO_2.pdf','MANTENIMIENTO_2.pdf',1,1,1),(192,'HUGO ENRIQUE GUZMAN CERVANTES','13/01/2025','OTRO','RESGUARDO_4.pdf',NULL,1,1,1),(193,'ANA KAREN SEVILLA PULIDO','16/01/2025','LAPTOP','RESGUARDO_1.pdf','MANTENIMIENTO_1.pdf',1,1,1),(194,'MARIA GETSAMANI BENITEZ FLORES','16/01/2025','UPS','RESGUARDO_3.pdf',NULL,1,1,1),(195,'KARLA PATRICIA CAZARES HERNANDEZ','14/01/2025','PC-COMPLETA','RESGUARDO_1.pdf','MANTENIMIENTO_1.pdf',1,1,1),(262,'OMAR OLIVER VAZQUEZ','21/02/2025','PC-COMPLETA','RESGUARDO_1.pdf','MANTENIMIENTO_1.pdf',1,1,1),(263,'DANIEL CORREA DOMINGUEZ','26/02/2025','LAPTOP','RESGUARDO_1.pdf',NULL,1,1,1),(264,'CLAUDIA DEL CARMEN GOMEZ CERVANTES','22/02/2025','LAPTOP','RESGUARDO_1.pdf','MANTENIMIENTO_1.pdf',1,1,1),(265,'ALAIN ALBERTO FLORES APARICIO','19/02/2025','PC-COMPLETA','RESGUARDO_1.pdf','MANTENIMIENTO_1.pdf',1,1,1),(266,'GUADALUPE MARROQUIN TRILLO','18/02/2025','PC-COMPLETA','RESGUARDO_1.pdf',NULL,1,1,1),(267,'CESAR JAIR LUCIANO GUTIERREZ','30/01/2025','PC-COMPLETA','RESGUARDO_1.pdf',NULL,1,1,1),(268,'ISAAC SANCHEZ PERALTA','28/01/2025','LAPTOP','RESGUARDO_1.pdf',NULL,1,1,1),(269,'JENNIFER MARTINEZ GARCIA','27/01/2025','LAPTOP','RESGUARDO_2.pdf',NULL,1,1,1),(270,'JOSE JESUS NAJAR RODRIGUEZ','23/01/2025','LAPTOP','RESGUARDO_3.pdf','MANTENIMIENTO_2.pdf',1,1,1),(271,'LUCIA IVETTE SANTIESTEBAN NAVA','24/01/2025','PC-COMPLETA','RESGUARDO_2.pdf','MANTENIMIENTO_2.pdf',1,1,1),(272,'MARIA JULIETA RIVAS CORTEZANO','25/01/2025','PC-COMPLETA','RESGUARDO_2.pdf','MANTENIMIENTO_1.pdf',1,1,1),(273,'LORENA PULIDO ORTIZ','24/01/2025','PC-COMPLETA','RESGUARDO_3.pdf','MANTENIMIENTO_2.pdf',1,1,1),(274,'ANGELICA PATRICIA RAMIREZ DE LA VEGA','27/01/2025','LLAVE','RESGUARDO_1.pdf',NULL,1,1,1),(275,'CESAR MONTERRUBIO GONZALEZ','28/01/2025','COMBO T/M','RESGUARDO_1.pdf',NULL,1,1,1),(276,'JOSE VICTOR CHAVEZ GARCIA','28/01/2025','COMBO T/M','RESGUARDO_4.pdf',NULL,1,1,1),(277,'ANTONIO CABRERA CASELIN','28/01/2025','COMBO T/M','RESGUARDO_2.pdf',NULL,1,1,1),(278,'MIGUEL ANGEL GAMEZ QUECHOLAC','28/01/2025','COMBO T/M','RESGUARDO_2.pdf',NULL,1,1,1),(279,'INDRA YAMEL CALDERON PEREZ','13/02/2025','PC-COMPLETA','RESGUARDO_1.pdf',NULL,1,1,1),(280,'ISABEL ZENTENO SANCHEZ','12/02/2025','PC-COMPLETA','RESGUARDO_1.pdf','MANTENIMIENTO_1.pdf',1,1,1),(281,'CARLOS ALBERTO TELA ROMERO','12/02/2025','MONITOR','RESGUARDO_2.pdf',NULL,1,1,1),(282,'JENNIFER DENISS OROZCO SOLIS','28/01/2025','LAPTOP','RESGUARDO_1.pdf','MANTENIMIENTO_1.pdf',1,1,1),(283,'CARLOS IGNACIO GONZALEZ SEDEÑO','11/02/2025','PC-COMPLETA','RESGUARDO_4.pdf','MANTENIMIENTO_2.pdf',1,1,1),(284,'MIGUEL ANGEL HERNANDEZ POTRERO','10/02/2025','PC-COMPLETA','RESGUARDO_2.pdf','MANTENIMIENTO_1.pdf',1,1,1),(285,'CARLOS ALBERTO TELA ROMERO','05/02/2025','LAPTOP','RESGUARDO_3.pdf',NULL,1,1,1),(286,'ISAAC SANCHEZ PERALTA','04/02/2025','MOUSE','RESGUARDO_2.pdf',NULL,1,1,1),(287,'FATIMA AYDE HERNANDEZ LOZANO','07/02/2025','LAPTOP','RESGUARDO_1.pdf',NULL,1,1,1),(289,'JOSE ARTURO MORENO AGUILAR','2025-03-12','PC-COMPLETA','RESGUARDO_2.pdf','MANTENIMIENTO_2.pdf',1,1,1),(290,'JOSE ARTURO MORENO AGUILAR','2025-03-12','OTRO','RESGUARDO_3.pdf','MANTENIMIENTO_3.pdf',1,1,1),(291,'HECTOR GERARDO GARCIA MORALES','05/03/2025','LAPTOP','RESGUARDO_2.pdf','MANTENIMIENTO_2.pdf',1,1,1),(292,'MAGDALENA GUTIERREZ CERON','06/03/2025','PC-COMPLETA','RESGUARDO_3.pdf','MANTENIMIENTO_1.pdf',1,1,1),(293,'RAUL TOLENTINO TELLEZ','10/03/2025','OTRO','RESGUARDO_1.pdf',NULL,1,1,1),(294,'MAYREL YARASETH DE LEON RODRIGUEZ','07/03/2025','OTRO','RESGUARDO_1.pdf',NULL,1,1,1),(295,'ANTONIO FLORES ATEMPA','12/03/2025','COMBO T/M','RESGUARDO_2.pdf',NULL,1,1,1),(296,'BERENICE HERNANDEZ PONCE','11/03/2025','LAPTOP','RESGUARDO_1.pdf',NULL,1,1,1),(297,'BRENDA ANDREA OSORIO PALMA','11/03/2025','PC-COMPLETA','RESGUARDO_2.pdf','MANTENIMIENTO_2.pdf',1,1,1),(298,'BERNARDINO ORTIZ SALDAÑA','10/03/2025','OTRO','RESGUARDO_1.pdf',NULL,1,1,1),(299,'ELSA MAYRA CASTRO ACATITLA','07/03/2025','PC-COMPLETA','RESGUARDO_3.pdf','MANTENIMIENTO_2.pdf',1,1,1),(300,'JENNIFER MARTINEZ GARCIA','12/03/2025','PC-COMPLETA','RESGUARDO_3.pdf',NULL,1,1,1),(301,'JOSE JESUS NAJAR RODRIGUEZ','06/03/2025','TABLET','RESGUARDO_4.pdf',NULL,1,1,1),(302,'MIGUEL CALVARIO ESQUINA','03/03/2025','LAPTOP','RESGUARDO_4.pdf','MANTENIMIENTO_1.pdf',1,1,1),(303,'ANA KAREN GUTIERREZ GUTIERREZ','03/03/2025','LAPTOP','RESGUARDO_1.pdf',NULL,1,1,1),(304,'ALEJANDRO RODRIGUEZ RAMIREZ','04/03/2025','PC-COMPLETA','RESGUARDO_1.pdf',NULL,1,1,1),(305,'EMMANUEL MORALES CAMAÑO','06/03/2025','COMBO T/M','RESGUARDO_3.pdf',NULL,1,1,1);
/*!40000 ALTER TABLE `evidencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mantenimientos`
--

DROP TABLE IF EXISTS `mantenimientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mantenimientos` (
  `id_mantenimiento` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_final` varchar(100) NOT NULL,
  `fecha` varchar(20) NOT NULL,
  `dispositivo` varchar(200) NOT NULL,
  `tipoMan` varchar(250) NOT NULL,
  `estatus` int(11) NOT NULL,
  `correo` varchar(250) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  PRIMARY KEY (`id_mantenimiento`),
  KEY `id_usuario` (`id_usuario`),
  CONSTRAINT `mantenimientos_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mantenimientos`
--

LOCK TABLES `mantenimientos` WRITE;
/*!40000 ALTER TABLE `mantenimientos` DISABLE KEYS */;
INSERT INTO `mantenimientos` VALUES (1,'ISRAEL CASTELLANO DEOLARTE','2025-01-06','PC-COMPLETA','1',0,'correo@oulook.com',1),(2,'JOVANY CALDERON MORALES','2025-01-08','PC-COMPLETA','1',0,'correo@oulook.com',1),(4,'MARTHA MARIA RAMIREZ RODRIGUEZ','2025-01-11','LAPTOP','1',0,'correo@oulook.com',1),(5,'SERGIO MORALES MENDEZ','2025-01-07','PC-COMPLETA','1',1,'correo@outlook.com',2),(6,'EMANUEL MORALES CAMAÑO','2025-01-09','PC-COMPLETA','1',1,'correo@outlook.com',2),(7,'MAIRA SANCHEZ MORENO','2025-01-11','PC-COMPLETA','1',1,'correo@outlook.com',2),(19,'SARA GABRIELA MONTIEL VILLEGAS','2025-01-13','PC-COMPLETA','1',0,'correo@oulook.com',1),(21,'FERNANDO FERNANDEZ FERNANDEZ','2025-01-17','LAPTOP','1',0,'correo@oulook.com',1),(22,'EYRA MARTINEZ CAMACHO','2025-01-18','LAPTOP','1',0,'correo@oulook.com',1),(24,'EDER ARMANDO ESPINOZA FUENTES','2025-01-20','LAPTOP','1',1,'correo@oulook.com',1),(25,'ANGEL ROBERTO CORONADO','2025-01-15','PC-COMPLETA','1',0,'correo@oulook.com',1),(26,'MIGUEL ÁNGEL HERNÁNDEZ POTRERO','2025-02-10','PC-COMPLETA','1',0,'correo@oulook.com',1),(27,'IGNACIO GONZALEZ SEDEÑO','2025-02-11','PC-COMPLETA','1',0,'correo@oulook.com',1),(28,'ISABEL ZENTENO SÁNCHEZ','2025-02-12','PC-COMPLETA','1',0,'correo@oulook.com',1),(29,'CARLOS ALBERTO TELA ROMERO','2025-02-13','LAPTOP','1',0,'correo@oulook.com',1),(30,'ALAIN ALBERTO FLORES APARICIO','2025-02-19','PC-COMPLETA','1',0,'correo@oulook.com',1),(31,'MIGUEL CALVARIO ESQUINA','2025-03-03','LAPTOP','1',0,'correo@oulook.com',1),(32,'PRUEBA','2025-01-04','PRUEBA','1',1,'correo@oulook.com',1),(33,'BRENDA ANDREA OSORIO PALMA','2025-03-11','PC-COMPLETA','1',0,'correo@oulook.com',1);
/*!40000 ALTER TABLE `mantenimientos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reparacion`
--

DROP TABLE IF EXISTS `reparacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reparacion` (
  `id_repa` int(11) NOT NULL AUTO_INCREMENT,
  `dispositivo` varchar(20) NOT NULL,
  `nom_solicitante` varchar(50) NOT NULL,
  `nom_recepcion` varchar(50) NOT NULL,
  `descripcion` varchar(250) NOT NULL,
  `fecha_recepcion` varchar(20) NOT NULL,
  `fecha_entrega` varchar(20) NOT NULL,
  `estatus` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  PRIMARY KEY (`id_repa`),
  KEY `id_usuario` (`id_usuario`),
  CONSTRAINT `reparacion_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reparacion`
--

LOCK TABLES `reparacion` WRITE;
/*!40000 ALTER TABLE `reparacion` DISABLE KEYS */;
INSERT INTO `reparacion` VALUES (1,'PRUEBA','PRUEBA','2025-03-04','ESTO ES UNA PRUEBA','2025-03-04','2025-03-04',1,1),(2,'PRUEBA 2','PRUEBA 2','2025-03-05','prueba 2','2025-03-04','2025-03-05',1,1),(3,'PRUEBA 3','PRUEBA 3','2025-03-10','prueba','2025-03-10','2025-03-10',1,1);
/*!40000 ALTER TABLE `reparacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `apellidoP` varchar(20) NOT NULL,
  `apellidoM` varchar(20) NOT NULL,
  `puesto` varchar(20) NOT NULL,
  `departamento` varchar(20) NOT NULL,
  `contrasena` varchar(256) NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'JMoreno','JOSE ARTURO','MORENO','AGUILAR','Soporte 1','SISTEMAS','$2y$10$VdF8lZyPf3HJMUot09kGKeE8sYXZM5G5lA18SuSx/Zkepz9JD.tAe'),(2,'MRomero','MARIO JAVIER','ROMERO','MENDOZA','Soporte 2','SISTEMAS','$2y$10$XhGFy3W86gWqGdux6vc9uulhtpYxmw3nOFEzRzciMvZWdPv0s7f3a'),(4,'LRamirez','LEONARDO DANIEL','RAMIREZ','MORALES','Adm Sistemas','SISTEMAS','$2y$10$AQFpBGaiiT.hnhpvqXz2De8SirDxOdcnEd5OY3HQEF6NwqFLHm3E6'),(5,'AMora','ABEL DE JESUS','MORA','FLORES','Coord Sis','SISTEMAS','$2y$10$BgGQ5JjLpnkjA9DbOPimdeUW0uWmy77P9GnNtG6m8nFDJhF9W2jX6');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-12 18:00:02
