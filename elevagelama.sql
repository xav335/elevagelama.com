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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (11,'','tiffany sawade','t.sawade@ari-accompagnement.fr',NULL,0,0,1,NULL),(12,'','christelle tauran','christ2l.tauran@gmail.com',NULL,0,0,1,NULL),(13,'','VIRGINIE FAURE','v.faure@grand-cubzaguais.fr',NULL,0,0,1,NULL),(14,'','BARRAL Béatrice','lesgentillescanailles@gmail.com',NULL,0,0,1,NULL),(15,'','GRANARA-BOURASSEAU Carine','carine.bourasseau@cegetel.net',NULL,0,0,1,NULL),(20,'Gregorio','Gonzalez','fjavi.gonzalez@gmail.com',NULL,0,0,0,NULL),(22,'GERARD','AUTISSIER','cleo1920@sfr.fr',NULL,0,0,1,NULL),(23,'Lou','Dunker','lou@sharegosses.fr',NULL,0,0,1,NULL),(24,'Laetitia ','VILLEFRANQUE','l.villefranque@grand-cubzaguais.fr',NULL,0,0,1,NULL),(25,'Gerard','AUTISSIER','cleo190@sfr.fr',NULL,0,0,1,NULL),(26,'murielle','benejat','murielle.benejat@orange.fr',NULL,0,0,1,NULL),(27,'djémila','alexandre','genzy973@live.fr',NULL,0,0,1,NULL),(28,'Murielle','QUINTARD','alsh-vayres@lacali.fr',NULL,0,0,1,NULL),(29,'','frédéric école de cadillac en fronsadais','fredocadi@orange.fr',NULL,0,1,0,NULL),(30,'','Julie','e.mat.laclairiere.gradignan@ac-bordeaux.fr',NULL,0,1,0,NULL),(31,'Gaëlle','TEXIER','gaelle.texier@yahoo.fr',NULL,0,0,1,NULL),(32,'joel','durand','annaffaire@orange.fr',NULL,0,0,1,NULL),(33,'Stéphanie','CHARROIN','boubou070311@gmail.com',NULL,0,0,1,NULL),(34,'Catherine ','Giraud ','fermedechourdens@gmail.com',NULL,0,0,1,NULL),(35,'Quentin','Houdeline','quentinhoudeline@hotmail.fr',NULL,0,0,1,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goldbook`
--

LOCK TABLES `goldbook` WRITE;
/*!40000 ALTER TABLE `goldbook` DISABLE KEYS */;
INSERT INTO `goldbook` VALUES (2,'2018-03-31 00:00:00','Anne-marie',' ','Des animaux finalement méconnus, Joël éleveur passionné - des ateliers interactifs  - une belle journée de découverte pour enfants et adultes.',1),(3,'2018-03-08 00:00:00','Xavier','fjavi.gonzalez@gmail.com','Une visite très agréable et un accueil excellent, les enfants étaient enchantés.',1),(4,'2018-03-09 00:00:00','Andrea G. Collège de Latresne',' ','Une visite pédagogique très instructive, nos classes de 6ème et de 5ème ont été enchantés. Je recommande !',1),(5,'2018-03-11 00:00:00','Gregoire B.',' ','Des animaux très attachants élévés par des pationnés,Idéal pour une sortie éducative et ludique avec tous d\'activités pour les enfants et les adultes.',1),(6,'2018-05-29 00:00:00','frédéric école de cadillac en fronsadais','fredocadi@orange.fr','une super journée avec des animaux magnifiques .l\'accueil de joël sa gentillesse et sa compétence ont captivé les enfants.A découvrir!',1),(7,'0000-00-00 00:00:00','Julie','e.mat.laclairiere.gradignan@ac-bordeaux.fr','Merci Joël pour cette belle journée, votre accueil chaleureux et votre capacité à transmettre votre passion tout en vous adaptant à l\'âge des enfants (moyenne section)!\r\nVos lamas sont magnifiques! \r\nUne belle sortie pédagogique!',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lamas`
--

LOCK TABLES `lamas` WRITE;
/*!40000 ALTER TABLE `lamas` DISABLE KEYS */;
INSERT INTO `lamas` VALUES (39,'2018-05-21','','Frida de Brandacot','Femelle née le 28 avril 2018 - toison blanche mouchetée de rouille - tête bleutée. Une génétique primée du côté paternel avec la personnalité de sa mère. Femelle à fort potentiel.','/IMG_0256-39.jpg',1),(40,'2018-05-21','','Antares de Brandacot','femelle née le 28 avril 2018.Tricolore - blanc - noir et brun- fille de Lily primée en 2012 et de notre étalon Khéops.','/IMG_0263-40.jpg',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (32,'2017-12-28','','ATELIER SUPPLÉMENTAIRE POUR LES ÉCOLES PRIMAIRES.','En plus de nos ateliers existants, nous créons actuellement un atelier dont le thème est l\'AMÉRIQUE DU SUD. Dans quelques jours cet atelier figurera sur notre fiche pédagogique (<a href=\"http://www.elevagelama.com/pdf/fichepedagogique.pdf\" target=\"_blank\">téléchargeable ici</a>) \r\nPour l\'instant, nous contacter.','',1),(34,'2018-04-19','','PUBLICATION DE NOTRE LIVRE ','Éros notre lama exceptionnel nous a quitté cette année. \r\nJoël lui rend hommage en racontant son histoire dans ce livre. Le manuscrit est disponible sur le site de l\'éditeur EDILIVRE par le lien suivant : <a href=\"http://www.edilivre.com/doc/759817\" target=\"_blank\">www.edilivre.com</a> Possibilité également de l\'acquerrir à la ferme.\r\n','/Screenshot_2018_03_24_10.47.00-.png',1),(35,'2017-06-13','','LAMA GARDIEN DE TROUPEAU','Dans le cadre de notre spécialité Lama Gardien de Troupeau, notre dernier lama sélectionné a été vendu. Pour toute demande, nous contacter pour une nouvelle sélection.\r\n\r\n','/11_mai_2008_1-35.jpg',1);
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

-- Dump completed on 2018-09-12 14:46:03
