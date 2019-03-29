/*
SQLyog Ultimate v12.2.6 (64 bit)
MySQL - 10.1.37-MariaDB : Database - cences_db
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`cences_db` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `cences_db`;

/*Table structure for table `addressbook` */

DROP TABLE IF EXISTS `addressbook`;

CREATE TABLE `addressbook` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `FamilyHeadID` varchar(20) NOT NULL,
  `AddressLine1` varchar(100) DEFAULT NULL,
  `AddressLine2` varchar(100) DEFAULT NULL,
  `BlockArea` varchar(50) DEFAULT NULL,
  `CityDivisionID` int(7) DEFAULT NULL,
  `CityDivision` varchar(30) DEFAULT NULL,
  `DistrictID` int(7) DEFAULT NULL,
  `District` varchar(30) DEFAULT NULL,
  `TehsilID` int(7) DEFAULT NULL,
  `Tehsil` varchar(30) DEFAULT NULL,
  `ProvID` int(7) DEFAULT NULL,
  `Provinces` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`,`FamilyHeadID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `addressbook` */

/*Table structure for table `city` */

DROP TABLE IF EXISTS `city`;

CREATE TABLE `city` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` char(35) NOT NULL DEFAULT '',
  `CountryCode` char(3) NOT NULL DEFAULT '',
  `ProvID` char(20) NOT NULL DEFAULT '',
  `Population` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `CountryCode` (`CountryCode`),
  CONSTRAINT `city_ibfk_1` FOREIGN KEY (`CountryCode`) REFERENCES `country` (`Code`)
) ENGINE=InnoDB AUTO_INCREMENT=1402 DEFAULT CHARSET=latin1;

/*Data for the table `city` */

insert  into `city`(`ID`,`Name`,`CountryCode`,`ProvID`,`Population`) values 
(1,'Karachi','PAK','1',9269265),
(2,'Lahore','PAK','2',5063499),
(3,'Faisalabad','PAK','2',1977246),
(4,'Rawalpindi','PAK','2',1406214),
(5,'Multan','PAK','2',1182441),
(6,'Hyderabad','PAK','1',1151274),
(7,'Gujranwala','PAK','2',1124749),
(8,'Peshawar','PAK','3',988005),
(9,'Quetta','PAK','4',560307),
(10,'Islamabad','PAK','2',524500),
(11,'Sargodha','PAK','2',455360),
(12,'Sialkot','PAK','2',417597),
(13,'Bahawalpur','PAK','2',403408),
(14,'Sukkur','PAK','1',329176),
(15,'Jhang','PAK','2',292214),
(16,'Sheikhupura','PAK','2',271875),
(17,'Larkana','PAK','1',270366),
(18,'Gujrat','PAK','2',250121),
(19,'Mardan','PAK','3',244511),
(20,'Kasur','PAK','2',241649),
(21,'Rahim Yar Khan','PAK','2',228479),
(22,'Sahiwal','PAK','2',207388),
(23,'Okara','PAK','2',200901),
(24,'Wah','PAK','2',198400),
(25,'Dera Ghazi Khan','PAK','2',188100),
(26,'Mirpur Khas','PAK','1',184500),
(27,'Nawabshah','PAK','1',183100),
(28,'Mingora','PAK','3',174500),
(29,'Chiniot','PAK','2',169300),
(30,'Kamoke','PAK','2',151000),
(31,'Mandi Burewala','PAK','2',149900),
(32,'Jhelum','PAK','2',145800),
(33,'Sadiqabad','PAK','2',141500),
(34,'Jacobabad','PAK','1',137700),
(35,'Shikarpur','PAK','1',133300),
(36,'Khanewal','PAK','2',133000),
(37,'Hafizabad','PAK','2',130200),
(38,'Kohat','PAK','3',125300),
(39,'Muzaffargarh','PAK','2',121600),
(40,'Khanpur','PAK','2',117800),
(41,'Gojra','PAK','2',115000),
(42,'Bahawalnagar','PAK','2',109600),
(43,'Muridke','PAK','2',108600),
(44,'Pak Pattan','PAK','2',107800),
(45,'Abottabad','PAK','3',106000),
(46,'Tando Adam','PAK','1',103400),
(47,'Jaranwala','PAK','2',103300),
(48,'Khairpur','PAK','1',102200),
(49,'Chishtian Mandi','PAK','2',101700),
(50,'Daska','PAK','2',101500),
(51,'Dadu','PAK','1',98600),
(52,'Mandi Bahauddin','PAK','2',97300),
(53,'Ahmadpur East','PAK','2',96000),
(54,'Kamalia','PAK','2',95300),
(55,'Khuzdar','PAK','4',93100),
(56,'Vihari','PAK','2',92300),
(57,'Dera Ismail Khan','PAK','3',90400),
(58,'Wazirabad','PAK','2',89700),
(59,'Nowshera','PAK','3',89400),
(1259,'Ali Bandar','PAK','1',0),
(1260,'Baden','PAK','1',0),
(1261,'Chachro','PAK','1',0),
(1262,'Digri','PAK','1',0),
(1263,'Diplo','PAK','1',0),
(1264,'Dokri','PAK','1',0),
(1265,'Gadra','PAK','1',0),
(1266,'Ghanian','PAK','1',0),
(1267,'Ghauspur','PAK','1',0),
(1268,'Ghotki','PAK','1',0),
(1269,'Hala','PAK','1',0),
(1270,'Islamkot','PAK','1',0),
(1271,'Jamesabad','PAK','1',0),
(1272,'Jamshoro','PAK','1',0),
(1273,'Janghar','PAK','1',0),
(1274,'Jati (Mughalbhin)','PAK','1',0),
(1275,'Jhudo','PAK','1',0),
(1276,'Jungshahi','PAK','1',0),
(1277,'Kandiaro','PAK','1',0),
(1278,'Kashmor','PAK','1',0),
(1279,'Keti Bandar','PAK','1',0),
(1280,'Khora','PAK','1',0),
(1281,'Klupro','PAK','1',0),
(1282,'Khokhropur','PAK','1',0),
(1283,'Korangi','PAK','1',0),
(1284,'Kotri','PAK','1',0),
(1285,'Kot Sarae','PAK','1',0),
(1286,'Lund','PAK','1',0),
(1287,'Mathi','PAK','1',0),
(1288,'Matiari','PAK','1',0),
(1289,'Mehar','PAK','1',0),
(1290,'Mirpur Batoro','PAK','1',0),
(1291,'Mirpur Sakro','PAK','1',0),
(1292,'Mithi','PAK','1',0),
(1293,'Mithani','PAK','1',0),
(1294,'Moro','PAK','1',0),
(1295,'Nagar Parkar','PAK','1',0),
(1296,'Naushara','PAK','1',0),
(1297,'Naudero','PAK','1',0),
(1298,'Noushero Feroz','PAK','1',0),
(1299,'Nazimabad','PAK','1',0),
(1300,'Naokot','PAK','1',0),
(1301,'Pendoo','PAK','1',0),
(1302,'Pokran','PAK','1',0),
(1303,'Qambar','PAK','1',0),
(1304,'Qazi Ahmad','PAK','1',0),
(1305,'Ranipur','PAK','1',0),
(1306,'Ratodero','PAK','1',0),
(1307,'Rohri','PAK','1',0),
(1308,'Saidu Sharif','PAK','1',0),
(1309,'Sakrand','PAK','1',0),
(1310,'Sanghar','PAK','1',0),
(1311,'Shadadkhot','PAK','1',0),
(1312,'Shahbandar','PAK','1',0),
(1313,'Shahdadpur','PAK','1',0),
(1314,'Shahpur Chakar','PAK','1',0),
(1315,'Sujawal','PAK','1',0),
(1316,'Tando Allahyar','PAK','1',0),
(1317,'Tando Bago','PAK','1',0),
(1318,'Tar Ahamd Rind','PAK','1',0),
(1319,'Thatta','PAK','1',0),
(1320,'Tujal','PAK','1',0),
(1321,'Umarkot','PAK','1',0),
(1322,'Veirwaro','PAK','1',0),
(1323,'Warah','PAK','1',0),
(1324,'Ahmedpur East','PAK','2',0),
(1325,'Ahmed Nager Chatha','PAK','2',0),
(1326,'Ali Pur','PAK','2',0),
(1327,'Arifwala','PAK','2',0),
(1328,'Attock','PAK','2',0),
(1329,'Basti Malook','PAK','2',0),
(1330,'Bhagalchur','PAK','2',0),
(1331,'Bhalwal','PAK','2',0),
(1332,'Bhaipheru','PAK','2',0),
(1333,'Bhakkar','PAK','2',0),
(1334,'Burewala','PAK','2',0),
(1335,'Chailianwala','PAK','2',0),
(1336,'Chakwal','PAK','2',0),
(1337,'Chichawatni','PAK','2',0),
(1338,'Chowk Azam','PAK','2',0),
(1339,'Chowk Sarwar Shaheed','PAK','2',0),
(1340,'Darya Khan','PAK','2',0),
(1341,'Derawar Fort','PAK','2',0),
(1342,'Dhaular','PAK','2',0),
(1343,'Dina City','PAK','2',0),
(1344,'Dinga','PAK','2',0),
(1345,'Dipalpur','PAK','2',0),
(1346,'Fateh Jang','PAK','2',0),
(1347,'Gadar','PAK','2',0),
(1348,'Ghakhar Mandi','PAK','2',0),
(1349,'Gujar Khan','PAK','2',0),
(1350,'Haroonabad','PAK','2',0),
(1351,'Hasilpur','PAK','2',0),
(1352,'Haveli Lakha','PAK','2',0),
(1353,'Jampur','PAK','2',0),
(1354,'Kalabagh','PAK','2',0),
(1355,'Karor Lal Esan','PAK','2',0),
(1356,'Kamokey','PAK','2',0),
(1357,'Kharian','PAK','2',0),
(1358,'Khushab','PAK','2',0),
(1359,'Kot Addu','PAK','2',0),
(1360,'Jahania','PAK','2',0),
(1361,'Jalla Araain','PAK','2',0),
(1362,'Jauharabad','PAK','2',0),
(1363,'Laar','PAK','2',0),
(1364,'Lalamusa','PAK','2',0),
(1365,'Layyah','PAK','2',0),
(1366,'Lodhran','PAK','2',0),
(1367,'Mamoori','PAK','2',0),
(1368,'Makhdoom Aali','PAK','2',0),
(1369,'Mandi Warburton','PAK','2',0),
(1370,'Mailsi','PAK','2',0),
(1371,'Mian Channu','PAK','2',0),
(1372,'Minawala','PAK','2',0),
(1373,'Mianwali','PAK','2',0),
(1374,'Murree','PAK','2',0),
(1375,'Narowal','PAK','2',0),
(1376,'Renala Khurd','PAK','2',0),
(1377,'Rajan Pur','PAK','2',0),
(1378,'Panjgur','PAK','2',0),
(1379,'Pattoki','PAK','2',0),
(1380,'Pirmahal','PAK','2',0),
(1381,'Qila Didar Singh','PAK','2',0),
(1382,'Rabwah','PAK','2',0),
(1383,'Raiwind','PAK','2',0),
(1384,'Rajan Pur','PAK','2',0),
(1385,'Rohri','PAK','2',0),
(1386,'Safdar Abad – (Dhaban Singh)','PAK','2',0),
(1387,'Sangla Hill','PAK','2',0),
(1388,'Samberial','PAK','2',0),
(1389,'Sarai Alamgir','PAK','2',0),
(1390,'Shakargarh','PAK','2',0),
(1391,'Shafqat Shaheed Chowk','PAK','2',0),
(1392,'Sohawa','PAK','2',0),
(1393,'Sooianwala','PAK','2',0),
(1394,'Sundar (city)','PAK','2',0),
(1395,'Talagang','PAK','2',0),
(1396,'Tarbela','PAK','2',0),
(1397,'Takhtbai','PAK','2',0),
(1398,'Taxila','PAK','2',0),
(1399,'Toba Tek Singh','PAK','2',0),
(1400,'Vehari','PAK','2',0),
(1401,'Wah Cantonment','PAK','2',0);

/*Table structure for table `country` */

DROP TABLE IF EXISTS `country`;

CREATE TABLE `country` (
  `Code` char(3) NOT NULL DEFAULT '',
  `Name` char(52) NOT NULL DEFAULT '',
  `Continent` enum('Asia','Europe','North America','Africa','Oceania','Antarctica','South America') NOT NULL DEFAULT 'Asia',
  `Region` char(26) NOT NULL DEFAULT '',
  `SurfaceArea` float(10,2) NOT NULL DEFAULT '0.00',
  `IndepYear` smallint(6) DEFAULT NULL,
  `Population` int(11) NOT NULL DEFAULT '0',
  `LifeExpectancy` float(3,1) DEFAULT NULL,
  `GNP` float(10,2) DEFAULT NULL,
  `GNPOld` float(10,2) DEFAULT NULL,
  `LocalName` char(45) NOT NULL DEFAULT '',
  `GovernmentForm` char(45) NOT NULL DEFAULT '',
  `HeadOfState` char(60) DEFAULT NULL,
  `Capital` int(11) DEFAULT NULL,
  `Code2` char(2) NOT NULL DEFAULT '',
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `country` */

insert  into `country`(`Code`,`Name`,`Continent`,`Region`,`SurfaceArea`,`IndepYear`,`Population`,`LifeExpectancy`,`GNP`,`GNPOld`,`LocalName`,`GovernmentForm`,`HeadOfState`,`Capital`,`Code2`) values 
('PAK','Pakistan','Asia','Southern and Central Asia',796095.00,1947,0,61.1,0.00,0.00,'Pakistan','Republic','',0,'PK');

/*Table structure for table `district` */

DROP TABLE IF EXISTS `district`;

CREATE TABLE `district` (
  `ID` int(5) NOT NULL AUTO_INCREMENT,
  `ProvID` int(5) NOT NULL,
  `DivisionID` int(5) NOT NULL,
  `DistrictID` int(5) NOT NULL,
  `DistrictName` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`,`ProvID`,`DivisionID`,`DistrictID`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=latin1;

/*Data for the table `district` */

insert  into `district`(`ID`,`ProvID`,`DivisionID`,`DistrictID`,`DistrictName`) values 
(1,1,1,2,'CHITRAL'),
(2,1,1,7,'UPPER DIR (AT DIR)'),
(3,1,1,3,'LOWER DIR (AT TEMERGARA)'),
(4,1,1,6,'SWAT (AT MINGORA)'),
(5,1,1,5,'SHANGLA (AT ALPURI)'),
(6,1,1,1,'BUNER'),
(7,1,1,4,'MALAKAND P.A.'),
(8,1,2,4,'KOHISTAN'),
(9,1,2,5,'MANSEHRA'),
(10,1,2,6,'TORGHAR (AT OGHI)'),
(11,1,2,2,'BATAGRAM (AT BANA)'),
(12,1,2,1,'ABBOTTABAD'),
(13,1,2,3,'HARIPUR'),
(14,1,3,1,'MARDAN'),
(15,1,3,2,'SWABI'),
(16,1,4,1,'CHARSADDA'),
(17,1,4,3,'PESHAWAR'),
(18,1,4,2,'NOWSHERA'),
(19,1,5,3,'KOHAT'),
(20,1,5,1,'HANGU'),
(21,1,5,2,'KARAK'),
(22,1,6,1,'BANNU'),
(23,1,6,2,'LAKKI MARWAT'),
(24,1,7,1,'DERA ISMAIL KHAN'),
(25,1,7,2,'TANK'),
(26,3,1,1,'ATTOCK'),
(27,3,1,4,'RAWALPINDI'),
(28,3,1,3,'JHELUM'),
(29,3,1,2,'CHAKWAL'),
(30,3,2,4,'SARGODHA'),
(31,3,2,1,'BHAKKAR'),
(32,3,2,2,'KHUSHAB'),
(33,3,2,3,'MIANWALI'),
(34,3,3,2,'FAISALABAD'),
(35,3,3,3,'JHANG'),
(36,3,3,1,'CHINIOT'),
(37,3,3,4,'TOBA TEK SINGH'),
(38,3,4,1,'GUJRANWALA'),
(39,3,4,3,'HAFIZABAD'),
(40,3,4,4,'MANDI BAHAUDDIN'),
(41,3,4,2,'GUJRAT'),
(42,3,4,6,'SIALKOT'),
(43,3,4,5,'NAROWAL'),
(44,3,5,2,'LAHORE'),
(45,3,5,1,'KASUR'),
(46,3,5,4,'SHEIKHUPURA'),
(47,3,5,3,'NANKANA SAHIB'),
(48,3,6,3,'SAHIWAL'),
(49,3,6,1,'OKARA'),
(50,3,6,2,'PAKPATTAN'),
(51,3,7,4,'VEHARI'),
(52,3,7,3,'MULTAN'),
(53,3,7,2,'LODHRAN'),
(54,3,7,1,'KHANEWAL'),
(55,3,8,1,'DERA GHAZI KHAN'),
(56,3,8,4,'RAJANPUR'),
(57,3,8,2,'LAYYAH'),
(58,3,8,3,'MUZAFFARGARH'),
(59,3,9,2,'BAHAWALPUR'),
(60,3,9,1,'BAHAWALNAGAR'),
(61,3,9,3,'RAHIM YAR KHAN'),
(62,4,3,1,'JACOBABAD'),
(63,4,3,3,'KASHMORE'),
(64,4,3,5,'SHIKARPUR'),
(65,4,3,4,'LARKANA'),
(66,4,3,2,'KAMBAR SHAHDADKOT'),
(67,4,6,3,'SUKKUR'),
(68,4,6,1,'GHOTKI (AT MIRPUR MATHELO)'),
(69,4,6,2,'KHAIRPUR'),
(70,4,5,1,'NAUSHAHRO FEROZE'),
(71,4,5,3,'SHAHEED BENAZIRABAD'),
(72,4,5,2,'SANGHAR'),
(73,4,1,2,'DADU'),
(74,4,1,4,'JAMSHORO'),
(75,4,1,3,'HYDERABAD'),
(76,4,1,5,'MATIARI'),
(77,4,1,7,'TANDO ALLAHYAR'),
(78,4,1,8,'TANDO MOHAMMAD KHAN'),
(79,4,1,1,'BADIN'),
(80,4,1,9,'THATTA'),
(81,4,1,6,'SUJAWAL'),
(82,4,4,1,'MIRPUR KHAS'),
(83,4,4,2,'THARPARKAR'),
(84,4,4,3,'UMERKOT'),
(85,4,2,2,'KARACHI EAST'),
(86,4,2,4,'KARACHI WEST'),
(87,4,2,3,'KARACHI SOUTH'),
(88,4,2,1,'KARACHI CENTRAL'),
(89,4,2,6,'MALIR'),
(90,4,2,5,'KORANGI');

/*Table structure for table `districts_old` */

DROP TABLE IF EXISTS `districts_old`;

CREATE TABLE `districts_old` (
  `DistrictID` int(7) NOT NULL AUTO_INCREMENT,
  `DistrictName` varchar(100) DEFAULT NULL,
  `CityID` int(7) DEFAULT NULL,
  `ProvID` int(7) DEFAULT NULL,
  PRIMARY KEY (`DistrictID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `districts_old` */

insert  into `districts_old`(`DistrictID`,`DistrictName`,`CityID`,`ProvID`) values 
(1,'Karachi Central',1,1),
(2,'Karachi East',1,1),
(3,'Karachi South',1,1),
(4,'Karachi West ',1,1),
(5,'Malir',1,1),
(6,'Korangi',1,1);

/*Table structure for table `division` */

DROP TABLE IF EXISTS `division`;

CREATE TABLE `division` (
  `ID` int(7) NOT NULL AUTO_INCREMENT,
  `ProvID` int(7) NOT NULL,
  `DivisionID` int(7) NOT NULL,
  `DivisionName` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`,`ProvID`,`DivisionID`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

/*Data for the table `division` */

insert  into `division`(`ID`,`ProvID`,`DivisionID`,`DivisionName`) values 
(1,1,5,'MALAKAND'),
(2,1,3,'HAZARA'),
(3,1,6,'MARDAN'),
(4,1,7,'PESHAWAR'),
(5,1,4,'KOHAT'),
(6,1,1,'BANNU'),
(7,1,2,'D.I.KHAN'),
(8,3,7,'RAWALPINDI'),
(9,3,9,'SARGODHA'),
(10,3,3,'FAISALABAD'),
(11,3,4,'GUJRANWALA'),
(12,3,5,'LAHORE'),
(13,3,8,'SAHIWAL'),
(14,3,6,'MULTAN'),
(15,3,2,'DERA GHAZI KHAN'),
(16,3,1,'BAHAWALPUR'),
(17,4,3,'LARKANA'),
(18,4,6,'SUKKUR'),
(19,4,5,'SHAHEED BENAZIRABAD'),
(20,4,1,'HYDERABAD'),
(21,4,4,'MIRPUR KHAS'),
(22,4,2,'KARACHI'),
(23,5,4,'QUETTA'),
(24,5,6,'ZHOB'),
(25,5,5,'SIBI'),
(26,5,3,'NASIRABAD'),
(27,5,1,'KALAT'),
(28,5,2,'MEKRAN'),
(29,7,3,'GILGIT'),
(30,7,2,'BALTISTAN'),
(31,7,1,'ASTORE');

/*Table structure for table `educationmatrix` */

DROP TABLE IF EXISTS `educationmatrix`;

CREATE TABLE `educationmatrix` (
  `EduID` int(5) NOT NULL AUTO_INCREMENT,
  `Level` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`EduID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `educationmatrix` */

insert  into `educationmatrix`(`EduID`,`Level`) values 
(1,'UN-Educated'),
(2,'Less Than Primary'),
(3,'Primary'),
(4,'Middle'),
(5,'Matric'),
(6,'Intermediate'),
(7,'Graduate '),
(8,'Master'),
(9,'Diploma'),
(10,'Certificate');

/*Table structure for table `familytree` */

DROP TABLE IF EXISTS `familytree`;

CREATE TABLE `familytree` (
  `FamilyID` int(5) NOT NULL AUTO_INCREMENT,
  `HeadID` varchar(10) DEFAULT NULL,
  `MemberName` varchar(100) DEFAULT NULL,
  `RelationshipHF` int(1) DEFAULT NULL,
  `Gender` int(1) DEFAULT NULL,
  `Age` int(3) DEFAULT NULL,
  `Religion` int(1) DEFAULT '1',
  `Language` int(1) DEFAULT '8',
  `Nationality` int(1) DEFAULT '1',
  `Education` int(1) DEFAULT '3',
  `JobStatus` int(1) DEFAULT '3',
  `Profession` varchar(50) DEFAULT NULL,
  `FamilyCode` varchar(50) DEFAULT NULL,
  `MemberCNIC` varchar(20) DEFAULT NULL,
  `TreeID` varchar(20) DEFAULT NULL,
  `MaritalStaus` int(11) DEFAULT NULL,
  `HFCNIC` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`FamilyID`),
  KEY `HeadofFamilyRel` (`RelationshipHF`),
  KEY `MaritalStatus` (`MaritalStaus`),
  KEY `HeadID` (`HeadID`),
  CONSTRAINT `HeadofFamilyRel` FOREIGN KEY (`RelationshipHF`) REFERENCES `relationshipmatrix` (`RelationID`),
  CONSTRAINT `MaritalStatus` FOREIGN KEY (`MaritalStaus`) REFERENCES `maritalmatrix` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Data for the table `familytree` */

insert  into `familytree`(`FamilyID`,`HeadID`,`MemberName`,`RelationshipHF`,`Gender`,`Age`,`Religion`,`Language`,`Nationality`,`Education`,`JobStatus`,`Profession`,`FamilyCode`,`MemberCNIC`,`TreeID`,`MaritalStaus`,`HFCNIC`) values 
(6,'5','Ali',3,1,2019,1,NULL,1,4,1,'2',NULL,'3333333333333',NULL,1,'4223'),
(7,'5','Zohaib',3,1,2019,1,1,1,4,2,'3',NULL,'1111111111111',NULL,1,'4223'),
(8,'5','Muneeb',3,1,2019,1,1,1,4,2,'4',NULL,'2432222222222',NULL,1,'4223'),
(9,'5','Maryam',3,2,2019,1,NULL,1,2,1,'15',NULL,'3333333333333',NULL,1,'4223'),
(10,'5','Tania',3,2,2019,1,NULL,1,3,3,'4',NULL,'3333333333333',NULL,2,'4223'),
(11,'5','Ahsan',2,1,2019,1,1,1,2,2,'2',NULL,'2212121212121',NULL,2,'4223');

/*Table structure for table `headoffamily` */

DROP TABLE IF EXISTS `headoffamily`;

CREATE TABLE `headoffamily` (
  `ID` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Head Of Famliy ID',
  `HeadOfFamily` int(1) DEFAULT '1',
  `HeadID` varchar(20) NOT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `MiddleName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `HFCNIC` varchar(20) NOT NULL,
  `TotalFamilyMembers` int(9) DEFAULT NULL,
  `FatherFirstName` varchar(50) DEFAULT NULL,
  `FatherMiddleName` varchar(50) DEFAULT NULL,
  `FatherLastName` varchar(50) DEFAULT NULL,
  `FatherCNIC` varchar(20) DEFAULT NULL,
  `MobileNo` varchar(20) DEFAULT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `MainArea` varchar(30) DEFAULT NULL,
  `Address1` varchar(100) DEFAULT NULL,
  `Address2` varchar(100) DEFAULT NULL,
  `Block` varchar(50) DEFAULT NULL,
  `Prov` varchar(30) DEFAULT NULL,
  `CityDivision` varchar(30) DEFAULT NULL,
  `District` varchar(30) DEFAULT NULL,
  `Tehsil` varchar(30) DEFAULT NULL,
  `PostalCode` varchar(10) DEFAULT NULL,
  `FormStatus` varchar(30) DEFAULT NULL,
  `FormStatusFlag` int(1) DEFAULT NULL,
  PRIMARY KEY (`ID`,`HeadID`,`HFCNIC`)
) ENGINE=InnoDB AUTO_INCREMENT=3601 DEFAULT CHARSET=latin1;

/*Data for the table `headoffamily` */

insert  into `headoffamily`(`ID`,`HeadOfFamily`,`HeadID`,`FirstName`,`MiddleName`,`LastName`,`HFCNIC`,`TotalFamilyMembers`,`FatherFirstName`,`FatherMiddleName`,`FatherLastName`,`FatherCNIC`,`MobileNo`,`Email`,`MainArea`,`Address1`,`Address2`,`Block`,`Prov`,`CityDivision`,`District`,`Tehsil`,`PostalCode`,`FormStatus`,`FormStatusFlag`) values 
(1,1,'1-1','Iftikhar Ahmed ','',NULL,'42211-1234567-5',5,'Muhammad Ishaque',NULL,NULL,NULL,'0333-3678899',NULL,'Johar Chowrangi','203 Faran Square',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info Given',1),
(1,1,'3601-1','Iftikhar Ahmed ','',NULL,'42211-1234567-5',5,'Muhammad Ishaque',NULL,NULL,NULL,'0333-3678899',NULL,'Johar Chowrangi','203 Faran Square',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'Basic Info Given',1),
(2,1,'2','Nadeem Ahmed','',NULL,'',NULL,'Amjad Ali Khan',NULL,NULL,NULL,'',NULL,'Johar Chowrangi','104 Faran Square ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info Given',1),
(3,1,'3','Zuheer Abbas','',NULL,'',NULL,'Muhammad Abbas Khan',NULL,NULL,NULL,'0333-2265510',NULL,'Johar Chowrangi','403 Faran Square',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info Given',1),
(4,1,'4','Hassam Ali ','',NULL,'',NULL,'Dr. Abdul Jabbar',NULL,NULL,NULL,'0343-1262625',NULL,'Johar Chowrangi','Shumail Heights Kamran Chowrangi',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info Given',1),
(5,1,'5','Usman Ghani','',NULL,'',NULL,'Mehmood Ali',NULL,NULL,NULL,'0344-3499909',NULL,'Johar Chowrangi','Noman Complex',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info Given',1),
(6,1,'6','Engr. Ali Nawaz Kaim Khani','',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'Johar Chowrangi','Nawaz Shareef Scheme PHA Phalwan Ghot',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(7,1,'7','Muhammad Younus','',NULL,'',NULL,'Inayat Khan',NULL,NULL,NULL,'0306-375088',NULL,'Johar Chowrangi','B-87 Naveed Bungalows ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info Given',1),
(8,1,'8','Engr. Mir Hasan','',NULL,'',NULL,'Muhammad Younus',NULL,NULL,NULL,'0333-2465654',NULL,'Johar Chowrangi','B-87 Naveed Bungalows ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info Given',1),
(9,1,'9','Dr. Iftikhar ','',NULL,'',NULL,'Asad Ali',NULL,NULL,NULL,'0332-8200876',NULL,'Johar Chowrangi','B-46 Naveed Bungalows',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info Given',1),
(10,1,'10','Dr. Mushtaq Ahmed','',NULL,'',NULL,'',NULL,NULL,NULL,'0331-2037940',NULL,'Johar Chowrangi','030-',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(11,1,'11','Irfan Mustaq','',NULL,'',NULL,'Dr. Mushtaq Ahmed',NULL,NULL,NULL,'0333-2168583',NULL,'Johar Chowrangi','B-83 Naveed Bungalows',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(12,1,'12','Dr. Ashfaq Ahmed','',NULL,'',NULL,'',NULL,NULL,NULL,'0333-3159667',NULL,'Johar Chowrangi','B-83 Naveed Bungalows',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(13,1,'13','Engr. Zahid Ali','',NULL,'',NULL,'Muhammad Ali',NULL,NULL,NULL,'0333-3663163',NULL,'Johar Chowrangi','E-7 Naveed Bungalows',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(14,1,'14','Muhammad Waqas Sultan Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0331-2937719',NULL,'Johar Chowrangi','E-7 Naveed Bungalows',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(15,1,'15','Muhammad Afzal Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0316-7000366',NULL,'Johar Chowrangi','Model Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(16,1,'16','Imran Amman','',NULL,'',NULL,'Ammanullah Khan',NULL,NULL,NULL,'0345-8084808',NULL,'Johar Chowrangi','Block #15 Johar Chowrangi',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(17,1,'17','Noman Akhbar','',NULL,'',NULL,'Imran Amman',NULL,NULL,NULL,'0334-0304601',NULL,'Johar Chowrangi','Block #15 Johar Chowrangi',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(18,1,'18','Asif Ali Khan','',NULL,'',NULL,'Ashiq Ali Khan',NULL,NULL,NULL,'0333-2495515',NULL,'Johar Chowrangi','Block #15 Johar Chowrangi',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(19,1,'19','Muhammad Fayyaz','',NULL,'',NULL,'Jaffer Ali Khan',NULL,NULL,NULL,'0345-3049115',NULL,'Johar Chowrangi','Block #15 Johar Chowrangi',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(20,1,'20','Muhammad Naeem','',NULL,'',NULL,'Muhammad Yaseen Khan',NULL,NULL,NULL,'0333-3783680',NULL,'Johar Chowrangi','Honeed City Block 17',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(21,1,'21','Muhammad Waseem','',NULL,'',NULL,'Muhammad Yaseen Khan',NULL,NULL,NULL,'0311-8709644',NULL,'Johar Chowrangi','Iqra Complex Block 17',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(22,1,'22','Muhammad Rizwan ','',NULL,'',NULL,'Muhammad Tairq',NULL,NULL,NULL,'0315-3745292',NULL,'Johar Chowrangi','Block 15 Johar Chowrangi',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(23,1,'23','Ali Sabri','',NULL,'',NULL,'',NULL,NULL,NULL,'0322-4478615',NULL,'Johar Chowrangi','103 Faran Complex Johar Chowrangi',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(24,1,'24','Muhammad Iqbal','',NULL,'',NULL,'Azam Ali Khan',NULL,NULL,NULL,'0300-2781782',NULL,'Johar Chowrangi','102 Faran Complex Johar Chowrangi',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(25,1,'25','Iftikhar Ahmed ','',NULL,'',NULL,'Muhammad Islam Khan',NULL,NULL,NULL,'0314-2576915',NULL,'Johar Chowrangi','PIB Colony Karachi Center ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(26,1,'26','Waqar Ahmed','',NULL,'',NULL,'Muhammad Islam Khan',NULL,NULL,NULL,'0316-2051560',NULL,'Johar Chowrangi','PIB Colony Karachi Center',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(27,1,'27','Saad Younus','',NULL,'',NULL,'Muhammad Younus Khan',NULL,NULL,NULL,'0300-3078080',NULL,'Johar Chowrangi','3 Star KK mart Noman Avenue Johar Mor',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(28,1,'28','Sohaib Younus','',NULL,'',NULL,'Muhammad Younus Khan',NULL,NULL,NULL,'0300-3078081',NULL,'Johar Chowrangi','3 Star KK mart Noman Avenue Johar Mor',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(29,1,'29','Zahid Haneef Khan','',NULL,'',NULL,'Haneef Khan',NULL,NULL,NULL,'0331-3366905',NULL,'Johar Chowrangi','G-62 Noman Avenue Johar Mor',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(30,1,'30','Naveed Chiragh','',NULL,'',NULL,'Chiragh Roshan',NULL,NULL,NULL,'0300-2443021',NULL,'Johar Chowrangi','E-24 Noman Avenue Johar Mor',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(31,1,'31','Junaid Saleem ','',NULL,'',NULL,'Muhammad Saleem',NULL,NULL,NULL,'0333-3083852',NULL,'Johar Chowrangi','B-43 Noman Avenue Johar Mor',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(32,1,'32','Abdul Majid ','',NULL,'',NULL,'Muhammad Saleem',NULL,NULL,NULL,'0305-3307705',NULL,'Johar Chowrangi','A-55 Noman Avenue Johar Mor',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(33,1,'33','Naimat Ali','',NULL,'',NULL,'Liaquat Ali',NULL,NULL,NULL,'0302-2858239',NULL,'Johar Chowrangi','Iqra Complex',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(34,1,'34','Muhammad Asif','',NULL,'',NULL,'Liaquat Ali',NULL,NULL,NULL,'0300-2519570',NULL,'Johar Chowrangi','Iqra Complex',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(35,1,'35','Shoukat Ali','',NULL,'',NULL,'Liaquat Ali',NULL,NULL,NULL,'0345-2757026',NULL,'Johar Chowrangi','Iqra Complex',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(36,1,'36','Abdul Qayoom','',NULL,'',NULL,'Abdul Hameed Khan',NULL,NULL,NULL,'0321-9252395',NULL,'Johar Chowrangi','Iqra Complex',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(37,1,'37','Muhammad Isalm','',NULL,'',NULL,'Abdul Qayoom',NULL,NULL,NULL,'0321-9252395',NULL,'Johar Chowrangi','Iqra Complex',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(38,1,'38','Engr. Aftab ','',NULL,'',NULL,'Muhammad Sabir',NULL,NULL,NULL,'0333-2665097',NULL,'Johar Chowrangi','Iqra Complex',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(39,1,'39','Muhammad Saleem','',NULL,'',NULL,'Yaseem Khan',NULL,NULL,NULL,'0301-3855909',NULL,'Johar Chowrangi','A-4 Naveed Banglows',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(40,1,'40','Muhammad Aamir Saleem','',NULL,'',NULL,'',NULL,NULL,NULL,'0333-2881282',NULL,'Johar Chowrangi','A-4 Naveed Banglows',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(41,1,'41','Gulrez Saleem ','',NULL,'',NULL,'',NULL,NULL,NULL,'0333-2881373',NULL,'Johar Chowrangi','A-4 Naveed Banglows',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(42,1,'42','Muhammad Naveed Khan','',NULL,'',NULL,'Muhammad Aslam Khan',NULL,NULL,NULL,'0331-3118802',NULL,'Johar Chowrangi','Naveed Banglows',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(43,1,'43','Dr. Imran','',NULL,'',NULL,'Haji Mehboob Ali',NULL,NULL,NULL,'0306-2212442',NULL,'Johar Chowrangi','B-42 Naveed Banglows',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(44,1,'44','Engr. Muhammad Ziaulhaq','',NULL,'',NULL,'',NULL,NULL,NULL,'0336-2807375',NULL,'Johar Chowrangi','B-42 Naveed Banglows',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(45,1,'45','Arshad Ali Khan','',NULL,'',NULL,'Shoukat Ali Khan',NULL,NULL,NULL,'0300-2729795',NULL,'Johar Chowrangi','B-306 Block 14 Ghultan-e-Johar',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(46,1,'46','Zaffar Ali Khan','',NULL,'',NULL,'Arshad Ali Khan',NULL,NULL,NULL,'0345-2120826',NULL,'Johar Chowrangi','B-306 Block 14 Ghultan-e-Johar',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(47,1,'47','Muhammad Naeem Khan','',NULL,'',NULL,'Taj Muhammad Khan',NULL,NULL,NULL,'0333-3010831',NULL,'Johar Chowrangi','B-308 Block 14 Ghultan-e-Johar',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(48,1,'48','Muhammad Hayat Khan','',NULL,'',NULL,'Muhammad Naeem Khan',NULL,NULL,NULL,'0331-2933678',NULL,'Johar Chowrangi','B-308 Block 14 Ghultan-e-Johar',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(49,1,'49','Yaseen Khan','',NULL,'',NULL,'Hasan Khan',NULL,NULL,NULL,'0334-3148534',NULL,'Johar Chowrangi','B-150 Block 14 Ghultan-e-Johar',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(50,1,'50','Humayoon Khan','',NULL,'',NULL,'Alam Ali Khan',NULL,NULL,NULL,'',NULL,'Johar Chowrangi','B-308 Block 14 Ghultan-e-Johar',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(51,1,'51','Engr. Hasan Ali','',NULL,'',NULL,'Shoukat Ali',NULL,NULL,NULL,'0321-2161456',NULL,'Johar Chowrangi','Zeeshan Super Luxury Apartments Flat#V-401 Ghulist',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(52,1,'52','Tahir Ahmed','',NULL,'',NULL,'Muhammd Yaseen Khan',NULL,NULL,NULL,'0300-3321325',NULL,'Johar Chowrangi','203/4 Sulaila Apartments Ghulistan-e-Johar',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(53,1,'53','Muhammad Islam Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0333-2506211',NULL,'Johar Chowrangi','405/4 Sulaila Apartments Ghulistan-e-Johar',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(54,1,'54','Sarfaraz Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0301-3800042',NULL,'Johar Chowrangi','303/4 Sulaila Apartments Ghulistan-e-Johar',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(55,1,'55','Asfand Iqbal','',NULL,'',NULL,'Muhammad Iqbal',NULL,NULL,NULL,'0334-2807490',NULL,'Johar Chowrangi','C 406 Sun Beem Apartments Kamran Chowrangi',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(56,1,'56','Muhammad Ahtesham','',NULL,'',NULL,'Muhammad Aslam',NULL,NULL,NULL,'0333-2981421',NULL,'Johar Chowrangi','',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(57,1,'57','Ahmed Faraz','',NULL,'',NULL,'Muhammd Yousuf',NULL,NULL,NULL,'0333-8724090',NULL,'Johar Chowrangi','A 104 Afnan Arcade Johar Chowrangi Block 15',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(58,1,'58','Ammar Husain','',NULL,'',NULL,'Abid Husain',NULL,NULL,NULL,'0333-299098',NULL,'Johar Chowrangi','Saluleela Aparments',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(59,1,'59','Hamza Zulfiquar','',NULL,'',NULL,'Zulfiquar Ali',NULL,NULL,NULL,'0300-3010890',NULL,'Johar Chowrangi','Faran Classic Apartments ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(60,1,'60','Hasnain Irshad','',NULL,'',NULL,'Irshad Ali',NULL,NULL,NULL,'0334-2805276',NULL,'Johar Chowrangi','Faran Classic Apartments ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(61,1,'61','Muhammad Awais','',NULL,'',NULL,'Muhammad Farooq',NULL,NULL,NULL,'0334-2815271',NULL,'Johar Chowrangi','E 16 Altamash Apartments',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(62,1,'62','Dr. Tahir','',NULL,'',NULL,'Yaseem Khan',NULL,NULL,NULL,'003538-38399887',NULL,'Johar Chowrangi','A 90 Warqs cooperative housing society Ghulistan-e',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(63,1,'63','Engr. Tariq','',NULL,'',NULL,'Yaseem Khan',NULL,NULL,NULL,'0334-3701229',NULL,'Johar Chowrangi','A 90 Warqs cooperative housing society Ghulistan-e',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(64,1,'64','Muhammad Talib','',NULL,'',NULL,'Yaseem Khan',NULL,NULL,NULL,'0332-3536422',NULL,'Johar Chowrangi','A 90 Warqs cooperative housing society Ghulistan-e',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(65,1,'65','Dr. Talha','',NULL,'',NULL,'Yaseem Khan',NULL,NULL,NULL,'0333-3346260',NULL,'Johar Chowrangi','A 90 Warqs cooperative housing society Ghulistan-e',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(66,1,'66','Muhammad Yaseen Khan','',NULL,'',NULL,'Azeem Ud Din Khan',NULL,NULL,NULL,'0334-3133056',NULL,'Johar Chowrangi','A 90 Warqs cooperative housing society Ghulistan-e',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(67,1,'67','Muhammad Khalid','',NULL,'',NULL,'Riasat Ali Khan',NULL,NULL,NULL,'0332-2357606',NULL,'Johar Chowrangi','Muneer Brigde view  ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(68,1,'68','Iftikhar Ali ','',NULL,'',NULL,'Hosiar Khan',NULL,NULL,NULL,'0333-2165610',NULL,'Johar Chowrangi','Flat # H-57 Floor 4th block H Altamash Complex',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(69,1,'69','Waqas Munawar','',NULL,'',NULL,'Munawar Ali Khan',NULL,NULL,NULL,'0340-0289877',NULL,'Johar Chowrangi','Flat # E-20 block E Altamash Complex',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(70,1,'70','Shoaib Munawer','',NULL,'',NULL,'Munawar Ali Khan',NULL,NULL,NULL,'0343-8012354',NULL,'Johar Chowrangi','Flat # H-6 block H Altamash Complex',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(71,1,'71','Muhammad Usman Khan','',NULL,'',NULL,'Munawar Ali Khan',NULL,NULL,NULL,'0333-3572405',NULL,'Johar Chowrangi','Flat # F-20 block F Altamash Complex',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(72,1,'72','Muhammad Noman','',NULL,'',NULL,'Muhammad Usman Khan',NULL,NULL,NULL,'0332-2122420',NULL,'Johar Chowrangi','Flat # F-21 block F Altamash Complex',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(73,1,'73','Muhammad Zubair Khan','',NULL,'',NULL,'Muhammad Usman Khan',NULL,NULL,NULL,'0332-7963840',NULL,'Johar Chowrangi','Flat # F-20 block F Altamash Complex',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(74,1,'74','Akber Ali','',NULL,'',NULL,'Jaffer Ali Khan',NULL,NULL,NULL,'0333-3961349',NULL,'Johar Chowrangi','F-816 block II Ghulstan-e-Johar',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(75,1,'75','Kashif Ali','',NULL,'',NULL,'Riasat Ali Khan',NULL,NULL,NULL,'0300-3063609',NULL,'Johar Chowrangi','Mutha Khan Ghot Block II Ghulistan-e-Johar',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(76,1,'76','Sarwar Khan','',NULL,'',NULL,'Natho Khan',NULL,NULL,NULL,'0331-3800645',NULL,'Johar Chowrangi','Mutha Khan Ghot Block II Ghulistan-e-Johar',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(77,1,'77','Muhammad Yousuf','',NULL,'',NULL,'Younus Khan',NULL,NULL,NULL,'0345-3210955',NULL,'Johar Chowrangi','Mutha Khan Ghot Block II Ghulistan-e-Johar',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(78,1,'78','Muhammad Younus','',NULL,'',NULL,'Hayat Muhammad Khan',NULL,NULL,NULL,'0334-4174597',NULL,'Johar Chowrangi','Mutha Khan Ghot Block II Ghulistan-e-Johar',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(79,1,'79','Saleem Ahmed','',NULL,'',NULL,'Asghar Ali Khan',NULL,NULL,NULL,'0336-8037102',NULL,'Johar Chowrangi','Mutha Khan Ghot Block II Ghulistan-e-Johar',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(80,1,'80','Saleem Ahmed','',NULL,'',NULL,'Nisar Ahmed',NULL,NULL,NULL,'0321-3300039',NULL,'Johar Chowrangi','Mutha Khan Ghot Block II Ghulistan-e-Johar',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(81,1,'81','Irshad Ahmed','',NULL,'',NULL,'Hasan Khan',NULL,NULL,NULL,'0331-3882145',NULL,'Johar Chowrangi','Mutha Khan Ghot Block II Ghulistan-e-Johar',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(82,1,'82','Abrar Ahmed ','',NULL,'',NULL,'Arshad Ali Khan',NULL,NULL,NULL,'0332-2552643',NULL,'Johar Chowrangi','Mutha Khan Ghot Block II Ghulistan-e-Johar',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(83,1,'83','Muhammad Rafiq','',NULL,'',NULL,'Sobedar Yamin Khan',NULL,NULL,NULL,'0333-3894686',NULL,'Johar Chowrangi','Yasmeen Tower Block 2',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(84,1,'84','Muhammad Ayoub','',NULL,'',NULL,'Abdul Razzaq Khan',NULL,NULL,NULL,'0333-3037950',NULL,'Johar Chowrangi','Ghulistan-e-Johar Block 2',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(85,1,'85','Khalid Saleem Khan','',NULL,'',NULL,'Muhammad Saleem',NULL,NULL,NULL,'0311-3209025',NULL,'Johar Chowrangi','Ghulistan-e-Johar Block 2',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(86,1,'86','Rashid Ahmed Khan','',NULL,'',NULL,'Muhammad Saleem',NULL,NULL,NULL,'0312-8862419',NULL,'Johar Chowrangi','Mutha Khan Ghot Block II Ghulistan-e-Johar',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(87,1,'87','Dr. Sultan','',NULL,'',NULL,'Sarwar Khan',NULL,NULL,NULL,'0333-2767605',NULL,'Johar Chowrangi','Mutha Khan Ghot Block II Ghulistan-e-Johar',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(88,1,'88','Engr. Faisal ur Rehman','',NULL,'',NULL,'Sarwar Khan',NULL,NULL,NULL,'0331-3800645',NULL,'Johar Chowrangi','Mutha Khan Ghot Block II Ghulistan-e-Johar',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(89,1,'89','Muhammad Akram Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0344-2115335',NULL,'Johar Chowrangi','Mutha Khan Ghot Block II Ghulistan-e-Johar',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(90,1,'90','Muhammad Anwer Nadeem','',NULL,'',NULL,'',NULL,NULL,NULL,'0321-2212020',NULL,'Johar Chowrangi','B-157 Ghulistan-e-Johar Block 12',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(91,1,'91','Nawab Ali','',NULL,'',NULL,'',NULL,NULL,NULL,'0334-3286312',NULL,'Johar Chowrangi','B-213 Block 12 Ghulistan-e-Johar',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(92,1,'92','Jahangir Ali','',NULL,'',NULL,'Nawab Ali',NULL,NULL,NULL,'0346-3237687',NULL,'Johar Chowrangi','B-213 Block 12 Ghulistan-e-Johar',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(93,1,'93','Hasnain Ali','',NULL,'',NULL,'Nawab Ali',NULL,NULL,NULL,'0335-7583195',NULL,'Johar Chowrangi','B-213 Block 12 Ghulistan-e-Johar',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(94,1,'94','Shamshad Ali Khan','',NULL,'',NULL,'Haji Munshi Khan',NULL,NULL,NULL,'0302-3009994',NULL,'Johar Chowrangi','C-59 Block 9 PIA Society ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(95,1,'95','Zahid Shamshad','',NULL,'',NULL,'Shamshad Ali Khan',NULL,NULL,NULL,'0334-2226280',NULL,'Johar Chowrangi','C-59 Block 9 PIA Society ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(96,1,'96','Altaf Ahmed','',NULL,'',NULL,'Ghulam Nabi Khan',NULL,NULL,NULL,'0301-2215400',NULL,'Johar Chowrangi','A-12 Block 9 PIA Society ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(97,1,'97','Liaquat Ali','',NULL,'',NULL,'Behroz Khan',NULL,NULL,NULL,'0332-3202541',NULL,'Johar Chowrangi','A-81 Block 9 PIA Society ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(98,1,'98','Engr. Rasheed Ahmed Khan','',NULL,'',NULL,'Muhammad Younus Khan',NULL,NULL,NULL,'0333-2289836',NULL,'Johar Chowrangi','H# A-147 Ghulistan-e-Johar Block 13',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(99,1,'99','Muhammad Mohsin Khan','',NULL,'',NULL,'Rasheed Ahmed Khan',NULL,NULL,NULL,'0333-2289836',NULL,'Johar Chowrangi','H# A-147 Ghulistan-e-Johar Block 13',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(100,1,'100','Engr. Noman Liaquat','',NULL,'',NULL,'',NULL,NULL,NULL,'0332-4467911',NULL,'Johar Chowrangi','Noman Plaza near city bakery',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(101,1,'101','Abdul Rehman Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0302-2058339',NULL,'Johar Chowrangi','Rofi square parfume chowk ghulistan-e-johar',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(102,1,'102','Engr. Aftab Ali','',NULL,'',NULL,'Sabir Ali (KDA)',NULL,NULL,NULL,'0333-2665097',NULL,'Johar Chowrangi','Noman Green City Flta# P 20 Ghulistan-e-Johar',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(103,1,'103','Engr. Ubaid Raza','',NULL,'',NULL,'Sabir Ali (KDA)',NULL,NULL,NULL,'0333-7774990',NULL,'Johar Chowrangi','Noman Green City Flta# P 20 Ghulistan-e-Johar',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(104,1,'104','Engr. Waqas Ali','',NULL,'',NULL,'Nisar Ahmed',NULL,NULL,NULL,'0345-3203074',NULL,'Johar Chowrangi','Noman Green City Flta# P 20 Ghulistan-e-Johar',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(105,1,'105','Engr. Muhammad Moeer','',NULL,'',NULL,'Liaquat Ali',NULL,NULL,NULL,'0302-3203074',NULL,'Johar Chowrangi','Noman Green City Flta# P 20 Ghulistan-e-Johar',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(106,1,'106','Engr. Muhammad Owais','',NULL,'',NULL,'Muhammad Farooq',NULL,NULL,NULL,'0334-2815271',NULL,'Johar Chowrangi','Shamshi Apartments ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(107,1,'107','Engr. Rehan Zulfiquar','',NULL,'',NULL,'Zulfiquar Ali',NULL,NULL,NULL,'0333-1959090',NULL,'Johar Chowrangi','Shamshi Apartments ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(108,1,'108','Engr. Muhammad Owais','',NULL,'',NULL,'Mustaque Ali',NULL,NULL,NULL,'',NULL,'Johar Chowrangi','Noman Avenue',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(109,1,'109','Engr. Muhammad Rafiq','',NULL,'',NULL,'Muhammad Akram',NULL,NULL,NULL,'0300-3378090',NULL,'Johar Chowrangi','Noman Avenue',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(110,1,'110','Engr. Zeeshan Yaseen','',NULL,'',NULL,'Muhammad Yaseen',NULL,NULL,NULL,'0333-2017985',NULL,'Johar Chowrangi','Noman Avenue',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(111,1,'111','Engr. Noman Yaseen','',NULL,'',NULL,'Muhammad Yaseen',NULL,NULL,NULL,'0333-2017985',NULL,'Johar Chowrangi','Noman Avenue',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(112,1,'112','Engr. Abdul Satta','',NULL,'',NULL,'Muhammad Yaseen',NULL,NULL,NULL,'0333-2011511',NULL,'Johar Chowrangi','Noman Avenue',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(113,1,'113','Engr. Muhammad Zeeshan','',NULL,'',NULL,'Muhammad Islam',NULL,NULL,NULL,'0300-2921616',NULL,'Johar Chowrangi','Kamran Chowrangi',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(114,1,'114','Engr. Muhammad Asfand','',NULL,'',NULL,'Muhammad Iqbal',NULL,NULL,NULL,'0334-2807490',NULL,'Johar Chowrangi','Kamran Chowrangi',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(115,1,'115','Engr. Ammar Hussain ','',NULL,'',NULL,'Muhammad Abid',NULL,NULL,NULL,'0333-2999098',NULL,'Johar Chowrangi','Sumaira Apartments',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(116,1,'116','Engr. Oan Muhammad','',NULL,'',NULL,'Abid Ali',NULL,NULL,NULL,'0334-2807470',NULL,'Johar Chowrangi','Sumaira Apartments',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(117,1,'117','Engr. Sameer','',NULL,'',NULL,'Muhammad Saleem',NULL,NULL,NULL,'0300-3722459',NULL,'Johar Chowrangi','Sumaira Apartments',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(118,1,'118','Engr. Muhammad Raheel','',NULL,'',NULL,'Muhammad Farooq',NULL,NULL,NULL,'0307-3448753',NULL,'Johar Chowrangi','Johar Square',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(119,1,'119','Engr. Muhammad Aamir','',NULL,'',NULL,'Muhammad Istiaque',NULL,NULL,NULL,'0333-2993644',NULL,'Johar Chowrangi','Johar Square',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(120,1,'120','Engr. Muhammad Anus','',NULL,'',NULL,'Muhammad Istiaque',NULL,NULL,NULL,'0333-2993644',NULL,'Johar Chowrangi','Johar Square',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(121,1,'121','Engr. Muhammad Khuram','',NULL,'',NULL,'Muhammad Shahzad',NULL,NULL,NULL,'0332-2679290',NULL,'Johar Chowrangi','Noman Avenue',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(122,1,'122','Engr. Aadil Ali','',NULL,'',NULL,'Muhammad Shahzad',NULL,NULL,NULL,'0333-3530545',NULL,'Johar Chowrangi','Noman Avenue',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(123,1,'123','Engr. Nawab Ahmed','',NULL,'',NULL,'Farhan Ali ',NULL,NULL,NULL,'0333-1380024',NULL,'Johar Chowrangi','Noman Avenue',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(124,1,'124','Engr. Babar Ali','',NULL,'',NULL,'Muhammad Aslam',NULL,NULL,NULL,'0333-2797784',NULL,'Johar Chowrangi','Noman Avenue',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(125,1,'125','Engr. Faraz Ahmed','',NULL,'',NULL,'Dr. Naeem Khan',NULL,NULL,NULL,'0333-4985409',NULL,'Johar Chowrangi','Abdullah Heights',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(126,1,'126','Engr. Nisar Ahmed','',NULL,'',NULL,'Dr. Naeem Khan',NULL,NULL,NULL,'',NULL,'Johar Chowrangi','Abdullah Heights',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(127,1,'127','Engr. Faraz Ahmed','',NULL,'',NULL,'Muhammad Yousuf',NULL,NULL,NULL,'0345-3900409',NULL,'Johar Chowrangi','Gulshan-e-Amin',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(128,1,'128','Engr. Muhammad Umer Khan','',NULL,'',NULL,'Muhammad Iqbal',NULL,NULL,NULL,'0332-2814552',NULL,'Johar Chowrangi','Omega Heights',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(129,1,'129','Engr. Muhammad Sufyan','',NULL,'',NULL,'Zulfiquar Ali',NULL,NULL,NULL,'0300-3010890',NULL,'Johar Chowrangi','Faran Classic Apartments ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(130,1,'130','Engr. Hamza Zulfiquar Ali','',NULL,'',NULL,'',NULL,NULL,NULL,'0333-7766090',NULL,'Johar Chowrangi','Faran Classic Apartments ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(131,1,'131','Dr. Ali','',NULL,'',NULL,'Dr. Shamshad Ali',NULL,NULL,NULL,'0333-2943926',NULL,'Johar Chowrangi','Baseera Apartments',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(132,1,'132','Engr. Muhammad Islam Khan','',NULL,'',NULL,'Munwar Ali Khan',NULL,NULL,NULL,'0333-2506211',NULL,'Johar Chowrangi','Baseera Apartments',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(133,1,'133','Engr. Muhammad Danish','',NULL,'',NULL,'Munwar Ali Khan',NULL,NULL,NULL,'',NULL,'Johar Chowrangi','Baseera Apartments',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(134,1,'134','Ammar Ahmed','',NULL,'',NULL,'Abdul Gaffar Khan',NULL,NULL,NULL,'',NULL,'Johar Chowrangi','Baseera Apartments',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(135,1,'135','Engr. Muhammad Talha Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0333-4910652',NULL,'Johar Chowrangi','Naveed Banglows',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(136,1,'136','Touqeer Islam','',NULL,'',NULL,'Muhammad Aslam',NULL,NULL,NULL,'0333-2959129',NULL,'Johar Chowrangi','Johar Chowrangi',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(137,1,'137','Waleed Islam','',NULL,'',NULL,'Muhammad Aslam',NULL,NULL,NULL,'0333-2959129',NULL,'Johar Chowrangi','Johar Chowrangi',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(138,1,'138','Ubaid Ahmer ','',NULL,'',NULL,'Abdul Hakeem',NULL,NULL,NULL,'0333-2719007',NULL,'Johar Chowrangi','Flate# E/2/40 Sunny pried Gulistan e Johar',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(139,1,'139','Abdul Sattar ','',NULL,'',NULL,'Yaseen Khan',NULL,NULL,NULL,'0333-2011511',NULL,'Johar Chowrangi','Flate# 80 Kharaz Avineo Gulistan e Johar ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(140,1,'140','Muhammad Shahabaz','',NULL,'',NULL,'Muhammad Yaseen',NULL,NULL,NULL,'0333-2834059',NULL,'Johar Chowrangi','Flate# 80 Kharaz Avineo Gulistan e Johar ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(141,1,'141','Muhammad Noman','',NULL,'',NULL,'Yaseen Khan',NULL,NULL,NULL,'0302-2796322',NULL,'Johar Chowrangi','Flate# 80 Kharaz Avineo Gulistan e Johar ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(142,1,'142','Muhammad Rafique','',NULL,'',NULL,'Muhammad Yamin',NULL,NULL,NULL,NULL,NULL,'Johar Chowrangi','Flate# B-602 Yasmeen Tower Block-11 Gulistan e Joh',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(143,1,'143','Zulfiqar Kaim Khani','',NULL,'',NULL,'Mohbob Khan',NULL,NULL,NULL,'0300-9211276',NULL,'Johar Chowrangi','Flate# C-106 Farhan Classic G. Johar Block#12',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(144,1,'144','Bu Ali Khan ','',NULL,'',NULL,'Haji Taaj Muhammad',NULL,NULL,NULL,'0300-2455690',NULL,'Johar Chowrangi','Flate No# D-404, Grey SkyLine Block#-13 Gulistan e',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(145,1,'145','Sajjad Ali','',NULL,'',NULL,'Imdad Ali',NULL,NULL,NULL,'0345-2009660',NULL,'Nazimabad','Nazimabad#1',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(146,1,'146','Aijaz Ali','',NULL,'',NULL,'Imdad Ali',NULL,NULL,NULL,'0313-2752027',NULL,'Nazimabad','Nazimabad#1',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(147,1,'147','Shahbaz Ali','',NULL,'',NULL,'Imdad Ali',NULL,NULL,NULL,'0312-8060612',NULL,'Nazimabad','Nazimabad#1',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(148,1,'148','Zulfiquar Ali Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0308-2835967',NULL,'Nazimabad','Nayab Apartments',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(149,1,'149','Engr. Irfan Ali','',NULL,'',NULL,'Sadiq Ali Sher',NULL,NULL,NULL,'0321-8249878',NULL,'Nazimabad','Nazimabad#1',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(150,1,'150','Engr. Khuram Aijaz','',NULL,'',NULL,'Umeed Ali Khan',NULL,NULL,NULL,'0300-2453900',NULL,'Nazimabad','Nazimabad Golimaar Chowrangi',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(151,1,'151','Taimoor Baber','',NULL,'',NULL,'Baber Ali',NULL,NULL,NULL,'0336-2039183',NULL,'Nazimabad','Nazimabad#4',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(152,1,'152','Muhammad Irfan','',NULL,'',NULL,'Muhammad Iqbal',NULL,NULL,NULL,'0300-2403115',NULL,'Nazimabad','Nazimabad#1',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(153,1,'153','Muhammad Imran','',NULL,'',NULL,'Muhammad Usman',NULL,NULL,NULL,'0344-2129998',NULL,'Nazimabad','Nazimabad#1',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(154,1,'154','Javed','',NULL,'',NULL,'Yameen Khan',NULL,NULL,NULL,'0333-3934498',NULL,'Nazimabad','Nazimabad#1',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(155,1,'155','Sadiq Ali Shabir','',NULL,'',NULL,'Imdad Ali Khan',NULL,NULL,NULL,'0333-3923872',NULL,'Nazimabad','Nazimabad#1',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(156,1,'156','Fayyaz Ali','',NULL,'',NULL,'Niaz Ali',NULL,NULL,NULL,'0332-8290590',NULL,'Nazimabad','Nazimabad#3',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(157,1,'157','Israr Ahmed','',NULL,'',NULL,'Umeed Ali',NULL,NULL,NULL,'0336-2628473',NULL,'Nazimabad','Nazimabad#3',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(158,1,'158','majid Ali','',NULL,'',NULL,'Wajid Ali',NULL,NULL,NULL,'0324-9216928',NULL,'Nazimabad','Nazimabad#3',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(159,1,'159','Muhammad Aslam','',NULL,'',NULL,'Azeem Ud Din Khan',NULL,NULL,NULL,'0321-2854560',NULL,'Nazimabad','Nazimabad#3',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(160,1,'160','Azad Ahmed','',NULL,'',NULL,'Umeed Ali',NULL,NULL,NULL,'',NULL,'Nazimabad','Nazimabad#6',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(161,1,'161','Javed Iqbal','',NULL,'',NULL,'Atta Muhammad ',NULL,NULL,NULL,'0333-3424904',NULL,'Nazimabad','Nazimabad#7',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(162,1,'162','Shakeel Ahmed','',NULL,'',NULL,'Niamat Ali',NULL,NULL,NULL,'0300-2120897',NULL,'Nazimabad','Nazimabad#4',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(163,1,'163','Zaheer Ahmed','',NULL,'',NULL,'Niamat Ali',NULL,NULL,NULL,'0345-8275175',NULL,'Nazimabad','Nazimabad#4',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(164,1,'164','Baber Khursheed','',NULL,'',NULL,'Khursheed Ahmed',NULL,NULL,NULL,'0300-2181668',NULL,'Nazimabad','Nazimabad#4',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(165,1,'165','Sarfaraz Ahmed','',NULL,'',NULL,'Amrao Ali Khan',NULL,NULL,NULL,'0333-2110722',NULL,'Nazimabad','3 D 14/5 Nazimabad # 3',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(166,1,'166','Muhammad Farooq','',NULL,'',NULL,'Haji Muhammad Yaseen Khan',NULL,NULL,NULL,'0335-2727050',NULL,'Nazimabad','3 B 4/21 Nazimabad # 3',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(167,1,'167','Muhammad Qayoom','',NULL,'',NULL,'Jaffer Ali Khan',NULL,NULL,NULL,'0322-3423323',NULL,'Nazimabad','Bismillah Teris Nazimabad # 3',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(168,1,'168','Asim Ahmed','',NULL,'',NULL,'Muhammad Qayoom Khan',NULL,NULL,NULL,'0300-9203925',NULL,'Nazimabad','Bismillah Teris Nazimabad # 3',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(169,1,'169','Anees Ali Khan','',NULL,'',NULL,'Amrao Ali Khan',NULL,NULL,NULL,'0333-2376360',NULL,'Nazimabad','3 A 4/3 Sher Bano Apartments Nazimabad # 4',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(170,1,'170','Nafees Ali Khan','',NULL,'',NULL,'Anees Ali Khan',NULL,NULL,NULL,'0300-2140506',NULL,'Nazimabad','3 A 4/3 Sher Bano Apartments Nazimabad # 4',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(171,1,'171','Rehan Anees','',NULL,'',NULL,'Anees Ali Khan',NULL,NULL,NULL,'0044-7411296696',NULL,'Nazimabad','3 A 4/3 Sher Bano Apartments Nazimabad # 4 UK',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(172,1,'172','Muhammad Waseem','',NULL,'',NULL,'Abdul Qayom Khan',NULL,NULL,NULL,'0300-9203925',NULL,'Nazimabad','Bismillah Teris Nazimabad # 3',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(173,1,'173','Liaqat Ali Khan','',NULL,'',NULL,'Nazar Ali Khan',NULL,NULL,NULL,'0213-6608199',NULL,'Nazimabad','Nazimabad #1    7-H-1 ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(174,1,'174','Muhammad Ali','',NULL,'',NULL,'-',NULL,NULL,NULL,'0300-8266587',NULL,'Nazimabad','Nazimabad #1    7-H-1 ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(175,1,'175','Orangzaib','',NULL,'',NULL,'Liaqat Ali Khan',NULL,NULL,NULL,'0300-441743',NULL,'Nazimabad','Nazimabad #1 2nd Floor 58/  J-1',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(176,1,'176','Muhammad Ashfaq','',NULL,'',NULL,'Fatah Ali khan',NULL,NULL,NULL,'',NULL,'Nazimabad','Nazimabad#1',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(177,1,'177','Muhammad Waseem','',NULL,'',NULL,'Yaseen Khan',NULL,NULL,NULL,'',NULL,'Nazimabad','Nazimabad#1',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(178,1,'178','muhammad Rizwan','',NULL,'',NULL,'Muhammad Yaseen',NULL,NULL,NULL,'',NULL,'Nazimabad','Nazimabad#1',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(179,1,'179','Muhammad kamran','',NULL,'',NULL,'Muhammad Iqbal Khan',NULL,NULL,NULL,'0333-3077216',NULL,'Nazimabad','Nazimabad#3 ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(180,1,'180','Muhammad Farhan','',NULL,'',NULL,'Muhammad Iqbal',NULL,NULL,NULL,'0332-2146567',NULL,'Nazimabad','Nazimabad#3 ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(181,1,'181','Muhammad Faizan','',NULL,'',NULL,'Muhammad Iqbal Khan',NULL,NULL,NULL,'0314-2233331',NULL,'Nazimabad','Nazimabad#3 ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(182,1,'182','Jawaid ','',NULL,'',NULL,'Omeed Khan',NULL,NULL,NULL,'0333-3299423',NULL,'Nazimabad','Nazimabad#3 ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(183,1,'183','Muhammad Saeed Khan','',NULL,'',NULL,'Muhammad Abdul Rasheed',NULL,NULL,NULL,'0323-8285985',NULL,'Nazimabad','Nazimabad#1 Siraaj Colony (KKCI)',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(184,1,'184','Muhammad Faisal','',NULL,'',NULL,'Muhammad Abdul Rasheed',NULL,NULL,NULL,'0345-2191812',NULL,'Nazimabad','Nazimabad#1 Siraaj Colony (KKCI)',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(185,1,'185','Hamid Khan','',NULL,'',NULL,'Abdul Rasheed',NULL,NULL,NULL,NULL,NULL,'Nazimabad','Nazimabad#1 Siraaj Colony (KKCI)',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(186,1,'186','Muhammad Arshad','',NULL,'',NULL,'Muhammad Rasheed Khan',NULL,NULL,NULL,'0321-2380932',NULL,'Nazimabad','Nazimabad#1 Siraaj Colony (KKCI)',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(187,1,'187','Abdul Waheed','',NULL,'',NULL,'Abdul Rasheed',NULL,NULL,NULL,'0342-2091752',NULL,'Nazimabad','Nazimabad#1 Siraaj Colony (KKCI)',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(188,1,'188','Itehaaq Ali ','',NULL,'',NULL,'Muhammad Ali Khan',NULL,NULL,NULL,'0333-3103069',NULL,'Nazimabad','Nazimabad#1 Siraaj Colony (KKCI)',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(189,1,'189','Dilshaad Ali ','',NULL,'',NULL,'Muhammad Ali',NULL,NULL,NULL,'03136-2693962',NULL,'Nazimabad','Nazimabad#1 Siraaj Colony (KKCI)',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(190,1,'190','Irshad Ali ','',NULL,'',NULL,'Muhammad Ali',NULL,NULL,NULL,'0333-2056446',NULL,'Nazimabad','Nazimabad#1 Siraaj Colony (KKCI)',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(191,1,'191','Khursheed Ali','',NULL,'',NULL,'Muhammad Ali',NULL,NULL,NULL,'0333-2050188',NULL,'Nazimabad','Nazimabad#1 Siraaj Colony (KKCI)',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(192,1,'192','Shamshaad Ali','',NULL,'',NULL,'Muhammad Ali',NULL,NULL,NULL,'0333-3299328',NULL,'Nazimabad','Nazimabad#1 Siraaj Colony (KKCI)',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(193,1,'193','Engr. Ali Raza','',NULL,'',NULL,'Sadiq Ali Sher',NULL,NULL,NULL,'0313-3582446',NULL,'Safora Ghot','Safora Ghot Old Raveen Society',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(194,1,'194','Abdul Rasheed Khan','',NULL,'',NULL,'Hidayat Ali Khan',NULL,NULL,NULL,'0346-2412488',NULL,'Safora Ghot','Shumail Complex Mosamiyat Safora',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(195,1,'195','Shahzad Ahmed','',NULL,'',NULL,'Maqsood Ali Khan',NULL,NULL,NULL,'0300-2622797',NULL,'Safora Ghot','Nabi View Mosamiyat Chowrangi Safora',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(196,1,'196','DSR Rahid Ahmed','',NULL,'',NULL,'Maqsood Ali Khan',NULL,NULL,NULL,'0333-2741863',NULL,'Safora Ghot','Shumail Complex Mosamiyat Safora',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(197,1,'197','Abdul Ghaffar Khan','',NULL,'',NULL,'Muhammad Ilyas Khan',NULL,NULL,NULL,'0302-2691232',NULL,'Safora Ghot','Shumail Complex Mosamiyat Safora',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(198,1,'198','Engr. Khizar Ahmed','',NULL,'',NULL,'',NULL,NULL,NULL,'0324-2351322',NULL,'Safora Ghot','Shumail Complex Mosamiyat Safora',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(199,1,'199','Manzoor Ahmed','',NULL,'',NULL,'Asghar Ali',NULL,NULL,NULL,'0333-3945837',NULL,'Safora Ghot','D 33 Block Sayed Village Malir Cant. Check Post 6',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(200,1,'200','Maqbool Ahmed','',NULL,'',NULL,'Asghar Ali',NULL,NULL,NULL,'0333-2223538',NULL,'Safora Ghot','D 33 Block Sayed Village Malir Cant. Check Post 6',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(201,1,'201','Muhammad Naeem','',NULL,'',NULL,'Nizam Khan',NULL,NULL,NULL,'0333-2222576',NULL,'Safora Ghot','D 22 Block Sayed Village Malir Cant. Check Post 6',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(202,1,'202','Anees Ahmed ','',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'Safora Ghot','D 23 Block Sayed Village Malir Cant. Check Post 6',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(203,1,'203','Muhammad Aslam','',NULL,'',NULL,'Moula Baksh',NULL,NULL,NULL,'0331-3819081',NULL,'Safora Ghot','A 154  Rizwan Society Safora Goth',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(204,1,'204','Muhammad Aslam','',NULL,'',NULL,'Nawab Ali Khan',NULL,NULL,NULL,NULL,NULL,'Safora Ghot','A 158  Rizwan Society Safora Goth',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(205,1,'205','Hassan Ahmed','',NULL,'',NULL,'Muhammad Aslam Khan',NULL,NULL,NULL,'0333-2695529',NULL,'Safora Ghot','R 32-A Rizwan Society Safora Goth',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(206,1,'206','Khalid Hussain','',NULL,'',NULL,'Shoakat Khan',NULL,NULL,NULL,'0333-2309953',NULL,'Safora Ghot','R 177  Rizwan Society Safora Goth',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(207,1,'207','Shakeel Ahmed','',NULL,'',NULL,'Sagheer Ahmed',NULL,NULL,NULL,'0302-8374999',NULL,'Safora Ghot','A1- 63  Rizwan Society Safora Goth',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(208,1,'208','Niaz  Daud','',NULL,'',NULL,'Daud Ali Khan',NULL,NULL,NULL,'0336-2626690',NULL,'Safora Ghot','R 709   Rizwan Society Safora Goth',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(209,1,'209','Muhammad Iqbal Khan','',NULL,'',NULL,'Asad Ali Khan',NULL,NULL,NULL,'0335-3117552',NULL,'Safora Ghot','R 950  Rizwan Society Safora Goth',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(210,1,'210','Zia Ur Rehman','',NULL,'',NULL,'Munawwar Ali Khan',NULL,NULL,NULL,'0300-9269276',NULL,'Safora Ghot','A-1175  Rizwan Society Safora Goth',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(211,1,'211','Muhammad Sohail','',NULL,'',NULL,'Muhammad Yameen Khan',NULL,NULL,NULL,'0333-3887607',NULL,'Safora Ghot','Rizwan Society Safora Goth',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(212,1,'212','Muhammad Kaleem Khan','',NULL,'',NULL,'Muhammad Iqbal Khan',NULL,NULL,NULL,'0300-8686176',NULL,'Safora Ghot','B 32 A Rizwan Society Safora Goth',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(213,1,'213','Engr. Adil Nadem','',NULL,'',NULL,'Ashiq Nadeem',NULL,NULL,NULL,'0321-8739599',NULL,'Gulberg','A-239 Blk 12 FB Area Gulberg',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(214,1,'214','Amir Nadeem','',NULL,'',NULL,'Ashiq Nadeem',NULL,NULL,NULL,'0333-2767680',NULL,'Gulberg','A-239 Blk 12 FB Area Gulberg',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(215,1,'215','Engr. Abdul Sattar','',NULL,'',NULL,'Abdul Ghani Khan',NULL,NULL,NULL,'0302-8240615',NULL,'Gulberg','D.T.B Blk 12 FB Area Gulberg',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(216,1,'216','Engr. Muhammad Nadeem','',NULL,'',NULL,'Muhammad Hakeem Khan',NULL,NULL,NULL,'0334-2619491',NULL,'Gulberg','D.T.B Blk 12 FB Area Gulberg',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(217,1,'217','Dr. Ahmed Faheem','',NULL,'',NULL,'Muhammad Hakeem Khan',NULL,NULL,NULL,'0302-2836866',NULL,'Gulberg','D.T.B Blk 12 FB Area Gulberg',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(218,1,'218','Dr. Muhammad Akhbar Ali','',NULL,'',NULL,'Muhammad Yaseen',NULL,NULL,NULL,'0301-2410665',NULL,'Gulberg','R-29 Blk 12 FB Area Gulberg',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(219,1,'219','Muhammad Zeeshan','',NULL,'',NULL,'Muhammad Ashraf',NULL,NULL,NULL,'0333-2630527',NULL,'Gulberg','R-31 Blk 12 FB Area Gulberg',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(220,1,'220','Muhammad Ayoob','',NULL,'',NULL,'Hashim Ali Khan',NULL,NULL,NULL,'0334-2223366',NULL,'Gulberg','A-691/12 Blk 12 FB Area Gulberg',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(221,1,'221','Mubashir Husain','',NULL,'',NULL,'Muhammad Ayoob',NULL,NULL,NULL,'0300-7069820',NULL,'Gulberg','A-691/12 Blk 12 FB Area Gulberg',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(222,1,'222','Muhammad Farooq','',NULL,'',NULL,'Muhammad Ayoob',NULL,NULL,NULL,'0333-3790155',NULL,'Gulberg','A-691/12 Blk 12 FB Area Gulberg',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(223,1,'223','Dr. Muhammad Hasan Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0300-286626',NULL,'Gulberg','R-437 Blk 12 FB Area Gulberg (Arohi Clanic)',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(224,1,'224','Dr. Ahsan','',NULL,'',NULL,'Muhammad Hasan',NULL,NULL,NULL,'0334-3466386',NULL,'Gulberg','R-437 Blk 12 FB Area Gulberg (Arohi Clanic)',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(225,1,'225','Dr. Tehseen ','',NULL,'',NULL,'Muhammad Hasan',NULL,NULL,NULL,'0312-3639120',NULL,'Gulberg','R-437 Blk 12 FB Area Gulberg (Arohi Clanic)',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(226,1,'226','Dr. Roshan Ali ','',NULL,'',NULL,'',NULL,NULL,NULL,'0333-8419086',NULL,'Gulberg','R-436 Blk 12 FB Area Gulberg ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(227,1,'227','Engr. Muhammad Arsalan','',NULL,'',NULL,'Dr. Muhammad Roshan',NULL,NULL,NULL,'0333-3300759',NULL,'Gulberg','',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(228,1,'228','Engr. Muhammad Daood','',NULL,'',NULL,'Dr. Muhammad Roshan',NULL,NULL,NULL,'0331-2709090',NULL,'Gulberg','',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(229,1,'229','Imtiaz Ali','',NULL,'',NULL,'Muhammad Nazeer Khan',NULL,NULL,NULL,'0333-2208536',NULL,'Gulberg','',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(230,1,'230','Engr. Naeem','',NULL,'',NULL,'Allaudin',NULL,NULL,NULL,'0300-2451235',NULL,'Gulberg','L-63 Blk 12 FB Area Gulberg ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(231,1,'231','Engr. Farhan Ahmed','',NULL,'',NULL,'Allaudin',NULL,NULL,NULL,'0331-3560373',NULL,'Gulberg','L-63 Blk 12 FB Area Gulberg ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(232,1,'232','Dr. Naeem','',NULL,'',NULL,'Allaudin',NULL,NULL,NULL,'0311-8188910',NULL,'Gulberg','L-63 Blk 12 FB Area Gulberg ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(233,1,'233','Engr. Muhammad Waseem','',NULL,'',NULL,'Allaudin',NULL,NULL,NULL,'0321-2131515',NULL,'Gulberg','L-63 Blk 12 FB Area Gulberg ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(234,1,'234','Engr. Muhammad Arif','',NULL,'',NULL,'Hakim Ali Khan',NULL,NULL,NULL,'0300-2975001',NULL,'Gulberg','',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(235,1,'235','Ghulam Rasool','',NULL,'',NULL,'Haji Muhammad Sulaiman',NULL,NULL,NULL,'0300-3618354',NULL,'Gulberg','A-682 Blk 12 FB Area Gulberg ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(236,1,'236','Aleem Khan','',NULL,'',NULL,'Nizam Khan',NULL,NULL,NULL,'0304-2507335',NULL,'Gulberg','L-32 Blk 12 FB Area Gulberg ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(237,1,'237','Engr. Muhammad Umer','',NULL,'',NULL,'Aleem Khan',NULL,NULL,NULL,'0333-2392610',NULL,'Gulberg','L-32 Blk 12 FB Area Gulberg ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(238,1,'238','Engr. Muhammad Saifullah Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0312-2117760',NULL,'Gulberg','L-32 Blk 12 FB Area Gulberg ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(239,1,'239','Muhammad Aslam','',NULL,'',NULL,'Husain Khan',NULL,NULL,NULL,'0333-2929043',NULL,'Gulberg','A-170 Blk 12 FB Area Gulberg ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(240,1,'240','Dr. Abdul Wahab ','',NULL,'',NULL,'Muhammad Aslam Khan',NULL,NULL,NULL,'0301-2936170',NULL,'Gulberg','',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(241,1,'241','Engr. Abdul Saad Aslam','',NULL,'',NULL,'',NULL,NULL,NULL,'0345-3697844',NULL,'Gulberg','',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(242,1,'242','Engr. Moaz','',NULL,'',NULL,'',NULL,NULL,NULL,'0344-3764398',NULL,'Gulberg','',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(243,1,'243','Engr. Muhammad Anwer Khan','',NULL,'',NULL,'Allaudin Khan Advocate',NULL,NULL,NULL,'0333-2286349',NULL,'Gulberg','A-839 Blk 12 FB Area Gulberg ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(244,1,'244','Engr. Sallaudin Khan','',NULL,'',NULL,'Allaudin Khan Advocate',NULL,NULL,NULL,'0345-3954400',NULL,'Gulberg','A-839 Blk 12 FB Area Gulberg ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(245,1,'245','Engr. Muhammad Asif Khan','',NULL,'',NULL,'Allaudin Khan Advocate',NULL,NULL,NULL,'0333-2286342',NULL,'Gulberg','Civil Line PIDC',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(246,1,'246','Jamshed Ali Khan','',NULL,'',NULL,'Jaffer Ali Khan',NULL,NULL,NULL,'0333-2344744',NULL,'Gulberg','R-24 Blk 12 FB Area Gulberg ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(247,1,'247','Capt. Muhammad Waqas','',NULL,'',NULL,'Jamshed Ali Khan',NULL,NULL,NULL,'0333-3640447',NULL,'Gulberg','R-24 Blk 12 FB Area Gulberg ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(248,1,'248','Capt. Waqar Jamshed','',NULL,'',NULL,'Jamshed Ali Khan',NULL,NULL,NULL,'',NULL,'Gulberg','R-24 Blk 12 FB Area Gulberg ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(249,1,'249','Muhammad Shafiq Khan','',NULL,'',NULL,'Jaffer Ali Khan',NULL,NULL,NULL,'0313-2632446',NULL,'Gulberg','A-915 Blk 12 FB Area Gulberg ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(250,1,'250','Muhammad Adnan','',NULL,'',NULL,'Jaffer Ali Khan',NULL,NULL,NULL,'0333-3174897',NULL,'Gulberg','A-915 Blk 12 FB Area Gulberg ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(251,1,'251','Muhammad Sarfaraz','',NULL,'',NULL,'Sikandar Khan',NULL,NULL,NULL,'0333-3401173',NULL,'Gulberg','R-22 Blk 12 FB Area Gulberg ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(252,1,'252','Ashiq Nadeem','',NULL,'',NULL,'Atta Muhammad Khan',NULL,NULL,NULL,'0333-2767680',NULL,'Gulberg','A-239 Blk 12 FB Area Gulberg ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(253,1,'253','Asim Nadeem','',NULL,'',NULL,'Ashiq Nadeem',NULL,NULL,NULL,'0333-3755150',NULL,'Gulberg','A-239 Blk 12 FB Area Gulberg ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(254,1,'254','Shehryar ','',NULL,'',NULL,'Jhangsher Ali Khan',NULL,NULL,NULL,'0333-2991903',NULL,'Gulberg','Hasan Apartments Ayesha Manzil',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(255,1,'255','Ali','',NULL,'',NULL,'Abdul Aziz Khan',NULL,NULL,NULL,'0333-27055477',NULL,'Gulberg','Hasan Apartments Ayesha Manzil',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(256,1,'256','Muhammad Waleed','',NULL,'',NULL,'Liaquat Ali',NULL,NULL,NULL,'0333-2577143',NULL,'Gulberg','Hasan Apartments Ayesha Manzil',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(257,1,'257','Taimooor','',NULL,'',NULL,'Bashir Ahmed',NULL,NULL,NULL,'',NULL,'Gulberg','Hasan Apartments Ayesha Manzil',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(258,1,'258','Hasnain Ali','',NULL,'',NULL,'Munawar Ali',NULL,NULL,NULL,'',NULL,'Gulberg','Hasan Apartments Ayesha Manzil',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(259,1,'259','Naimat Ali Khan','',NULL,'',NULL,'Abdullah Khan',NULL,NULL,NULL,'0300-2453900',NULL,'Naya Golimaar ','Naya Golimaar Petal Gali',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(260,1,'260','Salman Naimat Ali','',NULL,'',NULL,'',NULL,NULL,NULL,'0321-8260080',NULL,'Naya Golimaar ','Naya Golimaar Petal Gali',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(261,1,'261','Muhammad Imran','',NULL,'',NULL,'',NULL,NULL,NULL,'0311-8260080',NULL,'Naya Golimaar ','Naya Golimaar Petal Gali',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(262,1,'262','Jamshed Ali ','',NULL,'',NULL,'Peer Muhammad Khan',NULL,NULL,NULL,'0334-3353305',NULL,'Azizabad','Azizabad',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(263,1,'263','Asfand Nawab','',NULL,'',NULL,'Nawab Ali',NULL,NULL,NULL,'0332-2909024',NULL,'Azizabad','Gulshan-e-Shamim Yasinabad',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(264,1,'264','Nawab Ali','',NULL,'',NULL,'Ghulab Khan',NULL,NULL,NULL,'0346-8901090',NULL,'Azizabad','Gulshan-e-Shamim Yasinabad',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(265,1,'265','Dr. Nadeem Ahmed','',NULL,'',NULL,'',NULL,NULL,NULL,'0332-8217776',NULL,'Azizabad','Gulshan-e-Shamim Yasinabad',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(266,1,'266','Faheem Ahmed ','',NULL,'',NULL,'',NULL,NULL,NULL,'0300-3583478',NULL,'Azizabad','Sahil Medical Store Ayesha Manzil',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(267,1,'267','Zuhair Ahmed','',NULL,'',NULL,'',NULL,NULL,NULL,'0300-2052734',NULL,'Azizabad','Azizabad',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(268,1,'268','Wazeer Ahmed Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'Azizabad','Azizabad',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(269,1,'269','Rasheed Iqbal ','',NULL,'',NULL,'Peer Muhammad Khan',NULL,NULL,NULL,'0333-2243138',NULL,'Azizabad','Askai Tower Yasenabad',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(270,1,'270','Engr. Inamullah Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0346-8913152',NULL,'Azizabad','Azizabad#8 ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(271,1,'271','Engr. Muhammad Asif','',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'Azizabad','Azizabad#8 ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(272,1,'272','Rashid Raza','',NULL,'',NULL,'Taj Muhammad Khan',NULL,NULL,NULL,'0333-9222672',NULL,'Azizabad','Gulshan-e-Shamim Yasinabad (KK Pakistan Ata Cahki)',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(273,1,'273','Mohsin Ali','',NULL,'',NULL,'Engr. Khifayat Ali Khan',NULL,NULL,NULL,'0345-3080126',NULL,'North Nazimabad','A-389 Block C Haidri North Nazimabad',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(274,1,'274','Engr. Shahid Mehboob','',NULL,'',NULL,'Engr. Mehboob Ali Khan',NULL,NULL,NULL,'0097-1555163602',NULL,'North Nazimabad','C-130 Block D Haidri North Nazimabad',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(275,1,'275','Nabeel Mehboob','',NULL,'',NULL,'Engr. Mehboob Ali Khan',NULL,NULL,NULL,'0333-2062785',NULL,'North Nazimabad','C-130 Block D Haidri North Nazimabad',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(276,1,'276','Engr. Naveed Mehboob','',NULL,'',NULL,'Engr. Mehboob Ali Khan',NULL,NULL,NULL,'0345-2821050',NULL,'North Nazimabad','C-130 Block D Haidri North Nazimabad',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(277,1,'277','Engr. Kashif','',NULL,'',NULL,'Engr. Mehboob Ali Khan',NULL,NULL,NULL,'0333-362621',NULL,'North Nazimabad','C-130 Block D Haidri North Nazimabad',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(278,1,'278','Sajid Ali','',NULL,'',NULL,'Wahid Ali Khan',NULL,NULL,NULL,'0333-2626367',NULL,'North Nazimabad','C-130 Block D Haidri North Nazimabad',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(279,1,'279','Dr. Asim ','',NULL,'',NULL,'Dr. Abdul Qayoom',NULL,NULL,NULL,'',NULL,'North Nazimabad','C-134 Block D Haidri North Nazimabad',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(280,1,'280','Dr. Abdul Qayoom ','',NULL,'',NULL,'',NULL,NULL,NULL,'0300-8230735',NULL,'North Nazimabad','C-134 Block D Haidri North Nazimabad',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(281,1,'281','Engr. Shamsher Ali Khan','',NULL,'',NULL,'Abdul Razzaq',NULL,NULL,NULL,'0300-3364833',NULL,'North Nazimabad','C-132 Block D Haidri North Nazimabad',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(282,1,'282','Engr. Muhammad Saqib','',NULL,'',NULL,'Engr. Shamsher Ali Khan',NULL,NULL,NULL,'0333-8277718',NULL,'North Nazimabad','C-132 Block D Haidri North Nazimabad',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(283,1,'283','Ghulam Muhiuddeen Khan','',NULL,'',NULL,'Muhammad Ameen Khan',NULL,NULL,NULL,'0300-2667804',NULL,'North Nazimabad','C-413 Block C Haidri North Nazimabad',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(284,1,'284','Abdul Aziz Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'021-36631311',NULL,'North Nazimabad','C-409 Block C Haidri North Nazimabad',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(285,1,'285','Akber Ali Khan','',NULL,'',NULL,'Asfer Ali Khan',NULL,NULL,NULL,'0336-3794522',NULL,'North Nazimabad','A-298 Block D Haidri North Nazimabad',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(286,1,'286','Mansoor Ali Khan','',NULL,'',NULL,'Akhber Ali Khan',NULL,NULL,NULL,'0321-2465973',NULL,'North Nazimabad','A-298 Block D Haidri North Nazimabad',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(287,1,'287','Muhammad Arshad ','',NULL,'',NULL,'Muhammad Ahmed',NULL,NULL,NULL,'0332-3404246',NULL,'North Nazimabad','B-37 Block D Haidri North Nazimabad',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(288,1,'288','Muhammad Sohail','',NULL,'',NULL,'Liaquat Ali Khan',NULL,NULL,NULL,'0321-2202277',NULL,'North Nazimabad','Saima Grand 5 star chowrangi',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(289,1,'289','Shait Farooq Ahmed Khan','',NULL,'',NULL,'Shaffi Khan',NULL,NULL,NULL,'0322-9240008',NULL,'North Nazimabad','D-5 Block L 5 Star Chowrangi',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(290,1,'290','Rehan Farooq ','',NULL,'',NULL,'Shait Farooq Ahmed Khan',NULL,NULL,NULL,'0321-9240008',NULL,'North Nazimabad','D-5 Block L 5 Star Chowrangi',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(291,1,'291','Shait Javed Ahmed','',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'North Nazimabad','Waseem Akram Road KDA chowrangi',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(292,1,'292','Imdad Ali','',NULL,'',NULL,'Feroz Khan',NULL,NULL,NULL,'0345-6111466',NULL,'North Nazimabad','F9 Shalimaar Center Block K North Nazimabad',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(293,1,'293','Zafar Iqbal','',NULL,'',NULL,'Imdad Ali',NULL,NULL,NULL,'0345-6111466',NULL,'North Nazimabad','F9 Shalimaar Center Block K North Nazimabad',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(294,1,'294','Engr. Shakeel Ahmed','',NULL,'',NULL,'Imdad Ali',NULL,NULL,NULL,'0300-2461615',NULL,'North Nazimabad','F9 Shalimaar Center Block K North Nazimabad',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(295,1,'295','Liaquat Ali','',NULL,'',NULL,'Khuda Bakhs',NULL,NULL,NULL,'0333-3067189',NULL,'North Nazimabad','Saima Apartments Block K North Nazimabad',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(296,1,'296','Ather Ali Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0300-2346155',NULL,'North Nazimabad','Fareed Heights Block K North Nazimabad',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(297,1,'297','Muhammad Asif ','',NULL,'',NULL,'Muhammad  Yousuf',NULL,NULL,NULL,'0300-2396688',NULL,'North Nazimabad','North Nazimabad Board Office PTCL Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(298,1,'298','Muhammad Akhter','',NULL,'',NULL,'',NULL,NULL,NULL,'0332-2616442',NULL,'North Nazimabad','North Nazimabad Board Office Khando Ghot',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(299,1,'299','Muhammad Aslam Khan','',NULL,'',NULL,'Abdul Raheem Khan',NULL,NULL,NULL,'',NULL,'North Nazimabad','(PTCL) TNT D.C Office Shaki Hasan',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(300,1,'300','Akhter Ali','',NULL,'',NULL,'Abdul Raheem Khan',NULL,NULL,NULL,'',NULL,'North Nazimabad','(K.E) Nageena Square 2K Stop Morth Nazimabad',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(301,1,'301','Liaquat Ali','',NULL,'',NULL,'Muhammad Usman',NULL,NULL,NULL,'0334-3307025',NULL,'North Nazimabad','Haidri North Nazimabad Block H',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(302,1,'302','Nisar Khan','',NULL,'',NULL,'Abdul Aziz Khan',NULL,NULL,NULL,'0300-8299676',NULL,'North Nazimabad','B-84 Block I North Nazimabad',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(303,1,'303','Riaz Khan','',NULL,'',NULL,'Abdul Aziz Khan',NULL,NULL,NULL,'0300-8276908',NULL,'North Nazimabad','B-85 Block I North Nazimabad',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(304,1,'304','Usman Ali','',NULL,'',NULL,'Nawab Ali Khan ',NULL,NULL,NULL,'0333-3193075',NULL,'North Nazimabad','A-201/2 Rajpoot Apartments North Nazimabad Block G',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(305,1,'305','Jaffer Ali Khan','',NULL,'',NULL,'Raheem Ali Khan',NULL,NULL,NULL,'0331-2483834',NULL,'North Nazimabad','C 1/4 Block G Al-Arham Square Haidri',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(306,1,'306','Yasir Ali Khan','',NULL,'',NULL,'Jaffer Ali Khan',NULL,NULL,NULL,'0333-2106941',NULL,'North Nazimabad','C 1/4 Block G Al-Arham Square Haidri',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(307,1,'307','Habib ur Rehman','',NULL,'',NULL,'Jaffer Ali Khan',NULL,NULL,NULL,'0336-2181849',NULL,'North Nazimabad','C 1/4 Block G Al-Arham Square Haidri',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(308,1,'308','Azhar Adnan','',NULL,'',NULL,'Jaffer Ali Khan',NULL,NULL,NULL,'0336-2104896',NULL,'North Nazimabad','C 1/4 Block G Al-Arham Square Haidri',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(309,1,'309','Maqsood Ali ','',NULL,'',NULL,'Amrao Ali Khan',NULL,NULL,NULL,'0333-3858645',NULL,'North Nazimabad','A/277 Block 7 North Nazimabad ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(310,1,'310','Muhammad Asif ','',NULL,'',NULL,'Maqsood Ali Khan',NULL,NULL,NULL,'0322-7770101',NULL,'North Nazimabad','A/277 Block 7 North Nazimabad ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(311,1,'311','Muhammad Muzaffar ','',NULL,'',NULL,'Noor Muhammad Khan',NULL,NULL,NULL,'0333-2101907',NULL,'North Nazimabad','Block H North Nazimabad ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(312,1,'312','Shoail Ahmed','',NULL,'',NULL,'Mehfooz Ali Khan',NULL,NULL,NULL,'0345-3356755',NULL,'North Nazimabad','KDA Flat Near Abdullah College North Nazimabad',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(313,1,'313','Muhammad Imran','',NULL,'',NULL,'Khifayat Ali Khan',NULL,NULL,NULL,'0331-7513207',NULL,'North Nazimabad',' North Nazimabad Block 4',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(314,1,'314','Abid Mehmood','',NULL,'',NULL,'Mehmood Ali Khan',NULL,NULL,NULL,'0300-9490800',NULL,'North Nazimabad','North Nazimabad Board Office Asghr Hospital',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(315,1,'315','Muhammad Waseem','',NULL,'',NULL,'Babu Muhammad Younus',NULL,NULL,NULL,'0333-2764009',NULL,'North Nazimabad','North Nazimabad Board Office',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(316,1,'316','Sagheer Ahmed','',NULL,'',NULL,'Aslam Ali',NULL,NULL,NULL,'0331-2042867',NULL,'North Nazimabad','North Nazimabad Board Office',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(317,1,'317','Muhammad Younus','',NULL,'',NULL,'Asghar Khan',NULL,NULL,NULL,'0332-2173891',NULL,'North Nazimabad','North Nazimabad Board Office',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(318,1,'318','Muhammad Akram','',NULL,'',NULL,'Abdul Qadeer Khan',NULL,NULL,NULL,'0314-2327040',NULL,'North Nazimabad','North Nazimabad Board Office',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(319,1,'319','Abdul Qadeer Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0336-3809432',NULL,'North Nazimabad','North Nazimabad Board Office',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(320,1,'320','Muhammad Naeem','',NULL,'',NULL,'Sobedar Muhammad Amin Khan',NULL,NULL,NULL,'',NULL,'North Nazimabad','House# B-230 Block D North Nazimabad',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(321,1,'321','Muhammad Saleem','',NULL,'',NULL,'Sobedar Muhammad Amin Khan',NULL,NULL,NULL,'0334-3359963',NULL,'North Nazimabad','House# B-230 Block D North Nazimabad',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(322,1,'322','Muhammad Waseem','',NULL,'',NULL,'Sobedar Muhammad Amin Khan',NULL,NULL,NULL,'0334-0319154',NULL,'North Nazimabad','House# B-230 Block D North Nazimabad',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(323,1,'323','Muhammad Nadeem','',NULL,'',NULL,'Sobedar Muhammad Amin Khan',NULL,NULL,NULL,'0336-2765939',NULL,'North Nazimabad','House# B-230 Block D North Nazimabad',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(324,1,'324','Farrukh Naeem','',NULL,'',NULL,'Muhammad Naeem Khan',NULL,NULL,NULL,'0321-2099888',NULL,'North Nazimabad','House# B-230 Block D North Nazimabad',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(325,1,'325','Muhammad Shoaib','',NULL,'',NULL,'Abdul Aziz Khan',NULL,NULL,NULL,'0300-8249730',NULL,'North Nazimabad','A-409 Block C North Nazimabad Haideri',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(326,1,'326','Ghulam Jilani ','',NULL,'',NULL,'Major Muhammad Amin Khan',NULL,NULL,NULL,'0300-8277901',NULL,'North Nazimabad','A-413 Block C North Nazimabad Haideri',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(327,1,'327','Muhammad Khalil','',NULL,'',NULL,'Muhammad Shafi Khan',NULL,NULL,NULL,'0345-9257888',NULL,'North Nazimabad','H# B 415/3 Sector 11 E New Fatima Jinnah Colony No',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(328,1,'328','Eng Muhammad Usman ','',NULL,'',NULL,'Muhammad Shafi Khan',NULL,NULL,NULL,'0333-2111899',NULL,'North Nazimabad','A-272 Block# I North Nazimabad',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(329,1,'329','Imran Arshad ','',NULL,'',NULL,'         Arshad Ali Khan',NULL,NULL,NULL,'0333-2485896',NULL,'North Nazimabad','A-231 First Floor Block# A North Nazimabad ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(330,1,'330','Asif Iqbal ','',NULL,'',NULL,'Qurban Ali',NULL,NULL,NULL,'0300-3331559',NULL,'Shah Faisal Colony','E-31 Rafi Mention Shah Faisal',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(331,1,'331','Abdul Aziz','',NULL,'',NULL,'Farzand Ali',NULL,NULL,NULL,'0333-2182332',NULL,'Shah Faisal Colony','E-31 Rafi Mention Shah Faisal',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(332,1,'332','Danish Ahmed','',NULL,'',NULL,'Muhammad Riaz',NULL,NULL,NULL,'0335-2412625',NULL,'Shah Faisal Colony','E-31 Rafi Mention Shah Faisal',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(333,1,'333','Ayyaz Ahmed','',NULL,'',NULL,'Muhammad Ilyas',NULL,NULL,NULL,'0300-3283184',NULL,'Shah Faisal Colony','E-31 Rafi Mention Shah Faisal',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(334,1,'334','Imran Usman','',NULL,'',NULL,'Muhamamd Usman',NULL,NULL,NULL,'0331-280303',NULL,'Shah Faisal Colony','Shah Faisal Alfalah',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(335,1,'335','Nisar Ahmed','',NULL,'',NULL,'',NULL,NULL,NULL,'0300-2060742',NULL,'Shah Faisal Colony','CA-27 Shah Faisal Alfallah',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(336,1,'336','Muhammad Imran ','',NULL,'',NULL,'Farman Ali',NULL,NULL,NULL,'0345-3314491',NULL,'Shah Faisal Colony','CA-27 Shah Faisal Alfallah',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(337,1,'337','Zulfiquar Ali','',NULL,'',NULL,'Murad Ali',NULL,NULL,NULL,'0307-2999925',NULL,'Shah Faisal Colony','Saleem Apartments Shah Faisal Alfallah',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(338,1,'338','Shoukat Ali Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0334-3622640',NULL,'Shah Faisal Colony','Shah Faisal Alfalah',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(339,1,'339','Faisal Shoukat','',NULL,'',NULL,'Shoukat Ali Khan',NULL,NULL,NULL,'0315-8879390',NULL,'Shah Faisal Colony','Shah Faisal Alfalah',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(340,1,'340','Naseer Ahmed','',NULL,'',NULL,'Muhammad Sharif',NULL,NULL,NULL,'0333-2532570',NULL,'Shah Faisal Colony','Shah Faisal Alfalah',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(341,1,'341','Muhammad Naveed','',NULL,'',NULL,'Umeed Ali Khan',NULL,NULL,NULL,'',NULL,'Shah Faisal Colony','Shah Faisal Alfalah',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(342,1,'342','Muhammad Sharif Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'Shah Faisal Colony','Green Town Shah Faisal',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(343,1,'343','Engr. Ali Muhammad ','',NULL,'',NULL,'Inteezar Ali Khan',NULL,NULL,NULL,'0334-3450746',NULL,'Shah Faisal Colony','Green Town Shah Faisal',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(344,1,'344','Adil Inteezar','',NULL,'',NULL,'Inteezar Ali Khan',NULL,NULL,NULL,'0332-3820576',NULL,'Shah Faisal Colony','Green Town Shah Faisal',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(345,1,'345','Engr. Abid Ali','',NULL,'',NULL,'Inteezar Ali Khan',NULL,NULL,NULL,'0334-3450746',NULL,'Shah Faisal Colony','Green Town Shah Faisal',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(346,1,'346','Muhammad Rizwan','',NULL,'',NULL,'Jaffer Ali Khan',NULL,NULL,NULL,'',NULL,'Shah Faisal Colony','Green Town Shah Faisal',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(347,1,'347','Muhammad Saleem Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'Shah Faisal Colony','Green Town Shah Faisal',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(348,1,'348','Asghar Ali Khan','',NULL,'',NULL,'Jaffer Ali Khan',NULL,NULL,NULL,'0333-3741451',NULL,'Shah Faisal Colony','Green Town Shah Faisal',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(349,1,'349','Muhammad Naeem','',NULL,'',NULL,'Abdul Qayoom',NULL,NULL,NULL,'0300-2319931',NULL,'Shah Faisal Colony','Green Town Shah Faisal',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(350,1,'350','Javed Ali','',NULL,'',NULL,'Ali Sher Khan',NULL,NULL,NULL,'0335-2087692',NULL,'Shah Faisal Colony','Green Town Shah Faisal',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(351,1,'351','Muhammad Shafiq','',NULL,'',NULL,'Istiaque Ali',NULL,NULL,NULL,'0333-2197090',NULL,'Shah Faisal Colony','Green Town Shah Faisal',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(352,1,'352','Muhammad Ashfaq','',NULL,'',NULL,'Istiaque Ali',NULL,NULL,NULL,'0333-2337034',NULL,'Shah Faisal Colony','Green Town Shah Faisal',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(353,1,'353','Nadeem Maqsood ','',NULL,'',NULL,'Maqsood Ali',NULL,NULL,NULL,'0322-3618551',NULL,'Shah Faisal Colony','Green Town Shah Faisal',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(354,1,'354','Nafees Maqsood','',NULL,'',NULL,'Maqsood Ali',NULL,NULL,NULL,'0301-2233467',NULL,'Shah Faisal Colony','Green Town Shah Faisal',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(355,1,'355','Sajjid Jameel','',NULL,'',NULL,'Prof. Jameel Ahmed',NULL,NULL,NULL,'0333-3772248',NULL,'Shah Faisal Colony','H#64 Street#2 Green Town Shah faisal Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(356,1,'356','Engr. Faisal Saleem','',NULL,'',NULL,'Muhammad Saleem',NULL,NULL,NULL,'0300-3323457',NULL,'Shah Faisal Colony','Street # 4 Green Town Shah Faisal',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(357,1,'357','Engr. Shariq Saleem','',NULL,'',NULL,'Muhammad Saleem',NULL,NULL,NULL,'0333-2983107',NULL,'Shah Faisal Colony','Green Town Shah Faisal',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(358,1,'358','Maqsood Ali Khan','',NULL,'',NULL,'Babu Zaffar Ali Khan',NULL,NULL,NULL,'0301-2233467',NULL,'Shah Faisal Colony','Green Town Shah Faisal',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(359,1,'359','Istiaque Ali Khan','',NULL,'',NULL,'Babu Zaffar Ali Khan',NULL,NULL,NULL,'0333-3776403',NULL,'Shah Faisal Colony','Green Town Shah Faisal',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(360,1,'360','Riasat Ali Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'Shah Faisal Colony','Green Town Shah Faisal',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(361,1,'361','Nisar Ali ','',NULL,'',NULL,'Hoshiyar Ali Khan',NULL,NULL,NULL,'0333-1370050',NULL,'Shah Faisal Colony','Green Town Shah Faisal',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(362,1,'362','Asghar Ali','',NULL,'',NULL,'Jafer Ali Khan',NULL,NULL,NULL,'0333-3741451',NULL,'Shah Faisal Colony','G-127  Green Town Shah Faisal Colony 1 Natha Khan ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(363,1,'363','Abbas Ali','',NULL,'',NULL,'Asghar Ali Khan',NULL,NULL,NULL,'',NULL,'Shah Faisal Colony','G-127  Green Town Shah Faisal Colony 1 Natha Khan ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(364,1,'364','Waqas Ali','',NULL,'',NULL,'Asghar Ali Khan',NULL,NULL,NULL,'',NULL,'Shah Faisal Colony','G-127  Green Town Shah Faisal Colony 1 Natha Khan ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(365,1,'365','Ali Ahmed  ','',NULL,'',NULL,'Muhammad Iqbal',NULL,NULL,NULL,'0342-2751158',NULL,'Shah Faisal Colony','Sadat Colony Drigh Road Shah Faisal Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(366,1,'366','Nayamat Ali ','',NULL,'',NULL,'Muhammad Iqbal Khan',NULL,NULL,NULL,'0333-3369708',NULL,'Shah Faisal Colony','Sadat Colony Drigh Road Shah Faisal Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(367,1,'367','Imran Khan ','',NULL,'',NULL,'Muhammad Shoakat Khan',NULL,NULL,NULL,'0302-2179224',NULL,'Shah Faisal Colony','Sadat Colony Drigh Road Shah Faisal Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(368,1,'368','Ali Hassan','',NULL,'',NULL,'Muhammad Iqbal Khan',NULL,NULL,NULL,'0306-9459659',NULL,'Shah Faisal Colony','Sadat Colony Drigh Road Shah Faisal Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(369,1,'369','Sajid Jamil ','',NULL,'',NULL,'Jamil Ahmed Khan',NULL,NULL,NULL,'0333-372248',NULL,'Shah Faisal Colony','MC -64   Street 02 Green Town ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(370,1,'370','Col. Niaz Muhammad','',NULL,'',NULL,'Chiragh Ali Khan',NULL,NULL,NULL,'0343-2223250',NULL,'Askari','39-G Askari 3 Cantt. Station',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(371,1,'371','Nawab Shahzad Ali','',NULL,'',NULL,'Aleemuddin Khan',NULL,NULL,NULL,'0303-2515616',NULL,'Askari','23-B Askari 3 Cantt. Station',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(372,1,'372','Ghulm Dastageer','',NULL,'',NULL,'Shamshad Ali Khan',NULL,NULL,NULL,'0332-3532433',NULL,'Askari','23-H Askari 3 Cantt. Station',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(373,1,'373','Lt.Cdr. Ghulam Qadir','',NULL,'',NULL,'Shamshad Ali Khan',NULL,NULL,NULL,'0331-4511225',NULL,'Askari','23-H Askari 3 Cantt. Station',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(374,1,'374','Major Noor Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'021-35661259',NULL,'Askari','46-B Askari 3 Cantt. Station',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(375,1,'375','Moaz Ahmed','',NULL,'',NULL,'Major Noor Khan',NULL,NULL,NULL,'0300-2697678',NULL,'Askari','46-B Askari 3 Cantt. Station',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(376,1,'376','Muhammad Younus','',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'Askari','11-B Askari 3 Cantt. Station',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(377,1,'377','Azad Ali Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'Askari','53-G Askari 3 Cantt. Station',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(378,1,'378','Muhammad Rizwan','',NULL,'',NULL,'Engr. Khifayat Ali Khan',NULL,NULL,NULL,'0321-8239639',NULL,'Askari','Askari 4 Block 102 Flat E',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(379,1,'379','Javed Akber','',NULL,'',NULL,'Akber Ali Khan',NULL,NULL,NULL,'021-34660834',NULL,'Askari','Askari 4 Block 101 Flat H',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(380,1,'380','Col. Sabir Usman','',NULL,'',NULL,'Usman Khan',NULL,NULL,NULL,'0333-2500160',NULL,'Askari','Askari 4 Block 141 Flat B',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(381,1,'381','Sarfaraz Ahmed','',NULL,'',NULL,'Muhammad Hussain Khan',NULL,NULL,NULL,'0300-9258259',NULL,'Askari','Askari 4 Block 101 Flat F',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(382,1,'382','Major Intesar Ahmed','',NULL,'',NULL,'',NULL,NULL,NULL,'0300-2073417',NULL,'Askari','Askari 4 Block ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(383,1,'383','Khuram Abbas','',NULL,'',NULL,'',NULL,NULL,NULL,'0333-2377760',NULL,'Askari','Askari 4 Block ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(384,1,'384','Parveez Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'Askari','Banglow 163 E 10 A Street  2nd last Right Askari 4',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(385,1,'385','Irfan Ali','',NULL,'',NULL,'Himayat Ali Khan',NULL,NULL,NULL,'0333-2351650',NULL,'Bufferzone','Baforzone',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(386,1,'386','Imran Ali','',NULL,'',NULL,'Himayat Ali Khan',NULL,NULL,NULL,'0331-7513207',NULL,'Bufferzone','Baforzone',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(387,1,'387','Muhammad Aslam ','',NULL,'',NULL,'Himayat Ali Khan',NULL,NULL,NULL,'0332-2613097',NULL,'Bufferzone','Baforzone',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(388,1,'388','Kamran Al','',NULL,'',NULL,'Himayat Ali Khan',NULL,NULL,NULL,'0345-2183612',NULL,'Bufferzone','Baforzone',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(389,1,'389','Muhammad Shafeeq','',NULL,'',NULL,'Shoukat Ali',NULL,NULL,NULL,'0333-3152019',NULL,'Bufferzone','Baforzone',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(390,1,'390','Shahbaz Ali','',NULL,'',NULL,'Shoukat Ali',NULL,NULL,NULL,'0333-3152018',NULL,'Bufferzone','Baforzone',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(391,1,'391','Tahir Parvez Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0300-2231808',NULL,'Bufferzone','Baforzone',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(392,1,'392','Muhammad Aktar','',NULL,'',NULL,'Yaseen Khan',NULL,NULL,NULL,'0333-2462432',NULL,'Bufferzone','TNT Officer colony Jinnah Hospital',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(393,1,'393','Muhammad Waqas','',NULL,'',NULL,'Muhammad Akhtar',NULL,NULL,NULL,'0333-2462432',NULL,'Bufferzone','TNT Officer colony Jinnah Hospital',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(394,1,'394','Mazhar Hussain','',NULL,'',NULL,'Muhammad Hussain',NULL,NULL,NULL,'0321-8275396',NULL,'Bufferzone','S-30 DHA Phase 2',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(395,1,'395','Mehmood Ali','',NULL,'',NULL,'Abdul Aziz Khan',NULL,NULL,NULL,'0333-2381952',NULL,'Bufferzone','R 331 Sector 4 Baforzone',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(396,1,'396','Abdul Sattar Khan','',NULL,'',NULL,'Abdul Karim Khan',NULL,NULL,NULL,'0332-7871268',NULL,'Bufferzone','Sector 4 Baforzone',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(397,1,'397','Engr. Shams Sattar','',NULL,'',NULL,'Abdul Sattar Khan',NULL,NULL,NULL,'0333-6660318',NULL,'Bufferzone','Sector 4 Baforzone',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(398,1,'398','Engr. Amman Sattar','',NULL,'',NULL,'Abdul Sattar Khan',NULL,NULL,NULL,'0333-4969102',NULL,'Bufferzone','Sector 4 Baforzone',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(399,1,'399','Muhammad Usman','',NULL,'',NULL,'Wahid Ali Khan',NULL,NULL,NULL,'0334-3501210',NULL,'Bufferzone','R-860 Sector 15 A3 Baforzone',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(400,1,'400','Muhammad Akber','',NULL,'',NULL,'Muhammad Usman',NULL,NULL,NULL,'0345-2126236',NULL,'Bufferzone','R-860 Sector 15 A3 Baforzone',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(401,1,'401','Asif Usman','',NULL,'',NULL,'Muhammad Usman',NULL,NULL,NULL,'0333-1583394',NULL,'Bufferzone','R-860 Sector 15 A3 Baforzone',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(402,1,'402','Muzaffar Husain Khan (HBFC)','',NULL,'',NULL,'',NULL,NULL,NULL,'0333-2252881',NULL,'Bufferzone','Baforzone',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(403,1,'403','Engr. Haji Zulqurnen ','',NULL,'',NULL,'Maqsood Ali Khan',NULL,NULL,NULL,'0334-1283394',NULL,'Bufferzone','R-315 Sector 4 Baforzone',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(404,1,'404','Muhammad Mustaq','',NULL,'',NULL,'Muhammad Ilyas',NULL,NULL,NULL,'0300-2891459',NULL,'Bufferzone','R 302 Sector 15A5 Baforzone',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(405,1,'405','Muhammad Aslam ','',NULL,'',NULL,'Abdul Rahim Khan',NULL,NULL,NULL,'0334-3041245',NULL,'Bufferzone','Flat# E3 Setalite Colony TNT Baforzone',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(406,1,'406','Muhammad Khalid','',NULL,'',NULL,'Karam Sher Khan',NULL,NULL,NULL,'0300-9234506',NULL,'Bufferzone','H# E-3 Sector 15/A/1 Baforzone',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(407,1,'407','Ghulzar Ahmed','',NULL,'',NULL,'Mumtaz Ali',NULL,NULL,NULL,'0300-2399446',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(408,1,'408','Bilal Liaquat','',NULL,'',NULL,'Liaquat Ali',NULL,NULL,NULL,'0300-2489875',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(409,1,'409','Muhammad Idrees','',NULL,'',NULL,'Fakhar Ali',NULL,NULL,NULL,'0333-0230081',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(410,1,'410','Waseem Ahmed','',NULL,'',NULL,'Nisar Ahmed',NULL,NULL,NULL,'0333-3880422',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(411,1,'411','Haji Ghulam Mustafa','',NULL,'',NULL,'Peero Khan',NULL,NULL,NULL,'0345-2994349',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(412,1,'412','Imran Mustafa','',NULL,'',NULL,'Ghulam Mustafa',NULL,NULL,NULL,'0345-2994349',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(413,1,'413','Asif Ali','',NULL,'',NULL,'Sarwar Ali',NULL,NULL,NULL,'0315-2037646',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(414,1,'414','Riaz Ahmed','',NULL,'',NULL,'Umeed Ali',NULL,NULL,NULL,'0300-9294269',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(415,1,'415','Shahid Hidayat','',NULL,'',NULL,'Hidayat Ali',NULL,NULL,NULL,'0334-3344998',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(416,1,'416','Muhammad Naeem','',NULL,'',NULL,'Bhawer Ali',NULL,NULL,NULL,'0334-3914150',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(417,1,'417','Engr. Noman Shabeer','',NULL,'',NULL,'Shabir Ahmed',NULL,NULL,NULL,'0332-9638215',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(418,1,'418','Muhammad Ayoub','',NULL,'',NULL,'Khursheed Ali',NULL,NULL,NULL,'0345-8085386',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(419,1,'419','Muhammad Yasir','',NULL,'',NULL,'Khifayat Ali',NULL,NULL,NULL,'0341-0026075',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(420,1,'420','Laiq Yameen','',NULL,'',NULL,'Yameen Ali',NULL,NULL,NULL,'0336-0355791',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(421,1,'421','Muhammad Yaqoob','',NULL,'',NULL,'Rehmat Ali',NULL,NULL,NULL,'0333-3494579',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(422,1,'422','Shafqat Ali','',NULL,'',NULL,'Liaquat Ali',NULL,NULL,NULL,'0300-3377164',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(423,1,'423','Muhammad Ikram','',NULL,'',NULL,'Muhammad Yaseen',NULL,NULL,NULL,'0303-2940863',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(424,1,'424','Shabir Ahmed','',NULL,'',NULL,'Yousuf Ali',NULL,NULL,NULL,'0302-484552',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(425,1,'425','Sarfaraz Nawaz','',NULL,'',NULL,'Riasat Ali',NULL,NULL,NULL,'0333-2359857',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(426,1,'426','Zahid Mehmood','',NULL,'',NULL,'Mehmood Ali',NULL,NULL,NULL,'0334-9490800',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(427,1,'427','Hakim Ali','',NULL,'',NULL,'Muqarab Khan',NULL,NULL,NULL,'0300-2102260',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(428,1,'428','Zulfiquar Ali','',NULL,'',NULL,'Wahid Ali ',NULL,NULL,NULL,'0303-2197525',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(429,1,'429','Muhammad Ayoub','',NULL,'',NULL,'Yamin Khan',NULL,NULL,NULL,'0321-3872145',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(430,1,'430','Muhammad Asif','',NULL,'',NULL,'Muhammad Yousuf',NULL,NULL,NULL,'0332-2920965',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(431,1,'431','Maqsood Ali','',NULL,'',NULL,'Mustaque Ali',NULL,NULL,NULL,'0345-5469906',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(432,1,'432','Abdul Jabbar','',NULL,'',NULL,'Muhammad Amin',NULL,NULL,NULL,'0323-3286886',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(433,1,'433','Muhammad Arshad','',NULL,'',NULL,'Abdul Waheed',NULL,NULL,NULL,'0301-3989500',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(434,1,'434','Abdul Sattar','',NULL,'',NULL,'Ali Sher Khan',NULL,NULL,NULL,'0345-2676982',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(435,1,'435','Muhammad Asif Kareem','',NULL,'',NULL,'Shoukat Ali Khan',NULL,NULL,NULL,'0333-7711051',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(436,1,'436','Muhammad Saleem','',NULL,'',NULL,'Bahnoor Ali Khan',NULL,NULL,NULL,'0321-2971876',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(437,1,'437','Shakeel Ahmed','',NULL,'',NULL,'Nisar Ahmed',NULL,NULL,NULL,'0336-2744608',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(438,1,'438','Muhammad Tariq','',NULL,'',NULL,'Abdul Hakim',NULL,NULL,NULL,'0333-2829811',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(439,1,'439','Muhammad Saleem','',NULL,'',NULL,'Yaseem Khan',NULL,NULL,NULL,'0334-2554607',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(440,1,'440','Muhammad Akram','',NULL,'',NULL,'Jeeon Khan',NULL,NULL,NULL,'0301-3287207',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(441,1,'441','Ali Bahadur','',NULL,'',NULL,'Hidayat Ali Khan',NULL,NULL,NULL,'0346-2429566',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(442,1,'442','Muhammad Saleem','',NULL,'',NULL,'Yaseen Khan',NULL,NULL,NULL,'0300-2547893',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(443,1,'443','Muhammad Zahid','',NULL,'',NULL,'Ayoub Ali',NULL,NULL,NULL,'0315-8617716',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(444,1,'444','Muhammad Javed','',NULL,'',NULL,'Munshi Khan',NULL,NULL,NULL,'0345-1182036',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(445,1,'445','Hidayat Ali','',NULL,'',NULL,'Muhammad Idress',NULL,NULL,NULL,'0332-3047655',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(446,1,'446','Amjad Iqbal','',NULL,'',NULL,'Imtiaz Ali',NULL,NULL,NULL,'0300-2933443',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(447,1,'447','Muhammad Rafiq','',NULL,'',NULL,'Abdul Razzaq Khan',NULL,NULL,NULL,'0321-2168252',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(448,1,'448','Abdul Manan Khan','',NULL,'',NULL,'Abdul Razzaq Khan',NULL,NULL,NULL,'0335-3481612',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(449,1,'449','Muhammad Shafiq','',NULL,'',NULL,'Yamin Khan',NULL,NULL,NULL,'0336-0355791',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(450,1,'450','Muhammad Danish','',NULL,'',NULL,'Aslam Khan',NULL,NULL,NULL,'0345-2279482',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(451,1,'451','Zakir Husain','',NULL,'',NULL,'Liaquat Ali',NULL,NULL,NULL,'0302-8289410',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(452,1,'452','Abdul Rehman','',NULL,'',NULL,'Jeeon Khan',NULL,NULL,NULL,'0333-3539204',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(453,1,'453','Abdul Raheem','',NULL,'',NULL,'Jeeon Khan',NULL,NULL,NULL,'0334-3918705',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(454,1,'454','Haq Nawaz','',NULL,'',NULL,'Muhammad Hasan',NULL,NULL,NULL,'0345-1182829',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(455,1,'455','Faheem Ahmed','',NULL,'',NULL,'Khursheed Ali',NULL,NULL,NULL,'0333-2188430',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(456,1,'456','Muhammad Rafiq','',NULL,'',NULL,'Muhammad Hanif',NULL,NULL,NULL,'0311-2444868',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(457,1,'457','Imdad Ali','',NULL,'',NULL,'Manho Khan',NULL,NULL,NULL,'0334-2185183',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(458,1,'458','Muhammad Iqbal','',NULL,'',NULL,'Yamin Khan',NULL,NULL,NULL,'0308-2090150',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(459,1,'459','Muhammad Asif','',NULL,'',NULL,'Muhammad Younus',NULL,NULL,NULL,'0345-6021324',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(460,1,'460','Mehsher Ali','',NULL,'',NULL,'Muhammad Maqsood',NULL,NULL,NULL,'0341-1129077',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(461,1,'461','Abdul Hafeez','',NULL,'',NULL,'Nizam Khan',NULL,NULL,NULL,'0334-1669452',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(462,1,'462','Muhammad Mustafa','',NULL,'',NULL,'Muhammad Rafiq',NULL,NULL,NULL,'0301-2545657',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(463,1,'463','Javed','',NULL,'',NULL,'Yousuf Ali',NULL,NULL,NULL,'0321-2273296',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(464,1,'464','Muhammad Rizwan','',NULL,'',NULL,'Muhammad Younus',NULL,NULL,NULL,'0348-2224469',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(465,1,'465','Majid Ali','',NULL,'',NULL,'Shoukat Ali',NULL,NULL,NULL,'0306-3441486',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(466,1,'466','Abdul Qayoom ','',NULL,'',NULL,'Yasin Ali',NULL,NULL,NULL,'0334-3043705',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(467,1,'467','Himayat Ali','',NULL,'',NULL,'Hashim Ali',NULL,NULL,NULL,'0342-2299083',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(468,1,'468','Liaquat Ali Khan','',NULL,'',NULL,'Muhammad Yousuf',NULL,NULL,NULL,'0344-2622202',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(469,1,'469','Riasat Ali Khan','',NULL,'',NULL,'Hashim Ali',NULL,NULL,NULL,'0333-2118803',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(470,1,'470','Muhammad Tariq','',NULL,'',NULL,'Muhammad Yamin',NULL,NULL,NULL,'0322-3906275',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(471,1,'471','Iftikhar Ahmed','',NULL,'',NULL,'Moen-ud-din',NULL,NULL,NULL,'0321-2946088',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(472,1,'472','Ashfaque Ahmed ','',NULL,'',NULL,'Ishtiaque Ahmed',NULL,NULL,NULL,'0346-2164554',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(473,1,'473','Mehtab Ali','',NULL,'',NULL,'Mushtaq Ali',NULL,NULL,NULL,'0345-2477688',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(474,1,'474','Shamsher Ali','',NULL,'',NULL,'Qasim Ali',NULL,NULL,NULL,'0301-3325948',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(475,1,'475','Muhammad Akhter','',NULL,'',NULL,'Atta Muhammad ',NULL,NULL,NULL,'0333-2154099',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(476,1,'476','Zulfiquar ','',NULL,'',NULL,'Ahmed Ali',NULL,NULL,NULL,'0344-2430334',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(477,1,'477','Muhammad Saleem','',NULL,'',NULL,'Bashir Khan',NULL,NULL,NULL,'0333-2172507',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(478,1,'478','Munawar Ali','',NULL,'',NULL,'Mumtaz Ali',NULL,NULL,NULL,'0336-8220546',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(479,1,'479','Muhammad Ismail','',NULL,'',NULL,'Inayat Ali',NULL,NULL,NULL,'0332-6361376',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(480,1,'480','Javad Ahmed','',NULL,'',NULL,'Zulfiquar Ali',NULL,NULL,NULL,'0331-2567354',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(481,1,'481','Niaz Muhammad ','',NULL,'',NULL,'Bahao Khan',NULL,NULL,NULL,'',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(482,1,'482','Muhammad Nadeem','',NULL,'',NULL,'Yamin Khan',NULL,NULL,NULL,'0345-0310474',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(483,1,'483','Abdul Jabbar','',NULL,'',NULL,'Abdul Qadir',NULL,NULL,NULL,'0306-2787443',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(484,1,'484','Muhammad Tahir','',NULL,'',NULL,'Bahnor Khan',NULL,NULL,NULL,'0312-3296553',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(485,1,'485','Zulfiquar ','',NULL,'',NULL,'Abdul Qadir Khan',NULL,NULL,NULL,'0321-7252726',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(486,1,'486','Imran ','',NULL,'',NULL,'Qadir Ali',NULL,NULL,NULL,'0341-2055540',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(487,1,'487','Muhammad Shakir','',NULL,'',NULL,'Muhammad Saleem',NULL,NULL,NULL,'0331-2200345',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(488,1,'488','Ali Hasan','',NULL,'',NULL,'Muhammad Aslam',NULL,NULL,NULL,'0311-3185972',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(489,1,'489','Muhammad Jaffer Khan','',NULL,'',NULL,'Shafi Khan',NULL,NULL,NULL,'0315-2343236',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(490,1,'490','Mansoor Ali','',NULL,'',NULL,'Muhammad Iqbal',NULL,NULL,NULL,'0332-2164570',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(491,1,'491','Abdul Majeed','',NULL,'',NULL,'Ahmed Khan',NULL,NULL,NULL,'0348-8331284',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(492,1,'492','Liaquat Ali Khan','',NULL,'',NULL,'Inayat Ali',NULL,NULL,NULL,'',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(493,1,'493','Muhammad Ayoub','',NULL,'',NULL,'Inayat Ali',NULL,NULL,NULL,'0333-2843422',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(494,1,'494','Jaffer Ali','',NULL,'',NULL,'Daood Ali',NULL,NULL,NULL,'0321-8907768',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(495,1,'495','Muhammad Shamim','',NULL,'',NULL,'Asad Ali',NULL,NULL,NULL,'0332-2974998',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(496,1,'496','Amir Ali','',NULL,'',NULL,'Sarwer Ali',NULL,NULL,NULL,'0336-3703306',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(497,1,'497','Muhammad Rafiq','',NULL,'',NULL,'Noor Muhammad ',NULL,NULL,NULL,'0322-3344214',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(498,1,'498','Imran','',NULL,'',NULL,'Shamshad Ali',NULL,NULL,NULL,'',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(499,1,'499','Khan Muhammad ','',NULL,'',NULL,'Niaz Muhammad ',NULL,NULL,NULL,'0313-8276304',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(500,1,'500','Iftikhar Ahmed','',NULL,'',NULL,'Hidayat Ali',NULL,NULL,NULL,'0335-2034216',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(501,1,'501','Shahzad Ali','',NULL,'',NULL,'Khursheed Ali',NULL,NULL,NULL,'0302-2013150',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(502,1,'502','Muhammad Rashid','',NULL,'',NULL,'Qasim Ali',NULL,NULL,NULL,'0336-2526655',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(503,1,'503','Muhammad Shoail','',NULL,'',NULL,'Riasat Ali',NULL,NULL,NULL,'0332-2830717',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(504,1,'504','Faisal Akbar','',NULL,'',NULL,'Akber Ali',NULL,NULL,NULL,'0301-3378859',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(505,1,'505','Muhammad Asfar','',NULL,'',NULL,'Yaseen Khan',NULL,NULL,NULL,'0346-3519042',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(506,1,'506','Rizwan ','',NULL,'',NULL,'Farman Ali',NULL,NULL,NULL,'0314-2091190',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(507,1,'507','Muhammad Faheem','',NULL,'',NULL,'Muhammad Inayat',NULL,NULL,NULL,'0321-9284953',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(508,1,'508','Abdul Ghaffar ','',NULL,'',NULL,'Inayat Ali',NULL,NULL,NULL,'0344-8324785',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(509,1,'509','Muhammad Shafiq','',NULL,'',NULL,'Hashim Ali',NULL,NULL,NULL,'0300-2301624',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(510,1,'510','Mrs. Ayoub Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(511,1,'511','Zulfiquar Ali','',NULL,'',NULL,'Sawat Ali',NULL,NULL,NULL,'0332-8369090',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(512,1,'512','Aijaz Ali','',NULL,'',NULL,'Karam Sher Khan',NULL,NULL,NULL,'0308-2094515',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(513,1,'513','Shahid Kareem','',NULL,'',NULL,'Shoukat Ali',NULL,NULL,NULL,'0306-7874760',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(514,1,'514','Faisal Khan','',NULL,'',NULL,'Liaquat Ali',NULL,NULL,NULL,'0334-2804655',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(515,1,'515','Sardar Ahmed','',NULL,'',NULL,'Abdullah Khan',NULL,NULL,NULL,'0333-3183876',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(516,1,'516','Khan Muhammad ','',NULL,'',NULL,'Abdullah Khan',NULL,NULL,NULL,'0345-2456349',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(517,1,'517','Abdul Qayoom ','',NULL,'',NULL,'Nazar Muhammad Khan',NULL,NULL,NULL,'0333-2102159',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(518,1,'518','Shafiq Ahmed','',NULL,'',NULL,'Yaseen Khan',NULL,NULL,NULL,'0347-3081458',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(519,1,'519','Mrs. Toufeeq Ahmed','',NULL,'',NULL,'',NULL,NULL,NULL,'0349-3719859',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(520,1,'520','Muhammad Iqbal','',NULL,'',NULL,'Abdul Kareem',NULL,NULL,NULL,'0336-2298810',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(521,1,'521','Shoukat Ali','',NULL,'',NULL,'Abdullah Khan',NULL,NULL,NULL,'0300-2307314',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(522,1,'522','Muhammad Tufail','',NULL,'',NULL,'Abdul Rehman',NULL,NULL,NULL,'0345-1441828',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(523,1,'523','Muhammad Khalid','',NULL,'',NULL,'Yaseen Khan',NULL,NULL,NULL,'0333-2981810',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(524,1,'524','Sarfaraz Khan','',NULL,'',NULL,'Jaffer Ali Khan',NULL,NULL,NULL,'0321-3262593',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(525,1,'525','Muhammad Zafar','',NULL,'',NULL,'Abdul Wahab Khan',NULL,NULL,NULL,'0333-2119675',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(526,1,'526','Imran Ali Khan','',NULL,'',NULL,'Liaquat Ali',NULL,NULL,NULL,'0348-1292964',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(527,1,'527','Wakeel Ahmed','',NULL,'',NULL,'Abdul Rasheed',NULL,NULL,NULL,'0335-3318189',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(528,1,'528','Kamran Ali','',NULL,'',NULL,'Muhammad Haneed',NULL,NULL,NULL,'0335-2496430',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(529,1,'529','Mubarak Husain','',NULL,'',NULL,'Himayat Ali Khan',NULL,NULL,NULL,'0308-2771775',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(530,1,'530','Muhammad Iqbal','',NULL,'',NULL,'Imam Ali',NULL,NULL,NULL,'0348-2441080',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(531,1,'531','Muhammad Aslam','',NULL,'',NULL,'Bashir Khan',NULL,NULL,NULL,'021-32578786',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(532,1,'532','Nazar Ali','',NULL,'',NULL,'Amin Khan',NULL,NULL,NULL,'0300-3005281',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(533,1,'533','Mansoor Ali','',NULL,'',NULL,'Yousuf Ali',NULL,NULL,NULL,'0347-2803783',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(534,1,'534','Shahzad Ali','',NULL,'',NULL,'Liaquat Ali',NULL,NULL,NULL,'0305-3636829',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(535,1,'535','Shahzad Ali','',NULL,'',NULL,'Shoukat Ali',NULL,NULL,NULL,'0300-2441511',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(536,1,'536','Abdul Jabbar Khan','',NULL,'',NULL,'Ali Sher Khan',NULL,NULL,NULL,'0345-2168041',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(537,1,'537','Prof. Rafiq Ahmed','',NULL,'',NULL,'',NULL,NULL,NULL,'0333-4364311',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(538,1,'538','Sub.Inspector Iqbal Ali','',NULL,'',NULL,'Hayat Muhammad Khan',NULL,NULL,NULL,'0321-2754133',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(539,1,'539','Muhammad Shoail','',NULL,'',NULL,'Liaquat Ali',NULL,NULL,NULL,'0321-2692615',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(540,1,'540','Naveed Ahmed','',NULL,'',NULL,'Bakhs Ullah Khan',NULL,NULL,NULL,'0333-3976131',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(541,1,'541','Irshad Ahmed','',NULL,'',NULL,'Abdul Razaq',NULL,NULL,NULL,'0334-2067865',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(542,1,'542','Riaz Ahmed','',NULL,'',NULL,'Umeed ali',NULL,NULL,NULL,'0300-9294269',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(543,1,'543','Shoukat Ali','',NULL,'',NULL,'Niaz Muhammad ',NULL,NULL,NULL,'0321-2310540',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(544,1,'544','Sarjeel Ahmed','',NULL,'',NULL,'Muhammad Aslam',NULL,NULL,NULL,'0304-2663299',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(545,1,'545','Mohsin Raza','',NULL,'',NULL,'Munwar Ali',NULL,NULL,NULL,'0300-3323015',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(546,1,'546','Sarwar Ali','',NULL,'',NULL,'Yaseen Khan',NULL,NULL,NULL,'0322-3344215',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(547,1,'547','Ashfaque Ahmed ','',NULL,'',NULL,'Yaseen Khan',NULL,NULL,NULL,'0336-2341843',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(548,1,'548','Muhammad Aslam','',NULL,'',NULL,'Muhammad Hashim',NULL,NULL,NULL,'0333-2172504',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(549,1,'549','Muhammad Aslam','',NULL,'',NULL,'Muhammad Yaseen Khan',NULL,NULL,NULL,'0333-2172503',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(550,1,'550','Ateeq Ahmed','',NULL,'',NULL,'Hashim Ali',NULL,NULL,NULL,'0322-2966749',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(551,1,'551','Talha Nabi','',NULL,'',NULL,'Ghulam Nabi',NULL,NULL,NULL,'0333-8362583',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(552,1,'552','Abrar Ahmed','',NULL,'',NULL,'Muhammad Sadiq',NULL,NULL,NULL,'0310-2884978',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(553,1,'553','Muhammad Iqbal','',NULL,'',NULL,'Maqsood Ali Khan',NULL,NULL,NULL,'0321-8245122',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(554,1,'554','Muhammad Aslam','',NULL,'',NULL,'Maqsood Ali Khan',NULL,NULL,NULL,'',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(555,1,'555','Muhammad Tariq','',NULL,'',NULL,'Maqsood Ali Khan',NULL,NULL,NULL,'0300-9211491',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(556,1,'556','Arsalan Ayoub','',NULL,'',NULL,'Muhammad Ayoub',NULL,NULL,NULL,'0333-3169587',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(557,1,'557','Riaz Ahmed','',NULL,'',NULL,'Qasim Ali Khan',NULL,NULL,NULL,'0345-2076604',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(558,1,'558','Sadiq Ali','',NULL,'',NULL,'Yaseen Khan',NULL,NULL,NULL,'0300-3723544',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(559,1,'559','Muhammad Altaf','',NULL,'',NULL,'Yaseen Khan',NULL,NULL,NULL,'0300-2506398',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(560,1,'560','Muhammad Ishaque','',NULL,'',NULL,'Yaseen Khan',NULL,NULL,NULL,'0300-3686466',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(561,1,'561','Muhammad Aslam','',NULL,'',NULL,'Shoukat Ali',NULL,NULL,NULL,'0335-3452707',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(562,1,'562','Muhammad Ilyas','',NULL,'',NULL,'Muhammad Qasim',NULL,NULL,NULL,'0322-3507820',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(563,1,'563','Muhammad Javed Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0300-9275036',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(564,1,'564','Muhammad Khurram ','',NULL,'',NULL,'Nadir Ali',NULL,NULL,NULL,'0333-2990776',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(565,1,'565','Nisar Ahmed ','',NULL,'',NULL,'Abdul Ghaffar Khan',NULL,NULL,NULL,'0334-3014942',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(566,1,'566','Toufeeq Husain','',NULL,'',NULL,'Muhammad Saddiq',NULL,NULL,NULL,'0300-2854668',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(567,1,'567','Shamroz Ali','',NULL,'',NULL,'Muhammad Yaseen',NULL,NULL,NULL,'0303-2915090',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(568,1,'568','Zulfiquar Ahmed','',NULL,'',NULL,'Muhammad Aslam',NULL,NULL,NULL,'0311-3139710',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(569,1,'569','Muhammad Naeem','',NULL,'',NULL,'Umeed Ali Khan',NULL,NULL,NULL,'0346-2637438',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(570,1,'570','Engr. Arif','',NULL,'',NULL,'Hashim Ali',NULL,NULL,NULL,'0301-8273953',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(571,1,'571','Kamran Shabbir','',NULL,'',NULL,'Shabbir Ahmed',NULL,NULL,NULL,'0300-3323623',NULL,'Pak Colony','Pak Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(572,1,'572','Irfan Ali','',NULL,'',NULL,'Usman Ali',NULL,NULL,NULL,'0321-2275137',NULL,'Purana Golimar','Purana Golimar',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(573,1,'573','Muhammad Tanver','',NULL,'',NULL,'Himayat Ali Khan',NULL,NULL,NULL,'0311-2389049',NULL,'Korangi','Korangi 2.5 #',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(574,1,'574','Muhammad Hameed','',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'Korangi','Korangi 2.5 #',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(575,1,'575','Muhammad Khalid','',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'Korangi','Korangi 2.5 #',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(576,1,'576','Muhammad Tahir','',NULL,'',NULL,'Shoukat Ali',NULL,NULL,NULL,'0316-2203321',NULL,'Korangi','Korangi 2.5 #',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(577,1,'577','Muhammad Sabir','',NULL,'',NULL,'Shoukat Ali',NULL,NULL,NULL,'',NULL,'Korangi','Korangi 2.5 #',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(578,1,'578','Liaquat Ali Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'Korangi','Korangi 2.5 #',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(579,1,'579','Muhammad Shahid','',NULL,'',NULL,'Liaquat Ali Khan',NULL,NULL,NULL,'0310-2033081',NULL,'Korangi','Korangi 2.5 #',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(580,1,'580','Haider Ali','',NULL,'',NULL,'Muhammad Ali Khan',NULL,NULL,NULL,'0300-2099468',NULL,'Korangi','Korangi 2.5 #',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(581,1,'581','Sadiq Ali','',NULL,'',NULL,'Raheem Khan',NULL,NULL,NULL,'0300-2653455',NULL,'Korangi','Korangi 2.5 #',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(582,1,'582','Adnan Haider','',NULL,'',NULL,'Haider Ali',NULL,NULL,NULL,'0317-0808011',NULL,'Korangi','Korangi 2.5 #',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(583,1,'583','Manan Haider','',NULL,'',NULL,'Haider Ali',NULL,NULL,NULL,'0300-2099468',NULL,'Korangi','Korangi 2.5 #',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(584,1,'584','Mehboob Ali','',NULL,'',NULL,'Liaquat Ali ',NULL,NULL,NULL,'0300-2528081',NULL,'Korangi','Korangi 2.5 #',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(585,1,'585','Muhammad Ameen Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0315-8475182',NULL,'Korangi','Korangi 2.5 #',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(586,1,'586','Jamshed Ali','',NULL,'',NULL,'Hameed Khan',NULL,NULL,NULL,'',NULL,'Korangi','Korangi 2.5 #',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(587,1,'587','Rasheed Ali','',NULL,'',NULL,'Hameed Khan',NULL,NULL,NULL,'',NULL,'Korangi','Korangi 2.5 #',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(588,1,'588','Mumtaz Ahmed Khan','',NULL,'',NULL,'Phool Muhammad Khan',NULL,NULL,NULL,'0333-3166677',NULL,'Ghulshan-e-Jamal ','R 109 Block D Gulshan-e-Jamal',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(589,1,'589','Sajjid Mumtaz','',NULL,'',NULL,'Mumtaz Ahmed Khan',NULL,NULL,NULL,'0314-2239751',NULL,'Ghulshan-e-Jamal ','R 109 Block D Gulshan-e-Jamal',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(590,1,'590','Advocate Asif Mumtaz','',NULL,'',NULL,'Mumtaz Ahmed Khan',NULL,NULL,NULL,'0333-2633366',NULL,'Ghulshan-e-Jamal ','R 109 Block D Gulshan-e-Jamal',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(591,1,'591','Muhammad Usman','',NULL,'',NULL,'Qasim Ali Khan',NULL,NULL,NULL,'0335-2373288',NULL,'Ghulshan-e-Jamal ','R 43 Block F Gulshan-e-Jamal',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(592,1,'592','Engr. Muhammad Bilal','',NULL,'',NULL,'Muhammad Usman',NULL,NULL,NULL,'0345-2285122',NULL,'Ghulshan-e-Jamal ','R 43 Block F Gulshan-e-Jamal',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(593,1,'593','Engr. Sharjeel ','',NULL,'',NULL,'Muhammad Usman',NULL,NULL,NULL,'0334-3231018',NULL,'Ghulshan-e-Jamal ','R 43 Block F Gulshan-e-Jamal',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(594,1,'594','Engr. Faisal Saeed','',NULL,'',NULL,'Muhammad Saeed',NULL,NULL,NULL,'0332-2723084',NULL,'Ghulshan-e-Jamal ','Gulshan-e-Jamal',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(595,1,'595','Liaquat Ali Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0344-8282777',NULL,'Malir & Model Colony','Malir Model Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(596,1,'596','Muhammad Aslam Khan','',NULL,'',NULL,'Muhammad Idress Khan',NULL,NULL,NULL,'0321-3039969',NULL,'Malir & Model Colony','8/3 Soorti Society Model Colony Malir Check Post#2',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(597,1,'597','Muhammad Akram Khan','',NULL,'',NULL,'Muhammad Idress Khan',NULL,NULL,NULL,'0321-2671863',NULL,'Malir & Model Colony','7C Al-Jamiat Garden ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(598,1,'598','Muhammad Khalid Khan','',NULL,'',NULL,'Muhammad Idress Khan',NULL,NULL,NULL,'0333-2503691',NULL,'Malir & Model Colony','Model Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(599,1,'599','Muhammad Arif Khan','',NULL,'',NULL,'Muhammad Idress Khan',NULL,NULL,NULL,'0333-2093056',NULL,'Malir & Model Colony','Soorti Society Model Colony Malir Check Post#2',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(600,1,'600','Muhammad Tahir Javeed Khan','',NULL,'',NULL,'Captain Mehboob Ali',NULL,NULL,NULL,'0301-2034804',NULL,'Malir & Model Colony','Model Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(601,1,'601','Muhammad Taswer Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0335-0842338',NULL,'Malir & Model Colony','Model Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(602,1,'602','Nasir Ali Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0333-3780868',NULL,'Malir & Model Colony','28/2/3 Street #24 Model Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(603,1,'603','Imran Ali','',NULL,'',NULL,'Nasir Ali Khan',NULL,NULL,NULL,'0333-3780868',NULL,'Malir & Model Colony','28/2/3 Street #24 Model Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(604,1,'604','Major Shoukat Ali','',NULL,'',NULL,'Khursheed Ali Khan',NULL,NULL,NULL,'0304-2759242',NULL,'Malir & Model Colony','Model Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(605,1,'605','Brig. Abdul Waheed','',NULL,'',NULL,'Natho Khan Abdul Hafeez',NULL,NULL,NULL,'',NULL,'Malir & Model Colony','Model Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(606,1,'606','Javed Niaz','',NULL,'',NULL,'Niaz Ahmed',NULL,NULL,NULL,'0321-5515527',NULL,'P.E.C.H.S','57/0 PECHS Near Ambala Bakery ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(607,1,'607','Abid Ali Khan (Silk Bank)','',NULL,'',NULL,'',NULL,NULL,NULL,'0300-3320110',NULL,'P.E.C.H.S','E Market PECHS Near Ambala Bakery',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(608,1,'608','Zulfiquar ','',NULL,'',NULL,'Muhammad Younus Khan',NULL,NULL,NULL,'0300-8218845',NULL,'P.E.C.H.S','Muslimabad Cooperative Housing Society (Islamia Co',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(609,1,'609','Mohsin Zulfiquar','',NULL,'',NULL,'',NULL,NULL,NULL,'0322-8228877',NULL,'P.E.C.H.S','Muslimabad Cooperative Housing Society (Islamia Co',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(610,1,'610','Ameer Hassan','',NULL,'',NULL,'',NULL,NULL,NULL,'0333-3084217',NULL,'P.E.C.H.S','52/Q PECHS Block 2',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(611,1,'611','Ameer Hassan','',NULL,'',NULL,'Muhammad Ilyas Khan',NULL,NULL,NULL,'0333-3084217',NULL,'P.E.C.H.S','House# 52-Q Block#2 P.E.C.H.S karachi ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(612,1,'612','Engr. Afaq Ahmed','',NULL,'',NULL,'Mushtaq Ahmed',NULL,NULL,NULL,'',NULL,'Ghulshan-e-Iqbal','Ghulshan-e-Iqbal Block 6 Nipa Chowrangi',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(613,1,'613','Muhammad Shahid Khan','',NULL,'',NULL,'Ali Sher Khan',NULL,NULL,NULL,'030-2225049',NULL,'Ghulshan-e-Iqbal','Flat # A1 Royal Heights Block B13 ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(614,1,'614','Saifullah Khan','',NULL,'',NULL,'Ali Sher Khan',NULL,NULL,NULL,'0333-3669484',NULL,'Ghulshan-e-Iqbal','Flat # A1 Royal Heights Block B13 ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(615,1,'615','Engr. Muhammad Naveed','',NULL,'',NULL,'Muhammad Aslam Khan',NULL,NULL,NULL,'0300-3480608',NULL,'Ghulshan-e-Iqbal','Flat # A13 Sherein Apartments ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(616,1,'616','Dr. Ghulam Mustafa','',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'Ghulshan-e-Iqbal','Flat # A10 Sherein Apartments ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(617,1,'617','Engr. Abid Mehmood','',NULL,'',NULL,'Muhammad Ilyas',NULL,NULL,NULL,'0332-8065358',NULL,'Ghulshan-e-Iqbal','Flat # AX 34 Ghulshan Ayesha Moti Mehal',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(618,1,'618','Azhar Ali Khan','',NULL,'',NULL,'Hashim Ali Khan',NULL,NULL,NULL,'0333-2942667',NULL,'Ghulshan-e-Iqbal','Flat # AY 36 Ghulshan Ayesha Moti Mehal',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(619,1,'619','Muhammad Asif Khan','',NULL,'',NULL,'Muhammad Qasim Khan',NULL,NULL,NULL,'0332-3693941',NULL,'Ghulshan-e-Iqbal','Flat# 604 Crown Heights Ghulshan-e-Iqbal Block 4',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(620,1,'620','Engr. Muhammad Fasih','',NULL,'',NULL,'Muhammad Asif Khan',NULL,NULL,NULL,'0334-9299940',NULL,'Ghulshan-e-Iqbal','Flat# 604 Crown Heights Ghulshan-e-Iqbal Block 4',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(621,1,'621','Waleed Ahmed ','',NULL,'',NULL,'Muhammad Toufeeq Khan',NULL,NULL,NULL,'0306-3736036',NULL,'Ghulshan-e-Iqbal','Flat# 706 Crown Heights Ghulshan-e-Iqbal Block 4',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(622,1,'622','Shahid Ali Khan','',NULL,'',NULL,'Ishaque Khan',NULL,NULL,NULL,'0321-2252597',NULL,'Ghulshan-e-Iqbal','Flat 202 Al-Amin Tower Ghulshan-e-Iqbal Block 4',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(623,1,'623','Muhammad Shoaib','',NULL,'',NULL,'Willayat Ali Khan',NULL,NULL,NULL,'0300-3249545',NULL,'Ghulshan-e-Iqbal','A 584 Ghulshan-e-Iqbal Block 3 KDA Market',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(624,1,'624','Muhammad Humayoon','',NULL,'',NULL,'Willayat Ali Khan',NULL,NULL,NULL,'0331-3135993',NULL,'Ghulshan-e-Iqbal','A 584 Ghulshan-e-Iqbal Block 3 KDA Market',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(625,1,'625','Zuhaib Khan','',NULL,'',NULL,'Willayat Ali Khan',NULL,NULL,NULL,'0300-3249545',NULL,'Ghulshan-e-Iqbal','A 584 Ghulshan-e-Iqbal Block 3 KDA Market',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(626,1,'626','Muhammad Ilyas','',NULL,'',NULL,'Jan Muhammad Khan',NULL,NULL,NULL,'0300-2427492',NULL,'Ghulshan-e-Iqbal','R 619 Block B 19 Anwer Society FB Area',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(627,1,'627','Ahmer Ilyas','',NULL,'',NULL,'Muhammad Ilyas',NULL,NULL,NULL,'0331-3601184',NULL,'Ghulshan-e-Iqbal','R 619 Block B 19 Anwer Society FB Area',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(628,1,'628','Dr. Ahmed Nawab ','',NULL,'',NULL,'Mushtaq Ahmed Khan',NULL,NULL,NULL,'0333-2399576',NULL,'Ghulshan-e-Iqbal','Ghulshan-e-Iqbal Block 6 Nipa Chowrangi',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(629,1,'629','Dr. Shah Nawaz','',NULL,'',NULL,'Mushtaq Ahmed Khan',NULL,NULL,NULL,'',NULL,'Ghulshan-e-Iqbal','Ghulshan-e-Iqbal Block 6 Nipa Chowrangi',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(630,1,'630','Muhammad Arshad','',NULL,'',NULL,'Jaffer Ali Khan',NULL,NULL,NULL,'0313-2169845',NULL,'Ghulshan-e-Iqbal','Flat# A-302 Shoni View Apartments Ghulsan-e-Iqbal',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(631,1,'631','Sohail Sattar','',NULL,'',NULL,'Abdul Sattar Khan',NULL,NULL,NULL,'0345-2325582',NULL,'Ghulshan-e-Iqbal','Bleez Garden Abu-Al-Asfani Road Ghulshan-e-Iqbal',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(632,1,'632','Muhammad Adnan','',NULL,'',NULL,'Ghulam Nabi Advocate',NULL,NULL,NULL,'0336-0350238',NULL,'Ghulshan-e-Iqbal','Malik Society Scheme 33 Ghulshan-e-Iqbal',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(633,1,'633','Muhammad Umair','',NULL,'',NULL,'Ghulam Nabi Advocate',NULL,NULL,NULL,'0335-8468662',NULL,'Ghulshan-e-Iqbal','Malik Society Scheme 33 Ghulshan-e-Iqbal',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(634,1,'634','Javed Husain','',NULL,'',NULL,'Hidayat Ali Khan',NULL,NULL,NULL,'0300-8249701',NULL,'Ghulshan-e-Iqbal','D-14, Block 17, Gulshan-eIqbal',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(635,1,'635','SHO Aijaz','',NULL,'',NULL,'Muhammad Yaqoob Khan',NULL,NULL,NULL,'0300-2433450',NULL,'Ghulshan-e-Iqbal','Farida Square Gulshan-e-Iqbal',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(636,1,'636','Zaheer Ahmed Khan','',NULL,'',NULL,'Nazar Muhammad Khan',NULL,NULL,NULL,'0333-2138260',NULL,'Ghulshan-e-Iqbal','Farida Square Gulshan-e-Iqbal',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(637,1,'637','Akber Ali Khan','',NULL,'',NULL,'Alahuddin Khan',NULL,NULL,NULL,'021-34967896',NULL,'Ghulshan-e-Iqbal','Farida Square Gulshan-e-Iqbal',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(638,1,'638','Qamar Ali Khan','',NULL,'',NULL,'Akber Ali Khan',NULL,NULL,NULL,'0301-8278353',NULL,'Ghulshan-e-Iqbal','Farida Square Gulshan-e-Iqbal',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(639,1,'639','Shakeel Ahmed','',NULL,'',NULL,'Ahmed Ali Khan',NULL,NULL,NULL,'0333-2247806',NULL,'Ghulshan-e-Iqbal','Farida Square Gulshan-e-Iqbal',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(640,1,'640','Muhammad Aslam Khan','',NULL,'',NULL,'Nazar Muhammad Khan',NULL,NULL,NULL,'0333-2138260',NULL,'Ghulshan-e-Iqbal','D-71, Block 7, Gulshan-e-Iqbal',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(641,1,'641','Mehmood Ali Khan','',NULL,'',NULL,'Bhawaley Khan',NULL,NULL,NULL,'0333-3092811',NULL,'Ghulshan-e-Iqbal','D-20, Block 7, Gulshan-e-Iqbal',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(642,1,'642','Amir Mehmood','',NULL,'',NULL,'Mehmood Ali Khan',NULL,NULL,NULL,'021-34965920',NULL,'Ghulshan-e-Iqbal','D-20, Block 7, Gulshan-e-Iqbal',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(643,1,'643','Engr. Faraz Akhter ','',NULL,'',NULL,'Muhammad Akhter',NULL,NULL,NULL,'0333-1272926',NULL,'Ghulshan-e-Iqbal','L-1722 Gulshan-e-Iqbal Scheme 33',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(644,1,'644','Muhammad Tahir','',NULL,'',NULL,'Muhammad Yaseen Khan',NULL,NULL,NULL,'0333-2825373',NULL,'Ghulshan-e-Iqbal','L-1722 Gulshan-e-Iqbal Scheme 33',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(645,1,'645','Noor Ahmed','',NULL,'',NULL,'Asad Ali Khan',NULL,NULL,NULL,'0334-7372720',NULL,'Ghulshan-e-Iqbal','L 22/80 Gulshan-e-Iqbal Scheme 33',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(646,1,'646','Naveed Ahmed','',NULL,'',NULL,'Noor Ahmed Khan',NULL,NULL,NULL,'0334-7372720',NULL,'Ghulshan-e-Iqbal','L 22/80 Gulshan-e-Iqbal Scheme 33',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(647,1,'647','Mehmood Gaznavi','',NULL,'',NULL,'',NULL,NULL,NULL,'0343-2441990',NULL,'Ghulshan-e-Iqbal','L-1736 Gulshan-e-Iqbal Scheme 33',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(648,1,'648','Muhammad Waseem','',NULL,'',NULL,'Abdul Haq ',NULL,NULL,NULL,'0333-3078090',NULL,'Ghulshan-e-Iqbal','14/A Gulshan-e-Iqbal Scheme 33',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(649,1,'649','Shahid Ali','',NULL,'',NULL,'Muhammad Ali',NULL,NULL,NULL,'0300-2229416',NULL,'Ghulshan-e-Iqbal','L 106 Model Village Ghulshan-e-Iqbal BLK 11',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(650,1,'650','Engr. Hamid Ali','',NULL,'',NULL,'Muhammad Ali',NULL,NULL,NULL,'0300-2405334',NULL,'Ghulshan-e-Iqbal','L 106 Model Village Ghulshan-e-Iqbal BLK 11',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(651,1,'651','Muhammad Adnan','',NULL,'',NULL,'Muhammad Abbas Khan',NULL,NULL,NULL,'0333-1231680',NULL,'Ghulshan-e-Iqbal','Scheme 33',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(652,1,'652','Muhammad Irfan','',NULL,'',NULL,'Muhammad Abbas Khan',NULL,NULL,NULL,'0334-3618079',NULL,'Ghulshan-e-Iqbal','Scheme 33',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(653,1,'653','Muhammad Kashif','',NULL,'',NULL,'Engr. Abdul Sattar Khan',NULL,NULL,NULL,'0333-3202991',NULL,'Ghulshan-e-Iqbal','Gulzar-e-Hijri Scheme 33 Ghulshan',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(654,1,'654','Liaquat Ali','',NULL,'',NULL,'Mushtaq Ahmed',NULL,NULL,NULL,'0332-2288316',NULL,'Ghulshan-e-Iqbal','Ghulshan-e-Iqbal Block 4',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(655,1,'655','Muhammad Safdar Ali','',NULL,'',NULL,'Risaldar Abdul Majeed Khan',NULL,NULL,NULL,'0333-7087714',NULL,'Ghulshan-e-Iqbal','Metrowill III Ghulshan-e-Iqbal',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(656,1,'656','Khuzeema Ali Sher','',NULL,'',NULL,'Ali Sher Khan',NULL,NULL,NULL,'0315-3690490',NULL,'Ghulshan-e-Iqbal','Metrowill III Ghulshan-e-Iqbal',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(657,1,'657','Muhammad Sajid','',NULL,'',NULL,'Risaldar Abdul Majeed Khan',NULL,NULL,NULL,'0333-7087714',NULL,'Ghulshan-e-Iqbal','Metrowill III Ghulshan-e-Iqbal',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(658,1,'658','Muhammad Maqsood Ali Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0332-3488638',NULL,'Ghulshan-e-Iqbal','H# 397 Ghulshan-e-Iqbal Block 4',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(659,1,'659','Matloob Ahmed','',NULL,'',NULL,'Muhammad Yaseen Khan',NULL,NULL,NULL,'0333-3849906',NULL,'Ghulshan-e-Iqbal','Ghulshan-e-Iqbal Yasir Arcade Squad Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(660,1,'660','Abdul Qayoom Khan','',NULL,'',NULL,'Muhammad Yaqoob Khan',NULL,NULL,NULL,'0345-3746837',NULL,'Ghulshan-e-Iqbal','Noman Complex Ghulshan-e-Iqbal 13 D KK Electric St',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(661,1,'661','Engr. Ali Ahmed','',NULL,'',NULL,'Ashiq Ali Khan',NULL,NULL,NULL,'0333-3990626',NULL,'Ghulshan-e-Iqbal','Civic View Hasan Square Ghulshan 13 D',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(662,1,'662','Abid Naseem','',NULL,'',NULL,'Wahid Ali',NULL,NULL,NULL,'0342-2561813',NULL,'Ghulshan-e-Iqbal','Civic View Hasan Square Ghulshan 13 D',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(663,1,'663','Ali Usman','',NULL,'',NULL,'Muhammad Usman',NULL,NULL,NULL,'0333-2113455',NULL,'Ghulshan-e-Iqbal','Civic View Hasan Square Ghulshan 13 D',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(664,1,'664','Engr. Shakeel Ahmed','',NULL,'',NULL,'Shoukat Ali',NULL,NULL,NULL,'0307-2561230',NULL,'Ghulshan-e-Iqbal','Panama Center Ghulshan-e-Iqbal 13 D',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(665,1,'665','Muhammad Nasir','',NULL,'',NULL,'Risaldar Amin Khan',NULL,NULL,NULL,'0333-3510101',NULL,'Ghulshan-e-Iqbal','Waseem Bagh Ghulshan-e-Iqbal 13 D',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(666,1,'666','Engr. Auranzaib','',NULL,'',NULL,'Nasir Ali Khan',NULL,NULL,NULL,'0333-3471154',NULL,'Ghulshan-e-Iqbal','Waseem Bagh Ghulshan-e-Iqbal 13 D',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(667,1,'667','Waqar Aslam','',NULL,'',NULL,'Muhammad Aslam Khan',NULL,NULL,NULL,'0312-2763785',NULL,'Ghulshan-e-Iqbal','Hina Teris Ghulshan-e-Iqbal 13 D',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(668,1,'668','Niaz Ahmed','',NULL,'',NULL,'Muqarab Ali Khan',NULL,NULL,NULL,'0335-1291665',NULL,'Ghulshan-e-Iqbal','Flat # 233 Munela Center 13-D',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(669,1,'669','Saeed Ahmed','',NULL,'',NULL,'Inayat Ali Khan',NULL,NULL,NULL,'0300-2247361',NULL,'Ghulshan-e-Iqbal','Flat # 231 Munela Center 13-D',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(670,1,'670','Liaquat Ali Khan','',NULL,'',NULL,'Mazhar Ali Khan',NULL,NULL,NULL,'0323-8212390',NULL,'Ghulshan-e-Iqbal','Flat D.30 Rofi Apartments 13-D',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(671,1,'671','Sultan Ahmed','',NULL,'',NULL,'Abdul Gafoor Khan',NULL,NULL,NULL,'0333-2834070',NULL,'Ghulshan-e-Iqbal','Noman Terris 5th Floor Nipa Ghulshan-e-Iqbal',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(672,1,'672','Engr. Imran Qaim Khani','',NULL,'',NULL,'Inayat Ali Khan',NULL,NULL,NULL,'0331-2070633',NULL,'Ghulshan-e-Iqbal','Flat# 10 4th Floor Anees Heaven Ghulshan Block 13 ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(673,1,'673','Khalid Nizam','',NULL,'',NULL,'Nizam Khan',NULL,NULL,NULL,'0335-3040768',NULL,'Ghulshan-e-Iqbal','Flat # A 204 Sumaira Pride Near Karachi University',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(674,1,'674','Saeed Qaim Khani','',NULL,'',NULL,'Hasmat Ali Khan',NULL,NULL,NULL,'0300-8271451',NULL,'Ghulshan-e-Iqbal','H# A 47 Ghulshan-e-Iqbal 13-B Near Younus Masjid',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(675,1,'675','Amjad Qaim Khani','',NULL,'',NULL,'Hasmat Ali Khan',NULL,NULL,NULL,'0333-7157046',NULL,'Ghulshan-e-Iqbal','H# A 47 Ghulshan-e-Iqbal 13-B Near Younus Masjid',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(676,1,'676','Moazzam Ali Khan','',NULL,'',NULL,'Murad Ali Khan',NULL,NULL,NULL,'0333-2103580',NULL,'Ghulshan-e-Iqbal','Al-Mubasir Ghulshan-e-Iqbal 13-C ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(677,1,'677','Engr. Faraz','',NULL,'',NULL,'Moazzam Ali Khan',NULL,NULL,NULL,'0345-6264335',NULL,'Ghulshan-e-Iqbal','Flat# 26 Al-Mubasir Ghulshan-e-Iqbal 13-C ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(678,1,'678','Engr. Shahid Akhter','',NULL,'',NULL,'Muhammad Aslam Khan',NULL,NULL,NULL,'0344-4486212',NULL,'Ghulshan-e-Iqbal','Flat# 28 Al-Mubasir Ghulshan-e-Iqbal 13-C ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(679,1,'679','Engr. Imran Khan','',NULL,'',NULL,'Shamshad Ali Khan',NULL,NULL,NULL,'0300-2148483',NULL,'Ghulshan-e-Iqbal','Flat # B-9 Al-Islam Apartments Ghulshan-e-Iqbal 13',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(680,1,'680','Engr. Adnan Khan','',NULL,'',NULL,'Shamshad Ali Khan',NULL,NULL,NULL,'0322-2225445',NULL,'Ghulshan-e-Iqbal','A 415 Block 5 Ghulsha-e-Iqbal',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(681,1,'681','Muhammad Aslam ','',NULL,'',NULL,'Abdul Majeed Khan',NULL,NULL,NULL,'0301-2455005',NULL,'Ghulshan-e-Iqbal','101 Home Land Apartments Ghulshan-e-Iqbal 13-C',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(682,1,'682','Dr. Abdul Razzaq Khan','',NULL,'',NULL,'Noor Muhammad Khan',NULL,NULL,NULL,'0305-3121441',NULL,'Ghulshan-e-Iqbal','Flat# D-417 Mear Apartments Ghulshan-e-Iqbal 13-C',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(683,1,'683','Engr. Wahab Razzaq','',NULL,'',NULL,'Dr. Abdul Razzaq Khan',NULL,NULL,NULL,'0331-6887688',NULL,'Ghulshan-e-Iqbal','Flat# D-417 Mear Apartments Ghulshan-e-Iqbal 13-C ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(684,1,'684','Prof. Mubarak Khan','',NULL,'',NULL,'Dr. Abdul Razzaq Khan',NULL,NULL,NULL,'0334-2612349',NULL,'Ghulshan-e-Iqbal','Flat# D-8 Najma Square Ghulshan-e-Iqbal 13-B',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(685,1,'685','Engr. Nadir Ali Khan','',NULL,'',NULL,'Mubarak Ali Khan',NULL,NULL,NULL,'0300-0884028',NULL,'Ghulshan-e-Iqbal','Flat# D-8 Najma Square Ghulshan-e-Iqbal 13-B',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(686,1,'686','Engr. Waseem','',NULL,'',NULL,'Ali Sher Khan',NULL,NULL,NULL,'0302-8289219',NULL,'Ghulshan-e-Iqbal','Flat# N2 Iram Palace Phase 2 Ghulshan-e-Iqbal 13-B',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(687,1,'687','Javed Iqbal','',NULL,'',NULL,'Abdul Ghani Khan',NULL,NULL,NULL,'0322-2201901',NULL,'Ghulshan-e-Iqbal','Flat# A-404 Ghulshan Husain Gala ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(688,1,'688','Muhammad Shoaib','',NULL,'',NULL,'Javed Iqbal',NULL,NULL,NULL,'4479-50243006',NULL,'Ghulshan-e-Iqbal','Flat# A-404 Ghulshan Husain Gala ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(689,1,'689','Zahid Iqbal','',NULL,'',NULL,'Abdul Ghani Khan',NULL,NULL,NULL,'0333-1307870',NULL,'Ghulshan-e-Iqbal','Flat # 304 3rd floor Galaxy apartments',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(690,1,'690','Engr. Haider Ghani','',NULL,'',NULL,'Abdul Ghani Khan',NULL,NULL,NULL,'',NULL,'Ghulshan-e-Iqbal','Flat # 304 3rd floor Galaxy apartments',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(691,1,'691','Engr. Faraz','',NULL,'',NULL,'Muhammad Aslam Khan',NULL,NULL,NULL,'',NULL,'Ghulshan-e-Iqbal','Flat # 403 4th floor Galaxy apartments',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(692,1,'692','Irfan Ali','',NULL,'',NULL,'',NULL,NULL,NULL,'0301-3223090',NULL,'Ghulshan-e-Iqbal','Akber Paradies',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(693,1,'693','Moiz Ali','',NULL,'',NULL,'Sulaiman Ali',NULL,NULL,NULL,'0332-2923084',NULL,'Ghulshan-e-Iqbal','Nipa Chowrangi',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(694,1,'694','Muhammad Arsalan','',NULL,'',NULL,'Muhammad Khalid',NULL,NULL,NULL,'0300-2721500',NULL,'Ghulshan-e-Iqbal','Akber Paradies',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(695,1,'695','Muhammad Bilal','',NULL,'',NULL,'Muhammad Haneef',NULL,NULL,NULL,'0334-2558499',NULL,'Ghulshan-e-Iqbal','Iram Apartments',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(696,1,'696','Muhammad Taimoor','',NULL,'',NULL,'Nisar Ahmed',NULL,NULL,NULL,'0334-2813614',NULL,'Ghulshan-e-Iqbal','Iram Apartments',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(697,1,'697','Muhammad Haseeb','',NULL,'',NULL,'Nisar Ahmed',NULL,NULL,NULL,'0334-2813614',NULL,'Ghulshan-e-Iqbal','Iram Apartments',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(698,1,'698','Engr. Sheroz Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0345-3856121',NULL,'Ghulshan-e-Iqbal','Iram Apartments',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(699,1,'699','Muhammad Junaid','',NULL,'',NULL,'',NULL,NULL,NULL,'0333-7766090',NULL,'Ghulshan-e-Iqbal','Akber Paradies',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(700,1,'700','Sufyan Ali','',NULL,'',NULL,'',NULL,NULL,NULL,'0334-1305090',NULL,'Ghulshan-e-Iqbal','Akber Paradies',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(701,1,'701','Wali Raza Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0333-7766090',NULL,'Ghulshan-e-Iqbal','Akber Paradies',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(702,1,'702','Wali Muhammad ','',NULL,'',NULL,'Abdul Jabbar Khan',NULL,NULL,NULL,'0331-9290333',NULL,'Ghulshan-e-Iqbal','Akber Paradies',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(703,1,'703','Muhammad Ali','',NULL,'',NULL,'Maqsood Ali Khan',NULL,NULL,NULL,'0300-7067852',NULL,'Ghulshan-e-Iqbal','Block/10 maymaar Driver Gulshan e Iqbal',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(704,1,'704','Muhammad Khalid','',NULL,'',NULL,'Alam Ali Khan',NULL,NULL,NULL,'0300-9247222',NULL,'Ghulshan-e-Iqbal','B-175 Gulshan e  Iqbal Block/5',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(705,1,'705','Sami Ullah','',NULL,'',NULL,'Hassan  Khan',NULL,NULL,NULL,'0333-3122136',NULL,'Ghulshan-e-Iqbal','House# B-16 P.R.E.C.H.S Project 5-A Gulshan e Iqba',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(706,1,'706','Mohib Ullah','',NULL,'',NULL,'Muhammad Hassan',NULL,NULL,NULL,'0332-2678417',NULL,'Ghulshan-e-Iqbal','Abu Isfahani Gulshan e Iqbal',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(707,1,'707','Wali Ullah','',NULL,'',NULL,'Muhammad Hassan Khan',NULL,NULL,NULL,'',NULL,'Ghulshan-e-Iqbal','Abu Isfahani Gulshan e Iqbal',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(708,1,'708','Imran ','',NULL,'',NULL,' Mumtaz Ali',NULL,NULL,NULL,'0302-8248484',NULL,'Ghulshan-e-Iqbal','A-15 Raw 1, Block# B National Cement Housing Socie',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(709,1,'709','Abdullah Khan','',NULL,'',NULL,'Ghulam Rasool',NULL,NULL,NULL,'0345-2128812',NULL,'Ghulshan-e-Iqbal','A-249 National Cement Housing Society, Gulshan e I',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(710,1,'710','Muhammad Aslam Qaim Khani','',NULL,'',NULL,'Peero Khan',NULL,NULL,NULL,'0334-9202121',NULL,'Ghulshan-e-Iqbal','Flate# A-20 Suleman Plaza Rashid Minhas Road Gulsh',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(711,1,'711','Javed Munawwar','',NULL,'',NULL,'Munawwar Ali Khan',NULL,NULL,NULL,'0332-2177066',NULL,'Ghulshan-e-Iqbal','Flate# C-18 4 Floor Junaid Plaza Gulshan e Iqbal',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(712,1,'712','Muhammad Saleem','',NULL,'',NULL,'Muhammad Khan',NULL,NULL,NULL,'0334-2435523',NULL,'Ghulshan-e-Iqbal','House# C-150 Block-C, North Nazimabad ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(713,1,'713','Hasmat Husain Khan','',NULL,'',NULL,'Liaquat Husain Khan',NULL,NULL,NULL,'0300-2324742',NULL,'Malir Cant','H#1 H I Falcon Complex Malir Cant ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(714,1,'714','Dr. Zakir Husain Khan','',NULL,'',NULL,'Hasmat Husain Khan',NULL,NULL,NULL,'021-3449123',NULL,'Malir Cant','H#1 H I Falcon Complex Malir Cant ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(715,1,'715','Asif Husain Khan','',NULL,'',NULL,'Hasmat Husain Khan',NULL,NULL,NULL,'0300-2212221',NULL,'Malir Cant','H#1 H I Falcon Complex Malir Cant ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(716,1,'716','Mudasir Husain Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0335-2555833',NULL,'Malir Cant','H#1 H I Falcon Complex Malir Cant ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(717,1,'717','Wng. Cdr. Willayat Ali Khan','',NULL,'',NULL,'Major Mehbob Ali Khan',NULL,NULL,NULL,'0300-8208584',NULL,'Malir Cant','99 SD Phase 2 DOHS Malir Cant',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(718,1,'718','Dr. Lt.Col. Muhammad Fahim Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0300-2232896',NULL,'Malir Cant','Askari 5 Malir Cant',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(719,1,'719','Brig. Muhammad Rafiq Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0300-9643166',NULL,'Malir Cant','444 SUH Brig. House Askari 5 Mali Cant',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(720,1,'720','Dr. Shakeel Ahmed','',NULL,'',NULL,'Jamil Ahmed',NULL,NULL,NULL,'',NULL,'Malir Cant','SUH Askari 5 Malir Cant',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(721,1,'721','Shakeel Ahmed Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0321-2594020',NULL,'Malir Cant','SUH 708 Askari 5 Malir Cant',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(722,1,'722','Nabeel Ahmed','',NULL,'',NULL,'Shakeel Ahmed Khan',NULL,NULL,NULL,'',NULL,'Malir Cant','SUH 708 Askari 5 Malir Cant',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(723,1,'723','Abid Ali Khan','',NULL,'',NULL,'Mehboob Ali Khan (PIA)',NULL,NULL,NULL,'0333-3421003',NULL,'Malir Cant','SUH 708 Askari 5 Malir Cant',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(724,1,'724','Aftab Ahmed Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0333-3008979',NULL,'Malir Cant','SUH Askari 5 Malir Cant',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(725,1,'725','Col. Amjad Ali Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0322-2002054',NULL,'Malir Cant','SUH Askari 5 Malir Cant',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(726,1,'726','Major Javed Koser Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0336-2806007',NULL,'Malir Cant','93 B SUH Askari 5 Malir Cant',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(727,1,'727','Col. Javed Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0302-8267591',NULL,'Malir Cant','62 C SUH Askari 5 Malir Cant',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(728,1,'728','Liaquat Ali Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0300-8267591',NULL,'Malir Cant','44 B SUH Askari 5 Malir Cant',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(729,1,'729','Haji Jamaludin Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0321-3313384',NULL,'Malir Cant','SD 322 Falcon Complex Malir Cant',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(730,1,'730','Col. Abdul Hamid Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0300-2110306',NULL,'Malir Cant','140  Street 8 Phase 1 DOHS Malir Cant',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(731,1,'731','Late Sarwer Ali Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'021-34490691',NULL,'Malir Cant','140  Street 8 Phase 1 DOHS Malir Cant',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(732,1,'732','Muhammad Akhter ','',NULL,'',NULL,'Muhamnmad Yasin Khan',NULL,NULL,NULL,'0321-3576689',NULL,'Malir Cant','D 1/2 , GM Bunglows T&T Colony, Opp JPMC Rafique S',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(733,1,'733','Waseem Khifayat','',NULL,'',NULL,'Khifayat Ali',NULL,NULL,NULL,'0333-2238942',NULL,'Punjab Chowrangi','Dehli Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(734,1,'734','Naeem Khifayat','',NULL,'',NULL,'Khifayat Ali',NULL,NULL,NULL,'0300-2681356',NULL,'Punjab Chowrangi','Dehli Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(735,1,'735','Naveed Khifayat','',NULL,'',NULL,'Khifayat Ali',NULL,NULL,NULL,'0333-1227900',NULL,'Punjab Chowrangi','Dehli Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(736,1,'736','Javed Usman','',NULL,'',NULL,'Usman Ghani',NULL,NULL,NULL,'0334-7348687',NULL,'Punjab Chowrangi','Dehli Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(737,1,'737','Sadaqat Ali','',NULL,'',NULL,'Liaquat Ali',NULL,NULL,NULL,'0333-2438302',NULL,'Punjab Chowrangi','Dehli Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(738,1,'738','Muhammad Iqbal Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0333-2885046',NULL,'Punjab Chowrangi','Dehli Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(739,1,'739','Muhammad Ayoub','',NULL,'',NULL,'Abdul Ghaffar Khan',NULL,NULL,NULL,'0310-9991528',NULL,'Punjab Chowrangi','PNT Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(740,1,'740','Auranzeb Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0321-2299808',NULL,'Punjab Chowrangi','Dehli Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(741,1,'741','Muhammad Imran','',NULL,'',NULL,'Muhammad Idress',NULL,NULL,NULL,'0332-3152604',NULL,'JUTT LINE SADDAR ','Jutt Line Saddar Army Quarters',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(742,1,'742','Muhammad Sajjid','',NULL,'',NULL,'Muhammad Shahid Khan',NULL,NULL,NULL,'0313-2842418',NULL,'JUTT LINE SADDAR ','Jutt Line Saddar Army Quarters',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(743,1,'743','Tanveer Ahmed','',NULL,'',NULL,'Abdul Aziz Khan',NULL,NULL,NULL,'0312-8837726',NULL,'JUTT LINE SADDAR ','Jutt Line Saddar Army Quarters',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(744,1,'744','Zahid Akber ','',NULL,'',NULL,'Akber Ali Khan',NULL,NULL,NULL,'0300-3916019',NULL,'JUTT LINE SADDAR ','Jutt Line Saddar (Ayesha Bawani)',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(745,1,'745','Muhammad Faisal','',NULL,'',NULL,'Muhammad Ibrahim Ali Khan',NULL,NULL,NULL,'0300-3551129',NULL,'JUTT LINE SADDAR ','Jutt Line Saddar (Ayesha Bawani)',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(746,1,'746','Muhammad Shahzad','',NULL,'',NULL,'Muhammad Sadiq',NULL,NULL,NULL,'0300-3551559',NULL,'JUTT LINE SADDAR ','Jutt Line Saddar (Ayesha Bawani)',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(747,1,'747','Muhammad Amir','',NULL,'',NULL,'Muhammad Shahid Khan',NULL,NULL,NULL,'0313-2842418',NULL,'JUTT LINE SADDAR ','Jutt Line Saddar (Ayesha Bawani)',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(748,1,'748','Liaquat Ali ','',NULL,'',NULL,'Khaley Khan',NULL,NULL,NULL,'0308-2347900',NULL,'Muslim Colony FTC','Muslim Colony Near FTC Building',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(749,1,'749','Haneef Khan Nasir','',NULL,'',NULL,'',NULL,NULL,NULL,'0321-2212388',NULL,'3 TALWAR','Bath Island',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(750,1,'750','Usman Ghani ','',NULL,'',NULL,'Haneef Khan Nasir',NULL,NULL,NULL,'0321-2299877',NULL,'3 TALWAR','Bath Island',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(751,1,'751','Iftikhar Ahmed ','',NULL,'',NULL,'Muhammad Younus Khan',NULL,NULL,NULL,'0321-9248881',NULL,'CLIFTON','Banglow # B-10 Navy Heights Society Clifton',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(752,1,'752','Muhammad Hasan Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0313-2303501',NULL,'CLIFTON','Banglow # D-52 Navy Heights Society Clifton',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(753,1,'753','Muhammad Asim','',NULL,'',NULL,'Ghulam Nabi Advocate',NULL,NULL,NULL,'0300-3335232',NULL,'CLIFTON','Director Medi Link 2 Talwar D-Plaza ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(754,1,'754','Muhammad Abid','',NULL,'',NULL,'',NULL,NULL,NULL,'0321-9251415',NULL,'CLIFTON','Sea View Plaza',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(755,1,'755','Javed Akhter','',NULL,'',NULL,'',NULL,NULL,NULL,'0301-8260077',NULL,'DEFENCE','Office#1 17 C Lane 2 Zamzama Defence Phase 5',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(756,1,'756','Brig. Abdul Haq ','',NULL,'',NULL,'',NULL,NULL,NULL,'0333-3557906',NULL,'DEFENCE','',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(757,1,'757','Hidayat Ali Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0345-2208622',NULL,'DEFENCE','',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(758,1,'758','Brig. Riaz Ahmed ','',NULL,'',NULL,'',NULL,NULL,NULL,'0321-2702000',NULL,'DEFENCE','Banglow # 208 Main Korangi  Road Defence Phase 1',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(759,1,'759','Lt.Col. Shahid Shamsher Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0334-3751990',NULL,'DEFENCE','Banglow # 171/2 Main Saba Avenue Defence Phase 6',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(760,1,'760','Muhammad Sajid','',NULL,'',NULL,'Shamsher Ali',NULL,NULL,NULL,'0334-3500161',NULL,'DEFENCE','Banglow # 171/2 Main Saba Avenue Defence Phase 6',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(761,1,'761','Major Muhammad Shamshad','',NULL,'',NULL,'',NULL,NULL,NULL,'0345-8291097',NULL,'DEFENCE','Banglow # C 22 Shahbaz Commercial Defence Phase 6 ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(762,1,'762','Muhammad Umer Khan','',NULL,'',NULL,'Shamshad Khan',NULL,NULL,NULL,'0307-2174133',NULL,'DEFENCE','Banglow # C 22 Shahbaz Commercial Defence Phase 6 ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(763,1,'763','Muhammad Adnan','',NULL,'',NULL,'',NULL,NULL,NULL,'0307-2877667',NULL,'DEFENCE','Banglow # C 22 Shahbaz Commercial Defence Phase 6 ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(764,1,'764','Muhammad Ilyas Ahsan','',NULL,'',NULL,'',NULL,NULL,NULL,'0333-2246987',NULL,'DEFENCE','49/2 Lane 22 Defence Phase 7',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(765,1,'765','Shabir Ahmed ','',NULL,'',NULL,'',NULL,NULL,NULL,'0322-9066690',NULL,'DEFENCE','107 Khayaban-e-Itihad Phase 7',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(766,1,'766','Abdul Ghani ','',NULL,'',NULL,'Muhi-ud-din Khan',NULL,NULL,NULL,'0345-8200684',NULL,'DEFENCE','Banglow 2/B-B Phase 1',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(767,1,'767','Muhammad Shmashi Ghani','',NULL,'',NULL,'Abdul Ghani ',NULL,NULL,NULL,'0321-8208708',NULL,'DEFENCE','Banglow 2/B-B Phase 1',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(768,1,'768','Mrs. Bashir Ahmed','',NULL,'',NULL,'',NULL,NULL,NULL,'0300-2396910',NULL,'DEFENCE','2B-A 4th Lane Defence 1',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(769,1,'769','Shahab Ghani','',NULL,'',NULL,'Abdul Ghani Khan',NULL,NULL,NULL,'0333-2179779',NULL,'DEFENCE','25 B 26 Street Defence',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(770,1,'770','Prof. Ishaque Ahmed Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0332-3008110',NULL,'MEHMOODABAD','Mehmoodabad TP 2',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(771,1,'771','Engr. Muhammad Raza','',NULL,'',NULL,'',NULL,NULL,NULL,'0333-2888082',NULL,'MEHMOODABAD','Mehmoodabad',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(772,1,'772','Muhammad Shahid','',NULL,'',NULL,'Abdul Qayoom',NULL,NULL,NULL,'0313-5297090',NULL,'MEHMOODABAD','Mehmoodabad',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(773,1,'773','Muhammad Sajid ','',NULL,'',NULL,'',NULL,NULL,NULL,'0315-3065479',NULL,'MEHMOODABAD','Mehmoodabad',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(774,1,'774','Muhammad Ishtiaq','',NULL,'',NULL,'Mushtaq Ahmed',NULL,NULL,NULL,'0336-2814487',NULL,'MEHMOODABAD','Mehmoodabad',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(775,1,'775','Ali Akber','',NULL,'',NULL,'Shabir Ahmed',NULL,NULL,NULL,'0333-2647857',NULL,'MEHMOODABAD','Mehmoodabad',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(776,1,'776','Muhammad Tariq','',NULL,'',NULL,'Mushtaq Ahmed',NULL,NULL,NULL,'0333-2309020',NULL,'MEHMOODABAD','Mehmoodabad',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(777,1,'777','Owais Shamsher','',NULL,'',NULL,'Shamsher Ali',NULL,NULL,NULL,'0333-0230183',NULL,'MEHMOODABAD','Mehmoodabad',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(778,1,'778','Shahnawaz Ahmed','',NULL,'',NULL,'Muhammad Ayoub',NULL,NULL,NULL,'0331-3547046',NULL,'MEHMOODABAD','Mehmoodabad',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(779,1,'779','Sheraz Ahmed','',NULL,'',NULL,'',NULL,NULL,NULL,'0303-2082647',NULL,'MEHMOODABAD','Mehmoodabad',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(780,1,'780','Gulzar Ahmed','',NULL,'',NULL,'Munawar Ali Khan',NULL,NULL,NULL,'0300-3332009',NULL,'MEHMOODABAD','Mehmoodabad',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(781,1,'781','Muhammad Nadeem','',NULL,'',NULL,'',NULL,NULL,NULL,'0324-9059090',NULL,'MEHMOODABAD','Mehmoodabad TP 2',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(782,1,'782','Muhammad Waseem','',NULL,'',NULL,'',NULL,NULL,NULL,'0300-0862040',NULL,'MEHMOODABAD','Mehmoodabad TP 2',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(783,1,'783','Iftikhar Ahmed','',NULL,'',NULL,'Mumtaz Ali',NULL,NULL,NULL,'0300-2216490',NULL,'LIAQUATABAD','Liaquatabad # 4 KK Furniture',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(784,1,'784','Muhammad Faheem','',NULL,'',NULL,'Hashim Ali Khan',NULL,NULL,NULL,'0300-2091955',NULL,'LIAQUATABAD','Liaquatabad # 4',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(785,1,'785','Javed Ahmed','',NULL,'',NULL,'Naimat Ali Khan',NULL,NULL,NULL,'0314-5604752',NULL,'LIAQUATABAD',' Alkaram Square Liaquatabad # 4 (KK Advertisement)',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(786,1,'786','Sabir Ali','',NULL,'',NULL,'Hoshiar Ali',NULL,NULL,NULL,'0300-8989006',NULL,'LIAQUATABAD','F.C Area Liaquatabad',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(787,1,'787','Muhammad Asif','',NULL,'',NULL,'Hameed Ali Khan',NULL,NULL,NULL,'0303-2242144',NULL,'LIAQUATABAD','F.C Area Liaquatabad',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(788,1,'788','Bashir Ahmed','',NULL,'',NULL,'Nazar Muhammad Khan',NULL,NULL,NULL,'0311-2345669',NULL,'LIAQUATABAD','F.C Area Liaquatabad',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(789,1,'789','Muhammad Aslam','',NULL,'',NULL,'Mumtaz Ali Khan',NULL,NULL,NULL,'',NULL,'LIAQUATABAD','Liaquatabad # 4',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(790,1,'790','Lal Muhammad','',NULL,'',NULL,'Deney Khan',NULL,NULL,NULL,'0335-2171164',NULL,'LIAQUATABAD','Liaquatabad Bandhani Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(791,1,'791','Muhammad Kamran','',NULL,'',NULL,'Lal Muhammad ',NULL,NULL,NULL,'0342-2182657',NULL,'LIAQUATABAD','Liaquatabad Bandhani Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(792,1,'792','Muhammad Imran','',NULL,'',NULL,'Lal Muhammad ',NULL,NULL,NULL,'0312-5218884',NULL,'LIAQUATABAD','Liaquatabad Bandhani Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(793,1,'793','Noman Ahmed','',NULL,'',NULL,'Abdul Majeed Khan',NULL,NULL,NULL,'0331-0374187',NULL,'LIAQUATABAD','Liaquatabad Bandhani Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(794,1,'794','Muhammad Faizan','',NULL,'',NULL,'Abdul Majeed Khan',NULL,NULL,NULL,'0312-2168717',NULL,'LIAQUATABAD','Liaquatabad Bandhani Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(795,1,'795','Abdul Aziz Khan','',NULL,'',NULL,'Muhammad Shafiq',NULL,NULL,NULL,'0315-8207600',NULL,'LIAQUATABAD','Liaquatabad Bandhani Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(796,1,'796','Abdul Rasheed Khan','',NULL,'',NULL,'Muhammad Shafiq',NULL,NULL,NULL,'0300-2519643',NULL,'LIAQUATABAD','Liaquatabad Bandhani Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(797,1,'797','Raj Muhammad ','',NULL,'',NULL,'Abdul Majeed Khan',NULL,NULL,NULL,'0312-0214410',NULL,'LIAQUATABAD','Liaquatabad Bandhani Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(798,1,'798','Muhammad Ayoub','',NULL,'',NULL,'Abdul Majeed Khan',NULL,NULL,NULL,'0302-3041245',NULL,'LIAQUATABAD','Liaquatabad Bandhani Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(799,1,'799','Muhammad Azam','',NULL,'',NULL,'Abdul Majeed Khan',NULL,NULL,NULL,'0312-0214410',NULL,'LIAQUATABAD','Liaquatabad Bandhani Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(800,1,'800','Muhammad Yamin Khan','',NULL,'',NULL,'Sadoley Khan',NULL,NULL,NULL,'0301-2210405',NULL,'LIAQUATABAD','Liaquatabad Bandhani Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(801,1,'801','Muhammad Amir','',NULL,'',NULL,'Muhammad Yamin',NULL,NULL,NULL,'0340-0067951',NULL,'LIAQUATABAD','Liaquatabad Bandhani Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(802,1,'802','Muhammad Kamran','',NULL,'',NULL,'Muhammad Yamin',NULL,NULL,NULL,'0315-2188655',NULL,'LIAQUATABAD','Liaquatabad Bandhani Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(803,1,'803','Salahudin','',NULL,'',NULL,'Nizamuddin Khan',NULL,NULL,NULL,'0307-2024617',NULL,'LIAQUATABAD','Liaquatabad Bandhani Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(804,1,'804','Muhammad Imran','',NULL,'',NULL,'Nizamuddin Khan',NULL,NULL,NULL,'0310-2117588',NULL,'LIAQUATABAD','Liaquatabad Bandhani Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(805,1,'805','Muhammad Aslam','',NULL,'',NULL,'Hakim Ali',NULL,NULL,NULL,'0315-0840520',NULL,'LIAQUATABAD','Liaquatabad Bandhani Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(806,1,'806','Muhammad Bilal','',NULL,'',NULL,'Muhammad Aslam',NULL,NULL,NULL,'0310-2011456',NULL,'LIAQUATABAD','Liaquatabad Bandhani Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(807,1,'807','Muhammad Asif','',NULL,'',NULL,'Hakim Ali',NULL,NULL,NULL,'0345-4847464',NULL,'LIAQUATABAD','Liaquatabad Bandhani Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(808,1,'808','Muhammad Sajid','',NULL,'',NULL,'Hakim Ali',NULL,NULL,NULL,'0300-2228427',NULL,'LIAQUATABAD','Liaquatabad Bandhani Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(809,1,'809','Muhammad Naeem','',NULL,'',NULL,'Muhammad Yamin Khan',NULL,NULL,NULL,'0097-1529090624',NULL,'LIAQUATABAD','Liaquatabad Bandhani Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(810,1,'810','Muhammad Nadeem','',NULL,'',NULL,'Muhammad Yamin Khan',NULL,NULL,NULL,'0313-8536699',NULL,'LIAQUATABAD','Liaquatabad Bandhani Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(811,1,'811','Nawab Ali','',NULL,'',NULL,'Abdul Rahim Khan',NULL,NULL,NULL,'0343-3081671',NULL,'LIAQUATABAD','Liaquatabad Bandhani Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(812,1,'812','Niaz Muhammad','',NULL,'',NULL,'Taj Muahammad ',NULL,NULL,NULL,'0312-1207896',NULL,'LIAQUATABAD','Liaquatabad Bandhani Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(813,1,'813','Muhammad Riaz','',NULL,'',NULL,'Taj Muahammad ',NULL,NULL,NULL,'0306-6061613',NULL,'LIAQUATABAD','Liaquatabad Bandhani Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(814,1,'814','Muhammad Husain','',NULL,'',NULL,'Abdul Ghani',NULL,NULL,NULL,'0304-2660201',NULL,'LIAQUATABAD','Liaquatabad Bandhani Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(815,1,'815','Muhammad Javed','',NULL,'',NULL,'Abdul Ghani',NULL,NULL,NULL,'0314-4020490',NULL,'LIAQUATABAD','Liaquatabad Bandhani Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(816,1,'816','Muhammad Ahsan','',NULL,'',NULL,'Javed Khan',NULL,NULL,NULL,'0306-2627521',NULL,'LIAQUATABAD','Liaquatabad Bandhani Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(817,1,'817','Muhammad Shahid','',NULL,'',NULL,'Muhammad Fayyaz',NULL,NULL,NULL,'',NULL,'LIAQUATABAD','Liaquatabad Bandhani Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(818,1,'818','Muhammad Usman','',NULL,'',NULL,'Muhammad Aslam Khan',NULL,NULL,NULL,'0312-2616021',NULL,'LIAQUATABAD','Liaquatabad Bandhani Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(819,1,'819','Muhammad Habib','',NULL,'',NULL,'Murad Khan',NULL,NULL,NULL,'0314-2250084',NULL,'LIAQUATABAD','Liaquatabad Bandhani Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(820,1,'820','Sanawer Ali Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'LIAQUATABAD','Liaquatabad Bandhani Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(821,1,'821','Ghulam Mustafa','',NULL,'',NULL,'Habib Khan',NULL,NULL,NULL,'0307-2024301',NULL,'LIAQUATABAD','Liaquatabad Bandhani Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(822,1,'822','Master Farooq','',NULL,'',NULL,'Ashique Ali Khan',NULL,NULL,NULL,'0300-2395469',NULL,'LIAQUATABAD','Liaquatabad Bandhani Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(823,1,'823','Noor Muhammad Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0343-2078150',NULL,'LIAQUATABAD','Liaquatabad Bandhani Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(824,1,'824','Muhammad Asif','',NULL,'',NULL,'Noor Muhammad ',NULL,NULL,NULL,'0343-2078150',NULL,'LIAQUATABAD','Liaquatabad Bandhani Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(825,1,'825','Muhammad Yaseen','',NULL,'',NULL,'',NULL,NULL,NULL,'0300-3075515',NULL,'LIAQUATABAD','Liaquatabad Bandhani Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(826,1,'826','Muhammad Rashid','',NULL,'',NULL,'Yaseen Khan',NULL,NULL,NULL,'0300-3075515',NULL,'LIAQUATABAD','Liaquatabad Bandhani Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(827,1,'827','Muhammad Tahir','',NULL,'',NULL,'Yaseen Khan',NULL,NULL,NULL,'0300-3075515',NULL,'LIAQUATABAD','Liaquatabad Bandhani Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(828,1,'828','Muhammad Jamshed','',NULL,'',NULL,'',NULL,NULL,NULL,'0312-0214410',NULL,'LIAQUATABAD','Liaquatabad Bandhani Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(829,1,'829','Abdul Rehman','',NULL,'',NULL,'',NULL,NULL,NULL,'0312-2358702',NULL,'LIAQUATABAD','Liaquatabad Bandhani Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(830,1,'830','Muhammad Akram','',NULL,'',NULL,'Shoukat Ali Khan',NULL,NULL,NULL,'0345-2962849',NULL,'LIAQUATABAD','Liaquatabad # 10 Super Market ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1086,1,'1086','Abdul Ghaffar ','',NULL,'',NULL,'Abdul Kareem Khan',NULL,NULL,NULL,'0334-2817227',NULL,'','Ward#1',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1087,1,'1087','Abdul Ghaffar ','',NULL,'',NULL,'Muqarib Ali Khan',NULL,NULL,NULL,'0300-3310294',NULL,'','Ward#1',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1088,1,'1088','Abdul Ghaffar ','',NULL,'',NULL,'Niaz Muhammad',NULL,NULL,NULL,'0345-0200215',NULL,'','Ward#1',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1089,1,'1089','Abdul Jabbar Khan','',NULL,'',NULL,'Abdul Kareem Khan',NULL,NULL,NULL,'0331-2939228',NULL,'','Ward#1',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1090,1,'1090','Abdullah  Majeed','',NULL,'',NULL,'Fateh Muhammad ',NULL,NULL,NULL,'',NULL,'','Ward#1',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1091,1,'1091','Anwar Ali','',NULL,'',NULL,'Mehboob Ali`Nuhammad Ali Khan',NULL,NULL,NULL,'0340-3240711',NULL,'','Ward#1',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1092,1,'1092','Asghar','',NULL,'',NULL,'Abdullah Hakeem',NULL,NULL,NULL,'0308-3946046',NULL,'','Ward#1',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1093,1,'1093','Danish ','',NULL,'',NULL,'Farooq ',NULL,NULL,NULL,'0307-34186684',NULL,'','Ward#1',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1094,1,'1094','Haji Abdul Jabbar Khan','',NULL,'',NULL,'Haji Abdul Kareem Khan',NULL,NULL,NULL,'0337-2939228',NULL,'','Ward#1',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1095,1,'1095','Haji Abdullah Rasheed Khan','',NULL,'',NULL,'Haji Muhammad Abdul Kareem',NULL,NULL,NULL,'0333-2939228',NULL,'','Ward#1',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1096,1,'1096','Haji Muhammad Ishtiaq','',NULL,'',NULL,'Asad Khan',NULL,NULL,NULL,'0333-4445999',NULL,'','Ward#1',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1097,1,'1097','Haji Muhammad Munawwar','',NULL,'',NULL,'Haji Muhammad Yousuf',NULL,NULL,NULL,'0345-3674895',NULL,'','Ward#1',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1098,1,'1098','Hakim Ali','',NULL,'',NULL,'Raheem Khan',NULL,NULL,NULL,'0332-3126775',NULL,'','Ward#1',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1099,1,'1099','Ishtiaq ','',NULL,'',NULL,'Ahmed Khan',NULL,NULL,NULL,'0306-2450143',NULL,'','Ward#1',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1100,1,'1100','Master Mehboob Ali','',NULL,'',NULL,'Abdul Razaq',NULL,NULL,NULL,'0308-3542842',NULL,'','Ward#1',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1101,1,'1101','Mohsin Khan','',NULL,'',NULL,'Abdul Kareeb Khan',NULL,NULL,NULL,'0336-2882121',NULL,'','Ward#1',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1102,1,'1102','Muammad Iqbal','',NULL,'',NULL,'Moti Khan',NULL,NULL,NULL,'0301-3637439',NULL,'','Ward#1',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1103,1,'1103','Muhammad ','',NULL,'',NULL,'Abdullah Hakeem',NULL,NULL,NULL,'0308-3946046',NULL,'','Ward#1',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1104,1,'1104','Muhammad  Ameer Ahmed','',NULL,'',NULL,'Attar Muhammad',NULL,NULL,NULL,'0302-3311893',NULL,'','Ward#1',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1105,1,'1105','Muhammad Akber','',NULL,'',NULL,'Naseer Ahmed Khan',NULL,NULL,NULL,'0301-3331119',NULL,'','Ward#1',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1106,1,'1106','Muhammad Anwar','',NULL,'',NULL,'Yousuf   Ali Khan',NULL,NULL,NULL,'0342-3723908',NULL,'','Ward#1',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1107,1,'1107','Muhammad Aslam','',NULL,'',NULL,'Mumtaz Ali Khan',NULL,NULL,NULL,'0331-2700004',NULL,'','Ward#1',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1108,1,'1108','Muhammad Ayoub','',NULL,'',NULL,'Raheem Khan',NULL,NULL,NULL,'0301-2432265',NULL,'','Ward#1',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1109,1,'1109','Muhammad Basheer ','',NULL,'',NULL,'Munnu Khan',NULL,NULL,NULL,'0316-3396403',NULL,'','Ward#1',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1110,1,'1110','Muhammad Hanif','',NULL,'',NULL,'Taaj Muhammad ',NULL,NULL,NULL,'0336-2827004',NULL,'','Ward#1',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1111,1,'1111','Muhammad Jabbar','',NULL,'',NULL,'Muqarib Ali Khan',NULL,NULL,NULL,'0300-3286500',NULL,'','Ward#1',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1112,1,'1112','Muhammad Shareef','',NULL,'',NULL,'Yousuf   Ali Khan',NULL,NULL,NULL,'0331-3104372',NULL,'','Ward#1',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1113,1,'1113','Muhammad Tariq','',NULL,'',NULL,'Abdul Aziz',NULL,NULL,NULL,'0334-16820113',NULL,'','Ward#1',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1114,1,'1114','Muhammad Younus ','',NULL,'',NULL,'Haji Hashim Ali Khan',NULL,NULL,NULL,'0342-3586552',NULL,'','Ward#1',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1115,1,'1115','Muhammad Younus ','',NULL,'',NULL,'Munawwar Ali Khan',NULL,NULL,NULL,'0300-9232433',NULL,'','Ward#1',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1116,1,'1116','Mushtaq Ahmd ','',NULL,'',NULL,'Mehmod Ali Khan',NULL,NULL,NULL,'0334-2819594',NULL,'','Ward#1',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1117,1,'1117','Nazeer Ahmed ','',NULL,'',NULL,'Hani Khan',NULL,NULL,NULL,'0336-3740628',NULL,'','Ward#1',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1118,1,'1118','Nmuhammad Amir','',NULL,'',NULL,'Shoukat Ali',NULL,NULL,NULL,'0302-3350302',NULL,'','Ward#1',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1119,1,'1119','Omeed Ali Khan','',NULL,'',NULL,'Waast Ali Khan',NULL,NULL,NULL,'',NULL,'','Ward#1',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1120,1,'1120','Owais','',NULL,'',NULL,'Yaseen Khan',NULL,NULL,NULL,'0333-2765455',NULL,'','Ward#1',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1121,1,'1121','Rehman','',NULL,'',NULL,'Niaz Khan',NULL,NULL,NULL,'0306-3579445',NULL,'','Ward#1',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1122,1,'1122','Sana Ullah','',NULL,'',NULL,'Shoukat Ali Khan',NULL,NULL,NULL,'0302-3087460',NULL,'','Ward#1',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1123,1,'1123','Sattar (Late)','',NULL,'',NULL,'Mehboob Ali Khan',NULL,NULL,NULL,'0334-2819594',NULL,'','Ward#1',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1124,1,'1124','Sattar Muhammad ','',NULL,'',NULL,'Attar Muhammad',NULL,NULL,NULL,'0334-0357715',NULL,'','Ward#1',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1125,1,'1125','Shafiq Ahmed','',NULL,'',NULL,'Taaj Muhammad ',NULL,NULL,NULL,'0306-3574342',NULL,'','Ward#1',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1126,1,'1126','Wajid Ali ','',NULL,'',NULL,'Mehboob Ali ',NULL,NULL,NULL,'',NULL,'','Ward#1',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1127,1,'1127','Arshad','',NULL,'',NULL,'Taj Muhammad',NULL,NULL,NULL,'0306-3011841',NULL,'','Ward#11',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1128,1,'1128','Ayoub','',NULL,'',NULL,'Ali Muhammad ',NULL,NULL,NULL,'0303-3153918',NULL,'','Ward#11',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1129,1,'1129','Istiaque','',NULL,'',NULL,'Taj Muhammad',NULL,NULL,NULL,'0303-2893148',NULL,'','Ward#11',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1130,1,'1130','Muhammad Akber','',NULL,'',NULL,'Muhammad Ali Khan',NULL,NULL,NULL,'0335-0030055',NULL,'','Ward#11',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1131,1,'1131','Muhammad Aslam','',NULL,'',NULL,'Deen Muhammad ',NULL,NULL,NULL,'0334-2953952',NULL,'','Ward#11',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1132,1,'1132','Muhammad Javed','',NULL,'',NULL,'Muhammad Ishaque',NULL,NULL,NULL,'0301-3236444',NULL,'','Ward#11',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1133,1,'1133','Nisar','',NULL,'',NULL,'Ali Muhammad ',NULL,NULL,NULL,'0303-3153918',NULL,'','Ward#11',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1134,1,'1134','Saleem ','',NULL,'',NULL,'Ali Muhammad ',NULL,NULL,NULL,'0303-3153918',NULL,'','Ward#11',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1135,1,'1135','Shabeer ','',NULL,'',NULL,'Ali Muhammad ',NULL,NULL,NULL,'0303-3153918',NULL,'','Ward#11',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1136,1,'1136','Shamsher Ali Khan','',NULL,'',NULL,'Mushtaq Khan',NULL,NULL,NULL,'0302-3642216',NULL,'','Ward#11',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1137,1,'1137','Usman','',NULL,'',NULL,'Ali Muhammad ',NULL,NULL,NULL,'0303-3153918',NULL,'','Ward#11',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1138,1,'1138','Yaqoob','',NULL,'',NULL,'Ali Muhammad ',NULL,NULL,NULL,'0303-3153918',NULL,'','Ward#11',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1139,1,'1139','Abdul Aziz','',NULL,'',NULL,'Samad Khan',NULL,NULL,NULL,'0331-204598',NULL,'','Ward#2',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1140,1,'1140','Abdul Aziz ','',NULL,'',NULL,'Abdul Hameed ',NULL,NULL,NULL,'0300-8825890',NULL,'','Ward#2',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1141,1,'1141','Abdul Hamed ','',NULL,'',NULL,'Bahadur Khan',NULL,NULL,NULL,'0300-3325890',NULL,'','Ward#2',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1142,1,'1142','Abdul Hamid ','',NULL,'',NULL,'Muhammad Khan',NULL,NULL,NULL,'0333-2210425',NULL,'','Ward#2',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1143,1,'1143','Abdul Majeed','',NULL,'',NULL,'Abdul Hameed ',NULL,NULL,NULL,'0336-2882820',NULL,'','Ward#2',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1144,1,'1144','Abdul Rauf','',NULL,'',NULL,'Nazar Muhammad',NULL,NULL,NULL,'0033-2536235',NULL,'','Ward#2',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1145,1,'1145','Akhtar Ali','',NULL,'',NULL,'Fatah Muhammad',NULL,NULL,NULL,'0306-3442941',NULL,'','Ward#2',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1146,1,'1146','Bahadur Ali','',NULL,'',NULL,'Aata Muhammad',NULL,NULL,NULL,'0304-2425124',NULL,'','Ward#2',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1147,1,'1147','Basheer Ahmed Khan','',NULL,'',NULL,'Ghulam Nabi',NULL,NULL,NULL,'0334-2552036',NULL,'','Ward#2',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1148,1,'1148','Imran Walid ','',NULL,'',NULL,'Abdul Waheed',NULL,NULL,NULL,'0300-9379465',NULL,'','Ward#2',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1149,1,'1149','Jahoon Khan','',NULL,'',NULL,'Shahadat Khan',NULL,NULL,NULL,'0349-3487606',NULL,'','Ward#2',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1150,1,'1150','Khaya Ul Haq ','',NULL,'',NULL,'Iqbal ',NULL,NULL,NULL,'0333-3529630',NULL,'','Ward#2',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1151,1,'1151','Khuda Baksh','',NULL,'',NULL,'Bahadur Khan',NULL,NULL,NULL,'0345-0497172',NULL,'','Ward#2',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1152,1,'1152','Manzoor Ali ','',NULL,'',NULL,'Muhammad Khan',NULL,NULL,NULL,'0334-7352872',NULL,'','Ward#2',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1153,1,'1153','Muhammad Abdul Hamed','',NULL,'',NULL,'Ala Deen Khan',NULL,NULL,NULL,'0332-3484609',NULL,'','Ward#2',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1154,1,'1154','Muhammad Akber Ali','',NULL,'',NULL,'Akhtar Ali Khan',NULL,NULL,NULL,'0334-2568888',NULL,'','Ward#2',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1155,1,'1155','Muhammad Akhtar','',NULL,'',NULL,'Jeet Khan',NULL,NULL,NULL,'0312-1000941',NULL,'','Ward#2',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1156,1,'1156','Muhammad Akram ','',NULL,'',NULL,'Akhtar Ali  Khan',NULL,NULL,NULL,'0306-2050901',NULL,'','Ward#2',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1157,1,'1157','Muhammad Ashraf ','',NULL,'',NULL,'Muhammad Taki',NULL,NULL,NULL,'0332-2813841',NULL,'','Ward#2',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1158,1,'1158','Muhammad Asif ','',NULL,'',NULL,'Muhammad Taki',NULL,NULL,NULL,'0300-074990',NULL,'','Ward#2',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1159,1,'1159','Muhammad Hanif ','',NULL,'',NULL,'Shahadat Khan',NULL,NULL,NULL,'0333-2981811',NULL,'','Ward#2',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1160,1,'1160','Muhammad Ilyas','',NULL,'',NULL,'Khan Muhammad',NULL,NULL,NULL,'0301-3608584',NULL,'','Ward#2',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1161,1,'1161','Muhammad Imtiaz ','',NULL,'',NULL,'Muhammad Yousuf',NULL,NULL,NULL,'0345-4030710',NULL,'','Ward#2',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1162,1,'1162','Muhammad Islam','',NULL,'',NULL,'Anu Khan',NULL,NULL,NULL,'0334-2568838',NULL,'','Ward#2',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1163,1,'1163','Muhammad Shafiq ','',NULL,'',NULL,'Noor Khan',NULL,NULL,NULL,'0306-3350980',NULL,'','Ward#2',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1164,1,'1164','Muhammad Taki','',NULL,'',NULL,'Muhammad Shifa',NULL,NULL,NULL,'33292813841',NULL,'','Ward#2',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1165,1,'1165','Muhammad Umer','',NULL,'',NULL,'Muhammad Hussain',NULL,NULL,NULL,'0301-3145039',NULL,'','Ward#2',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1166,1,'1166','Mumtaz Ali ','',NULL,'',NULL,'Muhammad Baksh',NULL,NULL,NULL,'0301-3900845',NULL,'','Ward#2',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1167,1,'1167','Shamsher Khan','',NULL,'',NULL,'Aiman Khan',NULL,NULL,NULL,'0302-1545110',NULL,'','Ward#2',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1168,1,'1168','Shehzad ','',NULL,'',NULL,'Mumtaz Ali Khan',NULL,NULL,NULL,'0301-3914309',NULL,'','Ward#2',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1169,1,'1169','Umer Daraz ','',NULL,'',NULL,'Ghulam Nabi',NULL,NULL,NULL,'0343-1312087',NULL,'','Ward#2',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1170,1,'1170','Zakir Husaain','',NULL,'',NULL,'Abdul Kareem Khan',NULL,NULL,NULL,'0306-3444314',NULL,'','Ward#2',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1171,1,'1171','Zulfiqar Ali ','',NULL,'',NULL,'Akhtar Ali',NULL,NULL,NULL,'0334-2814581',NULL,'','Ward#2',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1172,1,'1172',' Muhammad Iqbal','',NULL,'',NULL,'Sher Muhammad ',NULL,NULL,NULL,'0331-2947057',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1173,1,'1173','Abdul  Jabbar','',NULL,'',NULL,'Mumtaz Ali Khan',NULL,NULL,NULL,'0302-3310708',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1174,1,'1174','Abdul Aziz','',NULL,'',NULL,'Muqarib Ali Khan',NULL,NULL,NULL,'0301-3281651',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1175,1,'1175','Abdul Aziz ','',NULL,'',NULL,'Raheem Khan',NULL,NULL,NULL,'0331-3125598',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1176,1,'1176','Abdul Gaffar','',NULL,'',NULL,'Nazar Muhammad',NULL,NULL,NULL,'0333-3230156',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1177,1,'1177','Abdul Gaffar ','',NULL,'',NULL,'Mehboob Ali',NULL,NULL,NULL,'0307-3435019',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1178,1,'1178','Abdul Hakeem','',NULL,'',NULL,'Mehboob Ali Khan',NULL,NULL,NULL,'0300-3184774',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1179,1,'1179','Abdul Hakeem','',NULL,'',NULL,'Muhammad Baksh',NULL,NULL,NULL,'0304-4072074',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1180,1,'1180','Abdul Hameed','',NULL,'',NULL,'Mehboob Ali Khan',NULL,NULL,NULL,'0333-4445990',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1181,1,'1181','Abdul Hamid ','',NULL,'',NULL,'Haji Mehboob Ali Khan',NULL,NULL,NULL,'0336-3292691',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1182,1,'1182','Abdul Jabbar ','',NULL,'',NULL,'Mumtaz Ali Khan',NULL,NULL,NULL,'0302-3310708',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1183,1,'1183','Abdul Lateef ','',NULL,'',NULL,'Muhammad Hanif',NULL,NULL,NULL,'0306-2088162',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1184,1,'1184','Abdul Majeed','',NULL,'',NULL,'Abdullah Khan',NULL,NULL,NULL,'0333-2533185',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1185,1,'1185','Abdul Majeed','',NULL,'',NULL,'Mehboob Ali Khan',NULL,NULL,NULL,'0333-4445990',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1186,1,'1186','Abdul Qayoom','',NULL,'',NULL,'Abdul Raheem',NULL,NULL,NULL,'0300-3443396',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1187,1,'1187','Abdul Qayoom','',NULL,'',NULL,'Abdul Sattar Khan',NULL,NULL,NULL,'0304-3239200',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1188,1,'1188','Abdul Qayoom','',NULL,'',NULL,'Hussain Khan',NULL,NULL,NULL,'0306-3446132',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1189,1,'1189','Abdul Qayoom Khan','',NULL,'',NULL,'Abdul Sattar Khan',NULL,NULL,NULL,'0304-3239200',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1190,1,'1190','Abdul Qayoom Khan','',NULL,'',NULL,'Abdul Sattar Khan',NULL,NULL,NULL,'0304-3239200',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1191,1,'1191','Abdul Rasheed','',NULL,'',NULL,'Alam Ali Khan',NULL,NULL,NULL,'0333-2991246',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1192,1,'1192','Abdul Sattar ','',NULL,'',NULL,'Basheer Khan',NULL,NULL,NULL,'0300-2219177',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1193,1,'1193','Abdul Sattar ','',NULL,'',NULL,'Nazar Muhammad',NULL,NULL,NULL,'0333-3336456',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1194,1,'1194','Abdullah  Majeed','',NULL,'',NULL,'Mehboob Ali Khan',NULL,NULL,NULL,'0333-4445990',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1195,1,'1195','Abdullah Rasheed','',NULL,'',NULL,'Abdul Majeed',NULL,NULL,NULL,'0300-3319820',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1196,1,'1196','Abdur Razak','',NULL,'',NULL,'',NULL,NULL,NULL,'0331-3885937',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1197,1,'1197','Abid Ali','',NULL,'',NULL,'Haji Yameen Khan',NULL,NULL,NULL,'0333-2981638',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1198,1,'1198','Abid Husaain','',NULL,'',NULL,'Dawar Ali Khan',NULL,NULL,NULL,'0336-3018019',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1199,1,'1199','Aijaz Khan','',NULL,'',NULL,'Mazhar Ali Khan',NULL,NULL,NULL,'0333-2799175',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1200,1,'1200','Akhter Ali','',NULL,'',NULL,'Nazer Muhammad',NULL,NULL,NULL,'0300-3311087',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1201,1,'1201','Akram Ul Haq','',NULL,'',NULL,'Ata Muhammad ',NULL,NULL,NULL,'0300-3321533',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1202,1,'1202','Amir Hussain','',NULL,'',NULL,'Dawar Ali Khan',NULL,NULL,NULL,'0303-3650661',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1203,1,'1203','Anwar Ali','',NULL,'',NULL,'Fatah Muhammad',NULL,NULL,NULL,'0344-3494244',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1204,1,'1204','Ashfaq Ahmed ','',NULL,'',NULL,'Hakim Ali',NULL,NULL,NULL,'0333-9203444',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1205,1,'1205','Ata Muhammad','',NULL,'',NULL,'Haji Raheem baksh',NULL,NULL,NULL,'0302-3311021',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1206,1,'1206','Docter Abdul Aziz','',NULL,'',NULL,'Mehboob Ali Khan',NULL,NULL,NULL,'0300-9211455',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1207,1,'1207','Farhan Ahmed ','',NULL,'',NULL,'Muhmmad Iqbal ',NULL,NULL,NULL,'0332-2804272',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1208,1,'1208','Ghulam Mustafa','',NULL,'',NULL,'Hussain Khan',NULL,NULL,NULL,'0300-3288721',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1209,1,'1209','Haji Hakeem Ali','',NULL,'',NULL,'Baksh Khan',NULL,NULL,NULL,'0332-0319577',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1210,1,'1210','Haji Hassan','',NULL,'',NULL,'Azfar Ali',NULL,NULL,NULL,'0333-2969580',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1211,1,'1211','Haji Mansoor ','',NULL,'',NULL,'Hussain Khan',NULL,NULL,NULL,'0306-3094206',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1212,1,'1212','Haji mazir ali khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0300-3323460',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1213,1,'1213','Haji Muahtaq','',NULL,'',NULL,'Hussain Khan',NULL,NULL,NULL,'0302-3344220',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1214,1,'1214','Haji Muhammad Hanif ','',NULL,'',NULL,'Adeel Khan',NULL,NULL,NULL,'0301-3241616',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1215,1,'1215','Haji Muhammad Younus','',NULL,'',NULL,'Mehnu Khan',NULL,NULL,NULL,'0331-2424355',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1216,1,'1216','Haji Shafique','',NULL,'',NULL,'Haji Niaz Khan',NULL,NULL,NULL,'0334-3303222',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1217,1,'1217','Hakim Ali','',NULL,'',NULL,'Kareem Khan',NULL,NULL,NULL,'0333-2991247',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1218,1,'1218','Iftakar','',NULL,'',NULL,'Asghar Ali',NULL,NULL,NULL,'0333-2799175',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1219,1,'1219','Iftakhar Ahmed ','',NULL,'',NULL,'Hakim  Ali khan',NULL,NULL,NULL,'0333-2991243',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1220,1,'1220','Imran Liaqat ','',NULL,'',NULL,'Liaqat Ali',NULL,NULL,NULL,'',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1221,1,'1221','Imtiaz Ali','',NULL,'',NULL,'Taaj Muhammad ',NULL,NULL,NULL,'0306-3051702',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1222,1,'1222','Intezar Khan','',NULL,'',NULL,'Mehboob Ali khan',NULL,NULL,NULL,'0303-0552990',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1223,1,'1223','Intezar Khan','',NULL,'',NULL,'Muhammad Yousuf',NULL,NULL,NULL,'0300-3324034',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1224,1,'1224','Intezar Khan','',NULL,'',NULL,'Muhammad Yousuf',NULL,NULL,NULL,'0300-3324034',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1225,1,'1225','Intezar Khan','',NULL,'',NULL,'Muhammad Yousuf Ali Khan',NULL,NULL,NULL,'0300-3324034',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1226,1,'1226','Jhangir ','',NULL,'',NULL,'Imam Udin',NULL,NULL,NULL,'0344-8017352',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1227,1,'1227','Jhangir ','',NULL,'',NULL,'Imam Udin',NULL,NULL,NULL,'0344-8017952',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1228,1,'1228','Jhangir ','',NULL,'',NULL,'Imam Udin',NULL,NULL,NULL,'0344-8017952',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1229,1,'1229','Kafayat  Ali','',NULL,'',NULL,'Qasim Ali Khan',NULL,NULL,NULL,'0305-3663922',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1230,1,'1230','Kaleem Asad ','',NULL,'',NULL,'Asad Ali Khan',NULL,NULL,NULL,'0334-25689911',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1231,1,'1231','Kamran','',NULL,'',NULL,'Omeed ',NULL,NULL,NULL,'0334-2553212',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1232,1,'1232','Kamran Khan','',NULL,'',NULL,'Omeed ',NULL,NULL,NULL,'0334-2553212',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1233,1,'1233','Kamran Khan','',NULL,'',NULL,'Omeed Khan',NULL,NULL,NULL,'0334-2553212',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1234,1,'1234','Liaqat Ali','',NULL,'',NULL,'Alim Ali Khan',NULL,NULL,NULL,'0333-3530135',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1235,1,'1235','Liaquat Ali ','',NULL,'',NULL,'Lado Khan',NULL,NULL,NULL,'0334-2965868',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1236,1,'1236','Mansoor Ali','',NULL,'',NULL,'Fatah Muhammad',NULL,NULL,NULL,'0333-3312216',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1237,1,'1237','Maqsood Ahmed ','',NULL,'',NULL,'Hashim Ali Khan',NULL,NULL,NULL,'0331-2933790',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1238,1,'1238','Mohsin Ali ','',NULL,'',NULL,'Ali Muhammad ',NULL,NULL,NULL,'0333-2969506',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1239,1,'1239','Moin Ud din ','',NULL,'',NULL,'Muhammad Yaseen',NULL,NULL,NULL,'0306-1154045',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1240,1,'1240','Muhamad Haaji ','',NULL,'',NULL,'Asad Khan',NULL,NULL,NULL,'0333-2091290',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1241,1,'1241','Muhammad  Yaqoob','',NULL,'',NULL,'Manhu Khan',NULL,NULL,NULL,'0331-8432581',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1242,1,'1242','Muhammad Ahmed ','',NULL,'',NULL,'Hashim Ali  Khan',NULL,NULL,NULL,'0331-2933790',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1243,1,'1243','Muhammad Akber','',NULL,'',NULL,'Asad Ali Khan',NULL,NULL,NULL,'0333-2833469',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1244,1,'1244','Muhammad Akber','',NULL,'',NULL,'Asad Ali Khan',NULL,NULL,NULL,'0333-2833469',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1245,1,'1245','Muhammad Akber ','',NULL,'',NULL,'Ali Khan',NULL,NULL,NULL,'0333-2833469',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1246,1,'1246','Muhammad akber ','',NULL,'',NULL,'Azfar Ali',NULL,NULL,NULL,'0306-3445576',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1247,1,'1247','Muhammad Akber ','',NULL,'',NULL,'Hashim Ali Khan',NULL,NULL,NULL,'0306-7426675',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1248,1,'1248','Muhammad Akram ','',NULL,'',NULL,'Hoshiyar Khan',NULL,NULL,NULL,'0302-2115779',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1249,1,'1249','Muhammad Arif ','',NULL,'',NULL,'Muhammad Yaqoob',NULL,NULL,NULL,'0344-2647145',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1250,1,'1250','Muhammad Aslam','',NULL,'',NULL,'Babu Muhammad Yousuf',NULL,NULL,NULL,'0300-3105572',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1251,1,'1251','Muhammad Aslam','',NULL,'',NULL,'Mehnu Khan',NULL,NULL,NULL,'0332-3980970',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1252,1,'1252','Muhammad Aslam','',NULL,'',NULL,'Raju Khan',NULL,NULL,NULL,'0302-2042953',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1253,1,'1253','Muhammad Aslam','',NULL,'',NULL,'Yousuf Ali Khan',NULL,NULL,NULL,'0301-3626616',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1254,1,'1254','Muhammad Ayob ','',NULL,'',NULL,'Hussain',NULL,NULL,NULL,'0306-3556776',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1255,1,'1255','Muhammad Farooq','',NULL,'',NULL,'Nazar Muhammad',NULL,NULL,NULL,'0333-2999092',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1256,1,'1256','Muhammad Hussain','',NULL,'',NULL,'Abdul Hakeem',NULL,NULL,NULL,'0332-2123870',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1257,1,'1257','Muhammad Iqbal','',NULL,'',NULL,'Jiwan Khan',NULL,NULL,NULL,'0333-2981620',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1258,1,'1258','Muhammad Ishtiq ','',NULL,'',NULL,'Rehmat Ali Khan',NULL,NULL,NULL,'0336-2884378',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1259,1,'1259','Muhammad Islam','',NULL,'',NULL,'Mehnoon Khan',NULL,NULL,NULL,'0332-3980970',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1260,1,'1260','Muhammad Islam','',NULL,'',NULL,'Mehnu Khan',NULL,NULL,NULL,'0332-3980970',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1261,1,'1261','Muhammad Jameel','',NULL,'',NULL,'Mehnu Khan',NULL,NULL,NULL,'0334-4388545',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1262,1,'1262','Muhammad Nadeem','',NULL,'',NULL,'Asad Ali Khan',NULL,NULL,NULL,'0301-2576003',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1263,1,'1263','Muhammad Nadeem','',NULL,'',NULL,'Hashim Ali Khan',NULL,NULL,NULL,'0333-2833991',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1264,1,'1264','Muhammad Rafiqe Ahmed ','',NULL,'',NULL,'Hashim Ali Khan',NULL,NULL,NULL,'0332-2817370',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1265,1,'1265','Muhammad Rafique','',NULL,'',NULL,'Hashim Ali Khan',NULL,NULL,NULL,'0332-8173370',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1266,1,'1266','Muhammad Rafique Ahmed ','',NULL,'',NULL,'Hashim Ali Khan',NULL,NULL,NULL,'0332-2817370',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1267,1,'1267','Muhammad Sajjad ','',NULL,'',NULL,'Muhammad Yousuf ',NULL,NULL,NULL,'0331-3711042',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1268,1,'1268','Muhammad Saleem ','',NULL,'',NULL,'Haji Shabeer ',NULL,NULL,NULL,'0333-2570635',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1269,1,'1269','Muhammad Saroor ','',NULL,'',NULL,'Inayat Khan',NULL,NULL,NULL,'0331-3897872',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1270,1,'1270','Muhammad Saror','',NULL,'',NULL,'Husaain Khan',NULL,NULL,NULL,'0307-3739328',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1271,1,'1271','Muhammad Shahzad','',NULL,'',NULL,'Taaj Muhammad ',NULL,NULL,NULL,'0307-3184874',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1272,1,'1272','Muhammad Shamshad ','',NULL,'',NULL,'Basheer Khan',NULL,NULL,NULL,'0333-2834347',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1273,1,'1273','Muhammad Shamshad ','',NULL,'',NULL,'Mehnu Khan',NULL,NULL,NULL,'0306-3057290',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1274,1,'1274','Muhammad Sohail','',NULL,'',NULL,'Shabbir ',NULL,NULL,NULL,'0336-3349215',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1275,1,'1275','Muhammad Tufail','',NULL,'',NULL,'Jafar Ali Khan',NULL,NULL,NULL,'0307-3188552',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1276,1,'1276','Muhammad Tufail','',NULL,'',NULL,'Jafer Ali Khan',NULL,NULL,NULL,'0307-3188552',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1277,1,'1277','Muhammad Tufail ','',NULL,'',NULL,'Jafar Ali Khan',NULL,NULL,NULL,'0307-3188552',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1278,1,'1278','Muhammad Waseem ','',NULL,'',NULL,'Muhammad Aslam',NULL,NULL,NULL,'0300-3312216',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1279,1,'1279','Muhammad Waseem ','',NULL,'',NULL,'Muhammad Saleem',NULL,NULL,NULL,'0335-8169426',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1280,1,'1280','Muhammad Yameen','',NULL,'',NULL,'Muhammad Baksh',NULL,NULL,NULL,'0334-2857424',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1281,1,'1281','Muhammad Yaqoob ','',NULL,'',NULL,'Abdul Hakeem',NULL,NULL,NULL,'0300-3323320',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1282,1,'1282','Muhammad Yaqoob ','',NULL,'',NULL,'Abdul Hakeem',NULL,NULL,NULL,'0300-3323320',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1283,1,'1283','Muhammad Yaqoob ','',NULL,'',NULL,'Abdul Hakeem',NULL,NULL,NULL,'0300-3323320',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1284,1,'1284','Muhammad Yaqoob ','',NULL,'',NULL,'Mehnoon Khan',NULL,NULL,NULL,'0331-8492581',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1285,1,'1285','Muhammad Yaqoob ','',NULL,'',NULL,'Mehnu Khan',NULL,NULL,NULL,'0331-8492581',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1286,1,'1286','Muhammad Younus ','',NULL,'',NULL,'Ali Udin Khan',NULL,NULL,NULL,'0332-2072574',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1287,1,'1287','Muhammad Younus ','',NULL,'',NULL,'Mehboob Ali Khan',NULL,NULL,NULL,'0301-2507665',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1288,1,'1288','Muhammad Yousuf ','',NULL,'',NULL,'JALAL Ud din',NULL,NULL,NULL,'0336-3101125',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1289,1,'1289','Muhammad Zubair Ahmed ','',NULL,'',NULL,'Abdul Majeed ',NULL,NULL,NULL,'0334-2813613',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1290,1,'1290','Mushtaq ','',NULL,'',NULL,'Muqarib  Khan',NULL,NULL,NULL,'0336-1234940',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1291,1,'1291','Nadeem Ahmed ','',NULL,'',NULL,'Nawab Ali',NULL,NULL,NULL,'0300-3308480',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1292,1,'1292','Nadeem Ahmed ','',NULL,'',NULL,'Nawab Ali',NULL,NULL,NULL,'0300-3308480',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1293,1,'1293','Nadeem Ahmed ','',NULL,'',NULL,'Nawab Ali',NULL,NULL,NULL,'0300-3308480',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1294,1,'1294','Nasir Ali ','',NULL,'',NULL,'Ali Khan',NULL,NULL,NULL,'0334-2893118',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1295,1,'1295','Nasir Ali ','',NULL,'',NULL,'Asad Ali Khan',NULL,NULL,NULL,'0334-2839118',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1296,1,'1296','Nasir Ali Khan','',NULL,'',NULL,'Asad Ali Khan',NULL,NULL,NULL,'0331-2893118',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1297,1,'1297','Navaid Ahmed ','',NULL,'',NULL,'Haji Niaz Khan',NULL,NULL,NULL,'0333-7099121',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1298,1,'1298','Omeed Ali ','',NULL,'',NULL,'Ameen Khan',NULL,NULL,NULL,'0334-2563259',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1299,1,'1299','Omeed Khan','',NULL,'',NULL,'Asad Ali',NULL,NULL,NULL,'0334-2552464',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1300,1,'1300','Omeed Khan','',NULL,'',NULL,'Asad Khan',NULL,NULL,NULL,'0334-2552464',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1301,1,'1301','Omeed Khan','',NULL,'',NULL,'Asad Khan',NULL,NULL,NULL,'0334-2552464',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1302,1,'1302','Sagheer Ahmed ','',NULL,'',NULL,'Anayat Ali',NULL,NULL,NULL,'0333-8002867',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1303,1,'1303','Sajid Ali','',NULL,'',NULL,'Ali  sher',NULL,NULL,NULL,'0302-2746892',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1304,1,'1304','Sajid Ali','',NULL,'',NULL,'Ali Sher ',NULL,NULL,NULL,'0302-2746892',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1305,1,'1305','Sajid Ali','',NULL,'',NULL,'Ali Sher ',NULL,NULL,NULL,'0302-2746892',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1306,1,'1306','Shahid Ali','',NULL,'',NULL,'Hussain',NULL,NULL,NULL,'0307-8194204',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1307,1,'1307','Sohail','',NULL,'',NULL,'Murad Ali ',NULL,NULL,NULL,'0335-9380668',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1308,1,'1308','Taaj Muhammad ','',NULL,'',NULL,'Basharat Ali Khan',NULL,NULL,NULL,'0302-2070350',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1309,1,'1309','Umer Daraz ','',NULL,'',NULL,'Abdul Shakoor',NULL,NULL,NULL,'0300-3323280',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1310,1,'1310','Umer Daraz ','',NULL,'',NULL,'Abdul Shakoor',NULL,NULL,NULL,'0300-3323280',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1311,1,'1311','Umer Daraz ','',NULL,'',NULL,'Muhammad Shakoor',NULL,NULL,NULL,'0300-3323280',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1312,1,'1312','Yousuf','',NULL,'',NULL,'Al Ud Din Khan',NULL,NULL,NULL,'0336-3431434',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1313,1,'1313','Zishan','',NULL,'',NULL,'Jabbar',NULL,NULL,NULL,'0333-2502774',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1314,1,'1314','Zulfiqar','',NULL,'',NULL,'Nawab Ali',NULL,NULL,NULL,'',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1315,1,'1315','Zulfiqar ','',NULL,'',NULL,' Nawab  Ali Khan',NULL,NULL,NULL,'',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1316,1,'1316','Zulfiqar ','',NULL,'',NULL,'Nawab Ali',NULL,NULL,NULL,'',NULL,'','Ward#3',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1317,1,'1317','Abdul Gafar Khan','',NULL,'',NULL,'Ala Deen Khan',NULL,NULL,NULL,'0302-3055856',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1318,1,'1318','Abdul Hamid ','',NULL,'',NULL,'Basheer Ahmed',NULL,NULL,NULL,'0300-3132323',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1319,1,'1319','Abdul Haq','',NULL,'',NULL,'Ata Muhammad ',NULL,NULL,NULL,'0301-2027205',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1320,1,'1320','Abdul Majeed','',NULL,'',NULL,'Abdul hamid ',NULL,NULL,NULL,'0331-3704752',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1321,1,'1321','Abdur Raheem Khan','',NULL,'',NULL,'Bhoory Khan',NULL,NULL,NULL,'0302-2638949',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1322,1,'1322','Ala Baksh','',NULL,'',NULL,'Muhammad Ishaaq Khan',NULL,NULL,NULL,'0306-2579567',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1323,1,'1323','Ala Rakha','',NULL,'',NULL,'Muhammad Ishaq Khan',NULL,NULL,NULL,'0307-3438175',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1324,1,'1324','Ali Akber ','',NULL,'',NULL,'Muhammad Usman',NULL,NULL,NULL,'',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1325,1,'1325','Basheer Ahmed ','',NULL,'',NULL,'Al - Din',NULL,NULL,NULL,'0301-3611258',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1326,1,'1326','Dilshaad Khan','',NULL,'',NULL,'Taaj Muhammad ',NULL,NULL,NULL,'',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1327,1,'1327','Docter Abdul jabbar ','',NULL,'',NULL,'Yousuf  Ali Khan',NULL,NULL,NULL,'0301-3915844',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1328,1,'1328','Docter Akber  Ali','',NULL,'',NULL,'Fatah Muhammad',NULL,NULL,NULL,'0332-2284552',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1329,1,'1329','Docter Muhammad Saleem','',NULL,'',NULL,'Muhammad Yousuf Ali Khan',NULL,NULL,NULL,'0334-2561283',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1330,1,'1330','Fais Muhammad ','',NULL,'',NULL,'Umer Khan',NULL,NULL,NULL,'0305-2622352',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1331,1,'1331','Fajar Ali Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0335-1361902',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1332,1,'1332','Ghafar ','',NULL,'',NULL,'Ata Muhammad ',NULL,NULL,NULL,'0331-3508100',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1333,1,'1333','Ghulaam Muhammad','',NULL,'',NULL,'Shahadat Ali ',NULL,NULL,NULL,'0333-7775795',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1334,1,'1334','Ghulaam Nabi','',NULL,'',NULL,'Nathu Khan',NULL,NULL,NULL,'0300-2930140',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1335,1,'1335','Ghulaam Nabi','',NULL,'',NULL,'Nawab Ali Khan',NULL,NULL,NULL,'0308-3598939',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1336,1,'1336','Ghulam Nabi','',NULL,'',NULL,'Ismail ',NULL,NULL,NULL,'0333-3316270',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1337,1,'1337','Gulzaar Ahmed ','',NULL,'',NULL,'Sher Ali Khan',NULL,NULL,NULL,'0334-2966212',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1338,1,'1338','Hadayat Ali Khan','',NULL,'',NULL,'Ismail Khan',NULL,NULL,NULL,'0333-2993655',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1339,1,'1339','Hidayat Ali','',NULL,'',NULL,'Hakeem Khan',NULL,NULL,NULL,'0307-3854685  ',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1340,1,'1340','Imran Khan','',NULL,'',NULL,'Muhammad jiwan',NULL,NULL,NULL,'0301-3281738',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1341,1,'1341','Imtiaz Ahmed ','',NULL,'',NULL,'Haji Mehboob Ali Khan',NULL,NULL,NULL,'0308-2126808',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1342,1,'1342','Irfan ','',NULL,'',NULL,'Mubarak Ali',NULL,NULL,NULL,'0335-8162033',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1343,1,'1343','Irshad Ali ','',NULL,'',NULL,'Ghulaam Muhammad',NULL,NULL,NULL,'0334-3494441',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1344,1,'1344','Irshad Ali ','',NULL,'',NULL,'Muhammad Ali Khan',NULL,NULL,NULL,'0308-3945806',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1345,1,'1345','Ishtiaq  Ahmed (let)','',NULL,'',NULL,'Muhamad Yousuf',NULL,NULL,NULL,'0303-2456519',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1346,1,'1346','Jamshed Ahmed ','',NULL,'',NULL,'Abdul Aziz',NULL,NULL,NULL,'0308-3252055',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1347,1,'1347','Jamshed Ali','',NULL,'',NULL,'',NULL,NULL,NULL,'0331-4030912',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1348,1,'1348','Jewan Khan','',NULL,'',NULL,'Sher Muhammad ',NULL,NULL,NULL,'0302-2775450',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1349,1,'1349','Khalid Hussain','',NULL,'',NULL,'Mumtaaz Ali Khan',NULL,NULL,NULL,'0301-3285322',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1350,1,'1350','Liaqat Ali','',NULL,'',NULL,'Dost Muhammad ',NULL,NULL,NULL,'0304-3418044',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1351,1,'1351','Liaqat Ali','',NULL,'',NULL,'Sher Ali Khan',NULL,NULL,NULL,'0302-2948085',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1352,1,'1352','Muhammad Akram ','',NULL,'',NULL,'Fatah Muhammad',NULL,NULL,NULL,'0311-2489760',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1353,1,'1353','Muhammad Akram ','',NULL,'',NULL,'Yaseen Khan',NULL,NULL,NULL,'0307-3447500',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1354,1,'1354','Muhammad Asif','',NULL,'',NULL,'Muhammad Yousuf',NULL,NULL,NULL,'0333-3679098',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1355,1,'1355','Muhammad Aslam','',NULL,'',NULL,'Adeel Khan',NULL,NULL,NULL,'0306-3043657',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1356,1,'1356','Muhammad Aslam','',NULL,'',NULL,'Manhu Khan',NULL,NULL,NULL,'0308-2160933',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1357,1,'1357','Muhammad Aslam (let)','',NULL,'',NULL,'Muhammad Ali Khan',NULL,NULL,NULL,'0303-3527035',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1358,1,'1358','Muhammad Aslam Khan','',NULL,'',NULL,'Niaz Ahmed ',NULL,NULL,NULL,'0333-3045085',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1359,1,'1359','Muhammad Ayoub','',NULL,'',NULL,'Manhu Khan',NULL,NULL,NULL,'0333-3656858',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1360,1,'1360','Muhammad Faiyaz ','',NULL,'',NULL,'Faiz Muhammad ',NULL,NULL,NULL,'',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1361,1,'1361','Muhammad Farooq','',NULL,'',NULL,'Abdul Hakeem',NULL,NULL,NULL,'0302-3311918',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1362,1,'1362','Muhammad ilyaas ','',NULL,'',NULL,'Muhammad Yousuf Ali Khan',NULL,NULL,NULL,'0334-2552925',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1363,1,'1363','Muhammad Iqbal','',NULL,'',NULL,'Khan Muhammad',NULL,NULL,NULL,'0333-0230085',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1364,1,'1364','Muhammad Iqbal','',NULL,'',NULL,'Muqarib  Ali Khan',NULL,NULL,NULL,'0306-3410402',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1365,1,'1365','Muhammad Iqbal','',NULL,'',NULL,'Rehmat Khan',NULL,NULL,NULL,'0331-63763015',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1366,1,'1366','Muhammad Iqbal','',NULL,'',NULL,'Rehmat Khan',NULL,NULL,NULL,'0333-2665118',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1367,1,'1367','Muhammad Ishtiaq','',NULL,'',NULL,'Alim Ali Khan',NULL,NULL,NULL,'0332-3200531',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1368,1,'1368','Muhammad Islam','',NULL,'',NULL,'Niaz Muhammad',NULL,NULL,NULL,'0308-2169383',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1369,1,'1369','Muhammad Jawaid','',NULL,'',NULL,'Muhammad Yousuf',NULL,NULL,NULL,'0301-3281050',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1370,1,'1370','Muhammad Masoor','',NULL,'',NULL,'Mehboob Khan',NULL,NULL,NULL,'0334-2748734',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1371,1,'1371','Muhammad Mehmood','',NULL,'',NULL,'Sher Ali Khan',NULL,NULL,NULL,'0306-8224455',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1372,1,'1372','Muhammad Rafique','',NULL,'',NULL,'Docter Abdul Sagheer',NULL,NULL,NULL,'0334-2552440',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1373,1,'1373','Muhammad Saleem','',NULL,'',NULL,'Faiz Muhammad ',NULL,NULL,NULL,'0300-3498711',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1374,1,'1374','Muhammad Saleem','',NULL,'',NULL,'Muhammad Ishaaq Khan',NULL,NULL,NULL,'0345-3635917',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1375,1,'1375','Muhammad Saleem Khan','',NULL,'',NULL,'Mansoor Ali',NULL,NULL,NULL,'0334-2551541',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1376,1,'1376','Muhammad Saleem Khan','',NULL,'',NULL,'Shahadat Khan',NULL,NULL,NULL,'0334-3692139',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1377,1,'1377','Muhammad Saroor ','',NULL,'',NULL,'Shareef Khan',NULL,NULL,NULL,'0300-5567515',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1378,1,'1378','Muhammad Sawal','',NULL,'',NULL,'Shaista ',NULL,NULL,NULL,'0300-2697596',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1379,1,'1379','Muhammad Shahid ','',NULL,'',NULL,'Daud ',NULL,NULL,NULL,'0301-2751646',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1380,1,'1380','Muhammad Shamshad ','',NULL,'',NULL,'Taaj Muhammad ',NULL,NULL,NULL,'0344-2211210',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1381,1,'1381','Muhammad Tufail Khan','',NULL,'',NULL,'Sattar Khan',NULL,NULL,NULL,'0343-3716527',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1382,1,'1382','Muhammad Umsna (let)','',NULL,'',NULL,'Abdul Hakeem',NULL,NULL,NULL,'0310-2904650',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1383,1,'1383','Muhammad Usman','',NULL,'',NULL,'Azfar Ali',NULL,NULL,NULL,'0300-3114193',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1384,1,'1384','Muhammad Usman','',NULL,'',NULL,'Muhammad Ali',NULL,NULL,NULL,'0305-8039274',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1385,1,'1385','Muhammad Usman','',NULL,'',NULL,'Nawab Ali Khan',NULL,NULL,NULL,'0306-3043657',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1386,1,'1386','Muhammad Younus ','',NULL,'',NULL,'Yousuf Ali Khan',NULL,NULL,NULL,'0306-9866196',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1387,1,'1387','Muhammad Yousuf ','',NULL,'',NULL,'Umer Khan',NULL,NULL,NULL,'0336-8449669',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1388,1,'1388','Muhammad Yousuf Ali ','',NULL,'',NULL,'Banu Khan ',NULL,NULL,NULL,'0301-3912738',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1389,1,'1389','Muhammad Zulfiqar','',NULL,'',NULL,'Nathu Khan',NULL,NULL,NULL,'0334-2551305',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1390,1,'1390','Muhammd  Shabbir ','',NULL,'',NULL,'Muhammad Yousuf ',NULL,NULL,NULL,'0308-3517930',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1391,1,'1391','Mukhtiar Ahmed ','',NULL,'',NULL,'Wahid Ali ',NULL,NULL,NULL,'0306-4151401',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1392,1,'1392','Munawwar Ali','',NULL,'',NULL,'Kareem Ali Khan',NULL,NULL,NULL,'0333-4673155',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1393,1,'1393','Munawwar Ali','',NULL,'',NULL,'Mehboob Ali Khan',NULL,NULL,NULL,'0303-2655275',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1394,1,'1394','Munawwar Ali','',NULL,'',NULL,'Mojdeen Khan',NULL,NULL,NULL,'0300-3323633',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1395,1,'1395','Mushtaq Muhammad','',NULL,'',NULL,'Adal Khan',NULL,NULL,NULL,'0301-3289561',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1396,1,'1396','Naem Khan','',NULL,'',NULL,'Yaseen Khan',NULL,NULL,NULL,'0333-3045085',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1397,1,'1397','Nazeer Ahmed ','',NULL,'',NULL,'Adal Khan',NULL,NULL,NULL,'0331-3167668',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1398,1,'1398','Niaz Ahmed','',NULL,'',NULL,'Adal Khan',NULL,NULL,NULL,'0333-2783422',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1399,1,'1399','Nisaar Khan','',NULL,'',NULL,'Khan Muhammad',NULL,NULL,NULL,'0306-3058942',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1400,1,'1400','Nisaar Khan','',NULL,'',NULL,'Nazar Muhammad',NULL,NULL,NULL,'0336-3778408',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1401,1,'1401','Noshaad Ahmed ','',NULL,'',NULL,'Sher Ali Khan',NULL,NULL,NULL,'0300-3305717',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1402,1,'1402','Rafique Ahmed ','',NULL,'',NULL,'AL - Din Khan',NULL,NULL,NULL,'0303-3930452',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1403,1,'1403','Rafque Khan','',NULL,'',NULL,'Niaz Khan',NULL,NULL,NULL,'0302-2001090',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1404,1,'1404','Rashid','',NULL,'',NULL,'Yousuf Ali Khan',NULL,NULL,NULL,'0307-2750935',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1405,1,'1405','Razak Khan','',NULL,'',NULL,'Abdul Hamid Khan',NULL,NULL,NULL,'0334-0764688',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1406,1,'1406','Riasat  Ali ','',NULL,'',NULL,'Wajid Ali',NULL,NULL,NULL,'0331-3640743',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1407,1,'1407','Sabir Ali ','',NULL,'',NULL,'Taaj Muhammad ',NULL,NULL,NULL,'0331-6855397',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1408,1,'1408','Saeed Ahmed ','',NULL,'',NULL,'Nazer Muhammad',NULL,NULL,NULL,'0332-3312781',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1409,1,'1409','Shakeel','',NULL,'',NULL,'Muhammad Shareef Khan',NULL,NULL,NULL,'0301-3864081',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1410,1,'1410','Sohail','',NULL,'',NULL,'Iftakar Ahmed',NULL,NULL,NULL,'0307-8496730 ',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1411,1,'1411','Taaj Muhammad ','',NULL,'',NULL,'Fais Muhammad',NULL,NULL,NULL,'0334-2151304',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1412,1,'1412','Taaj Muhammad ','',NULL,'',NULL,'Umer Khan',NULL,NULL,NULL,'0300-9290727',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1413,1,'1413','Wajid Ali ','',NULL,'',NULL,'Baksh Khan',NULL,NULL,NULL,'0331-2939119',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1414,1,'1414','Zulfiqaar Ali','',NULL,'',NULL,'Shahadat Khan',NULL,NULL,NULL,'0301-3287737',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1415,1,'1415','Zulfiqar Ahmed ','',NULL,'',NULL,'Fais Muhammad',NULL,NULL,NULL,'0307-2425245',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1416,1,'1416','Zulfiqar Ahmed ','',NULL,'',NULL,'Muhammad Ishaaq Khan',NULL,NULL,NULL,'0333-2925046',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1417,1,'1417','Zulfiqar Ali','',NULL,'',NULL,' Nazar Muhammad ',NULL,NULL,NULL,'0333-2536221',NULL,'','Ward#4',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1418,1,'1418','Capt. Yaseen Khan','',NULL,'',NULL,'Qasim Ali Khan',NULL,NULL,NULL,'0333-2249927',NULL,'','Ward#5',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1419,1,'1419','Ghulam Nabi','',NULL,'',NULL,'Ahmed Ali Khan',NULL,NULL,NULL,'0331-3890515',NULL,'','Ward#5',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1420,1,'1420','Hafeez Ali Khan','',NULL,'',NULL,'Wahid Ali Khan',NULL,NULL,NULL,'0308-3540263',NULL,'','Ward#5',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1421,1,'1421','Haji Gulzar ','',NULL,'',NULL,'Muhammad Ali Khan',NULL,NULL,NULL,'0300-3057767',NULL,'','Ward#5',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1422,1,'1422','Iftikhar Ahmed ','',NULL,'',NULL,'Mehboob Ali ',NULL,NULL,NULL,'',NULL,'','Ward#5',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1423,1,'1423','Master Mehboob Ali','',NULL,'',NULL,'Ashraf Khan',NULL,NULL,NULL,'',NULL,'','Ward#5',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1424,1,'1424','Muhammad Abbas','',NULL,'',NULL,'Dost Muhammad ',NULL,NULL,NULL,'0305-3791473',NULL,'','Ward#5',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1425,1,'1425','Muhammad Akber','',NULL,'',NULL,'Hoshiar Ali Khan',NULL,NULL,NULL,'',NULL,'','Ward#5',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1426,1,'1426','Muhammad Akber','',NULL,'',NULL,'Shafi Khan',NULL,NULL,NULL,'0301-3281599',NULL,'','Ward#5',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1427,1,'1427','Muhammad Ayoub','',NULL,'',NULL,'Yameen Muhammad',NULL,NULL,NULL,'0336-3149232',NULL,'','Ward#5',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1428,1,'1428','Muhammad Farooq','',NULL,'',NULL,'Hashim Ali ',NULL,NULL,NULL,'0331-3885937',NULL,'','Ward#5',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1429,1,'1429','Muhammad Fayyaz','',NULL,'',NULL,'Qasim Ali Khan',NULL,NULL,NULL,'0332-2158941',NULL,'','Ward#5',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1430,1,'1430','Muhammad Hafeez','',NULL,'',NULL,'Muhammad Yousuf',NULL,NULL,NULL,'0344-3512002',NULL,'','Ward#5',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1431,1,'1431','Muhammad Ilyas ','',NULL,'',NULL,'Dost Muhammad ',NULL,NULL,NULL,'0333-2534265',NULL,'','Ward#5',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1432,1,'1432','Muhammad Islam','',NULL,'',NULL,'Jaffer Ali Khan',NULL,NULL,NULL,'',NULL,'','Ward#5',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1433,1,'1433','Muhammad Islam','',NULL,'',NULL,'Jaffer Ali Khan',NULL,NULL,NULL,'',NULL,'','Ward#5',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1434,1,'1434','Muhammad Jamil Danish','',NULL,'',NULL,'Dr. Jabbar',NULL,NULL,NULL,'0333-2834412',NULL,'','Ward#5',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1435,1,'1435','Muhammad Khalid','',NULL,'',NULL,'Ashar Ali Khan',NULL,NULL,NULL,'0331-2932061',NULL,'','Ward#5',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1436,1,'1436','Muhammad Mukhtear','',NULL,'',NULL,'Muhammad Ali ',NULL,NULL,NULL,'0306-3310058',NULL,'','Ward#5',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1437,1,'1437','Muhammad Nisar','',NULL,'',NULL,'Mehboob Ali ',NULL,NULL,NULL,'0301-3581594',NULL,'','Ward#5',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1438,1,'1438','Muhammad Tasleem','',NULL,'',NULL,'Noor Muhammad ',NULL,NULL,NULL,'0333-2536090',NULL,'','Ward#5',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1439,1,'1439','Muhammad Tufail','',NULL,'',NULL,'Babu Younus',NULL,NULL,NULL,'0333-2981683',NULL,'','Ward#5',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1440,1,'1440','Muhammad Yasin Khan','',NULL,'',NULL,'Rehmat Ali Khan',NULL,NULL,NULL,'0334-2563872',NULL,'','Ward#5',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1441,1,'1441','Muhammad Younus ','',NULL,'',NULL,'Fateh Muhammad ',NULL,NULL,NULL,'0302-3390990',NULL,'','Ward#5',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1442,1,'1442','Muhammd Mukhtear','',NULL,'',NULL,'Muhammad Ishaque',NULL,NULL,NULL,'0333-4445992',NULL,'','Ward#5',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1443,1,'1443','Rashid Ali','',NULL,'',NULL,'Hashim Ali ',NULL,NULL,NULL,'0334-2804919',NULL,'','Ward#5',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1444,1,'1444','Rashid Minhas','',NULL,'',NULL,'Jaffar Ali Khan',NULL,NULL,NULL,'0331-7157230',NULL,'','Ward#5',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1445,1,'1445','Shamshad Ali','',NULL,'',NULL,'Abdul Ghafoor Khan',NULL,NULL,NULL,'0300-3321214',NULL,'','Ward#5',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1446,1,'1446','Shamsher Khan','',NULL,'',NULL,'Fateh Muhammad ',NULL,NULL,NULL,'0335-3755394',NULL,'','Ward#5',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1447,1,'1447','Talib Husain ','',NULL,'',NULL,'Munshi Khan',NULL,NULL,NULL,'0301-3530782',NULL,'','Ward#5',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1448,1,'1448','Abdul Rashed ','',NULL,'',NULL,'Razaq Ahmed ',NULL,NULL,NULL,'0307-3416010',NULL,'','Ward#6',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1449,1,'1449','Altaf Ahmed ','',NULL,'',NULL,'Umeed Khan',NULL,NULL,NULL,'0300-3320307',NULL,'','Ward#6',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1450,1,'1450','Ataf Ahmed ','',NULL,'',NULL,'Mushtaq Ahmed ',NULL,NULL,NULL,'0333-2243517',NULL,'','Ward#6',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1451,1,'1451','Haji Shabeer','',NULL,'',NULL,'Feroz Khan',NULL,NULL,NULL,'0307-3063866',NULL,'','Ward#6',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1452,1,'1452','Israr Ahmed','',NULL,'',NULL,'Muhammad Yaseen',NULL,NULL,NULL,'',NULL,'','Ward#6',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1453,1,'1453','Jabbar Khan','',NULL,'',NULL,'Abdul Hakeem',NULL,NULL,NULL,'0302-3094282',NULL,'','Ward#6',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1454,1,'1454','Jahangeer Ali ','',NULL,'',NULL,' Naseer Khan',NULL,NULL,NULL,'0300-3492669',NULL,'','Ward#6',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1455,1,'1455','Khursheed Ali','',NULL,'',NULL,'Subhan Khan',NULL,NULL,NULL,'0333-4330458',NULL,'','Ward#6',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1456,1,'1456','Liaquat Ali ','',NULL,'',NULL,'Jaffar Ali',NULL,NULL,NULL,'0307-3009349',NULL,'','Ward#6',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1457,1,'1457','Liaquat Ali ','',NULL,'',NULL,'Subhan Khan',NULL,NULL,NULL,'0301-3283755',NULL,'','Ward#6',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1458,1,'1458','Muhamad Abid ','',NULL,'',NULL,'Muqarab Ali ',NULL,NULL,NULL,'0336-3544964',NULL,'','Ward#6',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1459,1,'1459','Muhammad  Irfan ','',NULL,'',NULL,'Umeed Khan',NULL,NULL,NULL,'0342-3085941',NULL,'','Ward#6',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1460,1,'1460','Muhammad Akhlaq','',NULL,'',NULL,'Umeed Khan',NULL,NULL,NULL,'0300-3320319',NULL,'','Ward#6',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1461,1,'1461','Muhammad Arif ','',NULL,'',NULL,'Saleem Ullah ',NULL,NULL,NULL,'0300-3494990',NULL,'','Ward#6',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1462,1,'1462','Muhammad Ashfaq ','',NULL,'',NULL,'Umeed Khan',NULL,NULL,NULL,'0332-2246130',NULL,'','Ward#6',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1463,1,'1463','Muhammad Ayoub ','',NULL,'',NULL,'Muqarab Ali ',NULL,NULL,NULL,'0336-3431173',NULL,'','Ward#6',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1464,1,'1464','Muhammad Hanif','',NULL,'',NULL,'Asghar Ali',NULL,NULL,NULL,'0333-7456053',NULL,'','Ward#6',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1465,1,'1465','Muhammad Hussain','',NULL,'',NULL,'Muhammad Idrees',NULL,NULL,NULL,'0301-3280976',NULL,'','Ward#6',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1466,1,'1466','Muhammad Imran ','',NULL,'',NULL,'Umeed Khan',NULL,NULL,NULL,'0334-2770818',NULL,'','Ward#6',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1467,1,'1467','Muhammad Rafique','',NULL,'',NULL,'Feroz Khan',NULL,NULL,NULL,'0307-3449721',NULL,'','Ward#6',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1468,1,'1468','Muhammad Saddiq ','',NULL,'',NULL,'Mumtaz Ali',NULL,NULL,NULL,'0333-0230229',NULL,'','Ward#6',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1469,1,'1469','Muhammad Sarwar','',NULL,'',NULL,'Abdul Majeed',NULL,NULL,NULL,'0308-3271225',NULL,'','Ward#6',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1470,1,'1470','Muhammad Yaseen','',NULL,'',NULL,'Asghar Ali',NULL,NULL,NULL,'0300-3447731',NULL,'','Ward#6',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1471,1,'1471','Mumtaz Ali ','',NULL,'',NULL,' Muhammad Ali ',NULL,NULL,NULL,'0302-2543695',NULL,'','Ward#6',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1472,1,'1472','Mumtaz Ali ','',NULL,'',NULL,' Muhammad Khan',NULL,NULL,NULL,'0334-2552502',NULL,'','Ward#6',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1473,1,'1473','Naeemullah  Khan','',NULL,'',NULL,'Ehsan Ullah ',NULL,NULL,NULL,'0300-2300560',NULL,'','Ward#6',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1474,1,'1474','Shoukat Ali ','',NULL,'',NULL,'Qasim Ali',NULL,NULL,NULL,'0303-3157830',NULL,'','Ward#6',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1475,1,'1475','Shoukat Ali ','',NULL,'',NULL,'Subhan Khan',NULL,NULL,NULL,'0333-2776620',NULL,'','Ward#6',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1476,1,'1476','Zain-ul-Abidin','',NULL,'',NULL,'Munwar Khan',NULL,NULL,NULL,'0302-2907988',NULL,'','Ward#6',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1477,1,'1477','Abdul Hamed (Let)','',NULL,'',NULL,'Ata Ullah',NULL,NULL,NULL,'0333-3630340',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1478,1,'1478','Abdul Jabbar','',NULL,'',NULL,'Jaffar Ali',NULL,NULL,NULL,'0307-3437400',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1479,1,'1479','Abdul Jabbar','',NULL,'',NULL,'Khan Muhammad',NULL,NULL,NULL,'0302-2517808',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1480,1,'1480','Abdul Jabbar ','',NULL,'',NULL,'Muhamma Yamin',NULL,NULL,NULL,'0333-2533154',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1481,1,'1481','Abdul Khaliq','',NULL,'',NULL,' Muhammad Sidduique',NULL,NULL,NULL,'0334-3705773',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1482,1,'1482','Abdul Qadeer ','',NULL,'',NULL,'Abdul Azizi',NULL,NULL,NULL,'0302-2667982',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1483,1,'1483','Abdul Saboor ','',NULL,'',NULL,'Muhammad Siddique',NULL,NULL,NULL,'0333-2511290',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1484,1,'1484','Abdul Sattar ','',NULL,'',NULL,'Aiwaz Khan',NULL,NULL,NULL,'',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1485,1,'1485','Abid Gulaab','',NULL,'',NULL,'Muhammad Gulaab',NULL,NULL,NULL,'0302-3971935',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1486,1,'1486','Ahsan','',NULL,'',NULL,'Kareem Khan',NULL,NULL,NULL,'',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1487,1,'1487','Akhtar Hussain ','',NULL,'',NULL,'Muhammad Hanif',NULL,NULL,NULL,'0333-9209333',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1488,1,'1488','Ala Bachayo','',NULL,'',NULL,'Fareed Khan',NULL,NULL,NULL,'0300-3316288',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1489,1,'1489','Ali Hamed ','',NULL,'',NULL,'Yousufi Ali',NULL,NULL,NULL,'0334-2100726',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1490,1,'1490','Ali Hasan','',NULL,'',NULL,'Munshi Khan',NULL,NULL,NULL,'0307-0939454',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1491,1,'1491','Ali Raza ','',NULL,'',NULL,'Ali Sher',NULL,NULL,NULL,'0308-3812755',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1492,1,'1492','Ali Sher ','',NULL,'',NULL,'Hidayat Ali Khan',NULL,NULL,NULL,'0300-3323527',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1493,1,'1493','Ali Sher ','',NULL,'',NULL,'Shoukat Ali',NULL,NULL,NULL,'0305-3274849',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1494,1,'1494','Asghar Ali','',NULL,'',NULL,' Arshad Ali',NULL,NULL,NULL,'',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1495,1,'1495','Azhar ','',NULL,'',NULL,'Sabir ',NULL,NULL,NULL,'0331-6950925',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1496,1,'1496','Fiaz Ahmed ','',NULL,'',NULL,'Muhammad Sadiq ',NULL,NULL,NULL,'0333-2544266',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1497,1,'1497','Hafiz Naseem','',NULL,'',NULL,'Asad Ali Khan',NULL,NULL,NULL,'',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1498,1,'1498','Hafiz Waseem','',NULL,'',NULL,'Asad Ali Khan',NULL,NULL,NULL,'',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1499,1,'1499','Iftikhar Ahmed ','',NULL,'',NULL,'Shabir Ahmed ',NULL,NULL,NULL,'0336-3225582',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1500,1,'1500','Inayat','',NULL,'',NULL,'Baha-Udin Khan',NULL,NULL,NULL,'0333-8802867',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1501,1,'1501','Ishtiaq Ahmed','',NULL,'',NULL,'',NULL,NULL,NULL,'0331-2937842',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1502,1,'1502','Jang Sher','',NULL,'',NULL,'Ahsan',NULL,NULL,NULL,'',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1503,1,'1503','Jang Sher','',NULL,'',NULL,'Hayat Muhammad',NULL,NULL,NULL,'0334-3583710',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1504,1,'1504','Jawaid Ahmed','',NULL,'',NULL,'Abdul Majeed',NULL,NULL,NULL,'0305-3141603',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1505,1,'1505','M .Iqbal ','',NULL,'',NULL,'Basheer Khan',NULL,NULL,NULL,'',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1506,1,'1506','M Mushtaq Ahmed ','',NULL,'',NULL,'Kaly Khan',NULL,NULL,NULL,'',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1507,1,'1507','Maqsood Ali ','',NULL,'',NULL,'Imdad Ali',NULL,NULL,NULL,'0302-2955239',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1508,1,'1508','Mohammad Ahmed ','',NULL,'',NULL,' Muhammad Ayoob',NULL,NULL,NULL,'  0301-3636133',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1509,1,'1509','Mohammad Zafar','',NULL,'',NULL,'Dost Muhammad ',NULL,NULL,NULL,'',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1510,1,'1510','Muhammad Ahsan','',NULL,'',NULL,'Shamsher Ali',NULL,NULL,NULL,'0300-3424622',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1511,1,'1511','Muhammad Akram','',NULL,'',NULL,'Ghulam Muhammad',NULL,NULL,NULL,'0346-3768019',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1512,1,'1512','Muhammad Akram','',NULL,'',NULL,'Haji Raqmudin',NULL,NULL,NULL,'0333-2581791',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1513,1,'1513','Muhammad Akram ','',NULL,'',NULL,'Akber Ali',NULL,NULL,NULL,'0300-3324067',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1514,1,'1514','Muhammad Arif ','',NULL,'',NULL,'Khutumudin Risaldar',NULL,NULL,NULL,'',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1515,1,'1515','Muhammad Asghar','',NULL,'',NULL,'Muhammad Hashim',NULL,NULL,NULL,'0334-2633237',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1516,1,'1516','Muhammad Asif','',NULL,'',NULL,'Muhammad Akram',NULL,NULL,NULL,'0300-2563430',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1517,1,'1517','Muhammad Aslam','',NULL,'',NULL,'Hayat Muhammad',NULL,NULL,NULL,'0334-3027080',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1518,1,'1518','Muhammad Aslam','',NULL,'',NULL,'Muhammad Yousuf',NULL,NULL,NULL,'0332-3785285',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1519,1,'1519','Muhammad Aslam','',NULL,'',NULL,'Mumtaz Ali',NULL,NULL,NULL,'0301-3280050',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1520,1,'1520','Muhammad Aslam ','',NULL,'',NULL,'Abdul Hameed ',NULL,NULL,NULL,'0336-3308330',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1521,1,'1521','Muhammad Aslam ','',NULL,'',NULL,'Mehboob Ali ',NULL,NULL,NULL,'0302-2743706',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1522,1,'1522','Muhammad Ayoob ','',NULL,'',NULL,'Imdad Ali',NULL,NULL,NULL,'0333-2606594',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1523,1,'1523','Muhammad Ayoob ','',NULL,'',NULL,'Jaffar Ali',NULL,NULL,NULL,'0300-9215112',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1524,1,'1524','Muhammad Azaad','',NULL,'',NULL,'Zishan Ali',NULL,NULL,NULL,'0345-3718151',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1525,1,'1525','Muhammad Bilal','',NULL,'',NULL,'Muhammad Yamin',NULL,NULL,NULL,'0334-3054198',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1526,1,'1526','Muhammad Farooq','',NULL,'',NULL,'Farzand Ali',NULL,NULL,NULL,'0300-3323359',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1527,1,'1527','Muhammad Farooq','',NULL,'',NULL,'Muhammad Yousuf',NULL,NULL,NULL,'',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1528,1,'1528','Muhammad Hussain','',NULL,'',NULL,'Ibrahim Khan',NULL,NULL,NULL,'0334-2633417',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1529,1,'1529','Muhammad Iftikhar','',NULL,'',NULL,'Yousuf  Ali',NULL,NULL,NULL,'0303-3161052',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1530,1,'1530','Muhammad Imran','',NULL,'',NULL,'Muhammad Yousuf',NULL,NULL,NULL,'',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1531,1,'1531','Muhammad Iqbal','',NULL,'',NULL,'Hashim Ali',NULL,NULL,NULL,'0307-4594966',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1532,1,'1532','Muhammad Ishaq','',NULL,'',NULL,'Ahsan',NULL,NULL,NULL,'',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1533,1,'1533','Muhammad Jabbar','',NULL,'',NULL,'Umeed Ali',NULL,NULL,NULL,'0303-3153628',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1534,1,'1534','Muhammad Jameed Khan','',NULL,'',NULL,'Dost Muhammad ',NULL,NULL,NULL,'',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1535,1,'1535','Muhammad Jawaid ','',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1536,1,'1536','Muhammad Jawaid ','',NULL,'',NULL,'Umar Ali ',NULL,NULL,NULL,'0336-2110220',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1537,1,'1537','Muhammad Luqman','',NULL,'',NULL,'Asad Ali',NULL,NULL,NULL,'0331-3802140',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1538,1,'1538','Muhammad Mehmood','',NULL,'',NULL,'Muhammad Ayoob',NULL,NULL,NULL,'',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1539,1,'1539','Muhammad Mubeen','',NULL,'',NULL,'Yaseen Khan',NULL,NULL,NULL,'0331-3891884',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1540,1,'1540','Muhammad Naseem','',NULL,'',NULL,'Hayat Muhammad',NULL,NULL,NULL,'0333-2703042',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1541,1,'1541','Muhammad Qasim ','',NULL,'',NULL,'Hashim Ali ',NULL,NULL,NULL,'0332-5200254',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1542,1,'1542','Muhammad Qayoom','',NULL,'',NULL,'Taaj Muhammad ',NULL,NULL,NULL,'',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1543,1,'1543','Muhammad Sadiq','',NULL,'',NULL,'Muhammad Yaseen',NULL,NULL,NULL,'0308-3579812',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1544,1,'1544','Muhammad Sadiq','',NULL,'',NULL,'Noor Muhammad ',NULL,NULL,NULL,'',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1545,1,'1545','Muhammad Saleem','',NULL,'',NULL,'Abdul Hameed ',NULL,NULL,NULL,'0345-3713591',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1546,1,'1546','Muhammad Shabeer','',NULL,'',NULL,'Azeemudin',NULL,NULL,NULL,'0302-3312128',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1547,1,'1547','Muhammad Shahid ','',NULL,'',NULL,'Khan Muhammad',NULL,NULL,NULL,'',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1548,1,'1548','Muhammad Shoaib','',NULL,'',NULL,'Khan Muhammad ',NULL,NULL,NULL,'0333-2993909',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1549,1,'1549','Muhammad Tariq ','',NULL,'',NULL,'Muhammad Ayoob ',NULL,NULL,NULL,'0332-2487820',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1550,1,'1550','Muhammad Umar','',NULL,'',NULL,'Muhammad Hakeem',NULL,NULL,NULL,'0333-2991989',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1551,1,'1551','Muhammad Wasim ','',NULL,'',NULL,'Muhammad Akram ',NULL,NULL,NULL,'0300-3002639',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1552,1,'1552','Muhammad Yameen','',NULL,'',NULL,'',NULL,NULL,NULL,'0333-2925069',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1553,1,'1553','Muhammad Yamin ','',NULL,'',NULL,'Umeed Ali ',NULL,NULL,NULL,'0300-3304474',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1554,1,'1554','Muhammad Zaheer','',NULL,'',NULL,'Muhammad Basheer',NULL,NULL,NULL,'0331-4598848',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1555,1,'1555','Muhammad Zahid','',NULL,'',NULL,'Abdul Majeed',NULL,NULL,NULL,'0300-3321208',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1556,1,'1556','Munshi Khan ','',NULL,'',NULL,'Nawab Ali',NULL,NULL,NULL,'0335-3971897',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1557,1,'1557','Nasar Ali ','',NULL,'',NULL,'Imdad Ali',NULL,NULL,NULL,'0302-2955239',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1558,1,'1558','Nasir Ali','',NULL,'',NULL,'Hayat Muhammad',NULL,NULL,NULL,'0332-8261509',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1559,1,'1559','Nisaar Ahmed ','',NULL,'',NULL,'Hayat Muhammad',NULL,NULL,NULL,'0302-2155293',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1560,1,'1560','Noushaad Ali9 ','',NULL,'',NULL,'Shamshed Ali ',NULL,NULL,NULL,'0307-3573800',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1561,1,'1561','Pervaiz Ali','',NULL,'',NULL,'Muhamad Basheer',NULL,NULL,NULL,'0333-2547342',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1562,1,'1562','Rafique Ahmed ','',NULL,'',NULL,'Yaseen Khan',NULL,NULL,NULL,'0300-5985201',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1563,1,'1563','Riaz Ahmed','',NULL,'',NULL,' Muhammad Sadiq',NULL,NULL,NULL,'0300-3324671',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1564,1,'1564','Safdar Hanif','',NULL,'',NULL,'Muhammad Hanif',NULL,NULL,NULL,'0333-7312054',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1565,1,'1565','Shakeel Ahmed ','',NULL,'',NULL,'Arshad ',NULL,NULL,NULL,'',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1566,1,'1566','Shamshed Ali ','',NULL,'',NULL,'Abdul Hameed ',NULL,NULL,NULL,'0301-2455005',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1567,1,'1567','Shamsher ','',NULL,'',NULL,'Muhammad Basheer',NULL,NULL,NULL,'0333-2705650',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1568,1,'1568','Umeed Ali','',NULL,'',NULL,'Annu Khan',NULL,NULL,NULL,'0305-2882582',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1569,1,'1569','Waseem Khan','',NULL,'',NULL,'Ahsan',NULL,NULL,NULL,'',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1570,1,'1570','Waseem Muhammad','',NULL,'',NULL,'Hayat Khan',NULL,NULL,NULL,'0300-9098037',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1571,1,'1571','Younus','',NULL,'',NULL,'Nazar Muhammad',NULL,NULL,NULL,'0300-3329352',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1572,1,'1572','Zulfiqaar Ali ','',NULL,'',NULL,'Abdul Hameed ',NULL,NULL,NULL,'0336-2583524',NULL,'','Ward#7',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1573,1,'1573','Abdul Gaffar','',NULL,'',NULL,'Mehboob Ali',NULL,NULL,NULL,'0300-3300395',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1574,1,'1574','Abdul Gaffar ','',NULL,'',NULL,'Abdul Hakeem',NULL,NULL,NULL,'0300-4424644',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1575,1,'1575','Abdul Ghaffar ','',NULL,'',NULL,'Shabeer Ahmed ',NULL,NULL,NULL,'0302-2755210',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1576,1,'1576','Abdul Jabbar','',NULL,'',NULL,'Mehboob Ali',NULL,NULL,NULL,'',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1577,1,'1577','Abdul Jabbar','',NULL,'',NULL,'Muhammad Basheer',NULL,NULL,NULL,'0332-2246715',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1578,1,'1578','Abdul Jabbar ','',NULL,'',NULL,'Shabeer Ahmed ',NULL,NULL,NULL,'0300-3014807',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1579,1,'1579','Abdul Qayoom ','',NULL,'',NULL,'Ruqumdin',NULL,NULL,NULL,'0303-3105266',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1580,1,'1580','Abdul Waseem','',NULL,'',NULL,'Abdul Hameed ',NULL,NULL,NULL,'0300-3325710',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1581,1,'1581','Aijaaz Ali','',NULL,'',NULL,'Haji Nazar Muhammad ',NULL,NULL,NULL,'0304-8450907',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1582,1,'1582','Akber Ali','',NULL,'',NULL,'Asad Ali',NULL,NULL,NULL,'0308-3315920',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1583,1,'1583','Ali ','',NULL,'',NULL,'Muhammad Habeeb',NULL,NULL,NULL,'0332-3384210',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1584,1,'1584','Ali Aahadur','',NULL,'',NULL,'Muhammad Yaseen',NULL,NULL,NULL,'0300-3244485',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1585,1,'1585','Ali Asghar','',NULL,'',NULL,'Nazar Nuhammad ',NULL,NULL,NULL,'0313-3364742',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1586,1,'1586','Ali Asghar','',NULL,'',NULL,'Shabir Ahmed ',NULL,NULL,NULL,'0331-3703880',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1587,1,'1587','Ali Gohar','',NULL,'',NULL,'Muhammad Yaseen',NULL,NULL,NULL,'0300-3244485',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1588,1,'1588','Ali Hassan','',NULL,'',NULL,'Ashique Ali',NULL,NULL,NULL,'0303-2434824',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1589,1,'1589','Ali Hassan ','',NULL,'',NULL,'Nazar Muhammad',NULL,NULL,NULL,'0302-2329085',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1590,1,'1590','Ali Sher ','',NULL,'',NULL,'Nazar Muhammad',NULL,NULL,NULL,'0307-3431787',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1591,1,'1591','Anees Ahmed ','',NULL,'',NULL,'Wahid Ali',NULL,NULL,NULL,'0331-1385635',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1592,1,'1592','Asghar ','',NULL,'',NULL,'Qasim Ali',NULL,NULL,NULL,'0301-2761410',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1593,1,'1593','Asghar Ali','',NULL,'',NULL,'Asad Ali',NULL,NULL,NULL,'0301-3996882',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1594,1,'1594','Azaad Ali','',NULL,'',NULL,'Mumtaz Ali',NULL,NULL,NULL,'0300-3305545',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1595,1,'1595','Bashar Ahmed ','',NULL,'',NULL,'Aleem Khan',NULL,NULL,NULL,'0333-2581789',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1596,1,'1596','Farman Ali','',NULL,'',NULL,'Asad Ali',NULL,NULL,NULL,'',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1597,1,'1597','Ghulaam Mushtaba','',NULL,'',NULL,'Muhammad Yaseen',NULL,NULL,NULL,'0301-3900844',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1598,1,'1598','Ghulam Muhammad ','',NULL,'',NULL,'Shahadat Ali',NULL,NULL,NULL,'',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1599,1,'1599','Gulzaar Ali','',NULL,'',NULL,'Sabdal Ali',NULL,NULL,NULL,'0303-3101874',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1600,1,'1600','Gulzhar Ahmed ','',NULL,'',NULL,'Wahid Ali',NULL,NULL,NULL,'0333-2993524',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1601,1,'1601','Haji Liaqat ','',NULL,'',NULL,'Habib Muhammad',NULL,NULL,NULL,'0332-3300568',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1602,1,'1602','Haji Rashid ','',NULL,'',NULL,'Muhammad Arshad',NULL,NULL,NULL,'',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1603,1,'1603','Ibtekhaab Ali','',NULL,'',NULL,'Wahid Ali',NULL,NULL,NULL,'0311-4089355',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1604,1,'1604','Ikram Hussain','',NULL,'',NULL,'Sabdal Ali',NULL,NULL,NULL,'0315-2079810',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1605,1,'1605','Ilyas ','',NULL,'',NULL,'Muhmmad Usman',NULL,NULL,NULL,'',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1606,1,'1606','Imran Khan','',NULL,'',NULL,'Muhammad Ishaq ',NULL,NULL,NULL,'0331-5296768',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1607,1,'1607','Jameel Khan','',NULL,'',NULL,'Turab Ali',NULL,NULL,NULL,'0334-3000287',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1608,1,'1608','Jawaid ','',NULL,'',NULL,'Jabbar',NULL,NULL,NULL,'',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1609,1,'1609','Jawaid Habeeb','',NULL,'',NULL,'Muhammad Habeeb',NULL,NULL,NULL,'0300-3134747',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1610,1,'1610','Jawaid Iqbal','',NULL,'',NULL,'Haji Nazar Muhammad ',NULL,NULL,NULL,'0301-3327715',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1611,1,'1611','Khalid Waheed','',NULL,'',NULL,' Khan Muhammad',NULL,NULL,NULL,'0300-2893794',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1612,1,'1612','Khalid Waheed','',NULL,'',NULL,'Abdul Gafoor',NULL,NULL,NULL,'',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1613,1,'1613','Maqsood Ahmed','',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1614,1,'1614','Maqsood Ali','',NULL,'',NULL,'Aashiq Ali',NULL,NULL,NULL,'0333-2916332',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1615,1,'1615','Mehmood Ali','',NULL,'',NULL,'Aashiq Ali',NULL,NULL,NULL,'0333-2916332',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1616,1,'1616','Mehmood Ali','',NULL,'',NULL,'Abdul Gafoor',NULL,NULL,NULL,'0334-9490800',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1617,1,'1617','Muhammad Abid','',NULL,'',NULL,'Wahid Ali',NULL,NULL,NULL,'0301-3853457',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1618,1,'1618','Muhammad Akram','',NULL,'',NULL,'Asad Ali',NULL,NULL,NULL,'0302-2385009',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1619,1,'1619','Muhammad Altaf','',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1620,1,'1620','Muhammad Arshad','',NULL,'',NULL,'',NULL,NULL,NULL,'0308-3958710',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1621,1,'1621','Muhammad Arshad','',NULL,'',NULL,'Muhammad Yaseen',NULL,NULL,NULL,'',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1622,1,'1622','Muhammad Ashghar','',NULL,'',NULL,'Nazar Muhammad',NULL,NULL,NULL,'0313-3364742',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1623,1,'1623','Muhammad Asif','',NULL,'',NULL,'Asad Ali',NULL,NULL,NULL,'0302-3317741',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1624,1,'1624','Muhammad Aslam','',NULL,'',NULL,'Asad Ali',NULL,NULL,NULL,'0300-3025060',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1625,1,'1625','Muhammad Aslam','',NULL,'',NULL,'Muhammad Ali Khan',NULL,NULL,NULL,'',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1626,1,'1626','Muhammad Aslam','',NULL,'',NULL,'Nazar Muhammad',NULL,NULL,NULL,'0306-3267519',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1627,1,'1627','Muhammad Aslam','',NULL,'',NULL,'Nazar Muhammad',NULL,NULL,NULL,'0332-3260251',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1628,1,'1628','Muhammad Ayoob ','',NULL,'',NULL,'Nazar Muhammad',NULL,NULL,NULL,'0300-8257070',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1629,1,'1629','Muhammad Ayoub','',NULL,'',NULL,'Asad Ali',NULL,NULL,NULL,'0334-2805010',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1630,1,'1630','Muhammad Dilawar','',NULL,'',NULL,'Muhammad Akram',NULL,NULL,NULL,'0305-2963289',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1631,1,'1631','Muhammad Hussain','',NULL,'',NULL,'Abdul Majeed',NULL,NULL,NULL,'0305-2124934',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1632,1,'1632','Muhammad Idrees','',NULL,'',NULL,'Nazar Muhammad',NULL,NULL,NULL,'0306-3080638',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1633,1,'1633','Muhammad Ilyas Khan ','',NULL,'',NULL,'Jahi Faiz Muhammad Khan',NULL,NULL,NULL,'0333-2018160',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1634,1,'1634','Muhammad Imran','',NULL,'',NULL,'Muhammad Arshad',NULL,NULL,NULL,'0333-2533031',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1635,1,'1635','Muhammad Iqbal','',NULL,'',NULL,'Asad Ali',NULL,NULL,NULL,'03333-2596319',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1636,1,'1636','Muhammad Iqbal','',NULL,'',NULL,'Haji Nazar Muhammad ',NULL,NULL,NULL,'0301-2800181',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1637,1,'1637','Muhammad Iqbal','',NULL,'',NULL,'Wahid Ali',NULL,NULL,NULL,'0306-8224286',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1638,1,'1638','Muhammad Ishaque','',NULL,'',NULL,'Muhammad Yaseen',NULL,NULL,NULL,'0300-3054600',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1639,1,'1639','Muhammad Jameel','',NULL,'',NULL,'Muhammad Yaseen',NULL,NULL,NULL,'0307-3435478',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1640,1,'1640','Muhammad Jawaid','',NULL,'',NULL,'Muhammad Yaseen',NULL,NULL,NULL,'0306-3405423',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1641,1,'1641','Muhammad Jawaid','',NULL,'',NULL,'Wahid Ali',NULL,NULL,NULL,'0302-3054902',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1642,1,'1642','Muhammad Kashif ','',NULL,'',NULL,'Nazar Muhammad',NULL,NULL,NULL,'0302-2329085',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1643,1,'1643','Muhammad Kashif ','',NULL,'',NULL,'Shabeer Ahmed ',NULL,NULL,NULL,'0344-3737732',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1644,1,'1644','Muhammad Luqman','',NULL,'',NULL,'Muhammad Usman',NULL,NULL,NULL,'',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1645,1,'1645','Muhammad Masood ','',NULL,'',NULL,'Hidayat Ali',NULL,NULL,NULL,'',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1646,1,'1646','Muhammad Nadeem','',NULL,'',NULL,'Abdul Hameed ',NULL,NULL,NULL,'0302-3316345',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1647,1,'1647','Muhammad Rashid','',NULL,'',NULL,'Muhmmad Usman',NULL,NULL,NULL,'',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1648,1,'1648','Muhammad Sabir','',NULL,'',NULL,'Muhammad Ameen',NULL,NULL,NULL,'0334-2782400',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1649,1,'1649','Muhammad Saleem','',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1650,1,'1650','Muhammad Sami','',NULL,'',NULL,'Hidayat Ali',NULL,NULL,NULL,'',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1651,1,'1651','Muhammad Sami','',NULL,'',NULL,'',NULL,NULL,NULL,'0308-3563544',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1652,1,'1652','Muhammad Shahid ','',NULL,'',NULL,'Muhammad Hanif',NULL,NULL,NULL,'0300-3850054',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1653,1,'1653','Muhammad Shakir','',NULL,'',NULL,'Nasir Ali',NULL,NULL,NULL,'0301-3702179',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1654,1,'1654','Muhammad Suleman','',NULL,'',NULL,' Muhammad Sidduique',NULL,NULL,NULL,'',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1655,1,'1655','Muhammad Tariq','',NULL,'',NULL,'Jaffar Khan',NULL,NULL,NULL,'0300-3323455',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1656,1,'1656','Muhammad Usman','',NULL,'',NULL,'Safdar Khan',NULL,NULL,NULL,'0300-4998789',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1657,1,'1657','Muhammad Waseem ','',NULL,'',NULL,'Abdul Rasheed ',NULL,NULL,NULL,'',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1658,1,'1658','Muhammad Younus ','',NULL,'',NULL,'Haji Ruqamdin',NULL,NULL,NULL,'0334-2957201',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1659,1,'1659','Muhammad Younus ','',NULL,'',NULL,'Muhammad Saleem',NULL,NULL,NULL,'0307-3440645',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1660,1,'1660','Muhammad Younus ','',NULL,'',NULL,'Taaj Muhammad ',NULL,NULL,NULL,'0300-3513946  ',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1661,1,'1661','Muhammad Zia Ul Haq','',NULL,'',NULL,'Hidayat Ali',NULL,NULL,NULL,'',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1662,1,'1662','Muhammd Rauf','',NULL,'',NULL,'Abdul Aziz',NULL,NULL,NULL,'0312-2878910',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1663,1,'1663','Mushtaq Ahmed','',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1664,1,'1664','Mushtaq Usman','',NULL,'',NULL,'Risaal Dar Haji Khan',NULL,NULL,NULL,'0345-3710085',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1665,1,'1665','Nasar Ali','',NULL,'',NULL,'Imanudin',NULL,NULL,NULL,'0333-3323892',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1666,1,'1666','Saleem ','',NULL,'',NULL,'Asad Ali',NULL,NULL,NULL,'0300-3323522',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1667,1,'1667','Shabbir Ahmed ','',NULL,'',NULL,'Aleem Khan',NULL,NULL,NULL,'0301-3222077',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1668,1,'1668','Shahid Ahmed ','',NULL,'',NULL,'Abdul Majeed (Late)',NULL,NULL,NULL,'0300-3066850',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1669,1,'1669','Shahzad Ali','',NULL,'',NULL,'Zishan Ali',NULL,NULL,NULL,'0334-2817488',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1670,1,'1670','Shakeel Ahmed ','',NULL,'',NULL,'Abdul Majeed (Late)',NULL,NULL,NULL,'0307-3514706',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1671,1,'1671','Shamsher Ali','',NULL,'',NULL,'Nazar Muhammad',NULL,NULL,NULL,'',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1672,1,'1672','Shoaib Ahmed ','',NULL,'',NULL,'Abdul Majeed (Late)',NULL,NULL,NULL,'0300-943287',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1673,1,'1673','Shuakat Ali','',NULL,'',NULL,'Qasim Ali',NULL,NULL,NULL,'',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1674,1,'1674','Shuakat Ali','',NULL,'',NULL,'Taaj Muhammad ',NULL,NULL,NULL,'0305-3274849',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1675,1,'1675','Tahir Ali','',NULL,'',NULL,'Muhammad Ameen',NULL,NULL,NULL,'0300-3323505',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1676,1,'1676','Tahir Mohib','',NULL,'',NULL,'Mehboob Ali',NULL,NULL,NULL,'0334-3706065',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1677,1,'1677','Zia Ul Haq ','',NULL,'',NULL,'Muhammad Siddque',NULL,NULL,NULL,'',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1678,1,'1678','Zulfikaar Ali','',NULL,'',NULL,'Haji Nazar Muhammad ',NULL,NULL,NULL,'0344-3748417',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1679,1,'1679','Zulfiqaar Ali','',NULL,'',NULL,'Farzand Ali',NULL,NULL,NULL,'0333-1959090',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1680,1,'1680','Zulfiqar','',NULL,'',NULL,'Shabeer Ahmed ',NULL,NULL,NULL,'0300-3321161',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1681,1,'1681','Zulfiqar Ahmed ','',NULL,'',NULL,'Muhammad Yaseen',NULL,NULL,NULL,'0333-2533163',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1682,1,'1682','Zulfiqar Ali','',NULL,'',NULL,'Muhammad Yaseen',NULL,NULL,NULL,'',NULL,'','Ward#8',NULL,NULL,'Sindh','JHUDDO',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1683,1,'1683','Raza Khan','',NULL,'',NULL,'Jaffer Ali Khan',NULL,NULL,NULL,NULL,NULL,'','House#  -',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1684,1,'1684','Muhammad Saror','',NULL,'',NULL,'Mushtaq Ali Khan',NULL,NULL,NULL,'0334-7384824',NULL,'','House#78',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1685,1,'1685','Manzoor','',NULL,'',NULL,'Amjad Ali Khan',NULL,NULL,NULL,'0300-3358625',NULL,'','House#80',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1686,1,'1686','Hassan Ali Khan','',NULL,'',NULL,'Alam Ali khan',NULL,NULL,NULL,'0301-3890551',NULL,'','House#82',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1687,1,'1687','Khalid ','',NULL,'',NULL,'Hassan Ali Khan',NULL,NULL,NULL,'0300-3002263',NULL,'','House#83',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1688,1,'1688','Tariq ','',NULL,'',NULL,'Hassan Ali Khan',NULL,NULL,NULL,'0333-0429090',NULL,'','House#83',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1689,1,'1689','Zahid','',NULL,'',NULL,'Azeem Khan',NULL,NULL,NULL,'0300-3092485',NULL,'','House#85',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1690,1,'1690','Athar','',NULL,'',NULL,'Anoor Ali Khan',NULL,NULL,NULL,NULL,NULL,'','House#86',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1691,1,'1691','Khalid Hakeem','',NULL,'',NULL,'Noor Khan',NULL,NULL,NULL,NULL,NULL,'','House# -',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1692,1,'1692','Muhammad Asif','',NULL,'',NULL,'Shareef Khan',NULL,NULL,NULL,'0306-2096461',NULL,'','House#72',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1693,1,'1693','Muhammad Kamran','',NULL,'',NULL,'Shareef Khan',NULL,NULL,NULL,'0313-1305300',NULL,'','House#71',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1694,1,'1694','Muhammad Rizwan','',NULL,'',NULL,'Shareef Khan',NULL,NULL,NULL,'0300-3001816',NULL,'','House#71',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1695,1,'1695','Muhammad Noman','',NULL,'',NULL,'Shareef Khan',NULL,NULL,NULL,'0301-2876006',NULL,'','House#71',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1696,1,'1696','Taaj Muhammad','',NULL,'',NULL,'Khan Muhammad',NULL,NULL,NULL,'0333-2830525',NULL,'','House#74',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1697,1,'1697','Muhammad Iqbal','',NULL,'',NULL,'Amjad Ali Khan',NULL,NULL,NULL,'0305-3607240',NULL,'','House# -',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1698,1,'1698','Muhammad Adnan','',NULL,'',NULL,'Saleem Khan',NULL,NULL,NULL,'0312-3949701',NULL,'','House# -',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1699,1,'1699','Muhammad Islam','',NULL,'',NULL,'Himmat Khan',NULL,NULL,NULL,'0308-3355119',NULL,'','House#43',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1700,1,'1700','Muhammad Iqbal','',NULL,'',NULL,'Hidayat Khan',NULL,NULL,NULL,NULL,NULL,'','House# -',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1701,1,'1701','Muhammad Ibrahim','',NULL,'',NULL,'Azeem Ud Din',NULL,NULL,NULL,'0336-3553567',NULL,'','House#1041',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1702,1,'1702','Amir','',NULL,'',NULL,'Muhammad Ibrahim',NULL,NULL,NULL,NULL,NULL,'','House#1041',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1703,1,'1703','Abid','',NULL,'',NULL,'Abdul Hakeem',NULL,NULL,NULL,'0313-3224820',NULL,'','House#1041',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1704,1,'1704','Ahmed Nasir ','',NULL,'',NULL,'Asghar Ali Khan',NULL,NULL,NULL,'0345-3700394',NULL,'','House# -',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1705,1,'1705','Mushtaq Ahmed ','',NULL,'',NULL,'Mumtaz Ahmed',NULL,NULL,NULL,'0345-3660610',NULL,'','House#34',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1706,1,'1706','Afsheen Haider','',NULL,'',NULL,'Mushtaq Ahmed',NULL,NULL,NULL,'0336-6876744',NULL,'','House#34',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1707,1,'1707','Usman Ghani','',NULL,'',NULL,'Mushtaq Ahmed',NULL,NULL,NULL,'',NULL,'','House#34',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1708,1,'1708','Muhammad Akhtar','',NULL,'',NULL,'Hussain Khan',NULL,NULL,NULL,'0300-3656743',NULL,'','House# -',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1709,1,'1709','Muhammad Qasim','',NULL,'',NULL,'Akhter Ali',NULL,NULL,NULL,'0336-3106104',NULL,'','House#-',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1710,1,'1710','Abdul Qadir','',NULL,'',NULL,'Aleem Khan',NULL,NULL,NULL,'0311-3062748',NULL,'','House#',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1711,1,'1711','Hassan Ali Khan','',NULL,'',NULL,'Yaseen Khan',NULL,NULL,NULL,'0311-3650387',NULL,'','House#',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1712,1,'1712','Muhammad Akram','',NULL,'',NULL,'Mushtaq Khan',NULL,NULL,NULL,'0302-3977345',NULL,'','House#99',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1713,1,'1713','Muhammad Asfar','',NULL,'',NULL,'Ameer Deen Khan',NULL,NULL,NULL,'',NULL,'','House#-',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1714,1,'1714','Muhammad Sabir Khan','',NULL,'',NULL,'Asfar Khan',NULL,NULL,NULL,'0313-3207928',NULL,'','House#-',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1715,1,'1715','Zafer Mubarak','',NULL,'',NULL,'Asghar Ali Khan',NULL,NULL,NULL,NULL,NULL,'','House#-',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1716,1,'1716','Muhammad Tariq','',NULL,'',NULL,'Asghar Ali Khan',NULL,NULL,NULL,'0336-2599090',NULL,'','House#-',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1717,1,'1717','Muhammad Rashid','',NULL,'',NULL,'Asghar Ali Khan',NULL,NULL,NULL,NULL,NULL,'','House#-',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1718,1,'1718','Muhammad  Ali','',NULL,'',NULL,'Asghar Ali Khan',NULL,NULL,NULL,NULL,NULL,'','House#-',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1719,1,'1719','Muhammad Arshad ','',NULL,'',NULL,'Asghar Ali Khan',NULL,NULL,NULL,'0333-5243076',NULL,'','House#',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1720,1,'1720','Shakeel Ahmed ','',NULL,'',NULL,'Saleem Khan',NULL,NULL,NULL,'0306-9191715',NULL,'','House#-',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1721,1,'1721','Taimoor ','',NULL,'',NULL,'Shakeel Ahmed ',NULL,NULL,NULL,NULL,NULL,'','House#-',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1722,1,'1722','Danish ','',NULL,'',NULL,'Islaam Deen Khan',NULL,NULL,NULL,'0333-2835270',NULL,'','House#-',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1723,1,'1723','Ahmed ','',NULL,'',NULL,'Asfeer Khan',NULL,NULL,NULL,'0303-3988722',NULL,'','House#-',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1724,1,'1724','Shahbaz Khan','',NULL,'',NULL,'Karmakab Khan',NULL,NULL,NULL,'0301-3596149',NULL,'','House#-',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1725,1,'1725','Sagheer Ahmed ','',NULL,'',NULL,'Shabeer Ahmed ',NULL,NULL,NULL,NULL,NULL,'','House#-',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1726,1,'1726','Waseem Ahmed ','',NULL,'',NULL,'Shahbaz Ahmed ',NULL,NULL,NULL,NULL,NULL,'','House#',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1727,1,'1727','Muhammad Yousuf','',NULL,'',NULL,'Muhammad Rafique',NULL,NULL,NULL,'0313-2938440',NULL,'','House#',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1728,1,'1728','Muhammad Khalid ','',NULL,'',NULL,'Asghar Khan',NULL,NULL,NULL,'0313-3802492',NULL,'','House#',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1729,1,'1729','Muhammad Junaid ','',NULL,'',NULL,'-',NULL,NULL,NULL,'0313-3802492',NULL,'','House#',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1730,1,'1730','Muhammad Rizwan ','',NULL,'',NULL,'Jafer Ali Khan',NULL,NULL,NULL,'0312-3130365',NULL,'','House#',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1731,1,'1731','Muhammad Mushtaq','',NULL,'',NULL,'Nadeem Ahmed ',NULL,NULL,NULL,'0305-3034340',NULL,'','House#',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1732,1,'1732','Muhammad Saleem','',NULL,'',NULL,'Yaseen Khan',NULL,NULL,NULL,'0312-8884036',NULL,'','House#',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1733,1,'1733','Wqaeel Ahmed ','',NULL,'',NULL,'Ismail Khan',NULL,NULL,NULL,'0332-2783572',NULL,'','House#',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1734,1,'1734','Muhammad Saleem','',NULL,'',NULL,'Saleem Khan',NULL,NULL,NULL,'0307-3128271',NULL,'','House#',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1735,1,'1735','Adnan','',NULL,'',NULL,'Nisar Khan',NULL,NULL,NULL,NULL,NULL,'','House#',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1736,1,'1736','Adil Mushtaq','',NULL,'',NULL,'-',NULL,NULL,NULL,'0333-2836757',NULL,'','House#',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1737,1,'1737','Muhammad Jafer','',NULL,'',NULL,'Jiwan Khan',NULL,NULL,NULL,'0300-3084717',NULL,'','House#391',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1738,1,'1738','Muhammad Rashid ','',NULL,'',NULL,'Aladeen Khan',NULL,NULL,NULL,'0331-7731645',NULL,'','House#424',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1739,1,'1739','Muhammad Waqas','',NULL,'',NULL,'Muhammad Islam',NULL,NULL,NULL,'0312-9922234',NULL,'','House#424',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1740,1,'1740','Zain Anayat','',NULL,'',NULL,'Anayat Ali Khan',NULL,NULL,NULL,'0300-3560929',NULL,'','House#413',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1741,1,'1741','Zubair ','',NULL,'',NULL,'Anayat Ali Khan',NULL,NULL,NULL,'0333-3349066',NULL,'','House#',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1742,1,'1742','Ala Deen Khan','',NULL,'',NULL,'Raheem Khan',NULL,NULL,NULL,'0313-3167078',NULL,'','House#',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1743,1,'1743','Muhammad Kamran','',NULL,'',NULL,'Ala Deen Khan',NULL,NULL,NULL,'0333-0295053',NULL,'','House#129',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1744,1,'1744','Sohail Bin Jafer','',NULL,'',NULL,'Muhammad Jafer',NULL,NULL,NULL,'0332-3980692',NULL,'','House#391',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1745,1,'1745','Muhammad Akram','',NULL,'',NULL,'Jiwan Khan',NULL,NULL,NULL,'0300-3098187',NULL,'','House#477',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1746,1,'1746','Muhammad Younus','',NULL,'',NULL,'Jiwan Khan',NULL,NULL,NULL,'0315-5960353',NULL,'','House#477',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1747,1,'1747','Ghulaam Mustafa','',NULL,'',NULL,'Abdul Hakeem',NULL,NULL,NULL,'0344-3096199',NULL,'','House#481',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1748,1,'1748','Muhammad Waqar','',NULL,'',NULL,'Muhammad Akram',NULL,NULL,NULL,'0333-2836238',NULL,'','House#424',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1749,1,'1749','Shafqat ','',NULL,'',NULL,'Jafer Ali Khan',NULL,NULL,NULL,'0301-3150055',NULL,'','House#-',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1750,1,'1750','Imran Khan','',NULL,'',NULL,'Mustafa Khan',NULL,NULL,NULL,'0344-3096199',NULL,'','House#481',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1751,1,'1751','Abid Khan','',NULL,'',NULL,'Jafer Ali Khan',NULL,NULL,NULL,'0300-3300214',NULL,'','House#857',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1752,1,'1752','Abdullah Khan','',NULL,'',NULL,'Abid Husaain',NULL,NULL,NULL,'0300-600214',NULL,'','House#857',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1753,1,'1753','Asif','',NULL,'',NULL,' Muhammad Aslam',NULL,NULL,NULL,'0331-3628885',NULL,'','House#768',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1754,1,'1754','Haq Nawaz','',NULL,'',NULL,'',NULL,NULL,NULL,'0300-3056900 ',NULL,'','House#867',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1755,1,'1755','Shehzad Ali Khan','',NULL,'',NULL,'-',NULL,NULL,NULL,'0300-3076155',NULL,'','House#-',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1756,1,'1756','Peer Zada Abdullah','',NULL,'',NULL,'-',NULL,NULL,NULL,'0342-3663206',NULL,'','House#',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1757,1,'1757','Shams Yaseen ','',NULL,'',NULL,'Shahzad Ali Khan',NULL,NULL,NULL,'0342-6616666',NULL,'','House#86',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1758,1,'1758','Mehboob Ali Khan','',NULL,'',NULL,'Jabri Khan',NULL,NULL,NULL,NULL,NULL,'','House#430',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1759,1,'1759','Maqsood Khan','',NULL,'',NULL,'Mehboob Ali Khan',NULL,NULL,NULL,'0345-3703069',NULL,'','House#-',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1760,1,'1760','Khusbu Khan','',NULL,'',NULL,'Mehboob Ali Khan',NULL,NULL,NULL,'0307-3074581',NULL,'','House#',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1761,1,'1761','Imran Khan','',NULL,'',NULL,'Mehboob Ali Khan',NULL,NULL,NULL,'0300-3643719',NULL,'','House#',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1762,1,'1762','Imran Khan','',NULL,'',NULL,'Mehboob Ali Khan',NULL,NULL,NULL,'0300-808719',NULL,'','House#',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1763,1,'1763','Muhammad Ali Khan','',NULL,'',NULL,'Mehboob Ali Khan',NULL,NULL,NULL,'0306-3441407',NULL,'','House#061',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1764,1,'1764','Mansoor Ali Khan','',NULL,'',NULL,'Muhammad Ali',NULL,NULL,NULL,'0306-3518044',NULL,'','House#',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1765,1,'1765','Shakeel Ahmed ','',NULL,'',NULL,'Muhammad Iqbal',NULL,NULL,NULL,'0341-9590900',NULL,'','House#46',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1766,1,'1766','Ayub Khan ','',NULL,'',NULL,'Yaqoob Khan',NULL,NULL,NULL,'0312-3746310',NULL,'','House#867',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1767,1,'1767','Shahid Khan','',NULL,'',NULL,'-',NULL,NULL,NULL,'0342-4660260',NULL,'','House#-',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1768,1,'1768','Khalid Khan','',NULL,'',NULL,'-',NULL,NULL,NULL,'0306-3072700',NULL,'','House#-',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1769,1,'1769','Sajid Khan','',NULL,'',NULL,'-',NULL,NULL,NULL,NULL,NULL,'','House#-',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1770,1,'1770','Shahid Khan','',NULL,'',NULL,'Haji Mumtaz Ali',NULL,NULL,NULL,'03022-102900',NULL,'','House#499',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1771,1,'1771','Jawaid Ali Khan','',NULL,'',NULL,'-',NULL,NULL,NULL,'0331-3825570',NULL,'','House#',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1772,1,'1772','Asif Rizwan','',NULL,'',NULL,'-',NULL,NULL,NULL,'0307-7711190',NULL,'','House#-',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1773,1,'1773','Muhammad Ali','',NULL,'',NULL,'Sikandar Ali Khan',NULL,NULL,NULL,'0300-3241732',NULL,'','House#867',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1774,1,'1774','Muhammad Ali Khan','',NULL,'',NULL,'Muhammad Ayub',NULL,NULL,NULL,'0345-3703281',NULL,'','House#498',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1775,1,'1775','Ata Ullah Khan','',NULL,'',NULL,'Nasar Ullah',NULL,NULL,NULL,'0301-3890280',NULL,'','House#498',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1776,1,'1776','Sana Ullah ','',NULL,'',NULL,'-',NULL,NULL,NULL,'0333-2326570',NULL,'','House#498',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1777,1,'1777','Sabir Ali','',NULL,'',NULL,'Anayat Ali Khan',NULL,NULL,NULL,'0300-3039626',NULL,'','House#430',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1778,1,'1778','Doc Muhammad Abbas','',NULL,'',NULL,'Muhammad Yaseen',NULL,NULL,NULL,'0300-3245290',NULL,'','House#999',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1779,1,'1779','Zeeshan','',NULL,'',NULL,'Roshan Ali Khan',NULL,NULL,NULL,'0313-3070594',NULL,'','House#500',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1780,1,'1780','Danish ','',NULL,'',NULL,'Mumtaz',NULL,NULL,NULL,'0345-3703076',NULL,'','House#499',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1781,1,'1781','Naveed','',NULL,'',NULL,'-',NULL,NULL,NULL,'0307-8246606',NULL,'','House#',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1782,1,'1782','Rehan','',NULL,'',NULL,'-',NULL,NULL,NULL,'0342-3645595',NULL,'','House#',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1783,1,'1783','Raheel','',NULL,'',NULL,'-',NULL,NULL,NULL,'0308-3106754',NULL,'','House#',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1784,1,'1784','Moin Uddin','',NULL,'',NULL,'Phool Khan',NULL,NULL,NULL,'0342-3691814',NULL,'','House#426',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1785,1,'1785','Muhammad Nakash','',NULL,'',NULL,'Moin Uddin',NULL,NULL,NULL,NULL,NULL,'','House#',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1786,1,'1786','Muhammad Bilal','',NULL,'',NULL,'Muhammad younus',NULL,NULL,NULL,'0307-8225903',NULL,'','House#426',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1787,1,'1787','Naeem Ul Haq','',NULL,'',NULL,'Abdul Haq',NULL,NULL,NULL,'0306-3408547',NULL,'','House#500',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1788,1,'1788','Muhammad Aslam','',NULL,'',NULL,'Roshan Ali Khan',NULL,NULL,NULL,'0304-3028405',NULL,'','House#',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1789,1,'1789','Majid Ali ','',NULL,'',NULL,'Roshan Ali Khan',NULL,NULL,NULL,'0342-3910262',NULL,'','House#',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1790,1,'1790','Jawaid','',NULL,'',NULL,'Azfer Ali',NULL,NULL,NULL,'0300-3083687',NULL,'','House#499',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1791,1,'1791','Shoaib Alam','',NULL,'',NULL,'Muhammad Aslam',NULL,NULL,NULL,'0302-8039115',NULL,'','House#',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1792,1,'1792','Muhammad Tofique ','',NULL,'',NULL,'Mehboob Ali Khan',NULL,NULL,NULL,'0313-3669392',NULL,'','House#426',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1793,1,'1793','Muhammad Abbas ','',NULL,'',NULL,'-',NULL,NULL,NULL,'0346-3623986',NULL,'','House#',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1794,1,'1794','Jawaid Akhter','',NULL,'',NULL,'-',NULL,NULL,NULL,'0310-3816391',NULL,'','House#',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1795,1,'1795','Junaid Kamran','',NULL,'',NULL,'-',NULL,NULL,NULL,'0344-2160264',NULL,'','House#',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1796,1,'1796','Liaqat Ali ','',NULL,'',NULL,'Hassan Ali Khan',NULL,NULL,NULL,'0332-3922043',NULL,'','House#430',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1797,1,'1797','Muhammad Ali','',NULL,'',NULL,'Hassan Ali Khan',NULL,NULL,NULL,'0306-3079107',NULL,'','House#',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1798,1,'1798','Muhammad Arshad ','',NULL,'',NULL,'Fatah Muhammad ',NULL,NULL,NULL,'0333-2838036',NULL,'','House#403',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1799,1,'1799','Imran Fatah','',NULL,'',NULL,'Fatah Muhammad ',NULL,NULL,NULL,'0300-2367576',NULL,'','House#495',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1800,1,'1800','Kamran','',NULL,'',NULL,'Fatah Muhammad ',NULL,NULL,NULL,'0345-3706641',NULL,'','House#495',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1801,1,'1801','Khalid Fatah','',NULL,'',NULL,'-',NULL,NULL,NULL,'0300-3002636',NULL,'','House#',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1802,1,'1802','Muhammad Waqas','',NULL,'',NULL,'Khalid Fatah',NULL,NULL,NULL,'0345-1395800',NULL,'','House#',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1803,1,'1803','Robail Iqbal ','',NULL,'',NULL,'Iqbal Ali Khan',NULL,NULL,NULL,'0310-3134095',NULL,'','House#430',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1804,1,'1804','Muhammad Waseem','',NULL,'',NULL,'Yaqoob Ali Khan',NULL,NULL,NULL,'0306-2614950',NULL,'','House#',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1805,1,'1805','Muhammad Nadeem','',NULL,'',NULL,'-',NULL,NULL,NULL,'0300-2359190',NULL,'','House#',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1806,1,'1806','Asma Ali','',NULL,'',NULL,'Inayat Ali Khan',NULL,NULL,NULL,'0300-3088485',NULL,'','House#430',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1807,1,'1807','Muhammad Hashim ','',NULL,'',NULL,'Hakim Ali Khan',NULL,NULL,NULL,'0301-3990878',NULL,'','House#',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1808,1,'1808','Muhammad Azam','',NULL,'',NULL,'-',NULL,NULL,NULL,'0307-3040815',NULL,'','House#',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1809,1,'1809','Muhammad  Imran ','',NULL,'',NULL,'-',NULL,NULL,NULL,'0306-3015800',NULL,'','House#',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1810,1,'1810','Muhammad Bilal','',NULL,'',NULL,'-',NULL,NULL,NULL,'0331-3822563',NULL,'','House#',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1811,1,'1811','Ali Sher Khan','',NULL,'',NULL,'Azfer Ali',NULL,NULL,NULL,'0345-3730798',NULL,'','House#430',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1812,1,'1812','Ishtiaq Babar ','',NULL,'',NULL,'Asghar Ali',NULL,NULL,NULL,'0321-3207363',NULL,'','House#',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1813,1,'1813','Ashfaq Ahmed ','',NULL,'',NULL,'-',NULL,NULL,NULL,'0300-3042526',NULL,'','House#',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1814,1,'1814','Muhammad Bilal','',NULL,'',NULL,'Mohiuddin Khan',NULL,NULL,NULL,'0333-3722236',NULL,'','House#',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1815,1,'1815','Hasam Ul Haq ','',NULL,'',NULL,'',NULL,NULL,NULL,'0331-3806070',NULL,'','House#',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1816,1,'1816','Muhammad Kafayat ','',NULL,'',NULL,'Anayat Ali Khan',NULL,NULL,NULL,'0336-2828386',NULL,'','House#430',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1817,1,'1817','Muhammad Abid','',NULL,'',NULL,'-',NULL,NULL,NULL,NULL,NULL,'','House#',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1818,1,'1818','Abdul Rasheed ','',NULL,'',NULL,'Azfer Ali',NULL,NULL,NULL,'0300-9378874',NULL,'','House#430',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1819,1,'1819','Muhammad Zubair','',NULL,'',NULL,'Muhammad yousuf ',NULL,NULL,NULL,'0301-3521575',NULL,'','House#',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1820,1,'1820','Muhammad Tahir ','',NULL,'',NULL,'-',NULL,NULL,NULL,'0300-3448507',NULL,'','House#',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1821,1,'1821','Muhammad shoaib','',NULL,'',NULL,'-',NULL,NULL,NULL,'0310-3816447',NULL,'','House#',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1822,1,'1822','Muhammad Furqan','',NULL,'',NULL,'-',NULL,NULL,NULL,'0301-5071208',NULL,'','House#',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1823,1,'1823','Muhammad Ilyas ','',NULL,'',NULL,'Alim Ali Khan',NULL,NULL,NULL,'0333-8230053',NULL,'','House#',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1824,1,'1824','Muhammad Irshad ','',NULL,'',NULL,'-',NULL,NULL,NULL,'0301-3542975',NULL,'','House#',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1825,1,'1825','Muhammad Shahid','',NULL,'',NULL,'-',NULL,NULL,NULL,'0344-3946118',NULL,'','House#',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1826,1,'1826','Zeeshan Alam','',NULL,'',NULL,'Alam Khan',NULL,NULL,NULL,'0345-3707750',NULL,'','House#430',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1827,1,'1827','Zubair Ahmed Khan','',NULL,'',NULL,'Nazar Ullah',NULL,NULL,NULL,NULL,NULL,'','House#430',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1828,1,'1828','Zunair Ahmed ','',NULL,'',NULL,'Zubair Ahmed ',NULL,NULL,NULL,'0331-3156488',NULL,'','House#',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1829,1,'1829','Docter Irfan','',NULL,'',NULL,'Yousuf Ali Khan',NULL,NULL,NULL,'0332-3312128',NULL,'','House#',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1830,1,'1830','Salah Muhammad ','',NULL,'',NULL,'Raheem Baskh',NULL,NULL,NULL,'0313-3199958',NULL,'','House#853',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1831,1,'1831','Deen Muhammad ','',NULL,'',NULL,'Salah Muhammad ',NULL,NULL,NULL,'0331-38272583',NULL,'','House#',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1832,1,'1832','Ajmal ','',NULL,'',NULL,'Salah Muhammad ',NULL,NULL,NULL,'0313-3199958',NULL,'','House#',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1833,1,'1833','Akber Hassan','',NULL,'',NULL,'Salah Muhammad ',NULL,NULL,NULL,'0304-2703701',NULL,'','House#',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1834,1,'1834','Muhammad Hussain','',NULL,'',NULL,'Salah Muhammad ',NULL,NULL,NULL,'0313-3861014',NULL,'','House#',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1835,1,'1835','Shfih Muhammad ','',NULL,'',NULL,'Salah Muhammad ',NULL,NULL,NULL,'0311-0075393',NULL,'','House#',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1836,1,'1836','Abdullah','',NULL,'',NULL,'Salah Muhammad ',NULL,NULL,NULL,'0332-8992352',NULL,'','House#',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1837,1,'1837','Muhammad Abbbas','',NULL,'',NULL,'Alam Ali khan',NULL,NULL,NULL,'0308-3596034',NULL,'','House#',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1838,1,'1838','Haji Mama Shabbeer','',NULL,'',NULL,'Haji Ullah Baksh',NULL,NULL,NULL,'0344-3436840',NULL,'','House#',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1839,1,'1839','Shahid daad','',NULL,'',NULL,'Dado Ali Khan',NULL,NULL,NULL,'0301-3732649',NULL,'','House#',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1840,1,'1840','Aslam','',NULL,'',NULL,'-',NULL,NULL,NULL,'0336-2268086',NULL,'','House#',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1841,1,'1841','Akram','',NULL,'',NULL,'Mushtak Khan',NULL,NULL,NULL,'0300-3090890',NULL,'','House#',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1842,1,'1842','Wali Muhammad ','',NULL,'',NULL,'Asghar Muhammad',NULL,NULL,NULL,'0313-3348958',NULL,'','House#',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1843,1,'1843','Muhammad Ali','',NULL,'',NULL,'Asghar Ali Khan',NULL,NULL,NULL,'0300-2269826',NULL,'','House#',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1844,1,'1844','Aslam Hussain','',NULL,'',NULL,'Abdullah Hakeem',NULL,NULL,NULL,'0302-3058189',NULL,'','House#',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1845,1,'1845','Ahmed Kamal','',NULL,'',NULL,'Habib Khan',NULL,NULL,NULL,'0307-3688660',NULL,'','House#',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1846,1,'1846','Muhammad Yousuf','',NULL,'',NULL,'Darab Khan',NULL,NULL,NULL,'0300-3034422',NULL,'','House#',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1847,1,'1847','Muhammad Asif ','',NULL,'',NULL,'Darab Khan',NULL,NULL,NULL,'0300-3034433',NULL,'','House#',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1848,1,'1848','Docter Muhammad Aslam','',NULL,'',NULL,'Younus',NULL,NULL,NULL,'0305-2721490',NULL,'','House#',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1849,1,'1849','Jawaid Iqbal','',NULL,'',NULL,'Aleem Khan',NULL,NULL,NULL,'0302-3046960',NULL,'','House#',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1850,1,'1850','Muhammad Umer Farooq','',NULL,'',NULL,'Mama Shabbir',NULL,NULL,NULL,'0321-3624390',NULL,'','House#',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1851,1,'1851','Muhammad Sadiq','',NULL,'',NULL,'Mama Shabbir',NULL,NULL,NULL,'0312-3866900',NULL,'','House#',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1852,1,'1852','Shahzad ','',NULL,'',NULL,'Shamshaad ',NULL,NULL,NULL,'0333-20121330',NULL,'','House# 101 Usmanabad Mirwa Road ',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1853,1,'1853','Abdulhah ','',NULL,'',NULL,'ShoaKat  ',NULL,NULL,NULL,'0312-3637078',NULL,'','House# 102 Usmanabad Mirwa Road ',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1854,1,'1854','Altaf Hussain','',NULL,'',NULL,'Abdul Hamid ',NULL,NULL,NULL,'0300-3086022',NULL,'','House# 126 Usmanabad Mirwa Road ',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1855,1,'1855','Abdul Salam','',NULL,'',NULL,'Abdul Hamid ',NULL,NULL,NULL,'0300-3728690',NULL,'','House# 129 Usmanabad Mirwa Road ',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1856,1,'1856','Muhammad Iqbal ','',NULL,'',NULL,'Bazid Khan',NULL,NULL,NULL,'0300-3085177',NULL,'','House# 16 Rajpot colony Mirwa Road',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1857,1,'1857','Muhammad Ibad','',NULL,'',NULL,'Bazid Khan',NULL,NULL,NULL,'0300-3358649',NULL,'','House# 16 Rajpot colony Mirwa Road',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1858,1,'1858','Muhammad Akram','',NULL,'',NULL,'Ibrahim Sardar',NULL,NULL,NULL,'0301-3564183',NULL,'','House# 19 Rajpot colony Mirwa Road',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1859,1,'1859','Saqib','',NULL,'',NULL,'Abbas',NULL,NULL,NULL,NULL,NULL,'','House# 16 Rajpot colony Mirwa Road',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1860,1,'1860','Suhail','',NULL,'',NULL,'Iqbal ',NULL,NULL,NULL,NULL,NULL,'','House# 16 Rajpot colony Mirwa Road',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1861,1,'1861','Muhammad Yamin','',NULL,'',NULL,'Muhammad Ibrahim',NULL,NULL,NULL,NULL,NULL,'','House# 19 Rajpot colony Mirwa Road',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1862,1,'1862','Muhammad Altaf','',NULL,'',NULL,'Muhammad Ibrahim',NULL,NULL,NULL,NULL,NULL,'','House# 19 Rajpot colony Mirwa Road',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1863,1,'1863','Muhammad Iqbal','',NULL,'',NULL,'Muhammad Ibrahim',NULL,NULL,NULL,'0300-3086048',NULL,'','House# 19 Rajpot colony Mirwa Road',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1864,1,'1864','Muhammad Nadeem','',NULL,'',NULL,'Muhammad Ibrahim',NULL,NULL,NULL,NULL,NULL,'','House# 19 Rajpot colony Mirwa Road',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1865,1,'1865','Nasir Khan','',NULL,'',NULL,'Ziauddin Khan',NULL,NULL,NULL,'0301-3629609',NULL,'','House# 15 Rajpot colony Mirwa Road',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1866,1,'1866','Muhammad Tahir ','',NULL,'',NULL,'Nasir Ali',NULL,NULL,NULL,NULL,NULL,'','House# 15 Rajpot colony Mirwa Road',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1867,1,'1867','Muhammad Tayyab','',NULL,'',NULL,'Nasir Ali',NULL,NULL,NULL,'0302-3962932',NULL,'','House# 15 Rajpot colony Mirwa Road',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1868,1,'1868','Muhammad Rashid','',NULL,'',NULL,'Nasir Ali',NULL,NULL,NULL,NULL,NULL,'','House# 15 Rajpot colony Mirwa Road',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1869,1,'1869','Muhammad Aslam','',NULL,'',NULL,'-',NULL,NULL,NULL,'0304-5632760',NULL,'','House# 24 Rajpot colony Mirwa Road',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1870,1,'1870','Aminullah','',NULL,'',NULL,'Haseebullah ',NULL,NULL,NULL,'0314-2925856',NULL,'','House# 24 Rajpot colony Mirwa Road',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1871,1,'1871','Muhammad Rafiq','',NULL,'',NULL,'Asghar Khan',NULL,NULL,NULL,'0312-6088843',NULL,'','House# 27/28 Rajpot colony Mirwa Road',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1872,1,'1872','Ali Raza','',NULL,'',NULL,'Muhammad Rafiq',NULL,NULL,NULL,'0312-6088843',NULL,'','House# 27/28 Rajpot colony Mirwa Road',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1873,1,'1873','Arsalan','',NULL,'',NULL,'Muhammad Rafiq',NULL,NULL,NULL,'0312-6088843',NULL,'','House# 27/28 Rajpot colony Mirwa Road',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1874,1,'1874','Muhammad Hanif','',NULL,'',NULL,'Munu Khan',NULL,NULL,NULL,'0303-2245602',NULL,'','House# 55 Rajpot colony Mirwa Road',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1875,1,'1875','Abdur Rehman','',NULL,'',NULL,'Muhammad Hanif',NULL,NULL,NULL,'0303-2245602',NULL,'','House# 55 Rajpot colony Mirwa Road',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1876,1,'1876','Muhammad Nasir','',NULL,'',NULL,'Naseer Khan',NULL,NULL,NULL,'0301-3551753',NULL,'','House# 53 Rajpot colony Mirwa Road',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1877,1,'1877','Muhammad Khalid ','',NULL,'',NULL,'Naseer Khan',NULL,NULL,NULL,'0305-9254261',NULL,'','House# 51 Rajpot colony Mirwa Road',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1878,1,'1878','Muhammad Aamir','',NULL,'',NULL,'Naseer Khan',NULL,NULL,NULL,'0305-9254261',NULL,'','House# 51 Rajpot colony Mirwa Road',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1879,1,'1879','Muhammad Shakir','',NULL,'',NULL,'Naseer Khan',NULL,NULL,NULL,'0308-3903142',NULL,'','House# 51 Rajpot colony Mirwa Road',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1880,1,'1880','Naseer Khan','',NULL,'',NULL,'Anwar Khan',NULL,NULL,NULL,'0301-3551753',NULL,'','House# 51 Rajpot colony Mirwa Road',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1881,1,'1881','Muhammad Yaqoob','',NULL,'',NULL,'-',NULL,NULL,NULL,'0331-7731922',NULL,'','House# 22 Rajpot colony Mirwa Road',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1882,1,'1882','Muhammad Yousuf','',NULL,'',NULL,'-',NULL,NULL,NULL,'0313-8532301',NULL,'','House# 05 Rajpot colony Mirwa Road',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1883,1,'1883','Shahzad Ahmed','',NULL,'',NULL,'Shabir Khan',NULL,NULL,NULL,'0345-3712243',NULL,'','House# 63 Rajpot colony Mirwa Road',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1884,1,'1884','Altaf Hussain','',NULL,'',NULL,'Muhammad Yaseen Khan',NULL,NULL,NULL,'0313-3882414',NULL,'','Abdul Ghani Colony Near KK School',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1885,1,'1885','Muhammad Ali','',NULL,'',NULL,'Innayat Ali Khan',NULL,NULL,NULL,'0334-3626307',NULL,'','House# 86 Abdul Ghani Colony Near KK School',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1886,1,'1886','Abdul Jabbar','',NULL,'',NULL,'Abdul Razzaq',NULL,NULL,NULL,'0301-3997650',NULL,'','House# 86 Abdul Ghani Colony Near KK School',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1887,1,'1887','Mohsin Ali ','',NULL,'',NULL,'Maqsood Ali',NULL,NULL,NULL,'0300-8372082',NULL,'','House# 86 Abdul Ghani Colony Near KK School',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1888,1,'1888','Ghulam Husain','',NULL,'',NULL,'Alladin',NULL,NULL,NULL,'0304-6149322',NULL,'','House# 79 Abdul Ghani Colony Near KK School',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1889,1,'1889','Muhammad Alam','',NULL,'',NULL,'Innayat Ali Khan',NULL,NULL,NULL,'0304-5844155',NULL,'','House# 101 Abdul Ghani Colony Near KK School',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1890,1,'1890','Muhammad Dilshad','',NULL,'',NULL,'Babar Ali Khan',NULL,NULL,NULL,'0304-3261699',NULL,'','House# 95 Abdul Ghani Colony Near KK School',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1891,1,'1891','Ghulam Mustafa','',NULL,'',NULL,'Niaz',NULL,NULL,NULL,NULL,NULL,'','House# 60 Abdul Ghani Colony Near KK School',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1892,1,'1892','Muhammad Asghar Khan','',NULL,'',NULL,'Abdul Sattar Khan',NULL,NULL,NULL,'0316-3633858',NULL,'','House# 60 Abdul Ghani Colony Near KK School',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1893,1,'1893','Muhammad Sarwar','',NULL,'',NULL,'Abdul Ghani Khan',NULL,NULL,NULL,NULL,NULL,'','House# 55 Abdul Ghani Colony Near KK School',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1894,1,'1894','Zahid','',NULL,'',NULL,'Niaz',NULL,NULL,NULL,'0304-3261699',NULL,'','House# 60 Abdul Ghani Colony Near KK School',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1895,1,'1895','abdul Iklaque','',NULL,'',NULL,'Abdul Rahim',NULL,NULL,NULL,'0302-3007969',NULL,'','House# 60 Abdul Ghani Colony Near KK School',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1896,1,'1896','Hakim Ali','',NULL,'',NULL,'Rahim Khan',NULL,NULL,NULL,NULL,NULL,'','House# 72 Abdul Ghani Colony Near KK School',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1897,1,'1897','Muhammad Asif','',NULL,'',NULL,'Hakim Khan',NULL,NULL,NULL,'0305-9251994',NULL,'','House# 72 Abdul Ghani Colony Near KK School',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1898,1,'1898','Kashif','',NULL,'',NULL,'Hakim Khan',NULL,NULL,NULL,'0310-3815877',NULL,'','House# 72 Abdul Ghani Colony Near KK School',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1899,1,'1899','Touseef','',NULL,'',NULL,'Hakim Khan',NULL,NULL,NULL,'0301-3454038',NULL,'','House# 72 Abdul Ghani Colony Near KK School',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1900,1,'1900','Muhammad Ali Khan','',NULL,'',NULL,'Haji Sujahat Ali Khan',NULL,NULL,NULL,'0300-3057044',NULL,'','House# 78 Abdul Ghani Colony Near KK School',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1901,1,'1901','Saqib Mehmood','',NULL,'',NULL,'Mehmood Ali Khan',NULL,NULL,NULL,'0300-3057044',NULL,'','House# 78 Abdul Ghani Colony Near KK School',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1902,1,'1902','Asif Mehmood','',NULL,'',NULL,'Mehmood Ali Khan',NULL,NULL,NULL,'0311-7520809',NULL,'','House# 78 Abdul Ghani Colony Near KK School',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1903,1,'1903','Abdul Sattar','',NULL,'',NULL,'Abdul Razzaq',NULL,NULL,NULL,'0300-3084739',NULL,'','House# 78 Abdul Ghani Colony Near KK School',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1904,1,'1904','Abdul Wahab','',NULL,'',NULL,'Abdul Waheed',NULL,NULL,NULL,'0336-0039566',NULL,'','House# 73 Abdul Ghani Colony Near KK School',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1905,1,'1905','Abdul Hanan','',NULL,'',NULL,'Abdul Wahab',NULL,NULL,NULL,'0336-0039566',NULL,'','House# 73 Abdul Ghani Colony Near KK School',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1906,1,'1906','Abdul Ghani','',NULL,'',NULL,'Abdul Rahim Khan',NULL,NULL,NULL,'0313-3067715',NULL,'','House# 74 Abdul Ghani Colony Near KK School',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1907,1,'1907','Waqas Ahmed','',NULL,'',NULL,'Abdul Ghani ',NULL,NULL,NULL,'0313-3067715',NULL,'','House# 74 Abdul Ghani Colony Near KK School',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1908,1,'1908','Muhammad Yaseen','',NULL,'',NULL,'Hidayat Khan',NULL,NULL,NULL,'0301-3430190',NULL,'','House# 39 Amanullah Shah Colony near Chamber Road',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1909,1,'1909','Safdar Ali','',NULL,'',NULL,'-',NULL,NULL,NULL,'0301-3430190',NULL,'','House# 39 Amanullah Shah Colony near Chamber Road',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1910,1,'1910','Mazhar Ali','',NULL,'',NULL,'-',NULL,NULL,NULL,'0301-3430190',NULL,'','House# 39 Amanullah Shah Colony near Chamber Road',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1911,1,'1911','Iqbal Khan','',NULL,'',NULL,'Munu Khan',NULL,NULL,NULL,'0333-2504994',NULL,'','House# 77 Amanullah Shah Colony near Chamber Road',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1912,1,'1912','Muhammad Imran','',NULL,'',NULL,'Nizam Khan',NULL,NULL,NULL,NULL,NULL,'','House# 77 Amanullah Shah Colony near Chamber Road',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1913,1,'1913','Nazim','',NULL,'',NULL,'Nizam Khan',NULL,NULL,NULL,NULL,NULL,'','House# 77 Amanullah Shah Colony near Chamber Road',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1914,1,'1914','Muhammad Salman','',NULL,'',NULL,'Iqbal Khan',NULL,NULL,NULL,NULL,NULL,'','House# 77 Amanullah Shah Colony near Chamber Road',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1915,1,'1915','Ghulam Mustafa','',NULL,'',NULL,'Mumtaz Khan',NULL,NULL,NULL,'0315-2154922',NULL,'','-',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1916,1,'1916','Aslam','',NULL,'',NULL,'Muqarab Khan',NULL,NULL,NULL,NULL,NULL,'','Mirwa Road Tando Allahyar',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1917,1,'1917','Muhammad Shahid','',NULL,'',NULL,'Muhammad Aslam',NULL,NULL,NULL,'0300-3790502',NULL,'','Mirwa Road Tando Allahyar',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1918,1,'1918','Kashif','',NULL,'',NULL,'Muhammad Aslam',NULL,NULL,NULL,'0308-3642364',NULL,'','Mirwa Road Tando Allahyar',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1919,1,'1919','Arsalan','',NULL,'',NULL,'Aslam Khan',NULL,NULL,NULL,'0312-333739',NULL,'','Mirwa Road Tando Allahyar',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1920,1,'1920','Muhammad Nisar','',NULL,'',NULL,'Muqarab Khan',NULL,NULL,NULL,'0310-3134160',NULL,'','Mirwa Road Tando Allahyar',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1921,1,'1921','Asif ','',NULL,'',NULL,'Nisar Ali Khan',NULL,NULL,NULL,NULL,NULL,'','Mirwa Road Tando Allahyar',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1922,1,'1922','Shamsher Ali','',NULL,'',NULL,'Rahim Khan',NULL,NULL,NULL,'0302-3246677',NULL,'','House# 991/15Mirwa Road Tando Allahyar',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1923,1,'1923','Abdul Majeed','',NULL,'',NULL,'-',NULL,NULL,NULL,'0323-3213179',NULL,'','House# 1056 Mirwa Road Tando Allahyar',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1924,1,'1924','Muhammad Aslam','',NULL,'',NULL,'Mukhtar Khan',NULL,NULL,NULL,'0306-3139436',NULL,'','House# 1056 Mirwa Road Tando Allahyar',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1925,1,'1925','Muhammad Waqas','',NULL,'',NULL,'Aslam Khan',NULL,NULL,NULL,NULL,NULL,'','House# 1056 Mirwa Road Tando Allahyar',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1926,1,'1926','Mushtaq Ahmed ','',NULL,'',NULL,'Sadiq Khan',NULL,NULL,NULL,'0301-3457078',NULL,'','House# 440 Mirwa Road Tando Allahyar',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1927,1,'1927','Zeeshan Ahmed','',NULL,'',NULL,'Mushtaq Ahmed ',NULL,NULL,NULL,NULL,NULL,'','House# 440 Mirwa Road Tando Allahyar',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1928,1,'1928','Liaquat Ali','',NULL,'',NULL,'Sadiq Khan',NULL,NULL,NULL,NULL,NULL,'','House# 440 Mirwa Road Tando Allahyar',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1929,1,'1929','Abul Sami','',NULL,'',NULL,'Liaquat Ali',NULL,NULL,NULL,NULL,NULL,'','House# 440 Mirwa Road Tando Allahyar',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1930,1,'1930','Shoukat Ali','',NULL,'',NULL,'Sadiq Khan',NULL,NULL,NULL,'0336-3582931',NULL,'','House# 440 Mirwa Road Tando Allahyar',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1931,1,'1931','Sabir Ali','',NULL,'',NULL,'Sadiq Khan',NULL,NULL,NULL,'0344-3452743',NULL,'','House# 440 Mirwa Road Tando Allahyar',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1932,1,'1932','Muhammad Aslam','',NULL,'',NULL,'Muqarab Khan',NULL,NULL,NULL,'0304-2394132',NULL,'','House# 440 Mirwa Road Tando Allahyar',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1933,1,'1933','Muhammad Bilal','',NULL,'',NULL,'Aslam Khan',NULL,NULL,NULL,'0305-3719898',NULL,'','House# 440 Mirwa Road Tando Allahyar',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1934,1,'1934','Talib Khan','',NULL,'',NULL,'Mukhtar Khan',NULL,NULL,NULL,NULL,NULL,'','House# 1240 Mirwa Road Tando Allahyar',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1935,1,'1935','Saeed Ahmed','',NULL,'',NULL,'Talib Khan',NULL,NULL,NULL,'0300-3012434',NULL,'','House# 999 Mirwa Road Tando Allahyar',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1936,1,'1936','Nasir Ali','',NULL,'',NULL,'Jadder Ali Khan',NULL,NULL,NULL,'0305-2984632',NULL,'','House# 1152 Mirwa Road Tando Allahyar',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1937,1,'1937','Jaffer Ali','',NULL,'',NULL,'Rahim Khan',NULL,NULL,NULL,'0316-3796079',NULL,'','House# 1152 Mirwa Road Tando Allahyar',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1938,1,'1938','Dr. Muhammad Yousuf','',NULL,'',NULL,'Gulab Khan',NULL,NULL,NULL,'0300-3081341',NULL,'','House# 1080 Mirwa Road Tando Allahyar',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1939,1,'1939','Muhammad Arshad ','',NULL,'',NULL,'Bashir Ahmed',NULL,NULL,NULL,'0304-3022438',NULL,'','Mirwa Road Tando Allahyar Near KK School',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1940,1,'1940','Muhammad Adil','',NULL,'',NULL,'Bashir Ahmed',NULL,NULL,NULL,'0303-0344682',NULL,'','Mirwa Road Tando Allahyar Near KK School',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1941,1,'1941','Ubiad Ahmed','',NULL,'',NULL,'Gulab Khan',NULL,NULL,NULL,'0300-3064219',NULL,'','Mirwa Road Tando Allahyar Near KK School',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1942,1,'1942','Muhammad Ilyas ','',NULL,'',NULL,'Hashim Khan',NULL,NULL,NULL,'0310-0337450',NULL,'','House# 1281 Mirwa Road Tando Allahyar Near KK Scho',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1943,1,'1943','Muhamamd Yaseen Khan','',NULL,'',NULL,'-',NULL,NULL,NULL,'0331-3923940',NULL,'','Mirwa Road Tando Allahyar Near KK School',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1944,1,'1944','Muhammad Yousuf Khan ','',NULL,'',NULL,'Muhamamd Yaseen Khan',NULL,NULL,NULL,'0304-2882263',NULL,'','-',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1945,1,'1945','Shahab Ahmed','',NULL,'',NULL,'Muhammad Ilyas ',NULL,NULL,NULL,NULL,NULL,'','-',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1946,1,'1946','Aftab','',NULL,'',NULL,'Muhamamd Yaseen Khan',NULL,NULL,NULL,'0335-8127660',NULL,'','-',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1947,1,'1947','Yasir','',NULL,'',NULL,'Muhamamd Yaseen Khan',NULL,NULL,NULL,'0304-3028009',NULL,'','-',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1948,1,'1948','Mir Murtaza','',NULL,'',NULL,'Muhammad Yousuf Khan ',NULL,NULL,NULL,'0344-3551456',NULL,'','-',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1949,1,'1949','Shamim','',NULL,'',NULL,'Muhammad Yousuf Khan ',NULL,NULL,NULL,NULL,NULL,'','-',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1950,1,'1950','Muhammad Mohsin','',NULL,'',NULL,'Muhammad Yousuf Khan ',NULL,NULL,NULL,NULL,NULL,'','-',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1951,1,'1951','Muhammad Arshad ','',NULL,'',NULL,'Nizam Khan',NULL,NULL,NULL,'0313-3048890',NULL,'','House# 991 Mirwa Road Near Al-Rahim Garden',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1952,1,'1952','Muhammad Mukhtar Khan','',NULL,'',NULL,'Junoon Khan',NULL,NULL,NULL,NULL,NULL,'','Mirwa Road Tando Allahyar Near KK School',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1953,1,'1953','Muhammad Nadeem','',NULL,'',NULL,'Muhammad Mukhtar Khan',NULL,NULL,NULL,'0301-2246052',NULL,'','Jinnah Town Tando Allahyar Near KK School',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1954,1,'1954','Muhammad Saleem','',NULL,'',NULL,'Muhammad Mukhtar Khan',NULL,NULL,NULL,'0300-3538334',NULL,'','-',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1955,1,'1955','Muhammad Faheem','',NULL,'',NULL,'Muhammad Mukhtar Khan',NULL,NULL,NULL,'0315-0301963',NULL,'','-',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1956,1,'1956','Maqsood Ahmed','',NULL,'',NULL,'-',NULL,NULL,NULL,'0305-1285361',NULL,'','-',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1957,1,'1957','Jamshed Khan','',NULL,'',NULL,'Rafiq Khan',NULL,NULL,NULL,'0300-5522190',NULL,'','Jinnah Town Near KK School',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1958,1,'1958','Rizwan Khan','',NULL,'',NULL,'Rafiq Khan',NULL,NULL,NULL,NULL,NULL,'','Jinnah Town Near KK School',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1959,1,'1959','Rehan Khan','',NULL,'',NULL,'Rafiq Khan',NULL,NULL,NULL,'0331-3816099',NULL,'','Jinnah Town Near KK School',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1960,1,'1960','Shoukat Khan','',NULL,'',NULL,'Muqarab Ali Khan',NULL,NULL,NULL,'0308-3948215',NULL,'','House# 158 Jinnah Town Near KK School',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1961,1,'1961','Muhammad Nadeem Khan','',NULL,'',NULL,'Waris Ali Khan',NULL,NULL,NULL,'0304-2980528',NULL,'','House# 1042 Jinnah Town Near KK School',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1962,1,'1962','Muhammad Rizwan','',NULL,'',NULL,'Waris Ali Khan',NULL,NULL,NULL,'0308-3090377',NULL,'','House# 1042 Jinnah Town Near KK School',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1963,1,'1963','Muhammad Saleem','',NULL,'',NULL,'Waris Ali Khan',NULL,NULL,NULL,'0315-0827330',NULL,'','House# 1042 Jinnah Town Near KK School',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1964,1,'1964','Imran','',NULL,'',NULL,'Jaffer Ali Khan',NULL,NULL,NULL,'0306-3064080',NULL,'','House# 156 Jinnah Town Near KK School',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1965,1,'1965','Abdul Hamid','',NULL,'',NULL,'Jaffer Ali Khan',NULL,NULL,NULL,'0300-3097710',NULL,'','House# 156 Jinnah Town Near KK School',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1966,1,'1966','Nadeem','',NULL,'',NULL,'Alladin Khan',NULL,NULL,NULL,'0304-3088890',NULL,'','House# 126 Jinnah Town Near KK School',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1967,1,'1967','Sher Muhammad','',NULL,'',NULL,'Ali Muhammad',NULL,NULL,NULL,'0305-3704039',NULL,'','House# 116 Jinnah Town Near KK School',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1968,1,'1968','Muneer Khan','',NULL,'',NULL,'Habib Khan',NULL,NULL,NULL,'0306-8872708',NULL,'','House# 116 Jinnah Town Near KK School',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1969,1,'1969','Faiz Muhammad ','',NULL,'',NULL,'Waris Ali Khan',NULL,NULL,NULL,'0300-2933128',NULL,'','House# 118 Jinnah Town Near KK School',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1970,1,'1970','Nadeem','',NULL,'',NULL,'Sher Khan',NULL,NULL,NULL,'0303-3029001',NULL,'','House# 118 Jinnah Town Near KK School',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1971,1,'1971','Younus','',NULL,'',NULL,'Alladin Khan',NULL,NULL,NULL,'0300-2389070',NULL,'','House# 120 Jinnah Town Near KK School',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1972,1,'1972','Bashir Khan','',NULL,'',NULL,'Qasim Ali Khan',NULL,NULL,NULL,'0300-3001997',NULL,'','House# 121 Jinnah Town Near KK School',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1973,1,'1973','Saleem ','',NULL,'',NULL,'Yaseen Khan',NULL,NULL,NULL,'0305-3377002',NULL,'','House# 123 Jinnah Town Near KK School',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1974,1,'1974','Waseem','',NULL,'',NULL,'Yaseen Khan',NULL,NULL,NULL,'0300-3800580',NULL,'','House# 124 Jinnah Town Near KK School',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1975,1,'1975','Muhamamd Shoaib','',NULL,'',NULL,'Faiz Muhammad ',NULL,NULL,NULL,'0301-3544019',NULL,'','House# 118 Jinnah Town Near KK School',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1976,1,'1976','Haji Liaquat','',NULL,'',NULL,'Azeem Khan',NULL,NULL,NULL,'0300-3319995',NULL,'','House# 125 Jinnah Town Near KK School',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1977,1,'1977','Abdul Manan','',NULL,'',NULL,'Haji Liaquat Khan',NULL,NULL,NULL,'0333-8002185',NULL,'','Jinnah Town Near KK School',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1978,1,'1978','Abdul Rehman','',NULL,'',NULL,'Haji Liaquat Khan',NULL,NULL,NULL,'0300-3093997',NULL,'','Jinnah Town Near KK School',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1979,1,'1979','Abdul Hanan','',NULL,'',NULL,'Haji Liaquat Khan',NULL,NULL,NULL,'0300-8384931',NULL,'','Jinnah Town Near KK School',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1980,1,'1980','Muhammad Ali','',NULL,'',NULL,'Azeem Khan',NULL,NULL,NULL,'0302-3671228',NULL,'','House# 100 Jinnah Town Near KK School',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1981,1,'1981','Azmat Ali Khan','',NULL,'',NULL,'Munawar Ali Khan',NULL,NULL,NULL,NULL,NULL,'','House# 103 Jinnah Town Near KK School',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1982,1,'1982','Muhammad Asif','',NULL,'',NULL,'Azmat Ali Khan',NULL,NULL,NULL,'0333-9031090',NULL,'','House# 103 Jinnah Town Near KK School',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1983,1,'1983','Muhammad Arif','',NULL,'',NULL,'Azmat Ali Khan',NULL,NULL,NULL,'0301-3512419',NULL,'','House# 103 Jinnah Town Near KK School',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1984,1,'1984','Muhammad Irfan','',NULL,'',NULL,'Azmat Ali Khan',NULL,NULL,NULL,NULL,NULL,'','House# 103 Jinnah Town Near KK School',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1985,1,'1985','Muhammad Farhan','',NULL,'',NULL,'Azmat Ali Khan',NULL,NULL,NULL,'0300-7034071',NULL,'','House# 103 Jinnah Town Near KK School',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1986,1,'1986','Mehmood Khan','',NULL,'',NULL,'Umeed Ali Khan',NULL,NULL,NULL,'0305-8424160',NULL,'','House# 104 Jinnah Town Near KK School',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1987,1,'1987','Mehboob Ali Khan','',NULL,'',NULL,'Umeed Ali Khan',NULL,NULL,NULL,'0302-3994659',NULL,'','House# 104 Jinnah Town Near KK School',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1988,1,'1988','Javed Iqbal','',NULL,'',NULL,'Majeed ',NULL,NULL,NULL,'0333-2870559',NULL,'','House# 104 Jinnah Town Near KK School',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1989,1,'1989','Muhammad Aslam','',NULL,'',NULL,'Mustaq Khan',NULL,NULL,NULL,NULL,NULL,'','House# 105 Jinnah Town Near KK School',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1990,1,'1990','Muhammad Arif','',NULL,'',NULL,'Nazar Muhammad Khan',NULL,NULL,NULL,'0304-2391886',NULL,'','House# 105 Jinnah Town Near KK School',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1991,1,'1991','Muhammad Yasir Khan','',NULL,'',NULL,'Shabir Khan',NULL,NULL,NULL,'0331-3827398',NULL,'','House# 106 Jinnah Town Near KK School',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1992,1,'1992','Muhammad Aslam Khan','',NULL,'',NULL,'Nizam Khan',NULL,NULL,NULL,NULL,NULL,'','-',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1993,1,'1993','Muhammad Riaz Khan','',NULL,'',NULL,'Wajid Ali Khan',NULL,NULL,NULL,'0345-6277742',NULL,'','House# 112 Jinnah Town Near KK School',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1994,1,'1994','Muhammad Bilal ','',NULL,'',NULL,'Shabir Khan',NULL,NULL,NULL,'0306-4470309',NULL,'','House# 110 Jinnah Town Near KK School',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1995,1,'1995','Shabir Muhammad ','',NULL,'',NULL,'Ali Muhammad ',NULL,NULL,NULL,NULL,NULL,'','House# 117 Jinnah Town Near KK School',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1996,1,'1996','Muhammad Sarwar','',NULL,'',NULL,'Muhammad Sabir',NULL,NULL,NULL,'0333-2909081',NULL,'','House# 117 Jinnah Town Near KK School',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1997,1,'1997','Muhammad Shakeel','',NULL,'',NULL,'Khalil Khan',NULL,NULL,NULL,'0300-8647990',NULL,'','House# 117 Jinnah Town Near KK School',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1998,1,'1998','Muhammad Iqbal','',NULL,'',NULL,'Bhorey Khan',NULL,NULL,NULL,'0301-3548619',NULL,'','House# 117 Jinnah Town Near KK School',NULL,NULL,'Sindh','Tando Allhyar',NULL,NULL,NULL,'HF Basic Info missing ',0),
(1999,1,'1999','Mustafa Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0333-8288604',NULL,'','Samaro City',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2000,1,'2000','Ghulam Muhammad','',NULL,'',NULL,'',NULL,NULL,NULL,'0333-2647028',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2001,1,'2001','Siraj Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0333-3748557',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2002,1,'2002','Shahzad Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0334-3898433',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2003,1,'2003','Shamshed Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0336-3993926',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2004,1,'2004','Majid Khan(late)','',NULL,'',NULL,'',NULL,NULL,NULL,'0321-2197970',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2005,1,'2005','Abid Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0333-3182365',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2006,1,'2006','Rafique Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0300-3306211',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2007,1,'2007','Shafeeq Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0333-2844666',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2008,1,'2008','Shahbaz Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0333-2993117',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2009,1,'2009','Nadeem Aijaz','',NULL,'',NULL,'',NULL,NULL,NULL,'0333-3888094',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2010,1,'2010','Saleem Aijaz ','',NULL,'',NULL,'',NULL,NULL,NULL,'0321-2197970',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2011,1,'2011','Abid Iqbal Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0300-3304080',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2012,1,'2012','Khalid Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0300-3305211',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2013,1,'2013','Asif','',NULL,'',NULL,'',NULL,NULL,NULL,'0306-8264710',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2014,1,'2014','Arshad Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0333-2975693',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2015,1,'2015','Rashid Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0333-3532359',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2016,1,'2016','Master Khadim Hussain','',NULL,'',NULL,'',NULL,NULL,NULL,'0301-2724290',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2017,1,'2017','Umer Khan ','',NULL,'',NULL,'',NULL,NULL,NULL,'0300-3300138',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2018,1,'2018','Mubarak Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0307-3347890',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2019,1,'2019','Muhammad Hussain','',NULL,'',NULL,'',NULL,NULL,NULL,'0333-2990600',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2020,1,'2020','Liaqat Khan ','',NULL,'',NULL,'',NULL,NULL,NULL,'0332-3196820',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2021,1,'2021','Farooq Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0332-3151255',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2022,1,'2022','Mubarak Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0306-3553787',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2023,1,'2023','Tariq Aziz ','',NULL,'',NULL,'',NULL,NULL,NULL,'0300-3321739',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2024,1,'2024','Kashif Majeed ','',NULL,'',NULL,'',NULL,NULL,NULL,'0333-6643787',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2025,1,'2025','Ali Hassan','',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2026,1,'2026','Aslam Shokat  Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0335-2595755',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2027,1,'2027','Shakil Bilal','',NULL,'',NULL,'',NULL,NULL,NULL,'0331-2177110',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2028,1,'2028','Shabir Inayat Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0300-3309070',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2029,1,'2029','Abdul Waheed Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0333-2834251',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2030,1,'2030','Master Sabir Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0334-3276367',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2031,1,'2031','Amir Mustafa ','',NULL,'',NULL,'',NULL,NULL,NULL,'0333-2992559',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2032,1,'2032','Mansoor Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0333-2834251',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2033,1,'2033','Babar Allah Din Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0301-3919812',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2034,1,'2034','Jawaid Allah Din Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0301-3911085',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2035,1,'2035','Majid Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0300-3249330',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2036,1,'2036','Farooq Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0334-2808648',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2037,1,'2037','Tofique Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0333-3118813',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2038,1,'2038','Ali Raza Ahmed Ali','',NULL,'',NULL,'',NULL,NULL,NULL,'0300-3315485',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2039,1,'2039','Zulfiqar Mushtaq Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0300-8316682',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2040,1,'2040','Allahuddin  ','',NULL,'',NULL,'',NULL,NULL,NULL,'0333-3526702',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2041,1,'2041','Shokat Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0333-0241945',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2042,1,'2042','Sajid Mushtaq','',NULL,'',NULL,'',NULL,NULL,NULL,'0333-2835574',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2043,1,'2043','Tarique Hussain','',NULL,'',NULL,'',NULL,NULL,NULL,'0332-2370847',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2044,1,'2044','Mahfooz Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0300-3055186',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2045,1,'2045','Ali Sher Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0332-9605997',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2046,1,'2046','Laique Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0333-2823774',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2047,1,'2047','Hamid Mustafa ','',NULL,'',NULL,'',NULL,NULL,NULL,'0336-1476660',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2048,1,'2048','Ali Hassan','',NULL,'',NULL,'',NULL,NULL,NULL,'0303-2825360',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2049,1,'2049','Haji Manzoor Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0300-3304090',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2050,1,'2050','Abdul hameed Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0301-3916987',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2051,1,'2051','Asif Hidayat Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0332-9607854',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2052,1,'2052','Master Altaf Hussain','',NULL,'',NULL,'',NULL,NULL,NULL,'0331-2780703',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2053,1,'2053','Iqbal Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0302-2354340',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2054,1,'2054','Arif Mustaq ','',NULL,'',NULL,'',NULL,NULL,NULL,'0300-3321874',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2055,1,'2055','Aurangzaib Shokat ','',NULL,'',NULL,'',NULL,NULL,NULL,'0336-3927990',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2056,1,'2056','Amir Hassan','',NULL,'',NULL,'',NULL,NULL,NULL,'0315-3589635',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2057,1,'2057','Rashid Abid ','',NULL,'',NULL,'',NULL,NULL,NULL,'0333-2945351',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2058,1,'2058','Ilyaas Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0331-2932712',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2059,1,'2059','Rafique Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0312-3242090',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2060,1,'2060','Muhammad yaousuf ','',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2061,1,'2061','Shamshad Mehboob Ali','',NULL,'',NULL,'',NULL,NULL,NULL,'0333-3262861',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2062,1,'2062','Abdul Sattar','',NULL,'',NULL,'',NULL,NULL,NULL,'0301-3228124',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2063,1,'2063','Rashid Abdul Sattar','',NULL,'',NULL,'',NULL,NULL,NULL,'0300-3340390',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2064,1,'2064','Jhangir Sartaaj','',NULL,'',NULL,'',NULL,NULL,NULL,'0333-2991609',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2065,1,'2065','Hussain Shabeer Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0300-2317055',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2066,1,'2066','Imran Mehfooz','',NULL,'',NULL,'',NULL,NULL,NULL,'0332-2625199',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2067,1,'2067','Haji Sher Ali','',NULL,'',NULL,'',NULL,NULL,NULL,'0331-3720194',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2068,1,'2068','Nawab Alladin','',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2069,1,'2069','Nawab Zeeshan','',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2070,1,'2070','Nawab Siraaj Khan','',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2071,1,'2071','Haji Akhter ','',NULL,'',NULL,'',NULL,NULL,NULL,'0333-2606844',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2072,1,'2072','Bilal Shabber','',NULL,'',NULL,'',NULL,NULL,NULL,'0333-2956702',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2073,1,'2073','Habib Allauddin','',NULL,'',NULL,'',NULL,NULL,NULL,'0335-3512533',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2074,1,'2074','Rafique Khan','',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2075,1,'2075','Zain Bilal','',NULL,'',NULL,'',NULL,NULL,NULL,'0333-2960609',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2076,1,'2076','Ali Bhai','',NULL,'',NULL,'',NULL,NULL,NULL,'0332-2808749',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2077,1,'2077','Akram Hashim','',NULL,'',NULL,'',NULL,NULL,NULL,'0302-6879180',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2078,1,'2078','Khalid Yaseen','',NULL,'',NULL,'',NULL,NULL,NULL,'0300-8889190',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2079,1,'2079','Zohaib Sartaaj','',NULL,'',NULL,'',NULL,NULL,NULL,'0300-8829090',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2080,1,'2080','Zubair Sartaaj','',NULL,'',NULL,'',NULL,NULL,NULL,'0333-8876933',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2081,1,'2081','Siraaj Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0333-3182355',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2082,1,'2082','Waleed Hassan','',NULL,'',NULL,'',NULL,NULL,NULL,'0333-3179516',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2083,1,'2083','Shahid Siqqique','',NULL,'',NULL,'',NULL,NULL,NULL,'0300-7876427',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2084,1,'2084','Arif pir jee','',NULL,'',NULL,'',NULL,NULL,NULL,'0334-8216295',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2085,1,'2085','Master Abdul Qayoom','',NULL,'',NULL,'',NULL,NULL,NULL,'0331-2937535',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2086,1,'2086','Abdul Monim ','',NULL,'',NULL,'',NULL,NULL,NULL,'0301-3142011',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2087,1,'2087','Bilal Mustafa','',NULL,'',NULL,'',NULL,NULL,NULL,'0333-7032795',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2088,1,'2088','Guddu Niaz Khan','',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2089,1,'2089','Foji Basheer','',NULL,'',NULL,'',NULL,NULL,NULL,'0334-2525578',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2090,1,'2090','Nawab Jamshed','',NULL,'',NULL,'',NULL,NULL,NULL,'0333-2834374',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2091,1,'2091','Arshad Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0331-2774936',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2092,1,'2092','Nawab Amjad','',NULL,'',NULL,'',NULL,NULL,NULL,'0303-42954780',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2093,1,'2093','Mumtaz Khan','',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2094,1,'2094','Saleem','',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2095,1,'2095','Raju Police','',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2096,1,'2096','Docter Shamshad Khan','',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2097,1,'2097','Ameer Hassan','',NULL,'',NULL,'',NULL,NULL,NULL,'0331-7845384',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2098,1,'2098','Ali Hassan','',NULL,'',NULL,'',NULL,NULL,NULL,'0304-3268518',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2099,1,'2099','Akber Ali','',NULL,'',NULL,'',NULL,NULL,NULL,'0331-3390804',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2100,1,'2100','Hamid Shokat','',NULL,'',NULL,'',NULL,NULL,NULL,'0333-2895576',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2101,1,'2101','Ali Bahi','',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2102,1,'2102','Nawab Aslam Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0332-4779690',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2103,1,'2103','Arsalan Ashfaque','',NULL,'',NULL,'',NULL,NULL,NULL,'0333-3528074',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2104,1,'2104','Imran Mustafa','',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2105,1,'2105','Zaheer Ibrahim','',NULL,'',NULL,'',NULL,NULL,NULL,'0333-2830505',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2106,1,'2106','Khadim Hussain','',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2107,1,'2107','Abid Nasir Khan','',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2108,1,'2108','Jhangir ','',NULL,'',NULL,'',NULL,NULL,NULL,'0301-3144098',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2109,1,'2109','Faisal Bahi','',NULL,'',NULL,'',NULL,NULL,NULL,'0333-7158655',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2110,1,'2110','Nawab Iqbal','',NULL,'',NULL,'',NULL,NULL,NULL,'0333-7158655',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2111,1,'2111','Ishteyaque','',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2112,1,'2112','Sarfaraz Basheer','',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2113,1,'2113','Qari AurangZaib','',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2114,1,'2114','Nawab Adeem','',NULL,'',NULL,'',NULL,NULL,NULL,'0334-0252068',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2115,1,'2115','Muhammad Owais','',NULL,'',NULL,'',NULL,NULL,NULL,'0333-28355064',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2116,1,'2116','Ilyaas ','',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2117,1,'2117','Ghulam Sarwer','',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2118,1,'2118','Shamshed Faiz Khan','',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2119,1,'2119','Sikander Inayat Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0334-2055102',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2120,1,'2120','Anwer Mehboob Khan','',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2121,1,'2121','Khurram Ilahi Buksh','',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2122,1,'2122','Intezar Nabi','',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2123,1,'2123','Nadeem Nabi','',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2124,1,'2124','Haji Hasmat Ali Khan','',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2125,1,'2125','Master Khadim Hussain','',NULL,'',NULL,'',NULL,NULL,NULL,'0300-3213304',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2126,1,'2126','Raes Abdul Hafeez ','',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2127,1,'2127','Ashfaq Usman Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0334-8007402',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2128,1,'2128','Arif Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0305-3544490',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2129,1,'2129','Imran','',NULL,'',NULL,'',NULL,NULL,NULL,'0331-3881981',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2130,1,'2130','Ishteyaque','',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2131,1,'2131','Qasim Ali Khan','',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2132,1,'2132','Arshad Khan','',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2133,1,'2133','Papo Town','',NULL,'',NULL,'',NULL,NULL,NULL,'0333-0275726',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2134,1,'2134','Umad Ali Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0333-2962505',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2135,1,'2135','Iqbal Khan','',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2136,1,'2136','Yousuf  khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0333-7002717',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2137,1,'2137','Master AllaUddin','',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2138,1,'2138','Ahsan Farooq','',NULL,'',NULL,'',NULL,NULL,NULL,'0301-3913867',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2139,1,'2139','Jawad Umad ','',NULL,'',NULL,'',NULL,NULL,NULL,'0333-3442078',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2140,1,'2140','Nazeer Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0301-2501360',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2141,1,'2141','Shabeer Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0333-6749751',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2142,1,'2142','Ali Bahadur ','',NULL,'',NULL,'',NULL,NULL,NULL,'0334-2123438',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2143,1,'2143','Muskhtar Bhai','',NULL,'',NULL,'',NULL,NULL,NULL,'0301-3282304',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2144,1,'2144','Dilawar Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0331-981456',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2145,1,'2145','Jamshed Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0300-3311756',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2146,1,'2146','Islam k.k','',NULL,'',NULL,'',NULL,NULL,NULL,'0333-2995493',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2147,1,'2147','Sikandar Majeed ','',NULL,'',NULL,'',NULL,NULL,NULL,'0301-3550354',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2148,1,'2148','Zia -Ul- Haq','',NULL,'',NULL,'',NULL,NULL,NULL,'0302-3313358',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2149,1,'2149','Amjad Majeed','',NULL,'',NULL,'',NULL,NULL,NULL,'0300-3328428',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2150,1,'2150','Aslam Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0333-6601763',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2151,1,'2151','Babu Irshad','',NULL,'',NULL,'',NULL,NULL,NULL,'0333-3536554',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2152,1,'2152','Shahzad Murad','',NULL,'',NULL,'',NULL,NULL,NULL,'0345-4444045',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2153,1,'2153','Athar Ali','',NULL,'',NULL,'',NULL,NULL,NULL,'0300-3317640',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2154,1,'2154','Asghar Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0300-2080018',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2155,1,'2155','Shabir Shokat Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0307-3448250',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2156,1,'2156','Shahnawaz Kok','',NULL,'',NULL,'',NULL,NULL,NULL,'0301-3288794',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2157,1,'2157','Nawab Imtiaz','',NULL,'',NULL,'',NULL,NULL,NULL,'0336-3010680',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2158,1,'2158','Ilyas Usman','',NULL,'',NULL,'',NULL,NULL,NULL,'0333-2522216',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2159,1,'2159','Mubarak Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0333-2835196',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2160,1,'2160','Shabeer Ali','',NULL,'',NULL,'',NULL,NULL,NULL,'0334-2951787',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2161,1,'2161','Abdul Gaffar Murad','',NULL,'',NULL,'',NULL,NULL,NULL,'0333-3582369',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2162,1,'2162','Kamran ','',NULL,'',NULL,'',NULL,NULL,NULL,'0300-3322096',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2163,1,'2163','Abdul Rehman','',NULL,'',NULL,'',NULL,NULL,NULL,'0333-7154970',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2164,1,'2164','Sultan Jafar','',NULL,'',NULL,'',NULL,NULL,NULL,'0332-2813010',NULL,'','',NULL,NULL,'Sindh','Samaro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2165,1,'2165','Muhammad Jaffer','',NULL,'',NULL,'',NULL,NULL,NULL,'0332-0375851',NULL,'','Sahahi Bazar Sonar Gali ',NULL,NULL,'Sindh','KUNRI',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2166,1,'2166','Muhammad Amin','',NULL,'',NULL,'',NULL,NULL,NULL,'0332-2204817',NULL,'','Sahahi Bazar Sonar Gali ',NULL,NULL,'Sindh','KUNRI',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2167,1,'2167','Muhammad Amir','',NULL,'',NULL,'',NULL,NULL,NULL,'0334-2953235',NULL,'','Sahahi Bazar Sonar Gali ',NULL,NULL,'Sindh','KUNRI',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2168,1,'2168','Imran','',NULL,'',NULL,'',NULL,NULL,NULL,'0333-2509260',NULL,'','Sahahi Bazar Sonar Gali ',NULL,NULL,'Sindh','KUNRI',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2169,1,'2169','Ahsan Zubair','',NULL,'',NULL,'',NULL,NULL,NULL,'0332-2843784',NULL,'','Sahahi Bazar Sonar Gali ',NULL,NULL,'Sindh','KUNRI',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2170,1,'2170','Akbar Siddique','',NULL,'',NULL,'',NULL,NULL,NULL,'0300-3326616',NULL,'','Near Muhammadi Masjid Shahi Bazar',NULL,NULL,'Sindh','KUNRI',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2171,1,'2171','Late Hashim Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'','Near Muhammadi Masjid Shahi Bazar',NULL,NULL,'Sindh','KUNRI',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2172,1,'2172','Nawab','',NULL,'',NULL,'',NULL,NULL,NULL,'0300-3247340',NULL,'','Mirch Mandi Road ',NULL,NULL,'Sindh','KUNRI',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2173,1,'2173','Muhammad Jamil','',NULL,'',NULL,'',NULL,NULL,NULL,'0333-2838746',NULL,'','Mirch Mandi Road ',NULL,NULL,'Sindh','KUNRI',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2174,1,'2174','Muhammad Rafique','',NULL,'',NULL,'',NULL,NULL,NULL,'0333-2667000',NULL,'','Mirch Mandi Road ',NULL,NULL,'Sindh','KUNRI',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2175,1,'2175','Muhammad Shafique','',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'','Mirch Mandi Road ',NULL,NULL,'Sindh','KUNRI',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2176,1,'2176','Shahid Ali','',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'','Mirch Mandi Road ',NULL,NULL,'Sindh','KUNRI',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2177,1,'2177','Liaquat Ali','',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'','Muhallah Ghareebabad Ward# 319',NULL,NULL,'Sindh','KUNRI',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2178,1,'2178','Faiz Muhammad ','',NULL,'',NULL,'',NULL,NULL,NULL,'0334-3933449',NULL,'','Muhallah Ghareebabad Ward# 319',NULL,NULL,'Sindh','KUNRI',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2179,1,'2179','Muhammad Fayaz','',NULL,'',NULL,'',NULL,NULL,NULL,'0333-3300878',NULL,'','Muhallah Ghareebabad Ward# 319',NULL,NULL,'Sindh','KUNRI',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2180,1,'2180','Muhammad Waqas','',NULL,'',NULL,'',NULL,NULL,NULL,'0303-3013030',NULL,'','Muhallah Ghareebabad Ward# 319',NULL,NULL,'Sindh','KUNRI',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2181,1,'2181','Javed Ali','',NULL,'',NULL,'',NULL,NULL,NULL,'0333-2835458',NULL,'','Near THQ Mirch Mandi Road',NULL,NULL,'Sindh','KUNRI',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2182,1,'2182','Nabi Bux Naz','',NULL,'',NULL,'',NULL,NULL,NULL,'0301-3565671',NULL,'','Near THQ Mirch Mandi Road',NULL,NULL,'Sindh','KUNRI',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2183,1,'2183','Haji Muhammad Ibrahim','',NULL,'',NULL,'',NULL,NULL,NULL,'0307-3319842',NULL,'','Near THQ Mirch Mandi Road',NULL,NULL,'Sindh','KUNRI',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2184,1,'2184','Abdul Kareem','',NULL,'',NULL,'',NULL,NULL,NULL,'0333-3265364',NULL,'','Near THQ Mirch Mandi Road',NULL,NULL,'Sindh','KUNRI',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2185,1,'2185','Late Muhammad Khalid','',NULL,'',NULL,'',NULL,NULL,NULL,'0333-2837997',NULL,'','Near THQ Mirch Mandi Road',NULL,NULL,'Sindh','KUNRI',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2186,1,'2186','Muhammad Arif','',NULL,'',NULL,'',NULL,NULL,NULL,'0300-2304294',NULL,'','Near THQ Mirch Mandi Road',NULL,NULL,'Sindh','KUNRI',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2187,1,'2187','Late Feroz Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'','Near THQ Mirch Mandi Road',NULL,NULL,'Sindh','KUNRI',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2188,1,'2188','Naseer Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'','Near THQ Mirch Mandi Road',NULL,NULL,'Sindh','KUNRI',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2189,1,'2189','Muhammad Shahid','',NULL,'',NULL,'',NULL,NULL,NULL,'0310-6028303',NULL,'','Near THQ Mirch Mandi Road',NULL,NULL,'Sindh','KUNRI',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2190,1,'2190','Abdul Jabbar','',NULL,'',NULL,'',NULL,NULL,NULL,'0311-3021979',NULL,'','Near THQ Mirch Mandi Road',NULL,NULL,'Sindh','KUNRI',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2191,1,'2191','Imran Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0314-7329896',NULL,'','Near THQ Mirch Mandi Road',NULL,NULL,'Sindh','KUNRI',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2192,1,'2192','Majid Hussain','',NULL,'',NULL,'',NULL,NULL,NULL,'0332-2056584',NULL,'','Near THQ Mirch Mandi Road',NULL,NULL,'Sindh','KUNRI',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2193,1,'2193','Abdul Sattar','',NULL,'',NULL,'',NULL,NULL,NULL,'0345-3674265',NULL,'','Hasan Colony Near Police Station',NULL,NULL,'Sindh','KUNRI',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2194,1,'2194','Waseem Ahmed','',NULL,'',NULL,'',NULL,NULL,NULL,'0300-3319879',NULL,'','Hasan Colony Near Police Station',NULL,NULL,'Sindh','KUNRI',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2195,1,'2195','Muhammad Iqbal','',NULL,'',NULL,'',NULL,NULL,NULL,'0334-1304495',NULL,'','Hasan Colony Near Police Station',NULL,NULL,'Sindh','KUNRI',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2196,1,'2196','Shahzad Iqbal','',NULL,'',NULL,'',NULL,NULL,NULL,'0301-3919016',NULL,'','Hasan Colony Near Police Station',NULL,NULL,'Sindh','KUNRI',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2197,1,'2197','Late Raheem','',NULL,'',NULL,'',NULL,NULL,NULL,'0346-1904004',NULL,'','Khalild Colony Goodown Road',NULL,NULL,'Sindh','KUNRI',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2198,1,'2198','Muhammad Hanif','',NULL,'',NULL,'',NULL,NULL,NULL,'0301-3302693',NULL,'','Khalild Colony Goodown Road',NULL,NULL,'Sindh','KUNRI',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2199,1,'2199','Muhammad Ali','',NULL,'',NULL,'',NULL,NULL,NULL,'0307-3316612',NULL,'','Khalild Colony Goodown Road',NULL,NULL,'Sindh','KUNRI',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2200,1,'2200','Ghulam Mustafa','',NULL,'',NULL,'',NULL,NULL,NULL,'0332-3386692',NULL,'','Khalild Colony Goodown Road',NULL,NULL,'Sindh','KUNRI',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2201,1,'2201','Muhammad Rizwan','',NULL,'',NULL,'',NULL,NULL,NULL,'0300-3346022',NULL,'','Khalild Colony Goodown Road',NULL,NULL,'Sindh','KUNRI',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2202,1,'2202','Imran','',NULL,'',NULL,'',NULL,NULL,NULL,'0341-3866399',NULL,'','Khalild Colony Goodown Road',NULL,NULL,'Sindh','KUNRI',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2203,1,'2203','Muhammad Irfan','',NULL,'',NULL,'',NULL,NULL,NULL,'0321-2730971',NULL,'','Khalild Colony Goodown Road',NULL,NULL,'Sindh','KUNRI',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2204,1,'2204','Abdul Shakoor','',NULL,'',NULL,'',NULL,NULL,NULL,'0333-3365243',NULL,'','Khalild Colony Goodown Road',NULL,NULL,'Sindh','KUNRI',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2205,1,'2205','Ghulam Qadar','',NULL,'',NULL,'',NULL,NULL,NULL,'0348-0313388',NULL,'','Mujahid Colony',NULL,NULL,'Sindh','KUNRI',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2206,1,'2206','Shamsher Ali','',NULL,'',NULL,'',NULL,NULL,NULL,'0301-6375727',NULL,'','Mujahid Colony',NULL,NULL,'Sindh','KUNRI',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2207,1,'2207','Nadeem Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0301-3912663',NULL,'','Mujahid Colony',NULL,NULL,'Sindh','KUNRI',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2208,1,'2208','Abdul Ghafoor','',NULL,'',NULL,'',NULL,NULL,NULL,'0334-2955711',NULL,'','Zafar Colony',NULL,NULL,'Sindh','KUNRI',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2209,1,'2209','Ibrahim','',NULL,'',NULL,'',NULL,NULL,NULL,'0331-3880990',NULL,'','Munshi Khan',NULL,NULL,'Sindh','KUNRI',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2210,1,'2210','Muhammad Usman','',NULL,'',NULL,'',NULL,NULL,NULL,'0335-2526525',NULL,'','Gareebabad Mirch Mandi Road',NULL,NULL,'Sindh','KUNRI',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2211,1,'2211','Late Yasin Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'','Village Shooqi Mal Mari Deh Tobanwari',NULL,NULL,'Sindh','KUNRI',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2212,1,'2212','Muhammad Shakeel','',NULL,'',NULL,'',NULL,NULL,NULL,'0300-3051176',NULL,'','Village Shooqi Mal Mari Deh Tobanwari',NULL,NULL,'Sindh','KUNRI',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2213,1,'2213','Muhammad Jamil','',NULL,'',NULL,'',NULL,NULL,NULL,'0311-3020252',NULL,'','Village Shooqi Mal Mari Deh Tobanwari',NULL,NULL,'Sindh','KUNRI',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2214,1,'2214','Muhammad Javed','',NULL,'',NULL,'',NULL,NULL,NULL,'0313-4625540',NULL,'','Village Shooqi Mal Mari Deh Tobanwari',NULL,NULL,'Sindh','KUNRI',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2215,1,'2215','Muhammad Naeem','',NULL,'',NULL,'',NULL,NULL,NULL,'0096-6554167086',NULL,'','Village Shooqi Mal Mari Deh Tobanwari',NULL,NULL,'Sindh','KUNRI',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2216,1,'2216','Muhammad Waseem','',NULL,'',NULL,'',NULL,NULL,NULL,'0347-1392710',NULL,'','Village Shooqi Mal Mari Deh Tobanwari',NULL,NULL,'Sindh','KUNRI',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2217,1,'2217','Late Deen Muhammad ','',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'','Village Shooqi Mal Mari Deh Tobanwari',NULL,NULL,'Sindh','KUNRI',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2218,1,'2218','Muhammad Saleem','',NULL,'',NULL,'',NULL,NULL,NULL,'0300-3358772',NULL,'','Village Shooqi Mal Mari Deh Tobanwari',NULL,NULL,'Sindh','KUNRI',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2219,1,'2219','Haris Saleem','',NULL,'',NULL,'',NULL,NULL,NULL,'0345-3431043',NULL,'','Village Shooqi Mal Mari Deh Tobanwari',NULL,NULL,'Sindh','KUNRI',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2220,1,'2220','Late Abdul Rehman','',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'','Village Shooqi Mal Mari Deh Tobanwari',NULL,NULL,'Sindh','KUNRI',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2221,1,'2221','Muhammad Amir','',NULL,'',NULL,'',NULL,NULL,NULL,'0333-3114971',NULL,'','Village Shooqi Mal Mari Deh Tobanwari',NULL,NULL,'Sindh','KUNRI',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2222,1,'2222','Muhammad Waqar','',NULL,'',NULL,'',NULL,NULL,NULL,'0333-3536501',NULL,'','Village Shooqi Mal Mari Deh Tobanwari',NULL,NULL,'Sindh','KUNRI',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2223,1,'2223','Muhammad Habib','',NULL,'',NULL,'',NULL,NULL,NULL,'0300-3321981',NULL,'','Village Shooqi Mal Mari Deh Tobanwari',NULL,NULL,'Sindh','KUNRI',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2224,1,'2224','Mubbashir Hussain','',NULL,'',NULL,'',NULL,NULL,NULL,'0313-4994390',NULL,'','Village Shooqi Mal Mari Deh Tobanwari',NULL,NULL,'Sindh','KUNRI',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2225,1,'2225','Shokat  Ali ','',NULL,'',NULL,'',NULL,NULL,NULL,'0345-5532997',NULL,'','Kaim khani Muhalla Near Faizan-e Murshid Mosque ',NULL,NULL,'Sindh','UMERKOT',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2226,1,'2226','Azmat Ali ','',NULL,'',NULL,'',NULL,NULL,NULL,'0345-5532998',NULL,'','Kaim khani Muhalla Near Faizan-e Murshid Mosque ',NULL,NULL,'Sindh','UMERKOT',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2227,1,'2227','Nizzamudin kk','',NULL,'',NULL,'',NULL,NULL,NULL,'0345-5532999',NULL,'','Kaim khani Muhalla Near Faizan-e Murshid Mosque ',NULL,NULL,'Sindh','UMERKOT',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2228,1,'2228','M.Hussain Qaimkhani','',NULL,'',NULL,'',NULL,NULL,NULL,'0345-5533000',NULL,'','Kaim khani Muhalla Near Faizan-e Murshid Mosque ',NULL,NULL,'Sindh','UMERKOT',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2229,1,'2229','Liaqat Ali Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0333-2163060',NULL,'','Kaim khani Muhalla Near Faizan-e Murshid Mosque ',NULL,NULL,'Sindh','UMERKOT',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2230,1,'2230','Asif Ali Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0345-828850',NULL,'','Kaim khani Muhalla Near Faizan-e Murshid Mosque ',NULL,NULL,'Sindh','UMERKOT',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2231,1,'2231','Jahangir Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0346-2096669',NULL,'','Kaim khani Muhalla Near Faizan-e Murshid Mosque ',NULL,NULL,'Sindh','UMERKOT',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2232,1,'2232','Saleem Taaj Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0345-6208529',NULL,'','Kaim khani Muhalla Near Faizan-e Murshid Mosque ',NULL,NULL,'Sindh','UMERKOT',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2233,1,'2233','Abbas Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0345-3771443',NULL,'','Kaim khani Muhalla Near Faizan-e Murshid Mosque ',NULL,NULL,'Sindh','UMERKOT',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2234,1,'2234','Adnan Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0303-3102860',NULL,'','Kaim khani Muhalla Near Faizan-e Murshid Mosque ',NULL,NULL,'Sindh','UMERKOT',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2235,1,'2235','Shahmeer Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0331-8062634',NULL,'','Kaim khani Muhalla Near Faizan-e Murshid Mosque ',NULL,NULL,'Sindh','UMERKOT',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2236,1,'2236','Ramzan Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0333-2992789',NULL,'','Moti Chowk Umer kot',NULL,NULL,'Sindh','UMERKOT',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2237,1,'2237','Abdul Rehman Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0346-3440536',NULL,'','Moti Chowk Umer kot',NULL,NULL,'Sindh','UMERKOT',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2238,1,'2238','Abdul Qadir Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0346-3711164',NULL,'','Moti Chowk Umer kot',NULL,NULL,'Sindh','UMERKOT',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2239,1,'2239','Abdul Samad Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0307-3312680',NULL,'','Moti Chowk Umer kot',NULL,NULL,'Sindh','UMERKOT',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2240,1,'2240','Sikander Ali Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0331-3270285',NULL,'','Moti Chowk Umer kot',NULL,NULL,'Sindh','UMERKOT',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2241,1,'2241','Ali Sher Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0340-3937500',NULL,'','Near Thar Bazar Zakariya Masjid ',NULL,NULL,'Sindh','UMERKOT',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2242,1,'2242','Gull Sher Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0346-8829061',NULL,'','Near Thar Bazar Zakariya Masjid ',NULL,NULL,'Sindh','UMERKOT',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2243,1,'2243','Falak Sher Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0346-3128925',NULL,'','Near Thar Bazar Zakariya Masjid ',NULL,NULL,'Sindh','UMERKOT',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2244,1,'2244','Nadeem Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0346-3936610',NULL,'','Near Thar Bazar Zakariya Masjid ',NULL,NULL,'Sindh','UMERKOT',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2245,1,'2245','Shahid Mubeen Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0333-2776641',NULL,'','Kaim khani Muhalla Near Faizan-e Murshid Mosque ',NULL,NULL,'Sindh','UMERKOT',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2246,1,'2246','Faisal Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0345-4466660',NULL,'','Kaim khani Muhalla Near Faizan-e Murshid Mosque ',NULL,NULL,'Sindh','UMERKOT',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2247,1,'2247','M.Ibrahim Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0345-3661044',NULL,'','Near Thar Bazar Zakariya Masjid ',NULL,NULL,'Sindh','UMERKOT',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2248,1,'2248','Saqib Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0333-4445809',NULL,'','Near Thar Bazar Zakariya Masjid ',NULL,NULL,'Sindh','UMERKOT',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2249,1,'2249','Jamshed Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0332-2807034',NULL,'','Near Thar Bazar Zakariya Masjid ',NULL,NULL,'Sindh','UMERKOT',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2250,1,'2250','M.Yaseen Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0331-2929615',NULL,'','Moti Chowk Umer kot',NULL,NULL,'Sindh','UMERKOT',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2251,1,'2251','Imran khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0333-2511559',NULL,'','Moti Chowk Umer kot',NULL,NULL,'Sindh','UMERKOT',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2252,1,'2252','Shahid Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0345-3773782',NULL,'','Moti Chowk Umer kot',NULL,NULL,'Sindh','UMERKOT',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2253,1,'2253','Abid Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0333-3326200',NULL,'','Moti Chowk Umer kot',NULL,NULL,'Sindh','UMERKOT',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2254,1,'2254','Haji Waseem Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0345-3777171',NULL,'','Moti Chowk Umer kot',NULL,NULL,'Sindh','UMERKOT',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2255,1,'2255','Khursheed  Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0345-3777110',NULL,'','Moti Chowk Umer kot',NULL,NULL,'Sindh','UMERKOT',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2256,1,'2256','Hammad Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0332-3518410',NULL,'','Moti Chowk Umer kot',NULL,NULL,'Sindh','UMERKOT',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2257,1,'2257','Usman Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'03333-710102',NULL,'','Near Rana Chowk',NULL,NULL,'Sindh','UMERKOT',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2258,1,'2258','Khursheed  Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0300-8993981',NULL,'','Mistri Rashid Chowk',NULL,NULL,'Sindh','UMERKOT',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2259,1,'2259','Faisal Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0345-3668289',NULL,'','Vehra Road Ward # 315',NULL,NULL,'Sindh','UMERKOT',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2260,1,'2260','Shafique Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0334-3472101',NULL,'','Vehra Road Ward # 315',NULL,NULL,'Sindh','UMERKOT',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2261,1,'2261','Liaqat Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0335-3826919',NULL,'','Afghan Muhalla Ward# 315',NULL,NULL,'Sindh','UMERKOT',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2262,1,'2262','Naseem Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0347-3448155',NULL,'','Shahi Bazar Near Faizan -e- Murshid ',NULL,NULL,'Sindh','UMERKOT',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2263,1,'2263','Shahmeer Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0336-3654090',NULL,'','Shahi Bazar Near Faizan -e- Murshid ',NULL,NULL,'Sindh','UMERKOT',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2264,1,'2264','Arif Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0300-3053477',NULL,'','Shahi Bazar Near Faizan -e- Murshid ',NULL,NULL,'Sindh','UMERKOT',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2265,1,'2265','Niamat Ali Khan','',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','Near Allah Wala Chowk',NULL,NULL,'Sindh','UMERKOT',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2266,1,'2266','Kamran Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0308-3540406',NULL,'','Near Allah Wala Chowk',NULL,NULL,'Sindh','UMERKOT',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2267,1,'2267','Ghulam Mustafa (late)','',NULL,'',NULL,'',NULL,NULL,NULL,'0331-3897293',NULL,'','Bajeer Muhalla Ward# 311',NULL,NULL,'Sindh','UMERKOT',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2268,1,'2268','Muhammad Ali Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0347-0903900',NULL,'','Bajeer Muhalla Ward# 311',NULL,NULL,'Sindh','UMERKOT',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2269,1,'2269','M.Usman Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0331-2778991',NULL,'','Shahi Bazar Near Faizan -e- Murshid ',NULL,NULL,'Sindh','UMERKOT',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2270,1,'2270','Yaqoob Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0322-3012851',NULL,'','Shahi Bazar Near Faizan -e- Murshid ',NULL,NULL,'Sindh','UMERKOT',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2271,1,'2271','Muhiuddin Khan','',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','Shahi Bazar Near Faizan -e- Murshid ',NULL,NULL,'Sindh','UMERKOT',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2272,1,'2272','Arif Durab Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0334-3902507',NULL,'','Shahi Bazar Near Faizan -e- Murshid ',NULL,NULL,'Sindh','UMERKOT',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2273,1,'2273','Sher Khan','',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','Bajeer Muhalla Ward# 311',NULL,NULL,'Sindh','UMERKOT',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2274,1,'2274','Ikram Uddin Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0333-2836836',NULL,'','Khosa Muhalla ',NULL,NULL,'Sindh','UMERKOT',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2275,1,'2275','M.Mujeeb Khan KK','',NULL,'',NULL,'',NULL,NULL,NULL,'0345-377712',NULL,'','Bajeer Muhalla Ward# 311',NULL,NULL,'Sindh','UMERKOT',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2276,1,'2276','Muhammad Naeem','',NULL,'',NULL,'Khaju Khan',NULL,NULL,NULL,'0300-0351734',NULL,'','H-No 404 W/N  05 G/B High School Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2277,1,'2277','Khalid ','',NULL,'',NULL,'Khaju Khan',NULL,NULL,NULL,'0300-3300347',NULL,'','H-No 405 W/05 G/B High School Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2278,1,'2278','M.Rafique ','',NULL,'',NULL,'Khaju Khan',NULL,NULL,NULL,'0301-3146100',NULL,'','H-No 406 W/5 G/B High School Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2279,1,'2279','M.Zulfiqar ','',NULL,'',NULL,'Hakeem Khan',NULL,NULL,NULL,'0331-7017315',NULL,'','Muhalla Kachil G/G School Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2280,1,'2280','M.Akram ','',NULL,'',NULL,'Nasir Khan',NULL,NULL,NULL,'0331-0208484',NULL,'','H-School Road W/No 5 Garibad KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2281,1,'2281','M.Arif','',NULL,'',NULL,'Ibrahim Khan',NULL,NULL,NULL,'0300-3318452',NULL,'','H-1920  H/School Road W/No 5',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2282,1,'2282','M.Waseem ','',NULL,'',NULL,'Wali Ullah',NULL,NULL,NULL,'0301-3281200',NULL,'','H/409 G/B High School Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2283,1,'2283','Khalid Hussain','',NULL,'',NULL,'Hidayat Khan',NULL,NULL,NULL,'0300-3300202',NULL,'','H/403 G/B High School Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2284,1,'2284','Abid  Hussain','',NULL,'',NULL,'Hidayat Khan',NULL,NULL,NULL,'0306-3591239',NULL,'','H/402 G/B Hight School Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2285,1,'2285','Imran ','',NULL,'',NULL,'Majeed Khan',NULL,NULL,NULL,'0301-3606305',NULL,'','H/530 G/B High School Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2286,1,'2286','Ali Hasan','',NULL,'',NULL,'Mushtaqe Khan',NULL,NULL,NULL,'0313-3383046',NULL,'','H/531 G/B High School Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2287,1,'2287','Iftekhar','',NULL,'',NULL,'Khan Muhammad ',NULL,NULL,NULL,'0301-3606305',NULL,'','H/530 G/B High School Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2288,1,'2288','Ali Hasan','',NULL,'',NULL,'Mushtaqe Khan',NULL,NULL,NULL,'0313-3383046',NULL,'','H/531 G/B High School Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2289,1,'2289','Iftekhar','',NULL,'',NULL,'Khan Muhammad ',NULL,NULL,NULL,'0333-2245297',NULL,'','G/B High School Road W/5 KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2290,1,'2290','Shakeel ','',NULL,'',NULL,'Assat Ali Khan',NULL,NULL,NULL,'0300-9287570',NULL,'','H/528 High School Road W/5 KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2291,1,'2291','Yamin','',NULL,'',NULL,'Assat Ali Khan',NULL,NULL,NULL,'0302-4808351',NULL,'','High School Road W/5 KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2292,1,'2292','Firoz Khan','',NULL,'',NULL,'Niyatmat Khan',NULL,NULL,NULL,'0305-3039586',NULL,'','High School Road W/5 KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2293,1,'2293','Munawwar ','',NULL,'',NULL,' Assat Ali Khan',NULL,NULL,NULL,'0300-4080774',NULL,'','H/534 A G/B High School Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2294,1,'2294','Ghafar','',NULL,'',NULL,'A. Razaq Khan',NULL,NULL,NULL,'0300-3271920',NULL,'','G/B High School Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2295,1,'2295','Rafique ','',NULL,'',NULL,'Assat Ali Khan',NULL,NULL,NULL,'0307-3342056',NULL,'','High School Road W/5 KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2296,1,'2296','M.Jameel','',NULL,'',NULL,'Assat Ali Khan',NULL,NULL,NULL,'0303-3958492',NULL,'','H/529 High School Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2297,1,'2297','Younus','',NULL,'',NULL,'Assat Ali Khan',NULL,NULL,NULL,'0342-3586390',NULL,'','High School Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2298,1,'2298','Jeevan Khan','',NULL,'',NULL,'Mazar Muhammad Khan',NULL,NULL,NULL,'0304-1311944',NULL,'','Ward No:5 Moh: Ghareebabad ',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2299,1,'2299','Ishaque','',NULL,'',NULL,'Asghar Ali Khan',NULL,NULL,NULL,'0301-3913440',NULL,'','G/B High School Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2300,1,'2300','Ishaque','',NULL,'',NULL,'Asghar Ali Khan',NULL,NULL,NULL,'0301-3916070',NULL,'','G/B High School Road W/5 KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2301,1,'2301','Shamshad ','',NULL,'',NULL,'Asghar Ali Khan',NULL,NULL,NULL,'0300-3318071',NULL,'','G/B High School Road W/5 KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2302,1,'2302','Raheel Ahmed','',NULL,'',NULL,'M.Aslam',NULL,NULL,NULL,'0300-3347388',NULL,'','Ward-05 High School Road W/5 KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2303,1,'2303','M.Jameel Khan','',NULL,'',NULL,'Feroz Khan',NULL,NULL,NULL,'0301-3282523',NULL,'','W/1 Gulshane Yamin Near ByPaas KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2304,1,'2304','Iqbal ','',NULL,'',NULL,'Hakim Ali Khan',NULL,NULL,NULL,'0341-2427052',NULL,'','W/1 Bay Gulshane Yamin Near KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2305,1,'2305','Meer Hassan ','',NULL,'',NULL,'Latif Khan',NULL,NULL,NULL,'0304-1312050',NULL,'','W/1 Bay High School  KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2306,1,'2306','Mehmood Ali','',NULL,'',NULL,'Shokat Ali',NULL,NULL,NULL,'0334-7991302',NULL,'','W/1 Bay High School  KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2307,1,'2307','M.Rafique ','',NULL,'',NULL,'M.Rahim Khan',NULL,NULL,NULL,'0304-2427805',NULL,'','W/1 Bay High School  KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2308,1,'2308','Nisar Ahmed','',NULL,'',NULL,'Rahim Khan',NULL,NULL,NULL,'0308-3276480',NULL,'','W/1 Bay High School  KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2309,1,'2309','Gul Muhammad ','',NULL,'',NULL,'Ali Shair',NULL,NULL,NULL,'0304-9272102',NULL,'','W/1 Bay High School  KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2310,1,'2310','M.Adris','',NULL,'',NULL,'Rahim Khan',NULL,NULL,NULL,'0307-3516070',NULL,'','W/1 Bay High School  KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2311,1,'2311','Irshad','',NULL,'',NULL,'Ali Khan',NULL,NULL,NULL,'0301-3507926',NULL,'','W/1 Bay High School  KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2312,1,'2312','Liaqat','',NULL,'',NULL,'Taj Muhammad Khan',NULL,NULL,NULL,'0301-2167581',NULL,'','W/1 Bay High School  KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2313,1,'2313','Zulfiqar','',NULL,'',NULL,'M.Hanif Khan',NULL,NULL,NULL,'0306-3517121',NULL,'','W/1 Bay High School  KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2314,1,'2314','Ayub','',NULL,'',NULL,'Nasir Khan',NULL,NULL,NULL,'0305-8020110',NULL,'','W/1 Bay High School  KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2315,1,'2315','Islam','',NULL,'',NULL,'Nasir Khan',NULL,NULL,NULL,'0307-2379609',NULL,'','W/2 Bay High School  KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2316,1,'2316','Aurangzaib','',NULL,'',NULL,'Mehmood Ali khan',NULL,NULL,NULL,'0333-7548926',NULL,'','W/2 Bay High School  KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2317,1,'2317','M.iqbal','',NULL,'',NULL,'Inayat Ali Khan',NULL,NULL,NULL,'0333-1366028',NULL,'','W/1 Bay High School  KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2318,1,'2318','Mazhar Ali','',NULL,'',NULL,'Aleem ',NULL,NULL,NULL,'0301-2504039',NULL,'','W/1 Bay High School  KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2319,1,'2319','Haji Imad ','',NULL,'',NULL,'Inayat Khan',NULL,NULL,NULL,'0316-8724434',NULL,'','W/1 Bay High School  KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2320,1,'2320','M.Ilyas Khan','',NULL,'',NULL,'Inayat Khan',NULL,NULL,NULL,'0301-3536901',NULL,'','W/1 Bay High School  KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2321,1,'2321','Islam','',NULL,'',NULL,'Inayat Khan',NULL,NULL,NULL,'0300-3328493',NULL,'','W/1 Bay High School  KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2322,1,'2322','Shabbir ','',NULL,'',NULL,'Inayat Khan',NULL,NULL,NULL,'0304-5646719',NULL,'','W/1 Bay High School  KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2323,1,'2323','M.Shakeel ','',NULL,'',NULL,'Qasim Ali',NULL,NULL,NULL,'0300-3853809',NULL,'','W/1 Bay High School  KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2324,1,'2324','Liaqat Ali Khan','',NULL,'',NULL,'Qasim Ali',NULL,NULL,NULL,'0336-1342617',NULL,'','W/1 Bay High School  KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2325,1,'2325','Allah Din ','',NULL,'',NULL,'Baghe Khan',NULL,NULL,NULL,'0301-3559233',NULL,'','W/1 Bay High School  KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2326,1,'2326','Ismail Khan','',NULL,'',NULL,'Muraad Khan',NULL,NULL,NULL,'0331-6952362',NULL,'','W/1 Bay High School  KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2327,1,'2327','Shoukat ','',NULL,'',NULL,'Ghulaam Mustufa',NULL,NULL,NULL,'0331-3272075',NULL,'','W/1 Bay High School  KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2328,1,'2328','Mehmood ','',NULL,'',NULL,'Muraad Khan',NULL,NULL,NULL,'0335-0029079',NULL,'','W/1 Bay High School  KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2329,1,'2329','Muhammad Younus','',NULL,'',NULL,'-',NULL,NULL,NULL,'0306-3754088',NULL,'','W/1 Bay High School  KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2330,1,'2330','A.Hamid ','',NULL,'',NULL,'Mehbob Ali',NULL,NULL,NULL,'0334-3377513',NULL,'','W/1 Bay High School  KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2331,1,'2331','Aslam','',NULL,'',NULL,'Nasir Ali',NULL,NULL,NULL,'0300-2682028',NULL,'','W/1 Bay High School  KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2332,1,'2332','Jawaid','',NULL,'',NULL,'Munwwar Ali',NULL,NULL,NULL,'0300-3321045',NULL,'','W/1 Bay High School  KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2333,1,'2333','Zaheer  ','',NULL,'',NULL,'Sadak Ali',NULL,NULL,NULL,'0343-0344354',NULL,'','W/1 Bay High School  KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2334,1,'2334','Inayat Ali','',NULL,'',NULL,'Nazar Muhammad',NULL,NULL,NULL,'0307-7708624',NULL,'','W/1 Bay High School  KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2335,1,'2335','Latif Khan','',NULL,'',NULL,'Ahmed Ali',NULL,NULL,NULL,'0302-3317786',NULL,'','Factory Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2336,1,'2336','Bilal Ahmed ','',NULL,'',NULL,'M Iqbal',NULL,NULL,NULL,'0302-2737626',NULL,'','Raja Yamin Society H/A262 KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2337,1,'2337','Zubair ','',NULL,'',NULL,'Islam  Khan',NULL,NULL,NULL,'0302-2225044',NULL,'','H/A264 Raja Yamin Society KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2338,1,'2338','Nadeem ','',NULL,'',NULL,'Mehboob Ali',NULL,NULL,NULL,'0336-5142953',NULL,'','Factory Road W/1 KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2339,1,'2339','M.Ali ','',NULL,'',NULL,'Mehbob Ali',NULL,NULL,NULL,'0307-0306307',NULL,'','W/1 Factory Road H/10 KMG',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2340,1,'2340','Ghulam Nabi ','',NULL,'',NULL,'Mehnu Khan',NULL,NULL,NULL,NULL,NULL,'','W/1 Factory Road  KMG',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2341,1,'2341','Sultan','',NULL,'',NULL,'Inayat Khan',NULL,NULL,NULL,'0333-5612674',NULL,'','W/1 Factory Road  KMG',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2342,1,'2342','M.Yousuf','',NULL,'',NULL,'M.Altaf Khan',NULL,NULL,NULL,'0300-3294027',NULL,'','W/1 Factory Road  KMG',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2343,1,'2343','Qasir Farooq','',NULL,'',NULL,'Farooque',NULL,NULL,NULL,'0300-3524614',NULL,'','W/1 Factory Road  KMG',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2344,1,'2344','Ramzan','',NULL,'',NULL,'Umar Uddin ',NULL,NULL,NULL,'0306-2761921',NULL,'','W/1 Factory Road  KMG',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2345,1,'2345','Ali Imam','',NULL,'',NULL,'Inayat Khan',NULL,NULL,NULL,'0300-2349343',NULL,'','W/1 Factory Road  KMG',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2346,1,'2346','Shahid Hassan','',NULL,'',NULL,'Hassan Muhammad ',NULL,NULL,NULL,'0333-2619852',NULL,'','W/1 Factory Road  KMG',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2347,1,'2347','Jawaid ','',NULL,'',NULL,'Usman Khan',NULL,NULL,NULL,'0303-3443036',NULL,'','W/1 Factory Road  KMG',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2348,1,'2348','Khalid ','',NULL,'',NULL,'Umaid Ali Khan',NULL,NULL,NULL,'0333-3272857',NULL,'','W/1 Factory Road  KMG',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2349,1,'2349','Amjad ','',NULL,'',NULL,'Khan Muhammad ',NULL,NULL,NULL,'0333-0363885',NULL,'','W/1 Factory Road  KMG',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2350,1,'2350','A.Sattar ','',NULL,'',NULL,'Taj Muhammad Khan',NULL,NULL,NULL,'0300-3328378',NULL,'','W/1 Factory Road  KMG',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2351,1,'2351','Ali Ahmed ','',NULL,'',NULL,'A Ghani ',NULL,NULL,NULL,'0303-3594414',NULL,'','W/1 Factory Road  KMG',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2352,1,'2352','Abid','',NULL,'',NULL,'Umaid Ali Khan',NULL,NULL,NULL,'0331-3882841',NULL,'','W/1 Factory Road  KMG',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2353,1,'2353','Liaqat Ali','',NULL,'',NULL,'Inayat Khan',NULL,NULL,NULL,'0303-2412059',NULL,'','W/1 Factory Road  KMG',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2354,1,'2354','Faisal ','',NULL,'',NULL,'Islam Khan',NULL,NULL,NULL,'0308-3240095',NULL,'','W/1 Factory Road  KMG',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2355,1,'2355','Sajid ','',NULL,'',NULL,'Khan Muhammad ',NULL,NULL,NULL,'0335-1200594',NULL,'','W/1 Factory Road  KMG',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2356,1,'2356','Nawaid ','',NULL,'',NULL,' Peer Muhammad',NULL,NULL,NULL,'0300-3591836',NULL,'','W/1 Factory Road  KMG',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2357,1,'2357','M.Arif ','',NULL,'',NULL,'A. Razaque',NULL,NULL,NULL,'0336-3460563',NULL,'','W/1 Factory Road  KMG',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2358,1,'2358','Aslam Khan ','',NULL,'',NULL,'Fateh Mohammad ',NULL,NULL,NULL,'0307-3311285',NULL,'','W/1 Boys High ScHOOL Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2359,1,'2359','Tahir ','',NULL,'',NULL,'Mehmood Khan',NULL,NULL,NULL,'0300-3302373',NULL,'','W/1 Boys High ScHOOL Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2360,1,'2360','Arshad ','',NULL,'',NULL,'Fateh Mohammad ',NULL,NULL,NULL,'0301-3911677',NULL,'','W/1 Boys High ScHOOL Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2361,1,'2361','Sagheer ','',NULL,'',NULL,'Sadiq Ali Khan',NULL,NULL,NULL,'0334-2559214',NULL,'','W/1 Boys High ScHOOL Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2362,1,'2362','Shakeel ','',NULL,'',NULL,'Yasir Khan',NULL,NULL,NULL,'0313-8197460',NULL,'','W/1 Boys High ScHOOL Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2363,1,'2363','Imran ','',NULL,'',NULL,'Muraad Ali',NULL,NULL,NULL,'0300-3506999',NULL,'','W/1 Boys High ScHOOL Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2364,1,'2364','Shabir','',NULL,'',NULL,'Muraad Ali',NULL,NULL,NULL,'0300-3327576',NULL,'','W/1 Boys High ScHOOL Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2365,1,'2365','Sarfaraz','',NULL,'',NULL,'Mumtaz Khan',NULL,NULL,NULL,'0303-6360990',NULL,'','W/1 Boys High ScHOOL Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2366,1,'2366','Sadique','',NULL,'',NULL,'Muraad Ali',NULL,NULL,NULL,'0300-3307333',NULL,'','W/1 Boys High ScHOOL Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2367,1,'2367','Qayoom ','',NULL,'',NULL,'Qadir Khan',NULL,NULL,NULL,'0335--3520439',NULL,'','W/1 Boys High ScHOOL Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2368,1,'2368','Iftikhar ','',NULL,'',NULL,'Haji Bhore Khan ',NULL,NULL,NULL,'0331-2918395',NULL,'','W/1 Boys High ScHOOL Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2369,1,'2369','Rehman','',NULL,'',NULL,'Riaz Khan',NULL,NULL,NULL,'0300-4994384',NULL,'','W/1 Boys High ScHOOL Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2370,1,'2370','Ibrahim Khan ','',NULL,'',NULL,'Ashgar Khan',NULL,NULL,NULL,'0302-2315215',NULL,'','W/1 Boys High ScHOOL Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2371,1,'2371','Manzoor','',NULL,'',NULL,'Abdul Ghani Khan',NULL,NULL,NULL,'0332-2887499',NULL,'','W/1 Boys High ScHOOL Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2372,1,'2372','Farooque','',NULL,'',NULL,'Mushtaqe Khan',NULL,NULL,NULL,'0332-1316560',NULL,'','W/1 Boys High ScHOOL Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2373,1,'2373','Mohammad Iqbal','',NULL,'',NULL,'Qadir Khan',NULL,NULL,NULL,'0305-2686500',NULL,'','W/1 Boys High ScHOOL Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2374,1,'2374','Ayoub Khan ','',NULL,'',NULL,'Qadir Khan',NULL,NULL,NULL,'0336-3923697',NULL,'','W/1 Boys High ScHOOL Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2375,1,'2375','Mushtaq Ahmed','',NULL,'',NULL,'Deen Mohammad',NULL,NULL,NULL,'0305-3396545',NULL,'','W/1 Boys High ScHOOL Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2376,1,'2376','Nabi Bux','',NULL,'',NULL,'Taj Muhammad Khan',NULL,NULL,NULL,'0307-3014214',NULL,'','W/1 Boys High ScHOOL Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2377,1,'2377','AbduAllah','',NULL,'',NULL,'Khalid Khan',NULL,NULL,NULL,'0333-2958885',NULL,'','W/1 Boys High ScHOOL Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2378,1,'2378','Haneef','',NULL,'',NULL,'Noor Mohammad',NULL,NULL,NULL,'0333-2737997',NULL,'','Khan W/1 H/100/101 G/B High School',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2379,1,'2379','Kouseer','',NULL,'',NULL,'Yousuf Khan',NULL,NULL,NULL,'0300-3313735',NULL,'','Khan W/1 H/100/101 G/B High School',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2380,1,'2380','Umair','',NULL,'',NULL,'Mohammad Siddique',NULL,NULL,NULL,'0334-0358090',NULL,'','Khan W/1 H/100/101 G/B High School',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2381,1,'2381','Saddam','',NULL,'',NULL,'Malik Sher Khan',NULL,NULL,NULL,'0300-9263666',NULL,'','Khan W/1 H/100/101 G/B High School',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2382,1,'2382','Imran ','',NULL,'',NULL,'Mohammad Haneef Khan',NULL,NULL,NULL,'0313-3799061',NULL,'','Khan W/1 H/100/101 G/B High School',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2383,1,'2383','Mohammad Madad','',NULL,'',NULL,'Nawab Ali Khan',NULL,NULL,NULL,'0300-3313224',NULL,'','Khan W/1 H/100/101 G/B High School',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2384,1,'2384','Mohammad Yousuf','',NULL,'',NULL,'Inayat Ali Khan',NULL,NULL,NULL,'0300-3321107',NULL,'','Khan W/1 H/100/101 G/B High School',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2385,1,'2385','Sarfaraz','',NULL,'',NULL,'Younus Khan',NULL,NULL,NULL,'0332-3300659',NULL,'','Khan W/1 H/100/101 G/B High School',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2386,1,'2386','Yasir Khan','',NULL,'',NULL,'Ballu Khan',NULL,NULL,NULL,'',NULL,'','Khan W/1 H/100/101 G/B High School',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2387,1,'2387','Suleman ','',NULL,'',NULL,'Umer Deen',NULL,NULL,NULL,'0300-3050228',NULL,'','Khan W/1 H/100/101 G/B High School',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2388,1,'2388','Mohammad Riaz','',NULL,'',NULL,'Haleem Khan ',NULL,NULL,NULL,'0304-3310365',NULL,'','Khan W/1 H/100/101 G/B High School',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2389,1,'2389','Jibran','',NULL,'',NULL,'Hidayat Khan',NULL,NULL,NULL,'0301-3502832',NULL,'','Khan W/1 H/100/101 G/B High School',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2390,1,'2390','Ashger Ali','',NULL,'',NULL,'Jeewan Khan',NULL,NULL,NULL,'0300-6665810',NULL,'','Khan W/1 H/100/101 G/B High School',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2391,1,'2391','Mohammad Asif','',NULL,'',NULL,'Yamin Khan',NULL,NULL,NULL,'0306-3520825',NULL,'','Factory Road W/1 KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2392,1,'2392','Yaqoub','',NULL,'',NULL,'Munshi Khan',NULL,NULL,NULL,'0300-3383315',NULL,'','Factory Road W/1 KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2393,1,'2393','Aslam Khan ','',NULL,'',NULL,'Jeewan Khan',NULL,NULL,NULL,'0335-2044074',NULL,'','Factory Road W/1 KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2394,1,'2394','Umar Daraz','',NULL,'',NULL,'Shokat Khan',NULL,NULL,NULL,'0300-3482794',NULL,'','Factory Road W/1 KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2395,1,'2395','Shabir Khan','',NULL,'',NULL,'Fateh Mohammad ',NULL,NULL,NULL,'0305-3604977',NULL,'','Factory Road W/1 KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2396,1,'2396','Ghulam Qadir','',NULL,'',NULL,'Mhanu Khan ',NULL,NULL,NULL,'0302-3246482',NULL,'','Factory Road W/1 KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2397,1,'2397','Imran Khan','',NULL,'',NULL,'Mohammad Usman Khan',NULL,NULL,NULL,'0307-3348508',NULL,'','Factory Road W/1 KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2398,1,'2398','Shoukat Ali','',NULL,'',NULL,'Manuu Khan',NULL,NULL,NULL,'0306-3256561',NULL,'','Factory Road W/1 KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2399,1,'2399','Umraudin ','',NULL,'',NULL,'Manuu Khan',NULL,NULL,NULL,'0301-3282110',NULL,'','Factory Road W/1 KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2400,1,'2400','Abdul Razzaq','',NULL,'',NULL,'Hidayat Khan',NULL,NULL,NULL,'0308-2752642',NULL,'','Factory Road W/1 KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2401,1,'2401','Shafiq Ahmed','',NULL,'',NULL,'Inayat Khan',NULL,NULL,NULL,'0333-3529234',NULL,'','Factory Road W/1 KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2402,1,'2402','Talib ','',NULL,'',NULL,'Ghulaam Mustufa',NULL,NULL,NULL,'0301-3283051',NULL,'','Factory Road W/1 KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2403,1,'2403','Tariq','',NULL,'',NULL,'Ghulaam Mustufa',NULL,NULL,NULL,'0333-2958887',NULL,'','Factory Road W/1 KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2404,1,'2404','Irshad Khan','',NULL,'',NULL,'Ghulaam Mustufa',NULL,NULL,NULL,'0333-2958881',NULL,'','Factory Road W/1 KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2405,1,'2405','Javeed','',NULL,'',NULL,'Ghulaam Mustufa',NULL,NULL,NULL,'0333-2958882',NULL,'','Factory Road W/1 KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2406,1,'2406','Tayaab','',NULL,'',NULL,'Ghulaam Mustufa',NULL,NULL,NULL,'0333-2958886',NULL,'','Factory Road W/1 KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2407,1,'2407','Farhan ','',NULL,'',NULL,'Akber Khan',NULL,NULL,NULL,'0302-2302220',NULL,'','Factory Road W/1 KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2408,1,'2408','Mohammad Hussain','',NULL,'',NULL,'Hidayyat Ali',NULL,NULL,NULL,'0331-7753847',NULL,'','Factory Road W/1 KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2409,1,'2409','Ghulam Murtaza ','',NULL,'',NULL,'Nazar Mohammad',NULL,NULL,NULL,'0300-3908156',NULL,'','Factory Road W/1 KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2410,1,'2410','Allahdin','',NULL,'',NULL,'Inayaat Khan',NULL,NULL,NULL,'0331-2775034',NULL,'','Factory Road W/1 KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2411,1,'2411','Mohammad Yousuf','',NULL,'',NULL,'Inayaat Khan',NULL,NULL,NULL,'0300-2870759',NULL,'','Factory Road W/1 KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2412,1,'2412','Ibrahim Khan ','',NULL,'',NULL,'Inayaat Khan',NULL,NULL,NULL,'0331-3392501',NULL,'','Factory Road W/1 KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2413,1,'2413','Farooq ','',NULL,'',NULL,'Nasir Khan',NULL,NULL,NULL,'0316-0330134',NULL,'','Factory Road W/1 KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2414,1,'2414','Dowood Khan','',NULL,'',NULL,'Nazar Mohammad',NULL,NULL,NULL,'0306-2280209',NULL,'','Factory Road W/1 KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2415,1,'2415','Kashan Khan','',NULL,'',NULL,'Shafiq Khan',NULL,NULL,NULL,'0308-6975372',NULL,'','Factory Road W/1 KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2416,1,'2416','Mohammad Khalid ','',NULL,'',NULL,'Iqbal Khan',NULL,NULL,NULL,'0333-2029769',NULL,'','Factory Road W/1 KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2417,1,'2417','Shafqat Ali','',NULL,'',NULL,'Shoukat Ali',NULL,NULL,NULL,'0301-3281282',NULL,'','403 G/B High School Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2418,1,'2418','Shahid','',NULL,'',NULL,'Shoukat Ali',NULL,NULL,NULL,'0333-7153755',NULL,'','403 G/B High School Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2419,1,'2419','Toafiq','',NULL,'',NULL,'Mehmood Khan',NULL,NULL,NULL,'0300-3990828',NULL,'','403 G/B High School Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2420,1,'2420','Nadeem ','',NULL,'',NULL,'Saleem Khan',NULL,NULL,NULL,'0300-2695739',NULL,'','403 G/B High School Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2421,1,'2421','Peer Mohammad','',NULL,'',NULL,'',NULL,NULL,NULL,'0300-3779708',NULL,'','403 G/B High School Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2422,1,'2422','Mohammad Irfan','',NULL,'',NULL,'Aziz Khan',NULL,NULL,NULL,'0301-2231131',NULL,'','W/3/228 Station Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2423,1,'2423','Shakeel Ahmeed','',NULL,'',NULL,'Shabir Ahmed',NULL,NULL,NULL,'0300-2356455',NULL,'','High School Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2424,1,'2424','Nisar Ahmed','',NULL,'',NULL,'Qadir Khan',NULL,NULL,NULL,'0334-2969616',NULL,'','High School Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2425,1,'2425','Mohammad Basheer ','',NULL,'',NULL,'Qadir Khan',NULL,NULL,NULL,'0302-2920895',NULL,'','High School Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2426,1,'2426','Imran','',NULL,'',NULL,'Liaqat Ali',NULL,NULL,NULL,'0333-4501404',NULL,'','High School Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2427,1,'2427','Shakir Ali','',NULL,'',NULL,'Haider Ali',NULL,NULL,NULL,'0306-2290620',NULL,'','High School Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2428,1,'2428','Shamshad Ali','',NULL,'',NULL,'Ali Khan',NULL,NULL,NULL,'0333-6044605',NULL,'','High School Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2429,1,'2429','Iqbal Khan ','',NULL,'',NULL,'Ahmed Ali',NULL,NULL,NULL,'0331-2944233',NULL,'','High School Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2430,1,'2430','Zulfiqar','',NULL,'',NULL,'Ahmed Ali',NULL,NULL,NULL,'0333-2220647',NULL,'','High School Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2431,1,'2431','Yousuf Ali ','',NULL,'',NULL,'Rustam Khan',NULL,NULL,NULL,'0300-0281477',NULL,'','High School Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2432,1,'2432','Mohammad Hussain','',NULL,'',NULL,'Malik Sher Khan',NULL,NULL,NULL,'0300-3009332',NULL,'','High School Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2433,1,'2433','Mubarik ','',NULL,'',NULL,'Sher Ali',NULL,NULL,NULL,'0308-3572079',NULL,'','High School Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2434,1,'2434','SanauAllah','',NULL,'',NULL,'BuxuAllah Khan',NULL,NULL,NULL,'0332-2095568',NULL,'','High School Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2435,1,'2435','Sharafat ','',NULL,'',NULL,'Mushtaqe Khan',NULL,NULL,NULL,'',NULL,'','High School Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2436,1,'2436','Irshad Ahmed','',NULL,'',NULL,'Qadar Khan',NULL,NULL,NULL,'0300-3300153',NULL,'','High School Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2437,1,'2437','Shahid ','',NULL,'',NULL,'Ghulam Nabi Khan',NULL,NULL,NULL,'0300-0990290',NULL,'','W/3 Lahar Para KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2438,1,'2438','Shoukat Khan ','',NULL,'',NULL,'Nasir Khan',NULL,NULL,NULL,'0336-3735797',NULL,'','W/3 Lahar Para KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2439,1,'2439','Haider Ali','',NULL,'',NULL,'Abdul Latif Khan',NULL,NULL,NULL,'0333-0393151',NULL,'','W/3 Lahar Para KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2440,1,'2440','Liaqat ','',NULL,'',NULL,'Yaseen Khan',NULL,NULL,NULL,'0306-4547200',NULL,'','W/3 Lahar Para KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2441,1,'2441','Master Qayoom','',NULL,'',NULL,'Mohammad Ali Khan',NULL,NULL,NULL,'0306-3540530',NULL,'','W/3 Lahar Para KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2442,1,'2442','Munawar Ali','',NULL,'',NULL,'',NULL,NULL,NULL,'0300-3321590',NULL,'','W/3 Lahar Para KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2443,1,'2443','Asif Zahoor ','',NULL,'',NULL,'Manwar Khan',NULL,NULL,NULL,'0300-2434148',NULL,'','W/3 Lahar Para KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2444,1,'2444','Kashif Ali','',NULL,'',NULL,'Yaseen Khan',NULL,NULL,NULL,'0300-8371710',NULL,'','W/3 Lahar Para KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2445,1,'2445','Suhail ','',NULL,'',NULL,'Rashid Khan',NULL,NULL,NULL,'0301-3918891',NULL,'','W/3 Lahar Para KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2446,1,'2446','Javeed','',NULL,'',NULL,'Rashid Khan',NULL,NULL,NULL,'0307-3138102',NULL,'','W/3 Lahar Para KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2447,1,'2447','Hassan','',NULL,'',NULL,'Shafiq Khan',NULL,NULL,NULL,'0336-2479499',NULL,'','W/3 Lahar Para KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2448,1,'2448','Javeed','',NULL,'',NULL,'Wahid Khan',NULL,NULL,NULL,'0333-2863991',NULL,'','W/3 Lahar Para KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2449,1,'2449','Daniyal','',NULL,'',NULL,'Ghulam Ghos',NULL,NULL,NULL,'0300-3051190',NULL,'','W/3 Lahar Para KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2450,1,'2450','Shamsulhaq','',NULL,'',NULL,'Mubarak Ali',NULL,NULL,NULL,'',NULL,'','W/3 Lahar Para KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2451,1,'2451','Abid Hussain','',NULL,'',NULL,'Ghulam Rasool Khan',NULL,NULL,NULL,'0306-8507727',NULL,'','W/2 Station Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2452,1,'2452','Mohammad Zeeshan','',NULL,'',NULL,'',NULL,NULL,NULL,'0302-3316906',NULL,'','W/2 Station Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2453,1,'2453','Allaudin','',NULL,'',NULL,'Jaffer Khan',NULL,NULL,NULL,'0301-3148200',NULL,'','W/2 Station Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2454,1,'2454','Ali Sher Khan','',NULL,'',NULL,'Jagidar Hayat Khan',NULL,NULL,NULL,'0333-7380511',NULL,'','W/2 Station Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2455,1,'2455','Naeem','',NULL,'',NULL,'Ghulam Rasool',NULL,NULL,NULL,'0300-3051190',NULL,'','W/3 Lahar Para KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2456,1,'2456','Jahangeer ','',NULL,'',NULL,'Hayat Khan',NULL,NULL,NULL,'',NULL,'','W/2 Station Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2457,1,'2457','Iqbal Khan ','',NULL,'',NULL,'Qasim Ali',NULL,NULL,NULL,'0333-3172240',NULL,'','W/2 Station Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2458,1,'2458','Nisar Ahmed','',NULL,'',NULL,'Qasim Ali',NULL,NULL,NULL,'0306-2731315',NULL,'','W/2 Station Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2459,1,'2459','Mohammad Ali','',NULL,'',NULL,'Allaudin Khan',NULL,NULL,NULL,'0306-3312226',NULL,'','W/2 Station Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2460,1,'2460','Abdul Sattar Khan','',NULL,'',NULL,'Yamin Khan',NULL,NULL,NULL,'0306-2322366',NULL,'','W/2 Station Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2461,1,'2461','Mohammad Jawed','',NULL,'',NULL,'Ghulam Rasool Khan',NULL,NULL,NULL,'0306-8268252',NULL,'','W/2 Station Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2462,1,'2462','Toafeeq Khan','',NULL,'',NULL,'Ilyas Khan',NULL,NULL,NULL,'0300-3300715',NULL,'','W/2 Station Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2463,1,'2463','Ghaffar Khan ','',NULL,'',NULL,'Yamin Khan',NULL,NULL,NULL,'0303-3103011',NULL,'','W/2 Station Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2464,1,'2464','Ashraf Ali ','',NULL,'',NULL,'Qadir Khan',NULL,NULL,NULL,'0300-3326719',NULL,'','W/2 Station Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2465,1,'2465','Mohammad Adnan','',NULL,'',NULL,'Ayoub Khan',NULL,NULL,NULL,'0300-2217701',NULL,'','W/2 Station Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2466,1,'2466','Ali Hassan ','',NULL,'',NULL,'Abdul Sattar Khan',NULL,NULL,NULL,'0333-2664880',NULL,'','W/2 Station Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2467,1,'2467','Shabir Khan','',NULL,'',NULL,'Ahmed Khan',NULL,NULL,NULL,'',NULL,'','W/2 Station Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2468,1,'2468','Asif Ali ','',NULL,'',NULL,'Shabir Ali',NULL,NULL,NULL,'0300-8171025',NULL,'','W/2 Station Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2469,1,'2469','Junaid ','',NULL,'',NULL,'Allaudin Khan',NULL,NULL,NULL,'0300-3322092',NULL,'','W/2 Station Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2470,1,'2470','Basheer Khan ','',NULL,'',NULL,'Sub Ahmed Khan',NULL,NULL,NULL,'0301-6378526',NULL,'','W/2 Station Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2471,1,'2471','Mohammad Akram','',NULL,'',NULL,'Qadar Khan',NULL,NULL,NULL,'0343-3592912',NULL,'','W/2 Station Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2472,1,'2472','Mehboob Elaahi','',NULL,'',NULL,'Ishtiaq Ahmed',NULL,NULL,NULL,'0333-6266689',NULL,'','W/2 Station Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2473,1,'2473','Qamaruzaman','',NULL,'',NULL,'Haji Munchi',NULL,NULL,NULL,'0300-3316274',NULL,'','W/2 Station Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2474,1,'2474','Shabir Khan','',NULL,'',NULL,'Aman Khan',NULL,NULL,NULL,'0333-7157055',NULL,'','W/2 Station Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2475,1,'2475','Riaz Ahmed','',NULL,'',NULL,'Abbaas Khan',NULL,NULL,NULL,'0300-0351362',NULL,'','W/2 Station Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2476,1,'2476','Yousuf Ali ','',NULL,'',NULL,'Ilyas Khan',NULL,NULL,NULL,'0334-2131906',NULL,'','W/2 Kai Khani Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2477,1,'2477','Shamshad Ali','',NULL,'',NULL,'Shamsheer Ali Khan',NULL,NULL,NULL,'0300-3442662',NULL,'','W/2 Kai Khani Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2478,1,'2478','Kashif Ali','',NULL,'',NULL,'Mohammad Rehman',NULL,NULL,NULL,'0303-2929139',NULL,'','W/2 High School KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2479,1,'2479','Naveed ','',NULL,'',NULL,'Wahid Khan',NULL,NULL,NULL,'0301-7211651',NULL,'','W/2 High School KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2480,1,'2480','Haji Suleman ','',NULL,'',NULL,'Sanwat Khan',NULL,NULL,NULL,'0300-3322357',NULL,'','W/2 High School KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2481,1,'2481','Qasim ','',NULL,'',NULL,'Sanwat Ali Khan',NULL,NULL,NULL,'0306-2568421',NULL,'','W/2 High School KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2482,1,'2482','Mohammad Moosa','',NULL,'',NULL,'Inayat Khan',NULL,NULL,NULL,'0333-3442684',NULL,'','W/2 High School KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2483,1,'2483','AbduAllah','',NULL,'',NULL,'Ramzan Khan',NULL,NULL,NULL,'0333-7156186',NULL,'','W/2 High School KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2484,1,'2484','Ziauhaq','',NULL,'',NULL,'Mohammad Ayoub Khan',NULL,NULL,NULL,'0301-3913500',NULL,'','W/2 High School KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2485,1,'2485','Aftaab ','',NULL,'',NULL,'Rustam Khan',NULL,NULL,NULL,'',NULL,'','W/2 High School KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2486,1,'2486','Mohammad Zahid ','',NULL,'',NULL,'Yaqoob Khan',NULL,NULL,NULL,'0335-2297184',NULL,'','W/2 High School KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2487,1,'2487','Iftikhar Amed','',NULL,'',NULL,'Ibrahim Khan',NULL,NULL,NULL,'0334-2558167',NULL,'','W/2 High School KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2488,1,'2488','Ghulam Mustafa','',NULL,'',NULL,'Moosa Khan',NULL,NULL,NULL,'0306-3552249',NULL,'','W/2 High School KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2489,1,'2489',' Mohammad Arshad','',NULL,'',NULL,'Mohammad Ali Khan',NULL,NULL,NULL,'0343-3912752',NULL,'','W/2 High School KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2490,1,'2490','Rafiq','',NULL,'',NULL,'Inayat Ali Khan',NULL,NULL,NULL,'0303-3655452',NULL,'','W/2 High School KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2491,1,'2491','Mohammad Ahsaan','',NULL,'',NULL,'Mumtaaz Khan',NULL,NULL,NULL,'0345-3752448',NULL,'','W/2 High School KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2492,1,'2492','Noor Mohammad ','',NULL,'',NULL,'Sultan Khan',NULL,NULL,NULL,'0301-3901672',NULL,'','W/2 High School KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2493,1,'2493','Younus Khan ','',NULL,'',NULL,'Ramzan Khan',NULL,NULL,NULL,'0300-3332081',NULL,'','W/2 High School KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2494,1,'2494','Mustafa Khan','',NULL,'',NULL,'Wahid Khan',NULL,NULL,NULL,'0301-3911840',NULL,'','W/2 High School KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2495,1,'2495','Mohammad Abbas','',NULL,'',NULL,'Yousuf Khan',NULL,NULL,NULL,'0306-3090972',NULL,'','W/2 High School KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2496,1,'2496','Jamshed','',NULL,'',NULL,'Wahid Ali',NULL,NULL,NULL,'0331-6837324',NULL,'','W/6 Telephone Exchange KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2497,1,'2497','Mohammad Ashraf ','',NULL,'',NULL,'Mumtaz ali',NULL,NULL,NULL,'0306-8266303',NULL,'','W/6 Telephone Exchange KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2498,1,'2498','Anwer Ali ','',NULL,'',NULL,'Sawant Khan',NULL,NULL,NULL,'0303-2829235',NULL,'','W/6 Telephone Exchange KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2499,1,'2499','Mohammad Ishaaq','',NULL,'',NULL,'Mushtaqe Khan',NULL,NULL,NULL,'0321-3426968',NULL,'','W/6 Telephone Exchange KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2500,1,'2500','Mujeeb','',NULL,'',NULL,' Fazllurehman',NULL,NULL,NULL,'0300-3321215',NULL,'','W/6 Telephone Exchange KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2501,1,'2501','','',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'','W/6 Telephone Exchange KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2502,1,'2502','(Late) Irfan ','',NULL,'',NULL,'Aslam',NULL,NULL,NULL,'0308-3848817',NULL,'','W/6 Telephone Exchange KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2503,1,'2503','Mohammad Tahir ','',NULL,'',NULL,'Mustaq Ahmed',NULL,NULL,NULL,'0300-3329096',NULL,'','W/6 Telephone Exchange KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2504,1,'2504','Piyaar Ali ','',NULL,'',NULL,'Usman Khan',NULL,NULL,NULL,'0342-3292300',NULL,'','W/6 Telephone Exchange KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2505,1,'2505','Khadim Husssain','',NULL,'',NULL,'Usman Khan',NULL,NULL,NULL,'0306-2622535',NULL,'','W/6 Telephone Exchange KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2506,1,'2506','Aslam Khan ','',NULL,'',NULL,'Noor Mohammad Khan',NULL,NULL,NULL,'0306-3231500',NULL,'','W/6 Telephone Exchange KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2507,1,'2507','Shamshad','',NULL,'',NULL,'Noor Mohammad Khan',NULL,NULL,NULL,'0332-2184462',NULL,'','W/6 Telephone Exchange KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2508,1,'2508','Mehfooz Khan','',NULL,'',NULL,'Nawab Abdul Majeed',NULL,NULL,NULL,'0306-3600576',NULL,'','W/6 Telephone Exchange KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2509,1,'2509','Shoukat Khan ','',NULL,'',NULL,'Shamsheer Ali Khan',NULL,NULL,NULL,'0306-8268891',NULL,'','W/6 Telephone Exchange KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2510,1,'2510','Mohammad Hassan ','',NULL,'',NULL,'Hasmat Ali',NULL,NULL,NULL,'0307-2669126',NULL,'','W/6 Telephone Exchange KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2511,1,'2511','Gul Mohammad Khan ','',NULL,'',NULL,'Nazar Mohammad Khan',NULL,NULL,NULL,'0302-3084395',NULL,'','W/6 Telephone Exchange KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2512,1,'2512','Sikandar ','',NULL,'',NULL,'Mohammad Yamin Khan',NULL,NULL,NULL,'0300-8954130',NULL,'','W/6 Telephone Exchange KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2513,1,'2513','Asif ','',NULL,'',NULL,'Nisar Khan',NULL,NULL,NULL,'0302-3909615',NULL,'','W/6 Telephone Exchange KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2514,1,'2514','Dolat Khan','',NULL,'',NULL,'Umaid Khan',NULL,NULL,NULL,'0307-3061900',NULL,'','W/6 Telephone Exchange KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2515,1,'2515','Umaid Ali','',NULL,'',NULL,'Mohammad Yasin Khan',NULL,NULL,NULL,'0333-2900613',NULL,'','W/6 Telephone Exchange KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2516,1,'2516','Dr Aslam','',NULL,'',NULL,'Mohammad Ameer Khan',NULL,NULL,NULL,'0306-8262192',NULL,'','W/6 Telephone Exchange KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2517,1,'2517','Mohammad Arshad','',NULL,'',NULL,'Mohammad Manwar Khan',NULL,NULL,NULL,'0331-3887460',NULL,'','W/3 Near Madina Masjid',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2518,1,'2518','Basheer Ahmed Khan','',NULL,'',NULL,'Bhou Khan',NULL,NULL,NULL,'0305-3329730',NULL,'','W/3 Near Madina Masjid',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2519,1,'2519','Ejaz Ahmed','',NULL,'',NULL,'Nazir Khan',NULL,NULL,NULL,'0300-2680389',NULL,'','W/3 Near Madina Masjid',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2520,1,'2520','Mohammad Yousuf','',NULL,'',NULL,'Khadim Hussain',NULL,NULL,NULL,'0307-3188201',NULL,'','W/3 Near Madina Masjid',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2521,1,'2521','Mohammad Aslam Khan','',NULL,'',NULL,'Allaudin Khan',NULL,NULL,NULL,'0300-3300772',NULL,'','W/3 Near Madina Masjid',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2522,1,'2522','Mohammad Ameer ','',NULL,'',NULL,'Yamin Khan',NULL,NULL,NULL,'0300-3930404',NULL,'','W/3 Near Madina Masjid',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2523,1,'2523','Zulfiqar','',NULL,'',NULL,'Noor Khan',NULL,NULL,NULL,'',NULL,'','W/3 Near Madina Masjid',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2524,1,'2524','Mohammad Shafiq ','',NULL,'',NULL,'Amad Khan',NULL,NULL,NULL,'0333-2967186',NULL,'','W/3 Near Madina Masjid',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2525,1,'2525','Liaqat Gudy Khan ','',NULL,'',NULL,'Yasin Khan',NULL,NULL,NULL,'0306-3576106',NULL,'','W/3 Near Madina Masjid',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2526,1,'2526','Toafiq Ahmed','',NULL,'',NULL,'Ahmed Ali',NULL,NULL,NULL,'0333-0272055',NULL,'','W/3 Near Madina Masjid',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2527,1,'2527','Tahir ','',NULL,'',NULL,'Wahid Khan',NULL,NULL,NULL,'0336-3271148',NULL,'','W/3 Near Madina Masjid',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2528,1,'2528','Mohammad Akram ','',NULL,'',NULL,'Taj Mohammad Khan',NULL,NULL,NULL,'0307-3516155',NULL,'','W/3 Near Madina Masjid',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2529,1,'2529','Mohammad Shahid','',NULL,'',NULL,'Allaudin Khan',NULL,NULL,NULL,'0335-1201247',NULL,'','W/3 Near Madina Masjid',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2530,1,'2530','Ayoub Khan ','',NULL,'',NULL,'Ashgar Ali',NULL,NULL,NULL,'0303-6364004',NULL,'','W/3 Near Madina Masjid',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2531,1,'2531','Baber ','',NULL,'',NULL,'Younus Khan',NULL,NULL,NULL,'0301-3151569',NULL,'','W/3 Near Madina Masjid',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2532,1,'2532','Shoukat Hayat ','',NULL,'',NULL,'Hanif Khan',NULL,NULL,NULL,'0333-2222090',NULL,'','W/3 Near Madina Masjid',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2533,1,'2533','Zahid Khan ','',NULL,'',NULL,'Azhar Ali',NULL,NULL,NULL,'0313-3800480',NULL,'','W/3 Near Madina Masjid',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2534,1,'2534','Usman Aziz','',NULL,'',NULL,' Abdul Aziz Khan',NULL,NULL,NULL,'0301-3246649',NULL,'','W/3 Near Madina Masjid',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2535,1,'2535','Arif Khan','',NULL,'',NULL,' Abdul Aziz Khan',NULL,NULL,NULL,'0302-4978508',NULL,'','W/3 Near Madina Masjid',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2536,1,'2536','Mohammad Imran','',NULL,'',NULL,' Abdul Aziz Khan',NULL,NULL,NULL,'0333-7033653',NULL,'','W/3 Near Madina Masjid',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2537,1,'2537','Mohammad Rizwan','',NULL,'',NULL,' Abdul Aziz Khan',NULL,NULL,NULL,'0331-2955400',NULL,'','W/3 Station Road',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2538,1,'2538','Mohammad Asif ','',NULL,'',NULL,' Abdul Aziz Khan',NULL,NULL,NULL,'0300-9378902',NULL,'','W/3 Station Road',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2539,1,'2539','Ansar ','',NULL,'',NULL,'Sidique Khan',NULL,NULL,NULL,'0336-6893656',NULL,'','W/3 Station Road',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2540,1,'2540','Javaid ','',NULL,'',NULL,'Iqbal Ahmed Khan',NULL,NULL,NULL,'0300-9450779',NULL,'','W/3 Station Road',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2541,1,'2541','Irfan ','',NULL,'',NULL,'Umer Deen',NULL,NULL,NULL,'0333-2095486',NULL,'','W/3 Station Road',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2542,1,'2542','Khadim Husssain','',NULL,'',NULL,'Atta Mohammad Khan',NULL,NULL,NULL,'0331-2775604',NULL,'','W/4 Eid Gahh Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2543,1,'2543','Mohammad Atif Khan','',NULL,'',NULL,'Abdul Aziz Khan',NULL,NULL,NULL,'0300-3314725',NULL,'','W/4 Eid Gahh Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2544,1,'2544','Shabir Ahmed','',NULL,'',NULL,'Shoukat Ali',NULL,NULL,NULL,'0304-3650389',NULL,'','W/4 Eid Gahh Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2545,1,'2545','Orangzaib ','',NULL,'',NULL,'Mohammad Ali Khan',NULL,NULL,NULL,'0301-3280108',NULL,'','W/4 Eid Gahh Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2546,1,'2546','Shakir Khan','',NULL,'',NULL,'Iqbal Ahmed Khan',NULL,NULL,NULL,'0300-3312069',NULL,'','W/4 Eid Gahh Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2547,1,'2547','Shakeel Ahmed ','',NULL,'',NULL,'Ali Mohammad ',NULL,NULL,NULL,'0300-3322526',NULL,'','W/4 Eid Gahh Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2548,1,'2548','Allaudiin','',NULL,'',NULL,'Ali Mohammad ',NULL,NULL,NULL,'0306-2018400',NULL,'','W/4 Eid Gahh Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2549,1,'2549','Rafiq ','',NULL,'',NULL,'Ghulam Ali',NULL,NULL,NULL,'0306-4547244',NULL,'','W/4 Eid Gahh Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2550,1,'2550','Mohammad Hassan ','',NULL,'',NULL,'Fayaaz Ahmed',NULL,NULL,NULL,'0336-2917295',NULL,'','W/4 Eid Gahh Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2551,1,'2551','Waqas','',NULL,'',NULL,'Haji Mannudin Khan',NULL,NULL,NULL,'0300-7156949',NULL,'','W/4 Eid Gahh Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2552,1,'2552','Khalid ','',NULL,'',NULL,'Yasin Khan',NULL,NULL,NULL,'0306-9193165',NULL,'','W/4 Eid Gahh Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2553,1,'2553','Mohammad Sharif ','',NULL,'',NULL,'Yasin Khan',NULL,NULL,NULL,'0336-3928747',NULL,'','W/4 Eid Gahh Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2554,1,'2554','Itazaar Ahmed','',NULL,'',NULL,'Qasim Ali Khan',NULL,NULL,NULL,'0313-3539392',NULL,'','W/4 Eid Gahh Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2555,1,'2555','Asif Ali ','',NULL,'',NULL,'Qasim Ali Khan',NULL,NULL,NULL,'0333-4941449',NULL,'','W/4 Eid Gahh Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2556,1,'2556','Abdul Jabbar ','',NULL,'',NULL,'Qasim Ali Khan',NULL,NULL,NULL,'0305-2636071',NULL,'','W/4 Eid Gahh Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2557,1,'2557','Asif Istiaq ','',NULL,'',NULL,'Istiaq',NULL,NULL,NULL,'0300-3249360',NULL,'','W/4 Eid Gahh Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2558,1,'2558','Zafar Iqbal','',NULL,'',NULL,'Iqbal Hussain',NULL,NULL,NULL,'0344-3500021',NULL,'','W/4 Eid Gahh Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2559,1,'2559','Majeed ','',NULL,'',NULL,'Nasir Khan',NULL,NULL,NULL,'0308-7412209',NULL,'','W/4 Eid Gahh Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2560,1,'2560','Imran ','',NULL,'',NULL,'Iqbal Khan',NULL,NULL,NULL,'0307-3441800',NULL,'','W/4 Eid Gahh Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2561,1,'2561','Nisar Ahmed ','',NULL,'',NULL,'Mustaq Ahmed',NULL,NULL,NULL,'0333-7071509',NULL,'','W/4 Eid Gahh Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2562,1,'2562','Nadim ','',NULL,'',NULL,'Hashim Khan',NULL,NULL,NULL,'0300-3340712',NULL,'','W/4 Eid Gahh Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2563,1,'2563','Abdul Qayoom ','',NULL,'',NULL,'AbdullAllah ',NULL,NULL,NULL,'0347-1321142',NULL,'','W/4 Eid Gahh Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2564,1,'2564','Javaid ','',NULL,'',NULL,'Sami Khan',NULL,NULL,NULL,'0301-3526529',NULL,'','W/4 Eid Gahh Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2565,1,'2565','Allaudin Khan','',NULL,'',NULL,'Yasin Khan',NULL,NULL,NULL,'0307-2537900',NULL,'','W/4 Eid Gahh Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2566,1,'2566','Khalid ','',NULL,'',NULL,'Hidayat Khan',NULL,NULL,NULL,'0306-2926504',NULL,'','W/4 Eid Gahh Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2567,1,'2567','Asif ','',NULL,'',NULL,'Arshad ',NULL,NULL,NULL,'0301-3305676',NULL,'','W/4 Eid Gahh Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2568,1,'2568','Rashid ','',NULL,'',NULL,'Arshad ',NULL,NULL,NULL,'0300-3327844',NULL,'','W/4 Eid Gahh Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2569,1,'2569','Arshad Khan ','',NULL,'',NULL,'Nanu Khan',NULL,NULL,NULL,'0306-2763390',NULL,'','W/4 Eid Gahh Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2570,1,'2570','Imran ','',NULL,'',NULL,'Haneef Khan',NULL,NULL,NULL,'0302-3999559',NULL,'','W/4 Eid Gahh Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2571,1,'2571','Tahir ','',NULL,'',NULL,'Yasin Khan',NULL,NULL,NULL,'0300-3530067',NULL,'','W/4 Eid Gahh Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2572,1,'2572','Farooq Khan ','',NULL,'',NULL,'Yasin Khan',NULL,NULL,NULL,'0301-3915975',NULL,'','W/4 Eid Gahh Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2573,1,'2573','Taimour ','',NULL,'',NULL,'Mehmood Khan',NULL,NULL,NULL,'0334-2559899',NULL,'','W/4 Eid Gahh Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2574,1,'2574','Moinudin Khan','',NULL,'',NULL,'Rustam Khan',NULL,NULL,NULL,'0331-3672688',NULL,'','W/4 Eid Gahh Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2575,1,'2575','Shafiq Ahmed','',NULL,'',NULL,'Shabir Khan',NULL,NULL,NULL,'0300-8178866',NULL,'','W/4 Eid Gahh Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2576,1,'2576','Aadil ','',NULL,'',NULL,'Shabir Khan',NULL,NULL,NULL,'0304-8675184',NULL,'','W/4 Eid Gahh Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2577,1,'2577','Zahid Khan ','',NULL,'',NULL,'Deen Mohammad',NULL,NULL,NULL,'0300-3022474',NULL,'','W/3 Near Khall KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2578,1,'2578','Asif ','',NULL,'',NULL,'Yasin Khan',NULL,NULL,NULL,'0332-2700925',NULL,'','W/3 Near Khall KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2579,1,'2579','Abdul Latif','',NULL,'',NULL,'Haji AbduAllah Khan',NULL,NULL,NULL,'0335-2024493',NULL,'','W/3 Near Khall KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2580,1,'2580','Haji IqBAL ','',NULL,'',NULL,'Laal Khan ',NULL,NULL,NULL,'0307-3347954',NULL,'','W/3 Near Khall KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2581,1,'2581','Barkat ','',NULL,'',NULL,'Haji AbduAllah',NULL,NULL,NULL,'0303-3688240',NULL,'','W/3 Near Khall KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2582,1,'2582','Usman Khan ','',NULL,'',NULL,'Haji Mohammad Aziz',NULL,NULL,NULL,'0302-3317696',NULL,'','W/3 Near Khall KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2583,1,'2583','Adnan ','',NULL,'',NULL,'Faiz Khan',NULL,NULL,NULL,'0333-1722200',NULL,'','W/3 Near Khall KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2584,1,'2584','Umer Hayat ','',NULL,'',NULL,'Yamin Khan',NULL,NULL,NULL,'0306-8227332',NULL,'','W/3 Near Khall KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2585,1,'2585','Zulfiqar','',NULL,'',NULL,'Iqbal Khan',NULL,NULL,NULL,'0300-3854019',NULL,'','W/7 Buladi Colony KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2586,1,'2586','Aziz ','',NULL,'',NULL,'Nasir Khan',NULL,NULL,NULL,'0306-8265367',NULL,'','W/7 Buladi Colony KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2587,1,'2587','Khalid Ahmed ','',NULL,'',NULL,'Allaudin Khan',NULL,NULL,NULL,'0336-2911040',NULL,'','W/7 Buladi Colony KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2588,1,'2588','Mohammad Faheem ','',NULL,'',NULL,'Mustafa Khan',NULL,NULL,NULL,'0301-3628248',NULL,'','W/7 Buladi Colony KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2589,1,'2589','Iqbal Khan ','',NULL,'',NULL,'Abdul Ghani Khan',NULL,NULL,NULL,'0307-3031453',NULL,'','W/7 Buladi Colony KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2590,1,'2590','Mohammad Jawed','',NULL,'',NULL,'Abdul Ghani Khan',NULL,NULL,NULL,'0300-3325502',NULL,'','W/7 Buladi Colony KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2591,1,'2591','Mohammad Akram','',NULL,'',NULL,'Abdul Ghani Khan',NULL,NULL,NULL,'0304-5646424',NULL,'','W/7 Buladi Colony KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2592,1,'2592','Mohammad Aslam Khan','',NULL,'',NULL,'Abdul Ghani Khan',NULL,NULL,NULL,'0333-3311744',NULL,'','W/7 Buladi Colony KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2593,1,'2593','Mohammad Haneef ','',NULL,'',NULL,'Habib Khan',NULL,NULL,NULL,'0335-0278898',NULL,'','W/7 Buladi Colony KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2594,1,'2594','Mohammad Siddiq','',NULL,'',NULL,'Khaju Khan',NULL,NULL,NULL,'0333-8948578',NULL,'','W/7 Buladi Colony KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2595,1,'2595','Shoukat Khan ','',NULL,'',NULL,'Caption Sabdal Khan',NULL,NULL,NULL,'0306-3556606',NULL,'','W/7 Buladi Colony KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2596,1,'2596','Mohammad Aslam','',NULL,'',NULL,'Nazar Mohammad Khan',NULL,NULL,NULL,'0307-3314350',NULL,'','W/7 Buladi Colony KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2597,1,'2597','Jamshaid ','',NULL,'',NULL,'Mushtaqe Khan',NULL,NULL,NULL,'0305-2560692',NULL,'','W/6 Near Primary School KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2598,1,'2598','Umaid Ali','',NULL,'',NULL,'Taaj Mohammad Khan',NULL,NULL,NULL,'0335-2149729',NULL,'','W/6 Near Primary School KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2599,1,'2599','Mohammad Hussain','',NULL,'',NULL,'Ibrahim Khan',NULL,NULL,NULL,'0308-3550485',NULL,'','W/6 Near Exchange Office KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2600,1,'2600','Naveed Ahmed','',NULL,'',NULL,'Haji Moosa',NULL,NULL,NULL,'0300-3328067',NULL,'','W/6 Near Exchange Office KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2601,1,'2601','Rahil','',NULL,'',NULL,'Zafar Iqbal',NULL,NULL,NULL,'0300-3303887',NULL,'','W/6 Near Exchange Office KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2602,1,'2602','Ishfaq ','',NULL,'',NULL,'Haji Moosa Khan',NULL,NULL,NULL,'0304-3180199',NULL,'','W/6 Near Exchange Office KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2603,1,'2603','Rahil Ahmed ','',NULL,'',NULL,'Shabir Ahmed',NULL,NULL,NULL,'',NULL,'','W/1 Factory Road  KMG',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2604,1,'2604','Mohammad Aslam Khan','',NULL,'',NULL,'AbduAllah Khan',NULL,NULL,NULL,'0333-2967206',NULL,'','Makkah Masjid Ward No 03',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2605,1,'2605','Akber ALI','',NULL,'',NULL,' Inayat ALI ',NULL,NULL,NULL,'0331-2882841',NULL,'','Makkah Masjid Ward No 03',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2606,1,'2606','Mohammad Junaid ','',NULL,'',NULL,'Mohammad Hassan ',NULL,NULL,NULL,'0301-3918591',NULL,'','Makkah Masjid Ward No 03',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2607,1,'2607','Abdul Rehman ','',NULL,'',NULL,'Noor Mohammad Khan',NULL,NULL,NULL,'0300-2356255',NULL,'','Makkah Masjid Ward No 03',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2608,1,'2608','Saeed Khan','',NULL,'',NULL,'Ayaaz Khan',NULL,NULL,NULL,'0332-1318510',NULL,'','Makkah Masjid Ward No 03',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2609,1,'2609','Nisar Khan','',NULL,'',NULL,'Taaj Mohammad Khan',NULL,NULL,NULL,'0300-3971532',NULL,'','Makkah Masjid Ward No 03',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2610,1,'2610','Yameen Khan ','',NULL,'',NULL,'Taaj Mohammad Khan',NULL,NULL,NULL,'0300-0284740',NULL,'','Makkah Masjid Ward No 03',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2611,1,'2611','Ali Akhter ','',NULL,'',NULL,'Ashgar Khan',NULL,NULL,NULL,'0300-2218649',NULL,'','Makkah Masjid Ward No 03',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2612,1,'2612','Ali Akram ','',NULL,'',NULL,'Ashgar Khan',NULL,NULL,NULL,'0307-3317797',NULL,'','Makkah Masjid Ward No 03',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2613,1,'2613','Aslam Khan ','',NULL,'',NULL,'Ashgar Khan',NULL,NULL,NULL,'0301-2418513',NULL,'','Makkah Masjid Ward No 03',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2614,1,'2614','Shabir Khan ','',NULL,'',NULL,'Hidayat Khan',NULL,NULL,NULL,'0305-2122266',NULL,'','Makkah Masjid Ward No 03',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2615,1,'2615','Raffiq','',NULL,'',NULL,'Hidayat Khan',NULL,NULL,NULL,'0306-8227511',NULL,'','Makkah Masjid Ward No 03',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2616,1,'2616','Shafiq Ahmed','',NULL,'',NULL,'Hidayat Khan',NULL,NULL,NULL,'0300-0350010',NULL,'','Makkah Masjid Ward No 03',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2617,1,'2617','Mohammad Shahid ','',NULL,'',NULL,'Mumtaz Khan',NULL,NULL,NULL,'0332-3905254',NULL,'','Makkah Masjid Ward No 03',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2618,1,'2618','Mohammad Saleem ','',NULL,'',NULL,'Mumtaz Khan',NULL,NULL,NULL,'0303-2451788',NULL,'','Makkah Masjid Ward No 03',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2619,1,'2619','Mohammad Akram','',NULL,'',NULL,'Azam Khan',NULL,NULL,NULL,'0305-2643979',NULL,'','Makkah Masjid Ward No 03',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2620,1,'2620','Mohammad Abid ','',NULL,'',NULL,'Azam Khan',NULL,NULL,NULL,'0307-3341450',NULL,'','Makkah Masjid Ward No 03',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2621,1,'2621','Mohammad Ayoub ','',NULL,'',NULL,'Azam Khan',NULL,NULL,NULL,'0306-8205693',NULL,'','Makkah Masjid Ward No 03',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2622,1,'2622','Mohammad Arshad ','',NULL,'',NULL,'Sher Mohammad Khan',NULL,NULL,NULL,'0305-3010210',NULL,'','Makkah Masjid Ward No 03',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2623,1,'2623','Mohammad Sagheer ','',NULL,'',NULL,'Hidayat Khan',NULL,NULL,NULL,'',NULL,'','Makkah Masjid Ward No 03',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2624,1,'2624','Mohammad Saleem ','',NULL,'',NULL,'Yamin Khan',NULL,NULL,NULL,'0331-2943950',NULL,'','Makkah Masjid Ward No 03',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2625,1,'2625','Mohammad Umer ','',NULL,'',NULL,'Habib Khan',NULL,NULL,NULL,'0306-9193173',NULL,'','Makkah Masjid Ward No 03',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2626,1,'2626','Shahzad ','',NULL,'',NULL,'Saleem Khan',NULL,NULL,NULL,'0331-2943950',NULL,'','Makkah Masjid Ward No 03',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2627,1,'2627','Shabir ','',NULL,'',NULL,'Mumtaz Khan',NULL,NULL,NULL,'0306-2361587',NULL,'','Makkah Masjid Ward No 03',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2628,1,'2628','Mohammad Shakeel ','',NULL,'',NULL,'Ibrahim Khan',NULL,NULL,NULL,'0300-3523140',NULL,'','Makkah Masjid Ward No 03',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2629,1,'2629','Mohammad Siddiq','',NULL,'',NULL,'Ibrahim Khan',NULL,NULL,NULL,'0332-9606392',NULL,'','Makkah Masjid Ward No 03',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2630,1,'2630','Ameer Hassan ','',NULL,'',NULL,'Hassan ',NULL,NULL,NULL,'0333-3233885',NULL,'','Makkah Masjid Ward No 03',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2631,1,'2631','Salahuddin ','',NULL,'',NULL,'Allaudin Khan',NULL,NULL,NULL,'0301-3326085',NULL,'','Makkah Masjid Ward No 03',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2632,1,'2632','Abdul Latif ','',NULL,'',NULL,'Karamat ',NULL,NULL,NULL,'0312-3541793',NULL,'','Makkah Masjid Ward No 03',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2633,1,'2633','Nizam Khan ','',NULL,'',NULL,'Bahu Khan ',NULL,NULL,NULL,'0302-2387754',NULL,'','Makkah Masjid Ward No 03',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2634,1,'2634','Tameel Khan ','',NULL,'',NULL,'Noor Mohammad Khan',NULL,NULL,NULL,'0331-7157460',NULL,'','Makkah Masjid Ward No 03',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2635,1,'2635','Nawab Danish ','',NULL,'',NULL,'Shafqat ',NULL,NULL,NULL,'0333-3132506',NULL,'','Makkah Masjid Ward No 03',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2636,1,'2636','Papu Younus ','',NULL,'',NULL,'Younus Khan',NULL,NULL,NULL,'0305-3901138',NULL,'','Makkah Masjid Ward No 03',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2637,1,'2637','Aijaz Nabi','',NULL,'',NULL,'Feeroz Khan ',NULL,NULL,NULL,'0334-3838090',NULL,'','Makkah Masjid Ward No 03',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2638,1,'2638','Mohammad Aslam Khan','',NULL,'',NULL,'Bahu Khan ',NULL,NULL,NULL,'0333-2539544',NULL,'','Makkah Masjid Ward No 03',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2639,1,'2639','Mohammad Siddiq','',NULL,'',NULL,'Habib Khan',NULL,NULL,NULL,'0300-3542544',NULL,'','Makkah Masjid Ward No 03',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2640,1,'2640','Mohammad Nasir ','',NULL,'',NULL,'Habib Khan',NULL,NULL,NULL,'0332-9990940',NULL,'','Makkah Masjid Ward No 03',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2641,1,'2641','Farooq Khan ','',NULL,'',NULL,'Shamsheer Ali Khan',NULL,NULL,NULL,'0333-5846895',NULL,'','Makkah Masjid Ward No 03',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2642,1,'2642','Faisal ','',NULL,'',NULL,'Farooq Khan ',NULL,NULL,NULL,'0333-4941390',NULL,'','Makkah Masjid Ward No 03',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2643,1,'2643','Allaudin Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0333-2637318',NULL,'','Makkah Masjid Ward No 03',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2644,1,'2644','Mohammad Tahir ','',NULL,'',NULL,'Liaqat Ali',NULL,NULL,NULL,'0307-3227294',NULL,'','Makkah Masjid Ward No 03',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2645,1,'2645','Ali Hassan ','',NULL,'',NULL,'Habib Khan',NULL,NULL,NULL,'0333-2706828',NULL,'','Makkah Masjid Ward No 03',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2646,1,'2646','Aijaz Nabi','',NULL,'',NULL,'Ghulam Nabi Khan',NULL,NULL,NULL,'0300-3200680',NULL,'','Makkah Masjid Ward No 03',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2647,1,'2647','Muslim ','',NULL,'',NULL,'Bahu Khan ',NULL,NULL,NULL,'0332-3535990',NULL,'','Makkah Masjid Ward No 03',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2648,1,'2648','Habib Khan ','',NULL,'',NULL,'Nawab Khan',NULL,NULL,NULL,'0316-3133091',NULL,'','Makkah Masjid Ward No 03',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2649,1,'2649','Shakeel ','',NULL,'',NULL,'Basheer Khan',NULL,NULL,NULL,'0300-4499074',NULL,'','Makkah Masjid Ward No 03',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2650,1,'2650','Munaf ','',NULL,'',NULL,'Habib Khan',NULL,NULL,NULL,'0301-3141870',NULL,'','Makkah Masjid Ward No 03',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2651,1,'2651','Mohammad Jabbar ','',NULL,'',NULL,'Shamsuddin ',NULL,NULL,NULL,'0334-3595448',NULL,'','Makkah Masjid Ward No 03',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2652,1,'2652','Mubarak ','',NULL,'',NULL,'Inayat Khan ',NULL,NULL,NULL,'0307-3395639',NULL,'','Makkah Masjid Ward No 03',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2653,1,'2653','Younus ','',NULL,'',NULL,'Inayat Khan ',NULL,NULL,NULL,'0303-2073869',NULL,'','Makkah Masjid Ward No 03',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2654,1,'2654','Nisar Ahmed ','',NULL,'',NULL,'Taaj Mohammad Khan',NULL,NULL,NULL,'0300-3971532',NULL,'','Makkah Masjid Ward No 03',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2655,1,'2655','Yameen Khan ','',NULL,'',NULL,'Taaj Mohammad Khan',NULL,NULL,NULL,'0333-7380291',NULL,'','Makkah Masjid Ward No 03',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2656,1,'2656','Muzamil ','',NULL,'',NULL,'Ayaz Khan',NULL,NULL,NULL,'0300-3323219',NULL,'','Makkah Masjid Ward No 03',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2657,1,'2657','Rashid ','',NULL,'',NULL,'Fayaz Khan',NULL,NULL,NULL,'0300-3326626',NULL,'','Makkah Masjid Ward No 03',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2658,1,'2658','Tasleem ','',NULL,'',NULL,'Hidayat Khan',NULL,NULL,NULL,'0333-2887646',NULL,'','Makkah Masjid Ward No 03',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2659,1,'2659','Nisar Khan ','',NULL,'',NULL,'Ali Khan',NULL,NULL,NULL,'0300-3280199',NULL,'','Makkah Masjid Ward No 03',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2660,1,'2660','Allauddin ','',NULL,'',NULL,'Ali Khan',NULL,NULL,NULL,'',NULL,'','Makkah Masjid Ward No 03',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2661,1,'2661','Shakeel ','',NULL,'',NULL,'Ali Khan',NULL,NULL,NULL,'',NULL,'','Makkah Masjid Ward No 03',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2662,1,'2662','Waqas Ahmed ','',NULL,'',NULL,'Mehrudiin ',NULL,NULL,NULL,'0300-7156949',NULL,'','Makkah Masjid Ward No 03',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2663,1,'2663','Riaz Ahmed','',NULL,'',NULL,'Mehrudiin ',NULL,NULL,NULL,'0300-3721709',NULL,'','Makkah Masjid Ward No 03',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2664,1,'2664','Khadim','',NULL,'',NULL,'Qadar Khan',NULL,NULL,NULL,'0301-2961603',NULL,'','Makkah Masjid Ward No 03',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2665,1,'2665','Abid ','',NULL,'',NULL,'Qadar Khan',NULL,NULL,NULL,'0301-3456503',NULL,'','Makkah Masjid Ward No 03',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2666,1,'2666','Ashgar ','',NULL,'',NULL,'Inayat Ali',NULL,NULL,NULL,'0334-1247131',NULL,'','Makkah Masjid Ward No 03',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2667,1,'2667','Akhter ','',NULL,'',NULL,'Sarwar Khan ',NULL,NULL,NULL,'0333-3037727',NULL,'','Makkah Masjid Ward No 03',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2668,1,'2668','Arif Khan ','',NULL,'',NULL,'Haneef Khan',NULL,NULL,NULL,'',NULL,'','Makkah Masjid Ward No 03',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2669,1,'2669','Jameel ','',NULL,'',NULL,'Munawer Khan ',NULL,NULL,NULL,'',NULL,'','Makkah Masjid Ward No 03',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2670,1,'2670','Islam ','',NULL,'',NULL,'Nisar Khan',NULL,NULL,NULL,'0300-3971532',NULL,'','Makkah Masjid Ward No 03',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2671,1,'2671','Shafqat Ali','',NULL,'',NULL,'Ibrahim Khan',NULL,NULL,NULL,'0308-3578335',NULL,'','Makkah Masjid Ward No 03',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2672,1,'2672','Idress Khan ','',NULL,'',NULL,'Yousuf Khan ',NULL,NULL,NULL,'0301-3282395',NULL,'','Makkah Masjid Ward No 03',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2673,1,'2673','Nadeem ','',NULL,'',NULL,'Nizam Khan ',NULL,NULL,NULL,'0302-2387754',NULL,'','Makkah Masjid Ward No 03',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2674,1,'2674','Zubair ','',NULL,'',NULL,'Nizam Khan ',NULL,NULL,NULL,'0300-3469192',NULL,'','Makkah Masjid Ward No 03',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2675,1,'2675','Latif ','',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'','Makkah Masjid Ward No 03',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2676,1,'2676','Rafiq ','',NULL,'',NULL,'Ramzan Khan ',NULL,NULL,NULL,'',NULL,'','Makkah Masjid Ward No 03',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2677,1,'2677','Nisar Khan ','',NULL,'',NULL,'Ali Mohammad Khan ',NULL,NULL,NULL,'0300-3280199',NULL,'','Makkah Masjid Ward No 03',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2678,1,'2678','Jewan Khan ','',NULL,'',NULL,'Inayat Ali Khan',NULL,NULL,NULL,'0302-3908689',NULL,'','Makkah Masjid Ward No 03',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2679,1,'2679','Siddiq ','',NULL,'',NULL,'Hidayat Khan',NULL,NULL,NULL,'0300-2281126',NULL,'','Makkah Masjid Ward No 03',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2680,1,'2680','Navaid ','',NULL,'',NULL,'Shoukat Khan ',NULL,NULL,NULL,'0300-3309890',NULL,'','Makkah Masjid Ward No 03',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2681,1,'2681','Nisar ','',NULL,'',NULL,'Shamsuddin Khan ',NULL,NULL,NULL,'',NULL,'','W/4 Raghar Para KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2682,1,'2682','Ikram ','',NULL,'',NULL,'Shamsuddin Khan ',NULL,NULL,NULL,'0301-3916627',NULL,'','W/4 Raghar Para KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2683,1,'2683','Abdul Ghaffar ','',NULL,'',NULL,'Shamsuddin Khan ',NULL,NULL,NULL,'0302-3316564',NULL,'','W/4 Raghar Para KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2684,1,'2684','Gulzar ','',NULL,'',NULL,'Mumtaz Khan',NULL,NULL,NULL,'0303-2480906',NULL,'','W/4 Raghar Para KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2685,1,'2685','Sattar ','',NULL,'',NULL,'Mumtaz Khan',NULL,NULL,NULL,'0301-3340217',NULL,'','W/4 Raghar Para KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2686,1,'2686','Shahid ','',NULL,'',NULL,'Abdul Hameed Khan ',NULL,NULL,NULL,'0302-3350607',NULL,'','W/4 Raghar Para KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2687,1,'2687','Ghulam Mohammad ','',NULL,'',NULL,'Ghulam Nabi Khan',NULL,NULL,NULL,'0301-3916374',NULL,'','W/4 Raghar Para KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2688,1,'2688','Zulfiqar','',NULL,'',NULL,'Ghulam Nabi Khan',NULL,NULL,NULL,'0301-3281326',NULL,'','W/4 Raghar Para KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2689,1,'2689','Mohammad Imran','',NULL,'',NULL,'Ghulam Nabi Khan',NULL,NULL,NULL,'0301-3246646',NULL,'','W/4 Raghar Para KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2690,1,'2690','Eijaz Nabi ','',NULL,'',NULL,'Ghulam Nabi',NULL,NULL,NULL,'',NULL,'','W/4 Raghar Para KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2691,1,'2691','Ali ','',NULL,'',NULL,'Habib Khan',NULL,NULL,NULL,'',NULL,'','W/4 Raghar Para KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2692,1,'2692','Allahudiin ','',NULL,'',NULL,'AbduAllah Khan',NULL,NULL,NULL,'0333-2229797',NULL,'','W/3 Near Makka Masjid',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2693,1,'2693','Faisal ','',NULL,'',NULL,'Farooq Khan ',NULL,NULL,NULL,'0333-2470686',NULL,'','W/3 Near Makka Masjid',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2694,1,'2694','Jamil ','',NULL,'',NULL,'Noor Khan',NULL,NULL,NULL,'0301-3621656',NULL,'','W/3 Near Makka Masjid',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2695,1,'2695','Tasleem Khan ','',NULL,'',NULL,'Hidayat Khan',NULL,NULL,NULL,'0332-2606130',NULL,'','W/3 Near Makka Masjid',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2696,1,'2696','Anas Rehman ','',NULL,'',NULL,'Abdul Rehman ',NULL,NULL,NULL,'0333-0224829',NULL,'','W/3 Near Makka Masjid',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2697,1,'2697','Salahuddin Khan ','',NULL,'',NULL,'Allaudin Khan',NULL,NULL,NULL,'0307-3109190',NULL,'','W/3 Near Makka Masjid',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2698,1,'2698','Hanif ','',NULL,'',NULL,'MalAK sher Khan ',NULL,NULL,NULL,'0300-3317128',NULL,'','G/B High School KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2699,1,'2699','Hassan ','',NULL,'',NULL,'Mohammad Asif Khan ',NULL,NULL,NULL,'0302-8979399',NULL,'','G/B High School KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2700,1,'2700','Fiaz Khan ','',NULL,'',NULL,'Bhu Khan ',NULL,NULL,NULL,'0300-3015138',NULL,'','G/B High School KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2701,1,'2701','Mohammad Rahil ','',NULL,'',NULL,'Riyasat Ali ',NULL,NULL,NULL,'0300-0581147',NULL,'','G/B High School KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2702,1,'2702','Javaid ','',NULL,'',NULL,'Peer Mohammad Khan ',NULL,NULL,NULL,'0332-5508678',NULL,'','G/B High School KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2703,1,'2703','Shamshair Khan ','',NULL,'',NULL,'Dr Mohammad Usman ',NULL,NULL,NULL,'0333-2835041',NULL,'','W/6 Juta Bazar KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2704,1,'2704','Nawab Khan','',NULL,'',NULL,'Dr Mohammad Usman ',NULL,NULL,NULL,'0301-3918249',NULL,'','W/6 Juta Bazar KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2705,1,'2705','Abdul Rafiq ','',NULL,'',NULL,'Dr Mohammad Usman ',NULL,NULL,NULL,'0306-3547038',NULL,'','W/6 Juta Bazar KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2706,1,'2706','Shahid ','',NULL,'',NULL,'Ghulam Mustafa Khan ',NULL,NULL,NULL,'0333-2958884',NULL,'','W/6 Juta Bazar KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2707,1,'2707','Ghulam Mohammad ','',NULL,'',NULL,'Dr Mohammad Usman ',NULL,NULL,NULL,'0301-3911689',NULL,'','W/6 Juta Bazar KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2708,1,'2708','Shahbaz Khan ','',NULL,'',NULL,'Mohammad Siddiq Khan ',NULL,NULL,NULL,'0302-3314913',NULL,'','W/6 Juta Bazar KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2709,1,'2709','Mohammad Nadeem ','',NULL,'',NULL,'Allaudin Khan',NULL,NULL,NULL,'0300-2491702',NULL,'','W/6 Juta Bazar KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2710,1,'2710','Aslam Khan ','',NULL,'',NULL,'Subhan Khan ',NULL,NULL,NULL,'0300-0282585',NULL,'','W/6 Juta Bazar KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2711,1,'2711','Mustafa Khan','',NULL,'',NULL,'Taaj Mohammad Khan',NULL,NULL,NULL,'0333-2644280',NULL,'','W/6 Juta Bazar KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2712,1,'2712','Sikander Ali ','',NULL,'',NULL,'Ghulam Mohammad Khan ',NULL,NULL,NULL,'0303-2432469',NULL,'','W/6 Juta Bazar KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2713,1,'2713','Hanif Khan ','',NULL,'',NULL,'Ghani Khan ',NULL,NULL,NULL,'0307-3413212',NULL,'','W/6 Juta Bazar KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2714,1,'2714','Siddiq ','',NULL,'',NULL,'Ghani Khan ',NULL,NULL,NULL,'0301-3918234',NULL,'','W/6 Juta Bazar KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2715,1,'2715','Zahid ','',NULL,'',NULL,'Shoukat Ali Khan ',NULL,NULL,NULL,'0332-3300368',NULL,'','W/5 Garib.a.bad Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2716,1,'2716','Mohammad Iqbal ','',NULL,'',NULL,'Shair Mohammad ',NULL,NULL,NULL,'0301-3281298',NULL,'','W/5 Garib.a.bad Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2717,1,'2717','Khalid ','',NULL,'',NULL,'Moosa Khan',NULL,NULL,NULL,'0300-2712605',NULL,'','W/6 Near Old Sabzi Mandi KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2718,1,'2718',' Mohammad Yousuf','',NULL,'',NULL,'Inayat Khan ',NULL,NULL,NULL,'0304-8307735',NULL,'','W/6 High School Road kgm',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2719,1,'2719','Umer Khan ','',NULL,'',NULL,'Ramzan Khan ',NULL,NULL,NULL,'0306-3542998',NULL,'','W/6 High School Road kgm',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2720,1,'2720','Ayaz Mehmood','',NULL,'',NULL,'Haji Mashooq ',NULL,NULL,NULL,'0300-3996390',NULL,'','W/6 High School Road kgm',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2721,1,'2721','Tahir ','',NULL,'',NULL,'Ghulam Rasool',NULL,NULL,NULL,'0301-3916620',NULL,'','W/6 High School Road kgm',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2722,1,'2722','Shahzad ','',NULL,'',NULL,'Shoakat Ali Khan ',NULL,NULL,NULL,'0334-2551808',NULL,'','W/6 High School Road kgm',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2723,1,'2723','Waseem ','',NULL,'',NULL,'Walli Mohammad Khan ',NULL,NULL,NULL,'0301-3281200',NULL,'','W/6 High School Road kgm',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2724,1,'2724','Mohammad Akber','',NULL,'',NULL,' Abdul Aziz Khan ',NULL,NULL,NULL,'0308-7410056',NULL,'','W/6 High School Road kgm',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2725,1,'2725','Mohammad Asif ','',NULL,'',NULL,'Ibrahim Khan',NULL,NULL,NULL,'0306-3440410',NULL,'','W/6 High School Road kgm',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2726,1,'2726','Rashid Ahmed ','',NULL,'',NULL,'Mustaq Khan ',NULL,NULL,NULL,'0305-8415612',NULL,'','W/6 High School Road kgm',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2727,1,'2727','Amjad Irshad ','',NULL,'',NULL,'Ibrahim Khan',NULL,NULL,NULL,'0301-2521937',NULL,'','W/6 High School Road kgm',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2728,1,'2728',' Altaf ','',NULL,'',NULL,'Ibrahim Khan',NULL,NULL,NULL,'0332-2837613',NULL,'','W/6 High School Road kgm',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2729,1,'2729','Irfan ','',NULL,'',NULL,'Rustam Khan',NULL,NULL,NULL,'0333-2957707',NULL,'','W/6 High School Road kgm',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2730,1,'2730','Talha Khan ','',NULL,'',NULL,'Nisar Khan',NULL,NULL,NULL,'0333-8283667',NULL,'','W/6 High School Road kgm',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2731,1,'2731','Younas Khan ','',NULL,'',NULL,'Faiz Mohammad Khan ',NULL,NULL,NULL,'0333-2776753',NULL,'','W/6 High School Road kgm',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2732,1,'2732','Ibrahim Khan ','',NULL,'',NULL,'Faiz Mohammad Khan ',NULL,NULL,NULL,'0333-3094210',NULL,'','W/6 High School Road kgm',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2733,1,'2733','Mohammad Naveed ','',NULL,'',NULL,'Altaf Hussain Khan ',NULL,NULL,NULL,'0333-8283668',NULL,'','W/6 High School Road kgm',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2734,1,'2734','Sattar Khan ','',NULL,'',NULL,'Jaffar Ali Khan',NULL,NULL,NULL,'0301-3912264',NULL,'','W/6 High School Road kgm',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2735,1,'2735','Musharaf ','',NULL,'',NULL,'Iqbal Khan',NULL,NULL,NULL,'',NULL,'','W/6 High School Road kgm',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2736,1,'2736','Niaz Khan ','',NULL,'',NULL,'Ahmed Ali ',NULL,NULL,NULL,'0301-3540406',NULL,'','W/1 By Pass Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2737,1,'2737','Abdul Sattar Khan','',NULL,'',NULL,'Mushtaq Khan ',NULL,NULL,NULL,'0307-2046386',NULL,'','W/1 By Pass Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2738,1,'2738','Mohammad Irshad ','',NULL,'',NULL,'Mustaq Khan ',NULL,NULL,NULL,'0301-3916017',NULL,'','W/1 By Pass Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2739,1,'2739','Mehroz ','',NULL,'',NULL,'Mustaq Khan ',NULL,NULL,NULL,'0300-6790103',NULL,'','W/1 By Pass Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2740,1,'2740','Shafqiq ','',NULL,'',NULL,'Rafiq',NULL,NULL,NULL,'0346-2196353',NULL,'','W/1 By Pass Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2741,1,'2741','Adil ','',NULL,'',NULL,'Ibrahim Khan',NULL,NULL,NULL,'0333-7773590',NULL,'','W/1 By Pass Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2742,1,'2742','Ghayour ','',NULL,'',NULL,'Ghani Khan ',NULL,NULL,NULL,'0308-2090372',NULL,'','W/1 By Pass Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2743,1,'2743','Khalid Khan ','',NULL,'',NULL,'Jewan Khan ',NULL,NULL,NULL,'0336-3051546',NULL,'','W/1 By Pass Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2744,1,'2744','Sabir ','',NULL,'',NULL,'Yasin Khan',NULL,NULL,NULL,'',NULL,'','W/1 By Pass Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2745,1,'2745','Meer Hassan ','',NULL,'',NULL,'Yasin Khan',NULL,NULL,NULL,'0308-3276452',NULL,'','W/1 By Pass Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2746,1,'2746','Alladin ','',NULL,'',NULL,'Jaffar Ali Khan',NULL,NULL,NULL,'0301-3642920',NULL,'','W/5 By Pass Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2747,1,'2747','Maqsood Ali ','',NULL,'',NULL,'Chouto Khan ',NULL,NULL,NULL,'',NULL,'','W/5 By Pass Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2748,1,'2748','Atif ','',NULL,'',NULL,'Ashiq Ali ',NULL,NULL,NULL,'0333-3320859',NULL,'','W/5 By Pass Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2749,1,'2749','Sarwer ','',NULL,'',NULL,'Inayat Ali Khan',NULL,NULL,NULL,'0344-3503144',NULL,'','W/5 By Pass Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2750,1,'2750','Sulman ','',NULL,'',NULL,'Ali Mohammad ',NULL,NULL,NULL,'0333-7158358',NULL,'','W/5 By Pass Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2751,1,'2751','Mohammad Iqbal Khan ','',NULL,'',NULL,'Faiz Mohammad Khan ',NULL,NULL,NULL,'0335-2021226',NULL,'','W/5 By Pass Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2752,1,'2752','Mumtaz Khan ','',NULL,'',NULL,'Jewan Khan ',NULL,NULL,NULL,'0301-3911673',NULL,'','W/5 By Pass Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2753,1,'2753','Waseem ','',NULL,'',NULL,'Mumtaz Khan',NULL,NULL,NULL,'0308-3257419',NULL,'','W/5 By Pass Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2754,1,'2754','Shakeel Ahmed ','',NULL,'',NULL,'Ashger Ali Khan ',NULL,NULL,NULL,'0333-1275327',NULL,'','W/5 By Pass Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2755,1,'2755','Intezar ','',NULL,'',NULL,'Shabir Khan ',NULL,NULL,NULL,'0333-2980960',NULL,'','W/5 By Pass Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2756,1,'2756','Irshad Ahmed ','',NULL,'',NULL,'Shabir Khan ',NULL,NULL,NULL,'0333-2617809',NULL,'','W/5 By Pass Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2757,1,'2757','Fiyaz Ahmed','',NULL,'',NULL,'Mohammad Ali Khan ',NULL,NULL,NULL,'0301-3141680',NULL,'','W/5 By Pass Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2758,1,'2758','Shoaib ','',NULL,'',NULL,'Ghulam Murtaza Khan ',NULL,NULL,NULL,'0316-3773218',NULL,'','W/5 By Pass Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2759,1,'2759','Aftab ','',NULL,'',NULL,'Khadim Husain Khan ',NULL,NULL,NULL,'0300-0359411',NULL,'','W/5 By Pass Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2760,1,'2760','Aijaz ','',NULL,'',NULL,'Aslam Khan ',NULL,NULL,NULL,'0300-3304576',NULL,'','W/5 By Pass Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2761,1,'2761','Talib Husain ','',NULL,'',NULL,'Shamsher Khan ',NULL,NULL,NULL,'0302-4976361',NULL,'','W/5 By Pass Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2762,1,'2762','Taiyab','',NULL,'',NULL,'Shamsher Khan ',NULL,NULL,NULL,'0302-2933763',NULL,'','W/5 By Pass Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2763,1,'2763','Mohammad Aslam ','',NULL,'',NULL,'Abdul Shakoor Khan ',NULL,NULL,NULL,'0300-3318044',NULL,'','W/5 By Pass Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2764,1,'2764','Mohammad Ashraf ','',NULL,'',NULL,'Abdul Shakoor Khan ',NULL,NULL,NULL,'0307-3439040',NULL,'','W/5 By Pass Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2765,1,'2765','Mohammad Akram ','',NULL,'',NULL,'Abdul Shakoor Khan ',NULL,NULL,NULL,'0308-3526493',NULL,'','W/5 By Pass Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2766,1,'2766','Shehbaz ','',NULL,'',NULL,'Qadir Khan',NULL,NULL,NULL,'0301-3913813',NULL,'','W/5 By Pass Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2767,1,'2767','Karamat ','',NULL,'',NULL,'Mustaq Khan ',NULL,NULL,NULL,'0332-3207882',NULL,'','W/5 By Pass Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2768,1,'2768','Intezar ','',NULL,'',NULL,'Mohammad Hussain Khan ',NULL,NULL,NULL,'0336-2266278',NULL,'','W/5 By Pass Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2769,1,'2769','Allaudin Khan','',NULL,'',NULL,'Qasim Ali',NULL,NULL,NULL,'0303-2308183',NULL,'','W/5 By Pass Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2770,1,'2770','Abid ','',NULL,'',NULL,'Taj Mohammad Khan ',NULL,NULL,NULL,'0302-2040305',NULL,'','W/5 By Pass Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2771,1,'2771','Javaid ','',NULL,'',NULL,'Taj Mohammad Khan ',NULL,NULL,NULL,'0308-3006786',NULL,'','W/5 By Pass Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2772,1,'2772','Mumtaz Khan ','',NULL,'',NULL,'Yaqoob Khan ',NULL,NULL,NULL,'0300-0351146',NULL,'','W/5 By Pass Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2773,1,'2773','Aijaz ','',NULL,'',NULL,'Mumtaz Khan',NULL,NULL,NULL,'0301-2618465',NULL,'','W/5 By Pass Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2774,1,'2774','Shahid ','',NULL,'',NULL,'Ashger Khan ',NULL,NULL,NULL,'0301-3642890',NULL,'','W/5 By Pass Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2775,1,'2775','Mohammad Ali ','',NULL,'',NULL,'Assat Ali Khan',NULL,NULL,NULL,'0308-3233055',NULL,'','W/5 By Pass Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2776,1,'2776','Ahmed Ali ','',NULL,'',NULL,'Assat Ali Khan',NULL,NULL,NULL,'0302-3929443',NULL,'','W/5 By Pass Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2777,1,'2777','Sadaqat Ali ','',NULL,'',NULL,'Mustaq Khan ',NULL,NULL,NULL,'0301-3154009',NULL,'','W/5 By Pass Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2778,1,'2778','Arif ','',NULL,'',NULL,'Mehmood Khan',NULL,NULL,NULL,'0333-2983733',NULL,'','W/5 G/B High School Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2779,1,'2779','Riaz Ahmed','',NULL,'',NULL,'Inayat Ali Khan',NULL,NULL,NULL,'0334-2628205',NULL,'','W/5 G/B High School Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2780,1,'2780',' Liaqat Ali ','',NULL,'',NULL,'Mustafa Khan',NULL,NULL,NULL,'0332-2585456',NULL,'','W/5 G/B High School Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2781,1,'2781',' Khalid Mehmood ','',NULL,'',NULL,'Atta Mohd Khan ',NULL,NULL,NULL,'0308-3739330',NULL,'','W/5 G/B High School Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2782,1,'2782','Anwer ','',NULL,'',NULL,'Mohammad Ibrahim ',NULL,NULL,NULL,'0300-2589089',NULL,'','W/5 G/B High School Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2783,1,'2783','Hidayat Khan ','',NULL,'',NULL,'Mohammad Khan ',NULL,NULL,NULL,'0321-3022487',NULL,'','W/5 G/B High School Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2784,1,'2784','Shoaib ','',NULL,'',NULL,'Ismail Khan ',NULL,NULL,NULL,'0333-2993882',NULL,'','W/5 G/B High School Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2785,1,'2785','Mohammad Khalid ','',NULL,'',NULL,'Shoukat ',NULL,NULL,NULL,'0313-3943751',NULL,'','W/5 G/B High School Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2786,1,'2786','Waseem ','',NULL,'',NULL,'Mustaq Khan ',NULL,NULL,NULL,'0302-3920190',NULL,'','W/5 G/B High School Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2787,1,'2787','Qadeer Khan ','',NULL,'',NULL,'Jeewan Khan ',NULL,NULL,NULL,'0306-3502650',NULL,'','W/5 G/B High School Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2788,1,'2788','Navaid ','',NULL,'',NULL,'Jabbar Khan ',NULL,NULL,NULL,'0304-8080840',NULL,'','W/5 G/B High School Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2789,1,'2789','Aijaz ','',NULL,'',NULL,'Ashgar Khan ',NULL,NULL,NULL,'0333-4094601',NULL,'','W/5 G/B High School Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2790,1,'2790','Gul Hassan ','',NULL,'',NULL,'Yamin Khan ',NULL,NULL,NULL,'0333-3851090',NULL,'','W/5 G/B High School Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2791,1,'2791','Sikander Ali ','',NULL,'',NULL,'Mohammad Yousuf Khan ',NULL,NULL,NULL,'0333-2627900',NULL,'','W/5 G/B High School Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2792,1,'2792','Suhail Aziz ','',NULL,'',NULL,'Noor Mohammad Khan',NULL,NULL,NULL,'0332-8080190',NULL,'','W/5 G/B High School Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2793,1,'2793','Raheel Khan ','',NULL,'',NULL,'Abid Husain Khan ',NULL,NULL,NULL,'0336-0398757',NULL,'','W/5 G/B High School Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2794,1,'2794','Mehmood Khan ','',NULL,'',NULL,'Muraad Khan ',NULL,NULL,NULL,'0301-3146948',NULL,'','W/5 G/B High School Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2795,1,'2795','Qayoom ','',NULL,'',NULL,'Atta Mohd Khan ',NULL,NULL,NULL,'0333-5864500',NULL,'','W/5 G/B High School Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2796,1,'2796','Zahir Khan ','',NULL,'',NULL,'Kabir Khan ',NULL,NULL,NULL,'0333-2585920',NULL,'','W/5 G/B High School Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2797,1,'2797','Bashir Ahmed ','',NULL,'',NULL,'Ahmed Ali',NULL,NULL,NULL,'0302-3089832',NULL,'','W/5 G/B High School Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2798,1,'2798','Nadeem ','',NULL,'',NULL,'Nazar Mohammad Khan',NULL,NULL,NULL,'',NULL,'','W/5 G/B High School Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2799,1,'2799','Raza ','',NULL,'',NULL,'AbduAllah',NULL,NULL,NULL,'0305-3401697',NULL,'','W/5 G/B High School Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2800,1,'2800','Mehraj ','',NULL,'',NULL,'Haji Riaz Khan ',NULL,NULL,NULL,'0306-3444583',NULL,'','W/5 G/B High School Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2801,1,'2801',' Shakeel Ahmed ','',NULL,'',NULL,'M.A Khan ',NULL,NULL,NULL,'0306-2197208',NULL,'','W/2 Kai Khani Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2802,1,'2802','Imtiaz Ahmed ','',NULL,'',NULL,'M.A Khan ',NULL,NULL,NULL,'0311-8159016',NULL,'','W/2 Kai Khani Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2803,1,'2803','Riaz Ahmed','',NULL,'',NULL,'Prof Noor Mohammad Khan ',NULL,NULL,NULL,'0302-2126343',NULL,'','W/2 Kai Khani Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2804,1,'2804','Abid ','',NULL,'',NULL,'Usman Khan ',NULL,NULL,NULL,'0334-2551560',NULL,'','W/2 Kai Khani Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2805,1,'2805','Mohammad Haneef ','',NULL,'',NULL,'Usman Khan ',NULL,NULL,NULL,'0302-2903869',NULL,'','W/2 Kai Khani Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2806,1,'2806','Manzoor ','',NULL,'',NULL,'Dawood Ali Khan ',NULL,NULL,NULL,'0335-2019880',NULL,'','W/2 Kai Khani Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2807,1,'2807','Ghulam Mustafa','',NULL,'',NULL,'N azar Mohammad Khan ',NULL,NULL,NULL,'0306-3444644',NULL,'','W/2 Kai Khani Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2808,1,'2808','Mohammad Mustaq ','',NULL,'',NULL,'Dawood Ali Khan ',NULL,NULL,NULL,'0332-2458908',NULL,'','W/2 Kai Khani Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2809,1,'2809','Mohammad Ayoub ','',NULL,'',NULL,'Mohammad Yasin Khan ',NULL,NULL,NULL,'0302-3098509',NULL,'','W/2 Kai Khani Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2810,1,'2810','Abid Ali Khan ','',NULL,'',NULL,'Mohammad Shaffi Khan ',NULL,NULL,NULL,'0301-3288900',NULL,'','W/2 Kai Khani Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2811,1,'2811','Aslam Khan ','',NULL,'',NULL,'Ghulam Nabi Khan',NULL,NULL,NULL,'0300-3341512',NULL,'','W/2 Kai Khani Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2812,1,'2812','Asim Khan ','',NULL,'',NULL,'Abdul Sattar Khan',NULL,NULL,NULL,'0301-3284067',NULL,'','W/2 Kai Khani Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2813,1,'2813','Ahmed ','',NULL,'',NULL,'Khalid Khan ',NULL,NULL,NULL,'0300-3565031',NULL,'','W/2 Kai Khani Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2814,1,'2814','Javaid ','',NULL,'',NULL,'Qadir Khan',NULL,NULL,NULL,'0300-3328290',NULL,'','W/2 Kai Khani Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2815,1,'2815','Shakeel ','',NULL,'',NULL,'Qadir Khan',NULL,NULL,NULL,'0333-4094633',NULL,'','W/2 Kai Khani Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2816,1,'2816','Raza Khan ','',NULL,'',NULL,'Mohammad Ali Khan ',NULL,NULL,NULL,'0335-3324821',NULL,'','W/2 Kai Khani Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2817,1,'2817','Mraad Khan ','',NULL,'',NULL,'Nazeer Khan ',NULL,NULL,NULL,'0300-3614020',NULL,'','W/2 Kai Khani Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2818,1,'2818','Yamin Khan ','',NULL,'',NULL,'Akht Ali Khan ',NULL,NULL,NULL,'0300-3614020',NULL,'','W/2 Kai Khani Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2819,1,'2819','Ameer Hassan ','',NULL,'',NULL,'Wahid Ali Khan ',NULL,NULL,NULL,'0300-3300411',NULL,'','W/2 Kai Khani Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2820,1,'2820','Shahid ','',NULL,'',NULL,'Fateh Mohammad ',NULL,NULL,NULL,'0333-2774126',NULL,'','W/2 Kai Khani Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2821,1,'2821','Mohammad Javaid Khan ','',NULL,'',NULL,'Mohammad Shafi Khan ',NULL,NULL,NULL,'0332-3891156',NULL,'','W/2 Kai Khani Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2822,1,'2822','Ishfaq ','',NULL,'',NULL,'Siddiq Ali',NULL,NULL,NULL,'0334--0363706',NULL,'','W/2 Kai Khani Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2823,1,'2823','Noshad ','',NULL,'',NULL,'Ismail Khan ',NULL,NULL,NULL,'0306-3090932',NULL,'','W/2 Kai Khani Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2824,1,'2824','Nadeem ','',NULL,'',NULL,'Nizam Khan ',NULL,NULL,NULL,'0331-3300960',NULL,'','W/2 Kai Khani Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2825,1,'2825','Navaid ','',NULL,'',NULL,'Nizam Khan ',NULL,NULL,NULL,'0333-2327123',NULL,'','W/2 Kai Khani Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2826,1,'2826','Mohammad Ismail','',NULL,'',NULL,'Yamin Khan ',NULL,NULL,NULL,'0307-3313378',NULL,'','W/2 Kai Khani Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2827,1,'2827','Master Abdul Jabbar ','',NULL,'',NULL,'Wahid Ali Khan ',NULL,NULL,NULL,'0306-8221001',NULL,'','W/2 Kai Khani Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2828,1,'2828','Mohammad Arif ','',NULL,'',NULL,'Siddiq Khan ',NULL,NULL,NULL,'0331-3201090',NULL,'','W/2 Kai Khani Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2829,1,'2829','Allaudin Khan','',NULL,'',NULL,'Yamin Khan ',NULL,NULL,NULL,'0304-3275550',NULL,'','W/2 Kai Khani Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2830,1,'2830','AttauAllah ','',NULL,'',NULL,'Yamin Khan ',NULL,NULL,NULL,'0301-3148370',NULL,'','W/2 Kai Khani Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2831,1,'2831','Ismail Khan ','',NULL,'',NULL,'Aziz Khan ',NULL,NULL,NULL,'0316-7027370',NULL,'','W/2 Kai Khani Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2832,1,'2832','Aijaz Khan ','',NULL,'',NULL,'Wajid Khan ',NULL,NULL,NULL,'0332-5508284',NULL,'','W/2 Kai Khani Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2833,1,'2833','Sattar Khan ','',NULL,'',NULL,'Umaid Khan ',NULL,NULL,NULL,'0300-3634749',NULL,'','W/2 Kai Khani Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2834,1,'2834','Zulfiqar Ahmed ','',NULL,'',NULL,'Ibrahim Khan',NULL,NULL,NULL,'0301-2254178',NULL,'','W/5 Factory Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2835,1,'2835','Latif Khan ','',NULL,'',NULL,'Haneef Khan',NULL,NULL,NULL,'0333-2666155',NULL,'','W/5 Factory Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2836,1,'2836','Mohammad Ilyas ','',NULL,'',NULL,'Assat Ali Khan',NULL,NULL,NULL,'0336-3793408',NULL,'','W/5 Factory Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2837,1,'2837','Abdul Raouf ','',NULL,'',NULL,'Haneef Khan ',NULL,NULL,NULL,'0333-0093300',NULL,'','W/5 Factory Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2838,1,'2838','Intezar ','',NULL,'',NULL,'',NULL,NULL,NULL,'0306-4633698',NULL,'','W/5 Garib.a.bad Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2839,1,'2839','Irfan ','',NULL,'',NULL,'Haji Jamsheed Khan ',NULL,NULL,NULL,'0332-8018028',NULL,'','W/5 Garib.a.bad Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2840,1,'2840','Haj Irshad ','',NULL,'',NULL,'Qadir Khan',NULL,NULL,NULL,'',NULL,'','W/5 Garib.a.bad Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2841,1,'2841','Shahid Khan ','',NULL,'',NULL,'Yamin Khan ',NULL,NULL,NULL,'0335-2522902',NULL,'','W/5 Garib.a.bad Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2842,1,'2842','Shakeel Khan ','',NULL,'',NULL,'Yamin Khan ',NULL,NULL,NULL,'0307-3965341',NULL,'','W/5 Garib.a.bad Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2843,1,'2843','Shafiq ','',NULL,'',NULL,'Siddiq Khan ',NULL,NULL,NULL,'0306-3445344',NULL,'','W/5 Garib.a.bad Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2844,1,'2844','Rafiq ','',NULL,'',NULL,'Siddiq Khan ',NULL,NULL,NULL,'0332-3544800',NULL,'','W/5 Garib.a.bad Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2845,1,'2845','Amir ','',NULL,'',NULL,'Yamin Khan ',NULL,NULL,NULL,'0333-2583988',NULL,'','W/5 Garib.a.bad Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2846,1,'2846','Yasin ','',NULL,'',NULL,'Nazar Mohammad Khan',NULL,NULL,NULL,'0334-2552566',NULL,'','W/5 Garib.a.bad Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2847,1,'2847','Mohammad Anwer','',NULL,'',NULL,'',NULL,NULL,NULL,'0331-3883097',NULL,'','W/5 Garib.a.bad Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2848,1,'2848','Ashger Khan ','',NULL,'',NULL,'Shakoor Khan ',NULL,NULL,NULL,'0302-2034349',NULL,'','W/5 Garib.a.bad Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2849,1,'2849','Mohammad Arif ','',NULL,'',NULL,'Noor Mohammad Khan',NULL,NULL,NULL,'0300-3930808',NULL,'','W/3 Near Madni Masjid ',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2850,1,'2850','Khalil ','',NULL,'',NULL,'Assat Ali Khan',NULL,NULL,NULL,'0302-3973286',NULL,'','New City KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2851,1,'2851','Moinudiin Khan ','',NULL,'',NULL,'Azimudddin Khan ',NULL,NULL,NULL,'0301-3916642',NULL,'','New City KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2852,1,'2852','Khursheed ','',NULL,'',NULL,'Siddiq Khan ',NULL,NULL,NULL,'0331-3282292',NULL,'','New City KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2853,1,'2853','Khalid Husain ','',NULL,'',NULL,'Dr Usman Khan ',NULL,NULL,NULL,'0334-2558196',NULL,'','W/2 Kai Khani Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2854,1,'2854','Yaseen Khan ','',NULL,'',NULL,'Taaj Mohammad Khan',NULL,NULL,NULL,'0306-2030941',NULL,'','W/5 Garib.a.bad Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2855,1,'2855','Toafiq ','',NULL,'',NULL,'Abdul Hameed Khan ',NULL,NULL,NULL,'0306-2450185',NULL,'','W/5 Garib.a.bad Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2856,1,'2856','Abid ','',NULL,'',NULL,'Wahid Ali Khan ',NULL,NULL,NULL,'0307-3349456',NULL,'','W/5 Garib.a.bad Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2857,1,'2857','Majid ','',NULL,'',NULL,'Wahid Ali Khan ',NULL,NULL,NULL,'0300-2095855',NULL,'','W/5 Garib.a.bad Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2858,1,'2858','Babu Ali ','',NULL,'',NULL,'Aleem Khan ',NULL,NULL,NULL,'0343-3477177',NULL,'','W/5 Garib.a.bad Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2859,1,'2859','Akber ','',NULL,'',NULL,'Ellahi Bux ',NULL,NULL,NULL,'0305-8376937',NULL,'','W/5 Garib.a.bad Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2860,1,'2860','Alam Khan ','',NULL,'',NULL,'Sikander Khan ',NULL,NULL,NULL,'0304-8454145',NULL,'','W/5 Garib.a.bad Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2861,1,'2861','Shahid ','',NULL,'',NULL,'Hamid Khan ',NULL,NULL,NULL,'0307-3915755',NULL,'','W/5 Garib.a.bad Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2862,1,'2862','Liaqat ','',NULL,'',NULL,'Dr Usman Khan ',NULL,NULL,NULL,'0332-9637056',NULL,'','W/5 Garib.a.bad Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2863,1,'2863','Ishfaq ','',NULL,'',NULL,'Ibrahim Khan',NULL,NULL,NULL,'0306-3748716',NULL,'','W/5 Garib.a.bad Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2864,1,'2864','Mohammad Javaid Khan ','',NULL,'',NULL,'Ibrahim Khan',NULL,NULL,NULL,'0305-2745486',NULL,'','W/5 Garib.a.bad Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2865,1,'2865',' Abdul Aziz ','',NULL,'',NULL,'Sonu Khan ',NULL,NULL,NULL,'0300-3311072',NULL,'','W/5 Garib.a.bad Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2866,1,'2866','Abdul Razzaq ','',NULL,'',NULL,'Sonu Khan ',NULL,NULL,NULL,'0307-3186006',NULL,'','W/5 Garib.a.bad Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2867,1,'2867','Tariq','',NULL,'',NULL,'Ibrahim Khan',NULL,NULL,NULL,'0303-4190615',NULL,'','W/5 Garib.a.bad Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2868,1,'2868','Bilal ','',NULL,'',NULL,'Yasin Khan',NULL,NULL,NULL,'',NULL,'','W/5 Garib.a.bad Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2869,1,'2869','Yahat Mehmood ','',NULL,'',NULL,'Hakeem Khan ',NULL,NULL,NULL,'',NULL,'','W/5 Garib.a.bad Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2870,1,'2870','Mehmood Khan ','',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'','W/5 Garib.a.bad Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2871,1,'2871','Zafar ','',NULL,'',NULL,'Niyamat Khan ',NULL,NULL,NULL,'0334-2215787',NULL,'','W/5 Garib.a.bad Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2872,1,'2872','Shehriyar ','',NULL,'',NULL,'(Late) yousuf',NULL,NULL,NULL,'0336-2588685',NULL,'','W/5 Garib.a.bad Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2873,1,'2873','Mohammad Ali ','',NULL,'',NULL,'Maqsood Ahmed ',NULL,NULL,NULL,'0321-2984059',NULL,'','W/5 Garib.a.bad Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2874,1,'2874','Shehzad ','',NULL,'',NULL,'Mohammad Iqbal Khan ',NULL,NULL,NULL,'0333-2798291',NULL,'','W/5 Garib.a.bad Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2875,1,'2875','Aslam Khan ','',NULL,'',NULL,'Ahmed Ali Khan ',NULL,NULL,NULL,'0306-0270226',NULL,'','W/5 Garib.a.bad Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2876,1,'2876','Jahangeer ','',NULL,'',NULL,' Shair Ahmed ',NULL,NULL,NULL,'0333-3213239',NULL,'','W/5 Garib.a.bad Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2877,1,'2877','Adnan ','',NULL,'',NULL,'Jamil Khan ',NULL,NULL,NULL,'0306-3507909',NULL,'','W/5 Garib.a.bad Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2878,1,'2878','Mohammad Tahir ','',NULL,'',NULL,'Nasir Khan ',NULL,NULL,NULL,'0301-3280200',NULL,'','W/5 G/B High School Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2879,1,'2879','Qasim ','',NULL,'',NULL,'Shoukat ALI ',NULL,NULL,NULL,'0334-2971783',NULL,'','W/5 G/B High School Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2880,1,'2880','Shakeel Ahmed ','',NULL,'',NULL,'Shaffi Mohammad ',NULL,NULL,NULL,'0336-2515208',NULL,'','W/5 G/B High School Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2881,1,'2881','Tasleem ','',NULL,'',NULL,'Hakim Ali Khan ',NULL,NULL,NULL,'0333-2988087',NULL,'','W/5 G/B High School Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2882,1,'2882','Ishtiaq','',NULL,'',NULL,' Ahmed Khan ',NULL,NULL,NULL,'0332-2717811',NULL,'','W/5 G/B High School Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2883,1,'2883','Khursheed ','',NULL,'',NULL,'Hakim Ali Khan ',NULL,NULL,NULL,'0334-2624348',NULL,'','W/5 G/B High School Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2884,1,'2884','Abid ','',NULL,'',NULL,'Qasim Ali Khan',NULL,NULL,NULL,'0303-2824625',NULL,'','W/5 G/B High School Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2885,1,'2885','Khurshed ','',NULL,'',NULL,'Yamin Khan ',NULL,NULL,NULL,'0300-3982475',NULL,'','W/5 G/B High School Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2886,1,'2886','Mohammad Husain ','',NULL,'',NULL,'Ramzan Khan ',NULL,NULL,NULL,'0333-0288050',NULL,'','W/5 G/B High School Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2887,1,'2887','Zeeshan ','',NULL,'',NULL,'Mehmood Khan ',NULL,NULL,NULL,'0335-3324841',NULL,'','W/5 G/B High School Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2888,1,'2888','Rashid Ali ','',NULL,'',NULL,'Shabir Khan ',NULL,NULL,NULL,'0336-3926013',NULL,'','W/5 G/B High School Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2889,1,'2889','Mohammad Saleem ','',NULL,'',NULL,'Hakim Ali Khan ',NULL,NULL,NULL,'0300-3723559',NULL,'','W/5 G/B High School Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2890,1,'2890','Liaqat Ali ','',NULL,'',NULL,'Hidayat Ali',NULL,NULL,NULL,'0331-7017840',NULL,'','W/5 G/B High School Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2891,1,'2891','Nisar Ahmed ','',NULL,'',NULL,'Ghulab Khan ',NULL,NULL,NULL,'0343-6364094',NULL,'','W/5 G/B High School Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2892,1,'2892','Ziaurehman ','',NULL,'',NULL,'Abdul Rehman ',NULL,NULL,NULL,'0301-3916477',NULL,'','W/5 G/B High School Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2893,1,'2893','Shoaib Khan ','',NULL,'',NULL,'Kabir Khan ',NULL,NULL,NULL,'0331-1868857',NULL,'','W/5 G/B High School Road KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2894,1,'2894','Arshad Khan ','',NULL,'',NULL,'Mustaque Khan ',NULL,NULL,NULL,'0302-3310321',NULL,'','W/4 Lahar Para KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2895,1,'2895','Khalid Mehmood ','',NULL,'',NULL,'Haneef Khan ',NULL,NULL,NULL,'0300-3552418',NULL,'','W/4 Lahar Para KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2896,1,'2896','Imran ','',NULL,'',NULL,'Umerdin ',NULL,NULL,NULL,'',NULL,'','W/4 Lahar Para KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2897,1,'2897','Imtiaz Ahmed ','',NULL,'',NULL,'Fayaz Ahmed ',NULL,NULL,NULL,'0334-2030540',NULL,'','W/4 Lahar Para KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2898,1,'2898','Abdul Sattar ','',NULL,'',NULL,'Hakim Ali Khan ',NULL,NULL,NULL,'0301-3452880',NULL,'','W/4 Lahar Para KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2899,1,'2899','SaifuAllah Khan ','',NULL,'',NULL,'Hidayat Khan ',NULL,NULL,NULL,'0302-3316245',NULL,'','W/4 Lahar Para KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2900,1,'2900','Asif ','',NULL,'',NULL,'Farooq Khan ',NULL,NULL,NULL,'',NULL,'','W/4 Lahar Para KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2901,1,'2901','Riaz Ahmed','',NULL,'',NULL,'Moinudiin Khan ',NULL,NULL,NULL,'0333-2502150',NULL,'','W/4 Lahar Para KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2902,1,'2902','Anwer Ahmed ','',NULL,'',NULL,'Munawer Ali',NULL,NULL,NULL,'0306-8260225',NULL,'','W/4 Lahar Para KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2903,1,'2903','Zulfiqar ','',NULL,'',NULL,'Mumtaaz Khan',NULL,NULL,NULL,'0332-2643966',NULL,'','W/4 Lahar Para KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2904,1,'2904','Mohammad Aslam ','',NULL,'',NULL,'Abdul Aziz Khan ',NULL,NULL,NULL,'0341-6590500',NULL,'','W/4 Lahar Para KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2905,1,'2905','Mohammad Zafar ','',NULL,'',NULL,'Abdul Aziz Khan ',NULL,NULL,NULL,'0301-3850519',NULL,'','W/4 Lahar Para KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2906,1,'2906','Shoukat Ali ','',NULL,'',NULL,'Haji Khaju Khan ',NULL,NULL,NULL,'0332-3905374',NULL,'','W/4 Lahar Para KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2907,1,'2907','Akeel Ahmed ','',NULL,'',NULL,'Mohammad Ali Khan ',NULL,NULL,NULL,'0300-3013602',NULL,'','W/4 Lahar Para KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2908,1,'2908','Riasat ','',NULL,'',NULL,'Musharaf Ali ',NULL,NULL,NULL,'0302-3091173',NULL,'','W/4 Lahar Para KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2909,1,'2909','Latif Khan ','',NULL,'',NULL,'Haneef Khan ',NULL,NULL,NULL,'',NULL,'','W/4 Lahar Para KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2910,1,'2910','Mohammad Saleem ','',NULL,'',NULL,'Abbas Ali',NULL,NULL,NULL,'0300-3737990',NULL,'','W/4 Lahar Para KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2911,1,'2911','Abdul Rauf Abid','',NULL,'',NULL,'Abdul Razaq Khan ',NULL,NULL,NULL,'0335-2024335',NULL,'','W/4 Lahar Para KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2912,1,'2912','Ali Hassan ','',NULL,'',NULL,'Bashir Khan ',NULL,NULL,NULL,'0333-2629325',NULL,'','W/4 Lahar Para KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2913,1,'2913','Amjad','',NULL,'',NULL,'Majeed Khan ',NULL,NULL,NULL,'0301-3154158',NULL,'','W/4 Lahar Para KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2914,1,'2914','Umar Affan ','',NULL,'',NULL,'Iqbal Khan',NULL,NULL,NULL,'0333-6649827',NULL,'','W/4 Lahar Para KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2915,1,'2915','Rizwan ','',NULL,'',NULL,'Abdul Razaq Khan ',NULL,NULL,NULL,'0304-8441602',NULL,'','W/4 Lahar Para KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2916,1,'2916','Himayat Ali ','',NULL,'',NULL,'Nazar Mohammad Khan',NULL,NULL,NULL,'0336-2097001',NULL,'','W/4 Lahar Para KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2917,1,'2917','Sohail ','',NULL,'',NULL,'Riaz Khan ',NULL,NULL,NULL,'',NULL,'','W/4 Lahar Para KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2918,1,'2918','Shakeel ','',NULL,'',NULL,'Shaffi Mohammad ',NULL,NULL,NULL,'0321-2038676',NULL,'','W/2 Kai Khani Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2919,1,'2919','Mohammad Aslam ','',NULL,'',NULL,'Ghulam Mustafa ',NULL,NULL,NULL,'0308-2535417',NULL,'','W/2 Kai Khani Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2920,1,'2920','Mohammad Naveed ','',NULL,'',NULL,'Mionudiin ',NULL,NULL,NULL,'0312-3447400',NULL,'','W/2 Kai Khani Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2921,1,'2921','Mohammad Imran ','',NULL,'',NULL,'Manzoor Ahmed ',NULL,NULL,NULL,'0331-3154468',NULL,'','W/2 Kai Khani Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2922,1,'2922','(Late)Mehtab Ahmed ','',NULL,'',NULL,'Sanwat Khan ',NULL,NULL,NULL,'0308-8258640',NULL,'','W/2 Kai Khani Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2923,1,'2923','Intezar Khan ','',NULL,'',NULL,'Alimudiin ',NULL,NULL,NULL,'0301-3642882',NULL,'','W/2 Kai Khani Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2924,1,'2924','Javaid ','',NULL,'',NULL,'Ramzan Khan ',NULL,NULL,NULL,'0331-3803677',NULL,'','W/2 Kai Khani Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2925,1,'2925','Ali Ashger ','',NULL,'',NULL,'Ahmed Ali Khan ',NULL,NULL,NULL,'0315-3095230',NULL,'','W/2 Kai Khani Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2926,1,'2926','Hamid Khan ','',NULL,'',NULL,'Allaudin Khan',NULL,NULL,NULL,'0303-3118963',NULL,'','W/2 Kai Khani Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2927,1,'2927','Irfan ','',NULL,'',NULL,'Sultan Ahmed ',NULL,NULL,NULL,'0331-4592851',NULL,'','W/2 Kai Khani Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2928,1,'2928','Abdul Aziz Khan ','',NULL,'',NULL,'Ashger Ali Khan ',NULL,NULL,NULL,'0300-8170853',NULL,'','W/2 Kai Khani Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2929,1,'2929','Abid Ali Khan ','',NULL,'',NULL,'Mustafa Khan',NULL,NULL,NULL,'0333-2958883',NULL,'','W/2 Kai Khani Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2930,1,'2930','Babu Abdul Malik ','',NULL,'',NULL,'Haji Sufi Jaan ',NULL,NULL,NULL,'0301-2790862',NULL,'','W/2 Kai Khani Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2931,1,'2931','Rashid Ahmed ','',NULL,'',NULL,'Hakim Ali Khan ',NULL,NULL,NULL,'0301-3916375',NULL,'','W/2 Kai Khani Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2932,1,'2932','Khurseed ','',NULL,'',NULL,'Hakim Ali Khan ',NULL,NULL,NULL,'0334-2624348',NULL,'','W/2 Kai Khani Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2933,1,'2933','Yasin Khan ','',NULL,'',NULL,'Ahmed Ali Khan ',NULL,NULL,NULL,'0307-3074449',NULL,'','W/3 Kai Khani Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2934,1,'2934','Aslam Khan ','',NULL,'',NULL,'Nazar Mohammad Khan',NULL,NULL,NULL,'0313-3802060',NULL,'','W/3 Kai Khani Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2935,1,'2935','Shakeel ','',NULL,'',NULL,'Mumtaz Ali Khan ',NULL,NULL,NULL,'0305-3154798',NULL,'','W/3 Kai Khani Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2936,1,'2936','Farooq ','',NULL,'',NULL,'Hashim Ali Khan ',NULL,NULL,NULL,'0331-2841001',NULL,'','W/3 Kai Khani Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2937,1,'2937','Mohammad Liaqat ','',NULL,'',NULL,'Hidayat Ali Khan ',NULL,NULL,NULL,'',NULL,'','W/3 Kai Khani Mohalla KGM',NULL,NULL,'Sindh','KGM',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2938,1,'2938','Haji Muhammad Ashraf','',NULL,'',NULL,'Muhammad Asif',NULL,NULL,NULL,NULL,NULL,'','Bagh Muhalla',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2939,1,'2939','Muhammad  Sohail ','',NULL,'',NULL,' Muhammad Ishtiaq Khan',NULL,NULL,NULL,'0334-2051179',NULL,'','Bagh Muhalla',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2940,1,'2940','Saeed Ahmed ','',NULL,'',NULL,'Muhammad Sadeeq',NULL,NULL,NULL,'0302-2223395',NULL,'','Bagh Muhalla',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2941,1,'2941','Ateeq Ahmed ','',NULL,'',NULL,'Muhammad Rafique',NULL,NULL,NULL,'0300-8378688',NULL,'','Bagh Muhalla',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2942,1,'2942','Abdul Haq','',NULL,'',NULL,' Munzoor Ahmed',NULL,NULL,NULL,'0301-3593232',NULL,'','Bagh Muhalla',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2943,1,'2943','Saeed Akhter','',NULL,'',NULL,'Muhammad Owais',NULL,NULL,NULL,'0311-1801311',NULL,'','Bagh Muhalla',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2944,1,'2944','Molana Manzoor Ahmed Sabri','',NULL,'',NULL,'-',NULL,NULL,NULL,'0302-4343653',NULL,'','Bagh Muhalla',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2945,1,'2945','Asad kk','',NULL,'',NULL,'Abdul Sattar ',NULL,NULL,NULL,NULL,NULL,'','Bagh Muhalla',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2946,1,'2946','Faheem Uddin','',NULL,'',NULL,'Basheer Ahmed ',NULL,NULL,NULL,'0305-3493035',NULL,'','Bagh Muhalla',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2947,1,'2947','Muhammad Irfan','',NULL,'',NULL,'Umer Daraz',NULL,NULL,NULL,'0308-3054134',NULL,'','Bagh Muhalla',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2948,1,'2948','Muhammad Jameel','',NULL,'',NULL,'Muhammad Haneef',NULL,NULL,NULL,'0303-3016636',NULL,'','Bagh Muhalla',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2949,1,'2949','Muhammad Khallid','',NULL,'',NULL,'Muhammad Haneef',NULL,NULL,NULL,'0301-3602123',NULL,'','Bagh Muhalla',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2950,1,'2950','Ismail ','',NULL,'',NULL,'Muhammad Asfaaq',NULL,NULL,NULL,'0300-7914874',NULL,'','Bagh Muhalla',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2951,1,'2951','Sajid Ali','',NULL,'',NULL,'Mubarak Ali',NULL,NULL,NULL,NULL,NULL,'','Bagh Muhalla',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2952,1,'2952','Muhammad Irfan Babu','',NULL,'',NULL,'Muhammad Shareef',NULL,NULL,NULL,'0343-3943710',NULL,'','Bagh Muhalla',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2953,1,'2953','Muhammad Murtaza','',NULL,'',NULL,'Ghulam Mustafa',NULL,NULL,NULL,NULL,NULL,'','Bagh Muhalla',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2954,1,'2954','Muhammad Raza','',NULL,'',NULL,'Ghulam Mustafa',NULL,NULL,NULL,NULL,NULL,'','Bagh Muhalla',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2955,1,'2955','Muhammad Shafiq','',NULL,'',NULL,'Muhammad Rafique',NULL,NULL,NULL,NULL,NULL,'','Bagh Muhalla',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2956,1,'2956','Anwer Shair','',NULL,'',NULL,'Abdul Rehman',NULL,NULL,NULL,'0311-3025247',NULL,'','Bagh Muhalla',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2957,1,'2957','Muhammad Akram','',NULL,'',NULL,'Muhammad Luqman',NULL,NULL,NULL,NULL,NULL,'','Bagh Muhalla',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2958,1,'2958','Sajid Ali','',NULL,'',NULL,'Muhammad Saleem',NULL,NULL,NULL,NULL,NULL,'','Bagh Muhalla',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2959,1,'2959','Muhammad Shakir','',NULL,'',NULL,'Muhammad Saleem',NULL,NULL,NULL,NULL,NULL,'','Bagh Muhalla',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2960,1,'2960','Ameer Ali','',NULL,'',NULL,'Ameen kk',NULL,NULL,NULL,NULL,NULL,'','Bagh Muhalla',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2961,1,'2961','Babar','',NULL,'',NULL,'Muhammad Younus',NULL,NULL,NULL,NULL,NULL,'','Bagh Muhalla',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2962,1,'2962','Muhammad Akram','',NULL,'',NULL,'Yaqoob Ali',NULL,NULL,NULL,NULL,NULL,'','Bagh Muhalla',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2963,1,'2963','Muhammad Shahid','',NULL,'',NULL,'Muhammad Owais',NULL,NULL,NULL,NULL,NULL,'','Bagh Muhalla',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2964,1,'2964','Shamshad Ali','',NULL,'',NULL,'Ashiq Ali Khan',NULL,NULL,NULL,' ',NULL,'','Bagh Muhalla',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2965,1,'2965','Liaqat Ali ','',NULL,'',NULL,'Mashook  Ali',NULL,NULL,NULL,NULL,NULL,'','Bagh Muhalla',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2966,1,'2966','Muhammad Naem','',NULL,'',NULL,'Ashiq Ali Khan',NULL,NULL,NULL,'0301-3563709',NULL,'','Bagh Muhalla',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2967,1,'2967','Muhammad Nadeem','',NULL,'',NULL,'Ashiq Ali Khan',NULL,NULL,NULL,NULL,NULL,'','Bagh Muhalla',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2968,1,'2968','Muhammad Waseem','',NULL,'',NULL,'Ashiq Ali Khan',NULL,NULL,NULL,NULL,NULL,'','Hyd',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2969,1,'2969','Muhammad Aslam','',NULL,'',NULL,'Muhammad Ishaaq',NULL,NULL,NULL,NULL,NULL,'','Matli',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2970,1,'2970','Sakhawat Ali','',NULL,'',NULL,'-',NULL,NULL,NULL,'',NULL,'','Saleem Colony',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2971,1,'2971','Ibaad Ali','',NULL,'',NULL,'-',NULL,NULL,NULL,'',NULL,'','Saleem Colony',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2972,1,'2972','Muhammad Ayaz','',NULL,'',NULL,'-',NULL,NULL,NULL,'',NULL,'','Ghareeb Colony',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2973,1,'2973','Muhammad Majid ','',NULL,'',NULL,'Sharafat Ali',NULL,NULL,NULL,'',NULL,'','Gull Mohd Colony',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2974,1,'2974','Sharafat Ali','',NULL,'',NULL,'-',NULL,NULL,NULL,'',NULL,'','Saleem Colony',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2975,1,'2975','Fareed Ahmed ','',NULL,'',NULL,'-',NULL,NULL,NULL,'',NULL,'','Saleem Colony',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2976,1,'2976','Haji Rizwan Ahmed ','',NULL,'',NULL,'Haji Nisar Ahmed',NULL,NULL,NULL,'0300-8379166',NULL,'','Bagh Muhalla',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2977,1,'2977','Muhammad Aslam','',NULL,'',NULL,'Khursheed Ali',NULL,NULL,NULL,'0302-3039894',NULL,'','Gulistan Khursheed',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2978,1,'2978','Haji Muhammad Iqbal','',NULL,'',NULL,'Ashiq Ali',NULL,NULL,NULL,'0331-9833320',NULL,'','Okat Fish Market',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2979,1,'2979','Himayat Ali Khan','',NULL,'',NULL,'-',NULL,NULL,NULL,'0304-3814871',NULL,'','Bagh Muhalla',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2980,1,'2980','Muhammad Shmeem','',NULL,'',NULL,'Ashiq Ali',NULL,NULL,NULL,NULL,NULL,'','Bagh Muhalla',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2981,1,'2981','Muhammad Farooq','',NULL,'',NULL,'Khursheed Ali',NULL,NULL,NULL,'0301-3214329',NULL,'','Gulistan Khursheed',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2982,1,'2982','Doc Intekhaab Ali','',NULL,'',NULL,'Khursheed Ali',NULL,NULL,NULL,'0300-30536687',NULL,'','Gulistan Khursheed',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2983,1,'2983','Asad','',NULL,'',NULL,'Muhammad Zubair',NULL,NULL,NULL,'0301-3576240',NULL,'','Okat Fish Market',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2984,1,'2984','Shahid Muhammad ','',NULL,'',NULL,'Shafqat Ali',NULL,NULL,NULL,'0300-9296824',NULL,'','Okat Fish Market',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2985,1,'2985','Doc Ashraf','',NULL,'',NULL,'Shoukat Ali',NULL,NULL,NULL,'0300-3799832',NULL,'','-',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2986,1,'2986','Muhammad Zahid ','',NULL,'',NULL,'Muhammad Iqbal',NULL,NULL,NULL,'0300-3307766',NULL,'','-',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2987,1,'2987','Muhammad Tariq','',NULL,'',NULL,'Muhammad Iqbal',NULL,NULL,NULL,'0300-3303307',NULL,'','-',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2988,1,'2988','Muhammad Rafique','',NULL,'',NULL,'Muhammad Hanif',NULL,NULL,NULL,'0300-3303308',NULL,'','Fatah Poor Muhalla',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2989,1,'2989','Muhammad Shareef','',NULL,'',NULL,'Muhammad Hanif',NULL,NULL,NULL,'0306-2002365',NULL,'','Fatah Poor Muhalla',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2990,1,'2990','Abdul Haq','',NULL,'',NULL,'Ashiq',NULL,NULL,NULL,'0302-3006116',NULL,'','',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2991,1,'2991','Sharafat Ali ','',NULL,'',NULL,'Ashiq',NULL,NULL,NULL,'',NULL,'','-',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2992,1,'2992','Ahmed Saeed','',NULL,'',NULL,'Muhammad Ayub',NULL,NULL,NULL,'0333-2525035',NULL,'','Ahsan Khan Colony',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2993,1,'2993','Muhammad Azfar','',NULL,'',NULL,'Muhammad Iqbal',NULL,NULL,NULL,'0300-8371840',NULL,'','Okat Fish Market',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2994,1,'2994','Raja  Muhammad Naseem','',NULL,'',NULL,'Muhammad Saleem',NULL,NULL,NULL,'0300-3056583',NULL,'','Dhak Muhalla',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2995,1,'2995','Liaqat Ali ','',NULL,'',NULL,'Mubarak Ali',NULL,NULL,NULL,'',NULL,'','',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2996,1,'2996','Abid Islam','',NULL,'',NULL,'Muhammad Khan',NULL,NULL,NULL,'0300-9377833',NULL,'','kk Colony',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2997,1,'2997','Abid Ali','',NULL,'',NULL,'Muhammad Iqbal',NULL,NULL,NULL,'0336-3406548',NULL,'','-',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2998,1,'2998','Muhammad Azeem','',NULL,'',NULL,'Haji Mubarak Ali',NULL,NULL,NULL,'0333-2806682',NULL,'','kk Colony',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(2999,1,'2999','Muhammad Ronaq','',NULL,'',NULL,'-',NULL,NULL,NULL,NULL,NULL,'','kk Colony',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3000,1,'3000','Muhammadd Naeem','',NULL,'',NULL,'Ashiq Ali',NULL,NULL,NULL,NULL,NULL,'','kk Colony',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3001,1,'3001','Hamid ','',NULL,'',NULL,'Toheed Khan',NULL,NULL,NULL,NULL,NULL,'','kk Colony',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3002,1,'3002','Aurangzaib','',NULL,'',NULL,'Abdul Rasheed',NULL,NULL,NULL,'0346-3818762',NULL,'','kk Colony',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3003,1,'3003','Fazal','',NULL,'',NULL,'-',NULL,NULL,NULL,NULL,NULL,'','Bagh Muhalla',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3004,1,'3004','Muhammad Ndeem','',NULL,'',NULL,'Mohammad Aleem ',NULL,NULL,NULL,'0312-3013980',NULL,'','Bagh Muhalla',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3005,1,'3005','Muhammad Aleem','',NULL,'',NULL,'Haji Muqarrib Ali',NULL,NULL,NULL,'0300-3247218',NULL,'','kk Colony',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3006,1,'3006','Aftaab Ali ','',NULL,'',NULL,'Shoukat Ali',NULL,NULL,NULL,'',NULL,'','',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3007,1,'3007','Mohammad Iqbal ','',NULL,'',NULL,'Mashooq Ali',NULL,NULL,NULL,'',NULL,'','Jameel Colony',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3008,1,'3008','Mohammad Akram','',NULL,'',NULL,'Mohammad Basheer',NULL,NULL,NULL,'',NULL,'','Jameel Colony',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3009,1,'3009','Waheed Ali ','',NULL,'',NULL,'Zahoor Ali',NULL,NULL,NULL,'3073073174',NULL,'','Jameel Colony',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3010,1,'3010','Mohammad Aslam ','',NULL,'',NULL,' Mohammad Basheer',NULL,NULL,NULL,'',NULL,'','Jameel Colony',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3011,1,'3011','Mohammad Ashraf','',NULL,'',NULL,'Mohammad Basheer',NULL,NULL,NULL,'',NULL,'','Jameel Colony',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3012,1,'3012','Sharafat Ali ','',NULL,'',NULL,'Mohammad Haneef',NULL,NULL,NULL,'',NULL,'','Jameel Colony',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3013,1,'3013','Jaweed ','',NULL,'',NULL,'Mohammad Iqbal',NULL,NULL,NULL,'303.338381',NULL,'','',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3014,1,'3014','Ibad  Ali','',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'','',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3015,1,'3015','Fareed Ahmed ','',NULL,'',NULL,'Mohammad Hashim',NULL,NULL,NULL,'3083925476',NULL,'','Saleem Colony',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3016,1,'3016','Mohammad Liaqat','',NULL,'',NULL,'Mohammad Haneef',NULL,NULL,NULL,'',NULL,'','Saleem Colony',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3017,1,'3017','Liaqat Ali ','',NULL,'',NULL,'Mashooq Ali',NULL,NULL,NULL,'303.0356087',NULL,'','',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3018,1,'3018','Sakhawat ','',NULL,'',NULL,'Mohammad Haneef',NULL,NULL,NULL,'301.3590174',NULL,'','',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3019,1,'3019','Mukaram ','',NULL,'',NULL,'Sardar Ali',NULL,NULL,NULL,'3013594934',NULL,'','',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3020,1,'3020','Haji Rizwan KK','',NULL,'',NULL,'',NULL,NULL,NULL,'334.8379166',NULL,'','Bag Mohalla',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3021,1,'3021','Haji Adnan KK','',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'','Bag Mohalla',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3022,1,'3022','Mohammad Aslam KK','',NULL,'',NULL,'',NULL,NULL,NULL,'302.3039894',NULL,'','Gulistan .e.Khurseed',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3023,1,'3023','Haji Mohammad Iqbal','',NULL,'',NULL,'',NULL,NULL,NULL,'331.983332',NULL,'','Old Fish Market',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3024,1,'3024','Himayat Ali Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'304.3814871',NULL,'','Bag Mohalla',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3025,1,'3025','Mohammad Shamim','',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'','Bag Mohalla',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3026,1,'3026','Mohammad Farooq','',NULL,'',NULL,'',NULL,NULL,NULL,'301.3214329',NULL,'','Gulistan.e.khurseed',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3027,1,'3027','Dr Intikhaab ','',NULL,'',NULL,'',NULL,NULL,NULL,'300.3053668',NULL,'','Gulistan.e.khurseed',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3028,1,'3028','Shahid Mehmood','',NULL,'',NULL,'',NULL,NULL,NULL,'300.9296824',NULL,'','Old Fish Market',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3029,1,'3029','DRr Ashraf Ali','',NULL,'',NULL,'',NULL,NULL,NULL,'300.3799832',NULL,'','Near Irrigation Office',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3030,1,'3030','Mohammad Asad Zubair','',NULL,'',NULL,'',NULL,NULL,NULL,'301.357624',NULL,'','Old Fish Market',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3031,1,'3031','Mohammad Zahid','',NULL,'',NULL,'',NULL,NULL,NULL,'300.3307766',NULL,'','Old Fish Market',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3032,1,'3032','Mohammad Tariq','',NULL,'',NULL,'',NULL,NULL,NULL,'300.3303307',NULL,'','Near Girlz Colleage',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3033,1,'3033','Mohammad Rafique','',NULL,'',NULL,'',NULL,NULL,NULL,'300.3303308',NULL,'','Fateh Pur Mohalla',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3034,1,'3034','Mohammad Shhareef','',NULL,'',NULL,'',NULL,NULL,NULL,'306.2002365',NULL,'','Fateh Pur Mohalla',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3035,1,'3035','Abdul Haq','',NULL,'',NULL,'',NULL,NULL,NULL,'302.3006116',NULL,'','Near Girlz Colleage',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3036,1,'3036','Sharafat Ali','',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'','Ahsan Shah Colony',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3037,1,'3037','Ahmed Saeed','',NULL,'',NULL,'',NULL,NULL,NULL,'333.2525035',NULL,'','Ahsan Shah Colony',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3038,1,'3038','Mohammad Ashgar','',NULL,'',NULL,'',NULL,NULL,NULL,'300.837184',NULL,'','Old Fish Market',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3039,1,'3039','Rja Naeem','',NULL,'',NULL,'',NULL,NULL,NULL,'301.3615307',NULL,'','Dhak Muhalla',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3040,1,'3040','Raja Faisal','',NULL,'',NULL,'',NULL,NULL,NULL,'300.3056583',NULL,'','Dhak Muhalla',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3041,1,'3041','Liaqat Ali ','',NULL,'',NULL,'',NULL,NULL,NULL,'302.7539455',NULL,'','Bagh Muhalla',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3042,1,'3042','Abid Ali','',NULL,'',NULL,'',NULL,NULL,NULL,'336.3406548',NULL,'','Near Girlz Colleage',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3043,1,'3043','Abdul Salam','',NULL,'',NULL,'',NULL,NULL,NULL,'300.9377833',NULL,'','kk Colony',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3044,1,'3044','Mohammad Azeem KK','',NULL,'',NULL,'',NULL,NULL,NULL,'333.2806682',NULL,'','kk Colony',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3045,1,'3045','Mohammad Naeem','',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'','kk Colony',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3046,1,'3046','Hamid ','',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'','kk Colony',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3047,1,'3047','Orangzeb','',NULL,'',NULL,'',NULL,NULL,NULL,'346.3818762',NULL,'','kk Colony',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3048,1,'3048','Fazal','',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'','Bagh Muhalla',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3049,1,'3049','Mohammad Nadeem','',NULL,'',NULL,'',NULL,NULL,NULL,'312.301398',NULL,'','Bagh Muhalla',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3050,1,'3050','Mohammad Aleem','',NULL,'',NULL,'',NULL,NULL,NULL,'300.3247218',NULL,'','kk Colony',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3051,1,'3051','Aftab Aalam ','',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'','Old Fish Market',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3052,1,'3052','Haji Mohammad Ashraf','',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'','Bagh Muhalla',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3053,1,'3053','Mohammad Sohail','',NULL,'',NULL,'',NULL,NULL,NULL,'3342051179',NULL,'','Bagh Muhalla',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3054,1,'3054','Saeed Ahmed ','',NULL,'',NULL,'',NULL,NULL,NULL,'302.2223395',NULL,'','Bagh Muhalla',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3055,1,'3055','Atiq Ahmed','',NULL,'',NULL,'',NULL,NULL,NULL,'300.8378688',NULL,'','Bagh Muhalla',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3056,1,'3056','Abdul Haq','',NULL,'',NULL,'',NULL,NULL,NULL,'301.3539232',NULL,'','Bagh Muhalla',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3057,1,'3057','Saeed Akhter','',NULL,'',NULL,'',NULL,NULL,NULL,'311.1801311',NULL,'','Bagh Muhalla',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3058,1,'3058','Manzoor Ahmed Sabri','',NULL,'',NULL,'',NULL,NULL,NULL,'302.4343653',NULL,'','Bagh Muhalla',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3059,1,'3059','Asad KK','',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'','Bagh Muhalla',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3060,1,'3060','Faheem Uddin','',NULL,'',NULL,'',NULL,NULL,NULL,'305.3493035',NULL,'','Bagh Muhalla',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3061,1,'3061','Mohammad Irfan','',NULL,'',NULL,'',NULL,NULL,NULL,'308.3054134',NULL,'','Bagh Muhalla',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3062,1,'3062','Junaid Haneef','',NULL,'',NULL,'',NULL,NULL,NULL,'303.3016636',NULL,'','Bagh Muhalla',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3063,1,'3063','Khalid Haneef','',NULL,'',NULL,'',NULL,NULL,NULL,'301.3602123',NULL,'','Bagh Muhalla',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3064,1,'3064','Ismail Ishfaq','',NULL,'',NULL,'',NULL,NULL,NULL,'300.7914874',NULL,'','Bagh Muhalla',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3065,1,'3065','Sajid Ali','',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'','Bagh Muhalla',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3066,1,'3066','Mohammad Irfan Babo','',NULL,'',NULL,'',NULL,NULL,NULL,'343.394371',NULL,'','Bagh Muhalla',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3067,1,'3067','Mohammad Murtaza','',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'','Bagh Muhalla',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3068,1,'3068','Mohammad Raza','',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'','Bagh Muhalla',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3069,1,'3069','Mohammad Shafique','',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'','Bagh Muhalla',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3070,1,'3070','Anwer Shair','',NULL,'',NULL,'',NULL,NULL,NULL,'311.3025247',NULL,'','Bagh Muhalla',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3071,1,'3071','Mohammad Luqman ','',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'','Bagh Muhalla',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3072,1,'3072','Sajid Saleem ','',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'','Bagh Muhalla',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3073,1,'3073','Shakir Saleem ','',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'','Bagh Muhalla',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3074,1,'3074','Baber Younus','',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'','Bagh Muhalla',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3075,1,'3075','Mohammad Shahid','',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'','Bagh Muhalla',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3076,1,'3076','Shamshad Ali','',NULL,'',NULL,'',NULL,NULL,NULL,'301.3598642',NULL,'','KK Colony',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3077,1,'3077','Liaqat Ali ','',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'','Bagh Muhalla',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3078,1,'3078','Mohammad Naeem ','',NULL,'',NULL,'Ashiq Ali',NULL,NULL,NULL,'301.3563709',NULL,'','kk Colony',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3079,1,'3079','Mohammad Waseem ','',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'','kk Colony',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3080,1,'3080','Mohammad Nadeem','',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'','kk Colony',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3081,1,'3081','Mohammad Aslam ','',NULL,'',NULL,'Ishaaq',NULL,NULL,NULL,'',NULL,'','kk Colony',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3082,1,'3082','Mohammad Islam','',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'','kk Colony',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3083,1,'3083','Ibaad Ali','',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'','Saleem Colony',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3084,1,'3084','Mohammad Ayaz','',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'','Gareeb.a.bad',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3085,1,'3085','Sharafat Ali','',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'','Saleem Colony',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3086,1,'3086','Sakhawat Ali','',NULL,'',NULL,'',NULL,NULL,NULL,'301.3590174',NULL,'','Saleem Colony',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3087,1,'3087','Majid Ali','',NULL,'',NULL,'Sharafat Ali',NULL,NULL,NULL,'',NULL,'','Gull Mohd Colony',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3088,1,'3088','Mohammad Fareed Ali','',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'','Saleem Colony',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3089,1,'3089','Mohammad Iqbal ','',NULL,'',NULL,'',NULL,NULL,NULL,'315.1319809',NULL,'','Jameel Colony',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3090,1,'3090',' Mohammad Akram ','',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'','Jameel Colony',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3091,1,'3091','Mohammad Aslam Basheer','',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'','Jameel Colony',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3092,1,'3092','Mohammad Ashraf','',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'','Jameel Colony',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3093,1,'3093','Waheed Ali ','',NULL,'',NULL,'',NULL,NULL,NULL,'307.3073174',NULL,'','Jameel Colony',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3094,1,'3094','Mohammad Jaweed','',NULL,'',NULL,'',NULL,NULL,NULL,'303.338381',NULL,'','Jameel Colony',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3095,1,'3095','Mukraam ','',NULL,'',NULL,'Sardar Ali',NULL,NULL,NULL,'301.3594934',NULL,'','Jameel Colony',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3096,1,'3096','Liaqat Ali ','',NULL,'',NULL,'',NULL,NULL,NULL,'303.0356087',NULL,'','Jameel Colony',NULL,NULL,'Sindh','Matli',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3097,1,'3097','Ali Hassan ','',NULL,'',NULL,' Mehboob Ali Kahn ',NULL,NULL,NULL,'0331-2941761',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3098,1,'3098','Khalid ali ','',NULL,'',NULL,' Akbar Ali ',NULL,NULL,NULL,'0334-2802128',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3099,1,'3099','Turab Ali Khan ','',NULL,'',NULL,' Mohammad Yousaf',NULL,NULL,NULL,'0300-9318836',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3100,1,'3100','Riasat Ali ','',NULL,'',NULL,' Mohammad Yousaf',NULL,NULL,NULL,'0334-2558913',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3101,1,'3101','Javaid Hussain ','',NULL,'',NULL,' Mohammad Yousaf ',NULL,NULL,NULL,'0302-5155552',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3102,1,'3102','Shakir Ali ','',NULL,'',NULL,' Nasir Ali ',NULL,NULL,NULL,'0306-2202508',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3103,1,'3103','Majid Ali ','',NULL,'',NULL,' Nasir ali',NULL,NULL,NULL,'0333-8312236',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3104,1,'3104','Sajid Ali ','',NULL,'',NULL,' Nasir Ali ',NULL,NULL,NULL,'0333-0285359',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3105,1,'3105','Mohammad Farooque ','',NULL,'',NULL,' Turab Ali ',NULL,NULL,NULL,'0333-0285359',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3106,1,'3106','Mohammad Ilyas ','',NULL,'',NULL,' Qasim Ali Khan',NULL,NULL,NULL,'0306-3445641',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3107,1,'3107','Mohammad Zubair ','',NULL,'',NULL,' Sabir Ali Khan',NULL,NULL,NULL,'',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3108,1,'3108','Irfan Ali ','',NULL,'',NULL,' Mohammad Usman ',NULL,NULL,NULL,'',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3109,1,'3109','Thakur Nisar Ahmed ','',NULL,'',NULL,' Niaz Khan ',NULL,NULL,NULL,'',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3110,1,'3110','Nisar Ahmed ','',NULL,'',NULL,' Wajid ali ',NULL,NULL,NULL,'0308-3547982',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3111,1,'3111','Mohammad Shafique (Nadra) ','',NULL,'',NULL,' N',NULL,NULL,NULL,'0302-3317312',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3112,1,'3112','Mohammad Waseem ','',NULL,'',NULL,' Mohammad Yousaf ',NULL,NULL,NULL,'0307-8226647',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3113,1,'3113','Zahid Hussain ','',NULL,'',NULL,' Mumtaz ali ',NULL,NULL,NULL,'0303-3559571',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3114,1,'3114','Yasmin ','',NULL,'',NULL,' Risaldar Mehmood Ali ',NULL,NULL,NULL,'0308-3906532',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3115,1,'3115','Sajid Ali ','',NULL,'',NULL,' Umaid Ali (Late) ',NULL,NULL,NULL,'',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3116,1,'3116','Basit ali ','',NULL,'',NULL,' Mehboob Ali ',NULL,NULL,NULL,'0306-5913200',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3117,1,'3117','Mansoor Ahmed ','',NULL,'',NULL,' Mehmood Ali Khan',NULL,NULL,NULL,'0333-3113724',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3118,1,'3118','Khurram Ayoub ','',NULL,'',NULL,' Mohammad Ayoub',NULL,NULL,NULL,'0302-7770314',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3119,1,'3119','Zahid Ali ','',NULL,'',NULL,' Arshad Ali ',NULL,NULL,NULL,'0333-2751519',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3120,1,'3120','Wilayat Ali Khan ','',NULL,'',NULL,' Arshad Ali',NULL,NULL,NULL,'0336-2377150',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3121,1,'3121','Shamsher Ali Khan ','',NULL,'',NULL,' Hidayat Ali Khan ',NULL,NULL,NULL,'',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3122,1,'3122','Adil Noor ','',NULL,'',NULL,' Mansab Ali Khan',NULL,NULL,NULL,'0331-3731151',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3123,1,'3123','Mohammad Tariq ','',NULL,'',NULL,' Mohammad Idrees ',NULL,NULL,NULL,'0340-4976420',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3124,1,'3124','Javaid Shoukat ','',NULL,'',NULL,' Shoukat Ali ',NULL,NULL,NULL,'0333-3056319',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3125,1,'3125','Abdul Hafeez ','',NULL,'',NULL,' Qasim Ali',NULL,NULL,NULL,'0333-3263744',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3126,1,'3126','Faraz Ali ','',NULL,'',NULL,' Tahir Ali ',NULL,NULL,NULL,'',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3127,1,'3127','Dr. Mohammad Sami ','',NULL,'',NULL,' Jameel Ahmed',NULL,NULL,NULL,'0334-8834013',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3128,1,'3128','Master Waseem Ahmed ','',NULL,'',NULL,' Shamshad Ali (Late)',NULL,NULL,NULL,'0333-8813506',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3129,1,'3129','Khalid Ali ','',NULL,'',NULL,' Shoukat Ali',NULL,NULL,NULL,'0340-3603190',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3130,1,'3130','Khalil Ahmed ','',NULL,'',NULL,' Yaseen Khan',NULL,NULL,NULL,'',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3131,1,'3131','Mohammad Younas ','',NULL,'',NULL,' Mohammad Ilyas (Khan Ji)  ',NULL,NULL,NULL,'0308-3529047',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3132,1,'3132','Nadeem Ali ','',NULL,'',NULL,' Aziz Ali',NULL,NULL,NULL,'0306-220041',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3133,1,'3133','Shamshair Ali ','',NULL,'',NULL,' Jaodi Khan',NULL,NULL,NULL,'',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3134,1,'3134','Ghulam Dastagir ','',NULL,'',NULL,' Abdul Jabar ',NULL,NULL,NULL,'0306-3319709',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3135,1,'3135','Mohammad Mustafa ','',NULL,'',NULL,' Fajar Ali ',NULL,NULL,NULL,'0346-2708653',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3136,1,'3136','Siddique Urf Mohammad Ali ','',NULL,'',NULL,' Fajar Ali',NULL,NULL,NULL,'0305-3799679',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3137,1,'3137','Nabi Sher ','',NULL,'',NULL,' Jamil Khan',NULL,NULL,NULL,'0308-3055081',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3138,1,'3138','Abdul Rasheed ','',NULL,'',NULL,' Fajar Ali ',NULL,NULL,NULL,'0304-3234117',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3139,1,'3139','Dr. Shamshad Ali ','',NULL,'',NULL,' Manhun Khan',NULL,NULL,NULL,'0333-3265118',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3140,1,'3140','Master Aziz Ahmed ','',NULL,'',NULL,' Qasim Ali',NULL,NULL,NULL,'0334-3352857',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3141,1,'3141','Kokab Ali ','',NULL,'',NULL,' Shabir Ahmed ',NULL,NULL,NULL,'0336-3438531',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3142,1,'3142','Mubashar ','',NULL,'',NULL,' Aziz Ahmed',NULL,NULL,NULL,'0300-3325094',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3143,1,'3143','Nasir Ali ','',NULL,'',NULL,' Adul Hameed',NULL,NULL,NULL,'0336-3438531',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3144,1,'3144','Abdul Qayoom ','',NULL,'',NULL,' Hafeez Khan',NULL,NULL,NULL,'3332970697',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3145,1,'3145','Abdul Ghaffar ','',NULL,'',NULL,' Mumtaz Ali',NULL,NULL,NULL,'',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3146,1,'3146','Mohammad Saleem (Mangal) ','',NULL,'',NULL,' ',NULL,NULL,NULL,'3024839597',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3147,1,'3147','M. Jamil ','',NULL,'',NULL,' Abbas Ali',NULL,NULL,NULL,'0302-2537225',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3148,1,'3148','Mohammad Farooq ','',NULL,'',NULL,' Seth Nasir Ali (Late) ',NULL,NULL,NULL,'0300-3018265',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3149,1,'3149','Seth Shoukat Ali ','',NULL,'',NULL,' Jafar Ali Khan',NULL,NULL,NULL,'0306-8263822',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3150,1,'3150','Haji Shamshad ','',NULL,'',NULL,' Akbar Ali',NULL,NULL,NULL,'0302-3063925',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3151,1,'3151','Mohammad Siddique ','',NULL,'',NULL,' (Khan Ji) ',NULL,NULL,NULL,'0307-3413688',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3152,1,'3152','Mohammad Amin ','',NULL,'',NULL,' Noor Mohammad',NULL,NULL,NULL,'0310-0335828',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3153,1,'3153','Imran ','',NULL,'',NULL,' Mohammad Iqbal',NULL,NULL,NULL,'0301-3342148',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3154,1,'3154','Yaqoob Ali Khan ','',NULL,'',NULL,' Mohammad Ali',NULL,NULL,NULL,'',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3155,1,'3155','Imran Ali ','',NULL,'',NULL,' Imdad Ali',NULL,NULL,NULL,'3003326281',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3156,1,'3156','Umaid Ali ','',NULL,'',NULL,' Yousaf Ali',NULL,NULL,NULL,'',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3157,1,'3157','Mohammad Akram ','',NULL,'',NULL,' Sarwar Ali',NULL,NULL,NULL,'0346-3723215',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3158,1,'3158','Abdul Ghaffar ','',NULL,'',NULL,' Jaodin Kahn',NULL,NULL,NULL,'0300-3325846',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3159,1,'3159','Mohammad Saleem ','',NULL,'',NULL,' Mohammad Yousaf',NULL,NULL,NULL,'0346-3600141',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3160,1,'3160','Mohammad Naeem ','',NULL,'',NULL,' Mohammad Yousaf',NULL,NULL,NULL,'0301-3913557',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3161,1,'3161','Nadeem Foji ','',NULL,'',NULL,' Imam Din',NULL,NULL,NULL,'0305-3532391',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3162,1,'3162','Ata Mohammad ','',NULL,'',NULL,' Jamil Khan',NULL,NULL,NULL,'0302-3518257',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3163,1,'3163','Mohammad Ayoub ','',NULL,'',NULL,' Qutab Din',NULL,NULL,NULL,'0336-3921787',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3164,1,'3164','Faheem Ahmed ','',NULL,'',NULL,' Dr Shamshad Ali (Late)',NULL,NULL,NULL,'0300-3301734',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3165,1,'3165','Ali Sher ','',NULL,'',NULL,' Mumtaz Ali Khan',NULL,NULL,NULL,'0302-2524717',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3166,1,'3166','Dr.Abdul Hameed ','',NULL,'',NULL,' Hayat Mohammad',NULL,NULL,NULL,'0308-3571020',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3167,1,'3167','Seth Mohammad Ishaque ','',NULL,'',NULL,' Akbar Ali',NULL,NULL,NULL,'0302-3313098',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3168,1,'3168','Shafique ','',NULL,'',NULL,' Mohammad Ayoub',NULL,NULL,NULL,'0300-3324816',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3169,1,'3169','Shamim Ahmed ','',NULL,'',NULL,' Mushtaq Ahmed ',NULL,NULL,NULL,'0306-3446048',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3170,1,'3170','Sadaqat Hussain ','',NULL,'',NULL,' Naseem Ahmed (Late)',NULL,NULL,NULL,'0334-3681204',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3171,1,'3171','Naseer Ahmed ','',NULL,'',NULL,' Jamil Ahmed',NULL,NULL,NULL,'0345-2823401',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3172,1,'3172','Mohammad Nabeel ','',NULL,'',NULL,' Abdul Hakeem',NULL,NULL,NULL,'0333-2668169',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3173,1,'3173','Mohammad Aslam ','',NULL,'',NULL,' Ghulam Nabi',NULL,NULL,NULL,'0333-2532090',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3174,1,'3174',' Mohammad Aslam ','',NULL,'',NULL,' Wajid Ali ',NULL,NULL,NULL,'0303-3470054',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3175,1,'3175','Mohammad Younas ','',NULL,'',NULL,' Mumtaz Ali',NULL,NULL,NULL,'0333-2950991',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3176,1,'3176','Babo Nisar ','',NULL,'',NULL,' Hayat Mohammad',NULL,NULL,NULL,'0331-2702234',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3177,1,'3177','Mohammad Farooq ','',NULL,'',NULL,' Mohammad Shabir',NULL,NULL,NULL,'0336-3730784',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3178,1,'3178','Ali Hasan ','',NULL,'',NULL,' Yaseen ali',NULL,NULL,NULL,'0334-3150992',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3179,1,'3179','Ikhlaq ','',NULL,'',NULL,' M.Aslam',NULL,NULL,NULL,'0345-3697564',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3180,1,'3180','Humayoon ','',NULL,'',NULL,' Talib Hussain',NULL,NULL,NULL,'0334-2556428',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3181,1,'3181','Tariq ','',NULL,'',NULL,' M. Younas',NULL,NULL,NULL,'0300-2774478',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3182,1,'3182','M. Shamshad ','',NULL,'',NULL,' Mumtaz Ali',NULL,NULL,NULL,'0334-39044294',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3183,1,'3183','Molvi Shakir ','',NULL,'',NULL,' Sadiq Ali',NULL,NULL,NULL,'0334-2553141',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3184,1,'3184','Abdul Ghaffar ','',NULL,'',NULL,' Mumtaz Ali',NULL,NULL,NULL,'0333-2533165',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3185,1,'3185','M.Saleem Alam ali ','',NULL,'',NULL,' N',NULL,NULL,NULL,'0306-3525984',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3186,1,'3186','Mohammad Waseem ','',NULL,'',NULL,' Islam (Foji)',NULL,NULL,NULL,'0300-6350165',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3187,1,'3187','Naeem Ahmed ','',NULL,'',NULL,' Shamshad Ahmed',NULL,NULL,NULL,'0300-6373242',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3188,1,'3188','Haji Riasat Ali ','',NULL,'',NULL,' Hanif Khan',NULL,NULL,NULL,'0346-3628949',NULL,'','Ward No. 1, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3189,1,'3189','Begum Abdul Aziz Khan (Late) ','',NULL,'',NULL,' N',NULL,NULL,NULL,'0300-3300281',NULL,'','Ward No. 2, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3190,1,'3190','Abdul Salam (Foji) ','',NULL,'',NULL,' Jalal Din',NULL,NULL,NULL,'',NULL,'','Ward No. 2, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3191,1,'3191','Umer Daraz ','',NULL,'',NULL,' Himayat Ali (Late) ',NULL,NULL,NULL,'0302-39-6824',NULL,'','Ward No. 2, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3192,1,'3192','Iftikhar ','',NULL,'',NULL,' Anwar Ali',NULL,NULL,NULL,'0334-2553474 ',NULL,'','Ward No. 2, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3193,1,'3193','Israr Ali ','',NULL,'',NULL,' Anwar Ali',NULL,NULL,NULL,'0306-2619156',NULL,'','Ward No. 2, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3194,1,'3194','Mohammad Aslam ','',NULL,'',NULL,' Nazar Mohammad',NULL,NULL,NULL,'0308-3062127 ',NULL,'','Ward No. 2, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3195,1,'3195','Saeed Ahmed ','',NULL,'',NULL,' Mushtaque Ahmed ',NULL,NULL,NULL,'0334-2813364 ',NULL,'','Ward No. 2, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3196,1,'3196','Liaqat Ali ','',NULL,'',NULL,' Kareem Bux ',NULL,NULL,NULL,'0334-2559343 ',NULL,'','Ward No. 2, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3197,1,'3197','Matlooban ','',NULL,'',NULL,' Shabir Ahmed ( Late)',NULL,NULL,NULL,'0333-0285695 ',NULL,'','Ward No. 2, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3198,1,'3198','Faizan Ali ','',NULL,'',NULL,' Naseer Ali ',NULL,NULL,NULL,'0305-3561106 ',NULL,'','Ward No. 2, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3199,1,'3199','Master Riaz Ahmed ','',NULL,'',NULL,' Farzand Ali Khan',NULL,NULL,NULL,'0336-8155374 ',NULL,'','Ward No. 2, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3200,1,'3200','Mohammad Sharik ','',NULL,'',NULL,' Shakeel Ahmed (Late) ',NULL,NULL,NULL,'0302-3906486 ',NULL,'','Ward No. 2, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3201,1,'3201','Zain ul Abidin ','',NULL,'',NULL,'  Mohammad Saleem (Late) ',NULL,NULL,NULL,'0305-2882414 ',NULL,'','Ward No. 2, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3202,1,'3202','Mohammad Ali ','',NULL,'',NULL,' Naseer Ahmed (Late) ',NULL,NULL,NULL,'0302-3019548 ',NULL,'','Ward No. 2, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3203,1,'3203','Imran Ali ','',NULL,'',NULL,' Akbar Ali (Late) ',NULL,NULL,NULL,'0302-3313047 ',NULL,'','Ward No. 2, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3204,1,'3204','Khursheed Ahmed ','',NULL,'',NULL,' Abdul Satar ',NULL,NULL,NULL,'0301-3640406 ',NULL,'','Ward No. 2, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3205,1,'3205','Riaz Ahmed ','',NULL,'',NULL,' Wahid Ali Khan',NULL,NULL,NULL,'0346-3628610 ',NULL,'','Ward No. 2, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3206,1,'3206','Shahzad Ali ','',NULL,'',NULL,' AAshiq Ali (Late) ',NULL,NULL,NULL,'0331-33142104 ',NULL,'','Ward No. 2, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3207,1,'3207','Mohammad Arif ','',NULL,'',NULL,' Mohammad Ilyas (Late) ',NULL,NULL,NULL,'0300-3110550 ',NULL,'','Ward No. 2, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3208,1,'3208','Raza Ali ','',NULL,'',NULL,' Ashiq Ali (Late) ',NULL,NULL,NULL,'0306-2213739 ',NULL,'','Ward No. 2, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3209,1,'3209','Ejaz Ahmed ','',NULL,'',NULL,' Rustam Khan',NULL,NULL,NULL,'0306-8264741 ',NULL,'','Ward No. 2, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3210,1,'3210','Noman Ali ','',NULL,'',NULL,' Riasat Ali ',NULL,NULL,NULL,'0301-3643571 ',NULL,'','Ward No. 2, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3211,1,'3211','Akbar Ali ','',NULL,'',NULL,' Shabir Ali ',NULL,NULL,NULL,'0301-3286838 ',NULL,'','Ward No. 2, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3212,1,'3212','Javiad Iqbal ','',NULL,'',NULL,' Mashooque Ali Khan',NULL,NULL,NULL,'0304-0356950 ',NULL,'','Ward No. 2, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3213,1,'3213','Sarfraz Ahmed ','',NULL,'',NULL,' Sohrab Ahmed ',NULL,NULL,NULL,'0300-3318243 ',NULL,'','Ward No. 2, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3214,1,'3214','Shafqat Ali ','',NULL,'',NULL,' Liaqat Ali (Late) ',NULL,NULL,NULL,'0336-3760058',NULL,'','Ward No. 2, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3215,1,'3215','Dr. Haq Nawaz ','',NULL,'',NULL,' Ejaz Ahmed ',NULL,NULL,NULL,'0302-3314656 ',NULL,'','Ward No. 2, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3216,1,'3216','Qamar Ahmed ','',NULL,'',NULL,' Sohrab Ahmed ',NULL,NULL,NULL,'0301-2892620 ',NULL,'','Ward No. 2, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3217,1,'3217','Ishtiaque Ahmed ','',NULL,'',NULL,' Risaldar Khursheed Ali ',NULL,NULL,NULL,'0333-3796271 ',NULL,'','Ward No. 2, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3218,1,'3218','Rashid Ali ','',NULL,'',NULL,' Arshad Khan ',NULL,NULL,NULL,'0300-3327681 ',NULL,'','Ward No. 2, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3219,1,'3219','Sudheer Ahmed ','',NULL,'',NULL,' Shabir Ahmed ',NULL,NULL,NULL,'0302-3080327 ',NULL,'','Ward No. 2, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3220,1,'3220','Irshad Ali ','',NULL,'',NULL,' Qasim Ali Khan ',NULL,NULL,NULL,'0303-2002933 ',NULL,'','Ward No. 2, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3221,1,'3221','Sadaqat Ali ','',NULL,'',NULL,' Liaqat Ali (Late) ',NULL,NULL,NULL,'0333-7876424 ',NULL,'','Ward No. 2, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3222,1,'3222','Manwar Ali ','',NULL,'',NULL,' Hayat Mohammad ',NULL,NULL,NULL,'0313-8069090 ',NULL,'','Ward No. 2, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3223,1,'3223','Amir Hayat ','',NULL,'',NULL,' Liaqat Ali (Late) ',NULL,NULL,NULL,'0306-5167826 ',NULL,'','Ward No. 2, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3224,1,'3224','Asgar Ali ','',NULL,'',NULL,' Rashid Ali ',NULL,NULL,NULL,'0300-3305599 ',NULL,'','Ward No. 2, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3225,1,'3225','Subhan Ali ','',NULL,'',NULL,' Imran Mashooque (Late) ',NULL,NULL,NULL,'0302-3080327 ',NULL,'','Ward No. 2, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3226,1,'3226','Mushtaque Ahmed ','',NULL,'',NULL,' Nabi Sher ',NULL,NULL,NULL,'0333-3796271 ',NULL,'','Ward No. 2, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3227,1,'3227','Mukhtiar Ahmed ','',NULL,'',NULL,' N',NULL,NULL,NULL,'0306-5019560 ',NULL,'','Ward No. 2, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3228,1,'3228','Nadeem ','',NULL,'',NULL,' Qutabudin ',NULL,NULL,NULL,'0301-3632683 ',NULL,'','Ward No. 2, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3229,1,'3229','Nadeem (Ka Ka)  ','',NULL,'',NULL,'  Mohammad Siddique ',NULL,NULL,NULL,'0305-2134518',NULL,'','Ward No. 2, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3230,1,'3230','Risaldar Mansoor Ahmed ','',NULL,'',NULL,' Mumtaz Ali',NULL,NULL,NULL,'0300-3329690 ',NULL,'','Ward No. 2, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3231,1,'3231','Iftikhar Ahmed ','',NULL,'',NULL,' Younas Khan ',NULL,NULL,NULL,'0300-3348582 ',NULL,'','Ward No. 2, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3232,1,'3232','Kamran Hussain ','',NULL,'',NULL,' Manzoor Hussain ',NULL,NULL,NULL,'0307-2566186 ',NULL,'','Ward No. 2, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3233,1,'3233','Asif Ali ','',NULL,'',NULL,' Master Charagh Ali',NULL,NULL,NULL,'0302-5285187 ',NULL,'','Ward No. 2, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3234,1,'3234','Zoja Mama Umaid Ali (Late) ','',NULL,'',NULL,' N',NULL,NULL,NULL,'0311-1519141',NULL,'','Ward No. 4, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3235,1,'3235','Waseem Ahmed ','',NULL,'',NULL,' Qasim Ali',NULL,NULL,NULL,'',NULL,'','Ward No. 4, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3236,1,'3236','Himayat Ali (Late) ','',NULL,'',NULL,' Nawab Ali',NULL,NULL,NULL,'0300-3632290',NULL,'','Ward No. 4, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3237,1,'3237','Zulfiqar Ahmed ','',NULL,'',NULL,' Mashooq Ali',NULL,NULL,NULL,'0336-123507',NULL,'','Ward No. 4, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3238,1,'3238','Abdul Sattar ','',NULL,'',NULL,' Nasir Ali',NULL,NULL,NULL,'0302-3992648',NULL,'','Ward No. 4, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3239,1,'3239','Zulfiqar Ali ','',NULL,'',NULL,' Dr. Qasim Ali',NULL,NULL,NULL,'0300-3323267',NULL,'','Ward No. 4, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3240,1,'3240','Haji Ishaq ','',NULL,'',NULL,' Mumtaz Ali',NULL,NULL,NULL,'0300-3714317',NULL,'','Ward No. 4, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3241,1,'3241','Maqsood Ahmed ','',NULL,'',NULL,' Mohammad Yaseen',NULL,NULL,NULL,'0304-3216219',NULL,'','Ward No. 4, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3242,1,'3242','Fiaz Rashid ','',NULL,'',NULL,' Ghulam Nabi',NULL,NULL,NULL,'0333-2962112',NULL,'','Ward No. 4, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3243,1,'3243','Abid Ali ','',NULL,'',NULL,' Umaid Ali',NULL,NULL,NULL,'0300-3307474',NULL,'','Ward No. 4, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3244,1,'3244','Masroor Ahmed   ','',NULL,'',NULL,' u',NULL,NULL,NULL,'0306-3313400',NULL,'','Ward No. 4, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3245,1,'3245','Kashif Iqbal ','',NULL,'',NULL,' Iqbal Ahmed',NULL,NULL,NULL,'0345-8312990',NULL,'','Ward No. 4, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3246,1,'3246','Ali Raza ','',NULL,'',NULL,' Mohmmad Akhtar',NULL,NULL,NULL,'0333-9279333',NULL,'','Ward No. 4, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3247,1,'3247','Zoja Abdul Hameed (Late)  ','',NULL,'',NULL,' L',NULL,NULL,NULL,'0300-3022056',NULL,'','Ward No. 4, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3248,1,'3248','Javaid ','',NULL,'',NULL,' Abdul Razzaq ',NULL,NULL,NULL,'0345-2434045',NULL,'','Ward No. 4, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3249,1,'3249','Faizan ','',NULL,'',NULL,' Niaz Ahmed',NULL,NULL,NULL,'0333-2533076',NULL,'','Ward No. 4, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3250,1,'3250','Abdul Ghaffar ','',NULL,'',NULL,' Abdul Sattar',NULL,NULL,NULL,'0333-2533076',NULL,'','Ward No. 4, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3251,1,'3251','Rashid ','',NULL,'',NULL,' Abdul Sattar ',NULL,NULL,NULL,'0301-3586559',NULL,'','Ward No. 4, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3252,1,'3252','Khalil Ahmed ','',NULL,'',NULL,' Jamil Ahmed',NULL,NULL,NULL,'0302-3060865',NULL,'','Ward No. 4, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3253,1,'3253','Rafique Ahmed ( Zaitoon)  ','',NULL,'',NULL,' l',NULL,NULL,NULL,'0306-3513591',NULL,'','Ward No. 4, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3254,1,'3254','Babar Ali ','',NULL,'',NULL,' Umaid Ali',NULL,NULL,NULL,'0311-2731217',NULL,'','Ward No. 4, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3255,1,'3255','Rashid Ahmed ','',NULL,'',NULL,' Abdul Aziz',NULL,NULL,NULL,'0345-8312990',NULL,'','Ward No. 4, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3256,1,'3256','Zulfiqar Ahmed ','',NULL,'',NULL,' Abdul Sattar',NULL,NULL,NULL,'0330-3023751',NULL,'','Ward No. 4, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3257,1,'3257','Seth Murad Ali ','',NULL,'',NULL,' Seth Mehboob Ali',NULL,NULL,NULL,'0308-2510942',NULL,'','Ward No. 4, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3258,1,'3258','Imdad Ali ','',NULL,'',NULL,' Seth Mehboob Ali',NULL,NULL,NULL,'0302-3313105',NULL,'','Ward No. 5, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3259,1,'3259','Furqan ','',NULL,'',NULL,' M. Hanif',NULL,NULL,NULL,'3063051810',NULL,'','Ward No. 5, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3260,1,'3260','Nasir ali ','',NULL,'',NULL,' Niaz Ali',NULL,NULL,NULL,'3058836729',NULL,'','Ward No. 5, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3261,1,'3261','Mohammad Hassan ','',NULL,'',NULL,' Manoon Khan',NULL,NULL,NULL,'3344683217',NULL,'','Ward No. 5, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3262,1,'3262','Shakil Ahmed ','',NULL,'',NULL,' Dost Mohammad',NULL,NULL,NULL,'3023317668',NULL,'','Ward No. 5, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3263,1,'3263','Javed Ali ','',NULL,'',NULL,' Mumtaz Ali',NULL,NULL,NULL,'3009251173',NULL,'','Ward No. 5, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3264,1,'3264','Hashim Ali ','',NULL,'',NULL,' Imam ali',NULL,NULL,NULL,'3482149436',NULL,'','Ward No. 5, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3265,1,'3265','Dr. M Saleem ','',NULL,'',NULL,' Hashim Ali',NULL,NULL,NULL,'3312636596',NULL,'','Ward No. 5, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3266,1,'3266','Ali Hassan ','',NULL,'',NULL,' Mustafa',NULL,NULL,NULL,'3023312231',NULL,'','Ward No. 5, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3267,1,'3267','Master Waheed ','',NULL,'',NULL,' Qasim Ali',NULL,NULL,NULL,'3363326866',NULL,'','Ward No. 5, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3268,1,'3268','Rashid Ali ','',NULL,'',NULL,' Shoukat Ali',NULL,NULL,NULL,'3022547797',NULL,'','Ward No. 5, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3269,1,'3269','Razia ','',NULL,'',NULL,' Abdul Hameed Khan',NULL,NULL,NULL,'3058376380',NULL,'','Ward No. 5, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3270,1,'3270','Naseem Iqbal ','',NULL,'',NULL,' Mehfooz Kahn ',NULL,NULL,NULL,'',NULL,'','Ward No. 5, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3271,1,'3271','Gulzar Ahmed ','',NULL,'',NULL,' Fateh Mohammad',NULL,NULL,NULL,'3053804900',NULL,'','Ward No. 5, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3272,1,'3272','M. Yousaf ','',NULL,'',NULL,' Wajid ali',NULL,NULL,NULL,'3002234159',NULL,'','Ward No. 5, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3273,1,'3273','Shoukat Ali ','',NULL,'',NULL,' Inayat Ali',NULL,NULL,NULL,'3003055172',NULL,'','Ward No. 5, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3274,1,'3274','Momin ','',NULL,'',NULL,' Niaz Ahmed ',NULL,NULL,NULL,'3033009364',NULL,'','Ward No. 5, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3275,1,'3275','Abdul Ghaffar ','',NULL,'',NULL,' Hayat Mohammad',NULL,NULL,NULL,'3362061580',NULL,'','Ward No. 5, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3276,1,'3276','Liaqat ali ','',NULL,'',NULL,' Shoukat Ali',NULL,NULL,NULL,'3463847320',NULL,'','Ward No. 5, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3277,1,'3277','Nisar Ahmed (Pirji) ','',NULL,'',NULL,' Hayat Mohammad',NULL,NULL,NULL,'3053503486',NULL,'','Ward No. 5, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3278,1,'3278','Mohammad Shakil ','',NULL,'',NULL,' M. Yaqoob',NULL,NULL,NULL,'3023318167',NULL,'','Ward No. 5, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3279,1,'3279','M. Jamil ','',NULL,'',NULL,' M. Yaseen ',NULL,NULL,NULL,'3022391678',NULL,'','Ward No. 5, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3280,1,'3280','Mohammad Farooq ','',NULL,'',NULL,' Taj Mohammad',NULL,NULL,NULL,'3013632751',NULL,'','Ward No. 5, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3281,1,'3281','Rizwan ','',NULL,'',NULL,' M. Hanif ',NULL,NULL,NULL,'3462533218',NULL,'','Ward No. 5, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3282,1,'3282','Iftikhar Ali ','',NULL,'',NULL,' Qasim Ali',NULL,NULL,NULL,'3023317882',NULL,'','Ward No. 5, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3283,1,'3283','M. Ishaq ','',NULL,'',NULL,' Ashraf Khan',NULL,NULL,NULL,'3000362708',NULL,'','Ward No. 5, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3284,1,'3284','Niaz Ahmed ','',NULL,'',NULL,' Imam Ali',NULL,NULL,NULL,'3047620328',NULL,'','Ward No. 5, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3285,1,'3285','M. Sabir ','',NULL,'',NULL,' Jafar Ali Khan',NULL,NULL,NULL,'3362061580',NULL,'','Ward No. 5, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3286,1,'3286','M. Ayoub ','',NULL,'',NULL,' Fateh Mohammad ',NULL,NULL,NULL,'3078196798',NULL,'','Ward No. 5, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3287,1,'3287','Naeem ahmed ','',NULL,'',NULL,' Fateh Mohammad',NULL,NULL,NULL,'3003325175',NULL,'','Ward No. 5, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3288,1,'3288','Naveed Ahmed ','',NULL,'',NULL,' Salabat Ali ',NULL,NULL,NULL,'3013228573',NULL,'','Ward No. 5, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3289,1,'3289','Dr. Mohammad Qasim ','',NULL,'',NULL,' Imam Ali Khan',NULL,NULL,NULL,'3122349299',NULL,'','Ward No. 5, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3290,1,'3290','Jangsher Ali ','',NULL,'',NULL,' Jaodeen Khan',NULL,NULL,NULL,'3013287063',NULL,'','Ward No. 5, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3291,1,'3291','Imran Foji ','',NULL,'',NULL,' Mohammad Hanif',NULL,NULL,NULL,'3053021203',NULL,'','Ward No. 5, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3292,1,'3292','Nadeem ','',NULL,'',NULL,' Dost Mohammad',NULL,NULL,NULL,'3059423506',NULL,'','Ward No. 5, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3293,1,'3293','Liaqat ','',NULL,'',NULL,' Abdul Hakeem',NULL,NULL,NULL,'3083061004',NULL,'','Ward No. 5, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3294,1,'3294','Toheed (Mistari) ','',NULL,'',NULL,' Aziz Ahmed ',NULL,NULL,NULL,'3012789578',NULL,'','Ward No. 5, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3295,1,'3295','Fareed ahmed ','',NULL,'',NULL,' Aziz Ahmed',NULL,NULL,NULL,'3000359709',NULL,'','Ward No. 5, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3296,1,'3296','Abdul Hakim ','',NULL,'',NULL,' Mehboob ali',NULL,NULL,NULL,'3023119545',NULL,'','Ward No. 5, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3297,1,'3297','Sadaqat Ali ','',NULL,'',NULL,' Abdul Hakim',NULL,NULL,NULL,'3322585430',NULL,'','Ward No. 5, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3298,1,'3298','Jangsher Ali ','',NULL,'',NULL,' Hayat Mohammad',NULL,NULL,NULL,'3012800449',NULL,'','Ward No. 5, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3299,1,'3299','Mohammad saleem ','',NULL,'',NULL,' Hayat Mohammad ',NULL,NULL,NULL,'3342563312',NULL,'','Ward No. 5, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3300,1,'3300','M.Aslam ','',NULL,'',NULL,' Feroz Khan',NULL,NULL,NULL,'3052589011',NULL,'','Ward No. 5, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3301,1,'3301','Asif Ali ','',NULL,'',NULL,' Mohammad Yousaf',NULL,NULL,NULL,'3362269143',NULL,'','Ward No. 5, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3302,1,'3302','Ameer Hassan ','',NULL,'',NULL,' Fateh Mohammad',NULL,NULL,NULL,'3013587405',NULL,'','Ward No. 5, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3303,1,'3303','Abdul Jabar ','',NULL,'',NULL,' Fateh Mohammad',NULL,NULL,NULL,'3002810305',NULL,'','Ward No. 5, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3304,1,'3304','Zulfiqar Ali ','',NULL,'',NULL,' Umaid Ali',NULL,NULL,NULL,'3027907593',NULL,'','Ward No. 5, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3305,1,'3305','M.Saleem ','',NULL,'',NULL,' Umaid Ali',NULL,NULL,NULL,'3333754332',NULL,'','Ward No. 5, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3306,1,'3306','Master  Imran ','',NULL,'',NULL,'  Hayat Mohammad',NULL,NULL,NULL,'3453697560',NULL,'','Ward No. 5, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3307,1,'3307','Kifayat Ali ','',NULL,'',NULL,' Jafar Ali',NULL,NULL,NULL,'',NULL,'','Ward No. 5, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3308,1,'3308','M Jamil ','',NULL,'',NULL,' Qasim Ali',NULL,NULL,NULL,'3330363112',NULL,'','Ward No. 5, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3309,1,'3309','Javed Ali ','',NULL,'',NULL,' Qasim Ali',NULL,NULL,NULL,'3005544120',NULL,'','Ward No. 5, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3310,1,'3310','Anwar Ali ','',NULL,'',NULL,' Nawab Ali Khan',NULL,NULL,NULL,'3024545090',NULL,'','Ward No. 5, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3311,1,'3311','Shahid ','',NULL,'',NULL,' M Siddique',NULL,NULL,NULL,'3073449349',NULL,'','Ward No. 5, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3312,1,'3312','Zahid ','',NULL,'',NULL,' M. Siddique',NULL,NULL,NULL,'3006650626',NULL,'','Ward No. 5, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3313,1,'3313','M. Akram ','',NULL,'',NULL,' Feroz Khan',NULL,NULL,NULL,'3002310735',NULL,'','Ward No. 5, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3314,1,'3314','Adil Ali ','',NULL,'',NULL,' Mansab Ali',NULL,NULL,NULL,'3003327852',NULL,'','Ward No. 5, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3315,1,'3315','Mohammad Hayat ','',NULL,'',NULL,' Kareem Khan',NULL,NULL,NULL,'3009203277',NULL,'','Ward No. 5, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3316,1,'3316','Munshi Khan ','',NULL,'',NULL,' Kareem Khan',NULL,NULL,NULL,'3342565078',NULL,'','Ward No. 5, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3317,1,'3317','Shabir Ahmed ','',NULL,'',NULL,' Shakoor Din',NULL,NULL,NULL,'3342551660',NULL,'','Ward No. 5, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3318,1,'3318','Waqar Ahmed ','',NULL,'',NULL,' Nisar Ahmed ',NULL,NULL,NULL,'3052136911',NULL,'','Ward No. 5, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3319,1,'3319','Waqas Foji ','',NULL,'',NULL,' Nisar Ahmed',NULL,NULL,NULL,'3333239268',NULL,'','Ward No. 5, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3320,1,'3320','Asif ','',NULL,'',NULL,' Ghulam Nabi',NULL,NULL,NULL,'',NULL,'','Ward No. 5, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3321,1,'3321','Zoja Yousaf Ali Khan ','',NULL,'',NULL,' N',NULL,NULL,NULL,'3003321087',NULL,'','Ward No. 5, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3322,1,'3322','Master Tanveer Ahmed ','',NULL,'',NULL,' Wajid Ali Khan',NULL,NULL,NULL,'3363437938',NULL,'','Ward No. 5, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3323,1,'3323','Aladeen ','',NULL,'',NULL,' Wajid Ali Khan',NULL,NULL,NULL,'3062216360',NULL,'','Ward No. 5, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3324,1,'3324','Aurang Zaib ','',NULL,'',NULL,' Aladin',NULL,NULL,NULL,'',NULL,'','Ward No. 5, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3325,1,'3325','Iftikhar ','',NULL,'',NULL,' Asad Ali Khan',NULL,NULL,NULL,'3366891756',NULL,'','Ward No. 5, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3326,1,'3326','Tanveer ','',NULL,'',NULL,' Wajid Ali Khan',NULL,NULL,NULL,'3012390413',NULL,'','Ward No. 5, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3327,1,'3327','Mohammad Manwar ','',NULL,'',NULL,' Nawab Ali ',NULL,NULL,NULL,'3032669866',NULL,'','Ward No. 5, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3328,1,'3328','Jangsher ','',NULL,'',NULL,' Zia uddin ',NULL,NULL,NULL,'3073449349',NULL,'','Ward No. 5, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3329,1,'3329','M Farooq ','',NULL,'',NULL,' Abdul Aziz',NULL,NULL,NULL,'3013352272',NULL,'','Ward No. 5, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3330,1,'3330','Wilayat Ali ','',NULL,'',NULL,' Hayat Mohammad',NULL,NULL,NULL,'3055816606',NULL,'','Ward No. 5, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3331,1,'3331','Mohammad Nadeem ','',NULL,'',NULL,' Phool Mohammad ',NULL,NULL,NULL,'3073083684',NULL,'','Ward No. 5, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3332,1,'3332','Abdul Rasheed ','',NULL,'',NULL,' Jafar Ali Khan',NULL,NULL,NULL,'3083542991',NULL,'','Ward No. 5, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3333,1,'3333','Sultan Ahmed ','',NULL,'',NULL,' Asad Ali',NULL,NULL,NULL,'3023037909',NULL,'','Ward No. 5, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3334,1,'3334','Imran Hussain ','',NULL,'',NULL,' Asad Ali',NULL,NULL,NULL,'3023317782',NULL,'','Ward No. 5, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3335,1,'3335','Shamshad Ahmed ','',NULL,'',NULL,' Noor Mohammad',NULL,NULL,NULL,'3002553889',NULL,'','Ward No. 5, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3336,1,'3336','Haider Ali ','',NULL,'',NULL,' Shamshad Ali',NULL,NULL,NULL,'3082745453',NULL,'','Ward No. 5, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3337,1,'3337','Mohammad Rafiq ','',NULL,'',NULL,' Noor Mohammad',NULL,NULL,NULL,'3453718204',NULL,'','Ward No. 5, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3338,1,'3338','Abdul Qayoom ','',NULL,'',NULL,' Fateh Mohammad',NULL,NULL,NULL,'3013324680',NULL,'','Ward No. 5, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3339,1,'3339','Jahan Zaibul Hasan ','',NULL,'',NULL,' M. Yaqoob ',NULL,NULL,NULL,'3003488611',NULL,'','Ward No. 5, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3340,1,'3340','Abdul Rasheed ','',NULL,'',NULL,' Abdul Aziz',NULL,NULL,NULL,'3032991888',NULL,'','Ward No. 5, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3341,1,'3341','Waheed Ahmed ','',NULL,'',NULL,' Abdul Aziz',NULL,NULL,NULL,'3023000835',NULL,'','Ward No. 5, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3342,1,'3342','Seth Abdul Jabar (Late) ','',NULL,'',NULL,' Mumtaz Ali',NULL,NULL,NULL,'3012612857',NULL,'','Ward No. 5, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3343,1,'3343','Javed Mumtaz ','',NULL,'',NULL,' Mumatz Ali',NULL,NULL,NULL,'0300-3307676',NULL,'','Ward No. 6, Station, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3344,1,'3344','Shakil Ahmed ','',NULL,'',NULL,' Mohammad Yaseen ',NULL,NULL,NULL,'0300-3321225',NULL,'','Ward No. 6, Station, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3345,1,'3345','Shahid Ali ','',NULL,'',NULL,' Abdul Majeed ',NULL,NULL,NULL,'0301-3575874',NULL,'','Ward No. 6, Station, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3346,1,'3346','Javed Iqbal ','',NULL,'',NULL,' Abdul Majeed',NULL,NULL,NULL,'0300-3325541',NULL,'','Ward No. 6, Station, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3347,1,'3347','Altaf Hussain ','',NULL,'',NULL,' Mushtaq Ahmed',NULL,NULL,NULL,'0346-3713761',NULL,'','Ward No. 6, Station, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3348,1,'3348','Maqsood Ali ','',NULL,'',NULL,' Shan Mohammad',NULL,NULL,NULL,'0331-3671409',NULL,'','Ward No. 6, Station, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3349,1,'3349','Mohammad Asif ','',NULL,'',NULL,' Imam Ali',NULL,NULL,NULL,'0304-3959316',NULL,'','Ward No. 6, Station, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3350,1,'3350','Mohammad Yasin Khan ','',NULL,'',NULL,' Abdullah Khan',NULL,NULL,NULL,'0303-3919817',NULL,'','Ward No. 6, Station, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3351,1,'3351','Mohammad Farooq Khan ','',NULL,'',NULL,' Qasim Ali',NULL,NULL,NULL,'0333-6670927',NULL,'','Ward No. 6, Station, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3352,1,'3352','Adil Nisar ','',NULL,'',NULL,' Nisar Ahmed ',NULL,NULL,NULL,'0334-2551990',NULL,'','Ward No. 6, Station, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3353,1,'3353','Mohammad Shahid ','',NULL,'',NULL,' Yasin Khan',NULL,NULL,NULL,'0312-3192964',NULL,'','Ward No. 6, Station, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3354,1,'3354','Abdul Aziz ','',NULL,'',NULL,' Muneer Ahmed',NULL,NULL,NULL,'0300-2579696',NULL,'','Ward No. 6, Station, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3355,1,'3355','Aashiq Ali ','',NULL,'',NULL,' Muneer Ahmed',NULL,NULL,NULL,'0307-8993443',NULL,'','Ward No. 4, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3356,1,'3356','Mehboob Ali ','',NULL,'',NULL,' Arshad Ali',NULL,NULL,NULL,'0302-3312612',NULL,'','Ward No. 4, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3357,1,'3357','Mohammad Aslam ','',NULL,'',NULL,' Arshad Ali',NULL,NULL,NULL,'0331-2949125',NULL,'','Ward No. 4, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3358,1,'3358','Mohammad Saleem ','',NULL,'',NULL,' Arshad Ali',NULL,NULL,NULL,'0346-3628231',NULL,'','Ward No. 4, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3359,1,'3359','Mohammad Ayoub ','',NULL,'',NULL,' Hashim Ali',NULL,NULL,NULL,'0302-2625128',NULL,'','Ward No. 4, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3360,1,'3360','Meraj Ali ','',NULL,'',NULL,' Mohammad Sarwar Ali (Late)',NULL,NULL,NULL,'0303-3077143',NULL,'','Ward No. 4, Tando Jan Mohammad',NULL,NULL,'Sindh','Tando Jan Mohammad ',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3361,1,'3361','Dr.Muhammad Ayub Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0723-661661',NULL,'','B-3, FFC Town Mirpur Mathelo-65050',NULL,NULL,'Sindh','Mirpur Mathelo',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3362,1,'3362','Abdul Shafiq kk','',NULL,'',NULL,'',NULL,NULL,NULL,'0723-661500',NULL,'','C-39, FFC Town Mirpur Mathelo-65050',NULL,NULL,'Sindh','Mirpur Mathelo',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3363,1,'3363','Fahad Ullah','',NULL,'',NULL,'',NULL,NULL,NULL,'0723-661500',NULL,'','R 10 ,BOQ-3, FFC Town Mirpur Mathelo-65050',NULL,NULL,'Sindh','Mirpur Mathelo',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3364,1,'3364','Dr. Liaquat Ali Kahn','',NULL,'',NULL,'',NULL,NULL,NULL,'3003300394',NULL,'','Gharibabad Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3365,1,'3365','Shoukat Ali Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3462553870',NULL,'','Gharibabad Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3366,1,'3366','Javed Ali Shoukat','',NULL,'',NULL,'',NULL,NULL,NULL,'3332927776',NULL,'','Gharibabad Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3367,1,'3367','Shahid Ali Shoukat','',NULL,'',NULL,'',NULL,NULL,NULL,'3443741445',NULL,'','Gharibabad Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3368,1,'3368','Islam Shoukat','',NULL,'',NULL,'',NULL,NULL,NULL,'3337031328',NULL,'','Gharibabad Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3369,1,'3369','Zahid Shoukat','',NULL,'',NULL,'',NULL,NULL,NULL,'3443735928',NULL,'','Gharibabad Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3370,1,'3370','Tahir Shoukat','',NULL,'',NULL,'',NULL,NULL,NULL,'3465372640',NULL,'','Gharibabad Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3371,1,'3371','Zain Roshan','',NULL,'',NULL,'',NULL,NULL,NULL,'3470359991',NULL,'','Gharibabad Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3372,1,'3372','Muhammad Usman Sawi Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'','Gharibabad Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3373,1,'3373','Zulfiquar Liaquat','',NULL,'',NULL,'',NULL,NULL,NULL,'3461700787',NULL,'','Gharibabad Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3374,1,'3374','Liaquat Ali Khanji','',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','Gharibabad Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3375,1,'3375','Captain Shoukat Ali Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3361354703',NULL,'','Gharibabad Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3376,1,'3376','Muhammad Aslam Taj Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3068225480',NULL,'','Gharibabad Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3377,1,'3377','Wilayat Ali Khan','',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','?',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3378,1,'3378','Kaleem Hakim Ali Khan','',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','Gharibabad Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3379,1,'3379','Gul Muhammad Faiz Muhammad Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3022567477',NULL,'','Ramzan Chowk Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3380,1,'3380','Shoukat Ali Khan Faiz Muhammad Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3063314990',NULL,'','Ramzan Chowk Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3381,1,'3381','Master Hanif Khan Faiz Muhammad Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3003220325',NULL,'','Ramzan Chowk Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3382,1,'3382','Shahid Ramzan','',NULL,'',NULL,'',NULL,NULL,NULL,'3023082677',NULL,'','Ramzan Chowk Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3383,1,'3383','Waseem Munawar Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3008255115',NULL,'','Eid Gah Mohalla Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3384,1,'3384','Saeed Alam Khan Khan Muhd Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3003558530',NULL,'','Eid Gah Mohalla Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3385,1,'3385','Haji Mumtaz Khan Yaseen Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3462416281',NULL,'','Eid Gah Mohalla Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3386,1,'3386','Liaquat Ali Jasso Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3013369639',NULL,'','Eid Gah Mohalla Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3387,1,'3387','Yameen Yaseen Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3068229725',NULL,'','Eid Gah Mohalla Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3388,1,'3388','Seth Suleman Khan Ashraf Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3003300265',NULL,'','Eid Gah Mohalla Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3389,1,'3389','Muhammad Saleem Bhanwro Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3063316250',NULL,'','Eid Gah Mohalla Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3390,1,'3390','Maqsood Bhanwro Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3063316250',NULL,'','Eid Gah Mohalla Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3391,1,'3391','Noor Muhammad Muqarab Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3468913561',NULL,'','Eid Gah Mohalla Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3392,1,'3392','Nawab Ali','',NULL,'',NULL,'',NULL,NULL,NULL,'3063029857',NULL,'','Eid Gah Mohalla Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3393,1,'3393','Aladin Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3002142528',NULL,'','Eid Gah Mohalla Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3394,1,'3394','Engineer Adnan Khan','',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','Eid Gah Mohalla Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3395,1,'3395','Kamran Murad Khan','',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','Eid Gah Mohalla Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3396,1,'3396','Engineer Sarwar Khan','',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','Eid Gah Mohalla Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3397,1,'3397','Muhammad Iqbal Khan','',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','Eid Gah Mohalla Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3398,1,'3398','Dawood Ali Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3063316343',NULL,'','Eid Gah Mohalla Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3399,1,'3399','Tanveer Dawood Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3063357635',NULL,'','Eid Gah Mohalla Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3400,1,'3400','Abid Hussain Taj Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3222071292',NULL,'','Ramzan Chowk Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3401,1,'3401','Akthar Khan Taj Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3344265702',NULL,'','Ramzan Chowk Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3402,1,'3402','Waseem Hassan Muhammad Aslam ','',NULL,'',NULL,'',NULL,NULL,NULL,'3062225480',NULL,'','Ramzan Chowk Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3403,1,'3403','Muhammad Iqbal Ismail Khan (N) Jang','',NULL,'',NULL,'',NULL,NULL,NULL,'3063315808',NULL,'','Islamabad Mohallah Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3404,1,'3404','Ishtiaq Ahmed Ismail Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3363221952',NULL,'','Islamabad Mohallah Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3405,1,'3405','Abdul Rehman Abdullah Khan','',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','Islamabad Mohallah Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3406,1,'3406','Muhammad Usman Abdullah Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3013283313',NULL,'','Islamabad Mohallah Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3407,1,'3407','Muhammad Azam Abdullah Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3003311037',NULL,'','Islamabad Mohallah Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3408,1,'3408','Sadullah Khan Bahdur Khan','',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','Islamabad Mohallah Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3409,1,'3409','Dilshad Khan Sadullah Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3003283961',NULL,'','Islamabad Mohallah Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3410,1,'3410','Tayyab Ali Khan Sadullah Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3003561830',NULL,'','Islamabad Mohallah Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3411,1,'3411','Muhammad Iqbal Dolat Khan','',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','Islamabad Mohallah Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3412,1,'3412','Molvi Kamram Aleem Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'30683227063',NULL,'','Islamabad Mohallah Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3413,1,'3413','Alaodin Khan Ldhu Khan ','',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','?',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3414,1,'3414','Master Shabbir Khan Moj Din Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3013229335',NULL,'','Ismalamia High School Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3415,1,'3415','Master Ghulam Rasool Khan','',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','Islamabad Mohallah Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3416,1,'3416','Akbar Majaor Khan (ASRAF)','',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','Islamabad Mohallah Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3417,1,'3417','Usman Majeed Khan ','',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','Riaz Colony Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3418,1,'3418','Iqbal Inayat Ali (Foji) ','',NULL,'',NULL,'',NULL,NULL,NULL,'3483396030',NULL,'','Faiz Muhammad Khan Gali',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3419,1,'3419','Javed (Foji) Inayat Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3410359010',NULL,'','Faiz Muhammad Khan Gali',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3420,1,'3420','Parvez Inayat Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3453726440',NULL,'','Faiz Muhammad Khan Gali',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3421,1,'3421','Shabir Faiz Muhammad Khan ','',NULL,'',NULL,'',NULL,NULL,NULL,'3033481974',NULL,'','Faiz Muhammad Khan Gali',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3422,1,'3422','Jang Sher Khan Fateh Khan ','',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','Faiz Muhammad Khan Gali',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3423,1,'3423','Liaquat Aleemuddin Khan','',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','?Ramzan Chowk Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3424,1,'3424','Muhammad Yousif? (Gega Khan)','',NULL,'',NULL,'',NULL,NULL,NULL,'3062652533',NULL,'','House No.Y-44 Thana road Khipro ',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3425,1,'3425','Haji Muhammad Yousif Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3023992189',NULL,'','House No.Y-44 Thana road Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3426,1,'3426','Taj Muhammad Khan ','',NULL,'',NULL,'',NULL,NULL,NULL,'3002060034',NULL,'','Post Office Khpro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3427,1,'3427','Hyder Taj Muhammad Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3002060034',NULL,'','Gyamkhana Road',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3428,1,'3428','Shoukat Barkat Khan','',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','Mirpurkhas Road',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3429,1,'3429','Liaquat Barkat Khan','',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','Mirpurkhas Road',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3430,1,'3430','Yameen Khan ','',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','Mirpurkhas Road',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3431,1,'3431','Ghulam Barkat Khan','',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','Mirpurkhas Road',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3432,1,'3432','Muhammad Ayub Khan (Gega Khan)','',NULL,'',NULL,'',NULL,NULL,NULL,'3332946911',NULL,'','House No.Y-44 Thana road Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3433,1,'3433','Liaquat Ali Khan (HBL)','',NULL,'',NULL,'',NULL,NULL,NULL,'3063309363',NULL,'','Ramzan Chowk Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3434,1,'3434','Raja Liaquat Ali Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3063309363',NULL,'','Ramzan Chowk Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3435,1,'3435','Shabiir Khan Majeed Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3468908887',NULL,'','Gharibabad Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3436,1,'3436','Ali Hassan Majeed Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3070032252',NULL,'','Ramzan Chowk Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3437,1,'3437','Muhammad Usman','',NULL,'',NULL,'',NULL,NULL,NULL,'3055254127',NULL,'','Ramzan Chowk Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3438,1,'3438','Maqsood Ali Khan Sanno Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3083593846',NULL,'','Rind Para Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3439,1,'3439','Qadeer Khan Yousif Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3412602227',NULL,'','Qaim khani Mohalla',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3440,1,'3440','Ali Sher Khan Pany Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3003642329',NULL,'','Eid Gah Mohallah Khipro ',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3441,1,'3441','Muhammad Yaseen ','',NULL,'',NULL,'',NULL,NULL,NULL,'3063316044',NULL,'','Eid gah Mohalla',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3442,1,'3442','Muhammad Hanif KK Mustique Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3453746786',NULL,'','Gymkhana road Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3443,1,'3443','Muhammad Yousif? Pany khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3063315517',NULL,'','Eid Gah Mohalla Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3444,1,'3444','Niamat Ali Faiz Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3013221477',NULL,'','Ramzan Chok Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3445,1,'3445','Dr. Maqsood Ali Khan ','',NULL,'',NULL,'',NULL,NULL,NULL,'3078190326',NULL,'','Dr. Maqsood Mohalla',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3446,1,'3446','Shabir Ali Khan Sadullah khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3013564601',NULL,'','Dr. Maqsood Mohalla',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3447,1,'3447','Younis Ali Khan Sadullah khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3013220994',NULL,'','Dr. Maqsood Mohalla',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3448,1,'3448','Ilyas Ali Khan Umer khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3002772148',NULL,'','Dr. Maqsood Mohalla',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3449,1,'3449','Shoukat Ashique Ali','',NULL,'',NULL,'',NULL,NULL,NULL,'3078199307',NULL,'','Dr. Maqsood Mohalla',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3450,1,'3450','Sadique Ali Khan Ashique Ali khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3063052918',NULL,'','Dr. Maqsood Mohalla',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3451,1,'3451','Muhammad Yousif Shoukat','',NULL,'',NULL,'',NULL,NULL,NULL,'3078196654',NULL,'','Dr. Maqsood Mohalla',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3452,1,'3452','Muhammad Iqbal','',NULL,'',NULL,'',NULL,NULL,NULL,'3013228288',NULL,'','Dr. Maqsood Mohalla',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3453,1,'3453','Muhammad Aslam Mohammad Ali Khan ','',NULL,'',NULL,'',NULL,NULL,NULL,'3003302690',NULL,'','Sunara Gali Khipro ',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3454,1,'3454','Sarwar Khan Sadullah Khan ','',NULL,'',NULL,'',NULL,NULL,NULL,'3003356029',NULL,'','Dr Maqsood ',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3455,1,'3455','Muhammad Yousif Muhammad Iqbal (Foji)','',NULL,'',NULL,'',NULL,NULL,NULL,'3003321229',NULL,'','Ramzan Chok',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3456,1,'3456','Murad Khan Taj Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3062086501',NULL,'','Eid Gah Mohallah',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3457,1,'3457','Javaid Khan Wajid Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3003324068',NULL,'','Islamabad Mohalla Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3458,1,'3458','Jamshed Ali Khan Arshad Ali Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3318016320',NULL,'','Islamabad Mohalla Khipro ',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3459,1,'3459','Muhammad Farooque Ahmed (N)','',NULL,'',NULL,'',NULL,NULL,NULL,'3462090592',NULL,'','Islamabad Muhallah Khipro ',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3460,1,'3460','Muslim Nisar Khan ','',NULL,'',NULL,'',NULL,NULL,NULL,'3063310567',NULL,'','Islamabad Muhallah Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3461,1,'3461','Muhammad Younis Aleem Khan','',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','Islamabad Muhallah Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3462,1,'3462','Abdul Qadeer Aleem Khan','',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','Islamabad Muhallah Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3463,1,'3463','Nadeem Muhammad Ali Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3342613859',NULL,'','Sonar Ali Gali Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3464,1,'3464','Saleem Muhammad Ali Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3013456219',NULL,'','Sonar Ali Gali Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3465,1,'3465','Aslam Muhammad Ali KK','',NULL,'',NULL,'',NULL,NULL,NULL,'3003302690',NULL,'','Sonar Ali Gali Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3466,1,'3466','Abdu Bakar Dawood Khan','',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','Faiz Muhammad Khan Gali',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3467,1,'3467','Muhammad Iqbal Khan ','',NULL,'',NULL,'',NULL,NULL,NULL,'3313558196',NULL,'','Ramzan Chok Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3468,1,'3468','Abdul Hameed (Master)','',NULL,'',NULL,'',NULL,NULL,NULL,'3133580677',NULL,'','Kaim Khani Muhalla',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3469,1,'3469','Abdul Qadar Chand Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3003307591',NULL,'','Kaim Khani Muhalla',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3470,1,'3470','Zahid Ali Ismail Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3468913516',NULL,'','Kaim Khani Muhalla',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3471,1,'3471','Muhammad Akram Ismail Khan ','',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','Kaim Khani Muhalla',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3472,1,'3472','Khurshed Mustaque Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3023640050',NULL,'','Kaim Khani Muhalla',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3473,1,'3473','Nadeem Khan Mushtaque','',NULL,'',NULL,'',NULL,NULL,NULL,'3378047740',NULL,'','Kaim Khani Muhalla',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3474,1,'3474','Waseem Khan Phool Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3082320190',NULL,'','Kaim Khani Muhalla',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3475,1,'3475','Akram Habib Khan ','',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','Kaim Khani Muhalla',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3476,1,'3476','Ayub Khan Phool Khan','',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','Kaim Khani Muhalla',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3477,1,'3477','Hassan Yaseen Khan','',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','Kaim Khani Muhalla',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3478,1,'3478','Ikram Khan','',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','Kaim Khani Muhalla',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3479,1,'3479','Zulfiquar Taj Muhammad Khan','',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','Kaim Khani Muhalla',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3480,1,'3480','Amir Hassan ','',NULL,'',NULL,'',NULL,NULL,NULL,'3013227789',NULL,'','Ramzan Chok',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3481,1,'3481','Mohammad Yousif Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3323227274',NULL,'','?',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3482,1,'3482','Muhammad Anwar Ismail Khan ','',NULL,'',NULL,'',NULL,NULL,NULL,'3063310755',NULL,'','Gymkhan Road Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3483,1,'3483','Muhammad Ismail (RESALDAR)','',NULL,'',NULL,'',NULL,NULL,NULL,'3076331115',NULL,'','Gymkhan Road Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3484,1,'3484','Liaquat Hassan Ali Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3003300941',NULL,'','Gymkhan Road Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3485,1,'3485','Tanveer Hassan Khan','',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','Gymkhan Road Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3486,1,'3486','Muhammad Aslam Ismail Khan','',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','Gymkhan Road Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3487,1,'3487','Noshrwan Khan Salman Khan ','',NULL,'',NULL,'',NULL,NULL,NULL,'3013564230',NULL,'','Gymkhan Road Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3488,1,'3488','Haji Ghulam Rasool Khan Salman Khan ','',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','Eid Gah Mohallah',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3489,1,'3489','Zameer Ahmed Yousif Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3423807776',NULL,'','Kaim Khani Muhalla ',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3490,1,'3490','Muhammad Hussain','',NULL,'',NULL,'',NULL,NULL,NULL,'3013228013',NULL,'','?',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3491,1,'3491','Muhammad Saleem Fatha M. khan ','',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','Kaim Khani Muhalla',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3492,1,'3492','Aamir Khan Mohydin Khan ','',NULL,'',NULL,'',NULL,NULL,NULL,'3263162431',NULL,'','Kaim Khani Muhalla',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3493,1,'3493','Kamran Yousif Khan ','',NULL,'',NULL,'',NULL,NULL,NULL,'3378030032',NULL,'','Kaim Khani Muhalla',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3494,1,'3494','Muhammad Saleem Hakim Ali Khan ','',NULL,'',NULL,'',NULL,NULL,NULL,'3002752807',NULL,'','Gharibabad Mohallah Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3495,1,'3495','Salahudin Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3003217193',NULL,'','?',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3496,1,'3496','Thekedar Yaqoob Khan Azeem Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3333136183',NULL,'','Kaim Khani Muhalla',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3497,1,'3497','Nazim Yaqoob Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3313306786',NULL,'','Kaim Khani Muhalla',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3498,1,'3498','Yaseen Khan Ahmed Ali Khan','',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','Kaim Khani Muhalla',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3499,1,'3499','Muhammad Usman Khan Nabbo ','',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','Kaim Khani Muhalla Khipro ',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3500,1,'3500','Muhammad Yousif Khan Aleem Khan','',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','Kaim Khani Muhalla',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3501,1,'3501','Muhammad Saleem Khan Ahmed Ali Khan','',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','Kaim Khani Muhalla',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3502,1,'3502','Muhammad Arshad Ibrahim Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3013224501',NULL,'','Kaim Khani Muhalla',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3503,1,'3503','Muhammad Usman Khan Ibrahim Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3013227354',NULL,'','Kaim Khani Muhalla',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3504,1,'3504','Muhammad Asif Khan ','',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','Kaim Khani Muhalla',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3505,1,'3505','Imran Khan Mukhtiar Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3363747000',NULL,'','Kaim Khani Muhalla',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3506,1,'3506','Nadeem Khan Azeem Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3453746782',NULL,'','Kaim Khani Muhalla',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3507,1,'3507','Ali Mudin Khan ','',NULL,'',NULL,'',NULL,NULL,NULL,'332685687',NULL,'','Kaim Khani Muhalla',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3508,1,'3508','Javed Khan Dawood Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3003300145',NULL,'','Kaim Khani Muhalla',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3509,1,'3509','Sajid Khan Dawood Khan ','',NULL,'',NULL,'',NULL,NULL,NULL,'3002341090',NULL,'','Kaim Khani Muhalla',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3510,1,'3510','Wilayat Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3332711796',NULL,'','Kaim Khani Muhalla',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3511,1,'3511','Khalid Dawood Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3023312264',NULL,'','Kaim Khani Muhalla',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3512,1,'3512','Murad Saifuddin Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3463753305',NULL,'','Kaim Khani Muhalla',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3513,1,'3513','Shoukat Saifuddin Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3073310125',NULL,'','Kaim Khani Muhalla',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3514,1,'3514','Liaquat Laado Khan','',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','Kaim Khani Muhalla',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3515,1,'3515','Abdul Sattar Khan','',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','Kaim Khani Muhalla',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3516,1,'3516','Saood Ahmed','',NULL,'',NULL,'',NULL,NULL,NULL,'3082622833',NULL,'','Kaim Khani Muhalla',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3517,1,'3517','Saleem Shakir Azeem Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3003986090',NULL,'','Kaim Khani Muhalla',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3518,1,'3518','Haji Mehfuz Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3003300360',NULL,'','Kaim Khani Muhalla',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3519,1,'3519','Muhammad Hassan Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3003319542',NULL,'','Kaim Khani Muhalla',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3520,1,'3520','Kamran Ali Liaqat Ali Khan ','',NULL,'',NULL,'',NULL,NULL,NULL,'3068224674',NULL,'','Ramzan Chowk Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3521,1,'3521','Shahzad Khan Dawood Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3003505059',NULL,'','Kaim Khani Muhalla',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3522,1,'3522','Thekedar Liaquat Ali Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3332916832',NULL,'','Ramzan Chowk',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3523,1,'3523','Islam Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3337031328',NULL,'','Gharibabad Mohallah Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3524,1,'3524','Muhammad Younis Mohyo Din Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3002008293',NULL,'','Gosia Masjid Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3525,1,'3525','Muhammad Imran','',NULL,'',NULL,'',NULL,NULL,NULL,'3033158037',NULL,'','Gosia Masjid Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3526,1,'3526','Mushtaque Ahmed Ismail Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3009073893',NULL,'','Gosia Masjid Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3527,1,'3527','Abbass Ali Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3088783144',NULL,'','Gosia Masjid Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3528,1,'3528','Abid Khan Thakadar','',NULL,'',NULL,'',NULL,NULL,NULL,'3006826686',NULL,'','Gharibabad Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3529,1,'3529','Muhammad Aslam','',NULL,'',NULL,'',NULL,NULL,NULL,'3313353427',NULL,'','?',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3530,1,'3530','Jang Bahadur Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3063310618',NULL,'','Eid Gah Mohallah Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3531,1,'3531','Naveed Hassan','',NULL,'',NULL,'',NULL,NULL,NULL,'3022671534',NULL,'','Nawab Yaseen Khan Gali',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3532,1,'3532','Muhammad Kamran Liaquat Ali','',NULL,'',NULL,'',NULL,NULL,NULL,'3003323864',NULL,'','Ramzan Chowk',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3533,1,'3533','Muhammad Irfan Sawi Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3063316916',NULL,'','Gharibabad Mohallah Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3534,1,'3534','Muhammad Talha','',NULL,'',NULL,'',NULL,NULL,NULL,'3360123009',NULL,'','Kaim Khani Mohallah Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3535,1,'3535','Professor Taj Muhammad ','',NULL,'',NULL,'',NULL,NULL,NULL,'3332917074',NULL,'','Riaz Colony Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3536,1,'3536','Hamza Iqbal','',NULL,'',NULL,'',NULL,NULL,NULL,'3338177757',NULL,'','Kaim Khani Mohallah Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3537,1,'3537','Muhammad Faisal','',NULL,'',NULL,'',NULL,NULL,NULL,'3012936171',NULL,'','?',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3538,1,'3538','Haji Muhammad Hassan Bhanwroo Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3003099551',NULL,'','Eid Gah Mohallah',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3539,1,'3539','Imran Yousif Muhammad Yousif Khan (FMC)','',NULL,'',NULL,'',NULL,NULL,NULL,'3453735794',NULL,'','Kaim Khani Mohallah Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3540,1,'3540','Ali Sher Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3022223511',NULL,'','Gosia Masjid Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3541,1,'3541','Tarique Aziz News Reporter ','',NULL,'',NULL,'',NULL,NULL,NULL,'3072437181',NULL,'','Dr. Maqsood Gali',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3542,1,'3542','Ali Hassan Roshan Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3003314196',NULL,'','Eid Gah Mohallah',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3543,1,'3543','Umer Din Barkat Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3052879567',NULL,'','Aziz Colony Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3544,1,'3544','Riyasat Ali Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3013320125',NULL,'','Aziz Colony Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3545,1,'3545','Zameer Ahmed','',NULL,'',NULL,'',NULL,NULL,NULL,'3423807776',NULL,'','MPS Road Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3546,1,'3546','Dr. Shayan Iqbal Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3340272940',NULL,'','Mehran Medical Center',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3547,1,'3547','Kamran Yousif','',NULL,'',NULL,'',NULL,NULL,NULL,'3003791325',NULL,'','Kaim Khani Mohallah Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3548,1,'3548','Ghulam Rasool Khajoo Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3473526626',NULL,'','Aziz Colony Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3549,1,'3549','Atif Ashique Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3069066598',NULL,'','Aziz Colony Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3550,1,'3550','Muhammad Aamir Ashique Sarwar Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3113130723',NULL,'','Aziz Colony Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3551,1,'3551','Nazim Yaqoob Khan ','',NULL,'',NULL,'',NULL,NULL,NULL,'3313306786',NULL,'','Kaimkhani Mohallah',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3552,1,'3552','Chairman Waseem Khan ','',NULL,'',NULL,'',NULL,NULL,NULL,'3008255551',NULL,'','Eid Gah Mohallah',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3553,1,'3553','Dr. Liaquat Ali Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3003300394',NULL,'','Gharibabad Mohallah',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3554,1,'3554','Liaquat Ali Khan (UBL)','',NULL,'',NULL,'',NULL,NULL,NULL,'3453746864',NULL,'','Ramzan Chowk Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3555,1,'3555','Liaquat Ali Khan (HBL)','',NULL,'',NULL,'',NULL,NULL,NULL,'3062240918',NULL,'','Ramzan Chowk Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3556,1,'3556','Director General Liaquat Jabbar Khan','',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','?',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3557,1,'3557','Liaquat Ali Khan Thekedar ','',NULL,'',NULL,'',NULL,NULL,NULL,'3332916832',NULL,'','Ramzan Chowk Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3558,1,'3558','Haji Liaqaut Hassan Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3003300941',NULL,'','Gymkhana Road ',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3559,1,'3559','Liaqaut Ali Khanji','',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','Gharibabad',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3560,1,'3560','Shoukat Ali Khan Chairman Wapda','',NULL,'',NULL,'',NULL,NULL,NULL,'3063314990',NULL,'','Ramzan Chowk Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3561,1,'3561','Thekedar Yaqoob Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3333136183',NULL,'','Kaimkhani Mohallah',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3562,1,'3562','Hanif Mushtaque Khan ','',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','Kaimkhani Mohallah',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3563,1,'3563','Haji Dawood Khan ','',NULL,'',NULL,'',NULL,NULL,NULL,'3023312264',NULL,'','Kaimkhani Mohallah',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3564,1,'3564','Muhammad Yousaf Aleem Khan','',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','Kaimkhani Mohallah',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3565,1,'3565','Thekedar Abid Khan','',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','Gharibabad',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3566,1,'3566','Aladin Khan ','',NULL,'',NULL,'',NULL,NULL,NULL,'3002142528',NULL,'','Eid Gah Mohallah Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3567,1,'3567','Saeed Alam Khan Muhammad Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3003558530',NULL,'','Eid Gah Mohallah',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3568,1,'3568','Engineer Sarwar Ali Khan ','',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','Eid Gah MOhallah Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3569,1,'3569','Seth Haji Suleman Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3003300265',NULL,'','Eid Gah Mohallah',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3570,1,'3570','Jang Bahadur Khan ','',NULL,'',NULL,'',NULL,NULL,NULL,'3063310618',NULL,'','Eid Gah Mohallah',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3571,1,'3571','Dr. Maqsood Ali Khan ','',NULL,'',NULL,'',NULL,NULL,NULL,'3078190326',NULL,'','Dr. Maqsood Gali',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3572,1,'3572','Haji Abdul Qadeer Khan','',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','Kaimkhani Mohallah Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3573,1,'3573','Muhammad Younis Mohidin Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3033158037',NULL,'','Gosia Masjid Khipro',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3574,1,'3574','Muhammad Akram Ismail Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3022141278',NULL,'','Kaimkhani Mohallah',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3575,1,'3575','Advocate Abdul Sattar Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'3063315524',NULL,'','Kaimkhani Mohallah',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3576,1,'3576','Haji Mehfooz Khan ','',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','Kaimkhani Mohallah',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3577,1,'3577','Neawab Mehmeed Yaseen Khan','',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','Kaimkhani Mohallah',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3578,1,'3578','Wilayat Ali Khan ','',NULL,'',NULL,'',NULL,NULL,NULL,'3003380028',NULL,'gulb','Kaimkhani Mohallah',NULL,NULL,'Sindh','Khipro',NULL,NULL,NULL,'HF Basic Info missing ',0),
(3599,1,'3579-1','Bahadur Khan ',NULL,NULL,'',NULL,NULL,'Bahadur Khan ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Fill Up Basic Head Family Info',0),
(3600,1,'3600-1','Bahadur Khan ',NULL,NULL,'9090999',NULL,'Bahadur Khan ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Basic Info Given',1);

/*Table structure for table `jobstatusmatix` */

DROP TABLE IF EXISTS `jobstatusmatix`;

CREATE TABLE `jobstatusmatix` (
  `JobID` int(3) NOT NULL AUTO_INCREMENT,
  `JobNature` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`JobID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `jobstatusmatix` */

insert  into `jobstatusmatix`(`JobID`,`JobNature`) values 
(1,'Government'),
(2,'Armed force'),
(3,'Service Commission'),
(4,'Private Job'),
(5,'Health'),
(6,'Education'),
(10,'NGO');

/*Table structure for table `jobtitlematix` */

DROP TABLE IF EXISTS `jobtitlematix`;

CREATE TABLE `jobtitlematix` (
  `JobTitleID` int(5) NOT NULL AUTO_INCREMENT,
  `JobTitle` varchar(50) DEFAULT NULL,
  `jobStatusID` int(5) DEFAULT NULL,
  PRIMARY KEY (`JobTitleID`),
  KEY `JobTitID` (`jobStatusID`),
  CONSTRAINT `JobTitID` FOREIGN KEY (`jobStatusID`) REFERENCES `jobstatusmatix` (`JobID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `jobtitlematix` */

insert  into `jobtitlematix`(`JobTitleID`,`JobTitle`,`jobStatusID`) values 
(1,'Cleark',1),
(2,'Major',2),
(3,'Captain',2);

/*Table structure for table `languagematrix` */

DROP TABLE IF EXISTS `languagematrix`;

CREATE TABLE `languagematrix` (
  `CountryCode` char(3) NOT NULL DEFAULT '',
  `Language` char(30) NOT NULL DEFAULT '',
  `IsOfficial` enum('T','F') NOT NULL DEFAULT 'F',
  `Percentage` float(4,1) NOT NULL DEFAULT '0.0',
  PRIMARY KEY (`CountryCode`,`Language`),
  KEY `CountryCode` (`CountryCode`),
  CONSTRAINT `countryLanguage_ibfk_1` FOREIGN KEY (`CountryCode`) REFERENCES `country` (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `languagematrix` */

insert  into `languagematrix`(`CountryCode`,`Language`,`IsOfficial`,`Percentage`) values 
('PAK','Balochi','F',3.0),
('PAK','Brahui','F',1.2),
('PAK','Hindko','F',2.4),
('PAK','Pashto','F',13.1),
('PAK','Punjabi','F',48.2),
('PAK','Saraiki','F',9.8),
('PAK','Sindhi','F',11.8),
('PAK','Urdu','T',7.6);

/*Table structure for table `location` */

DROP TABLE IF EXISTS `location`;

CREATE TABLE `location` (
  `LocationID` int(7) DEFAULT NULL,
  `LocationName` varchar(100) DEFAULT NULL,
  `ProvID` int(7) DEFAULT NULL,
  `DivisionID` int(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `location` */

insert  into `location`(`LocationID`,`LocationName`,`ProvID`,`DivisionID`) values 
(1,'Abbasi Shaheed ',1,NULL),
(2,'Abu Zar Ghaffari ',1,NULL),
(3,'Aisha Manzil ',1,NULL),
(4,'Ancholi ',1,NULL),
(5,'Azizabad ',1,NULL),
(6,'Bandhani Colony ',1,NULL),
(7,'Buffer Zone ',1,NULL),
(8,'Buffer zone-1 ',1,NULL),
(9,'Commercial Area ',1,NULL),
(10,'Dak Khana ',1,NULL),
(11,'Faisal ',1,NULL),
(12,'Farooq-e-Azam ',1,NULL),
(13,'Fatima Jinnah Colony ',1,NULL),
(14,'Firdos Colony ',1,NULL),
(15,'Godhra ',1,NULL),
(16,'Gulshan-e-Saeed ',1,NULL),
(17,'Haidery ',1,NULL),
(18,'Hakeem Ahsan ',1,NULL),
(19,'Kalyana ',1,NULL),
(20,'Karimabad ',1,NULL),
(21,'Khameeso Goth ',1,NULL),
(22,'Khando Goth ',1,NULL),
(23,'Khawaja Ajmeer Nagri ',1,NULL),
(24,'Madina Colony ',1,NULL),
(25,'Mujahid Colony ',1,NULL),
(26,'Mustufa Colony ',1,NULL),
(27,'Nasirabad ',1,NULL),
(28,'Nazimabad No.01 ',1,NULL),
(29,'Nusrat Bhutto Colony ',1,NULL),
(30,'Pahar Ganj ',1,NULL),
(31,'Paposh Nagar ',1,NULL),
(32,'Qasiambad ',1,NULL),
(33,'Rizvia Society ',1,NULL),
(34,'Sakhi Hasan ',1,NULL),
(35,'Shadman Town ',1,NULL),
(36,'Shafeeque Mill Colony ',1,NULL),
(37,'Shah Nawaz Bhutto Colony ',1,NULL),
(38,'Sharifabad ',1,NULL),
(39,'Sir Syed ',1,NULL),
(40,'Super Market ',1,NULL),
(41,'Water Pump ',1,NULL),
(42,'Yaseenabad ',1,NULL),
(43,'?Civic Centre ',2,NULL),
(44,'?Delhi Mercentile Society ',2,NULL),
(45,'?Essa Nagri ',2,NULL),
(46,'?Gillani Railway Station ',2,NULL),
(47,'?Gulshan-E-Iqbal I ',2,NULL),
(48,'?Gulshan-E-Iqbal II ',2,NULL),
(49,'?Gulzar-E-Hijri ',2,NULL),
(50,'?Jamil Colony ',2,NULL),
(51,'?Metrovill ',2,NULL),
(52,'?P.I.B. Colony ',2,NULL),
(53,'?Pehlwan Goth ',2,NULL),
(54,'?Safoora Goth ',2,NULL),
(55,'?Shanti Nagar ',2,NULL),
(56,'Akhtar Colony ',2,NULL),
(57,'Azam Basti ',2,NULL),
(58,'Central Jacob Lines ',2,NULL),
(59,'Chanesar Goth ',2,NULL),
(60,'Garden East ',2,NULL),
(61,'Jamshed Quarter ',2,NULL),
(62,'Jut Line ',2,NULL),
(63,'Manzoor Colony ',2,NULL),
(64,'Mehmoodabad ',2,NULL),
(65,'Pakistan Quarters ',2,NULL),
(66,'Pechs I',2,NULL),
(67,'PechsII ',2,NULL),
(68,'Soldier Bazar ',2,NULL),
(69,'Agra Taj Colony ',3,NULL),
(70,'Allama Iqbal Colony ',3,NULL),
(71,'Baba Bhit ',3,NULL),
(72,'Baghdadi ',3,NULL),
(73,'Behar Colony ',3,NULL),
(74,'Bhutta Village ',3,NULL),
(75,'Chakiwara ',3,NULL),
(76,'City Railway Station ',3,NULL),
(77,'Civil Line ',3,NULL),
(78,'Clifton ',3,NULL),
(79,'Darya Abad ',3,NULL),
(80,'Gabo Pat ',3,NULL),
(81,'Garden ',3,NULL),
(82,'Gazdarabad ',3,NULL),
(83,'Kehkashan ',3,NULL),
(84,'Kemari ',3,NULL),
(85,'Khada Memon Society U',3,NULL),
(86,'Kharadar ',3,NULL),
(87,'Machar Colony ',3,NULL),
(88,'Maripur ',3,NULL),
(89,'Millat Nagar/Islam Pura ',3,NULL),
(90,'Nanak Wara ',3,NULL),
(91,'Nawabad ',3,NULL),
(92,'Old Haji Camp ',3,NULL),
(93,'Ragiwara ',3,NULL),
(94,'Saddar ',3,NULL),
(95,'Shah Baig Line ',3,NULL),
(96,'Shershah ',3,NULL),
(97,'Singo Line ',3,NULL),
(98,'Sultanabad ',3,NULL),
(99,'Baloch Goth ',4,NULL),
(100,'Banaras Colony ',4,NULL),
(101,'Bilal Colony ',4,NULL),
(102,'Chisti Nagar ',4,NULL),
(103,'Data Nagar ',4,NULL),
(104,'Frontier Colony ',4,NULL),
(105,'Ghabool Town ',4,NULL),
(106,'Ghaziabad ',4,NULL),
(107,'Gulshan-E-Ghazi ',4,NULL),
(108,'Hanifabad ',4,NULL),
(109,'Haryana Colony ',4,NULL),
(110,'Iqbal Baloch Colony ',4,NULL),
(111,'Islam Nagar ',4,NULL),
(112,'Islamia Colony ',4,NULL),
(113,'Itahad Town ',4,NULL),
(114,'Jahanabad ',4,NULL),
(115,'Madina Colony ',4,NULL),
(116,'Metrovil ',4,NULL),
(117,'Mohammad Nagar ',4,NULL),
(118,'Mominabad ',4,NULL),
(119,'Muhajir Camp ',4,NULL),
(120,'Mujahidabad ',4,NULL),
(121,'Muslim Mujahid Colony ',4,NULL),
(122,'Nai Abbadi ',4,NULL),
(123,'Old Golimar ',4,NULL),
(124,'Pak Colony ',4,NULL),
(125,'Pathan Colony ',4,NULL),
(126,'Qasba Colony ',4,NULL),
(127,'Rasheedabad ',4,NULL),
(128,'Saeedabad ',4,NULL),
(129,'Cattle Colony ',5,NULL),
(130,'Darsano Chana ',5,NULL),
(131,'Gadap ',5,NULL),
(132,'Gagh',5,NULL),
(133,'Gharibabad ',5,NULL),
(134,'Ghazi Brohi Goth ',5,NULL),
(135,'Gujro ',5,NULL),
(136,'Gulshan-E-Hadeed ',5,NULL),
(137,'Ibraheem Hyderi ',5,NULL),
(138,'Jafar-E-Tayyar ',5,NULL),
(139,'Kala Board ',5,NULL),
(140,'Khokarapar ',5,NULL),
(141,'Landhi ',5,NULL),
(142,'Mangopir ',5,NULL),
(143,'Maymarabad ',5,NULL),
(144,'Model Colony ',5,NULL),
(145,'Murad Memon Goth ',5,NULL),
(146,'Quaidabad ',5,NULL),
(147,'Rehri ',5,NULL),
(148,'Saudabad ',5,NULL),
(149,'Songal ',5,NULL),
(150,'Yousuf Goth ',5,NULL),
(151,'100 Quarters ',6,NULL),
(152,'Al Falah Society ',6,NULL),
(153,'Awami Colony ',6,NULL),
(154,'Bhutto Nagar ',6,NULL),
(155,'Bilal Colony ',6,NULL),
(156,'Burmi Colony ',6,NULL),
(157,'Chakra Goth ',6,NULL),
(158,'Daud Colony ',6,NULL),
(159,'Drigue Colony ',6,NULL),
(160,'Gulzar Colony ',6,NULL),
(161,'Hasrat Mohani Colony ',6,NULL),
(162,'Khawaja Ajmer Nagri ',6,NULL),
(163,'Korangi ',6,NULL),
(164,'Korangi Sector 33 ',6,NULL),
(165,'Landhi ',6,NULL),
(166,'?Moinabad ',6,NULL),
(167,'?Moria Goth ',6,NULL),
(168,'?Muslimabad ',6,NULL),
(169,'?Mustafa Taj Colony ',6,NULL),
(170,'?Muzaffarabad Colony ',6,NULL),
(171,'?Nasir Colony ',6,NULL),
(172,'?Natha Khan Goth ',6,NULL),
(173,'?Pak Sadat Colony ',6,NULL),
(174,'?Reta Plot ',6,NULL),
(175,'?Rifah Aam ',6,NULL),
(176,'?Sherabad ',6,NULL),
(177,'?Shirafi Goth ',6,NULL),
(178,'?Zaman Town ',6,NULL);

/*Table structure for table `mainarea` */

DROP TABLE IF EXISTS `mainarea`;

CREATE TABLE `mainarea` (
  `LocationID` int(7) NOT NULL AUTO_INCREMENT,
  `LocationName` varchar(100) DEFAULT NULL,
  `ProvID` int(7) DEFAULT NULL,
  `DivisionID` int(7) DEFAULT NULL,
  PRIMARY KEY (`LocationID`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

/*Data for the table `mainarea` */

insert  into `mainarea`(`LocationID`,`LocationName`,`ProvID`,`DivisionID`) values 
(1,'Azizabad ',4,2),
(2,'	Buffer Zone',4,2),
(3,'Clifton',4,2),
(4,'Defence',4,2),
(5,'Gulshan-E-Iqbal ',4,2),
(6,'Gulshan-E-Jamal',4,2),
(7,'Gulberg',4,2),
(8,'Johar Chowrangi',4,2),
(9,'Jutt Line Saddar',4,2),
(10,'Korangi\r\n',4,2),
(11,'Liaquatabad',4,2),
(12,'Malir & Model Colony',4,2),
(13,'Malir Cant',4,2),
(14,'Mehmoodabad',4,2),
(15,'Muslim Colony FTC',4,2),
(16,'Golimar (NEW)',4,2),
(17,'Golimar (Old)',4,2),
(18,'Nazimabad\r\n',4,2),
(19,'North Nazimabad\r\n',4,2),
(20,'PECHS',4,2),
(21,'Pak Colony',4,2),
(22,'Punjab Chowrangi',4,2),
(23,'Safoora Goth',4,2),
(24,'Shah Faisal Colony',4,2),
(25,'Teen Talwar',4,2),
(26,'Askari 3 & 10',4,2),
(27,'Nagan Chowrangi',4,2),
(28,'Surjani Town',4,2),
(29,'\r\nTeen Hatti ',4,2),
(30,'Metro Will',4,2),
(31,'Saddar',4,2),
(32,'Lasbela ',4,2),
(33,'Garden',4,2),
(34,'MA Jinnah Road',4,2),
(35,'PIDC',4,2),
(36,'Railway Colony',4,2);

/*Table structure for table `maritalmatrix` */

DROP TABLE IF EXISTS `maritalmatrix`;

CREATE TABLE `maritalmatrix` (
  `ID` int(5) NOT NULL AUTO_INCREMENT,
  `MaritalStatus` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `maritalmatrix` */

insert  into `maritalmatrix`(`ID`,`MaritalStatus`) values 
(1,'Single'),
(2,'Married'),
(3,'Widow/Widower'),
(4,'Divorced');

/*Table structure for table `myhead` */

DROP TABLE IF EXISTS `myhead`;

CREATE TABLE `myhead` (
  `ID` int(10) NOT NULL DEFAULT '0' COMMENT 'Head Of Famliy ID',
  `HeadOfFamily` int(1) DEFAULT '1',
  `HeadID` varchar(20) NOT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `MiddleName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `HFCNIC` varchar(20) NOT NULL,
  `TotalFamilyMembers` int(9) DEFAULT NULL,
  `FatherFirstName` varchar(50) DEFAULT NULL,
  `FatherMiddleName` varchar(50) DEFAULT NULL,
  `FatherLastName` varchar(50) DEFAULT NULL,
  `FatherCNIC` varchar(20) DEFAULT NULL,
  `MobileNo` varchar(20) DEFAULT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `MainArea` varchar(30) DEFAULT NULL,
  `Address1` varchar(100) DEFAULT NULL,
  `Address2` varchar(100) DEFAULT NULL,
  `Block` varchar(50) DEFAULT NULL,
  `Prov` varchar(30) DEFAULT NULL,
  `CityDivision` varchar(30) DEFAULT NULL,
  `District` varchar(30) DEFAULT NULL,
  `Tehsil` varchar(30) DEFAULT NULL,
  `PostalCode` varchar(10) DEFAULT NULL,
  `FormStatus` varchar(30) DEFAULT NULL,
  `FormStatusFlag` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `myhead` */

insert  into `myhead`(`ID`,`HeadOfFamily`,`HeadID`,`FirstName`,`MiddleName`,`LastName`,`HFCNIC`,`TotalFamilyMembers`,`FatherFirstName`,`FatherMiddleName`,`FatherLastName`,`FatherCNIC`,`MobileNo`,`Email`,`MainArea`,`Address1`,`Address2`,`Block`,`Prov`,`CityDivision`,`District`,`Tehsil`,`PostalCode`,`FormStatus`,`FormStatusFlag`) values 
(1,1,'1','Iftikhar Ahmed ','',NULL,'42211-1234567-5',5,'Muhammad Ishaque',NULL,NULL,NULL,'0333-3678899',NULL,'Johar Chowrangi','203 Faran Square',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info Given',1),
(2,1,'2','Nadeem Ahmed','',NULL,'3222',NULL,'Amjad Ali Khan',NULL,NULL,NULL,'',NULL,'Johar Chowrangi','104 Faran Square ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info Given',1),
(3,1,'3','Zuheer Abbas','',NULL,'4232',NULL,'Muhammad Abbas Khan',NULL,NULL,NULL,'0333-2265510',NULL,'Johar Chowrangi','403 Faran Square',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info Given',1),
(4,1,'4','Hassam Ali ','',NULL,'4244',NULL,'Dr. Abdul Jabbar',NULL,NULL,NULL,'0343-1262625',NULL,'Johar Chowrangi','Shumail Heights Kamran Chowrangi',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info Given',1),
(5,1,'5','Usman Ghani','',NULL,'4223',NULL,'Mehmood Ali',NULL,NULL,NULL,'0344-3499909',NULL,'Johar Chowrangi','Noman Complex',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info Given',1),
(6,1,'6','Engr. Ali Nawaz Kaim Khani','',NULL,'4221',NULL,'',NULL,NULL,NULL,'',NULL,'Johar Chowrangi','Nawaz Shareef Scheme PHA Phalwan Ghot',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(7,1,'7','Muhammad Younus','',NULL,'4223',NULL,'Inayat Khan',NULL,NULL,NULL,'0306-375088',NULL,'Johar Chowrangi','B-87 Naveed Bungalows ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info Given',1),
(8,1,'8','Engr. Mir Hasan','',NULL,'4222',NULL,'Muhammad Younus',NULL,NULL,NULL,'0333-2465654',NULL,'Johar Chowrangi','B-87 Naveed Bungalows ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info Given',1),
(9,1,'9','Dr. Iftikhar ','',NULL,'4223',NULL,'Asad Ali',NULL,NULL,NULL,'0332-8200876',NULL,'Johar Chowrangi','B-46 Naveed Bungalows',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info Given',1),
(10,1,'10','Dr. Mushtaq Ahmed','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0331-2037940',NULL,'Johar Chowrangi','030-',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(11,1,'11','Irfan Mustaq','',NULL,'',NULL,'Dr. Mushtaq Ahmed',NULL,NULL,NULL,'0333-2168583',NULL,'Johar Chowrangi','B-83 Naveed Bungalows',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(12,1,'12','Dr. Ashfaq Ahmed','',NULL,'',NULL,'',NULL,NULL,NULL,'0333-3159667',NULL,'Johar Chowrangi','B-83 Naveed Bungalows',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(13,1,'13','Engr. Zahid Ali','',NULL,'',NULL,'Muhammad Ali',NULL,NULL,NULL,'0333-3663163',NULL,'Johar Chowrangi','E-7 Naveed Bungalows',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(14,1,'14','Muhammad Waqas Sultan Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0331-2937719',NULL,'Johar Chowrangi','E-7 Naveed Bungalows',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(15,1,'15','Muhammad Afzal Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0316-7000366',NULL,'Johar Chowrangi','Model Colony',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(16,1,'16','Imran Amman','',NULL,'',NULL,'Ammanullah Khan',NULL,NULL,NULL,'0345-8084808',NULL,'Johar Chowrangi','Block #15 Johar Chowrangi',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(17,1,'17','Noman Akhbar','',NULL,'',NULL,'Imran Amman',NULL,NULL,NULL,'0334-0304601',NULL,'Johar Chowrangi','Block #15 Johar Chowrangi',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(18,1,'18','Asif Ali Khan','',NULL,'',NULL,'Ashiq Ali Khan',NULL,NULL,NULL,'0333-2495515',NULL,'Johar Chowrangi','Block #15 Johar Chowrangi',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(19,1,'19','Muhammad Fayyaz','',NULL,'',NULL,'Jaffer Ali Khan',NULL,NULL,NULL,'0345-3049115',NULL,'Johar Chowrangi','Block #15 Johar Chowrangi',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(20,1,'20','Muhammad Naeem','',NULL,'',NULL,'Muhammad Yaseen Khan',NULL,NULL,NULL,'0333-3783680',NULL,'Johar Chowrangi','Honeed City Block 17',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(21,1,'21','Muhammad Waseem','',NULL,'',NULL,'Muhammad Yaseen Khan',NULL,NULL,NULL,'0311-8709644',NULL,'Johar Chowrangi','Iqra Complex Block 17',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(22,1,'22','Muhammad Rizwan ','',NULL,'',NULL,'Muhammad Tairq',NULL,NULL,NULL,'0315-3745292',NULL,'Johar Chowrangi','Block 15 Johar Chowrangi',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(23,1,'23','Ali Sabri','',NULL,'',NULL,'',NULL,NULL,NULL,'0322-4478615',NULL,'Johar Chowrangi','103 Faran Complex Johar Chowrangi',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(24,1,'24','Muhammad Iqbal','',NULL,'',NULL,'Azam Ali Khan',NULL,NULL,NULL,'0300-2781782',NULL,'Johar Chowrangi','102 Faran Complex Johar Chowrangi',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(25,1,'25','Iftikhar Ahmed ','',NULL,'',NULL,'Muhammad Islam Khan',NULL,NULL,NULL,'0314-2576915',NULL,'Johar Chowrangi','PIB Colony Karachi Center ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(26,1,'26','Waqar Ahmed','',NULL,'',NULL,'Muhammad Islam Khan',NULL,NULL,NULL,'0316-2051560',NULL,'Johar Chowrangi','PIB Colony Karachi Center',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(27,1,'27','Saad Younus','',NULL,'',NULL,'Muhammad Younus Khan',NULL,NULL,NULL,'0300-3078080',NULL,'Johar Chowrangi','3 Star KK mart Noman Avenue Johar Mor',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(28,1,'28','Sohaib Younus','',NULL,'',NULL,'Muhammad Younus Khan',NULL,NULL,NULL,'0300-3078081',NULL,'Johar Chowrangi','3 Star KK mart Noman Avenue Johar Mor',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(29,1,'29','Zahid Haneef Khan','',NULL,'',NULL,'Haneef Khan',NULL,NULL,NULL,'0331-3366905',NULL,'Johar Chowrangi','G-62 Noman Avenue Johar Mor',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(30,1,'30','Naveed Chiragh','',NULL,'',NULL,'Chiragh Roshan',NULL,NULL,NULL,'0300-2443021',NULL,'Johar Chowrangi','E-24 Noman Avenue Johar Mor',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(31,1,'31','Junaid Saleem ','',NULL,'',NULL,'Muhammad Saleem',NULL,NULL,NULL,'0333-3083852',NULL,'Johar Chowrangi','B-43 Noman Avenue Johar Mor',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(32,1,'32','Abdul Majid ','',NULL,'',NULL,'Muhammad Saleem',NULL,NULL,NULL,'0305-3307705',NULL,'Johar Chowrangi','A-55 Noman Avenue Johar Mor',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(33,1,'33','Naimat Ali','',NULL,'',NULL,'Liaquat Ali',NULL,NULL,NULL,'0302-2858239',NULL,'Johar Chowrangi','Iqra Complex',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(34,1,'34','Muhammad Asif','',NULL,'',NULL,'Liaquat Ali',NULL,NULL,NULL,'0300-2519570',NULL,'Johar Chowrangi','Iqra Complex',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(35,1,'35','Shoukat Ali','',NULL,'',NULL,'Liaquat Ali',NULL,NULL,NULL,'0345-2757026',NULL,'Johar Chowrangi','Iqra Complex',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(36,1,'36','Abdul Qayoom','',NULL,'',NULL,'Abdul Hameed Khan',NULL,NULL,NULL,'0321-9252395',NULL,'Johar Chowrangi','Iqra Complex',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(37,1,'37','Muhammad Isalm','',NULL,'',NULL,'Abdul Qayoom',NULL,NULL,NULL,'0321-9252395',NULL,'Johar Chowrangi','Iqra Complex',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(38,1,'38','Engr. Aftab ','',NULL,'',NULL,'Muhammad Sabir',NULL,NULL,NULL,'0333-2665097',NULL,'Johar Chowrangi','Iqra Complex',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(39,1,'39','Muhammad Saleem','',NULL,'',NULL,'Yaseem Khan',NULL,NULL,NULL,'0301-3855909',NULL,'Johar Chowrangi','A-4 Naveed Banglows',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(40,1,'40','Muhammad Aamir Saleem','',NULL,'',NULL,'',NULL,NULL,NULL,'0333-2881282',NULL,'Johar Chowrangi','A-4 Naveed Banglows',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(41,1,'41','Gulrez Saleem ','',NULL,'',NULL,'',NULL,NULL,NULL,'0333-2881373',NULL,'Johar Chowrangi','A-4 Naveed Banglows',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(42,1,'42','Muhammad Naveed Khan','',NULL,'',NULL,'Muhammad Aslam Khan',NULL,NULL,NULL,'0331-3118802',NULL,'Johar Chowrangi','Naveed Banglows',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(43,1,'43','Dr. Imran','',NULL,'',NULL,'Haji Mehboob Ali',NULL,NULL,NULL,'0306-2212442',NULL,'Johar Chowrangi','B-42 Naveed Banglows',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(44,1,'44','Engr. Muhammad Ziaulhaq','',NULL,'',NULL,'',NULL,NULL,NULL,'0336-2807375',NULL,'Johar Chowrangi','B-42 Naveed Banglows',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(45,1,'45','Arshad Ali Khan','',NULL,'',NULL,'Shoukat Ali Khan',NULL,NULL,NULL,'0300-2729795',NULL,'Johar Chowrangi','B-306 Block 14 Ghultan-e-Johar',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(46,1,'46','Zaffar Ali Khan','',NULL,'',NULL,'Arshad Ali Khan',NULL,NULL,NULL,'0345-2120826',NULL,'Johar Chowrangi','B-306 Block 14 Ghultan-e-Johar',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(47,1,'47','Muhammad Naeem Khan','',NULL,'',NULL,'Taj Muhammad Khan',NULL,NULL,NULL,'0333-3010831',NULL,'Johar Chowrangi','B-308 Block 14 Ghultan-e-Johar',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(48,1,'48','Muhammad Hayat Khan','',NULL,'',NULL,'Muhammad Naeem Khan',NULL,NULL,NULL,'0331-2933678',NULL,'Johar Chowrangi','B-308 Block 14 Ghultan-e-Johar',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(49,1,'49','Yaseen Khan','',NULL,'',NULL,'Hasan Khan',NULL,NULL,NULL,'0334-3148534',NULL,'Johar Chowrangi','B-150 Block 14 Ghultan-e-Johar',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(50,1,'50','Humayoon Khan','',NULL,'',NULL,'Alam Ali Khan',NULL,NULL,NULL,'',NULL,'Johar Chowrangi','B-308 Block 14 Ghultan-e-Johar',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(51,1,'51','Engr. Hasan Ali','',NULL,'',NULL,'Shoukat Ali',NULL,NULL,NULL,'0321-2161456',NULL,'Johar Chowrangi','Zeeshan Super Luxury Apartments Flat#V-401 Ghulist',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(52,1,'52','Tahir Ahmed','',NULL,'',NULL,'Muhammd Yaseen Khan',NULL,NULL,NULL,'0300-3321325',NULL,'Johar Chowrangi','203/4 Sulaila Apartments Ghulistan-e-Johar',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(53,1,'53','Muhammad Islam Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0333-2506211',NULL,'Johar Chowrangi','405/4 Sulaila Apartments Ghulistan-e-Johar',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(54,1,'54','Sarfaraz Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0301-3800042',NULL,'Johar Chowrangi','303/4 Sulaila Apartments Ghulistan-e-Johar',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(55,1,'55','Asfand Iqbal','',NULL,'',NULL,'Muhammad Iqbal',NULL,NULL,NULL,'0334-2807490',NULL,'Johar Chowrangi','C 406 Sun Beem Apartments Kamran Chowrangi',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(56,1,'56','Muhammad Ahtesham','',NULL,'',NULL,'Muhammad Aslam',NULL,NULL,NULL,'0333-2981421',NULL,'Johar Chowrangi','',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(57,1,'57','Ahmed Faraz','',NULL,'',NULL,'Muhammd Yousuf',NULL,NULL,NULL,'0333-8724090',NULL,'Johar Chowrangi','A 104 Afnan Arcade Johar Chowrangi Block 15',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(58,1,'58','Ammar Husain','',NULL,'',NULL,'Abid Husain',NULL,NULL,NULL,'0333-299098',NULL,'Johar Chowrangi','Saluleela Aparments',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(59,1,'59','Hamza Zulfiquar','',NULL,'',NULL,'Zulfiquar Ali',NULL,NULL,NULL,'0300-3010890',NULL,'Johar Chowrangi','Faran Classic Apartments ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(60,1,'60','Hasnain Irshad','',NULL,'',NULL,'Irshad Ali',NULL,NULL,NULL,'0334-2805276',NULL,'Johar Chowrangi','Faran Classic Apartments ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(61,1,'61','Muhammad Awais','',NULL,'',NULL,'Muhammad Farooq',NULL,NULL,NULL,'0334-2815271',NULL,'Johar Chowrangi','E 16 Altamash Apartments',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(62,1,'62','Dr. Tahir','',NULL,'',NULL,'Yaseem Khan',NULL,NULL,NULL,'003538-38399887',NULL,'Johar Chowrangi','A 90 Warqs cooperative housing society Ghulistan-e',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(63,1,'63','Engr. Tariq','',NULL,'',NULL,'Yaseem Khan',NULL,NULL,NULL,'0334-3701229',NULL,'Johar Chowrangi','A 90 Warqs cooperative housing society Ghulistan-e',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(64,1,'64','Muhammad Talib','',NULL,'',NULL,'Yaseem Khan',NULL,NULL,NULL,'0332-3536422',NULL,'Johar Chowrangi','A 90 Warqs cooperative housing society Ghulistan-e',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(65,1,'65','Dr. Talha','',NULL,'',NULL,'Yaseem Khan',NULL,NULL,NULL,'0333-3346260',NULL,'Johar Chowrangi','A 90 Warqs cooperative housing society Ghulistan-e',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(66,1,'66','Muhammad Yaseen Khan','',NULL,'',NULL,'Azeem Ud Din Khan',NULL,NULL,NULL,'0334-3133056',NULL,'Johar Chowrangi','A 90 Warqs cooperative housing society Ghulistan-e',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(67,1,'67','Muhammad Khalid','',NULL,'',NULL,'Riasat Ali Khan',NULL,NULL,NULL,'0332-2357606',NULL,'Johar Chowrangi','Muneer Brigde view  ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(68,1,'68','Iftikhar Ali ','',NULL,'',NULL,'Hosiar Khan',NULL,NULL,NULL,'0333-2165610',NULL,'Johar Chowrangi','Flat # H-57 Floor 4th block H Altamash Complex',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(69,1,'69','Waqas Munawar','',NULL,'',NULL,'Munawar Ali Khan',NULL,NULL,NULL,'0340-0289877',NULL,'Johar Chowrangi','Flat # E-20 block E Altamash Complex',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(70,1,'70','Shoaib Munawer','',NULL,'',NULL,'Munawar Ali Khan',NULL,NULL,NULL,'0343-8012354',NULL,'Johar Chowrangi','Flat # H-6 block H Altamash Complex',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(71,1,'71','Muhammad Usman Khan','',NULL,'',NULL,'Munawar Ali Khan',NULL,NULL,NULL,'0333-3572405',NULL,'Johar Chowrangi','Flat # F-20 block F Altamash Complex',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(72,1,'72','Muhammad Noman','',NULL,'',NULL,'Muhammad Usman Khan',NULL,NULL,NULL,'0332-2122420',NULL,'Johar Chowrangi','Flat # F-21 block F Altamash Complex',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(73,1,'73','Muhammad Zubair Khan','',NULL,'',NULL,'Muhammad Usman Khan',NULL,NULL,NULL,'0332-7963840',NULL,'Johar Chowrangi','Flat # F-20 block F Altamash Complex',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(74,1,'74','Akber Ali','',NULL,'',NULL,'Jaffer Ali Khan',NULL,NULL,NULL,'0333-3961349',NULL,'Johar Chowrangi','F-816 block II Ghulstan-e-Johar',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(75,1,'75','Kashif Ali','',NULL,'',NULL,'Riasat Ali Khan',NULL,NULL,NULL,'0300-3063609',NULL,'Johar Chowrangi','Mutha Khan Ghot Block II Ghulistan-e-Johar',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(76,1,'76','Sarwar Khan','',NULL,'',NULL,'Natho Khan',NULL,NULL,NULL,'0331-3800645',NULL,'Johar Chowrangi','Mutha Khan Ghot Block II Ghulistan-e-Johar',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(77,1,'77','Muhammad Yousuf','',NULL,'',NULL,'Younus Khan',NULL,NULL,NULL,'0345-3210955',NULL,'Johar Chowrangi','Mutha Khan Ghot Block II Ghulistan-e-Johar',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(78,1,'78','Muhammad Younus','',NULL,'',NULL,'Hayat Muhammad Khan',NULL,NULL,NULL,'0334-4174597',NULL,'Johar Chowrangi','Mutha Khan Ghot Block II Ghulistan-e-Johar',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(79,1,'79','Saleem Ahmed','',NULL,'',NULL,'Asghar Ali Khan',NULL,NULL,NULL,'0336-8037102',NULL,'Johar Chowrangi','Mutha Khan Ghot Block II Ghulistan-e-Johar',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(80,1,'80','Saleem Ahmed','',NULL,'',NULL,'Nisar Ahmed',NULL,NULL,NULL,'0321-3300039',NULL,'Johar Chowrangi','Mutha Khan Ghot Block II Ghulistan-e-Johar',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(81,1,'81','Irshad Ahmed','',NULL,'',NULL,'Hasan Khan',NULL,NULL,NULL,'0331-3882145',NULL,'Johar Chowrangi','Mutha Khan Ghot Block II Ghulistan-e-Johar',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(82,1,'82','Abrar Ahmed ','',NULL,'',NULL,'Arshad Ali Khan',NULL,NULL,NULL,'0332-2552643',NULL,'Johar Chowrangi','Mutha Khan Ghot Block II Ghulistan-e-Johar',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(83,1,'83','Muhammad Rafiq','',NULL,'',NULL,'Sobedar Yamin Khan',NULL,NULL,NULL,'0333-3894686',NULL,'Johar Chowrangi','Yasmeen Tower Block 2',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(84,1,'84','Muhammad Ayoub','',NULL,'',NULL,'Abdul Razzaq Khan',NULL,NULL,NULL,'0333-3037950',NULL,'Johar Chowrangi','Ghulistan-e-Johar Block 2',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(85,1,'85','Khalid Saleem Khan','',NULL,'',NULL,'Muhammad Saleem',NULL,NULL,NULL,'0311-3209025',NULL,'Johar Chowrangi','Ghulistan-e-Johar Block 2',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(86,1,'86','Rashid Ahmed Khan','',NULL,'',NULL,'Muhammad Saleem',NULL,NULL,NULL,'0312-8862419',NULL,'Johar Chowrangi','Mutha Khan Ghot Block II Ghulistan-e-Johar',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(87,1,'87','Dr. Sultan','',NULL,'',NULL,'Sarwar Khan',NULL,NULL,NULL,'0333-2767605',NULL,'Johar Chowrangi','Mutha Khan Ghot Block II Ghulistan-e-Johar',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(88,1,'88','Engr. Faisal ur Rehman','',NULL,'',NULL,'Sarwar Khan',NULL,NULL,NULL,'0331-3800645',NULL,'Johar Chowrangi','Mutha Khan Ghot Block II Ghulistan-e-Johar',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(89,1,'89','Muhammad Akram Khan','',NULL,'',NULL,'',NULL,NULL,NULL,'0344-2115335',NULL,'Johar Chowrangi','Mutha Khan Ghot Block II Ghulistan-e-Johar',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(90,1,'90','Muhammad Anwer Nadeem','',NULL,'',NULL,'',NULL,NULL,NULL,'0321-2212020',NULL,'Johar Chowrangi','B-157 Ghulistan-e-Johar Block 12',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(91,1,'91','Nawab Ali','',NULL,'',NULL,'',NULL,NULL,NULL,'0334-3286312',NULL,'Johar Chowrangi','B-213 Block 12 Ghulistan-e-Johar',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(92,1,'92','Jahangir Ali','',NULL,'',NULL,'Nawab Ali',NULL,NULL,NULL,'0346-3237687',NULL,'Johar Chowrangi','B-213 Block 12 Ghulistan-e-Johar',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(93,1,'93','Hasnain Ali','',NULL,'',NULL,'Nawab Ali',NULL,NULL,NULL,'0335-7583195',NULL,'Johar Chowrangi','B-213 Block 12 Ghulistan-e-Johar',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(94,1,'94','Shamshad Ali Khan','',NULL,'',NULL,'Haji Munshi Khan',NULL,NULL,NULL,'0302-3009994',NULL,'Johar Chowrangi','C-59 Block 9 PIA Society ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(95,1,'95','Zahid Shamshad','',NULL,'',NULL,'Shamshad Ali Khan',NULL,NULL,NULL,'0334-2226280',NULL,'Johar Chowrangi','C-59 Block 9 PIA Society ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(96,1,'96','Altaf Ahmed','',NULL,'',NULL,'Ghulam Nabi Khan',NULL,NULL,NULL,'0301-2215400',NULL,'Johar Chowrangi','A-12 Block 9 PIA Society ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(97,1,'97','Liaquat Ali','',NULL,'',NULL,'Behroz Khan',NULL,NULL,NULL,'0332-3202541',NULL,'Johar Chowrangi','A-81 Block 9 PIA Society ',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(98,1,'98','Engr. Rasheed Ahmed Khan','',NULL,'',NULL,'Muhammad Younus Khan',NULL,NULL,NULL,'0333-2289836',NULL,'Johar Chowrangi','H# A-147 Ghulistan-e-Johar Block 13',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0),
(99,1,'99','Muhammad Mohsin Khan','',NULL,'',NULL,'Rasheed Ahmed Khan',NULL,NULL,NULL,'0333-2289836',NULL,'Johar Chowrangi','H# A-147 Ghulistan-e-Johar Block 13',NULL,NULL,'Sindh','Karachi',NULL,NULL,NULL,'HF Basic Info missing ',0);

/*Table structure for table `provance` */

DROP TABLE IF EXISTS `provance`;

CREATE TABLE `provance` (
  `ProvID` int(7) NOT NULL AUTO_INCREMENT,
  `ProvName` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ProvID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `provance` */

insert  into `provance`(`ProvID`,`ProvName`) values 
(1,'KPK'),
(2,'FATA'),
(3,'PUNJAB'),
(4,'SINDH'),
(5,'BALOCHISTAN'),
(6,'ISLAMABAD'),
(7,'New');

/*Table structure for table `relationshipmatrix` */

DROP TABLE IF EXISTS `relationshipmatrix`;

CREATE TABLE `relationshipmatrix` (
  `RelationID` int(5) NOT NULL AUTO_INCREMENT,
  `Relationship` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`RelationID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `relationshipmatrix` */

insert  into `relationshipmatrix`(`RelationID`,`Relationship`) values 
(1,'Head of Family '),
(2,'Husband/Wife'),
(3,'Son/Daughter'),
(4,'SonInLaw/DaughterInLaw'),
(5,'Nephew/Niece'),
(6,'Father/Mother'),
(7,'Brother/Sister'),
(8,'Other Relatives'),
(9,'Not Relative');

/*Table structure for table `tbl_last_login` */

DROP TABLE IF EXISTS `tbl_last_login`;

CREATE TABLE `tbl_last_login` (
  `id` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `sessionData` varchar(6144) DEFAULT NULL,
  `machineIp` varchar(3072) DEFAULT NULL,
  `userAgent` varchar(384) DEFAULT NULL,
  `agentString` varchar(3072) DEFAULT NULL,
  `platform` varchar(384) DEFAULT NULL,
  `createdDtm` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_last_login` */

insert  into `tbl_last_login`(`id`,`userId`,`sessionData`,`machineIp`,`userAgent`,`agentString`,`platform`,`createdDtm`) values 
(1,1,'{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}','::1','Chrome 69.0.3497.100','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','Windows 8.1','2018-10-02 14:46:54'),
(2,1,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"ARTT Owners\"}','::1','Chrome 69.0.3497.100','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','Windows 8.1','2018-10-02 21:19:19'),
(3,9,'{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Ali\"}','::1','Chrome 69.0.3497.100','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','Windows 8.1','2018-10-02 21:20:17'),
(4,1,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"ARTT Owners\"}','::1','Chrome 69.0.3497.100','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','Windows 8.1','2018-10-02 21:21:09'),
(5,11,'{\"role\":\"4\",\"roleText\":\"Student\",\"name\":\"Saif\"}','::1','Chrome 69.0.3497.100','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','Windows 8.1','2018-10-02 21:38:01'),
(6,1,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"ARTT Owners\"}','::1','Chrome 69.0.3497.100','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','Windows 8.1','2018-10-02 21:39:38'),
(7,13,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tanoli\"}','::1','Chrome 69.0.3497.100','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','Windows 8.1','2018-10-02 21:47:18'),
(8,14,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Ahmed Raza \"}','::1','Chrome 69.0.3497.100','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','Windows 8.1','2018-10-02 21:48:08'),
(9,15,'{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Rehan\"}','::1','Chrome 69.0.3497.100','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','Windows 8.1','2018-10-02 21:51:20'),
(10,14,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Ahmed Raza \"}','::1','Chrome 69.0.3497.100','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','Windows 8.1','2018-10-02 21:51:49'),
(11,14,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Ahmed Raza \"}','::1','Chrome 69.0.3497.100','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','Windows 8.1','2018-10-02 21:57:16'),
(12,18,'{\"role\":\"5\",\"roleText\":\"Teacher\",\"name\":\"Arsalan Ali\"}','::1','Chrome 69.0.3497.100','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','Windows 8.1','2018-10-02 21:58:15'),
(13,13,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tanoli\"}','::1','Chrome 69.0.3497.100','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','Windows 8.1','2018-10-03 11:35:39'),
(14,14,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Ahmed Raza \"}','::1','Chrome 69.0.3497.100','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','Windows 8.1','2018-10-03 12:02:49'),
(15,14,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Ahmed Raza \"}','::1','Chrome 69.0.3497.100','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','Windows 8.1','2018-10-03 12:04:58'),
(16,9,'{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Ali\"}','::1','Chrome 69.0.3497.100','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','Windows 8.1','2018-10-03 12:05:54'),
(17,15,'{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Rehan\"}','::1','Chrome 69.0.3497.100','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','Windows 8.1','2018-10-03 12:08:51'),
(18,15,'{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Rehan\"}','::1','Chrome 69.0.3497.100','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','Windows 8.1','2018-10-03 12:14:08'),
(19,18,'{\"role\":\"5\",\"roleText\":\"Teacher\",\"name\":\"Arsalan Ali\"}','::1','Chrome 69.0.3497.100','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','Windows 8.1','2018-10-03 12:35:08'),
(20,18,'{\"role\":\"5\",\"roleText\":\"Teacher\",\"name\":\"Arsalan Ali\"}','::1','Chrome 69.0.3497.100','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','Windows 8.1','2018-10-03 14:54:16'),
(21,9,'{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Ali\"}','::1','Chrome 69.0.3497.100','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','Windows 8.1','2018-10-03 15:01:31'),
(22,13,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tanoli\"}','::1','Chrome 69.0.3497.100','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','Windows 8.1','2018-10-03 16:32:03'),
(23,13,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tanoli\"}','::1','Chrome 69.0.3497.100','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','Windows 8.1','2018-10-03 16:35:47'),
(24,2,'{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Bsck Office Mgr.\"}','::1','Chrome 69.0.3497.100','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','Windows 8.1','2018-10-03 16:58:27'),
(25,2,'{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Bsck Office Mgr.\"}','::1','Chrome 69.0.3497.100','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','Windows 8.1','2018-10-03 16:58:47'),
(26,13,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tanoli\"}','::1','Chrome 69.0.3497.100','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','Windows 8.1','2018-10-03 17:08:41'),
(27,2,'{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Bsck Office Mgr.\"}','::1','Chrome 69.0.3497.100','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','Windows 8.1','2018-10-03 17:09:42'),
(28,13,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tanoli\"}','::1','Chrome 69.0.3497.100','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','Windows 8.1','2018-10-03 17:09:50'),
(29,13,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tanoli\"}','::1','Chrome 69.0.3497.100','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','Windows 8.1','2018-10-03 17:10:12'),
(30,13,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tanoli\"}','::1','Chrome 69.0.3497.100','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','Windows 8.1','2018-10-03 17:13:52'),
(31,15,'{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Rehan\"}','::1','Chrome 69.0.3497.100','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','Windows 8.1','2018-10-03 17:14:11'),
(32,13,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tanoli\"}','::1','Chrome 69.0.3497.100','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','Windows 8.1','2018-10-03 17:18:53'),
(33,13,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tanoli\"}','::1','Chrome 69.0.3497.100','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','Windows 8.1','2018-10-03 17:25:56'),
(34,13,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tanoli\"}','::1','Chrome 69.0.3497.100','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','Windows 8.1','2018-10-03 17:26:45'),
(35,13,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tanoli\"}','::1','Chrome 69.0.3497.100','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','Windows 8.1','2018-10-04 09:57:39'),
(36,15,'{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Rehan\"}','::1','Chrome 69.0.3497.100','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','Windows 8.1','2018-10-04 12:43:41'),
(37,13,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tanoli\"}','::1','Chrome 69.0.3497.100','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','Windows 8.1','2018-10-04 12:49:07'),
(38,13,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tanoli\"}','::1','Chrome 69.0.3497.100','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','Windows 10','2018-10-16 19:55:07'),
(39,13,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tanoli\"}','::1','Chrome 69.0.3497.100','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','Windows 10','2018-10-17 11:07:13'),
(NULL,15,'{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Rehan\"}','::1','Chrome 69.0.3497.100','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','Windows 10',NULL),
(NULL,13,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tanoli\"}','::1','Chrome 69.0.3497.100','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','Windows 10',NULL),
(NULL,15,'{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Rehan\"}','::1','Chrome 69.0.3497.100','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','Windows 10',NULL),
(NULL,13,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tanoli\"}','::1','Chrome 69.0.3497.100','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','Windows 10',NULL),
(NULL,13,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tanoli\"}','::1','Chrome 69.0.3497.100','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','Windows 10',NULL),
(NULL,13,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tanoli\"}','::1','Chrome 69.0.3497.100','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','Windows 10',NULL),
(NULL,13,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tanoli\"}','::1','Chrome 69.0.3497.100','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','Windows 10',NULL),
(NULL,13,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tanoli\"}','::1','Chrome 69.0.3497.100','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','Windows 10',NULL),
(NULL,13,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tanoli\"}','::1','Chrome 69.0.3497.100','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','Windows 10',NULL),
(NULL,13,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tanoli\"}','::1','Chrome 69.0.3497.100','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','Windows 10',NULL),
(NULL,13,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tanoli\"}','::1','Chrome 69.0.3497.100','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','Windows 10',NULL),
(NULL,13,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tanoli\"}','::1','Chrome 69.0.3497.100','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','Windows 10',NULL),
(NULL,13,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tanoli\"}','::1','Chrome 69.0.3497.100','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','Windows 10',NULL),
(NULL,13,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tanoli\"}','::1','Chrome 69.0.3497.100','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','Windows 10',NULL),
(NULL,13,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tanoli\"}','::1','Chrome 69.0.3497.100','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','Windows 10',NULL),
(NULL,13,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tanoli\"}','::1','Chrome 69.0.3497.100','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','Windows 10',NULL),
(NULL,13,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tanoli\"}','::1','Chrome 69.0.3497.100','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','Windows 10',NULL),
(NULL,13,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tanoli\"}','::1','Chrome 69.0.3497.100','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','Windows 10',NULL),
(NULL,13,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tanoli\"}','::1','Chrome 69.0.3497.100','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','Windows 8.1',NULL),
(NULL,1,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tanoli\"}','::1','Chrome 69.0.3497.100','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','Windows 8.1',NULL),
(NULL,2,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Ahmed Raza\"}','::1','Chrome 69.0.3497.100','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','Windows 8.1',NULL),
(NULL,15,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Rehan\"}','::1','Chrome 69.0.3497.100','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','Windows 8.1',NULL),
(NULL,15,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Rehan\"}','::1','Chrome 69.0.3497.100','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','Windows 7',NULL),
(NULL,1,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tanoli\"}','::1','Chrome 69.0.3497.100','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','Windows 7',NULL),
(NULL,1,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tanoli\"}','::1','Chrome 69.0.3497.100','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','Windows 7',NULL),
(NULL,1,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tanoli\"}','::1','Chrome 69.0.3497.100','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','Windows 7',NULL),
(NULL,1,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tanoli\"}','::1','Chrome 69.0.3497.100','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','Windows 7',NULL),
(NULL,1,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tanoli\"}','::1','Chrome 69.0.3497.100','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','Windows 7',NULL),
(NULL,1,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tanoli\"}','::1','Chrome 70.0.3538.77','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','Windows 7',NULL),
(NULL,1,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tanoli\"}','::1','Firefox 63.0','Mozilla/5.0 (Windows NT 6.1; rv:63.0) Gecko/20100101 Firefox/63.0','Windows 7',NULL),
(NULL,1,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tanoli\"}','::1','Firefox 63.0','Mozilla/5.0 (Windows NT 6.1; rv:63.0) Gecko/20100101 Firefox/63.0','Windows 7',NULL),
(NULL,1,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tonyo\"}','::1','Firefox 63.0','Mozilla/5.0 (Windows NT 6.1; rv:63.0) Gecko/20100101 Firefox/63.0','Windows 7',NULL),
(NULL,1,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tunyo\"}','::1','Firefox 63.0','Mozilla/5.0 (Windows NT 6.1; rv:63.0) Gecko/20100101 Firefox/63.0','Windows 7',NULL),
(NULL,1,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tunyo\"}','::1','Firefox 63.0','Mozilla/5.0 (Windows NT 6.1; rv:63.0) Gecko/20100101 Firefox/63.0','Windows 7',NULL),
(NULL,1,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tunyo\"}','::1','Firefox 63.0','Mozilla/5.0 (Windows NT 6.1; rv:63.0) Gecko/20100101 Firefox/63.0','Windows 7',NULL),
(NULL,1,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tunyo\"}','::1','Firefox 63.0','Mozilla/5.0 (Windows NT 6.1; rv:63.0) Gecko/20100101 Firefox/63.0','Windows 7',NULL),
(NULL,1,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tunyo\"}','::1','Firefox 63.0','Mozilla/5.0 (Windows NT 6.1; rv:63.0) Gecko/20100101 Firefox/63.0','Windows 7',NULL),
(NULL,1,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tunyo\"}','::1','Firefox 63.0','Mozilla/5.0 (Windows NT 6.1; rv:63.0) Gecko/20100101 Firefox/63.0','Windows 7',NULL),
(NULL,1,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tunyo\"}','::1','Firefox 63.0','Mozilla/5.0 (Windows NT 6.1; rv:63.0) Gecko/20100101 Firefox/63.0','Windows 7',NULL),
(NULL,1,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tunyo\"}','::1','Firefox 63.0','Mozilla/5.0 (Windows NT 6.1; rv:63.0) Gecko/20100101 Firefox/63.0','Windows 7',NULL),
(NULL,1,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tunyo\"}','::1','Chrome 70.0.3538.77','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','Windows 8.1',NULL),
(NULL,1,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tunyo\"}','::1','Chrome 70.0.3538.77','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','Windows 8.1',NULL),
(NULL,1,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tunyo\"}','::1','Chrome 70.0.3538.102','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36','Windows 8.1',NULL),
(NULL,1,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tunyo\"}','::1','Chrome 70.0.3538.102','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36','Windows 8.1',NULL),
(NULL,1,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tunyo\"}','::1','Chrome 70.0.3538.102','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36','Windows 8.1',NULL),
(NULL,1,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tunyo\"}','::1','Chrome 70.0.3538.102','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36','Windows 8.1',NULL),
(NULL,1,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tunyo\"}','::1','Chrome 70.0.3538.102','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36','Windows 7',NULL),
(NULL,1,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tunyo\"}','::1','Chrome 70.0.3538.102','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36','Windows 7',NULL),
(NULL,1,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tunyo\"}','::1','Chrome 70.0.3538.110','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36','Windows 7',NULL),
(NULL,1,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tunyo\"}','::1','Chrome 70.0.3538.110','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36','Windows 10',NULL),
(NULL,1,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tunyo\"}','::1','Chrome 70.0.3538.110','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36','Windows 10',NULL),
(NULL,1,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tunyo\"}','::1','Chrome 70.0.3538.110','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36','Windows 10',NULL),
(NULL,1,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tunyo\"}','::1','Chrome 70.0.3538.110','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36','Windows 10',NULL),
(NULL,1,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tunyo\"}','::1','Chrome 70.0.3538.110','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36','Windows 7',NULL),
(NULL,1,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tunyo\"}','::1','Chrome 70.0.3538.110','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36','Windows 7',NULL),
(NULL,1,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tunyo\"}','::1','Chrome 70.0.3538.110','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36','Windows 7',NULL),
(NULL,1,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tunyo\"}','::1','Chrome 70.0.3538.110','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36','Windows 7',NULL),
(NULL,1,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tunyo\"}','::1','Chrome 71.0.3578.98','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','Windows 7',NULL),
(NULL,1,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tunyo\"}','::1','Chrome 71.0.3578.98','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','Windows 7',NULL),
(NULL,1,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tunyo\"}','::1','Chrome 71.0.3578.98','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','Windows 7',NULL),
(NULL,1,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tunyo\"}','::1','Chrome 71.0.3578.98','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','Windows 7',NULL),
(NULL,1,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tunyo\"}','::1','Chrome 71.0.3578.98','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','Windows 7',NULL),
(NULL,1,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tunyo\"}','::1','Chrome 71.0.3578.98','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','Windows 7',NULL),
(NULL,1,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tunyo\"}','::1','Chrome 71.0.3578.98','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','Windows 7',NULL),
(NULL,1,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tunyo\"}','::1','Chrome 71.0.3578.98','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','Windows 7',NULL),
(NULL,1,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tunyo\"}','::1','Chrome 71.0.3578.98','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','Windows 7',NULL),
(NULL,1,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tunyo\"}','::1','Chrome 71.0.3578.98','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','Windows 7',NULL),
(NULL,1,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tunyo\"}','::1','Chrome 71.0.3578.98','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','Windows 7',NULL),
(NULL,1,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tunyo\"}','::1','Chrome 71.0.3578.98','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','Windows 7',NULL),
(NULL,1,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tunyo\"}','::1','Chrome 71.0.3578.98','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','Windows 7',NULL),
(NULL,2,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Ahmed Raza\"}','::1','Chrome 71.0.3578.98','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','Windows 10',NULL),
(NULL,1,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tunyo\"}','::1','Chrome 71.0.3578.98','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','Windows 10',NULL),
(NULL,1,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tunyo\"}','::1','Chrome 71.0.3578.98','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','Windows 10',NULL),
(NULL,10,'{\"role\":\"4\",\"roleText\":\"Student\",\"name\":\"Ansar\"}','::1','Chrome 71.0.3578.98','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','Windows 10',NULL),
(NULL,1,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tunyo\"}','::1','Chrome 71.0.3578.98','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','Windows 10',NULL),
(NULL,1,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tunyo\"}','::1','Chrome 71.0.3578.98','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','Windows 10',NULL),
(NULL,30,'{\"role\":\"3\",\"roleText\":\"Employee\",\"name\":\"Test\"}','::1','Chrome 71.0.3578.98','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','Windows 10',NULL),
(NULL,1,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tunyo\"}','::1','Chrome 71.0.3578.98','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','Windows 10',NULL),
(NULL,30,'{\"role\":\"3\",\"roleText\":\"Employee\",\"name\":\"Test\"}','::1','Chrome 71.0.3578.98','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','Windows 10',NULL),
(NULL,1,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tunyo\"}','::1','Chrome 71.0.3578.98','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','Windows 10',NULL),
(NULL,1,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tunyo\"}','::1','Chrome 71.0.3578.98','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','Windows 10',NULL),
(NULL,43,'{\"role\":\"3\",\"roleText\":\"Employee\",\"name\":\"Dfdsf\"}','::1','Chrome 71.0.3578.98','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','Windows 10',NULL),
(NULL,2,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Ahmed Raza\"}','::1','Chrome 71.0.3578.98','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','Windows 10',NULL),
(NULL,44,'{\"role\":\"3\",\"roleText\":\"Employee\",\"name\":\"Test 4554\"}','::1','Chrome 71.0.3578.98','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','Windows 10',NULL),
(NULL,1,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tunyo\"}','::1','Chrome 71.0.3578.98','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','Windows 10',NULL),
(NULL,1,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tunyo\"}','::1','Chrome 71.0.3578.98','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','Windows 10',NULL),
(NULL,1,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tunyo\"}','::1','Chrome 71.0.3578.98','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','Windows 10',NULL),
(NULL,2,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Ahmed Raza\"}','::1','Chrome 71.0.3578.98','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','Windows 10',NULL),
(NULL,1,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tunyo\"}','::1','Chrome 71.0.3578.98','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','Windows 10',NULL),
(NULL,1,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tunyo\"}','::1','Chrome 71.0.3578.98','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','Windows 10',NULL),
(NULL,1,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tunyo\"}','::1','Chrome 71.0.3578.98','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','Windows 10',NULL),
(NULL,1,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tunyo\"}','::1','Chrome 71.0.3578.98','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','Windows 10',NULL),
(NULL,1,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tunyo\"}','::1','Chrome 71.0.3578.98','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','Windows 10',NULL),
(NULL,1,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tunyo\"}','::1','Chrome 71.0.3578.98','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','Windows 10',NULL),
(NULL,1,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tunyo\"}','::1','Chrome 71.0.3578.98','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','Windows 10',NULL),
(NULL,1,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tunyo\"}','::1','Chrome 71.0.3578.98','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','Windows 10',NULL),
(NULL,1,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tunyo\"}','::1','Chrome 71.0.3578.98','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','Windows 10',NULL),
(NULL,1,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tunyo\"}','::1','Chrome 71.0.3578.98','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','Windows 10',NULL),
(NULL,1,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tunyo\"}','::1','Chrome 71.0.3578.98','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','Windows 10',NULL),
(NULL,1,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tunyo\"}','::1','Chrome 71.0.3578.98','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','Windows 10',NULL),
(NULL,1,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tunyo\"}','::1','Chrome 71.0.3578.98','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','Windows 10',NULL),
(NULL,1,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tunyo\"}','::1','Chrome 71.0.3578.98','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','Windows 10',NULL),
(NULL,1,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tunyo\"}','::1','Chrome 71.0.3578.98','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','Windows 10',NULL),
(NULL,1,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tunyo\"}','::1','Chrome 71.0.3578.98','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','Windows 10',NULL),
(NULL,1,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tunyo\"}','::1','Chrome 71.0.3578.98','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','Windows 10',NULL),
(NULL,1,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tunyo\"}','::1','Chrome 71.0.3578.98','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','Windows 10',NULL),
(NULL,1,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tunyo\"}','::1','Chrome 71.0.3578.98','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','Windows 10',NULL),
(NULL,1,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tunyo\"}','::1','Chrome 71.0.3578.98','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','Windows 10',NULL),
(NULL,1,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tunyo\"}','::1','Chrome 71.0.3578.98','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','Windows 10',NULL),
(NULL,1,'{\"role\":\"1\",\"roleText\":\"ARTT Owners\",\"name\":\"Tariq Tunyo\"}','::1','Chrome 71.0.3578.98','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','Windows 10',NULL);

/*Table structure for table `tbl_reset_password` */

DROP TABLE IF EXISTS `tbl_reset_password`;

CREATE TABLE `tbl_reset_password` (
  `id` bigint(20) DEFAULT NULL,
  `email` varchar(384) DEFAULT NULL,
  `activation_id` varchar(96) DEFAULT NULL,
  `agent` varchar(1536) DEFAULT NULL,
  `client_ip` varchar(96) DEFAULT NULL,
  `isDeleted` tinyint(4) DEFAULT NULL,
  `createdBy` bigint(20) DEFAULT NULL,
  `createdDtm` datetime DEFAULT NULL,
  `updatedBy` bigint(20) DEFAULT NULL,
  `updatedDtm` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_reset_password` */

insert  into `tbl_reset_password`(`id`,`email`,`activation_id`,`agent`,`client_ip`,`isDeleted`,`createdBy`,`createdDtm`,`updatedBy`,`updatedDtm`) values 
(1,'admin@example.com','hVJbqGLTdn0ryag','Chrome 69.0.3497.100','::1',0,1,'2018-10-02 18:18:56',NULL,NULL);

/*Table structure for table `tbl_roles` */

DROP TABLE IF EXISTS `tbl_roles`;

CREATE TABLE `tbl_roles` (
  `roleId` tinyint(4) DEFAULT NULL,
  `role` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_roles` */

insert  into `tbl_roles`(`roleId`,`role`) values 
(1,'ARTT Owners'),
(2,'Manager'),
(3,'Employee'),
(4,'Student'),
(5,'Teacher'),
(6,'Accountant'),
(7,'Staff');

/*Table structure for table `tbl_users` */

DROP TABLE IF EXISTS `tbl_users`;

CREATE TABLE `tbl_users` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(384) DEFAULT NULL,
  `password` varchar(384) DEFAULT NULL,
  `name` varchar(384) DEFAULT NULL,
  `mobile` varchar(60) DEFAULT NULL,
  `roleId` tinyint(4) DEFAULT NULL,
  `isDeleted` tinyint(4) DEFAULT NULL,
  `createdBy` int(11) DEFAULT NULL,
  `createdDtm` datetime DEFAULT NULL,
  `updatedBy` int(11) DEFAULT NULL,
  `updatedDtm` datetime DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_users` */

insert  into `tbl_users`(`userId`,`email`,`password`,`name`,`mobile`,`roleId`,`isDeleted`,`createdBy`,`createdDtm`,`updatedBy`,`updatedDtm`) values 
(1,'tt@artt.com','$2y$10$NrmwkXQhclGMSs0l8gZIAumOnnFxwcpKhCdN5FHvsxp1YXwQjiq82','Tariq Tunyo','0333221171',1,0,1,'2018-10-02 18:57:59',1,'2018-11-01 06:19:14'),
(2,'ar@artt.com','$2y$10$NrmwkXQhclGMSs0l8gZIAumOnnFxwcpKhCdN5FHvsxp1YXwQjiq82','Ahmed Raza','0333221171',1,0,1,'2018-10-02 18:57:59',13,'2018-10-03 14:26:03'),
(9,'ali@gmail.com','$2y$10$874OhehAwpC/1ilVCgyZqejlwMx9i.Od8NSYgJeXVgOYyTcY3KeNu','Ali','0333221171',2,0,1,'2018-10-02 11:51:32',1,'2018-10-02 18:34:54'),
(10,'ansar@artt.com','$2y$10$NrmwkXQhclGMSs0l8gZIAumOnnFxwcpKhCdN5FHvsxp1YXwQjiq82','Ansar','0333221171',4,0,1,'2018-10-02 11:53:31',NULL,NULL),
(11,'saif@gmail.com','$2y$10$nV0Esd1cLq3I4Ubi0isxIejwtYYU4FCRJmYgVto2ayVXBXn9IXESm','Saif','0333221171',4,0,1,'2018-10-02 18:37:12',11,'2018-10-02 18:38:27'),
(15,'rehan@artt.com','$2y$10$a/DiXlblQsColAc9PGGZCOaDB2szWITNKQnR.5VobZ3cvs.e0mQNS','Rehan','0333221171',1,0,14,'2018-10-02 18:51:07',NULL,NULL),
(16,'khan@artt.com','$2y$10$CajF2pkFrHl5EDvdq8fWeOJeVR1qFYf7mAzTXY04g1ohCPWZ/zD0y','Khan','0333221171',3,0,14,'2018-10-02 18:54:03',NULL,NULL),
(17,'aslam@artt.com','$2y$10$boUmqwY437LsveZIfKSwFurJ/KykkY0ARi8kW5f/IMWLP9H5yGy2C','Aslam','0333221171',4,0,14,'2018-10-02 18:54:48',NULL,NULL),
(18,'arsalan@artt.com','$2y$10$CKZUOhn5Oo277lxgk.Ov1OTGmV8noZv1CGy0rBNO.DMj.4wNmtlrS','Arsalan Ali','0333221171',5,0,14,'2018-10-02 18:57:59',13,'2018-10-03 14:26:03'),
(19,'sak@gmail.com','$2y$10$Pt36SkrfjLxpFWKYg6C8lO44ky3hWqRZQroUvWd3xoCFy.dg0tumi','Admin','0300323238',2,NULL,15,'2018-10-29 09:56:55',NULL,NULL),
(20,'mf.faisal300@gmail.com','$2y$10$9l9SOsLmxqncbMzZvl9AMu6qtA8pH/f4OpqR7AU/s6Jlk8MoFoiu.','Test','0345307720',3,NULL,1,'2019-02-02 09:39:15',NULL,NULL),
(30,'test@gmail.com','$2y$10$vPl46JQ9efcrHDtxvMIzouaY1MqnqPePj6WLATFwoHqSpuLO6ncYe','Test','0345307720',3,0,1,'2019-02-02 09:41:13',NULL,NULL),
(42,'emp@artt.com','$2y$10$DfI4aLe1s9UKtfc4QaE2lum7uxfCJy4L6jGFn6cmdnVUo8rfnyD56','Test Emp','0345307755',3,NULL,1,'2019-02-04 07:13:56',NULL,NULL),
(43,'erwer@fsdg.com','$2y$10$KZbBwGj4kcfdovE2wzXFY.jUN29fFbMOkxQjigYTIN3SSWnC.Dcqa','Dfdsf','0345307720',3,0,1,'2019-02-04 07:20:03',NULL,NULL),
(44,'teef@jjjj.com','$2y$10$gW0svnK./UMhGtMtmDcz/.vYs56WLksT7WrJ7JXrKjGPHGe4.Ac4m','Test 4554','0345307720',3,0,2,'2019-02-04 07:23:13',NULL,NULL);

/*Table structure for table `tehsil` */

DROP TABLE IF EXISTS `tehsil`;

CREATE TABLE `tehsil` (
  `ID` int(5) DEFAULT NULL,
  `ProvID` int(5) DEFAULT NULL,
  `DivisionID` int(5) DEFAULT NULL,
  `DistrictID` int(5) DEFAULT NULL,
  `TehsilID` int(7) DEFAULT NULL,
  `TehsilName` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tehsil` */

insert  into `tehsil`(`ID`,`ProvID`,`DivisionID`,`DistrictID`,`TehsilID`,`TehsilName`) values 
(1,1,3,1,1,'CHITRAL'),
(2,1,3,1,2,'MASTUJ'),
(3,1,3,2,1,'DIR'),
(4,1,3,2,2,'SHARINGAL'),
(5,1,3,2,3,'WARI'),
(6,1,3,3,1,'ADENZAI'),
(7,1,3,3,2,'LAL QILA'),
(8,1,3,3,3,'SAMARBAGH(BARWA)'),
(9,1,3,3,4,'TEMERGARA'),
(10,1,3,4,1,'BABUZAI(SWAT)'),
(11,1,3,4,2,'BARIKOT'),
(12,1,3,4,3,'BEHRAIN'),
(13,1,3,4,4,'CHARBAGH'),
(14,1,3,4,5,'KABAL'),
(15,1,3,4,2,'KHWAZA KHELA'),
(16,1,3,4,7,'MATTA SHAMZAI'),
(17,1,3,5,1,'ALPURI'),
(18,1,3,5,2,'BESHAM'),
(19,1,3,5,3,'PURAN'),
(20,1,3,6,1,'DAGGAR/BUNER'),
(21,1,3,6,2,'GAGRA'),
(22,1,3,6,3,'KHADOKHAIL'),
(23,1,3,6,4,'MANDAR'),
(24,1,3,7,1,'SAM RANIZAI'),
(25,1,3,7,2,'SWAT RANIZAI'),
(26,1,6,1,1,'PALAS'),
(27,1,6,1,2,'PATTAN'),
(28,1,6,1,3,'DASSU'),
(29,1,6,1,4,'KANDIA'),
(30,1,6,2,1,'BALAKOT'),
(31,1,6,2,2,'MANSEHRA'),
(32,1,6,2,3,'OGHI'),
(33,1,6,3,1,'JUDBA TEHSIL'),
(34,1,6,3,2,'KHANDER TEHSIL'),
(35,1,6,4,1,'BATAGRAM (BANNA)'),
(36,1,6,4,2,'ALLAI'),
(37,1,6,5,1,'ABBOTTABAD'),
(38,1,6,5,2,'HAVELIAN'),
(39,1,6,6,1,'GHAZI'),
(40,1,6,6,2,'HARIPUR'),
(41,1,5,1,1,'KATLANG'),
(42,1,5,1,2,'MARDAN'),
(43,1,5,1,3,'TAKHT BHAI'),
(44,1,5,2,1,'LAHOR'),
(45,1,5,2,2,'RAZAR'),
(46,1,5,2,3,'SWABI'),
(47,1,5,2,4,'TOPI'),
(48,1,1,1,1,'CHARSADDA'),
(49,1,1,1,2,'SHABQADAR'),
(50,1,1,1,3,'TANGI'),
(51,1,1,2,1,'PESHAWAR'),
(52,1,1,3,1,'JAHANGIRA'),
(53,1,1,3,2,'NOWSHERA'),
(54,1,1,3,3,'PABBI'),
(55,1,4,1,1,'KOHAT'),
(56,1,4,1,2,'LACHI'),
(57,1,4,2,1,'HANGU'),
(58,1,4,2,2,'TALL'),
(59,1,4,3,1,'BANDA DAUD SHAH'),
(60,1,4,3,2,'KARAK'),
(61,1,4,3,3,'TAKHT-E-NASRATI'),
(62,1,2,1,1,'BANNU'),
(63,1,2,1,2,'DOMEL'),
(64,1,2,2,1,'LAKKI MARWAT'),
(65,1,2,2,2,'NAURANG'),
(66,1,7,1,1,'DERA ISMAIL KHAN'),
(67,1,7,1,2,'DARABAN'),
(68,1,7,1,3,'PAHARPUR'),
(69,1,7,1,4,'KULACHI'),
(70,1,7,1,5,'PAROA'),
(71,1,7,2,1,'TANK'),
(72,3,3,1,1,'ATTOCK'),
(73,3,3,1,2,'FATEH JANG'),
(74,3,3,1,3,'HASSANABDAL'),
(75,3,3,1,4,'HAZRO'),
(76,3,3,1,5,'JAND'),
(77,3,3,1,2,'PINDI GHEB'),
(78,3,3,2,1,'GUJAR KHAN'),
(79,3,3,2,2,'KAHUTA'),
(80,3,3,2,3,'KALLAR SAYYEDAN'),
(81,3,3,2,4,'KOTLI SATTIAN'),
(82,3,3,2,5,'MURREE'),
(83,3,3,2,2,'RAWALPINDI'),
(84,3,3,2,7,'TAXILA'),
(85,3,3,3,1,'DINA'),
(86,3,3,3,2,'JHELUM'),
(87,3,3,3,3,'PIND DADAN KHAN'),
(88,3,3,3,4,'SOHAWA'),
(89,3,3,4,1,'CHAKWAL'),
(90,3,3,4,2,'CHOA SAIDAN SHAH'),
(91,3,3,4,3,'KALLAR KAHAR'),
(92,3,3,4,4,'LAWA'),
(93,3,3,4,5,'TALAGANG'),
(94,3,6,1,1,'BHALWAL'),
(95,3,6,1,2,'BHERA'),
(96,3,6,1,3,'KOT MOMIN'),
(97,3,6,1,4,'SAHIWAL'),
(98,3,6,1,5,'SARGODHA'),
(99,3,6,1,2,'SHAHPUR'),
(100,3,6,1,7,'SILLANWALI'),
(101,3,6,2,1,'BHAKKAR'),
(102,3,6,2,2,'DARYA KHAN'),
(103,3,6,2,3,'KALUR KOT'),
(104,3,6,2,4,'MANKERA'),
(105,3,6,3,1,'KHUSHAB'),
(106,3,6,3,2,'NAUSHEHRA'),
(107,3,6,3,3,'NURPUR'),
(108,3,6,3,4,'QUAIDABAD'),
(109,3,6,4,1,'ISA KHEL'),
(110,3,6,4,2,'MIANWALI'),
(111,3,6,4,3,'PIPLAN'),
(112,3,5,1,1,'CHAK JHUMRA'),
(113,3,5,1,2,'FAISALABAD CITY'),
(114,3,5,1,3,'FAISALABAD SADDAR'),
(115,3,5,1,4,'JARANWALA'),
(116,3,5,1,5,'SAMMUNDRI'),
(117,3,5,1,2,'TANDLIANWALA'),
(118,3,5,2,1,'18-HAZARI'),
(119,3,5,2,2,'AHMEDPUR SIAL'),
(120,3,5,2,3,'JHANG'),
(121,3,5,2,4,'SHORKOT'),
(122,3,5,3,1,'BHAWANA'),
(123,3,5,3,2,'CHINIOT'),
(124,3,5,3,3,'LALIAN'),
(125,3,5,4,1,'GOJRA'),
(126,3,5,4,2,'KAMALIA'),
(127,3,5,4,3,'PIR MAHAL'),
(128,3,5,4,4,'TOBA TEK SINGH'),
(129,3,1,1,1,'GUJRANWALA CITY'),
(130,3,1,1,2,'GUJRANWALA SADDAR'),
(131,3,1,1,3,'KAMOKE'),
(132,3,1,1,4,'NOWSHERA VIRKAN'),
(133,3,1,1,5,'WAZIRABAD'),
(134,3,1,2,1,'HAFIZABAD'),
(135,3,1,2,2,'PINDI BHATTIAN'),
(136,3,1,3,1,'MALIKWAL'),
(137,3,1,3,2,'MANDI BAHAUDDIN'),
(138,3,1,3,3,'PHALIA'),
(139,3,1,4,1,'GUJRAT'),
(140,3,1,4,2,'KHARIAN'),
(141,3,1,4,3,'SARAI ALAMGIR'),
(142,3,1,5,1,'DASKA'),
(143,3,1,5,2,'PASRUR'),
(144,3,1,5,3,'SAMBRIAL'),
(145,3,1,5,4,'SIALKOT'),
(146,3,1,6,1,'NAROWAL'),
(147,3,1,6,2,'SHAKARGARH'),
(148,3,1,6,3,'ZAFARWAL'),
(149,3,4,1,1,'LAHORE CANTT.'),
(150,3,4,1,2,'LAHORE CITY'),
(151,3,4,1,3,'MODEL TOWN'),
(152,3,4,1,4,'RAIWIND'),
(153,3,4,1,5,'SHALIMAR'),
(154,3,4,2,1,'CHUNIAN'),
(155,3,4,2,2,'KASUR'),
(156,3,4,2,3,'KOT RADHA KISHAN'),
(157,3,4,2,4,'PATTOKI'),
(158,3,4,3,1,'FEROZEWALA'),
(159,3,4,3,2,'MURIDKAY'),
(160,3,4,3,3,'SAFDARABAD'),
(161,3,4,3,4,'SHARAQPUR'),
(162,3,4,3,5,'SHEIKHUPURA'),
(163,3,4,4,1,'NANKANA SAHIB'),
(164,3,4,4,2,'SANGLA HILL'),
(165,3,4,4,3,'SHAHKOT'),
(166,3,2,1,1,'CHICHAWATNI'),
(167,3,2,1,2,'SAHIWAL'),
(168,3,2,2,1,'DEPALPUR'),
(169,3,2,2,2,'OKARA'),
(170,3,2,2,3,'RENALA KHURD'),
(171,3,2,3,1,'ARIFWALA'),
(172,3,2,3,2,'PAKPATTAN'),
(173,3,7,1,1,'BUREWALA'),
(174,3,7,1,2,'MAILSI'),
(175,3,7,1,3,'VEHARI'),
(176,3,7,2,1,'JALALPUR PIRWALA'),
(177,3,7,2,2,'MULTAN CITY'),
(178,3,7,2,3,'MULTAN SADDAR'),
(179,3,7,2,4,'SHUJABAD'),
(180,3,7,3,1,'DUNYAPUR'),
(181,3,7,3,2,'KAHROR PACCA'),
(182,3,7,3,3,'LODHRAN'),
(183,3,7,4,1,'JEHANIAN'),
(184,3,7,4,2,'KABIRWALA'),
(185,3,7,4,3,'KHANEWAL'),
(186,3,7,4,4,'MIAN CHANNU'),
(187,3,8,1,1,'DE-EX.AREA OF D.G.KHAN'),
(188,3,8,1,2,'DERA GHAZI KHAN'),
(189,3,8,1,3,'TAUNSA'),
(190,3,8,1,4,'KOT CHUTTA'),
(191,3,8,2,1,'DE-EX.AREA OF RAJANPUR'),
(192,3,8,2,2,'JAMPUR'),
(193,3,8,2,3,'RAJANPUR'),
(194,3,8,2,4,'ROJHAN'),
(195,3,8,3,1,'CHAUBARA'),
(196,3,8,3,2,'KAROR LAL ESAN'),
(197,3,8,3,3,'LAYYAH'),
(198,3,8,4,1,'ALIPUR'),
(199,3,8,4,2,'JATOI'),
(200,3,8,4,3,'KOT ADDU'),
(201,3,8,4,4,'MUZAFFARGARH'),
(202,3,9,1,1,'AHMADPUR EAST'),
(203,3,9,1,2,'BAHAWALPUR CITY'),
(204,3,9,1,3,'BAHAWALPUR SADDAR'),
(205,3,9,1,4,'HASILPUR'),
(206,3,9,1,5,'KHAIRPUR TAMEWALI'),
(207,3,9,1,2,'YAZMAN'),
(208,3,9,2,1,'BAHAWALNAGAR'),
(209,3,9,2,2,'CHISHTIAN'),
(210,3,9,2,3,'FORT ABBAS'),
(211,3,9,2,4,'HAROONABAD'),
(212,3,9,2,5,'MINCHINABAD'),
(213,3,9,3,1,'KHANPUR'),
(214,3,9,3,2,'LIAQUATPUR'),
(215,3,9,3,3,'RAHIM YAR KHAN'),
(216,3,9,3,4,'SADIQABAD'),
(217,4,3,1,1,'GARHI KHAIRO'),
(218,4,3,1,2,'JACOBABAD'),
(219,4,3,1,3,'THUL'),
(220,4,3,3,1,'KANDHKOT'),
(221,4,3,3,2,'KASHMORE'),
(222,4,3,3,3,'TANGWANI'),
(223,4,3,5,1,'GARHI YASIN'),
(224,4,3,5,2,'KHANPUR'),
(225,4,3,5,3,'LAKHI'),
(226,4,3,5,4,'SHIKARPUR'),
(227,4,3,4,1,'BAKRANI'),
(228,4,3,4,2,'DOKRI'),
(229,4,3,4,3,'LARKANA'),
(230,4,3,4,4,'RATO DERO'),
(231,4,3,2,1,'KAMBAR'),
(232,4,3,2,2,'KUBO SAEED KHAN'),
(233,4,3,2,3,'MIRO KHAN'),
(234,4,3,2,4,'NASIRABAD'),
(235,4,3,2,5,'SHAHDADKOT'),
(236,4,3,2,2,'SUJAWAL JUNEJO'),
(237,4,3,2,7,'WARAH'),
(238,4,6,2,1,'NEW SUKKUR'),
(239,4,6,2,2,'PANO AQIL'),
(240,4,6,2,3,'ROHRI'),
(241,4,6,2,4,'SALEHPAT'),
(242,4,6,2,5,'SUKKUR'),
(243,4,6,1,1,'DAHARKI'),
(244,4,6,1,2,'GHOTKI'),
(245,4,6,1,3,'KHANGARH (KHANPUR)'),
(246,4,6,1,4,'MIRPUR MATHELO'),
(247,4,6,1,5,'UBAURO'),
(248,4,6,3,1,'FAIZ GANJ'),
(249,4,6,3,2,'GAMBAT'),
(250,4,6,3,3,'KHAIRPUR'),
(251,4,6,3,4,'KINGRI'),
(252,4,6,3,5,'KOT DIJI'),
(253,4,6,3,6,'MIRWAH'),
(254,4,6,3,7,'NARA'),
(255,4,6,3,8,'SOBHODERO'),
(256,4,5,1,1,'BHIRIA'),
(257,4,5,1,2,'KANDIORO'),
(258,4,5,1,3,'MEHRABPUR'),
(259,4,5,1,4,'MORO'),
(260,4,5,1,5,'NAUSHAHRO FEROZE'),
(261,4,5,2,1,'DAUR'),
(262,4,5,2,2,'NAWAB SHAH'),
(263,4,5,2,3,'QAZI AHMED'),
(264,4,5,2,4,'SAKRAND'),
(265,4,5,3,1,'JAM NAWAZ ALI'),
(266,4,5,3,2,'KHIPRO'),
(267,4,5,3,3,'SANGHAR'),
(268,4,5,3,4,'SHAHDADPUR'),
(269,4,5,3,5,'SINJHORO'),
(270,4,5,3,6,'TANDO ADAM'),
(271,4,1,2,1,'DADU'),
(272,4,1,2,2,'JOHI'),
(273,4,1,2,3,'KHAIRPUR NATHAN SHAH'),
(274,4,1,2,4,'MEHAR'),
(275,4,1,4,1,'KOTRI'),
(276,4,1,4,2,'MANJHAND'),
(277,4,1,4,3,'SEHWAN'),
(278,4,1,4,4,'THANO BULA KHAN'),
(279,4,1,3,1,'CITY HYDERABAD'),
(280,4,1,3,2,'HYDERABAD'),
(281,4,1,3,3,'LATIFABAD'),
(282,4,1,3,4,'QASIMABAD'),
(283,4,1,5,1,'HALA'),
(284,4,1,5,2,'MATIARI'),
(285,4,1,5,3,'SAEEDABAD'),
(286,4,1,7,1,'CHAMBER'),
(287,4,1,7,2,'JHANDO MARI'),
(288,4,1,7,3,'TANDO ALLAHYAR'),
(289,4,1,9,1,'BULRI SHAH KARIM'),
(290,4,1,9,2,'TANDO GHULAM HYDER'),
(291,4,1,9,3,'TANDO MOHAMMAD KHAN'),
(292,4,1,1,1,'BADIN'),
(293,4,1,1,2,'MATLI'),
(294,4,1,1,3,'SHAHEED FAZAL RAHU'),
(295,4,1,1,4,'TALHAR'),
(296,4,1,1,5,'TANDO BAGO'),
(297,4,1,8,1,'GHORABARI'),
(298,4,1,8,2,'KETI BUNDER'),
(299,4,1,8,3,'MIRPUR SAKRO'),
(300,4,1,8,4,'THATTA'),
(301,4,1,6,1,'JATI'),
(302,4,1,6,2,'KHARO CHAN'),
(303,4,1,6,3,'MIRPUR BATHORO'),
(304,4,1,6,4,'SHAH BUNDER'),
(305,4,1,6,5,'SUJAWAL'),
(306,4,4,1,1,'DIGRI'),
(307,4,4,1,2,'HUSSAIN BUX MARRI'),
(308,4,4,1,3,'JHUDDO'),
(309,4,4,1,4,'KOT GHULAM MOHAMMAD'),
(310,4,4,1,5,'MIRPUR KHAS'),
(311,4,4,1,6,'SHUJABAD'),
(312,4,4,1,7,'SINDHRI'),
(313,4,4,2,1,'CHACHRO'),
(314,4,4,2,2,'DHALI'),
(315,4,4,2,3,'DIPLO'),
(316,4,4,2,4,'ISLAMKOT'),
(317,4,4,2,5,'KALOI'),
(318,4,4,2,6,'MITHI'),
(319,4,4,2,7,'NAGAR PARKAR'),
(320,4,4,3,1,'KUNRI'),
(321,4,4,3,2,'PITHORO'),
(322,4,4,3,3,'SAMARO'),
(323,4,4,3,4,'UMERKOT'),
(324,4,2,2,1,'FEROZABAD SUB-DIVISION'),
(325,4,2,2,2,'GULSHAN-E-IQBAL SUB-DIVISION'),
(326,4,2,2,3,'GULZAR-E-HIJRI SUB-DIVISION'),
(327,4,2,2,4,'JAMSHED QUARTER SUB-DIVISION'),
(328,4,2,4,4,'MAURIPUR SUB-DIVISION'),
(329,4,2,4,2,'HARBOUR SUB-DIVISION'),
(330,4,2,4,6,'ORANGI SUB-DIVISION'),
(331,4,2,4,5,'MOMINABAD SUB-DIVISION'),
(332,4,2,4,7,'SITE SUB-DIVISION'),
(333,4,2,4,1,'BALDIA SUB-DIVISION'),
(334,4,2,4,3,'MANGHOPIR SUB-DIVISION'),
(335,4,2,3,1,'ARAM BAHG SUB-DIVISION'),
(336,4,2,3,2,'CIVIL LINE SUB-DIVISION'),
(337,4,2,3,3,'GARDEN SUB-DIVISION'),
(338,4,2,3,4,'LYARI SUB-DIVISION'),
(339,4,2,3,5,'SADDAR SUB-DIVISION'),
(340,4,2,1,1,'GULBERG SUB-DIVISION'),
(341,4,2,1,2,'LIAQUATABAD SUB-DIVISION'),
(342,4,2,1,3,'NAZIMABAD SUB-DIVISION'),
(343,4,2,1,4,'NEW KARACHI SUB-DIVISION'),
(344,4,2,1,5,'NORTH NAZIMABAD SUB-DIVISION'),
(345,4,2,6,1,'AIRPORT SUB-DIVISION'),
(346,4,2,6,2,'BIN QASIM SUB-DIVISION'),
(347,4,2,6,3,'GADAB SUB-DIVISION'),
(348,4,2,6,4,'IBRAHIM HYDERI SUB-DIVISION'),
(349,4,2,5,5,'MURAD MEMON SUB-DIVISION'),
(350,4,2,6,2,'SHAH MURAD SUB-DIVISION'),
(351,4,2,5,1,'KORANGI SUB-DIVISION'),
(352,4,2,5,2,'LANDHI SUB-DIVISION'),
(353,4,2,5,3,'MADOL COLONY SUB-DIVISION'),
(354,4,2,5,4,'SHAH FAISAL SUB-DIVISION'),
(355,5,3,1,1,'PANJPAI SUB-TEHSIL'),
(356,5,3,1,2,'QUETTA CITY'),
(357,5,3,1,3,'QUETTA SADDAR'),
(358,5,3,2,1,'BARSHORE SUB-TEHSIL'),
(359,5,3,2,2,'HURRAMZAI'),
(360,5,3,2,3,'KAREZAT'),
(361,5,3,2,4,'PISHIN'),
(362,5,3,2,5,'SARANAN'),
(363,5,3,3,1,'CHAMAN'),
(364,5,3,3,2,'DOBANDI SUB-TEHSIL'),
(365,5,3,3,3,'GULISTAN'),
(366,5,3,3,4,'KILLA ABDULLAH'),
(367,5,3,4,1,'CHAGAI SUB-TEHSIL'),
(368,5,3,4,2,'DALBANDIN'),
(369,5,3,4,3,'NOKUNDI'),
(370,5,3,4,4,'TAFTAN'),
(371,5,3,5,1,'DAK SUB-TEHSIL'),
(372,5,3,5,2,'NUSHKI'),
(373,5,6,1,1,'DUKI'),
(374,5,6,1,2,'LORALAI'),
(375,5,6,1,3,'MEKHTAR'),
(376,5,6,2,1,'BARKHAN'),
(377,5,6,3,1,'DRUG'),
(378,5,6,3,2,'KINGRI'),
(379,5,6,3,3,'MUSAKHEL'),
(380,5,6,4,1,'BADINI SUB-TEHSIL'),
(381,5,6,4,2,'KANMETHARZAI SUB-TEHSIL'),
(382,5,6,4,3,'KILLA SAIFULLAH'),
(383,5,6,4,4,'LOIBAND'),
(384,5,6,4,5,'MUSLIM BAGH'),
(385,5,6,4,2,'SHINKI SUB-TEHSIL'),
(386,5,6,5,1,'ASHWAT SUB-TEHSIL'),
(387,5,6,5,2,'KASHATU SUB-TEHSIL'),
(388,5,6,5,3,'QAMAR DIN KAREZ'),
(389,5,6,5,4,'SAMBAZA SUB-TEHSIL'),
(390,5,6,5,5,'ZHOB'),
(391,5,6,6,1,'SHEERANI SUB-TEHSIL'),
(392,5,5,1,1,'KUTMANDAI SUB-TEHSIL'),
(393,5,5,1,2,'SANGAN SUB-TEHSIL'),
(394,5,5,1,3,'SIBI'),
(395,5,5,2,1,'BHAG'),
(396,5,5,2,2,'LEHRI'),
(397,5,5,3,1,'HARNAI'),
(398,5,5,3,2,'KHOAST SUB-TEHSIL'),
(399,5,5,3,3,'SHARIGH'),
(400,5,5,4,1,'SINJAWI SUB-TEHSIL'),
(401,5,5,4,2,'ZIARAT'),
(402,5,5,5,1,'GRISINI SUB-TEHSIL'),
(403,5,5,5,2,'KAHAN'),
(404,5,5,5,3,'KOHLU'),
(405,5,5,5,4,'MAWAND'),
(406,5,5,5,5,'TAMBOO'),
(407,5,5,6,1,'BAIKER SUB-TEHSIL'),
(408,5,5,6,2,'DERA BUGTI'),
(409,5,5,6,3,'LOTI SUB-TEHSIL'),
(410,5,5,6,4,'MALAM SUB-TEHSIL'),
(411,5,5,6,5,'PHELAWAGH'),
(412,5,5,6,2,'PIR KOH SUB-TEHSIL'),
(413,5,5,6,7,'SANGSILLAH SUB-TEHSIL'),
(414,5,5,6,8,'SUI'),
(415,5,1,1,1,'GANDAKHA'),
(416,5,1,1,2,'JHAT PAT'),
(417,5,1,1,3,'USTA MOHAMMAD'),
(418,5,1,2,1,'BABA KOT'),
(419,5,1,2,2,'CHATTAR SUB-TEHSIL'),
(420,5,1,2,3,'DERA MURAD JAMALI'),
(421,5,1,2,4,'TAMBOO'),
(422,5,1,3,1,'BALANARI SUB-TEHSIL'),
(423,5,1,3,2,'DHADAR'),
(424,5,1,3,3,'KHATTAN SUB-TEHSIL'),
(425,5,1,3,4,'MACH SUB-TEHSIL'),
(426,5,1,3,5,'SANNI SUB-TEHSIL'),
(427,5,1,3,0,''),
(428,5,1,4,1,'GANDAWA'),
(429,5,1,4,2,'JHAL MAGSI'),
(430,5,1,4,3,'MIRPUR SUB-TEHSIL'),
(431,5,1,5,1,'SOHBATPUR'),
(432,5,1,5,2,'FARIDABAD'),
(433,5,1,5,3,'SANHRI'),
(434,5,4,1,1,'GAZG SUB-TEHSIL'),
(435,5,4,1,2,'JOHAN SUB-TEHSIL'),
(436,5,4,1,3,'KALAT'),
(437,5,4,1,4,'MANGOCHAR'),
(438,5,4,1,5,'SURAB'),
(439,5,4,2,1,'DASHT'),
(440,5,4,2,2,'KHAD KOOCHA SUB-TEHSIL'),
(441,5,4,2,3,'KIRDGAP SUB-TEHSIL'),
(442,5,4,2,4,'MASTUNG'),
(443,5,4,3,1,'ARANJI SUB-TEHSIL'),
(444,5,4,3,2,'GRESHEK SUB-TEHSIL'),
(445,5,4,3,3,'GRASHA SUB-TEHSIL'),
(446,5,4,3,4,'KARAKH SUB-TEHSIL'),
(447,5,4,3,5,'KHUZDAR'),
(448,5,4,3,2,'MOOLA SUB-TEHSIL'),
(449,5,4,3,7,'NAL TEHSIL'),
(450,5,4,3,8,'ORNACH SUB-TEHSIL'),
(451,5,4,3,9,'SAROONA SUB-TEHSIL'),
(452,5,4,3,10,'WADH'),
(453,5,4,3,11,'ZEHRI'),
(454,5,4,4,1,'AWARAN'),
(455,5,4,4,2,'GISHKORE'),
(456,5,4,4,3,'JHAL JAO'),
(457,5,4,4,4,'KORAK JAHOO'),
(458,5,4,4,5,'MASHKAI'),
(459,5,4,5,1,'KHARAN'),
(460,5,4,5,2,'SAR-KHARAN'),
(461,5,4,5,3,'TOHUMULK SUB-TEHSIL'),
(462,5,4,6,1,'BESIMA'),
(463,5,4,6,2,'MASHKHEL'),
(464,5,4,6,3,'NAG SUB-TEHSIL'),
(465,5,4,6,4,'SHAHGORI SUB-TEHSIL'),
(466,5,4,6,5,'WASHUK'),
(467,5,4,7,1,'BELA'),
(468,5,4,7,2,'DUREJI'),
(469,5,4,7,3,'GADDANI'),
(470,5,4,7,4,'HUB'),
(471,5,4,7,5,'KANRAJ'),
(472,5,4,7,2,'LAKHRA'),
(473,5,4,7,7,'LIARI SUB-TEHSIL'),
(474,5,4,7,8,'SONMIANI/WINDER'),
(475,5,4,7,9,'UTHAL'),
(476,5,2,1,1,'BALNIGOR SUB-TEHSIL'),
(477,5,2,1,2,'BULEDA SUB-TEHSIL'),
(478,5,2,1,3,'DASHT SUB-TEHSIL'),
(479,5,2,1,4,'HOSHAB SUB-TEHSIL'),
(480,5,2,1,5,'MAND'),
(481,5,2,1,2,'TUMP'),
(482,5,2,1,7,'TURBAT'),
(483,5,2,1,8,'ZAMURAN SUB-TEHSIL'),
(484,5,2,2,1,'GWADAR'),
(485,5,2,2,2,'JIWANI'),
(486,5,2,2,3,'ORMARA'),
(487,5,2,2,4,'PASNI'),
(488,5,2,2,5,'SUNTSAR SUB-TEHSIL'),
(489,5,2,3,1,'GICHK SUB-TEHSIL'),
(490,5,2,3,2,'GOWARGO'),
(491,5,2,3,3,'PANJGUR'),
(492,5,2,3,4,'PAROME');

/*Table structure for table `treepaths` */

DROP TABLE IF EXISTS `treepaths`;

CREATE TABLE `treepaths` (
  `ancestor` int(11) NOT NULL,
  `descendant` int(11) NOT NULL,
  `length1` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ancestor`,`descendant`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `treepaths` */

insert  into `treepaths`(`ancestor`,`descendant`,`length1`) values 
(1,0,0),
(1,3,1),
(1,4,2),
(2,2,0),
(2,5,1),
(3,3,0),
(3,4,1),
(4,4,0),
(5,5,0);

/* Trigger structure for table `headoffamily` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `FamilyHeadID` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `FamilyHeadID` BEFORE INSERT ON `headoffamily` FOR EACH ROW BEGIN
    DECLARE v_ID,v_cnt INT;
   -- SET COUNTLOOP = COUNTLOOP + 1; 
	    SET v_cnt=0;
	    select max(id)+1 into v_ID from `headoffamily`;
	    set new.headid = concat(v_ID,'-',new.HeadOfFamily);
	    IF length(new.headid) >0 THEN
		SET v_cnt = v_cnt +1;
	    END IF;
	    if LENGTH(new.firstname)>0 then
		set v_cnt = v_cnt +1;
	    end if;
	    IF LENGTH(new.hfcnic) >0 THEN
		SET v_cnt = v_cnt +1;
	    END IF;
	    IF LENGTH(new.fatherfirstname) >0 THEN
		SET v_cnt = v_cnt +1;
	    END IF;
    
	    if v_cnt <4 then
		SET new.FormStatus ='Fill Up Basic Head Family Info.';
		SET new.FormStatusFlag =0;
	     else 
		SET new.FormStatus ='Basic Info Given';
		SET new.FormStatusFlag =1;
	     end if;
    
    END */$$


DELIMITER ;

/* Function  structure for function  `GetCNIC` */

/*!50003 DROP FUNCTION IF EXISTS `GetCNIC` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `GetCNIC`(p_cnic VARCHAR(15)) RETURNS varchar(100) CHARSET latin1
    DETERMINISTIC
BEGIN
     DECLARE StrSize INT DEFAULT 0;
     DECLARE v_cnic VARCHAR(15);
     DECLARE v_str  VARCHAR(100);
     DECLARE v_prov,v_div,v_dis,v_teh VARCHAR(15);
     
     
     set StrSize=length(substr(p_cnic,1,4));
      
      if StrSize=1 then
      
      select ProvName into v_prov
      from `provance`
      where provid=p_cnic;
      
      set   v_str=v_prov;
      
      end if;
      
      IF StrSize=2 THEN
      
      SELECT ProvName INTO v_prov
      FROM `provance`
      WHERE provid=substr(p_cnic,1,1);
      
      SELECT DivisionName INTO v_div
      FROM `division`
      WHERE provid=SUBSTR(p_cnic,1,1)
      and divisionid=SUBSTR(p_cnic,2,1);
      
      SET   v_str = concat(v_prov,'-',v_div);
      END IF;
     
     
     IF StrSize=3 THEN
      
      SELECT ProvName INTO v_prov
      FROM `provance`
      WHERE provid=SUBSTR(p_cnic,1,1);
      
      SELECT DivisionName INTO v_div
      FROM `division`
      WHERE provid=SUBSTR(p_cnic,1,1)
      AND divisionid=SUBSTR(p_cnic,2,1);
      
      SELECT DistrictName INTO v_dis
      FROM  `district`
      WHERE provid=SUBSTR(p_cnic,1,1)
      AND divisionid=SUBSTR(p_cnic,2,1)
       AND districtid=SUBSTR(p_cnic,3,1);
      
      SET   v_str = CONCAT(v_prov,' , ',v_div,' , ',v_dis);
      END IF;
     
       IF StrSize=4 THEN
      
      SELECT ProvName INTO v_prov
      FROM `provance`
      WHERE provid=SUBSTR(p_cnic,1,1);
      
      SELECT DivisionName INTO v_div
      FROM `division`
      WHERE provid=SUBSTR(p_cnic,1,1)
      AND divisionid=SUBSTR(p_cnic,2,1);
      
      SELECT DistrictName INTO v_dis
      FROM  `district`
      WHERE provid=SUBSTR(p_cnic,1,1)
      AND divisionid=SUBSTR(p_cnic,2,1)
       AND districtid=SUBSTR(p_cnic,3,1);
       
       
      SELECT TehsilName INTO v_teh
      FROM  `tehsil`
      WHERE provid=SUBSTR(p_cnic,1,1)
      AND divisionid=SUBSTR(p_cnic,2,1)
       AND districtid=SUBSTR(p_cnic,3,1)
       AND Tehsilid=SUBSTR(p_cnic,4,1);
      
      SET   v_str = CONCAT(v_prov,' , ',v_div,' , ',v_dis,' , ',v_teh);
      END IF;
     
      RETURN (v_str);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `SetAddressBook` */

/*!50003 DROP PROCEDURE IF EXISTS  `SetAddressBook` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SetAddressBook`()
BEGIN
DECLARE c1_end INTEGER DEFAULT 0;
DECLARE c1 CURSOR FOR SELECT id,HeadID,HFCNIC,BlockArea,Address1 
			FROM `headoffamily`
			where HFCNIC is not null;
BEGIN
	
	DECLARE v_HeadOfFamily,v_HFCNIC VARCHAR(20);
	DECLARE v_MainArea,   v_Address1 VARCHAR(70);
	DECLARE v_ID,StrSize INT DEFAULT 0; 
	DECLARE	v_prov,v_div,v_dis,v_teh VARCHAR(30);
		
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET c1_end = 1;
	
	OPEN c1;
		
		Set_AdrBook: LOOP
                
		FETCH C1 INTO 	v_ID,v_HeadOfFamily,v_HFCNIC,v_MainArea,v_Address1;
			
			IF c1_end = 1 THEN 
				LEAVE Set_AdrBook;
			END IF;
		
			SET StrSize=LENGTH(SUBSTR(v_HFCNIC,1,4));
			
			if StrSize >3 then
			
			SELECT ProvName INTO v_prov
			FROM `provance`
			WHERE provid=SUBSTR(v_HFCNIC,1,1);
      
			SELECT DivisionName INTO v_div
			FROM `division`
			WHERE provid=SUBSTR(v_HFCNIC,1,1)
			AND divisionid=SUBSTR(v_HFCNIC,2,1);
      
			SELECT DistrictName INTO v_dis
			FROM  `district`
			WHERE provid=SUBSTR(v_HFCNIC,1,1)
			AND divisionid=SUBSTR(v_HFCNIC,2,1)
			AND districtid=SUBSTR(v_HFCNIC,3,1);
       
       
			SELECT TehsilName INTO v_teh
			FROM  `tehsil`
			WHERE provid=SUBSTR(v_HFCNIC,1,1)
			AND divisionid=SUBSTR(v_HFCNIC,2,1)
			AND districtid=SUBSTR(v_HFCNIC,3,1)
			AND Tehsilid=SUBSTR(v_HFCNIC,4,1);
			
			insert into addressbook (
						`FamilyHeadID`,
						`AddressLine1`,	`AddressLine2` ,`BlockArea` ,
						`CityDivisionID` ,`CityDivision` ,
						`DistrictID` ,	`District` ,	
						`TehsilID` ,	`Tehsil` ,
						`ProvID` ,`Provinces`)
					VALUES
						(
						v_HeadOfFamily,v_Address1,null,v_MainArea,
						SUBSTR(v_HFCNIC,2,1),v_div,
						SUBSTR(v_HFCNIC,3,1),v_dis,
						SUBSTR(v_HFCNIC,4,1),v_teh,						
						SUBSTR(v_HFCNIC,1,1),v_prov
						);
									
			 End If;
			
			
					
		END LOOP Set_AdrBook;
		
		
	CLOSE c1;
		
END;
END */$$
DELIMITER ;

/* Procedure structure for procedure `SetHF_FormStatus` */

/*!50003 DROP PROCEDURE IF EXISTS  `SetHF_FormStatus` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SetHF_FormStatus`()
BEGIN
    
	DECLARE c1_end INTEGER DEFAULT 0;
	DECLARE c1 CURSOR FOR SELECT id
			FROM `headoffamily` order by id;
BEGIN
	
	DECLARE v_HeadOfFamily,v_HFCNIC VARCHAR(20);
	DECLARE v_MainArea,   v_Address1 VARCHAR(70);
	DECLARE v_ID,v_cnt ,v_Flag INT DEFAULT 0; 
	DECLARE	v_prov,v_div,v_dis,v_teh,v_FormStatus VARCHAR(30);
		
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET c1_end = 1;
	
	OPEN c1;
		
		Set_FormStatus: LOOP
                
		FETCH C1 INTO 	v_ID;
			
			IF c1_end = 1 THEN 
				LEAVE Set_FormStatus;
			END IF;
			
			set v_cnt=0;
			set v_FormStatus= null;
		
			SELECT COUNT(*) INTO v_cnt FROM `headoffamily`
			WHERE id=v_ID
			AND HeadID !=''
			AND FirstName !=''
			AND HFCNIC !=''
			AND FatherFirstName !='';
			
			IF v_cnt=1 THEN
			    SET v_FormStatus ='HF Basic Info Given';
			    SET v_Flag =1;
			ELSE
			    SET v_FormStatus ='HF Basic Info missing ';
			    SET v_Flag =0;
			END IF;
			
			update headoffamily set FormStatus=v_FormStatus,
						FormStatusFlag=v_Flag
			where id=v_ID;
					
					
		END LOOP Set_FormStatus;
		
		
	CLOSE c1;
		
END;
    END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
