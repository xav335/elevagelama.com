-- MySQL dump 10.13  Distrib 5.5.58, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: elevagelama
-- ------------------------------------------------------
-- Server version	5.5.58-0+deb8u1

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `login` varchar(30) NOT NULL,
  `mdp` varchar(30) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (2,'admin','admin335335','ico'),(3,'brandacot','brandacot33335',NULL);
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(250) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `tel` varchar(50) DEFAULT NULL,
  `newsletter` tinyint(4) NOT NULL DEFAULT '0',
  `fromgoldbook` tinyint(4) NOT NULL DEFAULT '0',
  `fromcontact` tinyint(4) NOT NULL DEFAULT '0',
  `message` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (11,'','tiffany sawade','t.sawade@ari-accompagnement.fr',NULL,0,0,1,NULL),(12,'','christelle tauran','christ2l.tauran@gmail.com',NULL,0,0,1,NULL),(13,'','VIRGINIE FAURE','v.faure@grand-cubzaguais.fr',NULL,0,0,1,NULL),(14,'','BARRAL Béatrice','lesgentillescanailles@gmail.com',NULL,0,0,1,NULL),(15,'','GRANARA-BOURASSEAU Carine','carine.bourasseau@cegetel.net',NULL,0,0,1,NULL),(20,'Gregorio','Gonzalez','fjavi.gonzalez@gmail.com',NULL,0,0,0,NULL),(22,'GERARD','AUTISSIER','cleo1920@sfr.fr',NULL,0,0,1,NULL),(23,'Lou','Dunker','lou@sharegosses.fr',NULL,0,0,1,NULL),(24,'Laetitia ','VILLEFRANQUE','l.villefranque@grand-cubzaguais.fr',NULL,0,0,1,NULL),(25,'Gerard','AUTISSIER','cleo190@sfr.fr',NULL,0,0,1,NULL),(26,'murielle','benejat','murielle.benejat@orange.fr',NULL,0,0,1,NULL),(27,'djémila','alexandre','genzy973@live.fr',NULL,0,0,1,NULL),(28,'Murielle','QUINTARD','alsh-vayres@lacali.fr',NULL,0,0,1,NULL),(29,'','frédéric école de cadillac en fronsadais','fredocadi@orange.fr',NULL,0,1,0,NULL),(30,'','Julie','e.mat.laclairiere.gradignan@ac-bordeaux.fr',NULL,0,1,0,NULL),(31,'Gaëlle','TEXIER','gaelle.texier@yahoo.fr',NULL,0,0,1,NULL),(32,'joel','durand','annaffaire@orange.fr',NULL,0,0,1,NULL),(33,'Stéphanie','CHARROIN','boubou070311@gmail.com',NULL,0,0,1,NULL),(34,'Catherine ','Giraud ','fermedechourdens@gmail.com',NULL,0,0,1,NULL),(35,'Quentin','Houdeline','quentinhoudeline@hotmail.fr',NULL,0,0,1,NULL),(36,'Charlotte','BAX','carlotita.b@hotmail.fr',NULL,0,0,1,NULL),(37,'charlotte','marques','marquescha@institutdegenech.fr',NULL,0,0,1,NULL),(38,'gilles','mourguet','gilles.mourguet@saint-bruno.org',NULL,0,0,1,NULL),(39,'Matylde','Village','matylde.elyot@gmail.com',NULL,0,0,1,NULL),(40,'alexandre','saenz','alexandresae@gmail.com',NULL,0,0,1,NULL),(41,'Clara','Liebschutz','clara-gaminou@live.fr',NULL,0,0,1,NULL),(42,'laure','lescure','laure.doublet33@gmail.com',NULL,0,0,1,NULL),(43,'Marie','Roger','marieroger3004@gmail.com',NULL,0,0,1,NULL),(44,'Clémentine','Estampe-Magnani','c.estampe-magnani.aemo@agep.asso.fr',NULL,0,0,1,NULL),(45,'Aurore','GOUNON','aurore.gounon@gmail.com',NULL,0,0,1,NULL),(46,'Jean claude','Charpignon','famillecharpignon@wanadoo.fr',NULL,0,0,1,NULL),(47,'Kattalin','Grech','kattalin.grech@outlook.fr',NULL,0,0,1,NULL),(48,'Anne-Sophie','Lanciaux','e.mat.portets@ac-bordeaux.fr',NULL,0,0,1,NULL),(49,'Laurence','CHASSAGNOUX','chassagnouxlaurence@yahoo.fr',NULL,0,0,1,NULL),(50,'ingrid','berry','i-berry@hotmail.fr',NULL,0,0,1,NULL),(51,'Angelique','Lorca','angel.b.18@hotmail.fr',NULL,0,0,1,NULL),(52,'Alice','Planchon','alice.bibiche@hotmail.fr',NULL,0,0,1,NULL),(53,'ludivine','esquer giret','ce.0330304b@ac-bordeaux.fr',NULL,0,0,1,NULL),(54,'Jordan','TALPOT','Jordan.talpot@gmail.com',NULL,0,0,1,NULL),(55,'Aurélie','Chaine','chaineaurelie@gmail.com',NULL,0,0,1,NULL),(56,'Jean-David','Schutz','sch_jeandavid@yahoo.com',NULL,0,0,1,NULL),(57,'Gwenaelle','Pradinat','gwenaelle_19@hotmail.com',NULL,0,0,1,NULL),(58,'Hélène','Plainfossé','plainfosse.helene@gmail.com',NULL,0,0,1,NULL),(59,'brigitte','Lambert','vega10@hotmail.fr',NULL,0,0,1,NULL),(60,'Charlotte','Ramat','chacha82@gmail.com',NULL,0,0,1,NULL),(61,'Sébastien','ROVERCH','sebastien@roverch.fr',NULL,0,0,1,NULL),(62,'Oceane ','Fedon ','oceane.fedon@gmail.com',NULL,0,0,1,NULL),(63,'Chats de Blaye','Association','chatsdeblaye@gmail.com',NULL,0,0,1,NULL),(64,'CORALIE','RAPIN','coralie8333@gmail.com',NULL,0,0,1,NULL),(65,'valery','montignac','valeryping@free.fr',NULL,0,0,1,NULL),(66,'Camille','Echo des parents','lechodesparents33@gmail.com',NULL,0,0,1,NULL),(67,'','Célia ALOMBERT','ccpialoux@gmail.com',NULL,0,1,0,NULL),(68,'Jessica','Lenie','jess.mizouvitch@gmail.com',NULL,0,0,1,NULL),(69,'Alexandrine','Civard-racinais','alexandrine.racinais@gmail.com',NULL,0,0,1,NULL),(70,'Pauline','Marcouillier','marcouillierpauline310@gmail.com',NULL,0,0,1,NULL),(71,'Christine et Christelle ','Dechico et Ciparis ','naifetpasbete@gmail.com',NULL,0,0,1,NULL),(72,'emilie','lagourette','corrihonsguillaume@hotmail.fr',NULL,0,0,1,NULL),(73,'Jerome','Andriolet','jerome.andriolet@gmail.com',NULL,0,0,1,NULL),(74,'Véronique','TESSONNEAUD','peri.educatif@cc-estuaire.fr',NULL,0,0,1,NULL),(75,'Sandrine','Bousquet','sandrine.bousquet@gmail.com',NULL,0,0,1,NULL),(76,'Marie-Gabrielle','Lopes','asso.tilou@gmail.com',NULL,0,0,1,NULL),(77,'Sophie','marcoul','marcoul1996@outlook.com',NULL,0,0,1,NULL),(78,'Tara','Tara','iemanja76@aol.fr',NULL,0,0,1,NULL),(79,'Coralie','CLEDARD','coralie.c.33@gmail.com',NULL,0,0,1,NULL),(80,'Peggy','BASSINY','e-bussac-foret@ac-poitiers.fr',NULL,0,0,1,NULL),(81,'Stéphanie','GOYON','stephanie.goyon@mfr.asso.fr',NULL,0,0,1,NULL),(82,'JEAN PIERRE','ELIE','jp.elie@guidacco.com',NULL,0,0,1,NULL),(83,'Philippe','Delubriat','ph.del@hotmail.com',NULL,0,0,1,NULL),(84,'karine','buffard','buffard.karine@gmail.com',NULL,0,0,1,NULL),(85,'Amélie','FLEURY','ameliiefleury@gmail.com',NULL,0,0,1,NULL);
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goldbook`
--

DROP TABLE IF EXISTS `goldbook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goldbook` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `nom` varchar(250) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `message` text,
  `online` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goldbook`
--

LOCK TABLES `goldbook` WRITE;
/*!40000 ALTER TABLE `goldbook` DISABLE KEYS */;
INSERT INTO `goldbook` VALUES (2,'2018-03-31 00:00:00','Anne-marie',' ','Des animaux finalement méconnus, Joël éleveur passionné - des ateliers interactifs  - une belle journée de découverte pour enfants et adultes.',1),(3,'2018-03-08 00:00:00','Xavier','fjavi.gonzalez@gmail.com','Une visite très agréable et un accueil excellent, les enfants étaient enchantés.',1),(4,'2018-03-09 00:00:00','Andrea G. Collège de Latresne',' ','Une visite pédagogique très instructive, nos classes de 6ème et de 5ème ont été enchantés. Je recommande !',1),(5,'2018-03-11 00:00:00','Gregoire B.',' ','Des animaux très attachants élévés par des pationnés,Idéal pour une sortie éducative et ludique avec tous d\'activités pour les enfants et les adultes.',1),(6,'2018-05-29 00:00:00','frédéric école de cadillac en fronsadais','fredocadi@orange.fr','une super journée avec des animaux magnifiques .l\'accueil de joël sa gentillesse et sa compétence ont captivé les enfants.A découvrir!',1),(7,'0000-00-00 00:00:00','Julie','e.mat.laclairiere.gradignan@ac-bordeaux.fr','Merci Joël pour cette belle journée, votre accueil chaleureux et votre capacité à transmettre votre passion tout en vous adaptant à l\'âge des enfants (moyenne section)!\r\nVos lamas sont magnifiques! \r\nUne belle sortie pédagogique!',1),(8,'0000-00-00 00:00:00','Célia ALOMBERT','ccpialoux@gmail.com','Ma fille de 5ans est venue avec le centre de loisirs. Vu tout ce qu\'elle nous a raconté, elle a adoré! Merci',1);
/*!40000 ALTER TABLE `goldbook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lamas`
--

DROP TABLE IF EXISTS `lamas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lamas` (
  `id_news` int(11) NOT NULL AUTO_INCREMENT,
  `date_news` date NOT NULL,
  `accroche` text,
  `titre` varchar(250) NOT NULL,
  `contenu` text,
  `image1` varchar(250) DEFAULT NULL,
  `online` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_news`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lamas`
--

LOCK TABLES `lamas` WRITE;
/*!40000 ALTER TABLE `lamas` DISABLE KEYS */;
INSERT INTO `lamas` VALUES (41,'2020-06-07','','Coca','Coca est une femelle lama née le 09 mai 2020. Elle est la fille de Blue Tacoma et de Khéops de Brandacot.\r\nToison blanche, joues et queue de couleur noir. Sera fortement lainée.\r\n','/IMG_1016_r_duit-41.jpg',1),(42,'2020-06-07','','Ekéko','Ekéko et un mâle lama née le 29 mai 2020. Il est le fils de Okarina de Claris et de Khéops de Brandacot.\r\nToison tricolore (roux - blanc - gris) sera fortement lainée.  ','/IMG_1012_r_duit-42.jpg',1);
/*!40000 ALTER TABLE `lamas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id_news` int(11) NOT NULL AUTO_INCREMENT,
  `date_news` date NOT NULL,
  `accroche` text,
  `titre` varchar(250) NOT NULL,
  `contenu` text,
  `image1` varchar(250) DEFAULT NULL,
  `online` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_news`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (34,'2018-04-19','','PUBLICATION DE NOTRE LIVRE ','Éros notre lama exceptionnel nous a quitté cette année. \r\nJoël lui rend hommage en racontant son histoire dans ce livre. Le manuscrit est disponible sur le site de l\'éditeur EDILIVRE par le lien suivant : <a href=\"http://www.edilivre.com/doc/759817\" target=\"_blank\">www.edilivre.com</a> Possibilité également de l\'acquerrir à la ferme.\r\n','/Screenshot_2018_03_24_10.47.00-.png',1),(35,'2017-06-13','','LAMA GARDIEN DE TROUPEAU','Dans le cadre de notre spécialité Lama Gardien de Troupeau, notre dernier lama sélectionné a été vendu. Pour toute demande, nous contacter pour une nouvelle sélection.\r\n\r\n','/11_mai_2008_1-35.jpg',1),(38,'2020-06-06','','2020 - Deux nouvelles naissances ','Au cours du mois de Mai notre élevage s\'est agrandi de deux nouvelles naissances. Une femelle prénommée Coca et un mâle prénommé Ekéko.','/IMG_0977_reduit-.jpg',1),(39,'2020-06-07','','Visite de la ferme ','La fin du confinement nous permet de ré ouvrir notre élevage de lamas  aux différents groupes pour la visite de la ferme. \r\nDes visites pour \"le grand public\" seront programmées au court de l\'été. Les dates seront signalées sur notre site. Toutefois pour des groupes égaux ou supérieurs à 10 personnes n\'hésitez pas à nous appeler pour prendre Rendez-vous directement. Tél.06 20 89 70 15 ou 05 57 42 20 61.','/IMG_1017_reduit-39.jpg',1);
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-09 19:44:56
