-- MySQL dump 10.13  Distrib 5.6.21, for osx10.6 (x86_64)
--
-- Host: localhost    Database: elevagelama
-- ------------------------------------------------------
-- Server version	5.6.21

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
INSERT INTO `admin` VALUES (1,'lama','lama33','administrateur'),(2,'admin','admin335','ico'),(3,'brandacot','brandacot33',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (11,'','tiffany sawade','t.sawade@ari-accompagnement.fr',NULL,0,0,1,NULL),(12,'','christelle tauran','christ2l.tauran@gmail.com',NULL,0,0,1,NULL),(13,'','VIRGINIE FAURE','v.faure@grand-cubzaguais.fr',NULL,0,0,1,NULL),(14,'','BARRAL Béatrice','lesgentillescanailles@gmail.com',NULL,0,0,1,NULL),(15,'','GRANARA-BOURASSEAU Carine','carine.bourasseau@cegetel.net',NULL,0,0,1,NULL),(20,'Gregorio','Gonzalez','fjavi.gonzalez@gmail.com',NULL,0,0,0,NULL),(21,'Javier','GONZALEZ','fjavi.gonz@gmail.com',NULL,0,0,0,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goldbook`
--

LOCK TABLES `goldbook` WRITE;
/*!40000 ALTER TABLE `goldbook` DISABLE KEYS */;
INSERT INTO `goldbook` VALUES (2,'2018-03-31 00:00:00','Anne-marie',' ','Des animaux finalement méconnus, Joël éleveur passionné - des ateliers interactifs  - une belle journée de découverte pour enfants et adultes.',1),(3,'2018-03-08 00:00:00','Xavier','fjavi.gonzalez@gmail.com','Une visite très agréable et un accueil excellent, les enfants étaient enchantés.',1),(4,'2018-03-09 00:00:00','Andrea G. Collège de Latresne',' ','Une visite pédagogique très instructive, nos classes de 6ème et de 5ème ont été enchantés. Je recommande !',1),(5,'2018-03-11 00:00:00','Gregoire B.',' ','Des animaux très attachants élévés par des pationnés,Idéal pour une sortie éducative et ludique avec tous d\'activités pour les enfants et les adultes.',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lamas`
--

LOCK TABLES `lamas` WRITE;
/*!40000 ALTER TABLE `lamas` DISABLE KEYS */;
INSERT INTO `lamas` VALUES (36,'2018-04-18','','Naissance de printemps','Un petit lama est né ce mardi bla blaUn petit lama est né ce mardi bla blaUn petit lama est né ce mardi bla blaardi bla blaUn petit lama est né ce mardi bla blaUn petit lama est né ce mardi bla blaUn petit lama est né ce mardi bla blaUn petit lama est né ce mardi bla bla','/Mai_2014_021-36.jpg',0);
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (31,'2018-02-22','','DATE VISITE DE L’ÉLEVAGE','A l\'occasion des vacances scolaires de Février, nous organisons une deuxième visite de notre élevage pour \"le grand public\" le <b>jeudi 22 février 2018</b>. \r\nDépart de la visite : 15h00 - durée: 01h30 \r\nLa météo devrait être favorable - prévoir chaussures étanches, prairies humides. \r\nTél. 05 57 42 20 61 ou 06 20 89 70 15\r\n','/Screenshot_2018_03_24_10.44.32-31.png',0),(32,'2017-12-28','','ATELIER SUPPLÉMENTAIRE POUR LES ÉCOLES PRIMAIRES.','En plus de nos ateliers existants, nous créons actuellement un atelier dont le thème est l\'AMÉRIQUE DU SUD. Dans quelques jours cet atelier figurera sur notre fiche pédagogique (<a href=\"http://www.elevagelama.com/pdf/fichepedagogique.pdf\" target=\"_blank\">téléchargeable ici</a>) \r\nPour l\'instant, nous contacter.','',1),(34,'2016-04-19','','PUBLICATION DE NOTRE LIVRE ','Éros notre lama exceptionnel nous a quitté cette année. \r\nJoël lui rend hommage en racontant son histoire dans ce livre. Le manuscrit est disponible sur le site de l\'éditeur EDILIVRE par le lien suivant : <a href=\"http://www.edilivre.com/doc/759817\" target=\"_blank\">www.edilivre.com</a> Possibilité également de l\'acquerrir à la ferme.\r\n','/Screenshot_2018_03_24_10.47.00-.png',1),(35,'2017-06-13','','LAMA GARDIEN DE TROUPEAU','Dans le cadre de notre spécialité Lama Gardien de Troupeau, notre dernier lama sélectionné a été vendu. Pour toute demande, nous contacter pour une nouvelle sélection.\r\n\r\n','',1),(36,'2018-04-18','','VISITE DE L\'ELEVAGE','Le mercredi 18 avril 2018,  nous programmons pour le Grand Public une <b>visite de découverte</b> de notre élevage. \r\nDépart de la visite à 15h30 - durée:  01h30. \r\nTerrain humide prévoir chaussures étanches. \r\nPour tous renseignements nous contacter au 05 57 42 20 61 ou 06 20 89 70 15.','/Mai_2014_021-36.jpg',1);
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

-- Dump completed on 2018-04-16 22:43:22
